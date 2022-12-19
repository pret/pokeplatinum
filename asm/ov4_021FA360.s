	.include "macros/function.inc"
	.include "include/ov4_021FA360.inc"

	

	.text


	arm_func_start ov4_021FA360
ov4_021FA360: ; 0x021FA360
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	ldrh r0, [r2, #4]
	ldr r2, [r2, #0]
	mul r0, r2, r0
	bl sub_020E2178
	mov r0, r1
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021FA360

	arm_func_start ov4_021FA380
ov4_021FA380: ; 0x021FA380
	ldr r3, [r0, #0]
	ldr r2, [r1, #0]
	ldr r0, [r3, #0]
	ldr r1, [r2, #0]
	cmp r0, r1
	subne r0, r0, r1
	bxne lr
	ldrh r1, [r3, #4]
	ldrh r0, [r2, #4]
	sub r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr
	arm_func_end ov4_021FA380

	arm_func_start ov4_021FA3B4
ov4_021FA3B4: ; 0x021FA3B4
	ldr ip, _021FA3C0 ; =ov4_021F83EC
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_021FA3C0: .word ov4_021F83EC
	arm_func_end ov4_021FA3B4

	arm_func_start ov4_021FA3C4
ov4_021FA3C4: ; 0x021FA3C4
	stmdb sp!, {lr}
	sub sp, sp, #0xa4
	add r3, sp, #4
	str r1, [sp, #4]
	strh r2, [sp, #8]
	str r3, [sp]
	ldr r0, [r0, #0xc]
	add r1, sp, #0
	bl ov4_021EA598
	cmp r0, #0
	ldrne r0, [r0]
	moveq r0, #0
	add sp, sp, #0xa4
	ldmia sp!, {pc}
	arm_func_end ov4_021FA3C4

	arm_func_start ov4_021FA3FC
ov4_021FA3FC: ; 0x021FA3FC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	mov r6, r3
	mov r5, r0
	mov r7, r2
	bl ov4_021EA8A4
	cmp r6, #0
	moveq r6, #0x10000
	cmp r7, #0
	add r1, sp, #0x10
	add r2, sp, #8
	mov r0, r4
	moveq r7, #0x10000
	bl ov4_021FACAC
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0x44
	bl ov4_021D7880
	movs r4, r0
	addeq sp, sp, #0x1c
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, #0x44
	bl sub_020D5124
	mvn r0, #0
	str r0, [r4, #0]
	str r6, [r4, #0x3c]
	ldr r1, [sp, #0x30]
	str r7, [r4, #0x38]
	str r1, [r4, #0x24]
	ldr r0, _021FA610 ; =ov4_021FA380
	ldr r3, _021FA614 ; =ov4_021FA360
	str r0, [sp]
	mov ip, #0
	mov r0, #4
	mov r1, #0x20
	mov r2, #2
	str ip, [sp, #4]
	bl ov4_021EA224
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _021FA4C8
	mov r0, r4
	bl ov4_021D78B0
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FA4C8:
	mov r0, #4
	ldr r2, _021FA618 ; =ov4_021FA3B4
	mov r1, r0
	bl ov4_021E9A8C
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _021FA500
	ldr r0, [r4, #0xc]
	bl ov4_021EA364
	mov r0, r4
	bl ov4_021D78B0
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FA500:
	mov r0, #2
	mov r1, r0
	mov r2, #0
	bl ov4_021EACDC
	mvn r1, #0
	str r0, [r4, #0]
	cmp r0, r1
	bne _021FA544
	ldr r0, [r4, #0xc]
	bl ov4_021EA364
	ldr r0, [r4, #0x10]
	bl ov4_021E9B50
	mov r0, r4
	bl ov4_021D78B0
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FA544:
	ldrh r0, [sp, #8]
	add r1, sp, #0x14
	mov ip, #0
	mov r2, r0, asr #8
	mov r0, r0, lsl #8
	and r2, r2, #0xff
	and r0, r0, #0xff00
	orr r0, r2, r0
	str ip, [r1]
	mov r2, #2
	strb r2, [sp, #0x15]
	ldr r3, [sp, #0x10]
	str ip, [r1, #4]
	str r3, [sp, #0x18]
	strh r0, [sp, #0x16]
	ldr r0, [r4, #0]
	mov r2, #8
	bl ov4_021EAD18
	mvn r1, #0
	cmp r0, r1
	bne _021FA5C4
	ldr r0, [r4, #0]
	bl ov4_021EACF0
	ldr r0, [r4, #0xc]
	bl ov4_021EA364
	ldr r0, [r4, #0x10]
	bl ov4_021E9B50
	mov r0, r4
	bl ov4_021D78B0
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FA5C4:
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	add r2, sp, #0xc
	bl ov4_021EAEF0
	ldr r1, [sp, #0x18]
	mov r0, #0
	str r1, [r4, #4]
	ldrh r1, [sp, #0x16]
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	strh r1, [r4, #8]
	str r4, [r5, #0]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021FA610: .word ov4_021FA380
_021FA614: .word ov4_021FA360
_021FA618: .word ov4_021FA3B4
	arm_func_end ov4_021FA3FC

	arm_func_start ov4_021FA61C
ov4_021FA61C: ; 0x021FA61C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x14]
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0]
	bl ov4_021EACF0
	ldr r0, [r4, #0xc]
	bl ov4_021EA364
	ldr r0, [r4, #0x10]
	bl ov4_021E9B50
	mov r0, r4
	bl ov4_021D78B0
	bl ov4_021EA8A8
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FA61C

	arm_func_start ov4_021FA660
ov4_021FA660: ; 0x021FA660
	str r1, [r0, #0x20]
	bx lr
	arm_func_end ov4_021FA660

	arm_func_start ov4_021FA668
ov4_021FA668: ; 0x021FA668
	ldr ip, _021FA674 ; =ov4_021D7880
	mov r0, #0xa0
	bx ip
	; .align 2, 0
_021FA674: .word ov4_021D7880
	arm_func_end ov4_021FA668

	arm_func_start ov4_021FA678
ov4_021FA678: ; 0x021FA678
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r5, r2
	mov r3, #0
	mov r6, r1
	mov r1, r5
	mov r2, r4
	mov r7, r0
	str r3, [sp]
	bl ov4_021FA3C4
	cmp r0, #0
	movne r0, #5
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021FA668
	str r0, [sp]
	cmp r0, #0
	beq _021FA808
	mov r1, #0
	mov r2, #0xa0
	bl sub_020D5124
	ldr r0, [sp]
	str r5, [r0, #0]
	ldr r0, [sp]
	strh r4, [r0, #4]
	ldr r0, [sp]
	str r7, [r0, #8]
	bl ov4_021EA840
	ldr r2, [sp]
	mov r1, #0
	str r0, [r2, #0x1c]
	ldr r2, [sp]
	ldr r0, [r2, #0x1c]
	str r0, [r2, #0x88]
	ldr r0, [sp]
	strh r1, [r0, #0x64]
	ldr r0, [sp]
	strh r1, [r0, #0x66]
	ldr r0, [sp]
	ldr r1, [r7, #0x3c]
	add r0, r0, #0x44
	bl ov4_021F741C
	cmp r0, #0
	beq _021FA808
	ldr r0, [sp]
	ldr r1, [r7, #0x38]
	add r0, r0, #0x50
	bl ov4_021F741C
	cmp r0, #0
	beq _021FA808
	mov r0, #0x10
	mov r1, #0x40
	mov r2, #0
	bl ov4_021E9A8C
	ldr r1, [sp]
	str r0, [r1, #0x5c]
	ldr r0, [sp]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	beq _021FA808
	mov r0, #0x10
	mov r1, #0x40
	mov r2, #0
	bl ov4_021E9A8C
	ldr r1, [sp]
	str r0, [r1, #0x60]
	ldr r0, [sp]
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _021FA808
	mov r0, #4
	mov r1, #2
	mov r2, #0
	bl ov4_021E9A8C
	ldr r1, [sp]
	str r0, [r1, #0x98]
	ldr r0, [sp]
	ldr r0, [r0, #0x98]
	cmp r0, #0
	beq _021FA808
	mov r0, #4
	mov r1, #2
	mov r2, #0
	bl ov4_021E9A8C
	ldr r1, [sp]
	str r0, [r1, #0x9c]
	ldr r0, [sp]
	ldr r0, [r0, #0x9c]
	cmp r0, #0
	beq _021FA808
	ldr r0, [r7, #0xc]
	add r1, sp, #0
	bl ov4_021EA44C
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl ov4_021FA3C4
	str r0, [r6, #0]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_021FA808:
	ldr r0, [sp]
	cmp r0, #0
	beq _021FA880
	ldr r0, [r0, #0x44]
	bl ov4_021D78B0
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	bl ov4_021D78B0
	ldr r0, [sp]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	beq _021FA83C
	bl ov4_021E9B50
_021FA83C:
	ldr r0, [sp]
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _021FA850
	bl ov4_021E9B50
_021FA850:
	ldr r0, [sp]
	ldr r0, [r0, #0x98]
	cmp r0, #0
	beq _021FA864
	bl ov4_021E9B50
_021FA864:
	ldr r0, [sp]
	ldr r0, [r0, #0x9c]
	cmp r0, #0
	beq _021FA878
	bl ov4_021E9B50
_021FA878:
	ldr r0, [sp]
	bl ov4_021D78B0
_021FA880:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_021FA678

	arm_func_start ov4_021FA888
ov4_021FA888: ; 0x021FA888
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	ldreq r0, [r1, #0x24]
	cmpeq r0, #0
	ldmneia sp!, {r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [r1, #0xc]
	cmp r0, #7
	ldr r0, [r1, #8]
	bne _021FA934
	ldr r0, [r0, #0x10]
	bl ov4_021E9BBC
	mov r4, r0
	mov r5, #0
	cmp r4, #0
	ldmleia sp!, {r4, r5, r6, lr}
	addle sp, sp, #0x10
	bxle lr
_021FA8E0:
	ldr r6, [sp, #0x10]
	mov r1, r5
	ldr r0, [r6, #8]
	ldr r0, [r0, #0x10]
	bl ov4_021E9BC4
	ldr r0, [r0, #0]
	cmp r6, r0
	bne _021FA91C
	ldr r0, [r6, #8]
	mov r1, r5
	ldr r0, [r0, #0x10]
	bl ov4_021E9E40
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FA91C:
	add r5, r5, #1
	cmp r5, r4
	blt _021FA8E0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FA934:
	ldr r0, [r0, #0xc]
	add r1, sp, #0x10
	bl ov4_021EA4F4
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_021FA888

	arm_func_start ov4_021FA94C
ov4_021FA94C: ; 0x021FA94C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r6, r0
	mov r5, r1
	add r0, sp, #0x34
	add r1, sp, #0x38
	mov r4, r2
	bl ov4_021FAE30
	ldr r0, [r6, #0]
	bl ov4_021EAB94
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r1, r4, asr #8
	mov r0, r4, lsl #8
	add r2, sp, #0x10
	mov r3, #0
	str r3, [r2, #4]
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	str r3, [r2, #0]
	mov r1, #2
	strh r0, [sp, #0x12]
	strb r1, [sp, #0x11]
	str r5, [sp, #0x14]
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	bl ov4_021EAE5C
	mvn r1, #0
	cmp r0, r1
	bne _021FAA78
	ldr r0, [r6, #0]
	bl ov4_021EAF38
	mvn r2, #0xe
	cmp r0, r2
	bne _021FAA2C
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_021F9968
	cmp r0, #0
	bne _021FAAE0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FAA2C:
	sub r1, r2, #0x1b
	cmp r0, r1
	addne r1, r2, #9
	cmpne r0, r1
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	sub r1, r2, #0x14
	cmp r0, r1
	beq _021FAAE0
	mov r0, r6
	bl ov4_021FABC0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FAA78:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _021FAAE0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_021FA3C4
	mov r1, #0
	str r1, [sp]
	ldr r2, [sp, #0x34]
	mov r1, r0
	str r2, [sp, #4]
	ldr ip, [sp, #0x38]
	mov r3, r4
	mov r0, r6
	mov r2, r5
	str ip, [sp, #8]
	mov r4, #1
	str r4, [sp, #0xc]
	bl ov4_021F7D38
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
_021FAAE0:
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_021FA94C

	arm_func_start ov4_021FAAF4
ov4_021FAAF4: ; 0x021FAAF4
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0]
	ldr r1, [r1, #0]
	ldr r0, [r4, #0xc]
	cmp r0, #7
	beq _021FAB20
	mov r0, r4
	bl ov4_021F82D8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_021FAB20:
	ldr r0, [r4, #0xc]
	cmp r0, #7
	ldreq r0, [r4, #0x14]
	cmpeq r0, #0
	ldreq r0, [r4, #0x24]
	cmpeq r0, #0
	bne _021FAB44
	mov r0, r4
	bl ov4_021FA888
_021FAB44:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FAAF4

	arm_func_start ov4_021FAB4C
ov4_021FAB4C: ; 0x021FAB4C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl ov4_021EA840
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, _021FAB84 ; =ov4_021FAAF4
	add r2, sp, #0
	bl ov4_021EA73C
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_021FAB84: .word ov4_021FAAF4
	arm_func_end ov4_021FAB4C

	arm_func_start ov4_021FAB88
ov4_021FAB88: ; 0x021FAB88
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x10]
	bl ov4_021E9BBC
	subs r4, r0, #1
	ldmmiia sp!, {r3, r4, r5, pc}
_021FABA0:
	ldr r0, [r5, #0x10]
	mov r1, r4
	bl ov4_021E9BC4
	ldr r0, [r0, #0]
	bl ov4_021FA888
	subs r4, r4, #1
	bpl _021FABA0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021FAB88

	arm_func_start ov4_021FABC0
ov4_021FABC0: ; 0x021FABC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	mov r1, #1
	str r1, [r4, #0x18]
	bl ov4_021F8710
	mov r0, r4
	bl ov4_021F763C
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl ov4_021FA61C
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FABC0