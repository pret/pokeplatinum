	.include "macros/function.inc"
	.include "include/unk_020C55E0.inc"

	

	.text


	arm_func_start sub_020C55E0
sub_020C55E0: ; 0x020C55E0
	stmfd sp!, {r4, lr}
	bl sub_020C5BE0
	ldr lr, _020C569C ; =0x021CD320
	ldr r0, _020C56A0 ; =0x021CD040
	mov r4, #0
	str lr, [r0]
	mov r0, #0x18
	mov r1, r0
	b _020C5618
_020C5604:
	add r3, r4, #1
	mul r2, r4, r1
	mla ip, r3, r0, lr
	mov r4, r3
	str ip, [lr, r2]
_020C5618:
	cmp r4, #0xff
	blt _020C5604
	ldr r0, _020C56A4 ; =0x021CE040
	mov r3, #0
	str r3, [r0, #0xac8]
	ldr r1, _020C56A8 ; =0x021CEB08
	ldr r2, _020C56A0 ; =0x021CD040
	mov r0, #1
	str r1, [r2, #0x10]
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x1c]
	str r3, [r2, #0x14]
	str r3, [r2, #0x18]
	str r0, [r2, #0x20]
	ldr r0, _020C56AC ; =0x021CD0A0
	ldr r1, _020C56B0 ; =0x021CEB80
	str r3, [r2, #4]
	str r0, [r1, #0]
	bl sub_020C5E70
	mov r0, #1
	bl sub_020C57C4
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0x1d
	ldr r1, _020C56B0 ; =0x021CEB80
	str r2, [r0, #4]
	ldr r1, [r1, #0]
	str r1, [r0, #8]
	bl sub_020C584C
	mov r0, #1
	bl sub_020C5884
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C569C: .word 0x021CD320
_020C56A0: .word 0x021CD040
_020C56A4: .word 0x021CE040
_020C56A8: .word 0x021CEB08
_020C56AC: .word 0x021CD0A0
_020C56B0: .word 0x021CEB80
	arm_func_end sub_020C55E0

	arm_func_start sub_020C56B4
sub_020C56B4: ; 0x020C56B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl sub_020C3D98
	mov r4, r0
	tst r5, #1
	beq _020C5710
	bl sub_020C5E48
	ldr r5, _020C57BC ; =0x021CD040
	ldr r1, [r5, #4]
	cmp r1, r0
	bne _020C5734
	mov r6, #0x64
_020C56E4:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, r6
	bl sub_020C3E08
	bl sub_020C3D98
	mov r4, r0
	bl sub_020C5E48
	ldr r1, [r5, #4]
	cmp r1, r0
	beq _020C56E4
	b _020C5734
_020C5710:
	bl sub_020C5E48
	ldr r1, _020C57BC ; =0x021CD040
	ldr r1, [r1, #4]
	cmp r1, r0
	bne _020C5734
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_020C5734:
	ldr r0, _020C57BC ; =0x021CD040
	ldr r2, _020C57C0 ; =0x021CD064
	ldr r3, [r0, #0x14]
	add r1, r3, #1
	ldr r5, [r2, r3, lsl #2]
	str r1, [r0, #0x14]
	cmp r1, #8
	movgt r1, #0
	strgt r1, [r0, #0x14]
	ldr r0, [r5, #0]
	mov r2, r5
	cmp r0, #0
	beq _020C5778
_020C5768:
	ldr r2, [r2, #0]
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _020C5768
_020C5778:
	ldr r0, _020C57BC ; =0x021CD040
	ldr r1, [r0, #0x10]
	cmp r1, #0
	strne r5, [r1]
	streq r5, [r0]
	ldr r1, _020C57BC ; =0x021CD040
	mov r0, r4
	str r2, [r1, #0x10]
	ldr r2, [r1, #0x1c]
	sub r2, r2, #1
	str r2, [r1, #0x1c]
	ldr r2, [r1, #4]
	add r2, r2, #1
	str r2, [r1, #4]
	bl sub_020C3DAC
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C57BC: .word 0x021CD040
_020C57C0: .word 0x021CD064
	arm_func_end sub_020C56B4

	arm_func_start sub_020C57C4
sub_020C57C4: ; 0x020C57C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C5CB0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020C5C68
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	tst r4, #1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020C5BA0
	cmp r0, #0
	ble _020C5824
	mov r4, #0
_020C5804:
	mov r0, r4
	bl sub_020C56B4
	cmp r0, #0
	bne _020C5804
	bl sub_020C5C68
	cmp r0, #0
	beq _020C582C
	ldmia sp!, {r4, pc}
_020C5824:
	mov r0, #1
	bl sub_020C5884
_020C582C:
	bl sub_020C5C40
	mov r4, #1
_020C5834:
	mov r0, r4
	bl sub_020C56B4
	bl sub_020C5C68
	cmp r0, #0
	beq _020C5834
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C57C4

	arm_func_start sub_020C584C
sub_020C584C: ; 0x020C584C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	ldr r1, _020C5880 ; =0x021CD040
	ldr r2, [r1, #0xc]
	cmp r2, #0
	streq r4, [r1, #8]
	strne r4, [r2]
	str r4, [r1, #0xc]
	mov r1, #0
	str r1, [r4, #0]
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5880: .word 0x021CD040
	arm_func_end sub_020C584C

	arm_func_start sub_020C5884
sub_020C5884: ; 0x020C5884
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl sub_020C3D98
	ldr r4, _020C5A34 ; =0x021CD040
	mov sb, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _020C58B0
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C58B0:
	ldr r1, [r4, #0x1c]
	cmp r1, #8
	blt _020C5908
	tst sl, #1
	bne _020C58D0
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C58D0:
	mov r5, #1
_020C58D4:
	mov r0, r5
	bl sub_020C56B4
	ldr r0, [r4, #0x1c]
	cmp r0, #8
	bge _020C58D4
	ldr r0, _020C5A34 ; =0x021CD040
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020C5908
	mov r0, sb
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C5908:
	ldr r0, _020C5A38 ; =0x021CD320
	mov r1, #0x1800
	bl sub_020C2C54
	ldr r1, _020C5A34 ; =0x021CD040
	mov r0, #7
	ldr r1, [r1, #8]
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	bge _020C59C8
	tst sl, #1
	bne _020C5948
	mov r0, sb
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C5948:
	mov fp, #0
	mov r5, #7
	mov r8, fp
	ldr r7, _020C5A38 ; =0x021CD320
	mov r6, #0x1800
	ldr r4, _020C5A34 ; =0x021CD040
	b _020C59A4
_020C5964:
	mov r0, sb
	bl sub_020C3DAC
	mov r0, r8
	bl sub_020C56B4
	bl sub_020C3D98
	mov sb, r0
	mov r0, r7
	mov r1, r6
	bl sub_020C2C54
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _020C59A4
	mov r0, sb
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C59A4:
	ldr r0, [r4, #0x1c]
	cmp r0, #8
	bge _020C5964
	ldr r1, [r4, #8]
	mov r0, r5
	mov r2, fp
	bl sub_020C64CC
	cmp r0, #0
	blt _020C5964
_020C59C8:
	ldr r0, _020C5A34 ; =0x021CD040
	ldr r2, _020C5A3C ; =0x021CD064
	ldr r3, [r0, #0x18]
	ldr r4, [r0, #8]
	add r1, r3, #1
	str r4, [r2, r3, lsl #2]
	str r1, [r0, #0x18]
	cmp r1, #8
	movgt r1, #0
	strgt r1, [r0, #0x18]
	ldr r1, _020C5A34 ; =0x021CD040
	mov r0, #0
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	ldr r2, [r1, #0x1c]
	mov r0, sb
	add r2, r2, #1
	str r2, [r1, #0x1c]
	ldr r2, [r1, #0x20]
	add r2, r2, #1
	str r2, [r1, #0x20]
	bl sub_020C3DAC
	tst sl, #2
	beq _020C5A2C
	bl sub_020C5C40
_020C5A2C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020C5A34: .word 0x021CD040
_020C5A38: .word 0x021CD320
_020C5A3C: .word 0x021CD064
	arm_func_end sub_020C5884

	arm_func_start sub_020C5A40
sub_020C5A40: ; 0x020C5A40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C5AD8
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r4, #0
_020C5A58:
	mov r0, r4
	bl sub_020C56B4
	cmp r0, #0
	bne _020C5A58
	mov r0, r5
	bl sub_020C5AD8
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl sub_020C5C40
	mov r0, r5
	bl sub_020C5AD8
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r4, #1
_020C5A90:
	mov r0, r4
	bl sub_020C56B4
	mov r0, r5
	bl sub_020C5AD8
	cmp r0, #0
	beq _020C5A90
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C5A40

	arm_func_start sub_020C5AAC
sub_020C5AAC: ; 0x020C5AAC
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020C5AD4 ; =0x021CD040
	ldr r2, [r1, #8]
	cmp r2, #0
	ldreq r4, [r1, #4]
	ldrne r4, [r1, #0x20]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5AD4: .word 0x021CD040
	arm_func_end sub_020C5AAC

	arm_func_start sub_020C5AD8
sub_020C5AD8: ; 0x020C5AD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	ldr r1, _020C5B24 ; =0x021CD040
	ldr r1, [r1, #4]
	cmp r4, r1
	bls _020C5B08
	sub r1, r4, r1
	cmp r1, #-0x80000000
	movlo r4, #0
	movhs r4, #1
	b _020C5B18
_020C5B08:
	sub r1, r1, r4
	cmp r1, #-0x80000000
	movlo r4, #1
	movhs r4, #0
_020C5B18:
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5B24: .word 0x021CD040
	arm_func_end sub_020C5AD8

	arm_func_start sub_020C5B28
sub_020C5B28: ; 0x020C5B28
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020C5B60 ; =0x021CD040
	mov r4, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _020C5B54
_020C5B44:
	ldr r1, [r1, #0]
	add r4, r4, #1
	cmp r1, #0
	bne _020C5B44
_020C5B54:
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5B60: .word 0x021CD040
	arm_func_end sub_020C5B28

	arm_func_start sub_020C5B64
sub_020C5B64: ; 0x020C5B64
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020C5B9C ; =0x021CD040
	mov r4, #0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _020C5B90
_020C5B80:
	ldr r1, [r1, #0]
	add r4, r4, #1
	cmp r1, #0
	bne _020C5B80
_020C5B90:
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5B9C: .word 0x021CD040
	arm_func_end sub_020C5B64

	arm_func_start sub_020C5BA0
sub_020C5BA0: ; 0x020C5BA0
	stmfd sp!, {r4, lr}
	bl sub_020C5B28
	mov r4, r0
	bl sub_020C5B64
	rsb r1, r4, #0x100
	sub r0, r1, r0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C5BA0

	arm_func_start sub_020C5BBC
sub_020C5BBC: ; 0x020C5BBC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl sub_020C3D98
	mov r4, r0
	mov r0, r5
	bl sub_020C5D70
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C5BBC

	arm_func_start sub_020C5BE0
sub_020C5BE0: ; 0x020C5BE0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020C5C3C ; =sub_020C5BBC
	mov r0, #7
	bl sub_020C645C
	bl sub_020C5CB0
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #7
	mov r1, #1
	bl sub_020C64A8
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r6, #0x64
	mov r5, #7
	mov r4, #1
_020C5C1C:
	mov r0, r6
	bl sub_020C3E08
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020C5C1C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C5C3C: .word sub_020C5BBC
	arm_func_end sub_020C5BE0

	arm_func_start sub_020C5C40
sub_020C5C40: ; 0x020C5C40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #7
	mov r4, #0
_020C5C4C:
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl sub_020C64CC
	cmp r0, #0
	blt _020C5C4C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C5C40

	arm_func_start sub_020C5C68
sub_020C5C68: ; 0x020C5C68
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020C5CAC ; =0x021CD040
	ldr r4, [r1, #0]
	cmp r4, #0
	bne _020C5C8C
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, pc}
_020C5C8C:
	ldr r2, [r4, #0]
	str r2, [r1, #0]
	cmp r2, #0
	moveq r2, #0
	streq r2, [r1, #0x10]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5CAC: .word 0x021CD040
	arm_func_end sub_020C5C68

	arm_func_start sub_020C5CB0
sub_020C5CB0: ; 0x020C5CB0
	stmfd sp!, {r4, lr}
	bl sub_020C2728
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	bl sub_020C3D98
	ldr r1, _020C5CEC ; =0x04FFF200
	mov r2, #0x10
	str r2, [r1, #0]
	ldr r4, [r1, #0]
	bl sub_020C3DAC
	cmp r4, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5CEC: .word 0x04FFF200
	arm_func_end sub_020C5CB0

	.bss


	.global Unk_021CD040
Unk_021CD040: ; 0x021CD040
	.space 0x4

	.global Unk_021CD044
Unk_021CD044: ; 0x021CD044
	.space 0x4

	.global Unk_021CD048
Unk_021CD048: ; 0x021CD048
	.space 0x4

	.global Unk_021CD04C
Unk_021CD04C: ; 0x021CD04C
	.space 0x4

	.global Unk_021CD050
Unk_021CD050: ; 0x021CD050
	.space 0x4

	.global Unk_021CD054
Unk_021CD054: ; 0x021CD054
	.space 0x4

	.global Unk_021CD058
Unk_021CD058: ; 0x021CD058
	.space 0x4

	.global Unk_021CD05C
Unk_021CD05C: ; 0x021CD05C
	.space 0x4

	.global Unk_021CD060
Unk_021CD060: ; 0x021CD060
	.space 0x4

	.global Unk_021CD064
Unk_021CD064: ; 0x021CD064
	.space 0x3C

	.global Unk_021CD0A0
Unk_021CD0A0: ; 0x021CD0A0
	.space 0x280

	.global Unk_021CD320
Unk_021CD320: ; 0x021CD320
	.space 0x1800

