	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov39_022561C0
ov39_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov39_022561D4
	ldr r1, _022561D0 ; =ov39_022562C8
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov39_022561D4
_022561D0: .word ov39_022562C8
	thumb_func_end ov39_022561C0

	thumb_func_start ov39_022561D4
ov39_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x38
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov39_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov39_0225628C
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
_02256218: .word ov39_0225628C
	thumb_func_end ov39_022561D4

	thumb_func_start ov39_0225621C
ov39_0225621C: ; 0x0225621C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x24
	add r1, r5, #4
	bl ov39_022563DC
	cmp r0, #0
	beq _0225625C
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	str r4, [r5, #0x28]
	mov r0, #8
	str r0, [sp]
	ldr r0, _02256260 ; =0x022565FC
	ldr r2, _02256264 ; =ov39_02256284
	mov r1, #6
	add r3, r5, #0
	bl ov25_02255ACC
	str r0, [r5, #0x2c]
	mov r1, #0
	str r1, [r5, #0x30]
	mov r0, #1
_02256250:
	add r1, r1, #1
	str r0, [r5, #8]
	add r5, r5, #4
	cmp r1, #6
	blt _02256250
	pop {r3, r4, r5, pc}
_0225625C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256260: .word 0x022565FC
_02256264: .word ov39_02256284
	thumb_func_end ov39_0225621C

	thumb_func_start ov39_02256268
ov39_02256268: ; 0x02256268
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02256276
	bl ov25_02255B34
_02256276:
	ldr r0, [r4, #0x24]
	bl ov39_0225640C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov39_02256268

	thumb_func_start ov39_02256284
ov39_02256284: ; 0x02256284
	str r1, [r3, #0x30]
	str r0, [r3, #0x34]
	bx lr
	; .align 2, 0
	thumb_func_end ov39_02256284

	thumb_func_start ov39_0225628C
ov39_0225628C: ; 0x0225628C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562C2
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _022562C4 ; =0x022565F0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562C2
	add r0, r4, #0
	bl ov39_02256268
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x28]
	bl ov25_02254260
_022562C2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022562C4: .word 0x022565F0
	thumb_func_end ov39_0225628C

	thumb_func_start ov39_022562C8
ov39_022562C8: ; 0x022562C8
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov39_022562C8

	thumb_func_start ov39_022562D0
ov39_022562D0: ; 0x022562D0
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562D8
	b _022562DA
_022562D8:
	mov r1, #2
_022562DA:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov39_022562D0

	thumb_func_start ov39_022562E4
ov39_022562E4: ; 0x022562E4
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562F4
	cmp r0, #1
	beq _02256304
	b _0225631E
_022562F4:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov39_02256418
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225631E
_02256304:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov39_0225643C
	cmp r0, #0
	beq _0225631E
	ldr r0, [r4, #0x28]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov39_022562D0
_0225631E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov39_022562E4

	thumb_func_start ov39_02256324
ov39_02256324: ; 0x02256324
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256338
	mov r1, #2
	bl ov39_022562D0
	mov r0, #0
	pop {r4, pc}
_02256338:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256344
	cmp r0, #1
	beq _02256376
	b _0225639A
_02256344:
	ldr r0, [r4, #0x30]
	cmp r0, #1
	bne _0225639A
	ldr r1, [r4, #0x34]
	lsl r0, r1, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0225636E
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl ov39_02256418
	ldr r0, _022563A0 ; =0x00000663
	bl ov25_02254424
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225639A
_0225636E:
	ldr r0, _022563A4 ; =0x0000066E
	bl ov25_02254424
	b _0225639A
_02256376:
	ldr r0, [r4, #0x30]
	cmp r0, #2
	bne _0225638A
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl ov39_02256418
	mov r0, #0
	strb r0, [r4, #1]
	b _0225639A
_0225638A:
	cmp r0, #3
	bne _0225639A
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl ov39_02256418
	mov r0, #0
	strb r0, [r4, #1]
_0225639A:
	mov r0, #0
	pop {r4, pc}
	nop
_022563A0: .word 0x00000663
_022563A4: .word 0x0000066E
	thumb_func_end ov39_02256324

	thumb_func_start ov39_022563A8
ov39_022563A8: ; 0x022563A8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563B8
	cmp r0, #1
	beq _022563C8
	b _022563D6
_022563B8:
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl ov39_02256418
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563D6
_022563C8:
	ldr r0, [r4, #0x24]
	bl ov39_02256448
	cmp r0, #0
	beq _022563D6
	mov r0, #1
	pop {r4, pc}
_022563D6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov39_022563A8

	.rodata


	.global Unk_ov39_022565F0
Unk_ov39_022565F0: ; 0x022565F0
	.incbin "incbin/overlay39_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov39_022565FC
Unk_ov39_022565FC: ; 0x022565FC
	.incbin "incbin/overlay39_rodata.bin", 0xC, 0x18

	.section .sinit, 4
	.word ov39_022561C0
