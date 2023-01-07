	.include "macros/function.inc"
	.include "include/scenesetselectway.inc"

	

	.text


	arm_func_start ov18_0223B3F4
ov18_0223B3F4: ; 0x0223B3F4
	stmfd sp!, {r4, r5, r6, lr}
	bl ov18_0223DDCC
	ldr r1, _0223B4FC ; =0x02253354
	mov r2, #0
	strb r2, [r1, #2]
	ldrsb r2, [r1]
	mov r4, r0
	cmp r2, #0
	moveq r0, #1
	streqb r0, [r1]
	bl ov18_0222F74C
	cmp r0, #0
	beq _0223B450
	ldr r0, _0223B4FC ; =0x02253354
	ldrsb r1, [r0, #1]
	cmp r1, #2
	moveq r1, #0
	streqb r1, [r0, #1]
	ldr r0, _0223B4FC ; =0x02253354
	ldrsb r1, [r0]
	cmp r1, #2
	moveq r1, #1
	streqb r1, [r0]
_0223B450:
	bl ov18_0223B518
	bl ov18_0222BC1C
	bl ov18_0222F74C
	mov r5, r0
	ldrb r1, [r4, #0xf4]
	mov r0, #0x32
	ldr r3, _0223B500 ; =0x0224954C
	add r2, r1, #1
	ldrsb r1, [r3, r5]
	bl ov18_0222B594
	mov r0, #1
	bl ov18_0222B740
	mov r0, #1
	bl ov18_0222F774
	mov r6, r0
	mov r0, #1
	bl ov18_0222F774
	mov r5, r0
	mov r0, #1
	bl ov18_0222F774
	mov r4, r0
	mov r0, #1
	bl ov18_0222F774
	mov r3, r0
	ldr r1, _0223B504 ; =0x0224950A
	ldr r0, _0223B4FC ; =0x02253354
	add ip, r1, r6, lsl #5
	ldrsb lr, [r0, #1]
	ldr r1, _0223B508 ; =0x0224950E
	ldr r0, _0223B50C ; =0x0224950C
	add r1, r1, r5, lsl #5
	add r2, r0, r4, lsl #5
	mov r5, lr, lsl #3
	ldrh r0, [r5, ip]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldr r4, _0223B510 ; =0x02249510
	add r3, r4, r3, lsl #5
	ldrh r3, [r5, r3]
	bl ov18_0222BA04
	ldr r0, _0223B514 ; =ov18_0223B604
	bl ov18_0222F6C4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0223B4FC: .word Unk_ov18_02253354
_0223B500: .word Unk_ov18_0224954C
_0223B504: .word Unk_ov18_0224950A
_0223B508: .word 0x0224950E
_0223B50C: .word 0x0224950C
_0223B510: .word 0x02249510
_0223B514: .word ov18_0223B604
	arm_func_end ov18_0223B3F4

	arm_func_start ov18_0223B518
ov18_0223B518: ; 0x0223B518
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr ip, _0223B5DC ; =0x02249494
	add r3, sp, #0
	mov r2, #0xb
_0223B52C:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _0223B52C
	ldr r0, _0223B5E0 ; =0x0224A45C
	ldr r1, _0223B5E4 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223B5E8 ; =0x0224A474
	ldr r1, _0223B5EC ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _0223B5F0 ; =0x0224A48C
	ldr r1, _0223B5F4 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	add r0, sp, #0
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _0223B5F8 ; =0x02253354
	ldr r2, _0223B5FC ; =0x04001008
	str r0, [r1, #4]
	ldrh r0, [r2]
	ldr r1, _0223B600 ; =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223B5DC: .word Unk_ov18_02249494
_0223B5E0: .word Unk_ov18_0224A45C
_0223B5E4: .word 0x020C07EC
_0223B5E8: .word Unk_ov18_0224A474
_0223B5EC: .word GX_LoadBGPltt
_0223B5F0: .word Unk_ov18_0224A48C
_0223B5F4: .word GX_LoadBG2Scr
_0223B5F8: .word Unk_ov18_02253354
_0223B5FC: .word 0x04001008
_0223B600: .word 0x0400000A
	arm_func_end ov18_0223B518

	arm_func_start ov18_0223B604
ov18_0223B604: ; 0x0223B604
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _0223B654 ; =ov18_0223B658
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223B654: .word ov18_0223B658
	arm_func_end ov18_0223B604

	arm_func_start ov18_0223B658
ov18_0223B658: ; 0x0223B658
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B790
	ldr r0, _0223B690 ; =ov18_0223B694
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223B690: .word ov18_0223B694
	arm_func_end ov18_0223B658

	arm_func_start ov18_0223B694
ov18_0223B694: ; 0x0223B694
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223B6B8 ; =ov18_0223B6BC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223B6B8: .word ov18_0223B6BC
	arm_func_end ov18_0223B694

	arm_func_start ov18_0223B6BC
ov18_0223B6BC: ; 0x0223B6BC
	stmfd sp!, {r3, lr}
	bl ov18_0223B6D0
	bl ov18_0223B854
	bl ov18_0223B858
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223B6BC

	arm_func_start ov18_0223B6D0
ov18_0223B6D0: ; 0x0223B6D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r4, _0223B83C ; =0x022494CA
	mov r7, r6
	mov r5, #1
_0223B6E4:
	mov r0, r5
	bl ov18_0222F774
	add r0, r4, r0, lsl #5
	add r0, r0, r7
	bl ov18_022455B8
	cmp r0, #0
	beq _0223B784
	mov r0, #1
	bl ov18_0222B048
	ldr r1, _0223B840 ; =0x02253354
	mov r0, #1
	strb r6, [r1, #1]
	bl ov18_0222F774
	mov r6, r0
	mov r0, #1
	bl ov18_0222F774
	mov r5, r0
	mov r0, #1
	bl ov18_0222F774
	mov r4, r0
	mov r0, #1
	bl ov18_0222F774
	mov r3, r0
	ldr r0, _0223B840 ; =0x02253354
	ldr r1, _0223B844 ; =0x0224950A
	ldrsb lr, [r0, #1]
	ldr r0, _0223B848 ; =0x0224950C
	add ip, r1, r6, lsl #5
	ldr r1, _0223B84C ; =0x0224950E
	add r2, r0, r4, lsl #5
	ldr r4, _0223B850 ; =0x02249510
	add r1, r1, r5, lsl #5
	mov r5, lr, lsl #3
	add r3, r4, r3, lsl #5
	ldrh r0, [r5, ip]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldrh r3, [r5, r3]
	bl ov18_0222BA04
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0223B784:
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, #8
	blo _0223B6E4
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0223B7B0
	mov r0, #1
	bl ov18_0222B048
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0223B7B0:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _0223B7CC
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0223B7CC:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _0223B7E8
	mov r0, #1
	bl ov18_0223BA60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0223B7E8:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _0223B804
	mov r0, #3
	bl ov18_0223BA60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0223B804:
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _0223B820
	mov r0, #0
	bl ov18_0223BA60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0223B820:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #2
	bl ov18_0223BA60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B83C: .word Unk_ov18_022494CA
_0223B840: .word Unk_ov18_02253354
_0223B844: .word Unk_ov18_0224950A
_0223B848: .word 0x0224950C
_0223B84C: .word 0x0224950E
_0223B850: .word 0x02249510
	arm_func_end ov18_0223B6D0

	arm_func_start ov18_0223B854
ov18_0223B854: ; 0x0223B854
	bx lr
	arm_func_end ov18_0223B854

	arm_func_start ov18_0223B858
ov18_0223B858: ; 0x0223B858
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _0223B874
	cmp r0, #1
	beq _0223B880
	ldmia sp!, {r3, pc}
_0223B874:
	mov r0, #7
	bl ov18_0223E994
	b _0223B898
_0223B880:
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223BB54
	ldr r0, _0223B8A4 ; =0x02253354
	mov r1, #1
	strb r1, [r0, #2]
_0223B898:
	ldr r0, _0223B8A8 ; =ov18_0223B8AC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223B8A4: .word Unk_ov18_02253354
_0223B8A8: .word ov18_0223B8AC
	arm_func_end ov18_0223B858

	arm_func_start ov18_0223B8AC
ov18_0223B8AC: ; 0x0223B8AC
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223B8C8 ; =ov18_0223B8CC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223B8C8: .word ov18_0223B8CC
	arm_func_end ov18_0223B8AC

	arm_func_start ov18_0223B8CC
ov18_0223B8CC: ; 0x0223B8CC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223B928 ; =0x02253354
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0223B8F4
	bl ov18_0222B004
_0223B8F4:
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223B92C ; =ov18_0223B930
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223B928: .word Unk_ov18_02253354
_0223B92C: .word ov18_0223B930
	arm_func_end ov18_0223B8CC

	arm_func_start ov18_0223B930
ov18_0223B930: ; 0x0223B930
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov18_0222BAF4
	bl ov18_0222B668
	ldr r0, _0223BA48 ; =0x02253354
	ldr r0, [r0, #4]
	bl ov18_0224382C
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	ldr r0, _0223BA48 ; =0x02253354
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _0223B9B4
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	ldr r0, _0223BA4C ; =ov18_0223A6B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223B9B4:
	ldrsb r0, [r0, #1]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_0223B9C4: ; jump table
	b _0223B9D4 ; case 0
	b _0223B9EC ; case 1
	b _0223BA04 ; case 2
	b _0223BA1C ; case 3
_0223B9D4:
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223BA50 ; =ov18_0223A1D0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223B9EC:
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223BA54 ; =ov18_02233088
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223BA04:
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223BA58 ; =ov18_02239D5C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223BA1C:
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	mov r0, #1
	bl ov18_0223909C
	ldr r0, _0223BA5C ; =ov18_02236BE0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223BA48: .word Unk_ov18_02253354
_0223BA4C: .word ov18_0223A6B4
_0223BA50: .word ov18_0223A1D0
_0223BA54: .word ov18_02233088
_0223BA58: .word ov18_02239D5C
_0223BA5C: .word ov18_02236BE0
	arm_func_end ov18_0223B930

	arm_func_start ov18_0223BA60
ov18_0223BA60: ; 0x0223BA60
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0223BB3C ; =0x02253354
	mov r5, r0
	mov r0, #1
	ldrsb r4, [r1, #1]
	bl ov18_0222F774
	ldr r2, _0223BB40 ; =0x022494AA
	mvn r1, #0
	add r0, r2, r0, lsl #4
	add r0, r0, r4, lsl #2
	ldrsb r2, [r5, r0]
	cmp r2, r1
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r2, #0
	ldreq r0, _0223BB3C ; =0x02253354
	streqb r4, [r0]
	mvn r0, #1
	cmp r2, r0
	ldrne r0, _0223BB3C ; =0x02253354
	strneb r2, [r0, #1]
	bne _0223BAC0
	ldr r0, _0223BB3C ; =0x02253354
	ldrsb r1, [r0]
	strb r1, [r0, #1]
_0223BAC0:
	mov r0, #8
	bl ov18_0223E994
	mov r0, #1
	bl ov18_0222F774
	mov r6, r0
	mov r0, #1
	bl ov18_0222F774
	mov r5, r0
	mov r0, #1
	bl ov18_0222F774
	mov r4, r0
	mov r0, #1
	bl ov18_0222F774
	mov r3, r0
	ldr r1, _0223BB44 ; =0x0224950A
	ldr r0, _0223BB3C ; =0x02253354
	add ip, r1, r6, lsl #5
	ldrsb lr, [r0, #1]
	ldr r1, _0223BB48 ; =0x0224950E
	ldr r0, _0223BB4C ; =0x0224950C
	add r1, r1, r5, lsl #5
	add r2, r0, r4, lsl #5
	mov r5, lr, lsl #3
	ldrh r0, [r5, ip]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldr r4, _0223BB50 ; =0x02249510
	add r3, r4, r3, lsl #5
	ldrh r3, [r5, r3]
	bl ov18_0222BA04
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0223BB3C: .word Unk_ov18_02253354
_0223BB40: .word Unk_ov18_022494AA
_0223BB44: .word Unk_ov18_0224950A
_0223BB48: .word 0x0224950E
_0223BB4C: .word 0x0224950C
_0223BB50: .word 0x02249510
	arm_func_end ov18_0223BA60

	arm_func_start ov18_0223BB54
ov18_0223BB54: ; 0x0223BB54
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _0223BBA4 ; =0x02249490
	ldr r0, _0223BBA8 ; =0x02253354
	ldrb lr, [r1]
	ldrb ip, [r1, #1]
	ldrb r3, [r1, #2]
	ldrb r2, [r1, #3]
	ldrsb r1, [r0, #1]
	add r4, sp, #0
	strb lr, [sp]
	strb ip, [sp, #1]
	strb r3, [sp, #2]
	strb r2, [sp, #3]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #4]
	mov r2, r1
	bl ov18_0223D154
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_0223BBA4: .word Unk_ov18_02249490
_0223BBA8: .word Unk_ov18_02253354
	arm_func_end ov18_0223BB54

	.rodata


	.global Unk_ov18_02249490
Unk_ov18_02249490: ; 0x02249490
	.incbin "incbin/overlay18_rodata.bin", 0x305C, 0x3060 - 0x305C

	.global Unk_ov18_02249494
Unk_ov18_02249494: ; 0x02249494
	.incbin "incbin/overlay18_rodata.bin", 0x3060, 0x3076 - 0x3060

	.global Unk_ov18_022494AA
Unk_ov18_022494AA: ; 0x022494AA
	.incbin "incbin/overlay18_rodata.bin", 0x3076, 0x3096 - 0x3076

	.global Unk_ov18_022494CA
Unk_ov18_022494CA: ; 0x022494CA
	.incbin "incbin/overlay18_rodata.bin", 0x3096, 0x30D6 - 0x3096

	.global Unk_ov18_0224950A
Unk_ov18_0224950A: ; 0x0224950A
	.incbin "incbin/overlay18_rodata.bin", 0x30D6, 0x3118 - 0x30D6

	.global Unk_ov18_0224954C
Unk_ov18_0224954C: ; 0x0224954C
	.incbin "incbin/overlay18_rodata.bin", 0x3118, 0x7



	.data


	.global Unk_ov18_0224A45C
Unk_ov18_0224A45C: ; 0x0224A45C
	.incbin "incbin/overlay18_data.bin", 0xCFC, 0xD14 - 0xCFC

	.global Unk_ov18_0224A474
Unk_ov18_0224A474: ; 0x0224A474
	.incbin "incbin/overlay18_data.bin", 0xD14, 0xD2C - 0xD14

	.global Unk_ov18_0224A48C
Unk_ov18_0224A48C: ; 0x0224A48C
	.incbin "incbin/overlay18_data.bin", 0xD2C, 0x12



	.bss


	.global Unk_ov18_02253354
Unk_ov18_02253354: ; 0x02253354
	.space 0x1

	.global Unk_ov18_02253355
Unk_ov18_02253355: ; 0x02253355
	.space 0x1

	.global Unk_ov18_02253356
Unk_ov18_02253356: ; 0x02253356
	.space 0x2

	.global Unk_ov18_02253358
Unk_ov18_02253358: ; 0x02253358
	.space 0x4

