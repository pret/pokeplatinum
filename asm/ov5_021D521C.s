	.include "macros/function.inc"
	.include "include/ov5_021D521C.inc"

	

	.text


	thumb_func_start ov5_021D521C
ov5_021D521C: ; 0x021D521C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #4
	blo _021D522A
	bl GF_AssertFail
_021D522A:
	mov r0, #4
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0xc]
	add r0, r6, #0
	add r1, r4, #4
	bl ov5_021D53D4
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	bl sub_020138C8
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r3, r1, #1
	ldr r5, [r4, #0]
	mov r1, #0
	cmp r5, #0
	bls _021D526A
	ldr r2, [r4, #4]
_021D5258:
	ldr r0, [r2, #0]
	cmp r0, r3
	bls _021D5262
	str r1, [r4, #8]
	b _021D526A
_021D5262:
	add r1, r1, #1
	add r2, #0x30
	cmp r1, r5
	blo _021D5258
_021D526A:
	mov r0, #1
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl ov5_021D538C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D521C

	thumb_func_start ov5_021D5278
ov5_021D5278: ; 0x021D5278
	push {r4, lr}
	add r4, r0, #0
	bne _021D5282
	bl GF_AssertFail
_021D5282:
	ldr r0, [r4, #0]
	add r0, r0, #4
	bl ov5_021D555C
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov5_021D5278

	thumb_func_start ov5_021D5298
ov5_021D5298: ; 0x021D5298
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _021D52A2
	bl GF_AssertFail
_021D52A2:
	bl sub_020138C8
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	ldr r1, [r4, #0]
	cmp r1, #1
	bls _021D52F0
	ldr r1, [r4, #8]
	sub r5, r1, #1
	bmi _021D52C2
	mov r2, #0x30
	ldr r3, [r4, #4]
	mul r2, r5
	ldr r2, [r3, r2]
	b _021D52C4
_021D52C2:
	mov r2, #0
_021D52C4:
	mov r3, #0x30
	ldr r5, [r4, #4]
	mul r3, r1
	ldr r1, [r5, r3]
	cmp r0, r1
	bge _021D52D4
	cmp r0, r2
	bge _021D52F0
_021D52D4:
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldr r0, [r4, #0]
	cmp r1, r0
	blo _021D52E4
	mov r0, #0
	str r0, [r4, #8]
_021D52E4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021D52F0
	add r0, r4, #0
	bl ov5_021D538C
_021D52F0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5298

	thumb_func_start ov5_021D52F4
ov5_021D52F4: ; 0x021D52F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	add r6, r1, #0
	mov r4, #0
	add r5, r0, #0
	add r7, r0, #0
_021D5302:
	ldr r0, [sp, #4]
	ldrb r1, [r0, #4]
	mov r0, #1
	lsl r0, r4
	tst r0, r1
	beq _021D5330
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	mov r2, #0xe
	mov r3, #0x10
	str r0, [sp]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	add r0, r6, #0
	add r1, r4, #0
	bl ov5_021D5A50
	ldrh r2, [r7, #6]
	add r0, r6, #0
	add r1, r4, #0
	bl ov5_021D5A78
	b _021D534A
_021D5330:
	mov r0, #0
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov5_021D5A50
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov5_021D5A78
_021D534A:
	add r4, r4, #1
	add r5, r5, #6
	add r7, r7, #2
	cmp r4, #4
	blt _021D5302
	ldr r1, [sp, #4]
	mov r2, #0
	ldrh r1, [r1, #0x26]
	add r0, r6, #0
	add r3, r2, #0
	bl ov5_021D5A8C
	ldr r1, [sp, #4]
	add r0, r6, #0
	ldrh r1, [r1, #0x28]
	mov r2, #1
	bl ov5_021D5AA0
	ldr r1, [sp, #4]
	mov r2, #0
	ldrh r1, [r1, #0x2a]
	add r0, r6, #0
	add r3, r2, #0
	bl ov5_021D5AB4
	ldr r1, [sp, #4]
	add r0, r6, #0
	ldrh r1, [r1, #0x2c]
	mov r2, #1
	bl ov5_021D5AC8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D52F4

	thumb_func_start ov5_021D538C
ov5_021D538C: ; 0x021D538C
	add r3, r0, #0
	ldr r1, [r3, #8]
	mov r0, #0x30
	mul r0, r1
	ldr r2, [r3, #4]
	ldr r1, [r3, #0xc]
	ldr r3, _021D53A0 ; =ov5_021D52F4
	add r0, r2, r0
	bx r3
	nop
_021D53A0: .word ov5_021D52F4
	thumb_func_end ov5_021D538C

	thumb_func_start ov5_021D53A4
ov5_021D53A4: ; 0x021D53A4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl NNSi_G3dModifyMatFlag
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl NNSi_G3dModifyMatFlag
	mov r2, #2
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #8
	bl NNSi_G3dModifyMatFlag
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl NNSi_G3dModifyMatFlag
	pop {r4, pc}
	thumb_func_end ov5_021D53A4

	thumb_func_start ov5_021D53D4
ov5_021D53D4: ; 0x021D53D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x24
	add r3, r0, #0
	str r1, [sp, #4]
	mov r2, #0
	add r1, r3, #0
	mov r0, #0xb0
	mov r3, #4
	str r2, [sp]
	bl sub_02006FE8
	mov r1, #0
	str r0, [sp, #0x18]
	str r1, [sp, #0xc]
	add r5, sp, #0x120
	mov r6, #1
	mov r7, #2
	add r4, r1, #0
_021D53FA:
	add r1, r5, #0
	mov r2, #0xd
	bl sub_0201E0B8
	ldrsb r1, [r5, r4]
	cmp r1, #0x45
	bne _021D5414
	ldrsb r1, [r5, r6]
	cmp r1, #0x4f
	bne _021D5414
	ldrsb r1, [r5, r7]
	cmp r1, #0x46
	beq _021D5462
_021D5414:
	add r1, r5, #0
	mov r2, #0xd
	bl sub_0201E0B8
	add r1, r5, #0
	mov r2, #0xd
	bl sub_0201E0B8
	add r1, r5, #0
	mov r2, #0xd
	bl sub_0201E0B8
	add r1, r5, #0
	mov r2, #0xd
	bl sub_0201E0B8
	add r1, r5, #0
	mov r2, #0xd
	bl sub_0201E0B8
	add r1, r5, #0
	mov r2, #0xd
	bl sub_0201E0B8
	add r1, r5, #0
	mov r2, #0xd
	bl sub_0201E0B8
	add r1, r5, #0
	mov r2, #0xd
	bl sub_0201E0B8
	add r1, r5, #0
	mov r2, #0xd
	bl sub_0201E0B8
	ldr r1, [sp, #0xc]
	add r1, r1, #1
	str r1, [sp, #0xc]
_021D5462:
	mov r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #0x45
	bne _021D53FA
	mov r1, #1
	ldrsb r1, [r5, r1]
	cmp r1, #0x4f
	bne _021D53FA
	mov r1, #2
	ldrsb r1, [r5, r1]
	cmp r1, #0x46
	bne _021D53FA
	ldr r0, [sp, #0xc]
	mov r1, #0x30
	add r4, r0, #0
	mul r4, r1
	mov r0, #4
	add r1, r4, #0
	bl sub_02018144
	ldr r1, [sp, #4]
	add r2, r4, #0
	str r0, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	mov r1, #0
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x18]
	cmp r1, #0
	ble _021D5548
	ldr r1, [sp, #0x1c]
	str r1, [sp, #0x14]
_021D54A6:
	ldr r1, [sp, #4]
	mov r2, #0xd
	ldr r5, [r1, #0]
	ldr r1, [sp, #0x14]
	add r4, r5, r1
	add r1, sp, #0x120
	bl sub_0201E0B8
	str r0, [sp, #8]
	add r0, sp, #0x120
	add r1, sp, #0x20
	mov r2, #0x2c
	bl sub_0201E0B8
	add r0, sp, #0x20
	bl sub_0201E0FC
	ldr r1, [sp, #0x14]
	add r6, r4, #0
	str r0, [r5, r1]
	add r0, r4, #6
	mov r7, #0
	add r6, #0xe
	str r0, [sp, #0x10]
	add r5, r4, #0
_021D54D8:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	bl ov5_021D5570
	str r0, [sp, #8]
	ldrh r1, [r5, #6]
	ldr r0, _021D5558 ; =0x0000FFFF
	cmp r1, r0
	beq _021D54F8
	mov r0, #1
	ldrb r1, [r4, #4]
	lsl r0, r7
	orr r0, r1
	strb r0, [r4, #4]
	b _021D54FC
_021D54F8:
	mov r0, #0
	strh r0, [r5, #6]
_021D54FC:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #2
	add r6, r6, #6
	add r5, r5, #2
	str r0, [sp, #0x10]
	cmp r7, #4
	blt _021D54D8
	add r1, r4, #0
	ldr r0, [sp, #8]
	add r1, #0x26
	bl ov5_021D5660
	add r1, r4, #0
	add r1, #0x28
	bl ov5_021D5660
	add r1, r4, #0
	add r1, #0x2a
	bl ov5_021D5660
	add r4, #0x2c
	add r1, r4, #0
	bl ov5_021D5660
	add r1, sp, #0x120
	mov r2, #0xd
	bl sub_0201E0B8
	ldr r1, [sp, #0x14]
	add r1, #0x30
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	add r2, r1, #1
	ldr r1, [sp, #0xc]
	str r2, [sp, #0x1c]
	cmp r2, r1
	blt _021D54A6
_021D5548:
	ldr r1, [sp, #0x18]
	mov r0, #4
	bl sub_02018238
	ldr r0, [sp, #0xc]
	add sp, #0x1fc
	add sp, #0x24
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D5558: .word 0x0000FFFF
	thumb_func_end ov5_021D53D4

	thumb_func_start ov5_021D555C
ov5_021D555C: ; 0x021D555C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D555C

	thumb_func_start ov5_021D5570
ov5_021D5570: ; 0x021D5570
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x20
	str r1, [sp, #4]
	add r7, r2, #0
	add r1, sp, #0x11c
	mov r2, #0xd
	bl sub_0201E0B8
	str r0, [sp]
	add r0, sp, #0x11c
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl sub_0201E0B8
	add r4, r0, #0
	add r0, sp, #0x1c
	bl sub_0201E0FC
	cmp r0, #1
	bne _021D5648
	mov r6, #0
	add r5, sp, #8
_021D559E:
	add r0, r4, #0
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl sub_0201E0B8
	add r4, r0, #0
	add r0, sp, #0x1c
	bl sub_0201E0FC
	strh r0, [r5]
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #3
	blt _021D559E
	add r1, sp, #8
	ldrh r0, [r1, #4]
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	lsl r0, r0, #0xa
	mov r6, #0
	lsl r1, r1, #5
	orr r1, r2
	orr r1, r0
	ldr r0, [sp, #4]
	add r5, sp, #0x10
	strh r1, [r0]
_021D55D2:
	add r0, r4, #0
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl sub_0201E0B8
	add r4, r0, #0
	add r0, sp, #0x1c
	bl sub_0201E0FC
	add r6, r6, #1
	stmia r5!, {r0}
	cmp r6, #3
	blt _021D55D2
	ldr r0, [sp, #0x10]
	strh r0, [r7]
	ldr r0, [sp, #0x14]
	strh r0, [r7, #2]
	ldr r0, [sp, #0x18]
	strh r0, [r7, #4]
	mov r0, #0
	ldrsh r1, [r7, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021D5606
	strh r0, [r7]
_021D5606:
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, _021D5658 ; =0xFFFFF000
	cmp r1, r0
	bge _021D5612
	strh r0, [r7]
_021D5612:
	mov r0, #2
	ldrsh r2, [r7, r0]
	lsl r1, r0, #0xb
	cmp r2, r1
	ble _021D5620
	lsl r0, r0, #0xb
	strh r0, [r7, #2]
_021D5620:
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, _021D5658 ; =0xFFFFF000
	cmp r1, r0
	bge _021D562C
	strh r0, [r7, #2]
_021D562C:
	mov r0, #4
	ldrsh r2, [r7, r0]
	lsl r1, r0, #0xa
	cmp r2, r1
	ble _021D563A
	lsl r0, r0, #0xa
	strh r0, [r7, #4]
_021D563A:
	mov r0, #4
	ldrsh r1, [r7, r0]
	ldr r0, _021D5658 ; =0xFFFFF000
	cmp r1, r0
	bge _021D564E
	strh r0, [r7, #4]
	b _021D564E
_021D5648:
	ldr r1, _021D565C ; =0x0000FFFF
	ldr r0, [sp, #4]
	strh r1, [r0]
_021D564E:
	ldr r0, [sp]
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	nop
_021D5658: .word 0xFFFFF000
_021D565C: .word 0x0000FFFF
	thumb_func_end ov5_021D5570

	thumb_func_start ov5_021D5660
ov5_021D5660: ; 0x021D5660
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	str r1, [sp, #4]
	add r1, sp, #0x10c
	add r1, #2
	mov r2, #0xd
	bl sub_0201E0B8
	add r6, sp, #0x10c
	add r7, sp, #0xc
	str r0, [sp]
	add r6, #2
	mov r4, #0
	add r5, sp, #8
	add r7, #2
_021D5680:
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x2c
	bl sub_0201E0B8
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0201E0FC
	strh r0, [r5]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _021D5680
	add r0, sp, #8
	ldrh r1, [r0, #4]
	lsl r2, r1, #0xa
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsl r0, r0, #5
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, [sp, #4]
	strh r1, [r0]
	ldr r0, [sp]
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5660