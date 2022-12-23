	.include "macros/function.inc"
	.include "overlay028/ov28_02256E9C.inc"

	

	.text


	thumb_func_start ov28_02256E9C
ov28_02256E9C: ; 0x02256E9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #8
	mov r1, #0xc
	bl sub_02018144
	str r0, [r5, #0]
	cmp r0, #0
	beq _02256EBC
	strb r4, [r0, #0xa]
	ldr r0, [r5, #0]
	bl ov28_02256EC8
	mov r0, #1
	pop {r3, r4, r5, pc}
_02256EBC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov28_02256E9C

	thumb_func_start ov28_02256EC0
ov28_02256EC0: ; 0x02256EC0
	ldr r3, _02256EC4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02256EC4: .word sub_020181C4
	thumb_func_end ov28_02256EC0

	thumb_func_start ov28_02256EC8
ov28_02256EC8: ; 0x02256EC8
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	strb r1, [r0, #9]
	strb r1, [r0, #8]
	strb r1, [r0, #0xb]
	bx lr
	; .align 2, 0
	thumb_func_end ov28_02256EC8

	thumb_func_start ov28_02256ED8
ov28_02256ED8: ; 0x02256ED8
	add r2, r1, #0
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov28_02256ED8

	thumb_func_start ov28_02256EE8
ov28_02256EE8: ; 0x02256EE8
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r3, r1, #0
	ldrb r1, [r5, #9]
	add r4, r2, #0
	cmp r1, #0
	bne _02256F1A
	ldrb r0, [r3, #9]
	cmp r0, #1
	bne _02256F1A
	ldmia r3!, {r0, r1}
	add r6, sp, #0x24
	add r4, r6, #0
	stmia r6!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r6, #0]
	mov r0, #0
	strb r0, [r4, #9]
	add r0, r5, #0
	bl ov28_02256F74
	add sp, #0x30
	pop {r4, r5, r6, pc}
_02256F1A:
	cmp r1, #1
	bne _02256F42
	ldrb r0, [r3, #9]
	cmp r0, #0
	bne _02256F42
	ldmia r5!, {r0, r1}
	add r6, sp, #0x18
	add r2, r6, #0
	stmia r6!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r6, #0]
	mov r0, #0
	strb r0, [r2, #9]
	add r0, r3, #0
	add r2, r4, #0
	bl ov28_02256F74
	add sp, #0x30
	pop {r4, r5, r6, pc}
_02256F42:
	add r1, r3, #0
	add r0, r5, #0
	add r2, sp, #0xc
	add r3, sp, #0
	bl ov28_022575EC
	ldr r2, [sp, #0xc]
	ldr r1, [sp]
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #4]
	add r1, r2, r1
	adc r3, r0
	str r1, [r4, #0]
	str r3, [r4, #4]
	add r0, sp, #0
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #8]
	ldrb r0, [r0, #0x15]
	strb r0, [r4, #9]
	add r0, r4, #0
	bl ov28_022574FC
	add sp, #0x30
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov28_02256EE8

	thumb_func_start ov28_02256F74
ov28_02256F74: ; 0x02256F74
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #9]
	add r6, r2, #0
	cmp r1, #0
	bne _02256F8A
	ldrb r0, [r4, #9]
	cmp r0, #1
	beq _02256F94
_02256F8A:
	cmp r1, #1
	bne _02256FB6
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _02256FB6
_02256F94:
	ldmia r4!, {r0, r1}
	add r3, sp, #0x18
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldrb r1, [r2, #9]
	mov r0, #1
	eor r0, r1
	strb r0, [r2, #9]
	add r1, r2, #0
	add r0, r5, #0
	add r2, r6, #0
	bl ov28_02256EE8
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_02256FB6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov28_022571F4
	cmp r0, #0
	beq _02256FCC
	add r0, r6, #0
	bl ov28_02256EC8
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_02256FCC:
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	add r3, sp, #0
	bl ov28_022575EC
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r5, sp, #0xc
	add r4, sp, #0
	sub r0, r3, r0
	sbc r2, r1
	bhs _02256FEE
	mov r1, #1
	b _02256FF0
_02256FEE:
	mov r1, #0
_02256FF0:
	add r0, sp, #0
	ldrb r0, [r0, #0x15]
	eor r0, r1
	beq _02257006
	add r0, r5, #0
	add r5, r4, #0
	ldrb r1, [r5, #9]
	add r4, r0, #0
	mov r0, #1
	eor r0, r1
	b _02257008
_02257006:
	ldrb r0, [r5, #9]
_02257008:
	strb r0, [r6, #9]
	ldr r2, [r5, #0]
	ldr r1, [r4, #0]
	ldr r3, [r5, #4]
	ldr r0, [r4, #4]
	sub r1, r2, r1
	sbc r3, r0
	str r1, [r6, #0]
	str r3, [r6, #4]
	ldrb r0, [r5, #8]
	strb r0, [r6, #8]
	add r0, r6, #0
	bl ov28_022574FC
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov28_02256F74

	thumb_func_start ov28_02257028
ov28_02257028: ; 0x02257028
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	ldr r2, [r6, #0]
	ldr r3, [r6, #4]
	bl _ull_mul
	str r0, [r4, #0]
	str r1, [r4, #4]
	ldrb r1, [r5, #8]
	ldrb r0, [r6, #8]
	add r0, r1, r0
	strb r0, [r4, #8]
	ldrb r1, [r5, #9]
	ldrb r0, [r6, #9]
	eor r0, r1
	strb r0, [r4, #9]
	add r0, r4, #0
	bl ov28_022574FC
	pop {r4, r5, r6, pc}
	thumb_func_end ov28_02257028

	thumb_func_start ov28_02257058
ov28_02257058: ; 0x02257058
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r2, #0
	add r2, r1, #0
	add r3, r1, #0
	ldr r6, [r3, #4]
	mov r3, #0
	ldr r2, [r2, #0]
	mov r4, #0
	eor r3, r6
	eor r2, r4
	str r1, [sp]
	orr r2, r3
	bne _0225707C
	mov r0, #1
	add sp, #0x1c
	strb r0, [r5, #0xb]
	pop {r4, r5, r6, r7, pc}
_0225707C:
	add r2, sp, #0x10
	add r3, sp, #4
	bl ov28_022575EC
	add r0, sp, #4
	str r0, [sp]
	ldr r4, [sp, #4]
	ldr r3, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, _0225716C ; =0x04000280
	mov r6, #2
	strh r6, [r0]
	add r6, r0, #0
	add r6, #0x10
	str r2, [r6, #0]
	str r1, [r6, #4]
	add r1, r0, #0
	add r1, #0x18
	str r4, [r1, #0]
	str r3, [r1, #4]
	lsr r1, r0, #0xb
_022570A8:
	ldrh r2, [r0]
	tst r2, r1
	bne _022570A8
	ldr r0, _02257170 ; =0x040002A0
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	str r1, [r5, #0]
	str r0, [r5, #4]
	mov r0, #0
	strb r0, [r5, #8]
	add r0, r5, #0
	bl ov28_02257498
	ldr r2, _0225716C ; =0x04000280
	add r7, r0, #0
	lsr r0, r2, #0xb
_022570C8:
	ldrh r1, [r2]
	tst r1, r0
	bne _022570C8
	ldr r0, _02257174 ; =0x040002A8
	mov r1, #0
	ldr r2, [r0, #4]
	ldr r3, [r0, #0]
	mov r0, #0
	eor r1, r2
	eor r0, r3
	orr r0, r1
	beq _0225715C
_022570E0:
	ldrb r0, [r5, #8]
	add r1, r7, #1
	add r1, r1, r0
	ldrb r0, [r5, #0xa]
	cmp r1, r0
	bhs _0225715C
	ldr r4, [sp, #4]
	ldr r6, [sp, #8]
	ldr r0, _0225716C ; =0x04000280
	mov r1, #2
	strh r1, [r0]
	add r0, r3, #0
	add r1, r2, #0
	mov r2, #0xa
	mov r3, #0
	bl _ull_mul
	ldr r2, _02257178 ; =0x04000290
	mov r3, #0
	str r0, [r2, #0]
	str r1, [r2, #4]
	add r2, #8
	str r4, [r2, #0]
	str r6, [r2, #4]
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	mov r2, #0xa
	bl _ull_mul
	str r0, [r5, #0]
	ldr r2, _0225716C ; =0x04000280
	str r1, [r5, #4]
	lsr r0, r2, #0xb
_02257122:
	ldrh r1, [r2]
	tst r1, r0
	bne _02257122
	ldr r0, _02257170 ; =0x040002A0
	ldr r2, [r5, #0]
	ldr r1, [r0, #0]
	ldr r3, [r5, #4]
	add r1, r2, r1
	ldr r0, [r0, #4]
	ldr r2, _0225716C ; =0x04000280
	adc r3, r0
	str r1, [r5, #0]
	str r3, [r5, #4]
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
	lsr r0, r2, #0xb
_02257144:
	ldrh r1, [r2]
	tst r1, r0
	bne _02257144
	ldr r0, _02257174 ; =0x040002A8
	mov r1, #0
	ldr r2, [r0, #4]
	ldr r3, [r0, #0]
	mov r0, #0
	eor r1, r2
	eor r0, r3
	orr r0, r1
	bne _022570E0
_0225715C:
	add r0, sp, #0x10
	ldrb r1, [r0, #9]
	ldr r0, [sp]
	ldrb r0, [r0, #9]
	eor r0, r1
	strb r0, [r5, #9]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225716C: .word 0x04000280
_02257170: .word 0x040002A0
_02257174: .word 0x040002A8
_02257178: .word 0x04000290
	thumb_func_end ov28_02257058

	thumb_func_start ov28_0225717C
ov28_0225717C: ; 0x0225717C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov28_022574E8
	ldrb r1, [r5, #0xa]
	cmp r0, r1
	blo _02257190
	mov r0, #0
	pop {r3, r4, r5, pc}
_02257190:
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _022571B2
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	mov r2, #0xa
	mov r3, #0
	bl _ull_mul
	str r0, [r5, #0]
	str r1, [r5, #4]
	ldr r2, [r5, #0]
	mov r0, #0
	add r2, r2, r4
	adc r1, r0
	str r2, [r5, #0]
	str r1, [r5, #4]
_022571B2:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov28_0225717C

	thumb_func_start ov28_022571B8
ov28_022571B8: ; 0x022571B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov28_022574E8
	ldrb r1, [r5, #0xa]
	cmp r0, r1
	blo _022571CC
	mov r0, #0
	pop {r3, r4, r5, pc}
_022571CC:
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	mov r2, #0xa
	mov r3, #0
	bl _ull_mul
	str r0, [r5, #0]
	str r1, [r5, #4]
	ldr r2, [r5, #0]
	mov r0, #0
	add r2, r2, r4
	adc r1, r0
	str r2, [r5, #0]
	str r1, [r5, #4]
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov28_022571B8

	thumb_func_start ov28_022571F4
ov28_022571F4: ; 0x022571F4
	push {r3, r4, r5, r6}
	ldr r2, [r0, #4]
	ldr r3, [r0, #0]
	ldr r4, [r1, #4]
	add r5, r2, #0
	eor r5, r4
	ldr r6, [r1, #0]
	add r4, r3, #0
	eor r4, r6
	orr r4, r5
	beq _02257210
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02257210:
	ldrb r5, [r0, #8]
	ldrb r4, [r1, #8]
	cmp r5, r4
	beq _0225721E
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_0225721E:
	ldrb r4, [r0, #9]
	ldrb r0, [r1, #9]
	cmp r4, r0
	beq _02257238
	mov r1, #0
	mov r0, #0
	eor r1, r2
	eor r0, r3
	orr r0, r1
	beq _02257238
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02257238:
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov28_022571F4

	thumb_func_start ov28_02257240
ov28_02257240: ; 0x02257240
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0xb]
	cmp r1, #0
	beq _02257250
	mov r0, #0
	pop {r3, r4, r5, pc}
_02257250:
	bl ov28_02257498
	ldrb r1, [r5, #8]
	cmp r1, #0
	beq _0225725E
	add r1, r1, #1
	add r0, r0, r1
_0225725E:
	cmp r0, r4
	bls _02257266
	mov r0, #0
	pop {r3, r4, r5, pc}
_02257266:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov28_02257240

	thumb_func_start ov28_0225726C
ov28_0225726C: ; 0x0225726C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldrb r0, [r0, #0xb]
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _02257280
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02257280:
	ldr r0, [sp]
	mov r1, #0
	ldr r7, [r0, #4]
	ldr r6, [r0, #0]
	mov r0, #0
	eor r1, r7
	eor r0, r6
	orr r0, r1
	bne _022572D6
	ldr r1, [sp, #0x10]
	add r0, r1, #0
	add r2, r0, #2
	mov r0, #0
	strh r0, [r1]
	ldr r1, [sp]
	str r2, [sp, #0x10]
	ldrb r1, [r1, #8]
	cmp r1, #0
	beq _022572CA
	add r1, r2, #2
	str r1, [sp, #0x10]
	mov r1, #0xa
	strh r1, [r2]
	ldr r1, [sp]
	ldrb r1, [r1, #8]
	cmp r1, #0
	ble _022572CA
	add r2, r0, #0
_022572B8:
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	strh r2, [r1]
	add r1, r1, #2
	str r1, [sp, #0x10]
	ldr r1, [sp]
	ldrb r1, [r1, #8]
	cmp r0, r1
	blt _022572B8
_022572CA:
	ldr r0, [sp, #0x10]
	mov r1, #0xd
	strh r1, [r0]
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022572D6:
	mov r2, #0xa
	mov r0, #1
	mov r1, #0
	sub r2, r6, r2
	mov ip, r7
	mov r2, ip
	sbc r2, r1
	blo _022572FA
	ldr r2, _0225744C ; =0x02257A58
_022572E8:
	add r2, #8
	ldr r3, [r2, #0]
	add r0, r0, #1
	ldr r1, [r2, #4]
	sub r3, r6, r3
	mov ip, r7
	mov r3, ip
	sbc r3, r1
	bhs _022572E8
_022572FA:
	ldr r1, [sp]
	str r0, [sp, #8]
	ldrb r1, [r1, #8]
	sub r3, r1, r0
	bmi _0225730C
	add r1, r3, #2
	add r1, r0, r1
	str r1, [sp, #8]
	b _02257314
_0225730C:
	cmp r1, #0
	beq _02257314
	add r1, r0, #1
	str r1, [sp, #8]
_02257314:
	ldr r1, [sp]
	ldr r4, [sp]
	ldrb r2, [r1, #9]
	ldr r1, [sp, #8]
	ldrb r4, [r4, #0xa]
	add r1, r1, r2
	cmp r1, r4
	bls _0225732A
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225732A:
	cmp r2, #1
	bne _02257338
	ldr r1, [sp, #0x10]
	mov r2, #0xb
	strh r2, [r1]
	add r1, r1, #2
	str r1, [sp, #0x10]
_02257338:
	ldr r5, [sp, #0x10]
	cmp r3, #0
	blt _02257362
	add r0, r5, #0
	mov r1, #0
	strh r1, [r0]
	mov r1, #0xa
	add r5, r0, #4
	strh r1, [r0, #2]
	add r0, r3, #0
	sub r3, r3, #1
	cmp r0, #0
	beq _022573CE
	mov r0, #0
_02257354:
	add r1, r3, #0
	strh r0, [r5]
	add r5, r5, #2
	sub r3, r3, #1
	cmp r1, #0
	bne _02257354
	b _022573CE
_02257362:
	neg r1, r3
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #0x14]
	ldr r1, [sp, #4]
	cmp r1, #0
	ble _022573C0
	ldr r4, _02257450 ; =0x04000280
	sub r0, r0, #1
	mov lr, r0
	lsr r3, r4, #0xb
	lsr r2, r4, #0xb
_0225737A:
	mov r0, #2
	strh r0, [r4]
	ldr r0, _02257454 ; =0x04000290
	mov r1, lr
	str r6, [r0, #0]
	str r7, [r0, #4]
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	lsl r1, r0, #3
	ldr r0, _02257458 ; =0x02257A50
	add r6, r0, r1
	ldr r1, [r0, r1]
	ldr r6, [r6, #4]
	ldr r0, _0225745C ; =0x04000298
	str r1, [r0, #0]
	str r6, [r0, #4]
_0225739A:
	ldrh r0, [r4]
	tst r0, r3
	bne _0225739A
	ldr r0, _02257460 ; =0x040002A0
	ldr r0, [r0, #0]
	strh r0, [r5]
	add r5, r5, #2
_022573A8:
	ldrh r0, [r4]
	tst r0, r2
	bne _022573A8
	ldr r0, _02257464 ; =0x040002A8
	ldr r1, [sp, #4]
	ldr r6, [r0, #0]
	ldr r7, [r0, #4]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _0225737A
_022573C0:
	ldr r0, [sp]
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _022573CE
	mov r0, #0xa
	strh r0, [r5]
	add r5, r5, #2
_022573CE:
	ldr r0, [sp, #0x10]
	sub r1, r5, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, [sp, #8]
	cmp r1, r0
	bhs _02257440
	sub r0, r0, r1
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _02257440
	ldr r4, _02257450 ; =0x04000280
	sub r0, r0, #1
	str r0, [sp, #0xc]
	lsr r3, r4, #0xb
	lsr r2, r4, #0xb
_022573F6:
	mov r0, #2
	strh r0, [r4]
	ldr r0, _02257454 ; =0x04000290
	ldr r1, [sp, #0xc]
	str r6, [r0, #0]
	str r7, [r0, #4]
	ldr r0, [sp, #0x1c]
	ldr r6, _02257458 ; =0x02257A50
	sub r0, r1, r0
	lsl r1, r0, #3
	ldr r0, _02257458 ; =0x02257A50
	add r0, r0, r1
	ldr r1, [r6, r1]
	ldr r0, [r0, #4]
	ldr r6, _0225745C ; =0x04000298
	str r1, [r6, #0]
	add r1, r6, #0
	str r0, [r1, #4]
_0225741A:
	ldrh r0, [r4]
	tst r0, r3
	bne _0225741A
	ldr r0, _02257460 ; =0x040002A0
	ldr r0, [r0, #0]
	strh r0, [r5]
	add r5, r5, #2
_02257428:
	ldrh r0, [r4]
	tst r0, r2
	bne _02257428
	ldr r0, _02257464 ; =0x040002A8
	ldr r1, [sp, #0x18]
	ldr r6, [r0, #0]
	ldr r7, [r0, #4]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r1
	blt _022573F6
_02257440:
	mov r0, #0xd
	strh r0, [r5]
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225744C: .word 0x02257A58
_02257450: .word 0x04000280
_02257454: .word 0x04000290
_02257458: .word 0x02257A50
_0225745C: .word 0x04000298
_02257460: .word 0x040002A0
_02257464: .word 0x040002A8
	thumb_func_end ov28_0225726C

	thumb_func_start ov28_02257468
ov28_02257468: ; 0x02257468
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	lsl r5, r2, #3
	ldr r2, _02257494 ; =0x02257A50
	add r3, r2, r5
	ldr r2, [r2, r5]
	ldr r3, [r3, #4]
	bl _ull_div
	ldrb r2, [r4, #9]
	cmp r2, #1
	bne _02257490
	mov r2, #0
	mvn r2, r2
	add r3, r2, #0
	bl _ull_mul
_02257490:
	pop {r3, r4, r5, pc}
	nop
_02257494: .word 0x02257A50
	thumb_func_end ov28_02257468

	thumb_func_start ov28_02257498
ov28_02257498: ; 0x02257498
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r2, [sp]
	mov r0, #0xa
	ldr r5, [r2, #0]
	ldr r6, [r2, #4]
	mov r2, #0xa
	mov r1, #0
	mov r4, #1
	mov r3, #0
	sub r2, r5, r2
	mov ip, r6
	mov r2, ip
	sbc r2, r3
	blo _022574D2
	ldr r2, [sp]
	ldrb r7, [r2, #0xa]
_022574BA:
	add r4, r4, #1
	cmp r4, r7
	bhi _022574D2
	mov r2, #0xa
	mov r3, #0
	bl _ull_mul
	sub r2, r5, r0
	mov ip, r6
	mov r2, ip
	sbc r2, r1
	bhs _022574BA
_022574D2:
	ldr r0, [sp]
	ldrb r0, [r0, #8]
	cmp r4, r0
	bls _022574DE
	sub r4, r4, r0
	b _022574E0
_022574DE:
	mov r4, #1
_022574E0:
	ldr r0, [sp]
	ldrb r0, [r0, #9]
	add r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov28_02257498

	thumb_func_start ov28_022574E8
ov28_022574E8: ; 0x022574E8
	push {r4, lr}
	add r4, r0, #0
	bl ov28_02257498
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _022574FA
	add r1, r1, #1
	add r0, r0, r1
_022574FA:
	pop {r4, pc}
	thumb_func_end ov28_022574E8

	thumb_func_start ov28_022574FC
ov28_022574FC: ; 0x022574FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02257582
	ldr r5, _022575DC ; =0x04000280
	ldr r2, [r4, #0]
	add r3, r5, #0
	ldr r1, [r4, #4]
	mov r0, #1
	strh r0, [r5]
	add r3, #0x10
	str r2, [r3, #0]
	add r0, r5, #0
	str r1, [r3, #4]
	add r0, #0x18
	mov r2, #0xa
	mov r1, #0
	str r2, [r0, #0]
	str r1, [r0, #4]
	add r1, r4, #0
	mov ip, r0
	add r1, #8
	b _02257564
_0225752C:
	mov r0, #2
	lsl r0, r0, #0xe
_02257530:
	ldrh r2, [r5]
	tst r2, r0
	bne _02257530
	ldr r0, _022575E0 ; =0x040002A0
	ldr r2, _022575E0 ; =0x040002A0
	ldr r0, [r0, #0]
	ldr r2, [r2, #4]
	str r0, [r4, #0]
	str r2, [r4, #4]
	ldr r6, [r4, #0]
	mov r0, #1
	strh r0, [r5]
	str r6, [r3, #0]
	str r2, [r3, #4]
	mov r2, #0xa
	mov r0, ip
	str r2, [r0, #0]
	mov r2, #0
	mov r0, ip
	str r2, [r0, #4]
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02257582
_02257564:
	ldrh r2, [r5]
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r2
	bne _02257564
	ldr r0, _022575E4 ; =0x040002A8
	mov r7, #0
	ldr r6, [r0, #0]
	ldr r2, [r0, #4]
	mov r0, #0
	eor r0, r2
	add r2, r6, #0
	eor r2, r7
	orr r0, r2
	beq _0225752C
_02257582:
	add r0, r4, #0
	bl ov28_02257498
	ldrb r2, [r4, #8]
	cmp r2, #0
	beq _022575D8
	add r1, r2, #1
	add r1, r0, r1
	ldrb r0, [r4, #0xa]
	cmp r1, r0
	bls _022575D8
	sub r1, r1, r0
	cmp r1, r2
	bhi _022575D8
	ldr r5, [r4, #0]
	ldr r3, [r4, #4]
	ldr r0, _022575DC ; =0x04000280
	mov r2, #1
	strh r2, [r0]
	add r2, r0, #0
	add r2, #0x10
	str r5, [r2, #0]
	str r3, [r2, #4]
	ldr r2, _022575E8 ; =0x02257A50
	lsl r3, r1, #3
	ldr r5, [r2, r3]
	add r2, r0, #0
	add r2, #0x18
	mov r3, #0
	str r5, [r2, #0]
	str r3, [r2, #4]
	lsr r2, r0, #0xb
_022575C2:
	ldrh r3, [r0]
	tst r3, r2
	bne _022575C2
	ldr r0, _022575E0 ; =0x040002A0
	ldr r2, [r0, #0]
	ldr r0, [r0, #4]
	str r2, [r4, #0]
	str r0, [r4, #4]
	ldrb r0, [r4, #8]
	sub r0, r0, r1
	strb r0, [r4, #8]
_022575D8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022575DC: .word 0x04000280
_022575E0: .word 0x040002A0
_022575E4: .word 0x040002A8
_022575E8: .word 0x02257A50
	thumb_func_end ov28_022574FC

	thumb_func_start ov28_022575EC
ov28_022575EC: ; 0x022575EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	ldmia r6!, {r0, r1}
	add r5, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	add r4, r3, #0
	str r0, [r2, #0]
	ldmia r7!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r7, #0]
	str r0, [r2, #0]
	ldrb r1, [r5, #8]
	ldrb r0, [r4, #8]
	cmp r1, r0
	bhs _02257616
	add r0, r5, #0
	add r5, r4, #0
	add r4, r0, #0
_02257616:
	ldrb r3, [r5, #8]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	sub r2, r3, r2
	lsl r6, r2, #3
	ldr r2, _02257638 ; =0x02257A50
	add r3, r2, r6
	ldr r2, [r2, r6]
	ldr r3, [r3, #4]
	bl _ull_mul
	str r0, [r4, #0]
	str r1, [r4, #4]
	ldrb r0, [r5, #8]
	strb r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02257638: .word 0x02257A50
	thumb_func_end ov28_022575EC

	.rodata


	.global Unk_ov28_02257A50
Unk_ov28_02257A50: ; 0x02257A50
	.incbin "incbin/overlay28_rodata.bin", 0x414, 0x58

