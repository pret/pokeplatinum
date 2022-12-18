	.include "macros/function.inc"
	.include "include/ov94_0223B140.inc"

	

	.text


	thumb_func_start ov94_0223B140
ov94_0223B140: ; 0x0223B140
	push {r3, r4}
	ldr r3, _0223B158 ; =0x02246AC0
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
_0223B158: .word 0x02246AC0
	thumb_func_end ov94_0223B140

	thumb_func_start ov94_0223B15C
ov94_0223B15C: ; 0x0223B15C
	push {r3, lr}
	ldr r1, _0223B440 ; =0x02246AC0
	ldr r0, [r1, #0]
	cmp r0, #0x18
	bls _0223B168
	b _0223B7A4
_0223B168:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B174: ; jump table
	.short _0223B7A4 - _0223B174 - 2 ; case 0
	.short _0223B7A4 - _0223B174 - 2 ; case 1
	.short _0223B1A6 - _0223B174 - 2 ; case 2
	.short _0223B798 - _0223B174 - 2 ; case 3
	.short _0223B254 - _0223B174 - 2 ; case 4
	.short _0223B798 - _0223B174 - 2 ; case 5
	.short _0223B2DA - _0223B174 - 2 ; case 6
	.short _0223B798 - _0223B174 - 2 ; case 7
	.short _0223B35A - _0223B174 - 2 ; case 8
	.short _0223B798 - _0223B174 - 2 ; case 9
	.short _0223B3EE - _0223B174 - 2 ; case 10
	.short _0223B798 - _0223B174 - 2 ; case 11
	.short _0223B46C - _0223B174 - 2 ; case 12
	.short _0223B798 - _0223B174 - 2 ; case 13
	.short _0223B4F2 - _0223B174 - 2 ; case 14
	.short _0223B798 - _0223B174 - 2 ; case 15
	.short _0223B56A - _0223B174 - 2 ; case 16
	.short _0223B798 - _0223B174 - 2 ; case 17
	.short _0223B63C - _0223B174 - 2 ; case 18
	.short _0223B798 - _0223B174 - 2 ; case 19
	.short _0223B690 - _0223B174 - 2 ; case 20
	.short _0223B798 - _0223B174 - 2 ; case 21
	.short _0223B700 - _0223B174 - 2 ; case 22
	.short _0223B798 - _0223B174 - 2 ; case 23
	.short _0223B7A4 - _0223B174 - 2 ; case 24
_0223B1A6:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B1B4
	cmp r0, #7
	beq _0223B1CC
	pop {r3, pc}
_0223B1B4:
	ldr r0, _0223B440 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov94_0223BC18
	ldr r1, _0223B440 ; =0x02246AC0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B1CC:
	ldr r0, _0223B440 ; =0x02246AC0
	mov r1, #0x18
	ldr r2, _0223B444 ; =0x02246BE0
	str r1, [r0, #0]
	ldrb r2, [r2, #0x1c]
	cmp r2, #0xe
	bhi _0223B246
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223B1E6: ; jump table
	.short _0223B246 - _0223B1E6 - 2 ; case 0
	.short _0223B204 - _0223B1E6 - 2 ; case 1
	.short _0223B20A - _0223B1E6 - 2 ; case 2
	.short _0223B210 - _0223B1E6 - 2 ; case 3
	.short _0223B246 - _0223B1E6 - 2 ; case 4
	.short _0223B246 - _0223B1E6 - 2 ; case 5
	.short _0223B246 - _0223B1E6 - 2 ; case 6
	.short _0223B216 - _0223B1E6 - 2 ; case 7
	.short _0223B228 - _0223B1E6 - 2 ; case 8
	.short _0223B22E - _0223B1E6 - 2 ; case 9
	.short _0223B234 - _0223B1E6 - 2 ; case 10
	.short _0223B23A - _0223B1E6 - 2 ; case 11
	.short _0223B21C - _0223B1E6 - 2 ; case 12
	.short _0223B222 - _0223B1E6 - 2 ; case 13
	.short _0223B240 - _0223B1E6 - 2 ; case 14
_0223B204:
	mov r1, #0
	str r1, [r0, #4]
	b _0223B24E
_0223B20A:
	sub r1, #0x1d
	str r1, [r0, #4]
	b _0223B24E
_0223B210:
	sub r1, #0x1c
	str r1, [r0, #4]
	b _0223B24E
_0223B216:
	sub r1, #0x19
	str r1, [r0, #4]
	b _0223B24E
_0223B21C:
	sub r1, #0x1e
	str r1, [r0, #4]
	b _0223B24E
_0223B222:
	sub r1, #0x1f
	str r1, [r0, #4]
	b _0223B24E
_0223B228:
	sub r1, #0x20
	str r1, [r0, #4]
	b _0223B24E
_0223B22E:
	sub r1, #0x21
	str r1, [r0, #4]
	b _0223B24E
_0223B234:
	sub r1, #0x22
	str r1, [r0, #4]
	b _0223B24E
_0223B23A:
	sub r1, #0x23
	str r1, [r0, #4]
	b _0223B24E
_0223B240:
	sub r1, #0x1a
	str r1, [r0, #4]
	b _0223B24E
_0223B246:
	mov r1, #0xc
	ldr r0, _0223B440 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
_0223B24E:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B254:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B262
	cmp r0, #7
	beq _0223B27A
	pop {r3, pc}
_0223B262:
	ldr r0, _0223B440 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov94_0223BC18
	ldr r1, _0223B440 ; =0x02246AC0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B27A:
	ldr r0, _0223B440 ; =0x02246AC0
	mov r2, #0x18
	ldr r1, _0223B444 ; =0x02246BE0
	str r2, [r0, #0]
	ldrb r1, [r1, #0x1c]
	cmp r1, #5
	bgt _0223B2A4
	cmp r1, #0
	blt _0223B2CC
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0223B298: ; jump table
	.short _0223B2CC - _0223B298 - 2 ; case 0
	.short _0223B2AA - _0223B298 - 2 ; case 1
	.short _0223B2B0 - _0223B298 - 2 ; case 2
	.short _0223B2B6 - _0223B298 - 2 ; case 3
	.short _0223B2CC - _0223B298 - 2 ; case 4
	.short _0223B2BC - _0223B298 - 2 ; case 5
_0223B2A4:
	cmp r1, #0xe
	beq _0223B2C2
	b _0223B2CC
_0223B2AA:
	mov r1, #0
	str r1, [r0, #4]
	b _0223B2D4
_0223B2B0:
	sub r2, #0x1d
	str r2, [r0, #4]
	b _0223B2D4
_0223B2B6:
	sub r2, #0x1c
	str r2, [r0, #4]
	b _0223B2D4
_0223B2BC:
	sub r2, #0x1b
	str r2, [r0, #4]
	b _0223B2D4
_0223B2C2:
	mov r1, #1
	ldr r0, _0223B440 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B2D4
_0223B2CC:
	mov r1, #0xc
	ldr r0, _0223B440 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
_0223B2D4:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B2DA:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B2E8
	cmp r0, #7
	beq _0223B300
	pop {r3, pc}
_0223B2E8:
	ldr r0, _0223B440 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov94_0223BC18
	ldr r1, _0223B440 ; =0x02246AC0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B300:
	ldr r0, _0223B440 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE20
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	bne _0223B31A
	ldr r0, _0223B440 ; =0x02246AC0
	mov r1, #0
	str r1, [r0, #4]
	b _0223B354
_0223B31A:
	ldr r0, _0223B448 ; =0x02246BC0
	ldr r0, [r0, #0x40]
	ldrb r0, [r0]
	cmp r0, #3
	beq _0223B338
	cmp r0, #5
	beq _0223B32E
	cmp r0, #0xe
	beq _0223B342
	b _0223B34C
_0223B32E:
	mov r1, #2
	ldr r0, _0223B440 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B354
_0223B338:
	mov r1, #3
	ldr r0, _0223B440 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B354
_0223B342:
	mov r1, #1
	ldr r0, _0223B440 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B354
_0223B34C:
	mov r1, #0xc
	ldr r0, _0223B440 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
_0223B354:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B35A:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B368
	cmp r0, #7
	beq _0223B380
	pop {r3, pc}
_0223B368:
	ldr r0, _0223B440 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov94_0223BC18
	ldr r1, _0223B440 ; =0x02246AC0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B380:
	ldr r0, _0223B440 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE20
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	bne _0223B39A
	ldr r0, _0223B440 ; =0x02246AC0
	mov r1, #1
	str r1, [r0, #4]
	b _0223B3E8
_0223B39A:
	ldr r0, _0223B448 ; =0x02246BC0
	ldr r0, [r0, #0x40]
	ldrb r0, [r0]
	cmp r0, #5
	bgt _0223B3B4
	cmp r0, #3
	blt _0223B3E0
	beq _0223B3C4
	cmp r0, #4
	beq _0223B3CE
	cmp r0, #5
	beq _0223B3BA
	b _0223B3E0
_0223B3B4:
	cmp r0, #0xe
	beq _0223B3D6
	b _0223B3E0
_0223B3BA:
	mov r1, #2
	ldr r0, _0223B440 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B3E8
_0223B3C4:
	mov r1, #3
	ldr r0, _0223B440 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B3E8
_0223B3CE:
	ldr r0, _0223B440 ; =0x02246AC0
	mov r1, #0
	str r1, [r0, #4]
	b _0223B3E8
_0223B3D6:
	mov r1, #1
	ldr r0, _0223B440 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B3E8
_0223B3E0:
	mov r1, #0xc
	ldr r0, _0223B440 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
_0223B3E8:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B3EE:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B3FC
	cmp r0, #7
	beq _0223B414
	pop {r3, pc}
_0223B3FC:
	ldr r0, _0223B440 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov94_0223BC18
	ldr r1, _0223B440 ; =0x02246AC0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B414:
	ldr r1, _0223B440 ; =0x02246AC0
	mov r2, #0x18
	ldr r0, _0223B444 ; =0x02246BE0
	str r2, [r1, #0]
	ldrb r0, [r0, #0x1c]
	cmp r0, #5
	bgt _0223B432
	cmp r0, #1
	blt _0223B45E
	beq _0223B438
	cmp r0, #3
	beq _0223B452
	cmp r0, #5
	beq _0223B44C
	b _0223B45E
_0223B432:
	cmp r0, #0xe
	beq _0223B458
	b _0223B45E
_0223B438:
	mov r0, #0
	str r0, [r1, #4]
	b _0223B466
	nop
_0223B440: .word 0x02246AC0
_0223B444: .word 0x02246BE0
_0223B448: .word 0x02246BC0
_0223B44C:
	sub r2, #0x1b
	str r2, [r1, #4]
	b _0223B466
_0223B452:
	sub r2, #0x1c
	str r2, [r1, #4]
	b _0223B466
_0223B458:
	sub r2, #0x1a
	str r2, [r1, #4]
	b _0223B466
_0223B45E:
	mov r1, #0xc
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
_0223B466:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B46C:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B47A
	cmp r0, #7
	beq _0223B492
	pop {r3, pc}
_0223B47A:
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov94_0223BC18
	ldr r1, _0223B740 ; =0x02246AC0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B492:
	ldr r0, _0223B740 ; =0x02246AC0
	mov r2, #0x18
	ldr r1, _0223B744 ; =0x02246BE0
	str r2, [r0, #0]
	ldrb r1, [r1, #0x1c]
	cmp r1, #5
	bgt _0223B4BC
	cmp r1, #0
	blt _0223B4E4
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0223B4B0: ; jump table
	.short _0223B4E4 - _0223B4B0 - 2 ; case 0
	.short _0223B4C2 - _0223B4B0 - 2 ; case 1
	.short _0223B4CE - _0223B4B0 - 2 ; case 2
	.short _0223B4D4 - _0223B4B0 - 2 ; case 3
	.short _0223B4E4 - _0223B4B0 - 2 ; case 4
	.short _0223B4C8 - _0223B4B0 - 2 ; case 5
_0223B4BC:
	cmp r1, #0xe
	beq _0223B4DA
	b _0223B4E4
_0223B4C2:
	mov r1, #0
	str r1, [r0, #4]
	b _0223B4EC
_0223B4C8:
	sub r2, #0x1b
	str r2, [r0, #4]
	b _0223B4EC
_0223B4CE:
	sub r2, #0x1d
	str r2, [r0, #4]
	b _0223B4EC
_0223B4D4:
	sub r2, #0x1c
	str r2, [r0, #4]
	b _0223B4EC
_0223B4DA:
	mov r1, #1
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B4EC
_0223B4E4:
	mov r1, #0xc
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
_0223B4EC:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B4F2:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B500
	cmp r0, #7
	beq _0223B518
	pop {r3, pc}
_0223B500:
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov94_0223BC18
	ldr r1, _0223B740 ; =0x02246AC0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B518:
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE20
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	blo _0223B53C
	bl ov60_0221FE20
	mov r1, #0x49
	lsl r1, r1, #2
	bl sub_020E2178
	ldr r1, _0223B740 ; =0x02246AC0
	str r0, [r1, #4]
	b _0223B564
_0223B53C:
	cmp r0, #0
	bne _0223B548
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0
	str r1, [r0, #4]
	b _0223B564
_0223B548:
	ldr r0, _0223B748 ; =0x02246BC0
	ldr r0, [r0, #0x40]
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _0223B55C
	mov r1, #1
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B564
_0223B55C:
	mov r1, #0xc
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
_0223B564:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B56A:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B578
	cmp r0, #7
	beq _0223B590
	pop {r3, pc}
_0223B578:
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov94_0223BC18
	ldr r1, _0223B740 ; =0x02246AC0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B590:
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE20
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	bne _0223B5AA
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0
	str r1, [r0, #4]
	b _0223B636
_0223B5AA:
	ldr r0, _0223B748 ; =0x02246BC0
	ldr r0, [r0, #0x40]
	ldrb r0, [r0]
	cmp r0, #0xe
	bhi _0223B62E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B5C0: ; jump table
	.short _0223B62E - _0223B5C0 - 2 ; case 0
	.short _0223B62E - _0223B5C0 - 2 ; case 1
	.short _0223B5DE - _0223B5C0 - 2 ; case 2
	.short _0223B62E - _0223B5C0 - 2 ; case 3
	.short _0223B62E - _0223B5C0 - 2 ; case 4
	.short _0223B62E - _0223B5C0 - 2 ; case 5
	.short _0223B62E - _0223B5C0 - 2 ; case 6
	.short _0223B62E - _0223B5C0 - 2 ; case 7
	.short _0223B5FC - _0223B5C0 - 2 ; case 8
	.short _0223B606 - _0223B5C0 - 2 ; case 9
	.short _0223B610 - _0223B5C0 - 2 ; case 10
	.short _0223B61A - _0223B5C0 - 2 ; case 11
	.short _0223B5E8 - _0223B5C0 - 2 ; case 12
	.short _0223B5F2 - _0223B5C0 - 2 ; case 13
	.short _0223B624 - _0223B5C0 - 2 ; case 14
_0223B5DE:
	mov r1, #4
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B636
_0223B5E8:
	mov r1, #5
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B636
_0223B5F2:
	mov r1, #6
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B636
_0223B5FC:
	mov r1, #7
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B636
_0223B606:
	mov r1, #8
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B636
_0223B610:
	mov r1, #9
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B636
_0223B61A:
	mov r1, #0xa
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B636
_0223B624:
	mov r1, #1
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B636
_0223B62E:
	mov r1, #0xc
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
_0223B636:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B63C:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B64A
	cmp r0, #7
	beq _0223B662
	pop {r3, pc}
_0223B64A:
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov94_0223BC18
	ldr r1, _0223B740 ; =0x02246AC0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B662:
	ldr r1, _0223B740 ; =0x02246AC0
	mov r2, #0x18
	ldr r0, _0223B744 ; =0x02246BE0
	str r2, [r1, #0]
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	beq _0223B67A
	cmp r0, #2
	beq _0223B686
	cmp r0, #0xe
	beq _0223B680
	b _0223B68A
_0223B67A:
	mov r0, #0
	str r0, [r1, #4]
	b _0223B68A
_0223B680:
	sub r2, #0x1a
	str r2, [r1, #4]
	b _0223B68A
_0223B686:
	sub r2, #0x1d
	str r2, [r1, #4]
_0223B68A:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B690:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B69E
	cmp r0, #7
	beq _0223B6B6
	pop {r3, pc}
_0223B69E:
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov94_0223BC18
	ldr r1, _0223B740 ; =0x02246AC0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B6B6:
	ldr r1, _0223B740 ; =0x02246AC0
	mov r2, #0x18
	ldr r0, _0223B744 ; =0x02246BE0
	str r2, [r1, #0]
	ldrb r0, [r0, #0x1c]
	cmp r0, #7
	bgt _0223B6D4
	cmp r0, #1
	blt _0223B6F2
	beq _0223B6DA
	cmp r0, #6
	beq _0223B6E0
	cmp r0, #7
	beq _0223B6E6
	b _0223B6F2
_0223B6D4:
	cmp r0, #0xe
	beq _0223B6EC
	b _0223B6F2
_0223B6DA:
	mov r0, #0
	str r0, [r1, #4]
	b _0223B6FA
_0223B6E0:
	mov r0, #1
	str r0, [r1, #4]
	b _0223B6FA
_0223B6E6:
	mov r0, #2
	str r0, [r1, #4]
	b _0223B6FA
_0223B6EC:
	sub r2, #0x1a
	str r2, [r1, #4]
	b _0223B6FA
_0223B6F2:
	mov r1, #0xc
	ldr r0, _0223B740 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
_0223B6FA:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B700:
	bl ov60_0221FD48
	cmp r0, #1
	beq _0223B70E
	cmp r0, #7
	beq _0223B726
	pop {r3, pc}
_0223B70E:
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE14
	bl ov94_0223BC18
	ldr r1, _0223B740 ; =0x02246AC0
	str r0, [r1, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B726:
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	bl ov60_0221FE20
	cmp r0, #8
	bne _0223B73C
	ldr r0, _0223B740 ; =0x02246AC0
	mov r1, #0
	str r1, [r0, #4]
	b _0223B792
_0223B73C:
	ldr r0, _0223B744 ; =0x02246BE0
	b _0223B74C
	; .align 2, 0
_0223B740: .word 0x02246AC0
_0223B744: .word 0x02246BE0
_0223B748: .word 0x02246BC0
_0223B74C:
	ldrb r0, [r0, #0x1c]
	cmp r0, #7
	bgt _0223B762
	cmp r0, #1
	blt _0223B78A
	beq _0223B768
	cmp r0, #6
	beq _0223B770
	cmp r0, #7
	beq _0223B778
	b _0223B78A
_0223B762:
	cmp r0, #0xe
	beq _0223B780
	b _0223B78A
_0223B768:
	ldr r0, _0223B7A8 ; =0x02246AC0
	mov r1, #0
	str r1, [r0, #4]
	b _0223B792
_0223B770:
	ldr r0, _0223B7A8 ; =0x02246AC0
	mov r1, #1
	str r1, [r0, #4]
	b _0223B792
_0223B778:
	ldr r0, _0223B7A8 ; =0x02246AC0
	mov r1, #2
	str r1, [r0, #4]
	b _0223B792
_0223B780:
	mov r1, #1
	ldr r0, _0223B7A8 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
	b _0223B792
_0223B78A:
	mov r1, #0xc
	ldr r0, _0223B7A8 ; =0x02246AC0
	mvn r1, r1
	str r1, [r0, #4]
_0223B792:
	bl ov60_0221FDEC
	pop {r3, pc}
_0223B798:
	mov r0, #0x18
	str r0, [r1, #0]
	sub r0, #0x24
	str r0, [r1, #4]
	bl ov60_0221FDEC
_0223B7A4:
	pop {r3, pc}
	nop
_0223B7A8: .word 0x02246AC0
	thumb_func_end ov94_0223B15C

	thumb_func_start ov94_0223B7AC
ov94_0223B7AC: ; 0x0223B7AC
	ldr r0, _0223B7B4 ; =0x02246AC0
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_0223B7B4: .word 0x02246AC0
	thumb_func_end ov94_0223B7AC

	thumb_func_start ov94_0223B7B8
ov94_0223B7B8: ; 0x0223B7B8
	ldr r1, _0223B7D4 ; =0x02246AC0
	ldr r0, [r1, #0]
	cmp r0, #1
	beq _0223B7C6
	cmp r0, #0x18
	beq _0223B7CA
	b _0223B7D0
_0223B7C6:
	mov r0, #1
	bx lr
_0223B7CA:
	mov r0, #1
	str r0, [r1, #0]
	bx lr
_0223B7D0:
	mov r0, #0
	bx lr
	; .align 2, 0
_0223B7D4: .word 0x02246AC0
	thumb_func_end ov94_0223B7B8

	thumb_func_start ov94_0223B7D8
ov94_0223B7D8: ; 0x0223B7D8
	ldr r0, _0223B7E0 ; =0x02246AC0
	ldr r0, [r0, #4]
	bx lr
	nop
_0223B7E0: .word 0x02246AC0
	thumb_func_end ov94_0223B7D8

	thumb_func_start ov94_0223B7E4
ov94_0223B7E4: ; 0x0223B7E4
	push {r3, lr}
	add r1, r0, #0
	mov r2, #0x49
	ldr r0, _0223B824 ; =0x02246AD4
	lsl r2, r2, #2
	bl sub_020D50B8
	bl ov60_0221FC84
	mov r0, #2
	str r0, [sp]
	mov r2, #0x49
	ldr r0, _0223B828 ; =0x02246400
	ldr r1, _0223B824 ; =0x02246AD4
	ldr r3, _0223B82C ; =0x02246BFC
	lsl r2, r2, #2
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223B814
	ldr r0, _0223B830 ; =0x02246AC0
	mov r1, #2
	str r1, [r0, #0]
	pop {r3, pc}
_0223B814:
	ldr r0, _0223B830 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
	; .align 2, 0
_0223B824: .word 0x02246AD4
_0223B828: .word 0x02246400
_0223B82C: .word 0x02246BFC
_0223B830: .word 0x02246AC0
	thumb_func_end ov94_0223B7E4

	thumb_func_start ov94_0223B834
ov94_0223B834: ; 0x0223B834
	push {r3, lr}
	ldr r0, _0223B874 ; =0x02246ACC
	ldr r2, _0223B878 ; =0x02246AD4
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	str r1, [r2, #0]
	str r0, [r2, #4]
	bl ov60_0221FC84
	mov r0, #2
	str r0, [sp]
	ldr r0, _0223B87C ; =0x0224644C
	ldr r1, _0223B878 ; =0x02246AD4
	ldr r3, _0223B880 ; =0x02246BFC
	mov r2, #8
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223B862
	ldr r0, _0223B884 ; =0x02246AC0
	mov r1, #4
	str r1, [r0, #0]
	pop {r3, pc}
_0223B862:
	ldr r0, _0223B884 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
	nop
_0223B874: .word 0x02246ACC
_0223B878: .word 0x02246AD4
_0223B87C: .word 0x0224644C
_0223B880: .word 0x02246BFC
_0223B884: .word 0x02246AC0
	thumb_func_end ov94_0223B834

	thumb_func_start ov94_0223B888
ov94_0223B888: ; 0x0223B888
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0223B8C8 ; =0x02246BC0
	str r4, [r0, #0x40]
	bl ov60_0221FC84
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp]
	ldr r0, _0223B8CC ; =0x0224649C
	ldr r1, _0223B8D0 ; =0x02246AD4
	mov r2, #0
	add r3, r4, #0
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223B8B6
	ldr r0, _0223B8D4 ; =0x02246AC0
	mov r1, #6
	str r1, [r0, #0]
	add sp, #4
	pop {r3, r4, pc}
_0223B8B6:
	ldr r0, _0223B8D4 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223B8C8: .word 0x02246BC0
_0223B8CC: .word 0x0224649C
_0223B8D0: .word 0x02246AD4
_0223B8D4: .word 0x02246AC0
	thumb_func_end ov94_0223B888

	thumb_func_start ov94_0223B8D8
ov94_0223B8D8: ; 0x0223B8D8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0223B918 ; =0x02246BC0
	str r4, [r0, #0x40]
	bl ov60_0221FC84
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp]
	ldr r0, _0223B91C ; =0x022464E4
	ldr r1, _0223B920 ; =0x02246AD4
	mov r2, #0
	add r3, r4, #0
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223B906
	ldr r0, _0223B924 ; =0x02246AC0
	mov r1, #8
	str r1, [r0, #0]
	add sp, #4
	pop {r3, r4, pc}
_0223B906:
	ldr r0, _0223B924 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223B918: .word 0x02246BC0
_0223B91C: .word 0x022464E4
_0223B920: .word 0x02246AD4
_0223B924: .word 0x02246AC0
	thumb_func_end ov94_0223B8D8

	thumb_func_start ov94_0223B928
ov94_0223B928: ; 0x0223B928
	push {r3, lr}
	bl ov60_0221FC84
	mov r0, #2
	str r0, [sp]
	ldr r0, _0223B95C ; =0x02246530
	ldr r1, _0223B960 ; =0x02246AD4
	ldr r3, _0223B964 ; =0x02246BFC
	mov r2, #0
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223B94A
	ldr r0, _0223B968 ; =0x02246AC0
	mov r1, #0xa
	str r1, [r0, #0]
	pop {r3, pc}
_0223B94A:
	ldr r0, _0223B968 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
	nop
_0223B95C: .word 0x02246530
_0223B960: .word 0x02246AD4
_0223B964: .word 0x02246BFC
_0223B968: .word 0x02246AC0
	thumb_func_end ov94_0223B928

	thumb_func_start ov94_0223B96C
ov94_0223B96C: ; 0x0223B96C
	push {r3, lr}
	bl ov60_0221FC84
	mov r0, #2
	str r0, [sp]
	ldr r0, _0223B9A0 ; =0x0224657C
	ldr r1, _0223B9A4 ; =0x02246AD4
	ldr r3, _0223B9A8 ; =0x02246BFC
	mov r2, #0
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223B98E
	ldr r0, _0223B9AC ; =0x02246AC0
	mov r1, #0xc
	str r1, [r0, #0]
	pop {r3, pc}
_0223B98E:
	ldr r0, _0223B9AC ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
	nop
_0223B9A0: .word 0x0224657C
_0223B9A4: .word 0x02246AD4
_0223B9A8: .word 0x02246BFC
_0223B9AC: .word 0x02246AC0
	thumb_func_end ov94_0223B96C

	thumb_func_start ov94_0223B9B0
ov94_0223B9B0: ; 0x0223B9B0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _0223BA14 ; =0x02246BC0
	add r6, r2, #0
	str r6, [r0, #0x40]
	add r4, r1, #0
	bl ov60_0221FC84
	ldrb r0, [r5]
	ldr r1, _0223BA18 ; =0x02246AD4
	mov r2, #7
	strb r0, [r1]
	ldrb r0, [r5, #1]
	add r3, r6, #0
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	strb r0, [r1, #2]
	ldrb r0, [r5, #3]
	strb r0, [r1, #3]
	ldrb r0, [r5, #4]
	strb r0, [r1, #4]
	ldrb r0, [r5, #5]
	strb r0, [r1, #5]
	ldr r0, _0223BA1C ; =0x02246AC0
	strb r4, [r0, #0x1a]
	mov r0, #0x49
	lsl r0, r0, #2
	mul r0, r4
	str r0, [sp]
	ldr r0, _0223BA20 ; =0x022465C8
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223BA00
	ldr r0, _0223BA1C ; =0x02246AC0
	mov r1, #0xe
	str r1, [r0, #0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0223BA00:
	ldr r0, _0223BA1C ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0223BA14: .word 0x02246BC0
_0223BA18: .word 0x02246AD4
_0223BA1C: .word 0x02246AC0
_0223BA20: .word 0x022465C8
	thumb_func_end ov94_0223B9B0

	thumb_func_start ov94_0223BA24
ov94_0223BA24: ; 0x0223BA24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223BA78 ; =0x02246BC0
	add r4, r1, #0
	str r4, [r0, #0x40]
	bl ov60_0221FC84
	ldr r3, _0223BA7C ; =0x02246AD4
	add r2, r5, #0
	mov r1, #8
_0223BA38:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _0223BA38
	mov r0, #6
	ldrsb r1, [r5, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	mul r0, r1
	str r0, [sp]
	ldr r0, _0223BA80 ; =0x022465C8
	ldr r1, _0223BA7C ; =0x02246AD4
	mov r2, #8
	add r3, r4, #0
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223BA68
	ldr r0, _0223BA84 ; =0x02246AC0
	mov r1, #0xe
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
_0223BA68:
	ldr r0, _0223BA84 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223BA78: .word 0x02246BC0
_0223BA7C: .word 0x02246AD4
_0223BA80: .word 0x022465C8
_0223BA84: .word 0x02246AC0
	thumb_func_end ov94_0223BA24

	thumb_func_start ov94_0223BA88
ov94_0223BA88: ; 0x0223BA88
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _0223BADC ; =0x02246BC0
	add r6, r2, #0
	add r4, r1, #0
	str r6, [r0, #0x40]
	bl ov60_0221FC84
	mov r2, #0x49
	ldr r0, _0223BAE0 ; =0x02246AD4
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_020D50B8
	ldr r0, _0223BADC ; =0x02246BC0
	mov r2, #0x49
	str r5, [r0, #0x38]
	lsl r2, r2, #2
	str r2, [sp]
	ldr r0, _0223BAE4 ; =0x02246614
	ldr r1, _0223BAE0 ; =0x02246AD4
	add r2, r2, #4
	add r3, r6, #0
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223BACA
	ldr r0, _0223BAE8 ; =0x02246AC0
	mov r1, #0x10
	str r1, [r0, #0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0223BACA:
	ldr r0, _0223BAE8 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223BADC: .word 0x02246BC0
_0223BAE0: .word 0x02246AD4
_0223BAE4: .word 0x02246614
_0223BAE8: .word 0x02246AC0
	thumb_func_end ov94_0223BA88

	thumb_func_start ov94_0223BAEC
ov94_0223BAEC: ; 0x0223BAEC
	push {r3, lr}
	ldr r0, _0223BB2C ; =0x02246ACC
	ldr r2, _0223BB30 ; =0x02246AD4
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	str r1, [r2, #0]
	str r0, [r2, #4]
	bl ov60_0221FC84
	mov r0, #2
	str r0, [sp]
	ldr r0, _0223BB34 ; =0x02246664
	ldr r1, _0223BB30 ; =0x02246AD4
	ldr r3, _0223BB38 ; =0x02246BFC
	mov r2, #8
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223BB1A
	ldr r0, _0223BB3C ; =0x02246AC0
	mov r1, #0x12
	str r1, [r0, #0]
	pop {r3, pc}
_0223BB1A:
	ldr r0, _0223BB3C ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
	nop
_0223BB2C: .word 0x02246ACC
_0223BB30: .word 0x02246AD4
_0223BB34: .word 0x02246664
_0223BB38: .word 0x02246BFC
_0223BB3C: .word 0x02246AC0
	thumb_func_end ov94_0223BAEC

	thumb_func_start ov94_0223BB40
ov94_0223BB40: ; 0x0223BB40
	push {r3, lr}
	bl ov60_0221FC84
	mov r0, #2
	str r0, [sp]
	ldr r0, _0223BB74 ; =0x022466B8
	ldr r1, _0223BB78 ; =0x02246AD4
	ldr r3, _0223BB7C ; =0x02246BFC
	mov r2, #0
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223BB62
	ldr r0, _0223BB80 ; =0x02246AC0
	mov r1, #0x14
	str r1, [r0, #0]
	pop {r3, pc}
_0223BB62:
	ldr r0, _0223BB80 ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, pc}
	nop
_0223BB74: .word 0x022466B8
_0223BB78: .word 0x02246AD4
_0223BB7C: .word 0x02246BFC
_0223BB80: .word 0x02246AC0
	thumb_func_end ov94_0223BB40

	thumb_func_start ov94_0223BB84
ov94_0223BB84: ; 0x0223BB84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x1c
	add r4, r1, #0
	bl sub_020C3FA0
	ldr r0, _0223BBD0 ; =0x02246AD4
	add r1, r5, #0
	mov r2, #0x64
	bl sub_020D50B8
	ldr r0, _0223BBD4 ; =0x02246BC0
	str r4, [r0, #0x40]
	bl ov60_0221FC84
	mov r0, #8
	str r0, [sp]
	ldr r3, _0223BBD4 ; =0x02246BC0
	ldr r0, _0223BBD8 ; =0x02246704
	ldr r1, _0223BBD0 ; =0x02246AD4
	ldr r3, [r3, #0x40]
	mov r2, #0x64
	bl ov94_0223BBE0
	cmp r0, #0
	beq _0223BBC0
	ldr r0, _0223BBDC ; =0x02246AC0
	mov r1, #0x16
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
_0223BBC0:
	ldr r0, _0223BBDC ; =0x02246AC0
	mov r1, #0x18
	str r1, [r0, #0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov60_0221FDEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223BBD0: .word 0x02246AD4
_0223BBD4: .word 0x02246BC0
_0223BBD8: .word 0x02246704
_0223BBDC: .word 0x02246AC0
	thumb_func_end ov94_0223BB84

	thumb_func_start ov94_0223BBE0
ov94_0223BBE0: ; 0x0223BBE0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	str r3, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	ldr r1, _0223BC14 ; =0x02246AC0
	add r2, r5, #0
	ldr r1, [r1, #8]
	add r3, r4, #0
	bl ov60_0221FCA8
	cmp r0, #0
	beq _0223BC06
	cmp r0, #1
	beq _0223BC0C
	cmp r0, #2
	b _0223BC0C
_0223BC06:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223BC0C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223BC14: .word 0x02246AC0
	thumb_func_end ov94_0223BBE0

	thumb_func_start ov94_0223BC18
ov94_0223BC18: ; 0x0223BC18
	push {r4, lr}
	cmp r0, #0x20
	bhi _0223BC90
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BC2A: ; jump table
	.short _0223BC6C - _0223BC2A - 2 ; case 0
	.short _0223BC6C - _0223BC2A - 2 ; case 1
	.short _0223BC72 - _0223BC2A - 2 ; case 2
	.short _0223BC6C - _0223BC2A - 2 ; case 3
	.short _0223BC6C - _0223BC2A - 2 ; case 4
	.short _0223BC6C - _0223BC2A - 2 ; case 5
	.short _0223BC6C - _0223BC2A - 2 ; case 6
	.short _0223BC90 - _0223BC2A - 2 ; case 7
	.short _0223BC72 - _0223BC2A - 2 ; case 8
	.short _0223BC6C - _0223BC2A - 2 ; case 9
	.short _0223BC6C - _0223BC2A - 2 ; case 10
	.short _0223BC78 - _0223BC2A - 2 ; case 11
	.short _0223BC7E - _0223BC2A - 2 ; case 12
	.short _0223BC7E - _0223BC2A - 2 ; case 13
	.short _0223BC6C - _0223BC2A - 2 ; case 14
	.short _0223BC8A - _0223BC2A - 2 ; case 15
	.short _0223BC84 - _0223BC2A - 2 ; case 16
	.short _0223BC84 - _0223BC2A - 2 ; case 17
	.short _0223BC84 - _0223BC2A - 2 ; case 18
	.short _0223BC84 - _0223BC2A - 2 ; case 19
	.short _0223BC6C - _0223BC2A - 2 ; case 20
	.short _0223BC6C - _0223BC2A - 2 ; case 21
	.short _0223BC6C - _0223BC2A - 2 ; case 22
	.short _0223BC6C - _0223BC2A - 2 ; case 23
	.short _0223BC90 - _0223BC2A - 2 ; case 24
	.short _0223BC72 - _0223BC2A - 2 ; case 25
	.short _0223BC84 - _0223BC2A - 2 ; case 26
	.short _0223BC84 - _0223BC2A - 2 ; case 27
	.short _0223BC84 - _0223BC2A - 2 ; case 28
	.short _0223BC84 - _0223BC2A - 2 ; case 29
	.short _0223BC8A - _0223BC2A - 2 ; case 30
	.short _0223BC84 - _0223BC2A - 2 ; case 31
	.short _0223BC6C - _0223BC2A - 2 ; case 32
_0223BC6C:
	mov r4, #0xc
	mvn r4, r4
	b _0223BC94
_0223BC72:
	mov r4, #0xc
	mvn r4, r4
	b _0223BC94
_0223BC78:
	mov r4, #0xe
	mvn r4, r4
	b _0223BC94
_0223BC7E:
	mov r4, #0xe
	mvn r4, r4
	b _0223BC94
_0223BC84:
	mov r4, #1
	mvn r4, r4
	b _0223BC94
_0223BC8A:
	mov r4, #1
	mvn r4, r4
	b _0223BC94
_0223BC90:
	mov r4, #0xc
	mvn r4, r4
_0223BC94:
	mov r0, #0xc
	mvn r0, r0
	cmp r4, r0
	beq _0223BCAC
	bl ov4_02213898
	cmp r0, #9
	beq _0223BCA8
	mov r4, #0xd
	mvn r4, r4
_0223BCA8:
	bl ov4_021D76E8
_0223BCAC:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov94_0223BC18
	.data


	.global Unk_ov94_02246400
Unk_ov94_02246400: ; 0x02246400
	.incbin "incbin/overlay94_data.bin", 0x0, 0x4C - 0x0

	.global Unk_ov94_0224644C
Unk_ov94_0224644C: ; 0x0224644C
	.incbin "incbin/overlay94_data.bin", 0x4C, 0x9C - 0x4C

	.global Unk_ov94_0224649C
Unk_ov94_0224649C: ; 0x0224649C
	.incbin "incbin/overlay94_data.bin", 0x9C, 0xE4 - 0x9C

	.global Unk_ov94_022464E4
Unk_ov94_022464E4: ; 0x022464E4
	.incbin "incbin/overlay94_data.bin", 0xE4, 0x130 - 0xE4

	.global Unk_ov94_02246530
Unk_ov94_02246530: ; 0x02246530
	.incbin "incbin/overlay94_data.bin", 0x130, 0x17C - 0x130

	.global Unk_ov94_0224657C
Unk_ov94_0224657C: ; 0x0224657C
	.incbin "incbin/overlay94_data.bin", 0x17C, 0x1C8 - 0x17C

	.global Unk_ov94_022465C8
Unk_ov94_022465C8: ; 0x022465C8
	.incbin "incbin/overlay94_data.bin", 0x1C8, 0x214 - 0x1C8

	.global Unk_ov94_02246614
Unk_ov94_02246614: ; 0x02246614
	.incbin "incbin/overlay94_data.bin", 0x214, 0x264 - 0x214

	.global Unk_ov94_02246664
Unk_ov94_02246664: ; 0x02246664
	.incbin "incbin/overlay94_data.bin", 0x264, 0x2B8 - 0x264

	.global Unk_ov94_022466B8
Unk_ov94_022466B8: ; 0x022466B8
	.incbin "incbin/overlay94_data.bin", 0x2B8, 0x304 - 0x2B8

	.global Unk_ov94_02246704
Unk_ov94_02246704: ; 0x02246704
	.incbin "incbin/overlay94_data.bin", 0x304, 0x48


	.bss


	.global Unk_ov94_02246AC0
Unk_ov94_02246AC0: ; 0x02246AC0
	.space 0x144

