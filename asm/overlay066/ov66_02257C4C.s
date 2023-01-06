	.include "macros/function.inc"
	.include "overlay066/ov66_02257C4C.inc"

	

	.text


	arm_func_start ov66_02257C4C
ov66_02257C4C: ; 0x02257C4C
	ldr r1, _02257C80 ; =0xAAAAAAAB
	mov r3, #3
	umull r1, r2, r0, r1
	mov r2, r2, lsr #1
	umull r1, r2, r3, r2
	subs r2, r0, r1
	ldr r1, _02257C80 ; =0xAAAAAAAB
	movne r3, #1
	umull r1, r2, r0, r1
	moveq r3, #0
	add r0, r3, r2, lsr #1
	mov r0, r0, lsl #2
	bx lr
	; .align 2, 0
_02257C80: .word 0xAAAAAAAB
	arm_func_end ov66_02257C4C

	arm_func_start ov66_02257C84
ov66_02257C84: ; 0x02257C84
	ldr r1, _02257C94 ; =0x0225C6F8
	orr r0, r0, r0, lsl #16
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_02257C94: .word Unk_ov66_0225C6F8
	arm_func_end ov66_02257C84

	arm_func_start ov66_02257C98
ov66_02257C98: ; 0x02257C98
	stmfd sp!, {r3, lr}
	ldr r1, _02257CD0 ; =0x0225B52C
	ldr r0, _02257CD4 ; =0x0225C6F8
	ldr r3, [r1, #0x48]
	ldr r2, [r1, #0x44]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x4c]
	mla r0, r2, r0, r3
	bl _u32_div_f
	ldr r0, _02257CD4 ; =0x0225C6F8
	mov r2, r1, asr #0x10
	str r1, [r0, #0]
	and r0, r2, #0xff
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02257CD0: .word 0x0225B52C
_02257CD4: .word Unk_ov66_0225C6F8
	arm_func_end ov66_02257C98

	arm_func_start ov66_02257CD8
ov66_02257CD8: ; 0x02257CD8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _02257DC8 ; =0x0225B52C
	mov ip, #0
	str ip, [r4, #0xc]
	ldr r4, [sp, #0x18]
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl strlen
	cmp r0, #0x20
	movhs r0, #0
	ldmhsia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl strlen
	cmp r0, #0x14
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	sub r0, r6, #5
	tst r0, #7
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	tst r5, #1
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r2, #0
	mov r1, r2
_02257D44:
	mov r0, r4, lsr r1
	and r0, r0, #1
	cmp r0, #1
	add r1, r1, #1
	addeq r2, r2, #1
	cmp r1, #0x20
	blt _02257D44
	cmp r2, #1
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _02257DCC ; =0x0225B53C
	mov r1, r8
	mov r2, #0x20
	bl strncpy
	ldr r3, _02257DD0 ; =0x0225B55C
	mov r2, #0xa
_02257D84:
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	add r7, r7, #2
	subs r2, r2, #1
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	bne _02257D84
	ldr r1, _02257DC8 ; =0x0225B52C
	ldr r0, [sp, #0x1c]
	str r6, [r1, #0x44]
	str r5, [r1, #0x48]
	str r4, [r1, #0x4c]
	str r0, [r1, #0x50]
	mov r0, #1
	str r0, [r1, #0xc]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02257DC8: .word 0x0225B52C
_02257DCC: .word 0x0225B53C
_02257DD0: .word 0x0225B55C
	arm_func_end ov66_02257CD8

	arm_func_start ov66_02257DD4
ov66_02257DD4: ; 0x02257DD4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x50
	ldr r4, _02257F78 ; =0x02258CE4
	add r3, sp, #0
	mov r6, r0
	mov r5, r1
	mov r2, #8
_02257DF0:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _02257DF0
	ldrb r0, [r4]
	cmp r5, #0x28
	addle sp, sp, #0x50
	strb r0, [r3]
	movle r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	sub r4, r5, #0x28
	mov r0, r4
	bl ov66_02257C4C
	add r1, r0, #0x29
	mov r0, #7
	bl DWC_Alloc
	movs r7, r0
	addeq sp, sp, #0x50
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _02257F7C ; =0x0225B55C
	mov r3, r7
	mov r2, #0xa
_02257E5C:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	bne _02257E5C
	mov r0, r6
	mov r2, r4
	add r1, r7, #0x14
	mov r3, #2
	bl B64Encode
	mov r0, r4
	bl ov66_02257C4C
	add r1, r7, #0x14
	ldr r3, _02257F7C ; =0x0225B55C
	add r8, r1, r0
	mov r2, #0xa
_02257EA8:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	strb r1, [r8]
	strb r0, [r8, #1]
	add r8, r8, #2
	bne _02257EA8
	mov r0, r4
	bl ov66_02257C4C
	mov r2, r0
	add r0, sp, #0x11
	mov r1, r7
	add r2, r2, #0x28
	bl MATH_CalcSHA1
	mov r1, r7
	mov r0, #7
	mov r2, #0
	bl DWC_Free
	mov r2, #0
	add r3, sp, #0x11
	mov r7, r2
	add r1, sp, #0x25
	add r8, sp, #0
_02257F08:
	ldrb ip, [r3], #1
	add r2, r2, #1
	add r0, r1, r7
	mov lr, ip, asr #4
	and ip, ip, #0xf
	ldrsb lr, [r8, lr]
	ldrsb ip, [r8, ip]
	cmp r2, #0x14
	strb lr, [r1, r7]
	strb ip, [r0, #1]
	add r7, r7, #2
	blt _02257F08
	sub r0, r5, #0x28
	mov r3, #0
	add r0, r6, r0
	mov r2, #0x28
	strb r3, [sp, #0x4d]
	bl strncmp
	cmp r0, #0
	addne sp, sp, #0x50
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _02257F80 ; =0x0225B52C
	mov r0, #1
	str r6, [r1, #0x68]
	str r4, [r1, #0x6c]
	add sp, sp, #0x50
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02257F78: .word Unk_ov66_02258CE4
_02257F7C: .word 0x0225B55C
_02257F80: .word 0x0225B52C
	arm_func_end ov66_02257DD4

	arm_func_start ov66_02257F84
ov66_02257F84: ; 0x02257F84
	bx lr
	arm_func_end ov66_02257F84

	arm_func_start ov66_02257F88
ov66_02257F88: ; 0x02257F88
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	ldr r3, _022581D8 ; =0x0225B52C
	mvn r4, #0
	str r4, [r3, #8]
	ldr ip, [r3]
	mov r5, r0
	cmp ip, #1
	mov r4, r1
	addeq sp, sp, #0x48
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r2, #0
	bne _022581CC
	cmp ip, #5
	beq _02257FD4
	cmp ip, #7
	beq _022580FC
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
_02257FD4:
	cmp r4, #0x20
	bne _022580E8
	ldr r0, [r3, #0x58]
	ldr r3, _022581DC ; =0x02258CF5
	add lr, sp, #0
	add r4, r0, #0x14
	mov r2, #8
_02257FF0:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [lr]
	strb r0, [lr, #1]
	add lr, lr, #2
	subs r2, r2, #1
	bne _02257FF0
	ldrb r0, [r3]
	ldr r3, _022581E0 ; =0x0225B55C
	add ip, sp, #0x11
	strb r0, [lr]
	mov r2, #0xa
_02258024:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [ip]
	strb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	bne _02258024
	add r0, sp, #0x25
	mov r1, r5
	mov r2, #0x20
	bl memcpy
	add r1, sp, #0x11
	mov r0, r4
	mov r2, #0x34
	bl MATH_CalcSHA1
	mov r0, #0
	ldr r2, _022581D8 ; =0x0225B52C
	mov r1, r0
	add lr, sp, #0
_02258074:
	ldrb ip, [r4, r0]
	ldr r3, [r2, #0x58]
	mov ip, ip, asr #4
	ldrsb ip, [lr, ip]
	strb ip, [r3, r1]
	ldrb ip, [r4, r0]
	ldr r3, [r2, #0x58]
	add r0, r0, #1
	and ip, ip, #0xf
	ldrsb ip, [lr, ip]
	add r3, r3, r1
	cmp r0, #0x14
	strb ip, [r3, #1]
	add r1, r1, #2
	blt _02258074
	ldr r0, _022581E4 ; =0x0225B5CC
	bl strlen
	ldr r1, _022581D8 ; =0x0225B52C
	mov r4, #0x26
	ldr r3, [r1, #0x58]
	mov r2, #0x29
	strb r4, [r3, -r0]
	ldr r1, [r1, #0x58]
	ldr r0, _022581E8 ; =0x0225B5A0
	bl strncpy
	ldr r0, _022581D8 ; =0x0225B52C
	mov r1, #6
	str r1, [r0, #0]
	b _022580EC
_022580E8:
	bl ov66_022584B8
_022580EC:
	mov r0, r5
	bl ov4_021D78B0
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
_022580FC:
	ldr r0, _022581EC ; =0x0225B5D4
	bl strlen
	mov r2, r0
	ldr r1, _022581EC ; =0x0225B5D4
	mov r0, r5
	bl strncmp
	cmp r0, #0
	bne _02258130
	mov r0, r5
	bl ov4_021D78B0
	bl ov66_022584B8
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
_02258130:
	ldr r0, _022581D8 ; =0x0225B52C
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _02258150
	bl ov4_021D78B0
	ldr r0, _022581D8 ; =0x0225B52C
	mov r1, #0
	str r1, [r0, #0x60]
_02258150:
	mov r0, r5
	mov r1, r4
	bl ov66_02257DD4
	cmp r0, #0
	bne _02258178
	mov r0, r5
	bl ov4_021D78B0
	bl ov66_022584B8
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
_02258178:
	ldr r0, _022581D8 ; =0x0225B52C
	ldr r2, [r0, #0x70]
	cmp r2, #0
	beq _022581B0
	mov r0, r5
	mov r1, r4
	blx r2
	cmp r0, #0
	bne _022581B0
	mov r0, r5
	bl ov4_021D78B0
	bl ov66_022584B8
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
_022581B0:
	ldr r0, _022581D8 ; =0x0225B52C
	mov r1, #8
	str r5, [r0, #0x60]
	str r4, [r0, #0x64]
	str r1, [r0, #0]
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
_022581CC:
	bl ov66_022584B8
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022581D8: .word 0x0225B52C
_022581DC: .word 0x02258CF5
_022581E0: .word 0x0225B55C
_022581E4: .word 0x0225B5CC
_022581E8: .word 0x0225B5A0
_022581EC: .word 0x0225B5D4
	arm_func_end ov66_02257F88

	arm_func_start ov66_022581F0
ov66_022581F0: ; 0x022581F0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r4, [sp, #0x20]
	mov sb, r2
	add r7, r4, sb
	mov r4, r0
	mov sl, r1
	add r1, r7, #4
	mov r0, #7
	mov r8, r3
	mov r6, #0
	bl DWC_Alloc
	movs r5, r0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp sb, #0
	mov r2, r6
	ble _0225824C
_02258234:
	ldrb r1, [sl, r2]
	add r0, r5, r2
	add r2, r2, #1
	strb r1, [r0, #4]
	cmp r2, sb
	blt _02258234
_0225824C:
	ldr r3, [sp, #0x20]
	mov sl, #0
	cmp r3, #0
	ble _02258278
	add r2, r5, sb
_02258260:
	ldrb r1, [r8, sl]
	add r0, r2, sl
	add sl, sl, #1
	strb r1, [r0, #4]
	cmp sl, r3
	blt _02258260
_02258278:
	cmp r7, #0
	mov r1, #0
	ble _0225829C
_02258284:
	add r0, r5, r1
	ldrb r0, [r0, #4]
	add r1, r1, #1
	cmp r1, r7
	add r6, r6, r0
	blt _02258284
_0225829C:
	mov r0, r6
	bl ov66_02257C84
	cmp r7, #0
	mov r8, #0
	ble _022582D0
_022582B0:
	bl ov66_02257C98
	add r2, r5, r8
	ldrb r1, [r2, #4]
	add r8, r8, #1
	cmp r8, r7
	eor r0, r1, r0
	strb r0, [r2, #4]
	blt _022582B0
_022582D0:
	ldr r1, _02258334 ; =0x0225B52C
	mov r0, r5
	ldr r2, [r1, #0x50]
	mov r1, r4
	eor r6, r6, r2
	mov r2, r6, lsr #0x18
	strb r2, [r5]
	mov r2, r6, lsr #0x10
	strb r2, [r5, #1]
	mov r2, r6, lsr #8
	strb r2, [r5, #2]
	add r2, r7, #4
	mov r3, #2
	strb r6, [r5, #3]
	bl B64Encode
	mov r1, r5
	mov r0, #7
	mov r2, #0
	bl DWC_Free
	add r0, r7, #4
	bl ov66_02257C4C
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, r1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02258334: .word 0x0225B52C
	arm_func_end ov66_022581F0

	arm_func_start ov66_02258338
ov66_02258338: ; 0x02258338
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r5, #0
	add r4, sp, #8
	ldr r2, _022584A4 ; =0x0225B52C
	sub r3, r5, #1
	strb r5, [r4]
	strb r5, [r4, #1]
	strb r5, [r4, #2]
	strb r5, [r4, #3]
	strb r5, [r4, #4]
	strb r5, [r4, #5]
	strb r5, [r4, #6]
	strb r5, [r4, #7]
	strb r5, [r4, #8]
	str r3, [r2, #8]
	str r5, [r2, #0x54]
	str r5, [r2, #0x58]
	str r5, [r2, #0x5c]
	str r5, [r2, #0x60]
	mov r4, r1
	str r5, [r2, #0x64]
	cmp r0, #0
	beq _022583B4
	cmp r0, #1
	beq _022583C4
	cmp r0, #2
	ldreq r1, _022584A8 ; =0x0225B628
	ldreq r0, _022584AC ; =0x0225B528
	streq r1, [r0]
	b _022583D0
_022583B4:
	ldr r1, _022584B0 ; =0x0225B5DC
	ldr r0, _022584AC ; =0x0225B528
	str r1, [r0, #0]
	b _022583D0
_022583C4:
	ldr r1, _022584B4 ; =0x0225B604
	ldr r0, _022584AC ; =0x0225B528
	str r1, [r0, #0]
_022583D0:
	add r0, sp, #0x11
	mov r1, r4
	mov r2, #0x14
	bl strncpy
	mov r3, #0
	add r0, sp, #8
	add r1, r4, #0x14
	mov r2, #8
	strb r3, [sp, #0x25]
	bl strncpy
	mov r1, #0
	mov r2, #0x10
	bl strtoul
	mov r7, r0
	add r0, sp, #8
	add r1, r4, #0x1c
	mov r2, #8
	bl strncpy
	mov r1, #0
	mov r2, #0x10
	bl strtoul
	mov r6, r0
	add r0, sp, #8
	add r1, r4, #0x24
	mov r2, #8
	bl strncpy
	mov r1, #0
	mov r2, #0x10
	bl strtoul
	mov r5, r0
	add r0, sp, #8
	add r1, r4, #0x2c
	mov r2, #8
	bl strncpy
	mov r1, #0
	mov r2, #0x10
	bl strtoul
	str r5, [sp]
	str r0, [sp, #4]
	mov r2, r7
	mov r3, r6
	add r0, r4, #0x34
	add r1, sp, #0x11
	bl ov66_02257CD8
	mov r0, #0
	bl DWC_InitGHTTP
	ldr r0, _022584A4 ; =0x0225B52C
	mov r2, #3
	mov r1, #1
	str r2, [r0, #0]
	str r1, [r0, #4]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022584A4: .word 0x0225B52C
_022584A8: .word 0x0225B628
_022584AC: .word Unk_ov66_0225B528
_022584B0: .word 0x0225B5DC
_022584B4: .word 0x0225B604
	arm_func_end ov66_02258338

	arm_func_start ov66_022584B8
ov66_022584B8: ; 0x022584B8
	stmfd sp!, {r3, lr}
	bl ov4_021D7708
	cmp r0, #0
	bne _022584D4
	ldr r1, _022584E4 ; =0xFFFEA048
	mov r0, #6
	bl ov4_021D7724
_022584D4:
	ldr r0, _022584E8 ; =0x0225B52C
	mov r1, #1
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022584E4: .word 0xFFFEA048
_022584E8: .word 0x0225B52C
	arm_func_end ov66_022584B8

	arm_func_start ov66_022584EC
ov66_022584EC: ; 0x022584EC
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _022585E8 ; =0x0225B52C
	ldr r1, [r0, #0]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _022585D8
_02258508: ; jump table
	b _022585D8 ; case 0
	b _0225852C ; case 1
	b _022585D8 ; case 2
	b _022585D8 ; case 3
	b _02258534 ; case 4
	b _02258574 ; case 5
	b _02258588 ; case 6
	b _022585C8 ; case 7
	b _022585D8 ; case 8
_0225852C:
	bl ov66_022584B8
	b _022585D8
_02258534:
	ldr r2, _022585EC ; =ov66_02257F88
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	ldr r0, [r0, #0x54]
	ldr r3, _022585F0 ; =ov66_02257F84
	mov r2, r1
	bl DWC_GetGHTTPDataEx
	ldr r1, _022585E8 ; =0x0225B52C
	cmp r0, #0
	str r0, [r1, #8]
	movge r0, #5
	strge r0, [r1]
	bge _022585D8
	bl ov66_022584B8
	b _022585D8
_02258574:
	bl DWC_ProcessGHTTP
	cmp r0, #0
	bne _022585D8
	bl ov66_022584B8
	b _022585D8
_02258588:
	ldr r2, _022585EC ; =ov66_02257F88
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	ldr r0, [r0, #0x54]
	ldr r3, _022585F0 ; =ov66_02257F84
	mov r2, r1
	bl DWC_GetGHTTPDataEx
	ldr r1, _022585E8 ; =0x0225B52C
	cmp r0, #0
	str r0, [r1, #8]
	movge r0, #7
	strge r0, [r1]
	bge _022585D8
	bl ov66_022584B8
	b _022585D8
_022585C8:
	bl DWC_ProcessGHTTP
	cmp r0, #0
	bne _022585D8
	bl ov66_022584B8
_022585D8:
	ldr r0, _022585E8 ; =0x0225B52C
	ldr r0, [r0, #0]
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022585E8: .word 0x0225B52C
_022585EC: .word ov66_02257F88
_022585F0: .word ov66_02257F84
	arm_func_end ov66_022584EC

	arm_func_start ov66_022585F4
ov66_022585F4: ; 0x022585F4
	stmfd sp!, {r3, lr}
	ldr r0, _02258660 ; =0x0225B52C
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _02258620
	mov r0, #7
	mov r2, #0
	bl DWC_Free
	ldr r0, _02258660 ; =0x0225B52C
	mov r1, #0
	str r1, [r0, #0x54]
_02258620:
	ldr r0, _02258660 ; =0x0225B52C
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _02258644
	bl ov4_021D78B0
	ldr r0, _02258660 ; =0x0225B52C
	mov r1, #0
	str r1, [r0, #0x64]
	str r1, [r0, #0x60]
_02258644:
	bl DWC_ShutdownGHTTP
	ldr r0, _02258660 ; =0x0225B52C
	mov r1, #2
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02258660: .word 0x0225B52C
	arm_func_end ov66_022585F4

	arm_func_start ov66_02258664
ov66_02258664: ; 0x02258664
	ldr r1, _02258678 ; =0x0225B52C
	ldr r2, [r1, #0x6c]
	str r2, [r0, #0]
	ldr r0, [r1, #0x68]
	bx lr
	; .align 2, 0
_02258678: .word 0x0225B52C
	arm_func_end ov66_02258664

	arm_func_start ov66_0225867C
ov66_0225867C: ; 0x0225867C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	ldr r4, _022588A4 ; =0x0225B52C
	mov sl, r0
	ldr r0, [r4, #0xc]
	mov sb, r1
	cmp r0, #1
	str r2, [sp, #0x10]
	mov r8, r3
	addne sp, sp, #0x34
	movne r0, #3
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _022586D0
	mov r0, #7
	mov r2, #0
	bl DWC_Free
	mov r0, r4
	mov r1, #0
	str r1, [r0, #0x54]
_022586D0:
	add r0, r8, #0xc
	bl ov66_02257C4C
	mov r7, r0
	ldr r0, _022588A8 ; =0x0225B650
	bl strlen
	mov r6, r0
	ldr r0, _022588AC ; =0x0225B5CC
	bl strlen
	mov r5, r0
	ldr r2, _022588B0 ; =0x0225B658
	add r0, sp, #0x24
	mov r1, #0x10
	mov r3, sb
	bl snprintf
	mov fp, r0
	ldr r0, _022588B4 ; =0x0225B65C
	bl strlen
	str r0, [sp, #0x14]
	mov r0, sl
	bl strlen
	str r0, [sp, #0x18]
	ldr r0, _022588B8 ; =0x0225B528
	ldr r0, [r0, #0]
	bl strlen
	mov r4, r0
	ldr r0, _022588BC ; =0x0225B53C
	bl strlen
	add r1, r4, r0
	ldr r0, [sp, #0x18]
	add r1, r0, r1
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	add r0, fp, r0
	add r0, r5, r0
	add r0, r0, #0x29
	add r0, r6, r0
	add r1, r7, r0
	mov r0, #7
	bl DWC_Alloc
	ldr r1, _022588A4 ; =0x0225B52C
	cmp r0, #0
	str r0, [r1, #0x54]
	addeq sp, sp, #0x34
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str sl, [sp]
	ldr r1, _022588C0 ; =0x0225B680
	str sb, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _022588C4 ; =0x0225B6AC
	ldr r1, _022588B8 ; =0x0225B528
	str r2, [sp, #0xc]
	ldr r2, [r1, #0]
	ldr r1, _022588C8 ; =0x0225B664
	ldr r3, _022588BC ; =0x0225B53C
	bl sprintf
	ldr r0, _022588A4 ; =0x0225B52C
	ldr r4, [r0, #0x54]
	mov r0, r4
	bl strlen
	add r2, r4, r0
	ldr r1, _022588A4 ; =0x0225B52C
	ldr r0, _022588A8 ; =0x0225B650
	str r2, [r1, #0x5c]
	bl strlen
	ldr r4, _022588A4 ; =0x0225B52C
	ldr r3, [sp, #0x10]
	ldr r5, [r4, #0x5c]
	add r1, sp, #0x1c
	sub r0, r5, r0
	sub r0, r0, #0x28
	str r0, [r4, #0x58]
	str sb, [sp, #0x1c]
	str r8, [sp, #0x20]
	str r8, [sp]
	ldr r0, [r4, #0x5c]
	mov r2, #8
	bl ov66_022581F0
	cmp r0, #2
	bne _0225883C
	mov r1, r4
	ldr r1, [r1, #0x54]
	mov r0, #7
	mov r2, #0
	bl DWC_Free
	mov r0, r4
	mov r1, #0
	str r1, [r0, #0x54]
	add sp, sp, #0x34
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0225883C:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _0225886C
	mov r0, r4
	ldr r1, _022588CC ; =0x0225B5A0
	ldr r0, [r0, #0x58]
	mov r2, #0x28
	bl memcpy
	mov r0, r4
	mov r1, #6
	str r1, [r0, #0]
	b _0225888C
_0225886C:
	ldr r0, _022588AC ; =0x0225B5CC
	bl strlen
	mov r1, r4
	ldr r3, [r1, #0x58]
	mov r4, #0
	mov r2, #4
	strb r4, [r3, -r0]
	str r2, [r1, #0]
_0225888C:
	ldr r2, [sp, #0x58]
	ldr r1, _022588A4 ; =0x0225B52C
	mov r0, #0
	str r2, [r1, #0x70]
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022588A4: .word 0x0225B52C
_022588A8: .word 0x0225B650
_022588AC: .word 0x0225B5CC
_022588B0: .word 0x0225B658
_022588B4: .word 0x0225B65C
_022588B8: .word Unk_ov66_0225B528
_022588BC: .word 0x0225B53C
_022588C0: .word 0x0225B680
_022588C4: .word 0x0225B6AC
_022588C8: .word 0x0225B664
_022588CC: .word 0x0225B5A0
	arm_func_end ov66_0225867C

	arm_func_start ov66_022588D0
ov66_022588D0: ; 0x022588D0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr lr, [sp, #0x10]
	mov ip, #0
	str lr, [sp]
	str ip, [sp, #4]
	bl ov66_0225867C
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end ov66_022588D0

	arm_func_start ov66_022588F4
ov66_022588F4: ; 0x022588F4
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr lr, [sp, #0x10]
	mov ip, #1
	str lr, [sp]
	str ip, [sp, #4]
	bl ov66_0225867C
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end ov66_022588F4

	.rodata


	.global Unk_ov66_02258CE4
Unk_ov66_02258CE4: ; 0x02258CE4
	.incbin "incbin/overlay66_rodata.bin", 0x3CC, 0x24


	.data


	.global Unk_ov66_0225B528
Unk_ov66_0225B528: ; 0x0225B528
	.incbin "incbin/overlay66_data.bin", 0x2808, 0x188


	.bss


	.global Unk_ov66_0225C6F8
Unk_ov66_0225C6F8: ; 0x0225C6F8
	.space 0x4

