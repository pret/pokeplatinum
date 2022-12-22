	.include "macros/function.inc"
	.include "include/ov21_021E3FFC.inc"

	

	.text


	thumb_func_start ov21_021E3FFC
ov21_021E3FFC: ; 0x021E3FFC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	bl ov21_021E4080
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021E40C8
	str r4, [r5, #0]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0x20]
	bl ov21_021E411C
	str r0, [r5, #0x24]
	ldr r0, _021E403C ; =ov21_021E4120
	str r0, [r5, #8]
	ldr r0, _021E4040 ; =ov21_021E4168
	str r0, [r5, #0xc]
	ldr r0, _021E4044 ; =ov21_021E4194
	str r0, [r5, #0x10]
	ldr r0, _021E4048 ; =ov21_021E41A8
	str r0, [r5, #0x14]
	ldr r0, _021E404C ; =ov21_021E4268
	str r0, [r5, #0x18]
	ldr r0, _021E4050 ; =ov21_021E4288
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E403C: .word ov21_021E4120
_021E4040: .word ov21_021E4168
_021E4044: .word ov21_021E4194
_021E4048: .word ov21_021E41A8
_021E404C: .word ov21_021E4268
_021E4050: .word ov21_021E4288
	thumb_func_end ov21_021E3FFC

	thumb_func_start ov21_021E4054
ov21_021E4054: ; 0x021E4054
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021E40F4
	ldr r0, [r4, #4]
	bl ov21_021E4108
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4054

	thumb_func_start ov21_021E4068
ov21_021E4068: ; 0x021E4068
	ldr r0, [r0, #4]
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov21_021E4068

	thumb_func_start ov21_021E4070
ov21_021E4070: ; 0x021E4070
	ldr r0, [r0, #4]
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E4070

	thumb_func_start ov21_021E4078
ov21_021E4078: ; 0x021E4078
	ldr r0, [r0, #4]
	str r1, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E4078

	thumb_func_start ov21_021E4080
ov21_021E4080: ; 0x021E4080
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	bne _021E4092
	bl sub_02022974
_021E4092:
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_021E4098:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E4098
	add r0, r5, #0
	bl ov21_021D138C
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #5
	bl ov21_021D1410
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #5
	bl ov21_021D1430
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E4080

	thumb_func_start ov21_021E40C8
ov21_021E40C8: ; 0x021E40C8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	bne _021E40DA
	bl sub_02022974
_021E40DA:
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_021E40E0:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E40E0
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E40C8

	thumb_func_start ov21_021E40F4
ov21_021E40F4: ; 0x021E40F4
	push {r4, lr}
	add r4, r0, #0
	bne _021E40FE
	bl sub_02022974
_021E40FE:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E40F4

	thumb_func_start ov21_021E4108
ov21_021E4108: ; 0x021E4108
	push {r4, lr}
	add r4, r0, #0
	bne _021E4112
	bl sub_02022974
_021E4112:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4108

	thumb_func_start ov21_021E411C
ov21_021E411C: ; 0x021E411C
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E411C

	thumb_func_start ov21_021E4120
ov21_021E4120: ; 0x021E4120
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl ov21_021D37BC
	add r7, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bne _021E413E
	bl sub_02022974
_021E413E:
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021E4144:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E4144
	str r4, [r5, #8]
	add r0, r7, #0
	bl sub_020050F8
	str r0, [r4, #0]
	bl sub_020050EC
	str r0, [r4, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021E4898
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4120

	thumb_func_start ov21_021E4168
ov21_021E4168: ; 0x021E4168
	push {r3, r4, r5, lr}
	ldr r2, [r0, #0xc]
	add r5, r1, #0
	ldr r4, [r0, #8]
	cmp r2, #1
	bne _021E4178
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E4178:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021E4182
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E4182:
	add r0, r4, #0
	bl ov21_021E4898
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E4C68
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E4168

	thumb_func_start ov21_021E4194
ov21_021E4194: ; 0x021E4194
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4194

	thumb_func_start ov21_021E41A8
ov21_021E41A8: ; 0x021E41A8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r3, [r3, #8]
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021E4264
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E41C6: ; jump table
	.short _021E41CE - _021E41C6 - 2 ; case 0
	.short _021E41EC - _021E41C6 - 2 ; case 1
	.short _021E4228 - _021E41C6 - 2 ; case 2
	.short _021E4260 - _021E41C6 - 2 ; case 3
_021E41CE:
	mov r1, #0x33
	ldr r0, [r4, #4]
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x33
	str r0, [r4, #8]
	mov r1, #0
	lsl r2, r2, #4
	bl memset
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E4264
_021E41EC:
	ldr r0, [r4, #4]
	add r1, r5, #0
	str r0, [sp]
	add r0, r6, #0
	bl ov21_021E4590
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021E420C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021E43C8
	b _021E4218
_021E420C:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021E448C
_021E4218:
	mov r0, #0
	mov r1, #3
	bl sub_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E4264
_021E4228:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021E423A
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021E4440
	b _021E4244
_021E423A:
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021E4518
_021E4244:
	cmp r0, #1
	bne _021E4264
	bl sub_02005684
	cmp r0, #0
	bne _021E4264
	mov r0, #1
	add r1, r0, #0
	bl sub_020049F4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E4264
_021E4260:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E4264:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E41A8

	thumb_func_start ov21_021E4268
ov21_021E4268: ; 0x021E4268
	push {r3, r4, r5, lr}
	ldr r4, [r3, #8]
	ldr r5, [r1, #8]
	add r2, r0, #0
	add r1, r2, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov21_021E4A28
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E4B10
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4268

	thumb_func_start ov21_021E4288
ov21_021E4288: ; 0x021E4288
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021E4324
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E42A2: ; jump table
	.short _021E42AC - _021E42A2 - 2 ; case 0
	.short _021E42DE - _021E42A2 - 2 ; case 1
	.short _021E4302 - _021E42A2 - 2 ; case 2
	.short _021E4310 - _021E42A2 - 2 ; case 3
	.short _021E4320 - _021E42A2 - 2 ; case 4
_021E42AC:
	ldr r1, [r3, #0xc]
	cmp r1, #0
	bne _021E42BC
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E43C8
	b _021E42C4
_021E42BC:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E448C
_021E42C4:
	mov r0, #1
	mov r1, #0
	bl sub_020049F4
	mov r0, #0x7f
	mov r1, #3
	mov r2, #0
	bl sub_0200560C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E4324
_021E42DE:
	ldr r1, [r3, #0xc]
	cmp r1, #0
	bne _021E42EE
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E4440
	b _021E42F6
_021E42EE:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E4518
_021E42F6:
	cmp r0, #0
	beq _021E4324
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E4324
_021E4302:
	add r1, r3, #0
	bl ov21_021E45DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E4324
_021E4310:
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E4324
_021E4320:
	mov r0, #1
	pop {r4, pc}
_021E4324:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021E4288

	thumb_func_start ov21_021E4328
ov21_021E4328: ; 0x021E4328
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl ov21_021D2170
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	add r2, r0, #0
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [r4, #4]
	mov r3, #2
	bl ov21_021D1890
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E4328

	thumb_func_start ov21_021E4360
ov21_021E4360: ; 0x021E4360
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r6, #1
_021E436A:
	mov r4, #0
	add r5, r7, #0
_021E436E:
	ldr r0, [r5, #0x20]
	add r1, r6, #0
	bl sub_02021FE0
	add r4, r4, #1
	add r5, #8
	cmp r4, #9
	blt _021E436E
	ldr r0, [r7, #0x68]
	mov r1, #1
	bl sub_02021FE0
	ldr r0, [sp]
	add r7, #0x54
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #9
	blt _021E436A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4360

	thumb_func_start ov21_021E4394
ov21_021E4394: ; 0x021E4394
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	add r6, r0, #0
_021E439E:
	mov r4, #0
	add r5, r7, #0
_021E43A2:
	ldr r0, [r5, #0x20]
	add r1, r6, #0
	bl sub_02021FE0
	add r4, r4, #1
	add r5, #8
	cmp r4, #9
	blt _021E43A2
	ldr r0, [r7, #0x68]
	mov r1, #0
	bl sub_02021FE0
	ldr r0, [sp]
	add r7, #0x54
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #9
	blt _021E439E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4394

	thumb_func_start ov21_021E43C8
ov21_021E43C8: ; 0x021E43C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021E4360
	ldr r0, [r4, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E442E
	cmp r6, #0
	beq _021E440A
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #3
	add r2, r1, #0
	sub r2, #0x13
	bl ov21_021D23F8
	b _021E442E
_021E440A:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #3
	add r3, r1, #0
	sub r3, #0x13
	bl ov21_021D23F8
_021E442E:
	mov r1, #0x5b
	ldr r0, [r5, #0]
	lsl r1, r1, #2
	add r1, r0, r1
	bl ov21_021D24FC
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E43C8

	thumb_func_start ov21_021E4440
ov21_021E4440: ; 0x021E4440
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r2, #8]
	add r5, r1, #0
	add r4, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5, #0]
	beq _021E4460
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	b _021E446A
_021E4460:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
_021E446A:
	cmp r0, #0
	beq _021E447C
	cmp r4, #0
	beq _021E4478
	add r0, r6, #0
	bl ov21_021E4394
_021E4478:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E447C:
	mov r1, #0x5b
	ldr r0, [r5, #0]
	lsl r1, r1, #2
	add r1, r0, r1
	bl ov21_021D24FC
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E4440

	thumb_func_start ov21_021E448C
ov21_021E448C: ; 0x021E448C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl ov21_021E4360
	cmp r4, #0
	bne _021E44B4
	ldr r0, [r5, #8]
	mov r1, #0x30
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r3, #0x40
	str r0, [sp, #4]
	ldr r2, [r5, #4]
	add r0, r7, #0
	bl ov21_021D2648
_021E44B4:
	ldr r0, [r6, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E4512
	cmp r4, #0
	beq _021E44EC
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r2, #0x2f
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r1, [r5, #0x10]
	sub r2, #0x3f
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E44EC:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r3, #0x2f
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r1, [r5, #0x10]
	sub r3, #0x3f
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov21_021D23F8
_021E4512:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E448C

	thumb_func_start ov21_021E4518
ov21_021E4518: ; 0x021E4518
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bne _021E4538
	bl ov21_021D2664
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	bl ov21_021D2164
	b _021E453C
_021E4538:
	mov r0, #1
	str r0, [sp]
_021E453C:
	ldr r0, [r6, #8]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r4, #0]
	beq _021E4556
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #4]
	b _021E4562
_021E4556:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #4]
_021E4562:
	mov r1, #0
	add r2, sp, #0
_021E4566:
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _021E4574
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #2
	blt _021E4566
_021E4574:
	cmp r1, #2
	bne _021E4588
	cmp r7, #1
	bne _021E4582
	add r0, r5, #0
	bl ov21_021E4394
_021E4582:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E4588:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4518

	thumb_func_start ov21_021E4590
ov21_021E4590: ; 0x021E4590
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [sp, #0x18]
	add r7, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ov21_021E45FC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E46A8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E47CC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov21_021E4890
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021E4328
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E4ABC
	add r0, r5, #0
	bl ov21_021E4AF4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4590

	thumb_func_start ov21_021E45DC
ov21_021E45DC: ; 0x021E45DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021E4894
	add r0, r5, #0
	bl ov21_021E4868
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E4770
	add r0, r4, #0
	bl ov21_021E4664
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E45DC

	thumb_func_start ov21_021E45FC
ov21_021E45FC: ; 0x021E45FC
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r5, r2, #0
	str r5, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x21
	mov r3, #3
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x46
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E45FC

	thumb_func_start ov21_021E4664
ov21_021E4664: ; 0x021E4664
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #1
	add r3, r2, #0
	bl sub_0201C63C
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	add r0, r0, #4
	add r3, r1, #0
	bl sub_0201AE78
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201C2B4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov21_021E4664

	thumb_func_start ov21_021E46A8
ov21_021E46A8: ; 0x021E46A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021E4760 ; =0x00002B6C
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0x74
	bl sub_02009A4C
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl sub_0200A3DC
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009D4C
	ldr r0, _021E4764 ; =0x00002B0B
	add r1, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x13
	mov r3, #0
	bl sub_02009B04
	mov r1, #0xc6
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl sub_0200A640
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009D4C
	ldr r0, _021E4768 ; =0x00002B6D
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x75
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0xc7
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, _021E476C ; =0x00002B6B
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x73
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0x32
	lsl r1, r1, #4
	str r0, [r5, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E4760: .word 0x00002B6C
_021E4764: .word 0x00002B0B
_021E4768: .word 0x00002B6D
_021E476C: .word 0x00002B6B
	thumb_func_end ov21_021E46A8

	thumb_func_start ov21_021E4770
ov21_021E4770: ; 0x021E4770
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A6DC
	mov r0, #5
	mov r1, #0xc5
	lsl r0, r0, #6
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl sub_02009D68
	mov r0, #0x51
	mov r1, #0xc6
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl sub_02009D68
	mov r0, #0x52
	mov r1, #0xc7
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl sub_02009D68
	mov r0, #0x53
	mov r1, #0x32
	lsl r0, r0, #2
	lsl r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E4770

	thumb_func_start ov21_021E47CC
ov21_021E47CC: ; 0x021E47CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	ldr r4, [r1, #0]
	ldr r3, _021E4864 ; =0x00002B6B
	add r7, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #5
	str r1, [sp, #0x10]
	lsl r0, r0, #6
	add r5, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r4, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x50
	sub r2, #0x60
	add r3, r3, #2
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r6, sp, #0x30
	str r0, [sp, #0x30]
	add r0, sp, #0x50
	str r0, [sp, #0x34]
	mov r0, #0x11
	str r0, [sp, #0x44]
	mov r0, #1
	str r0, [sp, #0x48]
	mov r0, #0
	str r5, [sp, #0x4c]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
_021E4836:
	mov r4, #0
	add r5, r7, #0
_021E483A:
	add r0, r6, #0
	bl sub_02021B90
	str r0, [r5, #0x20]
	add r4, r4, #1
	add r5, #8
	cmp r4, #9
	blt _021E483A
	add r0, r6, #0
	bl sub_02021B90
	str r0, [r7, #0x68]
	ldr r0, [sp, #0x2c]
	add r7, #0x54
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #9
	blt _021E4836
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_021E4864: .word 0x00002B6B
	thumb_func_end ov21_021E47CC

	thumb_func_start ov21_021E4868
ov21_021E4868: ; 0x021E4868
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0
_021E486E:
	mov r4, #0
	add r5, r6, #0
_021E4872:
	ldr r0, [r5, #0x20]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, #8
	cmp r4, #9
	blt _021E4872
	ldr r0, [r6, #0x68]
	bl sub_02021BD4
	add r7, r7, #1
	add r6, #0x54
	cmp r7, #9
	blt _021E486E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4868

	thumb_func_start ov21_021E4890
ov21_021E4890: ; 0x021E4890
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E4890

	thumb_func_start ov21_021E4894
ov21_021E4894: ; 0x021E4894
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E4894

	thumb_func_start ov21_021E4898
ov21_021E4898: ; 0x021E4898
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl ov21_021E4D1C
	add r2, r0, #0
	ldr r1, [r4, #0]
	mov r0, #1
	bl sub_02005188
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov21_021E4898

	thumb_func_start ov21_021E48B0
ov21_021E48B0: ; 0x021E48B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r0, [sp, #0x44]
	ldr r7, [sp, #0x3c]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	str r1, [sp, #8]
	str r0, [sp, #0x48]
	add r0, r2, #0
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x40]
	bl sub_020050E0
	str r0, [sp, #0x1c]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x44]
	ldr r0, [r0, #0]
	sub r3, #0x20
	lsl r2, r5, #0x10
	lsl r3, r3, #0x10
	add r0, r0, #4
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE78
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0xc]
	mov r6, #0
	sub r0, r1, r0
	cmp r7, #0
	ble _021E4954
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
	lsl r0, r7, #0xc
	add r4, r6, #0
	str r0, [sp, #0x10]
_021E4908:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	asr r3, r4, #0x1f
	add r2, r4, #0
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _021E4958 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [sp, #0x10]
	bl FX_Div
	asr r1, r0, #0xc
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r1, r1, r0
	ldr r0, [sp, #0x48]
	ldr r3, [sp, #0x44]
	str r0, [sp]
	ldr r0, [sp, #8]
	ldrb r1, [r2, r1]
	ldr r0, [r0, #0]
	add r2, r5, #0
	add r0, r0, #4
	bl ov21_021E495C
	mov r0, #1
	lsl r0, r0, #0xc
	add r6, r6, #1
	add r5, r5, #1
	add r4, r4, r0
	cmp r6, r7
	blt _021E4908
_021E4954:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E4958: .word 0x00000000
	thumb_func_end ov21_021E48B0

	thumb_func_start ov21_021E495C
ov21_021E495C: ; 0x021E495C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp, #8]
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x20]
	cmp r5, #0x7f
	bls _021E4970
	sub r5, #0xff
_021E4970:
	cmp r5, #0
	beq _021E499A
	lsl r2, r5, #0xc
	asr r0, r2, #0x1f
	lsr r1, r2, #0xf
	lsl r0, r0, #0x11
	orr r0, r1
	mov r1, #2
	lsl r3, r2, #0x11
	mov r2, #0
	lsl r1, r1, #0xa
	add r3, r3, r1
	adc r0, r2
	lsl r1, r0, #0x14
	lsr r0, r3, #0xc
	orr r0, r1
	mov r1, #0x7f
	lsl r1, r1, #0xc
	bl FX_Div
	asr r5, r0, #0xc
_021E499A:
	ldr r1, [r4, #0]
	add r0, r7, r5
	add r1, r7, r1
	cmp r0, r1
	ble _021E49AA
	add r3, r1, #0
	sub r1, r0, r1
	b _021E49AE
_021E49AA:
	add r3, r0, #0
	sub r1, r1, r0
_021E49AE:
	mov r0, #1
	str r0, [sp]
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r2, r6, #0x10
	lsl r3, r3, #0x10
	ldr r0, [sp, #8]
	mov r1, #6
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE78
	str r5, [r4, #0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E495C

	thumb_func_start ov21_021E49D0
ov21_021E49D0: ; 0x021E49D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	add r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r6, r2, #0
	add r4, r3, #0
	str r0, [sp, #0x24]
	sub r0, r6, r5
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	ldr r3, [sp, #0x20]
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	sub r3, #0x20
	lsl r2, r4, #0x10
	lsl r3, r3, #0x10
	add r0, r0, #4
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE78
	cmp r5, r6
	bge _021E4A24
_021E4A0A:
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [r7, #0]
	mov r1, #0
	add r0, r0, #4
	add r2, r4, #0
	bl ov21_021E495C
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, r6
	blt _021E4A0A
_021E4A24:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E49D0

	thumb_func_start ov21_021E4A28
ov21_021E4A28: ; 0x021E4A28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r3, #0xc9
	add r5, r0, #0
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r4, r1, #0
	add r0, r0, #4
	str r0, [r5, r3]
	ldr r0, [r5, r3]
	add r6, r2, #0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r1, r2, r1
	str r1, [r5, r3]
	ldr r3, [r5, r3]
	sub r3, #8
	bpl _021E4A56
	add r0, #0xe8
	add r3, r3, r0
_021E4A56:
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r1, [r6, #4]
	ldr r7, [r5, r0]
	cmp r7, r1
	beq _021E4A82
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #0x97
	sub r0, r0, #4
	str r1, [sp, #0xc]
	add r0, r5, r0
	str r0, [sp, #0x10]
	ldr r2, [r6, #0]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ov21_021E48B0
	b _021E4A96
_021E4A82:
	mov r1, #0x97
	sub r0, r0, #4
	str r1, [sp]
	add r0, r5, r0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	bl ov21_021E49D0
_021E4A96:
	ldr r0, [r4, #0]
	mov r3, #0xc9
	lsl r3, r3, #2
	ldr r0, [r0, #0]
	ldr r3, [r5, r3]
	mov r1, #1
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0]
	add r0, r0, #4
	bl sub_0201A9A4
	mov r0, #0xcb
	ldr r1, [r6, #4]
	lsl r0, r0, #2
	str r1, [r5, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4A28

	thumb_func_start ov21_021E4ABC
ov21_021E4ABC: ; 0x021E4ABC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #9
	add r0, r0, #4
	bl sub_0201C2B4
	mov r0, #0xca
	mov r2, #0x97
	lsl r0, r0, #2
	str r2, [sp]
	add r0, r5, r0
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, #0x69
	add r3, r1, #0
	bl ov21_021E49D0
	ldr r0, [r4, #0]
	add r0, r0, #4
	bl sub_0201A954
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4ABC

	thumb_func_start ov21_021E4AF4
ov21_021E4AF4: ; 0x021E4AF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x20
_021E4AFC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E4B30
	add r4, r4, #1
	add r5, #0x54
	cmp r4, #9
	blt _021E4AFC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4AF4

	thumb_func_start ov21_021E4B10
ov21_021E4B10: ; 0x021E4B10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	add r5, #0x20
_021E4B1A:
	add r1, r6, r4
	ldrb r1, [r1, #0xc]
	add r0, r5, #0
	bl ov21_021E4B94
	add r4, r4, #1
	add r5, #0x54
	cmp r4, #9
	blt _021E4B1A
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4B10

	thumb_func_start ov21_021E4B30
ov21_021E4B30: ; 0x021E4B30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	lsl r0, r1, #4
	add r0, #0x70
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #6
	lsl r0, r0, #0x10
	mov r6, #2
	ldr r5, [sp]
	str r0, [sp, #8]
	mov r4, #0
	add r7, sp, #4
	lsl r6, r6, #0xe
_021E4B4E:
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl sub_02021C50
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [sp, #8]
	mov r1, #1
	sub r0, r0, r6
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	bl sub_02021D6C
	add r4, r4, #1
	add r5, #8
	cmp r4, #9
	blt _021E4B4E
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp]
	add r1, sp, #4
	ldr r0, [r0, #0x48]
	bl sub_02021C50
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0x48]
	bl sub_02021CAC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4B30

	thumb_func_start ov21_021E4B94
ov21_021E4B94: ; 0x021E4B94
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r7, r1, #0
	add r6, r0, #0
	str r4, [sp]
	cmp r7, #0
	ble _021E4BB8
	add r5, r6, #0
_021E4BA4:
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02021CAC
	add r4, r4, #1
	lsl r0, r4, #1
	str r0, [r5, #4]
	add r5, #8
	cmp r4, r7
	blt _021E4BA4
_021E4BB8:
	mov r5, #0
	add r4, r6, #0
	add r7, r5, #0
_021E4BBE:
	ldr r0, [r4, #0]
	bl sub_02021D34
	cmp r0, #0
	beq _021E4BE0
	ldr r0, [r4, #4]
	sub r0, r0, #1
	cmp r0, #0
	ble _021E4BD8
	str r0, [r4, #4]
	add r0, r5, #1
	str r0, [sp]
	b _021E4BE0
_021E4BD8:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl sub_02021CAC
_021E4BE0:
	add r5, r5, #1
	add r4, #8
	cmp r5, #9
	blt _021E4BBE
	ldr r1, [r6, #0x4c]
	ldr r0, [sp]
	cmp r1, r0
	bgt _021E4C10
	ldr r0, [r6, #0x48]
	ldr r1, [sp]
	bl ov21_021E4C38
	mov r0, #0x10
	str r0, [r6, #0x50]
	ldr r1, [r6, #0x4c]
	ldr r0, [sp]
	cmp r1, r0
	bge _021E4C0C
	ldr r0, [r6, #0x48]
	mov r1, #1
	bl sub_02021CAC
_021E4C0C:
	ldr r0, [sp]
	str r0, [r6, #0x4c]
_021E4C10:
	ldr r1, [r6, #0x4c]
	cmp r1, #0
	ble _021E4C2E
	ldr r0, [r6, #0x50]
	cmp r0, #0
	bge _021E4C28
	sub r1, r1, #1
	str r1, [r6, #0x4c]
	ldr r0, [r6, #0x48]
	bl ov21_021E4C38
	pop {r3, r4, r5, r6, r7, pc}
_021E4C28:
	sub r0, r0, #1
	str r0, [r6, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_021E4C2E:
	ldr r0, [r6, #0x48]
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4B94

	thumb_func_start ov21_021E4C38
ov21_021E4C38: ; 0x021E4C38
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	lsl r0, r4, #3
	neg r0, r0
	add r0, #0x60
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E4C38

	thumb_func_start ov21_021E4C68
ov21_021E4C68: ; 0x021E4C68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	bl ov21_021E4D1C
	add r4, r0, #0
	add r1, r5, #0
	mov r0, #0
	add r1, #0xc
	strb r0, [r5, #0xc]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	strb r0, [r1, #8]
	bl sub_0200598C
	cmp r0, #0
	beq _021E4CA2
	ldr r0, [r5, #0]
	add r5, #0xc
	add r1, r5, #0
	mov r2, #9
	add r3, r4, #0
	bl sub_020051D0
_021E4CA2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E4C68