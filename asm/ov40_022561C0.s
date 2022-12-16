	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov40_022561C0
ov40_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov40_022561D4
	ldr r1, _022561D0 ; =ov40_022562A4
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov40_022561D4
_022561D0: .word ov40_022562A4
	thumb_func_end ov40_022561C0

	thumb_func_start ov40_022561D4
ov40_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x34
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov40_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov40_02256270
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
_02256218: .word ov40_02256270
	thumb_func_end ov40_022561D4

	thumb_func_start ov40_0225621C
ov40_0225621C: ; 0x0225621C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl ov25_02254544
	bl sub_02026310
	str r0, [r5, #0x30]
	ldr r1, [r5, #0x30]
	add r0, r5, #4
	bl ov40_022563D0
	add r0, r5, #0
	add r0, #0x28
	add r1, r5, #4
	add r2, r6, #0
	bl ov40_0225645C
	cmp r0, #0
	beq _02256256
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	str r4, [r5, #0x2c]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256256:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov40_0225621C

	thumb_func_start ov40_0225625C
ov40_0225625C: ; 0x0225625C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov40_022564B8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov40_0225625C

	thumb_func_start ov40_02256270
ov40_02256270: ; 0x02256270
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #3
	bhs _0225629C
	lsl r2, r1, #2
	ldr r1, _022562A0 ; =0x02256A38
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0225629C
	add r0, r4, #0
	bl ov40_0225625C
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x2c]
	bl ov25_02254260
_0225629C:
	pop {r3, r4, r5, pc}
	nop
_022562A0: .word 0x02256A38
	thumb_func_end ov40_02256270

	thumb_func_start ov40_022562A4
ov40_022562A4: ; 0x022562A4
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov40_022562A4

	thumb_func_start ov40_022562AC
ov40_022562AC: ; 0x022562AC
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562B4
	b _022562B6
_022562B4:
	mov r1, #2
_022562B6:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov40_022562AC

	thumb_func_start ov40_022562C0
ov40_022562C0: ; 0x022562C0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562D0
	cmp r0, #1
	beq _022562E0
	b _022562FA
_022562D0:
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl ov40_022565C8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022562FA
_022562E0:
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl ov40_022565EC
	cmp r0, #0
	beq _022562FA
	ldr r0, [r4, #0x2c]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov40_022562AC
_022562FA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov40_022562C0

	thumb_func_start ov40_02256300
ov40_02256300: ; 0x02256300
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256314
	mov r1, #2
	bl ov40_022562AC
	mov r0, #0
	pop {r4, pc}
_02256314:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _02256320
	cmp r1, #1
	beq _02256340
	b _02256350
_02256320:
	bl ov40_02256388
	cmp r0, #0
	beq _02256350
	ldr r1, [r4, #0x30]
	add r0, r4, #4
	bl ov40_022563D0
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl ov40_022565C8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256350
_02256340:
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl ov40_022565EC
	cmp r0, #0
	beq _02256350
	mov r0, #0
	strb r0, [r4, #1]
_02256350:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov40_02256300

	thumb_func_start ov40_02256354
ov40_02256354: ; 0x02256354
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256364
	cmp r0, #1
	beq _02256374
	b _02256382
_02256364:
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ov40_022565C8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256382
_02256374:
	ldr r0, [r4, #0x28]
	bl ov40_022565F8
	cmp r0, #0
	beq _02256382
	mov r0, #1
	pop {r4, pc}
_02256382:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov40_02256354

	thumb_func_start ov40_02256388
ov40_02256388: ; 0x02256388
	push {r3, lr}
	sub sp, #8
	ldr r0, [r0, #0x2c]
	bl ov25_0225450C
	cmp r0, #0
	bne _022563C8
	add r0, sp, #4
	add r1, sp, #0
	bl sub_020227C0
	cmp r0, #0
	beq _022563C8
	ldr r0, [sp, #4]
	sub r0, #0x10
	cmp r0, #0xbf
	bhs _022563AE
	mov r1, #1
	b _022563B0
_022563AE:
	mov r1, #0
_022563B0:
	ldr r0, [sp]
	sub r0, #0x10
	cmp r0, #0x9f
	bhs _022563BC
	mov r0, #1
	b _022563BE
_022563BC:
	mov r0, #0
_022563BE:
	tst r0, r1
	beq _022563C8
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_022563C8:
	mov r0, #0
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov40_02256388

	thumb_func_start ov40_022563D0
ov40_022563D0: ; 0x022563D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r0, r1, #0
	str r1, [sp, #4]
	bl ov5_021E6238
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, [sp, #4]
	bl sub_02026234
	ldr r1, [sp]
	mov r7, #0
	strb r0, [r1, #1]
	add r0, r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	ble _02256456
	add r5, r1, #0
	add r6, r1, #0
_022563FA:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_02026218
	str r0, [sp, #8]
	bl sub_02026220
	add r4, r0, #0
	bl sub_02073D20
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02079D40
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	strh r0, [r6, #0x1c]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	strh r0, [r6, #0x20]
	ldr r0, [sp, #8]
	bl ov5_021E6590
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_02075D74
	str r0, [r5, #0x14]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_02073D48
	ldr r0, [sp]
	add r7, r7, #1
	ldrb r0, [r0]
	add r5, r5, #4
	add r6, r6, #2
	cmp r7, r0
	blt _022563FA
_02256456:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov40_022563D0

	.rodata


	.global Unk_ov40_02256A38
Unk_ov40_02256A38: ; 0x02256A38
	.incbin "incbin/overlay40_rodata.bin", 0x0, 0xC

	.section .sinit, 4
	.word ov40_022561C0
