	.include "macros/function.inc"
	.include "include/unk_020E2A98.inc"

	

	.text


	arm_func_start sub_020E2A98
sub_020E2A98: ; 0x020E2A98
	stmfd sp!, {r4, r5, r6, lr}
	subs r6, r1, #1
	mov r5, #0
	bmi _020E2AF4
	mov r1, #0xc
_020E2AAC:
	add r3, r5, r6
	mov r4, r3, asr #1
	mul r3, r4, r1
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
	subs r6, r6, #1
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
	subs r6, r6, #1
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
	bl _u32_div_f
	movs r6, r0
	beq _020E3820
	mvn sl, #0
_020E3804:
	ldr r0, [sp, #0x10]
	mov r1, sl
	sub r4, r4, r0
	mov r0, r4
	blx r5
	subs r6, r6, #1
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
_020E3850:
	.byte 0xA4, 0xD0, 0x8D, 0xE2, 0xF0, 0x8F, 0xBD, 0xE8
	arm_func_end sub_020E2FA8

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
	subs r5, r5, #1
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
	bl __throw_catch_compare
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

	arm_func_start __unexpected
__unexpected: ; 0x020E3A30
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
_020E3AC8:
	.byte 0xB8, 0x1B, 0x10, 0x02, 0xAC, 0x1B, 0x10, 0x02
	.byte 0xD0, 0x1B, 0x10, 0x02, 0xD8, 0x3A, 0x0E, 0x02
	arm_func_end __unexpected

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
	subs r7, r7, #1
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
	bl __throw_catch_compare
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

	arm_func_start sub_020E3D74
sub_020E3D74: ; 0x020E3D74
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
	arm_func_end sub_020E3D74

	arm_func_start __end__catch
__end__catch: ; 0x020E3E60
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
	arm_func_end __end__catch

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
_020E3EA4: .word Unk_02101B80
	arm_func_end sub_020E3E9C


	.section .exception, 4


	.global Unk_020E45CC
Unk_020E45CC: ; 0x020E45CC
	.incbin "incbin/arm9_exception.bin", 0x74, 0x8

	.global Unk_020E45D4
Unk_020E45D4: ; 0x020E45D4
	.incbin "incbin/arm9_exception.bin", 0x7C, 0x10

	.global Unk_020E45E4
Unk_020E45E4: ; 0x020E45E4
	.incbin "incbin/arm9_exception.bin", 0x8C, 0x8

	.global Unk_020E45EC
Unk_020E45EC: ; 0x020E45EC
	.incbin "incbin/arm9_exception.bin", 0x94, 0x14

	.global Unk_020E4600
Unk_020E4600: ; 0x020E4600
	.incbin "incbin/arm9_exception.bin", 0xA8, 0x8

	.global Unk_020E4608
Unk_020E4608: ; 0x020E4608
	.incbin "incbin/arm9_exception.bin", 0xB0, 0x8


	.data


	.global Unk_02101B74
Unk_02101B74: ; 0x02101B74
	.incbin "incbin/arm9_data.bin", 0x2E94, 0x2EA0 - 0x2E94

	.global Unk_02101B80
Unk_02101B80: ; 0x02101B80
	.incbin "incbin/arm9_data.bin", 0x2EA0, 0x2EB0 - 0x2EA0

	.global Unk_02101B90
Unk_02101B90: ; 0x02101B90
	.incbin "incbin/arm9_data.bin", 0x2EB0, 0x2EC4 - 0x2EB0

	.global Unk_02101BA4
Unk_02101BA4: ; 0x02101BA4
	.incbin "incbin/arm9_data.bin", 0x2EC4, 0x2ED8 - 0x2EC4

	.global Unk_02101BB8
Unk_02101BB8: ; 0x02101BB8
	.incbin "incbin/arm9_data.bin", 0x2ED8, 0x2EF0 - 0x2ED8

	.global Unk_02101BD0
Unk_02101BD0: ; 0x02101BD0
	.incbin "incbin/arm9_data.bin", 0x2EF0, 0x26

