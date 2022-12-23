	.include "macros/function.inc"
	.include "overlay004/ov4_02208324.inc"

	

	.text


	arm_func_start ov4_02208324
ov4_02208324: ; 0x02208324
	stmfd sp!, {r3, lr}
	cmp r1, #1
	bne _0220833C
	ldr r0, _02208348 ; =0x0221A154
	bl ov4_02206224
	ldmia sp!, {r3, pc}
_0220833C:
	ldr r0, _0220834C ; =0x0221A13C
	bl ov4_02206224
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02208348: .word 0x0221A154
_0220834C: .word 0x0221A13C
	arm_func_end ov4_02208324

	arm_func_start ov4_02208350
ov4_02208350: ; 0x02208350
	ldrh r1, [r1, #2]
	ldr ip, _02208378 ; =ov4_02206808
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bx ip
	; .align 2, 0
_02208378: .word ov4_02206808
	arm_func_end ov4_02208350

	arm_func_start ov4_0220837C
ov4_0220837C: ; 0x0220837C
	stmfd sp!, {r4, lr}
	ldrh r2, [r1, #2]
	ldr lr, [r1, #4]
	mov r4, r2, asr #8
	mov r1, r2, lsl #8
	mov r3, lr, lsr #0x18
	mov r2, lr, lsr #8
	mov ip, lr, lsl #8
	mov lr, lr, lsl #0x18
	and r4, r4, #0xff
	and r1, r1, #0xff00
	orr r1, r4, r1
	mov r1, r1, lsl #0x10
	and r3, r3, #0xff
	and r2, r2, #0xff00
	and ip, ip, #0xff0000
	orr r2, r3, r2
	and r3, lr, #0xff000000
	orr r2, ip, r2
	mov r1, r1, lsr #0x10
	orr r2, r3, r2
	bl ov4_02206878
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0220837C

	arm_func_start ov4_022083D8
ov4_022083D8: ; 0x022083D8
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov ip, #0
	str ip, [sp]
	str r3, [sp, #4]
	mov r3, ip
	bl ov4_02206A3C
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end ov4_022083D8

	arm_func_start ov4_022083FC
ov4_022083FC: ; 0x022083FC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	add ip, sp, #0xc
	str ip, [sp]
	str r3, [sp, #4]
	add r3, sp, #8
	bl ov4_02206A3C
	cmp r0, #0
	addlt sp, sp, #0x10
	ldmltia sp!, {r3, pc}
	ldr r1, [sp, #0x18]
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, pc}
	ldrh r2, [sp, #8]
	mov r3, r2, asr #8
	mov r2, r2, lsl #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	strh r2, [r1, #2]
	ldr lr, [sp, #0xc]
	mov r3, lr, lsr #0x18
	mov r2, lr, lsr #8
	mov ip, lr, lsl #8
	mov lr, lr, lsl #0x18
	and r3, r3, #0xff
	and r2, r2, #0xff00
	and ip, ip, #0xff0000
	orr r2, r3, r2
	and r3, lr, #0xff000000
	orr r2, ip, r2
	orr r2, r3, r2
	str r2, [r1, #4]
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ov4_022083FC

	arm_func_start ov4_0220848C
ov4_0220848C: ; 0x0220848C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov ip, #0
	str ip, [sp]
	str r3, [sp, #4]
	mov r3, ip
	bl ov4_0220729C
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end ov4_0220848C

	arm_func_start ov4_022084B0
ov4_022084B0: ; 0x022084B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r5, [sp, #0x20]
	cmp r5, #0
	moveq r5, #0
	moveq r4, r5
	beq _0220851C
	ldrh r4, [r5, #2]
	ldr r6, [r5, #4]
	mov r7, r4, asr #8
	mov ip, r4, lsl #8
	mov r4, r6, lsr #0x18
	mov lr, r6, lsr #8
	mov r5, r6, lsl #8
	mov r6, r6, lsl #0x18
	and r7, r7, #0xff
	and ip, ip, #0xff00
	orr r7, r7, ip
	and r4, r4, #0xff
	and lr, lr, #0xff00
	and r5, r5, #0xff0000
	orr r4, r4, lr
	mov ip, r7, lsl #0x10
	orr r4, r5, r4
	and r6, r6, #0xff000000
	mov r5, ip, lsr #0x10
	orr r4, r6, r4
_0220851C:
	str r4, [sp]
	str r3, [sp, #4]
	mov r3, r5
	bl ov4_0220729C
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_022084B0

	arm_func_start ov4_02208534
ov4_02208534: ; 0x02208534
	ldr ip, _0220853C ; =ov4_0220793C
	bx ip
	; .align 2, 0
_0220853C: .word ov4_0220793C
	arm_func_end ov4_02208534

	arm_func_start ov4_02208540
ov4_02208540: ; 0x02208540
	ldr ip, _02208548 ; =ov4_02207A4C
	bx ip
	; .align 2, 0
_02208548: .word ov4_02207A4C
	arm_func_end ov4_02208540

	arm_func_start ov4_0220854C
ov4_0220854C: ; 0x0220854C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov4_02207F58
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _022085F4 ; =0x0221DCEC
	ldr r2, _022085F8 ; =0x00000101
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _022085F4 ; =0x0221DCEC
	ldr r2, _022085F8 ; =0x00000101
	mov r1, r5
	bl STD_CopyLString
	mov r3, r4, lsr #0x18
	mov r2, r4, lsr #8
	mov ip, r4, lsl #8
	mov lr, r4, lsl #0x18
	ldr r4, _022085F4 ; =0x0221DCEC
	ldr r1, _022085FC ; =0x0221DC64
	mov r0, #0
	str r4, [r1, #0x20]
	str r0, [r1, #0x24]
	mov r4, #2
	strh r4, [r1, #0x28]
	mov r4, #4
	ldr r5, _02208600 ; =0x0221DC7C
	strh r4, [r1, #0x2a]
	and r3, r3, #0xff
	and r2, r2, #0xff00
	ldr r4, _02208604 ; =0x0221DC64
	str r5, [r1, #0x2c]
	str r4, [r1, #0x18]
	and ip, ip, #0xff0000
	orr r2, r3, r2
	and r3, lr, #0xff000000
	orr r2, ip, r2
	str r0, [r1, #0x1c]
	orr r2, r3, r2
	ldr r0, _02208608 ; =0x0221DC84
	str r2, [r1, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022085F4: .word 0x0221DCEC
_022085F8: .word 0x00000101
_022085FC: .word 0x0221DC64
_02208600: .word 0x0221DC7C
_02208604: .word 0x0221DC64
_02208608: .word 0x0221DC84
	arm_func_end ov4_0220854C

	arm_func_start ov4_0220860C
ov4_0220860C: ; 0x0220860C
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r0
	mov r4, r1
	mvneq r0, #0x26
	ldmeqia sp!, {r4, r5, r6, pc}
	bl ov4_02208088
	cmp r5, #0
	ldrneh r1, [r5, #0x74]
	mov r2, r0, lsr #0x18
	mov r6, #8
	moveq r1, #0
	cmp r0, #0
	moveq r1, #0
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r5, r3, asr #8
	mov lr, r3, lsl #8
	strb r6, [r4]
	mov r6, #2
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov ip, r0, lsl #0x18
	and r0, r1, #0xff00
	and r2, r2, #0xff
	orr r0, r2, r0
	and r1, r3, #0xff0000
	and r5, r5, #0xff
	and lr, lr, #0xff00
	strb r6, [r4, #1]
	orr r3, r5, lr
	and r2, ip, #0xff000000
	orr r0, r1, r0
	strh r3, [r4, #2]
	orr r0, r2, r0
	str r0, [r4, #4]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_0220860C

	arm_func_start ov4_022086A0
ov4_022086A0: ; 0x022086A0
	stmfd sp!, {r3, lr}
	bl ov4_02208088
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov ip, r0, lsl #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, ip, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
	ldmia sp!, {r3, pc}
	arm_func_end ov4_022086A0

	arm_func_start ov4_022086D8
ov4_022086D8: ; 0x022086D8
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, [r1]
	ldr r0, [r0, #0]
	mov r2, ip, lsr #0x18
	mov r4, r0, lsr #0x18
	mov lr, r0, lsr #8
	mov r1, ip, lsr #8
	mov r5, r0, lsl #8
	mov r3, ip, lsl #8
	mov r0, r0, lsl #0x18
	mov ip, ip, lsl #0x18
	and r4, r4, #0xff
	and lr, lr, #0xff00
	and r2, r2, #0xff
	and r1, r1, #0xff00
	and r5, r5, #0xff0000
	orr r4, r4, lr
	and r3, r3, #0xff0000
	orr r1, r2, r1
	and lr, r0, #0xff000000
	orr r0, r5, r4
	and r2, ip, #0xff000000
	orr r1, r3, r1
	orr r0, lr, r0
	orr r1, r2, r1
	bl ov4_02208054
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_022086D8

	arm_func_start ov4_02208744
ov4_02208744: ; 0x02208744
	ldr ip, _0220874C ; =ov4_0220657C
	bx ip
	; .align 2, 0
_0220874C: .word ov4_0220657C
	arm_func_end ov4_02208744

	arm_func_start ov4_02208750
ov4_02208750: ; 0x02208750
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	add r1, sp, #0
	add r2, sp, #4
	bl ov4_022065FC
	cmp r0, #0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldrh r1, [sp]
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	strh r1, [r4, #2]
	ldr ip, [sp, #4]
	mov r2, ip, lsr #0x18
	mov r1, ip, lsr #8
	mov r3, ip, lsl #8
	mov ip, ip, lsl #0x18
	and r2, r2, #0xff
	and r1, r1, #0xff00
	and r3, r3, #0xff0000
	orr r1, r2, r1
	and r2, ip, #0xff000000
	orr r1, r3, r1
	orr r1, r2, r1
	str r1, [r4, #4]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov4_02208750

	arm_func_start ov4_022087CC
ov4_022087CC: ; 0x022087CC
	cmp r0, #0
	mvneq r0, #0
	bxeq lr
	cmp r1, #3
	beq _022087EC
	cmp r1, #4
	beq _02208800
	b _02208814
_022087EC:
	ldrsb r0, [r0, #0x72]
	cmp r0, #1
	moveq r0, #0
	movne r0, #4
	bx lr
_02208800:
	tst r2, #4
	movne r1, #0
	strneb r1, [r0, #0x72]
	moveq r1, #1
	streqb r1, [r0, #0x72]
_02208814:
	mov r0, #0
	bx lr
	arm_func_end ov4_022087CC

	arm_func_start ov4_0220881C
ov4_0220881C: ; 0x0220881C
	stmfd sp!, {r4, lr}
	ldr r1, _02208844 ; =0x0221DC64
	add r4, r0, #4
	ldr r2, [r1, #0xc]
	mov r1, r4
	mov r0, #0
	blx r2
	cmp r0, #0
	strne r4, [r0], #4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02208844: .word 0x0221DC64
	arm_func_end ov4_0220881C

	arm_func_start ov4_02208848
ov4_02208848: ; 0x02208848
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, _02208870 ; =0x0221DC64
	ldr r2, [r0, #-4]
	ldr r3, [r1, #4]
	sub r1, r0, #4
	mov r0, #0
	blx r3
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02208870: .word 0x0221DC64
	arm_func_end ov4_02208848

	arm_func_start ov4_02208874
ov4_02208874: ; 0x02208874
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0, #0xc]
	ldr ip, _022089D8 ; =ov4_0220881C
	cmp r1, #1
	moveq r2, #1
	ldr r1, _022089DC ; =0x0221DC64
	movne r2, #0
	str r2, [r1, #0x40]
	ldr r6, [r0, #0x10]
	ldr r3, _022089E0 ; =ov4_02208848
	mov r4, r6, lsr #0x18
	mov r2, r6, lsr #8
	mov r5, r6, lsl #8
	and r4, r4, #0xff
	and r2, r2, #0xff00
	mov r6, r6, lsl #0x18
	orr r2, r4, r2
	and r5, r5, #0xff0000
	and r4, r6, #0xff000000
	orr r2, r5, r2
	orr r2, r4, r2
	str r2, [r1, #0x44]
	ldr lr, [r0, #0x14]
	mov r2, #0x40
	mov r5, lr, lsr #0x18
	mov r4, lr, lsr #8
	mov r6, lr, lsl #8
	and r5, r5, #0xff
	and r4, r4, #0xff00
	mov lr, lr, lsl #0x18
	orr r4, r5, r4
	and r6, r6, #0xff0000
	and r5, lr, #0xff000000
	orr r4, r6, r4
	orr r4, r5, r4
	str r4, [r1, #0x48]
	ldr lr, [r0, #0x18]
	mov r5, lr, lsr #0x18
	mov r4, lr, lsr #8
	mov r6, lr, lsl #8
	and r5, r5, #0xff
	and r4, r4, #0xff00
	mov lr, lr, lsl #0x18
	orr r4, r5, r4
	and r6, r6, #0xff0000
	and r5, lr, #0xff000000
	orr r4, r6, r4
	orr r4, r5, r4
	str r4, [r1, #0x4c]
	ldr lr, [r0, #0x1c]
	mov r5, lr, lsr #0x18
	mov r4, lr, lsr #8
	mov r6, lr, lsl #8
	and r5, r5, #0xff
	and r4, r4, #0xff00
	mov lr, lr, lsl #0x18
	orr r4, r5, r4
	and r6, r6, #0xff0000
	and r5, lr, #0xff000000
	orr r4, r6, r4
	orr r4, r5, r4
	str r4, [r1, #0x50]
	ldr r6, [r0, #0x20]
	mov r4, r6, lsr #0x18
	mov lr, r6, lsr #8
	mov r5, r6, lsl #8
	mov r6, r6, lsl #0x18
	and r4, r4, #0xff
	and lr, lr, #0xff00
	and r5, r5, #0xff0000
	orr r4, r4, lr
	and r6, r6, #0xff000000
	orr r4, r5, r4
	orr r4, r6, r4
	str r4, [r1, #0x54]
	str ip, [r1, #0x58]
	str r3, [r1, #0x5c]
	ldr r3, [r0, #4]
	str r3, [r1, #0xc]
	ldr r3, [r0, #8]
	str r3, [r1, #4]
	str r2, [r1, #0x60]
	ldr r2, [r0, #0x2c]
	str r2, [r1, #0x70]
	ldr r2, [r0, #0x30]
	ldr r0, _022089E4 ; =0x0221DCA4
	str r2, [r1, #0x74]
	bl ov4_02205C7C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022089D8: .word ov4_0220881C
_022089DC: .word 0x0221DC64
_022089E0: .word ov4_02208848
_022089E4: .word 0x0221DCA4
	arm_func_end ov4_02208874

	arm_func_start ov4_022089E8
ov4_022089E8: ; 0x022089E8
	ldr ip, _022089F0 ; =ov4_02207D90
	bx ip
	; .align 2, 0
_022089F0: .word ov4_02207D90
	arm_func_end ov4_022089E8

	arm_func_start ov4_022089F4
ov4_022089F4: ; 0x022089F4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	ldr r2, _02208A20 ; =0x0221DCDC
	add r1, sp, #8
	mov r0, #2
	mov r3, #0x10
	bl ov4_02208A74
	ldr r0, _02208A20 ; =0x0221DCDC
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_02208A20: .word 0x0221DCDC
	arm_func_end ov4_022089F4

	arm_func_start ov4_02208A24
ov4_02208A24: ; 0x02208A24
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl ov4_02208008
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov ip, r0, lsl #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, ip, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
	str r0, [r4, #0]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov4_02208A24

	arm_func_start ov4_02208A74
ov4_02208A74: ; 0x02208A74
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	cmp r0, #2
	mov r4, r2
	addne sp, sp, #0x14
	movne r0, #0
	ldmneia sp!, {r3, r4, pc}
	cmp r3, #0x10
	addlo sp, sp, #0x14
	movlo r0, #0
	ldmloia sp!, {r3, r4, pc}
	mov r0, r1
	add r1, sp, #0x10
	mov r2, #4
	bl MI_CpuCopy8
	ldr r0, [sp, #0x10]
	add r1, sp, #0xc
	bl ov4_02208AF8
	ldrb r1, [sp, #0xe]
	ldr r2, _02208AF4 ; =0x0221A184
	mov r0, r4
	str r1, [sp]
	ldrb r3, [sp, #0xd]
	mov r1, #0x10
	str r3, [sp, #4]
	ldrb r3, [sp, #0xc]
	str r3, [sp, #8]
	ldrb r3, [sp, #0xf]
	bl OS_SNPrintf
	mov r0, r4
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02208AF4: .word 0x0221A184
	arm_func_end ov4_02208A74

	arm_func_start ov4_02208AF8
ov4_02208AF8: ; 0x02208AF8
	mov r2, r0, lsr #0x18
	strb r2, [r1]
	mov r2, r0, lsr #0x10
	strb r2, [r1, #1]
	mov r2, r0, lsr #8
	strb r2, [r1, #2]
	strb r0, [r1, #3]
	bx lr
	arm_func_end ov4_02208AF8

	arm_func_start ov4_02208B18
ov4_02208B18: ; 0x02208B18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r2
	mov r8, r3
	mvn r2, #0
	cmp r8, r2
	cmpeq sb, r2
	movne fp, #1
	str r0, [sp]
	mov sl, r1
	moveq fp, #0
_02208B40:
	mov r6, #0
	ldr r4, [sp]
	mov r5, r6
	cmp sl, #0
	bls _02208B80
_02208B54:
	ldrsh r1, [r4, #4]
	ldr r0, [r4, #0]
	orr r7, r1, #0xe0
	bl ov4_022080F0
	ands r0, r7, r0
	strh r0, [r4, #6]
	add r5, r5, #1
	addne r6, r6, #1
	add r4, r4, #8
	cmp r5, sl
	blo _02208B54
_02208B80:
	cmp r6, #0
	bgt _02208BC0
	cmp fp, #0
	beq _02208BA4
	mov r0, #0
	subs r0, r0, sb
	mov r0, #0
	sbcs r0, r0, r8
	bge _02208BC0
_02208BA4:
	mov r0, #1
	bl OS_Sleep
	ldr r0, _02208BC8 ; =0x0000020B
	subs sb, sb, r0
	mov r0, #0
	sbc r8, r8, r0
	b _02208B40
_02208BC0:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02208BC8: .word 0x0000020B
	arm_func_end ov4_02208B18

	.data


	.global Unk_ov4_0221A184
Unk_ov4_0221A184: ; 0x0221A184
	.incbin "incbin/overlay4_data.bin", 0x4304, 0xC



	.bss


	.global Unk_ov4_0221DC64
Unk_ov4_0221DC64: ; 0x0221DC64
	.space 0x4

	.global Unk_ov4_0221DC68
Unk_ov4_0221DC68: ; 0x0221DC68
	.space 0x4

	.global Unk_ov4_0221DC6C
Unk_ov4_0221DC6C: ; 0x0221DC6C
	.space 0x4

	.global Unk_ov4_0221DC70
Unk_ov4_0221DC70: ; 0x0221DC70
	.space 0x4

	.global Unk_ov4_0221DC74
Unk_ov4_0221DC74: ; 0x0221DC74
	.space 0x8

	.global Unk_ov4_0221DC7C
Unk_ov4_0221DC7C: ; 0x0221DC7C
	.space 0x8

	.global Unk_ov4_0221DC84
Unk_ov4_0221DC84: ; 0x0221DC84
	.space 0x10

	.global Unk_ov4_0221DC94
Unk_ov4_0221DC94: ; 0x0221DC94
	.space 0x10

	.global Unk_ov4_0221DCA4
Unk_ov4_0221DCA4: ; 0x0221DCA4
	.space 0x38

	.global Unk_ov4_0221DCDC
Unk_ov4_0221DCDC: ; 0x0221DCDC
	.space 0x10

	.global Unk_ov4_0221DCEC
Unk_ov4_0221DCEC: ; 0x0221DCEC
	.space 0x104

