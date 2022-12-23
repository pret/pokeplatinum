	.include "macros/function.inc"
	.include "overlay062/ov62_02236CBC.inc"

	

	.text


	thumb_func_start ov62_02236CBC
ov62_02236CBC: ; 0x02236CBC
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	bne _02236CD8
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0x80
	mov r2, #0xe8
	bl sub_0200D4C4
	b _02236CE6
_02236CD8:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0x50
	mov r2, #0xe8
	bl sub_0200D4C4
_02236CE6:
	add r4, #0xc0
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0]
	sub r2, #0x2c
	bl sub_020128C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02236CBC

	thumb_func_start ov62_02236CF8
ov62_02236CF8: ; 0x02236CF8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	mov r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _02236D44 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x32
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02236D44 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1c
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02236D44 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1d
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02236D44: .word 0x00002E94
	thumb_func_end ov62_02236CF8

	thumb_func_start ov62_02236D48
ov62_02236D48: ; 0x02236D48
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	mov r1, #2
	bl ov62_02236CF8
	add r0, r5, #0
	mov r1, #2
	bl ov62_022313E0
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0xb8
	add r1, #0x14
	mov r2, #2
	bl ov62_0223118C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0xb8
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0x80
	mov r2, #0xe8
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xc0
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r0, #0]
	sub r2, #0x2c
	bl sub_020128C4
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_020129D0
	add r0, r5, #0
	mov r1, #2
	bl ov62_022313E0
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r1, #0xdc
	mov r2, #0xe0
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_0200D364
	add r4, #0x98
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r5, #0
	mov r1, #1
	bl ov62_02236CBC
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02236D48

	thumb_func_start ov62_02236DE8
