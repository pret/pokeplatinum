	.include "macros/function.inc"
	.include "include/ov37_022561C0.inc"

	

	.text


	thumb_func_start ov37_022561C0
ov37_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov37_022561D4
	ldr r1, _022561D0 ; =ov37_022562DC
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov37_022561D4
_022561D0: .word ov37_022562DC
	thumb_func_end ov37_022561C0

	thumb_func_start ov37_022561D4
ov37_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x1c
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov37_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov37_022562A0
	add r1, r4, #0
	mov r2, #1
	bl sub_0200D9E8
	cmp r0, #0
	beq _0225620C
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225620C:
	add r0, r4, #0
	bl sub_020181C4
_02256212:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256218: .word ov37_022562A0
	thumb_func_end ov37_022561D4

	thumb_func_start ov37_0225621C
ov37_0225621C: ; 0x0225621C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	add r1, sp, #4
	add r6, r2, #0
	bl PM_GetBackLight
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02256238
	mov r0, #1
	b _0225623A
_02256238:
	mov r0, #0
_0225623A:
	str r0, [r5, #4]
	add r0, r5, #0
	add r0, #8
	add r1, r5, #4
	add r2, r6, #0
	bl ov37_022563D4
	cmp r0, #0
	beq _02256272
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #8
	str r0, [sp]
	ldr r0, _02256278 ; =0x022565D4
	ldr r2, _0225627C ; =ov37_02256298
	mov r1, #2
	add r3, r5, #0
	bl ov25_02255ACC
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x14]
	add sp, #8
	str r4, [r5, #0xc]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256272:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256278: .word 0x022565D4
_0225627C: .word ov37_02256298
	thumb_func_end ov37_0225621C

	thumb_func_start ov37_02256280
ov37_02256280: ; 0x02256280
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ov25_02255B34
	ldr r0, [r4, #8]
	bl ov37_02256410
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov37_02256280

	thumb_func_start ov37_02256298
ov37_02256298: ; 0x02256298
	str r0, [r3, #0x18]
	str r1, [r3, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov37_02256298

	thumb_func_start ov37_022562A0
ov37_022562A0: ; 0x022562A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562D6
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _022562D8 ; =0x022565DC
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562D6
	add r0, r4, #0
	bl ov37_02256280
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0xc]
	bl ov25_02254260
_022562D6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022562D8: .word 0x022565DC
	thumb_func_end ov37_022562A0

	thumb_func_start ov37_022562DC
ov37_022562DC: ; 0x022562DC
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov37_022562DC

	thumb_func_start ov37_022562E4
ov37_022562E4: ; 0x022562E4
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562EC
	b _022562EE
_022562EC:
	mov r1, #2
_022562EE:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov37_022562E4

	thumb_func_start ov37_022562F8
ov37_022562F8: ; 0x022562F8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256308
	cmp r0, #1
	beq _02256318
	b _02256332
_02256308:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov37_02256488
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256332
_02256318:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov37_022564AC
	cmp r0, #0
	beq _02256332
	ldr r0, [r4, #0xc]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov37_022562E4
_02256332:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov37_022562F8

	thumb_func_start ov37_02256338
ov37_02256338: ; 0x02256338
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _0225634C
	mov r1, #2
	bl ov37_022562E4
	mov r0, #0
	pop {r4, pc}
_0225634C:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256358
	cmp r0, #1
	beq _0225638C
	b _0225639C
_02256358:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _0225639C
	ldr r1, [r4, #0x18]
	cmp r1, #0
	bne _0225636A
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02256374
_0225636A:
	cmp r1, #1
	bne _02256384
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02256384
_02256374:
	ldr r1, [r4, #4]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov37_02256488
_02256384:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225639C
_0225638C:
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov37_022564AC
	cmp r0, #0
	beq _0225639C
	mov r0, #0
	strb r0, [r4, #1]
_0225639C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov37_02256338

	thumb_func_start ov37_022563A0
ov37_022563A0: ; 0x022563A0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563B0
	cmp r0, #1
	beq _022563C0
	b _022563CE
_022563B0:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov37_02256488
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563CE
_022563C0:
	ldr r0, [r4, #8]
	bl ov37_022564B8
	cmp r0, #0
	beq _022563CE
	mov r0, #1
	pop {r4, pc}
_022563CE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov37_022563A0

	.rodata


	.global Unk_ov37_022565D4
Unk_ov37_022565D4: ; 0x022565D4
	.incbin "incbin/overlay37_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov37_022565DC
Unk_ov37_022565DC: ; 0x022565DC
	.incbin "incbin/overlay37_rodata.bin", 0x8, 0xC

	.section .sinit, 4
	.word ov37_022561C0
