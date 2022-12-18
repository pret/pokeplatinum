	.include "macros/function.inc"
	.include "include/ov34_022561C0.inc"

	

	.text


	thumb_func_start ov34_022561C0
ov34_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov34_022561D4
	ldr r1, _022561D0 ; =ov34_02256294
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov34_022561D4
_022561D0: .word ov34_02256294
	thumb_func_end ov34_022561C0

	thumb_func_start ov34_022561D4
ov34_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x54
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov34_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov34_02256260
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
_02256218: .word ov34_02256260
	thumb_func_end ov34_022561D4

	thumb_func_start ov34_0225621C
ov34_0225621C: ; 0x0225621C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x48
	add r1, r5, #4
	bl ov34_02256540
	cmp r0, #0
	beq _0225623E
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	str r0, [r5, #0x50]
	str r4, [r5, #0x4c]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225623E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov34_0225621C

	thumb_func_start ov34_02256244
ov34_02256244: ; 0x02256244
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _02256252
	bl sub_020181C4
_02256252:
	ldr r0, [r4, #0x48]
	bl ov34_02256604
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov34_02256244

	thumb_func_start ov34_02256260
ov34_02256260: ; 0x02256260
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #3
	bhs _0225628C
	lsl r2, r1, #2
	ldr r1, _02256290 ; =0x02256A1C
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0225628C
	add r0, r4, #0
	bl ov34_02256244
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x4c]
	bl ov25_02254260
_0225628C:
	pop {r3, r4, r5, pc}
	nop
_02256290: .word 0x02256A1C
	thumb_func_end ov34_02256260

	thumb_func_start ov34_02256294
ov34_02256294: ; 0x02256294
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov34_02256294

	thumb_func_start ov34_0225629C
ov34_0225629C: ; 0x0225629C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562A4
	b _022562A6
_022562A4:
	mov r1, #2
_022562A6:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov34_0225629C

	thumb_func_start ov34_022562B0
ov34_022562B0: ; 0x022562B0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562C0
	cmp r0, #1
	beq _022562D0
	b _022562EA
_022562C0:
	ldr r0, [r4, #0x48]
	mov r1, #0
	bl ov34_02256640
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022562EA
_022562D0:
	ldr r0, [r4, #0x48]
	mov r1, #0
	bl ov34_02256664
	cmp r0, #0
	beq _022562EA
	ldr r0, [r4, #0x4c]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov34_0225629C
_022562EA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov34_022562B0

	thumb_func_start ov34_022562F0
ov34_022562F0: ; 0x022562F0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256310
	ldr r0, [r4, #0x48]
	bl ov34_02256A0C
	add r0, r4, #0
	mov r1, #2
	bl ov34_0225629C
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_02256310:
	ldrb r1, [r4, #1]
	cmp r1, #3
	bhi _022563DA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02256322: ; jump table
	.short _0225632A - _02256322 - 2 ; case 0
	.short _02256354 - _02256322 - 2 ; case 1
	.short _022563AA - _02256322 - 2 ; case 2
	.short _022563BC - _02256322 - 2 ; case 3
_0225632A:
	add r1, sp, #4
	add r2, sp, #0
	bl ov34_022563E4
	cmp r0, #0
	beq _022563DA
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl ov34_02256428
	ldr r0, _022563E0 ; =0x00000668
	bl ov25_02254424
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl ov34_02256640
	mov r0, #1
	strb r0, [r4, #1]
	b _022563DA
_02256354:
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl ov34_02256664
	cmp r0, #0
	beq _02256366
	mov r0, #0
	strb r0, [r4, #1]
	b _022563DA
_02256366:
	ldr r0, [r4, #0x4c]
	bl ov25_02254534
	cmp r0, #1
	beq _0225637A
	ldr r0, [r4, #0x4c]
	bl ov25_0225450C
	cmp r0, #0
	beq _02256386
_0225637A:
	ldr r0, [r4, #0x48]
	bl ov34_02256A0C
	mov r0, #2
	strb r0, [r4, #1]
	b _022563DA
_02256386:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov34_022563E4
	cmp r0, #0
	beq _022563DA
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl ov34_02256428
	ldr r0, [r4, #0x48]
	bl ov34_02256A0C
	mov r0, #3
	strb r0, [r4, #1]
	b _022563DA
_022563AA:
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl ov34_02256664
	cmp r0, #0
	beq _022563DA
	mov r0, #0
	strb r0, [r4, #1]
	b _022563DA
_022563BC:
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl ov34_02256664
	cmp r0, #0
	beq _022563DA
	ldr r0, _022563E0 ; =0x00000668
	bl ov25_02254424
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl ov34_02256640
	mov r0, #1
	strb r0, [r4, #1]
_022563DA:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_022563E0: .word 0x00000668
	thumb_func_end ov34_022562F0

	thumb_func_start ov34_022563E4
ov34_022563E4: ; 0x022563E4
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x4c]
	add r5, r1, #0
	add r4, r2, #0
	bl ov25_0225450C
	cmp r0, #0
	bne _02256424
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020227C0
	cmp r0, #0
	beq _02256424
	ldr r0, [r5, #0]
	sub r0, #0x18
	cmp r0, #0xb0
	bhs _0225640C
	mov r1, #1
	b _0225640E
_0225640C:
	mov r1, #0
_0225640E:
	ldr r0, [r4, #0]
	sub r0, #0x18
	cmp r0, #0x90
	bhs _0225641A
	mov r0, #1
	b _0225641C
_0225641A:
	mov r0, #0
_0225641C:
	tst r0, r1
	beq _02256424
	mov r0, #1
	pop {r3, r4, r5, pc}
_02256424:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov34_022563E4

	thumb_func_start ov34_02256428
ov34_02256428: ; 0x02256428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	add r7, r1, #0
	str r2, [sp]
	bl ov25_0225453C
	mov r1, #8
	bl sub_0203F478
	str r0, [sp, #4]
	add r4, r5, #4
	mov r1, #0
	str r1, [r4, #8]
	ldr r0, [sp]
	str r7, [r5, #4]
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	str r1, [r4, #0xc]
	cmp r0, #0
	beq _022564E6
	ldrb r0, [r0, #4]
	cmp r0, #0xff
	beq _022564E0
	add r6, r4, #0
	ldr r5, [sp, #4]
	add r6, #0xc
_02256460:
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	add r2, sp, #0xc
	add r3, sp, #8
	bl ov34_022564F0
	ldr r1, [sp, #8]
	ldr r0, [sp]
	sub r0, r1, r0
	ldr r1, [sp, #0xc]
	sub r1, r1, r7
	add r2, r1, #0
	mul r2, r1
	add r1, r0, #0
	mul r1, r0
	add r0, r2, r1
	lsl r0, r0, #0xc
	bl sub_020BCFF0
	ldrb r1, [r5, #4]
	lsl r2, r1, #2
	ldr r1, _022564EC ; =0x02256A28
	ldr r1, [r1, r2]
	cmp r0, r1
	bgt _022564C6
	ldr r1, [r4, #0xc]
	cmp r1, #8
	bhs _022564D8
	mov r2, #6
	mul r2, r1
	ldr r0, [sp, #0xc]
	add r1, r4, r2
	strh r0, [r1, #0x10]
	ldr r2, [r4, #0xc]
	mov r1, #6
	mul r1, r2
	ldr r0, [sp, #8]
	add r1, r4, r1
	strh r0, [r1, #0x12]
	ldr r2, [r4, #0xc]
	mov r1, #6
	mul r1, r2
	ldrb r0, [r5, #4]
	add r1, r4, r1
	strh r0, [r1, #0x14]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	mov r0, #2
	str r0, [r4, #8]
	b _022564D8
_022564C6:
	mov r1, #3
	lsl r1, r1, #0x10
	cmp r0, r1
	bgt _022564D8
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _022564D8
	mov r0, #1
	str r0, [r4, #8]
_022564D8:
	add r5, r5, #6
	ldrb r0, [r5, #4]
	cmp r0, #0xff
	bne _02256460
_022564E0:
	ldr r0, [sp, #4]
	bl sub_020181C4
_022564E6:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022564EC: .word 0x02256A28
	thumb_func_end ov34_02256428

	thumb_func_start ov34_022564F0
ov34_022564F0: ; 0x022564F0
	push {r4, r5}
	sub r4, r0, #7
	mov r0, #0xb
	add r5, r4, #0
	mul r5, r0
	sub r1, r1, #7
	add r5, #0x70
	mul r0, r1
	str r5, [r2, #0]
	add r0, #0x65
	str r0, [r3, #0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov34_022564F0

	thumb_func_start ov34_0225650C
ov34_0225650C: ; 0x0225650C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225651C
	cmp r0, #1
	beq _0225652C
	b _0225653A
_0225651C:
	ldr r0, [r4, #0x48]
	mov r1, #1
	bl ov34_02256640
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225653A
_0225652C:
	ldr r0, [r4, #0x48]
	bl ov34_02256670
	cmp r0, #0
	beq _0225653A
	mov r0, #1
	pop {r4, pc}
_0225653A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov34_0225650C

	.rodata


	.global Unk_ov34_02256A1C
Unk_ov34_02256A1C: ; 0x02256A1C
	.incbin "incbin/overlay34_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov34_02256A28
Unk_ov34_02256A28: ; 0x02256A28
	.incbin "incbin/overlay34_rodata.bin", 0xC, 0xC

	.section .sinit, 4
	.word ov34_022561C0
