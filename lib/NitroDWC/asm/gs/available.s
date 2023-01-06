	.include "macros/function.inc"
	.include "include/available.inc"

	.text


	arm_func_start ov4_021E963C
ov4_021E963C: ; 0x021E963C
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r3, r1, asr #8
	mov r1, r1, lsl #8
	mov r4, r2
	mov ip, #2
	and r2, r3, #0xff
	and r1, r1, #0xff00
	strb ip, [r4, #1]
	orr r1, r2, r1
	mov r5, r0
	strh r1, [r4, #2]
	bl ov4_021EAF1C
	mvn r1, #0
	str r0, [r4, #4]
	cmp r0, r1
	bne _021E96A8
	mov r0, r5
	bl ov4_0220854C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	str r0, [r4, #4]
_021E96A8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E963C

	arm_func_start ov4_021E96B0
ov4_021E96B0: ; 0x021E96B0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, _021E96F4 ; =0x0221AE58
	mov r0, #8
	str r1, [sp]
	ldr r1, _021E96F8 ; =0x0221AE50
	str r0, [sp, #4]
	ldr r0, [r1, #4]
	ldr r2, [r1, #0x50]
	ldr r1, _021E96FC ; =0x0221AE60
	mov r3, #0
	bl ov4_021EAE5C
	bl ov4_021EA840
	ldr r1, _021E96F8 ; =0x0221AE50
	str r0, [r1, #0x54]
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E96F4: .word 0x0221AE58
_021E96F8: .word Unk_ov4_0221AE50
_021E96FC: .word 0x0221AE60
	arm_func_end ov4_021E96B0

	arm_func_start ov4_021E9700
ov4_021E9700: ; 0x021E9700
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x40
	mov r4, r0
	ldr r0, _021E97DC ; =0x0221AEEC
	mov r1, r4
	bl strcpy
	ldr r0, _021E97E0 ; =0x0221AE50
	mvn r1, #0
	str r1, [r0, #4]
	bl ov4_021EA8A4
	ldr r0, _021E97E4 ; =0x0221AEAC
	ldrsb r5, [r0]
	cmp r5, #0
	bne _021E9748
	ldr r1, _021E97E8 ; =0x022176A4
	add r0, sp, #0
	mov r2, r4
	bl sprintf
_021E9748:
	cmp r5, #0
	ldrne r0, _021E97E4 ; =0x0221AEAC
	ldr r1, _021E97EC ; =0x00006CFC
	ldr r2, _021E97F0 ; =0x0221AE58
	addeq r0, sp, #0
	bl ov4_021E963C
	cmp r0, #0
	addeq sp, sp, #0x40
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #2
	mov r1, r0
	mov r2, #0
	bl ov4_021EACDC
	ldr r2, _021E97E0 ; =0x0221AE50
	mvn r1, #0
	cmp r0, r1
	str r0, [r2, #4]
	addeq sp, sp, #0x40
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, #9
	mov r0, r4
	strb r1, [r2, #0x10]
	bl strlen
	mov r5, r0
	ldr r0, _021E97F4 ; =0x0221AE65
	mov r1, r4
	add r2, r5, #1
	bl memcpy
	ldr r0, _021E97E0 ; =0x0221AE50
	add r1, r5, #6
	str r1, [r0, #0x50]
	bl ov4_021E96B0
	ldr r0, _021E97E0 ; =0x0221AE50
	mov r1, #0
	str r1, [r0, #0x58]
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E97DC: .word 0x0221AEEC
_021E97E0: .word Unk_ov4_0221AE50
_021E97E4: .word Unk_ov4_0221AEAC
_021E97E8: .word Unk_ov4_022176A4
_021E97EC: .word 0x00006CFC
_021E97F0: .word 0x0221AE58
_021E97F4: .word 0x0221AE65
	arm_func_end ov4_021E9700

	arm_func_start ov4_021E97F8
ov4_021E97F8: ; 0x021E97F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	cmp r1, #7
	mov r6, r2
	mov r4, r3
	movlt r0, #1
	ldmltia sp!, {r4, r5, r6, pc}
	ldr r1, _021E98A4 ; =0x0221AE5C
	add r0, r6, #4
	mov r2, #4
	bl memcmp
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, _021E98A8 ; =0x0221AE50
	ldrh r1, [r6, #2]
	ldrh r0, [r0, #0xa]
	cmp r1, r0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021E98AC ; =0x022176C8
	mov r0, r5
	mov r2, #3
	bl memcmp
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldrsb r2, [r5, #3]
	ldrsb r1, [r5, #4]
	ldrsb r0, [r5, #5]
	mov r3, r2, lsl #0x18
	mov r2, r1, lsl #0x10
	mov r1, r0, lsl #8
	and r3, r3, #0xff000000
	and r2, r2, #0xff0000
	ldrb r0, [r5, #6]
	orr r2, r3, r2
	and r1, r1, #0xff00
	orr r1, r2, r1
	orr r0, r1, r0
	str r0, [r4, #0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E98A4: .word 0x0221AE5C
_021E98A8: .word Unk_ov4_0221AE50
_021E98AC: .word Unk_ov4_022176C8
	arm_func_end ov4_021E97F8

	arm_func_start ov4_021E98B0
ov4_021E98B0: ; 0x021E98B0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x58
	ldr r2, _021E99E8 ; =0x0221AE50
	mov r3, #8
	ldr r0, [r2, #4]
	sub r1, r3, #9
	cmp r0, r1
	str r3, [sp, #0xc]
	moveq r0, #1
	streq r0, [r2]
	addeq sp, sp, #0x58
	ldmeqia sp!, {r3, pc}
	bl ov4_021EAB6C
	cmp r0, #0
	beq _021E9988
	add r0, sp, #0x10
	str r0, [sp]
	add r1, sp, #0xc
	str r1, [sp, #4]
	ldr r0, _021E99E8 ; =0x0221AE50
	add r1, sp, #0x18
	ldr r0, [r0, #4]
	mov r2, #0x40
	mov r3, #0
	bl ov4_021EAE18
	mov r1, r0
	add r0, sp, #0x18
	add r2, sp, #0x10
	add r3, sp, #8
	bl ov4_021E97F8
	cmp r0, #0
	bne _021E9988
	ldr r0, _021E99E8 ; =0x0221AE50
	ldr r0, [r0, #4]
	bl ov4_021EACF0
	ldr r0, [sp, #8]
	tst r0, #1
	beq _021E9958
	ldr r0, _021E99E8 ; =0x0221AE50
	mov r1, #2
	str r1, [r0, #0]
	b _021E9978
_021E9958:
	tst r0, #2
	ldreq r0, _021E99E8 ; =0x0221AE50
	moveq r1, #1
	streq r1, [r0]
	beq _021E9978
	ldr r0, _021E99E8 ; =0x0221AE50
	mov r1, #3
	str r1, [r0, #0]
_021E9978:
	ldr r0, _021E99E8 ; =0x0221AE50
	add sp, sp, #0x58
	ldr r0, [r0, #0]
	ldmia sp!, {r3, pc}
_021E9988:
	bl ov4_021EA840
	ldr r1, _021E99E8 ; =0x0221AE50
	ldr r2, [r1, #0x54]
	add r2, r2, #0x7d0
	cmp r0, r2
	bls _021E99DC
	ldr r0, [r1, #0x58]
	cmp r0, #1
	bne _021E99C8
	ldr r0, [r1, #4]
	bl ov4_021EACF0
	ldr r1, _021E99E8 ; =0x0221AE50
	mov r0, #1
	str r0, [r1, #0]
	add sp, sp, #0x58
	ldmia sp!, {r3, pc}
_021E99C8:
	bl ov4_021E96B0
	ldr r0, _021E99E8 ; =0x0221AE50
	ldr r1, [r0, #0x58]
	add r1, r1, #1
	str r1, [r0, #0x58]
_021E99DC:
	mov r0, #0
	add sp, sp, #0x58
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E99E8: .word Unk_ov4_0221AE50
	arm_func_end ov4_021E98B0

	.data


	.global Unk_ov4_022176A4
Unk_ov4_022176A4: ; 0x022176A4
	.incbin "incbin/overlay4_data.bin", 0x1824, 0x1848 - 0x1824

	.global Unk_ov4_022176C8
Unk_ov4_022176C8: ; 0x022176C8
	.incbin "incbin/overlay4_data.bin", 0x1848, 0x4



	.bss


	.global Unk_ov4_0221AE50
Unk_ov4_0221AE50: ; 0x0221AE50
	.space 0x4

	.global Unk_ov4_0221AE54
Unk_ov4_0221AE54: ; 0x0221AE54
	.space 0x58

	.global Unk_ov4_0221AEAC
Unk_ov4_0221AEAC: ; 0x0221AEAC
	.space 0x40

	.global Unk_ov4_0221AEEC
Unk_ov4_0221AEEC: ; 0x0221AEEC
	.space 0x40

