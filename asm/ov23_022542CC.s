	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov23_022542CC
ov23_022542CC: ; 0x022542CC
	ldr r3, _022542D4 ; =sub_02018144
	mov r0, #4
	mov r1, #0x44
	bx r3
	; .align 2, 0
_022542D4: .word sub_02018144
	thumb_func_end ov23_022542CC

	thumb_func_start ov23_022542D8
ov23_022542D8: ; 0x022542D8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	str r1, [r0, #0]
	mov r5, #0
	add r4, #0x38
	strb r5, [r4]
	str r2, [r0, #0x30]
	str r3, [r0, #0x34]
	add r0, #0x40
	strh r5, [r0]
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r1, #8]
	ldr r2, _02254308 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02254308: .word 0x000003D9
	thumb_func_end ov23_022542D8

	thumb_func_start ov23_0225430C
ov23_0225430C: ; 0x0225430C
	ldr r3, _02254310 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02254310: .word sub_020181C4
	thumb_func_end ov23_0225430C

	thumb_func_start ov23_02254314
ov23_02254314: ; 0x02254314
	ldr r0, [r0, #0x3c]
	bx lr
	thumb_func_end ov23_02254314

	thumb_func_start ov23_02254318
ov23_02254318: ; 0x02254318
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x38
	ldrb r1, [r1]
	cmp r1, #0
	beq _0225432E
	cmp r1, #1
	beq _02254334
	cmp r1, #2
	beq _0225433A
	b _0225434A
_0225432E:
	bl ov23_0225437C
	b _0225434A
_02254334:
	bl ov23_022544C0
	b _0225434A
_0225433A:
	add r1, r0, #0
	mov r2, #0
	add r1, #0x38
	strb r2, [r1]
	bl ov23_0225451C
	mov r0, #1
	pop {r3, pc}
_0225434A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_02254318

	thumb_func_start ov23_02254350
ov23_02254350: ; 0x02254350
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _02254378 ; =0x02256B1C
	add r2, sp, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl ov23_022421CC
	lsl r2, r4, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	mov r2, #0
	add r3, r2, #0
	bl ov23_02253F60
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02254378: .word 0x02256B1C
	thumb_func_end ov23_02254350

	thumb_func_start ov23_0225437C
ov23_0225437C: ; 0x0225437C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	mov r0, #4
	add r1, r0, #0
	bl sub_02013A04
	str r0, [r5, #0x24]
	mov r2, #3
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _022544A4 ; =0x000001D7
	add r1, r5, #4
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	mov r3, #1
	add r1, r5, #0
	str r3, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _022544A8 ; =0x000001C9
	add r1, #0x14
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	mov r2, #3
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	ldr r2, _022544AC ; =0x000003D9
	add r0, r5, #4
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	ldr r2, _022544AC ; =0x000003D9
	add r0, #0x14
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r3, _022544B0 ; =0x02256B2C
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r2, _022544B4 ; =0x0000027D
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r7, #0
	mov r1, #0
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x14
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	mov r6, #0
	add r4, sp, #0x14
_02254436:
	ldr r0, [r5, #0x24]
	ldr r2, [r4, #0]
	add r1, r7, #0
	add r3, r6, #0
	bl sub_02013A4C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02254436
	add r0, r7, #0
	bl sub_0200B190
	ldr r4, _022544B8 ; =0x02256B3C
	add r3, sp, #0x24
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r3, #4
	add r0, sp, #0x14
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, r5, #4
	str r0, [sp, #0x30]
	ldr r0, _022544BC ; =ov23_02254350
	str r0, [sp, #0x28]
	add r0, r2, #0
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x34]
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_0200112C
	str r0, [r5, #0x28]
	add r0, r5, #4
	bl sub_0201A954
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A954
	mov r0, #1
	add r5, #0x38
	strb r0, [r5]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_022544A4: .word 0x000001D7
_022544A8: .word 0x000001C9
_022544AC: .word 0x000003D9
_022544B0: .word 0x02256B2C
_022544B4: .word 0x0000027D
_022544B8: .word 0x02256B3C
_022544BC: .word ov23_02254350
	thumb_func_end ov23_0225437C

	thumb_func_start ov23_022544C0
ov23_022544C0: ; 0x022544C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_02001288
	add r4, r0, #0
	add r0, r5, #0
	bl ov23_022549EC
	cmp r4, #3
	bne _022544DA
	mov r4, #1
	mvn r4, r4
_022544DA:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022544EA
	add r0, r0, #1
	cmp r4, r0
	bne _02254500
	pop {r3, r4, r5, pc}
_022544EA:
	ldr r0, _02254518 ; =0x000005DC
	bl sub_02005748
	str r4, [r5, #0x3c]
	mov r0, #2
	add r5, #0x38
	strb r0, [r5]
	ldr r0, _02254518 ; =0x000005DC
	bl sub_02005748
	pop {r3, r4, r5, pc}
_02254500:
	ldr r0, _02254518 ; =0x000005DC
	bl sub_02005748
	str r4, [r5, #0x3c]
	mov r0, #2
	add r5, #0x38
	strb r0, [r5]
	ldr r0, _02254518 ; =0x000005DC
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_02254518: .word 0x000005DC
	thumb_func_end ov23_022544C0

	thumb_func_start ov23_0225451C
ov23_0225451C: ; 0x0225451C
	push {r4, lr}
	add r4, r0, #0
	bl ov23_022421CC
	bl ov23_02254044
	add r0, r4, #0
	add r0, #0x14
	mov r1, #1
	bl sub_0200DC9C
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	bl sub_02001384
	add r0, r4, #4
	mov r1, #1
	bl sub_0200DC9C
	ldrb r1, [r4, #8]
	ldr r0, [r4, #4]
	bl sub_0201C3C0
	add r0, r4, #4
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A8FC
	ldr r0, [r4, #0x24]
	bl sub_02013A3C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0225451C

	thumb_func_start ov23_02254564
ov23_02254564: ; 0x02254564
	push {r3, lr}
	mov r2, #1
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	beq _0225457C
	add r1, r2, #0
	mov r2, #0xf
	mov r3, #2
	bl sub_0200147C
	pop {r3, pc}
_0225457C:
	mov r1, #2
	mov r2, #0xf
	add r3, r1, #0
	bl sub_0200147C
	pop {r3, pc}
	thumb_func_end ov23_02254564

	thumb_func_start ov23_02254588
ov23_02254588: ; 0x02254588
	ldr r3, _02254590 ; =sub_02018144
	mov r0, #4
	mov r1, #0x4c
	bx r3
	; .align 2, 0
_02254590: .word sub_02018144
	thumb_func_end ov23_02254588

	thumb_func_start ov23_02254594
ov23_02254594: ; 0x02254594
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	str r1, [r0, #0]
	mov r5, #0
	add r4, #0x42
	strb r5, [r4]
	str r5, [r0, #4]
	str r2, [r0, #0x38]
	str r3, [r0, #0x3c]
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r1, #8]
	ldr r2, _022545C0 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022545C0: .word 0x000003D9
	thumb_func_end ov23_02254594

	thumb_func_start ov23_022545C4
ov23_022545C4: ; 0x022545C4
	add r3, r0, #0
	add r3, #0x40
	strb r1, [r3]
	add r0, #0x41
	strb r2, [r0]
	bx lr
	thumb_func_end ov23_022545C4

	thumb_func_start ov23_022545D0
ov23_022545D0: ; 0x022545D0
	ldr r3, _022545D4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_022545D4: .word sub_020181C4
	thumb_func_end ov23_022545D0

	thumb_func_start ov23_022545D8
ov23_022545D8: ; 0x022545D8
	ldr r0, [r0, #0x44]
	bx lr
	thumb_func_end ov23_022545D8

	thumb_func_start ov23_022545DC
ov23_022545DC: ; 0x022545DC
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x42
	ldrb r1, [r1]
	cmp r1, #0
	beq _022545F4
	cmp r1, #1
	beq _022545FA
	cmp r1, #2
	beq _02254600
	b _0225460E
_022545F4:
	bl ov23_022546E0
	b _0225460E
_022545FA:
	bl ov23_0225461C
	b _0225460E
_02254600:
	mov r1, #0
	add r4, #0x42
	strb r1, [r4]
	bl ov23_02254958
	mov r0, #1
	pop {r4, pc}
_0225460E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02254618
	bl sub_0206A870
_02254618:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov23_022545DC

	thumb_func_start ov23_0225461C
ov23_0225461C: ; 0x0225461C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	bl ov23_02248D20
	add r6, r0, #0
	ldr r0, [r5, #0x48]
	lsr r4, r6, #1
	cmp r0, r4
	bne _02254634
	mov r4, #1
	mvn r4, r4
_02254634:
	ldr r0, [r5, #0x2c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	ldr r0, [r5, #0x2c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r7, r0, #0
	ldr r0, [r5, #0x2c]
	mov r1, #3
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r3, r0, #0
	add r1, sp, #0
	lsl r2, r7, #0x10
	lsl r3, r3, #0x10
	ldrh r1, [r1, #2]
	ldr r0, [r5, #4]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov23_022549A8
	mov r0, #1
	mvn r0, r0
	cmp r6, r0
	beq _0225467C
	add r0, r0, #1
	cmp r6, r0
	bne _0225468C
	pop {r3, r4, r5, r6, r7, pc}
_0225467C:
	str r0, [r5, #0x44]
	mov r0, #2
	add r5, #0x42
	strb r0, [r5]
	ldr r0, _0225469C ; =0x000005DC
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_0225468C:
	str r4, [r5, #0x44]
	mov r0, #2
	add r5, #0x42
	strb r0, [r5]
	ldr r0, _0225469C ; =0x000005DC
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225469C: .word 0x000005DC
	thumb_func_end ov23_0225461C

	thumb_func_start ov23_022546A0
ov23_022546A0: ; 0x022546A0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0x13
	bl sub_02001504
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_02001504
	lsr r1, r4, #1
	sub r0, r0, #1
	cmp r1, r0
	bne _022546C2
	ldr r4, _022546DC ; =0x00000116
	b _022546CC
_022546C2:
	add r0, r6, #0
	bl sub_020289B8
	add r4, r0, #0
	add r4, #0x8a
_022546CC:
	bl ov23_022421DC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022546DC: .word 0x00000116
	thumb_func_end ov23_022546A0

	thumb_func_start ov23_022546E0
ov23_022546E0: ; 0x022546E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r7, r0, #0
	bl sub_020289A0
	str r0, [sp, #0x20]
	str r0, [r5, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #7
	ble _02254704
	mov r0, #7
	str r0, [sp, #0x1c]
_02254704:
	ldr r0, [sp, #0x20]
	mov r1, #4
	add r0, r0, #1
	bl sub_02013A04
	str r0, [r5, #0x28]
	mov r2, #3
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r1, r5, #0
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02254930 ; =0x0000018F
	add r1, #8
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	mov r3, #1
	add r1, r5, #0
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02254934 ; =0x0000016F
	add r1, #0x18
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	mov r2, #3
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02254938 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	ldr r2, _02254938 ; =0x000003D9
	add r0, #0x18
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _0225493C ; =0x00000272
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	str r0, [sp, #0x18]
	ldr r2, _02254940 ; =0x0000027D
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [sp, #0x24]
	mov r1, #9
	bl sub_0200B1EC
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	mov r1, #0xa
	bl sub_0200B1EC
	str r0, [sp, #0x2c]
	mov r0, #6
	mov r1, #4
	bl sub_02023790
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r2, [sp, #0x28]
	add r0, #0x18
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	mov r0, #4
	bl sub_0200B358
	mov r1, #1
	str r1, [sp]
	add r2, r5, #0
	str r1, [sp, #4]
	add r2, #0x40
	ldrb r2, [r2]
	mov r1, #0
	mov r3, #2
	add r6, r0, #0
	bl sub_0200B60C
	mov r1, #1
	str r1, [sp]
	add r2, r5, #0
	str r1, [sp, #4]
	add r2, #0x41
	ldrb r2, [r2]
	add r0, r6, #0
	mov r3, #2
	bl sub_0200B60C
	ldr r2, [sp, #0x2c]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200C388
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r5, #0
	add r0, #0x18
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r6, #0
	bl sub_0200B3F0
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	bl sub_0200B190
	ldr r0, [sp, #0x20]
	mov r4, #0
	cmp r0, #0
	ble _0225487E
	add r6, r4, #0
_02254848:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020289B8
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02028AFC
	cmp r0, #0
	bne _02254862
	mov r3, #1
	b _02254864
_02254862:
	mov r3, #0
_02254864:
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	ldr r0, [r5, #0x28]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r3, r6, r3
	bl sub_02013A4C
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, r0
	blt _02254848
_0225487E:
	lsl r3, r4, #1
	ldr r0, [r5, #0x28]
	ldr r1, [sp, #0x18]
	ldr r2, _02254944 ; =0x00000115
	add r3, r3, #1
	bl sub_02013A4C
	ldr r0, [sp, #0x18]
	bl sub_0200B190
	bl ov23_022421DC
	ldr r1, _0225493C ; =0x00000272
	mov r2, #0
	bl ov23_02253DFC
	ldr r4, _02254948 ; =0x02256B3C
	add r3, sp, #0x30
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, _0225494C ; =ov23_02254564
	add r1, sp, #0x30
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x20]
	mov r3, #4
	add r0, r0, #1
	strh r0, [r1, #0x10]
	ldr r0, [sp, #0x1c]
	strh r0, [r1, #0x12]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x30]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #0x3c]
	ldr r0, _02254950 ; =ov23_022546A0
	str r7, [sp, #0x4c]
	str r0, [sp, #0x34]
	ldr r0, _02254954 ; =0x02028A11
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r2, #0
	ldr r1, [r5, #0x38]
	ldr r2, [r5, #0x3c]
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl ov23_02248C08
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #8
	bl sub_0201A954
	add r0, r5, #0
	add r0, #0x18
	bl sub_0201A954
	mov r0, #4
	bl sub_0206A780
	str r0, [r5, #4]
	mov r1, #0xc8
	mov r2, #0x1a
	mov r3, #0x86
	bl sub_0206A8A0
	mov r1, #0
	ldr r0, [r5, #4]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #4]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
	mov r0, #1
	add r5, #0x42
	strb r0, [r5]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02254930: .word 0x0000018F
_02254934: .word 0x0000016F
_02254938: .word 0x000003D9
_0225493C: .word 0x00000272
_02254940: .word 0x0000027D
_02254944: .word 0x00000115
_02254948: .word 0x02256B3C
_0225494C: .word ov23_02254564
_02254950: .word ov23_022546A0
_02254954: .word 0x02028A11
	thumb_func_end ov23_022546E0

	thumb_func_start ov23_02254958
ov23_02254958: ; 0x02254958
	push {r4, lr}
	add r4, r0, #0
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r4, #0
	add r0, #0x18
	mov r1, #1
	bl sub_0200DC9C
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x3c]
	bl ov23_02248EF8
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl sub_0200DC9C
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, #8]
	bl sub_0201C3C0
	add r0, r4, #0
	add r0, #8
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A8FC
	ldr r0, [r4, #0x28]
	bl sub_02013A3C
	ldr r0, [r4, #4]
	bl sub_0206A844
	pop {r4, pc}
	thumb_func_end ov23_02254958

	thumb_func_start ov23_022549A8
ov23_022549A8: ; 0x022549A8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r7, r3, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, r7
	bls _022549E8
	cmp r5, #0
	beq _022549C4
	mov r1, #0
	mov r2, #1
	bl sub_0206A8C4
	b _022549CC
_022549C4:
	mov r1, #0
	add r2, r1, #0
	bl sub_0206A8C4
_022549CC:
	add r0, r5, r7
	cmp r4, r0
	beq _022549DE
	mov r1, #1
	add r0, r6, #0
	add r2, r1, #0
	bl sub_0206A8C4
	pop {r3, r4, r5, r6, r7, pc}
_022549DE:
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_022549E8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_022549A8

	thumb_func_start ov23_022549EC
ov23_022549EC: ; 0x022549EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x40
	ldrh r4, [r0]
	add r1, r5, #0
	ldr r0, [r5, #0x28]
	add r1, #0x40
	bl sub_020014D0
	add r5, #0x40
	ldrh r0, [r5]
	cmp r4, r0
	beq _02254A0C
	ldr r0, _02254A10 ; =0x000005DC
	bl sub_02005748
_02254A0C:
	pop {r3, r4, r5, pc}
	nop
_02254A10: .word 0x000005DC
	thumb_func_end ov23_022549EC

	.rodata


	.global Unk_ov23_02256B1C
Unk_ov23_02256B1C: ; 0x02256B1C
	.incbin "incbin/overlay23_rodata.bin", 0x810, 0x820 - 0x810

	.global Unk_ov23_02256B2C
Unk_ov23_02256B2C: ; 0x02256B2C
	.incbin "incbin/overlay23_rodata.bin", 0x820, 0x830 - 0x820

	.global Unk_ov23_02256B3C
Unk_ov23_02256B3C: ; 0x02256B3C
	.incbin "incbin/overlay23_rodata.bin", 0x830, 0x20

