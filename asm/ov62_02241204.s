	.include "macros/function.inc"
	.include "include/ov62_02241204.inc"

	

	.text


	thumb_func_start ov62_02241204
ov62_02241204: ; 0x02241204
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	ldr r4, _02241270 ; =0x02249430
	add r3, sp, #0xc
	mov r2, #0x3c
_0224120E:
	ldrh r1, [r4]
	add r4, r4, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0224120E
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r7, _02241274 ; =0x0000051C
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	str r0, [sp]
_0224122C:
	ldr r0, [sp]
	ldr r4, [sp, #4]
	lsl r1, r0, #2
	add r0, sp, #0xc
	mov r6, #0
	add r5, r0, r1
_02241238:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0224124A
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	bl sub_0200D4C4
_0224124A:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #6
	blt _02241238
	ldr r0, [sp, #4]
	add r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blt _0224122C
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_02241270: .word 0x02249430
_02241274: .word 0x0000051C
	thumb_func_end ov62_02241204

	thumb_func_start ov62_02241278
ov62_02241278: ; 0x02241278
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r0, r1]
	ldr r4, _02241400 ; =0x022492F0
	str r0, [sp, #0x14]
	add r3, sp, #0x50
	mov r2, #6
_0224128C:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224128C
	mov r0, #0
	add r1, sp, #0x38
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	add r1, sp, #0x20
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [sp, #0x18]
	ldr r1, _02241404 ; =0x000004A4
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	lsl r1, r0, #2
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
_022412C6:
	ldr r1, _02241408 ; =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _022412D2
	b _022413DE
_022412D2:
	add r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _022412E0
	mov r0, #1
	b _022412E2
_022412E0:
	mov r0, #0
_022412E2:
	mov r7, #0
	add r1, r7, #0
	add r2, sp, #0x38
	add r4, sp, #0x20
	add r3, r7, #0
_022412EC:
	stmia r2!, {r3}
	add r1, r1, #1
	stmia r4!, {r3}
	cmp r1, #6
	blt _022412EC
	mov r1, #0x18
	mul r1, r0
	add r0, sp, #0x50
	str r1, [sp, #0x1c]
	add r0, r0, r1
	add r1, sp, #0x38
	add r2, sp, #0x20
_02241304:
	ldr r5, [sp, #0x10]
	ldr r4, _02241408 ; =0x00002608
	ldr r6, [r0, #0]
	ldr r5, [r5, r4]
	lsl r4, r6, #1
	add r4, r5, r4
	add r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _0224132A
	stmia r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _02241408 ; =0x00002608
	add r7, r7, #1
	ldr r4, [r5, r4]
	add r4, r4, r6
	add r4, #0x98
	ldrb r4, [r4]
	stmia r2!, {r4}
_0224132A:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #3
	blt _02241304
	ldr r1, _02241408 ; =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	add r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02241344
	mov r7, #3
_02241344:
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x50
	add r0, r1, r0
	lsl r4, r7, #2
	add r1, sp, #0x38
	add r2, sp, #0x20
	mov r3, #3
	add r0, #0xc
	add r1, r1, r4
	add r2, r2, r4
_02241358:
	ldr r5, [sp, #0x10]
	ldr r4, _02241408 ; =0x00002608
	ldr r6, [r0, #0]
	ldr r5, [r5, r4]
	lsl r4, r6, #1
	add r4, r5, r4
	add r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _0224137E
	stmia r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _02241408 ; =0x00002608
	add r7, r7, #1
	ldr r4, [r5, r4]
	add r4, r4, r6
	add r4, #0x98
	ldrb r4, [r4]
	stmia r2!, {r4}
_0224137E:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #6
	blt _02241358
	ldr r5, [sp, #0xc]
	mov r7, #0
	add r6, sp, #0x38
	add r4, sp, #0x20
_0224138E:
	ldr r2, [sp, #0x14]
	ldr r1, _0224140C ; =0x00000514
	ldr r3, [r6, #0]
	ldr r2, [r2, r1]
	ldr r0, [r4, #0]
	add r1, r1, #4
	str r2, [r5, r1]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	ldr r1, _02241410 ; =0x0000050C
	ldr r0, [sp, #8]
	ldr r1, [r2, r1]
	ldr r2, _02241414 ; =0x00000518
	ldr r2, [r5, r2]
	bl ov62_02233A7C
	ldr r1, _02241418 ; =0x0000051C
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022413C6
	mov r1, #6
	sub r1, r1, r7
	bl sub_0200D474
_022413C6:
	ldr r1, [sp, #0x14]
	ldr r0, _0224140C ; =0x00000514
	add r7, r7, #1
	ldr r0, [r1, r0]
	add r6, r6, #4
	add r2, r0, #1
	ldr r0, _0224140C ; =0x00000514
	add r4, r4, #4
	add r5, #8
	str r2, [r1, r0]
	cmp r7, #6
	blt _0224138E
_022413DE:
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #5
	bge _022413F6
	b _022412C6
_022413F6:
	ldr r0, [sp, #8]
	bl ov62_02241204
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241400: .word 0x022492F0
_02241404: .word 0x000004A4
_02241408: .word 0x00002608
_0224140C: .word 0x00000514
_02241410: .word 0x0000050C
_02241414: .word 0x00000518
_02241418: .word 0x0000051C
	thumb_func_end ov62_02241278

	thumb_func_start ov62_0224141C
ov62_0224141C: ; 0x0224141C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r7, _0224145C ; =0x0000051C
	str r0, [sp]
_02241430:
	ldr r5, [sp]
	mov r4, #0
_02241434:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02241440
	add r1, r6, #0
	bl sub_0200D3F4
_02241440:
	add r4, r4, #1
	add r5, #8
	cmp r4, #6
	blt _02241434
	ldr r0, [sp]
	add r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _02241430
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224145C: .word 0x0000051C
	thumb_func_end ov62_0224141C

	thumb_func_start ov62_02241460
ov62_02241460: ; 0x02241460
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x86
	add r6, r0, #0
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	str r1, [sp]
	mov r1, #1
	bl ov62_02234540
	mov r0, #0
	str r0, [sp, #4]
	add r7, r0, #0
_0224147A:
	ldr r5, [sp]
	mov r4, #0
_0224147E:
	ldr r0, _022414B8 ; =0x0000051C
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _02241494
	ldr r1, _022414BC ; =0x00000518
	add r0, r6, #0
	ldr r1, [r5, r1]
	bl ov62_02233B24
	ldr r0, _022414B8 ; =0x0000051C
	str r7, [r5, r0]
_02241494:
	add r4, r4, #1
	add r5, #8
	cmp r4, #6
	blt _0224147E
	ldr r0, [sp]
	add r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _0224147A
	add r0, r6, #0
	mov r1, #0
	bl ov62_02234540
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022414B8: .word 0x0000051C
_022414BC: .word 0x00000518
	thumb_func_end ov62_02241460

	thumb_func_start ov62_022414C0
ov62_022414C0: ; 0x022414C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	mov r1, #0
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x20]
	add r1, sp, #0x8c
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	mov r2, #0x86
	lsl r2, r2, #4
	add r1, r0, #0
	ldr r1, [r1, r2]
	mov r2, #0x51
	lsl r2, r2, #4
	ldr r3, [r1, r2]
	str r1, [sp, #0x1c]
	sub r2, #0x6c
	add r1, r0, #0
	ldrsh r1, [r1, r2]
	str r0, [sp, #8]
	cmp r3, r1
	bne _022414F6
	b _02241758
_022414F6:
	mov r1, #1
	bl ov62_02234540
	mov r1, #0x51
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	ldr r0, [sp, #8]
	sub r1, #0x6c
	ldrsh r0, [r0, r1]
	cmp r2, r0
	ble _02241512
	mov r0, #4
	str r0, [sp, #0x20]
_02241512:
	ldr r0, [sp, #0x20]
	mov r1, #0x30
	mul r1, r0
	ldr r0, [sp, #0x1c]
	mov r6, #0
	add r4, r0, r1
	add r5, sp, #0x8c
	add r7, r6, #0
_02241522:
	ldr r0, _0224175C ; =0x0000051C
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _0224153E
	ldr r1, _02241760 ; =0x00000518
	ldr r0, [sp, #8]
	ldr r1, [r4, r1]
	bl ov62_02233B40
	ldr r0, _02241760 ; =0x00000518
	ldr r0, [r4, r0]
	str r0, [r5, #0]
	ldr r0, _0224175C ; =0x0000051C
	str r7, [r4, r0]
_0224153E:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #6
	blt _02241522
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02241588
	ldr r2, _02241764 ; =0x000004EC
	ldr r7, [sp, #0x1c]
	mov r0, #4
	add r3, r2, #0
	add r5, r2, #0
	str r0, [sp, #0xc]
	add r7, #0xc0
	add r3, #0x30
	sub r4, r2, #4
	add r5, #0x2c
_02241562:
	mov r0, #0
	add r1, r7, #0
_02241566:
	ldr r6, [r1, r2]
	add r0, r0, #1
	str r6, [r1, r3]
	ldr r6, [r1, r4]
	str r6, [r1, r5]
	add r1, #8
	cmp r0, #6
	blt _02241566
	ldr r0, [sp, #0xc]
	sub r7, #0x30
	sub r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #1
	bge _02241562
	mov r0, #0
	str r0, [sp, #0x10]
	b _022415C0
_02241588:
	ldr r6, _0224175C ; =0x0000051C
	ldr r7, [sp, #0x1c]
	mov r0, #1
	add r2, r6, #0
	add r4, r6, #0
	mov ip, r0
	add r7, #0x30
	sub r2, #0x30
	sub r3, r6, #4
	sub r4, #0x34
_0224159C:
	mov r1, #0
	add r0, r7, #0
_022415A0:
	ldr r5, [r0, r6]
	add r1, r1, #1
	str r5, [r0, r2]
	ldr r5, [r0, r3]
	str r5, [r0, r4]
	add r0, #8
	cmp r1, #6
	blt _022415A0
	mov r0, ip
	add r0, r0, #1
	add r7, #0x30
	mov ip, r0
	cmp r0, #5
	blt _0224159C
	mov r0, #4
	str r0, [sp, #0x10]
_022415C0:
	ldr r1, _02241768 ; =0x000004A4
	ldr r0, [sp, #8]
	ldr r5, _0224176C ; =0x02249320
	ldrsh r1, [r0, r1]
	ldr r0, [sp, #0x10]
	add r4, sp, #0x5c
	add r2, r1, r0
	mov r3, #6
_022415D0:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _022415D0
	add r0, sp, #0x44
	mov r4, #0
	str r4, [r0, #0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	add r0, sp, #0x2c
	str r4, [r0, #0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	lsl r0, r2, #2
	str r0, [sp, #0x14]
	ldr r1, _02241770 ; =0x00002608
	ldr r0, [sp, #8]
	add r1, r0, r1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x24]
	ldr r0, [r1, r0]
	add r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02241612
	mov r4, #1
_02241612:
	mov r0, #0
	str r0, [sp, #0x18]
	add r1, sp, #0x44
	add r2, sp, #0x2c
	add r6, r0, #0
_0224161C:
	stmia r1!, {r6}
	add r0, r0, #1
	stmia r2!, {r6}
	cmp r0, #6
	blt _0224161C
	mov r0, #0x18
	mul r0, r4
	add r1, sp, #0x5c
	add r2, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	add r3, sp, #0x44
	add r5, sp, #0x2c
	add r4, r1, r0
_0224163A:
	ldr r0, _02241770 ; =0x00002608
	ldr r7, [r2, #0]
	ldr r1, [r4, r0]
	lsl r0, r7, #1
	add r0, r1, r0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _02241660
	stmia r3!, {r0}
	ldr r0, _02241770 ; =0x00002608
	ldr r0, [r4, r0]
	add r0, r0, r7
	add r0, #0x98
	ldrb r0, [r0]
	stmia r5!, {r0}
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_02241660:
	add r6, r6, #1
	add r2, r2, #4
	cmp r6, #3
	blt _0224163A
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	add r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _0224167C
	mov r0, #3
	str r0, [sp, #0x18]
_0224167C:
	ldr r0, [sp, #0x28]
	add r1, sp, #0x5c
	add r2, r1, r0
	ldr r0, [sp, #0x18]
	mov r6, #3
	lsl r1, r0, #2
	add r0, sp, #0x44
	add r3, r0, r1
	add r0, sp, #0x2c
	add r2, #0xc
	add r5, r0, r1
_02241692:
	ldr r0, _02241770 ; =0x00002608
	ldr r7, [r2, #0]
	ldr r1, [r4, r0]
	lsl r0, r7, #1
	add r0, r1, r0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _022416B8
	stmia r3!, {r0}
	ldr r0, _02241770 ; =0x00002608
	ldr r0, [r4, r0]
	add r0, r0, r7
	add r0, #0x98
	ldrb r0, [r0]
	stmia r5!, {r0}
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_022416B8:
	add r6, r6, #1
	add r2, r2, #4
	cmp r6, #6
	blt _02241692
	ldr r0, [sp, #0x10]
	mov r1, #0x30
	mul r1, r0
	ldr r0, [sp, #0x1c]
	mov r5, #0
	add r7, sp, #0x44
	add r6, sp, #0x2c
	add r4, r0, r1
_022416D0:
	ldr r2, [sp, #0x1c]
	ldr r1, _02241774 ; =0x00000514
	ldr r3, [r7, #0]
	ldr r2, [r2, r1]
	ldr r0, [r6, #0]
	add r1, r1, #4
	str r2, [r4, r1]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	ldr r1, _02241778 ; =0x0000050C
	ldr r0, [sp, #8]
	ldr r1, [r2, r1]
	ldr r2, _02241760 ; =0x00000518
	ldr r2, [r4, r2]
	bl ov62_02233A7C
	ldr r1, _0224175C ; =0x0000051C
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02241708
	mov r1, #6
	sub r1, r1, r5
	bl sub_0200D474
_02241708:
	ldr r1, [sp, #0x1c]
	ldr r0, _02241774 ; =0x00000514
	add r5, r5, #1
	ldr r0, [r1, r0]
	add r7, r7, #4
	add r2, r0, #1
	ldr r0, _02241774 ; =0x00000514
	add r6, r6, #4
	add r4, #8
	str r2, [r1, r0]
	cmp r5, #6
	blt _022416D0
	ldr r0, [sp, #8]
	bl ov62_02241204
	ldr r1, _02241768 ; =0x000004A4
	ldr r0, [sp, #8]
	ldr r6, _0224177C ; =0x000186A0
	ldrsh r2, [r0, r1]
	ldr r0, [sp, #0x1c]
	add r1, #0x6c
	str r2, [r0, r1]
	mov r5, #0
	add r4, sp, #0x8c
_02241738:
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02241748
	ldr r0, [sp, #8]
	add r1, r1, r6
	ldr r0, [r0, #0x1c]
	bl sub_0200D070
_02241748:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _02241738
	ldr r0, [sp, #8]
	mov r1, #0
	bl ov62_02234540
_02241758:
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224175C: .word 0x0000051C
_02241760: .word 0x00000518
_02241764: .word 0x000004EC
_02241768: .word 0x000004A4
_0224176C: .word 0x02249320
_02241770: .word 0x00002608
_02241774: .word 0x00000514
_02241778: .word 0x0000050C
_0224177C: .word 0x000186A0
	thumb_func_end ov62_022414C0

	thumb_func_start ov62_02241780
ov62_02241780: ; 0x02241780
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r2, #0x13
	lsl r2, r2, #6
	ldrh r3, [r0, r2]
	ldr r1, _022417BC ; =0x0000FFFF
	cmp r3, r1
	beq _02241796
	mov r0, #1
	bx lr
_02241796:
	add r1, r2, #2
	ldrb r1, [r0, r1]
	cmp r1, #0xff
	beq _022417A2
	mov r0, #1
	bx lr
_022417A2:
	add r1, r2, #3
	ldrb r1, [r0, r1]
	cmp r1, #0xff
	bne _022417B2
	add r1, r2, #4
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _022417B6
_022417B2:
	mov r0, #1
	bx lr
_022417B6:
	mov r0, #0
	bx lr
	nop
_022417BC: .word 0x0000FFFF
	thumb_func_end ov62_02241780

	thumb_func_start ov62_022417C0
ov62_022417C0: ; 0x022417C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r3, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r6, _022418C8 ; =0x022493D0
	str r0, [sp, #0x20]
	add r4, sp, #0x3c
	mov r2, #0xc
_022417D6:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _022417D6
	ldr r6, _022418CC ; =0x022491D8
	add r4, sp, #0x24
	add r2, r4, #0
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	cmp r3, #0
	beq _022417F8
	cmp r3, #1
	b _02241804
_022417F8:
	ldr r1, _022418D0 ; =0x00000794
	ldr r0, [sp, #0x20]
	mov r3, #6
	str r3, [r0, r1]
	add r5, sp, #0x3c
	str r2, [sp, #0x18]
_02241804:
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r1, _022418D0 ; =0x00000794
	ldr r0, [sp, #0x20]
	mov r7, #1
	ldr r0, [r0, r1]
	lsl r7, r7, #8
	cmp r0, #0
	ble _022418C4
	ldr r1, _022418D4 ; =0x00000614
	ldr r0, [sp, #0x20]
	add r4, r0, r1
_0224181C:
	add r0, r4, #0
	bl sub_0201A7A0
	ldr r0, [r5, #4]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5, #0]
	ldr r0, [r0, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x48]
	ldr r1, [r1, #0]
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	mul r0, r1
	add r7, r7, r0
	mov r0, #0
	beq _02241880
	add r0, r4, #0
	add r1, r6, #0
	bl ov62_0223429C
_02241880:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022418D8 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r4, #0x10
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _022418D0 ; =0x00000794
	add r5, #0x10
	ldr r1, [r1, r0]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	blt _0224181C
_022418C4:
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022418C8: .word 0x022493D0
_022418CC: .word 0x022491D8
_022418D0: .word 0x00000794
_022418D4: .word 0x00000614
_022418D8: .word 0x000F0D00
	thumb_func_end ov62_022417C0

	thumb_func_start ov62_022418DC
ov62_022418DC: ; 0x022418DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	ldr r7, _0224194C ; =0x00000644
	add r4, r1, #0
	add r0, r6, r7
	mov r1, #0
	bl sub_0201ADA4
	cmp r4, #0xff
	bne _02241904
	ldr r0, [r5, #0x48]
	mov r1, #0x7d
	bl sub_0200B1EC
	add r4, r0, #0
	b _02241924
_02241904:
	add r0, r4, #0
	sub r0, #0xfa
	cmp r0, #3
	ldr r0, [r5, #0x48]
	bhi _0224191A
	sub r4, #0x55
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	b _02241924
_0224191A:
	add r4, #0x84
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
_02241924:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241950 ; =0x000F0D00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r6, r7
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, r7
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224194C: .word 0x00000644
_02241950: .word 0x000F0D00
	thumb_func_end ov62_022418DC

	thumb_func_start ov62_02241954
ov62_02241954: ; 0x02241954
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r7, _022419C8 ; =0x00000654
	add r6, r1, #0
	add r0, r4, r7
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _022419CC ; =0x0000FFFF
	cmp r6, r0
	bne _02241980
	ldr r0, [r5, #0x48]
	mov r1, #0x7d
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224199C
_02241980:
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x66
	add r2, sp, #0x10
	bl sub_0200B274
	add r0, r5, #0
	add r1, sp, #0x10
	bl sub_02023D28
_0224199C:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022419D0 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r7
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, r7
	bl sub_0201A9A4
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022419C8: .word 0x00000654
_022419CC: .word 0x0000FFFF
_022419D0: .word 0x000F0D00
	thumb_func_end ov62_02241954

	thumb_func_start ov62_022419D4
ov62_022419D4: ; 0x022419D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r7, [r5, r0]
	ldr r0, _02241A9C ; =0x00000664
	str r1, [sp, #0x10]
	add r0, r7, r0
	mov r1, #0
	add r4, r2, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x10]
	cmp r0, #0xff
	bne _02241A04
	cmp r4, #0xff
	bne _02241A04
	ldr r0, [r5, #0x48]
	mov r1, #0x7d
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	b _02241A70
_02241A04:
	mov r0, #0x66
	bl ov62_02231690
	add r6, r0, #0
	cmp r4, #0
	beq _02241A3C
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x48]
	mov r1, #0x17
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0
	add r3, r4, #0
	bl sub_0200BE08
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r2, r5, #0
	bl sub_0200C388
	b _02241A64
_02241A3C:
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x48]
	mov r1, #0x16
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0
	bl sub_0200BDD0
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r2, r5, #0
	bl sub_0200C388
_02241A64:
	add r0, r5, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B3F0
_02241A70:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241AA0 ; =0x000F0D00
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, _02241A9C ; =0x00000664
	add r3, r1, #0
	add r0, r7, r0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, _02241A9C ; =0x00000664
	add r0, r7, r0
	bl sub_0201A9A4
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241A9C: .word 0x00000664
_02241AA0: .word 0x000F0D00
	thumb_func_end ov62_022419D4

	thumb_func_start ov62_02241AA4
ov62_02241AA4: ; 0x02241AA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r3, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r6, _02241BA8 ; =0x02249350
	str r0, [sp, #0x20]
	add r4, sp, #0x30
	mov r2, #6
_02241ABA:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _02241ABA
	ldr r6, _02241BAC ; =0x02249144
	add r4, sp, #0x24
	ldmia r6!, {r0, r1}
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r6, #0]
	cmp r3, #0
	str r0, [r4, #0]
	beq _02241AD8
	cmp r3, #1
	b _02241AE4
_02241AD8:
	ldr r1, _02241BB0 ; =0x00000798
	ldr r0, [sp, #0x20]
	mov r3, #3
	str r3, [r0, r1]
	add r5, sp, #0x30
	str r2, [sp, #0x18]
_02241AE4:
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r1, _02241BB0 ; =0x00000798
	ldr r0, [sp, #0x20]
	mov r7, #1
	ldr r0, [r0, r1]
	lsl r7, r7, #8
	cmp r0, #0
	ble _02241BA4
	ldr r0, [sp, #0x20]
	sub r1, #0xc4
	add r4, r0, r1
_02241AFC:
	add r0, r4, #0
	bl sub_0201A7A0
	ldr r0, [r5, #4]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r2, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5, #0]
	ldr r0, [r0, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x48]
	ldr r1, [r1, #0]
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	mul r0, r1
	add r7, r7, r0
	mov r0, #0
	beq _02241B60
	add r0, r4, #0
	add r1, r6, #0
	bl ov62_0223429C
_02241B60:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241BB4 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r4, #0x10
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _02241BB0 ; =0x00000798
	add r5, #0x10
	ldr r1, [r1, r0]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	blt _02241AFC
_02241BA4:
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241BA8: .word 0x02249350
_02241BAC: .word 0x02249144
_02241BB0: .word 0x00000798
_02241BB4: .word 0x000F0D00
	thumb_func_end ov62_02241AA4

	thumb_func_start ov62_02241BB8
ov62_02241BB8: ; 0x02241BB8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r6, [r0, r1]
	sub r1, #0xcc
	ldr r0, [r6, r1]
	mov r4, #0
	cmp r0, #0
	ble _02241BE6
	ldr r0, _02241BF0 ; =0x00000614
	ldr r7, _02241BF4 ; =0x00000794
	add r5, r6, r0
_02241BD0:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _02241BD0
_02241BE6:
	ldr r0, _02241BF4 ; =0x00000794
	mov r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241BF0: .word 0x00000614
_02241BF4: .word 0x00000794
	thumb_func_end ov62_02241BB8

	thumb_func_start ov62_02241BF8
ov62_02241BF8: ; 0x02241BF8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r6, [r0, r1]
	sub r1, #0xc8
	ldr r0, [r6, r1]
	mov r4, #0
	cmp r0, #0
	ble _02241C28
	ldr r0, _02241C30 ; =0x000006D4
	add r7, r0, #0
	add r5, r6, r0
	add r7, #0xc4
_02241C12:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _02241C12
_02241C28:
	ldr r0, _02241C34 ; =0x00000798
	mov r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241C30: .word 0x000006D4
_02241C34: .word 0x00000798
	thumb_func_end ov62_02241BF8

	thumb_func_start ov62_02241C38
ov62_02241C38: ; 0x02241C38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _02241D18 ; =0x00000614
	add r0, r4, r6
	bl sub_0201A7A0
	mov r3, #3
	str r3, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r2, #2
	bl sub_0201A7E8
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x7e
	bl sub_0200B1EC
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241D1C ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, r6
	bl sub_0201A9A4
	add r0, r7, #0
	bl sub_020237BC
	add r6, #0xc0
	add r0, r4, r6
	bl sub_0201A7A0
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	add r0, #0xf2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r3, #0xb
	bl sub_0201A7E8
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x5f
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002EB4
	mov r1, #0x50
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241D1C ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, r6
	bl sub_0201A9A4
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, _02241D20 ; =0x00000798
	mov r1, #1
	str r1, [r4, r0]
	sub r0, r0, #4
	str r1, [r4, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02241D18: .word 0x00000614
_02241D1C: .word 0x000F0D00
_02241D20: .word 0x00000798
	thumb_func_end ov62_02241C38

	thumb_func_start ov62_02241D24
ov62_02241D24: ; 0x02241D24
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02241D3C
	cmp r1, #1
	beq _02241DE6
	b _02241E7E
_02241D3C:
	bl ov62_02234314
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	bl ov62_022315C8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r5, #0
	mov r1, #0x38
	mov r2, #3
	bl ov62_022343B8
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #7
	bl ov62_022343B8
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	add r0, r5, #0
	bl ov62_02245C64
	add r0, r5, #0
	mov r1, #0
	bl ov62_02245C08
	mov r1, #0x7d
	ldr r0, _02241E8C ; =0x00000514
	lsl r1, r1, #2
	str r1, [r4, r0]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _02241E90 ; =0x022491AC
	ldr r2, _02241E94 ; =ov62_022458A0
	mov r1, #5
	add r3, r5, #0
	bl sub_02023FCC
	ldr r1, _02241E98 ; =0x00000608
	ldr r2, _02241E9C ; =ov62_02245968
	str r0, [r4, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _02241EA0 ; =0x022491F0
	mov r1, #9
	add r3, r5, #0
	bl sub_02023FCC
	ldr r1, _02241EA4 ; =0x0000060C
	add r5, #8
	str r0, [r4, r1]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02241E84
_02241DE6:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02241E64
	add r0, r5, #0
	mov r1, #0x7c
	bl ov62_02231AAC
	add r0, r5, #0
	mov r1, #0
	bl ov62_022417C0
	add r0, r5, #0
	mov r1, #0
	bl ov62_02241AA4
	mov r1, #0x13
	ldr r0, _02241EA8 ; =0x0000FFFF
	lsl r1, r1, #6
	strh r0, [r4, r1]
	mov r2, #0xff
	add r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #3
	strb r2, [r4, r0]
	add r0, r1, #4
	strb r2, [r4, r0]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl ov62_02241954
	ldr r1, _02241EAC ; =0x000004C2
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl ov62_022418DC
	ldr r2, _02241EB0 ; =0x000004C3
	add r0, r5, #0
	ldrb r1, [r4, r2]
	add r2, r2, #1
	ldrb r2, [r4, r2]
	bl ov62_022419D4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02241E64:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02241E84
_02241E7E:
	mov r1, #3
	bl ov62_0222FB60
_02241E84:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02241E8C: .word 0x00000514
_02241E90: .word 0x022491AC
_02241E94: .word ov62_022458A0
_02241E98: .word 0x00000608
_02241E9C: .word ov62_02245968
_02241EA0: .word 0x022491F0
_02241EA4: .word 0x0000060C
_02241EA8: .word 0x0000FFFF
_02241EAC: .word 0x000004C2
_02241EB0: .word 0x000004C3
	thumb_func_end ov62_02241D24

	thumb_func_start ov62_02241EB4
ov62_02241EB4: ; 0x02241EB4
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _02241EC8 ; =0x00000608
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02241EC8: .word 0x00000608
	thumb_func_end ov62_02241EB4

	thumb_func_start ov62_02241ECC
ov62_02241ECC: ; 0x02241ECC
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02241EE6
	cmp r1, #1
	beq _02241F0E
	cmp r1, #2
	beq _02241F48
	b _02241F72
_02241EE6:
	bl ov62_02241BB8
	add r0, r5, #0
	bl ov62_02241BF8
	add r0, r5, #0
	bl ov62_02231B8C
	ldr r0, _0224201C ; =0x00000608
	ldr r0, [r4, r0]
	bl sub_02024034
	ldr r0, _02242020 ; =0x0000060C
	ldr r0, [r4, r0]
	bl sub_02024034
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242016
_02241F0E:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02241F2E
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02241F2E:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02242016
_02241F48:
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_02245D50
	add r0, r5, #0
	bl ov62_0223146C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242016
_02241F72:
	bl ov62_02233790
	cmp r0, #0
	beq _02242016
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02241FE6
	add r0, r5, #0
	bl ov62_022318E8
	add r0, r4, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	bl sub_020181C4
	b _02242016
_02241FE6:
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_02242016:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224201C: .word 0x00000608
_02242020: .word 0x0000060C
	thumb_func_end ov62_02241ECC

	thumb_func_start ov62_02242024
ov62_02242024: ; 0x02242024
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0224203A
	cmp r1, #1
	beq _02242044
	b _0224207E
_0224203A:
	bl ov62_02241BF8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02242044:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242064
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02242064:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _022420A6
_0224207E:
	ldr r1, _022420AC ; =0x000004C5
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _02242090
	cmp r1, #1
	beq _02242098
	cmp r1, #2
	beq _022420A0
	b _022420A6
_02242090:
	mov r1, #6
	bl ov62_0222FB60
	b _022420A6
_02242098:
	mov r1, #7
	bl ov62_0222FB60
	b _022420A6
_022420A0:
	mov r1, #0xa
	bl ov62_0222FB60
_022420A6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022420AC: .word 0x000004C5
	thumb_func_end ov62_02242024

	thumb_func_start ov62_022420B0
ov62_022420B0: ; 0x022420B0
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _022420C2
	b _02242258
_022420C2:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022420CE: ; jump table
	.short _022420D8 - _022420CE - 2 ; case 0
	.short _02242106 - _022420CE - 2 ; case 1
	.short _0224219C - _022420CE - 2 ; case 2
	.short _022421E6 - _022420CE - 2 ; case 3
	.short _02242216 - _022420CE - 2 ; case 4
_022420D8:
	mov r1, #0x71
	bl ov62_02231B3C
	ldr r1, _02242264 ; =0x000004C2
	mov r0, #0xff
	strb r0, [r5, r1]
	ldrb r1, [r5, r1]
	add r0, r4, #0
	bl ov62_022418DC
	add r0, r4, #0
	mov r1, #1
	bl ov62_02245C08
	add r0, r4, #0
	mov r1, #0x3d
	mov r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242260
_02242106:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242182
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _02242268 ; =0x0000047C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_022335B0
	ldr r0, _0224226C ; =0x0000049C
	add r0, r4, r0
	bl ov62_02233310
	add r0, r4, #0
	bl sub_0208BE68
	cmp r0, #1
	ldr r0, _0224226C ; =0x0000049C
	bne _02242152
	ldr r2, _02242270 ; =0x0224926C
	add r0, r4, r0
	add r1, r4, #0
	bl ov62_022324A0
	b _0224215C
_02242152:
	ldr r2, _02242274 ; =0x02249240
	add r0, r4, r0
	add r1, r4, #0
	bl ov62_022324A0
_0224215C:
	ldr r1, _02242268 ; =0x0000047C
	add r0, r4, r1
	add r1, #0x20
	add r1, r4, r1
	bl ov62_02233638
	ldr r0, _0224226C ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	mov r2, #2
	bl ov62_0223331C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02242182:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02242260
_0224219C:
	ldr r0, _02242268 ; =0x0000047C
	add r0, r4, r0
	bl ov62_02233664
	ldr r1, _0224226C ; =0x0000049C
	add r0, r4, r1
	sub r1, #0x10
	ldrsh r1, [r4, r1]
	bl ov62_022332AC
	ldr r0, _0224226C ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_02232F68
	add r1, r0, #0
	beq _022421CE
	ldr r0, _02242264 ; =0x000004C2
	strb r1, [r5, r0]
	add r0, r4, #0
	bl ov62_022418DC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022421CE:
	ldr r0, _02242278 ; =0x02249138
	bl sub_02022760
	cmp r0, #0
	beq _02242260
	add r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242260
_022421E6:
	ldr r0, _02242268 ; =0x0000047C
	add r0, r4, r0
	bl ov62_02233600
	ldr r0, _0224226C ; =0x0000049C
	add r0, r4, r0
	bl ov62_022332FC
	ldr r0, _0224226C ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_022334FC
	ldr r0, _02242268 ; =0x0000047C
	add r0, r4, r0
	bl ov62_022335F4
	ldr r0, _0224226C ; =0x0000049C
	add r0, r4, r0
	bl ov62_02233310
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02242216:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0224223E
	add r0, r4, #0
	mov r1, #0
	bl ov62_02245C08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0224223E:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02242260
_02242258:
	add r0, r4, #0
	mov r1, #0xb
	bl ov62_0222FB60
_02242260:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242264: .word 0x000004C2
_02242268: .word 0x0000047C
_0224226C: .word 0x0000049C
_02242270: .word 0x0224926C
_02242274: .word 0x02249240
_02242278: .word 0x02249138
	thumb_func_end ov62_022420B0

	thumb_func_start ov62_0224227C
ov62_0224227C: ; 0x0224227C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	bne _022422B0
	mov r1, #0x72
	bl ov62_02231B3C
	mov r1, #0x13
	ldr r0, _022422BC ; =0x0000FFFF
	lsl r1, r1, #6
	strh r0, [r4, r1]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl ov62_02241954
	add r0, r5, #0
	mov r1, #1
	bl ov62_02245C08
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_022422B0:
	add r0, r5, #0
	mov r1, #8
	bl ov62_0222FB60
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022422BC: .word 0x0000FFFF
	thumb_func_end ov62_0224227C

	thumb_func_start ov62_022422C0
ov62_022422C0: ; 0x022422C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x28]
	mov r1, #0x86
	ldr r0, [sp, #0x14]
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _022423C8 ; =0x000006D4
	ldr r5, _022423CC ; =0x022491F0
	mov r7, #0
	add r4, r1, r0
_022422DA:
	ldrb r0, [r5, #2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	ldrb r0, [r5]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	ldrb r0, [r5, #3]
	lsr r1, r0, #3
	ldr r0, [sp, #0x24]
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #1]
	lsr r1, r0, #3
	ldr r0, [sp, #0x20]
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	bl sub_0201A7A0
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r2, #6
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x24]
	ldr r0, [r0, #0x24]
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	ldr r0, [r0, #0x48]
	add r1, #0x44
	bl sub_0200B1EC
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	bl ov62_0223429C
	lsl r1, r6, #3
	sub r1, #0x10
	str r0, [sp, #0x30]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	bl ov62_02242748
	cmp r0, #1
	bne _02242384
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x2c]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022423D0 ; =0x000F0D00
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	bl sub_0201D78C
	b _022423A0
_02242384:
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x2c]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022423D4 ; =0x000C0B00
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	bl sub_0201D78C
_022423A0:
	add r0, r4, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	add r7, r7, #1
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	mul r1, r6
	add r0, r0, r1
	str r0, [sp, #0x28]
	add r4, #0x10
	add r5, r5, #4
	cmp r7, #9
	blo _022422DA
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_022423C8: .word 0x000006D4
_022423CC: .word 0x022491F0
_022423D0: .word 0x000F0D00
_022423D4: .word 0x000C0B00
	thumb_func_end ov62_022422C0

	thumb_func_start ov62_022423D8
ov62_022423D8: ; 0x022423D8
	push {r3, r4, r5, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _022423FC ; =0x000006D4
	mov r4, #0
	add r5, r1, r0
_022423E6:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #9
	blo _022423E6
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022423FC: .word 0x000006D4
	thumb_func_end ov62_022423D8

	thumb_func_start ov62_02242400
ov62_02242400: ; 0x02242400
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bhi _0224250A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224241C: ; jump table
	.short _02242426 - _0224241C - 2 ; case 0
	.short _02242436 - _0224241C - 2 ; case 1
	.short _02242476 - _0224241C - 2 ; case 2
	.short _0224249E - _0224241C - 2 ; case 3
	.short _022424A8 - _0224241C - 2 ; case 4
_02242426:
	mov r1, #0x3c
	mov r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242524
_02242436:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0224245C
	add r0, r4, #0
	bl ov62_022422C0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0224245C:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02242524
_02242476:
	ldr r0, _02242528 ; =0x0000060C
	ldr r0, [r5, r0]
	bl sub_0202404C
	ldr r0, _0224252C ; =0x02249138
	bl sub_02022760
	cmp r0, #0
	bne _02242490
	ldr r0, _02242530 ; =0x000004D8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02242524
_02242490:
	add r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242524
_0224249E:
	bl ov62_022423D8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022424A8:
	ldr r0, _02242530 ; =0x000004D8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _022424C8
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242524
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242524
_022424C8:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _022424F0
	add r0, r4, #0
	mov r1, #0
	bl ov62_02245C08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022424F0:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02242524
_0224250A:
	ldr r0, _02242530 ; =0x000004D8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0224251C
	add r0, r4, #0
	mov r1, #9
	bl ov62_0222FB60
	b _02242524
_0224251C:
	add r0, r4, #0
	mov r1, #0xb
	bl ov62_0222FB60
_02242524:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242528: .word 0x0000060C
_0224252C: .word 0x02249138
_02242530: .word 0x000004D8
	thumb_func_end ov62_02242400

	thumb_func_start ov62_02242534
ov62_02242534: ; 0x02242534
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _02242548
	b _02242702
_02242548:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242554: ; jump table
	.short _0224255E - _02242554 - 2 ; case 0
	.short _0224257E - _02242554 - 2 ; case 1
	.short _02242618 - _02242554 - 2 ; case 2
	.short _0224266C - _02242554 - 2 ; case 3
	.short _0224269C - _02242554 - 2 ; case 4
_0224255E:
	mov r1, #0x72
	bl ov62_02231B3C
	add r0, r4, #0
	mov r1, #1
	bl ov62_02245C08
	add r0, r4, #0
	mov r1, #0x3a
	mov r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242726
_0224257E:
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	bne _02242590
	b _02242726
_02242590:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0224272C ; =0x0000047C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_022335B0
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r3, _02242730 ; =0x022492C4
	add r2, r5, r0
	mov r6, #5
_022425AC:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _022425AC
	ldr r0, [r3, #0]
	ldr r1, _02242734 ; =0x000004DC
	str r0, [r2, #0]
	ldr r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x14
	ldr r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	sub r1, #0x40
	str r2, [r5, r0]
	add r0, r4, r1
	bl ov62_02233310
	ldr r3, _02242738 ; =0x0000049C
	add r1, r4, #0
	add r2, r3, #0
	add r2, #0x38
	add r0, r4, r3
	add r3, #0x44
	ldr r2, [r5, r2]
	add r3, r5, r3
	bl ov62_02232594
	ldr r1, _0224273C ; =0x000004E4
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x68
	sub r1, #0x48
	add r0, r4, r0
	add r1, r4, r1
	bl ov62_02233638
	ldr r0, _02242738 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	mov r2, #2
	bl ov62_0223331C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242726
_02242618:
	ldr r0, _0224272C ; =0x0000047C
	add r0, r4, r0
	bl ov62_02233664
	ldr r1, _02242738 ; =0x0000049C
	add r0, r4, r1
	sub r1, #0x10
	ldrsh r1, [r4, r1]
	bl ov62_022332AC
	ldr r0, _02242738 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_02232F68
	add r1, r0, #0
	beq _0224264C
	mov r0, #0x13
	lsl r0, r0, #6
	strh r1, [r5, r0]
	add r0, r4, #0
	bl ov62_02241954
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0224264C:
	ldr r0, _02242740 ; =0x02249138
	bl sub_02022760
	cmp r0, #0
	beq _02242726
	mov r0, #0x13
	ldr r1, _02242744 ; =0x0000FFFF
	lsl r0, r0, #6
	strh r1, [r5, r0]
	add r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242726
_0224266C:
	ldr r0, _0224272C ; =0x0000047C
	add r0, r4, r0
	bl ov62_02233600
	ldr r0, _02242738 ; =0x0000049C
	add r0, r4, r0
	bl ov62_022332FC
	ldr r0, _02242738 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_022334FC
	ldr r0, _0224272C ; =0x0000047C
	add r0, r4, r0
	bl ov62_022335F4
	ldr r0, _02242738 ; =0x0000049C
	add r0, r4, r0
	bl ov62_02233310
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0224269C:
	mov r0, #0x13
	lsl r0, r0, #6
	ldrh r1, [r5, r0]
	ldr r0, _02242744 ; =0x0000FFFF
	cmp r1, r0
	beq _022426EA
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _022426D0
	add r0, r4, #0
	mov r1, #0
	bl ov62_02245C08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022426D0:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02242726
_022426EA:
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242726
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242726
_02242702:
	add r0, r4, #0
	bl ov62_02242938
	mov r0, #0x13
	lsl r0, r0, #6
	ldrh r1, [r5, r0]
	ldr r0, _02242744 ; =0x0000FFFF
	cmp r1, r0
	beq _0224271E
	add r0, r4, #0
	mov r1, #0xb
	bl ov62_0222FB60
	b _02242726
_0224271E:
	add r0, r4, #0
	mov r1, #8
	bl ov62_0222FB60
_02242726:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224272C: .word 0x0000047C
_02242730: .word 0x022492C4
_02242734: .word 0x000004DC
_02242738: .word 0x0000049C
_0224273C: .word 0x000004E4
_02242740: .word 0x02249138
_02242744: .word 0x0000FFFF
	thumb_func_end ov62_02242534

	thumb_func_start ov62_02242748
ov62_02242748: ; 0x02242748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	add r0, r1, #1
	ldr r2, _022427C8 ; =0x02249944
	lsl r0, r0, #1
	ldrh r4, [r2, r0]
	lsl r0, r1, #1
	ldrh r6, [r2, r0]
	ldr r1, [sp, #8]
	mov r0, #0x66
	add r2, sp, #0xc
	bl ov62_02231948
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02027560
	str r0, [sp]
	add r7, r6, #0
	cmp r6, r4
	bge _0224279A
	ldr r0, [sp, #4]
	lsl r1, r6, #1
	add r5, r0, r1
_02242782:
	ldrh r1, [r5]
	ldr r0, [sp]
	bl sub_02026FE8
	cmp r0, #0
	bne _02242792
	ldr r0, _022427CC ; =0x0000FFFF
	strh r0, [r5]
_02242792:
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, r4
	blt _02242782
_0224279A:
	cmp r6, r4
	bge _022427BA
	ldr r0, [sp, #4]
	lsl r1, r6, #1
	add r2, r0, r1
	ldr r0, _022427CC ; =0x0000FFFF
_022427A6:
	ldrh r1, [r2]
	cmp r1, r0
	beq _022427B2
	mov r0, #1
	str r0, [sp, #8]
	b _022427BA
_022427B2:
	add r6, r6, #1
	add r2, r2, #2
	cmp r6, r4
	blt _022427A6
_022427BA:
	ldr r0, [sp, #4]
	bl sub_020181C4
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022427C8: .word 0x02249944
_022427CC: .word 0x0000FFFF
	thumb_func_end ov62_02242748

	thumb_func_start ov62_022427D0
ov62_022427D0: ; 0x022427D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r0, r1, #1
	ldr r2, _02242920 ; =0x02249944
	lsl r0, r0, #1
	ldrh r6, [r2, r0]
	lsl r0, r1, #1
	ldrh r0, [r2, r0]
	ldr r2, _02242924 ; =0x000004CC
	mov r1, #0
	str r0, [sp]
	mov r0, #0x66
	add r2, r4, r2
	bl ov62_02231948
	mov r2, #0x4d
	lsl r2, r2, #4
	str r0, [r4, r2]
	sub r2, r2, #4
	mov r0, #0x66
	mov r1, #0
	add r2, r4, r2
	bl ov62_02231948
	str r0, [sp, #8]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02027560
	str r0, [sp, #4]
	ldr r0, _02242928 ; =0x000004C8
	mov r1, #0
	ldr r7, [sp]
	str r1, [r4, r0]
	add r0, r7, #0
	cmp r0, r6
	bge _0224284E
	lsl r1, r0, #1
	ldr r0, [sp, #8]
	add r5, r0, r1
_0224282A:
	ldrh r1, [r5]
	ldr r0, [sp, #4]
	bl sub_02026FE8
	cmp r0, #0
	bne _0224283C
	ldr r0, _0224292C ; =0x0000FFFF
	strh r0, [r5]
	b _02242846
_0224283C:
	ldr r0, _02242928 ; =0x000004C8
	ldr r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _02242928 ; =0x000004C8
	str r1, [r4, r0]
_02242846:
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, r6
	blt _0224282A
_0224284E:
	ldr r1, [sp]
	mov r0, #0
	cmp r1, r6
	bge _0224287E
	lsl r2, r1, #1
	ldr r1, [sp, #8]
	ldr r7, _0224292C ; =0x0000FFFF
	add r2, r1, r2
	add r3, r0, #0
_02242860:
	ldrh r1, [r2]
	cmp r1, r7
	beq _02242872
	mov r5, #0x4d
	lsl r5, r5, #4
	ldr r5, [r4, r5]
	add r0, r0, #1
	strh r1, [r5, r3]
	add r3, r3, #2
_02242872:
	ldr r1, [sp]
	add r2, r2, #2
	add r1, r1, #1
	str r1, [sp]
	cmp r1, r6
	blt _02242860
_0224287E:
	ldr r1, _02242924 ; =0x000004CC
	ldr r1, [r4, r1]
	cmp r0, r1
	bge _022428A4
	mov r7, #0x4d
	ldr r1, [sp, #8]
	lsl r6, r0, #1
	lsl r7, r7, #4
	add r5, r1, r6
	sub r1, r7, #4
_02242892:
	ldrh r3, [r5]
	ldr r2, [r4, r7]
	add r0, r0, #1
	strh r3, [r2, r6]
	ldr r2, [r4, r1]
	add r5, r5, #2
	add r6, r6, #2
	cmp r0, r2
	blt _02242892
_022428A4:
	ldr r0, [sp, #8]
	bl sub_020181C4
	ldr r1, _02242928 ; =0x000004C8
	mov r0, #0x66
	ldr r1, [r4, r1]
	lsl r1, r1, #4
	bl sub_02018144
	ldr r2, _02242930 ; =0x000004DC
	mov r1, #0
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	sub r2, #0x14
	ldr r2, [r4, r2]
	lsl r2, r2, #4
	bl MI_CpuFill8
	ldr r0, _02242928 ; =0x000004C8
	mov r5, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _02242904
	ldr r7, _02242930 ; =0x000004DC
	add r2, r5, #0
	add r0, r7, #0
	add r3, r5, #0
	sub r0, #0x14
_022428DC:
	mov r1, #0x4d
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	ldr r6, _02242930 ; =0x000004DC
	ldrh r1, [r1, r2]
	ldr r6, [r4, r6]
	add r5, r5, #1
	str r1, [r6, r3]
	mov r1, #0x4d
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	ldr r6, [r4, r7]
	ldrh r1, [r1, r2]
	add r6, r6, r3
	add r2, r2, #2
	str r1, [r6, #4]
	ldr r1, [r4, r0]
	add r3, #0x10
	cmp r5, r1
	blt _022428DC
_02242904:
	mov r2, #0x67
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x66
	bl sub_0200B144
	ldr r1, _02242934 ; =0x000004D4
	mov r2, #1
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02242920: .word 0x02249944
_02242924: .word 0x000004CC
_02242928: .word 0x000004C8
_0224292C: .word 0x0000FFFF
_02242930: .word 0x000004DC
_02242934: .word 0x000004D4
	thumb_func_end ov62_022427D0

	thumb_func_start ov62_02242938
ov62_02242938: ; 0x02242938
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	ldr r0, _02242964 ; =0x000004D4
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _02242968 ; =0x000004DC
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, _0224296C ; =0x000004D8
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_02242964: .word 0x000004D4
_02242968: .word 0x000004DC
_0224296C: .word 0x000004D8
	thumb_func_end ov62_02242938

	thumb_func_start ov62_02242970
ov62_02242970: ; 0x02242970
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _02242982
	b _02242B0C
_02242982:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224298E: ; jump table
	.short _02242998 - _0224298E - 2 ; case 0
	.short _022429CE - _0224298E - 2 ; case 1
	.short _02242A46 - _0224298E - 2 ; case 2
	.short _02242AAA - _0224298E - 2 ; case 3
	.short _02242ACA - _0224298E - 2 ; case 4
_02242998:
	mov r1, #0x73
	bl ov62_02231B3C
	ldr r2, _02242B18 ; =0x000004C3
	mov r1, #0xff
	strb r1, [r5, r2]
	add r0, r2, #1
	strb r1, [r5, r0]
	ldrb r1, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	add r0, r4, #0
	bl ov62_022419D4
	add r0, r4, #0
	mov r1, #1
	bl ov62_02245C08
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242B14
_022429CE:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242A2C
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _02242B1C ; =0x0000047C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_022335B0
	ldr r0, _02242B20 ; =0x0000049C
	ldr r2, _02242B24 ; =0x02249214
	add r0, r4, r0
	add r1, r4, #0
	bl ov62_022324A0
	ldr r1, _02242B1C ; =0x0000047C
	add r0, r4, r1
	add r1, #0x20
	add r1, r4, r1
	bl ov62_02233638
	ldr r0, _02242B20 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	mov r2, #2
	bl ov62_0223331C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02242A2C:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02242B14
_02242A46:
	ldr r0, _02242B1C ; =0x0000047C
	add r0, r4, r0
	bl ov62_02233664
	ldr r1, _02242B20 ; =0x0000049C
	add r0, r4, r1
	sub r1, #0x10
	ldrsh r1, [r4, r1]
	bl ov62_022332AC
	ldr r0, _02242B20 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_02232F68
	cmp r0, #0
	beq _02242A92
	ldr r0, _02242B28 ; =0x0000088C
	ldr r0, [r4, r0]
	bl sub_02030BFC
	ldr r1, _02242B18 ; =0x000004C3
	strb r0, [r5, r1]
	ldr r0, _02242B28 ; =0x0000088C
	ldr r0, [r4, r0]
	bl sub_02030C08
	ldr r2, _02242B2C ; =0x000004C4
	strb r0, [r5, r2]
	sub r1, r2, #1
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	add r0, r4, #0
	bl ov62_022419D4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02242A92:
	ldr r0, _02242B30 ; =0x02249138
	bl sub_02022760
	cmp r0, #0
	beq _02242B14
	add r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242B14
_02242AAA:
	ldr r0, _02242B1C ; =0x0000047C
	add r0, r4, r0
	bl ov62_02233600
	ldr r0, _02242B20 ; =0x0000049C
	add r0, r4, r0
	bl ov62_022332FC
	ldr r0, _02242B20 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_022334FC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02242ACA:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242AF2
	add r0, r4, #0
	mov r1, #0
	bl ov62_02245C08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02242AF2:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02242B14
_02242B0C:
	add r0, r4, #0
	mov r1, #0xb
	bl ov62_0222FB60
_02242B14:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242B18: .word 0x000004C3
_02242B1C: .word 0x0000047C
_02242B20: .word 0x0000049C
_02242B24: .word 0x02249214
_02242B28: .word 0x0000088C
_02242B2C: .word 0x000004C4
_02242B30: .word 0x02249138
	thumb_func_end ov62_02242970

	thumb_func_start ov62_02242B34
ov62_02242B34: ; 0x02242B34
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02242B4A
	cmp r1, #1
	beq _02242B64
	b _02242BAE
_02242B4A:
	mov r1, #0x38
	mov r2, #3
	bl ov62_022343B8
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #7
	bl ov62_022343B8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242BB4
_02242B64:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242B94
	add r0, r5, #0
	mov r1, #0x7c
	bl ov62_02231B3C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02241AA4
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02242B94:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02242BB4
_02242BAE:
	mov r1, #3
	bl ov62_0222FB60
_02242BB4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02242B34

	thumb_func_start ov62_02242BB8
ov62_02242BB8: ; 0x02242BB8
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _02242BD2
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02242BD2:
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _02242CB6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242BE4: ; jump table
	.short _02242BEC - _02242BE4 - 2 ; case 0
	.short _02242C02 - _02242BE4 - 2 ; case 1
	.short _02242C42 - _02242BE4 - 2 ; case 2
	.short _02242C8C - _02242BE4 - 2 ; case 3
_02242BEC:
	add r0, r4, #0
	mov r1, #0x75
	bl ov62_02231B3C
	ldr r0, _02242CE0 ; =0x00000565
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242CD8
_02242C02:
	ldr r0, _02242CE4 ; =0x000004C2
	ldrb r6, [r5, r0]
	cmp r6, #0xff
	bne _02242C1A
	add r0, r4, #0
	bl sub_0208BE68
	cmp r0, #1
	bne _02242C18
	mov r6, #0xff
	b _02242C1A
_02242C18:
	mov r6, #0xfe
_02242C1A:
	add r0, r4, #0
	bl ov62_0224112C
	ldr r3, _02242CE8 ; =0x000004C4
	lsl r2, r6, #0x18
	ldrb r1, [r5, r3]
	lsr r2, r2, #0x18
	str r1, [sp]
	sub r1, r3, #4
	sub r3, r3, #1
	ldrh r1, [r5, r1]
	ldrb r3, [r5, r3]
	bl ov61_0222B394
	cmp r0, #1
	bne _02242CD8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242CD8
_02242C42:
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl ov61_0222BB48
	cmp r0, #1
	ldr r0, _02242CE0 ; =0x00000565
	bne _02242C76
	mov r1, #0
	bl sub_020057A4
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #7
	bl ov62_022345B8
	ldr r0, _02242CEC ; =0x00004138
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242CD8
_02242C76:
	mov r1, #0
	bl sub_020057A4
	mov r0, #0x51
	mov r1, #0x76
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242CD8
_02242C8C:
	ldr r0, _02242CEC ; =0x00004138
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02242CA8
	mov r1, #0x51
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov62_02231B3C
	ldr r0, _02242CF0 ; =0x00000564
	bl sub_02005748
	b _02242CAE
_02242CA8:
	ldr r0, _02242CF4 ; =0x0000055F
	bl sub_02005748
_02242CAE:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02242CD8
_02242CB6:
	ldr r0, _02242CF8 ; =0x0000049C
	add r0, r4, r0
	bl ov62_02233310
	ldr r0, _02242CEC ; =0x00004138
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02242CD0
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
	b _02242CD8
_02242CD0:
	add r0, r4, #0
	mov r1, #0xd
	bl ov62_0222FB60
_02242CD8:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02242CE0: .word 0x00000565
_02242CE4: .word 0x000004C2
_02242CE8: .word 0x000004C4
_02242CEC: .word 0x00004138
_02242CF0: .word 0x00000564
_02242CF4: .word 0x0000055F
_02242CF8: .word 0x0000049C
	thumb_func_end ov62_02242BB8

	thumb_func_start ov62_02242CFC
ov62_02242CFC: ; 0x02242CFC
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02242D12
	cmp r1, #1
	beq _02242D3A
	b _02242D7C
_02242D12:
	bl ov62_02241BB8
	add r0, r5, #0
	bl ov62_02241BF8
	add r0, r5, #0
	bl ov62_02231B8C
	ldr r0, _02242D88 ; =0x00000608
	ldr r0, [r4, r0]
	bl sub_02024034
	ldr r0, _02242D8C ; =0x0000060C
	ldr r0, [r4, r0]
	bl sub_02024034
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242D82
_02242D3A:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02242D62
	add r0, r5, #0
	mov r1, #1
	bl ov62_02245C08
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02242D62:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02242D82
_02242D7C:
	mov r1, #0xe
	bl ov62_0222FB60
_02242D82:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02242D88: .word 0x00000608
_02242D8C: .word 0x0000060C
	thumb_func_end ov62_02242CFC

	thumb_func_start ov62_02242D90
ov62_02242D90: ; 0x02242D90
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02242DAA
	cmp r1, #1
	bne _02242DA8
	b _02242EAC
_02242DA8:
	b _02242F4C
_02242DAA:
	bl sub_0202F250
	cmp r0, #0
	beq _02242DB6
	bl sub_0202F22C
_02242DB6:
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r3, _02242F58 ; =0x02249298
	add r2, r4, r0
	mov r6, #5
_02242DC0:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _02242DC0
	ldr r0, [r3, #0]
	mov r1, #0
	str r0, [r2, #0]
	mov r0, #0x4e
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _02242F5C ; =0x00004138
	add r0, r0, #4
	ldr r1, [r5, r1]
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov62_022339DC
	mov r0, #0x66
	bl ov62_02233A68
	ldr r1, _02242F60 ; =0x0000050C
	mov r2, #3
	str r0, [r4, r1]
	add r0, r5, #0
	mov r1, #4
	bl ov62_022343B8
	mov r1, #7
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_022343B8
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	add r0, r5, #0
	bl ov62_02241C38
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _02242F64 ; =0x0000047C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_022335B0
	ldr r3, _02242F68 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r3
	add r3, #0x44
	mov r2, #0
	add r3, r4, r3
	bl ov62_02232594
	ldr r1, _02242F6C ; =0x000004E4
	mov r0, #1
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x68
	sub r1, #0x48
	add r0, r5, r0
	add r1, r5, r1
	bl ov62_02233638
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _02242F68 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #1
	bl ov62_0223331C
	ldr r0, _02242F68 ; =0x0000049C
	mov r1, #0x40
	add r0, r5, r0
	mov r2, #0xb8
	bl ov62_02233434
	ldr r0, _02242F68 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_02233064
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_02241278
	add r0, r5, #0
	mov r1, #0
	bl ov62_0224141C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242F52
_02242EAC:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02242F1A
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	add r0, r5, #0
	mov r1, #1
	bl ov62_0224141C
	ldr r3, _02242F70 ; =0x000004D8
	mov r1, #0x6f
	ldr r6, [r5, r3]
	mov r3, #0x18
	mul r3, r6
	lsl r1, r1, #4
	add r3, #0x4c
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x10
	asr r3, r3, #0x10
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0xc
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02242F1A:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02242F52
_02242F4C:
	mov r1, #0xf
	bl ov62_0222FB60
_02242F52:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02242F58: .word 0x02249298
_02242F5C: .word 0x00004138
_02242F60: .word 0x0000050C
_02242F64: .word 0x0000047C
_02242F68: .word 0x0000049C
_02242F6C: .word 0x000004E4
_02242F70: .word 0x000004D8
	thumb_func_end ov62_02242D90

	thumb_func_start ov62_02242F74
ov62_02242F74: ; 0x02242F74
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02242F8E
	cmp r1, #1
	beq _02243004
	cmp r1, #2
	beq _0224307C
	b _02243108
_02242F8E:
	ldr r0, _02243114 ; =0x0000047C
	add r0, r5, r0
	bl ov62_02233664
	ldr r1, _02243118 ; =0x0000049C
	add r0, r5, r1
	sub r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022331C8
	ldr r0, _02243118 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_02233064
	ldr r2, _0224311C ; =0x000004D8
	mov r0, #0x6f
	ldr r3, [r5, r2]
	mov r2, #0x18
	mul r2, r3
	lsl r0, r0, #4
	add r2, #0x4c
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0x10
	asr r2, r2, #0x10
	bl sub_0208B8EC
	add r0, r5, #0
	bl ov62_022414C0
	ldr r0, _02243120 ; =0x02249134
	bl sub_02022760
	cmp r0, #0
	beq _02242FE6
	add r0, r5, #0
	bl ov62_02234520
	mov r0, #0x11
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02242FE6:
	ldr r0, _02243124 ; =0x02249138
	bl sub_02022760
	cmp r0, #0
	bne _02242FF2
	b _0224310E
_02242FF2:
	add r0, r5, #0
	bl ov62_02234520
	mov r0, #0x10
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0224310E
_02243004:
	ldr r0, _02243114 ; =0x0000047C
	add r0, r5, r0
	bl ov62_02233600
	ldr r0, _02243118 ; =0x0000049C
	add r0, r5, r0
	bl ov62_022332FC
	ldr r0, _02243118 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_022334FC
	ldr r0, _02243128 ; =0x0000050C
	ldr r0, [r4, r0]
	bl ov62_02233A74
	add r0, r5, #0
	bl ov62_02241460
	add r0, r5, #0
	bl ov62_02233A44
	add r0, r5, #0
	bl ov62_02241BB8
	add r0, r5, #0
	bl ov62_02241BF8
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, [r4, #0xc]
	cmp r0, #0x10
	bne _02243076
	ldr r0, _02243114 ; =0x0000047C
	add r0, r5, r0
	bl ov62_022335F4
	ldr r0, _02243118 ; =0x0000049C
	add r0, r5, r0
	bl ov62_02233310
	mov r0, #0x51
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_02243076:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0224307C:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022430D6
	add r0, r5, #0
	mov r1, #0
	bl ov62_02245C08
	ldr r0, [r4, #0xc]
	cmp r0, #0x11
	bne _022430D0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl sub_0200D364
_022430D0:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_022430D6:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0224310E
_02243108:
	ldr r1, [r4, #0xc]
	bl ov62_0222FB60
_0224310E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02243114: .word 0x0000047C
_02243118: .word 0x0000049C
_0224311C: .word 0x000004D8
_02243120: .word 0x02249134
_02243124: .word 0x02249138
_02243128: .word 0x0000050C
	thumb_func_end ov62_02242F74

	thumb_func_start ov62_0224312C
ov62_0224312C: ; 0x0224312C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02243142
	cmp r1, #1
	beq _022431A4
	b _02243222
_02243142:
	mov r1, #0x38
	mov r2, #3
	bl ov62_022343B8
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #7
	bl ov62_022343B8
	add r0, r5, #0
	mov r1, #0
	bl ov62_02245C08
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0224322C ; =0x022491AC
	ldr r2, _02243230 ; =ov62_022458A0
	mov r1, #5
	add r3, r5, #0
	bl sub_02023FCC
	ldr r1, _02243234 ; =0x00000608
	ldr r2, _02243238 ; =ov62_02245968
	str r0, [r4, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0224323C ; =0x022491F0
	mov r1, #9
	add r3, r5, #0
	bl sub_02023FCC
	ldr r1, _02243240 ; =0x0000060C
	str r0, [r4, r1]
	add r0, r5, #0
	mov r1, #0
	bl ov62_02241AA4
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02243228
_022431A4:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02243208
	add r0, r5, #0
	mov r1, #0x7c
	bl ov62_02231AAC
	add r0, r5, #0
	mov r1, #0
	bl ov62_022417C0
	mov r1, #0x13
	lsl r1, r1, #6
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl ov62_02241954
	ldr r1, _02243244 ; =0x000004C2
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl ov62_022418DC
	ldr r2, _02243248 ; =0x000004C3
	add r0, r5, #0
	ldrb r1, [r4, r2]
	add r2, r2, #1
	ldrb r2, [r4, r2]
	bl ov62_022419D4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02243208:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02243228
_02243222:
	mov r1, #3
	bl ov62_0222FB60
_02243228:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224322C: .word 0x022491AC
_02243230: .word ov62_022458A0
_02243234: .word 0x00000608
_02243238: .word ov62_02245968
_0224323C: .word 0x022491F0
_02243240: .word 0x0000060C
_02243244: .word 0x000004C2
_02243248: .word 0x000004C3
	thumb_func_end ov62_0224312C

	thumb_func_start ov62_0224324C
ov62_0224324C: ; 0x0224324C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0224325E
	b _02243392
_0224325E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224326A: ; jump table
	.short _02243272 - _0224326A - 2 ; case 0
	.short _02243282 - _0224326A - 2 ; case 1
	.short _022432CC - _0224326A - 2 ; case 2
	.short _02243336 - _0224326A - 2 ; case 3
_02243272:
	mov r1, #6
	mov r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224339A
_02243282:
	bl ov62_0224443C
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _022433A0 ; =0x0224919C
	ldr r2, _022433A4 ; =ov62_02245994
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	ldr r1, _022433A8 ; =0x00000608
	ldr r2, _022433AC ; =ov62_02245A28
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _022433B0 ; =0x0224915C
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	ldr r1, _022433B4 ; =0x0000060C
	ldr r2, _022433B8 ; =ov62_02245A90
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _022433BC ; =0x0224913C
	mov r1, #2
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x61
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224339A
_022432CC:
	mov r1, #0x73
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r5, r1]
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224339A
_02243336:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02243378
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	add r0, r4, #0
	bl ov62_02245640
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02243378:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0224339A
_02243392:
	add r0, r4, #0
	mov r1, #0x12
	bl ov62_0222FB60
_0224339A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022433A0: .word 0x0224919C
_022433A4: .word ov62_02245994
_022433A8: .word 0x00000608
_022433AC: .word ov62_02245A28
_022433B0: .word 0x0224915C
_022433B4: .word 0x0000060C
_022433B8: .word ov62_02245A90
_022433BC: .word 0x0224913C
	thumb_func_end ov62_0224324C

	thumb_func_start ov62_022433C0
ov62_022433C0: ; 0x022433C0
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _022433D4 ; =0x00000608
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_022433D4: .word 0x00000608
	thumb_func_end ov62_022433C0

	thumb_func_start ov62_022433D8
ov62_022433D8: ; 0x022433D8
	push {r4, lr}
	add r4, r0, #0
	bl ov62_02245D80
	cmp r0, #0
	beq _022433EC
	add r0, r4, #0
	mov r1, #0x12
	bl ov62_0222FB60
_022433EC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_022433D8

	thumb_func_start ov62_022433F0
ov62_022433F0: ; 0x022433F0
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	bl ov62_02246850
	cmp r0, #0
	beq _0224340A
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0224340A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_022433F0

	thumb_func_start ov62_02243410
ov62_02243410: ; 0x02243410
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02243426
	cmp r1, #1
	beq _02243494
	b _02243502
_02243426:
	ldr r0, _0224350C ; =0x00000608
	ldr r0, [r4, r0]
	bl sub_02024034
	ldr r0, _02243510 ; =0x0000060C
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r5, #0
	bl ov62_022444A0
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02243474
	sub r0, #0xc0
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02234228
	b _0224347E
_02243474:
	add r4, #0x80
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_02232394
_0224347E:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_022455C4
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02243508
_02243494:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022434E8
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x6f
	bl ov62_0223124C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D364
	add r0, r5, #0
	mov r1, #1
	bl ov62_02245C08
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_022434E8:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02243508
_02243502:
	mov r1, #0xe
	bl ov62_0222FB60
_02243508:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224350C: .word 0x00000608
_02243510: .word 0x0000060C
	thumb_func_end ov62_02243410

	thumb_func_start ov62_02243514
ov62_02243514: ; 0x02243514
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	bl sub_0202FE04
	mov r1, #4
	mov r2, #0
	bl sub_0202FE98
	add r3, r0, #0
	add r2, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl ov62_02234970
	cmp r0, #0
	bne _0224353E
	b _0224380A
_0224353E:
	ldr r0, [r4, #8]
	cmp r0, #5
	bls _02243546
	b _022437DC
_02243546:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02243552: ; jump table
	.short _0224355E - _02243552 - 2 ; case 0
	.short _022435AC - _02243552 - 2 ; case 1
	.short _02243612 - _02243552 - 2 ; case 2
	.short _02243622 - _02243552 - 2 ; case 3
	.short _02243660 - _02243552 - 2 ; case 4
	.short _02243772 - _02243552 - 2 ; case 5
_0224355E:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224357C
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234228
	b _02243586
_0224357C:
	add r5, #0x80
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_02232394
_02243586:
	add r0, r4, #0
	bl ov62_022455C4
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224381C
_022435AC:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022435F8
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_02245D50
	add r0, r4, #0
	bl ov62_02244BE4
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022435F8:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0224381C
_02243612:
	ldr r1, _02243824 ; =0x00000115
	add r0, r4, #0
	bl ov62_02231AAC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224381C
_02243622:
	bl sub_02022798
	cmp r0, #0
	bne _0224362C
	b _0224381C
_0224362C:
	add r0, r4, #0
	bl ov62_02244CA4
	add r0, r4, #0
	bl ov62_02231B8C
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224381C
_02243660:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_02245C64
	ldr r0, _02243828 ; =0x0000086C
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _022436A2
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r5, #0x30]
	mov r1, #3
	bl sub_0200D364
_022436A2:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_02245640
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224371E
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	b _0224374A
_0224371E:
	add r0, r5, #0
	add r0, #0x80
	add r1, r4, #0
	bl ov62_02232378
	add r5, #0x80
	add r0, r5, #0
	mov r1, #0
	bl ov62_022323B8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x50
	mov r3, #3
	bl sub_0200710C
_0224374A:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #6
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224381C
_02243772:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022437C2
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _022437A2
	sub r0, #0xc0
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	b _022437AC
_022437A2:
	add r0, r5, #0
	add r0, #0x80
	mov r1, #1
	bl ov62_022323B8
_022437AC:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022437C2:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0224381C
_022437DC:
	ldr r1, _0224382C ; =0x00004138
	mov r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _02243800
	mov r1, #0x9a
	lsl r1, r1, #6
	add r5, r4, r1
	ldr r2, _0224382C ; =0x00004138
	add r6, r4, #0
	sub r1, #0x78
_022437F2:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	add r0, r0, #1
	add r5, #0xe4
	add r6, r6, #4
	cmp r0, r3
	blt _022437F2
_02243800:
	add r0, r4, #0
	mov r1, #0x12
	bl ov62_0222FB60
	b _0224381C
_0224380A:
	add r0, r4, #0
	bl ov62_02245ECC
	cmp r0, #0
	beq _0224381C
	add r0, r4, #0
	mov r1, #0x17
	bl ov62_0222FB60
_0224381C:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02243824: .word 0x00000115
_02243828: .word 0x0000086C
_0224382C: .word 0x00004138
	thumb_func_end ov62_02243514

	thumb_func_start ov62_02243830
ov62_02243830: ; 0x02243830
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _02243844 ; =0x0000060C
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02243844: .word 0x0000060C
	thumb_func_end ov62_02243830

	thumb_func_start ov62_02243848
ov62_02243848: ; 0x02243848
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl ov62_02246640
	cmp r0, #0
	beq _02243880
	ldr r1, _02243884 ; =0x00004138
	mov r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _02243878
	mov r1, #0x9a
	lsl r1, r1, #6
	add r5, r4, r1
	ldr r2, _02243884 ; =0x00004138
	add r6, r4, #0
	sub r1, #0x78
_0224386A:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	add r0, r0, #1
	add r5, #0xe4
	add r6, r6, #4
	cmp r0, r3
	blt _0224386A
_02243878:
	add r0, r4, #0
	mov r1, #0x12
	bl ov62_0222FB60
_02243880:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02243884: .word 0x00004138
	thumb_func_end ov62_02243848

	thumb_func_start ov62_02243888
ov62_02243888: ; 0x02243888
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl ov62_02246428
	cmp r0, #0
	beq _022438C0
	ldr r1, _022438C4 ; =0x00004138
	mov r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _022438B8
	mov r1, #0x9a
	lsl r1, r1, #6
	add r5, r4, r1
	ldr r2, _022438C4 ; =0x00004138
	add r6, r4, #0
	sub r1, #0x78
_022438AA:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	add r0, r0, #1
	add r5, #0xe4
	add r6, r6, #4
	cmp r0, r3
	blt _022438AA
_022438B8:
	add r0, r4, #0
	mov r1, #0x12
	bl ov62_0222FB60
_022438C0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022438C4: .word 0x00004138
	thumb_func_end ov62_02243888

	thumb_func_start ov62_022438C8
ov62_022438C8: ; 0x022438C8
	push {r4, lr}
	add r4, r0, #0
	bl ov62_02245FE4
	cmp r0, #0
	beq _022438DC
	add r0, r4, #0
	mov r1, #0x1a
	bl ov62_0222FB60
_022438DC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_022438C8

	thumb_func_start ov62_022438E0
ov62_022438E0: ; 0x022438E0
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_022438E0

	thumb_func_start ov62_022438F8
ov62_022438F8: ; 0x022438F8
	push {r4, lr}
	add r4, r0, #0
	bl ov62_02246090
	cmp r0, #0
	beq _0224390C
	add r0, r4, #0
	mov r1, #0x17
	bl ov62_0222FB60
_0224390C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_022438F8

	thumb_func_start ov62_02243910
ov62_02243910: ; 0x02243910
	push {r3, lr}
	bl ov62_0224613C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_02243910

	thumb_func_start ov62_0224391C
ov62_0224391C: ; 0x0224391C
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _02243936
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02243936:
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _0224393E
	b _02243AC4
_0224393E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224394A: ; jump table
	.short _02243954 - _0224394A - 2 ; case 0
	.short _0224398A - _0224394A - 2 ; case 1
	.short _022439C4 - _0224394A - 2 ; case 2
	.short _02243A0A - _0224394A - 2 ; case 3
	.short _02243A36 - _0224394A - 2 ; case 4
_02243954:
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224397A
	sub r0, #0xc0
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	b _02243984
_0224397A:
	add r0, r5, #0
	add r0, #0x80
	mov r1, #0
	bl ov62_022323B8
_02243984:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0224398A:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022439AA
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022439AA:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02243AF8
_022439C4:
	add r0, r4, #0
	mov r1, #0x75
	bl ov62_02231AAC
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, _02243B00 ; =0x000004B8
	mov r1, #0
	str r1, [r5, r0]
	add r0, #0xad
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02243AF8
_02243A0A:
	add r0, r4, #0
	bl ov62_0224112C
	ldr r1, _02243B04 ; =0x000004D4
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r1, _02243B08 ; =0x00002608
	ldr r2, [r2, r1]
	add r1, r2, #0
	add r1, #0xd8
	add r2, #0xdc
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov61_0222B524
	cmp r0, #1
	bne _02243AF8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02243AF8
_02243A36:
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl ov61_0222BB48
	cmp r0, #1
	ldr r0, _02243B0C ; =0x00000565
	bne _02243A70
	mov r1, #0
	bl sub_020057A4
	add r0, r4, #0
	bl ov62_02231B8C
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #8
	bl ov62_022348B8
	ldr r0, [r4, #8]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _02243B00 ; =0x000004B8
	str r1, [r5, r0]
	b _02243AA8
_02243A70:
	mov r1, #0
	bl sub_020057A4
	mov r0, #0xff
	str r0, [r4, #8]
	ldr r0, _02243B00 ; =0x000004B8
	mov r1, #1
	str r1, [r5, r0]
	ldr r1, _02243B10 ; =0x0000413C
	add r2, r4, r1
	add r1, r0, #0
	add r1, #0x1c
	ldr r1, [r4, r1]
	add r2, r2, r1
	ldr r1, _02243B14 ; =0x00000878
	str r2, [r4, r1]
	add r2, r1, #0
	add r2, #0x3c
	ldr r3, [r4, r2]
	add r2, r0, #4
	str r3, [r5, r2]
	add r0, r0, #4
	add r1, #0x40
	ldr r0, [r5, r0]
	ldr r2, _02243B18 ; =0x00001D4C
	add r1, r4, r1
	bl MI_CpuCopy8
_02243AA8:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	b _02243AF8
_02243AC4:
	ldr r0, _02243B00 ; =0x000004B8
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02243AEA
	add r0, #0xa7
	bl sub_02005748
	add r0, r4, #0
	bl ov62_02231B8C
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov62_0222FB60
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223381C
	b _02243AF8
_02243AEA:
	add r0, r4, #0
	bl ov62_02231B8C
	add r0, r4, #0
	mov r1, #0x1f
	bl ov62_0222FB60
_02243AF8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02243B00: .word 0x000004B8
_02243B04: .word 0x000004D4
_02243B08: .word 0x00002608
_02243B0C: .word 0x00000565
_02243B10: .word 0x0000413C
_02243B14: .word 0x00000878
_02243B18: .word 0x00001D4C
	thumb_func_end ov62_0224391C

	thumb_func_start ov62_02243B1C
ov62_02243B1C: ; 0x02243B1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #5
	bls _02243B30
	b _02243D74
_02243B30:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02243B3C: ; jump table
	.short _02243B48 - _02243B3C - 2 ; case 0
	.short _02243C3E - _02243B3C - 2 ; case 1
	.short _02243C88 - _02243B3C - 2 ; case 2
	.short _02243CEA - _02243B3C - 2 ; case 3
	.short _02243D46 - _02243B3C - 2 ; case 4
	.short _02243D64 - _02243B3C - 2 ; case 5
_02243B48:
	bl ov62_02234314
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	bl ov62_022315C8
	ldr r0, _02243D90 ; =0x00004138
	mov r2, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _02243B7C
	mov r0, #0x9a
	lsl r0, r0, #6
	add r7, r0, #0
	add r3, r4, r0
	ldr r0, _02243D90 ; =0x00004138
	add r6, r4, #0
	sub r7, #0x78
_02243B6E:
	str r3, [r6, r7]
	ldr r1, [r4, r0]
	add r2, r2, #1
	add r3, #0xe4
	add r6, r6, #4
	cmp r2, r1
	blt _02243B6E
_02243B7C:
	ldr r0, _02243D94 ; =0x000004D4
	mov r3, #3
	ldr r0, [r4, r0]
	add r1, r4, r0
	ldr r0, _02243D98 ; =0x0000413C
	ldrb r1, [r1, r0]
	ldr r0, _02243D9C ; =0x0000079C
	strb r1, [r5, r0]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #6
	mov r2, #7
	bl ov62_022343B8
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	add r0, r4, #0
	bl ov62_02245C64
	add r0, r4, #0
	mov r1, #0
	bl ov62_02245C08
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r5, #0x30]
	mov r1, #3
	bl sub_0200D364
	mov r1, #0x13
	ldr r0, _02243DA0 ; =0x0000FFFF
	lsl r1, r1, #6
	strh r0, [r5, r1]
	mov r2, #0xff
	add r0, r1, #2
	strb r2, [r5, r0]
	add r0, r1, #3
	strb r2, [r5, r0]
	add r0, r1, #4
	strb r2, [r5, r0]
	add r0, r1, #0
	add r2, #0xf5
	add r0, #0x54
	str r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x1c
	ldrsh r0, [r4, r0]
	add r1, #0x50
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02243D8A
_02243C3E:
	bl ov62_0224443C
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _02243DA4 ; =0x0224919C
	ldr r2, _02243DA8 ; =ov62_02245994
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	ldr r1, _02243DAC ; =0x00000608
	ldr r2, _02243DB0 ; =ov62_02245A28
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _02243DB4 ; =0x0224915C
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	ldr r1, _02243DB8 ; =0x0000060C
	ldr r2, _02243DBC ; =ov62_02245A90
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _02243DC0 ; =0x0224913C
	mov r1, #2
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x61
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02243D8A
_02243C88:
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02243D8A
_02243CEA:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02243D2C
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	add r0, r4, #0
	bl ov62_02245640
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02243D2C:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02243D8A
_02243D46:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02243D8A
_02243D64:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02243D8A
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02243D8A
_02243D74:
	ldr r0, _02243DC4 ; =0x000006D8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov62_02230098
	add r0, r4, #0
	mov r1, #0x12
	bl ov62_0222FB60
_02243D8A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243D90: .word 0x00004138
_02243D94: .word 0x000004D4
_02243D98: .word 0x0000413C
_02243D9C: .word 0x0000079C
_02243DA0: .word 0x0000FFFF
_02243DA4: .word 0x0224919C
_02243DA8: .word ov62_02245994
_02243DAC: .word 0x00000608
_02243DB0: .word ov62_02245A28
_02243DB4: .word 0x0224915C
_02243DB8: .word 0x0000060C
_02243DBC: .word ov62_02245A90
_02243DC0: .word 0x0224913C
_02243DC4: .word 0x000006D8
	thumb_func_end ov62_02243B1C

	thumb_func_start ov62_02243DC8
ov62_02243DC8: ; 0x02243DC8
	push {r3, r4, r5, lr}
	mov r1, #0x7a
	add r5, r0, #0
	mov r0, #0x66
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x7a
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl memset
	mov r0, #0x86
	lsl r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	bl ov62_022315C8
	add r0, r5, #0
	mov r1, #1
	bl ov62_0222FB60
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02243DC8

	thumb_func_start ov62_02243E20
ov62_02243E20: ; 0x02243E20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r2, [r5, #8]
	ldr r4, [r5, r1]
	cmp r2, #0
	beq _02243E36
	cmp r2, #1
	beq _02243E94
	b _02243EF0
_02243E36:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02243E4A
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02243E4A:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02243FA4
_02243E94:
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_02231454
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	add r1, r0, #0
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #2
	bl sub_02019060
	mov r0, #4
	mov r1, #0
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #6
	mov r1, #1
	bl sub_02019060
	mov r0, #7
	mov r1, #2
	bl sub_02019060
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02243FA4
_02243EF0:
	add r1, #0xc
	ldr r1, [r5, r1]
	cmp r1, #0xc8
	beq _02243F02
	cmp r1, #0xd2
	beq _02243F32
	cmp r1, #0xdc
	beq _02243F62
	b _02243F8A
_02243F02:
	mov r1, #0
	bl ov62_0223376C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	add r0, r5, #0
	bl ov62_022300BC
	cmp r0, #1
	bne _02243F28
	add r0, r5, #0
	mov r1, #6
	bl ov62_0222FB60
	b _02243FA4
_02243F28:
	add r0, r5, #0
	mov r1, #2
	bl ov62_0222FB60
	b _02243FA4
_02243F32:
	mov r1, #0
	bl ov62_0223376C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	add r0, r5, #0
	bl ov62_022300BC
	cmp r0, #1
	bne _02243F58
	add r0, r5, #0
	mov r1, #0x1e
	bl ov62_0222FB60
	b _02243FA4
_02243F58:
	add r0, r5, #0
	mov r1, #2
	bl ov62_0222FB60
	b _02243FA4
_02243F62:
	bl ov62_022300BC
	cmp r0, #1
	bne _02243F74
	add r0, r5, #0
	mov r1, #0x13
	bl ov62_0222FB60
	b _02243F7C
_02243F74:
	add r0, r5, #0
	mov r1, #2
	bl ov62_0222FB60
_02243F7C:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	b _02243FA4
_02243F8A:
	mov r1, #0
	bl ov62_0223376C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	add r0, r5, #0
	mov r1, #2
	bl ov62_0222FB60
_02243FA4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02243E20

	thumb_func_start ov62_02243FA8
ov62_02243FA8: ; 0x02243FA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	mov r2, #0x75
	ldr r6, [r5, r1]
	lsl r2, r2, #2
	add r4, r6, r2
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _02243FCA
	cmp r2, #1
	beq _0224403A
	cmp r2, #2
	beq _0224405E
	b _022440A0
_02243FCA:
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #5
	sub r1, #0x30
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r5, r1]
	bl sub_02025E44
	add r3, r0, #0
	mov r0, #0x66
	mov r1, #0xc
	add r2, sp, #0xc
	bl ov62_02246B00
	ldr r1, _022440AC ; =0x000004AC
	mov r2, #0x22
	str r0, [r6, r1]
	ldr r0, [r5, #0x14]
	lsl r2, r2, #4
	str r0, [r4, r2]
	ldr r3, [r5, #0x18]
	add r0, r2, #4
	str r3, [r4, r0]
	add r0, r2, #0
	ldr r3, [r5, #0x1c]
	add r0, #8
	str r3, [r4, r0]
	add r0, r2, #0
	ldr r3, [r5, #0x24]
	add r0, #0xc
	str r3, [r4, r0]
	add r0, r2, #0
	ldr r3, [r5, #0x28]
	add r0, #0x10
	str r3, [r4, r0]
	add r0, r2, #0
	add r0, #0x88
	ldr r3, [r6, r1]
	add r7, r4, r0
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	add r2, #0xb4
	str r5, [r4, r2]
	add r0, r5, #0
	bl ov62_02245B24
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0224403A:
	mov r2, #8
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r6, #4
	bl ov62_022314F0
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022440A6
_0224405E:
	add r0, r6, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r6, #0
	add r1, r6, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02244086
	add r0, r5, #0
	mov r1, #0x70
	bl ov62_0223197C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02244086:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r6, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _022440A6
_022440A0:
	mov r1, #3
	bl ov62_0222FB60
_022440A6:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022440AC: .word 0x000004AC
	thumb_func_end ov62_02243FA8

	thumb_func_start ov62_022440B0
ov62_022440B0: ; 0x022440B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov62_02247084
	cmp r0, #1
	bne _022440D0
	add r0, r4, #0
	mov r1, #4
	bl ov62_0222FB60
_022440D0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_022440B0

	thumb_func_start ov62_022440D4
ov62_022440D4: ; 0x022440D4
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r2, [r5, #8]
	add r3, r4, r1
	cmp r2, #0
	beq _022440F2
	cmp r2, #1
	beq _02244118
	b _02244160
_022440F2:
	bl ov62_02231A1C
	mov r2, #8
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r4, #4
	bl ov62_02231560
	ldr r0, _0224417C ; =0x000004AC
	ldr r0, [r4, r0]
	bl ov62_02246B4C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02244118:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02244146
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	add r0, r5, #0
	bl ov62_02245BD8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02244146:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02244176
_02244160:
	add r1, #0xf4
	ldr r1, [r3, r1]
	cmp r1, #0
	beq _02244170
	mov r1, #6
	bl ov62_0222FB60
	b _02244176
_02244170:
	mov r1, #5
	bl ov62_0222FB60
_02244176:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224417C: .word 0x000004AC
	thumb_func_end ov62_022440D4

	thumb_func_start ov62_02244180
ov62_02244180: ; 0x02244180
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _022441B6
	add r4, #8
	add r0, r4, #0
	bl ov62_02231688
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223146C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02244252
_022441B6:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02244222
	add r0, r5, #0
	bl ov62_022318E8
	add r0, r4, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	bl sub_020181C4
	b _02244252
_02244222:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
_02244252:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02244180

	thumb_func_start ov62_02244258
ov62_02244258: ; 0x02244258
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	mov r1, #0x75
	lsl r1, r1, #2
	add r6, r5, r1
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _02244272
	b _022443AA
_02244272:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224427E: ; jump table
	.short _02244288 - _0224427E - 2 ; case 0
	.short _022442C6 - _0224427E - 2 ; case 1
	.short _022442F4 - _0224427E - 2 ; case 2
	.short _02244396 - _0224427E - 2 ; case 3
	.short _022443A4 - _0224427E - 2 ; case 4
_02244288:
	mov r1, #0x75
	bl ov62_0223197C
	ldr r1, _022443CC ; =0x000006F4
	add r0, r4, #0
	ldr r1, [r4, r1]
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	ldr r0, _022443CC ; =0x000006F4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	ldr r0, _022443CC ; =0x000006F4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, _022443D0 ; =0x000004B8
	mov r1, #0
	str r1, [r5, r0]
	add r0, #0xad
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022443C4
_022442C6:
	bl ov62_022411B8
	cmp r0, #0
	bne _022442D4
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_022442D4:
	add r0, r4, #0
	bl ov62_0224112C
	mov r2, #0xb3
	lsl r2, r2, #2
	ldr r1, [r6, r2]
	add r2, r2, #4
	ldr r2, [r6, r2]
	bl ov61_0222B524
	cmp r0, #1
	bne _022443C4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022443C4
_022442F4:
	bl ov62_022411B8
	cmp r0, #0
	bne _02244302
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02244302:
	add r0, r4, #0
	bl ov62_02231A1C
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #0
	bl ov61_0222BB48
	cmp r0, #1
	ldr r0, _022443D4 ; =0x00000565
	bne _0224434A
	mov r1, #0
	bl sub_020057A4
	ldr r0, _022443D8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r3, [sp]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #8
	bl ov62_022348B8
	add r0, r4, #0
	mov r1, #0
	bl ov62_0223376C
	ldr r0, [r4, #8]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _022443D0 ; =0x000004B8
	str r1, [r5, r0]
	b _0224437E
_0224434A:
	mov r1, #0
	bl sub_020057A4
	mov r0, #0xff
	str r0, [r4, #8]
	ldr r0, _022443D0 ; =0x000004B8
	mov r1, #1
	str r1, [r5, r0]
	add r0, #0xa7
	bl sub_02005748
	ldr r0, _022443DC ; =0x00002604
	ldr r1, _022443E0 ; =0x00000878
	add r0, r4, r0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x3c
	ldr r2, [r4, r0]
	ldr r0, _022443E4 ; =0x000004BC
	add r1, #0x40
	str r2, [r5, r0]
	ldr r0, [r5, r0]
	ldr r2, _022443E8 ; =0x00001D4C
	add r1, r4, r1
	bl MI_CpuCopy8
_0224437E:
	ldr r0, _022443CC ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	ldr r0, _022443CC ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	b _022443C4
_02244396:
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022443C4
_022443A4:
	add r0, r1, #1
	str r0, [r4, #8]
	b _022443C4
_022443AA:
	ldr r0, _022443D0 ; =0x000004B8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022443BC
	add r0, r4, #0
	mov r1, #7
	bl ov62_0222FB60
	b _022443C4
_022443BC:
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
_022443C4:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_022443CC: .word 0x000006F4
_022443D0: .word 0x000004B8
_022443D4: .word 0x00000565
_022443D8: .word 0x04000050
_022443DC: .word 0x00002604
_022443E0: .word 0x00000878
_022443E4: .word 0x000004BC
_022443E8: .word 0x00001D4C
	thumb_func_end ov62_02244258

	thumb_func_start ov62_022443EC
ov62_022443EC: ; 0x022443EC
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r0, #0x66
	bl sub_02030A80
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	ldr r0, _02244438 ; =0x000004BC
	add r1, r4, #0
	add r1, #0x80
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl ov61_0222AFC0
	add r0, r4, #0
	add r0, #0x80
	ldr r1, [r0, #0]
	mov r0, #0x43
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x66
	bl sub_0202FF2C
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _02244438 ; =0x000004BC
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	mov r2, #0x64
	add r0, #0x80
	bl MI_CpuCopy8
	pop {r4, pc}
	nop
_02244438: .word 0x000004BC
	thumb_func_end ov62_022443EC

	thumb_func_start ov62_0224443C
ov62_0224443C: ; 0x0224443C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r0, #0x66
	bl sub_02030A80
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	ldr r0, _02244498 ; =0x000004D4
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0224449C ; =0x00002608
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	bl ov61_0222AFC0
	add r0, r4, #0
	add r0, #0x80
	ldr r1, [r0, #0]
	mov r0, #0x43
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x66
	bl sub_0202FF2C
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _02244498 ; =0x000004D4
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r2, r5, r0
	ldr r0, _0224449C ; =0x00002608
	ldr r0, [r2, r0]
	mov r2, #0x64
	add r0, #0x80
	bl MI_CpuCopy8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244498: .word 0x000004D4
_0224449C: .word 0x00002608
	thumb_func_end ov62_0224443C

	thumb_func_start ov62_022444A0
ov62_022444A0: ; 0x022444A0
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0202FF44
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_02030A98
	pop {r4, pc}
	thumb_func_end ov62_022444A0

	thumb_func_start ov62_022444BC
ov62_022444BC: ; 0x022444BC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _022444D0
	b _022446A0
_022444D0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022444DC: ; jump table
	.short _022444E4 - _022444DC - 2 ; case 0
	.short _022444F2 - _022444DC - 2 ; case 1
	.short _022445DC - _022444DC - 2 ; case 2
	.short _02244644 - _022444DC - 2 ; case 3
_022444E4:
	mov r1, #0
	bl ov62_0223376C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022446A8
_022444F2:
	bl ov62_02233790
	cmp r0, #0
	bne _022444FC
	b _022446A8
_022444FC:
	mov r2, #8
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r5, #4
	bl ov62_02231560
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #6
	mov r2, #7
	bl ov62_022343B8
	mov r0, #0
	mov r1, #1
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #1
	bl sub_02019060
	mov r0, #4
	mov r1, #1
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #6
	mov r1, #0
	bl sub_02019060
	mov r0, #7
	mov r1, #2
	bl sub_02019060
	add r0, r4, #0
	bl ov62_022443EC
	add r0, r4, #0
	bl ov62_02245C64
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _022446B0 ; =0x0224919C
	ldr r2, _022446B4 ; =ov62_022457A0
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	ldr r1, _022446B8 ; =0x00000608
	ldr r2, _022446BC ; =ov62_02245800
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _022446C0 ; =0x0224915C
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	ldr r1, _022446C4 ; =0x0000060C
	ldr r2, _022446C8 ; =ov62_02245868
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _022446CC ; =0x0224913C
	mov r1, #2
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x61
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022446A8
_022445DC:
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022446A8
_02244644:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02244686
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	add r0, r4, #0
	bl ov62_02245640
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02244686:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _022446A8
_022446A0:
	add r0, r4, #0
	mov r1, #8
	bl ov62_0222FB60
_022446A8:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_022446B0: .word 0x0224919C
_022446B4: .word ov62_022457A0
_022446B8: .word 0x00000608
_022446BC: .word ov62_02245800
_022446C0: .word 0x0224915C
_022446C4: .word 0x0000060C
_022446C8: .word ov62_02245868
_022446CC: .word 0x0224913C
	thumb_func_end ov62_022444BC

	thumb_func_start ov62_022446D0
ov62_022446D0: ; 0x022446D0
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _022446E4 ; =0x00000608
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_022446E4: .word 0x00000608
	thumb_func_end ov62_022446D0

	thumb_func_start ov62_022446E8
ov62_022446E8: ; 0x022446E8
	push {r4, lr}
	add r4, r0, #0
	bl ov62_02245D80
	cmp r0, #0
	beq _022446FC
	add r0, r4, #0
	mov r1, #8
	bl ov62_0222FB60
_022446FC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_022446E8

	thumb_func_start ov62_02244700
ov62_02244700: ; 0x02244700
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	bl ov62_02246850
	cmp r0, #0
	beq _0224471A
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0224471A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02244700

	thumb_func_start ov62_02244720
ov62_02244720: ; 0x02244720
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _02244732
	b _022448D2
_02244732:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224473E: ; jump table
	.short _02244746 - _0224473E - 2 ; case 0
	.short _022447B4 - _0224473E - 2 ; case 1
	.short _022447F4 - _0224473E - 2 ; case 2
	.short _02244822 - _0224473E - 2 ; case 3
_02244746:
	ldr r0, _022448D8 ; =0x00000608
	ldr r0, [r5, r0]
	bl sub_02024034
	ldr r0, _022448DC ; =0x0000060C
	ldr r0, [r5, r0]
	bl sub_02024034
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02024034
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	bl ov62_022444A0
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02244794
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234228
	b _0224479E
_02244794:
	add r5, #0x80
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_02232394
_0224479E:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_022455C4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022448D2
_022447B4:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022447DA
	add r0, r4, #0
	bl ov62_02245D50
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022447DA:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _022448D2
_022447F4:
	add r5, #8
	add r0, r5, #0
	bl ov62_02231688
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223146C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022448D2
_02244822:
	bl ov62_02233790
	cmp r0, #0
	beq _022448D2
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _022448A2
	add r0, r4, #0
	bl ov62_022318E8
	add r0, r5, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	bl sub_0202F250
	cmp r0, #1
	bne _022448D2
	bl sub_0202F22C
	b _022448D2
_022448A2:
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_022448D2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022448D8: .word 0x00000608
_022448DC: .word 0x0000060C
	thumb_func_end ov62_02244720

	thumb_func_start ov62_022448E0
ov62_022448E0: ; 0x022448E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	ldr r1, _022449B0 ; =0x0000088C
	lsl r6, r2, #2
	add r4, r5, r1
	ldr r1, [r4, r6]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x48]
	cmp r1, #0
	bne _02244900
	mov r1, #8
	bl sub_0200B1EC
	add r4, r0, #0
	b _0224495E
_02244900:
	mov r0, #0x66
	bl ov62_02231690
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #7
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	ldr r0, [r4, r6]
	mov r1, #0x66
	bl sub_02030B94
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov62_022349A8
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200C388
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
_0224495E:
	add r0, sp, #0x18
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	add r1, sp, #0x18
	mov r2, #0x14
	mov r3, #2
	bl sub_0201A870
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022449B4 ; =0x000E0D00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, sp, #0x18
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	add r2, sp, #0x18
	mov r3, #0x66
	bl sub_02012BE0
	add r0, r4, #0
	bl sub_020237BC
	add r0, sp, #0x18
	bl sub_0201A8FC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022449B0: .word 0x0000088C
_022449B4: .word 0x000E0D00
	thumb_func_end ov62_022448E0

	thumb_func_start ov62_022449B8
ov62_022449B8: ; 0x022449B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r1, _02244AAC ; =0x000008A4
	add r5, r0, #0
	sub r1, #0x44
	ldr r6, [r5, r1]
	mov r1, #2
	bl ov62_022302A8
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _02244AAC ; =0x000008A4
	add r0, r5, r0
	bl sub_0201A7A0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, _02244AAC ; =0x000008A4
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r5, r1
	mov r2, #2
	mov r3, #1
	bl sub_0201A7E8
	cmp r4, #0x64
	bne _02244A6A
	add r6, #0x80
	ldr r0, [r6, #0]
	str r0, [sp, #0x14]
	mov r0, #0x66
	bl ov62_02231690
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0x66
	bl sub_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
	b _02244A74
_02244A6A:
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl sub_0200B1EC
	add r6, r0, #0
_02244A74:
	ldr r0, _02244AAC ; =0x000008A4
	mov r1, #0xcc
	add r0, r5, r0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02244AB0 ; =0x000F0D0C
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02244AAC ; =0x000008A4
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, _02244AAC ; =0x000008A4
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02244AAC: .word 0x000008A4
_02244AB0: .word 0x000F0D0C
	thumb_func_end ov62_022449B8

	thumb_func_start ov62_02244AB4
ov62_02244AB4: ; 0x02244AB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _02244BDC ; =0x000008A4
	add r4, r1, #0
	sub r0, #0x44
	ldr r0, [r5, r0]
	cmp r4, #0x64
	bne _02244B2C
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [sp, #0x14]
	mov r0, #0x66
	bl ov62_02231690
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0x66
	bl sub_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
	b _02244BA4
_02244B2C:
	cmp r4, #0x66
	bne _02244B9C
	lsl r0, r2, #2
	add r1, r5, r0
	ldr r0, _02244BDC ; =0x000008A4
	sub r0, #0x18
	ldr r0, [r1, r0]
	str r0, [sp, #0x10]
	mov r0, #0x66
	bl ov62_02231690
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0x66
	bl sub_02030B94
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
	b _02244BA4
_02244B9C:
	ldr r0, [r5, #0x48]
	bl sub_0200B1EC
	add r6, r0, #0
_02244BA4:
	ldr r0, _02244BDC ; =0x000008A4
	mov r1, #0xcc
	add r0, r5, r0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02244BE0 ; =0x000F0D0C
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02244BDC ; =0x000008A4
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, _02244BDC ; =0x000008A4
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244BDC: .word 0x000008A4
_02244BE0: .word 0x000F0D0C
	thumb_func_end ov62_02244AB4

	thumb_func_start ov62_02244BE4
ov62_02244BE4: ; 0x02244BE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r3, _02244C9C ; =0x0224916C
	ldr r4, [r0, r1]
	str r0, [sp]
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _02244CA0 ; =0x0224917C
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	mov r1, #2
	bl ov62_0223136C
	add r0, sp, #0x20
	str r0, [sp, #8]
	mov r0, #0x69
	str r0, [sp, #4]
	ldr r0, [sp]
	add r5, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x14
	mov r6, #0
	add r5, #0x10
	add r7, sp, #0x10
	str r0, [sp, #0xc]
_02244C28:
	ldr r0, [sp]
	mov r1, #2
	bl ov62_022313E0
	str r0, [r4, #0x14]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #2
	bl ov62_0223118C
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r5, #0
	bl ov62_0223124C
	cmp r6, #3
	beq _02244C56
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #1
	bl ov62_022448E0
_02244C56:
	ldr r2, [sp, #4]
	ldr r0, [r4, #0x14]
	lsl r2, r2, #0x10
	mov r1, #0x32
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #0x14]
	ldr r1, [r7, #0]
	bl sub_0200D364
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0x18]
	sub r2, #0x2c
	bl sub_020128C4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_020129D0
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, #0x1c
	add r0, #0x24
	add r5, #0x1c
	add r7, r7, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _02244C28
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244C9C: .word 0x0224916C
_02244CA0: .word 0x0224917C
	thumb_func_end ov62_02244BE4

	thumb_func_start ov62_02244CA4
ov62_02244CA4: ; 0x02244CA4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r7, r0]
	mov r6, #0
	add r4, r5, #0
	add r4, #0x10
_02244CB4:
	add r0, r4, #0
	bl ov62_022312B0
	ldr r0, [r5, #0x14]
	bl sub_0200D0F4
	add r6, r6, #1
	add r4, #0x1c
	add r5, #0x1c
	cmp r6, #4
	blt _02244CB4
	add r0, r7, #0
	bl ov62_022313BC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov62_02244CA4

	thumb_func_start ov62_02244CD4
ov62_02244CD4: ; 0x02244CD4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	bl sub_0202FE04
	mov r1, #4
	mov r2, #0
	bl sub_0202FE98
	add r3, r0, #0
	add r2, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl ov62_02234970
	cmp r0, #0
	bne _02244CFC
	b _02244F5A
_02244CFC:
	ldr r0, [r4, #8]
	cmp r0, #5
	bls _02244D04
	b _02244EA6
_02244D04:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244D10: ; jump table
	.short _02244D1C - _02244D10 - 2 ; case 0
	.short _02244D6A - _02244D10 - 2 ; case 1
	.short _02244DD0 - _02244D10 - 2 ; case 2
	.short _02244DE0 - _02244D10 - 2 ; case 3
	.short _02244E18 - _02244D10 - 2 ; case 4
	.short _02244E58 - _02244D10 - 2 ; case 5
_02244D1C:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02244D3A
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234228
	b _02244D44
_02244D3A:
	add r5, #0x80
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_02232394
_02244D44:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_022455C4
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02244F6C
_02244D6A:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02244DB6
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_02245D50
	add r0, r4, #0
	bl ov62_02244BE4
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02244DB6:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02244F6C
_02244DD0:
	ldr r1, _02244F70 ; =0x00000115
	add r0, r4, #0
	bl ov62_02231AAC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02244F6C
_02244DE0:
	bl sub_02022798
	cmp r0, #0
	bne _02244DEA
	b _02244F6C
_02244DEA:
	add r0, r4, #0
	bl ov62_02231B8C
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02244F6C
_02244E18:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02244E3E
	add r0, r4, #0
	bl ov62_02244CA4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02244E3E:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02244F6C
_02244E58:
	ldr r0, _02244F74 ; =0x00000608
	ldr r0, [r5, r0]
	bl sub_02024034
	ldr r0, _02244F78 ; =0x0000060C
	ldr r0, [r5, r0]
	bl sub_02024034
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02024034
	add r5, #8
	add r0, r5, #0
	bl ov62_02231688
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_022444A0
	add r0, r4, #0
	bl ov62_0223146C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02244F6C
_02244EA6:
	add r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _02244F6C
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02244F28
	add r0, r4, #0
	bl ov62_022318E8
	add r0, r5, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	bl sub_0202F250
	cmp r0, #1
	bne _02244F6C
	bl sub_0202F22C
	b _02244F6C
_02244F28:
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02244F6C
_02244F5A:
	add r0, r4, #0
	bl ov62_02245ECC
	cmp r0, #0
	beq _02244F6C
	add r0, r4, #0
	mov r1, #0xd
	bl ov62_0222FB60
_02244F6C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244F70: .word 0x00000115
_02244F74: .word 0x00000608
_02244F78: .word 0x0000060C
	thumb_func_end ov62_02244CD4

	thumb_func_start ov62_02244F7C
ov62_02244F7C: ; 0x02244F7C
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _02244F90 ; =0x0000060C
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02244F90: .word 0x0000060C
	thumb_func_end ov62_02244F7C

	thumb_func_start ov62_02244F94
ov62_02244F94: ; 0x02244F94
	push {r4, lr}
	add r4, r0, #0
	bl ov62_02246640
	cmp r0, #0
	beq _02244FA8
	add r0, r4, #0
	mov r1, #8
	bl ov62_0222FB60
_02244FA8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02244F94

	thumb_func_start ov62_02244FAC
ov62_02244FAC: ; 0x02244FAC
	push {r4, lr}
	add r4, r0, #0
	bl ov62_02246428
	cmp r0, #0
	beq _02244FC0
	add r0, r4, #0
	mov r1, #8
	bl ov62_0222FB60
_02244FC0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02244FAC

	thumb_func_start ov62_02244FC4
ov62_02244FC4: ; 0x02244FC4
	push {r4, lr}
	add r4, r0, #0
	bl ov62_02245FE4
	cmp r0, #0
	beq _02244FD8
	add r0, r4, #0
	mov r1, #0x10
	bl ov62_0222FB60
_02244FD8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02244FC4

	thumb_func_start ov62_02244FDC
ov62_02244FDC: ; 0x02244FDC
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_02244FDC

	thumb_func_start ov62_02244FF4
ov62_02244FF4: ; 0x02244FF4
	push {r4, lr}
	add r4, r0, #0
	bl ov62_02246090
	cmp r0, #0
	beq _02245008
	add r0, r4, #0
	mov r1, #0xd
	bl ov62_0222FB60
_02245008:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02244FF4

	thumb_func_start ov62_0224500C
ov62_0224500C: ; 0x0224500C
	push {r3, lr}
	bl ov62_0224613C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_0224500C

	thumb_func_start ov62_02245018
ov62_02245018: ; 0x02245018
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #5
	bls _0224502C
	b _022452E4
_0224502C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02245038: ; jump table
	.short _02245044 - _02245038 - 2 ; case 0
	.short _022450D8 - _02245038 - 2 ; case 1
	.short _02245178 - _02245038 - 2 ; case 2
	.short _02245244 - _02245038 - 2 ; case 3
	.short _022452B6 - _02245038 - 2 ; case 4
	.short _022452D4 - _02245038 - 2 ; case 5
_02245044:
	bl ov62_02233790
	cmp r0, #0
	beq _022450F0
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	bl ov62_022315C8
	ldr r0, _02245300 ; =0x00002604
	ldrb r1, [r4, r0]
	ldr r0, _02245304 ; =0x0000079C
	strb r1, [r5, r0]
	ldr r0, _02245308 ; =0x000008B8
	ldr r1, _0224530C ; =0x000004BC
	add r2, r4, r0
	str r2, [r5, r1]
	ldr r1, [r5, r1]
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov62_0223371C
	add r0, r4, #0
	bl ov62_022443EC
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #0
	bl ov62_0223376C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022452FA
_022450D8:
	bl ov62_02233790
	cmp r0, #0
	beq _022450F0
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	bne _022450F2
_022450F0:
	b _022452FA
_022450F2:
	mov r0, #0
	mov r1, #1
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #1
	bl sub_02019060
	mov r0, #4
	mov r1, #1
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #6
	mov r1, #0
	bl sub_02019060
	mov r0, #7
	mov r1, #2
	bl sub_02019060
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _02245310 ; =0x0224919C
	ldr r2, _02245314 ; =ov62_022457A0
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	ldr r1, _02245318 ; =0x00000608
	ldr r2, _0224531C ; =ov62_02245800
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _02245320 ; =0x0224915C
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	ldr r1, _02245324 ; =0x0000060C
	ldr r2, _02245328 ; =ov62_02245868
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0224532C ; =0x0224913C
	mov r1, #2
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x61
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022452FA
_02245178:
	bl ov62_02245C64
	add r0, r4, #0
	bl ov62_02245640
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _022451F0
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	b _0224521C
_022451F0:
	add r0, r5, #0
	add r0, #0x80
	add r1, r4, #0
	bl ov62_02232378
	add r5, #0x80
	add r0, r5, #0
	mov r1, #0
	bl ov62_022323B8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x50
	mov r3, #3
	bl sub_0200710C
_0224521C:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #6
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022452FA
_02245244:
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	str r2, [r5, #8]
	bl ov62_022315E0
	cmp r0, #0
	beq _0224529C
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224526C
	sub r0, #0xc0
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	b _02245276
_0224526C:
	add r0, r5, #0
	add r0, #0x80
	mov r1, #1
	bl ov62_022323B8
_02245276:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0224529C:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _022452FA
_022452B6:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022452FA
_022452D4:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022452FA
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022452FA
_022452E4:
	ldr r0, _02245330 ; =0x000006D8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov62_02230098
	add r0, r4, #0
	mov r1, #8
	bl ov62_0222FB60
_022452FA:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245300: .word 0x00002604
_02245304: .word 0x0000079C
_02245308: .word 0x000008B8
_0224530C: .word 0x000004BC
_02245310: .word 0x0224919C
_02245314: .word ov62_022457A0
_02245318: .word 0x00000608
_0224531C: .word ov62_02245800
_02245320: .word 0x0224915C
_02245324: .word 0x0000060C
_02245328: .word ov62_02245868
_0224532C: .word 0x0224913C
_02245330: .word 0x000006D8
	thumb_func_end ov62_02245018

	thumb_func_start ov62_02245334
ov62_02245334: ; 0x02245334
	push {r4, lr}
	mov r1, #0x6f
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02245334

	thumb_func_start ov62_0224536C
ov62_0224536C: ; 0x0224536C
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _02245380
	b _022454A0
_02245380:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224538C: ; jump table
	.short _02245394 - _0224538C - 2 ; case 0
	.short _022453A8 - _0224538C - 2 ; case 1
	.short _02245406 - _0224538C - 2 ; case 2
	.short _0224548A - _0224538C - 2 ; case 3
_02245394:
	mov r1, #0x77
	bl ov62_02231AAC
	ldr r0, _022454D0 ; =0x00000565
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022454CA
_022453A8:
	bl ov62_022411B8
	cmp r0, #0
	bne _022453B6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_022453B6:
	mov r3, #0
	mov r0, #0x83
	str r3, [sp]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x66
	add r2, sp, #4
	bl sub_0202F298
	mov r0, #0x66
	bl sub_02030A80
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0x83
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02030AA0
	add r0, r4, #0
	bl ov62_0224112C
	mov r1, #0x1d
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	bl ov61_0222B338
	cmp r0, #1
	bne _022454CA
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02030A98
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022454CA
_02245406:
	bl ov62_022411B8
	cmp r0, #0
	bne _02245414
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_02245414:
	bl sub_0202F22C
	add r0, r4, #0
	bl ov62_02231B8C
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #8
	bl ov61_0222BB48
	cmp r0, #1
	bne _02245464
	ldr r0, _022454D0 ; =0x00000565
	mov r1, #0
	bl sub_020057A4
	ldr r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #6
	bl ov62_022348B8
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	mov r0, #0xff
	str r0, [r4, #8]
	b _022454CA
_02245464:
	add r0, r4, #0
	mov r1, #0x77
	bl ov62_02231AAC
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_022469A0
	ldr r0, _022454D0 ; =0x00000565
	mov r1, #0
	bl sub_020057A4
	ldr r0, _022454D4 ; =0x0000055F
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022454CA
_0224548A:
	bl sub_02022798
	cmp r0, #0
	beq _022454CA
	add r0, r4, #0
	bl ov62_02231B8C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022454CA
_022454A0:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	add r0, r4, #0
	mov r1, #0x2e
	bl ov62_02233704
	add r0, r4, #0
	mov r1, #4
	bl ov62_0222FB60
_022454CA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_022454D0: .word 0x00000565
_022454D4: .word 0x0000055F
	thumb_func_end ov62_0224536C

	thumb_func_start ov62_022454D8
ov62_022454D8: ; 0x022454D8
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	bne _0224551C
	add r4, #8
	add r0, r4, #0
	bl ov62_02231688
	add r0, r5, #0
	bl ov62_02230060
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223146C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022455C0
_0224551C:
	bl ov62_02233790
	cmp r0, #0
	beq _022455C0
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02245590
	add r0, r5, #0
	bl ov62_022318E8
	add r0, r4, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	b _022455C0
_02245590:
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_022455C0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_022454D8

	thumb_func_start ov62_022455C4
ov62_022455C4: ; 0x022455C4
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	ldr r0, _022455E0 ; =0x000006D4
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _022455E0 ; =0x000006D4
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	nop
_022455E0: .word 0x000006D4
	thumb_func_end ov62_022455C4

	thumb_func_start ov62_022455E4
ov62_022455E4: ; 0x022455E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _02245638 ; =0x000006D4
	add r7, r1, #0
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	add r1, r7, #0
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, r6
	add r1, r5, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224563C ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245638: .word 0x000006D4
_0224563C: .word 0x000F0D00
	thumb_func_end ov62_022455E4

	thumb_func_start ov62_02245640
ov62_02245640: ; 0x02245640
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _02245688 ; =0x000006D4
	add r0, r4, r6
	bl sub_0201A7A0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r2, #6
	mov r3, #8
	bl sub_0201A7E8
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	add r1, #0x79
	bl ov62_022455E4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02245688: .word 0x000006D4
	thumb_func_end ov62_02245640

	thumb_func_start ov62_0224568C
ov62_0224568C: ; 0x0224568C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _02245764 ; =0x000006D4
	add r0, r4, r6
	bl sub_0201A7A0
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r3, #4
	bl sub_0201A7E8
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x82
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r4, r6
	add r1, r7, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02245768 ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add r6, #0x10
	add r0, r4, r6
	bl sub_0201A7A0
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r3, #0x12
	bl sub_0201A7E8
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x83
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, r6
	add r1, r5, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02245768 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02245764: .word 0x000006D4
_02245768: .word 0x000F0D00
	thumb_func_end ov62_0224568C

	thumb_func_start ov62_0224576C
ov62_0224576C: ; 0x0224576C
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	ldr r0, _02245798 ; =0x000006D4
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _02245798 ; =0x000006D4
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0224579C ; =0x000006E4
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _0224579C ; =0x000006E4
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	nop
_02245798: .word 0x000006D4
_0224579C: .word 0x000006E4
	thumb_func_end ov62_0224576C

	thumb_func_start ov62_022457A0
ov62_022457A0: ; 0x022457A0
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #0
	bne _022457FE
	cmp r0, #3
	bhi _022457FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022457B8: ; jump table
	.short _022457C0 - _022457B8 - 2 ; case 0
	.short _022457D0 - _022457B8 - 2 ; case 1
	.short _022457E0 - _022457B8 - 2 ; case 2
	.short _022457F0 - _022457B8 - 2 ; case 3
_022457C0:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #9
	bl ov62_0222FB60
	pop {r4, pc}
_022457D0:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0xa
	bl ov62_0222FB60
	pop {r4, pc}
_022457E0:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0xc
	bl ov62_0222FB60
	pop {r4, pc}
_022457F0:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0xb
	bl ov62_0222FB60
_022457FE:
	pop {r4, pc}
	thumb_func_end ov62_022457A0

	thumb_func_start ov62_02245800
ov62_02245800: ; 0x02245800
	push {r4, lr}
	add r4, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r3, [r4, r2]
	cmp r1, #0
	bne _02245864
	cmp r0, #3
	bhi _02245864
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224581E: ; jump table
	.short _02245826 - _0224581E - 2 ; case 0
	.short _02245826 - _0224581E - 2 ; case 1
	.short _02245826 - _0224581E - 2 ; case 2
	.short _02245856 - _0224581E - 2 ; case 3
_02245826:
	add r1, r0, #1
	mov r0, #0x72
	lsl r0, r0, #2
	str r1, [r3, r0]
	ldr r0, [r3, r0]
	add r2, #0x2c
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02245846
	add r0, r4, #0
	mov r1, #0xf
	bl ov62_0222FB60
	b _0224584E
_02245846:
	add r0, r4, #0
	mov r1, #0x12
	bl ov62_0222FB60
_0224584E:
	add r0, r4, #0
	bl ov62_02234520
	pop {r4, pc}
_02245856:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0xe
	bl ov62_0222FB60
_02245864:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02245800

	thumb_func_start ov62_02245868
ov62_02245868: ; 0x02245868
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #0
	bne _0224589E
	cmp r0, #0
	beq _0224587A
	cmp r0, #1
	beq _02245890
	pop {r4, pc}
_0224587A:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	bl ov62_0224576C
	add r0, r4, #0
	mov r1, #0x12
	bl ov62_0222FB60
	pop {r4, pc}
_02245890:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0x11
	bl ov62_0222FB60
_0224589E:
	pop {r4, pc}
	thumb_func_end ov62_02245868

	thumb_func_start ov62_022458A0
ov62_022458A0: ; 0x022458A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x86
	add r4, r2, #0
	lsl r0, r0, #4
	ldr r6, [r4, r0]
	cmp r1, #0
	bne _0224595C
	cmp r5, #4
	bhi _0224595C
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022458C0: ; jump table
	.short _022458CA - _022458C0 - 2 ; case 0
	.short _022458DE - _022458C0 - 2 ; case 1
	.short _022458F2 - _022458C0 - 2 ; case 2
	.short _02245924 - _022458C0 - 2 ; case 3
	.short _02245934 - _022458C0 - 2 ; case 4
_022458CA:
	add r0, r4, #0
	bl ov62_02234520
	ldr r0, _02245960 ; =0x000004C5
	mov r1, #5
	strb r5, [r6, r0]
	add r0, r4, #0
	bl ov62_0222FB60
	pop {r3, r4, r5, r6, r7, pc}
_022458DE:
	add r0, r4, #0
	bl ov62_02234520
	ldr r0, _02245960 ; =0x000004C5
	mov r1, #5
	strb r5, [r6, r0]
	add r0, r4, #0
	bl ov62_0222FB60
	pop {r3, r4, r5, r6, r7, pc}
_022458F2:
	add r0, #0x2c
	ldr r0, [r4, r0]
	bl sub_02030BFC
	add r7, r0, #0
	add r0, r4, #0
	bl ov62_02234520
	cmp r7, #0
	bne _02245916
	ldr r0, _02245964 ; =0x00000564
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x80
	bl ov62_02231B3C
	pop {r3, r4, r5, r6, r7, pc}
_02245916:
	ldr r0, _02245960 ; =0x000004C5
	mov r1, #5
	strb r5, [r6, r0]
	add r0, r4, #0
	bl ov62_0222FB60
	pop {r3, r4, r5, r6, r7, pc}
_02245924:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, r6, r7, pc}
_02245934:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	bl ov62_02241780
	cmp r0, #0
	bne _02245954
	ldr r0, _02245964 ; =0x00000564
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x74
	bl ov62_02231B3C
	pop {r3, r4, r5, r6, r7, pc}
_02245954:
	add r0, r4, #0
	mov r1, #0xc
	bl ov62_0222FB60
_0224595C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245960: .word 0x000004C5
_02245964: .word 0x00000564
	thumb_func_end ov62_022458A0

	thumb_func_start ov62_02245968
ov62_02245968: ; 0x02245968
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	bne _0224598E
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_02242748
	cmp r0, #0
	bne _02245986
	ldr r0, _02245990 ; =0x00000564
	bl sub_02005748
	pop {r3, r4, r5, pc}
_02245986:
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_022427D0
_0224598E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245990: .word 0x00000564
	thumb_func_end ov62_02245968

	thumb_func_start ov62_02245994
ov62_02245994: ; 0x02245994
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r5, [r4, r2]
	cmp r1, #0
	bne _02245A24
	cmp r0, #3
	bhi _02245A24
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022459B2: ; jump table
	.short _022459BA - _022459B2 - 2 ; case 0
	.short _022459CA - _022459B2 - 2 ; case 1
	.short _022459F0 - _022459B2 - 2 ; case 2
	.short _02245A16 - _022459B2 - 2 ; case 3
_022459BA:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0x13
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_022459CA:
	add r0, r4, #0
	bl ov62_02234520
	bl sub_0202F250
	cmp r0, #0
	beq _022459E2
	add r0, r4, #0
	mov r1, #0x14
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_022459E2:
	mov r0, #0x14
	str r0, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0x1d
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_022459F0:
	add r0, r4, #0
	bl ov62_02234520
	bl sub_0202F250
	cmp r0, #0
	beq _02245A08
	add r0, r4, #0
	mov r1, #0x16
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02245A08:
	mov r0, #0x16
	str r0, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0x1d
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02245A16:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0x15
	bl ov62_0222FB60
_02245A24:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02245994

	thumb_func_start ov62_02245A28
ov62_02245A28: ; 0x02245A28
	push {r4, lr}
	add r4, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r3, [r4, r2]
	cmp r1, #0
	bne _02245A8C
	cmp r0, #3
	bhi _02245A8C
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02245A46: ; jump table
	.short _02245A4E - _02245A46 - 2 ; case 0
	.short _02245A4E - _02245A46 - 2 ; case 1
	.short _02245A4E - _02245A46 - 2 ; case 2
	.short _02245A7E - _02245A46 - 2 ; case 3
_02245A4E:
	add r1, r0, #1
	mov r0, #0x72
	lsl r0, r0, #2
	str r1, [r3, r0]
	ldr r0, [r3, r0]
	add r2, #0x2c
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02245A6E
	add r0, r4, #0
	mov r1, #0x19
	bl ov62_0222FB60
	b _02245A76
_02245A6E:
	add r0, r4, #0
	mov r1, #0x1c
	bl ov62_0222FB60
_02245A76:
	add r0, r4, #0
	bl ov62_02234520
	pop {r4, pc}
_02245A7E:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0x18
	bl ov62_0222FB60
_02245A8C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02245A28

	thumb_func_start ov62_02245A90
ov62_02245A90: ; 0x02245A90
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #0
	bne _02245AC6
	cmp r0, #0
	beq _02245AA2
	cmp r0, #1
	beq _02245AB8
	pop {r4, pc}
_02245AA2:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	bl ov62_0224576C
	add r0, r4, #0
	mov r1, #0x1c
	bl ov62_0222FB60
	pop {r4, pc}
_02245AB8:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0x1b
	bl ov62_0222FB60
_02245AC6:
	pop {r4, pc}
	thumb_func_end ov62_02245A90

	thumb_func_start ov62_02245AC8
ov62_02245AC8: ; 0x02245AC8
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	ldr r0, [r4, #0x14]
	bne _02245AF0
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_020129D0
	ldr r0, [r4, #0x30]
	mov r1, #0x80
	mov r2, #0xa8
	bl sub_0200D4C4
	b _02245B08
_02245AF0:
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_020129D0
	ldr r0, [r4, #0x30]
	mov r1, #0x50
	mov r2, #0xa8
	bl sub_0200D4C4
_02245B08:
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0x18]
	sub r2, #0x2c
	bl sub_020128C4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0x34]
	sub r2, #0x2c
	bl sub_020128C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02245AC8

	thumb_func_start ov62_02245B24
ov62_02245B24: ; 0x02245B24
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	mov r1, #1
	bl ov62_022312CC
	add r0, r4, #0
	mov r1, #1
	bl ov62_022313E0
	str r0, [r5, #0x14]
	add r0, r4, #0
	mov r1, #1
	bl ov62_022313E0
	str r0, [r5, #0x30]
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #1
	bl ov62_0223118C
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #1
	bl ov62_0223118C
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x6f
	bl ov62_0223124C
	ldr r0, [r5, #0x14]
	mov r1, #0x20
	mov r2, #0xa8
	bl sub_0200D4C4
	ldr r0, [r5, #0x30]
	mov r1, #0x80
	mov r2, #0xa8
	bl sub_0200D4C4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r5, #0x18]
	sub r2, #0x2c
	bl sub_020128C4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r5, #0x34]
	sub r2, #0x2c
	bl sub_020128C4
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_020129D0
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_020129D0
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D364
	add r0, r4, #0
	mov r1, #0
	bl ov62_02245AC8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02245B24

	thumb_func_start ov62_02245BD8
ov62_02245BD8: ; 0x02245BD8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	add r0, r5, #0
	add r0, #0x10
	bl ov62_022312B0
	add r0, r5, #0
	add r0, #0x2c
	bl ov62_022312B0
	ldr r0, [r5, #0x14]
	bl sub_0200D0F4
	ldr r0, [r5, #0x30]
	bl sub_0200D0F4
	add r0, r4, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02245BD8

	thumb_func_start ov62_02245C08
ov62_02245C08: ; 0x02245C08
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	ldr r0, [r4, #0x30]
	bne _02245C30
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl sub_020129D0
	ldr r0, [r4, #0x14]
	mov r1, #0x20
	mov r2, #0xe8
	bl sub_0200D4C4
	b _02245C48
_02245C30:
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_020129D0
	ldr r0, [r4, #0x14]
	mov r1, #0x50
	mov r2, #0xe8
	bl sub_0200D4C4
_02245C48:
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0x18]
	sub r2, #0x2c
	bl sub_020128C4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0x34]
	sub r2, #0x2c
	bl sub_020128C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02245C08

	thumb_func_start ov62_02245C64
ov62_02245C64: ; 0x02245C64
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	mov r1, #2
	bl ov62_022312CC
	add r0, r5, #0
	mov r1, #2
	bl ov62_022313E0
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r1, #2
	bl ov62_022313E0
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #2
	bl ov62_0223118C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #2
	bl ov62_0223118C
	ldr r0, _02245D4C ; =0x0000086C
	ldr r0, [r5, r0]
	cmp r0, #0xd2
	bne _02245CDA
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x6f
	bl ov62_0223124C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D364
	b _02245D06
_02245CDA:
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl sub_0200D364
_02245D06:
	ldr r0, [r4, #0x14]
	mov r1, #0x20
	mov r2, #0xe8
	bl sub_0200D4C4
	ldr r0, [r4, #0x30]
	mov r1, #0x80
	mov r2, #0xe8
	bl sub_0200D4C4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0x18]
	sub r2, #0x2c
	bl sub_020128C4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0x34]
	sub r2, #0x2c
	bl sub_020128C4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_020129D0
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl sub_020129D0
	add r0, r5, #0
	mov r1, #0
	bl ov62_02245C08
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245D4C: .word 0x0000086C
	thumb_func_end ov62_02245C64

	thumb_func_start ov62_02245D50
ov62_02245D50: ; 0x02245D50
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	add r0, r5, #0
	add r0, #0x10
	bl ov62_022312B0
	add r0, r5, #0
	add r0, #0x2c
	bl ov62_022312B0
	ldr r0, [r5, #0x14]
	bl sub_0200D0F4
	ldr r0, [r5, #0x30]
	bl sub_0200D0F4
	add r0, r4, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02245D50

	thumb_func_start ov62_02245D80
ov62_02245D80: ; 0x02245D80
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #3
	bls _02245D92
	b _02245EAE
_02245D92:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02245D9E: ; jump table
	.short _02245DA6 - _02245D9E - 2 ; case 0
	.short _02245DE4 - _02245D9E - 2 ; case 1
	.short _02245DFC - _02245D9E - 2 ; case 2
	.short _02245E66 - _02245D9E - 2 ; case 3
_02245DA6:
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02245DC2
	sub r0, #0xc0
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02234228
	b _02245DCC
_02245DC2:
	add r4, #0x80
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_02232394
_02245DCC:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02245EC8
_02245DE4:
	mov r2, #1
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02245EC8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02245EC8
_02245DFC:
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02245E2C
	add r0, r4, #0
	add r0, #0x80
	add r1, r5, #0
	bl ov62_02232378
	add r4, #0x80
	add r0, r4, #0
	mov r1, #0
	bl ov62_022323B8
	add r0, r5, #0
	mov r1, #0x50
	mov r2, #3
	bl ov62_022343B8
	b _02245E56
_02245E2C:
	sub r0, #0xc0
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02234214
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov62_0223427C
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov62_022343B8
_02245E56:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02245EC8
_02245E66:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _02245EC8
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02245E8C
	add r4, #0x80
	add r0, r4, #0
	mov r1, #1
	bl ov62_022323B8
	b _02245E96
_02245E8C:
	sub r0, #0xc0
	add r0, r4, r0
	mov r1, #1
	bl ov62_0223427C
_02245E96:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02245EC8
_02245EAE:
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #1
	eor r0, r2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r5, #0
	add r1, #0x79
	bl ov62_022455E4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02245EC8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02245D80

	thumb_func_start ov62_02245ECC
ov62_02245ECC: ; 0x02245ECC
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02245EE6
	cmp r1, #1
	beq _02245F32
	cmp r1, #2
	beq _02245F98
	b _02245FDC
_02245EE6:
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02245F02
	sub r0, #0xc0
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02234228
	b _02245F0C
_02245F02:
	add r4, #0x80
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_02232394
_02245F0C:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_022455C4
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02245FE0
_02245F32:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02245F7E
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_02245D50
	add r0, r5, #0
	bl ov62_02244BE4
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02245F7E:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02245FE0
_02245F98:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _02245FC2
	add r0, r5, #0
	mov r1, #0x64
	mov r2, #0
	bl ov62_022449B8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02245FC2:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02245FE0
_02245FDC:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02245FE0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02245ECC

	thumb_func_start ov62_02245FE4
ov62_02245FE4: ; 0x02245FE4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02245FFC
	cmp r0, #1
	beq _0224605C
	b _02246082
_02245FFC:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02246042
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x54
	mov r3, #7
	bl sub_0200710C
	mov r2, #0x72
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r5, #0
	mov r1, #0x66
	bl ov62_02244AB4
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02246042:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02246088
_0224605C:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02246088
	add r0, r5, #0
	bl ov62_0224568C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02246088
_02246082:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_02246088:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02245FE4

	thumb_func_start ov62_02246090
ov62_02246090: ; 0x02246090
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _022460AA
	cmp r0, #1
	beq _022460BA
	cmp r0, #2
	beq _022460E8
	b _02246134
_022460AA:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02246138
_022460BA:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02246138
	add r0, r5, #0
	bl ov62_0224576C
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02246138
_022460E8:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0224611A
	add r0, r5, #0
	mov r1, #0x64
	mov r2, #0
	bl ov62_02244AB4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0224611A:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02246138
_02246134:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02246138:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02246090

	thumb_func_start ov62_0224613C
ov62_0224613C: ; 0x0224613C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r1, [r4, #8]
	ldr r5, [r4, r2]
	cmp r1, #7
	bls _02246150
	b _02246350
_02246150:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224615C: ; jump table
	.short _0224616C - _0224615C - 2 ; case 0
	.short _0224617C - _0224615C - 2 ; case 1
	.short _022461CE - _0224615C - 2 ; case 2
	.short _022461EE - _0224615C - 2 ; case 3
	.short _02246224 - _0224615C - 2 ; case 4
	.short _02246268 - _0224615C - 2 ; case 5
	.short _022462AE - _0224615C - 2 ; case 6
	.short _022462FA - _0224615C - 2 ; case 7
_0224616C:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_0224617C:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _022461B4
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r1, _02246408 ; =0x00000116
	add r0, r4, #0
	mov r2, #0
	bl ov62_02244AB4
	add r0, r4, #0
	bl ov62_022342BC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022461B4:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02246402
_022461CE:
	mov r1, #0x72
	sub r2, #0xc4
	lsl r1, r1, #2
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	bl ov62_022337F0
	cmp r0, #0
	beq _022462B6
	ldr r0, _0224640C ; =0x0000079C
	mov r1, #0
	strb r1, [r5, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_022461EE:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, _02246410 ; =0x00000565
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_02246224:
	bl ov62_022411B8
	cmp r0, #0
	bne _02246232
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02246232:
	mov r1, #0x46
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0
	bl ov62_02244AB4
	bl sub_0202FE04
	mov r1, #4
	mov r2, #0
	bl sub_0202FE98
	add r6, r0, #0
	add r5, r1, #0
	add r0, r4, #0
	bl ov62_0224112C
	add r1, r6, #0
	add r2, r5, #0
	bl ov61_0222B550
	cmp r0, #1
	bne _022462B6
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_02246268:
	bl ov62_022411B8
	cmp r0, #0
	bne _02246276
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02246276:
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl ov61_0222BB48
	cmp r0, #1
	ldr r0, _02246410 ; =0x00000565
	bne _02246290
	mov r1, #0
	bl sub_020057A4
	b _0224629C
_02246290:
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02246414 ; =0x0000055F
	bl sub_02005748
_0224629C:
	ldr r0, [r4, #8]
	ldr r1, _02246418 ; =0x00000119
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov62_02244AB4
	b _02246402
_022462AE:
	bl sub_02022798
	cmp r0, #0
	bne _022462B8
_022462B6:
	b _02246402
_022462B8:
	add r0, r4, #0
	bl ov62_02231A88
	add r0, r4, #0
	bl ov62_02244CA4
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	add r0, r4, #0
	bl ov62_022339A0
	add r0, r4, #0
	bl ov62_022338A8
	ldr r0, _0224641C ; =0x0000049C
	add r0, r4, r0
	bl ov62_02233310
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_022462FA:
	ldr r0, _02246420 ; =0x00000608
	ldr r0, [r5, r0]
	bl sub_02024034
	ldr r0, _02246424 ; =0x0000060C
	ldr r0, [r5, r0]
	bl sub_02024034
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02024034
	add r5, #8
	add r0, r5, #0
	bl ov62_02231688
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_022444A0
	add r0, r4, #0
	bl ov62_0223146C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #1
	mov r1, #0x66
	bl sub_020397C8
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_02246350:
	add r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _02246402
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _022463D2
	add r0, r4, #0
	bl ov62_022318E8
	add r0, r5, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	bl sub_0202F250
	cmp r0, #1
	bne _02246402
	bl sub_0202F22C
	b _02246402
_022463D2:
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_02246402:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02246408: .word 0x00000116
_0224640C: .word 0x0000079C
_02246410: .word 0x00000565
_02246414: .word 0x0000055F
_02246418: .word 0x00000119
_0224641C: .word 0x0000049C
_02246420: .word 0x00000608
_02246424: .word 0x0000060C
	thumb_func_end ov62_0224613C

	thumb_func_start ov62_02246428
ov62_02246428: ; 0x02246428
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r1, [r4, #8]
	ldr r5, [r4, r0]
	cmp r1, #3
	bls _0224643C
	b _02246634
_0224643C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246448: ; jump table
	.short _02246450 - _02246448 - 2 ; case 0
	.short _02246478 - _02246448 - 2 ; case 1
	.short _022464B2 - _02246448 - 2 ; case 2
	.short _022465CA - _02246448 - 2 ; case 3
_02246450:
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224663A
_02246478:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02246498
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02246498:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0224663A
_022464B2:
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _022464E6
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r5, #0x30]
	mov r1, #3
	bl sub_0200D364
_022464E6:
	add r0, r4, #0
	bl ov62_022455C4
	add r0, r4, #0
	bl ov62_02245640
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224656C
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234228
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	b _022465A2
_0224656C:
	add r0, r5, #0
	add r0, #0x80
	add r1, r4, #0
	bl ov62_02232394
	add r0, r5, #0
	add r0, #0x80
	add r1, r4, #0
	bl ov62_02232378
	add r5, #0x80
	add r0, r5, #0
	mov r1, #0
	bl ov62_022323B8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x50
	mov r3, #3
	bl sub_0200710C
_022465A2:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #6
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224663A
_022465CA:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0224661A
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _022465FA
	sub r0, #0xc0
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	b _02246604
_022465FA:
	add r0, r5, #0
	add r0, #0x80
	mov r1, #1
	bl ov62_022323B8
_02246604:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0224661A:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0224663A
_02246634:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224663A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02246428

	thumb_func_start ov62_02246640
ov62_02246640: ; 0x02246640
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _02246654
	b _0224683E
_02246654:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246660: ; jump table
	.short _02246668 - _02246660 - 2 ; case 0
	.short _02246694 - _02246660 - 2 ; case 1
	.short _022466D4 - _02246660 - 2 ; case 2
	.short _022467D4 - _02246660 - 2 ; case 3
_02246668:
	bl ov62_02231A88
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02246844
_02246694:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022466BA
	add r0, r4, #0
	bl ov62_02244CA4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022466BA:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02246844
_022466D4:
	bl ov62_02245C64
	ldr r0, _0224684C ; =0x0000086C
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _0224670C
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r5, #0x30]
	mov r1, #3
	bl sub_0200D364
_0224670C:
	add r0, r4, #0
	bl ov62_02245640
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02246780
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	b _022467AC
_02246780:
	add r0, r5, #0
	add r0, #0x80
	add r1, r4, #0
	bl ov62_02232378
	add r5, #0x80
	add r0, r5, #0
	mov r1, #0
	bl ov62_022323B8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x50
	mov r3, #3
	bl sub_0200710C
_022467AC:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #6
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02246844
_022467D4:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02246824
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02246804
	sub r0, #0xc0
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	b _0224680E
_02246804:
	add r0, r5, #0
	add r0, #0x80
	mov r1, #1
	bl ov62_022323B8
_0224680E:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02246824:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02246844
_0224683E:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_02246844:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224684C: .word 0x0000086C
	thumb_func_end ov62_02246640

	thumb_func_start ov62_02246850
ov62_02246850: ; 0x02246850
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0224686C
	cmp r1, #1
	beq _0224688C
	cmp r1, #2
	beq _0224689C
	b _0224692A
_0224686C:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02246930
_0224688C:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02246930
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02246930
_0224689C:
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _022468B8
	sub r0, #0xc0
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02234228
	b _022468C2
_022468B8:
	add r0, r4, #0
	add r0, #0x80
	add r1, r5, #0
	bl ov62_02232394
_022468C2:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, _02246938 ; =0x00000608
	ldr r0, [r4, r0]
	bl sub_02024034
	ldr r0, _0224693C ; =0x0000060C
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02024034
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_022444A0
	add r0, r5, #0
	bl ov62_022455C4
	add r0, r5, #0
	bl ov62_02245D50
	add r0, r5, #0
	bl ov62_022314A8
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl ov62_022300C8
	ldr r0, _02246940 ; =0x00000868
	mov r1, #1
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_0208BA84
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02246930
_0224692A:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02246930:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02246938: .word 0x00000608
_0224693C: .word 0x0000060C
_02246940: .word 0x00000868
	thumb_func_end ov62_02246850

	thumb_func_start ov62_02246944
ov62_02246944: ; 0x02246944
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r1, [r1, #0]
	ldr r4, [r0, r2]
	cmp r1, #1
	beq _02246964
	bl ov62_0224112C
	bl ov61_0222BDF0
	mov r2, #0x4b
	lsl r2, r2, #4
	str r0, [r4, r2]
	add r0, r2, #4
	str r1, [r4, r0]
_02246964:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02246944

	thumb_func_start ov62_02246968
ov62_02246968: ; 0x02246968
	push {r4, lr}
	ldr r1, [r1, #0]
	add r4, r0, #0
	cmp r1, #1
	beq _02246990
	bl ov62_0224112C
	ldr r1, _02246994 ; =0x000008B4
	add r1, r4, r1
	bl ov61_0222BED8
	add r0, r4, #0
	bl ov62_0223371C
	ldr r0, _02246994 ; =0x000008B4
	ldr r0, [r4, r0]
	add r0, #0xa7
	ldrb r1, [r0]
	ldr r0, _02246998 ; =0x00002604
	strb r1, [r4, r0]
_02246990:
	pop {r4, pc}
	nop
_02246994: .word 0x000008B4
_02246998: .word 0x00002604
	thumb_func_end ov62_02246968

	thumb_func_start ov62_0224699C
ov62_0224699C: ; 0x0224699C
	bx lr
	; .align 2, 0
	thumb_func_end ov62_0224699C

	thumb_func_start ov62_022469A0
ov62_022469A0: ; 0x022469A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	mov r0, #0x66
	add r5, r1, #0
	bl ov62_02231690
	add r6, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #4
	ldr r7, [r4, r0]
	add r0, r0, #4
	ldr r4, [r4, r0]
	mov r0, #0xff
	mov r1, #0x66
	str r4, [sp, #0x14]
	bl sub_02023790
	str r0, [sp, #0x18]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x1c]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x20]
	ldr r2, _02246AF0 ; =0x000186A0
	add r0, r7, #0
	add r1, r4, #0
	mov r3, #0
	bl _ull_div
	str r0, [sp, #0x24]
	add r4, r1, #0
	ldr r0, [r5, #0x48]
	ldr r1, _02246AF4 ; =0x00000127
	bl sub_0200B1EC
	str r0, [sp, #0x28]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x14]
	ldr r2, _02246AF0 ; =0x000186A0
	add r0, r7, #0
	mov r3, #0
	bl _ull_mod
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r2, #5
	mov r3, #2
	bl sub_020238A0
	ldr r0, [sp, #0x24]
	ldr r2, _02246AF0 ; =0x000186A0
	add r1, r4, #0
	mov r3, #0
	bl _ull_mod
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r2, #5
	mov r3, #2
	bl sub_020238A0
	ldr r0, [sp, #0x24]
	ldr r2, _02246AF0 ; =0x000186A0
	add r1, r4, #0
	mov r3, #0
	bl _ull_div
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r2, #2
	ldr r0, [sp, #0x20]
	add r3, r2, #0
	bl sub_020238A0
	mov r0, #1
	str r0, [sp]
	mov r1, #2
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	mov r3, #0
	str r1, [sp, #4]
	bl sub_0200B48C
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	add r0, r6, #0
	bl sub_0200C388
	ldr r0, _02246AF8 ; =0x000008A4
	mov r1, #0xcc
	add r0, r5, r0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02246AFC ; =0x000F0D00
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	ldr r0, _02246AF8 ; =0x000008A4
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, _02246AF8 ; =0x000008A4
	add r0, r5, r0
	bl sub_0201A9A4
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200C41C
	add r0, r6, #0
	bl sub_0200B3F0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246AF0: .word 0x000186A0
_02246AF4: .word 0x00000127
_02246AF8: .word 0x000008A4
_02246AFC: .word 0x000F0D00
	thumb_func_end ov62_022469A0

	.rodata


	.global Unk_ov62_02249130
Unk_ov62_02249130: ; 0x02249130
	.incbin "incbin/overlay62_rodata.bin", 0xA04, 0xA08 - 0xA04

	.global Unk_ov62_02249134
Unk_ov62_02249134: ; 0x02249134
	.incbin "incbin/overlay62_rodata.bin", 0xA08, 0xA0C - 0xA08

	.global Unk_ov62_02249138
Unk_ov62_02249138: ; 0x02249138
	.incbin "incbin/overlay62_rodata.bin", 0xA0C, 0xA10 - 0xA0C

	.global Unk_ov62_0224913C
Unk_ov62_0224913C: ; 0x0224913C
	.incbin "incbin/overlay62_rodata.bin", 0xA10, 0xA18 - 0xA10

	.global Unk_ov62_02249144
Unk_ov62_02249144: ; 0x02249144
	.incbin "incbin/overlay62_rodata.bin", 0xA18, 0xA24 - 0xA18

	.global Unk_ov62_02249150
Unk_ov62_02249150: ; 0x02249150
	.incbin "incbin/overlay62_rodata.bin", 0xA24, 0xA30 - 0xA24

	.global Unk_ov62_0224915C
Unk_ov62_0224915C: ; 0x0224915C
	.incbin "incbin/overlay62_rodata.bin", 0xA30, 0xA40 - 0xA30

	.global Unk_ov62_0224916C
Unk_ov62_0224916C: ; 0x0224916C
	.incbin "incbin/overlay62_rodata.bin", 0xA40, 0xA50 - 0xA40

	.global Unk_ov62_0224917C
Unk_ov62_0224917C: ; 0x0224917C
	.incbin "incbin/overlay62_rodata.bin", 0xA50, 0xA60 - 0xA50

	.global Unk_ov62_0224918C
Unk_ov62_0224918C: ; 0x0224918C
	.incbin "incbin/overlay62_rodata.bin", 0xA60, 0xA70 - 0xA60

	.global Unk_ov62_0224919C
Unk_ov62_0224919C: ; 0x0224919C
	.incbin "incbin/overlay62_rodata.bin", 0xA70, 0xA80 - 0xA70

	.global Unk_ov62_022491AC
Unk_ov62_022491AC: ; 0x022491AC
	.incbin "incbin/overlay62_rodata.bin", 0xA80, 0xA94 - 0xA80

	.global Unk_ov62_022491C0
Unk_ov62_022491C0: ; 0x022491C0
	.incbin "incbin/overlay62_rodata.bin", 0xA94, 0xAAC - 0xA94

	.global Unk_ov62_022491D8
Unk_ov62_022491D8: ; 0x022491D8
	.incbin "incbin/overlay62_rodata.bin", 0xAAC, 0xAC4 - 0xAAC

	.global Unk_ov62_022491F0
Unk_ov62_022491F0: ; 0x022491F0
	.incbin "incbin/overlay62_rodata.bin", 0xAC4, 0xAE8 - 0xAC4

	.global Unk_ov62_02249214
Unk_ov62_02249214: ; 0x02249214
	.incbin "incbin/overlay62_rodata.bin", 0xAE8, 0xB14 - 0xAE8

	.global Unk_ov62_02249240
Unk_ov62_02249240: ; 0x02249240
	.incbin "incbin/overlay62_rodata.bin", 0xB14, 0xB40 - 0xB14

	.global Unk_ov62_0224926C
Unk_ov62_0224926C: ; 0x0224926C
	.incbin "incbin/overlay62_rodata.bin", 0xB40, 0xB6C - 0xB40

	.global Unk_ov62_02249298
Unk_ov62_02249298: ; 0x02249298
	.incbin "incbin/overlay62_rodata.bin", 0xB6C, 0xB98 - 0xB6C

	.global Unk_ov62_022492C4
Unk_ov62_022492C4: ; 0x022492C4
	.incbin "incbin/overlay62_rodata.bin", 0xB98, 0xBC4 - 0xB98

	.global Unk_ov62_022492F0
Unk_ov62_022492F0: ; 0x022492F0
	.incbin "incbin/overlay62_rodata.bin", 0xBC4, 0xBF4 - 0xBC4

	.global Unk_ov62_02249320
Unk_ov62_02249320: ; 0x02249320
	.incbin "incbin/overlay62_rodata.bin", 0xBF4, 0xC24 - 0xBF4

	.global Unk_ov62_02249350
Unk_ov62_02249350: ; 0x02249350
	.incbin "incbin/overlay62_rodata.bin", 0xC24, 0xC54 - 0xC24

	.global Unk_ov62_02249380
Unk_ov62_02249380: ; 0x02249380
	.incbin "incbin/overlay62_rodata.bin", 0xC54, 0xCA4 - 0xC54

	.global Unk_ov62_022493D0
Unk_ov62_022493D0: ; 0x022493D0
	.incbin "incbin/overlay62_rodata.bin", 0xCA4, 0xD04 - 0xCA4

	.global Unk_ov62_02249430
Unk_ov62_02249430: ; 0x02249430
	.incbin "incbin/overlay62_rodata.bin", 0xD04, 0xD7C - 0xD04

	.global Unk_ov62_022494A8
Unk_ov62_022494A8: ; 0x022494A8
	.incbin "incbin/overlay62_rodata.bin", 0xD7C, 0xEEC - 0xD7C

	.global Unk_ov62_02249618
Unk_ov62_02249618: ; 0x02249618
	.incbin "incbin/overlay62_rodata.bin", 0xEEC, 0xF00 - 0xEEC

	.global Unk_ov62_0224962C
Unk_ov62_0224962C: ; 0x0224962C
	.incbin "incbin/overlay62_rodata.bin", 0xF00, 0xF54 - 0xF00

	.global Unk_ov62_02249680
Unk_ov62_02249680: ; 0x02249680
	.incbin "incbin/overlay62_rodata.bin", 0xF54, 0x80


	.data


	.global Unk_ov62_02249944
Unk_ov62_02249944: ; 0x02249944
	.incbin "incbin/overlay62_data.bin", 0x184, 0x14

