	.include "macros/function.inc"
	.include "overlay005/ov5_021F428C.inc"

	

	.text


	thumb_func_start ov5_021F428C
ov5_021F428C: ; 0x021F428C
	push {r3, r4, r5, lr}
	mov r1, #2
	mov r2, #0
	lsl r1, r1, #8
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #8]
	bl ov5_021F431C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F428C

	thumb_func_start ov5_021F42A8
ov5_021F42A8: ; 0x021F42A8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F42BA
	bl sub_020181C4
_021F42BA:
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F42C8
	bl sub_020181C4
_021F42C8:
	add r0, r4, #0
	bl ov5_021F4370
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F42A8

	thumb_func_start ov5_021F42D8
ov5_021F42D8: ; 0x021F42D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x1f
	add r7, r0, #0
	add r4, r2, #0
	bl ov5_021DF55C
	add r6, r0, #0
	str r4, [r6, #4]
	str r5, [r6, #0]
	cmp r5, #0
	beq _021F4302
	mov r2, #0
	add r0, r7, #0
	lsl r1, r5, #2
	add r3, r2, #0
	bl ov5_021DF53C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r6, r1]
_021F4302:
	cmp r4, #0
	beq _021F4318
	mov r2, #0
	add r0, r7, #0
	lsl r1, r4, #2
	add r3, r2, #0
	bl ov5_021DF53C
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r6, r1]
_021F4318:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F42D8

	thumb_func_start ov5_021F431C
ov5_021F431C: ; 0x021F431C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	ldr r4, _021F4368 ; =0x022006DC
	mov r6, #0
	add r5, #0xc
