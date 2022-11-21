	.include "macros/function.inc"


	.text

	thumb_func_start ov41_022561C0
ov41_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =FUN_02254238
	ldr r0, _022561CC ; =ov41_022561D4
	ldr r1, _022561D0 ; =ov41_02256310
	bx r3
	; .align 2, 0
_022561C8: .word FUN_02254238
_022561CC: .word ov41_022561D4
_022561D0: .word ov41_02256310
	thumb_func_end ov41_022561C0

	thumb_func_start ov41_022561D4
ov41_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _02256218 ; =0x00005B90
	mov r0, #8
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov41_02256220
	cmp r0, #0
	beq _0225620C
	ldr r0, _0225621C ; =ov41_022562B8
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
_02256218: .word 0x00005B90
_0225621C: .word ov41_022562B8
	thumb_func_end ov41_022561D4

	thumb_func_start ov41_02256220
ov41_02256220: ; 0x02256220
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, _02256284 ; =0x00005B78
	str r3, [r5, #0xc]
	mov r0, #0
	strb r0, [r5, r1]
	mov r6, #1
	add r3, r1, #1
	strb r6, [r5, r3]
	add r3, r1, #2
	strb r0, [r5, r3]
	add r0, r1, #4
	add r0, r5, r0
	add r1, r5, #4
	bl ov41_022567B0
	cmp r0, #0
	beq _0225627C
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	add r0, r5, #4
	bl ov41_02256790
	mov r0, #8
	str r0, [sp]
	ldr r0, _02256288 ; =0x02256D68
	ldr r2, _0225628C ; =ov41_02256300
	mov r1, #3
	add r3, r5, #0
	bl FUN_02255ACC
	ldr r1, _02256290 ; =0x00005B84
	mov r2, #0
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	sub r0, r1, #4
	str r4, [r5, r0]
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_0225627C:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02256284: .word 0x00005B78
_02256288: .word 0x02256D68
_0225628C: .word ov41_02256300
_02256290: .word 0x00005B84
	thumb_func_end ov41_02256220

	thumb_func_start ov41_02256294
ov41_02256294: ; 0x02256294
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022562B0 ; =0x00005B84
	ldr r0, [r4, r0]
	bl FUN_02255B34
	ldr r0, _022562B4 ; =0x00005B7C
	ldr r0, [r4, r0]
	bl ov41_022567F8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
_022562B0: .word 0x00005B84
_022562B4: .word 0x00005B7C
	thumb_func_end ov41_02256294

	thumb_func_start ov41_022562B8
ov41_022562B8: ; 0x022562B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562F4
	ldr r1, _022562F8 ; =0x00005B80
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _022562FC ; =0x02256D74
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562F4
	add r0, r4, #0
	bl ov41_02256294
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, _022562F8 ; =0x00005B80
	ldr r0, [r4, r0]
	bl FUN_02254260
_022562F4:
	pop {r3, r4, r5, pc}
	nop
_022562F8: .word 0x00005B80
_022562FC: .word 0x02256D74
	thumb_func_end ov41_022562B8

	thumb_func_start ov41_02256300
ov41_02256300: ; 0x02256300
	ldr r2, _0225630C ; =0x00005B88
	str r1, [r3, r2]
	add r1, r2, #4
	str r0, [r3, r1]
	bx lr
	nop
_0225630C: .word 0x00005B88
	thumb_func_end ov41_02256300

	thumb_func_start ov41_02256310
ov41_02256310: ; 0x02256310
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov41_02256310

	thumb_func_start ov41_02256318
ov41_02256318: ; 0x02256318
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256320
	b _02256322
_02256320:
	mov r1, #2
_02256322:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov41_02256318

	thumb_func_start ov41_0225632C
ov41_0225632C: ; 0x0225632C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225633C
	cmp r0, #1
	beq _0225634E
	b _0225636C
_0225633C:
	ldr r0, _02256370 ; =0x00005B7C
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov41_0225688C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225636C
_0225634E:
	ldr r0, _02256370 ; =0x00005B7C
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov41_022568B0
	cmp r0, #0
	beq _0225636C
	ldr r0, _02256374 ; =0x00005B80
	ldr r0, [r4, r0]
	bl FUN_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov41_02256318
_0225636C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02256370: .word 0x00005B7C
_02256374: .word 0x00005B80
	thumb_func_end ov41_0225632C

	thumb_func_start ov41_02256378
ov41_02256378: ; 0x02256378
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _0225638A
	mov r1, #2
	bl ov41_02256318
_0225638A:
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhi _022563B0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225639C: ; jump table
	.short _022563A4 - _0225639C - 2 ; case 0
	.short _02256474 - _0225639C - 2 ; case 1
	.short _022564CE - _0225639C - 2 ; case 2
	.short _022564FC - _0225639C - 2 ; case 3
_022563A4:
	ldr r0, _0225654C ; =0x00005B80
	ldr r0, [r4, r0]
	bl FUN_0225450C
	cmp r0, #0
	beq _022563B2
_022563B0:
	b _02256544
_022563B2:
	ldr r1, _02256550 ; =0x00005B88
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _0225642E
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022563CC
	cmp r0, #1
	beq _02256402
	cmp r0, #2
	beq _0225640A
	b _02256426
_022563CC:
	add r0, r1, #0
	mov r3, #1
	sub r0, #0x10
	strb r3, [r4, r0]
	add r0, r1, #0
	mov r2, #0
	sub r0, #0xf
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xe
	sub r1, #0xc
	strb r3, [r4, r0]
	ldr r0, [r4, r1]
	mov r1, #5
	bl ov41_0225688C
	ldr r0, _02256554 ; =0x00005B7C
	mov r1, #7
	ldr r0, [r4, r0]
	bl ov41_0225688C
	ldr r0, _02256558 ; =0x00000663
	bl FUN_02254424
	mov r0, #1
	strb r0, [r4, #1]
	b _02256426
_02256402:
	ldr r0, _0225655C ; =0x0000066E
	bl FUN_02254424
	b _02256426
_0225640A:
	add r0, r1, #0
	mov r2, #1
	sub r0, #0xe
	sub r1, #0xc
	strb r2, [r4, r0]
	ldr r0, [r4, r1]
	mov r1, #5
	bl ov41_0225688C
	ldr r0, _02256558 ; =0x00000663
	bl FUN_02254424
	mov r0, #3
	strb r0, [r4, #1]
_02256426:
	ldr r0, _02256550 ; =0x00005B88
	mov r1, #0
	str r1, [r4, r0]
	b _02256544
_0225642E:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0225645A
	add r0, r4, #0
	ldr r6, [r4, #4]
	ldr r5, [r4, #8]
	bl ov41_022565C4
	cmp r0, #0
	beq _02256454
	ldr r0, [r4, #8]
	add r1, r6, #0
	str r0, [sp]
	ldr r3, [r4, #4]
	add r0, r4, #0
	add r2, r5, #0
	bl ov41_02256610
	b _02256544
_02256454:
	mov r0, #0
	strb r0, [r4, #3]
	b _02256544
_0225645A:
	add r0, r4, #0
	bl ov41_02256564
	cmp r0, #0
	beq _02256544
	ldr r0, _02256554 ; =0x00005B7C
	mov r1, #3
	ldr r0, [r4, r0]
	bl ov41_0225688C
	mov r0, #1
	strb r0, [r4, #3]
	b _02256544
_02256474:
	ldr r1, _02256550 ; =0x00005B88
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _02256544
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225648C
	cmp r0, #1
	beq _02256494
	cmp r0, #2
	bne _022564C6
_0225648C:
	ldr r0, _0225655C ; =0x0000066E
	bl FUN_02254424
	b _022564C6
_02256494:
	add r0, r1, #0
	mov r2, #1
	sub r0, #0x10
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xf
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xe
	sub r1, #0xc
	strb r2, [r4, r0]
	ldr r0, [r4, r1]
	mov r1, #5
	bl ov41_0225688C
	ldr r0, _02256554 ; =0x00005B7C
	mov r1, #8
	ldr r0, [r4, r0]
	bl ov41_0225688C
	ldr r0, _02256558 ; =0x00000663
	bl FUN_02254424
	mov r0, #2
	strb r0, [r4, #1]
_022564C6:
	ldr r0, _02256550 ; =0x00005B88
	mov r1, #0
	str r1, [r4, r0]
	b _02256544
_022564CE:
	ldr r0, _02256554 ; =0x00005B7C
	mov r1, #8
	ldr r0, [r4, r0]
	bl ov41_022568B0
	cmp r0, #0
	beq _02256544
	ldr r0, _02256560 ; =0x00005B78
	mov r3, #0
	strb r3, [r4, r0]
	mov r2, #1
	add r1, r0, #1
	strb r2, [r4, r1]
	add r1, r0, #2
	strb r3, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov41_0225688C
	mov r0, #0
	strb r0, [r4, #1]
	b _02256544
_022564FC:
	ldr r1, _02256550 ; =0x00005B88
	ldr r0, [r4, r1]
	cmp r0, #2
	bne _0225651C
	add r0, r1, #0
	mov r2, #0
	sub r0, #0xe
	sub r1, #0xc
	strb r2, [r4, r0]
	ldr r0, [r4, r1]
	mov r1, #5
	bl ov41_0225688C
	mov r0, #0
	strb r0, [r4, #1]
	b _02256544
_0225651C:
	cmp r0, #3
	bne _02256544
	mov r0, #0
	sub r1, #0xe
	strb r0, [r4, r1]
	add r0, r4, #4
	bl ov41_02256790
	ldr r0, _02256554 ; =0x00005B7C
	mov r1, #5
	ldr r0, [r4, r0]
	bl ov41_0225688C
	ldr r0, _02256554 ; =0x00005B7C
	mov r1, #6
	ldr r0, [r4, r0]
	bl ov41_0225688C
	mov r0, #0
	strb r0, [r4, #1]
_02256544:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0225654C: .word 0x00005B80
_02256550: .word 0x00005B88
_02256554: .word 0x00005B7C
_02256558: .word 0x00000663
_0225655C: .word 0x0000066E
_02256560: .word 0x00005B78
	thumb_func_end ov41_02256378

	thumb_func_start ov41_02256564
ov41_02256564: ; 0x02256564
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_0225446C
	cmp r0, #0
	beq _022565BE
	ldr r1, [sp, #4]
	ldr r2, [sp]
	sub r1, #0x10
	sub r2, #0x10
	cmp r1, #0x9b
	bhs _02256586
	mov r0, #1
	b _02256588
_02256586:
	mov r0, #0
_02256588:
	cmp r2, #0x95
	bhs _02256590
	mov r3, #1
	b _02256592
_02256590:
	mov r3, #0
_02256592:
	tst r0, r3
	beq _022565BE
	lsr r3, r1, #1
	lsr r1, r2, #1
	add r2, r4, #0
	mov r0, #0x96
	add r2, #0x10
	mul r0, r3
	str r3, [sp, #4]
	str r1, [sp]
	add r2, r2, r0
	ldrb r0, [r2, r1]
	cmp r0, #0
	bne _022565BE
	mov r0, #1
	strb r0, [r2, r1]
	ldr r1, [sp, #4]
	str r1, [r4, #4]
	ldr r1, [sp]
	add sp, #8
	str r1, [r4, #8]
	pop {r4, pc}
_022565BE:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov41_02256564

	thumb_func_start ov41_022565C4
ov41_022565C4: ; 0x022565C4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_0225446C
	cmp r0, #0
	beq _0225660A
	ldr r1, [sp, #4]
	ldr r2, [sp]
	sub r1, #0x10
	sub r2, #0x10
	cmp r1, #0x9b
	bhs _022565E6
	mov r0, #1
	b _022565E8
_022565E6:
	mov r0, #0
_022565E8:
	cmp r2, #0x95
	bhs _022565F0
	mov r3, #1
	b _022565F2
_022565F0:
	mov r3, #0
_022565F2:
	tst r0, r3
	beq _0225660A
	lsr r1, r1, #1
	lsr r0, r2, #1
	str r1, [sp, #4]
	str r0, [sp]
	str r1, [r4, #4]
	ldr r0, [sp]
	add sp, #8
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_0225660A:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov41_022565C4

	thumb_func_start ov41_02256610
ov41_02256610: ; 0x02256610
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r2, #0
	add r5, r1, #0
	str r3, [sp]
	str r0, [sp, #0x28]
	cmp r4, r0
	bne _0225662C
	add r0, r3, #0
	cmp r5, r0
	bne _0225662C
	b _0225674C
_0225662C:
	ldr r0, [sp]
	cmp r0, r5
	bls _02256636
	sub r1, r0, r5
	b _02256638
_02256636:
	sub r1, r5, r0
_02256638:
	ldr r0, [sp, #0x28]
	cmp r0, r4
	bls _02256642
	sub r2, r0, r4
	b _02256644
_02256642:
	sub r2, r4, r0
_02256644:
	cmp r1, r2
	bls _022566C6
	ldr r0, [sp]
	cmp r0, r5
	bls _02256654
	mov r0, #1
	str r0, [sp, #4]
	b _0225665A
_02256654:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
_0225665A:
	cmp r1, #0
	beq _0225666C
	ldr r0, [sp, #0x28]
	sub r0, r0, r4
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	str r0, [sp, #0x10]
	b _02256670
_0225666C:
	mov r0, #0
	str r0, [sp, #0x10]
_02256670:
	ldr r0, [sp, #0x10]
	lsl r1, r4, #0xc
	add r7, r1, r0
	ldr r0, [sp, #4]
	add r5, r5, r0
	ldr r0, [sp]
	cmp r5, r0
	beq _02256730
	mov r1, #0x96
	add r0, r5, #0
	mul r0, r1
	add r4, r6, r0
	ldr r0, [sp, #4]
	mul r1, r0
	str r1, [sp, #0xc]
_0225668E:
	asr r1, r7, #0xc
	cmp r5, #0x9c
	bhs _022566B2
	cmp r1, #0x96
	bhs _022566B2
	add r0, r4, r1
	ldrb r2, [r0, #0x10]
	cmp r2, #0
	bne _022566B2
	mov r2, #0
	strb r2, [r0, #0x10]
	str r5, [r6, #4]
	str r1, [r6, #8]
	ldr r0, _02256750 ; =0x00005B7C
	mov r1, #3
	ldr r0, [r6, r0]
	bl ov41_0225688C
_022566B2:
	ldr r0, [sp, #0xc]
	add r4, r4, r0
	ldr r0, [sp, #4]
	add r5, r5, r0
	ldr r0, [sp, #0x10]
	add r7, r7, r0
	ldr r0, [sp]
	cmp r5, r0
	bne _0225668E
	b _02256730
_022566C6:
	ldr r0, [sp, #0x28]
	cmp r0, r4
	bls _022566D0
	mov r7, #1
	b _022566D4
_022566D0:
	mov r7, #0
	mvn r7, r7
_022566D4:
	cmp r2, #0
	beq _022566E8
	ldr r0, [sp]
	add r1, r2, #0
	sub r0, r0, r5
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	str r0, [sp, #8]
	b _022566EC
_022566E8:
	mov r0, #0
	str r0, [sp, #8]
_022566EC:
	ldr r0, [sp, #8]
	lsl r1, r5, #0xc
	add r5, r1, r0
	ldr r0, [sp, #0x28]
	add r4, r4, r7
	cmp r4, r0
	beq _02256730
_022566FA:
	asr r1, r5, #0xc
	cmp r4, #0x96
	bhs _02256724
	cmp r1, #0x9c
	bhs _02256724
	mov r0, #0x96
	mul r0, r1
	add r0, r6, r0
	add r0, r0, r4
	ldrb r2, [r0, #0x10]
	cmp r2, #0
	bne _02256724
	mov r2, #1
	strb r2, [r0, #0x10]
	str r1, [r6, #4]
	ldr r0, _02256750 ; =0x00005B7C
	str r4, [r6, #8]
	ldr r0, [r6, r0]
	mov r1, #3
	bl ov41_0225688C
_02256724:
	ldr r0, [sp, #8]
	add r4, r4, r7
	add r5, r5, r0
	ldr r0, [sp, #0x28]
	cmp r4, r0
	bne _022566FA
_02256730:
	ldr r0, [sp, #0x28]
	cmp r0, #0x96
	bhs _0225674C
	ldr r0, [sp]
	cmp r0, #0x9c
	bhs _0225674C
	str r0, [r6, #4]
	ldr r0, [sp, #0x28]
	mov r1, #3
	str r0, [r6, #8]
	ldr r0, _02256750 ; =0x00005B7C
	ldr r0, [r6, r0]
	bl ov41_0225688C
_0225674C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02256750: .word 0x00005B7C
	thumb_func_end ov41_02256610

	thumb_func_start ov41_02256754
ov41_02256754: ; 0x02256754
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256764
	cmp r0, #1
	beq _02256776
	b _02256786
_02256764:
	ldr r0, _0225678C ; =0x00005B7C
	mov r1, #1
	ldr r0, [r4, r0]
	bl ov41_0225688C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256786
_02256776:
	ldr r0, _0225678C ; =0x00005B7C
	ldr r0, [r4, r0]
	bl ov41_022568BC
	cmp r0, #0
	beq _02256786
	mov r0, #1
	pop {r4, pc}
_02256786:
	mov r0, #0
	pop {r4, pc}
	nop
_0225678C: .word 0x00005B7C
	thumb_func_end ov41_02256754

	thumb_func_start ov41_02256790
ov41_02256790: ; 0x02256790
	push {r4, r5}
	mov r4, #0
	add r2, r4, #0
	add r3, r4, #0
_02256798:
	add r5, r3, #0
_0225679A:
	add r1, r0, r5
	add r5, r5, #1
	strb r2, [r1, #0xc]
	cmp r5, #0x96
	blt _0225679A
	add r4, r4, #1
	add r0, #0x96
	cmp r4, #0x9c
	blt _02256798
	pop {r4, r5}
	bx lr
	thumb_func_end ov41_02256790

	thumb_func_start ov41_022567B0
ov41_022567B0: ; 0x022567B0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x70
	bl sub_02018144
	add r4, r0, #0
	beq _022567F4
	add r0, #8
	mov r1, #4
	bl FUN_02255090
	str r5, [r4, #0]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x20]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x68
	strh r1, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov41_0225680C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022567F4
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_022567F4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_022567B0

	thumb_func_start ov41_022567F8
ov41_022567F8: ; 0x022567F8
	push {r4, lr}
	add r4, r0, #0
	beq _02256808
	bl ov41_02256864
	add r0, r4, #0
	bl sub_020181C4
_02256808:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov41_022567F8

	thumb_func_start ov41_0225680C
ov41_0225680C: ; 0x0225680C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r7, r0, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x59
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x34
	mov r1, #0xc
	mov r2, #0x57
	mov r3, #0x58
	bl FUN_02255958
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, #0x34
	ldr r4, _02256860 ; =0x02256DC0
	mov r6, #0
	add r5, r7, #0
	str r0, [sp, #0xc]
_02256846:
	ldr r0, [r7, #0x20]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	bl FUN_02255810
	str r0, [r5, #0x24]
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #4
	blt _02256846
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256860: .word 0x02256DC0
	thumb_func_end ov41_0225680C

	thumb_func_start ov41_02256864
ov41_02256864: ; 0x02256864
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0225686C:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _02256878
	ldr r0, [r6, #0x20]
	bl FUN_022558B0
_02256878:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225686C
	add r6, #0x34
	add r0, r6, #0
	bl FUN_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov41_02256864

	thumb_func_start ov41_0225688C
ov41_0225688C: ; 0x0225688C
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022568AC ; =0x02256E00
	ldr r3, [r2, #0]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022568AC: .word 0x02256E00
	thumb_func_end ov41_0225688C

	thumb_func_start ov41_022568B0
ov41_022568B0: ; 0x022568B0
	ldr r3, _022568B8 ; =FUN_02255130
	add r0, #8
	bx r3
	nop
_022568B8: .word FUN_02255130
	thumb_func_end ov41_022568B0

	thumb_func_start ov41_022568BC
ov41_022568BC: ; 0x022568BC
	ldr r3, _022568C4 ; =FUN_02255154
	add r0, #8
	bx r3
	nop
_022568C4: .word FUN_02255154
	thumb_func_end ov41_022568BC

	thumb_func_start ov41_022568C8
ov41_022568C8: ; 0x022568C8
	push {r4, lr}
	add r4, r0, #0
	bl FUN_0225523C
	add r0, #8
	add r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov41_022568C8

	thumb_func_start ov41_022568DC
ov41_022568DC: ; 0x022568DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	mov r0, #8
	add r5, r1, #0
	bl sub_0201833C
	cmp r0, #0
	bne _022568F0
	bl sub_02022974
_022568F0:
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _022569AC ; =0x02256D88
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #4]
	ldr r2, _022569B0 ; =0x02256DA4
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _0225691E
	bl sub_02022974
_0225691E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0xc
	mov r1, #0x56
	mov r3, #6
	bl sub_02006E3C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0xc
	mov r1, #0x55
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl FUN_022546B8
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _0225696A
	bl sub_02022974
_0225696A:
	add r0, r4, #0
	lsr r1, r6, #5
	bl ov41_022569BC
	ldr r0, [r4, #4]
	mov r1, #7
	bl sub_02019448
	ldr r1, _022569B4 ; =0x04001000
	ldr r0, _022569B8 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #0x14
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r5, #0
	bl ov41_022568C8
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _022569A8
	bl sub_02022974
_022569A8:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022569AC: .word 0x02256D88
_022569B0: .word 0x02256DA4
_022569B4: .word 0x04001000
_022569B8: .word 0xFFFFE0FF
	thumb_func_end ov41_022568DC

	thumb_func_start ov41_022569BC
ov41_022569BC: ; 0x022569BC
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _02256A18 ; =0x02256D80
	add r4, r0, #0
	ldrh r5, [r3]
	add r0, sp, #0
	add r2, sp, #0
	strh r5, [r0]
	ldrh r5, [r3, #2]
	strh r5, [r0, #2]
	ldrh r5, [r3, #4]
	ldrh r3, [r3, #6]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	str r1, [r4, #0x58]
	strh r1, [r0, #6]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	bl sub_0201A8D4
	ldr r0, [r4, #0]
	mov r2, #0xbe
	ldr r0, [r0, #8]
	ldr r1, [r4, #0x54]
	lsl r2, r2, #6
	bl sub_02099DD0
	cmp r0, #0
	bne _02256A02
	add r0, r4, #0
	add r0, #0x48
	mov r1, #4
	bl sub_0201ADA4
_02256A02:
	add r0, r4, #0
	add r0, #0x48
	bl sub_0201A9F4
	add r4, #0x48
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02256A18: .word 0x02256D80
	thumb_func_end ov41_022569BC

	thumb_func_start ov41_02256A1C
ov41_02256A1C: ; 0x02256A1C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256A38
	cmp r0, #1
	beq _02256A44
	pop {r3, r4, r5, pc}
_02256A38:
	mov r0, #1
	str r0, [r4, #0x5c]
	add r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256A44:
	ldr r0, [r4, #0]
	mov r2, #0xbe
	ldr r0, [r0, #8]
	ldr r1, [r4, #0x54]
	lsl r2, r2, #6
	bl sub_02099DA8
	add r0, r4, #0
	add r0, #0x48
	bl sub_0201A8FC
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #7
	bl sub_02019044
	add r0, r5, #0
	bl ov41_022568C8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov41_02256A1C

	thumb_func_start ov41_02256A74
ov41_02256A74: ; 0x02256A74
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl FUN_0225523C
	add r0, #0x48
	bl sub_0201ACCC
	add r0, r4, #0
	bl ov41_022568C8
	pop {r4, pc}
	thumb_func_end ov41_02256A74

	thumb_func_start ov41_02256A8C
ov41_02256A8C: ; 0x02256A8C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r0, r6, #0
	bl FUN_0225523C
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, [r1, #0]
	lsl r2, r0, #1
	ldr r0, [r1, #4]
	mov r1, #0x14
	lsl r3, r0, #1
	asr r5, r3, #3
	asr r0, r2, #3
	mul r1, r5
	add r5, r0, r1
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x48
	mov r1, #1
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE78
	ldr r1, [r4, #0x54]
	lsl r0, r5, #5
	add r0, r1, r0
	ldr r1, [r4, #0x58]
	mov r2, #0x20
	add r1, r1, r5
	lsl r1, r1, #5
	bl sub_020C090C
	add r0, r6, #0
	bl ov41_022568C8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov41_02256A8C

	thumb_func_start ov41_02256AE4
ov41_02256AE4: ; 0x02256AE4
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl FUN_0225523C
	add r0, #0x48
	bl sub_0201ACCC
	add r0, r4, #0
	bl ov41_022568C8
	pop {r4, pc}
	thumb_func_end ov41_02256AE4

	thumb_func_start ov41_02256AFC
ov41_02256AFC: ; 0x02256AFC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r6, #0
	bl FUN_02255240
	add r5, r0, #0
	ldr r0, _02256B54 ; =0x00005B74
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256B1C
	mov r1, #2
	b _02256B1E
_02256B1C:
	mov r1, #1
_02256B1E:
	ldr r0, [r4, #0x28]
	bl FUN_022558C4
	ldr r0, _02256B58 ; =0x00005B75
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256B30
	mov r1, #4
	b _02256B32
_02256B30:
	mov r1, #3
_02256B32:
	ldr r0, [r4, #0x2c]
	bl FUN_022558C4
	ldr r0, _02256B5C ; =0x00005B76
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256B44
	mov r1, #6
	b _02256B46
_02256B44:
	mov r1, #5
_02256B46:
	ldr r0, [r4, #0x30]
	bl FUN_022558C4
	add r0, r6, #0
	bl ov41_022568C8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256B54: .word 0x00005B74
_02256B58: .word 0x00005B75
_02256B5C: .word 0x00005B76
	thumb_func_end ov41_02256AFC

	thumb_func_start ov41_02256B60
ov41_02256B60: ; 0x02256B60
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r0, r4, #0
	add r0, #0x48
	mov r1, #4
	bl sub_0201ADA4
	add r4, #0x48
	add r0, r4, #0
	bl sub_0201ACCC
	add r0, r5, #0
	bl ov41_022568C8
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02256B60

	thumb_func_start ov41_02256B8C
ov41_02256B8C: ; 0x02256B8C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256BB6
	ldr r1, [r4, #0x5c]
	cmp r1, #0
	beq _02256BB6
	add r0, r5, #0
	bl ov41_022568C8
	pop {r3, r4, r5, pc}
_02256BB6:
	cmp r0, #4
	bls _02256BBC
	b _02256D1A
_02256BBC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02256BC8: ; jump table
	.short _02256BD2 - _02256BC8 - 2 ; case 0
	.short _02256C06 - _02256BC8 - 2 ; case 1
	.short _02256C58 - _02256BC8 - 2 ; case 2
	.short _02256CA2 - _02256BC8 - 2 ; case 3
	.short _02256CD6 - _02256BC8 - 2 ; case 4
_02256BD2:
	add r0, r4, #0
	add r0, #0x68
	ldrh r0, [r0]
	mov r1, #0x15
	lsl r1, r1, #4
	add r2, r0, r1
	add r0, r4, #0
	add r0, #0x68
	strh r2, [r0]
	add r0, r4, #0
	add r0, #0x6a
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl FUN_02255950
	mov r0, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x60]
	str r0, [r4, #0x5c]
	add r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256C06:
	add r0, r4, #0
	add r0, #0x68
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x68
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl FUN_02255950
	add r0, r4, #0
	add r0, #0x6a
	ldrh r1, [r0]
	mov r0, #0x15
	lsl r0, r0, #4
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x6a
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	mov r1, #3
	ldrh r0, [r0]
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _02256D1A
	add r0, r4, #0
	add r0, #0x6a
	strh r1, [r0]
	mov r0, #1
	str r0, [r4, #0x64]
	add r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256C58:
	add r0, r4, #0
	add r0, #0x68
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x68
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl FUN_02255950
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _02256D1A
	bl sub_0201D35C
	mov r1, #7
	and r0, r1
	str r0, [r4, #0x6c]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r1, [r0]
	mov r0, #0x1a
	lsl r0, r0, #8
	cmp r1, r0
	bls _02256C9A
	add r4, #0x6a
	strh r0, [r4]
_02256C9A:
	add r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256CA2:
	add r0, r4, #0
	add r0, #0x68
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x68
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl FUN_02255950
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _02256CCE
	sub r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r3, r4, r5, pc}
_02256CCE:
	add r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256CD6:
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	cmp r0, #0x50
	bls _02256D0E
	add r0, r4, #0
	add r0, #0x6a
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	sub r1, #0x50
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x68
	strh r1, [r0]
	ldr r0, [r4, #0x24]
	add r4, #0x68
	ldrh r1, [r4]
	bl FUN_02255950
	pop {r3, r4, r5, pc}
_02256D0E:
	mov r0, #0
	add r4, #0x6a
	strh r0, [r4]
	add r0, r5, #0
	bl ov41_022568C8
_02256D1A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02256B8C

	thumb_func_start ov41_02256D1C
ov41_02256D1C: ; 0x02256D1C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256D3E
	cmp r0, #1
	beq _02256D4A
	pop {r3, r4, r5, pc}
_02256D3E:
	mov r0, #1
	str r0, [r4, #0x60]
	add r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256D4A:
	add r0, r4, #0
	mov r1, #7
	bl ov41_022568B0
	cmp r0, #0
	beq _02256D62
	ldr r0, _02256D64 ; =0x0000066A
	bl FUN_02254424
	add r0, r5, #0
	bl ov41_022568C8
_02256D62:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256D64: .word 0x0000066A
	thumb_func_end ov41_02256D1C
	; 0x02256D68

	.incbin "data/overlay41.bin"