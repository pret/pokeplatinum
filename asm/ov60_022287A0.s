	.include "macros/function.inc"
	.include "include/ov60_022287A0.inc"

	

	.text


	arm_func_start ov60_022287A0
ov60_022287A0: ; 0x022287A0
	ldrsb r2, [r0], #1
	mov r1, #0
	cmp r2, #0
	beq _02228800
_022287B0:
	cmp r2, #0x30
	blt _022287C0
	cmp r2, #0x39
	ble _022287E8
_022287C0:
	cmp r2, #0x41
	blt _022287D0
	cmp r2, #0x5a
	ble _022287E8
_022287D0:
	cmp r2, #0x61
	blt _022287E0
	cmp r2, #0x7a
	ble _022287E8
_022287E0:
	cmp r2, #0x20
	bne _022287F0
_022287E8:
	add r1, r1, #1
	b _022287F4
_022287F0:
	add r1, r1, #3
_022287F4:
	ldrsb r2, [r0], #1
	cmp r2, #0
	bne _022287B0
_02228800:
	mov r0, r1
	bx lr
	arm_func_end ov60_022287A0

	arm_func_start ov60_02228808
ov60_02228808: ; 0x02228808
	cmp r1, #0x20
	bne _02228820
	mov r1, #0x2b
	strb r1, [r0]
	mov r0, #1
	bx lr
_02228820:
	cmp r1, #0x30
	blt _02228830
	cmp r1, #0x39
	ble _02228850
_02228830:
	cmp r1, #0x41
	blt _02228840
	cmp r1, #0x5a
	ble _02228850
_02228840:
	cmp r1, #0x61
	blt _0222885C
	cmp r1, #0x7a
	bgt _0222885C
_02228850:
	strb r1, [r0]
	mov r0, #1
	bx lr
