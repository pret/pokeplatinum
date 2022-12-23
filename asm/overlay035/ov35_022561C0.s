	.include "macros/function.inc"
	.include "overlay035/ov35_022561C0.inc"

	

	.text


	thumb_func_start ov35_022561C0
ov35_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov35_022561D4
	ldr r1, _022561D0 ; =ov35_022562EC
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov35_022561D4
_022561D0: .word ov35_022562EC
	thumb_func_end ov35_022561C0

	thumb_func_start ov35_022561D4
ov35_022561D4: ; 0x022561D4
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
	bl ov35_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov35_022562B0
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
_02256218: .word ov35_022562B0
	thumb_func_end ov35_022561D4

	thumb_func_start ov35_0225621C
ov35_0225621C: ; 0x0225621C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #1
	add r1, r5, #0
	add r7, r2, #0
	add r4, r3, #0
	str r0, [r5, #0xc]
	add r0, r4, #0
	add r1, #8
	mov r2, #4
	bl sub_02099D7C
	cmp r0, #0
	bne _0225623E
	mov r0, #0
	str r0, [r5, #8]
_0225623E:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #8
	add r2, r7, #0
	str r4, [r5, #4]
	bl ov35_02256410
	cmp r0, #0
	beq _02256276
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #8
	str r0, [sp]
	ldr r0, _0225627C ; =0x02256720
	ldr r2, _02256280 ; =ov35_02256284
	mov r1, #1
	add r3, r5, #0
	bl ov25_02255ACC
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	str r6, [r5, #0x14]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256276:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225627C: .word 0x02256720
_02256280: .word ov35_02256284
	thumb_func_end ov35_0225621C

	thumb_func_start ov35_02256284
ov35_02256284: ; 0x02256284
	cmp r0, #0
	bne _0225628A
	str r1, [r3, #0x1c]
_0225628A:
	bx lr
	thumb_func_end ov35_02256284

	thumb_func_start ov35_0225628C
ov35_0225628C: ; 0x0225628C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #8
	mov r2, #4
	bl sub_02099D54
	ldr r0, [r4, #0x18]
	bl ov25_02255B34
	ldr r0, [r4, #0x10]
	bl ov35_0225644C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov35_0225628C

	thumb_func_start ov35_022562B0
ov35_022562B0: ; 0x022562B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562E6
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _022562E8 ; =0x02256724
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562E6
	add r0, r4, #0
	bl ov35_0225628C
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x14]
	bl ov25_02254260
_022562E6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022562E8: .word 0x02256724
	thumb_func_end ov35_022562B0

	thumb_func_start ov35_022562EC
ov35_022562EC: ; 0x022562EC
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov35_022562EC

	thumb_func_start ov35_022562F4
ov35_022562F4: ; 0x022562F4
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562FC
	b _022562FE
_022562FC:
	mov r1, #2
_022562FE:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov35_022562F4

	thumb_func_start ov35_02256308
ov35_02256308: ; 0x02256308
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256318
	cmp r0, #1
	beq _02256328
	b _02256342
_02256318:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ov35_02256548
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256342
_02256328:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ov35_0225656C
	cmp r0, #0
	beq _02256342
	ldr r0, [r4, #0x14]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov35_022562F4
_02256342:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov35_02256308

	thumb_func_start ov35_02256348
ov35_02256348: ; 0x02256348
	push {r4, lr}
	add r4, r0, #0
	ldrb r2, [r4, #2]
	add r1, r4, #0
	add r1, #8
	cmp r2, #0
	beq _02256360
	mov r1, #2
	bl ov35_022562F4
	mov r0, #0
	pop {r4, pc}
_02256360:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225636C
	cmp r0, #1
	beq _0225638A
	b _022563D2
_0225636C:
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _022563D2
	mov r0, #0
	str r0, [r1, #4]
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl ov35_02256548
	mov r0, #0
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563D2
_0225638A:
	ldr r0, [r4, #0x1c]
	cmp r0, #2
	bne _022563A4
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl ov35_02256548
	mov r0, #0
	str r0, [r4, #0x1c]
	strb r0, [r4, #1]
	b _022563D2
_022563A4:
	cmp r0, #3
	bne _022563D2
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, [r1, #0]
	add r2, r0, #1
	ldr r0, _022563D8 ; =0x0000270F
	str r2, [r1, #0]
	cmp r2, r0
	bls _022563BC
	mov r0, #0
	str r0, [r1, #0]
_022563BC:
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl ov35_02256548
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl ov35_02256548
	mov r0, #0
	str r0, [r4, #0x1c]
	strb r0, [r4, #1]
_022563D2:
	mov r0, #0
	pop {r4, pc}
	nop
_022563D8: .word 0x0000270F
	thumb_func_end ov35_02256348

	thumb_func_start ov35_022563DC
ov35_022563DC: ; 0x022563DC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563EC
	cmp r0, #1
	beq _022563FC
	b _0225640A
_022563EC:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov35_02256548
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225640A
_022563FC:
	ldr r0, [r4, #0x10]
	bl ov35_02256578
	cmp r0, #0
	beq _0225640A
	mov r0, #1
	pop {r4, pc}
_0225640A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov35_022563DC

	.rodata


	.global Unk_ov35_02256720
Unk_ov35_02256720: ; 0x02256720
	.incbin "incbin/overlay35_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov35_02256724
Unk_ov35_02256724: ; 0x02256724
	.incbin "incbin/overlay35_rodata.bin", 0x4, 0xC

	.section .sinit, 4
	.word ov35_022561C0
