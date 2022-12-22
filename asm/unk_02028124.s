	.include "macros/function.inc"
	.include "include/unk_02028124.inc"

	

	.text


	thumb_func_start sub_02028124
sub_02028124: ; 0x02028124
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	strb r0, [r4, #4]
	ldr r0, _02028170 ; =0x020E4C44
	mov r1, #8
	ldrb r0, [r0]
	strb r0, [r4, #5]
	ldr r0, _02028174 ; =0x020E4C40
	ldrb r0, [r0]
	strb r0, [r4, #6]
	mov r0, #0xff
	strb r0, [r4, #7]
	add r0, r4, #0
	add r0, #8
	bl sub_02002294
	ldr r0, _02028178 ; =0x0000FFFF
	mov r1, #0
	add r2, r4, #0
_0202814E:
	add r1, r1, #1
	strh r0, [r2, #0x18]
	add r2, r2, #2
	cmp r1, #3
	blt _0202814E
	mov r5, #0
	strh r5, [r4, #0x1e]
	add r4, #0x20
_0202815E:
	add r0, r4, #0
	bl sub_02014A84
	add r5, r5, #1
	add r4, #8
	cmp r5, #3
	blt _0202815E
	pop {r3, r4, r5, pc}
	nop
_02028170: .word 0x020E4C44
_02028174: .word 0x020E4C40
_02028178: .word 0x0000FFFF
	thumb_func_end sub_02028124

	thumb_func_start sub_0202817C
sub_0202817C: ; 0x0202817C
	ldrb r0, [r0, #7]
	cmp r0, #0xb
	bhi _02028186
	mov r0, #1
	bx lr
_02028186:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202817C

	thumb_func_start sub_0202818C
sub_0202818C: ; 0x0202818C
	push {r4, lr}
	mov r1, #0x38
	bl sub_02018184
	add r4, r0, #0
	bl sub_02028124
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202818C

	thumb_func_start sub_020281A0
sub_020281A0: ; 0x020281A0
	ldr r3, _020281A8 ; =MI_CpuCopy8
	mov r2, #0x38
	bx r3
	nop
_020281A8: .word MI_CpuCopy8
	thumb_func_end sub_020281A0

	thumb_func_start sub_020281AC
sub_020281AC: ; 0x020281AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r5, r1, #0
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_02028124
	ldr r0, [sp]
	strb r5, [r0, #7]
	add r0, r4, #0
	bl sub_0207A268
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02025E38
	add r4, r0, #0
	bl sub_02025EF0
	add r1, r0, #0
	ldr r0, [sp]
	add r0, #8
	bl sub_020021B0
	add r0, r4, #0
	bl sub_02025F30
	ldr r1, [sp]
	strb r0, [r1, #4]
	add r0, r4, #0
	bl sub_02025F20
	ldr r1, [sp]
	mov r7, #0
	str r0, [r1, #0]
	add r0, r1, #0
	strh r7, [r0, #0x1e]
	ldr r0, [sp, #0xc]
	bl sub_0207A0F8
	ldr r1, [sp, #4]
	cmp r1, r0
	bge _020282F8
_02028204:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02079D80
	add r5, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	add r1, r4, #0
	bl sub_02079EDC
	ldr r1, [sp]
	mov ip, r0
	lsl r2, r7, #1
	add r1, #0x18
	ldrh r3, [r1, r2]
	ldr r0, _020282FC ; =0xFFFFF000
	and r0, r3
	lsl r3, r5, #0x10
	lsr r5, r3, #0x10
	ldr r3, _020282FC ; =0xFFFFF000
	lsr r3, r3, #0x14
	and r3, r5
	orr r0, r3
	strh r0, [r1, r2]
	ldrh r3, [r1, r2]
	ldr r0, _02028300 ; =0xFFFF0FFF
	and r0, r3
	mov r3, ip
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x10
	orr r0, r3
	strh r0, [r1, r2]
	ldrh r1, [r1, r2]
	ldr r2, _02028304 ; =0x020E5B0C
	mov r0, #0
	lsl r1, r1, #0x14
	lsr r3, r1, #0x14
_0202827C:
	lsl r1, r0, #3
	add r1, r2, r1
	ldrh r5, [r1, #2]
	cmp r5, r3
	bne _020282CE
	ldrb r5, [r1, #6]
	cmp r4, r5
	bne _020282CE
	ldr r4, [sp]
	lsl r6, r7, #1
	add r4, #0x18
	ldrh r0, [r4, r6]
	ldr r2, _020282FC ; =0xFFFFF000
	ldrh r1, [r1]
	and r0, r2
	lsr r2, r2, #0x14
	and r1, r2
	orr r0, r1
	strh r0, [r4, r6]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r1, #0
	bl sub_02079EDC
	lsl r0, r0, #0x1c
	ldrh r2, [r4, r6]
	ldr r1, _02028300 ; =0xFFFF0FFF
	lsr r0, r0, #0x10
	and r1, r2
	orr r0, r1
	strh r0, [r4, r6]
	ldr r0, [sp]
	add r1, r5, #0
	ldrh r2, [r0, #0x1e]
	lsl r0, r7, #2
	add r0, r7, r0
	lsl r1, r0
	ldr r0, [sp]
	orr r1, r2
	strh r1, [r0, #0x1e]
	b _020282D8
_020282CE:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #7
	blo _0202827C
_020282D8:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #3
	bhs _020282F8
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	bl sub_0207A0F8
	ldr r1, [sp, #4]
	cmp r1, r0
	blt _02028204
_020282F8:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020282FC: .word 0xFFFFF000
_02028300: .word 0xFFFF0FFF
_02028304: .word 0x020E5B0C
	thumb_func_end sub_020281AC

	thumb_func_start sub_02028308
sub_02028308: ; 0x02028308
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02028308

	thumb_func_start sub_0202830C
sub_0202830C: ; 0x0202830C
	add r0, #8
	bx lr
	thumb_func_end sub_0202830C

	thumb_func_start sub_02028310
sub_02028310: ; 0x02028310
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end sub_02028310

	thumb_func_start sub_02028314
sub_02028314: ; 0x02028314
	ldrb r0, [r0, #7]
	bx lr
	thumb_func_end sub_02028314

	thumb_func_start sub_02028318
sub_02028318: ; 0x02028318
	cmp r1, #0xc
	bhs _0202831E
	strb r1, [r0, #7]
_0202831E:
	bx lr
	thumb_func_end sub_02028318

	thumb_func_start sub_02028320
sub_02028320: ; 0x02028320
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end sub_02028320

	thumb_func_start sub_02028324
sub_02028324: ; 0x02028324
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end sub_02028324

	thumb_func_start sub_02028328
sub_02028328: ; 0x02028328
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r2, #0
	cmp r1, #3
	bhs _020283E4
	lsl r2, r1, #1
	add r0, r0, r2
	ldrh r5, [r0, #0x18]
	lsl r6, r1, #2
	add r1, r1, r6
	add r0, sp, #0
	strh r5, [r0]
	asr r3, r1
	lsl r5, r5, #0x14
	mov r1, #0x1f
	ldr r2, _020283EC ; =0x020E5B0C
	mov r0, #0
	lsr r5, r5, #0x14
	and r3, r1
_0202834E:
	ldrh r1, [r2]
	cmp r5, r1
	bne _02028390
	ldrb r1, [r2, #6]
	cmp r1, r3
	bne _02028390
	add r3, sp, #0
	lsl r1, r0, #3
	ldr r5, _020283F0 ; =0x020E5B0E
	ldrh r0, [r3]
	ldr r2, _020283F4 ; =0xFFFFF000
	ldrh r5, [r5, r1]
	and r0, r2
	lsr r2, r2, #0x14
	and r2, r5
	orr r0, r2
	strh r0, [r3]
	ldr r0, _020283F8 ; =0x020E5B10
	ldr r2, _020283FC ; =0x020E5B12
	ldrh r0, [r0, r1]
	ldrb r1, [r2, r1]
	mov r2, #0
	bl sub_02079EDC
	add r2, sp, #0
	lsl r0, r0, #0x1c
	ldrh r3, [r2]
	ldr r1, _02028400 ; =0xFFFF0FFF
	lsr r0, r0, #0x10
	and r1, r3
	orr r0, r1
	strh r0, [r2]
	b _02028398
_02028390:
	add r0, r0, #1
	add r2, #8
	cmp r0, #7
	blo _0202834E
_02028398:
	add r1, sp, #0
	ldrh r2, [r1]
	lsl r0, r2, #0x14
	lsr r3, r0, #0x14
	ldr r0, _02028404 ; =0x00000222
	cmp r3, r0
	bls _020283B8
	ldr r0, _020283F4 ; =0xFFFFF000
	and r2, r0
	mov r0, #7
	orr r0, r2
	strh r0, [r1]
	ldrh r2, [r1]
	ldr r0, _02028400 ; =0xFFFF0FFF
	and r0, r2
	strh r0, [r1]
_020283B8:
	cmp r4, #0
	beq _020283C4
	cmp r4, #1
	beq _020283D0
	cmp r4, #2
	b _020283DC
_020283C4:
	add r0, sp, #0
	ldrh r0, [r0]
	add sp, #4
	lsl r0, r0, #0x14
	lsr r0, r0, #0x14
	pop {r3, r4, r5, r6, pc}
_020283D0:
	add r0, sp, #0
	ldrh r0, [r0]
	add sp, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1c
	pop {r3, r4, r5, r6, pc}
_020283DC:
	add r0, sp, #0
	add sp, #4
	ldrh r0, [r0]
	pop {r3, r4, r5, r6, pc}
_020283E4:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_020283EC: .word 0x020E5B0C
_020283F0: .word 0x020E5B0E
_020283F4: .word 0xFFFFF000
_020283F8: .word 0x020E5B10
_020283FC: .word 0x020E5B12
_02028400: .word 0xFFFF0FFF
_02028404: .word 0x00000222
	thumb_func_end sub_02028328

	thumb_func_start sub_02028408
sub_02028408: ; 0x02028408
	ldrh r0, [r0, #0x1e]
	bx lr
	thumb_func_end sub_02028408

	thumb_func_start sub_0202840C
sub_0202840C: ; 0x0202840C
	cmp r1, #3
	bhs _02028418
	add r0, #0x20
	lsl r1, r1, #3
	add r0, r0, r1
	bx lr
_02028418:
	add r0, #0x20
	bx lr
	thumb_func_end sub_0202840C

	thumb_func_start sub_0202841C
sub_0202841C: ; 0x0202841C
	push {r3, lr}
	cmp r2, #3
	bhs _0202842C
	add r0, #0x20
	lsl r2, r2, #3
	add r0, r0, r2
	bl sub_02014CC0
_0202842C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202841C

	thumb_func_start sub_02028430
sub_02028430: ; 0x02028430
	ldr r3, _02028438 ; =sub_020245BC
	mov r1, #0xf
	bx r3
	nop
_02028438: .word sub_020245BC
	thumb_func_end sub_02028430

	thumb_func_start sub_0202843C
sub_0202843C: ; 0x0202843C
	mov r0, #0x46
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202843C

	thumb_func_start sub_02028444
sub_02028444: ; 0x02028444
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0202844A:
	add r0, r5, #0
	bl sub_02028124
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #0x14
	blt _0202844A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02028444

	thumb_func_start sub_0202845C
sub_0202845C: ; 0x0202845C
	push {r3, lr}
	cmp r1, #0
	bne _0202846A
	mov r1, #0x14
	bl sub_020284E8
	pop {r3, pc}
_0202846A:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end sub_0202845C

	thumb_func_start sub_02028470
sub_02028470: ; 0x02028470
	push {r3, lr}
	bl sub_02028538
	cmp r0, #0
	beq _0202847E
	bl sub_02028124
_0202847E:
	pop {r3, pc}
	thumb_func_end sub_02028470

	thumb_func_start sub_02028480
sub_02028480: ; 0x02028480
	push {r4, lr}
	add r4, r3, #0
	bl sub_02028538
	add r1, r0, #0
	beq _02028492
	add r0, r4, #0
	bl sub_020281A0
_02028492:
	pop {r4, pc}
	thumb_func_end sub_02028480

	thumb_func_start sub_02028494
sub_02028494: ; 0x02028494
	push {r3, lr}
	cmp r1, #0
	bne _020284A2
	mov r1, #0x14
	bl sub_02028510
	pop {r3, pc}
_020284A2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02028494

	thumb_func_start sub_020284A8
sub_020284A8: ; 0x020284A8
	push {r3, r4, r5, lr}
	add r5, r3, #0
	bl sub_02028538
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202818C
	add r5, r0, #0
	cmp r4, #0
	beq _020284C6
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020281A0
_020284C6:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020284A8

	thumb_func_start sub_020284CC
sub_020284CC: ; 0x020284CC
	push {r4, lr}
	add r4, r3, #0
	bl sub_02028538
	cmp r0, #0
	bne _020284E0
	add r0, r4, #0
	bl sub_02028124
	pop {r4, pc}
_020284E0:
	add r1, r4, #0
	bl sub_020281A0
	pop {r4, pc}
	thumb_func_end sub_020284CC

	thumb_func_start sub_020284E8
sub_020284E8: ; 0x020284E8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0202850A
_020284F4:
	add r0, r5, #0
	bl sub_0202817C
	cmp r0, #0
	bne _02028502
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02028502:
	add r4, r4, #1
	add r5, #0x38
	cmp r4, r6
	blt _020284F4
_0202850A:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020284E8

	thumb_func_start sub_02028510
sub_02028510: ; 0x02028510
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r7, r1, #0
	add r5, r0, #0
	add r6, r4, #0
	cmp r7, #0
	ble _02028532
_0202851E:
	add r0, r5, #0
	bl sub_0202817C
	cmp r0, #0
	beq _0202852A
	add r4, r4, #1
_0202852A:
	add r6, r6, #1
	add r5, #0x38
	cmp r6, r7
	blt _0202851E
_02028532:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02028510

	thumb_func_start sub_02028538
sub_02028538: ; 0x02028538
	mov r3, #0
	cmp r1, #0
	bne _02028548
	cmp r2, #0x14
	bge _02028548
	mov r1, #0x38
	mul r1, r2
	add r3, r0, r1
_02028548:
	add r0, r3, #0
	bx lr
	thumb_func_end sub_02028538

	.rodata


	.global Unk_020E5B0C
Unk_020E5B0C: ; 0x020E5B0C
	.incbin "incbin/arm9_rodata.bin", 0xECC, 0x38

