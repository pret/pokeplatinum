	.include "macros/function.inc"
	.include "include/ov23_02253D40.inc"

	

	.text


	thumb_func_start ov23_02253D40
ov23_02253D40: ; 0x02253D40
	ldr r0, _02253D44 ; =0x022569E0
	bx lr
	; .align 2, 0
_02253D44: .word 0x022569E0
	thumb_func_end ov23_02253D40

	thumb_func_start ov23_02253D48
ov23_02253D48: ; 0x02253D48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x48
	add r7, r2, #0
	str r3, [sp, #4]
	ldr r6, [sp, #0x20]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x48
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02253D70
	mov r6, #0xe6
_02253D70:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02023790
	str r0, [r4, #0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02023790
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0200B358
	str r0, [r4, #0x28]
	ldr r0, [sp]
	ldr r2, [sp]
	str r0, [r4, #0x2c]
	mov r0, #1
	mov r1, #0x1a
	add r3, r5, #0
	bl sub_0200B144
	str r0, [r4, #0x24]
	str r5, [r4, #0x34]
	add r0, r4, #0
	str r7, [r4, #0x18]
	add r0, #8
	bl sub_0201A7A0
	ldr r1, [r4, #0x44]
	mov r0, #1
	bic r1, r0
	mov r0, #2
	bic r1, r0
	str r1, [r4, #0x44]
	mov r0, #0
	str r0, [r4, #0x20]
	ldr r0, [sp, #4]
	ldr r1, _02253DD4 ; =0x0000032D
	str r0, [r4, #0x38]
	add r0, r4, #0
	add r0, #0x40
	strh r1, [r0]
	add r0, r4, #0
	add r1, #0xb5
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02253DD4: .word 0x0000032D
	thumb_func_end ov23_02253D48

	thumb_func_start ov23_02253DD8
ov23_02253DD8: ; 0x02253DD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020237BC
	ldr r0, [r4, #4]
	bl sub_020237BC
	ldr r0, [r4, #0x28]
	bl sub_0200B3F0
	ldr r0, [r4, #0x24]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov23_02253DD8

	thumb_func_start ov23_02253DFC
ov23_02253DFC: ; 0x02253DFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, r4
	beq _02253E28
	str r4, [r5, #0x2c]
	ldr r0, [r5, #0x24]
	bl sub_0200B190
	ldr r3, [r5, #0x34]
	add r0, r6, #0
	mov r1, #0x1a
	add r2, r4, #0
	bl sub_0200B144
	str r0, [r5, #0x24]
	cmp r0, #0
	bne _02253E28
	bl sub_02022974
_02253E28:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02253DFC

	thumb_func_start ov23_02253E2C
ov23_02253E2C: ; 0x02253E2C
	str r1, [r0, #0x18]
	add r1, r0, #0
	add r1, #0x42
	strh r2, [r1]
	add r0, #0x40
	strh r3, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02253E2C

	thumb_func_start ov23_02253E3C
ov23_02253E3C: ; 0x02253E3C
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov23_02253E3C

	thumb_func_start ov23_02253E40
ov23_02253E40: ; 0x02253E40
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x30]
	cmp r0, #8
	bge _02253E56
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02253E66
_02253E56:
	ldr r0, _02253E68 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02253E66
	add r0, r4, #0
	bl ov23_02254044
_02253E66:
	pop {r4, pc}
	; .align 2, 0
_02253E68: .word 0x021BF67C
	thumb_func_end ov23_02253E40

	thumb_func_start ov23_02253E6C
ov23_02253E6C: ; 0x02253E6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	ldr r2, [r4, #0]
	lsl r0, r0, #0x1e
	asr r0, r0, #0x1f
	beq _02253E8C
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #4]
	bl sub_0200C388
	ldr r1, [r4, #0x44]
	mov r0, #2
	ldr r2, [r4, #4]
	bic r1, r0
	str r1, [r4, #0x44]
_02253E8C:
	add r0, r2, #0
	pop {r4, pc}
	thumb_func_end ov23_02253E6C

	thumb_func_start ov23_02253E90
ov23_02253E90: ; 0x02253E90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov23_02253FA4
	bl ov23_022421EC
	add r0, r5, #0
	add r0, #8
	bl sub_0201A7CC
	cmp r0, #0
	bne _02253ED8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x40
	ldrh r0, [r0]
	add r1, r5, #0
	add r1, #8
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	mov r2, #3
	mov r3, #2
	bl sub_0201A7E8
_02253ED8:
	add r0, r5, #0
	add r0, #8
	mov r1, #0xf
	bl sub_0201ADA4
	add r2, r5, #0
	add r2, #0x42
	add r0, r5, #0
	ldrh r2, [r2]
	add r0, #8
	mov r1, #1
	mov r3, #0xa
	bl sub_0200E060
	cmp r4, #0
	beq _02253F04
	ldr r0, _02253F3C ; =ov23_02253E40
	add r1, r5, #0
	mov r2, #0x64
	bl sub_0200D9E8
	str r0, [r5, #0x20]
_02253F04:
	ldr r1, [r5, #0x44]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r1, r0
	mov r0, #4
	bic r1, r0
	add r0, r5, #0
	str r1, [r5, #0x44]
	bl ov23_02253E6C
	mov r3, #0
	str r3, [sp]
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	mov r1, #1
	str r0, [sp, #4]
	add r0, r5, #0
	str r3, [sp, #8]
	add r0, #8
	bl sub_0201D738
	str r0, [r5, #0x30]
	str r6, [r5, #0x1c]
	str r7, [r5, #0x3c]
	ldr r0, [r5, #0x30]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02253F3C: .word ov23_02253E40
	thumb_func_end ov23_02253E90

	thumb_func_start ov23_02253F40
ov23_02253F40: ; 0x02253F40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0]
	add r6, r3, #0
	bl sub_0200B1B8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ov23_02253E90
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02253F40

	thumb_func_start ov23_02253F60
ov23_02253F60: ; 0x02253F60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x38]
	mov r6, #0
	str r6, [r5, #0x38]
	bl ov23_02253F40
	mov r1, #8
	str r1, [r5, #0x30]
	str r4, [r5, #0x38]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02253F60

	thumb_func_start ov23_02253F78
ov23_02253F78: ; 0x02253F78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0]
	add r6, r3, #0
	bl sub_0200B1B8
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov23_02253E90
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02253F78

	thumb_func_start ov23_02253F98
ov23_02253F98: ; 0x02253F98
	ldr r2, [r0, #0x44]
	mov r1, #4
	orr r1, r2
	str r1, [r0, #0x44]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02253F98

	thumb_func_start ov23_02253FA4
ov23_02253FA4: ; 0x02253FA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x44]
	lsl r0, r1, #0x1f
	asr r0, r0, #0x1f
	beq _02254040
	mov r0, #1
	bic r1, r0
	str r1, [r5, #0x44]
	ldr r0, [r5, #0x30]
	cmp r0, #8
	bge _02253FD4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02253FD4
	ldr r0, [r5, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_02253FD4:
	cmp r4, #0
	beq _02253FE2
	cmp r4, #1
	beq _02253FEE
	cmp r4, #2
	beq _0225400A
	b _02254024
_02253FE2:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl sub_0200E084
	b _02254024
_02253FEE:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	add r0, #8
	bl sub_0201ACF4
	add r0, r5, #0
	add r0, #8
	bl sub_0201A8FC
	b _02254024
_0225400A:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	add r0, #8
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #8
	bl sub_0201A8FC
_02254024:
	mov r0, #8
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02254036
	bl sub_0200DA58
	mov r0, #0
	str r0, [r5, #0x20]
_02254036:
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _02254040
	ldr r0, [r5, #0x3c]
	blx r1
_02254040:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02253FA4

	thumb_func_start ov23_02254044
ov23_02254044: ; 0x02254044
	ldr r3, _0225404C ; =ov23_02253FA4
	mov r1, #2
	bx r3
	nop
_0225404C: .word ov23_02253FA4
	thumb_func_end ov23_02254044

	thumb_func_start ov23_02254050
ov23_02254050: ; 0x02254050
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #1
	bl sub_0200B498
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_02254050

	thumb_func_start ov23_02254068
ov23_02254068: ; 0x02254068
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #0
	bl sub_0200B498
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_02254068

	thumb_func_start ov23_02254080
ov23_02254080: ; 0x02254080
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #2
	bl sub_0200BACC
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_02254080

	thumb_func_start ov23_02254098
ov23_02254098: ; 0x02254098
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #3
	bl sub_0200BB04
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_02254098

	thumb_func_start ov23_022540B0
ov23_022540B0: ; 0x022540B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #5
	bl sub_0200BC10
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022540B0

	thumb_func_start ov23_022540C8
ov23_022540C8: ; 0x022540C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #5
	bl sub_0200BC48
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022540C8

	thumb_func_start ov23_022540E0
ov23_022540E0: ; 0x022540E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BC48
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022540E0

	thumb_func_start ov23_022540F4
ov23_022540F4: ; 0x022540F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #2
	bl sub_0200BC80
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022540F4

	thumb_func_start ov23_0225410C
ov23_0225410C: ; 0x0225410C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r0, [r4, #0x28]
	bl sub_0200B60C
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov23_0225410C

	thumb_func_start ov23_0225412C
ov23_0225412C: ; 0x0225412C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, r1, #0
	ldr r0, [r4, #0x28]
	mov r1, #6
	mov r3, #2
	bl sub_0200B60C
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0225412C

	thumb_func_start ov23_02254154
ov23_02254154: ; 0x02254154
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	mov r3, #2
	bl sub_0200B60C
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02254154

	thumb_func_start ov23_02254178
ov23_02254178: ; 0x02254178
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	add r2, r1, #0
	str r0, [sp, #4]
	mov r1, #6
	ldr r0, [r4, #0x28]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02254178

	thumb_func_start ov23_022541A0
ov23_022541A0: ; 0x022541A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BA94
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022541A0

	thumb_func_start ov23_022541B4
ov23_022541B4: ; 0x022541B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BB04
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022541B4

	thumb_func_start ov23_022541C8
ov23_022541C8: ; 0x022541C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BC80
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022541C8

	thumb_func_start ov23_022541DC
ov23_022541DC: ; 0x022541DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BACC
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022541DC

	thumb_func_start ov23_022541F0
ov23_022541F0: ; 0x022541F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BB3C
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022541F0

	thumb_func_start ov23_02254204
ov23_02254204: ; 0x02254204
	ldr r3, _0225420C ; =sub_0200C324
	ldr r0, [r0, #0x28]
	bx r3
	nop
_0225420C: .word sub_0200C324
	thumb_func_end ov23_02254204

	thumb_func_start ov23_02254210
ov23_02254210: ; 0x02254210
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #8
	bge _02254234
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02254234
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
	mov r0, #8
	str r0, [r4, #0x30]
_02254234:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02254210

	thumb_func_start ov23_02254238
ov23_02254238: ; 0x02254238
	push {r3, lr}
	ldr r0, [r0, #0x30]
	cmp r0, #8
	bne _02254244
	mov r0, #0
	pop {r3, pc}
_02254244:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_02254238

	thumb_func_start ov23_02254250
ov23_02254250: ; 0x02254250
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #8
	bge _0225426A
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0225426A
	mov r0, #8
	str r0, [r4, #0x30]
_0225426A:
	pop {r4, pc}
	thumb_func_end ov23_02254250

	.rodata


	.global Unk_ov23_022569E0
Unk_ov23_022569E0: ; 0x022569E0
	.incbin "incbin/overlay23_rodata.bin", 0x6D4, 0x20

