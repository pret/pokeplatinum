	.include "macros/function.inc"
	.include "include/unk_0200112C.inc"

	

	.text


	thumb_func_start sub_0200112C
sub_0200112C: ; 0x0200112C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r3, #0
	mov r1, #0x38
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	add r3, r5, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	bl sub_020149F0
	str r0, [r4, #0x28]
	strh r6, [r4, #0x2c]
	add r1, r4, #0
	strh r7, [r4, #0x2e]
	mov r0, #0
	add r1, #0x30
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x31
	strb r0, [r1]
	add r1, r4, #0
	mov r2, #0xff
	add r1, #0x32
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x33
	strb r0, [r1]
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x34
	strb r0, [r1]
	add r0, r4, #0
	ldrb r1, [r4, #0x17]
	add r0, #0x20
	ldrb r2, [r0]
	lsl r1, r1, #0x18
	mov r0, #0xf
	lsr r3, r1, #0x1c
	mov r1, #0xf
	bic r2, r0
	and r3, r1
	orr r3, r2
	add r2, r4, #0
	add r2, #0x20
	strb r3, [r2]
	add r2, r4, #0
	add r2, #0x20
	ldrb r2, [r2]
	mov r3, #0xf0
	bic r2, r3
	ldrb r3, [r4, #0x18]
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x1c
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x18
	orr r3, r2
	add r2, r4, #0
	add r2, #0x20
	strb r3, [r2]
	add r2, r4, #0
	add r2, #0x21
	ldrb r2, [r2]
	bic r2, r0
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	mov r1, #0x3f
	bic r0, r1
	ldrh r1, [r4, #0x1a]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1d
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x3f
	and r1, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x22
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	mov r1, #0x7f
	bic r0, r1
	ldrh r1, [r4, #0x1a]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1a
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x7f
	and r1, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x24
	ldrb r1, [r0]
	mov r0, #0x80
	bic r1, r0
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	ldrh r1, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	cmp r1, r0
	bhs _02001230
	strh r1, [r4, #0x12]
_02001230:
	ldrb r2, [r4, #0x18]
	ldr r0, [r4, #0x28]
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	ldrb r1, [r4, #0x17]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1c
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #8
	lsr r2, r2, #0x10
	orr r1, r2
	orr r1, r3
	bl sub_02014A40
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_0201ADA4
	ldrh r1, [r4, #0x2c]
	ldrh r3, [r4, #0x12]
	add r0, r4, #0
	mov r2, #0
	bl sub_02001688
	add r0, r4, #0
	bl sub_02001720
	add r0, r4, #0
	mov r1, #1
	bl sub_02001AD8
	ldr r0, [r5, #0xc]
	bl sub_0201A954
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200112C

	thumb_func_start sub_02001288
sub_02001288: ; 0x02001288
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r6, _02001380 ; =0x021BF67C
	mov r3, #0
	add r1, #0x33
	strb r3, [r1]
	ldr r1, [r6, #0x48]
	mov r2, #1
	add r5, r1, #0
	tst r5, r2
	beq _020012B0
	ldrh r1, [r4, #0x2c]
	ldrh r0, [r4, #0x2e]
	ldr r2, [r4, #0]
	add r0, r1, r0
	lsl r0, r0, #3
	add r0, r2, r0
	ldr r0, [r0, #4]
	pop {r4, r5, r6, pc}
_020012B0:
	mov r5, #2
	tst r1, r5
	beq _020012BA
	sub r0, r5, #4
	pop {r4, r5, r6, pc}
_020012BA:
	ldr r5, [r6, #0x4c]
	mov r1, #0x40
	tst r1, r5
	beq _020012D8
	add r1, r2, #0
	bl sub_02001A18
	cmp r0, #0
	bne _020012D2
	mov r0, #1
	add r4, #0x33
	strb r0, [r4]
_020012D2:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_020012D8:
	mov r1, #0x80
	add r3, r5, #0
	tst r3, r1
	beq _020012F8
	add r1, r2, #0
	add r3, r2, #0
	bl sub_02001A18
	cmp r0, #0
	bne _020012F2
	mov r0, #2
	add r4, #0x33
	strb r0, [r4]
_020012F2:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_020012F8:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1e
	beq _02001308
	cmp r0, #1
	beq _0200130E
	cmp r0, #2
	beq _02001320
_02001308:
	mov r0, #0
	add r1, r0, #0
	b _02001330
_0200130E:
	mov r0, #0x20
	mov r1, #0x10
	and r0, r5
	and r1, r5
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	b _02001330
_02001320:
	lsl r0, r1, #2
	add r1, #0x80
	and r0, r5
	and r1, r5
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
_02001330:
	cmp r0, #0
	beq _02001354
	ldrh r2, [r4, #0x12]
	add r0, r4, #0
	mov r1, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02001A18
	cmp r0, #0
	bne _0200134E
	mov r0, #3
	add r4, #0x33
	strb r0, [r4]
_0200134E:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001354:
	cmp r1, #0
	beq _02001378
	ldrh r2, [r4, #0x12]
	mov r1, #1
	add r0, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	add r3, r1, #0
	bl sub_02001A18
	cmp r0, #0
	bne _02001372
	mov r0, #4
	add r4, #0x33
	strb r0, [r4]
_02001372:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001378:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	nop
_02001380: .word 0x021BF67C
	thumb_func_end sub_02001288

	thumb_func_start sub_02001384
sub_02001384: ; 0x02001384
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _02001390
	ldrh r0, [r4, #0x2c]
	strh r0, [r1]
_02001390:
	cmp r2, #0
	beq _02001398
	ldrh r0, [r4, #0x2e]
	strh r0, [r2]
_02001398:
	ldr r0, [r4, #0x28]
	bl sub_02014A20
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	thumb_func_end sub_02001384

	thumb_func_start sub_020013AC
sub_020013AC: ; 0x020013AC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_0201ADA4
	ldrh r1, [r4, #0x2c]
	ldrh r3, [r4, #0x12]
	add r0, r4, #0
	mov r2, #0
	bl sub_02001688
	add r0, r4, #0
	bl sub_02001720
	ldr r0, [r4, #0xc]
	bl sub_0201A954
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020013AC

	thumb_func_start sub_020013D8
sub_020013D8: ; 0x020013D8
	push {r4, r5}
	ldrb r5, [r0, #0x17]
	mov r4, #0xf0
	lsl r1, r1, #0x1c
	bic r5, r4
	lsr r1, r1, #0x18
	orr r1, r5
	strb r1, [r0, #0x17]
	ldrb r5, [r0, #0x18]
	mov r1, #0xf
	bic r5, r1
	mov r1, #0xf
	and r1, r2
	orr r1, r5
	strb r1, [r0, #0x18]
	ldrb r2, [r0, #0x18]
	lsl r1, r3, #0x1c
	lsr r1, r1, #0x18
	bic r2, r4
	orr r1, r2
	strb r1, [r0, #0x18]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020013D8

	thumb_func_start sub_02001408
sub_02001408: ; 0x02001408
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	beq _02001422
	add r5, r4, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
_02001422:
	strh r2, [r4, #0x2c]
	add r0, r4, #0
	strh r3, [r4, #0x2e]
	mov r3, #0
	add r0, #0x30
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x31
	add r1, sp, #0
	strb r3, [r0]
	ldrh r0, [r1, #0x14]
	cmp r0, #0x40
	bne _0200144C
	ldrh r1, [r1, #0x10]
	add r0, r4, #0
	mov r2, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02001A18
	b _02001460
_0200144C:
	cmp r0, #0x80
	bne _02001460
	ldrh r1, [r1, #0x10]
	mov r2, #1
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02001A18
_02001460:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0200146A
	ldrh r0, [r4, #0x2c]
	strh r0, [r1]
_0200146A:
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _02001474
	ldrh r0, [r4, #0x2e]
	strh r0, [r1]
_02001474:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02001408

	thumb_func_start sub_0200147C
sub_0200147C: ; 0x0200147C
	push {r3, r4, r5, r6}
	add r4, r0, #0
	add r4, #0x20
	ldrb r6, [r4]
	mov r4, #0xf
	mov r5, #0xf
	bic r6, r4
	and r1, r5
	orr r6, r1
	add r1, r0, #0
	add r1, #0x20
	strb r6, [r1]
	add r1, r0, #0
	add r1, #0x20
	lsl r2, r2, #0x1c
	ldrb r1, [r1]
	mov r6, #0xf0
	lsr r2, r2, #0x18
	bic r1, r6
	orr r2, r1
	add r1, r0, #0
	add r1, #0x20
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x21
	ldrb r2, [r1]
	add r1, r3, #0
	and r1, r5
	bic r2, r4
	orr r2, r1
	add r1, r0, #0
	add r1, #0x21
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x24
	ldrb r2, [r1]
	mov r1, #0x80
	add r0, #0x24
	orr r1, r2
	strb r1, [r0]
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0200147C

	thumb_func_start sub_020014D0
sub_020014D0: ; 0x020014D0
	ldrh r2, [r0, #0x2c]
	ldrh r0, [r0, #0x2e]
	add r0, r2, r0
	strh r0, [r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020014D0

	thumb_func_start sub_020014DC
sub_020014DC: ; 0x020014DC
	cmp r1, #0
	beq _020014E4
	ldrh r3, [r0, #0x2c]
	strh r3, [r1]
_020014E4:
	cmp r2, #0
	beq _020014EC
	ldrh r0, [r0, #0x2e]
	strh r0, [r2]
_020014EC:
	bx lr
	; .align 2, 0
	thumb_func_end sub_020014DC

	thumb_func_start sub_020014F0
sub_020014F0: ; 0x020014F0
	add r0, #0x33
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020014F0

	thumb_func_start sub_020014F8
sub_020014F8: ; 0x020014F8
	ldr r2, [r0, #0]
	lsl r0, r1, #3
	add r0, r2, r0
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020014F8

	thumb_func_start sub_02001504
sub_02001504: ; 0x02001504
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0x13
	bhi _020015C6
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02001518: ; jump table
	.short _02001540 - _02001518 - 2 ; case 0
	.short _02001544 - _02001518 - 2 ; case 1
	.short _02001548 - _02001518 - 2 ; case 2
	.short _0200154C - _02001518 - 2 ; case 3
	.short _020015C6 - _02001518 - 2 ; case 4
	.short _02001550 - _02001518 - 2 ; case 5
	.short _02001554 - _02001518 - 2 ; case 6
	.short _02001558 - _02001518 - 2 ; case 7
	.short _0200155C - _02001518 - 2 ; case 8
	.short _02001564 - _02001518 - 2 ; case 9
	.short _0200157E - _02001518 - 2 ; case 10
	.short _02001586 - _02001518 - 2 ; case 11
	.short _0200158E - _02001518 - 2 ; case 12
	.short _02001596 - _02001518 - 2 ; case 13
	.short _0200159E - _02001518 - 2 ; case 14
	.short _020015A6 - _02001518 - 2 ; case 15
	.short _020015AE - _02001518 - 2 ; case 16
	.short _020015B6 - _02001518 - 2 ; case 17
	.short _020015BE - _02001518 - 2 ; case 18
	.short _020015C2 - _02001518 - 2 ; case 19
_02001540:
	ldr r0, [r4, #4]
	pop {r4, pc}
_02001544:
	ldr r0, [r4, #8]
	pop {r4, pc}
_02001548:
	ldrh r0, [r4, #0x10]
	pop {r4, pc}
_0200154C:
	ldrh r0, [r4, #0x12]
	pop {r4, pc}
_02001550:
	ldrb r0, [r4, #0x14]
	pop {r4, pc}
_02001554:
	ldrb r0, [r4, #0x15]
	pop {r4, pc}
_02001558:
	ldrb r0, [r4, #0x16]
	pop {r4, pc}
_0200155C:
	ldrb r0, [r4, #0x17]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	pop {r4, pc}
_02001564:
	ldrh r0, [r4, #0x1a]
	mov r1, #1
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02002DF8
	ldrh r1, [r4, #0x1a]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1c
	add r0, r1, r0
	pop {r4, pc}
_0200157E:
	ldrb r0, [r4, #0x17]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	pop {r4, pc}
_02001586:
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	pop {r4, pc}
_0200158E:
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	pop {r4, pc}
_02001596:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	pop {r4, pc}
_0200159E:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1c
	pop {r4, pc}
_020015A6:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1e
	pop {r4, pc}
_020015AE:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	pop {r4, pc}
_020015B6:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	pop {r4, pc}
_020015BE:
	ldr r0, [r4, #0xc]
	pop {r4, pc}
_020015C2:
	ldr r0, [r4, #0x1c]
	pop {r4, pc}
_020015C6:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end sub_02001504

	thumb_func_start sub_020015CC
sub_020015CC: ; 0x020015CC
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_020015CC

	thumb_func_start sub_020015D0
sub_020015D0: ; 0x020015D0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #0
	beq _02001684
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	str r3, [sp]
	beq _02001640
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0x20
	ldrb r2, [r0]
	add r3, r4, #0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r2, #0x1c
	add r2, r6, #0
	add r2, #0x21
	ldrb r2, [r2]
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x18
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r2, r5, #0
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0xc]
	add r6, #0x24
	ldrb r1, [r6]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	bl sub_0201D7E0
	add sp, #0x18
	pop {r4, r5, r6, pc}
_02001640:
	mov r0, #0xff
	str r0, [sp, #4]
	ldrb r1, [r6, #0x18]
	add r3, r4, #0
	lsl r0, r1, #0x1c
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldrb r0, [r6, #0x17]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #8
	lsr r1, r1, #0x10
	orr r0, r1
	orr r0, r2
	str r0, [sp, #8]
	ldrh r0, [r6, #0x1a]
	add r2, r5, #0
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldrh r1, [r6, #0x1a]
	ldr r0, [r6, #0xc]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1a
	bl sub_0201D7E0
_02001684:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020015D0

	thumb_func_start sub_02001688
sub_02001688: ; 0x02001688
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r3, [sp]
	ldrh r0, [r5, #0x1a]
	add r4, r1, #0
	mov r1, #1
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r6, r2, #0
	bl sub_02002DF8
	ldrh r1, [r5, #0x1a]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1c
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	cmp r0, #0
	ble _0200171A
_020016BC:
	ldr r1, [r5, #0]
	lsl r0, r4, #3
	str r0, [sp, #8]
	add r0, r1, r0
	ldr r1, [r0, #4]
	mov r0, #2
	mvn r0, r0
	cmp r1, r0
	beq _020016D4
	ldrb r0, [r5, #0x15]
	str r0, [sp, #4]
	b _020016D8
_020016D4:
	ldrb r0, [r5, #0x14]
	str r0, [sp, #4]
_020016D8:
	ldrb r0, [r5, #0x17]
	lsl r0, r0, #0x1c
	lsr r3, r0, #0x1c
	ldr r0, [sp, #0xc]
	add r2, r0, #0
	mul r2, r6
	add r0, r3, r2
	lsl r0, r0, #0x18
	ldr r3, [r5, #8]
	lsr r7, r0, #0x18
	cmp r3, #0
	beq _020016F6
	add r0, r5, #0
	add r2, r7, #0
	blx r3
_020016F6:
	ldr r2, [r5, #0]
	ldr r1, [sp, #8]
	add r0, r5, #0
	ldr r1, [r2, r1]
	ldr r2, [sp, #4]
	add r3, r7, #0
	bl sub_020015D0
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _020016BC
_0200171A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02001688

	thumb_func_start sub_02001720
sub_02001720: ; 0x02001720
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x1a]
	mov r1, #1
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02002DF8
	ldrh r1, [r4, #0x1a]
	ldrh r5, [r4, #0x2e]
	lsl r2, r1, #0x19
	lsr r2, r2, #0x1c
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldrb r0, [r4, #0x17]
	mul r3, r5
	ldrb r2, [r4, #0x16]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	add r0, r0, r3
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	cmp r0, #3
	bhi _02001776
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02001766: ; jump table
	.short _0200176E - _02001766 - 2 ; case 0
	.short _02001776 - _02001766 - 2 ; case 1
	.short _02001776 - _02001766 - 2 ; case 2
	.short _02001776 - _02001766 - 2 ; case 3
_0200176E:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0xc]
	bl sub_02014A58
_02001776:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02001720

	thumb_func_start sub_02001778
sub_02001778: ; 0x02001778
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldrh r0, [r4, #0x1a]
	add r5, r1, #0
	lsl r1, r0, #0x10
	lsr r1, r1, #0x1f
	cmp r1, #3
	bhi _020017DC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02001796: ; jump table
	.short _0200179E - _02001796 - 2 ; case 0
	.short _020017DC - _02001796 - 2 ; case 1
	.short _020017DC - _02001796 - 2 ; case 2
	.short _020017DC - _02001796 - 2 ; case 3
_0200179E:
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02002DF8
	ldrh r1, [r4, #0x1a]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1c
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r0, #8
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0xc]
	ldrb r2, [r4, #0x16]
	ldrb r4, [r4, #0x17]
	lsl r1, r1, #0x1c
	mul r3, r5
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	add r3, r4, r3
	lsl r3, r3, #0x10
	lsr r1, r1, #0x1c
	lsr r3, r3, #0x10
	bl sub_0201AE78
_020017DC:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02001778

	thumb_func_start sub_020017E0
sub_020017E0: ; 0x020017E0
	push {r4, r5, r6, r7}
	ldrh r4, [r0, #0x2e]
	ldrh r3, [r0, #0x2c]
	cmp r1, #0
	ldrh r2, [r0, #0x12]
	bne _02001872
	cmp r2, #1
	bne _020017F4
	mov r1, #0
	b _0200180C
_020017F4:
	lsr r7, r2, #0x1f
	lsl r6, r2, #0x1f
	sub r6, r6, r7
	mov r5, #0x1f
	ror r6, r5
	lsr r1, r2, #1
	add r5, r7, r6
	add r1, r1, r5
	sub r1, r2, r1
	sub r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
_0200180C:
	cmp r3, #0
	bne _02001840
	cmp r4, #0
	beq _0200183A
	ldr r2, [r0, #0]
	lsl r1, r3, #3
	mov r3, #2
	add r1, r2, r1
	mvn r3, r3
_0200181E:
	sub r2, r4, #1
	lsl r2, r2, #0x10
	lsr r4, r2, #0x10
	lsl r2, r4, #3
	add r2, r1, r2
	ldr r2, [r2, #4]
	cmp r2, r3
	beq _02001836
	strh r4, [r0, #0x2e]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_02001836:
	cmp r4, #0
	bne _0200181E
_0200183A:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_02001840:
	cmp r4, r1
	bls _0200186A
	ldr r5, [r0, #0]
	lsl r2, r3, #3
	add r2, r5, r2
	mov r5, #2
	mvn r5, r5
_0200184E:
	sub r4, r4, #1
	lsl r4, r4, #0x10
	lsr r4, r4, #0x10
	lsl r6, r4, #3
	add r6, r2, r6
	ldr r6, [r6, #4]
	cmp r6, r5
	beq _02001866
	strh r4, [r0, #0x2e]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_02001866:
	cmp r4, r1
	bhi _0200184E
_0200186A:
	strh r1, [r0, #0x2e]
	sub r1, r3, #1
	strh r1, [r0, #0x2c]
	b _020018F8
_02001872:
	cmp r2, #1
	bne _0200187A
	mov r5, #0
	b _0200188E
_0200187A:
	lsr r7, r2, #0x1f
	lsl r6, r2, #0x1f
	sub r6, r6, r7
	mov r5, #0x1f
	ror r6, r5
	lsr r1, r2, #1
	add r5, r7, r6
	add r1, r1, r5
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
_0200188E:
	ldrh r1, [r0, #0x10]
	sub r1, r1, r2
	cmp r3, r1
	bne _020018C8
	sub r2, r2, #1
	cmp r4, r2
	bge _020018C2
	ldr r5, [r0, #0]
	lsl r1, r3, #3
	add r1, r5, r1
	mov r5, #2
	mvn r5, r5
_020018A6:
	add r3, r4, #1
	lsl r3, r3, #0x10
	lsr r4, r3, #0x10
	lsl r3, r4, #3
	add r3, r1, r3
	ldr r3, [r3, #4]
	cmp r3, r5
	beq _020018BE
	strh r4, [r0, #0x2e]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_020018BE:
	cmp r4, r2
	blt _020018A6
_020018C2:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_020018C8:
	cmp r4, r5
	bhs _020018F2
	ldr r2, [r0, #0]
	lsl r1, r3, #3
	mov r6, #2
	add r1, r2, r1
	mvn r6, r6
_020018D6:
	add r2, r4, #1
	lsl r2, r2, #0x10
	lsr r4, r2, #0x10
	lsl r2, r4, #3
	add r2, r1, r2
	ldr r2, [r2, #4]
	cmp r2, r6
	beq _020018EE
	strh r4, [r0, #0x2e]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_020018EE:
	cmp r4, r5
	blo _020018D6
_020018F2:
	strh r5, [r0, #0x2e]
	add r1, r3, #1
	strh r1, [r0, #0x2c]
_020018F8:
	mov r0, #2
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020017E0

	thumb_func_start sub_02001900
sub_02001900: ; 0x02001900
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r0, [r5, #0x12]
	add r4, r1, #0
	add r7, r2, #0
	cmp r4, r0
	blt _0200192C
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_0201ADA4
	ldrh r1, [r5, #0x2c]
	ldrh r3, [r5, #0x12]
	add r0, r5, #0
	mov r2, #0
	bl sub_02001688
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0200192C:
	ldrh r0, [r5, #0x1a]
	mov r1, #1
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02002DF8
	ldrh r1, [r5, #0x1a]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1c
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r7, #0
	ldrb r0, [r5, #0x18]
	bne _020019BA
	lsl r0, r0, #0x1c
	lsr r7, r0, #0x1c
	add r2, r4, #0
	lsl r3, r7, #4
	mul r2, r6
	orr r3, r7
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #0xc]
	mov r1, #1
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201C04C
	ldrh r1, [r5, #0x2c]
	add r0, r5, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_02001688
	ldrb r0, [r5, #0x17]
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1c
	ldrh r0, [r5, #0x12]
	add r1, r0, #0
	mul r1, r6
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #0xc]
	bl sub_0201C294
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0201C298
	lsl r0, r0, #3
	lsl r1, r4, #0x13
	sub r0, r0, r6
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	str r1, [sp]
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, #0xc]
	mov r2, #0
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r3, r6, #0
	bl sub_0201AE78
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020019BA:
	lsl r0, r0, #0x1c
	lsr r3, r0, #0x1c
	add r2, r4, #0
	mul r2, r6
	lsl r6, r3, #4
	orr r3, r6
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #0xc]
	mov r1, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201C04C
	ldrh r0, [r5, #0x12]
	ldrh r1, [r5, #0x2c]
	add r3, r4, #0
	sub r2, r0, r4
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02001688
	ldr r0, [r5, #0xc]
	bl sub_0201C294
	lsl r0, r0, #0x13
	lsr r0, r0, #0x10
	str r0, [sp]
	ldrb r0, [r5, #0x17]
	mov r2, #0
	add r3, r2, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	str r0, [sp, #4]
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_0201AE78
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02001900

	thumb_func_start sub_02001A18
sub_02001A18: ; 0x02001A18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	add r4, r0, #0
	str r3, [sp, #8]
	ldrh r0, [r4, #0x2e]
	mov r6, #0
	add r5, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	add r7, r6, #0
	cmp r0, #0
	bls _02001A6A
_02001A34:
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl sub_020017E0
	orr r5, r0
	cmp r0, #2
	bne _02001A5E
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldrh r1, [r4, #0x2c]
	ldrh r0, [r4, #0x2e]
	ldr r2, [r4, #0]
	add r0, r1, r0
	lsl r0, r0, #3
	add r0, r2, r0
	ldr r1, [r0, #4]
	mov r0, #2
	mvn r0, r0
	cmp r1, r0
	beq _02001A34
_02001A5E:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #4]
	cmp r7, r0
	blo _02001A34
_02001A6A:
	ldr r0, [sp]
	cmp r0, #0
	beq _02001AD2
	cmp r5, #3
	bhi _02001A88
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02001A80: ; jump table
	.short _02001A88 - _02001A80 - 2 ; case 0
	.short _02001A8E - _02001A80 - 2 ; case 1
	.short _02001AAC - _02001A80 - 2 ; case 2
	.short _02001AAC - _02001A80 - 2 ; case 3
_02001A88:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02001A8E:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_02001778
	add r0, r4, #0
	bl sub_02001720
	add r0, r4, #0
	mov r1, #0
	bl sub_02001AD8
	ldr r0, [r4, #0xc]
	bl sub_0201A954
	b _02001AD2
_02001AAC:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_02001778
	ldr r2, [sp, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02001900
	add r0, r4, #0
	bl sub_02001720
	add r0, r4, #0
	mov r1, #0
	bl sub_02001AD8
	ldr r0, [r4, #0xc]
	bl sub_0201A954
_02001AD2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02001A18

	thumb_func_start sub_02001AD8
sub_02001AD8: ; 0x02001AD8
	push {r3, r4, r5, lr}
	ldr r3, [r0, #4]
	add r2, r1, #0
	cmp r3, #0
	beq _02001AF2
	ldrh r5, [r0, #0x2c]
	ldrh r4, [r0, #0x2e]
	ldr r1, [r0, #0]
	add r4, r5, r4
	lsl r4, r4, #3
	add r1, r1, r4
	ldr r1, [r1, #4]
	blx r3
_02001AF2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02001AD8