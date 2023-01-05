	.include "macros/function.inc"
	.include "overlay017/ov17_0224A0FC.inc"

	

	.text


	thumb_func_start ov17_0224A0FC
ov17_0224A0FC: ; 0x0224A0FC
	mov r1, #6
	mul r1, r0
	ldr r0, _0224A108 ; =0x022546F4
	ldrsh r0, [r0, r1]
	bx lr
	nop
_0224A108: .word 0x022546F4
	thumb_func_end ov17_0224A0FC

	thumb_func_start ov17_0224A10C
ov17_0224A10C: ; 0x0224A10C
	mov r1, #6
	mul r1, r0
	ldr r0, _0224A11C ; =0x022546F4
	add r1, r0, r1
	mov r0, #2
	ldrsh r0, [r1, r0]
	bx lr
	nop
_0224A11C: .word 0x022546F4
	thumb_func_end ov17_0224A10C

	thumb_func_start ov17_0224A120
ov17_0224A120: ; 0x0224A120
	mov r1, #6
	mul r1, r0
	ldr r0, _0224A130 ; =0x022546F4
	add r1, r0, r1
	mov r0, #4
	ldrsh r0, [r1, r0]
	bx lr
	nop
_0224A130: .word 0x022546F4
	thumb_func_end ov17_0224A120

	thumb_func_start ov17_0224A134
ov17_0224A134: ; 0x0224A134
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r4, #0
	b _0224A150
_0224A13E:
	lsl r0, r4, #4
	add r0, r5, r0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224A14E
	bl GF_AssertFail
_0224A14E:
	add r4, r4, #1
