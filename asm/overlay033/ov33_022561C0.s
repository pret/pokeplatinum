	.include "macros/function.inc"
	.include "overlay033/ov33_022561C0.inc"

	

	.text


	thumb_func_start ov33_022561C0
ov33_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov33_022561D4
	ldr r1, _022561D0 ; =ov33_02256374
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov33_022561D4
_022561D0: .word ov33_02256374
	thumb_func_end ov33_022561C0

	thumb_func_start ov33_022561D4
ov33_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x64
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov33_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov33_02256340
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
_02256218: .word ov33_02256340
	thumb_func_end ov33_022561D4

	thumb_func_start ov33_0225621C
ov33_0225621C: ; 0x0225621C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r4, r1, #0
	add r0, #0x5c
	add r1, r7, #4
	bl ov33_02256474
	cmp r0, #0
	beq _02256306
	mov r0, #0
	strb r0, [r7]
	strb r0, [r7, #1]
	strb r0, [r7, #2]
	str r4, [r7, #0x60]
	bl sub_020245A4
	bl sub_0207A268
	mov r1, #0
	str r0, [sp, #4]
	str r1, [sp]
	bl sub_0207A0F8
	mov r6, #0
	str r0, [r7, #4]
	cmp r0, #0
	ble _022562EA
	add r4, r7, #0
_02256256:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _022562E2
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_02079D40
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	bl ov33_0225630C
	cmp r0, #6
	bhi _022562C4
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022562AA: ; jump table
	.short _022562B8 - _022562AA - 2 ; case 0
	.short _022562B8 - _022562AA - 2 ; case 1
	.short _022562B8 - _022562AA - 2 ; case 2
	.short _022562C4 - _022562AA - 2 ; case 3
	.short _022562CE - _022562AA - 2 ; case 4
	.short _022562CE - _022562AA - 2 ; case 5
	.short _022562CE - _022562AA - 2 ; case 6
_022562B8:
	mov r1, #1
	strb r1, [r4, #0x12]
	mov r1, #3
	sub r0, r1, r0
	strb r0, [r4, #0x13]
	b _022562DA
_022562C4:
	mov r0, #2
	strb r0, [r4, #0x12]
	mov r0, #0
	strb r0, [r4, #0x13]
	b _022562DA
_022562CE:
	mov r1, #0
	strb r1, [r4, #0x12]
	mov r1, #3
	sub r0, r1, r0
	neg r0, r0
	strb r0, [r4, #0x13]
_022562DA:
	ldr r0, [sp]
	add r4, #0xc
	add r0, r0, #1
	str r0, [sp]
_022562E2:
	ldr r0, [r7, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _02256256
_022562EA:
	ldr r0, [sp]
	mov r1, #0
	str r0, [r7, #4]
	add r0, r7, #0
	add r0, #0x50
	strh r1, [r0]
	add r0, r7, #0
	add r0, #0x52
	strh r1, [r0]
	str r1, [r7, #0x54]
	add sp, #8
	str r1, [r7, #0x58]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256306:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov33_0225621C

	thumb_func_start ov33_0225630C
ov33_0225630C: ; 0x0225630C
	ldr r3, _02256328 ; =0x022577FC
	mov r2, #0
_02256310:
	ldrb r1, [r3]
	cmp r0, r1
	bhs _0225631A
	add r0, r2, #0
	bx lr
_0225631A:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #6
	blo _02256310
	mov r0, #6
	bx lr
	nop
_02256328: .word 0x022577FC
	thumb_func_end ov33_0225630C

	thumb_func_start ov33_0225632C
ov33_0225632C: ; 0x0225632C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl ov33_022564F0
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov33_0225632C

	thumb_func_start ov33_02256340
ov33_02256340: ; 0x02256340
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #3
	bhs _0225636C
	lsl r2, r1, #2
	ldr r1, _02256370 ; =0x02257804
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0225636C
	add r0, r4, #0
	bl ov33_0225632C
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x60]
	bl ov25_02254260
_0225636C:
	pop {r3, r4, r5, pc}
	nop
_02256370: .word 0x02257804
	thumb_func_end ov33_02256340

	thumb_func_start ov33_02256374
ov33_02256374: ; 0x02256374
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov33_02256374

	thumb_func_start ov33_0225637C
ov33_0225637C: ; 0x0225637C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256384
	b _02256386
_02256384:
	mov r1, #2
_02256386:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov33_0225637C

	thumb_func_start ov33_02256390
ov33_02256390: ; 0x02256390
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563A0
	cmp r0, #1
	beq _022563B0
	b _022563CA
_022563A0:
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl ov33_02256548
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563CA
_022563B0:
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl ov33_0225656C
	cmp r0, #0
	beq _022563CA
	ldr r0, [r4, #0x60]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov33_0225637C
_022563CA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov33_02256390

	thumb_func_start ov33_022563D0
ov33_022563D0: ; 0x022563D0
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _022563E4
	mov r1, #2
	bl ov33_0225637C
	mov r0, #0
	pop {r4, pc}
_022563E4:
	add r1, r4, #0
	add r0, #0x54
	add r1, #0x58
	bl ov25_0225446C
	add r1, r4, #0
	add r1, #0x50
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256432
	ldr r0, [r4, #0x54]
	sub r0, #0x10
	cmp r0, #0xbf
	bhs _0225640A
	mov r1, #1
	b _0225640C
_0225640A:
	mov r1, #0
_0225640C:
	ldr r0, [r4, #0x58]
	sub r0, #0x10
	cmp r0, #0x9f
	bhs _02256418
	mov r0, #1
	b _0225641A
_02256418:
	mov r0, #0
_0225641A:
	tst r0, r1
	beq _0225642A
	bl sub_02022798
	add r4, #0x52
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
_0225642A:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
_02256432:
	mov r0, #0
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	add r4, #0x52
	strh r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov33_022563D0

	thumb_func_start ov33_02256440
ov33_02256440: ; 0x02256440
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256450
	cmp r0, #1
	beq _02256460
	b _0225646E
_02256450:
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl ov33_02256548
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225646E
_02256460:
	ldr r0, [r4, #0x5c]
	bl ov33_02256578
	cmp r0, #0
	beq _0225646E
	mov r0, #1
	pop {r4, pc}
_0225646E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov33_02256440

	.rodata


	.global Unk_ov33_022577FC
Unk_ov33_022577FC: ; 0x022577FC
	.incbin "incbin/overlay33_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov33_02257804
Unk_ov33_02257804: ; 0x02257804
	.incbin "incbin/overlay33_rodata.bin", 0x8, 0xC

	.section .sinit, 4
	.word ov33_022561C0