_0222885C:
	mov r2, r1, asr #4
	and r3, r2, #0xf
	mov r2, #0x25
	strb r2, [r0]
	cmp r3, #0xa
	addlt r2, r3, #0x30
	addge r2, r3, #0x37
	and r1, r1, #0xf
	cmp r1, #0xa
	addlt r1, r1, #0x30
	strb r2, [r0, #1]
	addge r1, r1, #0x37
	strb r1, [r0, #2]
	mov r0, #3
	bx lr
	arm_func_end ov60_02228808

	arm_func_start ov60_02228898
ov60_02228898: ; 0x02228898
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, #8
	mvngt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	bne _022288BC
	ldrsb r2, [r0]
	cmp r2, #0x37
	mvngt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
_022288BC:
	mov r5, #0
	mov r6, r5
	mov r7, r5
	cmp r1, #0
	ble _02228978
	mov lr, #1
	mov r3, lr
	mov ip, lr
	mov r4, r5
_022288E0:
	ldrsb r8, [r0, r5]
	mov r2, r4
	cmp r8, #0x41
	blt _022288F8
	cmp r8, #0x5a
	movle r2, lr
_022288F8:
	cmp r2, #0
	addne r8, r8, #0x20
	mov r2, r8, lsl #0x18
	mov r2, r2, asr #0x18
	cmp r2, #0x30
	blt _02228928
	cmp r2, #0x39
	bgt _02228928
	add r2, r2, r6, lsl #4
	mov r7, ip
	sub r6, r2, #0x30
	b _0222896C
_02228928:
	cmp r2, #0x61
	blt _02228948
	cmp r2, #0x66
	bgt _02228948
	add r2, r2, r6, lsl #4
	mov r7, r3
	sub r6, r2, #0x57
	b _0222896C
_02228948:
	cmp r7, #0
	beq _0222895C
	cmp r2, #0x20
	cmpne r2, #0
	beq _02228978
_0222895C:
	cmp r7, #0
	cmpeq r2, #0x20
	mvnne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_0222896C:
	add r5, r5, #1
	cmp r5, r1
	blt _022288E0
_02228978:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov60_02228898

	arm_func_start ov60_02228980
ov60_02228980: ; 0x02228980
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0xa
	mvngt r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
	mov lr, #0
	mov r4, lr
	mov r3, lr
	cmp r1, #0
	ble _02228A10
	mov ip, #1
	mov r2, #0xa
_022289AC:
	cmp r3, #0
	ldrsb r5, [r0, lr]
	beq _022289C4
	cmp r5, #0x20
	cmpne r5, #0
	beq _02228A10
_022289C4:
	cmp r3, #0
	cmpeq r5, #0x20
	beq _02228A04
	cmp r5, #0x30
	blt _022289E0
	cmp r5, #0x39
	ble _022289E8
_022289E0:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_022289E8:
	mla r3, r4, r2, r5
	mov r5, r4
	sub r4, r3, #0x30
	cmp r5, r4
	mov r3, ip
	mvngt r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
_02228A04:
	add lr, lr, #1
	cmp lr, r1
	blt _022289AC
_02228A10:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov60_02228980

	arm_func_start ov60_02228A18
ov60_02228A18: ; 0x02228A18
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r6, _02228AD0 ; =0x02228E00
	add r4, sp, #0
	mov sl, r0
	mov sb, r1
	ldmia r6!, {r0, r1, r2, r3}
	mov r5, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r6, #0]
	mov r7, #0
	str r0, [r4, #0]
	mov r6, r7
	mov r1, r7
	mov fp, #1
	mov r4, #0x30
_02228A60:
	ldr r8, [r5, r6, lsl #2]
	cmp sb, r8
	blo _02228A98
	mov r0, sb
	mov r1, r8
	bl sub_020E2178
	mul r2, r0, r8
	cmp sl, #0
	addne r0, r0, #0x30
	strneb r0, [sl, r7]
	mov r1, fp
	sub sb, sb, r2
	add r7, r7, #1
	b _02228AAC
_02228A98:
	cmp r1, #0
	beq _02228AAC
	cmp sl, #0
	strneb r4, [sl, r7]
	add r7, r7, #1
_02228AAC:
	add r6, r6, #1
	cmp r6, #9
	blt _02228A60
	cmp sl, #0
	addne r0, sb, #0x30
	strneb r0, [sl, r7]
	add r0, r7, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02228AD0: .word 0x02228E00
	arm_func_end ov60_02228A18

	arm_func_start ov60_02228AD4
ov60_02228AD4: ; 0x02228AD4
	stmfd sp!, {r4, r5, r6, lr}
	mov ip, #1
	mov r3, #0
	mov r2, ip
	mov lr, r3
	b _02228B04
_02228AEC:
	cmp r5, #0
	cmpne r5, #0x20
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r0, #1
	add r1, r1, #1
_02228B04:
	ldrsb r6, [r1]
	mov r4, lr
	cmp r6, #0x41
	blt _02228B1C
	cmp r6, #0x5a
	movle r4, ip
_02228B1C:
	ldrsb r5, [r0]
	cmp r4, #0
	addne r6, r6, #0x20
	mov r4, r3
	cmp r5, #0x41
	blt _02228B3C
	cmp r5, #0x5a
	movle r4, r2
_02228B3C:
	cmp r4, #0
	addne r4, r5, #0x20
	moveq r4, r5
	cmp r4, r6
	beq _02228AEC
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov60_02228AD4

	arm_func_start ov60_02228B58
ov60_02228B58: ; 0x02228B58
	stmfd sp!, {r3, lr}
	mov ip, #0
	cmp r1, #0
	mov lr, ip
	sub r1, r1, #1
	beq _02228BB8
	mov r2, #0xa
_02228B74:
	ldrsb r3, [r0]
	cmp r3, #0x20
	beq _02228BA8
	cmp r3, #0x30
	blt _02228BA8
	cmp r3, #0x39
	bgt _02228BA8
	mla r3, lr, r2, r3
	add ip, ip, #1
	cmp ip, #9
	sub lr, r3, #0x30
	mvngt r0, #0
	ldmgtia sp!, {r3, pc}
_02228BA8:
	cmp r1, #0
	add r0, r0, #1
	sub r1, r1, #1
	bne _02228B74
_02228BB8:
	cmp ip, #0
	mvneq lr, #0
	mov r0, lr
	ldmia sp!, {r3, pc}
	arm_func_end ov60_02228B58

	arm_func_start ov60_02228BC8
ov60_02228BC8: ; 0x02228BC8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, r3
	mvnlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r1, r3
	add r8, r1, #1
	cmp r8, #0
	mov r4, #0
	ble _02228C44
	ldrsb r7, [r2]
	mov lr, #1
_02228BF4:
	ldrsb r1, [r0, r4]
	cmp r7, r1
	bne _02228C38
	mov r5, lr
	cmp r3, #1
	add r6, r0, r4
	ble _02228C2C
_02228C10:
	ldrsb ip, [r6, r5]
	ldrsb r1, [r2, r5]
	cmp ip, r1
	bne _02228C2C
	add r5, r5, #1
	cmp r5, r3
	blt _02228C10
_02228C2C:
	cmp r5, r3
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02228C38:
	add r4, r4, #1
	cmp r4, r8
	blt _02228BF4
_02228C44:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov60_02228BC8

	.rodata


	.global Unk_ov60_02228E00
Unk_ov60_02228E00: ; 0x02228E00
	.incbin "incbin/overlay60_rodata.bin", 0x1B4, 0x24

