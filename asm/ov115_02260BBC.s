	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov115_02260BBC
ov115_02260BBC: ; 0x02260BBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x38
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x38
	bl sub_020D5124
	str r5, [r4, #0]
	str r6, [r4, #8]
	str r7, [r4, #0x30]
	mov r0, #1
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov115_02260BBC

	thumb_func_start ov115_02260BE4
ov115_02260BE4: ; 0x02260BE4
	ldr r3, _02260BE8 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02260BE8: .word sub_020181C4
	thumb_func_end ov115_02260BE4

	thumb_func_start ov115_02260BEC
ov115_02260BEC: ; 0x02260BEC
	push {r4, r5, r6, r7}
	ldr r2, [r0, #0]
	cmp r2, #0
	ble _02260BFE
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _02260BFE
	sub r1, r2, #1
	str r1, [r0, #0]
_02260BFE:
	ldr r1, [r0, #0]
	cmp r1, #0
	bgt _02260C0A
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_02260C0A:
	add r1, r0, #0
	add r1, #0x36
	ldrb r4, [r1]
	ldr r5, [r0, #0x30]
	ldr r2, [r5, #0]
	add r1, r4, #0
	add r3, r4, #0
	cmp r4, r2
	bhs _02260C36
	ldr r6, [r5, #4]
	mov r5, #0x18
	mul r5, r4
	ldrh r7, [r0, #0x34]
	add r6, r6, r5
_02260C26:
	ldr r5, [r6, #0]
	cmp r5, r7
	bge _02260C36
	add r1, r1, #1
	add r6, #0x18
	add r3, r1, #0
	cmp r1, r2
	blo _02260C26
_02260C36:
	cmp r3, r2
	bne _02260C3C
	sub r1, r1, #1
_02260C3C:
	cmp r1, r4
	beq _02260C4C
	add r2, r0, #0
	add r2, #0x36
	strb r1, [r2]
	mov r1, #1
	add r0, #0x37
	strb r1, [r0]
_02260C4C:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02260BEC

	thumb_func_start ov115_02260C54
ov115_02260C54: ; 0x02260C54
	add r0, #0x37
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02260C54

	thumb_func_start ov115_02260C5C
ov115_02260C5C: ; 0x02260C5C
	mov r1, #0
	add r0, #0x37
	strb r1, [r0]
	bx lr
	thumb_func_end ov115_02260C5C

	thumb_func_start ov115_02260C64
ov115_02260C64: ; 0x02260C64
	add r0, #0x36
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02260C64

	thumb_func_start ov115_02260C6C
ov115_02260C6C: ; 0x02260C6C
	ldrh r1, [r1, #2]
	cmp r1, #0
	beq _02260C78
	ldrh r1, [r0, #0x34]
	add r1, r1, #1
	strh r1, [r0, #0x34]
_02260C78:
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02260C6C

	thumb_func_start ov115_02260C7C
ov115_02260C7C: ; 0x02260C7C
	push {r3, r4}
	ldr r3, _02260CA0 ; =0x0001869F
	cmp r1, r3
	bls _02260C86
	add r1, r3, #0
_02260C86:
	mov r3, #1
	lsl r3, r2
	ldr r4, [r0, #0x1c]
	tst r4, r3
	bne _02260C9C
	lsl r2, r2, #2
	add r2, r0, r2
	str r1, [r2, #0xc]
	ldr r1, [r0, #0x1c]
	orr r1, r3
	str r1, [r0, #0x1c]
_02260C9C:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02260CA0: .word 0x0001869F
	thumb_func_end ov115_02260C7C

	thumb_func_start ov115_02260CA4
ov115_02260CA4: ; 0x02260CA4
	push {r4, lr}
	add r4, r0, #0
	bl ov115_02260CCC
	ldr r1, [r4, #8]
	cmp r0, r1
	blo _02260CB6
	mov r0, #1
	pop {r4, pc}
_02260CB6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov115_02260CA4

	thumb_func_start ov115_02260CBC
ov115_02260CBC: ; 0x02260CBC
	add r2, r0, #0
	add r3, r1, #0
	add r2, #0xc
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	bx lr
	thumb_func_end ov115_02260CBC

	thumb_func_start ov115_02260CCC
ov115_02260CCC: ; 0x02260CCC
	push {r3, r4}
	mov r3, #0
	ldr r4, [r0, #0x1c]
	add r2, r3, #0
	mov r0, #1
_02260CD6:
	add r1, r0, #0
	lsl r1, r2
	tst r1, r4
	beq _02260CE0
	add r3, r3, #1
_02260CE0:
	add r2, r2, #1
	cmp r2, #4
	blt _02260CD6
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov115_02260CCC