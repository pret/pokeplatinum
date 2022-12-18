	.include "macros/function.inc"
	.include "include/ov5_021E135C.inc"

	

	.text


	thumb_func_start ov5_021E135C
ov5_021E135C: ; 0x021E135C
	add r1, r0, #0
	ldr r0, [r1, #0x10]
	cmp r0, #3
	bhi _021E138E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E1370: ; jump table
	.short _021E1378 - _021E1370 - 2 ; case 0
	.short _021E1384 - _021E1370 - 2 ; case 1
	.short _021E137E - _021E1370 - 2 ; case 2
	.short _021E138A - _021E1370 - 2 ; case 3
_021E1378:
	mov r0, #2
	str r0, [r1, #0x10]
	b _021E138E
_021E137E:
	mov r0, #1
	str r0, [r1, #0x10]
	b _021E138E
_021E1384:
	mov r0, #3
	str r0, [r1, #0x10]
	b _021E138E
_021E138A:
	mov r0, #0
	str r0, [r1, #0x10]
_021E138E:
	ldr r0, [r1, #0]
	ldr r3, _021E1398 ; =sub_0205EA84
	ldr r0, [r0, #0x3c]
	ldr r1, [r1, #0x10]
	bx r3
	; .align 2, 0
_021E1398: .word sub_0205EA84
	thumb_func_end ov5_021E135C

	thumb_func_start ov5_021E139C
ov5_021E139C: ; 0x021E139C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021E13BC
	cmp r0, #1
	beq _021E13C6
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021E13BC:
	mov r0, #1
	str r0, [r5, #8]
	ldr r0, _021E1464 ; =0x0000064F
	bl sub_02005748
_021E13C6:
	ldr r0, [r5, #0xc]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _021E13DC
	add r0, r5, #0
	bl ov5_021E135C
_021E13DC:
	add r0, r6, #0
	add r1, sp, #0x18
	bl sub_0206309C
	ldr r4, [r5, #0xc]
	add r0, r4, #0
	bl sub_020E01B8
	str r0, [sp, #0x14]
	lsl r0, r4, #0xb
	str r1, [sp, #0x10]
	bl sub_020E01B8
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021E1468 ; =0x9999999A
	ldr r1, _021E146C ; =0x40C19999
	bl sub_020DFC6C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	bl sub_020E0234
	bl sub_020E0088
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x18
	bl sub_020630AC
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x14
	bne _021E1442
	mov r0, #6
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021E1442:
	ble _021E145E
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E145E
	ldr r0, [r5, #4]
	mov r1, #1
	str r1, [r0, #0]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
_021E145E:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021E1464: .word 0x0000064F
_021E1468: .word 0x9999999A
_021E146C: .word 0x40C19999
	thumb_func_end ov5_021E139C

	thumb_func_start ov5_021E1470
ov5_021E1470: ; 0x021E1470
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	ldr r1, [r5, #8]
	add r4, r0, #0
	cmp r1, #0
	beq _021E1494
	cmp r1, #1
	beq _021E14EC
	cmp r1, #2
	beq _021E1574
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021E1494:
	bl sub_02062DDC
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_0206309C
	ldr r1, [r5, #0xc]
	mov r0, #0x14
	sub r6, r0, r1
	add r0, r6, #0
	bl sub_020E01B8
	str r0, [sp, #0xc]
	lsl r0, r6, #0xb
	add r7, r1, #0
	bl sub_020E01B8
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021E159C ; =0x9999999A
	ldr r1, _021E15A0 ; =0x40C19999
	bl sub_020DFC6C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_020E0234
	bl sub_020E0088
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_020630AC
	add r0, r4, #0
	bl ov5_021ECCC8
	ldr r0, _021E15A4 ; =0x0000064F
	bl sub_02005748
	mov r0, #1
	str r0, [r5, #8]
_021E14EC:
	ldr r0, [r5, #0xc]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _021E1502
	add r0, r5, #0
	bl ov5_021E135C
_021E1502:
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_0206309C
	ldr r1, [r5, #0xc]
	mov r0, #0x14
	sub r6, r0, r1
	add r0, r6, #0
	bl sub_020E01B8
	str r0, [sp, #0x10]
	lsl r0, r6, #0xb
	add r7, r1, #0
	bl sub_020E01B8
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021E159C ; =0x9999999A
	ldr r1, _021E15A0 ; =0x40C19999
	bl sub_020DFC6C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	bl sub_020E0234
	bl sub_020E0088
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_020630AC
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #2
	bne _021E1566
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	add r1, r0, #0
	add r2, r0, #0
	mov r3, #0
	bl sub_0200F174
_021E1566:
	ldr r0, [r5, #0xc]
	cmp r0, #0x14
	ble _021E1598
	mov r0, #2
	add sp, #0x20
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021E1574:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021E1598
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	ldr r0, [r5, #4]
	mov r1, #1
	str r1, [r0, #0]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_021E1598:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E159C: .word 0x9999999A
_021E15A0: .word 0x40C19999
_021E15A4: .word 0x0000064F
	thumb_func_end ov5_021E1470

	thumb_func_start ov5_021E15A8
ov5_021E15A8: ; 0x021E15A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x14
	add r7, r2, #0
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	str r5, [r4, #0]
	str r7, [r4, #4]
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	str r0, [r4, #0x10]
	cmp r6, #0
	beq _021E15DE
	ldr r0, _021E15EC ; =ov5_021E139C
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_021E15DE:
	ldr r0, _021E15F0 ; =ov5_021E1470
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E15EC: .word ov5_021E139C
_021E15F0: .word ov5_021E1470
	thumb_func_end ov5_021E15A8