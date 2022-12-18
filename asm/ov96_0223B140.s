	.include "macros/function.inc"
	.include "include/ov96_0223B140.inc"

	

	.text


	thumb_func_start ov96_0223B140
ov96_0223B140: ; 0x0223B140
	push {r3, r4}
	ldr r3, _0223B158 ; =0x0223DDE0
	mov r4, #1
	str r4, [r3, #0]
	mov r4, #0
	str r4, [r3, #4]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	str r2, [r3, #0x10]
	pop {r3, r4}
	bx lr
	nop
_0223B158: .word 0x0223DDE0
	thumb_func_end ov96_0223B140

	thumb_func_start ov96_0223B15C
ov96_0223B15C: ; 0x0223B15C
	push {r3, lr}
	ldr r1, _0223B3C8 ; =0x0223DDE0
	ldr r0, [r1, #0]
	cmp r0, #0xc
	bls _0223B168
	b _0223B3C4
_0223B168:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B174: ; jump table
	.short _0223B3C4 - _0223B174 - 2 ; case 0
	.short _0223B3C4 - _0223B174 - 2 ; case 1
	.short _0223B18E - _0223B174 - 2 ; case 2
	.short _0223B3B8 - _0223B174 - 2 ; case 3
	.short _0223B1D8 - _0223B174 - 2 ; case 4
	.short _0223B3B8 - _0223B174 - 2 ; case 5
	.short _0223B248 - _0223B174 - 2 ; case 6
	.short _0223B3B8 - _0223B174 - 2 ; case 7
	.short _0223B2BA - _0223B174 - 2 ; case 8
	.short _0223B3B8 - _0223B174 - 2 ; case 9
	.short _0223B32C - _0223B174 - 2 ; case 10
	.short _0223B3B8 - _0223B174 - 2 ; case 11
	.short _0223B3C4 - _0223B174 - 2 ; case 12
_0223B18E:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B19C
	cmp r0, #7
	beq _0223B1B4
	pop {r3, pc}
_0223B19C:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov96_0223B608
	ldr r1, _0223B3C8 ; =0x0223DDE0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B1B4:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	bl ov60_0221FE20
	cmp r0, #0
	ble _0223B1CA
	ldr r0, _0223B3CC ; =0x0223DEE0
	ldrb r1, [r0, #3]
	ldr r0, _0223B3C8 ; =0x0223DDE0
	b _0223B1D0
_0223B1CA:
	mov r1, #1
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mvn r1, r1
_0223B1D0:
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B1D8:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B1E6
	cmp r0, #7
	beq _0223B1FE
	pop {r3, pc}
_0223B1E6:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov96_0223B608
	ldr r1, _0223B3C8 ; =0x0223DDE0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B1FE:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	bl ov60_0221FE20
	ldr r1, _0223B3D0 ; =0x00000A38
	cmp r0, r1
	bne _0223B216
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0
	str r1, [r0, #4]
	b _0223B242
_0223B216:
	ldr r0, _0223B3CC ; =0x0223DEE0
	ldr r0, [r0, #8]
	ldrb r0, [r0]
	cmp r0, #2
	beq _0223B226
	cmp r0, #5
	beq _0223B230
	b _0223B23A
_0223B226:
	mov r1, #2
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B242
_0223B230:
	mov r1, #1
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B242
_0223B23A:
	mov r1, #4
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mvn r1, r1
	str r1, [r0, #4]
_0223B242:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B248:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B256
	cmp r0, #7
	beq _0223B26E
	pop {r3, pc}
_0223B256:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov96_0223B608
	ldr r1, _0223B3C8 ; =0x0223DDE0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B26E:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0xc
	ldr r2, _0223B3CC ; =0x0223DEE0
	str r1, [r0, #0]
	ldrb r2, [r2, #3]
	cmp r2, #5
	bhi _0223B2AC
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223B288: ; jump table
	.short _0223B2AC - _0223B288 - 2 ; case 0
	.short _0223B294 - _0223B288 - 2 ; case 1
	.short _0223B29A - _0223B288 - 2 ; case 2
	.short _0223B2AC - _0223B288 - 2 ; case 3
	.short _0223B2A0 - _0223B288 - 2 ; case 4
	.short _0223B2A6 - _0223B288 - 2 ; case 5
_0223B294:
	mov r1, #0
	str r1, [r0, #4]
	b _0223B2B4
_0223B29A:
	sub r1, #0xf
	str r1, [r0, #4]
	b _0223B2B4
_0223B2A0:
	sub r1, #0xd
	str r1, [r0, #4]
	b _0223B2B4
_0223B2A6:
	sub r1, #0xe
	str r1, [r0, #4]
	b _0223B2B4
_0223B2AC:
	mov r1, #4
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mvn r1, r1
	str r1, [r0, #4]
_0223B2B4:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B2BA:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B2C8
	cmp r0, #7
	beq _0223B2E0
	pop {r3, pc}
_0223B2C8:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov96_0223B608
	ldr r1, _0223B3C8 ; =0x0223DDE0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B2E0:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0xc
	ldr r2, _0223B3CC ; =0x0223DEE0
	str r1, [r0, #0]
	ldrb r2, [r2, #3]
	cmp r2, #5
	bhi _0223B31E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223B2FA: ; jump table
	.short _0223B31E - _0223B2FA - 2 ; case 0
	.short _0223B306 - _0223B2FA - 2 ; case 1
	.short _0223B31E - _0223B2FA - 2 ; case 2
	.short _0223B30C - _0223B2FA - 2 ; case 3
	.short _0223B312 - _0223B2FA - 2 ; case 4
	.short _0223B318 - _0223B2FA - 2 ; case 5
_0223B306:
	mov r1, #0
	str r1, [r0, #4]
	b _0223B326
_0223B30C:
	mov r1, #1
	str r1, [r0, #4]
	b _0223B326
_0223B312:
	mov r1, #2
	str r1, [r0, #4]
	b _0223B326
_0223B318:
	sub r1, #0xe
	str r1, [r0, #4]
	b _0223B326
_0223B31E:
	mov r1, #4
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mvn r1, r1
	str r1, [r0, #4]
_0223B326:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B32C:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B33A
	cmp r0, #7
	beq _0223B352
	pop {r3, pc}
_0223B33A:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov96_0223B608
	ldr r1, _0223B3C8 ; =0x0223DDE0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B352:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	bl ov60_0221FE20
	cmp r0, #8
	bne _0223B368
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0
	str r1, [r0, #4]
	b _0223B3B2
_0223B368:
	ldr r0, _0223B3CC ; =0x0223DEE0
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _0223B3AA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B37C: ; jump table
	.short _0223B3AA - _0223B37C - 2 ; case 0
	.short _0223B388 - _0223B37C - 2 ; case 1
	.short _0223B3AA - _0223B37C - 2 ; case 2
	.short _0223B390 - _0223B37C - 2 ; case 3
	.short _0223B398 - _0223B37C - 2 ; case 4
	.short _0223B3A0 - _0223B37C - 2 ; case 5
_0223B388:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #0
	str r1, [r0, #4]
	b _0223B3B2
_0223B390:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #1
	str r1, [r0, #4]
	b _0223B3B2
_0223B398:
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mov r1, #2
	str r1, [r0, #4]
	b _0223B3B2
_0223B3A0:
	mov r1, #1
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B3B2
_0223B3AA:
	mov r1, #4
	ldr r0, _0223B3C8 ; =0x0223DDE0
	mvn r1, r1
	str r1, [r0, #4]
_0223B3B2:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B3B8:
	mov r0, #0xc
	str r0, [r1, #0]
	sub r0, #0x10
	str r0, [r1, #4]
	bl ov60_0221FDEC
_0223B3C4:
	pop {r3, pc}
	nop
_0223B3C8: .word 0x0223DDE0
_0223B3CC: .word 0x0223DEE0
_0223B3D0: .word 0x00000A38
	thumb_func_end ov96_0223B15C

	thumb_func_start ov96_0223B3D4
ov96_0223B3D4: ; 0x0223B3D4
	ldr r1, _0223B3F0 ; =0x0223DDE0
	ldr r0, [r1, #0]
	cmp r0, #1
	beq _0223B3E2
	cmp r0, #0xc
	beq _0223B3E6
	b _0223B3EC
_0223B3E2:
	mov r0, #1
	bx lr
_0223B3E6:
	mov r0, #1
	str r0, [r1, #0]
	bx lr
_0223B3EC:
	mov r0, #0
	bx lr
	; .align 2, 0
_0223B3F0: .word 0x0223DDE0
	thumb_func_end ov96_0223B3D4

	thumb_func_start ov96_0223B3F4
ov96_0223B3F4: ; 0x0223B3F4
	ldr r0, _0223B3FC ; =0x0223DDE0
	ldr r0, [r0, #4]
	bx lr
	nop
_0223B3FC: .word 0x0223DDE0
	thumb_func_end ov96_0223B3F4

	thumb_func_start ov96_0223B400
ov96_0223B400: ; 0x0223B400
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov60_0221FC84
	ldr r0, _0223B440 ; =0x0223DDE0
	sub r1, r4, #1
	strb r1, [r0, #0x14]
	mov r0, #2
	str r0, [sp]
	ldr r0, _0223B444 ; =0x0223DB60
	ldr r1, _0223B448 ; =0x0223DDF4
	ldr r3, _0223B44C ; =0x0223DEE3
	mov r2, #1
	bl ov96_0223B5D0
	cmp r0, #0
	beq _0223B42E
	ldr r0, _0223B440 ; =0x0223DDE0
	mov r1, #2
	str r1, [r0, #0]
	add sp, #4
	pop {r3, r4, pc}
_0223B42E:
	ldr r0, _0223B440 ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	sub r1, #0x11
	str r1, [r0, #4]
	bl ov60_0221FDEC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223B440: .word 0x0223DDE0
_0223B444: .word 0x0223DB60
_0223B448: .word 0x0223DDF4
_0223B44C: .word 0x0223DEE3
	thumb_func_end ov96_0223B400

	thumb_func_start ov96_0223B450
ov96_0223B450: ; 0x0223B450
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _0223B49C ; =0x0223DEE0
	add r6, r2, #0
	add r4, r1, #0
	str r6, [r0, #8]
	bl ov60_0221FC84
	ldr r0, _0223B4A0 ; =0x0223DDE0
	sub r1, r5, #1
	strb r1, [r0, #0x14]
	sub r1, r4, #1
	strb r1, [r0, #0x15]
	ldr r0, _0223B4A4 ; =0x00000A38
	ldr r1, _0223B4A8 ; =0x0223DDF4
	str r0, [sp]
	ldr r0, _0223B4AC ; =0x0223DBAC
	mov r2, #2
	add r3, r6, #0
	bl ov96_0223B5D0
	cmp r0, #0
	beq _0223B48A
	ldr r0, _0223B4A0 ; =0x0223DDE0
	mov r1, #4
	str r1, [r0, #0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0223B48A:
	ldr r0, _0223B4A0 ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	sub r1, #0x11
	str r1, [r0, #4]
	bl ov60_0221FDEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223B49C: .word 0x0223DEE0
_0223B4A0: .word 0x0223DDE0
_0223B4A4: .word 0x00000A38
_0223B4A8: .word 0x0223DDF4
_0223B4AC: .word 0x0223DBAC
	thumb_func_end ov96_0223B450

	thumb_func_start ov96_0223B4B0
ov96_0223B4B0: ; 0x0223B4B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl ov60_0221FC84
	ldr r0, _0223B514 ; =0x0223DDF4
	add r1, r4, #0
	mov r2, #0xe4
	bl sub_020D50B8
	ldr r0, _0223B518 ; =0x0223DEC0
	sub r1, r5, #1
	strb r1, [r0, #0x18]
	sub r1, r6, #1
	strb r1, [r0, #0x19]
	ldr r3, _0223B51C ; =0x0223DEDB
	ldr r2, _0223B520 ; =0x0223DDEC
	strb r7, [r0, #0x1a]
	mov r1, #8
_0223B4DA:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _0223B4DA
	mov r0, #2
	str r0, [sp]
	ldr r0, _0223B524 ; =0x0223DBF8
	ldr r1, _0223B514 ; =0x0223DDF4
	ldr r3, _0223B528 ; =0x0223DEE3
	mov r2, #0xef
	bl ov96_0223B5D0
	cmp r0, #0
	beq _0223B502
	ldr r0, _0223B52C ; =0x0223DDE0
	mov r1, #6
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0223B502:
	ldr r0, _0223B52C ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	sub r1, #0x11
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B514: .word 0x0223DDF4
_0223B518: .word 0x0223DEC0
_0223B51C: .word 0x0223DEDB
_0223B520: .word 0x0223DDEC
_0223B524: .word 0x0223DBF8
_0223B528: .word 0x0223DEE3
_0223B52C: .word 0x0223DDE0
	thumb_func_end ov96_0223B4B0

	thumb_func_start ov96_0223B530
ov96_0223B530: ; 0x0223B530
	push {r3, lr}
	bl ov60_0221FC84
	mov r0, #2
	str r0, [sp]
	ldr r0, _0223B564 ; =0x0223DC44
	ldr r1, _0223B568 ; =0x0223DDF4
	ldr r3, _0223B56C ; =0x0223DEE3
	mov r2, #0
	bl ov96_0223B5D0
	cmp r0, #0
	beq _0223B552
	ldr r0, _0223B570 ; =0x0223DDE0
	mov r1, #8
	str r1, [r0, #0]
	pop {r3, pc}
_0223B552:
	ldr r0, _0223B570 ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	sub r1, #0x11
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
	nop
_0223B564: .word 0x0223DC44
_0223B568: .word 0x0223DDF4
_0223B56C: .word 0x0223DEE3
_0223B570: .word 0x0223DDE0
	thumb_func_end ov96_0223B530

	thumb_func_start ov96_0223B574
ov96_0223B574: ; 0x0223B574
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x1c
	add r4, r1, #0
	bl sub_020C3FA0
	ldr r0, _0223B5C0 ; =0x0223DDF4
	add r1, r5, #0
	mov r2, #0x64
	bl sub_020D50B8
	ldr r0, _0223B5C4 ; =0x0223DEE0
	str r4, [r0, #8]
	bl ov60_0221FC84
	mov r0, #8
	str r0, [sp]
	ldr r3, _0223B5C4 ; =0x0223DEE0
	ldr r0, _0223B5C8 ; =0x0223DC8C
	ldr r1, _0223B5C0 ; =0x0223DDF4
	ldr r3, [r3, #8]
	mov r2, #0x64
	bl ov96_0223B5D0
	cmp r0, #0
	beq _0223B5B0
	ldr r0, _0223B5CC ; =0x0223DDE0
	mov r1, #0xa
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
_0223B5B0:
	ldr r0, _0223B5CC ; =0x0223DDE0
	mov r1, #0xc
	str r1, [r0, #0]
	sub r1, #0x11
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223B5C0: .word 0x0223DDF4
_0223B5C4: .word 0x0223DEE0
_0223B5C8: .word 0x0223DC8C
_0223B5CC: .word 0x0223DDE0
	thumb_func_end ov96_0223B574

	thumb_func_start ov96_0223B5D0
ov96_0223B5D0: ; 0x0223B5D0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	str r3, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	ldr r1, _0223B604 ; =0x0223DDE0
	add r2, r5, #0
	ldr r1, [r1, #8]
	add r3, r4, #0
	bl ov60_0221FCA8
	cmp r0, #0
	beq _0223B5F6
	cmp r0, #1
	beq _0223B5FC
	cmp r0, #2
	b _0223B5FC
_0223B5F6:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223B5FC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223B604: .word 0x0223DDE0
	thumb_func_end ov96_0223B5D0

	thumb_func_start ov96_0223B608
ov96_0223B608: ; 0x0223B608
	push {r4, lr}
	cmp r0, #0x20
	bhi _0223B680
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B61A: ; jump table
	.short _0223B65C - _0223B61A - 2 ; case 0
	.short _0223B65C - _0223B61A - 2 ; case 1
	.short _0223B662 - _0223B61A - 2 ; case 2
	.short _0223B65C - _0223B61A - 2 ; case 3
	.short _0223B65C - _0223B61A - 2 ; case 4
	.short _0223B65C - _0223B61A - 2 ; case 5
	.short _0223B65C - _0223B61A - 2 ; case 6
	.short _0223B680 - _0223B61A - 2 ; case 7
	.short _0223B662 - _0223B61A - 2 ; case 8
	.short _0223B65C - _0223B61A - 2 ; case 9
	.short _0223B65C - _0223B61A - 2 ; case 10
	.short _0223B668 - _0223B61A - 2 ; case 11
	.short _0223B66E - _0223B61A - 2 ; case 12
	.short _0223B66E - _0223B61A - 2 ; case 13
	.short _0223B65C - _0223B61A - 2 ; case 14
	.short _0223B67A - _0223B61A - 2 ; case 15
	.short _0223B674 - _0223B61A - 2 ; case 16
	.short _0223B674 - _0223B61A - 2 ; case 17
	.short _0223B674 - _0223B61A - 2 ; case 18
	.short _0223B674 - _0223B61A - 2 ; case 19
	.short _0223B65C - _0223B61A - 2 ; case 20
	.short _0223B65C - _0223B61A - 2 ; case 21
	.short _0223B65C - _0223B61A - 2 ; case 22
	.short _0223B65C - _0223B61A - 2 ; case 23
	.short _0223B680 - _0223B61A - 2 ; case 24
	.short _0223B662 - _0223B61A - 2 ; case 25
	.short _0223B674 - _0223B61A - 2 ; case 26
	.short _0223B674 - _0223B61A - 2 ; case 27
	.short _0223B674 - _0223B61A - 2 ; case 28
	.short _0223B674 - _0223B61A - 2 ; case 29
	.short _0223B67A - _0223B61A - 2 ; case 30
	.short _0223B674 - _0223B61A - 2 ; case 31
	.short _0223B65C - _0223B61A - 2 ; case 32
_0223B65C:
	mov r4, #4
	mvn r4, r4
	b _0223B684
_0223B662:
	mov r4, #4
	mvn r4, r4
	b _0223B684
_0223B668:
	mov r4, #6
	mvn r4, r4
	b _0223B684
_0223B66E:
	mov r4, #6
	mvn r4, r4
	b _0223B684
_0223B674:
	mov r4, #1
	mvn r4, r4
	b _0223B684
_0223B67A:
	mov r4, #1
	mvn r4, r4
	b _0223B684
_0223B680:
	mov r4, #4
	mvn r4, r4
_0223B684:
	mov r0, #4
	mvn r0, r0
	cmp r4, r0
	beq _0223B69C
	bl ov4_02213898
	cmp r0, #9
	beq _0223B698
	mov r4, #5
	mvn r4, r4
_0223B698:
	bl ov4_021D76E8
_0223B69C:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov96_0223B608
	.data


	.global Unk_ov96_0223DB60
Unk_ov96_0223DB60: ; 0x0223DB60
	.incbin "incbin/overlay96_data.bin", 0x0, 0x4C - 0x0

	.global Unk_ov96_0223DBAC
Unk_ov96_0223DBAC: ; 0x0223DBAC
	.incbin "incbin/overlay96_data.bin", 0x4C, 0x98 - 0x4C

	.global Unk_ov96_0223DBF8
Unk_ov96_0223DBF8: ; 0x0223DBF8
	.incbin "incbin/overlay96_data.bin", 0x98, 0xE4 - 0x98

	.global Unk_ov96_0223DC44
Unk_ov96_0223DC44: ; 0x0223DC44
	.incbin "incbin/overlay96_data.bin", 0xE4, 0x12C - 0xE4

	.global Unk_ov96_0223DC8C
Unk_ov96_0223DC8C: ; 0x0223DC8C
	.incbin "incbin/overlay96_data.bin", 0x12C, 0x48


	.bss


	.global Unk_ov96_0223DDE0
Unk_ov96_0223DDE0: ; 0x0223DDE0
	.space 0x10C

