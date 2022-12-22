	.include "macros/function.inc"
	.include "include/ov5_021F47B0.inc"

	

	.text


	thumb_func_start ov5_021F47B0
ov5_021F47B0: ; 0x021F47B0
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0xdc
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F47DC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F47B0

	thumb_func_start ov5_021F47CC
ov5_021F47CC: ; 0x021F47CC
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F4820
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F47CC

	thumb_func_start ov5_021F47DC
ov5_021F47DC: ; 0x021F47DC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r4, _021F481C ; =0x0220079C
	mov r6, #0
	add r5, r7, #4
_021F47E6:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7, #0]
	ldr r3, [r4, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov5_021DFB00
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r6, #9
	blt _021F47E6
	ldr r0, [r7, #0x10]
	mov r1, #0
	bl NNS_G3dMdlSetMdlFogEnableFlagAll
	mov r2, #0
	str r2, [sp]
	ldr r0, [r7, #0]
	add r7, #0xb8
	add r1, r7, #0
	mov r3, #0xc7
	bl ov5_021DFB24
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F481C: .word 0x0220079C
	thumb_func_end ov5_021F47DC

	thumb_func_start ov5_021F4820
ov5_021F4820: ; 0x021F4820
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #4
_021F4828:
	add r0, r5, #0
	bl sub_0207395C
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #9
	blt _021F4828
	add r6, #0xb8
	add r0, r6, #0
	bl sub_02073AA8
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021F4820

	thumb_func_start ov5_021F4840
ov5_021F4840: ; 0x021F4840
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	mov r1, #0x20
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	bl ov5_021DF55C
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, r6, #0
	str r4, [sp, #0x14]
	bl sub_02062758
	add r1, sp, #8
	str r1, [sp]
	mov r2, #0
	str r0, [sp, #4]
	ldr r1, _021F4878 ; =0x02200754
	add r0, r5, #0
	add r3, r2, #0
	bl ov5_021DF72C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021F4878: .word 0x02200754
	thumb_func_end ov5_021F4840

	thumb_func_start ov5_021F487C
ov5_021F487C: ; 0x021F487C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	bl sub_020715BC
	add r4, r0, #0
	add r2, r5, #0
	add r3, r4, #0
	add r2, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0xc]
	bl sub_0206298C
	strb r0, [r5]
	ldr r0, [r4, #4]
	mov r1, #0x24
	mov r2, #0
	bl ov5_021DF528
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1, #0]
	ldr r1, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0x34
	add r1, r1, #4
	bl sub_02073B70
	ldr r3, [r5, #0x2c]
	mov r0, #0
	add r1, r5, #0
	str r0, [sp]
	add r1, #0x88
	add r2, r3, #4
	ldr r0, [r5, #0x28]
	ldr r1, [r1, #0]
	add r3, #0xb8
	bl ov5_021DFB40
	add r1, r5, #0
	add r1, #0x88
	add r0, r5, #0
	ldr r1, [r1, #0]
	add r0, #0x34
	bl sub_02073B84
	add r0, r6, #0
	add r1, r5, #0
	bl ov5_021F4A24
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F487C

	thumb_func_start ov5_021F48F0
ov5_021F48F0: ; 0x021F48F0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_02073A90
	add r4, #0x88
	ldr r0, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov5_021F48F0

	thumb_func_start ov5_021F4908
ov5_021F4908: ; 0x021F4908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	ldr r6, [r4, #0x30]
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0206298C
	add r7, r0, #0
	add r0, r6, #0
	add r1, sp, #8
	bl sub_02063050
	ldr r1, [r4, #0x24]
	add r0, r6, #0
	add r2, sp, #0x14
	bl ov5_021F4AB4
	strb r7, [r4]
	strb r0, [r4, #1]
	mov r0, #1
	ldrsb r0, [r4, r0]
	ldr r1, [r4, #0x24]
	cmp r0, r1
	bne _021F4944
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021F4A24
	b _021F4962
_021F4944:
	add r0, r4, #4
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp, #4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r2, sp, #0x14
	add r3, sp, #8
	bl ov5_021F4B6C
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021F49D0
_021F4962:
	add r4, #0x88
	mov r1, #1
	ldr r0, [r4, #0]
	lsl r1, r1, #0xc
	mov r2, #1
	bl sub_02073AC0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F4908

	thumb_func_start ov5_021F4974
ov5_021F4974: ; 0x021F4974
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	bne _021F49CC
	add r1, sp, #8
	bl sub_020715E4
	mov r0, #1
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldrh r2, [r4, #0x1c]
	add r1, sp, #0
	add r0, sp, #0
	strh r2, [r1]
	ldrh r2, [r4, #0x1e]
	strh r2, [r1, #2]
	ldrh r2, [r4, #0x20]
	strh r2, [r1, #4]
	ldrh r2, [r4, #0x22]
	strh r2, [r1, #6]
	mov r1, #0
	bl ov5_021F4A80
	add r0, sp, #0
	add r0, #2
	mov r1, #0
	bl ov5_021F4A80
	add r0, sp, #4
	mov r1, #0
	bl ov5_021F4A80
	add r0, r4, #0
	add r4, #0x10
	add r0, #0x34
	add r1, sp, #8
	add r2, r4, #0
	add r3, sp, #0
	bl sub_02073BC8
_021F49CC:
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov5_021F4974

	thumb_func_start ov5_021F49D0
ov5_021F49D0: ; 0x021F49D0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r2, r0, #3
	ldr r0, _021F4A20 ; =0x0220077C
	add r1, r0, r2
	ldrh r0, [r0, r2]
	strh r0, [r4, #0x1c]
	ldrh r0, [r1, #2]
	strh r0, [r4, #0x1e]
	ldrh r0, [r1, #4]
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #6]
	add r1, sp, #0
	strh r0, [r4, #0x22]
	ldr r0, [r4, #0x30]
	bl sub_02063050
	ldr r1, [sp]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021F4A20: .word 0x0220077C
	thumb_func_end ov5_021F49D0

	thumb_func_start ov5_021F4A24
ov5_021F4A24: ; 0x021F4A24
	push {r3, r4, r5, r6, r7, lr}
	add r3, r0, #0
	add r2, r1, #0
	mov r0, #0
	ldrsb r1, [r2, r0]
	mov r0, #0x48
	mov r7, #1
	add r6, r1, #0
	mul r6, r0
	ldrsb r0, [r2, r7]
	ldr r5, _021F4A78 ; =0x022007C0
	mov r4, #0xc
	add r1, r0, #0
	add r0, r5, r6
	mul r1, r4
	add r6, r1, r0
	add r5, r2, #0
	ldmia r6!, {r0, r1}
	add r5, #0x10
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	mov r0, #0
	ldrsb r5, [r2, r0]
	mov r0, #0x48
	add r1, r5, #0
	ldrsb r5, [r2, r7]
	mul r1, r0
	ldr r0, _021F4A7C ; =0x022008E0
	mul r4, r5
	add r0, r0, r1
	add r5, r4, r0
	ldmia r5!, {r0, r1}
	add r4, r2, #4
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r4, #0]
	add r0, r3, #0
	bl ov5_021F49D0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F4A78: .word 0x022007C0
_021F4A7C: .word 0x022008E0
	thumb_func_end ov5_021F4A24

	thumb_func_start ov5_021F4A80
ov5_021F4A80: ; 0x021F4A80
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	add r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r4]
	lsl r1, r0, #0x10
	asr r1, r1, #0x10
	bpl _021F4AA6
	mov r0, #0x5a
	lsl r0, r0, #2
	mov r1, #0
_021F4A98:
	ldrh r2, [r4]
	add r2, r2, r0
	strh r2, [r4]
	ldrsh r2, [r4, r1]
	cmp r2, #0
	blt _021F4A98
	pop {r4, pc}
_021F4AA6:
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	strh r1, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4A80

	thumb_func_start ov5_021F4AB4
ov5_021F4AB4: ; 0x021F4AB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	add r0, r1, #0
	bne _021F4AC6
	bl sub_02022974
_021F4AC6:
	ldr r0, [sp, #8]
	bl sub_02063020
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_02063030
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	bl sub_02063040
	add r6, r0, #0
	ldr r0, [sp, #8]
	bl sub_0206298C
	add r4, r0, #0
	ldr r0, [sp, #8]
	add r1, sp, #0x18
	bl sub_02063050
	ldr r0, [sp, #0xc]
	mov r7, #0
	cmp r0, #0
	ble _021F4B5C
_021F4AF6:
	add r0, r4, #0
	bl sub_0206419C
	add r5, r5, r0
	add r0, r4, #0
	bl sub_020641A8
	add r6, r6, r0
	str r6, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x14]
	add r1, sp, #0x18
	add r2, r5, #0
	str r4, [sp, #4]
	bl sub_02063E18
	cmp r0, #0
	beq _021F4B54
	cmp r0, #1
	beq _021F4B54
	cmp r0, #4
	bne _021F4B44
	ldr r0, [sp, #8]
	bl sub_02062A40
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl sub_0206326C
	add r4, r0, #0
	bne _021F4B3A
	bl sub_02022974
_021F4B3A:
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl sub_02063050
	b _021F4B4E
_021F4B44:
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02064450
_021F4B4E:
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021F4B54:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	cmp r7, r0
	blt _021F4AF6
_021F4B5C:
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02064450
	add r0, r7, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F4AB4

	thumb_func_start ov5_021F4B6C
ov5_021F4B6C: ; 0x021F4B6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	add r1, r3, #0
	add r3, r0, #0
	str r0, [sp]
	ldr r6, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	cmp r3, #3
	bhi _021F4BB2
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021F4B8C: ; jump table
	.short _021F4B94 - _021F4B8C - 2 ; case 0
	.short _021F4B9C - _021F4B8C - 2 ; case 1
	.short _021F4BA4 - _021F4B8C - 2 ; case 2
	.short _021F4BAC - _021F4B8C - 2 ; case 3
_021F4B94:
	ldr r1, [r1, #8]
	ldr r0, [r2, #8]
	sub r0, r1, r0
	b _021F4BB2
_021F4B9C:
	ldr r2, [r2, #8]
	ldr r0, [r1, #8]
	sub r0, r2, r0
	b _021F4BB2
_021F4BA4:
	ldr r1, [r1, #0]
	ldr r0, [r2, #0]
	sub r0, r1, r0
	b _021F4BB2
_021F4BAC:
	ldr r2, [r2, #0]
	ldr r0, [r1, #0]
	sub r0, r2, r0
_021F4BB2:
	asr r1, r0, #0xf
	lsr r1, r1, #0x10
	add r1, r0, r1
	asr r5, r1, #0x10
	bpl _021F4BBE
	neg r5, r5
_021F4BBE:
	cmp r5, r7
	ble _021F4BC4
	add r5, r7, #0
_021F4BC4:
	sub r5, r5, #1
	bpl _021F4BCA
	mov r5, #0
_021F4BCA:
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x10
	sub r2, r2, r1
	mov r0, #0x10
	ror r2, r0
	str r5, [sp, #8]
	add r0, r1, r2
	bpl _021F4BE0
	sub r1, r5, #1
	str r1, [sp, #8]
	b _021F4BE8
_021F4BE0:
	cmp r0, #0
	ble _021F4BE8
	add r1, r5, #1
	str r1, [sp, #8]
_021F4BE8:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _021F4BF4
	mov r1, #0
	str r1, [sp, #8]
	b _021F4BFA
_021F4BF4:
	cmp r1, r7
	ble _021F4BFA
	str r7, [sp, #8]
_021F4BFA:
	ldr r1, _021F4CE0 ; =0x00001999
	bl _s32_div_f
	add r7, r0, #0
	bpl _021F4C06
	neg r7, r7
_021F4C06:
	ldr r1, [sp, #8]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	str r2, [sp, #0xc]
	ldr r1, [sp]
	mov r2, #0x48
	mul r2, r1
	str r2, [sp, #0x10]
	ldr r2, _021F4CE4 ; =0x022008E0
	ldr r1, [sp, #0x10]
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	str r1, [sp, #0x1c]
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x14]
	add r3, r1, r0
	ldmia r3!, {r0, r1}
	add r2, r6, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r1, _021F4CE8 ; =0x022007C0
	str r0, [r2, #0]
	ldr r0, [sp, #0x10]
	add r3, r4, #0
	add r1, r1, r0
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x18]
	add r5, r1, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r1, r0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, [r2, #0]
	add r0, r3, #0
	str r1, [r0, #0]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, r1]
	ldr r0, [r6, #0]
	sub r0, r1, r0
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, [r6, #0]
	mul r0, r7
	add r0, r1, r0
	str r0, [r6, #0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #4]
	ldr r0, [r6, #4]
	sub r0, r1, r0
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, [r6, #4]
	mul r0, r7
	add r0, r1, r0
	str r0, [r6, #4]
	ldr r0, [sp, #4]
	ldr r1, [r0, #8]
	ldr r0, [r6, #8]
	sub r0, r1, r0
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, [r6, #8]
	mul r0, r7
	add r0, r1, r0
	str r0, [r6, #8]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	ldr r1, [r1, r0]
	ldr r0, [r4, #0]
	sub r0, r1, r0
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, [r4, #0]
	mul r0, r7
	add r0, r1, r0
	str r0, [r4, #0]
	ldr r1, [r5, #4]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, [r4, #4]
	mul r0, r7
	add r0, r1, r0
	str r0, [r4, #4]
	ldr r1, [r5, #8]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, [r4, #8]
	mul r0, r7
	add r0, r1, r0
	str r0, [r4, #8]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F4CE0: .word 0x00001999
_021F4CE4: .word 0x022008E0
_021F4CE8: .word 0x022007C0
	thumb_func_end ov5_021F4B6C

	thumb_func_start ov5_021F4CEC
ov5_021F4CEC: ; 0x021F4CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r1, sp, #8
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	add r4, r3, #0
	add r7, r2, #0
	str r0, [r1, #8]
	cmp r4, #8
	blt _021F4D0A
	bl sub_02022974
_021F4D0A:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #8
	bl sub_02064450
	add r0, r5, #0
	bl ov5_021DF574
	add r1, sp, #8
	bl sub_020644A4
	mov r0, #3
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x10]
	str r5, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, _021F4D4C ; =0x02200768
	add r0, r5, #0
	add r2, sp, #8
	add r3, r4, #0
	bl ov5_021DF72C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F4D4C: .word 0x02200768
	thumb_func_end ov5_021F4CEC

	thumb_func_start ov5_021F4D50
ov5_021F4D50: ; 0x021F4D50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715B4
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_020715BC
	str r0, [r4, #4]
	mov r1, #0x20
	bl ov5_021DF55C
	str r0, [r4, #8]
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r3, r1, #4
	ldr r1, [r4, #0]
	add r0, #0xc
	add r2, r1, #1
	mov r1, #0x14
	mul r1, r2
	add r1, r3, r1
	bl sub_02073B70
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4D50

	thumb_func_start ov5_021F4D88
ov5_021F4D88: ; 0x021F4D88
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F4D88

	thumb_func_start ov5_021F4D8C
ov5_021F4D8C: ; 0x021F4D8C
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F4D8C

	thumb_func_start ov5_021F4D90
ov5_021F4D90: ; 0x021F4D90
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
	thumb_func_end ov5_021F4D90

	.rodata


	.global Unk_ov5_02200750
Unk_ov5_02200750: ; 0x02200750
	.incbin "incbin/overlay5_rodata.bin", 0x7E3C, 0x7E40 - 0x7E3C

	.global Unk_ov5_02200754
Unk_ov5_02200754: ; 0x02200754
	.incbin "incbin/overlay5_rodata.bin", 0x7E40, 0x7E54 - 0x7E40

	.global Unk_ov5_02200768
Unk_ov5_02200768: ; 0x02200768
	.incbin "incbin/overlay5_rodata.bin", 0x7E54, 0x7E68 - 0x7E54

	.global Unk_ov5_0220077C
Unk_ov5_0220077C: ; 0x0220077C
	.incbin "incbin/overlay5_rodata.bin", 0x7E68, 0x7E88 - 0x7E68

	.global Unk_ov5_0220079C
Unk_ov5_0220079C: ; 0x0220079C
	.incbin "incbin/overlay5_rodata.bin", 0x7E88, 0x7EAC - 0x7E88

	.global Unk_ov5_022007C0
Unk_ov5_022007C0: ; 0x022007C0
	.incbin "incbin/overlay5_rodata.bin", 0x7EAC, 0x7FCC - 0x7EAC

	.global Unk_ov5_022008E0
Unk_ov5_022008E0: ; 0x022008E0
	.incbin "incbin/overlay5_rodata.bin", 0x7FCC, 0x120

