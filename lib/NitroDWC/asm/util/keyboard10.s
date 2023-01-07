	.include "macros/function.inc"
	.include "include/keyboard10.inc"

	

	.extern Unk_ov18_02249734
	.text


	arm_func_start ov18_0222DADC
ov18_0222DADC: ; 0x0222DADC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r0, _0222DDFC ; =0x02249004
	mov r3, #0x1c
	ldrh r5, [r0, #0x20]
	ldrh r4, [r0, #0x22]
	mov r2, #0x14
	mov r0, #0x6c
	mov r1, #4
	strh r5, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r3, [sp, #0x20]
	strh r2, [sp, #0x22]
	bl ov18_02245068
	ldr r8, _0222DE00 ; =0x022532A0
	mov r6, #0
	mov r1, #0x1f
	str r0, [r8]
	strb r1, [r0, #0x60]
	ldr r0, [r8]
	mov r1, #1
	strb r6, [r0, #0x63]
	ldr r0, [r8]
	ldr r7, _0222DE04 ; =0xC1FFFCFF
	strb r1, [r0, #0x66]
	ldr r0, [r8]
	mov r5, r6
	strb r1, [r0, #0x67]
	ldr r0, [r8]
	mov r4, #0x36
	strb r1, [r0, #0x68]
_0222DB58:
	mov r0, r5
	mov r1, r4
	bl ov18_02243F60
	ldr r1, [r8]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0x10]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x10]
	ldr r0, [r1, #0]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1, #0]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x10]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #0xa
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _0222DB58
	mov r6, #0
	ldr r5, _0222DE08 ; =0x02248FF0
	ldr r8, _0222DE00 ; =0x022532A0
	ldr r7, _0222DE04 ; =0xC1FFFCFF
	mov r4, r6
_0222DBC8:
	ldrb r1, [r5], #1
	mov r0, r4
	bl ov18_02243F60
	ldr r1, [r8]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0x38]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x38]
	ldr r0, [r1, #0]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1, #0]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x38]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #2
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _0222DBC8
	mov sl, #0
	ldr sb, _0222DE0C ; =0x02248FF4
	ldr r4, _0222DE00 ; =0x022532A0
	mov r8, sl
	mov r7, #1
	mvn r6, #0
	mov r5, #0x200
	mov fp, sl
_0222DC44:
	ldrb r1, [sb], #1
	mov r0, r8
	mov r2, r7
	bl ov18_02243F8C
	ldr r2, [r4, #0]
	mov r1, r6
	add r2, r2, sl, lsl #2
	str r0, [r2, #0x40]
	ldr r0, [r4, #0]
	mov r2, r5
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #0x40]
	mov r3, fp
	bl ov18_02243BD0
	ldr r0, [r4, #0]
	mov r1, r6
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #0x40]
	mov r2, #3
	bl ov18_02243DE4
	add sl, sl, #1
	cmp sl, #2
	blt _0222DC44
	mov sl, #0
	str sl, [sp, #0x10]
	strh sl, [sp, #0x16]
_0222DCAC:
	add r1, sp, #0x18
	mov r0, #0
	str r1, [sp]
	mov r3, r0
	mov r1, #0xc
	mov r2, #4
	str r0, [sp, #4]
	bl ov18_02244574
	ldr fp, _0222DE00 ; =0x022532A0
	mov sb, #0
	ldr r1, [fp]
	ldr r8, [sp, #0x10]
	ldr r7, _0222DE10 ; =0x0224903C
	str r0, [r1, sl, lsl #2]
	strh sb, [sp, #0x1c]
	mov r6, #2
	mov r5, #0x480
	add r4, sp, #0x14
_0222DCF4:
	mov r0, r8, lsl #1
	ldrh r2, [r7, r0]
	ldrh r0, [sp, #0x22]
	ldrh r1, [sp, #0x1c]
	strh r2, [sp, #0x14]
	stmia sp, {r0, r6}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [fp]
	ldrh r2, [sp, #0x1e]
	ldrh r3, [sp, #0x20]
	ldr r0, [r0, sl, lsl #2]
	bl ov18_02244A9C
	ldrh r0, [sp, #0x1c]
	add sb, sb, #1
	cmp sb, #3
	add r0, r0, #0x20
	strh r0, [sp, #0x1c]
	add r8, r8, #1
	blt _0222DCF4
	mov r0, #0
	ldr r1, [sp, #0x18]
	mov r2, r0
	bl ov18_022439E0
	ldr r1, [sp, #0x10]
	ldr r2, _0222DE00 ; =0x022532A0
	add r1, r1, #3
	str r1, [sp, #0x10]
	ldr r1, [r2, #0]
	add r1, r1, sl, lsl #2
	add sl, sl, #1
	str r0, [r1, #0x48]
	cmp sl, #4
	blt _0222DCAC
	mov r0, #0
	mov r1, #0x44
	mov r2, #1
	bl ov18_02243F8C
	ldr r3, _0222DE00 ; =0x022532A0
	mvn r1, #0
	ldr r4, [r3, #0]
	mov r2, #0x200
	str r0, [r4, #0x58]
	ldr r0, [r3, #0]
	mov r3, #0
	ldr r0, [r0, #0x58]
	bl ov18_02243BD0
	ldr r0, _0222DE00 ; =0x022532A0
	mvn r1, #0
	ldr r0, [r0, #0]
	mov r2, #2
	ldr r0, [r0, #0x58]
	bl ov18_02243DE4
	mov r0, #0
	ldr r1, _0222DE14 ; =ov18_0222DEB8
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r2, _0222DE00 ; =0x022532A0
	mov r1, #0xc0
	ldr r2, [r2, #0]
	str r0, [r2, #0x5c]
	mov r0, #0
	bl ov18_0222E8D8
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222DDFC: .word Unk_ov18_02249004
_0222DE00: .word Unk_ov18_022532A0
_0222DE04: .word 0xC1FFFCFF
_0222DE08: .word Unk_ov18_02248FF0
_0222DE0C: .word Unk_ov18_02248FF4
_0222DE10: .word Unk_ov18_0224903C
_0222DE14: .word ov18_0222DEB8
	arm_func_end ov18_0222DADC

	arm_func_start ov18_0222DE18
ov18_0222DE18: ; 0x0222DE18
	stmfd sp!, {r3, lr}
	ldr r0, _0222DE44 ; =0x022532A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x58]
	bl ov18_02243B3C
	ldr r0, _0222DE44 ; =0x022532A0
	ldr r1, _0222DE48 ; =ov18_0222ED38
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x5c]
	bl ov18_022463A4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222DE44: .word Unk_ov18_022532A0
_0222DE48: .word ov18_0222ED38
	arm_func_end ov18_0222DE18

	arm_func_start ov18_0222DE4C
ov18_0222DE4C: ; 0x0222DE4C
	ldr r0, _0222DE5C ; =0x022532A0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x60]
	bx lr
	; .align 2, 0
_0222DE5C: .word Unk_ov18_022532A0
	arm_func_end ov18_0222DE4C

	arm_func_start ov18_0222DE60
ov18_0222DE60: ; 0x0222DE60
	ldr r1, _0222DE70 ; =0x022532A0
	ldr r1, [r1, #0]
	strb r0, [r1, #0x66]
	bx lr
	; .align 2, 0
_0222DE70: .word Unk_ov18_022532A0
	arm_func_end ov18_0222DE60

	arm_func_start ov18_0222DE74
ov18_0222DE74: ; 0x0222DE74
	ldr r1, _0222DE84 ; =0x022532A0
	ldr r1, [r1, #0]
	strb r0, [r1, #0x67]
	bx lr
	; .align 2, 0
_0222DE84: .word Unk_ov18_022532A0
	arm_func_end ov18_0222DE74

	arm_func_start ov18_0222DE88
ov18_0222DE88: ; 0x0222DE88
	ldr r1, _0222DE98 ; =0x022532A0
	ldr r1, [r1, #0]
	strb r0, [r1, #0x68]
	bx lr
	; .align 2, 0
_0222DE98: .word Unk_ov18_022532A0
	arm_func_end ov18_0222DE88

	arm_func_start ov18_0222DE9C
ov18_0222DE9C: ; 0x0222DE9C
	ldr r0, _0222DEB4 ; =0x022532A0
	ldr r0, [r0, #0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_0222DEB4: .word Unk_ov18_022532A0
	arm_func_end ov18_0222DE9C

	arm_func_start ov18_0222DEB8
ov18_0222DEB8: ; 0x0222DEB8
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222DF30 ; =0x022532A0
	mov r4, r0
	ldr r2, [r2, #0]
	ldr r1, _0222DF34 ; =0x01FF0000
	ldr r0, [r2, #0x10]
	ldr r0, [r0, #0]
	and r2, r0, r1
	and r0, r0, #0xff
	sub r1, r0, #0xc
	mov r0, r2, lsr #0x10
	str r0, [sp, #4]
	str r1, [sp]
	cmp r1, #0x4c
	mov r0, #0
	ble _0222DF08
	bl ov18_0222E8D8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0222DF08:
	mov r1, #0x4c
	bl ov18_0222E8D8
	mov r0, #1
	mov r1, #0xc0
	bl ov18_0222E8D8
	ldr r1, _0222DF38 ; =ov18_0222DF3C
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222DF30: .word Unk_ov18_022532A0
_0222DF34: .word 0x01FF0000
_0222DF38: .word ov18_0222DF3C
	arm_func_end ov18_0222DEB8

	arm_func_start ov18_0222DF3C
ov18_0222DF3C: ; 0x0222DF3C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222DFB4 ; =0x022532A0
	mov r4, r0
	ldr r2, [r2, #0]
	ldr r1, _0222DFB8 ; =0x01FF0000
	ldr r0, [r2, #0x1c]
	ldr r0, [r0, #0]
	and r2, r0, r1
	and r0, r0, #0xff
	sub r1, r0, #0xc
	mov r0, r2, lsr #0x10
	str r0, [sp, #4]
	str r1, [sp]
	cmp r1, #0x63
	mov r0, #1
	ble _0222DF8C
	bl ov18_0222E8D8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0222DF8C:
	mov r1, #0x63
	bl ov18_0222E8D8
	mov r0, #2
	mov r1, #0xc0
	bl ov18_0222E8D8
	ldr r1, _0222DFBC ; =ov18_0222DFC0
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222DFB4: .word Unk_ov18_022532A0
_0222DFB8: .word 0x01FF0000
_0222DFBC: .word ov18_0222DFC0
	arm_func_end ov18_0222DF3C

	arm_func_start ov18_0222DFC0
ov18_0222DFC0: ; 0x0222DFC0
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222E038 ; =0x022532A0
	mov r4, r0
	ldr r2, [r2, #0]
	ldr r1, _0222E03C ; =0x01FF0000
	ldr r0, [r2, #0x28]
	ldr r0, [r0, #0]
	and r2, r0, r1
	and r0, r0, #0xff
	sub r1, r0, #0xc
	mov r0, r2, lsr #0x10
	str r0, [sp, #4]
	str r1, [sp]
	cmp r1, #0x7a
	mov r0, #2
	ble _0222E010
	bl ov18_0222E8D8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0222E010:
	mov r1, #0x7a
	bl ov18_0222E8D8
	mov r0, #3
	mov r1, #0xc0
	bl ov18_0222E8D8
	ldr r1, _0222E040 ; =ov18_0222E044
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222E038: .word Unk_ov18_022532A0
_0222E03C: .word 0x01FF0000
_0222E040: .word ov18_0222E044
	arm_func_end ov18_0222DFC0

	arm_func_start ov18_0222E044
ov18_0222E044: ; 0x0222E044
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222E0BC ; =0x022532A0
	mov r4, r0
	ldr r2, [r2, #0]
	ldr r1, _0222E0C0 ; =0x01FF0000
	ldr r0, [r2, #0x34]
	ldr r0, [r0, #0]
	and r2, r0, r1
	and r0, r0, #0xff
	sub r1, r0, #0xc
	mov r0, r2, lsr #0x10
	str r0, [sp, #4]
	str r1, [sp]
	cmp r1, #0x91
	mov r0, #3
	ble _0222E094
	bl ov18_0222E8D8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0222E094:
	mov r1, #0x91
	bl ov18_0222E8D8
	mov r0, #4
	mov r1, #0xc0
	bl ov18_0222E8D8
	ldr r1, _0222E0C4 ; =ov18_0222E0C8
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222E0BC: .word Unk_ov18_022532A0
_0222E0C0: .word 0x01FF0000
_0222E0C4: .word ov18_0222E0C8
	arm_func_end ov18_0222E044

	arm_func_start ov18_0222E0C8
ov18_0222E0C8: ; 0x0222E0C8
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222E134 ; =0x022532A0
	mov r4, r0
	ldr r0, [r1, #0]
	add r2, sp, #4
	ldr r0, [r0, #0x40]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	sub r1, r0, #0xc
	str r1, [sp]
	cmp r1, #0xaa
	mov r0, #4
	ble _0222E114
	bl ov18_0222E8D8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0222E114:
	mov r1, #0xaa
	bl ov18_0222E8D8
	bl ov18_0222EC00
	ldr r1, _0222E138 ; =ov18_0222E13C
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222E134: .word Unk_ov18_022532A0
_0222E138: .word ov18_0222E13C
	arm_func_end ov18_0222E0C8

	arm_func_start ov18_0222E13C
ov18_0222E13C: ; 0x0222E13C
	stmfd sp!, {r3, lr}
	bl ov18_0222E154
	bl ov18_0222E330
	bl ov18_0222E500
	bl ov18_0222E73C
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0222E13C

	arm_func_start ov18_0222E154
ov18_0222E154: ; 0x0222E154
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _0222E310 ; =0x02249734
	bl ov18_022455B8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222E314 ; =0x022532A0
	mvn r1, #0
	ldr r0, [r0, #0]
	ldr r7, _0222E318 ; =0x02249056
	ldr r6, _0222E31C ; =0x02249004
	strb r1, [r0, #0x61]
	mov r4, #0
	add r5, sp, #0
_0222E190:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _0222E1F0
	ldr r0, _0222E314 ; =0x022532A0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x67]
	cmp r0, #0
	bne _0222E1D4
	mov r0, #9
	bl ov18_0223E994
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E1D4:
	mov r0, #0
	bl ov18_0223E994
	ldr r0, _0222E314 ; =0x022532A0
	add sp, sp, #8
	ldr r0, [r0, #0]
	strb r4, [r0, #0x61]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E1F0:
	add r4, r4, #1
	cmp r4, #0xa
	add r7, r7, #4
	blt _0222E190
	ldr r7, _0222E320 ; =0x0224902C
	ldr r6, _0222E324 ; =0x0224900C
	mov r4, #0
	add r5, sp, #0
_0222E210:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _0222E298
	cmp r4, #0
	bne _0222E24C
	ldr r0, _0222E314 ; =0x022532A0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x66]
	cmp r0, #0
	beq _0222E268
_0222E24C:
	cmp r4, #1
	bne _0222E278
	ldr r0, _0222E314 ; =0x022532A0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x68]
	cmp r0, #0
	bne _0222E278
_0222E268:
	mov r0, #9
	bl ov18_0223E994
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E278:
	mov r0, #0
	bl ov18_0223E994
	ldr r0, _0222E314 ; =0x022532A0
	add r1, r4, #0xa
	ldr r0, [r0, #0]
	add sp, sp, #8
	strb r1, [r0, #0x61]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E298:
	add r4, r4, #1
	cmp r4, #2
	add r7, r7, #4
	blt _0222E210
	ldr r6, _0222E328 ; =0x02249034
	ldr r5, _0222E32C ; =0x02249010
	mov r7, #0
	add r4, sp, #0
_0222E2B8:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_022455B8
	cmp r0, #0
	beq _0222E2F8
	mov r0, #0
	bl ov18_0223E994
	ldr r0, _0222E314 ; =0x022532A0
	add r1, r7, #0xc
	ldr r0, [r0, #0]
	add sp, sp, #8
	strb r1, [r0, #0x61]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E2F8:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #4
	blt _0222E2B8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E310: .word Unk_ov18_02249734
_0222E314: .word Unk_ov18_022532A0
_0222E318: .word Unk_ov18_02249056
_0222E31C: .word Unk_ov18_02249004
_0222E320: .word Unk_ov18_0224902C
_0222E324: .word Unk_ov18_0224900C
_0222E328: .word Unk_ov18_02249034
_0222E32C: .word Unk_ov18_02249010
	arm_func_end ov18_0222E154

	arm_func_start ov18_0222E330
ov18_0222E330: ; 0x0222E330
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _0222E4D4 ; =0x022532A0
	ldr r0, _0222E4D8 ; =0x02249734
	ldr r1, [r1, #0]
	mov r2, #0
	strb r2, [r1, #0x60]
	bl ov18_022456C8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0222E4DC ; =0x02249056
	ldr r6, _0222E4E0 ; =0x02249004
	mov r4, #0
	add r5, sp, #0
_0222E36C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222E3C4
	ldr r0, _0222E4D4 ; =0x022532A0
	ldr r2, [r0, #0]
	ldrsb r1, [r2, #0x61]
	cmp r1, r4
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0222E4E4 ; =0x022490F0
	ldrb r1, [r1, r4]
	strb r1, [r2, #0x60]
	ldr r0, [r0, #0]
	strb r4, [r0, #0x63]
	bl ov18_0222EC00
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E3C4:
	add r4, r4, #1
	cmp r4, #0xa
	add r7, r7, #4
	blt _0222E36C
	ldr r7, _0222E4E8 ; =0x0224902C
	ldr r6, _0222E4EC ; =0x0224900C
	mov r4, #0
	add r5, sp, #0
_0222E3E4:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222E440
	ldr r0, _0222E4D4 ; =0x022532A0
	add r2, r4, #0xa
	ldr r3, [r0, #0]
	ldrsb r1, [r3, #0x61]
	cmp r1, r2
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0222E4F0 ; =0x02249000
	ldrb r1, [r1, r4]
	strb r1, [r3, #0x60]
	ldr r0, [r0, #0]
	strb r2, [r0, #0x63]
	bl ov18_0222EC00
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E440:
	add r4, r4, #1
	cmp r4, #2
	add r7, r7, #4
	blt _0222E3E4
	ldr r7, _0222E4F4 ; =0x02249034
	ldr r6, _0222E4F8 ; =0x02249010
	mov r4, #0
	add r5, sp, #0
_0222E460:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222E4BC
	ldr r0, _0222E4D4 ; =0x022532A0
	add r2, r4, #0xc
	ldr r3, [r0, #0]
	ldrsb r1, [r3, #0x61]
	cmp r1, r2
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0222E4FC ; =0x02248FFC
	ldrb r1, [r1, r4]
	strb r1, [r3, #0x60]
	ldr r0, [r0, #0]
	strb r2, [r0, #0x63]
	bl ov18_0222EC00
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E4BC:
	add r4, r4, #1
	cmp r4, #2
	add r7, r7, #4
	blt _0222E460
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E4D4: .word Unk_ov18_022532A0
_0222E4D8: .word Unk_ov18_02249734
_0222E4DC: .word Unk_ov18_02249056
_0222E4E0: .word Unk_ov18_02249004
_0222E4E4: .word Unk_ov18_022490F0
_0222E4E8: .word Unk_ov18_0224902C
_0222E4EC: .word Unk_ov18_0224900C
_0222E4F0: .word Unk_ov18_02249000
_0222E4F4: .word Unk_ov18_02249034
_0222E4F8: .word Unk_ov18_02249010
_0222E4FC: .word Unk_ov18_02248FFC
	arm_func_end ov18_0222E330

	arm_func_start ov18_0222E500
ov18_0222E500: ; 0x0222E500
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _0222E6D0 ; =0x02249734
	bl ov18_02245530
	cmp r0, #0
	beq _0222E6B0
	ldr r7, _0222E6D4 ; =0x02249056
	ldr r5, _0222E6D8 ; =0x02249004
	mov r6, #0
	add r4, sp, #0
_0222E528:
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	beq _0222E568
	ldr r0, _0222E6DC ; =0x022532A0
	ldr r0, [r0, #0]
	ldrsb r0, [r0, #0x61]
	cmp r0, r6
	bne _0222E6B0
	mov r0, r6
	bl ov18_0222E6F0
	b _0222E6B8
_0222E568:
	add r6, r6, #1
	cmp r6, #0xa
	add r7, r7, #4
	blt _0222E528
	ldr r6, _0222E6E0 ; =0x0224902C
	ldr r5, _0222E6E4 ; =0x0224900C
	mov r7, #0
	add r4, sp, #0
_0222E588:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	beq _0222E640
	ldr r1, _0222E6DC ; =0x022532A0
	add r0, r7, #0xa
	ldr r1, [r1, #0]
	ldrsb r1, [r1, #0x61]
	cmp r1, r0
	bne _0222E6B0
	bl ov18_0222E6F0
	cmp r7, #0
	bne _0222E6B8
	ldr r0, _0222E6DC ; =0x022532A0
	ldr r2, [r0, #0]
	ldrb r1, [r2, #0x65]
	add r1, r1, #1
	strb r1, [r2, #0x65]
	ldr r2, [r0, #0]
	ldrb r1, [r2, #0x65]
	cmp r1, #0x28
	addlo sp, sp, #8
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r2, #0x66]
	cmp r1, #0
	bne _0222E620
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _0222E6DC ; =0x022532A0
	mvn r1, #0
	ldr r0, [r0, #0]
	add sp, sp, #8
	strb r1, [r0, #0x61]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E620:
	mov r1, #0x10
	strb r1, [r2, #0x60]
	ldr r1, [r0, #0]
	add sp, sp, #8
	ldrb r0, [r1, #0x65]
	sub r0, r0, #7
	strb r0, [r1, #0x65]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E640:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #4
	blt _0222E588
	ldr r6, _0222E6E8 ; =0x02249034
	ldr r5, _0222E6EC ; =0x02249010
	mov r7, #0
	add r4, sp, #0
_0222E660:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	beq _0222E6A0
	ldr r1, _0222E6DC ; =0x022532A0
	add r0, r7, #0xc
	ldr r1, [r1, #0]
	ldrsb r1, [r1, #0x61]
	cmp r1, r0
	bne _0222E6B0
	bl ov18_0222E6F0
	b _0222E6B8
_0222E6A0:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #4
	blt _0222E660
_0222E6B0:
	mvn r0, #0
	bl ov18_0222E6F0
_0222E6B8:
	ldr r0, _0222E6DC ; =0x022532A0
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x65]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E6D0: .word Unk_ov18_02249734
_0222E6D4: .word Unk_ov18_02249056
_0222E6D8: .word Unk_ov18_02249004
_0222E6DC: .word Unk_ov18_022532A0
_0222E6E0: .word Unk_ov18_0224902C
_0222E6E4: .word Unk_ov18_0224900C
_0222E6E8: .word Unk_ov18_02249034
_0222E6EC: .word Unk_ov18_02249010
	arm_func_end ov18_0222E500

	arm_func_start ov18_0222E6F0
ov18_0222E6F0: ; 0x0222E6F0
	stmfd sp!, {r4, lr}
	ldr r1, _0222E738 ; =0x022532A0
	mov r4, r0
	ldr r1, [r1, #0]
	ldrsb r1, [r1, #0x62]
	cmp r4, r1
	ldmeqia sp!, {r4, pc}
	mov r1, #1
	bl ov18_0222EB38
	ldr r0, _0222E738 ; =0x022532A0
	mov r1, #0
	ldr r0, [r0, #0]
	ldrsb r0, [r0, #0x62]
	bl ov18_0222EB38
	ldr r0, _0222E738 ; =0x022532A0
	ldr r0, [r0, #0]
	strb r4, [r0, #0x62]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222E738: .word Unk_ov18_022532A0
	arm_func_end ov18_0222E6F0

	arm_func_start ov18_0222E73C
ov18_0222E73C: ; 0x0222E73C
	stmfd sp!, {r3, lr}
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _0222E758
	mov r0, #0
	bl ov18_0222EC8C
_0222E758:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _0222E770
	mov r0, #1
	bl ov18_0222EC8C
_0222E770:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	beq _0222E788
	mov r0, #2
	bl ov18_0222EC8C
_0222E788:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _0222E7A0
	mov r0, #3
	bl ov18_0222EC8C
_0222E7A0:
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0222E84C
	ldr r0, _0222E8C8 ; =0x022532A0
	ldr r0, [r0, #0]
	ldrsb r2, [r0, #0x63]
	cmp r2, #0xa
	bge _0222E7EC
	ldrb r1, [r0, #0x67]
	cmp r1, #0
	beq _0222E7E0
	ldr r1, _0222E8CC ; =0x022490F0
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
	ldmia sp!, {r3, pc}
_0222E7E0:
	mov r0, #9
	bl ov18_0223E994
	ldmia sp!, {r3, pc}
_0222E7EC:
	sub r1, r2, #0xa
	cmp r1, #2
	bge _0222E83C
	cmp r1, #0
	ldreqb r1, [r0, #0x66]
	cmpeq r1, #0
	beq _0222E81C
	sub r1, r2, #0xa
	cmp r1, #1
	ldreqb r1, [r0, #0x68]
	cmpeq r1, #0
	bne _0222E828
_0222E81C:
	mov r0, #9
	bl ov18_0223E994
	ldmia sp!, {r3, pc}
_0222E828:
	ldr r1, _0222E8D0 ; =0x02249000
	sub r2, r2, #0xa
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
	ldmia sp!, {r3, pc}
_0222E83C:
	ldr r1, _0222E8D4 ; =0x02248FFC
	sub r2, r2, #0xc
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
_0222E84C:
	mov r0, #2
	bl ov18_022454B0
	cmp r0, #0
	beq _0222E8A4
	ldr r0, _0222E8C8 ; =0x022532A0
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x66]
	cmp r0, #0
	bne _0222E898
	ldrb r0, [r1, #0x69]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _0222E8C8 ; =0x022532A0
	mov r1, #1
	ldr r0, [r0, #0]
	strb r1, [r0, #0x69]
	ldmia sp!, {r3, pc}
_0222E898:
	mov r0, #0x10
	strb r0, [r1, #0x60]
	ldmia sp!, {r3, pc}
_0222E8A4:
	mov r0, #2
	bl ov18_022454F0
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _0222E8C8 ; =0x022532A0
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x69]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222E8C8: .word Unk_ov18_022532A0
_0222E8CC: .word Unk_ov18_022490F0
_0222E8D0: .word Unk_ov18_02249000
_0222E8D4: .word Unk_ov18_02248FFC
	arm_func_end ov18_0222E73C

	arm_func_start ov18_0222E8D8
ov18_0222E8D8: ; 0x0222E8D8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r2, _0222EB1C ; =0x02249004
	mov sl, r0
	ldrb r3, [r2, #0x15]
	ldrb r0, [r2, #0x16]
	ldrb r4, [r2, #0x17]
	strb r3, [sp, #0xe]
	strb r0, [sp, #0xf]
	ldrb r0, [r2, #0x18]
	mov sb, r1
	add r3, sp, #0xe
	strb r4, [sp, #0x10]
	strb r0, [sp, #0x11]
	ldrb r0, [r2, #0x19]
	add lr, sl, sl, lsl #1
	mov r4, lr
	strb r0, [sp, #0x12]
	ldrb r6, [r2, #0x1a]
	ldrb r1, [r2, #0x1b]
	ldrb r0, [r3, sl]
	mov r5, #0
	strb r6, [sp, #9]
	strb r1, [sp, #0xa]
	ldrb r6, [r2, #0x1c]
	ldrb r1, [r2, #0x1d]
	cmp r0, #0
	strb r6, [sp, #0xb]
	strb r1, [sp, #0xc]
	ldrb r0, [r2, #0x1e]
	strb r0, [sp, #0xd]
	ldrb r1, [r2, #0x10]
	ldrb r0, [r2, #0x11]
	strb r1, [sp, #4]
	strb r0, [sp, #5]
	ldrb r1, [r2, #0x12]
	ldrb r0, [r2, #0x13]
	strb r1, [sp, #6]
	strb r0, [sp, #7]
	ldrb r0, [r2, #0x14]
	strb r0, [sp, #8]
	ble _0222E9EC
	ldr r0, _0222EB20 ; =0x02249056
	ldr fp, _0222EB24 ; =0x022532A0
	ldr r7, _0222EB28 ; =0xC1FFFCFF
	ldr r8, _0222EB2C ; =0xFE00FF00
	and r6, sb, #0xff
_0222E994:
	ldr r1, [fp]
	mov r2, r4, lsl #2
	add r1, r1, r4, lsl #2
	ldr r1, [r1, #0x10]
	ldrh r2, [r0, r2]
	ldr ip, [r1]
	add r5, r5, #1
	and ip, ip, r7
	str ip, [r1]
	ldr ip, [fp]
	mov r1, r2, lsl #0x17
	add r2, ip, r4, lsl #2
	ldr r2, [r2, #0x10]
	add r4, r4, #1
	ldr ip, [r2]
	and ip, ip, r8
	orr ip, ip, r6
	orr r1, ip, r1, lsr #7
	str r1, [r2, #0]
	ldrb r1, [r3, sl]
	cmp r5, r1
	blt _0222E994
_0222E9EC:
	cmp sl, #4
	bge _0222EA24
	ldr r0, _0222EB24 ; =0x022532A0
	ldr r1, _0222EB20 ; =0x02249056
	ldr r3, [r0, #0]
	mov r0, lr, lsl #2
	mov r2, #2
	str r2, [sp]
	add r2, r3, sl, lsl #2
	ldrh r1, [r1, r0]
	ldr r0, [r3, sl, lsl #2]
	ldr r3, [r2, #0x48]
	mov r2, sb
	bl ov18_02244B70
_0222EA24:
	add r3, sp, #9
	ldrb r0, [r3, sl]
	mov r5, #0
	cmp r0, #0
	ble _0222EAA0
	ldr r0, _0222EB30 ; =0x0224902C
	ldr r8, _0222EB24 ; =0x022532A0
	ldr r6, _0222EB28 ; =0xC1FFFCFF
	ldr r7, _0222EB2C ; =0xFE00FF00
	and r4, sb, #0xff
_0222EA4C:
	ldr r1, [r8]
	mov r2, r5, lsl #2
	add r1, r1, r5, lsl #2
	ldr fp, [r1, #0x38]
	ldrh r1, [r0, r2]
	ldr r2, [fp]
	and r2, r2, r6
	str r2, [fp]
	ldr r2, [r8]
	mov r1, r1, lsl #0x17
	add r2, r2, r5, lsl #2
	ldr r2, [r2, #0x38]
	add r5, r5, #1
	ldr fp, [r2]
	and fp, fp, r7
	orr fp, fp, r4
	orr r1, fp, r1, lsr #7
	str r1, [r2, #0]
	ldrb r1, [r3, sl]
	cmp r5, r1
	blt _0222EA4C
_0222EAA0:
	add r7, sp, #4
	ldrb r0, [r7, sl]
	mov r8, #0
	cmp r0, #0
	addle sp, sp, #0x14
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, _0222EB34 ; =0x02249034
	ldr r4, _0222EB24 ; =0x022532A0
	mvn r6, #0
	mov fp, r8
_0222EAC8:
	ldr r0, [r4, #0]
	mov r1, r6
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #0x40]
	mov r2, fp
	mov r3, fp
	bl ov18_02243BD0
	ldr r0, [r4, #0]
	mov r1, r8, lsl #2
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #0x40]
	ldrh r2, [r5, r1]
	mov r1, r6
	mov r3, sb
	bl ov18_02243CF4
	ldrb r0, [r7, sl]
	add r8, r8, #1
	cmp r8, r0
	blt _0222EAC8
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222EB1C: .word Unk_ov18_02249004
_0222EB20: .word Unk_ov18_02249056
_0222EB24: .word Unk_ov18_022532A0
_0222EB28: .word 0xC1FFFCFF
_0222EB2C: .word 0xFE00FF00
_0222EB30: .word Unk_ov18_0224902C
_0222EB34: .word Unk_ov18_02249034
	arm_func_end ov18_0222E8D8

	arm_func_start ov18_0222EB38
ov18_0222EB38: ; 0x0222EB38
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmltia sp!, {r3, pc}
	cmp r0, #0xa
	bge _0222EB84
	ldr r2, _0222EBF4 ; =0x022532A0
	ldr r3, _0222EBF8 ; =0x02248FF8
	ldr r2, [r2, #0]
	ldrb r1, [r3, r1]
	add r0, r2, r0, lsl #2
	ldr r2, [r0, #0x10]
	ldr r0, [r2, #0]
	bic r0, r0, #0xc00
	str r0, [r2, #0]
	ldrh r0, [r2, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #12
	strh r0, [r2, #4]
	ldmia sp!, {r3, pc}
_0222EB84:
	sub ip, r0, #0xa
	cmp ip, #2
	bge _0222EBC8
	ldr r0, _0222EBF4 ; =0x022532A0
	ldr r2, _0222EBF8 ; =0x02248FF8
	ldr r3, [r0, #0]
	ldrb r0, [r2, r1]
	add r1, r3, ip, lsl #2
	ldr r2, [r1, #0x38]
	ldr r1, [r2, #0]
	bic r1, r1, #0xc00
	str r1, [r2, #0]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsl #12
	strh r0, [r2, #4]
	ldmia sp!, {r3, pc}
_0222EBC8:
	ldr r2, _0222EBF4 ; =0x022532A0
	ldr r3, _0222EBFC ; =0x02248FEC
	ldr r2, [r2, #0]
	sub r0, r0, #0xc
	add r0, r2, r0, lsl #2
	ldrb r3, [r3, r1]
	ldr r0, [r0, #0x40]
	mvn r1, #0
	mov r2, #0
	bl ov18_02243C74
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222EBF4: .word Unk_ov18_022532A0
_0222EBF8: .word Unk_ov18_02248FF8
_0222EBFC: .word Unk_ov18_02248FEC
	arm_func_end ov18_0222EB38

	arm_func_start ov18_0222EC00
ov18_0222EC00: ; 0x0222EC00
	stmfd sp!, {r4, lr}
	ldr r0, _0222EC80 ; =0x022532A0
	ldr r1, [r0, #0]
	ldrsb r0, [r1, #0x63]
	cmp r0, #0xb
	movle r4, #0x44
	ldr r0, [r1, #0x58]
	movgt r4, #0x45
	mov r1, #0
	bl ov18_02243BBC
	mov r2, r0
	mov r1, r4
	mov r0, #0
	bl ov18_02243ECC
	ldr r0, _0222EC80 ; =0x022532A0
	mvn r1, #0
	ldr r0, [r0, #0]
	mov r2, #2
	ldr r0, [r0, #0x58]
	bl ov18_02243DE4
	ldr r0, _0222EC80 ; =0x022532A0
	ldr r2, _0222EC84 ; =0x0224907E
	ldr r0, [r0, #0]
	ldr r3, _0222EC88 ; =0x02249080
	ldrsb ip, [r0, #0x63]
	ldr r0, [r0, #0x58]
	mvn r1, #0
	mov ip, ip, lsl #2
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	bl ov18_02243CF4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222EC80: .word Unk_ov18_022532A0
_0222EC84: .word Unk_ov18_0224907E
_0222EC88: .word 0x02249080
	arm_func_end ov18_0222EC00

	arm_func_start ov18_0222EC8C
ov18_0222EC8C: ; 0x0222EC8C
	stmfd sp!, {r3, lr}
	ldr r1, _0222ED30 ; =0x022532A0
	ldr r2, _0222ED34 ; =0x022490B6
	ldr r3, [r1, #0]
	ldrsb ip, [r3, #0x63]
	add r2, r2, ip, lsl #2
	ldrsb r2, [r0, r2]
	strb r2, [r3, #0x63]
	ldr r2, [r1, #0]
	ldrsb r1, [r2, #0x63]
	cmp r1, #0xd
	bne _0222ECCC
	cmp r0, #1
	cmpne r0, #3
	streqb ip, [r2, #0x64]
	beq _0222ED20
_0222ECCC:
	mvn r0, #0
	cmp r1, r0
	bne _0222ECF8
	ldrsb r0, [r2, #0x64]
	cmp r0, #1
	cmpne r0, #0xa
	moveq r0, #0xa
	streqb r0, [r2, #0x63]
	movne r0, #0xb
	strneb r0, [r2, #0x63]
	b _0222ED20
_0222ECF8:
	sub r0, r0, #1
	cmp r1, r0
	bne _0222ED20
	ldrsb r0, [r2, #0x64]
	cmp r0, #1
	cmpne r0, #0xa
	moveq r0, #1
	streqb r0, [r2, #0x63]
	movne r0, #2
	strneb r0, [r2, #0x63]
_0222ED20:
	bl ov18_0222EC00
	mov r0, #8
	bl ov18_0223E994
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222ED30: .word Unk_ov18_022532A0
_0222ED34: .word Unk_ov18_022490B6
	arm_func_end ov18_0222EC8C

	arm_func_start ov18_0222ED38
ov18_0222ED38: ; 0x0222ED38
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222EDA4 ; =0x022532A0
	mov r4, r0
	ldr r0, [r1, #0]
	mov r1, #0
	ldr r0, [r0, #0x40]
	bl ov18_02243BBC
	ldr r2, [r0, #0]
	ldr r0, _0222EDA8 ; =0x01FF0000
	and r1, r2, #0xff
	and r0, r2, r0
	mov r2, r0, lsr #0x10
	add r1, r1, #0xc
	str r1, [sp]
	mov r0, #4
	str r2, [sp, #4]
	bl ov18_0222E8D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r1, _0222EDAC ; =ov18_0222EDB0
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222EDA4: .word Unk_ov18_022532A0
_0222EDA8: .word 0x01FF0000
_0222EDAC: .word ov18_0222EDB0
	arm_func_end ov18_0222ED38

	arm_func_start ov18_0222EDB0
ov18_0222EDB0: ; 0x0222EDB0
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222EE14 ; =0x022532A0
	mov r4, r0
	ldr r0, [r1, #0]
	ldr r1, _0222EE18 ; =0x01FF0000
	ldr r2, [r0, #0x34]
	mov r0, #3
	ldr r3, [r2, #0]
	and r2, r3, #0xff
	and r3, r3, r1
	add r1, r2, #0xc
	mov r2, r3, lsr #0x10
	str r1, [sp]
	str r2, [sp, #4]
	bl ov18_0222E8D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r1, _0222EE1C ; =ov18_0222EE20
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222EE14: .word Unk_ov18_022532A0
_0222EE18: .word 0x01FF0000
_0222EE1C: .word ov18_0222EE20
	arm_func_end ov18_0222EDB0

	arm_func_start ov18_0222EE20
ov18_0222EE20: ; 0x0222EE20
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222EE84 ; =0x022532A0
	mov r4, r0
	ldr r0, [r1, #0]
	ldr r1, _0222EE88 ; =0x01FF0000
	ldr r2, [r0, #0x28]
	mov r0, #2
	ldr r3, [r2, #0]
	and r2, r3, #0xff
	and r3, r3, r1
	add r1, r2, #0xc
	mov r2, r3, lsr #0x10
	str r1, [sp]
	str r2, [sp, #4]
	bl ov18_0222E8D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r1, _0222EE8C ; =ov18_0222EE90
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222EE84: .word Unk_ov18_022532A0
_0222EE88: .word 0x01FF0000
_0222EE8C: .word ov18_0222EE90
	arm_func_end ov18_0222EE20

	arm_func_start ov18_0222EE90
ov18_0222EE90: ; 0x0222EE90
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222EEF4 ; =0x022532A0
	mov r4, r0
	ldr r0, [r1, #0]
	ldr r1, _0222EEF8 ; =0x01FF0000
	ldr r2, [r0, #0x1c]
	mov r0, #1
	ldr r3, [r2, #0]
	and r2, r3, #0xff
	and r3, r3, r1
	add r1, r2, #0xc
	mov r2, r3, lsr #0x10
	str r1, [sp]
	str r2, [sp, #4]
	bl ov18_0222E8D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r1, _0222EEFC ; =ov18_0222EF00
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222EEF4: .word Unk_ov18_022532A0
_0222EEF8: .word 0x01FF0000
_0222EEFC: .word ov18_0222EF00
	arm_func_end ov18_0222EE90

	arm_func_start ov18_0222EF00
ov18_0222EF00: ; 0x0222EF00
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222EF64 ; =0x022532A0
	mov r4, r0
	ldr r0, [r1, #0]
	ldr r1, _0222EF68 ; =0x01FF0000
	ldr r2, [r0, #0x10]
	mov r0, #0
	ldr r3, [r2, #0]
	and r2, r3, #0xff
	and r3, r3, r1
	add r1, r2, #0xc
	mov r2, r3, lsr #0x10
	str r1, [sp]
	str r2, [sp, #4]
	bl ov18_0222E8D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r1, _0222EF6C ; =ov18_0222EF70
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222EF64: .word Unk_ov18_022532A0
_0222EF68: .word 0x01FF0000
_0222EF6C: .word ov18_0222EF70
	arm_func_end ov18_0222EF00

	arm_func_start ov18_0222EF70
ov18_0222EF70: ; 0x0222EF70
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, r0
	mov r0, #0
	bl ov18_022463AC
	ldr r4, _0222F028 ; =0x022532A0
	mov r5, #0
_0222EF88:
	ldr r0, [r4, #0]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x48]
	bl ov18_02243B3C
	ldr r0, [r4, #0]
	ldr r0, [r0, r5, lsl #2]
	bl ov18_02244650
	add r5, r5, #1
	cmp r5, #4
	blt _0222EF88
	ldr r4, _0222F028 ; =0x022532A0
	mov r5, #0
_0222EFB8:
	ldr r0, [r4, #0]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x40]
	bl ov18_02243B3C
	add r5, r5, #1
	cmp r5, #2
	blt _0222EFB8
	ldr r4, _0222F028 ; =0x022532A0
	mov r5, #0
_0222EFDC:
	ldr r0, [r4, #0]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x38]
	bl ov18_02245B74
	add r5, r5, #1
	cmp r5, #2
	blt _0222EFDC
	ldr r4, _0222F028 ; =0x022532A0
	mov r5, #0
_0222F000:
	ldr r0, [r4, #0]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02245B74
	add r5, r5, #1
	cmp r5, #0xa
	blt _0222F000
	ldr r0, _0222F02C ; =0x022532A0
	bl ov18_0224508C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222F028: .word Unk_ov18_022532A0
_0222F02C: .word Unk_ov18_022532A0
	arm_func_end ov18_0222EF70

	.rodata


	.global Unk_ov18_02248FEC
Unk_ov18_02248FEC: ; 0x02248FEC
	.incbin "incbin/overlay18_rodata.bin", 0x2BB8, 0x2BBC - 0x2BB8

	.global Unk_ov18_02248FF0
Unk_ov18_02248FF0: ; 0x02248FF0
	.incbin "incbin/overlay18_rodata.bin", 0x2BBC, 0x2BC0 - 0x2BBC

	.global Unk_ov18_02248FF4
Unk_ov18_02248FF4: ; 0x02248FF4
	.incbin "incbin/overlay18_rodata.bin", 0x2BC0, 0x2BC4 - 0x2BC0

	.global Unk_ov18_02248FF8
Unk_ov18_02248FF8: ; 0x02248FF8
	.incbin "incbin/overlay18_rodata.bin", 0x2BC4, 0x2BC8 - 0x2BC4

	.global Unk_ov18_02248FFC
Unk_ov18_02248FFC: ; 0x02248FFC
	.incbin "incbin/overlay18_rodata.bin", 0x2BC8, 0x2BCC - 0x2BC8

	.global Unk_ov18_02249000
Unk_ov18_02249000: ; 0x02249000
	.incbin "incbin/overlay18_rodata.bin", 0x2BCC, 0x2BD0 - 0x2BCC

	.global Unk_ov18_02249004
Unk_ov18_02249004: ; 0x02249004
	.incbin "incbin/overlay18_rodata.bin", 0x2BD0, 0x2BD4 - 0x2BD0

	.global Unk_ov18_02249008
Unk_ov18_02249008: ; 0x02249008
	.incbin "incbin/overlay18_rodata.bin", 0x2BD4, 0x2BD8 - 0x2BD4

	.global Unk_ov18_0224900C
Unk_ov18_0224900C: ; 0x0224900C
	.incbin "incbin/overlay18_rodata.bin", 0x2BD8, 0x2BDC - 0x2BD8

	.global Unk_ov18_02249010
Unk_ov18_02249010: ; 0x02249010
	.incbin "incbin/overlay18_rodata.bin", 0x2BDC, 0x2BE0 - 0x2BDC

	.global Unk_ov18_02249014
Unk_ov18_02249014: ; 0x02249014
	.incbin "incbin/overlay18_rodata.bin", 0x2BE0, 0x2BE5 - 0x2BE0

	.global Unk_ov18_02249019
Unk_ov18_02249019: ; 0x02249019
	.incbin "incbin/overlay18_rodata.bin", 0x2BE5, 0x2BEA - 0x2BE5

	.global Unk_ov18_0224901E
Unk_ov18_0224901E: ; 0x0224901E
	.incbin "incbin/overlay18_rodata.bin", 0x2BEA, 0x2BF0 - 0x2BEA

	.global Unk_ov18_02249024
Unk_ov18_02249024: ; 0x02249024
	.incbin "incbin/overlay18_rodata.bin", 0x2BF0, 0x2BF8 - 0x2BF0

	.global Unk_ov18_0224902C
Unk_ov18_0224902C: ; 0x0224902C
	.incbin "incbin/overlay18_rodata.bin", 0x2BF8, 0x2C00 - 0x2BF8

	.global Unk_ov18_02249034
Unk_ov18_02249034: ; 0x02249034
	.incbin "incbin/overlay18_rodata.bin", 0x2C00, 0x2C08 - 0x2C00

	.global Unk_ov18_0224903C
Unk_ov18_0224903C: ; 0x0224903C
	.incbin "incbin/overlay18_rodata.bin", 0x2C08, 0x2C22 - 0x2C08

	.global Unk_ov18_02249056
Unk_ov18_02249056: ; 0x02249056
	.incbin "incbin/overlay18_rodata.bin", 0x2C22, 0x2C4A - 0x2C22

	.global Unk_ov18_0224907E
Unk_ov18_0224907E: ; 0x0224907E
	.incbin "incbin/overlay18_rodata.bin", 0x2C4A, 0x2C82 - 0x2C4A

	.global Unk_ov18_022490B6
Unk_ov18_022490B6: ; 0x022490B6
	.incbin "incbin/overlay18_rodata.bin", 0x2C82, 0x2CBC - 0x2C82

	.global Unk_ov18_022490F0
Unk_ov18_022490F0: ; 0x022490F0
	.incbin "incbin/overlay18_rodata.bin", 0x2CBC, 0xB



	.bss


	.global Unk_ov18_022532A0
Unk_ov18_022532A0: ; 0x022532A0
	.space 0x4

