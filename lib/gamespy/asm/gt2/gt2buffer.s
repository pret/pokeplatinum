	.include "macros/function.inc"
	.include "include/gt2buffer.inc"

	

	.text


	arm_func_start ov4_021F741C
ov4_021F741C: ; 0x021F741C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl DWCi_GsMalloc
	str r0, [r5, #0]
	cmp r0, #0
	moveq r0, #0
	strne r4, [r5, #4]
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021F741C

	arm_func_start ov4_021F7448
ov4_021F7448: ; 0x021F7448
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	sub r0, r1, r0
	bx lr
	arm_func_end ov4_021F7448

	arm_func_start ov4_021F7458
ov4_021F7458: ; 0x021F7458
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldmib r5, {r0, r2}
	mov r4, r1
	cmp r2, r0
	blt _021F7484
	ldr r0, _021F749C ; =0x022194F0
	ldr r1, _021F74A0 ; =0x0221950C
	ldr r2, _021F74A4 ; =0x022194C4
	mov r3, #0x23
	bl __msl_assertion_failed
_021F7484:
	ldr r1, [r5, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0]
	strb r4, [r0, r1]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F749C: .word Unk_ov4_022194F0
_021F74A0: .word Unk_ov4_0221950C
_021F74A4: .word Unk_ov4_022194C4
	arm_func_end ov4_021F7458

	arm_func_start ov4_021F74A8
ov4_021F74A8: ; 0x021F74A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldmib r5, {r0, r2}
	add r2, r2, #2
	mov r4, r1
	cmp r2, r0
	ble _021F74D8
	ldr r0, _021F7508 ; =0x02219518
	ldr r1, _021F750C ; =0x0221950C
	ldr r2, _021F7510 ; =0x022194D8
	mov r3, #0x2e
	bl __msl_assertion_failed
_021F74D8:
	ldr r2, [r5, #8]
	mov r1, r4, asr #8
	add r0, r2, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0]
	strb r1, [r0, r2]
	ldr r1, [r5, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0]
	strb r4, [r0, r1]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F7508: .word Unk_ov4_02219518
_021F750C: .word Unk_ov4_0221950C
_021F7510: .word Unk_ov4_022194D8
	arm_func_end ov4_021F74A8

	arm_func_start ov4_021F7514
ov4_021F7514: ; 0x021F7514
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r4, r2
	mov r6, r0
	cmpne r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mvn r0, #0
	cmp r4, r0
	bne _021F7544
	mov r0, r5
	bl strlen
	mov r4, r0
_021F7544:
	ldmib r6, {r0, r1}
	add r1, r1, r4
	cmp r1, r0
	ble _021F7568
	ldr r0, _021F7590 ; =0x0221953C
	ldr r1, _021F7594 ; =0x0221950C
	ldr r2, _021F7598 ; =0x022194B0
	mov r3, #0x40
	bl __msl_assertion_failed
_021F7568:
	ldr r3, [r6, #0]
	ldr r0, [r6, #8]
	mov r1, r5
	mov r2, r4
	add r0, r3, r0
	bl memcpy
	ldr r0, [r6, #8]
	add r0, r0, r4
	str r0, [r6, #8]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F7590: .word Unk_ov4_0221953C
_021F7594: .word Unk_ov4_0221950C
_021F7598: .word Unk_ov4_022194B0
	arm_func_end ov4_021F7514

	arm_func_start ov4_021F759C
ov4_021F759C: ; 0x021F759C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mvn r1, #0
	mov r6, r0
	cmp r5, r1
	ldreq r0, [r6, #8]
	mov r4, r2
	subeq r5, r0, r4
	ldr r0, [r6, #8]
	cmp r5, r0
	ble _021F75DC
	ldr r0, _021F762C ; =0x02219560
	ldr r1, _021F7630 ; =0x0221950C
	ldr r2, _021F7634 ; =0x0221949C
	mov r3, #0x4f
	bl __msl_assertion_failed
_021F75DC:
	ldr r0, [r6, #8]
	sub r0, r0, r5
	cmp r4, r0
	ble _021F7600
	ldr r0, _021F7638 ; =0x02219578
	ldr r1, _021F7630 ; =0x0221950C
	ldr r2, _021F7634 ; =0x0221949C
	mov r3, #0x50
	bl __msl_assertion_failed
_021F7600:
	ldr r0, [r6, #0]
	ldr r1, [r6, #8]
	add r0, r0, r5
	sub r2, r1, r5
	add r1, r0, r4
	sub r2, r2, r4
	bl memmove
	ldr r0, [r6, #8]
	sub r0, r0, r4
	str r0, [r6, #8]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F762C: .word Unk_ov4_02219560
_021F7630: .word Unk_ov4_0221950C
_021F7634: .word Unk_ov4_0221949C
_021F7638: .word Unk_ov4_02219578
	arm_func_end ov4_021F759C

	.data


	.global Unk_ov4_0221949C
Unk_ov4_0221949C: ; 0x0221949C
	.asciz "gti2BufferShorten"
	.space 0x2

	.global Unk_ov4_022194B0
Unk_ov4_022194B0: ; 0x022194B0
	.asciz "gti2BufferWriteData"

	.global Unk_ov4_022194C4
Unk_ov4_022194C4: ; 0x022194C4
	.asciz "gti2BufferWriteByte"

	.global Unk_ov4_022194D8
Unk_ov4_022194D8: ; 0x022194D8
	.asciz "gti2BufferWriteUShort"
	.space 0x2

	.global Unk_ov4_022194F0
Unk_ov4_022194F0: ; 0x022194F0
	.ascii "buffer->len < buffer->size"
	.space 0x2

	.global Unk_ov4_0221950C
Unk_ov4_0221950C: ; 0x0221950C
	.asciz "gt2Buffer.c"

	.global Unk_ov4_02219518
Unk_ov4_02219518: ; 0x02219518
	.asciz "(buffer->len + 2) <= buffer->size"
	.space 0x2

	.global Unk_ov4_0221953C
Unk_ov4_0221953C: ; 0x0221953C
	.asciz "(buffer->len + len) <= buffer->size"

	.global Unk_ov4_02219560
Unk_ov4_02219560: ; 0x02219560
	.ascii "start <= buffer->len"
	.space 0x4

	.global Unk_ov4_02219578
Unk_ov4_02219578: ; 0x02219578
	.ascii "shortenBy <= (buffer->len - start)"
	.space 0x2

