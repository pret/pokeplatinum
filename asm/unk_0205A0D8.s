	.include "macros/function.inc"
	.include "include/unk_0205A0D8.inc"

	

	.text


	thumb_func_start sub_0205A0D8
sub_0205A0D8: ; 0x0205A0D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	ldr r0, [sp, #0x24]
	mov r1, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r6, [r5, #0xc]
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	add r0, r6, #0
	bl sub_0207A274
	str r0, [r4, #0x1c]
	add r0, r6, #0
	bl sub_0208C324
	str r0, [r4, #0x2c]
	add r0, r6, #0
	bl sub_02025E44
	str r0, [r4, #4]
	ldr r0, [sp]
	str r0, [r4, #0]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldr r0, [sp, #4]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x12]
	add r0, r6, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _0205A15C ; =0x020ED514
	add r0, r4, #0
	bl sub_0208D720
	ldr r1, _0205A160 ; =0x020F410C
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	str r4, [r7, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205A15C: .word 0x020ED514
_0205A160: .word 0x020F410C
	thumb_func_end sub_0205A0D8

	thumb_func_start sub_0205A164
sub_0205A164: ; 0x0205A164
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x24]
	add r0, #0xb0
	ldr r0, [r0, #0]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0x20
	strb r1, [r0]
	ldr r0, [r5, #0x24]
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0205A1F4
	mov r1, #1
	bl sub_02026074
	add r1, r4, #0
	add r1, #0x32
	ldrb r1, [r1]
	mov r2, #0xf
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0xf
	and r0, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	mov r1, #0xf0
	bic r0, r1
	add r1, r4, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	b _0205A214
_0205A1F4:
	add r0, r4, #0
	add r0, #0x32
	ldrb r1, [r0]
	mov r0, #0xf
	bic r1, r0
	mov r0, #3
	orr r1, r0
	add r0, r4, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x32
	ldrb r1, [r0]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x30
_0205A214:
	orr r1, r0
	add r0, r4, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x64
	add r0, #0x33
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x3c
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x22
	strb r1, [r0]
	mov r2, #0
_0205A232:
	add r0, r5, r2
	add r0, #0x3d
	ldrb r1, [r0]
	add r0, r4, r2
	add r0, #0x2c
	add r2, r2, #1
	strb r1, [r0]
	cmp r2, #6
	blt _0205A232
	ldr r0, [r5, #0x24]
	ldr r1, _0205A254 ; =0x020F1E88
	add r2, r4, #0
	bl sub_0203CD84
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	nop
_0205A254: .word 0x020F1E88
	thumb_func_end sub_0205A164

	thumb_func_start sub_0205A258
sub_0205A258: ; 0x0205A258
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0205A26A
	mov r0, #0
	pop {r4, pc}
_0205A26A:
	ldr r0, [r4, #4]
	add r1, r4, #0
	add r0, #0x2c
	add r1, #0x3d
	mov r2, #6
	bl MI_CpuCopy8
	ldr r0, [r4, #4]
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _0205A28C
	cmp r0, #7
	bne _0205A292
	mov r0, #0
	str r0, [r4, #0x38]
	b _0205A296
_0205A28C:
	mov r0, #1
	str r0, [r4, #0x38]
	b _0205A296
_0205A292:
	mov r0, #2
	str r0, [r4, #0x38]
_0205A296:
	ldr r0, [r4, #4]
	add r0, #0x22
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0205A258

	thumb_func_start sub_0205A2B0
sub_0205A2B0: ; 0x0205A2B0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0205A2C2
	mov r0, #0
	pop {r4, pc}
_0205A2C2:
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0x14]
	add r0, r4, #0
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205A2B0

	thumb_func_start sub_0205A2DC
sub_0205A2DC: ; 0x0205A2DC
	push {r3, lr}
	ldr r0, [r0, #0x24]
	bl sub_020509DC
	cmp r0, #0
	beq _0205A2F6
	mov r0, #1
	bl ov5_021D1744
	bl sub_020576A0
	mov r0, #1
	pop {r3, pc}
_0205A2F6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205A2DC

	thumb_func_start sub_0205A2FC
sub_0205A2FC: ; 0x0205A2FC
	push {r3, r4, r5, lr}
	bl sub_02035E18
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _0205A31E
_0205A30A:
	add r0, r4, #0
	bl sub_02036564
	cmp r0, #0x5e
	bne _0205A318
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205A318:
	add r4, r4, #1
	cmp r4, r5
	blt _0205A30A
_0205A31E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205A2FC

	thumb_func_start sub_0205A324
sub_0205A324: ; 0x0205A324
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	ldr r1, [r4, #0x34]
	cmp r1, #0x2c
	bls _0205A33E
	b _0205AA4A
_0205A33E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205A34A: ; jump table
	.short _0205A3A4 - _0205A34A - 2 ; case 0
	.short _0205A3C6 - _0205A34A - 2 ; case 1
	.short _0205A3E0 - _0205A34A - 2 ; case 2
	.short _0205A3FA - _0205A34A - 2 ; case 3
	.short _0205A436 - _0205A34A - 2 ; case 4
	.short _0205A486 - _0205A34A - 2 ; case 5
	.short _0205AA4A - _0205A34A - 2 ; case 6
	.short _0205A474 - _0205A34A - 2 ; case 7
	.short _0205A49C - _0205A34A - 2 ; case 8
	.short _0205A4C2 - _0205A34A - 2 ; case 9
	.short _0205A4CE - _0205A34A - 2 ; case 10
	.short _0205A4FA - _0205A34A - 2 ; case 11
	.short _0205A518 - _0205A34A - 2 ; case 12
	.short _0205A52C - _0205A34A - 2 ; case 13
	.short _0205A538 - _0205A34A - 2 ; case 14
	.short _0205A55A - _0205A34A - 2 ; case 15
	.short _0205A570 - _0205A34A - 2 ; case 16
	.short _0205A59E - _0205A34A - 2 ; case 17
	.short _0205A5C4 - _0205A34A - 2 ; case 18
	.short _0205A5D6 - _0205A34A - 2 ; case 19
	.short _0205A61A - _0205A34A - 2 ; case 20
	.short _0205A5FA - _0205A34A - 2 ; case 21
	.short _0205A636 - _0205A34A - 2 ; case 22
	.short _0205A646 - _0205A34A - 2 ; case 23
	.short _0205A664 - _0205A34A - 2 ; case 24
	.short _0205A682 - _0205A34A - 2 ; case 25
	.short _0205A696 - _0205A34A - 2 ; case 26
	.short _0205A702 - _0205A34A - 2 ; case 27
	.short _0205A73A - _0205A34A - 2 ; case 28
	.short _0205A750 - _0205A34A - 2 ; case 29
	.short _0205A79A - _0205A34A - 2 ; case 30
	.short _0205A7D2 - _0205A34A - 2 ; case 31
	.short _0205A7F8 - _0205A34A - 2 ; case 32
	.short _0205A918 - _0205A34A - 2 ; case 33
	.short _0205A948 - _0205A34A - 2 ; case 34
	.short _0205A960 - _0205A34A - 2 ; case 35
	.short _0205A84C - _0205A34A - 2 ; case 36
	.short _0205A88A - _0205A34A - 2 ; case 37
	.short _0205A8A6 - _0205A34A - 2 ; case 38
	.short _0205A970 - _0205A34A - 2 ; case 39
	.short _0205AA4A - _0205A34A - 2 ; case 40
	.short _0205A994 - _0205A34A - 2 ; case 41
	.short _0205A9D6 - _0205A34A - 2 ; case 42
	.short _0205A9F8 - _0205A34A - 2 ; case 43
	.short _0205AA2A - _0205A34A - 2 ; case 44
_0205A3A4:
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x43
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _0205A46C
	mov r0, #1
	str r0, [r4, #0x34]
	bl sub_02059240
	b _0205AA4A
_0205A3C6:
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #1
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #2
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A3E0:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A46C
	mov r0, #0x5d
	bl sub_020364F0
	mov r0, #3
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A3FA:
	mov r0, #0x5d
	bl sub_02036540
	cmp r0, #0
	beq _0205A41A
	mov r0, #7
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x38]
	bl sub_02062C30
	ldr r1, [r4, #0x50]
	ldr r2, [r4, #8]
	mov r0, #1
	blx r2
	b _0205AA4A
_0205A41A:
	ldr r0, _0205A720 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0205A46C
	mov r0, #4
	str r0, [r4, #0x34]
	mov r0, #0x5c
	bl sub_020364F0
	mov r0, #5
	add r4, #0x43
	strb r0, [r4]
	b _0205AA4A
_0205A436:
	mov r0, #0x5d
	bl sub_02036540
	cmp r0, #0
	beq _0205A454
	mov r0, #7
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x38]
	bl sub_02062C30
	ldr r1, [r4, #0x50]
	ldr r2, [r4, #8]
	mov r0, #1
	blx r2
_0205A454:
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x43
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A46E
_0205A46C:
	b _0205AA4A
_0205A46E:
	mov r0, #8
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A474:
	add r0, r4, #0
	bl sub_0205AC28
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205A486:
	add r0, r4, #0
	bl sub_0205AC28
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02059514
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205A49C:
	mov r0, #0x5d
	bl sub_02036540
	cmp r0, #0
	beq _0205A4B4
	mov r0, #5
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x50]
	ldr r2, [r4, #8]
	mov r0, #1
	blx r2
	b _0205AA4A
_0205A4B4:
	ldr r1, [r4, #0x50]
	ldr r2, [r4, #8]
	mov r0, #0
	blx r2
	mov r0, #5
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A4C2:
	mov r0, #0xa
	str r0, [r4, #0x34]
	mov r0, #5
	add r4, #0x44
	strb r0, [r4]
	b _0205AA4A
_0205A4CE:
	add r1, r4, #0
	add r1, #0x44
	ldrb r1, [r1]
	cmp r1, #0
	beq _0205A4E6
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	add r4, #0x44
	sub r0, r0, #1
	strb r0, [r4]
	b _0205AA4A
_0205A4E6:
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	bl sub_02065684
	cmp r0, #0
	beq _0205A58A
	mov r0, #0xb
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A4FA:
	bl sub_02059240
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0xd
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0xc
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A518:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A58A
	mov r0, #0xd
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A52C:
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0xe
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A538:
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x43
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _0205A58A
	bl sub_02059240
	mov r0, #0xf
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A55A:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205AAA0
	add r0, r4, #0
	mov r1, #0xb
	bl sub_0205A164
	mov r0, #0x10
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A570:
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl sub_0205A258
	cmp r0, #0
	beq _0205A58A
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0205A58C
	cmp r0, #1
	beq _0205A592
	cmp r0, #2
	beq _0205A598
_0205A58A:
	b _0205AA4A
_0205A58C:
	mov r0, #0x14
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A592:
	mov r0, #0x13
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A598:
	mov r0, #0x11
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A59E:
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r3, r4, #0
	add r3, #0x3c
	ldrb r3, [r3]
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl sub_0205A0D8
	mov r0, #0x12
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A5C4:
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl sub_0205A2B0
	cmp r0, #0
	beq _0205A6A0
	mov r0, #0xf
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A5D6:
	ldr r0, [r4, #0x24]
	bl sub_020509D4
	add r0, r4, #0
	add r0, #0x88
	ldrb r0, [r0]
	cmp r0, #3
	beq _0205A5F4
	add r0, r4, #0
	mov r1, #5
	add r0, #0x43
	strb r1, [r0]
	mov r0, #0x15
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A5F4:
	mov r0, #0x1a
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A5FA:
	add r0, r4, #0
	add r0, #0x3d
	bl sub_0203898C
	add r0, r4, #0
	bl sub_0205A2DC
	cmp r0, #0
	beq _0205A6A0
	add r0, r4, #0
	mov r1, #5
	add r0, #0x43
	strb r1, [r0]
	mov r0, #0
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A61A:
	ldr r0, [r4, #0x24]
	bl sub_020509D4
	add r0, r4, #0
	add r0, #0x88
	ldrb r0, [r0]
	cmp r0, #3
	beq _0205A630
	mov r0, #0x16
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A630:
	mov r0, #0x1a
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A636:
	add r0, r4, #0
	bl sub_0205A2DC
	cmp r0, #0
	beq _0205A6A0
	mov r0, #8
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A646:
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x44
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _0205A6A0
	mov r0, #0x18
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A664:
	bl sub_02059240
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0x13
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0x19
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A682:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A6A0
	mov r0, #0xd
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A696:
	add r0, r4, #0
	bl sub_0205A2DC
	cmp r0, #0
	bne _0205A6A2
_0205A6A0:
	b _0205AA4A
_0205A6A2:
	bl sub_0205A2FC
	cmp r0, #0
	beq _0205A6B0
	mov r0, #5
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A6B0:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0205A6BA
	mov r1, #1
	b _0205A6BC
_0205A6BA:
	mov r1, #0
_0205A6BC:
	add r0, r4, #0
	add r0, #0x82
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x82
	ldrb r1, [r1]
	add r0, r4, #0
	bl sub_0205AC80
	mov r0, #0
	bl sub_020364F0
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x74]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0xe
	bl sub_0200B1B8
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0xc]
	bl sub_0200C388
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0x1b
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A702:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A806
	bl sub_0205A2FC
	cmp r0, #0
	beq _0205A724
	mov r0, #5
	str r0, [r4, #0x34]
	b _0205AA4A
	nop
_0205A720: .word 0x021BF67C
_0205A724:
	mov r0, #0
	bl sub_02036540
	cmp r0, #0
	beq _0205A806
	add r0, r4, #0
	bl sub_0205ACC8
	mov r0, #0x1c
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A73A:
	add r0, r4, #0
	bl sub_0205AD10
	cmp r0, #0
	beq _0205A806
	mov r0, #1
	bl sub_020364F0
	mov r0, #0x1d
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A750:
	mov r0, #1
	bl sub_02036540
	cmp r0, #0
	beq _0205A806
	add r0, r4, #0
	bl sub_0205AD20
	add r1, r4, #0
	add r1, #0x83
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A794
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A794
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0x14
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A794:
	mov r0, #0x2a
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A79A:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A806
	add r0, r4, #0
	mov r1, #0
	add r0, #0x89
	strb r1, [r0]
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0x11
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	strb r1, [r0]
	mov r0, #0x1f
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A7D2:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A806
	add r0, r4, #0
	bl sub_0205AD80
	add r1, r4, #0
	add r1, #0x84
	ldrb r1, [r1]
	add r0, r4, #0
	bl sub_0205ADF8
	mov r0, #0x20
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A7F8:
	add r0, r4, #0
	bl sub_0205AFE4
	cmp r0, #1
	beq _0205A808
	cmp r0, #2
	beq _0205A81E
_0205A806:
	b _0205AA4A
_0205A808:
	add r0, r4, #0
	bl sub_0205B0B4
	mov r0, #0x81
	ldrsb r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x84
	strb r1, [r0]
	mov r0, #0x24
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A81E:
	add r0, r4, #0
	bl sub_0205B0B4
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x84
	strb r1, [r0]
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0xf
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #2
	bl sub_020364F0
	mov r0, #0x27
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A84C:
	add r1, r4, #0
	add r1, #0x84
	ldrb r1, [r1]
	ldr r0, [r4, #0x50]
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0200B538
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0x12
	bl sub_0200B1B8
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0xc]
	bl sub_0200C388
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0x25
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A88A:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205A920
	add r0, r4, #0
	mov r1, #0
	bl sub_0205AF18
	mov r0, #0x26
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A8A6:
	add r0, r4, #0
	bl sub_0205AFE4
	cmp r0, #1
	beq _0205A8D4
	cmp r0, #2
	bne _0205A920
	add r0, r4, #0
	bl sub_0205B0B4
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0x11
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #0x1f
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A8D4:
	mov r0, #0x81
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _0205A90C
	add r0, r4, #0
	bl sub_0205B0B4
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0xe
	bl sub_0200B1B8
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0xc]
	bl sub_0200C388
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	mov r0, #2
	bl sub_020364F0
	mov r0, #0x27
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A90C:
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x21
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A918:
	bl sub_0200F2AC
	cmp r0, #0
	bne _0205A922
_0205A920:
	b _0205AA4A
_0205A922:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205AAA0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r3, r4, #0
	add r3, #0x84
	ldrb r3, [r3]
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x50]
	add r0, r4, #0
	bl sub_0205A0D8
	mov r0, #0x22
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A948:
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl sub_0205A2B0
	cmp r0, #0
	beq _0205AA4A
	ldr r0, [r4, #0x24]
	bl sub_020509D4
	mov r0, #0x23
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A960:
	add r0, r4, #0
	bl sub_0205A2DC
	cmp r0, #0
	beq _0205AA4A
	mov r0, #0x24
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A970:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205AA4A
	mov r0, #2
	bl sub_02036540
	cmp r0, #0
	beq _0205AA4A
	add r0, r4, #0
	bl sub_0205AD34
	mov r0, #0x29
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A994:
	add r0, r4, #0
	bl sub_0205AD70
	cmp r0, #0
	beq _0205AA4A
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0205A9B4
	mov r0, #4
	bl sub_020364F0
	mov r0, #0x2c
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A9B4:
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0205A9C4
	mov r0, #0x2a
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A9C4:
	add r0, r4, #0
	bl sub_0205ADAC
	mov r0, #0x5d
	bl sub_020364F0
	mov r0, #2
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A9D6:
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0xc]
	mov r1, #0xf
	bl sub_0200B1B8
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl sub_0205AA50
	str r0, [r4, #0x30]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x43
	strb r1, [r0]
	mov r0, #0x2b
	str r0, [r4, #0x34]
	b _0205AA4A
_0205A9F8:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205AA4A
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x43
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0x3c
	bls _0205AA4A
	mov r0, #4
	bl sub_020364F0
	mov r0, #0x2c
	str r0, [r4, #0x34]
	b _0205AA4A
_0205AA2A:
	mov r0, #4
	bl sub_02036540
	cmp r0, #0
	beq _0205AA4A
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0200E084
	mov r0, #0
	ldr r2, [r4, #8]
	add r1, r0, #0
	blx r2
	mov r0, #5
	str r0, [r4, #0x34]
_0205AA4A:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205A324

	thumb_func_start sub_0205AA50
sub_0205AA50: ; 0x0205AA50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x14
	add r0, r4, #0
	add r6, r1, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0205AA82
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205D944
	b _0205AA88
_0205AA82:
	add r0, r4, #0
	bl sub_0205D988
_0205AA88:
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #1
	bl sub_0205D994
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205AA50

	thumb_func_start sub_0205AAA0
sub_0205AAA0: ; 0x0205AAA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x14
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0205AAD6
	cmp r4, #0
	beq _0205AAC6
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0200E084
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201ACF4
_0205AAC6:
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A8FC
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A7A0
_0205AAD6:
	add r0, r5, #0
	add r0, #0x54
	bl sub_0201A7CC
	cmp r0, #0
	beq _0205AAF2
	add r0, r5, #0
	add r0, #0x54
	bl sub_0201A8FC
	add r0, r5, #0
	add r0, #0x54
	bl sub_0201A7A0
_0205AAF2:
	add r0, r5, #0
	add r0, #0x64
	bl sub_0201A7CC
	cmp r0, #0
	beq _0205AB0E
	add r0, r5, #0
	add r0, #0x64
	bl sub_0201A8FC
	add r5, #0x64
	add r0, r5, #0
	bl sub_0201A7A0
_0205AB0E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205AAA0

	thumb_func_start sub_0205AB10
sub_0205AB10: ; 0x0205AB10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r6, r1, #0
	cmp r0, #0
	beq _0205AB1E
	b _0205AC22
_0205AB1E:
	mov r0, #0xb
	mov r1, #0x8c
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x8c
	bl MI_CpuFill8
	add r0, r4, #0
	mov r1, #5
	add r0, #0x43
	strb r1, [r0]
	str r5, [r4, #0x24]
	mov r0, #0xb
	str r6, [r4, #8]
	bl sub_0200B358
	mov r2, #0xb
	str r0, [r4, #0x28]
	mov r0, #0
	mov r1, #0x1a
	add r3, r2, #0
	bl sub_0200B144
	str r0, [r4, #0x2c]
	mov r0, #0xc8
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0xc]
	mov r0, #0xc8
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A7A0
	add r0, r4, #0
	add r0, #0x54
	bl sub_0201A7A0
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201A7A0
	mov r0, #0xb
	bl sub_020149F0
	str r0, [r4, #0x78]
	bl sub_0203895C
	add r1, r4, #0
	add r1, #0x88
	strb r0, [r1]
	mov r1, #0
	str r1, [r4, #0x4c]
	str r1, [r4, #0x48]
	add r0, r4, #0
	str r1, [r4, #0x50]
	add r0, #0x89
	strb r1, [r0]
	bl sub_0203608C
	add r1, r4, #0
	add r1, #0x86
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x86
	ldrh r1, [r0]
	mov r0, #1
	eor r0, r1
	bl sub_02032EE8
	str r0, [r4, #0x74]
	add r0, r4, #0
	add r0, #0x88
	ldrb r0, [r0]
	cmp r0, #3
	beq _0205ABC8
	cmp r0, #4
	beq _0205ABFE
	b _0205AC04
_0205ABC8:
	bl sub_0205B0E4
	add r6, r0, #0
	mov r0, #0xb
	add r1, r6, #0
	bl sub_02018184
	str r0, [r4, #0x4c]
	mov r0, #0xb
	add r1, r6, #0
	bl sub_02018184
	str r0, [r4, #0x48]
	mov r0, #0xb
	bl sub_02079FF4
	mov r1, #3
	str r0, [r4, #0x50]
	bl sub_0207A014
	add r0, r4, #0
	mov r1, #5
	add r0, #0x44
	strb r1, [r0]
	mov r0, #0x17
	str r0, [r4, #0x34]
	b _0205AC18
_0205ABFE:
	mov r0, #9
	str r0, [r4, #0x34]
	b _0205AC18
_0205AC04:
	ldr r0, [r4, #0x24]
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0205AC14
	mov r0, #9
	str r0, [r4, #0x34]
	b _0205AC18
_0205AC14:
	mov r0, #0
	str r0, [r4, #0x34]
_0205AC18:
	ldr r1, _0205AC24 ; =sub_0205A324
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
_0205AC22:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205AC24: .word sub_0205A324
	thumb_func_end sub_0205AB10

	thumb_func_start sub_0205AC28
sub_0205AC28: ; 0x0205AC28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0205AC36
	bl sub_020181C4
_0205AC36:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0205AC40
	bl sub_020181C4
_0205AC40:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0205AC4A
	bl sub_020181C4
_0205AC4A:
	ldr r0, [r4, #0x2c]
	bl sub_0200B190
	ldr r0, [r4, #0x28]
	bl sub_0200B3F0
	ldr r0, [r4, #0xc]
	bl sub_020237BC
	ldr r0, [r4, #0x10]
	bl sub_020237BC
	ldr r0, [r4, #0x78]
	bl sub_02014A20
	add r0, r4, #0
	mov r1, #1
	bl sub_0205AAA0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205AC28

	thumb_func_start sub_0205AC74
sub_0205AC74: ; 0x0205AC74
	ldr r3, _0205AC7C ; =sub_02050A64
	ldr r0, [r0, #0x10]
	bx r3
	nop
_0205AC7C: .word sub_02050A64
	thumb_func_end sub_0205AC74

	thumb_func_start sub_0205AC80
sub_0205AC80: ; 0x0205AC80
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x24]
	add r5, r1, #0
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp]
	ldr r4, [r7, #0x4c]
	bl sub_02076AF0
	add r6, r0, #0
	lsl r0, r6, #1
	add r0, r6, r0
	str r5, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0205ACC4
	mov r5, #0
_0205ACA6:
	add r1, r7, r5
	add r1, #0x3d
	ldrb r1, [r1]
	ldr r0, [sp]
	sub r1, r1, #1
	bl sub_0207A0FC
	add r1, r4, #0
	add r2, r6, #0
	bl MI_CpuCopy8
	add r5, r5, #1
	add r4, r4, r6
	cmp r5, #3
	blt _0205ACA6
_0205ACC4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205AC80

	thumb_func_start sub_0205ACC8
sub_0205ACC8: ; 0x0205ACC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x89
	ldrb r1, [r0]
	mov r0, #1
	tst r1, r0
	bne _0205AD0C
	ldr r4, [r5, #0x4c]
	bl sub_0205B0E4
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x86
	ldrh r0, [r0]
	cmp r0, #0
	bne _0205ACF2
	mov r0, #0x6a
	add r1, r4, #0
	bl sub_02035A3C
	b _0205ACFA
_0205ACF2:
	mov r0, #0x6a
	add r1, r4, #0
	bl sub_0203597C
_0205ACFA:
	cmp r0, #0
	beq _0205AD0C
	add r1, r5, #0
	add r1, #0x89
	ldrb r2, [r1]
	mov r1, #1
	add r5, #0x89
	orr r1, r2
	strb r1, [r5]
_0205AD0C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205ACC8

	thumb_func_start sub_0205AD10
sub_0205AD10: ; 0x0205AD10
	add r0, #0x89
	ldrb r0, [r0]
	cmp r0, #3
	bne _0205AD1C
	mov r0, #1
	bx lr
_0205AD1C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205AD10

	thumb_func_start sub_0205AD20
sub_0205AD20: ; 0x0205AD20
	push {r4, lr}
	add r4, r0, #0
	bl sub_02076AF0
	lsl r1, r0, #1
	ldr r2, [r4, #0x48]
	add r0, r0, r1
	ldr r0, [r2, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205AD20

	thumb_func_start sub_0205AD34
sub_0205AD34: ; 0x0205AD34
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x86
	ldrh r0, [r0]
	cmp r0, #0
	bne _0205AD4E
	add r1, r4, #0
	mov r0, #0x6b
	add r1, #0x84
	mov r2, #1
	bl sub_02035AC4
	b _0205AD5A
_0205AD4E:
	add r1, r4, #0
	mov r0, #0x6b
	add r1, #0x84
	mov r2, #1
	bl sub_020359DC
_0205AD5A:
	cmp r0, #0
	beq _0205AD6C
	add r1, r4, #0
	add r1, #0x89
	ldrb r2, [r1]
	mov r1, #1
	add r4, #0x89
	orr r1, r2
	strb r1, [r4]
_0205AD6C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205AD34

	thumb_func_start sub_0205AD70
sub_0205AD70: ; 0x0205AD70
	add r0, #0x89
	ldrb r0, [r0]
	cmp r0, #3
	bne _0205AD7C
	mov r0, #1
	bx lr
_0205AD7C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205AD70

	thumb_func_start sub_0205AD80
sub_0205AD80: ; 0x0205AD80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02076AF0
	add r6, r0, #0
	ldr r0, [r5, #0x50]
	mov r1, #3
	bl sub_0207A014
	mov r4, #0
_0205AD94:
	add r1, r4, #0
	ldr r2, [r5, #0x48]
	mul r1, r6
	ldr r0, [r5, #0x50]
	add r1, r2, r1
	bl sub_0207A048
	add r4, r4, #1
	cmp r4, #3
	blt _0205AD94
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205AD80

	thumb_func_start sub_0205ADAC
sub_0205ADAC: ; 0x0205ADAC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02076AF0
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x84
	ldrb r0, [r0]
	ldr r2, [r6, #0x48]
	ldr r3, [r6, #0x4c]
	add r1, r0, #0
	mul r1, r4
	add r0, r2, r1
	add r1, r6, #0
	add r1, #0x85
	ldrb r1, [r1]
	add r2, r1, #0
	mul r2, r4
	add r1, r3, r2
	add r2, r4, #0
	bl MI_CpuCopy8
	ldr r0, [r6, #0x50]
	mov r1, #3
	bl sub_0207A014
	mov r5, #0
_0205ADE2:
	add r1, r5, #0
	ldr r2, [r6, #0x4c]
	mul r1, r4
	ldr r0, [r6, #0x50]
	add r1, r2, r1
	bl sub_0207A048
	add r5, r5, #1
	cmp r5, #3
	blt _0205ADE2
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205ADAC

	thumb_func_start sub_0205ADF8
sub_0205ADF8: ; 0x0205ADF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	str r0, [sp, #0x20]
	add r0, #0x54
	str r1, [sp, #0x14]
	str r0, [sp, #0x20]
	bl sub_0201A7CC
	cmp r0, #0
	bne _0205AEC6
	mov r2, #0x67
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #4
	bl sub_0200B144
	str r0, [sp, #0x18]
	bl sub_02076AF0
	str r0, [sp, #0x1c]
	mov r0, #9
	str r0, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x15
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r2, #1
	mov r3, #0xb
	bl sub_0200DAA4
	ldr r0, [sp, #0x20]
	mov r1, #0xf
	bl sub_0201ADA4
	mov r7, #0
	add r6, r7, #0
	add r4, r7, #0
_0205AE68:
	ldr r0, [r5, #0x48]
	mov r1, #5
	add r0, r0, r6
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	ldr r2, [r5, #0xc]
	bl sub_0200B1B8
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	ldr r2, [r5, #0xc]
	mov r1, #0
	mov r3, #0x10
	bl sub_0201D738
	ldr r0, [sp, #0x1c]
	add r7, r7, #1
	add r6, r6, r0
	add r4, #0x10
	cmp r7, #3
	blt _0205AE68
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0xc]
	mov r1, #0x15
	bl sub_0200B1B8
	lsl r0, r7, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0x20]
	ldr r2, [r5, #0xc]
	mov r3, #0x10
	bl sub_0201D738
	ldr r0, [sp, #0x18]
	bl sub_0200B190
_0205AEC6:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r2, #0
	ldrb r0, [r0, #8]
	mov r1, #0xf
	add r3, r2, #0
	lsl r0, r0, #0x13
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	bl sub_0201AE78
	ldr r3, [sp, #0x14]
	add r1, r5, #0
	ldr r0, [r5, #0x78]
	add r1, #0x54
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02014A58
	add r0, r5, #0
	add r0, #0x54
	mov r1, #0
	mov r2, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r1, r5, #0
	ldr r0, [sp, #0x14]
	add r1, #0x81
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #4
	add r0, #0x80
	strb r1, [r0]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x7c]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205ADF8

	thumb_func_start sub_0205AF18
sub_0205AF18: ; 0x0205AF18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r5, #0
	add r7, #0x64
	add r0, r7, #0
	str r1, [sp, #0x14]
	bl sub_0201A7CC
	cmp r0, #0
	bne _0205AF9A
	mov r0, #0xb
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x5a
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x14
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r2, #1
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r7, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r6, #0
	add r4, r6, #0
_0205AF70:
	add r1, r6, #0
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0xc]
	add r1, #0x16
	bl sub_0200B1B8
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #0xc]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0x10
	bl sub_0201D738
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #3
	blt _0205AF70
_0205AF9A:
	add r0, r5, #0
	mov r1, #3
	add r0, #0x80
	strb r1, [r0]
	add r1, r5, #0
	ldr r0, [sp, #0x14]
	str r7, [r5, #0x7c]
	add r1, #0x81
	strb r0, [r1]
	mov r0, #0x10
	str r0, [sp]
	ldrb r0, [r7, #8]
	mov r2, #0
	mov r1, #0xf
	lsl r0, r0, #0x13
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r3, r2, #0
	bl sub_0201AE78
	ldr r3, [sp, #0x14]
	ldr r0, [r5, #0x78]
	ldr r1, [r5, #0x7c]
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02014A58
	ldr r0, [r5, #0x7c]
	mov r1, #0
	mov r2, #1
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205AF18

	thumb_func_start sub_0205AFE4
sub_0205AFE4: ; 0x0205AFE4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0205B0AC ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0205B00E
	mov r0, #0x81
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0205B004
	add r0, r4, #0
	add r0, #0x80
	ldrb r0, [r0]
	b _0205B004
_0205B004:
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x81
	strb r1, [r0]
	b _0205B070
_0205B00E:
	mov r1, #0x80
	tst r1, r0
	beq _0205B032
	mov r0, #0x81
	ldrsb r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x80
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bne _0205B028
	mov r1, #0
	b _0205B02A
_0205B028:
	add r1, r1, #1
_0205B02A:
	add r0, r4, #0
	add r0, #0x81
	strb r1, [r0]
	b _0205B070
_0205B032:
	mov r1, #1
	tst r1, r0
	beq _0205B058
	ldr r0, _0205B0B0 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x81
	ldrsb r1, [r4, r0]
	add r4, #0x80
	ldrb r0, [r4]
	sub r0, r0, #1
	cmp r1, r0
	bge _0205B052
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0205B052:
	add sp, #8
	mov r0, #2
	pop {r4, pc}
_0205B058:
	mov r1, #2
	tst r0, r1
	beq _0205B06A
	ldr r0, _0205B0B0 ; =0x000005DC
	bl sub_02005748
	add sp, #8
	mov r0, #2
	pop {r4, pc}
_0205B06A:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0205B070:
	ldr r0, _0205B0B0 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x7c]
	mov r1, #0x10
	str r1, [sp]
	ldrb r1, [r0, #8]
	mov r2, #0
	add r3, r2, #0
	lsl r1, r1, #0x13
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	mov r1, #0xf
	bl sub_0201AE78
	mov r3, #0x81
	ldrsb r3, [r4, r3]
	ldr r0, [r4, #0x78]
	ldr r1, [r4, #0x7c]
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02014A58
	ldr r0, [r4, #0x7c]
	bl sub_0201ACCC
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_0205B0AC: .word 0x021BF67C
_0205B0B0: .word 0x000005DC
	thumb_func_end sub_0205AFE4

	thumb_func_start sub_0205B0B4
sub_0205B0B4: ; 0x0205B0B4
	ldr r3, _0205B0BC ; =sub_0200DC9C
	ldr r0, [r0, #0x7c]
	mov r1, #1
	bx r3
	; .align 2, 0
_0205B0BC: .word sub_0200DC9C
	thumb_func_end sub_0205B0B4

	thumb_func_start sub_0205B0C0
sub_0205B0C0: ; 0x0205B0C0
	push {r4, lr}
	add r4, r0, #0
	add r0, r3, #0
	bl sub_0205AC74
	add r1, r0, #0
	add r1, #0x86
	ldrh r1, [r1]
	cmp r1, r4
	beq _0205B0E2
	add r1, r0, #0
	add r1, #0x89
	ldrb r2, [r1]
	mov r1, #2
	add r0, #0x89
	orr r1, r2
	strb r1, [r0]
_0205B0E2:
	pop {r4, pc}
	thumb_func_end sub_0205B0C0

	thumb_func_start sub_0205B0E4
sub_0205B0E4: ; 0x0205B0E4
	push {r3, lr}
	bl sub_02076AF0
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r0, #4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205B0E4

	thumb_func_start sub_0205B0F4
sub_0205B0F4: ; 0x0205B0F4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205AC74
	add r1, r0, #0
	add r1, #0x86
	ldrh r1, [r1]
	cmp r1, r4
	beq _0205B10C
	ldr r0, [r0, #0x48]
	pop {r4, pc}
_0205B10C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0205B0F4

	thumb_func_start sub_0205B110
sub_0205B110: ; 0x0205B110
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r3, #0
	add r4, r2, #0
	bl sub_0205AC74
	add r1, r0, #0
	add r1, #0x86
	ldrh r1, [r1]
	cmp r1, r5
	beq _0205B13C
	ldrb r2, [r4]
	add r1, r0, #0
	add r1, #0x85
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x89
	ldrb r2, [r1]
	mov r1, #2
	add r0, #0x89
	orr r1, r2
	strb r1, [r0]
_0205B13C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205B110

	thumb_func_start sub_0205B140
sub_0205B140: ; 0x0205B140
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r1, #0
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	bl sub_02059EBC
	add r6, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #7
	bls _0205B166
	b _0205B2C6
_0205B166:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205B172: ; jump table
	.short _0205B182 - _0205B172 - 2 ; case 0
	.short _0205B20C - _0205B172 - 2 ; case 1
	.short _0205B25C - _0205B172 - 2 ; case 2
	.short _0205B26C - _0205B172 - 2 ; case 3
	.short _0205B27C - _0205B172 - 2 ; case 4
	.short _0205B28E - _0205B172 - 2 ; case 5
	.short _0205B29C - _0205B172 - 2 ; case 6
	.short _0205B2B8 - _0205B172 - 2 ; case 7
_0205B182:
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x18]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xb
	mov r3, #4
	bl sub_0200B144
	str r0, [r4, #0x1c]
	mov r0, #0xc8
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0]
	mov r0, #0xc8
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #4]
	ldrb r1, [r6, #3]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0]
	add r1, r1, #2
	bl sub_0200B1B8
	ldr r0, [r4, #0x24]
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	bl sub_0200C388
	add r1, r4, #0
	ldr r0, [r5, #8]
	add r1, #8
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	add r0, #8
	bl sub_0205D944
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #4]
	add r0, #8
	mov r3, #1
	bl sub_0205D994
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B20C:
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0205B2CA
	ldr r0, _0205B2D0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0205B2CA
	ldr r0, [r4, #0x1c]
	bl sub_0200B190
	ldr r0, [r4, #0x18]
	bl sub_0200B3F0
	ldr r0, [r4, #0]
	bl sub_020237BC
	ldr r0, [r4, #4]
	bl sub_020237BC
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #8
	bl sub_0201A8FC
	mov r0, #0
	bl ov5_021D1744
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B25C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0205B2CA
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B26C:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0203E09C
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B27C:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0205B2CA
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B28E:
	add r0, r5, #0
	bl sub_020509D4
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B29C:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	bne _0205B2CA
	mov r0, #1
	bl ov5_021D1744
	bl sub_020576A0
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0205B2CA
_0205B2B8:
	bl sub_02059514
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205B2C6:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205B2CA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0205B2D0: .word 0x021BF67C
	thumb_func_end sub_0205B140

	thumb_func_start sub_0205B2D4
sub_0205B2D4: ; 0x0205B2D4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0203608C
	add r5, r0, #0
	bl sub_02058D88
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02058DC0
	add r6, r0, #0
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _0205B336
_0205B2F6:
	cmp r4, r5
	beq _0205B32C
	add r0, r4, #0
	bl sub_02058CA0
	cmp r7, r0
	bne _0205B32C
	add r0, r4, #0
	bl sub_02058CF4
	cmp r6, r0
	bne _0205B32C
	mov r0, #0xb
	mov r1, #0x2c
	bl sub_02018184
	add r2, r0, #0
	str r4, [r2, #0x24]
	mov r0, #0
	str r0, [r2, #0x28]
	ldr r0, [sp]
	ldr r1, _0205B338 ; =sub_0205B140
	bl sub_02050904
	bl sub_0203D128
	pop {r3, r4, r5, r6, r7, pc}
_0205B32C:
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _0205B2F6
_0205B336:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205B338: .word sub_0205B140
	thumb_func_end sub_0205B2D4

	.rodata


	.global Unk_020ED514
Unk_020ED514: ; 0x020ED514
	.incbin "incbin/arm9_rodata.bin", 0x88D4, 0x9

