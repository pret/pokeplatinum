	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov13_02228128
ov13_02228128: ; 0x02228128
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #0xca
	lsl r0, r0, #2
	mov r2, #0
	add r0, r5, r0
	add r3, r2, #0
	add r4, r1, #0
	bl ov13_02228460
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _022283E4 ; =0x00000448
	mov r3, #9
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	str r3, [sp, #4]
	bl ov13_02228460
	mov r0, #0x10
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	ldr r0, _022283E8 ; =0x00000568
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x12
	bl ov13_02228460
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022283EC ; =0x00000688
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x1b
	bl ov13_02228460
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022283F0 ; =0x0000078C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x20
	bl ov13_02228460
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x89
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x25
	bl ov13_02228460
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022283F4 ; =0x00000994
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x25
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022283F8 ; =0x00000A98
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x39
	bl ov13_02228460
	ldr r0, _022283FC ; =0x00000ACA
	mov r2, #5
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x39
	str r2, [sp, #4]
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228400 ; =0x00000AFC
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x39
	bl ov13_02228460
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _02228404 ; =0x00000B2E
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0
	bl ov13_02228460
	ldr r0, _02228408 ; =0x00000BEE
	mov r2, #0x10
	str r2, [sp]
	mov r3, #6
	add r0, r5, r0
	add r1, r4, #0
	str r3, [sp, #4]
	bl ov13_02228460
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _0222840C ; =0x00000CAE
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0xc
	bl ov13_02228460
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _02228410 ; =0x00000D6E
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0x12
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228414 ; =0x00000E2E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #0xe6
	mov r2, #5
	lsl r0, r0, #4
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x2f
	str r2, [sp, #4]
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228418 ; =0x00000E92
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222841C ; =0x00000EC4
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xf
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228420 ; =0x00000EF6
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x34
	bl ov13_02228460
	ldr r0, _02228424 ; =0x00000F28
	mov r2, #5
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x34
	str r2, [sp, #4]
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228428 ; =0x00000F5A
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x34
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222842C ; =0x00000F8C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xf
	mov r3, #0x34
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228430 ; =0x00000FBE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228434 ; =0x00000FDE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228438 ; =0x00000FFE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222843C ; =0x0000101E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x33
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228440 ; =0x0000103E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x33
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228444 ; =0x0000105E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x33
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228448 ; =0x0000107E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x37
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222844C ; =0x0000109E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x37
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228450 ; =0x000010BE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x37
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228454 ; =0x000010DE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x3b
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228458 ; =0x000010FE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x3b
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222845C ; =0x0000111E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x3b
	bl ov13_02228460
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022283E4: .word 0x00000448
_022283E8: .word 0x00000568
_022283EC: .word 0x00000688
_022283F0: .word 0x0000078C
_022283F4: .word 0x00000994
_022283F8: .word 0x00000A98
_022283FC: .word 0x00000ACA
_02228400: .word 0x00000AFC
_02228404: .word 0x00000B2E
_02228408: .word 0x00000BEE
_0222840C: .word 0x00000CAE
_02228410: .word 0x00000D6E
_02228414: .word 0x00000E2E
_02228418: .word 0x00000E92
_0222841C: .word 0x00000EC4
_02228420: .word 0x00000EF6
_02228424: .word 0x00000F28
_02228428: .word 0x00000F5A
_0222842C: .word 0x00000F8C
_02228430: .word 0x00000FBE
_02228434: .word 0x00000FDE
_02228438: .word 0x00000FFE
_0222843C: .word 0x0000101E
_02228440: .word 0x0000103E
_02228444: .word 0x0000105E
_02228448: .word 0x0000107E
_0222844C: .word 0x0000109E
_02228450: .word 0x000010BE
_02228454: .word 0x000010DE
_02228458: .word 0x000010FE
_0222845C: .word 0x0000111E
	thumb_func_end ov13_02228128

	thumb_func_start ov13_02228460
ov13_02228460: ; 0x02228460
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r0, sp, #8
	mov lr, r3
	ldrb r3, [r0, #0x14]
	mov r6, #0
	mov ip, r3
	cmp r3, #0
	ble _022284AC
	ldrb r3, [r0, #0x10]
	lsl r2, r2, #1
	add r7, r1, r2
_02228478:
	mov r2, #0
	cmp r3, #0
	ble _022284A0
	mov r0, lr
	add r0, r0, r6
	lsl r0, r0, #6
	add r5, r7, r0
	add r0, r6, #0
	mul r0, r3
	lsl r1, r0, #1
	ldr r0, [sp]
	add r4, r0, r1
_02228490:
	lsl r1, r2, #1
	ldrh r0, [r5, r1]
	strh r0, [r4, r1]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, r3
	blt _02228490
_022284A0:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, ip
	cmp r6, r0
	blt _02228478
_022284AC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02228460

	thumb_func_start ov13_022284B0
ov13_022284B0: ; 0x022284B0
	cmp r1, #0x10
	bhi _0222853E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022284C0: ; jump table
	.short _022284E2 - _022284C0 - 2 ; case 0
	.short _022284E2 - _022284C0 - 2 ; case 1
	.short _022284E2 - _022284C0 - 2 ; case 2
	.short _022284E2 - _022284C0 - 2 ; case 3
	.short _022284F2 - _022284C0 - 2 ; case 4
	.short _02228500 - _022284C0 - 2 ; case 5
	.short _0222850C - _022284C0 - 2 ; case 6
	.short _0222850C - _022284C0 - 2 ; case 7
	.short _0222850C - _022284C0 - 2 ; case 8
	.short _0222850C - _022284C0 - 2 ; case 9
	.short _0222850C - _022284C0 - 2 ; case 10
	.short _0222850C - _022284C0 - 2 ; case 11
	.short _02228518 - _022284C0 - 2 ; case 12
	.short _02228524 - _022284C0 - 2 ; case 13
	.short _02228500 - _022284C0 - 2 ; case 14
	.short _02228530 - _022284C0 - 2 ; case 15
	.short _02228500 - _022284C0 - 2 ; case 16
_022284E2:
	mov r1, #0xca
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x12
	lsl r0, r0, #4
	mul r0, r2
	add r0, r1, r0
	bx lr
_022284F2:
	ldr r1, _02228544 ; =0x00000688
	add r1, r0, r1
	lsl r0, r2, #6
	add r0, r2, r0
	lsl r0, r0, #2
	add r0, r1, r0
	bx lr
_02228500:
	ldr r1, _02228548 ; =0x00000A98
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_0222850C:
	ldr r1, _0222854C ; =0x00000B2E
	add r1, r0, r1
	mov r0, #0xc0
	mul r0, r2
	add r0, r1, r0
	bx lr
_02228518:
	ldr r1, _02228550 ; =0x00000E2E
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_02228524:
	ldr r1, _02228554 ; =0x00000EF6
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_02228530:
	ldr r1, _02228544 ; =0x00000688
	add r1, r0, r1
	lsl r0, r2, #6
	add r0, r2, r0
	lsl r0, r0, #2
	add r0, r1, r0
	bx lr
_0222853E:
	mov r0, #0
	bx lr
	nop
_02228544: .word 0x00000688
_02228548: .word 0x00000A98
_0222854C: .word 0x00000B2E
_02228550: .word 0x00000E2E
_02228554: .word 0x00000EF6
	thumb_func_end ov13_022284B0

	thumb_func_start ov13_02228558
ov13_02228558: ; 0x02228558
	cmp r2, #3
	bne _02228560
	mov r0, #5
	bx lr
_02228560:
	cmp r1, #0x10
	bhi _022285BE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02228570: ; jump table
	.short _02228592 - _02228570 - 2 ; case 0
	.short _02228592 - _02228570 - 2 ; case 1
	.short _02228592 - _02228570 - 2 ; case 2
	.short _02228592 - _02228570 - 2 ; case 3
	.short _02228596 - _02228570 - 2 ; case 4
	.short _0222859A - _02228570 - 2 ; case 5
	.short _0222859E - _02228570 - 2 ; case 6
	.short _0222859E - _02228570 - 2 ; case 7
	.short _0222859E - _02228570 - 2 ; case 8
	.short _0222859E - _02228570 - 2 ; case 9
	.short _0222859E - _02228570 - 2 ; case 10
	.short _0222859E - _02228570 - 2 ; case 11
	.short _0222859A - _02228570 - 2 ; case 12
	.short _0222859A - _02228570 - 2 ; case 13
	.short _0222859A - _02228570 - 2 ; case 14
	.short _022285AA - _02228570 - 2 ; case 15
	.short _0222859A - _02228570 - 2 ; case 16
_02228592:
	mov r0, #0
	bx lr
_02228596:
	mov r0, #3
	bx lr
_0222859A:
	mov r0, #2
	bx lr
_0222859E:
	ldr r1, _022285C4 ; =0x0000114D
	ldrb r0, [r0, r1]
	add r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_022285AA:
	cmp r3, #2
	bne _022285BA
	ldr r1, _022285C4 ; =0x0000114D
	ldrb r0, [r0, r1]
	add r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_022285BA:
	mov r0, #1
	bx lr
_022285BE:
	mov r0, #0
	bx lr
	nop
_022285C4: .word 0x0000114D
	thumb_func_end ov13_02228558

	thumb_func_start ov13_022285C8
ov13_022285C8: ; 0x022285C8
	push {r4, r5, r6, r7}
	cmp r2, #0
	bne _022285D8
	ldr r2, _0222862C ; =0x00000FBE
	add r2, r0, r2
	lsl r0, r3, #5
	add r0, r2, r0
	b _02228600
_022285D8:
	cmp r2, #1
	bne _022285E6
	ldr r2, _02228630 ; =0x0000101E
	add r2, r0, r2
	lsl r0, r3, #5
	add r0, r2, r0
	b _02228600
_022285E6:
	cmp r2, #2
	bne _022285F4
	ldr r2, _02228634 ; =0x0000107E
	add r2, r0, r2
	lsl r0, r3, #5
	add r0, r2, r0
	b _02228600
_022285F4:
	cmp r2, #3
	bne _02228628
	ldr r2, _02228638 ; =0x000010DE
	add r2, r0, r2
	lsl r0, r3, #5
	add r0, r2, r0
_02228600:
	mov r2, #0
_02228602:
	lsl r4, r2, #3
	lsl r5, r2, #5
	mov r3, #0
	add r4, r0, r4
	add r5, r1, r5
_0222860C:
	lsl r6, r3, #1
	ldrh r7, [r4, r6]
	add r3, r3, #1
	lsl r3, r3, #0x10
	add r6, r5, r6
	lsr r3, r3, #0x10
	strh r7, [r6, #0xc]
	cmp r3, #4
	blo _0222860C
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, #4
	blo _02228602
_02228628:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0222862C: .word 0x00000FBE
_02228630: .word 0x0000101E
_02228634: .word 0x0000107E
_02228638: .word 0x000010DE
	thumb_func_end ov13_022285C8

	thumb_func_start ov13_0222863C
ov13_0222863C: ; 0x0222863C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r5, r1, #0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	str r0, [sp]
	bl ov13_022284B0
	add r3, sp, #0x10
	add r4, r0, #0
	ldrb r3, [r3, #0x10]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl ov13_02228558
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x10
	ldr r0, [sp, #4]
	ldr r6, _022286A8 ; =0x02229D7F
	lsl r3, r0, #2
	ldr r0, _022286AC ; =0x02229D7E
	ldrb r6, [r6, r3]
	ldrb r0, [r0, r3]
	mov r1, #0
	mul r6, r0
	cmp r6, #0
	ble _02228698
	ldr r0, _022286B0 ; =0x02229D7C
	ldr r7, _022286B4 ; =0x00000FFF
	add r3, r0, r3
_0222867E:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r7
	orr r6, r2
	strh r6, [r5, r0]
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrb r6, [r3, #2]
	ldrb r0, [r3, #3]
	mul r0, r6
	cmp r1, r0
	blt _0222867E
_02228698:
	ldr r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r1, r5, #0
	bl ov13_022285C8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022286A8: .word 0x02229D7F
_022286AC: .word 0x02229D7E
_022286B0: .word 0x02229D7C
_022286B4: .word 0x00000FFF
	thumb_func_end ov13_0222863C

	thumb_func_start ov13_022286B8
ov13_022286B8: ; 0x022286B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	lsl r4, r0, #2
	ldr r0, _0222871C ; =0x02229D7F
	ldrb r7, [r0, r4]
	ldr r0, _02228720 ; =0x02229D7E
	ldrb r6, [r0, r4]
	ldr r0, [r5, #0]
	add r1, r6, #0
	mul r1, r7
	ldr r0, [r0, #0xc]
	lsl r1, r1, #1
	bl sub_02018144
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	bl ov13_0222863C
	ldr r0, _02228724 ; =0x02229D7D
	ldr r3, _02228728 ; =0x02229D7C
	ldrb r0, [r0, r4]
	ldrb r3, [r3, r4]
	ldr r2, [sp, #0x18]
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_020198C0
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_0201C3C0
	ldr r0, [sp, #0x18]
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0222871C: .word 0x02229D7F
_02228720: .word 0x02229D7E
_02228724: .word 0x02229D7D
_02228728: .word 0x02229D7C
	thumb_func_end ov13_022286B8

	thumb_func_start ov13_0222872C
ov13_0222872C: ; 0x0222872C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	cmp r1, #6
	blo _0222874A
	cmp r1, #0xb
	bhi _0222874A
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222874A
	add r1, #0xb
	ldr r0, _022287A0 ; =0x02229DC0
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	b _02228750
_0222874A:
	ldr r0, _022287A0 ; =0x02229DC0
	lsl r1, r1, #2
	ldr r4, [r0, r1]
_02228750:
	cmp r4, #0
	beq _0222879C
	cmp r2, #0
	beq _02228760
	cmp r2, #1
	beq _02228768
	cmp r2, #2
	bne _0222876E
_02228760:
	mov r0, #1
	str r0, [sp]
	mov r7, #2
	b _0222876E
_02228768:
	mov r0, #0
	str r0, [sp]
	mov r7, #4
_0222876E:
	mov r5, #0
_02228770:
	ldrb r0, [r4, r5]
	cmp r0, #0xff
	beq _0222879C
	ldr r1, [r6, #0x2c]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r1, [sp]
	add r2, r7, #0
	mov r3, #0
	bl sub_0201C04C
	ldrb r0, [r4, r5]
	ldr r1, [r6, #0x2c]
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _02228770
_0222879C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022287A0: .word 0x02229DC0
	thumb_func_end ov13_0222872C

	thumb_func_start ov13_022287A4
ov13_022287A4: ; 0x022287A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	cmp r1, #6
	blo _022287C0
	cmp r1, #0xb
	bhi _022287C0
	sub r0, r1, #6
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r6, [r1, r0]
	b _022287E4
_022287C0:
	cmp r1, #4
	bne _02228808
	mov r7, #0x31
	mov r4, #0
	lsl r7, r7, #4
_022287CA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r6, [r0, r7]
	add r0, r6, #0
	bl sub_0200D408
	cmp r0, #0
	bne _022287E4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _022287CA
_022287E4:
	ldr r0, [sp]
	cmp r0, #0
	beq _022287F2
	cmp r0, #1
	beq _022287FE
	cmp r0, #2
	bne _02228808
_022287F2:
	add r0, r6, #0
	mov r1, #0
	mov r2, #2
	bl sub_0200D5DC
	pop {r3, r4, r5, r6, r7, pc}
_022287FE:
	mov r1, #0
	add r0, r6, #0
	sub r2, r1, #4
	bl sub_0200D5DC
_02228808:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_022287A4

	thumb_func_start ov13_0222880C
ov13_0222880C: ; 0x0222880C
	push {r4, r5}
	ldr r3, _02228844 ; =0x0000113E
	mov r5, #0
	strb r5, [r0, r3]
	add r4, r3, #1
	strb r5, [r0, r4]
	add r4, r3, #2
	strb r1, [r0, r4]
	add r1, r3, #3
	ldrb r4, [r0, r1]
	mov r1, #0xf0
	bic r4, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x18
	add r2, r4, #0
	orr r2, r1
	add r1, r3, #3
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	mov r1, #0xf
	bic r2, r1
	mov r1, #1
	orr r2, r1
	add r1, r3, #3
	strb r2, [r0, r1]
	pop {r4, r5}
	bx lr
	nop
_02228844: .word 0x0000113E
	thumb_func_end ov13_0222880C

	thumb_func_start ov13_02228848
ov13_02228848: ; 0x02228848
	push {r4, lr}
	ldr r3, _0222891C ; =0x00001141
	add r4, r0, #0
	ldrb r1, [r4, r3]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	beq _02228918
	sub r1, r3, #3
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _02228868
	cmp r1, #1
	beq _022288A0
	cmp r1, #2
	beq _022288D8
	pop {r4, pc}
_02228868:
	sub r1, r3, #1
	add r3, #0xb
	ldrb r1, [r4, r1]
	ldrb r3, [r4, r3]
	mov r2, #1
	bl ov13_022286B8
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl ov13_0222872C
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl ov13_022287A4
	ldr r0, _02228920 ; =0x0000113F
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_022288A0:
	sub r1, r3, #1
	add r3, #0xb
	ldrb r1, [r4, r1]
	ldrb r3, [r4, r3]
	mov r2, #2
	bl ov13_022286B8
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #2
	bl ov13_0222872C
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #2
	bl ov13_022287A4
	ldr r0, _02228920 ; =0x0000113F
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #2
	sub r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_022288D8:
	sub r1, r3, #1
	add r3, #0xb
	ldrb r1, [r4, r1]
	ldrb r3, [r4, r3]
	mov r2, #0
	bl ov13_022286B8
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0
	bl ov13_0222872C
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0
	bl ov13_022287A4
	ldr r0, _02228920 ; =0x0000113F
	mov r2, #0
	strb r2, [r4, r0]
	sub r1, r0, #1
	strb r2, [r4, r1]
	add r1, r0, #2
	ldrb r2, [r4, r1]
	mov r1, #0xf
	add r0, r0, #2
	bic r2, r1
	strb r2, [r4, r0]
_02228918:
	pop {r4, pc}
	nop
_0222891C: .word 0x00001141
_02228920: .word 0x0000113F
	thumb_func_end ov13_02228848

	thumb_func_start ov13_02228924
ov13_02228924: ; 0x02228924
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	beq _02228936
	cmp r6, #1
	beq _02228994
	cmp r6, #2
	beq _02228A1A
	pop {r3, r4, r5, r6, r7, pc}
_02228936:
	mov r1, #0
	add r2, r1, #0
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _0222897A
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	add r3, r6, #0
	bl ov13_022286B8
	b _02228986
_0222897A:
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
_02228986:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	pop {r3, r4, r5, r6, r7, pc}
_02228994:
	mov r4, #0
	mov r7, #3
_02228998:
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02227BA8
	cmp r0, #0
	bne _022289B6
	add r1, r4, #6
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	add r3, r6, #0
	bl ov13_022286B8
	b _022289C6
_022289B6:
	add r1, r4, #6
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
_022289C6:
	add r4, r4, #1
	cmp r4, #6
	blo _02228998
	ldr r0, _02228A34 ; =0x0000114D
	ldrb r1, [r5, r0]
	add r0, r0, #7
	add r1, r5, r1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022289F4
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #3
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #3
	add r3, r6, #0
	bl ov13_022286B8
	b _02228A0C
_022289F4:
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
_02228A0C:
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	pop {r3, r4, r5, r6, r7, pc}
_02228A1A:
	mov r1, #0xf
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228A34: .word 0x0000114D
	thumb_func_end ov13_02228924

	.rodata


	.global Unk_ov13_02229D34
Unk_ov13_02229D34: ; 0x02229D34
	.incbin "incbin/overlay13_rodata.bin", 0x1038, 0x103C - 0x1038

	.global Unk_ov13_02229D38
Unk_ov13_02229D38: ; 0x02229D38
	.incbin "incbin/overlay13_rodata.bin", 0x103C, 0x1040 - 0x103C

	.global Unk_ov13_02229D3C
Unk_ov13_02229D3C: ; 0x02229D3C
	.incbin "incbin/overlay13_rodata.bin", 0x1040, 0x1044 - 0x1040

	.global Unk_ov13_02229D40
Unk_ov13_02229D40: ; 0x02229D40
	.incbin "incbin/overlay13_rodata.bin", 0x1044, 0x1048 - 0x1044

	.global Unk_ov13_02229D44
Unk_ov13_02229D44: ; 0x02229D44
	.incbin "incbin/overlay13_rodata.bin", 0x1048, 0x104C - 0x1048

	.global Unk_ov13_02229D48
Unk_ov13_02229D48: ; 0x02229D48
	.incbin "incbin/overlay13_rodata.bin", 0x104C, 0x1050 - 0x104C

	.global Unk_ov13_02229D4C
Unk_ov13_02229D4C: ; 0x02229D4C
	.incbin "incbin/overlay13_rodata.bin", 0x1050, 0x1054 - 0x1050

	.global Unk_ov13_02229D50
Unk_ov13_02229D50: ; 0x02229D50
	.incbin "incbin/overlay13_rodata.bin", 0x1054, 0x1058 - 0x1054

	.global Unk_ov13_02229D54
Unk_ov13_02229D54: ; 0x02229D54
	.incbin "incbin/overlay13_rodata.bin", 0x1058, 0x105C - 0x1058

	.global Unk_ov13_02229D58
Unk_ov13_02229D58: ; 0x02229D58
	.incbin "incbin/overlay13_rodata.bin", 0x105C, 0x1060 - 0x105C

	.global Unk_ov13_02229D5C
Unk_ov13_02229D5C: ; 0x02229D5C
	.incbin "incbin/overlay13_rodata.bin", 0x1060, 0x1064 - 0x1060

	.global Unk_ov13_02229D60
Unk_ov13_02229D60: ; 0x02229D60
	.incbin "incbin/overlay13_rodata.bin", 0x1064, 0x1068 - 0x1064

	.global Unk_ov13_02229D64
Unk_ov13_02229D64: ; 0x02229D64
	.incbin "incbin/overlay13_rodata.bin", 0x1068, 0x106C - 0x1068

	.global Unk_ov13_02229D68
Unk_ov13_02229D68: ; 0x02229D68
	.incbin "incbin/overlay13_rodata.bin", 0x106C, 0x1070 - 0x106C

	.global Unk_ov13_02229D6C
Unk_ov13_02229D6C: ; 0x02229D6C
	.incbin "incbin/overlay13_rodata.bin", 0x1070, 0x1074 - 0x1070

	.global Unk_ov13_02229D70
Unk_ov13_02229D70: ; 0x02229D70
	.incbin "incbin/overlay13_rodata.bin", 0x1074, 0x1078 - 0x1074

	.global Unk_ov13_02229D74
Unk_ov13_02229D74: ; 0x02229D74
	.incbin "incbin/overlay13_rodata.bin", 0x1078, 0x107C - 0x1078

	.global Unk_ov13_02229D78
Unk_ov13_02229D78: ; 0x02229D78
	.incbin "incbin/overlay13_rodata.bin", 0x107C, 0x1080 - 0x107C

	.global Unk_ov13_02229D7C
Unk_ov13_02229D7C: ; 0x02229D7C
	.incbin "incbin/overlay13_rodata.bin", 0x1080, 0x10C4 - 0x1080

	.global Unk_ov13_02229DC0
Unk_ov13_02229DC0: ; 0x02229DC0
	.incbin "incbin/overlay13_rodata.bin", 0x10C4, 0x5C

