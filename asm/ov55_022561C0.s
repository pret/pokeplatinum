	.include "macros/function.inc"
	.include "include/ov55_022561C0.inc"

	

	.text


	thumb_func_start ov55_022561C0
ov55_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov55_022561D4
	ldr r1, _022561D0 ; =ov55_02256288
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov55_022561D4
_022561D0: .word ov55_02256288
	thumb_func_end ov55_022561C0

	thumb_func_start ov55_022561D4
ov55_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #8
	mov r1, #0x10
	str r2, [sp]
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	beq _02256214
	ldr r2, [sp]
	add r1, r7, #0
	add r3, r5, #0
	bl ov55_0225621C
	cmp r0, #0
	beq _0225620E
	ldr r0, _02256218 ; =ov55_02256254
	add r1, r4, #0
	mov r2, #1
	bl sub_0200D9E8
	cmp r0, #0
	beq _0225620E
	str r4, [r6, #0]
	str r5, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225620E:
	add r0, r4, #0
	bl sub_020181C4
_02256214:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256218: .word ov55_02256254
	thumb_func_end ov55_022561D4

	thumb_func_start ov55_0225621C
ov55_0225621C: ; 0x0225621C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #8
	add r1, r5, #4
	bl ov55_0225632C
	cmp r0, #0
	beq _0225623C
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	str r4, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225623C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov55_0225621C

	thumb_func_start ov55_02256240
ov55_02256240: ; 0x02256240
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ov55_02256360
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov55_02256240

	thumb_func_start ov55_02256254
ov55_02256254: ; 0x02256254
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #3
	bhs _02256280
	lsl r2, r1, #2
	ldr r1, _02256284 ; =0x02256484
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256280
	add r0, r4, #0
	bl ov55_02256240
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0xc]
	bl ov25_02254260
_02256280:
	pop {r3, r4, r5, pc}
	nop
_02256284: .word 0x02256484
	thumb_func_end ov55_02256254

	thumb_func_start ov55_02256288
ov55_02256288: ; 0x02256288
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov55_02256288

	thumb_func_start ov55_02256290
ov55_02256290: ; 0x02256290
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256298
	b _0225629A
_02256298:
	mov r1, #2
_0225629A:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov55_02256290

	thumb_func_start ov55_022562A4
ov55_022562A4: ; 0x022562A4
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562B4
	cmp r0, #1
	beq _022562C4
	b _022562DE
_022562B4:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov55_02256378
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022562DE
_022562C4:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov55_0225639C
	cmp r0, #0
	beq _022562DE
	ldr r0, [r4, #0xc]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov55_02256290
_022562DE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov55_022562A4

	thumb_func_start ov55_022562E4
ov55_022562E4: ; 0x022562E4
	push {r3, lr}
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq _022562F2
	mov r1, #2
	bl ov55_02256290
_022562F2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov55_022562E4

	thumb_func_start ov55_022562F8
ov55_022562F8: ; 0x022562F8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256308
	cmp r0, #1
	beq _02256318
	b _02256326
_02256308:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov55_02256378
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256326
_02256318:
	ldr r0, [r4, #8]
	bl ov55_022563A8
	cmp r0, #0
	beq _02256326
	mov r0, #1
	pop {r4, pc}
_02256326:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov55_022562F8

	.rodata


	.global Unk_ov55_02256484
Unk_ov55_02256484: ; 0x02256484
	.incbin "incbin/overlay55_rodata.bin", 0x0, 0xC

	.section .sinit, 4
	.word ov55_022561C0
