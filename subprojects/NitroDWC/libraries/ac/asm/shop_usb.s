	.include "macros/function.inc"
	.include "include/shop_usb.inc"

	

	.text


	arm_func_start ov4_021E85F4
ov4_021E85F4: ; 0x021E85F4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	add r1, sp, #0
	bl ov4_021E86D4
	ldr r1, _021E8628 ; =0x0221768C
	add r0, sp, #0
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E8628: .word Unk_ov4_0221768C
	arm_func_end ov4_021E85F4

	arm_func_start ov4_021E862C
ov4_021E862C: ; 0x021E862C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl ov4_021E86D4
	add r0, sp, #0
	mov r1, r4
	bl ov4_021E87D8
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E862C

	arm_func_start ov4_021E8654
ov4_021E8654: ; 0x021E8654
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl ov4_021E86D4
	ldr r1, _021E869C ; =0x0221768C
	add r0, sp, #0
	mov r2, #8
	bl memcmp
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, pc}
	add r0, sp, #8
	mov r1, r4
	mov r2, #0xa
	bl MI_CpuCopy8
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E869C: .word Unk_ov4_0221768C
	arm_func_end ov4_021E8654

	arm_func_start ov4_021E86A0
ov4_021E86A0: ; 0x021E86A0
	stmfd sp!, {r3, lr}
	ldr r1, _021E86C0 ; =0x02217698
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E86C0: .word Unk_ov4_02217698
	arm_func_end ov4_021E86A0

	arm_func_start ov4_021E86C4
ov4_021E86C4: ; 0x021E86C4
	ldr ip, _021E86D0 ; =ov4_021E8824
	add r0, r0, #0xc
	bx ip
	; .align 2, 0
_021E86D0: .word ov4_021E8824
	arm_func_end ov4_021E86C4

	arm_func_start ov4_021E86D4
ov4_021E86D4: ; 0x021E86D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr lr, _021E87D0 ; =0x02215943
	add ip, sp, #0
	mov r4, r1
	mov r3, #0xc