_0224A150:
	cmp r4, #4
	blt _0224A13E
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, #0x17
	str r0, [sp, #0xc]
	mov r4, #0
	ldr r7, _0224A1E4 ; =0x022546F4
	b _0224A1DC
_0224A168:
	ldr r0, _0224A1E8 ; =0x00000AF1
	add r1, r5, r4
	ldrb r6, [r1, r0]
	ldr r1, [r5, #0]
	lsl r0, r6, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r2, r0, #0
	mov r0, #6
	mul r0, r4
	ldrsh r1, [r7, r0]
	add r0, r7, r0
	mov r3, #2
	ldrsh r3, [r0, r3]
	str r1, [sp, #4]
	add r2, r2, r3
	str r2, [sp, #8]
	lsl r2, r6, #4
	add r2, r5, r2
	str r1, [r2, #0x1c]
	ldr r1, [sp, #8]
	str r1, [r2, #0x20]
	mov r1, #4
	ldrsh r0, [r0, r1]
	lsl r1, r6, #2
	str r0, [r2, #0x24]
	ldr r2, [r5, #0]
	add r0, sp, #0
	add r1, r2, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	bl ov22_0225AFD4
	lsl r1, r6, #4
	add r2, r5, r1
	str r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	bl ov22_0225B100
	cmp r4, #0
	ble _0224A1DA
	lsl r0, r6, #4
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r1, #0
	bl ov22_0225B07C
	lsl r0, r6, #4
	add r0, r5, r0
	mov r1, #0x63
	ldr r0, [r0, #0x18]
	mvn r1, r1
	bl ov22_0225B1AC
_0224A1DA:
	add r4, r4, #1
_0224A1DC:
	cmp r4, #4
	blt _0224A168
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A1E4: .word 0x022546F4
_0224A1E8: .word 0x00000AF1
	thumb_func_end ov17_0224A134

	thumb_func_start ov17_0224A1EC
ov17_0224A1EC: ; 0x0224A1EC
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0224A1F4:
	ldr r0, [r5, #4]
	bl ov22_0225B020
	add r0, r5, #0
	add r0, #0x98
	add r4, r4, #1
	add r5, #0x10
	str r6, [r0, #0]
	cmp r4, #4
	blt _0224A1F4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_0224A1EC

	thumb_func_start ov17_0224A20C
ov17_0224A20C: ; 0x0224A20C
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224A20C

	thumb_func_start ov17_0224A210
ov17_0224A210: ; 0x0224A210
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224A210

	thumb_func_start ov17_0224A214
ov17_0224A214: ; 0x0224A214
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r6, r1, #0
	str r2, [sp, #4]
	add r0, r2, #0
	mov r1, #2
	bl ov17_0223F0BC
	add r5, r0, #0
	ldr r0, [sp, #4]
	mov r1, #3
	bl ov17_0223F0BC
	mov r1, #0x20
	sub r2, r1, r5
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r7, r1, #1
	cmp r6, r0
	ble _0224A240
	add r6, r0, #0
_0224A240:
	asr r0, r6, #2
	lsr r0, r0, #0x1d
	add r0, r6, r0
	asr r4, r0, #3
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r1, #3
	ldr r0, [r0, #0x60]
	bl sub_02019FE4
	mov r1, #0x26
	lsl r1, r1, #4
	add r1, r7, r1
	lsl r1, r1, #1
	add r2, r0, r1
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0224A306
	mov r1, #0
	ldr r0, _0224A34C ; =0x00002014
	mov r7, #0x1d
	b _0224A29C
_0224A278:
	lsr r6, r1, #0x1f
	lsl r3, r1, #0x1d
	sub r3, r3, r6
	ror r3, r7
	add r3, r6, r3
	bne _0224A28A
	lsl r3, r1, #1
	strh r0, [r2, r3]
	b _0224A29A
_0224A28A:
	mov r3, #1
	tst r3, r1
	beq _0224A294
	ldr r6, _0224A350 ; =0x00002034
	b _0224A296
_0224A294:
	ldr r6, _0224A354 ; =0x00002054
_0224A296:
	lsl r3, r1, #1
	strh r6, [r2, r3]
_0224A29A:
	add r1, r1, #1
_0224A29C:
	cmp r1, r4
	blt _0224A278
	cmp r1, r5
	bge _0224A2D4
	lsr r4, r1, #0x1f
	lsl r3, r1, #0x1d
	sub r3, r3, r4
	mov r0, #0x1d
	ror r3, r0
	add r0, r4, r3
	bne _0224A2BE
	ldr r3, _0224A358 ; =0x0000200C
	ldr r0, [sp, #8]
	add r3, r0, r3
	lsl r0, r1, #1
	strh r3, [r2, r0]
	b _0224A2D2
_0224A2BE:
	mov r0, #1
	tst r0, r1
	beq _0224A2C8
	ldr r3, _0224A35C ; =0x0000202C
	b _0224A2CA
_0224A2C8:
	ldr r3, _0224A360 ; =0x0000204C
_0224A2CA:
	ldr r0, [sp, #8]
	add r3, r0, r3
	lsl r0, r1, #1
	strh r3, [r2, r0]
_0224A2D2:
	add r1, r1, #1
_0224A2D4:
	ldr r0, _0224A358 ; =0x0000200C
	mov r3, #0x1d
	mov r7, #1
	b _0224A300
_0224A2DC:
	lsr r6, r1, #0x1f
	lsl r4, r1, #0x1d
	sub r4, r4, r6
	ror r4, r3
	add r4, r6, r4
	bne _0224A2EE
	lsl r4, r1, #1
	strh r0, [r2, r4]
	b _0224A2FE
_0224A2EE:
	add r4, r1, #0
	tst r4, r7
	beq _0224A2F8
	ldr r6, _0224A35C ; =0x0000202C
	b _0224A2FA
_0224A2F8:
	ldr r6, _0224A360 ; =0x0000204C
_0224A2FA:
	lsl r4, r1, #1
	strh r6, [r2, r4]
_0224A2FE:
	add r1, r1, #1
_0224A300:
	cmp r1, r5
	blt _0224A2DC
	b _0224A33C
_0224A306:
	mov r1, #0
	ldr r0, _0224A364 ; =0x02254898
	b _0224A316
_0224A30C:
	lsl r3, r1, #1
	ldrh r6, [r0, r3]
	add r1, r1, #1
	add r6, #8
	strh r6, [r2, r3]
_0224A316:
	cmp r1, r4
	blt _0224A30C
	cmp r1, r5
	bge _0224A32C
	ldr r0, _0224A364 ; =0x02254898
	lsl r4, r1, #1
	ldrh r3, [r0, r4]
	ldr r0, [sp, #8]
	add r1, r1, #1
	add r0, r0, r3
	strh r0, [r2, r4]
_0224A32C:
	ldr r3, _0224A364 ; =0x02254898
	b _0224A338
_0224A330:
	lsl r4, r1, #1
	ldrh r0, [r3, r4]
	add r1, r1, #1
	strh r0, [r2, r4]
_0224A338:
	cmp r1, r5
	blt _0224A330
_0224A33C:
	ldr r0, [sp]
	mov r1, #3
	ldr r0, [r0, #0x60]
	bl sub_0201C3C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224A34C: .word 0x00002014
_0224A350: .word 0x00002034
_0224A354: .word 0x00002054
_0224A358: .word 0x0000200C
_0224A35C: .word 0x0000202C
_0224A360: .word 0x0000204C
_0224A364: .word 0x02254898
	thumb_func_end ov17_0224A214

	thumb_func_start ov17_0224A368
ov17_0224A368: ; 0x0224A368
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, r7, #0
	mov r1, #3
	bl ov17_0223F0BC
	mul r0, r4
	add r1, r6, #0
	bl _s32_div_f
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl ov17_0224A214
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224A368

	thumb_func_start ov17_0224A390
ov17_0224A390: ; 0x0224A390
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224A418 ; =0x000080EB
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x3a
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224A41C ; =0x000080EC
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x3b
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224A420 ; =0x000080ED
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x3c
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224A424 ; =0x000080EE
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x3d
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A418 ; =0x000080EB
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x3e
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A418 ; =0x000080EB
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x3f
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224A418: .word 0x000080EB
_0224A41C: .word 0x000080EC
_0224A420: .word 0x000080ED
_0224A424: .word 0x000080EE
	thumb_func_end ov17_0224A390

	thumb_func_start ov17_0224A428
ov17_0224A428: ; 0x0224A428
	push {r4, lr}
	ldr r1, _0224A45C ; =0x000080EB
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224A460 ; =0x000080EC
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _0224A464 ; =0x000080ED
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _0224A468 ; =0x000080EE
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _0224A45C ; =0x000080EB
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224A45C ; =0x000080EB
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224A45C: .word 0x000080EB
_0224A460: .word 0x000080EC
_0224A464: .word 0x000080ED
_0224A468: .word 0x000080EE
	thumb_func_end ov17_0224A428

	thumb_func_start ov17_0224A46C
ov17_0224A46C: ; 0x0224A46C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, _0224A56C ; =0x02254760
	add r7, r2, #0
	add r6, r3, #0
	add r5, r0, #0
	mov ip, r1
	add r3, sp, #0
	mov r2, #6
_0224A47E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224A47E
	ldr r0, [r4, #0]
	cmp r6, #2
	str r0, [r3, #0]
	bne _0224A496
	ldr r0, [sp, #8]
	add r0, #0xa
	str r0, [sp, #8]
	b _0224A4C6
_0224A496:
	ldr r0, [sp, #0x54]
	cmp r0, #3
	bhi _0224A4C6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224A4A8: ; jump table
	.short _0224A4C6 - _0224A4A8 - 2 ; case 0
	.short _0224A4B0 - _0224A4A8 - 2 ; case 1
	.short _0224A4B8 - _0224A4A8 - 2 ; case 2
	.short _0224A4C0 - _0224A4A8 - 2 ; case 3
_0224A4B0:
	ldr r0, [sp, #8]
	add r0, r0, #3
	str r0, [sp, #8]
	b _0224A4C6
_0224A4B8:
	ldr r0, [sp, #8]
	add r0, r0, #2
	str r0, [sp, #8]
	b _0224A4C6
_0224A4C0:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0224A4C6:
	ldr r0, [sp, #0x48]
	cmp r0, #4
	bhi _0224A500
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224A4D8: ; jump table
	.short _0224A500 - _0224A4D8 - 2 ; case 0
	.short _0224A4F6 - _0224A4D8 - 2 ; case 1
	.short _0224A500 - _0224A4D8 - 2 ; case 2
	.short _0224A4E2 - _0224A4D8 - 2 ; case 3
	.short _0224A4EC - _0224A4D8 - 2 ; case 4
_0224A4E2:
	ldr r0, _0224A570 ; =0x000080EC
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0xc]
	b _0224A508
_0224A4EC:
	ldr r0, _0224A574 ; =0x000080EE
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0xc]
	b _0224A508
_0224A4F6:
	ldr r0, _0224A578 ; =0x000080ED
	str r0, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0xc]
	b _0224A508
_0224A500:
	ldr r0, _0224A57C ; =0x000080EB
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0xc]
_0224A508:
	mov r0, ip
	add r1, r7, #0
	add r2, sp, #0
	bl sub_0200CE6C
	add r4, r0, #0
	add r1, r6, #0
	bl sub_0200D364
	ldr r0, [r4, #0]
	bl sub_0200D324
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	mov r3, #1
	add r0, r4, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	add r0, r4, #0
	mov r1, #1
	bl sub_0200D390
	mov r0, #0
	add r2, r5, #0
_0224A542:
	add r1, r2, #0
	add r1, #0xd8
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _0224A558
	lsl r1, r0, #2
	add r1, r5, r1
	add r1, #0xd8
	add sp, #0x34
	str r4, [r1, #0]
	pop {r4, r5, r6, r7, pc}
_0224A558:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, #0x44
	blt _0224A542
	bl GF_AssertFail
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0224A56C: .word 0x02254760
_0224A570: .word 0x000080EC
_0224A574: .word 0x000080EE
_0224A578: .word 0x000080ED
_0224A57C: .word 0x000080EB
	thumb_func_end ov17_0224A46C

	thumb_func_start ov17_0224A580
ov17_0224A580: ; 0x0224A580
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0224A588:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224A59C
	bl sub_0200D0F4
	add r0, r5, #0
	add r0, #0xd8
	str r6, [r0, #0]
_0224A59C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x44
	blt _0224A588
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_0224A580

	thumb_func_start ov17_0224A5A8
ov17_0224A5A8: ; 0x0224A5A8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224A5F0 ; =0x000080EF
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x37
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A5F4 ; =0x000080EC
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x38
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A5F4 ; =0x000080EC
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x39
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224A5F0: .word 0x000080EF
_0224A5F4: .word 0x000080EC
	thumb_func_end ov17_0224A5A8

	thumb_func_start ov17_0224A5F8
ov17_0224A5F8: ; 0x0224A5F8
	push {r4, lr}
	ldr r1, _0224A614 ; =0x000080EF
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224A618 ; =0x000080EC
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224A618 ; =0x000080EC
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224A614: .word 0x000080EF
_0224A618: .word 0x000080EC
	thumb_func_end ov17_0224A5F8

	thumb_func_start ov17_0224A61C
ov17_0224A61C: ; 0x0224A61C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
_0224A626:
	ldr r2, _0224A648 ; =0x02254794
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200CE6C
	ldr r1, _0224A64C ; =0x000009F8
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0224A626
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A648: .word 0x02254794
_0224A64C: .word 0x000009F8
	thumb_func_end ov17_0224A61C

	thumb_func_start ov17_0224A650
ov17_0224A650: ; 0x0224A650
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0224A670 ; =0x000009F8
	add r5, r0, #0
	add r6, r4, #0
_0224A65A:
	ldr r0, _0224A670 ; =0x000009F8
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	str r6, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0224A65A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A670: .word 0x000009F8
	thumb_func_end ov17_0224A650

	thumb_func_start ov17_0224A674
ov17_0224A674: ; 0x0224A674
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_0200B1EC
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_0200B1EC
	str r0, [sp, #0x34]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #7
	bl sub_0200B1EC
	str r0, [sp, #0x30]
	mov r0, #0
	ldr r1, _0224A7A8 ; =0x00000A04
	str r0, [sp, #0x3c]
	add r0, r5, r1
	str r0, [sp, #0x2c]
	add r0, r1, #0
	add r0, #0x3c
	add r1, #0x78
	add r4, r5, #0
	add r7, r5, r0
	add r6, r5, r1
_0224A6B8:
	ldr r0, [sp, #0x2c]
	add r3, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r3, #0x94
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _0224A7AC ; =0x000B0C00
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0224A7B0 ; =0x000080E9
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #0xc
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x60]
	ldr r2, [r5, #0x5c]
	ldr r3, [r3, #0]
	mov r0, #0x17
	bl ov17_0223F1E8
	ldr r0, _0224A7A8 ; =0x00000A04
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020129D0
	add r3, r5, #0
	ldr r0, [sp, #0x34]
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _0224A7AC ; =0x000B0C00
	add r3, #0x94
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0224A7B0 ; =0x000080E9
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #0xc
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x60]
	ldr r2, [r5, #0x5c]
	ldr r3, [r3, #0]
	mov r0, #0x17
	bl ov17_0223F1E8
	mov r0, #0x29
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020129D0
	add r3, r5, #0
	ldr r0, [sp, #0x30]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _0224A7AC ; =0x000B0C00
	add r3, #0x94
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0224A7B0 ; =0x000080E9
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #0xc
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x60]
	ldr r2, [r5, #0x5c]
	ldr r3, [r3, #0]
	mov r0, #0x17
	bl ov17_0223F1E8
	ldr r0, _0224A7B4 ; =0x00000A7C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020129D0
	ldr r0, [sp, #0x2c]
	add r4, #0x14
	add r0, #0x14
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	add r7, #0x14
	add r0, r0, #1
	add r6, #0x14
	str r0, [sp, #0x3c]
	cmp r0, #3
	blt _0224A6B8
	ldr r0, [sp, #0x38]
	bl sub_020237BC
	ldr r0, [sp, #0x34]
	bl sub_020237BC
	ldr r0, [sp, #0x30]
	bl sub_020237BC
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A7A8: .word 0x00000A04
_0224A7AC: .word 0x000B0C00
_0224A7B0: .word 0x000080E9
_0224A7B4: .word 0x00000A7C
	thumb_func_end ov17_0224A674

	thumb_func_start ov17_0224A7B8
ov17_0224A7B8: ; 0x0224A7B8
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224A7DC ; =0x00000A04
	mov r7, #0
	add r6, r0, r1
_0224A7C0:
	mov r4, #0
	add r5, r6, #0
_0224A7C4:
	add r0, r5, #0
	bl ov17_0223F2E4
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #3
	blt _0224A7C4
	add r7, r7, #1
	add r6, #0x3c
	cmp r7, #3
	blt _0224A7C0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A7DC: .word 0x00000A04
	thumb_func_end ov17_0224A7B8

	thumb_func_start ov17_0224A7E0
ov17_0224A7E0: ; 0x0224A7E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x2c]
	add r5, r0, #0
	str r3, [sp]
	cmp r4, #0
	bne _0224A7F2
	str r4, [sp, #4]
	b _0224A7F6
_0224A7F2:
	sub r0, r4, #1
	str r0, [sp, #4]
_0224A7F6:
	ldr r0, _0224A8BC ; =0x000009BC
	mov r1, #0x14
	add r2, r5, r0
	ldr r0, [sp, #4]
	mul r1, r0
	add r6, r2, r1
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0224A80C
	bl sub_0200DA58
_0224A80C:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r1, _0224A8C0 ; =0x022546CC
	lsl r2, r4, #2
	ldrsh r0, [r1, r2]
	add r1, r1, r2
	str r0, [sp, #0xc]
	mov r0, #2
	ldrsh r0, [r1, r0]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0224A8C4 ; =0x000009F8
	ldr r0, [r1, r0]
	ldr r1, [sp]
	str r0, [r6, #0]
	bl sub_0200D364
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	mov r3, #1
	ldr r0, [r6, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r6, #0]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [sp, #4]
	mov r1, #0x14
	add r7, r0, #0
	mov r4, #0
	mul r7, r1
	b _0224A87E
_0224A86A:
	mov r0, #0x3c
	mul r0, r4
	add r0, r5, r0
	add r1, r0, r7
	ldr r0, _0224A8C8 ; =0x00000A04
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020129D0
	add r4, r4, #1
_0224A87E:
	cmp r4, #3
	blt _0224A86A
	ldr r0, _0224A8C8 ; =0x00000A04
	mov r1, #0x3c
	add r2, r5, r0
	ldr r0, [sp]
	mov r3, #1
	mul r1, r0
	add r2, r2, r1
	ldr r0, [sp, #4]
	mov r1, #0x14
	mul r1, r0
	add r0, r2, r1
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	str r0, [r6, #4]
	bl ov17_0223F2F8
	ldr r0, [r6, #4]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_020129D0
	ldr r0, _0224A8CC ; =ov17_0224A8D4
	ldr r2, _0224A8D0 ; =0x00009D08
	add r1, r6, #0
	bl sub_0200D9E8
	str r0, [r6, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A8BC: .word 0x000009BC
_0224A8C0: .word 0x022546CC
_0224A8C4: .word 0x000009F8
_0224A8C8: .word 0x00000A04
_0224A8CC: .word ov17_0224A8D4
_0224A8D0: .word 0x00009D08
	thumb_func_end ov17_0224A7E0

	thumb_func_start ov17_0224A8D4
ov17_0224A8D4: ; 0x0224A8D4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224A8E8
	cmp r0, #1
	beq _0224A926
	b _0224A93A
_0224A8E8:
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0]
	add r2, sp, #0
	bl sub_020129A4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	sub r2, r0, #4
	str r2, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_020128C4
	mov r1, #0
	ldr r0, [r4, #0]
	sub r2, r1, #4
	bl sub_0200D5DC
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #4
	ble _0224A956
	mov r0, #0
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224A926:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0xe
	ble _0224A956
	ldrb r0, [r4, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224A93A:
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_020129D0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_0200DA58
_0224A956:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0224A8D4

	thumb_func_start ov17_0224A95C
ov17_0224A95C: ; 0x0224A95C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0224A980 ; =0x000009C4
	add r5, r0, #0
	add r6, r4, #0
_0224A966:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0224A974
	bl sub_0200DA58
	ldr r0, _0224A980 ; =0x000009C4
	str r6, [r5, r0]
_0224A974:
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #3
	blt _0224A966
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A980: .word 0x000009C4
	thumb_func_end ov17_0224A95C

	thumb_func_start ov17_0224A984
ov17_0224A984: ; 0x0224A984
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224A9CC ; =0x000080F0
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x40
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A9D0 ; =0x000080ED
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x41
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A9D0 ; =0x000080ED
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x42
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224A9CC: .word 0x000080F0
_0224A9D0: .word 0x000080ED
	thumb_func_end ov17_0224A984

	thumb_func_start ov17_0224A9D4
ov17_0224A9D4: ; 0x0224A9D4
	push {r4, lr}
	ldr r1, _0224A9F0 ; =0x000080F0
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224A9F4 ; =0x000080ED
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224A9F4 ; =0x000080ED
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224A9F0: .word 0x000080F0
_0224A9F4: .word 0x000080ED
	thumb_func_end ov17_0224A9D4

	thumb_func_start ov17_0224A9F8
ov17_0224A9F8: ; 0x0224A9F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, _0224AA18 ; =0x022547C8
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D324
	mov r0, #0x7a
	lsl r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_0224AA18: .word 0x022547C8
	thumb_func_end ov17_0224A9F8

	thumb_func_start ov17_0224AA1C
ov17_0224AA1C: ; 0x0224AA1C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224AA36
	bl sub_0200D0F4
	mov r0, #0x7a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224AA36:
	pop {r4, pc}
	thumb_func_end ov17_0224AA1C

	thumb_func_start ov17_0224AA38
ov17_0224AA38: ; 0x0224AA38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224AA50 ; =ov17_0224AA68
	ldr r2, _0224AA54 ; =0x00009CAE
	add r1, r4, #0
	bl sub_0200D9E8
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0224AA50: .word ov17_0224AA68
_0224AA54: .word 0x00009CAE
	thumb_func_end ov17_0224AA38

	thumb_func_start ov17_0224AA58
ov17_0224AA58: ; 0x0224AA58
	mov r1, #2
	lsl r1, r1, #8
	ldr r3, _0224AA64 ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_0224AA64: .word sub_0200DA58
	thumb_func_end ov17_0224AA58

	thumb_func_start ov17_0224AA68
ov17_0224AA68: ; 0x0224AA68
	push {r3, lr}
	ldr r2, [r1, #0]
	ldr r0, _0224AA90 ; =0x00000123
	mov r3, #1
	ldrb r2, [r2, r0]
	add r0, #0xd9
	ldr r0, [r1, r0]
	lsl r2, r2, #4
	add r2, r1, r2
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	lsl r1, r1, #0x10
	sub r2, #0x28
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	pop {r3, pc}
	; .align 2, 0
_0224AA90: .word 0x00000123
	thumb_func_end ov17_0224AA68

	thumb_func_start ov17_0224AA94
ov17_0224AA94: ; 0x0224AA94
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224AADC ; =0x000080F2
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x5a
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AAE0 ; =0x000080EF
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x59
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AAE0 ; =0x000080EF
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x58
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224AADC: .word 0x000080F2
_0224AAE0: .word 0x000080EF
	thumb_func_end ov17_0224AA94

	thumb_func_start ov17_0224AAE4
ov17_0224AAE4: ; 0x0224AAE4
	push {r4, lr}
	ldr r1, _0224AB00 ; =0x000080F2
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224AB04 ; =0x000080EF
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224AB04 ; =0x000080EF
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224AB00: .word 0x000080F2
_0224AB04: .word 0x000080EF
	thumb_func_end ov17_0224AAE4

	thumb_func_start ov17_0224AB08
ov17_0224AB08: ; 0x0224AB08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	ldr r4, [sp]
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #8
	ldr r6, [sp, #0xc]
	str r2, [sp, #8]
	add r7, r0, #4
	add r5, r0, r1
_0224AB24:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, _0224ABA0 ; =0x02254830
	bl sub_0200CE6C
	mov r1, #0x81
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D6A4
	ldr r1, [sp, #0xc]
	ldr r0, _0224ABA4 ; =0x00000213
	strb r1, [r4, r0]
	sub r0, r0, #7
	str r7, [r4, r0]
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, r6]
	bl sub_020765B8
	mov r1, #0x85
	lsl r1, r1, #2
	strb r0, [r4, r1]
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov17_0224AC78
	ldr r0, _0224ABA8 ; =ov17_0224ABFC
	ldr r2, _0224ABAC ; =0x0000A08C
	add r1, r5, #0
	bl sub_0200D9E8
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	add r4, #0x18
	add r0, r0, #1
	add r7, #0x10
	add r6, r6, #4
	add r5, #0x18
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _0224AB24
	ldr r0, [sp]
	mov r1, #0
	bl ov17_0224ABDC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224ABA0: .word 0x02254830
_0224ABA4: .word 0x00000213
_0224ABA8: .word ov17_0224ABFC
_0224ABAC: .word 0x0000A08C
	thumb_func_end ov17_0224AB08

	thumb_func_start ov17_0224ABB0
ov17_0224ABB0: ; 0x0224ABB0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x81
	add r5, r0, #0
	add r6, r4, #0
	lsl r7, r7, #2
_0224ABBC:
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_0200DA58
	str r6, [r5, r7]
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #4
	blt _0224ABBC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224ABB0

	thumb_func_start ov17_0224ABDC
ov17_0224ABDC: ; 0x0224ABDC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x81
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	lsl r7, r7, #2
_0224ABE8:
	ldr r0, [r5, r7]
	add r1, r6, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #4
	blt _0224ABE8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224ABDC

	thumb_func_start ov17_0224ABFC
ov17_0224ABFC: ; 0x0224ABFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #0xc]
	ldr r6, [r0, #4]
	ldr r4, [r0, #8]
	ldr r0, [r0, #0xc]
	bl ov17_0224B06C
	mov r1, #0x14
	ldrsb r2, [r5, r1]
	mov r1, #0x28
	sub r2, r1, r2
	add r1, r2, #0
	mul r1, r0
	asr r2, r1, #7
	lsr r2, r2, #0x18
	add r2, r1, r2
	asr r1, r2, #8
	add r4, r4, r1
	mov r1, #0x64
	mul r1, r0
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r0, r0, #8
	bl _f_itof
	ldr r1, _0224AC74 ; =0x42C80000
	bl _fdiv
	add r7, r0, #0
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _0224AC56
	add r1, sp, #0
	mov r3, #1
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x14
	bl sub_0200D5A0
	add r1, sp, #0
	mov r0, #0
	ldrsh r4, [r1, r0]
_0224AC56:
	lsl r1, r6, #0x10
	lsl r2, r4, #0x10
	mov r3, #1
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r2, r7, #0
	bl sub_0200D6E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224AC74: .word 0x42C80000
	thumb_func_end ov17_0224ABFC

	thumb_func_start ov17_0224AC78
ov17_0224AC78: ; 0x0224AC78
	strb r1, [r0, #0x11]
	strb r2, [r0, #0x12]
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224AC78

	thumb_func_start ov17_0224AC80
ov17_0224AC80: ; 0x0224AC80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224ACC8 ; =0x000080F3
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x5d
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224ACCC ; =0x000080F0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x5c
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224ACCC ; =0x000080F0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x5b
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224ACC8: .word 0x000080F3
_0224ACCC: .word 0x000080F0
	thumb_func_end ov17_0224AC80

	thumb_func_start ov17_0224ACD0
ov17_0224ACD0: ; 0x0224ACD0
	push {r4, lr}
	ldr r1, _0224ACEC ; =0x000080F3
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224ACF0 ; =0x000080F0
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224ACF0 ; =0x000080F0
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224ACEC: .word 0x000080F3
_0224ACF0: .word 0x000080F0
	thumb_func_end ov17_0224ACD0

	thumb_func_start ov17_0224ACF4
ov17_0224ACF4: ; 0x0224ACF4
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224ACF4

	thumb_func_start ov17_0224ACF8
ov17_0224ACF8: ; 0x0224ACF8
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224ACF8

	thumb_func_start ov17_0224ACFC
ov17_0224ACFC: ; 0x0224ACFC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224AD44 ; =0x000080F4
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x60
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AD48 ; =0x000080F1
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x5f
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AD48 ; =0x000080F1
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x5e
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224AD44: .word 0x000080F4
_0224AD48: .word 0x000080F1
	thumb_func_end ov17_0224ACFC

	thumb_func_start ov17_0224AD4C
ov17_0224AD4C: ; 0x0224AD4C
	push {r4, lr}
	ldr r1, _0224AD68 ; =0x000080F4
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224AD6C ; =0x000080F1
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224AD6C ; =0x000080F1
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224AD68: .word 0x000080F4
_0224AD6C: .word 0x000080F1
	thumb_func_end ov17_0224AD4C

	thumb_func_start ov17_0224AD70
ov17_0224AD70: ; 0x0224AD70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xad
	lsl r0, r0, #2
	add r7, r1, #0
	add r1, r5, r0
	sub r0, #0xf4
	mul r0, r7
	add r4, r1, r0
	str r2, [sp]
	mov r1, #0
_0224AD88:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224AD96
	add r1, r1, #1
	add r4, #0x1c
	cmp r1, #0x10
	blt _0224AD88
_0224AD96:
	cmp r1, #0x10
	bne _0224ADA0
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224ADA0:
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _0224AE6C ; =0x02254864
	bl sub_0200CE6C
	add r6, r0, #0
	bne _0224ADB4
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224ADB4:
	lsl r1, r7, #4
	add r2, r5, r1
	ldr r1, [r2, #0x1c]
	ldr r7, [r2, #0x20]
	str r1, [sp, #4]
	ldr r1, [sp]
	bl sub_0200D364
	ldr r1, [sp, #4]
	lsl r2, r7, #0x10
	lsl r1, r1, #0x10
	mov r3, #1
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r6, #0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r6, #0]
	bl sub_0200D324
	ldr r0, [r5, #0]
	bl sub_02094E98
	ldr r2, _0224AE70 ; =0x04000280
	mov r1, #0
	strh r1, [r2]
	str r0, [r2, #0x10]
	mov r0, #5
	lsl r0, r0, #8
	add r2, #0x18
	str r0, [r2, #0]
	str r1, [r2, #4]
	add r0, r4, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	ldr r0, [sp, #4]
	str r6, [r4, #4]
	lsl r0, r0, #8
	str r0, [r4, #8]
	lsl r0, r7, #8
	ldr r2, _0224AE70 ; =0x04000280
	str r0, [r4, #0xc]
	lsr r0, r2, #0xb
_0224AE16:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224AE16
	ldr r0, _0224AE74 ; =0x040002A8
	ldr r1, [r0, #0]
	mov r0, #1
	str r1, [r4, #0x10]
	tst r0, r1
	beq _0224AE2C
	neg r0, r1
	str r0, [r4, #0x10]
_0224AE2C:
	ldr r0, [r5, #0]
	bl sub_02094E98
	ldr r2, _0224AE78 ; =0x04000290
	mov r1, #0xf
	str r0, [r2, #0]
	lsl r1, r1, #8
	add r2, #8
	mov r0, #0
	str r1, [r2, #0]
	str r0, [r2, #4]
	ldr r2, _0224AE70 ; =0x04000280
	lsr r0, r2, #0xb
_0224AE46:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224AE46
	ldr r0, _0224AE74 ; =0x040002A8
	ldr r2, _0224AE7C ; =0x00009C40
	ldr r1, [r0, #0]
	lsr r0, r0, #0x10
	add r0, r1, r0
	neg r0, r0
	str r0, [r4, #0x14]
	ldr r0, _0224AE80 ; =ov17_0224AE84
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224AE6C: .word 0x02254864
_0224AE70: .word 0x04000280
_0224AE74: .word 0x040002A8
_0224AE78: .word 0x04000290
_0224AE7C: .word 0x00009C40
_0224AE80: .word ov17_0224AE84
	thumb_func_end ov17_0224AD70

	thumb_func_start ov17_0224AE84
ov17_0224AE84: ; 0x0224AE84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0xc]
	mov r0, #2
	ldr r1, [r4, #0x14]
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldrh r0, [r4, #0x18]
	add r0, r0, #1
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x18]
	cmp r0, #0xa
	bhi _0224AECA
	mov r0, #0x11
	ldr r1, [r4, #8]
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _0224AECA
	ldr r0, _0224AF30 ; =0xFFFEF000
	cmp r1, r0
	blt _0224AECA
	mov r0, #0xd
	ldr r2, [r4, #0xc]
	lsl r0, r0, #0xc
	cmp r2, r0
	ble _0224AEDE
_0224AECA:
	ldr r0, [r4, #4]
	bl sub_0200D0F4
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_0224AEDE:
	ldr r0, _0224AF34 ; =0x04000280
	mov r3, #0
	strh r3, [r0]
	str r1, [r0, #0x10]
	add r1, r0, #0
	lsr r2, r0, #0x12
	add r1, #0x18
	str r2, [r1, #0]
	str r3, [r1, #4]
	lsr r1, r0, #0xb
_0224AEF2:
	ldrh r2, [r0]
	tst r2, r1
	bne _0224AEF2
	ldr r3, _0224AF38 ; =0x040002A0
	ldr r2, [r4, #0xc]
	add r0, r3, #0
	ldr r1, [r3, #0]
	sub r0, #0x10
	str r2, [r0, #0]
	lsr r2, r3, #0x12
	sub r3, #8
	mov r0, #0
	str r2, [r3, #0]
	str r0, [r3, #4]
	ldr r3, _0224AF34 ; =0x04000280
	lsr r0, r3, #0xb
_0224AF12:
	ldrh r2, [r3]
	tst r2, r0
	bne _0224AF12
	ldr r2, _0224AF38 ; =0x040002A0
	lsl r1, r1, #0x10
	ldr r2, [r2, #0]
	mov r3, #1
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224AF30: .word 0xFFFEF000
_0224AF34: .word 0x04000280
_0224AF38: .word 0x040002A0
	thumb_func_end ov17_0224AE84

	thumb_func_start ov17_0224AF3C
ov17_0224AF3C: ; 0x0224AF3C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	cmp r2, #2
	beq _0224AF98
	add r0, r1, #0
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, _0224AF9C ; =0x00000AF6
	ldrsh r0, [r1, r0]
	cmp r0, #0
	beq _0224AF98
	ldr r1, _0224AFA0 ; =0x04000280
	mov r6, #0
	strh r6, [r1]
	str r0, [r1, #0x10]
	mov r0, #2
	add r1, #0x18
	str r0, [r1, #0]
	str r6, [r1, #4]
	cmp r3, #0
	beq _0224AF6A
	mov r6, #1
_0224AF6A:
	ldr r2, _0224AFA0 ; =0x04000280
	lsr r0, r2, #0xb
_0224AF6E:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224AF6E
	ldr r0, _0224AFA4 ; =0x040002A0
	ldr r5, [r0, #0]
	cmp r5, #0x10
	ble _0224AF7E
	mov r5, #0x10
_0224AF7E:
	mov r4, #0
	cmp r5, #0
	ble _0224AF98
_0224AF84:
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r6, #0
	bl ov17_0224AD70
	cmp r0, #0
	beq _0224AF98
	add r4, r4, #1
	cmp r4, r5
	blt _0224AF84
_0224AF98:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224AF9C: .word 0x00000AF6
_0224AFA0: .word 0x04000280
_0224AFA4: .word 0x040002A0
	thumb_func_end ov17_0224AF3C

	thumb_func_start ov17_0224AFA8
ov17_0224AFA8: ; 0x0224AFA8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224AFF0 ; =0x000080F5
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x63
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AFF4 ; =0x000080F2
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x62
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AFF4 ; =0x000080F2
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x61
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224AFF0: .word 0x000080F5
_0224AFF4: .word 0x000080F2
	thumb_func_end ov17_0224AFA8

	thumb_func_start ov17_0224AFF8
ov17_0224AFF8: ; 0x0224AFF8
	push {r4, lr}
	ldr r1, _0224B014 ; =0x000080F5
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224B018 ; =0x000080F2
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224B018 ; =0x000080F2
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224B014: .word 0x000080F5
_0224B018: .word 0x000080F2
	thumb_func_end ov17_0224AFF8

	thumb_func_start ov17_0224B01C
ov17_0224B01C: ; 0x0224B01C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _0224B050 ; =0x0225472C
	bl sub_0200CE6C
	mov r1, #0
	mov r3, #1
	add r4, r0, #0
	mvn r1, r1
	mov r2, #0xb0
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, _0224B054 ; =0x000009B8
	str r4, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B050: .word 0x0225472C
_0224B054: .word 0x000009B8
	thumb_func_end ov17_0224B01C

	thumb_func_start ov17_0224B058
ov17_0224B058: ; 0x0224B058
	ldr r1, _0224B060 ; =0x000009B8
	ldr r3, _0224B064 ; =sub_0200D0F4
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_0224B060: .word 0x000009B8
_0224B064: .word sub_0200D0F4
	thumb_func_end ov17_0224B058

	thumb_func_start ov17_0224B068
ov17_0224B068: ; 0x0224B068
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224B068

	thumb_func_start ov17_0224B06C
ov17_0224B06C: ; 0x0224B06C
	ldr r1, _0224B098 ; =0xFFFFFD80
	cmp r0, r1
	bne _0224B076
	mov r0, #0xc0
	bx lr
_0224B076:
	add r1, #0x80
	cmp r0, r1
	bne _0224B082
	mov r0, #1
	lsl r0, r0, #8
	bx lr
_0224B082:
	mov r1, #0xa
	lsl r1, r1, #6
	add r0, r0, r1
	lsl r1, r0, #6
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r0, r0, #7
	add r0, #0xc0
	bx lr
	nop
_0224B098: .word 0xFFFFFD80
	thumb_func_end ov17_0224B06C

	thumb_func_start ov17_0224B09C
ov17_0224B09C: ; 0x0224B09C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0xc]
	bl ov17_0224B06C
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0224B0B2
	lsl r1, r1, #4
	b _0224B0BC
_0224B0B2:
	lsl r1, r0, #0xc
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
_0224B0BC:
	mov r3, #1
	ldr r0, [r4, #0]
	add r2, r1, #0
	lsl r3, r3, #0xc
	bl ov22_0225B0EC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0224B09C

	thumb_func_start ov17_0224B0CC
ov17_0224B0CC: ; 0x0224B0CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #4
_0224B0D4:
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl ov17_0224B09C
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #4
	blt _0224B0D4
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224B0CC

	thumb_func_start ov17_0224B0E8
ov17_0224B0E8: ; 0x0224B0E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _0224B200 ; =0x00000B1B
	add r4, r1, #0
	ldrb r0, [r5, r0]
	str r2, [sp, #0x10]
	mov r1, #3
	bl ov17_0223F0BC
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #2]
	cmp r0, r4
	bne _0224B10C
	mov r0, #0
	str r0, [sp, #0x14]
	b _0224B110
_0224B10C:
	mov r0, #1
	str r0, [sp, #0x14]
_0224B110:
	ldr r0, _0224B200 ; =0x00000B1B
	mov r1, #4
	ldrb r0, [r5, r0]
	bl ov17_0223F0BC
	add r1, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	bl _s32_div_f
	ldr r1, [sp, #0x10]
	mov r4, #0
	ldrb r1, [r1, #6]
	mul r0, r1
	mov r1, #1
	lsl r1, r1, #8
	sub r2, r1, r6
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r6, r0, r1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x18]
	ldrb r1, [r0, #7]
	ldr r0, _0224B204 ; =0x022549BC
	ldrb r7, [r0, r1]
	b _0224B18A
_0224B146:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224B188
	add r1, sp, #0x1c
	mov r3, #1
	add r1, #2
	add r2, sp, #0x1c
	lsl r3, r3, #0x14
	bl sub_0200D5A0
	add r1, sp, #0x1c
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, r6
	bne _0224B188
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, r7
	bne _0224B188
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xec
	ldr r0, [r0, #0]
	bl sub_0200D37C
	cmp r0, #2
	beq _0224B188
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224B188:
	add r4, r4, #1
_0224B18A:
	cmp r4, #0x44
	blt _0224B146
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldrb r0, [r0, #3]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x10]
	str r7, [sp, #8]
	ldrb r0, [r0, #7]
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	add r0, #0x14
	bl ov17_0224A46C
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0224B1F8
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0224B1F8
	mov r2, #0x80
	add r1, r2, #0
	ldr r3, [r5, #0]
	add r1, #0xa3
	ldrb r1, [r3, r1]
	ldr r3, _0224B208 ; =0x00000AF1
	ldr r0, [sp, #0x18]
	add r1, r5, r1
	ldrb r4, [r1, r3]
	ldr r1, _0224B204 ; =0x022549BC
	sub r0, r2, r0
	ldrb r4, [r1, r4]
	ldr r1, [sp, #0x10]
	add r0, r6, r0
	ldrb r1, [r1, #3]
	add r2, #0xa3
	str r1, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0]
	ldrb r0, [r0, r2]
	add r0, r5, r0
	ldrb r0, [r0, r3]
	mov r3, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	add r0, #0x14
	bl ov17_0224A46C
_0224B1F8:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B200: .word 0x00000B1B
_0224B204: .word 0x022549BC
_0224B208: .word 0x00000AF1
	thumb_func_end ov17_0224B0E8

	thumb_func_start ov17_0224B20C
ov17_0224B20C: ; 0x0224B20C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrb r1, [r4, #5]
	add r5, r0, #0
	ldrb r0, [r4, #2]
	cmp r1, #3
	bhi _0224B240
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224B228: ; jump table
	.short _0224B230 - _0224B228 - 2 ; case 0
	.short _0224B234 - _0224B228 - 2 ; case 1
	.short _0224B238 - _0224B228 - 2 ; case 2
	.short _0224B23C - _0224B228 - 2 ; case 3
_0224B230:
	mov r2, #2
	b _0224B242
_0224B234:
	mov r2, #2
	b _0224B242
_0224B238:
	mov r2, #1
	b _0224B242
_0224B23C:
	mov r2, #1
	b _0224B242
_0224B240:
	mov r2, #0
_0224B242:
	ldr r1, _0224B4D8 ; =0x00000AF6
	lsl r0, r0, #1
	add r1, r5, r1
	add r3, r1, r0
	str r3, [sp, #8]
	ldrsh r3, [r1, r0]
	add r2, r3, r2
	strh r2, [r1, r0]
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0224B2A2
	ldr r0, _0224B4DC ; =0x00001BBC
	mov r2, #0
	add r3, r5, r0
	add r6, r5, #0
	sub r7, r0, #2
_0224B262:
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0224B290
	mov r0, #0xa
	mul r0, r2
	ldrh r1, [r4]
	ldr r2, _0224B4E0 ; =0x00001BB4
	add r0, r5, r0
	strh r1, [r0, r2]
	ldrh r3, [r4, #2]
	add r1, r2, #2
	strh r3, [r0, r1]
	ldrh r3, [r4, #4]
	add r1, r2, #4
	strh r3, [r0, r1]
	add r1, r2, #6
	ldrh r3, [r4, #6]
	add r2, #8
	strh r3, [r0, r1]
	ldrh r1, [r4, #8]
	strh r1, [r0, r2]
	b _0224B2A2
_0224B290:
	ldrb r1, [r4, #6]
	ldrb r0, [r6, r7]
	cmp r1, r0
	beq _0224B2A2
	add r2, r2, #1
	add r3, #0xa
	add r6, #0xa
	cmp r2, #8
	blt _0224B262
_0224B2A2:
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0224B2C0
	ldr r0, _0224B4E4 ; =0x00000AD5
	ldrb r2, [r4, #2]
	add r3, r5, r0
	add r0, r0, #4
	ldrb r1, [r3, r2]
	add r1, r1, #1
	strb r1, [r3, r2]
	ldrb r1, [r4, #2]
	add r2, r5, r0
	ldrb r0, [r2, r1]
	add r0, r0, #1
	b _0224B2D0
_0224B2C0:
	ldrb r1, [r4, #2]
	mov r0, #0
	add r2, r5, r1
	ldr r1, _0224B4E4 ; =0x00000AD5
	strb r0, [r2, r1]
	ldrb r2, [r4, #2]
	add r1, r1, #4
	add r2, r5, r2
_0224B2D0:
	strb r0, [r2, r1]
	ldrb r0, [r4, #4]
	cmp r0, #2
	beq _0224B2E6
	ldr r0, _0224B4E8 ; =0x00000AE4
	ldrb r1, [r4, #2]
	add r2, r5, r0
	ldrb r0, [r2, r1]
	add r0, r0, #1
	strb r0, [r2, r1]
	b _0224B2FC
_0224B2E6:
	ldr r0, _0224B4EC ; =0x00000ADD
	ldrb r2, [r4, #2]
	add r3, r5, r0
	add r0, r0, #7
	ldrb r1, [r3, r2]
	add r1, r1, #1
	strb r1, [r3, r2]
	ldrb r1, [r4, #2]
	mov r2, #0
	add r1, r5, r1
	strb r2, [r1, r0]
_0224B2FC:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0224B32E
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0224B312
	cmp r0, #1
	beq _0224B31C
	cmp r0, #2
	beq _0224B326
	b _0224B32E
_0224B312:
	ldr r0, _0224B4F0 ; =0x00000AE1
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _0224B32E
_0224B31C:
	ldr r0, _0224B4F4 ; =0x00000AE2
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _0224B32E
_0224B326:
	ldr r0, _0224B4F8 ; =0x00000AE3
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
_0224B32E:
	ldrb r0, [r4, #2]
	str r0, [sp]
	ldrb r0, [r4, #7]
	str r0, [sp, #4]
	add r0, r5, #0
	ldrb r3, [r4, #4]
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	add r0, #0x14
	bl ov17_0224A7E0
	ldr r2, [r5, #0]
	ldr r1, _0224B4FC ; =0x00000123
	add r0, r5, #0
	ldrb r1, [r2, r1]
	add r2, r4, #0
	bl ov17_0224B0E8
	ldrb r0, [r4, #8]
	mov r1, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	str r0, [sp]
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	str r0, [sp, #4]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #7]
	ldrb r3, [r4, #3]
	add r0, r5, #0
	bl ov17_0224B528
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #7]
	add r0, r5, #0
	bl ov17_0224AF3C
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_0224C89C
	ldr r1, [r5, #0]
	ldr r0, _0224B4FC ; =0x00000123
	ldrb r2, [r4, #2]
	ldrb r0, [r1, r0]
	cmp r2, r0
	bne _0224B3AE
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0224B3A0
	ldrb r1, [r4, #6]
	add r0, r5, #0
	mov r2, #1
	bl ov17_0224CB00
	b _0224B3AE
_0224B3A0:
	cmp r0, #1
	bne _0224B3AE
	ldrb r1, [r4, #6]
	add r0, r5, #0
	mov r2, #0
	bl ov17_0224CB00
_0224B3AE:
	ldrb r1, [r4, #7]
	cmp r1, #0
	bne _0224B3EC
	ldrb r0, [r4, #8]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224B3EC
	ldrb r1, [r4, #2]
	ldr r0, _0224B500 ; =0x00000B1A
	add r2, r5, r1
	add r1, r0, #0
	sub r1, #0x41
	ldrb r3, [r5, r0]
	ldrb r1, [r2, r1]
	cmp r3, r1
	bne _0224B3DA
	add r0, r5, #0
	mov r1, #1
	bl ov17_0224CB80
	b _0224B432
_0224B3DA:
	sub r0, #0x3d
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _0224B432
	add r0, r5, #0
	mov r1, #0
	bl ov17_0224CB80
	b _0224B432
_0224B3EC:
	cmp r1, #0
	beq _0224B432
	ldrb r0, [r4, #8]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224B432
	ldr r3, _0224B4F0 ; =0x00000AE1
	add r0, r3, #2
	ldrb r1, [r5, r0]
	add r0, r3, #0
	ldrb r2, [r5, r3]
	add r0, #0x39
	add r3, r3, #1
	ldrb r6, [r5, r0]
	ldrb r3, [r5, r3]
	lsl r0, r6, #1
	add r3, r2, r3
	add r0, r6, r0
	add r3, r1, r3
	cmp r0, r3
	bne _0224B432
	cmp r2, r0
	bne _0224B426
	add r0, r5, #0
	mov r1, #1
	bl ov17_0224CB80
	b _0224B432
_0224B426:
	cmp r1, #0
	bne _0224B432
	add r0, r5, #0
	mov r1, #0
	bl ov17_0224CB80
_0224B432:
	ldrb r0, [r4, #8]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224B444
	ldr r0, _0224B504 ; =0x000006F5
	bl sub_02005748
	b _0224B44A
_0224B444:
	ldr r0, _0224B508 ; =0x000006F4
	bl sub_02005748
_0224B44A:
	ldr r0, _0224B50C ; =0x00000AE8
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0224B466
	beq _0224B4D2
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0224B466
	ldr r1, [r5, #0]
	ldr r0, _0224B4FC ; =0x00000123
	ldrb r2, [r4, #2]
	ldrb r0, [r1, r0]
	cmp r2, r0
	bne _0224B4D2
_0224B466:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0224B478
	cmp r0, #1
	beq _0224B4AE
	cmp r0, #2
	beq _0224B4B8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B478:
	ldrb r0, [r4, #2]
	add r1, r5, r0
	ldr r0, _0224B510 ; =0x00000AD9
	ldrb r1, [r1, r0]
	add r0, #0x41
	ldrb r0, [r5, r0]
	cmp r0, r1
	bne _0224B494
	mov r0, #0x6f
	lsl r0, r0, #4
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B494:
	sub r0, r0, #1
	cmp r0, r1
	bne _0224B4A4
	ldr r0, _0224B514 ; =0x000006EF
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4A4:
	ldr r0, _0224B518 ; =0x000006EE
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4AE:
	ldr r0, _0224B51C ; =0x000006F1
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4B8:
	ldrb r0, [r4, #8]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224B4CC
	ldr r0, _0224B520 ; =0x000006F2
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4CC:
	ldr r0, _0224B524 ; =0x000005F6
	bl sub_02005748
_0224B4D2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224B4D8: .word 0x00000AF6
_0224B4DC: .word 0x00001BBC
_0224B4E0: .word 0x00001BB4
_0224B4E4: .word 0x00000AD5
_0224B4E8: .word 0x00000AE4
_0224B4EC: .word 0x00000ADD
_0224B4F0: .word 0x00000AE1
_0224B4F4: .word 0x00000AE2
_0224B4F8: .word 0x00000AE3
_0224B4FC: .word 0x00000123
_0224B500: .word 0x00000B1A
_0224B504: .word 0x000006F5
_0224B508: .word 0x000006F4
_0224B50C: .word 0x00000AE8
_0224B510: .word 0x00000AD9
_0224B514: .word 0x000006EF
_0224B518: .word 0x000006EE
_0224B51C: .word 0x000006F1
_0224B520: .word 0x000006F2
_0224B524: .word 0x000005F6
	thumb_func_end ov17_0224B20C

	thumb_func_start ov17_0224B528
ov17_0224B528: ; 0x0224B528
	push {r4, r5, r6, lr}
	ldr r4, _0224B598 ; =0x00000F58
	add r5, r0, r4
	mov r0, #0x4c
	add r4, r1, #0
	mul r4, r0
	add r1, r5, r4
	add r4, r1, #0
	add r4, #0x20
	ldrb r4, [r4]
	sub r0, #0x4d
	add r6, r4, #0
	cmp r4, #0x20
	bge _0224B554
_0224B544:
	ldrb r5, [r1, r6]
	cmp r5, #0
	bne _0224B54E
	add r0, r6, #0
	b _0224B554
_0224B54E:
	add r6, r6, #1
	cmp r6, #0x20
	blt _0224B544
_0224B554:
	mov r5, #0
	mvn r5, r5
	cmp r0, r5
	bne _0224B572
	mov r6, #0
	cmp r4, #0
	ble _0224B572
_0224B562:
	ldrb r5, [r1, r6]
	cmp r5, #0
	bne _0224B56C
	add r0, r6, #0
	b _0224B572
_0224B56C:
	add r6, r6, #1
	cmp r6, r4
	blt _0224B562
_0224B572:
	mov r4, #0
	mvn r4, r4
	cmp r0, r4
	bne _0224B580
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
_0224B580:
	strb r3, [r1, r0]
	add r0, r1, #0
	add r0, #0x21
	strb r2, [r0]
	add r0, r1, #0
	ldr r2, [sp, #0x10]
	add r0, #0x22
	strb r2, [r0]
	ldr r0, [sp, #0x14]
	add r1, #0x23
	strb r0, [r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224B598: .word 0x00000F58
	thumb_func_end ov17_0224B528

	thumb_func_start ov17_0224B59C
ov17_0224B59C: ; 0x0224B59C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224B5B0 ; =ov17_0224B5F0
	ldr r2, _0224B5B4 ; =0x00009862
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #8]
	pop {r4, pc}
	nop
_0224B5B0: .word ov17_0224B5F0
_0224B5B4: .word 0x00009862
	thumb_func_end ov17_0224B59C

	thumb_func_start ov17_0224B5B8
ov17_0224B5B8: ; 0x0224B5B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ov17_0224B5B8

	thumb_func_start ov17_0224B5C8
ov17_0224B5C8: ; 0x0224B5C8
	ldr r1, _0224B5EC ; =0x00000F58
	mov r2, #0
	add r1, r0, r1
_0224B5CE:
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224B5DE
	mov r0, #0
	bx lr
_0224B5DE:
	add r2, r2, #1
	add r1, #0x4c
	cmp r2, #4
	blt _0224B5CE
	mov r0, #1
	bx lr
	nop
_0224B5EC: .word 0x00000F58
	thumb_func_end ov17_0224B5C8

	thumb_func_start ov17_0224B5F0
ov17_0224B5F0: ; 0x0224B5F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r1, _0224B7B0 ; =0x00000F58
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	add r4, r0, r1
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r5, [sp, #0x10]
	str r0, [sp, #0x14]
	add r7, #0x18
_0224B60E:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	mov r6, #0
	ldrb r0, [r4, r0]
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _0224B620
	b _0224B792
_0224B620:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	mov r2, #4
	bl ov17_0224BD28
	ldr r1, [sp, #0x10]
	ldr r0, _0224B7B4 ; =0x00000B04
	ldr r0, [r1, r0]
	ldr r1, _0224B7B8 ; =0x00002710
	bl _u32_div_f
	ldr r1, [sp, #0x1c]
	cmp r1, #4
	bls _0224B63E
	b _0224B74A
_0224B63E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224B64A: ; jump table
	.short _0224B74A - _0224B64A - 2 ; case 0
	.short _0224B654 - _0224B64A - 2 ; case 1
	.short _0224B6C0 - _0224B64A - 2 ; case 2
	.short _0224B6EE - _0224B64A - 2 ; case 3
	.short _0224B71C - _0224B64A - 2 ; case 4
_0224B654:
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x18]
	add r2, r2, r1
	mov r1, #0xad
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	cmp r1, #1
	bne _0224B692
	add r1, r4, #0
	add r1, #0x22
	ldrb r1, [r1]
	add r3, r4, #0
	sub r0, r0, #1
	str r1, [sp]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	add r3, #0x21
	add r2, r7, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x14]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	add r0, #0x24
	bl ov17_0224B7BC
	add r6, r0, #0
	b _0224B74E
_0224B692:
	add r1, r4, #0
	add r1, #0x22
	ldrb r1, [r1]
	add r3, r4, #0
	sub r0, r0, #1
	str r1, [sp]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	add r3, #0x21
	add r2, r7, #0
	str r1, [sp, #4]
	add r1, r6, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	add r0, #0x24
	bl ov17_0224B8D0
	add r6, r0, #0
	b _0224B74E
_0224B6C0:
	add r1, r4, #0
	add r1, #0x22
	ldrb r1, [r1]
	add r3, r4, #0
	sub r0, r0, #1
	str r1, [sp]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	add r3, #0x21
	add r2, r7, #0
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	add r0, #0x24
	bl ov17_0224B8D0
	add r6, r0, #0
	b _0224B74E
_0224B6EE:
	add r1, r4, #0
	add r1, #0x22
	ldrb r1, [r1]
	add r3, r4, #0
	sub r0, r0, #1
	str r1, [sp]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	add r3, #0x21
	add r2, r7, #0
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	add r0, #0x24
	bl ov17_0224BA50
	add r6, r0, #0
	b _0224B74E
_0224B71C:
	add r1, r4, #0
	add r1, #0x22
	ldrb r1, [r1]
	add r3, r4, #0
	sub r0, r0, #1
	str r1, [sp]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	add r3, #0x21
	add r2, r7, #0
	str r1, [sp, #4]
	add r1, r6, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	add r0, #0x24
	bl ov17_0224BA50
	add r6, r0, #0
	b _0224B74E
_0224B74A:
	bl GF_AssertFail
_0224B74E:
	cmp r6, #1
	bne _0224B792
	add r0, r4, #0
	add r0, #0x20
	ldrb r1, [r0]
	mov r0, #0
	strb r0, [r4, r1]
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x20
	blo _0224B77C
	add r1, r4, #0
	add r1, #0x20
	mov r0, #0
	strb r0, [r1]
_0224B77C:
	add r0, r4, #0
	add r0, #0x24
	mov r1, #0
	mov r2, #0x28
	bl MI_CpuFill8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	mov r2, #3
	bl ov17_0224BD28
_0224B792:
	ldr r0, [sp, #0x14]
	add r4, #0x4c
	add r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r7, #0x10
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0x18]
	cmp r0, #4
	bge _0224B7AA
	b _0224B60E
_0224B7AA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B7B0: .word 0x00000F58
_0224B7B4: .word 0x00000B04
_0224B7B8: .word 0x00002710
	thumb_func_end ov17_0224B5F0

	thumb_func_start ov17_0224B7BC
ov17_0224B7BC: ; 0x0224B7BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _0224B7D6
	cmp r0, #1
	beq _0224B824
	b _0224B858
_0224B7D6:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #8
	str r0, [r5, #0]
	ldr r0, [r4, #8]
	lsr r1, r1, #1
	lsl r0, r0, #8
	str r0, [r5, #4]
	ldr r0, [r5, #0]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	mov r0, #5
	lsl r0, r0, #8
	bl _u32_div_f
	ldr r1, [sp, #0x20]
	cmp r1, #1
	bne _0224B80E
	ldr r1, _0224B8C8 ; =0xFFFFF600
	strh r1, [r5, #0x14]
	mov r1, #0xc8
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x64
	bl _s32_div_f
	b _0224B812
_0224B80E:
	ldr r1, _0224B8CC ; =0xFFFFFB00
	strh r1, [r5, #0x14]
_0224B812:
	strh r0, [r5, #0x16]
	ldr r0, [sp, #0x28]
	mov r1, #1
	mov r2, #0
	bl ov17_0224AC78
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
_0224B824:
	mov r0, #0x14
	ldrsh r1, [r5, r0]
	ldr r2, [r5, #0xc]
	add r1, r2, r1
	str r1, [r5, #0xc]
	ldrsh r1, [r5, r0]
	mov r0, #0x16
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r0, r1
	blt _0224B85E
	str r1, [r5, #0xc]
	mov r1, #1
	ldr r0, [sp, #0x28]
	add r2, r1, #0
	bl ov17_0224AC78
	mov r0, #1
	str r0, [sp, #4]
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
	b _0224B85E
_0224B858:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B85E:
	cmp r6, #0
	bne _0224B866
	mov r6, #0x64
	b _0224B868
_0224B866:
	mov r6, #0x28
_0224B868:
	ldr r0, [sp, #0x24]
	lsl r1, r0, #9
	mov r0, #0x19
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _0224B876
	add r1, r0, #0
_0224B876:
	asr r0, r1, #8
	add r6, r6, r0
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	str r0, [sp]
	sub r1, r1, r0
	ldr r7, [r5, #4]
	ldr r0, [r5, #0xc]
	sub r5, r0, r7
	add r0, r1, #0
	mul r0, r6
	mov r1, #0x64
	bl _s32_div_f
	str r0, [sp, #8]
	add r0, r5, #0
	mul r0, r6
	mov r1, #0x64
	bl _s32_div_f
	ldr r2, [sp]
	ldr r1, [sp, #8]
	add r2, r2, r1
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	str r1, [r4, #4]
	add r1, r7, r0
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r2, r0, #8
	str r2, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl ov22_0225B100
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B8C8: .word 0xFFFFF600
_0224B8CC: .word 0xFFFFFB00
	thumb_func_end ov17_0224B7BC

	thumb_func_start ov17_0224B8D0
ov17_0224B8D0: ; 0x0224B8D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r0, [r4, #0x10]
	add r6, r2, #0
	str r3, [sp]
	ldr r5, [sp, #0x30]
	cmp r0, #0
	beq _0224B8F0
	cmp r0, #1
	beq _0224B948
	cmp r0, #2
	beq _0224B99A
	b _0224B9DE
_0224B8F0:
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x34]
	lsl r0, r0, #8
	str r0, [r4, #0]
	ldr r0, [r6, #8]
	lsl r0, r0, #8
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	str r0, [r4, #0xc]
	mov r0, #0x1e
	mul r0, r1
	mov r1, #0x64
	bl _u32_div_f
	add r7, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r7, #0
	bl _s32_div_f
	ldr r1, [sp, #0x34]
	str r0, [r4, #0x14]
	mov r0, #1
	lsl r0, r0, #0xc
	sub r1, r1, r7
	bl _s32_div_f
	str r0, [r4, #0x18]
	cmp r5, #0
	bne _0224B942
	ldr r1, [r4, #0x14]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	str r2, [r4, #0x14]
	ldr r1, [r4, #0x18]
	mul r0, r1
	str r0, [r4, #0x18]
_0224B942:
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0224B948:
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _0224B964
	ldr r1, [r4, #0x14]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	ldr r1, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0xc]
	mov r0, #0x20
	b _0224B96E
_0224B964:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0xc]
	mov r0, #0x10
_0224B96E:
	lsl r0, r0, #8
	str r0, [sp, #8]
	ldr r7, [r4, #4]
	ldr r0, [r4, #0xc]
	sub r0, r0, r7
	bl abs
	ldr r1, [sp, #8]
	cmp r0, r1
	blt _0224B9E4
	cmp r5, #1
	bne _0224B98C
	add r0, r1, #0
	add r0, r7, r0
	b _0224B990
_0224B98C:
	add r0, r1, #0
	sub r0, r7, r0
_0224B990:
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	b _0224B9E4
_0224B99A:
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _0224B9B0
	ldr r1, [r4, #0x18]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	ldr r1, [r4, #0xc]
	b _0224B9B4
_0224B9B0:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x18]
_0224B9B4:
	sub r0, r1, r0
	str r0, [r4, #0xc]
	cmp r5, #1
	bne _0224B9C4
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	ble _0224B9D0
_0224B9C4:
	cmp r5, #0
	bne _0224B9E4
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	blt _0224B9E4
_0224B9D0:
	str r1, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0224B9E4
_0224B9DE:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B9E4:
	ldr r0, [sp]
	cmp r0, #0
	bne _0224B9EE
	mov r5, #0x64
	b _0224B9F0
_0224B9EE:
	mov r5, #0x28
_0224B9F0:
	ldr r0, [sp, #0x2c]
	lsl r1, r0, #9
	mov r0, #0x19
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _0224B9FE
	add r1, r0, #0
_0224B9FE:
	asr r0, r1, #8
	add r5, r5, r0
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	str r0, [sp, #4]
	sub r1, r1, r0
	ldr r7, [r4, #4]
	ldr r0, [r4, #0xc]
	sub r4, r0, r7
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x64
	bl _s32_div_f
	str r0, [sp, #0x10]
	add r0, r4, #0
	mul r0, r5
	mov r1, #0x64
	bl _s32_div_f
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x10]
	add r2, r2, r1
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	str r1, [r6, #4]
	add r1, r7, r0
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r2, r0, #8
	str r2, [r6, #8]
	ldr r0, [r6, #0]
	ldr r1, [r6, #4]
	bl ov22_0225B100
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224B8D0

	thumb_func_start ov17_0224BA50
ov17_0224BA50: ; 0x0224BA50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	ldrb r0, [r5, #0x10]
	add r4, r2, #0
	str r3, [sp]
	ldr r6, [sp, #0x38]
	cmp r0, #0
	beq _0224BA70
	cmp r0, #1
	beq _0224BAF0
	cmp r0, #2
	beq _0224BB62
	b _0224BBC4
_0224BA70:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #8
	str r0, [r5, #0]
	ldr r0, [r4, #8]
	lsl r0, r0, #8
	str r0, [r5, #4]
	ldr r0, [r5, #0]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	mov r0, #0x1e
	mul r0, r1
	mov r1, #0x64
	bl _u32_div_f
	ldr r1, [sp, #0x3c]
	str r0, [sp, #0x14]
	sub r7, r1, r0
	ldr r0, _0224BC44 ; =0x00038E00
	ldr r1, [sp, #0x14]
	bl _s32_div_f
	str r0, [r5, #0x18]
	ldr r0, _0224BC48 ; =0xFFFC7200
	add r1, r7, #0
	bl _s32_div_f
	str r0, [r5, #0x1c]
	mov r0, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xc
	bl _s32_div_f
	str r0, [r5, #0x20]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r7, #0
	bl _s32_div_f
	neg r0, r0
	str r0, [r5, #0x24]
	cmp r6, #1
	bne _0224BAEA
	ldr r1, [r5, #0x18]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	str r2, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	str r2, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	add r2, r1, #0
	mul r2, r0
	str r2, [r5, #0x20]
	ldr r1, [r5, #0x24]
	mul r0, r1
	str r0, [r5, #0x24]
_0224BAEA:
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
_0224BAF0:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0224BB1C
	ldr r1, [r5, #0x20]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x18]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	ldr r1, [r5, #0x14]
	b _0224BB2C
_0224BB1C:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x20]
	add r0, r1, r0
	str r0, [r5, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
_0224BB2C:
	add r0, r1, r0
	str r0, [r5, #0x14]
	ldr r0, [sp, #0xc]
	ldr r7, [r5, #0]
	lsl r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	sub r0, r0, r7
	bl abs
	ldr r1, [sp, #8]
	cmp r0, r1
	blt _0224BBCA
	cmp r6, #1
	bne _0224BB50
	add r0, r1, #0
	sub r0, r7, r0
	b _0224BB54
_0224BB50:
	add r0, r1, #0
	add r0, r7, r0
_0224BB54:
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
	b _0224BBCA
_0224BB62:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0224BB8A
	ldr r1, [r5, #0x24]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	ldr r1, [r5, #0x1c]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	ldr r1, [r5, #0x14]
	b _0224BB96
_0224BB8A:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x24]
	add r0, r1, r0
	str r0, [r5, #8]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x1c]
_0224BB96:
	add r0, r1, r0
	str r0, [r5, #0x14]
	cmp r6, #1
	bne _0224BBA6
	ldr r1, [r5, #0]
	ldr r0, [r5, #8]
	cmp r0, r1
	bge _0224BBB2
_0224BBA6:
	cmp r6, #0
	bne _0224BBCA
	ldr r1, [r5, #0]
	ldr r0, [r5, #8]
	cmp r0, r1
	bgt _0224BBCA
_0224BBB2:
	str r1, [r5, #8]
	mov r0, #0
	str r0, [r5, #0x14]
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
	mov r0, #1
	str r0, [sp, #0x10]
	b _0224BBCA
_0224BBC4:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224BBCA:
	ldr r1, [r5, #0x14]
	ldr r0, [r4, #0]
	lsl r1, r1, #8
	lsr r1, r1, #0x10
	bl ov22_0225B0E4
	ldr r0, [sp]
	cmp r0, #0
	bne _0224BBE0
	mov r6, #0x64
	b _0224BBE2
_0224BBE0:
	mov r6, #0x28
_0224BBE2:
	ldr r0, [sp, #0x34]
	lsl r1, r0, #9
	mov r0, #0x19
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _0224BBF0
	add r1, r0, #0
_0224BBF0:
	asr r0, r1, #8
	add r6, r6, r0
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	str r0, [sp, #4]
	sub r1, r1, r0
	ldr r7, [r5, #4]
	ldr r0, [r5, #0xc]
	sub r5, r0, r7
	add r0, r1, #0
	mul r0, r6
	mov r1, #0x64
	bl _s32_div_f
	str r0, [sp, #0x18]
	add r0, r5, #0
	mul r0, r6
	mov r1, #0x64
	bl _s32_div_f
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x18]
	add r2, r2, r1
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	str r1, [r4, #4]
	add r1, r7, r0
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r2, r0, #8
	str r2, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl ov22_0225B100
	ldr r0, [sp, #0x10]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224BC44: .word 0x00038E00
_0224BC48: .word 0xFFFC7200
	thumb_func_end ov17_0224BA50

	thumb_func_start ov17_0224BC4C
ov17_0224BC4C: ; 0x0224BC4C
	ldr r1, _0224BC64 ; =0x00001BBC
	mov r2, #0
	add r3, r0, r1
	mov r0, #4
_0224BC54:
	ldrb r1, [r3]
	add r2, r2, #1
	bic r1, r0
	strb r1, [r3]
	add r3, #0xa
	cmp r2, #8
	blt _0224BC54
	bx lr
	; .align 2, 0
_0224BC64: .word 0x00001BBC
	thumb_func_end ov17_0224BC4C

	thumb_func_start ov17_0224BC68
ov17_0224BC68: ; 0x0224BC68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0224BCEC ; =0x0000108C
	add r6, r1, #0
	add r7, r5, r0
	mov r0, #0x28
	mul r0, r6
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	str r2, [sp]
	cmp r0, #0
	beq _0224BC86
	bl GF_AssertFail
_0224BC86:
	ldr r0, _0224BCF0 ; =0x00001088
	mov r2, #0x28
	add r4, r6, #0
	add r0, r5, r0
	mul r4, r2
	str r0, [sp, #8]
	add r0, r0, r4
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [sp, #8]
	add r1, r5, r4
	str r5, [r0, r4]
	ldr r0, _0224BCF4 ; =0x000010A2
	ldr r2, [sp]
	strb r6, [r1, r0]
	sub r3, r0, #1
	strb r2, [r1, r3]
	lsl r2, r6, #2
	add r2, r5, r2
	ldr r3, [r2, #0x5c]
	add r2, r0, #0
	sub r2, #0x12
	str r3, [r1, r2]
	add r2, r5, #0
	add r2, #0x18
	lsl r3, r6, #4
	add r3, r2, r3
	add r2, r0, #0
	add r0, #0xa
	sub r2, #0xe
	str r3, [r1, r2]
	add r0, r5, r0
	ldrb r2, [r0, r4]
	mov r1, #4
	orr r1, r2
	strb r1, [r0, r4]
	ldrb r2, [r0, r4]
	mov r1, #8
	orr r1, r2
	strb r1, [r0, r4]
	ldr r1, [sp, #8]
	ldr r0, _0224BCF8 ; =ov17_0224BE50
	ldr r2, _0224BCFC ; =0x00009858
	add r1, r1, r4
	bl sub_0200D9E8
	ldr r1, [sp, #4]
	str r0, [r7, r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BCEC: .word 0x0000108C
_0224BCF0: .word 0x00001088
_0224BCF4: .word 0x000010A2
_0224BCF8: .word ov17_0224BE50
_0224BCFC: .word 0x00009858
	thumb_func_end ov17_0224BC68

	thumb_func_start ov17_0224BD00
ov17_0224BD00: ; 0x0224BD00
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0224BD24 ; =0x0000108C
	add r5, r0, #0
	add r6, r4, #0
_0224BD0A:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0224BD18
	bl sub_0200DA58
	ldr r0, _0224BD24 ; =0x0000108C
	str r6, [r5, r0]
_0224BD18:
	add r4, r4, #1
	add r5, #0x28
	cmp r4, #4
	blt _0224BD0A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224BD24: .word 0x0000108C
	thumb_func_end ov17_0224BD00

	thumb_func_start ov17_0224BD28
ov17_0224BD28: ; 0x0224BD28
	push {r3, r4, r5, lr}
	mov r3, #0x28
	mul r3, r1
	ldr r1, _0224BDEC ; =0x0000108C
	add r4, r0, r3
	ldr r5, [r4, r1]
	cmp r5, #0
	beq _0224BDE8
	cmp r2, #5
	bhi _0224BDE4
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224BD48: ; jump table
	.short _0224BD54 - _0224BD48 - 2 ; case 0
	.short _0224BD6A - _0224BD48 - 2 ; case 1
	.short _0224BD78 - _0224BD48 - 2 ; case 2
	.short _0224BD86 - _0224BD48 - 2 ; case 3
	.short _0224BDA4 - _0224BD48 - 2 ; case 4
	.short _0224BDD2 - _0224BD48 - 2 ; case 5
_0224BD54:
	add r1, #0x20
	add r2, r0, r1
	ldrb r1, [r2, r3]
	mov r0, #0x20
	bic r1, r0
	strb r1, [r2, r3]
	ldrb r1, [r2, r3]
	mov r0, #0x10
	bic r1, r0
	strb r1, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BD6A:
	add r1, #0x20
	add r2, r0, r1
	ldrb r1, [r2, r3]
	mov r0, #0x20
	orr r0, r1
	strb r0, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BD78:
	add r1, #0x20
	add r2, r0, r1
	ldrb r1, [r2, r3]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BD86:
	add r1, #0x20
	add r0, r0, r1
	ldrb r2, [r0, r3]
	mov r1, #2
	bic r2, r1
	strb r2, [r0, r3]
	ldrb r2, [r0, r3]
	mov r1, #1
	bic r2, r1
	strb r2, [r0, r3]
	ldrb r2, [r0, r3]
	mov r1, #4
	orr r1, r2
	strb r1, [r0, r3]
	pop {r3, r4, r5, pc}
_0224BDA4:
	add r2, r1, #0
	add r2, #0x20
	ldrb r2, [r4, r2]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1f
	bne _0224BDE8
	add r2, r1, #0
	add r2, #0x20
	add r5, r0, r2
	ldrb r2, [r5, r3]
	mov r0, #2
	orr r0, r2
	strb r0, [r5, r3]
	ldrb r0, [r5, r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0224BDE8
	add r0, r1, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	add r1, #0x1c
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_0224BDD2:
	add r1, #0x20
	add r2, r0, r1
	ldrb r1, [r2, r3]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BDE4:
	bl GF_AssertFail
_0224BDE8:
	pop {r3, r4, r5, pc}
	nop
_0224BDEC: .word 0x0000108C
	thumb_func_end ov17_0224BD28

	thumb_func_start ov17_0224BDF0
ov17_0224BDF0: ; 0x0224BDF0
	mov r2, #0x28
	mul r2, r1
	ldr r1, _0224BE20 ; =0x0000108C
	add r2, r0, r2
	ldr r0, [r2, r1]
	cmp r0, #0
	bne _0224BE02
	mov r0, #1
	bx lr
_0224BE02:
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r2, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _0224BE18
	add r1, #0x15
	ldrb r0, [r2, r1]
	cmp r0, #0
	bne _0224BE1C
_0224BE18:
	mov r0, #1
	bx lr
_0224BE1C:
	mov r0, #0
	bx lr
	; .align 2, 0
_0224BE20: .word 0x0000108C
	thumb_func_end ov17_0224BDF0

	thumb_func_start ov17_0224BE24
ov17_0224BE24: ; 0x0224BE24
	mov r2, #0x28
	mul r2, r1
	add r2, r0, r2
	ldr r0, _0224BE4C ; =0x0000108C
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0224BE36
	mov r0, #1
	bx lr
_0224BE36:
	add r0, #0x20
	ldrb r0, [r2, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224BE46
	mov r0, #1
	bx lr
_0224BE46:
	mov r0, #0
	bx lr
	nop
_0224BE4C: .word 0x0000108C
	thumb_func_end ov17_0224BE24

	thumb_func_start ov17_0224BE50
ov17_0224BE50: ; 0x0224BE50
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov17_0224BE64
	add r0, r4, #0
	bl ov17_0224BF58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0224BE50

	thumb_func_start ov17_0224BE64
ov17_0224BE64: ; 0x0224BE64
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _0224BF40
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _0224BF40
	ldr r5, [r4, #0]
	ldr r1, _0224BF44 ; =0x00001154
	ldr r2, _0224BF48 ; =0x00002710
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r3, #0
	bl _ull_mul
	ldr r2, _0224BF4C ; =0x00000B04
	mov r3, #0
	ldr r7, [r5, r2]
	add r2, r7, #0
	bl _ull_mod
	add r5, r0, #0
	add r6, r1, #0
	lsr r7, r7, #1
	lsr r0, r5, #0x13
	lsl r1, r6, #0xd
	orr r1, r0
	lsl r0, r5, #0xd
	add r2, r7, #0
	mov r3, #0
	bl _ull_div
	add r2, r1, #0
	mov r1, #1
	sub r3, r5, r7
	ldr r3, _0224BF50 ; =0x00000000
	sbc r6, r3
	blo _0224BEC0
	lsl r3, r1, #0xe
	mov r1, #0
	sub r0, r3, r0
_0224BEC0:
	add r2, r4, #0
	add r2, #0x24
	ldrb r2, [r2]
	ldr r3, _0224BF54 ; =0xFFFD8000
	mov r5, #0x40
	add r0, r0, r3
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	lsl r2, r2, #0x19
	lsr r2, r2, #0x1f
	bic r0, r5
	lsl r5, r1, #0x18
	lsr r5, r5, #0x18
	lsl r5, r5, #0x1f
	lsr r5, r5, #0x19
	orr r5, r0
	add r0, r4, #0
	add r0, #0x24
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224BF2A
	ldr r0, [r4, #0x10]
	cmp r0, r3
	beq _0224BF06
	cmp r2, #0
	bne _0224BF2A
	cmp r1, #1
	bne _0224BF2A
_0224BF06:
	ldr r0, _0224BF54 ; =0xFFFD8000
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x24
	ldrb r1, [r0]
	mov r0, #0x10
	bic r1, r0
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x24
	ldrb r1, [r0]
	mov r0, #0x20
	orr r1, r0
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
_0224BF2A:
	ldr r1, [r4, #0x10]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	ldr r0, [r4, #0xc]
	str r1, [r0, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl ov17_0224B09C
_0224BF40:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224BF44: .word 0x00001154
_0224BF48: .word 0x00002710
_0224BF4C: .word 0x00000B04
_0224BF50: .word 0x00000000
_0224BF54: .word 0xFFFD8000
	thumb_func_end ov17_0224BE64

	thumb_func_start ov17_0224BF58
ov17_0224BF58: ; 0x0224BF58
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r2, [r4, #0]
	ldr r1, _0224C0B0 ; =0x00001154
	mov r3, #0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	ldr r2, _0224C0B4 ; =0x00002710
	ldr r6, [r4, #0x14]
	bl _ull_mul
	ldr r3, [r4, #0]
	ldr r2, _0224C0B8 ; =0x00000B04
	ldr r2, [r3, r2]
	mov r3, #0
	lsl r2, r2, #1
	bl _ull_mod
	mov r2, #0x5a
	lsl r2, r2, #2
	mov r3, #0
	bl _ull_mul
	ldr r3, [r4, #0]
	ldr r2, _0224C0B8 ; =0x00000B04
	ldr r2, [r3, r2]
	mov r3, #0
	lsl r2, r2, #1
	bl _ull_div
	lsl r5, r0, #8
	lsr r2, r0, #0x18
	add r0, r4, #0
	lsl r1, r1, #8
	str r5, [r4, #0x14]
	add r0, #0x24
	ldrb r0, [r0]
	orr r1, r2
	lsl r2, r0, #0x1e
	lsr r2, r2, #0x1f
	bne _0224C0AC
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224BFC6
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	mov r2, #8
	add r6, r5, #0
	bic r0, r2
	add r2, r4, #0
	add r2, #0x24
	strb r0, [r2]
_0224BFC6:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224C026
	mov r0, #0
	sub r2, r5, r6
	mov ip, r1
	mov r2, ip
	sbc r2, r0
	bhs _0224BFE4
	add r7, r6, r5
	b _0224BFE6
_0224BFE4:
	add r7, r5, #0
_0224BFE6:
	ldr r3, [r4, #0x20]
	mov r0, #0
	add r2, r0, #0
	add r0, r3, #0
	eor r2, r1
	eor r0, r5
	orr r0, r2
	beq _0224C016
	cmp r6, r3
	bhi _0224BFFE
	cmp r3, r7
	bls _0224C016
_0224BFFE:
	ldr r2, [r4, #0x20]
	mov r0, #0
	sub r2, r5, r2
	mov ip, r1
	mov r2, ip
	sbc r2, r0
	blo _0224C0AC
	sub r2, r5, r6
	mov ip, r1
	mov r2, ip
	sbc r2, r0
	bhs _0224C0AC
_0224C016:
	add r0, r4, #0
	add r0, #0x24
	ldrb r2, [r0]
	mov r0, #4
	bic r2, r0
	add r0, r4, #0
	add r0, #0x24
	strb r2, [r0]
_0224C026:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224C06C
	mov r2, #0
	mov r0, #0
	eor r2, r1
	eor r0, r5
	orr r0, r2
	beq _0224C048
	mov r2, #0
	sub r0, r5, r6
	sbc r1, r2
	bhs _0224C06C
_0224C048:
	add r1, r4, #0
	add r1, #0x24
	ldrb r2, [r1]
	mov r1, #1
	mov r0, #0
	bic r2, r1
	add r1, r4, #0
	add r1, #0x24
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x24
	ldrb r2, [r1]
	mov r1, #2
	orr r2, r1
	add r1, r4, #0
	add r1, #0x24
	strb r2, [r1]
	str r0, [r4, #0x20]
_0224C06C:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0224C074
	b _0224C074
_0224C074:
	ldr r0, [r4, #0x14]
	mov r5, #3
	lsl r0, r0, #8
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	add r1, r5, #0
	mul r1, r0
	ldrb r2, [r4, #0x19]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	mov r1, #6
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0224C0BC ; =0x022546F4
	asr r0, r0, #0xc
	ldrsh r1, [r1, r3]
	add r0, r0, r1
	sub r1, r0, r5
	ldr r0, [r4, #0xc]
	str r1, [r0, #4]
	ldr r2, [r4, #0xc]
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl ov22_0225B100
_0224C0AC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C0B0: .word 0x00001154
_0224C0B4: .word 0x00002710
_0224C0B8: .word 0x00000B04
_0224C0BC: .word 0x022546F4
	thumb_func_end ov17_0224BF58

	thumb_func_start ov17_0224C0C0
ov17_0224C0C0: ; 0x0224C0C0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	cmp r6, #0
	beq _0224C0D6
	cmp r5, #0
	bne _0224C0D6
	bl GF_AssertFail
_0224C0D6:
	cmp r6, #6
	bls _0224C0DC
	b _0224C23C
_0224C0DC:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224C0E8: ; jump table
	.short _0224C240 - _0224C0E8 - 2 ; case 0
	.short _0224C0F6 - _0224C0E8 - 2 ; case 1
	.short _0224C112 - _0224C0E8 - 2 ; case 2
	.short _0224C136 - _0224C0E8 - 2 ; case 3
	.short _0224C14C - _0224C0E8 - 2 ; case 4
	.short _0224C190 - _0224C0E8 - 2 ; case 5
	.short _0224C1C2 - _0224C0E8 - 2 ; case 6
_0224C0F6:
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r4, #0x9c
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C112:
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r3, [r4, #0]
	add r1, r2, #1
	ldrb r0, [r3, r2]
	add r2, #0x51
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r4, #0x9c
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200BBA8
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C136:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	add r4, #0x9c
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0]
	bl sub_0200B60C
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C14C:
	ldrb r6, [r5]
	ldr r3, [r4, #0]
	mov r0, #1
	lsl r2, r6, #2
	str r0, [sp]
	mov r0, #2
	add r2, r3, r2
	add r6, r3, r6
	mov r3, #0x42
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r3, r3, #2
	add r0, #0x9c
	add r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r4, #0x9c
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C190:
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	add r4, #0x9c
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0]
	add r3, r1, #0
	bl sub_0200B60C
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C1C2:
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r3, [r4, #0]
	add r1, r2, #1
	ldrb r0, [r3, r2]
	add r2, #0x51
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200BBA8
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, r4, #0
	add r0, #0x9c
	ldrb r2, [r5, #4]
	ldr r0, [r0, #0]
	add r3, r1, #0
	bl sub_0200B60C
	ldrb r6, [r5]
	ldr r3, [r4, #0]
	mov r0, #1
	lsl r2, r6, #2
	str r0, [sp]
	mov r1, #2
	add r2, r3, r2
	add r6, r3, r6
	mov r3, #0x42
	add r0, r4, #0
	str r1, [sp, #4]
	lsl r3, r3, #2
	add r0, #0x9c
	add r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	bl sub_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r4, #0x9c
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #3
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C23C:
	bl GF_AssertFail
_0224C240:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224C0C0

	thumb_func_start ov17_0224C244
ov17_0224C244: ; 0x0224C244
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _0224C2C0 ; =0x00000171
	add r7, r2, #0
	ldrb r0, [r1, r0]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _0224C266
	ldr r0, _0224C2C4 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027AC0
	add r4, r0, #0
	b _0224C268
_0224C266:
	mov r4, #1
_0224C268:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	bl ov17_0224C0C0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x9c
	add r1, #0xa0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x78
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	add r2, r5, #0
	add r0, r5, #0
	str r3, [sp, #8]
	add r2, #0xa0
	ldr r2, [r2, #0]
	add r0, #0x78
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0224C2C8 ; =0x00000AD4
	strb r0, [r5, r1]
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C2C0: .word 0x00000171
_0224C2C4: .word 0x00001988
_0224C2C8: .word 0x00000AD4
	thumb_func_end ov17_0224C244

	thumb_func_start ov17_0224C2CC
ov17_0224C2CC: ; 0x0224C2CC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #8
	blo _0224C2DE
	bl GF_AssertFail
_0224C2DE:
	lsl r3, r4, #2
	ldr r2, _0224C2F8 ; =0x0225470C
	add r0, r5, #0
	ldr r4, _0224C2FC ; =0x0225470E
	ldrh r2, [r2, r3]
	str r6, [sp]
	add r5, #0x98
	ldrb r3, [r4, r3]
	ldr r1, [r5, #0]
	bl ov17_0224C244
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224C2F8: .word 0x0225470C
_0224C2FC: .word 0x0225470E
	thumb_func_end ov17_0224C2CC

	thumb_func_start ov17_0224C300
ov17_0224C300: ; 0x0224C300
	ldr r1, _0224C308 ; =0x00000AD4
	ldr r3, _0224C30C ; =sub_0201D724
	ldrb r0, [r0, r1]
	bx r3
	; .align 2, 0
_0224C308: .word 0x00000AD4
_0224C30C: .word sub_0201D724
	thumb_func_end ov17_0224C300

	thumb_func_start ov17_0224C310
ov17_0224C310: ; 0x0224C310
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224C358 ; =0x000080F1
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x4c
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224C35C ; =0x000080EE
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x4d
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224C35C ; =0x000080EE
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x4e
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224C358: .word 0x000080F1
_0224C35C: .word 0x000080EE
	thumb_func_end ov17_0224C310

	thumb_func_start ov17_0224C360
ov17_0224C360: ; 0x0224C360
	push {r4, lr}
	ldr r1, _0224C37C ; =0x000080F1
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224C380 ; =0x000080EE
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224C380 ; =0x000080EE
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224C37C: .word 0x000080F1
_0224C380: .word 0x000080EE
	thumb_func_end ov17_0224C360

	thumb_func_start ov17_0224C384
ov17_0224C384: ; 0x0224C384
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224C396
	bl GF_AssertFail
_0224C396:
	mov r0, #0x17
	mov r1, #0x10
	bl sub_02018144
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x21
	lsl r0, r0, #4
	str r4, [r5, r0]
	str r5, [r4, #8]
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _0224C3D8 ; =0x022547FC
	bl sub_0200CE6C
	str r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, _0224C3DC ; =ov17_0224C414
	ldr r2, _0224C3E0 ; =0x00009C4F
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224C3D8: .word 0x022547FC
_0224C3DC: .word ov17_0224C414
_0224C3E0: .word 0x00009C4F
	thumb_func_end ov17_0224C384

	thumb_func_start ov17_0224C3E4
ov17_0224C3E4: ; 0x0224C3E4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_0200DA58
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_0200D0F4
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x21
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov17_0224C3E4

	thumb_func_start ov17_0224C414
ov17_0224C414: ; 0x0224C414
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _0224C422
	cmp r0, #1
	beq _0224C426
	cmp r0, #2
	b _0224C426
_0224C422:
	add r0, r0, #1
	strb r0, [r1, #0xc]
_0224C426:
	ldr r0, [r1, #4]
	ldr r3, _0224C430 ; =sub_0200D324
	ldr r0, [r0, #0]
	bx r3
	nop
_0224C430: .word sub_0200D324
	thumb_func_end ov17_0224C414

	thumb_func_start ov17_0224C434
ov17_0224C434: ; 0x0224C434
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r3, #0
	mov r1, #3
	add r7, r2, #0
	bl ov17_0223F0BC
	add r6, r0, #0
	add r0, r4, #0
	mul r0, r6
	add r1, r7, #0
	bl _u32_div_f
	add r1, r0, #0
	mov r3, #1
	lsl r3, r3, #8
	sub r4, r3, r6
	lsr r2, r4, #0x1f
	add r2, r4, r2
	sub r1, r1, #1
	asr r2, r2, #1
	add r1, r1, r2
	lsl r1, r1, #0x10
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	mov r2, #0xb0
	lsl r3, r3, #0xc
	bl sub_0200D500
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200D3F4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224C434

	thumb_func_start ov17_0224C47C
ov17_0224C47C: ; 0x0224C47C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	mov r3, #1
	ldr r0, [r5, #4]
	mvn r1, r1
	mov r2, #0xb0
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0200D3F4
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224C47C

	thumb_func_start ov17_0224C49C
ov17_0224C49C: ; 0x0224C49C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	add r0, r7, #0
	mov r1, #3
	bl ov17_0223F0BC
	add r4, r0, #0
	add r0, r6, #0
	ldr r1, [sp]
	mul r0, r4
	bl _u32_div_f
	add r6, r0, #0
	cmp r7, #0
	bne _0224C4D6
	add r0, r7, #0
	mov r1, #1
	bl ov17_0223F0BC
	add r1, r0, #0
	ldr r0, _0224C53C ; =0x00002710
	mul r0, r4
	bl _s32_div_f
	add r7, r0, #0
	b _0224C4E4
_0224C4D6:
	ldr r0, _0224C53C ; =0x00002710
	add r1, r4, #0
	mul r1, r0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r7, r0, #3
_0224C4E4:
	ldr r0, _0224C53C ; =0x00002710
	add r1, r7, #0
	mul r0, r6
	bl _u32_div_f
	mov r0, #0xb4
	mul r0, r1
	add r1, r7, #0
	bl _u32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	mov r1, #0xa
	add r2, r0, #0
	mul r2, r1
	add r1, #0xf6
	asr r0, r2, #0xb
	sub r3, r1, r4
	lsr r0, r0, #0x14
	lsr r1, r3, #0x1f
	add r1, r3, r1
	add r0, r2, r0
	asr r2, r0, #0xc
	mov r0, #0x90
	sub r2, r0, r2
	asr r1, r1, #1
	add r1, r6, r1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	mov r3, #1
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200D3F4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C53C: .word 0x00002710
	thumb_func_end ov17_0224C49C

	thumb_func_start ov17_0224C540
ov17_0224C540: ; 0x0224C540
	ldr r3, _0224C548 ; =sub_0200D3F4
	ldr r0, [r0, #4]
	mov r1, #0
	bx r3
	; .align 2, 0
_0224C548: .word sub_0200D3F4
	thumb_func_end ov17_0224C540

	thumb_func_start ov17_0224C54C
ov17_0224C54C: ; 0x0224C54C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #3
	bl ov17_0223F0BC
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	lsl r3, r3, #8
	sub r2, r3, r4
	lsr r1, r2, #0x1f
	add r1, r2, r1
	lsl r1, r1, #0xf
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	mov r2, #0x90
	lsl r3, r3, #0xc
	bl sub_0200D500
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224C54C

	thumb_func_start ov17_0224C57C
ov17_0224C57C: ; 0x0224C57C
	push {r3, r4}
	ldr r2, _0224C59C ; =0x022546C0
	add r1, sp, #0
	ldrb r3, [r2]
	add r4, sp, #0
	strb r3, [r1]
	ldrb r3, [r2, #1]
	strb r3, [r1, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	ldrb r0, [r4, r0]
	pop {r3, r4}
	bx lr
	nop
_0224C59C: .word 0x022546C0
	thumb_func_end ov17_0224C57C

	thumb_func_start ov17_0224C5A0
ov17_0224C5A0: ; 0x0224C5A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	cmp r4, #8
	blo _0224C5B2
	bl GF_AssertFail
_0224C5B2:
	ldr r0, _0224C634 ; =0x00001C0D
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _0224C62E
	add r0, r5, #0
	mov r1, #1
	add r0, #0x88
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, [r5, #0x74]
	mov r1, #1
	bl sub_0201C3C0
	add r0, r5, #0
	add r0, #0x98
	ldr r1, _0224C638 ; =0x0225470C
	lsl r4, r4, #2
	ldrh r1, [r1, r4]
	ldr r0, [r0, #0]
	bl sub_0200B1EC
	ldr r1, _0224C63C ; =0x0225470E
	add r6, r0, #0
	ldrb r1, [r1, r4]
	add r0, r5, #0
	add r2, r7, #0
	bl ov17_0224C0C0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x9c
	add r1, #0xa0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x88
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r2, r5, #0
	add r0, r5, #0
	str r3, [sp, #8]
	add r2, #0xa0
	ldr r2, [r2, #0]
	add r0, #0x88
	mov r1, #1
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0224C634 ; =0x00001C0D
	mov r1, #1
	strb r1, [r5, r0]
_0224C62E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224C634: .word 0x00001C0D
_0224C638: .word 0x0225470C
_0224C63C: .word 0x0225470E
	thumb_func_end ov17_0224C5A0

	thumb_func_start ov17_0224C640
ov17_0224C640: ; 0x0224C640
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x88
	mov r1, #1
	bl sub_0200E084
	ldr r0, [r4, #0x74]
	mov r1, #1
	bl sub_0201C3C0
	ldr r0, _0224C65C ; =0x00001C0D
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0224C65C: .word 0x00001C0D
	thumb_func_end ov17_0224C640

	thumb_func_start ov17_0224C660
ov17_0224C660: ; 0x0224C660
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0224C69C ; =0x00000B08
	ldrb r1, [r1, #4]
	ldr r3, [r5, r0]
	add r6, r2, #0
	mul r1, r3
	mul r6, r1
	add r1, r0, #4
	add r0, #8
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	mov r4, #0
	add r0, r1, r0
	mul r0, r2
	add r0, r1, r0
	ldr r1, _0224C6A0 ; =0x00002710
	bl _u32_div_f
	add r1, r4, #0
	add r3, r6, r0
	ldr r0, _0224C6A4 ; =0x00001154
	adc r4, r1
	ldr r2, [r5, r0]
	add r0, r0, #4
	ldr r1, [r5, r0]
	sub r0, r3, r2
	sbc r4, r1
	add r1, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224C69C: .word 0x00000B08
_0224C6A0: .word 0x00002710
_0224C6A4: .word 0x00001154
	thumb_func_end ov17_0224C660

	thumb_func_start ov17_0224C6A8
ov17_0224C6A8: ; 0x0224C6A8
	ldr r3, _0224C6AC ; =ov17_0224C660
	bx r3
	; .align 2, 0
_0224C6AC: .word ov17_0224C660
	thumb_func_end ov17_0224C6A8

	thumb_func_start ov17_0224C6B0
ov17_0224C6B0: ; 0x0224C6B0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	mov r0, #0
	strb r0, [r7]
	mov r0, #0x17
	mov r1, #0x2c
	bl sub_02018144
	mov r1, #0
	mov r2, #0x2c
	add r4, r0, #0
	bl MI_CpuFill8
	add r1, r6, #0
	add r1, #0x18
	lsl r0, r5, #4
	str r6, [r4, #0]
	add r0, r1, r0
	str r0, [r4, #4]
	mov r0, #0x85
	lsl r0, r0, #2
	add r1, r6, r0
	mov r0, #0x18
	mul r0, r5
	add r0, r1, r0
	str r0, [r4, #8]
	mov r0, #0xad
	str r7, [r4, #0xc]
	add r1, r6, r5
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	ldr r2, _0224C70C ; =0x00009C40
	cmp r0, #1
	bne _0224C702
	ldr r0, _0224C710 ; =ov17_0224C718
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_0224C702:
	ldr r0, _0224C714 ; =ov17_0224C7B8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C70C: .word 0x00009C40
_0224C710: .word ov17_0224C718
_0224C714: .word ov17_0224C7B8
	thumb_func_end ov17_0224C6B0

	thumb_func_start ov17_0224C718
ov17_0224C718: ; 0x0224C718
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C72A
	cmp r0, #1
	beq _0224C74A
	b _0224C79A
_0224C72A:
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	bl ov17_0224AC78
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	lsl r0, r0, #8
	str r0, [r4, #0x1c]
	str r0, [r4, #0x18]
	mov r0, #5
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0224C74A:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
	str r0, [r4, #0x18]
	mov r0, #2
	ldr r1, [r4, #0x14]
	lsl r0, r0, #8
	sub r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r0, r1
	blt _0224C77E
	str r1, [r4, #0x18]
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	cmp r0, #1
	bls _0224C77A
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	b _0224C77E
_0224C77A:
	mov r0, #0
	strb r0, [r4, #0x10]
_0224C77E:
	ldr r1, [r4, #0x18]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	ldr r0, [r4, #4]
	str r1, [r0, #8]
	ldr r2, [r4, #4]
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl ov22_0225B100
	pop {r3, r4, r5, pc}
_0224C79A:
	ldr r0, [r4, #0xc]
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl ov17_0224AC78
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0224C718

	thumb_func_start ov17_0224C7B8
ov17_0224C7B8: ; 0x0224C7B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C7CA
	cmp r0, #1
	beq _0224C7DA
	b _0224C834
_0224C7CA:
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	lsl r0, r0, #8
	str r0, [r4, #0x28]
	str r0, [r4, #0x24]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0224C7DA:
	ldr r0, [r4, #0x20]
	bl sub_0201D2B8
	lsl r1, r0, #2
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	mov r1, #0x32
	ldr r2, [r4, #0x20]
	lsl r1, r1, #0xc
	add r1, r2, r1
	str r1, [r4, #0x20]
	asr r2, r1, #0xc
	mov r1, #0x5a
	lsl r1, r1, #2
	asr r0, r0, #0xc
	cmp r2, r1
	blt _0224C816
	ldrb r1, [r4, #0x11]
	add r1, r1, #1
	strb r1, [r4, #0x11]
	ldrb r1, [r4, #0x11]
	cmp r1, #5
	bls _0224C816
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x24]
	ldrb r1, [r4, #0x10]
	mov r0, #0
	add r1, r1, #1
	strb r1, [r4, #0x10]
_0224C816:
	ldr r2, [r4, #0x24]
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	add r1, r1, r0
	ldr r0, [r4, #4]
	str r1, [r0, #4]
	ldr r2, [r4, #4]
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl ov22_0225B100
	pop {r3, r4, r5, pc}
_0224C834:
	ldr r0, [r4, #0xc]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224C7B8

	thumb_func_start ov17_0224C848
ov17_0224C848: ; 0x0224C848
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224C848

	thumb_func_start ov17_0224C84C
ov17_0224C84C: ; 0x0224C84C
	push {r3, lr}
	ldr r0, _0224C860 ; =0x04000050
	mov r3, #0
	mov r1, #1
	mov r2, #0x3e
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	nop
_0224C860: .word 0x04000050
	thumb_func_end ov17_0224C84C

	thumb_func_start ov17_0224C864
ov17_0224C864: ; 0x0224C864
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xa4
	add r5, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02003164
	ldr r3, _0224C890 ; =0x022546DC
	lsl r5, r5, #2
	ldrh r1, [r3, r5]
	add r3, r3, r5
	ldr r2, _0224C894 ; =0x00001FE3
	str r1, [sp]
	ldrh r3, [r3, #2]
	ldr r1, _0224C898 ; =0x00001128
	lsl r3, r3, #0x18
	ldr r1, [r4, r1]
	lsr r3, r3, #0x18
	bl sub_020039F8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224C890: .word 0x022546DC
_0224C894: .word 0x00001FE3
_0224C898: .word 0x00001128
	thumb_func_end ov17_0224C864

	thumb_func_start ov17_0224C89C
ov17_0224C89C: ; 0x0224C89C
	push {r3, lr}
	ldrb r2, [r1, #7]
	cmp r2, #0
	bne _0224C8E4
	ldrb r2, [r1, #4]
	cmp r2, #0
	beq _0224C8B2
	cmp r2, #1
	beq _0224C8B2
	cmp r2, #2
	b _0224C8DE
_0224C8B2:
	ldrb r2, [r1, #3]
	cmp r2, #4
	bhi _0224C8E0
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224C8C4: ; jump table
	.short _0224C8E0 - _0224C8C4 - 2 ; case 0
	.short _0224C8CE - _0224C8C4 - 2 ; case 1
	.short _0224C8D2 - _0224C8C4 - 2 ; case 2
	.short _0224C8D6 - _0224C8C4 - 2 ; case 3
	.short _0224C8DA - _0224C8C4 - 2 ; case 4
_0224C8CE:
	mov r1, #1
	b _0224C8E0
_0224C8D2:
	mov r1, #2
	b _0224C8E0
_0224C8D6:
	mov r1, #3
	b _0224C8E0
_0224C8DA:
	mov r1, #4
	b _0224C8E0
_0224C8DE:
	mov r1, #5
_0224C8E0:
	bl ov17_0224C864
_0224C8E4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224C89C

	thumb_func_start ov17_0224C8E8
ov17_0224C8E8: ; 0x0224C8E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	ldr r1, _0224C97C ; =0x00000B04
	str r0, [sp]
	ldr r0, [r0, r1]
	ldr r5, _0224C980 ; =0x04000280
	lsr r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, _0224C984 ; =0x00001BBC
	add r6, r0, #0
	add r7, r0, r1
	lsr r4, r5, #0xb
_0224C908:
	ldrb r0, [r7]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224C968
	ldr r1, [sp]
	ldr r0, _0224C988 ; =0x00000B1B
	ldrb r0, [r1, r0]
	mov r1, #4
	bl ov17_0223F0BC
	ldr r1, _0224C98C ; =0x00001BBA
	lsr r2, r0, #0x1f
	add r2, r0, r2
	ldrb r1, [r6, r1]
	asr r0, r2, #1
	add r0, r1, r0
	ldr r1, [sp, #8]
	mul r0, r1
	mov r1, #0
	strh r1, [r5]
	ldr r1, _0224C990 ; =0x04000290
	str r0, [r1, #0]
	ldr r1, _0224C994 ; =0x00002710
	ldr r0, _0224C998 ; =0x04000298
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
_0224C940:
	ldrh r0, [r5]
	tst r0, r4
	bne _0224C940
	ldr r0, _0224C99C ; =0x040002A0
	ldr r1, [r0, #0]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _0224C968
	ldr r0, [sp]
	ldr r2, _0224C9A0 ; =0x00001BB4
	add r1, r0, #0
	add r3, r1, r2
	ldr r1, [sp, #0xc]
	mov r2, #0xa
	mul r2, r1
	add r1, r3, r2
	bl ov17_0224C89C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0224C968:
	ldr r0, [sp, #0xc]
	add r7, #0xa
	add r0, r0, #1
	add r6, #0xa
	str r0, [sp, #0xc]
	cmp r0, #8
	blt _0224C908
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C97C: .word 0x00000B04
_0224C980: .word 0x04000280
_0224C984: .word 0x00001BBC
_0224C988: .word 0x00000B1B
_0224C98C: .word 0x00001BBA
_0224C990: .word 0x04000290
_0224C994: .word 0x00002710
_0224C998: .word 0x04000298
_0224C99C: .word 0x040002A0
_0224C9A0: .word 0x00001BB4
	thumb_func_end ov17_0224C8E8

	thumb_func_start ov17_0224C9A4
ov17_0224C9A4: ; 0x0224C9A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224C9B6
	bl GF_AssertFail
_0224C9B6:
	mov r0, #0x81
	lsl r0, r0, #2
	add r5, r4, r0
	ldr r0, _0224C9CC ; =ov17_0224CA28
	ldr r2, _0224C9D0 ; =0x00009C40
	add r1, r5, #0
	str r4, [r5, #0]
	bl sub_0200D9E8
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224C9CC: .word ov17_0224CA28
_0224C9D0: .word 0x00009C40
	thumb_func_end ov17_0224C9A4

	thumb_func_start ov17_0224C9D4
ov17_0224C9D4: ; 0x0224C9D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224C9EE
	bl sub_0200DA58
	mov r0, #0x82
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224C9EE:
	pop {r4, pc}
	thumb_func_end ov17_0224C9D4

	thumb_func_start ov17_0224C9F0
ov17_0224C9F0: ; 0x0224C9F0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x81
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0224CA04
	bl GF_AssertFail
_0224CA04:
	cmp r5, #0
	bne _0224CA0C
	mov r0, #0x40
	b _0224CA0E
_0224CA0C:
	mov r0, #0x30
_0224CA0E:
	strb r0, [r4, #0xa]
	mov r0, #1
	strb r0, [r4, #0xb]
	mov r0, #0xa
	lsl r0, r0, #8
	strh r0, [r4, #8]
	ldr r0, _0224CA24 ; =0x000006F8
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_0224CA24: .word 0x000006F8
	thumb_func_end ov17_0224C9F0

	thumb_func_start ov17_0224CA28
ov17_0224CA28: ; 0x0224CA28
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0224CA82
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_02003164
	ldrb r1, [r4, #0xa]
	lsl r3, r1, #1
	ldr r1, _0224CA88 ; =0x00007FFF
	add r0, r0, r3
	str r1, [sp]
	ldr r2, [r4, #0]
	ldr r1, _0224CA8C ; =0x00001128
	ldr r1, [r2, r1]
	mov r2, #0x10
	add r1, r1, r3
	ldrh r3, [r4, #8]
	asr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0200393C
	ldrh r1, [r4, #8]
	cmp r1, #0
	bne _0224CA6E
	mov r0, #0
	add sp, #4
	strb r0, [r4, #0xb]
	pop {r3, r4, pc}
_0224CA6E:
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	bls _0224CA7E
	sub r0, r1, r0
	add sp, #4
	strh r0, [r4, #8]
	pop {r3, r4, pc}
_0224CA7E:
	mov r0, #0
	strh r0, [r4, #8]
_0224CA82:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224CA88: .word 0x00007FFF
_0224CA8C: .word 0x00001128
	thumb_func_end ov17_0224CA28

	thumb_func_start ov17_0224CA90
ov17_0224CA90: ; 0x0224CA90
	push {r3, r4, r5, lr}
	ldr r5, _0224CAB8 ; =0x0000113C
	add r4, r0, #0
	str r2, [r4, r5]
	add r0, r5, #4
	str r3, [r4, r0]
	add r0, r5, #0
	ldr r2, [sp, #0x10]
	add r0, #8
	str r2, [r4, r0]
	ldr r0, [sp, #0x14]
	add r5, #0xc
	str r0, [r4, r5]
	ldr r0, [r4, #0xc]
	ldr r2, _0224CABC ; =ov17_0224CAC0
	add r3, r4, #0
	bl sub_020146F4
	pop {r3, r4, r5, pc}
	nop
_0224CAB8: .word 0x0000113C
_0224CABC: .word ov17_0224CAC0
	thumb_func_end ov17_0224CA90

	thumb_func_start ov17_0224CAC0
ov17_0224CAC0: ; 0x0224CAC0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02014764
	ldr r1, _0224CAFC ; =0x0000113C
	add r1, r0, r1
	ldr r0, [r4, #0x20]
	ldr r2, [r1, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r2, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r2, [r1, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r2, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r2, [r1, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r2, r0
	str r0, [r4, #0x30]
	ldr r1, [r1, #0xc]
	add r0, r4, #0
	bl sub_020147B0
	pop {r4, pc}
	nop
_0224CAFC: .word 0x0000113C
	thumb_func_end ov17_0224CAC0

	thumb_func_start ov17_0224CB00
ov17_0224CB00: ; 0x0224CB00
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _0224CB70 ; =0x00000B1B
	add r5, r0, #0
	ldrb r3, [r5, r3]
	lsl r1, r1, #2
	lsl r4, r3, #2
	ldr r3, _0224CB74 ; =0x022546C4
	cmp r2, #0
	ldr r3, [r3, r4]
	ldr r4, [r3, r1]
	ldr r1, _0224CB78 ; =0xFFFFEB80
	ldr r3, _0224CB7C ; =0xFFFFBADC
	bne _0224CB46
	str r1, [sp]
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	mov r1, #0
	add r2, r4, #0
	bl ov17_0224CA90
	ldr r0, _0224CB78 ; =0xFFFFEB80
	ldr r3, _0224CB7C ; =0xFFFFBADC
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov17_0224CA90
	add sp, #8
	pop {r3, r4, r5, pc}
_0224CB46:
	str r1, [sp]
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	mov r1, #2
	add r2, r4, #0
	bl ov17_0224CA90
	ldr r0, _0224CB78 ; =0xFFFFEB80
	ldr r3, _0224CB7C ; =0xFFFFBADC
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ov17_0224CA90
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224CB70: .word 0x00000B1B
_0224CB74: .word Unk_ov17_022546C4
_0224CB78: .word 0xFFFFEB80
_0224CB7C: .word 0xFFFFBADC
	thumb_func_end ov17_0224CB00

	thumb_func_start ov17_0224CB80
ov17_0224CB80: ; 0x0224CB80
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #0
	ldr r1, _0224CD34 ; =0xFFFFEB80
	ldr r3, _0224CD38 ; =0xFFFFE764
	bne _0224CC0E
	str r1, [sp]
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	ldr r2, _0224CD3C ; =0xFFFFCD38
	mov r1, #5
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD3C ; =0xFFFFCD38
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #6
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD3C ; =0xFFFFCD38
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #7
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD40 ; =0x00005014
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #5
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD40 ; =0x00005014
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #6
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD40 ; =0x00005014
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #7
	bl ov17_0224CA90
	b _0224CCE4
_0224CC0E:
	str r1, [sp]
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	ldr r2, _0224CD44 ; =0xFFFFBD98
	mov r1, #8
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD44 ; =0xFFFFBD98
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #9
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD44 ; =0xFFFFBD98
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xa
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD44 ; =0xFFFFBD98
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xb
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD44 ; =0xFFFFBD98
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xc
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD48 ; =0x00004074
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #8
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD48 ; =0x00004074
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #9
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD48 ; =0x00004074
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xa
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD48 ; =0x00004074
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xb
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD48 ; =0x00004074
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xc
	bl ov17_0224CA90
_0224CCE4:
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224CD4C ; =0x00007FFF
	ldr r1, _0224CD50 ; =0x00001FE3
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #8
	mov r3, #0x10
	bl ov17_0224CD84
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, _0224CD4C ; =0x00007FFF
	add r0, r4, #0
	str r2, [sp, #8]
	add r0, #0xa4
	mov r1, #4
	ldr r0, [r0, #0]
	lsr r2, r2, #1
	sub r3, r1, #5
	bl sub_02003178
	ldr r0, _0224CD54 ; =0x04000050
	mov r1, #0x3f
	mov r2, #0x10
	bl G2x_SetBlendBrightness_
	mov r2, #0xfa
	ldr r0, _0224CD58 ; =ov17_0224CD60
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	ldr r0, _0224CD5C ; =0x000006E5
	bl sub_02005748
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0224CD34: .word 0xFFFFEB80
_0224CD38: .word 0xFFFFE764
_0224CD3C: .word 0xFFFFCD38
_0224CD40: .word 0x00005014
_0224CD44: .word 0xFFFFBD98
_0224CD48: .word 0x00004074
_0224CD4C: .word 0x00007FFF
_0224CD50: .word 0x00001FE3
_0224CD54: .word 0x04000050
_0224CD58: .word ov17_0224CD60
_0224CD5C: .word 0x000006E5
	thumb_func_end ov17_0224CB80

	thumb_func_start ov17_0224CD60
ov17_0224CD60: ; 0x0224CD60
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r3, #0
	ldr r0, _0224CD80 ; =0x04000050
	mov r1, #1
	mov r2, #0x3e
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	add r0, r4, #0
	bl sub_0200DA58
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224CD80: .word 0x04000050
	thumb_func_end ov17_0224CD60

	thumb_func_start ov17_0224CD84
ov17_0224CD84: ; 0x0224CD84
	push {r3, r4, r5, lr}
	ldr r4, _0224CDB0 ; =0x00001128
	ldr r5, [sp, #0x10]
	add r4, r0, r4
	lsl r0, r3, #8
	strh r0, [r4, #8]
	lsl r0, r5, #8
	strh r0, [r4, #0xa]
	add r0, sp, #0
	ldrh r0, [r0, #0x14]
	strh r0, [r4, #0xe]
	sub r0, r5, r3
	strh r1, [r4, #6]
	lsl r0, r0, #8
	add r1, r2, #0
	bl _u32_div_f
	strh r0, [r4, #0xc]
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	nop
_0224CDB0: .word 0x00001128
	thumb_func_end ov17_0224CD84

	thumb_func_start ov17_0224CDB4
ov17_0224CDB4: ; 0x0224CDB4
	ldr r2, _0224CDBC ; =0x00001139
	strb r1, [r0, r2]
	bx lr
	nop
_0224CDBC: .word 0x00001139
	thumb_func_end ov17_0224CDB4

	thumb_func_start ov17_0224CDC0
ov17_0224CDC0: ; 0x0224CDC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	cmp r2, #0
	bne _0224CDD0
	ldr r7, _0224CDFC ; =0x00007FFF
	ldr r6, _0224CE00 ; =0x0000254A
	b _0224CDD4
_0224CDD0:
	ldr r7, _0224CE00 ; =0x0000254A
	ldr r6, _0224CDFC ; =0x00007FFF
_0224CDD4:
	mov r4, #0
_0224CDD6:
	ldr r0, [sp]
	cmp r4, r0
	ldr r0, [r5, #0x18]
	bne _0224CDE6
	add r1, r7, #0
	bl ov22_0225B198
	b _0224CDEC
_0224CDE6:
	add r1, r6, #0
	bl ov22_0225B198
_0224CDEC:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0224CDD6
	ldr r0, _0224CE04 ; =0x000006EC
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224CDFC: .word 0x00007FFF
_0224CE00: .word 0x0000254A
_0224CE04: .word 0x000006EC
	thumb_func_end ov17_0224CDC0

	thumb_func_start ov17_0224CE08
ov17_0224CE08: ; 0x0224CE08
	push {r4, r5, r6, lr}
	ldr r6, _0224CE24 ; =0x00007FFF
	add r5, r0, #0
	mov r4, #0
_0224CE10:
	ldr r0, [r5, #0x18]
	add r1, r6, #0
	bl ov22_0225B198
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0224CE10
	pop {r4, r5, r6, pc}
	nop
_0224CE24: .word 0x00007FFF
	thumb_func_end ov17_0224CE08

	thumb_func_start ov17_0224CE28
ov17_0224CE28: ; 0x0224CE28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0xc]
	mov r4, #0
	add r5, sp, #0x18
	add r3, sp, #0x14
	ldr r2, _0224CED4 ; =0x00000AF6
	b _0224CE46
_0224CE38:
	ldr r1, [sp, #0xc]
	lsl r0, r4, #1
	add r1, r1, r0
	ldrsh r1, [r1, r2]
	strb r4, [r3, r4]
	add r4, r4, #1
	strh r1, [r5, r0]
_0224CE46:
	cmp r4, #4
	blt _0224CE38
	mov r4, #0
	add r7, sp, #0x18
	b _0224CE7A
_0224CE50:
	mov r6, #3
	b _0224CE74
_0224CE54:
	sub r3, r6, #1
	lsl r5, r3, #1
	lsl r1, r6, #1
	ldrsh r2, [r7, r5]
	ldrsh r0, [r7, r1]
	cmp r2, r0
	bge _0224CE72
	strh r2, [r7, r1]
	strh r0, [r7, r5]
	add r0, sp, #0x14
	add r1, sp, #0x14
	ldrb r0, [r0, r6]
	ldrb r2, [r1, r3]
	strb r2, [r1, r6]
	strb r0, [r1, r3]
_0224CE72:
	sub r6, r6, #1
_0224CE74:
	cmp r6, r4
	bgt _0224CE54
	add r4, r4, #1
_0224CE7A:
	cmp r4, #3
	blt _0224CE50
	ldr r3, _0224CED8 ; =0x022549C0
	add r0, sp, #0x10
	ldrb r1, [r3]
	mov r4, #1
	add r2, sp, #0x10
	strb r1, [r0]
	add r1, sp, #0x18
	b _0224CEA6
_0224CE8E:
	ldrb r0, [r3, r4]
	sub r6, r4, #1
	lsl r5, r6, #1
	strb r0, [r2, r4]
	lsl r0, r4, #1
	ldrsh r0, [r1, r0]
	ldrsh r5, [r1, r5]
	cmp r0, r5
	bne _0224CEA4
	ldrb r0, [r2, r6]
	strb r0, [r2, r4]
_0224CEA4:
	add r4, r4, #1
_0224CEA6:
	cmp r4, #4
	blt _0224CE8E
	mov r4, #0
	add r5, sp, #0x10
	mov r6, #0x1e
	add r7, r4, #0
	b _0224CECC
_0224CEB4:
	ldrb r0, [r5, r4]
	add r1, sp, #0x14
	ldrb r1, [r1, r4]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _0224CEDC ; =0x00007FFF
	ldr r3, _0224CEE0 ; =0x0000254A
	str r7, [sp, #8]
	bl ov17_0224CEE4
	add r4, r4, #1
_0224CECC:
	cmp r4, #4
	blt _0224CEB4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224CED4: .word 0x00000AF6
_0224CED8: .word 0x022549C0
_0224CEDC: .word 0x00007FFF
_0224CEE0: .word 0x0000254A
	thumb_func_end ov17_0224CE28

	thumb_func_start ov17_0224CEE4
ov17_0224CEE4: ; 0x0224CEE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x17
	mov r1, #0x14
	add r6, r2, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x28]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	ldr r1, [sp, #0x24]
	lsl r0, r0, #4
	add r0, r7, r0
	ldr r0, [r0, #0x18]
	str r0, [r4, #0]
	strh r6, [r4, #8]
	ldr r0, [sp, #4]
	strh r0, [r4, #0xa]
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x10]
	lsl r0, r0, #8
	bl _s32_div_f
	strh r0, [r4, #0xc]
	str r5, [r4, #4]
	cmp r5, #0
	beq _0224CF2C
	mov r0, #0
	strb r0, [r5]
_0224CF2C:
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov22_0225B198
	ldr r0, _0224CF44 ; =ov17_0224CF4C
	ldr r2, _0224CF48 ; =0x00009C40
	add r1, r4, #0
	bl sub_0200D9E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224CF44: .word ov17_0224CF4C
_0224CF48: .word 0x00009C40
	thumb_func_end ov17_0224CEE4

	thumb_func_start ov17_0224CF4C
ov17_0224CF4C: ; 0x0224CF4C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldrh r1, [r5, #0xe]
	ldrh r0, [r5, #0xc]
	add r0, r1, r0
	strh r0, [r5, #0xe]
	ldrh r0, [r5, #0xe]
	asr r4, r0, #8
	ldrb r0, [r5, #0x10]
	cmp r4, r0
	ble _0224CF68
	add r4, r0, #0
_0224CF68:
	ldrh r0, [r5, #0xa]
	lsl r3, r4, #0x18
	add r1, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r0, #8
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_0200393C
	add r1, sp, #4
	ldrh r1, [r1]
	ldr r0, [r5, #0]
	bl ov22_0225B198
	ldrb r0, [r5, #0x10]
	cmp r4, r0
	blt _0224CFA2
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _0224CF96
	mov r0, #1
	strb r0, [r1]
_0224CF96:
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_0224CFA2:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_0224CF4C

	thumb_func_start ov17_0224CFA8
ov17_0224CFA8: ; 0x0224CFA8
	cmp r0, #0x32
	beq _0224CFB0
	cmp r0, #0x33
	bne _0224CFB4
_0224CFB0:
	mov r0, #0
	bx lr
_0224CFB4:
	mov r0, #1
	bx lr
	thumb_func_end ov17_0224CFA8

	.rodata


	.global Unk_ov17_022546C0
Unk_ov17_022546C0: ; 0x022546C0
	.incbin "incbin/overlay17_rodata.bin", 0x1934, 0x1938 - 0x1934

	.global Unk_ov17_022546C4
Unk_ov17_022546C4: ; 0x022546C4
	.word Unk_ov17_02254938
    .word Unk_ov17_022548D4

	.global Unk_ov17_022546CC
Unk_ov17_022546CC: ; 0x022546CC
	.incbin "incbin/overlay17_rodata.bin", 0x1940, 0x1950 - 0x1940

	.global Unk_ov17_022546DC
Unk_ov17_022546DC: ; 0x022546DC
	.incbin "incbin/overlay17_rodata.bin", 0x1950, 0x1968 - 0x1950

	.global Unk_ov17_022546F4
Unk_ov17_022546F4: ; 0x022546F4
	.incbin "incbin/overlay17_rodata.bin", 0x1968, 0x1980 - 0x1968

	.global Unk_ov17_0225470C
Unk_ov17_0225470C: ; 0x0225470C
	.incbin "incbin/overlay17_rodata.bin", 0x1980, 0x19A0 - 0x1980

	.global Unk_ov17_0225472C
Unk_ov17_0225472C: ; 0x0225472C
	.incbin "incbin/overlay17_rodata.bin", 0x19A0, 0x19D4 - 0x19A0

	.global Unk_ov17_02254760
Unk_ov17_02254760: ; 0x02254760
	.incbin "incbin/overlay17_rodata.bin", 0x19D4, 0x1A08 - 0x19D4

	.global Unk_ov17_02254794
Unk_ov17_02254794: ; 0x02254794
	.incbin "incbin/overlay17_rodata.bin", 0x1A08, 0x1A3C - 0x1A08

	.global Unk_ov17_022547C8
Unk_ov17_022547C8: ; 0x022547C8
	.incbin "incbin/overlay17_rodata.bin", 0x1A3C, 0x1A70 - 0x1A3C

	.global Unk_ov17_022547FC
Unk_ov17_022547FC: ; 0x022547FC
	.incbin "incbin/overlay17_rodata.bin", 0x1A70, 0x1AA4 - 0x1A70

	.global Unk_ov17_02254830
Unk_ov17_02254830: ; 0x02254830
	.incbin "incbin/overlay17_rodata.bin", 0x1AA4, 0x1AD8 - 0x1AA4

	.global Unk_ov17_02254864
Unk_ov17_02254864: ; 0x02254864
	.incbin "incbin/overlay17_rodata.bin", 0x1AD8, 0x1B0C - 0x1AD8

	.global Unk_ov17_02254898
Unk_ov17_02254898: ; 0x02254898
	.incbin "incbin/overlay17_rodata.bin", 0x1B0C, 0x1B48 - 0x1B0C

	.global Unk_ov17_022548D4
Unk_ov17_022548D4: ; 0x022548D4
	.incbin "incbin/overlay17_rodata.bin", 0x1B48, 0x1BAC - 0x1B48

	.global Unk_ov17_02254938
Unk_ov17_02254938: ; 0x02254938
	.incbin "incbin/overlay17_rodata.bin", 0x1BAC, 0x1C30 - 0x1BAC

	.global Unk_ov17_022549BC
Unk_ov17_022549BC: ; 0x022549BC
	.incbin "incbin/overlay17_rodata.bin", 0x1C30, 0x1C34 - 0x1C30

	.global Unk_ov17_022549C0
Unk_ov17_022549C0: ; 0x022549C0
	.incbin "incbin/overlay17_rodata.bin", 0x1C34, 0x4

