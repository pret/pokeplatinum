	.include "macros/function.inc"
	.include "include/ov5_021D5EB8.inc"

	

	.text


	thumb_func_start ov5_021D5EB8
ov5_021D5EB8: ; 0x021D5EB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021D5ECC:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D5ECC
	add r0, r5, #0
	bl ov5_021D6364
	str r0, [r4, #0]
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #6
	str r0, [r4, #0xc]
	str r1, [r4, #0x14]
	mov r0, #0x1f
	str r0, [r4, #0x10]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D5EB8

	thumb_func_start ov5_021D5EF8
ov5_021D5EF8: ; 0x021D5EF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D5F06
	bl sub_0200DA58
_021D5F06:
	add r0, r4, #0
	bl ov5_021D63A4
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021D5F12:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D5F12
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5EF8

	thumb_func_start ov5_021D5F24
ov5_021D5F24: ; 0x021D5F24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #6
	beq _021D5F34
	bl GF_AssertFail
_021D5F34:
	cmp r4, #0x1f
	blt _021D5F3C
	bl GF_AssertFail
_021D5F3C:
	ldr r2, [r5, #4]
	cmp r2, r4
	beq _021D5F78
	ldr r0, [r5, #0]
	mov r1, #8
	bl ov5_021D6418
	cmp r0, #0
	bne _021D5F52
	bl GF_AssertFail
_021D5F52:
	ldr r0, [r5, #0]
	mov r1, #0
	add r2, r4, #0
	bl ov5_021D6418
	cmp r0, #0
	bne _021D5F64
	bl GF_AssertFail
_021D5F64:
	ldr r0, [r5, #0]
	mov r1, #3
	add r2, r4, #0
	bl ov5_021D6418
	cmp r0, #0
	bne _021D5F76
	bl GF_AssertFail
_021D5F76:
	str r4, [r5, #4]
_021D5F78:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5F24

	thumb_func_start ov5_021D5F7C
ov5_021D5F7C: ; 0x021D5F7C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x1f
	blt _021D5F8A
	bl GF_AssertFail
_021D5F8A:
	ldr r0, [r5, #0xc]
	cmp r0, #6
	beq _021D5F96
	str r4, [r5, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D5F96:
	ldr r0, [r5, #4]
	cmp r0, r4
	bne _021D5FA0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D5FA0:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021D5FAA
	bl GF_AssertFail
_021D5FAA:
	str r4, [r5, #8]
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov5_021D6178
	cmp r0, #0
	bne _021D5FC6
	ldr r0, _021D5FD8 ; =ov5_021D5FE4
	mov r2, #0
	add r1, r5, #0
	str r2, [r5, #0xc]
	bl sub_0200D9E8
	b _021D5FD2
_021D5FC6:
	ldr r0, _021D5FDC ; =ov5_021D60B4
	mov r2, #0
	add r1, r5, #0
	str r2, [r5, #0xc]
	bl sub_0200D9E8
_021D5FD2:
	str r0, [r5, #0x14]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D5FD8: .word ov5_021D5FE4
_021D5FDC: .word ov5_021D60B4
	thumb_func_end ov5_021D5F7C

	thumb_func_start ov5_021D5FE0
ov5_021D5FE0: ; 0x021D5FE0
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov5_021D5FE0

	thumb_func_start ov5_021D5FE4
ov5_021D5FE4: ; 0x021D5FE4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #5
	bhi _021D60B2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D5FFA: ; jump table
	.short _021D6006 - _021D5FFA - 2 ; case 0
	.short _021D6020 - _021D5FFA - 2 ; case 1
	.short _021D6046 - _021D5FFA - 2 ; case 2
	.short _021D6060 - _021D5FFA - 2 ; case 3
	.short _021D6074 - _021D5FFA - 2 ; case 4
	.short _021D6096 - _021D5FFA - 2 ; case 5
_021D6006:
	ldr r0, [r4, #0]
	ldr r2, [r4, #4]
	mov r1, #5
	bl ov5_021D6418
	cmp r0, #0
	bne _021D6018
	bl GF_AssertFail
_021D6018:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021D6020:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl ov5_021D64D0
	cmp r0, #3
	beq _021D60B2
	ldr r0, [r4, #0]
	ldr r2, [r4, #4]
	mov r1, #8
	bl ov5_021D6418
	cmp r0, #0
	bne _021D603E
	bl GF_AssertFail
_021D603E:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021D6046:
	ldr r0, [r4, #0]
	ldr r2, [r4, #8]
	mov r1, #1
	bl ov5_021D6418
	cmp r0, #0
	bne _021D6058
	bl GF_AssertFail
_021D6058:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021D6060:
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	bl ov5_021D64D0
	cmp r0, #1
	beq _021D60B2
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021D6074:
	ldr r0, [r4, #0]
	ldr r2, [r4, #8]
	mov r1, #2
	bl ov5_021D6418
	cmp r0, #0
	bne _021D6086
	bl GF_AssertFail
_021D6086:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
_021D6096:
	mov r1, #6
	str r1, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #0x14]
	bl sub_0200DA58
	ldr r1, [r4, #0x10]
	cmp r1, #0x1f
	beq _021D60B2
	add r0, r4, #0
	bl ov5_021D5F7C
	mov r0, #0x1f
	str r0, [r4, #0x10]
_021D60B2:
	pop {r4, pc}
	thumb_func_end ov5_021D5FE4

	thumb_func_start ov5_021D60B4
ov5_021D60B4: ; 0x021D60B4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #4
	bhi _021D6176
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D60CA: ; jump table
	.short _021D60D4 - _021D60CA - 2 ; case 0
	.short _021D60EE - _021D60CA - 2 ; case 1
	.short _021D6102 - _021D60CA - 2 ; case 2
	.short _021D612E - _021D60CA - 2 ; case 3
	.short _021D6154 - _021D60CA - 2 ; case 4
_021D60D4:
	ldr r0, [r4, #0]
	ldr r2, [r4, #8]
	mov r1, #1
	bl ov5_021D6418
	cmp r0, #0
	bne _021D60E6
	bl GF_AssertFail
_021D60E6:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021D60EE:
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	bl ov5_021D64D0
	cmp r0, #1
	beq _021D6176
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021D6102:
	ldr r0, [r4, #0]
	ldr r2, [r4, #4]
	mov r1, #7
	bl ov5_021D6418
	cmp r0, #0
	bne _021D6114
	bl GF_AssertFail
_021D6114:
	ldr r0, [r4, #0]
	ldr r2, [r4, #8]
	mov r1, #4
	bl ov5_021D6418
	cmp r0, #0
	bne _021D6126
	bl GF_AssertFail
_021D6126:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021D612E:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl ov5_021D64D0
	cmp r0, #3
	beq _021D6176
	ldr r0, [r4, #0]
	ldr r2, [r4, #4]
	mov r1, #8
	bl ov5_021D6418
	cmp r0, #0
	bne _021D614C
	bl GF_AssertFail
_021D614C:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021D6154:
	ldr r1, [r4, #8]
	mov r2, #0
	str r1, [r4, #4]
	str r2, [r4, #8]
	mov r1, #6
	str r1, [r4, #0xc]
	str r2, [r4, #0x14]
	bl sub_0200DA58
	ldr r1, [r4, #0x10]
	cmp r1, #0x1f
	beq _021D6176
	add r0, r4, #0
	bl ov5_021D5F7C
	mov r0, #0x1f
	str r0, [r4, #0x10]
_021D6176:
	pop {r4, pc}
	thumb_func_end ov5_021D60B4

	thumb_func_start ov5_021D6178
ov5_021D6178: ; 0x021D6178
	mov r2, #0
	cmp r0, #7
	bgt _021D618E
	cmp r0, #5
	blt _021D61CC
	beq _021D6194
	cmp r0, #6
	beq _021D61A4
	cmp r0, #7
	beq _021D61BE
	b _021D61CC
_021D618E:
	cmp r0, #0x15
	beq _021D61B4
	b _021D61CC
_021D6194:
	cmp r1, #6
	beq _021D61A0
	cmp r1, #0x15
	beq _021D61A0
	cmp r1, #7
	bne _021D61CC
_021D61A0:
	mov r2, #1
	b _021D61CC
_021D61A4:
	cmp r1, #5
	beq _021D61B0
	cmp r1, #0x15
	beq _021D61B0
	cmp r1, #7
	bne _021D61CC
_021D61B0:
	mov r2, #1
	b _021D61CC
_021D61B4:
	sub r0, r1, #5
	cmp r0, #2
	bhi _021D61CC
	mov r2, #1
	b _021D61CC
_021D61BE:
	cmp r1, #5
	beq _021D61CA
	cmp r1, #0x15
	beq _021D61CA
	cmp r1, #6
	bne _021D61CC
_021D61CA:
	mov r2, #1
_021D61CC:
	add r0, r2, #0
	bx lr
	thumb_func_end ov5_021D6178

	thumb_func_start ov5_021D61D0
ov5_021D61D0: ; 0x021D61D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r1, _021D627C ; =0xFFFFF000
	add r6, r0, #0
	add r0, #0x14
	bl sub_0202309C
	mov r0, #0
	add r3, r6, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r0, #0xac
	add r1, sp, #0xc
	mov r2, #1
	add r3, #0x14
	bl sub_0200A8B0
	mov r4, #0
	add r5, r6, #0
	mov r7, #0x1f
_021D6206:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02009714
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #4
	blt _021D6206
	bl sub_02009F34
	add r1, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	str r0, [r6, #0x10]
	mov r1, #0
	mov r2, #0x3f
	bl ov5_021D6290
	ldr r0, [r6, #0x10]
	mov r1, #1
	mov r2, #0x40
	bl ov5_021D6290
	ldr r0, [r6, #0x10]
	mov r1, #2
	mov r2, #0x3d
	bl ov5_021D6290
	ldr r0, [r6, #0x10]
	mov r1, #3
	mov r2, #0x3e
	bl ov5_021D6290
	mov r0, #0x60
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x14
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, sp, #0
	bl sub_020218BC
	add r1, r6, #0
	add r1, #0xf4
	str r0, [r1, #0]
	ldr r0, _021D6280 ; =ov5_021D6284
	add r1, r6, #0
	mov r2, #0xa
	bl sub_0200D9E8
	add r6, #0xf8
	str r0, [r6, #0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D627C: .word 0xFFFFF000
_021D6280: .word ov5_021D6284
	thumb_func_end ov5_021D61D0

	thumb_func_start ov5_021D6284
ov5_021D6284: ; 0x021D6284
	ldr r3, _021D628C ; =sub_020219F8
	add r1, #0xf4
	ldr r0, [r1, #0]
	bx r3
	; .align 2, 0
_021D628C: .word sub_020219F8
	thumb_func_end ov5_021D6284

	thumb_func_start ov5_021D6290
ov5_021D6290: ; 0x021D6290
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_02009F38
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x41
	add r1, r5, #0
	mov r2, #0
	mov r3, #4
	bl sub_02006FE8
	add r5, r0, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02009F40
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D6290

	thumb_func_start ov5_021D62BC
ov5_021D62BC: ; 0x021D62BC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021D62C4:
	ldr r0, [r6, #0x10]
	add r1, r4, #0
	bl sub_02009F38
	bl sub_02009F8C
	ldr r0, [r5, #0]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D62C4
	ldr r0, [r6, #0x10]
	bl sub_020181C4
	mov r0, #0
	str r0, [r6, #0x10]
	add r0, r6, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl sub_02021964
	add r0, r6, #0
	mov r1, #0
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0200DA58
	mov r0, #0
	add r6, #0xf8
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D62BC

	thumb_func_start ov5_021D630C
ov5_021D630C: ; 0x021D630C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _021D635C ; =0x0013F000
	cmp r0, r1
	ble _021D6322
	bl _s32_div_f
	str r1, [r4, #0]
	b _021D632C
_021D6322:
	ldr r2, _021D6360 ; =0xFFFC0000
	cmp r0, r2
	bge _021D632C
	add r0, r0, r1
	str r0, [r4, #0]
_021D632C:
	mov r1, #1
	ldr r3, [r4, #4]
	lsl r1, r1, #0x14
	cmp r3, r1
	ble _021D6346
	lsr r2, r3, #0x1f
	lsl r1, r3, #0xc
	sub r1, r1, r2
	mov r0, #0xc
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #4]
	b _021D6350
_021D6346:
	ldr r0, _021D6360 ; =0xFFFC0000
	cmp r3, r0
	bge _021D6350
	add r0, r3, r1
	str r0, [r4, #4]
_021D6350:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021C50
	pop {r3, r4, r5, pc}
	nop
_021D635C: .word 0x0013F000
_021D6360: .word 0xFFFC0000
	thumb_func_end ov5_021D630C

	thumb_func_start ov5_021D6364
ov5_021D6364: ; 0x021D6364
	push {r3, r4, r5, lr}
	mov r1, #0x43
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	add r0, #8
	bl ov5_021D61D0
	ldr r0, _021D639C ; =0x02201D78
	mov r1, #4
	str r0, [r4, #0]
	ldr r0, _021D63A0 ; =0x021F8D90
	str r0, [r4, #4]
	mov r0, #0x41
	bl sub_02006C24
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D639C: .word 0x02201D78
_021D63A0: .word 0x021F8D90
	thumb_func_end ov5_021D6364

	thumb_func_start ov5_021D63A4
ov5_021D63A4: ; 0x021D63A4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D640E
	mov r5, #0
_021D63B2:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov5_021D68B8
	add r5, r5, #1
	cmp r5, #0x1f
	blt _021D63B2
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	ldr r0, [r0, #0x48]
	add r3, r2, #0
	bl ov5_021D57FC
	ldr r1, _021D6414 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0]
	add r0, #8
	bl ov5_021D62BC
	mov r0, #0x42
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02006CA8
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_021D640E:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D6414: .word 0x04000008
	thumb_func_end ov5_021D63A4

	thumb_func_start ov5_021D6418
ov5_021D6418: ; 0x021D6418
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	mov r5, #1
	cmp r4, #0x1f
	ble _021D6428
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D6428:
	cmp r1, #8
	bhi _021D64CC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D6438: ; jump table
	.short _021D644A - _021D6438 - 2 ; case 0
	.short _021D6454 - _021D6438 - 2 ; case 1
	.short _021D645E - _021D6438 - 2 ; case 2
	.short _021D646C - _021D6438 - 2 ; case 3
	.short _021D647A - _021D6438 - 2 ; case 4
	.short _021D64AA - _021D6438 - 2 ; case 5
	.short _021D64B4 - _021D6438 - 2 ; case 6
	.short _021D64BC - _021D6438 - 2 ; case 7
	.short _021D64C6 - _021D6438 - 2 ; case 8
_021D644A:
	add r1, r4, #0
	bl ov5_021D66D0
	add r5, r0, #0
	b _021D64CC
_021D6454:
	add r1, r4, #0
	bl ov5_021D6730
	add r5, r0, #0
	b _021D64CC
_021D645E:
	add r1, r4, #0
	mov r2, #0
	add r3, r5, #0
	bl ov5_021D676C
	add r5, r0, #0
	b _021D64CC
_021D646C:
	add r1, r4, #0
	mov r2, #2
	add r3, r5, #0
	bl ov5_021D676C
	add r5, r0, #0
	b _021D64CC
_021D647A:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r0, [r0, #0x48]
	bl ov5_021D57EC
	cmp r0, #1
	bne _021D649A
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #2
	bl ov5_021D676C
	add r5, r0, #0
	b _021D64CC
_021D649A:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	add r3, r5, #0
	bl ov5_021D676C
	add r5, r0, #0
	b _021D64CC
_021D64AA:
	add r1, r4, #0
	add r2, r5, #0
	bl ov5_021D6868
	b _021D64CC
_021D64B4:
	add r1, r4, #0
	bl ov5_021D6890
	b _021D64CC
_021D64BC:
	add r1, r4, #0
	mov r2, #0
	bl ov5_021D6868
	b _021D64CC
_021D64C6:
	add r1, r4, #0
	bl ov5_021D68B8
_021D64CC:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D6418

	thumb_func_start ov5_021D64D0
ov5_021D64D0: ; 0x021D64D0
	cmp r1, #0x1f
	blt _021D64D8
	mov r0, #0
	bx lr
_021D64D8:
	ldr r2, [r0, #0]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	ldrh r0, [r0, #0x10]
	bx lr
	thumb_func_end ov5_021D64D0

	thumb_func_start ov5_021D64E4
ov5_021D64E4: ; 0x021D64E4
	push {r3, lr}
	add r3, r0, #0
	str r1, [sp]
	ldr r0, _021D64F8 ; =0x04000050
	mov r1, #4
	mov r2, #0x21
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	nop
_021D64F8: .word 0x04000050
	thumb_func_end ov5_021D64E4

	thumb_func_start ov5_021D64FC
ov5_021D64FC: ; 0x021D64FC
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov5_021D64FC

	thumb_func_start ov5_021D650C
ov5_021D650C: ; 0x021D650C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mul r0, r1
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _021D6532
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021D6532:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov5_021D650C

	thumb_func_start ov5_021D6538
ov5_021D6538: ; 0x021D6538
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	strh r3, [r0, #0xe]
	mov r1, #0
	strh r1, [r0, #0xc]
	bx lr
	thumb_func_end ov5_021D6538

	thumb_func_start ov5_021D6548
ov5_021D6548: ; 0x021D6548
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0xc
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0xe
	ldrsh r1, [r4, r1]
	bl FX_Div
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	mov r0, #0xe
	ldrsh r1, [r4, r0]
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	cmp r0, r1
	bgt _021D658C
	strh r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021D658C:
	strh r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D6548

	thumb_func_start ov5_021D6594
ov5_021D6594: ; 0x021D6594
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov5_021D6BFC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021D6C30
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021D6C64
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021D6CA0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D6594

	thumb_func_start ov5_021D65C0
ov5_021D65C0: ; 0x021D65C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r2, #0
	add r6, r1, #0
	add r7, r3, #0
	ldr r5, [sp, #0x40]
	bl sub_02009F38
	str r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_02009FE8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_0200A014
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_0200A040
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_0200A074
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_02009FB4
	cmp r6, #3
	bhi _021D668A
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D6610: ; jump table
	.short _021D6618 - _021D6610 - 2 ; case 0
	.short _021D6636 - _021D6610 - 2 ; case 1
	.short _021D6658 - _021D6610 - 2 ; case 2
	.short _021D6672 - _021D6610 - 2 ; case 3
_021D6618:
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02009AA8
	str r0, [sp, #0x14]
	b _021D668A
_021D6636:
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	add r1, r5, #0
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_02009B64
	str r0, [sp, #0x14]
	b _021D668A
_021D6658:
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02009BC4
	str r0, [sp, #0x14]
	b _021D668A
_021D6672:
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02009BC4
	str r0, [sp, #0x14]
_021D668A:
	ldr r0, [sp, #0x14]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D65C0

	thumb_func_start ov5_021D6690
ov5_021D6690: ; 0x021D6690
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021D66CC ; =0x0000FFFF
	add r4, r2, #0
	cmp r1, r0
	beq _021D66C8
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D66A6
	bl sub_0200A4E4
_021D66A6:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D66B0
	bl sub_0200A6DC
_021D66B0:
	mov r6, #0
_021D66B2:
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D66BE
	ldr r0, [r5, #8]
	bl sub_02009D68
_021D66BE:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _021D66B2
_021D66C8:
	pop {r4, r5, r6, pc}
	nop
_021D66CC: .word 0x0000FFFF
	thumb_func_end ov5_021D6690

	thumb_func_start ov5_021D66D0
ov5_021D66D0: ; 0x021D66D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0x1c
	ldr r3, [r5, #0]
	mul r2, r1
	add r4, r3, r2
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _021D6728
	add r1, r4, #0
	bl ov5_021D6B60
	cmp r0, #0
	bne _021D66F0
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D66F0:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021D6A48
	cmp r0, #0
	bne _021D6708
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_021D6708:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0, #8]
	ldrh r1, [r4]
	ldr r0, _021D672C ; =0x0000FFFF
	cmp r1, r0
	beq _021D671C
	ldr r0, [r4, #8]
	bl ov5_021D6D34
_021D671C:
	ldrh r1, [r4, #2]
	add r0, r5, #0
	bl ov5_021D6A2C
	mov r0, #2
	strh r0, [r4, #0x10]
_021D6728:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D672C: .word 0x0000FFFF
	thumb_func_end ov5_021D66D0

	thumb_func_start ov5_021D6730
ov5_021D6730: ; 0x021D6730
	push {r4, lr}
	mov r2, #0x1c
	ldr r3, [r0, #0]
	mul r2, r1
	add r4, r3, r2
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021D6744
	mov r0, #1
	pop {r4, pc}
_021D6744:
	add r1, r4, #0
	bl ov5_021D6B60
	cmp r0, #0
	bne _021D6752
	mov r0, #0
	pop {r4, pc}
_021D6752:
	ldr r0, _021D6768 ; =ov5_021D6A84
	add r1, r4, #0
	mov r2, #1
	bl sub_0200D9E8
	str r0, [r4, #0x14]
	mov r0, #1
	strh r0, [r4, #0x10]
	mov r1, #0
	strh r1, [r4, #0x12]
	pop {r4, pc}
	; .align 2, 0
_021D6768: .word ov5_021D6A84
	thumb_func_end ov5_021D6730

	thumb_func_start ov5_021D676C
ov5_021D676C: ; 0x021D676C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r2, [r0, #0]
	mov r0, #0x1c
	mul r0, r1
	ldrh r1, [r2, r0]
	add r4, r2, r0
	ldr r0, _021D6854 ; =0x0000FFFF
	add r6, r3, #0
	cmp r1, r0
	beq _021D678C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021D678C
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D678C:
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _021D6796
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D6796:
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _021D67A0
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D67A0:
	ldr r0, [r4, #0x18]
	mov r2, #4
	bl sub_0200D9E8
	ldr r1, [r4, #8]
	ldr r3, _021D6858 ; =0x00000B88
	str r0, [r1, r3]
	ldr r0, [r4, #8]
	ldr r0, [r0, r3]
	cmp r0, #0
	bne _021D67BA
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D67BA:
	mov r0, #3
	strh r0, [r4, #0x10]
	add r0, r3, #0
	ldr r1, [r4, #8]
	add r0, #0x1a
	strh r5, [r1, r0]
	add r0, r3, #0
	ldr r1, [r4, #8]
	mov r2, #0
	add r0, #0x1e
	strh r2, [r1, r0]
	ldr r1, [r4, #8]
	add r0, r1, #0
	add r0, #0xc
	str r0, [r1, #0x40]
	ldr r1, [r4, #8]
	add r0, r1, #0
	add r0, #0xc
	str r0, [r1, #0x44]
	add r0, r3, #0
	ldr r1, [r4, #8]
	add r0, #0x1c
	strh r6, [r1, r0]
	add r0, r3, #0
	ldr r1, [r4, #8]
	add r0, #0x14
	str r2, [r1, r0]
	ldr r1, [r4, #8]
	add r0, r3, #4
	ldr r6, _021D685C ; =0x021C5CE4
	add r5, r1, r0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _021D6820
	mov r0, #4
	bl sub_02018144
	ldr r2, [r4, #8]
	ldr r1, _021D6860 ; =0x00000B98
	str r0, [r2, r1]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	ldr r0, [r0, r1]
	mov r1, #0
	bl memset
	b _021D6826
_021D6820:
	ldr r0, [r4, #8]
	add r3, #0x10
	str r2, [r0, r3]
_021D6826:
	ldrh r1, [r4, #2]
	ldr r0, _021D6854 ; =0x0000FFFF
	cmp r1, r0
	beq _021D6850
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r2, _021D6864 ; =0x0400000C
	mov r1, #3
	ldrh r3, [r2]
	mov r0, #1
	bic r3, r1
	orr r0, r3
	strh r0, [r2]
	sub r2, r2, #4
	ldrh r3, [r2]
	mov r0, #2
	bic r3, r1
	orr r0, r3
	strh r0, [r2]
_021D6850:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D6854: .word 0x0000FFFF
_021D6858: .word 0x00000B88
_021D685C: .word 0x021C5CE4
_021D6860: .word 0x00000B98
_021D6864: .word 0x0400000C
	thumb_func_end ov5_021D676C

	thumb_func_start ov5_021D6868
ov5_021D6868: ; 0x021D6868
	push {r3, r4}
	ldr r3, [r0, #0]
	mov r0, #0x1c
	mul r0, r1
	add r4, r3, r0
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bne _021D6886
	ldr r1, [r4, #8]
	ldr r0, _021D688C ; =0x00000BA6
	mov r3, #5
	strh r3, [r1, r0]
	ldr r1, [r4, #8]
	sub r0, r0, #2
	strh r2, [r1, r0]
_021D6886:
	pop {r3, r4}
	bx lr
	nop
_021D688C: .word 0x00000BA6
	thumb_func_end ov5_021D6868

	thumb_func_start ov5_021D6890
ov5_021D6890: ; 0x021D6890
	push {r4, lr}
	mov r2, #0x1c
	ldr r3, [r0, #0]
	mul r2, r1
	add r4, r3, r2
	bl ov5_021D64D0
	cmp r0, #3
	bne _021D68B2
	ldr r1, [r4, #8]
	ldr r0, _021D68B4 ; =0x00000BA2
	mov r2, #5
	strh r2, [r1, r0]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x18]
	mov r0, #0
	blx r2
_021D68B2:
	pop {r4, pc}
	; .align 2, 0
_021D68B4: .word 0x00000BA2
	thumb_func_end ov5_021D6890

	thumb_func_start ov5_021D68B8
ov5_021D68B8: ; 0x021D68B8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x1c
	ldr r2, [r5, #0]
	mul r0, r1
	add r4, r2, r0
	ldrh r1, [r4, #2]
	ldr r0, _021D69A4 ; =0x0000FFFF
	cmp r1, r0
	beq _021D68F6
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _021D69A8 ; =0x0400000C
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	sub r3, r0, #4
	ldrh r6, [r3]
	mov r1, #1
	add r0, #0x44
	bic r6, r2
	orr r1, r6
	strh r1, [r3]
	mov r1, #0
	strh r1, [r0]
_021D68F6:
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _021D691E
	ldrh r1, [r4]
	add r0, r5, #0
	bl ov5_021D6690
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D691E
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x14]
_021D691E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D698A
	add r0, #0xc
	bl ov5_021D6FD8
	ldrh r1, [r4]
	ldr r0, _021D69A4 ; =0x0000FFFF
	cmp r1, r0
	beq _021D6938
	ldr r0, [r4, #8]
	bl ov5_021D6D64
_021D6938:
	ldr r0, [r4, #8]
	ldr r1, _021D69AC ; =0x00000B9C
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021D6946
	bl ov5_021DB4E4
_021D6946:
	ldr r1, [r4, #8]
	ldr r0, _021D69B0 ; =0x00000B98
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021D695E
	mov r0, #4
	bl sub_02018238
	ldr r1, [r4, #8]
	ldr r0, _021D69B0 ; =0x00000B98
	mov r2, #0
	str r2, [r1, r0]
_021D695E:
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	bne _021D6970
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D697E
	bl sub_0200DA58
	b _021D697E
_021D6970:
	cmp r0, #3
	bne _021D697E
	ldr r1, [r4, #8]
	ldr r0, _021D69B4 ; =0x00000B88
	ldr r0, [r1, r0]
	bl sub_0200DA58
_021D697E:
	ldr r1, [r4, #8]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #8]
_021D698A:
	mov r2, #0
	str r2, [sp]
	mov r0, #0x41
	str r2, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	ldr r0, [r0, #0x48]
	add r3, r2, #0
	bl ov5_021D57FC
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D69A4: .word 0x0000FFFF
_021D69A8: .word 0x0400000C
_021D69AC: .word 0x00000B9C
_021D69B0: .word 0x00000B98
_021D69B4: .word 0x00000B88
	thumb_func_end ov5_021D68B8

	thumb_func_start ov5_021D69B8
ov5_021D69B8: ; 0x021D69B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r1, [r4, #2]
	ldr r0, _021D6A1C ; =0x0000FFFF
	cmp r1, r0
	beq _021D69EC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _021D6A20 ; =0x0400000C
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	sub r3, r0, #4
	ldrh r5, [r3]
	mov r1, #1
	add r0, #0x44
	bic r5, r2
	orr r1, r5
	strh r1, [r3]
	mov r1, #0
	strh r1, [r0]
_021D69EC:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D6A1A
	add r0, #0xc
	bl ov5_021D6FD8
	ldr r0, [r4, #8]
	ldr r1, _021D6A24 ; =0x00000B9C
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021D6A06
	bl ov5_021DB4E4
_021D6A06:
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bne _021D6A1A
	ldr r1, [r4, #8]
	ldr r0, _021D6A28 ; =0x00000B88
	ldr r0, [r1, r0]
	bl sub_0200DA58
	mov r0, #2
	strh r0, [r4, #0x10]
_021D6A1A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6A1C: .word 0x0000FFFF
_021D6A20: .word 0x0400000C
_021D6A24: .word 0x00000B9C
_021D6A28: .word 0x00000B88
	thumb_func_end ov5_021D69B8

	thumb_func_start ov5_021D6A2C
ov5_021D6A2C: ; 0x021D6A2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021D6D84
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021D6DCC
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021D6E20
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D6A2C

	thumb_func_start ov5_021D6A48
ov5_021D6A48: ; 0x021D6A48
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	ldr r0, _021D6A80 ; =0x0000FFFF
	cmp r1, r0
	beq _021D6A7C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021D6A7C
	add r0, r4, #0
	bl ov5_021D6BC4
	cmp r0, #0
	bne _021D6A6A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D6A6A:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	bl ov5_021D6594
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021D6CDC
_021D6A7C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6A80: .word 0x0000FFFF
	thumb_func_end ov5_021D6A48

	thumb_func_start ov5_021D6A84
ov5_021D6A84: ; 0x021D6A84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r2, [r4, #0x12]
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r2, #8
	ldr r0, [r0, #0]
	bhi _021D6B5A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D6AA0: ; jump table
	.short _021D6AB2 - _021D6AA0 - 2 ; case 0
	.short _021D6AC8 - _021D6AA0 - 2 ; case 1
	.short _021D6AD8 - _021D6AA0 - 2 ; case 2
	.short _021D6AE6 - _021D6AA0 - 2 ; case 3
	.short _021D6AF6 - _021D6AA0 - 2 ; case 4
	.short _021D6B04 - _021D6AA0 - 2 ; case 5
	.short _021D6B14 - _021D6AA0 - 2 ; case 6
	.short _021D6B22 - _021D6AA0 - 2 ; case 7
	.short _021D6B32 - _021D6AA0 - 2 ; case 8
_021D6AB2:
	add r0, r4, #0
	bl ov5_021D6BC4
	cmp r0, #0
	bne _021D6AC0
	bl GF_AssertFail
_021D6AC0:
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021D6AC8:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov5_021D6BFC
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021D6AD8:
	ldrh r1, [r4, #2]
	bl ov5_021D6D84
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021D6AE6:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov5_021D6C30
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021D6AF6:
	ldrh r1, [r4, #2]
	bl ov5_021D6DCC
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021D6B04:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov5_021D6C64
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021D6B14:
	ldrh r1, [r4, #2]
	bl ov5_021D6E20
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021D6B22:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov5_021D6CA0
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021D6B32:
	bl ov5_021D6CDC
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0, #8]
	ldrh r1, [r4]
	ldr r0, _021D6B5C ; =0x0000FFFF
	cmp r1, r0
	beq _021D6B4A
	ldr r0, [r4, #8]
	bl ov5_021D6D34
_021D6B4A:
	mov r0, #2
	strh r0, [r4, #0x10]
	mov r0, #0
	strh r0, [r4, #0x12]
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_0200DA58
_021D6B5A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6B5C: .word 0x0000FFFF
	thumb_func_end ov5_021D6A84

	thumb_func_start ov5_021D6B60
ov5_021D6B60: ; 0x021D6B60
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D6B70
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D6B70:
	ldr r1, _021D6BBC ; =0x00000BA8
	mov r0, #4
	bl sub_02018144
	str r0, [r4, #8]
	cmp r0, #0
	bne _021D6B82
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D6B82:
	ldr r2, _021D6BBC ; =0x00000BA8
	mov r1, #0
	bl memset
	ldr r0, [r4, #8]
	ldr r2, _021D6BC0 ; =0x00000BA2
	str r5, [r0, #0]
	ldr r1, [r4, #8]
	mov r0, #0
	strh r0, [r1, r2]
	add r1, r2, #4
	ldr r3, [r4, #8]
	sub r2, #0xa
	strh r0, [r3, r1]
	ldr r3, [r4, #8]
	add r1, r3, #0
	add r1, #0xc
	str r1, [r3, #0x40]
	ldr r3, [r4, #8]
	add r1, r3, #0
	add r1, #0xc
	str r1, [r3, #0x44]
	ldr r1, [r4, #8]
	str r0, [r1, r2]
	ldr r0, [r4, #8]
	str r4, [r0, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D6BBC: .word 0x00000BA8
_021D6BC0: .word 0x00000BA2
	thumb_func_end ov5_021D6B60

	thumb_func_start ov5_021D6BC4
ov5_021D6BC4: ; 0x021D6BC4
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _021D6BF8 ; =0x0000FFFF
	cmp r1, r0
	beq _021D6BF4
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D6BDA
	mov r0, #1
	pop {r4, pc}
_021D6BDA:
	mov r0, #4
	mov r1, #0x64
	bl sub_02018144
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _021D6BEC
	mov r0, #0
	pop {r4, pc}
_021D6BEC:
	mov r1, #0
	mov r2, #0x64
	bl memset
_021D6BF4:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_021D6BF8: .word 0x0000FFFF
	thumb_func_end ov5_021D6BC4

	thumb_func_start ov5_021D6BFC
ov5_021D6BFC: ; 0x021D6BFC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021D6C2C ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021D6C26
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x10]
	mov r1, #2
	bl ov5_021D65C0
	str r0, [r4, #8]
_021D6C26:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D6C2C: .word 0x0000FFFF
	thumb_func_end ov5_021D6BFC

	thumb_func_start ov5_021D6C30
ov5_021D6C30: ; 0x021D6C30
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021D6C60 ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021D6C5A
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x14]
	mov r1, #3
	bl ov5_021D65C0
	str r0, [r4, #0xc]
_021D6C5A:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D6C60: .word 0x0000FFFF
	thumb_func_end ov5_021D6C30

	thumb_func_start ov5_021D6C64
ov5_021D6C64: ; 0x021D6C64
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021D6C9C ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021D6C98
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #8]
	mov r1, #0
	bl ov5_021D65C0
	str r0, [r4, #0]
	bl sub_0200A3DC
	ldr r0, [r4, #0]
	bl sub_02009D4C
_021D6C98:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6C9C: .word 0x0000FFFF
	thumb_func_end ov5_021D6C64

	thumb_func_start ov5_021D6CA0
ov5_021D6CA0: ; 0x021D6CA0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021D6CD8 ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021D6CD2
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	add r2, r3, #0
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0xc]
	bl ov5_021D65C0
	str r0, [r4, #4]
	bl sub_0200A640
	ldr r0, [r4, #4]
	bl sub_02009D4C
_021D6CD2:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D6CD8: .word 0x0000FFFF
	thumb_func_end ov5_021D6CA0

	thumb_func_start ov5_021D6CDC
ov5_021D6CDC: ; 0x021D6CDC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	ldr r0, _021D6D30 ; =0x0000FFFF
	cmp r1, r0
	beq _021D6D2E
	ldr r2, [r4, #0xc]
	mov r0, #1
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x40
	add r1, r5, #0
	mov r3, #0
	bl ov5_021D6F4C
	ldr r0, [r4, #0xc]
	mov r1, #0
	add r0, #0x10
	mov r2, #0x30
	bl memset
	add r5, #0xfc
	ldr r1, [r5, #0]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x10]
	ldr r1, [r4, #0xc]
	add r0, r1, #0
	add r0, #0x40
	str r0, [r1, #0x14]
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	str r1, [r0, #0x24]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x28]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x2c]
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0, #0x38]
_021D6D2E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6D30: .word 0x0000FFFF
	thumb_func_end ov5_021D6CDC

	thumb_func_start ov5_021D6D34
ov5_021D6D34: ; 0x021D6D34
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_021D6D3E:
	ldr r0, [r6, #8]
	add r0, #0x10
	bl sub_02021AA0
	str r0, [r5, #0x4c]
	add r1, r7, #0
	bl sub_02021CAC
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _021D6D58
	bl GF_AssertFail
_021D6D58:
	add r4, r4, #1
	add r5, #0x3c
	cmp r4, #0x30
	blt _021D6D3E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D6D34

	thumb_func_start ov5_021D6D64
ov5_021D6D64: ; 0x021D6D64
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021D6D6C:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _021D6D78
	bl sub_02021BD4
	str r6, [r5, #0x4c]
_021D6D78:
	add r4, r4, #1
	add r5, #0x3c
	cmp r4, #0x30
	blt _021D6D6C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021D6D64

	thumb_func_start ov5_021D6D84
ov5_021D6D84: ; 0x021D6D84
	push {r3, lr}
	sub sp, #0x18
	add r2, r0, #0
	ldr r0, _021D6DC8 ; =0x0000FFFF
	cmp r1, r0
	beq _021D6DC4
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r3, [r2, #4]
	mov r2, #0xc
	mul r2, r1
	ldr r1, [r3, r2]
	mov r2, #4
	bl sub_02006CB8
	add r1, sp, #0x14
	str r0, [sp]
	bl NNS_G2dGetUnpackedPaletteData
	ldr r1, [sp, #0x14]
	mov r0, #2
	ldr r1, [r1, #0xc]
	mov r2, #0x20
	mov r3, #0xc0
	bl sub_0201972C
	ldr r0, [sp]
	bl sub_020181C4
	mov r0, #0
	str r0, [sp]
_021D6DC4:
	add sp, #0x18
	pop {r3, pc}
	; .align 2, 0
_021D6DC8: .word 0x0000FFFF
	thumb_func_end ov5_021D6D84

	thumb_func_start ov5_021D6DCC
ov5_021D6DCC: ; 0x021D6DCC
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _021D6E1C ; =0x0000FFFF
	cmp r1, r0
	beq _021D6E18
	mov r2, #0xc
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r3, [r4, #4]
	mul r2, r1
	add r1, r3, r2
	ldr r0, [r4, r0]
	ldr r1, [r1, #4]
	mov r2, #4
	bl sub_02006CB8
	add r1, sp, #0x14
	str r0, [sp, #8]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r3, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r3, #0x14]
	ldr r0, [r0, #8]
	ldr r3, [r3, #0x10]
	mov r1, #2
	bl sub_0201958C
	ldr r0, [sp, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [sp, #8]
_021D6E18:
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_021D6E1C: .word 0x0000FFFF
	thumb_func_end ov5_021D6DCC

	thumb_func_start ov5_021D6E20
ov5_021D6E20: ; 0x021D6E20
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	ldr r0, _021D6EC4 ; =0x0000FFFF
	add r5, r1, #0
	cmp r5, r0
	beq _021D6EC0
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r1, #0xc
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r2, [r4, #4]
	mul r1, r5
	add r1, r2, r1
	ldr r0, [r4, r0]
	ldr r1, [r1, #8]
	mov r2, #4
	bl sub_02006CB8
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _021D6E56
	bl GF_AssertFail
_021D6E56:
	ldr r0, [sp, #0x14]
	add r1, sp, #0x18
	bl NNS_G2dGetUnpackedScreenData
	ldr r3, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	add r2, r3, #0
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	ldr r0, [r0, #8]
	mov r1, #2
	add r2, #0xc
	bl sub_02019460
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r3, [sp, #0x18]
	ldr r0, [r4, r0]
	add r2, r3, #0
	ldr r0, [r0, #8]
	ldr r3, [r3, #8]
	mov r1, #2
	add r2, #0xc
	bl sub_02019574
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	add r0, #0xfe
	ldr r0, [r4, r0]
	mov r2, #0
	ldr r0, [r0, #8]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019E2C
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	ldr r0, [r0, #8]
	bl sub_02019448
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	mov r0, #0
	str r0, [sp, #0x14]
_021D6EC0:
	add sp, #0x24
	pop {r4, r5, pc}
	; .align 2, 0
_021D6EC4: .word 0x0000FFFF
	thumb_func_end ov5_021D6E20

	thumb_func_start ov5_021D6EC8
ov5_021D6EC8: ; 0x021D6EC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	cmp r0, #0
	beq _021D6ED8
	bl GF_AssertFail
_021D6ED8:
	cmp r4, #0
	bgt _021D6EE0
	bl GF_AssertFail
_021D6EE0:
	cmp r4, #0x28
	bls _021D6EE8
	bl GF_AssertFail
_021D6EE8:
	add r0, r5, #0
	add r0, #0xc
	str r0, [r5, #8]
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D6EC8

	thumb_func_start ov5_021D6EF0
ov5_021D6EF0: ; 0x021D6EF0
	ldr r3, _021D6EFC ; =memset
	mov r1, #0
	str r1, [r0, #8]
	add r0, #0xc
	mov r2, #0x28
	bx r3
	; .align 2, 0
_021D6EFC: .word memset
	thumb_func_end ov5_021D6EF0

	thumb_func_start ov5_021D6F00
ov5_021D6F00: ; 0x021D6F00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r6, [r5, #0]
	bl ov5_021D75E4
	add r4, r0, #0
	bne _021D6F14
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D6F14:
	add r1, r5, #0
	str r6, [r4, #0]
	add r1, #0xc
	str r1, [r4, #0x34]
	ldr r1, [r5, #0x44]
	str r1, [r4, #0x38]
	ldr r1, [r5, #0x44]
	str r4, [r1, #0x34]
	str r4, [r5, #0x44]
	add r1, r7, #0
	bl ov5_021D6EC8
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021D6F36
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D6F36:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021D6F40
	bl GF_AssertFail
_021D6F40:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021CAC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D6F00

	thumb_func_start ov5_021D6F4C
ov5_021D6F4C: ; 0x021D6F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0x2c]
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #0x30]
	mov r6, #0
	add r4, sp, #0x34
_021D6F5C:
	ldr r0, [r5, #0]
	bl sub_02009E08
	add r6, r6, #1
	add r5, r5, #4
	stmia r4!, {r0}
	cmp r6, #4
	blt _021D6F5C
	ldr r0, [sp, #0x40]
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x10]
	ldr r0, [r7, #8]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0xc]
	str r0, [sp, #0x18]
	ldr r0, [r7, #0x10]
	str r0, [sp, #0x1c]
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	bl sub_020093B4
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D6F4C

	thumb_func_start ov5_021D6FA8
ov5_021D6FA8: ; 0x021D6FA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x38]
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x34]
	str r1, [r0, #0x38]
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021CAC
	add r0, r4, #0
	bl ov5_021D6EF0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x3c
	ldr r5, [r4, #4]
	bl memset
	str r5, [r4, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D6FA8

	thumb_func_start ov5_021D6FD8
ov5_021D6FD8: ; 0x021D6FD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	cmp r0, r5
	beq _021D6FEE
_021D6FE2:
	ldr r4, [r0, #0x34]
	bl ov5_021D6FA8
	add r0, r4, #0
	cmp r4, r5
	bne _021D6FE2
_021D6FEE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D6FD8

	thumb_func_start ov5_021D6FF0
ov5_021D6FF0: ; 0x021D6FF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r6, r1, #0
	ldr r4, [r0, #0x34]
	cmp r0, r5
	beq _021D7008
_021D6FFE:
	blx r6
	add r0, r4, #0
	ldr r4, [r4, #0x34]
	cmp r0, r5
	bne _021D6FFE
_021D7008:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021D6FF0

	thumb_func_start ov5_021D700C
ov5_021D700C: ; 0x021D700C
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021D700C

	thumb_func_start ov5_021D7010
ov5_021D7010: ; 0x021D7010
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #4]
	bl sub_02021D28
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D7010

	thumb_func_start ov5_021D7028
ov5_021D7028: ; 0x021D7028
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, _021D7168 ; =0x021C5CE4
	add r5, r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, _021D716C ; =0x00000B8C
	ldr r2, [sp, #0x18]
	ldr r1, [r5, r0]
	add r0, #8
	sub r6, r2, r1
	ldr r1, [sp, #0x20]
	ldr r0, [r5, r0]
	sub r4, r1, r0
	mov r0, #1
	mov r1, #3
	lsl r0, r0, #0xe
	lsl r1, r1, #0xc
	bl FX_Div
	add r7, r0, #0
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #0x24]
	bl sub_02020A88
	str r0, [sp, #0xc]
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #0x24]
	bl sub_02020A90
	add r1, r0, #0
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	add r3, sp, #0x14
	bl sub_0201E34C
	mov r1, #1
	ldr r0, [sp, #0x14]
	lsl r1, r1, #0x14
	bl FX_Div
	str r0, [sp, #0x14]
	cmp r4, #0
	bgt _021D70A4
	ldr r0, [sp, #0x10]
	ldr r1, _021D7170 ; =0x000BE8D0
	bl FX_Div
	b _021D70AC
_021D70A4:
	ldr r0, [sp, #0x10]
	ldr r1, _021D7174 ; =0x000BE811
	bl FX_Div
_021D70AC:
	mov r7, #1
	lsl r7, r7, #0xc
	str r0, [sp, #0x10]
	cmp r6, #0
	bge _021D70D4
	ldr r7, _021D7178 ; =0xFFFFF000
	asr r1, r6, #0x1f
	add r0, r6, #0
	asr r3, r7, #0xc
	add r2, r7, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
_021D70D4:
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl FX_Div
	add r6, r0, #0
	cmp r7, #0
	bge _021D70FC
	asr r1, r6, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
_021D70FC:
	mov r7, #1
	lsl r7, r7, #0xc
	cmp r4, #0
	bge _021D7122
	ldr r7, _021D7178 ; =0xFFFFF000
	asr r1, r4, #0x1f
	add r0, r4, #0
	asr r3, r7, #0xc
	add r2, r7, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
_021D7122:
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl FX_Div
	add r3, r0, #0
	cmp r7, #0
	bge _021D714A
	asr r1, r3, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r3, r2, #0xc
	orr r3, r0
_021D714A:
	add r0, r6, r3
	beq _021D715C
	ldr r0, _021D716C ; =0x00000B8C
	add r2, sp, #0x18
	add r4, r5, r0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
_021D715C:
	ldr r0, [sp, #4]
	str r6, [r0, #0]
	ldr r0, [sp, #8]
	str r3, [r0, #0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7168: .word 0x021C5CE4
_021D716C: .word 0x00000B8C
_021D7170: .word 0x000BE8D0
_021D7174: .word 0x000BE811
_021D7178: .word 0xFFFFF000
	thumb_func_end ov5_021D7028

	thumb_func_start ov5_021D717C
ov5_021D717C: ; 0x021D717C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov5_021D71B4
	cmp r5, #0
	beq _021D71A0
	ldr r0, [sp, #4]
	asr r1, r0, #0xc
	str r1, [r5, #0]
	bpl _021D71A0
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0]
_021D71A0:
	cmp r4, #0
	beq _021D71B0
	ldr r0, [sp]
	asr r0, r0, #0xc
	str r0, [r4, #0]
	bpl _021D71B0
	add r0, r0, #1
	str r0, [r4, #0]
_021D71B0:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D717C

	thumb_func_start ov5_021D71B4
ov5_021D71B4: ; 0x021D71B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r0, sp, #8
	add r1, sp, #4
	add r2, r5, #0
	bl ov5_021D7028
	ldr r4, [r5, #0x40]
	add r5, #0xc
	cmp r4, r5
	beq _021D71F8
	add r6, sp, #0xc
_021D71D2:
	add r0, r6, #0
	add r1, r4, #0
	bl ov5_021D7010
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov5_021D630C
	ldr r4, [r4, #0x34]
	cmp r4, r5
	bne _021D71D2
_021D71F8:
	cmp r7, #0
	beq _021D7200
	ldr r0, [sp, #8]
	str r0, [r7, #0]
_021D7200:
	ldr r0, [sp]
	cmp r0, #0
	beq _021D720A
	ldr r1, [sp, #4]
	str r1, [r0, #0]
_021D720A:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D71B4

	thumb_func_start ov5_021D7210
ov5_021D7210: ; 0x021D7210
	str r1, [r0, #0]
	strh r2, [r0, #4]
	mov r1, #0
	strh r1, [r0, #6]
	strh r3, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r1, [sp]
	strh r1, [r0, #0xc]
	ldr r1, [sp, #4]
	strh r1, [r0, #0xe]
	ldr r1, [sp, #8]
	strh r1, [r0, #0x10]
	ldr r1, [sp, #0xc]
	strh r1, [r0, #0x12]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x14]
	str r1, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021D7210

	thumb_func_start ov5_021D7238
ov5_021D7238: ; 0x021D7238
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	ldr r1, [sp]
	strh r3, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov5_021D7238

	thumb_func_start ov5_021D7244
ov5_021D7244: ; 0x021D7244
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bne _021D7258
	mov r0, #1
	orr r4, r0
	b _021D727E
_021D7258:
	bgt _021D725E
	mov r2, #1
	b _021D7260
_021D725E:
	add r2, r4, #0
_021D7260:
	mov r0, #0xe
	ldrsh r1, [r5, r0]
	mov r0, #8
	ldrsh r0, [r5, r0]
	cmp r0, r1
	blt _021D7270
	cmp r2, #0
	beq _021D7278
_021D7270:
	cmp r0, r1
	bgt _021D727E
	cmp r2, #1
	bne _021D727E
_021D7278:
	mov r0, #1
	orr r4, r0
	strh r1, [r5, #8]
_021D727E:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021D728A
	mov r0, #2
	orr r4, r0
	b _021D72B0
_021D728A:
	bgt _021D7290
	mov r2, #1
	b _021D7292
_021D7290:
	mov r2, #0
_021D7292:
	mov r0, #0xc
	ldrsh r1, [r5, r0]
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, r1
	blt _021D72A2
	cmp r2, #0
	beq _021D72AA
_021D72A2:
	cmp r0, r1
	bgt _021D72B0
	cmp r2, #1
	bne _021D72B0
_021D72AA:
	mov r0, #2
	orr r4, r0
	strh r1, [r5, #4]
_021D72B0:
	mov r0, #6
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, #6]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021D7304
	mov r1, #4
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #0]
	ldr r2, [r5, #0x18]
	blx r2
	mov r0, #8
	ldrsh r1, [r5, r0]
	strh r1, [r5, #6]
	mov r1, #1
	tst r1, r4
	bne _021D72DE
	ldrsh r1, [r5, r0]
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #8]
_021D72DE:
	mov r0, #2
	tst r0, r4
	bne _021D7304
	mov r0, #0xa
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, #0xa]
	ldrsh r1, [r5, r0]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	cmp r1, r0
	blt _021D7304
	mov r0, #0
	strh r0, [r5, #0xa]
	mov r0, #4
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	strh r0, [r5, #4]
_021D7304:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D7244

	thumb_func_start ov5_021D7308
ov5_021D7308: ; 0x021D7308
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [sp, #0x1c]
	str r2, [r4, #0]
	cmp r1, #0
	beq _021D7358
	cmp r1, #1
	bne _021D733C
	add r1, r3, #0
	add r3, sp, #0
	add r0, r2, #0
	ldrh r3, [r3, #0x14]
	ldr r2, [sp, #0x10]
	bl ov5_021D7384
	add r0, r4, #0
	bl ov5_021D7480
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	mov r2, #1
	bl ov5_021D749C
	add sp, #8
	pop {r4, pc}
_021D733C:
	cmp r1, #2
	bne _021D7358
	add r1, sp, #0
	ldrh r1, [r1, #0x14]
	ldr r4, [sp, #0x18]
	str r1, [sp]
	mov r1, #0x7f
	mul r1, r4
	str r1, [sp, #4]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x10]
	bl ov5_021D73B0
_021D7358:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov5_021D7308

	thumb_func_start ov5_021D735C
ov5_021D735C: ; 0x021D735C
	push {r4, lr}
	mov r4, #1
	cmp r2, #0
	beq _021D7380
	cmp r2, #1
	bne _021D7372
	add r0, r1, #0
	bl ov5_021D74B8
	add r4, r0, #0
	b _021D7380
_021D7372:
	cmp r2, #2
	bne _021D7380
	bl ov5_021D7434
	cmp r0, #0
	bne _021D7380
	mov r4, #0
_021D7380:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov5_021D735C

	thumb_func_start ov5_021D7384
ov5_021D7384: ; 0x021D7384
	push {r3, r4, r5, lr}
	sub sp, #8
	str r1, [sp]
	mov r1, #0
	add r4, r3, #0
	str r2, [sp, #4]
	mvn r1, r1
	mov r2, #1
	mov r3, #0
	add r5, r0, #0
	bl ov5_021D57FC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	add r2, r4, #0
	mov r3, #0x1f
	bl ov5_021D5834
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D7384

	thumb_func_start ov5_021D73B0
ov5_021D73B0: ; 0x021D73B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r4, [sp, #0x2c]
	bl ov5_021D57F0
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov5_021D57F4
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ov5_021D57F8
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	add r0, r5, #4
	add r3, r4, #0
	str r7, [r5, #0]
	bl ov5_021D64FC
	add r0, sp, #0x18
	ldrh r7, [r0, #0x10]
	add r0, r5, #0
	mov r2, #0x1f
	add r1, r6, #0
	and r1, r2
	add r0, #0x18
	and r2, r7
	add r3, r4, #0
	bl ov5_021D64FC
	add r0, r5, #0
	asr r1, r6, #5
	mov r3, #0x1f
	asr r2, r7, #5
	add r0, #0x2c
	and r1, r3
	and r2, r3
	add r3, r4, #0
	bl ov5_021D64FC
	add r0, r5, #0
	asr r1, r6, #0xa
	mov r2, #0x1f
	asr r3, r7, #0xa
	and r1, r2
	and r2, r3
	add r0, #0x40
	add r3, r4, #0
	bl ov5_021D64FC
	add r5, #0x54
	ldr r1, [sp, #8]
	ldr r2, [sp]
	add r0, r5, #0
	add r3, r4, #0
	bl ov5_021D64FC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D73B0

	thumb_func_start ov5_021D7434
ov5_021D7434: ; 0x021D7434
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r5, #4
	bl ov5_021D650C
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x18
	bl ov5_021D650C
	add r0, r5, #0
	add r0, #0x2c
	bl ov5_021D650C
	add r0, r5, #0
	add r0, #0x40
	bl ov5_021D650C
	add r0, r5, #0
	add r0, #0x54
	bl ov5_021D650C
	ldr r3, [r5, #0x40]
	ldr r0, [r5, #0]
	lsl r6, r3, #0xa
	ldr r1, [r5, #0x54]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0x18]
	ldr r5, [r5, #0x2c]
	lsl r5, r5, #5
	orr r3, r5
	orr r3, r6
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ov5_021D7384
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D7434

	thumb_func_start ov5_021D7480
ov5_021D7480: ; 0x021D7480
	mov r2, #0
	add r3, r0, #0
	add r1, r2, #0
_021D7486:
	add r0, r3, r2
	add r2, r2, #1
	strb r1, [r0, #4]
	cmp r2, #0x20
	blt _021D7486
	ldr r0, [r3, #0]
	add r1, r3, #4
	ldr r3, _021D7498 ; =ov5_021D585C
	bx r3
	; .align 2, 0
_021D7498: .word ov5_021D585C
	thumb_func_end ov5_021D7480

	thumb_func_start ov5_021D749C
ov5_021D749C: ; 0x021D749C
	mov r3, #0x7f
	str r3, [r0, #0x24]
	mov r3, #0
	str r3, [r0, #0x28]
	strh r1, [r0, #0x2c]
	cmp r2, #1
	bne _021D74B0
	mov r1, #1
	strh r1, [r0, #0x2e]
	bx lr
_021D74B0:
	sub r1, r3, #1
	strh r1, [r0, #0x2e]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021D749C

	thumb_func_start ov5_021D74B8
ov5_021D74B8: ; 0x021D74B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov5_021D74F4
	add r4, r0, #0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _021D74D0
	ldr r0, [r5, #0]
	add r1, r5, #4
	bl ov5_021D585C
_021D74D0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D74B8

	thumb_func_start ov5_021D74D4
ov5_021D74D4: ; 0x021D74D4
	push {r4, lr}
	add r4, r0, #0
	mov r2, #1
	str r2, [r4, #0x24]
	mov r1, #0
	str r1, [r4, #0x28]
	strh r1, [r4, #0x2c]
	strh r2, [r4, #0x2e]
	bl ov5_021D7534
	ldr r0, [r4, #0]
	add r1, r4, #4
	bl ov5_021D585C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D74D4

	thumb_func_start ov5_021D74F4
ov5_021D74F4: ; 0x021D74F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x2e
	ldrsh r1, [r5, r1]
	mov r4, #0
	cmp r1, #0
	bne _021D7506
	mov r4, #1
	b _021D7530
_021D7506:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	bgt _021D7510
	mov r4, #1
	b _021D7530
_021D7510:
	ldr r1, [r5, #0x28]
	add r2, r1, #1
	str r2, [r5, #0x28]
	mov r1, #0x2c
	ldrsh r1, [r5, r1]
	cmp r2, r1
	blt _021D7530
	str r4, [r5, #0x28]
	bl ov5_021D7534
	ldr r0, [r5, #0x24]
	sub r0, r0, #1
	str r0, [r5, #0x24]
	cmp r0, #0
	bgt _021D7530
	mov r4, #1
_021D7530:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D74F4

	thumb_func_start ov5_021D7534
ov5_021D7534: ; 0x021D7534
	push {r3, r4}
	mov r1, #0x2e
	ldrsh r1, [r0, r1]
	ldr r2, [r0, #0x24]
	cmp r1, #0
	bge _021D7546
	mov r1, #0x7f
	sub r2, r1, r2
	b _021D7546
_021D7546:
	asr r1, r2, #1
	lsr r1, r1, #0x1e
	add r1, r2, r1
	asr r4, r1, #2
	mov r3, #0x1f
	cmp r4, #0x1f
	bge _021D7562
_021D7554:
	sub r1, r3, r4
	lsl r2, r1, #2
	add r1, r0, r3
	sub r3, r3, #1
	strb r2, [r1, #4]
	cmp r3, r4
	bgt _021D7554
_021D7562:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021D7534

	thumb_func_start ov5_021D7568
ov5_021D7568: ; 0x021D7568
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #0x28]
	add r1, r2, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r7, [sp, #0x2c]
	blx r4
	ldr r0, [sp]
	mov r6, #0
	ldr r5, [r0, #0x40]
	str r6, [sp, #0x10]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021D75DE
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
_021D7596:
	ldr r0, [sp]
	cmp r5, r0
	beq _021D75DE
	mov r4, #0
	cmp r6, #0
	ble _021D75B2
_021D75A2:
	add r0, r5, #0
	blx r7
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D75B2
	add r4, r4, #1
	cmp r4, r6
	blt _021D75A2
_021D75B2:
	ldr r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	ldr r0, [r0, #0x34]
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _021D75D2
	add r0, r1, #0
	ldr r1, [sp, #8]
	bl _s32_div_f
	cmp r1, #0
	bne _021D75D2
	ldr r0, [sp, #0x28]
	add r6, r6, r0
_021D75D2:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _021D7596
_021D75DE:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D7568

	thumb_func_start ov5_021D75E4
ov5_021D75E4: ; 0x021D75E4
	mov r2, #0
	add r3, r0, #0
_021D75E8:
	ldr r1, [r3, #0x48]
	cmp r1, #0
	bne _021D75F8
	mov r1, #0x3c
	add r0, #0x48
	mul r1, r2
	add r0, r0, r1
	bx lr
_021D75F8:
	add r2, r2, #1
	add r3, #0x3c
	cmp r2, #0x30
	blt _021D75E8
	mov r0, #0
	bx lr
	thumb_func_end ov5_021D75E4

	thumb_func_start ov5_021D7604
ov5_021D7604: ; 0x021D7604
	push {r3, lr}
	ldr r0, _021D7654 ; =0x00000BA2
	ldrh r2, [r1, r0]
	cmp r2, #5
	bhi _021D7652
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D761A: ; jump table
	.short _021D7626 - _021D761A - 2 ; case 0
	.short _021D762C - _021D761A - 2 ; case 1
	.short _021D7632 - _021D761A - 2 ; case 2
	.short _021D7638 - _021D761A - 2 ; case 3
	.short _021D7646 - _021D761A - 2 ; case 4
	.short _021D764C - _021D761A - 2 ; case 5
_021D7626:
	mov r2, #1
	strh r2, [r1, r0]
	pop {r3, pc}
_021D762C:
	mov r2, #3
	strh r2, [r1, r0]
	pop {r3, pc}
_021D7632:
	mov r2, #3
	strh r2, [r1, r0]
	pop {r3, pc}
_021D7638:
	add r2, r0, #4
	ldrh r2, [r1, r2]
	cmp r2, #5
	bne _021D7652
	mov r2, #4
	strh r2, [r1, r0]
	pop {r3, pc}
_021D7646:
	mov r2, #5
	strh r2, [r1, r0]
	pop {r3, pc}
_021D764C:
	ldr r0, [r1, #4]
	bl ov5_021D69B8
_021D7652:
	pop {r3, pc}
	; .align 2, 0
_021D7654: .word 0x00000BA2
	thumb_func_end ov5_021D7604

	thumb_func_start ov5_021D7658
ov5_021D7658: ; 0x021D7658
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021D7880 ; =0x00000B98
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021D771A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D7678: ; jump table
	.short _021D7684 - _021D7678 - 2 ; case 0
	.short _021D76E2 - _021D7678 - 2 ; case 1
	.short _021D7724 - _021D7678 - 2 ; case 2
	.short _021D778A - _021D7678 - 2 ; case 3
	.short _021D77E8 - _021D7678 - 2 ; case 4
	.short _021D7836 - _021D7678 - 2 ; case 5
_021D7684:
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	sub r0, r0, #1
	str r0, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	ldr r0, _021D7884 ; =ov5_021D78A4
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r3, #8
	bl ov5_021D7210
	ldr r0, _021D7888 ; =0x0000726F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021D788C ; =0x00006B5A
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021D7890 ; =0x00000BA4
	add r1, r4, #0
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	mov r0, #0
	add r4, #0xb4
	str r0, [r4, #0]
	ldr r1, _021D7894 ; =0x00000639
	add r0, r5, #0
	bl ov5_021DB4B8
	ldr r0, _021D7898 ; =0x00000BA2
	mov r1, #1
	strh r1, [r5, r0]
	b _021D7854
_021D76E2:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D7702
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D7854
_021D7702:
	ldr r2, _021D7890 ; =0x00000BA4
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl ov5_021D735C
	cmp r0, #1
	bne _021D771A
	cmp r6, #3
	beq _021D771C
_021D771A:
	b _021D7854
_021D771C:
	ldr r0, _021D7898 ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D7854
_021D7724:
	mov r2, #4
	mov r3, #0
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #1
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021D7884 ; =ov5_021D78A4
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	ldr r0, _021D7890 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D7766
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D7888 ; =0x0000726F
	ldr r0, [r0, #0x48]
	ldr r3, _021D788C ; =0x00006B5A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov5_021D7384
	add r4, #0x1c
	add r0, r4, #0
	bl ov5_021D74D4
_021D7766:
	mov r0, #1
	str r0, [sp]
	ldr r0, _021D789C ; =ov5_021D7960
	ldr r1, _021D7884 ; =ov5_021D78A4
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #0xa
	bl ov5_021D7568
	ldr r1, _021D7894 ; =0x00000639
	add r0, r5, #0
	bl ov5_021DB4B8
	ldr r0, _021D7898 ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D7854
_021D778A:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021D77A6
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov5_021D78A4
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021D77A6:
	ldr r0, _021D78A0 ; =0x00000BA6
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021D7854
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	mov r3, #1
	bl ov5_021D7238
	ldr r0, _021D7890 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D77D4
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021D77D4:
	mov r0, #0
	add r4, #0xb4
	str r0, [r4, #0]
	ldr r0, _021D7898 ; =0x00000BA2
	mov r1, #4
	strh r1, [r5, r0]
	add r0, r5, #0
	bl ov5_021DB4E4
	b _021D7854
_021D77E8:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D7808
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D7854
_021D7808:
	ldr r0, _021D7890 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D781A
	add r4, #0x1c
	add r0, r4, #0
	bl ov5_021D74B8
	b _021D781C
_021D781A:
	mov r0, #1
_021D781C:
	cmp r0, #1
	bne _021D7854
	cmp r6, #3
	bne _021D7854
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021D7854
	ldr r0, _021D7898 ; =0x00000BA2
	mov r1, #5
	strh r1, [r5, r0]
	b _021D7854
_021D7836:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D784E
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D784E:
	ldr r0, [r5, #4]
	bl ov5_021D69B8
_021D7854:
	ldr r0, _021D7898 ; =0x00000BA2
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021D787A
	cmp r0, #0
	beq _021D787A
	add r0, r5, #0
	ldr r1, _021D789C ; =ov5_021D7960
	add r0, #0xc
	bl ov5_021D6FF0
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov5_021D717C
	add r0, r5, #0
	bl ov5_021D700C
_021D787A:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021D7880: .word 0x00000B98
_021D7884: .word ov5_021D78A4
_021D7888: .word 0x0000726F
_021D788C: .word 0x00006B5A
_021D7890: .word 0x00000BA4
_021D7894: .word 0x00000639
_021D7898: .word 0x00000BA2
_021D789C: .word ov5_021D7960
_021D78A0: .word 0x00000BA6
	thumb_func_end ov5_021D7658

	thumb_func_start ov5_021D78A4
ov5_021D78A4: ; 0x021D78A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r1, #0
	str r1, [sp, #4]
	cmp r0, #0
	ble _021D7952
_021D78B6:
	ldr r0, [sp]
	mov r1, #0x20
	bl ov5_021D6F00
	add r6, r0, #0
	beq _021D7952
	ldr r4, [r6, #8]
	bl sub_0201D35C
	mov r1, #0
	str r1, [r4, #0]
	mov r1, #3
	add r7, r0, #0
	bl _u32_div_f
	add r5, r1, #0
	lsl r1, r5, #0x10
	ldr r0, [r6, #4]
	lsr r1, r1, #0x10
	bl sub_02021E50
	add r0, r7, #0
	mov r1, #0x14
	bl _u32_div_f
	add r2, r5, #1
	mov r0, #0xa
	mul r0, r2
	add r0, r1, r0
	str r0, [r4, #8]
	cmp r5, #2
	bne _021D78FC
	ldr r0, [r4, #8]
	add r0, #0xa
	str r0, [r4, #8]
_021D78FC:
	add r0, r1, #0
	mov r1, #4
	mvn r1, r1
	bl _s32_div_f
	mov r1, #4
	add r2, r5, #1
	mvn r1, r1
	mul r1, r2
	add r0, r0, r1
	str r0, [r4, #0x10]
	cmp r5, #2
	bne _021D791C
	ldr r0, [r4, #0x10]
	sub r0, r0, #5
	str r0, [r4, #0x10]
_021D791C:
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #1
	str r0, [r4, #4]
	ldr r1, _021D7958 ; =0x0000010E
	add r0, r7, #0
	bl _u32_div_f
	mov r0, #0xf
	mul r0, r5
	add r0, r1, r0
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _021D795C ; =0xFFFA0000
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	bl ov5_021D630C
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021D78B6
_021D7952:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D7958: .word 0x0000010E
_021D795C: .word 0xFFFA0000
	thumb_func_end ov5_021D78A4

	thumb_func_start ov5_021D7960
ov5_021D7960: ; 0x021D7960
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r4, [r5, #8]
	add r0, sp, #0
	add r1, r5, #0
	bl ov5_021D7010
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D7982
	cmp r0, #1
	beq _021D79D2
	cmp r0, #2
	beq _021D79E4
	add sp, #0xc
	pop {r4, r5, pc}
_021D7982:
	ldr r0, [r4, #0x10]
	ldr r1, [sp]
	lsl r0, r0, #0xd
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [sp, #4]
	lsl r0, r0, #0xd
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, r0, #2
	str r1, [r4, #0]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021D79C6
	bl sub_0201D35C
	mov r1, #0xa
	bl _u32_div_f
	cmp r1, #7
	bhs _021D79B6
	mov r0, #2
	str r0, [r4, #0xc]
	b _021D79C6
_021D79B6:
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #4
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	mov r1, #3
	bl sub_02021E50
_021D79C6:
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl ov5_021D630C
	add sp, #0xc
	pop {r4, r5, pc}
_021D79D2:
	ldr r1, [r4, #0]
	sub r0, r1, #1
	str r0, [r4, #0]
	cmp r1, #0
	bgt _021D79EA
	mov r0, #2
	add sp, #0xc
	str r0, [r4, #0xc]
	pop {r4, r5, pc}
_021D79E4:
	add r0, r5, #0
	bl ov5_021D6FA8
_021D79EA:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D7960

	thumb_func_start ov5_021D79F0
ov5_021D79F0: ; 0x021D79F0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021D7C20 ; =0x00000B98
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021D7AB2
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D7A10: ; jump table
	.short _021D7A1C - _021D7A10 - 2 ; case 0
	.short _021D7A7A - _021D7A10 - 2 ; case 1
	.short _021D7ABC - _021D7A10 - 2 ; case 2
	.short _021D7B2A - _021D7A10 - 2 ; case 3
	.short _021D7B82 - _021D7A10 - 2 ; case 4
	.short _021D7BD6 - _021D7A10 - 2 ; case 5
_021D7A1C:
	mov r2, #1
	str r2, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	sub r0, #0x13
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _021D7C24 ; =ov5_021D7C40
	mov r3, #0x18
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
	ldr r0, _021D7C28 ; =0x0000726F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021D7C2C ; =0x00006B5A
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021D7C30 ; =0x00000BA4
	lsl r2, r2, #2
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	mov r0, #0x10
	add r4, #0xb4
	str r0, [r4, #0]
	ldr r0, _021D7C34 ; =0x00000BA2
	mov r1, #1
	strh r1, [r5, r0]
	b _021D7BF4
_021D7A7A:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D7A9A
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D7BF4
_021D7A9A:
	ldr r2, _021D7C30 ; =0x00000BA4
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl ov5_021D735C
	cmp r0, #1
	bne _021D7AB2
	cmp r6, #3
	beq _021D7AB4
_021D7AB2:
	b _021D7BF4
_021D7AB4:
	ldr r0, _021D7C34 ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D7BF4
_021D7ABC:
	mov r2, #1
	mov r3, #0xe
	str r2, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #0x13
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _021D7C24 ; =ov5_021D7C40
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	ldr r0, _021D7C30 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D7B0E
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D7C28 ; =0x0000726F
	ldr r0, [r0, #0x48]
	ldr r3, _021D7C2C ; =0x00006B5A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov5_021D7384
	add r4, #0x1c
	add r0, r4, #0
	bl ov5_021D74D4
_021D7B0E:
	mov r0, #0x18
	str r0, [sp]
	ldr r0, _021D7C38 ; =ov5_021D7E20
	ldr r1, _021D7C24 ; =ov5_021D7C40
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #2
	bl ov5_021D7568
	ldr r0, _021D7C34 ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D7BF4
_021D7B2A:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021D7B46
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov5_021D7C40
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021D7B46:
	ldr r0, _021D7C3C ; =0x00000BA6
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021D7BF4
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	mov r3, #5
	bl ov5_021D7238
	ldr r0, _021D7C30 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D7B74
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #2
	mov r2, #0
	bl ov5_021D749C
_021D7B74:
	mov r0, #0x20
	add r4, #0xb4
	str r0, [r4, #0]
	ldr r0, _021D7C34 ; =0x00000BA2
	mov r1, #4
	strh r1, [r5, r0]
	b _021D7BF4
_021D7B82:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D7BA2
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D7BF4
_021D7BA2:
	ldr r0, _021D7C30 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D7BB4
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74B8
	b _021D7BB6
_021D7BB4:
	mov r0, #1
_021D7BB6:
	cmp r0, #1
	bne _021D7BF4
	cmp r6, #3
	bne _021D7BF4
	mov r0, #1
	add r4, #0xbc
	str r0, [r4, #0]
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021D7BF4
	ldr r0, _021D7C34 ; =0x00000BA2
	mov r1, #5
	strh r1, [r5, r0]
	b _021D7BF4
_021D7BD6:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D7BEE
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D7BEE:
	ldr r0, [r5, #4]
	bl ov5_021D69B8
_021D7BF4:
	ldr r0, _021D7C34 ; =0x00000BA2
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021D7C1A
	cmp r0, #0
	beq _021D7C1A
	add r0, r5, #0
	ldr r1, _021D7C38 ; =ov5_021D7E20
	add r0, #0xc
	bl ov5_021D6FF0
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov5_021D717C
	add r0, r5, #0
	bl ov5_021D700C
_021D7C1A:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021D7C20: .word 0x00000B98
_021D7C24: .word ov5_021D7C40
_021D7C28: .word 0x0000726F
_021D7C2C: .word 0x00006B5A
_021D7C30: .word 0x00000BA4
_021D7C34: .word 0x00000BA2
_021D7C38: .word ov5_021D7E20
_021D7C3C: .word 0x00000BA6
	thumb_func_end ov5_021D79F0

	thumb_func_start ov5_021D7C40
ov5_021D7C40: ; 0x021D7C40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	ldr r1, _021D7D4C ; =0x00000B98
	str r0, [sp]
	ldr r0, [r0, r1]
	str r0, [sp, #0x10]
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021D7C58
	lsl r7, r7, #1
_021D7C58:
	mov r6, #0
	cmp r7, #0
	ble _021D7D46
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	add r0, #0xb8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r0, [sp, #8]
	add r0, #0xbc
	str r0, [sp, #8]
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	str r0, [sp, #4]
_021D7C76:
	ldr r0, [sp]
	mov r1, #0x28
	bl ov5_021D6F00
	add r4, r0, #0
	beq _021D7D46
	ldr r5, [r4, #8]
	bl sub_0201D35C
	mov r1, #3
	and r1, r0
	lsl r1, r1, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl sub_02021E50
	mov r0, #0xa
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	str r0, [r5, #0x20]
	bl sub_0201D35C
	mov r1, #0x3c
	str r0, [sp, #0x14]
	bl _s32_div_f
	add r0, r1, #4
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	lsr r0, r0, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r0
	mov r1, #0x1f
	ror r2, r1
	add r0, r0, r2
	bne _021D7CC8
	mov r0, #1
	b _021D7CCC
_021D7CC8:
	add r0, r1, #0
	sub r0, #0x20
_021D7CCC:
	str r0, [r5, #4]
	bl sub_0201D35C
	mov r1, #1
	and r0, r1
	add r0, r0, #4
	str r0, [r5, #8]
	bl sub_0201D35C
	mov r1, #1
	and r0, r1
	add r0, r0, #1
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0]
	ldr r0, [sp, #8]
	str r0, [r5, #0x1c]
	bl sub_0201D35C
	ldr r1, _021D7D50 ; =0x0000019E
	bl _u32_div_f
	sub r1, #0x20
	lsl r0, r1, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021D7D24
	ldr r0, [sp, #4]
	cmp r6, r0
	blt _021D7D24
	bl sub_0201D35C
	mov r1, #0x14
	bl _u32_div_f
	mov r0, #0x27
	mvn r0, r0
	sub r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	b _021D7D38
_021D7D24:
	bl sub_0201D35C
	mov r1, #0x14
	bl _u32_div_f
	mov r0, #7
	mvn r0, r0
	sub r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
_021D7D38:
	ldr r0, [r4, #4]
	add r1, sp, #0x18
	bl ov5_021D630C
	add r6, r6, #1
	cmp r6, r7
	blt _021D7C76
_021D7D46:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021D7D4C: .word 0x00000B98
_021D7D50: .word 0x0000019E
	thumb_func_end ov5_021D7C40

	thumb_func_start ov5_021D7D54
ov5_021D7D54: ; 0x021D7D54
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, r5, #0
	bl ov5_021D7010
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _021D7DAA
	ldr r0, [r4, #4]
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, _021D7E18 ; =0xFFFF0000
	and r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	cmp r0, #0xa
	ldr r0, [r4, #8]
	bge _021D7D94
	sub r0, r0, #1
	b _021D7D96
_021D7D94:
	add r0, r0, #1
_021D7D96:
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	cmp r0, #0x14
	blt _021D7DAA
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r1, [r4, #4]
	sub r0, r0, #1
	mul r0, r1
	str r0, [r4, #4]
_021D7DAA:
	ldr r0, [r4, #0x14]
	asr r1, r0, #0x10
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _021D7DC6
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #0x14]
_021D7DC6:
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl ov5_021D630C
	ldr r0, [sp]
	mov r1, #0x64
	asr r0, r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	asr r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	bl _s32_div_f
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x14]
	add r1, r0, #1
	mov r0, #1
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [sp, #4]
	ldr r0, _021D7E1C ; =0xFFFFFEE4
	cmp r1, r0
	bge _021D7E00
	sub r0, #0xc
	cmp r1, r0
	bgt _021D7E08
_021D7E00:
	cmp r1, #0xd4
	ble _021D7E14
	cmp r1, #0xe8
	bge _021D7E14
_021D7E08:
	ldr r0, [r4, #0]
	mov r1, #1
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov5_021D6FA8
_021D7E14:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D7E18: .word 0xFFFF0000
_021D7E1C: .word 0xFFFFFEE4
	thumb_func_end ov5_021D7D54

	thumb_func_start ov5_021D7E20
ov5_021D7E20: ; 0x021D7E20
	push {r3, lr}
	ldr r1, [r0, #8]
	ldr r3, [r1, #0x20]
	ldr r2, [r1, #0x1c]
	cmp r3, #0
	beq _021D7E32
	cmp r3, #1
	beq _021D7E3E
	b _021D7E4C
_021D7E32:
	ldr r2, [r2, #0]
	cmp r2, #1
	bne _021D7E4C
	add r2, r3, #1
	str r2, [r1, #0x20]
	b _021D7E4C
_021D7E3E:
	ldr r2, [r1, #0x24]
	sub r2, r2, #1
	str r2, [r1, #0x24]
	bpl _021D7E4C
	bl ov5_021D6FA8
	pop {r3, pc}
_021D7E4C:
	bl ov5_021D7D54
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D7E20

	thumb_func_start ov5_021D7E54
ov5_021D7E54: ; 0x021D7E54
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021D8078 ; =0x00000B98
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021D7F18
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D7E74: ; jump table
	.short _021D7E80 - _021D7E74 - 2 ; case 0
	.short _021D7EE0 - _021D7E74 - 2 ; case 1
	.short _021D7F22 - _021D7E74 - 2 ; case 2
	.short _021D7F8A - _021D7E74 - 2 ; case 3
	.short _021D7FE2 - _021D7E74 - 2 ; case 4
	.short _021D8030 - _021D7E74 - 2 ; case 5
_021D7E80:
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r2, #1
	ldr r0, _021D807C ; =ov5_021D8098
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r3, #0x1e
	bl ov5_021D7210
	ldr r0, _021D8080 ; =0x00006D6F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021D8084 ; =0x00006318
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021D8088 ; =0x00000BA4
	lsl r2, r2, #2
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	add r0, r4, #0
	mov r1, #8
	add r0, #0xb4
	str r1, [r0, #0]
	mov r0, #0
	add r4, #0xb8
	str r0, [r4, #0]
	ldr r0, _021D808C ; =0x00000BA2
	mov r1, #1
	strh r1, [r5, r0]
	b _021D804E
_021D7EE0:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D7F00
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D804E
_021D7F00:
	ldr r2, _021D8088 ; =0x00000BA4
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl ov5_021D735C
	cmp r0, #1
	bne _021D7F18
	cmp r6, #3
	beq _021D7F1A
_021D7F18:
	b _021D804E
_021D7F1A:
	ldr r0, _021D808C ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D804E
_021D7F22:
	mov r2, #6
	mov r3, #3
	str r2, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021D807C ; =ov5_021D8098
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	ldr r0, _021D8088 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D7F68
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D8080 ; =0x00006D6F
	ldr r0, [r0, #0x48]
	ldr r3, _021D8084 ; =0x00006318
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov5_021D7384
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74D4
_021D7F68:
	mov r0, #0
	add r4, #0xb8
	str r0, [r4, #0]
	mov r0, #3
	str r0, [sp]
	ldr r0, _021D8090 ; =ov5_021D81BC
	ldr r1, _021D807C ; =ov5_021D8098
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #2
	bl ov5_021D7568
	ldr r0, _021D808C ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D804E
_021D7F8A:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021D7FA6
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov5_021D8098
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021D7FA6:
	ldr r0, _021D8094 ; =0x00000BA6
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021D804E
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1e
	mov r3, #5
	bl ov5_021D7238
	ldr r0, _021D8088 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D7FD4
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021D7FD4:
	mov r0, #0
	add r4, #0xb4
	str r0, [r4, #0]
	ldr r0, _021D808C ; =0x00000BA2
	mov r1, #4
	strh r1, [r5, r0]
	b _021D804E
_021D7FE2:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D8002
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D804E
_021D8002:
	ldr r0, _021D8088 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8014
	add r4, #0x1c
	add r0, r4, #0
	bl ov5_021D74B8
	b _021D8016
_021D8014:
	mov r0, #1
_021D8016:
	cmp r0, #1
	bne _021D804E
	cmp r6, #3
	bne _021D804E
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021D804E
	ldr r0, _021D808C ; =0x00000BA2
	mov r1, #5
	strh r1, [r5, r0]
	b _021D804E
_021D8030:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8048
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D8048:
	ldr r0, [r5, #4]
	bl ov5_021D69B8
_021D804E:
	ldr r0, _021D808C ; =0x00000BA2
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021D8074
	cmp r0, #0
	beq _021D8074
	add r0, r5, #0
	ldr r1, _021D8090 ; =ov5_021D81BC
	add r0, #0xc
	bl ov5_021D6FF0
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov5_021D717C
	add r0, r5, #0
	bl ov5_021D700C
_021D8074:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D8078: .word 0x00000B98
_021D807C: .word ov5_021D8098
_021D8080: .word 0x00006D6F
_021D8084: .word 0x00006318
_021D8088: .word 0x00000BA4
_021D808C: .word 0x00000BA2
_021D8090: .word ov5_021D81BC
_021D8094: .word 0x00000BA6
	thumb_func_end ov5_021D7E54

	thumb_func_start ov5_021D8098
ov5_021D8098: ; 0x021D8098
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	ldr r3, _021D81B0 ; =0x021F8CCC
	add r2, sp, #0x48
	str r0, [sp]
	str r1, [sp, #4]
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x10]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021D81B4 ; =0x021F8CBC
	add r2, sp, #0x38
	str r2, [sp, #0x14]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, _021D81B8 ; =0x00000B98
	ldr r0, [sp]
	ldr r6, [r0, r1]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021D81AC
	add r0, r6, #0
	str r0, [sp, #0x18]
	add r0, #0xb8
	str r0, [sp, #0x18]
	mov r0, #7
	mvn r0, r0
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
_021D80DC:
	ldr r0, [sp]
	mov r1, #0x20
	bl ov5_021D6F00
	add r4, r0, #0
	beq _021D81AC
	ldr r0, [sp, #0x18]
	ldr r5, [r4, #8]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0xb8
	ldr r1, [r0, #0]
	mov r0, #0x32
	lsl r0, r0, #4
	cmp r1, r0
	blt _021D810A
	add r1, r6, #0
	add r1, #0xb8
	mov r0, #0
	str r0, [r1, #0]
_021D810A:
	add r0, r6, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	mov r1, #0xc8
	bl _s32_div_f
	lsl r0, r0, #2
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [r1, r0]
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0]
	bl sub_0201D35C
	mov r1, #0x2a
	bl _u32_div_f
	add r0, r1, #4
	str r0, [r5, #4]
	sub r0, r0, #4
	mov r1, #0xf
	bl _s32_div_f
	add r7, r0, #0
	lsl r1, r7, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl sub_02021E50
	add r0, r7, #1
	neg r1, r0
	str r1, [r5, #0x10]
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #8]
	ldr r1, [r2, r1]
	mul r1, r0
	str r1, [r5, #8]
	mov r0, #0
	str r0, [r5, #0xc]
	add r0, sp, #0x20
	add r1, r4, #0
	bl ov5_021D7010
	add r3, sp, #0x20
	ldmia r3!, {r0, r1}
	add r2, sp, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bl sub_0201D35C
	mov r1, #0x69
	lsl r1, r1, #2
	bl _u32_div_f
	mov r0, #1
	sub r2, r0, r7
	sub r0, #0x15
	mul r0, r2
	add r1, r0, r1
	mov r0, #7
	mvn r0, r0
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
	str r1, [sp, #0x2c]
	lsl r0, r1, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x2c
	str r0, [sp, #0x30]
	ldr r0, [r4, #4]
	bl ov5_021D630C
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021D80DC
_021D81AC:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D81B0: .word 0x021F8CCC
_021D81B4: .word 0x021F8CBC
_021D81B8: .word 0x00000B98
	thumb_func_end ov5_021D8098

	thumb_func_start ov5_021D81BC
ov5_021D81BC: ; 0x021D81BC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	ldr r4, [r5, #8]
	bl ov5_021D7010
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D81E6
	cmp r0, #1
	beq _021D8232
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021D81E6:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [r4, #0]
	add r0, r1, #1
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021D820A
	mov r0, #1
	str r0, [r4, #0xc]
_021D820A:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x14]
	bl _s32_div_f
	cmp r1, #0
	bne _021D8226
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	cmp r0, #1
	ble _021D8226
	sub r0, r0, #1
	str r0, [r4, #8]
_021D8226:
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl ov5_021D630C
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021D8232:
	add r0, r5, #0
	bl ov5_021D6FA8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D81BC

	thumb_func_start ov5_021D823C
ov5_021D823C: ; 0x021D823C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021D84AC ; =0x00000B98
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021D830A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D825C: ; jump table
	.short _021D8268 - _021D825C - 2 ; case 0
	.short _021D82D0 - _021D825C - 2 ; case 1
	.short _021D8314 - _021D825C - 2 ; case 2
	.short _021D8384 - _021D825C - 2 ; case 3
	.short _021D83DE - _021D825C - 2 ; case 4
	.short _021D842E - _021D825C - 2 ; case 5
_021D8268:
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r2, #1
	ldr r0, _021D84B0 ; =ov5_021D8098
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r3, #0x1e
	bl ov5_021D7210
	ldr r0, _021D84B4 ; =0x00006F6F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021D84B8 ; =0x00006318
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021D84BC ; =0x00000BA4
	lsl r2, r2, #2
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	add r0, r4, #0
	mov r1, #8
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	ldr r0, _021D84C0 ; =0x00000BA2
	mov r1, #1
	strh r1, [r5, r0]
	b _021D844C
_021D82D0:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D82F2
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0, #0]
	b _021D844C
_021D82F2:
	ldr r2, _021D84BC ; =0x00000BA4
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r1, r4, #0
	add r0, #0x4c
	add r1, #0x1c
	bl ov5_021D735C
	cmp r0, #1
	bne _021D830A
	cmp r6, #3
	beq _021D830C
_021D830A:
	b _021D844C
_021D830C:
	ldr r0, _021D84C0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D844C
_021D8314:
	mov r2, #6
	mov r3, #3
	str r2, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021D84B0 ; =ov5_021D8098
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	ldr r0, _021D84BC ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D835A
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D84B4 ; =0x00006F6F
	ldr r0, [r0, #0x48]
	ldr r3, _021D84B8 ; =0x00006318
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov5_021D7384
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74D4
_021D835A:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	mov r0, #3
	str r0, [sp]
	ldr r0, _021D84C4 ; =ov5_021D81BC
	ldr r1, _021D84B0 ; =ov5_021D8098
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #2
	bl ov5_021D7568
	ldr r0, _021D84C0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D844C
_021D8384:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021D83A0
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov5_021D8098
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021D83A0:
	ldr r0, _021D84C8 ; =0x00000BA6
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021D844C
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1e
	mov r3, #5
	bl ov5_021D7238
	ldr r0, _021D84BC ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D83CE
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021D83CE:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	ldr r0, _021D84C0 ; =0x00000BA2
	mov r1, #4
	strh r1, [r5, r0]
	b _021D844C
_021D83DE:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D8400
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0, #0]
	b _021D844C
_021D8400:
	ldr r0, _021D84BC ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8412
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74B8
	b _021D8414
_021D8412:
	mov r0, #1
_021D8414:
	cmp r0, #1
	bne _021D844C
	cmp r6, #3
	bne _021D844C
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021D844C
	ldr r0, _021D84C0 ; =0x00000BA2
	mov r1, #5
	strh r1, [r5, r0]
	b _021D844C
_021D842E:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8446
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D8446:
	ldr r0, [r5, #4]
	bl ov5_021D69B8
_021D844C:
	ldr r0, _021D84C0 ; =0x00000BA2
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021D84A6
	cmp r0, #0
	beq _021D84A6
	add r0, r5, #0
	ldr r1, _021D84C4 ; =ov5_021D81BC
	add r0, #0xc
	bl ov5_021D6FF0
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov5_021D717C
	add r0, r5, #0
	bl ov5_021D700C
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	add r0, r0, #6
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0xbc
	str r1, [r0, #0]
	add r4, #0xbc
	ldr r1, [r4, #0]
	ldr r0, _021D84CC ; =0x000001FF
	add r2, r1, #0
	neg r1, r1
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _021D84D0 ; =0x04000018
	str r1, [r0, #0]
_021D84A6:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021D84AC: .word 0x00000B98
_021D84B0: .word ov5_021D8098
_021D84B4: .word 0x00006F6F
_021D84B8: .word 0x00006318
_021D84BC: .word 0x00000BA4
_021D84C0: .word 0x00000BA2
_021D84C4: .word ov5_021D81BC
_021D84C8: .word 0x00000BA6
_021D84CC: .word 0x000001FF
_021D84D0: .word 0x04000018
	thumb_func_end ov5_021D823C

	thumb_func_start ov5_021D84D4
ov5_021D84D4: ; 0x021D84D4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r2, _021D8628 ; =0x00000B98
	add r4, r1, #0
	add r0, r2, #0
	add r0, #0xa
	ldrh r0, [r4, r0]
	ldr r5, [r4, r2]
	cmp r0, #5
	bls _021D84EA
	b _021D8622
_021D84EA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D84F6: ; jump table
	.short _021D8502 - _021D84F6 - 2 ; case 0
	.short _021D853A - _021D84F6 - 2 ; case 1
	.short _021D8570 - _021D84F6 - 2 ; case 2
	.short _021D859E - _021D84F6 - 2 ; case 3
	.short _021D85CA - _021D84F6 - 2 ; case 4
	.short _021D8604 - _021D84F6 - 2 ; case 5
_021D8502:
	ldr r0, _021D862C ; =0x0000716F
	add r2, #0xc
	str r0, [sp]
	ldr r0, _021D8630 ; =0x00006B5A
	add r1, r5, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrh r0, [r4, r2]
	mov r2, #0x41
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4, #0]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x30
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	mov r0, #0x10
	add r5, #0x98
	str r0, [r5, #0]
	ldr r0, _021D8634 ; =0x00000BA2
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D853A:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D8554
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r5, #0x98
	sub r0, r0, #1
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D8554:
	add r2, #0xc
	ldrh r2, [r4, r2]
	add r0, r5, #0
	add r0, #0x30
	add r1, r5, #0
	bl ov5_021D735C
	cmp r0, #1
	bne _021D8622
	ldr r0, _021D8634 ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D8570:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021D8594
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D862C ; =0x0000716F
	ldr r0, [r0, #0x48]
	ldr r3, _021D8630 ; =0x00006B5A
	mov r1, #3
	str r0, [r5, #0]
	bl ov5_021D7384
	add r0, r5, #0
	bl ov5_021D74D4
_021D8594:
	ldr r0, _021D8634 ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D859E:
	add r0, r2, #0
	add r0, #0xe
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021D8622
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021D85BA
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ov5_021D749C
_021D85BA:
	mov r0, #0x10
	add r5, #0x98
	str r0, [r5, #0]
	ldr r0, _021D8634 ; =0x00000BA2
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D85CA:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D85E4
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r5, #0x98
	sub r0, r0, #1
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D85E4:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021D85F4
	add r0, r5, #0
	bl ov5_021D74B8
	b _021D85F6
_021D85F4:
	mov r0, #1
_021D85F6:
	cmp r0, #1
	bne _021D8622
	ldr r0, _021D8634 ; =0x00000BA2
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D8604:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021D861C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D861C:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021D8622:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D8628: .word 0x00000B98
_021D862C: .word 0x0000716F
_021D8630: .word 0x00006B5A
_021D8634: .word 0x00000BA2
	thumb_func_end ov5_021D84D4

	thumb_func_start ov5_021D8638
ov5_021D8638: ; 0x021D8638
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r2, _021D878C ; =0x00000B98
	add r4, r1, #0
	add r0, r2, #0
	add r0, #0xa
	ldrh r0, [r4, r0]
	ldr r5, [r4, r2]
	cmp r0, #5
	bls _021D864E
	b _021D8786
_021D864E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D865A: ; jump table
	.short _021D8666 - _021D865A - 2 ; case 0
	.short _021D869E - _021D865A - 2 ; case 1
	.short _021D86D4 - _021D865A - 2 ; case 2
	.short _021D8702 - _021D865A - 2 ; case 3
	.short _021D872E - _021D865A - 2 ; case 4
	.short _021D8768 - _021D865A - 2 ; case 5
_021D8666:
	ldr r0, _021D8790 ; =0x0000658F
	add r2, #0xc
	str r0, [sp]
	ldr r0, _021D8794 ; =0x00006B5A
	add r1, r5, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrh r0, [r4, r2]
	mov r2, #0x41
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4, #0]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x30
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	mov r0, #0x10
	add r5, #0x98
	str r0, [r5, #0]
	ldr r0, _021D8798 ; =0x00000BA2
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D869E:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D86B8
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r5, #0x98
	sub r0, r0, #1
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D86B8:
	add r2, #0xc
	ldrh r2, [r4, r2]
	add r0, r5, #0
	add r0, #0x30
	add r1, r5, #0
	bl ov5_021D735C
	cmp r0, #1
	bne _021D8786
	ldr r0, _021D8798 ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D86D4:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021D86F8
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D8790 ; =0x0000658F
	ldr r0, [r0, #0x48]
	ldr r3, _021D8794 ; =0x00006B5A
	mov r1, #3
	str r0, [r5, #0]
	bl ov5_021D7384
	add r0, r5, #0
	bl ov5_021D74D4
_021D86F8:
	ldr r0, _021D8798 ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D8702:
	add r0, r2, #0
	add r0, #0xe
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021D8786
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021D871E
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ov5_021D749C
_021D871E:
	mov r0, #0x10
	add r5, #0x98
	str r0, [r5, #0]
	ldr r0, _021D8798 ; =0x00000BA2
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D872E:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D8748
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r5, #0x98
	sub r0, r0, #1
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D8748:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021D8758
	add r0, r5, #0
	bl ov5_021D74B8
	b _021D875A
_021D8758:
	mov r0, #1
_021D875A:
	cmp r0, #1
	bne _021D8786
	ldr r0, _021D8798 ; =0x00000BA2
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D8768:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021D8780
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D8780:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021D8786:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D878C: .word 0x00000B98
_021D8790: .word 0x0000658F
_021D8794: .word 0x00006B5A
_021D8798: .word 0x00000BA2
	thumb_func_end ov5_021D8638

	thumb_func_start ov5_021D879C
ov5_021D879C: ; 0x021D879C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _021D8934 ; =0x00000B98
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bls _021D87B2
	b _021D8930
_021D87B2:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D87BE: ; jump table
	.short _021D87CA - _021D87BE - 2 ; case 0
	.short _021D8828 - _021D87BE - 2 ; case 1
	.short _021D8856 - _021D87BE - 2 ; case 2
	.short _021D88A4 - _021D87BE - 2 ; case 3
	.short _021D88D8 - _021D87BE - 2 ; case 4
	.short _021D8912 - _021D87BE - 2 ; case 5
_021D87CA:
	ldr r1, _021D8938 ; =0x00007A0F
	mov r2, #0x41
	str r1, [sp]
	ldr r1, _021D893C ; =0x00007FFF
	add r0, #0xc
	str r1, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	ldrh r0, [r4, r0]
	add r1, r5, #0
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4, #0]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x44
	ldr r2, [r2, #0x48]
	add r1, #0x14
	mov r3, #5
	bl ov5_021D7308
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0x1e
	bl ov5_021D64FC
	mov r0, #0
	mov r1, #0x10
	bl ov5_021D64E4
	ldr r1, _021D8940 ; =0x0400000C
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #3
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021D8944 ; =0x00000BA2
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D8828:
	add r0, r5, #0
	add r0, #0x14
	bl ov5_021D74B8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021D650C
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, #1
	bne _021D8930
	cmp r7, #1
	bne _021D8930
	ldr r0, _021D8944 ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D8856:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D887C
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D8938 ; =0x00007A0F
	ldr r0, [r0, #0x48]
	ldr r3, _021D893C ; =0x00007FFF
	mov r1, #5
	str r0, [r5, #0x14]
	bl ov5_021D7384
	add r5, #0x14
	add r0, r5, #0
	bl ov5_021D74D4
_021D887C:
	mov r0, #0x10
	mov r1, #0
	bl ov5_021D64E4
	ldr r1, _021D8940 ; =0x0400000C
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #3
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021D8944 ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D88A4:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r4, r1]
	cmp r1, #5
	bne _021D8930
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D88C2
	add r0, r5, #0
	add r0, #0x14
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021D88C2:
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x1e
	bl ov5_021D64FC
	ldr r0, _021D8944 ; =0x00000BA2
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D88D8:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D88EC
	add r0, r5, #0
	add r0, #0x14
	bl ov5_021D74B8
	add r6, r0, #0
	b _021D88EE
_021D88EC:
	mov r6, #1
_021D88EE:
	add r0, r5, #0
	bl ov5_021D650C
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, #1
	bne _021D8930
	cmp r7, #1
	bne _021D8930
	ldr r0, _021D8944 ; =0x00000BA2
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D8912:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D892A
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D892A:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021D8930:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D8934: .word 0x00000B98
_021D8938: .word 0x00007A0F
_021D893C: .word 0x00007FFF
_021D8940: .word 0x0400000C
_021D8944: .word 0x00000BA2
	thumb_func_end ov5_021D879C

	thumb_func_start ov5_021D8948
ov5_021D8948: ; 0x021D8948
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021D8B68 ; =0x00000B98
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021D8A0A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D8968: ; jump table
	.short _021D8974 - _021D8968 - 2 ; case 0
	.short _021D89D2 - _021D8968 - 2 ; case 1
	.short _021D8A14 - _021D8968 - 2 ; case 2
	.short _021D8A78 - _021D8968 - 2 ; case 3
	.short _021D8AD0 - _021D8968 - 2 ; case 4
	.short _021D8B1E - _021D8968 - 2 ; case 5
_021D8974:
	mov r0, #8
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	sub r0, r2, #3
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D8B6C ; =ov5_021D8B88
	mov r3, #0xf
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	ldr r0, _021D8B70 ; =0x00006EEF
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021D8B74 ; =0x0000169A
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021D8B78 ; =0x00000BA4
	add r1, r4, #0
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	add r4, #0xb8
	str r1, [r4, #0]
	ldr r0, _021D8B7C ; =0x00000BA2
	mov r1, #1
	strh r1, [r5, r0]
	b _021D8B3C
_021D89D2:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D89F2
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D8B3C
_021D89F2:
	ldr r2, _021D8B78 ; =0x00000BA4
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl ov5_021D735C
	cmp r0, #1
	bne _021D8A0A
	cmp r6, #3
	beq _021D8A0C
_021D8A0A:
	b _021D8B3C
_021D8A0C:
	ldr r0, _021D8B7C ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D8B3C
_021D8A14:
	mov r2, #8
	mov r3, #1
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #3
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D8B6C ; =ov5_021D8B88
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	ldr r0, _021D8B78 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8A58
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D8B70 ; =0x00006EEF
	ldr r0, [r0, #0x48]
	ldr r3, _021D8B74 ; =0x0000169A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov5_021D7384
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74D4
_021D8A58:
	mov r0, #0
	add r4, #0xb8
	str r0, [r4, #0]
	mov r3, #2
	ldr r0, _021D8B80 ; =ov5_021D8C90
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _021D8B6C ; =ov5_021D8B88
	add r0, r5, #0
	mov r2, #0x18
	bl ov5_021D7568
	ldr r0, _021D8B7C ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D8B3C
_021D8A78:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021D8A94
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov5_021D8B88
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021D8A94:
	ldr r0, _021D8B84 ; =0x00000BA6
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021D8B3C
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf
	mov r3, #2
	bl ov5_021D7238
	ldr r0, _021D8B78 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8AC2
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021D8AC2:
	mov r0, #0x1f
	add r4, #0xb4
	str r0, [r4, #0]
	ldr r0, _021D8B7C ; =0x00000BA2
	mov r1, #4
	strh r1, [r5, r0]
	b _021D8B3C
_021D8AD0:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D8AF0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D8B3C
_021D8AF0:
	ldr r0, _021D8B78 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8B02
	add r4, #0x1c
	add r0, r4, #0
	bl ov5_021D74B8
	b _021D8B04
_021D8B02:
	mov r0, #1
_021D8B04:
	cmp r0, #1
	bne _021D8B3C
	cmp r6, #3
	bne _021D8B3C
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021D8B3C
	ldr r0, _021D8B7C ; =0x00000BA2
	mov r1, #5
	strh r1, [r5, r0]
	b _021D8B3C
_021D8B1E:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8B36
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D8B36:
	ldr r0, [r5, #4]
	bl ov5_021D69B8
_021D8B3C:
	ldr r0, _021D8B7C ; =0x00000BA2
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021D8B62
	cmp r0, #0
	beq _021D8B62
	add r0, r5, #0
	ldr r1, _021D8B80 ; =ov5_021D8C90
	add r0, #0xc
	bl ov5_021D6FF0
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov5_021D717C
	add r0, r5, #0
	bl ov5_021D700C
_021D8B62:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021D8B68: .word 0x00000B98
_021D8B6C: .word ov5_021D8B88
_021D8B70: .word 0x00006EEF
_021D8B74: .word 0x0000169A
_021D8B78: .word 0x00000BA4
_021D8B7C: .word 0x00000BA2
_021D8B80: .word ov5_021D8C90
_021D8B84: .word 0x00000BA6
	thumb_func_end ov5_021D8948

	thumb_func_start ov5_021D8B88
ov5_021D8B88: ; 0x021D8B88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	ldr r1, _021D8C7C ; =0x00000B98
	str r0, [sp]
	ldr r4, [r0, r1]
	mov r1, #5
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	lsl r1, r1, #6
	add r0, r0, #1
	bl _s32_div_f
	add r0, r4, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r4, #0xb8
	ldr r0, [r4, #0]
	mov r1, #0x28
	bl _s32_div_f
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, [sp, #4]
	cmp r1, #0
	ble _021D8C76
	lsl r6, r0, #2
_021D8BC0:
	ldr r0, [sp]
	mov r1, #0x20
	bl ov5_021D6F00
	add r4, r0, #0
	beq _021D8C76
	ldr r5, [r4, #8]
	mov r0, #0
	str r0, [r5, #0]
	bl sub_0201D35C
	mov r1, #0x14
	bl _u32_div_f
	add r1, #0xf
	str r1, [r5, #4]
	sub r1, #0xf
	add r0, r1, #0
	mov r1, #6
	bl _s32_div_f
	mov r1, #3
	sub r7, r1, r0
	ldr r1, _021D8C80 ; =0x021F8D70
	add r0, r7, #1
	ldr r1, [r1, r6]
	mul r1, r0
	str r1, [r5, #8]
	ldr r1, _021D8C84 ; =0x021F8D30
	ldr r1, [r1, r6]
	mul r1, r0
	str r1, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, _021D8C84 ; =0x021F8D30
	ldr r0, [r0, r6]
	str r0, [r5, #0x14]
	bl sub_0201D35C
	mov r1, #0xfa
	lsl r1, r1, #2
	bl _u32_div_f
	ldr r0, _021D8C88 ; =0x00000309
	cmp r1, r0
	bne _021D8C2A
	ldr r1, [r5, #8]
	mov r7, #4
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, r1, r0
	str r0, [r5, #8]
_021D8C2A:
	lsl r1, r7, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl sub_02021E50
	add r0, sp, #0xc
	add r1, r4, #0
	bl ov5_021D7010
	bl sub_0201D35C
	mov r1, #0x18
	bl _u32_div_f
	ldr r0, _021D8C8C ; =0x00000106
	add r0, r1, r0
	str r0, [sp, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	bl sub_0201D35C
	mov r1, #0xc0
	bl _u32_div_f
	sub r1, #0x40
	str r1, [sp, #0x10]
	lsl r0, r1, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, sp, #0xc
	bl ov5_021D630C
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021D8BC0
_021D8C76:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D8C7C: .word 0x00000B98
_021D8C80: .word 0x021F8D70
_021D8C84: .word 0x021F8D30
_021D8C88: .word 0x00000309
_021D8C8C: .word 0x00000106
	thumb_func_end ov5_021D8B88

	thumb_func_start ov5_021D8C90
ov5_021D8C90: ; 0x021D8C90
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	ldr r4, [r5, #8]
	bl ov5_021D7010
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D8CBA
	cmp r0, #1
	beq _021D8CFE
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021D8CBA:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	mov r1, #5
	bl _s32_div_f
	cmp r1, #0
	bne _021D8CE2
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x10]
_021D8CE2:
	ldr r1, [r4, #0]
	add r0, r1, #1
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021D8CF2
	mov r0, #1
	str r0, [r4, #0xc]
_021D8CF2:
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl ov5_021D630C
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021D8CFE:
	add r0, r5, #0
	bl ov5_021D6FA8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D8C90

	thumb_func_start ov5_021D8D08
ov5_021D8D08: ; 0x021D8D08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r0, _021D8FCC ; =0x00000B98
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021D8DDA
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D8D28: ; jump table
	.short _021D8D34 - _021D8D28 - 2 ; case 0
	.short _021D8DA0 - _021D8D28 - 2 ; case 1
	.short _021D8DEC - _021D8D28 - 2 ; case 2
	.short _021D8E66 - _021D8D28 - 2 ; case 3
	.short _021D8EFA - _021D8D28 - 2 ; case 4
	.short _021D8F48 - _021D8D28 - 2 ; case 5
_021D8D34:
	mov r0, #8
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	sub r0, r2, #3
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D8FD0 ; =ov5_021D8B88
	mov r3, #0xf
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	ldr r0, _021D8FD4 ; =0x00006EEF
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021D8FD8 ; =0x0000169A
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021D8FDC ; =0x00000BA4
	add r1, r4, #0
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	ldr r0, _021D8FE0 ; =0x00000BA2
	mov r1, #1
	strh r1, [r5, r0]
	b _021D8F66
_021D8DA0:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D8DC2
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0, #0]
	b _021D8F66
_021D8DC2:
	ldr r2, _021D8FDC ; =0x00000BA4
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r1, r4, #0
	add r0, #0x4c
	add r1, #0x1c
	bl ov5_021D735C
	cmp r0, #1
	bne _021D8DDA
	cmp r6, #3
	beq _021D8DDC
_021D8DDA:
	b _021D8F66
_021D8DDC:
	ldr r0, _021D8FE0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	b _021D8F66
_021D8DEC:
	mov r2, #8
	mov r3, #1
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #3
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D8FD0 ; =ov5_021D8B88
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	ldr r0, _021D8FDC ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8E30
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D8FD4 ; =0x00006EEF
	ldr r0, [r0, #0x48]
	ldr r3, _021D8FD8 ; =0x0000169A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov5_021D7384
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74D4
_021D8E30:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	mov r3, #2
	ldr r0, _021D8FE4 ; =ov5_021D8C90
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _021D8FD0 ; =ov5_021D8B88
	add r0, r5, #0
	mov r2, #0x18
	bl ov5_021D7568
	ldr r0, _021D8FE0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	b _021D8F66
_021D8E66:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021D8EB6
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	mov r1, #0x28
	bl _s32_div_f
	lsl r1, r0, #2
	ldr r0, _021D8FE8 ; =0x021F8D10
	ldr r1, [r0, r1]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	mov r0, #5
	mvn r0, r0
	cmp r1, r0
	bgt _021D8EA6
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #1
	bl ov5_021D8B88
	b _021D8EB0
_021D8EA6:
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov5_021D8B88
_021D8EB0:
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021D8EB6:
	ldr r0, _021D8FEC ; =0x00000BA6
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021D8F66
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf
	mov r3, #2
	bl ov5_021D7238
	ldr r0, _021D8FDC ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8EE4
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021D8EE4:
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0xb4
	str r1, [r0, #0]
	ldr r1, _021D8FE0 ; =0x00000BA2
	mov r0, #4
	strh r0, [r5, r1]
	mov r1, #0
	bl sub_0201FF0C
	b _021D8F66
_021D8EFA:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D8F1C
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0, #0]
	b _021D8F66
_021D8F1C:
	ldr r0, _021D8FDC ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8F2E
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74B8
	add r7, r0, #0
_021D8F2E:
	cmp r7, #1
	bne _021D8F66
	cmp r6, #3
	bne _021D8F66
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021D8F66
	ldr r0, _021D8FE0 ; =0x00000BA2
	mov r1, #5
	strh r1, [r5, r0]
	b _021D8F66
_021D8F48:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D8F60
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D8F60:
	ldr r0, [r5, #4]
	bl ov5_021D69B8
_021D8F66:
	ldr r0, _021D8FE0 ; =0x00000BA2
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021D8FC8
	cmp r0, #0
	beq _021D8FC8
	add r0, r5, #0
	ldr r1, _021D8FE4 ; =ov5_021D8C90
	add r0, #0xc
	bl ov5_021D6FF0
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov5_021D717C
	add r0, r5, #0
	bl ov5_021D700C
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	add r0, r0, #6
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0xbc
	str r1, [r0, #0]
	add r4, #0xbc
	ldr r3, [r4, #0]
	ldr r0, [sp, #0x1c]
	lsl r1, r3, #1
	sub r1, r1, r0
	add r2, r1, #0
	ldr r1, [sp, #0x18]
	ldr r0, _021D8FF0 ; =0x000001FF
	sub r1, r1, r3
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _021D8FF4 ; =0x04000018
	str r1, [r0, #0]
_021D8FC8:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D8FCC: .word 0x00000B98
_021D8FD0: .word ov5_021D8B88
_021D8FD4: .word 0x00006EEF
_021D8FD8: .word 0x0000169A
_021D8FDC: .word 0x00000BA4
_021D8FE0: .word 0x00000BA2
_021D8FE4: .word ov5_021D8C90
_021D8FE8: .word 0x021F8D10
_021D8FEC: .word 0x00000BA6
_021D8FF0: .word 0x000001FF
_021D8FF4: .word 0x04000018
	thumb_func_end ov5_021D8D08

	thumb_func_start ov5_021D8FF8
ov5_021D8FF8: ; 0x021D8FF8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021D9298 ; =0x00000B98
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021D90C6
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D9018: ; jump table
	.short _021D9024 - _021D9018 - 2 ; case 0
	.short _021D908C - _021D9018 - 2 ; case 1
	.short _021D90D8 - _021D9018 - 2 ; case 2
	.short _021D914C - _021D9018 - 2 ; case 3
	.short _021D91D4 - _021D9018 - 2 ; case 4
	.short _021D9224 - _021D9018 - 2 ; case 5
_021D9024:
	mov r0, #0xa
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	sub r0, r2, #5
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	ldr r0, _021D929C ; =ov5_021D92C4
	mov r3, #0x1e
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	ldr r0, _021D92A0 ; =0x00006B6F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021D92A4 ; =0x00006318
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021D92A8 ; =0x00000BA4
	add r1, r4, #0
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	ldr r0, _021D92AC ; =0x00000BA2
	mov r1, #1
	strh r1, [r5, r0]
	b _021D9242
_021D908C:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D90AE
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0, #0]
	b _021D9242
_021D90AE:
	ldr r2, _021D92A8 ; =0x00000BA4
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r1, r4, #0
	add r0, #0x4c
	add r1, #0x1c
	bl ov5_021D735C
	cmp r0, #1
	bne _021D90C6
	cmp r6, #3
	beq _021D90C8
_021D90C6:
	b _021D9242
_021D90C8:
	ldr r0, _021D92AC ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	b _021D9242
_021D90D8:
	mov r2, #0xa
	mov r3, #1
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #5
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	ldr r0, _021D929C ; =ov5_021D92C4
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	ldr r0, _021D92A8 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D911C
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D92A0 ; =0x00006B6F
	ldr r0, [r0, #0x48]
	ldr r3, _021D92A4 ; =0x00006318
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov5_021D7384
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74D4
_021D911C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	mov r3, #2
	ldr r0, _021D92B0 ; =ov5_021D93DC
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _021D929C ; =ov5_021D92C4
	add r0, r5, #0
	mov r2, #0x14
	bl ov5_021D7568
	ldr r0, _021D92AC ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	b _021D9242
_021D914C:
	mov r1, #6
	ldrsh r2, [r4, r1]
	sub r0, r2, #1
	strh r0, [r4, #6]
	cmp r2, #0
	bgt _021D9190
	add r0, r4, #0
	add r0, #0xb8
	ldr r2, [r0, #0]
	sub r1, #0xe
	asr r0, r2, #8
	lsr r0, r0, #0x17
	add r0, r2, r0
	asr r0, r0, #9
	lsl r2, r0, #2
	ldr r0, _021D92B4 ; =0x021F8CDC
	ldr r0, [r0, r2]
	cmp r0, r1
	bgt _021D9180
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #1
	bl ov5_021D92C4
	b _021D918A
_021D9180:
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov5_021D92C4
_021D918A:
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021D9190:
	ldr r0, _021D92B8 ; =0x00000BA6
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021D9242
	mov r0, #3
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	mov r3, #4
	bl ov5_021D7238
	ldr r0, _021D92A8 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D91BE
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021D91BE:
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0xb4
	str r1, [r0, #0]
	ldr r1, _021D92AC ; =0x00000BA2
	mov r0, #4
	strh r0, [r5, r1]
	mov r1, #0
	bl sub_0201FF0C
	b _021D9242
_021D91D4:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D91F6
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0, #0]
	b _021D9242
_021D91F6:
	ldr r0, _021D92A8 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D9208
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74B8
	b _021D920A
_021D9208:
	mov r0, #1
_021D920A:
	cmp r0, #1
	bne _021D9242
	cmp r6, #3
	bne _021D9242
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021D9242
	ldr r0, _021D92AC ; =0x00000BA2
	mov r1, #5
	strh r1, [r5, r0]
	b _021D9242
_021D9224:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D923C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D923C:
	ldr r0, [r5, #4]
	bl ov5_021D69B8
_021D9242:
	ldr r0, _021D92AC ; =0x00000BA2
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021D9294
	cmp r0, #0
	beq _021D9294
	add r0, r5, #0
	ldr r1, _021D92B0 ; =ov5_021D93DC
	add r0, #0xc
	bl ov5_021D6FF0
	add r0, r5, #0
	bl ov5_021D700C
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	add r0, #0xc
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0xbc
	str r1, [r0, #0]
	add r4, #0xbc
	ldr r3, [r4, #0]
	ldr r0, _021D92BC ; =0x000001FF
	lsl r1, r3, #1
	add r2, r1, #0
	neg r1, r3
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _021D92C0 ; =0x04000018
	str r1, [r0, #0]
_021D9294:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D9298: .word 0x00000B98
_021D929C: .word ov5_021D92C4
_021D92A0: .word 0x00006B6F
_021D92A4: .word 0x00006318
_021D92A8: .word 0x00000BA4
_021D92AC: .word 0x00000BA2
_021D92B0: .word ov5_021D93DC
_021D92B4: .word 0x021F8CDC
_021D92B8: .word 0x00000BA6
_021D92BC: .word 0x000001FF
_021D92C0: .word 0x04000018
	thumb_func_end ov5_021D8FF8

	thumb_func_start ov5_021D92C4
ov5_021D92C4: ; 0x021D92C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r2, _021D93D0 ; =0x00000B98
	str r0, [sp]
	ldr r0, [r0, r2]
	add r2, r0, #0
	add r2, #0xb8
	ldr r2, [r2, #0]
	add r3, r2, #1
	add r2, r0, #0
	add r2, #0xb8
	str r3, [r2, #0]
	add r2, r0, #0
	add r2, #0xb8
	ldr r3, [r2, #0]
	mov r2, #2
	lsl r2, r2, #0xa
	cmp r3, r2
	blt _021D92F2
	add r2, r0, #0
	mov r3, #0
	add r2, #0xb8
	str r3, [r2, #0]
_021D92F2:
	add r0, #0xb8
	ldr r2, [r0, #0]
	asr r0, r2, #8
	lsr r0, r0, #0x17
	add r0, r2, r0
	asr r2, r0, #9
	mov r0, #0
	str r0, [sp, #8]
	lsl r0, r1, #2
	str r0, [sp, #4]
	cmp r0, #0
	ble _021D93CA
	lsl r4, r2, #2
_021D930C:
	ldr r0, [sp]
	mov r1, #0x20
	bl ov5_021D6F00
	add r6, r0, #0
	beq _021D93CA
	ldr r5, [r6, #8]
	mov r0, #0
	str r0, [r5, #0]
	bl sub_0201D35C
	mov r1, #6
	bl _u32_div_f
	add r1, #0x12
	str r1, [r5, #4]
	bl sub_0201D35C
	add r7, r0, #0
	mov r1, #3
	and r7, r1
	lsl r1, r7, #0x10
	ldr r0, [r6, #4]
	lsr r1, r1, #0x10
	bl sub_02021E50
	ldr r1, _021D93D4 ; =0x021F8CDC
	add r0, r7, #1
	ldr r1, [r1, r4]
	mul r1, r0
	str r1, [r5, #0x10]
	ldr r1, _021D93D8 ; =0x021F8CEC
	ldr r1, [r1, r4]
	mul r1, r0
	mov r0, #0
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	cmp r7, #3
	bne _021D936E
	ldr r0, _021D93D4 ; =0x021F8CDC
	ldr r1, [r5, #0x10]
	ldr r0, [r0, r4]
	add r0, r1, r0
	str r0, [r5, #0x10]
	ldr r0, _021D93D8 ; =0x021F8CEC
	ldr r1, [r5, #8]
	ldr r0, [r0, r4]
	add r0, r1, r0
	str r0, [r5, #8]
_021D936E:
	ldr r0, _021D93D4 ; =0x021F8CDC
	add r1, r6, #0
	ldr r0, [r0, r4]
	str r0, [r5, #0x14]
	add r0, sp, #0xc
	bl ov5_021D7010
	add r3, sp, #0xc
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bl sub_0201D35C
	mov r1, #0x18
	bl _u32_div_f
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #0x18]
	bl sub_0201D35C
	mov r1, #0xa8
	bl _u32_div_f
	ldr r0, [sp, #0x18]
	sub r1, #0x20
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	lsl r0, r1, #0xc
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r6, #4]
	add r1, sp, #0x18
	bl ov5_021D630C
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021D930C
_021D93CA:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021D93D0: .word 0x00000B98
_021D93D4: .word 0x021F8CDC
_021D93D8: .word 0x021F8CEC
	thumb_func_end ov5_021D92C4

	thumb_func_start ov5_021D93DC
ov5_021D93DC: ; 0x021D93DC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	ldr r4, [r5, #8]
	bl ov5_021D7010
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D9406
	cmp r0, #1
	beq _021D9458
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021D9406:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [r4, #0]
	add r0, r1, #1
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021D942A
	mov r0, #1
	str r0, [r4, #0xc]
_021D942A:
	ldr r0, [r4, #0]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	bne _021D944C
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	cmp r0, #1
	ble _021D944C
	sub r0, r0, #1
	str r0, [r4, #8]
_021D944C:
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl ov5_021D630C
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021D9458:
	add r0, r5, #0
	bl ov5_021D6FA8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D93DC

	thumb_func_start ov5_021D9464
ov5_021D9464: ; 0x021D9464
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021D9670 ; =0x00000B98
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021D951E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D9484: ; jump table
	.short _021D9490 - _021D9484 - 2 ; case 0
	.short _021D94E6 - _021D9484 - 2 ; case 1
	.short _021D9528 - _021D9484 - 2 ; case 2
	.short _021D9586 - _021D9484 - 2 ; case 3
	.short _021D95DE - _021D9484 - 2 ; case 4
	.short _021D9628 - _021D9484 - 2 ; case 5
_021D9490:
	mov r0, #0x14
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	sub r0, r2, #4
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _021D9674 ; =ov5_021D9690
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r3, #0x10
	bl ov5_021D7210
	ldr r0, _021D9678 ; =0x0000716F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021D967C ; =0x00006B5A
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021D9680 ; =0x00000BA4
	add r1, r4, #0
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	mov r0, #0
	add r4, #0xb4
	str r0, [r4, #0]
	ldr r0, _021D9684 ; =0x00000BA2
	mov r1, #1
	strh r1, [r5, r0]
	b _021D9646
_021D94E6:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D9506
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D9646
_021D9506:
	ldr r2, _021D9680 ; =0x00000BA4
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl ov5_021D735C
	cmp r0, #1
	bne _021D951E
	cmp r6, #3
	beq _021D9520
_021D951E:
	b _021D9646
_021D9520:
	ldr r0, _021D9684 ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D9646
_021D9528:
	mov r2, #0x14
	mov r3, #2
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #4
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _021D9674 ; =ov5_021D9690
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	ldr r0, _021D9680 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D956A
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D9678 ; =0x0000716F
	ldr r0, [r0, #0x48]
	ldr r3, _021D967C ; =0x00006B5A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov5_021D7384
	add r4, #0x1c
	add r0, r4, #0
	bl ov5_021D74D4
_021D956A:
	mov r0, #1
	str r0, [sp]
	ldr r0, _021D9688 ; =ov5_021D97C0
	ldr r1, _021D9674 ; =ov5_021D9690
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #0xa
	bl ov5_021D7568
	ldr r0, _021D9684 ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	b _021D9646
_021D9586:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021D95A2
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov5_021D9690
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021D95A2:
	ldr r0, _021D968C ; =0x00000BA6
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021D9646
	mov r0, #9
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #6
	bl ov5_021D7238
	ldr r0, _021D9680 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D95D0
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021D95D0:
	mov r0, #0x14
	add r4, #0xb4
	str r0, [r4, #0]
	ldr r0, _021D9684 ; =0x00000BA2
	mov r1, #4
	strh r1, [r5, r0]
	b _021D9646
_021D95DE:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D95FE
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D9646
_021D95FE:
	ldr r2, _021D9680 ; =0x00000BA4
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl ov5_021D735C
	cmp r0, #1
	bne _021D9646
	cmp r6, #3
	bne _021D9646
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021D9646
	ldr r0, _021D9684 ; =0x00000BA2
	mov r1, #5
	strh r1, [r5, r0]
	b _021D9646
_021D9628:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D9640
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D9640:
	ldr r0, [r5, #4]
	bl ov5_021D69B8
_021D9646:
	ldr r0, _021D9684 ; =0x00000BA2
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021D966C
	cmp r0, #0
	beq _021D966C
	add r0, r5, #0
	ldr r1, _021D9688 ; =ov5_021D97C0
	add r0, #0xc
	bl ov5_021D6FF0
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov5_021D717C
	add r0, r5, #0
	bl ov5_021D700C
_021D966C:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D9670: .word 0x00000B98
_021D9674: .word ov5_021D9690
_021D9678: .word 0x0000716F
_021D967C: .word 0x00006B5A
_021D9680: .word 0x00000BA4
_021D9684: .word 0x00000BA2
_021D9688: .word ov5_021D97C0
_021D968C: .word 0x00000BA6
	thumb_func_end ov5_021D9464

	thumb_func_start ov5_021D9690
ov5_021D9690: ; 0x021D9690
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r1, #0
	str r1, [sp, #4]
	cmp r0, #0
	bgt _021D96A4
	b _021D97BC
_021D96A4:
	ldr r0, [sp]
	mov r1, #0x20
	bl ov5_021D6F00
	add r4, r0, #0
	bne _021D96B2
	b _021D97BC
_021D96B2:
	ldr r5, [r4, #8]
	mov r0, #0
	str r0, [r5, #0]
	bl sub_0201D35C
	mov r1, #5
	bl _u32_div_f
	add r0, r1, #7
	str r0, [r5, #4]
	bl sub_0201D35C
	mov r1, #0xfa
	lsl r1, r1, #2
	bl _u32_div_f
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _021D96E4
	mov r0, #1
	b _021D96E8
_021D96E4:
	mov r0, #0
	mvn r0, r0
_021D96E8:
	str r0, [r5, #8]
	mov r0, #1
	str r0, [r5, #0xc]
	bl sub_0201D35C
	mov r1, #6
	bl _u32_div_f
	add r0, r1, #3
	str r0, [r5, #0x10]
	bl sub_0201D35C
	mov r1, #5
	bl _u32_div_f
	add r0, r1, #4
	str r0, [r5, #0x14]
	bl sub_0201D35C
	mov r1, #0x14
	bl _u32_div_f
	str r1, [sp, #8]
	add r0, sp, #0x10
	add r1, r4, #0
	bl ov5_021D7010
	bl sub_0201D35C
	mov r1, #6
	lsl r1, r1, #6
	bl _u32_div_f
	sub r1, #0x40
	str r1, [sp, #0x10]
	bl sub_0201D35C
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x10]
	sub r1, #8
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	lsl r0, r1, #0xc
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	bl ov5_021D630C
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	asr r1, r1, #0xc
	asr r0, r0, #0xc
	str r1, [sp, #0x14]
	mov r1, #3
	str r0, [sp, #0x10]
	bl _s32_div_f
	mov r1, #0x32
	sub r6, r1, r0
	mov r1, #0xce
	sub r7, r1, r0
	bpl _021D977A
	bl sub_0201D35C
	neg r1, r7
	bl _u32_div_f
	sub r1, r6, r1
	b _021D9786
_021D977A:
	bl sub_0201D35C
	add r1, r7, #0
	bl _u32_div_f
	add r1, r6, r1
_021D9786:
	ldr r0, [sp, #0x14]
	cmp r6, r0
	bgt _021D9798
	cmp r1, r0
	blt _021D9798
	ldr r0, [r5, #4]
	lsl r0, r0, #1
	str r0, [r5, #4]
	b _021D97A2
_021D9798:
	bl sub_0201D35C
	mov r1, #3
	and r0, r1
	str r0, [sp, #8]
_021D97A2:
	ldr r1, [sp, #8]
	ldr r0, [r4, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02021E50
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	bge _021D97BC
	b _021D96A4
_021D97BC:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D9690

	thumb_func_start ov5_021D97C0
ov5_021D97C0: ; 0x021D97C0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r4, [r5, #8]
	add r0, sp, #0
	add r1, r5, #0
	bl ov5_021D7010
	ldr r0, [r4, #0]
	add r1, r0, #1
	str r1, [r4, #0]
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _021D97E2
	add r0, r5, #0
	bl ov5_021D6FA8
_021D97E2:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D97C0

	thumb_func_start ov5_021D97E8
ov5_021D97E8: ; 0x021D97E8
	push {r3, r4, r5, lr}
	ldr r0, _021D9974 ; =0x00000B98
	add r5, r1, #0
	ldr r4, [r5, r0]
	add r0, #0xa
	ldrh r0, [r5, r0]
	cmp r0, #5
	bhi _021D9854
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D9804: ; jump table
	.short _021D9810 - _021D9804 - 2 ; case 0
	.short _021D9834 - _021D9804 - 2 ; case 1
	.short _021D987E - _021D9804 - 2 ; case 2
	.short _021D98BE - _021D9804 - 2 ; case 3
	.short _021D9944 - _021D9804 - 2 ; case 4
	.short _021D996C - _021D9804 - 2 ; case 5
_021D9810:
	mov r0, #0
	str r0, [r4, #0]
	mov r1, #0x10
	str r0, [r4, #4]
	bl ov5_021D64E4
	mov r1, #2
	ldr r0, _021D9978 ; =0x04000018
	lsl r1, r1, #0x14
	str r1, [r0, #0]
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021D997C ; =0x00000BA2
	mov r1, #1
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021D9834:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r0, #0xa
	blt _021D9854
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	bl ov5_021D64E4
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bge _021D9856
_021D9854:
	b _021D9972
_021D9856:
	bl sub_0201D35C
	mov r1, #0x14
	bl _u32_div_f
	add r1, #0xa
	str r1, [r4, #8]
	bl sub_0201D35C
	mov r1, #3
	bl _u32_div_f
	add r0, r1, #5
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, _021D997C ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021D987E:
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #0xa
	str r0, [r4, #4]
	mov r1, #2
	ldr r0, _021D9978 ; =0x04000018
	lsl r1, r1, #0x14
	str r1, [r0, #0]
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl ov5_021D64E4
	bl sub_0201D35C
	mov r1, #0x14
	bl _u32_div_f
	add r1, #0xa
	str r1, [r4, #8]
	bl sub_0201D35C
	mov r1, #3
	bl _u32_div_f
	add r0, r1, #5
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, _021D997C ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021D98BE:
	ldr r0, [r4, #0]
	add r1, r0, #1
	str r1, [r4, #0]
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _021D992C
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _021D9902
	sub r1, r0, #1
	str r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bgt _021D992C
	bl sub_0201D35C
	mov r1, #0xf
	bl _u32_div_f
	add r1, #0xa
	str r1, [r4, #8]
	bl sub_0201D35C
	mov r1, #3
	bl _u32_div_f
	add r0, r1, #7
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	b _021D992C
_021D9902:
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _021D992C
	bl sub_0201D35C
	mov r1, #0x14
	bl _u32_div_f
	add r1, #0xa
	str r1, [r4, #8]
	bl sub_0201D35C
	mov r1, #3
	bl _u32_div_f
	add r0, r1, #5
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x10]
_021D992C:
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl ov5_021D64E4
	ldr r0, _021D9980 ; =0x00000BA6
	ldrh r1, [r5, r0]
	cmp r1, #5
	bne _021D9972
	mov r1, #4
	sub r0, r0, #4
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021D9944:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r0, #0xa
	blt _021D9972
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	mov r1, #0x10
	sub r0, r0, #1
	str r0, [r4, #4]
	bl ov5_021D64E4
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _021D9972
	ldr r0, _021D997C ; =0x00000BA2
	mov r1, #5
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021D996C:
	ldr r0, [r5, #4]
	bl ov5_021D69B8
_021D9972:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D9974: .word 0x00000B98
_021D9978: .word 0x04000018
_021D997C: .word 0x00000BA2
_021D9980: .word 0x00000BA6
	thumb_func_end ov5_021D97E8

	thumb_func_start ov5_021D9984
ov5_021D9984: ; 0x021D9984
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	sub r0, r0, #3
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r2, #1
	add r4, r1, #0
	ldr r0, _021D99F8 ; =ov5_021DA0A8
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0xf
	bl ov5_021D7210
	ldr r0, _021D99FC ; =0x00006F6F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021D9A00 ; =0x00006B5A
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021D9A04 ; =0x00000BA4
	lsl r2, r2, #2
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r4, #0xbc
	str r1, [r4, #0]
	ldr r1, _021D9A08 ; =0x0000063B
	add r0, r5, #0
	bl ov5_021DB4B8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D99F8: .word ov5_021DA0A8
_021D99FC: .word 0x00006F6F
_021D9A00: .word 0x00006B5A
_021D9A04: .word 0x00000BA4
_021D9A08: .word 0x0000063B
	thumb_func_end ov5_021D9984

	thumb_func_start ov5_021D9A0C
ov5_021D9A0C: ; 0x021D9A0C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D9A32
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D9A4E
_021D9A32:
	ldr r2, _021D9A54 ; =0x00000BA4
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl ov5_021D735C
	cmp r0, #1
	bne _021D9A4E
	cmp r6, #3
	bne _021D9A4E
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D9A4E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021D9A54: .word 0x00000BA4
	thumb_func_end ov5_021D9A0C

	thumb_func_start ov5_021D9A58
ov5_021D9A58: ; 0x021D9A58
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r2, #0xa
	str r2, [sp]
	mov r3, #0
	add r5, r0, #0
	str r3, [sp, #4]
	sub r0, r3, #3
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021D9AD4 ; =ov5_021DA0A8
	add r4, r1, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D7210
	ldr r0, _021D9AD8 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D9AA6
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D9ADC ; =0x00006F6F
	ldr r0, [r0, #0x48]
	ldr r3, _021D9AE0 ; =0x00006B5A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov5_021D7384
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74D4
_021D9AA6:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r4, #0xbc
	str r1, [r4, #0]
	mov r0, #1
	str r0, [sp]
	ldr r0, _021D9AE4 ; =ov5_021DA1A8
	ldr r1, _021D9AD4 ; =ov5_021DA0A8
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #5
	bl ov5_021D7568
	ldr r1, _021D9AE8 ; =0x0000063B
	add r0, r5, #0
	bl ov5_021DB4B8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D9AD4: .word ov5_021DA0A8
_021D9AD8: .word 0x00000BA4
_021D9ADC: .word 0x00006F6F
_021D9AE0: .word 0x00006B5A
_021D9AE4: .word ov5_021DA1A8
_021D9AE8: .word 0x0000063B
	thumb_func_end ov5_021D9A58

	thumb_func_start ov5_021D9AEC
ov5_021D9AEC: ; 0x021D9AEC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0x4b
	add r0, r0, #1
	lsl r1, r1, #2
	bl _s32_div_f
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021D9B24
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov5_021DA0A8
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021D9B24:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D9AEC

	thumb_func_start ov5_021D9B28
ov5_021D9B28: ; 0x021D9B28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf
	mov r3, #3
	bl ov5_021D7238
	ldr r0, _021D9B64 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D9B54
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021D9B54:
	mov r0, #0
	add r4, #0xb4
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov5_021DB4E4
	pop {r3, r4, r5, pc}
	nop
_021D9B64: .word 0x00000BA4
	thumb_func_end ov5_021D9B28

	thumb_func_start ov5_021D9B68
ov5_021D9B68: ; 0x021D9B68
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D9B8E
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D9BB6
_021D9B8E:
	ldr r0, _021D9BBC ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021D9BA0
	add r4, #0x1c
	add r0, r4, #0
	bl ov5_021D74B8
	b _021D9BA2
_021D9BA0:
	mov r0, #1
_021D9BA2:
	cmp r0, #1
	bne _021D9BB6
	cmp r6, #3
	bne _021D9BB6
	ldr r0, [r5, #0x40]
	add r5, #0xc
	cmp r0, r5
	bne _021D9BB6
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D9BB6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021D9BBC: .word 0x00000BA4
	thumb_func_end ov5_021D9B68

	thumb_func_start ov5_021D9BC0
ov5_021D9BC0: ; 0x021D9BC0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _021D9BE8 ; =0x00000BA4
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D9BDE
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r1, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D9BDE:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D9BE8: .word 0x00000BA4
	thumb_func_end ov5_021D9BC0

	thumb_func_start ov5_021D9BEC
ov5_021D9BEC: ; 0x021D9BEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D9C18 ; =0x00000BA2
	ldrh r0, [r4, r0]
	cmp r0, #5
	beq _021D9C16
	cmp r0, #0
	beq _021D9C16
	add r0, r4, #0
	ldr r1, _021D9C1C ; =ov5_021DA1A8
	add r0, #0xc
	bl ov5_021D6FF0
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov5_021D717C
	add r0, r4, #0
	bl ov5_021D700C
_021D9C16:
	pop {r4, pc}
	; .align 2, 0
_021D9C18: .word 0x00000BA2
_021D9C1C: .word ov5_021DA1A8
	thumb_func_end ov5_021D9BEC

	thumb_func_start ov5_021D9C20
ov5_021D9C20: ; 0x021D9C20
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _021D9DE8 ; =0x00000B98
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	add r6, r2, #0
	ldr r5, [r4, r0]
	cmp r1, #5
	bls _021D9C38
	b _021D9DE2
_021D9C38:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D9C44: ; jump table
	.short _021D9C50 - _021D9C44 - 2 ; case 0
	.short _021D9CA6 - _021D9C44 - 2 ; case 1
	.short _021D9CB0 - _021D9C44 - 2 ; case 2
	.short _021D9D06 - _021D9C44 - 2 ; case 3
	.short _021D9DA2 - _021D9C44 - 2 ; case 4
	.short _021D9DBC - _021D9C44 - 2 ; case 5
_021D9C50:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D9C9C
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D9DEC ; =0x00006FAF
	ldr r0, [r0, #0x48]
	mov r1, #5
	mov r3, #0
	bl ov5_021D7384
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, _021D9DF0 ; =0x021F8E14
	ldr r0, [r0, #0x48]
	bl ov5_021D585C
	mov r1, #0x10
	add r0, r6, #0
	sub r1, r1, r6
	bl ov5_021D64E4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add r0, r5, #0
	ldr r1, [sp, #0x18]
	add r0, #0x98
	str r1, [r0, #0]
	mov r0, #0
	add r5, #0x9c
	str r0, [r5, #0]
_021D9C9C:
	ldr r0, _021D9DF4 ; =0x00000BA2
	mov r1, #1
	add sp, #8
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9CA6:
	mov r1, #3
	add r0, #0xa
	add sp, #8
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9CB0:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D9CFC
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021D9DEC ; =0x00006FAF
	ldr r0, [r0, #0x48]
	mov r1, #5
	mov r3, #0
	bl ov5_021D7384
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, _021D9DF0 ; =0x021F8E14
	ldr r0, [r0, #0x48]
	bl ov5_021D585C
	mov r1, #0x10
	add r0, r6, #0
	sub r1, r1, r6
	bl ov5_021D64E4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add r0, r5, #0
	ldr r1, [sp, #0x18]
	add r0, #0x98
	str r1, [r0, #0]
	mov r0, #0
	add r5, #0x9c
	str r0, [r5, #0]
_021D9CFC:
	ldr r0, _021D9DF4 ; =0x00000BA2
	mov r1, #3
	add sp, #8
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9D06:
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D9D32
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	sub r1, r0, r3
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	bgt _021D9D7A
	add r0, r5, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0, #0]
	b _021D9D7A
_021D9D32:
	cmp r0, #1
	bne _021D9D5A
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x98
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	blo _021D9D7A
	add r0, r5, #0
	mov r1, #2
	add r0, #0x9c
	str r1, [r0, #0]
	b _021D9D7A
_021D9D5A:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	bgt _021D9D7A
	add r0, r5, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0, #0]
_021D9D7A:
	add r5, #0x98
	ldr r1, [r5, #0]
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r0, r0, #7
	add r0, r6, r0
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	ldr r0, _021D9DF8 ; =0x00000BA6
	ldrh r1, [r4, r0]
	cmp r1, #5
	bne _021D9DE2
	mov r1, #4
	sub r0, r0, #4
	add sp, #8
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9DA2:
	mov r0, #0
	mov r1, #0x10
	bl ov5_021D64E4
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _021D9DF4 ; =0x00000BA2
	mov r1, #5
	add sp, #8
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9DBC:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D9DDC
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	ldr r0, [r0, #0x48]
	add r3, r2, #0
	bl ov5_021D57FC
_021D9DDC:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021D9DE2:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021D9DE8: .word 0x00000B98
_021D9DEC: .word 0x00006FAF
_021D9DF0: .word 0x021F8E14
_021D9DF4: .word 0x00000BA2
_021D9DF8: .word 0x00000BA6
	thumb_func_end ov5_021D9C20

	thumb_func_start ov5_021D9DFC
ov5_021D9DFC: ; 0x021D9DFC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	ldr r2, _021D9F08 ; =0x00000BA2
	add r4, r0, #0
	ldrh r0, [r4, r2]
	add r5, r1, #0
	cmp r0, #5
	bhi _021D9F02
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D9E1A: ; jump table
	.short _021D9E26 - _021D9E1A - 2 ; case 0
	.short _021D9E56 - _021D9E1A - 2 ; case 1
	.short _021D9E70 - _021D9E1A - 2 ; case 2
	.short _021D9EA0 - _021D9E1A - 2 ; case 3
	.short _021D9EC4 - _021D9E1A - 2 ; case 4
	.short _021D9EE4 - _021D9E1A - 2 ; case 5
_021D9E26:
	str r3, [sp]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	add r5, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r0, [sp, #8]
	add r0, r2, #2
	ldrh r0, [r4, r0]
	mov r2, #0x41
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4, #0]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r3, r6, #0
	ldr r2, [r2, #0x48]
	bl ov5_021D7308
	ldr r0, _021D9F08 ; =0x00000BA2
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9E56:
	add r2, r2, #2
	ldrh r2, [r4, r2]
	add r5, #0x30
	add r0, r5, #0
	bl ov5_021D735C
	cmp r0, #1
	bne _021D9F02
	ldr r0, _021D9F08 ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9E70:
	add r0, r2, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D9E96
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r3, #0
	ldr r0, [r0, #0x48]
	add r3, sp, #0x10
	str r0, [r5, #0]
	ldrh r3, [r3, #0x10]
	add r1, r6, #0
	bl ov5_021D7384
	add r0, r5, #0
	bl ov5_021D74D4
_021D9E96:
	ldr r0, _021D9F08 ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9EA0:
	add r0, r2, #4
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021D9F02
	add r0, r2, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D9EBA
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	mov r2, #0
	bl ov5_021D749C
_021D9EBA:
	ldr r0, _021D9F08 ; =0x00000BA2
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9EC4:
	add r0, r2, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D9ED4
	add r0, r5, #0
	bl ov5_021D74B8
	b _021D9ED6
_021D9ED4:
	mov r0, #1
_021D9ED6:
	cmp r0, #1
	bne _021D9F02
	ldr r0, _021D9F08 ; =0x00000BA2
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9EE4:
	add r0, r2, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021D9EFC
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021D9EFC:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021D9F02:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D9F08: .word 0x00000BA2
	thumb_func_end ov5_021D9DFC

	thumb_func_start ov5_021D9F0C
ov5_021D9F0C: ; 0x021D9F0C
	push {r3, r4, r5, lr}
	ldr r0, _021D9FEC ; =0x00000B98
	add r4, r1, #0
	ldr r5, [r4, r0]
	add r0, #0xa
	ldrh r0, [r4, r0]
	cmp r0, #5
	bhi _021D9FE0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D9F28: ; jump table
	.short _021D9F34 - _021D9F28 - 2 ; case 0
	.short _021D9F58 - _021D9F28 - 2 ; case 1
	.short _021D9F6C - _021D9F28 - 2 ; case 2
	.short _021D9F90 - _021D9F28 - 2 ; case 3
	.short _021D9FBA - _021D9F28 - 2 ; case 4
	.short _021D9FCE - _021D9F28 - 2 ; case 5
_021D9F34:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9984
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x11
	bl ov5_021D6418
	ldr r0, [r4, #0]
	mov r1, #3
	mov r2, #0x11
	bl ov5_021D6418
	ldr r0, _021D9FF0 ; =0x00000BA2
	mov r1, #1
	strh r1, [r4, r0]
	b _021D9FE0
_021D9F58:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9A0C
	cmp r0, #0
	beq _021D9FE0
	ldr r0, _021D9FF0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	b _021D9FE0
_021D9F6C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9A58
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x11
	bl ov5_021D6418
	ldr r0, [r4, #0]
	mov r1, #3
	mov r2, #0x11
	bl ov5_021D6418
	ldr r0, _021D9FF0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	b _021D9FE0
_021D9F90:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9AEC
	ldr r0, _021D9FF4 ; =0x00000BA6
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021D9FE0
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9B28
	ldr r0, [r4, #0]
	mov r1, #5
	mov r2, #0x11
	bl ov5_021D6418
	ldr r0, _021D9FF0 ; =0x00000BA2
	mov r1, #4
	strh r1, [r4, r0]
	b _021D9FE0
_021D9FBA:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9B68
	cmp r0, #0
	beq _021D9FE0
	ldr r0, _021D9FF0 ; =0x00000BA2
	mov r1, #5
	strh r1, [r4, r0]
	b _021D9FE0
_021D9FCE:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9BC0
	ldr r0, [r4, #0]
	mov r1, #8
	mov r2, #0x11
	bl ov5_021D6418
_021D9FE0:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9BEC
	pop {r3, r4, r5, pc}
	nop
_021D9FEC: .word 0x00000B98
_021D9FF0: .word 0x00000BA2
_021D9FF4: .word 0x00000BA6
	thumb_func_end ov5_021D9F0C

	thumb_func_start ov5_021D9FF8
ov5_021D9FF8: ; 0x021D9FF8
	push {r3, r4, r5, lr}
	ldr r0, _021DA09C ; =0x00000B98
	add r4, r1, #0
	ldr r5, [r4, r0]
	add r0, #0xa
	ldrh r0, [r4, r0]
	cmp r0, #5
	bhi _021DA090
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DA014: ; jump table
	.short _021DA020 - _021DA014 - 2 ; case 0
	.short _021DA030 - _021DA014 - 2 ; case 1
	.short _021DA044 - _021DA014 - 2 ; case 2
	.short _021DA054 - _021DA014 - 2 ; case 3
	.short _021DA074 - _021DA014 - 2 ; case 4
	.short _021DA088 - _021DA014 - 2 ; case 5
_021DA020:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9984
	ldr r0, _021DA0A0 ; =0x00000BA2
	mov r1, #1
	strh r1, [r4, r0]
	b _021DA090
_021DA030:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9A0C
	cmp r0, #0
	beq _021DA090
	ldr r0, _021DA0A0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	b _021DA090
_021DA044:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9A58
	ldr r0, _021DA0A0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	b _021DA090
_021DA054:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9AEC
	ldr r0, _021DA0A4 ; =0x00000BA6
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021DA090
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9B28
	ldr r0, _021DA0A0 ; =0x00000BA2
	mov r1, #4
	strh r1, [r4, r0]
	b _021DA090
_021DA074:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9B68
	cmp r0, #0
	beq _021DA090
	ldr r0, _021DA0A0 ; =0x00000BA2
	mov r1, #5
	strh r1, [r4, r0]
	b _021DA090
_021DA088:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9BC0
_021DA090:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D9BEC
	pop {r3, r4, r5, pc}
	nop
_021DA09C: .word 0x00000B98
_021DA0A0: .word 0x00000BA2
_021DA0A4: .word 0x00000BA6
	thumb_func_end ov5_021D9FF8

	thumb_func_start ov5_021DA0A8
ov5_021DA0A8: ; 0x021DA0A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #4]
	ldr r1, _021DA19C ; =0x00000B98
	str r0, [sp]
	ldr r7, [r0, r1]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021DA198
_021DA0BE:
	ldr r0, [sp]
	mov r1, #0x20
	bl ov5_021D6F00
	add r4, r0, #0
	beq _021DA198
	ldr r5, [r4, #8]
	bl sub_0201D35C
	mov r1, #0
	str r1, [r5, #0]
	mov r1, #3
	add r6, r0, #0
	bl _u32_div_f
	str r1, [sp, #8]
	lsl r1, r1, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl sub_02021E50
	ldr r0, [sp, #8]
	mov r1, #0x17
	add r0, r0, #1
	mvn r1, r1
	mul r1, r0
	str r1, [r5, #0x10]
	mov r1, #0x18
	mul r1, r0
	add r0, r7, #0
	str r1, [r5, #8]
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0x3c
	bl _s32_div_f
	lsl r2, r0, #2
	ldr r0, _021DA1A0 ; =0x021F8CFC
	ldr r1, [r5, #0x10]
	ldr r0, [r0, r2]
	mul r0, r1
	str r0, [r5, #0x10]
	add r0, r7, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0x3c
	bl _s32_div_f
	lsl r2, r0, #2
	ldr r0, _021DA1A0 ; =0x021F8CFC
	ldr r1, [r5, #8]
	ldr r0, [r0, r2]
	mul r0, r1
	str r0, [r5, #8]
	mov r0, #0
	str r0, [r5, #0xc]
	mov r0, #3
	and r0, r6
	str r0, [r5, #4]
	add r0, r7, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0x3c
	bl _s32_div_f
	add r1, r0, #0
	lsl r2, r1, #2
	ldr r1, _021DA1A0 ; =0x021F8CFC
	ldr r0, [r5, #4]
	ldr r1, [r1, r2]
	bl _s32_div_f
	str r0, [r5, #4]
	add r0, sp, #0x10
	add r1, r4, #0
	bl ov5_021D7010
	add r3, sp, #0x10
	ldmia r3!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0x30
	str r0, [r2, #0]
	ldr r0, _021DA1A4 ; =0x000001FF
	and r0, r6
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl _u32_div_f
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	sub r1, #0x50
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	lsl r0, r1, #0xc
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	add r1, sp, #0x1c
	bl ov5_021D630C
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021DA0BE
_021DA198:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DA19C: .word 0x00000B98
_021DA1A0: .word 0x021F8CFC
_021DA1A4: .word 0x000001FF
	thumb_func_end ov5_021DA0A8

	thumb_func_start ov5_021DA1A8
ov5_021DA1A8: ; 0x021DA1A8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	ldr r4, [r5, #8]
	bl ov5_021D7010
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021DA1D6
	cmp r0, #1
	beq _021DA226
	cmp r0, #2
	beq _021DA238
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021DA1D6:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xd
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xd
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #2
	str r1, [r4, #0]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021DA21A
	bl sub_0201D35C
	mov r1, #0xa
	bl _u32_div_f
	cmp r1, #5
	bhs _021DA20A
	mov r0, #2
	str r0, [r4, #0xc]
	b _021DA21A
_021DA20A:
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #4
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	mov r1, #3
	bl sub_02021E50
_021DA21A:
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl ov5_021D630C
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021DA226:
	ldr r1, [r4, #0]
	sub r0, r1, #1
	str r0, [r4, #0]
	cmp r1, #0
	bgt _021DA23E
	mov r0, #2
	add sp, #0x18
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_021DA238:
	add r0, r5, #0
	bl ov5_021D6FA8
_021DA23E:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021DA1A8

	thumb_func_start ov5_021DA244
ov5_021DA244: ; 0x021DA244
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r0, _021DA578 ; =0x00000B98
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021DA31E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DA264: ; jump table
	.short _021DA270 - _021DA264 - 2 ; case 0
	.short _021DA2E4 - _021DA264 - 2 ; case 1
	.short _021DA330 - _021DA264 - 2 ; case 2
	.short _021DA3B2 - _021DA264 - 2 ; case 3
	.short _021DA41A - _021DA264 - 2 ; case 4
	.short _021DA46A - _021DA264 - 2 ; case 5
_021DA270:
	mov r2, #1
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	sub r0, r0, #7
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _021DA57C ; =ov5_021DA5A0
	mov r3, #0xc
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0, #0]
	ldr r0, _021DA580 ; =0x00006F2F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021DA584 ; =0x00003A94
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021DA588 ; =0x00000BA4
	lsl r2, r2, #2
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	ldr r0, _021DA58C ; =0x00000BA2
	mov r1, #1
	strh r1, [r5, r0]
	b _021DA488
_021DA2E4:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021DA306
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0, #0]
	b _021DA488
_021DA306:
	ldr r2, _021DA588 ; =0x00000BA4
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r1, r4, #0
	add r0, #0x4c
	add r1, #0x1c
	bl ov5_021D735C
	cmp r0, #1
	bne _021DA31E
	cmp r6, #3
	beq _021DA320
_021DA31E:
	b _021DA488
_021DA320:
	ldr r0, _021DA58C ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	b _021DA488
_021DA330:
	mov r2, #1
	mov r3, #6
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #7
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _021DA57C ; =ov5_021DA5A0
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov5_021D7210
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0, #0]
	ldr r0, _021DA588 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DA38E
	mov r0, #0x41
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DA580 ; =0x00006F2F
	ldr r0, [r0, #0x48]
	ldr r3, _021DA584 ; =0x00003A94
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov5_021D7384
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74D4
_021DA38E:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021DA590 ; =ov5_021DA6BC
	ldr r1, _021DA57C ; =ov5_021DA5A0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #2
	bl ov5_021D7568
	ldr r0, _021DA58C ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	b _021DA488
_021DA3B2:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021DA3CE
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov5_021DA5A0
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021DA3CE:
	ldr r0, _021DA594 ; =0x00000BA6
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021DA488
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	mov r3, #1
	bl ov5_021D7238
	ldr r0, _021DA588 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DA3FC
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021DA3FC:
	add r0, r4, #0
	mov r1, #9
	add r0, #0xb4
	str r1, [r0, #0]
	ldr r1, _021DA58C ; =0x00000BA2
	mov r0, #4
	strh r0, [r5, r1]
	add r1, r4, #0
	mov r2, #1
	add r1, #0xc8
	str r2, [r1, #0]
	mov r1, #0
	bl sub_0201FF0C
	b _021DA488
_021DA41A:
	add r0, r4, #0
	bl ov5_021D7244
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021DA43C
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0, #0]
	b _021DA488
_021DA43C:
	ldr r0, _021DA588 ; =0x00000BA4
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DA44E
	add r0, r4, #0
	add r0, #0x1c
	bl ov5_021D74B8
	b _021DA450
_021DA44E:
	mov r0, #1
_021DA450:
	cmp r0, #1
	bne _021DA488
	cmp r6, #3
	bne _021DA488
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021DA488
	ldr r0, _021DA58C ; =0x00000BA2
	mov r1, #5
	strh r1, [r5, r0]
	b _021DA488
_021DA46A:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DA482
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021DA482:
	ldr r0, [r5, #4]
	bl ov5_021D69B8
_021DA488:
	ldr r0, _021DA58C ; =0x00000BA2
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021DA574
	cmp r0, #0
	beq _021DA574
	add r0, r5, #0
	ldr r1, _021DA590 ; =ov5_021DA6BC
	add r0, #0xc
	bl ov5_021D6FF0
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov5_021D717C
	add r0, r5, #0
	bl ov5_021D700C
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r0, #0]
	asr r0, r1, #0x10
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	lsl r0, r1, #0x10
	ldr r1, [sp, #0x1c]
	asr r0, r0, #0x10
	add r1, r2, r1
	lsl r1, r1, #0x10
	ldr r2, [sp, #0x18]
	asr r5, r1, #0x10
	lsl r1, r2, #2
	add r1, r2, r1
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r5, #0
	bge _021DA4E2
	mov r1, #1
	lsl r1, r1, #8
	add r1, r5, r1
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
	b _021DA4F0
_021DA4E2:
	mov r1, #1
	lsl r1, r1, #8
	cmp r5, r1
	blt _021DA4F0
	sub r1, r5, r1
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
_021DA4F0:
	cmp r0, #0
	bge _021DA4FE
	mov r1, #2
	lsl r1, r1, #0xa
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_021DA4FE:
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r2, r1, #2
	add r1, r4, #0
	add r1, #0xc4
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	cmp r1, #0x3c
	ble _021DA530
	add r1, r4, #0
	add r5, #0x20
	mov r2, #0
	add r1, #0xc4
	str r2, [r1, #0]
	lsr r3, r5, #0x1f
	lsl r2, r5, #0x18
	sub r2, r2, r3
	mov r1, #0x18
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
_021DA530:
	add r0, r0, #2
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x15
	sub r1, r1, r2
	mov r0, #0x15
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	neg r0, r6
	mov r1, #5
	bl _s32_div_f
	ldr r2, _021DA598 ; =0x000001FF
	add r1, r5, #0
	lsl r3, r0, #0x10
	lsl r0, r2, #0x10
	and r1, r2
	and r0, r3
	orr r1, r0
	ldr r0, _021DA59C ; =0x04000018
	str r1, [r0, #0]
	add r0, r4, #0
	lsl r1, r5, #0x10
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r0, #0]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	orr r0, r1
	add r4, #0xbc
	str r0, [r4, #0]
_021DA574:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DA578: .word 0x00000B98
_021DA57C: .word ov5_021DA5A0
_021DA580: .word 0x00006F2F
_021DA584: .word 0x00003A94
_021DA588: .word 0x00000BA4
_021DA58C: .word 0x00000BA2
_021DA590: .word ov5_021DA6BC
_021DA594: .word 0x00000BA6
_021DA598: .word 0x000001FF
_021DA59C: .word 0x04000018
	thumb_func_end ov5_021DA244

	thumb_func_start ov5_021DA5A0
ov5_021DA5A0: ; 0x021DA5A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r1, #0
	ldr r1, _021DA6B4 ; =0x00000B98
	str r0, [sp]
	ldr r0, [r0, r1]
	str r0, [sp, #0x10]
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021DA5B8
	lsl r7, r7, #1
_021DA5B8:
	mov r6, #0
	cmp r7, #0
	ble _021DA6AE
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	add r0, #0xb8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r0, [sp, #8]
	add r0, #0xc8
	str r0, [sp, #8]
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	str r0, [sp, #4]
_021DA5D6:
	ldr r0, [sp]
	mov r1, #0x20
	bl ov5_021D6F00
	add r4, r0, #0
	beq _021DA6AE
	ldr r5, [r4, #8]
	bl sub_0201D35C
	mov r1, #3
	and r1, r0
	lsl r1, r1, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl sub_02021E50
	mov r0, #0xa
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x14]
	bl sub_0201D35C
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1f
	sub r2, r2, r1
	mov r0, #0x1f
	ror r2, r0
	add r0, r1, r2
	bne _021DA614
	mov r0, #1
	b _021DA618
_021DA614:
	mov r0, #0
	mvn r0, r0
_021DA618:
	str r0, [r5, #4]
	bl sub_0201D35C
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0]
	ldr r0, [sp, #8]
	str r0, [r5, #0x18]
	bl sub_0201D35C
	mov r1, #0x14
	bl _u32_div_f
	add r1, #0xa
	str r1, [r5, #0x1c]
	add r0, sp, #0x14
	add r1, r4, #0
	bl ov5_021D7010
	add r3, sp, #0x14
	ldmia r3!, {r0, r1}
	add r2, sp, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bl sub_0201D35C
	ldr r1, _021DA6B8 ; =0x0000019E
	bl _u32_div_f
	ldr r0, [sp, #0x10]
	sub r1, #0x20
	str r1, [sp, #0x20]
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021DA67E
	ldr r0, [sp, #4]
	cmp r6, r0
	blt _021DA67E
	bl sub_0201D35C
	mov r1, #0x14
	bl _u32_div_f
	mov r0, #0x27
	mvn r0, r0
	sub r0, r0, r1
	str r0, [sp, #0x24]
	b _021DA690
_021DA67E:
	bl sub_0201D35C
	mov r1, #0x14
	bl _u32_div_f
	mov r0, #7
	mvn r0, r0
	sub r0, r0, r1
	str r0, [sp, #0x24]
_021DA690:
	ldr r0, [sp, #0x20]
	add r1, sp, #0x20
	lsl r0, r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [r4, #4]
	bl ov5_021D630C
	add r6, r6, #1
	cmp r6, r7
	blt _021DA5D6
_021DA6AE:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021DA6B4: .word 0x00000B98
_021DA6B8: .word 0x0000019E
	thumb_func_end ov5_021DA5A0

	thumb_func_start ov5_021DA6BC
ov5_021DA6BC: ; 0x021DA6BC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r0, sp, #0
	add r1, r6, #0
	ldr r4, [r6, #8]
	bl ov5_021D7010
	add r5, sp, #0
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r5, #0
	str r0, [r3, #0]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _021DA6F8
	mov r0, #1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	str r5, [r4, #0x14]
	ldr r0, [r6, #4]
	add r1, r2, #0
	bl ov5_021D630C
_021DA6F8:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x10]
	asr r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021DA718
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0
	bgt _021DA718
	mov r5, #1
_021DA718:
	ldr r1, [sp, #0x10]
	ldr r0, _021DA744 ; =0xFFFFFEE4
	cmp r1, r0
	bge _021DA726
	sub r0, #0xc
	cmp r1, r0
	bgt _021DA72E
_021DA726:
	cmp r1, #0xd4
	ble _021DA730
	cmp r1, #0xe8
	bge _021DA730
_021DA72E:
	mov r5, #1
_021DA730:
	cmp r5, #1
	bne _021DA740
	ldr r0, [r4, #0]
	mov r1, #1
	str r1, [r0, #0]
	add r0, r6, #0
	bl ov5_021D6FA8
_021DA740:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DA744: .word 0xFFFFFEE4
	thumb_func_end ov5_021DA6BC

	thumb_func_start ov5_021DA748
ov5_021DA748: ; 0x021DA748
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _021DA88C ; =0x00000B98
	add r5, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r5, r1]
	ldr r4, [r5, r0]
	cmp r1, #5
	bls _021DA75C
	b _021DA88A
_021DA75C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DA768: ; jump table
	.short _021DA774 - _021DA768 - 2 ; case 0
	.short _021DA774 - _021DA768 - 2 ; case 1
	.short _021DA774 - _021DA768 - 2 ; case 2
	.short _021DA792 - _021DA768 - 2 ; case 3
	.short _021DA87C - _021DA768 - 2 ; case 4
	.short _021DA884 - _021DA768 - 2 ; case 5
_021DA774:
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #0x10]
	mov r1, #0x1f
	str r0, [r4, #4]
	bl ov5_021D64E4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DA890 ; =0x00000BA2
	mov r1, #3
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DA792:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	blt _021DA79E
	sub r0, r0, #1
	str r0, [r4, #0x10]
	b _021DA86C
_021DA79E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021DA7AE
	cmp r0, #1
	beq _021DA7F0
	cmp r0, #2
	beq _021DA818
	b _021DA86C
_021DA7AE:
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x14]
	bl sub_0201D35C
	mov r1, #0x1e
	lsl r1, r1, #4
	bl _u32_div_f
	add r1, #0xc8
	str r1, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x1c]
	bl sub_0201D35C
	mov r1, #3
	bl _u32_div_f
	cmp r1, #0
	beq _021DA7E4
	mov r0, #0x24
	str r0, [r4, #8]
	ldr r0, _021DA894 ; =0x0000063D
	bl sub_02005748
	b _021DA86C
_021DA7E4:
	mov r0, #0xc8
	str r0, [r4, #8]
	ldr r0, _021DA898 ; =0x0000063C
	bl sub_02005748
	b _021DA86C
_021DA7F0:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x14]
	cmp r0, #2
	blt _021DA808
	mov r0, #2
	str r0, [r4, #4]
_021DA808:
	ldr r0, [r4, #0x1c]
	mov r1, #0x64
	bl _s32_div_f
	mov r1, #0x1f
	bl ov5_021D64E4
	b _021DA86C
_021DA818:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	str r0, [r4, #0x1c]
	cmp r0, #0
	bgt _021DA85E
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0x1c]
	ldr r0, [r4, #8]
	cmp r0, #0xc8
	bne _021DA83E
	bl sub_0201D35C
	mov r1, #0xf
	bl _u32_div_f
	str r1, [r4, #0x10]
	b _021DA85E
_021DA83E:
	bl sub_0201D35C
	add r7, r0, #0
	ldr r1, [r4, #0x18]
	mov r0, #0x32
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #0x78
	bl _u32_div_f
	add r0, r6, r1
	str r0, [r4, #0x10]
_021DA85E:
	ldr r0, [r4, #0x1c]
	mov r1, #0x64
	bl _s32_div_f
	mov r1, #0x1f
	bl ov5_021D64E4
_021DA86C:
	ldr r0, _021DA89C ; =0x00000BA6
	ldrh r1, [r5, r0]
	cmp r1, #5
	bne _021DA88A
	mov r1, #4
	sub r0, r0, #4
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DA87C:
	mov r1, #5
	add r0, #0xa
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DA884:
	ldr r0, [r5, #4]
	bl ov5_021D69B8
_021DA88A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DA88C: .word 0x00000B98
_021DA890: .word 0x00000BA2
_021DA894: .word 0x0000063D
_021DA898: .word 0x0000063C
_021DA89C: .word 0x00000BA6
	thumb_func_end ov5_021DA748

	thumb_func_start ov5_021DA8A0
ov5_021DA8A0: ; 0x021DA8A0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r0, _021DA9C8 ; =0x00000B98
	add r4, r1, #0
	ldr r5, [r4, r0]
	add r0, #0xa
	ldrh r0, [r4, r0]
	cmp r0, #5
	bhi _021DA99E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DA8BE: ; jump table
	.short _021DA8CA - _021DA8BE - 2 ; case 0
	.short _021DA8F2 - _021DA8BE - 2 ; case 1
	.short _021DA904 - _021DA8BE - 2 ; case 2
	.short _021DA93E - _021DA8BE - 2 ; case 3
	.short _021DA97C - _021DA8BE - 2 ; case 4
	.short _021DA998 - _021DA8BE - 2 ; case 5
_021DA8CA:
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	sub r0, #0x11
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r2, #1
	ldr r0, _021DA9CC ; =ov5_021DA9DC
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0x23
	bl ov5_021D7210
	ldr r0, _021DA9D0 ; =0x00000BA2
	mov r1, #1
	strh r1, [r4, r0]
	b _021DA99E
_021DA8F2:
	add r0, r5, #0
	bl ov5_021D7244
	cmp r0, #3
	bne _021DA99E
	ldr r0, _021DA9D0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	b _021DA99E
_021DA904:
	mov r0, #0xf
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, #0x11
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r2, #1
	ldr r0, _021DA9CC ; =ov5_021DA9DC
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r3, #4
	bl ov5_021D7210
	mov r0, #1
	str r0, [sp]
	ldr r0, _021DA9D4 ; =ov5_021DAADC
	ldr r1, _021DA9CC ; =ov5_021DA9DC
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x10
	mov r3, #2
	bl ov5_021D7568
	ldr r0, _021DA9D0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	b _021DA99E
_021DA93E:
	mov r0, #6
	ldrsh r1, [r5, r0]
	sub r0, r1, #1
	strh r0, [r5, #6]
	cmp r1, #0
	bgt _021DA95A
	mov r1, #4
	ldrsh r1, [r5, r1]
	add r0, r4, #0
	bl ov5_021DA9DC
	mov r0, #8
	ldrsh r0, [r5, r0]
	strh r0, [r5, #6]
_021DA95A:
	ldr r0, _021DA9D8 ; =0x00000BA6
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021DA99E
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x23
	mov r3, #2
	bl ov5_021D7238
	ldr r0, _021DA9D0 ; =0x00000BA2
	mov r1, #4
	strh r1, [r4, r0]
	b _021DA99E
_021DA97C:
	add r0, r5, #0
	bl ov5_021D7244
	cmp r0, #3
	bne _021DA99E
	add r0, r4, #0
	ldr r1, [r4, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021DA99E
	ldr r0, _021DA9D0 ; =0x00000BA2
	mov r1, #5
	strh r1, [r4, r0]
	b _021DA99E
_021DA998:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021DA99E:
	ldr r0, _021DA9D0 ; =0x00000BA2
	ldrh r0, [r4, r0]
	cmp r0, #5
	beq _021DA9C4
	cmp r0, #0
	beq _021DA9C4
	add r0, r4, #0
	ldr r1, _021DA9D4 ; =ov5_021DAADC
	add r0, #0xc
	bl ov5_021D6FF0
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov5_021D717C
	add r0, r4, #0
	bl ov5_021D700C
_021DA9C4:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DA9C8: .word 0x00000B98
_021DA9CC: .word ov5_021DA9DC
_021DA9D0: .word 0x00000BA2
_021DA9D4: .word ov5_021DAADC
_021DA9D8: .word 0x00000BA6
	thumb_func_end ov5_021DA8A0

	thumb_func_start ov5_021DA9DC
ov5_021DA9DC: ; 0x021DA9DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r0, r1, #0
	mov r7, #0
	str r1, [sp, #4]
	cmp r0, #0
	ble _021DAAD2
_021DA9EC:
	ldr r0, [sp]
	mov r1, #0x20
	bl ov5_021D6F00
	add r5, r0, #0
	beq _021DAAD2
	ldr r4, [r5, #8]
	bl sub_0201D35C
	mov r1, #0xe
	bl _u32_div_f
	add r6, r1, #0
	lsl r1, r6, #0x10
	ldr r0, [r5, #4]
	lsr r1, r1, #0x10
	bl sub_02021E50
	asr r0, r6, #1
	lsr r0, r0, #0x1e
	add r0, r6, r0
	asr r6, r0, #2
	bl sub_0201D35C
	mov r1, #0x19
	bl _u32_div_f
	add r2, r1, #0
	add r2, #8
	add r1, r6, #1
	add r0, r2, #0
	mul r0, r1
	str r0, [r4, #0]
	mov r0, #0x10
	bl _s32_div_f
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	bl sub_0201D35C
	mov r1, #1
	and r0, r1
	str r0, [r4, #0xc]
	add r0, r1, #0
	str r0, [r4, #0x10]
	add r0, r6, #1
	cmp r0, #4
	bhi _021DAAB2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DAA5A: ; jump table
	.short _021DAAB2 - _021DAA5A - 2 ; case 0
	.short _021DAA64 - _021DAA5A - 2 ; case 1
	.short _021DAA64 - _021DAA5A - 2 ; case 2
	.short _021DAA80 - _021DAA5A - 2 ; case 3
	.short _021DAA9A - _021DAA5A - 2 ; case 4
_021DAA64:
	bl sub_0201D35C
	ldr r1, _021DAAD8 ; =0x000001FF
	and r0, r1
	sub r0, #0x80
	str r0, [sp, #8]
	bl sub_0201D35C
	mov r1, #0xc0
	bl _u32_div_f
	add r1, #8
	str r1, [sp, #0xc]
	b _021DAAB2
_021DAA80:
	bl sub_0201D35C
	ldr r1, _021DAAD8 ; =0x000001FF
	and r0, r1
	sub r0, #0x80
	str r0, [sp, #8]
	bl sub_0201D35C
	mov r1, #0x7f
	and r0, r1
	add r0, #0x40
	str r0, [sp, #0xc]
	b _021DAAB2
_021DAA9A:
	bl sub_0201D35C
	ldr r1, _021DAAD8 ; =0x000001FF
	and r0, r1
	sub r0, #0x80
	str r0, [sp, #8]
	bl sub_0201D35C
	mov r1, #0x1f
	and r0, r1
	add r0, #0xa0
	str r0, [sp, #0xc]
_021DAAB2:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r1, sp, #8
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	bl ov5_021D630C
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	blt _021DA9EC
_021DAAD2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DAAD8: .word 0x000001FF
	thumb_func_end ov5_021DA9DC

	thumb_func_start ov5_021DAADC
ov5_021DAADC: ; 0x021DAADC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	ldr r4, [r5, #8]
	bl ov5_021D7010
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	cmp r0, #0
	ble _021DAB1C
	sub r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	mov r1, #0x64
	bl _s32_div_f
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x10]
	b _021DAB2C
_021DAB1C:
	ldr r0, [r4, #8]
	mov r1, #0x32
	bl _s32_div_f
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x10]
_021DAB2C:
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0
	bgt _021DAB58
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _021DAB4C
	ldr r2, [sp, #0xc]
	lsl r1, r0, #0xd
	add r1, r2, r1
	str r1, [sp, #0xc]
	str r0, [r4, #0xc]
	b _021DAB58
_021DAB4C:
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xd
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [r4, #0xc]
_021DAB58:
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl ov5_021D630C
	ldr r0, [sp, #0x10]
	asr r1, r0, #0xc
	mov r0, #0xf
	mvn r0, r0
	cmp r1, r0
	bgt _021DAB72
	add r0, r5, #0
	bl ov5_021D6FA8
_021DAB72:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021DAADC

	thumb_func_start ov5_021DAB78
ov5_021DAB78: ; 0x021DAB78
	push {r4, r5, r6, lr}
	ldr r0, _021DAC5C ; =0x00000B98
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bhi _021DAC58
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DAB96: ; jump table
	.short _021DABA2 - _021DAB96 - 2 ; case 0
	.short _021DABD4 - _021DAB96 - 2 ; case 1
	.short _021DABF2 - _021DAB96 - 2 ; case 2
	.short _021DAC18 - _021DAB96 - 2 ; case 3
	.short _021DAC34 - _021DAB96 - 2 ; case 4
	.short _021DAC52 - _021DAB96 - 2 ; case 5
_021DABA2:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #8
	bl ov5_021D64FC
	mov r0, #0
	mov r1, #0x10
	bl ov5_021D64E4
	ldr r1, _021DAC60 ; =0x0400000C
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #3
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DAC64 ; =0x00000BA2
	mov r1, #1
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DABD4:
	add r0, r5, #0
	bl ov5_021D650C
	add r6, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, #1
	bne _021DAC58
	ldr r0, _021DAC64 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DABF2:
	mov r0, #0x10
	mov r1, #0
	bl ov5_021D64E4
	ldr r1, _021DAC60 ; =0x0400000C
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #3
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DAC64 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DAC18:
	add r0, #0xe
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021DAC58
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #8
	bl ov5_021D64FC
	ldr r0, _021DAC64 ; =0x00000BA2
	mov r1, #4
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DAC34:
	add r0, r5, #0
	bl ov5_021D650C
	add r6, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, #1
	bne _021DAC58
	ldr r0, _021DAC64 ; =0x00000BA2
	mov r1, #5
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DAC52:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021DAC58:
	pop {r4, r5, r6, pc}
	nop
_021DAC5C: .word 0x00000B98
_021DAC60: .word 0x0400000C
_021DAC64: .word 0x00000BA2
	thumb_func_end ov5_021DAB78

	thumb_func_start ov5_021DAC68
ov5_021DAC68: ; 0x021DAC68
	push {r4, r5, r6, lr}
	ldr r0, _021DAD30 ; =0x00000B98
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bhi _021DAD2C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DAC86: ; jump table
	.short _021DAC92 - _021DAC86 - 2 ; case 0
	.short _021DACB6 - _021DAC86 - 2 ; case 1
	.short _021DACD4 - _021DAC86 - 2 ; case 2
	.short _021DACEC - _021DAC86 - 2 ; case 3
	.short _021DAD08 - _021DAC86 - 2 ; case 4
	.short _021DAD26 - _021DAC86 - 2 ; case 5
_021DAC92:
	add r0, r5, #0
	mov r1, #0
	mov r2, #4
	mov r3, #8
	bl ov5_021D64FC
	mov r0, #0
	mov r1, #0x10
	bl ov5_021D64E4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DAD34 ; =0x00000BA2
	mov r1, #1
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DACB6:
	add r0, r5, #0
	bl ov5_021D650C
	add r6, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, #0
	beq _021DAD2C
	ldr r0, _021DAD34 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DACD4:
	mov r0, #4
	mov r1, #0xc
	bl ov5_021D64E4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DAD34 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DACEC:
	add r0, #0xe
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021DAD2C
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	mov r3, #8
	bl ov5_021D64FC
	ldr r0, _021DAD34 ; =0x00000BA2
	mov r1, #4
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DAD08:
	add r0, r5, #0
	bl ov5_021D650C
	add r6, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, #0
	beq _021DAD2C
	ldr r0, _021DAD34 ; =0x00000BA2
	mov r1, #5
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DAD26:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021DAD2C:
	pop {r4, r5, r6, pc}
	nop
_021DAD30: .word 0x00000B98
_021DAD34: .word 0x00000BA2
	thumb_func_end ov5_021DAC68

	thumb_func_start ov5_021DAD38
ov5_021DAD38: ; 0x021DAD38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _021DAEB4 ; =0x00000B98
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bls _021DAD4E
	b _021DAEB0
_021DAD4E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DAD5A: ; jump table
	.short _021DAD66 - _021DAD5A - 2 ; case 0
	.short _021DADB6 - _021DAD5A - 2 ; case 1
	.short _021DADE4 - _021DAD5A - 2 ; case 2
	.short _021DAE24 - _021DAD5A - 2 ; case 3
	.short _021DAE58 - _021DAD5A - 2 ; case 4
	.short _021DAE92 - _021DAD5A - 2 ; case 5
_021DAD66:
	ldr r1, _021DAEB8 ; =0x0000764F
	mov r2, #0x41
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r0, #0xc
	ldrh r0, [r4, r0]
	add r1, r5, #0
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4, #0]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x44
	ldr r2, [r2, #0x48]
	add r1, #0x14
	mov r3, #7
	bl ov5_021D7308
	add r0, r5, #0
	mov r1, #0
	mov r2, #9
	mov r3, #0x1e
	bl ov5_021D64FC
	mov r0, #0
	mov r1, #0x10
	bl ov5_021D64E4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DAEBC ; =0x00000BA2
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DADB6:
	add r0, r5, #0
	add r0, #0x14
	bl ov5_021D74B8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021D650C
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, #1
	bne _021DAEB0
	cmp r7, #1
	bne _021DAEB0
	ldr r0, _021DAEBC ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DADE4:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DAE0A
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DAEB8 ; =0x0000764F
	ldr r0, [r0, #0x48]
	mov r1, #7
	mov r3, #0
	str r0, [r5, #0x14]
	bl ov5_021D7384
	add r5, #0x14
	add r0, r5, #0
	bl ov5_021D74D4
_021DAE0A:
	mov r0, #9
	mov r1, #7
	bl ov5_021D64E4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DAEBC ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DAE24:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r4, r1]
	cmp r1, #5
	bne _021DAEB0
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DAE42
	add r0, r5, #0
	add r0, #0x14
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021DAE42:
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	mov r3, #0x1e
	bl ov5_021D64FC
	ldr r0, _021DAEBC ; =0x00000BA2
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DAE58:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DAE6C
	add r0, r5, #0
	add r0, #0x14
	bl ov5_021D74B8
	add r6, r0, #0
	b _021DAE6E
_021DAE6C:
	mov r6, #1
_021DAE6E:
	add r0, r5, #0
	bl ov5_021D650C
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, #1
	bne _021DAEB0
	cmp r7, #1
	bne _021DAEB0
	ldr r0, _021DAEBC ; =0x00000BA2
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DAE92:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DAEAA
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021DAEAA:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021DAEB0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DAEB4: .word 0x00000B98
_021DAEB8: .word 0x0000764F
_021DAEBC: .word 0x00000BA2
	thumb_func_end ov5_021DAD38

	thumb_func_start ov5_021DAEC0
ov5_021DAEC0: ; 0x021DAEC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _021DB03C ; =0x00000B98
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bls _021DAED6
	b _021DB038
_021DAED6:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DAEE2: ; jump table
	.short _021DAEEE - _021DAEE2 - 2 ; case 0
	.short _021DAF3E - _021DAEE2 - 2 ; case 1
	.short _021DAF6C - _021DAEE2 - 2 ; case 2
	.short _021DAFAC - _021DAEE2 - 2 ; case 3
	.short _021DAFE0 - _021DAEE2 - 2 ; case 4
	.short _021DB01A - _021DAEE2 - 2 ; case 5
_021DAEEE:
	ldr r1, _021DB040 ; =0x00007555
	mov r2, #0x41
	str r1, [sp]
	ldr r1, _021DB044 ; =0x00007FFF
	add r0, #0xc
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrh r0, [r4, r0]
	add r1, r5, #0
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4, #0]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x44
	ldr r2, [r2, #0x48]
	add r1, #0x14
	mov r3, #6
	bl ov5_021D7308
	add r0, r5, #0
	mov r1, #0
	mov r2, #9
	mov r3, #0x1e
	bl ov5_021D64FC
	mov r0, #0
	mov r1, #0x10
	bl ov5_021D64E4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DB048 ; =0x00000BA2
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DAF3E:
	add r0, r5, #0
	add r0, #0x14
	bl ov5_021D74B8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021D650C
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, #1
	bne _021DB038
	cmp r7, #1
	bne _021DB038
	ldr r0, _021DB048 ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DAF6C:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DAF92
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DB040 ; =0x00007555
	ldr r0, [r0, #0x48]
	ldr r3, _021DB044 ; =0x00007FFF
	mov r1, #6
	str r0, [r5, #0x14]
	bl ov5_021D7384
	add r5, #0x14
	add r0, r5, #0
	bl ov5_021D74D4
_021DAF92:
	mov r0, #9
	mov r1, #7
	bl ov5_021D64E4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DB048 ; =0x00000BA2
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DAFAC:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r4, r1]
	cmp r1, #5
	bne _021DB038
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DAFCA
	add r0, r5, #0
	add r0, #0x14
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021DAFCA:
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	mov r3, #0x1e
	bl ov5_021D64FC
	ldr r0, _021DB048 ; =0x00000BA2
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DAFE0:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DAFF4
	add r0, r5, #0
	add r0, #0x14
	bl ov5_021D74B8
	add r6, r0, #0
	b _021DAFF6
_021DAFF4:
	mov r6, #1
_021DAFF6:
	add r0, r5, #0
	bl ov5_021D650C
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, #1
	bne _021DB038
	cmp r7, #1
	bne _021DB038
	ldr r0, _021DB048 ; =0x00000BA2
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DB01A:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DB032
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021DB032:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021DB038:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DB03C: .word 0x00000B98
_021DB040: .word 0x00007555
_021DB044: .word 0x00007FFF
_021DB048: .word 0x00000BA2
	thumb_func_end ov5_021DAEC0

	thumb_func_start ov5_021DB04C
ov5_021DB04C: ; 0x021DB04C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldr r0, _021DB13C ; =0x00000B98
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r4, r2]
	ldr r5, [r4, r0]
	cmp r2, #5
	bhi _021DB138
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DB074: ; jump table
	.short _021DB080 - _021DB074 - 2 ; case 0
	.short _021DB0AA - _021DB074 - 2 ; case 1
	.short _021DB0CC - _021DB074 - 2 ; case 2
	.short _021DB0DE - _021DB074 - 2 ; case 3
	.short _021DB110 - _021DB074 - 2 ; case 4
	.short _021DB12C - _021DB074 - 2 ; case 5
_021DB080:
	ldr r1, [r1, #4]
	add r0, r5, #0
	ldr r1, [r1, #0x1c]
	bl ov5_021DB614
	mov r0, #0x54
	mov r1, #1
	str r0, [sp]
	mov r0, #0x1e
	lsl r1, r1, #0x14
	str r0, [sp, #4]
	add r0, r5, #0
	lsr r2, r1, #3
	mov r3, #0x80
	bl ov5_021DB6E0
	ldr r0, _021DB140 ; =0x00000BA2
	mov r1, #1
	add sp, #8
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DB0AA:
	add r0, r5, #0
	bl ov5_021DB700
	cmp r0, #1
	bne _021DB138
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add r0, r5, #0
	bl ov5_021DB7A4
	ldr r0, _021DB140 ; =0x00000BA2
	mov r1, #3
	add sp, #8
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DB0CC:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DB140 ; =0x00000BA2
	mov r1, #3
	add sp, #8
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DB0DE:
	add r0, #0xe
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021DB138
	ldr r1, [r1, #4]
	add r0, r5, #0
	ldr r1, [r1, #0x1c]
	bl ov5_021DB614
	mov r0, #0x54
	mov r1, #2
	str r0, [sp]
	mov r0, #0x1e
	lsl r1, r1, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r2, r1, #3
	mov r3, #0x80
	bl ov5_021DB6E0
	ldr r0, _021DB140 ; =0x00000BA2
	mov r1, #4
	add sp, #8
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DB110:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r5, #0
	bl ov5_021DB700
	cmp r0, #1
	bne _021DB138
	ldr r0, _021DB140 ; =0x00000BA2
	mov r1, #5
	add sp, #8
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DB12C:
	add r0, r5, #0
	bl ov5_021DB690
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021DB138:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DB13C: .word 0x00000B98
_021DB140: .word 0x00000BA2
	thumb_func_end ov5_021DB04C

	thumb_func_start ov5_021DB144
ov5_021DB144: ; 0x021DB144
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r2, _021DB390 ; =0x00000B98
	add r4, r1, #0
	add r0, r2, #0
	add r0, #0xa
	ldrh r0, [r4, r0]
	ldr r5, [r4, r2]
	cmp r0, #5
	bls _021DB15A
	b _021DB2D4
_021DB15A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DB166: ; jump table
	.short _021DB172 - _021DB166 - 2 ; case 0
	.short _021DB1D4 - _021DB166 - 2 ; case 1
	.short _021DB208 - _021DB166 - 2 ; case 2
	.short _021DB25A - _021DB166 - 2 ; case 3
	.short _021DB28A - _021DB166 - 2 ; case 4
	.short _021DB2B6 - _021DB166 - 2 ; case 5
_021DB172:
	add r0, r5, #0
	mov r1, #0
	mov r2, #7
	mov r3, #8
	bl ov5_021D64FC
	mov r0, #0
	mov r1, #0x10
	bl ov5_021D64E4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DB394 ; =0x0000692F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021DB398 ; =0x00007FFF
	add r1, r5, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021DB39C ; =0x00000BA4
	lsl r2, r2, #2
	ldrh r0, [r4, r0]
	add r1, #0x14
	str r0, [sp, #0xc]
	ldr r3, [r4, #0]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x44
	ldr r2, [r2, #0x48]
	mov r3, #3
	bl ov5_021D7308
	add r0, r5, #0
	mov r1, #0
	add r0, #0xac
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xb4
	strh r1, [r0]
	ldr r0, _021DB3A0 ; =0x00000BA2
	mov r1, #1
	strh r1, [r4, r0]
	b _021DB2D4
_021DB1D4:
	add r2, #0xc
	ldrh r2, [r4, r2]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x44
	add r1, #0x14
	bl ov5_021D735C
	add r7, r0, #0
	add r0, r5, #0
	bl ov5_021D650C
	add r6, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, r7
	bne _021DB2D4
	cmp r6, #1
	bne _021DB2D4
	ldr r0, _021DB3A0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	b _021DB2D4
_021DB208:
	mov r0, #7
	mov r1, #9
	bl ov5_021D64E4
	ldr r0, _021DB39C ; =0x00000BA4
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DB236
	mov r0, #0x41
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DB394 ; =0x0000692F
	ldr r0, [r0, #0x48]
	ldr r3, _021DB398 ; =0x00007FFF
	mov r1, #3
	str r0, [r5, #0x14]
	bl ov5_021D7384
	add r0, r5, #0
	add r0, #0x14
	bl ov5_021D74D4
_021DB236:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add r0, r5, #0
	mov r1, #0
	add r0, #0xac
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xb4
	strh r1, [r0]
	ldr r0, _021DB3A0 ; =0x00000BA2
	mov r1, #3
	strh r1, [r4, r0]
	b _021DB2D4
_021DB25A:
	add r2, #0xe
	ldrh r0, [r4, r2]
	cmp r0, #5
	bne _021DB2D4
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	mov r3, #8
	bl ov5_021D64FC
	ldr r0, _021DB39C ; =0x00000BA4
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DB282
	add r0, r5, #0
	add r0, #0x14
	mov r1, #1
	mov r2, #0
	bl ov5_021D749C
_021DB282:
	ldr r0, _021DB3A0 ; =0x00000BA2
	mov r1, #4
	strh r1, [r4, r0]
	b _021DB2D4
_021DB28A:
	add r0, r5, #0
	bl ov5_021D650C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x14
	bl ov5_021D74B8
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov5_021D64E4
	cmp r6, r7
	bne _021DB2D4
	cmp r6, #1
	bne _021DB2D4
	ldr r0, _021DB3A0 ; =0x00000BA2
	mov r1, #5
	strh r1, [r4, r0]
	b _021DB2D4
_021DB2B6:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021DB2CE
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r3, r2, #0
	bl ov5_021D57FC
_021DB2CE:
	ldr r0, [r4, #4]
	bl ov5_021D69B8
_021DB2D4:
	ldr r0, _021DB3A0 ; =0x00000BA2
	ldrh r0, [r4, r0]
	cmp r0, #5
	beq _021DB38A
	cmp r0, #0
	beq _021DB38A
	add r0, r4, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov5_021D71B4
	ldr r0, [sp, #0x10]
	mov r2, #3
	asr r1, r0, #0x1f
	lsl r2, r2, #0xa
	mov r3, #0
	bl _ull_mul
	mov r3, #2
	mov r2, #0
	lsl r3, r3, #0xa
	add r6, r0, r3
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r6, #0xc
	orr r1, r0
	add r0, r5, #0
	add r0, #0xac
	str r1, [sp, #0x10]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x14]
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xb0
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x10]
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xb4
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xb4
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0xb4
	ldrh r1, [r0]
	lsr r0, r3, #2
	cmp r1, r0
	blo _021DB34A
	add r0, r5, #0
	add r0, #0xb4
	strh r2, [r0]
_021DB34A:
	add r3, r5, #0
	add r3, #0xac
	ldr r3, [r3, #0]
	mov r0, #0x41
	asr r7, r3, #0xc
	add r3, r5, #0
	add r3, #0xb4
	ldrh r3, [r3]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	lsr r6, r3, #3
	ldr r0, [r1, r0]
	ldr r3, _021DB3A4 ; =0x02201D38
	ldr r0, [r0, #8]
	ldrb r3, [r3, r6]
	mov r1, #2
	mov r2, #0
	add r3, r7, r3
	bl sub_0201C63C
	mov r0, #0x41
	add r5, #0xb0
	ldr r3, [r5, #0]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldr r0, [r0, #8]
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_0201C63C
_021DB38A:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DB390: .word 0x00000B98
_021DB394: .word 0x0000692F
_021DB398: .word 0x00007FFF
_021DB39C: .word 0x00000BA4
_021DB3A0: .word 0x00000BA2
_021DB3A4: .word 0x02201D38
	thumb_func_end ov5_021DB144

	thumb_func_start ov5_021DB3A8
ov5_021DB3A8: ; 0x021DB3A8
	push {r3, lr}
	sub sp, #8
	mov r2, #5
	lsl r2, r2, #8
	str r2, [sp]
	mov r2, #1
	lsl r2, r2, #8
	str r2, [sp, #4]
	mov r2, #4
	add r3, r2, #0
	bl ov5_021D9C20
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov5_021DB3A8

	thumb_func_start ov5_021DB3C4
ov5_021DB3C4: ; 0x021DB3C4
	push {r3, lr}
	sub sp, #8
	mov r2, #1
	lsl r2, r2, #0xa
	str r2, [sp]
	lsr r2, r2, #2
	str r2, [sp, #4]
	mov r2, #6
	mov r3, #1
	bl ov5_021D9C20
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021DB3C4

	thumb_func_start ov5_021DB3E0
ov5_021DB3E0: ; 0x021DB3E0
	push {lr}
	sub sp, #0xc
	ldr r0, _021DB400 ; =0x00001842
	ldr r2, _021DB404 ; =0x00000B98
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r1, [r1, r2]
	ldr r3, _021DB408 ; =0x000065EF
	mov r2, #3
	bl ov5_021D9DFC
	add sp, #0xc
	pop {pc}
	; .align 2, 0
_021DB400: .word 0x00001842
_021DB404: .word 0x00000B98
_021DB408: .word 0x000065EF
	thumb_func_end ov5_021DB3E0

	thumb_func_start ov5_021DB40C
ov5_021DB40C: ; 0x021DB40C
	push {lr}
	sub sp, #0xc
	ldr r0, _021DB42C ; =0x00007B2D
	ldr r2, _021DB430 ; =0x00000B98
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r1, [r1, r2]
	ldr r3, _021DB434 ; =0x0000672F
	mov r2, #2
	bl ov5_021D9DFC
	add sp, #0xc
	pop {pc}
	; .align 2, 0
_021DB42C: .word 0x00007B2D
_021DB430: .word 0x00000B98
_021DB434: .word 0x0000672F
	thumb_func_end ov5_021DB40C

	thumb_func_start ov5_021DB438
ov5_021DB438: ; 0x021DB438
	push {lr}
	sub sp, #0xc
	mov r0, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _021DB458 ; =0x00000B98
	add r0, r1, #0
	ldr r1, [r1, r2]
	ldr r3, _021DB45C ; =0x0000672F
	mov r2, #2
	bl ov5_021D9DFC
	add sp, #0xc
	pop {pc}
	; .align 2, 0
_021DB458: .word 0x00000B98
_021DB45C: .word 0x0000672F
	thumb_func_end ov5_021DB438

	thumb_func_start ov5_021DB460
ov5_021DB460: ; 0x021DB460
	push {lr}
	sub sp, #0xc
	mov r0, #5
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _021DB484 ; =0x00000B98
	add r0, r1, #0
	ldr r1, [r1, r2]
	ldr r3, _021DB488 ; =0x0000672F
	mov r2, #2
	bl ov5_021D9DFC
	add sp, #0xc
	pop {pc}
	nop
_021DB484: .word 0x00000B98
_021DB488: .word 0x0000672F
	thumb_func_end ov5_021DB460

	thumb_func_start ov5_021DB48C
ov5_021DB48C: ; 0x021DB48C
	push {lr}
	sub sp, #0xc
	ldr r0, _021DB4AC ; =0x00000421
	ldr r2, _021DB4B0 ; =0x00000B98
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r1, [r1, r2]
	ldr r3, _021DB4B4 ; =0x00004B6F
	mov r2, #1
	bl ov5_021D9DFC
	add sp, #0xc
	pop {pc}
	; .align 2, 0
_021DB4AC: .word 0x00000421
_021DB4B0: .word 0x00000B98
_021DB4B4: .word 0x00004B6F
	thumb_func_end ov5_021DB48C

	thumb_func_start ov5_021DB4B8
ov5_021DB4B8: ; 0x021DB4B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021DB4E0 ; =0x00000B9C
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021DB4CA
	bl GF_AssertFail
_021DB4CA:
	ldr r1, _021DB4E0 ; =0x00000B9C
	mov r0, #1
	str r0, [r5, r1]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add r1, r1, #4
	strh r0, [r5, r1]
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_021DB4E0: .word 0x00000B9C
	thumb_func_end ov5_021DB4B8

	thumb_func_start ov5_021DB4E4
ov5_021DB4E4: ; 0x021DB4E4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xba
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	mov r1, #0
	bl sub_020057A4
	ldr r0, _021DB4FC ; =0x00000B9C
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021DB4FC: .word 0x00000B9C
	thumb_func_end ov5_021DB4E4

	thumb_func_start ov5_021DB500
ov5_021DB500: ; 0x021DB500
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	bl sub_02013B54
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	bl sub_02013B54
	ldr r7, [sp, #0xc]
	str r0, [sp, #8]
	mov r4, #0
	add r6, r0, #0
_021DB51C:
	mov r0, #2
	ldrsh r2, [r5, r0]
	cmp r4, r2
	bgt _021DB53A
	add r0, sp, #0x14
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #4]
	add r3, r4, #0
	bl ov5_021DB588
	b _021DB570
_021DB53A:
	lsl r0, r2, #1
	cmp r4, r0
	bgt _021DB55C
	sub r0, r0, r4
	lsl r1, r0, #1
	ldr r0, [sp, #0xc]
	ldrh r0, [r0, r1]
	str r0, [sp, #0x14]
	mov r0, #2
	ldrsh r0, [r5, r0]
	lsl r0, r0, #1
	sub r0, r0, r4
	lsl r1, r0, #1
	ldr r0, [sp, #8]
	ldrh r0, [r0, r1]
	str r0, [sp, #0x10]
	b _021DB570
_021DB55C:
	add r0, sp, #0x14
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #4]
	add r3, r4, #0
	bl ov5_021DB588
_021DB570:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	strh r0, [r7]
	ldr r0, [sp, #0x10]
	add r7, r7, #2
	strh r0, [r6]
	add r6, r6, #2
	cmp r4, #0xc0
	blt _021DB51C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DB500

	thumb_func_start ov5_021DB588
ov5_021DB588: ; 0x021DB588
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	ldr r5, [sp, #0x20]
	ldr r4, [sp, #0x24]
	sub r1, r3, r2
	bpl _021DB598
	neg r1, r1
_021DB598:
	cmp r1, r0
	blt _021DB5A6
	mov r0, #0
	str r0, [r5, #0]
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_021DB5A6:
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	asr r7, r1, #0x1f
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl _ull_mul
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r6, r1, #0
	add r1, r7, #0
	add r2, r0, #0
	add r3, r7, #0
	bl _ull_mul
	add r2, r0, #0
	add r3, r1, #0
	mov r0, #2
	ldr r1, [sp, #8]
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r1, r0
	adc r6, r7
	lsl r1, r6, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r2, r1
	adc r3, r7
	lsl r1, r3, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r0, r0, r2
	bl FX_Sqrt
	asr r2, r0, #0xc
	ldr r0, [sp]
	sub r0, r0, r2
	str r0, [r5, #0]
	bpl _021DB5FE
	add r0, r7, #0
	str r0, [r5, #0]
_021DB5FE:
	ldr r1, [r5, #0]
	lsl r0, r2, #1
	add r0, r1, r0
	str r0, [r4, #0]
	cmp r0, #0xff
	ble _021DB60E
	mov r0, #0xff
	str r0, [r4, #0]
_021DB60E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DB588

	thumb_func_start ov5_021DB614
ov5_021DB614: ; 0x021DB614
	push {r4, r5, r6, lr}
	ldr r2, _021DB680 ; =0x0000062C
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl memset
	mov r2, #0x6b
	add r1, r5, #0
	lsl r2, r2, #2
	mov r0, #4
	add r1, #0x2c
	add r2, r5, r2
	bl sub_02013B10
	mov r1, #0xcb
	ldr r2, _021DB684 ; =0x000004AC
	lsl r1, r1, #2
	str r0, [r5, #0x1c]
	mov r0, #4
	add r1, r5, r1
	add r2, r5, r2
	bl sub_02013B10
	str r0, [r5, #0x20]
	mov r0, #0xcb
	ldr r1, _021DB684 ; =0x000004AC
	mov r3, #0
	add r6, r5, #0
	mov r2, #0xff
	lsl r0, r0, #2
_021DB652:
	strh r2, [r6, r0]
	strh r2, [r6, r1]
	add r3, r3, #1
	add r6, r6, #2
	cmp r3, #0xc0
	blt _021DB652
	ldr r0, _021DB688 ; =ov5_021DB7F8
	add r1, r5, #0
	mov r2, #0x78
	str r4, [r5, #0x14]
	bl sub_0200DA3C
	mov r2, #1
	ldr r0, _021DB68C ; =ov5_021DB78C
	add r1, r5, #0
	lsl r2, r2, #0xa
	bl sub_0200DA3C
	str r0, [r5, #0x24]
	mov r0, #0
	str r0, [r5, #0x28]
	pop {r4, r5, r6, pc}
	nop
_021DB680: .word 0x0000062C
_021DB684: .word 0x000004AC
_021DB688: .word ov5_021DB7F8
_021DB68C: .word ov5_021DB78C
	thumb_func_end ov5_021DB614

	thumb_func_start ov5_021DB690
ov5_021DB690: ; 0x021DB690
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #0x1a
	mov r1, #0xe
	ldr r2, [r0, #0]
	lsl r1, r1, #0xc
	and r1, r2
	lsr r3, r1, #0xd
	ldr r2, [r0, #0]
	ldr r1, _021DB6D8 ; =0xFFFF1FFF
	and r2, r1
	mov r1, #2
	bic r3, r1
	lsl r1, r3, #0xd
	orr r1, r2
	str r1, [r0, #0]
	ldr r0, [r4, #0x18]
	bl ov5_021EF43C
	ldr r0, [r4, #0x24]
	bl sub_0200DA58
	ldr r0, [r4, #0x1c]
	bl sub_02013B40
	ldr r0, [r4, #0x20]
	bl sub_02013B40
	ldr r2, _021DB6DC ; =0x0000062C
	add r0, r4, #0
	mov r1, #0
	bl memset
	pop {r4, pc}
	nop
_021DB6D8: .word 0xFFFF1FFF
_021DB6DC: .word 0x0000062C
	thumb_func_end ov5_021DB690

	thumb_func_start ov5_021DB6E0
ov5_021DB6E0: ; 0x021DB6E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r3, #0
	ldr r3, [sp, #0x14]
	add r0, r4, #4
	bl ov5_021D6538
	ldr r0, [sp, #0x10]
	strh r5, [r4]
	strh r0, [r4, #2]
	mov r0, #1
	str r0, [r4, #0x28]
	add r0, r4, #0
	bl ov5_021DB500
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DB6E0

	thumb_func_start ov5_021DB700
ov5_021DB700: ; 0x021DB700
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x28]
	cmp r1, #0
	bne _021DB712
	bl ov5_021DB7CC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DB712:
	add r0, r5, #4
	bl ov5_021D6548
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021DB500
	cmp r4, #1
	bne _021DB728
	mov r0, #0
	str r0, [r5, #0x28]
_021DB728:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DB700

	thumb_func_start ov5_021DB72C
ov5_021DB72C: ; 0x021DB72C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _021DB784 ; =0x04000006
	add r5, r1, #0
	ldrh r7, [r0]
	mov r6, #0
	add r4, sp, #0
_021DB73A:
	ldr r0, [r5, #0x1c]
	bl sub_02013B68
	add r6, r6, #1
	add r5, r5, #4
	stmia r4!, {r0}
	cmp r6, #2
	blt _021DB73A
	cmp r7, #0xc0
	bge _021DB780
	add r7, r7, #1
	cmp r7, #0xc0
	blt _021DB756
	sub r7, #0xc0
_021DB756:
	ldr r1, _021DB788 ; =0x04000004
	mov r0, #2
	ldrh r2, [r1]
	tst r0, r2
	beq _021DB780
	ldr r2, [sp]
	lsl r0, r7, #1
	ldrh r2, [r2, r0]
	lsl r3, r2, #8
	mov r2, #0xff
	lsl r2, r2, #8
	and r3, r2
	ldr r2, [sp, #4]
	ldrh r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r0, r3
	strh r0, [r1, #0x3e]
	mov r0, #0xc0
	add r1, #0x42
	strh r0, [r1]
_021DB780:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DB784: .word 0x04000006
_021DB788: .word 0x04000004
	thumb_func_end ov5_021DB72C

	thumb_func_start ov5_021DB78C
ov5_021DB78C: ; 0x021DB78C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_021DB792:
	ldr r0, [r5, #0x1c]
	bl sub_02013B94
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021DB792
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021DB78C

	thumb_func_start ov5_021DB7A4
ov5_021DB7A4: ; 0x021DB7A4
	ldr r3, _021DB7B0 ; =sub_0200DA3C
	add r1, r0, #0
	ldr r0, _021DB7B4 ; =ov5_021DB7B8
	mov r2, #0x80
	bx r3
	nop
_021DB7B0: .word sub_0200DA3C
_021DB7B4: .word ov5_021DB7B8
	thumb_func_end ov5_021DB7A4

	thumb_func_start ov5_021DB7B8
ov5_021DB7B8: ; 0x021DB7B8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ov5_021DB690
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DB7B8

	thumb_func_start ov5_021DB7CC
ov5_021DB7CC: ; 0x021DB7CC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #6
	add r5, r0, #0
	mov r6, #0
	lsl r7, r7, #6
_021DB7D6:
	ldr r0, [r5, #0x1c]
	bl sub_02013B68
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	bl sub_02013B54
	add r1, r4, #0
	add r2, r7, #0
	bl memcpy
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021DB7D6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DB7CC

	thumb_func_start ov5_021DB7F8
ov5_021DB7F8: ; 0x021DB7F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, _021DB878 ; =0x0400004A
	add r5, r0, #0
	ldrb r0, [r1]
	add r7, sp, #0
	ldr r3, _021DB87C ; =0xFFFFC0FF
	strb r0, [r7]
	add r0, r1, #0
	sub r0, #0x4a
	ldr r2, [r0, #0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	and r0, r2
	lsr r2, r0, #0xd
	sub r0, r1, #2
	ldrh r6, [r0]
	and r6, r3
	mov r3, #0x3f
	lsl r3, r3, #8
	orr r6, r3
	lsr r3, r1, #0xd
	orr r3, r6
	strh r3, [r0]
	ldrh r1, [r1]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x3e
	orr r0, r1
	ldrb r1, [r7]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	beq _021DB83E
	mov r1, #0x20
	orr r0, r1
_021DB83E:
	ldr r1, _021DB878 ; =0x0400004A
	mov r3, #0xff
	strh r0, [r1]
	add r0, r1, #0
	sub r0, #8
	strh r3, [r0]
	sub r0, r1, #4
	mov r3, #0xc0
	strh r3, [r0]
	sub r1, #0x4a
	ldr r3, [r1, #0]
	ldr r0, _021DB880 ; =0xFFFF1FFF
	and r0, r3
	mov r3, #2
	orr r2, r3
	lsl r2, r2, #0xd
	orr r0, r2
	str r0, [r1, #0]
	ldr r0, [r4, #0x14]
	ldr r1, _021DB884 ; =ov5_021DB72C
	add r2, r4, #0
	bl ov5_021EF418
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DB878: .word 0x0400004A
_021DB87C: .word 0xFFFFC0FF
_021DB880: .word 0xFFFF1FFF
_021DB884: .word ov5_021DB72C
	thumb_func_end ov5_021DB7F8

	.rodata


	.global Unk_ov5_021F8CBC
Unk_ov5_021F8CBC: ; 0x021F8CBC
	.incbin "incbin/overlay5_rodata.bin", 0x3A8, 0x3B8 - 0x3A8

	.global Unk_ov5_021F8CCC
Unk_ov5_021F8CCC: ; 0x021F8CCC
	.incbin "incbin/overlay5_rodata.bin", 0x3B8, 0x3C8 - 0x3B8

	.global Unk_ov5_021F8CDC
Unk_ov5_021F8CDC: ; 0x021F8CDC
	.incbin "incbin/overlay5_rodata.bin", 0x3C8, 0x3D8 - 0x3C8

	.global Unk_ov5_021F8CEC
Unk_ov5_021F8CEC: ; 0x021F8CEC
	.incbin "incbin/overlay5_rodata.bin", 0x3D8, 0x3E8 - 0x3D8

	.global Unk_ov5_021F8CFC
Unk_ov5_021F8CFC: ; 0x021F8CFC
	.incbin "incbin/overlay5_rodata.bin", 0x3E8, 0x3FC - 0x3E8

	.global Unk_ov5_021F8D10
Unk_ov5_021F8D10: ; 0x021F8D10
	.incbin "incbin/overlay5_rodata.bin", 0x3FC, 0x41C - 0x3FC

	.global Unk_ov5_021F8D30
Unk_ov5_021F8D30: ; 0x021F8D30
	.incbin "incbin/overlay5_rodata.bin", 0x41C, 0x43C - 0x41C

	.global Unk_ov5_021F8D50
Unk_ov5_021F8D50: ; 0x021F8D50
	.incbin "incbin/overlay5_rodata.bin", 0x43C, 0x45C - 0x43C

	.global Unk_ov5_021F8D70
Unk_ov5_021F8D70: ; 0x021F8D70
	.incbin "incbin/overlay5_rodata.bin", 0x45C, 0x47C - 0x45C

	.global Unk_ov5_021F8D90
Unk_ov5_021F8D90: ; 0x021F8D90
	.incbin "incbin/overlay5_rodata.bin", 0x47C, 0x500 - 0x47C

	.global Unk_ov5_021F8E14
Unk_ov5_021F8E14: ; 0x021F8E14
	.incbin "incbin/overlay5_rodata.bin", 0x500, 0x20


	.data


	.global Unk_ov5_02201D38
Unk_ov5_02201D38: ; 0x02201D38
	.incbin "incbin/overlay5_data.bin", 0x18, 0x58 - 0x18

	.global Unk_ov5_02201D78
Unk_ov5_02201D78: ; 0x02201D78
	.incbin "incbin/overlay5_data.bin", 0x58, 0x364

