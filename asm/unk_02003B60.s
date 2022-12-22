	.include "macros/function.inc"
	.include "include/unk_02003B60.inc"

	

	.text


	thumb_func_start sub_02003B60
sub_02003B60: ; 0x02003B60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02003D54
	add r4, r0, #0
	bl NNS_SndInit
	bl sub_020041A0
	add r0, r4, #0
	bl sub_0200413C
	add r0, r4, #0
	ldr r1, _02003BC8 ; =0x000BBC00
	add r0, #0x98
	bl NNS_SndHeapCreate
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r2, r4, #0
	add r2, #0x94
	ldr r1, _02003BCC ; =0x020FECE0
	ldr r2, [r2, #0]
	add r0, r4, #0
	mov r3, #0
	bl NNS_SndArcInit
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl NNS_SndArcPlayerSetup
	add r0, r4, #0
	bl sub_02004160
	add r0, r4, #0
	bl sub_0200417C
	ldr r0, _02003BD0 ; =0x02101DF0
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, _02003BD4 ; =0x000BCD4C
	str r5, [r4, r0]
	ldrh r0, [r6]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	bl sub_02004FB8
	pop {r4, r5, r6, pc}
	nop
_02003BC8: .word 0x000BBC00
_02003BCC: .word 0x020FECE0
_02003BD0: .word 0x02101DF0
_02003BD4: .word 0x000BCD4C
	thumb_func_end sub_02003B60

	thumb_func_start sub_02003BD8
sub_02003BD8: ; 0x02003BD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_02003D54
	add r7, r0, #0
	bl sub_02003D28
	cmp r0, #0
	bne _02003BFA
	ldr r0, _02003C54 ; =0x000BCD00
	ldr r1, [r7, r0]
	cmp r1, #0
	ble _02003BF6
	sub r1, r1, #1
	str r1, [r7, r0]
_02003BF6:
	bl sub_02003C64
_02003BFA:
	bl sub_02006224
	mov r4, #0
	add r5, r7, #0
	add r6, r7, #0
_02003C04:
	ldr r1, _02003C58 ; =0x000BCD84
	add r0, r7, r4
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02003C40
	ldr r1, _02003C58 ; =0x000BCD84
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _02003C58 ; =0x000BCD84
	strb r2, [r0, r1]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _02003C40
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	ldr r2, _02003C5C ; =0x000BCD68
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r1, #0
	sub r1, r1, #4
	ldr r3, _02003C60 ; =0x000BCD70
	sub r0, #0x24
	ldrh r1, [r6, r1]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_020059D0
_02003C40:
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #2
	cmp r4, #2
	blt _02003C04
	bl NNS_SndMain
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02003C54: .word 0x000BCD00
_02003C58: .word 0x000BCD84
_02003C5C: .word 0x000BCD68
_02003C60: .word 0x000BCD70
	thumb_func_end sub_02003BD8

	thumb_func_start sub_02003C64
sub_02003C64: ; 0x02003C64
	push {r4, lr}
	bl sub_02003D54
	add r4, r0, #0
	ldr r0, _02003D00 ; =0x02101DF0
	ldr r0, [r0, #0]
	cmp r0, #6
	bhi _02003CFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02003C80: ; jump table
	.short _02003CFC - _02003C80 - 2 ; case 0
	.short _02003C8E - _02003C80 - 2 ; case 1
	.short _02003CFC - _02003C80 - 2 ; case 2
	.short _02003C96 - _02003C80 - 2 ; case 3
	.short _02003CA6 - _02003C80 - 2 ; case 4
	.short _02003CB6 - _02003C80 - 2 ; case 5
	.short _02003CD4 - _02003C80 - 2 ; case 6
_02003C8E:
	mov r0, #2
	bl sub_02003D0C
	pop {r4, pc}
_02003C96:
	bl sub_02005684
	cmp r0, #0
	bne _02003CFC
	mov r0, #2
	bl sub_02003D0C
	pop {r4, pc}
_02003CA6:
	bl sub_02005684
	cmp r0, #0
	bne _02003CFC
	mov r0, #2
	bl sub_02003D0C
	pop {r4, pc}
_02003CB6:
	bl sub_02005684
	cmp r0, #0
	bne _02003CFC
	bl sub_02004FEC
	cmp r0, #0
	bne _02003CFC
	bl sub_020041B4
	ldr r0, _02003D04 ; =0x000BCD0E
	ldrh r0, [r4, r0]
	bl sub_0200549C
	pop {r4, pc}
_02003CD4:
	bl sub_02005684
	cmp r0, #0
	bne _02003CFC
	bl sub_02004FEC
	cmp r0, #0
	bne _02003CFC
	bl sub_020041B4
	ldr r0, _02003D04 ; =0x000BCD0E
	ldrh r0, [r4, r0]
	bl sub_0200549C
	ldr r1, _02003D08 ; =0x000BCD08
	mov r0, #0x7f
	ldr r1, [r4, r1]
	mov r2, #0
	bl sub_0200560C
_02003CFC:
	pop {r4, pc}
	nop
_02003D00: .word 0x02101DF0
_02003D04: .word 0x000BCD0E
_02003D08: .word 0x000BCD08
	thumb_func_end sub_02003C64

	thumb_func_start sub_02003D0C
sub_02003D0C: ; 0x02003D0C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	ldr r1, _02003D20 ; =0x000BCCFC
	mov r2, #0
	strh r2, [r0, r1]
	ldr r0, _02003D24 ; =0x02101DF0
	str r4, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_02003D20: .word 0x000BCCFC
_02003D24: .word 0x02101DF0
	thumb_func_end sub_02003D0C

	thumb_func_start sub_02003D28
sub_02003D28: ; 0x02003D28
	push {r4, lr}
	bl sub_02003D54
	add r4, r0, #0
	mov r0, #2
	bl sub_02004B04
	cmp r0, #0
	beq _02003D3E
	mov r0, #1
	pop {r4, pc}
_02003D3E:
	ldr r0, _02003D50 ; =0x000BCD12
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _02003D4A
	mov r0, #1
	pop {r4, pc}
_02003D4A:
	mov r0, #0
	pop {r4, pc}
	nop
_02003D50: .word 0x000BCD12
	thumb_func_end sub_02003D28

	thumb_func_start sub_02003D54
sub_02003D54: ; 0x02003D54
	ldr r0, _02003D58 ; =0x02101DF8
	bx lr
	; .align 2, 0
_02003D58: .word 0x02101DF8
	thumb_func_end sub_02003D54

	thumb_func_start sub_02003D5C
sub_02003D5C: ; 0x02003D5C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	cmp r4, #0x36
	bls _02003D6A
	b _02003F2E
_02003D6A:
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02003D76: ; jump table
	.short _02003DF0 - _02003D76 - 2 ; case 0
	.short _02003DF6 - _02003D76 - 2 ; case 1
	.short _02003DFC - _02003D76 - 2 ; case 2
	.short _02003E02 - _02003D76 - 2 ; case 3
	.short _02003E08 - _02003D76 - 2 ; case 4
	.short _02003DE4 - _02003D76 - 2 ; case 5
	.short _02003DEA - _02003D76 - 2 ; case 6
	.short _02003E0E - _02003D76 - 2 ; case 7
	.short _02003E14 - _02003D76 - 2 ; case 8
	.short _02003E1A - _02003D76 - 2 ; case 9
	.short _02003E20 - _02003D76 - 2 ; case 10
	.short _02003E26 - _02003D76 - 2 ; case 11
	.short _02003E2C - _02003D76 - 2 ; case 12
	.short _02003E32 - _02003D76 - 2 ; case 13
	.short _02003E38 - _02003D76 - 2 ; case 14
	.short _02003E3E - _02003D76 - 2 ; case 15
	.short _02003E44 - _02003D76 - 2 ; case 16
	.short _02003E4A - _02003D76 - 2 ; case 17
	.short _02003E50 - _02003D76 - 2 ; case 18
	.short _02003E56 - _02003D76 - 2 ; case 19
	.short _02003E5C - _02003D76 - 2 ; case 20
	.short _02003E62 - _02003D76 - 2 ; case 21
	.short _02003E68 - _02003D76 - 2 ; case 22
	.short _02003E6E - _02003D76 - 2 ; case 23
	.short _02003E74 - _02003D76 - 2 ; case 24
	.short _02003E7A - _02003D76 - 2 ; case 25
	.short _02003E80 - _02003D76 - 2 ; case 26
	.short _02003E86 - _02003D76 - 2 ; case 27
	.short _02003E8C - _02003D76 - 2 ; case 28
	.short _02003E92 - _02003D76 - 2 ; case 29
	.short _02003E98 - _02003D76 - 2 ; case 30
	.short _02003E9E - _02003D76 - 2 ; case 31
	.short _02003EA4 - _02003D76 - 2 ; case 32
	.short _02003EAA - _02003D76 - 2 ; case 33
	.short _02003EB0 - _02003D76 - 2 ; case 34
	.short _02003EB6 - _02003D76 - 2 ; case 35
	.short _02003EBC - _02003D76 - 2 ; case 36
	.short _02003EC2 - _02003D76 - 2 ; case 37
	.short _02003EC8 - _02003D76 - 2 ; case 38
	.short _02003ECE - _02003D76 - 2 ; case 39
	.short _02003ED4 - _02003D76 - 2 ; case 40
	.short _02003EDA - _02003D76 - 2 ; case 41
	.short _02003EE0 - _02003D76 - 2 ; case 42
	.short _02003EE6 - _02003D76 - 2 ; case 43
	.short _02003EEC - _02003D76 - 2 ; case 44
	.short _02003EF2 - _02003D76 - 2 ; case 45
	.short _02003EF8 - _02003D76 - 2 ; case 46
	.short _02003EFE - _02003D76 - 2 ; case 47
	.short _02003F04 - _02003D76 - 2 ; case 48
	.short _02003F0A - _02003D76 - 2 ; case 49
	.short _02003F10 - _02003D76 - 2 ; case 50
	.short _02003F16 - _02003D76 - 2 ; case 51
	.short _02003F1C - _02003D76 - 2 ; case 52
	.short _02003F22 - _02003D76 - 2 ; case 53
	.short _02003F28 - _02003D76 - 2 ; case 54
_02003DE4:
	ldr r1, _02003F38 ; =0x000BCCFE
	add r0, r0, r1
	pop {r4, pc}
_02003DEA:
	ldr r1, _02003F3C ; =0x000BCCFF
	add r0, r0, r1
	pop {r4, pc}
_02003DF0:
	ldr r1, _02003F40 ; =0x000BBCBC
	add r0, r0, r1
	pop {r4, pc}
_02003DF6:
	ldr r1, _02003F44 ; =0x000BBCC0
	add r0, r0, r1
	pop {r4, pc}
_02003DFC:
	ldr r1, _02003F48 ; =0x000BBCC4
	add r0, r0, r1
	pop {r4, pc}
_02003E02:
	ldr r1, _02003F4C ; =0x000BBCE0
	add r0, r0, r1
	pop {r4, pc}
_02003E08:
	ldr r1, _02003F50 ; =0x000BCCE0
	add r0, r0, r1
	pop {r4, pc}
_02003E0E:
	ldr r1, _02003F54 ; =0x000BCD00
	add r0, r0, r1
	pop {r4, pc}
_02003E14:
	ldr r1, _02003F58 ; =0x000BCD04
	add r0, r0, r1
	pop {r4, pc}
_02003E1A:
	ldr r1, _02003F5C ; =0x000BCD08
	add r0, r0, r1
	pop {r4, pc}
_02003E20:
	ldr r1, _02003F60 ; =0x000BCD0C
	add r0, r0, r1
	pop {r4, pc}
_02003E26:
	ldr r1, _02003F64 ; =0x000BCD0E
	add r0, r0, r1
	pop {r4, pc}
_02003E2C:
	ldr r1, _02003F68 ; =0x000BCD10
	add r0, r0, r1
	pop {r4, pc}
_02003E32:
	ldr r1, _02003F6C ; =0x000BCD11
	add r0, r0, r1
	pop {r4, pc}
_02003E38:
	ldr r1, _02003F70 ; =0x000BCD12
	add r0, r0, r1
	pop {r4, pc}
_02003E3E:
	ldr r1, _02003F74 ; =0x000BCD14
	add r0, r0, r1
	pop {r4, pc}
_02003E44:
	ldr r1, _02003F78 ; =0x000BCD15
	add r0, r0, r1
	pop {r4, pc}
_02003E4A:
	ldr r1, _02003F7C ; =0x000BCD16
	add r0, r0, r1
	pop {r4, pc}
_02003E50:
	ldr r1, _02003F80 ; =0x000BCD17
	add r0, r0, r1
	pop {r4, pc}
_02003E56:
	ldr r1, _02003F84 ; =0x000BCD18
	add r0, r0, r1
	pop {r4, pc}
_02003E5C:
	ldr r1, _02003F88 ; =0x000BCD19
	add r0, r0, r1
	pop {r4, pc}
_02003E62:
	ldr r1, _02003F8C ; =0x000BCD1A
	add r0, r0, r1
	pop {r4, pc}
_02003E68:
	ldr r1, _02003F90 ; =0x000BCD1B
	add r0, r0, r1
	pop {r4, pc}
_02003E6E:
	ldr r1, _02003F94 ; =0x000BCD1C
	add r0, r0, r1
	pop {r4, pc}
_02003E74:
	ldr r1, _02003F98 ; =0x000BCD20
	add r0, r0, r1
	pop {r4, pc}
_02003E7A:
	ldr r1, _02003F9C ; =0x000BCD24
	add r0, r0, r1
	pop {r4, pc}
_02003E80:
	ldr r1, _02003FA0 ; =0x000BCD28
	add r0, r0, r1
	pop {r4, pc}
_02003E86:
	ldr r1, _02003FA4 ; =0x000BCD2C
	add r0, r0, r1
	pop {r4, pc}
_02003E8C:
	ldr r1, _02003FA8 ; =0x000BCD30
	add r0, r0, r1
	pop {r4, pc}
_02003E92:
	ldr r1, _02003FAC ; =0x000BCD34
	add r0, r0, r1
	pop {r4, pc}
_02003E98:
	ldr r1, _02003FB0 ; =0x000BCD38
	add r0, r0, r1
	pop {r4, pc}
_02003E9E:
	ldr r1, _02003FB4 ; =0x000BCD39
	add r0, r0, r1
	pop {r4, pc}
_02003EA4:
	ldr r1, _02003FB8 ; =0x000BCD3A
	add r0, r0, r1
	pop {r4, pc}
_02003EAA:
	ldr r1, _02003FBC ; =0x000BCD3C
	add r0, r0, r1
	pop {r4, pc}
_02003EB0:
	ldr r1, _02003FC0 ; =0x000BCD40
	add r0, r0, r1
	pop {r4, pc}
_02003EB6:
	ldr r1, _02003FC4 ; =0x000BCD48
	add r0, r0, r1
	pop {r4, pc}
_02003EBC:
	ldr r1, _02003FC8 ; =0x000BCD4C
	add r0, r0, r1
	pop {r4, pc}
_02003EC2:
	ldr r1, _02003FCC ; =0x000BCD50
	add r0, r0, r1
	pop {r4, pc}
_02003EC8:
	ldr r1, _02003FD0 ; =0x000BCD54
	add r0, r0, r1
	pop {r4, pc}
_02003ECE:
	ldr r1, _02003FD4 ; =0x000BCD58
	add r0, r0, r1
	pop {r4, pc}
_02003ED4:
	ldr r1, _02003FD8 ; =0x000BCD5C
	add r0, r0, r1
	pop {r4, pc}
_02003EDA:
	ldr r1, _02003FDC ; =0x000BCD60
	add r0, r0, r1
	pop {r4, pc}
_02003EE0:
	ldr r1, _02003FE0 ; =0x000BCD68
	add r0, r0, r1
	pop {r4, pc}
_02003EE6:
	ldr r1, _02003FE4 ; =0x000BCD70
	add r0, r0, r1
	pop {r4, pc}
_02003EEC:
	ldr r1, _02003FE8 ; =0x000BCD78
	add r0, r0, r1
	pop {r4, pc}
_02003EF2:
	ldr r1, _02003FEC ; =0x000BCD80
	add r0, r0, r1
	pop {r4, pc}
_02003EF8:
	ldr r1, _02003FF0 ; =0x000BCD84
	add r0, r0, r1
	pop {r4, pc}
_02003EFE:
	ldr r1, _02003FF4 ; =0x000BCD64
	add r0, r0, r1
	pop {r4, pc}
_02003F04:
	ldr r1, _02003FF8 ; =0x000BCD6C
	add r0, r0, r1
	pop {r4, pc}
_02003F0A:
	ldr r1, _02003FFC ; =0x000BCD74
	add r0, r0, r1
	pop {r4, pc}
_02003F10:
	ldr r1, _02004000 ; =0x000BCD7C
	add r0, r0, r1
	pop {r4, pc}
_02003F16:
	ldr r1, _02004004 ; =0x000BCD82
	add r0, r0, r1
	pop {r4, pc}
_02003F1C:
	ldr r1, _02004008 ; =0x000BCD85
	add r0, r0, r1
	pop {r4, pc}
_02003F22:
	ldr r1, _0200400C ; =0x000BCD86
	add r0, r0, r1
	pop {r4, pc}
_02003F28:
	ldr r1, _02004010 ; =0x000BCD87
	add r0, r0, r1
	pop {r4, pc}
_02003F2E:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
	nop
_02003F38: .word 0x000BCCFE
_02003F3C: .word 0x000BCCFF
_02003F40: .word 0x000BBCBC
_02003F44: .word 0x000BBCC0
_02003F48: .word 0x000BBCC4
_02003F4C: .word 0x000BBCE0
_02003F50: .word 0x000BCCE0
_02003F54: .word 0x000BCD00
_02003F58: .word 0x000BCD04
_02003F5C: .word 0x000BCD08
_02003F60: .word 0x000BCD0C
_02003F64: .word 0x000BCD0E
_02003F68: .word 0x000BCD10
_02003F6C: .word 0x000BCD11
_02003F70: .word 0x000BCD12
_02003F74: .word 0x000BCD14
_02003F78: .word 0x000BCD15
_02003F7C: .word 0x000BCD16
_02003F80: .word 0x000BCD17
_02003F84: .word 0x000BCD18
_02003F88: .word 0x000BCD19
_02003F8C: .word 0x000BCD1A
_02003F90: .word 0x000BCD1B
_02003F94: .word 0x000BCD1C
_02003F98: .word 0x000BCD20
_02003F9C: .word 0x000BCD24
_02003FA0: .word 0x000BCD28
_02003FA4: .word 0x000BCD2C
_02003FA8: .word 0x000BCD30
_02003FAC: .word 0x000BCD34
_02003FB0: .word 0x000BCD38
_02003FB4: .word 0x000BCD39
_02003FB8: .word 0x000BCD3A
_02003FBC: .word 0x000BCD3C
_02003FC0: .word 0x000BCD40
_02003FC4: .word 0x000BCD48
_02003FC8: .word 0x000BCD4C
_02003FCC: .word 0x000BCD50
_02003FD0: .word 0x000BCD54
_02003FD4: .word 0x000BCD58
_02003FD8: .word 0x000BCD5C
_02003FDC: .word 0x000BCD60
_02003FE0: .word 0x000BCD68
_02003FE4: .word 0x000BCD70
_02003FE8: .word 0x000BCD78
_02003FEC: .word 0x000BCD80
_02003FF0: .word 0x000BCD84
_02003FF4: .word 0x000BCD64
_02003FF8: .word 0x000BCD6C
_02003FFC: .word 0x000BCD74
_02004000: .word 0x000BCD7C
_02004004: .word 0x000BCD82
_02004008: .word 0x000BCD85
_0200400C: .word 0x000BCD86
_02004010: .word 0x000BCD87
	thumb_func_end sub_02003D5C

	thumb_func_start sub_02004014
sub_02004014: ; 0x02004014
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02003D54
	add r0, #0x94
	ldr r0, [r0, #0]
	bl NNS_SndHeapSaveState
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02004032
	bl GF_AssertFail
_02004032:
	cmp r5, #0
	beq _02004038
	str r4, [r5, #0]
_02004038:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004014

	thumb_func_start sub_0200403C
sub_0200403C: ; 0x0200403C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl NNS_SndHeapLoadState
	pop {r4, pc}
	thumb_func_end sub_0200403C

	thumb_func_start sub_02004050
sub_02004050: ; 0x02004050
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl NNS_SndArcLoadGroup
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004050

	thumb_func_start sub_02004068
sub_02004068: ; 0x02004068
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl NNS_SndArcLoadSeq
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004068

	thumb_func_start sub_02004080
sub_02004080: ; 0x02004080
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02003D54
	add r2, r0, #0
	add r2, #0x94
	ldr r2, [r2, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_SndArcLoadSeqEx
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02004080

	thumb_func_start sub_0200409C
sub_0200409C: ; 0x0200409C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl NNS_SndArcLoadWaveArc
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200409C

	thumb_func_start sub_020040B4
sub_020040B4: ; 0x020040B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl NNS_SndArcLoadBank
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020040B4

	thumb_func_start sub_020040CC
sub_020040CC: ; 0x020040CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02003D54
	add r4, r0, #0
	cmp r5, #9
	blt _020040E0
	bl GF_AssertFail
	mov r5, #0
_020040E0:
	ldr r0, _020040EC ; =0x000BBC98
	add r1, r4, r0
	lsl r0, r5, #2
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	nop
_020040EC: .word 0x000BBC98
	thumb_func_end sub_020040CC

	thumb_func_start sub_020040F0
sub_020040F0: ; 0x020040F0
	push {r3, lr}
	cmp r0, #7
	bhi _02004132
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02004102: ; jump table
	.short _02004116 - _02004102 - 2 ; case 0
	.short _02004112 - _02004102 - 2 ; case 1
	.short _0200411A - _02004102 - 2 ; case 2
	.short _0200411E - _02004102 - 2 ; case 3
	.short _02004122 - _02004102 - 2 ; case 4
	.short _02004126 - _02004102 - 2 ; case 5
	.short _0200412A - _02004102 - 2 ; case 6
	.short _0200412E - _02004102 - 2 ; case 7
_02004112:
	mov r0, #0
	pop {r3, pc}
_02004116:
	mov r0, #1
	pop {r3, pc}
_0200411A:
	mov r0, #2
	pop {r3, pc}
_0200411E:
	mov r0, #3
	pop {r3, pc}
_02004122:
	mov r0, #4
	pop {r3, pc}
_02004126:
	mov r0, #5
	pop {r3, pc}
_0200412A:
	mov r0, #6
	pop {r3, pc}
_0200412E:
	mov r0, #7
	pop {r3, pc}
_02004132:
	bl GF_AssertFail
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020040F0

	thumb_func_start sub_0200413C
sub_0200413C: ; 0x0200413C
	push {r4, lr}
	ldr r2, _02004158 ; =0x000BCD88
	mov r1, #0
	add r4, r0, #0
	bl memset
	ldr r0, _0200415C ; =0x000BCD1C
	mov r1, #0
_0200414C:
	add r1, r1, #1
	str r1, [r4, r0]
	add r4, r4, #4
	cmp r1, #7
	blt _0200414C
	pop {r4, pc}
	; .align 2, 0
_02004158: .word 0x000BCD88
_0200415C: .word 0x000BCD1C
	thumb_func_end sub_0200413C

	thumb_func_start sub_02004160
sub_02004160: ; 0x02004160
	push {r3, r4, r5, lr}
	ldr r1, _02004178 ; =0x000BBC98
	mov r4, #0
	add r5, r0, r1
_02004168:
	add r0, r5, #0
	bl NNS_SndHandleInit
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #9
	blt _02004168
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02004178: .word 0x000BBC98
	thumb_func_end sub_02004160

	thumb_func_start sub_0200417C
sub_0200417C: ; 0x0200417C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02004198 ; =0x000BCD1C
	add r0, r4, r0
	bl sub_02004014
	mov r0, #0
	bl sub_02004050
	ldr r0, _0200419C ; =0x000BCD20
	add r0, r4, r0
	bl sub_02004014
	pop {r4, pc}
	; .align 2, 0
_02004198: .word 0x000BCD1C
_0200419C: .word 0x000BCD20
	thumb_func_end sub_0200417C

	thumb_func_start sub_020041A0
sub_020041A0: ; 0x020041A0
	push {r3, lr}
	bl MIC_Init
	mov r0, #1
	bl PM_SetAmp
	mov r0, #2
	bl PM_SetAmpGain
	pop {r3, pc}
	thumb_func_end sub_020041A0

	thumb_func_start sub_020041B4
sub_020041B4: ; 0x020041B4
	push {r3, lr}
	mov r0, #7
	mov r1, #0
	bl NNS_SndPlayerStopSeqByPlayerNo
	mov r0, #7
	bl sub_020040CC
	bl NNS_SndHandleReleaseSeq
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020041B4

	.data


	.global Unk_020FECE0
Unk_020FECE0: ; 0x020FECE0
	.incbin "incbin/arm9_data.bin", 0x0, 0x1E



	.bss


	.global Unk_02101DF0
Unk_02101DF0: ; 0x02101DF0
	.space 0x4

	.global Unk_02101DF4
Unk_02101DF4: ; 0x02101DF4
	.space 0x4

	.global Unk_02101DF8
Unk_02101DF8: ; 0x02101DF8
	.space 0xBCD88