ov62_02236DE8: ; 0x02236DE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r0, r4, #0
	add r0, #0xb8
	bl ov62_022312B0
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r4, #0x98
	ldr r0, [r4, #0]
	bl sub_0200D0F4
	add r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02236DE8

	thumb_func_start ov62_02236E14
ov62_02236E14: ; 0x02236E14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	ldr r5, [r0, #0x24]
	str r0, [sp, #0x18]
	ldr r7, [r0, #0x14]
	ldr r6, [r0, #0x18]
	ldr r4, [r0, #0x1c]
	ldr r0, [r0, #0x28]
	mov r1, #0x3e
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r2, r5, #0
	mov r3, #6
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #0x44
	add r2, r5, #0
	mov r3, #6
	bl sub_0200710C
	ldr r0, [sp, #0x18]
	mov r1, #0
	bl ov62_02231710
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _022370B4 ; =0x0000726C
	mov r1, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _022370B4 ; =0x0000726C
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x42
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022370B4 ; =0x0000726C
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x47
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022370B4 ; =0x0000726C
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x48
	bl sub_0200CE54
	ldr r0, [sp, #0x18]
	mov r1, #1
	bl ov62_02231710
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022370B8 ; =0x00006E7A
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022370B8 ; =0x00006E7A
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x40
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022370B8 ; =0x00006E7A
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x26
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022370B8 ; =0x00006E7A
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x27
	bl sub_0200CE54
	ldr r3, _022370BC ; =0x02248C84
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x20]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _022370C0 ; =0x02248C70
	str r0, [r2, #0]
	add r2, sp, #0x28
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x1c]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r5, #0
	str r0, [r2, #0]
_02236F4C:
	cmp r5, #3
	bne _02236F8E
	str r7, [sp]
	mov r0, #0x5c
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022370C4 ; =0x00004705
	mov r1, #2
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022370C4 ; =0x00004705
	add r1, r4, #0
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x5b
	bl sub_0200CC3C
	b _02236FD0
_02236F8E:
	mov r0, #0x92
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r1, #2
	ldr r0, [r0, #0]
	add r2, r6, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022370C4 ; =0x00004705
	add r3, r4, #0
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	bl sub_0200CD7C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022370C4 ; =0x00004705
	ldr r3, [sp, #0x1c]
	add r0, r5, r0
	str r0, [sp, #8]
	ldr r3, [r3, #0]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x92
	bl sub_0200D888
_02236FD0:
	ldr r0, [sp, #0x20]
	add r5, r5, #1
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	cmp r5, #5
	blt _02236F4C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022370C4 ; =0x00004705
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x92
	mov r3, #9
	bl sub_0200CE0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022370C4 ; =0x00004705
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x92
	mov r3, #0xa
	bl sub_0200CE3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022370C8 ; =0x00004706
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x59
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022370C8 ; =0x00004706
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x5a
	bl sub_0200CE54
	ldr r1, _022370CC ; =0x0000088C
	ldr r0, [sp, #0x18]
	mov r6, #0xd
	ldr r0, [r0, r1]
	mov r7, #0xe
	bl sub_02030BAC
	ldr r1, [sp, #0x18]
	cmp r0, #0
	ldr r4, [r1, #0x18]
	ldr r5, [r1, #0x1c]
	ldr r1, [r1, #0x28]
	beq _02237050
	mov r6, #0xf
	mov r7, #0x10
_02237050:
	mov r0, #0x92
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022370D0 ; =0x0002869F
	add r2, r4, #0
	str r0, [sp, #0x14]
	add r0, r1, #0
	mov r1, #2
	add r3, r5, #0
	bl sub_0200CD7C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022370D0 ; =0x0002869F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x92
	mov r3, #9
	bl sub_0200CE0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022370D0 ; =0x0002869F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x92
	mov r3, #0xa
	bl sub_0200CE3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022370D0 ; =0x0002869F
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #0x92
	add r3, r7, #0
	bl sub_0200D888
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022370B4: .word 0x0000726C
_022370B8: .word 0x00006E7A
_022370BC: .word 0x02248C84
_022370C0: .word 0x02248C70
_022370C4: .word 0x00004705
_022370C8: .word 0x00004706
_022370CC: .word 0x0000088C
_022370D0: .word 0x0002869F
	thumb_func_end ov62_02236E14

	thumb_func_start ov62_022370D4
ov62_022370D4: ; 0x022370D4
	push {r4, r5, r6, r7}
	add r3, r0, #0
	mov r0, #0
	cmp r1, #0
	ble _022370E6
_022370DE:
	add r0, r0, #1
	add r3, r3, #2
	cmp r0, r1
	blt _022370DE
_022370E6:
	add r7, r1, r2
	cmp r0, r7
	bge _02237126
	mov r1, #0x97
_022370EE:
	ldrh r6, [r3]
	mov r2, #0x1f
	add r0, r0, #1
	asr r4, r6, #0xa
	and r4, r2
	add r5, r4, #0
	mov r2, #0x1d
	mul r5, r2
	mov r2, #0x1f
	and r2, r6
	mov r4, #0x4c
	mul r4, r2
	asr r6, r6, #5
	mov r2, #0x1f
	and r2, r6
	add r6, r2, #0
	mul r6, r1
	add r2, r4, r6
	add r2, r5, r2
	asr r5, r2, #8
	lsl r4, r5, #0xa
	lsl r2, r5, #5
	orr r2, r4
	orr r2, r5
	strh r2, [r3]
	add r3, r3, #2
	cmp r0, r7
	blt _022370EE
_02237126:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov62_022370D4

	thumb_func_start ov62_0223712C
ov62_0223712C: ; 0x0223712C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp]
	ldr r0, [r0, #0x28]
	mov r1, #0x83
	str r0, [sp, #4]
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_020507E4
	add r4, r0, #0
	bl sub_0206B5C8
	str r0, [sp, #0x30]
	add r0, r4, #0
	bl sub_0206B588
	str r0, [sp, #0x34]
	add r0, r4, #0
	bl sub_0206B5B8
	str r0, [sp, #0x38]
	add r0, r4, #0
	bl sub_0206B5A8
	str r0, [sp, #0x3c]
	add r0, r4, #0
	bl sub_0206B598
	ldr r3, _022371C8 ; =0x02248C5C
	str r0, [sp, #0x40]
	ldmia r3!, {r0, r1}
	add r2, sp, #8
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r7, #0
	add r4, sp, #0x30
	add r5, sp, #0x1c
	str r0, [r2, #0]
_02237180:
	ldr r6, [r4, #0]
	cmp r6, #0
	beq _022371B2
	add r3, sp, #8
	ldmia r3!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	cmp r6, #2
	str r0, [r2, #0]
	bne _022371B2
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0x28]
	bl sub_0200316C
	ldr r1, [r5, #0]
	mov r2, #0x10
	add r1, r1, #4
	lsl r1, r1, #0x14
	lsr r1, r1, #0x10
	bl ov62_022370D4
_022371B2:
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #5
	blt _02237180
	ldr r0, [sp, #4]
	mov r1, #1
	bl sub_02003858
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022371C8: .word 0x02248C5C
	thumb_func_end ov62_0223712C

	thumb_func_start ov62_022371CC
ov62_022371CC: ; 0x022371CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r6, [r7, r0]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x20
	strh r0, [r1, #0x28]
	mov r0, #1
	lsl r0, r0, #8
	strh r0, [r1, #0x2a]
	ldr r0, [sp, #0x1c]
	ldr r5, [sp, #0x1c]
	strh r0, [r1, #0x2c]
	strh r0, [r1, #0x2e]
	mov r0, #0xa
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x1c]
	mov r1, #1
	str r0, [sp, #0x54]
	str r0, [sp, #0x74]
	str r0, [sp, #0x78]
	sub r0, r1, #2
	str r0, [sp, #0x6c]
	str r0, [sp, #0x70]
	ldr r0, _02237490 ; =0x0002869F
	str r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	add r4, r6, #0
_02237212:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl sub_0200CE6C
	str r0, [r4, #0x40]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r4, #0x40]
	bl sub_0200D330
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x40]
	add r2, r1, #0
	bl sub_0200D6E8
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #5
	blt _02237212
	mov r5, #0
	add r4, r6, #0
_02237240:
	ldr r0, _02237494 ; =0x00004705
	add r0, r5, r0
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	cmp r5, #3
	bne _02237254
	ldr r0, _02237498 ; =0x00004706
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	b _0223725A
_02237254:
	ldr r0, _02237494 ; =0x00004705
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
_0223725A:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl sub_0200CE6C
	str r0, [r4, #0x54]
	cmp r5, #3
	ldr r0, [r4, #0x54]
	bne _02237274
	mov r1, #0
	bl sub_0200D364
	b _0223727A
_02237274:
	mov r1, #1
	bl sub_0200D364
_0223727A:
	ldr r0, [r4, #0x54]
	bl sub_0200D330
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x54]
	add r2, r1, #0
	bl sub_0200D6E8
	add r1, r5, #0
	ldr r0, [r4, #0x54]
	add r1, #0xa
	bl sub_0200D41C
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #5
	blt _02237240
	ldr r0, _0223749C ; =0x00006E7A
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x6c]
	str r0, [sp, #0x70]
	mov r0, #0x14
	str r0, [sp, #0x50]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl sub_020507E4
	add r4, r0, #0
	bl sub_0206B5C8
	str r0, [sp, #0x7c]
	add r0, r4, #0
	bl sub_0206B588
	str r0, [sp, #0x80]
	add r0, r4, #0
	bl sub_0206B5B8
	str r0, [sp, #0x84]
	add r0, r4, #0
	bl sub_0206B5A8
	str r0, [sp, #0x88]
	add r0, r4, #0
	bl sub_0206B598
	str r0, [sp, #0x8c]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x7c
	ldr r2, _022374A0 ; =0x02248C98
	str r0, [sp, #0x10]
	ldmia r2!, {r0, r1}
	add r3, sp, #0x20
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	add r4, r6, #0
	add r5, sp, #0x34
	str r0, [r3, #0]
_02237300:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl sub_0200CE6C
	str r0, [r4, #0x68]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02237336
	ldr r0, [r4, #0x68]
	mov r1, #5
	bl sub_0200D364
	ldr r0, [r4, #0x68]
	mov r1, #9
	bl sub_0200D41C
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_0200D3F4
	b _02237358
_02237336:
	add r3, sp, #0x20
	ldmia r3!, {r0, r1}
	add r2, sp, #0x34
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x68]
	ldr r1, [r5, #0]
	bl sub_0200D364
	ldr r1, [r5, #0]
	ldr r0, [r4, #0x68]
	add r1, r1, #4
	bl sub_0200D41C
_02237358:
	ldr r0, [r4, #0x68]
	bl sub_0200D330
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x68]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _02237300
	ldr r0, _022374A4 ; =0x0000726C
	mov r4, #0xfa
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x6c]
	str r0, [sp, #0x70]
	mov r0, #2
	str r0, [sp, #0x58]
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x50]
	add r0, r6, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	lsl r4, r4, #2
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r5, sp, #0x90
	str r0, [sp, #8]
_022373AA:
	ldr r0, [sp]
	add r1, r4, #0
	bl _s32_div_f
	str r0, [r5, #0]
	ldr r0, [sp]
	add r1, r4, #0
	bl _s32_div_f
	str r1, [sp]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _022373DC
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _022373DC
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	b _022373E0
_022373DC:
	mov r0, #1
	str r0, [sp, #0x18]
_022373E0:
	ldr r0, [sp, #8]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _022373AA
	mov r0, #0xa
	str r0, [sp, #0xa0]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x58
	add r4, r6, #0
	add r5, sp, #0x90
	str r0, [sp, #0x14]
_022373FC:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl sub_0200CE6C
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _0223741E
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	bge _0223741E
	ldr r0, [r4, #0x7c]
	mov r1, #0
	bl sub_0200D3F4
_0223741E:
	ldr r0, [r4, #0x7c]
	ldr r1, [r5, #0]
	bl sub_0200D364
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #0x7c]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	mov r2, #0x48
	bl ov62_02230E68
	ldr r0, [r4, #0x7c]
	bl sub_0200D330
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #5
	blt _022373FC
	add r0, r6, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r5, #2
	mov r4, #0
	add r7, r5, #0
_0223746C:
	ldr r0, [r6, #0x40]
	add r1, r5, #0
	bl sub_0200D6A4
	ldr r0, [r6, #0x54]
	add r1, r7, #0
	bl sub_0200D6A4
	ldr r0, [r6, #0x68]
	mov r1, #2
	bl sub_0200D6A4
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #5
	blt _0223746C
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02237490: .word 0x0002869F
_02237494: .word 0x00004705
_02237498: .word 0x00004706
_0223749C: .word 0x00006E7A
_022374A0: .word 0x02248C98
_022374A4: .word 0x0000726C
	thumb_func_end ov62_022371CC

	thumb_func_start ov62_022374A8
ov62_022374A8: ; 0x022374A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r7, [r5, r0]
	mov r4, #0
	add r6, r7, #0
_022374B6:
	ldr r1, _02237590 ; =0x00004705
	ldr r0, [r5, #0x1c]
	add r1, r4, r1
	bl sub_0200D070
	ldr r1, _02237590 ; =0x00004705
	ldr r0, [r5, #0x1c]
	add r1, r4, r1
	bl sub_0200D080
	ldr r0, [r6, #0x54]
	bl sub_0200D0F4
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #5
	blt _022374B6
	ldr r0, [r5, #0x1c]
	ldr r1, _02237590 ; =0x00004705
	bl sub_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _02237590 ; =0x00004705
	bl sub_0200D0A0
	ldr r0, [r5, #0x1c]
	ldr r1, _02237594 ; =0x00004706
	bl sub_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _02237594 ; =0x00004706
	bl sub_0200D0A0
	mov r6, #0
	add r4, r7, #0
_022374FC:
	ldr r0, [r4, #0x40]
	bl sub_0200D0F4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _022374FC
	ldr r0, [r5, #0x1c]
	ldr r1, _02237598 ; =0x0002869F
	bl sub_0200D070
	ldr r0, [r5, #0x1c]
	ldr r1, _02237598 ; =0x0002869F
	bl sub_0200D080
	ldr r0, [r5, #0x1c]
	ldr r1, _02237598 ; =0x0002869F
	bl sub_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _02237598 ; =0x0002869F
	bl sub_0200D0A0
	mov r6, #0
	add r4, r7, #0
_0223752E:
	ldr r0, [r4, #0x68]
	bl sub_0200D0F4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _0223752E
	ldr r0, [r5, #0x1c]
	ldr r1, _0223759C ; =0x00006E7A
	bl sub_0200D070
	ldr r0, [r5, #0x1c]
	ldr r1, _0223759C ; =0x00006E7A
	bl sub_0200D080
	ldr r0, [r5, #0x1c]
	ldr r1, _0223759C ; =0x00006E7A
	bl sub_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _0223759C ; =0x00006E7A
	bl sub_0200D0A0
	mov r4, #0
_0223755E:
	ldr r0, [r7, #0x7c]
	bl sub_0200D0F4
	add r4, r4, #1
	add r7, r7, #4
	cmp r4, #5
	blt _0223755E
	ldr r0, [r5, #0x1c]
	ldr r1, _022375A0 ; =0x0000726C
	bl sub_0200D070
	ldr r0, [r5, #0x1c]
	ldr r1, _022375A0 ; =0x0000726C
	bl sub_0200D080
	ldr r0, [r5, #0x1c]
	ldr r1, _022375A0 ; =0x0000726C
	bl sub_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _022375A0 ; =0x0000726C
	bl sub_0200D0A0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237590: .word 0x00004705
_02237594: .word 0x00004706
_02237598: .word 0x0002869F
_0223759C: .word 0x00006E7A
_022375A0: .word 0x0000726C
	thumb_func_end ov62_022374A8

	thumb_func_start ov62_022375A4
ov62_022375A4: ; 0x022375A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r6, #0x5a
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	lsl r6, r6, #2
_022375B8:
	ldr r0, [r5, #0x2c]
	add r1, r6, #0
	add r0, #0x14
	str r0, [r5, #0x2c]
	bl _s32_div_f
	str r1, [r5, #0x2c]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _022375B8
	ldr r0, [sp]
	ldr r1, [sp]
	mov r2, #0
	add r0, #0xd4
	add r1, #0xd8
	add r3, r2, #0
	bl ov62_022315E0
	ldr r5, [sp]
	mov r6, #0
	add r4, sp, #4
_022375E4:
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _022375F6
	ldr r0, [r5, #4]
	ldr r1, _022376C0 ; =0x3D4CCCCD
	bl _f_add
	b _02237612
_022375F6:
	ldr r0, [r5, #0x40]
	mov r1, #0
	bl sub_0200D6A4
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200D6A4
	ldr r0, [r5, #0x68]
	mov r1, #0
	bl sub_0200D6A4
	mov r0, #0xfe
	lsl r0, r0, #0x16
_02237612:
	str r0, [r5, #4]
	ldr r0, [r5, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldr r0, [r5, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x18]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0x6a
	lsl r0, r0, #0xc
	mov r1, #2
	sub r2, r0, r2
	lsl r1, r1, #0x12
	ldr r0, [r5, #0x68]
	add r1, r7, r1
	bl sub_0200D614
	add r1, sp, #4
	ldr r0, [r5, #0x68]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x40]
	sub r1, #0x20
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x54]
	add r1, #0x10
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x68]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x40]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x54]
	add r2, r1, #0
	bl sub_0200D6E8
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #5
	blt _022375E4
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _022376BA
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022376BA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022376C0: .word 0x3D4CCCCD
	thumb_func_end ov62_022375A4

	thumb_func_start ov62_022376C4
ov62_022376C4: ; 0x022376C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r6, #0x5a
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	lsl r6, r6, #2
_022376D8:
	ldr r0, [r5, #0x2c]
	add r1, r6, #0
	add r0, #0x14
	str r0, [r5, #0x2c]
	bl _s32_div_f
	str r1, [r5, #0x2c]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _022376D8
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0x14
	bne _0223771E
	mov r6, #2
	ldr r4, [sp]
	mov r5, #0
	add r7, r6, #0
_022376FE:
	ldr r0, [r4, #0x40]
	add r1, r6, #0
	bl sub_0200D6A4
	ldr r0, [r4, #0x54]
	add r1, r7, #0
	bl sub_0200D6A4
	ldr r0, [r4, #0x68]
	mov r1, #2
	bl sub_0200D6A4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #5
	blt _022376FE
_0223771E:
	ldr r0, [sp]
	ldr r1, [sp]
	add r0, #0xd4
	add r1, #0xd8
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	ldr r5, [sp]
	mov r6, #0
	add r4, sp, #4
_02237734:
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _02237748
	ldr r0, [r5, #4]
	ldr r1, _02237810 ; =0x3D4CCCCD
	bl _f_sub
	str r0, [r5, #4]
	b _02237760
_02237748:
	ldr r0, [r5, #0x68]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x40]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200D3F4
_02237760:
	ldr r0, [r5, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x18]
	add r2, r1, #0
	mul r2, r0
	mov r0, #2
	lsl r0, r0, #0x12
	sub r7, r0, r2
	ldr r0, [r5, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x18]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0x6a
	lsl r0, r0, #0xc
	sub r2, r0, r2
	ldr r0, [r5, #0x68]
	add r1, r7, #0
	bl sub_0200D614
	add r1, sp, #4
	ldr r0, [r5, #0x68]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x40]
	sub r1, #0x20
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x54]
	add r1, #0x10
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x68]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x40]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x54]
	add r2, r1, #0
	bl sub_0200D6E8
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #5
	blt _02237734
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _02237808
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02237808:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237810: .word 0x3D4CCCCD
	thumb_func_end ov62_022376C4

	thumb_func_start ov62_02237814
ov62_02237814: ; 0x02237814
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, _02237880 ; =0x022497C0
	ldr r5, [r0, r1]
	mov r7, #0
	add r6, sp, #0
_02237822:
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x68]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl sub_0200D614
	add r1, sp, #0
	ldr r0, [r5, #0x68]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r5, #0x40]
	sub r1, #0x20
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r5, #0x54]
	add r1, #0x10
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #5
	blt _02237822
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02237880: .word 0x022497C0
	thumb_func_end ov62_02237814

	thumb_func_start ov62_02237884
ov62_02237884: ; 0x02237884
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02237926
	mov r0, #0x66
	mov r1, #0xdc
	bl sub_02018144
	mov r1, #0
	mov r2, #0xdc
	add r5, r0, #0
	bl MI_CpuFill8
	mov r0, #0x86
	lsl r0, r0, #4
	str r5, [r4, r0]
	mov r0, #0
	str r0, [r5, #0]
	add r1, r5, #0
	add r2, r0, #0
	mov r7, #0x40
	mov r6, #0x34
_022378B4:
	sub r3, r0, #2
	cmp r3, #1
	bhi _022378BE
	str r6, [r1, #0x18]
	b _022378C0
_022378BE:
	str r7, [r1, #0x18]
_022378C0:
	ldr r3, _02237AB8 ; =0x3E4CCCCD
	str r2, [r1, #0x2c]
	str r3, [r1, #4]
	add r0, r0, #1
	add r1, r1, #4
	add r2, #0x48
	cmp r0, #5
	blt _022378B4
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd4
	add r1, #0xd8
	mov r2, #0
	bl ov62_022315C8
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd4
	add r1, #0xd8
	add r3, r2, #0
	str r2, [sp, #8]
	bl ov62_02231560
	ldr r0, _02237ABC ; =0x00000561
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223792C
_02237926:
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r4, r0]
_0223792C:
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02237934
	b _02237AA8
_02237934:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02237940: ; jump table
	.short _02237AA8 - _02237940 - 2 ; case 0
	.short _0223794A - _02237940 - 2 ; case 1
	.short _022379BE - _02237940 - 2 ; case 2
	.short _02237A1A - _02237940 - 2 ; case 3
	.short _02237A5E - _02237940 - 2 ; case 4
_0223794A:
	add r0, r5, #0
	mov r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02237974
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0202D750
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D230
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02237974:
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02237AB0
_022379BE:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_02231454
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	mov r1, #0
	bl ov62_0223376C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	bl ov62_02234314
	mov r0, #6
	mov r1, #2
	bl sub_02019060
	add r0, r4, #0
	bl ov62_02236E14
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0x1c
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237AB0
_02237A1A:
	add r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _02237AB0
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_02236D48
	add r0, r4, #0
	bl ov62_022371CC
	add r0, r4, #0
	bl ov62_0223712C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237AB0
_02237A5E:
	add r0, r4, #0
	bl ov62_022375A4
	add r6, r0, #0
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #0
	add r0, #0xd4
	add r1, #0xd8
	add r3, r2, #0
	bl ov62_022315E0
	add r0, r5, #0
	mov r1, #0
	bl ov62_02231664
	cmp r6, #0
	bne _02237A8E
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov62_02237814
_02237A8E:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0x1c
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02237AB0
_02237AA8:
	add r0, r4, #0
	mov r1, #1
	bl ov62_0222FB60
_02237AB0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02237AB8: .word 0x3E4CCCCD
_02237ABC: .word 0x00000561
	thumb_func_end ov62_02237884

	thumb_func_start ov62_02237AC0
ov62_02237AC0: ; 0x02237AC0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_020227C0
	cmp r0, #0
	beq _02237AF4
	ldr r0, [sp, #4]
	cmp r0, #0x50
	bls _02237AF4
	cmp r0, #0xb0
	bhs _02237AF4
	ldr r0, [sp]
	cmp r0, #0x98
	bls _02237AF4
	cmp r0, #0xb0
	bhs _02237AF4
	ldr r0, _02237AFC ; =0x00000563
	bl sub_02005748
	add r0, r4, #0
	mov r1, #2
	bl ov62_0222FB60
_02237AF4:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_02237AFC: .word 0x00000563
	thumb_func_end ov62_02237AC0

	thumb_func_start ov62_02237B00
ov62_02237B00: ; 0x02237B00
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02237B12
	b _02237C76
_02237B12:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02237B1E: ; jump table
	.short _02237B28 - _02237B1E - 2 ; case 0
	.short _02237B86 - _02237B1E - 2 ; case 1
	.short _02237B8A - _02237B1E - 2 ; case 2
	.short _02237BD2 - _02237B1E - 2 ; case 3
	.short _02237C16 - _02237B1E - 2 ; case 4
_02237B28:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _02237B34
	ldr r0, _02237D14 ; =0x00000562
	bl sub_02005748
_02237B34:
	ldr r0, [r5, #0]
	cmp r0, #0x10
	beq _02237B3E
	add r0, r0, #2
	str r0, [r5, #0]
_02237B3E:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0x1c
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02237D18 ; =0x00004018
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	add r0, r4, #0
	bl ov62_022376C4
	cmp r0, #0
	beq _02237B7A
	b _02237D0E
_02237B7A:
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237D0E
_02237B86:
	add r0, r0, #1
	str r0, [r4, #8]
_02237B8A:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_022374A8
	add r0, r4, #0
	bl ov62_02236DE8
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237D0E
_02237BD2:
	mov r0, #1
	bl ov62_0222F824
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223146C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237D0E
_02237C16:
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _02237C22
	sub r0, r1, #2
	str r0, [r5, #0]
	b _02237D0E
_02237C22:
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0x1c
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02237D0E
_02237C76:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02237CDE
	mov r0, #8
	str r0, [sp]
	ldr r0, _02237D1C ; =0x04000050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
	mov r0, #8
	str r0, [sp]
	ldr r0, _02237D20 ; =0x04001050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl ov62_022318E8
	add r0, r5, #0
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
	b _02237D0E
_02237CDE:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #0]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
_02237D0E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02237D14: .word 0x00000562
_02237D18: .word 0x00004018
_02237D1C: .word 0x04000050
_02237D20: .word 0x04001050
	thumb_func_end ov62_02237B00

	.rodata


	.global Unk_ov62_02248C50
Unk_ov62_02248C50: ; 0x02248C50
	.incbin "incbin/overlay62_rodata.bin", 0x524, 0x530 - 0x524

	.global Unk_ov62_02248C5C
Unk_ov62_02248C5C: ; 0x02248C5C
	.incbin "incbin/overlay62_rodata.bin", 0x530, 0x544 - 0x530

	.global Unk_ov62_02248C70
Unk_ov62_02248C70: ; 0x02248C70
	.incbin "incbin/overlay62_rodata.bin", 0x544, 0x558 - 0x544

	.global Unk_ov62_02248C84
Unk_ov62_02248C84: ; 0x02248C84
	.incbin "incbin/overlay62_rodata.bin", 0x558, 0x56C - 0x558

	.global Unk_ov62_02248C98
Unk_ov62_02248C98: ; 0x02248C98
	.incbin "incbin/overlay62_rodata.bin", 0x56C, 0x14


	.data


	.global Unk_ov62_022497C0
Unk_ov62_022497C0: ; 0x022497C0
	.incbin "incbin/overlay62_data.bin", 0x0, 0x14

