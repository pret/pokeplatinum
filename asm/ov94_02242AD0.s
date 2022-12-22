	.include "macros/function.inc"
	.include "include/ov94_02242AD0.inc"

	

	.text


	thumb_func_start ov94_02242AD0
ov94_02242AD0: ; 0x02242AD0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_02242D84
	ldr r0, [r4, #4]
	bl ov94_02242B54
	add r0, r4, #0
	bl ov94_02242CAC
	add r0, r4, #0
	bl ov94_02242D38
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	add r0, r4, #0
	bl ov94_02245934
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02242AD0

	thumb_func_start ov94_02242B14
ov94_02242B14: ; 0x02242B14
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223C4B4
	bl sub_020397B0
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02242B30 ; =0x022469A0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_02242B30: .word 0x022469A0
	thumb_func_end ov94_02242B14

	thumb_func_start ov94_02242B34
ov94_02242B34: ; 0x02242B34
	push {r4, lr}
	add r4, r0, #0
	bl ov94_02242D98
	add r0, r4, #0
	bl ov94_02242D74
	ldr r0, [r4, #4]
	bl ov94_02242C80
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02242B34

	thumb_func_start ov94_02242B54
ov94_02242B54: ; 0x02242B54
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _02242C68 ; =0x02246278
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02242C6C ; =0x022462C0
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _02242C70 ; =0x022462A4
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02242C74 ; =0x022462F8
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02242C78 ; =0x022462DC
	add r3, sp, #0x1c
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
	ldr r5, _02242C7C ; =0x02246288
	add r3, sp, #0
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
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_02242C68: .word 0x02246278
_02242C6C: .word 0x022462C0
_02242C70: .word 0x022462A4
_02242C74: .word 0x022462F8
_02242C78: .word 0x022462DC
_02242C7C: .word 0x02246288
	thumb_func_end ov94_02242B54

	thumb_func_start ov94_02242C80
ov94_02242C80: ; 0x02242C80
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov94_02242C80

	thumb_func_start ov94_02242CAC
ov94_02242CAC: ; 0x02242CAC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, [r5, #4]
	mov r0, #0x60
	mov r1, #0
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	mov r0, #0x68
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02006E84
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	ldr r0, _02242D34 ; =0x00001090
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02242D24
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF74
_02242D24:
	ldr r0, [r5, #0x20]
	cmp r0, #9
	bne _02242D30
	add r0, r5, #0
	bl ov94_0223D068
_02242D30:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242D34: .word 0x00001090
	thumb_func_end ov94_02242CAC

	thumb_func_start ov94_02242D38
ov94_02242D38: ; 0x02242D38
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _02242D70 ; =0x00000EFC
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _02242D70 ; =0x00000EFC
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02242D70: .word 0x00000EFC
	thumb_func_end ov94_02242D38

	thumb_func_start ov94_02242D74
ov94_02242D74: ; 0x02242D74
	ldr r1, _02242D7C ; =0x00000EFC
	ldr r3, _02242D80 ; =sub_0201A8FC
	add r0, r0, r1
	bx r3
	; .align 2, 0
_02242D7C: .word 0x00000EFC
_02242D80: .word sub_0201A8FC
	thumb_func_end ov94_02242D74

	thumb_func_start ov94_02242D84
ov94_02242D84: ; 0x02242D84
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov94_02242D84

	thumb_func_start ov94_02242D98
ov94_02242D98: ; 0x02242D98
	mov r1, #0xbb
	lsl r1, r1, #4
	ldr r3, _02242DA4 ; =sub_020237BC
	ldr r0, [r0, r1]
	bx r3
	nop
_02242DA4: .word sub_020237BC
	thumb_func_end ov94_02242D98

	thumb_func_start ov94_02242DA8
ov94_02242DA8: ; 0x02242DA8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0xc
	bhi _02242E80
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242DC0: ; jump table
	.short _02242E80 - _02242DC0 - 2 ; case 0
	.short _02242E80 - _02242DC0 - 2 ; case 1
	.short _02242E80 - _02242DC0 - 2 ; case 2
	.short _02242E80 - _02242DC0 - 2 ; case 3
	.short _02242E80 - _02242DC0 - 2 ; case 4
	.short _02242E80 - _02242DC0 - 2 ; case 5
	.short _02242E80 - _02242DC0 - 2 ; case 6
	.short _02242DDA - _02242DC0 - 2 ; case 7
	.short _02242DF6 - _02242DC0 - 2 ; case 8
	.short _02242E12 - _02242DC0 - 2 ; case 9
	.short _02242E2E - _02242DC0 - 2 ; case 10
	.short _02242E50 - _02242DC0 - 2 ; case 11
	.short _02242E66 - _02242DC0 - 2 ; case 12
_02242DDA:
	ldr r1, _02242E90 ; =0x00000F0F
	mov r2, #0x18
	str r1, [sp]
	ldr r1, _02242E94 ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #2
	bl ov94_0223C3F4
	b _02242E84
_02242DF6:
	ldr r1, _02242E90 ; =0x00000F0F
	mov r2, #0x18
	str r1, [sp]
	ldr r1, _02242E94 ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #7
	bl ov94_0223C3F4
	b _02242E84
_02242E12:
	ldr r1, _02242E90 ; =0x00000F0F
	mov r2, #0x18
	str r1, [sp]
	ldr r1, _02242E94 ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0xc
	bl ov94_0223C3F4
	b _02242E84
_02242E2E:
	ldr r1, _02242E90 ; =0x00000F0F
	mov r2, #0x18
	str r1, [sp]
	ldr r1, _02242E94 ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x12
	bl ov94_0223C3F4
	ldr r0, _02242E98 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	b _02242E84
_02242E50:
	ldr r1, _02242E90 ; =0x00000F0F
	mov r2, #0x18
	str r1, [sp]
	ldr r1, _02242E94 ; =0x00000B94
	mov r3, #0
	ldr r1, [r4, r1]
	bl ov94_02245824
	mov r0, #0x18
	str r0, [r4, #0x2c]
	b _02242E84
_02242E66:
	ldr r1, _02242E90 ; =0x00000F0F
	mov r2, #0x8e
	str r1, [sp]
	ldr r1, _02242E94 ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl ov94_02245824
	mov r0, #1
	str r0, [r4, #0x18]
	mov r0, #0x1d
	str r0, [r4, #0x2c]
	b _02242E84
_02242E80:
	bl GF_AssertFail
_02242E84:
	add r0, r4, #0
	bl ov94_0223C5D8
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02242E90: .word 0x00000F0F
_02242E94: .word 0x00000B94
_02242E98: .word 0x000010B0
	thumb_func_end ov94_02242DA8

	thumb_func_start ov94_02242E9C
ov94_02242E9C: ; 0x02242E9C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0207893C
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_0223B7E4
	mov r0, #3
	str r0, [r4, #0x2c]
	ldr r0, _02242ECC ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #4
	mov r2, #6
	bl ov94_02243EC8
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02242ECC: .word 0x00001484
	thumb_func_end ov94_02242E9C

	thumb_func_start ov94_02242ED0
ov94_02242ED0: ; 0x02242ED0
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _02242F58
	bl ov94_0223B7D8
	ldr r1, _02242F74 ; =0x00001484
	mov r2, #0
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xf
	cmp r1, #0xf
	bhi _02242F6E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242EFA: ; jump table
	.short _02242F4A - _02242EFA - 2 ; case 0
	.short _02242F4A - _02242EFA - 2 ; case 1
	.short _02242F52 - _02242EFA - 2 ; case 2
	.short _02242F42 - _02242EFA - 2 ; case 3
	.short _02242F3A - _02242EFA - 2 ; case 4
	.short _02242F3A - _02242EFA - 2 ; case 5
	.short _02242F3A - _02242EFA - 2 ; case 6
	.short _02242F3A - _02242EFA - 2 ; case 7
	.short _02242F3A - _02242EFA - 2 ; case 8
	.short _02242F3A - _02242EFA - 2 ; case 9
	.short _02242F3A - _02242EFA - 2 ; case 10
	.short _02242F42 - _02242EFA - 2 ; case 11
	.short _02242F6E - _02242EFA - 2 ; case 12
	.short _02242F4A - _02242EFA - 2 ; case 13
	.short _02242F32 - _02242EFA - 2 ; case 14
	.short _02242F1A - _02242EFA - 2 ; case 15
_02242F1A:
	add r0, r4, #0
	mov r1, #1
	bl ov94_02243B08
	ldr r0, [r4, #0]
	mov r1, #0x2c
	ldr r0, [r0, #0x28]
	bl sub_0202CF28
	mov r0, #0x1e
	str r0, [r4, #0x2c]
	b _02242F6E
_02242F32:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _02242F6E
_02242F3A:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _02242F6E
_02242F42:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _02242F6E
_02242F4A:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _02242F6E
_02242F52:
	bl sub_02038A0C
	b _02242F6E
_02242F58:
	ldr r0, _02242F74 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02242F6E
	bl sub_02038A0C
_02242F6E:
	mov r0, #3
	pop {r4, pc}
	nop
_02242F74: .word 0x00001484
	thumb_func_end ov94_02242ED0

	thumb_func_start ov94_02242F78
ov94_02242F78: ; 0x02242F78
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B834
	mov r0, #5
	str r0, [r4, #0x2c]
	ldr r0, _02242F94 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	strh r0, [r4, #0x36]
	mov r0, #3
	pop {r4, pc}
	nop
_02242F94: .word 0x00001484
	thumb_func_end ov94_02242F78

	thumb_func_start ov94_02242F98
ov94_02242F98: ; 0x02242F98
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _02242FFE
	bl ov94_0223B7D8
	ldr r1, _02243018 ; =0x00001484
	mov r2, #0
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xf
	cmp r1, #0xf
	bhi _02243014
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242FC2: ; jump table
	.short _02242FF0 - _02242FC2 - 2 ; case 0
	.short _02242FF0 - _02242FC2 - 2 ; case 1
	.short _02242FF8 - _02242FC2 - 2 ; case 2
	.short _02242FE8 - _02242FC2 - 2 ; case 3
	.short _02243014 - _02242FC2 - 2 ; case 4
	.short _02243014 - _02242FC2 - 2 ; case 5
	.short _02243014 - _02242FC2 - 2 ; case 6
	.short _02243014 - _02242FC2 - 2 ; case 7
	.short _02243014 - _02242FC2 - 2 ; case 8
	.short _02243014 - _02242FC2 - 2 ; case 9
	.short _02242FF0 - _02242FC2 - 2 ; case 10
	.short _02242FE8 - _02242FC2 - 2 ; case 11
	.short _02242FF0 - _02242FC2 - 2 ; case 12
	.short _02242FF0 - _02242FC2 - 2 ; case 13
	.short _02242FF0 - _02242FC2 - 2 ; case 14
	.short _02242FE2 - _02242FC2 - 2 ; case 15
_02242FE2:
	mov r0, #0x21
	str r0, [r4, #0x2c]
	b _02243014
_02242FE8:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _02243014
_02242FF0:
	mov r0, #4
	bl sub_02038AE0
	b _02243014
_02242FF8:
	bl sub_02038A0C
	b _02243014
_02242FFE:
	ldr r0, _02243018 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02243014
	bl sub_02038A0C
_02243014:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02243018: .word 0x00001484
	thumb_func_end ov94_02242F98

	thumb_func_start ov94_0224301C
ov94_0224301C: ; 0x0224301C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_0223B888
	mov r0, #8
	str r0, [r4, #0x2c]
	ldr r0, _02243044 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0xb
	bl ov94_02243EC8
	mov r0, #3
	pop {r4, pc}
	nop
_02243044: .word 0x00001484
	thumb_func_end ov94_0224301C

	thumb_func_start ov94_02243048
ov94_02243048: ; 0x02243048
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _022430E0
	bl ov94_0223B7D8
	ldr r1, _022430FC ; =0x00001484
	mov r2, #0
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xf
	cmp r1, #0xf
	bhi _022430F6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02243072: ; jump table
	.short _022430D2 - _02243072 - 2 ; case 0
	.short _022430D2 - _02243072 - 2 ; case 1
	.short _022430DA - _02243072 - 2 ; case 2
	.short _022430CA - _02243072 - 2 ; case 3
	.short _022430F6 - _02243072 - 2 ; case 4
	.short _022430F6 - _02243072 - 2 ; case 5
	.short _022430F6 - _02243072 - 2 ; case 6
	.short _022430F6 - _02243072 - 2 ; case 7
	.short _022430F6 - _02243072 - 2 ; case 8
	.short _022430F6 - _02243072 - 2 ; case 9
	.short _022430F6 - _02243072 - 2 ; case 10
	.short _022430C4 - _02243072 - 2 ; case 11
	.short _022430BE - _02243072 - 2 ; case 12
	.short _022430D2 - _02243072 - 2 ; case 13
	.short _022430F6 - _02243072 - 2 ; case 14
	.short _02243092 - _02243072 - 2 ; case 15
_02243092:
	ldr r0, _02243100 ; =0x00000251
	ldrsb r5, [r4, r0]
	cmp r5, #0
	beq _022430A0
	mov r0, #0x18
	str r0, [r4, #0x2c]
	b _022430F6
_022430A0:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0202DAAC
	mov r1, #0x13
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, r4, #0
	add r1, r4, r1
	add r3, r5, #0
	bl ov94_02243BC4
	mov r0, #0x1e
	str r0, [r4, #0x2c]
	b _022430F6
_022430BE:
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _022430F6
_022430C4:
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _022430F6
_022430CA:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _022430F6
_022430D2:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _022430F6
_022430DA:
	bl sub_02038A0C
	b _022430F6
_022430E0:
	ldr r0, _022430FC ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _022430F6
	bl sub_02038A0C
_022430F6:
	mov r0, #3
	pop {r3, r4, r5, pc}
	nop
_022430FC: .word 0x00001484
_02243100: .word 0x00000251
	thumb_func_end ov94_02243048

	thumb_func_start ov94_02243104
ov94_02243104: ; 0x02243104
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B96C
	mov r0, #0xa
	str r0, [r4, #0x2c]
	ldr r0, _0224311C ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_0224311C: .word 0x00001484
	thumb_func_end ov94_02243104

	thumb_func_start ov94_02243120
ov94_02243120: ; 0x02243120
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _02243184
	bl ov94_0223B7D8
	ldr r1, _022431A0 ; =0x00001484
	mov r2, #0
	add r0, #0xf
	str r2, [r4, r1]
	cmp r0, #0xf
	bhi _0224319A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02243148: ; jump table
	.short _02243176 - _02243148 - 2 ; case 0
	.short _02243176 - _02243148 - 2 ; case 1
	.short _0224317E - _02243148 - 2 ; case 2
	.short _02243176 - _02243148 - 2 ; case 3
	.short _0224319A - _02243148 - 2 ; case 4
	.short _0224319A - _02243148 - 2 ; case 5
	.short _0224319A - _02243148 - 2 ; case 6
	.short _0224319A - _02243148 - 2 ; case 7
	.short _0224319A - _02243148 - 2 ; case 8
	.short _0224319A - _02243148 - 2 ; case 9
	.short _0224316E - _02243148 - 2 ; case 10
	.short _0224316E - _02243148 - 2 ; case 11
	.short _0224316E - _02243148 - 2 ; case 12
	.short _02243176 - _02243148 - 2 ; case 13
	.short _0224319A - _02243148 - 2 ; case 14
	.short _02243168 - _02243148 - 2 ; case 15
_02243168:
	mov r0, #0x21
	str r0, [r4, #0x2c]
	b _0224319A
_0224316E:
	mov r0, #3
	bl sub_02038AE0
	b _0224319A
_02243176:
	mov r0, #4
	bl sub_02038AE0
	b _0224319A
_0224317E:
	bl sub_02038A0C
	b _0224319A
_02243184:
	ldr r0, _022431A0 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0224319A
	bl sub_02038A0C
_0224319A:
	mov r0, #3
	pop {r4, pc}
	nop
_022431A0: .word 0x00001484
	thumb_func_end ov94_02243120

	thumb_func_start ov94_022431A4
ov94_022431A4: ; 0x022431A4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0207893C
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	add r0, r1, #4
	mul r0, r2
	add r2, r4, r0
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r2, #0xa5
	add r1, #0x10
	lsl r2, r2, #4
	add r1, r4, r1
	add r2, r4, r2
	bl ov94_0223BA88
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0x10
	bl ov94_02243EC8
	mov r0, #0xd
	str r0, [r4, #0x2c]
	ldr r0, _022431EC ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022431EC: .word 0x00001484
	thumb_func_end ov94_022431A4

	thumb_func_start ov94_022431F0
ov94_022431F0: ; 0x022431F0
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _022432BA
	bl ov94_0223B7D8
	ldr r2, _022432D4 ; =0x00001484
	mov r1, #0
	str r1, [r4, r2]
	add r2, r0, #0
	add r2, #0xf
	cmp r2, #0xf
	bhi _022432D0
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224321A: ; jump table
	.short _022432AC - _0224321A - 2 ; case 0
	.short _022432AC - _0224321A - 2 ; case 1
	.short _022432B4 - _0224321A - 2 ; case 2
	.short _022432A4 - _0224321A - 2 ; case 3
	.short _0224329C - _0224321A - 2 ; case 4
	.short _0224329C - _0224321A - 2 ; case 5
	.short _0224329C - _0224321A - 2 ; case 6
	.short _0224329C - _0224321A - 2 ; case 7
	.short _0224329C - _0224321A - 2 ; case 8
	.short _0224329C - _0224321A - 2 ; case 9
	.short _02243294 - _0224321A - 2 ; case 10
	.short _022432D0 - _0224321A - 2 ; case 11
	.short _022432D0 - _0224321A - 2 ; case 12
	.short _022432AC - _0224321A - 2 ; case 13
	.short _022432D0 - _0224321A - 2 ; case 14
	.short _0224323A - _0224321A - 2 ; case 15
_0224323A:
	mov r0, #0x1e
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl ov94_02243B08
	mov r2, #0x45
	lsl r2, r2, #2
	mov r1, #0xa5
	lsl r1, r1, #4
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, r4, r1
	bl ov94_02243CE4
	ldr r0, [r4, #0]
	mov r1, #0xa5
	lsl r1, r1, #4
	ldr r0, [r0, #0x18]
	add r1, r4, r1
	bl ov94_02243E2C
	ldr r0, [r4, #0]
	mov r1, #0x19
	ldr r0, [r0, #0x28]
	bl sub_0202CFEC
	ldr r0, [r4, #0]
	mov r1, #0xa5
	lsl r1, r1, #4
	ldr r0, [r0, #0x2c]
	add r1, r4, r1
	bl ov94_02243E48
	ldr r0, [r4, #0]
	mov r1, #0x18
	ldr r0, [r0, #0x28]
	bl sub_0202CF28
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0202440C
	bl sub_0206D104
	b _022432D0
_02243294:
	str r0, [r4, #0x3c]
	mov r0, #0x11
	str r0, [r4, #0x2c]
	b _022432D0
_0224329C:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _022432D0
_022432A4:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _022432D0
_022432AC:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _022432D0
_022432B4:
	bl sub_02038A0C
	b _022432D0
_022432BA:
	ldr r0, _022432D4 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _022432D0
	bl sub_02038A0C
_022432D0:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_022432D4: .word 0x00001484
	thumb_func_end ov94_022431F0

	thumb_func_start ov94_022432D8
ov94_022432D8: ; 0x022432D8
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223BAEC
	mov r0, #0xf
	str r0, [r4, #0x2c]
	ldr r0, _022432F0 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022432F0: .word 0x00001484
	thumb_func_end ov94_022432D8

	thumb_func_start ov94_022432F4
ov94_022432F4: ; 0x022432F4
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _02243358
	bl ov94_0223B7D8
	ldr r1, _02243374 ; =0x00001484
	mov r2, #0
	add r0, #0xf
	str r2, [r4, r1]
	cmp r0, #0xf
	bhi _0224336E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224331C: ; jump table
	.short _0224334A - _0224331C - 2 ; case 0
	.short _0224334A - _0224331C - 2 ; case 1
	.short _02243352 - _0224331C - 2 ; case 2
	.short _0224334A - _0224331C - 2 ; case 3
	.short _0224336E - _0224331C - 2 ; case 4
	.short _0224336E - _0224331C - 2 ; case 5
	.short _0224336E - _0224331C - 2 ; case 6
	.short _0224336E - _0224331C - 2 ; case 7
	.short _0224336E - _0224331C - 2 ; case 8
	.short _0224336E - _0224331C - 2 ; case 9
	.short _02243342 - _0224331C - 2 ; case 10
	.short _0224336E - _0224331C - 2 ; case 11
	.short _0224336E - _0224331C - 2 ; case 12
	.short _0224334A - _0224331C - 2 ; case 13
	.short _0224336E - _0224331C - 2 ; case 14
	.short _0224333C - _0224331C - 2 ; case 15
_0224333C:
	mov r0, #0x21
	str r0, [r4, #0x2c]
	b _0224336E
_02243342:
	mov r0, #3
	bl sub_02038AE0
	b _0224336E
_0224334A:
	mov r0, #4
	bl sub_02038AE0
	b _0224336E
_02243352:
	bl sub_02038A0C
	b _0224336E
_02243358:
	ldr r0, _02243374 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0224336E
	bl sub_02038A0C
_0224336E:
	mov r0, #3
	pop {r4, pc}
	nop
_02243374: .word 0x00001484
	thumb_func_end ov94_022432F4

	thumb_func_start ov94_02243378
ov94_02243378: ; 0x02243378
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_0223B8D8
	mov r0, #0x19
	str r0, [r4, #0x2c]
	ldr r0, _02243394 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02243394: .word 0x00001484
	thumb_func_end ov94_02243378

	thumb_func_start ov94_02243398
ov94_02243398: ; 0x02243398
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	bne _022433A6
	b _02243528
_022433A6:
	bl ov94_0223B7D8
	ldr r1, _02243544 ; =0x00001484
	mov r2, #0
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xf
	cmp r1, #0x10
	bhi _02243408
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022433C4: ; jump table
	.short _02243516 - _022433C4 - 2 ; case 0
	.short _02243516 - _022433C4 - 2 ; case 1
	.short _0224351E - _022433C4 - 2 ; case 2
	.short _02243516 - _022433C4 - 2 ; case 3
	.short _0224353E - _022433C4 - 2 ; case 4
	.short _0224353E - _022433C4 - 2 ; case 5
	.short _0224353E - _022433C4 - 2 ; case 6
	.short _0224353E - _022433C4 - 2 ; case 7
	.short _0224353E - _022433C4 - 2 ; case 8
	.short _0224353E - _022433C4 - 2 ; case 9
	.short _0224353E - _022433C4 - 2 ; case 10
	.short _022434C8 - _022433C4 - 2 ; case 11
	.short _0224345E - _022433C4 - 2 ; case 12
	.short _02243516 - _022433C4 - 2 ; case 13
	.short _0224353E - _022433C4 - 2 ; case 14
	.short _022433E6 - _022433C4 - 2 ; case 15
	.short _022433EC - _022433C4 - 2 ; case 16
_022433E6:
	mov r0, #0x1a
	str r0, [r4, #0x2c]
	b _0224353E
_022433EC:
	mov r1, #0x13
	mov r0, #1
	lsl r1, r1, #4
	strh r0, [r4, #0x36]
	add r0, r4, #0
	add r1, r4, r1
	bl ov94_02243E84
	cmp r0, #0
	beq _02243452
	cmp r0, #1
	beq _0224340A
	cmp r0, #2
	beq _0224342E
_02243408:
	b _0224353E
_0224340A:
	add r0, r4, #0
	bl ov94_0223C5F4
	ldr r0, _02243548 ; =0x00000F0F
	ldr r1, _0224354C ; =0x00000B94
	str r0, [sp]
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x1d
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x1c
	bl ov94_0223C3F4
	b _0224353E
_0224342E:
	add r0, r4, #0
	bl ov94_0223C5F4
	ldr r0, _02243548 ; =0x00000F0F
	ldr r1, _0224354C ; =0x00000B94
	str r0, [sp]
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x23
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x1c
	bl ov94_0223C3F4
	b _0224353E
_02243452:
	mov r0, #0x12
	str r0, [r4, #0x2c]
	ldr r0, _02243550 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	b _0224353E
_0224345E:
	strh r2, [r4, #0x36]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0202DA60
	cmp r0, #0
	beq _022434C0
	mov r0, #0x3e
	bl sub_02073C74
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl sub_0202DA70
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #0x22
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0202DAAC
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0
	bl ov94_02243BC4
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_0202DA68
	add r0, r5, #0
	bl sub_020181C4
	b _0224353E
_022434C0:
	add r0, r4, #0
	bl ov94_0224362C
	b _0224353E
_022434C8:
	strh r2, [r4, #0x36]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0202DA60
	cmp r0, #0
	beq _0224353E
	mov r0, #0x3e
	bl sub_02073C74
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl sub_0202DA70
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #3
	str r0, [r4, #0x28]
	mov r0, #0x22
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_0202DA68
	add r0, r5, #0
	bl sub_020181C4
	b _0224353E
_02243516:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _0224353E
_0224351E:
	mov r0, #3
	mov r1, #1
	bl sub_02039834
	b _0224353E
_02243528:
	ldr r0, _02243544 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0224353E
	bl sub_02038A0C
_0224353E:
	mov r0, #3
	pop {r3, r4, r5, pc}
	nop
_02243544: .word 0x00001484
_02243548: .word 0x00000F0F
_0224354C: .word 0x00000B94
_02243550: .word 0x000010B0
	thumb_func_end ov94_02243398

	thumb_func_start ov94_02243554
ov94_02243554: ; 0x02243554
	push {r4, lr}
	mov r1, #1
	mov r2, #0
	add r4, r0, #0
	bl ov94_0223C4C0
	mov r0, #0x24
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_02243554

	thumb_func_start ov94_02243568
ov94_02243568: ; 0x02243568
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_0223B888
	mov r0, #0x1b
	str r0, [r4, #0x2c]
	ldr r0, _02243584 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02243584: .word 0x00001484
	thumb_func_end ov94_02243568

	thumb_func_start ov94_02243588
ov94_02243588: ; 0x02243588
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _0224360C
	bl ov94_0223B7D8
	ldr r2, _02243628 ; =0x00001484
	mov r1, #0
	str r1, [r4, r2]
	add r2, r0, #0
	add r2, #0xf
	cmp r2, #0xf
	bhi _02243604
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022435B2: ; jump table
	.short _022435F2 - _022435B2 - 2 ; case 0
	.short _022435F2 - _022435B2 - 2 ; case 1
	.short _022435FC - _022435B2 - 2 ; case 2
	.short _022435F2 - _022435B2 - 2 ; case 3
	.short _02243604 - _022435B2 - 2 ; case 4
	.short _02243604 - _022435B2 - 2 ; case 5
	.short _02243604 - _022435B2 - 2 ; case 6
	.short _02243604 - _022435B2 - 2 ; case 7
	.short _02243604 - _022435B2 - 2 ; case 8
	.short _02243604 - _022435B2 - 2 ; case 9
	.short _02243604 - _022435B2 - 2 ; case 10
	.short _02243604 - _022435B2 - 2 ; case 11
	.short _022435EE - _022435B2 - 2 ; case 12
	.short _022435F2 - _022435B2 - 2 ; case 13
	.short _02243604 - _022435B2 - 2 ; case 14
	.short _022435D2 - _022435B2 - 2 ; case 15
_022435D2:
	add r0, r4, #0
	bl ov94_02243ED8
	cmp r0, #0
	beq _022435E8
	mov r0, #0x16
	str r0, [r4, #0x2c]
	mov r0, #0
	strh r0, [r4, #0x36]
	mov r0, #3
	pop {r4, pc}
_022435E8:
	mov r0, #1
	strh r0, [r4, #0x36]
	b _02243604
_022435EE:
	strh r1, [r4, #0x36]
	b _02243604
_022435F2:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
_022435FC:
	bl sub_02038A0C
	mov r0, #3
	pop {r4, pc}
_02243604:
	add r0, r4, #0
	bl ov94_0224362C
	b _02243622
_0224360C:
	ldr r0, _02243628 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02243622
	bl sub_02038A0C
_02243622:
	mov r0, #3
	pop {r4, pc}
	nop
_02243628: .word 0x00001484
	thumb_func_end ov94_02243588

	thumb_func_start ov94_0224362C
ov94_0224362C: ; 0x0224362C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	cmp r1, #1
	beq _0224363C
	cmp r1, #2
	beq _0224364A
	pop {r4, pc}
_0224363C:
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #0x24
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0224364A:
	mov r1, #2
	mov r2, #3
	bl ov94_0223C4C0
	mov r0, #0x24
	str r0, [r4, #0x2c]
	pop {r4, pc}
	thumb_func_end ov94_0224362C

	thumb_func_start ov94_02243658
ov94_02243658: ; 0x02243658
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0202DAAC
	ldr r3, _022436D0 ; =0x00000251
	mov r1, #0x13
	lsl r1, r1, #4
	add r2, r0, #0
	ldrsb r3, [r4, r3]
	add r0, r4, #0
	add r1, r4, r1
	bl ov94_02243BC4
	ldr r0, [r4, #0]
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, #0x18]
	add r1, r4, r1
	bl ov94_02243E2C
	ldr r0, [r4, #0]
	mov r1, #0x19
	ldr r0, [r0, #0x28]
	bl sub_0202CFEC
	ldr r0, [r4, #0]
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, #0x2c]
	add r1, r4, r1
	bl ov94_02243E48
	ldr r0, [r4, #0]
	mov r1, #0x18
	ldr r0, [r0, #0x28]
	bl sub_0202CF28
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0202440C
	bl sub_0206D104
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_0202DA68
	mov r0, #0x1e
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #0xb
	bl ov94_02243EC8
	mov r0, #3
	pop {r4, pc}
	nop
_022436D0: .word 0x00000251
	thumb_func_end ov94_02243658

	thumb_func_start ov94_022436D4
ov94_022436D4: ; 0x022436D4
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B928
	mov r0, #0x14
	str r0, [r4, #0x2c]
	ldr r0, _022436EC ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022436EC: .word 0x00001484
	thumb_func_end ov94_022436D4

	thumb_func_start ov94_022436F0
ov94_022436F0: ; 0x022436F0
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _02243758
	bl ov94_0223B7D8
	ldr r1, _02243774 ; =0x00001484
	mov r2, #0
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xf
	cmp r1, #0xf
	bhi _0224376E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224371A: ; jump table
	.short _0224374A - _0224371A - 2 ; case 0
	.short _0224374A - _0224371A - 2 ; case 1
	.short _02243752 - _0224371A - 2 ; case 2
	.short _02243748 - _0224371A - 2 ; case 3
	.short _0224376E - _0224371A - 2 ; case 4
	.short _0224376E - _0224371A - 2 ; case 5
	.short _0224376E - _0224371A - 2 ; case 6
	.short _0224376E - _0224371A - 2 ; case 7
	.short _0224376E - _0224371A - 2 ; case 8
	.short _0224376E - _0224371A - 2 ; case 9
	.short _0224376E - _0224371A - 2 ; case 10
	.short _02243748 - _0224371A - 2 ; case 11
	.short _02243740 - _0224371A - 2 ; case 12
	.short _0224374A - _0224371A - 2 ; case 13
	.short _0224376E - _0224371A - 2 ; case 14
	.short _0224373A - _0224371A - 2 ; case 15
_0224373A:
	mov r0, #0x21
	str r0, [r4, #0x2c]
	b _0224376E
_02243740:
	mov r0, #3
	bl sub_02038AE0
	b _0224376E
_02243748:
	str r0, [r4, #0x3c]
_0224374A:
	mov r0, #4
	bl sub_02038AE0
	b _0224376E
_02243752:
	bl sub_02038A0C
	b _0224376E
_02243758:
	ldr r0, _02243774 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0224376E
	bl sub_02038A0C
_0224376E:
	mov r0, #3
	pop {r4, pc}
	nop
_02243774: .word 0x00001484
	thumb_func_end ov94_022436F0

	thumb_func_start ov94_02243778
ov94_02243778: ; 0x02243778
	mov r0, #3
	bx lr
	thumb_func_end ov94_02243778

	thumb_func_start ov94_0224377C
ov94_0224377C: ; 0x0224377C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	strh r1, [r4, #0x36]
	mov r1, #9
	mov r2, #7
	bl ov94_0223C4C0
	mov r0, #0x24
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_0224377C

	thumb_func_start ov94_02243794
ov94_02243794: ; 0x02243794
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	strh r1, [r4, #0x36]
	mov r1, #9
	mov r2, #8
	bl ov94_0223C4C0
	mov r0, #0x24
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_02243794

	thumb_func_start ov94_022437AC
ov94_022437AC: ; 0x022437AC
	push {r4, lr}
	mov r1, #9
	add r2, r1, #0
	add r4, r0, #0
	bl ov94_0223C4C0
	mov r0, #0x24
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_022437AC

	thumb_func_start ov94_022437C0
ov94_022437C0: ; 0x022437C0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	strh r1, [r4, #0x36]
	mov r1, #9
	mov r2, #0xa
	bl ov94_0223C4C0
	mov r0, #0x1e
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_022437C0

	thumb_func_start ov94_022437D8
ov94_022437D8: ; 0x022437D8
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B96C
	mov r0, #0x17
	str r0, [r4, #0x2c]
	ldr r0, _022437F0 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022437F0: .word 0x00001484
	thumb_func_end ov94_022437D8

	thumb_func_start ov94_022437F4
ov94_022437F4: ; 0x022437F4
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _02243866
	bl ov94_0223B7D8
	ldr r1, _02243880 ; =0x00001484
	mov r2, #0
	add r0, #0xf
	str r2, [r4, r1]
	cmp r0, #0xf
	bhi _0224387C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224381C: ; jump table
	.short _02243858 - _0224381C - 2 ; case 0
	.short _02243858 - _0224381C - 2 ; case 1
	.short _02243860 - _0224381C - 2 ; case 2
	.short _02243858 - _0224381C - 2 ; case 3
	.short _0224387C - _0224381C - 2 ; case 4
	.short _0224387C - _0224381C - 2 ; case 5
	.short _0224387C - _0224381C - 2 ; case 6
	.short _0224387C - _0224381C - 2 ; case 7
	.short _0224387C - _0224381C - 2 ; case 8
	.short _0224387C - _0224381C - 2 ; case 9
	.short _02243850 - _0224381C - 2 ; case 10
	.short _0224384A - _0224381C - 2 ; case 11
	.short _02243844 - _0224381C - 2 ; case 12
	.short _02243858 - _0224381C - 2 ; case 13
	.short _0224387C - _0224381C - 2 ; case 14
	.short _0224383C - _0224381C - 2 ; case 15
_0224383C:
	add r0, r4, #0
	bl ov94_0224362C
	b _0224387C
_02243844:
	add r0, r4, #0
	bl ov94_0224362C
_0224384A:
	add r0, r4, #0
	bl ov94_0224362C
_02243850:
	mov r0, #3
	bl sub_02038AE0
	b _0224387C
_02243858:
	mov r0, #4
	bl sub_02038AE0
	b _0224387C
_02243860:
	bl sub_02038A0C
	b _0224387C
_02243866:
	ldr r0, _02243880 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0224387C
	bl sub_02038A0C
_0224387C:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02243880: .word 0x00001484
	thumb_func_end ov94_022437F4

	thumb_func_start ov94_02243884
ov94_02243884: ; 0x02243884
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _022438C0 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _022438C4 ; =0x00000B94
	mov r2, #0x8d
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x24
	bl ov94_0223C3F4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	add r0, r4, #0
	bl ov94_0223C5F4
	add r0, r4, #0
	bl ov94_022442E4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022438C0: .word 0x00000F0F
_022438C4: .word 0x00000B94
	thumb_func_end ov94_02243884

	thumb_func_start ov94_022438C8
ov94_022438C8: ; 0x022438C8
	push {r3, lr}
	ldr r1, [r0, #0x3c]
	mov r2, #0x94
	add r1, #0xf
	cmp r1, #0xe
	bhi _02243908
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022438E0: ; jump table
	.short _02243908 - _022438E0 - 2 ; case 0
	.short _02243906 - _022438E0 - 2 ; case 1
	.short _02243908 - _022438E0 - 2 ; case 2
	.short _02243908 - _022438E0 - 2 ; case 3
	.short _022438FE - _022438E0 - 2 ; case 4
	.short _022438FE - _022438E0 - 2 ; case 5
	.short _022438FE - _022438E0 - 2 ; case 6
	.short _022438FE - _022438E0 - 2 ; case 7
	.short _022438FE - _022438E0 - 2 ; case 8
	.short _022438FE - _022438E0 - 2 ; case 9
	.short _02243908 - _022438E0 - 2 ; case 10
	.short _02243908 - _022438E0 - 2 ; case 11
	.short _02243908 - _022438E0 - 2 ; case 12
	.short _02243906 - _022438E0 - 2 ; case 13
	.short _02243902 - _022438E0 - 2 ; case 14
_022438FE:
	mov r2, #0x1a
	b _02243908
_02243902:
	mov r2, #0x91
	b _02243908
_02243906:
	mov r2, #0x96
_02243908:
	ldr r1, _02243918 ; =0x00000F0F
	mov r3, #1
	str r1, [sp]
	ldr r1, _0224391C ; =0x00000B94
	ldr r1, [r0, r1]
	bl ov94_02245824
	pop {r3, pc}
	; .align 2, 0
_02243918: .word 0x00000F0F
_0224391C: .word 0x00000B94
	thumb_func_end ov94_022438C8

	thumb_func_start ov94_02243920
ov94_02243920: ; 0x02243920
	push {r4, lr}
	add r4, r0, #0
	bl ov94_022438C8
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x24
	bl ov94_0223C3F4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	add r0, r4, #0
	bl ov94_0223C5F4
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02243920

	thumb_func_start ov94_02243948
ov94_02243948: ; 0x02243948
	push {r4, lr}
	add r4, r0, #0
	bl ov94_022438C8
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x24
	bl ov94_0223C3F4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	add r0, r4, #0
	bl ov94_0223C5F4
	add r0, r4, #0
	bl ov94_022442E4
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_02243948

	thumb_func_start ov94_02243974
ov94_02243974: ; 0x02243974
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x25
	mov r2, #0x1e
	bl ov94_0223C3F4
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #0x24
	bl ov94_02243EC8
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02243974

	thumb_func_start ov94_02243990
ov94_02243990: ; 0x02243990
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02024804
	ldr r0, [r4, #0]
	mov r1, #2
	ldr r0, [r0, #0x20]
	bl sub_02024814
	mov r0, #0x1f
	str r0, [r4, #0x2c]
	bl sub_0201D2E8
	ldr r1, _022439C8 ; =0x00000445
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x3c
	blo _022439BC
	bl GF_AssertFail
_022439BC:
	mov r0, #0x42
	add r1, r5, #2
	lsl r0, r0, #6
	str r1, [r4, r0]
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022439C8: .word 0x00000445
	thumb_func_end ov94_02243990

	thumb_func_start ov94_022439CC
ov94_022439CC: ; 0x022439CC
	mov r1, #0x42
	lsl r1, r1, #6
	ldr r2, [r0, r1]
	sub r2, r2, #1
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _022439E0
	mov r1, #0x20
	str r1, [r0, #0x2c]
_022439E0:
	mov r0, #3
	bx lr
	thumb_func_end ov94_022439CC

	thumb_func_start ov94_022439E4
ov94_022439E4: ; 0x022439E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_02024828
	cmp r0, #1
	bne _022439FA
	ldr r0, _02243A00 ; =0x00001088
	ldrh r0, [r4, r0]
	str r0, [r4, #0x2c]
_022439FA:
	mov r0, #3
	pop {r4, pc}
	nop
_02243A00: .word 0x00001088
	thumb_func_end ov94_022439E4

	thumb_func_start ov94_02243A04
ov94_02243A04: ; 0x02243A04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_02024828
	cmp r0, #2
	bne _02243A20
	ldr r0, _02243A24 ; =0x0000108A
	ldrh r0, [r4, r0]
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl ov94_0223C5F4
_02243A20:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02243A24: .word 0x0000108A
	thumb_func_end ov94_02243A04

	thumb_func_start ov94_02243A28
ov94_02243A28: ; 0x02243A28
	push {r4, lr}
	add r4, r0, #0
	bl sub_02024804
	ldr r0, [r4, #0]
	mov r1, #2
	ldr r0, [r0, #0x20]
	bl sub_02024814
	mov r0, #0x23
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02243A28

	thumb_func_start ov94_02243A44
ov94_02243A44: ; 0x02243A44
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_02024828
	cmp r0, #2
	bne _02243A82
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	add r0, r4, #0
	bl ov94_0223C5F4
	ldr r0, _02243A88 ; =0x00000F0F
	ldr r1, _02243A8C ; =0x00000B94
	str r0, [sp]
	ldr r1, [r4, r1]
	ldr r2, [r4, #0x28]
	add r0, r4, #0
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x1c
	bl ov94_0223C3F4
_02243A82:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02243A88: .word 0x00000F0F
_02243A8C: .word 0x00000B94
	thumb_func_end ov94_02243A44

	thumb_func_start ov94_02243A90
ov94_02243A90: ; 0x02243A90
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_0223C5F4
	bl sub_02039794
	ldr r0, _02243AE4 ; =0x000010B0
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02243AC0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	b _02243AD8
_02243AC0:
	mov r0, #6
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
_02243AD8:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02243AE4: .word 0x000010B0
	thumb_func_end ov94_02243A90

	thumb_func_start ov94_02243AE8
ov94_02243AE8: ; 0x02243AE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02243B04 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02243B00
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_02243B00:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02243B04: .word 0x00000BE4
	thumb_func_end ov94_02243AE8

	thumb_func_start ov94_02243B08
ov94_02243B08: ; 0x02243B08
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x45
	add r5, r0, #0
	lsl r1, r1, #2
	ldrh r0, [r5, r1]
	cmp r0, #0x12
	beq _02243B62
	mov r0, #0x3e
	bl sub_02073C74
	mov r2, #0x45
	lsl r2, r2, #2
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldrh r1, [r5, r2]
	add r2, r2, #2
	ldrh r2, [r5, r2]
	ldr r0, [r0, #0xc]
	bl sub_02079C9C
	add r1, r4, #0
	bl sub_020774C8
	mov r2, #0x45
	ldr r0, [r5, #0]
	lsl r2, r2, #2
	ldrh r2, [r5, r2]
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_0202DA7C
	mov r2, #0x45
	lsl r2, r2, #2
	ldr r0, [r5, #0]
	ldrh r1, [r5, r2]
	add r2, r2, #2
	ldrh r2, [r5, r2]
	ldr r0, [r0, #0xc]
	bl sub_02079968
	add r0, r4, #0
	bl sub_020181C4
	b _02243BAA
_02243B62:
	ldr r0, [r5, #0]
	add r1, r1, #2
	ldrh r1, [r5, r1]
	ldr r0, [r0, #8]
	bl sub_0207A0FC
	add r4, r0, #0
	bl sub_0207893C
	mov r2, #0x45
	ldr r0, [r5, #0]
	lsl r2, r2, #2
	ldrh r2, [r5, r2]
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_0202DA7C
	ldr r1, _02243BBC ; =0x00000116
	ldr r0, [r5, #0]
	ldrh r1, [r5, r1]
	ldr r0, [r0, #8]
	bl sub_0207A080
	ldr r0, [r5, #0]
	ldr r1, _02243BC0 ; =0x000001B9
	ldr r0, [r0, #8]
	bl sub_0207A230
	cmp r0, #0
	bne _02243BAA
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x20]
	bl sub_0202CC98
	bl sub_0202CCA8
_02243BAA:
	cmp r6, #0
	beq _02243BB8
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_0202DA68
_02243BB8:
	pop {r4, r5, r6, pc}
	nop
_02243BBC: .word 0x00000116
_02243BC0: .word 0x000001B9
	thumb_func_end ov94_02243B08

	thumb_func_start ov94_02243BC4
ov94_02243BC4: ; 0x02243BC4
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	add r6, r3, #0
	bl sub_02074470
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x20]
	bl sub_0202F180
	mov r0, #0x12
	str r0, [sp, #0x20]
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	cmp r0, #6
	bne _02243BF8
	mov r0, #0
	str r0, [sp, #0x20]
_02243BF8:
	cmp r6, #0
	beq _02243C74
	mov r1, #0x46
	add r0, sp, #0
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _02243CE0 ; =0x000001ED
	cmp r0, r1
	bne _02243C56
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02243C3C
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x56
	bne _02243C56
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02243C56
_02243C3C:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x20]
	bl sub_020507E4
	add r6, r0, #0
	bl sub_0206B5F8
	cmp r0, #0
	bne _02243C56
	add r0, r6, #0
	mov r1, #1
	bl sub_0206B608
_02243C56:
	add r0, r4, #0
	mov r1, #9
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074B30
	ldr r0, [r5, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl ov94_02243DE8
_02243C74:
	ldr r0, [sp, #0x20]
	cmp r0, #0x12
	bne _02243C9C
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_0207A048
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	mov r1, #0x4a
	mov r2, #0x12
	lsl r1, r1, #2
	str r2, [r5, r1]
	sub r2, r0, #1
	add r0, r1, #4
	str r2, [r5, r0]
	b _02243CCC
_02243C9C:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, sp, #0x20
	ldr r0, [r0, #0xc]
	add r2, sp, #4
	bl sub_020799F0
	add r0, r4, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0xc]
	bl sub_020798A0
	mov r0, #0x4a
	ldr r1, [sp, #0x20]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r1, [r5, r0]
_02243CCC:
	ldr r0, [r5, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_0202DA68
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_02243CE0: .word 0x000001ED
	thumb_func_end ov94_02243BC4

	thumb_func_start ov94_02243CE4
ov94_02243CE4: ; 0x02243CE4
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0x20]
	bl sub_0202F180
	mov r0, #0x12
	str r0, [sp, #0x20]
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	cmp r0, #6
	bne _02243D0A
	mov r0, #0
	str r0, [sp, #0x20]
_02243D0A:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _02243DE4 ; =0x000001ED
	cmp r0, r1
	bne _02243D5E
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02243D44
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x56
	bne _02243D5E
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02243D5E
_02243D44:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x20]
	bl sub_020507E4
	add r6, r0, #0
	bl sub_0206B5F8
	cmp r0, #0
	bne _02243D5E
	add r0, r6, #0
	mov r1, #1
	bl sub_0206B608
_02243D5E:
	mov r1, #0x46
	add r0, sp, #0
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #9
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074B30
	ldr r0, [sp, #0x20]
	cmp r0, #0x12
	bne _02243DA0
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_0207A048
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	mov r1, #0x4a
	mov r2, #0x12
	lsl r1, r1, #2
	str r2, [r5, r1]
	sub r2, r0, #1
	add r0, r1, #4
	str r2, [r5, r0]
	b _02243DD0
_02243DA0:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, sp, #0x20
	ldr r0, [r0, #0xc]
	add r2, sp, #4
	bl sub_020799F0
	add r0, r4, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0xc]
	bl sub_020798A0
	mov r0, #0x4a
	ldr r1, [sp, #0x20]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r1, [r5, r0]
_02243DD0:
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl ov94_02243DE8
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_02243DE4: .word 0x000001ED
	thumb_func_end ov94_02243CE4

	thumb_func_start ov94_02243DE8
ov94_02243DE8: ; 0x02243DE8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0xc
	add r1, sp, #0
	bl ov4_021D806C
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x10
	ldr r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r3, r3, #8
	orr r0, r3
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	cmp r4, #1
	bne _02243E20
	add r0, r5, #0
	bl sub_0202DAA4
	add sp, #0x1c
	pop {r4, r5, pc}
_02243E20:
	add r0, r5, #0
	bl sub_0202DA94
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov94_02243DE8

	thumb_func_start ov94_02243E2C
ov94_02243E2C: ; 0x02243E2C
	push {r4, lr}
	ldr r3, _02243E44 ; =0x0000011E
	add r4, r1, #0
	add r2, r3, #1
	ldrb r1, [r4, r3]
	add r3, r3, #5
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	bl sub_02038FDC
	pop {r4, pc}
	nop
_02243E44: .word 0x0000011E
	thumb_func_end ov94_02243E2C

	thumb_func_start ov94_02243E48
ov94_02243E48: ; 0x02243E48
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x75
	add r2, sp, #4
	bl sub_02074470
	add r0, r4, #0
	bl sub_02075D6C
	add r3, r0, #0
	mov r0, #0x3e
	str r0, [sp]
	add r0, #0xce
	add r0, r4, r0
	add r4, #0xf6
	ldrb r1, [r4]
	add r2, sp, #4
	bl sub_0202C1EC
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #4
	bl sub_0202B758
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov94_02243E48

	thumb_func_start ov94_02243E84
ov94_02243E84: ; 0x02243E84
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ov94_02241498
	cmp r0, #0
	beq _02243EA2
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	cmp r0, #6
	bne _02243EA2
	mov r0, #2
	pop {r4, pc}
_02243EA2:
	ldr r0, _02243EC4 ; =0x000010AC
	ldrh r1, [r4, r0]
	mov r0, #0x87
	lsl r0, r0, #2
	cmp r1, r0
	bne _02243EBE
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	cmp r0, #6
	bne _02243EBE
	mov r0, #1
	pop {r4, pc}
_02243EBE:
	mov r0, #0
	pop {r4, pc}
	nop
_02243EC4: .word 0x000010AC
	thumb_func_end ov94_02243E84

	thumb_func_start ov94_02243EC8
ov94_02243EC8: ; 0x02243EC8
	ldr r3, _02243ED4 ; =0x00001088
	strh r1, [r0, r3]
	add r1, r3, #2
	strh r2, [r0, r1]
	bx lr
	nop
_02243ED4: .word 0x00001088
	thumb_func_end ov94_02243EC8

	thumb_func_start ov94_02243ED8
ov94_02243ED8: ; 0x02243ED8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0202DA60
	cmp r0, #0
	bne _02243EF2
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	beq _02243EF2
	mov r0, #1
	pop {r4, pc}
_02243EF2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02243ED8

	.rodata


	.global Unk_ov94_02246278
Unk_ov94_02246278: ; 0x02246278
	.incbin "incbin/overlay94_rodata.bin", 0x880, 0x890 - 0x880

	.global Unk_ov94_02246288
Unk_ov94_02246288: ; 0x02246288
	.incbin "incbin/overlay94_rodata.bin", 0x890, 0x8AC - 0x890

	.global Unk_ov94_022462A4
Unk_ov94_022462A4: ; 0x022462A4
	.incbin "incbin/overlay94_rodata.bin", 0x8AC, 0x8C8 - 0x8AC

	.global Unk_ov94_022462C0
Unk_ov94_022462C0: ; 0x022462C0
	.incbin "incbin/overlay94_rodata.bin", 0x8C8, 0x8E4 - 0x8C8

	.global Unk_ov94_022462DC
Unk_ov94_022462DC: ; 0x022462DC
	.incbin "incbin/overlay94_rodata.bin", 0x8E4, 0x900 - 0x8E4

	.global Unk_ov94_022462F8
Unk_ov94_022462F8: ; 0x022462F8
	.incbin "incbin/overlay94_rodata.bin", 0x900, 0x1C


	.data


	.global Unk_ov94_022469A0
Unk_ov94_022469A0: ; 0x022469A0
	.incbin "incbin/overlay94_data.bin", 0x5A0, 0xA0

