	.include "macros/function.inc"
	.include "include/sb_serverlist.inc"

	.extern Unk_020FE764
	.extern Unk_ov4_0221AE50
	.extern Unk_ov4_0221B754

	.text


	arm_func_start ov4_021FEEC8
ov4_021FEEC8: ; 0x021FEEC8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _021FEF20 ; =0x0221B75C
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	ldr r5, [r1, #0]
	ldr r1, [r2, #0x498]
	mov r2, #0
	bl ov4_021FE28C
	ldr r1, _021FEF20 ; =0x0221B75C
	mov r4, r0
	ldr r1, [r1, #0]
	mov r0, r5
	ldr r1, [r1, #0x498]
	mov r2, #0
	bl ov4_021FE28C
	ldr r1, _021FEF20 ; =0x0221B75C
	sub r0, r4, r0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x49c]
	cmp r1, #0
	rsbeq r0, r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021FEF20: .word Unk_ov4_0221B75C
	arm_func_end ov4_021FEEC8

	arm_func_start ov4_021FEF24
ov4_021FEF24: ; 0x021FEF24
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _021FEFF8 ; =0x0221B75C
	mov r2, #0
	ldr r3, [r3, #0]
	ldr r5, [r1, #0]
	ldr r0, [r0, #0]
	ldr r1, [r3, #0x498]
	mov r3, r2
	bl ov4_021FE31C
	ldr r3, _021FEFF8 ; =0x0221B75C
	mov r2, #0
	mov r4, r0
	ldr r0, [r3, #0]
	mov r6, r1
	ldr r1, [r0, #0x498]
	mov r0, r5
	mov r3, r2
	bl ov4_021FE31C
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r6
	bl _dsub
	ldr r2, _021FEFF8 ; =0x0221B75C
	mov r4, r0
	ldr r0, [r2, #0]
	mov r5, r1
	ldr r0, [r0, #0x49c]
	cmp r0, #0
	bne _021FEFB8
	mov r0, #0
	mov r1, r0
	mov r2, r4
	mov r3, r5
	bl _dsub
	mov r4, r0
	mov r5, r1
_021FEFB8:
	mov r0, r4
	mov r1, r5
	bl _d_dtof
	mov r1, #0
	bl _f_fgt
	movhi r0, #1
	ldmhiia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r5
	bl _d_dtof
	mov r1, #0
	bl _f_flt
	movlo r0, #1
	movhs r0, #0
	rsb r0, r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021FEFF8: .word Unk_ov4_0221B75C
	arm_func_end ov4_021FEF24

	arm_func_start ov4_021FEFFC
ov4_021FEFFC: ; 0x021FEFFC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _021FF05C ; =0x0221B75C
	mov r5, r1
	ldr r1, [r2, #0]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x498]
	ldr r2, _021FF060 ; =0x0221A038
	bl ov4_021FE220
	ldr r1, _021FF05C ; =0x0221B75C
	mov r4, r0
	ldr r1, [r1, #0]
	ldr r0, [r5, #0]
	ldr r1, [r1, #0x498]
	ldr r2, _021FF060 ; =0x0221A038
	bl ov4_021FE220
	mov r1, r0
	mov r0, r4
	bl strcmp
	ldr r1, _021FF05C ; =0x0221B75C
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x49c]
	cmp r1, #0
	rsbeq r0, r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021FF05C: .word Unk_ov4_0221B75C
_021FF060: .word Unk_ov4_0221A038
	arm_func_end ov4_021FEFFC

	arm_func_start ov4_021FF064
ov4_021FF064: ; 0x021FF064
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _021FF0C4 ; =0x0221B75C
	mov r5, r1
	ldr r1, [r2, #0]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x498]
	ldr r2, _021FF0C8 ; =0x0221A038
	bl ov4_021FE220
	ldr r1, _021FF0C4 ; =0x0221B75C
	mov r4, r0
	ldr r1, [r1, #0]
	ldr r0, [r5, #0]
	ldr r1, [r1, #0x498]
	ldr r2, _021FF0C8 ; =0x0221A038
	bl ov4_021FE220
	mov r1, r0
	mov r0, r4
	bl strcasecmp
	ldr r1, _021FF0C4 ; =0x0221B75C
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x49c]
	cmp r1, #0
	rsbeq r0, r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021FF0C4: .word Unk_ov4_0221B75C
_021FF0C8: .word Unk_ov4_0221A038
	arm_func_end ov4_021FF064

	arm_func_start ov4_021FF0CC
ov4_021FF0CC: ; 0x021FF0CC
	cmp r3, #3
	addls pc, pc, r3, lsl #2
	b _021FF108
_021FF0D8: ; jump table
	b _021FF0E8 ; case 0
	b _021FF0F0 ; case 1
	b _021FF0F8 ; case 2
	b _021FF100 ; case 3
_021FF0E8:
	ldr r3, _021FF12C ; =ov4_021FEEC8
	b _021FF10C
_021FF0F0:
	ldr r3, _021FF130 ; =ov4_021FEF24
	b _021FF10C
_021FF0F8:
	ldr r3, _021FF134 ; =ov4_021FEFFC
	b _021FF10C
_021FF100:
	ldr r3, _021FF138 ; =ov4_021FF064
	b _021FF10C
_021FF108:
	ldr r3, _021FF138 ; =ov4_021FF064
_021FF10C:
	str r2, [r0, #0x498]
	str r1, [r0, #0x49c]
	ldr r2, _021FF13C ; =0x0221B75C
	ldr ip, _021FF140 ; =ov4_021E9EF8
	str r0, [r2, #0]
	mov r1, r3
	ldr r0, [r0, #4]
	bx ip
	; .align 2, 0
_021FF12C: .word ov4_021FEEC8
_021FF130: .word ov4_021FEF24
_021FF134: .word ov4_021FEFFC
_021FF138: .word ov4_021FF064
_021FF13C: .word Unk_ov4_0221B75C
_021FF140: .word ov4_021E9EF8
	arm_func_end ov4_021FF0CC

	arm_func_start ov4_021FF144
ov4_021FF144: ; 0x021FF144
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	add r1, sp, #0xc
	bl ov4_021E9C2C
	ldr r2, [sp, #0xc]
	ldr r3, [r4, #0x494]
	ldr ip, [r4, #0x488]
	mov r0, r4
	mov r1, #0
	blx ip
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_021FF144

	arm_func_start ov4_021FF180
ov4_021FF180: ; 0x021FF180
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #4]
	mov r6, r1
	bl ov4_021E9BBC
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	ble _021FF1CC
_021FF1A4:
	ldr r0, [r7, #4]
	mov r1, r5
	bl ov4_021E9BC4
	ldr r0, [r0, #0]
	cmp r6, r0
	moveq r0, r5
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r5, #1
	cmp r5, r4
	blt _021FF1A4
_021FF1CC:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_021FF180

	arm_func_start ov4_021FF1D4
ov4_021FF1D4: ; 0x021FF1D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r0, [sb, #4]
	mov r8, r1
	mov r7, r2
	bl ov4_021E9BBC
	mov r4, r0
	cmp r4, #0
	mov r6, #0
	ble _021FF23C
_021FF1FC:
	ldr r0, [sb, #4]
	mov r1, r6
	bl ov4_021E9BC4
	ldr r5, [r0, #0]
	mov r0, r5
	bl ov4_021FE350
	cmp r8, r0
	bne _021FF230
	mov r0, r5
	bl ov4_021FE37C
	cmp r7, r0
	moveq r0, r6
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021FF230:
	add r6, r6, #1
	cmp r6, r4
	blt _021FF1FC
_021FF23C:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_021FF1D4

	arm_func_start ov4_021FF244
ov4_021FF244: ; 0x021FF244
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0x5d0]
	mov r0, r4
	cmp r1, #0
	bne _021FF26C
	mov r1, #0
	bl ov4_021FE3C8
	b _021FF270
_021FF26C:
	bl ov4_021FE3C8
_021FF270:
	str r4, [r5, #0x5d0]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021FF244

	arm_func_start ov4_021FF278
ov4_021FF278: ; 0x021FF278
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, r1
	bl ov4_021E9BC4
	ldr r4, [r0, #0]
	ldr r3, [r6, #0x494]
	ldr ip, [r6, #0x488]
	mov r0, r6
	mov r2, r4
	mov r1, #2
	blx ip
	ldr r0, [r6, #4]
	mov r1, r5
	bl ov4_021E9E40
	mov r0, r6
	mov r1, r4
	bl ov4_021FF244
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021FF278

	arm_func_start ov4_021FF2C4
ov4_021FF2C4: ; 0x021FF2C4
	ldr ip, _021FF2D0 ; =ov4_021E9BBC
	ldr r0, [r0, #4]
	bx ip
	; .align 2, 0
_021FF2D0: .word ov4_021E9BBC
	arm_func_end ov4_021FF2C4

	arm_func_start ov4_021FF2D4
ov4_021FF2D4: ; 0x021FF2D4
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	bl ov4_021E9BC4
	ldr r0, [r0, #0]
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021FF2D4

	arm_func_start ov4_021FF2E8
ov4_021FF2E8: ; 0x021FF2E8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r5, [r6, #0x5d0]
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	str r5, [sp]
	beq _021FF330
	add r4, sp, #0
_021FF310:
	mov r0, r5
	bl ov4_021FE3D0
	mov r5, r0
	mov r0, r4
	bl ov4_021FE184
	str r5, [sp]
	cmp r5, #0
	bne _021FF310
_021FF330:
	mov r0, #0
	str r0, [r6, #0x5d0]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov4_021FF2E8

	arm_func_start ov4_021FF340
ov4_021FF340: ; 0x021FF340
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	bl ov4_021E9BBC
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _021FF384
_021FF360:
	ldr r0, [r6, #4]
	mov r1, r4
	bl ov4_021E9BC4
	ldr r1, [r0, #0]
	mov r0, r6
	bl ov4_021FF244
	add r4, r4, #1
	cmp r4, r5
	blt _021FF360
_021FF384:
	ldr r0, [r6, #4]
	bl ov4_021EA114
	mov r0, r6
	bl ov4_021FF2E8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021FF340

	arm_func_start ov4_021FF398
ov4_021FF398: ; 0x021FF398
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #4
	mov r1, #0x64
	mov r2, #0
	bl ov4_021E9A8C
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x5d0]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FF398

	arm_func_start ov4_021FF3C0
ov4_021FF3C0: ; 0x021FF3C0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r5, r0
	str r4, [sp]
	bl ov4_021FE0E0
	add r1, sp, #0
	bl ov4_021EA598
	cmp r0, #0
	beq _021FF400
	ldr r1, [r0, #4]
	add sp, sp, #8
	add r1, r1, #1
	str r1, [r0, #4]
	ldr r0, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
_021FF400:
	mov r0, r4
	bl ov4_021EA8AC
	str r0, [sp]
	mov r1, #1
	mov r0, r5
	str r1, [sp, #4]
	bl ov4_021FE0E0
	add r1, sp, #0
	bl ov4_021EA44C
	ldr r0, [sp]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021FF3C0

	arm_func_start ov4_021FF430
ov4_021FF430: ; 0x021FF430
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	str r1, [sp]
	bl ov4_021FE0E0
	add r1, sp, #0
	bl ov4_021EA598
	movs r4, r0
	bne _021FF468
	ldr r0, _021FF4A0 ; =0x0221A03C
	ldr r1, _021FF4A4 ; =0x0221A048
	ldr r2, _021FF4A8 ; =0x02219FB0
	mov r3, #0xf4
	bl __msl_assertion_failed
_021FF468:
	cmp r4, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	subs r0, r0, #1
	addne sp, sp, #8
	str r0, [r4, #4]
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov4_021FE0E0
	add r1, sp, #0
	bl ov4_021EA4F4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021FF4A0: .word Unk_ov4_0221A03C
_021FF4A4: .word Unk_ov4_0221A048
_021FF4A8: .word Unk_ov4_02219FB0
	arm_func_end ov4_021FF430

	arm_func_start ov4_021FF4AC
ov4_021FF4AC: ; 0x021FF4AC
	cmp r1, #0
	mov r3, #0
	ble _021FF4D4
_021FF4B8:
	ldrsb r2, [r0, r3]
	cmp r2, #0
	addeq r0, r3, #1
	bxeq lr
	add r3, r3, #1
	cmp r3, r1
	blt _021FF4B8
_021FF4D4:
	mvn r0, #0
	bx lr
	arm_func_end ov4_021FF4AC

	arm_func_start ov4_021FF4DC
ov4_021FF4DC: ; 0x021FF4DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021FF508
	ldr r0, _021FF5EC ; =0x0221A058
	ldr r1, _021FF5F0 ; =0x0221A048
	ldr r2, _021FF5F4 ; =0x02219FE0
	mov r3, #0x11c
	bl __msl_assertion_failed
_021FF508:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021FF524
	ldr r0, _021FF5F8 ; =0x0221AE50
	ldr r0, [r0, #0]
	cmp r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_021FF524:
	mov r1, #1
	mov r0, r7
	str r1, [r7, #0]
	bl ov4_021FF398
	mov r0, r7
	bl ov4_021FE0E0
	mov r1, r6
	add r0, r7, #0xc
	bl strcpy
	mov r1, r5
	add r0, r7, #0x30
	bl strcpy
	mov r1, r4
	add r0, r7, #0x54
	bl strcpy
	ldr r1, [sp, #0x20]
	mov r0, #0
	str r1, [r7, #0x488]
	str r0, [r7, #0x48c]
	cmp r1, #0
	bne _021FF58C
	ldr r0, _021FF5FC ; =0x0221A068
	ldr r1, _021FF5F0 ; =0x0221A048
	ldr r2, _021FF5F4 ; =0x02219FE0
	ldr r3, _021FF600 ; =0x00000132
	bl __msl_assertion_failed
_021FF58C:
	ldr r0, [sp, #0x24]
	ldr r1, _021FF604 ; =0x0221A038
	str r0, [r7, #0x494]
	mov r3, #0
	str r1, [r7, #0x498]
	str r3, [r7, #0x4a0]
	sub r0, r3, #1
	str r0, [r7, #0x4b0]
	str r3, [r7, #0x7c]
	str r3, [r7, #0x80]
	str r3, [r7, #8]
	str r0, [r7, #0x484]
	str r3, [r7, #0x480]
	ldr r2, [sp, #0x18]
	str r3, [r7, #0x4a4]
	mov r0, r7
	str r2, [r7, #0x4b8]
	bl ov4_02200534
	mov r0, #0
	str r0, [r7, #0x5cc]
	bl ov4_021EA840
	bl srand
	bl ov4_021EA8A4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021FF5EC: .word Unk_ov4_0221A058
_021FF5F0: .word Unk_ov4_0221A048
_021FF5F4: .word Unk_ov4_02219FE0
_021FF5F8: .word Unk_ov4_0221AE50
_021FF5FC: .word Unk_ov4_0221A068
_021FF600: .word 0x00000132
_021FF604: .word Unk_ov4_0221A038
	arm_func_end ov4_021FF4DC

	arm_func_start ov4_021FF608
ov4_021FF608: ; 0x021FF608
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r5, [r4, #0x80]
	cmp r5, #0
	ble _021FF694
	ldr r0, _021FF6BC ; =0x02219FAC
	ldr r6, [r0, #0]
	mov r0, r6
	bl strlen
	cmp r5, r0
	bls _021FF694
	ldr r0, _021FF6BC ; =0x02219FAC
	ldr r5, [r4, #0x7c]
	ldr r7, [r0, #0]
	mov r0, r7
	bl strlen
	mov r2, r0
	mov r0, r5
	mov r1, r7
	bl strncmp
	cmp r0, #0
	bne _021FF694
	mov r0, r6
	bl strlen
	mov r1, r0
	mov r0, r4
	add r1, r5, r1
	bl ov4_02200534
	ldr r0, _021FF6C0 ; =0x0221B754
	ldr r3, [r4, #0x494]
	ldr r2, [r0, #0]
	ldr ip, [r4, #0x488]
	mov r0, r4
	mov r1, #5
	blx ip
_021FF694:
	ldr r0, _021FF6C0 ; =0x0221B754
	ldr r3, [r4, #0x494]
	ldr r2, [r0, #0]
	ldr ip, [r4, #0x488]
	mov r0, r4
	mov r1, #4
	blx ip
	mov r0, r4
	bl ov4_021FFDE0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021FF6BC: .word Unk_ov4_02219FAC
_021FF6C0: .word Unk_ov4_0221B754
	arm_func_end ov4_021FF608

	arm_func_start ov4_021FF6C4
ov4_021FF6C4: ; 0x021FF6C4
	stmfd sp!, {r3, lr}
	ldrsb lr, [r0]
	mov ip, #0
	cmp lr, #0
	beq _021FF704
	ldr r3, _021FF714 ; =0x020FE764
	ldr r2, _021FF718 ; =0x9CCF9319
_021FF6E0:
	cmp lr, #0
	blt _021FF6F4
	cmp lr, #0x80
	bge _021FF6F4
	ldrb lr, [r3, lr]
_021FF6F4:
	mla ip, r2, ip, lr
	ldrsb lr, [r0, #1]!
	cmp lr, #0
	bne _021FF6E0
_021FF704:
	mov r0, ip
	bl _u32_div_f
	mov r0, r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021FF714: .word Unk_020FE764
_021FF718: .word 0x9CCF9319
	arm_func_end ov4_021FF6C4

	arm_func_start ov4_021FF71C
ov4_021FF71C: ; 0x021FF71C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x88
	mov r4, r0
	add r0, r4, #0xc
	mov r1, #0x14
	bl ov4_021FF6C4
	ldr r1, _021FF83C ; =0x0221B75C
	mov r3, r0
	ldr r1, [r1, #4]
	add r0, sp, #8
	cmp r1, #0
	beq _021FF754
	bl strcpy
	b _021FF760
_021FF754:
	ldr r1, _021FF840 ; =0x0221A07C
	add r2, r4, #0xc
	bl sprintf
_021FF760:
	ldr r1, _021FF844 ; =0x0000EE70
	mov r2, #2
	add r0, sp, #8
	strb r2, [sp, #1]
	strh r1, [sp, #2]
	bl ov4_021EAF1C
	mvn r1, #0
	str r0, [sp, #4]
	cmp r0, r1
	bne _021FF7CC
	add r0, sp, #8
	bl SOC_GetHostByName
	cmp r0, #0
	addeq sp, sp, #0x88
	moveq r0, #2
	ldmeqia sp!, {r4, pc}
	ldr r0, [r0, #0xc]
	add r3, sp, #4
	ldr r2, [r0, #0]
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	strb r1, [r3]
	strb r0, [r3, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	strb r1, [r3, #2]
	strb r0, [r3, #3]
_021FF7CC:
	ldr r0, [r4, #0x4b0]
	mvn r1, #0
	cmp r0, r1
	bne _021FF804
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl ov4_021EACDC
	mvn r1, #0
	cmp r0, r1
	str r0, [r4, #0x4b0]
	addeq sp, sp, #0x88
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_021FF804:
	add r1, sp, #0
	mov r2, #8
	bl ov4_021EAD78
	cmp r0, #0
	addeq sp, sp, #0x88
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x4b0]
	bl ov4_021EACF0
	mvn r0, #0
	str r0, [r4, #0x4b0]
	mov r0, #3
	add sp, sp, #0x88
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021FF83C: .word Unk_ov4_0221B75C
_021FF840: .word Unk_ov4_0221A07C
_021FF844: .word 0x0000EE70
	arm_func_end ov4_021FF71C

	arm_func_start ov4_021FF848
ov4_021FF848: ; 0x021FF848
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r1
	ldreq r7, _021FF894 ; =0x0221A038
	mov r4, r0
	mov r0, r7
	mov r6, r2
	bl strlen
	add r5, r0, #1
	ldr r0, [r4, #0]
	mov r1, r7
	mov r2, r5
	bl memcpy
	ldr r0, [r6, #0]
	add r0, r0, r5
	str r0, [r6, #0]
	ldr r0, [r4, #0]
	add r0, r0, r5
	str r0, [r4, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021FF894: .word Unk_ov4_0221A038
	arm_func_end ov4_021FF848

	arm_func_start ov4_021FF898
ov4_021FF898: ; 0x021FF898
	ldr r3, [r0, #0]
	strb r1, [r3]
	ldr r1, [r2, #0]
	add r1, r1, #1
	str r1, [r2, #0]
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bx lr
	arm_func_end ov4_021FF898

	arm_func_start ov4_021FF8BC
ov4_021FF8BC: ; 0x021FF8BC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add ip, sp, #0xc
	ldrb r3, [ip]
	ldrb r1, [ip, #1]
	ldr lr, [r0]
	strb r3, [lr]
	strb r1, [lr, #1]
	ldrb r3, [ip, #2]
	ldrb r1, [ip, #3]
	strb r3, [lr, #2]
	strb r1, [lr, #3]
	ldr r1, [r2, #0]
	add r1, r1, #4
	str r1, [r2, #0]
	ldr r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #0]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_021FF8BC

	arm_func_start ov4_021FF910
ov4_021FF910: ; 0x021FF910
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0]
	mov r4, r3
	mov r5, r2
	bl memcpy
	ldr r0, [r4, #0]
	add r0, r0, r5
	str r0, [r4, #0]
	ldr r0, [r6, #0]
	add r0, r0, r5
	str r0, [r6, #0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021FF910

	arm_func_start ov4_021FF944
ov4_021FF944: ; 0x021FF944
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl rand
	ldr r5, _021FFA2C ; =0x2C0B02C1
	mov r8, #0
	smull r2, r4, r5, r0
	mov r1, r0, lsr #0x1f
	add r4, r1, r4, asr #4
	mov r3, #0x5d
	smull r1, r2, r3, r4
	sub r4, r0, r1
	add r0, r4, #0x21
	mov r7, #1
	strb r0, [sl, #0x74]
	mov fp, r8
	mov r6, r7
	mov r4, r3
_021FF988:
	add sb, sl, r7
	ldrsb r3, [sb, #0x73]
	ldrsb r0, [sl, #0x74]
	cmp r3, r0
	eor r3, r7, r3
	movlt r1, r6
	and r3, r3, #1
	movge r1, fp
	cmp r0, #0x4f
	movlt r2, #1
	and r0, r0, #1
	eor r3, r8, r3
	movge r2, #0
	eor r0, r0, r3
	eor r0, r0, r2
	eor r8, r0, r1
	bl rand
	smull r2, r3, r5, r0
	mov r1, r0, lsr #0x1f
	add r3, r1, r3, asr #4
	smull r1, r2, r4, r3
	sub r3, r0, r1
	add r0, r3, #0x21
	cmp r8, #0
	strb r0, [sb, #0x74]
	beq _021FF9FC
	ldrsb r0, [sb, #0x74]
	tst r0, #1
	beq _021FFA10
_021FF9FC:
	cmp r8, #0
	ldreqsb r0, [sb, #0x74]
	andeq r0, r0, #1
	cmpeq r0, #1
	bne _021FFA1C
_021FFA10:
	ldrsb r0, [sb, #0x74]
	add r0, r0, #1
	strb r0, [sb, #0x74]
_021FFA1C:
	add r7, r7, #1
	cmp r7, #8
	blt _021FF988
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021FFA2C: .word 0x2C0B02C1
	arm_func_end ov4_021FF944

	arm_func_start ov4_021FFA30
ov4_021FFA30: ; 0x021FFA30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r7, #1
	mov fp, #2
	mov r5, #0
_021FFA4C:
	ldr r0, [sl, #0x4b0]
	mov r1, sb
	mov r2, r8
	mov r3, r5
	sub r7, r7, #1
	bl ov4_021EAE48
	mov r6, r0
	cmp r6, #0
	bgt _021FFAB8
	cmp r7, #0
	blt _021FFAB8
	mov r0, sl
	bl ov4_021FFDE0
	mov r1, #0
	mov r2, r1
	mov r0, sl
	mov r3, fp
	str r2, [sp]
	bl ov4_021FFAC8
	movs r4, r0
	beq _021FFAB0
	mov r0, sl
	bl ov4_021FF608
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FFAB0:
	cmp r7, #0
	bge _021FFA4C
_021FFAB8:
	cmp r6, #0
	movle r0, #3
	movgt r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_021FFA30

	arm_func_start ov4_021FFAC8
ov4_021FFAC8: ; 0x021FFAC8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x30c
	mov r5, r0
	ldr r0, [r5, #0]
	mov r7, r1
	mov r6, r2
	mov r4, r3
	cmp r0, #1
	beq _021FFB00
	ldr r0, _021FFD24 ; =0x0221A098
	ldr r1, _021FFD28 ; =0x0221A048
	ldr r2, _021FFD2C ; =0x0221A01C
	ldr r3, _021FFD30 ; =0x0000020A
	bl __msl_assertion_failed
_021FFB00:
	cmp r7, #0
	ldreq r7, _021FFD34 ; =0x0221A038
	cmp r6, #0
	ldreq r6, _021FFD34 ; =0x0221A038
	mov r0, r7
	bl strlen
	cmp r0, #0x100
	addhi sp, sp, #0x30c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, r6, r7, pc}
	mov r0, r6
	bl strlen
	cmp r0, #0x100
	addhi sp, sp, #0x30c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, r6, r7, pc}
	mov r0, r5
	bl ov4_021FF71C
	cmp r0, #0
	addne sp, sp, #0x30c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, r5
	str r4, [r5, #0x5c4]
	bl ov4_021FF944
	add r3, sp, #0xe
	mov ip, #2
	add r0, sp, #4
	add r2, sp, #8
	mov r1, #0
	str ip, [sp, #8]
	str r3, [sp, #4]
	bl ov4_021FF898
	add r0, sp, #4
	add r2, sp, #8
	mov r1, #1
	bl ov4_021FF898
	add r0, sp, #4
	mov r1, #3
	add r2, sp, #8
	bl ov4_021FF898
	ldr r1, [r5, #0x4b8]
	add r0, sp, #4
	add r2, sp, #8
	bl ov4_021FF8BC
	add r0, sp, #4
	add r1, r5, #0xc
	add r2, sp, #8
	bl ov4_021FF848
	add r0, sp, #4
	add r1, r5, #0x30
	add r2, sp, #8
	bl ov4_021FF848
	add r0, sp, #4
	add r1, r5, #0x74
	mov r2, #8
	add r3, sp, #8
	bl ov4_021FF910
	mov r1, r6
	add r0, sp, #4
	add r2, sp, #8
	bl ov4_021FF848
	mov r1, r7
	add r0, sp, #4
	add r2, sp, #8
	bl ov4_021FF848
	mov r1, r4, lsl #0x18
	and ip, r1, #0xff000000
	mov r1, r4, lsl #8
	and r3, r1, #0xff0000
	mov r1, r4, lsr #0x18
	and r2, r1, #0xff
	mov r1, r4, lsr #8
	and r1, r1, #0xff00
	orr r1, r2, r1
	orr r1, r3, r1
	add r0, sp, #4
	orr r1, ip, r1
	add r2, sp, #8
	bl ov4_021FF8BC
	ldr r0, [r5, #0x5c4]
	tst r0, #8
	beq _021FFC58
	ldr r1, [r5, #0x4a4]
	add r0, sp, #4
	add r2, sp, #8
	bl ov4_021FF8BC
_021FFC58:
	ldr r0, [r5, #0x5c4]
	tst r0, #0x80
	beq _021FFC74
	ldr r1, [sp, #0x320]
	add r0, sp, #4
	add r2, sp, #8
	bl ov4_021FF8BC
_021FFC74:
	ldr r2, [sp, #8]
	add r4, sp, #0
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp]
	ldrb r3, [r4]
	add r1, sp, #0xc
	ldrb r0, [r4, #1]
	strb r3, [r1]
	mov r3, #0
	strb r0, [r1, #1]
	ldr r0, [r5, #0x4b0]
	bl ov4_021EAE48
	cmp r0, #0
	bgt _021FFCD8
	mov r0, r5
	bl ov4_021FFDE0
	add sp, sp, #0x30c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FFCD8:
	mov r0, #3
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r5, #0x5c8]
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	bne _021FFD18
	mov r0, #0x1000
	bl ov4_021D7880
	cmp r0, #0
	str r0, [r5, #0x7c]
	addeq sp, sp, #0x30c
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [r5, #0x80]
_021FFD18:
	mov r0, #0
	add sp, sp, #0x30c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021FFD24: .word Unk_ov4_0221A098
_021FFD28: .word Unk_ov4_0221A048
_021FFD2C: .word Unk_ov4_0221A01C
_021FFD30: .word 0x0000020A
_021FFD34: .word Unk_ov4_0221A038
	arm_func_end ov4_021FFAC8

	arm_func_start ov4_021FFD38
ov4_021FFD38: ; 0x021FFD38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x480]
	mov r4, #0
	cmp r0, #0
	ble _021FFD70
_021FFD50:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x84]
	mov r0, r5
	bl ov4_021FF430
	ldr r0, [r5, #0x480]
	add r4, r4, #1
	cmp r4, r0
	blt _021FFD50
_021FFD70:
	mov r0, #0
	str r0, [r5, #0x480]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021FFD38

	arm_func_start ov4_021FFD7C
ov4_021FFD7C: ; 0x021FFD7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r4, #0
	bl ov4_021E9BBC
	cmp r0, #0
	ble _021FFDCC
_021FFDA0:
	ldr r0, [r5, #8]
	mov r1, r4
	bl ov4_021E9BC4
	ldr r1, [r0, #0]
	mov r0, r5
	bl ov4_021FF430
	ldr r0, [r5, #8]
	add r4, r4, #1
	bl ov4_021E9BBC
	cmp r4, r0
	blt _021FFDA0
_021FFDCC:
	ldr r0, [r5, #8]
	bl ov4_021E9B50
	mov r0, #0
	str r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021FFD7C

	arm_func_start ov4_021FFDE0
ov4_021FFDE0: ; 0x021FFDE0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _021FFDF8
	bl ov4_021D78B0
_021FFDF8:
	mov r1, #0
	str r1, [r4, #0x7c]
	str r1, [r4, #0x80]
	ldr r0, [r4, #0x4b0]
	sub r1, r1, #1
	cmp r0, r1
	beq _021FFE18
	bl ov4_021EACF0
_021FFE18:
	mvn r1, #0
	mov r0, r4
	str r1, [r4, #0x4b0]
	mov r1, #1
	str r1, [r4, #0]
	bl ov4_021FFD7C
	mvn r1, #0
	mov r0, r4
	str r1, [r4, #0x484]
	bl ov4_021FFD38
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FFDE0

	arm_func_start ov4_021FFE44
ov4_021FFE44: ; 0x021FFE44
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021FFDE0
	mov r0, r4
	bl ov4_021FF340
	mov r0, r4
	bl ov4_021FE144
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021FFE70
	bl ov4_021E9B50
_021FFE70:
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FFE44

	arm_func_start ov4_021FFE7C
ov4_021FFE7C: ; 0x021FFE7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r7, r2
	add r0, sb, #0x54
	mov r8, r1
	bl strlen
	mov r5, r0
	cmp r7, #0
	add r6, sb, #0x54
	mov r4, #0
	ble _021FFF04
_021FFEA8:
	mov r0, r4
	mov r1, r5
	bl _s32_div_f
	ldrsb r1, [r6, r1]
	mov r2, r4, lsr #0x1f
	rsb r0, r2, r4, lsl #29
	mul r3, r4, r1
	mov r1, r3, lsr #0x1f
	add r2, r2, r0, ror #29
	rsb r0, r1, r3, lsl #29
	add r2, sb, r2
	add r3, r1, r0, ror #29
	ldrsb r0, [r8, r4]
	ldrsb r1, [r2, #0x74]
	add r2, sb, r3
	add r4, r4, #1
	eor r0, r1, r0
	ldrsb r1, [r2, #0x74]
	mov r0, r0, lsl #0x18
	cmp r4, r7
	eor r0, r1, r0, asr #24
	strb r0, [r2, #0x74]
	blt _021FFEA8
_021FFF04:
	add r0, sb, #0xbc
	add r0, r0, #0x400
	add r1, sb, #0x74
	mov r2, #8
	bl ov4_021FD5FC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_021FFE7C

	arm_func_start ov4_021FFF1C
ov4_021FFF1C: ; 0x021FFF1C
	mov r1, #5
	tst r0, #2
	addne r1, r1, #4
	tst r0, #8
	addne r1, r1, #4
	tst r0, #0x10
	addne r1, r1, #2
	tst r0, #0x20
	addne r1, r1, #2
	mov r0, r1
	bx lr
	arm_func_end ov4_021FFF1C

	arm_func_start ov4_021FFF48
ov4_021FFF48: ; 0x021FFF48
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	b _021FFF98
_021FFF58:
	mov r0, r5
	mov r1, r4
	bl ov4_021FF4AC
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	sub r4, r4, r0
	add r5, r5, r0
	mov r0, r5
	mov r1, r4
	bl ov4_021FF4AC
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	add r5, r5, r0
	sub r4, r4, r0
_021FFF98:
	cmp r4, #0
	ble _021FFFAC
	ldrsb r0, [r5]
	cmp r0, #0
	bne _021FFF58
_021FFFAC:
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrsb r0, [r5]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021FFF48

	arm_func_start ov4_021FFFCC
ov4_021FFFCC: ; 0x021FFFCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	ldr r0, [r8, #8]
	mov r7, r1
	mov r6, r2
	bl ov4_021E9BBC
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	ble _022000B0
	mvn sb, #0
_021FFFF8:
	ldr r0, [r8, #8]
	mov r1, r5
	bl ov4_021E9BC4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0220003C
	cmp r0, #1
	beq _02200024
	cmp r0, #2
	beq _02200030
	b _0220007C
_02200024:
	add r7, r7, #1
	sub r6, r6, #1
	b _02200098
_02200030:
	add r7, r7, #2
	sub r6, r6, #2
	b _02200098
_0220003C:
	cmp r6, #1
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r7], #1
	sub r6, r6, #1
	cmp r0, #0xff
	bne _02200098
	mov r0, r7
	mov r1, r6
	bl ov4_021FF4AC
	cmp r0, sb
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r7, r7, r0
	sub r6, r6, r0
	b _02200098
_0220007C:
	ldr r0, _022000B8 ; =0x0221A0B8
	ldr r1, _022000BC ; =0x0221A048
	ldr r2, _022000C0 ; =0x02219FD0
	ldr r3, _022000C4 ; =0x00000317
	bl __msl_assertion_failed
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02200098:
	cmp r6, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r5, r5, #1
	cmp r5, r4
	blt _021FFFF8
_022000B0:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_022000B8: .word Unk_ov4_0221A0B8
_022000BC: .word Unk_ov4_0221A048
_022000C0: .word Unk_ov4_02219FD0
_022000C4: .word 0x00000317
	arm_func_end ov4_021FFFCC

	arm_func_start ov4_022000C8
ov4_022000C8: ; 0x022000C8
	stmfd sp!, {r4, lr}
	cmp r2, #5
	ldmltia sp!, {r4, pc}
	ldrb r4, [r1]
	ldrb lr, [r1, #1]
	ldrb ip, [r1, #2]
	tst r4, #0x10
	strb lr, [r3]
	strb ip, [r3, #1]
	ldrb lr, [r1, #3]
	ldrb ip, [r1, #4]
	strb lr, [r3, #2]
	strb ip, [r3, #3]
	beq _02200124
	sub r0, r2, #5
	cmp r0, #2
	ldmltia sp!, {r4, pc}
	ldrb r2, [r1, #5]
	ldrb r0, [r1, #6]
	ldr r1, [sp, #8]
	strb r2, [r1]
	strb r0, [r1, #1]
	ldmia sp!, {r4, pc}
_02200124:
	add r0, r0, #0x400
	ldrh r1, [r0, #0xa8]
	ldr r0, [sp, #8]
	strh r1, [r0]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_022000C8

	arm_func_start ov4_02200138
ov4_02200138: ; 0x02200138
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r8, r2
	ldrb r2, [r8], #5
	mov sb, r1
	mov sl, r0
	mov r7, r3
	str r2, [sp]
	mov r0, sb
	mov r1, r2
	str r7, [sp, #4]
	ldr r6, [sp, #0x38]
	bl ov4_021FE848
	ldr r0, [sp]
	sub r7, r7, #5
	tst r0, #0x10
	ldr r0, [sp]
	addne r8, r8, #2
	subne r7, r7, #2
	tst r0, #2
	moveq r0, #0
	streq r0, [sp, #0xc]
	beq _022001C0
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r2, sp, #0xc
	sub r7, r7, #4
	strb r1, [r2]
	strb r0, [r2, #1]
	ldrb r1, [r8, #2]
	ldrb r0, [r8, #3]
	add r8, r8, #4
	strb r1, [r2, #2]
	strb r0, [r2, #3]
_022001C0:
	ldr r0, [sp]
	tst r0, #0x20
	addeq r0, sl, #0x400
	ldreqh r0, [r0, #0xa8]
	streqh r0, [sp, #8]
	beq _022001F4
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r2, sp, #8
	add r8, r8, #2
	strb r1, [r2]
	strb r0, [r2, #1]
	sub r7, r7, #2
_022001F4:
	ldrh r2, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r0, sb
	bl ov4_021FE850
	ldr r0, [sp]
	tst r0, #8
	beq _02200248
	ldrb r2, [r8]
	ldrb r1, [r8, #1]
	add r3, sp, #0xc
	mov r0, sb
	strb r2, [r3]
	strb r1, [r3, #1]
	ldrb r2, [r8, #2]
	ldrb r1, [r8, #3]
	add r8, r8, #4
	sub r7, r7, #4
	strb r2, [r3, #2]
	strb r1, [r3, #3]
	ldr r1, [sp, #0xc]
	bl ov4_021FE85C
_02200248:
	ldr r0, [sp]
	tst r0, #0x40
	beq _02200378
	ldr r0, [sl, #8]
	bl ov4_021E9BBC
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	ble _02200360
	add fp, sp, #0xa
_02200270:
	ldr r0, [sl, #8]
	mov r1, r5
	bl ov4_021E9BC4
	mov r1, r0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _02200300
	cmp r0, #1
	beq _022002A0
	cmp r0, #2
	beq _022002B8
	b _02200354
_022002A0:
	ldrb r2, [r8], #1
	ldr r1, [r1, #0]
	mov r0, sb
	bl ov4_021FE1E8
	sub r7, r7, #1
	b _02200354
_022002B8:
	ldrb r3, [r8]
	ldrb r2, [r8, #1]
	mov r0, sb
	strb r3, [fp]
	strb r2, [fp, #1]
	ldrh r3, [sp, #0xa]
	ldr r1, [r1, #0]
	mov r2, r3, asr #8
	and r2, r2, #0xff
	mov r3, r3, lsl #8
	and r3, r3, #0xff00
	orr r2, r2, r3
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl ov4_021FE1E8
	add r8, r8, #2
	sub r7, r7, #2
	b _02200354
_02200300:
	cmp r6, #0
	ldrneb r0, [r8], #1
	subne r7, r7, #1
	moveq r0, #0xff
	cmp r0, #0xff
	bne _02200340
	ldr r1, [r1, #0]
	mov r0, sb
	mov r2, r8
	bl ov4_021FE1A8
	mov r0, r8
	bl strlen
	add r0, r0, #1
	add r8, r8, r0
	sub r7, r7, r0
	b _02200354
_02200340:
	add r0, sl, r0, lsl #2
	ldr r1, [r1, #0]
	ldr r2, [r0, #0x84]
	mov r0, sb
	bl ov4_021FE1A8
_02200354:
	add r5, r5, #1
	cmp r5, r4
	blt _02200270
_02200360:
	mov r0, sb
	bl ov4_021FE86C
	orr r1, r0, #1
	mov r0, sb
	and r1, r1, #0xff
	bl ov4_021FE864
_02200378:
	ldr r0, [sp]
	tst r0, #0x80
	beq _022003F4
	b _022003C4
_02200388:
	mov r0, r8
	mov r4, r8
	bl strlen
	add r3, r0, #1
	add r8, r8, r3
	mov r0, sb
	mov r1, r4
	mov r2, r8
	sub r7, r7, r3
	bl ov4_021FE1A8
	mov r0, r8
	bl strlen
	add r0, r0, #1
	add r8, r8, r0
	sub r7, r7, r0
_022003C4:
	ldrsb r0, [r8]
	cmp r0, #0
	beq _022003D8
	cmp r7, #0
	bgt _02200388
_022003D8:
	mov r0, sb
	sub r7, r7, #1
	bl ov4_021FE86C
	orr r1, r0, #2
	mov r0, sb
	and r1, r1, #0xff
	bl ov4_021FE864
_022003F4:
	ldr r0, [sp, #4]
	sub r0, r0, r7
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_02200138

	arm_func_start ov4_02200404
ov4_02200404: ; 0x02200404
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r4, r2
	cmp r4, #1
	mov r6, r0
	mov r5, r1
	addlt sp, sp, #0xc
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r8, [r5]
	mov r0, r8
	bl ov4_021FFF1C
	mov r7, r0
	cmp r4, r7
	addlt sp, sp, #0xc
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, pc}
	tst r8, #0x40
	beq _02200470
	mov r0, r6
	add r1, r5, r7
	sub r2, r4, r7
	bl ov4_021FFFCC
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02200470:
	tst r8, #0x80
	beq _02200494
	add r0, r5, r7
	sub r1, r4, r7
	bl ov4_021FFF48
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02200494:
	ldr r1, _02200530 ; =0x0221A0BC
	add r0, r5, #1
	mov r2, #4
	bl memcmp
	cmp r0, #0
	addeq sp, sp, #0xc
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r7, sp, #4
	add r3, sp, #8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str r7, [sp]
	bl ov4_022000C8
	ldrh r2, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, r6
	bl ov4_021FE79C
	mov r7, r0
	bl ov4_021FE874
	cmp r0, #0
	addne sp, sp, #0xc
	mvnne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov ip, #1
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	str ip, [sp]
	bl ov4_02200138
	mov r4, r0
	mov r0, r6
	mov r1, r7
	bl ov4_021FF144
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02200530: .word Unk_ov4_0221A0BC
	arm_func_end ov4_02200404

	arm_func_start ov4_02200534
ov4_02200534: ; 0x02200534
	str r1, [r0, #0x4ac]
	bx lr
	arm_func_end ov4_02200534

	arm_func_start ov4_0220053C
ov4_0220053C: ; 0x0220053C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r1, [r7, #0x5c8]
	ldr r5, [r7, #0x7c]
	ldr r6, [r7, #0x80]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _022008FC
_02200560: ; jump table
	b _02200574 ; case 0
	b _022005D4 ; case 1
	b _022006D4 ; case 2
	b _022007C0 ; case 3
	b _0220086C ; case 4
_02200574:
	cmp r6, #1
	blt _022008FC
	ldrb r1, [r5]
	eor r1, r1, #0xec
	add r3, r1, #2
	cmp r6, r3
	blt _022008FC
	sub r1, r3, #1
	ldrb r1, [r5, r1]
	eor r2, r1, #0xea
	add r4, r3, r2
	cmp r6, r4
	blt _022008FC
	add r1, r5, r3
	bl ov4_021FFE7C
	add r5, r5, r4
	sub r6, r6, r4
	add r0, r7, #0xbc
	mov r3, #1
	mov r1, r5
	mov r2, r6
	add r0, r0, #0x400
	str r3, [r7, #0x5c8]
	bl ov4_021FD790
_022005D4:
	cmp r6, #6
	blt _022008FC
	ldrb r3, [r5]
	ldrb r1, [r5, #1]
	ldr r2, _02200950 ; =0x0221B754
	mov r0, r7
	strb r3, [r7, #0x4a0]
	strb r1, [r7, #0x4a1]
	ldrb r4, [r5, #2]
	ldrb r3, [r5, #3]
	mov r1, #6
	strb r4, [r7, #0x4a2]
	strb r3, [r7, #0x4a3]
	ldr r2, [r2, #0]
	ldr r3, [r7, #0x494]
	ldr r4, [r7, #0x488]
	blx r4
	ldrb r3, [r5, #4]
	ldrb r2, [r5, #5]
	add r0, r7, #0x400
	ldr r1, _02200954 ; =0x0000FFFF
	strb r3, [r7, #0x4a8]
	strb r2, [r7, #0x4a9]
	ldrh r0, [r0, #0xa8]
	cmp r0, r1
	bne _02200688
	add r0, r5, #6
	sub r1, r6, #6
	bl ov4_021FF4AC
	mvn r1, #0
	cmp r0, r1
	beq _022008FC
	mov r0, r7
	add r1, r5, #6
	bl ov4_02200534
	ldr r0, _02200950 ; =0x0221B754
	ldr r3, [r7, #0x494]
	ldr r2, [r0, #0]
	ldr r4, [r7, #0x488]
	mov r0, r7
	mov r1, #5
	blx r4
	ldr r0, [r7, #0x7c]
	cmp r0, #0
	beq _022008FC
_02200688:
	ldr r0, [r7, #0x5c4]
	add r5, r5, #6
	tst r0, #2
	sub r6, r6, #6
	bne _022006B0
	add r0, r7, #0x400
	ldrh r1, [r0, #0xa8]
	ldr r0, _02200954 ; =0x0000FFFF
	cmp r1, r0
	bne _022006C4
_022006B0:
	mov r0, #5
	str r0, [r7, #0x5c8]
	mov r0, #2
	str r0, [r7, #0]
	b _022008FC
_022006C4:
	mov r0, #2
	str r0, [r7, #0x5c8]
	sub r0, r0, #3
	str r0, [r7, #0x484]
_022006D4:
	ldr r1, [r7, #0x484]
	mvn r0, #0
	cmp r1, r0
	bne _0220071C
	cmp r6, #1
	blt _022008FC
	ldrb r1, [r5]
	mov r0, #8
	mov r2, #0
	str r1, [r7, #0x484]
	bl ov4_021E9A8C
	cmp r0, #0
	str r0, [r7, #8]
	addeq sp, sp, #8
	moveq r0, #5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r5, r5, #1
	sub r6, r6, #1
_0220071C:
	ldr r0, [r7, #8]
	bl ov4_021E9BBC
	ldr r1, [r7, #0x484]
	cmp r1, r0
	ble _0220079C
	add r8, sp, #0
	mvn r4, #0
_02200738:
	cmp r6, #2
	blt _0220079C
	add r0, r5, #1
	sub r1, r6, #1
	bl ov4_021FF4AC
	mov sb, r0
	cmp sb, r4
	beq _0220079C
	ldrb r2, [r5]
	mov r0, r7
	add r1, r5, #1
	str r2, [sp, #4]
	bl ov4_021FF3C0
	str r0, [sp]
	ldr r0, [r7, #8]
	mov r1, r8
	bl ov4_021E9C2C
	add r1, sb, #1
	ldr r0, [r7, #8]
	add r5, r5, r1
	sub r6, r6, r1
	bl ov4_021E9BBC
	ldr r1, [r7, #0x484]
	cmp r1, r0
	bgt _02200738
_0220079C:
	ldr r0, [r7, #8]
	bl ov4_021E9BBC
	ldr r1, [r7, #0x484]
	cmp r1, r0
	bgt _022008FC
	mov r0, #3
	str r0, [r7, #0x5c8]
	sub r0, r0, #4
	str r0, [r7, #0x484]
_022007C0:
	ldr r1, [r7, #0x484]
	mvn r0, #0
	cmp r1, r0
	bne _022007EC
	cmp r6, #1
	blt _022008FC
	ldrb r1, [r5], #1
	mov r0, #0
	sub r6, r6, #1
	str r1, [r7, #0x484]
	str r0, [r7, #0x480]
_022007EC:
	ldr r1, [r7, #0x484]
	ldr r0, [r7, #0x480]
	cmp r1, r0
	ble _02200854
	mvn r8, #0
_02200800:
	mov r0, r5
	mov r1, r6
	bl ov4_021FF4AC
	mov r4, r0
	cmp r4, r8
	beq _02200854
	mov r0, r7
	mov r1, r5
	bl ov4_021FF3C0
	ldr r1, [r7, #0x480]
	add r5, r5, r4
	mov r2, r1
	add r1, r1, #1
	str r1, [r7, #0x480]
	add r1, r7, r2, lsl #2
	str r0, [r1, #0x84]
	ldr r1, [r7, #0x484]
	ldr r0, [r7, #0x480]
	sub r6, r6, r4
	cmp r1, r0
	bgt _02200800
_02200854:
	ldr r1, [r7, #0x484]
	ldr r0, [r7, #0x480]
	cmp r1, r0
	bgt _022008FC
	mov r0, #4
	str r0, [r7, #0x5c8]
_0220086C:
	cmp r6, #5
	blt _022008FC
	mvn r4, #0
	sub r8, r4, #1
	mov sb, #0
_02200880:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl ov4_02200404
	cmp r0, r8
	addeq sp, sp, #8
	moveq r0, #5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r0, r4
	bne _022008E0
	mov r0, #5
	str r0, [r7, #0x5c8]
	mov r0, #2
	str r0, [r7, #0]
	ldr r0, _02200950 ; =0x0221B754
	ldr r3, [r7, #0x494]
	ldr r2, [r0, #0]
	ldr r4, [r7, #0x488]
	mov r0, r7
	mov r1, #3
	sub r6, r6, #5
	add r5, r5, #5
	blx r4
	b _022008FC
_022008E0:
	ldr r1, [r7, #0x7c]
	add r5, r5, r0
	cmp r1, #0
	sub r6, r6, r0
	moveq r0, sb
	cmp r0, #0
	bne _02200880
_022008FC:
	cmp r6, #0
	bge _02200918
	ldr r0, _02200958 ; =0x0221A0C4
	ldr r1, _0220095C ; =0x0221A048
	ldr r2, _02200960 ; =0x0221A008
	ldr r3, _02200964 ; =0x000004AF
	bl __msl_assertion_failed
_02200918:
	ldr r0, [r7, #0x7c]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0
	beq _02200940
	mov r1, r5
	mov r2, r6
	bl memmove
_02200940:
	str r6, [r7, #0x80]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02200950: .word Unk_ov4_0221B754
_02200954: .word 0x0000FFFF
_02200958: .word Unk_ov4_0221A0C4
_0220095C: .word Unk_ov4_0221A048
_02200960: .word Unk_ov4_0221A008
_02200964: .word 0x000004AF
	arm_func_end ov4_0220053C

	arm_func_start ov4_02200968
ov4_02200968: ; 0x02200968
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	ldr r3, [sl, #8]
	mov sb, r1
	mov r8, r2
	cmp r3, #0
	sub r8, r8, #1
	ldrb r7, [sb], #1
	beq _02200994
	bl ov4_021FFD7C
_02200994:
	mov r1, r7
	mov r0, #8
	mov r2, #0
	bl ov4_021E9A8C
	cmp r0, #0
	str r0, [sl, #8]
	addeq sp, sp, #8
	moveq r0, #5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r7, #0
	mov r6, #0
	ble _02200A38
	add fp, sp, #0
	mvn r4, #0
_022009CC:
	cmp r8, #2
	addlt sp, sp, #8
	movlt r0, #4
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sb, #1
	sub r1, r8, #1
	bl ov4_021FF4AC
	mov r5, r0
	cmp r5, r4
	addeq sp, sp, #8
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r2, [sb]
	mov r0, sl
	add r1, sb, #1
	str r2, [sp, #4]
	bl ov4_021FF3C0
	str r0, [sp]
	ldr r0, [sl, #8]
	mov r1, fp
	bl ov4_021E9C2C
	add r0, r5, #1
	add r6, r6, #1
	cmp r6, r7
	add sb, sb, r0
	sub r8, r8, r0
	blt _022009CC
_02200A38:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_02200968

	arm_func_start ov4_02200A44
ov4_02200A44: ; 0x02200A44
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov r8, r2
	cmp r8, #2
	mov sl, r0
	mov sb, r1
	addlt sp, sp, #0x24
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [sb, #1]
	sub r8, r8, #2
	mov fp, #0
	str r0, [sp, #0xc]
	ldrb r0, [sb], #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _02200BC0
	add r7, sp, #0x20
	add r6, sp, #0x1c
	mvn r4, #0
_02200A98:
	mov r0, sb
	mov r1, r8
	str sb, [sp, #0x10]
	bl ov4_021FF4AC
	cmp r0, r4
	addeq sp, sp, #0x24
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r3, r8, r0
	cmp r3, #0xb
	add r2, sb, r0
	addlt sp, sp, #0x24
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	sub r8, r3, #0xa
	add sb, r2, #0xa
	strb r1, [r7]
	strb r0, [r7, #1]
	ldrb r5, [r2, #2]
	ldrb r3, [r2, #3]
	mov r0, sb
	mov r1, r8
	strb r3, [r7, #3]
	strb r5, [r7, #2]
	ldrb ip, [r2, #4]
	ldrb r5, [r2, #5]
	add r3, sp, #0x18
	strb ip, [r3]
	strb r5, [r3, #1]
	ldrb r5, [r2, #6]
	ldrb r3, [r2, #7]
	strb r5, [r6]
	strb r3, [r6, #1]
	ldrb r3, [r2, #8]
	ldrb r2, [r2, #9]
	strb r3, [r6, #2]
	strb r2, [r6, #3]
	ldr ip, [sp, #0x1c]
	mov r2, ip, lsl #0x18
	and r5, r2, #0xff000000
	mov r2, ip, lsl #8
	and r3, r2, #0xff0000
	mov r2, ip, lsr #0x18
	mov ip, ip, lsr #8
	and r2, r2, #0xff
	and ip, ip, #0xff00
	orr r2, r2, ip
	orr r2, r3, r2
	orr r2, r5, r2
	str r2, [sp, #0x1c]
	bl ov4_021FF4AC
	mov r5, r0
	cmp r5, r4
	addeq sp, sp, #0x24
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #0x1c]
	mov r0, sl
	stmia sp, {r1, sb}
	ldr r2, [sl, #0x494]
	ldr r1, [sp, #0x10]
	str r2, [sp, #8]
	ldrh r3, [sp, #0x18]
	ldr r2, [sp, #0x20]
	ldr ip, [sl, #0x490]
	blx ip
	ldr r0, [sp, #0xc]
	add fp, fp, #1
	cmp fp, r0
	add sb, sb, r5
	sub r8, r8, r5
	blt _02200A98
_02200BC0:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02200BF4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r2, [sl, #0x494]
	mov r0, sl
	str r2, [sp, #8]
	ldr r4, [sl, #0x490]
	mov r2, r1
	mov r3, r1
	blx r4
_02200BF4:
	mov r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_02200A44

	arm_func_start ov4_02200C00
ov4_02200C00: ; 0x02200C00
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x54
	mov r8, r2
	cmp r8, #0xb
	mov sl, r0
	mov sb, r1
	addlt sp, sp, #0x54
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r2, [sb]
	ldrb r1, [sb, #1]
	add r3, sp, #0xc
	add r4, sp, #8
	strb r2, [r3]
	strb r1, [r3, #1]
	ldrb r2, [sb, #2]
	ldrb r1, [sb, #3]
	strb r1, [r3, #3]
	strb r2, [r3, #2]
	ldrb r3, [sb, #4]
	ldrb r2, [sb, #5]
	ldr r1, [sp, #0xc]
	strb r3, [r4]
	strb r2, [r4, #1]
	ldrh r2, [sp, #8]
	bl ov4_021FF1D4
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	bl ov4_021FF2D4
	ldrb r2, [sb, #6]
	ldrb r1, [sb, #7]
	add r3, sp, #0x10
	mov fp, r0
	strb r2, [r3]
	strb r1, [r3, #1]
	ldrb r1, [sb, #8]
	ldrb r0, [sb, #9]
	sub r8, r8, #0xb
	mov r7, #0
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	ldr r3, [sp, #0x10]
	add r5, sp, #0x14
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	str r0, [sp, #0x10]
	ldrb r6, [sb, #0xa]
	add sb, sb, #0xb
	mvn r4, #0
	b _02200D34
_02200D00:
	cmp r8, #1
	blt _02200D40
	mov r0, sb
	mov r1, r8
	bl ov4_021FF4AC
	cmp r0, r4
	addeq sp, sp, #0x54
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str sb, [r5, r7, lsl #2]
	add sb, sb, r0
	sub r8, r8, r0
	add r7, r7, #1
_02200D34:
	cmp r7, r6
	cmplt r7, #0x10
	blt _02200D00
_02200D40:
	ldr r4, [sl, #0x48c]
	cmp r4, #0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r1, sp, #0x14
	str r1, [sp]
	ldr r2, [sl, #0x494]
	mov r0, sl
	str r2, [sp, #4]
	ldr r2, [sp, #0x10]
	mov r1, fp
	mov r3, r7
	blx r4
	mov r0, #0
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_02200C00

	arm_func_start ov4_02200D84
ov4_02200D84: ; 0x02200D84
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	cmp r2, #6
	mov r4, r0
	addlt sp, sp, #8
	movlt r0, #4
	ldmltia sp!, {r4, pc}
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add lr, sp, #4
	add ip, sp, #0
	strb r3, [lr]
	strb r2, [lr, #1]
	ldrb r3, [r1, #2]
	ldrb r2, [r1, #3]
	strb r3, [lr, #2]
	strb r2, [lr, #3]
	ldrb r3, [r1, #4]
	ldrb r2, [r1, #5]
	ldr r1, [sp, #4]
	strb r3, [ip]
	strb r2, [ip, #1]
	ldrh r2, [sp]
	bl ov4_021FF1D4
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl ov4_021FF278
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov4_02200D84

	arm_func_start ov4_02200E10
ov4_02200E10: ; 0x02200E10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, r2
	cmp r6, #5
	mov r8, r0
	mov r7, r1
	addlt sp, sp, #0xc
	movlt r0, #4
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r4, sp, #4
	add r3, sp, #8
	str r4, [sp]
	bl ov4_022000C8
	ldrh r2, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, r8
	bl ov4_021FF1D4
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	bne _02200E90
	ldrh r2, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, r8
	bl ov4_021FE79C
	mov r4, r0
	bl ov4_021FE874
	cmp r0, #0
	beq _02200EA0
	add sp, sp, #0xc
	mov r0, #5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02200E90:
	mov r0, r8
	mov r1, r5
	bl ov4_021FF2D4
	mov r4, r0
_02200EA0:
	mov ip, #0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	mov r3, r6
	str ip, [sp]
	bl ov4_02200138
	cmp r0, #0
	addlt sp, sp, #0xc
	movlt r0, #4
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mvn r0, #0
	cmp r5, r0
	bne _02200EE4
	mov r0, r8
	mov r1, r4
	bl ov4_021FF144
_02200EE4:
	ldr r3, [r8, #0x494]
	ldr r5, [r8, #0x488]
	mov r0, r8
	mov r2, r4
	mov r1, #1
	blx r5
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_02200E10

	arm_func_start ov4_02200F08
ov4_02200F08: ; 0x02200F08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r0
	ldr r0, [sb, #0x80]
	mov r8, #0
	cmp r0, #3
	blt _022010A4
	ldr r5, _022010BC ; =0x0221A0D0
	ldr r4, _022010C0 ; =0x0221A048
	ldr sl, _022010C4 ; =0x02219FF4
	ldr fp, _022010C8 ; =0x000005B4
	mov r6, r8
	add r7, sp, #0
_02200F38:
	ldr r0, [sb, #0x7c]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r7]
	strb r0, [r7, #1]
	ldrh r0, [sp]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp]
	ldrh r2, [sp]
	cmp r2, #0x1000
	movhi r8, #4
	bhi _022010A4
	ldr r0, [sb, #0x80]
	cmp r0, r2
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb, #0x7c]
	ldrsb r0, [r1, #2]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02201048
_02200F9C: ; jump table
	b _02201048 ; case 0
	b _02200FB8 ; case 1
	b _02200FD0 ; case 2
	b _02200FE8 ; case 3
	b _02201004 ; case 4
	b _0220101C ; case 5
	b _02201034 ; case 6
_02200FB8:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl ov4_02200968
	mov r8, r0
	b _02201048
_02200FD0:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl ov4_02200E10
	mov r8, r0
	b _02201048
_02200FE8:
	ldr r0, [sb, #0x4b0]
	mov r3, r6
	bl ov4_021EAE48
	cmp r0, #0
	bgt _02201048
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02201004:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl ov4_02200D84
	mov r8, r0
	b _02201048
_0220101C:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl ov4_02200C00
	mov r8, r0
	b _02201048
_02201034:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl ov4_02200A44
	mov r8, r0
_02201048:
	ldrh r0, [sp]
	ldr r1, [sb, #0x80]
	subs r0, r1, r0
	str r0, [sb, #0x80]
	bpl _02201070
	mov r0, r5
	mov r1, r4
	mov r2, sl
	mov r3, fp
	bl __msl_assertion_failed
_02201070:
	ldr r2, [sb, #0x80]
	cmp r2, #0
	ldrne r0, [sb, #0x7c]
	cmpne r0, #0
	beq _02201090
	ldrh r1, [sp]
	add r1, r0, r1
	bl memmove
_02201090:
	cmp r8, #0
	bne _022010A4
	ldr r0, [sb, #0x80]
	cmp r0, #3
	bge _02200F38
_022010A4:
	cmp r8, #0
	beq _022010B4
	mov r0, sb
	bl ov4_021FF608
_022010B4:
	mov r0, r8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022010BC: .word Unk_ov4_0221A0D0
_022010C0: .word Unk_ov4_0221A048
_022010C4: .word Unk_ov4_02219FF4
_022010C8: .word 0x000005B4
	arm_func_end ov4_02200F08

	arm_func_start ov4_022010CC
ov4_022010CC: ; 0x022010CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x4b0]
	bl ov4_021EAB6C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r5, [r6, #0x80]
	ldr r1, [r6, #0x7c]
	ldr r0, [r6, #0x4b0]
	add r1, r1, r5
	rsb r2, r5, #0x1000
	mov r3, #0
	bl ov4_021EAE04
	add r1, r0, #1
	cmp r1, #1
	bhi _02201120
	mov r0, r6
	bl ov4_021FF608
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_02201120:
	ldr r1, [r6, #0x80]
	mov r4, #0
	add r0, r1, r0
	str r0, [r6, #0x80]
	ldr r0, [r6, #0]
	cmp r0, #2
	beq _02201148
	ldr r0, [r6, #0x5c8]
	cmp r0, #0
	ble _02201164
_02201148:
	ldr r1, [r6, #0x7c]
	ldr r2, [r6, #0x80]
	add r0, r6, #0xbc
	add r0, r0, #0x400
	add r1, r1, r5
	sub r2, r2, r5
	bl ov4_021FD790
_02201164:
	ldr r0, [r6, #0]
	cmp r0, #3
	bne _0220117C
	mov r0, r6
	bl ov4_0220053C
	mov r4, r0
_0220117C:
	cmp r4, #0
	movne r0, r4
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0]
	cmp r0, #2
	bne _022011AC
	ldr r0, [r6, #0x80]
	cmp r0, #0
	ble _022011AC
	mov r0, r6
	bl ov4_02200F08
	ldmia sp!, {r4, r5, r6, pc}
_022011AC:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_022010CC

	arm_func_start ov4_022011B4
ov4_022011B4: ; 0x022011B4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r1, [r5, #0]
	mov r4, r3
	cmp r1, #1
	bne _022011E8
	mov r1, #0
	mov r2, r1
	mov r3, #2
	str r1, [sp]
	bl ov4_021FFAC8
_022011E8:
	ldr r0, [r5, #0]
	cmp r0, #1
	addeq sp, sp, #0x18
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x50]
	add r6, sp, #0x44
	add r0, r0, #9
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r2, r0, asr #8
	mov r1, r0, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	strh r1, [sp, #4]
	add r2, sp, #4
	ldrb r3, [r2]
	add r0, sp, #0x48
	add r1, sp, #6
	ldrb r2, [r2, #1]
	strb r3, [r1]
	mov fp, #2
	strb r2, [r1, #1]
	ldrb sb, [r6]
	add sl, sp, #9
	ldrb r8, [r6, #1]
	ldrb r7, [r6, #2]
	ldrb r6, [r6, #3]
	ldrb ip, [r0]
	ldrb r3, [r0, #1]
	add lr, sp, #0xd
	mov r0, r5
	mov r2, #9
	strb fp, [sp, #8]
	strb sb, [sl]
	strb r8, [sl, #1]
	strb r7, [sl, #2]
	strb r6, [sl, #3]
	strb ip, [lr]
	strb r3, [lr, #1]
	bl ov4_021FFA30
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [r5, #0x4b0]
	ldr r2, [sp, #0x50]
	mov r1, r4
	mov r3, #0
	bl ov4_021EAE48
	cmp r0, #0
	movlt r0, #3
	movge r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_022011B4

	arm_func_start ov4_022012DC
ov4_022012DC: ; 0x022012DC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	ldr r5, [sp, #0x44]
	mov r7, #0xfd
	mov r4, r5, lsr #0x18
	mov r8, r5, lsl #0x18
	mov r3, r5, lsr #8
	mov r6, r5, lsl #8
	and r5, r4, #0xff
	and r4, r3, #0xff00
	orr sb, r5, r4
	and r3, r6, #0xff0000
	mov r6, #0xfc
	mov r5, #0x1e
	mov r4, #0x66
	mov lr, #0x6a
	mov fp, #0xb2
	strb r4, [sp, #7]
	and r8, r8, #0xff000000
	orr r3, r3, sb
	orr r8, r8, r3
	add r3, sp, #0x44
	str r8, [sp, #0x44]
	strb r7, [sp, #4]
	ldrb sl, [r3]
	add ip, sp, #0xa
	ldrb sb, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	add r3, sp, #4
	strb r6, [sp, #5]
	strb r5, [sp, #6]
	strb lr, [sp, #8]
	strb fp, [sp, #9]
	strb sl, [ip]
	strb sb, [ip, #1]
	strb r8, [ip, #2]
	strb r7, [ip, #3]
	mov r4, #0xa
	str r4, [sp]
	bl ov4_022011B4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_022012DC

	arm_func_start ov4_02201394
ov4_02201394: ; 0x02201394
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x5f0
	mov r1, #8
	mov sl, r0
	str r1, [sp, #8]
	ldr r0, [sl, #0x4b0]
	bl ov4_021EAB6C
	cmp r0, #0
	beq _0220145C
	ldr r6, _022014B0 ; =0x000005DB
	add sb, sp, #0xc
	add r8, sp, #8
	add r7, sp, #0x14
	mov fp, #0
	mvn r4, #0
_022013D0:
	str sb, [sp]
	str r8, [sp, #4]
	ldr r0, [sl, #0x4b0]
	mov r1, r7
	mov r2, r6
	mov r3, fp
	bl ov4_021EAE18
	cmp r0, r4
	beq _0220144C
	ldrh r2, [sp, #0xe]
	ldr r1, [sp, #0x10]
	mov r0, sl
	bl ov4_021FF1D4
	cmp r0, r4
	bne _0220144C
	ldrh r2, [sp, #0xe]
	ldr r1, [sp, #0x10]
	mov r0, sl
	bl ov4_021FE79C
	mov r5, r0
	bl ov4_021FE874
	cmp r0, #0
	addne sp, sp, #0x5f0
	movne r0, #5
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r5
	mov r1, #0x11
	bl ov4_021FE848
	mov r0, sl
	mov r1, r5
	bl ov4_021FF144
_0220144C:
	ldr r0, [sl, #0x4b0]
	bl ov4_021EAB6C
	cmp r0, #0
	bne _022013D0
_0220145C:
	bl ov4_021EA840
	ldr r1, [sl, #0x4b4]
	sub r0, r0, r1
	cmp r0, #0x7d0
	bls _022014A4
	ldr r0, [sl, #0x4b0]
	bl ov4_021EACF0
	mvn r0, #0
	str r0, [sl, #0x4b0]
	mov r0, #1
	str r0, [sl]
	ldr r0, _022014B4 ; =0x0221B754
	ldr r3, [sl, #0x494]
	ldr r2, [r0, #0]
	ldr r4, [sl, #0x488]
	mov r0, sl
	mov r1, #3
	blx r4
_022014A4:
	mov r0, #0
	add sp, sp, #0x5f0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022014B0: .word 0x000005DB
_022014B4: .word Unk_ov4_0221B754
	arm_func_end ov4_02201394

	arm_func_start ov4_022014B8
ov4_022014B8: ; 0x022014B8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021FF2E8
	ldr r0, [r4, #0]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022014FC
_022014D4: ; jump table
	b _022014F0 ; case 0
	b _022014FC ; case 1
	b _022014E4 ; case 2
	b _022014E4 ; case 3
_022014E4:
	mov r0, r4
	bl ov4_022010CC
	ldmia sp!, {r4, pc}
_022014F0:
	mov r0, r4
	bl ov4_02201394
	ldmia sp!, {r4, pc}
_022014FC:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_022014B8

	.data


	.global Unk_ov4_02219FAC
Unk_ov4_02219FAC: ; 0x02219FAC
	.incbin "incbin/overlay4_data.bin", 0x412C, 0x4130 - 0x412C

	.global Unk_ov4_02219FB0
Unk_ov4_02219FB0: ; 0x02219FB0
	.incbin "incbin/overlay4_data.bin", 0x4130, 0x4140 - 0x4130

	.global Unk_ov4_02219FC0
Unk_ov4_02219FC0: ; 0x02219FC0
	.incbin "incbin/overlay4_data.bin", 0x4140, 0x4150 - 0x4140

	.global Unk_ov4_02219FD0
Unk_ov4_02219FD0: ; 0x02219FD0
	.incbin "incbin/overlay4_data.bin", 0x4150, 0x4160 - 0x4150

	.global Unk_ov4_02219FE0
Unk_ov4_02219FE0: ; 0x02219FE0
	.incbin "incbin/overlay4_data.bin", 0x4160, 0x4174 - 0x4160

	.global Unk_ov4_02219FF4
Unk_ov4_02219FF4: ; 0x02219FF4
	.incbin "incbin/overlay4_data.bin", 0x4174, 0x4188 - 0x4174

	.global Unk_ov4_0221A008
Unk_ov4_0221A008: ; 0x0221A008
	.incbin "incbin/overlay4_data.bin", 0x4188, 0x419C - 0x4188

	.global Unk_ov4_0221A01C
Unk_ov4_0221A01C: ; 0x0221A01C
	.incbin "incbin/overlay4_data.bin", 0x419C, 0x41B8 - 0x419C

	.global Unk_ov4_0221A038
Unk_ov4_0221A038: ; 0x0221A038
	.incbin "incbin/overlay4_data.bin", 0x41B8, 0x41BC - 0x41B8

	.global Unk_ov4_0221A03C
Unk_ov4_0221A03C: ; 0x0221A03C
	.incbin "incbin/overlay4_data.bin", 0x41BC, 0x41C8 - 0x41BC

	.global Unk_ov4_0221A048
Unk_ov4_0221A048: ; 0x0221A048
	.incbin "incbin/overlay4_data.bin", 0x41C8, 0x41D8 - 0x41C8

	.global Unk_ov4_0221A058
Unk_ov4_0221A058: ; 0x0221A058
	.incbin "incbin/overlay4_data.bin", 0x41D8, 0x41E8 - 0x41D8

	.global Unk_ov4_0221A068
Unk_ov4_0221A068: ; 0x0221A068
	.incbin "incbin/overlay4_data.bin", 0x41E8, 0x41FC - 0x41E8

	.global Unk_ov4_0221A07C
Unk_ov4_0221A07C: ; 0x0221A07C
	.incbin "incbin/overlay4_data.bin", 0x41FC, 0x4218 - 0x41FC

	.global Unk_ov4_0221A098
Unk_ov4_0221A098: ; 0x0221A098
	.incbin "incbin/overlay4_data.bin", 0x4218, 0x4238 - 0x4218

	.global Unk_ov4_0221A0B8
Unk_ov4_0221A0B8: ; 0x0221A0B8
	.incbin "incbin/overlay4_data.bin", 0x4238, 0x423C - 0x4238

	.global Unk_ov4_0221A0BC
Unk_ov4_0221A0BC: ; 0x0221A0BC
	.incbin "incbin/overlay4_data.bin", 0x423C, 0x4244 - 0x423C

	.global Unk_ov4_0221A0C4
Unk_ov4_0221A0C4: ; 0x0221A0C4
	.incbin "incbin/overlay4_data.bin", 0x4244, 0x4250 - 0x4244

	.global Unk_ov4_0221A0D0
Unk_ov4_0221A0D0: ; 0x0221A0D0
	.incbin "incbin/overlay4_data.bin", 0x4250, 0x18



	.bss


	.global Unk_ov4_0221B75C
Unk_ov4_0221B75C: ; 0x0221B75C
	.space 0x4

	.global Unk_ov4_0221B760
Unk_ov4_0221B760: ; 0x0221B760
	.space 0x20

