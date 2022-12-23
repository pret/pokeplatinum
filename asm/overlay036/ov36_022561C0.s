	.include "macros/function.inc"
	.include "overlay036/ov36_022561C0.inc"

	

	.text


	thumb_func_start ov36_022561C0
ov36_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov36_022561D4
	ldr r1, _022561D0 ; =ov36_022562D4
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov36_022561D4
_022561D0: .word ov36_022562D4
	thumb_func_end ov36_022561C0

	thumb_func_start ov36_022561D4
ov36_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x20
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov36_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov36_02256298
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
_02256218: .word ov36_02256298
	thumb_func_end ov36_022561D4

	thumb_func_start ov36_0225621C
ov36_0225621C: ; 0x0225621C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	str r1, [r5, #0x10]
	add r0, r1, #0
	add r4, r2, #0
	bl ov25_02254540
	str r0, [r5, #0x1c]
	mov r0, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0x1c]
	bl sub_020568C8
	str r0, [r5, #4]
	add r0, r5, #0
	add r0, #0xc
	add r1, r5, #4
	add r2, r4, #0
	bl ov36_02256404
	cmp r0, #0
	beq _0225626A
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #8
	str r0, [sp]
	ldr r0, _02256270 ; =0x02256718
	ldr r2, _02256274 ; =ov36_02256278
	mov r1, #1
	add r3, r5, #0
	bl ov25_02255ACC
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225626A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02256270: .word 0x02256718
_02256274: .word ov36_02256278
	thumb_func_end ov36_0225621C

	thumb_func_start ov36_02256278
ov36_02256278: ; 0x02256278
	cmp r0, #0
	bne _0225627E
	str r1, [r3, #0x18]
_0225627E:
	bx lr
	thumb_func_end ov36_02256278

	thumb_func_start ov36_02256280
ov36_02256280: ; 0x02256280
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ov25_02255B34
	ldr r0, [r4, #0xc]
	bl ov36_02256440
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov36_02256280

	thumb_func_start ov36_02256298
ov36_02256298: ; 0x02256298
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562CE
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _022562D0 ; =0x0225671C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562CE
	add r0, r4, #0
	bl ov36_02256280
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x10]
	bl ov25_02254260
_022562CE:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022562D0: .word 0x0225671C
	thumb_func_end ov36_02256298

	thumb_func_start ov36_022562D4
ov36_022562D4: ; 0x022562D4
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov36_022562D4

	thumb_func_start ov36_022562DC
ov36_022562DC: ; 0x022562DC
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562E4
	b _022562E6
_022562E4:
	mov r1, #2
_022562E6:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov36_022562DC

	thumb_func_start ov36_022562F0
ov36_022562F0: ; 0x022562F0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256300
	cmp r0, #1
	beq _02256310
	b _0225632A
_02256300:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov36_0225653C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225632A
_02256310:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov36_02256560
	cmp r0, #0
	beq _0225632A
	ldr r0, [r4, #0x10]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov36_022562DC
_0225632A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov36_022562F0

	thumb_func_start ov36_02256330
ov36_02256330: ; 0x02256330
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256344
	mov r1, #2
	bl ov36_022562DC
	mov r0, #0
	pop {r4, pc}
_02256344:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256350
	cmp r0, #1
	beq _0225638A
	b _022563CC
_02256350:
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0225636E
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ov36_0225653C
	mov r0, #0
	str r0, [r4, #0x18]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563CC
_0225636E:
	ldr r0, [r4, #0x10]
	bl ov25_02254538
	cmp r0, #0
	beq _022563CC
	ldr r0, [r4, #0x1c]
	bl sub_020568C8
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl ov36_0225653C
	b _022563CC
_0225638A:
	ldr r0, [r4, #0x18]
	cmp r0, #2
	bne _022563A4
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ov36_0225653C
	mov r0, #0
	str r0, [r4, #0x18]
	strb r0, [r4, #1]
	b _022563CC
_022563A4:
	cmp r0, #3
	bne _022563CC
	mov r0, #1
	str r0, [r4, #8]
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_020568CC
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ov36_0225653C
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl ov36_0225653C
	mov r0, #0
	str r0, [r4, #0x18]
	strb r0, [r4, #1]
_022563CC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov36_02256330

	thumb_func_start ov36_022563D0
ov36_022563D0: ; 0x022563D0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563E0
	cmp r0, #1
	beq _022563F0
	b _022563FE
_022563E0:
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov36_0225653C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563FE
_022563F0:
	ldr r0, [r4, #0xc]
	bl ov36_0225656C
	cmp r0, #0
	beq _022563FE
	mov r0, #1
	pop {r4, pc}
_022563FE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov36_022563D0

	.rodata


	.global Unk_ov36_02256718
Unk_ov36_02256718: ; 0x02256718
	.incbin "incbin/overlay36_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov36_0225671C
Unk_ov36_0225671C: ; 0x0225671C
	.incbin "incbin/overlay36_rodata.bin", 0x4, 0xC

	.section .sinit, 4
	.word ov36_022561C0
