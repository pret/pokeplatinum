	.include "macros/function.inc"
	.include "include/ov97_02233408.inc"

	

	.text


	thumb_func_start ov97_02233408
ov97_02233408: ; 0x02233408
	ldr r0, _0223340C ; =0x0223EA20
	bx lr
	; .align 2, 0
_0223340C: .word 0x0223EA20
	thumb_func_end ov97_02233408

	thumb_func_start ov97_02233410
ov97_02233410: ; 0x02233410
	ldr r0, _02233414 ; =0x0223F1C0
	bx lr
	; .align 2, 0
_02233414: .word 0x0223F1C0
	thumb_func_end ov97_02233410

	thumb_func_start ov97_02233418
ov97_02233418: ; 0x02233418
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233418

	thumb_func_start ov97_02233424
ov97_02233424: ; 0x02233424
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end ov97_02233424

	thumb_func_start ov97_02233430
ov97_02233430: ; 0x02233430
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0, #1]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233430

	thumb_func_start ov97_0223343C
ov97_0223343C: ; 0x0223343C
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	strb r4, [r0, #1]
	pop {r4, pc}
	thumb_func_end ov97_0223343C

	thumb_func_start ov97_02233448
ov97_02233448: ; 0x02233448
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0, #2]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233448

	thumb_func_start ov97_02233454
ov97_02233454: ; 0x02233454
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	strb r4, [r0, #2]
	pop {r4, pc}
	thumb_func_end ov97_02233454

	thumb_func_start ov97_02233460
ov97_02233460: ; 0x02233460
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0, #3]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233460

	thumb_func_start ov97_0223346C
ov97_0223346C: ; 0x0223346C
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233408
	strh r4, [r0, #0x32]
	pop {r4, pc}
	thumb_func_end ov97_0223346C

	thumb_func_start ov97_02233478
ov97_02233478: ; 0x02233478
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x24]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233478

	thumb_func_start ov97_02233484
ov97_02233484: ; 0x02233484
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x2c]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233484

	thumb_func_start ov97_02233490
ov97_02233490: ; 0x02233490
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x30]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233490

	thumb_func_start ov97_0223349C
ov97_0223349C: ; 0x0223349C
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x38]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_0223349C

	thumb_func_start ov97_022334A8
ov97_022334A8: ; 0x022334A8
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x3c]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_022334A8

	thumb_func_start ov97_022334B4
ov97_022334B4: ; 0x022334B4
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x28]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_022334B4

	thumb_func_start ov97_022334C0
