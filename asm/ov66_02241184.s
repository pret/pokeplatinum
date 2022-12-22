	.include "macros/function.inc"
	.include "include/ov66_02241184.inc"

	

	.text


	arm_func_start ov66_02241184
ov66_02241184: ; 0x02241184
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x84
	mov r4, r1
	mov r5, r0
	ldr r1, _02241534 ; =0x022590DC
	add r0, sp, #0x60
	bl ov66_0223BA6C
	add r0, sp, #0x78
	add r2, sp, #0x60
	mov r1, r5
	mov r3, #2
	bl ov66_0223A3B0
	add r0, sp, #0x60
	bl ov66_0223BADC
	ldr r0, [sp, #0x7c]
	cmp r0, #2
	beq _022411DC
	add r0, sp, #0x78
	bl ov66_0223B578
	add sp, sp, #0x84
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_022411DC:
	ldr r1, [sp, #0x78]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldrne r0, [r1, #4]
	bne _02241200
	ldrb r0, [r1]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x19
_02241200:
	cmp r0, #0x28
	bls _0224121C
	add r0, sp, #0x78
	bl ov66_0223B578
	add sp, sp, #0x84
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_0224121C:
	ldr r0, [r1, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldrne r0, [r1, #0x10]
	bne _0224123C
	ldrb r0, [r1, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x19
_0224123C:
	cmp r0, #0x190
	bls _02241258
	add r0, sp, #0x78
	bl ov66_0223B578
	add sp, sp, #0x84
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_02241258:
	ldr r1, _02241538 ; =0x022590E0
	add r0, sp, #0x54
	bl ov66_0223BA6C
	ldr r1, [sp, #0x78]
	add r0, sp, #0x6c
	add r2, sp, #0x54
	mov r3, #0
	bl ov66_0223A3B0
	add r0, sp, #0x54
	bl ov66_0223BADC
	ldr r0, [sp, #0x70]
	cmp r0, #6
	bhs _022412A8
	add r0, sp, #0x6c
	bl ov66_0223B578
	add r0, sp, #0x78
	bl ov66_0223B578
	add sp, sp, #0x84
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_022412A8:
	ldr r1, [sp, #0x6c]
	mov r2, #0x10
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, r1, #1
	ldrne r0, [r1, #8]
	add r1, sp, #0x20
	bl strtoul
	str r0, [r4, #0]
	ldr r1, [sp, #0x6c]
	mov r2, #0x10
	ldr r0, [r1, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, r1, #0xd
	ldrne r0, [r1, #0x14]
	add r1, sp, #0x20
	bl strtoul
	str r0, [r4, #4]
	ldr r1, [sp, #0x6c]
	ldr r5, _0224153C ; =0x022590E4
	ldr r0, [r1, #0x18]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, r1, #0x19
	ldrne r1, [r1, #0x20]
	add r0, sp, #0x3c
	bl ov66_0223BA6C
	add r0, sp, #0x48
	mov r1, r5
	bl ov66_0223BA6C
	add r0, sp, #0x3c
	add r1, sp, #0x48
	mov r2, #1
	bl ov66_0224154C
	mov r5, r0
	add r0, sp, #0x48
	bl ov66_0223BADC
	add r0, sp, #0x3c
	bl ov66_0223BADC
	cmp r5, #0
	moveq r0, #1
	movne r0, #0
	str r0, [r4, #8]
	ldr r1, [sp, #0x6c]
	ldr r5, _02241540 ; =0x022590E8
	ldr r0, [r1, #0x24]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, r1, #0x25
	ldrne r1, [r1, #0x2c]
	add r0, sp, #0x24
	bl ov66_0223BA6C
	add r0, sp, #0x30
	mov r1, r5
	bl ov66_0223BA6C
	add r0, sp, #0x24
	add r1, sp, #0x30
	mov r2, #1
	bl ov66_0224154C
	mov r5, r0
	add r0, sp, #0x30
	bl ov66_0223BADC
	add r0, sp, #0x24
	bl ov66_0223BADC
	cmp r5, #0
	moveq r0, #0
	movne r0, #1
	str r0, [r4, #0xc]
	ldr r1, [sp, #0x6c]
	mov r2, #0x10
	ldr r0, [r1, #0x30]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, r1, #0x31
	ldrne r0, [r1, #0x38]
	add r1, sp, #0x20
	bl strtol
	str r0, [r4, #0x10]
	add r0, sp, #0x6c
	bl ov66_0223B578
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _02241438
	ldr r1, [sp, #0x78]
	ldr r0, [r1, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, r1, #0xd
	ldrne r0, [r1, #0x14]
	add r1, r4, #0x18
	bl ov66_02237EF8
	cmp r0, #0
	bne _02241520
	add r0, sp, #0x78
	bl ov66_0223B578
	add sp, sp, #0x84
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_02241438:
	ldr r0, [sp, #0x78]
	ldr r1, [r0, #0xc]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrne r2, [r0, #0x10]
	bne _0224145C
	ldrb r1, [r0, #0xc]
	mov r1, r1, lsl #0x18
	mov r2, r1, lsr #0x19
_0224145C:
	ldr r1, [r0, #0xc]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldr r1, [r0, #0xc]
	addeq r3, r0, #0xd
	mov r1, r1, lsl #0x1f
	ldrne r3, [r0, #0x14]
	movs r1, r1, lsr #0x1f
	addeq r5, r0, #0xd
	ldrne r5, [r0, #0x14]
	mov r0, #0
	add r2, r3, r2
	strb r0, [sp, #0xb]
	strb r0, [sp, #0xc]
	strb r0, [sp, #0xa]
	strb r0, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0x1c]
	str r2, [r1, #0]
	str r0, [r1, #4]
	ldr r3, [r1, #0]
	add r1, sp, #0x10
	str r5, [sp, #0x10]
	str r2, [sp, #0x18]
	add r0, r4, #0x18
	ldmia r1, {r1, r2}
	bl ov66_022366CC
	mov r2, #0
	strb r2, [sp, #8]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bhs _02241500
	add r3, r1, #1
	str r3, [r4, #0x1c]
	ldr r0, _02241544 ; =0x022590D8
	ldr r1, [r4, #0x18]
	ldrsb r2, [r0, #1]
	add r0, r1, r3
	strb r2, [r0, #-1]
	b _02241520
_02241500:
	strb r2, [sp, #9]
	sub r1, sp, #4
	and r0, r2, #0xff
	strb r0, [r1]
	ldr r2, [r1, #0]
	ldr r1, _02241548 ; =0x022590D9
	add r0, r4, #0x18
	bl ov66_02241944
_02241520:
	add r0, sp, #0x78
	bl ov66_0223B578
	mov r0, #1
	add sp, sp, #0x84
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02241534: .word 0x022590DC
_02241538: .word 0x022590E0
_0224153C: .word 0x022590E4
_02241540: .word 0x022590E8
_02241544: .word 0x022590D8
_02241548: .word 0x022590D9
	arm_func_end ov66_02241184

	arm_func_start ov66_0224154C
ov66_0224154C: ; 0x0224154C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x30
	mov r6, r0
	ldr r0, [r6, #0]
	mov r5, r1
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	mov r4, r2
	ldmneib r6, {r0, r1}
	bne _02241584
	ldrb r0, [r6]
	add r1, r6, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x19
_02241584:
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r0, [r6, #0]
	add r1, sp, #0x28
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	moveq r2, #1
	movne r2, #0
	ldr r0, [r1, #0]
	cmp r2, #0
	addne r3, r6, #1
	ldreq r3, [r6, #8]
	str r0, [sp, #0x10]
	cmp r2, #0
	addne sb, r6, #1
	ldreq sb, [r6, #8]
	ldr r8, [sp, #0x10]
	str r3, [sp, #0x24]
	str r3, [sp, #0xc]
	str sb, [sp, #0x2c]
	str sb, [sp, #0x14]
	cmp sb, r8
	beq _02241600
	ldr r7, [sp, #0xc]
_022415E4:
	ldrsb r0, [sb], #1
	bl ov66_022416BC
	cmp sb, r8
	strb r0, [r7], #1
	bne _022415E4
	str r7, [sp, #0xc]
	str sb, [sp, #0x14]
_02241600:
	ldr r0, [r5, #0]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldmneib r5, {r0, r1}
	bne _02241624
	ldrb r0, [r5]
	add r1, r5, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x19
_02241624:
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0]
	add r1, sp, #0x1c
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	moveq r2, #1
	movne r2, #0
	ldr r0, [r1, #0]
	cmp r2, #0
	addne r3, r5, #1
	ldreq r3, [r5, #8]
	str r0, [sp, #4]
	cmp r2, #0
	addne sb, r5, #1
	ldreq sb, [r5, #8]
	ldr r8, [sp, #4]
	str r3, [sp, #0x18]
	str r3, [sp]
	str sb, [sp, #0x20]
	str sb, [sp, #8]
	cmp sb, r8
	beq _022416A0
	ldr r7, [sp]
_02241684:
	ldrsb r0, [sb], #1
	bl ov66_022416BC
	cmp sb, r8
	strb r0, [r7], #1
	bne _02241684
	str r7, [sp]
	str sb, [sp, #8]
_022416A0:
	mov r0, r6
	mov r2, r4
	mov r3, r5
	mov r1, #0
	bl ov66_02241A5C
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov66_0224154C

	arm_func_start ov66_022416BC
ov66_022416BC: ; 0x022416BC
	cmp r0, #0
	bxlt lr
	cmp r0, #0x80
	bxge lr
	ldr r1, _022416D8 ; =0x020FE764
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_022416D8: .word 0x020FE764
	arm_func_end ov66_022416BC

	arm_func_start ov66_022416DC
ov66_022416DC: ; 0x022416DC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1c4
	movs sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x1e0]
	ldr r4, [sp, #0x1e4]
	bne _02241710
	cmp r5, #0x190
	addhi sp, sp, #0x1c4
	movhi r0, #0
	ldmhiia sp!, {r4, r5, r6, r7, r8, sb, pc}
_02241710:
	cmp sb, #1
	bne _02241728
	cmp r5, #0x12c
	addhi sp, sp, #0x1c4
	movhi r0, #0
	ldmhiia sp!, {r4, r5, r6, r7, r8, sb, pc}
_02241728:
	ldr r1, _0224191C ; =0x022590EC
	mov r0, r4
	bl ov66_022419DC
	ldr r2, _02241920 ; =0x022590F0
	add r0, sp, #0x24
	mov r1, #3
	mov r3, #0
	bl ov66_02236A38
	mov r0, r4
	add r1, sp, #0x24
	bl ov66_02241974
	add r0, sp, #0x24
	bl ov66_0223BADC
	ldr r1, _02241924 ; =0x022590E0
	mov r0, r4
	bl ov66_022419A8
	ldr r2, _02241920 ; =0x022590F0
	add r0, sp, #0x18
	mov r1, #2
	mov r3, #6
	bl ov66_02236A38
	mov r0, r4
	add r1, sp, #0x18
	bl ov66_02241974
	add r0, sp, #0x18
	bl ov66_0223BADC
	ldr r1, _02241924 ; =0x022590E0
	mov r0, r4
	bl ov66_022419A8
	cmp sb, #0
	beq _022417B0
	cmp sb, #1
	beq _022417C0
	b _022417D0
_022417B0:
	ldr r1, _02241928 ; =0x022590E8
	mov r0, r4
	bl ov66_022419A8
	b _022417DC
_022417C0:
	ldr r1, _0224192C ; =0x022590E4
	mov r0, r4
	bl ov66_022419A8
	b _022417DC
_022417D0:
	add sp, sp, #0x1c4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_022417DC:
	ldr r1, _02241924 ; =0x022590E0
	mov r0, r4
	bl ov66_022419A8
	cmp r8, #0
	beq _02241808
	cmp r8, #1
	bne _02241818
	ldr r1, _02241930 ; =0x022590F4
	mov r0, r4
	bl ov66_022419A8
	b _02241824
_02241808:
	ldr r1, _02241928 ; =0x022590E8
	mov r0, r4
	bl ov66_022419A8
	b _02241824
_02241818:
	add sp, sp, #0x1c4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_02241824:
	ldr r1, _02241924 ; =0x022590E0
	mov r0, r4
	bl ov66_022419A8
	ldr r2, _02241920 ; =0x022590F0
	add r0, sp, #0xc
	mov r3, r7
	mov r1, #8
	bl ov66_02236A38
	add r1, sp, #0xc
	mov r0, r4
	bl ov66_02241974
	add r0, sp, #0xc
	bl ov66_0223BADC
	ldr r1, _02241924 ; =0x022590E0
	mov r0, r4
	bl ov66_022419A8
	ldr r1, _02241934 ; =0x022590F8
	mov r0, r4
	bl ov66_022419A8
	ldr r1, _02241938 ; =0x022590DC
	mov r0, r4
	bl ov66_022419A8
	cmp sb, #0
	beq _02241890
	cmp sb, #1
	beq _022418BC
	b _02241904
_02241890:
	ldr r2, _0224193C ; =0x022590FC
	add r0, sp, #0
	mov r1, r5
	mov r3, r6
	bl ov66_02236A38
	add r1, sp, #0
	mov r0, r4
	bl ov66_02241974
	add r0, sp, #0
	bl ov66_0223BADC
	b _02241910
_022418BC:
	ldr r2, _02241940 ; =0x00000191
	add r0, sp, #0x30
	mov r1, #0
	bl MI_CpuFill8
	ldr r3, _02241940 ; =0x00000191
	add r2, sp, #0x30
	mov r0, r6
	mov r1, r5
	bl ov4_021DB408
	mvn r1, #0
	cmp r0, r1
	addeq sp, sp, #0x1c4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r1, sp, #0x30
	mov r0, r4
	bl ov66_022419A8
	b _02241910
_02241904:
	add sp, sp, #0x1c4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_02241910:
	mov r0, #1
	add sp, sp, #0x1c4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0224191C: .word 0x022590EC
_02241920: .word 0x022590F0
_02241924: .word 0x022590E0
_02241928: .word 0x022590E8
_0224192C: .word 0x022590E4
_02241930: .word 0x022590F4
_02241934: .word 0x022590F8
_02241938: .word 0x022590DC
_0224193C: .word 0x022590FC
_02241940: .word 0x00000191
	arm_func_end ov66_022416DC

	arm_func_start ov66_02241944
ov66_02241944: ; 0x02241944
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r2, #0
	mov r5, r0
	mov r1, #1
	strb r2, [sp]
	bl ov66_0223B7A4
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl ov66_02241A94
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_02241944

	arm_func_start ov66_02241974
ov66_02241974: ; 0x02241974
	ldr r2, [r0, #0]
	mov r3, r1
	mov r1, r2, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrne r1, [r0, #4]
	bne _02241998
	ldrb r1, [r0]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x19
_02241998:
	ldr ip, _022419A4 ; =ov66_0223BCC8
	mov r2, #0
	bx ip
	; .align 2, 0
_022419A4: .word ov66_0223BCC8
	arm_func_end ov66_02241974

	arm_func_start ov66_022419A8
ov66_022419A8: ; 0x022419A8
	ldr r2, [r0, #0]
	mov r3, r1
	mov r1, r2, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrne r1, [r0, #4]
	bne _022419CC
	ldrb r1, [r0]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x19
_022419CC:
	ldr ip, _022419D8 ; =ov66_02241A10
	mov r2, #0
	bx ip
	; .align 2, 0
_022419D8: .word ov66_02241A10
	arm_func_end ov66_022419A8

	arm_func_start ov66_022419DC
ov66_022419DC: ; 0x022419DC
	ldr r2, [r0, #0]
	mov r3, r1
	mov r1, r2, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrne r2, [r0, #4]
	bne _02241A00
	ldrb r1, [r0]
	mov r1, r1, lsl #0x18
	mov r2, r1, lsr #0x19
_02241A00:
	ldr ip, _02241A0C ; =ov66_02241A10
	mov r1, #0
	bx ip
	; .align 2, 0
_02241A0C: .word ov66_02241A10
	arm_func_end ov66_022419DC

	arm_func_start ov66_02241A10
ov66_02241A10: ; 0x02241A10
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r3
	mov r7, r0
	mov r0, r4
	mov r6, r1
	mov r5, r2
	bl strlen
	add r0, r4, r0
	ldrb ip, [sp, #8]
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	strb ip, [sp, #4]
	bl ov66_0223C018
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end ov66_02241A10

	arm_func_start ov66_02241A5C
ov66_02241A5C: ; 0x02241A5C
	stmfd sp!, {r3, lr}
	ldr ip, [r3]
	mov ip, ip, lsl #0x1f
	movs ip, ip, lsr #0x1f
	ldmneib r3, {ip, lr}
	bne _02241A84
	ldrb ip, [r3]
	add lr, r3, #1
	mov r3, ip, lsl #0x18
	mov ip, r3, lsr #0x19
_02241A84:
	mov r3, lr
	str ip, [sp]
	bl ov66_0223BF38
	ldmia sp!, {r3, pc}
	arm_func_end ov66_02241A5C

	arm_func_start ov66_02241A94
ov66_02241A94: ; 0x02241A94
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r4, #0
	mov r6, r0
	add r3, r6, #8
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x18]
	str r3, [sp, #0x14]
	mov r5, r1
	ldr r3, [r6, #4]
	ldr r1, [r6, #8]
	add r3, r3, r5
	sub r1, r3, r1
	mov r4, r2
	bl ov66_0223B7A4
	mov r3, #0
	mov r1, r0
	strb r3, [sp, #3]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r2, [r0, #0]
	add r0, sp, #8
	strb r3, [sp, #4]
	bl ov66_0223C8E0
	ldr r2, [r6, #4]
	mov r0, #0
	ldr r1, [sp, #8]
	strb r0, [sp, #2]
	str r2, [sp, #0x18]
	add r3, r1, r2
	ldr r0, [sp, #0xc]
	ldrb r1, [r4]
	mov r2, r5
	add r0, r3, r0
	bl memset
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r0, r0, r5
	str r0, [sp, #0xc]
	ldr r5, [r6, #0]
	ldr r2, [r6, #4]
	ldr r0, [sp, #0x18]
	strb r1, [sp, #1]
	add r1, r5, r2
	sub r4, r1, r5
	sub r2, r0, r4
	ldr r0, [sp, #8]
	str r2, [sp, #0x18]
	add r0, r0, r2
	mov r1, r5
	mov r2, r4
	bl memcpy
	mov r0, r5
	mov r1, #0
	mov r2, r4
	bl memset
	ldr r1, [sp, #0xc]
	mov r0, #0
	add r1, r1, r4
	str r1, [sp, #0xc]
	strb r0, [sp]
	str r0, [r6, #4]
	add r3, sp, #0x10
	ldr r2, [r6, #8]
	ldr r1, [r3, #0]
	add r0, sp, #8
	str r1, [r6, #8]
	str r2, [r3, #0]
	ldr r2, [r6, #0]
	ldr r1, [sp, #8]
	str r1, [r6, #0]
	str r2, [sp, #8]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0xc]
	str r1, [r6, #4]
	str r2, [sp, #0xc]
	bl ov66_0223C8C4
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov66_02241A94
	.data


	.global Unk_ov66_022590D8
Unk_ov66_022590D8: ; 0x022590D8
	.incbin "incbin/overlay66_data.bin", 0x3B8, 0x3B9 - 0x3B8

	.global Unk_ov66_022590D9
Unk_ov66_022590D9: ; 0x022590D9
	.incbin "incbin/overlay66_data.bin", 0x3B9, 0x3BA - 0x3B9

	.global Unk_ov66_022590DA
Unk_ov66_022590DA: ; 0x022590DA
	.incbin "incbin/overlay66_data.bin", 0x3BA, 0x3BC - 0x3BA

	.global Unk_ov66_022590DC
Unk_ov66_022590DC: ; 0x022590DC
	.incbin "incbin/overlay66_data.bin", 0x3BC, 0x3C0 - 0x3BC

	.global Unk_ov66_022590E0
Unk_ov66_022590E0: ; 0x022590E0
	.incbin "incbin/overlay66_data.bin", 0x3C0, 0x3C4 - 0x3C0

	.global Unk_ov66_022590E4
Unk_ov66_022590E4: ; 0x022590E4
	.incbin "incbin/overlay66_data.bin", 0x3C4, 0x3C8 - 0x3C4

	.global Unk_ov66_022590E8
Unk_ov66_022590E8: ; 0x022590E8
	.incbin "incbin/overlay66_data.bin", 0x3C8, 0x3CC - 0x3C8

	.global Unk_ov66_022590EC
Unk_ov66_022590EC: ; 0x022590EC
	.incbin "incbin/overlay66_data.bin", 0x3CC, 0x3D0 - 0x3CC

	.global Unk_ov66_022590F0
Unk_ov66_022590F0: ; 0x022590F0
	.incbin "incbin/overlay66_data.bin", 0x3D0, 0x3D4 - 0x3D0

	.global Unk_ov66_022590F4
Unk_ov66_022590F4: ; 0x022590F4
	.incbin "incbin/overlay66_data.bin", 0x3D4, 0x3D8 - 0x3D4

	.global Unk_ov66_022590F8
Unk_ov66_022590F8: ; 0x022590F8
	.incbin "incbin/overlay66_data.bin", 0x3D8, 0x3DC - 0x3D8

	.global Unk_ov66_022590FC
Unk_ov66_022590FC: ; 0x022590FC
	.incbin "incbin/overlay66_data.bin", 0x3DC, 0x3

