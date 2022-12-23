	.include "macros/function.inc"
	.include "overlay052/ov52_022561C0.inc"

	

	.text


	thumb_func_start ov52_022561C0
ov52_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov52_022561D4
	ldr r1, _022561D0 ; =ov52_0225629C
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov52_022561D4
_022561D0: .word ov52_0225629C
	thumb_func_end ov52_022561C0

	thumb_func_start ov52_022561D4
ov52_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x24
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov52_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov52_02256260
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
_02256218: .word ov52_02256260
	thumb_func_end ov52_022561D4

	thumb_func_start ov52_0225621C
ov52_0225621C: ; 0x0225621C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x14
	add r1, r5, #4
	bl ov52_02256694
	cmp r0, #0
	beq _02256248
	mov r1, #0
	strb r1, [r5]
	strb r1, [r5, #1]
	add r0, r5, #0
	strb r1, [r5, #2]
	add r0, #0x20
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x21
	strb r1, [r0]
	str r4, [r5, #0x18]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02256248:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov52_0225621C

	thumb_func_start ov52_0225624C
ov52_0225624C: ; 0x0225624C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ov52_022566EC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov52_0225624C

	thumb_func_start ov52_02256260
ov52_02256260: ; 0x02256260
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #6
	bhs _02256294
	add r0, r4, #0
	bl ov52_022565EC
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02256298 ; =0x02256D4C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256294
	add r0, r4, #0
	bl ov52_0225624C
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x18]
	bl ov25_02254260
_02256294:
	pop {r3, r4, r5, pc}
	nop
_02256298: .word 0x02256D4C
	thumb_func_end ov52_02256260

	thumb_func_start ov52_0225629C
ov52_0225629C: ; 0x0225629C
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov52_0225629C

	thumb_func_start ov52_022562A4
ov52_022562A4: ; 0x022562A4
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562AC
	b _022562AE
_022562AC:
	mov r1, #5
_022562AE:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov52_022562A4

	thumb_func_start ov52_022562B8
ov52_022562B8: ; 0x022562B8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562C8
	cmp r0, #1
	beq _022562D8
	b _022562F2
_022562C8:
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ov52_022567A4
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022562F2
_022562D8:
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ov52_022567C8
	cmp r0, #0
	beq _022562F2
	ldr r0, [r4, #0x18]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov52_022562A4
_022562F2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov52_022562B8

	thumb_func_start ov52_022562F8
ov52_022562F8: ; 0x022562F8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _0225630C
	mov r1, #5
	bl ov52_022562A4
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225630C:
	ldrb r1, [r4, #1]
	cmp r1, #0
	bne _0225635A
	bl ov52_02256554
	cmp r0, #0
	beq _0225635A
	add r0, r4, #0
	bl ov52_02256684
	cmp r0, #0
	beq _02256354
	ldr r0, [r4, #0x18]
	bl ov25_0225453C
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl ov52_022567A4
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A2C8
	cmp r0, #0
	beq _0225634A
	add r0, r4, #0
	mov r1, #3
	bl ov52_022562A4
	b _0225635A
_0225634A:
	add r0, r4, #0
	mov r1, #2
	bl ov52_022562A4
	b _0225635A
_02256354:
	ldr r0, _02256360 ; =0x0000066E
	bl ov25_02254424
_0225635A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02256360: .word 0x0000066E
	thumb_func_end ov52_022562F8

	thumb_func_start ov52_02256364
ov52_02256364: ; 0x02256364
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256378
	mov r1, #5
	bl ov52_022562A4
	mov r0, #0
	pop {r4, pc}
_02256378:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _02256388
	cmp r1, #1
	beq _02256398
	cmp r1, #2
	beq _022563E0
	b _0225642C
_02256388:
	bl ov52_0225664C
	mov r0, #0
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225642C
_02256398:
	bl ov52_02256430
	cmp r0, #0
	beq _022563AC
	add r0, r4, #0
	mov r1, #4
	bl ov52_022562A4
	mov r0, #0
	pop {r4, pc}
_022563AC:
	ldr r0, [r4, #0x1c]
	cmp r0, #0x3c
	bhs _022563B6
	add r0, r0, #1
	str r0, [r4, #0x1c]
_022563B6:
	add r0, r4, #0
	bl ov52_0225666C
	cmp r0, #0
	beq _0225642C
	ldr r0, [r4, #0x1c]
	cmp r0, #0x3c
	blo _0225642C
	add r0, r4, #0
	bl ov52_0225659C
	ldr r0, [r4, #0x14]
	mov r1, #6
	bl ov52_022567A4
	mov r0, #0
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225642C
_022563E0:
	bl ov52_02256430
	cmp r0, #0
	bne _022563F2
	add r0, r4, #0
	bl ov52_02256554
	cmp r0, #0
	beq _0225640C
_022563F2:
	add r0, r4, #0
	bl ov52_0225667C
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl ov52_022567A4
	add r0, r4, #0
	mov r1, #1
	bl ov52_022562A4
	mov r0, #0
	pop {r4, pc}
_0225640C:
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x1e
	blo _0225642C
	mov r0, #0
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov52_0225659C
	cmp r0, #0
	beq _0225642C
	ldr r0, [r4, #0x14]
	mov r1, #6
	bl ov52_022567A4
_0225642C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov52_02256364

	thumb_func_start ov52_02256430
ov52_02256430: ; 0x02256430
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ov25_0225450C
	cmp r0, #0
	beq _02256442
	mov r0, #1
	pop {r4, pc}
_02256442:
	ldr r0, [r4, #0x18]
	bl ov25_02254534
	cmp r0, #0
	beq _02256450
	mov r0, #1
	pop {r4, pc}
_02256450:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov52_02256430

	thumb_func_start ov52_02256454
ov52_02256454: ; 0x02256454
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256468
	mov r1, #5
	bl ov52_022562A4
	mov r0, #0
	pop {r4, pc}
_02256468:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _02256478
	cmp r1, #1
	beq _02256482
	cmp r1, #2
	beq _0225649C
	b _022564B4
_02256478:
	mov r0, #0
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_02256482:
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x3c
	blo _022564B4
	ldr r0, [r4, #0x14]
	mov r1, #4
	bl ov52_022567A4
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022564B4
_0225649C:
	bl ov52_02256554
	cmp r0, #0
	beq _022564B4
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl ov52_022567A4
	add r0, r4, #0
	mov r1, #1
	bl ov52_022562A4
_022564B4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov52_02256454

	thumb_func_start ov52_022564B8
ov52_022564B8: ; 0x022564B8
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _022564CC
	mov r1, #5
	bl ov52_022562A4
	mov r0, #0
	pop {r4, pc}
_022564CC:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _022564D8
	cmp r1, #1
	beq _022564EC
	b _02256504
_022564D8:
	bl ov52_0225667C
	ldr r0, [r4, #0x14]
	mov r1, #5
	bl ov52_022567A4
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256504
_022564EC:
	bl ov52_02256554
	cmp r0, #0
	beq _02256504
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl ov52_022567A4
	add r0, r4, #0
	mov r1, #1
	bl ov52_022562A4
_02256504:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov52_022564B8

	thumb_func_start ov52_02256508
ov52_02256508: ; 0x02256508
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _0225651C
	cmp r1, #1
	beq _02256526
	cmp r1, #2
	beq _02256540
	b _0225654E
_0225651C:
	bl ov52_0225667C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_02256526:
	add r0, r4, #0
	bl ov52_02256684
	cmp r0, #0
	beq _0225654E
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl ov52_022567A4
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225654E
_02256540:
	ldr r0, [r4, #0x14]
	bl ov52_022567D4
	cmp r0, #0
	beq _0225654E
	mov r0, #1
	pop {r4, pc}
_0225654E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov52_02256508

	thumb_func_start ov52_02256554
ov52_02256554: ; 0x02256554
	push {r3, lr}
	sub sp, #8
	ldr r0, [r0, #0x18]
	bl ov25_0225450C
	cmp r0, #0
	bne _02256594
	add r0, sp, #4
	add r1, sp, #0
	bl sub_020227C0
	cmp r0, #0
	beq _02256594
	ldr r0, [sp, #4]
	sub r0, #0x10
	cmp r0, #0xbf
	bhs _0225657A
	mov r1, #1
	b _0225657C
_0225657A:
	mov r1, #0
_0225657C:
	ldr r0, [sp]
	sub r0, #0x10
	cmp r0, #0x9f
	bhs _02256588
	mov r0, #1
	b _0225658A
_02256588:
	mov r0, #0
_0225658A:
	tst r0, r1
	beq _02256594
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_02256594:
	mov r0, #0
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov52_02256554

	thumb_func_start ov52_0225659C
ov52_0225659C: ; 0x0225659C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r0, #0
	ldr r5, _022565E8 ; =0x02256D64
	str r0, [sp]
	str r0, [sp, #4]
_022565AA:
	ldr r0, [r5, #4]
	mov r4, #0
	add r6, r4, #0
	cmp r0, #0
	bls _022565C6
_022565B4:
	ldr r0, [r5, #0]
	ldrb r0, [r0, r4]
	bl sub_02034120
	add r6, r6, r0
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _022565B4
_022565C6:
	ldr r0, [r7, #4]
	cmp r6, r0
	beq _022565D2
	mov r0, #1
	str r6, [r7, #4]
	str r0, [sp]
_022565D2:
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #4]
	cmp r0, #4
	blo _022565AA
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022565E8: .word 0x02256D64
	thumb_func_end ov52_0225659C

	thumb_func_start ov52_022565EC
ov52_022565EC: ; 0x022565EC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #3
	bhi _02256648
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02256604: ; jump table
	.short _02256648 - _02256604 - 2 ; case 0
	.short _0225660C - _02256604 - 2 ; case 1
	.short _0225661C - _02256604 - 2 ; case 2
	.short _0225663A - _02256604 - 2 ; case 3
_0225660C:
	bl sub_02037C18
	cmp r0, #0
	beq _02256648
	mov r0, #2
	add r4, #0x20
	strb r0, [r4]
	pop {r4, pc}
_0225661C:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _02256648
	bl sub_02037BFC
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	mov r0, #3
	add r4, #0x20
	strb r0, [r4]
	pop {r4, pc}
_0225663A:
	bl sub_02035E38
	cmp r0, #0
	bne _02256648
	mov r0, #0
	add r4, #0x20
	strb r0, [r4]
_02256648:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov52_022565EC

	thumb_func_start ov52_0225664C
ov52_0225664C: ; 0x0225664C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _02256668
	ldr r0, [r4, #0x18]
	bl ov25_02254544
	bl sub_02037BC0
	mov r0, #1
	add r4, #0x20
	strb r0, [r4]
_02256668:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov52_0225664C

	thumb_func_start ov52_0225666C
ov52_0225666C: ; 0x0225666C
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	bne _02256678
	mov r0, #1
	bx lr
_02256678:
	mov r0, #0
	bx lr
	thumb_func_end ov52_0225666C

	thumb_func_start ov52_0225667C
ov52_0225667C: ; 0x0225667C
	mov r1, #1
	add r0, #0x21
	strb r1, [r0]
	bx lr
	thumb_func_end ov52_0225667C

	thumb_func_start ov52_02256684
ov52_02256684: ; 0x02256684
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _02256690
	mov r0, #1
	bx lr
_02256690:
	mov r0, #0
	bx lr
	thumb_func_end ov52_02256684

	.rodata


	.global Unk_ov52_02256D2C
Unk_ov52_02256D2C: ; 0x02256D2C
	.incbin "incbin/overlay52_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov52_02256D30
Unk_ov52_02256D30: ; 0x02256D30
	.incbin "incbin/overlay52_rodata.bin", 0x4, 0xC - 0x4

	.global Unk_ov52_02256D38
Unk_ov52_02256D38: ; 0x02256D38
	.incbin "incbin/overlay52_rodata.bin", 0xC, 0x14 - 0xC

	.global Unk_ov52_02256D40
Unk_ov52_02256D40: ; 0x02256D40
	.incbin "incbin/overlay52_rodata.bin", 0x14, 0x20 - 0x14

	.global Unk_ov52_02256D4C
Unk_ov52_02256D4C: ; 0x02256D4C
	.incbin "incbin/overlay52_rodata.bin", 0x20, 0x38 - 0x20

	.global Unk_ov52_02256D64
Unk_ov52_02256D64: ; 0x02256D64
	.incbin "incbin/overlay52_rodata.bin", 0x38, 0x20

	.section .sinit, 4
	.word ov52_022561C0