_021E86EC:
	ldrb r2, [lr]
	ldrb r1, [lr, #1]
	add lr, lr, #2
	strb r2, [ip]
	strb r1, [ip, #1]
	add ip, ip, #2
	subs r3, r3, #1
	bne _021E86EC
	mov r1, r4
	mov r2, #0x20
	mov r3, #0x18
	bl ov4_021E8A40
	ldr r0, _021E87D4 ; =0x02217624
	mov r3, #0
_021E8724:
	ldr r1, [r0, #8]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _021E8724
	mov r7, #0
	add ip, sp, #0
	mov r1, #0xff
_021E8750:
	and lr, r7, #0xff
	ldrb r0, [ip, lr]
	mov r5, lr
	ldrb r6, [r4, r7]
	cmp r0, #0xff
	beq _021E8794
_021E8768:
	add r3, ip, r5
	ldrb r5, [ip, r5]
	ldrb r0, [ip, lr]
	ldrb r2, [r4, r5]
	mov lr, r5
	strb r6, [r4, r0]
	strb r1, [r3]
	ldrb r0, [ip, r5]
	mov r6, r2
	cmp r0, #0xff
	bne _021E8768
_021E8794:
	add r7, r7, #1
	cmp r7, #0x18
	blt _021E8750
	ldr r0, _021E87D4 ; =0x02217624
	mov r3, #0
_021E87A8:
	ldr r1, [r0, #0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _021E87A8
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E87D0: .word Unk_ov4_02215943
_021E87D4: .word Unk_ov4_02217624
	arm_func_end ov4_021E86D4

	arm_func_start ov4_021E87D8
ov4_021E87D8: ; 0x021E87D8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x6c
	mov r5, r0
	add r0, sp, #0x14
	mov r4, r1
	bl DGT_Hash1Reset
	add r0, sp, #0x14
	mov r1, r5
	mov r2, #0x18
	bl DGT_Hash1SetSource
	add r0, sp, #0
	add r1, sp, #0x14
	bl DGT_Hash1GetDigest_R
	add r0, sp, #3
	mov r1, r4
	mov r2, #0xd
	bl MI_CpuCopy8
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov4_021E87D8

	arm_func_start ov4_021E8824
ov4_021E8824: ; 0x021E8824
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr lr, _021E89C0 ; =0x92492493
	mov r4, r1
	mov r1, #0
	mov ip, #7
_021E883C:
	smull r2, r3, lr, r1
	add r3, r1, r3
	mov r2, r1, lsr #0x1f
	add r3, r2, r3, asr #2
	smull r2, r3, ip, r3
	sub r3, r1, r2
	add r2, r0, r3
	ldrb r3, [r0, r1]
	ldrb r2, [r2, #0xd]
	eor r2, r3, r2
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, #0xd
	blt _021E883C
	mov ip, #0
_021E8878:
	add r3, r4, ip
	add r1, r0, ip
	ldrb r2, [r3, #3]
	ldrb r1, [r1, #0xd]
	add ip, ip, #1
	cmp ip, #7
	eor r1, r2, r1
	strb r1, [r3, #3]
	blt _021E8878
	ldr r0, _021E89C4 ; =0x02217624
	mov r3, #0
_021E88A4:
	ldr r1, [r0, #4]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _021E88A4
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl MI_CpuCopy8
	ldr r3, _021E89C8 ; =0x0221595C
	add r2, sp, #0
	mov ip, #0
_021E88E0:
	ldrb r1, [r2], #1
	ldrb r0, [r3], #1
	add ip, ip, #1
	cmp ip, #0xd
	strb r1, [r4, r0]
	blt _021E88E0
	ldr r0, _021E89C4 ; =0x02217624
	mov r3, #0
_021E8900:
	ldr r1, [r0, #0xc]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _021E8900
	ldr r2, _021E89CC ; =0x0221596C
	mov ip, #0
_021E8928:
	ldrb r3, [r4, ip]
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4, ip]
	add ip, ip, #1
	cmp ip, #0xd
	blt _021E8928
	mov r1, #0
_021E8958:
	add r0, r4, r1
	ldrb r3, [r4, r1]
	ldrb r2, [r0, #6]
	eor r2, r3, r2
	strb r2, [r4, r1]
	ldrb r3, [r0, #3]
	ldrb r2, [r0, #9]
	eor r2, r3, r2
	strb r2, [r0, #3]
	ldrb r3, [r0, #6]
	and r2, r2, #0xff
	eor r2, r3, r2
	strb r2, [r0, #6]
	ldrb r3, [r0, #9]
	ldrb r2, [r4, r1]
	eor r2, r3, r2
	strb r2, [r0, #9]
	ldrb r0, [r4, r1]
	ldrb r2, [r4, #0xc]
	add r1, r1, #1
	cmp r1, #3
	eor r0, r2, r0
	strb r0, [r4, #0xc]
	blt _021E8958
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E89C0: .word 0x92492493
_021E89C4: .word Unk_ov4_02217624
_021E89C8: .word Unk_ov4_0221595C
_021E89CC: .word Unk_ov4_0221596C
	arm_func_end ov4_021E8824

	arm_func_start ov4_021E89D0
ov4_021E89D0: ; 0x021E89D0
	cmp r0, #0x41
	blo _021E89E4
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_021E89E4:
	cmp r0, #0x61
	blo _021E89FC
	cmp r0, #0x7a
	subls r0, r0, #0x61
	addls r0, r0, #0x1a
	bxls lr
_021E89FC:
	cmp r0, #0x30
	blo _021E8A14
	cmp r0, #0x39
	subls r0, r0, #0x30
	addls r0, r0, #0x34
	bxls lr
_021E8A14:
	cmp r0, #0x2b
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2f
	moveq r0, #0x3f
	bxeq lr
	cmp r0, #0x3d
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr
	arm_func_end ov4_021E89D0

	arm_func_start ov4_021E8A40
ov4_021E8A40: ; 0x021E8A40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	add r4, r2, r2, lsl #1
	str r0, [sp]
	mov r0, r4, lsr #2
	str r1, [sp, #4]
	cmp r3, r4, lsr #2
	str r0, [sp, #8]
	blo _021E8A74
	and fp, r2, #3
	sub r0, r2, fp
	str r0, [sp, #0xc]
	b _021E8A80
_021E8A74:
	add sp, sp, #0x18
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E8A80:
	cmp r0, #0
	mov r7, #0
	ble _021E8B08
	mov sb, r7
	add r5, sp, #0x14
	mov r4, #6
_021E8A98:
	ldr r0, [sp]
	mov r6, #0
	mov r8, r6
	add sl, r0, r7
_021E8AA8:
	ldrb r0, [sl], #1
	bl ov4_021E89D0
	rsb r1, r8, #3
	mul r2, r1, r4
	orr r6, r6, r0, lsl r2
	add r8, r8, #1
	cmp r8, #4
	blt _021E8AA8
	ldr r0, [sp, #4]
	add r1, sb, sb, lsl #1
	mov r2, #0
	str r6, [sp, #0x14]
	add r1, r0, r1
_021E8ADC:
	rsb r0, r2, #2
	ldrb r0, [r5, r0]
	add r2, r2, #1
	cmp r2, #3
	strb r0, [r1], #1
	blt _021E8ADC
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	cmp r7, r0
	add sb, sb, #1
	blt _021E8A98
_021E8B08:
	cmp fp, #0
	beq _021E8B9C
	mov r5, #0
	mov r6, r5
	str r5, [sp, #0x10]
	ble _021E8B5C
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	mov r8, r5
	add r4, r1, r0
	mov r7, #6
_021E8B34:
	ldrb r0, [r4], #1
	bl ov4_021E89D0
	rsb r1, r6, #3
	mul r2, r1, r7
	orr r5, r5, r0, lsl r2
	add r6, r6, #1
	cmp r6, fp
	orr r8, r8, r5
	blt _021E8B34
	str r8, [sp, #0x10]
_021E8B5C:
	cmp fp, #0
	mov r3, #0
	ble _021E8B9C
	ldr r0, [sp, #0xc]
	add r1, r0, r0, lsl #1
	mov r0, r1, asr #1
	add r1, r1, r0, lsr #30
	ldr r0, [sp, #4]
	add r2, r0, r1, asr #2
	add r1, sp, #0x10
_021E8B84:
	rsb r0, r3, #2
	ldrb r0, [r1, r0]
	add r3, r3, #1
	cmp r3, fp
	strb r0, [r2], #1
	blt _021E8B84
_021E8B9C:
	ldr r0, [sp, #8]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_021E8A40

	.rodata


	.global Unk_ov4_02215940
Unk_ov4_02215940: ; 0x02215940
	.ascii "aaa"

	.global Unk_ov4_02215943
Unk_ov4_02215943: ; 0x02215943
	.byte 0x17, 0x14, 0x11, 0xD, 0xB
	.byte 0x6, 0xF, 0xE, 0x9, 0x15, 0xC, 0x4, 0x2, 0x1, 0x12, 0x10, 0x5, 0x3, 0x13, 0xA, 0x7
	.short 0x8, 0x16

	.global Unk_ov4_0221595C
Unk_ov4_0221595C: ; 0x0221595C
	.byte 0x5, 0x1, 0xC, 0x4, 0x2, 0x3, 0xA, 0x0, 0xB, 0x7, 0x9, 0x8
	.word 0x6

	.global Unk_ov4_0221596C
Unk_ov4_0221596C: ; 0x0221596C
	.byte 0xA, 0xD, 0xE, 0x8, 0x9, 0x3, 0x6, 0x0, 0xC, 0x5, 0x2, 0x7
	.byte 0xB, 0x1, 0xF, 0x4



	.data


	.global Unk_ov4_02217624
Unk_ov4_02217624: ; 0x02217624
	.word Unk_ov4_02217670

	.global Unk_ov4_02217628
Unk_ov4_02217628: ; 0x02217628
	.word Unk_ov4_02217634

	.global Unk_ov4_0221762C
Unk_ov4_0221762C: ; 0x0221762C
	.word Unk_ov4_02217654

	.global Unk_ov4_02217630
Unk_ov4_02217630: ; 0x02217630
	.word Unk_ov4_02217644

	.global Unk_ov4_02217634
Unk_ov4_02217634: ; 0x02217634
	.asciz "gwi'6&fs=0Nf~"
	.space 0x2

	.global Unk_ov4_02217644
Unk_ov4_02217644: ; 0x02217644
	.asciz "%(egEr)ag(s&m"
	.space 0x2

	.global Unk_ov4_02217654
Unk_ov4_02217654: ; 0x02217654
	.ascii "952uybjnpmu903bia@bk5m[-"
	.space 0x4

	.global Unk_ov4_02217670
Unk_ov4_02217670: ; 0x02217670
	.ascii "38g6zxjk20gvmv]6^=j&%vY1"
	.space 0x4

	.global Unk_ov4_0221768C
Unk_ov4_0221768C: ; 0x0221768C
	.ascii "NDWCSHAP"
	.space 0x4

	.global Unk_ov4_02217698
Unk_ov4_02217698: ; 0x02217698
	.ascii "NWCUSBAP"
	.space 0x4

