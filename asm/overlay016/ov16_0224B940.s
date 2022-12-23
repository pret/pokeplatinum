	.include "macros/function.inc"
	.include "overlay016/ov16_0224B940.inc"

	

	.text


	thumb_func_start ov16_0224B940
ov16_0224B940: ; 0x0224B940
	push {r3, r4, r5, lr}
	ldr r1, _0224B984 ; =0x00003158
	add r5, r0, #0
	mov r0, #5
	bl sub_02018144
	add r4, r0, #0
	ldr r2, _0224B984 ; =0x00003158
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	add r0, r4, #0
	bl ov16_022541C4
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_022542B8
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02251604
	ldr r0, _0224B988 ; =0x000003DE
	add r0, r4, r0
	bl sub_020790B0
	mov r0, #5
	bl sub_0207D388
	ldr r1, _0224B98C ; =0x00002120
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B984: .word 0x00003158
_0224B988: .word 0x000003DE
_0224B98C: .word 0x00002120
	thumb_func_end ov16_0224B940

	thumb_func_start ov16_0224B990
ov16_0224B990: ; 0x0224B990
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _0224B9D4 ; =0x0000311F
	add r5, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0224B9B6
	bl ov16_0223F438
	cmp r0, #0
	beq _0224B9B6
	add r0, r5, #0
	bl ov16_0223F438
	mov r1, #0x40
	tst r0, r1
	bne _0224B9B6
	mov r0, #0x29
	str r0, [r4, #8]
_0224B9B6:
	ldr r2, [r4, #8]
	add r0, r5, #0
	lsl r3, r2, #2
	ldr r2, _0224B9D8 ; =0x0226EAEC
	add r1, r4, #0
	ldr r2, [r2, r3]
	blx r2
	ldr r0, [r4, #8]
	cmp r0, #0x2c
	bne _0224B9CE
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224B9CE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224B9D4: .word 0x0000311F
_0224B9D8: .word 0x0226EAEC
	thumb_func_end ov16_0224B990

	thumb_func_start ov16_0224B9DC
ov16_0224B9DC: ; 0x0224B9DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224B9F0 ; =0x00002120
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
_0224B9F0: .word 0x00002120
	thumb_func_end ov16_0224B9DC

	thumb_func_start ov16_0224B9F4
ov16_0224B9F4: ; 0x0224B9F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, [sp, #0x20]
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	str r6, [sp]
	bl ov16_0224EF20
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #4]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov16_0224F274
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0224B9F4

	thumb_func_start ov16_0224BA1C
ov16_0224BA1C: ; 0x0224BA1C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	bl ov16_0223DF1C
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _0224BA44
_0224BA2E:
	ldr r3, _0224BA54 ; =0x0000219C
	add r6, r5, r4
	ldrb r3, [r6, r3]
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_0225177C
	add r4, r4, #1
	cmp r4, r7
	blt _0224BA2E
_0224BA44:
	ldr r0, _0224BA58 ; =0x00002E4C
	ldr r1, [r5, r0]
	ldr r0, _0224BA5C ; =0x00003122
	strh r1, [r5, r0]
	mov r0, #1
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224BA54: .word 0x0000219C
_0224BA58: .word 0x00002E4C
_0224BA5C: .word 0x00003122
	thumb_func_end ov16_0224BA1C

	thumb_func_start ov16_0224BA60
ov16_0224BA60: ; 0x0224BA60
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ov16_0224BA60

	thumb_func_start ov16_0224BA78
ov16_0224BA78: ; 0x0224BA78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov16_02253FCC
	cmp r0, #0
	beq _0224BA9A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x29
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #3
	str r0, [r4, #0xc]
	b _0224BA9E
_0224BA9A:
	mov r0, #3
	str r0, [r4, #8]
_0224BA9E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255FBC
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0224BA78

	thumb_func_start ov16_0224BAA8
ov16_0224BAA8: ; 0x0224BAA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov16_02256414
	add r2, r0, #0
	beq _0224BAC8
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224BAC8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255FBC
	add r0, r5, #0
	bl ov16_0223F7E8
	mov r0, #4
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0224BAA8

	thumb_func_start ov16_0224BADC
ov16_0224BADC: ; 0x0224BADC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r7, r1, #0
	bl ov16_0223DF1C
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _0224BB0C
	add r6, r7, #0
	add r2, r4, #0
_0224BAF2:
	mov r0, #0xb7
	strb r2, [r7, r4]
	lsl r0, r0, #6
	ldr r1, [r6, r0]
	add r0, r0, #4
	str r1, [r6, r0]
	add r3, r7, r4
	ldr r0, _0224BB24 ; =0x0000314C
	add r4, r4, #1
	strb r2, [r3, r0]
	add r6, #0xc0
	cmp r4, r5
	blt _0224BAF2
_0224BB0C:
	ldr r0, [sp]
	mov r1, #0
	bl ov16_0223F288
	ldr r0, [sp]
	mov r1, #1
	bl ov16_0223B748
	mov r0, #5
	str r0, [r7, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224BB24: .word 0x0000314C
	thumb_func_end ov16_0224BADC

	thumb_func_start ov16_0224BB28
ov16_0224BB28: ; 0x0224BB28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r7, r0, #0
	str r1, [sp, #0x1c]
	bl ov16_0223DF1C
	str r0, [sp, #0x64]
	add r0, r7, #0
	bl ov16_0223DF0C
	str r0, [sp, #0x28]
	mov r4, #0
	ldr r0, [sp, #0x64]
	str r4, [sp, #0x60]
	cmp r0, #0
	bgt _0224BB4C
	bl _0224C3E8
_0224BB4C:
	ldr r0, [sp, #0x1c]
	mov r1, #0x75
	lsl r1, r1, #2
	str r0, [sp, #0x58]
	add r0, r0, r1
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x1c]
	ldr r1, _0224BE64 ; =0x000021AC
	str r0, [sp, #0x50]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x48]
	add r0, r0, r1
	str r0, [sp, #0x44]
	mov r1, #0x23
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #8
	add r0, r0, r1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x28]
	mov r1, #2
	and r0, r1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x28]
	mov r1, #8
	and r0, r1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x28]
	lsl r1, r1, #6
	and r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x28]
	mov r1, #0x20
	and r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x28]
	mov r1, #4
	and r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	mov r1, #0x80
	and r0, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x20]
_0224BBA8:
	ldr r0, [sp, #0x1c]
	add r5, r0, r4
	ldrb r0, [r0, r4]
	cmp r0, #0x11
	bls _0224BBB4
	b _0224C3AE
_0224BBB4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BBC0: ; jump table
	.short _0224BBE4 - _0224BBC0 - 2 ; case 0
	.short _0224BCC4 - _0224BBC0 - 2 ; case 1
	.short _0224BC80 - _0224BBC0 - 2 ; case 2
	.short _0224BF46 - _0224BBC0 - 2 ; case 3
	.short _0224BF54 - _0224BBC0 - 2 ; case 4
	.short _0224C03A - _0224BBC0 - 2 ; case 5
	.short _0224C074 - _0224BBC0 - 2 ; case 6
	.short _0224C0B2 - _0224BBC0 - 2 ; case 7
	.short _0224C0C0 - _0224BBC0 - 2 ; case 8
	.short _0224C0EE - _0224BBC0 - 2 ; case 9
	.short _0224C162 - _0224BBC0 - 2 ; case 10
	.short _0224C1C0 - _0224BBC0 - 2 ; case 11
	.short _0224C2B8 - _0224BBC0 - 2 ; case 12
	.short _0224C308 - _0224BBC0 - 2 ; case 13
	.short _0224C33C - _0224BBC0 - 2 ; case 14
	.short _0224C344 - _0224BBC0 - 2 ; case 15
	.short _0224C35E - _0224BBC0 - 2 ; case 16
	.short _0224C3A2 - _0224BBC0 - 2 ; case 17
_0224BBE4:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0224BC08
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _0224BC08
	cmp r4, #2
	bne _0224BBFC
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _0224BCF4
_0224BBFC:
	cmp r4, #3
	bne _0224BC08
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, #1]
	cmp r0, #0xe
	bne _0224BCF4
_0224BC08:
	add r0, r4, #0
	bl sub_020787CC
	ldr r2, _0224BE68 ; =0x00003108
	ldr r1, [sp, #0x1c]
	ldrb r1, [r1, r2]
	tst r0, r1
	beq _0224BC26
	mov r0, #0xd
	strb r0, [r5]
	ldr r1, _0224BE6C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x27
	str r2, [r0, r1]
	b _0224C3AE
_0224BC26:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259A28
	cmp r0, #0
	bne _0224BC4A
	ldr r0, [sp, #0x54]
	mov r2, #0xd
	ldr r1, [r0, #0]
	mov r0, #2
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0, #0]
	ldr r1, _0224BE6C ; =0x000021A8
	ldr r0, [sp, #0x58]
	strb r2, [r5]
	str r2, [r0, r1]
	b _0224C3AE
_0224BC4A:
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0223DF14
	bl ov16_02263AF0
	cmp r0, #1
	beq _0224BC66
	mov r1, #0x15
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0224BC7A
_0224BC66:
	ldr r3, _0224BE70 ; =0x0000219C
	ldr r1, [sp, #0x1c]
	ldrb r3, [r5, r3]
	add r0, r7, #0
	add r2, r4, #0
	bl ov16_02265330
	mov r0, #1
	strb r0, [r5]
	b _0224C3AE
_0224BC7A:
	mov r0, #2
	strb r0, [r5]
	b _0224C3AE
_0224BC80:
	ldr r0, [sp, #0x64]
	mov r6, #0
	cmp r0, #0
	ble _0224BCAC
_0224BC88:
	cmp r6, r4
	beq _0224BCA4
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0223DF14
	bl ov16_02263AF0
	cmp r0, #1
	bne _0224BCA4
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, r6]
	cmp r0, #0xe
	bne _0224BCAC
_0224BCA4:
	ldr r0, [sp, #0x64]
	add r6, r6, #1
	cmp r6, r0
	blt _0224BC88
_0224BCAC:
	ldr r0, [sp, #0x64]
	cmp r6, r0
	bne _0224BCF4
	ldr r3, _0224BE70 ; =0x0000219C
	ldr r1, [sp, #0x1c]
	ldrb r3, [r5, r3]
	add r0, r7, #0
	add r2, r4, #0
	bl ov16_02265330
	mov r0, #1
	strb r0, [r5]
_0224BCC4:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0
	beq _0224BCF4
	mov r1, #0x23
	ldr r0, [sp, #0x50]
	lsl r1, r1, #8
	ldrb r2, [r0, r1]
	ldr r1, _0224BE74 ; =0x000021B4
	ldr r0, [sp, #0x58]
	str r2, [r0, r1]
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _0224BD18
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #1
	beq _0224BCF6
	cmp r0, #4
	beq _0224BD06
_0224BCF4:
	b _0224C3AE
_0224BCF6:
	mov r0, #0x11
	strb r0, [r5]
	mov r1, #0xd
	strb r1, [r5, #4]
	ldr r2, _0224BE6C ; =0x000021A8
	ldr r1, [sp, #0x58]
	str r0, [r1, r2]
	b _0224C3AE
_0224BD06:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	ldr r1, _0224BE6C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x10
	str r2, [r0, r1]
	b _0224C3AE
_0224BD18:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0224BD9A
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #5
	bhi _0224BDDC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BD36: ; jump table
	.short _0224C3AE - _0224BD36 - 2 ; case 0
	.short _0224BD42 - _0224BD36 - 2 ; case 1
	.short _0224BD52 - _0224BD36 - 2 ; case 2
	.short _0224BD64 - _0224BD36 - 2 ; case 3
	.short _0224BD76 - _0224BD36 - 2 ; case 4
	.short _0224BD88 - _0224BD36 - 2 ; case 5
_0224BD42:
	mov r0, #0x11
	strb r0, [r5]
	mov r1, #0xd
	strb r1, [r5, #4]
	ldr r2, _0224BE6C ; =0x000021A8
	ldr r1, [sp, #0x58]
	str r0, [r1, r2]
	b _0224C3AE
_0224BD52:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	ldr r1, _0224BE6C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x12
	str r2, [r0, r1]
	b _0224C3AE
_0224BD64:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	ldr r1, _0224BE6C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x13
	str r2, [r0, r1]
	b _0224C3AE
_0224BD76:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	ldr r1, _0224BE6C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x10
	str r2, [r0, r1]
	b _0224C3AE
_0224BD88:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5]
	ldr r1, _0224BE6C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x14
	str r2, [r0, r1]
	b _0224C3AE
_0224BD9A:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0xff
	beq _0224BDB0
	ldr r1, _0224BE78 ; =0x0000314C
	mov r0, #1
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_0224BDB0:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #4
	bgt _0224BDD6
	cmp r0, #0
	blt _0224BDDC
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224BDCC: ; jump table
	.short _0224C3AE - _0224BDCC - 2 ; case 0
	.short _0224BDDE - _0224BDCC - 2 ; case 1
	.short _0224BE96 - _0224BDCC - 2 ; case 2
	.short _0224BEEC - _0224BDCC - 2 ; case 3
	.short _0224BEFA - _0224BDCC - 2 ; case 4
_0224BDD6:
	cmp r0, #0xff
	bne _0224BDDC
	b _0224BF08
_0224BDDC:
	b _0224C3AE
_0224BDDE:
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0
	bl ov16_02254A6C
	cmp r0, #0xf
	bne _0224BE1E
	ldr r0, [sp, #0x54]
	ldr r1, [r0, #0]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0, #0]
	add r0, r7, #0
	bl ov16_0223EBEC
	mov r1, #0x10
	tst r0, r1
	beq _0224BE16
	mov r0, #0xd
	strb r0, [r5]
	b _0224BE8C
_0224BE16:
	mov r0, #0x11
	strb r0, [r5]
	strb r1, [r5, #4]
	b _0224BE8C
_0224BE1E:
	ldr r3, _0224BE7C ; =0x00002DEC
	ldr r0, [sp, #0x4c]
	ldrh r0, [r0, r3]
	cmp r0, #0
	beq _0224BE88
	ldr r0, [sp, #0x4c]
	add r1, r3, #2
	ldrh r2, [r0, r1]
	ldr r1, _0224BE80 ; =0x000030BC
	ldr r0, [sp, #0x48]
	strh r2, [r0, r1]
	ldr r0, [sp, #0x4c]
	sub r1, #8
	ldrh r2, [r0, r3]
	ldr r0, [sp, #0x48]
	strh r2, [r0, r1]
	ldr r1, _0224BE84 ; =0x000021B0
	ldr r0, [sp, #0x58]
	mov r2, #0
	str r2, [r0, r1]
	add r0, r7, #0
	bl ov16_0223EBEC
	mov r1, #0x10
	tst r0, r1
	beq _0224BE58
	mov r0, #0xd
	strb r0, [r5]
	b _0224BE8C
_0224BE58:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	b _0224BE8C
	nop
_0224BE64: .word 0x000021AC
_0224BE68: .word 0x00003108
_0224BE6C: .word 0x000021A8
_0224BE70: .word 0x0000219C
_0224BE74: .word 0x000021B4
_0224BE78: .word 0x0000314C
_0224BE7C: .word 0x00002DEC
_0224BE80: .word 0x000030BC
_0224BE84: .word 0x000021B0
_0224BE88:
	mov r0, #3
	strb r0, [r5]
_0224BE8C:
	ldr r1, _0224C1A4 ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0xd
	str r2, [r0, r1]
	b _0224C3AE
_0224BE96:
	add r0, r7, #0
	bl ov16_0223DF0C
	mov r1, #0x84
	tst r0, r1
	beq _0224BEDE
	ldr r1, _0224C1A8 ; =0x00000251
	add r0, sp, #0x78
	strh r1, [r0, #6]
	mov r1, #0
	strb r1, [r0, #5]
	mov r0, sp
	str r0, [sp, #0x68]
	sub r0, #8
	str r0, [sp, #0x68]
	add r2, sp, #0x7c
	add r3, r0, #0
	mov r6, #4
_0224BEBA:
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r6, r6, #1
	bne _0224BEBA
	ldr r0, [r2, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	ldr r0, [sp, #0x68]
	ldmia r0!, {r2, r3}
	str r0, [sp, #0x68]
	add r0, r7, #0
	bl ov16_02266168
	mov r0, #0xf
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5, #4]
	b _0224C3AE
_0224BEDE:
	ldr r1, _0224C1A4 ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0xe
	str r2, [r0, r1]
	mov r0, #7
	strb r0, [r5]
	b _0224C3AE
_0224BEEC:
	ldr r1, _0224C1A4 ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0xf
	str r2, [r0, r1]
	mov r0, #9
	strb r0, [r5]
	b _0224C3AE
_0224BEFA:
	ldr r1, _0224C1A4 ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x10
	str r2, [r0, r1]
	mov r0, #0xb
	strb r0, [r5]
	b _0224C3AE
_0224BF08:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0224BF2A
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0226647C
	mov r0, #0
	strb r0, [r5]
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0223E258
	ldr r1, [sp, #0x1c]
	mov r2, #0
	strb r2, [r1, r0]
	b _0224C3AE
_0224BF2A:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0224BF72
	cmp r4, #2
	bne _0224BF72
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0226647C
	ldr r0, [sp, #0x1c]
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #2]
	b _0224C3AE
_0224BF46:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov16_022656F0
	mov r0, #4
	strb r0, [r5]
_0224BF54:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0xff
	bne _0224BF66
	mov r0, #0
	strb r0, [r5]
	b _0224C3AE
_0224BF66:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0
	bne _0224BF74
_0224BF72:
	b _0224C3AE
_0224BF74:
	mov r1, #0x23
	ldr r0, [sp, #0x50]
	lsl r1, r1, #8
	ldrb r0, [r0, r1]
	sub r3, r0, #1
	cmp r3, #4
	bne _0224BF90
	ldr r1, _0224C1A4 ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x10
	str r2, [r0, r1]
	mov r0, #0xb
	strb r0, [r5]
	b _0224C3AE
_0224BF90:
	add r0, sp, #0x7c
	str r0, [sp]
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov16_02254CA8
	cmp r0, #0
	bne _0224BFF8
	add r0, r7, #0
	bl ov16_0223EBEC
	mov r1, #0x10
	tst r0, r1
	beq _0224BFC6
	add r0, r7, #0
	mov r1, #1
	bl ov16_0223F720
	add r0, r7, #0
	bl ov16_0223DF10
	add r1, r0, #0
	add r0, r7, #0
	bl ov16_0225B444
	b _0224C3AE
_0224BFC6:
	mov r0, sp
	str r0, [sp, #0x6c]
	sub r0, #8
	str r0, [sp, #0x6c]
	add r2, sp, #0x7c
	add r3, r0, #0
	mov r6, #4
_0224BFD4:
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r6, r6, #1
	bne _0224BFD4
	ldr r0, [r2, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	ldr r0, [sp, #0x6c]
	ldmia r0!, {r2, r3}
	str r0, [sp, #0x6c]
	add r0, r7, #0
	bl ov16_02266168
	mov r0, #0xf
	strb r0, [r5]
	mov r0, #3
	strb r0, [r5, #4]
	b _0224C3AE
_0224BFF8:
	mov r3, #0x23
	ldr r0, [sp, #0x50]
	lsl r3, r3, #8
	ldrb r2, [r0, r3]
	ldr r1, _0224C1AC ; =0x000021B0
	ldr r0, [sp, #0x58]
	str r2, [r0, r1]
	ldr r0, [sp, #0x50]
	ldrb r0, [r0, r3]
	ldr r3, _0224C1B0 ; =0x000030BC
	sub r1, r0, #1
	ldr r0, [sp, #0x48]
	strh r1, [r0, r3]
	ldrh r0, [r0, r3]
	lsl r1, r0, #1
	ldr r0, [sp, #0x4c]
	add r1, r0, r1
	ldr r0, _0224C1B4 ; =0x00002D4C
	ldrh r2, [r1, r0]
	add r1, r3, #0
	ldr r0, [sp, #0x48]
	sub r1, #8
	strh r2, [r0, r1]
	mov r0, #5
	strb r0, [r5]
	add r0, r3, #0
	add r0, #0x90
	ldrb r1, [r5, r0]
	mov r0, #2
	add r3, #0x90
	orr r0, r1
	strb r0, [r5, r3]
	b _0224C3AE
_0224C03A:
	add r0, sp, #0x78
	str r0, [sp]
	ldr r1, _0224C1B0 ; =0x000030BC
	ldr r0, [sp, #0x48]
	lsl r2, r4, #0x18
	ldrh r0, [r0, r1]
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x28]
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	lsr r2, r2, #0x18
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov16_02250DE4
	cmp r0, #0
	beq _0224C06E
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x78]
	add r0, r7, #0
	add r3, r4, #0
	bl ov16_022657AC
	mov r0, #6
	strb r0, [r5]
	b _0224C3AE
_0224C06E:
	mov r0, #0xd
	strb r0, [r5]
	b _0224C3AE
_0224C074:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0xff
	bne _0224C086
	mov r0, #3
	strb r0, [r5]
	b _0224C3AE
_0224C086:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0
	beq _0224C180
	mov r1, #0x23
	ldr r0, [sp, #0x50]
	lsl r1, r1, #8
	ldrb r0, [r0, r1]
	ldr r1, _0224C1B8 ; =0x000021AC
	sub r2, r0, #1
	ldr r0, [sp, #0x58]
	str r2, [r0, r1]
	mov r0, #0xd
	strb r0, [r5]
	ldr r1, _0224C1BC ; =0x0000314C
	mov r0, #4
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
	b _0224C3AE
_0224C0B2:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov16_022658E8
	mov r0, #8
	strb r0, [r5]
_0224C0C0:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0xff
	bne _0224C0D2
	mov r0, #0
	strb r0, [r5]
	b _0224C3AE
_0224C0D2:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0
	beq _0224C180
	ldr r0, [sp, #0x40]
	ldr r1, _0224C1AC ; =0x000021B0
	ldr r2, [r0, #0]
	ldr r0, [sp, #0x58]
	str r2, [r0, r1]
	mov r0, #0xd
	strb r0, [r5]
	b _0224C3AE
_0224C0EE:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	mov r6, #6
	bl ov16_02258BA8
	str r0, [sp, #0x5c]
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0223E1F8
	cmp r0, #4
	beq _0224C114
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0223E1F8
	cmp r0, #5
	bne _0224C14C
_0224C114:
	ldr r0, [sp, #0x28]
	cmp r0, #3
	beq _0224C132
	cmp r0, #7
	beq _0224C132
	cmp r0, #0x83
	beq _0224C132
	cmp r0, #0x13
	bne _0224C14C
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0223E1F8
	cmp r0, #4
	bne _0224C14C
_0224C132:
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0223E258
	lsl r1, r0, #4
	ldr r0, [sp, #0x1c]
	add r2, r0, r1
	ldr r0, _0224C1A4 ; =0x000021A8
	ldr r1, [r2, r0]
	cmp r1, #0xf
	bne _0224C14C
	add r0, #8
	ldr r6, [r2, r0]
_0224C14C:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0
	str r6, [sp, #4]
	bl ov16_02265A8C
	mov r0, #0xa
	strb r0, [r5]
_0224C162:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0xff
	bne _0224C174
	mov r0, #0
	strb r0, [r5]
	b _0224C3AE
_0224C174:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0
	bne _0224C182
_0224C180:
	b _0224C3AE
_0224C182:
	mov r3, #0x23
	ldr r0, [sp, #0x50]
	lsl r3, r3, #8
	ldrb r0, [r0, r3]
	ldr r1, _0224C1AC ; =0x000021B0
	sub r2, r0, #1
	ldr r0, [sp, #0x58]
	str r2, [r0, r1]
	ldr r0, [sp, #0x50]
	sub r1, #0x10
	ldrb r0, [r0, r3]
	sub r0, r0, #1
	strb r0, [r5, r1]
	mov r0, #0xd
	strb r0, [r5]
	b _0224C3AE
	nop
_0224C1A4: .word 0x000021A8
_0224C1A8: .word 0x00000251
_0224C1AC: .word 0x000021B0
_0224C1B0: .word 0x000030BC
_0224C1B4: .word 0x00002D4C
_0224C1B8: .word 0x000021AC
_0224C1BC: .word 0x0000314C
_0224C1C0:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0224C1E0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r3, _0224C438 ; =0x000003BB
	add r0, r7, #0
	add r2, r4, #0
	bl ov16_02265B2C
	mov r0, #0xc
	strb r0, [r5]
	b _0224C3AE
_0224C1E0:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0224C24C
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _0224C24C
	add r0, r7, #0
	bl ov16_0223EBEC
	mov r1, #0x10
	tst r0, r1
	beq _0224C210
	add r0, r7, #0
	mov r1, #1
	bl ov16_0223F720
	add r0, r7, #0
	bl ov16_0223DF10
	add r1, r0, #0
	add r0, r7, #0
	bl ov16_0225B444
	b _0224C3AE
_0224C210:
	mov r1, #0
	add r0, sp, #0x78
	strb r1, [r0, #5]
	ldr r1, _0224C43C ; =0x00000319
	add r2, sp, #0x7c
	strh r1, [r0, #6]
	mov r0, sp
	str r0, [sp, #0x70]
	sub r0, #8
	str r0, [sp, #0x70]
	add r3, r0, #0
	mov r6, #4
_0224C228:
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r6, r6, #1
	bne _0224C228
	ldr r0, [r2, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	ldr r0, [sp, #0x70]
	ldmia r0!, {r2, r3}
	str r0, [sp, #0x70]
	add r0, r7, #0
	bl ov16_02266168
	mov r0, #0xf
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5, #4]
	b _0224C3AE
_0224C24C:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	add r3, sp, #0x7c
	bl ov16_02255C00
	cmp r0, #0
	beq _0224C2B2
	add r0, r7, #0
	bl ov16_0223EBEC
	mov r1, #0x10
	tst r0, r1
	beq _0224C280
	add r0, r7, #0
	mov r1, #1
	bl ov16_0223F720
	add r0, r7, #0
	bl ov16_0223DF10
	add r1, r0, #0
	add r0, r7, #0
	bl ov16_0225B444
	b _0224C3AE
_0224C280:
	mov r0, sp
	str r0, [sp, #0x74]
	sub r0, #8
	str r0, [sp, #0x74]
	add r2, sp, #0x7c
	add r3, r0, #0
	mov r6, #4
_0224C28E:
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r6, r6, #1
	bne _0224C28E
	ldr r0, [r2, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	ldr r0, [sp, #0x74]
	ldmia r0!, {r2, r3}
	str r0, [sp, #0x74]
	add r0, r7, #0
	bl ov16_02266168
	mov r0, #0xf
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5, #4]
	b _0224C3AE
_0224C2B2:
	mov r0, #0xc
	strb r0, [r5]
	b _0224C3AE
_0224C2B8:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0224C2E2
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0
	beq _0224C2E6
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0xff
	bne _0224C2DC
	mov r0, #0
	strb r0, [r5]
	b _0224C2E6
_0224C2DC:
	mov r0, #0xd
	strb r0, [r5]
	b _0224C2E6
_0224C2E2:
	mov r0, #0xd
	strb r0, [r5]
_0224C2E6:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0224C3AE
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _0224C3AE
	ldrb r0, [r5]
	cmp r0, #0xd
	bne _0224C3AE
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0223E258
	ldr r1, [sp, #0x1c]
	mov r2, #0xd
	strb r2, [r1, r0]
	b _0224C3AE
_0224C308:
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0226647C
	ldr r0, [sp, #0x28]
	cmp r0, #7
	bne _0224C330
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0223E258
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1, r0]
	cmp r0, #0xe
	bne _0224C338
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_022666E0
	b _0224C338
_0224C330:
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_022666E0
_0224C338:
	mov r0, #0xe
	strb r0, [r5]
_0224C33C:
	ldr r0, [sp, #0x60]
	add r0, r0, #1
	str r0, [sp, #0x60]
	b _0224C3AE
_0224C344:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0
	beq _0224C3AE
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02252040
	ldrb r0, [r5, #4]
	strb r0, [r5]
	b _0224C3AE
_0224C35E:
	mov r1, #2
	add r0, sp, #0x78
	strb r1, [r0, #5]
	mov r1, #0x26
	lsl r1, r1, #4
	strh r1, [r0, #6]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov16_02255560
	str r0, [sp, #0x80]
	mov r0, sp
	sub r0, #8
	mov ip, r0
	add r2, sp, #0x7c
	add r3, r0, #0
	mov r6, #4
_0224C380:
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r6, r6, #1
	bne _0224C380
	ldr r0, [r2, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	mov r0, ip
	ldmia r0!, {r2, r3}
	add r0, r7, #0
	bl ov16_02266168
	mov r0, #0xf
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	b _0224C3AE
_0224C3A2:
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_022665C8
	ldrb r0, [r5, #4]
	strb r0, [r5]
_0224C3AE:
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x50]
	add r0, #0x10
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x54]
	add r4, r4, #1
	add r0, #0x40
	str r0, [sp, #0x54]
	mov r0, #1
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	add r1, #0xc0
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x48]
	add r1, r1, #2
	str r1, [sp, #0x48]
	ldr r1, [sp, #0x44]
	add r1, #0x10
	str r1, [sp, #0x44]
	ldr r1, [sp, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x64]
	cmp r4, r0
	bge _0224C3E8
	bl _0224BBA8
_0224C3E8:
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r1, r0
	bne _0224C434
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	bl ov16_02251694
	add r0, r7, #0
	mov r1, #0
	bl ov16_0223B748
	ldr r0, [sp, #0x1c]
	mov r1, #6
	str r1, [r0, #8]
	ldr r0, [sp, #0x64]
	mov r6, #0
	cmp r0, #0
	ble _0224C434
	ldr r4, [sp, #0x1c]
_0224C410:
	ldr r0, _0224C440 ; =0x000021A8
	ldr r0, [r4, r0]
	cmp r0, #0xf
	bne _0224C42A
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r3, r1, #0
	add r5, r3, r6
	ldr r3, _0224C444 ; =0x000021A0
	add r2, r6, #0
	ldrb r3, [r5, r3]
	bl ov16_0225A200
_0224C42A:
	ldr r0, [sp, #0x64]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _0224C410
_0224C434:
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C438: .word 0x000003BB
_0224C43C: .word 0x00000319
_0224C440: .word 0x000021A8
_0224C444: .word 0x000021A0
	thumb_func_end ov16_0224BB28

	thumb_func_start ov16_0224C448
ov16_0224C448: ; 0x0224C448
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	add r5, r1, #0
	bl ov16_0223DF1C
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	bl ov16_0223DF0C
	mov r2, #0x22
	lsl r2, r2, #4
	mov r1, #0
	tst r2, r0
	beq _0224C47E
	ldr r0, [sp, #0x14]
	add r4, r1, #0
	cmp r0, #0
	ble _0224C47C
	ldr r1, _0224C5B8 ; =0x000021E8
_0224C470:
	add r0, r5, r4
	strb r4, [r0, r1]
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _0224C470
_0224C47C:
	b _0224C5B0
_0224C47E:
	mov r2, #4
	tst r0, r2
	beq _0224C4A6
	ldr r0, [sp, #0x14]
	add r4, r1, #0
	cmp r0, #0
	ble _0224C4BE
	ldr r2, _0224C5BC ; =0x000021B4
	add r3, r5, #0
_0224C490:
	ldr r0, [r3, r2]
	cmp r0, #4
	bne _0224C49A
	mov r1, #5
	b _0224C4BE
_0224C49A:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r3, #0x10
	cmp r4, r0
	blt _0224C490
	b _0224C4BE
_0224C4A6:
	ldr r0, _0224C5BC ; =0x000021B4
	ldr r0, [r5, r0]
	cmp r0, #4
	bne _0224C4B2
	add r4, r1, #0
	mov r1, #5
_0224C4B2:
	ldr r0, _0224C5C0 ; =0x000021D4
	ldr r0, [r5, r0]
	cmp r0, #4
	bne _0224C4BE
	mov r4, #2
	mov r1, #5
_0224C4BE:
	cmp r1, #5
	bne _0224C4E6
	ldr r0, _0224C5B8 ; =0x000021E8
	ldr r2, [sp, #0x14]
	strb r4, [r5, r0]
	mov r1, #1
	mov r0, #0
	cmp r2, #0
	ble _0224C5B0
	ldr r3, _0224C5B8 ; =0x000021E8
_0224C4D2:
	cmp r0, r4
	beq _0224C4DC
	add r2, r5, r1
	strb r0, [r2, r3]
	add r1, r1, #1
_0224C4DC:
	ldr r2, [sp, #0x14]
	add r0, r0, #1
	cmp r0, r2
	blt _0224C4D2
	b _0224C5B0
_0224C4E6:
	ldr r0, [sp, #0x14]
	mov r2, #0
	cmp r0, #0
	ble _0224C50E
	ldr r4, _0224C5B8 ; =0x000021E8
	add r0, r5, #0
	add r6, r4, #0
	sub r6, #0x34
_0224C4F6:
	ldr r3, [r0, r6]
	sub r3, r3, #2
	cmp r3, #1
	bhi _0224C504
	add r3, r5, r1
	strb r2, [r3, r4]
	add r1, r1, #1
_0224C504:
	ldr r3, [sp, #0x14]
	add r2, r2, #1
	add r0, #0x10
	cmp r2, r3
	blt _0224C4F6
_0224C50E:
	ldr r0, [sp, #0x14]
	mov r2, #0
	cmp r0, #0
	ble _0224C538
	ldr r4, _0224C5B8 ; =0x000021E8
	add r0, r5, #0
	add r6, r4, #0
	sub r6, #0x34
_0224C51E:
	ldr r3, [r0, r6]
	cmp r3, #2
	beq _0224C52E
	cmp r3, #3
	beq _0224C52E
	add r3, r5, r1
	strb r2, [r3, r4]
	add r1, r1, #1
_0224C52E:
	ldr r3, [sp, #0x14]
	add r2, r2, #1
	add r0, #0x10
	cmp r2, r3
	blt _0224C51E
_0224C538:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _0224C5B0
_0224C546:
	ldr r0, [sp, #8]
	add r7, r0, #1
	ldr r0, [sp, #0x14]
	cmp r7, r0
	bge _0224C5A4
	ldr r0, [sp, #8]
	add r0, r5, r0
	str r0, [sp, #0x10]
_0224C556:
	ldr r1, [sp, #0x10]
	ldr r0, _0224C5B8 ; =0x000021E8
	ldrb r6, [r1, r0]
	add r1, r5, r7
	ldrb r4, [r1, r0]
	lsl r0, r6, #4
	str r1, [sp, #0xc]
	add r1, r5, r0
	ldr r0, _0224C5BC ; =0x000021B4
	ldr r0, [r1, r0]
	lsl r1, r4, #4
	add r2, r5, r1
	ldr r1, _0224C5BC ; =0x000021B4
	ldr r1, [r2, r1]
	cmp r0, r1
	bne _0224C59C
	cmp r0, #1
	beq _0224C57E
	mov r0, #1
	b _0224C580
_0224C57E:
	mov r0, #0
_0224C580:
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov16_02252EC8
	cmp r0, #0
	beq _0224C59C
	ldr r1, [sp, #0x10]
	ldr r0, _0224C5B8 ; =0x000021E8
	strb r4, [r1, r0]
	ldr r1, [sp, #0xc]
	strb r6, [r1, r0]
_0224C59C:
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	cmp r7, r0
	blt _0224C556
_0224C5A4:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #8]
	cmp r1, r0
	blt _0224C546
_0224C5B0:
	mov r0, #7
	str r0, [r5, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C5B8: .word 0x000021E8
_0224C5BC: .word 0x000021B4
_0224C5C0: .word 0x000021D4
	thumb_func_end ov16_0224C448

	thumb_func_start ov16_0224C5C4
ov16_0224C5C4: ; 0x0224C5C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	bl ov16_0223DF1C
	add r7, r0, #0
_0224C5D6:
	ldr r0, [r4, #0x28]
	cmp r0, #3
	bls _0224C5DE
	b _0224C6F0
_0224C5DE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224C5EA: ; jump table
	.short _0224C5F2 - _0224C5EA - 2 ; case 0
	.short _0224C68C - _0224C5EA - 2 ; case 1
	.short _0224C6CA - _0224C5EA - 2 ; case 2
	.short _0224C6E8 - _0224C5EA - 2 ; case 3
_0224C5F2:
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bge _0224C680
	add r6, r4, #0
	add r6, #0x2c
_0224C5FC:
	add r1, r4, r0
	ldr r0, _0224C704 ; =0x000021E8
	ldrb r5, [r1, r0]
	add r0, r5, #0
	bl sub_020787CC
	ldr r1, _0224C708 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	ldr r0, [r6, #0]
	beq _0224C618
	add r0, r0, #1
	str r0, [r6, #0]
	b _0224C67A
_0224C618:
	add r0, r0, #1
	str r0, [r6, #0]
	mov r0, #0xc0
	mul r0, r5
	add r1, r4, r0
	ldr r0, _0224C70C ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	bne _0224C67A
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02255570
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	bne _0224C67A
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02255EC0
	cmp r0, #0
	bne _0224C67A
	lsl r0, r5, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _0224C67A
	ldr r0, [sp]
	bl ov16_02266AA0
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe8
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #8
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224C67A:
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	blt _0224C5FC
_0224C680:
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0224C6F0
_0224C68C:
	mov r6, #0
	cmp r7, #0
	ble _0224C6C2
	add r5, r4, #0
_0224C694:
	ldr r0, _0224C710 ; =0x00002DB0
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x16
	tst r0, r1
	beq _0224C6BA
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02255570
	cmp r0, #0x63
	beq _0224C6BA
	ldr r0, _0224C710 ; =0x00002DB0
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x16
	and r1, r0
	ldr r0, _0224C710 ; =0x00002DB0
	str r1, [r5, r0]
_0224C6BA:
	add r6, r6, #1
	add r5, #0xc0
	cmp r6, r7
	blt _0224C694
_0224C6C2:
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0224C6F0
_0224C6CA:
	mov r6, #0
	add r5, r4, #0
_0224C6CE:
	ldr r0, [sp]
	bl ov16_0223F4BC
	ldr r1, _0224C714 ; =0x0000310C
	add r6, r6, #1
	strh r0, [r5, r1]
	add r5, r5, #2
	cmp r6, #4
	blt _0224C6CE
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _0224C6F0
_0224C6E8:
	mov r0, #0
	str r0, [r4, #0x28]
	mov r0, #2
	str r0, [sp, #4]
_0224C6F0:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0224C6F8
	b _0224C5D6
_0224C6F8:
	cmp r0, #2
	bne _0224C700
	mov r0, #8
	str r0, [r4, #8]
_0224C700:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C704: .word 0x000021E8
_0224C708: .word 0x00003108
_0224C70C: .word 0x00002DAC
_0224C710: .word 0x00002DB0
_0224C714: .word 0x0000310C
	thumb_func_end ov16_0224C5C4

	thumb_func_start ov16_0224C718
ov16_0224C718: ; 0x0224C718
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	bl ov16_0223DF1C
	add r5, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0225B444
	cmp r0, #0
	bne _0224C784
	ldr r1, _0224C788 ; =0x00003150
	mov r0, #0
	str r0, [r4, r1]
	cmp r5, #0
	ble _0224C754
	ldr r3, _0224C788 ; =0x00003150
	ldr r2, _0224C78C ; =0x000021A8
	add r1, r4, #0
_0224C740:
	ldr r6, [r1, r2]
	cmp r6, #0x27
	beq _0224C74C
	ldr r6, [r4, r3]
	add r6, r6, #1
	str r6, [r4, r3]
_0224C74C:
	add r0, r0, #1
	add r1, #0x10
	cmp r0, r5
	blt _0224C740
_0224C754:
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_02255FBC
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, r5
	bne _0224C774
	add r0, r4, #0
	mov r1, #0
	add r0, #0xec
	str r1, [r0, #0]
	mov r0, #9
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224C774:
	add r1, r4, r0
	ldr r0, _0224C790 ; =0x000021E8
	ldrb r1, [r1, r0]
	sub r0, #0x40
	lsl r1, r1, #4
	add r1, r4, r1
	ldr r0, [r1, r0]
	str r0, [r4, #8]
_0224C784:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C788: .word 0x00003150
_0224C78C: .word 0x000021A8
_0224C790: .word 0x000021E8
	thumb_func_end ov16_0224C718

	thumb_func_start ov16_0224C794
ov16_0224C794: ; 0x0224C794
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp]
	add r4, r1, #0
	mov r5, #0
	bl ov16_0223DF1C
	str r0, [sp, #4]
_0224C7A4:
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #1
	bl ov16_02250EF4
	cmp r0, #1
	beq _0224C7CE
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r1, #0
	bl ov16_02250F98
	cmp r0, #1
	beq _0224C7CE
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_02250A48
	cmp r0, #1
	bne _0224C7D0
_0224C7CE:
	b _0224CF76
_0224C7D0:
	ldr r0, [r4, #0x10]
	cmp r0, #0xd
	bhi _0224C8AA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224C7E2: ; jump table
	.short _0224C7FE - _0224C7E2 - 2 ; case 0
	.short _0224C8B8 - _0224C7E2 - 2 ; case 1
	.short _0224C962 - _0224C7E2 - 2 ; case 2
	.short _0224CA0E - _0224C7E2 - 2 ; case 3
	.short _0224CABC - _0224C7E2 - 2 ; case 4
	.short _0224CB38 - _0224C7E2 - 2 ; case 5
	.short _0224CBB4 - _0224C7E2 - 2 ; case 6
	.short _0224CC74 - _0224C7E2 - 2 ; case 7
	.short _0224CD04 - _0224C7E2 - 2 ; case 8
	.short _0224CD94 - _0224C7E2 - 2 ; case 9
	.short _0224CE28 - _0224C7E2 - 2 ; case 10
	.short _0224CEBE - _0224C7E2 - 2 ; case 11
	.short _0224CF00 - _0224C7E2 - 2 ; case 12
	.short _0224CF58 - _0224C7E2 - 2 ; case 13
_0224C7FE:
	ldr r6, [r4, #0x14]
	cmp r6, #2
	bge _0224C8A6
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x38]
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0x14
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0x1c
	str r0, [sp, #0x18]
_0224C81C:
	lsl r0, r6, #2
	mov r1, #0x6f
	add r0, r4, r0
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r1, #1
	tst r1, r2
	beq _0224C892
	ldr r1, [sp, #0x38]
	lsl r3, r6, #3
	ldr r7, [r1, r3]
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	str r7, [sp, #0x2c]
	bic r1, r2
	str r1, [sp, #0x2c]
	lsl r1, r7, #0x1b
	lsr r1, r1, #0x1d
	sub r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r2, r1, #0x1b
	ldr r1, [sp, #0x2c]
	orr r2, r1
	ldr r1, [sp, #0x38]
	str r2, [r1, r3]
	ldr r1, [r1, r3]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1d
	bne _0224C892
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	ldr r1, [sp, #0x1c]
	bic r2, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r2, [r0, r1]
	mov r1, #0x73
	add r0, r1, #0
	add r0, #0xb1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x32
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl ov16_0225B120
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_0224C892:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #8]
	cmp r5, #0
	str r1, [r0, #0]
	bne _0224C8A6
	ldr r6, [r4, #0x14]
	cmp r6, #2
	blt _0224C81C
_0224C8A6:
	cmp r5, #0
	beq _0224C8AC
_0224C8AA:
	b _0224CF5A
_0224C8AC:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _0224CF5A
_0224C8B8:
	ldr r6, [r4, #0x14]
	cmp r6, #2
	bge _0224C952
	mov r0, #0x71
	lsl r0, r0, #2
	add r7, r4, r0
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x14
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x20]
_0224C8D0:
	lsl r0, r6, #2
	add r3, r4, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r3, r0]
	mov r0, #2
	tst r0, r1
	beq _0224C93E
	lsl r2, r6, #3
	ldr r1, [r7, r2]
	ldr r0, _0224CBF0 ; =0xFFFFFC7F
	and r0, r1
	str r0, [sp, #0x30]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1d
	sub r0, r0, #1
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x16
	ldr r0, [sp, #0x30]
	orr r0, r1
	str r0, [r7, r2]
	ldr r0, [r7, r2]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1d
	bne _0224C93E
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldr r1, [sp, #0x20]
	mov r2, #0x32
	bic r0, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r3, r1]
	mov r1, #0x71
	add r0, r1, #0
	add r0, #0xb3
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl ov16_0225B120
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_0224C93E:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	cmp r5, #0
	str r1, [r0, #0]
	bne _0224C952
	ldr r6, [r4, #0x14]
	cmp r6, #2
	blt _0224C8D0
_0224C952:
	cmp r5, #0
	bne _0224CA00
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _0224CF5A
_0224C962:
	ldr r6, [r4, #0x14]
	cmp r6, #2
	bge _0224C9FC
	mov r0, #0x71
	lsl r0, r0, #2
	add r7, r4, r0
	add r0, r4, #0
	str r0, [sp, #0x10]
	add r0, #0x14
	str r0, [sp, #0x10]
	mov r0, #0x40
	str r0, [sp, #0x24]
_0224C97A:
	lsl r0, r6, #2
	add r3, r4, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r3, r0]
	mov r0, #0x40
	tst r0, r1
	beq _0224C9E8
	lsl r2, r6, #3
	ldr r1, [r7, r2]
	ldr r0, _0224CBF4 ; =0xFFFF8FFF
	and r0, r1
	str r0, [sp, #0x34]
	lsl r0, r1, #0x11
	lsr r0, r0, #0x1d
	sub r0, r0, #1
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x11
	ldr r0, [sp, #0x34]
	orr r0, r1
	str r0, [r7, r2]
	ldr r0, [r7, r2]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1d
	bne _0224C9E8
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldr r1, [sp, #0x24]
	mov r2, #0x32
	bic r0, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r3, r1]
	mov r1, #0x36
	add r0, r1, #0
	add r0, #0xee
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl ov16_0225B120
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_0224C9E8:
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	cmp r5, #0
	str r1, [r0, #0]
	bne _0224C9FC
	ldr r6, [r4, #0x14]
	cmp r6, #2
	blt _0224C97A
_0224C9FC:
	cmp r5, #0
	beq _0224CA02
_0224CA00:
	b _0224CF5A
_0224CA02:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _0224CF5A
_0224CA0E:
	ldr r7, [r4, #0x14]
	cmp r7, #2
	bge _0224CAAC
	mov r0, #0x71
	lsl r0, r0, #2
	add r6, r4, r0
	add r0, r4, #0
	str r0, [sp, #0x14]
	add r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #8
	str r0, [sp, #0x28]
_0224CA26:
	lsl r0, r7, #2
	add r3, r4, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r3, r0]
	mov r0, #8
	tst r0, r1
	beq _0224CA98
	lsl r0, r7, #3
	ldr r2, [r6, r0]
	ldr r1, _0224CBF8 ; =0xFFF1FFFF
	and r1, r2
	mov ip, r1
	lsl r1, r2, #0xc
	lsr r1, r1, #0x1d
	sub r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r2, r1, #0xc
	mov r1, ip
	orr r1, r2
	str r1, [r6, r0]
	ldr r1, [r6, r0]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x1d
	bne _0224CA98
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	ldr r2, [sp, #0x28]
	bic r1, r2
	mov r2, #0x6f
	lsl r2, r2, #2
	str r1, [r3, r2]
	ldr r0, [r6, r0]
	lsl r0, r0, #0xf
	lsr r1, r0, #0x1e
	add r0, r2, #0
	sub r0, #0xa4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x6e
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r7, #0
	bl ov16_0225B120
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_0224CA98:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	cmp r5, #0
	str r1, [r0, #0]
	bne _0224CAAC
	ldr r7, [r4, #0x14]
	cmp r7, #2
	blt _0224CA26
_0224CAAC:
	cmp r5, #0
	bne _0224CB2A
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _0224CF5A
_0224CABC:
	ldr r6, [r4, #0x14]
	cmp r6, #2
	bge _0224CB26
	add r7, r4, #0
	add r7, #0x14
_0224CAC6:
	lsl r0, r6, #2
	mov r1, #0x6f
	add r0, r4, r0
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r1, #3
	lsl r1, r1, #8
	tst r1, r2
	beq _0224CB16
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	sub r1, #0xbc
	sub r2, r2, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r1
	bne _0224CB16
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe9
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl ov16_0225B120
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_0224CB16:
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	cmp r5, #0
	bne _0224CB26
	ldr r6, [r4, #0x14]
	cmp r6, #2
	blt _0224CAC6
_0224CB26:
	cmp r5, #0
	beq _0224CB2C
_0224CB2A:
	b _0224CF5A
_0224CB2C:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _0224CF5A
_0224CB38:
	ldr r6, [r4, #0x14]
	cmp r6, #2
	bge _0224CBA4
	add r7, r4, #0
	add r7, #0x14
_0224CB42:
	lsl r0, r6, #2
	mov r1, #0x6f
	add r0, r4, r0
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r1, #7
	lsl r1, r1, #0xc
	tst r1, r2
	beq _0224CB94
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0xc
	sub r2, r2, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	bne _0224CB94
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xfa
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl ov16_0225B120
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_0224CB94:
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	cmp r5, #0
	bne _0224CBA4
	ldr r6, [r4, #0x14]
	cmp r6, #2
	blt _0224CB42
_0224CBA4:
	cmp r5, #0
	bne _0224CC66
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _0224CF5A
_0224CBB4:
	ldr r0, [r4, #0x14]
	ldr r1, [sp, #4]
	cmp r0, r1
	bge _0224CC62
	add r6, r4, #0
	mov r7, #2
	add r6, #0x14
_0224CBC2:
	add r1, r4, r0
	ldr r0, _0224CBFC ; =0x000021EC
	ldrb r2, [r1, r0]
	mov r0, #0x63
	lsl r0, r0, #2
	add r1, r4, r2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224CC50
	mov r0, #0x63
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	sub r3, r0, #1
	mov r0, #0x63
	lsl r0, r0, #2
	strb r3, [r1, r0]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224CC50
	mov r0, #0xc0
	mul r0, r2
	ldr r3, _0224CC00 ; =0x00002D8C
	b _0224CC04
	; .align 2, 0
_0224CBF0: .word 0xFFFFFC7F
_0224CBF4: .word 0xFFFF8FFF
_0224CBF8: .word 0xFFF1FFFF
_0224CBFC: .word 0x000021EC
_0224CC00: .word 0x00002D8C
_0224CC04:
	add r0, r4, r0
	ldr r3, [r0, r3]
	cmp r3, #0
	beq _0224CC50
	mov r3, #0x46
	lsl r3, r3, #2
	str r2, [r4, r3]
	add r3, r4, #0
	add r3, #0xf5
	strb r7, [r3]
	add r5, r4, #0
	ldr r3, _0224CF3C ; =0x00000215
	add r5, #0xf6
	strh r3, [r5]
	sub r3, #0x5d
	ldrb r1, [r1, r3]
	lsl r1, r1, #8
	orr r2, r1
	add r1, r4, #0
	add r1, #0xf8
	str r2, [r1, #0]
	ldr r1, _0224CF40 ; =0x00002D90
	ldr r0, [r0, r1]
	add r1, r7, #0
	bl ov16_022563F8
	ldr r1, _0224CF44 ; =0x0000215C
	mov r2, #0x88
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r5, #1
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_0224CC50:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	cmp r5, #0
	bne _0224CC62
	ldr r0, [r4, #0x14]
	ldr r1, [sp, #4]
	cmp r0, r1
	blt _0224CBC2
_0224CC62:
	cmp r5, #0
	beq _0224CC68
_0224CC66:
	b _0224CF5A
_0224CC68:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _0224CF5A
_0224CC74:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r2, #3
	tst r2, r1
	beq _0224CCFC
	mov r2, #2
	tst r1, r2
	beq _0224CCAA
	add r0, r4, #0
	ldr r1, _0224CF48 ; =0x00000321
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224CCF2
_0224CCAA:
	add r1, r0, #4
	ldr r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #4
	str r2, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0224CCD0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xea
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224CCF2
_0224CCD0:
	add r0, r4, #0
	ldr r1, _0224CF48 ; =0x00000321
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_0224CCF2:
	mov r0, #0x4e
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r5, #1
_0224CCFC:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0224CF5A
_0224CD04:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r2, #0xc
	tst r2, r1
	beq _0224CD8C
	mov r2, #8
	tst r1, r2
	beq _0224CD3A
	add r0, r4, #0
	ldr r1, _0224CF4C ; =0x00000325
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224CD82
_0224CD3A:
	add r1, r0, #4
	ldr r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #4
	str r2, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0224CD60
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xeb
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224CD82
_0224CD60:
	add r0, r4, #0
	ldr r1, _0224CF4C ; =0x00000325
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_0224CD82:
	mov r0, #0x4e
	mov r1, #0x15
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r5, #1
_0224CD8C:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0224CF5A
_0224CD94:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r2, #0x30
	tst r2, r1
	beq _0224CE20
	mov r2, #0x20
	tst r1, r2
	beq _0224CDCC
	mov r1, #0xca
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224CE16
_0224CDCC:
	add r1, r0, #4
	ldr r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #4
	str r2, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0224CDF2
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xec
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224CE16
_0224CDF2:
	mov r1, #0xca
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_0224CE16:
	mov r0, #0x4e
	mov r1, #0x16
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r5, #1
_0224CE20:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0224CF5A
_0224CE28:
	mov r0, #6
	lsl r0, r0, #6
	ldr r2, [r4, r0]
	mov r1, #0xc0
	add r0, r2, #0
	tst r0, r1
	beq _0224CEB6
	mov r0, #0x80
	tst r0, r2
	beq _0224CE60
	add r0, r4, #0
	ldr r1, _0224CF50 ; =0x0000032B
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224CEAC
_0224CE60:
	add r0, r1, #0
	add r0, #0xc4
	ldr r0, [r4, r0]
	sub r2, r0, #1
	add r0, r1, #0
	add r0, #0xc4
	add r1, #0xc4
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _0224CE8A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xed
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224CEAC
_0224CE8A:
	add r0, r4, #0
	ldr r1, _0224CF50 ; =0x0000032B
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_0224CEAC:
	mov r0, #0x4e
	mov r1, #0x14
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r5, #1
_0224CEB6:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0224CF5A
_0224CEBE:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r1
	beq _0224CEF8
	add r0, r4, #0
	ldr r1, _0224CF54 ; =0x0000032D
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r1, #0x12
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r5, #1
_0224CEF8:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0224CF5A
_0224CF00:
	mov r1, #6
	lsl r1, r1, #6
	ldr r3, [r4, r1]
	mov r2, #7
	lsl r2, r2, #0xc
	add r0, r3, #0
	tst r0, r2
	beq _0224CF32
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r3, r0
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	tst r0, r2
	bne _0224CF32
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xee
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r5, #1
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_0224CF32:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0224CF5A
	nop
_0224CF3C: .word 0x00000215
_0224CF40: .word 0x00002D90
_0224CF44: .word 0x0000215C
_0224CF48: .word 0x00000321
_0224CF4C: .word 0x00000325
_0224CF50: .word 0x0000032B
_0224CF54: .word 0x0000032D
_0224CF58:
	mov r5, #2
_0224CF5A:
	cmp r5, #0
	bne _0224CF60
	b _0224C7A4
_0224CF60:
	cmp r5, #1
	bne _0224CF6A
	ldr r0, [sp]
	bl ov16_02266AA0
_0224CF6A:
	cmp r5, #2
	bne _0224CF76
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #0xa
	str r0, [r4, #8]
_0224CF76:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0224C794

	thumb_func_start ov16_0224CF7C
ov16_0224CF7C: ; 0x0224CF7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	mov r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #4]
	bl ov16_0223DF1C
	ldr r1, [r4, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #1
	bl ov16_02250EF4
	cmp r0, #1
	beq _0224CFB8
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r1, #0
	bl ov16_02250F98
	cmp r0, #1
	beq _0224CFB8
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ov16_02250A48
	cmp r0, #1
	bne _0224CFBC
_0224CFB8:
	bl _0224D998
_0224CFBC:
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	blt _0224CFC8
	bl _0224D98E
_0224CFC8:
	ldr r0, _0224D2F8 ; =0x000021EC
	add r1, r4, r1
	ldrb r5, [r1, r0]
	add r0, r5, #0
	bl sub_020787CC
	ldr r1, _0224D2FC ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	beq _0224CFE6
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	bl _0224D982
_0224CFE6:
	ldr r0, [r4, #0x18]
	cmp r0, #0x1a
	bls _0224CFF0
	bl _0224D972
_0224CFF0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224CFFC: ; jump table
	.short _0224D032 - _0224CFFC - 2 ; case 0
	.short _0224D09A - _0224CFFC - 2 ; case 1
	.short _0224D11C - _0224CFFC - 2 ; case 2
	.short _0224D138 - _0224CFFC - 2 ; case 3
	.short _0224D154 - _0224CFFC - 2 ; case 4
	.short _0224D170 - _0224CFFC - 2 ; case 5
	.short _0224D1DA - _0224CFFC - 2 ; case 6
	.short _0224D22C - _0224CFFC - 2 ; case 7
	.short _0224D2AC - _0224CFFC - 2 ; case 8
	.short _0224D2E8 - _0224CFFC - 2 ; case 9
	.short _0224D356 - _0224CFFC - 2 ; case 10
	.short _0224D394 - _0224CFFC - 2 ; case 11
	.short _0224D40C - _0224CFFC - 2 ; case 12
	.short _0224D490 - _0224CFFC - 2 ; case 13
	.short _0224D590 - _0224CFFC - 2 ; case 14
	.short _0224D5F8 - _0224CFFC - 2 ; case 15
	.short _0224D6AC - _0224CFFC - 2 ; case 16
	.short _0224D73C - _0224CFFC - 2 ; case 17
	.short _0224D75A - _0224CFFC - 2 ; case 18
	.short _0224D7A0 - _0224CFFC - 2 ; case 19
	.short _0224D7EC - _0224CFFC - 2 ; case 20
	.short _0224D836 - _0224CFFC - 2 ; case 21
	.short _0224D880 - _0224CFFC - 2 ; case 22
	.short _0224D8CA - _0224CFFC - 2 ; case 23
	.short _0224D91A - _0224CFFC - 2 ; case 24
	.short _0224D94E - _0224CFFC - 2 ; case 25
	.short _0224D968 - _0224CFFC - 2 ; case 26
_0224D032:
	mov r6, #0xc0
	add r0, r5, #0
	mul r0, r6
	add r3, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	mov r1, #1
	ldr r2, [r3, r0]
	lsl r1, r1, #0xa
	tst r1, r2
	beq _0224D090
	add r1, r0, #0
	sub r1, #0x34
	ldr r2, [r3, r1]
	add r1, r0, #0
	sub r1, #0x30
	ldr r1, [r3, r1]
	cmp r2, r1
	beq _0224D090
	cmp r2, #0
	beq _0224D090
	add r0, #0xc
	ldr r0, [r3, r0]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1d
	beq _0224D076
	add r6, #0x58
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xef
	str r5, [r4, r6]
	bl ov16_02251E1C
	b _0224D084
_0224D076:
	add r6, #0x58
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x89
	str r5, [r4, r6]
	bl ov16_02251E1C
_0224D084:
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D090:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	bl _0224D972
_0224D09A:
	mov r6, #0xc0
	add r0, r5, #0
	mul r0, r6
	add r3, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	mov r1, #1
	ldr r2, [r3, r0]
	lsl r1, r1, #0x18
	tst r1, r2
	beq _0224D112
	add r1, r0, #0
	sub r1, #0x34
	ldr r2, [r3, r1]
	add r1, r0, #0
	sub r1, #0x30
	ldr r1, [r3, r1]
	cmp r2, r1
	beq _0224D112
	cmp r2, #0
	beq _0224D112
	add r1, r0, #0
	add r1, #0xc
	ldr r1, [r3, r1]
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1d
	beq _0224D0E0
	add r6, #0x58
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xef
	str r5, [r4, r6]
	bl ov16_02251E1C
	b _0224D106
_0224D0E0:
	add r1, r6, #0
	add r1, #0x58
	str r5, [r4, r1]
	add r1, r6, #0
	add r1, #0xc8
	add r6, #0x64
	str r1, [r4, r6]
	sub r0, #0x30
	ldr r0, [r3, r0]
	mov r1, #0x10
	bl ov16_022563F8
	ldr r1, _0224D300 ; =0x0000215C
	mov r2, #0xa9
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
_0224D106:
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D112:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	bl _0224D972
_0224D11C:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	bl ov16_022562E8
	cmp r0, #1
	bne _0224D12E
	mov r0, #1
	str r0, [sp, #0x10]
_0224D12E:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	bl _0224D972
_0224D138:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	bl ov16_022579A4
	cmp r0, #1
	bne _0224D14A
	mov r0, #1
	str r0, [sp, #0x10]
_0224D14A:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	bl _0224D972
_0224D154:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	bl ov16_02258008
	cmp r0, #1
	bne _0224D166
	mov r0, #1
	str r0, [sp, #0x10]
_0224D166:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	bl _0224D972
_0224D170:
	mov r3, #0xc0
	add r0, r5, #0
	mul r0, r3
	mov r2, #0xb7
	add r6, r4, r0
	lsl r2, r2, #6
	ldr r0, [r6, r2]
	mov r1, #4
	tst r1, r0
	beq _0224D1D2
	mov r1, #3
	and r0, r1
	add r1, r0, #0
	mul r1, r3
	add r0, r4, r1
	sub r2, #0x34
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _0224D1D2
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _0224D1D2
	ldr r0, _0224D304 ; =0x00002D8C
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _0224D1D2
	add r0, #0x34
	ldr r1, [r6, r0]
	mov r0, #3
	and r1, r0
	mov r0, #0x47
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x45
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D1D2:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D1DA:
	mov r2, #0xc0
	add r0, r5, #0
	mul r0, r2
	ldr r3, _0224D308 ; =0x00002DAC
	add r0, r4, r0
	ldr r1, [r0, r3]
	mov r6, #8
	tst r1, r6
	beq _0224D224
	add r1, r3, #0
	sub r1, #0x20
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _0224D224
	add r2, #0x58
	str r5, [r4, r2]
	sub r3, #0x1c
	ldr r1, [r0, r3]
	add r0, r6, #0
	sub r0, #9
	mul r0, r1
	add r1, r6, #0
	bl ov16_022563F8
	ldr r1, _0224D300 ; =0x0000215C
	mov r2, #0x17
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D224:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D22C:
	mov r0, #0xc0
	mul r0, r5
	ldr r1, _0224D308 ; =0x00002DAC
	add r6, r4, r0
	ldr r0, [r6, r1]
	mov r2, #0x80
	tst r0, r2
	beq _0224D2A4
	add r0, r1, #0
	sub r0, #0x20
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0224D2A4
	add r2, #0x98
	str r5, [r4, r2]
	sub r1, #0x1c
	ldr r0, [r6, r1]
	mov r1, #0x10
	bl ov16_022563F8
	ldr r1, _0224D300 ; =0x0000215C
	str r0, [r4, r1]
	ldr r1, _0224D308 ; =0x00002DAC
	mov r0, #0xf
	ldr r2, [r6, r1]
	lsl r0, r0, #8
	add r3, r2, #0
	and r3, r0
	cmp r3, r0
	beq _0224D270
	mov r0, #1
	lsl r0, r0, #8
	add r0, r2, r0
	str r0, [r6, r1]
_0224D270:
	ldr r2, _0224D308 ; =0x00002DAC
	ldr r0, _0224D300 ; =0x0000215C
	ldr r3, [r6, r2]
	mov r2, #0xf
	lsl r2, r2, #8
	and r2, r3
	ldr r1, [r4, r0]
	lsr r2, r2, #8
	mul r2, r1
	str r2, [r4, r0]
	mov r1, #0
	ldr r2, [r4, r0]
	mvn r1, r1
	mul r1, r2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x17
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D2A4:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D2AC:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r6, r4, r1
	ldr r1, _0224D308 ; =0x00002DAC
	mov r2, #0x10
	ldr r3, [r6, r1]
	tst r2, r3
	beq _0224D2E0
	sub r1, #0x20
	ldr r1, [r6, r1]
	cmp r1, #0
	beq _0224D2E0
	add r0, #0x58
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1a
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D2E0:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D2E8:
	mov r6, #0xc0
	add r0, r5, #0
	mul r0, r6
	add r3, r4, r0
	ldr r7, _0224D30C ; =0x00002DB0
	ldr r0, _0224D2FC ; =0x00003108
	b _0224D310
	nop
_0224D2F8: .word 0x000021EC
_0224D2FC: .word 0x00003108
_0224D300: .word 0x0000215C
_0224D304: .word 0x00002D8C
_0224D308: .word 0x00002DAC
_0224D30C: .word 0x00002DB0
_0224D310:
	ldr r2, [r3, r7]
	lsl r0, r0, #0x18
	tst r0, r2
	beq _0224D34E
	add r0, r7, #0
	sub r0, #0x24
	ldr r0, [r3, r0]
	cmp r0, #0
	beq _0224D34E
	sub r0, r7, #4
	ldr r1, [r3, r0]
	mov r0, #7
	tst r0, r1
	beq _0224D348
	add r6, #0x58
	str r5, [r4, r6]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x5e
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
	b _0224D34E
_0224D348:
	ldr r0, _0224D650 ; =0xF7FFFFFF
	and r0, r2
	str r0, [r3, r7]
_0224D34E:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D356:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r6, r4, r1
	ldr r1, _0224D654 ; =0x00002DB0
	mov r2, #1
	ldr r3, [r6, r1]
	lsl r2, r2, #0x1c
	tst r2, r3
	beq _0224D38C
	sub r1, #0x24
	ldr r1, [r6, r1]
	cmp r1, #0
	beq _0224D38C
	add r0, #0x58
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x62
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D38C:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D394:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r6, r4, r1
	ldr r1, _0224D654 ; =0x00002DB0
	mov r7, #0xe
	ldr r3, [r6, r1]
	lsl r7, r7, #0xc
	add r2, r3, #0
	tst r2, r7
	beq _0224D404
	add r2, r1, #0
	sub r2, #0x24
	ldr r2, [r6, r2]
	cmp r2, #0
	beq _0224D404
	mov r2, #2
	lsl r2, r2, #0xc
	sub r2, r3, r2
	str r2, [r6, r1]
	ldr r2, [r6, r1]
	tst r2, r7
	beq _0224D3E0
	sub r1, #0x20
	ldr r1, [r6, r1]
	sub r0, #0xc1
	mul r0, r1
	mov r1, #0x10
	bl ov16_022563F8
	ldr r1, _0224D658 ; =0x0000215C
	mov r2, #0x3b
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	b _0224D3EA
_0224D3E0:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x3c
	bl ov16_02251E1C
_0224D3EA:
	ldr r0, _0224D65C ; =0x00002DEA
	ldrh r1, [r6, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #0xc
	str r5, [r4, r0]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D404:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D40C:
	mov r0, #0x7b
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r4, #0
	mov r2, #4
	add r3, r5, #0
	bl ov16_022555A4
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xc0
	mul r0, r5
	add r6, r4, r0
	ldr r0, _0224D660 ; =0x00002DAC
	ldr r1, [r6, r0]
	mov r0, #7
	tst r0, r1
	beq _0224D488
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _0224D488
	ldr r1, _0224D664 ; =0x00002D8C
	ldr r0, [r6, r1]
	cmp r0, #0
	beq _0224D488
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224D488
	add r0, r1, #4
	ldr r1, [r6, r0]
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	mov r1, #8
	bl ov16_022563F8
	ldr r1, _0224D658 ; =0x0000215C
	ldr r2, _0224D668 ; =0x00000107
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, _0224D66C ; =0x0000213C
	mov r1, #0x40
	ldr r2, [r4, r0]
	orr r2, r1
	str r2, [r4, r0]
	add r1, #0xd8
	str r5, [r4, r1]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D488:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D490:
	mov r0, #0xc0
	mul r0, r5
	add r7, r4, r0
	ldr r0, _0224D654 ; =0x00002DB0
	ldr r1, [r7, r0]
	mov r0, #0x70
	tst r0, r1
	beq _0224D580
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0224D4F2
_0224D4A8:
	mov r0, #0xc0
	mul r0, r6
	add r2, r4, r0
	ldr r0, _0224D660 ; =0x00002DAC
	ldr r1, [r2, r0]
	mov r0, #7
	tst r0, r1
	beq _0224D4E6
	ldr r0, _0224D664 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0224D4E6
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02255A4C
	cmp r0, #0x2b
	beq _0224D4E6
	mov r0, #0x46
	lsl r0, r0, #2
	str r6, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x13
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224D4F2
_0224D4E6:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #0xc]
	cmp r6, r0
	blt _0224D4A8
_0224D4F2:
	ldr r0, [sp, #0xc]
	cmp r6, r0
	beq _0224D4FE
	mov r0, #2
	str r0, [sp, #0x10]
	b _0224D972
_0224D4FE:
	ldr r0, _0224D654 ; =0x00002DB0
	ldr r1, [r7, r0]
	sub r1, #0x10
	str r1, [r7, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02255498
	cmp r0, #0
	ldr r2, _0224D654 ; =0x00002DB0
	beq _0224D538
	ldr r1, [r7, r2]
	mov r0, #0x70
	bic r1, r0
	mov r6, #0xf1
	add r0, r5, #0
	str r1, [r7, r2]
	bl sub_020787CC
	add r3, r6, #0
	add r3, #0x8f
	lsl r2, r0, #8
	add r0, r6, #0
	sub r0, #0xf2
	ldr r1, [r4, r3]
	eor r0, r2
	and r0, r1
	str r0, [r4, r3]
	b _0224D564
_0224D538:
	ldr r1, [r7, r2]
	mov r0, #0x70
	tst r0, r1
	beq _0224D544
	mov r6, #0xf0
	b _0224D564
_0224D544:
	mov r0, #0x70
	bic r1, r0
	mov r6, #0xf1
	add r0, r5, #0
	str r1, [r7, r2]
	bl sub_020787CC
	add r3, r6, #0
	add r3, #0x8f
	lsl r2, r0, #8
	add r0, r6, #0
	sub r0, #0xf2
	ldr r1, [r4, r3]
	eor r0, r2
	and r0, r1
	str r0, [r4, r3]
_0224D564:
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D580:
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bne _0224D588
	b _0224D972
_0224D588:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D590:
	mov r2, #0xc0
	add r0, r5, #0
	mul r0, r2
	add r6, r4, r0
	ldr r0, _0224D654 ; =0x00002DB0
	lsl r2, r2, #4
	ldr r1, [r6, r0]
	tst r2, r1
	beq _0224D5F0
	mov r2, #1
	lsl r2, r2, #0xa
	sub r1, r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02255498
	cmp r0, #0
	beq _0224D5C2
	ldr r1, _0224D654 ; =0x00002DB0
	ldr r0, _0224D670 ; =0xFFFFF3FF
	ldr r2, [r6, r1]
	and r0, r2
	str r0, [r6, r1]
	b _0224D5F0
_0224D5C2:
	ldr r0, _0224D654 ; =0x00002DB0
	ldr r1, [r6, r0]
	mov r0, #3
	lsl r0, r0, #0xa
	tst r0, r1
	bne _0224D5F0
	mov r0, #7
	tst r0, r1
	bne _0224D5F0
	add r0, r4, #0
	add r0, #0x94
	str r5, [r0, #0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x33
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D5F0:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D5F8:
	mov r0, #0xc0
	add r6, r5, #0
	mul r6, r0
	add r0, r4, r6
	ldr r1, _0224D674 ; =0x00002DE8
	mov ip, r0
	ldrh r3, [r0, r1]
	cmp r3, #0
	beq _0224D6A4
	ldr r7, _0224D678 ; =0x00002D4C
	mov r2, #0
	mov r1, ip
_0224D610:
	ldrh r0, [r1, r7]
	cmp r3, r0
	beq _0224D61E
	add r2, r2, #1
	add r1, r1, #2
	cmp r2, #4
	blt _0224D610
_0224D61E:
	cmp r2, #4
	bne _0224D62E
	ldr r0, _0224D67C ; =0x00002DC8
	add r1, r4, r0
	ldr r2, [r1, r6]
	mov r0, #7
	bic r2, r0
	str r2, [r1, r6]
_0224D62E:
	ldr r1, _0224D67C ; =0x00002DC8
	add r0, r4, r6
	ldr r0, [r0, r1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	beq _0224D680
	add r2, r4, r1
	ldr r1, [r2, r6]
	mov r3, #7
	bic r1, r3
	sub r3, r0, #1
	mov r0, #7
	and r0, r3
	orr r0, r1
	str r0, [r2, r6]
	b _0224D6A4
	nop
_0224D650: .word 0xF7FFFFFF
_0224D654: .word 0x00002DB0
_0224D658: .word 0x0000215C
_0224D65C: .word 0x00002DEA
_0224D660: .word 0x00002DAC
_0224D664: .word 0x00002D8C
_0224D668: .word 0x00000107
_0224D66C: .word 0x0000213C
_0224D670: .word 0xFFFFF3FF
_0224D674: .word 0x00002DE8
_0224D678: .word 0x00002D4C
_0224D67C: .word 0x00002DC8
_0224D680:
	mov r2, #0
	add r1, #0x20
	mov r0, ip
	strh r2, [r0, r1]
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x48
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D6A4:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D6AC:
	mov r0, #0xc0
	add r6, r5, #0
	mul r6, r0
	add r0, r4, r6
	ldr r1, _0224D99C ; =0x00002DEC
	str r0, [sp, #8]
	ldrh r2, [r0, r1]
	cmp r2, #0
	beq _0224D734
	ldr r7, _0224D9A0 ; =0x00002D4C
	mov r3, #0
	add r1, r0, #0
_0224D6C4:
	ldrh r0, [r1, r7]
	cmp r2, r0
	beq _0224D6D2
	add r3, r3, #1
	add r1, r1, #2
	cmp r3, #4
	blt _0224D6C4
_0224D6D2:
	cmp r3, #4
	beq _0224D6E4
	beq _0224D6F0
	ldr r0, [sp, #8]
	add r1, r0, r3
	ldr r0, _0224D9A4 ; =0x00002D6C
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224D6F0
_0224D6E4:
	ldr r0, _0224D9A8 ; =0x00002DC8
	add r2, r4, r0
	ldr r1, [r2, r6]
	mov r0, #0x38
	bic r1, r0
	str r1, [r2, r6]
_0224D6F0:
	ldr r1, _0224D9A8 ; =0x00002DC8
	add r0, r4, r6
	ldr r0, [r0, r1]
	lsl r0, r0, #0x1a
	lsr r2, r0, #0x1d
	beq _0224D710
	add r1, r4, r1
	sub r2, r2, #1
	lsl r2, r2, #0x1d
	ldr r0, [r1, r6]
	mov r3, #0x38
	bic r0, r3
	lsr r2, r2, #0x1a
	orr r0, r2
	str r0, [r1, r6]
	b _0224D734
_0224D710:
	ldr r0, [sp, #8]
	mov r2, #0
	add r1, #0x24
	strh r2, [r0, r1]
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4a
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D734:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D73C:
	mov r0, #0xc0
	mul r0, r5
	add r3, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r3, r0]
	mov r1, #0x18
	tst r1, r2
	beq _0224D752
	sub r2, #8
	str r2, [r3, r0]
_0224D752:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D75A:
	mov r0, #0xc0
	mul r0, r5
	ldr r2, _0224D9A8 ; =0x00002DC8
	add r5, r4, r0
	ldr r1, [r5, r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1e
	beq _0224D798
	add r3, r4, r2
	ldr r6, [r3, r0]
	mov r1, #0xc0
	add r7, r6, #0
	bic r7, r1
	lsl r1, r6, #0x18
	lsr r1, r1, #0x1e
	sub r1, r1, #1
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x18
	orr r1, r7
	str r1, [r3, r0]
	ldr r0, [r3, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _0224D798
	add r0, r2, #0
	sub r0, #8
	ldr r1, [r5, r0]
	ldr r0, _0224D9AC ; =0xFFFFFDFF
	sub r2, #8
	and r0, r1
	str r0, [r5, r2]
_0224D798:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D7A0:
	ldr r0, _0224D9A8 ; =0x00002DC8
	mov r2, #0xc0
	add r3, r5, #0
	mul r3, r2
	add r1, r4, r0
	ldr r7, [r1, r3]
	lsl r0, r7, #0x15
	lsr r6, r0, #0x1d
	beq _0224D7E4
	ldr r0, _0224D9B0 ; =0xFFFFF8FF
	and r7, r0
	sub r0, r6, #1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x15
	orr r0, r7
	str r0, [r1, r3]
	ldr r0, [r1, r3]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	bne _0224D7E4
	add r0, r2, #0
	add r0, #0x58
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	add r2, #0x60
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D7E4:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D7EC:
	ldr r0, _0224D9B4 ; =0x00002DCC
	mov r1, #0xc0
	add r3, r5, #0
	mul r3, r1
	add r2, r4, r0
	ldr r7, [r2, r3]
	lsl r0, r7, #0x10
	lsr r6, r0, #0x1d
	beq _0224D82E
	ldr r0, _0224D9B8 ; =0xFFFF1FFF
	and r7, r0
	sub r0, r6, #1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x10
	orr r0, r7
	str r0, [r2, r3]
	ldr r0, [r2, r3]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	bne _0224D82E
	add r1, #0x58
	str r5, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf2
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D82E:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D836:
	ldr r0, _0224D9B4 ; =0x00002DCC
	mov r1, #0xc0
	add r3, r5, #0
	mul r3, r1
	add r2, r4, r0
	ldr r7, [r2, r3]
	lsl r0, r7, #0xd
	lsr r6, r0, #0x1d
	beq _0224D878
	ldr r0, _0224D9BC ; =0xFFF8FFFF
	and r7, r0
	sub r0, r6, #1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xd
	orr r0, r7
	str r0, [r2, r3]
	ldr r0, [r2, r3]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1d
	bne _0224D878
	add r1, #0x58
	str r5, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf3
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D878:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D880:
	ldr r0, _0224D9B4 ; =0x00002DCC
	mov r1, #0xc0
	add r3, r5, #0
	mul r3, r1
	add r2, r4, r0
	ldr r7, [r2, r3]
	lsl r0, r7, #0xa
	lsr r6, r0, #0x1d
	beq _0224D8C2
	ldr r0, _0224D9C0 ; =0xFFC7FFFF
	and r7, r0
	sub r0, r6, #1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xa
	orr r0, r7
	str r0, [r2, r3]
	ldr r0, [r2, r3]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	bne _0224D8C2
	add r1, #0x58
	str r5, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf4
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D8C2:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D8CA:
	mov r6, #0xc0
	add r0, r5, #0
	mul r0, r6
	mov r3, #0xb7
	add r1, r4, r0
	lsl r3, r3, #6
	ldr r0, [r1, r3]
	lsl r2, r6, #5
	tst r2, r0
	beq _0224D912
	mov r2, #2
	lsl r2, r2, #0xa
	sub r0, r0, r2
	str r0, [r1, r3]
	ldr r1, [r1, r3]
	lsl r0, r6, #5
	tst r0, r1
	bne _0224D912
	add r0, r4, #0
	add r0, #0x94
	str r5, [r0, #0]
	add r0, r4, #0
	mov r1, #4
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D912:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D91A:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	add r3, sp, #0x14
	bl ov16_02258104
	cmp r0, #1
	bne _0224D946
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224D946:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D94E:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	bl ov16_022587A4
	cmp r0, #1
	bne _0224D960
	mov r0, #1
	str r0, [sp, #0x10]
_0224D960:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224D972
_0224D968:
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
_0224D972:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0224D982
	ldr r0, [sp, #4]
	bl ov16_02266AA0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0224D982:
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _0224D98E
	bl _0224CFC8
_0224D98E:
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	mov r0, #0xb
	str r0, [r4, #8]
_0224D998:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D99C: .word 0x00002DEC
_0224D9A0: .word 0x00002D4C
_0224D9A4: .word 0x00002D6C
_0224D9A8: .word 0x00002DC8
_0224D9AC: .word 0xFFFFFDFF
_0224D9B0: .word 0xFFFFF8FF
_0224D9B4: .word 0x00002DCC
_0224D9B8: .word 0xFFFF1FFF
_0224D9BC: .word 0xFFF8FFFF
_0224D9C0: .word 0xFFC7FFFF
	thumb_func_end ov16_0224CF7C

	thumb_func_start ov16_0224D9C4
ov16_0224D9C4: ; 0x0224D9C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	str r0, [sp]
	bl ov16_0223DF1C
	ldr r1, [r4, #8]
	add r7, r0, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #1
	bl ov16_02250EF4
	cmp r0, #1
	bne _0224D9E4
	b _0224DBF4
_0224D9E4:
	ldr r0, [sp]
	bl ov16_02266AA0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224D9FC
	cmp r0, #1
	beq _0224DAE6
	cmp r0, #2
	bne _0224D9FA
	b _0224DBAC
_0224D9FA:
	b _0224DBEA
_0224D9FC:
	ldr r0, [r4, #0x24]
	cmp r0, r7
	bge _0224DADC
	add r5, r4, #0
	add r5, #0x24
_0224DA06:
	add r1, r4, r0
	ldr r0, _0224DBF8 ; =0x000021EC
	ldrb r6, [r1, r0]
	add r0, r6, #0
	bl sub_020787CC
	ldr r1, _0224DBFC ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	ldr r0, [r5, #0]
	beq _0224DA22
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224DAD6
_0224DA22:
	add r0, r0, #1
	mov r1, #0x62
	str r0, [r5, #0]
	add r0, r4, r6
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _0224DAD6
	mov r1, #0x62
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	mov r1, #0x62
	lsl r1, r1, #2
	strb r2, [r0, r1]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0224DAD6
	mov r0, #0xc0
	mul r0, r6
	add r1, r4, r0
	ldr r0, _0224DC00 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224DAD6
	ldr r0, [sp]
	add r1, r6, #0
	bl ov16_0223E208
	mov r2, #0x6f
	lsl r2, r2, #2
	add r1, r4, r2
	lsl r5, r0, #2
	ldr r3, [r1, r5]
	mov r0, #0x10
	bic r3, r0
	add r0, r4, #0
	str r3, [r1, r5]
	add r2, #0x1f
	add r0, #0xf6
	strh r2, [r0]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02255560
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1, #0]
	mov r0, #0x19
	lsl r0, r0, #4
	add r1, r4, #0
	add r3, r4, r0
	lsl r2, r6, #1
	ldrh r5, [r3, r2]
	add r1, #0xfc
	str r5, [r1, #0]
	add r1, r0, #0
	sub r1, #0x78
	str r6, [r4, r1]
	lsl r1, r6, #2
	add r5, r0, #0
	add r1, r4, r1
	add r5, #8
	ldr r6, [r1, r5]
	add r5, r0, #0
	sub r5, #0x74
	str r6, [r4, r5]
	ldrh r3, [r3, r2]
	add r2, r0, #0
	sub r2, #0x6c
	str r3, [r4, r2]
	add r0, #0x18
	ldr r1, [r1, r0]
	ldr r0, _0224DC04 ; =0x0000215C
	mov r2, #0x79
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #8
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224DAD6:
	ldr r0, [r4, #0x24]
	cmp r0, r7
	blt _0224DA06
_0224DADC:
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x24]
_0224DAE6:
	ldr r0, [r4, #0x24]
	cmp r0, r7
	bge _0224DBA2
	add r5, r4, #0
	add r5, #0x24
_0224DAF0:
	add r1, r4, r0
	ldr r0, _0224DBF8 ; =0x000021EC
	ldrb r6, [r1, r0]
	add r0, r6, #0
	bl sub_020787CC
	ldr r1, _0224DBFC ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	ldr r0, [r5, #0]
	beq _0224DB0C
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224DB9C
_0224DB0C:
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0xc0
	mul r0, r6
	mov r1, #0xb7
	add r3, r4, r0
	lsl r1, r1, #6
	ldr r2, [r3, r1]
	mov r1, #0x20
	tst r1, r2
	beq _0224DB9C
	ldr r7, _0224DC08 ; =0x00002DC8
	add r2, r4, r7
	ldr r1, [r2, r0]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1e
	bne _0224DB66
	add r1, r7, #0
	sub r1, #8
	add r1, r4, r1
	str r1, [sp, #4]
	ldr r1, [r1, r0]
	mov r5, #0x20
	bic r1, r5
	ldr r5, [sp, #4]
	sub r7, #0x3c
	str r1, [r5, r0]
	ldr r0, [r2, r0]
	lsl r0, r0, #0x11
	lsr r1, r0, #0x1e
	mov r0, #0x13
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r3, r7]
	ldr r1, _0224DC04 ; =0x0000215C
	neg r0, r0
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x20
	ldr r2, [r4, r0]
	mov r0, #0x40
	orr r0, r2
	sub r1, #0x20
	str r0, [r4, r1]
	b _0224DB80
_0224DB66:
	mov r3, #0x13
	lsl r3, r3, #4
	str r1, [r4, r3]
	ldr r3, [r2, r0]
	ldr r1, _0224DC0C ; =0xFFFF9FFF
	and r1, r3
	lsl r3, r3, #0x11
	lsr r3, r3, #0x1e
	sub r3, r3, #1
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x11
	orr r1, r3
	str r1, [r2, r0]
_0224DB80:
	mov r0, #0x46
	lsl r0, r0, #2
	str r6, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x66
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #8
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224DB9C:
	ldr r0, [r4, #0x24]
	cmp r0, r7
	blt _0224DAF0
_0224DBA2:
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x24]
_0224DBAC:
	mov r1, #6
	lsl r1, r1, #6
	ldr r3, [r4, r1]
	mov r2, #7
	lsl r2, r2, #0x10
	add r0, r3, #0
	tst r0, r2
	beq _0224DBE0
	mov r0, #1
	lsl r0, r0, #0x10
	sub r0, r3, r0
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	tst r0, r2
	bne _0224DBE0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xfb
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #8
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224DBE0:
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x24]
_0224DBEA:
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	mov r0, #0xc
	str r0, [r4, #8]
_0224DBF4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DBF8: .word 0x000021EC
_0224DBFC: .word 0x00003108
_0224DC00: .word 0x00002D8C
_0224DC04: .word 0x0000215C
_0224DC08: .word 0x00002DC8
_0224DC0C: .word 0xFFFF9FFF
	thumb_func_end ov16_0224D9C4

	thumb_func_start ov16_0224DC10
ov16_0224DC10: ; 0x0224DC10
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #8]
	add r5, r0, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov16_02250F98
	cmp r0, #1
	beq _0224DC64
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02250A48
	cmp r0, #1
	beq _0224DC64
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0225079C
	cmp r0, #1
	beq _0224DC64
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x24
	ldr r0, [r4, r0]
	add r1, #0x24
	add r0, r0, #1
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov16_022541C4
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02254990
	mov r0, #2
	str r0, [r4, #8]
_0224DC64:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0224DC10

	thumb_func_start ov16_0224DC68
ov16_0224DC68: ; 0x0224DC68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	mov r4, #0
	add r1, r5, r0
	ldr r0, _0224DD90 ; =0x000021E8
	ldrb r2, [r1, r0]
	lsl r0, r2, #6
	add r1, r5, r0
	mov r0, #0x75
	str r2, [r5, #0x64]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0224DC9C
	mov r0, #0xc1
	mov r1, #0xa5
	lsl r0, r0, #6
	str r1, [r5, r0]
	mov r4, #1
	b _0224DD60
_0224DC9C:
	mov r0, #0xc0
	mul r0, r2
	ldr r6, _0224DD94 ; =0x00002DEC
	add r0, r5, r0
	ldrh r1, [r0, r6]
	cmp r1, #0
	beq _0224DCC4
	add r3, r6, #2
	ldrh r3, [r0, r3]
	sub r6, #0xa0
	lsl r3, r3, #1
	add r0, r0, r3
	ldrh r0, [r0, r6]
	cmp r1, r0
	bne _0224DCC4
	mov r0, #0xc1
	lsl r0, r0, #6
	str r1, [r5, r0]
	mov r4, #1
	b _0224DD60
_0224DCC4:
	cmp r1, #0
	beq _0224DD16
	mov r7, #0xc0
	add r0, r2, #0
	mul r0, r7
	ldr r3, _0224DD98 ; =0x00002DEE
	add r0, r5, r0
	ldrh r6, [r0, r3]
	lsl r6, r6, #1
	add r6, r0, r6
	add r0, r3, #0
	sub r0, #0xa2
	ldrh r0, [r6, r0]
	cmp r1, r0
	beq _0224DD16
	mov r1, #0xc1
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r1, [r5, #0x64]
	mov r0, #0
	add r2, r1, #0
	mul r2, r7
	add r2, r5, r2
	sub r1, r3, #2
	strh r0, [r2, r1]
	ldr r1, [r5, #0x64]
	mov r4, #1
	add r2, r1, #0
	mul r2, r7
	add r1, r5, r2
	strh r0, [r1, r3]
	ldr r0, [r5, #0x64]
	sub r3, #0x26
	add r2, r0, #0
	add r3, r5, r3
	mul r2, r7
	ldr r1, [r3, r2]
	mov r0, #0x38
	bic r1, r0
	str r1, [r3, r2]
	b _0224DD60
_0224DD16:
	add r0, r5, #0
	add r1, r2, #0
	bl ov16_02259A28
	cmp r0, #0
	bne _0224DD32
	ldr r0, [r5, #0x64]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0224DD9C ; =0x0000304C
	ldr r1, [r1, r0]
	sub r0, #0xc
	str r1, [r5, r0]
	b _0224DD60
_0224DD32:
	ldr r2, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r2
	lsl r1, r2, #1
	add r3, r5, r0
	add r0, r5, r1
	ldr r1, _0224DDA0 ; =0x000030BC
	ldrh r2, [r0, r1]
	lsl r2, r2, #1
	add r3, r3, r2
	ldr r2, _0224DDA4 ; =0x00002D4C
	ldrh r3, [r3, r2]
	add r2, r1, #0
	sub r2, #8
	ldrh r0, [r0, r2]
	cmp r0, r3
	beq _0224DD5C
	sub r1, #0x7c
	str r3, [r5, r1]
	mov r4, #1
	b _0224DD60
_0224DD5C:
	sub r1, #0x7c
	str r3, [r5, r1]
_0224DD60:
	mov r3, #0xc1
	lsl r3, r3, #6
	ldr r1, [r5, r3]
	add r0, r3, #4
	str r1, [r5, r0]
	mov r0, #0x16
	str r0, [r5, #8]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r3, [r5, r3]
	ldr r0, [sp, #8]
	lsl r3, r3, #0x10
	ldr r2, [r5, #0x64]
	add r1, r5, #0
	lsr r3, r3, #0x10
	bl ov16_02253954
	str r0, [r5, #0x6c]
	ldr r0, [sp, #8]
	bl ov16_02266AA0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DD90: .word 0x000021E8
_0224DD94: .word 0x00002DEC
_0224DD98: .word 0x00002DEE
_0224DD9C: .word 0x0000304C
_0224DDA0: .word 0x000030BC
_0224DDA4: .word 0x00002D4C
	thumb_func_end ov16_0224DC68

	thumb_func_start ov16_0224DDA8
ov16_0224DDA8: ; 0x0224DDA8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0xec
	ldr r2, [r2, #0]
	add r7, r0, #0
	add r3, r4, r2
	ldr r2, _0224DEE4 ; =0x000021E8
	ldrb r2, [r3, r2]
	str r2, [r4, #0x64]
	bl ov16_02257028
	str r0, [r4, #0x6c]
	ldr r0, _0224DEE8 ; =0x000021B0
	ldr r1, [r4, #0x64]
	add r2, r4, r0
	lsl r0, r1, #4
	add r6, r2, r0
	add r0, r7, #0
	bl ov16_0223E208
	cmp r0, #0
	beq _0224DE50
	ldr r0, [r4, #0x64]
	asr r0, r0, #1
	add r1, r4, r0
	ldr r0, _0224DEEC ; =0x000003D1
	ldrb r2, [r1, r0]
	cmp r2, #4
	bhi _0224DE3C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224DDF0: ; jump table
	.short _0224DDFA - _0224DDF0 - 2 ; case 0
	.short _0224DDFE - _0224DDF0 - 2 ; case 1
	.short _0224DE02 - _0224DDF0 - 2 ; case 2
	.short _0224DE2C - _0224DDF0 - 2 ; case 3
	.short _0224DE3A - _0224DDF0 - 2 ; case 4
_0224DDFA:
	ldr r5, _0224DEF0 ; =0x00000121
	b _0224DE3C
_0224DDFE:
	ldr r5, _0224DEF4 ; =0x0000010B
	b _0224DE3C
_0224DE02:
	add r0, r0, #2
	ldrb r0, [r1, r0]
	mov r1, #1
	tst r1, r0
	beq _0224DE1C
	mov r1, #0x3e
	add r2, r0, #0
	tst r2, r1
	beq _0224DE1C
	mov r0, #6
	add r1, #0xf2
	str r0, [r4, r1]
	b _0224DE26
_0224DE1C:
	bl sub_020787EC
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
_0224DE26:
	mov r5, #0x43
	lsl r5, r5, #2
	b _0224DE3C
_0224DE2C:
	add r0, r0, #2
	ldrb r0, [r1, r0]
	mov r5, #0x13
	lsl r5, r5, #4
	str r0, [r4, r5]
	sub r5, #0x23
	b _0224DE3C
_0224DE3A:
	ldr r5, _0224DEF8 ; =0x0000010E
_0224DE3C:
	ldr r1, [r4, #0x64]
	mov r0, #1
	bic r1, r0
	ldr r0, _0224DEFC ; =0x000003D6
	add r1, r4, r1
	ldrh r1, [r1, r0]
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0224DEC2
_0224DE50:
	ldrb r0, [r6, #2]
	cmp r0, #3
	bhi _0224DEBA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224DE62: ; jump table
	.short _0224DE6A - _0224DE62 - 2 ; case 0
	.short _0224DE6A - _0224DE62 - 2 ; case 1
	.short _0224DE80 - _0224DE62 - 2 ; case 2
	.short _0224DE6A - _0224DE62 - 2 ; case 3
_0224DE6A:
	ldrh r1, [r6]
	ldr r0, _0224DF00 ; =0x0000FFC1
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0224DE7C
	mov r5, #0xde
	b _0224DEBA
_0224DE7C:
	mov r5, #0xdf
	b _0224DEBA
_0224DE80:
	add r0, r7, #0
	mov r5, #0xb
	bl ov16_0223DF0C
	mov r1, #1
	tst r0, r1
	bne _0224DEBA
	add r0, r7, #0
	bl ov16_0223DF0C
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	bne _0224DEBA
	add r0, r7, #0
	bl ov16_0223E1AC
	ldrh r1, [r6]
	mov r2, #1
	mov r3, #5
	bl sub_0207D60C
	add r0, r7, #0
	bl ov16_0223E1B0
	ldrh r1, [r6]
	ldrb r2, [r6, #2]
	bl sub_0207DA1C
_0224DEBA:
	ldrh r1, [r6]
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224DEC2:
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	ldr r1, _0224DF04 ; =0x0000216C
	mov r0, #2
	ldr r2, [r4, r1]
	lsl r0, r0, #0x1e
	orr r0, r2
	str r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DEE4: .word 0x000021E8
_0224DEE8: .word 0x000021B0
_0224DEEC: .word 0x000003D1
_0224DEF0: .word 0x00000121
_0224DEF4: .word 0x0000010B
_0224DEF8: .word 0x0000010E
_0224DEFC: .word 0x000003D6
_0224DF00: .word 0x0000FFC1
_0224DF04: .word 0x0000216C
	thumb_func_end ov16_0224DDA8

	thumb_func_start ov16_0224DF08
ov16_0224DF08: ; 0x0224DF08
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #9
	bl ov16_02251E1C
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	ldr r1, _0224DF48 ; =0x000021E8
	add r0, r4, r0
	ldrb r0, [r0, r1]
	mov r2, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x78]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x28
	str r0, [r4, #0xc]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x7c
	ldr r2, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x1e
	orr r0, r2
	sub r1, #0x7c
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_0224DF48: .word 0x000021E8
	thumb_func_end ov16_0224DF08

	thumb_func_start ov16_0224DF4C
ov16_0224DF4C: ; 0x0224DF4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, #0xec
	ldr r1, [r1, #0]
	add r5, r0, #0
	add r2, r4, r1
	ldr r1, _0224E004 ; =0x000021E8
	ldrb r1, [r2, r1]
	str r1, [r4, #0x64]
	bl ov16_0223E208
	cmp r0, #0
	beq _0224DFBE
	add r0, r5, #0
	bl ov16_0223DF0C
	mov r1, #4
	tst r0, r1
	bne _0224DFBE
	ldr r0, [r4, #0x64]
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	ldr r0, _0224E008 ; =0x00002DB0
	add r1, r4, r1
	ldr r1, [r1, r0]
	ldr r0, _0224E00C ; =0x0400E000
	tst r0, r1
	beq _0224DFA2
	add r0, r4, #0
	mov r1, #1
	add r2, #0x5e
	bl ov16_02251E1C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224DFA2:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe6
	bl ov16_02251E1C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x2b
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224DFBE:
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255DE8
	cmp r0, #0
	beq _0224DFE8
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov16_02251E1C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x2b
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224DFE8:
	add r0, r4, #0
	mov r1, #1
	mov r2, #8
	bl ov16_02251E1C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E004: .word 0x000021E8
_0224E008: .word 0x00002DB0
_0224E00C: .word 0x0400E000
	thumb_func_end ov16_0224DF4C

	thumb_func_start ov16_0224E010
ov16_0224E010: ; 0x0224E010
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _0224E054 ; =0x00000113
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	mov r0, #0
	str r0, [r4, #0x64]
	mov r0, #1
	str r0, [r4, #0x6c]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r0, #0x4a
	mov r1, #5
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov16_0223ED8C
	sub r1, r0, #1
	add r0, r5, #0
	bl ov16_0223ED98
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov16_022661CC
	pop {r3, r4, r5, pc}
	nop
_0224E054: .word 0x00000113
	thumb_func_end ov16_0224E010

	thumb_func_start ov16_0224E058
ov16_0224E058: ; 0x0224E058
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe3
	bl ov16_02251E1C
	mov r0, #0
	str r0, [r4, #0x64]
	mov r0, #1
	str r0, [r4, #0x6c]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov16_0223F4BC
	mov r1, #0xa
	bl _s32_div_f
	mov r0, #0x4e
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0224E0B0 ; =0x0000311C
	ldrb r1, [r4, r0]
	cmp r1, #0xc
	bhs _0224E096
	add r1, r1, #1
	strb r1, [r4, r0]
_0224E096:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224E0AC
	ldr r0, _0224E0B4 ; =0x0000311D
	ldrb r1, [r4, r0]
	cmp r1, #0xc
	bhs _0224E0AC
	add r1, r1, #1
	strb r1, [r4, r0]
_0224E0AC:
	pop {r3, r4, r5, pc}
	nop
_0224E0B0: .word 0x0000311C
_0224E0B4: .word 0x0000311D
	thumb_func_end ov16_0224E058

	thumb_func_start ov16_0224E0B8
ov16_0224E0B8: ; 0x0224E0B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe4
	bl ov16_02251E1C
	mov r0, #0
	str r0, [r4, #0x64]
	mov r0, #1
	str r0, [r4, #0x6c]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov16_0223F4BC
	mov r1, #0xa
	bl _s32_div_f
	mov r0, #0x4e
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0224E114 ; =0x0000311D
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0224E0F6
	sub r1, r1, #1
	strb r1, [r4, r0]
_0224E0F6:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0224E112
	mov r1, #1
	sub r0, #8
	str r1, [r4, r0]
	ldr r0, _0224E118 ; =0x0000311C
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0224E112
	sub r1, r1, #1
	strb r1, [r4, r0]
_0224E112:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E114: .word 0x0000311D
_0224E118: .word 0x0000311C
	thumb_func_end ov16_0224E0B8

	thumb_func_start ov16_0224E11C
ov16_0224E11C: ; 0x0224E11C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe5
	bl ov16_02251E1C
	mov r0, #0
	str r0, [r4, #0x64]
	mov r0, #1
	str r0, [r4, #0x6c]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ov16_0224E11C

	thumb_func_start ov16_0224E13C
ov16_0224E13C: ; 0x0224E13C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl ov16_0223DF0C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov16_0223E16C
	str r0, [sp, #0x28]
	mov r0, #0x84
	tst r0, r6
	beq _0224E162
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224E162:
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0223E208
	cmp r0, #0
	beq _0224E174
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224E174:
	mov r0, #0x40
	tst r0, r6
	beq _0224E18C
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0223E1F8
	cmp r0, #4
	bne _0224E18C
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224E18C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02259ADC
	cmp r0, #1
	bne _0224E19E
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224E19E:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02259A28
	cmp r0, #0
	bne _0224E1B0
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224E1B0:
	ldr r0, _0224E42C ; =0x00003044
	ldr r0, [r4, r0]
	cmp r0, #0x75
	bne _0224E1CA
	ldr r0, _0224E430 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r1
	beq _0224E1CA
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224E1CA:
	ldr r0, [sp, #0x28]
	bl sub_02025F58
	cmp r0, #8
	blt _0224E1DA
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224E1DA:
	ldr r0, [sp, #0x28]
	mov r6, #0xa
	bl sub_02025F58
	cmp r0, #2
	blt _0224E1E8
	mov r6, #0x1e
_0224E1E8:
	ldr r0, [sp, #0x28]
	bl sub_02025F58
	cmp r0, #4
	blt _0224E1F4
	mov r6, #0x32
_0224E1F4:
	ldr r0, [sp, #0x28]
	bl sub_02025F58
	cmp r0, #6
	blt _0224E200
	mov r6, #0x46
_0224E200:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	str r0, [sp, #0x20]
	add r1, r4, r0
	ldr r0, _0224E434 ; =0x00002D74
	ldrb r0, [r1, r0]
	cmp r0, r6
	bhi _0224E218
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224E218:
	add r0, r5, #0
	bl ov16_0223F4BC
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x18
	add r2, r4, r1
	ldr r1, _0224E434 ; =0x00002D74
	lsr r0, r0, #0x18
	ldrb r2, [r2, r1]
	add r2, r6, r2
	mul r0, r2
	asr r0, r0, #8
	cmp r0, r6
	bge _0224E23A
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224E23A:
	ldr r0, _0224E42C ; =0x00003044
	ldr r0, [r4, r0]
	cmp r0, #0x63
	bne _0224E252
	add r1, #0x3c
	add r0, r4, r1
	ldr r1, [sp, #0x20]
	ldr r2, [r0, r1]
	ldr r1, _0224E438 ; =0xFF7FFFFF
	and r2, r1
	ldr r1, [sp, #0x20]
	str r2, [r0, r1]
_0224E252:
	ldr r0, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r0
	str r0, [sp, #0x1c]
	ldr r0, _0224E43C ; =0x00002DAC
	add r1, r4, r1
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _0224E27C
	ldr r0, _0224E42C ; =0x00003044
	ldr r0, [r4, r0]
	cmp r0, #0xad
	beq _0224E272
	cmp r0, #0xd6
	bne _0224E27C
_0224E272:
	mov r0, #0xfe
	str r0, [r7, #0]
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224E27C:
	ldr r0, [sp, #0x1c]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0224E434 ; =0x00002D74
	add r1, r4, r1
	ldrb r0, [r1, r0]
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl ov16_0223F4BC
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x18
	add r1, r6, r1
	lsr r0, r0, #0x18
	mul r0, r1
	asr r0, r0, #8
	cmp r0, r6
	bge _0224E364
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, _0224E440 ; =0x000030BC
	ldrh r0, [r1, r0]
	bl sub_020787CC
	add r3, r0, #0
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02254A6C
	add r6, r0, #0
	cmp r6, #0xf
	bne _0224E2D0
	mov r0, #0xff
	str r0, [r7, #0]
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224E2D0:
	add r0, r5, #0
	bl ov16_0223F4BC
	mov r1, #3
	and r0, r1
	str r0, [sp, #0x2c]
	bl sub_020787CC
	tst r0, r6
	bne _0224E2D0
	ldr r0, [r4, #0x64]
	ldr r3, _0224E440 ; =0x000030BC
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, [sp, #0x2c]
	strh r0, [r1, r3]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, r3]
	add r0, r4, r0
	lsl r1, r1, #1
	add r1, r0, r1
	ldr r0, _0224E444 ; =0x00002D4C
	ldrh r1, [r1, r0]
	add r0, r3, #0
	sub r0, #0x7c
	str r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0x7c
	ldr r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0x78
	str r1, [r4, r0]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	sub r3, #0x7c
	ldr r3, [r4, r3]
	ldr r2, [r4, #0x64]
	lsl r3, r3, #0x10
	add r0, r5, #0
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl ov16_02253954
	str r0, [r4, #0x6c]
	cmp r0, #0xff
	bne _0224E344
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02257028
	b _0224E344
_0224E344:
	ldr r1, [r4, #0x64]
	add sp, #0x30
	lsl r1, r1, #4
	add r2, r4, r1
	ldr r1, _0224E448 ; =0x000021AC
	str r0, [r2, r1]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [r7, #0]
	ldr r1, _0224E44C ; =0x00002184
	mov r0, #1
	ldr r2, [r4, r1]
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0224E364:
	ldr r0, [sp, #0x24]
	sub r0, r0, r6
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl ov16_0223F4BC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	cmp r0, r6
	bge _0224E3BC
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224E43C ; =0x00002DAC
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _0224E3BC
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x48
	beq _0224E3BC
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0xf
	beq _0224E3BC
	mov r1, #6
	lsl r1, r1, #6
	mov r0, #0xf
	ldr r2, [r4, r1]
	lsl r0, r0, #8
	tst r0, r2
	bne _0224E3BC
	sub r1, #0x7f
	add sp, #0x30
	str r1, [r7, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224E3BC:
	ldr r0, [sp, #0x18]
	sub r0, r0, r6
	cmp r0, r6
	bge _0224E422
	ldr r1, [r4, #0x64]
	mov r0, #0x46
	str r1, [r4, #0x6c]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, [r4, #0x64]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	lsl r0, r1, #0x18
	str r3, [sp, #8]
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r2, #1
	add r0, r5, #0
	add r1, r4, #0
	str r2, [sp, #0x14]
	bl ov16_0225A280
	ldr r2, _0224E450 ; =0x0000215C
	add r1, r4, #0
	str r0, [r4, r2]
	ldr r2, [r4, r2]
	add r0, r5, #0
	bl ov16_0225AEB8
	ldr r1, _0224E450 ; =0x0000215C
	add sp, #0x30
	str r0, [r4, r1]
	mov r0, #0
	ldr r2, [r4, r1]
	mvn r0, r0
	mul r0, r2
	str r0, [r4, r1]
	ldr r0, _0224E454 ; =0x00000102
	str r0, [r7, #0]
	add r0, r1, #0
	sub r0, #0x20
	ldr r2, [r4, r0]
	mov r0, #2
	orr r0, r2
	sub r1, #0x20
	str r0, [r4, r1]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0224E422:
	mov r0, #0xff
	str r0, [r7, #0]
	mov r0, #1
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E42C: .word 0x00003044
_0224E430: .word 0x0000213C
_0224E434: .word 0x00002D74
_0224E438: .word 0xFF7FFFFF
_0224E43C: .word 0x00002DAC
_0224E440: .word 0x000030BC
_0224E444: .word 0x00002D4C
_0224E448: .word 0x000021AC
_0224E44C: .word 0x00002184
_0224E450: .word 0x0000215C
_0224E454: .word 0x00000102
	thumb_func_end ov16_0224E13C

	thumb_func_start ov16_0224E458
ov16_0224E458: ; 0x0224E458
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r3, [r5, #0x64]
	mov r2, #0x1c
	mul r2, r3
	add r6, r5, r2
	mov r2, #0xb5
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	str r0, [sp, #4]
	lsl r2, r2, #0x1f
	mov r4, #1
	lsr r2, r2, #0x1f
	bne _0224E512
	ldr r6, [r5, #0x6c]
	cmp r6, #0xff
	beq _0224E512
	mov r2, #0xc1
	lsl r2, r2, #6
	ldr r7, [r5, r2]
	ldr r2, _0224E5E0 ; =0x0000011E
	cmp r7, r2
	bne _0224E496
	mov r2, #0x2e
	str r2, [sp]
	mov r2, #3
	bl ov16_022555A4
	add r4, r4, r0
	b _0224E512
_0224E496:
	lsl r0, r7, #4
	add r1, r5, r0
	ldr r0, _0224E5E4 ; =0x000003E6
	ldrh r1, [r1, r0]
	cmp r1, #0x40
	bgt _0224E4C0
	bge _0224E4DC
	cmp r1, #0x10
	bgt _0224E4BA
	bge _0224E512
	cmp r1, #8
	bgt _0224E500
	cmp r1, #4
	blt _0224E500
	beq _0224E4EE
	cmp r1, #8
	beq _0224E4DC
	b _0224E500
_0224E4BA:
	cmp r1, #0x20
	beq _0224E512
	b _0224E500
_0224E4C0:
	add r0, r2, #0
	sub r0, #0x1e
	cmp r1, r0
	bgt _0224E4D4
	sub r2, #0x1e
	cmp r1, r2
	bge _0224E512
	cmp r1, #0x80
	beq _0224E4EE
	b _0224E500
_0224E4D4:
	add r2, #0xe2
	cmp r1, r2
	beq _0224E512
	b _0224E500
_0224E4DC:
	mov r0, #0x2e
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #9
	bl ov16_022555A4
	add r4, r4, r0
	b _0224E512
_0224E4EE:
	mov r0, #0x2e
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	bl ov16_022555A4
	add r4, r4, r0
	b _0224E512
_0224E500:
	cmp r3, r6
	beq _0224E512
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	cmp r0, #0x2e
	bne _0224E512
	add r4, r4, #1
_0224E512:
	mov r0, #0xb5
	lsl r0, r0, #6
	add r2, r5, r0
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	mov r1, #0xc1
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r2, r0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov16_02254EE0
	add r6, r0, #0
	ldr r1, [r5, #0x64]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r5, r0
	lsl r7, r1, #6
	ldr r3, [r0, r7]
	lsl r2, r3, #0x1e
	lsr r2, r2, #0x1f
	bne _0224E58A
	lsl r2, r3, #0x1f
	lsr r2, r2, #0x1f
	bne _0224E58A
	mov r1, #2
	orr r1, r3
	str r1, [r0, r7]
	ldr r0, _0224E5E8 ; =0x00002D6C
	ldr r1, [r5, #0x64]
	add r2, r5, r0
	mov r0, #0xc0
	mul r0, r1
	add r1, r2, r0
	ldrb r0, [r1, r6]
	cmp r0, #0
	beq _0224E57C
	cmp r6, #4
	bge _0224E57C
	cmp r0, r4
	ble _0224E56C
	sub r0, r0, r4
	b _0224E56E
_0224E56C:
	mov r0, #0
_0224E56E:
	strb r0, [r1, r6]
	ldr r0, [sp, #4]
	ldr r2, [r5, #0x64]
	add r1, r5, #0
	bl ov16_02253EC0
	b _0224E5D8
_0224E57C:
	ldr r1, _0224E5EC ; =0x0000216C
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #8
	orr r0, r2
	str r0, [r5, r1]
	b _0224E5D8
_0224E58A:
	mov r2, #0xc0
	add r0, r1, #0
	mul r0, r2
	add r0, r5, r0
	ldr r3, _0224E5E8 ; =0x00002D6C
	add r4, r0, r6
	ldrb r4, [r4, r3]
	cmp r4, #0
	bne _0224E5D8
	ldr r4, _0224E5F0 ; =0x0000213C
	mov r7, #2
	ldr r4, [r5, r4]
	lsl r7, r7, #8
	tst r4, r7
	bne _0224E5D8
	add r3, #0x44
	ldr r0, [r0, r3]
	lsl r3, r7, #3
	tst r3, r0
	bne _0224E5D8
	lsl r2, r2, #4
	tst r0, r2
	bne _0224E5D8
	add r0, r1, #0
	bl sub_020787CC
	add r1, r7, #0
	sub r1, #0x80
	ldr r2, [r5, r1]
	lsl r0, r0, #8
	tst r0, r2
	bne _0224E5D8
	cmp r6, #4
	bge _0224E5D8
	ldr r0, _0224E5EC ; =0x0000216C
	add r1, #0x80
	ldr r2, [r5, r0]
	orr r1, r2
	str r1, [r5, r0]
_0224E5D8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E5E0: .word 0x0000011E
_0224E5E4: .word 0x000003E6
_0224E5E8: .word 0x00002D6C
_0224E5EC: .word 0x0000216C
_0224E5F0: .word 0x0000213C
	thumb_func_end ov16_0224E458

	thumb_func_start ov16_0224E5F4
ov16_0224E5F4: ; 0x0224E5F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	mov r4, #0
	ldr r0, [r5, #0x6c]
	add r6, r4, #0
	cmp r0, #0xff
	bne _0224E612
	ldr r1, _0224E6E0 ; =0x00003044
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov16_0225582C
	cmp r0, #0
	beq _0224E644
_0224E612:
	ldr r0, [r5, #0x6c]
	cmp r0, #0xff
	bne _0224E658
	ldr r1, _0224E6E0 ; =0x00003044
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov16_0225582C
	cmp r0, #1
	bne _0224E658
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0224E6E4 ; =0x00002DB0
	ldr r0, [r1, r0]
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	bne _0224E644
	ldr r0, _0224E6E8 ; =0x0000213C
	ldr r2, [r5, r0]
	lsr r0, r1, #3
	tst r0, r2
	beq _0224E658
_0224E644:
	ldr r2, _0224E6EC ; =0x00000119
	add r0, r5, #0
	mov r1, #1
	bl ov16_02251E1C
	mov r0, #0x26
	str r0, [r5, #0xc]
	mov r0, #0x15
	str r0, [r5, #8]
	mov r4, #1
_0224E658:
	mov r0, #0xd
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0224E69E
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0224E69E
	ldr r0, _0224E6E0 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0224E6F0 ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x97
	bne _0224E69E
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _0224E69E
	mov r6, #1
_0224E69E:
	ldr r0, [r5, #0x6c]
	cmp r0, #0xff
	bne _0224E6DC
	ldr r1, _0224E6E0 ; =0x00003044
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov16_0225582C
	cmp r0, #1
	bne _0224E6DC
	cmp r4, #0
	bne _0224E6DC
	cmp r6, #0
	bne _0224E6DC
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02258AB8
	cmp r0, #0x63
	beq _0224E6DC
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _0224E6E4 ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #1
	lsl r1, r1, #0xc
	tst r1, r2
	bne _0224E6DC
	str r0, [r5, #0x6c]
_0224E6DC:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E6E0: .word 0x00003044
_0224E6E4: .word 0x00002DB0
_0224E6E8: .word 0x0000213C
_0224E6EC: .word 0x00000119
_0224E6F0: .word 0x000003DE
	thumb_func_end ov16_0224E5F4

	thumb_func_start ov16_0224E6F4
ov16_0224E6F4: ; 0x0224E6F4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _0224E774 ; =0x00003044
	ldr r2, [r4, r1]
	lsl r1, r2, #4
	add r5, r4, r1
	ldr r1, _0224E778 ; =0x000003E6
	ldrh r3, [r5, r1]
	cmp r3, #0x10
	beq _0224E728
	cmp r3, #0x20
	beq _0224E728
	sub r1, r1, #5
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _0224E728
	ldr r1, _0224E77C ; =0x0000213C
	ldr r3, [r4, r1]
	mov r1, #2
	lsl r1, r1, #0xe
	tst r1, r3
	bne _0224E728
	mov r1, #0x20
	tst r1, r3
	beq _0224E72C
_0224E728:
	cmp r2, #0x56
	bne _0224E76C
_0224E72C:
	ldr r1, [r4, #0x64]
	ldr r3, _0224E780 ; =0x00002144
	str r1, [sp]
	ldr r1, [r4, #0x6c]
	str r1, [sp, #4]
	ldr r1, [r4, r3]
	str r1, [sp, #8]
	add r1, r3, #0
	add r1, #0x28
	add r1, r4, r1
	str r1, [sp, #0xc]
	add r3, #0x1c
	ldr r3, [r4, r3]
	add r1, r4, #0
	bl ov16_02254FA8
	ldr r1, _0224E780 ; =0x00002144
	str r0, [r4, r1]
	add r1, #0x28
	ldr r1, [r4, r1]
	mov r0, #8
	tst r0, r1
	beq _0224E76C
	mov r0, #0xd1
	lsl r0, r0, #2
	add r3, r4, r0
	ldr r0, [r4, #0x64]
	lsl r2, r0, #2
	ldr r1, [r3, r2]
	mov r0, #2
	orr r0, r1
	str r0, [r3, r2]
_0224E76C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224E774: .word 0x00003044
_0224E778: .word 0x000003E6
_0224E77C: .word 0x0000213C
_0224E780: .word 0x00002144
	thumb_func_end ov16_0224E6F4

	thumb_func_start ov16_0224E784
ov16_0224E784: ; 0x0224E784
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #0x18]
	add r4, r1, #0
	ldr r0, _0224EAB0 ; =0x00003044
	add r5, r4, #0
	ldr r0, [r4, r0]
	mov r7, #0
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224EAB4 ; =0x000003DE
	add r5, #0x50
	ldrh r0, [r1, r0]
	str r0, [sp, #0x1c]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r6, r4, r0
	mov r0, #7
	str r0, [sp, #0x20]
	mov r0, #8
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x28]
_0224E7B2:
	ldr r0, [r4, #0x50]
	cmp r0, #0x10
	bls _0224E7BA
	b _0224EE1E
_0224E7BA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224E7C6: ; jump table
	.short _0224E7E8 - _0224E7C6 - 2 ; case 0
	.short _0224E81C - _0224E7C6 - 2 ; case 1
	.short _0224E916 - _0224E7C6 - 2 ; case 2
	.short _0224E97C - _0224E7C6 - 2 ; case 3
	.short _0224E9A4 - _0224E7C6 - 2 ; case 4
	.short _0224E9E0 - _0224E7C6 - 2 ; case 5
	.short _0224EA26 - _0224E7C6 - 2 ; case 6
	.short _0224EA62 - _0224E7C6 - 2 ; case 7
	.short _0224EAAA - _0224E7C6 - 2 ; case 8
	.short _0224EB10 - _0224E7C6 - 2 ; case 9
	.short _0224EB4C - _0224E7C6 - 2 ; case 10
	.short _0224EB88 - _0224E7C6 - 2 ; case 11
	.short _0224EC6A - _0224E7C6 - 2 ; case 12
	.short _0224ECC8 - _0224E7C6 - 2 ; case 13
	.short _0224ED30 - _0224E7C6 - 2 ; case 14
	.short _0224EDE0 - _0224E7C6 - 2 ; case 15
	.short _0224EE18 - _0224E7C6 - 2 ; case 16
_0224E7E8:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224EAB8 ; =0x00002DB0
	ldr r1, [r2, r0]
	ldr r0, _0224EABC ; =0xFDFFFFFF
	and r1, r0
	ldr r0, _0224EAB8 ; =0x00002DB0
	str r1, [r2, r0]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r2, r0]
	ldr r0, _0224EAC0 ; =0xFFFFBFFF
	and r1, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	str r1, [r2, r0]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224E81C:
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224EAC4 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _0224E90E
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0xf
	lsl r0, r0, #8
	tst r0, r1
	beq _0224E866
	add r0, r4, #0
	add r1, r2, #0
	bl ov16_02255A4C
	cmp r0, #0x2b
	beq _0224E866
	mov r0, #0x46
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x13
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224E90E
_0224E866:
	ldr r0, _0224EAB0 ; =0x00003044
	ldr r0, [r4, r0]
	cmp r0, #0xd6
	beq _0224E87C
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0xd6
	bne _0224E87C
	mov r0, #1
	b _0224E87E
_0224E87C:
	mov r0, #0
_0224E87E:
	cmp r0, #0
	bne _0224E90E
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x30
	bne _0224E892
	mov r3, #2
	b _0224E894
_0224E892:
	mov r3, #1
_0224E894:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224EAC4 ; =0x00002DAC
	ldr r1, [r2, r0]
	mov r0, #7
	and r0, r1
	cmp r0, r3
	ldr r0, _0224EAC4 ; =0x00002DAC
	bhs _0224E8B2
	ldr r1, [r2, r0]
	ldr r0, [sp, #0x20]
	bic r1, r0
	b _0224E8B6
_0224E8B2:
	ldr r0, [r2, r0]
	sub r1, r0, r3
_0224E8B6:
	ldr r0, _0224EAC4 ; =0x00002DAC
	str r1, [r2, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224EAC4 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _0224E8F4
	ldr r0, _0224EAB0 ; =0x00003044
	ldr r0, [r4, r0]
	cmp r0, #0xad
	beq _0224E90E
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0xd6
	beq _0224E90E
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x14
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #2
	b _0224E90E
_0224E8F4:
	mov r0, #0x46
	lsl r0, r0, #2
	str r2, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x13
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_0224E90E:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224E916:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224EAC4 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _0224E974
	ldr r0, [sp, #0x18]
	bl ov16_0223F4BC
	mov r1, #5
	bl _s32_div_f
	cmp r1, #0
	beq _0224E958
	ldr r0, [sp, #0x1c]
	cmp r0, #0x7d
	beq _0224E974
	cmp r0, #0xfd
	beq _0224E974
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1c
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #1
	b _0224E974
_0224E958:
	mov r0, #0x46
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1d
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_0224E974:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224E97C:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02255EC0
	cmp r0, #1
	bne _0224E99C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xbf
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #1
_0224E99C:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224E9A4:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224EAB8 ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #1
	lsl r0, r0, #0x16
	tst r0, r1
	beq _0224E9D8
	ldr r0, _0224EAB8 ; =0x00002DB0
	ldr r1, [r2, r0]
	ldr r0, _0224EAC8 ; =0xFFBFFFFF
	and r1, r0
	ldr r0, _0224EAB8 ; =0x00002DB0
	str r1, [r2, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x41
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #1
_0224E9D8:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224E9E0:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224EAB8 ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #8
	tst r0, r1
	beq _0224EA1E
	ldr r0, _0224EAB8 ; =0x00002DB0
	ldr r1, [sp, #0x24]
	ldr r0, [r2, r0]
	bic r0, r1
	ldr r1, _0224EAB8 ; =0x00002DB0
	str r0, [r2, r1]
	ldr r0, [r4, #0x64]
	mov r1, #0x40
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #1
_0224EA1E:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224EA26:
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r3, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224EACC ; =0x00002DE8
	ldrh r0, [r1, r0]
	cmp r3, r0
	bne _0224EA5A
	lsl r0, r2, #2
	ldr r2, [r6, r0]
	mov r1, #0x10
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x47
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #1
_0224EA5A:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224EA62:
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224EAD0 ; =0x00002DC8
	ldr r0, [r1, r0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	beq _0224EAA2
	ldr r0, _0224EAB0 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224EAD4 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224EAA2
	lsl r0, r2, #2
	ldr r2, [r6, r0]
	mov r1, #0x20
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x85
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #1
_0224EAA2:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224EAAA:
	ldr r3, _0224EAB0 ; =0x00003044
	b _0224EAD8
	nop
_0224EAB0: .word 0x00003044
_0224EAB4: .word 0x000003DE
_0224EAB8: .word 0x00002DB0
_0224EABC: .word 0xFDFFFFFF
_0224EAC0: .word 0xFFFFBFFF
_0224EAC4: .word 0x00002DAC
_0224EAC8: .word 0xFFBFFFFF
_0224EACC: .word 0x00002DE8
_0224EAD0: .word 0x00002DC8
_0224EAD4: .word 0x000003E1
_0224EAD8:
	ldr r0, [sp, #0x18]
	ldr r2, [r4, #0x64]
	ldr r3, [r4, r3]
	add r1, r4, #0
	bl ov16_02255EF4
	cmp r0, #0
	beq _0224EB08
	ldr r0, [r4, #0x64]
	mov r1, #4
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x90
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #1
_0224EB08:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224EB10:
	ldr r3, _0224EE38 ; =0x00003044
	ldr r0, [sp, #0x18]
	ldr r2, [r4, #0x64]
	ldr r3, [r4, r3]
	add r1, r4, #0
	bl ov16_02256044
	cmp r0, #0
	beq _0224EB44
	ldr r0, [r4, #0x64]
	mov r1, #1
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x9d
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #1
_0224EB44:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224EB4C:
	ldr r3, _0224EE38 ; =0x00003044
	ldr r0, [sp, #0x18]
	ldr r2, [r4, #0x64]
	ldr r3, [r4, r3]
	add r1, r4, #0
	bl ov16_02256078
	cmp r0, #0
	beq _0224EB80
	ldr r0, [r4, #0x64]
	mov r1, #2
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xae
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #1
_0224EB80:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224EB88:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224EE3C ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #7
	tst r0, r1
	bne _0224EBA2
	b _0224EE1E
_0224EBA2:
	ldr r0, _0224EE3C ; =0x00002DB0
	ldr r0, [r2, r0]
	sub r1, r0, #1
	ldr r0, _0224EE3C ; =0x00002DB0
	str r1, [r2, r0]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224EE3C ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _0224EC54
	ldr r0, [sp, #0x18]
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _0224EBDE
	add r0, r4, #0
	mov r2, #0x26
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224EE1E
_0224EBDE:
	ldr r0, [r4, #0x64]
	mov r1, #0x80
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	mov r3, #0
	orr r1, r2
	str r1, [r6, r0]
	ldr r1, [r4, #0x64]
	mov r0, #0x46
	str r1, [r4, #0x6c]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #0x64]
	mov r1, #0
	str r1, [sp]
	mov r1, #0x28
	str r1, [sp, #4]
	mov r1, #0
	lsl r0, r0, #0x18
	str r1, [sp, #8]
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	mov r2, #0xa5
	bl ov16_0225A280
	ldr r1, _0224EE40 ; =0x0000215C
	ldr r2, _0224EE40 ; =0x0000215C
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	ldr r2, [r4, r2]
	add r1, r4, #0
	bl ov16_0225AEB8
	ldr r1, _0224EE40 ; =0x0000215C
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r1, [r4, r0]
	mov r0, #0
	add r2, r1, #0
	mvn r0, r0
	mul r2, r0
	ldr r0, _0224EE40 ; =0x0000215C
	mov r1, #1
	str r2, [r4, r0]
	add r0, r4, #0
	mov r2, #0x27
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x21
	str r0, [r4, #0xc]
	mov r7, #1
	b _0224EE1E
_0224EC54:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x28
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224EE1E
_0224EC6A:
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224EE44 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _0224ECC0
	add r0, r4, #0
	add r1, r2, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _0224ECC0
	ldr r0, [sp, #0x18]
	bl ov16_0223F4BC
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r1
	mov r0, #0x1e
	ror r2, r0
	add r0, r1, r2
	bne _0224ECC0
	ldr r0, [r4, #0x64]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #2
	ldr r0, [r6, r1]
	bic r0, r2
	mov r2, #1
	orr r0, r2
	str r0, [r6, r1]
	add r1, r2, #0
	add r0, r4, #0
	mov r2, #0x20
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #1
_0224ECC0:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224ECC8:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224EE3C ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #0xf
	lsl r0, r0, #0x10
	and r0, r1
	beq _0224ED28
	lsr r0, r0, #0x10
	bl sub_020787EC
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _0224ED08
	add r0, r4, #0
	mov r2, #0x6b
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224ED28
_0224ED08:
	ldr r0, [r4, #0x64]
	mov r1, #8
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x6c
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r7, #1
_0224ED28:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224ED30:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224EE3C ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r1
	beq _0224EE1E
	ldr r0, _0224EE3C ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #1
	lsl r0, r0, #8
	sub r1, r1, r0
	ldr r0, _0224EE3C ; =0x00002DB0
	str r1, [r2, r0]
	ldr r0, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _0224EE3C ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #3
	lsl r1, r1, #8
	tst r1, r2
	bne _0224EDCA
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0224EE48 ; =0x000030E4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224EDCA
	lsl r1, r0, #1
	ldr r0, _0224EE4C ; =0x00002144
	str r1, [r4, r0]
	ldr r3, [r4, #0x64]
	lsl r0, r3, #2
	add r1, r4, r0
	ldr r0, _0224EE50 ; =0x000030F4
	ldr r2, [r1, r0]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224EE54 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224ED9A
	str r2, [r4, #0x6c]
	b _0224EDCA
_0224ED9A:
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	add r2, r3, #0
	bl ov16_02257028
	mov r1, #0xc0
	mul r1, r0
	str r0, [r4, #0x6c]
	ldr r0, _0224EE54 ; =0x00002D8C
	add r1, r4, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0224EDCA
	ldr r2, _0224EE58 ; =0x0000011A
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	mov r0, #0x26
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r7, #2
	b _0224EE1E
_0224EDCA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x24
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	b _0224EE1E
_0224EDE0:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224EE44 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _0224EE10
	ldr r0, [sp, #0x1c]
	cmp r0, #0x7d
	beq _0224EDFC
	cmp r0, #0xfd
	bne _0224EE10
_0224EDFC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1e
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_0224EE10:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224EE1E
_0224EE18:
	mov r0, #0
	str r0, [r4, #0x50]
	mov r7, #3
_0224EE1E:
	cmp r7, #0
	bne _0224EE24
	b _0224E7B2
_0224EE24:
	ldr r0, [sp, #0x18]
	ldr r2, [r4, #0x64]
	add r1, r4, #0
	bl ov16_02253EC0
	cmp r7, #1
	bne _0224EE78
	ldr r1, _0224EE5C ; =0x0000213C
	b _0224EE60
	nop
_0224EE38: .word 0x00003044
_0224EE3C: .word 0x00002DB0
_0224EE40: .word 0x0000215C
_0224EE44: .word 0x00002DAC
_0224EE48: .word 0x000030E4
_0224EE4C: .word 0x00002144
_0224EE50: .word 0x000030F4
_0224EE54: .word 0x00002D8C
_0224EE58: .word 0x0000011A
_0224EE5C: .word 0x0000213C
_0224EE60:
	mov r0, #2
	ldr r2, [r4, r1]
	orr r0, r2
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x30
	ldr r2, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x1e
	orr r0, r2
	add r1, #0x30
	str r0, [r4, r1]
_0224EE78:
	cmp r7, #3
	beq _0224EE82
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224EE82:
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_0224E784

	thumb_func_start ov16_0224EE88
ov16_0224EE88: ; 0x0224EE88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r5, #0
	ldr r7, _0224EEF8 ; =0x0000216C
	mov r4, #0
	add r6, #0x54
_0224EE94:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _0224EEA0
	cmp r0, #1
	beq _0224EEE0
	b _0224EEE6
_0224EEA0:
	ldr r1, [r5, #0x64]
	ldr r2, [r5, #0x6c]
	add r0, r5, #0
	bl ov16_02256148
	add r2, r0, #0
	beq _0224EEB8
	ldr r0, _0224EEF8 ; =0x0000216C
	ldr r1, [r5, r0]
	ldr r0, _0224EEFC ; =0x001FD849
	tst r0, r1
	beq _0224EEBC
_0224EEB8:
	cmp r2, #0xb5
	bne _0224EED8
_0224EEBC:
	add r0, r5, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r5, #8]
	mov r4, #1
	str r0, [r5, #0xc]
	mov r0, #0x15
	str r0, [r5, #8]
	mov r0, #2
	ldr r1, [r5, r7]
	lsl r0, r0, #0x1e
	orr r0, r1
	str r0, [r5, r7]
_0224EED8:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0224EEE6
_0224EEE0:
	mov r0, #0
	str r0, [r5, #0x54]
	mov r4, #2
_0224EEE6:
	cmp r4, #0
	beq _0224EE94
	cmp r4, #2
	beq _0224EEF2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224EEF2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224EEF8: .word 0x0000216C
_0224EEFC: .word 0x001FD849
	thumb_func_end ov16_0224EE88

	thumb_func_start ov16_0224EF00
ov16_0224EF00: ; 0x0224EF00
	push {r4, lr}
	add r4, r1, #0
	ldr r2, _0224EF1C ; =0x00000116
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	nop
_0224EF1C: .word 0x00000116
	thumb_func_end ov16_0224EF00

	thumb_func_start ov16_0224EF20
ov16_0224EF20: ; 0x0224EF20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #8]
	bl ov16_0223DF0C
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _0224EF3E
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224EF3E:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	ldr r0, [sp, #0x38]
	ldr r2, _0224F24C ; =0x00002D5E
	lsl r0, r0, #4
	str r0, [sp, #0x10]
	add r1, r5, r0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r1, r6, #0
	str r0, [sp, #0x18]
	mov r0, #0xc0
	mul r1, r0
	str r1, [sp, #0xc]
	add r1, r5, r1
	ldrsb r1, [r1, r2]
	sub r1, r1, #6
	lsl r1, r1, #0x18
	asr r7, r1, #0x18
	ldr r1, [sp, #8]
	mul r0, r1
	str r0, [sp, #0x14]
	add r1, r5, r0
	add r0, r2, #1
	ldrsb r1, [r1, r0]
	mov r0, #6
	sub r0, r0, r1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	cmp r0, #0x56
	bne _0224EF8E
	lsl r0, r7, #0x19
	asr r7, r0, #0x18
_0224EF8E:
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0x56
	bl ov16_02255AB4
	cmp r0, #1
	bne _0224EFA2
	lsl r0, r4, #0x19
	asr r4, r0, #0x18
_0224EFA2:
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0x6d
	bl ov16_02255AB4
	cmp r0, #1
	bne _0224EFB4
	mov r7, #0
_0224EFB4:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	cmp r0, #0x6d
	bne _0224EFC2
	mov r4, #0
_0224EFC2:
	ldr r0, _0224F250 ; =0x00002DB0
	ldr r1, [sp, #0x14]
	add r2, r5, r0
	str r2, [sp, #0x1c]
	ldr r1, [r2, r1]
	mov r2, #2
	lsl r2, r2, #0x1c
	tst r1, r2
	bne _0224EFE2
	ldr r1, [sp, #0x14]
	add r0, #0x10
	add r1, r5, r1
	ldr r1, [r1, r0]
	lsr r0, r2, #7
	tst r0, r1
	beq _0224EFE8
_0224EFE2:
	cmp r4, #0
	bge _0224EFE8
	mov r4, #0
_0224EFE8:
	add r0, r4, #6
	add r0, r0, r7
	lsl r0, r0, #0x18
	asr r7, r0, #0x18
	bpl _0224EFF4
	mov r7, #0
_0224EFF4:
	cmp r7, #0xc
	ble _0224EFFA
	mov r7, #0xc
_0224EFFA:
	ldr r0, _0224F254 ; =0x000003E3
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	ldrb r4, [r1, r0]
	cmp r4, #0
	bne _0224F00C
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224F00C:
	ldr r0, _0224F258 ; =0x0000213C
	mov r1, #0x20
	ldr r0, [r5, r0]
	add r2, r0, #0
	tst r2, r1
	beq _0224F01E
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224F01E:
	lsl r1, r1, #5
	tst r0, r1
	beq _0224F02A
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224F02A:
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0224F06C
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0224F06C
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _0224F06C
	ldr r0, [sp, #0x10]
	add r1, r5, r0
	ldr r0, _0224F25C ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x98
	bne _0224F06C
	mov r4, #0x32
_0224F06C:
	ldr r0, _0224F260 ; =0x0226EAD0
	lsl r1, r7, #1
	ldrb r0, [r0, r1]
	ldr r2, _0224F264 ; =0x0226EAD1
	ldrb r1, [r2, r1]
	mul r0, r4
	bl _u32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	cmp r0, #0xe
	bne _0224F09A
	mov r0, #0x82
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224F09A:
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0224F132
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0224F132
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0xc
	tst r0, r1
	beq _0224F0EC
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #8
	bl ov16_02255AB4
	cmp r0, #1
	bne _0224F0EC
	mov r0, #0x50
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224F0EC:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0xc0
	tst r0, r1
	beq _0224F116
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0x51
	bl ov16_02255AB4
	cmp r0, #1
	bne _0224F116
	mov r0, #0x50
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224F116:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r1
	beq _0224F132
	mov r0, #6
	mul r0, r4
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224F132:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	cmp r0, #0x37
	bne _0224F152
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0224F152
	mov r0, #0x50
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224F152:
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0x4d
	bl ov16_02255AB4
	cmp r0, #1
	bne _0224F17C
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _0224F17C
	mov r0, #0x32
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224F17C:
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02258AB8
	add r7, r0, #0
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl ov16_02258ACC
	cmp r7, #0x30
	bne _0224F1A2
	mov r1, #0x64
	sub r0, r1, r0
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224F1A2:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02258AB8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov16_02258ACC
	add r6, r0, #0
	cmp r7, #0x5d
	bne _0224F1CA
	add r0, #0x64
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224F1CA:
	cmp r7, #0x68
	bne _0224F1EA
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_022588A4
	cmp r0, #1
	bne _0224F1EA
	add r6, #0x64
	add r0, r4, #0
	mul r0, r6
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224F1EA:
	ldr r0, _0224F268 ; =0x00002DCC
	ldr r1, [sp, #0xc]
	add r0, r5, r0
	ldr r2, [r0, r1]
	lsl r1, r2, #4
	lsr r1, r1, #0x1f
	beq _0224F20E
	ldr r1, _0224F26C ; =0xF7FFFFFF
	and r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
	mov r0, #0x78
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224F20E:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0224F22A
	mov r0, #0xa
	mul r0, r4
	mov r1, #6
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224F22A:
	ldr r0, [sp, #4]
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	add r0, r1, #1
	cmp r0, r4
	ble _0224F246
	ldr r1, _0224F270 ; =0x0000216C
	mov r0, #1
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
_0224F246:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224F24C: .word 0x00002D5E
_0224F250: .word 0x00002DB0
_0224F254: .word 0x000003E3
_0224F258: .word 0x0000213C
_0224F25C: .word 0x000003DE
_0224F260: .word 0x0226EAD0
_0224F264: .word 0x0226EAD1
_0224F268: .word 0x00002DCC
_0224F26C: .word 0xF7FFFFFF
_0224F270: .word 0x0000216C
	thumb_func_end ov16_0224EF20

	thumb_func_start ov16_0224F274
ov16_0224F274: ; 0x0224F274
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, _0224F44C ; =0x0000213C
	add r5, r1, #0
	ldr r1, [r5, r0]
	mov r0, #0x20
	add r7, r2, #0
	add r4, r3, #0
	ldr r6, [sp, #0x20]
	tst r0, r1
	beq _0224F292
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224F292:
	lsl r0, r4, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _0224F2F6
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _0224F450 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #2
	tst r0, r1
	beq _0224F2F6
	cmp r6, #0xae
	bne _0224F2C2
	lsl r1, r6, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ov16_02255950
	cmp r0, #1
	bne _0224F2F6
_0224F2C2:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_0225582C
	cmp r0, #0
	beq _0224F2DA
	ldr r0, _0224F44C ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r1
	beq _0224F2F6
_0224F2DA:
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r7, #0
	bl ov16_02253F20
	ldr r1, _0224F454 ; =0x0000216C
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0xe
	orr r0, r2
	str r0, [r5, r1]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224F2F6:
	ldr r0, _0224F44C ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r1
	bne _0224F348
	mov r0, #0xc0
	mul r0, r4
	add r3, r5, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r3, r0]
	mov r1, #0x18
	tst r1, r2
	beq _0224F320
	add r0, #0xc
	ldr r0, [r3, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r7, r0
	beq _0224F338
_0224F320:
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255A4C
	cmp r0, #0x63
	beq _0224F338
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x63
	bne _0224F348
_0224F338:
	ldr r1, _0224F454 ; =0x0000216C
	mov r0, #1
	ldr r2, [r5, r1]
	add sp, #8
	bic r2, r0
	str r2, [r5, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224F348:
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0224F3B6
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0224F3B6
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #3
	tst r0, r1
	beq _0224F392
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _0224F458 ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x98
	bne _0224F392
	ldr r1, _0224F454 ; =0x0000216C
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	str r2, [r5, r1]
_0224F392:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0xc0
	tst r0, r1
	beq _0224F3B6
	lsl r0, r6, #4
	add r2, r5, r0
	ldr r0, _0224F458 ; =0x000003DE
	add r1, #0x44
	ldrh r0, [r2, r0]
	cmp r0, r1
	bne _0224F3B6
	ldr r1, _0224F454 ; =0x0000216C
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	str r2, [r5, r1]
_0224F3B6:
	ldr r1, _0224F454 ; =0x0000216C
	mov r2, #1
	ldr r0, [r5, r1]
	lsl r2, r2, #0xa
	tst r0, r2
	bne _0224F446
	ldr r0, _0224F45C ; =0x00003044
	sub r2, #0x1a
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r0, r5, r0
	ldrh r0, [r0, r2]
	cmp r0, #0x80
	beq _0224F446
	sub r1, #0x30
	ldr r0, [r5, r1]
	mov r1, #4
	tst r1, r0
	bne _0224F3EE
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	mov r1, #0xb7
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	mov r1, #0x40
	tst r1, r2
	bne _0224F43A
_0224F3EE:
	mov r2, #2
	lsl r2, r2, #0x12
	add r1, r0, #0
	tst r1, r2
	bne _0224F40A
	mov r1, #0xc0
	mul r1, r4
	add r3, r5, r1
	mov r1, #0xb7
	lsl r1, r1, #6
	ldr r3, [r3, r1]
	lsl r1, r2, #0xa
	tst r1, r3
	bne _0224F43A
_0224F40A:
	mov r1, #8
	tst r1, r0
	bne _0224F422
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	mov r1, #0xb7
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	mov r1, #0x80
	tst r1, r2
	bne _0224F43A
_0224F422:
	mov r1, #0x10
	tst r0, r1
	bne _0224F446
	mov r0, #0xc0
	mul r0, r4
	add r2, r5, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r2, r0]
	lsl r0, r1, #0xe
	tst r0, r2
	beq _0224F446
_0224F43A:
	ldr r1, _0224F454 ; =0x0000216C
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0x10
	orr r0, r2
	str r0, [r5, r1]
_0224F446:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224F44C: .word 0x0000213C
_0224F450: .word 0x000003E9
_0224F454: .word 0x0000216C
_0224F458: .word 0x000003DE
_0224F45C: .word 0x00003044
	thumb_func_end ov16_0224F274

	thumb_func_start ov16_0224F460
ov16_0224F460: ; 0x0224F460
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	bl ov16_0223DF1C
	add r2, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0xff
	bne _0224F474
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224F474:
	ldr r6, _0224F5B0 ; =0x0000216C
	ldr r1, _0224F5B4 ; =0x801FDA49
	ldr r3, [r4, r6]
	add r7, r3, #0
	and r7, r1
	bne _0224F506
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r0, r0, #6
	add r5, r4, r1
	ldr r3, [r5, r0]
	mov ip, r0
	lsl r0, r3, #0x1b
	lsr r0, r0, #0x1f
	beq _0224F506
	ldr r0, _0224F5B8 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224F5BC ; =0x000003E9
	ldrb r0, [r1, r0]
	mov r1, #4
	tst r0, r1
	beq _0224F506
	mov r0, #0x10
	bic r3, r0
	mov r0, ip
	str r3, [r5, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0
	lsl r2, r2, #1
	add r3, r4, r2
	ldr r2, _0224F5B8 ; =0x00003044
	add r2, #0x18
	strh r0, [r3, r2]
	ldr r2, [r4, #0x64]
	ldr r0, _0224F5B8 ; =0x00003044
	lsl r2, r2, #1
	sub r0, r0, #4
	add r3, r4, r2
	ldr r2, _0224F5B8 ; =0x00003044
	ldr r0, [r4, r0]
	add r2, #0x38
	strh r0, [r3, r2]
	ldr r0, _0224F5B8 ; =0x00003044
	sub r0, r0, #4
	ldr r2, [r4, r0]
	ldr r0, _0224F5B8 ; =0x00003044
	add r0, r0, #4
	str r2, [r4, r0]
	add r0, r6, #0
	sub r0, #0x30
	ldr r2, [r4, r0]
	lsl r0, r1, #0x12
	orr r0, r2
	sub r6, #0x30
	str r0, [r4, r6]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x8b
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x64]
	add r0, r4, #0
	bl ov16_0225B408
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224F506:
	mov r1, #0
	cmp r2, #0
	ble _0224F5AC
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r4, r0
_0224F512:
	ldr r3, _0224F5C0 ; =0x000021EC
	add r5, r4, r1
	ldrb r5, [r5, r3]
	cmp r7, #0
	bne _0224F5A6
	lsl r3, r5, #6
	str r3, [sp]
	ldr r3, [r0, r3]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1f
	beq _0224F5A6
	ldr r3, _0224F5B8 ; =0x00003044
	ldr r3, [r4, r3]
	lsl r3, r3, #4
	add r6, r4, r3
	ldr r3, _0224F5BC ; =0x000003E9
	ldrb r6, [r6, r3]
	mov r3, #8
	tst r3, r6
	beq _0224F5A6
	mov r1, #0x46
	lsl r1, r1, #2
	str r5, [r4, r1]
	ldr r1, [sp]
	mov r7, #1
	ldr r2, [r0, r1]
	mov r1, #0x20
	bic r2, r1
	ldr r1, [sp]
	lsl r7, r7, #0x14
	str r2, [r0, r1]
	ldr r2, _0224F5C4 ; =0x0000213C
	ldr r0, [r4, r2]
	tst r0, r7
	bne _0224F586
	ldr r1, [r4, #0x64]
	mov r0, #0
	lsl r1, r1, #1
	add r3, r4, r1
	ldr r1, _0224F5C8 ; =0x0000305C
	strh r0, [r3, r1]
	add r0, r1, #0
	sub r0, #0x1c
	ldr r6, [r4, r0]
	ldr r0, [r4, #0x64]
	lsl r0, r0, #1
	add r3, r4, r0
	add r0, r1, #0
	add r0, #0x20
	strh r6, [r3, r0]
	add r0, r1, #0
	sub r0, #0x1c
	ldr r0, [r4, r0]
	sub r1, #0x14
	str r0, [r4, r1]
	ldr r0, [r4, r2]
	orr r0, r7
	str r0, [r4, r2]
_0224F586:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x92
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add r1, r5, #0
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	ldr r2, [r4, #0x64]
	add r0, r4, #0
	bl ov16_0225B408
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224F5A6:
	add r1, r1, #1
	cmp r1, r2
	blt _0224F512
_0224F5AC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224F5B0: .word 0x0000216C
_0224F5B4: .word 0x801FDA49
_0224F5B8: .word 0x00003044
_0224F5BC: .word 0x000003E9
_0224F5C0: .word 0x000021EC
_0224F5C4: .word 0x0000213C
_0224F5C8: .word 0x0000305C
	thumb_func_end ov16_0224F460

	thumb_func_start ov16_0224F5CC
ov16_0224F5CC: ; 0x0224F5CC
	push {r4, lr}
	add r4, r1, #0
	bl ov16_022405FC
	cmp r0, #1
	bne _0224F5E4
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_0224F5E4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0224F5CC

	thumb_func_start ov16_0224F5E8
ov16_0224F5E8: ; 0x0224F5E8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x48]
	add r5, r0, #0
	cmp r2, #6
	bhi _0224F6DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224F600: ; jump table
	.short _0224F60E - _0224F600 - 2 ; case 0
	.short _0224F61A - _0224F600 - 2 ; case 1
	.short _0224F632 - _0224F600 - 2 ; case 2
	.short _0224F67E - _0224F600 - 2 ; case 3
	.short _0224F69A - _0224F600 - 2 ; case 4
	.short _0224F6AC - _0224F600 - 2 ; case 5
	.short _0224F6C8 - _0224F600 - 2 ; case 6
_0224F60E:
	bl ov16_0224EF00
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
	pop {r3, r4, r5, pc}
_0224F61A:
	ldr r2, _0224F724 ; =0x00002184
	ldr r3, [r4, r2]
	mov r2, #4
	tst r2, r3
	bne _0224F62C
	bl ov16_0224E784
	cmp r0, #1
	beq _0224F720
_0224F62C:
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
_0224F632:
	ldr r0, _0224F724 ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #1
	tst r0, r1
	bne _0224F678
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov16_0224E13C
	cmp r0, #0
	beq _0224F678
	cmp r0, #1
	beq _0224F658
	cmp r0, #2
	beq _0224F65E
	cmp r0, #3
	beq _0224F664
	b _0224F668
_0224F658:
	mov r0, #0x26
	str r0, [r4, #0xc]
	b _0224F668
_0224F65E:
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	b _0224F668
_0224F664:
	mov r0, #0x21
	str r0, [r4, #0xc]
_0224F668:
	mov r0, #0x15
	str r0, [r4, #8]
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	pop {r3, r4, r5, pc}
_0224F678:
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
_0224F67E:
	ldr r0, _0224F724 ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #8
	tst r0, r1
	bne _0224F694
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224E458
	cmp r0, #1
	beq _0224F720
_0224F694:
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
_0224F69A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224E5F4
	cmp r0, #1
	beq _0224F720
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
_0224F6AC:
	ldr r0, _0224F724 ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #0x80
	tst r0, r1
	bne _0224F6C2
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224F460
	cmp r0, #1
	beq _0224F720
_0224F6C2:
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
_0224F6C8:
	ldr r3, _0224F728 ; =0x00003044
	ldr r2, [r4, #0x64]
	ldr r3, [r4, r3]
	add r0, r5, #0
	lsl r3, r3, #0x10
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl ov16_02253C98
	mov r0, #0
	str r0, [r4, #0x48]
_0224F6DE:
	ldr r1, _0224F72C ; =0x0000216C
	ldr r0, _0224F730 ; =0x801FDA49
	ldr r2, [r4, r1]
	tst r0, r2
	beq _0224F6EE
	mov r0, #0x19
	str r0, [r4, #8]
	b _0224F718
_0224F6EE:
	add r0, r1, #0
	sub r0, #0x2c
	ldr r2, [r4, r0]
	mov r0, #0x40
	orr r0, r2
	sub r1, #0x2c
	str r0, [r4, r1]
	ldr r2, _0224F728 ; =0x00003044
	add r0, r4, #0
	ldr r2, [r4, r2]
	mov r1, #0
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x17
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_022560B0
_0224F718:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02259868
_0224F720:
	pop {r3, r4, r5, pc}
	nop
_0224F724: .word 0x00002184
_0224F728: .word 0x00003044
_0224F72C: .word 0x0000216C
_0224F730: .word 0x801FDA49
	thumb_func_end ov16_0224F5E8

	thumb_func_start ov16_0224F734
ov16_0224F734: ; 0x0224F734
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x4c]
	add r5, r0, #0
	cmp r2, #6
	bhi _0224F814
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0224F74C: ; jump table
	.short _0224F75A - _0224F74C - 2 ; case 0
	.short _0224F766 - _0224F74C - 2 ; case 1
	.short _0224F778 - _0224F74C - 2 ; case 2
	.short _0224F7A2 - _0224F74C - 2 ; case 3
	.short _0224F7CC - _0224F74C - 2 ; case 4
	.short _0224F7EE - _0224F74C - 2 ; case 5
	.short _0224F810 - _0224F74C - 2 ; case 6
_0224F75A:
	add r2, r2, #1
	str r2, [r4, #0x4c]
	bl ov16_0224E5F4
	cmp r0, #1
	beq _0224F818
_0224F766:
	ldr r0, [r4, #0x4c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x4c]
	add r0, r5, #0
	bl ov16_02253E3C
	cmp r0, #1
	beq _0224F818
_0224F778:
	ldr r0, _0224F81C ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #0x20
	tst r0, r1
	bne _0224F79C
	ldr r3, [r4, #0x6c]
	cmp r3, #0xff
	beq _0224F79C
	ldr r0, _0224F820 ; =0x00003044
	add r1, r4, #0
	ldr r0, [r4, r0]
	str r0, [sp]
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0224EF20
	cmp r0, #1
	beq _0224F818
_0224F79C:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
_0224F7A2:
	ldr r0, _0224F81C ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #0x40
	tst r0, r1
	bne _0224F7C6
	ldr r3, [r4, #0x6c]
	cmp r3, #0xff
	beq _0224F7C6
	ldr r0, _0224F820 ; =0x00003044
	add r1, r4, #0
	ldr r0, [r4, r0]
	str r0, [sp]
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0224F274
	cmp r0, #1
	beq _0224F818
_0224F7C6:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
_0224F7CC:
	ldr r0, _0224F81C ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #2
	tst r0, r1
	bne _0224F7E8
	ldr r0, [r4, #0x6c]
	cmp r0, #0xff
	beq _0224F7E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224E6F4
	cmp r0, #1
	beq _0224F818
_0224F7E8:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
_0224F7EE:
	ldr r0, _0224F81C ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0224F80A
	ldr r0, [r4, #0x6c]
	cmp r0, #0xff
	beq _0224F80A
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224EE88
	cmp r0, #1
	beq _0224F818
_0224F80A:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
_0224F810:
	mov r0, #0
	str r0, [r4, #0x4c]
_0224F814:
	mov r0, #0x18
	str r0, [r4, #8]
_0224F818:
	pop {r3, r4, r5, pc}
	nop
_0224F81C: .word 0x00002184
_0224F820: .word 0x00003044
	thumb_func_end ov16_0224F734

	thumb_func_start ov16_0224F824
ov16_0224F824: ; 0x0224F824
	push {r3, r4, lr}
	sub sp, #4
	add r2, sp, #0
	add r4, r1, #0
	bl ov16_0225366C
	cmp r0, #1
	bne _0224F84A
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x19
	add sp, #4
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_0224F84A:
	mov r0, #0x19
	str r0, [r4, #8]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0224F824

	thumb_func_start ov16_0224F854
ov16_0224F854: ; 0x0224F854
	push {r4, lr}
	ldr r0, _0224F8CC ; =0x0000216C
	add r4, r1, #0
	ldr r1, [r4, r0]
	mov r2, #2
	lsl r2, r2, #0x1e
	add r3, r1, #0
	tst r3, r2
	beq _0224F86C
	mov r0, #0x22
	str r0, [r4, #8]
	pop {r4, pc}
_0224F86C:
	lsr r2, r2, #0x16
	tst r2, r1
	beq _0224F886
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x2a
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x26
	str r0, [r4, #0xc]
	pop {r4, pc}
_0224F886:
	add r2, r0, #0
	add r2, #0x14
	ldr r2, [r4, r2]
	cmp r2, #0
	beq _0224F8AC
	mov r3, #1
	add r2, r1, #0
	tst r2, r3
	beq _0224F8AC
	mov r2, #1
	bic r1, r2
	str r1, [r4, r0]
	ldr r2, [r4, r0]
	lsl r1, r3, #0xe
	orr r1, r2
	str r1, [r4, r0]
	mov r0, #0x1c
	str r0, [r4, #8]
	pop {r4, pc}
_0224F8AC:
	ldr r0, _0224F8D0 ; =0x001FD849
	tst r0, r1
	beq _0224F8C6
	add r0, r4, #0
	mov r1, #1
	mov r2, #7
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x21
	str r0, [r4, #0xc]
	pop {r4, pc}
_0224F8C6:
	mov r0, #0x1a
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_0224F8CC: .word 0x0000216C
_0224F8D0: .word 0x001FD849
	thumb_func_end ov16_0224F854

	thumb_func_start ov16_0224F8D4
ov16_0224F8D4: ; 0x0224F8D4
	push {r4, lr}
	add r4, r1, #0
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x1b
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ov16_0224F8D4

	thumb_func_start ov16_0224F8EC
ov16_0224F8EC: ; 0x0224F8EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r2, _0224FC18 ; =0x0000216C
	add r4, r1, #0
	ldr r1, [r4, r2]
	add r7, r0, #0
	mov r0, #0x20
	tst r0, r1
	beq _0224F914
	ldr r0, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r0, #0
	mul r3, r1
	ldr r0, _0224FC1C ; =0x00002D90
	add r3, r4, r3
	ldr r0, [r3, r0]
	sub r1, #0xc1
	mul r1, r0
	sub r2, #0x28
	str r1, [r4, r2]
_0224F914:
	ldr r0, _0224FC20 ; =0x00002144
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0224F91E
	b _0224FCEC
_0224F91E:
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	bl ov16_02258AB8
	str r0, [sp, #4]
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	mov r2, #0
	bl ov16_02258ACC
	str r0, [sp]
	ldr r0, _0224FC20 ; =0x00002144
	ldr r0, [r4, r0]
	cmp r0, #0
	blt _0224F940
	bl GF_AssertFail
_0224F940:
	ldr r1, [r4, #0x64]
	add r0, r7, #0
	bl ov16_0223E208
	add r5, r0, #0
	ldr r1, [r4, #0x6c]
	add r0, r7, #0
	bl ov16_0223E208
	cmp r5, r0
	bne _0224F962
	ldr r1, [r4, #0x64]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0x61
	bl ov16_022666BC
_0224F962:
	ldr r0, [r4, #0x6c]
	ldr r2, [r4, #0x64]
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0224FC24 ; =0x000030F4
	str r2, [r1, r0]
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	add r6, r1, #0
	mul r6, r0
	mov r2, #1
	ldr r1, _0224FC28 ; =0x00002DB0
	add r5, r4, r6
	ldr r3, [r5, r1]
	lsl r2, r2, #0x18
	tst r2, r3
	beq _0224FA3C
	ldr r2, _0224FC20 ; =0x00002144
	ldr r2, [r4, r2]
	cmp r2, #0
	bge _0224FA3C
	add r3, r1, #0
	add r3, #0x30
	ldr r3, [r5, r3]
	add r5, r2, r3
	cmp r5, #0
	bgt _0224F9DE
	mov r2, #0xbb
	lsl r2, r2, #2
	add r6, r4, r2
	ldr r2, [r4, #0x64]
	mov r5, #0x1c
	mul r5, r2
	ldr r2, [r6, r5]
	sub r2, r2, r3
	str r2, [r6, r5]
	ldr r5, [r4, #0x6c]
	add r3, r4, r1
	add r2, r5, #0
	mul r2, r0
	ldr r6, [r3, r2]
	ldr r5, _0224FC2C ; =0xFEFFFFFF
	and r5, r6
	str r5, [r3, r2]
	ldr r2, [r4, #0x6c]
	add r3, r2, #0
	add r2, r1, #0
	mul r3, r0
	add r3, r4, r3
	add r2, #0x30
	ldr r2, [r3, r2]
	add r1, #0x30
	neg r3, r2
	ldr r2, _0224FC20 ; =0x00002144
	add r2, r2, #4
	str r3, [r4, r2]
	ldr r2, [r4, #0x6c]
	mov r3, #0
	mul r0, r2
	add r0, r4, r0
	str r3, [r0, r1]
	b _0224FA0A
_0224F9DE:
	mov r3, #0xbb
	lsl r3, r3, #2
	add r6, r4, r3
	ldr r3, [r4, #0x64]
	mov r5, #0x1c
	mul r5, r3
	ldr r3, [r6, r5]
	add r1, #0x30
	add r2, r3, r2
	str r2, [r6, r5]
	ldr r2, [r4, #0x6c]
	add r1, r4, r1
	mul r0, r2
	ldr r2, _0224FC20 ; =0x00002144
	ldr r3, [r1, r0]
	ldr r2, [r4, r2]
	add r2, r3, r2
	str r2, [r1, r0]
	ldr r0, _0224FC20 ; =0x00002144
	ldr r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_0224FA0A:
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r2, [r4, #0x6c]
	add r1, r4, r0
	add r0, r2, #0
	mov r3, #0x1c
	mul r0, r3
	ldr r5, [r1, r0]
	mov r2, #8
	orr r2, r5
	str r2, [r1, r0]
	ldr r0, [r4, #0x6c]
	add r3, #0xfc
	str r0, [r4, r3]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x5a
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x1c
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224FA3C:
	ldr r0, _0224FC30 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224FC34 ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x65
	bne _0224FA62
	ldr r0, _0224FC38 ; =0x00002D8C
	add r1, r4, r6
	ldr r2, [r1, r0]
	ldr r0, _0224FC20 ; =0x00002144
	ldr r1, [r4, r0]
	add r1, r1, r2
	cmp r1, #0
	bgt _0224FA62
	sub r1, r2, #1
	neg r1, r1
	str r1, [r4, r0]
_0224FA62:
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	bne _0224FAD0
	ldr r0, [sp, #4]
	cmp r0, #0x41
	bne _0224FAA2
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	ldr r0, [sp]
	cmp r1, r0
	bge _0224FAA2
	ldr r2, [r4, #0x6c]
	mov r0, #0xb5
	lsl r0, r0, #2
	mov r1, #0x1c
	add r3, r2, #0
	mul r3, r1
	add r0, r4, r0
	ldr r2, [r0, r3]
	mov r1, #0x20
	orr r1, r2
	str r1, [r0, r3]
_0224FAA2:
	ldr r0, [sp, #4]
	cmp r0, #0x67
	bne _0224FAD0
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r3, r4, r0
	ldr r0, _0224FC38 ; =0x00002D8C
	ldr r2, [r3, r0]
	add r0, r0, #4
	ldr r0, [r3, r0]
	cmp r2, r0
	bne _0224FAD0
	mov r0, #0xb5
	lsl r0, r0, #2
	add r3, r1, #0
	mov r2, #0x1c
	add r0, r4, r0
	mul r3, r2
	ldr r2, [r0, r3]
	mov r1, #0x20
	orr r1, r2
	str r1, [r0, r3]
_0224FAD0:
	ldr r0, [r4, #0x6c]
	lsl r1, r0, #6
	add r2, r4, r1
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1f
	bne _0224FAF4
	mov r1, #0x1c
	mul r1, r0
	add r2, r4, r1
	mov r1, #0xb5
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	beq _0224FB3E
_0224FAF4:
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0224FC38 ; =0x00002D8C
	add r1, r4, r1
	ldr r2, _0224FC20 ; =0x00002144
	ldr r1, [r1, r0]
	ldr r0, [r4, r2]
	add r0, r0, r1
	cmp r0, #0
	bgt _0224FB3E
	sub r0, r1, #1
	neg r0, r0
	str r0, [r4, r2]
	ldr r0, [r4, #0x6c]
	mov r1, #0x75
	lsl r0, r0, #6
	add r0, r4, r0
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	beq _0224FB30
	add r0, r2, #0
	add r0, #0x28
	ldr r1, [r4, r0]
	mov r0, #0x80
	orr r0, r1
	add r2, #0x28
	str r0, [r4, r2]
	b _0224FB3E
_0224FB30:
	add r0, r2, #0
	add r0, #0x28
	ldr r0, [r4, r0]
	sub r1, #0xd4
	orr r0, r1
	add r2, #0x28
	str r0, [r4, r2]
_0224FB3E:
	ldr r1, [r4, #0x6c]
	ldr r0, _0224FC3C ; =0x000030E4
	lsl r3, r1, #2
	ldr r1, _0224FC20 ; =0x00002144
	add r0, r4, r0
	ldr r2, [r0, r3]
	ldr r1, [r4, r1]
	add r1, r2, r1
	str r1, [r0, r3]
	ldr r0, _0224FC40 ; =0x00002DBC
	ldr r1, [r4, #0x6c]
	add r3, r4, r0
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldrb r0, [r3, r2]
	cmp r0, #0xff
	bhs _0224FB66
	add r0, r0, #1
	strb r0, [r3, r2]
_0224FB66:
	ldr r0, _0224FC30 ; =0x00003044
	mov r1, #0x3e
	ldr r0, [r4, r0]
	lsl r1, r1, #4
	lsl r0, r0, #4
	add r0, r4, r0
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0224FBD4
	ldr r1, [r4, #0x6c]
	ldr r0, _0224FC20 ; =0x00002144
	lsl r1, r1, #6
	add r2, r4, r1
	ldr r1, [r4, #0x64]
	ldr r0, [r4, r0]
	lsl r1, r1, #2
	add r2, r2, r1
	mov r1, #0x76
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0x6c]
	ldr r2, [r4, #0x64]
	lsl r0, r0, #6
	add r0, r4, r0
	add r1, #0x10
	str r2, [r0, r1]
	ldr r0, [r4, #0x64]
	bl sub_020787CC
	mov r1, #0x7b
	ldr r3, [r4, #0x6c]
	lsl r1, r1, #2
	add r2, r4, r1
	lsl r5, r3, #6
	ldr r3, [r2, r5]
	orr r0, r3
	str r0, [r2, r5]
	ldr r2, [r4, #0x6c]
	ldr r0, _0224FC20 ; =0x00002144
	add r5, r2, #0
	add r2, r1, #0
	mov r3, #0x1c
	mul r5, r3
	ldr r0, [r4, r0]
	add r5, r4, r5
	add r2, #0xec
	str r0, [r5, r2]
	ldr r0, [r4, #0x6c]
	ldr r5, [r4, #0x64]
	add r2, r0, #0
	mul r2, r3
	add r0, r4, r2
	add r1, #0xf0
	str r5, [r0, r1]
	b _0224FC62
_0224FBD4:
	cmp r0, #1
	bne _0224FC62
	ldr r2, [r4, #0x6c]
	ldr r0, _0224FC20 ; =0x00002144
	lsl r2, r2, #6
	add r3, r4, r2
	ldr r2, [r4, #0x64]
	ldr r0, [r4, r0]
	lsl r2, r2, #2
	add r2, r3, r2
	lsr r1, r1, #1
	str r0, [r2, r1]
	ldr r0, [r4, #0x6c]
	ldr r2, [r4, #0x64]
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #2
	lsl r0, r0, #8
	str r2, [r1, r0]
	ldr r0, [r4, #0x64]
	bl sub_020787CC
	mov r1, #0x81
	ldr r3, [r4, #0x6c]
	lsl r1, r1, #2
	add r2, r4, r1
	lsl r5, r3, #6
	ldr r3, [r2, r5]
	orr r0, r3
	str r0, [r2, r5]
	ldr r2, [r4, #0x6c]
	ldr r0, _0224FC20 ; =0x00002144
	b _0224FC44
	nop
_0224FC18: .word 0x0000216C
_0224FC1C: .word 0x00002D90
_0224FC20: .word 0x00002144
_0224FC24: .word 0x000030F4
_0224FC28: .word 0x00002DB0
_0224FC2C: .word 0xFEFFFFFF
_0224FC30: .word 0x00003044
_0224FC34: .word 0x000003DE
_0224FC38: .word 0x00002D8C
_0224FC3C: .word 0x000030E4
_0224FC40: .word 0x00002DBC
_0224FC44:
	add r5, r2, #0
	add r2, r1, #0
	mov r3, #0x1c
	mul r5, r3
	ldr r0, [r4, r0]
	add r5, r4, r5
	add r2, #0xdc
	str r0, [r5, r2]
	ldr r0, [r4, #0x6c]
	ldr r5, [r4, #0x64]
	add r2, r0, #0
	mul r2, r3
	add r0, r4, r2
	add r1, #0xe0
	str r5, [r0, r1]
_0224FC62:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224FCF4 ; =0x00002D8C
	ldr r2, [r1, r0]
	ldr r0, _0224FCF8 ; =0x00002144
	ldr r1, [r4, r0]
	add r0, r1, r2
	cmp r0, #0
	bgt _0224FC8E
	mov r0, #0xbb
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r3, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r3
	ldr r3, [r1, r0]
	neg r2, r2
	add r2, r3, r2
	str r2, [r1, r0]
	b _0224FCA2
_0224FC8E:
	ldr r3, [r4, #0x64]
	mov r0, #0xbb
	lsl r0, r0, #2
	mov r2, #0x1c
	add r5, r3, #0
	add r0, r4, r0
	mul r5, r2
	ldr r2, [r0, r5]
	add r1, r2, r1
	str r1, [r0, r5]
_0224FCA2:
	ldr r3, _0224FCF8 ; =0x00002144
	ldr r0, [r4, #0x6c]
	mov r2, #0x82
	lsl r0, r0, #6
	ldr r1, [r4, r3]
	add r0, r4, r0
	lsl r2, r2, #2
	str r1, [r0, r2]
	ldr r1, [r4, #0x6c]
	ldr r0, [r4, #0x64]
	lsl r1, r1, #6
	add r5, r4, r1
	add r1, r2, #4
	str r0, [r5, r1]
	ldr r0, [r4, #0x6c]
	sub r2, #0xf0
	str r0, [r4, r2]
	ldr r0, [r4, r3]
	add r3, #0x18
	str r0, [r4, r3]
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x1c
	str r0, [r4, #0xc]
	ldr r1, _0224FCFC ; =0x0000213C
	mov r0, #2
	ldr r2, [r4, r1]
	lsl r0, r0, #0xc
	orr r0, r2
	add sp, #8
	str r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0224FCEC:
	mov r0, #0x1c
	str r0, [r4, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224FCF4: .word 0x00002D8C
_0224FCF8: .word 0x00002144
_0224FCFC: .word 0x0000213C
	thumb_func_end ov16_0224F8EC

	thumb_func_start ov16_0224FD00
ov16_0224FD00: ; 0x0224FD00
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r2, [r4, #0x38]
	add r5, r0, #0
	cmp r2, #0
	beq _0224FD14
	cmp r2, #1
	beq _0224FDF2
	b _0224FEC8
_0224FD14:
	ldr r2, [r4, #0x3c]
	cmp r2, #6
	bls _0224FD1C
	b _0224FEC8
_0224FD1C:
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0224FD28: ; jump table
	.short _0224FD36 - _0224FD28 - 2 ; case 0
	.short _0224FD42 - _0224FD28 - 2 ; case 1
	.short _0224FD54 - _0224FD28 - 2 ; case 2
	.short _0224FD88 - _0224FD28 - 2 ; case 3
	.short _0224FDA4 - _0224FD28 - 2 ; case 4
	.short _0224FDB2 - _0224FD28 - 2 ; case 5
	.short _0224FDDC - _0224FD28 - 2 ; case 6
_0224FD36:
	add r2, r2, #1
	str r2, [r4, #0x3c]
	bl ov16_022511FC
	cmp r0, #1
	beq _0224FDB0
_0224FD42:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov16_02251218
	cmp r0, #1
	beq _0224FDB0
_0224FD54:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	add r2, sp, #0xc
	bl ov16_02253710
	cmp r0, #1
	bne _0224FD88
	ldr r0, _0224FED4 ; =0x0000216C
	ldr r1, [r4, r0]
	ldr r0, _0224FED8 ; =0x001FD849
	tst r0, r1
	bne _0224FD88
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224FD88:
	ldr r0, [r4, #0x3c]
	ldr r2, _0224FEDC ; =0x00000125
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224FDA4:
	add r2, r2, #1
	str r2, [r4, #0x3c]
	bl ov16_0225126C
	cmp r0, #1
	bne _0224FDB2
_0224FDB0:
	b _0224FED0
_0224FDB2:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	add r2, sp, #8
	bl ov16_0225708C
	cmp r0, #1
	bne _0224FDDC
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224FDDC:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov16_022512F8
	cmp r0, #1
	bne _0224FEC8
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0224FDF2:
	ldr r2, [r4, #0x3c]
	cmp r2, #6
	bhi _0224FEC8
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0224FE04: ; jump table
	.short _0224FE12 - _0224FE04 - 2 ; case 0
	.short _0224FE1E - _0224FE04 - 2 ; case 1
	.short _0224FE52 - _0224FE04 - 2 ; case 2
	.short _0224FE6E - _0224FE04 - 2 ; case 3
	.short _0224FE7A - _0224FE04 - 2 ; case 4
	.short _0224FEA4 - _0224FE04 - 2 ; case 5
	.short _0224FEB6 - _0224FE04 - 2 ; case 6
_0224FE12:
	add r2, r2, #1
	str r2, [r4, #0x3c]
	bl ov16_022511FC
	cmp r0, #1
	beq _0224FED0
_0224FE1E:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	add r2, sp, #4
	bl ov16_02253710
	cmp r0, #1
	bne _0224FE52
	ldr r0, _0224FED4 ; =0x0000216C
	ldr r1, [r4, r0]
	ldr r0, _0224FED8 ; =0x001FD849
	tst r0, r1
	bne _0224FE52
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224FE52:
	ldr r0, [r4, #0x3c]
	ldr r2, _0224FEDC ; =0x00000125
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224FE6E:
	add r2, r2, #1
	str r2, [r4, #0x3c]
	bl ov16_0225126C
	cmp r0, #1
	beq _0224FED0
_0224FE7A:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	add r2, sp, #0
	bl ov16_0225708C
	cmp r0, #1
	bne _0224FEA4
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224FEA4:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov16_02251218
	cmp r0, #1
	beq _0224FED0
_0224FEB6:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov16_022512F8
	cmp r0, #1
	beq _0224FED0
_0224FEC8:
	mov r0, #0
	str r0, [r4, #0x3c]
	mov r0, #0x1e
	str r0, [r4, #8]
_0224FED0:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224FED4: .word 0x0000216C
_0224FED8: .word 0x001FD849
_0224FEDC: .word 0x00000125
	thumb_func_end ov16_0224FD00

	thumb_func_start ov16_0224FEE0
ov16_0224FEE0: ; 0x0224FEE0
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0224FEE0

	thumb_func_start ov16_0224FEE4
ov16_0224FEE4: ; 0x0224FEE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, [r4, #0x40]
	add r6, r0, #0
	cmp r1, #7
	bls _0224FEF4
	b _0225012E
_0224FEF4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224FF00: ; jump table
	.short _0224FF10 - _0224FF00 - 2 ; case 0
	.short _0224FF8A - _0224FF00 - 2 ; case 1
	.short _0224FF9E - _0224FF00 - 2 ; case 2
	.short _0224FFC4 - _0224FF00 - 2 ; case 3
	.short _0224FFD8 - _0224FF00 - 2 ; case 4
	.short _0224FFF2 - _0224FF00 - 2 ; case 5
	.short _0225001C - _0224FF00 - 2 ; case 6
	.short _022500B0 - _0224FF00 - 2 ; case 7
_0224FF10:
	mov r1, #0
	ldr r7, [r4, #0x44]
	str r1, [sp, #4]
	bl ov16_0223DF1C
	cmp r7, r0
	bge _0224FF80
	add r5, r4, #0
	add r5, #0x44
_0224FF22:
	mov r0, #0xc0
	mul r0, r7
	mov r1, #0xb7
	add r0, r4, r0
	lsl r1, r1, #6
	ldr r2, [r0, r1]
	ldr r1, _0225013C ; =0x200400C0
	tst r1, r2
	bne _0224FF68
	ldr r1, _02250140 ; =0x00002DC4
	ldr r2, [r0, r1]
	ldr r1, _0225013C ; =0x200400C0
	tst r1, r2
	beq _0224FF68
	ldr r1, _02250140 ; =0x00002DC4
	ldr r2, [r0, r1]
	ldr r1, _02250144 ; =0xDFFBFF3F
	and r2, r1
	ldr r1, _02250140 ; =0x00002DC4
	str r2, [r0, r1]
	ldr r2, _02250148 ; =0x0000011F
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	mov r0, #0x46
	ldr r1, [r4, #0x44]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #4]
_0224FF68:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0224FFF0
	ldr r7, [r4, #0x44]
	add r0, r6, #0
	bl ov16_0223DF1C
	cmp r7, r0
	blt _0224FF22
_0224FF80:
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x44]
_0224FF8A:
	ldr r0, [r4, #0x40]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x40]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl ov16_02257808
	cmp r0, #1
	beq _0224FFF0
_0224FF9E:
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_02256414
	add r2, r0, #0
	beq _0224FFBE
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224FFBE:
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
_0224FFC4:
	ldr r0, [r4, #0x40]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x40]
	ldr r2, [r4, #0x64]
	add r0, r6, #0
	bl ov16_022579A4
	cmp r0, #1
	beq _0224FFF0
_0224FFD8:
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	ldr r2, [r4, #0x6c]
	cmp r2, #0xff
	beq _0224FFF2
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_022579A4
	cmp r0, #1
	bne _0224FFF2
_0224FFF0:
	b _02250138
_0224FFF2:
	ldr r0, [r4, #0x40]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x40]
	add r0, r6, #0
	add r2, sp, #0xc
	bl ov16_022588BC
	cmp r0, #1
	bne _0225001C
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225001C:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x60
	bne _0225002C
	mov r2, #0
	b _02250040
_0225002C:
	ldr r0, _0225014C ; =0x00002160
	ldr r2, [r4, r0]
	cmp r2, #0
	bne _02250040
	ldr r0, _02250150 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _02250154 ; =0x000003E2
	ldrb r2, [r1, r0]
_02250040:
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	ldr r3, [r4, #0x6c]
	cmp r3, #0xff
	beq _022500B0
	mov r0, #0xc0
	add r5, r3, #0
	mul r5, r0
	ldr r0, _02250158 ; =0x00002DAC
	add r1, r4, r5
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r1, r0
	beq _022500B0
	ldr r1, _0225015C ; =0x0000216C
	lsl r0, r0, #9
	ldr r1, [r4, r1]
	tst r0, r1
	bne _022500B0
	ldr r0, [r4, #0x64]
	cmp r3, r0
	beq _022500B0
	mov r0, #0x1c
	mul r0, r3
	add r7, r4, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	cmp r1, #0
	bne _02250086
	add r0, #8
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _022500B0
_02250086:
	ldr r0, _02250160 ; =0x00002D8C
	add r1, r4, r5
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022500B0
	cmp r2, #0xa
	bne _022500B0
	mov r0, #0x46
	lsl r0, r0, #2
	str r3, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1d
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_022500B0:
	mov r0, #0
	str r0, [sp]
	ldr r7, [r4, #0x44]
	add r0, r6, #0
	bl ov16_0223DF1C
	cmp r7, r0
	bge _0225011E
	add r5, r4, #0
	add r5, #0x44
_022500C4:
	ldr r0, _02250164 ; =0x000021EC
	add r1, r4, r7
	ldrb r7, [r1, r0]
	add r0, r7, #0
	bl sub_020787CC
	ldr r1, _02250168 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	ldr r0, [r5, #0]
	beq _022500E0
	add r0, r0, #1
	str r0, [r5, #0]
	b _02250112
_022500E0:
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, sp, #8
	bl ov16_02258104
	cmp r0, #1
	bne _02250112
	mov r0, #0x46
	lsl r0, r0, #2
	str r7, [r4, r0]
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp]
	b _0225011E
_02250112:
	ldr r7, [r4, #0x44]
	add r0, r6, #0
	bl ov16_0223DF1C
	cmp r7, r0
	blt _022500C4
_0225011E:
	ldr r0, [sp]
	cmp r0, #0
	bne _0225012E
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x44]
_0225012E:
	mov r0, #0
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	mov r0, #0x1f
	str r0, [r4, #8]
_02250138:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225013C: .word 0x200400C0
_02250140: .word 0x00002DC4
_02250144: .word 0xDFFBFF3F
_02250148: .word 0x0000011F
_0225014C: .word 0x00002160
_02250150: .word 0x00003044
_02250154: .word 0x000003E2
_02250158: .word 0x00002DAC
_0225015C: .word 0x0000216C
_02250160: .word 0x00002D8C
_02250164: .word 0x000021EC
_02250168: .word 0x00003108
	thumb_func_end ov16_0224FEE4

	thumb_func_start ov16_0225016C
ov16_0225016C: ; 0x0225016C
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0225016C

	thumb_func_start ov16_02250170
ov16_02250170: ; 0x02250170
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0225025C ; =0x0000217D
	add r4, r1, #0
	ldrb r2, [r4, r6]
	str r0, [sp]
	cmp r2, #0
	beq _02250256
	ldr r3, [r4, #0x74]
	mov ip, r3
	cmp r3, #0xff
	bne _02250208
	ldr r3, [r4, #0x64]
	mov r7, #0xc0
	add r5, r3, #0
	mul r5, r7
	ldr r3, _02250260 ; =0x00002DAC
	add r5, r4, r5
	ldr r5, [r5, r3]
	mov r3, #7
	tst r3, r5
	bne _02250208
	add r3, r6, #0
	sub r3, #0x11
	ldr r5, [r4, r3]
	mov r3, #1
	lsl r3, r3, #0xe
	tst r3, r5
	bne _02250208
	sub r2, r6, #1
	ldrb r2, [r4, r2]
	sub r3, r2, #1
	sub r2, r6, #1
	strb r3, [r4, r2]
	ldrb r2, [r4, r2]
	cmp r2, #0
	beq _022501EE
	mov r3, #1
	add r2, r6, #3
	str r3, [r4, r2]
	bl ov16_02255F94
	add r1, r6, #0
	sub r1, #0x41
	ldr r2, [r4, r1]
	ldr r0, _02250264 ; =0xFFFFBFFF
	and r0, r2
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x4c
	ldr r0, [r4, r0]
	add r1, #0x48
	str r0, [r4, r1]
	ldr r2, _02250268 ; =0x00003044
	add r0, r4, #0
	ldr r2, [r4, r2]
	mov r1, #0
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x17
	str r0, [r4, #0xc]
	b _0225024E
_022501EE:
	ldrb r0, [r4, r6]
	add r7, #0x70
	mov r1, #1
	str r0, [r4, r7]
	add r0, r4, #0
	mov r2, #0x11
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x21
	str r0, [r4, #0xc]
	b _0225024E
_02250208:
	mov r0, ip
	cmp r0, #0xff
	bne _02250222
	ldr r0, [r4, #0x64]
	mov r1, #0xc0
	add r3, r0, #0
	mul r3, r1
	ldr r0, _02250260 ; =0x00002DAC
	add r3, r4, r3
	ldr r3, [r3, r0]
	mov r0, #7
	tst r0, r3
	beq _02250232
_02250222:
	ldr r0, _0225026C ; =0x0000217C
	ldrb r0, [r4, r0]
	sub r0, r2, r0
	add r1, r0, #1
	mov r0, #0x13
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _0225023C
_02250232:
	ldr r0, _0225026C ; =0x0000217C
	add r1, #0x70
	ldrb r0, [r4, r0]
	sub r0, r2, r0
	str r0, [r4, r1]
_0225023C:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x11
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x21
	str r0, [r4, #0xc]
_0225024E:
	ldr r0, [sp]
	bl ov16_02266AA0
	pop {r3, r4, r5, r6, r7, pc}
_02250256:
	mov r0, #0x21
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225025C: .word 0x0000217D
_02250260: .word 0x00002DAC
_02250264: .word 0xFFFFBFFF
_02250268: .word 0x00003044
_0225026C: .word 0x0000217C
	thumb_func_end ov16_02250170

	thumb_func_start ov16_02250270
ov16_02250270: ; 0x02250270
	push {r3, lr}
	ldr r0, _02250294 ; =0x0000213C
	ldr r2, [r1, r0]
	mov r0, #0xf
	lsl r0, r0, #0x18
	tst r0, r2
	beq _0225028C
	add r0, r1, #0
	mov r1, #0x21
	add r2, r1, #0
	mov r3, #0
	bl ov16_02250EF4
	pop {r3, pc}
_0225028C:
	mov r0, #0x22
	str r0, [r1, #8]
	pop {r3, pc}
	nop
_02250294: .word 0x0000213C
	thumb_func_end ov16_02250270

	thumb_func_start ov16_02250298
ov16_02250298: ; 0x02250298
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x85
	lsl r1, r1, #6
	add r5, r0, #0
	ldr r2, [r4, r1]
	mov r0, #8
	tst r0, r2
	beq _022502BC
	mov r0, #8
	bic r2, r0
	str r2, [r4, r1]
	ldr r0, [r4, #0x64]
	str r0, [r4, #0x6c]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	str r0, [r4, #0x64]
_022502BC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02250FF4
	ldr r0, _0225041C ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _02250420 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #4
	bne _02250388
	ldr r0, _02250424 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #2
	tst r0, r1
	bne _02250388
	add r0, r5, #0
	bl ov16_0223DF1C
	ldr r1, _02250428 ; =0x0000217E
	ldrb r2, [r4, r1]
	cmp r2, r0
	bge _02250388
	mov r2, #0xd
	add r0, r1, #6
	str r2, [r4, r0]
	add r0, r5, #0
	bl ov16_0223DF1C
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0223DF14
	bl ov16_02263AE4
	mov r1, #1
	add r7, r0, #0
	and r7, r1
_0225030A:
	ldr r1, _02250428 ; =0x0000217E
	ldr r0, _02250428 ; =0x0000217E
	ldrb r1, [r4, r1]
	ldrb r0, [r4, r0]
	add r2, r1, #1
	ldr r1, _02250428 ; =0x0000217E
	strb r2, [r4, r1]
	add r1, r4, r0
	ldr r0, _0225042C ; =0x000021EC
	ldrb r6, [r1, r0]
	add r0, r6, #0
	bl sub_020787CC
	ldr r1, _02250430 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _02250372
	mov r0, #0xc0
	mul r0, r6
	add r1, r4, r0
	ldr r0, _02250434 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250372
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_0223DF14
	str r0, [sp]
	cmp r7, #0
	beq _02250352
	bl ov16_02263AE4
	mov r1, #1
	tst r0, r1
	beq _02250362
_02250352:
	cmp r7, #0
	bne _02250372
	ldr r0, [sp]
	bl ov16_02263AE4
	mov r1, #1
	tst r0, r1
	beq _02250372
_02250362:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255F94
	str r6, [r4, #0x6c]
	mov r0, #0x16
	str r0, [r4, #8]
	b _02250380
_02250372:
	add r0, r5, #0
	bl ov16_0223DF1C
	ldr r1, _02250428 ; =0x0000217E
	ldrb r1, [r4, r1]
	cmp r1, r0
	blt _0225030A
_02250380:
	add r0, r5, #0
	bl ov16_02266AA0
	pop {r3, r4, r5, r6, r7, pc}
_02250388:
	ldr r0, _0225041C ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _02250420 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #8
	bne _02250416
	ldr r0, _02250424 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #2
	tst r0, r1
	bne _02250416
	add r0, r5, #0
	bl ov16_0223DF1C
	ldr r1, _02250428 ; =0x0000217E
	ldrb r2, [r4, r1]
	cmp r2, r0
	bge _02250416
	mov r2, #0xd
	add r0, r1, #6
	str r2, [r4, r0]
	add r0, r5, #0
	bl ov16_0223DF1C
	ldr r7, _02250428 ; =0x0000217E
_022503BE:
	ldr r0, _02250428 ; =0x0000217E
	ldrb r1, [r4, r0]
	ldrb r0, [r4, r7]
	add r1, r4, r1
	add r0, r0, #1
	strb r0, [r4, r7]
	ldr r0, _0225042C ; =0x000021EC
	ldrb r6, [r1, r0]
	add r0, r6, #0
	bl sub_020787CC
	ldr r1, _02250430 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _02250400
	mov r0, #0xc0
	mul r0, r6
	add r1, r4, r0
	ldr r0, _02250434 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250400
	ldr r0, [r4, #0x64]
	cmp r6, r0
	beq _02250400
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255F94
	str r6, [r4, #0x6c]
	mov r0, #0x16
	str r0, [r4, #8]
	b _0225040E
_02250400:
	add r0, r5, #0
	bl ov16_0223DF1C
	ldr r1, _02250428 ; =0x0000217E
	ldrb r1, [r4, r1]
	cmp r1, r0
	blt _022503BE
_0225040E:
	add r0, r5, #0
	bl ov16_02266AA0
	pop {r3, r4, r5, r6, r7, pc}
_02250416:
	mov r0, #0x23
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225041C: .word 0x00003044
_02250420: .word 0x000003E6
_02250424: .word 0x0000213C
_02250428: .word 0x0000217E
_0225042C: .word 0x000021EC
_02250430: .word 0x00003108
_02250434: .word 0x00002D8C
	thumb_func_end ov16_02250298

	thumb_func_start ov16_02250438
ov16_02250438: ; 0x02250438
	push {r4, lr}
	ldr r0, _02250474 ; =0x0000213C
	add r4, r1, #0
	ldr r1, [r4, r0]
	mov r0, #0xf
	lsl r0, r0, #0x1c
	and r0, r1
	beq _0225046E
	lsr r0, r0, #0x1c
	bl sub_020787EC
	str r0, [r4, #0x74]
	ldr r1, _02250474 ; =0x0000213C
	ldr r0, _02250478 ; =0x0FFFFFFF
	ldr r2, [r4, r1]
	and r0, r2
	str r0, [r4, r1]
	ldr r2, _0225047C ; =0x00000115
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x24
	str r0, [r4, #0xc]
	pop {r4, pc}
_0225046E:
	mov r0, #0x24
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_02250474: .word 0x0000213C
_02250478: .word 0x0FFFFFFF
_0225047C: .word 0x00000115
	thumb_func_end ov16_02250438

	thumb_func_start ov16_02250480
ov16_02250480: ; 0x02250480
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0225143C
	cmp r0, #1
	beq _02250490
	mov r0, #0x26
	str r0, [r4, #8]
_02250490:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02250480

	thumb_func_start ov16_02250494
ov16_02250494: ; 0x02250494
	bx lr
	; .align 2, 0
	thumb_func_end ov16_02250494

	thumb_func_start ov16_02250498
ov16_02250498: ; 0x02250498
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x64]
	add r5, r0, #0
	add r0, r4, #0
	bl ov16_02258AB8
	ldr r1, _022505AC ; =0x0000213C
	lsl r0, r0, #0x18
	ldr r3, [r4, r1]
	mov r2, #0x20
	lsr r0, r0, #0x18
	tst r2, r3
	bne _022504BE
	add r1, r1, #4
	ldr r2, [r4, r1]
	mov r1, #4
	tst r1, r2
	beq _02250512
_022504BE:
	cmp r0, #0x37
	beq _022504CA
	cmp r0, #0x73
	beq _022504CA
	cmp r0, #0x7d
	bne _02250504
_022504CA:
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0xa5
	beq _02250512
	ldr r1, _022505B0 ; =0x00000171
	cmp r0, r1
	bne _022504E6
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	mov r1, #0x10
	tst r1, r2
	bne _02250512
_022504E6:
	cmp r0, #0xe2
	bne _022504F6
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	mov r1, #0x40
	tst r1, r2
	bne _02250512
_022504F6:
	ldr r2, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _022505B4 ; =0x00002DF8
	strh r0, [r2, r1]
	b _02250512
_02250504:
	ldr r2, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _022505B4 ; =0x00002DF8
	mov r0, #0
	strh r0, [r2, r1]
_02250512:
	ldr r0, _022505AC ; =0x0000213C
	mov r1, #1
	ldr r2, [r4, r0]
	lsl r1, r1, #0x14
	tst r1, r2
	bne _0225057A
	add r0, r0, #4
	ldr r1, [r4, r0]
	mov r0, #4
	tst r0, r1
	beq _02250540
	ldr r2, [r4, #0x64]
	ldr r1, _022505B8 ; =0x00003044
	lsl r2, r2, #1
	add r3, r4, r2
	add r2, r1, #0
	ldr r0, [r4, r1]
	add r2, #0x18
	strh r0, [r3, r2]
	sub r0, r1, #4
	ldr r2, [r4, r0]
	add r0, r1, #4
	b _0225054E
_02250540:
	ldr r0, [r4, #0x64]
	mov r2, #0
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, _022505BC ; =0x0000305C
	strh r2, [r1, r0]
	sub r0, #0x14
_0225054E:
	str r2, [r4, r0]
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x40
	tst r0, r1
	beq _0225056E
	mov r0, #0xc1
	ldr r1, [r4, #0x64]
	lsl r0, r0, #6
	ldr r2, [r4, r0]
	lsl r1, r1, #1
	add r1, r4, r1
	add r0, #0x3c
	strh r2, [r1, r0]
	b _0225057A
_0225056E:
	ldr r0, [r4, #0x64]
	mov r2, #0
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, _022505C0 ; =0x0000307C
	strh r2, [r1, r0]
_0225057A:
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #4
	tst r0, r1
	beq _02250596
	mov r0, #0xc1
	ldr r1, [r4, #0x64]
	lsl r0, r0, #6
	ldr r2, [r4, r0]
	lsl r1, r1, #1
	add r1, r4, r1
	add r0, #0x6c
	strh r2, [r1, r0]
_02250596:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02250FF4
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0225991C
	mov r0, #0x27
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022505AC: .word 0x0000213C
_022505B0: .word 0x00000171
_022505B4: .word 0x00002DF8
_022505B8: .word 0x00003044
_022505BC: .word 0x0000305C
_022505C0: .word 0x0000307C
	thumb_func_end ov16_02250498

	thumb_func_start ov16_022505C4
ov16_022505C4: ; 0x022505C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov16_0223DF0C
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	bne _02250646
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ov16_02257628
	cmp r0, #1
	beq _0225069C
	ldr r2, [r4, #0x6c]
	cmp r2, #0xff
	beq _022505FA
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ov16_02257628
	cmp r0, #1
	beq _0225069C
_022505FA:
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r1, #0
	bl ov16_02250F98
	cmp r0, #1
	beq _0225069C
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02250A48
	cmp r0, #1
	beq _0225069C
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02256414
	add r2, r0, #0
	beq _02250632
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02250632:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_022513B0
	cmp r0, #1
	beq _0225069C
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02250E8C
_02250646:
	add r1, r4, #0
	add r1, #0xec
	ldr r1, [r1, #0]
	mov r0, #0x27
	add r2, r4, r1
	ldr r1, _022506A0 ; =0x000021E8
	ldrb r2, [r2, r1]
	sub r1, #0x40
	lsl r2, r2, #4
	add r2, r4, r2
	str r0, [r2, r1]
	ldr r1, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r1
	add r1, r4, r0
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _02250684
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0225B148
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255FBC
	mov r1, #0
	b _0225068C
_02250684:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	add r1, r0, #1
_0225068C:
	add r0, r4, #0
	add r0, #0xec
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov16_022541C4
	mov r0, #8
	str r0, [r4, #8]
_0225069C:
	pop {r3, r4, r5, pc}
	nop
_022506A0: .word 0x000021E8
	thumb_func_end ov16_022505C4

	thumb_func_start ov16_022506A4
ov16_022506A4: ; 0x022506A4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #1
	bl ov16_02250EF4
	cmp r0, #1
	beq _022506BC
	mov r0, #0x27
	str r0, [r4, #8]
_022506BC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_022506A4

	thumb_func_start ov16_022506C0
ov16_022506C0: ; 0x022506C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov16_0223F438
	mov r1, #0x80
	tst r0, r1
	beq _022506D6
	mov r0, #0x2b
	str r0, [r4, #8]
	b _0225073E
_022506D6:
	add r0, r5, #0
	bl ov16_0223F438
	cmp r0, #2
	beq _022506EA
	add r0, r5, #0
	bl ov16_0223F438
	cmp r0, #3
	bne _022506FE
_022506EA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #5
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x2b
	str r0, [r4, #0xc]
	b _0225073E
_022506FE:
	add r0, r5, #0
	bl ov16_0223F438
	cmp r0, #1
	bne _0225071C
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x2b
	str r0, [r4, #0xc]
	b _0225073E
_0225071C:
	add r0, r5, #0
	bl ov16_0223F438
	cmp r0, #4
	bne _02250730
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0x2b
	str r0, [r4, #0xc]
	b _0225073E
_02250730:
	add r0, r5, #0
	bl ov16_0223F438
	cmp r0, #5
	bne _0225073E
	mov r0, #0x2b
	str r0, [r4, #8]
_0225073E:
	ldr r0, _02250748 ; =0x0000311F
	mov r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_02250748: .word 0x0000311F
	thumb_func_end ov16_022506C0

	thumb_func_start ov16_0225074C
ov16_0225074C: ; 0x0225074C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225075C
	mov r0, #0x2b
	str r0, [r4, #8]
_0225075C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0225074C

	thumb_func_start ov16_02250760
ov16_02250760: ; 0x02250760
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl ov16_0223DF0C
	mov r1, #4
	add r4, r0, #0
	and r4, r1
	bne _02250786
	add r0, r6, #0
	mov r1, #0
	bl ov16_0223DF20
	add r6, r0, #0
	bl sub_020776B0
	add r0, r6, #0
	bl sub_0207782C
_02250786:
	cmp r4, #0
	beq _02250790
	mov r0, #0x16
	bl sub_020360DC
_02250790:
	mov r0, #0x2c
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_02250760

	thumb_func_start ov16_02250798
ov16_02250798: ; 0x02250798
	bx lr
	; .align 2, 0
	thumb_func_end ov16_02250798

	thumb_func_start ov16_0225079C
ov16_0225079C: ; 0x0225079C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r1, [sp, #4]
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #0x30]
	bl ov16_0223DF1C
	str r0, [sp, #0x28]
	ldr r0, [sp]
	bl ov16_0223DF0C
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bgt _022507C8
	b _022509BA
_022507C8:
	ldr r0, [sp, #4]
	mov r1, #2
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	and r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	mov r1, #0x18
	and r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x24]
	mov r1, #0x10
	and r0, r1
	str r0, [sp, #0xc]
_022507E6:
	mov r1, #0x4f
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r0, #1
	bic r2, r0
	ldr r0, [sp, #0x1c]
	str r2, [r0, r1]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02250802
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02250814
_02250802:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _022508FA
	ldr r0, [sp]
	ldr r1, [sp, #0x2c]
	bl ov16_0223E208
	cmp r0, #0
	bne _022508FA
_02250814:
	ldr r3, _02250A38 ; =0x00002D8C
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r3]
	cmp r0, #0
	bne _0225083C
	ldr r1, [sp, #0x2c]
	mov r2, #2
	add r4, r1, #0
	eor r4, r2
	mov r1, #0xc0
	add r5, r4, #0
	mul r5, r1
	ldr r1, [sp, #4]
	add r1, r1, r5
	ldr r1, [r1, r3]
	cmp r1, #0
	bne _0225083C
	ldr r1, [sp, #0x2c]
	tst r1, r2
	bne _02250840
_0225083C:
	cmp r0, #0
	beq _02250842
_02250840:
	b _022509A0
_02250842:
	ldr r0, [sp]
	ldr r1, [sp, #0x2c]
	mov r7, #0
	bl ov16_0223DF20
	add r6, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x2c]
	bl ov16_0223DF14
	add r0, r6, #0
	add r5, r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _022508BA
	ldr r0, [sp, #0x2c]
	mov r1, #2
	eor r1, r0
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #8]
_0225086E:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _022508AE
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02250A3C ; =0x000001EE
	cmp r0, r1
	beq _022508AE
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _022508AE
	ldr r2, [sp, #8]
	ldr r1, _02250A40 ; =0x0000219C
	ldrb r1, [r2, r1]
	cmp r5, r1
	beq _022508AE
	add r7, r7, r0
_022508AE:
	add r0, r6, #0
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0225086E
_022508BA:
	cmp r7, #0
	bne _022508DE
	ldr r0, [sp, #0x2c]
	bl sub_020787CC
	ldr r2, _02250A44 ; =0x00003108
	ldr r1, [sp, #4]
	ldrb r1, [r1, r2]
	orr r1, r0
	ldr r0, [sp, #4]
	strb r1, [r0, r2]
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #6
	add r1, r1, r0
	ldr r0, _02250A40 ; =0x0000219C
	strb r2, [r1, r0]
	b _022509A0
_022508DE:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #4]
	str r1, [r0, #0xc]
	mov r1, #0x15
	str r1, [r0, #8]
	mov r1, #0x4f
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r0, #1
	orr r2, r0
	ldr r0, [sp, #0x1c]
	str r2, [r0, r1]
	b _022509A0
_022508FA:
	ldr r1, _02250A38 ; =0x00002D8C
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _022509A0
	ldr r0, [sp]
	ldr r1, [sp, #0x2c]
	mov r7, #0
	bl ov16_0223DF20
	add r6, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x2c]
	bl ov16_0223DF14
	add r0, r6, #0
	add r5, r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02250962
_02250924:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02250956
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02250A3C ; =0x000001EE
	cmp r0, r1
	beq _02250956
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r7, r7, r0
_02250956:
	add r0, r6, #0
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _02250924
_02250962:
	cmp r7, #0
	bne _02250986
	ldr r0, [sp, #0x2c]
	bl sub_020787CC
	ldr r2, _02250A44 ; =0x00003108
	ldr r1, [sp, #4]
	ldrb r1, [r1, r2]
	orr r1, r0
	ldr r0, [sp, #4]
	strb r1, [r0, r2]
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #6
	add r1, r1, r0
	ldr r0, _02250A40 ; =0x0000219C
	strb r2, [r1, r0]
	b _022509A0
_02250986:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #4]
	str r1, [r0, #0xc]
	mov r1, #0x15
	str r1, [r0, #8]
	mov r1, #0x4f
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r0, #1
	orr r2, r0
	ldr r0, [sp, #0x1c]
	str r2, [r0, r1]
_022509A0:
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, #0xc0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	add r1, r0, #1
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	cmp r1, r0
	bge _022509BA
	b _022507E6
_022509BA:
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	cmp r0, #0x15
	bne _02250A30
	ldr r0, [sp, #0x24]
	mov r1, #0x86
	tst r0, r1
	bne _02250A22
	ldr r0, [sp]
	bl ov16_0223EE18
	cmp r0, #0
	bne _02250A22
	mov r1, #0x4f
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #1
	tst r0, r2
	beq _022509EC
	ldr r0, [sp, #4]
	add r1, r1, #4
	ldr r0, [r0, r1]
	tst r0, r2
	bne _02250A22
_022509EC:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, #0
	bl ov16_02255B10
	cmp r0, #0
	beq _02250A22
	mov r1, #0x4f
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #1
	tst r0, r2
	beq _02250A10
	mov r2, #0
	sub r1, r1, #4
	ldr r0, [sp, #4]
	b _02250A14
_02250A10:
	ldr r0, [sp, #4]
	sub r1, r1, #4
_02250A14:
	str r2, [r0, r1]
	ldr r0, [sp, #4]
	mov r1, #1
	mov r2, #0xe7
	bl ov16_02251E1C
	b _02250A2C
_02250A22:
	ldr r0, [sp, #4]
	mov r1, #1
	mov r2, #0xa
	bl ov16_02251E1C
_02250A2C:
	mov r0, #1
	str r0, [sp, #0x30]
_02250A30:
	ldr r0, [sp, #0x30]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02250A38: .word 0x00002D8C
_02250A3C: .word 0x000001EE
_02250A40: .word 0x0000219C
_02250A44: .word 0x00003108
	thumb_func_end ov16_0225079C

	thumb_func_start ov16_02250A48
ov16_02250A48: ; 0x02250A48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	str r1, [sp, #4]
	bl ov16_0223DF1C
	str r0, [sp, #0x24]
	ldr r0, [sp]
	bl ov16_0223DF0C
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bgt _02250A6C
	b _02250CC6
_02250A6C:
	ldr r0, [sp, #0x20]
	mov r1, #8
	and r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	mov r1, #0x10
	and r0, r1
	str r0, [sp, #8]
_02250A7C:
	ldr r0, [sp, #0x20]
	sub r0, #0x4a
	cmp r0, #1
	bhi _02250B16
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov16_0223E208
	cmp r0, #0
	bne _02250B16
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov16_0223E1F8
	cmp r0, #2
	bne _02250B38
	ldr r1, _02250D94 ; =0x00002D8C
	ldr r0, [sp, #4]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02250B38
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	mov r7, #0
	bl ov16_0223DF20
	add r6, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov16_0223DF14
	add r0, r6, #0
	add r4, r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02250B04
_02250AC6:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02250AF8
	add r0, r5, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02250D98 ; =0x000001EE
	cmp r0, r1
	beq _02250AF8
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r7, r7, r0
_02250AF8:
	add r0, r6, #0
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _02250AC6
_02250B04:
	cmp r7, #0
	bne _02250B38
	ldr r0, [sp, #0x1c]
	mov r1, #2
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	b _02250CB2
_02250B16:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02250B2E
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02250C20
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov16_0223E208
	cmp r0, #0
	beq _02250C20
_02250B2E:
	ldr r1, _02250D94 ; =0x00002D8C
	ldr r0, [sp, #4]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02250B3A
_02250B38:
	b _02250CB2
_02250B3A:
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	mov r4, #0
	bl ov16_0223DF20
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov16_0223E258
	add r1, r0, #0
	ldr r0, [sp]
	bl ov16_0223DF20
	str r0, [sp, #0x18]
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov16_0223DF14
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r5, r4, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02250BAC
_02250B6E:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02250BA0
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02250D98 ; =0x000001EE
	cmp r0, r1
	beq _02250BA0
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
_02250BA0:
	add r0, r7, #0
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _02250B6E
_02250BAC:
	ldr r0, [sp, #0x18]
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02250BF6
	ldr r7, _02250D98 ; =0x000001EE
_02250BBA:
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02250BEA
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, r7
	beq _02250BEA
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
_02250BEA:
	ldr r0, [sp, #0x18]
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _02250BBA
_02250BF6:
	cmp r4, #0
	bne _02250CB2
	ldr r0, [sp, #0x14]
	bl ov16_02263AE4
	mov r1, #1
	tst r0, r1
	beq _02250C12
	ldr r0, [sp, #0x1c]
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	b _02250CB2
_02250C12:
	ldr r0, [sp, #0x1c]
	mov r1, #2
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	b _02250CB2
_02250C20:
	ldr r1, _02250D94 ; =0x00002D8C
	ldr r0, [sp, #4]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02250CB2
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	mov r7, #0
	bl ov16_0223DF20
	add r6, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov16_0223DF14
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r4, r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02250C8A
_02250C4C:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02250C7E
	add r0, r5, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02250D98 ; =0x000001EE
	cmp r0, r1
	beq _02250C7E
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r7, r7, r0
_02250C7E:
	add r0, r6, #0
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _02250C4C
_02250C8A:
	cmp r7, #0
	bne _02250CB2
	ldr r0, [sp, #0x10]
	bl ov16_02263AE4
	mov r1, #1
	tst r0, r1
	beq _02250CA6
	ldr r0, [sp, #0x1c]
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	b _02250CB2
_02250CA6:
	ldr r0, [sp, #0x1c]
	mov r1, #2
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
_02250CB2:
	ldr r0, [sp, #4]
	add r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, r0, #1
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x28]
	cmp r1, r0
	bge _02250CC6
	b _02250A7C
_02250CC6:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _02250CDC
	ldr r0, [sp, #0x20]
	mov r1, #1
	tst r0, r1
	beq _02250CDC
	ldr r0, [sp, #0x20]
	mov r1, #4
	tst r0, r1
	beq _02250CF2
_02250CDC:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _02250DC4
	ldr r0, [sp, #0x20]
	mov r1, #0x80
	tst r0, r1
	beq _02250DC4
	ldr r0, [sp, #0x20]
	mov r1, #4
	tst r0, r1
	bne _02250DC4
_02250CF2:
	ldr r0, [sp]
	mov r1, #1
	bl ov16_0223E120
	ldrb r0, [r0, #1]
	sub r0, #0x3e
	cmp r0, #0x28
	bhi _02250D90
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250D0E: ; jump table
	.short _02250D60 - _02250D0E - 2 ; case 0
	.short _02250D90 - _02250D0E - 2 ; case 1
	.short _02250D60 - _02250D0E - 2 ; case 2
	.short _02250D88 - _02250D0E - 2 ; case 3
	.short _02250D88 - _02250D0E - 2 ; case 4
	.short _02250D88 - _02250D0E - 2 ; case 5
	.short _02250D88 - _02250D0E - 2 ; case 6
	.short _02250D70 - _02250D0E - 2 ; case 7
	.short _02250D90 - _02250D0E - 2 ; case 8
	.short _02250D90 - _02250D0E - 2 ; case 9
	.short _02250D78 - _02250D0E - 2 ; case 10
	.short _02250D78 - _02250D0E - 2 ; case 11
	.short _02250D60 - _02250D0E - 2 ; case 12
	.short _02250D60 - _02250D0E - 2 ; case 13
	.short _02250D60 - _02250D0E - 2 ; case 14
	.short _02250D60 - _02250D0E - 2 ; case 15
	.short _02250D60 - _02250D0E - 2 ; case 16
	.short _02250D60 - _02250D0E - 2 ; case 17
	.short _02250D90 - _02250D0E - 2 ; case 18
	.short _02250D90 - _02250D0E - 2 ; case 19
	.short _02250D90 - _02250D0E - 2 ; case 20
	.short _02250D90 - _02250D0E - 2 ; case 21
	.short _02250D90 - _02250D0E - 2 ; case 22
	.short _02250D90 - _02250D0E - 2 ; case 23
	.short _02250D80 - _02250D0E - 2 ; case 24
	.short _02250D78 - _02250D0E - 2 ; case 25
	.short _02250D78 - _02250D0E - 2 ; case 26
	.short _02250D78 - _02250D0E - 2 ; case 27
	.short _02250D90 - _02250D0E - 2 ; case 28
	.short _02250D90 - _02250D0E - 2 ; case 29
	.short _02250D90 - _02250D0E - 2 ; case 30
	.short _02250D90 - _02250D0E - 2 ; case 31
	.short _02250D90 - _02250D0E - 2 ; case 32
	.short _02250D90 - _02250D0E - 2 ; case 33
	.short _02250D90 - _02250D0E - 2 ; case 34
	.short _02250D68 - _02250D0E - 2 ; case 35
	.short _02250D90 - _02250D0E - 2 ; case 36
	.short _02250D68 - _02250D0E - 2 ; case 37
	.short _02250D68 - _02250D0E - 2 ; case 38
	.short _02250D68 - _02250D0E - 2 ; case 39
	.short _02250D68 - _02250D0E - 2 ; case 40
_02250D60:
	ldr r0, _02250D9C ; =0x00000469
	bl sub_0200549C
	b _02250DBC
_02250D68:
	ldr r0, _02250DA0 ; =0x000004B3
	bl sub_0200549C
	b _02250DBC
_02250D70:
	ldr r0, _02250DA4 ; =0x0000046A
	bl sub_0200549C
	b _02250DBC
_02250D78:
	ldr r0, _02250DA8 ; =0x0000046B
	bl sub_0200549C
	b _02250DBC
_02250D80:
	ldr r0, _02250DAC ; =0x0000046C
	bl sub_0200549C
	b _02250DBC
_02250D88:
	ldr r0, _02250DB0 ; =0x0000046D
	bl sub_0200549C
	b _02250DBC
_02250D90:
	ldr r0, _02250DB4 ; =0x00000468
	b _02250DB8
	; .align 2, 0
_02250D94: .word 0x00002D8C
_02250D98: .word 0x000001EE
_02250D9C: .word 0x00000469
_02250DA0: .word 0x000004B3
_02250DA4: .word 0x0000046A
_02250DA8: .word 0x0000046B
_02250DAC: .word 0x0000046C
_02250DB0: .word 0x0000046D
_02250DB4: .word 0x00000468
_02250DB8:
	bl sub_0200549C
_02250DBC:
	ldr r0, [sp]
	mov r1, #2
	bl ov16_0223F460
_02250DC4:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02250DD2
	ldr r0, [sp]
	ldr r1, [sp, #0x1c]
	bl ov16_0223F444
_02250DD2:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02250DDE
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02250DDE:
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_02250A48

	thumb_func_start ov16_02250DE4
ov16_02250DE4: ; 0x02250DE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r5, r1, #0
	ldr r0, _02250E7C ; =0x00002D4C
	add r6, r2, #0
	mov r1, #0xc0
	add r0, r5, r0
	mul r1, r6
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #8]
	lsl r0, r0, #1
	ldrh r1, [r1, r0]
	str r3, [sp, #4]
	ldr r4, [sp, #0x28]
	ldr r7, [sp, #0x30]
	str r0, [sp, #0xc]
	cmp r1, #0xae
	bne _02250E1E
	add r0, r5, #0
	bl ov16_02255950
	cmp r0, #0
	bne _02250E1E
	mov r0, #0x10
	str r0, [r4, #0]
	b _02250E2E
_02250E1E:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldrh r0, [r1, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02250E80 ; =0x000003E6
	ldrh r0, [r1, r0]
	str r0, [r4, #0]
_02250E2E:
	ldr r0, [sp, #4]
	mov r1, #2
	tst r0, r1
	beq _02250E64
	ldr r0, [r4, #0]
	add r1, #0xfe
	cmp r0, r1
	bne _02250E5E
	ldr r0, [sp]
	add r1, r6, #0
	bl ov16_0223E258
	bl sub_020787CC
	ldr r1, _02250E84 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _02250E58
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02250E58:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02250E5E:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02250E64:
	ldr r1, [r4, #0]
	ldr r0, _02250E88 ; =0x00000251
	tst r0, r1
	beq _02250E70
	str r6, [r7, #0]
	b _02250E76
_02250E70:
	mov r0, #1
	eor r0, r6
	str r0, [r7, #0]
_02250E76:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02250E7C: .word 0x00002D4C
_02250E80: .word 0x000003E6
_02250E84: .word 0x00003108
_02250E88: .word 0x00000251
	thumb_func_end ov16_02250DE4

	thumb_func_start ov16_02250E8C
ov16_02250E8C: ; 0x02250E8C
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	bl ov16_0223DF1C
	add r4, r0, #0
	mov r3, #0
	cmp r4, #0
	ble _02250EC6
	ldr r5, [sp]
	add r7, r3, #0
	add r6, r5, #0
_02250EA2:
	ldr r0, _02250EE8 ; =0x00002DB0
	add r3, r3, #1
	ldr r2, [r6, r0]
	ldr r0, _02250EEC ; =0x0000218C
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	eor r0, r1
	add r1, r2, #0
	and r1, r0
	ldr r0, _02250EE8 ; =0x00002DB0
	str r1, [r6, r0]
	ldr r0, _02250EEC ; =0x0000218C
	add r6, #0xc0
	str r7, [r5, r0]
	add r5, r5, #4
	cmp r3, r4
	blt _02250EA2
_02250EC6:
	ldr r1, [sp]
	mov r0, #0
	ldr r1, [r1, #0x64]
	lsl r2, r1, #1
	ldr r1, [sp]
	add r1, r1, r2
	ldr r2, _02250EF0 ; =0x00003064
	strh r0, [r1, r2]
	ldr r1, [sp]
	add r2, #0x60
	ldr r1, [r1, #0x64]
	lsl r3, r1, #1
	ldr r1, [sp]
	add r1, r1, r3
	strh r0, [r1, r2]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02250EE8: .word 0x00002DB0
_02250EEC: .word 0x0000218C
_02250EF0: .word 0x00003064
	thumb_func_end ov16_02250E8C

	thumb_func_start ov16_02250EF4
ov16_02250EF4: ; 0x02250EF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02250F8C ; =0x000021EC
	str r1, [sp]
	ldrb r0, [r5, r0]
	add r6, r2, #0
	str r3, [sp, #4]
	mov r4, #0
	bl sub_020787CC
	ldr r1, _02250F90 ; =0x0000213C
	lsl r0, r0, #0x18
	ldr r2, [r5, r1]
	mov r1, #0xf
	lsl r1, r1, #0x18
	tst r1, r2
	beq _02250F82
	add r1, r2, #0
	tst r1, r0
	bne _02250F36
	ldr r7, _02250F8C ; =0x000021EC
	add r6, r7, #0
	sub r6, #0xb0
_02250F24:
	add r4, r4, #1
	add r0, r5, r4
	ldrb r0, [r0, r7]
	bl sub_020787CC
	ldr r1, [r5, r6]
	lsl r0, r0, #0x18
	tst r1, r0
	beq _02250F24
_02250F36:
	ldr r2, _02250F90 ; =0x0000213C
	mov r1, #0
	mvn r1, r1
	eor r1, r0
	ldr r3, [r5, r2]
	asr r0, r0, #0x18
	and r1, r3
	str r1, [r5, r2]
	bl sub_020787EC
	str r0, [r5, #0x74]
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02250F5E
	add r0, r5, #0
	mov r1, #1
	mov r2, #6
	bl ov16_02251E1C
	b _02250F68
_02250F5E:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x53
	bl ov16_02251E1C
_02250F68:
	mov r0, #0x15
	str r0, [r5, #8]
	ldr r0, [sp]
	mov r2, #0x27
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x74]
	add sp, #8
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02250F94 ; =0x000021A8
	str r2, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02250F82:
	str r6, [r5, #8]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02250F8C: .word 0x000021EC
_02250F90: .word 0x0000213C
_02250F94: .word 0x000021A8
	thumb_func_end ov16_02250EF4

	thumb_func_start ov16_02250F98
ov16_02250F98: ; 0x02250F98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x85
	lsl r0, r0, #6
	add r4, r1, #0
	ldr r1, [r5, r0]
	mov r0, #0xf
	lsl r0, r0, #0x1c
	tst r0, r1
	beq _02250FEC
	mov r0, #1
	lsl r0, r0, #0x1c
	add r2, r1, #0
	tst r2, r0
	bne _02250FBE
_02250FB6:
	lsl r0, r0, #1
	add r2, r1, #0
	tst r2, r0
	beq _02250FB6
_02250FBE:
	mov r2, #0x85
	lsl r2, r2, #6
	mov r1, #0
	mvn r1, r1
	eor r1, r0
	ldr r3, [r5, r2]
	asr r0, r0, #0x1c
	and r1, r3
	str r1, [r5, r2]
	bl sub_020787EC
	mov r2, #0x45
	str r0, [r5, #0x74]
	add r0, r5, #0
	mov r1, #1
	lsl r2, r2, #2
	bl ov16_02251E1C
	mov r0, #0x15
	str r0, [r5, #8]
	str r4, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250FEC:
	str r2, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02250F98

	thumb_func_start ov16_02250FF4
ov16_02250FF4: ; 0x02250FF4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x60
	bne _02251008
	mov r4, #0
	b _0225101C
_02251008:
	ldr r0, _022511D4 ; =0x00002160
	ldr r4, [r5, r0]
	cmp r4, #0
	bne _0225101C
	ldr r0, _022511D8 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022511DC ; =0x000003E2
	ldrb r4, [r1, r0]
_0225101C:
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	mov r6, #0x10
	lsl r1, r2, #4
	add r3, r5, r1
	ldr r1, _022511E0 ; =0x000003E9
	ldrb r1, [r3, r1]
	tst r1, r6
	beq _02251066
	ldr r3, _022511E4 ; =0x0000213C
	lsl r6, r6, #0x10
	ldr r1, [r5, r3]
	tst r1, r6
	bne _02251066
	ldr r1, [r5, #0x6c]
	cmp r1, #0xff
	beq _02251066
	add r3, r3, #4
	ldr r6, [r5, r3]
	mov r3, #4
	tst r3, r6
	beq _02251066
	lsl r1, r1, #1
	add r3, r5, r1
	add r1, r0, #0
	add r1, #0x44
	strh r2, [r3, r1]
	ldr r2, [r5, #0x6c]
	ldr r1, [r5, r0]
	lsl r2, r2, #3
	add r3, r5, r2
	ldr r2, [r5, #0x64]
	add r0, #0x4c
	lsl r2, r2, #1
	add r2, r3, r2
	strh r1, [r2, r0]
_02251066:
	ldr r1, [r5, #0x6c]
	cmp r1, #0xff
	beq _022510B0
	add r0, r5, #0
	bl ov16_02258AB8
	ldr r1, _022511E4 ; =0x0000213C
	lsl r0, r0, #0x18
	ldr r3, [r5, r1]
	mov r2, #0x20
	lsr r0, r0, #0x18
	tst r2, r3
	bne _0225108A
	add r1, r1, #4
	ldr r2, [r5, r1]
	mov r1, #4
	tst r1, r2
	beq _022510A4
_0225108A:
	cmp r0, #0x37
	beq _022510A4
	cmp r0, #0x73
	beq _022510A4
	cmp r0, #0x7d
	beq _022510A4
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _022511E8 ; =0x00002DF8
	mov r2, #0
	strh r2, [r1, r0]
_022510A4:
	ldr r0, _022511E4 ; =0x0000213C
	mov r1, #1
	ldr r2, [r5, r0]
	lsl r1, r1, #0x14
	tst r1, r2
	beq _022510B2
_022510B0:
	b _022511D2
_022510B2:
	add r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #4
	tst r0, r1
	beq _022510F0
	ldr r1, [r5, #0x6c]
	ldr r0, _022511D8 ; =0x00003044
	lsl r1, r1, #1
	add r2, r5, r1
	add r1, r0, #0
	ldr r3, [r5, r0]
	add r1, #0x20
	strh r3, [r2, r1]
	ldr r1, [r5, #0x6c]
	ldr r3, [r5, #0x64]
	lsl r1, r1, #1
	add r2, r5, r1
	add r1, r0, #0
	add r1, #0x28
	strh r3, [r2, r1]
	ldr r1, [r5, #0x6c]
	lsl r1, r1, #1
	add r2, r5, r1
	add r1, r0, #0
	add r1, #0x30
	strh r4, [r2, r1]
	sub r1, r0, #4
	ldr r1, [r5, r1]
	add r0, r0, #4
	str r1, [r5, r0]
	b _0225111A
_022510F0:
	ldr r0, [r5, #0x6c]
	ldr r3, _022511EC ; =0x00003064
	lsl r0, r0, #1
	mov r1, #0
	add r0, r5, r0
	strh r1, [r0, r3]
	ldr r2, [r5, #0x6c]
	mov r0, #0xff
	lsl r2, r2, #1
	add r6, r5, r2
	add r2, r3, #0
	add r2, #8
	strh r0, [r6, r2]
	ldr r0, [r5, #0x6c]
	lsl r0, r0, #1
	add r2, r5, r0
	add r0, r3, #0
	add r0, #0x10
	strh r1, [r2, r0]
	sub r3, #0x1c
	str r1, [r5, r3]
_0225111A:
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	mov r1, #0x40
	tst r1, r2
	beq _022511AE
	add r0, #0x2c
	ldr r0, [r5, r0]
	ldr r2, _022511F0 ; =0x801FDA49
	tst r0, r2
	bne _022511AE
	ldr r0, _022511D8 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r1, r0, #4
	add r3, r5, r1
	ldr r1, _022511F4 ; =0x000003E6
	ldrh r3, [r3, r1]
	cmp r3, #0x40
	bgt _02251150
	bge _02251164
	cmp r3, #0x10
	bgt _0225114A
	beq _02251164
	b _0225118A
_0225114A:
	cmp r3, #0x20
	beq _02251164
	b _0225118A
_02251150:
	lsr r1, r2, #0x17
	cmp r3, r1
	bgt _0225115E
	bge _02251164
	cmp r3, #0x80
	beq _02251164
	b _0225118A
_0225115E:
	lsr r1, r2, #0x16
	cmp r3, r1
	bne _0225118A
_02251164:
	ldr r1, [r5, #0x6c]
	ldr r2, _022511F8 ; =0x000030C4
	lsl r1, r1, #1
	mov r0, #0
	add r1, r5, r1
	strh r0, [r1, r2]
	ldr r1, [r5, #0x6c]
	mov r4, #0xff
	lsl r1, r1, #1
	add r3, r5, r1
	add r1, r2, #0
	add r1, #8
	strh r4, [r3, r1]
	ldr r1, [r5, #0x6c]
	add r2, #0x10
	lsl r1, r1, #1
	add r1, r5, r1
	strh r0, [r1, r2]
	pop {r4, r5, r6, pc}
_0225118A:
	ldr r1, [r5, #0x6c]
	lsl r1, r1, #1
	add r2, r5, r1
	ldr r1, _022511F8 ; =0x000030C4
	strh r0, [r2, r1]
	ldr r0, [r5, #0x6c]
	ldr r3, [r5, #0x64]
	lsl r0, r0, #1
	add r2, r5, r0
	add r0, r1, #0
	add r0, #8
	strh r3, [r2, r0]
	ldr r0, [r5, #0x6c]
	add r1, #0x10
	lsl r0, r0, #1
	add r0, r5, r0
	strh r4, [r0, r1]
	pop {r4, r5, r6, pc}
_022511AE:
	ldr r1, [r5, #0x6c]
	ldr r2, _022511F8 ; =0x000030C4
	lsl r1, r1, #1
	mov r0, #0
	add r1, r5, r1
	strh r0, [r1, r2]
	ldr r1, [r5, #0x6c]
	mov r4, #0xff
	lsl r1, r1, #1
	add r3, r5, r1
	add r1, r2, #0
	add r1, #8
	strh r4, [r3, r1]
	ldr r1, [r5, #0x6c]
	add r2, #0x10
	lsl r1, r1, #1
	add r1, r5, r1
	strh r0, [r1, r2]
_022511D2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022511D4: .word 0x00002160
_022511D8: .word 0x00003044
_022511DC: .word 0x000003E2
_022511E0: .word 0x000003E9
_022511E4: .word 0x0000213C
_022511E8: .word 0x00002DF8
_022511EC: .word 0x00003064
_022511F0: .word 0x801FDA49
_022511F4: .word 0x000003E6
_022511F8: .word 0x000030C4
	thumb_func_end ov16_02250FF4

	thumb_func_start ov16_022511FC
ov16_022511FC: ; 0x022511FC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x10
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_022511FC

	thumb_func_start ov16_02251218
ov16_02251218: ; 0x02251218
	push {r3, r4, r5, lr}
	ldr r2, _02251268 ; =0x0000216C
	add r5, r1, #0
	ldr r0, [r5, r2]
	mov r4, #0
	cmp r0, #0
	beq _0225124C
	add r1, r2, #0
	add r1, #0x11
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _0225124A
	ldr r1, [r5, #0x74]
	cmp r1, #0xff
	bne _02251246
	add r2, #0x10
	ldrb r1, [r5, r2]
	cmp r1, #1
	beq _02251246
	mov r1, #1
	lsl r1, r1, #0xe
	tst r0, r1
	beq _0225124C
_02251246:
	mov r4, #1
	b _0225124C
_0225124A:
	mov r4, #1
_0225124C:
	cmp r4, #1
	bne _02251262
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x15
	bl ov16_02251E1C
	ldr r0, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0x15
	str r0, [r5, #8]
_02251262:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02251268: .word 0x0000216C
	thumb_func_end ov16_02251218

	thumb_func_start ov16_0225126C
ov16_0225126C: ; 0x0225126C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x6c]
	mov r3, #0
	cmp r2, #0xff
	bne _0225127C
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225127C:
	mov r0, #0xc0
	add r5, r2, #0
	mul r5, r0
	mov r1, #2
	ldr r0, _022512EC ; =0x00002DB0
	add r7, r4, r5
	ldr r6, [r7, r0]
	lsl r1, r1, #0x16
	tst r1, r6
	beq _022512E6
	ldr r1, _022512F0 ; =0x0000216C
	mov r6, #2
	lsl r6, r6, #0x16
	ldr r1, [r4, r1]
	lsr r6, r6, #9
	tst r1, r6
	bne _022512E6
	ldr r1, [r4, #0x64]
	cmp r2, r1
	beq _022512E6
	sub r0, #0x24
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _022512E6
	mov r0, #0x1c
	mul r0, r2
	add r2, r4, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _022512C4
	add r0, #8
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022512E6
_022512C4:
	ldr r0, _022512F4 ; =0x00002D59
	add r1, r4, r0
	ldrsb r0, [r1, r5]
	cmp r0, #0xc
	bge _022512E6
	add r0, r0, #1
	strb r0, [r1, r5]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf5
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r3, #1
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_022512E6:
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022512EC: .word 0x00002DB0
_022512F0: .word 0x0000216C
_022512F4: .word 0x00002D59
	thumb_func_end ov16_0225126C

	thumb_func_start ov16_022512F8
ov16_022512F8: ; 0x022512F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5, #0x64]
	str r0, [sp]
	add r0, r5, #0
	mov r4, #0
	bl ov16_02258AB8
	add r7, r0, #0
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	bl ov16_02258ACC
	add r6, r0, #0
	ldr r0, [r5, #0x6c]
	cmp r0, #0xff
	beq _02251396
	cmp r7, #0x38
	bne _02251396
	ldr r1, _0225139C ; =0x0000216C
	ldr r2, [r5, r1]
	ldr r1, _022513A0 ; =0x801FDA49
	tst r1, r2
	bne _02251396
	mov r1, #0x1c
	mul r1, r0
	mov r0, #0xb6
	add r2, r5, r1
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _02251342
	add r0, #8
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02251396
_02251342:
	ldr r0, [sp]
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, r6
	bge _02251396
	ldr r0, _022513A4 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022513A8 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _02251396
	ldr r0, [r5, #0x6c]
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _022513AC ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02251396
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r0, r5, #0
	mov r1, #2
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xe
	bl ov16_02251E1C
	ldr r0, [r5, #8]
	mov r4, #1
	str r0, [r5, #0xc]
	mov r0, #0x15
	str r0, [r5, #8]
_02251396:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225139C: .word 0x0000216C
_022513A0: .word 0x801FDA49
_022513A4: .word 0x00003044
_022513A8: .word 0x000003E9
_022513AC: .word 0x00002D8C
	thumb_func_end ov16_022512F8

	thumb_func_start ov16_022513B0
ov16_022513B0: ; 0x022513B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r7, [r5, #0x5c]
	str r0, [sp]
	mov r6, #0
	bl ov16_0223DF1C
	cmp r7, r0
	bge _02251420
	add r4, r5, #0
	add r4, #0x5c
_022513C6:
	mov r0, #0xc0
	mul r0, r7
	mov r1, #0xb7
	add r0, r5, r0
	lsl r1, r1, #6
	ldr r2, [r0, r1]
	ldr r1, _0225142C ; =0x200400C0
	tst r1, r2
	bne _0225140A
	ldr r1, _02251430 ; =0x00002DC4
	ldr r2, [r0, r1]
	ldr r1, _0225142C ; =0x200400C0
	tst r1, r2
	beq _0225140A
	ldr r1, _02251430 ; =0x00002DC4
	ldr r2, [r0, r1]
	ldr r1, _02251434 ; =0xDFFBFF3F
	and r2, r1
	ldr r1, _02251430 ; =0x00002DC4
	str r2, [r0, r1]
	ldr r2, _02251438 ; =0x0000011F
	add r0, r5, #0
	mov r1, #1
	bl ov16_02251E1C
	mov r0, #0x46
	ldr r1, [r5, #0x5c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, #8]
	mov r6, #1
	str r0, [r5, #0xc]
	mov r0, #0x15
	str r0, [r5, #8]
_0225140A:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r6, #1
	beq _02251420
	ldr r0, [sp]
	ldr r7, [r5, #0x5c]
	bl ov16_0223DF1C
	cmp r7, r0
	blt _022513C6
_02251420:
	cmp r6, #0
	bne _02251428
	mov r0, #0
	str r0, [r5, #0x5c]
_02251428:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225142C: .word 0x200400C0
_02251430: .word 0x00002DC4
_02251434: .word 0xDFFBFF3F
_02251438: .word 0x0000011F
	thumb_func_end ov16_022513B0

	thumb_func_start ov16_0225143C
ov16_0225143C: ; 0x0225143C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	mov r6, #0
	bl ov16_0223DF1C
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02258AB8
	str r0, [sp, #4]
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	add r2, r6, #0
	bl ov16_02258ACC
	ldr r1, [r4, #8]
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #1
	bl ov16_02250EF4
	cmp r0, #1
	bne _02251474
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02251474:
	add r5, r4, #0
	add r5, #0x30
_02251478:
	ldr r0, [r4, #0x30]
	cmp r0, #3
	bls _02251480
	b _022515D0
_02251480:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225148C: ; jump table
	.short _02251494 - _0225148C - 2 ; case 0
	.short _022514C4 - _0225148C - 2 ; case 1
	.short _02251544 - _0225148C - 2 ; case 2
	.short _022515C8 - _0225148C - 2 ; case 3
_02251494:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _022515E8 ; =0x00002DB0
	add r0, r4, r0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x16
	tst r1, r2
	beq _022514BC
	ldr r1, _022515EC ; =0x00003044
	ldr r1, [r4, r1]
	cmp r1, #0x63
	beq _022514BC
	ldr r1, _022515E8 ; =0x00002DB0
	ldr r2, [r0, r1]
	ldr r1, _022515F0 ; =0xFF7FFFFF
	and r2, r1
	ldr r1, _022515E8 ; =0x00002DB0
	str r2, [r0, r1]
_022514BC:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022515D0
_022514C4:
	ldr r3, [r4, #0x6c]
	cmp r3, #0xff
	beq _0225153C
	ldr r0, [sp, #4]
	cmp r0, #0x58
	bne _0225153C
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0225153C
	ldr r0, _022515F4 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0225153C
	ldr r2, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r2
	add r1, r4, r0
	mov r0, #0xbb
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	cmp r7, #0
	beq _0225153C
	cmp r2, r3
	beq _0225153C
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _022515F8 ; =0x00002D8C
	ldr r1, [r2, r0]
	add r0, r0, #4
	ldr r0, [r2, r0]
	cmp r1, r0
	bhs _0225153C
	cmp r1, #0
	beq _0225153C
	ldr r1, [sp]
	neg r0, r7
	bl ov16_022563F8
	ldr r1, _022515FC ; =0x0000215C
	mov r2, #0xd5
	str r0, [r4, r1]
	mov r0, #0x46
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r6, #1
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_0225153C:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022515D0
_02251544:
	ldr r0, [sp, #4]
	cmp r0, #0x62
	bne _022515C0
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _022515C0
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	bne _022515C0
	ldr r0, _022515F4 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _022515C0
	ldr r0, _022515EC ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #2
	beq _022515C0
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _022515F8 ; =0x00002D8C
	add r0, r4, r0
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _022515C0
	ldr r1, _02251600 ; =0x00002D90
	ldr r1, [r0, r1]
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	mov r1, #0xa
	bl ov16_022563F8
	ldr r1, _022515FC ; =0x0000215C
	mov r2, #0xd6
	str r0, [r4, r1]
	mov r0, #0x46
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r6, #1
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_022515C0:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022515D0
_022515C8:
	mov r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	mov r6, #2
_022515D0:
	cmp r6, #0
	bne _022515D6
	b _02251478
_022515D6:
	cmp r6, #1
	bne _022515E0
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022515E0:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022515E8: .word 0x00002DB0
_022515EC: .word 0x00003044
_022515F0: .word 0xFF7FFFFF
_022515F4: .word 0x0000213C
_022515F8: .word 0x00002D8C
_022515FC: .word 0x0000215C
_02251600: .word 0x00002D90
	thumb_func_end ov16_0225143C

	thumb_func_start ov16_02251604
ov16_02251604: ; 0x02251604
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp, #4]
	str r0, [sp]
	bl ov16_0223DF0C
	mov r2, #0xd5
	add r4, r0, #0
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r1, r1, r2
	ldr r2, _02251684 ; =0x00001DE0
	mov r0, #0
	bl MIi_CpuClear32
	mov r0, #1
	tst r0, r4
	beq _02251678
	mov r0, #0xb9
	lsl r0, r0, #2
	tst r0, r4
	bne _02251678
	mov r6, #0
_02251632:
	mov r0, #1
	tst r0, r6
	beq _02251672
	asr r2, r6, #1
	ldr r0, [sp, #4]
	lsl r1, r2, #3
	mov r4, #0
	add r7, r0, r1
	add r5, r0, r2
_02251644:
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r4, #0
	bl ov16_0223F700
	cmp r0, #0
	beq _0225166C
	ldr r1, _02251688 ; =0x000003CD
	ldrb r1, [r5, r1]
	lsl r1, r1, #1
	add r2, r7, r1
	mov r1, #0xe7
	lsl r1, r1, #2
	strh r0, [r2, r1]
	add r0, r1, #0
	add r0, #0x31
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _02251688 ; =0x000003CD
	strb r1, [r5, r0]
_0225166C:
	add r4, r4, #1
	cmp r4, #4
	blt _02251644
_02251672:
	add r6, r6, #1
	cmp r6, #4
	blt _02251632
_02251678:
	ldr r2, _0225168C ; =0x022248A4
	ldr r1, _02251690 ; =0x00002134
	ldr r0, [sp, #4]
	str r2, [r0, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02251684: .word 0x00001DE0
_02251688: .word 0x000003CD
_0225168C: .word 0x022248A4
_02251690: .word 0x00002134
	thumb_func_end ov16_02251604

	thumb_func_start ov16_02251694
ov16_02251694: ; 0x02251694
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	bl ov16_0223DF1C
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02251768
	ldr r5, [sp]
_022516AA:
	ldr r0, _0225176C ; =0x000021A8
	ldr r2, [r5, r0]
	cmp r2, #0x27
	beq _0225175E
	ldr r0, [sp]
	add r7, r0, r4
	ldr r0, _02251770 ; =0x0000314C
	ldrb r1, [r7, r0]
	mov r0, #1
	tst r0, r1
	beq _022516CE
	sub r2, #0xc
	lsl r2, r2, #0x18
	add r0, r6, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl ov16_0223F500
_022516CE:
	ldr r0, _0225176C ; =0x000021A8
	ldr r0, [r5, r0]
	sub r0, #0xd
	cmp r0, #3
	bhi _0225175E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022516E4: ; jump table
	.short _022516EC - _022516E4 - 2 ; case 0
	.short _02251724 - _022516E4 - 2 ; case 1
	.short _02251740 - _022516E4 - 2 ; case 2
	.short _02251754 - _022516E4 - 2 ; case 3
_022516EC:
	ldr r0, _02251770 ; =0x0000314C
	ldrb r1, [r7, r0]
	mov r0, #2
	tst r0, r1
	beq _02251706
	ldr r2, _02251774 ; =0x000021B0
	add r0, r6, #0
	ldr r2, [r5, r2]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov16_0223F500
_02251706:
	ldr r0, _02251770 ; =0x0000314C
	ldrb r1, [r7, r0]
	mov r0, #4
	tst r0, r1
	beq _0225175E
	ldr r2, _02251778 ; =0x000021AC
	add r0, r6, #0
	ldr r2, [r5, r2]
	add r1, r4, #0
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov16_0223F500
	b _0225175E
_02251724:
	ldr r2, _02251774 ; =0x000021B0
	add r0, r6, #0
	ldr r2, [r5, r2]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov16_0223F500
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov16_0223F500
	b _0225175E
_02251740:
	ldr r2, _02251774 ; =0x000021B0
	add r0, r6, #0
	ldr r2, [r5, r2]
	add r1, r4, #0
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov16_0223F500
	b _0225175E
_02251754:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	bl ov16_0223F500
_0225175E:
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _022516AA
_02251768:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225176C: .word 0x000021A8
_02251770: .word 0x0000314C
_02251774: .word 0x000021B0
_02251778: .word 0x000021AC
	thumb_func_end ov16_02251694

	.rodata


	.global Unk_ov16_0226EAD0
Unk_ov16_0226EAD0: ; 0x0226EAD0
	.incbin "incbin/overlay16_rodata.bin", 0x874, 0x890 - 0x874

	.global Unk_ov16_0226EAEC
Unk_ov16_0226EAEC: ; 0x0226EAEC
	.incbin "incbin/overlay16_rodata.bin", 0x890, 0xB4

