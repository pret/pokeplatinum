	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov25_02253CE0
ov25_02253CE0: ; 0x02253CE0
	ldr r3, _02253CE4 ; =sub_0203D158
	bx r3
	; .align 2, 0
_02253CE4: .word sub_0203D158
	thumb_func_end ov25_02253CE0

	thumb_func_start ov25_02253CE8
ov25_02253CE8: ; 0x02253CE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #3
	str r2, [sp]
	mov r1, #7
	lsl r2, r0, #0xe
	add r7, r3, #0
	bl sub_02017FC8
	mov r0, #3
	mov r1, #8
	lsl r2, r0, #0xe
	bl sub_02017FC8
	mov r0, #7
	mov r1, #0x64
	bl sub_02018144
	add r4, r0, #0
	beq _02253D52
	str r4, [r5, #0]
	ldr r0, [sp]
	str r6, [r4, #0x5c]
	str r0, [r4, #0x54]
	bl sub_02056B24
	str r0, [r4, #0x58]
	ldr r0, [sp, #0x18]
	str r7, [r4, #0x4c]
	str r0, [r4, #0x50]
	add r0, r4, #0
	bl ov25_02253DDC
	cmp r0, #0
	beq _02253D52
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	ldr r0, _02253D54 ; =ov25_02253E94
	str r5, [r4, #0x34]
	add r1, r4, #0
	mov r2, #4
	bl sub_0200D9E8
	str r0, [r4, #0x38]
	ldr r0, _02253D58 ; =ov25_02253E40
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
_02253D52:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02253D54: .word ov25_02253E94
_02253D58: .word ov25_02253E40
	thumb_func_end ov25_02253CE8

	thumb_func_start ov25_02253D5C
ov25_02253D5C: ; 0x02253D5C
	push {r3, lr}
	ldrb r1, [r0]
	cmp r1, #3
	beq _02253D6E
	cmp r1, #4
	beq _02253D6E
	mov r1, #3
	bl ov25_02253E9C
_02253D6E:
	pop {r3, pc}
	thumb_func_end ov25_02253D5C

	thumb_func_start ov25_02253D70
ov25_02253D70: ; 0x02253D70
	cmp r0, #0
	bne _02253D78
	mov r0, #1
	bx lr
_02253D78:
	mov r0, #0
	bx lr
	thumb_func_end ov25_02253D70

	thumb_func_start ov25_02253D7C
ov25_02253D7C: ; 0x02253D7C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #5
	bhi _02253DCE
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02253D90: ; jump table
	.short _02253DCE - _02253D90 - 2 ; case 0
	.short _02253D9C - _02253D90 - 2 ; case 1
	.short _02253DCE - _02253D90 - 2 ; case 2
	.short _02253DCE - _02253D90 - 2 ; case 3
	.short _02253DBE - _02253D90 - 2 ; case 4
	.short _02253DA2 - _02253D90 - 2 ; case 5
_02253D9C:
	mov r0, #1
	strb r0, [r4, #4]
	pop {r4, pc}
_02253DA2:
	ldr r0, [r4, #0x58]
	bl sub_020568C8
	add r1, r0, #1
	ldr r0, _02253DD0 ; =0x0001869F
	cmp r1, r0
	bls _02253DB2
	mov r1, #0
_02253DB2:
	ldr r0, [r4, #0x58]
	bl sub_020568CC
	mov r0, #1
	strb r0, [r4, #7]
	pop {r4, pc}
_02253DBE:
	ldrb r0, [r4, #2]
	cmp r0, #2
	bne _02253DCE
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _02253DCE
	ldr r0, [r4, #0x48]
	blx r1
_02253DCE:
	pop {r4, pc}
	; .align 2, 0
_02253DD0: .word 0x0001869F
	thumb_func_end ov25_02253D7C

	thumb_func_start ov25_02253DD4
ov25_02253DD4: ; 0x02253DD4
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov25_02253DD4

	thumb_func_start ov25_02253DD8
ov25_02253DD8: ; 0x02253DD8
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end ov25_02253DD8

	thumb_func_start ov25_02253DDC
ov25_02253DDC: ; 0x02253DDC
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r2, [r4, #0x50]
	add r0, #0x1c
	add r1, #0x20
	add r3, r4, #0
	bl ov25_02254560
	cmp r0, #0
	beq _02253E1A
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #7]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	sub r0, r1, #1
	str r0, [r4, #0x14]
	strb r1, [r4, #2]
	str r1, [r4, #8]
	add r0, r4, #0
	str r1, [r4, #0x60]
	bl ov25_02254284
	cmp r0, #0
	beq _02253E1A
	mov r0, #1
	pop {r4, pc}
_02253E1A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov25_02253DDC

	thumb_func_start ov25_02253E20
ov25_02253E20: ; 0x02253E20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_0200DA58
	add r0, r4, #0
	bl ov25_022542C8
	add r0, r4, #0
	bl ov25_022541BC
	ldr r0, [r4, #0x1c]
	bl ov25_02254754
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov25_02253E20

	thumb_func_start ov25_02253E40
ov25_02253E40: ; 0x02253E40
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #4
	bhs _02253E64
	cmp r0, #0
	beq _02253E56
	add r0, r4, #0
	bl ov25_022542D4
_02253E56:
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02253E90 ; =0x02255E6C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, r4, r5, pc}
_02253E64:
	beq _02253E6A
	bl sub_02022974
_02253E6A:
	ldr r0, [r4, #0x34]
	mov r1, #0
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov25_02253E20
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #7
	bl sub_0201807C
	mov r0, #8
	bl sub_0201807C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02253E90: .word 0x02255E6C
	thumb_func_end ov25_02253E40

	thumb_func_start ov25_02253E94
ov25_02253E94: ; 0x02253E94
	mov r0, #0
	strb r0, [r1, #4]
	strb r0, [r1, #7]
	bx lr
	thumb_func_end ov25_02253E94

	thumb_func_start ov25_02253E9C
ov25_02253E9C: ; 0x02253E9C
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	thumb_func_end ov25_02253E9C

	thumb_func_start ov25_02253EA4
ov25_02253EA4: ; 0x02253EA4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #3
	bhi _02253F28
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02253EBA: ; jump table
	.short _02253EC2 - _02253EBA - 2 ; case 0
	.short _02253ED2 - _02253EBA - 2 ; case 1
	.short _02253EFE - _02253EBA - 2 ; case 2
	.short _02253F14 - _02253EBA - 2 ; case 3
_02253EC2:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl ov25_022547D0
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
_02253ED2:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl ov25_022547F4
	cmp r0, #0
	beq _02253F28
	ldr r0, [r4, #0x58]
	bl sub_02056830
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov25_02254170
	add r0, r4, #0
	add r1, r5, #0
	bl ov25_022541D8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
_02253EFE:
	bl ov25_022541FC
	cmp r0, #0
	beq _02253F28
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl ov25_022547D0
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_02253F14:
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl ov25_022547F4
	cmp r0, #0
	beq _02253F28
	add r0, r4, #0
	mov r1, #1
	bl ov25_02253E9C
_02253F28:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov25_02253EA4

	thumb_func_start ov25_02253F2C
ov25_02253F2C: ; 0x02253F2C
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #4
	bhi _02253F60
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02253F42: ; jump table
	.short _02253F4C - _02253F42 - 2 ; case 0
	.short _02253F7A - _02253F42 - 2 ; case 1
	.short _02253FCC - _02253F42 - 2 ; case 2
	.short _02254002 - _02253F42 - 2 ; case 3
	.short _0225401E - _02253F42 - 2 ; case 4
_02253F4C:
	bl ov25_0225450C
	cmp r0, #0
	beq _02253F56
	b _02254068
_02253F56:
	ldr r0, [r4, #8]
	cmp r0, #3
	beq _02253F62
	cmp r0, #5
	beq _02253F62
_02253F60:
	b _02254068
_02253F62:
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #1
	strb r0, [r4, #5]
	ldr r0, [r4, #0x1c]
	mov r1, #4
	bl ov25_022547D0
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r4, pc}
_02253F7A:
	ldr r0, [r4, #8]
	cmp r0, #3
	beq _02253F84
	cmp r0, #5
	bne _02253F88
_02253F84:
	mov r0, #1
	str r0, [r4, #0xc]
_02253F88:
	ldr r0, [r4, #0x1c]
	bl ov25_02254800
	cmp r0, #0
	beq _02254068
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ldr r0, [r4, #0x58]
	bne _02253FA0
	bl sub_02056860
	b _02253FA4
_02253FA0:
	bl sub_02056838
_02253FA4:
	str r0, [r4, #0x20]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02253FC2
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl ov25_022547D0
	mov r0, #0x1e
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #4
	strb r0, [r4, #1]
	pop {r4, pc}
_02253FC2:
	mov r0, #3
	str r0, [r4, #0x10]
	mov r0, #2
	strb r0, [r4, #1]
	pop {r4, pc}
_02253FCC:
	ldr r1, [r4, #8]
	cmp r1, #3
	beq _02253FD6
	cmp r1, #5
	bne _02253FEC
_02253FD6:
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl ov25_022547D0
	mov r0, #0x1e
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #4
	strb r0, [r4, #1]
	pop {r4, pc}
_02253FEC:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02253FF8
	sub r0, r1, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
_02253FF8:
	bl ov25_0225420C
	mov r0, #3
	strb r0, [r4, #1]
	pop {r4, pc}
_02254002:
	bl ov25_02254228
	cmp r0, #0
	beq _02254068
	add r0, r4, #0
	bl ov25_022541BC
	bl sub_02099D44
	add r0, r4, #0
	mov r1, #2
	bl ov25_02253E9C
	pop {r4, pc}
_0225401E:
	ldr r0, [r4, #8]
	cmp r0, #3
	beq _02254028
	cmp r0, #5
	bne _0225404A
_02254028:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ldr r0, [r4, #0x58]
	bne _02254036
	bl sub_02056860
	b _0225403A
_02254036:
	bl sub_02056838
_0225403A:
	str r0, [r4, #0x20]
	mov r0, #0x1e
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl ov25_022547D0
	pop {r4, pc}
_0225404A:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02254056
	sub r0, r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
_02254056:
	ldr r0, [r4, #0x1c]
	mov r1, #0xe
	bl ov25_022547D0
	add r0, r4, #0
	bl ov25_0225420C
	mov r0, #3
	strb r0, [r4, #1]
_02254068:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov25_02253F2C

	thumb_func_start ov25_0225406C
ov25_0225406C: ; 0x0225406C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _02254080
	cmp r1, #1
	beq _022540A4
	cmp r1, #2
	beq _022540BC
	pop {r3, r4, r5, pc}
_02254080:
	mov r0, #1
	strb r0, [r4, #6]
	ldr r0, [r4, #0x58]
	bl sub_02056830
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov25_02254170
	add r0, r4, #0
	add r1, r5, #0
	bl ov25_022541D8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
_022540A4:
	bl ov25_022541FC
	cmp r0, #0
	beq _022540D6
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl ov25_022547D0
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
_022540BC:
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl ov25_022547F4
	cmp r0, #0
	beq _022540D6
	mov r0, #0
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	add r0, r4, #0
	mov r1, #1
	bl ov25_02253E9C
_022540D6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_0225406C

	thumb_func_start ov25_022540D8
ov25_022540D8: ; 0x022540D8
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #3
	bhi _0225416C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022540EE: ; jump table
	.short _022540F6 - _022540EE - 2 ; case 0
	.short _02254126 - _022540EE - 2 ; case 1
	.short _0225413A - _022540EE - 2 ; case 2
	.short _02254150 - _022540EE - 2 ; case 3
_022540F6:
	ldrb r1, [r4, #2]
	cmp r1, #3
	bhi _0225416C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02254108: ; jump table
	.short _02254120 - _02254108 - 2 ; case 0
	.short _02254110 - _02254108 - 2 ; case 1
	.short _02254116 - _02254108 - 2 ; case 2
	.short _02254120 - _02254108 - 2 ; case 3
_02254110:
	mov r0, #1
	strb r0, [r4, #1]
	pop {r4, pc}
_02254116:
	bl ov25_0225420C
	mov r0, #2
	strb r0, [r4, #1]
	pop {r4, pc}
_02254120:
	mov r0, #2
	strb r0, [r4, #1]
	pop {r4, pc}
_02254126:
	bl ov25_022541FC
	cmp r0, #0
	beq _0225416C
	add r0, r4, #0
	bl ov25_0225420C
	mov r0, #2
	strb r0, [r4, #1]
	pop {r4, pc}
_0225413A:
	bl ov25_02254228
	cmp r0, #0
	beq _0225416C
	ldr r0, [r4, #0x1c]
	mov r1, #0x11
	bl ov25_022547D0
	mov r0, #3
	strb r0, [r4, #1]
	pop {r4, pc}
_02254150:
	ldr r0, [r4, #0x1c]
	bl ov25_02254800
	cmp r0, #0
	beq _0225416C
	add r0, r4, #0
	bl ov25_022541BC
	bl sub_0201E530
	add r0, r4, #0
	mov r1, #4
	bl ov25_02253E9C
_0225416C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov25_022540D8

	thumb_func_start ov25_02254170
ov25_02254170: ; 0x02254170
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bmi _0225417C
	cmp r4, #0x19
	blo _02254180
_0225417C:
	bl sub_02022974
_02254180:
	mov r0, #0
	ldr r1, [r5, #0x14]
	mvn r0, r0
	cmp r1, r0
	bne _022541B0
	ldr r2, _022541B4 ; =0x02255E7C
	mov r1, #0
_0225418E:
	ldr r0, [r2, #0]
	cmp r4, r0
	bne _022541A8
	ldr r0, _022541B8 ; =0x02255E80
	lsl r1, r1, #3
	ldr r6, [r0, r1]
	mov r1, #2
	add r0, r6, #0
	bl sub_02006590
	str r4, [r5, #0x14]
	str r6, [r5, #0x18]
	pop {r4, r5, r6, pc}
_022541A8:
	add r1, r1, #1
	add r2, #8
	cmp r1, #0x19
	blo _0225418E
_022541B0:
	pop {r4, r5, r6, pc}
	nop
_022541B4: .word 0x02255E7C
_022541B8: .word 0x02255E80
	thumb_func_end ov25_02254170

	thumb_func_start ov25_022541BC
ov25_022541BC: ; 0x022541BC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	ldr r1, [r4, #0x14]
	mvn r0, r0
	cmp r1, r0
	beq _022541D6
	ldr r0, [r4, #0x18]
	bl sub_02006514
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x14]
_022541D6:
	pop {r4, pc}
	thumb_func_end ov25_022541BC

	thumb_func_start ov25_022541D8
ov25_022541D8: ; 0x022541D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _022541E6
	bl sub_02022974
_022541E6:
	add r0, r4, #0
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x14]
	ldr r5, [r4, #0x3c]
	add r0, #0x24
	add r1, r4, #0
	blx r5
	mov r0, #1
	strb r0, [r4, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov25_022541D8

	thumb_func_start ov25_022541FC
ov25_022541FC: ; 0x022541FC
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _02254206
	mov r0, #1
	bx lr
_02254206:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov25_022541FC

	thumb_func_start ov25_0225420C
ov25_0225420C: ; 0x0225420C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #2
	beq _0225421A
	bl sub_02022974
_0225421A:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x40]
	blx r1
	mov r0, #3
	strb r0, [r4, #2]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov25_0225420C

	thumb_func_start ov25_02254228
ov25_02254228: ; 0x02254228
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _02254232
	mov r0, #1
	bx lr
_02254232:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02254228

	thumb_func_start ov25_02254238
ov25_02254238: ; 0x02254238
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov25_02253CE0
	str r5, [r0, #0x3c]
	str r4, [r0, #0x40]
	mov r1, #0
	str r1, [r0, #0x44]
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02254238

	thumb_func_start ov25_0225424C
ov25_0225424C: ; 0x0225424C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #1
	beq _0225425A
	bl sub_02022974
_0225425A:
	mov r0, #2
	strb r0, [r4, #2]
	pop {r4, pc}
	thumb_func_end ov25_0225424C

	thumb_func_start ov25_02254260
ov25_02254260: ; 0x02254260
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #3
	beq _0225426E
	bl sub_02022974
_0225426E:
	mov r0, #0
	strb r0, [r4, #2]
	pop {r4, pc}
	thumb_func_end ov25_02254260

	thumb_func_start ov25_02254274
ov25_02254274: ; 0x02254274
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov25_02253CE0
	str r5, [r0, #0x44]
	str r4, [r0, #0x48]
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02254274

	thumb_func_start ov25_02254284
ov25_02254284: ; 0x02254284
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #7
	str r0, [sp]
	ldr r0, _022542C0 ; =0x02255E60
	ldr r2, _022542C4 ; =ov25_022542E4
	mov r1, #3
	add r3, r4, #0
	bl ov25_02255ACC
	str r0, [r4, #0x28]
	cmp r0, #0
	beq _022542B8
	mov r1, #0
	add r2, r1, #0
	mov r3, #7
	bl ov25_02255C48
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_022542B8:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_022542C0: .word 0x02255E60
_022542C4: .word ov25_022542E4
	thumb_func_end ov25_02254284

	thumb_func_start ov25_022542C8
ov25_022542C8: ; 0x022542C8
	ldr r3, _022542D0 ; =ov25_02255B34
	ldr r0, [r0, #0x28]
	bx r3
	nop
_022542D0: .word ov25_02255B34
	thumb_func_end ov25_022542C8

	thumb_func_start ov25_022542D4
ov25_022542D4: ; 0x022542D4
	ldr r3, _022542E0 ; =ov25_02255B50
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r0, #0x28]
	bx r3
	nop
_022542E0: .word ov25_02255B50
	thumb_func_end ov25_022542D4

	thumb_func_start ov25_022542E4
ov25_022542E4: ; 0x022542E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r7, r0, #0
	add r0, r5, #0
	add r6, r1, #0
	str r2, [sp]
	bl ov25_0225450C
	cmp r0, #0
	bne _0225430E
	ldr r0, [sp]
	cmp r0, #0
	beq _02254308
	cmp r0, #1
	bne _02254312
	mov r0, #1
	strb r0, [r5, #3]
	b _02254312
_02254308:
	mov r0, #0
	strb r0, [r5, #3]
	b _02254312
_0225430E:
	mov r0, #0
	strb r0, [r5, #3]
_02254312:
	cmp r7, #2
	bne _0225432E
	add r0, r5, #0
	bl ov25_0225450C
	cmp r0, #0
	beq _022543E6
	ldr r0, [sp]
	cmp r0, #1
	bne _022543E6
	ldr r0, _022543E8 ; =0x0000066E
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_0225432E:
	ldr r0, [sp]
	mov r4, #0
	mvn r4, r4
	cmp r0, #0
	beq _0225433E
	cmp r0, #1
	beq _0225434A
	b _02254372
_0225433E:
	cmp r7, #0
	bne _02254346
	mov r4, #8
	b _02254372
_02254346:
	mov r4, #0xb
	b _02254372
_0225434A:
	add r0, r5, #0
	bl ov25_0225450C
	cmp r0, #0
	bne _0225435A
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _02254368
_0225435A:
	cmp r7, #0
	bne _02254362
	mov r4, #6
	b _02254364
_02254362:
	mov r4, #9
_02254364:
	mov r6, #0
	b _02254372
_02254368:
	cmp r7, #0
	bne _02254370
	mov r4, #7
	b _02254372
_02254370:
	mov r4, #0xa
_02254372:
	mov r0, #0
	ldr r1, [r5, #0x2c]
	mvn r0, r0
	cmp r1, r0
	beq _02254382
	add r0, r4, #0
	add r4, r1, #0
	str r0, [r5, #0x2c]
_02254382:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _022543A8
	ldr r0, [r5, #0x1c]
	add r1, r4, #0
	bl ov25_022543EC
	cmp r0, #0
	beq _022543A8
	cmp r4, #6
	beq _022543A6
	cmp r4, #7
	beq _022543A6
	add r0, r4, #0
	sub r0, #9
	cmp r0, #1
	bhi _022543A8
_022543A6:
	str r4, [r5, #0x30]
_022543A8:
	cmp r6, #2
	beq _022543CC
	cmp r6, #3
	beq _022543BE
	cmp r6, #5
	bne _022543D8
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl ov25_02255C68
	b _022543D8
_022543BE:
	ldr r0, [r5, #0x30]
	cmp r0, #6
	beq _022543C8
	cmp r0, #9
	bne _022543D8
_022543C8:
	mov r6, #0
	b _022543D8
_022543CC:
	ldr r0, [r5, #0x30]
	cmp r0, #7
	beq _022543D6
	cmp r0, #0xa
	bne _022543D8
_022543D6:
	mov r6, #3
_022543D8:
	str r6, [r5, #8]
	cmp r7, #0
	bne _022543E2
	mov r0, #0
	b _022543E4
_022543E2:
	mov r0, #1
_022543E4:
	str r0, [r5, #0x60]
_022543E6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022543E8: .word 0x0000066E
	thumb_func_end ov25_022542E4

	thumb_func_start ov25_022543EC
ov25_022543EC: ; 0x022543EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_022543F4:
	add r0, r5, #0
	add r1, r6, #0
	bl ov25_022547F4
	cmp r0, #0
	bne _02254404
	mov r0, #0
	pop {r4, r5, r6, pc}
_02254404:
	add r4, r4, #1
	cmp r4, #6
	blo _022543F4
	add r0, r5, #0
	add r1, r6, #0
	bl ov25_022547D0
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov25_022543EC

	thumb_func_start ov25_02254418
ov25_02254418: ; 0x02254418
	push {r3, lr}
	bl ov25_02253CE0
	ldr r0, [r0, #0x1c]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov25_02254418

	thumb_func_start ov25_02254424
ov25_02254424: ; 0x02254424
	push {r4, lr}
	add r4, r0, #0
	bl ov25_02253CE0
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _02254442
	bl ov25_0225450C
	cmp r0, #0
	bne _02254442
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_02254442:
	pop {r4, pc}
	thumb_func_end ov25_02254424

	thumb_func_start ov25_02254444
ov25_02254444: ; 0x02254444
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov25_02253CE0
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _02254468
	bl ov25_0225450C
	cmp r0, #0
	bne _02254468
	lsl r0, r5, #0x10
	lsl r1, r4, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl sub_02005844
_02254468:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov25_02254444

	thumb_func_start ov25_0225446C
ov25_0225446C: ; 0x0225446C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov25_02253CE0
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _022544B8
	bl ov25_0225450C
	cmp r0, #0
	bne _022544B8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020227A4
	cmp r0, #0
	beq _022544B8
	ldr r0, [r5, #0]
	sub r0, #0x10
	cmp r0, #0xbf
	bhs _0225449C
	mov r1, #1
	b _0225449E
_0225449C:
	mov r1, #0
_0225449E:
	ldr r0, [r4, #0]
	sub r0, #0x10
	cmp r0, #0x9f
	bhs _022544AA
	mov r0, #1
	b _022544AC
_022544AA:
	mov r0, #0
_022544AC:
	tst r0, r1
	beq _022544B4
	mov r0, #1
	pop {r3, r4, r5, pc}
_022544B4:
	mov r0, #0
	pop {r3, r4, r5, pc}
_022544B8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_0225446C

	thumb_func_start ov25_022544BC
ov25_022544BC: ; 0x022544BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov25_02253CE0
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _02254508
	bl ov25_0225450C
	cmp r0, #0
	bne _02254508
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020227C0
	cmp r0, #0
	beq _02254508
	ldr r0, [r5, #0]
	sub r0, #0x10
	cmp r0, #0xbf
	bhs _022544EC
	mov r1, #1
	b _022544EE
_022544EC:
	mov r1, #0
_022544EE:
	ldr r0, [r4, #0]
	sub r0, #0x10
	cmp r0, #0x9f
	bhs _022544FA
	mov r0, #1
	b _022544FC
_022544FA:
	mov r0, #0
_022544FC:
	tst r0, r1
	beq _02254504
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254504:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02254508:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_022544BC

	thumb_func_start ov25_0225450C
ov25_0225450C: ; 0x0225450C
	ldr r3, _02254514 ; =sub_020509A4
	ldr r0, [r0, #0x5c]
	bx r3
	nop
_02254514: .word sub_020509A4
	thumb_func_end ov25_0225450C

	thumb_func_start ov25_02254518
ov25_02254518: ; 0x02254518
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov25_0225450C
	cmp r0, #0
	bne _02254532
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _02254532
	add r0, r4, #0
	bl ov25_02255B50
_02254532:
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02254518

	thumb_func_start ov25_02254534
ov25_02254534: ; 0x02254534
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end ov25_02254534

	thumb_func_start ov25_02254538
ov25_02254538: ; 0x02254538
	ldrb r0, [r0, #7]
	bx lr
	thumb_func_end ov25_02254538

	thumb_func_start ov25_0225453C
ov25_0225453C: ; 0x0225453C
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end ov25_0225453C

	thumb_func_start ov25_02254540
ov25_02254540: ; 0x02254540
	ldr r0, [r0, #0x58]
	bx lr
	thumb_func_end ov25_02254540

	thumb_func_start ov25_02254544
ov25_02254544: ; 0x02254544
	ldr r0, [r0, #0x54]
	bx lr
	thumb_func_end ov25_02254544

	thumb_func_start ov25_02254548
ov25_02254548: ; 0x02254548
	push {r3, lr}
	ldr r0, [r0, #0x54]
	bl sub_02025E38
	bl sub_02025F30
	cmp r0, #1
	beq _0225455C
	mov r0, #1
	pop {r3, pc}
_0225455C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov25_02254548

	.rodata


	.global Unk_ov25_02255E60
Unk_ov25_02255E60: ; 0x02255E60
	.incbin "incbin/overlay25_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov25_02255E6C
Unk_ov25_02255E6C: ; 0x02255E6C
	.incbin "incbin/overlay25_rodata.bin", 0xC, 0x1C - 0xC

	.global Unk_ov25_02255E7C
Unk_ov25_02255E7C: ; 0x02255E7C
	.incbin "incbin/overlay25_rodata.bin", 0x1C, 0xC8

