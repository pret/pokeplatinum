	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov56_022561C0
ov56_022561C0: ; 0x022561C0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r1, #0x80
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02256292
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _02256292
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022561E2: ; jump table
	.short _022561EA - _022561E2 - 2 ; case 0
	.short _02256212 - _022561E2 - 2 ; case 1
	.short _02256268 - _022561E2 - 2 ; case 2
	.short _02256292 - _022561E2 - 2 ; case 3
_022561EA:
	bl ov56_02256508
	add r0, r4, #0
	bl ov56_02256294
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	bl ov56_0225710C
	add r0, r4, #0
	mov r1, #1
	bl ov56_0225717C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02256212:
	add r0, r4, #0
	bl ov56_02256634
	add r0, r4, #0
	bl ov56_02256704
	mov r0, #1
	mov r1, #4
	bl sub_02002BEC
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r0, [r4, #0x14]
	add r1, r4, r1
	bl ov56_022562EC
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	add r0, r4, #0
	bl ov56_02257100
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02256268:
	add r0, r4, #0
	bl ov56_0225712C
	add r0, r4, #0
	bl ov56_02257098
	add r0, r4, #0
	bl ov56_022569E0
	add r0, r4, #0
	bl ov56_02256D04
	add r0, r4, #0
	bl ov56_022568E0
	add r0, r4, #0
	bl ov56_022571D0
	ldr r0, [r4, #0x28]
	bl sub_020219F8
_02256292:
	pop {r4, pc}
	thumb_func_end ov56_022561C0

	thumb_func_start ov56_02256294
ov56_02256294: ; 0x02256294
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xa1
	lsl r1, r1, #2
	add r4, r0, #0
	mov r2, #0
	add r0, r1, #0
	str r2, [r4, r1]
	sub r0, #0x10
	strh r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xe
	strh r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xc
	strh r2, [r4, r0]
	sub r1, #0xa
	mov r0, #4
	strh r2, [r4, r1]
	bl sub_0200B358
	str r0, [r4, #0x18]
	ldr r2, _022562E8 ; =0x0000027B
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	str r0, [r4, #0x1c]
	mov r0, #4
	add r3, r4, #0
	str r0, [sp]
	mov r0, #0x4a
	mov r1, #3
	mov r2, #1
	add r3, #0x24
	bl sub_02006F6C
	str r0, [r4, #0x20]
	add sp, #4
	pop {r3, r4, pc}
	nop
_022562E8: .word 0x0000027B
	thumb_func_end ov56_02256294

	thumb_func_start ov56_022562EC
ov56_022562EC: ; 0x022562EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	mov r0, #0xa0
	str r0, [sp, #0x20]
	mov r0, #0xd0
	str r0, [sp, #0x1c]
	mov r0, #3
	str r0, [sp, #0x18]
	ldr r0, _022563E4 ; =0x00000265
	add r5, r1, #0
	mov r4, #0
	mov r6, #1
	str r0, [sp, #0x14]
_02256308:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r2, r4, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r2, r2, #0x18
	str r0, [sp, #0x10]
	add r0, r7, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	mov r3, #1
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A954
	ldr r0, [sp, #0x18]
	add r2, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	add r1, r5, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r2, r2, #0x18
	str r0, [sp, #0x10]
	add r0, r7, #0
	add r1, #0x10
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x10
	bl sub_0201A954
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r2, r4, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r5, #0
	lsl r2, r2, #0x18
	str r0, [sp, #0x10]
	add r0, r7, #0
	add r1, #0x20
	lsr r2, r2, #0x18
	mov r3, #0xc
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x20
	bl sub_0201A954
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	add r0, #0x10
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r6, #8
	add r0, #0x87
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r5, #0x38
	add r0, #8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x1e
	str r0, [sp, #0x14]
	cmp r4, #3
	blt _02256308
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022563E4: .word 0x00000265
	thumb_func_end ov56_022562EC

	thumb_func_start ov56_022563E8
ov56_022563E8: ; 0x022563E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_022563EE:
	add r0, r5, #0
	add r0, #0x10
	bl sub_0201A8FC
	add r0, r5, #0
	bl sub_0201A8FC
	add r0, r5, #0
	add r0, #0x20
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #3
	blt _022563EE
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov56_022563E8

	thumb_func_start ov56_02256410
ov56_02256410: ; 0x02256410
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0xa6
	mov r2, #4
	ldr r0, _02256460 ; =ov56_022561C0
	lsl r1, r1, #2
	add r3, r2, #0
	bl sub_0200679C
	add r6, r0, #0
	bl sub_0201CED0
	add r4, r0, #0
	str r5, [r4, #0xc]
	ldr r0, [r5, #8]
	str r0, [r4, #0x14]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r4, #4]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	str r0, [r4, #0x10]
	mov r0, #0
	mov r1, #0xa5
	str r0, [r4, #0]
	lsl r1, r1, #2
	str r6, [r4, r1]
	add r5, #0x80
	ldr r2, [r5, #0]
	ldr r0, _02256464 ; =0x000004DC
	sub r1, #0x24
	ldr r0, [r2, r0]
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02256460: .word ov56_022561C0
_02256464: .word 0x000004DC
	thumb_func_end ov56_02256410

	thumb_func_start ov56_02256468
ov56_02256468: ; 0x02256468
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #2
	bne _022564DE
	ldr r0, [r6, #0x14]
	str r0, [sp]
	mov r0, #3
	str r0, [r6, #0]
	mov r0, #1
	bl sub_02002C28
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	mov r7, #0x55
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_0225649C:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225649C
	ldr r0, [r6, #0x28]
	bl sub_02021964
	ldr r0, [r6, #0x1c]
	bl sub_0200B190
	ldr r0, [r6, #0x18]
	bl sub_0200B3F0
	mov r0, #0x72
	lsl r0, r0, #2
	add r0, r6, r0
	bl ov56_022563E8
	ldr r0, [sp]
	bl ov56_022564E4
	ldr r0, [r6, #0x20]
	bl sub_020181C4
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020067D0
	pop {r3, r4, r5, r6, r7, pc}
_022564DE:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov56_02256468

	thumb_func_start ov56_022564E4
ov56_022564E4: ; 0x022564E4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	mov r1, #7
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov56_022564E4

	thumb_func_start ov56_02256508
ov56_02256508: ; 0x02256508
	push {r3, r4, r5, lr}
	sub sp, #0x80
	add r4, r0, #0
	bl ov56_022564E4
	ldr r5, _02256624 ; =0x022572D4
	add r3, sp, #0x64
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	ldr r5, _02256628 ; =0x0225729C
	add r3, sp, #0x48
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	ldr r5, _0225662C ; =0x02257280
	add r3, sp, #0x2c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #6
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r5, _02256630 ; =0x022572B8
	add r3, sp, #0x10
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #7
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x60
	mov r1, #0
	str r0, [sp]
	mov r2, #4
	mov r0, #0x4a
	add r3, r1, #0
	str r2, [sp, #4]
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x4a
	mov r1, #2
	add r2, r4, #0
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #4
	mov r0, #0x4a
	add r2, r4, #0
	mov r3, #7
	str r1, [sp, #0xc]
	bl sub_02006E60
	mov r0, #4
	mov r1, #0
	bl sub_0205D8CC
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_02256624: .word 0x022572D4
_02256628: .word 0x0225729C
_0225662C: .word 0x02257280
_02256630: .word 0x022572B8
	thumb_func_end ov56_02256508

	thumb_func_start ov56_02256634
ov56_02256634: ; 0x02256634
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r1, r6, #0
	mov r0, #0xa
	add r1, #0x2c
	mov r2, #4
	bl sub_020095C4
	mov r7, #0x55
	str r0, [r6, #0x28]
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_02256650:
	mov r0, #1
	add r1, r4, #0
	mov r2, #4
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02256650
	ldr r0, _02256700 ; =0x000003E7
	mov r1, #0x4a
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #5
	mov r3, #1
	bl sub_0200985C
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, _02256700 ; =0x000003E7
	mov r2, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #4
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	mov r1, #0x4a
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, _02256700 ; =0x000003E7
	sub r1, #0xc
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	mov r1, #0x4a
	mov r2, #6
	mov r3, #1
	bl sub_02009918
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, _02256700 ; =0x000003E7
	sub r1, #0xc
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	mov r1, #0x4a
	mov r2, #7
	mov r3, #1
	bl sub_02009918
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r6, r1]
	sub r1, #0xc
	ldr r0, [r6, r1]
	bl sub_0200A3DC
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A640
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256700: .word 0x000003E7
	thumb_func_end ov56_02256634

	thumb_func_start ov56_02256704
ov56_02256704: ; 0x02256704
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r1, _022567DC ; =0x000003E7
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r3, #0x55
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r5, r2]
	add r3, #0x20
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	ldr r0, [r5, #0x28]
	mov r4, #0
	str r0, [sp, #0x2c]
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	mov r7, #0x3f
	str r4, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r4, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x54]
	mov r0, #4
	ldr r6, _022567E0 ; =0x02257238
	str r4, [sp, #0x50]
	str r0, [sp, #0x58]
	lsl r7, r7, #0x18
_02256778:
	mov r0, #0x3a
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	ldr r0, [r6, #0]
	cmp r0, #0
	ble _02256794
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E0B00
	b _022567A0
_02256794:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r7, #0
	bl sub_020E1A9C
_022567A0:
	bl sub_020E1740
	mov r1, #3
	lsl r1, r1, #0x12
	add r0, r0, r1
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021D6C
	add r4, r4, #1
	add r6, r6, #4
	add r5, r5, #4
	cmp r4, #3
	blt _02256778
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022567DC: .word 0x000003E7
_022567E0: .word 0x02257238
	thumb_func_end ov56_02256704

	thumb_func_start ov56_022567E4
ov56_022567E4: ; 0x022567E4
	add r1, r1, #1
	cmp r1, #0x1e
	bne _022567EC
	mov r1, #0
_022567EC:
	add r0, r1, #0
	bx lr
	thumb_func_end ov56_022567E4

	thumb_func_start ov56_022567F0
ov56_022567F0: ; 0x022567F0
	add r0, r0, r1
	cmp r0, #0x1e
	blt _022567F8
	sub r0, #0x1e
_022567F8:
	bx lr
	; .align 2, 0
	thumb_func_end ov56_022567F0

	thumb_func_start ov56_022567FC
ov56_022567FC: ; 0x022567FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r3, r1, #0
	add r5, r0, #0
	add r4, r3, #0
	mov r0, #0x38
	mul r4, r0
	mov r0, #0x7e
	add r6, r2, #0
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [r6, #0x10]
	mov r2, #8
	str r0, [r1, r4]
	mov r0, #0x20
	str r0, [sp]
	str r2, [sp, #4]
	ldr r2, [r5, #0x24]
	mov r7, #0
	add r2, #0xc
	str r2, [sp, #8]
	str r7, [sp, #0xc]
	ldr r2, [r1, r4]
	mov r1, #0x18
	mul r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0x30
	str r0, [sp, #0x18]
	lsl r3, r3, #0x1b
	ldr r0, [r5, #0x14]
	mov r1, #7
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl sub_020198E8
	mov r0, #0x72
	lsl r0, r0, #2
	add r7, r5, r0
	add r0, r7, r4
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x1c]
	add r0, r0, r4
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x7a
	lsl r0, r0, #2
	add r5, r5, r0
	add r0, r5, r4
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022568DC ; =0x00010200
	mov r3, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r6, #0]
	add r0, r7, r4
	bl sub_0201D78C
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022568DC ; =0x00010200
	mov r3, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r2, [r6, #4]
	add r0, r0, r4
	mov r1, #1
	bl sub_0201D78C
	add r0, r7, r4
	bl sub_0201A9A4
	ldr r0, [sp, #0x1c]
	add r0, r0, r4
	bl sub_0201A9A4
	ldr r2, [r6, #8]
	cmp r2, #0
	beq _022568D2
	mov r1, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022568DC ; =0x00010200
	mov r3, #0
	str r0, [sp, #8]
	add r0, r5, r4
	str r3, [sp, #0xc]
	bl sub_0201D78C
_022568D2:
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022568DC: .word 0x00010200
	thumb_func_end ov56_022567FC

	thumb_func_start ov56_022568E0
ov56_022568E0: ; 0x022568E0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x27
	add r5, r0, #0
	lsl r1, r1, #4
	add r0, r1, #0
	ldr r2, [r5, r1]
	add r1, #8
	add r0, #0xdc
	ldrh r1, [r5, r1]
	ldr r0, [r2, r0]
	bl ov56_022567F0
	add r6, r0, #0
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, #0xd8
	ldr r7, [r1, r0]
	cmp r7, #3
	ble _0225690A
	mov r7, #3
_0225690A:
	mov r0, #0x9e
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	beq _02256928
	add r0, r5, #0
	bl ov56_02257100
	mov r0, #0x9e
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
_02256928:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02256992
	mov r4, #0
	cmp r7, #0
	ble _02256960
_02256938:
	mov r2, #0x27
	lsl r2, r2, #4
	mov r3, #0x1c
	ldr r2, [r5, r2]
	mul r3, r6
	add r0, r5, #0
	add r1, r4, #0
	add r2, r2, r3
	bl ov56_022567FC
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl ov56_022567E4
	add r4, r4, #1
	add r6, r0, #0
	cmp r4, r7
	blt _02256938
_02256960:
	ldr r0, [r5, #0x14]
	mov r1, #7
	bl sub_02019FE4
	mov r1, #6
	lsl r1, r1, #8
	bl sub_020C2C54
	ldr r0, [r5, #0x14]
	mov r1, #7
	bl sub_02019FE4
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r3, #6
	ldr r0, [r5, #0x14]
	mov r1, #7
	lsl r3, r3, #8
	bl sub_02019460
	mov r0, #0xa1
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_02256992:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov56_022568E0

	thumb_func_start ov56_02256994
ov56_02256994: ; 0x02256994
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x3a
	lsl r0, r0, #0xe
	str r0, [sp]
	cmp r1, #0
	ble _022569B6
	lsl r0, r1, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022569C4
_022569B6:
	lsl r0, r1, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022569C4:
	bl sub_020E1740
	mov r1, #3
	lsl r1, r1, #0x12
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov56_02256994

	thumb_func_start ov56_022569E0
ov56_022569E0: ; 0x022569E0
	push {r4, lr}
	mov r1, #0x27
	add r4, r0, #0
	lsl r1, r1, #4
	add r0, r1, #0
	ldr r2, [r4, r1]
	add r0, #0xd8
	ldr r2, [r2, r0]
	add r0, r1, #4
	strh r2, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #3
	bls _02256A14
	add r0, r1, #6
	ldrh r0, [r4, r0]
	cmp r0, #3
	bhi _02256A14
	add r0, r1, #0
	mov r2, #1
	add r0, #0xa
	strh r2, [r4, r0]
	add r0, r1, #4
	ldrh r0, [r4, r0]
	add r1, #8
	sub r0, r0, #3
	strh r0, [r4, r1]
_02256A14:
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, #0xda
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	ldr r0, _02256A64 ; =0x0000027A
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _02256A56
	add r0, r4, #0
	bl ov56_02257184
	cmp r0, #1
	bne _02256A56
	mov r1, #0x9e
	lsl r1, r1, #2
	ldrh r2, [r4, r1]
	sub r1, r1, #4
	ldrh r1, [r4, r1]
	mov r0, #0x60
	mul r0, r2
	sub r1, r1, #3
	bl sub_020E1F6C
	add r1, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, #0x30
	bl ov56_02256994
_02256A56:
	mov r0, #0x9d
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	add r0, r0, #2
	strh r1, [r4, r0]
	pop {r4, pc}
	nop
_02256A64: .word 0x0000027A
	thumb_func_end ov56_022569E0

	thumb_func_start ov56_02256A68
ov56_02256A68: ; 0x02256A68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02256BB0 ; =0x02257264
	bl sub_02022644
	add r7, r0, #0
	add r0, r5, #0
	bl ov56_02257174
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _02256A9E
	cmp r7, #0
	beq _02256A92
	cmp r7, #1
	beq _02256AC4
	cmp r7, #5
	beq _02256AFA
	b _02256B04
_02256A92:
	add r0, r5, #0
	add r1, r7, #0
	bl ov56_0225718C
	cmp r4, #1
	beq _02256AA0
_02256A9E:
	b _02256BAC
_02256AA0:
	mov r0, #0x9e
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _02256ABA
	ldr r0, _02256BB4 ; =0x000005E5
	bl sub_02005748
	mov r0, #0x9e
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, r0]
_02256ABA:
	mov r0, #0x71
	sub r1, r7, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02256BAC
_02256AC4:
	add r0, r5, #0
	add r1, r7, #0
	bl ov56_0225718C
	cmp r4, #1
	bne _02256BAC
	mov r0, #0x9e
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	sub r0, r0, #4
	ldrh r0, [r5, r0]
	sub r0, r0, #3
	cmp r1, r0
	bge _02256AF0
	ldr r0, _02256BB4 ; =0x000005E5
	bl sub_02005748
	mov r0, #0x9e
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
_02256AF0:
	mov r0, #0x71
	sub r1, r7, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02256BAC
_02256AFA:
	mov r0, #0x71
	sub r1, r7, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _02256BAC
_02256B04:
	ldr r0, _02256BB8 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _02256BAC
	mov r2, #0x27
	lsl r2, r2, #4
	add r1, r2, #0
	ldr r0, [r5, r2]
	add r1, #0xd8
	ldr r3, [r0, r1]
	sub r1, r7, #1
	cmp r3, r1
	blt _02256BA4
	add r1, r2, #0
	add r1, #0xdc
	add r2, #8
	ldr r0, [r0, r1]
	ldrh r1, [r5, r2]
	add r1, r1, r7
	sub r1, r1, #2
	bl ov56_022567F0
	mov r1, #0x1c
	mov r4, #0
	mul r1, r0
	add r6, r4, #0
	str r1, [sp]
_02256B3A:
	add r0, r4, #0
	bl sub_02033F3C
	cmp r0, #0
	beq _02256B76
	ldr r1, [r5, #4]
	add r0, #0x50
	add r1, r1, r6
	ldrb r1, [r1, #0xd]
	cmp r1, #2
	bne _02256B76
	mov r1, #0x27
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	add r1, r1, r2
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bne _02256B76
	ldr r0, _02256BB4 ; =0x000005E5
	bl sub_02005748
	mov r1, #0x18
	ldr r2, [r5, #4]
	mul r1, r4
	mov r0, #1
	add r1, r2, r1
	strb r0, [r1, #0xf]
	b _02256B7E
_02256B76:
	add r4, r4, #1
	add r6, #0x18
	cmp r4, #0xa
	blt _02256B3A
_02256B7E:
	bl sub_02033F9C
	bl sub_02025F20
	mov r1, #0x27
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	ldr r1, [sp]
	add r1, r2, r1
	ldr r1, [r1, #0xc]
	cmp r1, r0
	bne _02256BA4
	ldr r0, _02256BB4 ; =0x000005E5
	bl sub_02005748
	ldr r1, [r5, #4]
	ldr r0, _02256BBC ; =0x000004BF
	mov r2, #1
	strb r2, [r1, r0]
_02256BA4:
	mov r0, #0x71
	sub r1, r7, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
_02256BAC:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256BB0: .word 0x02257264
_02256BB4: .word 0x000005E5
_02256BB8: .word 0x021BF6BC
_02256BBC: .word 0x000004BF
	thumb_func_end ov56_02256A68

	thumb_func_start ov56_02256BC0
ov56_02256BC0: ; 0x02256BC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, _02256C80 ; =0x02257250
	bl sub_02022644
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	cmp r0, r1
	beq _02256C70
	cmp r0, #0
	bne _02256C3A
	add r0, r7, #0
	mov r1, #0
	bl ov56_0225717C
	add r0, sp, #8
	add r1, sp, #4
	bl sub_020227A4
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	ldr r1, [sp, #4]
	bl ov56_02256994
	mov r0, #0x9d
	lsl r0, r0, #2
	ldrh r0, [r7, r0]
	cmp r0, #3
	bls _02256C78
	sub r4, r0, #2
	mov r0, #0x60
	add r1, r4, #0
	bl sub_020E1F6C
	mov r1, #0
	cmp r4, #0
	ble _02256C78
	ldr r5, [sp, #4]
	add r2, r1, #0
	add r3, r1, #0
_02256C16:
	add r6, r2, #0
	add r6, #0x30
	cmp r5, r6
	blo _02256C2E
	add r6, r3, r0
	add r6, #0x30
	cmp r5, r6
	bhs _02256C2E
	mov r0, #0x9e
	lsl r0, r0, #2
	strh r1, [r7, r0]
	b _02256C78
_02256C2E:
	add r1, r1, #1
	add r2, r2, r0
	add r3, r3, r0
	cmp r1, r4
	blt _02256C16
	b _02256C78
_02256C3A:
	mov r1, #0x27
	lsl r1, r1, #4
	add r0, r1, #0
	ldr r2, [r7, r1]
	add r0, #0xd8
	ldr r2, [r2, r0]
	ldr r0, [sp]
	cmp r2, r0
	blt _02256C78
	add r0, r1, #0
	sub r0, #0xac
	ldr r2, [r7, r0]
	ldr r0, [sp]
	sub r3, r0, #1
	cmp r2, r3
	bne _02256C78
	sub r1, #0x74
	add r2, r7, r1
	mov r0, #0x38
	add r1, r3, #0
	mul r1, r0
	ldr r0, [r2, r1]
	cmp r0, #5
	bge _02256C78
	add r0, r0, #1
	str r0, [r2, r1]
	b _02256C78
_02256C70:
	add r0, r7, #0
	mov r1, #1
	bl ov56_0225717C
_02256C78:
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02256C80: .word 0x02257250
	thumb_func_end ov56_02256BC0

	thumb_func_start ov56_02256C84
ov56_02256C84: ; 0x02256C84
	push {r4, lr}
	ldr r1, _02256CFC ; =0x021BF67C
	add r4, r0, #0
	ldr r3, [r1, #0x44]
	mov r1, #2
	lsl r1, r1, #8
	add r2, r3, #0
	tst r2, r1
	beq _02256CC6
	mov r1, #0
	bl ov56_0225718C
	ldr r0, _02256CFC ; =0x021BF67C
	mov r1, #2
	ldr r0, [r0, #0x4c]
	lsl r1, r1, #8
	tst r0, r1
	beq _02256CF8
	add r0, r1, #0
	add r0, #0x78
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _02256CF8
	add r0, r1, #0
	add r0, #0x78
	ldrh r0, [r4, r0]
	add r1, #0x78
	sub r0, r0, #1
	strh r0, [r4, r1]
	ldr r0, _02256D00 ; =0x000005E5
	bl sub_02005748
	pop {r4, pc}
_02256CC6:
	lsr r1, r1, #1
	tst r1, r3
	beq _02256CF8
	mov r1, #1
	bl ov56_0225718C
	ldr r0, _02256CFC ; =0x021BF67C
	ldr r1, [r0, #0x4c]
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r1
	beq _02256CF8
	mov r0, #0x9e
	lsl r0, r0, #2
	sub r1, r0, #4
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r0]
	sub r1, r1, #3
	cmp r2, r1
	bge _02256CF8
	add r1, r2, #1
	strh r1, [r4, r0]
	ldr r0, _02256D00 ; =0x000005E5
	bl sub_02005748
_02256CF8:
	pop {r4, pc}
	nop
_02256CFC: .word 0x021BF67C
_02256D00: .word 0x000005E5
	thumb_func_end ov56_02256C84

	thumb_func_start ov56_02256D04
ov56_02256D04: ; 0x02256D04
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	mvn r4, r4
	bl sub_020509A4
	cmp r0, #0
	bne _02256D3A
	add r0, r5, #0
	bl ov56_02256A68
	add r6, r0, #0
	add r0, r5, #0
	bl ov56_02256BC0
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _02256D3A
	cmp r4, r0
	bne _02256D3A
	add r0, r5, #0
	bl ov56_02256C84
_02256D3A:
	mov r2, #0x27
	lsl r2, r2, #4
	add r0, r2, #0
	ldr r1, [r5, r2]
	add r0, #0xd8
	ldr r0, [r1, r0]
	sub r3, r4, #1
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x10
	add r0, r5, r0
	str r0, [sp, #4]
	sub r2, #0xa8
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x24]
	add r2, r5, r2
	bl ov56_02256D64
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov56_02256D04

	thumb_func_start ov56_02256D64
ov56_02256D64: ; 0x02256D64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x20]
	add r5, r2, #0
	mov r1, #0
	str r0, [sp, #0x40]
	ldr r4, [sp, #0x44]
	cmp r0, #3
	ble _02256D7E
	mov r0, #3
	str r0, [sp, #0x40]
_02256D7E:
	ldr r2, [sp, #0x40]
	mov r0, #0
	cmp r2, #0
	ble _02256DA4
	add r2, r5, #0
_02256D88:
	cmp r3, r0
	beq _02256D96
	ldr r6, [r2, #0x34]
	cmp r6, #0
	beq _02256D96
	sub r6, r6, #1
	str r6, [r2, #0x34]
_02256D96:
	ldr r6, [r2, #0x34]
	add r0, r0, #1
	add r1, r1, r6
	ldr r6, [sp, #0x40]
	add r2, #0x38
	cmp r0, r6
	blt _02256D88
_02256DA4:
	cmp r1, #0
	bne _02256DB4
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02256DB4
	add sp, #0x28
	str r1, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02256DB4:
	ldr r0, [sp, #0x40]
	str r1, [r4, #0]
	mov r4, #0
	cmp r0, #0
	ble _02256E2A
	ldr r0, [sp, #0x20]
	add r7, r4, #0
	add r0, #0xc
	str r0, [sp, #0x20]
_02256DC6:
	ldr r1, [r5, #0x34]
	lsl r3, r7, #0x18
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #0x24]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	lsr r3, r3, #0x18
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [r5, #0x30]
	lsl r2, r0, #3
	mov r0, #0x18
	mul r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #0x30
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r1, #7
	mov r2, #0
	bl sub_020198E8
	ldr r3, [sp, #0x24]
	add r1, r4, #4
	lsl r6, r3, #2
	ldr r3, _02256E58 ; =0x02257244
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x1c]
	ldr r3, [r3, r6]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	ldr r0, [sp, #0x40]
	add r4, r4, #1
	add r5, #0x38
	add r7, #8
	cmp r4, r0
	blt _02256DC6
_02256E2A:
	ldr r0, [sp, #0x1c]
	mov r1, #7
	bl sub_02019FE4
	mov r1, #6
	lsl r1, r1, #8
	bl sub_020C2C54
	ldr r0, [sp, #0x1c]
	mov r1, #7
	bl sub_02019FE4
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r3, #6
	ldr r0, [sp, #0x1c]
	mov r1, #7
	lsl r3, r3, #8
	bl sub_02019460
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256E58: .word 0x02257244
	thumb_func_end ov56_02256D64

	thumb_func_start ov56_02256E5C
ov56_02256E5C: ; 0x02256E5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r4, #0
	ldr r0, [sp, #0x28]
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	bl sub_02025F20
	cmp r5, r0
	beq _02256E80
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020280E0
	add r4, r0, #0
_02256E80:
	cmp r4, #0
	ble _02256EE0
	cmp r4, #1
	bne _02256E94
	ldr r2, [sp, #0x28]
	add r0, r7, #0
	mov r1, #0
	bl sub_0200B498
	b _02256ED2
_02256E94:
	cmp r4, #2
	blt _02256ED2
	sub r5, r4, #2
	mov r0, #0xa
	mov r1, #0x59
	bl sub_02023790
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02027FBC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023D28
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02027FC4
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
_02256ED2:
	ldr r1, [sp, #8]
	add r0, r7, #0
	mov r2, #0xd0
	mov r3, #0x59
	bl sub_0200B29C
	str r0, [sp, #0xc]
_02256EE0:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov56_02256E5C

	thumb_func_start ov56_02256EE8
ov56_02256EE8: ; 0x02256EE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r6, r2, #0
	ldr r2, [r7, #4]
	ldr r0, _02256FC4 ; =0x000004D8
	str r1, [sp, #4]
	mov r1, #0x27
	ldr r0, [r2, r0]
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	add r0, r1, #0
	ldr r4, [r7, r1]
	add r0, #0xd8
	ldr r0, [r4, r0]
	str r3, [sp, #8]
	cmp r0, #0x1e
	bne _02256F10
	add r1, #0xdc
	b _02256F12
_02256F10:
	add r1, #0xd8
_02256F12:
	add r5, r4, r1
	ldr r1, [r5, #0]
	mov r0, #0x1c
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02256F26
	bl sub_020237BC
_02256F26:
	ldr r1, [r5, #0]
	mov r0, #0x1c
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02256F38
	bl sub_020237BC
_02256F38:
	ldr r0, [sp, #8]
	bl sub_02025EF0
	add r1, r0, #0
	ldr r2, [r5, #0]
	mov r0, #0x1c
	mul r0, r2
	ldr r0, [r4, r0]
	bl sub_02023D28
	ldr r0, [r5, #0]
	mov r1, #0x1c
	add r2, r0, #0
	mul r2, r1
	add r0, r4, r2
	ldrh r2, [r6]
	strh r2, [r0, #0x14]
	ldrh r2, [r6, #2]
	strh r2, [r0, #0x16]
	ldrh r2, [r6, #4]
	strh r2, [r0, #0x18]
	ldrh r2, [r6, #6]
	strh r2, [r0, #0x1a]
	ldr r0, [r5, #0]
	mul r1, r0
	ldr r0, [sp, #4]
	add r1, r4, r1
	str r0, [r1, #0xc]
	ldr r0, [sp, #8]
	bl sub_02025F30
	ldr r2, [r5, #0]
	mov r1, #0x1c
	mul r1, r2
	add r1, r4, r1
	str r0, [r1, #0x10]
	add r0, r6, #0
	mov r1, #0x59
	bl sub_02014B34
	ldr r2, [r5, #0]
	mov r1, #0x1c
	mul r1, r2
	add r1, r4, r1
	str r0, [r1, #4]
	ldr r0, [r7, #0x10]
	ldr r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r2, [r7, #0x18]
	ldr r3, [r7, #0x1c]
	bl ov56_02256E5C
	ldr r2, [r5, #0]
	mov r1, #0x1c
	mul r1, r2
	add r1, r4, r1
	str r0, [r1, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0x1e
	bne _02256FC0
	mov r1, #0
	str r1, [r4, r0]
_02256FC0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256FC4: .word 0x000004D8
	thumb_func_end ov56_02256EE8

	thumb_func_start ov56_02256FC8
ov56_02256FC8: ; 0x02256FC8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	str r1, [sp]
	add r7, r2, #0
	bl sub_02014BBC
	cmp r0, #0
	bne _02256FDE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02256FDE:
	mov r1, #0x27
	lsl r1, r1, #4
	ldr r0, [r6, r1]
	add r1, #0xd8
	ldr r1, [r0, r1]
	mov r4, #0
	cmp r1, #0
	ble _02257018
	add r5, r4, #0
_02256FF0:
	add r1, r0, r5
	ldr r0, [r1, #0xc]
	cmp r7, r0
	bne _02257004
	ldr r0, [sp]
	add r1, #0x14
	bl sub_02014C88
	cmp r0, #0
	bne _02257018
_02257004:
	mov r0, #0x27
	lsl r0, r0, #4
	mov r1, #0xd2
	ldr r0, [r6, r0]
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, r1
	blt _02256FF0
_02257018:
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r1, [r6, r0]
	add r0, #0xd8
	ldr r0, [r1, r0]
	cmp r4, r0
	beq _0225702E
	cmp r0, #0
	beq _0225702E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225702E:
	mov r0, #0x1c
	mul r0, r4
	add r1, r1, r0
	ldr r0, [r1, #0xc]
	cmp r7, r0
	beq _02257042
	ldr r0, [sp]
	add r1, #0x14
	bl sub_02014C88
_02257042:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov56_02256FC8

	thumb_func_start ov56_02257048
ov56_02257048: ; 0x02257048
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x9e
	add r4, r0, #0
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	sub r1, r1, #4
	ldrh r1, [r4, r1]
	mov r5, #0
	sub r1, r1, #3
	cmp r0, r1
	bne _02257062
	mov r5, #1
_02257062:
	add r1, r3, #0
	add r0, r4, #0
	add r3, r6, #0
	bl ov56_02256EE8
	ldr r1, _02257094 ; =0x0000027A
	ldrh r0, [r4, r1]
	cmp r0, #0
	beq _0225708A
	cmp r5, #0
	beq _0225708A
	add r0, r1, #0
	sub r0, #0xa
	ldr r2, [r4, r0]
	add r0, r1, #0
	add r0, #0xce
	ldr r0, [r2, r0]
	sub r2, r0, #3
	sub r0, r1, #2
	strh r2, [r4, r0]
_0225708A:
	add r0, r4, #0
	bl ov56_02257100
	pop {r4, r5, r6, pc}
	nop
_02257094: .word 0x0000027A
	thumb_func_end ov56_02257048

	thumb_func_start ov56_02257098
ov56_02257098: ; 0x02257098
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020509A4
	cmp r0, #0
	bne _022570FC
	mov r4, #0
_022570A8:
	add r0, r4, #0
	bl sub_02033F3C
	add r2, r0, #0
	beq _022570DA
	add r6, r2, #0
	add r6, #0x50
	add r7, r6, #0
	add r7, #8
	ldr r2, [r2, #0x50]
	add r0, r5, #0
	add r1, r7, #0
	bl ov56_02256FC8
	cmp r0, #0
	beq _022570DA
	add r0, r4, #0
	bl sub_02033FB0
	add r1, r0, #0
	ldr r3, [r6, #0]
	add r0, r5, #0
	add r2, r7, #0
	bl ov56_02257048
_022570DA:
	add r4, r4, #1
	cmp r4, #0x10
	blt _022570A8
	ldr r0, [r5, #8]
	bl sub_0205C028
	add r4, r0, #0
	beq _022570FC
	ldr r0, [r5, #0x10]
	bl sub_02025F20
	add r3, r0, #0
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	add r2, r4, #0
	bl ov56_02257048
_022570FC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov56_02257098

	thumb_func_start ov56_02257100
ov56_02257100: ; 0x02257100
	mov r1, #0xa1
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov56_02257100

	thumb_func_start ov56_0225710C
ov56_0225710C: ; 0x0225710C
	mov r1, #0xa2
	mov r2, #0
	lsl r1, r1, #2
	strb r2, [r0, r1]
	mov r3, #8
	add r2, r1, #2
	strb r3, [r0, r2]
	mov r3, #4
	add r2, r1, #3
	strb r3, [r0, r2]
	add r2, r1, #2
	ldrb r2, [r0, r2]
	add r1, r1, #1
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov56_0225710C

	thumb_func_start ov56_0225712C
ov56_0225712C: ; 0x0225712C
	mov r2, #0xa2
	mov r1, #0
	lsl r2, r2, #2
	strb r1, [r0, r2]
	ldr r1, _02257170 ; =0x021BF6BC
	ldrh r3, [r1, #0x20]
	cmp r3, #0
	beq _02257142
	mov r1, #1
	strb r1, [r0, r2]
	bx lr
_02257142:
	ldrh r1, [r1, #0x22]
	cmp r1, #0
	beq _02257166
	add r1, r2, #1
	ldrsb r1, [r0, r1]
	sub r3, r1, #1
	add r1, r2, #1
	strb r3, [r0, r1]
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _0225716E
	mov r1, #1
	strb r1, [r0, r2]
	add r1, r2, #3
	ldrb r3, [r0, r1]
	add r1, r2, #1
	strb r3, [r0, r1]
	bx lr
_02257166:
	add r1, r2, #2
	ldrb r3, [r0, r1]
	add r1, r2, #1
	strb r3, [r0, r1]
_0225716E:
	bx lr
	; .align 2, 0
_02257170: .word 0x021BF6BC
	thumb_func_end ov56_0225712C

	thumb_func_start ov56_02257174
ov56_02257174: ; 0x02257174
	mov r1, #0xa2
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov56_02257174

	thumb_func_start ov56_0225717C
ov56_0225717C: ; 0x0225717C
	mov r2, #0xa3
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov56_0225717C

	thumb_func_start ov56_02257184
ov56_02257184: ; 0x02257184
	mov r1, #0xa3
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov56_02257184

	thumb_func_start ov56_0225718C
ov56_0225718C: ; 0x0225718C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x66
	add r5, r1, #0
	lsl r0, r0, #2
	add r4, r7, r0
	lsl r6, r5, #2
	ldr r0, [r4, r6]
	bl sub_02021E74
	str r0, [sp]
	ldr r0, [r4, r6]
	bl sub_02021E24
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp]
	cmp r0, #1
	bhi _022571B8
	add r0, r5, #4
	cmp r1, r0
	beq _022571C0
_022571B8:
	ldr r0, [r4, r6]
	add r1, r5, #4
	bl sub_02021D6C
_022571C0:
	lsl r0, r5, #1
	add r1, r7, r0
	mov r0, #0x29
	mov r2, #1
	lsl r0, r0, #4
	strh r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov56_0225718C

	thumb_func_start ov56_022571D0
ov56_022571D0: ; 0x022571D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_022571DA:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021E74
	mov r1, #0x29
	lsl r1, r1, #4
	ldrh r1, [r4, r1]
	cmp r1, #1
	bne _02257206
	cmp r0, #1
	blo _022571FE
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CC8
_022571FE:
	mov r0, #0x29
	lsl r0, r0, #4
	strh r7, [r4, r0]
	b _0225722C
_02257206:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D3C
	cmp r0, #0
	bne _0225722C
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02021E50
_0225722C:
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #2
	cmp r6, #2
	blt _022571DA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov56_022571D0

	.rodata


	.global Unk_ov56_02257238
Unk_ov56_02257238: ; 0x02257238
	.incbin "incbin/overlay56_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov56_02257244
Unk_ov56_02257244: ; 0x02257244
	.incbin "incbin/overlay56_rodata.bin", 0xC, 0x18 - 0xC

	.global Unk_ov56_02257250
Unk_ov56_02257250: ; 0x02257250
	.incbin "incbin/overlay56_rodata.bin", 0x18, 0x2C - 0x18

	.global Unk_ov56_02257264
Unk_ov56_02257264: ; 0x02257264
	.incbin "incbin/overlay56_rodata.bin", 0x2C, 0x48 - 0x2C

	.global Unk_ov56_02257280
Unk_ov56_02257280: ; 0x02257280
	.incbin "incbin/overlay56_rodata.bin", 0x48, 0x64 - 0x48

	.global Unk_ov56_0225729C
Unk_ov56_0225729C: ; 0x0225729C
	.incbin "incbin/overlay56_rodata.bin", 0x64, 0x80 - 0x64

	.global Unk_ov56_022572B8
Unk_ov56_022572B8: ; 0x022572B8
	.incbin "incbin/overlay56_rodata.bin", 0x80, 0x9C - 0x80

	.global Unk_ov56_022572D4
Unk_ov56_022572D4: ; 0x022572D4
	.incbin "incbin/overlay56_rodata.bin", 0x9C, 0x1C

