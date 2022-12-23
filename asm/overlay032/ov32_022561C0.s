	.include "macros/function.inc"
	.include "overlay032/ov32_022561C0.inc"

	

	.text


	thumb_func_start ov32_022561C0
ov32_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov32_022561D4
	ldr r1, _022561D0 ; =ov32_022562AC
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov32_022561D4
_022561D0: .word ov32_022562AC
	thumb_func_end ov32_022561C0

	thumb_func_start ov32_022561D4
ov32_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x7c
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov32_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov32_02256278
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
_02256218: .word ov32_02256278
	thumb_func_end ov32_022561D4

	thumb_func_start ov32_0225621C
ov32_0225621C: ; 0x0225621C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x74
	add r1, r5, #4
	bl ov32_02256470
	cmp r0, #0
	beq _02256260
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	add r0, r4, #0
	bl ov25_02254544
	bl sub_0207A268
	add r1, r0, #0
	add r0, r5, #4
	bl ov32_022563C8
	add r0, r5, #0
	mov r1, #0
	add r0, #0x68
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x6a
	strh r1, [r0]
	str r1, [r5, #0x6c]
	str r1, [r5, #0x70]
	str r4, [r5, #0x78]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02256260:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov32_0225621C

	thumb_func_start ov32_02256264
ov32_02256264: ; 0x02256264
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x74]
	bl ov32_02256508
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov32_02256264

	thumb_func_start ov32_02256278
ov32_02256278: ; 0x02256278
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #3
	bhs _022562A4
	lsl r2, r1, #2
	ldr r1, _022562A8 ; =0x02256CC0
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562A4
	add r0, r4, #0
	bl ov32_02256264
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x78]
	bl ov25_02254260
_022562A4:
	pop {r3, r4, r5, pc}
	nop
_022562A8: .word 0x02256CC0
	thumb_func_end ov32_02256278

	thumb_func_start ov32_022562AC
ov32_022562AC: ; 0x022562AC
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov32_022562AC

	thumb_func_start ov32_022562B4
ov32_022562B4: ; 0x022562B4
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562BC
	b _022562BE
_022562BC:
	mov r1, #2
_022562BE:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov32_022562B4

	thumb_func_start ov32_022562C8
ov32_022562C8: ; 0x022562C8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562D8
	cmp r0, #1
	beq _022562E8
	b _02256302
_022562D8:
	ldr r0, [r4, #0x74]
	mov r1, #0
	bl ov32_02256538
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256302
_022562E8:
	ldr r0, [r4, #0x74]
	mov r1, #0
	bl ov32_0225655C
	cmp r0, #0
	beq _02256302
	ldr r0, [r4, #0x78]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov32_022562B4
_02256302:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov32_022562C8

	thumb_func_start ov32_02256308
ov32_02256308: ; 0x02256308
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _0225631C
	mov r1, #2
	bl ov32_022562B4
	mov r0, #0
	pop {r4, pc}
_0225631C:
	ldr r0, [r4, #0x74]
	mov r1, #2
	bl ov32_0225655C
	cmp r0, #0
	beq _02256386
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x6c
	add r1, #0x70
	bl ov25_0225446C
	add r1, r4, #0
	add r1, #0x68
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x68
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256386
	bl sub_02022798
	add r1, r4, #0
	add r1, #0x6a
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256382
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x70]
	ldr r2, [r4, #4]
	bl ov32_02256B78
	ldr r1, [r4, #4]
	cmp r0, r1
	blo _02256382
	ldr r0, [r4, #0x78]
	bl ov25_02254544
	bl sub_0207A268
	add r1, r0, #0
	add r0, r4, #4
	bl ov32_022563C8
	ldr r0, [r4, #0x74]
	mov r1, #2
	bl ov32_02256538
_02256382:
	mov r0, #0
	pop {r4, pc}
_02256386:
	mov r0, #0
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	add r4, #0x6a
	strh r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov32_02256308

	thumb_func_start ov32_02256394
ov32_02256394: ; 0x02256394
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563A4
	cmp r0, #1
	beq _022563B4
	b _022563C2
_022563A4:
	ldr r0, [r4, #0x74]
	mov r1, #1
	bl ov32_02256538
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563C2
_022563B4:
	ldr r0, [r4, #0x74]
	bl ov32_02256568
	cmp r0, #0
	beq _022563C2
	mov r0, #1
	pop {r4, pc}
_022563C2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov32_02256394

	thumb_func_start ov32_022563C8
ov32_022563C8: ; 0x022563C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, r1, #0
	str r1, [sp, #4]
	bl sub_0207A0F8
	ldr r1, [sp]
	mov r6, #0
	str r0, [r1, #0]
	cmp r0, #0
	ble _0225646C
	add r5, r1, #0
_022563E2:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0207A0FC
	add r4, r0, #0
	bl sub_02073C88
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02079D40
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #8]
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0xa]
	add r0, r4, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0xc]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0xe]
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0225643C
	mov r0, #1
	b _0225643E
_0225643C:
	mov r0, #0
_0225643E:
	strh r0, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #0x12]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #0x13]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02073CD4
	ldr r0, [sp]
	add r6, r6, #1
	ldr r0, [r0, #0]
	add r5, #0x10
	cmp r6, r0
	blt _022563E2
_0225646C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov32_022563C8

	.rodata


	.global Unk_ov32_02256CC0
Unk_ov32_02256CC0: ; 0x02256CC0
	.incbin "incbin/overlay32_rodata.bin", 0x0, 0xC

	.section .sinit, 4
	.word ov32_022561C0