_021F4328:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7, #8]
	ldr r3, [r4, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov5_021DFB00
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r6, #3
	blt _021F4328
	add r5, r7, #0
	ldr r4, _021F436C ; =0x02200720
	mov r6, #0
	add r5, #0x48
_021F434A:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7, #8]
	ldr r3, [r4, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov5_021DFB24
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x24
	cmp r6, #0xc
	blt _021F434A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4368: .word 0x022006DC
_021F436C: .word 0x02200720
	thumb_func_end ov5_021F431C

	thumb_func_start ov5_021F4370
ov5_021F4370: ; 0x021F4370
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r5, #0
	mov r6, #0
	add r4, #0xc
_021F437A:
	add r0, r4, #0
	bl sub_0207395C
	add r6, r6, #1
	add r4, #0x14
	cmp r6, #3
	blt _021F437A
	mov r4, #0
	add r5, #0x48
_021F438C:
	add r0, r5, #0
	bl sub_02073AA8
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #0xc
	blt _021F438C
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021F4370

	thumb_func_start ov5_021F439C
ov5_021F439C: ; 0x021F439C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r0, #0x40]
	mov r1, #0x1f
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x2c]
	bl ov5_021DF55C
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _021F43C0
	ldr r4, [r6, #0]
	mov r0, #0x7e
	b _021F43C4
_021F43C0:
	ldr r4, [r6, #4]
	mov r0, #0x7f
_021F43C4:
	lsl r0, r0, #2
	ldr r7, [r6, r0]
	cmp r4, #0
	bne _021F43D0
	bl GF_AssertFail
_021F43D0:
	ldr r0, [sp, #4]
	mov r1, #0
	strh r0, [r5, #2]
	ldr r0, [sp, #8]
	cmp r4, #0
	strh r0, [r5, #4]
	ldr r0, [sp, #0xc]
	str r0, [r5, #8]
	ldr r0, [sp]
	str r0, [r5, #0x10]
	str r6, [r5, #0xc]
	ble _021F4400
	add r2, r7, #0
_021F43EA:
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _021F43F8
	lsl r0, r1, #2
	add sp, #0x10
	add r0, r7, r0
	pop {r3, r4, r5, r6, r7, pc}
_021F43F8:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, r4
	blt _021F43EA
_021F4400:
	bl GF_AssertFail
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F439C

	thumb_func_start ov5_021F440C
ov5_021F440C: ; 0x021F440C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r2, r0, #0
	add r6, r2, #0
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	add r3, #0x84
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldrsh r0, [r2, r1]
	mov r3, #4
	strh r0, [r4, #2]
	ldrsh r0, [r2, r3]
	strh r0, [r4, #4]
	mov r0, #1
	ldrsb r2, [r2, r0]
	lsl r0, r0, #0xc
	strb r2, [r4, #1]
	str r0, [r4, #8]
	ldrsh r0, [r4, r1]
	ldrsh r1, [r4, r3]
	add r2, sp, #0
	bl sub_02064450
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #0
	bl sub_020644A4
	add r4, #0x8c
	mov r0, #6
	ldr r1, [r4, #0]
	lsl r0, r0, #0xc
	add r0, r1, r0
	ldr r2, [sp, #4]
	add r1, sp, #0
	add r0, r2, r0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov5_021F440C

	thumb_func_start ov5_021F4474
ov5_021F4474: ; 0x021F4474
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r5, [r0, #0x40]
	mov r4, #0
	str r4, [sp]
	add r4, sp, #8
	str r4, [sp, #4]
	bl ov5_021F439C
	add r4, r0, #0
	add r0, sp, #8
	mov r2, #0
	str r0, [sp]
	ldr r1, _021F44A0 ; =0x0220070C
	add r0, r5, #0
	add r3, r2, #0
	str r2, [sp, #4]
	bl ov5_021DF72C
	str r0, [r4, #0]
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
_021F44A0: .word 0x0220070C
	thumb_func_end ov5_021F4474

	thumb_func_start ov5_021F44A4
ov5_021F44A4: ; 0x021F44A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	bl sub_02071598
	add r7, r0, #0
	ldr r0, [r7, #0x6c]
	str r0, [sp, #4]
	ldr r0, [r7, #0x74]
	cmp r0, #0
	beq _021F44BC
	bl GF_AssertFail
_021F44BC:
	mov r2, #1
	ldr r0, [sp, #4]
	str r2, [r7, #0]
	ldr r0, [r0, #8]
	mov r1, #0x94
	mov r3, #0
	bl ov5_021DF53C
	str r0, [r7, #0x74]
	ldr r1, [r7, #0x6c]
	add r0, r7, #0
	add r0, #0xc
	add r1, #0xc
	bl sub_02073B70
	mov r0, #0
	str r0, [sp, #8]
	add r5, r0, #0
	ldr r0, [sp, #4]
	ldr r4, _021F4538 ; =0x022006E8
	str r0, [sp, #0xc]
	add r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	add r0, #0x48
	str r0, [sp, #0x10]
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #0xc
	str r0, [sp, #0x14]
_021F44FA:
	mov r0, #0
	str r0, [sp]
	ldr r3, [r4, #0]
	ldr r0, [sp, #4]
	ldr r1, [r7, #0x74]
	mov r6, #0x24
	mul r6, r3
	ldr r3, [sp, #0x10]
	add r1, r1, #4
	ldr r0, [r0, #8]
	ldr r2, [sp, #0xc]
	add r1, r1, r5
	add r3, r3, r6
	bl ov5_021DFB40
	ldr r1, [r7, #0x74]
	ldr r0, [sp, #0x14]
	add r1, r1, #4
	add r1, r1, r5
	bl sub_02073B84
	ldr r0, [sp, #8]
	add r4, r4, #4
	add r0, r0, #1
	add r5, #0x24
	str r0, [sp, #8]
	cmp r0, #4
	blt _021F44FA
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4538: .word 0x022006E8
	thumb_func_end ov5_021F44A4

	thumb_func_start ov5_021F453C
ov5_021F453C: ; 0x021F453C
	push {r4, lr}
	bl sub_02071598
	add r4, r0, #0
	ldr r0, [r4, #0x74]
	cmp r0, #0
	bne _021F454E
	bl GF_AssertFail
_021F454E:
	ldr r0, [r4, #0x74]
	ldr r0, [r0, #0]
	cmp r0, #0xf
	bne _021F455A
	mov r0, #1
	pop {r4, pc}
_021F455A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F453C

	thumb_func_start ov5_021F4560
ov5_021F4560: ; 0x021F4560
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r2, r0, #0
	add r6, r2, #0
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	add r3, #0x60
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #4
	str r0, [r3, #0]
	mov r0, #2
	ldrsh r0, [r2, r0]
	strh r0, [r4, #4]
	ldrsh r0, [r2, r1]
	strh r0, [r4, #6]
	mov r0, #1
	ldrsb r0, [r2, r0]
	add r2, sp, #0
	strh r0, [r4, #8]
	ldrsh r0, [r4, r1]
	mov r1, #6
	ldrsh r1, [r4, r1]
	bl sub_02064450
	ldr r0, [r4, #0x70]
	add r1, sp, #0
	bl sub_020644A4
	mov r0, #6
	ldr r1, [r4, #0x68]
	lsl r0, r0, #0xc
	add r0, r1, r0
	ldr r2, [sp, #4]
	add r1, sp, #0
	add r0, r2, r0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020715D4
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	add r0, #0xc
	add r1, #0x20
	bl sub_02073B70
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4560

	thumb_func_start ov5_021F45D0
ov5_021F45D0: ; 0x021F45D0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6, #0x74]
	cmp r0, #0
	beq _021F45F6
	mov r4, #0
	add r5, r4, #0
_021F45DE:
	ldr r0, [r6, #0x74]
	add r0, r0, #4
	add r0, r0, r5
	bl sub_02073AA8
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #4
	blt _021F45DE
	ldr r0, [r6, #0x74]
	bl sub_020181C4
_021F45F6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021F45D0

	thumb_func_start ov5_021F45F8
ov5_021F45F8: ; 0x021F45F8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r1, #0]
	str r1, [sp]
	cmp r0, #0
	beq _021F464A
	cmp r0, #1
	bne _021F464A
	add r0, r1, #0
	ldr r0, [r0, #0x74]
	cmp r0, #0
	bne _021F4612
	bl GF_AssertFail
_021F4612:
	ldr r0, [sp]
	mov r4, #0
	ldr r6, [r0, #0x74]
	mov r7, #1
	add r5, r6, #4
_021F461C:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_02073AC0
	cmp r0, #0
	beq _021F4636
	add r0, r7, #0
	ldr r1, [r6, #0]
	lsl r0, r4
	orr r0, r1
	str r0, [r6, #0]
_021F4636:
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #4
	blt _021F461C
	ldr r0, [r6, #0]
	cmp r0, #0xf
	bne _021F464A
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0]
_021F464A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F45F8

	thumb_func_start ov5_021F464C
ov5_021F464C: ; 0x021F464C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	add r4, #0xc
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02073BB4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F464C

	thumb_func_start ov5_021F4668
ov5_021F4668: ; 0x021F4668
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r5, [r0, #0x40]
	mov r4, #1
	str r4, [sp]
	add r4, sp, #8
	str r4, [sp, #4]
	bl ov5_021F439C
	add r4, r0, #0
	add r0, sp, #8
	mov r2, #0
	str r0, [sp]
	ldr r1, _021F4694 ; =0x022006F8
	add r0, r5, #0
	add r3, r2, #0
	str r2, [sp, #4]
	bl ov5_021DF72C
	str r0, [r4, #0]
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
_021F4694: .word 0x022006F8
	thumb_func_end ov5_021F4668

	thumb_func_start ov5_021F4698
ov5_021F4698: ; 0x021F4698
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02071598
	add r4, r0, #0
	add r0, #0x90
	ldr r7, [r0, #0]
	ldrb r0, [r4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F46BA
	add r0, r4, #0
	add r0, #0xc
	bl sub_02073A90
_021F46BA:
	ldrb r1, [r4]
	mov r0, #0x40
	orr r0, r1
	strb r0, [r4]
	ldrb r1, [r4]
	mov r0, #0x80
	bic r1, r0
	strb r1, [r4]
	ldrb r1, [r4]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4]
	add r0, r5, #0
	bl sub_0206447C
	add r5, r0, #0
	cmp r6, #1
	bne _021F46E4
	add r5, r5, #4
_021F46E4:
	mov r0, #0
	add r3, r7, #0
	mov r6, #0x24
	str r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	ldr r0, [r7, #8]
	add r3, #0x48
	mul r6, r5
	add r1, #0xc
	add r2, #0x34
	add r3, r3, r6
	bl ov5_021DFB40
	add r0, r4, #0
	add r7, #0x34
	add r4, #0xc
	add r0, #0x30
	add r1, r7, #0
	add r2, r4, #0
	bl sub_02073B90
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4698

	thumb_func_start ov5_021F4714
ov5_021F4714: ; 0x021F4714
	push {r4, lr}
	add r4, r1, #0
	bl sub_02071598
	str r4, [r0, #8]
	pop {r4, pc}
	thumb_func_end ov5_021F4714

	thumb_func_start ov5_021F4720
ov5_021F4720: ; 0x021F4720
	push {r3, lr}
	bl sub_02071598
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4720

	thumb_func_start ov5_021F4730
ov5_021F4730: ; 0x021F4730
	push {r4, lr}
	add r4, r1, #0
	bl ov5_021F440C
	add r0, r4, #0
	add r4, #0x90
	ldr r1, [r4, #0]
	add r0, #0x30
	add r1, #0x34
	bl sub_02073B70
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4730

	thumb_func_start ov5_021F474C
ov5_021F474C: ; 0x021F474C
	push {r3, lr}
	ldrb r0, [r1]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021F475E
	add r1, #0xc
	add r0, r1, #0
	bl sub_02073AA8
_021F475E:
	pop {r3, pc}
	thumb_func_end ov5_021F474C

	thumb_func_start ov5_021F4760
ov5_021F4760: ; 0x021F4760
	push {r4, lr}
	add r4, r1, #0
	ldrb r0, [r4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	beq _021F4790
	cmp r0, #1
	bne _021F4790
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0xc
	mov r2, #0
	bl sub_02073AC0
	cmp r0, #0
	beq _021F4790
	ldrb r1, [r4]
	mov r0, #0x3f
	bic r1, r0
	strb r1, [r4]
	ldrb r1, [r4]
	mov r0, #0x80
	orr r0, r1
	strb r0, [r4]
_021F4790:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4760

	thumb_func_start ov5_021F4794
ov5_021F4794: ; 0x021F4794
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	add r4, #0x30
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02073BB4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4794

	.rodata


	.global Unk_ov5_022006DC
Unk_ov5_022006DC: ; 0x022006DC
	.incbin "incbin/overlay5_rodata.bin", 0x7DC8, 0x7DD4 - 0x7DC8

	.global Unk_ov5_022006E8
Unk_ov5_022006E8: ; 0x022006E8
	.incbin "incbin/overlay5_rodata.bin", 0x7DD4, 0x7DE4 - 0x7DD4

	.global Unk_ov5_022006F8
Unk_ov5_022006F8: ; 0x022006F8
	.incbin "incbin/overlay5_rodata.bin", 0x7DE4, 0x7DF8 - 0x7DE4

	.global Unk_ov5_0220070C
Unk_ov5_0220070C: ; 0x0220070C
	.incbin "incbin/overlay5_rodata.bin", 0x7DF8, 0x7E0C - 0x7DF8

	.global Unk_ov5_02200720
Unk_ov5_02200720: ; 0x02200720
	.incbin "incbin/overlay5_rodata.bin", 0x7E0C, 0x30

