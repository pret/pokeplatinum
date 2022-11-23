	.include "macros/function.inc"
	.include "global.inc"

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

	thumb_func_start ov94_0223BCB0
ov94_0223BCB0: ; 0x0223BCB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223BCC6
	cmp r0, #1
	bne _0223BCC4
	b _0223BDD4
_0223BCC4:
	b _0223BDEA
_0223BCC6:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0223BDF0 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0223BDF4 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r2, #7
	mov r0, #3
	mov r1, #0x3e
	lsl r2, r2, #0x10
	bl sub_02017FC8
	ldr r1, _0223BDF8 ; =0x00001488
	add r0, r6, #0
	mov r2, #0x3e
	bl sub_0200681C
	ldr r2, _0223BDF8 ; =0x00001488
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x3e
	bl sub_02018340
	str r0, [r4, #4]
	ldr r0, _0223BDFC ; =0x02246C04
	add r2, sp, #0
	ldr r3, _0223BE00 ; =0x02245A00
	str r4, [r0, #4]
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r7, #0
	bl sub_02018368
	mov r0, #0xb
	mov r1, #0x40
	mov r2, #0x3e
	bl sub_0200B368
	mov r1, #0xb9
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, _0223BE04 ; =0x0000029F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x3e
	bl sub_0200B144
	ldr r1, _0223BE08 ; =0x00000B94
	ldr r2, _0223BE0C ; =0x000002A2
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x3e
	bl sub_0200B144
	ldr r1, _0223BE10 ; =0x00000B9C
	ldr r2, _0223BE14 ; =0x000002B7
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x3e
	bl sub_0200B144
	mov r1, #0xba
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r2, #0x67
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x3e
	bl sub_0200B144
	ldr r1, _0223BE18 ; =0x00000B98
	ldr r2, _0223BE1C ; =0x000002B6
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x3e
	bl sub_0200B144
	ldr r1, _0223BE20 ; =0x00000BA4
	str r0, [r4, r1]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	add r1, r6, #0
	bl ov94_0223C03C
	add r0, r4, #0
	bl ov94_0223C4E0
	ldr r1, _0223BE24 ; =0x00000497
	mov r0, #0xb
	mov r2, #1
	bl sub_02004550
	ldr r1, _0223BE28 ; =0x00020020
	mov r0, #0x3e
	bl sub_02018144
	str r0, [r4, #0x4c]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl sub_020A5404
	str r0, [r4, #0x50]
	mov r0, #1
	str r0, [r5, #0]
	b _0223BDEA
_0223BDD4:
	bl sub_02099550
	bl sub_020995B4
	bl sub_02033478
	mov r0, #0
	str r0, [r5, #0]
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223BDEA:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BDF0: .word 0xFFFFE0FF
_0223BDF4: .word 0x04001000
_0223BDF8: .word 0x00001488
_0223BDFC: .word 0x02246C04
_0223BE00: .word 0x02245A00
_0223BE04: .word 0x0000029F
_0223BE08: .word 0x00000B94
_0223BE0C: .word 0x000002A2
_0223BE10: .word 0x00000B9C
_0223BE14: .word 0x000002B7
_0223BE18: .word 0x00000B98
_0223BE1C: .word 0x000002B6
_0223BE20: .word 0x00000BA4
_0223BE24: .word 0x00000497
_0223BE28: .word 0x00020020
	thumb_func_end ov94_0223BCB0

	thumb_func_start ov94_0223BE2C
ov94_0223BE2C: ; 0x0223BE2C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	bl ov4_021D8018
	bl ov94_0223B15C
	ldr r1, [r5, #0]
	cmp r1, #5
	bhi _0223BF1C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BE50: ; jump table
	.short _0223BE5C - _0223BE50 - 2 ; case 0
	.short _0223BE78 - _0223BE50 - 2 ; case 1
	.short _0223BE9C - _0223BE50 - 2 ; case 2
	.short _0223BEAA - _0223BE50 - 2 ; case 3
	.short _0223BEBE - _0223BE50 - 2 ; case 4
	.short _0223BF18 - _0223BE50 - 2 ; case 5
_0223BE5C:
	bl sub_020334A4
	cmp r0, #0
	beq _0223BF1C
	ldr r1, [r4, #0x50]
	ldr r0, _0223BF38 ; =0x02246C04
	str r1, [r0, #0]
	ldr r0, _0223BF3C ; =ov94_0223C468
	ldr r1, _0223BF40 ; =ov94_0223C490
	bl ov4_021D776C
	mov r0, #1
	str r0, [r5, #0]
	b _0223BF1C
_0223BE78:
	ldr r3, [r4, #0x14]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223BF44 ; =0x0224674C
	add r0, r4, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r5, #0]
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223BF1C
	add r0, r4, #0
	bl ov94_0223C508
	b _0223BF1C
_0223BE9C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223BF1C
	mov r0, #3
	str r0, [r5, #0]
	b _0223BF1C
_0223BEAA:
	ldr r3, [r4, #0x14]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223BF48 ; =0x02246750
	add r0, r4, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r5, #0]
	b _0223BF1C
_0223BEBE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223BF1C
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223BF02
	add r0, r4, #0
	bl ov94_0223C4E0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #0
	bl ov94_02243EF8
	mov r1, #0x47
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0
	bl ov94_02244234
	add r0, r4, #0
	bl ov94_0223D068
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0223BF02:
	ldr r3, [r4, #0x14]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223BF4C ; =0x02246754
	ldr r1, [r5, #0]
	ldr r2, [r2, r6]
	add r0, r4, #0
	blx r2
	str r0, [r5, #0]
	b _0223BF1C
_0223BF18:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223BF1C:
	add r0, r4, #0
	bl ov94_0223C578
	add r0, r4, #0
	bl ov94_0223C598
	ldr r0, _0223BF50 ; =0x00000BE8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223BF34
	bl sub_020219F8
_0223BF34:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223BF38: .word 0x02246C04
_0223BF3C: .word ov94_0223C468
_0223BF40: .word ov94_0223C490
_0223BF44: .word 0x0224674C
_0223BF48: .word 0x02246750
_0223BF4C: .word 0x02246754
_0223BF50: .word 0x00000BE8
	thumb_func_end ov94_0223BE2C

	thumb_func_start ov94_0223BF54
ov94_0223BF54: ; 0x0223BF54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_020181C4
	bl sub_020995C4
	bl sub_02099560
	add r0, r4, #0
	bl ov94_0223C508
	ldr r0, _0223BFD4 ; =0x00000B98
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0223BFD8 ; =0x00000B9C
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0223BFDC ; =0x00000B94
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0223BFE0 ; =0x00000BA4
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	add r0, r4, #0
	bl ov94_0223C0A0
	bl sub_020334CC
	ldr r0, [r4, #4]
	bl sub_020181C4
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x3e
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223BFD4: .word 0x00000B98
_0223BFD8: .word 0x00000B9C
_0223BFDC: .word 0x00000B94
_0223BFE0: .word 0x00000BA4
	thumb_func_end ov94_0223BF54

	thumb_func_start ov94_0223BFE4
ov94_0223BFE4: ; 0x0223BFE4
	push {r4, lr}
	ldr r1, _0223C010 ; =0x000010B8
	add r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0223BFF8
	blx r1
	ldr r0, _0223C010 ; =0x000010B8
	mov r1, #0
	str r1, [r4, r0]
_0223BFF8:
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _0223C014 ; =0x027E0000
	ldr r1, _0223C018 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0223C010: .word 0x000010B8
_0223C014: .word 0x027E0000
_0223C018: .word 0x00003FF8
	thumb_func_end ov94_0223BFE4

	thumb_func_start ov94_0223C01C
ov94_0223C01C: ; 0x0223C01C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223C038 ; =0x02245A20
	add r3, sp, #0
	mov r2, #5
_0223C026:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223C026
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0223C038: .word 0x02245A20
	thumb_func_end ov94_0223C01C

	thumb_func_start ov94_0223C03C
ov94_0223C03C: ; 0x0223C03C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02006840
	mov r1, #0
	str r0, [r4, #0]
	add r0, r4, #0
	add r2, r1, #0
	str r1, [r4, #0x14]
	bl ov94_0223C4C0
	mov r2, #0x11
	ldr r0, _0223C098 ; =0x00000B7E
	mov r1, #0
	lsl r2, r2, #4
	strh r1, [r4, r2]
	strh r1, [r4, r0]
	mov r5, #3
	add r3, r0, #2
	strb r5, [r4, r3]
	add r3, r0, #3
	strb r1, [r4, r3]
	add r3, r0, #4
	strb r1, [r4, r3]
	add r0, r0, #6
	strh r1, [r4, r0]
	ldr r0, _0223C09C ; =0x00001090
	mov r3, #0x12
	strh r1, [r4, r0]
	add r2, r2, #4
	strh r3, [r4, r2]
	add r2, r0, #0
	add r2, #0x1c
	strh r1, [r4, r2]
	add r2, r0, #0
	add r2, #0x1e
	strh r1, [r4, r2]
	add r2, r0, #2
	strh r1, [r4, r2]
	add r2, r0, #0
	sub r2, #0x14
	str r1, [r4, r2]
	add r0, #0xc0
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C098: .word 0x00000B7E
_0223C09C: .word 0x00001090
	thumb_func_end ov94_0223C03C

	thumb_func_start ov94_0223C0A0
ov94_0223C0A0: ; 0x0223C0A0
	bx lr
	; .align 2, 0
	thumb_func_end ov94_0223C0A0

	thumb_func_start ov94_0223C0A4
ov94_0223C0A4: ; 0x0223C0A4
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0223C0D0 ; =0x02245A10
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x3e
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223C0D0: .word 0x02245A10
	thumb_func_end ov94_0223C0A4

	thumb_func_start ov94_0223C0D4
ov94_0223C0D4: ; 0x0223C0D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0x68
	mov r1, #0x3e
	bl sub_02006C24
	str r0, [sp, #0x18]
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x3e
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	ldr r1, _0223C2DC ; =0x00000BEC
	mov r0, #0x4e
	add r1, r5, r1
	mov r2, #0x3e
	bl sub_020095C4
	ldr r1, _0223C2E0 ; =0x00000BE8
	mov r2, #1
	str r0, [r5, r1]
	add r0, r1, #4
	add r0, r5, r0
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	ldr r7, _0223C2E4 ; =0x00000D14
	mov r6, #0
	add r4, r5, #0
_0223C124:
	mov r0, #3
	add r1, r6, #0
	mov r2, #0x3e
	bl sub_02009714
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0223C124
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	ldr r0, _0223C2E4 ; =0x00000D14
	ldr r1, [sp, #0x18]
	ldr r0, [r5, r0]
	mov r2, #0x12
	bl sub_02009A4C
	ldr r1, _0223C2E8 ; =0x00000D24
	mov r3, #0
	str r0, [r5, r1]
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x3e
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #9
	bl sub_02009B04
	ldr r1, _0223C2EC ; =0x00000D28
	mov r2, #0x13
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x3e
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r3, #1
	bl sub_02009BC4
	ldr r1, _0223C2F0 ; =0x00000D2C
	mov r2, #0x14
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x3e
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0xd3
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x3e
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0x20
	bl sub_02009A4C
	ldr r1, _0223C2F4 ; =0x00000D34
	mov r2, #8
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #0x3e
	sub r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009B04
	ldr r1, _0223C2F8 ; =0x00000D38
	mov r3, #1
	str r0, [r5, r1]
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x3e
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0x21
	bl sub_02009BC4
	ldr r1, _0223C2FC ; =0x00000D3C
	mov r3, #1
	str r0, [r5, r1]
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x3e
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0x22
	bl sub_02009BC4
	mov r1, #0x35
	lsl r1, r1, #6
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	bl sub_0200A328
	ldr r0, _0223C2F4 ; =0x00000D34
	ldr r0, [r5, r0]
	bl sub_0200A328
	ldr r0, _0223C2EC ; =0x00000D28
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	ldr r0, _0223C2F8 ; =0x00000D38
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	bl sub_02079FD0
	add r1, r0, #0
	mov r0, #0x13
	add r2, sp, #0x1c
	mov r3, #0x3e
	bl sub_02006F88
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	mov r1, #0x60
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp, #0x1c]
	mov r1, #0x60
	ldr r0, [r0, #0xc]
	add r2, r1, #0
	bl sub_020C0160
	ldr r0, [sp, #0x1c]
	mov r7, #0x1f
	ldr r4, [r0, #0xc]
	mov r3, #0
	add r5, r7, #0
_0223C27C:
	ldrh r2, [r4]
	mov r0, #0x1f
	add r3, r3, #1
	add r1, r2, #0
	and r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	asr r0, r2, #0xa
	add r6, r0, #0
	and r6, r7
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r2, r2, #5
	add r6, r2, #0
	and r6, r5
	lsr r2, r6, #0x1f
	add r2, r6, r2
	asr r0, r0, #1
	asr r2, r2, #1
	lsl r0, r0, #0xa
	lsl r2, r2, #5
	orr r0, r2
	orr r0, r1
	strh r0, [r4]
	add r4, r4, #2
	cmp r3, #0x30
	blt _0223C27C
	ldr r0, [sp, #0x1c]
	mov r1, #0x60
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp, #0x1c]
	mov r1, #0xc0
	ldr r0, [r0, #0xc]
	mov r2, #0x60
	bl sub_020C0160
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	ldr r0, [sp, #0x18]
	bl sub_02006CA8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C2DC: .word 0x00000BEC
_0223C2E0: .word 0x00000BE8
_0223C2E4: .word 0x00000D14
_0223C2E8: .word 0x00000D24
_0223C2EC: .word 0x00000D28
_0223C2F0: .word 0x00000D2C
_0223C2F4: .word 0x00000D34
_0223C2F8: .word 0x00000D38
_0223C2FC: .word 0x00000D3C
	thumb_func_end ov94_0223C0D4

	thumb_func_start ov94_0223C300
ov94_0223C300: ; 0x0223C300
	push {r3, r4}
	ldr r4, _0223C328 ; =0x00000BE8
	ldr r1, [r1, r4]
	str r1, [r0, #0]
	str r2, [r0, #4]
	mov r2, #0
	mov r1, #1
	str r2, [r0, #0x10]
	lsl r1, r1, #0xc
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	strh r2, [r0, #0x20]
	mov r1, #1
	str r1, [r0, #0x24]
	str r3, [r0, #0x28]
	mov r1, #0x3e
	str r1, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0223C328: .word 0x00000BE8
	thumb_func_end ov94_0223C300

	thumb_func_start ov94_0223C32C
ov94_0223C32C: ; 0x0223C32C
	push {r3, r4, lr}
	sub sp, #0x2c
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _0223C3BC ; =0x00000D14
	str r1, [sp, #0x10]
	ldr r0, [r4, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r4, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r2, #0x40
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r4, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	mov r1, #1
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, _0223C3BC ; =0x00000D14
	str r0, [sp, #0x10]
	ldr r2, [r4, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r4, r2]
	add r3, #0x64
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x2c
	pop {r3, r4, pc}
	; .align 2, 0
_0223C3BC: .word 0x00000D14
	thumb_func_end ov94_0223C32C

	thumb_func_start ov94_0223C3C0
ov94_0223C3C0: ; 0x0223C3C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, _0223C3F0 ; =0x022459F8
	add r4, sp, #4
	ldrh r6, [r5]
	add r3, sp, #4
	strh r6, [r4]
	ldrh r6, [r5, #2]
	strh r6, [r4, #2]
	ldrh r6, [r5, #4]
	ldrh r5, [r5, #6]
	strh r6, [r4, #4]
	strh r5, [r4, #6]
	strb r1, [r4, #2]
	strh r2, [r4, #6]
	mov r1, #0x3e
	str r1, [sp]
	add r1, r3, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002100
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223C3F0: .word 0x022459F8
	thumb_func_end ov94_0223C3C0

	thumb_func_start ov94_0223C3F4
ov94_0223C3F4: ; 0x0223C3F4
	str r1, [r0, #0x2c]
	str r2, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end ov94_0223C3F4

	thumb_func_start ov94_0223C3FC
ov94_0223C3FC: ; 0x0223C3FC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0
	ble _0223C41A
	lsl r0, r1, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0223C428
_0223C41A:
	lsl r0, r1, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0223C428:
	bl sub_020E1740
	str r0, [sp]
	cmp r5, #0
	ble _0223C444
	lsl r0, r5, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0223C452
_0223C444:
	lsl r0, r5, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0223C452:
	bl sub_020E1740
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov94_0223C3FC

	thumb_func_start ov94_0223C468
ov94_0223C468: ; 0x0223C468
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020C3D98
	add r6, r0, #0
	ldr r0, _0223C48C ; =0x02246C04
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl sub_020A5448
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020C3DAC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223C48C: .word 0x02246C04
	thumb_func_end ov94_0223C468

	thumb_func_start ov94_0223C490
ov94_0223C490: ; 0x0223C490
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _0223C4AC
	bl sub_020C3D98
	add r4, r0, #0
	ldr r0, _0223C4B0 ; =0x02246C04
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl sub_020A55D8
	add r0, r4, #0
	bl sub_020C3DAC
_0223C4AC:
	pop {r3, r4, r5, pc}
	nop
_0223C4B0: .word 0x02246C04
	thumb_func_end ov94_0223C490

	thumb_func_start ov94_0223C4B4
ov94_0223C4B4: ; 0x0223C4B4
	push {r3, lr}
	bl ov4_021D7EAC
	mov r1, #3
	sub r0, r1, r0
	pop {r3, pc}
	thumb_func_end ov94_0223C4B4

	thumb_func_start ov94_0223C4C0
ov94_0223C4C0: ; 0x0223C4C0
	str r1, [r0, #0x18]
	str r2, [r0, #0x24]
	bx lr
	; .align 2, 0
	thumb_func_end ov94_0223C4C0

	thumb_func_start ov94_0223C4C8
ov94_0223C4C8: ; 0x0223C4C8
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov94_0223C4C8

	thumb_func_start ov94_0223C4D4
ov94_0223C4D4: ; 0x0223C4D4
	ldr r0, [r0, #0]
	ldr r3, _0223C4DC ; =sub_02027AC0
	ldr r0, [r0, #0x24]
	bx r3
	; .align 2, 0
_0223C4DC: .word sub_02027AC0
	thumb_func_end ov94_0223C4D4

	thumb_func_start ov94_0223C4E0
ov94_0223C4E0: ; 0x0223C4E0
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223C01C
	bl ov94_0223C0A4
	add r0, r4, #0
	bl ov94_0223C0D4
	add r0, r4, #0
	bl ov94_0223C32C
	ldr r0, _0223C504 ; =ov94_0223BFE4
	add r1, r4, #0
	bl sub_02017798
	pop {r4, pc}
	nop
_0223C504: .word ov94_0223BFE4
	thumb_func_end ov94_0223C4E0

	thumb_func_start ov94_0223C508
ov94_0223C508: ; 0x0223C508
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ov94_022443B8
	ldr r0, _0223C560 ; =0x00000D24
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	ldr r0, _0223C564 ; =0x00000D34
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	ldr r0, _0223C568 ; =0x00000D28
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	ldr r0, _0223C56C ; =0x00000D38
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	ldr r7, _0223C570 ; =0x00000D14
	mov r4, #0
	add r5, r6, #0
_0223C536:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223C536
	ldr r0, _0223C574 ; =0x00000BE8
	ldr r0, [r6, r0]
	bl sub_02021964
	ldr r0, _0223C574 ; =0x00000BE8
	mov r1, #0
	str r1, [r6, r0]
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C560: .word 0x00000D24
_0223C564: .word 0x00000D34
_0223C568: .word 0x00000D28
_0223C56C: .word 0x00000D38
_0223C570: .word 0x00000D14
_0223C574: .word 0x00000BE8
	thumb_func_end ov94_0223C508

	thumb_func_start ov94_0223C578
ov94_0223C578: ; 0x0223C578
	ldrh r1, [r0, #0x3a]
	cmp r1, #0
	beq _0223C582
	sub r1, r1, #1
	strh r1, [r0, #0x3a]
_0223C582:
	bx lr
	thumb_func_end ov94_0223C578

	thumb_func_start ov94_0223C584
ov94_0223C584: ; 0x0223C584
	ldr r1, _0223C594 ; =0x000010AE
	mov r2, #1
	strh r2, [r0, r1]
	mov r2, #0
	sub r1, r1, #2
	strh r2, [r0, r1]
	bx lr
	nop
_0223C594: .word 0x000010AE
	thumb_func_end ov94_0223C584

	thumb_func_start ov94_0223C598
ov94_0223C598: ; 0x0223C598
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C5D0 ; =0x000010AE
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _0223C5CC
	ldr r0, [r4, #0]
	sub r1, r1, #1
	ldr r0, [r0, #0xc]
	bl sub_02079B54
	ldr r1, _0223C5D4 ; =0x000010AC
	ldrh r2, [r4, r1]
	add r0, r2, r0
	strh r0, [r4, r1]
	add r0, r1, #2
	ldrh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #0x13
	bne _0223C5CC
	mov r2, #0
	add r0, r1, #2
	strh r2, [r4, r0]
_0223C5CC:
	pop {r4, pc}
	nop
_0223C5D0: .word 0x000010AE
_0223C5D4: .word 0x000010AC
	thumb_func_end ov94_0223C598

	thumb_func_start ov94_0223C5D8
ov94_0223C5D8: ; 0x0223C5D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C5EC ; =0x00000EFC
	mov r1, #1
	add r0, r4, r0
	bl sub_0200E7FC
	ldr r1, _0223C5F0 ; =0x0000107C
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_0223C5EC: .word 0x00000EFC
_0223C5F0: .word 0x0000107C
	thumb_func_end ov94_0223C5D8

	thumb_func_start ov94_0223C5F4
ov94_0223C5F4: ; 0x0223C5F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C60C ; =0x0000107C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223C60A
	bl sub_0200EBA0
	ldr r0, _0223C60C ; =0x0000107C
	mov r1, #0
	str r1, [r4, r0]
_0223C60A:
	pop {r4, pc}
	; .align 2, 0
_0223C60C: .word 0x0000107C
	thumb_func_end ov94_0223C5F4

	thumb_func_start ov94_0223C610
ov94_0223C610: ; 0x0223C610
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_0223CB0C
	ldr r0, [r4, #4]
	bl ov94_0223C720
	add r0, r4, #0
	bl ov94_0223C888
	add r0, r4, #0
	bl ov94_0223C9C0
	add r0, r4, #0
	bl ov94_0223C950
	add r0, r4, #0
	bl ov94_02245934
	add r0, r4, #0
	bl ov94_0223CF3C
	ldr r1, _0223C6CC ; =0x00000449
	mov r0, #0x17
	mov r2, #1
	bl sub_02004550
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	bne _0223C684
	add r0, r4, #0
	bl ov94_0223C85C
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #1
	strh r0, [r4, #0x34]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #0
	bl ov94_02243FA8
	b _0223C6BE
_0223C684:
	ldr r0, _0223C6D0 ; =0x000010B0
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0223C6A4
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	b _0223C6BA
_0223C6A4:
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
_0223C6BA:
	mov r0, #5
	str r0, [r4, #0x2c]
_0223C6BE:
	ldr r0, _0223C6D0 ; =0x000010B0
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0223C6CC: .word 0x00000449
_0223C6D0: .word 0x000010B0
	thumb_func_end ov94_0223C610

	thumb_func_start ov94_0223C6D4
ov94_0223C6D4: ; 0x0223C6D4
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223C4B4
	bl sub_020397B0
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0223C6F0 ; =0x022467C4
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0223C6F0: .word 0x022467C4
	thumb_func_end ov94_0223C6D4

	thumb_func_start ov94_0223C6F4
ov94_0223C6F4: ; 0x0223C6F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02039794
	add r0, r4, #0
	bl ov94_0223C9B0
	add r0, r4, #0
	bl ov94_0223CB34
	add r0, r4, #0
	bl ov94_0223CAC8
	ldr r0, [r4, #4]
	bl ov94_0223C830
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_0223C6F4

	thumb_func_start ov94_0223C720
ov94_0223C720: ; 0x0223C720
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0223C818 ; =0x02245A54
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223C81C ; =0x02245AB4
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
	ldr r5, _0223C820 ; =0x02245A98
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
	ldr r5, _0223C824 ; =0x02245AD0
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
	ldr r5, _0223C828 ; =0x02245AEC
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
	ldr r5, _0223C82C ; =0x02245A7C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
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
_0223C818: .word 0x02245A54
_0223C81C: .word 0x02245AB4
_0223C820: .word 0x02245A98
_0223C824: .word 0x02245AD0
_0223C828: .word 0x02245AEC
_0223C82C: .word 0x02245A7C
	thumb_func_end ov94_0223C720

	thumb_func_start ov94_0223C830
ov94_0223C830: ; 0x0223C830
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
	thumb_func_end ov94_0223C830

	thumb_func_start ov94_0223C85C
ov94_0223C85C: ; 0x0223C85C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_0223C85C

	thumb_func_start ov94_0223C888
ov94_0223C888: ; 0x0223C888
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r5, [r6, #4]
	mov r0, #0x68
	mov r1, #0x3e
	bl sub_02006C24
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0x3e
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #4
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xe
	add r2, r5, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1e
	add r2, r5, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1d
	add r2, r5, #0
	mov r3, #2
	bl sub_0200710C
	add r0, r6, #0
	bl ov94_0223D068
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_0223C888

	thumb_func_start ov94_0223C950
ov94_0223C950: ; 0x0223C950
	push {r4, lr}
	sub sp, #0x30
	ldr r2, _0223C9A4 ; =0x00000D54
	add r4, r0, #0
	add r0, sp, #0
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #1
	bl ov94_0223C300
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r1, [r4, r0]
	lsl r2, r1, #2
	ldr r1, _0223C9A8 ; =0x02245A48
	ldrh r1, [r1, r2]
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	ldrh r0, [r4, r0]
	lsl r1, r0, #2
	ldr r0, _0223C9AC ; =0x02245A4A
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0x37
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021D6C
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
_0223C9A4: .word 0x00000D54
_0223C9A8: .word 0x02245A48
_0223C9AC: .word 0x02245A4A
	thumb_func_end ov94_0223C950

	thumb_func_start ov94_0223C9B0
ov94_0223C9B0: ; 0x0223C9B0
	mov r1, #0x37
	lsl r1, r1, #6
	ldr r3, _0223C9BC ; =sub_02021BD4
	ldr r0, [r0, r1]
	bx r3
	nop
_0223C9BC: .word sub_02021BD4
	thumb_func_end ov94_0223C9B0

	thumb_func_start ov94_0223C9C0
ov94_0223C9C0: ; 0x0223C9C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r3, #1
	add r7, r0, #0
	str r3, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _0223CAB0 ; =0x00000F1C
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _0223CAB0 ; =0x00000F1C
	mov r1, #0
	add r0, r7, r0
	bl sub_0201ADA4
	mov r0, #2
	str r0, [sp]
	mov r3, #0
	ldr r0, _0223CAB4 ; =0x000F0400
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0223CAB0 ; =0x00000F1C
	ldr r2, _0223CAB8 ; =0x00000BB4
	str r3, [sp, #0xc]
	ldr r2, [r7, r2]
	add r0, r7, r0
	mov r1, #1
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _0223CABC ; =0x00000F3C
	mov r6, #0x61
	mov r4, #6
	add r5, r7, r0
_0223CA18:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r5, #0
	mov r2, #1
	mov r3, #9
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	add r6, #0x1e
	add r0, r0, #1
	add r4, r4, #5
	add r5, #0x10
	str r0, [sp, #0x14]
	cmp r0, #3
	blt _0223CA18
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	ldr r1, _0223CAC0 ; =0x00000EFC
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _0223CAC0 ; =0x00000EFC
	mov r1, #0xf
	add r0, r7, r0
	bl sub_0201ADA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x96
	ldr r1, _0223CAC4 ; =0x0000103C
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _0223CAC4 ; =0x0000103C
	mov r1, #0xf
	add r0, r7, r0
	bl sub_0201ADA4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CAB0: .word 0x00000F1C
_0223CAB4: .word 0x000F0400
_0223CAB8: .word 0x00000BB4
_0223CABC: .word 0x00000F3C
_0223CAC0: .word 0x00000EFC
_0223CAC4: .word 0x0000103C
	thumb_func_end ov94_0223C9C0

	thumb_func_start ov94_0223CAC8
ov94_0223CAC8: ; 0x0223CAC8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0223CAFC ; =0x0000103C
	add r0, r6, r0
	bl sub_0201A8FC
	ldr r0, _0223CB00 ; =0x00000EFC
	add r0, r6, r0
	bl sub_0201A8FC
	ldr r0, _0223CB04 ; =0x00000F3C
	mov r4, #0
	add r5, r6, r0
_0223CAE2:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _0223CAE2
	ldr r0, _0223CB08 ; =0x00000F1C
	add r0, r6, r0
	bl sub_0201A8FC
	pop {r4, r5, r6, pc}
	nop
_0223CAFC: .word 0x0000103C
_0223CB00: .word 0x00000EFC
_0223CB04: .word 0x00000F3C
_0223CB08: .word 0x00000F1C
	thumb_func_end ov94_0223CAC8

	thumb_func_start ov94_0223CB0C
ov94_0223CB0C: ; 0x0223CB0C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x27
	bl sub_0200B1EC
	ldr r1, _0223CB30 ; =0x00000BB4
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0223CB30: .word 0x00000BB4
	thumb_func_end ov94_0223CB0C

	thumb_func_start ov94_0223CB34
ov94_0223CB34: ; 0x0223CB34
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0223CB4C ; =0x00000BB4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
_0223CB4C: .word 0x00000BB4
	thumb_func_end ov94_0223CB34

	thumb_func_start ov94_0223CB50
ov94_0223CB50: ; 0x0223CB50
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223CB8C ; =0x00001090
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0223CB86
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xb
	bl ov94_0223C4C0
	mov r0, #1
	str r0, [r4, #0x1c]
	mov r0, #9
	str r0, [r4, #0x2c]
_0223CB86:
	mov r0, #3
	pop {r4, pc}
	nop
_0223CB8C: .word 0x00001090
	thumb_func_end ov94_0223CB50

	thumb_func_start ov94_0223CB90
ov94_0223CB90: ; 0x0223CB90
	push {r3, lr}
	mov r1, #0xa
	mov r2, #2
	bl ov94_0223C3F4
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov94_0223CB90

	thumb_func_start ov94_0223CBA0
ov94_0223CBA0: ; 0x0223CBA0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
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
	mov r0, #3
	str r0, [r4, #0x2c]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov94_0223CBA0

	thumb_func_start ov94_0223CBC4
ov94_0223CBC4: ; 0x0223CBC4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223CBD4
	mov r0, #5
	str r0, [r4, #0x2c]
_0223CBD4:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_0223CBC4

	thumb_func_start ov94_0223CBD8
ov94_0223CBD8: ; 0x0223CBD8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223CBE8
	mov r0, #5
	str r0, [r4, #0x2c]
_0223CBE8:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_0223CBD8

	thumb_func_start ov94_0223CBEC
ov94_0223CBEC: ; 0x0223CBEC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CC24 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #4
	mov r2, #1
	mov r3, #0
	bl ov94_0223CF80
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #6
	bl ov94_0223C3F4
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	add r0, r4, #0
	bl ov94_0223C584
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CC24: .word 0x00000F0F
	thumb_func_end ov94_0223CBEC

	thumb_func_start ov94_0223CC28
ov94_0223CC28: ; 0x0223CC28
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CDBC ; =0x021BF67C
	mov r2, #2
	ldr r1, [r1, #0x48]
	add r4, r0, #0
	tst r2, r1
	beq _0223CC64
	bl ov94_0223C4D4
	add r2, r0, #0
	ldr r0, _0223CDC0 ; =0x00000F0F
	mov r1, #7
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl ov94_0223CFD8
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xc
	bl ov94_0223C3F4
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	b _0223CDB4
_0223CC64:
	mov r2, #1
	tst r2, r1
	beq _0223CD36
	mov r1, #0x11
	lsl r1, r1, #4
	ldrh r1, [r4, r1]
	cmp r1, #0
	beq _0223CC7E
	cmp r1, #1
	beq _0223CCF0
	cmp r1, #2
	beq _0223CD04
	b _0223CDB4
_0223CC7E:
	ldrh r1, [r4, #0x36]
	cmp r1, #0
	bne _0223CC98
	mov r1, #5
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #9
	str r0, [r4, #0x2c]
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	b _0223CDB4
_0223CC98:
	ldrh r1, [r4, #0x3a]
	cmp r1, #0
	bne _0223CCBA
	mov r1, #7
	mov r2, #0xb
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r4, #0x1c]
	mov r0, #9
	str r0, [r4, #0x2c]
	ldr r0, _0223CDC8 ; =0x00000708
	strh r0, [r4, #0x3a]
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	b _0223CDB4
_0223CCBA:
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, _0223CDC0 ; =0x00000F0F
	mov r1, #0x22
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov94_0223CF80
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #5
	bl ov94_0223C3F4
	ldr r0, _0223CDCC ; =0x000005F3
	bl sub_02005748
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	b _0223CDB4
_0223CCF0:
	mov r1, #4
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #9
	str r0, [r4, #0x2c]
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	b _0223CDB4
_0223CD04:
	bl ov94_0223C4D4
	add r2, r0, #0
	ldr r0, _0223CDC0 ; =0x00000F0F
	mov r1, #7
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl ov94_0223CFD8
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xc
	bl ov94_0223C3F4
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	b _0223CDB4
_0223CD36:
	mov r2, #0x40
	add r0, r1, #0
	tst r0, r2
	beq _0223CD76
	add r0, r2, #0
	add r0, #0xd0
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0223CDB4
	add r0, r2, #0
	add r0, #0xd0
	ldrh r0, [r4, r0]
	add r2, #0xd0
	sub r0, r0, #1
	strh r0, [r4, r2]
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	ldr r1, _0223CDD0 ; =0x02245A48
	ldr r2, _0223CDD4 ; =0x02245A4A
	lsl r3, r0, #2
	mov r0, #0x37
	lsl r0, r0, #6
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldr r0, [r4, r0]
	bl ov94_0223C3FC
	b _0223CDB4
_0223CD76:
	mov r2, #0x80
	add r0, r1, #0
	tst r0, r2
	beq _0223CDB4
	add r0, r2, #0
	add r0, #0x90
	ldrh r0, [r4, r0]
	cmp r0, #2
	bhs _0223CDB4
	add r0, r2, #0
	add r0, #0x90
	ldrh r0, [r4, r0]
	add r2, #0x90
	add r0, r0, #1
	strh r0, [r4, r2]
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	ldr r1, _0223CDD0 ; =0x02245A48
	ldr r2, _0223CDD4 ; =0x02245A4A
	lsl r3, r0, #2
	mov r0, #0x37
	lsl r0, r0, #6
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldr r0, [r4, r0]
	bl ov94_0223C3FC
_0223CDB4:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CDBC: .word 0x021BF67C
_0223CDC0: .word 0x00000F0F
_0223CDC4: .word 0x000005DC
_0223CDC8: .word 0x00000708
_0223CDCC: .word 0x000005F3
_0223CDD0: .word 0x02245A48
_0223CDD4: .word 0x02245A4A
	thumb_func_end ov94_0223CC28

	thumb_func_start ov94_0223CDD8
ov94_0223CDD8: ; 0x0223CDD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #0
	bl ov94_022440B8
	mov r0, #8
	str r0, [r4, #0x2c]
	ldr r0, _0223CDFC ; =0x00001090
	mov r1, #0
	strh r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_0223CDFC: .word 0x00001090
	thumb_func_end ov94_0223CDD8

	thumb_func_start ov94_0223CE00
ov94_0223CE00: ; 0x0223CE00
	ldr r1, _0223CE10 ; =0x00001090
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _0223CE0C
	mov r1, #9
	str r1, [r0, #0x2c]
_0223CE0C:
	mov r0, #3
	bx lr
	; .align 2, 0
_0223CE10: .word 0x00001090
	thumb_func_end ov94_0223CE00

	thumb_func_start ov94_0223CE14
ov94_0223CE14: ; 0x0223CE14
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0223CE3A
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
	b _0223CE52
_0223CE3A:
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
_0223CE52:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov94_0223CE14

	thumb_func_start ov94_0223CE5C
ov94_0223CE5C: ; 0x0223CE5C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #4]
	add r2, #0xf5
	bl ov94_0223C3C0
	ldr r1, _0223CE78 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #0xd
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223CE78: .word 0x00001070
	thumb_func_end ov94_0223CE5C

	thumb_func_start ov94_0223CE7C
ov94_0223CE7C: ; 0x0223CE7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223CEE0 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223CEDA
	sub r1, r1, #1
	cmp r0, r1
	ldr r0, _0223CEE4 ; =0x0000103C
	bne _0223CEBC
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _0223CEE4 ; =0x0000103C
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #5
	str r0, [r4, #0x2c]
	b _0223CEDA
_0223CEBC:
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _0223CEE4 ; =0x0000103C
	add r0, r4, r0
	bl sub_0201ACF4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #7
	str r0, [r4, #0x2c]
_0223CEDA:
	mov r0, #3
	pop {r4, pc}
	nop
_0223CEE0: .word 0x00001070
_0223CEE4: .word 0x0000103C
	thumb_func_end ov94_0223CE7C

	thumb_func_start ov94_0223CEE8
ov94_0223CEE8: ; 0x0223CEE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223CF04 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223CF00
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223CF00:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223CF04: .word 0x00000BE4
	thumb_func_end ov94_0223CEE8

	thumb_func_start ov94_0223CF08
ov94_0223CF08: ; 0x0223CF08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223CF38 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223CF34
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x2d
	ble _0223CF34
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223CF34:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223CF38: .word 0x00000BE4
	thumb_func_end ov94_0223CF08

	thumb_func_start ov94_0223CF3C
ov94_0223CF3C: ; 0x0223CF3C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldrh r1, [r7, #0x36]
	mov r0, #0xc
	ldr r2, _0223CF70 ; =0x02245A64
	mul r0, r1
	add r4, r2, r0
	ldr r0, _0223CF74 ; =0x00000F3C
	mov r6, #0
	add r5, r7, r0
_0223CF50:
	ldr r1, _0223CF78 ; =0x00000B94
	ldr r2, [r4, #0]
	ldr r1, [r7, r1]
	ldr r3, _0223CF7C ; =0x00000F0F
	add r0, r5, #0
	bl ov94_0223D030
	add r0, r5, #0
	bl sub_0201A954
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #3
	blt _0223CF50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CF70: .word 0x02245A64
_0223CF74: .word 0x00000F3C
_0223CF78: .word 0x00000B94
_0223CF7C: .word 0x00000F0F
	thumb_func_end ov94_0223CF3C

	thumb_func_start ov94_0223CF80
ov94_0223CF80: ; 0x0223CF80
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, _0223CFCC ; =0x00000B94
	add r5, r0, #0
	ldr r0, [r5, r2]
	add r2, #0x1c
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r0, _0223CFD0 ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223CFD0 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0223CFD0 ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223CFD4 ; =0x00000BE4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223CFCC: .word 0x00000B94
_0223CFD0: .word 0x00000EFC
_0223CFD4: .word 0x00000BE4
	thumb_func_end ov94_0223CF80

	thumb_func_start ov94_0223CFD8
ov94_0223CFD8: ; 0x0223CFD8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, _0223D024 ; =0x00000B94
	add r5, r0, #0
	ldr r0, [r5, r2]
	add r2, #0x1c
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r0, _0223D028 ; =0x0000103C
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223D028 ; =0x0000103C
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0223D028 ; =0x0000103C
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223D02C ; =0x00000BE4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223D024: .word 0x00000B94
_0223D028: .word 0x0000103C
_0223D02C: .word 0x00000BE4
	thumb_func_end ov94_0223CFD8

	thumb_func_start ov94_0223D030
ov94_0223D030: ; 0x0223D030
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	bl sub_0200B1EC
	lsl r1, r4, #0x18
	add r6, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov94_0223D030

	thumb_func_start ov94_0223D068
ov94_0223D068: ; 0x0223D068
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [r0, #4]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	mov r0, #0x68
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #0x2a
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0x68
	mov r1, #0xf
	add r2, r4, #0
	mov r3, #5
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0x68
	mov r1, #0x1f
	add r2, r4, #0
	mov r3, #5
	bl sub_02006E60
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov94_0223D068

	thumb_func_start ov94_0223D0C4
ov94_0223D0C4: ; 0x0223D0C4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_0223D53C
	ldr r0, [r4, #4]
	bl ov94_0223D1D4
	add r0, r4, #0
	bl ov94_0223D2E8
	add r0, r4, #0
	bl ov94_0223D438
	add r0, r4, #0
	bl ov94_0223D3DC
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02076B10
	str r0, [sp]
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r2, _0223D188 ; =0x00000B94
	add r0, r4, r0
	str r0, [sp, #4]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r3, _0223D18C ; =0x00000F6C
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov94_0223D910
	ldr r1, _0223D190 ; =0x0000100C
	mov r2, #0x8f
	add r0, r4, r1
	str r0, [sp]
	ldr r0, _0223D188 ; =0x00000B94
	mov r3, #0x13
	sub r1, #0x50
	lsl r2, r2, #2
	lsl r3, r3, #4
	ldr r0, [r4, r0]
	add r1, r4, r1
	add r2, r4, r2
	add r3, r4, r3
	bl ov94_0223DA78
	ldr r1, _0223D194 ; =0x00000223
	mov r2, #0
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	bl ov94_02242970
	mov r1, #0x22
	lsl r1, r1, #4
	ldrsh r2, [r4, r1]
	ldr r3, _0223D198 ; =0x00000FDC
	add r1, r1, #2
	str r2, [sp]
	ldrsb r1, [r4, r1]
	ldr r2, _0223D188 ; =0x00000B94
	add r3, r4, r3
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl ov94_02242368
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_0223DB2C
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
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0223D188: .word 0x00000B94
_0223D18C: .word 0x00000F6C
_0223D190: .word 0x0000100C
_0223D194: .word 0x00000223
_0223D198: .word 0x00000FDC
	thumb_func_end ov94_0223D0C4

	thumb_func_start ov94_0223D19C
ov94_0223D19C: ; 0x0223D19C
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	lsl r2, r1, #2
	ldr r1, _0223D1AC ; =0x02246808
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0223D1AC: .word 0x02246808
	thumb_func_end ov94_0223D19C

	thumb_func_start ov94_0223D1B0
ov94_0223D1B0: ; 0x0223D1B0
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223D428
	add r0, r4, #0
	bl ov94_0223D57C
	add r0, r4, #0
	bl ov94_0223D504
	ldr r0, [r4, #4]
	bl ov94_0223D2BC
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_0223D1B0

	thumb_func_start ov94_0223D1D4
ov94_0223D1D4: ; 0x0223D1D4
	push {r4, r5, lr}
	sub sp, #0x8c
	ldr r5, _0223D2A8 ; =0x02245B78
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x70
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
	ldr r5, _0223D2AC ; =0x02245B5C
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
	ldr r5, _0223D2B0 ; =0x02245B40
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
	ldr r5, _0223D2B4 ; =0x02245B24
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
	ldr r5, _0223D2B8 ; =0x02245B08
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
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	add sp, #0x8c
	pop {r4, r5, pc}
	nop
_0223D2A8: .word 0x02245B78
_0223D2AC: .word 0x02245B5C
_0223D2B0: .word 0x02245B40
_0223D2B4: .word 0x02245B24
_0223D2B8: .word 0x02245B08
	thumb_func_end ov94_0223D1D4

	thumb_func_start ov94_0223D2BC
ov94_0223D2BC: ; 0x0223D2BC
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
	thumb_func_end ov94_0223D2BC

	thumb_func_start ov94_0223D2E8
ov94_0223D2E8: ; 0x0223D2E8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r5, [r6, #4]
	mov r0, #0x68
	mov r1, #0x3e
	bl sub_02006C24
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0x3e
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #7
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x11
	add r2, r5, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x19
	add r2, r5, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x2a
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xf
	add r2, r5, #0
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1f
	add r2, r5, #0
	mov r3, #5
	bl sub_0200710C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov94_0223D2E8

	thumb_func_start ov94_0223D3DC
ov94_0223D3DC: ; 0x0223D3DC
	push {r4, lr}
	sub sp, #0x30
	ldr r2, _0223D424 ; =0x00000D54
	add r4, r0, #0
	add r0, sp, #0
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #1
	bl ov94_0223C300
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x3a
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0xed
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xed
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x25
	bl sub_02021D6C
	bl sub_02039734
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
_0223D424: .word 0x00000D54
	thumb_func_end ov94_0223D3DC

	thumb_func_start ov94_0223D428
ov94_0223D428: ; 0x0223D428
	mov r1, #0xed
	lsl r1, r1, #4
	ldr r3, _0223D434 ; =sub_02021BD4
	ldr r0, [r0, r1]
	bx r3
	nop
_0223D434: .word sub_02021BD4
	thumb_func_end ov94_0223D428

	thumb_func_start ov94_0223D438
ov94_0223D438: ; 0x0223D438
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223D4F4 ; =0x00000EFC
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	bl sub_0201A7E8
	ldr r1, _0223D4F4 ; =0x00000EFC
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223D4F8 ; =0x00000F3C
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r1, _0223D4FC ; =0x00000F6C
	ldr r0, [sp, #0x14]
	ldr r4, _0223D500 ; =0x02245B94
	mov r6, #0x86
	mov r7, #0
	add r5, r0, r1
_0223D4A0:
	ldr r0, [r4, #4]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #8]
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r4, #0]
	ldr r0, [r0, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	add r7, r7, #1
	mul r0, r1
	add r6, r6, r0
	add r4, #0x10
	add r5, #0x10
	cmp r7, #0xc
	blt _0223D4A0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D4F4: .word 0x00000EFC
_0223D4F8: .word 0x00000F3C
_0223D4FC: .word 0x00000F6C
_0223D500: .word 0x02245B94
	thumb_func_end ov94_0223D438

	thumb_func_start ov94_0223D504
ov94_0223D504: ; 0x0223D504
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223D530 ; =0x00000EFC
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223D534 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223D538 ; =0x00000F6C
	mov r4, #0
	add r5, r5, r0
_0223D51E:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xc
	blt _0223D51E
	pop {r3, r4, r5, pc}
	nop
_0223D530: .word 0x00000EFC
_0223D534: .word 0x00000F3C
_0223D538: .word 0x00000F6C
	thumb_func_end ov94_0223D504

	thumb_func_start ov94_0223D53C
ov94_0223D53C: ; 0x0223D53C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	mov r1, #0x27
	bl sub_0200B1EC
	ldr r1, _0223D578 ; =0x00000BB4
	mov r4, #0
	str r0, [r5, r1]
	mov r7, #0x14
	add r6, r1, #4
_0223D562:
	add r0, r7, #0
	mov r1, #0x3e
	bl sub_02023790
	str r0, [r5, r6]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xa
	blt _0223D562
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D578: .word 0x00000BB4
	thumb_func_end ov94_0223D53C

	thumb_func_start ov94_0223D57C
ov94_0223D57C: ; 0x0223D57C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r6, _0223D5A8 ; =0x00000BB8
	mov r4, #0
	add r5, r7, #0
_0223D586:
	ldr r0, [r5, r6]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xa
	blt _0223D586
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl sub_020237BC
	ldr r0, _0223D5AC ; =0x00000BB4
	ldr r0, [r7, r0]
	bl sub_020237BC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D5A8: .word 0x00000BB8
_0223D5AC: .word 0x00000BB4
	thumb_func_end ov94_0223D57C

	thumb_func_start ov94_0223D5B0
ov94_0223D5B0: ; 0x0223D5B0
	mov r1, #1
	str r1, [r0, #0x2c]
	mov r0, #3
	bx lr
	thumb_func_end ov94_0223D5B0

	thumb_func_start ov94_0223D5B8
ov94_0223D5B8: ; 0x0223D5B8
	push {r4, lr}
	sub sp, #8
	ldr r1, _0223D60C ; =0x021BF67C
	mov r2, #1
	ldr r3, [r1, #0x48]
	add r4, r0, #0
	add r1, r3, #0
	tst r1, r2
	beq _0223D5F0
	ldr r1, _0223D610 ; =0x00000F0F
	mov r3, #0
	str r1, [sp]
	mov r1, #0x13
	lsl r1, r1, #4
	add r1, r4, r1
	str r1, [sp, #4]
	mov r1, #5
	bl ov94_0223D88C
	add r0, r4, #0
	mov r1, #3
	mov r2, #7
	bl ov94_0223C3F4
	ldr r0, _0223D614 ; =0x000005DC
	bl sub_02005748
	b _0223D606
_0223D5F0:
	mov r1, #2
	tst r3, r1
	beq _0223D606
	str r1, [r4, #0x2c]
	add r1, r2, #0
	mov r2, #0
	bl ov94_0223C4C0
	ldr r0, _0223D614 ; =0x000005DC
	bl sub_02005748
_0223D606:
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0223D60C: .word 0x021BF67C
_0223D610: .word 0x00000F0F
_0223D614: .word 0x000005DC
	thumb_func_end ov94_0223D5B8

	thumb_func_start ov94_0223D618
ov94_0223D618: ; 0x0223D618
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	mov r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov94_0223D618

	thumb_func_start ov94_0223D640
ov94_0223D640: ; 0x0223D640
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _0223D65C ; =0x0000015A
	mov r1, #0xf
	bl ov94_0223C3C0
	ldr r1, _0223D660 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #6
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_0223D65C: .word 0x0000015A
_0223D660: .word 0x00001070
	thumb_func_end ov94_0223D640

	thumb_func_start ov94_0223D664
ov94_0223D664: ; 0x0223D664
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D6AC ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223D6A8
	sub r1, r1, #1
	cmp r0, r1
	bne _0223D68E
	ldr r0, _0223D6B0 ; =0x00000EFC
	mov r1, #0
	add r0, r4, r0
	str r1, [r4, #0x2c]
	bl sub_0200E084
	b _0223D6A2
_0223D68E:
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _0223D6B4 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #7
	mov r2, #8
	bl ov94_0223C4C0
_0223D6A2:
	add r0, r4, #0
	bl ov94_0223DBBC
_0223D6A8:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D6AC: .word 0x00001070
_0223D6B0: .word 0x00000EFC
_0223D6B4: .word 0x000010B0
	thumb_func_end ov94_0223D664

	thumb_func_start ov94_0223D6B8
ov94_0223D6B8: ; 0x0223D6B8
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	add r2, sp, #8
	strb r0, [r2, #8]
	mov r0, #1
	strb r0, [r2, #9]
	mov r0, #2
	strb r0, [r2, #0xa]
	ldrb r3, [r2, #0xb]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0x30
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0xc0
	bic r3, r1
	mov r1, #0x3e
	strb r3, [r2, #0xb]
	bl sub_02013A04
	ldr r1, _0223D744 ; =0x0000106C
	mov r2, #0x36
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _0223D748 ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl sub_02013A4C
	ldr r0, _0223D744 ; =0x0000106C
	ldr r1, _0223D748 ; =0x00000B94
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x37
	mov r3, #2
	bl sub_02013A4C
	ldr r0, _0223D744 ; =0x0000106C
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #0x1f
	str r0, [sp, #8]
	ldr r0, _0223D74C ; =0x00000F3C
	mov r3, #0xb
	add r0, r4, r0
	str r0, [sp, #0xc]
	bl sub_0200DC48
	mov r0, #0x3e
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #9
	add r3, r2, #0
	bl sub_02001B7C
	ldr r1, _0223D750 ; =0x00001074
	str r0, [r4, r1]
	mov r0, #8
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0223D744: .word 0x0000106C
_0223D748: .word 0x00000B94
_0223D74C: .word 0x00000F3C
_0223D750: .word 0x00001074
	thumb_func_end ov94_0223D6B8

	thumb_func_start ov94_0223D754
ov94_0223D754: ; 0x0223D754
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0223D828 ; =0x00001074
	ldr r0, [r5, r0]
	bl sub_02001BE0
	cmp r0, #1
	beq _0223D774
	cmp r0, #2
	beq _0223D7F2
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223D7F2
	b _0223D822
_0223D774:
	ldr r0, _0223D828 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _0223D82C ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223D830 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r0, #0x13
	lsl r0, r0, #4
	add r4, r5, r0
	add r0, r4, #0
	bl ov94_02241498
	cmp r0, #0
	beq _0223D7CE
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	cmp r0, #6
	bne _0223D7CE
	ldr r0, _0223D834 ; =0x00000F0F
	mov r1, #0x24
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0
	str r4, [sp, #4]
	bl ov94_0223D88C
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	bl ov94_0223C3F4
	add sp, #8
	mov r0, #3
	pop {r3, r4, r5, pc}
_0223D7CE:
	ldr r0, _0223D834 ; =0x00000F0F
	mov r1, #6
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0
	str r4, [sp, #4]
	bl ov94_0223D88C
	add r0, r5, #0
	mov r1, #3
	mov r2, #5
	bl ov94_0223C3F4
	add r0, r5, #0
	bl ov94_0223DBBC
	b _0223D822
_0223D7F2:
	ldr r0, _0223D828 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _0223D82C ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223D830 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	add r0, r5, #0
	bl ov94_0223DBBC
_0223D822:
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D828: .word 0x00001074
_0223D82C: .word 0x0000106C
_0223D830: .word 0x00000F3C
_0223D834: .word 0x00000F0F
	thumb_func_end ov94_0223D754

	thumb_func_start ov94_0223D838
ov94_0223D838: ; 0x0223D838
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D854 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223D850
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223D850:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D854: .word 0x00000BE4
	thumb_func_end ov94_0223D838

	thumb_func_start ov94_0223D858
ov94_0223D858: ; 0x0223D858
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D888 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223D884
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x2d
	ble _0223D884
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223D884:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D888: .word 0x00000BE4
	thumb_func_end ov94_0223D858

	thumb_func_start ov94_0223D88C
ov94_0223D88C: ; 0x0223D88C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [sp, #0x24]
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B538
	ldr r0, _0223D904 ; =0x00000B94
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0xb9
	add r6, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x20
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	ldr r0, _0223D908 ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223D908 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0223D908 ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223D90C ; =0x00000BE4
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223D904: .word 0x00000B94
_0223D908: .word 0x00000EFC
_0223D90C: .word 0x00000BE4
	thumb_func_end ov94_0223D88C

	thumb_func_start ov94_0223D910
ov94_0223D910: ; 0x0223D910
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	str r1, [sp, #8]
	mov r0, #0x16
	mov r1, #0x3e
	add r7, r2, #0
	add r6, r3, #0
	ldr r4, [sp, #0x4c]
	bl sub_02023790
	str r0, [sp, #0x1c]
	mov r0, #0x12
	mov r1, #0x3e
	bl sub_02023790
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x1c]
	mov r1, #0x77
	bl sub_02074570
	mov r2, #0
	ldrsh r0, [r4, r2]
	mov r1, #6
	str r0, [sp, #0x10]
	mov r0, #2
	ldrsb r0, [r4, r0]
	str r0, [sp, #0x14]
	mov r0, #3
	ldrsb r4, [r4, r0]
	ldr r0, [sp, #0x48]
	bl sub_02074570
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #0x46
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r2, _0223DA6C ; =0x02245FD8
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r2, r1]
	bl sub_0200B1EC
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	mov r1, #3
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200B60C
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x66
	mov r3, #0x3e
	bl sub_0200B29C
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	bl sub_0200B1EC
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x2c]
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x18]
	lsr r1, r1, #0x10
	mov r2, #0x3e
	bl sub_0207CFA0
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_0223D9B4:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0201ADA4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _0223D9B4
	mov r2, #0
	ldr r0, _0223DA70 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	ldr r0, [sp, #0x14]
	cmp r0, #3
	beq _0223D9F2
	mov r3, #0
	ldr r1, _0223DA74 ; =0x022467FC
	ldr r0, [sp, #0xc]
	str r3, [sp]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x28]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x46
	bl ov94_02245900
_0223D9F2:
	mov r2, #0
	ldr r0, _0223DA70 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x2c]
	add r0, #0x10
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DA70 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x24]
	add r0, #0x20
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DA70 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x20]
	add r0, #0x30
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DA70 ; =0x000F0200
	str r2, [sp]
	add r6, #0x40
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	add r0, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0223DA6C: .word 0x02245FD8
_0223DA70: .word 0x000F0200
_0223DA74: .word 0x022467FC
	thumb_func_end ov94_0223D910

	thumb_func_start ov94_0223DA78
ov94_0223DA78: ; 0x0223DA78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0x10
	mov r1, #0x3e
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #0x3e
	bl sub_02023790
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #0x30
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl sub_02023D28
	add r0, r7, #0
	mov r1, #0xac
	bl sub_0200B1EC
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x91
	add r2, r6, #0
	bl sub_02074470
	mov r2, #0
	ldr r0, _0223DB28 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DB28 ; =0x000F0200
	str r2, [sp]
	add r5, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DB28 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DB28 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	add r0, #0x10
	add r3, r2, #0
	bl ov94_02245900
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223DB28: .word 0x000F0200
	thumb_func_end ov94_0223DA78

	thumb_func_start ov94_0223DB2C
ov94_0223DB2C: ; 0x0223DB2C
	push {r4, r5, r6, lr}
	sub sp, #0x30
	mov r1, #0x32
	add r5, r0, #0
	mov r0, #0x3e
	lsl r1, r1, #6
	bl sub_02018144
	add r4, r0, #0
	add r0, sp, #0x20
	add r1, r5, #0
	mov r2, #2
	bl sub_02075EF4
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r3, #0
	str r3, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r1, #2
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r1, sp, #0x20
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	mov r2, #0x3e
	bl sub_020136A4
	mov r1, #0x32
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020C2C54
	mov r1, #0x4a
	mov r2, #0x32
	add r0, r4, #0
	lsl r1, r1, #8
	lsl r2, r2, #6
	bl sub_020C02BC
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3e
	mov r3, #0x1a
	str r0, [sp, #4]
	add r1, sp, #0x20
	ldrh r0, [r1]
	ldrh r1, [r1, #4]
	mov r2, #1
	lsl r3, r3, #4
	bl sub_02006E84
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x30
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_0223DB2C

	thumb_func_start ov94_0223DBBC
ov94_0223DBBC: ; 0x0223DBBC
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _0223DBF8 ; =0x00000223
	add r4, r0, #0
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	mov r2, #0
	bl ov94_02242970
	mov r1, #0x22
	lsl r1, r1, #4
	ldrsh r2, [r4, r1]
	add r1, r1, #2
	ldr r3, _0223DBFC ; =0x00000FDC
	str r2, [sp]
	ldrsb r1, [r4, r1]
	ldr r2, _0223DC00 ; =0x00000B94
	add r3, r4, r3
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl ov94_02242368
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0223DBF8: .word 0x00000223
_0223DBFC: .word 0x00000FDC
_0223DC00: .word 0x00000B94
	thumb_func_end ov94_0223DBBC

	thumb_func_start ov94_0223DC04
ov94_0223DC04: ; 0x0223DC04
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_0223DFDC
	ldr r0, [r4, #4]
	bl ov94_0223DD1C
	add r0, r4, #0
	bl ov94_0223DE04
	add r0, r4, #0
	bl ov94_0223DED8
	add r0, r4, #0
	bl ov94_0223DE7C
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, r0, #4
	add r5, r1, #0
	mul r5, r0
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, r0, r5
	bl sub_02076B10
	str r0, [sp]
	mov r0, #0xd
	lsl r0, r0, #6
	add r0, r4, r0
	ldr r2, _0223DCD4 ; =0x00000B94
	add r0, r0, r5
	str r0, [sp, #4]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r3, _0223DCD8 ; =0x00000F6C
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov94_0223D910
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	mov r2, #0x36
	add r3, r1, #0
	add r0, r0, #4
	mov r5, #0x95
	lsl r2, r2, #4
	lsl r5, r5, #2
	ldr r1, _0223DCDC ; =0x0000100C
	mul r3, r0
	add r0, r4, r1
	str r0, [sp]
	ldr r0, _0223DCD4 ; =0x00000B94
	sub r1, #0x50
	add r2, r4, r2
	ldr r0, [r4, r0]
	add r5, r4, r5
	add r2, r2, r3
	add r1, r4, r1
	add r3, r5, r3
	bl ov94_0223DA78
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bl ov94_0223DB2C
	ldr r0, _0223DCD4 ; =0x00000B94
	ldr r1, _0223DCE0 ; =0x00000FDC
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_0223E358
	add r0, r4, #0
	bl ov94_0223E240
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
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223DCD4: .word 0x00000B94
_0223DCD8: .word 0x00000F6C
_0223DCDC: .word 0x0000100C
_0223DCE0: .word 0x00000FDC
	thumb_func_end ov94_0223DC04

	thumb_func_start ov94_0223DCE4
ov94_0223DCE4: ; 0x0223DCE4
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	lsl r2, r1, #2
	ldr r1, _0223DCF4 ; =0x0224682C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0223DCF4: .word 0x0224682C
	thumb_func_end ov94_0223DCE4

	thumb_func_start ov94_0223DCF8
ov94_0223DCF8: ; 0x0223DCF8
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223DEC8
	add r0, r4, #0
	bl ov94_0223E074
	add r0, r4, #0
	bl ov94_0223DFA4
	ldr r0, [r4, #4]
	bl ov94_0223DDE0
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_0223DCF8

	thumb_func_start ov94_0223DD1C
ov94_0223DD1C: ; 0x0223DD1C
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _0223DDD0 ; =0x02245CA8
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x54
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
	ldr r5, _0223DDD4 ; =0x02245C8C
	add r3, sp, #0x38
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
	ldr r5, _0223DDD8 ; =0x02245C70
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
	ldr r5, _0223DDDC ; =0x02245C54
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
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_0223DDD0: .word 0x02245CA8
_0223DDD4: .word 0x02245C8C
_0223DDD8: .word 0x02245C70
_0223DDDC: .word 0x02245C54
	thumb_func_end ov94_0223DD1C

	thumb_func_start ov94_0223DDE0
ov94_0223DDE0: ; 0x0223DDE0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov94_0223DDE0

	thumb_func_start ov94_0223DE04
ov94_0223DE04: ; 0x0223DE04
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x1a
	add r5, r0, #0
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	ldr r4, [r5, #4]
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
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0x68
	mov r1, #0x11
	add r2, r4, #0
	bl sub_02006E3C
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0x3e
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x68
	mov r1, #7
	add r3, r2, #0
	bl sub_02006E84
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov94_0223DE04

	thumb_func_start ov94_0223DE7C
ov94_0223DE7C: ; 0x0223DE7C
	push {r4, lr}
	sub sp, #0x30
	ldr r2, _0223DEC4 ; =0x00000D54
	add r4, r0, #0
	add r0, sp, #0
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #1
	bl ov94_0223C300
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x3a
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0xed
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xed
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x25
	bl sub_02021D6C
	bl sub_02039734
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
_0223DEC4: .word 0x00000D54
	thumb_func_end ov94_0223DE7C

	thumb_func_start ov94_0223DEC8
ov94_0223DEC8: ; 0x0223DEC8
	mov r1, #0xed
	lsl r1, r1, #4
	ldr r3, _0223DED4 ; =sub_02021BD4
	ldr r0, [r0, r1]
	bx r3
	nop
_0223DED4: .word sub_02021BD4
	thumb_func_end ov94_0223DEC8

	thumb_func_start ov94_0223DED8
ov94_0223DED8: ; 0x0223DED8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223DF94 ; =0x00000EFC
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	bl sub_0201A7E8
	ldr r1, _0223DF94 ; =0x00000EFC
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223DF98 ; =0x00000F3C
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r1, _0223DF9C ; =0x00000F6C
	ldr r0, [sp, #0x14]
	ldr r4, _0223DFA0 ; =0x02245CC4
	mov r6, #0x86
	mov r7, #0
	add r5, r0, r1
_0223DF40:
	ldr r0, [r4, #4]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #8]
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r4, #0]
	ldr r0, [r0, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	add r7, r7, #1
	mul r0, r1
	add r6, r6, r0
	add r4, #0x10
	add r5, #0x10
	cmp r7, #0xc
	blo _0223DF40
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DF94: .word 0x00000EFC
_0223DF98: .word 0x00000F3C
_0223DF9C: .word 0x00000F6C
_0223DFA0: .word 0x02245CC4
	thumb_func_end ov94_0223DED8

	thumb_func_start ov94_0223DFA4
ov94_0223DFA4: ; 0x0223DFA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223DFD0 ; =0x00000EFC
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223DFD4 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223DFD8 ; =0x00000F6C
	mov r4, #0
	add r5, r5, r0
_0223DFBE:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xc
	blo _0223DFBE
	pop {r3, r4, r5, pc}
	nop
_0223DFD0: .word 0x00000EFC
_0223DFD4: .word 0x00000F3C
_0223DFD8: .word 0x00000F6C
	thumb_func_end ov94_0223DFA4

	thumb_func_start ov94_0223DFDC
ov94_0223DFDC: ; 0x0223DFDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r5, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, r0, #4
	mul r0, r1
	add r4, r2, r0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r1, #0x20
	ldr r0, [r5, r1]
	bl sub_0200C41C
	ldr r0, _0223E064 ; =0x0000011E
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _0223E01C
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #8
	bl sub_0200BDD0
_0223E01C:
	ldr r2, _0223E068 ; =0x0000011F
	ldrb r3, [r4, r2]
	cmp r3, #0
	beq _0223E034
	mov r0, #0xb9
	sub r2, r2, #1
	lsl r0, r0, #4
	ldrb r2, [r4, r2]
	ldr r0, [r5, r0]
	mov r1, #9
	bl sub_0200BE08
_0223E034:
	mov r1, #0xb9
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x4f
	mov r3, #0x3e
	bl sub_0200B29C
	ldr r1, _0223E06C ; =0x00000BB8
	mov r2, #0x50
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x28
	sub r1, #0x24
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r3, #0x3e
	bl sub_0200B29C
	ldr r1, _0223E070 ; =0x00000BBC
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	nop
_0223E064: .word 0x0000011E
_0223E068: .word 0x0000011F
_0223E06C: .word 0x00000BB8
_0223E070: .word 0x00000BBC
	thumb_func_end ov94_0223DFDC

	thumb_func_start ov94_0223E074
ov94_0223E074: ; 0x0223E074
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E094 ; =0x00000BB8
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0223E098 ; =0x00000BBC
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
_0223E094: .word 0x00000BB8
_0223E098: .word 0x00000BBC
	thumb_func_end ov94_0223E074

	thumb_func_start ov94_0223E09C
ov94_0223E09C: ; 0x0223E09C
	mov r1, #1
	str r1, [r0, #0x2c]
	mov r0, #3
	bx lr
	thumb_func_end ov94_0223E09C

	thumb_func_start ov94_0223E0A4
ov94_0223E0A4: ; 0x0223E0A4
	push {r3, r4, r5, lr}
	ldr r1, _0223E174 ; =0x021BF67C
	mov r2, #1
	ldr r1, [r1, #0x48]
	add r4, r0, #0
	add r3, r1, #0
	tst r3, r2
	beq _0223E0D2
	ldr r1, _0223E178 ; =0x00000F0F
	mov r3, #0
	str r1, [sp]
	mov r1, #0x10
	bl ov94_0223E300
	add r0, r4, #0
	mov r1, #3
	mov r2, #4
	bl ov94_0223C3F4
	ldr r0, _0223E17C ; =0x000005DC
	bl sub_02005748
	b _0223E170
_0223E0D2:
	mov r3, #2
	add r5, r1, #0
	tst r5, r3
	beq _0223E0EC
	mov r1, #4
	mov r2, #0
	str r3, [r4, #0x2c]
	bl ov94_0223C4C0
	ldr r0, _0223E17C ; =0x000005DC
	bl sub_02005748
	b _0223E170
_0223E0EC:
	mov r0, #0x10
	tst r0, r1
	beq _0223E108
	ldr r0, _0223E180 ; =0x00000112
	ldrh r1, [r4, r0]
	cmp r1, #0
	bne _0223E170
	strh r2, [r4, r0]
	mov r0, #6
	str r0, [r4, #0x2c]
	ldr r0, _0223E17C ; =0x000005DC
	bl sub_02005748
	b _0223E170
_0223E108:
	mov r2, #0x20
	add r0, r1, #0
	tst r0, r2
	beq _0223E12C
	add r0, r2, #0
	add r0, #0xf2
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0223E170
	mov r0, #0
	add r2, #0xf2
	strh r0, [r4, r2]
	mov r0, #6
	str r0, [r4, #0x2c]
	ldr r0, _0223E17C ; =0x000005DC
	bl sub_02005748
	b _0223E170
_0223E12C:
	add r2, #0xfc
	ldr r0, [r4, r2]
	bl ov94_02244214
	add r5, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r5, r0
	beq _0223E170
	cmp r5, #0
	blt _0223E170
	add r0, r5, #1
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0223E184 ; =0x00000ED4
	ldr r0, [r1, r0]
	lsl r1, r5, #2
	add r1, #0x10
	bl sub_02021D6C
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #0x12
	lsl r0, r0, #4
	str r5, [r4, r0]
	ldr r0, _0223E17C ; =0x000005DC
	bl sub_02005748
_0223E170:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E174: .word 0x021BF67C
_0223E178: .word 0x00000F0F
_0223E17C: .word 0x000005DC
_0223E180: .word 0x00000112
_0223E184: .word 0x00000ED4
	thumb_func_end ov94_0223E0A4

	thumb_func_start ov94_0223E188
ov94_0223E188: ; 0x0223E188
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	mov r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov94_0223E188

	thumb_func_start ov94_0223E1B0
ov94_0223E1B0: ; 0x0223E1B0
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0x1f
	ldr r0, [r4, #4]
	mov r1, #0xf
	lsl r2, r2, #4
	bl ov94_0223C3C0
	ldr r1, _0223E1CC ; =0x00001070
	str r0, [r4, r1]
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223E1CC: .word 0x00001070
	thumb_func_end ov94_0223E1B0

	thumb_func_start ov94_0223E1D0
ov94_0223E1D0: ; 0x0223E1D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E234 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223E22E
	sub r1, r1, #1
	cmp r0, r1
	bne _0223E20E
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov94_0223C4C0
	ldr r0, _0223E238 ; =0x00000B94
	ldr r1, _0223E23C ; =0x00000FDC
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_0223E358
	add r0, r4, #0
	bl ov94_0223E240
	b _0223E22E
_0223E20E:
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #5
	mov r2, #6
	bl ov94_0223C4C0
	ldr r0, _0223E238 ; =0x00000B94
	ldr r1, _0223E23C ; =0x00000FDC
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_0223E358
	add r0, r4, #0
	bl ov94_0223E240
_0223E22E:
	mov r0, #3
	pop {r4, pc}
	nop
_0223E234: .word 0x00001070
_0223E238: .word 0x00000B94
_0223E23C: .word 0x00000FDC
	thumb_func_end ov94_0223E1D0

	thumb_func_start ov94_0223E240
ov94_0223E240: ; 0x0223E240
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0223E2C0 ; =0x00000112
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0223E290
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x68
	mov r1, #0x1b
	bl sub_02006E60
	ldr r2, _0223E2C4 ; =0x00000B94
	mov r5, #0x12
	ldr r0, _0223E2C8 ; =0x00000FFC
	mov r3, #0xd1
	lsl r5, r5, #4
	ldr r1, [r4, r2]
	add r2, r2, #4
	lsl r3, r3, #2
	ldr r6, [r4, r5]
	add r0, r4, r0
	ldr r2, [r4, r2]
	add r3, r4, r3
	add r4, r5, #4
	mul r4, r6
	add r3, r3, r4
	bl ov94_0223E3B0
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0223E290:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x68
	mov r1, #0x1c
	bl sub_02006E60
	ldr r2, _0223E2CC ; =0x00000BB8
	ldr r0, _0223E2C8 ; =0x00000FFC
	ldr r1, [r4, r2]
	add r2, r2, #4
	ldr r2, [r4, r2]
	add r0, r4, r0
	bl ov94_0223E424
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223E2C0: .word 0x00000112
_0223E2C4: .word 0x00000B94
_0223E2C8: .word 0x00000FFC
_0223E2CC: .word 0x00000BB8
	thumb_func_end ov94_0223E240

	thumb_func_start ov94_0223E2D0
ov94_0223E2D0: ; 0x0223E2D0
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223E240
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_0223E2D0

	thumb_func_start ov94_0223E2E0
ov94_0223E2E0: ; 0x0223E2E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E2FC ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223E2F8
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223E2F8:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223E2FC: .word 0x00000BE4
	thumb_func_end ov94_0223E2E0

	thumb_func_start ov94_0223E300
ov94_0223E300: ; 0x0223E300
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, _0223E34C ; =0x00000B94
	add r5, r0, #0
	ldr r0, [r5, r2]
	add r2, #0x1c
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r0, _0223E350 ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223E350 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0223E350 ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223E354 ; =0x00000BE4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223E34C: .word 0x00000B94
_0223E350: .word 0x00000EFC
_0223E354: .word 0x00000BE4
	thumb_func_end ov94_0223E300

	thumb_func_start ov94_0223E358
ov94_0223E358: ; 0x0223E358
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	mov r1, #0x4a
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x4e
	bl sub_0200B1EC
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223E3AC ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #2
	bl ov94_02245900
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223E3AC ; =0x000F0200
	add r5, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	mov r3, #2
	bl ov94_02245900
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223E3AC: .word 0x000F0200
	thumb_func_end ov94_0223E358

	thumb_func_start ov94_0223E3B0
ov94_0223E3B0: ; 0x0223E3B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0
	add r5, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0201ADA4
	mov r0, #3
	str r0, [sp]
	ldr r0, _0223E420 ; =0x000F0200
	mov r3, #0
	str r0, [sp, #4]
	ldrsh r2, [r4, r3]
	add r0, r5, #0
	add r1, r7, #0
	bl ov94_02242158
	mov r0, #3
	str r0, [sp]
	mov r0, #0x46
	str r0, [sp, #4]
	ldr r0, _0223E420 ; =0x000F0200
	mov r2, #2
	str r0, [sp, #8]
	ldrsb r2, [r4, r2]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl ov94_02242204
	mov r0, #3
	mov r1, #4
	ldrsb r0, [r4, r0]
	ldrsb r1, [r4, r1]
	mov r2, #0
	bl ov94_02242970
	add r2, r0, #0
	mov r0, #0x13
	str r0, [sp]
	ldr r0, _0223E420 ; =0x000F0200
	mov r3, #0
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #8
	add r5, #0x10
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov94_0224226C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E420: .word 0x000F0200
	thumb_func_end ov94_0223E3B0

	thumb_func_start ov94_0223E424
ov94_0223E424: ; 0x0223E424
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	add r6, r0, #0
	add r4, r2, #0
	bl sub_0201ADA4
	cmp r5, #0
	beq _0223E44A
	mov r2, #0
	ldr r0, _0223E468 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #3
	bl ov94_02245900
_0223E44A:
	cmp r4, #0
	beq _0223E462
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223E468 ; =0x000F0200
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #8
	mov r3, #0x13
	bl ov94_02245900
_0223E462:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223E468: .word 0x000F0200
	thumb_func_end ov94_0223E424

	thumb_func_start ov94_0223E46C
ov94_0223E46C: ; 0x0223E46C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_0223E9B8
	ldr r0, [r4, #4]
	bl ov94_0223E598
	add r0, r4, #0
	bl ov94_0223E6B8
	add r0, r4, #0
	bl ov94_0223E7D4
	add r0, r4, #0
	bl ov94_0223E770
	ldr r1, _0223E538 ; =0x00000F6C
	ldr r2, _0223E53C ; =0x00000B94
	add r0, r4, r1
	add r1, #0xe0
	ldr r2, [r4, r2]
	add r1, r4, r1
	bl ov94_0223F9FC
	mov r3, #0
	ldr r0, _0223E540 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	ldr r2, _0223E544 ; =0x00000B98
	ldr r0, _0223E548 ; =0x00000F7C
	ldr r1, [r4, r2]
	sub r2, #0x1a
	ldrsh r2, [r4, r2]
	add r0, r4, r0
	bl ov94_02242158
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223E540 ; =0x00010200
	ldr r2, _0223E53C ; =0x00000B94
	str r0, [sp, #8]
	ldr r1, [r4, r2]
	sub r2, #0x14
	ldr r0, _0223E54C ; =0x00000F9C
	ldrsb r2, [r4, r2]
	add r0, r4, r0
	mov r3, #1
	bl ov94_02242204
	ldr r1, _0223E550 ; =0x00000B81
	mov r2, #1
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	bl ov94_02242970
	add r2, r0, #0
	mov r3, #0
	ldr r0, _0223E540 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, _0223E53C ; =0x00000B94
	ldr r0, _0223E554 ; =0x00000FBC
	ldr r1, [r4, r1]
	add r0, r4, r0
	bl ov94_022422B8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223E540 ; =0x00010200
	ldr r3, _0223E558 ; =0x0000105C
	str r0, [sp, #8]
	ldr r2, _0223E55C ; =0x00000BA4
	add r0, r4, r3
	ldr r1, [r4, r2]
	sub r2, #0x10
	add r3, #0xf4
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ov94_0224218C
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
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0223E538: .word 0x00000F6C
_0223E53C: .word 0x00000B94
_0223E540: .word 0x00010200
_0223E544: .word 0x00000B98
_0223E548: .word 0x00000F7C
_0223E54C: .word 0x00000F9C
_0223E550: .word 0x00000B81
_0223E554: .word 0x00000FBC
_0223E558: .word 0x0000105C
_0223E55C: .word 0x00000BA4
	thumb_func_end ov94_0223E46C

	thumb_func_start ov94_0223E560
ov94_0223E560: ; 0x0223E560
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	lsl r2, r1, #2
	ldr r1, _0223E570 ; =0x02246860
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0223E570: .word 0x02246860
	thumb_func_end ov94_0223E560

	thumb_func_start ov94_0223E574
ov94_0223E574: ; 0x0223E574
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223E7C4
	add r0, r4, #0
	bl ov94_0223EA20
	add r0, r4, #0
	bl ov94_0223E968
	ldr r0, [r4, #4]
	bl ov94_0223E684
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_0223E574

	thumb_func_start ov94_0223E598
ov94_0223E598: ; 0x0223E598
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _0223E674 ; =0x02245DC8
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x54
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
	ldr r5, _0223E678 ; =0x02245DAC
	add r3, sp, #0x38
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
	ldr r5, _0223E67C ; =0x02245DE4
	add r3, sp, #0x1c
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
	ldr r5, _0223E680 ; =0x02245E00
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_0223E674: .word 0x02245DC8
_0223E678: .word 0x02245DAC
_0223E67C: .word 0x02245DE4
_0223E680: .word 0x02245E00
	thumb_func_end ov94_0223E598

	thumb_func_start ov94_0223E684
ov94_0223E684: ; 0x0223E684
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
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov94_0223E684

	thumb_func_start ov94_0223E6B8
ov94_0223E6B8: ; 0x0223E6B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r5, [r6, #4]
	mov r0, #0x68
	mov r1, #0x3e
	bl sub_02006C24
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0x3e
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #3
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xd
	add r2, r5, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1a
	add r2, r5, #0
	bl sub_0200710C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov94_0223E6B8

	thumb_func_start ov94_0223E770
ov94_0223E770: ; 0x0223E770
	push {r4, lr}
	sub sp, #0x30
	ldr r2, _0223E7C0 ; =0x00000D54
	add r4, r0, #0
	add r0, sp, #0
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #1
	bl ov94_0223C300
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0x37
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021D6C
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021E80
	bl sub_02039734
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
_0223E7C0: .word 0x00000D54
	thumb_func_end ov94_0223E770

	thumb_func_start ov94_0223E7C4
ov94_0223E7C4: ; 0x0223E7C4
	mov r1, #0x37
	lsl r1, r1, #6
	ldr r3, _0223E7D0 ; =sub_02021BD4
	ldr r0, [r0, r1]
	bx r3
	nop
_0223E7D0: .word sub_02021BD4
	thumb_func_end ov94_0223E7C4

	thumb_func_start ov94_0223E7D4
ov94_0223E7D4: ; 0x0223E7D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r3, #1
	str r0, [sp, #0x14]
	str r3, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223E944 ; =0x00000F1C
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	bl sub_0201A7E8
	ldr r1, _0223E944 ; =0x00000F1C
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	mov r2, #0
	ldr r0, _0223E948 ; =0x000F0D00
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, _0223E944 ; =0x00000F1C
	ldr r0, [sp, #0x14]
	ldr r3, _0223E94C ; =0x00000BB4
	add r0, r0, r1
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r3]
	mov r3, #1
	bl ov94_022458CC
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223E950 ; =0x00000EFC
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	bl sub_0201A7E8
	ldr r1, _0223E950 ; =0x00000EFC
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, _0223E954 ; =0x00000F6C
	ldr r0, [sp, #0x14]
	ldr r4, _0223E958 ; =0x02245D94
	mov r7, #0
	mov r6, #1
	add r5, r0, r1
_0223E860:
	ldrh r0, [r4, #2]
	add r1, r5, #0
	mov r2, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r7, r7, #1
	add r6, #0x16
	add r4, r4, #4
	add r5, #0x10
	cmp r7, #6
	blt _0223E860
	ldr r1, _0223E954 ; =0x00000F6C
	ldr r0, [sp, #0x14]
	ldr r4, _0223E95C ; =0x02245D84
	add r0, r0, r1
	mov r5, #0
	mov r6, #0x96
	str r0, [sp, #0x18]
_0223E8AE:
	add r0, r5, #6
	lsl r7, r0, #4
	ldrh r0, [r4, #2]
	ldr r1, [sp, #0x18]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	add r1, r1, r7
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r0, r0, r7
	bl sub_0201ADA4
	add r5, r5, #1
	add r6, #0x10
	add r4, r4, #4
	cmp r5, #2
	blt _0223E8AE
	ldr r1, _0223E960 ; =0x0000104C
	ldr r0, [sp, #0x14]
	ldr r4, _0223E964 ; =0x02245D8C
	mov r7, #0
	mov r6, #0x85
	add r5, r0, r1
_0223E900:
	ldrh r0, [r4, #2]
	add r1, r5, #0
	mov r2, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r7, r7, #1
	add r6, #0x38
	add r4, r4, #4
	add r5, #0x10
	cmp r7, #2
	blt _0223E900
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E944: .word 0x00000F1C
_0223E948: .word 0x000F0D00
_0223E94C: .word 0x00000BB4
_0223E950: .word 0x00000EFC
_0223E954: .word 0x00000F6C
_0223E958: .word 0x02245D94
_0223E95C: .word 0x02245D84
_0223E960: .word 0x0000104C
_0223E964: .word 0x02245D8C
	thumb_func_end ov94_0223E7D4

	thumb_func_start ov94_0223E968
ov94_0223E968: ; 0x0223E968
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0223E9A8 ; =0x00000EFC
	add r0, r6, r0
	bl sub_0201A8FC
	ldr r0, _0223E9AC ; =0x00000F1C
	add r0, r6, r0
	bl sub_0201A8FC
	ldr r0, _0223E9B0 ; =0x00000F6C
	mov r4, #0
	add r5, r6, r0
_0223E982:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _0223E982
	ldr r0, _0223E9B4 ; =0x0000104C
	mov r4, #0
	add r5, r6, r0
_0223E996:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _0223E996
	pop {r4, r5, r6, pc}
	nop
_0223E9A8: .word 0x00000EFC
_0223E9AC: .word 0x00000F1C
_0223E9B0: .word 0x00000F6C
_0223E9B4: .word 0x0000104C
	thumb_func_end ov94_0223E968

	thumb_func_start ov94_0223E9B8
ov94_0223E9B8: ; 0x0223E9B8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x29
	bl sub_0200B1EC
	ldr r1, _0223EA18 ; =0x00000BB4
	str r0, [r4, r1]
	mov r0, #0x3e
	mov r1, #0x30
	bl sub_02018144
	ldr r1, _0223EA1C ; =0x00001084
	mov r2, #0x30
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	bl sub_020C4BB8
	ldr r2, _0223EA1C ; =0x00001084
	mov r0, #0x3e
	ldr r2, [r4, r2]
	mov r1, #0
	add r2, #0x1c
	bl ov94_02242524
	ldr r1, _0223EA1C ; =0x00001084
	ldr r1, [r4, r1]
	str r0, [r1, #0x18]
	mov r0, #0x3e
	bl ov94_02242548
	ldr r1, _0223EA1C ; =0x00001084
	ldr r2, [r4, r1]
	add r1, #0x38
	str r0, [r2, #0x14]
	add r0, r4, r1
	bl ov94_02242AAC
	pop {r4, pc}
	; .align 2, 0
_0223EA18: .word 0x00000BB4
_0223EA1C: .word 0x00001084
	thumb_func_end ov94_0223E9B8

	thumb_func_start ov94_0223EA20
ov94_0223EA20: ; 0x0223EA20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223EA54 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x14]
	bl sub_020181C4
	ldr r0, _0223EA54 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x18]
	bl sub_020181C4
	ldr r0, _0223EA54 ; =0x00001084
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0223EA58 ; =0x00000BB4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
_0223EA54: .word 0x00001084
_0223EA58: .word 0x00000BB4
	thumb_func_end ov94_0223EA20

	thumb_func_start ov94_0223EA5C
ov94_0223EA5C: ; 0x0223EA5C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223EA80 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #8
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223EA80: .word 0x00000F0F
	thumb_func_end ov94_0223EA5C

	thumb_func_start ov94_0223EA84
ov94_0223EA84: ; 0x0223EA84
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov94_0223EFAC
	ldr r0, _0223EBB0 ; =0x021BF67C
	mov r2, #1
	ldr r1, [r0, #0x48]
	add r0, r1, #0
	tst r0, r2
	beq _0223EB42
	add r0, r4, #0
	bl ov94_0223EF94
	cmp r0, #5
	bls _0223EAA4
	b _0223EBAC
_0223EAA4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223EAB0: ; jump table
	.short _0223EABC - _0223EAB0 - 2 ; case 0
	.short _0223EAC8 - _0223EAB0 - 2 ; case 1
	.short _0223EB02 - _0223EAB0 - 2 ; case 2
	.short _0223EB0E - _0223EAB0 - 2 ; case 3
	.short _0223EB1A - _0223EAB0 - 2 ; case 4
	.short _0223EB20 - _0223EAB0 - 2 ; case 5
_0223EABC:
	mov r0, #3
	str r0, [r4, #0x2c]
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EAC8:
	ldr r0, _0223EBB8 ; =0x00000B7E
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _0223EAF6
	mov r1, #0x12
	bl sub_020759F0
	ldr r1, _0223EBBC ; =0x00001084
	ldr r2, [r4, r1]
	str r0, [r2, #0x20]
	ldr r1, [r4, r1]
	ldr r0, _0223EBB8 ; =0x00000B7E
	ldr r1, [r1, #0x20]
	add r0, r4, r0
	bl ov94_02241B80
	cmp r0, #0
	beq _0223EAF6
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	mov r0, #3
	pop {r3, r4, r5, pc}
_0223EAF6:
	mov r0, #8
	str r0, [r4, #0x2c]
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EB02:
	mov r0, #0xb
	str r0, [r4, #0x2c]
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EB0E:
	mov r0, #0xe
	str r0, [r4, #0x2c]
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EB1A:
	mov r0, #0x11
	str r0, [r4, #0x2c]
	b _0223EBAC
_0223EB20:
	ldr r0, _0223EBC0 ; =0x00000F0F
	mov r1, #0xf
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x19
	bl ov94_0223C3F4
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EB42:
	mov r0, #2
	tst r0, r1
	beq _0223EB68
	ldr r0, _0223EBC0 ; =0x00000F0F
	mov r1, #0xf
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x19
	bl ov94_0223C3F4
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EB68:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov94_02244214
	add r5, r0, #0
	ldr r0, _0223EBC4 ; =0x00001092
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0223EBAC
	cmp r5, #0
	blt _0223EBAC
	add r0, r5, #1
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0223EBC8 ; =0x00000ED4
	ldr r0, [r1, r0]
	lsl r1, r5, #2
	add r1, #0x10
	bl sub_02021D6C
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #0x12
	lsl r0, r0, #4
	str r5, [r4, r0]
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
_0223EBAC:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223EBB0: .word 0x021BF67C
_0223EBB4: .word 0x000005DC
_0223EBB8: .word 0x00000B7E
_0223EBBC: .word 0x00001084
_0223EBC0: .word 0x00000F0F
_0223EBC4: .word 0x00001092
_0223EBC8: .word 0x00000ED4
	thumb_func_end ov94_0223EA84

	thumb_func_start ov94_0223EBCC
ov94_0223EBCC: ; 0x0223EBCC
	push {r3, r4, lr}
	sub sp, #4
	ldr r3, _0223EC60 ; =0x00000B7E
	add r4, r0, #0
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bne _0223EBFA
	ldr r1, _0223EC64 ; =0x00000F0F
	mov r2, #1
	str r1, [sp]
	mov r1, #0xc
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _0223EC68 ; =0x000005F3
	bl sub_02005748
	b _0223EC58
_0223EBFA:
	ldr r2, _0223EC6C ; =0x00001150
	add r1, r3, #6
	add r0, r4, r3
	add r3, #0xe
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r1, r4, r1
	bl ov94_0223FB0C
	cmp r0, #0
	beq _0223EC32
	ldr r0, _0223EC64 ; =0x00000F0F
	mov r1, #0x21
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _0223EC68 ; =0x000005F3
	bl sub_02005748
	b _0223EC58
_0223EC32:
	ldr r0, _0223EC70 ; =0x000005FF
	bl sub_02005748
	ldr r0, _0223EC64 ; =0x00000F0F
	mov r1, #0xd
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x12
	bl ov94_0223C3F4
	add r0, r4, #0
	bl ov94_022442E4
_0223EC58:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223EC60: .word 0x00000B7E
_0223EC64: .word 0x00000F0F
_0223EC68: .word 0x000005F3
_0223EC6C: .word 0x00001150
_0223EC70: .word 0x000005FF
	thumb_func_end ov94_0223EBCC

	thumb_func_start ov94_0223EC74
ov94_0223EC74: ; 0x0223EC74
	push {r3, r4, lr}
	sub sp, #0x2c
	cmp r1, #1
	ldr r0, [r0, #0]
	bne _0223EC86
	ldr r0, [r0, #0]
	bl sub_0202DA9C
	b _0223EC8C
_0223EC86:
	ldr r0, [r0, #0]
	bl sub_0202DA8C
_0223EC8C:
	lsr r1, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x1c]
	lsr r1, r0, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x20]
	lsr r1, r0, #8
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0xc
	add r1, sp, #0
	bl ov4_021D806C
	add r0, sp, #0xc
	bl sub_020CC16C
	add r4, r0, #0
	add r0, sp, #0x1c
	bl sub_020CC16C
	sub r0, r4, r0
	bmi _0223ECCE
	cmp r0, #3
	bge _0223ECCE
	add sp, #0x2c
	mov r0, #1
	pop {r3, r4, pc}
_0223ECCE:
	mov r0, #0
	add sp, #0x2c
	pop {r3, r4, pc}
	thumb_func_end ov94_0223EC74

	thumb_func_start ov94_0223ECD4
ov94_0223ECD4: ; 0x0223ECD4
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #1
	add r5, r0, #0
	mov r4, #3
	bl ov94_0223EC74
	cmp r0, #0
	beq _0223ECE8
	add r4, r4, #2
_0223ECE8:
	add r0, r5, #0
	mov r1, #0
	bl ov94_0223EC74
	cmp r0, #0
	beq _0223ECF6
	add r4, r4, #2
_0223ECF6:
	ldr r0, _0223ED88 ; =0x00001150
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223ED10
	ldr r0, _0223ED8C ; =0x00000B7E
	mov r2, #0x95
	lsl r2, r2, #2
	add r0, r5, r0
	add r1, r4, #0
	add r2, r5, r2
	bl ov94_0223B9B0
	b _0223ED4E
_0223ED10:
	add r0, sp, #0
	mov r1, #0
	mov r2, #8
	bl sub_020C4CF4
	ldr r1, _0223ED8C ; =0x00000B7E
	add r0, sp, #0
	ldrsh r2, [r5, r1]
	strh r2, [r0]
	add r2, r1, #2
	ldrsb r2, [r5, r2]
	strb r2, [r0, #2]
	add r2, r1, #3
	ldrsb r2, [r5, r2]
	strb r2, [r0, #3]
	add r2, r1, #4
	ldrsb r2, [r5, r2]
	add r1, r1, #5
	strb r2, [r0, #4]
	ldrsb r1, [r5, r1]
	strb r1, [r0, #5]
	ldr r1, _0223ED88 ; =0x00001150
	strb r4, [r0, #6]
	ldr r1, [r5, r1]
	strb r1, [r0, #7]
	mov r1, #0x95
	lsl r1, r1, #2
	add r0, sp, #0
	add r1, r5, r1
	bl ov94_0223BA24
_0223ED4E:
	ldr r1, _0223ED8C ; =0x00000B7E
	ldrh r2, [r5, r1]
	add r0, r1, #6
	strh r2, [r5, r0]
	add r0, r1, #2
	ldrh r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	strh r2, [r5, r0]
	add r0, r1, #4
	ldrh r2, [r5, r0]
	add r0, r1, #0
	add r0, #0xa
	strh r2, [r5, r0]
	ldr r2, _0223ED88 ; =0x00001150
	add r1, #0xe
	ldr r0, [r5, r2]
	sub r2, #0xbe
	str r0, [r5, r1]
	ldr r0, _0223ED90 ; =0x00001484
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #0x13
	str r0, [r5, #0x2c]
	strh r1, [r5, r2]
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223ED88: .word 0x00001150
_0223ED8C: .word 0x00000B7E
_0223ED90: .word 0x00001484
	thumb_func_end ov94_0223ECD4

	thumb_func_start ov94_0223ED94
ov94_0223ED94: ; 0x0223ED94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _0223EE1C
	bl ov94_0223B7D8
	add r5, r0, #0
	ldr r0, _0223EE38 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xf
	cmp r0, #0x16
	bhi _0223EE32
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223EDC0: ; jump table
	.short _0223EE16 - _0223EDC0 - 2 ; case 0
	.short _0223EE0A - _0223EDC0 - 2 ; case 1
	.short _0223EE10 - _0223EDC0 - 2 ; case 2
	.short _0223EE16 - _0223EDC0 - 2 ; case 3
	.short _0223EE32 - _0223EDC0 - 2 ; case 4
	.short _0223EE32 - _0223EDC0 - 2 ; case 5
	.short _0223EE32 - _0223EDC0 - 2 ; case 6
	.short _0223EE32 - _0223EDC0 - 2 ; case 7
	.short _0223EE32 - _0223EDC0 - 2 ; case 8
	.short _0223EE32 - _0223EDC0 - 2 ; case 9
	.short _0223EE32 - _0223EDC0 - 2 ; case 10
	.short _0223EE32 - _0223EDC0 - 2 ; case 11
	.short _0223EE32 - _0223EDC0 - 2 ; case 12
	.short _0223EE0A - _0223EDC0 - 2 ; case 13
	.short _0223EE32 - _0223EDC0 - 2 ; case 14
	.short _0223EDEE - _0223EDC0 - 2 ; case 15
	.short _0223EDEE - _0223EDC0 - 2 ; case 16
	.short _0223EDEE - _0223EDC0 - 2 ; case 17
	.short _0223EDEE - _0223EDC0 - 2 ; case 18
	.short _0223EDEE - _0223EDC0 - 2 ; case 19
	.short _0223EDEE - _0223EDC0 - 2 ; case 20
	.short _0223EDEE - _0223EDC0 - 2 ; case 21
	.short _0223EDEE - _0223EDC0 - 2 ; case 22
_0223EDEE:
	mov r0, #0x47
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r0, _0223EE3C ; =0x000005FF
	bl sub_020057A4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov94_02244234
	mov r0, #0x14
	str r0, [r4, #0x2c]
	b _0223EE32
_0223EE0A:
	mov r0, #0x1d
	str r0, [r4, #0x2c]
	b _0223EE32
_0223EE10:
	bl sub_02038A0C
	b _0223EE32
_0223EE16:
	mov r0, #0x16
	str r0, [r4, #0x2c]
	b _0223EE32
_0223EE1C:
	ldr r0, _0223EE38 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223EE32
	bl sub_02038A0C
_0223EE32:
	mov r0, #3
	pop {r3, r4, r5, pc}
	nop
_0223EE38: .word 0x00001484
_0223EE3C: .word 0x000005FF
	thumb_func_end ov94_0223ED94

	thumb_func_start ov94_0223EE40
ov94_0223EE40: ; 0x0223EE40
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x47
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	ldr r1, _0223EE94 ; =0x00000F0F
	bne _0223EE70
	str r1, [sp]
	mov r1, #0xe
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _0223EE98 ; =0x000005F3
	bl sub_02005748
	b _0223EE8E
_0223EE70:
	str r1, [sp]
	mov r1, #0x1e
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x15
	bl ov94_0223C3F4
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
_0223EE8E:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223EE94: .word 0x00000F0F
_0223EE98: .word 0x000005F3
	thumb_func_end ov94_0223EE40

	thumb_func_start ov94_0223EE9C
ov94_0223EE9C: ; 0x0223EE9C
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x42
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	add r2, r2, #1
	str r2, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #0x2d
	ble _0223EED0
	ldr r1, _0223EED8 ; =0x00000F0F
	mov r2, #1
	str r1, [sp]
	mov r1, #0x20
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _0223EEDC ; =0x00001092
	mov r1, #1
	strh r1, [r4, r0]
_0223EED0:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223EED8: .word 0x00000F0F
_0223EEDC: .word 0x00001092
	thumb_func_end ov94_0223EE9C

	thumb_func_start ov94_0223EEE0
ov94_0223EEE0: ; 0x0223EEE0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223EF10 ; =0x00000B84
	add r4, r0, #0
	mov r3, #0
	strh r3, [r4, r1]
	ldr r1, _0223EF14 ; =0x00000F0F
	mov r2, #1
	str r1, [sp]
	mov r1, #0x26
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _0223EF18 ; =0x000005F3
	bl sub_02005748
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223EF10: .word 0x00000B84
_0223EF14: .word 0x00000F0F
_0223EF18: .word 0x000005F3
	thumb_func_end ov94_0223EEE0

	thumb_func_start ov94_0223EF1C
ov94_0223EF1C: ; 0x0223EF1C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223EF50 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x93
	mov r2, #4
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0x1e
	bl ov94_0223C3F4
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	ldr r0, _0223EF54 ; =0x000005F3
	bl sub_02005748
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223EF50: .word 0x00000F0F
_0223EF54: .word 0x000005F3
	thumb_func_end ov94_0223EF1C

	thumb_func_start ov94_0223EF58
ov94_0223EF58: ; 0x0223EF58
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223EF8C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x98
	mov r2, #4
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #2
	bl ov94_0223C3F4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	ldr r0, _0223EF90 ; =0x000005F3
	bl sub_02005748
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223EF8C: .word 0x00000F0F
_0223EF90: .word 0x000005F3
	thumb_func_end ov94_0223EF58

	thumb_func_start ov94_0223EF94
ov94_0223EF94: ; 0x0223EF94
	ldr r1, _0223EFA8 ; =0x00001084
	ldr r1, [r0, r1]
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _0223EFA2
	ldr r0, [r1, #0x28]
	bx lr
_0223EFA2:
	ldr r0, [r1, #0x2c]
	add r0, r0, #4
	bx lr
	; .align 2, 0
_0223EFA8: .word 0x00001084
	thumb_func_end ov94_0223EF94

	thumb_func_start ov94_0223EFAC
ov94_0223EFAC: ; 0x0223EFAC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0223F094 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0223EFEE
	ldr r0, _0223F098 ; =0x00001084
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _0223EFD8
	ldr r0, [r1, #0x28]
	cmp r0, #0
	ble _0223F064
	sub r0, r0, #1
	str r0, [r1, #0x28]
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
	b _0223F064
_0223EFD8:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _0223EFE4
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
_0223EFE4:
	ldr r0, _0223F098 ; =0x00001084
	mov r1, #0
	ldr r0, [r4, r0]
	str r1, [r0, #0x2c]
	b _0223F064
_0223EFEE:
	mov r1, #0x80
	tst r1, r0
	beq _0223F026
	ldr r0, _0223F098 ; =0x00001084
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _0223F010
	ldr r0, [r1, #0x28]
	cmp r0, #3
	bge _0223F064
	add r0, r0, #1
	str r0, [r1, #0x28]
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
	b _0223F064
_0223F010:
	ldr r0, [r1, #0x2c]
	cmp r0, #1
	beq _0223F01C
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
_0223F01C:
	ldr r0, _0223F098 ; =0x00001084
	mov r1, #1
	ldr r0, [r4, r0]
	str r1, [r0, #0x2c]
	b _0223F064
_0223F026:
	mov r1, #0x10
	tst r1, r0
	beq _0223F046
	ldr r0, _0223F098 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x24]
	cmp r0, #1
	beq _0223F03C
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
_0223F03C:
	ldr r0, _0223F098 ; =0x00001084
	mov r1, #1
	ldr r0, [r4, r0]
	str r1, [r0, #0x24]
	b _0223F064
_0223F046:
	mov r1, #0x20
	tst r0, r1
	beq _0223F064
	ldr r0, _0223F098 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0223F05C
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
_0223F05C:
	ldr r0, _0223F098 ; =0x00001084
	mov r1, #0
	ldr r0, [r4, r0]
	str r1, [r0, #0x24]
_0223F064:
	add r0, r4, #0
	bl ov94_0223EF94
	lsl r1, r0, #2
	ldr r0, _0223F0A0 ; =0x02246848
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	bl ov94_0223EF94
	lsl r1, r0, #2
	ldr r0, _0223F0A4 ; =0x0224684A
	ldrh r0, [r0, r1]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0223F094: .word 0x021BF67C
_0223F098: .word 0x00001084
_0223F09C: .word 0x000005DC
_0223F0A0: .word 0x02246848
_0223F0A4: .word 0x0224684A
	thumb_func_end ov94_0223EFAC

	thumb_func_start ov94_0223F0A8
ov94_0223F0A8: ; 0x0223F0A8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	mov r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov94_0223F0A8

	thumb_func_start ov94_0223F0D0
ov94_0223F0D0: ; 0x0223F0D0
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _0223F148 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #9
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #4
	bl ov94_0223C3F4
	mov r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xb6
	ldr r1, _0223F14C ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0xf
	bl sub_0201A7E8
	ldr r0, _0223F14C ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #5
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xea
	ldr r1, _0223F150 ; =0x00000F4C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r0, _0223F150 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0223F148: .word 0x00000F0F
_0223F14C: .word 0x00000F3C
_0223F150: .word 0x00000F4C
	thumb_func_end ov94_0223F0D0

	thumb_func_start ov94_0223F154
ov94_0223F154: ; 0x0223F154
	push {r4, lr}
	ldr r3, _0223F17C ; =0x00000B94
	add r4, r0, #0
	ldr r1, _0223F180 ; =0x0000106C
	ldr r2, _0223F184 ; =0x00000F3C
	ldr r3, [r4, r3]
	add r1, r4, r1
	add r2, r4, r2
	bl ov94_022426A8
	ldr r1, _0223F188 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _0223F18C ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223F17C: .word 0x00000B94
_0223F180: .word 0x0000106C
_0223F184: .word 0x00000F3C
_0223F188: .word 0x00001078
_0223F18C: .word 0x0000FFFF
	thumb_func_end ov94_0223F154

	thumb_func_start ov94_0223F190
ov94_0223F190: ; 0x0223F190
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223F240 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_02242A6C
	cmp r0, #9
	bhi _0223F1C6
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223F1B2: ; jump table
	.short _0223F23A - _0223F1B2 - 2 ; case 0
	.short _0223F1D0 - _0223F1B2 - 2 ; case 1
	.short _0223F1D0 - _0223F1B2 - 2 ; case 2
	.short _0223F1D0 - _0223F1B2 - 2 ; case 3
	.short _0223F1D0 - _0223F1B2 - 2 ; case 4
	.short _0223F1D0 - _0223F1B2 - 2 ; case 5
	.short _0223F1D0 - _0223F1B2 - 2 ; case 6
	.short _0223F1D0 - _0223F1B2 - 2 ; case 7
	.short _0223F1D0 - _0223F1B2 - 2 ; case 8
	.short _0223F1D0 - _0223F1B2 - 2 ; case 9
_0223F1C6:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223F1F4
	b _0223F23A
_0223F1D0:
	ldr r0, _0223F244 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #6
	ldr r0, [r4, r0]
	add r2, r2, #4
	bl sub_02001384
	ldr r0, _0223F248 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _0223F24C ; =0x000005DC
	bl sub_02005748
	mov r0, #6
	str r0, [r4, #0x2c]
	b _0223F23A
_0223F1F4:
	ldr r0, _0223F244 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #6
	ldr r0, [r4, r0]
	add r2, r2, #4
	bl sub_02001384
	ldr r0, _0223F248 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _0223F250 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _0223F254 ; =0x00000EFC
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	ldr r0, _0223F250 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223F258 ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223F24C ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #0x2c]
_0223F23A:
	mov r0, #3
	pop {r4, pc}
	nop
_0223F240: .word 0x00001078
_0223F244: .word 0x00001084
_0223F248: .word 0x0000106C
_0223F24C: .word 0x000005DC
_0223F250: .word 0x00000F3C
_0223F254: .word 0x00000EFC
_0223F258: .word 0x00000F4C
	thumb_func_end ov94_0223F190

	thumb_func_start ov94_0223F25C
ov94_0223F25C: ; 0x0223F25C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r3, _0223F29C ; =0x00000B98
	add r4, r0, #0
	ldr r1, [r4, r3]
	sub r3, r3, #4
	str r1, [sp]
	ldr r1, _0223F2A0 ; =0x00001084
	ldr r2, [r4, r1]
	sub r1, #0x18
	str r2, [sp, #4]
	ldr r2, [r4, #0]
	add r1, r4, r1
	ldr r2, [r2, #0x10]
	str r2, [sp, #8]
	ldr r2, _0223F2A4 ; =0x00000F4C
	ldr r3, [r4, r3]
	add r2, r4, r2
	bl ov94_022427C0
	ldr r1, _0223F2A8 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _0223F2AC ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #7
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0223F29C: .word 0x00000B98
_0223F2A0: .word 0x00001084
_0223F2A4: .word 0x00000F4C
_0223F2A8: .word 0x00001078
_0223F2AC: .word 0x0000FFFF
	thumb_func_end ov94_0223F25C

	thumb_func_start ov94_0223F2B0
ov94_0223F2B0: ; 0x0223F2B0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0223F3EC ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_02242A6C
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _0223F2D8
	add r0, r0, #1
	cmp r5, r0
	bne _0223F2D6
	b _0223F3E4
_0223F2D6:
	b _0223F31E
_0223F2D8:
	ldr r0, _0223F3F0 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r1, #0xa
	add r2, #8
	bl sub_02001384
	ldr r0, _0223F3F4 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _0223F3F8 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _0223F3FC ; =0x000005DC
	bl sub_02005748
	mov r0, #4
	str r0, [r4, #0x2c]
	ldr r0, _0223F3F0 ; =0x00001084
	ldr r3, [r4, r0]
	add r0, #0x38
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r0, r4, r0
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov94_02242AC4
	b _0223F3E4
_0223F31E:
	ldr r0, _0223F3F0 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r1, #0xa
	add r2, #8
	bl sub_02001384
	ldr r0, _0223F3F4 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _0223F400 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _0223F3F8 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _0223F400 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223F3F8 ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223F404 ; =0x00000B7E
	strh r5, [r4, r0]
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, _0223F3FC ; =0x000005DC
	bl sub_02005748
	ldr r0, _0223F408 ; =0x00000F7C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r3, #0
	ldr r0, _0223F40C ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _0223F410 ; =0x00000B98
	ldr r0, _0223F408 ; =0x00000F7C
	ldr r1, [r4, r1]
	add r0, r4, r0
	add r2, r5, #0
	bl ov94_02242158
	add r0, r5, #0
	mov r1, #0x12
	bl sub_020759F0
	ldr r1, _0223F3F0 ; =0x00001084
	ldr r2, [r4, r1]
	str r0, [r2, #0x20]
	ldr r3, [r4, r1]
	add r1, #0x38
	add r0, r4, r1
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov94_02242AC4
	ldr r1, _0223F3F0 ; =0x00001084
	ldr r0, _0223F404 ; =0x00000B7E
	ldr r1, [r4, r1]
	add r0, r4, r0
	ldr r1, [r1, #0x20]
	bl ov94_02241B80
	cmp r0, #0
	beq _0223F3E4
	ldr r0, _0223F414 ; =0x00000F9C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223F40C ; =0x00010200
	ldr r2, _0223F418 ; =0x00000B94
	str r0, [sp, #8]
	ldr r1, [r4, r2]
	sub r2, #0x14
	ldr r0, _0223F414 ; =0x00000F9C
	ldrsb r2, [r4, r2]
	add r0, r4, r0
	mov r3, #1
	bl ov94_02242204
_0223F3E4:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223F3EC: .word 0x00001078
_0223F3F0: .word 0x00001084
_0223F3F4: .word 0x0000106C
_0223F3F8: .word 0x00000F4C
_0223F3FC: .word 0x000005DC
_0223F400: .word 0x00000F3C
_0223F404: .word 0x00000B7E
_0223F408: .word 0x00000F7C
_0223F40C: .word 0x00010200
_0223F410: .word 0x00000B98
_0223F414: .word 0x00000F9C
_0223F418: .word 0x00000B94
	thumb_func_end ov94_0223F2B0

	thumb_func_start ov94_0223F41C
ov94_0223F41C: ; 0x0223F41C
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _0223F46C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #9
	bl ov94_0223C3F4
	mov r0, #0xa
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xb6
	ldr r1, _0223F470 ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r0, _0223F470 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223F46C: .word 0x00000F0F
_0223F470: .word 0x00000F3C
	thumb_func_end ov94_0223F41C

	thumb_func_start ov94_0223F474
ov94_0223F474: ; 0x0223F474
	push {r4, lr}
	ldr r2, _0223F49C ; =0x00000B94
	add r4, r0, #0
	ldr r0, _0223F4A0 ; =0x0000106C
	ldr r1, _0223F4A4 ; =0x00000F3C
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, r4, r1
	bl ov94_02242840
	ldr r1, _0223F4A8 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _0223F4AC ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #0xa
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223F49C: .word 0x00000B94
_0223F4A0: .word 0x0000106C
_0223F4A4: .word 0x00000F3C
_0223F4A8: .word 0x00001078
_0223F4AC: .word 0x0000FFFF
	thumb_func_end ov94_0223F474

	thumb_func_start ov94_0223F4B0
ov94_0223F4B0: ; 0x0223F4B0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223F580 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov94_02242A6C
	add r4, r0, #0
	cmp r4, #2
	bhi _0223F4D8
	cmp r4, #0
	beq _0223F51C
	cmp r4, #1
	beq _0223F51C
	cmp r4, #2
	beq _0223F51C
	b _0223F578
_0223F4D8:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _0223F578
	ldr r0, _0223F580 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F584 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F588 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F58C ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _0223F588 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F590 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r5, #0x2c]
	b _0223F578
_0223F51C:
	ldr r0, _0223F580 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F584 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F588 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F588 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F590 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x2e
	add r1, r4, #1
	lsl r0, r0, #6
	strb r1, [r5, r0]
	ldr r0, _0223F594 ; =0x00000F9C
	mov r1, #0
	add r0, r5, r0
	str r1, [r5, #0x2c]
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223F598 ; =0x00010200
	ldr r2, _0223F59C ; =0x00000B94
	str r0, [sp, #8]
	ldr r1, [r5, r2]
	sub r2, #0x14
	ldr r0, _0223F594 ; =0x00000F9C
	ldrsb r2, [r5, r2]
	add r0, r5, r0
	mov r3, #1
	bl ov94_02242204
_0223F578:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223F580: .word 0x00001078
_0223F584: .word 0x0000106C
_0223F588: .word 0x00000F3C
_0223F58C: .word 0x00000EFC
_0223F590: .word 0x000005DC
_0223F594: .word 0x00000F9C
_0223F598: .word 0x00010200
_0223F59C: .word 0x00000B94
	thumb_func_end ov94_0223F4B0

	thumb_func_start ov94_0223F5A0
ov94_0223F5A0: ; 0x0223F5A0
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _0223F5F0 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xb
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0xc
	bl ov94_0223C3F4
	mov r0, #5
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xb6
	ldr r1, _0223F5F4 ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0xf
	bl sub_0201A7E8
	ldr r0, _0223F5F4 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223F5F0: .word 0x00000F0F
_0223F5F4: .word 0x00000F3C
	thumb_func_end ov94_0223F5A0

	thumb_func_start ov94_0223F5F8
ov94_0223F5F8: ; 0x0223F5F8
	push {r4, lr}
	ldr r2, _0223F624 ; =0x00000B94
	add r4, r0, #0
	ldr r0, _0223F628 ; =0x0000106C
	ldr r1, _0223F62C ; =0x00000F3C
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, r4, r1
	mov r3, #1
	bl ov94_022428B0
	ldr r1, _0223F630 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _0223F634 ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #0xd
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_0223F624: .word 0x00000B94
_0223F628: .word 0x0000106C
_0223F62C: .word 0x00000F3C
_0223F630: .word 0x00001078
_0223F634: .word 0x0000FFFF
	thumb_func_end ov94_0223F5F8

	thumb_func_start ov94_0223F638
ov94_0223F638: ; 0x0223F638
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223F704 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov94_02242A6C
	add r4, r0, #0
	cmp r4, #0xb
	beq _0223F662
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0223F662
	add r0, r0, #1
	cmp r4, r0
	beq _0223F6FC
	b _0223F69E
_0223F662:
	ldr r0, _0223F704 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F708 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F70C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F710 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _0223F70C ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F714 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r5, #0x2c]
	b _0223F6FC
_0223F69E:
	ldr r0, _0223F704 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F708 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F70C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F70C ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F714 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0223F718 ; =0x00000B7E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov94_02242934
	ldr r0, _0223F71C ; =0x00000FBC
	mov r1, #0
	add r0, r5, r0
	str r1, [r5, #0x2c]
	bl sub_0201ADA4
	mov r3, #0
	ldr r0, _0223F720 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, _0223F724 ; =0x00000B94
	ldr r0, _0223F71C ; =0x00000FBC
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r2, r4, #0
	bl ov94_022422B8
_0223F6FC:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223F704: .word 0x00001078
_0223F708: .word 0x0000106C
_0223F70C: .word 0x00000F3C
_0223F710: .word 0x00000EFC
_0223F714: .word 0x000005DC
_0223F718: .word 0x00000B7E
_0223F71C: .word 0x00000FBC
_0223F720: .word 0x00010200
_0223F724: .word 0x00000B94
	thumb_func_end ov94_0223F638

	thumb_func_start ov94_0223F728
ov94_0223F728: ; 0x0223F728
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _0223F778 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xa9
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0xf
	bl ov94_0223C3F4
	mov r0, #5
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xb6
	ldr r1, _0223F77C ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _0223F77C ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223F778: .word 0x00000F0F
_0223F77C: .word 0x00000F3C
	thumb_func_end ov94_0223F728

	thumb_func_start ov94_0223F780
ov94_0223F780: ; 0x0223F780
	push {r4, lr}
	ldr r3, _0223F7AC ; =0x00000BA4
	add r4, r0, #0
	ldr r0, _0223F7B0 ; =0x0000106C
	ldr r1, _0223F7B4 ; =0x00000F3C
	ldr r2, [r4, r3]
	sub r3, #0x10
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r1, r4, r1
	bl ov94_022429B4
	ldr r1, _0223F7B8 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _0223F7BC ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #0x10
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223F7AC: .word 0x00000BA4
_0223F7B0: .word 0x0000106C
_0223F7B4: .word 0x00000F3C
_0223F7B8: .word 0x00001078
_0223F7BC: .word 0x0000FFFF
	thumb_func_end ov94_0223F780

	thumb_func_start ov94_0223F7C0
ov94_0223F7C0: ; 0x0223F7C0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223F890 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov94_02242A6C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0223F888
	sub r0, r0, #1
	cmp r4, r0
	beq _0223F7EE
	ldr r0, _0223F894 ; =0x02245FD4
	ldr r0, [r0, #0]
	add r0, r0, #1
	cmp r4, r0
	bne _0223F82A
_0223F7EE:
	ldr r0, _0223F890 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F898 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F89C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F8A0 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _0223F89C ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F8A4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r5, #0x2c]
	b _0223F888
_0223F82A:
	ldr r0, _0223F890 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F898 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F89C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F89C ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F8A4 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r1, r4, #0
	bl ov94_02242A44
	ldr r0, _0223F8A8 ; =0x0000105C
	mov r1, #0
	add r0, r5, r0
	str r1, [r5, #0x2c]
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223F8AC ; =0x00010200
	ldr r3, _0223F8A8 ; =0x0000105C
	str r0, [sp, #8]
	ldr r2, _0223F8B0 ; =0x00000BA4
	add r0, r5, r3
	ldr r1, [r5, r2]
	sub r2, #0x10
	add r3, #0xf4
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl ov94_0224218C
_0223F888:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223F890: .word 0x00001078
_0223F894: .word 0x02245FD4
_0223F898: .word 0x0000106C
_0223F89C: .word 0x00000F3C
_0223F8A0: .word 0x00000EFC
_0223F8A4: .word 0x000005DC
_0223F8A8: .word 0x0000105C
_0223F8AC: .word 0x00010200
_0223F8B0: .word 0x00000BA4
	thumb_func_end ov94_0223F7C0

	thumb_func_start ov94_0223F8B4
ov94_0223F8B4: ; 0x0223F8B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _0223F8D0 ; =0x00000186
	mov r1, #0xf
	bl ov94_0223C3C0
	ldr r1, _0223F8D4 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #0x1a
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_0223F8D0: .word 0x00000186
_0223F8D4: .word 0x00001070
	thumb_func_end ov94_0223F8B4

	thumb_func_start ov94_0223F8D8
ov94_0223F8D8: ; 0x0223F8D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223F91C ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223F916
	sub r1, r1, #1
	cmp r0, r1
	bne _0223F8FA
	mov r0, #0
	str r0, [r4, #0x2c]
	b _0223F916
_0223F8FA:
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	add r0, r4, #0
	bl ov94_022442E4
	mov r0, #0x47
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0223F916:
	mov r0, #3
	pop {r4, pc}
	nop
_0223F91C: .word 0x00001070
	thumb_func_end ov94_0223F8D8

	thumb_func_start ov94_0223F920
ov94_0223F920: ; 0x0223F920
	mov r1, #1
	str r1, [r0, #0x2c]
	mov r0, #3
	bx lr
	thumb_func_end ov94_0223F920

	thumb_func_start ov94_0223F928
ov94_0223F928: ; 0x0223F928
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223F94C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x92
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223F94C: .word 0x00000F0F
	thumb_func_end ov94_0223F928

	thumb_func_start ov94_0223F950
ov94_0223F950: ; 0x0223F950
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223F96C ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223F968
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223F968:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223F96C: .word 0x00000BE4
	thumb_func_end ov94_0223F950

	thumb_func_start ov94_0223F970
ov94_0223F970: ; 0x0223F970
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223F9A0 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223F99C
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x2d
	ble _0223F99C
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223F99C:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223F9A0: .word 0x00000BE4
	thumb_func_end ov94_0223F970

	thumb_func_start ov94_0223F9A4
ov94_0223F9A4: ; 0x0223F9A4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, _0223F9F0 ; =0x00000B94
	add r5, r0, #0
	ldr r0, [r5, r2]
	add r2, #0x1c
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r0, _0223F9F4 ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223F9F4 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0223F9F4 ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223F9F8 ; =0x00000BE4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223F9F0: .word 0x00000B94
_0223F9F4: .word 0x00000EFC
_0223F9F8: .word 0x00000BE4
	thumb_func_end ov94_0223F9A4

	thumb_func_start ov94_0223F9FC
ov94_0223F9FC: ; 0x0223F9FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r0, r4, #0
	mov r1, #0x3b
	bl sub_0200B1EC
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223FB04 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0x3d
	bl sub_0200B1EC
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223FB04 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x20
	add r1, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0x3f
	bl sub_0200B1EC
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223FB04 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x40
	add r1, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0xa5
	bl sub_0200B1EC
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223FB04 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0x41
	bl sub_0200B1EC
	add r6, r0, #0
	add r3, r5, #0
	add r3, #0x67
	ldrb r3, [r3]
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	lsl r3, r3, #3
	bl sub_02002EEC
	add r2, r0, #0
	mov r3, #0
	ldr r0, _0223FB08 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x60
	add r1, r6, #0
	bl ov94_02245900
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0x42
	bl sub_0200B1EC
	add r4, r0, #0
	add r3, r5, #0
	add r3, #0x77
	ldrb r3, [r3]
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	lsl r3, r3, #3
	bl sub_02002EEC
	add r2, r0, #0
	mov r3, #0
	ldr r0, _0223FB08 ; =0x00010200
	str r3, [sp]
	add r5, #0x70
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ov94_02245900
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FB04: .word 0x000F0200
_0223FB08: .word 0x00010200
	thumb_func_end ov94_0223F9FC

	thumb_func_start ov94_0223FB0C
ov94_0223FB0C: ; 0x0223FB0C
	push {r4, r5}
	mov r4, #0
	ldrsh r5, [r0, r4]
	ldrsh r4, [r1, r4]
	cmp r5, r4
	bne _0223FB40
	mov r4, #2
	ldrsb r5, [r0, r4]
	ldrsb r4, [r1, r4]
	cmp r5, r4
	bne _0223FB40
	mov r4, #3
	ldrsb r5, [r0, r4]
	ldrsb r4, [r1, r4]
	cmp r5, r4
	bne _0223FB40
	mov r4, #4
	ldrsb r5, [r0, r4]
	ldrsb r0, [r1, r4]
	cmp r5, r0
	bne _0223FB40
	cmp r2, r3
	bne _0223FB40
	mov r0, #1
	pop {r4, r5}
	bx lr
_0223FB40:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov94_0223FB0C

	thumb_func_start ov94_0223FB48
ov94_0223FB48: ; 0x0223FB48
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_022401E0
	ldr r0, [r4, #4]
	bl ov94_0223FC08
	add r0, r4, #0
	bl ov94_0223FD4C
	add r0, r4, #0
	bl ov94_02240028
	add r0, r4, #0
	bl ov94_0223FE24
	ldr r0, [r4, #0x20]
	cmp r0, #8
	bne _0223FB88
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	b _0223FB9E
_0223FB88:
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
_0223FB9E:
	mov r1, #0x45
	lsl r1, r1, #2
	ldrh r1, [r4, r1]
	add r0, r4, #0
	bl ov94_02240FA0
	add r0, r4, #0
	bl ov94_02245934
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov94_0223FB48

	thumb_func_start ov94_0223FBBC
ov94_0223FBBC: ; 0x0223FBBC
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223C4B4
	bl sub_020397B0
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0223FBD8 ; =0x022468DC
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0223FBD8: .word 0x022468DC
	thumb_func_end ov94_0223FBBC

	thumb_func_start ov94_0223FBDC
ov94_0223FBDC: ; 0x0223FBDC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02039794
	add r0, r4, #0
	bl ov94_0223FFC8
	add r0, r4, #0
	bl ov94_02240268
	add r0, r4, #0
	bl ov94_02240190
	ldr r0, [r4, #4]
	bl ov94_0223FD20
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_0223FBDC

	thumb_func_start ov94_0223FC08
ov94_0223FC08: ; 0x0223FC08
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0223FD08 ; =0x02245E24
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223FD0C ; =0x02245E9C
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
	ldr r5, _0223FD10 ; =0x02245EB8
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
	ldr r5, _0223FD14 ; =0x02245E80
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
	ldr r5, _0223FD18 ; =0x02245E48
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
	ldr r5, _0223FD1C ; =0x02245E64
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
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
_0223FD08: .word 0x02245E24
_0223FD0C: .word 0x02245E9C
_0223FD10: .word 0x02245EB8
_0223FD14: .word 0x02245E80
_0223FD18: .word 0x02245E48
_0223FD1C: .word 0x02245E64
	thumb_func_end ov94_0223FC08

	thumb_func_start ov94_0223FD20
ov94_0223FD20: ; 0x0223FD20
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
	thumb_func_end ov94_0223FD20

	thumb_func_start ov94_0223FD4C
ov94_0223FD4C: ; 0x0223FD4C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r5, [r6, #4]
	mov r0, #0x68
	mov r1, #0x3e
	bl sub_02006C24
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0x3e
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #2
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xc
	add r2, r5, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x18
	add r2, r5, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1d
	add r2, r5, #0
	mov r3, #2
	bl sub_0200710C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_0223FD4C

	thumb_func_start ov94_0223FE24
ov94_0223FE24: ; 0x0223FE24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r2, _0223FFA8 ; =0x00000D54
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	add r2, r5, r2
	mov r3, #1
	bl ov94_0223C300
	ldr r0, _0223FFAC ; =0x00000116
	ldrh r1, [r5, r0]
	lsl r2, r1, #2
	ldr r1, _0223FFB0 ; =0x02245ED4
	ldrh r1, [r1, r2]
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	ldrh r0, [r5, r0]
	lsl r1, r0, #2
	ldr r0, _0223FFB4 ; =0x02245ED6
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0x37
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #4
	bl sub_02021D6C
	ldr r0, _0223FFAC ; =0x00000116
	ldrh r0, [r5, r0]
	cmp r0, #0x1f
	beq _0223FE7E
	cmp r0, #5
	bhi _0223FE8C
_0223FE7E:
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021E80
	b _0223FE98
_0223FE8C:
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021E80
_0223FE98:
	ldr r6, _0223FFB0 ; =0x02245ED4
	mov r7, #0
	add r4, r5, #0
_0223FE9E:
	ldrh r0, [r6]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r6, #2]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x14
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl sub_02021AA0
	ldr r1, _0223FFB8 ; =0x00000DC8
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	add r1, r7, #6
	bl sub_02021D6C
	ldr r0, _0223FFB8 ; =0x00000DC8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021E80
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #0x1e
	blt _0223FE9E
	ldr r6, _0223FFB0 ; =0x02245ED4
	mov r7, #0
	add r4, r5, #0
_0223FEDC:
	ldrh r0, [r6]
	add r0, r0, #4
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r6, #2]
	add r0, r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0x39
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #0x28
	bl sub_02021D6C
	mov r0, #0x39
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021E80
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #0x1e
	blt _0223FEDC
	ldr r6, _0223FFB0 ; =0x02245ED4
	mov r7, #0
	add r4, r5, #0
_0223FF22:
	ldrh r0, [r6]
	add r0, #0xc
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r6, #2]
	add r0, r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl sub_02021AA0
	ldr r1, _0223FFBC ; =0x00000EB8
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #0x2a
	bl sub_02021D6C
	ldr r0, _0223FFBC ; =0x00000EB8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021E80
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #6
	blt _0223FF22
	ldr r4, _0223FFC0 ; =0x02245E1C
	ldr r7, _0223FFC4 ; =0x00000EF4
	mov r6, #0
_0223FF64:
	ldrh r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r4, #2]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	ldr r1, _0223FFC4 ; =0x00000EF4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _0223FFC4 ; =0x00000EF4
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r1, #0x26
	bl sub_02021D6C
	ldr r0, [r5, r7]
	mov r1, #1
	bl sub_02021E80
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #2
	blt _0223FF64
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FFA8: .word 0x00000D54
_0223FFAC: .word 0x00000116
_0223FFB0: .word 0x02245ED4
_0223FFB4: .word 0x02245ED6
_0223FFB8: .word 0x00000DC8
_0223FFBC: .word 0x00000EB8
_0223FFC0: .word 0x02245E1C
_0223FFC4: .word 0x00000EF4
	thumb_func_end ov94_0223FE24

	thumb_func_start ov94_0223FFC8
ov94_0223FFC8: ; 0x0223FFC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, _0224001C ; =0x00000EF4
	mov r6, #0
	add r4, r5, #0
_0223FFD2:
	ldr r0, [r4, r7]
	bl sub_02021BD4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _0223FFD2
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02021BD4
	mov r7, #0x39
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #6
_0223FFF2:
	ldr r0, _02240020 ; =0x00000DC8
	ldr r0, [r4, r0]
	bl sub_02021BD4
	ldr r0, [r4, r7]
	bl sub_02021BD4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x1e
	blt _0223FFF2
	ldr r6, _02240024 ; =0x00000EB8
	mov r4, #0
_0224000C:
	ldr r0, [r5, r6]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0224000C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224001C: .word 0x00000EF4
_02240020: .word 0x00000DC8
_02240024: .word 0x00000EB8
	thumb_func_end ov94_0223FFC8

	thumb_func_start ov94_02240028
ov94_02240028: ; 0x02240028
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #1
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _0224015C ; =0x00000F1C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _0224015C ; =0x00000F1C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r2, #0
	ldr r0, _02240160 ; =0x000F0E00
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, _02240164 ; =0x00000BB4
	ldr r0, _0224015C ; =0x00000F1C
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r3, #1
	bl ov94_02245900
	mov r1, #3
	str r1, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x60
	ldr r1, _02240168 ; =0x00000F2C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #5
	bl sub_0201A7E8
	ldr r0, _02240168 ; =0x00000F2C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	ldr r0, _02240168 ; =0x00000F2C
	add r0, r4, r0
	bl sub_0201A954
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	ldr r1, _0224016C ; =0x00000EFC
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	add r0, #0xfc
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _0224016C ; =0x00000EFC
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02240170 ; =0x0000013F
	ldr r1, _02240174 ; =0x0000103C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _02240174 ; =0x0000103C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #0x15
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _02240178 ; =0x00000165
	ldr r1, _0224017C ; =0x00000F4C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #1
	mov r3, #0x19
	bl sub_0201A7E8
	ldr r0, _0224017C ; =0x00000F4C
	mov r1, #6
	add r0, r4, r0
	bl sub_0201ADA4
	mov r3, #1
	ldr r0, _02240180 ; =0x00010306
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _02240184 ; =0x00000BAC
	ldr r0, _0224017C ; =0x00000F4C
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	bl ov94_02245900
	mov r1, #0xd
	str r1, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _02240188 ; =0x00000171
	ldr r1, _0224018C ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0224015C: .word 0x00000F1C
_02240160: .word 0x000F0E00
_02240164: .word 0x00000BB4
_02240168: .word 0x00000F2C
_0224016C: .word 0x00000EFC
_02240170: .word 0x0000013F
_02240174: .word 0x0000103C
_02240178: .word 0x00000165
_0224017C: .word 0x00000F4C
_02240180: .word 0x00010306
_02240184: .word 0x00000BAC
_02240188: .word 0x00000171
_0224018C: .word 0x00000F3C
	thumb_func_end ov94_02240028

	thumb_func_start ov94_02240190
ov94_02240190: ; 0x02240190
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022401C8 ; =0x0000103C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _022401CC ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _022401D0 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _022401D4 ; =0x00000EFC
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _022401D8 ; =0x00000F2C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _022401DC ; =0x00000F1C
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	nop
_022401C8: .word 0x0000103C
_022401CC: .word 0x00000F4C
_022401D0: .word 0x00000F3C
_022401D4: .word 0x00000EFC
_022401D8: .word 0x00000F2C
_022401DC: .word 0x00000F1C
	thumb_func_end ov94_02240190

	thumb_func_start ov94_022401E0
ov94_022401E0: ; 0x022401E0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x12
	mov r1, #0x3e
	bl sub_02023790
	ldr r1, _02240250 ; =0x00000BA8
	str r0, [r4, r1]
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, #0x24]
	cmp r0, #5
	bne _02240214
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x15
	bl sub_0200B1EC
	ldr r1, _02240254 ; =0x00000BB4
	str r0, [r4, r1]
	b _02240226
_02240214:
	cmp r0, #6
	bne _02240226
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x11
	bl sub_0200B1EC
	ldr r1, _02240254 ; =0x00000BB4
	str r0, [r4, r1]
_02240226:
	ldr r0, _02240258 ; =0x00000B94
	mov r1, #0x67
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	ldr r1, _0224025C ; =0x00000BAC
	str r0, [r4, r1]
	ldr r0, _02240260 ; =0x00000116
	ldrh r1, [r4, r0]
	cmp r1, #0x1e
	bne _02240240
	mov r1, #0
	strh r1, [r4, r0]
_02240240:
	mov r0, #0x3e
	mov r1, #0x78
	bl sub_02018144
	ldr r1, _02240264 ; =0x000010A8
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02240250: .word 0x00000BA8
_02240254: .word 0x00000BB4
_02240258: .word 0x00000B94
_0224025C: .word 0x00000BAC
_02240260: .word 0x00000116
_02240264: .word 0x000010A8
	thumb_func_end ov94_022401E0

	thumb_func_start ov94_02240268
ov94_02240268: ; 0x02240268
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240298 ; =0x000010A8
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, _0224029C ; =0x00000BA8
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _022402A0 ; =0x00000BAC
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _022402A4 ; =0x00000BB4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
_02240298: .word 0x000010A8
_0224029C: .word 0x00000BA8
_022402A0: .word 0x00000BAC
_022402A4: .word 0x00000BB4
	thumb_func_end ov94_02240268

	thumb_func_start ov94_022402A8
ov94_022402A8: ; 0x022402A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _022402B8
	mov r0, #1
	str r0, [r4, #0x2c]
_022402B8:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_022402A8

	thumb_func_start ov94_022402BC
ov94_022402BC: ; 0x022402BC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov94_022404F0
	ldr r0, [r5, #0x24]
	cmp r0, #5
	bne _022403CC
	ldr r0, _022404E0 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #2
	tst r0, r2
	beq _022402EC
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r5, #0x2c]
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_022402EC:
	mov r1, #1
	add r0, r2, #0
	tst r0, r1
	beq _02240336
	ldr r0, _022404E8 ; =0x00000116
	ldrh r0, [r5, r0]
	cmp r0, #0x1e
	bne _02240310
	add r0, r5, #0
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r5, #0x2c]
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_02240310:
	cmp r0, #0x1f
	beq _02240336
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022412F4
	cmp r0, #1
	beq _02240338
	cmp r0, #2
	beq _022403AE
_02240336:
	b _022404DA
_02240338:
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_0224121C
	cmp r0, #0
	beq _02240390
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	add r2, r0, #0
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, _022404EC ; =0x00000F0F
	mov r3, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x16
	mov r2, #1
	str r3, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #3
	mov r2, #7
	bl ov94_0223C3F4
	b _022404DA
_02240390:
	ldr r0, _022404EC ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1a
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _022404DA
_022403AE:
	ldr r0, _022404EC ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1b
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _022404DA
_022403CC:
	cmp r0, #6
	bne _02240432
	ldr r0, _022404E0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022403F0
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r5, #0x2c]
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_022403F0:
	mov r0, #1
	tst r0, r1
	beq _022404DA
	ldr r2, _022404E8 ; =0x00000116
	ldrh r3, [r5, r2]
	cmp r3, #0x1e
	bne _02240414
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r5, #0x2c]
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_02240414:
	cmp r3, #0x1f
	beq _022404DA
	ldr r1, [r5, #0]
	sub r2, r2, #2
	ldr r0, [r1, #8]
	ldrh r2, [r5, r2]
	ldr r1, [r1, #0xc]
	bl ov94_022412F4
	cmp r0, #0
	beq _022404D4
	cmp r0, #1
	beq _02240434
	cmp r0, #2
	beq _022404D4
_02240432:
	b _022404DA
_02240434:
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	mov r2, #0x12
	lsl r2, r2, #4
	mov r1, #0xd1
	ldr r3, [r5, r2]
	lsl r1, r1, #2
	add r2, r2, #4
	add r1, r5, r1
	mul r2, r3
	add r1, r1, r2
	add r4, r0, #0
	bl ov94_02241384
	cmp r0, #0
	beq _022404CC
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_0224121C
	cmp r0, #0
	beq _022404AE
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B5CC
	ldr r0, _022404EC ; =0x00000F0F
	mov r3, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #1
	str r3, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #3
	mov r2, #9
	bl ov94_0223C3F4
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_022404AE:
	ldr r0, _022404EC ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1a
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _022404DA
_022404CC:
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_022404D4:
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
_022404DA:
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022404E0: .word 0x021BF67C
_022404E4: .word 0x000005DC
_022404E8: .word 0x00000116
_022404EC: .word 0x00000F0F
	thumb_func_end ov94_022402BC

	thumb_func_start ov94_022404F0
ov94_022404F0: ; 0x022404F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _022405B4 ; =0x021BF67C
	mov r4, #0
	ldr r0, [r0, #0x48]
	mov r1, #0x40
	add r6, r4, #0
	tst r1, r0
	beq _02240506
	mov r6, #1
	b _02240522
_02240506:
	mov r1, #0x80
	tst r1, r0
	beq _02240510
	mov r6, #2
	b _02240522
_02240510:
	mov r1, #0x20
	tst r1, r0
	beq _0224051A
	mov r6, #3
	b _02240522
_0224051A:
	mov r1, #0x10
	tst r0, r1
	beq _02240522
	mov r6, #4
_02240522:
	cmp r6, #0
	beq _02240568
	ldr r0, _022405B8 ; =0x00000116
	ldr r1, _022405BC ; =0x02245F54
	ldrh r3, [r5, r0]
	sub r6, r6, #1
	lsl r2, r3, #2
	add r1, r1, r2
	ldrb r2, [r6, r1]
	cmp r2, r3
	beq _02240568
	cmp r2, #0x63
	beq _02240540
	cmp r2, #0x65
	bne _02240564
_02240540:
	mov r0, #0x45
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r1, #0x13
	sub r2, #0x64
	bl ov94_022405CC
	mov r1, #0x45
	lsl r1, r1, #2
	strh r0, [r5, r1]
	ldrh r1, [r5, r1]
	add r0, r5, #0
	bl ov94_02240FA0
	ldr r0, _022405C0 ; =0x000005DC
	bl sub_02005748
	b _02240568
_02240564:
	mov r4, #1
	strh r2, [r5, r0]
_02240568:
	cmp r4, #0
	beq _0224058A
	ldr r0, _022405C0 ; =0x000005DC
	bl sub_02005748
	ldr r0, _022405B8 ; =0x00000116
	ldr r1, _022405C4 ; =0x02245ED4
	ldrh r0, [r5, r0]
	ldr r2, _022405C8 ; =0x02245ED6
	lsl r3, r0, #2
	mov r0, #0x37
	lsl r0, r0, #6
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldr r0, [r5, r0]
	bl ov94_0223C3FC
_0224058A:
	ldr r0, _022405B8 ; =0x00000116
	ldrh r0, [r5, r0]
	cmp r0, #0x1f
	beq _02240596
	cmp r0, #5
	bhi _022405A4
_02240596:
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021E80
	pop {r4, r5, r6, pc}
_022405A4:
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021E80
	pop {r4, r5, r6, pc}
	nop
_022405B4: .word 0x021BF67C
_022405B8: .word 0x00000116
_022405BC: .word 0x02245F54
_022405C0: .word 0x000005DC
_022405C4: .word 0x02245ED4
_022405C8: .word 0x02245ED6
	thumb_func_end ov94_022404F0

	thumb_func_start ov94_022405CC
ov94_022405CC: ; 0x022405CC
	add r0, r0, r2
	bpl _022405D4
	sub r0, r1, #1
	bx lr
_022405D4:
	cmp r0, r1
	bne _022405DA
	mov r0, #0
_022405DA:
	bx lr
	thumb_func_end ov94_022405CC

	thumb_func_start ov94_022405DC
ov94_022405DC: ; 0x022405DC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	add r2, sp, #8
	strb r0, [r2, #8]
	mov r0, #1
	strb r0, [r2, #9]
	mov r0, #3
	strb r0, [r2, #0xa]
	ldrb r3, [r2, #0xb]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0x30
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0xc0
	bic r3, r1
	mov r1, #0x3e
	strb r3, [r2, #0xb]
	bl sub_02013A04
	ldr r1, _02240678 ; =0x0000106C
	mov r2, #0x5e
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _0224067C ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl sub_02013A4C
	ldr r0, _02240678 ; =0x0000106C
	ldr r1, _0224067C ; =0x00000B94
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x5f
	mov r3, #2
	bl sub_02013A4C
	ldr r0, _02240678 ; =0x0000106C
	ldr r1, _0224067C ; =0x00000B94
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x60
	mov r3, #3
	bl sub_02013A4C
	ldr r0, _02240678 ; =0x0000106C
	mov r1, #1
	ldr r0, [r4, r0]
	mov r2, #0x1f
	str r0, [sp, #8]
	ldr r0, _02240680 ; =0x00000F3C
	mov r3, #0xb
	add r0, r4, r0
	str r0, [sp, #0xc]
	bl sub_0200DC48
	mov r0, #0x3e
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #9
	add r3, r2, #0
	bl sub_02001B7C
	ldr r1, _02240684 ; =0x00001074
	str r0, [r4, r1]
	mov r0, #8
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02240678: .word 0x0000106C
_0224067C: .word 0x00000B94
_02240680: .word 0x00000F3C
_02240684: .word 0x00001074
	thumb_func_end ov94_022405DC

	thumb_func_start ov94_02240688
ov94_02240688: ; 0x02240688
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02240818 ; =0x00001074
	ldr r0, [r5, r0]
	bl sub_02001BE0
	cmp r0, #3
	bhi _022406AA
	cmp r0, #1
	blo _022406A8
	beq _022406B6
	cmp r0, #2
	beq _022406E2
	cmp r0, #3
	beq _022406B2
_022406A8:
	b _02240810
_022406AA:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _022406B4
_022406B2:
	b _022407E6
_022406B4:
	b _02240810
_022406B6:
	ldr r0, _02240818 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _0224081C ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240820 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #8
	mov r2, #5
	bl ov94_0223C4C0
	b _02240810
_022406E2:
	ldr r0, _02240818 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _0224081C ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240820 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	add r4, r0, #0
	bl ov94_0224123C
	cmp r0, #0
	beq _0224073A
	ldr r0, _02240824 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x25
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240810
_0224073A:
	add r0, r4, #0
	bl ov94_02241278
	cmp r0, #0
	beq _02240762
	ldr r0, _02240824 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xaa
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240810
_02240762:
	add r0, r4, #0
	bl ov94_022412C8
	cmp r0, #0
	beq _0224078A
	ldr r0, _02240824 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xab
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240810
_0224078A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r4, #0
	bl ov94_022411D0
	cmp r0, #0
	beq _022407B8
	ldr r1, _02240828 ; =0x00000116
	ldr r0, [r5, #0]
	ldrh r1, [r5, r1]
	ldr r0, [r0, #8]
	bl sub_0207A0FC
	mov r1, #0xa2
	add r2, r4, #0
	bl sub_02074470
	cmp r0, #0
	beq _022407B8
	mov r0, #0xe
	mov r4, #1
	str r0, [r5, #0x2c]
_022407B8:
	cmp r4, #0
	bne _02240810
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl ov94_0223C4C0
	b _02240810
_022407E6:
	ldr r0, _02240818 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _0224081C ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240820 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0224082C ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	mov r0, #1
	str r0, [r5, #0x2c]
_02240810:
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02240818: .word 0x00001074
_0224081C: .word 0x0000106C
_02240820: .word 0x00000F3C
_02240824: .word 0x00000F0F
_02240828: .word 0x00000116
_0224082C: .word 0x00000EFC
	thumb_func_end ov94_02240688

	thumb_func_start ov94_02240830
ov94_02240830: ; 0x02240830
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	add r2, sp, #8
	strb r0, [r2, #8]
	mov r0, #1
	strb r0, [r2, #9]
	mov r0, #3
	strb r0, [r2, #0xa]
	ldrb r3, [r2, #0xb]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0x30
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0xc0
	bic r3, r1
	mov r1, #0x3e
	strb r3, [r2, #0xb]
	bl sub_02013A04
	ldr r1, _022408D8 ; =0x0000106C
	mov r2, #0x54
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _022408DC ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl sub_02013A4C
	ldr r0, _022408D8 ; =0x0000106C
	ldr r1, _022408DC ; =0x00000B94
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x55
	mov r3, #2
	bl sub_02013A4C
	ldr r0, _022408D8 ; =0x0000106C
	ldr r1, _022408DC ; =0x00000B94
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x56
	mov r3, #3
	bl sub_02013A4C
	ldr r0, _022408D8 ; =0x0000106C
	mov r1, #0xf
	ldr r0, [r4, r0]
	str r0, [sp, #8]
	ldr r0, _022408E0 ; =0x00000F3C
	add r0, r4, r0
	str r0, [sp, #0xc]
	bl sub_0201ADA4
	ldr r0, _022408E0 ; =0x00000F3C
	mov r1, #1
	add r0, r4, r0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x3e
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #9
	add r3, r2, #0
	bl sub_02001B7C
	ldr r1, _022408E4 ; =0x00001074
	str r0, [r4, r1]
	mov r0, #0xa
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_022408D8: .word 0x0000106C
_022408DC: .word 0x00000B94
_022408E0: .word 0x00000F3C
_022408E4: .word 0x00001074
	thumb_func_end ov94_02240830

	thumb_func_start ov94_022408E8
ov94_022408E8: ; 0x022408E8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02240A54 ; =0x00001074
	ldr r0, [r5, r0]
	bl sub_02001BE0
	cmp r0, #3
	bhi _0224090A
	cmp r0, #1
	blo _02240908
	beq _02240916
	cmp r0, #2
	beq _02240942
	cmp r0, #3
	beq _02240912
_02240908:
	b _02240A4E
_0224090A:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _02240914
_02240912:
	b _02240A24
_02240914:
	b _02240A4E
_02240916:
	ldr r0, _02240A54 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _02240A58 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240A5C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #8
	mov r2, #6
	bl ov94_0223C4C0
	b _02240A4E
_02240942:
	ldr r0, _02240A54 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _02240A58 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240A5C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	add r4, r0, #0
	bl ov94_0224123C
	cmp r0, #0
	beq _0224099A
	ldr r0, _02240A60 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x25
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240A4E
_0224099A:
	add r0, r4, #0
	bl ov94_02241278
	cmp r0, #0
	beq _022409C2
	ldr r0, _02240A60 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xaa
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240A4E
_022409C2:
	add r0, r4, #0
	bl ov94_022412C8
	cmp r0, #0
	beq _022409EA
	ldr r0, _02240A60 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xab
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240A4E
_022409EA:
	mov r0, #0x45
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r4, #0
	bl ov94_022411D0
	cmp r0, #0
	beq _02240A18
	ldr r1, _02240A64 ; =0x00000116
	ldr r0, [r5, #0]
	ldrh r1, [r5, r1]
	ldr r0, [r0, #8]
	bl sub_0207A0FC
	mov r1, #0xa2
	add r2, r4, #0
	bl sub_02074470
	cmp r0, #0
	beq _02240A18
	mov r0, #0xb
	mov r4, #1
	str r0, [r5, #0x2c]
_02240A18:
	cmp r4, #0
	bne _02240A4E
	add r0, r5, #0
	bl ov94_02240BB0
	b _02240A4E
_02240A24:
	ldr r0, _02240A54 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _02240A58 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240A5C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _02240A68 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	mov r0, #1
	str r0, [r5, #0x2c]
_02240A4E:
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02240A54: .word 0x00001074
_02240A58: .word 0x0000106C
_02240A5C: .word 0x00000F3C
_02240A60: .word 0x00000F0F
_02240A64: .word 0x00000116
_02240A68: .word 0x00000EFC
	thumb_func_end ov94_022408E8

	thumb_func_start ov94_02240A6C
ov94_02240A6C: ; 0x02240A6C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02240A7C
	cmp r0, #8
	bne _02240A9C
_02240A7C:
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
	ldr r0, _02240AC0 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	b _02240AB4
_02240A9C:
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
_02240AB4:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02240AC0: .word 0x000010B0
	thumb_func_end ov94_02240A6C

	thumb_func_start ov94_02240AC4
ov94_02240AC4: ; 0x02240AC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02240AE0 ; =0x000001AD
	mov r1, #0xf
	bl ov94_0223C3C0
	ldr r1, _02240AE4 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #6
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_02240AE0: .word 0x000001AD
_02240AE4: .word 0x00001070
	thumb_func_end ov94_02240AC4

	thumb_func_start ov94_02240AE8
ov94_02240AE8: ; 0x02240AE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240B1C ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02240B18
	sub r1, r1, #1
	cmp r0, r1
	bne _02240B0A
	mov r0, #0
	str r0, [r4, #0x2c]
	b _02240B18
_02240B0A:
	mov r0, #2
	mov r1, #0
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
_02240B18:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02240B1C: .word 0x00001070
	thumb_func_end ov94_02240AE8

	thumb_func_start ov94_02240B20
ov94_02240B20: ; 0x02240B20
	push {r4, lr}
	sub sp, #8
	ldr r1, _02240B48 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r2, #1
	mov r1, #0x19
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xc
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	nop
_02240B48: .word 0x00000F0F
	thumb_func_end ov94_02240B20

	thumb_func_start ov94_02240B4C
ov94_02240B4C: ; 0x02240B4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02240B68 ; =0x000001AD
	mov r1, #0xd
	bl ov94_0223C3C0
	ldr r1, _02240B6C ; =0x00001070
	str r0, [r4, r1]
	mov r0, #0xd
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_02240B68: .word 0x000001AD
_02240B6C: .word 0x00001070
	thumb_func_end ov94_02240B4C

	thumb_func_start ov94_02240B70
ov94_02240B70: ; 0x02240B70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240BA8 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02240BA2
	sub r1, r1, #1
	cmp r0, r1
	bne _02240B9C
	ldr r0, _02240BAC ; =0x0000103C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	mov r0, #1
	str r0, [r4, #0x2c]
	b _02240BA2
_02240B9C:
	add r0, r4, #0
	bl ov94_02240BB0
_02240BA2:
	mov r0, #3
	pop {r4, pc}
	nop
_02240BA8: .word 0x00001070
_02240BAC: .word 0x0000103C
	thumb_func_end ov94_02240B70

	thumb_func_start ov94_02240BB0
ov94_02240BB0: ; 0x02240BB0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bl ov94_02241498
	cmp r0, #0
	beq _02240C08
	mov r0, #0x45
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	cmp r0, #0x12
	beq _02240C08
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	cmp r0, #6
	bne _02240C08
	ldr r0, _02240C50 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x1c
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_02240C08:
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r4, #0]
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _02240C54 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #7
	mov r2, #9
	bl ov94_0223C4C0
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	bl ov94_022413BC
	mov r0, #0x47
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02240C50: .word 0x00000F0F
_02240C54: .word 0x000010B0
	thumb_func_end ov94_02240BB0

	thumb_func_start ov94_02240C58
ov94_02240C58: ; 0x02240C58
	push {r4, lr}
	sub sp, #8
	ldr r1, _02240C80 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r2, #1
	mov r1, #0x19
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xf
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	nop
_02240C80: .word 0x00000F0F
	thumb_func_end ov94_02240C58

	thumb_func_start ov94_02240C84
ov94_02240C84: ; 0x02240C84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02240CA0 ; =0x000001AD
	mov r1, #0xd
	bl ov94_0223C3C0
	ldr r1, _02240CA4 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #0x10
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_02240CA0: .word 0x000001AD
_02240CA4: .word 0x00001070
	thumb_func_end ov94_02240C84

	thumb_func_start ov94_02240CA8
ov94_02240CA8: ; 0x02240CA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240D00 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02240CFC
	sub r1, r1, #1
	cmp r0, r1
	bne _02240CD4
	ldr r0, _02240D04 ; =0x0000103C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	mov r0, #1
	str r0, [r4, #0x2c]
	b _02240CFC
_02240CD4:
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r4, #0]
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl ov94_0223C4C0
_02240CFC:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02240D00: .word 0x00001070
_02240D04: .word 0x0000103C
	thumb_func_end ov94_02240CA8

	thumb_func_start ov94_02240D08
ov94_02240D08: ; 0x02240D08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240D24 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02240D20
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_02240D20:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02240D24: .word 0x00000BE4
	thumb_func_end ov94_02240D08

	thumb_func_start ov94_02240D28
ov94_02240D28: ; 0x02240D28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240D50 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02240D4A
	ldr r0, _02240D54 ; =0x0000103C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_02240D4A:
	mov r0, #3
	pop {r4, pc}
	nop
_02240D50: .word 0x00000BE4
_02240D54: .word 0x0000103C
	thumb_func_end ov94_02240D28

	thumb_func_start ov94_02240D58
ov94_02240D58: ; 0x02240D58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02240DC0 ; =0x00000B94
	add r6, r2, #0
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0xb9
	add r7, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x20
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200C388
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _02240D84
	ldr r0, _02240DC4 ; =0x00000EFC
	b _02240D86
_02240D84:
	ldr r0, _02240DC8 ; =0x0000103C
_02240D86:
	add r4, r5, r0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r6, [sp, #4]
	mov r2, #0xbb
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _02240DCC ; =0x00000BE4
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02240DC0: .word 0x00000B94
_02240DC4: .word 0x00000EFC
_02240DC8: .word 0x0000103C
_02240DCC: .word 0x00000BE4
	thumb_func_end ov94_02240D58

	thumb_func_start ov94_02240DD0
ov94_02240DD0: ; 0x02240DD0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r2, r3, #0
	bl sub_02006CB8
	add r4, r0, #0
	beq _02240DF2
	add r1, r5, #0
	bl sub_020A7164
	cmp r0, #0
	bne _02240DF2
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
_02240DF2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov94_02240DD0

	thumb_func_start ov94_02240DF8
ov94_02240DF8: ; 0x02240DF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	add r1, r6, #0
	add r2, r5, #0
	str r0, [sp]
	add r7, r3, #0
	ldr r4, [sp, #0x28]
	bl sub_02079D8C
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	add r2, sp, #8
	mov r3, #0x3e
	bl ov94_02240DD0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r4, #0
	mov r2, #2
	ldr r0, [r0, #0x14]
	add r1, #0xc
	lsl r2, r2, #8
	bl sub_020C4C14
	lsl r0, r7, #4
	add r0, #0xc
	lsl r0, r0, #5
	str r0, [r4, #0]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl sub_02079EDC
	add r0, r0, #3
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov94_02240DF8

	thumb_func_start ov94_02240E50
ov94_02240E50: ; 0x02240E50
	push {r4, lr}
	add r4, r1, #0
	bl sub_02075B40
	strb r0, [r4, #3]
	pop {r4, pc}
	thumb_func_end ov94_02240E50

	thumb_func_start ov94_02240E5C
ov94_02240E5C: ; 0x02240E5C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02240EA8 ; =0x000010B4
	mov r6, #2
	lsl r6, r6, #8
	add r7, r6, #0
	ldr r5, [r0, r1]
	str r0, [sp]
	mov r4, #0
	add r7, #0xc
_02240E6E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02240E92
	add r0, r5, #0
	add r0, #0xc
	add r1, r6, #0
	bl sub_020C2C54
	add r0, r5, #0
	ldr r1, [r5, #0]
	add r0, #0xc
	add r2, r6, #0
	bl sub_020C02BC
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	bl sub_02021E90
_02240E92:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #0x1e
	blt _02240E6E
	ldr r1, _02240EA8 ; =0x000010B4
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240EA8: .word 0x000010B4
	thumb_func_end ov94_02240E5C

	thumb_func_start ov94_02240EAC
ov94_02240EAC: ; 0x02240EAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r1, [sp, #0xc]
	add r7, r2, #0
	add r6, r3, #0
	ldr r4, [sp, #0x40]
	bl sub_02073D20
	add r0, r5, #0
	mov r1, #0xac
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	strh r0, [r6]
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #0x18]
	ldrh r0, [r6]
	mov r1, #0x6f
	mov r2, #0
	strh r0, [r4]
	add r0, r5, #0
	bl sub_02074570
	add r0, r0, #1
	strb r0, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02240F16
	mov r0, #0
	strb r0, [r4, #3]
_02240F16:
	add r0, r5, #0
	mov r1, #1
	bl sub_02073D48
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02240F84
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	ldr r2, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x38]
	str r0, [sp, #8]
	ldrh r0, [r6]
	bl ov94_02240DF8
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02240F78
	add r0, r7, #0
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	cmp r0, #0
	beq _02240F6C
	add r0, r7, #0
	mov r1, #0x29
	bl sub_02021D6C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02240F6C:
	add r0, r7, #0
	mov r1, #0x28
	bl sub_02021D6C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02240F78:
	add r0, r7, #0
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02240F84:
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl sub_02021CAC
	add r0, r7, #0
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [sp, #0x44]
	mov r1, #0
	str r1, [r0, #8]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov94_02240EAC

	thumb_func_start ov94_02240FA0
ov94_02240FA0: ; 0x02240FA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r5, r0, #0
	ldr r0, [r5, #0]
	str r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	ldr r1, _022411A4 ; =0x00003D68
	str r0, [sp, #0x20]
	mov r0, #3
	bl sub_02018184
	ldr r1, _022411A8 ; =0x000010B4
	str r0, [sp, #0x18]
	str r0, [r5, r1]
	mov r0, #0x13
	mov r1, #0x3e
	bl sub_02006C24
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	blt _02241060
	cmp r0, #0x12
	bge _02241060
	ldr r6, _022411AC ; =0x000010A8
	mov r4, #0
_02240FD4:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	bl sub_02079C9C
	ldr r2, [r5, r6]
	lsl r1, r4, #2
	add r1, r2, r1
	bl ov94_02240E50
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1e
	blo _02240FD4
	mov r4, #0
_02240FF4:
	ldr r0, _022411AC ; =0x000010A8
	lsl r6, r4, #2
	ldr r1, [r5, r0]
	mov r0, #0
	strh r0, [r1, r6]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	add r7, r5, r6
	bl sub_02079C9C
	ldr r1, [sp, #0x1c]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, _022411AC ; =0x000010A8
	add r2, r4, #0
	ldr r1, [r5, r1]
	add r3, sp, #0x2c
	add r1, r1, r6
	str r1, [sp, #8]
	mov r1, #0x83
	lsl r1, r1, #2
	mul r2, r1
	ldr r1, [sp, #0x18]
	lsl r6, r4, #1
	add r1, r1, r2
	str r1, [sp, #0xc]
	ldr r1, _022411B0 ; =0x00000DC8
	mov r2, #0x39
	lsl r2, r2, #6
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	add r3, r3, r6
	bl ov94_02240EAC
	cmp r4, #6
	bhs _02241048
	ldr r0, _022411B4 ; =0x00000EB8
	mov r1, #0
	ldr r0, [r7, r0]
	bl sub_02021CAC
_02241048:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1e
	blo _02240FF4
	ldr r2, _022411B8 ; =0x00000BA8
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	ldr r2, [r5, r2]
	bl sub_02079AF4
	b _0224114C
_02241060:
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	mov r4, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _022410F0
_02241070:
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_0207A0FC
	str r0, [sp, #0x24]
	bl sub_02076B10
	ldr r1, _022411AC ; =0x000010A8
	lsl r6, r4, #2
	ldr r1, [r5, r1]
	str r0, [sp, #0x28]
	add r1, r1, r6
	bl ov94_02240E50
	mov r2, #0x39
	ldr r0, [sp, #0x1c]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, _022411AC ; =0x000010A8
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r7, r5, r6
	add r0, r0, r6
	str r0, [sp, #8]
	mov r0, #0x83
	lsl r0, r0, #2
	mul r1, r0
	ldr r0, [sp, #0x18]
	lsl r2, r2, #6
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r1, _022411B0 ; =0x00000DC8
	ldr r0, [sp, #0x28]
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	lsl r6, r4, #1
	add r3, sp, #0x2c
	add r3, r3, r6
	bl ov94_02240EAC
	ldr r0, [sp, #0x24]
	mov r1, #0xa2
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	ldr r0, _022411B4 ; =0x00000EB8
	beq _022410DC
	ldr r0, [r7, r0]
	mov r1, #1
	bl sub_02021CAC
	b _022410E4
_022410DC:
	ldr r0, [r7, r0]
	mov r1, #0
	bl sub_02021CAC
_022410E4:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x14]
	cmp r4, r0
	blt _02241070
_022410F0:
	cmp r4, #0x1e
	bhs _0224113E
	mov r7, #0
_022410F6:
	ldr r0, _022411AC ; =0x000010A8
	lsl r1, r4, #2
	ldr r0, [r5, r0]
	add r6, r5, r1
	strh r7, [r0, r1]
	ldr r0, _022411B0 ; =0x00000DC8
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl sub_02021CAC
	mov r0, #0x39
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x83
	lsl r0, r0, #2
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r1, r0, r1
	mov r0, #0
	str r0, [r1, #8]
	cmp r4, #6
	bhs _02241134
	ldr r0, _022411B4 ; =0x00000EB8
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_02021CAC
_02241134:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1e
	blo _022410F6
_0224113E:
	ldr r2, _022411BC ; =0x00000B94
	mov r1, #0x59
	ldr r0, [r5, r2]
	add r2, #0x14
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_0224114C:
	ldr r0, [sp, #0x1c]
	bl sub_02006CA8
	ldr r0, _022411C0 ; =0x00000F2C
	mov r1, #0
	add r0, r5, r0
	bl sub_0201ADA4
	mov r0, #1
	str r0, [sp]
	ldr r0, _022411C4 ; =0x00010200
	ldr r1, _022411B8 ; =0x00000BA8
	str r0, [sp, #4]
	ldr r0, _022411C0 ; =0x00000F2C
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0
	mov r3, #5
	bl ov94_02245900
	ldr r0, [r5, #0x24]
	cmp r0, #6
	bne _0224119A
	mov r3, #0x12
	lsl r3, r3, #4
	mov r2, #0xd1
	ldr r4, [r5, r3]
	ldr r0, _022411AC ; =0x000010A8
	lsl r2, r2, #2
	add r3, r3, #4
	ldr r1, _022411B0 ; =0x00000DC8
	add r2, r5, r2
	mul r3, r4
	add r2, r2, r3
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x18]
	add r1, r5, r1
	bl ov94_02241464
_0224119A:
	ldr r1, _022411C8 ; =ov94_02240E5C
	ldr r0, _022411CC ; =0x000010B8
	str r1, [r5, r0]
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022411A4: .word 0x00003D68
_022411A8: .word 0x000010B4
_022411AC: .word 0x000010A8
_022411B0: .word 0x00000DC8
_022411B4: .word 0x00000EB8
_022411B8: .word 0x00000BA8
_022411BC: .word 0x00000B94
_022411C0: .word 0x00000F2C
_022411C4: .word 0x00010200
_022411C8: .word ov94_02240E5C
_022411CC: .word 0x000010B8
	thumb_func_end ov94_02240FA0

	thumb_func_start ov94_022411D0
ov94_022411D0: ; 0x022411D0
	cmp r0, #0x12
	bne _022411D8
	mov r0, #1
	bx lr
_022411D8:
	mov r0, #0
	bx lr
	thumb_func_end ov94_022411D0

	thumb_func_start ov94_022411DC
ov94_022411DC: ; 0x022411DC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r1, #0
	add r4, r3, #0
	bl ov94_022411D0
	cmp r0, #0
	beq _0224120E
	add r0, r5, #0
	bl sub_0207A0F8
	sub r0, r0, #1
	cmp r4, r0
	ble _02241200
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02241200:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A0FC
	bl sub_02076B10
	pop {r3, r4, r5, r6, r7, pc}
_0224120E:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02079C9C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov94_022411DC

	thumb_func_start ov94_0224121C
ov94_0224121C: ; 0x0224121C
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	bl ov94_022411D0
	cmp r0, #0
	beq _02241238
	add r0, r4, #0
	bl sub_0207A0F8
	cmp r0, #2
	bge _02241238
	mov r0, #0
	pop {r4, pc}
_02241238:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_0224121C

	thumb_func_start ov94_0224123C
ov94_0224123C: ; 0x0224123C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	bl sub_02073D20
	ldr r5, _02241274 ; =0x02245E34
	str r0, [sp]
	add r6, r4, #0
_0224124C:
	ldrh r1, [r5]
	add r0, r7, #0
	mov r2, #0
	bl sub_02074570
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, #2
	cmp r6, #0xa
	blt _0224124C
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02073D48
	cmp r4, #0
	beq _02241270
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02241270:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241274: .word 0x02245E34
	thumb_func_end ov94_0224123C

	thumb_func_start ov94_02241278
ov94_02241278: ; 0x02241278
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02073D48
	cmp r6, #0
	ble _022412BE
	ldr r1, _022412C4 ; =0x000001DF
	cmp r4, r1
	beq _022412BA
	add r0, r1, #0
	add r0, #8
	cmp r4, r0
	beq _022412BA
	add r1, #0xd
	cmp r4, r1
	bne _022412BE
_022412BA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022412BE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022412C4: .word 0x000001DF
	thumb_func_end ov94_02241278

	thumb_func_start ov94_022412C8
ov94_022412C8: ; 0x022412C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02073D48
	cmp r4, #0x70
	bne _022412EE
	mov r0, #1
	pop {r4, r5, r6, pc}
_022412EE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_022412C8

	thumb_func_start ov94_022412F4
ov94_022412F4: ; 0x022412F4
	push {r4, lr}
	bl ov94_022411DC
	add r4, r0, #0
	bne _02241302
	mov r0, #0
	pop {r4, pc}
_02241302:
	mov r1, #0xac
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02241312
	mov r0, #0
	pop {r4, pc}
_02241312:
	add r0, r4, #0
	mov r1, #0xad
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _02241324
	mov r0, #2
	pop {r4, pc}
_02241324:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_022412F4

	thumb_func_start ov94_02241328
ov94_02241328: ; 0x02241328
	push {r3, r4}
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldrsh r2, [r1, r4]
	cmp r3, r2
	beq _0224133A
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_0224133A:
	mov r2, #2
	ldrsb r3, [r1, r2]
	cmp r3, #3
	beq _0224134E
	ldrsb r2, [r0, r2]
	cmp r3, r2
	beq _0224134E
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_0224134E:
	mov r2, #3
	ldrsb r3, [r0, r2]
	cmp r3, #0
	bne _0224135C
	mov r0, #0
	pop {r3, r4}
	bx lr
_0224135C:
	ldrsb r0, [r1, r2]
	cmp r0, #0
	beq _0224136C
	cmp r0, r3
	ble _0224136C
	mov r0, #0
	pop {r3, r4}
	bx lr
_0224136C:
	mov r0, #4
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0224137E
	cmp r0, r3
	bge _0224137E
	mov r0, #0
	pop {r3, r4}
	bx lr
_0224137E:
	mov r0, #1
	pop {r3, r4}
	bx lr
	thumb_func_end ov94_02241328

	thumb_func_start ov94_02241384
ov94_02241384: ; 0x02241384
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	add r1, sp, #0
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074570
	add r1, r0, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	add r0, r5, #0
	bl sub_02075B40
	add r1, sp, #0
	strb r0, [r1, #3]
	add r0, sp, #0
	add r1, r4, #0
	bl ov94_02241328
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov94_02241384

	thumb_func_start ov94_022413BC
ov94_022413BC: ; 0x022413BC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x46
	add r5, r1, #0
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strh r0, [r1, #6]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074570
	add r1, r0, #1
	add r0, sp, #0
	strb r1, [r0, #8]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02075B40
	add r1, sp, #0
	strb r0, [r1, #9]
	add r0, r4, #0
	ldrh r2, [r1, #6]
	add r0, #0xec
	strh r2, [r0]
	add r0, r4, #0
	ldrh r1, [r1, #8]
	add r0, #0xee
	strh r1, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov94_022425A8
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r5, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bl sub_02076B10
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	add r1, sp, #0
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074570
	add r0, r0, #1
	add r1, sp, #0
	strb r0, [r1, #2]
	mov r0, #0
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	add r0, r4, #0
	ldrh r2, [r1]
	add r0, #0xf0
	strh r2, [r0]
	add r0, r4, #0
	ldrh r2, [r1, #2]
	add r0, #0xf2
	add r4, #0xf4
	strh r2, [r0]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov94_022413BC

	thumb_func_start ov94_02241464
ov94_02241464: ; 0x02241464
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	mov r6, #0
_0224146E:
	mov r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0
	beq _02241488
	add r0, r5, #0
	add r1, r7, #0
	bl ov94_02241328
	cmp r0, #0
	bne _02241488
	ldr r0, [r4, #4]
	add r0, r0, #3
	str r0, [r4, #4]
_02241488:
	mov r0, #0x83
	lsl r0, r0, #2
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, r0
	cmp r6, #0x1e
	blt _0224146E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov94_02241464

	thumb_func_start ov94_02241498
ov94_02241498: ; 0x02241498
	push {r3, lr}
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	cmp r0, #0
	beq _022414B2
	mov r0, #1
	pop {r3, pc}
_022414B2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov94_02241498

	thumb_func_start ov94_022414B8
ov94_022414B8: ; 0x022414B8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_022418B8
	ldr r0, [r4, #4]
	bl ov94_022415F8
	add r0, r4, #0
	bl ov94_0224170C
	add r0, r4, #0
	bl ov94_022417A0
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
	str r0, [sp]
	mov r0, #3
	ldr r2, _02241538 ; =0x00000B94
	str r0, [sp, #4]
	sub r0, r0, #4
	str r0, [sp, #8]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r3, _0224153C ; =0x00000F6C
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov94_022422D4
	ldr r1, _02241540 ; =0x00000B74
	mov r3, #0x46
	add r0, r4, r1
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x20
	add r1, #0x1c
	ldr r2, _02241544 ; =0x00000F9C
	lsl r3, r3, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	add r2, r4, r2
	bl ov94_022423FC
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02241538: .word 0x00000B94
_0224153C: .word 0x00000F6C
_02241540: .word 0x00000B74
_02241544: .word 0x00000F9C
	thumb_func_end ov94_022414B8

	thumb_func_start ov94_02241548
ov94_02241548: ; 0x02241548
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223C4B4
	bl sub_020397B0
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02241564 ; =0x0224695C
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_02241564: .word 0x0224695C
	thumb_func_end ov94_02241548

	thumb_func_start ov94_02241568
ov94_02241568: ; 0x02241568
	push {r4, lr}
	add r4, r0, #0
	bl sub_02039794
	add r0, r4, #0
	bl ov94_02241920
	add r0, r4, #0
	bl ov94_02241880
	ldr r0, [r4, #4]
	bl ov94_022416E0
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_02241568

	thumb_func_start ov94_0224158C
ov94_0224158C: ; 0x0224158C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _022415EC ; =0x00000B94
	add r4, r2, #0
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0xb9
	add r6, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x20
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	ldr r0, _022415F0 ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _022415F0 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _022415F0 ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _022415F4 ; =0x00000BE4
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022415EC: .word 0x00000B94
_022415F0: .word 0x00000EFC
_022415F4: .word 0x00000BE4
	thumb_func_end ov94_0224158C

	thumb_func_start ov94_022415F8
ov94_022415F8: ; 0x022415F8
	push {r4, r5, lr}
	sub sp, #0x8c
	ldr r5, _022416CC ; =0x0224601C
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x70
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
	ldr r5, _022416D0 ; =0x02246038
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
	ldr r5, _022416D4 ; =0x02246054
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
	ldr r5, _022416D8 ; =0x02246070
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
	ldr r5, _022416DC ; =0x02246000
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
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	add sp, #0x8c
	pop {r4, r5, pc}
	nop
_022416CC: .word 0x0224601C
_022416D0: .word 0x02246038
_022416D4: .word 0x02246054
_022416D8: .word 0x02246070
_022416DC: .word 0x02246000
	thumb_func_end ov94_022415F8

	thumb_func_start ov94_022416E0
ov94_022416E0: ; 0x022416E0
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
	thumb_func_end ov94_022416E0

	thumb_func_start ov94_0224170C
ov94_0224170C: ; 0x0224170C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5, #4]
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0x3e
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x68
	mov r1, #1
	add r3, r2, #0
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
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0x68
	mov r1, #0xb
	add r2, r4, #0
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0x68
	mov r1, #0x17
	add r2, r4, #0
	bl sub_02006E60
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov94_0224170C

	thumb_func_start ov94_022417A0
ov94_022417A0: ; 0x022417A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r3, #1
	add r7, r0, #0
	str r3, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _02241868 ; =0x00000F1C
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _02241868 ; =0x00000F1C
	mov r1, #0
	add r0, r7, r0
	bl sub_0201ADA4
	mov r2, #0
	ldr r0, _0224186C ; =0x000F0E00
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, _02241870 ; =0x00000BB4
	ldr r0, _02241868 ; =0x00000F1C
	ldr r1, [r7, r1]
	add r0, r7, r0
	mov r3, #1
	bl ov94_022458CC
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	ldr r1, _02241874 ; =0x00000EFC
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _02241874 ; =0x00000EFC
	mov r1, #0
	add r0, r7, r0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _02241878 ; =0x00000F6C
	ldr r4, _0224187C ; =0x02245FE8
	mov r6, #0x96
	add r5, r7, r0
_0224181C:
	ldrh r0, [r4, #2]
	add r1, r5, #0
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [r7, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A954
	ldr r0, [sp, #0x14]
	add r6, #0x16
	add r0, r0, #1
	add r4, r4, #4
	add r5, #0x10
	str r0, [sp, #0x14]
	cmp r0, #6
	blt _0224181C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241868: .word 0x00000F1C
_0224186C: .word 0x000F0E00
_02241870: .word 0x00000BB4
_02241874: .word 0x00000EFC
_02241878: .word 0x00000F6C
_0224187C: .word 0x02245FE8
	thumb_func_end ov94_022417A0

	thumb_func_start ov94_02241880
ov94_02241880: ; 0x02241880
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _022418AC ; =0x00000F6C
	mov r4, #0
	add r5, r6, r0
_0224188A:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _0224188A
	ldr r0, _022418B0 ; =0x00000EFC
	add r0, r6, r0
	bl sub_0201A8FC
	ldr r0, _022418B4 ; =0x00000F1C
	add r0, r6, r0
	bl sub_0201A8FC
	pop {r4, r5, r6, pc}
	nop
_022418AC: .word 0x00000F6C
_022418B0: .word 0x00000EFC
_022418B4: .word 0x00000F1C
	thumb_func_end ov94_02241880

	thumb_func_start ov94_022418B8
ov94_022418B8: ; 0x022418B8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x5a
	bl sub_0200B1EC
	ldr r1, _02241918 ; =0x00000BB4
	str r0, [r4, r1]
	mov r0, #0x3e
	mov r1, #0x30
	bl sub_02018144
	ldr r1, _0224191C ; =0x00001084
	mov r2, #0x30
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	bl sub_020C4BB8
	ldr r2, _0224191C ; =0x00001084
	mov r0, #0x3e
	ldr r2, [r4, r2]
	mov r1, #0
	add r2, #0x1c
	bl ov94_02242524
	ldr r1, _0224191C ; =0x00001084
	ldr r1, [r4, r1]
	str r0, [r1, #0x18]
	mov r0, #0x3e
	bl ov94_02242548
	ldr r1, _0224191C ; =0x00001084
	ldr r2, [r4, r1]
	add r1, #0x38
	str r0, [r2, #0x14]
	add r0, r4, r1
	bl ov94_02242AAC
	pop {r4, pc}
	; .align 2, 0
_02241918: .word 0x00000BB4
_0224191C: .word 0x00001084
	thumb_func_end ov94_022418B8

	thumb_func_start ov94_02241920
ov94_02241920: ; 0x02241920
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02241954 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x14]
	bl sub_020181C4
	ldr r0, _02241954 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x18]
	bl sub_020181C4
	ldr r0, _02241954 ; =0x00001084
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _02241958 ; =0x00000BB4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
_02241954: .word 0x00001084
_02241958: .word 0x00000BB4
	thumb_func_end ov94_02241920

	thumb_func_start ov94_0224195C
ov94_0224195C: ; 0x0224195C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _02241984
	ldr r0, _0224198C ; =0x00000F0F
	mov r1, #9
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov94_0224158C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #1
	bl ov94_0223C3F4
_02241984:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224198C: .word 0x00000F0F
	thumb_func_end ov94_0224195C

	thumb_func_start ov94_02241990
ov94_02241990: ; 0x02241990
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _02241A08 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #2
	tst r1, r2
	beq _022419AC
	mov r1, #5
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r4, #0x2c]
_022419AC:
	mov r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _02241A0C ; =0x0000011A
	ldr r1, _02241A10 ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0xf
	bl sub_0201A7E8
	ldr r0, _02241A10 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #5
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _02241A14 ; =0x0000014E
	ldr r1, _02241A18 ; =0x00000F4C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r0, _02241A18 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	str r0, [r4, #0x2c]
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02241A08: .word 0x021BF67C
_02241A0C: .word 0x0000011A
_02241A10: .word 0x00000F3C
_02241A14: .word 0x0000014E
_02241A18: .word 0x00000F4C
	thumb_func_end ov94_02241990

	thumb_func_start ov94_02241A1C
ov94_02241A1C: ; 0x02241A1C
	push {r4, lr}
	ldr r3, _02241A44 ; =0x00000B94
	add r4, r0, #0
	ldr r1, _02241A48 ; =0x0000106C
	ldr r2, _02241A4C ; =0x00000F3C
	ldr r3, [r4, r3]
	add r1, r4, r1
	add r2, r4, r2
	bl ov94_022426A8
	ldr r1, _02241A50 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _02241A54 ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #4
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02241A44: .word 0x00000B94
_02241A48: .word 0x0000106C
_02241A4C: .word 0x00000F3C
_02241A50: .word 0x00001078
_02241A54: .word 0x0000FFFF
	thumb_func_end ov94_02241A1C

	thumb_func_start ov94_02241A58
ov94_02241A58: ; 0x02241A58
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02241B10 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_02242A6C
	cmp r0, #9
	bhi _02241A8E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241A7A: ; jump table
	.short _02241B0C - _02241A7A - 2 ; case 0
	.short _02241A98 - _02241A7A - 2 ; case 1
	.short _02241A98 - _02241A7A - 2 ; case 2
	.short _02241A98 - _02241A7A - 2 ; case 3
	.short _02241A98 - _02241A7A - 2 ; case 4
	.short _02241A98 - _02241A7A - 2 ; case 5
	.short _02241A98 - _02241A7A - 2 ; case 6
	.short _02241A98 - _02241A7A - 2 ; case 7
	.short _02241A98 - _02241A7A - 2 ; case 8
	.short _02241A98 - _02241A7A - 2 ; case 9
_02241A8E:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _02241ABC
	b _02241B0C
_02241A98:
	ldr r0, _02241B14 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #6
	ldr r0, [r4, r0]
	add r2, r2, #4
	bl sub_02001384
	ldr r0, _02241B18 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #5
	str r0, [r4, #0x2c]
	ldr r0, _02241B1C ; =0x000005DC
	bl sub_02005748
	b _02241B0C
_02241ABC:
	ldr r0, _02241B14 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #6
	ldr r0, [r4, r0]
	add r2, r2, #4
	bl sub_02001384
	ldr r0, _02241B18 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _02241B20 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _02241B24 ; =0x00000EFC
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	ldr r0, _02241B20 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02241B28 ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	mov r1, #5
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _02241B1C ; =0x000005DC
	bl sub_02005748
_02241B0C:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02241B10: .word 0x00001078
_02241B14: .word 0x00001084
_02241B18: .word 0x0000106C
_02241B1C: .word 0x000005DC
_02241B20: .word 0x00000F3C
_02241B24: .word 0x00000EFC
_02241B28: .word 0x00000F4C
	thumb_func_end ov94_02241A58

	thumb_func_start ov94_02241B2C
ov94_02241B2C: ; 0x02241B2C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r3, _02241B6C ; =0x00000B98
	add r4, r0, #0
	ldr r1, [r4, r3]
	sub r3, r3, #4
	str r1, [sp]
	ldr r1, _02241B70 ; =0x00001084
	ldr r2, [r4, r1]
	sub r1, #0x18
	str r2, [sp, #4]
	ldr r2, [r4, #0]
	add r1, r4, r1
	ldr r2, [r2, #0x10]
	str r2, [sp, #8]
	ldr r2, _02241B74 ; =0x00000F4C
	ldr r3, [r4, r3]
	add r2, r4, r2
	bl ov94_022427C0
	ldr r1, _02241B78 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _02241B7C ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #6
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02241B6C: .word 0x00000B98
_02241B70: .word 0x00001084
_02241B74: .word 0x00000F4C
_02241B78: .word 0x00001078
_02241B7C: .word 0x0000FFFF
	thumb_func_end ov94_02241B2C

	thumb_func_start ov94_02241B80
ov94_02241B80: ; 0x02241B80
	cmp r1, #0
	beq _02241B8E
	cmp r1, #0xfe
	beq _02241B96
	cmp r1, #0xff
	beq _02241B9E
	b _02241BA6
_02241B8E:
	mov r1, #1
	strb r1, [r0, #2]
	add r0, r1, #0
	bx lr
_02241B96:
	mov r1, #2
	strb r1, [r0, #2]
	mov r0, #1
	bx lr
_02241B9E:
	mov r1, #3
	strb r1, [r0, #2]
	mov r0, #1
	bx lr
_02241BA6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov94_02241B80

	thumb_func_start ov94_02241BAC
ov94_02241BAC: ; 0x02241BAC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _02241CE4 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_02242A6C
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02241BD4
	add r0, r0, #1
	cmp r5, r0
	bne _02241BD2
	b _02241CDC
_02241BD2:
	b _02241C2A
_02241BD4:
	ldr r0, _02241CE8 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r1, #0xa
	add r2, #8
	bl sub_02001384
	ldr r0, _02241CEC ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _02241CF0 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _02241CF4 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02241CF0 ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, _02241CF8 ; =0x000005DC
	bl sub_02005748
	ldr r0, _02241CE8 ; =0x00001084
	ldr r3, [r4, r0]
	add r0, #0x38
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r0, r4, r0
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov94_02242AC4
	b _02241CDC
_02241C2A:
	ldr r0, _02241CE8 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r1, #0xa
	add r2, #8
	bl sub_02001384
	ldr r0, _02241CEC ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _02241CF4 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _02241CF0 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _02241CF4 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02241CF0 ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02241CFC ; =0x00000B78
	strh r5, [r4, r0]
	ldr r0, _02241CF8 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	mov r1, #0x12
	bl sub_020759F0
	ldr r1, _02241CE8 ; =0x00001084
	ldr r2, [r4, r1]
	str r0, [r2, #0x20]
	ldr r1, [r4, r1]
	ldr r0, _02241CFC ; =0x00000B78
	ldr r1, [r1, #0x20]
	add r0, r4, r0
	bl ov94_02241B80
	cmp r0, #0
	beq _02241C9A
	mov r0, #0xa
	str r0, [r4, #0x2c]
	ldr r0, _02241D00 ; =0x00000B7A
	ldrsb r1, [r4, r0]
	b _02241CA0
_02241C9A:
	mov r0, #7
	str r0, [r4, #0x2c]
	mov r1, #3
_02241CA0:
	ldr r2, _02241CFC ; =0x00000B78
	ldr r3, _02241D04 ; =0x00000F6C
	ldrsh r0, [r4, r2]
	add r3, r4, r3
	str r0, [sp]
	mov r0, #0
	str r1, [sp, #4]
	mvn r0, r0
	str r0, [sp, #8]
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0x1c
	add r1, #0x20
	add r2, #0x18
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl ov94_022422D4
	ldr r0, _02241CE8 ; =0x00001084
	ldr r3, [r4, r0]
	add r0, #0x38
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r0, r4, r0
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov94_02242AC4
_02241CDC:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02241CE4: .word 0x00001078
_02241CE8: .word 0x00001084
_02241CEC: .word 0x0000106C
_02241CF0: .word 0x00000F4C
_02241CF4: .word 0x00000F3C
_02241CF8: .word 0x000005DC
_02241CFC: .word 0x00000B78
_02241D00: .word 0x00000B7A
_02241D04: .word 0x00000F6C
	thumb_func_end ov94_02241BAC

	thumb_func_start ov94_02241D08
ov94_02241D08: ; 0x02241D08
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _02241D58 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl ov94_0224158C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #8
	bl ov94_0223C3F4
	mov r0, #0xa
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02241D5C ; =0x0000011A
	ldr r1, _02241D60 ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r0, _02241D60 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02241D58: .word 0x00000F0F
_02241D5C: .word 0x0000011A
_02241D60: .word 0x00000F3C
	thumb_func_end ov94_02241D08

	thumb_func_start ov94_02241D64
ov94_02241D64: ; 0x02241D64
	push {r4, lr}
	ldr r2, _02241D8C ; =0x00000B94
	add r4, r0, #0
	ldr r0, _02241D90 ; =0x0000106C
	ldr r1, _02241D94 ; =0x00000F3C
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, r4, r1
	bl ov94_02242840
	ldr r1, _02241D98 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _02241D9C ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #9
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02241D8C: .word 0x00000B94
_02241D90: .word 0x0000106C
_02241D94: .word 0x00000F3C
_02241D98: .word 0x00001078
_02241D9C: .word 0x0000FFFF
	thumb_func_end ov94_02241D64

	thumb_func_start ov94_02241DA0
ov94_02241DA0: ; 0x02241DA0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02241E70 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov94_02242A6C
	add r4, r0, #0
	cmp r4, #2
	bhi _02241DC8
	cmp r4, #0
	beq _02241E0C
	cmp r4, #1
	beq _02241E0C
	cmp r4, #2
	beq _02241E0C
	b _02241E68
_02241DC8:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _02241E68
	ldr r0, _02241E70 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _02241E74 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02241E78 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _02241E7C ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _02241E78 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _02241E80 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r5, #0x2c]
	b _02241E68
_02241E0C:
	ldr r0, _02241E70 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _02241E74 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02241E78 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _02241E78 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _02241E80 ; =0x000005DC
	bl sub_02005748
	ldr r3, _02241E84 ; =0x00000F6C
	ldr r2, _02241E88 ; =0x00000B7A
	add r0, r4, #1
	strb r0, [r5, r2]
	mov r1, #0xa
	str r1, [r5, #0x2c]
	sub r0, r2, #2
	ldrsh r0, [r5, r0]
	sub r1, #0xb
	add r3, r5, r3
	str r0, [sp]
	ldrsb r0, [r5, r2]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0x1a
	add r1, #0x1e
	add r2, #0x16
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl ov94_022422D4
_02241E68:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02241E70: .word 0x00001078
_02241E74: .word 0x0000106C
_02241E78: .word 0x00000F3C
_02241E7C: .word 0x00000EFC
_02241E80: .word 0x000005DC
_02241E84: .word 0x00000F6C
_02241E88: .word 0x00000B7A
	thumb_func_end ov94_02241DA0

	thumb_func_start ov94_02241E8C
ov94_02241E8C: ; 0x02241E8C
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _02241EDC ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xb
	mov r2, #1
	mov r3, #0
	bl ov94_0224158C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0xb
	bl ov94_0223C3F4
	mov r0, #5
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _02241EE0 ; =0x0000011A
	ldr r1, _02241EE4 ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0xf
	bl sub_0201A7E8
	ldr r0, _02241EE4 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02241EDC: .word 0x00000F0F
_02241EE0: .word 0x0000011A
_02241EE4: .word 0x00000F3C
	thumb_func_end ov94_02241E8C

	thumb_func_start ov94_02241EE8
ov94_02241EE8: ; 0x02241EE8
	push {r4, lr}
	ldr r2, _02241F14 ; =0x00000B94
	add r4, r0, #0
	ldr r0, _02241F18 ; =0x0000106C
	ldr r1, _02241F1C ; =0x00000F3C
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, r4, r1
	mov r3, #0
	bl ov94_022428B0
	ldr r1, _02241F20 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _02241F24 ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #0xc
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_02241F14: .word 0x00000B94
_02241F18: .word 0x0000106C
_02241F1C: .word 0x00000F3C
_02241F20: .word 0x00001078
_02241F24: .word 0x0000FFFF
	thumb_func_end ov94_02241EE8

	thumb_func_start ov94_02241F28
ov94_02241F28: ; 0x02241F28
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0224201C ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov94_02242A6C
	add r4, r0, #0
	cmp r4, #0xc
	beq _02241F52
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02241F52
	add r0, r0, #1
	cmp r4, r0
	beq _02242016
	b _02241FA6
_02241F52:
	ldr r0, _0224201C ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _02242020 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02242024 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _02242028 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _02242024 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0224202C ; =0x000005DC
	bl sub_02005748
	ldr r1, _02242030 ; =0x00001084
	ldr r0, _02242034 ; =0x00000B78
	ldr r1, [r5, r1]
	add r0, r5, r0
	ldr r1, [r1, #0x20]
	bl ov94_02241B80
	cmp r0, #0
	beq _02241FA0
	mov r0, #0
	str r0, [r5, #0x2c]
	b _02242016
_02241FA0:
	mov r0, #7
	str r0, [r5, #0x2c]
	b _02242016
_02241FA6:
	ldr r0, _0224202C ; =0x000005DC
	bl sub_02005748
	ldr r0, _0224201C ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _02242020 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02242024 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _02242024 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _02242034 ; =0x00000B78
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	bl ov94_02242934
	mov r0, #0xd
	ldr r1, _02242038 ; =0x00000B7B
	str r0, [r5, #0x2c]
	ldrsb r0, [r5, r1]
	add r1, r1, #1
	ldrsb r1, [r5, r1]
	mov r2, #0
	bl ov94_02242970
	ldr r2, _02242034 ; =0x00000B78
	ldr r3, _0224203C ; =0x00000F6C
	ldrsh r1, [r5, r2]
	add r3, r5, r3
	str r1, [sp]
	add r1, r2, #2
	ldrsb r1, [r5, r1]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0x1c
	add r1, #0x20
	add r2, #0x18
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl ov94_022422D4
_02242016:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224201C: .word 0x00001078
_02242020: .word 0x0000106C
_02242024: .word 0x00000F3C
_02242028: .word 0x00000EFC
_0224202C: .word 0x000005DC
_02242030: .word 0x00001084
_02242034: .word 0x00000B78
_02242038: .word 0x00000B7B
_0224203C: .word 0x00000F6C
	thumb_func_end ov94_02241F28

	thumb_func_start ov94_02242040
ov94_02242040: ; 0x02242040
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02242064 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x17
	mov r2, #1
	mov r3, #0
	bl ov94_0224158C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0xe
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02242064: .word 0x00000F0F
	thumb_func_end ov94_02242040

	thumb_func_start ov94_02242068
ov94_02242068: ; 0x02242068
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02242084 ; =0x000001EA
	mov r1, #0xf
	bl ov94_0223C3C0
	ldr r1, _02242088 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #0xf
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_02242084: .word 0x000001EA
_02242088: .word 0x00001070
	thumb_func_end ov94_02242068

	thumb_func_start ov94_0224208C
ov94_0224208C: ; 0x0224208C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022420DC ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022420D8
	sub r1, r1, #1
	cmp r0, r1
	bne _022420B8
	mov r1, #5
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r4, #0x2c]
	b _022420D8
_022420B8:
	mov r1, #7
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _022420E0 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	bl ov94_02242668
_022420D8:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_022420DC: .word 0x00001070
_022420E0: .word 0x000010B0
	thumb_func_end ov94_0224208C

	thumb_func_start ov94_022420E4
ov94_022420E4: ; 0x022420E4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02242110
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
	ldr r0, _02242134 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	b _02242128
_02242110:
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
_02242128:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02242134: .word 0x000010B0
	thumb_func_end ov94_022420E4

	thumb_func_start ov94_02242138
ov94_02242138: ; 0x02242138
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02242154 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02242150
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_02242150:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02242154: .word 0x00000BE4
	thumb_func_end ov94_02242138

	thumb_func_start ov94_02242158
ov94_02242158: ; 0x02242158
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r3, #0
	cmp r2, #0
	beq _02242186
	add r0, r1, #0
	add r1, r2, #0
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov94_02245900
	add r0, r4, #0
	bl sub_020237BC
_02242186:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_02242158

	thumb_func_start ov94_0224218C
ov94_0224218C: ; 0x0224218C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	cmp r3, #0
	beq _022421BE
	add r0, r1, #0
	add r1, r3, #0
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov94_02245900
	add r0, r5, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, pc}
_022421BE:
	add r0, r2, #0
	mov r1, #0xa7
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov94_02245900
	add r0, r5, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov94_0224218C

	thumb_func_start ov94_022421E8
ov94_022421E8: ; 0x022421E8
	cmp r0, #1
	bne _022421F2
	ldr r0, _02242200 ; =0x02246920
	ldr r0, [r0, #0]
	bx lr
_022421F2:
	cmp r0, #2
	bne _022421FA
	ldr r0, _02242200 ; =0x02246920
	ldr r1, [r0, #4]
_022421FA:
	add r0, r1, #0
	bx lr
	nop
_02242200: .word 0x02246920
	thumb_func_end ov94_022421E8

	thumb_func_start ov94_02242204
ov94_02242204: ; 0x02242204
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r2, #0
	cmp r3, #0
	bne _02242214
	cmp r5, #3
	beq _02242264
_02242214:
	add r0, r1, #0
	ldr r1, _02242268 ; =0x02245FD8
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #3
	ble _02242244
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov94_022421E8
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	bl ov94_02245900
	b _0224225E
_02242244:
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov94_022421E8
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov94_02245900
_0224225E:
	add r0, r4, #0
	bl sub_020237BC
_02242264:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02242268: .word 0x02245FD8
	thumb_func_end ov94_02242204

	thumb_func_start ov94_0224226C
ov94_0224226C: ; 0x0224226C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	add r5, r3, #0
	cmp r2, r0
	beq _022422AC
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02242286
	ldr r3, _022422B0 ; =0x0224610C
	b _02242288
_02242286:
	ldr r3, _022422B4 ; =0x022460AC
_02242288:
	add r0, r1, #0
	lsl r1, r2, #3
	ldr r1, [r3, r1]
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	bl ov94_02245900
	add r0, r4, #0
	bl sub_020237BC
_022422AC:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022422B0: .word 0x0224610C
_022422B4: .word 0x022460AC
	thumb_func_end ov94_0224226C

	thumb_func_start ov94_022422B8
ov94_022422B8: ; 0x022422B8
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x18]
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x20]
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	bl ov94_0224226C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov94_022422B8

	thumb_func_start ov94_022422D4
ov94_022422D4: ; 0x022422D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	mov r1, #0x61
	str r0, [sp, #0xc]
	add r6, r3, #0
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, _02242364 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r5, r6, #0
	mov r4, #1
	add r5, #0x10
	mov r7, #0
_02242300:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0201ADA4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _02242300
	mov r3, #0
	ldr r0, _02242364 ; =0x000F0200
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	add r0, #0x10
	bl ov94_02242158
	ldr r2, [sp, #0x34]
	sub r0, r2, #1
	cmp r0, #1
	bhi _02242342
	mov r3, #0
	str r3, [sp]
	mov r0, #0x46
	str r0, [sp, #4]
	ldr r0, _02242364 ; =0x000F0200
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x10
	bl ov94_02242204
_02242342:
	mov r1, #0
	ldr r0, _02242364 ; =0x000F0200
	str r1, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r6, #0x20
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	mov r3, #2
	bl ov94_022422B8
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242364: .word 0x000F0200
	thumb_func_end ov94_022422D4

	thumb_func_start ov94_02242368
ov94_02242368: ; 0x02242368
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	mov r1, #0x61
	str r0, [sp, #0xc]
	add r6, r3, #0
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, _022423F8 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r5, r6, #0
	mov r4, #1
	add r5, #0x10
	mov r7, #0
_02242394:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0201ADA4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _02242394
	mov r3, #0
	ldr r0, _022423F8 ; =0x000F0200
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	add r0, #0x10
	bl ov94_02242158
	ldr r2, [sp, #0x34]
	sub r0, r2, #1
	cmp r0, #1
	bhi _022423D6
	mov r3, #0
	str r3, [sp]
	mov r0, #0x46
	str r0, [sp, #4]
	ldr r0, _022423F8 ; =0x000F0200
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x10
	bl ov94_02242204
_022423D6:
	mov r1, #0
	ldr r0, _022423F8 ; =0x000F0200
	str r1, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r6, #0x20
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	mov r3, #2
	bl ov94_022422B8
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022423F8: .word 0x000F0200
	thumb_func_end ov94_02242368

	thumb_func_start ov94_022423FC
ov94_022423FC: ; 0x022423FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x3e
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r7, [sp, #0x38]
	bl sub_02023790
	str r0, [sp, #0x18]
	mov r0, #0xb
	mov r1, #0x3e
	bl sub_02023790
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	mov r1, #0x77
	bl sub_02074570
	ldr r0, [sp, #0xc]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074570
	add r6, r0, #1
	ldr r0, [sp, #0xc]
	bl sub_02075B40
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x64
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	mov r1, #3
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x66
	mov r3, #0x3e
	bl sub_0200B29C
	str r0, [sp, #0x1c]
	cmp r6, #3
	beq _0224247A
	ldr r1, _02242518 ; =0x02245FD8
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl sub_0200B1B8
_0224247A:
	ldr r5, [sp, #8]
	mov r4, #0
_0224247E:
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _0224247E
	mov r2, #0
	ldr r0, _0224251C ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0224251C ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	add r0, #0x10
	add r3, r2, #0
	bl ov94_02245900
	mov r0, #2
	str r0, [sp]
	ldr r0, _0224251C ; =0x000F0200
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	add r0, #0x20
	add r3, r2, #0
	bl ov94_02245900
	cmp r6, #3
	beq _022424EA
	sub r0, r6, #1
	mov r3, #0
	lsl r1, r0, #2
	ldr r0, _02242520 ; =0x02246920
	str r3, [sp]
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r2, #0x46
	add r0, #0x10
	str r0, [sp, #8]
	bl ov94_02245900
_022424EA:
	ldr r0, [sp, #0xc]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	strh r0, [r7]
	ldr r0, [sp, #0x10]
	strb r6, [r7, #2]
	strb r0, [r7, #3]
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02242518: .word 0x02245FD8
_0224251C: .word 0x000F0200
_02242520: .word 0x02246920
	thumb_func_end ov94_022423FC

	thumb_func_start ov94_02242524
ov94_02242524: ; 0x02242524
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #0
	add r3, r0, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0x4b
	mov r1, #0xd
	bl sub_02007068
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02242524

	thumb_func_start ov94_02242548
ov94_02242548: ; 0x02242548
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _022425A0 ; =0x000001EE
	add r5, r0, #0
	mov r0, #0x3e
	bl sub_02018144
	add r4, r0, #0
	ldr r2, _022425A0 ; =0x000001EE
	mov r0, #0
	add r1, r4, #0
	bl sub_020C4BB8
	mov r2, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0x4b
	mov r1, #0xc
	add r3, r5, #0
	bl sub_02007068
	add r7, r0, #0
	ldr r0, [sp, #8]
	ldr r5, _022425A4 ; =0x00000000
	lsr r3, r0, #1
	beq _02242594
	ldr r0, _022425A0 ; =0x000001EE
	add r6, r7, #0
	mov r1, #1
_02242584:
	ldrh r2, [r6]
	cmp r2, r0
	bhs _0224258C
	strb r1, [r4, r2]
_0224258C:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, r3
	blo _02242584
_02242594:
	add r0, r7, #0
	bl sub_020181C4
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022425A0: .word 0x000001EE
_022425A4: .word 0x00000000
	thumb_func_end ov94_02242548

	thumb_func_start ov94_022425A8
ov94_022425A8: ; 0x022425A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x45
	add r4, r1, #0
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	bl ov94_022411D0
	cmp r0, #0
	beq _022425DC
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02077ACC
	bl sub_02073C70
	add r2, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_020C4C14
	b _022425F4
_022425DC:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02077ADC
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_020774C8
_022425F4:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025EF0
	add r1, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r2, #8
	bl sub_020021D0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F24
	mov r1, #0x47
	lsl r1, r1, #2
	strh r0, [r5, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x18]
	bl sub_0202C8C0
	ldr r1, _0224265C ; =0x0000011E
	strb r0, [r5, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x18]
	bl sub_0202C8C4
	ldr r1, _02242660 ; =0x0000011F
	strb r0, [r5, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F8C
	mov r1, #0x12
	lsl r1, r1, #4
	strb r0, [r5, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F30
	add r1, r5, #0
	add r1, #0xf6
	strb r0, [r1]
	ldr r0, _02242664 ; =0x00000122
	mov r1, #0xc
	strb r1, [r5, r0]
	mov r1, #2
	add r0, r0, #1
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_0224265C: .word 0x0000011E
_02242660: .word 0x0000011F
_02242664: .word 0x00000122
	thumb_func_end ov94_022425A8

	thumb_func_start ov94_02242668
ov94_02242668: ; 0x02242668
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov94_022425A8
	ldr r0, _022426A4 ; =0x00000B74
	add r1, r5, #0
	ldrh r2, [r4, r0]
	add r1, #0xec
	strh r2, [r1]
	add r1, r0, #2
	ldrh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xee
	strh r2, [r1]
	add r1, r0, #4
	ldrh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xf0
	strh r2, [r1]
	add r1, r0, #6
	ldrh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xf2
	strh r2, [r1]
	add r0, #8
	ldrh r0, [r4, r0]
	add r5, #0xf4
	strh r0, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022426A4: .word 0x00000B74
	thumb_func_end ov94_02242668

	thumb_func_start ov94_022426A8
ov94_022426A8: ; 0x022426A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #9
	mov r1, #0x3e
	str r2, [sp]
	add r6, r3, #0
	bl sub_02013A04
	str r0, [r5, #0]
	mov r4, #0
_022426C0:
	add r2, r4, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, #0x68
	add r3, r4, #1
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, #9
	blt _022426C0
	ldr r3, _02242710 ; =0x0224608C
	add r2, sp, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r2, #0x1f
	mov r3, #0xb
	str r0, [sp, #0x10]
	bl sub_0200DC48
	ldr r0, _02242714 ; =0x00001084
	mov r3, #0x3e
	ldr r2, [r7, r0]
	add r0, sp, #4
	ldrh r1, [r2, #6]
	ldrh r2, [r2, #4]
	bl sub_0200112C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02242710: .word 0x0224608C
_02242714: .word 0x00001084
	thumb_func_end ov94_022426A8

	thumb_func_start ov94_02242718
ov94_02242718: ; 0x02242718
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp, #8]
	str r1, [sp, #4]
	ldr r2, [sp, #0x38]
	str r0, [sp]
	ldr r1, _022427BC ; =0x02246928
	lsl r0, r2, #1
	ldrh r0, [r1, r0]
	mov r7, #0
	str r3, [sp, #0xc]
	str r0, [sp, #0x14]
	add r0, r2, #1
	lsl r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [sp, #0x14]
	ldr r6, [sp, #0x3c]
	sub r4, r1, r0
	str r7, [sp, #0x18]
	cmp r4, #0
	ble _02242762
	lsl r1, r0, #1
	add r0, r3, #0
	add r5, r0, r1
_02242748:
	ldrh r1, [r5]
	add r0, r6, #0
	bl sub_02026FE8
	cmp r0, #0
	beq _02242756
	add r7, r7, #1
_02242756:
	ldr r0, [sp, #0x18]
	add r5, r5, #2
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r4
	blt _02242748
_02242762:
	add r0, r7, #1
	mov r1, #0x3e
	bl sub_02013A04
	ldr r1, [sp]
	str r0, [r1, #0]
	mov r0, #0
	str r0, [sp, #0x10]
	cmp r4, #0
	ble _022427A4
	ldr r0, [sp, #0x14]
	lsl r1, r0, #1
	ldr r0, [sp, #0xc]
	add r5, r0, r1
_0224277E:
	ldrh r1, [r5]
	add r0, r6, #0
	bl sub_02026FE8
	cmp r0, #0
	beq _02242798
	ldrh r2, [r5]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	add r3, r2, #0
	bl sub_02013A4C
_02242798:
	ldr r0, [sp, #0x10]
	add r5, r5, #2
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r4
	blt _0224277E
_022427A4:
	ldr r0, [sp]
	mov r2, #0x79
	add r3, r2, #0
	ldr r0, [r0, #0]
	ldr r1, [sp, #8]
	sub r3, #0x7b
	bl sub_02013A4C
	add r0, r7, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022427BC: .word 0x02246928
	thumb_func_end ov94_02242718

	thumb_func_start ov94_022427C0
ov94_022427C0: ; 0x022427C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r5, [sp, #0x54]
	add r7, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0xf
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_0201ADA4
	ldrh r1, [r5, #6]
	ldrh r0, [r5, #4]
	ldr r2, [sp, #0x14]
	add r4, r1, r0
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x50]
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [r5, #0x18]
	add r0, r6, #0
	bl ov94_02242718
	ldr r3, _0224283C ; =0x0224608C
	add r5, r0, #0
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #0x18
	strh r5, [r0, #0x10]
	ldr r0, [r6, #0]
	mov r1, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	mov r2, #0x1f
	mov r3, #0xb
	str r0, [sp, #0x24]
	bl sub_0200DC48
	lsl r1, r4, #1
	mov r2, #0x43
	add r3, r7, r1
	lsl r2, r2, #6
	ldrh r1, [r3, r2]
	add r2, #0x12
	ldrh r2, [r3, r2]
	add r0, sp, #0x18
	mov r3, #0x3e
	bl sub_0200112C
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224283C: .word 0x0224608C
	thumb_func_end ov94_022427C0

	thumb_func_start ov94_02242840
ov94_02242840: ; 0x02242840
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	str r1, [sp]
	mov r0, #4
	mov r1, #0x3e
	add r7, r2, #0
	bl sub_02013A04
	ldr r5, _022428A8 ; =0x0224693C
	str r0, [r6, #0]
	mov r4, #0
_02242858:
	ldr r0, [r6, #0]
	ldr r2, [r5, #0]
	ldr r3, [r5, #4]
	add r1, r7, #0
	bl sub_02013A4C
	add r4, r4, #1
	add r5, #8
	cmp r4, #4
	blt _02242858
	ldr r3, _022428AC ; =0x0224608C
	add r2, sp, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #4
	add r0, sp, #4
	strh r1, [r0, #0x10]
	ldr r0, [r6, #0]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r2, #0x1f
	mov r3, #0xb
	str r0, [sp, #0x10]
	bl sub_0200DC48
	mov r1, #0
	add r0, sp, #4
	add r2, r1, #0
	mov r3, #0x3e
	bl sub_0200112C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022428A8: .word 0x0224693C
_022428AC: .word 0x0224608C
	thumb_func_end ov94_02242840

	thumb_func_start ov94_022428B0
ov94_022428B0: ; 0x022428B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r3, #0
	bne _022428C4
	ldr r5, _02242928 ; =0x0224610C
	mov r6, #0xd
	b _022428C8
_022428C4:
	ldr r5, _0224292C ; =0x022460AC
	mov r6, #0xc
_022428C8:
	add r0, r6, #0
	mov r1, #0x3e
	bl sub_02013A04
	mov r4, #0
	str r0, [r7, #0]
	cmp r6, #0
	ble _022428EC
_022428D8:
	ldr r0, [r7, #0]
	ldr r1, [sp, #4]
	ldr r2, [r5, #0]
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	add r5, #8
	cmp r4, r6
	blt _022428D8
_022428EC:
	ldr r3, _02242930 ; =0x0224608C
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #8
	strh r6, [r0, #0x10]
	ldr r0, [r7, #0]
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r2, #0x1f
	mov r3, #0xb
	str r0, [sp, #0x14]
	bl sub_0200DC48
	mov r1, #0
	add r0, sp, #8
	add r2, r1, #0
	mov r3, #0x3e
	bl sub_0200112C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242928: .word 0x0224610C
_0224292C: .word 0x022460AC
_02242930: .word 0x0224608C
	thumb_func_end ov94_022428B0

	thumb_func_start ov94_02242934
ov94_02242934: ; 0x02242934
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0
	bne _0224294A
	ldr r6, _02242968 ; =0x0224610C
	cmp r4, #0xc
	blt _02242954
	bl sub_02022974
	b _02242954
_0224294A:
	ldr r6, _0224296C ; =0x022460AC
	cmp r4, #0xb
	blo _02242954
	bl sub_02022974
_02242954:
	lsl r0, r4, #3
	add r1, r6, r0
	mov r0, #4
	ldrsh r0, [r1, r0]
	strb r0, [r5, #3]
	mov r0, #6
	ldrsh r0, [r1, r0]
	strb r0, [r5, #4]
	pop {r4, r5, r6, pc}
	nop
_02242968: .word 0x0224610C
_0224296C: .word 0x022460AC
	thumb_func_end ov94_02242934

	thumb_func_start ov94_02242970
ov94_02242970: ; 0x02242970
	push {r4, r5, r6, r7}
	cmp r2, #0
	bne _0224297C
	ldr r4, _022429AC ; =0x0224610C
	mov r3, #0xd
	b _02242980
_0224297C:
	ldr r4, _022429B0 ; =0x022460AC
	mov r3, #0xc
_02242980:
	mov r2, #0
	cmp r3, #0
	ble _022429A4
	mov r5, #6
	mov r6, #4
_0224298A:
	ldrsh r7, [r4, r6]
	cmp r0, r7
	bne _0224299C
	ldrsh r7, [r4, r5]
	cmp r1, r7
	bne _0224299C
	add r0, r2, #0
	pop {r4, r5, r6, r7}
	bx lr
_0224299C:
	add r2, r2, #1
	add r4, #8
	cmp r2, r3
	blt _0224298A
_022429A4:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	nop
_022429AC: .word 0x0224610C
_022429B0: .word 0x022460AC
	thumb_func_end ov94_02242970

	thumb_func_start ov94_022429B4
ov94_022429B4: ; 0x022429B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	str r1, [sp]
	str r3, [sp, #4]
	mov r0, #0x84
	mov r1, #0x3e
	add r7, r2, #0
	bl sub_02013A04
	ldr r1, [sp, #4]
	mov r2, #0xa7
	mov r3, #0
	str r0, [r5, #0]
	bl sub_02013A4C
	mov r0, #0x84
	mov r4, #1
	sub r6, r0, #1
	b _022429F0
_022429DC:
	sub r2, r4, #1
	lsl r3, r2, #1
	ldr r2, _02242A3C ; =0x02246174
	ldr r0, [r5, #0]
	ldrh r2, [r2, r3]
	add r1, r7, #0
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
_022429F0:
	cmp r4, r6
	blt _022429DC
	ldr r0, [r5, #0]
	ldr r1, [sp, #4]
	mov r2, #0xa8
	add r3, r6, #0
	bl sub_02013A4C
	ldr r3, _02242A40 ; =0x0224608C
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, sp, #8
	mov r0, #0x84
	strh r0, [r1, #0x10]
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r2, #0x1f
	mov r3, #0xb
	str r0, [sp, #0x14]
	bl sub_0200DC48
	mov r1, #0
	add r0, sp, #8
	add r2, r1, #0
	mov r3, #0x3e
	bl sub_0200112C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242A3C: .word 0x02246174
_02242A40: .word 0x0224608C
	thumb_func_end ov94_022429B4

	thumb_func_start ov94_02242A44
ov94_02242A44: ; 0x02242A44
	cmp r1, #0
	bne _02242A50
	ldr r1, _02242A64 ; =0x00001150
	mov r2, #0
	str r2, [r0, r1]
	bx lr
_02242A50:
	sub r1, r1, #1
	cmp r1, #0x82
	bhs _02242A60
	lsl r2, r1, #1
	ldr r1, _02242A68 ; =0x02246174
	ldrh r2, [r1, r2]
	ldr r1, _02242A64 ; =0x00001150
	str r2, [r0, r1]
_02242A60:
	bx lr
	nop
_02242A64: .word 0x00001150
_02242A68: .word 0x02246174
	thumb_func_end ov94_02242A44

	thumb_func_start ov94_02242A6C
ov94_02242A6C: ; 0x02242A6C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02001288
	add r6, r0, #0
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020014D0
	add r0, sp, #0
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	beq _02242A9E
	ldr r0, _02242AA4 ; =0x0000FFFF
	cmp r1, r0
	beq _02242A98
	ldr r0, _02242AA8 ; =0x000005DC
	bl sub_02005748
_02242A98:
	add r0, sp, #0
	ldrh r0, [r0]
	strh r0, [r4]
_02242A9E:
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02242AA4: .word 0x0000FFFF
_02242AA8: .word 0x000005DC
	thumb_func_end ov94_02242A6C

	thumb_func_start ov94_02242AAC
ov94_02242AAC: ; 0x02242AAC
	mov r2, #0
	add r3, r0, #0
	add r1, r2, #0
_02242AB2:
	strh r1, [r3, #4]
	strh r1, [r3, #0x16]
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #9
	blt _02242AB2
	strh r1, [r0]
	strh r1, [r0, #2]
	bx lr
	thumb_func_end ov94_02242AAC

	thumb_func_start ov94_02242AC4
ov94_02242AC4: ; 0x02242AC4
	lsl r1, r1, #1
	add r0, r0, r1
	strh r2, [r0, #4]
	strh r3, [r0, #0x16]
	bx lr
	; .align 2, 0
	thumb_func_end ov94_02242AC4

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
	bl sub_02022974
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
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x3c
	blo _022439BC
	bl sub_02022974
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

	thumb_func_start ov94_02243EF8
ov94_02243EF8: ; 0x02243EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r4, r1, #0
	bl ov94_0224432C
	ldr r2, _02243F94 ; =0x00000D78
	add r0, sp, #0
	add r1, r5, #0
	add r2, r5, r2
	mov r3, #2
	bl ov94_0223C300
	mov r0, #2
	str r0, [sp, #0x28]
	lsl r0, r0, #0x12
	str r0, [sp, #8]
	ldr r0, _02243F98 ; =0x00182000
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	ldr r1, _02243F9C ; =0x00000ED4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _02243F9C ; =0x00000ED4
	mov r1, #7
	mul r1, r4
	ldr r0, [r5, r0]
	add r1, r1, #3
	bl sub_02021D6C
	ldr r0, _02243F9C ; =0x00000ED4
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r4, _02243FA0 ; =0x02246322
	mov r7, #0
	mov r6, #0xe
_02243F4E:
	add r0, sp, #0
	bl sub_02021AA0
	ldr r1, _02243FA4 ; =0x00000ED8
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _02243FA4 ; =0x00000ED8
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _02243FA4 ; =0x00000ED8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _02243FA4 ; =0x00000ED8
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	ldr r0, [r5, r0]
	bl ov94_022441A0
	add r7, r7, #1
	add r5, r5, #4
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #7
	blt _02243F4E
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243F94: .word 0x00000D78
_02243F98: .word 0x00182000
_02243F9C: .word 0x00000ED4
_02243FA0: .word 0x02246322
_02243FA4: .word 0x00000ED8
	thumb_func_end ov94_02243EF8

	thumb_func_start ov94_02243FA8
ov94_02243FA8: ; 0x02243FA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov94_02243EF8
	ldr r0, _02243FE4 ; =ov94_0224400C
	mov r1, #0x10
	mov r2, #5
	mov r3, #0x3e
	bl sub_0200679C
	ldr r1, _02243FE8 ; =0x0000108C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl sub_0201CED0
	mov r1, #0
	add r2, r1, #0
	str r1, [r0, #0]
	sub r2, #0x28
	str r2, [r0, #4]
	str r4, [r0, #8]
	str r5, [r0, #0xc]
	bl ov94_02243FF0
	ldr r0, _02243FEC ; =0x0000062F
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_02243FE4: .word ov94_0224400C
_02243FE8: .word 0x0000108C
_02243FEC: .word 0x0000062F
	thumb_func_end ov94_02243FA8

	thumb_func_start ov94_02243FF0
ov94_02243FF0: ; 0x02243FF0
	add r3, r0, #0
	ldr r2, [r3, #0xc]
	ldr r0, _02244004 ; =0x00000ED4
	ldr r3, [r3, #8]
	ldr r0, [r2, r0]
	mov r2, #7
	mul r2, r3
	ldr r3, _02244008 ; =sub_02021D6C
	add r1, r1, r2
	bx r3
	; .align 2, 0
_02244004: .word 0x00000ED4
_02244008: .word sub_02021D6C
	thumb_func_end ov94_02243FF0

	thumb_func_start ov94_0224400C
ov94_0224400C: ; 0x0224400C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r0, #3
	bhi _022440A8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244026: ; jump table
	.short _0224402E - _02244026 - 2 ; case 0
	.short _02244054 - _02244026 - 2 ; case 1
	.short _0224406E - _02244026 - 2 ; case 2
	.short _02244094 - _02244026 - 2 ; case 3
_0224402E:
	ldr r0, [r4, #4]
	cmp r0, #0xa0
	ble _02244042
	mov r0, #0xa0
	str r0, [r4, #4]
	mov r1, #1
	add r0, r4, #0
	str r1, [r4, #0]
	bl ov94_02243FF0
_02244042:
	ldr r0, [r4, #4]
	mov r1, #0x80
	add r2, r0, #5
	ldr r0, _022440AC ; =0x00000ED4
	str r2, [r4, #4]
	ldr r0, [r5, r0]
	bl ov94_022441A0
	pop {r4, r5, r6, pc}
_02244054:
	ldr r0, _022440AC ; =0x00000ED4
	ldr r0, [r5, r0]
	bl sub_02021FD0
	cmp r0, #0
	bne _022440A8
	add r0, r4, #0
	mov r1, #2
	bl ov94_02243FF0
	mov r0, #2
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0224406E:
	ldr r0, [r4, #4]
	cmp r0, #0x82
	bge _02244082
	mov r0, #0x82
	str r0, [r4, #4]
	mov r1, #3
	add r0, r4, #0
	str r1, [r4, #0]
	bl ov94_02243FF0
_02244082:
	ldr r0, [r4, #4]
	mov r1, #0x80
	sub r2, r0, #2
	ldr r0, _022440AC ; =0x00000ED4
	str r2, [r4, #4]
	ldr r0, [r5, r0]
	bl ov94_022441A0
	pop {r4, r5, r6, pc}
_02244094:
	ldr r0, _022440B0 ; =0x0000060D
	bl sub_02005748
	ldr r1, [r4, #0xc]
	ldr r0, _022440B4 ; =0x00001090
	mov r2, #1
	strh r2, [r1, r0]
	add r0, r6, #0
	bl sub_020067D0
_022440A8:
	pop {r4, r5, r6, pc}
	nop
_022440AC: .word 0x00000ED4
_022440B0: .word 0x0000060D
_022440B4: .word 0x00001090
	thumb_func_end ov94_0224400C

	thumb_func_start ov94_022440B8
ov94_022440B8: ; 0x022440B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _022440F0 ; =ov94_022440FC
	mov r1, #0x10
	mov r2, #5
	mov r3, #0x3e
	bl sub_0200679C
	ldr r1, _022440F4 ; =0x0000108C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl sub_0201CED0
	mov r1, #0
	str r1, [r0, #0]
	mov r1, #0x82
	str r1, [r0, #4]
	str r4, [r0, #8]
	mov r1, #5
	str r5, [r0, #0xc]
	bl ov94_02243FF0
	ldr r0, _022440F8 ; =0x0000060E
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_022440F0: .word ov94_022440FC
_022440F4: .word 0x0000108C
_022440F8: .word 0x0000060E
	thumb_func_end ov94_022440B8

	thumb_func_start ov94_022440FC
ov94_022440FC: ; 0x022440FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r1, #3
	bhi _02244196
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02244114: ; jump table
	.short _0224411C - _02244114 - 2 ; case 0
	.short _02244144 - _02244114 - 2 ; case 1
	.short _02244166 - _02244114 - 2 ; case 2
	.short _0224418C - _02244114 - 2 ; case 3
_0224411C:
	ldr r0, [r4, #4]
	cmp r0, #0xa0
	ble _02244132
	mov r0, #0xa0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0]
	add r0, r4, #0
	mov r1, #6
	bl ov94_02243FF0
_02244132:
	ldr r0, [r4, #4]
	mov r1, #0x80
	add r2, r0, #2
	ldr r0, _02244198 ; =0x00000ED4
	str r2, [r4, #4]
	ldr r0, [r5, r0]
	bl ov94_022441A0
	pop {r3, r4, r5, pc}
_02244144:
	ldr r0, _02244198 ; =0x00000ED4
	ldr r0, [r5, r0]
	bl sub_02021FD0
	cmp r0, #0
	bne _02244196
	add r0, r4, #0
	mov r1, #0
	bl ov94_02243FF0
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #0x63
	lsl r0, r0, #4
	bl sub_02005748
	pop {r3, r4, r5, pc}
_02244166:
	mov r0, #0x13
	ldr r1, [r4, #4]
	mvn r0, r0
	cmp r1, r0
	bge _0224417A
	mov r1, #3
	add r0, r4, #0
	str r1, [r4, #0]
	bl ov94_02243FF0
_0224417A:
	ldr r0, [r4, #4]
	mov r1, #0x80
	sub r2, r0, #5
	ldr r0, _02244198 ; =0x00000ED4
	str r2, [r4, #4]
	ldr r0, [r5, r0]
	bl ov94_022441A0
	pop {r3, r4, r5, pc}
_0224418C:
	ldr r1, _0224419C ; =0x00001090
	mov r2, #1
	strh r2, [r5, r1]
	bl sub_020067D0
_02244196:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244198: .word 0x00000ED4
_0224419C: .word 0x00001090
	thumb_func_end ov94_022440FC

	thumb_func_start ov94_022441A0
ov94_022441A0: ; 0x022441A0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0
	ble _022441BE
	lsl r0, r1, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022441CC
_022441BE:
	lsl r0, r1, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022441CC:
	bl sub_020E1740
	sub r5, #8
	str r0, [sp]
	cmp r5, #0
	ble _022441EA
	lsl r0, r5, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022441F8
_022441EA:
	lsl r0, r5, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022441F8:
	bl sub_020E1740
	mov r1, #1
	lsl r1, r1, #0x14
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov94_022441A0

	thumb_func_start ov94_02244214
ov94_02244214: ; 0x02244214
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244230 ; =0x0224633E
	bl sub_02022664
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224422A
	cmp r0, r4
	blt _0224422E
_0224422A:
	mov r0, #0
	mvn r0, r0
_0224422E:
	pop {r4, pc}
	; .align 2, 0
_02244230: .word 0x0224633E
	thumb_func_end ov94_02244214

	thumb_func_start ov94_02244234
ov94_02244234: ; 0x02244234
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r1, #0
	beq _0224424E
	add r0, r2, #0
	cmp r0, #1
	bne _0224424E
	ldr r0, _022442C8 ; =0x0000064F
	bl sub_02005748
_0224424E:
	ldr r4, [sp, #4]
	mov r0, #0xe
	mov r6, #0
	str r0, [sp, #0x10]
	add r5, r4, #0
	mov r7, #0x11
_0224425A:
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _022442A4
	ldr r0, _022442CC ; =0x0000034A
	ldr r1, [sp, #4]
	ldrb r0, [r4, r0]
	mov r3, #0xdd
	add r2, r1, #0
	str r0, [sp]
	ldr r0, _022442D0 ; =0x00001098
	lsl r3, r3, #2
	ldr r0, [r1, r0]
	ldr r1, _022442D4 ; =0x000010A0
	ldrb r3, [r4, r3]
	ldr r1, [r2, r1]
	add r2, r6, #0
	bl ov94_02244378
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldr r0, _022442D8 ; =0x00000ED8
	beq _02244290
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x10]
	bl sub_02021D6C
	b _02244298
_02244290:
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_02021D6C
_02244298:
	ldr r0, _022442D8 ; =0x00000ED8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	b _022442AE
_022442A4:
	ldr r0, _022442D8 ; =0x00000ED8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
_022442AE:
	mov r0, #0x49
	lsl r0, r0, #2
	add r4, r4, r0
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #0x10]
	add r5, r5, #4
	add r7, r7, #4
	cmp r6, #7
	blt _0224425A
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022442C8: .word 0x0000064F
_022442CC: .word 0x0000034A
_022442D0: .word 0x00001098
_022442D4: .word 0x000010A0
_022442D8: .word 0x00000ED8
	thumb_func_end ov94_02244234

	thumb_func_start ov94_022442DC
ov94_022442DC: ; 0x022442DC
	lsl r0, r0, #2
	add r0, #0xe
	bx lr
	; .align 2, 0
	thumb_func_end ov94_022442DC

	thumb_func_start ov94_022442E4
ov94_022442E4: ; 0x022442E4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02244328 ; =0x00000ED8
	add r5, r0, #0
	mov r4, #0
_022442EC:
	ldr r0, [r5, r7]
	bl sub_02021D34
	cmp r0, #0
	beq _0224431E
	ldr r0, _02244328 ; =0x00000ED8
	ldr r0, [r5, r0]
	bl sub_02021E24
	add r6, r0, #0
	add r0, r4, #0
	bl ov94_022442DC
	add r0, r0, #1
	cmp r6, r0
	beq _0224431E
	add r0, r4, #0
	bl ov94_022442DC
	add r1, r0, #0
	ldr r0, _02244328 ; =0x00000ED8
	add r1, r1, #1
	ldr r0, [r5, r0]
	bl sub_02021D6C
_0224431E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	blt _022442EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244328: .word 0x00000ED8
	thumb_func_end ov94_022442E4

	thumb_func_start ov94_0224432C
ov94_0224432C: ; 0x0224432C
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, _0224436C ; =0x000010A0
	add r4, r0, #0
	mov r0, #0x56
	mov r1, #7
	add r2, r4, r2
	mov r3, #0x3e
	bl sub_02006F88
	ldr r3, _02244370 ; =0x0000109C
	mov r1, #9
	str r0, [r4, r3]
	mov r0, #0x3e
	sub r3, r3, #4
	str r0, [sp]
	mov r0, #0x56
	mov r2, #1
	add r3, r4, r3
	bl sub_02006F50
	ldr r1, _02244374 ; =0x00001094
	str r0, [r4, r1]
	add r0, r1, #4
	mov r1, #2
	ldr r0, [r4, r0]
	lsl r1, r1, #0xe
	bl sub_020C2C54
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224436C: .word 0x000010A0
_02244370: .word 0x0000109C
_02244374: .word 0x00001094
	thumb_func_end ov94_0224432C

	thumb_func_start ov94_02244378
ov94_02244378: ; 0x02244378
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x18]
	add r1, r3, #0
	add r5, r2, #0
	bl sub_0205CA0C
	add r4, r0, #0
	mov r0, #6
	lsl r0, r0, #8
	ldr r1, [r7, #0x14]
	mul r0, r4
	add r0, r1, r0
	ldr r1, _022443B4 ; =0x02246314
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	mov r2, #2
	ldr r6, [r6, #0xc]
	lsl r2, r2, #8
	bl sub_020C0314
	lsl r0, r4, #5
	add r1, r5, #2
	add r0, r6, r0
	lsl r1, r1, #5
	mov r2, #0x20
	bl sub_020C01B8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022443B4: .word 0x02246314
	thumb_func_end ov94_02244378

	thumb_func_start ov94_022443B8
ov94_022443B8: ; 0x022443B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022443D8 ; =0x00001090
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _022443D4
	add r0, #0xc
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, _022443DC ; =0x00001094
	ldr r0, [r4, r0]
	bl sub_020181C4
_022443D4:
	pop {r4, pc}
	nop
_022443D8: .word 0x00001090
_022443DC: .word 0x00001094
	thumb_func_end ov94_022443B8

	thumb_func_start ov94_022443E0
ov94_022443E0: ; 0x022443E0
	push {r4, lr}
	mov r3, #0x45
	add r4, r0, #0
	lsl r3, r3, #2
	ldr r1, [r4, #0]
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0xcd
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #1
	add r0, #0xcf
	strb r2, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xce
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0xd4
	strh r1, [r0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0208C324
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x34]
	add r0, r4, #0
	add r0, #0xd8
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x24]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0202D79C
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1, #0]
	add r0, r4, #0
	ldr r1, _02244488 ; =0x02246360
	add r0, #0xbc
	bl sub_0208D720
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldr r1, [r1, #0x1c]
	add r0, #0xbc
	bl sub_0208E9C0
	add r1, r4, #0
	ldr r0, _0224448C ; =0x020F410C
	add r1, #0xbc
	mov r2, #0x3e
	bl sub_020067E8
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1, #0]
	mov r0, #0x42
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	nop
_02244488: .word 0x02246360
_0224448C: .word 0x020F410C
	thumb_func_end ov94_022443E0

	thumb_func_start ov94_02244490
ov94_02244490: ; 0x02244490
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	mov r4, #3
	bl sub_02006844
	cmp r0, #0
	beq _022444B8
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_02006814
	ldr r2, [r5, #0x24]
	add r0, r5, #0
	mov r1, #5
	bl ov94_0223C4C0
	mov r4, #4
_022444B8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov94_02244490

	thumb_func_start ov94_022444BC
ov94_022444BC: ; 0x022444BC
	push {r3, lr}
	bl ov94_0223C4C8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov94_022444BC

	thumb_func_start ov94_022444C8
ov94_022444C8: ; 0x022444C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x3e
	bl sub_02073C74
	ldr r1, _02244670 ; =0x000010A4
	str r0, [r4, r1]
	ldr r0, [r4, #0x24]
	cmp r0, #0xa
	bls _022444DE
	b _02244648
_022444DE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022444EA: ; jump table
	.short _02244648 - _022444EA - 2 ; case 0
	.short _02244648 - _022444EA - 2 ; case 1
	.short _02244648 - _022444EA - 2 ; case 2
	.short _02244648 - _022444EA - 2 ; case 3
	.short _02244648 - _022444EA - 2 ; case 4
	.short _02244648 - _022444EA - 2 ; case 5
	.short _02244648 - _022444EA - 2 ; case 6
	.short _02244500 - _022444EA - 2 ; case 7
	.short _02244546 - _022444EA - 2 ; case 8
	.short _022445E0 - _022444EA - 2 ; case 9
	.short _0224458C - _022444EA - 2 ; case 10
_02244500:
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xec
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_02244870
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #3
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0xfc
	str r1, [r0, #0]
	b _02244648
_02244546:
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xf0
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xec
	str r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_02244870
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #3
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #4
	add r0, #0xfc
	str r1, [r0, #0]
	b _02244648
_0224458C:
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r1, _02244670 ; =0x000010A4
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	bl sub_0202DA70
	ldr r0, _02244670 ; =0x000010A4
	ldr r0, [r4, r0]
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_02244870
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #3
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xfc
	str r1, [r0, #0]
	b _02244648
_022445E0:
	ldr r0, [r4, #0]
	ldr r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0202DA70
	ldr r0, _02244670 ; =0x000010A4
	ldr r0, [r4, r0]
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bl sub_02076B10
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1, #0]
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bl ov94_02244870
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #3
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xfc
	str r1, [r0, #0]
_02244648:
	ldr r0, [r4, #0]
	mov r2, #0x3e
	ldr r1, [r0, #0x24]
	mov r0, #1
	lsl r0, r0, #8
	str r1, [r4, r0]
	add r1, r4, #0
	ldr r0, _02244674 ; =0x0224636C
	add r1, #0xec
	bl sub_020067E8
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1, #0]
	mov r0, #0x42
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
_02244670: .word 0x000010A4
_02244674: .word 0x0224636C
	thumb_func_end ov94_022444C8

	thumb_func_start ov94_02244678
ov94_02244678: ; 0x02244678
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	mov r6, #3
	cmp r0, #0
	beq _0224468E
	cmp r0, #1
	bne _0224468C
	b _0224480C
_0224468C:
	b _02244842
_0224468E:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_02006844
	cmp r0, #0
	bne _0224469E
	b _02244842
_0224469E:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_02006814
	ldr r1, [r4, #0x24]
	cmp r1, #9
	bne _02244724
	add r0, r4, #0
	bl ov94_022448AC
	mov r1, #6
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	add r3, r0, #0
	add r0, sp, #0x30
	lsl r3, r3, #0x10
	str r0, [sp]
	mov r0, #0
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02076B94
	str r0, [sp, #0x24]
	cmp r0, #0
	beq _02244716
	ldr r5, [r4, #0]
	ldr r0, [r5, #0x20]
	bl sub_02056B24
	ldr r1, [r5, #0x3c]
	ldr r2, [sp, #0x24]
	str r1, [sp]
	ldr r1, [r5, #0x10]
	str r1, [sp, #4]
	ldr r1, [r5, #0x30]
	str r1, [sp, #8]
	ldr r1, [r5, #0x28]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	add r1, r7, #0
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	mov r0, #0x3e
	str r0, [sp, #0x1c]
	ldr r3, [r5, #0x24]
	mov r0, #0
	bl sub_0207AE68
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	str r0, [r4, #0x2c]
	b _02244842
_02244716:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r6, #4
	b _02244842
_02244724:
	cmp r1, #8
	beq _0224472C
	cmp r1, #0xa
	bne _022447FE
_0224472C:
	add r0, r4, #0
	bl ov94_022448AC
	add r7, r0, #0
	mov r0, #0x3e
	bl sub_02073C74
	str r0, [sp, #0x20]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	bl sub_0202DA70
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	bne _0224477A
	mov r1, #0
	add r0, r7, #0
	add r2, r1, #0
	bl sub_02074470
	add r5, r0, #0
	mov r1, #0
	ldr r0, [sp, #0x20]
	add r2, r1, #0
	bl sub_02074470
	cmp r5, r0
	beq _022447EA
_0224477A:
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r3, r0, #0
	add r0, sp, #0x2c
	lsl r3, r3, #0x10
	str r0, [sp]
	mov r0, #0
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02076B94
	str r0, [sp, #0x28]
	cmp r0, #0
	beq _022447DC
	ldr r5, [r4, #0]
	ldr r0, [r5, #0x20]
	bl sub_02056B24
	ldr r1, [r5, #0x3c]
	ldr r2, [sp, #0x28]
	str r1, [sp]
	ldr r1, [r5, #0x10]
	str r1, [sp, #4]
	ldr r1, [r5, #0x30]
	str r1, [sp, #8]
	ldr r1, [r5, #0x28]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	mov r0, #0x3e
	str r0, [sp, #0x1c]
	ldr r3, [r5, #0x24]
	mov r0, #0
	bl sub_0207AE68
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	str r0, [r4, #0x2c]
	b _022447F6
_022447DC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r6, #4
	b _022447F6
_022447EA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r6, #4
_022447F6:
	ldr r0, [sp, #0x20]
	bl sub_020181C4
	b _02244842
_022447FE:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r6, #4
	b _02244842
_0224480C:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207B0D0
	cmp r0, #0
	beq _02244842
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207B0E0
	add r0, r4, #0
	bl ov94_022448E8
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02244848 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xc
	bl ov94_0223C4C0
	mov r6, #4
_02244842:
	add r0, r6, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02244848: .word 0xFFFF1FFF
	thumb_func_end ov94_02244678

	thumb_func_start ov94_0224484C
ov94_0224484C: ; 0x0224484C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224486C ; =0x000010A4
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0224486C: .word 0x000010A4
	thumb_func_end ov94_0224484C

	thumb_func_start ov94_02244870
ov94_02244870: ; 0x02244870
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3e
	bl sub_02025E6C
	add r4, r0, #0
	bl sub_02025E8C
	mov r1, #0x43
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r5, r1
	bl sub_02025EC0
	ldr r1, _022448A4 ; =0x00000122
	add r0, r4, #0
	ldrb r1, [r5, r1]
	bl sub_02025FD0
	ldr r1, _022448A8 ; =0x00000123
	add r0, r4, #0
	ldrb r1, [r5, r1]
	bl sub_02025FDC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022448A4: .word 0x00000122
_022448A8: .word 0x00000123
	thumb_func_end ov94_02244870

	thumb_func_start ov94_022448AC
ov94_022448AC: ; 0x022448AC
	push {r3, lr}
	cmp r1, #9
	bne _022448C6
	mov r1, #0x95
	lsl r1, r1, #2
	add r3, r0, r1
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	add r0, r1, #4
	mul r0, r2
	add r0, r3, r0
	pop {r3, pc}
_022448C6:
	cmp r1, #0xa
	bne _022448D2
	mov r1, #0x13
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
_022448D2:
	cmp r1, #8
	bne _022448DE
	mov r1, #0x13
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
_022448DE:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov94_022448AC

	thumb_func_start ov94_022448E8
ov94_022448E8: ; 0x022448E8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r1, [r5, #0x24]
	bl ov94_022448AC
	mov r2, #0x4a
	lsl r2, r2, #2
	add r4, r0, #0
	ldr r0, [r5, r2]
	cmp r0, #0x12
	bne _02244918
	ldr r0, [r5, #0]
	add r1, r2, #4
	ldr r0, [r0, #8]
	ldr r1, [r5, r1]
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020775EC
	add sp, #8
	pop {r3, r4, r5, pc}
_02244918:
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r1, [r5, r2]
	add r2, r2, #4
	ldr r0, [r0, #0xc]
	ldr r2, [r5, r2]
	bl sub_02079968
	ldr r0, [r5, #0]
	add r1, sp, #4
	ldr r0, [r0, #0xc]
	add r2, sp, #0
	bl sub_020799F0
	add r0, r4, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_020798A0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov94_022448E8

	thumb_func_start ov94_02244950
ov94_02244950: ; 0x02244950
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_02244F2C
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #4]
	bl ov94_02244A7C
	add r0, r4, #0
	bl ov94_02244B8C
	add r0, r4, #0
	bl ov94_02244E48
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_02038438
	add r0, r4, #0
	bl ov94_02245934
	bl ov4_021D7A8C
	cmp r0, #0
	bne _022449EA
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _022449E4
	ldr r0, _022449F4 ; =0x00000F0F
	ldr r1, _022449F8 ; =0x00000B9C
	str r0, [sp]
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r3, r2, #0
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #2
	bl ov94_0223C3F4
	add r0, r4, #0
	bl ov94_0223C5D8
	b _022449EE
_022449E4:
	mov r0, #0
	str r0, [r4, #0x2c]
	b _022449EE
_022449EA:
	mov r0, #0x11
	str r0, [r4, #0x2c]
_022449EE:
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_022449F4: .word 0x00000F0F
_022449F8: .word 0x00000B9C
	thumb_func_end ov94_02244950

	thumb_func_start ov94_022449FC
ov94_022449FC: ; 0x022449FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov94_0223C4B4
	bl sub_020397B0
	ldr r4, [r5, #0x2c]
	ldr r1, _02244A28 ; =0x02246A40
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #0x2c]
	cmp r4, r1
	beq _02244A26
	mov r1, #0x52
	mov r2, #0
	lsl r1, r1, #6
	strh r2, [r5, r1]
	add r1, r1, #2
	strh r2, [r5, r1]
_02244A26:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244A28: .word 0x02246A40
	thumb_func_end ov94_022449FC

	thumb_func_start ov94_02244A2C
ov94_02244A2C: ; 0x02244A2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244A74 ; =0x00001154
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02244A46
	bl sub_0200DA58
	ldr r0, _02244A74 ; =0x00001154
	mov r1, #0
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_02244A46:
	add r0, r4, #0
	bl ov94_02244F64
	add r0, r4, #0
	bl ov94_02244F00
	ldr r0, [r4, #4]
	bl ov94_02244B68
	ldr r0, _02244A78 ; =0x00001158
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov94_0223C4C8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02244A6E
	mov r0, #5
	pop {r4, pc}
_02244A6E:
	mov r0, #1
	pop {r4, pc}
	nop
_02244A74: .word 0x00001154
_02244A78: .word 0x00001158
	thumb_func_end ov94_02244A2C

	thumb_func_start ov94_02244A7C
ov94_02244A7C: ; 0x02244A7C
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _02244B58 ; =0x022463B4
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x54
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
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _02244B5C ; =0x02246398
	add r3, sp, #0x38
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
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r5, _02244B60 ; =0x022463D0
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
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _02244B64 ; =0x0224637C
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
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF74
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_02244B58: .word 0x022463B4
_02244B5C: .word 0x02246398
_02244B60: .word 0x022463D0
_02244B64: .word 0x0224637C
	thumb_func_end ov94_02244A7C

	thumb_func_start ov94_02244B68
ov94_02244B68: ; 0x02244B68
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov94_02244B68

	thumb_func_start ov94_02244B8C
ov94_02244B8C: ; 0x02244B8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	ldr r4, [r0, #4]
	mov r0, #0x5c
	mov r1, #0x3e
	bl sub_02006C24
	mov r2, #0
	str r2, [sp]
	mov r1, #0x3e
	str r1, [sp, #4]
	mov r1, #3
	add r3, r2, #0
	str r0, [sp, #0x2c]
	bl sub_02007130
	mov r3, #0
	str r3, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r1, #3
	mov r2, #4
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
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
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #2
	add r2, r4, #0
	mov r3, #1
	bl sub_020070E8
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #5
	add r2, r4, #0
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #0xa
	add r2, r4, #0
	mov r3, #5
	bl sub_020070E8
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #0xb
	add r2, r4, #0
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	mov r2, #0xcb
	ldr r1, _02244DA0 ; =0x00001154
	ldr r0, [sp, #0x10]
	lsl r2, r2, #2
	add r0, r0, r1
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, [sp, #0x2c]
	mov r1, #4
	add r2, sp, #0x38
	mov r3, #0x3e
	bl sub_020071EC
	add r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r2, _02244DA4 ; =0x0000115C
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, r1, r2
	mov r2, #0x80
	bl sub_020C4B18
	ldr r0, [sp, #0x38]
	ldr r2, _02244DA8 ; =0x000011DC
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, r1, r2
	mov r2, #0x80
	bl sub_020C4B18
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, _02244DA8 ; =0x000011DC
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	sub r1, #0x80
	add r0, r0, r1
	str r0, [sp, #0x14]
_02244CDC:
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r1, r0, #5
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x30]
_02244CEE:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _02244CF8
	bl sub_02022974
_02244CF8:
	ldr r0, [sp, #0x30]
	mov r7, #1
	add r4, r0, #2
	ldr r0, [sp, #0x18]
	add r6, r0, #2
	ldr r0, [sp, #0x14]
	add r5, r0, #2
	ldr r0, [sp, #0x20]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
_02244D10:
	ldr r0, _02244DA4 ; =0x0000115C
	ldr r3, [sp, #0x34]
	ldrh r0, [r4, r0]
	add r1, r6, #0
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	bl sub_0200393C
	add r7, r7, #1
	add r4, r4, #2
	add r6, r6, #2
	add r5, r5, #2
	cmp r7, #0x10
	blt _02244D10
	ldr r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _02244D5A
	mov r0, #3
	ldr r1, [sp, #0x20]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _02244CEE
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02244CEE
_02244D5A:
	ldr r0, [sp, #0x14]
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _02244CDC
	ldr r1, _02244DA8 ; =0x000011DC
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	mov r1, #0x2a
	lsl r1, r1, #4
	bl sub_020C2C54
	ldr r1, _02244DAC ; =0x00001158
	ldr r0, [sp, #0x10]
	mov r2, #1
	str r2, [r0, r1]
	sub r2, r1, #4
	ldr r1, [sp, #0x10]
	ldr r0, _02244DB0 ; =ov94_02244DB4
	add r1, r1, r2
	mov r2, #0x14
	bl sub_0200DA04
	ldr r2, _02244DA0 ; =0x00001154
	ldr r1, [sp, #0x10]
	str r0, [r1, r2]
	ldr r0, [sp, #0x2c]
	bl sub_02006CA8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02244DA0: .word 0x00001154
_02244DA4: .word 0x0000115C
_02244DA8: .word 0x000011DC
_02244DAC: .word 0x00001158
_02244DB0: .word ov94_02244DB4
	thumb_func_end ov94_02244B8C

	thumb_func_start ov94_02244DB4
ov94_02244DB4: ; 0x02244DB4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02244E3C
	ldr r0, _02244E40 ; =0x0000032B
	mov r1, #1
	ldrb r2, [r4, r0]
	eor r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _02244E3C
	sub r0, r0, #3
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C00B4
	mov r0, #0xca
	lsl r0, r0, #2
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C0108
	ldr r0, _02244E44 ; =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _02244E20
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _02244E3C
	mov r2, #0x13
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	mov r1, #1
	eor r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_02244E20:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _02244E3C
	mov r2, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eor r1, r2
	strb r1, [r4, r0]
_02244E3C:
	pop {r4, pc}
	nop
_02244E40: .word 0x0000032B
_02244E44: .word 0x0000032A
	thumb_func_end ov94_02244DB4

	thumb_func_start ov94_02244E48
ov94_02244E48: ; 0x02244E48
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #4
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x94
	ldr r1, _02244EEC ; =0x00000F2C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _02244EEC ; =0x00000F2C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #1
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r1, _02244EF0 ; =0x00000F1C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #4
	bl sub_0201A7E8
	ldr r0, _02244EF0 ; =0x00000F1C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r3, #1
	ldr r0, _02244EF4 ; =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _02244EF8 ; =0x00000BB4
	ldr r0, _02244EF0 ; =0x00000F1C
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	bl ov94_022458CC
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _02244EFC ; =0x00000EFC
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _02244EFC ; =0x00000EFC
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02244EEC: .word 0x00000F2C
_02244EF0: .word 0x00000F1C
_02244EF4: .word 0x000F0E00
_02244EF8: .word 0x00000BB4
_02244EFC: .word 0x00000EFC
	thumb_func_end ov94_02244E48

	thumb_func_start ov94_02244F00
ov94_02244F00: ; 0x02244F00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244F20 ; =0x00000EFC
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02244F24 ; =0x00000F1C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02244F28 ; =0x00000F2C
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	nop
_02244F20: .word 0x00000EFC
_02244F24: .word 0x00000F1C
_02244F28: .word 0x00000F2C
	thumb_func_end ov94_02244F00

	thumb_func_start ov94_02244F2C
ov94_02244F2C: ; 0x02244F2C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbe
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x4c
	ldr r0, [r4, r1]
	mov r1, #0x1f
	bl sub_0200B1EC
	ldr r1, _02244F60 ; =0x00000BB4
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02244F60: .word 0x00000BB4
	thumb_func_end ov94_02244F2C

	thumb_func_start ov94_02244F64
ov94_02244F64: ; 0x02244F64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244F88 ; =0x00000BB4
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0xbe
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	nop
_02244F88: .word 0x00000BB4
	thumb_func_end ov94_02244F64

	thumb_func_start ov94_02244F8C
ov94_02244F8C: ; 0x02244F8C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02244FBC ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x11
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _02244FC0 ; =0x000010AE
	mov r1, #1
	strh r1, [r4, r0]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02244FBC: .word 0x00000F0F
_02244FC0: .word 0x000010AE
	thumb_func_end ov94_02244F8C

	thumb_func_start ov94_02244FC4
ov94_02244FC4: ; 0x02244FC4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _02245020 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02245018
	sub r1, r1, #1
	cmp r0, r1
	bne _02244FF6
	bl sub_0203848C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #0xb
	str r0, [r4, #0x2c]
	b _02245018
_02244FF6:
	ldr r0, _02245024 ; =0x00000F0F
	ldr r1, _02245028 ; =0x00000B9C
	str r0, [sp]
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r3, r2, #0
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #2
	bl ov94_0223C3F4
	add r0, r4, #0
	bl ov94_0223C5D8
_02245018:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02245020: .word 0x00001070
_02245024: .word 0x00000F0F
_02245028: .word 0x00000B9C
	thumb_func_end ov94_02244FC4

	thumb_func_start ov94_0224502C
ov94_0224502C: ; 0x0224502C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02245054 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02245058 ; =0x00000B94
	mov r2, #7
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0x10
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02245054: .word 0x00000F0F
_02245058: .word 0x00000B94
	thumb_func_end ov94_0224502C

	thumb_func_start ov94_0224505C
ov94_0224505C: ; 0x0224505C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022450BC ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022450B8
	sub r1, r1, #1
	cmp r0, r1
	bne _0224509A
	bl ov4_021D7A8C
	cmp r0, #0
	bne _02245086
	mov r0, #0
	str r0, [r4, #0x2c]
	b _022450B8
_02245086:
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xb
	bl ov94_0223C4C0
	mov r0, #1
	str r0, [r4, #0x1c]
	mov r0, #0xb
	str r0, [r4, #0x2c]
	b _022450B8
_0224509A:
	bl ov4_021D7A8C
	cmp r0, #0
	beq _022450A6
	bl ov4_021D7DB0
_022450A6:
	bl sub_0203848C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #0xb
	str r0, [r4, #0x2c]
_022450B8:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_022450BC: .word 0x00001070
	thumb_func_end ov94_0224505C

	thumb_func_start ov94_022450C0
ov94_022450C0: ; 0x022450C0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _022450E8 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x1a
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x12
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022450E8: .word 0x00000F0F
	thumb_func_end ov94_022450C0

	thumb_func_start ov94_022450EC
ov94_022450EC: ; 0x022450EC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203848C
	bl ov4_021D7DB0
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #0x13
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_022450EC

	thumb_func_start ov94_0224510C
ov94_0224510C: ; 0x0224510C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02245134 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x1b
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0xb
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02245134: .word 0x00000F0F
	thumb_func_end ov94_0224510C

	thumb_func_start ov94_02245138
ov94_02245138: ; 0x02245138
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x54
	mov r1, #2
	mov r2, #1
	mov r3, #0x14
	bl ov4_021D78C8
	mov r0, #2
	bl ov4_021D792C
	bl ov4_021D797C
	mov r0, #3
	str r0, [r4, #0x2c]
	pop {r4, pc}
	thumb_func_end ov94_02245138

	thumb_func_start ov94_02245158
ov94_02245158: ; 0x02245158
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	bl ov4_021D7AE4
	bl ov4_021D7A8C
	cmp r0, #0
	beq _022451D6
	bl ov4_021D7BFC
	cmp r0, #8
	bhi _022451B6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224517E: ; jump table
	.short _022451B6 - _0224517E - 2 ; case 0
	.short _022451B6 - _0224517E - 2 ; case 1
	.short _022451B6 - _0224517E - 2 ; case 2
	.short _022451B6 - _0224517E - 2 ; case 3
	.short _022451CC - _0224517E - 2 ; case 4
	.short _022451B6 - _0224517E - 2 ; case 5
	.short _022451B6 - _0224517E - 2 ; case 6
	.short _02245190 - _0224517E - 2 ; case 7
	.short _022451B6 - _0224517E - 2 ; case 8
_02245190:
	add r0, sp, #8
	add r1, sp, #4
	bl ov4_021D75F4
	str r0, [r4, #0x40]
	ldr r0, [sp, #8]
	str r0, [r4, #0x44]
	ldr r0, [sp, #4]
	str r0, [r4, #0x48]
	bl ov4_021D76E8
	bl ov4_021D7DB0
	add r0, r4, #0
	bl ov94_0223C5F4
	mov r0, #0x17
	str r0, [r4, #0x2c]
	b _022451D6
_022451B6:
	add r0, sp, #0
	bl ov4_021D75D4
	add r0, r4, #0
	bl ov94_0223C5F4
	mov r0, #0x15
	str r0, [r4, #0x2c]
	sub r0, #0x17
	str r0, [r4, #0x3c]
	b _022451D6
_022451CC:
	add r0, sp, #0xc
	bl ov4_021D7EB8
	mov r0, #4
	str r0, [r4, #0x2c]
_022451D6:
	mov r0, #3
	add sp, #0x48
	pop {r4, pc}
	thumb_func_end ov94_02245158

	thumb_func_start ov94_022451DC
ov94_022451DC: ; 0x022451DC
	push {r4, lr}
	add r4, r0, #0
	bl ov4_021D81DC
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_022451DC

	thumb_func_start ov94_022451EC
ov94_022451EC: ; 0x022451EC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov4_021D82A0
	cmp r0, #5
	bhi _0224528C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245206: ; jump table
	.short _02245218 - _02245206 - 2 ; case 0
	.short _0224528C - _02245206 - 2 ; case 1
	.short _0224528C - _02245206 - 2 ; case 2
	.short _02245212 - _02245206 - 2 ; case 3
	.short _02245218 - _02245206 - 2 ; case 4
	.short _02245218 - _02245206 - 2 ; case 5
_02245212:
	mov r0, #6
	str r0, [r4, #0x2c]
	b _0224528C
_02245218:
	add r0, r4, #0
	bl ov94_0223C5F4
	add r0, sp, #4
	add r1, sp, #0
	bl ov4_021D75F4
	str r0, [r4, #0x40]
	ldr r0, [sp, #4]
	str r0, [r4, #0x44]
	bl ov4_021D76E8
	bl ov4_021D7DB0
	mov r0, #0x17
	str r0, [r4, #0x2c]
	ldr r1, [sp]
	cmp r1, #7
	bhi _0224527A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224524A: ; jump table
	.short _0224527A - _0224524A - 2 ; case 0
	.short _0224525A - _0224524A - 2 ; case 1
	.short _0224525A - _0224524A - 2 ; case 2
	.short _0224526C - _0224524A - 2 ; case 3
	.short _0224525E - _0224524A - 2 ; case 4
	.short _02245276 - _0224524A - 2 ; case 5
	.short _02245268 - _0224524A - 2 ; case 6
	.short _02245276 - _0224524A - 2 ; case 7
_0224525A:
	str r0, [r4, #0x2c]
	b _0224527A
_0224525E:
	bl ov4_021E55B0
	mov r0, #0x17
	str r0, [r4, #0x2c]
	b _0224527A
_02245268:
	str r0, [r4, #0x2c]
	b _0224527A
_0224526C:
	bl ov4_021D8E8C
	mov r0, #0x17
	str r0, [r4, #0x2c]
	b _0224527A
_02245276:
	bl sub_02038A0C
_0224527A:
	ldr r1, [sp, #4]
	ldr r0, _02245294 ; =0xFFFFB1E0
	cmp r1, r0
	bge _0224528C
	ldr r0, _02245298 ; =0xFFFF8AD1
	cmp r1, r0
	blt _0224528C
	mov r0, #0x17
	str r0, [r4, #0x2c]
_0224528C:
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	nop
_02245294: .word 0xFFFFB1E0
_02245298: .word 0xFFFF8AD1
	thumb_func_end ov94_022451EC

	thumb_func_start ov94_0224529C
ov94_0224529C: ; 0x0224529C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x14]
	bl sub_0202AD28
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	bl sub_02025D74
	cmp r0, #0
	bne _022452C0
	ldr r1, [r5, #0]
	ldr r0, [r1, #4]
	ldr r1, [r1, #0x38]
	bl sub_02025D78
_022452C0:
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	bl sub_02025D74
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020A471C
	add r3, r0, #0
	add r2, r1, #0
	add r0, r6, #0
	add r1, r3, #0
	bl ov94_0223B140
	mov r0, #7
	str r0, [r5, #0x2c]
	mov r0, #3
	pop {r4, r5, r6, pc}
	thumb_func_end ov94_0224529C

	thumb_func_start ov94_022452E4
ov94_022452E4: ; 0x022452E4
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223BB40
	mov r0, #8
	str r0, [r4, #0x2c]
	ldr r0, _022452FC ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022452FC: .word 0x00001484
	thumb_func_end ov94_022452E4

	thumb_func_start ov94_02245300
ov94_02245300: ; 0x02245300
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _0224539A
	bl ov94_0223B7D8
	add r5, r0, #0
	ldr r0, _022453B4 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xf
	cmp r0, #0x11
	bhi _0224538E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224532C: ; jump table
	.short _02245372 - _0224532C - 2 ; case 0
	.short _02245380 - _0224532C - 2 ; case 1
	.short _0224538E - _0224532C - 2 ; case 2
	.short _02245372 - _0224532C - 2 ; case 3
	.short _0224538E - _0224532C - 2 ; case 4
	.short _0224538E - _0224532C - 2 ; case 5
	.short _0224538E - _0224532C - 2 ; case 6
	.short _0224538E - _0224532C - 2 ; case 7
	.short _0224538E - _0224532C - 2 ; case 8
	.short _0224538E - _0224532C - 2 ; case 9
	.short _0224538E - _0224532C - 2 ; case 10
	.short _0224538E - _0224532C - 2 ; case 11
	.short _0224538E - _0224532C - 2 ; case 12
	.short _02245380 - _0224532C - 2 ; case 13
	.short _02245364 - _0224532C - 2 ; case 14
	.short _02245350 - _0224532C - 2 ; case 15
	.short _02245356 - _0224532C - 2 ; case 16
	.short _02245364 - _0224532C - 2 ; case 17
_02245350:
	mov r0, #9
	str r0, [r4, #0x2c]
	b _022453B0
_02245356:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _022453B0
_02245364:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _022453B0
_02245372:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _022453B0
_02245380:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _022453B0
_0224538E:
	add r0, r4, #0
	bl ov94_0223C5F4
	bl sub_02038A0C
	b _022453B0
_0224539A:
	ldr r0, _022453B4 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _022453B0
	bl sub_02038A0C
_022453B0:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022453B4: .word 0x00001484
	thumb_func_end ov94_02245300

	thumb_func_start ov94_022453B8
ov94_022453B8: ; 0x022453B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _022453E4 ; =0x000010E4
	ldr r0, [r0, #0x20]
	add r1, r4, r1
	bl sub_02030E78
	ldr r1, _022453E4 ; =0x000010E4
	add r0, r4, r1
	add r1, #0x64
	add r1, r4, r1
	bl ov94_0223BB84
	mov r0, #0xa
	str r0, [r4, #0x2c]
	ldr r0, _022453E8 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022453E4: .word 0x000010E4
_022453E8: .word 0x00001484
	thumb_func_end ov94_022453B8

	thumb_func_start ov94_022453EC
ov94_022453EC: ; 0x022453EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	bne _022453FA
	b _0224550A
_022453FA:
	bl ov94_0223B7D8
	add r5, r0, #0
	ldr r0, _02245524 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xf
	cmp r0, #0x11
	bhi _022454FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224541A: ; jump table
	.short _022454E2 - _0224541A - 2 ; case 0
	.short _022454F0 - _0224541A - 2 ; case 1
	.short _022454FE - _0224541A - 2 ; case 2
	.short _022454E2 - _0224541A - 2 ; case 3
	.short _022454FE - _0224541A - 2 ; case 4
	.short _022454FE - _0224541A - 2 ; case 5
	.short _022454FE - _0224541A - 2 ; case 6
	.short _022454FE - _0224541A - 2 ; case 7
	.short _022454FE - _0224541A - 2 ; case 8
	.short _022454FE - _0224541A - 2 ; case 9
	.short _022454FE - _0224541A - 2 ; case 10
	.short _022454FE - _0224541A - 2 ; case 11
	.short _022454FE - _0224541A - 2 ; case 12
	.short _022454F0 - _0224541A - 2 ; case 13
	.short _022454D4 - _0224541A - 2 ; case 14
	.short _0224543E - _0224541A - 2 ; case 15
	.short _022454C6 - _0224541A - 2 ; case 16
	.short _022454D4 - _0224541A - 2 ; case 17
_0224543E:
	add r0, r4, #0
	bl ov94_0223C5F4
	ldr r0, _02245528 ; =0x00001148
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02245456
	cmp r1, #1
	beq _022454A6
	cmp r1, #2
	beq _022454B0
	b _022454BA
_02245456:
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _022454A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224546A: ; jump table
	.short _02245472 - _0224546A - 2 ; case 0
	.short _0224548C - _0224546A - 2 ; case 1
	.short _02245496 - _0224546A - 2 ; case 2
	.short _02245482 - _0224546A - 2 ; case 3
_02245472:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #0xb
	str r0, [r4, #0x2c]
	b _02245520
_02245482:
	ldr r0, _0224552C ; =0xFFFFEC75
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_0224548C:
	ldr r0, _02245530 ; =0xFFFFEC78
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_02245496:
	ldr r0, _02245534 ; =0xFFFFEC77
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454A0:
	bl sub_02038A0C
	b _02245520
_022454A6:
	ldr r0, _02245538 ; =0xFFFFEC74
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454B0:
	ldr r0, _0224553C ; =0xFFFFEC73
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454BA:
	add r0, r4, #0
	bl ov94_0223C5F4
	bl sub_02038A0C
	b _02245520
_022454C6:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454D4:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454E2:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454F0:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454FE:
	add r0, r4, #0
	bl ov94_0223C5F4
	bl sub_02038A0C
	b _02245520
_0224550A:
	ldr r0, _02245524 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02245520
	bl sub_02038A0C
_02245520:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245524: .word 0x00001484
_02245528: .word 0x00001148
_0224552C: .word 0xFFFFEC75
_02245530: .word 0xFFFFEC78
_02245534: .word 0xFFFFEC77
_02245538: .word 0xFFFFEC74
_0224553C: .word 0xFFFFEC73
	thumb_func_end ov94_022453EC

	thumb_func_start ov94_02245540
ov94_02245540: ; 0x02245540
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x48]
	neg r0, r0
	bl ov4_021D1F3C
	ldr r2, [r4, #0x44]
	add r1, r0, #0
	add r0, r4, #0
	neg r2, r2
	bl ov94_022459B4
	mov r0, #0x18
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02245540

	thumb_func_start ov94_02245564
ov94_02245564: ; 0x02245564
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224558C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02245578
	mov r0, #2
	tst r0, r1
	beq _02245586
_02245578:
	ldr r0, _02245590 ; =0x00000F2C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	mov r0, #0
	str r0, [r4, #0x2c]
_02245586:
	mov r0, #3
	pop {r4, pc}
	nop
_0224558C: .word 0x021BF67C
_02245590: .word 0x00000F2C
	thumb_func_end ov94_02245564

	thumb_func_start ov94_02245594
ov94_02245594: ; 0x02245594
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02039794
	add r0, r4, #0
	bl ov94_0223C5F4
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
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, _022455CC ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_022455CC: .word 0x000010B0
	thumb_func_end ov94_02245594

	thumb_func_start ov94_022455D0
ov94_022455D0: ; 0x022455D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02245604 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02245600
	sub r1, r1, #1
	cmp r0, r1
	bne _022455F2
	mov r0, #0
	str r0, [r4, #0x2c]
	b _02245600
_022455F2:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #0xb
	str r0, [r4, #0x2c]
_02245600:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02245604: .word 0x00001070
	thumb_func_end ov94_022455D0

	thumb_func_start ov94_02245608
ov94_02245608: ; 0x02245608
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r2, #0xd
	ldr r0, [r4, #0x3c]
	mvn r2, r2
	cmp r0, r2
	bgt _02245646
	bge _02245682
	ldr r1, _022456BC ; =0xFFFFEC78
	cmp r0, r1
	bgt _0224563E
	ldr r1, _022456C0 ; =0x0000138D
	add r1, r0, r1
	bmi _02245686
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02245632: ; jump table
	.short _0224569A - _02245632 - 2 ; case 0
	.short _02245696 - _02245632 - 2 ; case 1
	.short _0224568A - _02245632 - 2 ; case 2
	.short _02245686 - _02245632 - 2 ; case 3
	.short _02245692 - _02245632 - 2 ; case 4
	.short _0224568E - _02245632 - 2 ; case 5
_0224563E:
	mov r1, #0xe
	mvn r1, r1
	cmp r0, r1
	b _02245686
_02245646:
	add r1, r2, #0
	add r1, #9
	cmp r0, r1
	bgt _0224565C
	add r1, r2, #0
	add r1, #9
	cmp r0, r1
	bge _02245686
	add r1, r2, #2
	cmp r0, r1
	b _02245686
_0224565C:
	add r0, r0, #3
	cmp r0, #5
	bhi _02245686
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224566E: ; jump table
	.short _02245686 - _0224566E - 2 ; case 0
	.short _02245682 - _0224566E - 2 ; case 1
	.short _0224567E - _0224566E - 2 ; case 2
	.short _02245686 - _0224566E - 2 ; case 3
	.short _0224567A - _0224566E - 2 ; case 4
	.short _0224567E - _0224566E - 2 ; case 5
_0224567A:
	mov r2, #0x90
	b _0224569C
_0224567E:
	mov r2, #0x91
	b _0224569C
_02245682:
	mov r2, #0x96
	b _0224569C
_02245686:
	mov r2, #0x95
	b _0224569C
_0224568A:
	mov r2, #0xb1
	b _0224569C
_0224568E:
	mov r2, #0xae
	b _0224569C
_02245692:
	mov r2, #0xae
	b _0224569C
_02245696:
	mov r2, #0xaf
	b _0224569C
_0224569A:
	mov r2, #0xb0
_0224569C:
	ldr r0, _022456C4 ; =0x00000F0F
	ldr r1, _022456C8 ; =0x00000B94
	str r0, [sp]
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x16
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022456BC: .word 0xFFFFEC78
_022456C0: .word 0x0000138D
_022456C4: .word 0x00000F0F
_022456C8: .word 0x00000B94
	thumb_func_end ov94_02245608

	thumb_func_start ov94_022456CC
ov94_022456CC: ; 0x022456CC
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x52
	add r4, r0, #0
	lsl r1, r1, #6
	ldrsh r1, [r4, r1]
	cmp r1, #3
	bhi _02245768
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022456E8: ; jump table
	.short _022456F0 - _022456E8 - 2 ; case 0
	.short _0224570C - _022456E8 - 2 ; case 1
	.short _02245730 - _022456E8 - 2 ; case 2
	.short _0224574C - _022456E8 - 2 ; case 3
_022456F0:
	ldr r1, _0224578C ; =0x00000F0F
	mov r2, #0xb2
	str r1, [sp]
	ldr r1, _02245790 ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl ov94_02245824
	mov r0, #0x52
	lsl r0, r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02245784
_0224570C:
	ldr r0, _02245794 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02245784
	bl sub_0203848C
	bl ov4_021D7DB0
	mov r0, #0x52
	lsl r0, r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02245784
_02245730:
	ldr r1, _0224578C ; =0x00000F0F
	mov r2, #0xb3
	str r1, [sp]
	ldr r1, _02245790 ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl ov94_02245824
	mov r0, #0x52
	lsl r0, r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02245784
_0224574C:
	ldr r0, _02245794 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02245784
	mov r0, #0x52
	lsl r0, r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02245784
_02245768:
	ldr r0, _02245798 ; =0x00001482
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _02245784
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #0xb
	str r0, [r4, #0x2c]
_02245784:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224578C: .word 0x00000F0F
_02245790: .word 0x00000B94
_02245794: .word 0x00000BE4
_02245798: .word 0x00001482
	thumb_func_end ov94_022456CC

	thumb_func_start ov94_0224579C
ov94_0224579C: ; 0x0224579C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022457B8 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022457B4
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_022457B4:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_022457B8: .word 0x00000BE4
	thumb_func_end ov94_0224579C

	thumb_func_start ov94_022457BC
ov94_022457BC: ; 0x022457BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022457EC ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022457E8
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	ble _022457DE
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_022457DE:
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022457E8:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_022457EC: .word 0x00000BE4
	thumb_func_end ov94_022457BC

	thumb_func_start ov94_022457F0
ov94_022457F0: ; 0x022457F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224581C ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02245818
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	bl ov94_0223C3C0
	ldr r1, _02245820 ; =0x00001070
	str r0, [r4, r1]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_02245818:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0224581C: .word 0x00000BE4
_02245820: .word 0x00001070
	thumb_func_end ov94_022457F0

	thumb_func_start ov94_02245824
ov94_02245824: ; 0x02245824
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0200B1EC
	mov r1, #0xb9
	add r6, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x20
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0224588C ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0224588C ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0224588C ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _02245890 ; =0x00000BE4
	str r0, [r5, r1]
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r5, r0]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224588C: .word 0x00000EFC
_02245890: .word 0x00000BE4
	thumb_func_end ov94_02245824

	thumb_func_start ov94_02245894
ov94_02245894: ; 0x02245894
	push {r4, lr}
	add r4, r0, #0
	cmp r3, #1
	beq _022458A2
	cmp r3, #2
	beq _022458B8
	b _022458C6
_022458A2:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	b _022458C6
_022458B8:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r2, r1, r0
_022458C6:
	add r0, r2, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02245894

	thumb_func_start ov94_022458CC
ov94_022458CC: ; 0x022458CC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldr r3, [sp, #0x24]
	add r5, r0, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	add r6, r1, #0
	bl ov94_02245894
	add r3, r0, #0
	str r4, [sp]
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov94_022458CC

	thumb_func_start ov94_02245900
ov94_02245900: ; 0x02245900
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldr r3, [sp, #0x24]
	add r5, r0, #0
	str r3, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	add r6, r1, #0
	bl ov94_02245894
	add r3, r0, #0
	str r4, [sp]
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_02245900

	thumb_func_start ov94_02245934
ov94_02245934: ; 0x02245934
	ldr r3, _02245938 ; =sub_02039734
	bx r3
	; .align 2, 0
_02245938: .word sub_02039734
	thumb_func_end ov94_02245934

	thumb_func_start ov94_0224593C
ov94_0224593C: ; 0x0224593C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	add r6, r1, #0
	lsl r0, r0, #8
	mov r1, #0x3e
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0xb9
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x50
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	ldr r0, _022459AC ; =0x00000F2C
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _022459AC ; =0x00000F2C
	mov r1, #1
	add r0, r5, r0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r2, #0xbe
	ldr r0, _022459AC ; =0x00000F2C
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _022459B0 ; =0x00000BE4
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022459AC: .word 0x00000F2C
_022459B0: .word 0x00000BE4
	thumb_func_end ov94_0224593C

	thumb_func_start ov94_022459B4
ov94_022459B4: ; 0x022459B4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	cmp r4, r0
	bne _022459C6
	mov r4, #0xb
_022459C6:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	ldr r0, _022459F4 ; =0x00000EFC
	mov r1, #1
	add r0, r5, r0
	bl sub_0200E084
	add r0, r5, #0
	add r1, r4, #0
	bl ov94_0224593C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022459F4: .word 0x00000EFC
	thumb_func_end ov94_022459B4
	; 0x022459F8

	.incbin "data/overlay94.bin"