ov97_022334C0: ; 0x022334C0
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	strh r4, [r0, #0xc]
	pop {r4, pc}
	thumb_func_end ov97_022334C0

	thumb_func_start ov97_022334CC
ov97_022334CC: ; 0x022334CC
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_022334CC

	thumb_func_start ov97_022334D8
ov97_022334D8: ; 0x022334D8
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	str r4, [r0, #0x14]
	pop {r4, pc}
	thumb_func_end ov97_022334D8

	thumb_func_start ov97_022334E4
ov97_022334E4: ; 0x022334E4
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	str r4, [r0, #0x18]
	pop {r4, pc}
	thumb_func_end ov97_022334E4

	thumb_func_start ov97_022334F0
ov97_022334F0: ; 0x022334F0
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	str r4, [r0, #0x20]
	pop {r4, pc}
	thumb_func_end ov97_022334F0

	thumb_func_start ov97_022334FC
ov97_022334FC: ; 0x022334FC
	push {r3, lr}
	bl ov97_02233410
	add r0, #0x90
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_022334FC

	thumb_func_start ov97_02233508
ov97_02233508: ; 0x02233508
	ldr r3, _0223350C ; =ov97_022334FC
	bx r3
	; .align 2, 0
_0223350C: .word ov97_022334FC
	thumb_func_end ov97_02233508

	thumb_func_start ov97_02233510
ov97_02233510: ; 0x02233510
	ldr r3, _02233514 ; =ov97_022334FC
	bx r3
	; .align 2, 0
_02233514: .word ov97_022334FC
	thumb_func_end ov97_02233510

	thumb_func_start ov97_02233518
ov97_02233518: ; 0x02233518
	push {r4, lr}
	bl ov97_02233508
	mov r2, #0x71
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	mov r1, #0x46
	lsl r1, r1, #2
	add r0, r1, #0
	add r0, #0xa8
	strh r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_02233518

	thumb_func_start ov97_02233538
ov97_02233538: ; 0x02233538
	push {r3, lr}
	bl ov97_02233410
	mov r1, #0x95
	lsl r1, r1, #2
	add r0, r0, r1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233538

	thumb_func_start ov97_02233548
ov97_02233548: ; 0x02233548
	push {r3, lr}
	bl ov97_02233538
	mov r1, #0
	strb r1, [r0, #0x18]
	pop {r3, pc}
	thumb_func_end ov97_02233548

	thumb_func_start ov97_02233554
ov97_02233554: ; 0x02233554
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233554

	thumb_func_start ov97_02233560
ov97_02233560: ; 0x02233560
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233560

	thumb_func_start ov97_02233570
ov97_02233570: ; 0x02233570
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1c
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233570

	thumb_func_start ov97_02233580
ov97_02233580: ; 0x02233580
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x44]
	lsr r0, r0, #0x10
	pop {r3, pc}
	thumb_func_end ov97_02233580

	thumb_func_start ov97_0223358C
ov97_0223358C: ; 0x0223358C
	mov r0, #0x38
	bx lr
	thumb_func_end ov97_0223358C

	thumb_func_start ov97_02233590
ov97_02233590: ; 0x02233590
	push {r3, lr}
	bl ov97_02233410
	add r0, #0x40
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233590

	thumb_func_start ov97_0223359C
ov97_0223359C: ; 0x0223359C
	push {r3, lr}
	bl ov97_02233410
	add r0, #0x78
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_0223359C

	thumb_func_start ov97_022335A8
ov97_022335A8: ; 0x022335A8
	push {r3}
	sub sp, #4
	mov r2, #0
	str r2, [sp]
	add r3, sp, #0
_022335B2:
	add r1, r0, r2
	ldrb r1, [r1, #2]
	add r2, r2, #1
	strb r1, [r3]
	add r3, r3, #1
	cmp r2, #4
	blo _022335B2
	ldr r0, [sp]
	add sp, #4
	pop {r3}
	bx lr
	thumb_func_end ov97_022335A8

	thumb_func_start ov97_022335C8
ov97_022335C8: ; 0x022335C8
	push {r3}
	sub sp, #4
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1]
	add r3, sp, #0
_022335D4:
	ldrb r1, [r0, r2]
	add r2, r2, #1
	strb r1, [r3]
	add r3, r3, #1
	cmp r2, #2
	blo _022335D4
	add r1, sp, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	add sp, #4
	pop {r3}
	bx lr
	thumb_func_end ov97_022335C8

	thumb_func_start ov97_022335EC
ov97_022335EC: ; 0x022335EC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _02233610 ; =0x00002710
	add r6, r0, #0
	add r4, r2, #0
	bl _u32_div_f
	str r1, [r5, #0]
	ldr r1, _02233610 ; =0x00002710
	add r0, r6, #0
	bl _u32_div_f
	ldr r1, _02233610 ; =0x00002710
	bl _u32_div_f
	str r1, [r4, #0]
	pop {r4, r5, r6, pc}
	nop
_02233610: .word 0x00002710
	thumb_func_end ov97_022335EC

	thumb_func_start ov97_02233614
ov97_02233614: ; 0x02233614
	mov r0, #0x10
	bx lr
	thumb_func_end ov97_02233614

	thumb_func_start ov97_02233618
ov97_02233618: ; 0x02233618
	push {r4, lr}
	ldr r0, _0223362C ; =0x04000006
	ldrh r4, [r0]
	bl OS_GetTick
	add r1, r0, r4
	mov r0, #1
	bic r1, r0
	add r0, r1, #1
	pop {r4, pc}
	; .align 2, 0
_0223362C: .word 0x04000006
	thumb_func_end ov97_02233618

	thumb_func_start ov97_02233630
ov97_02233630: ; 0x02233630
	push {r4, r5, r6, r7}
	add r3, r0, #0
	mov r0, #0
	lsr r1, r1, #2
	beq _02233666
	ldr r4, _0223366C ; =0x00269EC3
_0223363C:
	ldr r5, _02233670 ; =0x5D588B65
	ldr r6, _02233670 ; =0x5D588B65
	mul r5, r3
	ldr r3, _0223366C ; =0x00269EC3
	add r0, r0, #1
	add r3, r5, r3
	lsr r5, r3, #0x10
	mul r6, r3
	add r3, r6, r4
	lsl r5, r5, #0x10
	lsr r7, r3, #0x10
	lsr r5, r5, #0x10
	lsl r7, r7, #0x10
	ldr r6, [r2, #0]
	lsl r5, r5, #0x10
	lsr r7, r7, #0x10
	orr r5, r7
	eor r5, r6
	stmia r2!, {r5}
	cmp r0, r1
	blo _0223363C
_02233666:
	add r0, r3, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0223366C: .word 0x00269EC3
_02233670: .word 0x5D588B65
	thumb_func_end ov97_02233630

	thumb_func_start ov97_02233674
ov97_02233674: ; 0x02233674
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl ov97_02233590
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0xff
	bic r0, r1
	ldr r1, [r4, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r1, r0
	ldr r0, _02233798 ; =0xFFFFF0FF
	str r1, [r5, #0]
	and r0, r1
	ldr r1, [r4, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x14
	orr r1, r0
	ldr r0, _0223379C ; =0xFFFF0FFF
	str r1, [r5, #0]
	and r0, r1
	ldr r1, [r4, #0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r5, #0]
	bl ov97_02233618
	ldr r1, [r5, #0]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r5, #0]
	ldr r2, [r4, #4]
	ldr r1, [r5, #4]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r0, #0xff
	lsl r2, r2, #0x18
	bic r1, r0
	lsr r2, r2, #0x18
	orr r2, r1
	ldr r1, _02233798 ; =0xFFFFF0FF
	str r2, [r5, #4]
	and r1, r2
	ldr r2, [r4, #4]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x1c
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x14
	orr r2, r1
	ldr r1, _0223379C ; =0xFFFF0FFF
	str r2, [r5, #4]
	and r1, r2
	ldr r2, [r4, #4]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1c
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x10
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	bic r1, r0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r1, r0
	ldr r0, _022337A0 ; =0xFFFF00FF
	and r0, r1
	ldr r1, [sp]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r5, #8]
	mov r0, #0
	add r1, r7, #0
	add r2, r6, #0
	bl SVC_GetCRC16
	ldr r1, [r5, #8]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r5, #8]
	bl ov97_02233614
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	ldr r1, [r5, #0xc]
	mov r2, #0xff
	bic r1, r2
	lsr r0, r0, #0x18
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r6, #8
	orr r0, r1
	str r0, [r5, #0xc]
	cmp r6, #0
	beq _02233772
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r1, r5, r1
	add r2, r6, #0
	bl MI_CpuCopy8
_02233772:
	add r0, r5, #0
	bl ov97_02233810
	ldr r0, [r4, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _02233796
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r1, r6, r1
	lsr r0, r0, #0x10
	sub r1, r1, #4
	add r2, r5, #4
	bl ov97_02233630
_02233796:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233798: .word 0xFFFFF0FF
_0223379C: .word 0xFFFF0FFF
_022337A0: .word 0xFFFF00FF
	thumb_func_end ov97_02233674

	thumb_func_start ov97_022337A4
ov97_022337A4: ; 0x022337A4
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233590
	ldr r0, [r4, #0]
	lsl r1, r0, #0x10
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _022337D4
	lsr r0, r0, #0x10
	mov r1, #0xc
	add r2, r4, #4
	bl ov97_02233630
	ldr r1, [r4, #0xc]
	add r4, #0x10
	lsl r2, r1, #0x18
	lsr r2, r2, #0x18
	lsr r1, r1, #8
	add r1, r2, r1
	sub r1, #0x10
	add r2, r4, #0
	bl ov97_02233630
_022337D4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_022337A4

	thumb_func_start ov97_022337D8
ov97_022337D8: ; 0x022337D8
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	mov r0, #0
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	add r1, r4, r1
	lsr r2, r2, #8
	bl SVC_GetCRC16
	ldr r1, [r4, #8]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _022337F8
	mov r0, #1
	pop {r4, pc}
_022337F8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov97_022337D8
	.data


	.global Unk_ov97_0223EA20
Unk_ov97_0223EA20: ; 0x0223EA20
	.incbin "incbin/overlay97_data.bin", 0xAE0, 0x40


	.bss


	.global Unk_ov97_0223F1C0
Unk_ov97_0223F1C0: ; 0x0223F1C0
	.space 0x274

