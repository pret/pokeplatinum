	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021DD42C
ov5_021DD42C: ; 0x021DD42C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ov5_021DD574
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #1]
	mov r0, #1
	strb r0, [r4, #2]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DD42C

	thumb_func_start ov5_021DD444
ov5_021DD444: ; 0x021DD444
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, #0x80
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r1, sp, #8
	add r7, r2, #0
	ldr r4, [sp, #0x38]
	bl ov5_021DD588
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, sp, #8
	bl ov5_021DD610
	add r0, sp, #8
	add r1, r6, #0
	add r2, r7, #0
	bl ov5_021DD648
	cmp r4, #0
	bne _021DD484
	add r0, r5, #0
	bl ov5_021DD574
	add r2, r0, #0
	mov r0, #0
	mov r1, #1
	b _021DD48A
_021DD484:
	ldrb r2, [r4]
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
_021DD48A:
	str r0, [sp]
	ldr r3, [sp, #4]
	add r0, sp, #8
	bl ov5_021DD6B4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DD444

	thumb_func_start ov5_021DD498
ov5_021DD498: ; 0x021DD498
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, #0x80
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r1, sp, #0
	add r6, r2, #0
	bl ov5_021DD588
	add r5, #0x80
	ldr r0, [r5, #0]
	add r1, sp, #0
	bl ov5_021DD610
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021DD648
	add r0, sp, #0
	mov r1, #1
	bl ov5_021DD6DC
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021DD498

	thumb_func_start ov5_021DD4CC
ov5_021DD4CC: ; 0x021DD4CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x80
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r1, sp, #4
	add r6, r2, #0
	add r7, r3, #0
	bl ov5_021DD588
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, sp, #4
	bl ov5_021DD610
	add r0, sp, #0x20
	ldrh r0, [r0, #0x10]
	add r1, r4, #0
	add r2, r6, #0
	str r0, [sp]
	add r0, sp, #4
	add r3, r7, #0
	bl ov5_021DD664
	add r0, sp, #0x20
	ldrb r0, [r0, #0x14]
	cmp r0, #0xff
	beq _021DD524
	add r0, r5, #0
	bl ov5_021DD574
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r3, sp, #0x20
	ldrb r3, [r3, #0x14]
	add r0, sp, #4
	mov r1, #1
	bl ov5_021DD6B4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021DD524:
	add r0, sp, #4
	mov r1, #1
	bl ov5_021DD6DC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DD4CC

	thumb_func_start ov5_021DD530
ov5_021DD530: ; 0x021DD530
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x80
	add r4, r2, #0
	ldr r0, [r0, #0]
	add r2, sp, #4
	add r6, r3, #0
	bl ov5_021DD5D0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, sp, #4
	bl ov5_021DD610
	ldr r1, [r5, #0x78]
	add r0, sp, #4
	add r2, r4, #0
	bl ov5_021DD648
	add r0, r5, #0
	bl ov5_021DD574
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, sp, #4
	mov r1, #1
	add r3, r6, #0
	bl ov5_021DD6B4
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov5_021DD530

	thumb_func_start ov5_021DD574
ov5_021DD574: ; 0x021DD574
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	bl sub_02027AC0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021DD574

	thumb_func_start ov5_021DD588
ov5_021DD588: ; 0x021DD588
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x10
	add r5, r0, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	mov r1, #0x11
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	mov r1, #0xf
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	mov r1, #1
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_0203F098
	str r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #6
	bl sub_0203F098
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl sub_0203F098
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DD588

	thumb_func_start ov5_021DD5D0
ov5_021DD5D0: ; 0x021DD5D0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x10
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	mov r1, #0x11
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	mov r1, #1
	str r0, [r4, #4]
	str r6, [r4, #8]
	add r0, r5, #0
	bl sub_0203F098
	str r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #6
	bl sub_0203F098
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl sub_0203F098
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021DD5D0

	thumb_func_start ov5_021DD610
ov5_021DD610: ; 0x021DD610
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	bne _021DD63C
	ldr r0, [r5, #8]
	ldr r1, [r4, #0xc]
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0205D944
	ldr r0, [r4, #0x10]
	mov r1, #1
	strb r1, [r0]
_021DD63C:
	ldr r0, [r4, #0xc]
	mov r1, #0xf
	bl sub_0201ADA4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021DD610

	thumb_func_start ov5_021DD648
ov5_021DD648: ; 0x021DD648
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r4, #4]
	bl sub_0200B1B8
	ldr r0, [r4, #8]
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	bl sub_0200C388
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DD648

	thumb_func_start ov5_021DD664
ov5_021DD664: ; 0x021DD664
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, sp, #0
	add r7, r3, #0
	bl sub_02014A84
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02014CE0
	add r0, sp, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_02014CF8
	add r2, sp, #0x10
	ldrh r2, [r2, #0x10]
	add r0, sp, #0
	mov r1, #1
	bl sub_02014CF8
	add r0, sp, #0
	mov r1, #0x20
	bl sub_02014B34
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_02023810
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DD664

	thumb_func_start ov5_021DD6B4
ov5_021DD6B4: ; 0x021DD6B4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r5, r2, #0
	str r0, [sp, #4]
	add r6, r1, #0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0]
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0205D9CC
	ldr r1, [r4, #0x14]
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021DD6B4

	thumb_func_start ov5_021DD6DC
ov5_021DD6DC: ; 0x021DD6DC
	push {r3, r4, lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r4, r0, #0
	str r3, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0]
	bl sub_0201D738
	ldr r1, [r4, #0x14]
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DD6DC