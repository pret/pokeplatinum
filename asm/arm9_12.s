
	.include "macros/function.inc"
	.include "global.inc"

	.text

	arm_func_start sub_020CAFC4
sub_020CAFC4: ; 0x020CAFC4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	and r0, r7, #0xff
	ldr r1, _020CB01C ; =0x021CECEC
	orr r0, r0, #0x6400
	str r5, [r1, #0x20]
	orr r0, r0, #0x2000000
	str r4, [r1, #0x24]
	bl sub_020CB2F8
	ldr r1, _020CB020 ; =0x01010000
	mov r0, r6, lsl #0x10
	orr r0, r1, r0, lsr #16
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CB01C: .word 0x021CECEC
_020CB020: .word 0x01010000
	arm_func_end sub_020CAFC4

	arm_func_start sub_020CB024
sub_020CB024: ; 0x020CB024
	stmfd sp!, {r3, lr}
	ldr r2, _020CB048 ; =sub_020CAC88
	add r3, sp, #0
	bl sub_020CAFC4
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB048: .word sub_020CAC88
	arm_func_end sub_020CB024

	arm_func_start sub_020CB04C
sub_020CB04C: ; 0x020CB04C
	stmfd sp!, {r3, lr}
	cmp r0, #1
	beq _020CB06C
	cmp r0, #2
	beq _020CB07C
	cmp r0, #3
	beq _020CB074
	b _020CB084
_020CB06C:
	mov r0, #1
	b _020CB088
_020CB074:
	mov r0, #2
	b _020CB088
_020CB07C:
	mov r0, #3
	b _020CB088
_020CB084:
	mov r0, #0
_020CB088:
	cmp r0, #0
	ldreq r0, _020CB09C ; =0x0000FFFF
	ldmeqia sp!, {r3, pc}
	bl sub_020CAED0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB09C: .word 0x0000FFFF
	arm_func_end sub_020CB04C

	arm_func_start sub_020CB0A0
sub_020CB0A0: ; 0x020CB0A0
	stmfd sp!, {r3, lr}
	ldr r1, _020CB0C4 ; =sub_020CAC88
	add r2, sp, #0
	bl sub_020CB04C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB0C4: .word sub_020CAC88
	arm_func_end sub_020CB0A0

	arm_func_start sub_020CB0C8
sub_020CB0C8: ; 0x020CB0C8
	stmfd sp!, {r3, lr}
	cmp r0, #0
	mov ip, #0
	bne _020CB0EC
	cmp r1, #1
	moveq ip, #6
	cmp r1, #0
	moveq ip, #7
	b _020CB120
_020CB0EC:
	cmp r0, #1
	bne _020CB108
	cmp r1, #1
	moveq ip, #4
	cmp r1, #0
	moveq ip, #5
	b _020CB120
_020CB108:
	cmp r0, #2
	bne _020CB120
	cmp r1, #1
	moveq ip, #8
	cmp r1, #0
	moveq ip, #9
_020CB120:
	cmp ip, #0
	ldreq r0, _020CB140 ; =0x0000FFFF
	ldmeqia sp!, {r3, pc}
	mov r1, r2
	mov r0, ip
	mov r2, r3
	bl sub_020CAED0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB140: .word 0x0000FFFF
	arm_func_end sub_020CB0C8

	arm_func_start sub_020CB144
sub_020CB144: ; 0x020CB144
	stmfd sp!, {r3, lr}
	ldr r2, _020CB168 ; =sub_020CAC88
	add r3, sp, #0
	bl sub_020CB0C8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB168: .word sub_020CAC88
	arm_func_end sub_020CB144

	arm_func_start sub_020CB16C
sub_020CB16C: ; 0x020CB16C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r0, _020CB214 ; =0x00996A00
	mov r6, r1
	bl sub_020C3E08
	bl sub_020CB67C
	cmp r0, #1
	beq _020CB1FC
	add r0, sp, #4
	add r1, sp, #0
	bl sub_020CB29C
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020CB1B4
	mov r0, #0
	mov r1, r0
	bl sub_020CB144
_020CB1B4:
	ldr r0, [sp]
	cmp r0, #0
	beq _020CB1CC
	mov r0, #1
	mov r1, #0
	bl sub_020CB144
_020CB1CC:
	mov r0, #1
	bl sub_020CB65C
	cmp r0, #0
	bne _020CB1FC
	ldr r5, _020CB214 ; =0x00996A00
	mov r4, #1
_020CB1E4:
	mov r0, r5
	bl sub_020C3E08
	mov r0, r4
	bl sub_020CB65C
	cmp r0, #0
	beq _020CB1E4
_020CB1FC:
	mov r1, r7
	mov r2, r6
	mov r0, #0xe
	bl sub_020CAED0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CB214: .word 0x00996A00
	arm_func_end sub_020CB16C

	arm_func_start sub_020CB218
sub_020CB218: ; 0x020CB218
	stmfd sp!, {r3, lr}
	ldr r0, _020CB23C ; =sub_020CAC88
	add r1, sp, #0
	bl sub_020CB16C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB23C: .word sub_020CAC88
	arm_func_end sub_020CB218

	arm_func_start sub_020CB240
sub_020CB240: ; 0x020CB240
	ldr r1, _020CB250 ; =0x021CECEC
	ldr ip, _020CB254 ; =sub_020CB258
	str r0, [r1, #0x14]
	bx ip
	; .align 2, 0
_020CB250: .word 0x021CECEC
_020CB254: .word sub_020CB258
	arm_func_end sub_020CB240

	arm_func_start sub_020CB258
sub_020CB258: ; 0x020CB258
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020CB67C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, #2
	bl sub_020CB024
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CB258

	arm_func_start sub_020CB284
sub_020CB284: ; 0x020CB284
	ldr ip, _020CB298 ; =sub_020CB024
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, #3
	bx ip
	; .align 2, 0
_020CB298: .word sub_020CB024
	arm_func_end sub_020CB284

	arm_func_start sub_020CB29C
sub_020CB29C: ; 0x020CB29C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	add r1, sp, #0
	mov r0, #0
	bl sub_020CAF9C
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	beq _020CB2D8
	ldrh r1, [sp]
	tst r1, #8
	movne r1, #1
	moveq r1, #0
	str r1, [r5, #0]
_020CB2D8:
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r1, [sp]
	tst r1, #4
	movne r1, #1
	moveq r1, #0
	str r1, [r4, #0]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CB29C

	arm_func_start sub_020CB2F8
sub_020CB2F8: ; 0x020CB2F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #8
	mov r4, #0
_020CB308:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl sub_020C64CC
	cmp r0, #0
	bne _020CB308
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020CB2F8

	arm_func_start sub_020CB324
sub_020CB324: ; 0x020CB324
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r3, _020CB548 ; =0x021CECEC
	mov sl, r0
	ldr r0, [r3, #0xc]
	mov sb, r1
	mov fp, r2
	mov r4, #0
	bl sub_020CB820
	ldr r1, _020CB54C ; =0x04000208
	mov r0, r4
	ldrh r8, [r1]
	strh r0, [r1]
	bl sub_020C3D98
	str r0, [sp, #8]
	ldr r0, _020CB550 ; =0x003FFFFF
	bl sub_020C164C
	str r0, [sp, #4]
	bl sub_020C3808
	cmp r0, #0
	movne r0, #8
	moveq r0, r4
	orr r0, r0, #0x40000
	bl sub_020C15F0
	ldr r0, [sp, #8]
	bl sub_020C3DAC
	ldr r2, _020CB54C ; =0x04000208
	mov r0, #1
	ldrh r1, [r2]
	tst sl, #8
	strh r0, [r2]
	beq _020CB3B4
	ldr r0, _020CB554 ; =0x027FFC40
	ldrh r0, [r0]
	cmp r0, #2
	biceq sl, sl, #8
_020CB3B4:
	tst sl, #0x10
	beq _020CB3C8
	bl sub_020D0A04
	cmp r0, #0
	biceq sl, sl, #0x10
_020CB3C8:
	mov r1, #0x4000000
	add r0, r1, #0x1000
	ldr r5, [r1, #0]
	ldr r6, [r0, #0]
	bl sub_020CB67C
	str r0, [sp]
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl sub_020CB29C
	mov r0, #2
	mov r1, #0
	bl sub_020CB144
	ldr r2, _020CB558 ; =0x027FFC3C
	ldr r0, [r2, #0]
	str r0, [sp, #0xc]
_020CB404:
	ldr r1, [r2, #0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _020CB404
	ldr r0, [r2, #0]
	mov r2, #0x4000000
	str r0, [sp, #0xc]
	ldr r0, [r2, #0]
	add r1, r2, #0x1000
	bic r0, r0, #0x30000
	str r0, [r2, #0]
	ldr r0, [r1, #0]
	bic r0, r0, #0x10000
	str r0, [r1, #0]
	ldr r2, _020CB558 ; =0x027FFC3C
_020CB440:
	ldr r1, [r2, #0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _020CB440
	ldr r0, [r2, #0]
	str r0, [sp, #0xc]
	ldr r2, _020CB558 ; =0x027FFC3C
_020CB45C:
	ldr r1, [r2, #0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _020CB45C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	orr r0, sl, r0, lsl #5
	orr r0, r0, r1, lsl #6
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	orr r0, sb, fp
	mov r0, r0, lsl #0x10
	mov sb, r0, lsr #0x10
_020CB490:
	mov r0, r7
	mov r1, sb
	bl sub_020CAE3C
	cmp r0, #0
	bne _020CB490
	bl sub_020C42B8
	tst sl, #8
	beq _020CB4C0
	ldr r0, _020CB55C ; =0x04000214
	ldr r0, [r0, #0]
	tst r0, #0x100000
	movne r4, #1
_020CB4C0:
	cmp r4, #0
	bne _020CB500
	ldr r0, [sp]
	cmp r0, #1
	mov r0, #1
	bne _020CB4EC
	mov r1, r0
	mov r2, r0
	mov r3, r0
	bl sub_020CB564
	b _020CB4F0
_020CB4EC:
	bl sub_020CB0A0
_020CB4F0:
	mov r0, #0x4000000
	str r5, [r0, #0]
	add r0, r0, #0x1000
	str r6, [r0, #0]
_020CB500:
	ldr r0, _020CB560 ; =0x00708100
	bl sub_020C3E08
	bl sub_020C3D98
	ldr r0, [sp, #4]
	bl sub_020C15F0
	ldr r0, [sp, #8]
	bl sub_020C3DAC
	ldr r1, _020CB54C ; =0x04000208
	cmp r4, #0
	ldrh r0, [r1]
	strh r8, [r1]
	beq _020CB534
	bl sub_020CB218
_020CB534:
	ldr r0, _020CB548 ; =0x021CECEC
	ldr r0, [r0, #0x18]
	bl sub_020CB820
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CB548: .word 0x021CECEC
_020CB54C: .word 0x04000208
_020CB550: .word 0x003FFFFF
_020CB554: .word 0x027FFC40
_020CB558: .word 0x027FFC3C
_020CB55C: .word 0x04000214
_020CB560: .word 0x00708100
	arm_func_end sub_020CB324

	arm_func_start sub_020CB564
sub_020CB564: ; 0x020CB564
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r3
	cmp r0, #0
	beq _020CB5F4
	cmp r0, #1
	bne _020CB648
	cmp r2, #0
	bne _020CB5A8
	ldr r1, _020CB650 ; =0x027FFC3C
	ldr r0, _020CB654 ; =0x021CECEC
	ldr r1, [r1, #0]
	ldr r0, [r0, #0x10]
	sub r0, r1, r0
	cmp r0, #7
	movls r0, #0
	ldmlsia sp!, {r3, r4, r5, pc}
_020CB5A8:
	cmp r5, #0
	beq _020CB5D4
	cmp r4, #0
	beq _020CB5C4
	mov r0, r5
	bl sub_020CB0A0
	b _020CB5D4
_020CB5C4:
	mov r1, #0
	mov r0, r5
	mov r2, r1
	bl sub_020CB04C
_020CB5D4:
	ldr r2, _020CB658 ; =0x04000304
	ldr r0, _020CB654 ; =0x021CECEC
	ldrh r1, [r2]
	orr r1, r1, #1
	strh r1, [r2]
	ldr r0, [r0, #0x14]
	bl sub_020CB258
	b _020CB648
_020CB5F4:
	mov r0, #0
	bl sub_020CB258
	ldr r3, _020CB658 ; =0x04000304
	ldr r1, _020CB650 ; =0x027FFC3C
	ldrh r2, [r3]
	ldr r0, _020CB654 ; =0x021CECEC
	cmp r5, #0
	bic r2, r2, #1
	strh r2, [r3]
	ldr r1, [r1, #0]
	str r1, [r0, #0x10]
	beq _020CB648
	cmp r4, #0
	beq _020CB638
	mov r0, r5
	bl sub_020CB0A0
	b _020CB648
_020CB638:
	mov r1, #0
	mov r0, r5
	mov r2, r1
	bl sub_020CB04C
_020CB648:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CB650: .word 0x027FFC3C
_020CB654: .word 0x021CECEC
_020CB658: .word 0x04000304
	arm_func_end sub_020CB564

	arm_func_start sub_020CB65C
sub_020CB65C: ; 0x020CB65C
	ldr ip, _020CB678 ; =sub_020CB564
	mov r1, #0
	cmp r0, #1
	movne r0, #0
	mov r2, r1
	mov r3, #1
	bx ip
	; .align 2, 0
_020CB678: .word sub_020CB564
	arm_func_end sub_020CB65C

	arm_func_start sub_020CB67C
sub_020CB67C: ; 0x020CB67C
	ldr r0, _020CB694 ; =0x04000304
	ldrh r0, [r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_020CB694: .word 0x04000304
	arm_func_end sub_020CB67C

	arm_func_start sub_020CB698
sub_020CB698: ; 0x020CB698
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	and r0, r6, #0xff
	ldr r1, _020CB6DC ; =0x021CECEC
	orr r0, r0, #0x6600
	str r5, [r1, #0x20]
	orr r0, r0, #0x3000000
	str r4, [r1, #0x24]
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CB6DC: .word 0x021CECEC
	arm_func_end sub_020CB698

	arm_func_start sub_020CB6E0
sub_020CB6E0: ; 0x020CB6E0
	stmfd sp!, {r3, lr}
	ldr r1, _020CB704 ; =sub_020CAC88
	add r2, sp, #0
	bl sub_020CB698
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB704: .word sub_020CAC88
	arm_func_end sub_020CB6E0

	arm_func_start sub_020CB708
sub_020CB708: ; 0x020CB708
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, _020CB748 ; =0x021CECEC
	ldr r0, _020CB74C ; =0x03006700
	str r5, [r1, #0x20]
	str r4, [r1, #0x24]
	str r6, [r1, #0x28]
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CB748: .word 0x021CECEC
_020CB74C: .word 0x03006700
	arm_func_end sub_020CB708

	arm_func_start sub_020CB750
sub_020CB750: ; 0x020CB750
	stmfd sp!, {r3, lr}
	ldr r1, _020CB774 ; =sub_020CAC88
	add r2, sp, #0
	bl sub_020CB708
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB774: .word sub_020CAC88
	arm_func_end sub_020CB750

	arm_func_start sub_020CB778
sub_020CB778: ; 0x020CB778
	cmp r0, #0
	ldrne r2, [r0]
	strne r2, [r1, #8]
	strne r1, [r0]
	bx lr
	arm_func_end sub_020CB778

	arm_func_start sub_020CB78C
sub_020CB78C: ; 0x020CB78C
	cmp r0, #0
	bxeq lr
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _020CB7B0
	mov r2, #0
	str r2, [r1, #8]
	str r1, [r0, #0]
	bx lr
_020CB7B0:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _020CB7CC
_020CB7BC:
	mov r2, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020CB7BC
_020CB7CC:
	str r0, [r1, #8]
	str r1, [r2, #8]
	bx lr
	arm_func_end sub_020CB78C

	arm_func_start sub_020CB7D8
sub_020CB7D8: ; 0x020CB7D8
	cmp r0, #0
	ldrne r2, [r0]
	movne r3, r2
	cmpne r2, #0
	bxeq lr
_020CB7EC:
	cmp r2, r1
	bne _020CB80C
	cmp r2, r3
	ldreq r1, [r2, #8]
	streq r1, [r0]
	ldrne r0, [r2, #8]
	strne r0, [r3, #8]
	bx lr
_020CB80C:
	mov r3, r2
	ldr r2, [r2, #8]
	cmp r2, #0
	bne _020CB7EC
	bx lr
	arm_func_end sub_020CB7D8

	arm_func_start sub_020CB820
sub_020CB820: ; 0x020CB820
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldmeqia sp!, {r4, pc}
_020CB82C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0]
	blx r1
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _020CB82C
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CB820

	arm_func_start sub_020CB848
sub_020CB848: ; 0x020CB848
	ldr ip, _020CB858 ; =sub_020CB778
	mov r1, r0
	ldr r0, _020CB85C ; =0x021CECF8
	bx ip
	; .align 2, 0
_020CB858: .word sub_020CB778
_020CB85C: .word 0x021CECF8
	arm_func_end sub_020CB848

	arm_func_start sub_020CB860
sub_020CB860: ; 0x020CB860
	ldr ip, _020CB870 ; =sub_020CB78C
	mov r1, r0
	ldr r0, _020CB874 ; =0x021CED04
	bx ip
	; .align 2, 0
_020CB870: .word sub_020CB78C
_020CB874: .word 0x021CED04
	arm_func_end sub_020CB860

	arm_func_start sub_020CB878
sub_020CB878: ; 0x020CB878
	ldr ip, _020CB888 ; =sub_020CB7D8
	mov r1, r0
	ldr r0, _020CB88C ; =0x021CECF8
	bx ip
	; .align 2, 0
_020CB888: .word sub_020CB7D8
_020CB88C: .word 0x021CECF8
	arm_func_end sub_020CB878

	arm_func_start sub_020CB890
sub_020CB890: ; 0x020CB890
	ldr ip, _020CB8A0 ; =sub_020CB7D8
	mov r1, r0
	ldr r0, _020CB8A4 ; =0x021CED04
	bx ip
	; .align 2, 0
_020CB8A0: .word sub_020CB7D8
_020CB8A4: .word 0x021CED04
	arm_func_end sub_020CB890

	arm_func_start sub_020CB8A8
sub_020CB8A8: ; 0x020CB8A8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CB90C ; =0x021CED58
	ldrh r1, [r0]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x28]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	bl sub_020C6350
	mov r5, #5
	mov r4, #1
_020CB8E8:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020CB8E8
	ldr r1, _020CB910 ; =sub_020CBB1C
	mov r0, #5
	bl sub_020C645C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CB90C: .word 0x021CED58
_020CB910: .word sub_020CBB1C
	arm_func_end sub_020CB8A8

	arm_func_start sub_020CB914
sub_020CB914: ; 0x020CB914
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C3D98
	ldr r1, _020CB980 ; =0x021CED58
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _020CB944
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020CB944:
	mov r2, #1
	str r2, [r1, #0xc]
	bl sub_020C3DAC
	ldr r0, _020CB980 ; =0x021CED58
	mov r1, #0
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r6, [r0, #0x14]
	str r5, [r0, #0x10]
	str r4, [r0, #0x1c]
	bl sub_020CC114
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CB980: .word 0x021CED58
	arm_func_end sub_020CB914

	arm_func_start sub_020CB984
sub_020CB984: ; 0x020CB984
	stmfd sp!, {r3, lr}
	ldr r1, _020CB9B4 ; =sub_020CC0DC
	mov r2, #0
	bl sub_020CB914
	ldr r1, _020CB9B8 ; =0x021CED58
	cmp r0, #0
	str r0, [r1, #0x2c]
	bne _020CB9A8
	bl sub_020CC0EC
_020CB9A8:
	ldr r0, _020CB9B8 ; =0x021CED58
	ldr r0, [r0, #0x2c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB9B4: .word sub_020CC0DC
_020CB9B8: .word 0x021CED58
	arm_func_end sub_020CB984

	arm_func_start sub_020CB9BC
sub_020CB9BC: ; 0x020CB9BC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C3D98
	ldr r1, _020CBA2C ; =0x021CED58
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _020CB9EC
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020CB9EC:
	mov r2, #1
	str r2, [r1, #0xc]
	bl sub_020C3DAC
	ldr r0, _020CBA2C ; =0x021CED58
	mov r1, #1
	str r1, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x24]
	str r6, [r0, #0x14]
	str r5, [r0, #0x10]
	str r4, [r0, #0x1c]
	bl sub_020CC124
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CBA2C: .word 0x021CED58
	arm_func_end sub_020CB9BC

	arm_func_start sub_020CBA30
sub_020CBA30: ; 0x020CBA30
	stmfd sp!, {r3, lr}
	ldr r1, _020CBA60 ; =sub_020CC0DC
	mov r2, #0
	bl sub_020CB9BC
	ldr r1, _020CBA64 ; =0x021CED58
	cmp r0, #0
	str r0, [r1, #0x2c]
	bne _020CBA54
	bl sub_020CC0EC
_020CBA54:
	ldr r0, _020CBA64 ; =0x021CED58
	ldr r0, [r0, #0x2c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CBA60: .word sub_020CC0DC
_020CBA64: .word 0x021CED58
	arm_func_end sub_020CBA30

	arm_func_start sub_020CBA68
sub_020CBA68: ; 0x020CBA68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020C3D98
	ldr r1, _020CBAE0 ; =0x021CED58
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _020CBA9C
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CBA9C:
	mov r2, #1
	str r2, [r1, #0xc]
	bl sub_020C3DAC
	ldr r0, _020CBAE0 ; =0x021CED58
	mov r1, #2
	str r1, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x24]
	str r7, [r0, #0x14]
	str r6, [r0, #0x18]
	str r5, [r0, #0x10]
	str r4, [r0, #0x1c]
	bl sub_020CC104
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CBAE0: .word 0x021CED58
	arm_func_end sub_020CBA68

	arm_func_start sub_020CBAE4
sub_020CBAE4: ; 0x020CBAE4
	stmfd sp!, {r3, lr}
	ldr r2, _020CBB14 ; =sub_020CC0DC
	mov r3, #0
	bl sub_020CBA68
	ldr r1, _020CBB18 ; =0x021CED58
	cmp r0, #0
	str r0, [r1, #0x2c]
	bne _020CBB08
	bl sub_020CC0EC
_020CBB08:
	ldr r0, _020CBB18 ; =0x021CED58
	ldr r0, [r0, #0x2c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CBB14: .word sub_020CC0DC
_020CBB18: .word 0x021CED58
	arm_func_end sub_020CBAE4

	arm_func_start sub_020CBB1C
sub_020CBB1C: ; 0x020CBB1C
	stmfd sp!, {r3, r4, r5, lr}
	cmp r2, #0
	beq _020CBB78
	ldr r0, _020CC05C ; =0x021CED58
	ldr r1, [r0, #0x24]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x24]
	ldr r0, _020CC05C ; =0x021CED58
	ldr r1, [r0, #0xc]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0xc]
	ldr r0, _020CC05C ; =0x021CED58
	ldr r2, [r0, #0x10]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x1c]
	mov r0, #6
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
_020CBB78:
	and r0, r1, #0x7f00
	mov r0, r0, lsr #8
	and r0, r0, #0xff
	cmp r0, #0x30
	and r2, r1, #0xff
	bne _020CBBA8
	ldr r0, _020CC05C ; =0x021CED58
	ldr r0, [r0, #0x28]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	blx r0
	ldmia sp!, {r3, r4, r5, pc}
_020CBBA8:
	cmp r2, #0
	bne _020CBFCC
	ldr r0, _020CC05C ; =0x021CED58
	mov r4, #0
	ldr r1, [r0, #0x20]
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _020CBFB8
_020CBBC8: ; jump table
	b _020CBC08 ; case 0
	b _020CBC64 ; case 1
	b _020CBCB4 ; case 2
	b _020CC014 ; case 3
	b _020CC014 ; case 4
	b _020CC014 ; case 5
	b _020CBD5C ; case 6
	b _020CBD8C ; case 7
	b _020CBDB0 ; case 8
	b _020CBE58 ; case 9
	b _020CBF0C ; case 10
	b _020CC014 ; case 11
	b _020CC014 ; case 12
	b _020CC014 ; case 13
	b _020CC014 ; case 14
	b _020CC014 ; case 15
_020CBC08:
	ldr r1, _020CC060 ; =0x027FFDE8
	ldr r5, [r0, #0x14]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x18
	bl sub_020CC06C
	ldr r1, _020CC060 ; =0x027FFDE8
	str r0, [r5, #0]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1b
	bl sub_020CC06C
	ldr r1, _020CC060 ; =0x027FFDE8
	str r0, [r5, #4]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0xa
	mov r0, r0, lsr #0x1a
	bl sub_020CC06C
	str r0, [r5, #8]
	mov r0, r5
	bl sub_020CC488
	str r0, [r5, #0xc]
	b _020CC014
_020CBC64:
	ldr r1, _020CC064 ; =0x027FFDEC
	ldr r5, [r0, #0x14]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1a
	bl sub_020CC06C
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #0]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x19
	bl sub_020CC06C
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #4]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x19
	bl sub_020CC06C
	str r0, [r5, #8]
	b _020CC014
_020CBCB4:
	ldr r1, _020CC060 ; =0x027FFDE8
	ldr r5, [r0, #0x14]
	ldr r0, [r1, #0]
	and r0, r0, #0xff
	bl sub_020CC06C
	ldr r1, _020CC060 ; =0x027FFDE8
	str r0, [r5, #0]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1b
	bl sub_020CC06C
	ldr r1, _020CC060 ; =0x027FFDE8
	str r0, [r5, #4]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0xa
	mov r0, r0, lsr #0x1a
	bl sub_020CC06C
	str r0, [r5, #8]
	mov r0, r5
	bl sub_020CC488
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #0xc]
	ldr r0, [r1, #0]
	ldr r1, _020CC05C ; =0x021CED58
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1a
	ldr r5, [r1, #0x18]
	bl sub_020CC06C
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #0]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x19
	bl sub_020CC06C
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #4]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x19
	bl sub_020CC06C
	str r0, [r5, #8]
	b _020CC014
_020CBD5C:
	ldr r1, _020CC068 ; =0x027FFDEA
	ldr r2, [r0, #0x14]
	ldrh r0, [r1]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #4
	bne _020CBD84
	mov r0, #1
	str r0, [r2, #0]
	b _020CC014
_020CBD84:
	str r4, [r2, #0]
	b _020CC014
_020CBD8C:
	ldr r1, _020CC068 ; =0x027FFDEA
	ldr r2, [r0, #0x14]
	ldrh r0, [r1]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1f
	movne r0, #1
	strne r0, [r2]
	streq r4, [r2]
	b _020CC014
_020CBDB0:
	ldr r1, _020CC064 ; =0x027FFDEC
	ldr r5, [r0, #0x14]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r0, [r5, #0]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x12
	mov r0, r0, lsr #0x1a
	bl sub_020CC06C
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #4]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x19
	bl sub_020CC06C
	str r0, [r5, #8]
	mov r1, r4
	ldr r0, _020CC064 ; =0x027FFDEC
	str r1, [r5, #0xc]
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	ldrne r0, [r5, #0xc]
	addne r0, r0, #1
	strne r0, [r5, #0xc]
	ldr r0, _020CC064 ; =0x027FFDEC
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x1f
	ldrne r0, [r5, #0xc]
	addne r0, r0, #2
	strne r0, [r5, #0xc]
	ldr r0, _020CC064 ; =0x027FFDEC
	ldr r0, [r0, #0]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x1f
	beq _020CC014
	ldr r0, [r5, #0xc]
	add r0, r0, #4
	str r0, [r5, #0xc]
	b _020CC014
_020CBE58:
	ldr r3, [r0, #0x24]
	cmp r3, #0
	bne _020CBF04
	ldr r1, [r0, #0x14]
	ldr r2, _020CC068 ; =0x027FFDEA
	ldr r1, [r1, #0]
	cmp r1, #1
	ldrh r1, [r2]
	bne _020CBEC4
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1c
	cmp r1, #4
	beq _020CC014
	add r1, r3, #1
	str r1, [r0, #0x24]
	ldrh r0, [r2]
	bic r0, r0, #0xf
	orr r0, r0, #4
	strh r0, [r2]
	bl sub_020CC134
	cmp r0, #0
	bne _020CC014
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, r4
	str r1, [r0, #0x24]
	mov r4, #3
	b _020CC014
_020CBEC4:
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1c
	beq _020CC014
	add r1, r3, #1
	str r1, [r0, #0x24]
	ldrh r0, [r2]
	bic r0, r0, #0xf
	strh r0, [r2]
	bl sub_020CC134
	cmp r0, #0
	bne _020CC014
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, r4
	str r1, [r0, #0x24]
	mov r4, #3
	b _020CC014
_020CBF04:
	str r4, [r0, #0x24]
	b _020CC014
_020CBF0C:
	ldr r3, [r0, #0x24]
	cmp r3, #0
	bne _020CBFB0
	ldr r1, [r0, #0x14]
	ldr r2, _020CC068 ; =0x027FFDEA
	ldr r1, [r1, #0]
	cmp r1, #1
	ldrh r1, [r2]
	bne _020CBF70
	mov r1, r1, lsl #0x19
	mov r1, r1, lsr #0x1f
	bne _020CC014
	add r1, r3, #1
	str r1, [r0, #0x24]
	ldrh r0, [r2]
	orr r0, r0, #0x40
	strh r0, [r2]
	bl sub_020CC134
	cmp r0, #0
	bne _020CC014
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, r4
	str r1, [r0, #0x24]
	mov r4, #3
	b _020CC014
_020CBF70:
	mov r1, r1, lsl #0x19
	mov r1, r1, lsr #0x1f
	beq _020CC014
	add r1, r3, #1
	str r1, [r0, #0x24]
	ldrh r0, [r2]
	bic r0, r0, #0x40
	strh r0, [r2]
	bl sub_020CC134
	cmp r0, #0
	bne _020CC014
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, r4
	str r1, [r0, #0x24]
	mov r4, #3
	b _020CC014
_020CBFB0:
	str r4, [r0, #0x24]
	b _020CC014
_020CBFB8:
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, #0
	str r1, [r0, #0x24]
	mov r4, #4
	b _020CC014
_020CBFCC:
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, #0
	str r1, [r0, #0x24]
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _020CC010
_020CBFE4: ; jump table
	b _020CC010 ; case 0
	b _020CBFF8 ; case 1
	b _020CC000 ; case 2
	b _020CC008 ; case 3
	b _020CC010 ; case 4
_020CBFF8:
	mov r4, #4
	b _020CC014
_020CC000:
	mov r4, #5
	b _020CC014
_020CC008:
	mov r4, #1
	b _020CC014
_020CC010:
	mov r4, #6
_020CC014:
	ldr r0, _020CC05C ; =0x021CED58
	ldr r1, [r0, #0x24]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0xc]
	ldr r0, _020CC05C ; =0x021CED58
	ldr r2, [r0, #0x10]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x1c]
	mov r0, r4
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CC05C: .word 0x021CED58
_020CC060: .word 0x027FFDE8
_020CC064: .word 0x027FFDEC
_020CC068: .word 0x027FFDEA
	arm_func_end sub_020CBB1C

	arm_func_start sub_020CC06C
sub_020CC06C: ; 0x020CC06C
	stmfd sp!, {r3, r4, r5, lr}
	mov ip, #0
	mov r2, ip
	mov r3, ip
_020CC07C:
	mov r1, r0, lsr r3
	and r1, r1, #0xf
	cmp r1, #0xa
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, #8
	add r3, r3, #4
	blt _020CC07C
	mov r5, #0
	mov r4, r5
	mov lr, #1
	mov r2, #0xa
_020CC0B0:
	mov r1, r0, lsr r4
	and r3, r1, #0xf
	mul r1, lr, r1
	mla ip, lr, r3, ip
	add r5, r5, #1
	mov lr, r1
	cmp r5, #8
	add r4, r4, #4
	blt _020CC0B0
	mov r0, ip
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CC06C

	arm_func_start sub_020CC0DC
sub_020CC0DC: ; 0x020CC0DC
	ldr r1, _020CC0E8 ; =0x021CED58
	str r0, [r1, #0x2c]
	bx lr
	; .align 2, 0
_020CC0E8: .word 0x021CED58
	arm_func_end sub_020CC0DC

	arm_func_start sub_020CC0EC
sub_020CC0EC: ; 0x020CC0EC
	ldr ip, _020CC100 ; =0x021CED64
_020CC0F0:
	ldr r0, [ip]
	cmp r0, #1
	beq _020CC0F0
	bx lr
	; .align 2, 0
_020CC100: .word 0x021CED64
	arm_func_end sub_020CC0EC

	arm_func_start sub_020CC104
sub_020CC104: ; 0x020CC104
	ldr ip, _020CC110 ; =sub_020CC144
	mov r0, #0x10
	bx ip
	; .align 2, 0
_020CC110: .word sub_020CC144
	arm_func_end sub_020CC104

	arm_func_start sub_020CC114
sub_020CC114: ; 0x020CC114
	ldr ip, _020CC120 ; =sub_020CC144
	mov r0, #0x11
	bx ip
	; .align 2, 0
_020CC120: .word sub_020CC144
	arm_func_end sub_020CC114

	arm_func_start sub_020CC124
sub_020CC124: ; 0x020CC124
	ldr ip, _020CC130 ; =sub_020CC144
	mov r0, #0x12
	bx ip
	; .align 2, 0
_020CC130: .word sub_020CC144
	arm_func_end sub_020CC124

	arm_func_start sub_020CC134
sub_020CC134: ; 0x020CC134
	ldr ip, _020CC140 ; =sub_020CC144
	mov r0, #0x27
	bx ip
	; .align 2, 0
_020CC140: .word sub_020CC144
	arm_func_end sub_020CC134

	arm_func_start sub_020CC144
sub_020CC144: ; 0x020CC144
	stmfd sp!, {r3, lr}
	mov r0, r0, lsl #8
	and r1, r0, #0x7f00
	mov r0, #5
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020CC144

	arm_func_start sub_020CC16C
sub_020CC16C: ; 0x020CC16C
	ldr r3, [r0, #0]
	cmp r3, #0x64
	bhs _020CC1BC
	ldr r2, [r0, #4]
	cmp r2, #1
	blo _020CC1BC
	cmp r2, #0xc
	bhi _020CC1BC
	ldr r1, [r0, #8]
	cmp r1, #1
	blo _020CC1BC
	cmp r1, #0x1f
	bhi _020CC1BC
	ldr r0, [r0, #0xc]
	cmp r0, #7
	bge _020CC1BC
	cmp r2, #1
	blo _020CC1BC
	cmp r2, #0xc
	bls _020CC1C4
_020CC1BC:
	mvn r0, #0
	bx lr
_020CC1C4:
	ldr r0, _020CC1F8 ; =0x0210144C
	sub r1, r1, #1
	ldr r0, [r0, r2, lsl #2]
	cmp r2, #3
	add r2, r1, r0
	blo _020CC1E4
	tst r3, #3
	addeq r2, r2, #1
_020CC1E4:
	ldr r0, _020CC1FC ; =0x0000016D
	add r1, r3, #3
	mla r0, r3, r0, r2
	add r0, r0, r1, lsr #2
	bx lr
	; .align 2, 0
_020CC1F8: .word 0x0210144C
_020CC1FC: .word 0x0000016D
	arm_func_end sub_020CC16C

	arm_func_start sub_020CC200
sub_020CC200: ; 0x020CC200
	mov r1, #0x3c
	ldmia r0, {r2, r3}
	mla r3, r2, r1, r3
	ldr r0, [r0, #8]
	mla r0, r3, r1, r0
	bx lr
	arm_func_end sub_020CC200

	arm_func_start sub_020CC218
sub_020CC218: ; 0x020CC218
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl sub_020CC16C
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	moveq r1, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl sub_020CC200
	mvn r2, #0
	cmp r0, r2
	moveq r1, r2
	beq _020CC270
	ldr r1, _020CC278 ; =0x00015180
	mov r2, #0
	umull ip, r3, r4, r1
	mla r3, r4, r2, r3
	mov r2, r4, asr #0x1f
	mla r3, r2, r1, r3
	add r2, r0, ip
	adc r1, r3, r0, asr #31
_020CC270:
	mov r0, r2
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CC278: .word 0x00015180
	arm_func_end sub_020CC218

	arm_func_start sub_020CC27C
sub_020CC27C: ; 0x020CC27C
	stmfd sp!, {r4, lr}
	ldr r2, _020CC36C ; =0x00008EAC
	cmp r1, #0
	movlt r1, #0
	cmp r1, r2
	movgt r1, r2
	ldr r3, _020CC370 ; =0x92492493
	add lr, r1, #6
	smull r2, r4, r3, lr
	add r4, lr, r4
	mov r2, lr, lsr #0x1f
	add r4, r2, r4, asr #2
	mov ip, #7
	smull r2, r3, ip, r4
	sub r4, lr, r2
	ldr r2, _020CC374 ; =0x0000016D
	str r4, [r0, #0xc]
	mov r3, #0
_020CC2C4:
	tst r3, #3
	addeq ip, r2, #1
	movne ip, r2
	mov r4, r1
	sub r1, r1, ip
	movmi r1, r4
	bmi _020CC2EC
	add r3, r3, #1
	cmp r3, #0x63
	blo _020CC2C4
_020CC2EC:
	ldr r2, _020CC374 ; =0x0000016D
	str r3, [r0, #0]
	cmp r1, r2
	movgt r1, r2
	tst r3, #3
	bne _020CC330
	cmp r1, #0x3c
	bge _020CC32C
	cmp r1, #0x1f
	movlt r2, #1
	subge r1, r1, #0x1f
	movge r2, #2
	str r2, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
_020CC32C:
	sub r1, r1, #1
_020CC330:
	ldr r3, _020CC378 ; =0x02101450
	mov r4, #0xb
_020CC338:
	ldr r2, [r3, r4, lsl #2]
	cmp r1, r2
	blt _020CC360
	add r2, r4, #1
	str r2, [r0, #4]
	ldr r2, [r3, r4, lsl #2]
	sub r1, r1, r2
	add r1, r1, #1
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
_020CC360:
	sub r4, r4, #1
	bpl _020CC338
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CC36C: .word 0x00008EAC
_020CC370: .word 0x92492493
_020CC374: .word 0x0000016D
_020CC378: .word 0x02101450
	arm_func_end sub_020CC27C

	arm_func_start sub_020CC37C
sub_020CC37C: ; 0x020CC37C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020CC3F4 ; =0x0001517F
	cmp r1, #0
	movlt r1, #0
	cmp r1, r2
	movgt r1, r2
	ldr lr, _020CC3F8 ; =0x88888889
	mov ip, r1, lsr #0x1f
	smull r3, r2, lr, r1
	smull r3, r6, lr, r1
	add r2, r1, r2
	add r2, ip, r2, asr #5
	smull r3, r5, lr, r2
	smull r3, r4, lr, r2
	add r6, r1, r6
	add r6, ip, r6, asr #5
	mov lr, #0x3c
	smull r3, ip, lr, r6
	sub r6, r1, r3
	add r5, r2, r5
	mov ip, r2, lsr #0x1f
	add r5, ip, r5, asr #5
	smull r1, r3, lr, r5
	add r4, r2, r4
	str r6, [r0, #8]
	sub r5, r2, r1
	str r5, [r0, #4]
	add r4, ip, r4, asr #5
	str r4, [r0, #0]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CC3F4: .word 0x0001517F
_020CC3F8: .word 0x88888889
	arm_func_end sub_020CC37C

	arm_func_start sub_020CC3FC
sub_020CC3FC: ; 0x020CC3FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r4, r3
	sub r2, r5, #0
	sbc r2, r4, #0
	mov r2, #0
	mov r7, r0
	mov r6, r1
	movlt r5, r2
	movlt r4, r2
	blt _020CC43C
	ldr r1, _020CC480 ; =0xBC19137F
	sub r0, r1, r5
	sbc r0, r2, r4
	movlt r5, r1
	movlt r4, r2
_020CC43C:
	ldr r2, _020CC484 ; =0x00015180
	mov r0, r5
	mov r1, r4
	mov r3, #0
	bl sub_020E1D14
	mov r1, r0
	mov r0, r6
	bl sub_020CC37C
	ldr r2, _020CC484 ; =0x00015180
	mov r0, r5
	mov r1, r4
	mov r3, #0
	bl sub_020E1D24
	mov r1, r0
	mov r0, r7
	bl sub_020CC27C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CC480: .word 0xBC19137F
_020CC484: .word 0x00015180
	arm_func_end sub_020CC3FC

	arm_func_start sub_020CC488
sub_020CC488: ; 0x020CC488
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0, #4]
	ldr r2, [r0, #0]
	sub r1, r1, #2
	cmp r1, #1
	add ip, r2, #0x7d0
	sublt ip, ip, #1
	ldr r6, _020CC538 ; =0x51EB851F
	ldr lr, [r0, #8]
	smull r3, r2, r6, ip
	smull r4, r3, r6, ip
	mov r5, ip, lsr #0x1f
	add r3, r5, r3, asr #5
	add r2, r5, r2, asr #5
	mov r5, #0x64
	smull r2, r4, r5, r2
	sub r2, ip, r2
	addlt r1, r1, #0xc
	mov r0, #0x1a
	mul r0, r1, r0
	sub r1, r0, #2
	ldr r0, _020CC53C ; =0x66666667
	mov r5, r1, lsr #0x1f
	smull r1, ip, r0, r1
	add ip, r5, ip, asr #2
	mov r4, r2, asr #1
	add r0, lr, ip
	add r1, r2, r4, lsr #30
	add r2, r2, r0
	mov r6, r3, asr #1
	add r0, r3, r6, lsr #30
	add r1, r2, r1, asr #2
	add r1, r1, r0, asr #2
	add r0, r3, r3, lsl #2
	add r4, r1, r0
	ldr r3, _020CC540 ; =0x92492493
	mov r1, r4, lsr #0x1f
	smull r2, r0, r3, r4
	add r0, r4, r0
	add r0, r1, r0, asr #2
	mov r2, #7
	smull r0, r1, r2, r0
	sub r0, r4, r0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CC538: .word 0x51EB851F
_020CC53C: .word 0x66666667
_020CC540: .word 0x92492493
	arm_func_end sub_020CC488

	arm_func_start sub_020CC544
sub_020CC544: ; 0x020CC544
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CC57C ; =0x021CEE20
	mov r5, r0
	ldr r1, [r4, #0x108]
	add r0, r4, #0x44
	bl sub_020C23F4
	ldr r1, [r4, #0x114]
	add r0, r4, #0x44
	orr r1, r1, #8
	str r0, [r4, #0x104]
	str r5, [r4, #0x40]
	str r1, [r4, #0x114]
	bl sub_020C22D0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CC57C: .word 0x021CEE20
	arm_func_end sub_020CC544

	arm_func_start sub_020CC580
sub_020CC580: ; 0x020CC580
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020CC600 ; =0x021CEE20
	mov r8, r0
	mov r7, r1
	bl sub_020C3D98
	ldr r1, [r4, #8]
	mov r5, r0
	cmp r1, r8
	bne _020CC5B8
	ldr r0, [r4, #0x18]
	cmp r0, r7
	beq _020CC5DC
	bl sub_020C42A8
	b _020CC5DC
_020CC5B8:
	mvn r6, #2
	b _020CC5C8
_020CC5C0:
	add r0, r4, #0x10
	bl sub_020C2218
_020CC5C8:
	ldr r0, [r4, #8]
	cmp r0, r6
	bne _020CC5C0
	str r8, [r4, #8]
	str r7, [r4, #0x18]
_020CC5DC:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0]
	add r2, r0, #1
	mov r0, r5
	str r2, [r4, #0xc]
	mov r2, #0
	str r2, [r1, #0]
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020CC600: .word 0x021CEE20
	arm_func_end sub_020CC580

	arm_func_start sub_020CC604
sub_020CC604: ; 0x020CC604
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020CC68C ; =0x021CEE20
	mov r7, r0
	mov r6, r1
	bl sub_020C3D98
	ldr r1, [r4, #8]
	mov r5, r0
	cmp r1, r7
	bne _020CC634
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _020CC63C
_020CC634:
	bl sub_020C42A8
	b _020CC674
_020CC63C:
	ldr r0, [r4, #0x18]
	cmp r0, r6
	beq _020CC64C
	bl sub_020C42A8
_020CC64C:
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	bne _020CC674
	mvn r2, #2
	mov r1, #0
	add r0, r4, #0x10
	str r2, [r4, #8]
	str r1, [r4, #0x18]
	bl sub_020C2268
_020CC674:
	ldr r1, [r4, #0]
	mov r2, #0
	mov r0, r5
	str r2, [r1, #0]
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CC68C: .word 0x021CEE20
	arm_func_end sub_020CC604

	arm_func_start sub_020CC690
sub_020CC690: ; 0x020CC690
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _020CC784 ; =0x021CEE20
	ldr r1, _020CC788 ; =0x021CEDC0
	mvn r2, #2
	mov r0, #0
	str r2, [r4, #8]
	mov r2, #0x60
	str r0, [r4, #0xc]
	str r0, [r4, #0x18]
	str r1, [r4, #0]
	bl sub_020C4BB8
	ldr r0, _020CC788 ; =0x021CEDC0
	mov r1, #0x60
	bl sub_020C2C54
	mvn r1, #0
	ldr r0, _020CC78C ; =0x027FFC40
	str r1, [r4, #0x118]
	str r1, [r4, #0x11c]
	ldrh r0, [r0]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _020CC704
	ldr r0, _020CC790 ; =0x027FFE00
	mov r2, #0x160
	sub r1, r0, #0x380
	bl sub_020C4DB0
_020CC704:
	mov r2, #0
	mov r0, #4
	str r0, [r4, #0x108]
	str r2, [r4, #0x14]
	str r2, [r4, #0x10]
	str r2, [r4, #0x110]
	str r2, [r4, #0x10c]
	mov r0, #0x400
	str r0, [sp]
	ldr ip, [r4, #0x108]
	ldr r1, _020CC794 ; =sub_020CD7A8
	ldr r3, _020CC798 ; =0x021CF440
	add r0, r4, #0x44
	str ip, [sp, #4]
	bl sub_020C1F34
	add r0, r4, #0x44
	bl sub_020C22D0
	ldr r1, _020CC79C ; =sub_020CD774
	mov r0, #0xb
	bl sub_020C645C
	ldr r0, _020CC78C ; =0x027FFC40
	ldrh r0, [r0]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, pc}
	mov r0, #1
	bl sub_020CC7C8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CC784: .word 0x021CEE20
_020CC788: .word 0x021CEDC0
_020CC78C: .word 0x027FFC40
_020CC790: .word 0x027FFE00
_020CC794: .word sub_020CD7A8
_020CC798: .word 0x021CF440
_020CC79C: .word sub_020CD774
	arm_func_end sub_020CC690

	arm_func_start sub_020CC7A0
sub_020CC7A0: ; 0x020CC7A0
	ldr r0, _020CC7AC ; =0x021CEDA0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020CC7AC: .word 0x021CEDA0
	arm_func_end sub_020CC7A0

	arm_func_start sub_020CC7B0
sub_020CC7B0: ; 0x020CC7B0
	stmfd sp!, {r3, lr}
	bl sub_020CC7A0
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	arm_func_end sub_020CC7B0

	arm_func_start sub_020CC7C8
sub_020CC7C8: ; 0x020CC7C8
	ldr r1, _020CC7D4 ; =0x021CEDA0
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020CC7D4: .word 0x021CEDA0
	arm_func_end sub_020CC7C8

	arm_func_start sub_020CC7D8
sub_020CC7D8: ; 0x020CC7D8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CC820 ; =0x021CEE20
	bl sub_020C3D98
	mov r5, r0
	b _020CC7F4
_020CC7EC:
	add r0, r4, #0x10c
	bl sub_020C2218
_020CC7F4:
	ldr r0, [r4, #0x114]
	tst r0, #4
	bne _020CC7EC
	mov r0, r5
	bl sub_020C3DAC
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CC820: .word 0x021CEE20
	arm_func_end sub_020CC7D8

	arm_func_start sub_020CC824
sub_020CC824: ; 0x020CC824
	ldr r0, _020CC83C ; =0x021CEE20
	ldr r0, [r0, #0x114]
	tst r0, #4
	moveq r0, #1
	movne r0, #0
	bx lr
	; .align 2, 0
_020CC83C: .word 0x021CEE20
	arm_func_end sub_020CC824

	arm_func_start sub_020CC840
sub_020CC840: ; 0x020CC840
	ldr r0, _020CC850 ; =0x021CEE20
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020CC850: .word 0x021CEE20
	arm_func_end sub_020CC840

	arm_func_start sub_020CC854
sub_020CC854: ; 0x020CC854
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	bl sub_020CC580
	mov r0, r4
	bl sub_020C1990
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CC854

	arm_func_start sub_020CC870
sub_020CC870: ; 0x020CC870
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C19AC
	mov r0, r4
	mov r1, #1
	bl sub_020CC604
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CC870

	arm_func_start sub_020CC88C
sub_020CC88C: ; 0x020CC88C
	ldr ip, _020CC898 ; =sub_020CC580
	mov r1, #2
	bx ip
	; .align 2, 0
_020CC898: .word sub_020CC580
	arm_func_end sub_020CC88C

	arm_func_start sub_020CC89C
sub_020CC89C: ; 0x020CC89C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020CD050
	cmp r0, #0
	bne _020CC8B4
	bl sub_020CD044
_020CC8B4:
	mov r0, r4
	mov r1, #2
	bl sub_020CC604
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CC89C

	arm_func_start sub_020CC8C4
sub_020CC8C4: ; 0x020CC8C4
	ldr r2, _020CC8D4 ; =0x021CEDA0
	str r0, [r2, #0x198]
	str r1, [r2, #0x19c]
	bx lr
	; .align 2, 0
_020CC8D4: .word 0x021CEDA0
	arm_func_end sub_020CC8C4

	arm_func_start sub_020CC8D8
sub_020CC8D8: ; 0x020CC8D8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020CCC00 ; =0x021CEE20
	mov r5, r0
	ldr r4, [r1, #0]
	mov r1, #0
	add r0, r4, #0x18
	mov r2, #0x48
	bl sub_020C4CF4
	ldr r0, _020CCC04 ; =0x0000203F
	str r5, [r4, #4]
	str r0, [r4, #0x58]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5, asr #8
	and r0, r0, #0xff
	mov r3, #1
	mov ip, r3, lsl r0
	and r2, r5, #0xff
	mov r1, r5, asr #0x10
	str ip, [r4, #0x18]
	mov r0, #0xff
	strb r0, [r4, #0x54]
	cmp r2, #1
	and r0, r1, #0xff
	bne _020CC9D8
	cmp ip, #0x200
	beq _020CC958
	cmp ip, #0x2000
	beq _020CC978
	cmp ip, #0x10000
	beq _020CC99C
	b _020CCBE0
_020CC958:
	mov r0, #0x10
	str r0, [r4, #0x24]
	str r3, [r4, #0x28]
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #0xf0
	strb r0, [r4, #0x54]
	b _020CC9BC
_020CC978:
	mov r0, #0x20
	str r0, [r4, #0x24]
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #0
	strb r0, [r4, #0x54]
	b _020CC9BC
_020CC99C:
	mov r0, #0x80
	str r0, [r4, #0x24]
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #0xa
	str r0, [r4, #0x2c]
	mov r0, #0
	strb r0, [r4, #0x54]
_020CC9BC:
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x40
	orr r0, r0, #0x4300
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020CC9D8:
	cmp r2, #2
	bne _020CCBA0
	cmp ip, #0x100000
	bhi _020CCA08
	bhs _020CCA2C
	cmp ip, #0x40000
	bhi _020CC9FC
	beq _020CCA2C
	b _020CCBE0
_020CC9FC:
	cmp ip, #0x80000
	beq _020CCA2C
	b _020CCBE0
_020CCA08:
	cmp ip, #0x400000
	bhi _020CCA20
	bhs _020CCAA4
	cmp ip, #0x200000
	beq _020CCA58
	b _020CCBE0
_020CCA20:
	cmp ip, #0x800000
	beq _020CCAF4
	b _020CCBE0
_020CCA2C:
	mov r0, #0x19
	str r0, [r4, #0x30]
	mov r1, #0x12c
	str r1, [r4, #0x34]
	ldr r0, _020CCC08 ; =0x00001388
	str r1, [r4, #0x50]
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x480
	str r0, [r4, #0x58]
	b _020CCB70
_020CCA58:
	mov r0, #0x17
	str r0, [r4, #0x30]
	mov r1, #0x12c
	str r1, [r4, #0x34]
	mov r1, #0x1f4
	ldr r0, _020CCC08 ; =0x00001388
	str r1, [r4, #0x40]
	str r0, [r4, #0x44]
	mov r1, r0, lsl #1
	ldr r0, _020CCC0C ; =0x0000EA60
	str r1, [r4, #0x38]
	str r0, [r4, #0x3c]
	mov r0, #0
	strb r0, [r4, #0x54]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x80
	orr r0, r0, #0x5400
	str r0, [r4, #0x58]
	b _020CCB70
_020CCAA4:
	mov r0, #0x258
	str r0, [r4, #0x40]
	add r0, r0, #0x960
	str r0, [r4, #0x44]
	mov r0, #0x46
	str r0, [r4, #0x48]
	mov r0, #0x96
	str r0, [r4, #0x4c]
	ldr r1, _020CCC10 ; =0x000059D8
	ldr r0, _020CCC14 ; =0x000C3500
	str r1, [r4, #0x38]
	str r0, [r4, #0x3c]
	mov r0, #0
	strb r0, [r4, #0x54]
	mov r0, #0x1000
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0xd000
	str r0, [r4, #0x58]
	b _020CCB70
_020CCAF4:
	cmp r0, #0
	bne _020CCB34
	mov r0, #0x3e8
	str r0, [r4, #0x40]
	add r0, r0, #0x7d0
	str r0, [r4, #0x44]
	ldr r1, _020CCC18 ; =0x000109A0
	ldr r0, _020CCC1C ; =0x00027100
	str r1, [r4, #0x38]
	str r0, [r4, #0x3c]
	mov r0, #0
	strb r0, [r4, #0x54]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x5000
	str r0, [r4, #0x58]
	b _020CCB70
_020CCB34:
	cmp r0, #1
	bne _020CCB70
	mov r0, #0x3e8
	str r0, [r4, #0x40]
	add r0, r0, #0x7d0
	str r0, [r4, #0x44]
	ldr r1, _020CCC18 ; =0x000109A0
	ldr r0, _020CCC1C ; =0x00027100
	str r1, [r4, #0x38]
	str r0, [r4, #0x3c]
	mov r0, #0x84
	strb r0, [r4, #0x54]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x5000
	str r0, [r4, #0x58]
_020CCB70:
	mov r0, #0x10000
	str r0, [r4, #0x1c]
	mov r0, #0x100
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [r4, #0x28]
	mov r0, #5
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0xb40
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020CCBA0:
	cmp r2, #3
	bne _020CCBE0
	cmp ip, #0x2000
	cmpne ip, #0x8000
	bne _020CCBE0
	str ip, [r4, #0x24]
	str ip, [r4, #0x1c]
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #0
	strb r0, [r4, #0x54]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x40
	orr r0, r0, #0x4300
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020CCBE0:
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #0x18]
	ldr r0, _020CCC00 ; =0x021CEE20
	mov r1, #3
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CCC00: .word 0x021CEE20
_020CCC04: .word 0x0000203F
_020CCC08: .word 0x00001388
_020CCC0C: .word 0x0000EA60
_020CCC10: .word 0x000059D8
_020CCC14: .word 0x000C3500
_020CCC18: .word 0x000109A0
_020CCC1C: .word 0x00027100
	arm_func_end sub_020CC8D8

	arm_func_start sub_020CCC20
sub_020CCC20: ; 0x020CCC20
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r0
	ldr r7, [sb, #0x2c]
	ldr r0, _020CCE08 ; =0x02000BFC
	ldr r4, [sb, #0x34]
	ldr sl, [sb, #0x30]
	mov r5, #0x100
	bl sub_02000B9C
	cmp r7, #0xb
	bne _020CCC54
	bl sub_020CCEF8
	mov r5, r0
	b _020CCC64
_020CCC54:
	cmp r7, #0xf
	ldreq r0, _020CCE0C ; =0x021CEE20
	ldreq r0, [r0]
	ldreq r5, [r0, #0x20]
_020CCC64:
	add r6, sb, #0x120
	mov fp, #9
_020CCC6C:
	ldr r8, [sb, #0x24]
	ldr r0, [sb]
	cmp r5, r8
	movlo r8, r5
	str r8, [r0, #0x14]
	ldr r0, [sb, #0x114]
	tst r0, #0x40
	beq _020CCCA8
	ldr r0, [sb, #0x114]
	mov r1, #7
	bic r0, r0, #0x40
	str r0, [sb, #0x114]
	ldr r0, [sb]
	str r1, [r0, #0]
	b _020CCDB4
_020CCCA8:
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _020CCD38
_020CCCB4: ; jump table
	b _020CCCC4 ; case 0
	b _020CCCE8 ; case 1
	b _020CCCE8 ; case 2
	b _020CCD20 ; case 3
_020CCCC4:
	mov r0, r6
	mov r1, r8
	bl sub_020C2C1C
	ldr r1, [sb, #0x1c]
	ldr r0, [sb]
	str r1, [r0, #0xc]
	ldr r0, [sb]
	str r6, [r0, #0x10]
	b _020CCD38
_020CCCE8:
	ldr r0, [sb, #0x1c]
	mov r1, r6
	mov r2, r8
	bl sub_020C4DB0
	mov r0, r6
	mov r1, r8
	bl sub_020C2C54
	bl sub_020C2C78
	ldr r0, [sb]
	str r6, [r0, #0xc]
	ldr r1, [sb, #0x20]
	ldr r0, [sb]
	str r1, [r0, #0x10]
	b _020CCD38
_020CCD20:
	ldr r1, [sb, #0x1c]
	ldr r0, [sb]
	str r1, [r0, #0xc]
	ldr r1, [sb, #0x20]
	ldr r0, [sb]
	str r1, [r0, #0x10]
_020CCD38:
	mov r0, sb
	mov r1, r7
	mov r2, sl
	bl sub_020CD7F8
	cmp r0, #0
	beq _020CCDB4
	cmp r4, #2
	bne _020CCD74
	mov r0, sb
	mov r1, fp
	mov r2, #1
	bl sub_020CD7F8
	cmp r0, #0
	beq _020CCDB4
	b _020CCD8C
_020CCD74:
	cmp r4, #0
	bne _020CCD8C
	ldr r1, [sb, #0x20]
	mov r0, r6
	mov r2, r8
	bl sub_020C4DB0
_020CCD8C:
	ldr r0, [sb, #0x1c]
	add r0, r0, r8
	str r0, [sb, #0x1c]
	ldr r0, [sb, #0x20]
	add r0, r0, r8
	str r0, [sb, #0x20]
	ldr r0, [sb, #0x24]
	sub r0, r0, r8
	str r0, [sb, #0x24]
	bne _020CCC6C
_020CCDB4:
	ldr r6, [sb, #0x38]
	ldr r5, [sb, #0x3c]
	bl sub_020C3D98
	ldr r1, [sb, #0x114]
	mov r4, r0
	bic r0, r1, #0x4c
	str r0, [sb, #0x114]
	add r0, sb, #0x10c
	bl sub_020C2268
	ldr r0, [sb, #0x114]
	tst r0, #0x10
	beq _020CCDEC
	add r0, sb, #0x44
	bl sub_020C22D0
_020CCDEC:
	mov r0, r4
	bl sub_020C3DAC
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r5
	blx r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CCE08: .word 0x02000BFC
_020CCE0C: .word 0x021CEE20
	arm_func_end sub_020CCC20

	arm_func_start sub_020CCE10
sub_020CCE10: ; 0x020CCE10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r4, _020CCEE8 ; =0x021CEE20
	ldr r0, _020CCEEC ; =0x02000BFC
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl sub_02000B9C
	bl sub_020C3D98
	ldr r1, [r4, #0x114]
	mov r5, r0
	tst r1, #4
	beq _020CCE58
_020CCE44:
	add r0, r4, #0x10c
	bl sub_020C2218
	ldr r0, [r4, #0x114]
	tst r0, #4
	bne _020CCE44
_020CCE58:
	ldr r0, [r4, #0x114]
	ldr r1, [sp, #0x20]
	orr r2, r0, #4
	mov r0, r5
	str r2, [r4, #0x114]
	str r6, [r4, #0x38]
	str r1, [r4, #0x3c]
	bl sub_020C3DAC
	ldr r3, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x24]
	str sb, [r4, #0x1c]
	str r8, [r4, #0x20]
	str r7, [r4, #0x24]
	str r3, [r4, #0x2c]
	str r2, [r4, #0x30]
	str r1, [r4, #0x34]
	cmp r0, #0
	beq _020CCEB8
	ldr r0, _020CCEF0 ; =sub_020CCC20
	bl sub_020CC544
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020CCEB8:
	ldr r0, _020CCEF4 ; =0x021CCC80
	ldr r1, _020CCEE8 ; =0x021CEE20
	ldr r2, [r0, #4]
	mov r0, r4
	str r2, [r1, #0x104]
	bl sub_020CCC20
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020CCEE8: .word 0x021CEE20
_020CCEEC: .word 0x02000BFC
_020CCEF0: .word sub_020CCC20
_020CCEF4: .word 0x021CCC80
	arm_func_end sub_020CCE10

	arm_func_start sub_020CCEF8
sub_020CCEF8: ; 0x020CCEF8
	ldr r0, _020CCF08 ; =0x021CEE20
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	bx lr
	; .align 2, 0
_020CCF08: .word 0x021CEE20
	arm_func_end sub_020CCEF8

	arm_func_start sub_020CCF0C
sub_020CCF0C: ; 0x020CCF0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, _020CD038 ; =0x02000BFC
	ldr r4, _020CD03C ; =0x021CEE20
	bl sub_02000B9C
	cmp r6, #0
	bne _020CCF2C
	bl sub_020C42A8
_020CCF2C:
	bl sub_020CC7B0
	bl sub_020C3D98
	ldr r1, [r4, #0x114]
	mov r5, r0
	tst r1, #4
	beq _020CCF58
_020CCF44:
	add r0, r4, #0x10c
	bl sub_020C2218
	ldr r0, [r4, #0x114]
	tst r0, #4
	bne _020CCF44
_020CCF58:
	ldr r0, [r4, #0x114]
	mov r1, #0
	orr r2, r0, #4
	mov r0, r5
	str r2, [r4, #0x114]
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	bl sub_020C3DAC
	mov r0, r6
	bl sub_020CC8D8
	ldr r0, _020CD040 ; =0x021CCC80
	ldr r1, _020CD03C ; =0x021CEE20
	ldr r2, [r0, #4]
	mov r0, r4
	str r2, [r1, #0x104]
	mov r1, #2
	mov r2, #1
	bl sub_020CD7F8
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r4, #0]
	add r1, r4, #0x120
	str r1, [r0, #0x10]
	ldr r1, [r4, #0]
	mov r2, #1
	mov r0, r4
	str r2, [r1, #0x14]
	mov r1, #6
	bl sub_020CD7F8
	ldr r7, [r4, #0x38]
	ldr r6, [r4, #0x3c]
	bl sub_020C3D98
	mov r5, r0
	ldr r1, [r4, #0x114]
	add r0, r4, #0x10c
	bic r1, r1, #0x4c
	str r1, [r4, #0x114]
	bl sub_020C2268
	ldr r0, [r4, #0x114]
	tst r0, #0x10
	beq _020CD008
	add r0, r4, #0x44
	bl sub_020C22D0
_020CD008:
	mov r0, r5
	bl sub_020C3DAC
	cmp r7, #0
	beq _020CD020
	mov r0, r6
	blx r7
_020CD020:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CD038: .word 0x02000BFC
_020CD03C: .word 0x021CEE20
_020CD040: .word 0x021CCC80
	arm_func_end sub_020CCF0C

	arm_func_start sub_020CD044
sub_020CD044: ; 0x020CD044
	ldr ip, _020CD04C ; =sub_020CC7D8
	bx ip
	; .align 2, 0
_020CD04C: .word sub_020CC7D8
	arm_func_end sub_020CD044

	arm_func_start sub_020CD050
sub_020CD050: ; 0x020CD050
	ldr ip, _020CD058 ; =sub_020CC824
	bx ip
	; .align 2, 0
_020CD058: .word sub_020CC824
	arm_func_end sub_020CD050

	arm_func_start sub_020CD05C
sub_020CD05C: ; 0x020CD05C
	stmfd sp!, {r3, lr}
	bl sub_020C3D98
	ldr r1, _020CD07C ; =0x021CEE20
	ldr r2, [r1, #0x114]
	orr r2, r2, #0x40
	str r2, [r1, #0x114]
	bl sub_020C3DAC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD07C: .word 0x021CEE20
	arm_func_end sub_020CD05C

	arm_func_start sub_020CD080
sub_020CD080: ; 0x020CD080
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CD108 ; =0x021CEE20
	mov r1, #0x200
	ldr r3, [r4, #0x1c]
	rsb r1, r1, #0
	ldr r2, [r0, #8]
	and r3, r3, r1
	cmp r3, r2
	bne _020CD0F4
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	sub r3, r2, r3
	rsb r5, r3, #0x200
	cmp r5, r1
	movhi r5, r1
	add r0, r0, #0x20
	ldr r1, [r4, #0x20]
	mov r2, r5
	add r0, r0, r3
	bl sub_020C4DB0
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	add r2, r2, r5
	add r1, r1, r5
	sub r0, r0, r5
	str r2, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r0, [r4, #0x24]
_020CD0F4:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CD108: .word 0x021CEE20
	arm_func_end sub_020CD080

	arm_func_start sub_020CD10C
sub_020CD10C: ; 0x020CD10C
	ldr r3, _020CD164 ; =0x040001A4
_020CD110:
	ldr r2, [r3, #0]
	tst r2, #-0x80000000
	bne _020CD110
	ldr r3, _020CD168 ; =0x040001A1
	mov r2, #0xc0
	strb r2, [r3]
	mov r2, r0, lsr #0x18
	strb r2, [r3, #7]
	mov r2, r0, lsr #0x10
	strb r2, [r3, #8]
	mov r2, r0, lsr #8
	strb r2, [r3, #9]
	strb r0, [r3, #0xa]
	mov r0, r1, lsr #0x18
	strb r0, [r3, #0xb]
	mov r0, r1, lsr #0x10
	strb r0, [r3, #0xc]
	mov r0, r1, lsr #8
	strb r0, [r3, #0xd]
	strb r1, [r3, #0xe]
	bx lr
	; .align 2, 0
_020CD164: .word 0x040001A4
_020CD168: .word 0x040001A1
	arm_func_end sub_020CD10C

	arm_func_start sub_020CD16C
sub_020CD16C: ; 0x020CD16C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CD1B0 ; =0x021CEE20
	ldr r1, _020CD1B4 ; =0x04100010
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x20]
	mov r3, #0x200
	ldr r5, _020CD1B8 ; =0x021CF460
	bl sub_020C5048
	ldr r1, [r4, #0x1c]
	mov r0, r1, lsr #8
	orr r0, r0, #0xb7000000
	mov r1, r1, lsl #0x18
	bl sub_020CD10C
	ldr r1, [r5, #4]
	ldr r0, _020CD1BC ; =0x040001A4
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CD1B0: .word 0x021CEE20
_020CD1B4: .word 0x04100010
_020CD1B8: .word 0x021CF460
_020CD1BC: .word 0x040001A4
	arm_func_end sub_020CD16C

	arm_func_start sub_020CD1C0
sub_020CD1C0: ; 0x020CD1C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _020CD28C ; =0x021CEE20
	ldr r0, [r0, #0x28]
	bl sub_020C45F4
	ldr r3, _020CD28C ; =0x021CEE20
	ldr r0, [r3, #0x24]
	ldr r2, [r3, #0x1c]
	ldr r1, [r3, #0x20]
	sub r0, r0, #0x200
	str r0, [r3, #0x24]
	movne r0, #1
	add r2, r2, #0x200
	add r1, r1, #0x200
	moveq r0, #0
	str r2, [r3, #0x1c]
	str r1, [r3, #0x20]
	cmp r0, #0
	bne _020CD284
	mov r0, #0x80000
	bl sub_020C164C
	mov r0, #0x80000
	bl sub_020C167C
	ldr r4, _020CD28C ; =0x021CEE20
	bl sub_020CD50C
	bl sub_020CDA68
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0]
	ldr r5, [r4, #0x38]
	ldr r6, [r4, #0x3c]
	bl sub_020C3D98
	ldr r1, [r4, #0x114]
	mov r7, r0
	bic r0, r1, #0x4c
	str r0, [r4, #0x114]
	add r0, r4, #0x10c
	bl sub_020C2268
	ldr r0, [r4, #0x114]
	tst r0, #0x10
	beq _020CD268
	add r0, r4, #0x44
	bl sub_020C22D0
_020CD268:
	mov r0, r7
	bl sub_020C3DAC
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	blx r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CD284:
	bl sub_020CD16C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CD28C: .word 0x021CEE20
	arm_func_end sub_020CD1C0

	arm_func_start sub_020CD290
sub_020CD290: ; 0x020CD290
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _020CD408 ; =0x021CEE20
	mov r6, #0
	ldr sb, [r4, #0x20]
	mov fp, r0
	mov r7, r6
	mov r8, r6
	mov r1, r6
	and sl, sb, #0x1f
	ldr r5, [r4, #0x24]
	bne _020CD2C8
	ldr r0, [r4, #0x28]
	cmp r0, #3
	movls r1, #1
_020CD2C8:
	cmp r1, #0
	beq _020CD31C
	bl sub_020C3508
	ldr r1, _020CD40C ; =0x01FF8000
	add r3, sb, r5
	cmp r3, r1
	mov r1, #1
	mov r2, #0
	bls _020CD2F4
	cmp sb, #0x2000000
	movlo r2, r1
_020CD2F4:
	cmp r2, #0
	bne _020CD314
	cmp r0, r3
	bhs _020CD310
	add r0, r0, #0x4000
	cmp r0, sb
	bhi _020CD314
_020CD310:
	mov r1, #0
_020CD314:
	cmp r1, #0
	moveq r8, #1
_020CD31C:
	cmp r8, #0
	beq _020CD338
	ldr r1, [r4, #0x1c]
	ldr r0, _020CD410 ; =0x000001FF
	orr r1, r1, r5
	tst r1, r0
	moveq r7, #1
_020CD338:
	ldr r0, _020CD414 ; =0x02101480
	cmp r7, #0
	ldr r0, [r0, #0]
	cmpne r5, #0
	ldr r0, [r0, #0x60]
	movne r6, #1
	bic r0, r0, #0x7000000
	orr r0, r0, #0xa1000000
	cmp r6, #0
	str r0, [fp, #4]
	beq _020CD400
	bl sub_020C3D98
	ldr r1, [r4, #0x118]
	mov r7, r0
	cmp r5, r1
	bhs _020CD388
	mov r0, sb
	mov r1, r5
	bl sub_020C2C90
	b _020CD38C
_020CD388:
	bl sub_020C2C84
_020CD38C:
	ldr r0, [r4, #0x11c]
	cmp r5, r0
	bhs _020CD3D4
	cmp sl, #0
	beq _020CD3C0
	sub sb, sb, sl
	mov r0, sb
	mov r1, #0x20
	bl sub_020C2C38
	add r0, sb, r5
	mov r1, #0x20
	bl sub_020C2C38
	add r5, r5, #0x20
_020CD3C0:
	mov r0, sb
	mov r1, r5
	bl sub_020C2C1C
	bl sub_020C2C78
	b _020CD3D8
_020CD3D4:
	bl sub_020C2BE8
_020CD3D8:
	ldr r1, _020CD418 ; =sub_020CD1C0
	mov r0, #0x80000
	bl sub_020C144C
	mov r0, #0x80000
	bl sub_020C167C
	mov r0, #0x80000
	bl sub_020C161C
	mov r0, r7
	bl sub_020C3DAC
	bl sub_020CD16C
_020CD400:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CD408: .word 0x021CEE20
_020CD40C: .word 0x01FF8000
_020CD410: .word 0x000001FF
_020CD414: .word 0x02101480
_020CD418: .word sub_020CD1C0
	arm_func_end sub_020CD290

	arm_func_start sub_020CD41C
sub_020CD41C: ; 0x020CD41C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020CD500 ; =0x021CEE20
	mov r6, r0
_020CD428:
	mov r0, #0x200
	ldr r1, [r4, #0x1c]
	rsb r0, r0, #0
	and r2, r1, r0
	cmp r2, r1
	bne _020CD458
	ldr r5, [r4, #0x20]
	tst r5, #3
	bne _020CD458
	ldr r0, [r4, #0x24]
	cmp r0, #0x200
	bhs _020CD460
_020CD458:
	str r2, [r6, #8]
	add r5, r6, #0x20
_020CD460:
	mov r0, r2, lsr #8
	orr r0, r0, #0xb7000000
	mov r1, r2, lsl #0x18
	bl sub_020CD10C
	mov ip, #0
	ldr r0, [r6, #4]
	ldr r2, _020CD504 ; =0x040001A4
	mov lr, ip
	str r0, [r2, #0]
	ldr r1, _020CD508 ; =0x04100010
_020CD488:
	ldr r3, [r2, #0]
	tst r3, #0x800000
	beq _020CD4A8
	ldr r0, [r1, #0]
	cmp lr, #0x200
	strlo r0, [r5, ip, lsl #2]
	addlo lr, lr, #4
	addlo ip, ip, #1
_020CD4A8:
	tst r3, #-0x80000000
	bne _020CD488
	ldr r0, [r4, #0x20]
	cmp r5, r0
	bne _020CD4EC
	ldr r0, _020CD500 ; =0x021CEE20
	ldr r1, [r0, #0x1c]
	add r1, r1, #0x200
	str r1, [r0, #0x1c]
	ldr r1, [r0, #0x20]
	add r1, r1, #0x200
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x24]
	sub r1, r1, #0x200
	str r1, [r0, #0x24]
	ldmeqia sp!, {r4, r5, r6, pc}
	b _020CD428
_020CD4EC:
	mov r0, r6
	bl sub_020CD080
	cmp r0, #0
	bne _020CD428
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CD500: .word 0x021CEE20
_020CD504: .word 0x040001A4
_020CD508: .word 0x04100010
	arm_func_end sub_020CD41C

	arm_func_start sub_020CD50C
sub_020CD50C: ; 0x020CD50C
	stmfd sp!, {r3, lr}
	mov r0, #-0x48000000
	mov r1, #0
	bl sub_020CD10C
	ldr r1, _020CD55C ; =0x02101480
	mov r0, #0x2000
	ldr r1, [r1, #0]
	rsb r0, r0, #0
	ldr r2, [r1, #0x60]
	ldr r1, _020CD560 ; =0x040001A4
	bic r2, r2, #0x7000000
	orr r2, r2, #0xa7000000
	and r0, r2, r0
	str r0, [r1, #0]
_020CD544:
	ldr r0, [r1, #0]
	tst r0, #0x800000
	beq _020CD544
	ldr r0, _020CD564 ; =0x04100010
	ldr r0, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD55C: .word 0x02101480
_020CD560: .word 0x040001A4
_020CD564: .word 0x04100010
	arm_func_end sub_020CD50C

	arm_func_start sub_020CD568
sub_020CD568: ; 0x020CD568
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020CD5F8 ; =0x021CF460
	mov r0, r4
	bl sub_020CD080
	cmp r0, #0
	beq _020CD58C
	ldr r1, [r4, #0]
	mov r0, r4
	blx r1
_020CD58C:
	ldr r4, _020CD5FC ; =0x021CEE20
	bl sub_020CD50C
	bl sub_020CDA68
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0]
	ldr r5, [r4, #0x38]
	ldr r6, [r4, #0x3c]
	bl sub_020C3D98
	ldr r1, [r4, #0x114]
	mov r7, r0
	bic r0, r1, #0x4c
	str r0, [r4, #0x114]
	add r0, r4, #0x10c
	bl sub_020C2268
	ldr r0, [r4, #0x114]
	tst r0, #0x10
	beq _020CD5DC
	add r0, r4, #0x44
	bl sub_020C22D0
_020CD5DC:
	mov r0, r7
	bl sub_020C3DAC
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	blx r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CD5F8: .word 0x021CF460
_020CD5FC: .word 0x021CEE20
	arm_func_end sub_020CD568

	arm_func_start sub_020CD600
sub_020CD600: ; 0x020CD600
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	ldr r4, _020CD6E4 ; =0x021CF460
	ldr r5, _020CD6E8 ; =0x021CEE20
	bl sub_020CC7B0
	bl sub_020C3D98
	mov r6, r0
	b _020CD634
_020CD62C:
	add r0, r5, #0x10c
	bl sub_020C2218
_020CD634:
	ldr r0, [r5, #0x114]
	tst r0, #4
	bne _020CD62C
	ldr r0, [r5, #0x114]
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x24]
	orr r3, r0, #4
	mov r0, r6
	str r3, [r5, #0x114]
	str r2, [r5, #0x38]
	str r1, [r5, #0x3c]
	bl sub_020C3DAC
	ldr r0, _020CD6EC ; =0x021CF440
	str sl, [r5, #0x28]
	ldr r0, [r0, #0]
	str r8, [r5, #0x20]
	add r0, sb, r0
	str r0, [r5, #0x1c]
	str r7, [r5, #0x24]
	cmp sl, #3
	bhi _020CD690
	mov r0, sl
	bl sub_020C45F4
_020CD690:
	mov r0, r4
	bl sub_020CD290
	cmp r0, #0
	beq _020CD6B4
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl sub_020CD75C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CD6B4:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _020CD6CC
	ldr r0, _020CD6F0 ; =sub_020CD568
	bl sub_020CC544
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CD6CC:
	ldr r1, _020CD6F4 ; =0x021CCC80
	mov r0, r5
	ldr r1, [r1, #4]
	str r1, [r5, #0x104]
	bl sub_020CD568
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020CD6E4: .word 0x021CF460
_020CD6E8: .word 0x021CEE20
_020CD6EC: .word 0x021CF440
_020CD6F0: .word sub_020CD568
_020CD6F4: .word 0x021CCC80
	arm_func_end sub_020CD600

	arm_func_start sub_020CD6F8
sub_020CD6F8: ; 0x020CD6F8
	stmfd sp!, {r3, lr}
	ldr ip, _020CD754 ; =0x021CEE20
	ldr r0, [ip, #0x114]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r2, #0
	ldr r0, _020CD758 ; =0x021CF440
	sub r1, r2, #1
	mov r3, #1
	str r3, [ip, #0x114]
	str r2, [ip, #0x24]
	str r2, [ip, #0x20]
	str r2, [ip, #0x1c]
	str r1, [ip, #0x28]
	str r2, [ip, #0x38]
	str r2, [ip, #0x3c]
	str r2, [r0, #0]
	bl sub_020CC690
	bl sub_020CD768
	ldr r1, _020CD758 ; =0x021CF440
	str r0, [r1, #0x20]
	bl sub_020CD94C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD754: .word 0x021CEE20
_020CD758: .word 0x021CF440
	arm_func_end sub_020CD6F8

	arm_func_start sub_020CD75C
sub_020CD75C: ; 0x020CD75C
	ldr ip, _020CD764 ; =sub_020CC7D8
	bx ip
	; .align 2, 0
_020CD764: .word sub_020CC7D8
	arm_func_end sub_020CD75C

	arm_func_start sub_020CD768
sub_020CD768: ; 0x020CD768
	ldr r0, _020CD770 ; =sub_020CD41C
	bx lr
	; .align 2, 0
_020CD770: .word sub_020CD41C
	arm_func_end sub_020CD768

	arm_func_start sub_020CD774
sub_020CD774: ; 0x020CD774
	stmfd sp!, {r3, lr}
	cmp r0, #0xb
	ldmneia sp!, {r3, pc}
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _020CD7A4 ; =0x021CEE20
	ldr r1, [r2, #0x114]
	ldr r0, [r2, #0x104]
	bic r1, r1, #0x20
	str r1, [r2, #0x114]
	bl sub_020C22D0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD7A4: .word 0x021CEE20
	arm_func_end sub_020CD774

	arm_func_start sub_020CD7A8
sub_020CD7A8: ; 0x020CD7A8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020CD7F4 ; =0x021CEE20
	mov r4, #0
_020CD7B4:
	bl sub_020C3D98
	ldr r1, [r5, #0x114]
	mov r6, r0
	tst r1, #8
	bne _020CD7DC
_020CD7C8:
	mov r0, r4
	bl sub_020C2218
	ldr r0, [r5, #0x114]
	tst r0, #8
	beq _020CD7C8
_020CD7DC:
	mov r0, r6
	bl sub_020C3DAC
	ldr r1, [r5, #0x40]
	mov r0, r5
	blx r1
	b _020CD7B4
	; .align 2, 0
_020CD7F4: .word 0x021CEE20
	arm_func_end sub_020CD7A8

	arm_func_start sub_020CD7F8
sub_020CD7F8: ; 0x020CD7F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r0, [sl, #0x114]
	mov sb, r1
	str r2, [sp]
	tst r0, #2
	bne _020CD86C
	ldr r1, [sl, #0x114]
	mov r0, #0xb
	orr r2, r1, #2
	mov r1, #1
	str r2, [sl, #0x114]
	bl sub_020C64A8
	cmp r0, #0
	bne _020CD85C
	mov r6, #0x64
	mov r5, #0xb
	mov r4, #1
_020CD840:
	mov r0, r6
	bl sub_020C3E08
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020CD840
_020CD85C:
	mov r0, sl
	mov r1, #0
	mov r2, #1
	bl sub_020CD7F8
_020CD86C:
	ldr r0, [sl]
	mov r1, #0x60
	bl sub_020C2C54
	bl sub_020C2C78
	mov r7, #0xb
	mov r6, #1
	mov r5, r7
	mov r4, r6
	mov fp, #0
_020CD890:
	str sb, [sl, #4]
	ldr r0, [sl, #0x114]
	orr r0, r0, #0x20
	str r0, [sl, #0x114]
_020CD8A0:
	mov r0, r7
	mov r1, sb
	mov r2, r6
	bl sub_020C64CC
	cmp r0, #0
	blt _020CD8A0
	cmp sb, #0
	bne _020CD8DC
	ldr r8, [sl]
_020CD8C4:
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl sub_020C64CC
	cmp r0, #0
	blt _020CD8C4
_020CD8DC:
	bl sub_020C3D98
	ldr r1, [sl, #0x114]
	mov r8, r0
	tst r1, #0x20
	beq _020CD904
_020CD8F0:
	mov r0, fp
	bl sub_020C2218
	ldr r0, [sl, #0x114]
	tst r0, #0x20
	bne _020CD8F0
_020CD904:
	mov r0, r8
	bl sub_020C3DAC
	ldr r0, [sl]
	mov r1, #0x60
	bl sub_020C2C1C
	ldr r0, [sl]
	ldr r1, [r0, #0]
	cmp r1, #4
	bne _020CD93C
	ldr r0, [sp]
	sub r0, r0, #1
	str r0, [sp]
	cmp r0, #0
	bgt _020CD890
_020CD93C:
	cmp r1, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020CD7F8

	arm_func_start sub_020CD94C
sub_020CD94C: ; 0x020CD94C
	stmfd sp!, {r3, lr}
	bl sub_020C6350
	ldr r1, _020CD970 ; =sub_020CD978
	mov r0, #0xe
	bl sub_020C645C
	ldr r0, _020CD974 ; =0x021CF680
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD970: .word sub_020CD978
_020CD974: .word 0x021CF680
	arm_func_end sub_020CD94C

	arm_func_start sub_020CD978
sub_020CD978: ; 0x020CD978
	stmfd sp!, {r3, lr}
	and r0, r1, #0x3f
	cmp r0, #0x11
	bne _020CD9C0
	ldr r1, _020CD9C8 ; =0x021CF680
	ldr r0, [r1, #0]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	str r0, [r1, #0]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _020CD9B0
	blx r1
_020CD9B0:
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020CD9DC
	ldmia sp!, {r3, pc}
_020CD9C0:
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD9C8: .word 0x021CF680
	arm_func_end sub_020CD978

	arm_func_start sub_020CD9CC
sub_020CD9CC: ; 0x020CD9CC
	ldr r0, _020CD9D8 ; =0x021CF680
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020CD9D8: .word 0x021CF680
	arm_func_end sub_020CD9CC

	arm_func_start sub_020CD9DC
sub_020CD9DC: ; 0x020CD9DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0
	mov r5, #1
	bl sub_020C45F4
	mov r0, r5
	bl sub_020C45F4
	mov r0, #2
	bl sub_020C45F4
	mov r0, #3
	bl sub_020C45F4
	ldr r0, _020CDA60 ; =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	mov r0, r0, asr #0xf
	beq _020CDA44
	bl sub_020CB218
	cmp r0, #4
	bne _020CDA3C
	ldr r4, _020CDA64 ; =0x000A3A47
_020CDA28:
	mov r0, r4
	bl sub_020C3E08
	bl sub_020CB218
	cmp r0, #4
	beq _020CDA28
_020CDA3C:
	cmp r0, #0
	moveq r5, #0
_020CDA44:
	cmp r5, #0
	beq _020CDA58
	mov r0, #1
	mov r1, r0
	bl sub_020CDAC8
_020CDA58:
	bl sub_020C42A8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CDA60: .word 0x027FFFA8
_020CDA64: .word 0x000A3A47
	arm_func_end sub_020CD9DC

	arm_func_start sub_020CDA68
sub_020CDA68: ; 0x020CDA68
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, _020CDAC4 ; =0x027FFC10
	ldrh r1, [r2]
	cmp r1, #0
	subeq r1, r2, #0x410
	subne r1, r2, #0x10
	ldr r1, [r1, #0]
	str r1, [sp]
	ldr r1, [sp]
	cmp r0, r1
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	bl sub_020C3D98
	mov r4, r0
	mov r0, #0xe
	mov r1, #0x11
	mov r2, #0
	bl sub_020CD978
	mov r0, r4
	bl sub_020C3DAC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020CDAC4: .word 0x027FFC10
	arm_func_end sub_020CDA68

	arm_func_start sub_020CDAC8
sub_020CDAC8: ; 0x020CDAC8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r1, r7
	mov r0, #0xe
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0xe
	mov r4, #0
_020CDAF4:
	mov r0, r6
	bl sub_02000522
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl sub_020C64CC
	cmp r0, #0
	bne _020CDAF4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020CDAC8

	arm_func_start sub_020CDB18
sub_020CDB18: ; 0x020CDB18
	stmfd sp!, {r3, lr}
	mov r2, #0xf00
	bl sub_020CDB44
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r1, _020CDB40 ; =0x021CF6A0
	mov r2, #0
	ldr r1, [r1, #4]
	strh r2, [r1, #0x16]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CDB40: .word 0x021CF6A0
	arm_func_end sub_020CDB18

	arm_func_start sub_020CDB44
sub_020CDB44: ; 0x020CDB44
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r6, r0
	mov r4, r1
	mov r7, r2
	bl sub_020C3D98
	ldr r1, _020CDD14 ; =0x021CF6A0
	mov r5, r0
	ldrh r1, [r1]
	cmp r1, #0
	beq _020CDB78
	bl sub_020C3DAC
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CDB78:
	cmp r6, #0
	bne _020CDB8C
	bl sub_020C3DAC
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CDB8C:
	cmp r4, #3
	bls _020CDBA0
	bl sub_020C3DAC
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CDBA0:
	tst r6, #0x1f
	beq _020CDBB4
	bl sub_020C3DAC
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CDBB4:
	bl sub_020C6350
	mov r0, #0xa
	mov r1, #1
	bl sub_020C64A8
	cmp r0, #0
	bne _020CDBDC
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CDBDC:
	mov r0, r6
	mov r1, r7
	bl sub_020C2C1C
	mov r0, r4
	mov r1, r6
	mov r3, r7
	mov r2, #0
	bl sub_020C42D4
	ldr r0, _020CDD14 ; =0x021CF6A0
	add r1, r6, #0x200
	str r6, [r0, #4]
	str r1, [r6, #0]
	ldr r2, [r0, #4]
	ldr r1, [r2, #0]
	add r1, r1, #0x300
	str r1, [r2, #4]
	ldr r2, [r0, #4]
	ldr r1, [r2, #4]
	add r1, r1, #0x800
	str r1, [r2, #0xc]
	ldr r1, [r0, #4]
	ldr r0, [r1, #0xc]
	add r0, r0, #0x100
	str r0, [r1, #0x10]
	bl sub_020CE3D8
	ldr r1, _020CDD14 ; =0x021CF6A0
	mov r3, #0
	ldr r0, [r1, #4]
	mov r2, r3
	strh r4, [r0, #0x14]
	ldr r0, [r1, #4]
	str r3, [r0, #0x14c]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r3, [r0, #0x50]
	b _020CDC88
_020CDC6C:
	ldr r0, [r1, #4]
	add r0, r0, r3, lsl #2
	str r2, [r0, #0xcc]
	ldr r0, [r1, #4]
	add r0, r0, r3, lsl #2
	str r2, [r0, #0x10c]
	add r3, r3, #1
_020CDC88:
	cmp r3, #0x10
	blt _020CDC6C
	ldr r0, _020CDD18 ; =0x021CF6A8
	ldr r1, _020CDD1C ; =0x021CF6C8
	mov r2, #0xa
	bl sub_020C2748
	mov r6, #0
	mov r4, #0x8000
	ldr sl, _020CDD20 ; =0x021CF740
	mov sb, #2
	ldr r8, _020CDD18 ; =0x021CF6A8
	mov r7, #1
	b _020CDCE4
_020CDCBC:
	mov r2, r6, lsl #8
	mov r1, sb
	add r0, sl, r6, lsl #8
	strh r4, [sl, r2]
	bl sub_020C2C38
	mov r0, r8
	mov r2, r7
	add r1, sl, r6, lsl #8
	bl sub_020C2770
	add r6, r6, #1
_020CDCE4:
	cmp r6, #0xa
	blt _020CDCBC
	ldr r1, _020CDD24 ; =sub_020CE02C
	mov r0, #0xa
	bl sub_020C645C
	ldr r1, _020CDD14 ; =0x021CF6A0
	mov r2, #1
	mov r0, r5
	strh r2, [r1]
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020CDD14: .word 0x021CF6A0
_020CDD18: .word 0x021CF6A8
_020CDD1C: .word 0x021CF6C8
_020CDD20: .word 0x021CF740
_020CDD24: .word sub_020CE02C
	arm_func_end sub_020CDB44

	arm_func_start sub_020CDD28
sub_020CDD28: ; 0x020CDD28
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	mov r4, r0
	bl sub_020CDF34
	cmp r0, #0
	beq _020CDD50
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #3
	ldmia sp!, {r4, pc}
_020CDD50:
	mov r0, #1
	mov r1, #0
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl sub_020CE3D8
	mov r0, #0xa
	mov r1, #0
	bl sub_020C645C
	ldr r1, _020CDD94 ; =0x021CF6A0
	mov r2, #0
	str r2, [r1, #4]
	mov r0, r4
	strh r2, [r1]
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CDD94: .word 0x021CF6A0
	arm_func_end sub_020CDD28

	arm_func_start sub_020CDD98
sub_020CDD98: ; 0x020CDD98
	ldr r2, _020CDDAC ; =0x021CF6A0
	ldr r2, [r2, #4]
	add r0, r2, r0, lsl #2
	str r1, [r0, #0x18]
	bx lr
	; .align 2, 0
_020CDDAC: .word 0x021CF6A0
	arm_func_end sub_020CDD98

	arm_func_start sub_020CDDB0
sub_020CDDB0: ; 0x020CDDB0
	stmfd sp!, {r3, lr}
	ldr r0, _020CDE04 ; =0x021CF6A8
	add r1, sp, #0
	mov r2, #0
	bl sub_020C2804
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [sp]
	mov r1, #2
	bl sub_020C2C1C
	ldr r1, [sp]
	ldrh r0, [r1]
	tst r0, #0x8000
	movne r0, r1
	ldmneia sp!, {r3, pc}
	ldr r0, _020CDE04 ; =0x021CF6A8
	mov r2, #1
	bl sub_020C28A8
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CDE04: .word 0x021CF6A8
	arm_func_end sub_020CDDB0

	arm_func_start sub_020CDE08
sub_020CDE08: ; 0x020CDE08
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020CDDB0
	mov r4, r0
	moveq r0, #8
	ldmeqia sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	strh r5, [r4]
	ldrh r5, [sp, #0x14]
	add r0, sp, #0x14
	bic r0, r0, #3
	mov r3, #0
	cmp r5, #0
	add r2, r0, #4
	ble _020CDE68
_020CDE4C:
	add r2, r2, #4
	ldr r1, [r2, #-4]
	add r0, r4, r3, lsl #2
	add r3, r3, #1
	str r1, [r0, #4]
	cmp r3, r5
	blt _020CDE4C
_020CDE68:
	mov r0, r4
	mov r1, #0x100
	bl sub_020C2C38
	mov r1, r4
	mov r0, #0xa
	mov r2, #0
	bl sub_020C64CC
	mov r5, r0
	ldr r0, _020CDEB0 ; =0x021CF6A8
	mov r1, r4
	mov r2, #1
	bl sub_020C2770
	cmp r5, #0
	movlt r0, #8
	movge r0, #2
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020CDEB0: .word 0x021CF6A8
	arm_func_end sub_020CDE08

	arm_func_start sub_020CDEB4
sub_020CDEB4: ; 0x020CDEB4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	bl sub_020CDDB0
	mov r5, r0
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C4DB0
	mov r0, r5
	mov r1, r4
	bl sub_020C2C38
	mov r1, r5
	mov r0, #0xa
	mov r2, #0
	bl sub_020C64CC
	mov r4, r0
	ldr r0, _020CDF20 ; =0x021CF6A8
	mov r1, r5
	mov r2, #1
	bl sub_020C2770
	cmp r4, #0
	movlt r0, #8
	movge r0, #2
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CDF20: .word 0x021CF6A8
	arm_func_end sub_020CDEB4

	arm_func_start sub_020CDF24
sub_020CDF24: ; 0x020CDF24
	ldr r0, _020CDF30 ; =0x021CF6A0
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
_020CDF30: .word 0x021CF6A0
	arm_func_end sub_020CDF24

	arm_func_start sub_020CDF34
sub_020CDF34: ; 0x020CDF34
	ldr r0, _020CDF4C ; =0x021CF6A0
	ldrh r0, [r0]
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	bx lr
	; .align 2, 0
_020CDF4C: .word 0x021CF6A0
	arm_func_end sub_020CDF34

	arm_func_start sub_020CDF50
sub_020CDF50: ; 0x020CDF50
	stmfd sp!, {r3, lr}
	bl sub_020CDF34
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _020CDF94 ; =0x021CF6A0
	mov r1, #2
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	bl sub_020C2C1C
	ldr r0, _020CDF94 ; =0x021CF6A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #1
	movls r0, #3
	movhi r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CDF94: .word 0x021CF6A0
	arm_func_end sub_020CDF50

	arm_func_start sub_020CDF98
sub_020CDF98: ; 0x020CDF98
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	bl sub_020CDF34
	cmp r0, #0
	ldmneia sp!, {r3, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, _020CE028 ; =0x021CF6A0
	mov r1, #2
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	bl sub_020C2C1C
	ldr r0, _020CE028 ; =0x021CF6A0
	ldr r3, [sp, #8]
	ldr r0, [r0, #4]
	add r1, sp, #8
	ldr r2, [r0, #4]
	bic r0, r1, #3
	add ip, r0, #4
	ldrh lr, [r2]
	cmp r3, #0
	mov r0, #3
	ldmeqia sp!, {r3, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r1, #0
_020CE000:
	add ip, ip, #4
	ldr r2, [ip, #-4]
	cmp r2, lr
	moveq r0, r1
	sub r3, r3, #1
	str r3, [sp, #8]
	bne _020CE000
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020CE028: .word 0x021CF6A0
	arm_func_end sub_020CDF98

	arm_func_start sub_020CE02C
sub_020CE02C: ; 0x020CE02C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r0, _020CE3C4 ; =0x021CF6A0
	cmp r2, #0
	ldr r4, [r0, #4]
	mov sl, r1
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x10]
	mov r1, #0x100
	bl sub_020C2C1C
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _020CE070
	ldr r0, [r4, #4]
	mov r1, #0x800
	bl sub_020C2C1C
_020CE070:
	ldr r0, [r4, #0x10]
	cmp sl, r0
	beq _020CE088
	mov r0, sl
	mov r1, #0x100
	bl sub_020C2C1C
_020CE088:
	ldrh r0, [sl]
	cmp r0, #0x2c
	blo _020CE140
	cmp r0, #0x80
	bne _020CE0C4
	ldrh r0, [sl, #2]
	cmp r0, #0x13
	bne _020CE0AC
	bl sub_020C42A8
_020CE0AC:
	ldr r1, [r4, #0xc8]
	cmp r1, #0
	beq _020CE384
	mov r0, sl
	blx r1
	b _020CE384
_020CE0C4:
	cmp r0, #0x82
	bne _020CE118
	ldrh r0, [sl, #6]
	add r1, r4, r0, lsl #2
	ldr r0, [r1, #0xcc]
	cmp r0, #0
	beq _020CE384
	ldr r0, [r1, #0x10c]
	str r0, [sl, #0x1c]
	ldr r0, [r4, #0x14c]
	strh r0, [sl, #0x22]
	ldr r1, [r4, #4]
	ldr r0, [sl, #8]
	ldrh r1, [r1, #0x72]
	bl sub_020C2C1C
	ldrh r1, [sl, #6]
	mov r0, sl
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0xcc]
	blx r1
	b _020CE384
_020CE118:
	cmp r0, #0x81
	bne _020CE384
	mov r0, #0xf
	strh r0, [sl]
	ldr r1, [sl, #0x1c]
	cmp r1, #0
	beq _020CE384
	mov r0, sl
	blx r1
	b _020CE384
_020CE140:
	cmp r0, #0xe
	bne _020CE180
	ldrh r0, [sl, #4]
	add r0, r0, #0xf5
	add r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _020CE180
	ldrh r0, [sl, #2]
	cmp r0, #0
	bne _020CE180
	ldr r1, [r4, #4]
	ldr r0, [sl, #8]
	ldrh r1, [r1, #0x72]
	bl sub_020C2C1C
_020CE180:
	ldrh r1, [sl]
	cmp r1, #2
	ldreqh r0, [sl, #2]
	cmpeq r0, #0
	add r0, r4, r1, lsl #2
	bne _020CE1BC
	ldr r4, [r0, #0x18]
	bl sub_020CDD28
	cmp r4, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	blx r4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CE1BC:
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _020CE1E4
	mov r0, sl
	blx r1
	ldr r0, _020CE3C4 ; =0x021CF6A0
	ldrh r0, [r0]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CE1E4:
	ldrh r0, [sl]
	cmp r0, #8
	cmpne r0, #0xc
	bne _020CE384
	cmp r0, #8
	bne _020CE228
	add r0, sl, #0xa
	str r0, [sp]
	ldrh r5, [sl, #8]
	ldrh r6, [sl, #0x10]
	ldrh r0, [sl, #0x12]
	add fp, sl, #0x14
	mov r7, #0
	str r0, [sp, #4]
	ldrh r8, [sl, #0x2c]
	ldrh sb, [sl, #0x2e]
	b _020CE258
_020CE228:
	cmp r0, #0xc
	bne _020CE258
	ldrh r5, [sl, #8]
	ldrh r7, [sl, #0xa]
	ldrh r0, [sl, #0xc]
	mov r6, #0
	mov fp, r6
	str r0, [sp, #4]
	add r0, sl, #0x10
	ldrh r8, [sl, #0x16]
	ldrh sb, [sl, #0x18]
	str r0, [sp]
_020CE258:
	cmp r5, #7
	cmpne r5, #9
	cmpne r5, #0x1a
	bne _020CE384
	cmp r5, #7
	ldreq r1, [r4, #0x14c]
	mov r0, #1
	orreq r0, r1, r0, lsl r6
	mvnne r0, r0, lsl r6
	ldrne r1, [r4, #0x14c]
	add r3, r4, #0x100
	andne r0, r1, r0
	str r0, [r4, #0x14c]
	ldr r0, _020CE3C8 ; =0x021CF6F0
	mov r1, #0
	mov r2, #0x44
	strh r7, [r3, #0x50]
	bl sub_020C4CF4
	ldr ip, _020CE3C4 ; =0x021CF6A0
	mov r1, #0x82
	strh r1, [ip, #0x50]
	mov r1, #0
	strh r1, [ip, #0x52]
	strh r5, [ip, #0x54]
	str r1, [ip, #0x58]
	str r1, [ip, #0x5c]
	strh r1, [ip, #0x60]
	strh r6, [ip, #0x62]
	strh r7, [ip, #0x70]
	ldr r2, [r4, #0x14c]
	ldr r1, _020CE3CC ; =0x0000FFFF
	strh r2, [ip, #0x72]
	strh r1, [ip, #0x6a]
	ldr r3, [sp, #4]
	ldr r0, [sp]
	ldr r1, _020CE3D0 ; =0x021CF704
	mov r2, #6
	strh r3, [ip, #0x8c]
	bl sub_020C4DB0
	cmp fp, #0
	mov r2, #0x18
	beq _020CE310
	ldr r1, _020CE3D4 ; =0x021CF714
	mov r0, fp
	bl sub_020C4B18
	b _020CE31C
_020CE310:
	ldr r1, _020CE3D4 ; =0x021CF714
	mov r0, #0
	bl sub_020C4AF0
_020CE31C:
	cmp r7, #0
	moveq r1, r8
	movne r1, sb
	cmp r7, #0
	ldr r0, _020CE3C4 ; =0x021CF6A0
	ldr r7, _020CE3C4 ; =0x021CF6A0
	strh r1, [r0, #0x90]
	movne sb, r8
	ldr r5, _020CE3C8 ; =0x021CF6F0
	mov r6, #0
	strh sb, [r7, #0x92]
_020CE348:
	strh r6, [r7, #0x56]
	add r2, r4, r6, lsl #2
	ldr r0, [r2, #0xcc]
	cmp r0, #0
	beq _020CE370
	ldr r1, [r2, #0x10c]
	mov r0, r5
	str r1, [r7, #0x6c]
	ldr r1, [r2, #0xcc]
	blx r1
_020CE370:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, #0x10
	blo _020CE348
_020CE384:
	ldr r0, [r4, #0x10]
	mov r1, #0x100
	bl sub_020C2C1C
	bl sub_020CE3D8
	ldr r0, [r4, #0x10]
	cmp sl, r0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r2, [sl]
	mov r0, sl
	mov r1, #0x100
	orr r2, r2, #0x8000
	strh r2, [sl]
	bl sub_020C2C38
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CE3C4: .word 0x021CF6A0
_020CE3C8: .word 0x021CF6F0
_020CE3CC: .word 0x0000FFFF
_020CE3D0: .word 0x021CF704
_020CE3D4: .word 0x021CF714
	arm_func_end sub_020CE02C

	arm_func_start sub_020CE3D8
sub_020CE3D8: ; 0x020CE3D8
	ldr r1, _020CE3F0 ; =0x027FFF96
	ldrh r0, [r1]
	tst r0, #1
	bicne r0, r0, #1
	strneh r0, [r1]
	bx lr
	; .align 2, 0
_020CE3F0: .word 0x027FFF96
	arm_func_end sub_020CE3D8

	arm_func_start sub_020CE3F4
sub_020CE3F4: ; 0x020CE3F4
	stmfd sp!, {r3, lr}
	bl sub_020CDF34
	cmp r0, #0
	movne r0, #0
	ldreq r0, _020CE414 ; =0x021CF6A0
	ldreq r0, [r0, #4]
	ldreq r0, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CE414: .word 0x021CF6A0
	arm_func_end sub_020CE3F4

	arm_func_start sub_020CE418
sub_020CE418: ; 0x020CE418
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020CE444 ; =0x021CF6A0
	ldr r1, [r1, #4]
	cmp r1, #0
	addne r1, r1, #0x100
	ldrneh r4, [r1, #0x50]
	moveq r4, #0
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CE444: .word 0x021CF6A0
	arm_func_end sub_020CE418

	arm_func_start sub_020CE448
sub_020CE448: ; 0x020CE448
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020CE474 ; =0x021CF6A0
	ldr r1, [r1, #4]
	cmp r1, #0
	ldrne r4, [r1, #0x14c]
	moveq r4, #0
	bl sub_020C3DAC
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CE474: .word 0x021CF6A0
	arm_func_end sub_020CE448

	arm_func_start sub_020CE478
sub_020CE478: ; 0x020CE478
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_020C3D98
	mov r5, r0
	bl sub_020CDF34
	mov r4, r0
	beq _020CE4A4
	mov r0, r5
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_020CE4A4:
	bl sub_020CDF24
	str r6, [r0, #0xc8]
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020CE478

	arm_func_start sub_020CE4BC
sub_020CE4BC: ; 0x020CE4BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	mov r5, r1
	mov r6, r0
	mov r4, r2
	beq _020CE524
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x44
	bl sub_020C4CF4
	mov r3, #0
	ldr r1, _020CE590 ; =0x0000FFFF
	mov r7, #0x82
	mov r2, #0x19
	add r0, sp, #0x14
	strh r7, [sp]
	strh r3, [sp, #2]
	strh r2, [sp, #4]
	strh r6, [sp, #6]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	strh r3, [sp, #0x10]
	strh r1, [sp, #0x1a]
	str r4, [sp, #0x1c]
	strh r3, [sp, #0x12]
	bl sub_020C3FA0
_020CE524:
	bl sub_020C3D98
	mov r8, r0
	bl sub_020CDF34
	mov r7, r0
	beq _020CE54C
	mov r0, r8
	bl sub_020C3DAC
	add sp, sp, #0x44
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CE54C:
	bl sub_020CDF24
	add r0, r0, r6, lsl #2
	str r5, [r0, #0xcc]
	str r4, [r0, #0x10c]
	cmp r5, #0
	beq _020CE57C
	bl sub_020CE448
	strh r0, [sp, #0x22]
	bl sub_020CE418
	strh r0, [sp, #0x20]
	add r0, sp, #0
	blx r5
_020CE57C:
	mov r0, r8
	bl sub_020C3DAC
	mov r0, #0
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020CE590: .word 0x0000FFFF
	arm_func_end sub_020CE4BC

	arm_func_start sub_020CE594
sub_020CE594: ; 0x020CE594
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020CDF24
	mov r4, r0
	bl sub_020CDF34
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	mov r1, #0x7d0
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	mov r1, r5
	mov r2, #0x7d0
	bl sub_020C4C14
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CE594

	arm_func_start sub_020CE5E0
sub_020CE5E0: ; 0x020CE5E0
	stmfd sp!, {r4, lr}
	bl sub_020CDF24
	mov r4, r0
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl sub_020CDF98
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl sub_020C2C1C
	ldr r1, [r4, #4]
	ldr r0, [r1, #0xc]
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r1, #0x3c
	mov r1, #4
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x3c]
	add r0, r0, #0x1f
	bic r0, r0, #0x1f
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CE5E0

	arm_func_start sub_020CE64C
sub_020CE64C: ; 0x020CE64C
	stmfd sp!, {r3, r4, r5, lr}
	bl sub_020CDF24
	mov r4, r0
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl sub_020CDF98
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl sub_020C2C1C
	ldr r1, [r4, #4]
	ldr r0, [r1, #0xc]
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r1, #0x188
	mov r1, #2
	bl sub_020C2C1C
	ldr r1, [r4, #4]
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	moveq r5, #1
	add r0, r1, #0x3e
	mov r1, #2
	movne r5, #0
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	cmp r5, #1
	ldrh r5, [r0, #0x3e]
	addne r0, r5, #0x51
	bicne r0, r0, #0x1f
	movne r0, r0, lsl #1
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r0, #0xf8
	mov r1, #2
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	add r1, r5, #0xc
	ldrh r0, [r0, #0xf8]
	mul r0, r1, r0
	add r0, r0, #0x29
	bic r0, r0, #0x1f
	mov r0, r0, lsl #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CE64C

	arm_func_start sub_020CE710
sub_020CE710: ; 0x020CE710
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x3c
	mov r5, r0
	mov r4, r1
	bl sub_020CDF24
	mov r6, r0
	bl sub_020CDF34
	cmp r0, #0
	addne sp, sp, #0x3c
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	cmp r4, #1
	blo _020CE74C
	cmp r4, #0xf
	bls _020CE758
_020CE74C:
	add sp, sp, #0x3c
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_020CE758:
	ldr r0, [r6, #4]
	mov r1, #2
	add r0, r0, #0x82
	add r0, r0, #0x100
	bl sub_020C2C1C
	ldr r0, [r6, #4]
	mov r1, #1
	add r0, r0, #0x100
	ldrh r0, [r0, #0x82]
	tst r0, r1, lsl r4
	addeq sp, sp, #0x3c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0x3c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	add r0, r5, #0xa
	str r0, [sp]
	mov r3, #0
	add r2, sp, #0
_020CE7B0:
	ldr r0, [r2, r3, lsl #2]
	ldrh r1, [r0, #4]
	cmp r4, r1
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	add r3, r3, #1
	add r0, r2, r3, lsl #2
	ldrh r1, [r5, #6]
	ldr r0, [r0, #-4]
	add r0, r1, r0
	str r0, [r2, r3, lsl #2]
	ldrh r0, [r5, #4]
	cmp r3, r0
	blt _020CE7B0
	mov r0, #0
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_020CE710

	arm_func_start sub_020CE7F4
sub_020CE7F4: ; 0x020CE7F4
	stmfd sp!, {r3, lr}
	bl sub_020CDF34
	cmp r0, #0
	movne r0, #0x8000
	ldreq r0, _020CE810 ; =0x027FFCFA
	ldreqh r0, [r0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CE810: .word 0x027FFCFA
	arm_func_end sub_020CE7F4

	arm_func_start sub_020CE814
sub_020CE814: ; 0x020CE814
	stmfd sp!, {r4, lr}
	bl sub_020CDF24
	mov r4, r0
	bl sub_020CDF34
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_020C2C1C
	ldr r1, [r4, #4]
	ldrh r0, [r1]
	cmp r0, #9
	beq _020CE85C
	cmp r0, #0xa
	cmpne r0, #0xb
	beq _020CE884
	b _020CE89C
_020CE85C:
	add r0, r1, #0x82
	add r0, r0, #0x100
	mov r1, #2
	bl sub_020C2C1C
	ldr r1, [r4, #4]
	add r0, r1, #0x100
	ldrh r0, [r0, #0x82]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_020CE884:
	add r0, r1, #0xbc
	mov r1, #2
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0xbc]
	ldmia sp!, {r4, pc}
_020CE89C:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CE814

	arm_func_start sub_020CE8A4
sub_020CE8A4: ; 0x020CE8A4
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl sub_020C3FA0
	mov r2, #0
	add r3, sp, #0
	mov r1, r2
_020CE8C0:
	ldrb r0, [r3], #1
	add r2, r2, #1
	cmp r2, #6
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	blt _020CE8C0
	ldr r0, _020CE92C ; =0x027FFC3C
	ldr ip, _020CE930 ; =0x66666667
	ldr r0, [r0, #0]
	mov r3, #0x14
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	rsb r0, r0, r0, lsl #3
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r1, r2, lsr #0x1f
	smull r2, lr, ip, r2
	add lr, r1, lr, asr #3
	smull r1, r2, r3, lr
	rsb lr, r1, r0, lsr #16
	add r0, lr, #0xc8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CE92C: .word 0x027FFC3C
_020CE930: .word 0x66666667
	arm_func_end sub_020CE8A4

	arm_func_start sub_020CE934
sub_020CE934: ; 0x020CE934
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl sub_020C3FA0
	mov r1, #0
	add r3, sp, #0
	mov r2, r1
_020CE950:
	ldrb r0, [r3], #1
	add r1, r1, #1
	cmp r1, #6
	add r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	blt _020CE950
	ldr r0, _020CE9C0 ; =0x027FFC3C
	mov r1, #0xd
	ldr r0, [r0, #0]
	ldr r3, _020CE9C4 ; =0x66666667
	add r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mul r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r1, r2, lsr #0x1f
	smull r2, ip, r3, r2
	add ip, r1, ip, asr #2
	mov r3, #0xa
	smull r1, r2, r3, ip
	rsb ip, r1, r0, lsr #16
	add r0, ip, #0x1e
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CE9C0: .word 0x027FFC3C
_020CE9C4: .word 0x66666667
	arm_func_end sub_020CE934

	arm_func_start sub_020CE9C8
sub_020CE9C8: ; 0x020CE9C8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x84
	ldrh r2, [r1, #0x3c]
	mov lr, r0
	cmp r2, #0
	beq _020CEA10
	mov r0, #0
	add r5, sp, #0
	strb r0, [sp]
	mov r4, #8
_020CE9F0:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	sub r4, r4, #1
	bne _020CE9F0
	ldr r0, [r5, #0]
	add sp, sp, #0x84
	str r0, [lr]
	ldmia sp!, {r3, r4, r5, r6, pc}
_020CEA10:
	ldrh r0, [r1, #0x3e]
	strb r0, [sp]
	and r0, r0, #0xff
	bne _020CEA48
	add r5, sp, #0
	mov r4, #8
_020CEA28:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	sub r4, r4, #1
	bne _020CEA28
	ldr r0, [r5, #0]
	add sp, sp, #0x84
	str r0, [lr]
	ldmia sp!, {r3, r4, r5, r6, pc}
_020CEA48:
	cmp r0, #0x10
	movhi r0, #0x10
	strhib r0, [sp]
	ldrh r2, [r1]
	ldrb r0, [sp]
	mov r3, #0
	mov r2, r2, lsl #1
	sub r4, r2, #0x40
	cmp r0, #0
	add r0, r1, #0x40
	mov r2, r3
	and r1, r4, #0xff
	ble _020CEAF8
	add ip, sp, #0
_020CEA80:
	ldrb r5, [r0]
	add r6, ip, r2, lsl #3
	add r4, r0, #2
	strb r5, [r6, #4]
	ldrb r5, [r0, #1]
	strb r5, [r6, #5]
	str r4, [r6, #8]
	ldrb r4, [r6, #5]
	add r4, r4, #2
	and r5, r4, #0xff
	add r3, r3, r5
	and r3, r3, #0xff
	cmp r3, r1
	bls _020CEAE4
	mov r0, #0
	strb r0, [sp]
	mov r4, #8
_020CEAC4:
	ldmia ip!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	sub r4, r4, #1
	bne _020CEAC4
	ldr r0, [ip]
	add sp, sp, #0x84
	str r0, [lr]
	ldmia sp!, {r3, r4, r5, r6, pc}
_020CEAE4:
	ldrb r4, [sp]
	add r2, r2, #1
	add r0, r0, r5
	cmp r2, r4
	blt _020CEA80
_020CEAF8:
	add r4, sp, #0
	mov ip, #8
_020CEB00:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	sub ip, ip, #1
	bne _020CEB00
	ldr r0, [r4, #0]
	str r0, [lr]
	add sp, sp, #0x84
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_020CE9C8

	arm_func_start sub_020CEB20
sub_020CEB20: ; 0x020CEB20
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _020CEB90 ; =0x02101484
	ldr r0, [r0, #0]
	cmp r0, #0x10000
	bne _020CEB68
	bl sub_020CB8A8
	add r0, sp, #0
	bl sub_020CBA30
	cmp r0, #0
	bne _020CEB68
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, _020CEB90 ; =0x02101484
	add r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
_020CEB68:
	ldr r1, _020CEB90 ; =0x02101484
	ldr r0, [r1, #0]
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r2, lsl #0x10
	str r2, [r1, #0]
	mov r0, r0, lsr #0x10
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_020CEB90: .word 0x02101484
	arm_func_end sub_020CEB20

	arm_func_start sub_020CEB94
sub_020CEB94: ; 0x020CEB94
	ldr ip, _020CEBA0 ; =sub_020CEBA4
	mov r1, #0
	bx ip
	; .align 2, 0
_020CEBA0: .word sub_020CEBA4
	arm_func_end sub_020CEB94

	arm_func_start sub_020CEBA4
sub_020CEBA4: ; 0x020CEBA4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #0
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #3
	bl sub_020CDD98
	bl sub_020CDF24
	mov r3, r0
	ldr r1, [r3, #0x10]
	mov r0, #3
	stmia sp, {r1, r4}
	mov r1, #4
	ldmia r3, {r2, r3}
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CEBA4

	arm_func_start sub_020CEC08
sub_020CEC08: ; 0x020CEC08
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, r0
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #4
	bl sub_020CDD98
	mov r0, #4
	mov r1, #0
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CEC08

	arm_func_start sub_020CEC48
sub_020CEC48: ; 0x020CEC48
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, r0
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #5
	bl sub_020CDD98
	mov r0, #5
	mov r1, #0
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CEC48

	arm_func_start sub_020CEC88
sub_020CEC88: ; 0x020CEC88
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #2
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #6
	bl sub_020CDD98
	mov r0, #6
	mov r1, #0
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CEC88

	arm_func_start sub_020CECC8
sub_020CECC8: ; 0x020CECC8
	ldr ip, _020CECD4 ; =sub_020CECF0
	mov r3, #0
	bx ip
	; .align 2, 0
_020CECD4: .word sub_020CECF0
	arm_func_end sub_020CECC8

	arm_func_start sub_020CECD8
sub_020CECD8: ; 0x020CECD8
	ldr ip, _020CECEC ; =sub_020CECF0
	cmp r3, #0
	mov r3, #1
	orreq r3, r3, #2
	bx ip
	; .align 2, 0
_020CECEC: .word sub_020CECF0
	arm_func_end sub_020CECD8

	arm_func_start sub_020CECF0
sub_020CECF0: ; 0x020CECF0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r1, r2
	mov r4, r3
	bl sub_020CDB18
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #0
	bl sub_020CDD98
	bl sub_020CDF24
	mov r3, r0
	ldr r1, [r3, #0x10]
	mov r0, #0
	stmia sp, {r1, r4}
	mov r1, #4
	ldmia r3, {r2, r3}
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CECF0

	arm_func_start sub_020CED50
sub_020CED50: ; 0x020CED50
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020CDF50
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #1
	bl sub_020CDD98
	mov r0, #1
	mov r1, #0
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CED50

	arm_func_start sub_020CED88
sub_020CED88: ; 0x020CED88
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #2
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #2
	bl sub_020CDD98
	mov r0, #2
	mov r1, #0
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CED88

	arm_func_start sub_020CEDC8
sub_020CEDC8: ; 0x020CEDC8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #2
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _020CEE10
	ldr r0, [r4, #0]
	cmp r0, #0
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
_020CEE10:
	ldrh r1, [r4, #0x14]
	ldrh r0, [r4, #0x34]
	cmp r1, #0
	movne r2, #0x2a
	moveq r2, #0
	add r0, r0, r2
	cmp r0, #0x200
	bgt _020CEE4C
	ldrh r0, [r4, #0x36]
	cmp r1, #0
	movne r1, #6
	moveq r1, #0
	add r0, r0, r1
	cmp r0, #0x200
	ble _020CEE54
_020CEE4C:
	mov r0, #6
	ldmia sp!, {r3, r4, r5, pc}
_020CEE54:
	mov r0, r4
	bl sub_020CEEA4
	mov r1, r5
	mov r0, #7
	bl sub_020CDD98
	mov r0, r4
	mov r1, #0x40
	bl sub_020C2C38
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _020CEE88
	ldr r0, [r4, #0]
	bl sub_020C2C38
_020CEE88:
	mov r2, r4
	mov r0, #7
	mov r1, #1
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CEDC8

	arm_func_start sub_020CEEA4
sub_020CEEA4: ; 0x020CEEA4
	ldrh r1, [r0, #4]
	cmp r1, #0x70
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #0x18]
	cmp r1, #0xa
	blo _020CEEC8
	cmp r1, #0x3e8
	bls _020CEED0
_020CEEC8:
	mov r0, #0
	bx lr
_020CEED0:
	ldrh r0, [r0, #0x32]
	cmp r0, #1
	blo _020CEEE4
	cmp r0, #0xe
	bls _020CEEEC
_020CEEE4:
	mov r0, #0
	bx lr
_020CEEEC:
	mov r0, #1
	bx lr
	arm_func_end sub_020CEEA4

	arm_func_start sub_020CEEF4
sub_020CEEF4: ; 0x020CEEF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #2
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl sub_020CDF24
	add r1, r0, #0x100
	mov r2, #0
	strh r2, [r1, #0x50]
	str r2, [r0, #0x14c]
	mov r1, r5
	mov r0, #8
	bl sub_020CDD98
	mov r2, r4
	mov r0, #8
	mov r1, #1
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CEEF4

	arm_func_start sub_020CEF50
sub_020CEF50: ; 0x020CEF50
	ldr ip, _020CEF5C ; =sub_020CEEF4
	mov r1, #1
	bx ip
	; .align 2, 0
_020CEF5C: .word sub_020CEEF4
	arm_func_end sub_020CEF50

	arm_func_start sub_020CEF60
sub_020CEF60: ; 0x020CEF60
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #7
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #9
	bl sub_020CDD98
	mov r0, #9
	mov r1, #0
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CEF60

	arm_func_start sub_020CEFA0
sub_020CEFA0: ; 0x020CEFA0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #3
	mov r4, r1
	mov r2, r0
	mov r1, #2
	mov r3, #5
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	addeq sp, sp, #0x10
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #1
	blo _020CF008
	cmp r0, #0xe
	bls _020CF014
_020CF008:
	add sp, sp, #0x10
	mov r0, #6
	ldmia sp!, {r3, r4, r5, pc}
_020CF014:
	mov r1, r5
	mov r0, #0xa
	bl sub_020CDD98
	mov r0, #0xa
	strh r0, [sp]
	ldrh r2, [r4, #4]
	add r0, sp, #0
	mov r1, #0x10
	strh r2, [sp, #2]
	ldr r2, [r4, #0]
	str r2, [sp, #4]
	ldrh r2, [r4, #6]
	strh r2, [sp, #8]
	ldrb r2, [r4, #8]
	strb r2, [sp, #0xa]
	ldrb r2, [r4, #9]
	strb r2, [sp, #0xb]
	ldrb r2, [r4, #0xa]
	strb r2, [sp, #0xc]
	ldrb r2, [r4, #0xb]
	strb r2, [sp, #0xd]
	ldrb r2, [r4, #0xc]
	strb r2, [sp, #0xe]
	ldrb r2, [r4, #0xd]
	strb r2, [sp, #0xf]
	bl sub_020CDEB4
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CEFA0

	arm_func_start sub_020CF08C
sub_020CF08C: ; 0x020CF08C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x3c
	mov r5, r0
	mov r0, #3
	mov r4, r1
	mov r2, r0
	mov r1, #2
	mov r3, #5
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #0x3c
	ldmneia sp!, {r4, r5, pc}
	cmp r4, #0
	addeq sp, sp, #0x3c
	moveq r0, #6
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r4, #0]
	cmp r0, #0
	addeq sp, sp, #0x3c
	moveq r0, #6
	ldmeqia sp!, {r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #0x400
	addhi sp, sp, #0x3c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, pc}
	ldrh r0, [r4, #0x12]
	cmp r0, #0x20
	addhi sp, sp, #0x3c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, pc}
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	cmpne r0, #3
	addne sp, sp, #0x3c
	movne r0, #6
	ldmneia sp!, {r4, r5, pc}
	add r0, r0, #0xfe
	add r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _020CF154
	ldrh r0, [r4, #0x34]
	cmp r0, #0x20
	addhi sp, sp, #0x3c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, pc}
_020CF154:
	mov r1, r5
	mov r0, #0x26
	bl sub_020CDD98
	mov r0, #0x26
	strh r0, [sp]
	ldrh r2, [r4, #6]
	add r1, sp, #0xc
	add r0, r4, #0xa
	strh r2, [sp, #2]
	ldr r3, [r4, #0]
	mov r2, #6
	str r3, [sp, #4]
	ldrh r3, [r4, #4]
	strh r3, [sp, #8]
	ldrh r3, [r4, #8]
	strh r3, [sp, #0xa]
	bl sub_020C4DB0
	ldrh r2, [r4, #0x10]
	add r1, sp, #0x16
	add r0, r4, #0x14
	strh r2, [sp, #0x12]
	ldrh r3, [r4, #0x34]
	mov r2, #0x20
	strh r3, [sp, #0x36]
	ldrh r3, [r4, #0x12]
	strh r3, [sp, #0x14]
	bl sub_020C4DB0
	add r0, sp, #0
	mov r1, #0x3c
	bl sub_020CDEB4
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, pc}
	arm_func_end sub_020CF08C

	arm_func_start sub_020CF1DC
sub_020CF1DC: ; 0x020CF1DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #5
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #0xb
	bl sub_020CDD98
	mov r0, #0xb
	mov r1, #0
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CF1DC

	arm_func_start sub_020CF21C
sub_020CF21C: ; 0x020CF21C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r7, r0
	mov r6, r1
	mov r0, #1
	mov r1, #2
	mov r5, r2
	mov r4, r3
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #0x28
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	addeq sp, sp, #0x28
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6]
	mov r0, r6
	mov r1, r1, lsl #1
	bl sub_020C2C38
	bl sub_020CDF24
	add r1, r0, #0x100
	mov r2, #0
	strh r2, [r1, #0x50]
	str r2, [r0, #0x14c]
	mov r1, r7
	mov r0, #0xc
	bl sub_020CDD98
	mov r0, #0xc
	strh r0, [sp]
	str r6, [sp, #4]
	cmp r5, #0
	mov r2, #0x18
	beq _020CF2B4
	add r1, sp, #8
	mov r0, r5
	bl sub_020C4DB0
	b _020CF2C0
_020CF2B4:
	add r0, sp, #8
	mov r1, #0
	bl sub_020C4CF4
_020CF2C0:
	ldrh r2, [sp, #0x40]
	add r0, sp, #0
	mov r1, #0x28
	str r4, [sp, #0x20]
	strh r2, [sp, #0x26]
	bl sub_020CDEB4
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020CF21C

	arm_func_start sub_020CF2E8
sub_020CF2E8: ; 0x020CF2E8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl sub_020CDF24
	mov r1, #0xa
	mov r6, r0
	str r1, [sp]
	mov ip, #0xb
	mov r0, #5
	mov r1, #7
	mov r2, #9
	mov r3, #8
	str ip, [sp, #4]
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldrh r0, [r1]
	cmp r0, #7
	cmpne r0, #9
	bne _020CF394
	cmp r4, #1
	blo _020CF354
	cmp r4, #0xf
	bls _020CF360
_020CF354:
	add sp, sp, #8
	mov r0, #6
	ldmia sp!, {r4, r5, r6, pc}
_020CF360:
	add r0, r1, #0x82
	add r0, r0, #0x100
	mov r1, #2
	bl sub_020C2C1C
	ldr r0, [r6, #4]
	mov r1, #1
	add r0, r0, #0x100
	ldrh r0, [r0, #0x82]
	tst r0, r1, lsl r4
	bne _020CF3A4
	add sp, sp, #8
	mov r0, #7
	ldmia sp!, {r4, r5, r6, pc}
_020CF394:
	cmp r4, #0
	addne sp, sp, #8
	movne r0, #6
	ldmneia sp!, {r4, r5, r6, pc}
_020CF3A4:
	mov r1, r5
	mov r0, #0xd
	bl sub_020CDD98
	mov r1, #1
	mov r2, r1, lsl r4
	mov r0, #0xd
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020CF2E8

	arm_func_start sub_020CF3D0
sub_020CF3D0: ; 0x020CF3D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x40
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl sub_020CDF24
	ldr r4, [r0, #4]
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #0x40
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r4, #0x188
	mov r1, #2
	bl sub_020C2C1C
	add r0, r4, #0xc6
	mov r1, #2
	bl sub_020C2C1C
	add r0, r4, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	ldrneh r0, [r4, #0xc6]
	cmpne r0, #1
	addne sp, sp, #0x40
	movne r0, #3
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r4, #0xc
	mov r1, #4
	bl sub_020C2C1C
	ldr r0, [r4, #0xc]
	cmp r0, #1
	addeq sp, sp, #0x40
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	tst r6, #0x3f
	addne sp, sp, #0x40
	movne r0, #6
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrh sb, [sp, #0x60]
	tst sb, #0x1f
	addne sp, sp, #0x40
	movne r0, #6
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r4, #0x9c
	mov r1, #2
	bl sub_020C2C1C
	ldrh r0, [r4, #0x9c]
	cmp r0, #0
	bne _020CF4C8
	bl sub_020CE64C
	cmp r6, r0
	addlt sp, sp, #0x40
	movlt r0, #6
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bl sub_020CE5E0
	cmp sb, r0
	addlt sp, sp, #0x40
	movlt r0, #6
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020CF4C8:
	mov r1, r8
	mov r0, #0xe
	bl sub_020CDD98
	add r1, sp, #0
	mov r0, #0
	mov r2, #0x40
	bl sub_020C4B4C
	mov r4, r6, lsr #1
	ldrh r3, [sp, #0x60]
	mov r6, #0xe
	add r1, sp, #0x14
	mov r0, #0
	mov r2, #0x1c
	strh r6, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_020C4B4C
	ldr r0, [sp, #0x64]
	add r1, sp, #0x30
	mov r2, #0x10
	bl sub_020C4B68
	add r0, sp, #0
	mov r1, #0x40
	bl sub_020CDEB4
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020CF3D0

	arm_func_start sub_020CF540
sub_020CF540: ; 0x020CF540
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r7, r1
	mov r8, r0
	mov r6, r2
	add r1, sp, #8
	mov r0, #0
	mov r2, #0x10
	mov r5, r3
	ldr r4, [sp, #0x34]
	bl sub_020C4B4C
	ldr r1, [sp, #0x48]
	ldrh ip, [sp, #0x38]
	ldr r0, [sp, #0x44]
	ldr lr, _020CF5E0 ; =0x00001E03
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	strb r1, [sp, #0x16]
	cmp r0, #0
	cmpne r4, #0
	strb r3, [sp, #0x14]
	strb r2, [sp, #0x15]
	ldrh r1, [sp, #0x30]
	str lr, [sp, #8]
	orrne r0, lr, #4
	strne r0, [sp, #8]
	strh ip, [sp, #0x12]
	strh r4, [sp, #0xc]
	strh r4, [sp, #0xe]
	strneh r4, [sp, #0x10]
	str r1, [sp]
	add r4, sp, #8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r4, [sp, #4]
	bl sub_020CF3D0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020CF5E0: .word 0x00001E03
	arm_func_end sub_020CF540

	arm_func_start sub_020CF5E4
sub_020CF5E4: ; 0x020CF5E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r6, r1
	mov r7, r0
	mov r5, r2
	add r1, sp, #8
	mov r0, #0
	mov r2, #0x10
	mov r4, r3
	bl sub_020C4B4C
	ldrh ip, [sp, #0x34]
	mov r0, #3
	str r0, [sp, #8]
	ldrh lr, [sp, #0x30]
	strh ip, [sp, #0xc]
	strh ip, [sp, #0xe]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	add ip, sp, #8
	str lr, [sp]
	str ip, [sp, #4]
	bl sub_020CF3D0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020CF5E4

	arm_func_start sub_020CF64C
sub_020CF64C: ; 0x020CF64C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r4, #1
	bl sub_020CDF24
	ldr r5, [r0, #4]
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r0, r5, #0x188
	mov r1, #2
	bl sub_020C2C1C
	add r0, r5, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	bne _020CF6CC
	add r0, r5, #0x82
	add r0, r0, #0x100
	mov r1, #2
	bl sub_020C2C1C
	add r2, r5, #0x100
	add r0, r5, #0x86
	mov r1, #2
	ldrh r4, [r2, #0x82]
	bl sub_020C2C1C
_020CF6CC:
	cmp r7, #0
	addeq sp, sp, #0x14
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r4, #0
	addeq sp, sp, #0x14
	moveq r0, #7
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r0, r5, #0x7c
	mov r1, #2
	bl sub_020C2C1C
	ldr r0, [r5, #0x7c]
	cmp r7, r0
	addeq sp, sp, #0x14
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0x200
	addhi sp, sp, #0x14
	movhi r0, #6
	ldmhiia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0
	addeq sp, sp, #0x14
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, r7
	mov r1, r6
	bl sub_020C2C38
	ldrh r2, [sp, #0x30]
	ldrh r1, [sp, #0x34]
	ldrh r0, [sp, #0x38]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str sb, [sp, #0xc]
	mov r2, r7
	mov r3, r6
	mov r0, #0xf
	mov r1, #7
	str r8, [sp, #0x10]
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020CF64C

	arm_func_start sub_020CF77C
sub_020CF77C: ; 0x020CF77C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020CDF24
	mov r4, r0
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #0x10
	bl sub_020CDD98
	mov r0, #0x10
	mov r1, #0
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CF77C

	arm_func_start sub_020CF7EC
sub_020CF7EC: ; 0x020CF7EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl sub_020CDF24
	mov r4, r0
	mov r0, #1
	mov r1, #8
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0x10
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #1
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	movlo r0, #6
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl sub_020C2C38
	mov r1, r7
	mov r0, #0x11
	bl sub_020CDD98
	mov r2, r6
	mov r3, r5
	mov r0, #0x11
	mov r1, #2
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020CF7EC

	arm_func_start sub_020CF88C
sub_020CF88C: ; 0x020CF88C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020CDF24
	mov r8, r0
	mov r0, #1
	mov r1, #0xb
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #4]
	mov r1, #4
	add r0, r0, #0x10
	bl sub_020C2C1C
	ldr r0, [r8, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020CF954 ; =0x000005E4
	cmp r4, r0
	addhi sp, sp, #0x10
	movhi r0, #6
	ldmhiia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r4
	bl sub_020C2C38
	mov r1, r7
	mov r0, #0x12
	bl sub_020CDD98
	add r1, sp, #8
	mov r0, r6
	mov r2, #6
	bl sub_020C4DB0
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, #0x12
	mov r1, #4
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020CF954: .word 0x000005E4
	arm_func_end sub_020CF88C

	arm_func_start sub_020CF958
sub_020CF958: ; 0x020CF958
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020CDF24
	mov r4, r0
	mov r0, #1
	mov r1, #0xb
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0x10
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #0x13
	bl sub_020CDD98
	mov r0, #0x13
	mov r1, #0
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CF958

	arm_func_start sub_020CF9C4
sub_020CF9C4: ; 0x020CF9C4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov r7, r1
	mov r6, r2
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	mov r5, r3
	mov r8, #1
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r7, #0x10
	addhs sp, sp, #0xc
	movhs r0, #6
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r6, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_020CE418
	mov r4, r0
	bne _020CFA40
	bl sub_020CE448
	mov r8, r0
_020CFA40:
	mov r1, sl
	mov r0, #0
	mov r2, #0x820
	bl sub_020C4BB8
	add r0, sl, #0x800
	mov r2, #0
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r5, [r0, #0x10]
	strh r7, [r0, #0x16]
	strh r2, [r0, #0xe]
	mov r0, #1
	ldr r1, [sp, #0x30]
	orr r0, r6, r0, lsl r4
	cmp r1, #0
	mov r0, r0, lsl #0x10
	movne r2, #1
	add r1, sl, #0x800
	strh r2, [r1, #0x18]
	mov r0, r0, lsr #0x10
	strh r0, [r1, #0xe]
	bl sub_020D2FE4
	add r3, sl, #0x800
	mul r1, r5, r1
	strh r0, [r3, #0x12]
	strh r1, [r3, #0x14]
	ldrh r0, [r3, #0x14]
	cmp r0, #0x1fc
	bls _020CFACC
	mov r0, #0
	strh r0, [r3, #0xe]
	add sp, sp, #0xc
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CFACC:
	add r0, r0, #4
	strh r0, [r3, #0x14]
	mov r0, #1
	strh r0, [r3, #0x1c]
	cmp r4, #0
	bne _020CFBE4
	orr r4, r8, #1
	mov r2, #0
_020CFAEC:
	ldrh r1, [r3, #0xe]
	mov r0, r2, lsl #9
	add r2, r2, #1
	and r1, r1, r4
	strh r1, [sl, r0]
	cmp r2, #4
	blt _020CFAEC
	ldr r1, _020CFC08 ; =sub_020D0080
	mov r0, r7
	mov r2, sl
	bl sub_020CE4BC
	mov r7, sl
	mov sb, #0
	add r4, sl, #0x800
	mov r6, #1
	ldr fp, _020CFC0C ; =sub_020CFFA8
	ldr r5, _020CFC10 ; =0x0000FFFF
	b _020CFBC8
_020CFB34:
	ldrh r2, [r4, #8]
	mov r0, fp
	mov r1, sl
	add r2, r2, #1
	and r2, r2, #3
	strh r2, [r4, #8]
	ldrh r3, [r4, #0xe]
	mov r2, r7
	and r3, r3, r8
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	str r3, [sp]
	ldrh r3, [r4, #0x16]
	stmib sp, {r3, r6}
	ldrh r3, [r4, #0x14]
	bl sub_020CF64C
	cmp r0, #7
	bne _020CFB9C
	add r0, sl, sb, lsl #1
	add r0, r0, #0x800
	strh r5, [r0]
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	and r0, r0, #3
	strh r0, [r4, #0xa]
	b _020CFBC0
_020CFB9C:
	cmp r0, #0
	cmpne r0, #2
	beq _020CFBC0
	add r0, sl, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CFBC0:
	add r7, r7, #0x200
	add sb, sb, #1
_020CFBC8:
	ldrh r0, [r4, #0x18]
	cmp r0, #1
	movne r0, #1
	moveq r0, #2
	cmp sb, r0
	blt _020CFB34
	b _020CFBFC
_020CFBE4:
	ldr r1, _020CFC14 ; =sub_020D01AC
	mov r4, #3
	mov r0, r7
	mov r2, sl
	strh r4, [r3, #0xa]
	bl sub_020CE4BC
_020CFBFC:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CFC08: .word sub_020D0080
_020CFC0C: .word sub_020CFFA8
_020CFC10: .word 0x0000FFFF
_020CFC14: .word sub_020D01AC
	arm_func_end sub_020CF9C4

	arm_func_start sub_020CFC18
sub_020CFC18: ; 0x020CFC18
	stmfd sp!, {r4, lr}
	mov r4, r0
	moveq r0, #6
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x800
	ldrh r1, [r0, #0xe]
	cmp r1, #0
	moveq r0, #3
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r0, #0x16]
	mov r1, #0
	mov r2, r1
	bl sub_020CE4BC
	add r1, r4, #0x800
	mov r0, #0
	strh r0, [r1, #0xe]
	strh r0, [r1, #0x1c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CFC18

	arm_func_start sub_020CFC60
sub_020CFC60: ; 0x020CFC60
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sb, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r8, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_020CE418
	mov r5, r0
	bne _020CFCD4
	bl sub_020CE448
	mov r4, r0
_020CFCD4:
	add r0, sl, #0x800
	ldrh r0, [r0, #0x1c]
	cmp r0, #5
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #1
	cmpne r0, #4
	addne sp, sp, #0xc
	movne r0, #3
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r5, #0
	mov r7, #5
	bne _020CFE98
	mov r5, #0
	mov fp, r5
	cmp r0, #4
	bne _020CFDBC
	add ip, sl, #0x800
	mov r2, #1
	strh r2, [ip, #0x1c]
	ldrh r3, [ip, #0xe]
	ldrh r1, [ip, #8]
	ldr r0, _020CFFA0 ; =sub_020CFFA8
	and r3, r3, r4
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	str r3, [sp]
	ldrh r3, [ip, #0x16]
	add r1, r1, #3
	and r6, r1, #3
	str r3, [sp, #4]
	str r2, [sp, #8]
	ldrh r3, [ip, #0x14]
	mov r1, sl
	add r2, sl, r6, lsl #9
	bl sub_020CF64C
	cmp r0, #7
	bne _020CFD98
	add r0, sl, r6, lsl #1
	ldr r1, _020CFFA4 ; =0x0000FFFF
	add r0, r0, #0x800
	strh r1, [r0]
	add r0, sl, #0x800
	ldrh r1, [r0, #0xa]
	add r1, r1, #1
	and r1, r1, #3
	strh r1, [r0, #0xa]
	b _020CFDBC
_020CFD98:
	cmp r0, #0
	cmpne r0, #2
	beq _020CFDBC
	add r0, sl, #0x800
	mov r1, r7
	strh r1, [r0, #0x1c]
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CFDBC:
	add r0, sl, #0x800
	ldrh r2, [r0, #0xc]
	ldrh r1, [r0, #0xa]
	cmp r2, r1
	beq _020CFE54
	mov r5, r2, lsl #9
	ldrh r3, [sl, r5]
	mov r1, r8
	mov r2, #0x200
	orr r3, r3, #1
	strh r3, [sl, r5]
	ldrh r0, [r0, #0xc]
	add r0, sl, r0, lsl #9
	bl sub_020C4B18
	add r1, sl, #0x800
	ldrh r0, [r1, #0xc]
	mov r5, #1
	mov r7, #0
	add r0, sl, r0, lsl #1
	add r0, r0, #0x800
	ldrh r0, [r0]
	strh r0, [r1, #0x1a]
	ldrh r0, [r1, #0xc]
	add r0, r0, #1
	and r0, r0, #3
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0x18]
	cmp r0, #0
	bne _020CFE50
	cmp r4, #0
	beq _020CFE50
	ldrh r0, [r1, #8]
	mov r0, r0, lsl #9
	ldrh r0, [sl, r0]
	cmp r0, #1
	moveq fp, r5
	beq _020CFE54
_020CFE50:
	mov fp, #0
_020CFE54:
	mov r0, sl
	mov r1, #0
	bl sub_020D036C
	cmp r5, #0
	beq _020CFF94
	mov r0, sl
	mov r2, sb
	mov r1, #0
	bl sub_020D02A0
	add r0, sl, #0x800
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _020CFF94
	mov r0, sl
	mov r1, fp
	bl sub_020D036C
	b _020CFF94
_020CFE98:
	cmp r0, #4
	mov r0, #0
	add r1, sl, #0x800
	moveq r0, #1
	streqh r0, [r1, #0x1c]
	beq _020CFF18
	ldrh r2, [r1, #0xc]
	ldrh r1, [r1, #8]
	cmp r2, r1
	beq _020CFF18
	mov r2, r2, lsl #9
	ldrh r1, [sl, r2]
	tst r1, #1
	orreq r1, r1, #1
	streqh r1, [sl, r2]
	beq _020CFF18
	mov r1, r8
	add r0, sl, r2
	mov r2, #0x200
	bl sub_020C4B18
	add r2, sl, #0x800
	ldrh r1, [r2, #0xc]
	mov r0, #1
	mov r7, #0
	add r1, sl, r1, lsl #1
	add r1, r1, #0x800
	ldrh r1, [r1]
	strh r1, [r2, #0x1a]
	ldrh r1, [r2, #0xc]
	add r1, r1, #1
	and r1, r1, #3
	strh r1, [r2, #0xc]
_020CFF18:
	cmp r0, #0
	beq _020CFF94
	add r0, sl, #0x800
	ldrh r1, [r0, #0xa]
	ldrh r2, [r0, #0x10]
	mov r0, sb
	add r6, sl, r1, lsl #9
	add r1, r6, #0x20
	bl sub_020C4B18
	add r3, sl, #0x800
	ldrh r1, [r3, #0xe]
	mov r4, #1
	ldr r0, _020CFFA0 ; =sub_020CFFA8
	str r1, [sp]
	ldrh r5, [r3, #0x16]
	mov r1, sl
	add r2, r6, #0x20
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldrh r3, [r3, #0x10]
	bl sub_020CF64C
	add r1, sl, #0x800
	ldrh r2, [r1, #0xa]
	cmp r0, #2
	cmpne r0, #0
	add r2, r2, #1
	and r2, r2, #3
	strh r2, [r1, #0xa]
	movne r0, #5
	strneh r0, [r1, #0x1c]
	movne r7, r4
_020CFF94:
	mov r0, r7
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CFFA0: .word sub_020CFFA8
_020CFFA4: .word 0x0000FFFF
	arm_func_end sub_020CFC60

	arm_func_start sub_020CFFA8
sub_020CFFA8: ; 0x020CFFA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020CDF24
	ldrh r2, [r5, #0xa]
	ldr r1, _020D0078 ; =sub_020D0080
	add r0, r0, r2, lsl #2
	ldr r2, [r0, #0xcc]
	ldr r4, [r0, #0x10c]
	cmp r2, r1
	ldrne r0, _020D007C ; =sub_020D01AC
	cmpne r2, r0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	cmp r4, r0
	ldmneia sp!, {r3, r4, r5, pc}
	bl sub_020CE418
	ldrh r1, [r5, #2]
	cmp r1, #0
	bne _020D0034
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	add r1, r4, #0x800
	ldrh r0, [r1, #0xa]
	ldrh r2, [r5, #0x1a]
	add r0, r4, r0, lsl #1
	mov r2, r2, asr #1
	add r0, r0, #0x800
	strh r2, [r0]
	ldrh r0, [r1, #0xa]
	add r0, r0, #1
	and r0, r0, #3
	strh r0, [r1, #0xa]
	ldmia sp!, {r3, r4, r5, pc}
_020D0034:
	cmp r1, #0xa
	bne _020D0068
	cmp r0, #0
	beq _020D0058
	add r0, r4, #0x800
	ldrh r1, [r0, #0xa]
	add r1, r1, #3
	and r1, r1, #3
	strh r1, [r0, #0xa]
_020D0058:
	add r0, r4, #0x800
	mov r1, #4
	strh r1, [r0, #0x1c]
	ldmia sp!, {r3, r4, r5, pc}
_020D0068:
	add r0, r4, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D0078: .word sub_020D0080
_020D007C: .word sub_020D01AC
	arm_func_end sub_020CFFA8

	arm_func_start sub_020D0080
sub_020D0080: ; 0x020D0080
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrh r1, [r0, #2]
	cmp r1, #0
	bne _020D019C
	ldrh r1, [r0, #4]
	cmp r1, #0x15
	bgt _020D00CC
	bge _020D00EC
	cmp r1, #9
	ldmgtia sp!, {r4, r5, r6, pc}
	cmp r1, #7
	ldmltia sp!, {r4, r5, r6, pc}
	beq _020D010C
	cmp r1, #9
	beq _020D011C
	ldmia sp!, {r4, r5, r6, pc}
_020D00CC:
	cmp r1, #0x1a
	ldmgtia sp!, {r4, r5, r6, pc}
	cmp r1, #0x19
	ldmltia sp!, {r4, r5, r6, pc}
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r1, #0x1a
	beq _020D011C
	ldmia sp!, {r4, r5, r6, pc}
_020D00EC:
	ldrh r1, [r0, #0x12]
	ldr r2, [r0, #0xc]
	mov r0, r4
	bl sub_020D02A0
	mov r0, r4
	mov r1, #0
	bl sub_020D036C
	ldmia sp!, {r4, r5, r6, pc}
_020D010C:
	mov r0, r4
	mov r1, #0
	bl sub_020D036C
	ldmia sp!, {r4, r5, r6, pc}
_020D011C:
	ldrh r5, [r0, #0x12]
	mov r6, #1
	bl sub_020C3D98
	add r1, r4, #0x800
	ldrh lr, [r1, #8]
	mvn ip, r6, lsl r5
	mov r3, lr, lsl #9
	ldrh r2, [r4, r3]
	and r2, r2, ip
	strh r2, [r4, r3]
	ldrh r1, [r1, #0x18]
	cmp r1, #1
	bne _020D016C
	add r1, lr, #1
	and r1, r1, #3
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #7
	ldrh r1, [r4, r2]
	and r1, r1, ip
	strh r1, [r4, r2]
_020D016C:
	bl sub_020C3DAC
	mov r0, r4
	mov r1, #0
	bl sub_020D036C
	add r0, r4, #0x800
	ldrh r0, [r0, #0x18]
	cmp r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, #0
	bl sub_020D036C
	ldmia sp!, {r4, r5, r6, pc}
_020D019C:
	add r0, r4, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020D0080

	arm_func_start sub_020D01AC
sub_020D01AC: ; 0x020D01AC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r4, [r8, #0x1c]
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r8, #2]
	cmp r0, #0
	bne _020D0290
	ldrh r0, [r8, #4]
	cmp r0, #0x15
	bgt _020D01F4
	bge _020D020C
	cmp r0, #9
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #7
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	cmpne r0, #9
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020D01F4:
	cmp r0, #0x1a
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #0x19
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	cmpne r0, #0x1a
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020D020C:
	ldr r7, [r8, #0xc]
	ldrh r5, [r8, #0x10]
	ldrh r6, [r7]
	bl sub_020CE418
	add r1, r4, #0x800
	ldrh r1, [r1, #0x14]
	cmp r5, r1
	beq _020D0234
	cmp r5, #0x200
	movhi r5, #0x200
_020D0234:
	cmp r5, #4
	ldmloia sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #1
	tst r6, r1, lsl r0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r4, #0x800
	ldrh r1, [r0, #8]
	mov r0, r7
	mov r2, r5
	add r1, r4, r1, lsl #9
	bl sub_020C4B18
	add r1, r4, #0x800
	ldrh r0, [r1, #8]
	ldrh r2, [r8, #0x1a]
	add r0, r4, r0, lsl #1
	mov r2, r2, asr #1
	add r0, r0, #0x800
	strh r2, [r0]
	ldrh r0, [r1, #8]
	add r0, r0, #1
	and r0, r0, #3
	strh r0, [r1, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020D0290:
	add r0, r4, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020D01AC

	arm_func_start sub_020D02A0
sub_020D02A0: ; 0x020D02A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r3, r1
	mov r1, #1
	mov r4, r1, lsl r3
	add r0, r6, #0x800
	ldrh r1, [r0, #0xe]
	mov r7, r4, lsl #0x10
	mov r5, r2
	tst r1, r7, lsr #16
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r4, [r0, #8]
	mov r2, r4, lsl #9
	ldrh r2, [r6, r2]
	tst r2, r7, lsr #16
	bne _020D0304
	ldrh r0, [r0, #0x18]
	cmp r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #1
	and r4, r0, #3
	mov r0, r4, lsl #9
	ldrh r0, [r6, r0]
	tst r0, r7, lsr #16
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_020D0304:
	add r2, r6, r4, lsl #9
	mov r0, r6
	add r2, r2, #4
	bl sub_020D0514
	mov r1, r0
	add r0, r6, #0x800
	cmp r5, #0
	ldrh r2, [r0, #0x10]
	beq _020D0334
	mov r0, r5
	bl sub_020C4B18
	b _020D033C
_020D0334:
	mov r0, #0
	bl sub_020C4AF0
_020D033C:
	bl sub_020C3D98
	mov r4, r4, lsl #9
	ldrh r3, [r6, r4]
	mvn r1, r7, lsr #16
	add r2, r6, #2
	and r1, r3, r1
	strh r1, [r6, r4]
	ldrh r1, [r2, r4]
	orr r1, r1, r7, lsr #16
	strh r1, [r2, r4]
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020D02A0

	arm_func_start sub_020D036C
sub_020D036C: ; 0x020D036C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov sb, r1
	bl sub_020C3D98
	add r1, sl, #0x800
	ldrh r1, [r1, #8]
	mov r4, r0
	mov r1, r1, lsl #9
	ldrh r1, [sl, r1]
	cmp r1, #0
	bne _020D04AC
	bl sub_020CE448
	add r1, sl, #0x800
	ldrh r6, [r1, #8]
	ldrh r1, [r1, #0x18]
	mov r7, r0
	add r0, r6, #1
	and r5, r0, #3
	cmp r1, #1
	addeq r0, r5, #1
	andeq r8, r0, #3
	movne r8, r5
	add r1, sl, r8, lsl #9
	mov r0, #0
	mov r2, #0x200
	bl sub_020C4AF0
	add r0, sl, #0x800
	ldrh r3, [r0, #0xe]
	orr r2, r7, #1
	mov r1, r8, lsl #9
	and r2, r3, r2
	strh r2, [sl, r1]
	strh r5, [r0, #8]
	ldrh r0, [r0, #0xe]
	mov r1, r6, lsl #9
	cmp sb, #1
	strh r0, [sl, r1]
	ldreqh r0, [sl, r1]
	biceq r0, r0, #1
	streqh r0, [sl, r1]
	mov r0, r4
	bl sub_020C3DAC
	add r3, sl, #0x800
	ldrh r1, [r3, #0xe]
	mov r4, #1
	ldr r0, _020D04B8 ; =sub_020CFFA8
	and r1, r1, r7
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp]
	ldrh r5, [r3, #0x16]
	mov r1, sl
	add r2, sl, r6, lsl #9
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldrh r3, [r3, #0x14]
	bl sub_020CF64C
	cmp r0, #7
	bne _020D0488
	add r0, sl, r6, lsl #1
	ldr r1, _020D04BC ; =0x0000FFFF
	add r0, r0, #0x800
	strh r1, [r0]
	add r0, sl, #0x800
	ldrh r1, [r0, #0xa]
	add sp, sp, #0xc
	add r1, r1, #1
	and r1, r1, #3
	strh r1, [r0, #0xa]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_020D0488:
	cmp r0, #0
	cmpne r0, #2
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r0, sl, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_020D04AC:
	bl sub_020C3DAC
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020D04B8: .word sub_020CFFA8
_020D04BC: .word 0x0000FFFF
	arm_func_end sub_020D036C

	arm_func_start sub_020D04C0
sub_020D04C0: ; 0x020D04C0
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	cmp r0, #0
	ldrh r1, [lr]
	ldrh ip, [lr, #2]
	mov r2, #1
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	cmp lr, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	tst r1, r2, lsl r3
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	tst ip, r2, lsl r3
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r2, lr, #4
	bl sub_020D0514
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D04C0

	arm_func_start sub_020D0514
sub_020D0514: ; 0x020D0514
	stmfd sp!, {r3, r4, r5, lr}
	mov ip, #1
	mov r3, ip, lsl r3
	sub r3, r3, #1
	mov r5, r0
	and r0, r1, r3
	mov r4, r2
	bl sub_020D2FE4
	add r1, r5, #0x800
	ldrh r1, [r1, #0x10]
	mla r0, r1, r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020D0514

	arm_func_start sub_020D0544
sub_020D0544: ; 0x020D0544
	stmfd sp!, {r3, lr}
	mov ip, #1
	rsb r2, ip, #0x10000
	mov r3, #2
	str ip, [sp]
	bl sub_020CF9C4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D0544

	arm_func_start sub_020D0560
sub_020D0560: ; 0x020D0560
	ldr ip, _020D0568 ; =sub_020CFC18
	bx ip
	; .align 2, 0
_020D0568: .word sub_020CFC18
	arm_func_end sub_020D0560

	arm_func_start sub_020D056C
sub_020D056C: ; 0x020D056C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020CDF50
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r5, #3
	movhi r0, #6
	ldmhiia sp!, {r4, r5, r6, pc}
	cmp r5, #0
	beq _020D05B4
	cmp r4, #0
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, #0x50
	bl sub_020C2C38
_020D05B4:
	mov r1, r6
	mov r0, #0x14
	bl sub_020CDD98
	mov r2, r5
	mov r3, r4
	mov r0, #0x14
	mov r1, #2
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020D056C

	arm_func_start sub_020D05E0
sub_020D05E0: ; 0x020D05E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020CDF50
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #3
	movhi r0, #6
	ldmhiia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	beq _020D062C
	cmp r4, #0
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, #0x50
	bl sub_020C2C38
_020D062C:
	mov r1, r7
	mov r0, #0x27
	bl sub_020CDD98
	mov r2, r6
	mov r3, r4
	mov r0, #0x27
	mov r1, #3
	str r5, [sp]
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020D05E0

	arm_func_start sub_020D065C
sub_020D065C: ; 0x020D065C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, #2
	mov r1, #7
	mov r2, #9
	mov r4, r3
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	cmp r6, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r5, #0x70
	addhi sp, sp, #0xc
	movhi r0, #6
	ldmhiia sp!, {r4, r5, r6, r7, pc}
	ldr r1, _020D0710 ; =0x021D0140
	mov r0, r6
	mov r2, r5
	bl sub_020C4B18
	ldr r0, _020D0710 ; =0x021D0140
	mov r1, r5
	bl sub_020C2C38
	mov r1, r7
	mov r0, #0x18
	bl sub_020CDD98
	ldrh r0, [sp, #0x20]
	str r4, [sp]
	ldrb r1, [sp, #0x24]
	str r0, [sp, #4]
	ldr r2, _020D0710 ; =0x021D0140
	str r1, [sp, #8]
	mov r3, r5
	mov r0, #0x18
	mov r1, #5
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020D0710: .word 0x021D0140
	arm_func_end sub_020D065C

	arm_func_start sub_020D0714
sub_020D0714: ; 0x020D0714
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020CDF50
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	cmpne r4, #1
	movne r0, #6
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #0x19
	bl sub_020CDD98
	mov r2, r4
	mov r0, #0x19
	mov r1, #1
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020D0714

	arm_func_start sub_020D0764
sub_020D0764: ; 0x020D0764
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020CDF50
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r7
	mov r0, #0x1d
	bl sub_020CDD98
	ldrh ip, [sp, #0x20]
	mov r2, r6
	mov r3, r5
	mov r0, #0x1d
	mov r1, #4
	stmia sp, {r4, ip}
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020D0764

	arm_func_start sub_020D07C4
sub_020D07C4: ; 0x020D07C4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020CDF24
	mov r0, #1
	mov r1, #2
	bl sub_020CDF98
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r1, r7
	mov r0, #0x1e
	bl sub_020CDD98
	ldrh r2, [sp, #0x20]
	mov r3, #0x1e
	add r0, sp, #0
	mov r1, #0xa
	strh r3, [sp]
	strh r6, [sp, #2]
	strh r5, [sp, #4]
	strh r4, [sp, #6]
	strh r2, [sp, #8]
	bl sub_020CDEB4
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end sub_020D07C4

	arm_func_start sub_020D083C
sub_020D083C: ; 0x020D083C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #2
	mov r1, #7
	mov r2, #9
	bl sub_020CDF98
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #0x21
	bl sub_020CDD98
	mov r2, r4
	mov r0, #0x21
	mov r1, #1
	bl sub_020CDE08
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020D083C

	arm_func_start sub_020D0888
sub_020D0888: ; 0x020D0888
	stmfd sp!, {r3, lr}
	ldr r1, _020D08B4 ; =0x021D01C4
	mov r3, #0
	ldr r2, _020D08B8 ; =0x05000001
	add r0, sp, #0
	str r3, [sp]
	bl sub_02000570
	bl sub_020C1A00
	ldr r1, _020D08BC ; =0x021D01C0
	strh r0, [r1, #6]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D08B4: .word 0x021D01C4
_020D08B8: .word 0x05000001
_020D08BC: .word 0x021D01C0
	arm_func_end sub_020D0888

	arm_func_start sub_020D08C0
sub_020D08C0: ; 0x020D08C0
	stmfd sp!, {r3, lr}
	bl sub_020D0A04
	cmp r0, #0
	beq _020D08E0
	bl sub_020D0910
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
_020D08E0:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D08C0

	arm_func_start sub_020D08E8
sub_020D08E8: ; 0x020D08E8
	stmfd sp!, {r3, lr}
	bl sub_020D0A04
	cmp r0, #0
	beq _020D0908
	bl sub_020D0910
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_020D0908:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D08E8

	arm_func_start sub_020D0910
sub_020D0910: ; 0x020D0910
	ldr r0, _020D0924 ; =0x027FFC30
	ldrb r0, [r0, #5]
	mov r0, r0, lsl #0x1f
	mov r0, r0, lsr #0x1f
	bx lr
	; .align 2, 0
_020D0924: .word 0x027FFC30
	arm_func_end sub_020D0910

	arm_func_start sub_020D0928
sub_020D0928: ; 0x020D0928
	stmfd sp!, {r4, lr}
	mov r4, #0
	bl sub_020D0A04
	cmp r0, #0
	beq _020D0944
	bl sub_020D094C
	mov r4, r0
_020D0944:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D0928

	arm_func_start sub_020D094C
sub_020D094C: ; 0x020D094C
	stmfd sp!, {r4, lr}
	mov r4, #0
	bl sub_020D0910
	cmp r0, #0
	ldrne r0, _020D096C ; =0x027FFC30
	ldrne r4, [r0, #8]
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D096C: .word 0x027FFC30
	arm_func_end sub_020D094C

	arm_func_start sub_020D0970
sub_020D0970: ; 0x020D0970
	stmfd sp!, {r4, lr}
	mov r4, #0
	bl sub_020D0A04
	cmp r0, #0
	beq _020D098C
	bl sub_020D0994
	mov r4, r0
_020D098C:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D0970

	arm_func_start sub_020D0994
sub_020D0994: ; 0x020D0994
	stmfd sp!, {r4, lr}
	mov r4, #0
	bl sub_020D0910
	cmp r0, #0
	ldrne r0, _020D09B4 ; =0x027FFC30
	ldrneh r4, [r0, #6]
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D09B4: .word 0x027FFC30
	arm_func_end sub_020D0994

	arm_func_start sub_020D09B8
sub_020D09B8: ; 0x020D09B8
	stmfd sp!, {r3, lr}
	ldr r2, _020D09FC ; =0x027FFC30
	ldr r0, _020D0A00 ; =0x0000FFFF
	ldrh r1, [r2]
	cmp r1, r0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r0, [r2, #5]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1f
	bne _020D09E8
	bl sub_020D0A04
_020D09E8:
	ldr r0, _020D09FC ; =0x027FFC30
	ldrb r0, [r0, #5]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1f
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D09FC: .word 0x027FFC30
_020D0A00: .word 0x0000FFFF
	arm_func_end sub_020D09B8

	arm_func_start sub_020D0A04
sub_020D0A04: ; 0x020D0A04
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r2, _020D0B04 ; =0x027FFC30
	mov r4, #1
	ldrh r1, [r2]
	rsb r0, r4, #0x10000
	cmp r1, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r0, [r2, #5]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _020D0B08 ; =0x021D01C0
	add r1, sp, #8
	ldrh r0, [r0, #6]
	bl sub_020D0B8C
	add r0, sp, #0
	bl sub_020D0B10
	mov r0, #0x8000000
	ldrb r2, [r0, #0xb2]
	cmp r2, #0x96
	bne _020D0A84
	ldr r1, _020D0B04 ; =0x027FFC30
	ldrh r0, [r0, #0xbe]
	ldrh r1, [r1]
	cmp r1, r0
	bne _020D0ACC
_020D0A84:
	cmp r2, #0x96
	beq _020D0AA4
	ldr r1, _020D0B04 ; =0x027FFC30
	ldr r0, _020D0B0C ; =0x0801FFFE
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _020D0ACC
_020D0AA4:
	ldr r2, _020D0B04 ; =0x027FFC30
	mov r0, #0x8000000
	ldr r1, [r2, #8]
	ldr r0, [r0, #0xac]
	cmp r1, r0
	beq _020D0AE0
	ldrb r0, [r2, #5]
	mov r0, r0, lsl #0x1f
	mov r0, r0, lsr #0x1f
	beq _020D0AE0
_020D0ACC:
	ldr r1, _020D0B04 ; =0x027FFC30
	mov r4, #0
	ldrb r0, [r1, #5]
	orr r0, r0, #2
	strb r0, [r1, #5]
_020D0AE0:
	add r0, sp, #0
	bl sub_020D0B58
	ldr r0, _020D0B08 ; =0x021D01C0
	add r1, sp, #8
	ldrh r0, [r0, #6]
	bl sub_020D0BE8
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D0B04: .word 0x027FFC30
_020D0B08: .word 0x021D01C0
_020D0B0C: .word 0x0801FFFE
	arm_func_end sub_020D0A04

	arm_func_start sub_020D0B10
sub_020D0B10: ; 0x020D0B10
	ldr r2, _020D0B54 ; =0x04000204
	ldrh r1, [r2]
	and r1, r1, #0xc
	mov r1, r1, asr #2
	str r1, [r0, #0]
	ldrh r1, [r2]
	and r1, r1, #0x10
	mov r1, r1, asr #4
	str r1, [r0, #4]
	ldrh r0, [r2]
	bic r0, r0, #0xc
	orr r0, r0, #0xc
	strh r0, [r2]
	ldrh r0, [r2]
	bic r0, r0, #0x10
	strh r0, [r2]
	bx lr
	; .align 2, 0
_020D0B54: .word 0x04000204
	arm_func_end sub_020D0B10

	arm_func_start sub_020D0B58
sub_020D0B58: ; 0x020D0B58
	ldr r3, _020D0B88 ; =0x04000204
	ldr r2, [r0, #0]
	ldrh r1, [r3]
	bic r1, r1, #0xc
	orr r1, r1, r2, lsl #2
	strh r1, [r3]
	ldrh r1, [r3]
	ldr r2, [r0, #4]
	bic r0, r1, #0x10
	orr r0, r0, r2, lsl #4
	strh r0, [r3]
	bx lr
	; .align 2, 0
_020D0B88: .word 0x04000204
	arm_func_end sub_020D0B58

	arm_func_start sub_020D0B8C
sub_020D0B8C: ; 0x020D0B8C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020D0BE4 ; =0x027FFFE8
	mov r7, r0
	mov r6, r1
	mov r4, #1
_020D0BA0:
	bl sub_020C3D98
	str r0, [r6, #4]
	mov r0, r5
	bl sub_020C19F8
	and r0, r0, #0x40
	str r0, [r6, #0]
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl sub_020C1940
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	bl sub_020C3DAC
	mov r0, r4
	bl sub_02000522
	b _020D0BA0
_020D0BE0:
	.byte 0xF8, 0x80, 0xBD, 0xE8
_020D0BE4: .word 0x027FFFE8
	arm_func_end sub_020D0B8C

	arm_func_start sub_020D0BE8
sub_020D0BE8: ; 0x020D0BE8
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4, #0]
	cmp r1, #0
	bne _020D0C00
	bl sub_020C1934
_020D0C00:
	ldr r0, [r4, #4]
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D0BE8

	arm_func_start sub_020D0C0C
sub_020D0C0C: ; 0x020D0C0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r1, r7
	mov r0, #0xd
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #1
	mov r5, #0xd
	mov r4, #0
_020D0C38:
	mov r0, r6
	bl sub_02000522
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl sub_020C64CC
	cmp r0, #0
	bne _020D0C38
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020D0C0C

	arm_func_start sub_020D0C5C
sub_020D0C5C: ; 0x020D0C5C
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	cmp lr, #0x8000000
	blo _020D0C94
	ldr r2, _020D0CB0 ; =0x0A010000
	cmp lr, r2
	bhs _020D0C94
	mov ip, #1
	mov r2, r0
	mov r0, #0
	str ip, [sp]
	bl sub_020D0D04
	ldmia sp!, {r3, pc}
_020D0C94:
	mov ip, #1
	mov r1, r0
	mov r2, lr
	mov r0, #0
	str ip, [sp]
	bl sub_020D0D04
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D0CB0: .word 0x0A010000
	arm_func_end sub_020D0C5C

	arm_func_start sub_020D0CB4
sub_020D0CB4: ; 0x020D0CB4
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	mov ip, #0x11
	mov r1, r0
	mov r2, lr
	mov r0, #0
	str ip, [sp]
	bl sub_020D0D04
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D0CB4

	arm_func_start sub_020D0CDC
sub_020D0CDC: ; 0x020D0CDC
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	mov ip, #0x21
	mov r1, r0
	mov r2, lr
	mov r0, #0
	str ip, [sp]
	bl sub_020D0D04
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D0CDC

	arm_func_start sub_020D0D04
sub_020D0D04: ; 0x020D0D04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020D0A04
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_020D0F90
	ldr r0, _020D0E3C ; =0x021D01C0
	ldrh r0, [r0, #6]
	bl sub_020C18F4
	ldr r0, [sp, #0x18]
	tst r0, #1
	bne _020D0D58
	mov r0, r7
	bl sub_020C45F4
	mov r0, r5
	mov r1, r4
	bl sub_020C2C54
_020D0D58:
	ldr r0, [sp, #0x18]
	cmp r0, #0x11
	bhi _020D0D88
	cmp r0, #0x10
	blo _020D0D7C
	beq _020D0DA4
	cmp r0, #0x11
	beq _020D0DD4
	b _020D0E1C
_020D0D7C:
	cmp r0, #1
	beq _020D0DFC
	b _020D0E1C
_020D0D88:
	cmp r0, #0x20
	bhi _020D0D98
	beq _020D0DBC
	b _020D0E1C
_020D0D98:
	cmp r0, #0x21
	beq _020D0DE8
	b _020D0E1C
_020D0DA4:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020C43C4
	b _020D0E1C
_020D0DBC:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020C4354
	b _020D0E1C
_020D0DD4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C4B18
	b _020D0E1C
_020D0DE8:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C4B68
	b _020D0E1C
_020D0DFC:
	cmp r4, #0
	mov r1, #0
	bls _020D0E1C
_020D0E08:
	ldrb r0, [r6], #1
	add r1, r1, #1
	cmp r1, r4
	strb r0, [r5], #1
	blo _020D0E08
_020D0E1C:
	ldr r0, _020D0E3C ; =0x021D01C0
	ldrh r0, [r0, #6]
	bl sub_020C1934
	bl sub_020D0A04
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D0E3C: .word 0x021D01C0
	arm_func_end sub_020D0D04

	arm_func_start sub_020D0E40
sub_020D0E40: ; 0x020D0E40
	ldr ip, _020D0E54 ; =sub_020D0E58
	mov r2, r1
	mov r1, #0
	mov r3, #0x41
	bx ip
	; .align 2, 0
_020D0E54: .word sub_020D0E58
	arm_func_end sub_020D0E40

	arm_func_start sub_020D0E58
sub_020D0E58: ; 0x020D0E58
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020D0A04
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_020D0F90
	ldr r0, _020D0F34 ; =0x021D01C0
	ldrh r0, [r0, #6]
	bl sub_020C18F4
	cmp r4, #0x21
	bhi _020D0EC4
	bhs _020D0EF0
	cmp r4, #0x11
	bhi _020D0EB8
	cmp r4, #0x10
	blo _020D0F14
	beq _020D0F10
	cmp r4, #0x11
	beq _020D0EE0
	b _020D0F14
_020D0EB8:
	cmp r4, #0x20
	streqh r6, [r7]
	b _020D0F14
_020D0EC4:
	cmp r4, #0x40
	bhi _020D0ED4
	streq r6, [r7]
	b _020D0F14
_020D0ED4:
	cmp r4, #0x41
	beq _020D0F00
	b _020D0F14
_020D0EE0:
	cmp r5, #0
	ldrneb r0, [r7]
	strneb r0, [r5]
	b _020D0F14
_020D0EF0:
	cmp r5, #0
	ldrneh r0, [r7]
	strneh r0, [r5]
	b _020D0F14
_020D0F00:
	cmp r5, #0
	ldrne r0, [r7]
	strne r0, [r5]
	b _020D0F14
_020D0F10:
	strb r6, [r7]
_020D0F14:
	ldr r0, _020D0F34 ; =0x021D01C0
	ldrh r0, [r0, #6]
	bl sub_020C1934
	bl sub_020D0A04
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D0F34: .word 0x021D01C0
	arm_func_end sub_020D0E58

	arm_func_start sub_020D0F38
sub_020D0F38: ; 0x020D0F38
	ldr r0, _020D0F44 ; =0x021D01C0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020D0F44: .word 0x021D01C0
	arm_func_end sub_020D0F38

	arm_func_start sub_020D0F48
sub_020D0F48: ; 0x020D0F48
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, _020D0F8C ; =0x021D01C0
	mov r4, r0
	str r5, [r1, #0]
	bl sub_020D08E8
	cmp r0, #0
	bne _020D0F80
	cmp r5, #0
	movne r1, #0x1000
	moveq r1, #0x5000
	mov r0, #0xf000
	bl sub_020C353C
_020D0F80:
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D0F8C: .word 0x021D01C0
	arm_func_end sub_020D0F48

	arm_func_start sub_020D0F90
sub_020D0F90: ; 0x020D0F90
	stmfd sp!, {r3, lr}
	bl sub_020D08E8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020D0F38
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D0F90

	arm_func_start sub_020D0FB4
sub_020D0FB4: ; 0x020D0FB4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020D1054 ; =0x021D01E0
	ldr r1, [r0, #8]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	str r1, [r0, #8]
	bl sub_020D0888
	ldr r0, _020D1054 ; =0x021D01E0
	mov r1, #0
	str r1, [r0, #0xc]
	bl sub_020C6350
	mov r5, #0xd
	mov r4, #1
_020D0FEC:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020D0FEC
	ldr r1, _020D1058 ; =sub_020D125C
	mov r0, #0xd
	bl sub_020C645C
	bl sub_020D1068
	mov r0, #0xd
	mov r1, #0
	bl sub_020C645C
	ldr r1, _020D105C ; =sub_020D1288
	mov r0, #0xd
	bl sub_020C645C
	ldr r1, _020D1054 ; =0x021D01E0
	mov r2, #0
	ldr r0, _020D1060 ; =0x021D02C0
	str r2, [r1, #0x18]
	bl sub_020D2D90
	ldr r1, _020D1064 ; =sub_020D12F8
	mov r0, #0x11
	bl sub_020C645C
	mov r0, #0
	bl sub_020D0F48
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D1054: .word 0x021D01E0
_020D1058: .word sub_020D125C
_020D105C: .word sub_020D1288
_020D1060: .word 0x021D02C0
_020D1064: .word sub_020D12F8
	arm_func_end sub_020D0FB4

	arm_func_start sub_020D1068
sub_020D1068: ; 0x020D1068
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r0, _020D1230 ; =0x021D01E0
	ldr r1, [r0, #0]
	cmp r1, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020D1234 ; =0x04000300
	mov r2, #1
	ldrh r1, [r1]
	str r2, [r0, #0]
	tst r1, #1
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x40000
	bl sub_020C15F0
	ldr r3, _020D1238 ; =0x04000208
	mov r2, #1
	ldrh r5, [r3]
	ldr r1, _020D123C ; =0x021D01C4
	mov r4, r0
	strh r2, [r3]
	ldrh r0, [r1, #2]
	add r1, sp, #8
	bl sub_020D0B8C
	ldr r1, _020D1240 ; =0x04000204
	add r0, sp, #0
	ldrh r1, [r1]
	and r1, r1, #0x8000
	mov r6, r1, asr #0xf
	bl sub_020D0B10
	ldr r3, _020D1240 ; =0x04000204
	ldr r0, _020D1244 ; =0x021D0200
	ldrh r2, [r3]
	add r0, r0, #0x80
	mov r1, #0x40
	bic r2, r2, #0x8000
	strh r2, [r3]
	bl sub_020C2C1C
	ldr r2, _020D1244 ; =0x021D0200
	ldr r1, _020D1248 ; =0x08000080
	mov r0, #1
	mov r3, #0x40
	add r2, r2, #0x80
	bl sub_020C43C4
	ldr r2, _020D1240 ; =0x04000204
	add r0, sp, #0
	ldrh r1, [r2]
	bic r1, r1, #0x8000
	orr r1, r1, r6, lsl #15
	strh r1, [r2]
	bl sub_020D0B58
	ldr r0, _020D123C ; =0x021D01C4
	add r1, sp, #8
	ldrh r0, [r0, #2]
	bl sub_020D0BE8
	ldr r1, _020D124C ; =0x027FFF9B
	ldrb r0, [r1]
	cmp r0, #0
	bne _020D1164
	ldrb r0, [r1, #-1]
	cmp r0, #0
	bne _020D11C8
_020D1164:
	ldr r3, _020D1244 ; =0x021D0200
	ldr r6, _020D1250 ; =0x027FFC30
	ldrh r0, [r3, #0xbe]
	mov r2, #0
	strh r0, [r6]
	b _020D1190
_020D117C:
	add r0, r3, r2
	ldrb r1, [r0, #0xb5]
	add r0, r6, r2
	add r2, r2, #1
	strb r1, [r0, #2]
_020D1190:
	cmp r2, #3
	blt _020D117C
	ldrh r0, [r3, #0xb0]
	strh r0, [r6, #6]
	ldr r0, [r3, #0xac]
	str r0, [r6, #8]
	bl sub_020D0A04
	cmp r0, #0
	movne r2, #1
	ldr r1, _020D124C ; =0x027FFF9B
	moveq r2, #0
	mov r0, #1
	strb r2, [r1]
	strb r0, [r1, #-1]
_020D11C8:
	ldr r0, _020D1254 ; =0xFFFF0020
	ldr r1, _020D1258 ; =0x021D0204
	mov r2, #0x9c
	bl sub_020C4B68
	bl sub_020C2BE8
	ldr r0, _020D1244 ; =0x021D0200
	add r0, r0, #-0x2000000
	mov r0, r0, lsr #5
	mov r0, r0, lsl #6
	orr r0, r0, #1
	bl sub_020D0C0C
	mov r7, #1
	ldr r6, _020D123C ; =0x021D01C4
	b _020D1208
_020D1200:
	mov r0, r7
	bl sub_02000522
_020D1208:
	ldrh r0, [r6]
	cmp r0, #1
	bne _020D1200
	ldr r2, _020D1238 ; =0x04000208
	mov r0, r4
	ldrh r1, [r2]
	strh r5, [r2]
	bl sub_020C15F0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D1230: .word 0x021D01E0
_020D1234: .word 0x04000300
_020D1238: .word 0x04000208
_020D123C: .word 0x021D01C4
_020D1240: .word 0x04000204
_020D1244: .word 0x021D0200
_020D1248: .word 0x08000080
_020D124C: .word 0x027FFF9B
_020D1250: .word 0x027FFC30
_020D1254: .word 0xFFFF0020
_020D1258: .word 0x021D0204
	arm_func_end sub_020D1068

	arm_func_start sub_020D125C
sub_020D125C: ; 0x020D125C
	stmfd sp!, {r3, lr}
	and r0, r1, #0x3f
	cmp r0, #1
	bne _020D127C
	ldr r0, _020D1284 ; =0x021D01C4
	mov r1, #1
	strh r1, [r0]
	ldmia sp!, {r3, pc}
_020D127C:
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D1284: .word 0x021D01C4
	arm_func_end sub_020D125C

	arm_func_start sub_020D1288
sub_020D1288: ; 0x020D1288
	stmfd sp!, {r3, lr}
	and r0, r1, #0x3f
	cmp r0, #0x11
	bne _020D12D8
	ldr r0, _020D12E0 ; =0x021D01E0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	ldr r1, [r0, #0x18]
	mov r0, #0
	cmp r1, #0
	beq _020D12BC
	blx r1
_020D12BC:
	cmp r0, #0
	beq _020D12C8
	bl sub_020D12E4
_020D12C8:
	ldr r0, _020D12E0 ; =0x021D01E0
	mov r1, #1
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
_020D12D8:
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D12E0: .word 0x021D01E0
	arm_func_end sub_020D1288

	arm_func_start sub_020D12E4
sub_020D12E4: ; 0x020D12E4
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl sub_020D0C0C
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D12E4

	arm_func_start sub_020D12F8
sub_020D12F8: ; 0x020D12F8
	ldr r0, _020D1308 ; =0x021D01E0
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_020D1308: .word 0x021D01E0
	arm_func_end sub_020D12F8

	arm_func_start sub_020D130C
sub_020D130C: ; 0x020D130C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	cmp r7, #1
	mov r0, #1
	bhi _020D145C
	bl sub_020C1A00
	ldr r1, _020D1478 ; =0x021D03AC
	strh r0, [r1]
	ldrh r0, [r1]
	bl sub_020C18F4
	ldr r4, _020D147C ; =0x04000204
	ldr r1, _020D1480 ; =0x020FE53C
	ldrh r3, [r4]
	ldrh r2, [r4]
	ldr r0, _020D1484 ; =0x0210148C
	and r6, r3, #3
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r4]
	str r1, [r0, #0]
	bl sub_020D14E8
	ldr r2, _020D147C ; =0x04000204
	mov r4, r0
	ldrh r1, [r2]
	cmp r7, #0
	ldreq r5, _020D1488 ; =0x020FE54C
	bic r1, r1, #3
	orr r1, r1, r6
	cmp r7, #1
	ldr r0, _020D1478 ; =0x021D03AC
	strh r1, [r2]
	ldrh r0, [r0]
	ldreq r5, _020D148C ; =0x020FE540
	bl sub_020C1914
	ldr r3, [r5, #0]
	mov r0, #1
	ldrh r1, [r3, #0x38]
	cmp r1, #0
	beq _020D13CC
	and r2, r4, #0xff
_020D13AC:
	ldrh r1, [r3, #0x38]
	cmp r2, r1
	moveq r0, #0
	beq _020D13CC
	ldr r3, [r5, #4]!
	ldrh r1, [r3, #0x38]
	cmp r1, #0
	bne _020D13AC
_020D13CC:
	ldr r2, [r3, #0]
	ldr r1, _020D1490 ; =0x021D03B0
	ldr r3, _020D1494 ; =0x021D03C4
	str r2, [r1, #0]
	ldr r1, [r5, #0]
	ldr r2, _020D1498 ; =0x021D03BC
	ldr r4, [r1, #4]
	ldr r1, _020D149C ; =0x021D03B4
	str r4, [r3, #0]
	ldr r3, [r5, #0]
	ldr r6, _020D14A0 ; =0x021D03B8
	ldr r3, [r3, #8]
	ldr r4, _020D14A4 ; =0x021D03C0
	str r3, [r2, #0]
	ldr r2, [r5, #0]
	ldr r3, _020D14A8 ; =0x021D03DC
	ldr r7, [r2, #0xc]
	ldr r2, _020D1484 ; =0x0210148C
	str r7, [r1, #0]
	ldr r7, [r5, #0]
	ldr r1, _020D14AC ; =0x02101488
	ldr r7, [r7, #0x10]
	str r7, [r6, #0]
	ldr r6, [r5, #0]
	ldr r6, [r6, #0x14]
	str r6, [r4, #0]
	ldr r4, [r5, #0]
	ldr r4, [r4, #0x18]
	str r4, [r3, #0]
	ldr r3, [r5, #0]
	ldr r3, [r3, #0x1c]
	str r3, [r2, #0]
	ldr r2, [r5, #0]
	add r2, r2, #0x20
	str r2, [r1, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020D145C:
	cmp r7, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_020C1A00
	ldr r1, _020D14B0 ; =0x021D03E0
	strh r0, [r1]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D1478: .word 0x021D03AC
_020D147C: .word 0x04000204
_020D1480: .word 0x020FE53C
_020D1484: .word 0x0210148C
_020D1488: .word 0x020FE54C
_020D148C: .word 0x020FE540
_020D1490: .word 0x021D03B0
_020D1494: .word 0x021D03C4
_020D1498: .word 0x021D03BC
_020D149C: .word 0x021D03B4
_020D14A0: .word 0x021D03B8
_020D14A4: .word 0x021D03C0
_020D14A8: .word 0x021D03DC
_020D14AC: .word 0x02101488
_020D14B0: .word 0x021D03E0
	arm_func_end sub_020D130C

	arm_func_start sub_020D14B4
sub_020D14B4: ; 0x020D14B4
	ldr r3, _020D14E0 ; =0x0A005555
	mov r2, #0xaa
	ldr r1, _020D14E4 ; =0x0A002AAA
	strb r2, [r3]
	mov r2, #0x55
	strb r2, [r1]
	mov r1, #0xb0
	strb r1, [r3]
	mov r1, #0xa000000
	strb r0, [r1]
	bx lr
	; .align 2, 0
_020D14E0: .word 0x0A005555
_020D14E4: .word 0x0A002AAA
	arm_func_end sub_020D14B4

	arm_func_start sub_020D14E8
sub_020D14E8: ; 0x020D14E8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020D15E0 ; =0x04000208
	mov r0, #0
	ldrh r2, [r5]
	ldr r1, _020D15E4 ; =0x021D03AC
	ldr r4, _020D15E8 ; =0x0A005555
	strh r0, [r5]
	str r2, [r1, #0x1c]
	mov r3, #0xaa
	ldr r2, _020D15EC ; =0x0A002AAA
	strb r3, [r4]
	mov r3, #0x55
	strb r3, [r2]
	mov r2, #0x90
	strb r2, [r4]
	ldrh r2, [r5]
	ldr r1, [r1, #0x1c]
	strh r1, [r5]
	bl sub_020D15F4
	ldr r4, _020D15E4 ; =0x021D03AC
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _020D1554
_020D1544:
	bl sub_020D163C
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _020D1544
_020D1554:
	ldr r0, _020D15F0 ; =0x0A000001
	bl sub_020D1698
	mov r4, r0, lsl #0x18
	mov r0, #0xa000000
	bl sub_020D1698
	ldr ip, _020D15E0 ; =0x04000208
	orr r4, r0, r4, lsr #16
	ldrh r2, [ip]
	mov r0, #0
	ldr r1, _020D15E4 ; =0x021D03AC
	strh r0, [ip]
	ldr r5, _020D15E8 ; =0x0A005555
	str r2, [r1, #0x1c]
	mov r3, #0xaa
	ldr r2, _020D15EC ; =0x0A002AAA
	strb r3, [r5]
	mov r3, #0x55
	strb r3, [r2]
	mov r2, #0xf0
	strb r2, [r5]
	strb r2, [r5]
	ldrh r2, [ip]
	ldr r1, [r1, #0x1c]
	strh r1, [ip]
	bl sub_020D15F4
	ldr r5, _020D15E4 ; =0x021D03AC
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _020D15D8
_020D15C8:
	bl sub_020D163C
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _020D15C8
_020D15D8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D15E0: .word 0x04000208
_020D15E4: .word 0x021D03AC
_020D15E8: .word 0x0A005555
_020D15EC: .word 0x0A002AAA
_020D15F0: .word 0x0A000001
	arm_func_end sub_020D14E8

	arm_func_start sub_020D15F4
sub_020D15F4: ; 0x020D15F4
	stmfd sp!, {r3, lr}
	ldr r1, _020D1634 ; =0x02101488
	ldr r2, _020D1638 ; =0x021D03AC
	mov r3, #0
	ldr r1, [r1, #4]
	strh r3, [r2, #2]
	mov r0, r0, lsl #1
	ldrh r1, [r1, r0]
	mov r0, r3
	str r1, [r2, #0x20]
	str r0, [r2, #0x24]
	bl sub_020C3880
	ldr r2, _020D1638 ; =0x021D03AC
	str r0, [r2, #0x28]
	str r1, [r2, #0x2c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D1634: .word 0x02101488
_020D1638: .word 0x021D03AC
	arm_func_end sub_020D15F4

	arm_func_start sub_020D163C
sub_020D163C: ; 0x020D163C
	stmfd sp!, {r3, lr}
	bl sub_020C3880
	ldr r3, _020D1690 ; =0x021D03AC
	ldr r2, _020D1694 ; =0x000082EA
	ldr ip, [r3, #0x28]
	ldr r3, [r3, #0x2c]
	sub ip, r0, ip
	sbc r0, r1, r3
	mov r1, r0, lsl #6
	orr r1, r1, ip, lsr #26
	mov r0, ip, lsl #6
	mov r3, #0
	bl sub_020E1ED4
	ldr r2, _020D1690 ; =0x021D03AC
	ldr r3, [r2, #0x24]
	ldr ip, [r2, #0x20]
	cmp r3, r1
	cmpeq ip, r0
	movls r0, #1
	strlsh r0, [r2, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D1690: .word 0x021D03AC
_020D1694: .word 0x000082EA
	arm_func_end sub_020D163C

	arm_func_start sub_020D1698
sub_020D1698: ; 0x020D1698
	ldrb r0, [r0]
	bx lr
	arm_func_end sub_020D1698

	arm_func_start sub_020D16A0
sub_020D16A0: ; 0x020D16A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	mov r8, r1
	mov r7, r2
	mov r6, #0
	bl sub_020D15F4
	ldr r5, _020D1724 ; =0x021D03AC
_020D16BC:
	mov r0, r8
	bl sub_020D1698
	cmp r0, r7
	beq _020D1710
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _020D16BC
	mov r0, r8
	bl sub_020D1698
	cmp r7, r0
	beq _020D1710
	ldr r0, _020D1728 ; =0x02101488
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0xc2
	ldreq r0, _020D172C ; =0x0A005555
	moveq r1, #0xf0
	streqb r1, [r0]
	orr r0, r4, #0xc000
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
_020D1710:
	bl sub_020D0A04
	cmp r0, #0
	moveq r6, #0x1000
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D1724: .word 0x021D03AC
_020D1728: .word 0x02101488
_020D172C: .word 0x0A005555
	arm_func_end sub_020D16A0

	arm_func_start sub_020D1730
sub_020D1730: ; 0x020D1730
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
	bl sub_020D15F4
	ldr r4, _020D17DC ; =0x021D03AC
_020D174C:
	bl sub_020D163C
	mov r0, r7
	bl sub_020D1698
	cmp r0, r6
	beq _020D17C8
	tst r0, #0x20
	beq _020D1794
	mov r0, r7
	bl sub_020D1698
	cmp r6, r0
	beq _020D17C8
	orr r0, r8, #0xa000
	mov r0, r0, lsl #0x10
	ldr r1, _020D17E0 ; =0x0A005555
	mov r2, #0xf0
	strb r2, [r1]
	mov r5, r0, lsr #0x10
	b _020D17C8
_020D1794:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _020D174C
	mov r0, r7
	bl sub_020D1698
	cmp r6, r0
	beq _020D17C8
	orr r0, r8, #0xc000
	mov r0, r0, lsl #0x10
	ldr r1, _020D17E0 ; =0x0A005555
	mov r2, #0xf0
	strb r2, [r1]
	mov r5, r0, lsr #0x10
_020D17C8:
	bl sub_020D0A04
	cmp r0, #0
	moveq r5, #0x1000
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D17DC: .word 0x021D03AC
_020D17E0: .word 0x0A005555
	arm_func_end sub_020D1730

	arm_func_start sub_020D17E4
sub_020D17E4: ; 0x020D17E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D18CC ; =0x021D03AC
	ldr r1, [r5, #0]
	ldrh r0, [r0]
	str r1, [r4, #0]
	ldrh r5, [sp, #0x20]
	ldr r6, [sp, #0x14]
	ldr r7, [sp, #0x1c]
	ldr r8, [sp, #0x18]
	bl sub_020C18F4
	ldr r3, _020D18D0 ; =0x04000204
	ldr r0, _020D18D4 ; =0x02101488
	ldrh r2, [r3]
	ldrh r1, [r3]
	and r4, r2, #3
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r3]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0x20000
	bne _020D1868
	mov r0, r5, lsl #0xc
	mov r0, r0, lsr #0x10
	bl sub_020D14B4
	and r5, r5, #0xf
_020D1868:
	ldr r0, _020D18D4 ; =0x02101488
	cmp r8, #0
	ldr r0, [r0, #0]
	sub r8, r8, #1
	ldrh r0, [r0, #8]
	mov r0, r5, lsl r0
	add r0, r0, #0xa000000
	add r1, r6, r0
	beq _020D18A0
_020D188C:
	ldrb r0, [r1], #1
	cmp r8, #0
	sub r8, r8, #1
	strb r0, [r7], #1
	bne _020D188C
_020D18A0:
	ldr r2, _020D18D0 ; =0x04000204
	ldr r0, _020D18CC ; =0x021D03AC
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, r4
	strh r1, [r2]
	ldrh r0, [r0]
	bl sub_020C1914
	mov r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D18CC: .word 0x021D03AC
_020D18D0: .word 0x04000204
_020D18D4: .word 0x02101488
	arm_func_end sub_020D17E4

	arm_func_start sub_020D18D8
sub_020D18D8: ; 0x020D18D8
	cmp r2, #0
	sub r2, r2, #1
	beq _020D1904
_020D18E4:
	ldrb ip, [r1], #1
	ldrb r3, [r0], #1
	cmp ip, r3
	subne r0, r1, #1
	bxne lr
	cmp r2, #0
	sub r2, r2, #1
	bne _020D18E4
_020D1904:
	mov r0, #0
	bx lr
	arm_func_end sub_020D18D8

	arm_func_start sub_020D190C
sub_020D190C: ; 0x020D190C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D19DC ; =0x021D03AC
	ldr r1, [r5, #0]
	ldrh r0, [r0]
	str r1, [r4, #0]
	ldrh r5, [sp, #0x20]
	ldr r6, [sp, #0xc]
	ldr r7, [sp, #0x18]
	bl sub_020C18F4
	ldr r3, _020D19E0 ; =0x04000204
	ldr r0, _020D19E4 ; =0x02101488
	ldrh r2, [r3]
	ldrh r1, [r3]
	and r4, r2, #3
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r3]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0x20000
	bne _020D198C
	mov r0, r5, lsl #0xc
	mov r0, r0, lsr #0x10
	bl sub_020D14B4
	and r5, r5, #0xf
_020D198C:
	ldr r1, _020D19E4 ; =0x02101488
	mov r0, r6
	ldr r1, [r1, #0]
	mov r2, r7
	ldrh r1, [r1, #8]
	mov r1, r5, lsl r1
	add r1, r1, #0xa000000
	bl sub_020D18D8
	ldr r3, _020D19E0 ; =0x04000204
	ldr r1, _020D19DC ; =0x021D03AC
	ldrh r2, [r3]
	mov r5, r0
	bic r0, r2, #3
	orr r0, r0, r4
	strh r0, [r3]
	ldrh r0, [r1]
	bl sub_020C1914
	mov r0, r5
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020D19DC: .word 0x021D03AC
_020D19E0: .word 0x04000204
_020D19E4: .word 0x02101488
	arm_func_end sub_020D190C

	arm_func_start sub_020D19E8
sub_020D19E8: ; 0x020D19E8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	mov r4, r0
	ldmia r4!, {r0, r1, r2, r3}
	add ip, sp, #0
	stmia ip!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r0, [r4, #0]
	mov r4, #0
	str r0, [ip]
	ldrh r5, [sp, #0x20]
	ldr r6, [sp, #0xc]
	ldr r7, [sp, #0x18]
_020D1A20:
	mov r0, r5
	mov r1, r6
	bl sub_020D1A94
	cmp r0, #0
	bne _020D1A50
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl sub_020D1AAC
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_020D1A50:
	add r1, r4, #1
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	cmp r4, #3
	blo _020D1A20
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end sub_020D19E8

	arm_func_start sub_020D1A6C
sub_020D1A6C: ; 0x020D1A6C
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0x14]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x18]
	bl sub_020D17E4
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D1A6C

	arm_func_start sub_020D1A94
sub_020D1A94: ; 0x020D1A94
	stmfd sp!, {r3, lr}
	ldr r2, _020D1AA8 ; =0x021D03AC
	ldr r2, [r2, #4]
	blx r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D1AA8: .word 0x021D03AC
	arm_func_end sub_020D1A94

	arm_func_start sub_020D1AAC
sub_020D1AAC: ; 0x020D1AAC
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x18]
	bl sub_020D190C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D1AAC

	arm_func_start sub_020D1AD0
sub_020D1AD0: ; 0x020D1AD0
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	str r2, [sp, #0x18]
	ldr r1, _020D1AFC ; =sub_020D19E8
	add r0, sp, #0
	mov r2, r3
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D1AFC: .word sub_020D19E8
	arm_func_end sub_020D1AD0

	arm_func_start sub_020D1B00
sub_020D1B00: ; 0x020D1B00
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020D1BCC ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r0, _020D1BD0 ; =0x04000204
	ldr r1, _020D1BD4 ; =0x02101488
	ldrh r3, [r0]
	ldr r2, [r1, #0]
	ldrh r1, [r0]
	ldr r4, [r2, #0x10]
	mov r2, #0
	bic r1, r1, #3
	orr r1, r1, r4
	strh r1, [r0]
	ldrh r4, [r0, #4]
	ldr r1, _020D1BD8 ; =0x021D03C8
	ldr lr, _020D1BDC ; =0x0A005555
	strh r2, [r0, #4]
	str r4, [r1, #0]
	mov r5, #0xaa
	ldr r4, _020D1BE0 ; =0x0A002AAA
	strb r5, [lr]
	mov ip, #0x55
	strb ip, [r4]
	mov r2, #0x80
	strb r2, [lr]
	strb r5, [lr]
	strb ip, [r4]
	mov r2, #0x10
	strb r2, [lr]
	ldrh r2, [r0, #4]
	ldr r2, [r1, #0]
	ldr r1, _020D1BE4 ; =0x021D03DC
	strh r2, [r0, #4]
	ldr r4, [r1, #0]
	mov r0, #3
	mov r1, #0xa000000
	mov r2, #0xff
	and r5, r3, #3
	blx r4
	ldr r3, _020D1BD0 ; =0x04000204
	ldr r1, _020D1BCC ; =0x021D03AC
	ldrh r2, [r3]
	mov r4, r0
	bic r0, r2, #3
	orr r0, r0, r5
	strh r0, [r3]
	ldrh r0, [r1]
	bl sub_020C1914
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D1BCC: .word 0x021D03AC
_020D1BD0: .word 0x04000204
_020D1BD4: .word 0x02101488
_020D1BD8: .word 0x021D03C8
_020D1BDC: .word 0x0A005555
_020D1BE0: .word 0x0A002AAA
_020D1BE4: .word 0x021D03DC
	arm_func_end sub_020D1B00

	arm_func_start sub_020D1BE8
sub_020D1BE8: ; 0x020D1BE8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r1, [r5, #0]
	ldr r0, _020D1CF4 ; =0x021D03AC
	str r1, [r4, #0]
	ldrh r1, [sp, #0x20]
	ldrh r0, [r0]
	mov r1, r1, lsl #7
	add r5, r1, #0xa000000
	bl sub_020C18F4
	ldr ip, _020D1CF8 ; =0x04000204
	ldr r1, _020D1CFC ; =0x02101488
	ldrh r0, [ip]
	ldr r1, [r1, #0]
	ldrh r2, [ip]
	ldr r3, [r1, #0x10]
	mov r1, #0
	bic r2, r2, #3
	orr r2, r2, r3
	strh r2, [ip]
	ldrh r3, [ip, #4]
	ldr r4, _020D1D00 ; =0x0A005555
	mov r2, #0xaa
	strh r1, [ip, #4]
	strb r2, [r4]
	ldr r1, _020D1D04 ; =0x0A002AAA
	mov r2, #0x55
	strb r2, [r1]
	mov r1, #0xa0
	strb r1, [r4]
	and r4, r0, #3
	mov r0, #0x80
	mov r2, #0xff
_020D1C84:
	strb r2, [r5], #1
	sub r0, r0, #1
	bne _020D1C84
	ldr lr, _020D1D08 ; =0x04000208
	ldr ip, _020D1D0C ; =0x021D03DC
	ldrh r0, [lr]
	sub r1, r5, #1
	strh r3, [lr]
	ldr r3, [ip]
	mov r0, #1
	blx r3
	mov r5, r0
	beq _020D1CC8
	and r0, r5, #0xff00
	orr r0, r0, #2
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_020D1CC8:
	ldr r2, _020D1CF8 ; =0x04000204
	ldr r0, _020D1CF4 ; =0x021D03AC
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, r4
	strh r1, [r2]
	ldrh r0, [r0]
	bl sub_020C1914
	mov r0, r5
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020D1CF4: .word 0x021D03AC
_020D1CF8: .word 0x04000204
_020D1CFC: .word 0x02101488
_020D1D00: .word 0x0A005555
_020D1D04: .word 0x0A002AAA
_020D1D08: .word 0x04000208
_020D1D0C: .word 0x021D03DC
	arm_func_end sub_020D1BE8

	arm_func_start sub_020D1D10
sub_020D1D10: ; 0x020D1D10
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldrh r0, [sp, #0x20]
	cmp r0, #0x10
	addhs sp, sp, #0x24
	ldrhs r0, _020D1DB4 ; =0x000080FF
	ldmhsia sp!, {r4, r5, r6, r7, pc}
	mov r0, r0, lsl #0x15
	mov r6, r0, lsr #0x10
	mov r5, #0
	mov r4, #2
_020D1D5C:
	mov r7, r4
_020D1D60:
	mov r0, r6
	bl sub_020D2078
	cmp r0, #0
	beq _020D1D80
	sub r1, r7, #1
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	bne _020D1D60
_020D1D80:
	add r1, r6, #1
	mov r1, r1, lsl #0x10
	cmp r0, #0
	mov r6, r1, lsr #0x10
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	add r1, r5, #1
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	cmp r5, #0x20
	blo _020D1D5C
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020D1DB4: .word 0x000080FF
	arm_func_end sub_020D1D10

	arm_func_start sub_020D1DB8
sub_020D1DB8: ; 0x020D1DB8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D1EB8 ; =0x021D03AC
	ldr r1, [r5, #0]
	ldrh r0, [r0]
	str r1, [r4, #0]
	ldr r5, [sp, #0xc]
	bl sub_020C18F4
	ldr r1, _020D1EBC ; =0x04000204
	ldr r2, _020D1EC0 ; =0x02101488
	ldrh r0, [r1]
	ldr r3, [r2, #0]
	ldrh r2, [r1]
	ldr r4, [r3, #0x10]
	mov r3, #0
	bic r2, r2, #3
	orr r2, r2, r4
	strh r2, [r1]
	ldrh ip, [sp, #0x20]
	ldrh r2, [r1, #4]
	ldr r4, _020D1EC4 ; =0x0A005555
	mov ip, ip, lsl #7
	strh r3, [r1, #4]
	mov r3, #0xaa
	strb r3, [r4]
	ldr r1, _020D1EC8 ; =0x0A002AAA
	mov r3, #0x55
	strb r3, [r1]
	mov r1, #0xa0
	strb r1, [r4]
	and r4, r0, #3
	add lr, ip, #0xa000000
	mov r1, #0x80
_020D1E54:
	ldrb r0, [r5], #1
	sub r1, r1, #1
	strb r0, [lr], #1
	bne _020D1E54
	ldr ip, _020D1ECC ; =0x04000208
	ldr r3, _020D1ED0 ; =0x021D03DC
	ldrh r0, [ip]
	sub r1, lr, #1
	mov r0, #1
	strh r2, [ip]
	ldrb r2, [r5, #-1]
	ldr r3, [r3, #0]
	blx r3
	ldr r3, _020D1EBC ; =0x04000204
	ldr r1, _020D1EB8 ; =0x021D03AC
	ldrh r2, [r3]
	mov r5, r0
	bic r0, r2, #3
	orr r0, r0, r4
	strh r0, [r3]
	ldrh r0, [r1]
	bl sub_020C1914
	mov r0, r5
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020D1EB8: .word 0x021D03AC
_020D1EBC: .word 0x04000204
_020D1EC0: .word 0x02101488
_020D1EC4: .word 0x0A005555
_020D1EC8: .word 0x0A002AAA
_020D1ECC: .word 0x04000208
_020D1ED0: .word 0x021D03DC
	arm_func_end sub_020D1DB8

	arm_func_start sub_020D1ED4
sub_020D1ED4: ; 0x020D1ED4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldrh r0, [sp, #0x20]
	ldr r6, [sp, #0xc]
	cmp r0, #0x10
	addhs sp, sp, #0x24
	ldrhs r0, _020D1F90 ; =0x000080FF
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r7, _020D1F94 ; =0x021D03A8
	mov r0, r0, lsl #0x15
	mov r1, #0x1000
	strh r1, [r7]
	mov r5, r0, lsr #0x10
	mov r4, #2
_020D1F2C:
	mov r8, r4
_020D1F30:
	mov r0, r5
	mov r1, r6
	bl sub_020D209C
	cmp r0, #0
	beq _020D1F54
	sub r1, r8, #1
	mov r1, r1, lsl #0x10
	mov r8, r1, lsr #0x10
	bne _020D1F30
_020D1F54:
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r2, [r7]
	add r1, r5, #1
	mov r1, r1, lsl #0x10
	sub r2, r2, #0x80
	strh r2, [r7]
	ldrh r2, [r7]
	add r6, r6, #0x80
	mov r5, r1, lsr #0x10
	cmp r2, #0
	bne _020D1F2C
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D1F90: .word 0x000080FF
_020D1F94: .word 0x021D03A8
	arm_func_end sub_020D1ED4

	arm_func_start sub_020D1F98
sub_020D1F98: ; 0x020D1F98
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	add r0, sp, #0
	bl sub_020D1B00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D1F98

	arm_func_start sub_020D1FB8
sub_020D1FB8: ; 0x020D1FB8
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	bl sub_020D1D10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D1FB8

	arm_func_start sub_020D1FDC
sub_020D1FDC: ; 0x020D1FDC
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	bl sub_020D1ED4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D1FDC

	arm_func_start sub_020D2004
sub_020D2004: ; 0x020D2004
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	ldr r1, _020D2024 ; =sub_020D1B00
	mov r2, r0
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2024: .word sub_020D1B00
	arm_func_end sub_020D2004

	arm_func_start sub_020D2028
sub_020D2028: ; 0x020D2028
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	mov r2, r1
	strh r0, [sp, #0x20]
	ldr r1, _020D204C ; =sub_020D1D10
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D204C: .word sub_020D1D10
	arm_func_end sub_020D2028

	arm_func_start sub_020D2050
sub_020D2050: ; 0x020D2050
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	ldr r1, _020D2074 ; =sub_020D1ED4
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2074: .word sub_020D1ED4
	arm_func_end sub_020D2050

	arm_func_start sub_020D2078
sub_020D2078: ; 0x020D2078
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	bl sub_020D1BE8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2078

	arm_func_start sub_020D209C
sub_020D209C: ; 0x020D209C
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	bl sub_020D1DB8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D209C

	arm_func_start sub_020D20C4
sub_020D20C4: ; 0x020D20C4
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	mov r2, r1
	strh r0, [sp, #0x20]
	ldr r1, _020D20E8 ; =sub_020D1BE8
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D20E8: .word sub_020D1BE8
	arm_func_end sub_020D20C4

	arm_func_start sub_020D20EC
sub_020D20EC: ; 0x020D20EC
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	ldr r1, _020D2110 ; =sub_020D1DB8
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2110: .word sub_020D1DB8
	arm_func_end sub_020D20EC

	arm_func_start sub_020D2114
sub_020D2114: ; 0x020D2114
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020D21E0 ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r0, _020D21E4 ; =0x04000204
	ldr r1, _020D21E8 ; =0x02101488
	ldrh r3, [r0]
	ldr r2, [r1, #0]
	ldrh r1, [r0]
	ldr r4, [r2, #0x10]
	mov r2, #0
	bic r1, r1, #3
	orr r1, r1, r4
	strh r1, [r0]
	ldrh r4, [r0, #4]
	ldr r1, _020D21EC ; =0x021D03C8
	ldr lr, _020D21F0 ; =0x0A005555
	strh r2, [r0, #4]
	str r4, [r1, #0]
	mov r5, #0xaa
	ldr r4, _020D21F4 ; =0x0A002AAA
	strb r5, [lr]
	mov ip, #0x55
	strb ip, [r4]
	mov r2, #0x80
	strb r2, [lr]
	strb r5, [lr]
	strb ip, [r4]
	mov r2, #0x10
	strb r2, [lr]
	ldrh r2, [r0, #4]
	ldr r2, [r1, #0]
	ldr r1, _020D21F8 ; =0x021D03DC
	strh r2, [r0, #4]
	ldr r4, [r1, #0]
	mov r0, #3
	mov r1, #0xa000000
	mov r2, #0xff
	and r5, r3, #3
	blx r4
	ldr r3, _020D21E4 ; =0x04000204
	ldr r1, _020D21E0 ; =0x021D03AC
	ldrh r2, [r3]
	mov r4, r0
	bic r0, r2, #3
	orr r0, r0, r5
	strh r0, [r3]
	ldrh r0, [r1]
	bl sub_020C1914
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D21E0: .word 0x021D03AC
_020D21E4: .word 0x04000204
_020D21E8: .word 0x02101488
_020D21EC: .word 0x021D03C8
_020D21F0: .word 0x0A005555
_020D21F4: .word 0x0A002AAA
_020D21F8: .word 0x021D03DC
	arm_func_end sub_020D2114

	arm_func_start sub_020D21FC
sub_020D21FC: ; 0x020D21FC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldrh r4, [sp, #0x20]
	cmp r4, #0x10
	addhs sp, sp, #0x24
	ldrhs r0, _020D2310 ; =0x000080FF
	ldmhsia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020D2314 ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r0, _020D2318 ; =0x04000204
	ldr r1, _020D231C ; =0x02101488
	ldrh r3, [r0]
	ldr r5, [r1, #0]
	ldrh r2, [r0]
	ldr r6, [r5, #0x10]
	mov r5, #0
	bic r2, r2, #3
	orr r2, r2, r6
	strh r2, [r0]
	ldr r2, [r1, #0]
	ldrh r1, [r0, #4]
	ldrh ip, [r2, #8]
	ldr r2, _020D2320 ; =0x021D03C8
	ldr lr, _020D2324 ; =0x0A005555
	strh r5, [r0, #4]
	mov r6, r4, lsl ip
	str r1, [r2, #0]
	mov r5, #0xaa
	ldr r4, _020D2328 ; =0x0A002AAA
	strb r5, [lr]
	mov ip, #0x55
	strb ip, [r4]
	mov r1, #0x80
	strb r1, [lr]
	strb r5, [lr]
	strb ip, [r4]
	add r1, r6, #0xa000000
	mov r4, #0x30
	strb r4, [r1]
	ldrh r4, [r0, #4]
	ldr r4, [r2, #0]
	ldr r2, _020D232C ; =0x021D03DC
	strh r4, [r0, #4]
	ldr r4, [r2, #0]
	mov r0, #2
	mov r2, #0xff
	and r5, r3, #3
	blx r4
	ldr r3, _020D2318 ; =0x04000204
	ldr r1, _020D2314 ; =0x021D03AC
	ldrh r2, [r3]
	mov r4, r0
	bic r0, r2, #3
	orr r0, r0, r5
	strh r0, [r3]
	ldrh r0, [r1]
	bl sub_020C1914
	mov r0, r4
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020D2310: .word 0x000080FF
_020D2314: .word 0x021D03AC
_020D2318: .word 0x04000204
_020D231C: .word 0x02101488
_020D2320: .word 0x021D03C8
_020D2324: .word 0x0A005555
_020D2328: .word 0x0A002AAA
_020D232C: .word 0x021D03DC
	arm_func_end sub_020D21FC

	arm_func_start sub_020D2330
sub_020D2330: ; 0x020D2330
	stmfd sp!, {r3, lr}
	ldr ip, _020D2378 ; =0x0A005555
	mov r3, #0xaa
	ldr r2, _020D237C ; =0x0A002AAA
	strb r3, [ip]
	mov r3, #0x55
	mov lr, r0
	strb r3, [r2]
	mov r0, #0xa0
	strb r0, [ip]
	ldrb r2, [lr]
	ldr r3, _020D2380 ; =0x021D03DC
	mov r0, #1
	strb r2, [r1]
	ldrb r2, [lr]
	ldr r3, [r3, #0]
	blx r3
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D2378: .word 0x0A005555
_020D237C: .word 0x0A002AAA
_020D2380: .word 0x021D03DC
	arm_func_end sub_020D2330

	arm_func_start sub_020D2384
sub_020D2384: ; 0x020D2384
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldrh r8, [sp, #0x20]
	ldr r5, [sp, #0xc]
	cmp r8, #0x10
	addhs sp, sp, #0x24
	ldrhs r0, _020D2534 ; =0x000080FF
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _020D2538 ; =0x02101488
	ldr r6, _020D253C ; =sub_020D2554
	ldr r0, [r0, #0]
	mov sb, #0
	ldrh r0, [r0, #8]
	mov r0, r8, lsl r0
	add r7, r0, #0xa000000
_020D23E0:
	mov r0, r8
	bl sub_020D2634
	mov r4, r0
	bne _020D2408
	mov r0, r7
	mov r1, r6
	bl sub_020D2588
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	beq _020D2428
_020D2408:
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	cmp sb, #0x50
	mov sb, r0, lsr #0x10
	bne _020D23E0
	add sp, sp, #0x24
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_020D2428:
	mov r6, #1
	cmp sb, #0
	movne r6, #6
	cmp r6, #1
	mov sb, #1
	blo _020D245C
_020D2440:
	mov r0, r8
	bl sub_020D2634
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	cmp r6, r0, lsr #16
	mov sb, r0, lsr #0x10
	bhs _020D2440
_020D245C:
	ldr r0, _020D2540 ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r1, _020D2544 ; =0x04000204
	ldr r2, _020D2538 ; =0x02101488
	ldrh r0, [r1]
	ldr r6, [r2, #0]
	ldrh r3, [r1]
	ldr r8, [r6, #0x10]
	ldr r6, _020D2548 ; =0x021D03A8
	bic r3, r3, #3
	orr r3, r3, r8
	strh r3, [r1]
	ldr r2, [r2, #0]
	mov r3, #0
	ldr r8, [r2, #4]
	ldr r2, _020D254C ; =0x021D03C8
	strh r8, [r6]
	ldrh sb, [r1, #4]
	and r8, r0, #3
	strh r3, [r1, #4]
	ldrh r0, [r6]
	str sb, [r2]
	cmp r0, #0
	beq _020D24F4
_020D24C0:
	mov r0, r5
	mov r1, r7
	bl sub_020D2330
	mov r4, r0
	bne _020D24F4
	ldrh r0, [r6]
	add r5, r5, #1
	add r7, r7, #1
	sub r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r6]
	cmp r0, #0
	bne _020D24C0
_020D24F4:
	ldr r3, _020D2550 ; =0x04000208
	ldr r0, _020D254C ; =0x021D03C8
	ldrh r1, [r3]
	ldr r0, [r0, #0]
	sub r2, r3, #4
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r0, _020D2540 ; =0x021D03AC
	bic r1, r1, #3
	orr r1, r1, r8
	strh r1, [r2]
	ldrh r0, [r0]
	bl sub_020C1914
	mov r0, r4
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020D2534: .word 0x000080FF
_020D2538: .word 0x02101488
_020D253C: .word sub_020D2554
_020D2540: .word 0x021D03AC
_020D2544: .word 0x04000204
_020D2548: .word 0x021D03A8
_020D254C: .word 0x021D03C8
_020D2550: .word 0x04000208
	arm_func_end sub_020D2384

	arm_func_start sub_020D2554
sub_020D2554: ; 0x020D2554
	ldr r1, _020D2584 ; =0x02101488
	ldr r1, [r1, #0]
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _020D257C
_020D2568:
	ldrb r1, [r0], #1
	cmp r1, #0xff
	bne _020D257C
	sub r2, r2, #1
	bne _020D2568
_020D257C:
	mov r0, r2
	bx lr
	; .align 2, 0
_020D2584: .word 0x02101488
	arm_func_end sub_020D2554

	arm_func_start sub_020D2588
sub_020D2588: ; 0x020D2588
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020D2604 ; =0x021D03AC
	mov r5, r0
	ldrh r0, [r2]
	mov r4, r1
	bl sub_020C18F4
	ldr ip, _020D2608 ; =0x04000204
	ldr r0, _020D260C ; =0x02101488
	ldrh r3, [ip]
	ldr r0, [r0, #0]
	ldrh r1, [ip]
	ldr r2, [r0, #0x10]
	mov r0, r5
	bic r1, r1, #3
	orr r1, r1, r2
	strh r1, [ip]
	and r6, r3, #3
	mov r5, #0
	blx r4
	cmp r0, #0
	ldr r2, _020D2608 ; =0x04000204
	ldr r0, _020D2604 ; =0x021D03AC
	ldrh r1, [r2]
	ldrne r5, _020D2610 ; =0x00008004
	bic r1, r1, #3
	orr r1, r1, r6
	strh r1, [r2]
	ldrh r0, [r0]
	bl sub_020C1914
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020D2604: .word 0x021D03AC
_020D2608: .word 0x04000204
_020D260C: .word 0x02101488
_020D2610: .word 0x00008004
	arm_func_end sub_020D2588

	arm_func_start sub_020D2614
sub_020D2614: ; 0x020D2614
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	add r0, sp, #0
	bl sub_020D2114
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2614

	arm_func_start sub_020D2634
sub_020D2634: ; 0x020D2634
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	bl sub_020D21FC
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2634

	arm_func_start sub_020D2658
sub_020D2658: ; 0x020D2658
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	bl sub_020D2384
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2658

	arm_func_start sub_020D2680
sub_020D2680: ; 0x020D2680
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	ldr r1, _020D26A0 ; =sub_020D2114
	mov r2, r0
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D26A0: .word sub_020D2114
	arm_func_end sub_020D2680

	arm_func_start sub_020D26A4
sub_020D26A4: ; 0x020D26A4
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	mov r2, r1
	strh r0, [sp, #0x20]
	ldr r1, _020D26C8 ; =sub_020D21FC
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D26C8: .word sub_020D21FC
	arm_func_end sub_020D26A4

	arm_func_start sub_020D26CC
sub_020D26CC: ; 0x020D26CC
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	ldr r1, _020D26F0 ; =sub_020D2384
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D26F0: .word sub_020D2384
	arm_func_end sub_020D26CC

	arm_func_start sub_020D26F4
sub_020D26F4: ; 0x020D26F4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020D27C0 ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r0, _020D27C4 ; =0x04000204
	ldr r1, _020D27C8 ; =0x02101488
	ldrh r3, [r0]
	ldr r2, [r1, #0]
	ldrh r1, [r0]
	ldr r4, [r2, #0x10]
	mov r2, #0
	bic r1, r1, #3
	orr r1, r1, r4
	strh r1, [r0]
	ldrh r4, [r0, #4]
	ldr r1, _020D27CC ; =0x021D03C8
	ldr lr, _020D27D0 ; =0x0A005555
	strh r2, [r0, #4]
	str r4, [r1, #0]
	mov r5, #0xaa
	ldr r4, _020D27D4 ; =0x0A002AAA
	strb r5, [lr]
	mov ip, #0x55
	strb ip, [r4]
	mov r2, #0x80
	strb r2, [lr]
	strb r5, [lr]
	strb ip, [r4]
	mov r2, #0x10
	strb r2, [lr]
	ldrh r2, [r0, #4]
	ldr r2, [r1, #0]
	ldr r1, _020D27D8 ; =0x021D03DC
	strh r2, [r0, #4]
	ldr r4, [r1, #0]
	mov r0, #3
	mov r1, #0xa000000
	mov r2, #0xff
	and r5, r3, #3
	blx r4
	ldr r3, _020D27C4 ; =0x04000204
	ldr r1, _020D27C0 ; =0x021D03AC
	ldrh r2, [r3]
	mov r4, r0
	bic r0, r2, #3
	orr r0, r0, r5
	strh r0, [r3]
	ldrh r0, [r1]
	bl sub_020C1914
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D27C0: .word 0x021D03AC
_020D27C4: .word 0x04000204
_020D27C8: .word 0x02101488
_020D27CC: .word 0x021D03C8
_020D27D0: .word 0x0A005555
_020D27D4: .word 0x0A002AAA
_020D27D8: .word 0x021D03DC
	arm_func_end sub_020D26F4

	arm_func_start sub_020D27DC
sub_020D27DC: ; 0x020D27DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D2944 ; =0x02101488
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	str r1, [r4, #0]
	ldrh r4, [sp, #0x24]
	ldrh r0, [r0, #0xa]
	cmp r4, r0
	addhs sp, sp, #0x28
	ldrhs r0, _020D2948 ; =0x000080FF
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _020D294C ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r5, _020D2950 ; =0x04000204
	ldr r0, _020D2944 ; =0x02101488
	ldrh r3, [r5]
	ldr r2, [r0, #0]
	ldrh r1, [r5]
	mov r0, r4, lsl #0xc
	ldr r2, [r2, #0x10]
	bic r1, r1, #3
	orr r1, r1, r2
	strh r1, [r5]
	and r1, r3, #3
	mov r0, r0, lsr #0x10
	str r1, [sp]
	bl sub_020D14B4
	and sl, r4, #0xf
	mov r8, #0
	add r7, r5, #4
	ldr r5, _020D2954 ; =0x0A005555
	ldr r4, _020D2958 ; =0x021D03C8
	mov fp, r8
	mov r6, #0xaa
_020D2884:
	ldr r0, _020D2944 ; =0x02101488
	ldrh r3, [r7]
	ldr r0, [r0, #0]
	mov sb, #0x55
	ldrh r1, [r0, #8]
	mov r0, #2
	mov r2, #0xff
	strh fp, [r7]
	str r3, [r4, #0]
	ldr r3, _020D295C ; =0x0A002AAA
	strb r6, [r5]
	strb sb, [r3]
	mov r3, #0x80
	strb r3, [r5]
	mov r1, sl, lsl r1
	ldr r3, _020D295C ; =0x0A002AAA
	strb r6, [r5]
	strb sb, [r3]
	add r1, r1, #0xa000000
	mov r3, #0x30
	strb r3, [r1]
	ldrh r3, [r7]
	ldr r3, [r4, #0]
	strh r3, [r7]
	ldr r3, _020D2960 ; =0x021D03DC
	ldr r3, [r3, #0]
	blx r3
	mov sb, r0
	tst sb, #0xa000
	beq _020D2914
	cmp r8, #0
	bne _020D2914
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	b _020D2884
_020D2914:
	ldr r2, _020D2950 ; =0x04000204
	ldr r1, _020D294C ; =0x021D03AC
	ldrh r0, [r2]
	bic r3, r0, #3
	ldr r0, [sp]
	orr r0, r3, r0
	strh r0, [r2]
	ldrh r0, [r1]
	bl sub_020C1914
	mov r0, sb
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020D2944: .word 0x02101488
_020D2948: .word 0x000080FF
_020D294C: .word 0x021D03AC
_020D2950: .word 0x04000204
_020D2954: .word 0x0A005555
_020D2958: .word 0x021D03C8
_020D295C: .word 0x0A002AAA
_020D2960: .word 0x021D03DC
	arm_func_end sub_020D27DC

	arm_func_start sub_020D2964
sub_020D2964: ; 0x020D2964
	stmfd sp!, {r3, lr}
	ldr ip, _020D29AC ; =0x0A005555
	mov r3, #0xaa
	ldr r2, _020D29B0 ; =0x0A002AAA
	strb r3, [ip]
	mov r3, #0x55
	mov lr, r0
	strb r3, [r2]
	mov r0, #0xa0
	strb r0, [ip]
	ldrb r2, [lr]
	ldr r3, _020D29B4 ; =0x021D03DC
	mov r0, #1
	strb r2, [r1]
	ldrb r2, [lr]
	ldr r3, [r3, #0]
	blx r3
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D29AC: .word 0x0A005555
_020D29B0: .word 0x0A002AAA
_020D29B4: .word 0x021D03DC
	arm_func_end sub_020D2964

	arm_func_start sub_020D29B8
sub_020D29B8: ; 0x020D29B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D2B14 ; =0x02101488
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	str r1, [r4, #0]
	ldrh r4, [sp, #0x20]
	ldrh r0, [r0, #0xa]
	ldr r7, [sp, #0xc]
	cmp r4, r0
	addhs sp, sp, #0x24
	ldrhs r0, _020D2B18 ; =0x000080FF
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_020D2B50
	mov r6, r0
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _020D2B1C ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r5, _020D2B20 ; =0x04000204
	ldr r0, _020D2B14 ; =0x02101488
	ldrh r3, [r5]
	ldr r2, [r0, #0]
	ldrh r1, [r5]
	mov r0, r4, lsl #0xc
	ldr r2, [r2, #0x10]
	bic r1, r1, #3
	orr r1, r1, r2
	strh r1, [r5]
	mov r0, r0, lsr #0x10
	and r5, r3, #3
	bl sub_020D14B4
	ldr r0, _020D2B14 ; =0x02101488
	ldr r8, _020D2B24 ; =0x021D03A8
	ldr r2, [r0, #0]
	ldr r1, _020D2B28 ; =0x04000208
	ldr r0, [r2, #4]
	and r4, r4, #0xf
	strh r0, [r8]
	ldrh r3, [r2, #8]
	ldrh r2, [r1]
	mov r0, #0
	mov r3, r4, lsl r3
	strh r0, [r1]
	ldrh r1, [r8]
	ldr r0, _020D2B2C ; =0x021D03C8
	add r4, r3, #0xa000000
	str r2, [r0, #0]
	cmp r1, #0
	beq _020D2AD4
_020D2AA0:
	mov r0, r7
	mov r1, r4
	bl sub_020D2964
	mov r6, r0
	bne _020D2AD4
	ldrh r0, [r8]
	add r7, r7, #1
	add r4, r4, #1
	sub r0, r0, #1
	strh r0, [r8]
	ldrh r0, [r8]
	cmp r0, #0
	bne _020D2AA0
_020D2AD4:
	ldr r3, _020D2B28 ; =0x04000208
	ldr r0, _020D2B2C ; =0x021D03C8
	ldrh r1, [r3]
	ldr r0, [r0, #0]
	sub r2, r3, #4
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r0, _020D2B1C ; =0x021D03AC
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r2]
	ldrh r0, [r0]
	bl sub_020C1914
	mov r0, r6
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D2B14: .word 0x02101488
_020D2B18: .word 0x000080FF
_020D2B1C: .word 0x021D03AC
_020D2B20: .word 0x04000204
_020D2B24: .word 0x021D03A8
_020D2B28: .word 0x04000208
_020D2B2C: .word 0x021D03C8
	arm_func_end sub_020D29B8

	arm_func_start sub_020D2B30
sub_020D2B30: ; 0x020D2B30
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	add r0, sp, #0
	bl sub_020D26F4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2B30

	arm_func_start sub_020D2B50
sub_020D2B50: ; 0x020D2B50
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	bl sub_020D27DC
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2B50

	arm_func_start sub_020D2B74
sub_020D2B74: ; 0x020D2B74
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	bl sub_020D29B8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2B74

	arm_func_start sub_020D2B9C
sub_020D2B9C: ; 0x020D2B9C
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	ldr r1, _020D2BBC ; =sub_020D26F4
	mov r2, r0
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2BBC: .word sub_020D26F4
	arm_func_end sub_020D2B9C

	arm_func_start sub_020D2BC0
sub_020D2BC0: ; 0x020D2BC0
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	mov r2, r1
	strh r0, [sp, #0x20]
	ldr r1, _020D2BE4 ; =sub_020D27DC
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2BE4: .word sub_020D27DC
	arm_func_end sub_020D2BC0

	arm_func_start sub_020D2BE8
sub_020D2BE8: ; 0x020D2BE8
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	ldr r1, _020D2C0C ; =sub_020D29B8
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2C0C: .word sub_020D29B8
	arm_func_end sub_020D2BE8

	arm_func_start sub_020D2C10
sub_020D2C10: ; 0x020D2C10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D2D2C ; =0x02101488
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	str r1, [r4, #0]
	ldrh r4, [sp, #0x20]
	ldrh r0, [r0, #0xa]
	ldr r7, [sp, #0xc]
	cmp r4, r0
	addhs sp, sp, #0x24
	ldrhs r0, _020D2D30 ; =0x000080FF
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_020D2634
	mov r6, r0
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _020D2D34 ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r5, _020D2D38 ; =0x04000204
	ldr r0, _020D2D2C ; =0x02101488
	ldrh r3, [r5]
	ldr r2, [r0, #0]
	ldrh r1, [r5]
	ldr r2, [r2, #0x10]
	ldr r8, _020D2D3C ; =0x021D03A8
	bic r1, r1, #3
	orr r1, r1, r2
	strh r1, [r5]
	ldr r1, [r0, #0]
	and r5, r3, #3
	ldr r0, [r1, #4]
	strh r0, [r8]
	ldrh r1, [r1, #8]
	ldrh r0, [r8]
	mov r1, r4, lsl r1
	cmp r0, #0
	add r4, r1, #0xa000000
	beq _020D2D00
_020D2CCC:
	mov r0, r7
	mov r1, r4
	bl sub_020D2330
	mov r6, r0
	bne _020D2D00
	ldrh r0, [r8]
	add r7, r7, #1
	add r4, r4, #1
	sub r0, r0, #1
	strh r0, [r8]
	ldrh r0, [r8]
	cmp r0, #0
	bne _020D2CCC
_020D2D00:
	ldr r2, _020D2D38 ; =0x04000204
	ldr r0, _020D2D34 ; =0x021D03AC
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r2]
	ldrh r0, [r0]
	bl sub_020C1914
	mov r0, r6
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D2D2C: .word 0x02101488
_020D2D30: .word 0x000080FF
_020D2D34: .word 0x021D03AC
_020D2D38: .word 0x04000204
_020D2D3C: .word 0x021D03A8
	arm_func_end sub_020D2C10

	arm_func_start sub_020D2D40
sub_020D2D40: ; 0x020D2D40
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	bl sub_020D2C10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2D40

	arm_func_start sub_020D2D68
sub_020D2D68: ; 0x020D2D68
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	ldr r1, _020D2D8C ; =sub_020D2C10
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2D8C: .word sub_020D2C10
	arm_func_end sub_020D2D68

	arm_func_start sub_020D2D90
sub_020D2D90: ; 0x020D2D90
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	bl sub_020C3D98
	ldr r1, _020D2E0C ; =0x021D03E8
	mov r4, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _020D2DFC
	add r0, r5, #0xc4
	str r5, [r1, #0]
	bl sub_020D2E38
	ldr r0, _020D2E10 ; =0x021D03EC
	bl sub_020D2E38
	mov r0, #0
	str r0, [r5, #0xc0]
	mov r2, #0x400
	ldr r1, _020D2E14 ; =sub_020D2E4C
	ldr r3, _020D2E18 ; =0x021D0810
	mov r0, r5
	str r2, [sp]
	mov r2, #0x14
	str r2, [sp, #4]
	mov r2, r5
	bl sub_020C1F34
	mov r0, r5
	bl sub_020C22D0
_020D2DFC:
	mov r0, r4
	bl sub_020C3DAC
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D2E0C: .word 0x021D03E8
_020D2E10: .word 0x021D03EC
_020D2E14: .word sub_020D2E4C
_020D2E18: .word 0x021D0810
	arm_func_end sub_020D2D90

	arm_func_start sub_020D2E1C
sub_020D2E1C: ; 0x020D2E1C
	ldr r0, _020D2E34 ; =0x021D03E8
	ldr r0, [r0, #0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_020D2E34: .word 0x021D03E8
	arm_func_end sub_020D2E1C

	arm_func_start sub_020D2E38
sub_020D2E38: ; 0x020D2E38
	ldr ip, _020D2E48 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x24
	bx ip
	; .align 2, 0
_020D2E48: .word sub_020C4CF4
	arm_func_end sub_020D2E38

	arm_func_start sub_020D2E4C
sub_020D2E4C: ; 0x020D2E4C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov r4, #0
	mov r8, r0
	add r6, sp, #0
	mov sl, r4
	mov sb, r4
	mov r5, r4
	mov fp, #0x24
_020D2E70:
	mov r0, r6
	mov r1, r5
	mov r2, fp
	bl sub_020C4CF4
	bl sub_020C3D98
	ldr r1, [r8, #0xc0]
	mov r7, r0
	cmp r1, #0
	bne _020D2EA8
_020D2E94:
	mov r0, r4
	bl sub_020C2218
	ldr r0, [r8, #0xc0]
	cmp r0, #0
	beq _020D2E94
_020D2EA8:
	ldr lr, [r8, #0xc0]
	add ip, sp, #0
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r1, [lr]
	mov r0, r7
	str r1, [ip]
	bl sub_020C3DAC
	ldr r1, [sp]
	cmp r1, #0
	beq _020D2EE8
	mov r0, r6
	blx r1
	str r0, [sp, #8]
_020D2EE8:
	bl sub_020C3D98
	ldr r2, [sp, #4]
	ldr r1, _020D2F38 ; =0x021D03E8
	mov r7, r0
	strb sl, [r1, #0x26]
	cmp r2, #0
	beq _020D2F0C
	mov r0, r6
	blx r2
_020D2F0C:
	ldr r0, _020D2F38 ; =0x021D03E8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020D2F2C
	mov r0, r7
	str sb, [r8, #0xc0]
	bl sub_020C3DAC
	b _020D2E70
_020D2F2C:
	bl sub_020C2030
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020D2F38: .word 0x021D03E8
	arm_func_end sub_020D2E4C

	arm_func_start sub_020D2F3C
sub_020D2F3C: ; 0x020D2F3C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020D2FDC ; =0x021D03E8
	mov r7, r0
	mov r5, r1
	mov r6, r2
	ldr r4, [r3, #0]
	bl sub_020D2E1C
	cmp r0, #0
	bne _020D2F64
	bl sub_020C42A8
_020D2F64:
	ldr r0, _020D2FDC ; =0x021D03E8
	ldrb r0, [r0, #0x26]
	cmp r0, #0
	beq _020D2F78
	bl sub_020C42A8
_020D2F78:
	bl sub_020C3D98
	mov r1, #1
	strb r1, [r7, #0x22]
	str r5, [r7, #0]
	add r1, r4, #0xc4
	cmp r7, r1
	mov r5, r0
	ldreq r0, _020D2FDC ; =0x021D03E8
	str r6, [r7, #4]
	moveq r1, #0
	streq r1, [r0]
	ldr ip, _020D2FE0 ; =0x021D03EC
	ldmia r7!, {r0, r1, r2, r3}
	mov r6, ip
	stmia ip!, {r0, r1, r2, r3}
	ldmia r7!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r1, [r7, #0]
	mov r0, r4
	str r1, [ip]
	str r6, [r4, #0xc0]
	bl sub_020C22D0
	mov r0, r5
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D2FDC: .word 0x021D03E8
_020D2FE0: .word 0x021D03EC
	arm_func_end sub_020D2F3C

	arm_func_start sub_020D2FE4
sub_020D2FE4: ; 0x020D2FE4
	ldr r1, _020D301C ; =0x55555555
	ldr r2, _020D3020 ; =0x33333333
	and r1, r1, r0, lsr #1
	sub r0, r0, r1
	and r1, r0, r2
	and r0, r2, r0, lsr #2
	add r1, r1, r0
	ldr r0, _020D3024 ; =0x0F0F0F0F
	add r1, r1, r1, lsr #4
	and r0, r1, r0
	add r0, r0, r0, lsr #8
	add r0, r0, r0, lsr #16
	and r0, r0, #0xff
	bx lr
	; .align 2, 0
_020D301C: .word 0x55555555
_020D3020: .word 0x33333333
_020D3024: .word 0x0F0F0F0F
	arm_func_end sub_020D2FE4

	arm_func_start sub_020D3028
sub_020D3028: ; 0x020D3028
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x58
	mov r6, r0
	add r0, sp, #0
	mov r5, r1
	mov r4, r2
	bl sub_020C8C08
	add r0, sp, #0
	mov r1, r5
	mov r2, r4
	bl sub_020C8C48
	add r1, sp, #0
	mov r0, r6
	bl sub_020C8D10
	add sp, sp, #0x58
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020D3028

	arm_func_start sub_020D3068
sub_020D3068: ; 0x020D3068
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	mov r6, r0
	add r0, sp, #0
	mov r5, r1
	mov r4, r2
	bl sub_020C917C
	add r0, sp, #0
	mov r1, r5
	mov r2, r4
	bl sub_020C91CC
	add r0, sp, #0
	mov r1, r6
	bl sub_020C9320
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020D3068

	arm_func_start sub_020D30A8
sub_020D30A8: ; 0x020D30A8
	stmfd sp!, {r3, lr}
	mov ip, #0
	mov r2, ip
_020D30B4:
	mov r3, ip
	mov lr, r2
_020D30BC:
	tst r3, #0x80
	eorne r3, r1, r3, lsl #1
	add lr, lr, #1
	moveq r3, r3, lsl #1
	cmp lr, #8
	blo _020D30BC
	strb r3, [r0, ip]
	add ip, ip, #1
	cmp ip, #0x100
	blo _020D30B4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D30A8

	arm_func_start sub_020D30E8
sub_020D30E8: ; 0x020D30E8
	stmfd sp!, {r4, lr}
	cmp r3, #0
	ldrb lr, [r1]
	mov r4, #0
	bls _020D3118
_020D30FC:
	ldrb ip, [r2], #1
	add r4, r4, #1
	cmp r4, r3
	eor ip, lr, ip
	and ip, ip, #0xff
	ldrb lr, [r0, ip]
	blo _020D30FC
_020D3118:
	strb lr, [r1]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D30E8

	arm_func_start sub_020D3120
sub_020D3120: ; 0x020D3120
	stmfd sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	mov r3, lr
_020D3130:
	mov ip, r4
	mov r2, r3
_020D3138:
	tst ip, #0x8000
	eorne ip, r1, ip, lsl #1
	add r2, r2, #1
	moveq ip, ip, lsl #1
	cmp r2, #8
	blo _020D3138
	mov r2, lr, lsl #1
	add lr, lr, #1
	strh ip, [r0, r2]
	cmp lr, #0x100
	add r4, r4, #0x100
	blo _020D3130
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D3120

	arm_func_start sub_020D316C
sub_020D316C: ; 0x020D316C
	stmfd sp!, {r3, lr}
	mov lr, #0
	mov r3, lr
_020D3178:
	mov ip, lr
	mov r2, r3
_020D3180:
	tst ip, #1
	eorne ip, r1, ip, lsr #1
	add r2, r2, #1
	moveq ip, ip, lsr #1
	cmp r2, #8
	blo _020D3180
	mov r2, lr, lsl #1
	add lr, lr, #1
	strh ip, [r0, r2]
	cmp lr, #0x100
	blo _020D3178
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D316C

	arm_func_start sub_020D31B0
sub_020D31B0: ; 0x020D31B0
	stmfd sp!, {r4, lr}
	cmp r3, #0
	ldrh lr, [r1]
	mov r4, #0
	bls _020D31E8
_020D31C4:
	ldrb ip, [r2], #1
	add r4, r4, #1
	cmp r4, r3
	eor ip, ip, lr, lsr #8
	mov ip, ip, lsl #0x18
	mov ip, ip, lsr #0x17
	ldrh ip, [r0, ip]
	eor lr, ip, lr, lsl #8
	blo _020D31C4
_020D31E8:
	strh lr, [r1]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D31B0

	arm_func_start sub_020D31F0
sub_020D31F0: ; 0x020D31F0
	stmfd sp!, {r4, lr}
	cmp r3, #0
	ldrh lr, [r1]
	mov r4, #0
	bls _020D3228
_020D3204:
	ldrb ip, [r2], #1
	add r4, r4, #1
	cmp r4, r3
	eor ip, lr, ip
	mov ip, ip, lsl #0x18
	mov ip, ip, lsr #0x17
	ldrh ip, [r0, ip]
	eor lr, ip, lr, lsr #8
	blo _020D3204
_020D3228:
	strh lr, [r1]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D31F0

	arm_func_start sub_020D3230
sub_020D3230: ; 0x020D3230
	stmfd sp!, {r3, lr}
	mov ip, #0
	mov r2, ip
_020D323C:
	mov r3, ip
	mov lr, r2
_020D3244:
	tst r3, #1
	eorne r3, r1, r3, lsr #1
	add lr, lr, #1
	moveq r3, r3, lsr #1
	cmp lr, #8
	blo _020D3244
	str r3, [r0, ip, lsl #2]
	add ip, ip, #1
	cmp ip, #0x100
	blo _020D323C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D3230

	arm_func_start sub_020D3270
sub_020D3270: ; 0x020D3270
	stmfd sp!, {r4, lr}
	cmp r3, #0
	ldr lr, [r1]
	mov r4, #0
	bls _020D32A4
_020D3284:
	ldrb ip, [r2], #1
	add r4, r4, #1
	cmp r4, r3
	eor ip, lr, ip
	and ip, ip, #0xff
	ldr ip, [r0, ip, lsl #2]
	eor lr, ip, lr, lsr #8
	blo _020D3284
_020D32A4:
	str lr, [r1]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D3270

	arm_func_start sub_020D32AC
sub_020D32AC: ; 0x020D32AC
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, #0
	mov r3, r2
	add r1, sp, #0
	mov r2, lr
	strb ip, [sp]
	bl sub_020D30E8
	ldrb r0, [sp]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D32AC

	arm_func_start sub_020D32D4
sub_020D32D4: ; 0x020D32D4
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, #0
	mov r3, r2
	add r1, sp, #0
	mov r2, lr
	strh ip, [sp]
	bl sub_020D31F0
	ldrh r0, [sp]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D32D4

	arm_func_start sub_020D32FC
sub_020D32FC: ; 0x020D32FC
	stmfd sp!, {r3, lr}
	ldr ip, _020D3324 ; =0x0000FFFF
	mov lr, r1
	mov r3, r2
	add r1, sp, #0
	mov r2, lr
	strh ip, [sp]
	bl sub_020D31B0
	ldrh r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D3324: .word 0x0000FFFF
	arm_func_end sub_020D32FC

	arm_func_start sub_020D3328
sub_020D3328: ; 0x020D3328
	stmfd sp!, {r3, lr}
	mov lr, r1
	mvn ip, #0
	mov r3, r2
	add r1, sp, #0
	mov r2, lr
	str ip, [sp]
	bl sub_020D3270
	ldr r0, [sp]
	mvn r0, r0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D3328

	arm_func_start sub_020D3354
sub_020D3354: ; 0x020D3354
	stmfd sp!, {r4, lr}
	sub ip, r2, #1
	mov r4, r1
	cmp ip, #0
	mov lr, #0
	ble _020D3390
_020D336C:
	ldrsb r3, [r4]
	strb r3, [r0, lr]
	ldrsb r3, [r4]
	cmp r3, #0
	beq _020D3390
	add lr, lr, #1
	cmp lr, ip
	add r4, r4, #1
	blt _020D336C
_020D3390:
	sub r3, r2, #1
	cmp lr, r3
	blt _020D33A8
	cmp r2, #0
	movne r2, #0
	strneb r2, [r0, lr]
_020D33A8:
	mov r0, r1
	bl sub_020D33B4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D3354

	arm_func_start sub_020D33B4
sub_020D33B4: ; 0x020D33B4
	ldrsb r1, [r0]
	mov r2, #0
	cmp r1, #0
	beq _020D33D4
_020D33C4:
	add r2, r2, #1
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bne _020D33C4
_020D33D4:
	mov r0, r2
	bx lr
	arm_func_end sub_020D33B4

	arm_func_start sub_020D33DC
sub_020D33DC: ; 0x020D33DC
	b _020D33E8
_020D33E0:
	add r0, r0, #1
	add r1, r1, #1
_020D33E8:
	ldrsb r3, [r1]
	ldrsb r2, [r0]
	cmp r2, r3
	bne _020D3400
	cmp r2, #0
	bne _020D33E0
_020D3400:
	sub r0, r2, r3
	bx lr
	arm_func_end sub_020D33DC

	arm_func_start sub_020D3408
sub_020D3408: ; 0x020D3408
	stmfd sp!, {r3, lr}
	cmp r2, #0
	beq _020D3440
	cmp r2, #0
	mov lr, #0
	ble _020D3440
_020D3420:
	ldrb ip, [r0, lr]
	ldrb r3, [r1, lr]
	cmp ip, r3
	subne r0, ip, r3
	ldmneia sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, r2
	blt _020D3420
_020D3440:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D3408

	arm_func_start sub_020D3448
sub_020D3448: ; 0x020D3448
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _020D3468
	ldr r2, [r0, #4]
	strb r1, [r2]
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
_020D3468:
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020D3448

	arm_func_start sub_020D3478
sub_020D3478: ; 0x020D3478
	stmfd sp!, {r3, lr}
	cmp r2, #0
	ldmleia sp!, {r3, pc}
	ldr lr, [r0]
	mov ip, #0
	cmp lr, r2
	movhi lr, r2
	cmp lr, #0
	bls _020D34B0
_020D349C:
	ldr r3, [r0, #4]
	strb r1, [r3, ip]
	add ip, ip, #1
	cmp ip, lr
	blo _020D349C
_020D34B0:
	ldr r1, [r0, #0]
	sub r1, r1, lr
	str r1, [r0, #0]
	ldr r1, [r0, #4]
	add r1, r1, r2
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D3478

	arm_func_start sub_020D34CC
sub_020D34CC: ; 0x020D34CC
	stmfd sp!, {r4, lr}
	cmp r2, #0
	ldmleia sp!, {r4, pc}
	ldr r4, [r0, #0]
	mov lr, #0
	cmp r4, r2
	movhi r4, r2
	cmp r4, #0
	bls _020D3508
_020D34F0:
	ldrsb ip, [r1, lr]
	ldr r3, [r0, #4]
	strb ip, [r3, lr]
	add lr, lr, #1
	cmp lr, r4
	blo _020D34F0
_020D3508:
	ldr r1, [r0, #0]
	sub r1, r1, r4
	str r1, [r0, #0]
	ldr r1, [r0, #4]
	add r1, r1, r2
	str r1, [r0, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D34CC

	arm_func_start sub_020D3524
sub_020D3524: ; 0x020D3524
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	mov sb, r2
	str r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldrsb r0, [sb]
	str r1, [sp]
	mov fp, r3
	cmp r0, #0
	beq _020D3D50
_020D3550:
	ldrsb r1, [sb]
	and r0, r1, #0xff
	eor r0, r0, #0x20
	sub r0, r0, #0xa1
	cmp r0, #0x3c
	bhs _020D358C
	add r0, sp, #0xc
	bl sub_020D3448
	ldrsb r1, [sb, #1]!
	cmp r1, #0
	beq _020D3D44
	add r0, sp, #0xc
	add sb, sb, #1
	bl sub_020D3448
	b _020D3D44
_020D358C:
	cmp r1, #0x25
	beq _020D35A4
	add r0, sp, #0xc
	add sb, sb, #1
	bl sub_020D3448
	b _020D3D44
_020D35A4:
	mov r5, #0
	mov sl, r5
	mov r2, sb
	sub r6, r5, #1
	mov r0, #0xa
	mov r3, #0x57
_020D35BC:
	ldrsb r4, [sb, #1]!
	cmp r4, #0x20
	bgt _020D35D0
	beq _020D360C
	b _020D3624
_020D35D0:
	cmp r4, #0x30
	bgt _020D3624
	cmp r4, #0x2b
	blt _020D3624
	beq _020D35F8
	cmp r4, #0x2d
	beq _020D3614
	cmp r4, #0x30
	beq _020D361C
	b _020D3624
_020D35F8:
	ldrsb r1, [sb, #-1]
	cmp r1, #0x20
	bne _020D3624
	orr r5, r5, #2
	b _020D35BC
_020D360C:
	orr r5, r5, #1
	b _020D35BC
_020D3614:
	orr r5, r5, #8
	b _020D35BC
_020D361C:
	orr r5, r5, #0x10
	b _020D35BC
_020D3624:
	cmp r4, #0x2a
	bne _020D3648
	add fp, fp, #4
	ldr sl, [fp, #-4]
	add sb, sb, #1
	cmp sl, #0
	rsblt sl, sl, #0
	orrlt r5, r5, #8
	b _020D3670
_020D3648:
	mov r1, #0xa
	b _020D365C
_020D3650:
	ldrsb r4, [sb], #1
	mla r4, sl, r1, r4
	sub sl, r4, #0x30
_020D365C:
	ldrsb r4, [sb]
	cmp r4, #0x30
	blt _020D3670
	cmp r4, #0x39
	ble _020D3650
_020D3670:
	ldrsb r1, [sb]
	cmp r1, #0x2e
	bne _020D36CC
	ldrsb r1, [sb, #1]!
	mov r6, #0
	cmp r1, #0x2a
	bne _020D36A4
	add fp, fp, #4
	ldr r6, [fp, #-4]
	add sb, sb, #1
	cmp r6, #0
	mvnlt r6, #0
	b _020D36CC
_020D36A4:
	mov r1, #0xa
	b _020D36B8
_020D36AC:
	ldrsb r4, [sb], #1
	mla r4, r6, r1, r4
	sub r6, r4, #0x30
_020D36B8:
	ldrsb r4, [sb]
	cmp r4, #0x30
	blt _020D36CC
	cmp r4, #0x39
	ble _020D36AC
_020D36CC:
	ldrsb r1, [sb]
	cmp r1, #0x68
	beq _020D36E4
	cmp r1, #0x6c
	beq _020D36FC
	b _020D3710
_020D36E4:
	ldrsb r1, [sb, #1]!
	cmp r1, #0x68
	orrne r5, r5, #0x40
	addeq sb, sb, #1
	orreq r5, r5, #0x100
	b _020D3710
_020D36FC:
	ldrsb r1, [sb, #1]!
	cmp r1, #0x6c
	orrne r5, r5, #0x20
	addeq sb, sb, #1
	orreq r5, r5, #0x80
_020D3710:
	ldrsb r1, [sb]
	cmp r1, #0x69
	bgt _020D3754
	cmp r1, #0x63
	blt _020D3738
	beq _020D37C4
	cmp r1, #0x64
	cmpne r1, #0x69
	beq _020D397C
	b _020D3960
_020D3738:
	cmp r1, #0x25
	bgt _020D3748
	beq _020D3944
	b _020D3960
_020D3748:
	cmp r1, #0x58
	beq _020D37B0
	b _020D3960
_020D3754:
	cmp r1, #0x6e
	bgt _020D3764
	beq _020D38EC
	b _020D3960
_020D3764:
	sub r1, r1, #0x6f
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _020D3960
_020D3774: ; jump table
	b _020D379C ; case 0
	b _020D37B8 ; case 1
	b _020D3960 ; case 2
	b _020D3960 ; case 3
	b _020D3838 ; case 4
	b _020D3960 ; case 5
	b _020D37A8 ; case 6
	b _020D3960 ; case 7
	b _020D3960 ; case 8
	b _020D3974 ; case 9
_020D379C:
	orr r5, r5, #0x1000
	mov r0, #8
	b _020D397C
_020D37A8:
	orr r5, r5, #0x1000
	b _020D397C
_020D37B0:
	mov r3, #0x37
	b _020D3974
_020D37B8:
	orr r5, r5, #4
	mov r6, #8
	b _020D3974
_020D37C4:
	cmp r6, #0
	bge _020D3960
	add fp, fp, #4
	tst r5, #8
	ldr r4, [fp, #-4]
	beq _020D3800
	mov r1, r4, lsl #0x18
	add r0, sp, #0xc
	mov r1, r1, asr #0x18
	bl sub_020D3448
	add r0, sp, #0xc
	sub r2, sl, #1
	mov r1, #0x20
	bl sub_020D3478
	b _020D3830
_020D3800:
	tst r5, #0x10
	movne r0, #0x30
	moveq r0, #0x20
	mov r1, r0, lsl #0x18
	add r0, sp, #0xc
	mov r1, r1, asr #0x18
	sub r2, sl, #1
	bl sub_020D3478
	mov r1, r4, lsl #0x18
	add r0, sp, #0xc
	mov r1, r1, asr #0x18
	bl sub_020D3448
_020D3830:
	add sb, sb, #1
	b _020D3D44
_020D3838:
	add fp, fp, #4
	cmp r6, #0
	ldr r7, [fp, #-4]
	mov r4, #0
	bge _020D3870
	ldrsb r0, [r7]
	cmp r0, #0
	beq _020D3884
_020D3858:
	add r4, r4, #1
	ldrsb r0, [r7, r4]
	cmp r0, #0
	bne _020D3858
	b _020D3884
_020D386C:
	add r4, r4, #1
_020D3870:
	cmp r4, r6
	bge _020D3884
	ldrsb r0, [r7, r4]
	cmp r0, #0
	bne _020D386C
_020D3884:
	tst r5, #8
	sub sl, sl, r4
	beq _020D38B4
	add r0, sp, #0xc
	mov r1, r7
	mov r2, r4
	bl sub_020D34CC
	add r0, sp, #0xc
	mov r2, sl
	mov r1, #0x20
	bl sub_020D3478
	b _020D38E4
_020D38B4:
	tst r5, #0x10
	movne r0, #0x30
	moveq r0, #0x20
	mov r1, r0, lsl #0x18
	add r0, sp, #0xc
	mov r2, sl
	mov r1, r1, asr #0x18
	bl sub_020D3478
	add r0, sp, #0xc
	mov r1, r7
	mov r2, r4
	bl sub_020D34CC
_020D38E4:
	add sb, sb, #1
	b _020D3D44
_020D38EC:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	tst r5, #0x100
	sub r2, r1, r0
	bne _020D393C
	tst r5, #0x40
	beq _020D3918
	add fp, fp, #4
	ldr r0, [fp, #-4]
	strh r2, [r0]
	b _020D393C
_020D3918:
	add fp, fp, #4
	tst r5, #0x80
	ldreq r0, [fp, #-4]
	streq r2, [r0]
	beq _020D393C
	ldr r0, [fp, #-4]
	mov r1, r2, asr #0x1f
	str r2, [r0, #0]
	str r1, [r0, #4]
_020D393C:
	add sb, sb, #1
	b _020D3D44
_020D3944:
	add r0, r2, #1
	cmp r0, sb
	bne _020D3960
	add r0, sp, #0xc
	add sb, sb, #1
	bl sub_020D3448
	b _020D3D44
_020D3960:
	mov r1, r2
	add r0, sp, #0xc
	sub r2, sb, r2
	bl sub_020D34CC
	b _020D3D44
_020D3974:
	orr r5, r5, #0x1000
	mov r0, #0x10
_020D397C:
	tst r5, #8
	bicne r5, r5, #0x10
	cmp r6, #0
	bicge r5, r5, #0x10
	movlt r6, #1
	mov r4, #0
	tst r5, #0x1000
	beq _020D3A3C
	tst r5, #0x100
	beq _020D39B4
	add fp, fp, #4
	ldrb r7, [fp, #-4]
	mov r1, #0
	b _020D39EC
_020D39B4:
	tst r5, #0x40
	beq _020D39CC
	add fp, fp, #4
	ldrh r7, [fp, #-4]
	mov r1, #0
	b _020D39EC
_020D39CC:
	tst r5, #0x80
	addeq fp, fp, #4
	ldreq r7, [fp, #-4]
	moveq r1, #0
	beq _020D39EC
	add fp, fp, #8
	ldr r7, [fp, #-8]
	ldr r1, [fp, #-4]
_020D39EC:
	bic r5, r5, #3
	tst r5, #4
	beq _020D3AFC
	cmp r0, #0x10
	bne _020D3A24
	cmp r1, #0
	cmpeq r7, #0
	beq _020D3AFC
	add r4, r3, #0x21
	mov r2, #0x30
	strb r4, [sp, #8]
	strb r2, [sp, #9]
	mov r4, #2
	b _020D3AFC
_020D3A24:
	cmp r0, #8
	bne _020D3AFC
	mov r2, #0x30
	strb r2, [sp, #8]
	mov r4, #1
	b _020D3AFC
_020D3A3C:
	tst r5, #0x100
	beq _020D3A54
	add fp, fp, #4
	ldrsb r7, [fp, #-4]
	mov r1, r7, asr #0x1f
	b _020D3A8C
_020D3A54:
	tst r5, #0x40
	beq _020D3A6C
	add fp, fp, #4
	ldrsh r7, [fp, #-4]
	mov r1, r7, asr #0x1f
	b _020D3A8C
_020D3A6C:
	tst r5, #0x80
	addeq fp, fp, #4
	ldreq r7, [fp, #-4]
	moveq r1, r7, asr #0x1f
	beq _020D3A8C
	add fp, fp, #8
	ldr r7, [fp, #-8]
	ldr r1, [fp, #-4]
_020D3A8C:
	mov ip, #0
	and r2, ip, #0
	and r8, r1, #0x80000000
	cmp r2, #0
	cmpeq r8, #0
	beq _020D3AC4
	mvn r4, r7
	mov r2, #0x2d
	mvn r1, r1
	strb r2, [sp, #8]
	add r7, r4, #1
	adc r1, r1, ip
	mov r4, #1
	b _020D3AFC
_020D3AC4:
	cmp r1, ip
	cmpeq r7, ip
	cmpeq r6, #0
	beq _020D3AFC
	tst r5, #2
	beq _020D3AEC
	mov r2, #0x2b
	strb r2, [sp, #8]
	mov r4, #1
	b _020D3AFC
_020D3AEC:
	tst r5, #1
	movne r2, #0x20
	strneb r2, [sp, #8]
	movne r4, #1
_020D3AFC:
	cmp r0, #8
	mov r8, #0
	beq _020D3B1C
	cmp r0, #0xa
	beq _020D3B68
	cmp r0, #0x10
	beq _020D3C00
	b _020D3C4C
_020D3B1C:
	cmp r1, r8
	cmpeq r7, r8
	beq _020D3C4C
	add r2, sp, #0x18
	mov r0, r8
	mov lr, #7
	mov ip, r8
_020D3B38:
	and r3, r7, lr
	add r3, r3, #0x30
	strb r3, [r2, r8]
	mov r3, r1, lsr #3
	cmp r3, r0
	mov r7, r7, lsr #3
	orr r7, r7, r1, lsl #29
	mov r1, r3
	cmpeq r7, ip
	add r8, r8, #1
	bne _020D3B38
	b _020D3C4C
_020D3B68:
	mov r0, r8
	cmp r0, r8
	cmpeq r1, r8
	bne _020D3BB4
	cmp r7, #0
	beq _020D3C4C
	ldr ip, _020D3D9C ; =0xCCCCCCCD
	add r3, sp, #0x18
	mov r2, #0xa
_020D3B8C:
	umull r1, r0, r7, ip
	mov r0, r0, lsr #3
	mul r1, r0, r1
	sub r1, r7, r1
	mov r7, r0
	add r0, r1, #0x30
	strb r0, [r3, r8]
	add r8, r8, #1
	bne _020D3B8C
	b _020D3C4C
_020D3BB4:
	cmp r1, r8
	cmpeq r7, r8
	beq _020D3C4C
_020D3BC0:
	mov r0, r7
	mov r2, #0xa
	mov r3, #0
	bl sub_020E1ED4
	mov r2, #0xa
	umull r3, r2, r0, r2
	sub r2, r7, r3
	add r3, r2, #0x30
	add r2, sp, #0x18
	strb r3, [r2, r8]
	cmp r1, #0
	cmpeq r0, #0
	mov r7, r0
	add r8, r8, #1
	bne _020D3BC0
	b _020D3C4C
_020D3C00:
	cmp r1, r8
	cmpeq r7, r8
	beq _020D3C4C
	add ip, sp, #0x18
	mov lr, #0xf
_020D3C14:
	and r2, r7, lr
	mov r7, r7, lsr #4
	mov r0, r1, lsr #4
	orr r7, r7, r1, lsl #28
	cmp r2, #0xa
	mov r1, r0
	addlt r0, r2, #0x30
	addge r0, r2, r3
	strb r0, [ip, r8]
	mov r0, #0
	cmp r1, r0
	cmpeq r7, r0
	add r8, r8, #1
	bne _020D3C14
_020D3C4C:
	cmp r4, #0
	ble _020D3C74
	ldrsb r0, [sp, #8]
	cmp r0, #0x30
	bne _020D3C74
	add r0, sp, #0x18
	mov r1, #0x30
	strb r1, [r0, r8]
	add r8, r8, #1
	mov r4, #0
_020D3C74:
	tst r5, #0x10
	sub r6, r6, r8
	beq _020D3C90
	sub r0, sl, r8
	sub r0, r0, r4
	cmp r6, r0
	movlt r6, r0
_020D3C90:
	cmp r6, #0
	subgt sl, sl, r6
	add r0, r4, r8
	sub sl, sl, r0
	and r0, r5, #8
	str r0, [sp, #4]
	bne _020D3CBC
	add r0, sp, #0xc
	mov r2, sl
	mov r1, #0x20
	bl sub_020D3478
_020D3CBC:
	cmp r4, #0
	ble _020D3CE8
	add r0, sp, #8
	add r5, r0, r4
	add r7, sp, #0xc
_020D3CD0:
	ldrsb r1, [r5, #-1]!
	mov r0, r7
	sub r4, r4, #1
	bl sub_020D3448
	cmp r4, #0
	bgt _020D3CD0
_020D3CE8:
	add r0, sp, #0xc
	mov r2, r6
	mov r1, #0x30
	bl sub_020D3478
	cmp r8, #0
	ble _020D3D24
	add r0, sp, #0x18
	add r5, r0, r8
	add r4, sp, #0xc
_020D3D0C:
	ldrsb r1, [r5, #-1]!
	mov r0, r4
	sub r8, r8, #1
	bl sub_020D3448
	cmp r8, #0
	bgt _020D3D0C
_020D3D24:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020D3D40
	add r0, sp, #0xc
	mov r2, sl
	mov r1, #0x20
	bl sub_020D3478
_020D3D40:
	add sb, sb, #1
_020D3D44:
	ldrsb r0, [sb]
	cmp r0, #0
	bne _020D3550
_020D3D50:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020D3D6C
	ldr r0, [sp, #0x10]
	mov r1, #0
	strb r1, [r0]
	b _020D3D88
_020D3D6C:
	ldr r0, [sp]
	cmp r0, #0
	beq _020D3D88
	ldr r1, [sp, #0x14]
	mov r2, #0
	add r0, r1, r0
	strb r2, [r0, #-1]
_020D3D88:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020D3D9C: .word 0xCCCCCCCD
	arm_func_end sub_020D3524

	arm_func_start sub_020D3DA0
sub_020D3DA0: ; 0x020D3DA0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl sub_020D8A30
	ldr r1, _020D3DC0 ; =0x021D0810
	mov r0, #1
	str r0, [r1, #0xc]
	bl sub_020D3DC4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D3DC0: .word 0x021D0810
	arm_func_end sub_020D3DA0

	arm_func_start sub_020D3DC4
sub_020D3DC4: ; 0x020D3DC4
	stmfd sp!, {r4, lr}
	ldr r1, _020D3E0C ; =0x021D0810
	mov r4, r0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _020D3E00
	bl sub_020E4058
	ldr r0, _020D3E0C ; =0x021D0810
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020D3E00
	blx r0
	ldr r0, _020D3E0C ; =0x021D0810
	mov r1, #0
	str r1, [r0, #4]
_020D3E00:
	mov r0, r4
	bl sub_020D3E10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D3E0C: .word 0x021D0810
	arm_func_end sub_020D3DC4

	arm_func_start sub_020D3E10
sub_020D3E10: ; 0x020D3E10
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020D3F20 ; =0x021D0968
	bl sub_020C2AF4
	cmp r0, #0
	bne _020D3E48
	ldr r0, _020D3F24 ; =0x021CCC80
	ldr r1, _020D3F28 ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D3F2C ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0]
	str r2, [r0, #0]
	b _020D3EA0
_020D3E48:
	ldr r0, _020D3F24 ; =0x021CCC80
	ldr r1, _020D3F28 ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, #0]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D3E78
	ldr r0, _020D3F2C ; =0x021D0944
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	b _020D3EA0
_020D3E78:
	ldr r0, _020D3F20 ; =0x021D0968
	bl sub_020C29D8
	ldr r0, _020D3F24 ; =0x021CCC80
	ldr r1, _020D3F28 ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D3F2C ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0]
	str r2, [r0, #0]
_020D3EA0:
	ldr r4, _020D3F30 ; =0x021D0810
	ldr r0, [r4, #8]
	cmp r0, #0
	ble _020D3ED4
	ldr r5, _020D3F34 ; =0x021D0820
_020D3EB4:
	ldr r0, [r4, #8]
	sub r1, r0, #1
	ldr r0, [r5, r1, lsl #2]
	str r1, [r4, #8]
	blx r0
	ldr r0, [r4, #8]
	cmp r0, #0
	bgt _020D3EB4
_020D3ED4:
	ldr r0, _020D3F2C ; =0x021D0944
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
	bne _020D3EF0
	ldr r0, _020D3F20 ; =0x021D0968
	bl sub_020C2A5C
_020D3EF0:
	ldr r0, _020D3F30 ; =0x021D0810
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020D3F10
	blx r0
	ldr r0, _020D3F30 ; =0x021D0810
	mov r1, #0
	str r1, [r0, #0]
_020D3F10:
	mov r0, #0
	bl sub_020D497C
	bl sub_020E454C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D3F20: .word 0x021D0968
_020D3F24: .word 0x021CCC80
_020D3F28: .word 0x021D0920
_020D3F2C: .word 0x021D0944
_020D3F30: .word 0x021D0810
_020D3F34: .word 0x021D0820
	arm_func_end sub_020D3E10

	arm_func_start sub_020D3F38
sub_020D3F38: ; 0x020D3F38
	ldr r0, _020D3F48 ; =0x021015B0
	ldr ip, _020D3F4C ; =sub_020E16BC
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_020D3F48: .word 0x021015B0
_020D3F4C: .word sub_020E16BC
	arm_func_end sub_020D3F38

	arm_func_start sub_020D3F50
sub_020D3F50: ; 0x020D3F50
	stmfd sp!, {r3, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020DF918
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D3F50

	arm_func_start sub_020D3F68
sub_020D3F68: ; 0x020D3F68
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020DF930
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D3F68

	arm_func_start sub_020D3F7C
sub_020D3F7C: ; 0x020D3F7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r0, _020D4004 ; =0x02101490
	mov r4, #0
	mov r5, #1
	mov r8, r0
	mvn sb, #0
	mov r7, r4
	mov r6, #0x4c
_020D3F9C:
	ldr r1, [r0, #4]
	mov r2, r1, lsl #0x16
	mov r2, r2, lsr #0x1d
	beq _020D3FDC
	mov r1, r1, lsl #0x19
	mov r1, r1, lsr #0x1e
	tst r1, #1
	beq _020D3FDC
	ldr r1, [r0, #8]
	mov r1, r1, lsl #0x1d
	mov r1, r1, lsr #0x1d
	cmp r1, #1
	bne _020D3FDC
	bl sub_020D497C
	cmp r0, #0
	movne r4, sb
_020D3FDC:
	cmp r5, #3
	movge r0, r7
	bge _020D3FF4
	mul r0, r5, r0
	add r5, r5, #1
	add r0, r8, r0
_020D3FF4:
	cmp r0, #0
	bne _020D3F9C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020D4004: .word 0x02101490
	arm_func_end sub_020D3F7C

	arm_func_start sub_020D4008
sub_020D4008: ; 0x020D4008
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r0, _020D406C ; =0x02101490
	mov r4, #0
	mov r5, #1
	mov r8, r0
	mvn sb, #0
	mov r7, r4
	mov r6, #0x4c
_020D4028:
	ldr r1, [r0, #4]
	mov r1, r1, lsl #0x16
	mov r1, r1, lsr #0x1d
	beq _020D4044
	bl sub_020D497C
	cmp r0, #0
	movne r4, sb
_020D4044:
	cmp r5, #3
	movge r0, r7
	bge _020D405C
	mul r0, r5, r0
	add r5, r5, #1
	add r0, r8, r0
_020D405C:
	cmp r0, #0
	bne _020D4028
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020D406C: .word 0x02101490
	arm_func_end sub_020D4008

	arm_func_start sub_020D4070
sub_020D4070: ; 0x020D4070
	cmp r0, #0
	rsblt r0, r0, #0
	bx lr
	arm_func_end sub_020D4070

	arm_func_start sub_020D407C
sub_020D407C: ; 0x020D407C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	ldr r0, _020D40B4 ; =0x02101574
	mov r1, r4
	mov r2, lr
	mov r3, ip
	bl sub_020D7350
	bl sub_020D3DA0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020D40B4: .word 0x02101574
	arm_func_end sub_020D407C

	arm_func_start sub_020D40B8
sub_020D40B8: ; 0x020D40B8
	bx lr
	arm_func_end sub_020D40B8

	arm_func_start sub_020D40BC
sub_020D40BC: ; 0x020D40BC
	bx lr
	arm_func_end sub_020D40BC

	arm_func_start sub_020D40C0
sub_020D40C0: ; 0x020D40C0
	ldr r1, [r0, #0x1c]
	str r1, [r0, #0x24]
	ldr r3, [r0, #0x20]
	str r3, [r0, #0x28]
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x2c]
	and r1, r2, r1
	sub r1, r3, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end sub_020D40C0

	arm_func_start sub_020D40F0
sub_020D40F0: ; 0x020D40F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, r0
	mov r6, r1
	bl sub_020D40C0
	cmp r5, #1
	ldreq r0, [r4, #0x20]
	add r2, r4, #0x28
	streq r0, [r4, #0x28]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x48]
	ldr ip, [r4, #0x3c]
	blx ip
	cmp r0, #2
	moveq r1, #0
	streq r1, [r4, #0x28]
	cmp r6, #0
	ldrne r1, [r4, #0x28]
	strne r1, [r6]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r4, #0x18]
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1f
	bne _020D4174
	ldr r0, [r4, #0x1c]
	add r1, r4, #0x28
	bl sub_020D40BC
_020D4174:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020D40F0

	arm_func_start sub_020D417C
sub_020D417C: ; 0x020D417C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x24]
	ldr r0, [r5, #0x1c]
	mov r4, r1
	sub r0, r2, r0
	beq _020D41F4
	str r0, [r5, #0x28]
	ldr r0, [r5, #4]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1f
	bne _020D41B8
	ldr r0, [r5, #0x1c]
	add r1, r5, #0x28
	bl sub_020D40B8
_020D41B8:
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x1c]
	ldr r3, [r5, #0x48]
	ldr ip, [r5, #0x40]
	add r2, r5, #0x28
	blx ip
	cmp r4, #0
	ldrne r1, [r5, #0x28]
	strne r1, [r4]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x28]
	add r0, r1, r0
	str r0, [r5, #0x18]
_020D41F4:
	mov r0, r5
	bl sub_020D40C0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020D417C

	arm_func_start sub_020D4204
sub_020D4204: ; 0x020D4204
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r4, _020D42FC ; =0x02101490
	mov r7, r3
	cmp r7, r4
	moveq r6, #2
	mov sl, r0
	movne r6, #5
	mov r0, #0x18
	mul r4, r6, r4
	ldr r5, _020D4300 ; =0x021D0968
	mov sb, r1
	add r0, r5, r4
	mov r8, r2
	bl sub_020C2AF4
	cmp r0, #0
	bne _020D4268
	ldr r0, _020D4304 ; =0x021CCC80
	ldr r2, _020D4308 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D430C ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
	b _020D42C0
_020D4268:
	ldr r0, _020D4304 ; =0x021CCC80
	ldr r1, _020D4308 ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, r6, lsl #2]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D4298
	ldr r1, _020D430C ; =0x021D0944
	ldr r0, [r1, r6, lsl #2]
	add r0, r0, #1
	str r0, [r1, r6, lsl #2]
	b _020D42C0
_020D4298:
	add r0, r5, r4
	bl sub_020C29D8
	ldr r0, _020D4304 ; =0x021CCC80
	ldr r2, _020D4308 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D430C ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
_020D42C0:
	mov r0, sl
	mov r1, sb
	mov r2, r8
	mov r3, r7
	bl sub_020D4310
	ldr r1, _020D430C ; =0x021D0944
	mov r7, r0
	ldr r0, [r1, r6, lsl #2]
	sub r0, r0, #1
	str r0, [r1, r6, lsl #2]
	bne _020D42F4
	add r0, r5, r4
	bl sub_020C2A5C
_020D42F4:
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020D42FC: .word 0x02101490
_020D4300: .word 0x021D0968
_020D4304: .word 0x021CCC80
_020D4308: .word 0x021D0920
_020D430C: .word 0x021D0944
	arm_func_end sub_020D4204

	arm_func_start sub_020D4310
sub_020D4310: ; 0x020D4310
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r7, r3
	mov sb, r0
	mov r8, r1
	mov r0, r7
	mov r1, #0
	mov r4, r2
	bl sub_020DAE20
	cmp r0, #0
	bne _020D4348
	mov r0, r7
	mvn r1, #0
	bl sub_020DAE20
_020D4348:
	mul r4, r8, r4
	beq _020D436C
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _020D436C
	ldr r1, [r7, #4]
	mov r0, r1, lsl #0x16
	mov r0, r0, lsr #0x1d
	bne _020D4378
_020D436C:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_020D4378:
	mov r0, r1, lsl #0x13
	mov r0, r0, lsr #0x1f
	movne r0, r1, lsl #0x19
	movne r0, r0, lsr #0x1e
	ldr r1, [r7, #8]
	cmpne r0, #2
	mov r6, #1
	mov r0, r1, lsl #0x1d
	movne r6, #0
	mov r0, r0, lsr #0x1d
	bne _020D43CC
	ldr r0, [r7, #4]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1d
	tst r0, #1
	beq _020D43CC
	bic r0, r1, #7
	orr r0, r0, #2
	str r0, [r7, #8]
	mov r0, #0
	str r0, [r7, #0x28]
_020D43CC:
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #2
	bhs _020D43F8
	mov r0, #1
	strb r0, [r7, #0xd]
	mov r0, #0
	add sp, sp, #4
	str r0, [r7, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_020D43F8:
	ldr r0, [r7, #4]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1e
	tst r0, #1
	beq _020D4430
	bl sub_020D3F7C
	cmp r0, #0
	beq _020D4430
	mov r0, #1
	strb r0, [r7, #0xd]
	mov r0, #0
	add sp, sp, #4
	str r0, [r7, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_020D4430:
	cmp r4, #0
	mov r5, #0
	beq _020D44F4
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #3
	blo _020D44F4
	mov sl, r5
_020D4454:
	mov r0, r7
	mov r1, sl
	bl sub_020DAE20
	cmp r0, #1
	ldr r0, [r7, #8]
	bne _020D4488
	mov r0, r0, lsl #0x1d
	add r0, r7, r0, lsr #28
	ldrh r0, [r0, #0xe]
	add r5, r5, #2
	sub r4, r4, #2
	strh r0, [sb], #2
	b _020D44A0
_020D4488:
	mov r0, r0, lsl #0x1d
	add r0, r7, r0, lsr #29
	ldrb r0, [r0, #0xf]
	add r5, r5, #1
	sub r4, r4, #1
	strb r0, [sb], #1
_020D44A0:
	ldr r1, [r7, #8]
	cmp r4, #0
	mov r0, r1, lsl #0x1d
	mov r0, r0, lsr #0x1d
	sub r0, r0, #1
	bic r1, r1, #7
	and r0, r0, #7
	orr r0, r1, r0
	str r0, [r7, #8]
	beq _020D44DC
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #3
	bhs _020D4454
_020D44DC:
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #2
	ldreq r0, [r7, #0x30]
	streq r0, [r7, #0x28]
_020D44F4:
	cmp r4, #0
	beq _020D45B8
	ldr r0, [r7, #0x28]
	cmp r0, #0
	cmpeq r6, #0
	beq _020D45B8
	mov sl, #0
_020D4510:
	ldr r0, [r7, #0x28]
	cmp r0, #0
	bne _020D4564
	mov r0, r7
	mov r1, sl
	mov r2, sl
	bl sub_020D40F0
	cmp r0, #0
	beq _020D4564
	cmp r0, #1
	mov r0, #1
	streqb r0, [r7, #0xd]
	beq _020D4554
	ldr r1, [r7, #8]
	bic r1, r1, #7
	str r1, [r7, #8]
	strb r0, [r7, #0xc]
_020D4554:
	mov r0, #0
	str r0, [r7, #0x28]
	mov r4, #0
	b _020D45B8
_020D4564:
	ldr r0, [r7, #0x28]
	str r0, [sp]
	cmp r0, r4
	strhi r4, [sp]
	ldr r1, [r7, #0x24]
	ldr r2, [sp]
	mov r0, sb
	bl sub_020D50B8
	ldr r2, [sp]
	ldr r0, [r7, #0x24]
	sub r4, r4, r2
	add r0, r0, r2
	str r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	ldr r0, [sp]
	add sb, sb, r2
	sub r0, r1, r0
	add r5, r5, r2
	str r0, [r7, #0x28]
	cmpne r6, #0
	bne _020D4510
_020D45B8:
	cmp r4, #0
	beq _020D4644
	cmp r6, #0
	bne _020D4644
	ldr r6, [r7, #0x1c]
	ldr sl, [r7, #0x20]
	add r1, sp, #0
	str sb, [r7, #0x1c]
	mov r0, r7
	mov r2, #1
	str r4, [r7, #0x20]
	bl sub_020D40F0
	cmp r0, #0
	beq _020D4624
	cmp r0, #1
	mov r0, #1
	bne _020D460C
	strb r0, [r7, #0xd]
	mov r0, #0
	str r0, [r7, #0x28]
	b _020D4624
_020D460C:
	ldr r1, [r7, #8]
	bic r1, r1, #7
	str r1, [r7, #8]
	strb r0, [r7, #0xc]
	mov r0, #0
	str r0, [r7, #0x28]
_020D4624:
	ldr r1, [sp]
	mov r0, r7
	str r6, [r7, #0x1c]
	str sl, [r7, #0x20]
	add r5, r5, r1
	bl sub_020D40C0
	mov r0, #0
	str r0, [r7, #0x28]
_020D4644:
	mov r0, r5
	mov r1, r8
	bl sub_020E2178
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_020D4310

	arm_func_start sub_020D4658
sub_020D4658: ; 0x020D4658
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sb, r3
	mov sl, r0
	str r1, [sp]
	mov r0, sb
	mov r1, #0
	mov r4, r2
	bl sub_020DAE20
	cmp r0, #0
	bne _020D4690
	mov r0, sb
	mvn r1, #0
	bl sub_020DAE20
_020D4690:
	ldr r0, [sp]
	mul r5, r0, r5
	beq _020D46B8
	ldrb r0, [sb, #0xd]
	cmp r0, #0
	bne _020D46B8
	ldr r1, [sb, #4]
	mov r0, r1, lsl #0x16
	mov r0, r0, lsr #0x1d
	bne _020D46C4
_020D46B8:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020D46C4:
	mov r0, r1, lsl #0x13
	mov r0, r0, lsr #0x1f
	movne r0, r1, lsl #0x19
	movne r0, r0, lsr #0x1e
	cmpne r0, #2
	ldr r1, [sb, #8]
	cmpne r0, #1
	mov r8, #1
	mov r0, r1, lsl #0x1d
	movne r8, #0
	mov r0, r0, lsr #0x1d
	bne _020D471C
	ldr r0, [sb, #4]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1d
	tst r0, #2
	beq _020D471C
	bic r0, r1, #7
	orr r1, r0, #1
	mov r0, sb
	str r1, [sb, #8]
	bl sub_020D40C0
_020D471C:
	ldr r0, [sb, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #1
	beq _020D4748
	mov r0, #1
	strb r0, [sb, #0xd]
	mov r0, #0
	add sp, sp, #8
	str r0, [sb, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020D4748:
	cmp r5, #0
	mov r6, #0
	beq _020D4870
	ldr r0, [sb, #0x1c]
	ldr r2, [sb, #0x24]
	cmp r2, r0
	cmpeq r8, #0
	beq _020D4870
	ldr r1, [sb, #0x20]
	sub r0, r2, r0
	sub r0, r1, r0
	str r0, [sb, #0x28]
	mov fp, #0xa
	mov r4, #0
_020D4780:
	ldr r0, [sb, #0x28]
	mov r7, r4
	str r0, [sp, #4]
	cmp r0, r5
	strhi r5, [sp, #4]
	ldr r0, [sb, #4]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	bne _020D47D0
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _020D47D0
	mov r0, sl
	mov r1, fp
	bl sub_020D5164
	mov r7, r0
	addne r0, r7, #1
	subne r0, r0, sl
	strne r0, [sp, #4]
_020D47D0:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _020D4810
	ldr r0, [sb, #0x24]
	mov r1, sl
	bl sub_020D50B8
	ldr r2, [sp, #4]
	ldr r0, [sb, #0x24]
	add sl, sl, r2
	add r0, r0, r2
	str r0, [sb, #0x24]
	ldr r1, [sb, #0x28]
	ldr r0, [sp, #4]
	sub r5, r5, r2
	sub r0, r1, r0
	str r0, [sb, #0x28]
_020D4810:
	ldr r0, [sb, #0x28]
	cmp r0, #0
	beq _020D4834
	cmp r7, #0
	bne _020D4834
	ldr r0, [sb, #4]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1e
	bne _020D485C
_020D4834:
	mov r0, sb
	mov r1, #0
	bl sub_020D417C
	cmp r0, #0
	beq _020D485C
	mov r0, #1
	strb r0, [sb, #0xd]
	mov r5, #0
	str r5, [sb, #0x28]
	b _020D4870
_020D485C:
	ldr r0, [sp, #4]
	cmp r5, #0
	add r6, r6, r0
	cmpne r8, #0
	bne _020D4780
_020D4870:
	cmp r5, #0
	beq _020D48DC
	cmp r8, #0
	bne _020D48DC
	ldr r4, [sb, #0x1c]
	ldr r7, [sb, #0x20]
	add r2, sl, r5
	str sl, [sb, #0x1c]
	str r5, [sb, #0x20]
	add r1, sp, #4
	mov r0, sb
	str r2, [sb, #0x24]
	bl sub_020D417C
	cmp r0, #0
	ldreq r0, [sp, #4]
	addeq r6, r6, r0
	beq _020D48C4
	mov r0, #1
	strb r0, [sb, #0xd]
	mov r0, #0
	str r0, [sb, #0x28]
_020D48C4:
	str r4, [sb, #0x1c]
	mov r0, sb
	str r7, [sb, #0x20]
	bl sub_020D40C0
	mov r0, #0
	str r0, [sb, #0x28]
_020D48DC:
	ldr r0, [sb, #4]
	ldr r1, [sp]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1e
	cmp r0, #2
	movne r0, #0
	strne r0, [sb, #0x28]
	mov r0, r6
	bl sub_020E2178
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020D4658

	arm_func_start sub_020D4908
sub_020D4908: ; 0x020D4908
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	mov r1, r1, lsl #0x16
	mov r1, r1, lsr #0x1d
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_020D497C
	mov r4, r0
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x44]
	blx r1
	ldr r1, [r5, #4]
	mov r2, #0
	bic r1, r1, #0x380
	str r1, [r5, #4]
	str r2, [r5, #0]
	ldr r1, [r5, #8]
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1f
	subne r0, r2, #1
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	cmpeq r0, #0
	movne r2, #1
	rsb r0, r2, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020D4908

	arm_func_start sub_020D497C
sub_020D497C: ; 0x020D497C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bne _020D4990
	bl sub_020D4008
	ldmia sp!, {r4, pc}
_020D4990:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _020D49AC
	ldr r0, [r4, #4]
	mov r1, r0, lsl #0x16
	mov r1, r1, lsr #0x1d
	bne _020D49B4
_020D49AC:
	mvn r0, #0
	ldmia sp!, {r4, pc}
_020D49B4:
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1d
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #8]
	mov r1, r0, lsl #0x1d
	mov r1, r1, lsr #0x1d
	cmp r1, #3
	bichs r0, r0, #7
	orrhs r0, r0, #2
	strhs r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #2
	moveq r0, #0
	streq r0, [r4, #0x28]
	ldr r0, [r4, #8]
	mov r1, r0, lsl #0x1d
	mov r1, r1, lsr #0x1d
	cmp r1, #1
	beq _020D4A20
	bic r0, r0, #7
	str r0, [r4, #8]
	mov r0, #0
	ldmia sp!, {r4, pc}
_020D4A20:
	mov r0, r4
	mov r1, #0
	bl sub_020D417C
	cmp r0, #0
	mov r0, #0
	beq _020D4A4C
	mov r1, #1
	strb r1, [r4, #0xd]
	str r0, [r4, #0x28]
	sub r0, r0, #1
	ldmia sp!, {r4, pc}
_020D4A4C:
	ldr r1, [r4, #8]
	bic r1, r1, #7
	str r1, [r4, #8]
	str r0, [r4, #0x18]
	str r0, [r4, #0x28]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D497C

	arm_func_start sub_020D4A64
sub_020D4A64: ; 0x020D4A64
	ldr r1, [r0, #4]
	mov r1, r1, lsl #0x16
	mov r1, r1, lsr #0x1d
	and r1, r1, #0xff
	add r1, r1, #0xff
	and r1, r1, #0xff
	cmp r1, #1
	bhi _020D4A90
	ldrb r1, [r0, #0xd]
	cmp r1, #0
	beq _020D4AA4
_020D4A90:
	ldr r0, _020D4ADC ; =0x021D0D40
	mov r1, #0x28
	str r1, [r0, #0]
	sub r0, r1, #0x29
	bx lr
_020D4AA4:
	ldr r1, [r0, #8]
	mov r1, r1, lsl #0x1d
	mov ip, r1, lsr #0x1d
	ldreq r0, [r0, #0x18]
	bxeq lr
	ldr r2, [r0, #0x24]
	ldr r1, [r0, #0x1c]
	ldr r3, [r0, #0x34]
	sub r0, r2, r1
	cmp ip, #3
	add r0, r3, r0
	subhs r1, ip, #2
	subhs r0, r0, r1
	bx lr
	; .align 2, 0
_020D4ADC: .word 0x021D0D40
	arm_func_end sub_020D4A64

	arm_func_start sub_020D4AE0
sub_020D4AE0: ; 0x020D4AE0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _020D4BE0 ; =0x02101490
	mov r7, r0
	cmp r7, r1
	moveq r6, #2
	beq _020D4B18
	ldr r0, _020D4BE4 ; =0x021014DC
	cmp r7, r0
	moveq r6, #3
	beq _020D4B18
	ldr r0, _020D4BE8 ; =0x02101528
	cmp r7, r0
	moveq r6, #4
	movne r6, #5
_020D4B18:
	mov r0, #0x18
	mul r4, r6, r4
	ldr r5, _020D4BEC ; =0x021D0968
	add r0, r5, r4
	bl sub_020C2AF4
	cmp r0, #0
	bne _020D4B58
	ldr r0, _020D4BF0 ; =0x021CCC80
	ldr r2, _020D4BF4 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D4BF8 ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
	b _020D4BB0
_020D4B58:
	ldr r0, _020D4BF0 ; =0x021CCC80
	ldr r1, _020D4BF4 ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, r6, lsl #2]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D4B88
	ldr r1, _020D4BF8 ; =0x021D0944
	ldr r0, [r1, r6, lsl #2]
	add r0, r0, #1
	str r0, [r1, r6, lsl #2]
	b _020D4BB0
_020D4B88:
	add r0, r5, r4
	bl sub_020C29D8
	ldr r0, _020D4BF0 ; =0x021CCC80
	ldr r2, _020D4BF4 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D4BF8 ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
_020D4BB0:
	mov r0, r7
	bl sub_020D4A64
	ldr r1, _020D4BF8 ; =0x021D0944
	mov r7, r0
	ldr r0, [r1, r6, lsl #2]
	sub r0, r0, #1
	str r0, [r1, r6, lsl #2]
	bne _020D4BD8
	add r0, r5, r4
	bl sub_020C2A5C
_020D4BD8:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D4BE0: .word 0x02101490
_020D4BE4: .word 0x021014DC
_020D4BE8: .word 0x02101528
_020D4BEC: .word 0x021D0968
_020D4BF0: .word 0x021CCC80
_020D4BF4: .word 0x021D0920
_020D4BF8: .word 0x021D0944
	arm_func_end sub_020D4AE0

	arm_func_start sub_020D4BFC
sub_020D4BFC: ; 0x020D4BFC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #4]
	mov r4, r2
	mov r1, r1, lsl #0x16
	mov r1, r1, lsr #0x1d
	and r1, r1, #0xff
	cmp r1, #1
	ldreqb r1, [r5, #0xd]
	cmpeq r1, #0
	beq _020D4C48
	ldr r0, _020D4DE0 ; =0x021D0D40
	mov r1, #0x28
	str r1, [r0, #0]
	sub r0, r1, #0x29
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020D4C48:
	ldr r1, [r5, #8]
	mov r1, r1, lsl #0x1d
	mov r1, r1, lsr #0x1d
	cmp r1, #1
	bne _020D4C98
	mov r1, #0
	bl sub_020D417C
	cmp r0, #0
	beq _020D4C98
	mov r0, #1
	strb r0, [r5, #0xd]
	mov r2, #0
	ldr r0, _020D4DE0 ; =0x021D0D40
	mov r1, #0x28
	str r2, [r5, #0x28]
	str r1, [r0, #0]
	sub r0, r1, #0x29
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020D4C98:
	cmp r4, #1
	bne _020D4CB8
	mov r0, r5
	mov r4, #0
	bl sub_020D4A64
	ldr r1, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x14]
_020D4CB8:
	cmp r4, #2
	beq _020D4D4C
	ldr r0, [r5, #4]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1d
	cmp r0, #3
	beq _020D4D4C
	ldr r0, [r5, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	sub r0, r0, #2
	cmp r0, #1
	bhi _020D4D4C
	ldr r2, [sp, #0x14]
	ldr r0, [r5, #0x18]
	cmp r2, r0
	bhs _020D4D08
	ldr r0, [r5, #0x34]
	cmp r2, r0
	bhs _020D4D18
_020D4D08:
	ldr r0, [r5, #8]
	bic r0, r0, #7
	str r0, [r5, #8]
	b _020D4D58
_020D4D18:
	ldr r1, [r5, #0x1c]
	sub r0, r2, r0
	add r0, r1, r0
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #8]
	bic r0, r0, #7
	orr r0, r0, #2
	str r0, [r5, #8]
	b _020D4D58
_020D4D4C:
	ldr r0, [r5, #8]
	bic r0, r0, #7
	str r0, [r5, #8]
_020D4D58:
	ldr r0, [r5, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	bne _020D4DD0
	ldr ip, [r5, #0x38]
	cmp ip, #0
	beq _020D4DBC
	ldr r0, [r5, #0]
	ldr r3, [r5, #0x48]
	add r1, sp, #0x14
	mov r2, r4
	blx ip
	cmp r0, #0
	beq _020D4DBC
	mov r0, #1
	strb r0, [r5, #0xd]
	mov r2, #0
	ldr r0, _020D4DE0 ; =0x021D0D40
	mov r1, #0x28
	str r2, [r5, #0x28]
	str r1, [r0, #0]
	sub r0, r1, #0x29
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020D4DBC:
	mov r1, #0
	strb r1, [r5, #0xc]
	ldr r0, [sp, #0x14]
	str r0, [r5, #0x18]
	str r1, [r5, #0x28]
_020D4DD0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D4DE0: .word 0x021D0D40
	arm_func_end sub_020D4BFC

	arm_func_start sub_020D4DE4
sub_020D4DE4: ; 0x020D4DE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r3, _020D4EF4 ; =0x02101490
	mov sb, r0
	cmp sb, r3
	mov r8, r1
	mov r7, r2
	moveq r6, #2
	beq _020D4E24
	ldr r0, _020D4EF8 ; =0x021014DC
	cmp sb, r0
	moveq r6, #3
	beq _020D4E24
	ldr r0, _020D4EFC ; =0x02101528
	cmp sb, r0
	moveq r6, #4
	movne r6, #5
_020D4E24:
	mov r0, #0x18
	mul r4, r6, r4
	ldr r5, _020D4F00 ; =0x021D0968
	add r0, r5, r4
	bl sub_020C2AF4
	cmp r0, #0
	bne _020D4E64
	ldr r0, _020D4F04 ; =0x021CCC80
	ldr r2, _020D4F08 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D4F0C ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
	b _020D4EBC
_020D4E64:
	ldr r0, _020D4F04 ; =0x021CCC80
	ldr r1, _020D4F08 ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, r6, lsl #2]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D4E94
	ldr r1, _020D4F0C ; =0x021D0944
	ldr r0, [r1, r6, lsl #2]
	add r0, r0, #1
	str r0, [r1, r6, lsl #2]
	b _020D4EBC
_020D4E94:
	add r0, r5, r4
	bl sub_020C29D8
	ldr r0, _020D4F04 ; =0x021CCC80
	ldr r2, _020D4F08 ; =0x021D0920
	ldr r1, [r0, #4]
	ldr r0, _020D4F0C ; =0x021D0944
	ldr r3, [r1, #0x6c]
	mov r1, #1
	str r3, [r2, r6, lsl #2]
	str r1, [r0, r6, lsl #2]
_020D4EBC:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl sub_020D4BFC
	ldr r1, _020D4F0C ; =0x021D0944
	mov r7, r0
	ldr r0, [r1, r6, lsl #2]
	sub r0, r0, #1
	str r0, [r1, r6, lsl #2]
	bne _020D4EEC
	add r0, r5, r4
	bl sub_020C2A5C
_020D4EEC:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020D4EF4: .word 0x02101490
_020D4EF8: .word 0x021014DC
_020D4EFC: .word 0x02101528
_020D4F00: .word 0x021D0968
_020D4F04: .word 0x021CCC80
_020D4F08: .word 0x021D0920
_020D4F0C: .word 0x021D0944
	arm_func_end sub_020D4DE4

	arm_func_start sub_020D4F10
sub_020D4F10: ; 0x020D4F10
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r4, r0
	mov r2, r1
	strb r1, [r4, #0xd]
	bl sub_020D4DE4
	mov r0, #0
	strb r0, [r4, #0xd]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D4F10

	arm_func_start sub_020D4F34
sub_020D4F34: ; 0x020D4F34
	stmfd sp!, {r3, lr}
	ldr r3, _020D4F4C ; =0x021016D0
	ldr r3, [r3, #8]
	ldr r3, [r3, #0]
	blx r3
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D4F4C: .word 0x021016D0
	arm_func_end sub_020D4F34

	arm_func_start sub_020D4F50
sub_020D4F50: ; 0x020D4F50
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	cmp r2, #0
	mvneq r0, #0
	bxeq lr
	cmp r0, #0
	ldrneb r2, [r1]
	strneh r2, [r0]
	ldrsb r0, [r1]
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end sub_020D4F50

	arm_func_start sub_020D4F88
sub_020D4F88: ; 0x020D4F88
	cmp r0, #0
	moveq r0, #0
	strneb r1, [r0]
	movne r0, #1
	bx lr
	arm_func_end sub_020D4F88

	arm_func_start sub_020D4F9C
sub_020D4F9C: ; 0x020D4F9C
	stmfd sp!, {r3, lr}
	ldr r2, _020D4FB4 ; =0x021016D0
	ldr r2, [r2, #8]
	ldr r2, [r2, #4]
	blx r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D4FB4: .word 0x021016D0
	arm_func_end sub_020D4F9C

	arm_func_start sub_020D4FB8
sub_020D4FB8: ; 0x020D4FB8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	bl sub_020D8B60
	mov r5, r0
	cmp r8, #0
	mov r4, #0
	beq _020D5038
	cmp r6, #0
	bls _020D5038
_020D4FE8:
	ldrsb r0, [r7]
	cmp r0, #0
	beq _020D5020
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl sub_020D4F34
	cmp r0, #0
	add r8, r8, #2
	addgt r7, r7, r0
	subgt r5, r5, r0
	bgt _020D502C
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020D5020:
	mov r0, #0
	strh r0, [r8]
	b _020D5038
_020D502C:
	add r4, r4, #1
	cmp r4, r6
	blo _020D4FE8
_020D5038:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020D4FB8

	arm_func_start sub_020D5040
sub_020D5040: ; 0x020D5040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov sb, r1
	cmpne sb, #0
	mov r8, r2
	mov r7, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r6, sp, #0
_020D5064:
	ldrh r1, [sb]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, r7]
	beq _020D50B0
	mov r0, r6
	add sb, sb, #2
	bl sub_020D4F9C
	mov r5, r0
	add r0, r7, r5
	cmp r0, r8
	bhi _020D50B0
	mov r1, r6
	mov r2, r5
	add r0, r4, r7
	bl sub_020D8C44
	add r7, r7, r5
	cmp r7, r8
	bls _020D5064
_020D50B0:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020D5040

	arm_func_start sub_020D50B8
sub_020D50B8: ; 0x020D50B8
	mov ip, r0
	cmp r2, #0
	bxeq lr
_020D50C4:
	ldrsb r3, [r1], #1
	sub r2, r2, #1
	strb r3, [ip], #1
	bne _020D50C4
	bx lr
	arm_func_end sub_020D50B8

	arm_func_start sub_020D50D8
sub_020D50D8: ; 0x020D50D8
	cmp r1, r0
	blo _020D5100
	mov ip, r0
	cmp r2, #0
	bxeq lr
_020D50EC:
	ldrsb r3, [r1], #1
	sub r2, r2, #1
	strb r3, [ip], #1
	bne _020D50EC
	bx lr
_020D5100:
	cmp r2, #0
	add r3, r1, r2
	add ip, r0, r2
	bxeq lr
_020D5110:
	ldrsb r1, [r3, #-1]!
	sub r2, r2, #1
	strb r1, [ip, #-1]!
	bne _020D5110
	bx lr
	arm_func_end sub_020D50D8

	arm_func_start sub_020D5124
sub_020D5124: ; 0x020D5124
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020D51D0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D5124

	arm_func_start sub_020D5138
sub_020D5138: ; 0x020D5138
	cmp r2, #0
	and r3, r1, #0xff
	beq _020D515C
_020D5144:
	ldrb r1, [r0], #1
	cmp r1, r3
	subeq r0, r0, #1
	bxeq lr
	sub r2, r2, #1
	bne _020D5144
_020D515C:
	mov r0, #0
	bx lr
	arm_func_end sub_020D5138

	arm_func_start sub_020D5164
sub_020D5164: ; 0x020D5164
	cmp r2, #0
	and r3, r1, #0xff
	add r0, r0, r2
	beq _020D5188
_020D5174:
	ldrb r1, [r0, #-1]!
	cmp r1, r3
	bxeq lr
	sub r2, r2, #1
	bne _020D5174
_020D5188:
	mov r0, #0
	bx lr
	arm_func_end sub_020D5164

	arm_func_start sub_020D5190
sub_020D5190: ; 0x020D5190
	cmp r2, #0
	beq _020D51C8
_020D5198:
	ldrb ip, [r0], #1
	ldrb r3, [r1], #1
	cmp ip, r3
	beq _020D51C0
	ldrb r2, [r0, #-1]
	ldrb r0, [r1, #-1]
	cmp r2, r0
	mvnlo r0, #0
	movhs r0, #1
	bx lr
_020D51C0:
	sub r2, r2, #1
	bne _020D5198
_020D51C8:
	mov r0, #0
	bx lr
	arm_func_end sub_020D5190

	arm_func_start sub_020D51D0
sub_020D51D0: ; 0x020D51D0
	cmp r2, #0x20
	and r3, r1, #0xff
	blo _020D5264
	rsb r1, r0, #0
	and ip, r1, #3
	beq _020D51FC
	sub r2, r2, ip
	and r1, r3, #0xff
_020D51F0:
	strb r1, [r0], #1
	sub ip, ip, #1
	bne _020D51F0
_020D51FC:
	cmp r3, #0
	beq _020D5214
	mov r1, r3, lsl #0x10
	orr r1, r1, r3, lsl #24
	orr r1, r1, r3, lsl #8
	orr r3, r3, r1
_020D5214:
	mov r1, r2, lsr #5
	beq _020D5248
_020D521C:
	str r3, [r0, #0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	str r3, [r0, #0x10]
	str r3, [r0, #0x14]
	str r3, [r0, #0x18]
	str r3, [r0, #0x1c]
	add r0, r0, #0x20
	sub r1, r1, #1
	bne _020D521C
_020D5248:
	and r1, r2, #0x1f
	mov r1, r1, lsr #2
	beq _020D5260
_020D5254:
	str r3, [r0, #0], #4
	sub r1, r1, #1
	bne _020D5254
_020D5260:
	and r2, r2, #3
_020D5264:
	cmp r2, #0
	bxeq lr
	and r1, r3, #0xff
_020D5270:
	strb r1, [r0], #1
	sub r2, r2, #1
	bne _020D5270
	bx lr
	arm_func_end sub_020D51D0

	arm_func_start sub_020D5280
sub_020D5280: ; 0x020D5280
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldrsb r3, [r0, #1]
	mov r4, #0
	mov r5, #1
	mov lr, r2
	strb r5, [sp]
	strb r4, [sp, #1]
	strb r4, [sp, #2]
	strb r4, [sp, #3]
	strb r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	cmp r3, #0x25
	add ip, r0, #1
	bne _020D52DC
	add r0, sp, #0
	strb r3, [sp, #5]
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add sp, sp, #0x10
	add r0, ip, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020D52DC:
	mov r2, #2
	mov r0, r4
	mov r5, r2
	mov r6, r4
	mov r7, #1
_020D52F0:
	mov r8, r7
	cmp r3, #0x2b
	bgt _020D5320
	bge _020D5348
	cmp r3, #0x23
	bgt _020D5378
	cmp r3, #0x20
	blt _020D5378
	beq _020D5350
	cmp r3, #0x23
	beq _020D5360
	b _020D5378
_020D5320:
	cmp r3, #0x30
	bgt _020D5378
	cmp r3, #0x2d
	blt _020D5378
	beq _020D5340
	cmp r3, #0x30
	beq _020D5368
	b _020D5378
_020D5340:
	strb r6, [sp]
	b _020D537C
_020D5348:
	strb r7, [sp, #1]
	b _020D537C
_020D5350:
	ldrb r4, [sp, #1]
	cmp r4, #1
	strneb r5, [sp, #1]
	b _020D537C
_020D5360:
	strb r7, [sp, #3]
	b _020D537C
_020D5368:
	ldrb r4, [sp]
	cmp r4, #0
	strneb r2, [sp]
	b _020D537C
_020D5378:
	mov r8, r0
_020D537C:
	cmp r8, #0
	ldrnesb r3, [ip, #1]!
	bne _020D52F0
	cmp r3, #0x2a
	bne _020D53C4
	ldr r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #0]
	ldr r0, [r0, #-4]
	str r0, [sp, #8]
	cmp r0, #0
	bge _020D53BC
	rsb r0, r0, #0
	mov r2, #0
	strb r2, [sp]
	str r0, [sp, #8]
_020D53BC:
	ldrsb r3, [ip, #1]!
	b _020D5414
_020D53C4:
	ldr r4, _020D5808 ; =0x020FE864
	mov r5, #0
	mov r0, #0xa
	b _020D53E8
_020D53D4:
	ldr r2, [sp, #8]
	sub r3, r3, #0x30
	mla r6, r2, r0, r3
	ldrsb r3, [ip, #1]!
	str r6, [sp, #8]
_020D53E8:
	cmp r3, #0
	blt _020D53F8
	cmp r3, #0x80
	blt _020D5400
_020D53F8:
	mov r2, r5
	b _020D540C
_020D5400:
	mov r2, r3, lsl #1
	ldrh r2, [r4, r2]
	and r2, r2, #8
_020D540C:
	cmp r2, #0
	bne _020D53D4
_020D5414:
	ldr r2, [sp, #8]
	ldr r0, _020D580C ; =0x000001FD
	cmp r2, r0
	ble _020D5444
	mov r1, #0xff
	add r0, sp, #0
	strb r1, [sp, #5]
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add sp, sp, #0x10
	add r0, ip, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020D5444:
	cmp r3, #0x2e
	bne _020D54D8
	ldrsb r3, [ip, #1]!
	mov r0, #1
	strb r0, [sp, #2]
	cmp r3, #0x2a
	bne _020D5488
	ldr r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #0]
	ldr r0, [r0, #-4]
	ldrsb r3, [ip, #1]!
	str r0, [sp, #0xc]
	cmp r0, #0
	movlt r0, #0
	strltb r0, [sp, #2]
	b _020D54D8
_020D5488:
	ldr r2, _020D5808 ; =0x020FE864
	mov r4, #0
	mov r0, #0xa
	b _020D54AC
_020D5498:
	ldr r1, [sp, #0xc]
	sub r3, r3, #0x30
	mla r5, r1, r0, r3
	ldrsb r3, [ip, #1]!
	str r5, [sp, #0xc]
_020D54AC:
	cmp r3, #0
	blt _020D54BC
	cmp r3, #0x80
	blt _020D54C4
_020D54BC:
	mov r1, r4
	b _020D54D0
_020D54C4:
	mov r1, r3, lsl #1
	ldrh r1, [r2, r1]
	and r1, r1, #8
_020D54D0:
	cmp r1, #0
	bne _020D5498
_020D54D8:
	cmp r3, #0x6c
	mov r0, #1
	bgt _020D5510
	cmp r3, #0x68
	blt _020D5504
	beq _020D552C
	cmp r3, #0x6a
	beq _020D5578
	cmp r3, #0x6c
	beq _020D5548
	b _020D559C
_020D5504:
	cmp r3, #0x4c
	beq _020D556C
	b _020D559C
_020D5510:
	cmp r3, #0x74
	bgt _020D5520
	beq _020D5584
	b _020D559C
_020D5520:
	cmp r3, #0x7a
	beq _020D5590
	b _020D559C
_020D552C:
	ldrsb r1, [ip, #1]
	mov r2, #2
	strb r2, [sp, #4]
	cmp r1, #0x68
	streqb r0, [sp, #4]
	ldreqsb r3, [ip, #1]!
	b _020D55A0
_020D5548:
	ldrsb r1, [ip, #1]
	mov r2, #3
	strb r2, [sp, #4]
	cmp r1, #0x6c
	bne _020D55A0
	mov r1, #4
	strb r1, [sp, #4]
	ldrsb r3, [ip, #1]!
	b _020D55A0
_020D556C:
	mov r1, #9
	strb r1, [sp, #4]
	b _020D55A0
_020D5578:
	mov r1, #6
	strb r1, [sp, #4]
	b _020D55A0
_020D5584:
	mov r1, #8
	strb r1, [sp, #4]
	b _020D55A0
_020D5590:
	mov r1, #7
	strb r1, [sp, #4]
	b _020D55A0
_020D559C:
	mov r0, #0
_020D55A0:
	cmp r0, #0
	ldrnesb r3, [ip, #1]!
	strb r3, [sp, #5]
	cmp r3, #0x61
	bgt _020D55F4
	bge _020D56DC
	cmp r3, #0x47
	bgt _020D55E8
	sub r0, r3, #0x41
	addpl pc, pc, r0, lsl #2
	b _020D57E8
_020D55CC: ; jump table
	b _020D56DC ; case 0
	b _020D57E8 ; case 1
	b _020D57E8 ; case 2
	b _020D57E8 ; case 3
	b _020D5724 ; case 4
	b _020D56A4 ; case 5
	b _020D5714 ; case 6
_020D55E8:
	cmp r3, #0x58
	beq _020D5668
	b _020D57E8
_020D55F4:
	cmp r3, #0x63
	bgt _020D5604
	beq _020D5784
	b _020D57E8
_020D5604:
	sub r0, r3, #0x64
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _020D57E8
_020D5614: ; jump table
	b _020D5668 ; case 0
	b _020D5724 ; case 1
	b _020D56A4 ; case 2
	b _020D5714 ; case 3
	b _020D57E8 ; case 4
	b _020D5668 ; case 5
	b _020D57E8 ; case 6
	b _020D57E8 ; case 7
	b _020D57E8 ; case 8
	b _020D57E8 ; case 9
	b _020D57D4 ; case 10
	b _020D5668 ; case 11
	b _020D5760 ; case 12
	b _020D57E8 ; case 13
	b _020D57E8 ; case 14
	b _020D57B0 ; case 15
	b _020D57E8 ; case 16
	b _020D5668 ; case 17
	b _020D57E8 ; case 18
	b _020D57E8 ; case 19
	b _020D5668 ; case 20
_020D5668:
	ldrb r0, [sp, #4]
	cmp r0, #9
	moveq r0, #0xff
	streqb r0, [sp, #5]
	beq _020D57F0
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
	beq _020D57F0
	ldrb r0, [sp]
	cmp r0, #2
	moveq r0, #1
	streqb r0, [sp]
	b _020D57F0
_020D56A4:
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	moveq r0, #0xff
	streqb r0, [sp, #5]
	beq _020D57F0
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #6
	streq r0, [sp, #0xc]
	b _020D57F0
_020D56DC:
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #0xd
	streq r0, [sp, #0xc]
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	cmpne r0, #1
	moveq r0, #0xff
	streqb r0, [sp, #5]
	b _020D57F0
_020D5714:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
_020D5724:
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	cmpne r0, #1
	moveq r0, #0xff
	streqb r0, [sp, #5]
	beq _020D57F0
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #6
	streq r0, [sp, #0xc]
	b _020D57F0
_020D5760:
	mov r3, #0x78
	mov r2, #1
	mov r1, #3
	mov r0, #8
	strb r3, [sp, #5]
	strb r2, [sp, #3]
	strb r1, [sp, #4]
	str r0, [sp, #0xc]
	b _020D57F0
_020D5784:
	ldrb r1, [sp, #4]
	cmp r1, #3
	moveq r0, #5
	streqb r0, [sp, #4]
	beq _020D57F0
	ldrb r0, [sp, #2]
	cmp r0, #0
	cmpeq r1, #0
	movne r0, #0xff
	strneb r0, [sp, #5]
	b _020D57F0
_020D57B0:
	ldrb r0, [sp, #4]
	cmp r0, #3
	moveq r0, #5
	streqb r0, [sp, #4]
	beq _020D57F0
	cmp r0, #0
	movne r0, #0xff
	strneb r0, [sp, #5]
	b _020D57F0
_020D57D4:
	ldrb r0, [sp, #4]
	cmp r0, #9
	moveq r0, #0xff
	streqb r0, [sp, #5]
	b _020D57F0
_020D57E8:
	mov r0, #0xff
	strb r0, [sp, #5]
_020D57F0:
	add r0, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add r0, ip, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D5808: .word 0x020FE864
_020D580C: .word 0x000001FD
	arm_func_end sub_020D5280

	arm_func_start sub_020D5810
sub_020D5810: ; 0x020D5810
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sl, r0
	mov r0, #0
	mov r5, r1
	str r0, [sp, #0xc]
	ldr r7, [sp, #0x4c]
	mov r6, r0
	strb r0, [r5, #-1]!
	ldrb r0, [sp, #0x43]
	str r1, [sp]
	ldrb r8, [sp, #0x45]
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldrb fp, [sp, #0x41]
	str r0, [sp, #8]
	cmpeq r7, #0
	bne _020D5884
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020D5870
	cmp r8, #0x6f
	beq _020D5884
_020D5870:
	add sp, sp, #0x10
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D5884:
	cmp r8, #0x69
	bgt _020D58AC
	bge _020D58E0
	cmp r8, #0x58
	bgt _020D58A0
	beq _020D590C
	b _020D5914
_020D58A0:
	cmp r8, #0x64
	beq _020D58E0
	b _020D5914
_020D58AC:
	cmp r8, #0x6f
	bgt _020D58C0
	moveq r4, #8
	moveq fp, #0
	b _020D5914
_020D58C0:
	cmp r8, #0x78
	bgt _020D5914
	cmp r8, #0x75
	blt _020D5914
	beq _020D5900
	cmp r8, #0x78
	beq _020D590C
	b _020D5914
_020D58E0:
	cmp sl, #0
	mov r4, #0xa
	bge _020D5914
	mov r0, #1
	cmp sl, #-0x80000000
	rsbne sl, sl, #0
	str r0, [sp, #0xc]
	b _020D5914
_020D5900:
	mov r4, #0xa
	mov fp, #0
	b _020D5914
_020D590C:
	mov r4, #0x10
	mov fp, #0
_020D5914:
	mov r0, sl
	mov r1, r4
	bl sub_020E2178
	mov sb, r1
	mov r0, sl
	mov r1, r4
	bl sub_020E2178
	cmp sb, #0xa
	mov sl, r0
	addlt sb, sb, #0x30
	blt _020D594C
	cmp r8, #0x78
	addeq sb, sb, #0x57
	addne sb, sb, #0x37
_020D594C:
	cmp sl, #0
	strb sb, [r5, #-1]!
	add r6, r6, #1
	bne _020D5914
	cmp r4, #8
	bne _020D5980
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrnesb r0, [r5]
	cmpne r0, #0x30
	movne r0, #0x30
	strneb r0, [r5, #-1]!
	addne r6, r6, #1
_020D5980:
	ldrb r0, [sp, #0x40]
	cmp r0, #2
	bne _020D59B4
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #8]
	cmp r0, #0
	cmpeq fp, #0
	subne r7, r7, #1
	cmp r4, #0x10
	bne _020D59B4
	ldr r0, [sp, #4]
	cmp r0, #0
	subne r7, r7, #2
_020D59B4:
	ldr r0, [sp]
	sub r1, r0, r5
	ldr r0, _020D5A58 ; =0x000001FD
	add r1, r7, r1
	cmp r1, r0
	addgt sp, sp, #0x10
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	cmp r6, r7
	bge _020D59F8
	mov r0, #0x30
_020D59E8:
	add r6, r6, #1
	cmp r6, r7
	strb r0, [r5, #-1]!
	blt _020D59E8
_020D59F8:
	cmp r4, #0x10
	bne _020D5A14
	ldr r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x30
	strneb r8, [r5, #-1]
	strneb r0, [r5, #-2]!
_020D5A14:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r5, #-1]!
	bne _020D5A44
	cmp fp, #1
	moveq r0, #0x2b
	streqb r0, [r5, #-1]!
	beq _020D5A44
	cmp fp, #2
	moveq r0, #0x20
	streqb r0, [r5, #-1]!
_020D5A44:
	mov r0, r5
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D5A58: .word 0x000001FD
	arm_func_end sub_020D5810

	arm_func_start sub_020D5A5C
sub_020D5A5C: ; 0x020D5A5C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sb, r1
	mov r1, #0
	mov sl, r0
	mov r8, r2
	mov r0, r1
	strb r0, [r8, #-1]!
	ldr r0, [sp, #0x58]
	cmp sb, #0
	str r0, [sp, #0x14]
	ldrb r0, [sp, #0x4f]
	cmpeq sl, #0
	str r2, [sp]
	str r0, [sp, #4]
	ldrb r0, [sp, #0x51]
	str r1, [sp, #0x18]
	mov fp, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0xc]
	ldrb r0, [sp, #0x4d]
	str r0, [sp, #0x10]
	ldreq r0, [sp, #0x14]
	cmpeq r0, #0
	bne _020D5AF4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020D5AE0
	ldr r0, [sp, #8]
	cmp r0, #0x6f
	beq _020D5AF4
_020D5AE0:
	add sp, sp, #0x1c
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D5AF4:
	ldr r0, [sp, #8]
	cmp r0, #0x69
	bgt _020D5B20
	bge _020D5B50
	cmp r0, #0x58
	bgt _020D5B14
	beq _020D5BA4
	b _020D5BB0
_020D5B14:
	cmp r0, #0x64
	beq _020D5B50
	b _020D5BB0
_020D5B20:
	cmp r0, #0x6f
	bgt _020D5B30
	beq _020D5B84
	b _020D5BB0
_020D5B30:
	cmp r0, #0x78
	bgt _020D5BB0
	cmp r0, #0x75
	blt _020D5BB0
	beq _020D5B94
	cmp r0, #0x78
	beq _020D5BA4
	b _020D5BB0
_020D5B50:
	sub r0, sl, #0
	sbc r0, sb, #0
	mov r7, #0xa
	mov r6, #0
	bge _020D5BB0
	cmp sb, #-0x80000000
	cmpeq sl, r6
	beq _020D5B78
	rsb sl, sl, #0
	rsc sb, sb, #0
_020D5B78:
	mov r0, #1
	str r0, [sp, #0x18]
	b _020D5BB0
_020D5B84:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #8
	b _020D5BB0
_020D5B94:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #0xa
	b _020D5BB0
_020D5BA4:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #0x10
_020D5BB0:
	mov r4, #0
_020D5BB4:
	mov r0, sl
	mov r1, sb
	mov r2, r7
	mov r3, r6
	bl sub_020E1EE0
	mov r5, r0
	mov r0, sl
	mov r1, sb
	mov r2, r7
	mov r3, r6
	bl sub_020E1ED4
	mov sl, r0
	cmp r5, #0xa
	mov sb, r1
	addlt r0, r5, #0x30
	blt _020D5C04
	ldr r0, [sp, #8]
	cmp r0, #0x78
	addeq r0, r5, #0x57
	addne r0, r5, #0x37
_020D5C04:
	strb r0, [r8, #-1]!
	mov r0, #0
	cmp sb, r0
	cmpeq sl, r4
	add fp, fp, #1
	bne _020D5BB4
	cmp r6, #0
	cmpeq r7, #8
	bne _020D5C44
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrnesb r0, [r8]
	cmpne r0, #0x30
	movne r0, #0x30
	strneb r0, [r8, #-1]!
	addne fp, fp, #1
_020D5C44:
	ldrb r0, [sp, #0x4c]
	cmp r0, #2
	bne _020D5C94
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	cmpeq r0, #0
	ldrne r0, [sp, #0x14]
	subne r0, r0, #1
	strne r0, [sp, #0x14]
	cmp r6, #0
	cmpeq r7, #0x10
	bne _020D5C94
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrne r0, [sp, #0x14]
	subne r0, r0, #2
	strne r0, [sp, #0x14]
_020D5C94:
	ldr r0, [sp]
	ldr r1, _020D5D54 ; =0x000001FD
	sub r2, r0, r8
	ldr r0, [sp, #0x14]
	add r0, r0, r2
	cmp r0, r1
	addgt sp, sp, #0x1c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldr r0, [sp, #0x14]
	cmp fp, r0
	bge _020D5CE4
	mov r1, #0x30
_020D5CD0:
	ldr r0, [sp, #0x14]
	add fp, fp, #1
	cmp fp, r0
	strb r1, [r8, #-1]!
	blt _020D5CD0
_020D5CE4:
	cmp r6, #0
	cmpeq r7, #0x10
	bne _020D5D0C
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020D5D0C
	ldr r0, [sp, #8]
	mov r1, #0x30
	strb r0, [r8, #-1]
	strb r1, [r8, #-2]!
_020D5D0C:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r8, #-1]!
	bne _020D5D40
	ldr r0, [sp, #0x10]
	cmp r0, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _020D5D40
	cmp r0, #2
	moveq r0, #0x20
	streqb r0, [r8, #-1]!
_020D5D40:
	mov r0, r8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D5D54: .word 0x000001FD
	arm_func_end sub_020D5A5C

	arm_func_start sub_020D5D58
sub_020D5D58: ; 0x020D5D58
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x44
	ldr r7, [sp, #0x80]
	ldr r0, _020D6208 ; =0x000001FD
	mov r8, r2
	cmp r7, r0
	ldrb r6, [sp, #0x79]
	ldrb r5, [sp, #0x77]
	ldrb r4, [sp, #0x75]
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x6c]
	addgt sp, sp, #0x44
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	addgt sp, sp, #0x10
	bxgt lr
	mov sl, #0
	mov sb, #0x20
	add r0, sp, #8
	add r3, sp, #0xc
	strb sl, [sp, #8]
	strh sb, [sp, #0xa]
	bl sub_020DF108
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	bl sub_020DE084
	mov r2, r0
	mov r0, sl
	mov r3, r1
	mov r1, r0
	bl sub_020E0F94
	bne _020D5E24
	ldr r3, _020D620C ; =0x021017D8
	sub r0, r8, #6
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	add sp, sp, #0x44
	strb r2, [r8, #-6]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r2, [r3, #4]
	ldrb r1, [r3, #5]
	strb r2, [r0, #4]
	strb r1, [r0, #5]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5E24:
	ldrb r0, [sp, #0x11]
	cmp r0, #0x49
	bne _020D5F34
	ldrsb r0, [sp, #0xc]
	cmp r0, #0
	beq _020D5EC0
	cmp r6, #0x41
	sub r0, r8, #5
	bne _020D5E84
	ldr r3, _020D6210 ; =0x021017E0
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5E84:
	ldr r3, _020D6214 ; =0x021017E8
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5EC0:
	cmp r6, #0x41
	sub r0, r8, #4
	bne _020D5F00
	ldr r3, _020D6218 ; =0x021017F0
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5F00:
	ldr r3, _020D621C ; =0x021017F4
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5F34:
	cmp r0, #0x4e
	bne _020D6040
	ldrsb r0, [sp, #0xc]
	cmp r0, #0
	beq _020D5FCC
	cmp r6, #0x41
	sub r0, r8, #5
	bne _020D5F90
	ldr r3, _020D6220 ; =0x021017F8
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5F90:
	ldr r3, _020D6224 ; =0x02101800
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5FCC:
	cmp r6, #0x41
	sub r0, r8, #4
	bne _020D600C
	ldr r3, _020D6228 ; =0x02101808
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D600C:
	ldr r3, _020D622C ; =0x0210180C
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D6040:
	mov r3, sl
	mov r1, #1
	mov r0, #0x64
	add sb, sp, #0x68
	strb r1, [sp, #0x34]
	strb r1, [sp, #0x35]
	strb r3, [sp, #0x36]
	strb r3, [sp, #0x37]
	strb r3, [sp, #0x38]
	str r3, [sp, #0x3c]
	str r1, [sp, #0x40]
	strb r0, [sp, #0x39]
_020D6070:
	rsb r1, r3, #7
	ldrsb r2, [sb, r3]
	ldrsb r0, [sb, r1]
	strb r0, [sb, r3]
	add r3, r3, #1
	strb r2, [sb, r1]
	cmp r3, #4
	blt _020D6070
	ldrb r0, [sp, #0x69]
	ldrb r1, [sp, #0x68]
	ldr sb, _020D6230 ; =0x000007FF
	mov r0, r0, lsl #0x11
	orr r1, r0, r1, lsl #25
	add r0, sp, #0x34
	and lr, sb, r1, lsr #21
	sub ip, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	rsb r0, sb, #0x400
	mov r1, r8
	add r0, lr, r0
	ldmia ip, {r2, r3}
	bl sub_020D5810
	cmp r6, #0x61
	moveq r1, #0x70
	movne r1, #0x50
	strb r1, [r0, #-1]!
	mov r1, r7, lsl #2
	mov lr, r7
	cmp r7, #1
	add r8, r1, #0xb
	add ip, sp, #0x68
	blt _020D6180
	mov sb, #0x30
_020D60F8:
	cmp r8, #0x40
	bge _020D6168
	ldrb r1, [ip, r8, asr #3]
	and r2, r8, #7
	rsb r3, r2, #7
	mov r2, r1, asr r3
	sub sl, r8, #4
	bic r1, r8, #7
	bic sl, sl, #7
	cmp r1, sl
	add sl, ip, r8, asr #3
	and r1, r2, #0xff
	beq _020D613C
	ldrb r2, [sl, #-1]
	mov r2, r2, lsl #8
	orr r1, r1, r2, asr r3
	and r1, r1, #0xff
_020D613C:
	and r1, r1, #0xf
	cmp r1, #0xa
	addlo r1, r1, #0x30
	andlo r1, r1, #0xff
	blo _020D616C
	cmp r6, #0x61
	addeq r1, r1, #0x57
	andeq r1, r1, #0xff
	addne r1, r1, #0x37
	andne r1, r1, #0xff
	b _020D616C
_020D6168:
	mov r1, sb
_020D616C:
	sub lr, lr, #1
	cmp lr, #1
	strb r1, [r0, #-1]!
	sub r8, r8, #4
	bge _020D60F8
_020D6180:
	cmp r7, #0
	cmpeq r5, #0
	movne r1, #0x2e
	strneb r1, [r0, #-1]!
	mov r1, #0x31
	strb r1, [r0, #-1]
	cmp r6, #0x61
	moveq r1, #0x78
	movne r1, #0x58
	strb r1, [r0, #-2]!
	mov r1, #0x30
	strb r1, [r0, #-1]!
	ldrsb r1, [sp, #0xc]
	cmp r1, #0
	movne r1, #0x2d
	strneb r1, [r0, #-1]!
	addne sp, sp, #0x44
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	addne sp, sp, #0x10
	bxne lr
	cmp r4, #1
	moveq r1, #0x2b
	streqb r1, [r0, #-1]!
	addeq sp, sp, #0x44
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r4, #2
	moveq r1, #0x20
	streqb r1, [r0, #-1]!
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D6208: .word 0x000001FD
_020D620C: .word 0x021017D8
_020D6210: .word 0x021017E0
_020D6214: .word 0x021017E8
_020D6218: .word 0x021017F0
_020D621C: .word 0x021017F4
_020D6220: .word 0x021017F8
_020D6224: .word 0x02101800
_020D6228: .word 0x02101808
_020D622C: .word 0x0210180C
_020D6230: .word 0x000007FF
	arm_func_end sub_020D5D58

	arm_func_start sub_020D6234
sub_020D6234: ; 0x020D6234
	stmfd sp!, {r4, lr}
	cmp r1, #0
	bge _020D625C
_020D6240:
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #1
	strb r1, [r0, #4]
	mov r1, #0x30
	strb r1, [r0, #5]
	ldmia sp!, {r4, pc}
_020D625C:
	ldrb lr, [r0, #4]
	cmp r1, lr
	ldmgeia sp!, {r4, pc}
	add ip, r0, #5
	add r2, ip, r1
	add r2, r2, #1
	ldrsb r3, [r2, #-1]!
	sub r3, r3, #0x30
	mov r3, r3, lsl #0x18
	mov r3, r3, asr #0x18
	cmp r3, #5
	bne _020D62BC
	add ip, ip, lr
_020D6290:
	sub ip, ip, #1
	cmp ip, r2
	bls _020D62A8
	ldrsb r3, [ip]
	cmp r3, #0x30
	beq _020D6290
_020D62A8:
	cmp ip, r2
	ldreqsb r3, [r2, #-1]
	andeq r4, r3, #1
	movne r4, #1
	b _020D62C4
_020D62BC:
	movgt r4, #1
	movle r4, #0
_020D62C4:
	cmp r1, #0
	beq _020D6320
	mov ip, #0
	mov lr, #1
_020D62D4:
	ldrsb r3, [r2, #-1]!
	sub r3, r3, #0x30
	add r3, r3, r4
	mov r3, r3, lsl #0x18
	mov r3, r3, asr #0x18
	cmp r3, #9
	movgt r4, lr
	movle r4, ip
	cmp r4, #0
	bne _020D6304
	cmp r3, #0
	bne _020D630C
_020D6304:
	sub r1, r1, #1
	b _020D6318
_020D630C:
	add r3, r3, #0x30
	strb r3, [r2]
	b _020D6320
_020D6318:
	cmp r1, #0
	bne _020D62D4
_020D6320:
	cmp r4, #0
	beq _020D6348
	ldrsh r3, [r0, #2]
	mov r2, #1
	mov r1, #0x31
	add r3, r3, #1
	strh r3, [r0, #2]
	strb r2, [r0, #4]
	strb r1, [r0, #5]
	ldmia sp!, {r4, pc}
_020D6348:
	cmp r1, #0
	beq _020D6240
	strb r1, [r0, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D6234

	arm_func_start sub_020D6358
sub_020D6358: ; 0x020D6358
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	ldr r7, [sp, #0x68]
	ldr r3, _020D6A90 ; =0x000001FD
	ldrb r6, [sp, #0x61]
	ldrb r5, [sp, #0x5f]
	ldrb r4, [sp, #0x5d]
	cmp r7, r3
	mov sl, r0
	mov r8, r1
	mov sb, r2
	addgt sp, sp, #0x2c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	mov ip, #0
	mov fp, #0x20
	add r0, sp, #0
	add r3, sp, #4
	mov r1, sl
	mov r2, r8
	strb ip, [sp]
	strh fp, [sp, #2]
	bl sub_020DF108
	ldrb r0, [sp, #8]
	add r1, sp, #9
	add r0, r1, r0
	b _020D63E8
_020D63D0:
	ldrb r2, [sp, #8]
	ldrsh r1, [sp, #6]
	sub r2, r2, #1
	add r1, r1, #1
	strb r2, [sp, #8]
	strh r1, [sp, #6]
_020D63E8:
	ldrb r1, [sp, #8]
	cmp r1, #1
	bls _020D6400
	ldrsb r1, [r0, #-1]!
	cmp r1, #0x30
	beq _020D63D0
_020D6400:
	ldrb r0, [sp, #9]
	cmp r0, #0x30
	beq _020D6420
	cmp r0, #0x49
	beq _020D642C
	cmp r0, #0x4e
	beq _020D658C
	b _020D66E0
_020D6420:
	mov r0, #0
	strh r0, [sp, #6]
	b _020D66E0
_020D642C:
	mov r2, #0
	mov r0, sl
	mov r1, r8
	mov r3, r2
	bl sub_020E0EF8
	bhs _020D64F0
	cmp r6, #0
	sub r0, sb, #5
	blt _020D6458
	cmp r6, #0x80
	blt _020D6460
_020D6458:
	mov r1, #0
	b _020D6470
_020D6460:
	ldr r1, _020D6A94 ; =0x020FE864
	mov r2, r6, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #0x200
_020D6470:
	cmp r1, #0
	beq _020D64B4
	ldr r3, _020D6A98 ; =0x021017E0
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D64B4:
	ldr r3, _020D6A9C ; =0x021017E8
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D64F0:
	cmp r6, #0
	sub r0, sb, #4
	blt _020D6504
	cmp r6, #0x80
	blt _020D650C
_020D6504:
	mov r1, #0
	b _020D651C
_020D650C:
	ldr r1, _020D6A94 ; =0x020FE864
	mov r2, r6, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #0x200
_020D651C:
	cmp r1, #0
	beq _020D6558
	ldr r3, _020D6AA0 ; =0x021017F0
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D6558:
	ldr r3, _020D6AA4 ; =0x021017F4
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D658C:
	ldrsb r0, [sp, #4]
	cmp r0, #0
	beq _020D6644
	cmp r6, #0
	sub r0, sb, #5
	blt _020D65AC
	cmp r6, #0x80
	blt _020D65B4
_020D65AC:
	mov r1, #0
	b _020D65C4
_020D65B4:
	ldr r1, _020D6A94 ; =0x020FE864
	mov r2, r6, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #0x200
_020D65C4:
	cmp r1, #0
	beq _020D6608
	ldr r3, _020D6AA8 ; =0x021017F8
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D6608:
	ldr r3, _020D6AAC ; =0x02101800
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D6644:
	cmp r6, #0
	sub r0, sb, #4
	blt _020D6658
	cmp r6, #0x80
	blt _020D6660
_020D6658:
	mov r1, #0
	b _020D6670
_020D6660:
	ldr r1, _020D6A94 ; =0x020FE864
	mov r2, r6, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #0x200
_020D6670:
	cmp r1, #0
	beq _020D66AC
	ldr r3, _020D6AB0 ; =0x02101808
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D66AC:
	ldr r3, _020D6AB4 ; =0x0210180C
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D66E0:
	ldrb r0, [sp, #8]
	ldrsh r1, [sp, #6]
	sub r8, sb, #1
	sub r0, r0, #1
	add r0, r1, r0
	strh r0, [sp, #6]
	mov r0, #0
	strb r0, [r8]
	cmp r6, #0x65
	bgt _020D6734
	bge _020D67C0
	cmp r6, #0x47
	bgt _020D6A7C
	cmp r6, #0x45
	blt _020D6A7C
	beq _020D67C0
	cmp r6, #0x46
	beq _020D6908
	cmp r6, #0x47
	beq _020D674C
	b _020D6A7C
_020D6734:
	cmp r6, #0x66
	bgt _020D6744
	beq _020D6908
	b _020D6A7C
_020D6744:
	cmp r6, #0x67
	bne _020D6A7C
_020D674C:
	ldrb r0, [sp, #8]
	cmp r0, r7
	ble _020D6764
	add r0, sp, #4
	mov r1, r7
	bl sub_020D6234
_020D6764:
	ldrsh r2, [sp, #6]
	mvn r0, #3
	cmp r2, r0
	blt _020D677C
	cmp r2, r7
	blt _020D679C
_020D677C:
	cmp r5, #0
	ldreqb r0, [sp, #8]
	subne r7, r7, #1
	subeq r7, r0, #1
	cmp r6, #0x67
	moveq r6, #0x65
	movne r6, #0x45
	b _020D67C0
_020D679C:
	cmp r5, #0
	addne r0, r2, #1
	subne r7, r7, r0
	bne _020D6908
	ldrb r1, [sp, #8]
	add r0, r2, #1
	sub r7, r1, r0
	movmi r7, #0
	b _020D6908
_020D67C0:
	ldrb r0, [sp, #8]
	add r1, r7, #1
	cmp r0, r1
	ble _020D67D8
	add r0, sp, #4
	bl sub_020D6234
_020D67D8:
	ldrsh lr, [sp, #6]
	mov fp, #0x2b
	mov sl, #0
	cmp lr, #0
	rsblt lr, lr, #0
	movlt fp, #0x2d
	ldr r3, _020D6AB8 ; =0x66666667
	mov r0, #0xa
	b _020D682C
_020D67FC:
	mov r1, lr, lsr #0x1f
	smull r2, ip, r3, lr
	add ip, r1, ip, asr #2
	smull r1, r2, r0, ip
	sub ip, lr, r1
	add r1, ip, #0x30
	strb r1, [r8, #-1]!
	mov r2, lr
	smull r1, lr, r3, r2
	mov r1, r2, lsr #0x1f
	add lr, r1, lr, asr #2
	add sl, sl, #1
_020D682C:
	cmp lr, #0
	bne _020D67FC
	cmp sl, #2
	blt _020D67FC
	strb fp, [r8, #-1]
	strb r6, [r8, #-2]!
	sub r1, sb, r8
	ldr r0, _020D6A90 ; =0x000001FD
	add r1, r7, r1
	cmp r1, r0
	addgt sp, sp, #0x2c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldrb r1, [sp, #8]
	add r0, r7, #1
	cmp r1, r0
	bge _020D6898
	add r0, r7, #2
	sub r0, r0, r1
	sub r1, r0, #1
	beq _020D6898
	mov r0, #0x30
_020D688C:
	strb r0, [r8, #-1]!
	sub r1, r1, #1
	bne _020D688C
_020D6898:
	ldrb r1, [sp, #8]
	add r0, sp, #9
	add r2, r0, r1
	sub r1, r1, #1
	beq _020D68BC
_020D68AC:
	ldrsb r0, [r2, #-1]!
	sub r1, r1, #1
	strb r0, [r8, #-1]!
	bne _020D68AC
_020D68BC:
	cmp r7, #0
	cmpeq r5, #0
	movne r0, #0x2e
	strneb r0, [r8, #-1]!
	ldrb r0, [sp, #9]
	strb r0, [r8, #-1]!
	ldrsb r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r8, #-1]!
	bne _020D6A7C
	cmp r4, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _020D6A7C
	cmp r4, #2
	moveq r0, #0x20
	streqb r0, [r8, #-1]!
	b _020D6A7C
_020D6908:
	ldrsh r3, [sp, #6]
	ldrb r2, [sp, #8]
	sub r0, r2, r3
	sub r1, r0, #1
	movmi r1, #0
	cmp r1, r7
	ble _020D6948
	sub r1, r1, r7
	add r0, sp, #4
	sub r1, r2, r1
	bl sub_020D6234
	ldrsh r3, [sp, #6]
	ldrb r2, [sp, #8]
	sub r0, r2, r3
	sub r1, r0, #1
	movmi r1, #0
_020D6948:
	add r0, r3, #1
	movmi r0, #0
	ldr r3, _020D6A90 ; =0x000001FD
	add r6, r0, r1
	cmp r6, r3
	addgt sp, sp, #0x2c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	add r3, sp, #9
	sub r6, r7, r1
	cmp r6, #0
	add r2, r3, r2
	mov sb, #0
	ble _020D699C
	mov r3, #0x30
_020D698C:
	add sb, sb, #1
	cmp sb, r6
	strb r3, [r8, #-1]!
	blt _020D698C
_020D699C:
	mov r6, #0
	b _020D69B0
_020D69A4:
	ldrsb r3, [r2, #-1]!
	add r6, r6, #1
	strb r3, [r8, #-1]!
_020D69B0:
	cmp r6, r1
	ldrltb r3, [sp, #8]
	cmplt r6, r3
	blt _020D69A4
	cmp r6, r1
	bge _020D69DC
	mov r3, #0x30
_020D69CC:
	add r6, r6, #1
	cmp r6, r1
	strb r3, [r8, #-1]!
	blt _020D69CC
_020D69DC:
	cmp r7, #0
	cmpeq r5, #0
	movne r1, #0x2e
	strneb r1, [r8, #-1]!
	cmp r0, #0
	beq _020D6A44
	ldrb r1, [sp, #8]
	mov r5, #0
	sub r1, r0, r1
	cmp r1, #0
	ble _020D6A24
	mov r3, #0x30
_020D6A0C:
	strb r3, [r8, #-1]!
	ldrb r1, [sp, #8]
	add r5, r5, #1
	sub r1, r0, r1
	cmp r5, r1
	blt _020D6A0C
_020D6A24:
	cmp r5, r0
	bge _020D6A4C
_020D6A2C:
	ldrsb r1, [r2, #-1]!
	add r5, r5, #1
	cmp r5, r0
	strb r1, [r8, #-1]!
	blt _020D6A2C
	b _020D6A4C
_020D6A44:
	mov r0, #0x30
	strb r0, [r8, #-1]!
_020D6A4C:
	ldrsb r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r8, #-1]!
	bne _020D6A7C
	cmp r4, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _020D6A7C
	cmp r4, #2
	moveq r0, #0x20
	streqb r0, [r8, #-1]!
_020D6A7C:
	mov r0, r8
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D6A90: .word 0x000001FD
_020D6A94: .word 0x020FE864
_020D6A98: .word 0x021017E0
_020D6A9C: .word 0x021017E8
_020D6AA0: .word 0x021017F0
_020D6AA4: .word 0x021017F4
_020D6AA8: .word 0x021017F8
_020D6AAC: .word 0x02101800
_020D6AB0: .word 0x02101808
_020D6AB4: .word 0x0210180C
_020D6AB8: .word 0x66666667
	arm_func_end sub_020D6358

	arm_func_start sub_020D6ABC
sub_020D6ABC: ; 0x020D6ABC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x22c
	mov r3, #0x20
	mov fp, r2
	strb r3, [sp, #0x19]
	ldrsb r2, [fp]
	mov sb, r0
	mov r8, r1
	cmp r2, #0
	mov sl, #0
	beq _020D72C4
_020D6AEC:
	mov r0, fp
	mov r1, #0x25
	bl sub_020D8E5C
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _020D6B40
	mov r0, fp
	bl sub_020D8B60
	mov r2, r0
	add sl, sl, r2
	beq _020D72C4
	mov r0, r8
	mov r1, fp
	blx sb
	cmp r0, #0
	bne _020D72C4
	add sp, sp, #0x22c
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D6B40:
	sub r2, r0, fp
	add sl, sl, r2
	beq _020D6B70
	mov r0, r8
	mov r1, fp
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020D6B70:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x25c
	add r2, sp, #0x1c
	bl sub_020D5280
	ldrb r1, [sp, #0x21]
	mov fp, r0
	cmp r1, #0x61
	bgt _020D6BDC
	bge _020D6F40
	cmp r1, #0x47
	bgt _020D6BD0
	sub r0, r1, #0x41
	addpl pc, pc, r0, lsl #2
	b _020D6BC4
_020D6BA8: ; jump table
	b _020D6F40 ; case 0
	b _020D7128 ; case 1
	b _020D7128 ; case 2
	b _020D7128 ; case 3
	b _020D6ED8 ; case 4
	b _020D6ED8 ; case 5
	b _020D6ED8 ; case 6
_020D6BC4:
	cmp r1, #0x25
	beq _020D7114
	b _020D7128
_020D6BD0:
	cmp r1, #0x58
	beq _020D6D9C
	b _020D7128
_020D6BDC:
	cmp r1, #0x75
	bgt _020D6C44
	sub r0, r1, #0x64
	addpl pc, pc, r0, lsl #2
	b _020D6C38
_020D6BF0: ; jump table
	b _020D6C5C ; case 0
	b _020D6ED8 ; case 1
	b _020D6ED8 ; case 2
	b _020D6ED8 ; case 3
	b _020D7128 ; case 4
	b _020D6C5C ; case 5
	b _020D7128 ; case 6
	b _020D7128 ; case 7
	b _020D7128 ; case 8
	b _020D7128 ; case 9
	b _020D7068 ; case 10
	b _020D6D9C ; case 11
	b _020D7128 ; case 12
	b _020D7128 ; case 13
	b _020D7128 ; case 14
	b _020D6FA8 ; case 15
	b _020D7128 ; case 16
	b _020D6D9C ; case 17
_020D6C38:
	cmp r1, #0x63
	beq _020D70F4
	b _020D7128
_020D6C44:
	cmp r1, #0x78
	bgt _020D6C54
	beq _020D6D9C
	b _020D7128
_020D6C54:
	cmp r1, #0xff
	b _020D7128
_020D6C5C:
	ldrb r0, [sp, #0x20]
	cmp r0, #3
	bne _020D6C7C
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6D14
_020D6C7C:
	cmp r0, #4
	bne _020D6CA4
	ldr r1, [sp, #0x25c]
	add r2, r1, #8
	str r2, [sp, #0x25c]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020D6D14
_020D6CA4:
	cmp r0, #6
	bne _020D6CCC
	ldr r1, [sp, #0x25c]
	add r2, r1, #8
	str r2, [sp, #0x25c]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020D6D14
_020D6CCC:
	cmp r0, #7
	bne _020D6CE8
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6D14
_020D6CE8:
	cmp r0, #8
	bne _020D6D04
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6D14
_020D6D04:
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
_020D6D14:
	cmp r0, #2
	moveq r1, r5, lsl #0x10
	moveq r5, r1, asr #0x10
	cmp r0, #1
	moveq r1, r5, lsl #0x18
	moveq r5, r1, asr #0x18
	cmp r0, #4
	cmpne r0, #6
	add r0, sp, #0x1c
	bne _020D6D68
	sub r4, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r3, [r4, #0]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x22c
	bl sub_020D5A5C
	mov r7, r0
	beq _020D7128
	b _020D6D8C
_020D6D68:
	sub r4, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r1, sp, #0x22c
	mov r0, r5
	ldmia r4, {r2, r3}
	bl sub_020D5810
	mov r7, r0
	beq _020D7128
_020D6D8C:
	add r0, sp, #0x200
	add r0, r0, #0x2b
	sub r6, r0, r7
	b _020D7174
_020D6D9C:
	ldrb r0, [sp, #0x20]
	cmp r0, #3
	bne _020D6DBC
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6E54
_020D6DBC:
	cmp r0, #4
	bne _020D6DE4
	ldr r1, [sp, #0x25c]
	add r2, r1, #8
	str r2, [sp, #0x25c]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020D6E54
_020D6DE4:
	cmp r0, #6
	bne _020D6E0C
	ldr r1, [sp, #0x25c]
	add r2, r1, #8
	str r2, [sp, #0x25c]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020D6E54
_020D6E0C:
	cmp r0, #7
	bne _020D6E28
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6E54
_020D6E28:
	cmp r0, #8
	bne _020D6E44
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6E54
_020D6E44:
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
_020D6E54:
	cmp r0, #2
	moveq r1, r5, lsl #0x10
	moveq r5, r1, lsr #0x10
	cmp r0, #1
	andeq r5, r5, #0xff
	cmp r0, #4
	cmpne r0, #6
	add r0, sp, #0x1c
	bne _020D6EA4
	sub r4, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r3, [r4, #0]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x22c
	bl sub_020D5A5C
	mov r7, r0
	beq _020D7128
	b _020D6EC8
_020D6EA4:
	sub r4, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r1, sp, #0x22c
	mov r0, r5
	ldmia r4, {r2, r3}
	bl sub_020D5810
	mov r7, r0
	beq _020D7128
_020D6EC8:
	add r0, sp, #0x200
	add r0, r0, #0x2b
	sub r6, r0, r7
	b _020D7174
_020D6ED8:
	ldrb r0, [sp, #0x20]
	cmp r0, #9
	ldrne r0, [sp, #0x25c]
	addne r0, r0, #8
	strne r0, [sp, #0x25c]
	bne _020D6EFC
	ldr r0, [sp, #0x25c]
	add r0, r0, #8
	str r0, [sp, #0x25c]
_020D6EFC:
	ldr r7, [r0, #-8]
	ldr r6, [r0, #-4]
	add r0, sp, #0x1c
	sub r4, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r3, [r4, #0]
	mov r0, r7
	mov r1, r6
	add r2, sp, #0x22c
	bl sub_020D6358
	mov r7, r0
	beq _020D7128
	add r0, sp, #0x200
	add r0, r0, #0x2b
	sub r6, r0, r7
	b _020D7174
_020D6F40:
	ldrb r0, [sp, #0x20]
	cmp r0, #9
	ldrne r0, [sp, #0x25c]
	addne r0, r0, #8
	strne r0, [sp, #0x25c]
	bne _020D6F64
	ldr r0, [sp, #0x25c]
	add r0, r0, #8
	str r0, [sp, #0x25c]
_020D6F64:
	ldr r7, [r0, #-8]
	ldr r6, [r0, #-4]
	add r0, sp, #0x1c
	sub r4, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r3, [r4, #0]
	mov r0, r7
	mov r1, r6
	add r2, sp, #0x22c
	bl sub_020D5D58
	mov r7, r0
	beq _020D7128
	add r0, sp, #0x200
	add r0, r0, #0x2b
	sub r6, r0, r7
	b _020D7174
_020D6FA8:
	ldrb r0, [sp, #0x20]
	cmp r0, #5
	bne _020D6FE8
	ldr r0, [sp, #0x25c]
	mov r2, #0x200
	add r0, r0, #4
	str r0, [sp, #0x25c]
	ldr r1, [r0, #-4]
	add r0, sp, #0x2c
	cmp r1, #0
	ldreq r1, _020D72D8 ; =0x02101810
	bl sub_020D5040
	cmp r0, #0
	blt _020D7128
	add r7, sp, #0x2c
	b _020D6FF8
_020D6FE8:
	ldr r0, [sp, #0x25c]
	add r0, r0, #4
	str r0, [sp, #0x25c]
	ldr r7, [r0, #-4]
_020D6FF8:
	ldrb r0, [sp, #0x1f]
	cmp r7, #0
	ldreq r7, _020D72DC ; =0x02101814
	cmp r0, #0
	beq _020D702C
	ldrb r0, [sp, #0x1e]
	ldrb r6, [r7], #1
	cmp r0, #0
	beq _020D7174
	ldr r0, [sp, #0x28]
	cmp r6, r0
	movgt r6, r0
	b _020D7174
_020D702C:
	ldrb r0, [sp, #0x1e]
	cmp r0, #0
	beq _020D7058
	ldr r6, [sp, #0x28]
	mov r0, r7
	mov r2, r6
	mov r1, #0
	bl sub_020D5138
	cmp r0, #0
	subne r6, r0, r7
	b _020D7174
_020D7058:
	mov r0, r7
	bl sub_020D8B60
	mov r6, r0
	b _020D7174
_020D7068:
	ldr r1, [sp, #0x25c]
	ldrb r0, [sp, #0x20]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r1, [r1, #-4]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020D72B8
_020D7088: ; jump table
	b _020D70AC ; case 0
	b _020D72B8 ; case 1
	b _020D70B4 ; case 2
	b _020D70BC ; case 3
	b _020D70E4 ; case 4
	b _020D72B8 ; case 5
	b _020D70C4 ; case 6
	b _020D70D4 ; case 7
	b _020D70DC ; case 8
_020D70AC:
	str sl, [r1]
	b _020D72B8
_020D70B4:
	strh sl, [r1]
	b _020D72B8
_020D70BC:
	str sl, [r1]
	b _020D72B8
_020D70C4:
	str sl, [r1]
	mov r0, sl, asr #0x1f
	str r0, [r1, #4]
	b _020D72B8
_020D70D4:
	str sl, [r1]
	b _020D72B8
_020D70DC:
	str sl, [r1]
	b _020D72B8
_020D70E4:
	str sl, [r1]
	mov r0, sl, asr #0x1f
	str r0, [r1, #4]
	b _020D72B8
_020D70F4:
	ldr r0, [sp, #0x25c]
	add r7, sp, #0x2c
	add r0, r0, #4
	str r0, [sp, #0x25c]
	ldr r0, [r0, #-4]
	mov r6, #1
	strb r0, [sp, #0x2c]
	b _020D7174
_020D7114:
	mov r0, #0x25
	strb r0, [sp, #0x2c]
	add r7, sp, #0x2c
	mov r6, #1
	b _020D7174
_020D7128:
	ldr r0, [sp, #0xc]
	bl sub_020D8B60
	mov r4, r0
	beq _020D7160
	ldr r1, [sp, #0xc]
	mov r0, r8
	mov r2, r4
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020D7160:
	add sp, sp, #0x22c
	add r0, sl, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D7174:
	ldrb r0, [sp, #0x1c]
	mov r4, r6
	cmp r0, #0
	beq _020D7228
	cmp r0, #2
	moveq r0, #0x30
	movne r0, #0x20
	strb r0, [sp, #0x19]
	ldrsb r0, [r7]
	cmp r0, #0x2b
	cmpne r0, #0x2d
	cmpne r0, #0x20
	bne _020D71E4
	ldrsb r0, [sp, #0x19]
	cmp r0, #0x30
	bne _020D71E4
	mov r0, r8
	mov r1, r7
	mov r2, #1
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r7, r7, #1
	sub r6, r6, #1
_020D71E4:
	ldr r0, [sp, #0x24]
	cmp r4, r0
	bge _020D7228
_020D71F0:
	mov r0, r8
	add r1, sp, #0x19
	mov r2, #1
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x24]
	add r4, r4, #1
	cmp r4, r0
	blt _020D71F0
_020D7228:
	cmp r6, #0
	beq _020D7258
	mov r0, r8
	mov r1, r7
	mov r2, r6
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020D7258:
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	bne _020D72B4
	ldr r0, [sp, #0x24]
	cmp r4, r0
	bge _020D72B4
	mov r6, #0x20
	add r7, sp, #0x18
_020D7278:
	mov r0, r8
	mov r1, r7
	mov r2, #1
	strb r6, [sp, #0x18]
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x24]
	add r4, r4, #1
	cmp r4, r0
	blt _020D7278
_020D72B4:
	add sl, sl, r4
_020D72B8:
	ldrsb r0, [fp]
	cmp r0, #0
	bne _020D6AEC
_020D72C4:
	mov r0, sl
	add sp, sp, #0x22c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D72D8: .word 0x02101810
_020D72DC: .word 0x02101814
	arm_func_end sub_020D6ABC

	arm_func_start sub_020D72E0
sub_020D72E0: ; 0x020D72E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	mov r3, r5
	mov r1, #1
	mov r4, r2
	bl sub_020D4658
	cmp r4, r0
	movne r5, #0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020D72E0

	arm_func_start sub_020D730C
sub_020D730C: ; 0x020D730C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r3, [r4, #8]
	mov r5, r2
	ldr r2, [r4, #4]
	add r0, r3, r5
	cmp r0, r2
	ldr r0, [r4, #0]
	subhi r5, r2, r3
	mov r2, r5
	add r0, r0, r3
	bl sub_020D50B8
	ldr r1, [r4, #8]
	mov r0, #1
	add r1, r1, r5
	str r1, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020D730C

	arm_func_start sub_020D7350
sub_020D7350: ; 0x020D7350
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	ldr r0, _020D7450 ; =0x021014DC
	mvn r1, #0
	bl sub_020DAE20
	cmp r0, #0
	mvnge r0, #0
	ldmgeia sp!, {r4, lr}
	addge sp, sp, #0x10
	bxge lr
	ldr r0, _020D7454 ; =0x021D09B0
	bl sub_020C2AF4
	cmp r0, #0
	bne _020D73AC
	ldr r0, _020D7458 ; =0x021CCC80
	ldr r1, _020D745C ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D7460 ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0xc]
	str r2, [r0, #0xc]
	b _020D7404
_020D73AC:
	ldr r0, _020D7458 ; =0x021CCC80
	ldr r1, _020D745C ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, #0xc]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D73DC
	ldr r0, _020D7460 ; =0x021D0944
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	b _020D7404
_020D73DC:
	ldr r0, _020D7454 ; =0x021D09B0
	bl sub_020C29D8
	ldr r0, _020D7458 ; =0x021CCC80
	ldr r1, _020D745C ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D7460 ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0xc]
	str r2, [r0, #0xc]
_020D7404:
	add r0, sp, #8
	bic r3, r0, #3
	ldr r2, [sp, #8]
	ldr r0, _020D7464 ; =sub_020D72E0
	ldr r1, _020D7450 ; =0x021014DC
	add r3, r3, #4
	bl sub_020D6ABC
	ldr r1, _020D7460 ; =0x021D0944
	mov r4, r0
	ldr r0, [r1, #0xc]
	sub r0, r0, #1
	str r0, [r1, #0xc]
	bne _020D7440
	ldr r0, _020D7454 ; =0x021D09B0
	bl sub_020C2A5C
_020D7440:
	mov r0, r4
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D7450: .word 0x021014DC
_020D7454: .word 0x021D09B0
_020D7458: .word 0x021CCC80
_020D745C: .word 0x021D0920
_020D7460: .word 0x021D0944
_020D7464: .word sub_020D72E0
	arm_func_end sub_020D7350

	arm_func_start sub_020D7468
sub_020D7468: ; 0x020D7468
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r1
	mov ip, #0
	ldr r0, _020D74CC ; =sub_020D730C
	add r1, sp, #0
	str r5, [sp]
	str r4, [sp, #4]
	str ip, [sp, #8]
	bl sub_020D6ABC
	cmp r5, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, pc}
	cmp r0, r4
	movlo r1, #0
	addlo sp, sp, #0xc
	strlob r1, [r5, r0]
	ldmloia sp!, {r4, r5, pc}
	cmp r4, #0
	addne r1, r5, r4
	movne r2, #0
	strneb r2, [r1, #-1]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020D74CC: .word sub_020D730C
	arm_func_end sub_020D7468

	arm_func_start sub_020D74D0
sub_020D74D0: ; 0x020D74D0
	ldr ip, _020D74E4 ; =sub_020D7468
	mov r3, r2
	mov r2, r1
	mvn r1, #0
	bx ip
	; .align 2, 0
_020D74E4: .word sub_020D7468
	arm_func_end sub_020D74D0

	arm_func_start sub_020D74E8
sub_020D74E8: ; 0x020D74E8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r3, sp, #0x10
	bic r3, r3, #3
	ldr r2, [sp, #0x10]
	add r3, r3, #4
	bl sub_020D7468
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020D74E8

	arm_func_start sub_020D7510
sub_020D7510: ; 0x020D7510
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r1, sp, #0xc
	bic r1, r1, #3
	add r3, r1, #4
	ldr r2, [sp, #0xc]
	mvn r1, #0
	bl sub_020D7468
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020D7510

	arm_func_start sub_020D753C
sub_020D753C: ; 0x020D753C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sb, r1
	cmp sb, #2
	mov sl, r0
	mov r8, r2
	mov r7, r3
	addlo sp, sp, #0x10
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb, lsr #1
	add fp, r0, #1
	sub r0, fp, #1
	mla r0, r8, r0, sl
	sub r2, sb, #1
	str r0, [sp, #0xc]
	mla r0, r8, r2, sl
	str r0, [sp, #8]
	mul r0, fp, r0
	mvn r1, #0
	str r0, [sp, #4]
	mul r0, r8, r0
	str r0, [sp]
_020D7594:
	cmp fp, #1
	bls _020D75BC
	ldr r0, [sp, #4]
	sub fp, fp, #1
	sub r0, r0, r8
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	sub r0, r0, r8
	str r0, [sp, #0xc]
	b _020D7604
_020D75BC:
	mov r2, r8
	ldr r4, [sp, #8]
	ldr r3, [sp, #0xc]
	cmp r8, #0
	beq _020D75E8
_020D75D0:
	ldrsb r0, [r4]
	ldrsb r1, [r3]
	sub r2, r2, #1
	strb r0, [r3], #1
	strb r1, [r4], #1
	bne _020D75D0
_020D75E8:
	sub sb, sb, #1
	cmp sb, #1
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #8]
	sub r0, r0, r8
	str r0, [sp, #8]
_020D7604:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r4, fp
	add r0, r1, r0
	cmp sb, fp, lsl #1
	add r5, sl, r0
	blo _020D7594
_020D7620:
	mov r4, r4, lsl #1
	sub r0, r4, #1
	mov r6, r5
	mla r5, r8, r0, sl
	cmp sb, r4
	bls _020D7650
	mov r0, r5
	add r1, r5, r8
	blx r7
	cmp r0, #0
	addlt r4, r4, #1
	addlt r5, r5, r8
_020D7650:
	mov r0, r6
	mov r1, r5
	blx r7
	cmp r0, #0
	bge _020D7594
	mov r2, r8
	mov r3, r5
	cmp r8, #0
	beq _020D768C
_020D7674:
	ldrsb r1, [r6]
	ldrsb r0, [r3]
	sub r2, r2, #1
	strb r0, [r6], #1
	strb r1, [r3], #1
	bne _020D7674
_020D768C:
	cmp sb, r4, lsl #1
	bhs _020D7620
	b _020D7594
	arm_func_end sub_020D753C
_020D7698:
	.byte 0x10, 0xD0, 0x8D, 0xE2, 0xF8, 0x8F, 0xBD, 0xE8

	arm_func_start sub_020D76A0
sub_020D76A0: ; 0x020D76A0
	ldr r2, _020D76C8 ; =0x02101818
	ldr r0, _020D76CC ; =0x41C64E6D
	ldr r3, [r2, #0]
	ldr r1, _020D76D0 ; =0x00007FFF
	mul r0, r3, r0
	add r0, r0, #0x39
	add r0, r0, #0x3000
	str r0, [r2, #0]
	and r0, r1, r0, lsr #16
	bx lr
	; .align 2, 0
_020D76C8: .word 0x02101818
_020D76CC: .word 0x41C64E6D
_020D76D0: .word 0x00007FFF
	arm_func_end sub_020D76A0

	arm_func_start sub_020D76D4
sub_020D76D4: ; 0x020D76D4
	ldr r1, _020D76E0 ; =0x02101818
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020D76E0: .word 0x02101818
	arm_func_end sub_020D76D4

	arm_func_start sub_020D76E4
sub_020D76E4: ; 0x020D76E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	ldr r6, _020D7BD4 ; =0x020FE964
	add r5, sp, #0
	mov r7, r0
	mov lr, r1
	mov r4, r5
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	ldrsb r0, [r7, #1]
	add ip, r7, #1
	cmp r0, #0x25
	bne _020D7750
	strb r0, [sp, #3]
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	add sp, sp, #0x28
	add r0, ip, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020D7750:
	cmp r0, #0x2a
	moveq r0, #1
	streqb r0, [sp]
	ldreqsb r0, [ip, #1]!
	cmp r0, #0
	blt _020D7770
	cmp r0, #0x80
	blt _020D7778
_020D7770:
	mov r1, #0
	b _020D7788
_020D7778:
	ldr r1, _020D7BD8 ; =0x020FE864
	mov r2, r0, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #8
_020D7788:
	cmp r1, #0
	beq _020D7828
	mov r1, #0
	ldr r3, _020D7BD8 ; =0x020FE864
	str r1, [sp, #4]
	mov r4, r1
	mov r1, #0xa
_020D77A4:
	ldr r2, [sp, #4]
	sub r0, r0, #0x30
	mla r0, r2, r1, r0
	str r0, [sp, #4]
	ldrsb r0, [ip, #1]!
	cmp r0, #0
	blt _020D77C8
	cmp r0, #0x80
	blt _020D77D0
_020D77C8:
	mov r2, r4
	b _020D77DC
_020D77D0:
	mov r2, r0, lsl #1
	ldrh r2, [r3, r2]
	and r2, r2, #8
_020D77DC:
	cmp r2, #0
	bne _020D77A4
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _020D7820
	mov r0, #0xff
	add r4, sp, #0
	strb r0, [sp, #3]
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	add sp, sp, #0x28
	add r0, ip, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020D7820:
	mov r1, #1
	strb r1, [sp, #1]
_020D7828:
	cmp r0, #0x6c
	mov r1, #1
	bgt _020D7860
	cmp r0, #0x68
	blt _020D7854
	beq _020D787C
	cmp r0, #0x6a
	beq _020D78C8
	cmp r0, #0x6c
	beq _020D7898
	b _020D78EC
_020D7854:
	cmp r0, #0x4c
	beq _020D78BC
	b _020D78EC
_020D7860:
	cmp r0, #0x74
	bgt _020D7870
	beq _020D78E0
	b _020D78EC
_020D7870:
	cmp r0, #0x7a
	beq _020D78D4
	b _020D78EC
_020D787C:
	mov r2, #2
	strb r2, [sp, #2]
	ldrsb r2, [ip, #1]
	cmp r2, #0x68
	streqb r1, [sp, #2]
	ldreqsb r0, [ip, #1]!
	b _020D78F0
_020D7898:
	mov r2, #3
	strb r2, [sp, #2]
	ldrsb r2, [ip, #1]
	cmp r2, #0x6c
	bne _020D78F0
	mov r0, #7
	strb r0, [sp, #2]
	ldrsb r0, [ip, #1]!
	b _020D78F0
_020D78BC:
	mov r2, #9
	strb r2, [sp, #2]
	b _020D78F0
_020D78C8:
	mov r2, #4
	strb r2, [sp, #2]
	b _020D78F0
_020D78D4:
	mov r2, #5
	strb r2, [sp, #2]
	b _020D78F0
_020D78E0:
	mov r2, #6
	strb r2, [sp, #2]
	b _020D78F0
_020D78EC:
	mov r1, #0
_020D78F0:
	cmp r1, #0
	ldrnesb r0, [ip, #1]!
	strb r0, [sp, #3]
	cmp r0, #0x5b
	bgt _020D7944
	bge _020D7A94
	cmp r0, #0x47
	bgt _020D7938
	sub r1, r0, #0x41
	addpl pc, pc, r1, lsl #2
	b _020D7BA4
_020D791C: ; jump table
	b _020D79D0 ; case 0
	b _020D7BA4 ; case 1
	b _020D7BA4 ; case 2
	b _020D7BA4 ; case 3
	b _020D79D0 ; case 4
	b _020D79D0 ; case 5
	b _020D79D0 ; case 6
_020D7938:
	cmp r0, #0x58
	beq _020D79BC
	b _020D7BA4
_020D7944:
	cmp r0, #0x61
	bgt _020D7954
	beq _020D79D0
	b _020D7BA4
_020D7954:
	sub r0, r0, #0x63
	cmp r0, #0x15
	addls pc, pc, r0, lsl #2
	b _020D7BA4
_020D7964: ; jump table
	b _020D7A20 ; case 0
	b _020D79BC ; case 1
	b _020D79D0 ; case 2
	b _020D79D0 ; case 3
	b _020D79D0 ; case 4
	b _020D7BA4 ; case 5
	b _020D79BC ; case 6
	b _020D7BA4 ; case 7
	b _020D7BA4 ; case 8
	b _020D7BA4 ; case 9
	b _020D7BA4 ; case 10
	b _020D7BAC ; case 11
	b _020D79BC ; case 12
	b _020D7A0C ; case 13
	b _020D7BA4 ; case 14
	b _020D7BA4 ; case 15
	b _020D7A44 ; case 16
	b _020D7BA4 ; case 17
	b _020D79BC ; case 18
	b _020D7BA4 ; case 19
	b _020D7BA4 ; case 20
	b _020D79BC ; case 21
_020D79BC:
	ldrb r0, [sp, #2]
	cmp r0, #9
	moveq r0, #0xff
	streqb r0, [sp, #3]
	b _020D7BAC
_020D79D0:
	ldrb r1, [sp, #2]
	cmp r1, #1
	cmpne r1, #2
	beq _020D79F0
	add r0, r1, #0xfc
	and r0, r0, #0xff
	cmp r0, #3
	bhi _020D79FC
_020D79F0:
	mov r0, #0xff
	strb r0, [sp, #3]
	b _020D7BAC
_020D79FC:
	cmp r1, #3
	moveq r0, #8
	streqb r0, [sp, #2]
	b _020D7BAC
_020D7A0C:
	mov r1, #3
	mov r0, #0x78
	strb r1, [sp, #2]
	strb r0, [sp, #3]
	b _020D7BAC
_020D7A20:
	ldrb r0, [sp, #2]
	cmp r0, #3
	moveq r0, #0xa
	streqb r0, [sp, #2]
	beq _020D7BAC
	cmp r0, #0
	movne r0, #0xff
	strneb r0, [sp, #3]
	b _020D7BAC
_020D7A44:
	ldrb r0, [sp, #2]
	cmp r0, #3
	moveq r0, #0xa
	streqb r0, [sp, #2]
	beq _020D7A64
	cmp r0, #0
	movne r0, #0xff
	strneb r0, [sp, #3]
_020D7A64:
	add r2, sp, #8
	mov r1, #0x20
	mov r0, #0xff
_020D7A70:
	sub r1, r1, #1
	cmp r1, #0
	strb r0, [r2], #1
	bgt _020D7A70
	mov r1, #0xc1
	mov r0, #0xfe
	strb r1, [sp, #9]
	strb r0, [sp, #0xc]
	b _020D7BAC
_020D7A94:
	ldrb r0, [sp, #2]
	cmp r0, #3
	moveq r0, #0xa
	streqb r0, [sp, #2]
	beq _020D7AB4
	cmp r0, #0
	movne r0, #0xff
	strneb r0, [sp, #3]
_020D7AB4:
	ldrsb r2, [ip, #1]!
	mov r1, #0
	cmp r2, #0x5e
	ldreqsb r2, [ip, #1]!
	moveq r1, #1
	cmp r2, #0x5d
	bne _020D7B5C
	ldrb r0, [sp, #0x13]
	orr r0, r0, #0x20
	strb r0, [sp, #0x13]
	ldrsb r2, [ip, #1]!
	b _020D7B5C
_020D7AE4:
	add r0, sp, #0
	and r3, r2, #0xff
	add r6, r0, r3, asr #3
	ldrb r5, [r6, #8]
	and r3, r2, #7
	mov r4, #1
	orr r3, r5, r4, lsl r3
	strb r3, [r6, #8]
	ldrsb r3, [ip, #1]
	cmp r3, #0x2d
	bne _020D7B58
	ldrsb r7, [ip, #2]
	cmp r7, #0
	cmpne r7, #0x5d
	beq _020D7B58
	add r2, r2, #1
	cmp r2, r7
	bgt _020D7B50
_020D7B2C:
	and r3, r2, #0xff
	add r6, r0, r3, asr #3
	ldrb r5, [r6, #8]
	and r3, r2, #7
	add r2, r2, #1
	orr r3, r5, r4, lsl r3
	strb r3, [r6, #8]
	cmp r2, r7
	ble _020D7B2C
_020D7B50:
	ldrsb r2, [ip, #3]!
	b _020D7B5C
_020D7B58:
	ldrsb r2, [ip, #1]!
_020D7B5C:
	cmp r2, #0
	cmpne r2, #0x5d
	bne _020D7AE4
	cmp r2, #0
	moveq r0, #0xff
	streqb r0, [sp, #3]
	beq _020D7BAC
	cmp r1, #0
	beq _020D7BAC
	add r2, sp, #8
	mov r1, #0x20
_020D7B88:
	ldrb r0, [r2]
	sub r1, r1, #1
	cmp r1, #0
	mvn r0, r0
	strb r0, [r2], #1
	bgt _020D7B88
	b _020D7BAC
_020D7BA4:
	mov r0, #0xff
	strb r0, [sp, #3]
_020D7BAC:
	add r4, sp, #0
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	add r0, ip, #1
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D7BD4: .word 0x020FE964
_020D7BD8: .word 0x020FE864
	arm_func_end sub_020D76E4

	arm_func_start sub_020D7BDC
sub_020D7BDC: ; 0x020D7BDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x88
	ldrsb r5, [r2]
	str r2, [sp, #0xc]
	mov r2, #0
	mov sb, r0
	mov r0, r2
	str r2, [sp, #0x20]
	mov r8, r1
	str r3, [sp, #0x10]
	str r0, [sp, #0x24]
	cmp r5, #0
	ldr sl, [sp, #0xb0]
	str r0, [sp, #0x30]
	mov r4, r2
	str r0, [sp, #0x44]
	str r0, [sp, #0x40]
	beq _020D88F0
_020D7C24:
	cmp r5, #0
	mov r0, #1
	blt _020D7C38
	cmp r5, #0x80
	movlt r0, #0
_020D7C38:
	cmp r0, #0
	movne r0, #0
	bne _020D7C54
	mov r1, r5, lsl #1
	ldr r0, _020D8928 ; =0x020FE864
	ldrh r0, [r0, r1]
	and r0, r0, #0x100
_020D7C54:
	cmp r0, #0
	beq _020D7D14
	mov r2, #0
	ldr r1, _020D8928 ; =0x020FE864
	mov ip, r2
	mov r3, #1
_020D7C6C:
	ldr r0, [sp, #0xc]
	ldrsb r5, [r0, #1]!
	str r0, [sp, #0xc]
	mov r0, r3
	cmp r5, #0
	blt _020D7C8C
	cmp r5, #0x80
	movlt r0, r2
_020D7C8C:
	cmp r0, #0
	movne r0, ip
	moveq r0, r5, lsl #1
	ldreqh r0, [r1, r0]
	andeq r0, r0, #0x100
	cmp r0, #0
	bne _020D7C6C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020D88E0
	ldr r5, _020D8928 ; =0x020FE864
	b _020D7CC0
_020D7CBC:
	add r4, r4, #1
_020D7CC0:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	strb r0, [sp, #0x50]
	ldrsb r1, [sp, #0x50]
	cmp r1, #0
	blt _020D7CE8
	cmp r1, #0x80
	blt _020D7CF0
_020D7CE8:
	mov r0, #0
	b _020D7CFC
_020D7CF0:
	mov r0, r1, lsl #1
	ldrh r0, [r5, r0]
	and r0, r0, #0x100
_020D7CFC:
	cmp r0, #0
	bne _020D7CBC
	mov r0, r8
	mov r2, #1
	blx sb
	b _020D88E0
_020D7D14:
	cmp r5, #0x25
	beq _020D7D8C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020D7D8C
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	strb r0, [sp, #0x50]
	and r0, r5, #0xff
	ldrsb r1, [sp, #0x50]
	cmp r0, r1
	beq _020D7D78
	mov r0, r8
	mov r2, #1
	blx sb
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	b _020D88E0
_020D7D78:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #1
	str r0, [sp, #0xc]
	b _020D88E0
_020D7D8C:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x60
	bl sub_020D76E4
	str r0, [sp, #0xc]
	ldrb r0, [sp, #0x60]
	cmp r0, #0
	bne _020D7DC8
	ldrb r0, [sp, #0x63]
	cmp r0, #0x25
	beq _020D7DC8
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r5, [r0, #-4]
	b _020D7DCC
_020D7DC8:
	mov r5, #0
_020D7DCC:
	ldrb r0, [sp, #0x63]
	cmp r0, #0x6e
	beq _020D7E0C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020D7E0C
	mov r0, r8
	mov r1, #0
	mov r2, #2
	blx sb
	cmp r0, #0
	beq _020D7E0C
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
_020D7E0C:
	ldrb r1, [sp, #0x63]
	cmp r1, #0x5b
	bgt _020D7E64
	bge _020D8638
	cmp r1, #0x47
	bgt _020D7E58
	sub r0, r1, #0x41
	addpl pc, pc, r0, lsl #2
	b _020D7E4C
_020D7E30: ; jump table
	b _020D82B4 ; case 0
	b _020D88F0 ; case 1
	b _020D88F0 ; case 2
	b _020D88F0 ; case 3
	b _020D82B4 ; case 4
	b _020D82B4 ; case 5
	b _020D82B4 ; case 6
_020D7E4C:
	cmp r1, #0x25
	beq _020D8530
	b _020D88F0
_020D7E58:
	cmp r1, #0x58
	beq _020D80F0
	b _020D88F0
_020D7E64:
	cmp r1, #0x78
	bgt _020D7EDC
	sub r0, r1, #0x63
	addpl pc, pc, r0, lsl #2
	b _020D7ED0
_020D7E78: ; jump table
	b _020D8378 ; case 0
	b _020D7EE4 ; case 1
	b _020D82B4 ; case 2
	b _020D82B4 ; case 3
	b _020D82B4 ; case 4
	b _020D88F0 ; case 5
	b _020D7EEC ; case 6
	b _020D88F0 ; case 7
	b _020D88F0 ; case 8
	b _020D88F0 ; case 9
	b _020D88F0 ; case 10
	b _020D887C ; case 11
	b _020D80E0 ; case 12
	b _020D88F0 ; case 13
	b _020D88F0 ; case 14
	b _020D88F0 ; case 15
	b _020D85BC ; case 16
	b _020D88F0 ; case 17
	b _020D80E8 ; case 18
	b _020D88F0 ; case 19
	b _020D88F0 ; case 20
	b _020D80F0 ; case 21
_020D7ED0:
	cmp r1, #0x61
	beq _020D82B4
	b _020D88F0
_020D7EDC:
	cmp r1, #0xff
	b _020D88F0
_020D7EE4:
	mov r0, #0xa
	b _020D7EF0
_020D7EEC:
	mov r0, #0
_020D7EF0:
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _020D7F10
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	b _020D8018
_020D7F10:
	ldrb r1, [sp, #0x62]
	add r2, sp, #0x5c
	cmp r1, #7
	cmpne r1, #4
	add r1, sp, #0x58
	bne _020D7F54
	str r2, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x54
	str r1, [sp, #8]
	ldr r1, [sp, #0x64]
	mov r2, sb
	mov r3, r8
	bl sub_020DA840
	str r0, [sp, #0x34]
	str r1, [sp, #0x18]
	b _020D7F78
_020D7F54:
	str r2, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x54
	str r1, [sp, #8]
	ldr r1, [sp, #0x64]
	mov r2, sb
	mov r3, r8
	bl sub_020DA458
	str r0, [sp, #0x3c]
_020D7F78:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _020D7FA8
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	b _020D8018
_020D7FA8:
	add r4, r4, r0
	ldrb r0, [sp, #0x62]
	cmp r0, #7
	cmpne r0, #4
	bne _020D7FF8
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _020D7FE4
	ldr r0, [sp, #0x34]
	rsb r0, r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	rsc r0, r0, #0
	str r0, [sp, #0x24]
	b _020D8018
_020D7FE4:
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x24]
	b _020D8018
_020D7FF8:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	ldreq r0, [sp, #0x3c]
	streq r0, [sp, #0x1c]
	beq _020D8018
	ldr r0, [sp, #0x3c]
	rsb r0, r0, #0
	str r0, [sp, #0x1c]
_020D8018:
	cmp r5, #0
	beq _020D80D0
	ldrb r0, [sp, #0x62]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020D80BC
_020D8030: ; jump table
	b _020D8050 ; case 0
	b _020D805C ; case 1
	b _020D8068 ; case 2
	b _020D8074 ; case 3
	b _020D8080 ; case 4
	b _020D8094 ; case 5
	b _020D80A0 ; case 6
	b _020D80AC ; case 7
_020D8050:
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0]
	b _020D80BC
_020D805C:
	ldr r0, [sp, #0x1c]
	strb r0, [r5]
	b _020D80BC
_020D8068:
	ldr r0, [sp, #0x1c]
	strh r0, [r5]
	b _020D80BC
_020D8074:
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0]
	b _020D80BC
_020D8080:
	ldr r0, [sp, #0x20]
	str r0, [r5, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #4]
	b _020D80BC
_020D8094:
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0]
	b _020D80BC
_020D80A0:
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0]
	b _020D80BC
_020D80AC:
	ldr r0, [sp, #0x20]
	str r0, [r5, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #4]
_020D80BC:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ldreq r0, [sp, #0x44]
	addeq r0, r0, #1
	streq r0, [sp, #0x44]
_020D80D0:
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	b _020D88E0
_020D80E0:
	mov r0, #8
	b _020D80F4
_020D80E8:
	mov r0, #0xa
	b _020D80F4
_020D80F0:
	mov r0, #0x10
_020D80F4:
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _020D8114
	mov r0, #0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x34]
	str r0, [sp, #0x18]
	b _020D81EC
_020D8114:
	ldrb r1, [sp, #0x62]
	add r2, sp, #0x5c
	cmp r1, #7
	cmpne r1, #4
	add r1, sp, #0x58
	bne _020D8158
	str r2, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x54
	str r1, [sp, #8]
	ldr r1, [sp, #0x64]
	mov r2, sb
	mov r3, r8
	bl sub_020DA840
	str r0, [sp, #0x34]
	str r1, [sp, #0x18]
	b _020D817C
_020D8158:
	str r2, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x54
	str r1, [sp, #8]
	ldr r1, [sp, #0x64]
	mov r2, sb
	mov r3, r8
	bl sub_020DA458
	str r0, [sp, #0x3c]
_020D817C:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _020D81AC
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x34]
	str r0, [sp, #0x18]
	b _020D81EC
_020D81AC:
	add r4, r4, r0
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _020D81EC
	ldrb r0, [sp, #0x62]
	cmp r0, #7
	ldrne r0, [sp, #0x3c]
	rsbne r0, r0, #0
	strne r0, [sp, #0x3c]
	bne _020D81EC
	ldr r0, [sp, #0x34]
	rsb r0, r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	rsc r0, r0, #0
	str r0, [sp, #0x18]
_020D81EC:
	cmp r5, #0
	beq _020D82A4
	ldrb r0, [sp, #0x62]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020D8290
_020D8204: ; jump table
	b _020D8224 ; case 0
	b _020D8230 ; case 1
	b _020D823C ; case 2
	b _020D8248 ; case 3
	b _020D8254 ; case 4
	b _020D8268 ; case 5
	b _020D8274 ; case 6
	b _020D8280 ; case 7
_020D8224:
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0]
	b _020D8290
_020D8230:
	ldr r0, [sp, #0x3c]
	strb r0, [r5]
	b _020D8290
_020D823C:
	ldr r0, [sp, #0x3c]
	strh r0, [r5]
	b _020D8290
_020D8248:
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0]
	b _020D8290
_020D8254:
	ldr r0, [sp, #0x34]
	str r0, [r5, #0]
	ldr r0, [sp, #0x18]
	str r0, [r5, #4]
	b _020D8290
_020D8268:
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0]
	b _020D8290
_020D8274:
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0]
	b _020D8290
_020D8280:
	ldr r0, [sp, #0x34]
	str r0, [r5, #0]
	ldr r0, [sp, #0x18]
	str r0, [r5, #4]
_020D8290:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ldreq r0, [sp, #0x44]
	addeq r0, r0, #1
	streq r0, [sp, #0x44]
_020D82A4:
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	b _020D88E0
_020D82B4:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _020D82D0
	ldr r0, _020D892C ; =0x021015B0
	ldr r0, [r0, #0]
	bl sub_020E16BC
	b _020D831C
_020D82D0:
	add r0, sp, #0x54
	str r0, [sp]
	ldr r0, [sp, #0x64]
	mov r1, sb
	mov r2, r8
	add r3, sp, #0x5c
	bl sub_020D911C
	ldr r2, [sp, #0x5c]
	cmp r2, #0
	bne _020D8318
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
	ldr r0, _020D892C ; =0x021015B0
	ldr r0, [r0, #0]
	bl sub_020E16BC
	b _020D831C
_020D8318:
	add r4, r4, r2
_020D831C:
	cmp r5, #0
	beq _020D8368
	ldrb r2, [sp, #0x62]
	cmp r2, #0
	beq _020D8344
	cmp r2, #8
	beq _020D8350
	cmp r2, #9
	stmeqia r5, {r0, r1}
	b _020D8354
_020D8344:
	bl sub_020DFF84
	str r0, [r5, #0]
	b _020D8354
_020D8350:
	stmia r5, {r0, r1}
_020D8354:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ldreq r0, [sp, #0x44]
	addeq r0, r0, #1
	streq r0, [sp, #0x44]
_020D8368:
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	b _020D88E0
_020D8378:
	ldrb r0, [sp, #0x61]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x64]
	cmp r5, #0
	beq _020D84C0
	cmp sl, #0
	beq _020D83AC
	ldr r0, [sp, #0x10]
	mov r7, #1
	add r0, r0, #4
	ldr fp, [r0, #-4]
	str r0, [sp, #0x10]
_020D83AC:
	ldr r0, [sp, #0x30]
	mov r1, #0
	cmp r0, #0
	str r1, [sp, #0x5c]
	beq _020D83CC
	cmp fp, #0
	strneb r1, [r5]
	b _020D88E0
_020D83CC:
	mvn r0, #0
	str r5, [sp, #0x2c]
	str r0, [sp, #0x48]
	b _020D8414
_020D83DC:
	ldrb r0, [sp, #0x62]
	strb r6, [sp, #0x50]
	cmp r0, #0xa
	ldrnesb r0, [sp, #0x50]
	strneb r0, [r5], #1
	bne _020D8408
	mov r0, r5
	add r1, sp, #0x50
	mov r2, #1
	bl sub_020D4F34
	add r5, r5, #1
_020D8408:
	ldr r0, [sp, #0x5c]
	add r1, r0, #1
	str r1, [sp, #0x5c]
_020D8414:
	ldr r0, [sp, #0x64]
	cmp r0, #0
	sub r0, r0, #1
	str r0, [sp, #0x64]
	beq _020D8464
	cmp sl, #0
	beq _020D8444
	cmp fp, r1
	movhi r7, #1
	movls r7, #0
	cmp r7, #0
	beq _020D8464
_020D8444:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r6, r0
	ldr r0, [sp, #0x48]
	cmp r6, r0
	bne _020D83DC
_020D8464:
	strb r6, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _020D8484
	cmp sl, #0
	beq _020D84AC
	cmp r7, #0
	bne _020D84AC
_020D8484:
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	cmp fp, #0
	str r0, [sp, #0x30]
	beq _020D88E0
	ldr r0, [sp, #0x2c]
	mov r1, #0
	strb r1, [r0]
	b _020D88E0
_020D84AC:
	add r4, r4, r0
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	b _020D8520
_020D84C0:
	mov r0, #0
	str r0, [sp, #0x5c]
	mvn r5, #0
	b _020D84E0
_020D84D0:
	strb r6, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	add r0, r0, #1
	str r0, [sp, #0x5c]
_020D84E0:
	ldr r0, [sp, #0x64]
	cmp r0, #0
	sub r0, r0, #1
	str r0, [sp, #0x64]
	beq _020D8510
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r6, r0
	cmp r6, r5
	bne _020D84D0
_020D8510:
	strb r6, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _020D88F0
_020D8520:
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	b _020D88E0
_020D8530:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020D88E0
	ldr r5, _020D8928 ; =0x020FE864
	b _020D8548
_020D8544:
	add r4, r4, #1
_020D8548:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	strb r0, [sp, #0x50]
	ldrsb r1, [sp, #0x50]
	cmp r1, #0
	blt _020D8570
	cmp r1, #0x80
	blt _020D8578
_020D8570:
	mov r0, #0
	b _020D8584
_020D8578:
	mov r0, r1, lsl #1
	ldrh r0, [r5, r0]
	and r0, r0, #0x100
_020D8584:
	cmp r0, #0
	bne _020D8544
	cmp r1, #0x25
	beq _020D85B4
	mov r0, r8
	mov r2, #1
	blx sb
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
	b _020D88E0
_020D85B4:
	add r4, r4, #1
	b _020D88E0
_020D85BC:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020D8638
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	strb r0, [sp, #0x50]
	b _020D85F8
_020D85E0:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	strb r0, [sp, #0x50]
_020D85F8:
	ldrsb r1, [sp, #0x50]
	cmp r1, #0
	blt _020D860C
	cmp r1, #0x80
	blt _020D8614
_020D860C:
	mov r0, #0
	b _020D8624
_020D8614:
	ldr r0, _020D8928 ; =0x020FE864
	mov r2, r1, lsl #1
	ldrh r0, [r0, r2]
	and r0, r0, #0x100
_020D8624:
	cmp r0, #0
	bne _020D85E0
	mov r0, r8
	mov r2, #1
	blx sb
_020D8638:
	cmp r5, #0
	beq _020D87B4
	cmp sl, #0
	beq _020D8660
	ldr r0, [sp, #0x10]
	mov r7, #1
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [r0, #-4]
	sub fp, r0, #1
_020D8660:
	ldr r0, [sp, #0x30]
	mov r1, #0
	cmp r0, #0
	str r1, [sp, #0x5c]
	beq _020D8680
	cmp fp, #0
	strneb r1, [r5]
	b _020D88E0
_020D8680:
	mvn r0, #0
	str r5, [sp, #0x28]
	str r0, [sp, #0x4c]
	b _020D86E4
_020D8690:
	strb r6, [sp, #0x50]
	ldrsb r1, [sp, #0x50]
	add r2, sp, #0x60
	and r3, r1, #0xff
	add r2, r2, r3, asr #3
	ldrb r3, [r2, #8]
	and r0, r1, #7
	mov r2, #1
	tst r3, r2, lsl r0
	beq _020D8734
	ldrb r0, [sp, #0x62]
	cmp r0, #0xa
	strneb r1, [r5], #1
	bne _020D86D8
	mov r0, r5
	add r1, sp, #0x50
	bl sub_020D4F34
	add r5, r5, #2
_020D86D8:
	ldr r0, [sp, #0x5c]
	add r1, r0, #1
	str r1, [sp, #0x5c]
_020D86E4:
	ldr r0, [sp, #0x64]
	cmp r0, #0
	sub r0, r0, #1
	str r0, [sp, #0x64]
	beq _020D8734
	cmp sl, #0
	beq _020D8714
	cmp fp, r1
	movhs r7, #1
	movlo r7, #0
	cmp r7, #0
	beq _020D8734
_020D8714:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r6, r0
	ldr r0, [sp, #0x4c]
	cmp r6, r0
	bne _020D8690
_020D8734:
	strb r6, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _020D8754
	cmp sl, #0
	beq _020D878C
	cmp r7, #0
	bne _020D878C
_020D8754:
	mov r0, r8
	ldrsb r1, [sp, #0x50]
	mov r2, #1
	blx sb
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	cmp fp, #0
	str r0, [sp, #0x30]
	beq _020D88E0
	ldr r0, [sp, #0x28]
	mov r1, #0
	strb r1, [r0]
	b _020D88E0
_020D878C:
	add r4, r4, r0
	ldrb r0, [sp, #0x62]
	cmp r0, #0xa
	mov r0, #0
	streqh r0, [r5]
	strneb r0, [r5]
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	b _020D8850
_020D87B4:
	mov r0, #0
	str r0, [sp, #0x5c]
	mvn r5, #0
	b _020D87F8
_020D87C4:
	strb r6, [sp, #0x50]
	ldrsb r1, [sp, #0x50]
	and r0, r1, #7
	and r2, r1, #0xff
	add r1, sp, #0x60
	add r1, r1, r2, asr #3
	ldrb r2, [r1, #8]
	mov r1, #1
	tst r2, r1, lsl r0
	beq _020D8828
	ldr r0, [sp, #0x5c]
	add r0, r0, #1
	str r0, [sp, #0x5c]
_020D87F8:
	ldr r0, [sp, #0x64]
	cmp r0, #0
	sub r0, r0, #1
	str r0, [sp, #0x64]
	beq _020D8828
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r6, r0
	cmp r6, r5
	bne _020D87C4
_020D8828:
	strb r6, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _020D884C
	mov r0, r8
	ldrsb r1, [sp, #0x50]
	mov r2, #1
	blx sb
	b _020D88E0
_020D884C:
	add r4, r4, r0
_020D8850:
	ldr r0, [sp, #0x64]
	cmp r0, #0
	blt _020D886C
	mov r0, r8
	ldrsb r1, [sp, #0x50]
	mov r2, #1
	blx sb
_020D886C:
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	b _020D88E0
_020D887C:
	cmp r5, #0
	beq _020D88E0
	ldrb r0, [sp, #0x62]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020D88E0
_020D8894: ; jump table
	b _020D88B4 ; case 0
	b _020D88CC ; case 1
	b _020D88BC ; case 2
	b _020D88C4 ; case 3
	b _020D88E0 ; case 4
	b _020D88E0 ; case 5
	b _020D88E0 ; case 6
	b _020D88D4 ; case 7
_020D88B4:
	str r4, [r5, #0]
	b _020D88E0
_020D88BC:
	strh r4, [r5]
	b _020D88E0
_020D88C4:
	str r4, [r5, #0]
	b _020D88E0
_020D88CC:
	strb r4, [r5]
	b _020D88E0
_020D88D4:
	str r4, [r5, #0]
	mov r0, r4, asr #0x1f
	str r0, [r5, #4]
_020D88E0:
	ldr r0, [sp, #0xc]
	ldrsb r5, [r0]
	cmp r5, #0
	bne _020D7C24
_020D88F0:
	mov r0, r8
	mov r1, #0
	mov r2, #2
	blx sb
	cmp r0, #0
	beq _020D891C
	ldr r0, [sp, #0x40]
	cmp r0, #0
	addeq sp, sp, #0x88
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020D891C:
	ldr r0, [sp, #0x44]
	add sp, sp, #0x88
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020D8928: .word 0x020FE864
_020D892C: .word 0x021015B0
	arm_func_end sub_020D7BDC

	arm_func_start sub_020D8930
sub_020D8930: ; 0x020D8930
	cmp r2, #0
	beq _020D894C
	cmp r2, #1
	beq _020D897C
	cmp r2, #2
	beq _020D89A4
	b _020D89AC
_020D894C:
	ldr r1, [r0, #0]
	ldrsb r2, [r1]
	cmp r2, #0
	bne _020D896C
	mov r1, #1
	str r1, [r0, #4]
	sub r0, r1, #2
	bx lr
_020D896C:
	add r1, r1, #1
	str r1, [r0, #0]
	and r0, r2, #0xff
	bx lr
_020D897C:
	ldr r2, [r0, #4]
	cmp r2, #0
	movne r2, #0
	strne r2, [r0, #4]
	bne _020D899C
	ldr r2, [r0, #0]
	sub r2, r2, #1
	str r2, [r0, #0]
_020D899C:
	mov r0, r1
	bx lr
_020D89A4:
	ldr r0, [r0, #4]
	bx lr
_020D89AC:
	mov r0, #0
	bx lr
	arm_func_end sub_020D8930

	arm_func_start sub_020D89B4
sub_020D89B4: ; 0x020D89B4
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r0, [sp, #4]
	cmp r0, #0
	ldrnesb r0, [r0]
	mov lr, r1
	mov r3, r2
	cmpne r0, #0
	addeq sp, sp, #0xc
	mvneq r0, #0
	ldmeqia sp!, {pc}
	mov ip, #0
	str ip, [sp, #8]
	ldr r0, _020D8A04 ; =sub_020D8930
	add r1, sp, #4
	mov r2, lr
	str ip, [sp]
	bl sub_020D7BDC
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_020D8A04: .word sub_020D8930
	arm_func_end sub_020D89B4

	arm_func_start sub_020D8A08
sub_020D8A08: ; 0x020D8A08
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r2, sp, #0xc
	bic r2, r2, #3
	ldr r1, [sp, #0xc]
	add r2, r2, #4
	bl sub_020D89B4
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020D8A08

	arm_func_start sub_020D8A30
sub_020D8A30: ; 0x020D8A30
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r5, #1
	blt _020D8A48
	cmp r5, #7
	ble _020D8A50
_020D8A48:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020D8A50:
	ldr r0, _020D8B4C ; =0x021D0A10
	bl sub_020C2AF4
	cmp r0, #0
	bne _020D8A84
	ldr r0, _020D8B50 ; =0x021CCC80
	ldr r1, _020D8B54 ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D8B58 ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0x1c]
	str r2, [r0, #0x1c]
	b _020D8ADC
_020D8A84:
	ldr r0, _020D8B50 ; =0x021CCC80
	ldr r1, _020D8B54 ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, #0x1c]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D8AB4
	ldr r0, _020D8B58 ; =0x021D0944
	ldr r1, [r0, #0x1c]
	add r1, r1, #1
	str r1, [r0, #0x1c]
	b _020D8ADC
_020D8AB4:
	ldr r0, _020D8B4C ; =0x021D0A10
	bl sub_020C29D8
	ldr r0, _020D8B50 ; =0x021CCC80
	ldr r1, _020D8B54 ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D8B58 ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0x1c]
	str r2, [r0, #0x1c]
_020D8ADC:
	ldr r1, _020D8B5C ; =0x021D0D44
	sub r2, r5, #1
	ldr r4, [r1, r2, lsl #2]
	cmp r4, #1
	movne r0, #0
	strne r0, [r1, r2, lsl #2]
	ldr r0, _020D8B58 ; =0x021D0944
	ldr r1, [r0, #0x1c]
	sub r1, r1, #1
	str r1, [r0, #0x1c]
	bne _020D8B10
	ldr r0, _020D8B4C ; =0x021D0A10
	bl sub_020C2A5C
_020D8B10:
	cmp r4, #1
	beq _020D8B24
	cmp r4, #0
	cmpeq r5, #1
	bne _020D8B2C
_020D8B24:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020D8B2C:
	cmp r4, #0
	bne _020D8B3C
	mov r0, #0
	bl sub_020D3DC4
_020D8B3C:
	mov r0, r5
	blx r4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D8B4C: .word 0x021D0A10
_020D8B50: .word 0x021CCC80
_020D8B54: .word 0x021D0920
_020D8B58: .word 0x021D0944
_020D8B5C: .word 0x021D0D44
	arm_func_end sub_020D8A30

	arm_func_start sub_020D8B60
sub_020D8B60: ; 0x020D8B60
	mvn r2, #0
_020D8B64:
	ldrsb r1, [r0], #1
	add r2, r2, #1
	cmp r1, #0
	bne _020D8B64
	mov r0, r2
	bx lr
	arm_func_end sub_020D8B60

	arm_func_start sub_020D8B7C
sub_020D8B7C: ; 0x020D8B7C
	stmfd sp!, {r3, r4, r5, lr}
	and r4, r1, #3
	and r3, r0, #3
	mov r2, r0
	cmp r3, r4
	bne _020D8C18
	cmp r4, #0
	beq _020D8BD4
	ldrb r3, [r1]
	strb r3, [r0]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	rsb r4, r4, #3
	beq _020D8BCC
_020D8BB4:
	ldrb r3, [r1, #1]!
	cmp r3, #0
	strb r3, [r2, #1]!
	ldmeqia sp!, {r3, r4, r5, pc}
	sub r4, r4, #1
	bne _020D8BB4
_020D8BCC:
	add r2, r2, #1
	add r1, r1, #1
_020D8BD4:
	ldr r5, [r1, #0]
	ldr r3, _020D8C3C ; =0xFEFEFEFF
	mvn r4, r5
	add lr, r5, r3
	ldr ip, _020D8C40 ; =0x80808080
	and r4, lr, r4
	tst r4, ip
	bne _020D8C18
	sub r2, r2, #4
_020D8BF8:
	str r5, [r2, #4]!
	ldr r5, [r1, #4]!
	add r4, r5, r3
	mvn lr, r5
	and lr, r4, lr
	tst lr, ip
	beq _020D8BF8
	add r2, r2, #4
_020D8C18:
	ldrb r3, [r1]
	strb r3, [r2]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020D8C28:
	ldrb r3, [r1, #1]!
	cmp r3, #0
	strb r3, [r2, #1]!
	bne _020D8C28
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D8C3C: .word 0xFEFEFEFF
_020D8C40: .word 0x80808080
	arm_func_end sub_020D8B7C

	arm_func_start sub_020D8C44
sub_020D8C44: ; 0x020D8C44
	stmfd sp!, {r3, lr}
	mov lr, r0
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
_020D8C54:
	ldrsb r3, [r1], #1
	mov ip, lr
	strb r3, [lr], #1
	ldrsb r3, [ip]
	cmp r3, #0
	bne _020D8C88
	sub r2, r2, #1
	ldmeqia sp!, {r3, pc}
	mov r1, #0
_020D8C78:
	strb r1, [lr], #1
	sub r2, r2, #1
	bne _020D8C78
	ldmia sp!, {r3, pc}
_020D8C88:
	sub r2, r2, #1
	bne _020D8C54
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D8C44

	arm_func_start sub_020D8C94
sub_020D8C94: ; 0x020D8C94
	mov r3, r0
_020D8C98:
	ldrsb r2, [r3], #1
	cmp r2, #0
	bne _020D8C98
	sub r3, r3, #1
_020D8CA8:
	ldrsb r2, [r1], #1
	mov ip, r3
	strb r2, [r3], #1
	ldrsb r2, [ip]
	cmp r2, #0
	bne _020D8CA8
	bx lr
	arm_func_end sub_020D8C94

	arm_func_start sub_020D8CC4
sub_020D8CC4: ; 0x020D8CC4
	stmfd sp!, {r3, lr}
	mov ip, r0
_020D8CCC:
	ldrsb r3, [ip], #1
	cmp r3, #0
	bne _020D8CCC
	cmp r2, #0
	sub ip, ip, #1
	beq _020D8D08
_020D8CE4:
	ldrsb r3, [r1], #1
	mov lr, ip
	strb r3, [ip], #1
	ldrsb r3, [lr]
	cmp r3, #0
	subeq ip, ip, #1
	beq _020D8D08
	sub r2, r2, #1
	bne _020D8CE4
_020D8D08:
	mov r1, #0
	strb r1, [ip]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D8CC4

	arm_func_start sub_020D8D14
sub_020D8D14: ; 0x020D8D14
	stmfd sp!, {r4, lr}
	ldrb r2, [r0]
	ldrb r3, [r1]
	sub r3, r2, r3
	movne r0, r3
	ldmneia sp!, {r4, pc}
	and r4, r0, #3
	and r3, r1, #3
	cmp r3, r4
	bne _020D8DF0
	cmp r4, #0
	beq _020D8D88
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	rsb r4, r4, #3
	beq _020D8D80
_020D8D58:
	ldrb r3, [r0, #1]!
	ldrb r2, [r1, #1]!
	sub r2, r3, r2
	movne r0, r2
	ldmneia sp!, {r4, pc}
	cmp r3, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	sub r4, r4, #1
	bne _020D8D58
_020D8D80:
	add r0, r0, #1
	add r1, r1, #1
_020D8D88:
	ldr r2, [r0, #0]
	ldr r3, _020D8E20 ; =0xFEFEFEFF
	mvn r4, r2
	add lr, r2, r3
	ldr ip, _020D8E24 ; =0x80808080
	and r4, lr, r4
	tst r4, ip
	ldr r4, [r1, #0]
	bne _020D8DDC
	cmp r2, r4
	bne _020D8DD0
_020D8DB4:
	ldr r2, [r0, #4]!
	ldr r4, [r1, #4]!
	add lr, r2, r3
	tst lr, ip
	bne _020D8DDC
	cmp r2, r4
	beq _020D8DB4
_020D8DD0:
	sub r0, r0, #1
	sub r1, r1, #1
	b _020D8DF0
_020D8DDC:
	ldrb r2, [r0]
	ldrb r3, [r1]
	sub r3, r2, r3
	movne r0, r3
	ldmneia sp!, {r4, pc}
_020D8DF0:
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_020D8DFC:
	ldrb r3, [r0, #1]!
	ldrb r2, [r1, #1]!
	sub r2, r3, r2
	movne r0, r2
	ldmneia sp!, {r4, pc}
	cmp r3, #0
	bne _020D8DFC
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D8E20: .word 0xFEFEFEFF
_020D8E24: .word 0x80808080
	arm_func_end sub_020D8D14

	arm_func_start sub_020D8E28
sub_020D8E28: ; 0x020D8E28
	cmp r2, #0
	beq _020D8E54
_020D8E30:
	ldrb ip, [r1], #1
	ldrb r3, [r0], #1
	cmp r3, ip
	subne r0, r3, ip
	bxne lr
	cmp r3, #0
	beq _020D8E54
	sub r2, r2, #1
	bne _020D8E30
_020D8E54:
	mov r0, #0
	bx lr
	arm_func_end sub_020D8E28

	arm_func_start sub_020D8E5C
sub_020D8E5C: ; 0x020D8E5C
	ldrsb r2, [r0], #1
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	cmp r2, #0
	beq _020D8E88
_020D8E70:
	cmp r2, r1
	subeq r0, r0, #1
	bxeq lr
	ldrsb r2, [r0], #1
	cmp r2, #0
	bne _020D8E70
_020D8E88:
	cmp r1, #0
	movne r0, #0
	subeq r0, r0, #1
	bx lr
	arm_func_end sub_020D8E5C

	arm_func_start sub_020D8E98
sub_020D8E98: ; 0x020D8E98
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	add ip, sp, #0
	mov r3, #8
	mov r2, #0
_020D8EAC:
	strb r2, [ip]
	strb r2, [ip, #1]
	strb r2, [ip, #2]
	strb r2, [ip, #3]
	add ip, ip, #4
	sub r3, r3, #1
	bne _020D8EAC
	ldrb r3, [r1]
	add r4, r1, #1
	cmp r3, #0
	beq _020D8F08
	add lr, sp, #0
	mov r2, #1
_020D8EE0:
	and ip, r3, #0xff
	and r1, r3, #7
	mov r1, r2, lsl r1
	ldrb r3, [lr, ip, asr #3]
	and r1, r1, #0xff
	orr r1, r3, r1
	strb r1, [lr, ip, asr #3]
	ldrb r3, [r4], #1
	cmp r3, #0
	bne _020D8EE0
_020D8F08:
	ldrb r1, [r0]
	add r4, r0, #1
	cmp r1, #0
	beq _020D8F48
	add ip, sp, #0
	mov r2, #1
_020D8F20:
	and r3, r1, #0xff
	and r1, r1, #7
	mov r1, r2, lsl r1
	ldrb r3, [ip, r3, asr #3]
	and r1, r1, #0xff
	tst r3, r1
	bne _020D8F48
	ldrb r1, [r4], #1
	cmp r1, #0
	bne _020D8F20
_020D8F48:
	sub r0, r4, r0
	sub r0, r0, #1
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D8E98

	arm_func_start sub_020D8F58
sub_020D8F58: ; 0x020D8F58
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	add ip, sp, #0
	mov r3, #8
	mov r2, #0
_020D8F6C:
	strb r2, [ip]
	strb r2, [ip, #1]
	strb r2, [ip, #2]
	strb r2, [ip, #3]
	add ip, ip, #4
	sub r3, r3, #1
	bne _020D8F6C
	cmp r0, #0
	ldrne r2, _020D90AC ; =0x02101820
	add lr, r1, #1
	strne r0, [r2, #4]
	ldrb r0, [r1]
	cmp r0, #0
	beq _020D8FD4
	add ip, sp, #0
	mov r1, #1
_020D8FAC:
	and r3, r0, #0xff
	and r0, r0, #7
	mov r0, r1, lsl r0
	ldrb r2, [ip, r3, asr #3]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [ip, r3, asr #3]
	ldrb r0, [lr], #1
	cmp r0, #0
	bne _020D8FAC
_020D8FD4:
	ldr r0, _020D90AC ; =0x02101820
	ldr r0, [r0, #4]
	ldrb r4, [r0]
	add r1, r0, #1
	cmp r4, #0
	beq _020D9018
	add ip, sp, #0
	mov r2, #1
_020D8FF4:
	and r3, r4, #0xff
	and r0, r4, #7
	mov r0, r2, lsl r0
	ldrb r3, [ip, r3, asr #3]
	and r0, r0, #0xff
	tst r3, r0
	ldrneb r4, [r1], #1
	cmpne r4, #0
	bne _020D8FF4
_020D9018:
	cmp r4, #0
	bne _020D9038
	ldr r1, _020D90AC ; =0x02101820
	add sp, sp, #0x20
	ldr r2, [r1, #0]
	mov r0, #0
	str r2, [r1, #4]
	ldmia sp!, {r4, pc}
_020D9038:
	sub r0, r1, #1
	ldrb r4, [r1], #1
	cmp r4, #0
	beq _020D9078
	add lr, sp, #0
	mov r3, #1
_020D9050:
	and ip, r4, #0xff
	and r2, r4, #7
	mov r2, r3, lsl r2
	ldrb ip, [lr, ip, asr #3]
	and r2, r2, #0xff
	tst ip, r2
	bne _020D9078
	ldrb r4, [r1], #1
	cmp r4, #0
	bne _020D9050
_020D9078:
	cmp r4, #0
	bne _020D9094
	ldr r1, _020D90AC ; =0x02101820
	add sp, sp, #0x20
	ldr r2, [r1, #0]
	str r2, [r1, #4]
	ldmia sp!, {r4, pc}
_020D9094:
	ldr r2, _020D90AC ; =0x02101820
	mov r3, #0
	str r1, [r2, #4]
	strb r3, [r1, #-1]
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D90AC: .word 0x02101820
	arm_func_end sub_020D8F58

	arm_func_start sub_020D90B0
sub_020D90B0: ; 0x020D90B0
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldrneb r2, [r1]
	cmpne r2, #0
	ldmeqia sp!, {r4, pc}
	ldrb r3, [r0]
	add r4, r0, #1
	cmp r3, #0
	beq _020D9114
_020D90D4:
	cmp r3, r2
	bne _020D9108
	mov lr, r4
	add ip, r1, #1
_020D90E4:
	ldrb r3, [ip], #1
	ldrb r0, [lr], #1
	cmp r0, r3
	bne _020D90FC
	cmp r0, #0
	bne _020D90E4
_020D90FC:
	cmp r3, #0
	subeq r0, r4, #1
	ldmeqia sp!, {r4, pc}
_020D9108:
	ldrb r3, [r4], #1
	cmp r3, #0
	bne _020D90D4
_020D9114:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D90B0

	arm_func_start sub_020D911C
sub_020D911C: ; 0x020D911C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xa8
	ldr r4, [sp, #0xd0]
	mov sl, #0
	str r4, [sp, #0xd0]
	str r0, [sp]
	add r6, sp, #0x80
	mov sb, r1
	mov r8, r2
	str r3, [sp, #4]
	mov r4, sl
	str sl, [sp, #0x2c]
	mov r5, #1
	mov r0, #4
_020D9154:
	strh sl, [r6]
	strh sl, [r6, #2]
	strh sl, [r6, #4]
	strh sl, [r6, #6]
	add r6, r6, #8
	sub r0, r0, #1
	bne _020D9154
	mov r0, #0
	str r0, [sp, #0x28]
	strh sl, [r6]
	strh sl, [r6, #2]
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0xd0]
	strh sl, [r6, #4]
	str r2, [r1, #0]
	mov r1, r2
	mov r0, r8
	str r1, [sp, #0x24]
	str r1, [sp, #0x20]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x18]
	str r1, [sp, #0x10]
	str r1, [sp, #0xc]
	str r1, [sp, #8]
	add r4, r4, #1
	blx sb
	mov r1, r0
	ldr r7, _020DA0FC ; =0x020FE991
	add r0, sp, #0x4d
	mov r6, #4
_020D91CC:
	ldrb r3, [r7]
	ldrb r2, [r7, #1]
	add r7, r7, #2
	strb r3, [r0]
	strb r2, [r0, #1]
	add r0, r0, #2
	sub r6, r6, #1
	bne _020D91CC
	ldrb r3, [r7]
	ldr r2, _020DA100 ; =0x020FE98C
	strb r3, [r0]
	ldrb r3, [r2, #1]
	ldrb r0, [r2, #2]
	ldrb r6, [r2]
	strb r3, [sp, #0x31]
	strb r0, [sp, #0x32]
	ldrb r3, [r2, #3]
	ldrb r0, [r2, #4]
	strb r6, [sp, #0x30]
	strb r3, [sp, #0x33]
	strb r0, [sp, #0x34]
	b _020D9F10
_020D9224:
	cmp r5, #0x100
	bgt _020D929C
	bge _020D99A4
	cmp r5, #0x20
	bgt _020D9280
	bge _020D9878
	cmp r5, #8
	bgt _020D9274
	cmp r5, #0
	addge pc, pc, r5, lsl #2
	b _020D9F10
_020D9250: ; jump table
	b _020D9F10 ; case 0
	b _020D92E0 ; case 1
	b _020D96C4 ; case 2
	b _020D9F10 ; case 3
	b _020D9774 ; case 4
	b _020D9F10 ; case 5
	b _020D9F10 ; case 6
	b _020D9F10 ; case 7
	b _020D979C ; case 8
_020D9274:
	cmp r5, #0x10
	beq _020D9840
	b _020D9F10
_020D9280:
	cmp r5, #0x40
	bgt _020D9290
	beq _020D9904
	b _020D9F10
_020D9290:
	cmp r5, #0x80
	beq _020D9950
	b _020D9F10
_020D929C:
	cmp r5, #0x2000
	bgt _020D92C4
	bge _020D94F8
	cmp r5, #0x200
	bgt _020D92B8
	beq _020D9A04
	b _020D9F10
_020D92B8:
	cmp r5, #0x400
	beq _020D9A2C
	b _020D9F10
_020D92C4:
	cmp r5, #0x4000
	bgt _020D92D4
	beq _020D9400
	b _020D9F10
_020D92D4:
	cmp r5, #0x8000
	beq _020D9AA4
	b _020D9F10
_020D92E0:
	cmp r1, #0
	blt _020D92F0
	cmp r1, #0x80
	blt _020D92F8
_020D92F0:
	mov r0, #0
	b _020D9308
_020D92F8:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #0x100
_020D9308:
	cmp r0, #0
	beq _020D9334
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r1, r0
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	b _020D9F10
_020D9334:
	cmp r1, #0
	blt _020D9344
	cmp r1, #0x80
	blt _020D934C
_020D9344:
	mov r0, r1
	b _020D9354
_020D934C:
	ldr r0, _020DA108 ; =0x020FE7E4
	ldrb r0, [r0, r1]
_020D9354:
	cmp r0, #0x49
	bgt _020D9380
	bge _020D93B8
	cmp r0, #0x2d
	bgt _020D93F8
	cmp r0, #0x2b
	blt _020D93F8
	beq _020D9394
	cmp r0, #0x2d
	beq _020D938C
	b _020D93F8
_020D9380:
	cmp r0, #0x4e
	beq _020D93D8
	b _020D93F8
_020D938C:
	mov r0, #1
	str r0, [sp, #0x28]
_020D9394:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	mov r0, #1
	str r0, [sp, #0x18]
	b _020D9F10
_020D93B8:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	mov r5, #0x4000
	b _020D9F10
_020D93D8:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	mov r5, #0x2000
	b _020D9F10
_020D93F8:
	mov r5, #2
	b _020D9F10
_020D9400:
	mov r5, #1
	add r7, sp, #0x4d
	add r0, sp, #0x76
	mov r6, #4
_020D9410:
	ldrb r3, [r7]
	ldrb r2, [r7, #1]
	add r7, r7, #2
	strb r3, [r0]
	strb r2, [r0, #1]
	add r0, r0, #2
	sub r6, r6, #1
	bne _020D9410
	ldrb r2, [r7]
	add r6, sp, #0x77
	ldr r7, _020DA108 ; =0x020FE7E4
	strb r2, [r0]
	b _020D9464
_020D9444:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r6, r6, #1
	add r5, r5, #1
	add r4, r4, #1
	blx sb
	mov r1, r0
_020D9464:
	cmp r5, #8
	bge _020D9494
	cmp r1, #0
	blt _020D947C
	cmp r1, #0x80
	blt _020D9484
_020D947C:
	mov r2, r1
	b _020D9488
_020D9484:
	ldrb r2, [r7, r1]
_020D9488:
	ldrsb r0, [r6]
	cmp r0, r2
	beq _020D9444
_020D9494:
	cmp r5, #3
	cmpne r5, #8
	bne _020D94F0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _020D94C4
	ldr r1, _020DA10C ; =0x021015AC
	mov r0, #0
	ldr r1, [r1, #0]
	bl sub_020E1A9C
	bl sub_020E16BC
	b _020D94D0
_020D94C4:
	ldr r0, _020DA10C ; =0x021015AC
	ldr r0, [r0, #0]
	bl sub_020E16BC
_020D94D0:
	ldr r2, [sp, #0x2c]
	add r3, r2, r5
	ldr r2, [sp, #0x18]
	add r3, r2, r3
	ldr r2, [sp, #4]
	add sp, sp, #0xa8
	str r3, [r2, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020D94F0:
	mov r5, #0x1000
	b _020D9F10
_020D94F8:
	ldrb r3, [sp, #0x30]
	ldrb r0, [sp, #0x32]
	ldrb r2, [sp, #0x31]
	strb r3, [sp, #0x40]
	strb r0, [sp, #0x42]
	ldrb r3, [sp, #0x33]
	ldrb r0, [sp, #0x34]
	strb r2, [sp, #0x41]
	mov r5, #1
	strb r0, [sp, #0x44]
	mov r6, #0
	add r2, sp, #0x56
	strb r3, [sp, #0x43]
	mov r0, #8
_020D9530:
	strb r6, [r2]
	strb r6, [r2, #1]
	strb r6, [r2, #2]
	strb r6, [r2, #3]
	add r2, r2, #4
	sub r0, r0, #1
	bne _020D9530
	add r7, sp, #0x41
	b _020D9574
_020D9554:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r7, r7, #1
	add r5, r5, #1
	add r4, r4, #1
	blx sb
	mov r1, r0
_020D9574:
	cmp r5, #4
	bge _020D95A8
	cmp r1, #0
	blt _020D958C
	cmp r1, #0x80
	blt _020D9594
_020D958C:
	mov r2, r1
	b _020D959C
_020D9594:
	ldr r0, _020DA108 ; =0x020FE7E4
	ldrb r2, [r0, r1]
_020D959C:
	ldrsb r0, [r7]
	cmp r0, r2
	beq _020D9554
_020D95A8:
	sub r0, r5, #3
	cmp r0, #1
	bhi _020D96BC
	cmp r5, #4
	bne _020D9660
	ldr r7, _020DA104 ; =0x020FE864
	b _020D95E8
_020D95C4:
	add r0, sp, #0x56
	strb r1, [r0, r6]
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r6, r6, #1
	add r4, r4, #1
	blx sb
	mov r1, r0
_020D95E8:
	cmp r6, #0x20
	bge _020D9650
	cmp r1, #0
	blt _020D9600
	cmp r1, #0x80
	blt _020D9608
_020D9600:
	mov r0, #0
	b _020D9614
_020D9608:
	mov r0, r1, lsl #1
	ldrh r0, [r7, r0]
	and r0, r0, #8
_020D9614:
	cmp r0, #0
	bne _020D95C4
	cmp r1, #0
	blt _020D962C
	cmp r1, #0x80
	blt _020D9634
_020D962C:
	mov r0, #0
	b _020D9640
_020D9634:
	mov r0, r1, lsl #1
	ldrh r0, [r7, r0]
	and r0, r0, #1
_020D9640:
	cmp r0, #0
	bne _020D95C4
	cmp r1, #0x2e
	beq _020D95C4
_020D9650:
	cmp r1, #0x29
	movne r5, #0x1000
	bne _020D9F10
	add r6, r6, #1
_020D9660:
	add r0, sp, #0x56
	mov r1, #0
	strb r1, [r0, r6]
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _020D9694
	bl sub_020D3F38
	mov r2, r0
	mov r0, #0
	mov r3, r1
	mov r1, r0
	bl sub_020E074C
	b _020D9698
_020D9694:
	bl sub_020D3F38
_020D9698:
	ldr r2, [sp, #0x2c]
	add r2, r2, r5
	add r3, r6, r2
	ldr r2, [sp, #0x18]
	add r3, r2, r3
	ldr r2, [sp, #4]
	add sp, sp, #0xa8
	str r3, [r2, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020D96BC:
	mov r5, #0x1000
	b _020D9F10
_020D96C4:
	cmp r1, #0x2e
	bne _020D96EC
	mov r5, #0x10
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D96EC:
	cmp r1, #0
	blt _020D96FC
	cmp r1, #0x80
	blt _020D9704
_020D96FC:
	mov r0, #0
	b _020D9714
_020D9704:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D9714:
	cmp r0, #0
	moveq r5, #0x1000
	beq _020D9F10
	cmp r1, #0x30
	bne _020D976C
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	cmp r0, #0
	mov r1, r0
	blt _020D9758
	cmp r0, #0x80
	bge _020D9758
	ldr r2, _020DA108 ; =0x020FE7E4
	ldrb r0, [r2, r0]
_020D9758:
	cmp r0, #0x58
	moveq r5, #0x8000
	moveq sl, #1
	movne r5, #4
	b _020D9F10
_020D976C:
	mov r5, #8
	b _020D9F10
_020D9774:
	cmp r1, #0x30
	movne r5, #8
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D979C:
	cmp r1, #0
	blt _020D97AC
	cmp r1, #0x80
	blt _020D97B4
_020D97AC:
	mov r0, #0
	b _020D97C4
_020D97B4:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D97C4:
	cmp r0, #0
	bne _020D97F8
	cmp r1, #0x2e
	movne r5, #0x40
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov r5, #0x20
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D97F8:
	ldrb r2, [sp, #0x84]
	cmp r2, #0x14
	ldrhs r0, [sp, #0x1c]
	addhs r0, r0, #1
	strhs r0, [sp, #0x1c]
	bhs _020D9824
	add r0, r2, #1
	strb r0, [sp, #0x84]
	add r0, sp, #0x80
	add r0, r0, r2
	strb r1, [r0, #5]
_020D9824:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9840:
	cmp r1, #0
	blt _020D9850
	cmp r1, #0x80
	blt _020D9858
_020D9850:
	mov r0, #0
	b _020D9868
_020D9858:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D9868:
	cmp r0, #0
	moveq r5, #0x1000
	movne r5, #0x20
	b _020D9F10
_020D9878:
	cmp r1, #0
	blt _020D9888
	cmp r1, #0x80
	blt _020D9890
_020D9888:
	mov r0, #0
	b _020D98A0
_020D9890:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D98A0:
	cmp r0, #0
	moveq r5, #0x40
	beq _020D9F10
	ldrb r3, [sp, #0x84]
	cmp r3, #0x14
	bhs _020D98E8
	cmp r1, #0x30
	cmpeq r3, #0
	beq _020D98DC
	ldrb r2, [sp, #0x84]
	add r0, sp, #0x80
	add r0, r0, r3
	add r2, r2, #1
	strb r2, [sp, #0x84]
	strb r1, [r0, #5]
_020D98DC:
	ldr r0, [sp, #0x1c]
	sub r0, r0, #1
	str r0, [sp, #0x1c]
_020D98E8:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9904:
	cmp r1, #0
	blt _020D9914
	cmp r1, #0x80
	blt _020D991C
_020D9914:
	mov r0, r1
	b _020D9924
_020D991C:
	ldr r0, _020DA108 ; =0x020FE7E4
	ldrb r0, [r0, r1]
_020D9924:
	cmp r0, #0x45
	movne r5, #0x800
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov r5, #0x80
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9950:
	cmp r1, #0x2b
	bne _020D9974
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D999C
_020D9974:
	cmp r1, #0x2d
	bne _020D999C
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	mov r0, #1
	str r0, [sp, #0x24]
_020D999C:
	mov r5, #0x100
	b _020D9F10
_020D99A4:
	cmp r1, #0
	blt _020D99B4
	cmp r1, #0x80
	blt _020D99BC
_020D99B4:
	mov r0, #0
	b _020D99CC
_020D99BC:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D99CC:
	cmp r0, #0
	moveq r5, #0x1000
	beq _020D9F10
	cmp r1, #0x30
	movne r5, #0x400
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov r5, #0x200
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9A04:
	cmp r1, #0x30
	movne r5, #0x400
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9A2C:
	cmp r1, #0
	blt _020D9A3C
	cmp r1, #0x80
	blt _020D9A44
_020D9A3C:
	mov r0, #0
	b _020D9A54
_020D9A44:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D9A54:
	cmp r0, #0
	moveq r5, #0x800
	beq _020D9F10
	ldr r0, [sp, #0x20]
	sub r2, r1, #0x30
	mov r1, #0xa
	mla r0, r1, r0, r2
	ldr r1, _020DA110 ; =0x00007FFF
	str r0, [sp, #0x20]
	cmp r0, r1
	ldrgt r0, [sp, #0xd0]
	movgt r1, #1
	strgt r1, [r0]
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9AA4:
	cmp sl, #0x20
	bgt _020D9AF4
	bge _020D9DC8
	cmp sl, #8
	bgt _020D9AE8
	cmp sl, #0
	addge pc, pc, sl, lsl #2
	b _020D9F10
_020D9AC4: ; jump table
	b _020D9F10 ; case 0
	b _020D9B18 ; case 1
	b _020D9B68 ; case 2
	b _020D9F10 ; case 3
	b _020D9B90 ; case 4
	b _020D9F10 ; case 5
	b _020D9F10 ; case 6
	b _020D9F10 ; case 7
	b _020D9CA0 ; case 8
_020D9AE8:
	cmp sl, #0x10
	beq _020D9D7C
	b _020D9F10
_020D9AF4:
	cmp sl, #0x80
	bgt _020D9B0C
	bge _020D9E70
	cmp sl, #0x40
	beq _020D9E10
	b _020D9F10
_020D9B0C:
	cmp sl, #0x100
	beq _020D9E98
	b _020D9F10
_020D9B18:
	mov r1, #0
	add r0, sp, #0x45
	str r0, [sp, #0x14]
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	mov r0, r8
	mov r2, r1
	str r1, [sp, #8]
	mov fp, r1
	mov sl, #2
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9B68:
	cmp r1, #0x30
	movne sl, #4
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9B90:
	cmp r1, #0
	blt _020D9BA0
	cmp r1, #0x80
	blt _020D9BA8
_020D9BA0:
	mov r0, #0
	b _020D9BB8
_020D9BA8:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #0x400
_020D9BB8:
	cmp r0, #0
	bne _020D9BEC
	cmp r1, #0x2e
	movne sl, #0x10
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov sl, #8
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9BEC:
	ldr r2, [sp, #8]
	mov r0, #0xe
	cmp r2, r0
	bhs _020D9C84
	mov r0, r2
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r2, fp, fp, lsr #31
	cmp r1, #0
	ldrb r0, [r0, r2, asr #1]
	blt _020D9C2C
	cmp r1, #0x80
	bge _020D9C2C
	ldr r2, _020DA108 ; =0x020FE7E4
	ldrb r1, [r2, r1]
_020D9C2C:
	cmp r1, #0x41
	subge r1, r1, #0x37
	sublt r1, r1, #0x30
	mov r2, fp, lsr #0x1f
	and r3, r1, #0xff
	rsb r1, r2, fp, lsl #31
	add r1, r2, r1, ror #31
	moveq r1, r3, lsl #4
	add r2, fp, fp, lsr #31
	orrne r0, r0, r3
	andeq r1, r1, #0xff
	orreq r0, r0, r1
	ldr r1, [sp, #0x14]
	add fp, fp, #1
	strb r0, [r1, r2, asr #1]
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9C84:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9CA0:
	cmp r1, #0
	blt _020D9CB0
	cmp r1, #0x80
	blt _020D9CB8
_020D9CB0:
	mov r0, #0
	b _020D9CC8
_020D9CB8:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #0x400
_020D9CC8:
	cmp r0, #0
	moveq sl, #0x10
	beq _020D9F10
	ldr r2, [sp, #8]
	mov r0, #0xe
	cmp r2, r0
	bhs _020D9D60
	ldr r0, [sp, #0x14]
	add r2, fp, fp, lsr #31
	cmp r1, #0
	ldrb r0, [r0, r2, asr #1]
	blt _020D9D08
	cmp r1, #0x80
	bge _020D9D08
	ldr r2, _020DA108 ; =0x020FE7E4
	ldrb r1, [r2, r1]
_020D9D08:
	cmp r1, #0x41
	subge r1, r1, #0x37
	sublt r1, r1, #0x30
	mov r2, fp, lsr #0x1f
	and r3, r1, #0xff
	rsb r1, r2, fp, lsl #31
	add r1, r2, r1, ror #31
	moveq r1, r3, lsl #4
	add r2, fp, fp, lsr #31
	orrne r0, r0, r3
	andeq r1, r1, #0xff
	orreq r0, r0, r1
	ldr r1, [sp, #0x14]
	add fp, fp, #1
	strb r0, [r1, r2, asr #1]
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9D60:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9D7C:
	cmp r1, #0
	blt _020D9D8C
	cmp r1, #0x80
	blt _020D9D94
_020D9D8C:
	mov r0, r1
	b _020D9D9C
_020D9D94:
	ldr r0, _020DA108 ; =0x020FE7E4
	ldrb r0, [r0, r1]
_020D9D9C:
	cmp r0, #0x50
	movne r5, #0x800
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov sl, #0x20
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9DC8:
	cmp r1, #0x2d
	moveq r0, #1
	streq r0, [sp, #0xc]
	beq _020D9DF0
	cmp r1, #0x2b
	beq _020D9DF0
	mov r0, r8
	mov r2, #1
	blx sb
	sub r4, r4, #1
_020D9DF0:
	mov sl, #0x40
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9E10:
	cmp r1, #0
	blt _020D9E20
	cmp r1, #0x80
	blt _020D9E28
_020D9E20:
	mov r0, #0
	b _020D9E38
_020D9E28:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D9E38:
	cmp r0, #0
	moveq r5, #0x1000
	beq _020D9F10
	cmp r1, #0x30
	movne sl, #0x100
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov sl, #0x80
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9E70:
	cmp r1, #0x30
	movne sl, #0x100
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9E98:
	cmp r1, #0
	blt _020D9EA8
	cmp r1, #0x80
	blt _020D9EB0
_020D9EA8:
	mov r0, #0
	b _020D9EC0
_020D9EB0:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D9EC0:
	cmp r0, #0
	moveq r5, #0x800
	beq _020D9F10
	ldr r0, [sp, #0x10]
	sub r2, r1, #0x30
	mov r1, #0xa
	mla r0, r1, r0, r2
	str r0, [sp, #0x10]
	ldr r1, _020DA110 ; =0x00007FFF
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	cmp r0, r1
	ldrgt r0, [sp, #0xd0]
	movgt r1, #1
	strgt r1, [r0]
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r1, r0
_020D9F10:
	ldr r0, [sp]
	cmp r4, r0
	bgt _020D9F30
	mvn r0, #0
	cmp r1, r0
	beq _020D9F30
	tst r5, #0x1800
	beq _020D9224
_020D9F30:
	cmp r5, #0x8000
	beq _020D9F4C
	ldr r0, _020DA114 ; =0x00000E2C
	tst r5, r0
	moveq r0, #1
	movne r0, #0
	b _020D9F70
_020D9F4C:
	sub r0, r4, #1
	cmp r0, #2
	ble _020D9F64
	ldr r0, _020DA118 ; =0x0000018E
	tst sl, r0
	bne _020D9F6C
_020D9F64:
	mov r0, #1
	b _020D9F70
_020D9F6C:
	mov r0, #0
_020D9F70:
	cmp r0, #0
	movne r2, #0
	ldrne r0, [sp, #4]
	bne _020D9F90
	ldr r0, [sp, #0x2c]
	sub r2, r4, #1
	add r2, r2, r0
	ldr r0, [sp, #4]
_020D9F90:
	str r2, [r0, #0]
	mov r0, r8
	mov r2, #1
	blx sb
	cmp sl, #0
	bne _020DA194
	ldr r0, [sp, #0x24]
	ldrb r2, [sp, #0x84]
	cmp r0, #0
	ldrne r0, [sp, #0x20]
	rsbne r0, r0, #0
	strne r0, [sp, #0x20]
	add r0, sp, #0x85
	add r1, r0, r2
	b _020D9FD8
_020D9FCC:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_020D9FD8:
	cmp r2, #0
	sub r2, r2, #1
	beq _020D9FF0
	ldrb r0, [r1, #-1]!
	cmp r0, #0x30
	beq _020D9FCC
_020D9FF0:
	add r0, r2, #1
	strb r0, [sp, #0x84]
	and r2, r0, #0xff
	bne _020DA014
	add r1, r2, #1
	strb r1, [sp, #0x84]
	add r0, sp, #0x85
	mov r1, #0x30
	strb r1, [r0, r2]
_020DA014:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	mov r2, #0x8000
	add r0, r1, r0
	rsb r2, r2, #0
	str r0, [sp, #0x20]
	cmp r0, r2
	blt _020DA03C
	cmp r0, r2, lsr #17
	ble _020DA048
_020DA03C:
	ldr r0, [sp, #0xd0]
	mov r1, #1
	str r1, [r0, #0]
_020DA048:
	ldr r0, [sp, #0xd0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020DA0A4
	ldr r0, [sp, #0x24]
	cmp r0, #0
	movne r0, #0
	addne sp, sp, #0xa8
	movne r1, r0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ldreq r1, _020DA11C ; =0x021015B4
	addeq sp, sp, #0xa8
	ldmeqia r1, {r0, r1}
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _020DA11C ; =0x021015B4
	mov r0, #0
	ldmia r1, {r2, r3}
	mov r1, r0
	bl sub_020E074C
	add sp, sp, #0xa8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DA0A4:
	ldr r1, [sp, #0x20]
	add r0, sp, #0x80
	strh r1, [sp, #0x82]
	bl sub_020DF1B0
	mov r4, r0
	mov r6, r1
	mov r0, #0
	mov r1, r0
	mov r2, r4
	mov r3, r6
	bl sub_020E1020
	beq _020DA124
	mov r0, r4
	mov r1, r6
	mov r2, #0
	mov r3, #0x100000
	bl sub_020E0EF8
	bhs _020DA124
	ldr r0, [sp, #0xd0]
	mov r1, #1
	str r1, [r0, #0]
	b _020DA150
	; .align 2, 0
_020DA0FC: .word 0x020FE991
_020DA100: .word 0x020FE98C
_020DA104: .word 0x020FE864
_020DA108: .word 0x020FE7E4
_020DA10C: .word 0x021015AC
_020DA110: .word 0x00007FFF
_020DA114: .word 0x00000E2C
_020DA118: .word 0x0000018E
_020DA11C: .word 0x021015B4
_020DA120: .word 0x7FEFFFFF
_020DA124:
	ldr r3, _020DA120 ; =0x7FEFFFFF
	mov r0, r4
	mov r1, r6
	mvn r2, #0
	bl sub_020E0DBC
	bls _020DA150
	ldr r0, [sp, #0xd0]
	mov r2, #1
	ldr r1, _020DA11C ; =0x021015B4
	str r2, [r0, #0]
	ldmia r1, {r4, r6}
_020DA150:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _020DA184
	ldr r0, _020DA114 ; =0x00000E2C
	tst r5, r0
	beq _020DA184
	mov r0, #0
	mov r1, r0
	mov r2, r4
	mov r3, r6
	bl sub_020E074C
	mov r4, r0
	mov r6, r1
_020DA184:
	add sp, sp, #0xa8
	mov r0, r4
	mov r1, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DA194:
	ldr r0, [sp, #0xc]
	add r4, sp, #0x38
	cmp r0, #0
	ldrne r0, [sp, #0x10]
	ldrb r3, [sp, #0x45]
	rsbne r0, r0, #0
	strne r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #8]
	mov r2, #0
	add r0, r1, r0, lsl #2
	str r0, [sp, #0x10]
	mov r1, #0x80
	b _020DA1DC
_020DA1CC:
	ldr r0, [sp, #0x10]
	add r2, r2, #1
	sub r0, r0, #1
	str r0, [sp, #0x10]
_020DA1DC:
	cmp r2, #4
	bhs _020DA1EC
	tst r3, r1, asr r2
	beq _020DA1CC
_020DA1EC:
	add r5, r2, #1
	beq _020DA238
	add r0, sp, #0x4c
	add r3, sp, #0x45
	str r0, [sp, #0x14]
	mov r1, #0
	cmp r0, r3
	blo _020DA238
	rsb r6, r5, #8
_020DA210:
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	orr r2, r1, r0, lsl r5
	mov r1, r0, asr r6
	ldr r0, [sp, #0x14]
	and r1, r1, #0xff
	strb r2, [r0], #-1
	str r0, [sp, #0x14]
	cmp r0, r3
	bhs _020DA210
_020DA238:
	mov r2, #0
	mov r6, r2
	strb r2, [r4]
	strb r2, [r4, #1]
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	strb r2, [r4, #4]
	strb r2, [r4, #5]
	strb r2, [r4, #6]
	strb r2, [r4, #7]
	mov r3, #0xc
	mov r7, #1
	mov r0, #0xff
	add r1, sp, #0x45
_020DA270:
	add r5, r2, #8
	cmp r5, #0x34
	ldrb r5, [r1, r6]
	rsbhi r8, r2, #0x34
	and fp, r3, #7
	andhi r5, r5, r0, lsl r8
	andhi r5, r5, #0xff
	mov r8, r5, asr fp
	and sb, r8, #0xff
	ldrb sl, [r4, r7]
	rsb r8, fp, #8
	mov r5, r5, lsl r8
	orr sb, sl, sb
	strb sb, [r4, r7]
	add r7, r7, #1
	add r2, r2, #8
	ldrb r8, [r4, r7]
	and r5, r5, #0xff
	cmp r2, #0x34
	orr r5, r8, r5
	strb r5, [r4, r7]
	add r3, r3, #8
	add r6, r6, #1
	blo _020DA270
	ldr r0, [sp, #0x10]
	mov r1, #0x800
	add r0, r0, #0xfe
	add r2, r0, #0x300
	rsb r1, r1, #0
	tst r2, r1
	beq _020DA308
	ldr r2, [sp, #0xd0]
	mov r3, #1
	mov r0, #0
	add sp, sp, #0xa8
	mov r1, r0
	str r3, [r2, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DA308:
	ldrb r0, [r4, #1]
	mov r2, r2, lsl #0x15
	ldrb r1, [r4]
	orr r0, r0, r2, lsr #17
	strb r0, [r4, #1]
	ldr r0, [sp, #0x28]
	orr r1, r1, r2, lsr #25
	cmp r0, #0
	andne r0, r1, #0xff
	strb r1, [r4]
	orrne r0, r0, #0x80
	strneb r0, [r4]
	mov r3, #0
_020DA33C:
	rsb r1, r3, #7
	ldrb r2, [r4, r3]
	ldrb r0, [r4, r1]
	strb r0, [r4, r3]
	add r3, r3, #1
	strb r2, [r4, r1]
	cmp r3, #4
	blt _020DA33C
	ldmia r4, {r0, r1}
	add sp, sp, #0xa8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020D911C

	arm_func_start sub_020DA368
sub_020DA368: ; 0x020DA368
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r0, #0
	mov r6, r1
	str r0, [sp, #8]
	add r4, sp, #0xc
	str r7, [sp, #4]
	ldr r1, _020DA43C ; =sub_020D8930
	add r2, sp, #4
	add r3, sp, #0x10
	sub r0, r0, #-0x7fffffff
	str r4, [sp]
	bl sub_020D911C
	mov r5, r1
	mov r4, r0
	cmp r6, #0
	ldrne r0, [sp, #0x10]
	mov r1, r5
	addne r0, r7, r0
	strne r0, [r6]
	mov r0, r4
	bl sub_020DE084
	ldr r2, [sp, #0xc]
	mov r6, r0
	mov r7, r1
	cmp r2, #0
	bne _020DA420
	mov r0, #0
	mov r1, r0
	mov r2, r4
	mov r3, r5
	bl sub_020E1020
	beq _020DA42C
	mov r0, r6
	mov r1, r7
	mov r2, #0
	mov r3, #0x100000
	bl sub_020E0EF8
	blo _020DA420
	ldr r3, _020DA440 ; =0x7FEFFFFF
	mov r0, r6
	mov r1, r7
	mvn r2, #0
	bl sub_020E0DBC
	bls _020DA42C
_020DA420:
	ldr r0, _020DA444 ; =0x021D0D40
	mov r1, #0x22
	str r1, [r0, #0]
_020DA42C:
	mov r0, r4
	mov r1, r5
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020DA43C: .word sub_020D8930
_020DA440: .word 0x7FEFFFFF
_020DA444: .word 0x021D0D40
	arm_func_end sub_020DA368

	arm_func_start sub_020DA448
sub_020DA448: ; 0x020DA448
	ldr ip, _020DA454 ; =sub_020DA368
	mov r1, #0
	bx ip
	; .align 2, 0
_020DA454: .word sub_020DA368
	arm_func_end sub_020DA448

	arm_func_start sub_020DA458
sub_020DA458: ; 0x020DA458
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r4, [sp, #0x38]
	mov sb, r0
	ldr r0, [sp, #0x34]
	str r4, [sp, #0x38]
	mov r4, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r1, [sp]
	str r4, [r0, #0]
	mov r0, r4
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	mov r1, r4
	str r1, [r0, #0]
	ldr r0, [sp, #0x30]
	str r4, [sp, #8]
	mov r8, r2
	mov r7, r3
	mov r5, r4
	mov sl, r4
	str r0, [sp, #0x30]
	mov r4, #1
	bmi _020DA4D8
	cmp sb, #1
	beq _020DA4D8
	cmp sb, #0x24
	bgt _020DA4D8
	ldr r0, [sp]
	cmp r0, #1
	bge _020DA4E0
_020DA4D8:
	mov r4, #0x40
	b _020DA4FC
_020DA4E0:
	ldr r1, [sp, #8]
	mov r0, r7
	mov r3, r1
	mov r2, r1
	add r5, r3, #1
	blx r8
	mov r6, r0
_020DA4FC:
	cmp sb, #0
	beq _020DA514
	mov r1, sb
	mvn r0, #0
	bl sub_020E2178
	str r0, [sp, #4]
_020DA514:
	mvn fp, #0
	b _020DA7D4
_020DA51C:
	cmp r4, #8
	bgt _020DA554
	cmp r4, #0
	addge pc, pc, r4, lsl #2
	b _020DA7D4
_020DA530: ; jump table
	b _020DA7D4 ; case 0
	b _020DA560 ; case 1
	; b _020DA60C
	.word 0xea000033
	b _020DA7D4 ; case 3
	; b _020DA648
	.word 0xea000040
	b _020DA7D4 ; case 5
	b _020DA7D4 ; case 6
	b _020DA7D4 ; case 7
	b _020DA688 ; case 8
_020DA554:
	cmp r4, #0x10
	beq _020DA688
	b _020DA7D4
_020DA560:
	.byte 0x00, 0x00, 0x56, 0xE3, 0x01, 0x00, 0x00, 0xBA, 0x80, 0x00, 0x56, 0xE3, 0x01, 0x00, 0x00, 0xBA
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x03, 0x00, 0x00, 0xEA, 0xB8, 0x02, 0x9F, 0xE5, 0x86, 0x10, 0xA0, 0xE1
	.byte 0xB1, 0x00, 0x90, 0xE1, 0x01, 0x0C, 0x00, 0xE2, 0x00, 0x00, 0x50, 0xE3, 0x08, 0x00, 0x00, 0x0A
	.byte 0x00, 0x10, 0xA0, 0xE3, 0x07, 0x00, 0xA0, 0xE1, 0x01, 0x20, 0xA0, 0xE1, 0x38, 0xFF, 0x2F, 0xE1
	.byte 0x00, 0x60, 0xA0, 0xE1, 0x08, 0x00, 0x9D, 0xE5, 0x01, 0x00, 0x80, 0xE2, 0x08, 0x00, 0x8D, 0xE5
	.byte 0x87, 0x00, 0x00, 0xEA, 0x2B, 0x00, 0x56, 0xE3, 0x06, 0x00, 0x00, 0x1A, 0x00, 0x10, 0xA0, 0xE3
	.byte 0x07, 0x00, 0xA0, 0xE1, 0x01, 0x20, 0xA0, 0xE1, 0x01, 0x50, 0x85, 0xE2, 0x38, 0xFF, 0x2F, 0xE1
	.byte 0x00, 0x60, 0xA0, 0xE1, 0x0A, 0x00, 0x00, 0xEA, 0x2D, 0x00, 0x56, 0xE3, 0x08, 0x00, 0x00, 0x1A
	.byte 0x00, 0x10, 0xA0, 0xE3, 0x07, 0x00, 0xA0, 0xE1, 0x01, 0x20, 0xA0, 0xE1, 0x01, 0x50, 0x85, 0xE2
	.byte 0x38, 0xFF, 0x2F, 0xE1, 0x00, 0x60, 0xA0, 0xE1, 0x34, 0x00, 0x9D, 0xE5, 0x01, 0x10, 0xA0, 0xE3
	.byte 0x00, 0x10, 0x80, 0xE5, 0x02, 0x40, 0xA0, 0xE3, 0x71, 0x00, 0x00, 0xEA, 0x00, 0x00, 0x59, 0xE3
	.byte 0x10, 0x00, 0x59, 0x13, 0x09, 0x00, 0x00, 0x1A, 0x30, 0x00, 0x56, 0xE3, 0x07, 0x00, 0x00, 0x1A
	.byte 0x00, 0x10, 0xA0, 0xE3, 0x07, 0x00, 0xA0, 0xE1, 0x01, 0x20, 0xA0, 0xE1, 0x04, 0x40, 0xA0, 0xE3
	.byte 0x01, 0x50, 0x85, 0xE2, 0x38, 0xFF, 0x2F, 0xE1, 0x00, 0x60, 0xA0, 0xE1, 0x64, 0x00, 0x00, 0xEA
	.byte 0x08, 0x40, 0xA0, 0xE3, 0x62, 0x00, 0x00, 0xEA, 0x58, 0x00, 0x56, 0xE3, 0x78, 0x00, 0x56, 0x13
	.byte 0x08, 0x00, 0x00, 0x1A, 0x00, 0x10, 0xA0, 0xE3, 0x07, 0x00, 0xA0, 0xE1, 0x01, 0x20, 0xA0, 0xE1
	.byte 0x10, 0x90, 0xA0, 0xE3, 0x08, 0x40, 0xA0, 0xE3, 0x01, 0x50, 0x85, 0xE2, 0x38, 0xFF, 0x2F, 0xE1
	.byte 0x00, 0x60, 0xA0, 0xE1, 0x56, 0x00, 0x00, 0xEA, 0x00, 0x00, 0x59, 0xE3, 0x08, 0x90, 0xA0, 0x03
	.byte 0x10, 0x40, 0xA0, 0xE3, 0x52, 0x00, 0x00, 0xEA
_020DA688:
	ldr r0, [sp, #4]
	cmp sb, #0
	moveq sb, #0xa
	cmp r0, #0
	bne _020DA6AC
	mov r0, fp
	mov r1, sb
	bl sub_020E2178
	str r0, [sp, #4]
_020DA6AC:
	cmp r6, #0
	blt _020DA6BC
	cmp r6, #0x80
	blt _020DA6C4
_020DA6BC:
	mov r0, #0
	b _020DA6D4
_020DA6C4:
	ldr r0, _020DA838 ; =0x020FE864
	mov r1, r6, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #8
_020DA6D4:
	cmp r0, #0
	beq _020DA6FC
	sub r6, r6, #0x30
	cmp r6, sb
	blt _020DA784
	cmp r4, #0x10
	moveq r4, #0x20
	movne r4, #0x40
	add r6, r6, #0x30
	b _020DA7D4
_020DA6FC:
	cmp r6, #0
	blt _020DA70C
	cmp r6, #0x80
	blt _020DA714
_020DA70C:
	mov r0, #0
	b _020DA724
_020DA714:
	ldr r0, _020DA838 ; =0x020FE864
	mov r1, r6, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #1
_020DA724:
	cmp r0, #0
	beq _020DA758
	cmp r6, #0
	blt _020DA73C
	cmp r6, #0x80
	blt _020DA744
_020DA73C:
	mov r0, r6
	b _020DA74C
_020DA744:
	ldr r0, _020DA83C ; =0x020FE7E4
	ldrb r0, [r0, r6]
_020DA74C:
	sub r0, r0, #0x37
	cmp r0, sb
	blt _020DA768
_020DA758:
	cmp r4, #0x10
	moveq r4, #0x20
	movne r4, #0x40
	b _020DA7D4
_020DA768:
	cmp r6, #0
	blt _020DA780
	cmp r6, #0x80
	bge _020DA780
	ldr r0, _020DA83C ; =0x020FE7E4
	ldrb r6, [r0, r6]
_020DA780:
	sub r6, r6, #0x37
_020DA784:
	ldr r0, [sp, #4]
	mov r4, #0x10
	cmp sl, r0
	ldrhi r0, [sp, #0x38]
	movhi r1, #1
	strhi r1, [r0]
	mul r0, sl, r0
	mov sl, r0
	sub r0, fp, r0
	cmp r6, r0
	ldrhi r0, [sp, #0x38]
	movhi r1, #1
	strhi r1, [r0]
	mov r1, #0
	mov r0, r7
	mov r2, r1
	add sl, sl, r6
	add r5, r5, #1
	blx r8
	mov r6, r0
_020DA7D4:
	ldr r0, [sp]
	cmp r5, r0
	bgt _020DA7F0
	cmp r6, fp
	beq _020DA7F0
	tst r4, #0x60
	beq _020DA51C
_020DA7F0:
	tst r4, #0x34
	bne _020DA808
	ldr r0, [sp, #0x30]
	mov sl, #0
	str sl, [r0]
	b _020DA81C
_020DA808:
	ldr r0, [sp, #8]
	sub r1, r5, #1
	add r1, r1, r0
	ldr r0, [sp, #0x30]
	str r1, [r0, #0]
_020DA81C:
	mov r0, r7
	mov r1, r6
	mov r2, #1
	blx r8
	mov r0, sl
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020DA838: .word 0x020FE864
_020DA83C: .word 0x020FE7E4
	arm_func_end sub_020DA458

	arm_func_start sub_020DA840
sub_020DA840: ; 0x020DA840
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x20
	ldr r4, [sp, #0x48]
	mov sb, r0
	ldr r0, [sp, #0x44]
	str r4, [sp, #0x48]
	mov r4, #0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	str r1, [sp]
	str r4, [r0, #0]
	mov r0, r4
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	mov r1, r4
	str r1, [r0, #0]
	ldr r0, [sp, #0x40]
	str r4, [sp, #0x18]
	mov sl, r2
	str r3, [sp, #4]
	mov r6, r4
	mov r7, r4
	str r0, [sp, #0x40]
	mov r5, #1
	bmi _020DA8C8
	cmp sb, #1
	beq _020DA8C8
	cmp sb, #0x24
	bgt _020DA8C8
	ldr r0, [sp]
	cmp r0, #1
	bge _020DA8D0
_020DA8C8:
	mov r5, #0x40
	b _020DA8E4
_020DA8D0:
	mov r0, r3
	mov r2, r4
	add r6, r1, #1
	blx sl
	mov r8, r0
_020DA8E4:
	cmp sb, #0
	beq _020DA908
	mvn r0, #0
	mov r1, r0
	mov r3, sb, asr #0x1f
	mov r2, sb
	bl sub_020E1ED4
	mov r7, r0
	str r1, [sp, #0xc]
_020DA908:
	mvn r0, #0
	str r0, [sp, #0x1c]
	mov r4, #0
	b _020DAC30
_020DA918:
	cmp r5, #8
	bgt _020DA950
	cmp r5, #0
	addge pc, pc, r5, lsl #2
	b _020DAC30
_020DA92C: ; jump table
	b _020DAC30 ; case 0
	b _020DA95C ; case 1
	; b _020DAA08
	.word 0xea000033
	b _020DAC30 ; case 3
	; b _020DAA44
	.word 0xea000040
	b _020DAC30 ; case 5
	b _020DAC30 ; case 6
	b _020DAC30 ; case 7
	b _020DAA84 ; case 8
_020DA950:
	cmp r5, #0x10
	beq _020DAA84
	b _020DAC30
_020DA95C:
	.byte 0x00, 0x00, 0x58, 0xE3
	.byte 0x01, 0x00, 0x00, 0xBA, 0x80, 0x00, 0x58, 0xE3, 0x01, 0x00, 0x00, 0xBA, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x03, 0x00, 0x00, 0xEA, 0x28, 0x03, 0x9F, 0xE5, 0x88, 0x10, 0xA0, 0xE1, 0xB1, 0x00, 0x90, 0xE1
	.byte 0x01, 0x0C, 0x00, 0xE2, 0x00, 0x00, 0x50, 0xE3, 0x08, 0x00, 0x00, 0x0A, 0x00, 0x10, 0xA0, 0xE3
	.byte 0x04, 0x00, 0x9D, 0xE5, 0x01, 0x20, 0xA0, 0xE1, 0x3A, 0xFF, 0x2F, 0xE1, 0x00, 0x80, 0xA0, 0xE1
	.byte 0x18, 0x00, 0x9D, 0xE5, 0x01, 0x00, 0x80, 0xE2, 0x18, 0x00, 0x8D, 0xE5, 0x9F, 0x00, 0x00, 0xEA
	.byte 0x2B, 0x00, 0x58, 0xE3, 0x06, 0x00, 0x00, 0x1A, 0x00, 0x10, 0xA0, 0xE3, 0x04, 0x00, 0x9D, 0xE5
	.byte 0x01, 0x20, 0xA0, 0xE1, 0x01, 0x60, 0x86, 0xE2, 0x3A, 0xFF, 0x2F, 0xE1, 0x00, 0x80, 0xA0, 0xE1
	.byte 0x0A, 0x00, 0x00, 0xEA, 0x2D, 0x00, 0x58, 0xE3, 0x08, 0x00, 0x00, 0x1A, 0x00, 0x10, 0xA0, 0xE3
	.byte 0x04, 0x00, 0x9D, 0xE5, 0x01, 0x20, 0xA0, 0xE1, 0x01, 0x60, 0x86, 0xE2, 0x3A, 0xFF, 0x2F, 0xE1
	.byte 0x00, 0x80, 0xA0, 0xE1, 0x44, 0x00, 0x9D, 0xE5, 0x01, 0x10, 0xA0, 0xE3, 0x00, 0x10, 0x80, 0xE5
	.byte 0x02, 0x50, 0xA0, 0xE3, 0x89, 0x00, 0x00, 0xEA, 0x00, 0x00, 0x59, 0xE3, 0x10, 0x00, 0x59, 0x13
	.byte 0x09, 0x00, 0x00, 0x1A, 0x30, 0x00, 0x58, 0xE3, 0x07, 0x00, 0x00, 0x1A, 0x00, 0x10, 0xA0, 0xE3
	.byte 0x04, 0x00, 0x9D, 0xE5, 0x01, 0x20, 0xA0, 0xE1, 0x04, 0x50, 0xA0, 0xE3, 0x01, 0x60, 0x86, 0xE2
	.byte 0x3A, 0xFF, 0x2F, 0xE1, 0x00, 0x80, 0xA0, 0xE1, 0x7C, 0x00, 0x00, 0xEA, 0x08, 0x50, 0xA0, 0xE3
	.byte 0x7A, 0x00, 0x00, 0xEA, 0x58, 0x00, 0x58, 0xE3, 0x78, 0x00, 0x58, 0x13, 0x08, 0x00, 0x00, 0x1A
	.byte 0x00, 0x10, 0xA0, 0xE3, 0x04, 0x00, 0x9D, 0xE5, 0x01, 0x20, 0xA0, 0xE1, 0x10, 0x90, 0xA0, 0xE3
	.byte 0x08, 0x50, 0xA0, 0xE3, 0x01, 0x60, 0x86, 0xE2, 0x3A, 0xFF, 0x2F, 0xE1, 0x00, 0x80, 0xA0, 0xE1
	.byte 0x6E, 0x00, 0x00, 0xEA, 0x00, 0x00, 0x59, 0xE3, 0x08, 0x90, 0xA0, 0x03, 0x10, 0x50, 0xA0, 0xE3
	.byte 0x6A, 0x00, 0x00, 0xEA
_020DAA84:
	ldr r1, [sp, #0xc]
	mov r0, #0
	cmp sb, #0
	moveq sb, #0xa
	cmp r1, r0
	cmpeq r7, r4
	bne _020DAABC
	ldr r0, [sp, #0x1c]
	mov r3, sb, asr #0x1f
	mov r1, r0
	mov r2, sb
	bl sub_020E1ED4
	mov r7, r0
	str r1, [sp, #0xc]
_020DAABC:
	cmp r8, #0
	blt _020DAACC
	cmp r8, #0x80
	blt _020DAAD4
_020DAACC:
	mov r0, #0
	b _020DAAE4
_020DAAD4:
	ldr r0, _020DACA4 ; =0x020FE864
	mov r1, r8, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #8
_020DAAE4:
	cmp r0, #0
	beq _020DAB0C
	sub r8, r8, #0x30
	cmp r8, sb
	blt _020DAB94
	cmp r5, #0x10
	moveq r5, #0x20
	movne r5, #0x40
	add r8, r8, #0x30
	b _020DAC30
_020DAB0C:
	cmp r8, #0
	blt _020DAB1C
	cmp r8, #0x80
	blt _020DAB24
_020DAB1C:
	mov r0, #0
	b _020DAB34
_020DAB24:
	ldr r0, _020DACA4 ; =0x020FE864
	mov r1, r8, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #1
_020DAB34:
	cmp r0, #0
	beq _020DAB68
	cmp r8, #0
	blt _020DAB4C
	cmp r8, #0x80
	blt _020DAB54
_020DAB4C:
	mov r0, r8
	b _020DAB5C
_020DAB54:
	ldr r0, _020DACA8 ; =0x020FE7E4
	ldrb r0, [r0, r8]
_020DAB5C:
	sub r0, r0, #0x37
	cmp r0, sb
	blt _020DAB78
_020DAB68:
	cmp r5, #0x10
	moveq r5, #0x20
	movne r5, #0x40
	b _020DAC30
_020DAB78:
	cmp r8, #0
	blt _020DAB90
	cmp r8, #0x80
	bge _020DAB90
	ldr r0, _020DACA8 ; =0x020FE7E4
	ldrb r8, [r0, r8]
_020DAB90:
	sub r8, r8, #0x37
_020DAB94:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	cmp r1, r0
	ldr r0, [sp, #0x10]
	mov r5, sb, asr #0x1f
	cmpeq r0, r7
	ldrhi r0, [sp, #0x48]
	movhi r1, #1
	strhi r1, [r0]
	umull r0, r1, r3, sb
	mla r1, r3, r5, r1
	ldr r3, [sp, #0x14]
	str r0, [sp, #0x10]
	mla r1, r3, sb, r1
	ldr r3, [sp, #0x1c]
	mov r2, r8, asr #0x1f
	sub r3, r3, r0
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x14]
	sbc r0, r0, r1
	cmp r2, r0
	cmpeq r8, r3
	ldrhi r0, [sp, #0x48]
	movhi r1, #1
	strhi r1, [r0]
	ldr r0, [sp, #0x10]
	mov r1, #0
	add r0, r0, r8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r5, #0x10
	adc r0, r0, r2
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	mov r2, r1
	add r6, r6, #1
	blx sl
	mov r8, r0
_020DAC30:
	ldr r0, [sp]
	cmp r6, r0
	bgt _020DAC50
	ldr r0, [sp, #0x1c]
	cmp r8, r0
	beq _020DAC50
	tst r5, #0x60
	beq _020DA918
_020DAC50:
	tst r5, #0x34
	bne _020DAC70
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r1, r0
	ldr r0, [sp, #0x40]
	b _020DAC80
_020DAC70:
	ldr r0, [sp, #0x18]
	sub r1, r6, #1
	add r1, r1, r0
	ldr r0, [sp, #0x40]
_020DAC80:
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	mov r1, r8
	mov r2, #1
	blx sl
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020DACA4: .word 0x020FE864
_020DACA8: .word 0x020FE7E4
	arm_func_end sub_020DA840

	arm_func_start sub_020DACAC
sub_020DACAC: ; 0x020DACAC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	mov lr, #0
	mov r0, r2
	mov r4, r1
	add r2, sp, #0x1c
	str r5, [sp, #0xc]
	str lr, [sp, #0x10]
	str r2, [sp]
	add r1, sp, #0x18
	str r1, [sp, #4]
	add ip, sp, #0x14
	ldr r2, _020DAD3C ; =sub_020D8930
	add r3, sp, #0xc
	sub r1, lr, #-0x7fffffff
	str ip, [sp, #8]
	bl sub_020DA458
	cmp r4, #0
	ldrne r1, [sp, #0x1c]
	addne r1, r5, r1
	strne r1, [r4]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _020DAD28
	ldr r0, _020DAD40 ; =0x021D0D40
	mov r1, #0x22
	str r1, [r0, #0]
	add sp, sp, #0x20
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020DAD28:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	rsbne r0, r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020DAD3C: .word sub_020D8930
_020DAD40: .word 0x021D0D40
	arm_func_end sub_020DACAC

	arm_func_start sub_020DAD44
sub_020DAD44: ; 0x020DAD44
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	mov lr, #0
	mov r0, r2
	mov r4, r1
	add r2, sp, #0x1c
	str r5, [sp, #0xc]
	str lr, [sp, #0x10]
	str r2, [sp]
	add r1, sp, #0x18
	str r1, [sp, #4]
	add ip, sp, #0x14
	ldr r2, _020DAE04 ; =sub_020D8930
	add r3, sp, #0xc
	sub r1, lr, #-0x7fffffff
	str ip, [sp, #8]
	bl sub_020DA458
	cmp r4, #0
	ldrne r1, [sp, #0x1c]
	addne r1, r5, r1
	strne r1, [r4]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _020DADD0
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bne _020DADC0
	mvn r1, #0x80000000
	cmp r0, r1
	bhi _020DADD0
_020DADC0:
	cmp r2, #0
	beq _020DADF4
	cmp r0, #-0x80000000
	bls _020DADF4
_020DADD0:
	ldr r0, [sp, #0x18]
	ldr r1, _020DAE08 ; =0x021D0D40
	mov r2, #0x22
	cmp r0, #0
	movne r0, #-0x80000000
	str r2, [r1, #0]
	add sp, sp, #0x20
	mvneq r0, #0x80000000
	ldmia sp!, {r3, r4, r5, pc}
_020DADF4:
	cmp r2, #0
	rsbne r0, r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020DAE04: .word sub_020D8930
_020DAE08: .word 0x021D0D40
	arm_func_end sub_020DAD44

	arm_func_start sub_020DAE0C
sub_020DAE0C: ; 0x020DAE0C
	ldr ip, _020DAE1C ; =sub_020DAD44
	mov r1, #0
	mov r2, #0xa
	bx ip
	; .align 2, 0
_020DAE1C: .word sub_020DAD44
	arm_func_end sub_020DAE0C

	arm_func_start sub_020DAE20
sub_020DAE20: ; 0x020DAE20
	cmp r0, #0
	beq _020DAE38
	ldr r3, [r0, #4]
	mov r2, r3, lsl #0x16
	mov r2, r2, lsr #0x1d
	bne _020DAE40
_020DAE38:
	mov r0, #0
	bx lr
_020DAE40:
	mov r2, r3, lsl #0x14
	mov r2, r2, lsr #0x1e
	beq _020DAE60
	cmp r2, #1
	beq _020DAE88
	cmp r2, #2
	moveq r1, #1
	b _020DAE8C
_020DAE60:
	cmp r1, #0
	ble _020DAE78
	bic r2, r3, #0xc00
	orr r2, r2, #0x800
	str r2, [r0, #4]
	b _020DAE8C
_020DAE78:
	biclt r2, r3, #0xc00
	orrlt r2, r2, #0x400
	strlt r2, [r0, #4]
	b _020DAE8C
_020DAE88:
	mvn r1, #0
_020DAE8C:
	mov r0, r1
	bx lr
	arm_func_end sub_020DAE20

	arm_func_start sub_020DAE94
sub_020DAE94: ; 0x020DAE94
	ldr ip, _020DAEA0 ; =sub_020D50B8
	mov r2, r2, lsl #1
	bx ip
	; .align 2, 0
_020DAEA0: .word sub_020D50B8
	arm_func_end sub_020DAE94

	arm_func_start sub_020DAEA4
sub_020DAEA4: ; 0x020DAEA4
	cmp r2, #0
	beq _020DAEC4
_020DAEAC:
	ldrh r3, [r0]
	cmp r3, r1
	bxeq lr
	add r0, r0, #2
	sub r2, r2, #1
	bne _020DAEAC
_020DAEC4:
	mov r0, #0
	bx lr
	arm_func_end sub_020DAEA4

	arm_func_start sub_020DAECC
sub_020DAECC: ; 0x020DAECC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldrh r3, [r0, #2]
	mov r4, #0
	mov r5, #1
	mov lr, r2
	strb r5, [sp]
	strb r4, [sp, #1]
	strb r4, [sp, #2]
	strb r4, [sp, #3]
	strb r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	cmp r3, #0x25
	add ip, r0, #2
	bne _020DAF28
	add r0, sp, #0
	strh r3, [sp, #6]
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add sp, sp, #0x10
	add r0, ip, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020DAF28:
	mov r2, #2
	mov r0, r4
	mov r5, r2
	mov r6, r4
	mov r7, #1
_020DAF3C:
	mov r8, r7
	cmp r3, #0x2b
	bgt _020DAF6C
	bge _020DAF94
	cmp r3, #0x23
	bgt _020DAFC4
	cmp r3, #0x20
	blt _020DAFC4
	beq _020DAF9C
	cmp r3, #0x23
	beq _020DAFAC
	b _020DAFC4
_020DAF6C:
	cmp r3, #0x30
	bgt _020DAFC4
	cmp r3, #0x2d
	blt _020DAFC4
	beq _020DAF8C
	cmp r3, #0x30
	beq _020DAFB4
	b _020DAFC4
_020DAF8C:
	strb r6, [sp]
	b _020DAFC8
_020DAF94:
	strb r7, [sp, #1]
	b _020DAFC8
_020DAF9C:
	ldrb r4, [sp, #1]
	cmp r4, #1
	strneb r5, [sp, #1]
	b _020DAFC8
_020DAFAC:
	strb r7, [sp, #3]
	b _020DAFC8
_020DAFB4:
	ldrb r4, [sp]
	cmp r4, #0
	strneb r2, [sp]
	b _020DAFC8
_020DAFC4:
	mov r8, r0
_020DAFC8:
	cmp r8, #0
	ldrneh r3, [ip, #2]!
	bne _020DAF3C
	cmp r3, #0x2a
	bne _020DB010
	ldr r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #0]
	ldr r0, [r0, #-4]
	str r0, [sp, #8]
	cmp r0, #0
	bge _020DB008
	rsb r0, r0, #0
	mov r2, #0
	strb r2, [sp]
	str r0, [sp, #8]
_020DB008:
	ldrh r3, [ip, #2]!
	b _020DB054
_020DB010:
	mov r2, #0
	ldr r5, _020DB438 ; =0x020FEA9C
	mov r0, #0xa
	b _020DB034
_020DB020:
	ldr r4, [sp, #8]
	sub r3, r3, #0x30
	mla r6, r4, r0, r3
	ldrh r3, [ip, #2]!
	str r6, [sp, #8]
_020DB034:
	cmp r3, #0x80
	movhs r4, r2
	bhs _020DB04C
	mov r4, r3, lsl #1
	ldrh r4, [r5, r4]
	and r4, r4, #8
_020DB04C:
	cmp r4, #0
	bne _020DB020
_020DB054:
	ldr r2, [sp, #8]
	ldr r0, _020DB43C ; =0x000001FD
	cmp r2, r0
	ble _020DB084
	ldr r1, _020DB440 ; =0x0000FFFF
	add r0, sp, #0
	strh r1, [sp, #6]
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add sp, sp, #0x10
	add r0, ip, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020DB084:
	cmp r3, #0x2e
	bne _020DB10C
	ldrh r3, [ip, #2]!
	mov r0, #1
	strb r0, [sp, #2]
	cmp r3, #0x2a
	bne _020DB0C8
	ldr r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #0]
	ldr r0, [r0, #-4]
	ldrh r3, [ip, #2]!
	str r0, [sp, #0xc]
	cmp r0, #0
	movlt r0, #0
	strltb r0, [sp, #2]
	b _020DB10C
_020DB0C8:
	mov r1, #0
	ldr r4, _020DB438 ; =0x020FEA9C
	mov r0, #0xa
	b _020DB0EC
_020DB0D8:
	ldr r2, [sp, #0xc]
	sub r3, r3, #0x30
	mla r5, r2, r0, r3
	ldrh r3, [ip, #2]!
	str r5, [sp, #0xc]
_020DB0EC:
	cmp r3, #0x80
	movhs r2, r1
	bhs _020DB104
	mov r2, r3, lsl #1
	ldrh r2, [r4, r2]
	and r2, r2, #8
_020DB104:
	cmp r2, #0
	bne _020DB0D8
_020DB10C:
	cmp r3, #0x6c
	mov r0, #1
	bgt _020DB144
	cmp r3, #0x68
	blt _020DB138
	beq _020DB160
	cmp r3, #0x6a
	beq _020DB1AC
	cmp r3, #0x6c
	beq _020DB17C
	b _020DB1D0
_020DB138:
	cmp r3, #0x4c
	beq _020DB1A0
	b _020DB1D0
_020DB144:
	cmp r3, #0x74
	bgt _020DB154
	beq _020DB1B8
	b _020DB1D0
_020DB154:
	cmp r3, #0x7a
	beq _020DB1C4
	b _020DB1D0
_020DB160:
	ldrh r1, [ip, #2]
	mov r2, #2
	strb r2, [sp, #4]
	cmp r1, #0x68
	streqb r0, [sp, #4]
	ldreqh r3, [ip, #2]!
	b _020DB1D4
_020DB17C:
	ldrh r1, [ip, #2]
	mov r2, #3
	strb r2, [sp, #4]
	cmp r1, #0x6c
	bne _020DB1D4
	mov r1, #4
	strb r1, [sp, #4]
	ldrh r3, [ip, #2]!
	b _020DB1D4
_020DB1A0:
	mov r1, #9
	strb r1, [sp, #4]
	b _020DB1D4
_020DB1AC:
	mov r1, #6
	strb r1, [sp, #4]
	b _020DB1D4
_020DB1B8:
	mov r1, #8
	strb r1, [sp, #4]
	b _020DB1D4
_020DB1C4:
	mov r1, #7
	strb r1, [sp, #4]
	b _020DB1D4
_020DB1D0:
	mov r0, #0
_020DB1D4:
	cmp r0, #0
	ldrneh r3, [ip, #2]!
	strh r3, [sp, #6]
	cmp r3, #0x61
	bgt _020DB228
	bge _020DB30C
	cmp r3, #0x47
	bgt _020DB21C
	sub r0, r3, #0x41
	addpl pc, pc, r0, lsl #2
	b _020DB418
_020DB200: ; jump table
	b _020DB30C ; case 0
	b _020DB418 ; case 1
	b _020DB418 ; case 2
	b _020DB418 ; case 3
	b _020DB354 ; case 4
	b _020DB2D4 ; case 5
	b _020DB344 ; case 6
_020DB21C:
	cmp r3, #0x58
	beq _020DB29C
	b _020DB418
_020DB228:
	cmp r3, #0x63
	bgt _020DB238
	beq _020DB3B4
	b _020DB418
_020DB238:
	sub r0, r3, #0x64
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _020DB418
_020DB248: ; jump table
	b _020DB29C ; case 0
	b _020DB354 ; case 1
	b _020DB2D4 ; case 2
	b _020DB344 ; case 3
	b _020DB418 ; case 4
	b _020DB29C ; case 5
	b _020DB418 ; case 6
	b _020DB418 ; case 7
	b _020DB418 ; case 8
	b _020DB418 ; case 9
	b _020DB404 ; case 10
	b _020DB29C ; case 11
	b _020DB390 ; case 12
	b _020DB418 ; case 13
	b _020DB418 ; case 14
	b _020DB3E0 ; case 15
	b _020DB418 ; case 16
	b _020DB29C ; case 17
	b _020DB418 ; case 18
	b _020DB418 ; case 19
	b _020DB29C ; case 20
_020DB29C:
	ldrb r0, [sp, #4]
	cmp r0, #9
	moveq r0, #4
	streqb r0, [sp, #4]
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
	beq _020DB420
	ldrb r0, [sp]
	cmp r0, #2
	moveq r0, #1
	streqb r0, [sp]
	b _020DB420
_020DB2D4:
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	ldreq r0, _020DB440 ; =0x0000FFFF
	streqh r0, [sp, #6]
	beq _020DB420
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #6
	streq r0, [sp, #0xc]
	b _020DB420
_020DB30C:
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #0xd
	streq r0, [sp, #0xc]
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	cmpne r0, #1
	ldreq r0, _020DB440 ; =0x0000FFFF
	streqh r0, [sp, #6]
	b _020DB420
_020DB344:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
_020DB354:
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	cmpne r0, #1
	ldreq r0, _020DB440 ; =0x0000FFFF
	streqh r0, [sp, #6]
	beq _020DB420
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #6
	streq r0, [sp, #0xc]
	b _020DB420
_020DB390:
	mov r3, #3
	mov r2, #1
	mov r1, #0x78
	mov r0, #8
	strb r3, [sp, #4]
	strb r2, [sp, #3]
	strh r1, [sp, #6]
	str r0, [sp, #0xc]
	b _020DB420
_020DB3B4:
	ldrb r1, [sp, #4]
	cmp r1, #3
	moveq r0, #5
	streqb r0, [sp, #4]
	beq _020DB420
	ldrb r0, [sp, #2]
	cmp r0, #0
	cmpeq r1, #0
	ldrne r0, _020DB440 ; =0x0000FFFF
	strneh r0, [sp, #6]
	b _020DB420
_020DB3E0:
	ldrb r0, [sp, #4]
	cmp r0, #3
	moveq r0, #5
	streqb r0, [sp, #4]
	beq _020DB420
	cmp r0, #0
	ldrne r0, _020DB440 ; =0x0000FFFF
	strneh r0, [sp, #6]
	b _020DB420
_020DB404:
	ldrb r0, [sp, #4]
	cmp r0, #9
	moveq r0, #4
	streqb r0, [sp, #4]
	b _020DB420
_020DB418:
	ldr r0, _020DB440 ; =0x0000FFFF
	strh r0, [sp, #6]
_020DB420:
	add r0, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add r0, ip, #2
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020DB438: .word 0x020FEA9C
_020DB43C: .word 0x000001FD
_020DB440: .word 0x0000FFFF
	arm_func_end sub_020DAECC

	arm_func_start sub_020DB444
sub_020DB444: ; 0x020DB444
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sl, r0
	mov r0, #0
	mov r5, r1
	str r0, [sp, #0xc]
	ldr r7, [sp, #0x4c]
	mov r6, r0
	strh r0, [r5, #-2]!
	ldrb r0, [sp, #0x43]
	str r1, [sp]
	ldrh r8, [sp, #0x46]
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldrb fp, [sp, #0x41]
	str r0, [sp, #8]
	cmpeq r7, #0
	bne _020DB4B8
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020DB4A4
	cmp r8, #0x6f
	beq _020DB4B8
_020DB4A4:
	add sp, sp, #0x10
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DB4B8:
	cmp r8, #0x69
	bgt _020DB4E0
	bge _020DB514
	cmp r8, #0x58
	bgt _020DB4D4
	beq _020DB540
	b _020DB548
_020DB4D4:
	cmp r8, #0x64
	beq _020DB514
	b _020DB548
_020DB4E0:
	cmp r8, #0x6f
	bgt _020DB4F4
	moveq r4, #8
	moveq fp, #0
	b _020DB548
_020DB4F4:
	cmp r8, #0x78
	bgt _020DB548
	cmp r8, #0x75
	blt _020DB548
	beq _020DB534
	cmp r8, #0x78
	beq _020DB540
	b _020DB548
_020DB514:
	cmp sl, #0
	mov r4, #0xa
	bge _020DB548
	mov r0, #1
	cmp sl, #-0x80000000
	rsbne sl, sl, #0
	str r0, [sp, #0xc]
	b _020DB548
_020DB534:
	mov r4, #0xa
	mov fp, #0
	b _020DB548
_020DB540:
	mov r4, #0x10
	mov fp, #0
_020DB548:
	mov r0, sl
	mov r1, r4
	bl sub_020E2178
	mov sb, r1
	mov r0, sl
	mov r1, r4
	bl sub_020E2178
	cmp sb, #0xa
	mov sl, r0
	addlt sb, sb, #0x30
	blt _020DB580
	cmp r8, #0x78
	addeq sb, sb, #0x57
	addne sb, sb, #0x37
_020DB580:
	cmp sl, #0
	strh sb, [r5, #-2]!
	add r6, r6, #1
	bne _020DB548
	cmp r4, #8
	bne _020DB5B4
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrneh r0, [r5]
	cmpne r0, #0x30
	movne r0, #0x30
	strneh r0, [r5, #-2]!
	addne r6, r6, #1
_020DB5B4:
	ldrb r0, [sp, #0x40]
	cmp r0, #2
	bne _020DB5E8
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #8]
	cmp r0, #0
	cmpeq fp, #0
	subne r7, r7, #1
	cmp r4, #0x10
	bne _020DB5E8
	ldr r0, [sp, #4]
	cmp r0, #0
	subne r7, r7, #2
_020DB5E8:
	ldr r0, [sp]
	ldr r1, _020DB690 ; =0x000001FD
	sub r0, r0, r5
	add r0, r0, r0, lsr #31
	add r0, r7, r0, asr #1
	cmp r0, r1
	addgt sp, sp, #0x10
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	cmp r6, r7
	bge _020DB630
	mov r0, #0x30
_020DB620:
	add r6, r6, #1
	cmp r6, r7
	strh r0, [r5, #-2]!
	blt _020DB620
_020DB630:
	cmp r4, #0x10
	bne _020DB64C
	ldr r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x30
	strneh r8, [r5, #-2]
	strneh r0, [r5, #-4]!
_020DB64C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movne r0, #0x2d
	strneh r0, [r5, #-2]!
	bne _020DB67C
	cmp fp, #1
	moveq r0, #0x2b
	streqh r0, [r5, #-2]!
	beq _020DB67C
	cmp fp, #2
	moveq r0, #0x20
	streqh r0, [r5, #-2]!
_020DB67C:
	mov r0, r5
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DB690: .word 0x000001FD
	arm_func_end sub_020DB444

	arm_func_start sub_020DB694
sub_020DB694: ; 0x020DB694
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sb, r1
	mov r1, #0
	mov sl, r0
	mov r8, r2
	mov r0, r1
	strh r0, [r8, #-2]!
	ldr r0, [sp, #0x58]
	cmp sb, #0
	str r0, [sp, #0x14]
	ldrb r0, [sp, #0x4f]
	cmpeq sl, #0
	str r2, [sp]
	str r0, [sp, #4]
	ldrh r0, [sp, #0x52]
	str r1, [sp, #0x18]
	mov fp, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0xc]
	ldrb r0, [sp, #0x4d]
	str r0, [sp, #0x10]
	ldreq r0, [sp, #0x14]
	cmpeq r0, #0
	bne _020DB72C
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020DB718
	ldr r0, [sp, #8]
	cmp r0, #0x6f
	beq _020DB72C
_020DB718:
	add sp, sp, #0x1c
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DB72C:
	ldr r0, [sp, #8]
	cmp r0, #0x69
	bgt _020DB758
	bge _020DB788
	cmp r0, #0x58
	bgt _020DB74C
	beq _020DB7DC
	b _020DB7E8
_020DB74C:
	cmp r0, #0x64
	beq _020DB788
	b _020DB7E8
_020DB758:
	cmp r0, #0x6f
	bgt _020DB768
	beq _020DB7BC
	b _020DB7E8
_020DB768:
	cmp r0, #0x78
	bgt _020DB7E8
	cmp r0, #0x75
	blt _020DB7E8
	beq _020DB7CC
	cmp r0, #0x78
	beq _020DB7DC
	b _020DB7E8
_020DB788:
	sub r0, sl, #0
	sbc r0, sb, #0
	mov r7, #0xa
	mov r6, #0
	bge _020DB7E8
	cmp sb, #-0x80000000
	cmpeq sl, r6
	beq _020DB7B0
	rsb sl, sl, #0
	rsc sb, sb, #0
_020DB7B0:
	mov r0, #1
	str r0, [sp, #0x18]
	b _020DB7E8
_020DB7BC:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #8
	b _020DB7E8
_020DB7CC:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #0xa
	b _020DB7E8
_020DB7DC:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #0x10
_020DB7E8:
	mov r4, #0
_020DB7EC:
	mov r0, sl
	mov r1, sb
	mov r2, r7
	mov r3, r6
	bl sub_020E1EE0
	mov r5, r0
	mov r0, sl
	mov r1, sb
	mov r2, r7
	mov r3, r6
	bl sub_020E1ED4
	mov sl, r0
	cmp r5, #0xa
	mov sb, r1
	addlt r0, r5, #0x30
	blt _020DB83C
	ldr r0, [sp, #8]
	cmp r0, #0x78
	addeq r0, r5, #0x57
	addne r0, r5, #0x37
_020DB83C:
	strh r0, [r8, #-2]!
	mov r0, #0
	cmp sb, r0
	cmpeq sl, r4
	add fp, fp, #1
	bne _020DB7EC
	cmp r6, #0
	cmpeq r7, #8
	bne _020DB87C
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrneh r0, [r8]
	cmpne r0, #0x30
	movne r0, #0x30
	strneh r0, [r8, #-2]!
	addne fp, fp, #1
_020DB87C:
	ldrb r0, [sp, #0x4c]
	cmp r0, #2
	bne _020DB8CC
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	cmpeq r0, #0
	ldrne r0, [sp, #0x14]
	subne r0, r0, #1
	strne r0, [sp, #0x14]
	cmp r6, #0
	cmpeq r7, #0x10
	bne _020DB8CC
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrne r0, [sp, #0x14]
	subne r0, r0, #2
	strne r0, [sp, #0x14]
_020DB8CC:
	ldr r0, [sp]
	ldr r2, _020DB990 ; =0x000001FD
	sub r0, r0, r8
	add r1, r0, r0, lsr #31
	ldr r0, [sp, #0x14]
	add r0, r0, r1, asr #1
	cmp r0, r2
	addgt sp, sp, #0x1c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldr r0, [sp, #0x14]
	cmp fp, r0
	bge _020DB920
	mov r1, #0x30
_020DB90C:
	ldr r0, [sp, #0x14]
	add fp, fp, #1
	cmp fp, r0
	strh r1, [r8, #-2]!
	blt _020DB90C
_020DB920:
	cmp r6, #0
	cmpeq r7, #0x10
	bne _020DB948
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020DB948
	ldr r0, [sp, #8]
	mov r1, #0x30
	strh r0, [r8, #-2]
	strh r1, [r8, #-4]!
_020DB948:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	movne r0, #0x2d
	strneh r0, [r8, #-2]!
	bne _020DB97C
	ldr r0, [sp, #0x10]
	cmp r0, #1
	moveq r0, #0x2b
	streqh r0, [r8, #-2]!
	beq _020DB97C
	cmp r0, #2
	moveq r0, #0x20
	streqh r0, [r8, #-2]!
_020DB97C:
	mov r0, r8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DB990: .word 0x000001FD
	arm_func_end sub_020DB694

	arm_func_start sub_020DB994
sub_020DB994: ; 0x020DB994
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x44
	ldr r7, [sp, #0x80]
	ldr r0, _020DBD00 ; =0x000001FD
	mov r8, r2
	cmp r7, r0
	ldrh r6, [sp, #0x7a]
	ldrb r5, [sp, #0x77]
	ldrb r4, [sp, #0x75]
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x6c]
	addgt sp, sp, #0x44
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	addgt sp, sp, #0x10
	bxgt lr
	mov sl, #0
	mov sb, #0x20
	add r0, sp, #8
	add r3, sp, #0xc
	strb sl, [sp, #8]
	strh sb, [sp, #0xa]
	bl sub_020DF108
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	bl sub_020DE084
	mov r2, r0
	mov r0, sl
	mov r3, r1
	mov r1, r0
	bl sub_020E0F94
	bne _020DBA3C
	sub r4, r8, #0xc
	ldr r1, _020DBD04 ; =0x02101828
	mov r0, r4
	bl sub_020DCE80
	add sp, sp, #0x44
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020DBA3C:
	ldrb r0, [sp, #0x11]
	cmp r0, #0x49
	bne _020DBABC
	ldrsb r0, [sp, #0xc]
	cmp r0, #0
	beq _020DBA80
	cmp r6, #0x41
	sub r4, r8, #0xa
	bne _020DBA70
	ldr r1, _020DBD08 ; =0x02101834
	mov r0, r4
	bl sub_020DCE80
	b _020DBAA8
_020DBA70:
	ldr r1, _020DBD0C ; =0x02101840
	mov r0, r4
	bl sub_020DCE80
	b _020DBAA8
_020DBA80:
	cmp r6, #0x41
	sub r4, r8, #8
	bne _020DBA9C
	ldr r1, _020DBD10 ; =0x0210184C
	mov r0, r4
	bl sub_020DCE80
	b _020DBAA8
_020DBA9C:
	ldr r1, _020DBD14 ; =0x02101854
	mov r0, r4
	bl sub_020DCE80
_020DBAA8:
	add sp, sp, #0x44
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020DBABC:
	cmp r0, #0x4e
	bne _020DBB38
	ldrsb r0, [sp, #0xc]
	cmp r0, #0
	beq _020DBAFC
	cmp r6, #0x41
	sub r4, r8, #0xa
	bne _020DBAEC
	ldr r1, _020DBD18 ; =0x0210185C
	mov r0, r4
	bl sub_020DCE80
	b _020DBB24
_020DBAEC:
	ldr r1, _020DBD1C ; =0x02101868
	mov r0, r4
	bl sub_020DCE80
	b _020DBB24
_020DBAFC:
	cmp r6, #0x41
	sub r4, r8, #8
	bne _020DBB18
	ldr r1, _020DBD20 ; =0x02101874
	mov r0, r4
	bl sub_020DCE80
	b _020DBB24
_020DBB18:
	ldr r1, _020DBD24 ; =0x0210187C
	mov r0, r4
	bl sub_020DCE80
_020DBB24:
	add sp, sp, #0x44
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020DBB38:
	mov r3, sl
	mov r1, #1
	mov r0, #0x64
	add sb, sp, #0x68
	strb r1, [sp, #0x34]
	strb r1, [sp, #0x35]
	strb r3, [sp, #0x36]
	strb r3, [sp, #0x37]
	strb r3, [sp, #0x38]
	str r3, [sp, #0x3c]
	str r1, [sp, #0x40]
	strh r0, [sp, #0x3a]
_020DBB68:
	rsb r1, r3, #7
	ldrsb r2, [sb, r3]
	ldrsb r0, [sb, r1]
	strb r0, [sb, r3]
	add r3, r3, #1
	strb r2, [sb, r1]
	cmp r3, #4
	blt _020DBB68
	ldrb r0, [sp, #0x69]
	ldrb r1, [sp, #0x68]
	ldr sb, _020DBD28 ; =0x000007FF
	mov r0, r0, lsl #0x11
	orr r1, r0, r1, lsl #25
	add r0, sp, #0x34
	and lr, sb, r1, lsr #21
	sub ip, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	rsb r0, sb, #0x400
	mov r1, r8
	add r0, lr, r0
	ldmia ip, {r2, r3}
	bl sub_020DB444
	cmp r6, #0x61
	moveq r1, #0x70
	movne r1, #0x50
	strh r1, [r0, #-2]!
	mov r1, r7, lsl #2
	mov lr, r7
	cmp r7, #1
	add r8, r1, #0xb
	add ip, sp, #0x68
	blt _020DBC78
	mov sb, #0x30
_020DBBF0:
	cmp r8, #0x40
	bge _020DBC60
	ldrb r1, [ip, r8, asr #3]
	and r2, r8, #7
	rsb r3, r2, #7
	mov r2, r1, asr r3
	sub sl, r8, #4
	bic r1, r8, #7
	bic sl, sl, #7
	cmp r1, sl
	add sl, ip, r8, asr #3
	and r1, r2, #0xff
	beq _020DBC34
	ldrb r2, [sl, #-1]
	mov r2, r2, lsl #8
	orr r1, r1, r2, asr r3
	and r1, r1, #0xff
_020DBC34:
	and r1, r1, #0xf
	cmp r1, #0xa
	addlo r1, r1, #0x30
	andlo r1, r1, #0xff
	blo _020DBC64
	cmp r6, #0x61
	addeq r1, r1, #0x57
	andeq r1, r1, #0xff
	addne r1, r1, #0x37
	andne r1, r1, #0xff
	b _020DBC64
_020DBC60:
	mov r1, sb
_020DBC64:
	sub lr, lr, #1
	cmp lr, #1
	strh r1, [r0, #-2]!
	sub r8, r8, #4
	bge _020DBBF0
_020DBC78:
	cmp r7, #0
	cmpeq r5, #0
	movne r1, #0x2e
	strneh r1, [r0, #-2]!
	mov r1, #0x31
	strh r1, [r0, #-2]
	cmp r6, #0x61
	moveq r1, #0x78
	movne r1, #0x58
	strh r1, [r0, #-4]!
	mov r1, #0x30
	strh r1, [r0, #-2]!
	ldrsb r1, [sp, #0xc]
	cmp r1, #0
	movne r1, #0x2d
	strneh r1, [r0, #-2]!
	addne sp, sp, #0x44
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	addne sp, sp, #0x10
	bxne lr
	cmp r4, #1
	moveq r1, #0x2b
	streqh r1, [r0, #-2]!
	addeq sp, sp, #0x44
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r4, #2
	moveq r1, #0x20
	streqh r1, [r0, #-2]!
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DBD00: .word 0x000001FD
_020DBD04: .word 0x02101828
_020DBD08: .word 0x02101834
_020DBD0C: .word 0x02101840
_020DBD10: .word 0x0210184C
_020DBD14: .word 0x02101854
_020DBD18: .word 0x0210185C
_020DBD1C: .word 0x02101868
_020DBD20: .word 0x02101874
_020DBD24: .word 0x0210187C
_020DBD28: .word 0x000007FF
	arm_func_end sub_020DB994

	arm_func_start sub_020DBD2C
sub_020DBD2C: ; 0x020DBD2C
	stmfd sp!, {r4, lr}
	cmp r1, #0
	bge _020DBD54
_020DBD38:
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #1
	strb r1, [r0, #4]
	mov r1, #0x30
	strb r1, [r0, #5]
	ldmia sp!, {r4, pc}
_020DBD54:
	ldrb lr, [r0, #4]
	cmp r1, lr
	ldmgeia sp!, {r4, pc}
	add ip, r0, #5
	add r2, ip, r1
	add r2, r2, #1
	ldrsb r3, [r2, #-1]!
	sub r3, r3, #0x30
	mov r3, r3, lsl #0x18
	mov r3, r3, asr #0x18
	cmp r3, #5
	bne _020DBDB4
	add ip, ip, lr
_020DBD88:
	sub ip, ip, #1
	cmp ip, r2
	bls _020DBDA0
	ldrsb r3, [ip]
	cmp r3, #0x30
	beq _020DBD88
_020DBDA0:
	cmp ip, r2
	ldreqsb r3, [r2, #-1]
	andeq r4, r3, #1
	movne r4, #1
	b _020DBDBC
_020DBDB4:
	movgt r4, #1
	movle r4, #0
_020DBDBC:
	cmp r1, #0
	beq _020DBE18
	mov ip, #0
	mov lr, #1
_020DBDCC:
	ldrsb r3, [r2, #-1]!
	sub r3, r3, #0x30
	add r3, r3, r4
	mov r3, r3, lsl #0x18
	mov r3, r3, asr #0x18
	cmp r3, #9
	movgt r4, lr
	movle r4, ip
	cmp r4, #0
	bne _020DBDFC
	cmp r3, #0
	bne _020DBE04
_020DBDFC:
	sub r1, r1, #1
	b _020DBE10
_020DBE04:
	add r3, r3, #0x30
	strb r3, [r2]
	b _020DBE18
_020DBE10:
	cmp r1, #0
	bne _020DBDCC
_020DBE18:
	cmp r4, #0
	beq _020DBE40
	ldrsh r3, [r0, #2]
	mov r2, #1
	mov r1, #0x31
	add r3, r3, #1
	strh r3, [r0, #2]
	strb r2, [r0, #4]
	strb r1, [r0, #5]
	ldmia sp!, {r4, pc}
_020DBE40:
	cmp r1, #0
	beq _020DBD38
	strb r1, [r0, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DBD2C

	arm_func_start sub_020DBE50
sub_020DBE50: ; 0x020DBE50
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x22c
	mov sl, r0
	add r0, sp, #0x250
	ldr r7, [sp, #0x268]
	ldr r3, _020DC470 ; =0x000001FD
	ldrh r6, [r0, #0x12]
	cmp r7, r3
	ldrb r5, [sp, #0x25f]
	ldrb r4, [sp, #0x25d]
	mov r8, r1
	mov sb, r2
	addgt sp, sp, #0x22c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	mov ip, #0
	mov fp, #0x20
	add r0, sp, #0
	add r3, sp, #4
	mov r1, sl
	mov r2, r8
	strb ip, [sp]
	strh fp, [sp, #2]
	bl sub_020DF108
	ldrb r0, [sp, #8]
	add r1, sp, #9
	add r0, r1, r0
	b _020DBEE4
_020DBECC:
	ldrb r2, [sp, #8]
	ldrsh r1, [sp, #6]
	sub r2, r2, #1
	add r1, r1, #1
	strb r2, [sp, #8]
	strh r1, [sp, #6]
_020DBEE4:
	ldrb r1, [sp, #8]
	cmp r1, #1
	bls _020DBEFC
	ldrsb r1, [r0, #-1]!
	cmp r1, #0x30
	beq _020DBECC
_020DBEFC:
	ldrb r0, [sp, #9]
	cmp r0, #0x30
	beq _020DBF1C
	cmp r0, #0x49
	beq _020DBF28
	cmp r0, #0x4e
	beq _020DBFE0
	b _020DC08C
_020DBF1C:
	mov r0, #0
	strh r0, [sp, #6]
	b _020DC08C
_020DBF28:
	mov r2, #0
	mov r0, sl
	mov r1, r8
	mov r3, r2
	bl sub_020E0EF8
	bhs _020DBF88
	cmp r6, #0x80
	sub r4, sb, #0xa
	movhs r0, #0
	bhs _020DBF60
	ldr r0, _020DC474 ; =0x020FEA9C
	mov r1, r6, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #0x200
_020DBF60:
	cmp r0, #0
	beq _020DBF78
	ldr r1, _020DC478 ; =0x02101834
	mov r0, r4
	bl sub_020DCE80
	b _020DBFCC
_020DBF78:
	ldr r1, _020DC47C ; =0x02101840
	mov r0, r4
	bl sub_020DCE80
	b _020DBFCC
_020DBF88:
	cmp r6, #0x80
	sub r4, sb, #8
	movhs r0, #0
	bhs _020DBFA8
	ldr r0, _020DC474 ; =0x020FEA9C
	mov r1, r6, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #0x200
_020DBFA8:
	cmp r0, #0
	beq _020DBFC0
	ldr r1, _020DC480 ; =0x0210184C
	mov r0, r4
	bl sub_020DCE80
	b _020DBFCC
_020DBFC0:
	ldr r1, _020DC484 ; =0x02101854
	mov r0, r4
	bl sub_020DCE80
_020DBFCC:
	add sp, sp, #0x22c
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DBFE0:
	ldrsb r0, [sp, #4]
	cmp r0, #0
	beq _020DC034
	cmp r6, #0x80
	sub r4, sb, #0xa
	movhs r0, #0
	bhs _020DC00C
	ldr r0, _020DC474 ; =0x020FEA9C
	mov r1, r6, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #0x200
_020DC00C:
	cmp r0, #0
	beq _020DC024
	ldr r1, _020DC488 ; =0x0210185C
	mov r0, r4
	bl sub_020DCE80
	b _020DC078
_020DC024:
	ldr r1, _020DC48C ; =0x02101868
	mov r0, r4
	bl sub_020DCE80
	b _020DC078
_020DC034:
	cmp r6, #0x80
	sub r4, sb, #8
	movhs r0, #0
	bhs _020DC054
	ldr r0, _020DC474 ; =0x020FEA9C
	mov r1, r6, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #0x200
_020DC054:
	cmp r0, #0
	beq _020DC06C
	ldr r1, _020DC490 ; =0x02101874
	mov r0, r4
	bl sub_020DCE80
	b _020DC078
_020DC06C:
	ldr r1, _020DC494 ; =0x0210187C
	mov r0, r4
	bl sub_020DCE80
_020DC078:
	add sp, sp, #0x22c
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DC08C:
	ldrb r1, [sp, #8]
	ldrsh r2, [sp, #6]
	add r0, sp, #0x200
	sub r1, r1, #1
	add r0, r0, #0x2a
	add r1, r2, r1
	sub r8, r0, #1
	strh r1, [sp, #6]
	mov r0, #0
	strb r0, [r8]
	cmp r6, #0x65
	bgt _020DC0E8
	bge _020DC174
	cmp r6, #0x47
	bgt _020DC434
	cmp r6, #0x45
	blt _020DC434
	beq _020DC174
	cmp r6, #0x46
	beq _020DC2C0
	cmp r6, #0x47
	beq _020DC100
	b _020DC434
_020DC0E8:
	cmp r6, #0x66
	bgt _020DC0F8
	beq _020DC2C0
	b _020DC434
_020DC0F8:
	cmp r6, #0x67
	bne _020DC434
_020DC100:
	ldrb r0, [sp, #8]
	cmp r0, r7
	ble _020DC118
	add r0, sp, #4
	mov r1, r7
	bl sub_020DBD2C
_020DC118:
	ldrsh r2, [sp, #6]
	mvn r0, #3
	cmp r2, r0
	blt _020DC130
	cmp r2, r7
	blt _020DC150
_020DC130:
	cmp r5, #0
	ldreqb r0, [sp, #8]
	subne r7, r7, #1
	subeq r7, r0, #1
	cmp r6, #0x67
	moveq r6, #0x65
	movne r6, #0x45
	b _020DC174
_020DC150:
	cmp r5, #0
	addne r0, r2, #1
	subne r7, r7, r0
	bne _020DC2C0
	ldrb r1, [sp, #8]
	add r0, r2, #1
	sub r7, r1, r0
	movmi r7, #0
	b _020DC2C0
_020DC174:
	ldrb r0, [sp, #8]
	add r1, r7, #1
	cmp r0, r1
	ble _020DC18C
	add r0, sp, #4
	bl sub_020DBD2C
_020DC18C:
	ldrsh lr, [sp, #6]
	mov fp, #0x2b
	mov sl, #0
	cmp lr, #0
	rsblt lr, lr, #0
	movlt fp, #0x2d
	ldr r3, _020DC498 ; =0x66666667
	mov r0, #0xa
	b _020DC1E0
_020DC1B0:
	mov r1, lr, lsr #0x1f
	smull r2, ip, r3, lr
	add ip, r1, ip, asr #2
	smull r1, r2, r0, ip
	sub ip, lr, r1
	add r1, ip, #0x30
	strb r1, [r8, #-1]!
	mov r2, lr
	smull r1, lr, r3, r2
	mov r1, r2, lsr #0x1f
	add lr, r1, lr, asr #2
	add sl, sl, #1
_020DC1E0:
	cmp lr, #0
	bne _020DC1B0
	cmp sl, #2
	blt _020DC1B0
	add r0, sp, #0x2a
	strb fp, [r8, #-1]
	strb r6, [r8, #-2]!
	sub r1, r0, r8
	ldr r0, _020DC470 ; =0x000001FD
	add r1, r1, r7
	cmp r1, r0
	addgt sp, sp, #0x22c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldrb r1, [sp, #8]
	add r0, r7, #1
	cmp r1, r0
	bge _020DC250
	add r0, r7, #2
	sub r0, r0, r1
	sub r1, r0, #1
	beq _020DC250
	mov r0, #0x30
_020DC244:
	strb r0, [r8, #-1]!
	sub r1, r1, #1
	bne _020DC244
_020DC250:
	ldrb r1, [sp, #8]
	add r0, sp, #9
	add r2, r0, r1
	sub r1, r1, #1
	beq _020DC274
_020DC264:
	ldrsb r0, [r2, #-1]!
	sub r1, r1, #1
	strb r0, [r8, #-1]!
	bne _020DC264
_020DC274:
	cmp r7, #0
	cmpeq r5, #0
	movne r0, #0x2e
	strneb r0, [r8, #-1]!
	ldrb r0, [sp, #9]
	strb r0, [r8, #-1]!
	ldrsb r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r8, #-1]!
	bne _020DC434
	cmp r4, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _020DC434
	cmp r4, #2
	moveq r0, #0x20
	streqb r0, [r8, #-1]!
	b _020DC434
_020DC2C0:
	ldrsh r3, [sp, #6]
	ldrb r2, [sp, #8]
	sub r0, r2, r3
	sub r1, r0, #1
	movmi r1, #0
	cmp r1, r7
	ble _020DC300
	sub r1, r1, r7
	add r0, sp, #4
	sub r1, r2, r1
	bl sub_020DBD2C
	ldrsh r3, [sp, #6]
	ldrb r2, [sp, #8]
	sub r0, r2, r3
	sub r1, r0, #1
	movmi r1, #0
_020DC300:
	add r0, r3, #1
	movmi r0, #0
	ldr r3, _020DC470 ; =0x000001FD
	add r6, r0, r1
	cmp r6, r3
	addgt sp, sp, #0x22c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	add r3, sp, #9
	sub r6, r7, r1
	cmp r6, #0
	add r2, r3, r2
	mov sl, #0
	ble _020DC354
	mov r3, #0x30
_020DC344:
	add sl, sl, #1
	cmp sl, r6
	strb r3, [r8, #-1]!
	blt _020DC344
_020DC354:
	mov r6, #0
	b _020DC368
_020DC35C:
	ldrsb r3, [r2, #-1]!
	add r6, r6, #1
	strb r3, [r8, #-1]!
_020DC368:
	cmp r6, r1
	ldrltb r3, [sp, #8]
	cmplt r6, r3
	blt _020DC35C
	cmp r6, r1
	bge _020DC394
	mov r3, #0x30
_020DC384:
	add r6, r6, #1
	cmp r6, r1
	strb r3, [r8, #-1]!
	blt _020DC384
_020DC394:
	cmp r7, #0
	cmpeq r5, #0
	movne r1, #0x2e
	strneb r1, [r8, #-1]!
	cmp r0, #0
	beq _020DC3FC
	ldrb r1, [sp, #8]
	mov r5, #0
	sub r1, r0, r1
	cmp r1, #0
	ble _020DC3DC
	mov r3, #0x30
_020DC3C4:
	strb r3, [r8, #-1]!
	ldrb r1, [sp, #8]
	add r5, r5, #1
	sub r1, r0, r1
	cmp r5, r1
	blt _020DC3C4
_020DC3DC:
	cmp r5, r0
	bge _020DC404
_020DC3E4:
	ldrsb r1, [r2, #-1]!
	add r5, r5, #1
	cmp r5, r0
	strb r1, [r8, #-1]!
	blt _020DC3E4
	b _020DC404
_020DC3FC:
	mov r0, #0x30
	strb r0, [r8, #-1]!
_020DC404:
	ldrsb r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r8, #-1]!
	bne _020DC434
	cmp r4, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _020DC434
	cmp r4, #2
	moveq r0, #0x20
	streqb r0, [r8, #-1]!
_020DC434:
	mov r0, r8
	bl sub_020D8B60
	sub r1, sb, r0, lsl #1
	mov r0, r8
	sub r4, r1, #2
	bl sub_020D8B60
	mov r2, r0
	mov r0, r4
	mov r1, r8
	bl sub_020D4FB8
	mov r0, r4
	add sp, sp, #0x22c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DC470: .word 0x000001FD
_020DC474: .word 0x020FEA9C
_020DC478: .word 0x02101834
_020DC47C: .word 0x02101840
_020DC480: .word 0x0210184C
_020DC484: .word 0x02101854
_020DC488: .word 0x0210185C
_020DC48C: .word 0x02101868
_020DC490: .word 0x02101874
_020DC494: .word 0x0210187C
_020DC498: .word 0x66666667
	arm_func_end sub_020DBE50

	arm_func_start sub_020DC49C
sub_020DC49C: ; 0x020DC49C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x430
	mov r3, #0x20
	mov fp, r2
	strh r3, [sp, #0x1c]
	ldrh r2, [fp]
	mov sb, r0
	mov r8, r1
	cmp r2, #0
	mov r4, #0
	beq _020DCD6C
_020DC4CC:
	mov r0, fp
	mov r1, #0x25
	bl sub_020DCEA0
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _020DC520
	mov r0, fp
	bl sub_020DCE64
	mov r2, r0
	add r4, r4, r2
	beq _020DCD6C
	mov r0, r8
	mov r1, fp
	blx sb
	cmp r0, #0
	bne _020DCD6C
	add sp, sp, #0x430
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DC520:
	sub r0, r0, fp
	add r0, r0, r0, lsr #31
	mov r2, r0, asr #1
	add r4, r4, r2
	beq _020DC558
	mov r0, r8
	mov r1, fp
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020DC558:
	add r1, sp, #0x400
	ldr r0, [sp, #0xc]
	add r1, r1, #0x64
	add r2, sp, #0x20
	bl sub_020DAECC
	ldrh r1, [sp, #0x26]
	mov fp, r0
	cmp r1, #0x61
	bgt _020DC5C8
	bge _020DC934
	cmp r1, #0x47
	bgt _020DC5BC
	sub r0, r1, #0x41
	addpl pc, pc, r0, lsl #2
	b _020DC5B0
_020DC594: ; jump table
	b _020DC934 ; case 0
	b _020DCBD8 ; case 1
	b _020DCBD8 ; case 2
	b _020DCBD8 ; case 3
	b _020DC8C4 ; case 4
	b _020DC8C4 ; case 5
	b _020DC8C4 ; case 6
_020DC5B0:
	cmp r1, #0x25
	beq _020DCBC4
	b _020DCBD8
_020DC5BC:
	cmp r1, #0x58
	beq _020DC788
	b _020DCBD8
_020DC5C8:
	cmp r1, #0x75
	bgt _020DC630
	sub r0, r1, #0x64
	addpl pc, pc, r0, lsl #2
	b _020DC624
_020DC5DC: ; jump table
	b _020DC64C ; case 0
	b _020DC8C4 ; case 1
	b _020DC8C4 ; case 2
	b _020DC8C4 ; case 3
	b _020DCBD8 ; case 4
	b _020DC64C ; case 5
	b _020DCBD8 ; case 6
	b _020DCBD8 ; case 7
	b _020DCBD8 ; case 8
	b _020DCBD8 ; case 9
	b _020DCAE0 ; case 10
	b _020DC788 ; case 11
	b _020DCBD8 ; case 12
	b _020DCBD8 ; case 13
	b _020DCBD8 ; case 14
	b _020DC9A4 ; case 15
	b _020DCBD8 ; case 16
	b _020DC788 ; case 17
_020DC624:
	cmp r1, #0x63
	beq _020DCB6C
	b _020DCBD8
_020DC630:
	cmp r1, #0x78
	bgt _020DC640
	beq _020DC788
	b _020DCBD8
_020DC640:
	ldr r0, _020DCD80 ; =0x0000FFFF
	cmp r1, r0
	b _020DCBD8
_020DC64C:
	ldrb r0, [sp, #0x24]
	cmp r0, #3
	bne _020DC66C
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC704
_020DC66C:
	cmp r0, #4
	bne _020DC694
	ldr r1, [sp, #0x464]
	add r2, r1, #8
	str r2, [sp, #0x464]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020DC704
_020DC694:
	cmp r0, #6
	bne _020DC6BC
	ldr r1, [sp, #0x464]
	add r2, r1, #8
	str r2, [sp, #0x464]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020DC704
_020DC6BC:
	cmp r0, #7
	bne _020DC6D8
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC704
_020DC6D8:
	cmp r0, #8
	bne _020DC6F4
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC704
_020DC6F4:
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
_020DC704:
	cmp r0, #2
	moveq r1, sl, lsl #0x10
	moveq sl, r1, asr #0x10
	cmp r0, #4
	cmpne r0, #6
	add r0, sp, #0x20
	bne _020DC74C
	sub r5, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5, #0]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x430
	bl sub_020DB694
	mov r6, r0
	beq _020DCBD8
	b _020DC770
_020DC74C:
	sub r5, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	add r1, sp, #0x430
	mov r0, sl
	ldmia r5, {r2, r3}
	bl sub_020DB444
	mov r6, r0
	beq _020DCBD8
_020DC770:
	add r0, sp, #0x400
	add r0, r0, #0x2e
	sub r0, r0, r6
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
	b _020DCC24
_020DC788:
	ldrb r0, [sp, #0x24]
	cmp r0, #3
	bne _020DC7A8
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC840
_020DC7A8:
	cmp r0, #4
	bne _020DC7D0
	ldr r1, [sp, #0x464]
	add r2, r1, #8
	str r2, [sp, #0x464]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020DC840
_020DC7D0:
	cmp r0, #6
	bne _020DC7F8
	ldr r1, [sp, #0x464]
	add r2, r1, #8
	str r2, [sp, #0x464]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020DC840
_020DC7F8:
	cmp r0, #7
	bne _020DC814
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC840
_020DC814:
	cmp r0, #8
	bne _020DC830
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC840
_020DC830:
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
_020DC840:
	cmp r0, #2
	moveq r1, sl, lsl #0x10
	moveq sl, r1, lsr #0x10
	cmp r0, #4
	cmpne r0, #6
	add r0, sp, #0x20
	bne _020DC888
	sub r5, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5, #0]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x430
	bl sub_020DB694
	mov r6, r0
	beq _020DCBD8
	b _020DC8AC
_020DC888:
	sub r5, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	add r1, sp, #0x430
	mov r0, sl
	ldmia r5, {r2, r3}
	bl sub_020DB444
	mov r6, r0
	beq _020DCBD8
_020DC8AC:
	add r0, sp, #0x400
	add r0, r0, #0x2e
	sub r0, r0, r6
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
	b _020DCC24
_020DC8C4:
	ldrb r0, [sp, #0x24]
	cmp r0, #9
	ldrne r0, [sp, #0x464]
	addne r0, r0, #8
	strne r0, [sp, #0x464]
	bne _020DC8E8
	ldr r0, [sp, #0x464]
	add r0, r0, #8
	str r0, [sp, #0x464]
_020DC8E8:
	ldr r7, [r0, #-8]
	ldr r6, [r0, #-4]
	add r0, sp, #0x20
	sub r5, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5, #0]
	mov r0, r7
	mov r1, r6
	add r2, sp, #0x430
	bl sub_020DBE50
	mov r6, r0
	beq _020DCBD8
	add r0, sp, #0x400
	add r0, r0, #0x2e
	sub r0, r0, r6
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
	b _020DCC24
_020DC934:
	ldrb r0, [sp, #0x24]
	cmp r0, #9
	ldrne r0, [sp, #0x464]
	addne r0, r0, #8
	strne r0, [sp, #0x464]
	bne _020DC958
	ldr r0, [sp, #0x464]
	add r0, r0, #8
	str r0, [sp, #0x464]
_020DC958:
	ldr r7, [r0, #-8]
	ldr r6, [r0, #-4]
	add r0, sp, #0x20
	sub r5, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5, #0]
	mov r0, r7
	mov r1, r6
	add r2, sp, #0x430
	bl sub_020DB994
	mov r6, r0
	beq _020DCBD8
	add r0, sp, #0x400
	add r0, r0, #0x2e
	sub r0, r0, r6
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
	b _020DCC24
_020DC9A4:
	ldrb r0, [sp, #0x24]
	cmp r0, #5
	bne _020DCA40
	ldr r0, [sp, #0x464]
	add r0, r0, #4
	str r0, [sp, #0x464]
	ldr r6, [r0, #-4]
	ldrb r0, [sp, #0x23]
	cmp r6, #0
	ldreq r6, _020DCD84 ; =0x02101884
	cmp r0, #0
	beq _020DC9F8
	ldrh r1, [r6], #2
	ldrb r0, [sp, #0x22]
	and r7, r1, #0xff
	cmp r0, #0
	beq _020DCC24
	ldr r0, [sp, #0x2c]
	cmp r7, r0
	movgt r7, r0
	b _020DCC24
_020DC9F8:
	ldrb r0, [sp, #0x22]
	cmp r0, #0
	beq _020DCA30
	ldr r7, [sp, #0x2c]
	mov r0, r6
	mov r2, r7
	mov r1, #0
	bl sub_020DAEA4
	cmp r0, #0
	beq _020DCC24
	sub r0, r0, r6
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
	b _020DCC24
_020DCA30:
	mov r0, r6
	bl sub_020DCE64
	mov r7, r0
	b _020DCC24
_020DCA40:
	ldr r0, [sp, #0x464]
	add r0, r0, #4
	str r0, [sp, #0x464]
	ldr r5, [r0, #-4]
	ldrb r0, [sp, #0x23]
	cmp r5, #0
	ldreq r5, _020DCD88 ; =0x02101888
	cmp r0, #0
	beq _020DCA88
	ldrh r1, [r6]
	ldrb r0, [sp, #0x22]
	and r6, r1, #0xff
	cmp r0, #0
	beq _020DCAC0
	ldr r0, [sp, #0x2c]
	cmp r6, r0
	movgt r6, r0
	b _020DCAC0
_020DCA88:
	ldrb r0, [sp, #0x22]
	cmp r0, #0
	beq _020DCAB4
	ldr r6, [sp, #0x2c]
	mov r0, r5
	mov r2, r6
	mov r1, #0
	bl sub_020D5138
	cmp r0, #0
	subne r6, r0, r5
	b _020DCAC0
_020DCAB4:
	mov r0, r5
	bl sub_020D8B60
	mov r6, r0
_020DCAC0:
	add r0, sp, #0x30
	mov r1, r5
	mov r2, r6
	bl sub_020D4FB8
	mov r7, r0
	bmi _020DCBD8
	add r6, sp, #0x30
	b _020DCC24
_020DCAE0:
	ldr r1, [sp, #0x464]
	ldrb r0, [sp, #0x24]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr r6, [r1, #-4]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020DCD60
_020DCB00: ; jump table
	b _020DCB24 ; case 0
	b _020DCD60 ; case 1
	b _020DCB2C ; case 2
	b _020DCB34 ; case 3
	b _020DCB5C ; case 4
	b _020DCD60 ; case 5
	b _020DCB3C ; case 6
	b _020DCB4C ; case 7
	b _020DCB54 ; case 8
_020DCB24:
	str r4, [r6, #0]
	b _020DCD60
_020DCB2C:
	strh r4, [r6]
	b _020DCD60
_020DCB34:
	str r4, [r6, #0]
	b _020DCD60
_020DCB3C:
	str r4, [r6, #0]
	mov r0, r4, asr #0x1f
	str r0, [r6, #4]
	b _020DCD60
_020DCB4C:
	str r4, [r6, #0]
	b _020DCD60
_020DCB54:
	str r4, [r6, #0]
	b _020DCD60
_020DCB5C:
	str r4, [r6, #0]
	mov r0, r4, asr #0x1f
	str r0, [r6, #4]
	b _020DCD60
_020DCB6C:
	ldrb r0, [sp, #0x24]
	add r6, sp, #0x30
	cmp r0, #5
	bne _020DCB98
	ldr r0, [sp, #0x464]
	mov r7, #1
	add r0, r0, #4
	str r0, [sp, #0x464]
	ldr r0, [r0, #-4]
	strh r0, [r6]
	b _020DCC24
_020DCB98:
	ldr r0, [sp, #0x464]
	add r1, sp, #0x18
	add r0, r0, #4
	str r0, [sp, #0x464]
	ldr r3, [r0, #-4]
	mov r0, r6
	mov r2, #1
	strb r3, [sp, #0x18]
	bl sub_020D4F34
	mov r7, r0
	b _020DCC24
_020DCBC4:
	mov r0, #0x25
	strh r0, [sp, #0x30]
	add r6, sp, #0x30
	mov r7, #1
	b _020DCC24
_020DCBD8:
	ldr r0, [sp, #0xc]
	bl sub_020DCE64
	mov r5, r0
	beq _020DCC10
	ldr r1, [sp, #0xc]
	mov r0, r8
	mov r2, r5
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020DCC10:
	add sp, sp, #0x430
	add r0, r4, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DCC24:
	ldrb r0, [sp, #0x20]
	mov r5, r7
	cmp r0, #0
	beq _020DCCD4
	cmp r0, #2
	moveq r1, #0x30
	movne r1, #0x20
	strh r1, [sp, #0x1c]
	ldrh r0, [r6]
	cmp r0, #0x2b
	cmpne r0, #0x2d
	cmpne r0, #0x20
	bne _020DCC90
	cmp r1, #0x30
	bne _020DCC90
	mov r0, r8
	mov r1, r6
	mov r2, #1
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r6, r6, #2
	sub r7, r7, #1
_020DCC90:
	ldr r0, [sp, #0x28]
	cmp r5, r0
	bge _020DCCD4
_020DCC9C:
	mov r0, r8
	add r1, sp, #0x1c
	mov r2, #1
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x28]
	add r5, r5, #1
	cmp r5, r0
	blt _020DCC9C
_020DCCD4:
	cmp r7, #0
	beq _020DCD04
	mov r0, r8
	mov r1, r6
	mov r2, r7
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020DCD04:
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	bne _020DCD5C
	ldr r0, [sp, #0x28]
	cmp r5, r0
	bge _020DCD5C
	mov r7, #0x20
_020DCD20:
	mov r0, r8
	add r1, sp, #0x1a
	mov r2, #1
	strh r7, [sp, #0x1a]
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x28]
	add r5, r5, #1
	cmp r5, r0
	blt _020DCD20
_020DCD5C:
	add r4, r4, r5
_020DCD60:
	ldrh r0, [fp]
	cmp r0, #0
	bne _020DC4CC
_020DCD6C:
	mov r0, r4
	add sp, sp, #0x430
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DCD80: .word 0x0000FFFF
_020DCD84: .word 0x02101884
_020DCD88: .word 0x02101888
	arm_func_end sub_020DC49C

	arm_func_start sub_020DCD8C
sub_020DCD8C: ; 0x020DCD8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r3, [r4, #8]
	mov r5, r2
	ldr r2, [r4, #4]
	add r0, r3, r5
	cmp r0, r2
	ldr r0, [r4, #0]
	subhi r5, r2, r3
	mov r2, r5
	add r0, r0, r3, lsl #1
	bl sub_020DAE94
	ldr r1, [r4, #8]
	add r1, r1, r5
	str r1, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020DCD8C

	arm_func_start sub_020DCDCC
sub_020DCDCC: ; 0x020DCDCC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r3, sp, #0x10
	bic r3, r3, #3
	ldr r2, [sp, #0x10]
	add r3, r3, #4
	bl sub_020DCDF4
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020DCDCC

	arm_func_start sub_020DCDF4
sub_020DCDF4: ; 0x020DCDF4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r1
	mov ip, #0
	ldr r0, _020DCE60 ; =sub_020DCD8C
	add r1, sp, #0
	str r5, [sp]
	str r4, [sp, #4]
	str ip, [sp, #8]
	bl sub_020DC49C
	cmp r0, #0
	addlt sp, sp, #0xc
	ldmltia sp!, {r4, r5, pc}
	cmp r0, r4
	bhs _020DCE48
	mov r1, r0, lsl #1
	mov r2, #0
	add sp, sp, #0xc
	strh r2, [r5, r1]
	ldmia sp!, {r4, r5, pc}
_020DCE48:
	mov r1, #0
	add r0, r5, r4, lsl #1
	strh r1, [r0, #-2]
	sub r0, r1, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020DCE60: .word sub_020DCD8C
	arm_func_end sub_020DCDF4

	arm_func_start sub_020DCE64
sub_020DCE64: ; 0x020DCE64
	mvn r2, #0
_020DCE68:
	ldrh r1, [r0], #2
	add r2, r2, #1
	cmp r1, #0
	bne _020DCE68
	mov r0, r2
	bx lr
	arm_func_end sub_020DCE64

	arm_func_start sub_020DCE80
sub_020DCE80: ; 0x020DCE80
	mov r3, r0
_020DCE84:
	ldrh r2, [r1], #2
	mov ip, r3
	strh r2, [r3], #2
	ldrh r2, [ip]
	cmp r2, #0
	bne _020DCE84
	bx lr
	arm_func_end sub_020DCE80

	arm_func_start sub_020DCEA0
sub_020DCEA0: ; 0x020DCEA0
	ldrh r2, [r0], #2
	cmp r2, #0
	beq _020DCEC4
_020DCEAC:
	cmp r2, r1
	subeq r0, r0, #2
	bxeq lr
	ldrh r2, [r0], #2
	cmp r2, #0
	bne _020DCEAC
_020DCEC4:
	cmp r1, #0
	movne r0, #0
	subeq r0, r0, #2
	bx lr
	arm_func_end sub_020DCEA0

	arm_func_start sub_020DCED4
sub_020DCED4: ; 0x020DCED4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x80
	ldr r8, [sp, #0xb4]
	ldr r6, [sp, #0xac]
	ldr r0, [sp, #0xb0]
	bic sb, r8, #0x80000000
	orr r1, sb, r0
	ldr r7, [sp, #0xa8]
	bic r4, r6, #0x80000000
	addeq sp, sp, #0x80
	moveq r0, #0
	ldreq r1, _020DD480 ; =0x3FF00000
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, _020DD484 ; =0x7FF00000
	cmp r4, r1
	bgt _020DCF44
	bne _020DCF2C
	cmp r7, #0
	bne _020DCF44
_020DCF2C:
	ldr r1, _020DD484 ; =0x7FF00000
	cmp sb, r1
	bgt _020DCF44
	bne _020DCF68
	cmp r0, #0
	beq _020DCF68
_020DCF44:
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	bl sub_020DFC6C
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DCF68:
	cmp r6, #0
	mov r5, #0
	bge _020DCFD0
	ldr r1, _020DD488 ; =0x43400000
	cmp sb, r1
	movge r5, #2
	bge _020DCFD0
	sub r1, r1, #0x3500000
	cmp sb, r1
	blt _020DCFD0
	ldr r1, _020DD48C ; =0xFFFFFC01
	add r1, r1, sb, asr #20
	cmp r1, #0x14
	ble _020DCFB8
	rsb r2, r1, #0x34
	mov r1, r0, lsr r2
	cmp r0, r1, lsl r2
	andeq r1, r1, #1
	rsbeq r5, r1, #2
	b _020DCFD0
_020DCFB8:
	cmp r0, #0
	rsbeq r2, r1, #0x14
	moveq r1, sb, asr r2
	cmpeq sb, r1, lsl r2
	andeq r1, r1, #1
	rsbeq r5, r1, #2
_020DCFD0:
	cmp r0, #0
	bne _020DD12C
	ldr r1, _020DD484 ; =0x7FF00000
	cmp sb, r1
	bne _020DD084
	add r0, r4, #0x100000
	add r0, r0, #-0x40000000
	orr r0, r0, r7
	bne _020DD018
	ldr r0, [sp, #0xb0]
	ldr r1, [sp, #0xb4]
	mov r2, r0
	mov r3, r1
	bl sub_020E074C
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD018:
	sub r0, r1, #0x40000000
	cmp r4, r0
	blt _020DD048
	cmp r8, #0
	ldrge r0, [sp, #0xb0]
	ldrge r1, [sp, #0xb4]
	movlt r0, #0
	add sp, sp, #0x80
	movlt r1, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD048:
	cmp r8, #0
	mov r0, #0
	addge sp, sp, #0x80
	movge r1, r0
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addge sp, sp, #0x10
	bxge lr
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	mov r1, r0
	bl sub_020E074C
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD084:
	sub r0, r1, #0x40000000
	cmp sb, r0
	bne _020DD0D0
	cmp r8, #0
	ldrge r0, [sp, #0xa8]
	ldrge r1, [sp, #0xac]
	addge sp, sp, #0x80
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addge sp, sp, #0x10
	bxge lr
	ldr r2, [sp, #0xa8]
	ldr r3, [sp, #0xac]
	sub r1, r1, #0x40000000
	mov r0, #0
	bl sub_020E2374
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD0D0:
	cmp r8, #0x40000000
	bne _020DD0FC
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	mov r2, r0
	mov r3, r1
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD0FC:
	ldr r0, _020DD490 ; =0x3FE00000
	cmp r8, r0
	bne _020DD12C
	cmp r6, #0
	blt _020DD12C
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	bl sub_020E0598
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD12C:
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	bl sub_020DE084
	str r0, [sp, #0x70]
	str r1, [sp, #0x74]
	cmp r7, #0
	bne _020DD230
	ldr r0, _020DD484 ; =0x7FF00000
	cmp r4, r0
	cmpne r4, #0
	subne r0, r0, #0x40000000
	cmpne r4, r0
	bne _020DD230
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	str r2, [sp, #0x78]
	str r3, [sp, #0x7c]
	cmp r8, #0
	bge _020DD18C
	ldr r1, _020DD480 ; =0x3FF00000
	mov r0, #0
	bl sub_020E2374
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
_020DD18C:
	cmp r6, #0
	bge _020DD218
	add r0, r4, #0x100000
	add r0, r0, #-0x40000000
	orr r0, r0, r5
	bne _020DD1F4
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	mov r2, r0
	mov r3, r1
	bl sub_020E074C
	mov r4, r0
	mov r5, r1
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	mov r2, r0
	mov r3, r1
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r5
	bl sub_020E2374
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	b _020DD218
_020DD1F4:
	cmp r5, #1
	bne _020DD218
	mov r0, #0
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	mov r1, r0
	bl sub_020E074C
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
_020DD218:
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD230:
	mov r0, r6, asr #0x1f
	add r7, r0, #1
	orr r0, r7, r5
	bne _020DD268
	ldr r0, _020DD494 ; =0x021015B0
	ldr r1, _020DD498 ; =0x021D0D40
	ldr r0, [r0, #0]
	mov r2, #0x21
	str r2, [r1, #0]
	bl sub_020E16BC
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD268:
	ldr r3, _020DD49C ; =0x41E00000
	cmp sb, r3
	ble _020DD56C
	add r0, r3, #0x2100000
	cmp sb, r0
	ble _020DD2D8
	ldr r1, _020DD4A0 ; =0x3FEFFFFF
	cmp r4, r1
	bgt _020DD2AC
	cmp r8, #0
	mov r0, #0
	addlt r1, r1, #0x40000001
	add sp, sp, #0x80
	movge r1, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD2AC:
	add r0, r1, #1
	cmp r4, r0
	blt _020DD2D8
	cmp r8, #0
	mov r0, #0
	addgt r1, r1, #0x40000001
	add sp, sp, #0x80
	movle r1, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD2D8:
	ldr r2, _020DD4A0 ; =0x3FEFFFFF
	cmp r4, r2
	bge _020DD304
	cmp r8, #0
	mov r0, #0
	addlt r1, r2, #0x40000001
	add sp, sp, #0x80
	movge r1, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD304:
	add r0, r2, #1
	cmp r4, r0
	ble _020DD330
	cmp r8, #0
	mov r0, #0
	addgt r1, r2, #0x40000001
	add sp, sp, #0x80
	movle r1, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DD330:
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	add r3, r2, #1
	mov r2, #0
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	bl sub_020E0234
	mov r6, r1
	mov r4, r0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	ldr r1, _020DD4A4 ; =0x3FD00000
	mov r0, #0
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4A8 ; =0x55555555
	sub r1, r0, #0x15800000
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, #0
	ldr r1, _020DD490 ; =0x3FE00000
	bl sub_020E074C
	mov r2, r0
	mov r0, r4
	mov r3, r1
	mov r1, r6
	bl sub_020E0234
	mov r6, r0
	mov r8, r1
	mov r0, #0x60000000
	ldr r1, _020DD4AC ; =0x3FF71547
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_020E0234
	mov r4, r0
	mov sb, r1
	ldr r0, _020DD4B0 ; =0xF85DDF44
	ldr r1, _020DD4B4 ; =0x3E54AE0B
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_020E0234
	mov fp, r0
	mov sl, r1
	ldr r0, _020DD4B8 ; =0x652B82FE
	ldr r1, _020DD4AC ; =0x3FF71547
	mov r2, r6
	mov r3, r8
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, fp
	mov r1, sl
	bl sub_020E074C
	mov r6, r0
	mov r8, r1
	mov r0, r4
	mov r1, sb
	mov r2, r6
	mov r3, r8
	bl sub_020DFC6C
	mov r2, r4
	mov r3, sb
	str r1, [sp, #0x5c]
	mov r0, #0
	str r0, [sp, #0x58]
	bl sub_020E074C
	mov r2, r0
	mov r0, r6
	mov r3, r1
	mov r1, r8
	bl sub_020E074C
	mov r4, r0
	mov r8, r1
	b _020DDAC8
	; .align 2, 0
_020DD480: .word 0x3FF00000
_020DD484: .word 0x7FF00000
_020DD488: .word 0x43400000
_020DD48C: .word 0xFFFFFC01
_020DD490: .word 0x3FE00000
_020DD494: .word 0x021015B0
_020DD498: .word 0x021D0D40
_020DD49C: .word 0x41E00000
_020DD4A0: .word 0x3FEFFFFF
_020DD4A4: .word 0x3FD00000
_020DD4A8: .word 0x55555555
_020DD4AC: .word 0x3FF71547
_020DD4B0: .word 0xF85DDF44
_020DD4B4: .word 0x3E54AE0B
_020DD4B8: .word 0x652B82FE
_020DD4BC: .word 0x0003988E
_020DD4C0: .word 0x000BB67A
_020DD4C4: .word 0x020FECAC
_020DD4C8: .word 0x4A454EEF
_020DD4CC: .word 0x3FCA7E28
_020DD4D0: .word 0x93C9DB65
_020DD4D4: .word 0x3FCD864A
_020DD4D8: .word 0xA91D4101
_020DD4DC: .word 0x3FD17460
_020DD4E0: .word 0x518F264D
_020DD4E4: .word 0x3FD55555
_020DD4E8: .word 0xDB6FABFF
_020DD4EC: .word 0x3FDB6DB6
_020DD4F0: .word 0x33333303
_020DD4F4: .word 0x3FE33333
_020DD4F8: .word 0x40080000
_020DD4FC: .word 0x3FEEC709
_020DD500: .word 0x145B01F5
_020DD504: .word 0xBE3E2FE0
_020DD508: .word 0xDC3A03FD
_020DD50C: .word 0x020FECBC
_020DD510: .word 0x020FEC9C
_020DD514: .word 0x40900000
_020DD518: .word 0x8800759C
_020DD51C: .word 0x7E37E43C
_020DD520: .word 0x3C971547
_020DD524: .word 0x3F6F3400
_020DD528: .word 0xC2F8F359
_020DD52C: .word 0x01A56E1F
_020DD530: .word 0x3FE62E43
_020DD534: .word 0xFEFA39EF
_020DD538: .word 0x3FE62E42
_020DD53C: .word 0x0CA86C39
_020DD540: .word 0xBE205C61
_020DD544: .word 0x72BEA4D0
_020DD548: .word 0x3E663769
_020DD54C: .word 0xC5D26BF1
_020DD550: .word 0xBEBBBD41
_020DD554: .word 0xAF25DE2C
_020DD558: .word 0x3F11566A
_020DD55C: .word 0x16BEBD93
_020DD560: .word 0xBF66C16C
_020DD564: .word 0x5555553E
_020DD568: .word 0x3FC55555
_020DD56C:
	cmp r4, #0x100000
	mov r6, #0
	bge _020DD59C
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	mov r2, r6
	add r3, r3, #0x1600000
	bl sub_020E0234
	mov r4, r1
	str r0, [sp, #0x70]
	str r4, [sp, #0x74]
	sub r6, r6, #0x35
_020DD59C:
	ldr r0, _020DD48C ; =0xFFFFFC01
	ldr r1, _020DD4BC ; =0x0003988E
	and r2, r4, r0, lsr #12
	add r0, r0, r4, asr #20
	orr sb, r2, #0xff00000
	cmp r2, r1
	add r6, r6, r0
	orr sb, sb, #0x30000000
	movle r8, #0
	ble _020DD5DC
	ldr r0, _020DD4C0 ; =0x000BB67A
	cmp r2, r0
	movlt r8, #1
	addge r6, r6, #1
	subge sb, sb, #0x100000
	movge r8, #0
_020DD5DC:
	ldr r2, _020DD4C4 ; =0x020FECAC
	ldr r0, [sp, #0x70]
	add r1, r2, r8, lsl #3
	ldr r3, [r1, #4]
	ldr r2, [r2, r8, lsl #3]
	mov r1, sb
	str sb, [sp, #0x74]
	bl sub_020E074C
	ldr r2, _020DD4C4 ; =0x020FECAC
	mov sl, r0
	add r3, r2, r8, lsl #3
	mov r4, r1
	ldr r0, [sp, #0x70]
	ldr r2, [r2, r8, lsl #3]
	ldr r3, [r3, #4]
	mov r1, sb
	bl sub_020DFC6C
	mov r3, r1
	mov r2, r0
	ldr r1, _020DD480 ; =0x3FF00000
	mov r0, #0
	bl sub_020E2374
	str r1, [sp, #0x24]
	mov fp, r0
	ldr r3, [sp, #0x24]
	mov r0, sl
	mov r1, r4
	mov r2, fp
	bl sub_020E0234
	mov r2, sb, asr #1
	orr r2, r2, #0x20000000
	mov sb, r1
	add r2, r2, #0x80000
	add r1, r2, r8, lsl #18
	ldr r2, _020DD4C4 ; =0x020FECAC
	str r0, [sp, #0x28]
	add r3, r2, r8, lsl #3
	mov r0, #0
	ldr r2, [r2, r8, lsl #3]
	ldr r3, [r3, #4]
	str sb, [sp, #0x4c]
	str r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x40]
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	bl sub_020E074C
	str r0, [sp, #0x2c]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	mov r1, sb
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, sl
	mov r1, r4
	bl sub_020E074C
	mov sl, r0
	mov r4, r1
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x48]
	mov r1, sb
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, sl
	mov r1, r4
	bl sub_020E074C
	mov r3, r1
	mov r2, r0
	ldr r1, [sp, #0x24]
	mov r0, fp
	bl sub_020E0234
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x14]
	mov r1, sb
	mov r2, r0
	mov r3, sb
	bl sub_020E0234
	mov r4, r0
	mov sl, r1
	mov r2, r4
	mov r3, sl
	bl sub_020E0234
	str r0, [sp, #0x34]
	mov fp, r1
	ldr r0, _020DD4C8 ; =0x4A454EEF
	ldr r1, _020DD4CC ; =0x3FCA7E28
	mov r2, r4
	mov r3, sl
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4D0 ; =0x93C9DB65
	ldr r1, _020DD4D4 ; =0x3FCD864A
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4D8 ; =0xA91D4101
	ldr r1, _020DD4DC ; =0x3FD17460
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4E0 ; =0x518F264D
	ldr r1, _020DD4E4 ; =0x3FD55555
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4E8 ; =0xDB6FABFF
	ldr r1, _020DD4EC ; =0x3FDB6DB6
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD4F0 ; =0x33333303
	ldr r1, _020DD4F4 ; =0x3FE33333
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x34]
	mov r1, fp
	bl sub_020E0234
	mov r4, r0
	mov sl, r1
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x28]
	mov r1, sb
	mov r3, sb
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x14]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020DFC6C
	mov r4, r0
	ldr r0, [sp, #0x48]
	mov sl, r1
	mov r1, sb
	mov r2, r0
	mov r3, r1
	bl sub_020E0234
	str r1, [sp, #0xc]
	mov fp, r0
	ldr r1, _020DD4F8 ; =0x40080000
	ldr r3, [sp, #0xc]
	mov r0, #0
	mov r2, fp
	bl sub_020DFC6C
	mov r2, r4
	mov r3, sl
	bl sub_020DFC6C
	mov r0, #0
	ldr r3, _020DD4F8 ; =0x40080000
	mov r2, r0
	str r1, [sp, #0x44]
	str r0, [sp, #0x40]
	bl sub_020E074C
	ldr r3, [sp, #0xc]
	mov r2, fp
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E074C
	str r0, [sp, #0x38]
	str r1, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	mov r1, sb
	bl sub_020E0234
	mov r4, r0
	mov sl, r1
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_020E0234
	str r0, [sp, #0x3c]
	mov fp, r1
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x28]
	mov r3, sb
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x3c]
	mov r1, fp
	bl sub_020DFC6C
	mov sb, r0
	mov fp, r1
	mov r0, r4
	mov r1, sl
	mov r2, sb
	mov r3, fp
	bl sub_020DFC6C
	mov r0, #0
	mov r2, r4
	mov r3, sl
	str r1, [sp, #0x6c]
	str r0, [sp, #0x68]
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, sb
	mov r1, fp
	bl sub_020E074C
	mov sl, r1
	mov fp, r0
	ldr r1, _020DD4FC ; =0x3FEEC709
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	mov r0, #-0x20000000
	bl sub_020E0234
	mov r4, r0
	mov sb, r1
	ldr r0, _020DD500 ; =0x145B01F5
	ldr r1, _020DD504 ; =0xBE3E2FE0
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	bl sub_020E0234
	mov r2, fp
	mov r3, sl
	mov fp, r0
	mov sl, r1
	ldr r0, _020DD508 ; =0xDC3A03FD
	ldr r1, _020DD4FC ; =0x3FEEC709
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, fp
	mov r1, sl
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD50C ; =0x020FECBC
	add r1, r0, r8, lsl #3
	ldr r0, [r0, r8, lsl #3]
	ldr r1, [r1, #4]
	bl sub_020DFC6C
	mov fp, r0
	mov sl, r1
	mov r0, r6
	bl sub_020E01B8
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	mov r0, r4
	mov r1, sb
	mov r2, fp
	mov r3, sl
	bl sub_020DFC6C
	ldr r2, _020DD510 ; =0x020FEC9C
	add r3, r2, r8, lsl #3
	ldr r2, [r2, r8, lsl #3]
	ldr r3, [r3, #4]
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020DFC6C
	str r1, [sp, #0x5c]
	mov r0, #0
	str r0, [sp, #0x58]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_020E074C
	ldr r2, _020DD510 ; =0x020FEC9C
	add r3, r2, r8, lsl #3
	ldr r2, [r2, r8, lsl #3]
	ldr r3, [r3, #4]
	bl sub_020E074C
	mov r2, r4
	mov r3, sb
	bl sub_020E074C
	mov r2, r0
	mov r0, fp
	mov r3, r1
	mov r1, sl
	bl sub_020E074C
	mov r4, r0
	mov r8, r1
_020DDAC8:
	sub r0, r5, #1
	ldr r1, [sp, #0xb4]
	orr r0, r7, r0
	ldr r5, _020DD480 ; =0x3FF00000
	mov r2, #0
	ldr r0, [sp, #0xb0]
	mov r3, r1
	mov r6, #0
	subeq r5, r5, #-0x80000000
	str r1, [sp, #0x64]
	str r2, [sp, #0x60]
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	bl sub_020E0234
	mov r7, r0
	mov sb, r1
	ldr r0, [sp, #0xb0]
	ldr r1, [sp, #0xb4]
	mov r2, r4
	mov r3, r8
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, sb
	bl sub_020DFC6C
	mov r7, r0
	mov r8, r1
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, r8
	str r2, [sp, #0x68]
	str r3, [sp, #0x6c]
	bl sub_020DFC6C
	mov sb, r1
	ldr r2, _020DD514 ; =0x40900000
	str r0, [sp, #0x78]
	str sb, [sp, #0x7c]
	cmp sb, r2
	blt _020DDC54
	add r1, sb, #0xf700000
	add r1, r1, #-0x50000000
	orr r0, r1, r0
	beq _020DDBD4
	ldr r0, _020DD518 ; =0x8800759C
	ldr r1, _020DD51C ; =0x7E37E43C
	mov r2, r6
	mov r3, r5
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD518 ; =0x8800759C
	ldr r1, _020DD51C ; =0x7E37E43C
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DDBD4:
	ldr r0, _020DD4B8 ; =0x652B82FE
	ldr r1, _020DD520 ; =0x3C971547
	mov r2, r7
	mov r3, r8
	bl sub_020DFC6C
	mov r4, r0
	mov sl, r1
	ldr r0, [sp, #0x78]
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	mov r1, sb
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sl
	bl sub_020E0DBC
	bls _020DDD08
	ldr r0, _020DD518 ; =0x8800759C
	ldr r1, _020DD51C ; =0x7E37E43C
	mov r2, r6
	mov r3, r5
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD518 ; =0x8800759C
	ldr r1, _020DD51C ; =0x7E37E43C
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DDC54:
	bic r3, sb, #0x80000000
	add r2, r2, #0xcc00
	cmp r3, r2
	blt _020DDD08
	ldr r2, _020DD524 ; =0x3F6F3400
	add r2, sb, r2
	orr r2, r2, r0
	beq _020DDCAC
	ldr r0, _020DD528 ; =0xC2F8F359
	ldr r1, _020DD52C ; =0x01A56E1F
	mov r2, r6
	mov r3, r5
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD528 ; =0xC2F8F359
	ldr r1, _020DD52C ; =0x01A56E1F
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DDCAC:
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, r8
	bl sub_020E0E54
	bhi _020DDD08
	ldr r0, _020DD528 ; =0xC2F8F359
	ldr r1, _020DD52C ; =0x01A56E1F
	mov r2, r6
	mov r3, r5
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD528 ; =0xC2F8F359
	ldr r1, _020DD52C ; =0x01A56E1F
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DDD08:
	ldr r0, _020DD48C ; =0xFFFFFC01
	bic r3, sb, #0x80000000
	ldr r1, _020DD490 ; =0x3FE00000
	add r2, r0, r3, asr #20
	cmp r3, r1
	mov r4, #0
	ble _020DDD84
	mov r1, #0x100000
	add r2, r2, #1
	add r2, sb, r1, asr r2
	bic r3, r2, #0x80000000
	add r0, r0, r3, asr #20
	sub r3, r1, #1
	mvn r3, r3, asr r0
	sub r1, r1, #1
	and r1, r2, r1
	and r2, r2, r3
	str r2, [sp, #0x54]
	str r4, [sp, #0x50]
	orr r1, r1, #0x100000
	rsb r0, r0, #0x14
	mov r4, r1, asr r0
	cmp sb, #0
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	rsblt r4, r4, #0
	bl sub_020E074C
	str r0, [sp, #0x68]
	str r1, [sp, #0x6c]
_020DDD84:
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	mov r0, r7
	mov r1, r8
	bl sub_020DFC6C
	mov r3, r1
	mov r0, #0
	ldr r1, _020DD530 ; =0x3FE62E43
	mov r2, r0
	str r3, [sp, #0x54]
	str r0, [sp, #0x50]
	bl sub_020E0234
	mov sb, r0
	mov sl, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	bl sub_020E074C
	mov r2, r0
	mov r0, r7
	mov r3, r1
	mov r1, r8
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD534 ; =0xFEFA39EF
	ldr r1, _020DD538 ; =0x3FE62E42
	bl sub_020E0234
	mov r7, r0
	mov r8, r1
	ldr r0, _020DD53C ; =0x0CA86C39
	ldr r1, _020DD540 ; =0xBE205C61
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r0, r7
	mov r3, r1
	mov r1, r8
	bl sub_020DFC6C
	mov r7, r0
	mov r8, r1
	mov r0, sb
	mov r1, sl
	mov r2, r7
	mov r3, r8
	bl sub_020DFC6C
	mov r2, sb
	mov r3, sl
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	bl sub_020E074C
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, r8
	bl sub_020E074C
	mov r8, r0
	mov sb, r1
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	mov r2, r0
	mov r3, r1
	bl sub_020E0234
	mov r2, r0
	str r2, [sp, #0x50]
	mov r3, r1
	str r3, [sp, #0x54]
	ldr r0, _020DD544 ; =0x72BEA4D0
	ldr r1, _020DD548 ; =0x3E663769
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD54C ; =0xC5D26BF1
	ldr r1, _020DD550 ; =0xBEBBBD41
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD554 ; =0xAF25DE2C
	ldr r1, _020DD558 ; =0x3F11566A
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD55C ; =0x16BEBD93
	ldr r1, _020DD560 ; =0xBF66C16C
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, _020DD564 ; =0x5555553E
	ldr r1, _020DD568 ; =0x3FC55555
	bl sub_020DFC6C
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_020E0234
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_020E074C
	mov r2, r0
	str r2, [sp, #0x58]
	mov r3, r1
	str r3, [sp, #0x5c]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_020E0234
	mov r7, r0
	mov sl, r1
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	mov r2, #0
	mov r3, #0x40000000
	bl sub_020E074C
	mov r2, r0
	mov r0, r7
	mov r3, r1
	mov r1, sl
	bl sub_020E2374
	mov r7, r0
	mov sl, r1
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	mov r2, r8
	mov r3, sb
	bl sub_020E0234
	mov r2, r0
	mov r0, r8
	mov r3, r1
	mov r1, sb
	bl sub_020DFC6C
	mov r2, r0
	mov r0, r7
	mov r3, r1
	mov r1, sl
	bl sub_020E074C
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_020E074C
	mov r3, r1
	mov r2, r0
	ldr r1, _020DD480 ; =0x3FF00000
	mov r0, #0
	bl sub_020E074C
	add r3, r1, r4, lsl #20
	mov r2, r3, asr #0x14
	str r0, [sp, #0x78]
	cmp r2, #0
	str r1, [sp, #0x7c]
	addgt r0, sp, #0x78
	strgt r3, [r0, #4]
	bgt _020DE038
	mov r2, r4
	bl sub_020DF8EC
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
_020DE038:
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	mov r0, r6
	mov r1, r5
	bl sub_020E0234
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020DCED4

	arm_func_start sub_020DE05C
sub_020DE05C: ; 0x020DE05C
	stmfd sp!, {r0, r1, r2, r3}
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	bic r1, r1, #0x80000000
	and r0, r0, #0x80000000
	orr r1, r1, r0
	ldr r0, [sp]
	str r1, [sp, #4]
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020DE05C

	arm_func_start sub_020DE084
sub_020DE084: ; 0x020DE084
	stmfd sp!, {r0, r1, r2, r3}
	add r2, sp, #0
	ldr r1, [r2, #4]
	ldr r0, [sp]
	bic r1, r1, #0x80000000
	str r1, [r2, #4]
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020DE084

	arm_func_start sub_020DE0A4
sub_020DE0A4: ; 0x020DE0A4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	ldr r1, [sp, #0xc]
	ldr r0, _020DE150 ; =0x7FF00000
	mov r4, r2
	bic r3, r1, #0x80000000
	mov r2, #0
	str r2, [r4, #0]
	cmp r3, r0
	ldr r0, [sp, #8]
	bge _020DE0D8
	orr r0, r3, r0
	bne _020DE0EC
_020DE0D8:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE0EC:
	cmp r3, #0x100000
	bge _020DE118
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, _020DE154 ; =0x43500000
	bl sub_020E0234
	mvn r2, #0x35
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [r4, #0]
	bic r3, r1, #0x80000000
_020DE118:
	ldr r2, _020DE158 ; =0x800FFFFF
	ldr r0, _020DE15C ; =0xFFFFFC02
	and r1, r1, r2
	orr r1, r1, #0xfe00000
	orr r1, r1, #0x30000000
	ldr r2, [r4, #0]
	add r0, r0, r3, asr #20
	add r2, r2, r0
	ldr r0, [sp, #8]
	str r2, [r4, #0]
	str r1, [sp, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DE150: .word 0x7FF00000
_020DE154: .word 0x43500000
_020DE158: .word 0x800FFFFF
_020DE15C: .word 0xFFFFFC02
	arm_func_end sub_020DE0A4

	arm_func_start sub_020DE160
sub_020DE160: ; 0x020DE160
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r4, r2
	bl sub_020DF87C
	cmp r0, #2
	ble _020DE198
	mov r0, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r1, r0
	bl sub_020E0F94
	bne _020DE1AC
_020DE198:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE1AC:
	ldr r3, [sp, #0xc]
	ldr r0, _020DE380 ; =0x7FF00000
	ldr r1, [sp, #8]
	and r0, r3, r0
	mov ip, r0, asr #0x14
	bne _020DE238
	bic r0, r3, #0x80000000
	orr r0, r1, r0
	ldreq r0, [sp, #8]
	ldreq r1, [sp, #0xc]
	ldmeqia sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, _020DE384 ; =0x43500000
	mov r2, #0
	bl sub_020E0234
	mov r3, r1
	ldr r1, _020DE380 ; =0x7FF00000
	ldr ip, _020DE388 ; =0xFFFF3CB0
	and r1, r3, r1
	mov r2, r0
	mov r0, r1, asr #0x14
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r4, ip
	sub ip, r0, #0x36
	bge _020DE238
	ldr r0, _020DE38C ; =0xC2F8F359
	ldr r1, _020DE390 ; =0x01A56E1F
	bl sub_020E0234
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE238:
	ldr r0, _020DE394 ; =0x000007FF
	cmp ip, r0
	bne _020DE264
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r2, r0
	mov r3, r1
	bl sub_020DFC6C
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE264:
	add r2, ip, r4
	sub r0, r0, #1
	cmp r2, r0
	ble _020DE2A8
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, _020DE398 ; =0x8800759C
	ldr r1, _020DE39C ; =0x7E37E43C
	bl sub_020DE05C
	mov r2, r0
	mov r3, r1
	ldr r0, _020DE398 ; =0x8800759C
	ldr r1, _020DE39C ; =0x7E37E43C
	bl sub_020E0234
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE2A8:
	cmp r2, #0
	ble _020DE2D0
	ldr r1, _020DE3A0 ; =0x800FFFFF
	ldr r0, [sp, #8]
	and r1, r3, r1
	orr r1, r1, r2, lsl #20
	str r1, [sp, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE2D0:
	mvn r0, #0x35
	cmp r2, r0
	bgt _020DE350
	ldr r0, _020DE3A4 ; =0x0000C350
	cmp r4, r0
	ble _020DE31C
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, _020DE398 ; =0x8800759C
	ldr r1, _020DE39C ; =0x7E37E43C
	bl sub_020DE05C
	mov r2, r0
	mov r3, r1
	ldr r0, _020DE398 ; =0x8800759C
	ldr r1, _020DE39C ; =0x7E37E43C
	bl sub_020E0234
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE31C:
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, _020DE38C ; =0xC2F8F359
	ldr r1, _020DE390 ; =0x01A56E1F
	bl sub_020DE05C
	mov r2, r0
	mov r3, r1
	ldr r0, _020DE38C ; =0xC2F8F359
	ldr r1, _020DE390 ; =0x01A56E1F
	bl sub_020E0234
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE350:
	ldr r0, _020DE3A0 ; =0x800FFFFF
	add r1, r2, #0x36
	and r0, r3, r0
	orr r3, r0, r1, lsl #20
	ldr r2, [sp, #8]
	ldr r1, _020DE3A8 ; =0x3C900000
	mov r0, #0
	str r3, [sp, #0xc]
	bl sub_020E0234
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DE380: .word 0x7FF00000
_020DE384: .word 0x43500000
_020DE388: .word 0xFFFF3CB0
_020DE38C: .word 0xC2F8F359
_020DE390: .word 0x01A56E1F
_020DE394: .word 0x000007FF
_020DE398: .word 0x8800759C
_020DE39C: .word 0x7E37E43C
_020DE3A0: .word 0x800FFFFF
_020DE3A4: .word 0x0000C350
_020DE3A8: .word 0x3C900000
	arm_func_end sub_020DE160

	arm_func_start sub_020DE3AC
sub_020DE3AC: ; 0x020DE3AC
	ldr ip, _020DE3B4 ; =sub_020DCED4
	bx ip
	; .align 2, 0
_020DE3B4: .word sub_020DCED4
	arm_func_end sub_020DE3AC

	arm_func_start sub_020DE3B8
sub_020DE3B8: ; 0x020DE3B8
	add r3, r0, #5
	ldrb r2, [r3, r1]
	add ip, r3, r1
	cmp r2, #5
	movhi r0, #1
	bxhi lr
	mvnlo r0, #0
	bxlo lr
	ldrb r2, [r0, #4]
	add ip, ip, #1
	add r3, r3, r2
	cmp ip, r3
	bhs _020DE408
_020DE3EC:
	ldrb r2, [ip]
	cmp r2, #0
	movne r0, #1
	bxne lr
	add ip, ip, #1
	cmp ip, r3
	blo _020DE3EC
_020DE408:
	sub r1, r1, #1
	add r0, r0, r1
	ldrb r0, [r0, #5]
	tst r0, #1
	movne r0, #1
	mvneq r0, #0
	bx lr
	arm_func_end sub_020DE3B8

	arm_func_start sub_020DE424
sub_020DE424: ; 0x020DE424
	add r3, r0, #5
	add r1, r3, r1
	sub ip, r1, #1
	mov r1, #0
_020DE434:
	ldrb r2, [ip]
	cmp r2, #9
	addlo r0, r2, #1
	strlob r0, [ip]
	bxlo lr
	cmp ip, r3
	bne _020DE468
	mov r1, #1
	strb r1, [ip]
	ldrsh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #2]
	bx lr
_020DE468:
	strb r1, [ip], #-1
	b _020DE434
	arm_func_end sub_020DE424
_020DE470:
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start sub_020DE474
sub_020DE474: ; 0x020DE474
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldrb r2, [r5, #4]
	cmp r4, r2
	ldmgeia sp!, {r3, r4, r5, pc}
	bl sub_020DE3B8
	strb r4, [r5, #4]
	cmp r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl sub_020DE424
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020DE474

	arm_func_start sub_020DE4B4
sub_020DE4B4: ; 0x020DE4B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r0, #0
	mov r8, r2
	strb r0, [sl]
	mov sb, r1
	cmp r8, #0
	strb r0, [sl, #4]
	cmpeq sb, #0
	beq _020DE540
	mov r6, #0xa
	mov fp, r0
	mov r5, r0
	mov r4, r0
_020DE4EC:
	ldrb r1, [sl, #4]
	mov r0, sb
	mov r2, r6
	add r3, r1, #1
	mov r7, r1
	strb r3, [sl, #4]
	mov r1, r8
	mov r3, fp
	bl sub_020E1EE0
	add r1, sl, r7
	strb r0, [r1, #5]
	mov r0, sb
	mov r1, r8
	mov r2, #0xa
	mov r3, #0
	bl sub_020E1ED4
	mov r8, r1
	mov sb, r0
	cmp r8, r5
	cmpeq sb, r4
	bne _020DE4EC
_020DE540:
	ldrb r0, [sl, #4]
	add r2, sl, #5
	add r0, r2, r0
	sub r3, r0, #1
	cmp r2, r3
	bhs _020DE570
_020DE558:
	ldrb r0, [r3]
	ldrb r1, [r2]
	strb r0, [r2], #1
	strb r1, [r3], #-1
	cmp r2, r3
	blo _020DE558
_020DE570:
	ldrb r0, [sl, #4]
	sub r0, r0, #1
	strh r0, [sl, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020DE4B4

	arm_func_start sub_020DE580
sub_020DE580: ; 0x020DE580
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	ldrb r6, [r1, #4]
	ldrb r5, [r2, #4]
	mov r4, #0
	add r3, sp, #0
	add r5, r6, r5
	sub r5, r5, #1
	add r3, r3, r5
	add r6, r3, #1
	mov r7, r6
	strb r4, [r0]
	cmp r5, #0
	ble _020DE648
	add lr, r1, #5
	add fp, r2, #5
_020DE5C0:
	ldrb r3, [r2, #4]
	sub sl, r3, #1
	sub r3, r5, sl
	sub sb, r3, #1
	ldrb r3, [r1, #4]
	movmi sb, #0
	submi sl, r5, #1
	add r8, sl, #1
	sub r3, r3, sb
	cmp r8, r3
	movgt r8, r3
	add sl, fp, sl
	add sb, lr, sb
	cmp r8, #0
	ble _020DE614
_020DE5FC:
	ldrb ip, [sb], #1
	ldrb r3, [sl], #-1
	sub r8, r8, #1
	cmp r8, #0
	mla r4, ip, r3, r4
	bgt _020DE5FC
_020DE614:
	ldr r3, _020DE700 ; =0xCCCCCCCD
	sub r5, r5, #1
	umull r8, sb, r4, r3
	mov sb, sb, lsr #3
	cmp r5, #0
	mov sl, #0xa
	umull r8, sb, sl, sb
	sub sb, r4, r8
	strb sb, [r6, #-1]!
	mov r8, r4
	umull r3, r4, r8, r3
	mov r4, r4, lsr #3
	bgt _020DE5C0
_020DE648:
	ldrsh r3, [r1, #2]
	ldrsh r1, [r2, #2]
	cmp r4, #0
	add r1, r3, r1
	strh r1, [r0, #2]
	beq _020DE670
	strb r4, [r6, #-1]!
	ldrsh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #2]
_020DE670:
	mov r3, #0
	b _020DE688
_020DE678:
	ldrb r2, [r6], #1
	add r1, r0, r3
	add r3, r3, #1
	strb r2, [r1, #5]
_020DE688:
	cmp r3, #0x20
	bge _020DE698
	cmp r6, r7
	blo _020DE678
_020DE698:
	cmp r6, r7
	addhs sp, sp, #0x40
	strb r3, [r0, #4]
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r1, [r6]
	cmp r1, #5
	addlo sp, sp, #0x40
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bne _020DE6F0
	add r2, r6, #1
	cmp r2, r7
	bhs _020DE6E0
_020DE6C8:
	ldrb r1, [r2]
	cmp r1, #0
	bne _020DE6F0
	add r2, r2, #1
	cmp r2, r7
	blo _020DE6C8
_020DE6E0:
	ldrb r1, [r6, #-1]
	tst r1, #1
	addeq sp, sp, #0x40
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DE6F0:
	ldrb r1, [r0, #4]
	bl sub_020DE424
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020DE700: .word 0xCCCCCCCD
	arm_func_end sub_020DE580

	arm_func_start sub_020DE704
sub_020DE704: ; 0x020DE704
	stmfd sp!, {r3, lr}
	strh r2, [r0, #2]
	mov ip, #0
	strb ip, [r0]
	b _020DE72C
_020DE718:
	ldrsb r3, [r1], #1
	add r2, r0, ip
	add ip, ip, #1
	sub r3, r3, #0x30
	strb r3, [r2, #5]
_020DE72C:
	cmp ip, #0x20
	bge _020DE740
	ldrsb r2, [r1]
	cmp r2, #0
	bne _020DE718
_020DE740:
	strb ip, [r0, #4]
	ldrsb r2, [r1]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	cmp r2, #5
	ldmltia sp!, {r3, pc}
	bgt _020DE794
	ldrsb r2, [r1, #1]
	add r1, r1, #1
	cmp r2, #0
	beq _020DE780
_020DE76C:
	cmp r2, #0x30
	bne _020DE794
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _020DE76C
_020DE780:
	sub r1, ip, #1
	add r1, r0, r1
	ldrb r1, [r1, #5]
	tst r1, #1
	ldmeqia sp!, {r3, pc}
_020DE794:
	ldrb r1, [r0, #4]
	bl sub_020DE424
	ldmia sp!, {r3, pc}
	arm_func_end sub_020DE704

	arm_func_start sub_020DE7A0
sub_020DE7A0: ; 0x020DE7A0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x4c
	mov r4, r1
	mvn r2, #0x34
	mov r5, r0
	cmp r4, r2
	bgt _020DE7D0
	bge _020DE89C
	sub r0, r2, #0xb
	cmp r4, r0
	beq _020DE884
	b _020DEA2C
_020DE7D0:
	add r1, r4, #0x20
	cmp r1, #0x28
	addls pc, pc, r1, lsl #2
	b _020DEA2C
_020DE7E0: ; jump table
	b _020DE8B0 ; case 0
	b _020DEA2C ; case 1
	b _020DEA2C ; case 2
	b _020DEA2C ; case 3
	b _020DEA2C ; case 4
	b _020DEA2C ; case 5
	b _020DEA2C ; case 6
	b _020DEA2C ; case 7
	b _020DEA2C ; case 8
	b _020DEA2C ; case 9
	b _020DEA2C ; case 10
	b _020DEA2C ; case 11
	b _020DEA2C ; case 12
	b _020DEA2C ; case 13
	b _020DEA2C ; case 14
	b _020DEA2C ; case 15
	b _020DE8C4 ; case 16
	b _020DEA2C ; case 17
	b _020DEA2C ; case 18
	b _020DEA2C ; case 19
	b _020DEA2C ; case 20
	b _020DEA2C ; case 21
	b _020DEA2C ; case 22
	b _020DEA2C ; case 23
	b _020DE8D8 ; case 24
	b _020DE8EC ; case 25
	b _020DE900 ; case 26
	b _020DE914 ; case 27
	b _020DE928 ; case 28
	b _020DE93C ; case 29
	b _020DE950 ; case 30
	b _020DE964 ; case 31
	b _020DE978 ; case 32
	b _020DE98C ; case 33
	b _020DE9A0 ; case 34
	b _020DE9B4 ; case 35
	b _020DE9C8 ; case 36
	b _020DE9DC ; case 37
	b _020DE9F0 ; case 38
	b _020DEA04 ; case 39
	b _020DEA18 ; case 40
_020DE884:
	ldr r1, _020DEAD0 ; =0x021018CC
	mov r0, r5
	mvn r2, #0x13
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE89C:
	ldr r1, _020DEAD4 ; =0x021018FC
	add r2, r2, #0x25
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE8B0:
	ldr r1, _020DEAD8 ; =0x02101924
	add r2, r2, #0x2b
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE8C4:
	ldr r1, _020DEADC ; =0x0210193C
	add r2, r2, #0x30
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE8D8:
	ldr r1, _020DEAE0 ; =0x0210194C
	add r2, r2, #0x32
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE8EC:
	ldr r1, _020DEAE4 ; =0x02101954
	add r2, r2, #0x32
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE900:
	ldr r1, _020DEAE8 ; =0x0210195C
	add r2, r2, #0x33
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE914:
	ldr r1, _020DEAEC ; =0x02101964
	add r2, r2, #0x33
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE928:
	ldr r1, _020DEAF0 ; =0x0210196C
	add r2, r2, #0x33
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE93C:
	ldr r1, _020DEAF4 ; =0x02101970
	add r2, r2, #0x34
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE950:
	ldr r1, _020DEAF8 ; =0x02101974
	add r2, r2, #0x34
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE964:
	ldr r1, _020DEAFC ; =0x02101978
	add r2, r2, #0x34
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE978:
	ldr r1, _020DEB00 ; =0x0210197C
	mov r2, #0
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE98C:
	ldr r1, _020DEB04 ; =0x02101980
	mov r2, #0
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE9A0:
	ldr r1, _020DEB08 ; =0x02101984
	mov r2, #0
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE9B4:
	ldr r1, _020DEB0C ; =0x02101988
	mov r2, #0
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE9C8:
	ldr r1, _020DEB10 ; =0x0210198C
	mov r2, #1
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE9DC:
	ldr r1, _020DEB14 ; =0x02101990
	mov r2, #1
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE9F0:
	ldr r1, _020DEB18 ; =0x02101994
	mov r2, #1
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DEA04:
	ldr r1, _020DEB1C ; =0x02101998
	mov r2, #2
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DEA18:
	ldr r1, _020DEB20 ; =0x0210199C
	mov r2, #2
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DEA2C:
	and r0, r4, #0x80000000
	add r1, r4, r0, lsr #31
	add r0, sp, #0x26
	mov r1, r1, asr #1
	bl sub_020DE7A0
	add r1, sp, #0x26
	mov r0, r5
	mov r2, r1
	bl sub_020DE580
	tst r4, #1
	addeq sp, sp, #0x4c
	ldmeqia sp!, {r4, r5, pc}
	add r3, sp, #0
	mov ip, r5
	mov r2, #9
_020DEA68:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	sub r2, r2, #1
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	bne _020DEA68
	ldrh r0, [ip]
	cmp r4, #0
	strh r0, [r3]
	add r0, sp, #0x26
	ble _020DEAAC
	ldr r1, _020DEB04 ; =0x02101980
	mov r2, #0
	bl sub_020DE704
	b _020DEAB8
_020DEAAC:
	ldr r1, _020DEAFC ; =0x02101978
	mvn r2, #0
	bl sub_020DE704
_020DEAB8:
	add r1, sp, #0
	add r2, sp, #0x26
	mov r0, r5
	bl sub_020DE580
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020DEAD0: .word 0x021018CC
_020DEAD4: .word 0x021018FC
_020DEAD8: .word 0x02101924
_020DEADC: .word 0x0210193C
_020DEAE0: .word 0x0210194C
_020DEAE4: .word 0x02101954
_020DEAE8: .word 0x0210195C
_020DEAEC: .word 0x02101964
_020DEAF0: .word 0x0210196C
_020DEAF4: .word 0x02101970
_020DEAF8: .word 0x02101974
_020DEAFC: .word 0x02101978
_020DEB00: .word 0x0210197C
_020DEB04: .word 0x02101980
_020DEB08: .word 0x02101984
_020DEB0C: .word 0x02101988
_020DEB10: .word 0x0210198C
_020DEB14: .word 0x02101990
_020DEB18: .word 0x02101994
_020DEB1C: .word 0x02101998
_020DEB20: .word 0x0210199C
	arm_func_end sub_020DE7A0

	arm_func_start sub_020DEB24
sub_020DEB24: ; 0x020DEB24
	stmfd sp!, {r4, lr}
	ldrb r3, [r0, #5]
	cmp r3, #0
	bne _020DEB48
	ldrb r0, [r1, #5]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
_020DEB48:
	ldrb r2, [r1, #5]
	cmp r2, #0
	bne _020DEB64
	cmp r3, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
_020DEB64:
	ldrsh r3, [r0, #2]
	ldrsh r2, [r1, #2]
	cmp r3, r2
	bne _020DEBFC
	ldrb r4, [r0, #4]
	ldrb r2, [r1, #4]
	mov ip, #0
	mov lr, r4
	cmp r4, r2
	movgt lr, r2
	cmp lr, #0
	ble _020DEBBC
_020DEB94:
	add r3, r0, ip
	add r2, r1, ip
	ldrb r3, [r3, #5]
	ldrb r2, [r2, #5]
	cmp r3, r2
	movne r0, #0
	ldmneia sp!, {r4, pc}
	add ip, ip, #1
	cmp ip, lr
	blt _020DEB94
_020DEBBC:
	cmp lr, r4
	moveq r0, r1
	ldrb r1, [r0, #4]
	cmp ip, r1
	bge _020DEBF4
_020DEBD0:
	add r1, r0, ip
	ldrb r1, [r1, #5]
	cmp r1, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldrb r1, [r0, #4]
	add ip, ip, #1
	cmp ip, r1
	blt _020DEBD0
_020DEBF4:
	mov r0, #1
	ldmia sp!, {r4, pc}
_020DEBFC:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DEB24

	arm_func_start sub_020DEC04
sub_020DEC04: ; 0x020DEC04
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r2, [r0, #5]
	cmp r2, #0
	bne _020DEC28
	ldrb r0, [r1, #5]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020DEC28:
	ldrb r2, [r1, #5]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrsh r3, [r1, #2]
	ldrsh r2, [r0, #2]
	cmp r2, r3
	bne _020DECD8
	ldrb r5, [r0, #4]
	ldrb r4, [r1, #4]
	mov ip, #0
	mov lr, r5
	cmp r5, r4
	movgt lr, r4
	cmp lr, #0
	ble _020DEC9C
_020DEC68:
	add r3, r1, ip
	add r2, r0, ip
	ldrb r3, [r3, #5]
	ldrb r2, [r2, #5]
	cmp r2, r3
	movlo r0, #1
	ldmloia sp!, {r3, r4, r5, pc}
	cmp r3, r2
	movlo r0, #0
	ldmloia sp!, {r3, r4, r5, pc}
	add ip, ip, #1
	cmp ip, lr
	blt _020DEC68
_020DEC9C:
	cmp lr, r5
	bne _020DECD0
	cmp ip, r4
	bge _020DECD0
_020DECAC:
	add r0, r1, ip
	ldrb r0, [r0, #5]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r1, #4]
	add ip, ip, #1
	cmp ip, r0
	blt _020DECAC
_020DECD0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020DECD8:
	movlt r0, #1
	movge r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020DEC04

	arm_func_start sub_020DECE4
sub_020DECE4: ; 0x020DECE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, #9
_020DECF0:
	ldrh r4, [r1]
	ldrh r3, [r1, #2]
	add r1, r1, #4
	sub r5, r5, #1
	strh r4, [r6]
	strh r3, [r6, #2]
	add r6, r6, #4
	bne _020DECF0
	ldrh r1, [r1]
	strh r1, [r6]
	ldrb r1, [r2, #5]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r7, [r0, #4]
	ldrb r3, [r2, #4]
	ldrsh r4, [r0, #2]
	mov r1, r7
	cmp r7, r3
	movlt r1, r3
	ldrsh r3, [r2, #2]
	sub r6, r4, r3
	add r1, r1, r6
	cmp r1, #0x20
	movgt r1, #0x20
	cmp r7, r1
	bge _020DED7C
	mov r4, #0
_020DED5C:
	ldrb r5, [r0, #4]
	add r3, r0, r7
	add r5, r5, #1
	strb r5, [r0, #4]
	strb r4, [r3, #5]
	ldrb r7, [r0, #4]
	cmp r7, r1
	blt _020DED5C
_020DED7C:
	ldrb r4, [r2, #4]
	add r3, r0, #5
	add ip, r3, r1
	add r4, r4, r6
	cmp r4, r1
	addlt ip, r3, r4
	sub r4, ip, r3
	add r1, r2, #5
	sub r4, r4, r6
	add lr, r1, r4
	mov r4, lr
	b _020DEE10
_020DEDAC:
	ldrb r7, [ip, #-1]!
	ldrb r5, [lr, #-1]!
	cmp r7, r5
	bhs _020DEE00
	ldrb r7, [ip, #-1]
	sub r5, ip, #1
	cmp r7, #0
	bne _020DEDD8
_020DEDCC:
	ldrb r7, [r5, #-1]!
	cmp r7, #0
	beq _020DEDCC
_020DEDD8:
	cmp r5, ip
	beq _020DEE00
_020DEDE0:
	ldrb r7, [r5]
	sub r7, r7, #1
	strb r7, [r5]
	ldrb r7, [r5, #1]!
	cmp r5, ip
	add r7, r7, #0xa
	strb r7, [r5]
	bne _020DEDE0
_020DEE00:
	ldrb r7, [ip]
	ldrb r5, [lr]
	sub r5, r7, r5
	strb r5, [ip]
_020DEE10:
	cmp ip, r3
	cmphi lr, r1
	bhi _020DEDAC
	ldrb r5, [r2, #4]
	sub lr, r4, r1
	cmp lr, r5
	bge _020DEEEC
	ldrb r1, [r4]
	mov r7, #0
	cmp r1, #5
	movlo r7, #1
	blo _020DEE88
	bne _020DEE88
	add r1, r2, #5
	add r2, r1, r5
	add r4, r4, #1
	cmp r4, r2
	bhs _020DEE70
_020DEE58:
	ldrb r1, [r4]
	cmp r1, #0
	bne _020DEEEC
	add r4, r4, #1
	cmp r4, r2
	blo _020DEE58
_020DEE70:
	add r1, r3, lr
	add r2, r1, r6
	ldrb r1, [r2, #-1]
	sub ip, r2, #1
	tst r1, #1
	movne r7, #1
_020DEE88:
	cmp r7, #0
	beq _020DEEEC
	ldrb r1, [ip]
	cmp r1, #1
	bhs _020DEEE0
	ldrb r1, [ip, #-1]
	sub r2, ip, #1
	cmp r1, #0
	bne _020DEEB8
_020DEEAC:
	ldrb r1, [r2, #-1]!
	cmp r1, #0
	beq _020DEEAC
_020DEEB8:
	cmp r2, ip
	beq _020DEEE0
_020DEEC0:
	ldrb r1, [r2]
	sub r1, r1, #1
	strb r1, [r2]
	ldrb r1, [r2, #1]!
	cmp r2, ip
	add r1, r1, #0xa
	strb r1, [r2]
	bne _020DEEC0
_020DEEE0:
	ldrb r1, [ip]
	sub r1, r1, #1
	strb r1, [ip]
_020DEEEC:
	ldrb r1, [r3]
	mov r5, r3
	cmp r1, #0
	bne _020DEF08
_020DEEFC:
	ldrb r1, [r5, #1]!
	cmp r1, #0
	beq _020DEEFC
_020DEF08:
	cmp r5, r3
	bls _020DEF50
	ldrsh r1, [r0, #2]
	sub r2, r5, r3
	and r4, r2, #0xff
	sub r1, r1, r4
	strh r1, [r0, #2]
	ldrb r1, [r0, #4]
	add r2, r3, r1
	cmp r5, r2
	bhs _020DEF44
_020DEF34:
	ldrb r1, [r5], #1
	cmp r5, r2
	strb r1, [r3], #1
	blo _020DEF34
_020DEF44:
	ldrb r1, [r0, #4]
	sub r1, r1, r4
	strb r1, [r0, #4]
_020DEF50:
	ldrb r1, [r0, #4]
	add r2, r0, #5
	add r3, r2, r1
	cmp r3, r2
	bls _020DEF78
_020DEF64:
	ldrb r1, [r3, #-1]!
	cmp r1, #0
	bne _020DEF78
	cmp r3, r2
	bhi _020DEF64
_020DEF78:
	sub r1, r3, r2
	add r1, r1, #1
	strb r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020DECE4

	arm_func_start sub_020DEF88
sub_020DEF88: ; 0x020DEF88
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x58
	mov r8, r1
	mov r6, r2
	mov r7, r0
	mov r0, r8
	mov r1, r6
	bl sub_020DF868
	cmp r0, #0
	movne r1, #1
	moveq r1, #0
	mov r4, r1, lsl #0x18
	mov r0, #0
	mov r1, r0
	mov r2, r8
	mov r3, r6
	mov r5, r4, asr #0x18
	bl sub_020E0F94
	bne _020DEFF4
	strb r5, [r7]
	mov r1, #0
	strh r1, [r7, #2]
	mov r0, #1
	strb r0, [r7, #4]
	add sp, sp, #0x58
	strb r1, [r7, #5]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020DEFF4:
	mov r0, r8
	mov r1, r6
	bl sub_020DF87C
	cmp r0, #2
	bgt _020DF040
	strb r5, [r7]
	mov r2, #0
	strh r2, [r7, #2]
	mov r2, #1
	mov r0, r8
	mov r1, r6
	strb r2, [r7, #4]
	bl sub_020DF87C
	cmp r0, #1
	moveq r0, #0x4e
	movne r0, #0x49
	add sp, sp, #0x58
	strb r0, [r7, #5]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020DF040:
	cmp r5, #0
	beq _020DF064
	mov r0, #0
	mov r1, r0
	mov r2, r8
	mov r3, r6
	bl sub_020E074C
	mov r8, r0
	mov r6, r1
_020DF064:
	add r2, sp, #8
	mov r0, r8
	mov r1, r6
	bl sub_020DE0A4
	mov r4, r0
	mov r6, r1
	orr ip, r4, #0
	rsb r2, ip, #0
	orr r3, r6, #0x100000
	rsc r1, r3, #0
	mov r0, #0
	and r3, r3, r1
	sub r1, r0, #1
	and ip, ip, r2
	mov r2, r1
	add r0, ip, r1
	adc r1, r3, r2
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_020DF7D4
	rsb r8, r0, #0x35
	ldr r1, [sp, #8]
	add r0, sp, #0xc
	sub r1, r1, r8
	bl sub_020DE7A0
	mov r0, r4
	mov r1, r6
	mov r2, r8
	bl sub_020DE160
	bl sub_020E012C
	mov r2, r1
	mov r1, r0
	add r0, sp, #0x32
	bl sub_020DE4B4
	mov r0, r7
	add r1, sp, #0x32
	add r2, sp, #0xc
	bl sub_020DE580
	strb r5, [r7]
	add sp, sp, #0x58
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020DEF88

	arm_func_start sub_020DF108
sub_020DF108: ; 0x020DF108
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r3
	ldrsh r5, [r0, #2]
	mov r0, r4
	bl sub_020DEF88
	ldrb r0, [r4, #5]
	cmp r0, #9
	ldmhiia sp!, {r3, r4, r5, pc}
	cmp r5, #0x20
	movgt r5, #0x20
	mov r0, r4
	mov r1, r5
	bl sub_020DE474
	ldrb r0, [r4, #4]
	cmp r0, r5
	bge _020DF16C
	mov r1, #0
_020DF14C:
	ldrb r2, [r4, #4]
	add r0, r4, r0
	add r2, r2, #1
	strb r2, [r4, #4]
	strb r1, [r0, #5]
	ldrb r0, [r4, #4]
	cmp r0, r5
	blt _020DF14C
_020DF16C:
	ldrsh r1, [r4, #2]
	sub r0, r0, #1
	mov r2, #0
	sub r0, r1, r0
	strh r0, [r4, #2]
	ldrb r0, [r4, #4]
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, pc}
_020DF18C:
	add r1, r4, r2
	ldrb r0, [r1, #5]
	add r2, r2, #1
	add r0, r0, #0x30
	strb r0, [r1, #5]
	ldrb r0, [r4, #4]
	cmp r2, r0
	blt _020DF18C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020DF108

	arm_func_start sub_020DF1B0
sub_020DF1B0: ; 0x020DF1B0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xfc
	mov r4, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _020DF1F0
	ldrsb r0, [r4]
	mov r2, #0
	cmp r0, #0
	ldreq r3, _020DF7B4 ; =0x3FF00000
	mov r0, #0
	ldrne r3, _020DF7B8 ; =0xBFF00000
	mov r1, r0
	bl sub_020DE05C
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DF1F0:
	ldrb r0, [r4, #5]
	cmp r0, #0x30
	beq _020DF210
	cmp r0, #0x49
	beq _020DF238
	cmp r0, #0x4e
	beq _020DF26C
	b _020DF2B4
_020DF210:
	ldrsb r0, [r4]
	mov r2, #0
	cmp r0, #0
	ldreq r3, _020DF7B4 ; =0x3FF00000
	mov r0, #0
	ldrne r3, _020DF7B8 ; =0xBFF00000
	mov r1, r0
	bl sub_020DE05C
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DF238:
	ldrsb r0, [r4]
	mov r5, #0
	cmp r0, #0
	ldreq r4, _020DF7B4 ; =0x3FF00000
	ldr r0, _020DF7BC ; =0x021015AC
	ldrne r4, _020DF7B8 ; =0xBFF00000
	ldr r0, [r0, #0]
	bl sub_020E16BC
	mov r2, r5
	mov r3, r4
	bl sub_020DE05C
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DF26C:
	ldr r1, _020DF7C0 ; =0x7FF00000
	add r3, sp, #0x10
	mov r2, #0
	str r2, [r3, #0]
	str r1, [r3, #4]
	ldrsb r0, [r4]
	cmp r0, #0
	beq _020DF29C
	orr r0, r1, #0x80000000
	orr r1, r2, r2
	str r1, [r3, #0]
	str r0, [r3, #4]
_020DF29C:
	ldmia r3, {r0, r1}
	orr r0, r0, #0
	orr r1, r1, #0x80000
	stmia r3, {r0, r1}
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DF2B4:
	add r3, sp, #0xd6
	mov r5, r4
	mov r2, #9
_020DF2C0:
	ldrh r1, [r5]
	ldrh r0, [r5, #2]
	add r5, r5, #4
	sub r2, r2, #1
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	bne _020DF2C0
	ldrh r0, [r5]
	add r1, sp, #0xdb
	strh r0, [r3]
	ldrb r0, [sp, #0xda]
	add r5, r1, r0
	cmp r1, r5
	bhs _020DF310
_020DF2FC:
	ldrb r0, [r1]
	sub r0, r0, #0x30
	strb r0, [r1], #1
	cmp r1, r5
	blo _020DF2FC
_020DF310:
	ldrb r1, [sp, #0xda]
	ldrsh r2, [sp, #0xd8]
	add r0, sp, #0xb0
	sub r1, r1, #1
	add r1, r2, r1
	strh r1, [sp, #0xd8]
	ldr r1, _020DF7C4 ; =0x021019A0
	mov r2, #0x134
	ldrsh fp, [sp, #0xd8]
	bl sub_020DE704
	add r0, sp, #0xb0
	add r1, sp, #0xd6
	bl sub_020DEC04
	cmp r0, #0
	beq _020DF380
	ldrsb r0, [r4]
	mov r5, #0
	cmp r0, #0
	ldreq r4, _020DF7B4 ; =0x3FF00000
	ldr r0, _020DF7BC ; =0x021015AC
	ldrne r4, _020DF7B8 ; =0xBFF00000
	ldr r0, [r0, #0]
	bl sub_020E16BC
	mov r2, r5
	mov r3, r4
	bl sub_020DE05C
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DF380:
	add r1, sp, #0xdb
	ldrb r0, [r1]
	add r8, r1, #1
	bl sub_020E01F8
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r8, r5
	bhs _020DF458
_020DF3A0:
	sub r0, r5, r8
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	add r7, r1, r0, ror #29
	moveq r7, #8
	mov r6, #0
	mov r2, #0
	cmp r7, #0
	ble _020DF3DC
	mov r0, #0xa
_020DF3C8:
	ldrb r1, [r8], #1
	add r2, r2, #1
	cmp r2, r7
	mla r6, r0, r6, r1
	blt _020DF3C8
_020DF3DC:
	ldr r0, _020DF7C8 ; =0x0210188C
	ldr r1, [sp, #0xc]
	add r3, r0, r7, lsl #3
	ldr r2, [r3, #-8]
	ldr r0, [sp, #8]
	ldr r3, [r3, #-4]
	bl sub_020E0234
	mov r4, r0
	mov sb, r1
	mov r0, r6
	bl sub_020E01F8
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sb
	bl sub_020DFC6C
	cmp r6, #0
	mov r6, r0
	mov sl, r1
	beq _020DF444
	mov r0, r4
	mov r1, sb
	mov r2, r6
	mov r3, sl
	bl sub_020E0F94
	beq _020DF458
_020DF444:
	str r6, [sp, #8]
	str sl, [sp, #0xc]
	cmp r8, r5
	sub fp, fp, r7
	blo _020DF3A0
_020DF458:
	cmp fp, #0
	bge _020DF49C
	rsb r0, fp, #0
	bl sub_020E01B8
	mov r3, r1
	mov r2, r0
	ldr r1, _020DF7CC ; =0x40140000
	mov r0, #0
	bl sub_020DE3AC
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_020E2374
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	b _020DF4D4
_020DF49C:
	mov r0, fp
	bl sub_020E01B8
	mov r3, r1
	mov r2, r0
	ldr r1, _020DF7CC ; =0x40140000
	mov r0, #0
	bl sub_020DE3AC
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_020E0234
	str r0, [sp, #8]
	str r1, [sp, #0xc]
_020DF4D4:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r2, fp
	bl sub_020DE160
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	bl sub_020DF87C
	cmp r0, #2
	bne _020DF508
	ldr r0, _020DF7D0 ; =0x7FEFFFFF
	mvn r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_020DF508:
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, sp, #0x8a
	add r4, sp, #0
	mov r5, #0
	bl sub_020DEF88
	add r0, sp, #0x8a
	add r1, sp, #0xd6
	bl sub_020DEB24
	cmp r0, #0
	bne _020DF77C
	add r0, sp, #0x8a
	add r1, sp, #0xd6
	bl sub_020DEC04
	cmp r0, #0
	movne r5, #1
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r5, #0
	moveq r6, #1
	str r1, [sp]
	str r0, [sp, #4]
	movne r6, #0
_020DF564:
	cmp r6, #0
	bne _020DF58C
	ldmia r4, {r0, r1}
	add r0, r0, #1
	adc r1, r1, #0
	stmia r4, {r0, r1}
	bl sub_020DF87C
	cmp r0, #2
	beq _020DF77C
	b _020DF5A4
_020DF58C:
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	sub r1, r1, #1
	sbc r0, r0, #0
	str r1, [r4, #0]
	str r0, [r4, #4]
_020DF5A4:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, sp, #0x64
	bl sub_020DEF88
	cmp r5, #0
	beq _020DF5D0
	add r0, sp, #0x64
	add r1, sp, #0xd6
	bl sub_020DEC04
	cmp r0, #0
	beq _020DF6F4
_020DF5D0:
	cmp r5, #0
	bne _020DF6AC
	add r0, sp, #0xd6
	add r1, sp, #0x64
	bl sub_020DEC04
	cmp r0, #0
	bne _020DF6AC
	add r3, sp, #0x8a
	add r5, sp, #0x3e
	mov r2, #9
_020DF5F8:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	strh r1, [r5]
	strh r0, [r5, #2]
	add r5, r5, #4
	sub r2, r2, #1
	bne _020DF5F8
	ldrh r0, [r3]
	add r3, sp, #0x64
	add r4, sp, #0x8a
	strh r0, [r5]
	mov r2, #9
_020DF62C:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	strh r1, [r4]
	strh r0, [r4, #2]
	add r4, r4, #4
	sub r2, r2, #1
	bne _020DF62C
	ldrh r0, [r3]
	add r3, sp, #0x3e
	add r5, sp, #0x64
	strh r0, [r4]
	mov r2, #9
_020DF660:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	strh r1, [r5]
	strh r0, [r5, #2]
	add r5, r5, #4
	sub r2, r2, #1
	bne _020DF660
	ldrh r4, [r3]
	ldr r3, [sp, #8]
	ldr r1, [sp]
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #4]
	strh r4, [r5]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r3, [sp]
	str r2, [sp, #4]
	b _020DF6F4
_020DF6AC:
	add r7, sp, #0x64
	add r3, sp, #0x8a
	mov r2, #9
_020DF6B8:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	sub r2, r2, #1
	bne _020DF6B8
	ldrh r2, [r7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	strh r2, [r3]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	b _020DF564
_020DF6F4:
	add r0, sp, #0x3e
	add r1, sp, #0xd6
	add r2, sp, #0x8a
	bl sub_020DECE4
	add r0, sp, #0x18
	add r1, sp, #0x64
	add r2, sp, #0xd6
	bl sub_020DECE4
	add r0, sp, #0x3e
	add r1, sp, #0x18
	bl sub_020DEB24
	cmp r0, #0
	beq _020DF758
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	and r1, r1, #1
	and r0, r0, #0
	cmp r0, #0
	cmpeq r1, #0
	beq _020DF77C
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	b _020DF77C
_020DF758:
	add r0, sp, #0x3e
	add r1, sp, #0x18
	bl sub_020DEC04
	cmp r0, #0
	bne _020DF77C
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_020DF77C:
	ldrsb r0, [sp, #0xd6]
	cmp r0, #0
	beq _020DF7A4
	mov r0, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r1, r0
	bl sub_020E074C
	str r0, [sp, #8]
	str r1, [sp, #0xc]
_020DF7A4:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020DF7B4: .word 0x3FF00000
_020DF7B8: .word 0xBFF00000
_020DF7BC: .word 0x021015AC
_020DF7C0: .word 0x7FF00000
_020DF7C4: .word 0x021019A0
_020DF7C8: .word 0x0210188C
_020DF7CC: .word 0x40140000
_020DF7D0: .word 0x7FEFFFFF
	arm_func_end sub_020DF1B0

	arm_func_start sub_020DF7D4
sub_020DF7D4: ; 0x020DF7D4
	mov r3, r0, lsr #1
	ldr r2, _020DF85C ; =0x55555555
	orr r3, r3, r1, lsl #31
	and r3, r3, r2
	sub ip, r0, r3
	and r2, r2, r1, lsr #1
	ldr r0, _020DF860 ; =0x33333333
	sbc r3, r1, r2
	mov r1, ip, lsr #2
	orr r1, r1, r3, lsl #30
	and r2, ip, r0
	and r1, r1, r0
	add r2, r2, r1
	and r1, r3, r0
	and r0, r0, r3, lsr #2
	adc r1, r1, r0
	mov r0, r2, lsr #4
	orr r0, r0, r1, lsl #28
	add r2, r2, r0
	ldr r0, _020DF864 ; =0x0F0F0F0F
	adc r1, r1, r1, lsr #4
	and r3, r2, r0
	and r2, r1, r0
	mov r0, r3, lsr #8
	orr r0, r0, r2, lsl #24
	add r1, r3, r0
	adc r2, r2, r2, lsr #8
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	add r1, r1, r0
	adc r0, r2, r2, lsr #16
	add r0, r1, r0
	and r0, r0, #0xff
	bx lr
	; .align 2, 0
_020DF85C: .word 0x55555555
_020DF860: .word 0x33333333
_020DF864: .word 0x0F0F0F0F
	arm_func_end sub_020DF7D4

	arm_func_start sub_020DF868
sub_020DF868: ; 0x020DF868
	stmfd sp!, {r0, r1, r2, r3}
	ldr r0, [sp, #4]
	and r0, r0, #0x80000000
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020DF868

	arm_func_start sub_020DF87C
sub_020DF87C: ; 0x020DF87C
	stmfd sp!, {r0, r1, r2, r3}
	ldr r2, [sp, #4]
	ldr r0, _020DF8E4 ; =0x7FF00000
	and r1, r2, r0
	beq _020DF8B8
	cmp r1, r0
	bne _020DF8D8
	ldr r0, _020DF8E8 ; =0x000FFFFF
	tst r2, r0
	ldreq r0, [sp]
	add sp, sp, #0x10
	cmpeq r0, #0
	movne r0, #1
	moveq r0, #2
	bx lr
_020DF8B8:
	ldr r0, _020DF8E8 ; =0x000FFFFF
	tst r2, r0
	ldreq r0, [sp]
	add sp, sp, #0x10
	cmpeq r0, #0
	movne r0, #5
	moveq r0, #3
	bx lr
_020DF8D8:
	mov r0, #4
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DF8E4: .word 0x7FF00000
_020DF8E8: .word 0x000FFFFF
	arm_func_end sub_020DF87C

	arm_func_start sub_020DF8EC
sub_020DF8EC: ; 0x020DF8EC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	add r2, sp, #0
	bl sub_020DE0A4
	ldr r2, [sp]
	add r2, r2, r4
	str r2, [sp]
	bl sub_020DE160
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020DF8EC

	arm_func_start sub_020DF918
sub_020DF918: ; 0x020DF918
	ldr ip, _020DF92C ; =sub_020C3214
	mov r2, r0
	mov r0, #0
	sub r1, r0, #1
	bx ip
	; .align 2, 0
_020DF92C: .word sub_020C3214
	arm_func_end sub_020DF918

	arm_func_start sub_020DF930
sub_020DF930: ; 0x020DF930
	ldr ip, _020DF944 ; =sub_020C331C
	mov r2, r0
	mov r0, #0
	sub r1, r0, #1
	bx ip
	; .align 2, 0
_020DF944: .word sub_020C331C
	arm_func_end sub_020DF930

	arm_func_start sub_020DF948
sub_020DF948: ; 0x020DF948
	stmfd sp!, {r3, lr}
	ldr r3, _020DF9AC ; =0x020FE764
_020DF950:
	ldrb r2, [r0], #1
	cmp r2, #0
	blt _020DF968
	cmp r2, #0x80
	bge _020DF968
	ldrb r2, [r3, r2]
_020DF968:
	ldrb lr, [r1], #1
	and ip, r2, #0xff
	cmp lr, #0
	blt _020DF984
	cmp lr, #0x80
	bge _020DF984
	ldrb lr, [r3, lr]
_020DF984:
	and r2, lr, #0xff
	cmp ip, r2
	mvnlo r0, #0
	ldmloia sp!, {r3, pc}
	movhi r0, #1
	ldmhiia sp!, {r3, pc}
	cmp ip, #0
	bne _020DF950
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020DF9AC: .word 0x020FE764
	arm_func_end sub_020DF948

	arm_func_start sub_020DF9B0
sub_020DF9B0: ; 0x020DF9B0
	ldr ip, _020DF9B8 ; =sub_020DF948
	bx ip
	; .align 2, 0
_020DF9B8: .word sub_020DF948
	arm_func_end sub_020DF9B0

	arm_func_start sub_020DF9BC
sub_020DF9BC: ; 0x020DF9BC
	bx lr
	arm_func_end sub_020DF9BC

	arm_func_start sub_020DF9C0
sub_020DF9C0: ; 0x020DF9C0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	str r4, [r5, #0]
	add r1, sp, #0x20
	mov r0, #0x10
	str r4, [sp]
	str r1, [sp, #4]
	bl sub_020E3EEC
	cmp r0, #0
	beq _020DFA10
	ldr r1, _020DFA38 ; =0x02101A04
	mov r2, #1
	stmia r0, {r1, r2}
	ldr r1, _020DFA3C ; =0x02101A1C
	str r2, [r0, #8]
	str r1, [r0, #0]
	str r4, [r0, #0xc]
_020DFA10:
	str r0, [r5, #4]
	mov r1, #0
	add r0, sp, #0
	str r1, [sp]
	bl sub_020DFAD0
	mov r0, r5
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DFA38: .word 0x02101A04
_020DFA3C: .word 0x02101A1C
	arm_func_end sub_020DF9C0

	arm_func_start sub_020DFA40
sub_020DFA40: ; 0x020DFA40
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFA40

	arm_func_start sub_020DFA54
sub_020DFA54: ; 0x020DFA54
	bx lr
	arm_func_end sub_020DFA54

	arm_func_start sub_020DFA58
sub_020DFA58: ; 0x020DFA58
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	ldr r1, _020DFA7C ; =0x021019D8
	bl sub_020E40A0
	cmp r0, #0
	addne r0, r4, #0xc
	moveq r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020DFA7C: .word 0x021019D8
	arm_func_end sub_020DFA58

	arm_func_start sub_020DFA80
sub_020DFA80: ; 0x020DFA80
	ldr ip, _020DFA8C ; =sub_020E4000
	ldr r0, [r0, #0xc]
	bx ip
	; .align 2, 0
_020DFA8C: .word sub_020E4000
	arm_func_end sub_020DFA80

	arm_func_start sub_020DFA90
sub_020DFA90: ; 0x020DFA90
	stmfd sp!, {r3, r4, fp, lr}
	sub sp, sp, #0x18
	mov fp, sp
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020DFAB0
	bl sub_020DFB80
_020DFAB0:
	add sp, fp, #0x18
	mov r0, r4
	ldmia sp!, {r3, r4, fp, pc}
	arm_func_end sub_020DFA90
_020DFABC:
	.byte 0x00, 0x00, 0x8B, 0xE2
	.byte 0xDA, 0x0F, 0x00, 0xEB, 0xFE, 0xFF, 0xFF, 0xEA, 0x18, 0xD0, 0x8B, 0xE2, 0x18, 0x88, 0xBD, 0xE8

	arm_func_start sub_020DFAD0
sub_020DFAD0: ; 0x020DFAD0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020DFAE8
	bl sub_020E4000
_020DFAE8:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFAD0

	arm_func_start sub_020DFAF0
sub_020DFAF0: ; 0x020DFAF0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFAF0

	arm_func_start sub_020DFB04
sub_020DFB04: ; 0x020DFB04
	bx lr
	arm_func_end sub_020DFB04

	arm_func_start sub_020DFB08
sub_020DFB08: ; 0x020DFB08
	ldr r0, [r0, #4]
	bx lr
	arm_func_end sub_020DFB08

	arm_func_start sub_020DFB10
sub_020DFB10: ; 0x020DFB10
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl sub_020DFA90
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFB10

	arm_func_start sub_020DFB28
sub_020DFB28: ; 0x020DFB28
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl sub_020DFA90
	mov r0, r4
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFB28

	arm_func_start sub_020DFB48
sub_020DFB48: ; 0x020DFB48
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl sub_020DFA90
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFB48

	arm_func_start sub_020DFB60
sub_020DFB60: ; 0x020DFB60
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl sub_020DFA90
	mov r0, r4
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFB60

	arm_func_start sub_020DFB80
sub_020DFB80: ; 0x020DFB80
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	sub r1, r1, #1
	str r1, [r4, #4]
	ldmneia sp!, {r4, pc}
	ldr r1, [r0, #0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_020DFBB0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFB80

	arm_func_start sub_020DFBB0
sub_020DFBB0: ; 0x020DFBB0
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	sub r1, r1, #1
	str r1, [r0, #8]
	ldmneia sp!, {r3, pc}
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end sub_020DFBB0

	arm_func_start sub_020DFBDC
sub_020DFBDC: ; 0x020DFBDC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r4, _020DFC58 ; =0x02101B28
	ldr r1, _020DFC5C ; =0x02101B1C
	add r6, sp, #4
	mov r0, r4
	str r1, [sp, #4]
	add r5, sp, #8
	bl sub_020D8B60
	add r0, r0, #1
	rsb r0, r0, r0, lsl #1
	bl sub_020E3FA8
	mov r1, #0
	strb r1, [sp]
	sub r2, sp, #4
	strb r1, [r2]
	mov r1, r0
	ldr r2, [r2, #0]
	mov r0, r5
	bl sub_020DF9C0
	ldr r0, [r5, #0]
	mov r1, r4
	bl sub_020D8B7C
	ldr r3, _020DFC60 ; =0x02101B08
	ldr r0, _020DFC64 ; =0x02101B3C
	ldr r2, _020DFC68 ; =sub_020DFB48
	mov r1, r6
	str r3, [sp, #4]
	bl sub_020E44B8
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020DFC58: .word 0x02101B28
_020DFC5C: .word 0x02101B1C
_020DFC60: .word 0x02101B08
_020DFC64: .word 0x02101B3C
_020DFC68: .word sub_020DFB48
	arm_func_end sub_020DFBDC

	arm_func_start sub_020DFC6C
sub_020DFC6C: ; 0x020DFC6C
	stmfd sp!, {r4, lr}
	eor ip, r1, r3
	eormi r3, r3, #0x80000000
	bmi _020E075C
	arm_func_end sub_020DFC6C
_020DFC7C:
	sub ip, r0, r2
	sbc lr, r1, r3
	bhs _020DFC98
	add r2, r2, ip
	adc r3, r3, lr
	sub r0, r0, ip
	sbc r1, r1, lr
_020DFC98:
	mov lr, #-0x80000000
	mov ip, r1, lsr #0x14
	orr r1, lr, r1, lsl #11
	orr r1, r1, r0, lsr #21
	mov r0, r0, lsl #0xb
	mov r4, ip, lsl #0x15
	cmnne r4, #0x200000
	beq _020DFD94
	mov r4, r3, lsr #0x14
	orr r3, lr, r3, lsl #11
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	mov lr, r4, lsl #0x15
	beq _020DFDDC
_020DFCD0:
	sub r4, ip, r4
	beq _020DFD28
	cmp r4, #0x20
	ble _020DFD0C
	cmp r4, #0x38
	movge r4, #0x3f
	sub r4, r4, #0x20
	rsb lr, r4, #0x20
	orr lr, r2, r3, lsl lr
	mov r2, r3, lsr r4
	orrne r2, r2, #1
	add r0, r0, r2
	adc r1, r1, #0
	blo _020DFD50
	b _020DFD34
_020DFD0C:
	rsb lr, r4, #0x20
	mov lr, r2, lsl lr
	rsb lr, r4, #0x20
	mov r2, r2, lsr r4
	orr r2, r2, r3, lsl lr
	mov r3, r3, lsr r4
	orrne r2, r2, #1
_020DFD28:
	add r0, r0, r2
	adc r1, r1, r3
	blo _020DFD50
_020DFD34:
	add ip, ip, #1
	and r4, r0, #1
	movs r1, r1, rrx
	orr r0, r4, r0, rrx
	mov lr, ip, lsl #0x15
	cmn lr, #0x200000
	beq _020DFF60
_020DFD50:
	mov r2, r0, lsl #0x15
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, ip, lsl #20
	tst r2, #-0x80000000
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r2, r2, lsl #1
	andeq r2, r0, #1
	ldmeqia sp!, {r4, lr}
	bxeq lr
	add r0, r0, #1
	adc r1, r1, #0
	ldmia sp!, {r4, lr}
	bx lr
_020DFD94:
	cmp ip, #0x800
	movge lr, #-0x80000000
	movlt lr, #0
	bic ip, ip, #0x800
	beq _020DFE00
	orr r4, r0, r1, lsl #1
	bne _020DFF3C
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	mov r4, r4, lsl #0x15
	beq _020DFF28
	cmn r4, #0x200000
	bne _020DFF28
	orr r4, r2, r3, lsl #1
	beq _020DFF28
	b _020DFF3C
_020DFDDC:
	cmp r4, #0x800
	movge lr, #-0x80000000
	movlt lr, #0
	bic ip, ip, #0x800
	bic r4, r4, #0x800
	beq _020DFE6C
	orr r4, r2, r3, lsl #1
	bne _020DFF3C
	b _020DFF28
_020DFE00:
	orr r4, r0, r1, lsl #1
	beq _020DFE40
	mov ip, #1
	bic r1, r1, #0x80000000
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	mov r4, r4, lsl #0x15
	cmnne r4, #0x200000
	mov r4, r4, lsr #0x15
	orr r4, r4, lr, lsr #20
	beq _020DFDDC
	orr r3, r3, #0x80000000
	orr ip, ip, lr, lsr #20
	b _020DFCD0
_020DFE40:
	mov ip, r3, lsr #0x14
	mov r1, r3, lsl #0xb
	orr r1, r1, r2, lsr #21
	mov r0, r2, lsl #0xb
	mov r4, ip, lsl #0x15
	beq _020DFEF4
	cmn r4, #0x200000
	bne _020DFEF4
	orr r4, r0, r1, lsl #1
	beq _020DFF28
	b _020DFF40
_020DFE6C:
	orr r4, r2, r3, lsl #1
	beq _020DFF04
	mov r4, #1
	bic r3, r3, #0x80000000
	cmp r1, #0
	bpl _020DFE90
	orr ip, ip, lr, lsr #20
	orr r4, r4, lr, lsr #20
	b _020DFCD0
_020DFE90:
	add r0, r0, r2
	adc r1, r1, r3
	blo _020DFEB0
	add ip, ip, #1
	and r4, r0, #1
	movs r1, r1, rrx
	mov r0, r0, rrx
	orr r0, r0, r4
_020DFEB0:
	cmp r1, #0
	subge ip, ip, #1
	mov r2, r0, lsl #0x15
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, ip, lsl #20
	ldmeqia sp!, {r4, lr}
	bxeq lr
	tst r2, #-0x80000000
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r2, r2, lsl #1
	andeq r2, r0, #1
	ldmeqia sp!, {r4, lr}
	bxeq lr
_020DFEF4:
	mov r1, r3
	mov r0, r2
	ldmia sp!, {r4, lr}
	bx lr
_020DFF04:
	cmp r1, #0
	subge ip, ip, #1
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, ip, lsl #20
	ldmia sp!, {r4, lr}
	bx lr
_020DFF28:
	ldr r1, _020DFF80 ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
_020DFF3C:
	mov r1, r3
_020DFF40:
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmia sp!, {r4, lr}
	bx lr
_020DFF50:
	.byte 0x00, 0x00, 0xE0, 0xE3, 0x02, 0x11, 0xC0, 0xE3, 0x10, 0x40, 0xBD, 0xE8, 0x1E, 0xFF, 0x2F, 0xE1
_020DFF60:
	cmp ip, #0x800
	movge lr, #-0x80000000
	movlt lr, #0
	ldr r1, _020DFF80 ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	; .align 2, 0
_020DFF80: .word 0x7FF00000

	arm_func_start sub_020DFF84
sub_020DFF84: ; 0x020DFF84
	and r2, r1, #0x80000000
	mov ip, r1, lsr #0x14
	bic ip, ip, #0x800
	beq _020DFFFC
	mov r3, ip, lsl #0x15
	cmn r3, #0x200000
	bhs _020DFFE0
	sub ip, ip, #0x380
	bls _020E000C
	cmp ip, #0xff
	bge _020E007C
	mov r1, r1, lsl #0xc
	orr r3, r2, r1, lsr #9
	orr r3, r3, r0, lsr #29
	mov r1, r0, lsl #3
	orr r0, r3, ip, lsl #23
	bxeq lr
	tst r1, #-0x80000000
	bxeq lr
	mov r1, r1, lsl #1
	andeq r1, r0, #1
	addne r0, r0, #1
	bx lr
_020DFFE0:
	orr r3, r0, r1, lsl #12
	bne _020DFFF4
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
_020DFFF4:
	mvn r0, #0x80000000
	bx lr
_020DFFFC:
	orr r3, r0, r1, lsl #12
	bne _020E0074
	arm_func_end sub_020DFF84

	arm_func_start sub_020E0004
sub_020E0004: ; 0x020E0004
	mov r0, r2
	bx lr
_020E000C:
	cmn ip, #0x17
	beq _020E0060
	bmi _020E0074
	mov r1, r1, lsl #0xb
	orr r1, r1, #0x80000000
	mov r3, r1, lsr #8
	orr r3, r3, r0, lsr #29
	rsb ip, ip, #1
	mov r1, r0, lsl #3
	orr r0, r2, r3, lsr ip
	rsb ip, ip, #0x20
	mov r3, r3, lsl ip
	orrne r3, r3, #1
	mov r1, r3
	bxeq lr
	tst r1, #-0x80000000
	bxeq lr
	mov r1, r1, lsl #1
	andeq r1, r0, #1
	addne r0, r0, #1
	bx lr
_020E0060:
	orr r0, r0, r1, lsl #12
	arm_func_end sub_020E0004

	arm_func_start sub_020E0064
sub_020E0064: ; 0x020E0064
	mov r1, r0
	mov r0, r2
	addne r0, r0, #1
	bx lr
	arm_func_end sub_020E0064
_020E0074:
	mov r0, r2
	bx lr
_020E007C:
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr

	arm_func_start sub_020E0088
sub_020E0088: ; 0x020E0088
	bic r3, r1, #0x80000000
	ldr r2, _020E00D0 ; =0x0000041E
	sub r2, r2, r3, lsr #20
	ble _020E00C4
	cmp r2, #0x20
	bge _020E00BC
	mov r3, r1, lsl #0xb
	orr r3, r3, #0x80000000
	orr r3, r3, r0, lsr #21
	cmp r1, #0
	mov r0, r3, lsr r2
	rsbmi r0, r0, #0
	bx lr
_020E00BC:
	mov r0, #0
	bx lr
_020E00C4:
	mvn r0, r1, asr #31
	add r0, r0, #-0x80000000
	bx lr
	; .align 2, 0
_020E00D0: .word 0x0000041E
	arm_func_end sub_020E0088

	arm_func_start sub_020E00D4
sub_020E00D4: ; 0x020E00D4
	tst r1, #-0x80000000
	bne _020E010C
	ldr r2, _020E0128 ; =0x0000041E
	sub r2, r2, r1, lsr #20
	blt _020E0120
	cmp r2, #0x20
	bge _020E0104
	mov r3, r1, lsl #0xb
	orr r3, r3, #0x80000000
	orr r3, r3, r0, lsr #21
	mov r0, r3, lsr r2
	bx lr
_020E0104:
	mov r0, #0
	bx lr
_020E010C:
	cmn r1, #0x100000
	cmpeq r0, #0
	movls r0, #0
	mvnhi r0, #0
	bx lr
_020E0120:
	mvn r0, #0
	bx lr
	; .align 2, 0
_020E0128: .word 0x0000041E
	arm_func_end sub_020E00D4

	arm_func_start sub_020E012C
sub_020E012C: ; 0x020E012C
	tst r1, #-0x80000000
	bne _020E0190
	ldr r2, _020E01B4 ; =0x0000043E
	sub r2, r2, r1, lsr #20
	blt _020E01A8
	cmp r2, #0x40
	bge _020E0184
	mov ip, r1, lsl #0xb
	orr ip, ip, #0x80000000
	orr ip, ip, r0, lsr #21
	cmp r2, #0x20
	ble _020E016C
	sub r2, r2, #0x20
	mov r1, #0
	mov r0, ip, lsr r2
	bx lr
_020E016C:
	mov r3, r0, lsl #0xb
	mov r1, ip, lsr r2
	mov r0, r3, lsr r2
	rsb r2, r2, #0x20
	orr r0, r0, ip, lsl r2
	bx lr
_020E0184:
	mov r1, #0
	mov r0, #0
	bx lr
_020E0190:
	cmn r1, #0x100000
	cmpeq r0, #0
	bhi _020E01A8
	mov r1, #0
	mov r0, #0
	bx lr
_020E01A8:
	mvn r1, #0
	mvn r0, #0
	bx lr
	; .align 2, 0
_020E01B4: .word 0x0000043E
	arm_func_end sub_020E012C

	arm_func_start sub_020E01B8
sub_020E01B8: ; 0x020E01B8
	and r2, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r0, #0
	arm_func_end sub_020E01B8

	arm_func_start sub_020E01C4
sub_020E01C4: ; 0x020E01C4
	mov r1, #0
	bxeq lr
	mov r3, #0x400
	add r3, r3, #0x1e
	clz ip, r0
	mov r0, r0, lsl ip
	sub r3, r3, ip
	mov r1, r0
	mov r0, r1, lsl #0x15
	add r1, r1, r1
	orr r1, r2, r1, lsr #12
	orr r1, r1, r3, lsl #20
	bx lr
	arm_func_end sub_020E01C4

	arm_func_start sub_020E01F8
sub_020E01F8: ; 0x020E01F8
	cmp r0, #0
	arm_func_end sub_020E01F8

	arm_func_start sub_020E01FC
sub_020E01FC: ; 0x020E01FC
	mov r1, #0
	bxeq lr
	mov r3, #0x400
	add r3, r3, #0x1e
	bmi _020E021C
	clz ip, r0
	mov r0, r0, lsl ip
	sub r3, r3, ip
_020E021C:
	mov r1, r0
	mov r0, r1, lsl #0x15
	add r1, r1, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r3, lsl #20
	bx lr
	arm_func_end sub_020E01FC

	arm_func_start sub_020E0234
sub_020E0234: ; 0x020E0234
	stmfd sp!, {r4, r5, r6, r7, lr}
	eor lr, r1, r3
	and lr, lr, #0x80000000
	mov ip, r1, lsr #0x14
	mov r1, r1, lsl #0xb
	orr r1, r1, r0, lsr #21
	mov r0, r0, lsl #0xb
	mov r6, ip, lsl #0x15
	cmnne r6, #0x200000
	beq _020E033C
	orr r1, r1, #0x80000000
	bic ip, ip, #0x800
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	mov r5, r4, lsl #0x15
	cmnne r5, #0x200000
	beq _020E0384
	orr r3, r3, #0x80000000
	bic r4, r4, #0x800
_020E0288:
	add ip, r4, ip
	umull r5, r4, r0, r2
	umull r7, r6, r0, r3
	add r4, r7, r4
	adc r6, r6, #0
	umull r7, r0, r1, r2
	add r4, r7, r4
	adc r0, r0, r6
	umull r7, r2, r1, r3
	adc r1, r2, #0
	add r0, r0, r7
	adc r1, r1, #0
	orr r4, r4, r5
	orrne r0, r0, #1
	cmp r1, #0
	blt _020E02D4
	sub ip, ip, #1
	add r0, r0, r0
	adc r1, r1, r1
_020E02D4:
	add ip, ip, #2
	sub ip, ip, #0x400
	bmi _020E0470
	beq _020E0470
	mov r6, ip, lsl #0x14
	cmn r6, #0x100000
	bmi _020E0570
	mov r2, r0, lsl #0x15
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, ip, lsl #20
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	tst r2, #-0x80000000
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r2, r2, lsl #1
	andeq r2, r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	add r0, r0, #1
	adc r1, r1, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_020E033C:
	bic ip, ip, #0x800
	beq _020E0398
	orr r6, r0, r1, lsl #1
	bne _020E0524
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	mov r5, r4, lsl #0x15
	beq _020E0378
	cmn r5, #0x200000
	bne _020E0510
	orr r5, r2, r3, lsl #1
	beq _020E0510
	b _020E0524
_020E0378:
	orr r5, r3, r2
	beq _020E0538
	b _020E0510
_020E0384:
	bic r4, r4, #0x800
	beq _020E042C
	orr r6, r2, r3, lsl #1
	bne _020E0524
	b _020E0510
_020E0398:
	orr r6, r0, r1, lsl #1
	beq _020E0400
	mov ip, #1
	cmp r1, #0
	bne _020E03BC
	sub ip, ip, #0x20
	mov r1, r0
	mov r0, #0
	bmi _020E03D8
_020E03BC:
	clz r6, r1
	mov r1, r1, lsl r6
	rsb r6, r6, #0x20
	orr r1, r1, r0, lsr r6
	rsb r6, r6, #0x20
	mov r0, r0, lsl r6
	sub ip, ip, r6
_020E03D8:
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	mov r5, r4, lsl #0x15
	cmnne r5, #0x200000
	beq _020E0384
	orr r3, r3, #0x80000000
	bic r4, r4, #0x800
	b _020E0288
_020E0400:
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	mov r5, r4, lsl #0x15
	beq _020E0584
	cmn r5, #0x200000
	bne _020E0584
	orr r6, r2, r3, lsl #1
	beq _020E0538
	b _020E0524
_020E042C:
	orr r5, r2, r3, lsl #1
	beq _020E0584
	mov r4, #1
	cmp r3, #0
	bne _020E0450
	sub r4, r4, #0x20
	mov r3, r2
	mov r2, #0
	bmi _020E0288
_020E0450:
	clz r6, r3
	mov r3, r3, lsl r6
	rsb r6, r6, #0x20
	orr r3, r3, r2, lsr r6
	rsb r6, r6, #0x20
	mov r2, r2, lsl r6
	sub r4, r4, r6
	b _020E0288
_020E0470:
	cmn ip, #0x34
	beq _020E0508
	bmi _020E0560
	mov r2, r1
	mov r3, r0
	add r4, ip, #0x34
	cmp r4, #0x20
	movge r2, r3
	movge r3, #0
	subge r4, r4, #0x20
	rsb r5, r4, #0x20
	mov r2, r2, lsl r4
	orr r2, r2, r3, lsr r5
	mov r3, r3, lsl r4
	orrne r2, r2, #1
	rsb ip, ip, #0xc
	cmp ip, #0x20
	movge r0, r1
	movge r1, #0
	subge ip, ip, #0x20
	rsb r4, ip, #0x20
	mov r0, r0, lsr ip
	orr r0, r0, r1, lsl r4
	orr r1, lr, r1, lsr ip
	cmp r2, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	tst r2, #-0x80000000
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r2, r2, lsl #1
	andeq r2, r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	add r0, r0, #1
	adc r1, r1, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_020E0508:
	orr r0, r0, r1, lsl #1
	b _020E0548
_020E0510:
	ldr r1, _020E0594 ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_020E0524:
	mov r1, r3
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_020E0538:
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_020E0548:
	mov r2, r0
	mov r1, lr
	mov r0, #0
	addne r0, r0, #1
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_020E0560:
	mov r1, lr
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_020E0570:
	ldr r1, _020E0594 ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_020E0584:
	mov r1, lr
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	; .align 2, 0
_020E0594: .word 0x7FF00000
	arm_func_end sub_020E0234

	arm_func_start sub_020E0598
sub_020E0598: ; 0x020E0598
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020E0728 ; =0x7FF00000
	cmp r1, r2
	bhs _020E06E4
	mov ip, r1, lsr #0x14
	beq _020E0690
	bic r1, r1, r2
	orr r1, r1, #0x100000
_020E05B8:
	mov ip, ip, asr #1
	bhs _020E05CC
	sub ip, ip, #1
	mov r0, r0, lsl #1
	adc r1, r1, r1
_020E05CC:
	mov r3, r0, lsl #1
	adc r1, r1, r1
	mov r2, #0
	mov r4, #0
	mov lr, #0x200000
_020E05E0:
	add r6, r4, lr
	cmp r6, r1
	addle r4, r6, lr
	suble r1, r1, r6
	addle r2, r2, lr
	mov r3, r3, lsl #1
	adc r1, r1, r1
	mov lr, lr, lsr #1
	bne _020E05E0
	mov r0, #0
	mov r5, #0
	cmp r1, r4
	cmpeq r3, #-0x80000000
	blo _020E0628
	sub r3, r3, #-0x80000000
	sbc r1, r1, r4
	add r4, r4, #1
	mov r0, #-0x80000000
_020E0628:
	mov r3, r3, lsl #1
	adc r1, r1, r1
	mov lr, #0x40000000
_020E0634:
	add r6, r5, lr
	cmp r4, r1
	cmpeq r6, r3
	bhi _020E0654
	add r5, r6, lr
	sub r3, r3, r6
	sbc r1, r1, r4
	add r0, r0, lr
_020E0654:
	mov r3, r3, lsl #1
	adc r1, r1, r1
	mov lr, lr, lsr #1
	bne _020E0634
	orr r1, r1, r3
	biceq r0, r0, #1
	mov r1, r2, lsr #1
	; movs r0, r0, rxx
	.word 0xe1b00060
	adc r0, r0, #0
	adc r1, r1, #0
	add r1, r1, #0x20000000
	sub r1, r1, #0x100000
	add r1, r1, ip, lsl #20
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E0690:
	cmp r1, #0
	bne _020E06C0
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	mvn ip, #0x13
	clz r5, r0
	mov r0, r0, lsl r5
	sub ip, ip, r5
	mov r1, r0, lsr #0xb
	mov r0, r0, lsl #0x15
	b _020E05B8
_020E06C0:
	clz r2, r1
	mov r1, r1, lsl r2
	rsb r2, r2, #0x2b
	mov r1, r1, lsr #0xb
	orr r1, r1, r0, lsr r2
	rsb r2, r2, #0x20
	mov r0, r0, lsl r2
	rsb ip, r2, #1
	b _020E05B8
_020E06E4:
	tst r1, #-0x80000000
	beq _020E0700
	bic r3, r1, #0x80000000
	cmpeq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	b _020E070C
_020E0700:
	orr r2, r0, r1, lsl #12
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
_020E070C:
	ldr r2, _020E072C ; =0x7FF80000
	orr r1, r1, r2
	ldr r3, _020E0730 ; =0x021D0D40
	mov r4, #0x21
	str r4, [r3, #0]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	; .align 2, 0
_020E0728: .word 0x7FF00000
_020E072C: .word 0x7FF80000
_020E0730: .word 0x021D0D40
	arm_func_end sub_020E0598

	arm_func_start sub_020E0734
sub_020E0734: ; 0x020E0734
	eor r1, r1, r3
	eor r3, r1, r3
	eor r1, r1, r3
	eor r0, r0, r2
	eor r2, r0, r2
	eor r0, r0, r2
	arm_func_end sub_020E0734

	arm_func_start sub_020E074C
sub_020E074C: ; 0x020E074C
	stmfd sp!, {r4, lr}
	eor ip, r1, r3
	eormi r3, r3, #0x80000000
	bmi _020DFC7C
	arm_func_end sub_020E074C
_020E075C:
	sub ip, r0, r2
	sbc lr, r1, r3
	bhs _020E077C
	eor lr, lr, #0x80000000
	add r2, r2, ip
	adc r3, r3, lr
	sub r0, r0, ip
	sbc r1, r1, lr
_020E077C:
	mov lr, #-0x80000000
	mov ip, r1, lsr #0x14
	orr r1, lr, r1, lsl #11
	orr r1, r1, r0, lsr #21
	mov r0, r0, lsl #0xb
	mov r4, ip, lsl #0x15
	cmnne r4, #0x200000
	beq _020E0980
	mov r4, r3, lsr #0x14
	orr r3, lr, r3, lsl #11
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	mov lr, r4, lsl #0x15
	beq _020E09C8
_020E07B4:
	sub r4, ip, r4
	beq _020E085C
	cmp r4, #0x20
	ble _020E07F0
	cmp r4, #0x38
	movge r4, #0x3f
	sub r4, r4, #0x20
	rsb lr, r4, #0x20
	orr lr, r2, r3, lsl lr
	mov r2, r3, lsr r4
	orrne r2, r2, #1
	sub r0, r0, r2
	sbc r1, r1, #0
	bmi _020E0818
	b _020E0908
_020E07F0:
	rsb lr, r4, #0x20
	mov lr, r2, lsl lr
	rsb lr, r4, #0x20
	mov r2, r2, lsr r4
	orr r2, r2, r3, lsl lr
	mov r3, r3, lsr r4
	orrne r2, r2, #1
	sub r0, r0, r2
	sbc r1, r1, r3
	bpl _020E0908
_020E0818:
	mov r2, r0, lsl #0x15
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, ip, lsl #20
	tst r2, #-0x80000000
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r2, r2, lsl #1
	andeq r2, r0, #1
	ldmeqia sp!, {r4, lr}
	bxeq lr
	add r0, r0, #1
	adc r1, r1, #0
	ldmia sp!, {r4, lr}
	bx lr
_020E085C:
	sub r0, r0, r2
	sbc r1, r1, r3
	orr lr, r1, r0
	beq _020E0AEC
	mov lr, ip, lsl #0x14
	and lr, lr, #0x80000000
	bic ip, ip, #0x800
	cmp r1, #0
	bmi _020E08E4
	bne _020E0894
	sub ip, ip, #0x20
	mov r1, r0
	mov r0, #0
	bmi _020E08B0
_020E0894:
	clz r4, r1
	mov r1, r1, lsl r4
	rsb r4, r4, #0x20
	orr r1, r1, r0, lsr r4
	rsb r4, r4, #0x20
	mov r0, r0, lsl r4
	sub ip, ip, r4
_020E08B0:
	cmp ip, #0
	bgt _020E08EC
	rsb ip, ip, #0xc
	cmp ip, #0x20
	movge r0, r1
	movge r1, #0
	subge ip, ip, #0x20
	rsb r4, ip, #0x20
	mov r0, r0, lsr ip
	orr r0, r0, r1, lsl r4
	orr r1, lr, r1, lsr ip
	ldmia sp!, {r4, lr}
	bx lr
_020E08E4:
	cmp r1, #0
	subge ip, ip, #1
_020E08EC:
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, ip, lsl #20
	ldmia sp!, {r4, lr}
	bx lr
_020E0908:
	mov lr, ip, lsl #0x14
	and lr, lr, #0x80000000
	bic ip, ip, #0x800
	cmp r1, #0
	bne _020E092C
	sub ip, ip, #0x20
	mov r1, r0
	mov r0, #0
	bmi _020E0948
_020E092C:
	clz r4, r1
	mov r1, r1, lsl r4
	rsb r4, r4, #0x20
	orr r1, r1, r0, lsr r4
	rsb r4, r4, #0x20
	mov r0, r0, lsl r4
	sub ip, ip, r4
_020E0948:
	cmp ip, #0
	orrgt ip, ip, lr, lsr #20
	bgt _020E0818
	rsb ip, ip, #0xc
	cmp ip, #0x20
	movge r0, r1
	movge r1, #0
	subge ip, ip, #0x20
	rsb r4, ip, #0x20
	mov r0, r0, lsr ip
	orr r0, r0, r1, lsl r4
	orr r1, lr, r1, lsr ip
	ldmia sp!, {r4, lr}
	bx lr
_020E0980:
	cmp ip, #0x800
	movge lr, #-0x80000000
	movlt lr, #0
	bic ip, ip, #0x800
	beq _020E09EC
	orr r4, r0, r1, lsl #1
	bne _020E0AC8
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	mov r4, r4, lsl #0x15
	beq _020E0AB4
	cmn r4, #0x200000
	bne _020E0AB4
	orr r4, r2, r3, lsl #1
	beq _020E0ADC
	b _020E0AC8
_020E09C8:
	cmp r4, #0x800
	movge lr, #-0x80000000
	movlt lr, #0
	bic ip, ip, #0x800
	bic r4, r4, #0x800
	beq _020E0A64
	orr r4, r2, r3, lsl #1
	bne _020E0AC8
	b _020E0AB4
_020E09EC:
	orr r4, r0, r1, lsl #1
	beq _020E0A2C
	mov ip, #1
	bic r1, r1, #0x80000000
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	mov r4, r4, lsl #0x15
	cmnne r4, #0x200000
	mov r4, r4, lsr #0x15
	orr r4, r4, lr, lsr #20
	beq _020E09C8
	orr r3, r3, #0x80000000
	orr ip, ip, lr, lsr #20
	b _020E07B4
_020E0A2C:
	mov ip, r3, lsr #0x14
	mov r1, r3, lsl #0xb
	orr r1, r1, r2, lsr #21
	mov r0, r2, lsl #0xb
	mov r4, ip, lsl #0x15
	beq _020E0A58
	cmn r4, #0x200000
	bne _020E0A80
	orr r4, r0, r1, lsl #1
	bne _020E0ACC
	b _020E0AB4
_020E0A58:
	orr r4, r0, r1, lsl #1
	beq _020E0AEC
	b _020E0A80
_020E0A64:
	orr r4, r2, r3, lsl #1
	beq _020E0A90
	mov r4, #1
	bic r3, r3, #0x80000000
	orr ip, ip, lr, lsr #20
	orr r4, r4, lr, lsr #20
	b _020E07B4
_020E0A80:
	mov r1, r3
	mov r0, r2
	ldmia sp!, {r4, lr}
	bx lr
_020E0A90:
	cmp r1, #0
	subge ip, ip, #1
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, ip, lsl #20
	ldmia sp!, {r4, lr}
	bx lr
_020E0AB4:
	ldr r1, _020E0AFC ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
_020E0AC8:
	mov r1, r3
_020E0ACC:
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmia sp!, {r4, lr}
	bx lr
_020E0ADC:
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmia sp!, {r4, lr}
	bx lr
_020E0AEC:
	mov r1, #0
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	; .align 2, 0
_020E0AFC: .word 0x7FF00000

	arm_func_start sub_020E0B00
sub_020E0B00: ; 0x020E0B00
	eor r2, r0, r1
	eormi r1, r1, #0x80000000
	bmi _020E1AA8
	arm_func_end sub_020E0B00
_020E0B0C:
	sub ip, r0, r1
	sublo r0, r0, ip
	addlo r1, r1, ip
	mov r2, #-0x80000000
	mov r3, r0, lsr #0x17
	orr r0, r2, r0, lsl #8
	and ip, r3, #0xff
	cmpne ip, #0xff
	beq _020E0BA0
	mov ip, r1, lsr #0x17
	orr r1, r2, r1, lsl #8
	and r2, ip, #0xff
	beq _020E0BE0
_020E0B40:
	sub ip, r3, ip
	beq _020E0B58
	rsb r2, ip, #0x20
	mov r2, r1, lsl r2
	mov r1, r1, lsr ip
	orrne r1, r1, #1
_020E0B58:
	add r0, r0, r1
	blo _020E0B78
	and r1, r0, #1
	orr r0, r1, r0, rrx
	add r3, r3, #1
	and r2, r3, #0xff
	cmp r2, #0xff
	beq _020E0CE8
_020E0B78:
	and r1, r0, #0xff
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, r3, lsl #23
	tst r1, #0x80
	bxeq lr
	and r1, r1, #0x7f
	andeq r1, r0, #1
	addne r0, r0, #1
	bx lr
_020E0BA0:
	cmp r3, #0x100
	movge r2, #-0x80000000
	movlt r2, #0
	and r3, r3, #0xff
	beq _020E0C04
	mov r0, r0, lsl #1
	bne _020E0D14
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #9
	and ip, ip, #0xff
	beq _020E0D08
	cmp ip, #0xff
	blt _020E0D08
	cmp r1, #0
	beq _020E0D08
	b _020E0D14
_020E0BE0:
	cmp r3, #0x100
	movge r2, #-0x80000000
	movlt r2, #0
	and r3, r3, #0xff
	and ip, ip, #0xff
	beq _020E0C60
_020E0BF8:
	mov r1, r1, lsl #1
	bne _020E0D14
	b _020E0D08
_020E0C04:
	mov r0, r0, lsl #1
	beq _020E0C3C
	mov r3, #1
	mov r0, r0, lsr #1
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #8
	and ip, ip, #0xff
	beq _020E0C60
	cmp ip, #0xff
	beq _020E0BF8
	orr r1, r1, #0x80000000
	orr r3, r3, r2, lsr #23
	orr ip, ip, r2, lsr #23
	b _020E0B40
_020E0C3C:
	mov r3, r1, lsr #0x17
	mov r0, r1, lsl #9
	and r3, r3, #0xff
	beq _020E0CC8
	cmp r3, #0xff
	blt _020E0CC8
	cmp r0, #0
	beq _020E0D08
	b _020E0D00
_020E0C60:
	mov r1, r1, lsl #1
	beq _020E0CD0
	mov r1, r1, lsr #1
	mov ip, #1
	orr r3, r3, r2, lsr #23
	orr ip, ip, r2, lsr #23
	cmp r0, #0
	bmi _020E0B40
	add r0, r0, r1
	blo _020E0C94
	and r1, r0, #1
	orr r0, r1, r0, rrx
	add ip, ip, #1
_020E0C94:
	cmp r0, #0
	subge ip, ip, #1
	and r1, r0, #0xff
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, ip, lsl #23
	bxeq lr
	tst r1, #0x80
	bxeq lr
	and r1, r1, #0x7f
	andeq r1, r0, #1
	addne r0, r0, #1
	bx lr
_020E0CC8:
	mov r0, r1
	bx lr
_020E0CD0:
	cmp r0, #0
	subge r3, r3, #1
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bx lr
_020E0CE8:
	cmp r3, #0x100
	movge r2, #-0x80000000
	movlt r2, #0
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
_020E0D00:
	mvn r0, #0x80000000
	bx lr
_020E0D08:
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
_020E0D14:
	mvn r0, #0x80000000
	bx lr
_020E0D1C:
	.byte 0x02, 0x01, 0xE0, 0xE3
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start sub_020E0D24
sub_020E0D24: ; 0x020E0D24
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E0D98
	cmn ip, r3, lsl #1
	bhs _020E0DAC
_020E0D38:
	orr ip, r3, r1
	bmi _020E0D68
	cmp r1, r3
	cmpeq r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_020E0D54:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E0D68:
	orr ip, r0, ip, lsl #1
	orr ip, ip, r2
	moveq r0, #1
	mrs ip, cpsr
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	movhs r0, #1
	movlo r0, #0
	bx lr
_020E0D98:
	bne _020E0D54
	cmp r0, #0
	bhi _020E0D54
	cmn ip, r3, lsl #1
	blo _020E0D38
_020E0DAC:
	bne _020E0D54
	cmp r2, #0
	bhi _020E0D54
	b _020E0D38
	arm_func_end sub_020E0D24

	arm_func_start sub_020E0DBC
sub_020E0DBC: ; 0x020E0DBC
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E0E30
	cmn ip, r3, lsl #1
	bhs _020E0E44
_020E0DD0:
	orr ip, r3, r1
	bmi _020E0E00
	cmp r1, r3
	cmpeq r0, r2
	movhi r0, #1
	movls r0, #0
	bx lr
_020E0DEC:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E0E00:
	orr ip, r0, ip, lsl #1
	orr ip, ip, r2
	moveq r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	msr cpsr_flg, ip
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	movhi r0, #1
	movls r0, #0
	bx lr
_020E0E30:
	bne _020E0DEC
	cmp r0, #0
	bhi _020E0DEC
	cmn ip, r3, lsl #1
	blo _020E0DD0
_020E0E44:
	bne _020E0DEC
	cmp r2, #0
	bhi _020E0DEC
	b _020E0DD0
	arm_func_end sub_020E0DBC

	arm_func_start sub_020E0E54
sub_020E0E54: ; 0x020E0E54
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E0ED4
	cmn ip, r3, lsl #1
	bhs _020E0EE8
_020E0E68:
	orr ip, r3, r1
	bmi _020E0E9C
	cmp r1, r3
	cmpeq r0, r2
	movls r0, #1
	movhi r0, #0
	bx lr
_020E0E84:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E0E9C:
	orr ip, r0, ip, lsl #1
	orr ip, ip, r2
	moveq r0, #1
	bne _020E0EC0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	orr ip, ip, #0x40000000
	msr cpsr_flg, ip
	bxeq lr
_020E0EC0:
	cmp r3, r1
	cmpeq r2, r0
	movls r0, #1
	movhi r0, #0
	bx lr
_020E0ED4:
	bne _020E0E84
	cmp r0, #0
	bhi _020E0E84
	cmn ip, r3, lsl #1
	blo _020E0E68
_020E0EE8:
	bne _020E0E84
	cmp r2, #0
	bhi _020E0E84
	b _020E0E68
	arm_func_end sub_020E0E54

	arm_func_start sub_020E0EF8
sub_020E0EF8: ; 0x020E0EF8
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E0F70
	cmn ip, r3, lsl #1
	bhs _020E0F84
_020E0F0C:
	orr ip, r3, r1
	bmi _020E0F3C
	cmp r1, r3
	cmpeq r0, r2
	movlo r0, #1
	movhs r0, #0
	bx lr
_020E0F28:
	mov r0, #0
	mrs ip, cpsr
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E0F3C:
	orr ip, r0, ip, lsl #1
	orr ip, ip, r2
	moveq r0, #0
	bne _020E0F5C
	mrs ip, cpsr
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bxeq lr
_020E0F5C:
	cmp r3, r1
	cmpeq r2, r0
	movlo r0, #1
	movhs r0, #0
	bx lr
_020E0F70:
	bne _020E0F28
	cmp r0, #0
	bhi _020E0F28
	cmn ip, r3, lsl #1
	blo _020E0F0C
_020E0F84:
	bne _020E0F28
	cmp r2, #0
	bhi _020E0F28
	b _020E0F0C
	arm_func_end sub_020E0EF8

	arm_func_start sub_020E0F94
sub_020E0F94: ; 0x020E0F94
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E0FFC
	cmn ip, r3, lsl #1
	bhs _020E1010
_020E0FA8:
	orr ip, r3, r1
	bmi _020E0FD8
	cmp r1, r3
	cmpeq r0, r2
	moveq r0, #1
	movne r0, #0
	bx lr
_020E0FC4:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E0FD8:
	orr ip, r0, ip, lsl #1
	orr ip, ip, r2
	moveq r0, #1
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	moveq r0, #1
	movne r0, #0
	bx lr
_020E0FFC:
	bne _020E0FC4
	cmp r0, #0
	bhi _020E0FC4
	cmn ip, r3, lsl #1
	blo _020E0FA8
_020E1010:
	bne _020E0FC4
	cmp r2, #0
	bhi _020E0FC4
	b _020E0FA8
	arm_func_end sub_020E0F94

	arm_func_start sub_020E1020
sub_020E1020: ; 0x020E1020
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E1088
	cmn ip, r3, lsl #1
	bhs _020E109C
_020E1034:
	orr ip, r3, r1
	bmi _020E1064
	cmp r1, r3
	cmpeq r0, r2
	movne r0, #1
	moveq r0, #0
	bx lr
_020E1050:
	mov r0, #1
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E1064:
	orr ip, r0, ip, lsl #1
	orr ip, ip, r2
	moveq r0, #0
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	movne r0, #1
	moveq r0, #0
	bx lr
_020E1088:
	bne _020E1050
	cmp r0, #0
	bhi _020E1050
	cmn ip, r3, lsl #1
	blo _020E1034
_020E109C:
	bne _020E1050
	cmp r2, #0
	bhi _020E1050
	b _020E1034
	arm_func_end sub_020E1020

	arm_func_start sub_020E10AC
sub_020E10AC: ; 0x020E10AC
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	cmphs r3, r1, lsl #1
	blo _020E10F4
	cmp r0, #0
	bicmi r0, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r1, #0
	bicmi r1, r1, #0x80000000
	rsbmi r1, r1, #0
	cmp r0, r1
	movge r0, #1
	movlt r0, #0
	mrs ip, cpsr
	biclt ip, ip, #0x20000000
	orrge ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E10F4:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end sub_020E10AC

	arm_func_start sub_020E1108
sub_020E1108: ; 0x020E1108
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	cmphs r3, r1, lsl #1
	blo _020E1150
	cmp r0, #0
	bicmi r0, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r1, #0
	bicmi r1, r1, #0x80000000
	rsbmi r1, r1, #0
	cmp r0, r1
	movgt r0, #1
	movle r0, #0
	mrs ip, cpsr
	bicle ip, ip, #0x20000000
	orrgt ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E1150:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end sub_020E1108

	arm_func_start sub_020E1164
sub_020E1164: ; 0x020E1164
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	cmphs r3, r1, lsl #1
	blo _020E11B4
	cmp r0, #0
	bicmi r0, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r1, #0
	bicmi r1, r1, #0x80000000
	rsbmi r1, r1, #0
	cmp r0, r1
	movle r0, #1
	movgt r0, #0
	mrs ip, cpsr
	orrgt ip, ip, #0x20000000
	bicgt ip, ip, #0x40000000
	bicle ip, ip, #0x20000000
	orrle ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E11B4:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end sub_020E1164

	arm_func_start sub_020E11CC
sub_020E11CC: ; 0x020E11CC
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	cmphs r3, r1, lsl #1
	blo _020E1214
	cmp r0, #0
	bicmi r0, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r1, #0
	bicmi r1, r1, #0x80000000
	rsbmi r1, r1, #0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	mrs ip, cpsr
	orrge ip, ip, #0x20000000
	biclt ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E1214:
	mov r0, #0
	mrs ip, cpsr
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end sub_020E11CC

	arm_func_start sub_020E1228
sub_020E1228: ; 0x020E1228
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	blo _020E127C
	cmp r3, r1, lsl #1
	blo _020E127C
	orr r3, r0, r1
	mov r3, r3, lsl #1
	moveq r0, #1
	bne _020E125C
	mrs ip, cpsr
	orr ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E125C:
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	mrs ip, cpsr
	orreq ip, ip, #0x40000000
	bicne ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E127C:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end sub_020E1228

	arm_func_start sub_020E1290
sub_020E1290: ; 0x020E1290
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	blo _020E12E4
	cmp r3, r1, lsl #1
	blo _020E12E4
	orr r3, r0, r1
	mov r3, r3, lsl #1
	moveq r0, #0
	bne _020E12C4
	mrs ip, cpsr
	orr ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E12C4:
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	mrs ip, cpsr
	bicne ip, ip, #0x40000000
	orreq ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E12E4:
	mov r0, #1
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end sub_020E1290

	arm_func_start sub_020E12F8
sub_020E12F8: ; 0x020E12F8
	eor r0, r0, r1
	eor r1, r0, r1
	eor r0, r0, r1
	arm_func_end sub_020E12F8

	arm_func_start sub_020E1304
sub_020E1304: ; 0x020E1304
	stmdb sp!, {lr}
	mov ip, #0xff
	and r3, ip, r0, lsr #23
	cmpne r3, #0xff
	beq _020E14D8
	and ip, ip, r1, lsr #23
	cmpne ip, #0xff
	beq _020E1514
	orr r1, r1, #0x800000
	orr r0, r0, #0x800000
	bic r2, r0, #0xff000000
	bic lr, r1, #0xff000000
_020E1334:
	cmp r2, lr
	movlo r2, r2, lsl #1
	sublo r3, r3, #1
	teq r0, r1
	sub r0, pc, #0x94
	ldrb r1, [r0, lr, lsr #15]
	rsb lr, lr, #0
	mov r0, lr, asr #1
	mul r0, r1, r0
	add r0, r0, #-0x80000000
	mov r0, r0, lsr #6
	mul r0, r1, r0
	mov r0, r0, lsr #0xe
	mul r1, lr, r1
	sub ip, r3, ip
	mov r1, r1, lsr #0xc
	mul r1, r0, r1
	mov r0, r0, lsl #0xe
	add r0, r0, r1, lsr #15
	umull r1, r0, r2, r0
	mov r3, r0
	orrmi r0, r0, #0x80000000
	add ip, ip, #0x7e
	bmi _020E15DC
	cmp ip, #0xfe
	bge _020E1690
	add r0, r0, ip, lsl #23
	mov ip, r1, lsr #0x1c
	cmp ip, #7
	beq _020E14B8
	add r0, r0, r1, lsr #31
	ldmia sp!, {lr}
	bx lr
_020E13B8:
	.byte 0xFF, 0xFF, 0xFE, 0xFD, 0xFC, 0xFB, 0xFA, 0xF9
	.byte 0xF8, 0xF7, 0xF6, 0xF5, 0xF4, 0xF3, 0xF2, 0xF1, 0xF0, 0xF0, 0xEF, 0xEE, 0xED, 0xEC, 0xEB, 0xEA
	.byte 0xEA, 0xE9, 0xE8, 0xE7, 0xE6, 0xE6, 0xE5, 0xE4, 0xE3, 0xE2, 0xE2, 0xE1, 0xE0, 0xDF, 0xDF, 0xDE
	.byte 0xDD, 0xDC, 0xDC, 0xDB, 0xDA, 0xD9, 0xD9, 0xD8, 0xD7, 0xD7, 0xD6, 0xD5, 0xD4, 0xD4, 0xD3, 0xD2
	.byte 0xD2, 0xD1, 0xD0, 0xD0, 0xCF, 0xCE, 0xCE, 0xCD, 0xCC, 0xCC, 0xCB, 0xCB, 0xCA, 0xC9, 0xC9, 0xC8
	.byte 0xC8, 0xC7, 0xC6, 0xC6, 0xC5, 0xC5, 0xC4, 0xC3, 0xC3, 0xC2, 0xC2, 0xC1, 0xC0, 0xC0, 0xBF, 0xBF
	.byte 0xBE, 0xBE, 0xBD, 0xBD, 0xBC, 0xBC, 0xBB, 0xBA, 0xBA, 0xB9, 0xB9, 0xB8, 0xB8, 0xB7, 0xB7, 0xB6
	.byte 0xB6, 0xB5, 0xB5, 0xB4, 0xB4, 0xB3, 0xB3, 0xB2, 0xB2, 0xB1, 0xB1, 0xB0, 0xB0, 0xAF, 0xAF, 0xAF
	.byte 0xAE, 0xAE, 0xAD, 0xAD, 0xAC, 0xAC, 0xAB, 0xAB, 0xAA, 0xAA, 0xAA, 0xA9, 0xA9, 0xA8, 0xA8, 0xA7
	.byte 0xA7, 0xA7, 0xA6, 0xA6, 0xA5, 0xA5, 0xA4, 0xA4, 0xA4, 0xA3, 0xA3, 0xA2, 0xA2, 0xA2, 0xA1, 0xA1
	.byte 0xA0, 0xA0, 0xA0, 0x9F, 0x9F, 0x9E, 0x9E, 0x9E, 0x9D, 0x9D, 0x9D, 0x9C, 0x9C, 0x9B, 0x9B, 0x9B
	.byte 0x9A, 0x9A, 0x9A, 0x99, 0x99, 0x99, 0x98, 0x98, 0x98, 0x97, 0x97, 0x96, 0x96, 0x96, 0x95, 0x95
	.byte 0x95, 0x94, 0x94, 0x94, 0x93, 0x93, 0x93, 0x92, 0x92, 0x92, 0x91, 0x91, 0x91, 0x91, 0x90, 0x90
	.byte 0x90, 0x8F, 0x8F, 0x8F, 0x8E, 0x8E, 0x8E, 0x8D, 0x8D, 0x8D, 0x8C, 0x8C, 0x8C, 0x8C, 0x8B, 0x8B
	.byte 0x8B, 0x8A, 0x8A, 0x8A, 0x8A, 0x89, 0x89, 0x89, 0x88, 0x88, 0x88, 0x88, 0x87, 0x87, 0x87, 0x86
	.byte 0x86, 0x86, 0x86, 0x85, 0x85, 0x85, 0x85, 0x84, 0x84, 0x84, 0x83, 0x83, 0x83, 0x83, 0x82, 0x82
	.byte 0x82, 0x82, 0x81, 0x81, 0x81, 0x81, 0x80, 0x80
_020E14B8:
	mov r1, r3, lsl #1
	add r1, r1, #1
	rsb lr, lr, #0
	mul r1, lr, r1
	cmp r1, r2, lsl #24
	addmi r0, r0, #1
	ldmia sp!, {lr}
	bx lr
_020E14D8:
	eor lr, r0, r1
	and lr, lr, #0x80000000
	cmp r3, #0
	beq _020E1530
	mov r0, r0, lsl #9
	bne _020E1678
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #9
	and ip, ip, #0xff
	beq _020E1668
	cmp ip, #0xff
	blt _020E1668
	cmp r1, #0
	beq _020E1684
	b _020E1660
_020E1514:
	eor lr, r0, r1
	and lr, lr, #0x80000000
	cmp ip, #0
	beq _020E1594
_020E1524:
	mov r1, r1, lsl #9
	bne _020E1660
	b _020E16B0
_020E1530:
	mov r2, r0, lsl #9
	beq _020E1564
	clz r3, r2
	mov r2, r2, lsl r3
	rsb r3, r3, #0
	mov r2, r2, lsr #8
	and ip, ip, r1, lsr #23
	beq _020E15BC
	cmp ip, #0xff
	beq _020E1524
	orr r1, r1, #0x800000
	bic lr, r1, #0xff000000
	b _020E1334
_020E1564:
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #9
	and ip, ip, #0xff
	beq _020E1588
	cmp ip, #0xff
	blt _020E16B0
	cmp r1, #0
	beq _020E16B0
	b _020E1660
_020E1588:
	cmp r1, #0
	beq _020E1684
	b _020E16B0
_020E1594:
	mov ip, r1, lsl #9
	beq _020E1668
	mov lr, ip
	clz ip, lr
	mov lr, lr, lsl ip
	rsb ip, ip, #0
	mov lr, lr, lsr #8
	orr r0, r0, #0x800000
	bic r2, r0, #0xff000000
	b _020E1334
_020E15BC:
	mov ip, r1, lsl #9
	beq _020E1668
	mov lr, ip
	clz ip, lr
	mov lr, lr, lsl ip
	rsb ip, ip, #0
	mov lr, lr, lsr #8
	b _020E1334
_020E15DC:
	and r0, r0, #0x80000000
	cmn ip, #0x18
	beq _020E1650
	bmi _020E16A8
	add r1, ip, #0x17
	mov r2, r2, lsl r1
	rsb ip, ip, #0
	mov r3, r3, lsr ip
	orr r0, r0, r3
	rsb lr, lr, #0
	mul r1, lr, r1
	cmp r1, r2
	ldmeqia sp!, {lr}
	bxeq lr
	add r1, r1, lr
	cmp r1, r2
	beq _020E1644
	addmi r0, r0, #1
	subpl r1, r1, lr
	add r1, lr, r1, lsl #1
	cmp r1, r2, lsl #1
	and r3, r0, #1
	addmi r0, r0, #1
	addeq r0, r0, r3
	ldmia sp!, {lr}
	bx lr
_020E1644:
	add r0, r0, #1
	ldmia sp!, {lr}
	bx lr
_020E1650:
	cmn r2, lr
	addne r0, r0, #1
	ldmia sp!, {lr}
	bx lr
_020E1660:
	mov r0, r1
	b _020E1678
_020E1668:
	mov r0, #-0x1000000
	orr r0, lr, r0, lsr #1
	ldmia sp!, {lr}
	bx lr
_020E1678:
	mvn r0, #0x80000000
	ldmia sp!, {lr}
	bx lr
_020E1684:
	mvn r0, #0x80000000
	ldmia sp!, {lr}
	bx lr
_020E1690:
	tst r0, #-0x80000000
	mov r0, #-0x1000000
	movne r0, r0, asr #1
	moveq r0, r0, lsr #1
	ldmia sp!, {lr}
	bx lr
_020E16A8:
	ldmia sp!, {lr}
	bx lr
_020E16B0:
	mov r0, lr
	ldmia sp!, {lr}
	bx lr
	arm_func_end sub_020E1304

	arm_func_start sub_020E16BC
sub_020E16BC: ; 0x020E16BC
	and r2, r0, #0x80000000
	mov ip, r0, lsr #0x17
	mov r3, r0, lsl #9
	and ip, ip, #0xff
	beq _020E16EC
	cmp ip, #0xff
	beq _020E1718
_020E16D8:
	add ip, ip, #0x380
	mov r0, r3, lsl #0x14
	orr r1, r2, r3, lsr #12
	orr r1, r1, ip, lsl #20
	bx lr
_020E16EC:
	cmp r3, #0
	bne _020E1700
	mov r1, r2
	mov r0, #0
	bx lr
_020E1700:
	mov r3, r3, lsr #1
	clz ip, r3
	mov r3, r3, lsl ip
	rsb ip, ip, #1
	add r3, r3, r3
	b _020E16D8
_020E1718:
	cmp r3, #0
	bhi _020E1730
	ldr r1, _020E173C ; =0x7FF00000
	orr r1, r1, r2
	mov r0, #0
	bx lr
_020E1730:
	mvn r0, #0
	bic r1, r0, #0x80000000
	bx lr
	; .align 2, 0
_020E173C: .word 0x7FF00000
	arm_func_end sub_020E16BC

	arm_func_start sub_020E1740
sub_020E1740: ; 0x020E1740
	bic r1, r0, #0x80000000
	mov r2, #0x9e
	sub r2, r2, r1, lsr #23
	ble _020E1768
	mov r1, r1, lsl #8
	orr r1, r1, #0x80000000
	cmp r0, #0
	mov r0, r1, lsr r2
	rsbmi r0, r0, #0
	bx lr
_020E1768:
	mvn r0, r0, asr #31
	add r0, r0, #-0x80000000
	bx lr
	arm_func_end sub_020E1740

	arm_func_start sub_020E1774
sub_020E1774: ; 0x020E1774
	tst r0, #-0x80000000
	bne _020E1798
	mov r1, #0x9e
	sub r1, r1, r0, lsr #23
	blt _020E17AC
	mov r2, r0, lsl #8
	orr r0, r2, #0x80000000
	mov r0, r0, lsr r1
	bx lr
_020E1798:
	mov r2, #-0x1000000
	cmp r2, r0, lsl #1
	movhs r0, #0
	mvnlo r0, #0
	bx lr
_020E17AC:
	mvn r0, #0
	bx lr
	arm_func_end sub_020E1774

	arm_func_start sub_020E17B4
sub_020E17B4: ; 0x020E17B4
	and r2, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r0, #0
	arm_func_end sub_020E17B4
_020E17C0:
	bxeq lr
	clz r3, r0
	mov r0, r0, lsl r3
	rsb r3, r3, #0x9e
	and r1, r0, #0xff
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bxeq lr
	tst r1, #0x80
	bxeq lr
	and r3, r1, #0x7f
	andeq r3, r0, #1
	addne r0, r0, #1
	bx lr

	arm_func_start sub_020E17FC
sub_020E17FC: ; 0x020E17FC
	cmp r0, #0
	arm_func_end sub_020E17FC

	arm_func_start sub_020E1800
sub_020E1800: ; 0x020E1800
	bxeq lr
	mov r3, #0x9e
	bmi _020E1818
	clz ip, r0
	mov r0, r0, lsl ip
	sub r3, r3, ip
_020E1818:
	and r2, r0, #0xff
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bxeq lr
	tst r2, #0x80
	bxeq lr
	and r1, r2, #0x7f
	andeq r1, r0, #1
	addne r0, r0, #1
	bx lr
	arm_func_end sub_020E1800

	arm_func_start sub_020E1844
sub_020E1844: ; 0x020E1844
	and r2, r1, #0x80000000
	beq _020E1854
	rsb r0, r0, #0
	rsc r1, r1, #0
_020E1854:
	cmp r1, #0
	bne _020E1864
	mov r0, r0
	b _020E17C0
_020E1864:
	clz r3, r1
	mov r1, r1, lsl r3
	rsb r3, r3, #0x20
	orr r1, r1, r0, lsr r3
	rsb ip, r3, #0x20
	mov r0, r0, lsl ip
	orrne r1, r1, #1
	add r3, r3, #0x9e
	and ip, r1, #0xff
	add r0, r1, r1
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bxeq lr
	tst ip, #0x80
	bxeq lr
	and r3, ip, #0x7f
	andeq r3, r0, #1
	addne r0, r0, #1
	bx lr
	arm_func_end sub_020E1844

	arm_func_start sub_020E18B0
sub_020E18B0: ; 0x020E18B0
	eor r2, r0, r1
	and r2, r2, #0x80000000
	mov ip, #0xff
	and r3, ip, r0, lsr #23
	mov r0, r0, lsl #8
	cmpne r3, #0xff
	beq _020E192C
	orr r0, r0, #0x80000000
	and ip, ip, r1, lsr #23
	mov r1, r1, lsl #8
	cmpne ip, #0xff
	beq _020E196C
	orr r1, r1, #0x80000000
_020E18E4:
	add ip, r3, ip
	umull r1, r3, r0, r1
	mov r0, r3
	addpl r0, r0, r0
	subpl ip, ip, #1
	sub ip, ip, #0x7f
	bmi _020E19F8
	cmp ip, #0xfe
	bge _020E1A64
	and r3, r0, #0xff
	orr r0, r2, r0, lsr #8
	add r0, r0, ip, lsl #23
	tst r3, #0x80
	bxeq lr
	orr r1, r1, r3, lsl #25
	andeq r3, r0, #1
	addne r0, r0, #1
	bx lr
_020E192C:
	cmp r3, #0
	beq _020E1980
	mov r0, r0, lsl #1
	bne _020E1A54
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #9
	and ip, ip, #0xff
	beq _020E1960
	cmp ip, #0xff
	blt _020E1A48
	cmp r1, #0
	beq _020E1A48
	b _020E1A54
_020E1960:
	cmp r1, #0
	beq _020E1A5C
	b _020E1A48
_020E196C:
	cmp ip, #0
	beq _020E19DC
_020E1974:
	mov r1, r1, lsl #1
	bne _020E1A54
	b _020E1A48
_020E1980:
	mov r0, r0, lsl #1
	beq _020E19B8
	mov r0, r0, lsr #1
	clz r3, r0
	mov r0, r0, lsl r3
	rsb r3, r3, #1
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #8
	and ip, ip, #0xff
	beq _020E19DC
	cmp ip, #0xff
	beq _020E1974
	orr r1, r1, #0x80000000
	b _020E18E4
_020E19B8:
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #9
	and ip, ip, #0xff
	beq _020E1A88
	cmp ip, #0xff
	blt _020E1A88
	cmp r1, #0
	beq _020E1A5C
	b _020E1A54
_020E19DC:
	mov r1, r1, lsl #1
	beq _020E1A88
	mov r1, r1, lsr #1
	clz ip, r1
	mov r1, r1, lsl ip
	rsb ip, ip, #1
	b _020E18E4
_020E19F8:
	cmn ip, #0x18
	beq _020E1A40
	bmi _020E1A80
	cmp r1, #0
	orrne r0, r0, #1
	mov r3, r0
	mov r0, r0, lsr #8
	rsb ip, ip, #0
	orr r0, r2, r0, lsr ip
	rsb ip, ip, #0x18
	mov r1, r3, lsl ip
	bxeq lr
	tst r1, #-0x80000000
	bxeq lr
	mov r1, r1, lsl #1
	andeq r1, r0, #1
	addne r0, r0, #1
	bx lr
_020E1A40:
	mov r0, r0, lsl #1
	b _020E1A70
	arm_func_end sub_020E18B0
_020E1A48:
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
_020E1A54:
	mvn r0, #0x80000000
	bx lr
_020E1A5C:
	mvn r0, #0x80000000
	bx lr
_020E1A64:
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
_020E1A70:
	mov r1, r0
	mov r0, r2
	addne r0, r0, #1
	bx lr
_020E1A80:
	mov r0, r2
	bx lr
_020E1A88:
	mov r0, r2
	bx lr

	arm_func_start sub_020E1A90
sub_020E1A90: ; 0x020E1A90
	eor r0, r0, r1
	eor r1, r0, r1
	eor r0, r0, r1
	arm_func_end sub_020E1A90

	arm_func_start sub_020E1A9C
sub_020E1A9C: ; 0x020E1A9C
	eor r2, r0, r1
	eormi r1, r1, #0x80000000
	bmi _020E0B0C
	arm_func_end sub_020E1A9C
_020E1AA8:
	sub ip, r0, r1
	eorlo ip, ip, #0x80000000
	sublo r0, r0, ip
	addlo r1, r1, ip
	mov r2, #-0x80000000
	mov r3, r0, lsr #0x17
	orr r0, r2, r0, lsl #8
	and ip, r3, #0xff
	cmpne ip, #0xff
	beq _020E1BC4
	mov ip, r1, lsr #0x17
	orr r1, r2, r1, lsl #8
	and r2, ip, #0xff
	beq _020E1C04
_020E1AE0:
	sub ip, r3, ip
	beq _020E1B28
	rsb r2, ip, #0x20
	mov r2, r1, lsl r2
	mov r1, r1, lsr ip
	orrne r1, r1, #1
	sub r0, r0, r1
	bpl _020E1B6C
	and r1, r0, #0xff
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, r3, lsl #23
	tst r1, #0x80
	bxeq lr
	and r1, r1, #0x7f
	andeq r1, r0, #1
	addne r0, r0, #1
	bx lr
_020E1B28:
	sub r0, r0, r1
	beq _020E1CD0
	mov r2, r3, lsl #0x17
	and r2, r2, #0x80000000
	bic r3, r3, #0x100
	clz ip, r0
	mov r0, r0, lsl ip
	sub r3, r3, ip
	cmp r3, #0
	bgt _020E1B5C
	rsb r3, r3, #9
	orr r0, r2, r0, lsr r3
	bx lr
_020E1B5C:
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bx lr
_020E1B6C:
	mov r2, r3, lsl #0x17
	and r2, r2, #0x80000000
	bic r3, r3, #0x100
	clz ip, r0
	mov r0, r0, lsl ip
	sub r3, r3, ip
	cmp r3, #0
	bgt _020E1B98
	rsb r3, r3, #9
	orr r0, r2, r0, lsr r3
	bx lr
_020E1B98:
	and r1, r0, #0xff
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bxeq lr
	tst r1, #0x80
	bxeq lr
	and r1, r1, #0x7f
	andeq r1, r0, #1
	addne r0, r0, #1
	bx lr
_020E1BC4:
	cmp r3, #0x100
	movge r2, #-0x80000000
	movlt r2, #0
	and r3, r3, #0xff
	beq _020E1C2C
	mov r0, r0, lsl #1
	bne _020E1D04
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #9
	and ip, ip, #0xff
	beq _020E1CF8
	cmp ip, #0xff
	blt _020E1CF8
	cmp r1, #0
	beq _020E1D0C
	b _020E1D04
_020E1C04:
	cmp ip, #0x100
	movge r2, #-0x80000000
	movlt r2, #0
	and r3, r3, #0xff
	and ip, ip, #0xff
	beq _020E1C94
_020E1C1C:
	eor r2, r2, #0x80000000
	mov r1, r1, lsl #1
	bne _020E1D04
	b _020E1CF8
_020E1C2C:
	mov r0, r0, lsl #1
	beq _020E1C64
	mov r0, r0, lsr #1
	mov r3, #1
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #8
	and ip, ip, #0xff
	beq _020E1C94
	cmp ip, #0xff
	beq _020E1C1C
	orr r1, r1, #0x80000000
	orr r3, r3, r2, lsr #23
	orr ip, ip, r2, lsr #23
	b _020E1AE0
_020E1C64:
	mov r3, r1, lsr #0x17
	mov r0, r1, lsl #9
	and r2, r3, #0xff
	beq _020E1C88
	cmp r2, #0xff
	blt _020E1CB0
	cmp r0, #0
	bne _020E1CF0
	b _020E1CF8
_020E1C88:
	cmp r0, #0
	beq _020E1CD0
	b _020E1CB0
_020E1C94:
	mov r1, r1, lsl #1
	beq _020E1CB8
	mov r1, r1, lsr #1
	mov ip, #1
	orr ip, ip, r2, lsr #23
	orr r3, r3, r2, lsr #23
	b _020E1AE0
_020E1CB0:
	mov r0, r1
	bx lr
_020E1CB8:
	cmp r0, #0
	subge r3, r3, #1
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bx lr
_020E1CD0:
	mov r0, #0
	bx lr
_020E1CD8:
	.byte 0x00, 0x00, 0x50, 0xE3, 0x01, 0x30, 0x53, 0xA2
	.byte 0x00, 0x00, 0x80, 0xE0, 0xA0, 0x04, 0xA0, 0xE1, 0x83, 0x0B, 0x80, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1
_020E1CF0:
	mvn r0, #0x80000000
	bx lr
_020E1CF8:
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
_020E1D04:
	mvn r0, #0x80000000
	bx lr
_020E1D0C:
	mvn r0, #0x80000000
	bx lr

	arm_func_start sub_020E1D14
sub_020E1D14: ; 0x020E1D14
	stmfd sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov r4, r1
	orr r4, r4, #1
	b _020E1D34
	arm_func_end sub_020E1D14

	arm_func_start sub_020E1D24
sub_020E1D24: ; 0x020E1D24
	stmfd sp!, {r4, r5, r6, r7, fp, ip, lr}
	eor r4, r1, r3
	mov r4, r4, asr #1
	mov r4, r4, lsl #1
_020E1D34:
	orr r5, r3, r2
	bne _020E1D44
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_020E1D44:
	mov r5, r0, lsr #0x1f
	add r5, r5, r1
	mov r6, r2, lsr #0x1f
	add r6, r6, r3
	orr r6, r5, r6
	bne _020E1D78
	mov r1, r2
	bl sub_020E1F6C
	and r4, r4, #1
	movne r0, r1
	mov r1, r0, asr #0x1f
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_020E1D78:
	cmp r1, #0
	bge _020E1D88
	rsb r0, r0, #0
	rsc r1, r1, #0
_020E1D88:
	cmp r3, #0
	bge _020E1D98
	rsb r2, r2, #0
	rsc r3, r3, #0
_020E1D98:
	orr r5, r1, r0
	beq _020E1EBC
	mov r5, #0
	mov r6, #1
	cmp r3, #0
	bmi _020E1DC4
_020E1DB0:
	add r5, r5, #1
	add r2, r2, r2
	adc r3, r3, r3
	bpl _020E1DB0
	add r6, r6, r5
_020E1DC4:
	cmp r1, #0
	blt _020E1DE4
_020E1DCC:
	cmp r6, #1
	beq _020E1DE4
	sub r6, r6, #1
	add r0, r0, r0
	adc r1, r1, r1
	bpl _020E1DCC
_020E1DE4:
	mov r7, #0
	mov ip, #0
	mov fp, #0
	b _020E1E0C
_020E1DF4:
	orr ip, ip, #1
	sub r6, r6, #1
	beq _020E1E64
	add r0, r0, r0
	adc r1, r1, r1
	adc r7, r7, r7
_020E1E0C:
	sub r0, r0, r2
	sbc r1, r1, r3
	sbc r7, r7, #0
	add ip, ip, ip
	adc fp, fp, fp
	cmp r7, #0
	bge _020E1DF4
_020E1E28:
	sub r6, r6, #1
	beq _020E1E5C
	add r0, r0, r0
	adc r1, r1, r1
	adc r7, r7, r7
	add r0, r0, r2
	adc r1, r1, r3
	adc r7, r7, #0
	add ip, ip, ip
	adc fp, fp, fp
	cmp r7, #0
	bge _020E1DF4
	b _020E1E28
_020E1E5C:
	add r0, r0, r2
	adc r1, r1, r3
_020E1E64:
	and r7, r4, #1
	moveq r0, ip
	moveq r1, fp
	beq _020E1E9C
	sub r7, r5, #0x20
	movge r0, r1, lsr r7
	bge _020E1EC0
	rsb r7, r5, #0x20
	mov r0, r0, lsr r5
	orr r0, r0, r1, lsl r7
	mov r1, r1, lsr r5
	b _020E1E9C
_020E1E94:
	.byte 0x31, 0x07, 0xA0, 0xE1, 0x00, 0x10, 0xA0, 0xE3
_020E1E9C:
	cmp r4, #0
	blt _020E1EAC
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_020E1EAC:
	rsb r0, r0, #0
	rsc r1, r1, #0
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_020E1EBC:
	mov r0, #0
_020E1EC0:
	mov r1, #0
	cmp r4, #0
	blt _020E1EAC
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
	arm_func_end sub_020E1D24

	arm_func_start sub_020E1ED4
sub_020E1ED4: ; 0x020E1ED4
	stmfd sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov r4, #0
	b _020E1EE8
	arm_func_end sub_020E1ED4

	arm_func_start sub_020E1EE0
sub_020E1EE0: ; 0x020E1EE0
	stmfd sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov r4, #1
_020E1EE8:
	orr r5, r3, r2
	bne _020E1EF8
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_020E1EF8:
	orr r5, r1, r3
	bne _020E1D98
	mov r1, r2
	bl sub_020E2180
	cmp r4, #0
	movne r0, r1
	mov r1, #0
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
	arm_func_end sub_020E1EE0

	arm_func_start sub_020E1F1C
sub_020E1F1C: ; 0x020E1F1C
	stmfd sp!, {r4, r5, lr}
	umull r5, r4, r0, r2
	mla r4, r0, r3, r4
	mla r4, r2, r1, r4
	mov r1, r4
	mov r0, r5
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end sub_020E1F1C

	arm_func_start sub_020E1F3C
sub_020E1F3C: ; 0x020E1F3C
	and r2, r2, #0x3f
	bxeq lr
	sub r3, r2, #0x20
	bge _020E1F60
	rsb r3, r2, #0x20
	mov r1, r1, lsl r2
	orr r1, r1, r0, lsr r3
	mov r0, r0, lsl r2
	bx lr
_020E1F60:
	mov r1, r0, lsl r3
	mov r0, #0
	bx lr
	arm_func_end sub_020E1F3C

	arm_func_start sub_020E1F6C
sub_020E1F6C: ; 0x020E1F6C
	eor ip, r0, r1
	and ip, ip, #0x80000000
	cmp r0, #0
	rsblt r0, r0, #0
	addlt ip, ip, #1
	cmp r1, #0
	rsblt r1, r1, #0
	beq _020E2164
	cmp r0, r1
	movlo r1, r0
	movlo r0, #0
	blo _020E2164
	mov r2, #0x1c
	mov r3, r0, lsr #4
	cmp r1, r3, lsr #12
	suble r2, r2, #0x10
	movle r3, r3, lsr #0x10
	cmp r1, r3, lsr #4
	suble r2, r2, #8
	movle r3, r3, lsr #8
	cmp r1, r3
	suble r2, r2, #4
	movle r3, r3, lsr #4
	mov r0, r0, lsl r2
	rsb r1, r1, #0
	add r0, r0, r0
	add r2, r2, r2, lsl #1
	add pc, pc, r2, lsl #2
	mov r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	mov r1, r3
_020E2164:
	and r3, ip, #0x80000000
	rsbne r0, r0, #0
	and r3, ip, #1
	rsbne r1, r1, #0
	bx lr
	arm_func_end sub_020E1F6C

	arm_func_start sub_020E2178
sub_020E2178: ; 0x020E2178
	cmp r1, #0
	bxeq lr
	arm_func_end sub_020E2178

	arm_func_start sub_020E2180
sub_020E2180: ; 0x020E2180
	cmp r0, r1
	movlo r1, r0
	movlo r0, #0
	bxlo lr
	mov r2, #0x1c
	mov r3, r0, lsr #4
	cmp r1, r3, lsr #12
	suble r2, r2, #0x10
	movle r3, r3, lsr #0x10
	cmp r1, r3, lsr #4
	suble r2, r2, #8
	movle r3, r3, lsr #8
	cmp r1, r3
	suble r2, r2, #4
	movle r3, r3, lsr #4
	mov r0, r0, lsl r2
	rsb r1, r1, #0
	add r0, r0, r0
	add r2, r2, r2, lsl #1
	add pc, pc, r2, lsl #2
	mov r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	adc r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adc r0, r0, r0
	mov r1, r3
	bx lr
	arm_func_end sub_020E2180

	arm_func_start sub_020E235C
sub_020E235C: ; 0x020E235C
	eor r1, r1, r3
	eor r3, r1, r3
	eor r1, r1, r3
	eor r0, r0, r2
	eor r2, r0, r2
	eor r0, r0, r2
	arm_func_end sub_020E235C

	arm_func_start sub_020E2374
sub_020E2374: ; 0x020E2374
	stmfd sp!, {r4, r5, r6, lr}
	ldr lr, _020E28B4 ; =0x00000FFE
	eor r4, r1, r3
	and ip, lr, r1, lsr #19
	cmpne ip, lr
	beq _020E2720
	bic r1, r1, lr, lsl #20
	orr r1, r1, #0x100000
	add ip, ip, r4, lsr #31
_020E2398:
	and r4, lr, r3, lsr #19
	cmpne r4, lr
	beq _020E27B8
	bic r3, r3, lr, lsl #20
	orr r3, r3, #0x100000
_020E23AC:
	sub ip, ip, r4
	cmp r1, r3
	cmpeq r0, r2
	bhs _020E23C8
	add r0, r0, r0
	adc r1, r1, r1
	sub ip, ip, #2
_020E23C8:
	sub r4, pc, #0x24
	ldrb lr, [r4, r3, lsr #12]
	rsb r2, r2, #0
	rsc r3, r3, #0
	mov r4, #0x20000000
	mla r5, lr, r3, r4
	mov r6, r3, lsl #0xa
	mov r5, r5, lsr #7
	mul lr, r5, lr
	orr r6, r6, r2, lsr #22
	mov lr, lr, lsr #0xd
	mul r5, lr, r5
	mov r6, r1, lsl #0xa
	orr r6, r6, r0, lsr #22
	mov r5, r5, lsr #0x10
	mul r5, lr, r5
	mov lr, lr, lsl #0xe
	add lr, lr, r5, lsr #16
	umull r5, r6, lr, r6
	umull r4, r5, r6, r2
	mla r5, r3, r6, r5
	mov r4, r4, lsr #0x1a
	orr r4, r4, r5, lsl #6
	add r4, r4, r0, lsl #2
	umull lr, r5, r4, lr
	mov r4, #0
	add r5, r5, r6, lsl #24
	adc r4, r4, r6, lsr #8
	cmp ip, #0x800
	bge _020E25AC
	add ip, ip, #0x7f0
	add ip, ip, #0xc
	bmi _020E25C4
	orr r1, r4, ip, lsl #31
	bic ip, ip, #1
	add r1, r1, ip, lsl #19
	tst lr, #-0x80000000
	bne _020E249C
	rsb r2, r2, #0
	mov r4, r4, lsl #1
	add r4, r4, r5, lsr #31
	mul lr, r2, lr
	mov r6, #0
	mov r4, r5, lsl #1
	orr r4, r4, #1
	umlal r6, lr, r4, r2
	rsc r3, r3, #0
	mla lr, r4, r3, lr
	cmp lr, r0, lsl #21
	bmi _020E249C
	mov r0, r5
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E249C:
	add r0, r5, #1
	adc r1, r1, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E24AC:
	.byte 0xFF, 0xFF, 0xFE, 0xFD
	.byte 0xFC, 0xFB, 0xFA, 0xF9, 0xF8, 0xF7, 0xF6, 0xF5, 0xF4, 0xF3, 0xF2, 0xF1, 0xF0, 0xF0, 0xEF, 0xEE
	.byte 0xED, 0xEC, 0xEB, 0xEA, 0xEA, 0xE9, 0xE8, 0xE7, 0xE6, 0xE6, 0xE5, 0xE4, 0xE3, 0xE2, 0xE2, 0xE1
	.byte 0xE0, 0xDF, 0xDF, 0xDE, 0xDD, 0xDC, 0xDC, 0xDB, 0xDA, 0xD9, 0xD9, 0xD8, 0xD7, 0xD7, 0xD6, 0xD5
	.byte 0xD4, 0xD4, 0xD3, 0xD2, 0xD2, 0xD1, 0xD0, 0xD0, 0xCF, 0xCE, 0xCE, 0xCD, 0xCC, 0xCC, 0xCB, 0xCB
	.byte 0xCA, 0xC9, 0xC9, 0xC8, 0xC8, 0xC7, 0xC6, 0xC6, 0xC5, 0xC5, 0xC4, 0xC3, 0xC3, 0xC2, 0xC2, 0xC1
	.byte 0xC0, 0xC0, 0xBF, 0xBF, 0xBE, 0xBE, 0xBD, 0xBD, 0xBC, 0xBC, 0xBB, 0xBA, 0xBA, 0xB9, 0xB9, 0xB8
	.byte 0xB8, 0xB7, 0xB7, 0xB6, 0xB6, 0xB5, 0xB5, 0xB4, 0xB4, 0xB3, 0xB3, 0xB2, 0xB2, 0xB1, 0xB1, 0xB0
	.byte 0xB0, 0xAF, 0xAF, 0xAF, 0xAE, 0xAE, 0xAD, 0xAD, 0xAC, 0xAC, 0xAB, 0xAB, 0xAA, 0xAA, 0xAA, 0xA9
	.byte 0xA9, 0xA8, 0xA8, 0xA7, 0xA7, 0xA7, 0xA6, 0xA6, 0xA5, 0xA5, 0xA4, 0xA4, 0xA4, 0xA3, 0xA3, 0xA2
	.byte 0xA2, 0xA2, 0xA1, 0xA1, 0xA0, 0xA0, 0xA0, 0x9F, 0x9F, 0x9E, 0x9E, 0x9E, 0x9D, 0x9D, 0x9D, 0x9C
	.byte 0x9C, 0x9B, 0x9B, 0x9B, 0x9A, 0x9A, 0x9A, 0x99, 0x99, 0x99, 0x98, 0x98, 0x98, 0x97, 0x97, 0x96
	.byte 0x96, 0x96, 0x95, 0x95, 0x95, 0x94, 0x94, 0x94, 0x93, 0x93, 0x93, 0x92, 0x92, 0x92, 0x91, 0x91
	.byte 0x91, 0x91, 0x90, 0x90, 0x90, 0x8F, 0x8F, 0x8F, 0x8E, 0x8E, 0x8E, 0x8D, 0x8D, 0x8D, 0x8C, 0x8C
	.byte 0x8C, 0x8C, 0x8B, 0x8B, 0x8B, 0x8A, 0x8A, 0x8A, 0x8A, 0x89, 0x89, 0x89, 0x88, 0x88, 0x88, 0x88
	.byte 0x87, 0x87, 0x87, 0x86, 0x86, 0x86, 0x86, 0x85, 0x85, 0x85, 0x85, 0x84, 0x84, 0x84, 0x83, 0x83
	.byte 0x83, 0x83, 0x82, 0x82, 0x82, 0x82, 0x81, 0x81, 0x81, 0x81, 0x80, 0x80
_020E25AC:
	mov r1, ip, lsl #0x1f
	orr r1, r1, #0x7f000000
	orr r1, r1, #0xf00000
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E25C4:
	mvn r6, ip, asr #1
	cmp r6, #0x34
	bgt _020E2710
	beq _020E26EC
	cmp r6, #0x14
	bge _020E260C
	rsb r6, r6, #0x13
	mov lr, r0, lsl r6
	rsb r6, r6, #0x14
	mov r0, r5, lsr r6
	rsb r6, r6, #0x20
	orr r0, r0, r4, lsl r6
	rsb r6, r6, #0x20
	mov r4, r4, lsr r6
	orr r1, r4, ip, lsl #31
	mov ip, lr
	mov lr, #0
	b _020E263C
_020E260C:
	rsb r6, r6, #0x33
	mov lr, r1, lsl r6
	mov r1, ip, lsl #0x1f
	rsb r6, r6, #0x20
	orr ip, lr, r0, lsr r6
	rsb r6, r6, #0x20
	mov lr, r0, lsl r6
	mov r5, r5, lsr #0x15
	orr r5, r5, r4, lsl #11
	rsb r6, r6, #0x1f
	mov r0, r5, lsr r6
	mov r4, #0
_020E263C:
	rsb r2, r2, #0
	mul r4, r2, r4
	mov r5, #0
	umlal r5, r4, r2, r0
	rsc r3, r3, #0
	mla r4, r0, r3, r4
	cmp r4, ip
	cmpeq r5, lr
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	add r5, r5, r2
	adc r4, r4, r3
	cmp r4, ip
	bmi _020E26E0
	bne _020E2684
	cmp r5, lr
	beq _020E26D0
	blo _020E26E0
_020E2684:
	sub r5, r5, r2
	sbc r4, r4, r3
_020E268C:
	add r5, r5, r5
	adc r4, r4, r4
	add r5, r5, r2
	adc r4, r4, r3
	add lr, lr, lr
	adc ip, ip, ip
	cmp r4, ip
	bmi _020E26D0
	ldmneia sp!, {r4, r5, r6, lr}
	bxne lr
	cmp r5, lr
	blo _020E26D0
	ldmneia sp!, {r4, r5, r6, lr}
	bxne lr
	tst r0, #1
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
_020E26D0:
	add r0, r0, #1
	adc r1, r1, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E26E0:
	add r0, r0, #1
	adc r1, r1, #0
	b _020E268C
_020E26EC:
	rsb r2, r2, #0
	rsc r3, r3, #0
	cmp r1, r3
	cmpeq r0, r2
	mov r1, ip, lsl #0x1f
	mov r0, #0
	movne r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E2710:
	mov r1, ip, lsl #0x1f
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E2720:
	orr r5, r0, r1, lsl #1
	beq _020E2844
	cmp ip, lr
	beq _020E2788
	mov r1, r1, lsl #0xc
	beq _020E2764
	clz r5, r1
	mov r1, r1, lsl r5
	sub ip, ip, r5
	add r5, ip, #0x1f
	mov r1, r1, lsr #0xb
	orr r1, r1, r0, lsr r5
	rsb r5, r5, #0x20
	mov r0, r0, lsl r5
	mov ip, ip, lsl #1
	orr ip, ip, r4, lsr #31
	b _020E2398
_020E2764:
	mvn ip, #0x13
	clz r5, r0
	mov r0, r0, lsl r5
	sub ip, ip, r5
	mov r1, r0, lsr #0xb
	mov r0, r0, lsl #0x15
	mov ip, ip, lsl #1
	orr ip, ip, r4, lsr #31
	b _020E2398
_020E2788:
	orr r5, r0, r1, lsl #12
	bne _020E286C
	bic r5, r3, #0x80000000
	cmp r5, lr, lsl #19
	bhs _020E27AC
	and r5, r3, #0x80000000
	eor r1, r5, r1
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E27AC:
	orr r5, r2, r3, lsl #12
	bne _020E288C
	b _020E28A4
_020E27B8:
	orr r5, r2, r3, lsl #1
	beq _020E2830
	cmp r4, lr
	beq _020E2818
	mov r3, r3, lsl #0xc
	beq _020E27F8
	clz r5, r3
	mov r3, r3, lsl r5
	sub r4, r4, r5
	add r5, r4, #0x1f
	mov r3, r3, lsr #0xb
	orr r3, r3, r2, lsr r5
	rsb r5, r5, #0x20
	mov r2, r2, lsl r5
	mov r4, r4, lsl #1
	b _020E23AC
_020E27F8:
	mvn r4, #0x13
	clz r5, r2
	mov r2, r2, lsl r5
	sub r4, r4, r5
	mov r3, r2, lsr #0xb
	mov r2, r2, lsl #0x15
	mov r4, r4, lsl #1
	b _020E23AC
_020E2818:
	orr r5, r2, r3, lsl #12
	bne _020E288C
	mov r1, ip, lsl #0x1f
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E2830:
	mov r1, ip, lsl #0x1f
	orr r1, r1, lr, lsl #19
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E2844:
	orr r5, r2, r3, lsl #1
	beq _020E28A4
	bic r5, r3, #0x80000000
	cmp r5, lr, lsl #19
	cmpeq r2, #0
	bhi _020E288C
	eor r1, r1, r3
	and r1, r1, #0x80000000
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E286C:
	tst r1, #0x80000
	beq _020E28A4
	bic r5, r3, #0x80000000
	cmp r5, lr, lsl #19
	cmpeq r2, #0
	bhi _020E288C
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E288C:
	tst r3, #0x80000
	beq _020E28A4
	mov r1, r3
	mov r0, r2
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_020E28A4:
	orr r1, r1, #0x7f000000
	orr r1, r1, #0xf80000
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	; .align 2, 0
_020E28B4: .word 0x00000FFE
	arm_func_end sub_020E2374

	arm_func_start sub_020E28B8
sub_020E28B8: ; 0x020E28B8
	bx lr
	arm_func_end sub_020E28B8

	arm_func_start sub_020E28BC
sub_020E28BC: ; 0x020E28BC
	str lr, [sp, #-4]!
	mov r1, r0
	mov r0, #3
	swi 0x123456
	ldmia sp!, {pc}
	arm_func_end sub_020E28BC

	arm_func_start sub_020E28D0
sub_020E28D0: ; 0x020E28D0
	str lr, [sp, #-4]!
	mov r1, #0
	mov r0, #7
	swi 0x123456
	ldmia sp!, {pc}
	arm_func_end sub_020E28D0

	arm_func_start sub_020E28E4
sub_020E28E4: ; 0x020E28E4
	mov r1, #0
	mov r0, #0x18
	swi 0x123456
	mov pc, lr
	arm_func_end sub_020E28E4

	arm_func_start sub_020E28F4
sub_020E28F4: ; 0x020E28F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	ldr r5, [r6, #0]
	mov r7, r1
	cmp r5, #0
	mov r4, #0
	bls _020E293C
_020E2910:
	bl sub_020E28D0
	and r1, r0, #0xff
	cmp r1, #0xd
	strb r0, [r7, r4]
	cmpne r1, #0xa
	addeq r0, r4, #1
	streq r0, [r6]
	beq _020E293C
	add r4, r4, #1
	cmp r4, r5
	blo _020E2910
_020E293C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020E28F4

	arm_func_start sub_020E2944
sub_020E2944: ; 0x020E2944
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [r2, #0]
	mov r6, r1
	cmp r5, #0
	mov r4, #0
	bls _020E2970
_020E295C:
	add r0, r6, r4
	bl sub_020E28BC
	add r4, r4, #1
	cmp r4, r5
	blo _020E295C
_020E2970:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020E2944

	arm_func_start sub_020E2978
sub_020E2978: ; 0x020E2978
	mov r0, #0
	bx lr
	arm_func_end sub_020E2978

	arm_func_start sub_020E2980
sub_020E2980: ; 0x020E2980
	stmfd sp!, {r4, lr}
	ldrsb r2, [r0]
	tst r2, #1
	bne _020E29A0
	mov r2, r2, asr #1
	str r2, [r1, #0]
	add r0, r0, #1
	ldmia sp!, {r4, pc}
_020E29A0:
	tst r2, #2
	ldrb r4, [r0, #1]
	bne _020E29C0
	mov r2, r2, asr #2
	orr r2, r4, r2, lsl #8
	str r2, [r1, #0]
	add r0, r0, #2
	ldmia sp!, {r4, pc}
_020E29C0:
	tst r2, #4
	ldrb lr, [r0, #2]
	bne _020E29E8
	mov r3, r2, asr #3
	mov r2, r4, lsl #8
	orr r2, r2, r3, lsl #16
	orr r2, lr, r2
	str r2, [r1, #0]
	add r0, r0, #3
	ldmia sp!, {r4, pc}
_020E29E8:
	ldrb ip, [r0, #3]
	mov r3, r2, asr #3
	mov r2, r4, lsl #0x10
	orr r2, r2, r3, lsl #24
	orr r2, r2, lr, lsl #8
	orr r2, ip, r2
	str r2, [r1, #0]
	add r0, r0, #4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E2980

	arm_func_start sub_020E2A0C
sub_020E2A0C: ; 0x020E2A0C
	stmfd sp!, {r4, lr}
	ldrb r2, [r0]
	tst r2, #1
	bne _020E2A2C
	mov r2, r2, lsr #1
	str r2, [r1, #0]
	add r0, r0, #1
	ldmia sp!, {r4, pc}
_020E2A2C:
	tst r2, #2
	ldrb r4, [r0, #1]
	bne _020E2A4C
	mov r2, r2, lsr #2
	orr r2, r4, r2, lsl #8
	str r2, [r1, #0]
	add r0, r0, #2
	ldmia sp!, {r4, pc}
_020E2A4C:
	tst r2, #4
	ldrb lr, [r0, #2]
	bne _020E2A74
	mov r3, r2, lsr #3
	mov r2, r4, lsl #8
	orr r2, r2, r3, lsl #16
	orr r2, lr, r2
	str r2, [r1, #0]
	add r0, r0, #3
	ldmia sp!, {r4, pc}
_020E2A74:
	ldrb ip, [r0, #3]
	mov r3, r2, lsr #3
	mov r2, r4, lsl #0x10
	orr r2, r2, r3, lsl #24
	orr r2, r2, lr, lsl #8
	orr r2, ip, r2
	str r2, [r1, #0]
	add r0, r0, #4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E2A0C

	arm_func_start sub_020E2A98
sub_020E2A98: ; 0x020E2A98
	stmfd sp!, {r4, r5, r6, lr}
	sub r6, r1, #1
	mov r5, #0
	bmi _020E2AF4
	mov r1, #0xc
_020E2AAC:
	add r3, r5, r6
	mov r4, r3, asr #1
	mul r3, r4, r3
	ldr ip, [r0, r3]
	add lr, r0, r3
	cmp r2, ip
	sublo r6, r4, #1
	blo _020E2AEC
	ldr r3, [lr, #4]
	bic r3, r3, #1
	add r3, ip, r3
	cmp r2, r3
	addhi r5, r4, #1
	bhi _020E2AEC
	mov r0, lr
	ldmia sp!, {r4, r5, r6, pc}
_020E2AEC:
	cmp r5, r6
	ble _020E2AAC
_020E2AF4:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020E2A98

	arm_func_start sub_020E2AFC
sub_020E2AFC: ; 0x020E2AFC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov sb, r1
	mov r2, #0
	str r2, [sb, #4]
	mov r0, sb
	mov r1, r4
	str r2, [sb, #8]
	bl sub_020E4438
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sb, #0xc]
	ldr r1, [sb, #0x10]
	ldr r3, _020E2C00 ; =0x2AAAAAAB
	sub r5, r1, r0
	smull r2, r1, r3, r5
	mov r3, r5, lsr #0x1f
	mov r2, r4
	add r1, r3, r1, asr #1
	bl sub_020E2A98
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r1, [r0, #4]
	tst r1, #1
	addne r1, r0, #8
	ldreq r1, [r0, #8]
	str r1, [sb, #4]
	ldr r1, [r0, #0]
	str r1, [sb]
	ldr r1, [r0, #0]
	ldr r0, [sb, #4]
	sub r7, r4, r1
	bl sub_020E4458
	mov r8, #0
	add r5, sp, #4
	add r4, sp, #0
	add r6, sp, #8
_020E2B9C:
	mov r1, r6
	bl sub_020E2A0C
	ldr r1, [sp, #8]
	cmp r1, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r1, r5
	bl sub_020E2A0C
	mov r1, r4
	bl sub_020E2A0C
	ldr r1, [sp, #8]
	add r2, r8, r1
	cmp r7, r2
	addlo sp, sp, #0xc
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r1, [sp, #4]
	add r8, r2, r1
	cmp r7, r8
	bhi _020E2B9C
	ldr r1, [sb, #4]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [sb, #8]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020E2C00: .word 0x2AAAAAAB
	arm_func_end sub_020E2AFC

	arm_func_start sub_020E2C04
sub_020E2C04: ; 0x020E2C04
	ldr r0, [r0, #8]
	cmp r0, #0
	ldrneb r0, [r0]
	andne r0, r0, #0x1f
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_020E2C04

	arm_func_start sub_020E2C20
sub_020E2C20: ; 0x020E2C20
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0xa0
	mov r4, r0
_020E2C2C:
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _020E2C44
	ldrb r0, [r2]
	tst r0, #0x80
	beq _020E2C88
_020E2C44:
	mov r1, r4
	add r0, r4, #0x18
	bl sub_020E433C
	mov r1, r4
	bl sub_020E2AFC
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0xa0
	moveq r0, #0xff
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, r4
	add r0, r4, #0x18
	bl sub_020E4398
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _020E2C2C
	b _020E2F58
_020E2C88:
	and r0, r0, #0x1f
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _020E2F4C
_020E2C98: ; jump table
	b _020E2F4C ; case 0
	b _020E2F4C ; case 1
	b _020E2CE8 ; case 2
	b _020E2D00 ; case 3
	b _020E2D20 ; case 4
	b _020E2D38 ; case 5
	b _020E2D60 ; case 6
	b _020E2D80 ; case 7
	b _020E2DA0 ; case 8
	b _020E2DC8 ; case 9
	b _020E2DF8 ; case 10
	b _020E2E10 ; case 11
	b _020E2E30 ; case 12
	b _020E2E4C ; case 13
	b _020E2F4C ; case 14
	b _020E2E60 ; case 15
	b _020E2E8C ; case 16
	b _020E2ED8 ; case 17
	b _020E2F0C ; case 18
	b _020E2F38 ; case 19
_020E2CE8:
	add r1, sp, #0x9c
	add r0, r2, #1
	bl sub_020E2980
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2D00:
	add r1, sp, #0x94
	add r0, r2, #1
	bl sub_020E2980
	add r1, sp, #0x98
	bl sub_020E2980
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2D20:
	add r1, sp, #0x90
	add r0, r2, #1
	bl sub_020E2980
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2D38:
	add r1, sp, #0x84
	add r0, r2, #1
	bl sub_020E2980
	add r1, sp, #0x88
	bl sub_020E2A0C
	add r1, sp, #0x8c
	bl sub_020E2A0C
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2D60:
	add r1, sp, #0x7c
	add r0, r2, #1
	bl sub_020E2980
	add r1, sp, #0x80
	bl sub_020E2980
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2D80:
	add r1, sp, #0x74
	add r0, r2, #1
	bl sub_020E2980
	add r1, sp, #0x78
	bl sub_020E2980
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2DA0:
	add r1, sp, #0x68
	add r0, r2, #1
	bl sub_020E2980
	add r1, sp, #0x6c
	bl sub_020E2980
	add r1, sp, #0x70
	bl sub_020E2980
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2DC8:
	add r1, sp, #0x58
	add r0, r2, #1
	bl sub_020E2980
	add r1, sp, #0x5c
	bl sub_020E2980
	add r1, sp, #0x60
	bl sub_020E2A0C
	add r1, sp, #0x64
	bl sub_020E2A0C
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2DF8:
	add r1, sp, #0x54
	add r0, r2, #1
	bl sub_020E2980
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2E10:
	add r1, sp, #0x4c
	add r0, r2, #1
	bl sub_020E2980
	add r1, sp, #0x50
	bl sub_020E2980
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2E30:
	add r1, sp, #0x44
	add r0, r2, #5
	bl sub_020E2A0C
	add r1, sp, #0x48
	bl sub_020E2980
	str r0, [r4, #8]
	b _020E2F58
_020E2E4C:
	add r1, sp, #0x40
	add r0, r2, #1
	bl sub_020E2980
	str r0, [r4, #8]
	b _020E2F58
_020E2E60:
	add r1, sp, #0x34
	add r0, r2, #1
	bl sub_020E2A0C
	add r1, sp, #0x38
	bl sub_020E2A0C
	add r1, sp, #0x3c
	bl sub_020E2980
	ldr r1, [sp, #0x34]
	add r0, r0, r1, lsl #2
	str r0, [r4, #8]
	b _020E2F58
_020E2E8C:
	add r1, sp, #0x24
	add r0, r2, #1
	bl sub_020E2980
	add r1, sp, #0x28
	bl sub_020E2980
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	orr r2, r1, r5, lsl #24
	add r1, sp, #0x2c
	add r0, r0, #4
	str r2, [sp, #0x30]
	bl sub_020E2980
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2ED8:
	add r1, sp, #0x14
	add r0, r2, #1
	bl sub_020E2980
	add r1, sp, #0x1c
	bl sub_020E2980
	add r1, sp, #0x18
	add r0, r0, #1
	bl sub_020E2980
	add r1, sp, #0x20
	bl sub_020E2980
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2F0C:
	add r1, sp, #8
	add r0, r2, #1
	bl sub_020E2980
	add r1, sp, #0xc
	add r0, r0, #1
	bl sub_020E2980
	add r1, sp, #0x10
	bl sub_020E2A0C
	add r0, r0, #4
	str r0, [r4, #8]
	b _020E2F58
_020E2F38:
	add r1, sp, #4
	add r0, r2, #1
	bl sub_020E2980
	str r0, [r4, #8]
	b _020E2F58
_020E2F4C:
	add sp, sp, #0xa0
	mov r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_020E2F58:
	ldr r2, [r4, #8]
	ldrb r0, [r2]
	and r0, r0, #0x1f
	cmp r0, #1
	addne sp, sp, #0xa0
	ldmneia sp!, {r3, r4, r5, pc}
	add r5, sp, #0
_020E2F74:
	mov r1, r5
	add r0, r2, #1
	bl sub_020E2980
	ldr r1, [r4, #8]
	ldr r0, [sp]
	add r2, r1, r0
	str r2, [r4, #8]
	ldrb r0, [r2]
	and r0, r0, #0x1f
	cmp r0, #1
	beq _020E2F74
	add sp, sp, #0xa0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020E2C20

	arm_func_start sub_020E2FA8
sub_020E2FA8: ; 0x020E2FA8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xa4
	mov sb, r0
	mov r8, r1
	str r2, [sp]
_020E2FBC:
	ldr r2, [r8, #8]
	cmp r2, #0
	bne _020E3004
	mov r0, sb
	mov r1, r8
	bl sub_020E433C
	mov r1, r8
	bl sub_020E2AFC
	ldr r0, [r8, #4]
	cmp r0, #0
	bne _020E2FEC
	bl sub_020E415C
_020E2FEC:
	mov r0, sb
	mov r1, r8
	bl sub_020E4398
	ldr r2, [r8, #8]
	cmp r2, #0
	beq _020E2FBC
_020E3004:
	ldrb r7, [r2]
	and r0, r7, #0x1f
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _020E383C
_020E3018: ; jump table
	b _020E383C ; case 0
	b _020E3068 ; case 1
	b _020E3088 ; case 2
	b _020E30D4 ; case 3
	b _020E3154 ; case 4
	b _020E31B4 ; case 5
	b _020E3238 ; case 6
	b _020E32A8 ; case 7
	b _020E3318 ; case 8
	b _020E33C0 ; case 9
	b _020E3474 ; case 10
	b _020E34D0 ; case 11
	b _020E3560 ; case 12
	b _020E358C ; case 13
	b _020E383C ; case 14
	b _020E35D8 ; case 15
	b _020E3614 ; case 16
	b _020E36B8 ; case 17
	b _020E3764 ; case 18
	b _020E3828 ; case 19
_020E3068:
	add r1, sp, #0xa0
	add r0, r2, #1
	bl sub_020E2980
	ldr r1, [r8, #8]
	ldr r0, [sp, #0xa0]
	add r0, r1, r0
	str r0, [r8, #8]
	b _020E3840
_020E3088:
	add r1, sp, #0x9c
	add r0, r2, #1
	bl sub_020E2980
	mov r4, r0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	ldrb r2, [r4, #2]
	ldrb r3, [r4, #3]
	orr r0, r1, r0, lsl #8
	orr r0, r0, r2, lsl #16
	ldr r5, [sb, #0x18]
	ldr r1, [sp, #0x9c]
	orr r2, r0, r3, lsl #24
	add r0, r5, r1
	mvn r1, #0
	blx r2
	add r0, r4, #4
	str r0, [r8, #8]
	b _020E3840
_020E30D4:
	add r1, sp, #0x94
	add r0, r2, #1
	and r4, r7, #0x40
	bl sub_020E2980
	add r1, sp, #0x98
	bl sub_020E2980
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	cmp r4, #0
	orr r2, r1, r5, lsl #24
	add r4, r0, #4
	ldreq r1, [sb, #0x18]
	ldreq r0, [sp, #0x94]
	ldreqb r0, [r1, r0]
	beq _020E3130
	ldr r0, [sp, #0x94]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0x1c]
	and r0, r0, #0xff
_020E3130:
	cmp r0, #0
	beq _020E314C
	ldr r3, [sb, #0x18]
	ldr r0, [sp, #0x98]
	mvn r1, #0
	add r0, r3, r0
	blx r2
_020E314C:
	str r4, [r8, #8]
	b _020E3840
_020E3154:
	add r1, sp, #0x90
	add r0, r2, #1
	and r4, r7, #0x20
	bl sub_020E2980
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	cmp r4, #0
	orr r2, r1, r5, lsl #24
	add r4, r0, #4
	ldreq r1, [sb, #0x18]
	ldreq r0, [sp, #0x90]
	ldreq r0, [r1, r0]
	beq _020E31A4
	ldr r0, [sp, #0x90]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0x1c]
_020E31A4:
	mvn r1, #0
	blx r2
	str r4, [r8, #8]
	b _020E3840
_020E31B4:
	add r1, sp, #0x84
	add r0, r2, #1
	bl sub_020E2980
	add r1, sp, #0x88
	bl sub_020E2A0C
	add r1, sp, #0x8c
	bl sub_020E2A0C
	ldr r3, [sb, #0x18]
	ldr r2, [sp, #0x84]
	ldr r6, [sp, #0x88]
	ldrb r5, [r0]
	ldrb r4, [r0, #1]
	ldr r1, [sp, #0x8c]
	add r2, r3, r2
	ldrb sl, [r0, #2]
	orr r3, r5, r4, lsl #8
	mla r4, r6, r1, r2
	ldrb r2, [r0, #3]
	orr r1, r3, sl, lsl #16
	cmp r6, #0
	orr r5, r1, r2, lsl #24
	add fp, r0, #4
	beq _020E3230
	mvn sl, #0
_020E3214:
	ldr r0, [sp, #0x8c]
	mov r1, sl
	sub r4, r4, r0
	mov r0, r4
	blx r5
	sub r6, r6, #1
	bne _020E3214
_020E3230:
	str fp, [r8, #8]
	b _020E3840
_020E3238:
	add r1, sp, #0x7c
	add r0, r2, #1
	and r4, r7, #0x20
	bl sub_020E2980
	add r1, sp, #0x80
	bl sub_020E2980
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	cmp r4, #0
	orr r2, r1, r5, lsl #24
	add r4, r0, #4
	ldreq r1, [sb, #0x18]
	ldreq r0, [sp, #0x7c]
	ldreq r3, [r1, r0]
	beq _020E3290
	ldr r0, [sp, #0x7c]
	add r0, sb, r0, lsl #2
	ldr r3, [r0, #0x1c]
_020E3290:
	ldr r0, [sp, #0x80]
	mov r1, #0
	add r0, r3, r0
	blx r2
	str r4, [r8, #8]
	b _020E3840
_020E32A8:
	add r1, sp, #0x74
	add r0, r2, #1
	and r4, r7, #0x20
	bl sub_020E2980
	add r1, sp, #0x78
	bl sub_020E2980
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	cmp r4, #0
	orr r2, r1, r5, lsl #24
	add r4, r0, #4
	ldreq r1, [sb, #0x18]
	ldreq r0, [sp, #0x74]
	ldreq r3, [r1, r0]
	beq _020E3300
	ldr r0, [sp, #0x74]
	add r0, sb, r0, lsl #2
	ldr r3, [r0, #0x1c]
_020E3300:
	ldr r0, [sp, #0x78]
	mvn r1, #0
	add r0, r3, r0
	blx r2
	str r4, [r8, #8]
	b _020E3840
_020E3318:
	add r1, sp, #0x68
	add r0, r2, #1
	and r4, r7, #0x20
	bl sub_020E2980
	add r1, sp, #0x6c
	bl sub_020E2980
	add r1, sp, #0x70
	bl sub_020E2980
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	orr r2, r1, r5, lsl #24
	tst r7, #0x40
	add r5, r0, #4
	ldreq r1, [sb, #0x18]
	ldreq r0, [sp, #0x68]
	ldreqsh r0, [r1, r0]
	beq _020E3380
	ldr r0, [sp, #0x68]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0x1c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
_020E3380:
	cmp r0, #0
	beq _020E33B8
	cmp r4, #0
	ldreq r1, [sb, #0x18]
	ldreq r0, [sp, #0x6c]
	ldreq r3, [r1, r0]
	beq _020E33A8
	ldr r0, [sp, #0x6c]
	add r0, sb, r0, lsl #2
	ldr r3, [r0, #0x1c]
_020E33A8:
	ldr r0, [sp, #0x70]
	mvn r1, #0
	add r0, r3, r0
	blx r2
_020E33B8:
	str r5, [r8, #8]
	b _020E3840
_020E33C0:
	add r1, sp, #0x58
	add r0, r2, #1
	and r4, r7, #0x20
	bl sub_020E2980
	add r1, sp, #0x5c
	bl sub_020E2980
	add r1, sp, #0x60
	bl sub_020E2A0C
	add r1, sp, #0x64
	bl sub_020E2A0C
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	cmp r4, #0
	orr r5, r1, r5, lsl #24
	add fp, r0, #4
	beq _020E3424
	ldr r1, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x1c]
	b _020E3434
_020E3424:
	ldr r2, [sb, #0x18]
	ldr r1, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	ldr r1, [r2, r1]
_020E3434:
	add r4, r1, r0
	ldr r6, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r6, #0
	mla r4, r6, r0, r4
	beq _020E346C
	mvn sl, #0
_020E3450:
	ldr r0, [sp, #0x64]
	mov r1, sl
	sub r4, r4, r0
	mov r0, r4
	blx r5
	sub r6, r6, #1
	bne _020E3450
_020E346C:
	str fp, [r8, #8]
	b _020E3840
_020E3474:
	add r1, sp, #0x54
	add r0, r2, #1
	and r4, r7, #0x20
	bl sub_020E2980
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	cmp r4, #0
	orr r2, r1, r5, lsl #24
	add r4, r0, #4
	ldreq r1, [sb, #0x18]
	ldreq r0, [sp, #0x54]
	ldreq r0, [r1, r0]
	beq _020E34C4
	ldr r0, [sp, #0x54]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0x1c]
_020E34C4:
	blx r2
	str r4, [r8, #8]
	b _020E3840
_020E34D0:
	add r1, sp, #0x4c
	add r0, r2, #1
	and r4, r7, #0x20
	bl sub_020E2980
	add r1, sp, #0x50
	bl sub_020E2980
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	tst r7, #0x40
	orr r1, r1, r5, lsl #24
	add r5, r0, #4
	ldreq r2, [sb, #0x18]
	ldreq r0, [sp, #0x4c]
	ldreqb r0, [r2, r0]
	beq _020E352C
	ldr r0, [sp, #0x4c]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0x1c]
	and r0, r0, #0xff
_020E352C:
	cmp r0, #0
	beq _020E3558
	cmp r4, #0
	ldreq r2, [sb, #0x18]
	ldreq r0, [sp, #0x50]
	ldreq r0, [r2, r0]
	beq _020E3554
	ldr r0, [sp, #0x50]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0x1c]
_020E3554:
	blx r1
_020E3558:
	str r5, [r8, #8]
	b _020E3840
_020E3560:
	ldr r0, [sp]
	cmp r0, r2
	addeq sp, sp, #0xa4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r1, sp, #0x44
	add r0, r2, #5
	bl sub_020E2A0C
	add r1, sp, #0x48
	bl sub_020E2980
	str r0, [r8, #8]
	b _020E3840
_020E358C:
	add r1, sp, #0x40
	add r0, r2, #1
	bl sub_020E2980
	ldr r2, [sb, #0x18]
	ldr r1, [sp, #0x40]
	mov r4, r0
	add r0, r2, r1
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _020E35D0
	ldr r0, [r0, #0]
	ldr r1, [sb, #4]
	cmp r1, r0
	streq r2, [sb, #8]
	beq _020E35D0
	mvn r1, #0
	blx r2
_020E35D0:
	str r4, [r8, #8]
	b _020E3840
_020E35D8:
	ldr r0, [sp]
	cmp r0, r2
	addeq sp, sp, #0xa4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r1, sp, #0x34
	add r0, r2, #1
	bl sub_020E2A0C
	add r1, sp, #0x38
	bl sub_020E2A0C
	add r1, sp, #0x3c
	bl sub_020E2980
	ldr r1, [sp, #0x34]
	add r0, r0, r1, lsl #2
	str r0, [r8, #8]
	b _020E3840
_020E3614:
	add r1, sp, #0x24
	add r0, r2, #1
	and r4, r7, #0x20
	bl sub_020E2980
	add r1, sp, #0x28
	bl sub_020E2980
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	orr r2, r1, r5, lsl #24
	add r1, sp, #0x2c
	add r0, r0, #4
	str r2, [sp, #0x30]
	bl sub_020E2980
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	cmp r4, #0
	orr r2, r1, r5, lsl #24
	add r4, r0, #4
	ldreq r1, [sb, #0x18]
	ldreq r0, [sp, #0x24]
	ldreq r5, [r1, r0]
	beq _020E3698
	ldr r0, [sp, #0x24]
	add r0, sb, r0, lsl #2
	ldr r5, [r0, #0x1c]
_020E3698:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	add r0, r5, r0
	add r1, r3, r1
	blx r2
	str r4, [r8, #8]
	b _020E3840
_020E36B8:
	add r1, sp, #0x14
	add r0, r2, #1
	and r5, r7, #0x20
	bl sub_020E2980
	add r1, sp, #0x1c
	bl sub_020E2980
	ldrb r2, [r0], #1
	add r1, sp, #0x18
	and r4, r2, #0x20
	bl sub_020E2980
	add r1, sp, #0x20
	bl sub_020E2980
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r6, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	cmp r5, #0
	orr r2, r1, r6, lsl #24
	add r5, r0, #4
	ldreq r1, [sb, #0x18]
	ldreq r0, [sp, #0x14]
	ldreq r0, [r1, r0]
	beq _020E3728
	ldr r0, [sp, #0x14]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0x1c]
_020E3728:
	cmp r4, #0
	ldreq r3, [sb, #0x18]
	ldreq r1, [sp, #0x18]
	ldreq r4, [r3, r1]
	beq _020E3748
	ldr r1, [sp, #0x18]
	add r1, sb, r1, lsl #2
	ldr r4, [r1, #0x1c]
_020E3748:
	ldr r3, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r0, r3
	add r1, r4, r1
	blx r2
	str r5, [r8, #8]
	b _020E3840
_020E3764:
	add r1, sp, #8
	add r0, r2, #1
	and r4, r7, #0x20
	bl sub_020E2980
	ldrb r2, [r0], #1
	add r1, sp, #0xc
	and r6, r2, #0x20
	bl sub_020E2980
	add r1, sp, #0x10
	bl sub_020E2A0C
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	cmp r4, #0
	orr r5, r1, r5, lsl #24
	add fp, r0, #4
	ldreq r1, [sb, #0x18]
	ldreq r0, [sp, #8]
	ldreq r4, [r1, r0]
	beq _020E37CC
	ldr r0, [sp, #8]
	add r0, sb, r0, lsl #2
	ldr r4, [r0, #0x1c]
_020E37CC:
	cmp r6, #0
	ldreq r1, [sb, #0x18]
	ldreq r0, [sp, #0xc]
	ldreq r0, [r1, r0]
	beq _020E37EC
	ldr r0, [sp, #0xc]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0x1c]
_020E37EC:
	ldr r1, [sp, #0x10]
	add r4, r4, r0
	bl sub_020E2178
	mov r6, r0
	beq _020E3820
	mvn sl, #0
_020E3804:
	ldr r0, [sp, #0x10]
	mov r1, sl
	sub r4, r4, r0
	mov r0, r4
	blx r5
	sub r6, r6, #1
	bne _020E3804
_020E3820:
	str fp, [r8, #8]
	b _020E3840
_020E3828:
	add r1, sp, #4
	add r0, r2, #1
	bl sub_020E2980
	str r0, [r8, #8]
	b _020E3840
_020E383C:
	bl sub_020E415C
_020E3840:
	tst r7, #0x80
	movne r0, #0
	strne r0, [r8, #8]
	b _020E2FBC
	arm_func_end sub_020E2FA8
_020E3850:
	.byte 0xA4, 0xD0, 0x8D, 0xE2, 0xF0, 0x8F, 0xBD, 0xE8

	arm_func_start sub_020E3858
sub_020E3858: ; 0x020E3858
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x8c
	ldr r2, [r1, #0]
	mov r4, r0
	str r2, [sp, #4]
	ldr r0, [r1, #4]
	add ip, sp, #0x38
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	add lr, r4, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r1, #0xc]
	mov r5, #5
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r1, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	str r0, [sp, #0x20]
	ldr r0, [r4, #8]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x34]
_020E38D8:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	sub r5, r5, #1
	bne _020E38D8
	ldr r1, [lr]
	add r0, sp, #4
	str r1, [ip]
	bl sub_020E2C04
	add r5, sp, #4
_020E38FC:
	cmp r0, #0x12
	addls pc, pc, r0, lsl #2
	b _020E3954
_020E3908: ; jump table
	b _020E3960 ; case 0
	b _020E3954 ; case 1
	b _020E3960 ; case 2
	b _020E3960 ; case 3
	b _020E3960 ; case 4
	b _020E3960 ; case 5
	b _020E3960 ; case 6
	b _020E3960 ; case 7
	b _020E3960 ; case 8
	b _020E3960 ; case 9
	b _020E3960 ; case 10
	b _020E3960 ; case 11
	b _020E3960 ; case 12
	b _020E396C ; case 13
	b _020E3954 ; case 14
	b _020E3960 ; case 15
	b _020E3960 ; case 16
	b _020E3960 ; case 17
	b _020E3960 ; case 18
_020E3954:
	add sp, sp, #0x8c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_020E3960:
	mov r0, r5
	bl sub_020E2C20
	b _020E38FC
_020E396C:
	ldr r0, [sp, #0xc]
	add r1, sp, #0
	add r0, r0, #1
	bl sub_020E2980
	ldr ip, [sp, #0x34]
	ldr r3, [sp]
	mov r1, #0
	add r0, ip, r3
	ldr r2, [r0, #4]
	str r2, [r4, #0]
	ldr r2, [ip, r3]
	str r2, [r4, #4]
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, pc}
	arm_func_end sub_020E3858

	arm_func_start sub_020E39AC
sub_020E39AC: ; 0x020E39AC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r6, r1
	ldr r1, [r6, #0]
	mov r7, r0
	cmp r1, #0
	ldr r4, [r6, #0xc]
	mov r5, #0
	bls _020E3A24
	add r8, sp, #0
_020E39D4:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	ldrb r2, [r4, #2]
	ldrb r3, [r4, #3]
	orr r0, r1, r0, lsl #8
	orr r0, r0, r2, lsl #16
	orr r1, r0, r3, lsl #24
	mov r0, r7
	mov r2, r8
	str r1, [sp, #4]
	bl sub_020E418C
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, #4
	blo _020E39D4
_020E3A24:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020E39AC

	arm_func_start sub_020E3A30
sub_020E3A30: ; 0x020E3A30
	stmfd sp!, {r4, fp, lr}
	sub sp, sp, #0x2c
	mov fp, sp
	str sp, [fp, #0x18]
	ldr r4, [r0, #0x14]
	bl sub_020E4174
	b _020E3ABC
_020E3A4C:
	.byte 0x1C, 0x10, 0x8B, 0xE2
	.byte 0x01, 0x00, 0x84, 0xE2, 0xEC, 0xFB, 0xFF, 0xEB, 0x20, 0x10, 0x8B, 0xE2, 0xEA, 0xFB, 0xFF, 0xEB
	.byte 0x24, 0x10, 0x8B, 0xE2, 0xC5, 0xFB, 0xFF, 0xEB, 0x28, 0x00, 0x8B, 0xE5, 0x08, 0x00, 0x9B, 0xE5
	.byte 0x1C, 0x10, 0x8B, 0xE2, 0xCC, 0xFF, 0xFF, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x00, 0x00, 0x00, 0x0A
	.byte 0x9E, 0x02, 0x00, 0xEB, 0x3C, 0x00, 0x9F, 0xE5, 0x1C, 0x10, 0x8B, 0xE2, 0xC6, 0xFF, 0xFF, 0xEB
	.byte 0x00, 0x00, 0x50, 0xE3, 0x05, 0x00, 0x00, 0x0A, 0x2C, 0x30, 0x9F, 0xE5, 0x2C, 0x00, 0x9F, 0xE5
	.byte 0x2C, 0x20, 0x9F, 0xE5, 0x00, 0x10, 0x8B, 0xE2, 0x00, 0x30, 0x8B, 0xE5, 0x81, 0x02, 0x00, 0xEB
	.byte 0x04, 0x00, 0x8B, 0xE2, 0xE9, 0x00, 0x00, 0xEB, 0x18, 0xD0, 0x9B, 0xE5
_020E3ABC:
	bl sub_020E415C
	add sp, fp, #0x2c
	ldmia sp!, {r4, fp, pc}
	arm_func_end sub_020E3A30
_020E3AC8:
	.byte 0xB8, 0x1B, 0x10, 0x02, 0xAC, 0x1B, 0x10, 0x02
	.byte 0xD0, 0x1B, 0x10, 0x02, 0xD8, 0x3A, 0x0E, 0x02

	arm_func_start sub_020E3AD8
sub_020E3AD8: ; 0x020E3AD8
	bx lr
	arm_func_end sub_020E3AD8

	arm_func_start sub_020E3ADC
sub_020E3ADC: ; 0x020E3ADC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r5, r2
	mov r2, r4
	mov r7, r0
	mov r6, r1
	bl sub_020E2FA8
	ldr r2, [r7, #0x18]
	ldr r1, [r5, #8]
	ldr r0, [r7, #4]
	add r3, r2, r1
	str r0, [r2, r1]
	ldr r1, [r7, #0]
	mov r0, r7
	str r1, [r3, #4]
	ldr r2, [r7, #8]
	mov r1, r6
	str r2, [r3, #8]
	str r4, [r3, #0x14]
	ldr r3, [r6, #0]
	ldr r2, [r5, #4]
	add r2, r3, r2
	bl sub_020E4488
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020E3ADC

	arm_func_start sub_020E3B3C
sub_020E3B3C: ; 0x020E3B3C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xa4
	mov r5, r1
	ldr r1, [r5, #0]
	mov r6, r0
	str r1, [sp, #0x1c]
	ldr r0, [r5, #4]
	add r8, sp, #0x50
	str r0, [sp, #0x20]
	ldr r0, [r5, #8]
	mov r4, r2
	str r0, [sp, #0x24]
	ldr r0, [r5, #0xc]
	add sb, r6, #0x1c
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x10]
	mov r7, #5
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [r6, #0]
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	str r0, [sp, #0x38]
	ldr r0, [r6, #8]
	str r0, [sp, #0x3c]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x40]
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x44]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0x48]
	ldr r0, [r6, #0x18]
	str r0, [sp, #0x4c]
_020E3BC4:
	ldmia sb!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	sub r7, r7, #1
	bne _020E3BC4
	ldr r1, [sb]
	add r0, sp, #0x1c
	str r1, [r8]
	bl sub_020E2C04
	add r7, sp, #0
	add sl, sp, #4
	add fp, sp, #8
	add sb, sp, #0x14
	add r8, sp, #0x18
_020E3BF8:
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _020E3CF8
_020E3C04: ; jump table
	b _020E3D00 ; case 0
	b _020E3CF8 ; case 1
	b _020E3D00 ; case 2
	b _020E3D00 ; case 3
	b _020E3D00 ; case 4
	b _020E3D00 ; case 5
	b _020E3D00 ; case 6
	b _020E3D00 ; case 7
	b _020E3D00 ; case 8
	b _020E3D00 ; case 9
	b _020E3D00 ; case 10
	b _020E3D00 ; case 11
	b _020E3C54 ; case 12
	b _020E3D00 ; case 13
	b _020E3CF8 ; case 14
	b _020E3CA8 ; case 15
	b _020E3D00 ; case 16
	b _020E3D00 ; case 17
	b _020E3D00 ; case 18
	b _020E3D00 ; case 19
_020E3C54:
	ldr lr, [sp, #0x24]
	mov r1, sb
	ldrb r2, [lr, #1]
	ldrb r0, [lr, #2]
	ldrb r3, [lr, #3]
	ldrb ip, [lr, #4]
	orr r0, r2, r0, lsl #8
	orr r0, r0, r3, lsl #16
	orr r2, r0, ip, lsl #24
	add r0, lr, #5
	str r2, [sp, #0x10]
	bl sub_020E2A0C
	mov r1, r8
	bl sub_020E2980
	ldr r0, [r6, #0]
	ldr r1, [sp, #0x10]
	mov r2, r4
	bl sub_020E418C
	cmp r0, #0
	beq _020E3D00
	b _020E3D0C
_020E3CA8:
	ldr r0, [sp, #0x24]
	mov r1, r7
	add r0, r0, #1
	bl sub_020E2A0C
	mov r1, sl
	bl sub_020E2A0C
	mov r1, fp
	bl sub_020E2980
	str r0, [sp, #0xc]
	ldr r0, [r6, #0]
	mov r1, r7
	bl sub_020E39AC
	cmp r0, #0
	bne _020E3D00
	ldr r3, [sp, #0x24]
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl sub_020E3ADC
	b _020E3D00
_020E3CF8:
	bl sub_020E415C
	b _020E3D0C
_020E3D00:
	add r0, sp, #0x1c
	bl sub_020E2C20
	b _020E3BF8
_020E3D0C:
	ldr r0, [sp, #0x24]
	add sp, sp, #0xa4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020E3B3C

	arm_func_start sub_020E3D18
sub_020E3D18: ; 0x020E3D18
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x18]
	ldr ip, [r0, #4]
	add r3, lr, r1
	str ip, [lr, r1]
	ldr r1, [r0, #0]
	str r1, [r3, #4]
	ldr r1, [r0, #8]
	str r1, [r3, #8]
	ldr r1, [r0, #0]
	ldrb r1, [r1]
	cmp r1, #0x2a
	ldrne r0, [r0, #4]
	addne r0, r0, r2
	strne r0, [r3, #0xc]
	ldmneia sp!, {r3, pc}
	add r1, r3, #0x10
	str r1, [r3, #0xc]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	add r0, r0, r2
	str r0, [r3, #0x10]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020E3D18
_020E3D74:
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldr r0, [r5, #0x10]
	add r1, sp, #0x10
	bl sub_020E2AFC
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _020E3D9C
	bl sub_020E415C
_020E3D9C:
	add r1, sp, #0x10
	mov r0, r5
	bl sub_020E4398
	ldr r0, [r5, #0]
	cmp r0, #0
	movne r0, #0
	strne r0, [r5, #0xc]
	bne _020E3DD8
	add r1, sp, #0x10
	mov r0, r5
	bl sub_020E3858
	str r0, [r5, #0xc]
	cmp r0, #0
	bne _020E3DD8
	bl sub_020E415C
_020E3DD8:
	add r1, sp, #0x10
	add r2, sp, #0
	mov r0, r5
	bl sub_020E3B3C
	mov r4, r0
	ldrb r1, [r4, #1]
	ldrb r0, [r4, #2]
	ldrb r2, [r4, #3]
	ldrb r3, [r4, #4]
	orr r0, r1, r0, lsl #8
	orr r0, r0, r2, lsl #16
	orr r2, r0, r3, lsl #24
	add r1, sp, #8
	add r0, r4, #5
	str r2, [sp, #4]
	bl sub_020E2A0C
	add r1, sp, #0xc
	bl sub_020E2980
	add r1, sp, #0x10
	mov r0, r5
	mov r2, r4
	bl sub_020E2FA8
	ldr r1, [sp, #0xc]
	ldr r2, [sp]
	mov r0, r5
	bl sub_020E3D18
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r5
	add r1, sp, #0x10
	add r2, r3, r2
	bl sub_020E4488
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020E3E60
sub_020E3E60: ; 0x020E3E60
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	ldrne r2, [r0, #8]
	cmpne r2, #0
	ldmeqia sp!, {r3, pc}
	mov r0, r1
	mvn r1, #0
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_020E3E60

	arm_func_start sub_020E3E88
sub_020E3E88: ; 0x020E3E88
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E3E88

	arm_func_start sub_020E3E9C
sub_020E3E9C: ; 0x020E3E9C
	ldr r0, _020E3EA4 ; =0x02101B80
	bx lr
	; .align 2, 0
_020E3EA4: .word 0x02101B80
	arm_func_end sub_020E3E9C

	arm_func_start sub_020E3EA8
sub_020E3EA8: ; 0x020E3EA8
	stmfd sp!, {r3, lr}
	ldr r0, _020E3ED8 ; =0x02101BF8
	ldrb r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r3, _020E3EDC ; =0x02101C40
	ldr r0, _020E3EE0 ; =0x02101C4C
	ldr r2, _020E3EE4 ; =sub_020E3EE8
	add r1, sp, #0
	str r3, [sp]
	bl sub_020E44B8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020E3ED8: .word 0x02101BF8
_020E3EDC: .word 0x02101C40
_020E3EE0: .word 0x02101C4C
_020E3EE4: .word sub_020E3EE8
	arm_func_end sub_020E3EA8

	arm_func_start sub_020E3EE8
sub_020E3EE8: ; 0x020E3EE8
	bx lr
	arm_func_end sub_020E3EE8

	arm_func_start sub_020E3EEC
sub_020E3EEC: ; 0x020E3EEC
	stmfd sp!, {r3, r4, r5, r6, fp, lr}
	sub sp, sp, #0x18
	mov fp, sp
	mov r6, r0
	ldr r4, _020E3F4C ; =0x021D0D64
	moveq r6, #4
_020E3F04:
	mov r0, r6
	bl sub_020D3F50
	mov r5, r0
	bne _020E3F2C
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020E3F28
	blx r0
	b _020E3F04
_020E3F28:
	bl sub_020E3EA8
_020E3F2C:
	add sp, fp, #0x18
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, fp, pc}
_020E3F38:
	.byte 0x00, 0x00, 0x8B, 0xE2, 0xBB, 0xFE, 0xFF, 0xEB
	.byte 0xFE, 0xFF, 0xFF, 0xEA, 0x18, 0xD0, 0x8B, 0xE2, 0x78, 0x88, 0xBD, 0xE8
_020E3F4C: .word 0x021D0D64
	arm_func_end sub_020E3EEC

	arm_func_start sub_020E3F50
sub_020E3F50: ; 0x020E3F50
	stmfd sp!, {fp, lr}
	sub sp, sp, #0x30
	mov fp, sp
	str sp, [fp, #0x2c]
	bl sub_020E3EEC
	add sp, fp, #0x30
	ldmia sp!, {fp, pc}
	arm_func_end sub_020E3F50
_020E3F6C:
	.byte 0x18, 0x00, 0x8B, 0xE2
	.byte 0xBA, 0xFF, 0xFF, 0xEB, 0x30, 0xD0, 0x8B, 0xE2, 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x88, 0xBD, 0xE8
	.byte 0x00, 0x00, 0x8B, 0xE2, 0xA9, 0xFE, 0xFF, 0xEB, 0xFE, 0xFF, 0xFF, 0xEA, 0x30, 0xD0, 0x8B, 0xE2
	.byte 0x00, 0x88, 0xBD, 0xE8

	arm_func_start sub_020E3F94
sub_020E3F94: ; 0x020E3F94
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020D3F68
	ldmia sp!, {r3, pc}
	arm_func_end sub_020E3F94

	arm_func_start sub_020E3FA8
sub_020E3FA8: ; 0x020E3FA8
	stmfd sp!, {fp, lr}
	sub sp, sp, #0x18
	mov fp, sp
	bl sub_020E3EEC
	add sp, fp, #0x18
	ldmia sp!, {fp, pc}
	arm_func_end sub_020E3FA8
_020E3FC0:
	.byte 0x00, 0x00, 0x8B, 0xE2, 0x99, 0xFE, 0xFF, 0xEB, 0xFE, 0xFF, 0xFF, 0xEA, 0x18, 0xD0, 0x8B, 0xE2
	.byte 0x00, 0x88, 0xBD, 0xE8

	arm_func_start sub_020E3FD4
sub_020E3FD4: ; 0x020E3FD4
	stmfd sp!, {fp, lr}
	sub sp, sp, #0x18
	mov fp, sp
	bl sub_020E3F50
	add sp, fp, #0x18
	ldmia sp!, {fp, pc}
	arm_func_end sub_020E3FD4
_020E3FEC:
	.byte 0x00, 0x00, 0x8B, 0xE2
	.byte 0x8E, 0xFE, 0xFF, 0xEB, 0xFE, 0xFF, 0xFF, 0xEA, 0x18, 0xD0, 0x8B, 0xE2, 0x00, 0x88, 0xBD, 0xE8

	arm_func_start sub_020E4000
sub_020E4000: ; 0x020E4000
	ldr ip, _020E4008 ; =sub_020E3F94
	bx ip
	; .align 2, 0
_020E4008: .word sub_020E3F94
	arm_func_end sub_020E4000

	arm_func_start sub_020E400C
sub_020E400C: ; 0x020E400C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E400C

	arm_func_start sub_020E4020
sub_020E4020: ; 0x020E4020
	ldr r0, _020E4028 ; =0x02101BFC
	bx lr
	; .align 2, 0
_020E4028: .word 0x02101BFC
	arm_func_end sub_020E4020

	arm_func_start sub_020E402C
sub_020E402C: ; 0x020E402C
	stmfd sp!, {r4, lr}
	ldr r4, _020E4054 ; =0x020FECCC
	b _020E4040
_020E4038:
	blx r0
	add r4, r4, #4
_020E4040:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	bne _020E4038
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020E4054: .word 0x020FECCC
	arm_func_end sub_020E402C

	arm_func_start sub_020E4058
sub_020E4058: ; 0x020E4058
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020E4098 ; =0x021D0D68
	ldr r2, [r4, #0]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mvn r5, #0
_020E4070:
	ldr r0, [r2, #0]
	mov r1, r5
	str r0, [r4, #0]
	ldr r0, [r2, #8]
	ldr r2, [r2, #4]
	blx r2
	ldr r2, [r4, #0]
	cmp r2, #0
	bne _020E4070
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020E4098: .word 0x021D0D68
	arm_func_end sub_020E4058

	arm_func_start sub_020E409C
sub_020E409C: ; 0x020E409C
	bx lr
	arm_func_end sub_020E409C

	arm_func_start sub_020E40A0
sub_020E40A0: ; 0x020E40A0
	stmfd sp!, {r3, lr}
	cmp r0, r1
	beq _020E40C0
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	bl sub_020D8D14
	cmp r0, #0
	bne _020E40C8
_020E40C0:
	mov r0, #1
	ldmia sp!, {r3, pc}
_020E40C8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020E40A0

	arm_func_start sub_020E40D0
sub_020E40D0: ; 0x020E40D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E409C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E40D0

	arm_func_start sub_020E40E4
sub_020E40E4: ; 0x020E40E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E409C
	mov r0, r4
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E40E4

	arm_func_start sub_020E4100
sub_020E4100: ; 0x020E4100
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E409C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E4100

	arm_func_start sub_020E4114
sub_020E4114: ; 0x020E4114
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E4100
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E4114

	arm_func_start sub_020E4128
sub_020E4128: ; 0x020E4128
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E4100
	mov r0, r4
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E4128

	arm_func_start sub_020E4144
sub_020E4144: ; 0x020E4144
	ldr ip, _020E414C ; =sub_020D3DA0
	bx ip
	; .align 2, 0
_020E414C: .word sub_020D3DA0
	arm_func_end sub_020E4144

	arm_func_start sub_020E4150
sub_020E4150: ; 0x020E4150
	ldr ip, _020E4158 ; =sub_020E415C
	bx ip
	; .align 2, 0
_020E4158: .word sub_020E415C
	arm_func_end sub_020E4150

	arm_func_start sub_020E415C
sub_020E415C: ; 0x020E415C
	stmfd sp!, {r3, lr}
	ldr r0, _020E4170 ; =0x02101D0C
	ldr r0, [r0, #0]
	blx r0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020E4170: .word 0x02101D0C
	arm_func_end sub_020E415C

	arm_func_start sub_020E4174
sub_020E4174: ; 0x020E4174
	stmfd sp!, {r3, lr}
	ldr r0, _020E4188 ; =0x02101D0C
	ldr r0, [r0, #4]
	blx r0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020E4188: .word 0x02101D0C
	arm_func_end sub_020E4174

	arm_func_start sub_020E418C
sub_020E418C: ; 0x020E418C
	stmfd sp!, {r3, lr}
	mov ip, #0
	mov r3, r1
	cmp r1, #0
	str ip, [r2]
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldrb ip, [r1]
	cmp ip, #0x50
	bne _020E41F0
	ldrb ip, [r3, #1]!
	cmp ip, #0x56
	addeq r3, r3, #1
	ldrb ip, [r3]
	cmp ip, #0x4b
	addeq r3, r3, #1
	ldrb r3, [r3]
	cmp r3, #0x76
	bne _020E41EC
	ldrb r3, [r0]
	cmp r3, #0x50
	cmpne r3, #0x2a
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_020E41EC:
	mov r3, r1
_020E41F0:
	ldrb ip, [r0]
	cmp ip, #0x21
	cmpne ip, #0x2a
	bne _020E42F0
	ldrb lr, [r0], #1
	ldrb ip, [r3], #1
	cmp lr, ip
	movne r0, #0
	ldmneia sp!, {r3, pc}
_020E4214:
	ldrb lr, [r0]
	ldrb ip, [r3], #1
	cmp lr, ip
	bne _020E4268
	cmp lr, #0x21
	add r0, r0, #1
	bne _020E4214
	ldrb r1, [r0]
	mov lr, #0
	cmp r1, #0x21
	beq _020E425C
	mov r1, #0xa
_020E4244:
	ldrb ip, [r0]
	ldrb r3, [r0, #1]!
	mla ip, lr, r1, ip
	cmp r3, #0x21
	sub lr, ip, #0x30
	bne _020E4244
_020E425C:
	str lr, [r2]
	mov r0, #1
	ldmia sp!, {r3, pc}
_020E4268:
	ldrb r3, [r0], #1
	cmp r3, #0x21
	bne _020E4268
_020E4274:
	ldrb r3, [r0], #1
	cmp r3, #0x21
	bne _020E4274
	ldrb r3, [r0]
	cmp r3, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r3, r1, #1
	b _020E4214
_020E4298:
	ldrb r1, [r3, #1]!
	add r0, r0, #1
	cmp r1, #0x4b
	bne _020E42B8
	ldrb r1, [r0]
	add r3, r3, #1
	cmp r1, #0x4b
	addeq r0, r0, #1
_020E42B8:
	ldrb r2, [r0]
	cmp r2, #0x4b
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r1, [r3]
	cmp r1, #0x56
	bne _020E42E0
	cmp r2, #0x56
	addeq r0, r0, #1
	add r3, r3, #1
_020E42E0:
	ldrb r1, [r0]
	cmp r1, #0x56
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_020E42F0:
	ldrb r2, [r0]
	cmp r2, #0x50
	cmpne r2, #0x52
	bne _020E430C
	ldrb r1, [r3]
	cmp r2, r1
	beq _020E4298
_020E430C:
	ldrb r1, [r3]
	cmp r2, r1
	bne _020E4334
_020E4318:
	cmp r2, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldrb r2, [r0, #1]!
	ldrb r1, [r3, #1]!
	cmp r2, r1
	beq _020E4318
_020E4334:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020E418C

	arm_func_start sub_020E433C
sub_020E433C: ; 0x020E433C
	stmfd sp!, {r4, lr}
	ldrb r1, [r0, #0x6a]
	ldr ip, [r0, #0x60]
	mov r4, #0xf
	cmp r1, #0
	ldr r1, [r0, #0x18]
	movne r2, #0x10
	moveq r2, #0
	add r1, r1, ip
	sub lr, r1, r2
	mov r3, #1
_020E4368:
	ldrh r1, [r0, #0x68]
	tst r1, r3, lsl r4
	ldrne r2, [lr, #-4]!
	addne r1, r0, r4, lsl #2
	strne r2, [r1, #0x1c]
	sub r4, r4, #1
	bpl _020E4368
	ldr r1, [r0, #0x18]
	add r1, r1, ip
	str r1, [r0, #0x14]
	ldr r0, [r0, #0x54]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E433C

	arm_func_start sub_020E4398
sub_020E4398: ; 0x020E4398
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r1, #4]
	mov r6, r0
	ldrb r0, [r1]
	and r4, r0, #0x40
	movne r2, #1
	moveq r2, #0
	strb r2, [r6, #0x6b]
	tst r0, #0x20
	movne r2, #1
	moveq r2, #0
	and r5, r0, #0x80
	movne r0, #1
	strb r2, [r6, #0x6a]
	moveq r0, #0
	strb r0, [r6, #0x6c]
	ldrb r2, [r1, #1]
	add r0, r1, #2
	add r1, r6, #0x60
	mov r2, r2, lsl #4
	strh r2, [r6, #0x68]
	ldrh r2, [r6, #0x68]
	orr r2, r2, #0x4000
	strh r2, [r6, #0x68]
	bl sub_020E2A0C
	cmp r4, #0
	beq _020E440C
	add r1, r6, #0x64
	bl sub_020E2A0C
_020E440C:
	cmp r4, #0
	beq _020E442C
	cmp r5, #0
	ldrne r0, [r6, #0x38]
	strne r0, [r6, #0x18]
	ldreq r0, [r6, #0x48]
	streq r0, [r6, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
_020E442C:
	ldr r0, [r6, #0x14]
	str r0, [r6, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020E4398

	arm_func_start sub_020E4438
sub_020E4438: ; 0x020E4438
	ldr r2, _020E4450 ; =0x020E4670
	ldr r1, _020E4454 ; =0x020E4C40
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	mov r0, #1
	bx lr
	; ; .align 2, 0
_020E4450: .word 0x020E4670
_020E4454: .word 0x020E4C40
	arm_func_end sub_020E4438

	arm_func_start sub_020E4458
sub_020E4458: ; 0x020E4458
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrb r4, [r0], #2
	add r1, sp, #0
	bl sub_020E2A0C
	tst r4, #0x40
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	add r1, sp, #0
	bl sub_020E2A0C
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020E4458

	arm_func_start sub_020E4488
sub_020E4488: ; 0x020E4488
	ldr r4, [r0, #0x2c]
	ldr r5, [r0, #0x30]
	ldr r6, [r0, #0x34]
	ldr r7, [r0, #0x38]
	ldr r8, [r0, #0x3c]
	ldr sb, [r0, #0x40]
	ldr sl, [r0, #0x44]
	ldr fp, [r0, #0x48]
	ldr sp, [r0, #0x5c]
	ldr ip, [r0, #0x64]
	sub sp, sp, ip
	bx r2
	arm_func_end sub_020E4488

	arm_func_start sub_020E44B8
sub_020E44B8: ; 0x020E44B8
	mov ip, sp
	sub sp, sp, #0x70
	str r4, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r6, [sp, #0x34]
	str r7, [sp, #0x38]
	str r8, [sp, #0x3c]
	str sb, [sp, #0x40]
	str sl, [sp, #0x44]
	str fp, [sp, #0x48]
	str ip, [sp, #0x14]
	str ip, [sp, #0x5c]
	str lr, [sp, #0x10]
	str r0, [sp, #0]
	str r1, [sp, #0x4]
	str r2, [sp, #0x8]
	mov r0, sp
	b _020E3D74
	arm_func_end sub_020E44B8

	arm_func_start sub_020E4500
sub_020E4500: ; 0x020E4500
	mov ip, sp
	sub sp, sp, #0x70
	str r4, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r6, [sp, #0x34]
	str r7, [sp, #0x38]
	str r8, [sp, #0x3c]
	str sb, [sp, #0x40]
	str sl, [sp, #0x44]
	str fp, [sp, #0x48]
	str ip, [sp, #0x14]
	str ip, [sp, #0x5c]
	str lr, [sp, #0x10]
	mov ip, #0x0
	str ip, [sp, #0]
	str ip, [sp, #0x4]
	str ip, [sp, #0x8]
	mov r0, sp
	b _020E3D74
	arm_func_end sub_020E4500

	arm_func_start sub_020E454C
sub_020E454C: ; 0x020E454C
	ldr ip, [pc, #0x0] ; =sys_exit
	bx ip
	arm_func_end sub_020E454C

_020E4554:
	.word 0x020E28E4

	.incbin "incbin/arm9.bin"

	.bss
	.space 0xCF060
