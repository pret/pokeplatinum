	.include "macros/function.inc"
	.include "include/unk_02049D08.inc"

	

	.text


	thumb_func_start sub_02049D08
sub_02049D08: ; 0x02049D08
	cmp r0, #6
	bhi _02049D32
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02049D18: ; jump table
	.short _02049D26 - _02049D18 - 2 ; case 0
	.short _02049D2A - _02049D18 - 2 ; case 1
	.short _02049D2E - _02049D18 - 2 ; case 2
	.short _02049D2E - _02049D18 - 2 ; case 3
	.short _02049D26 - _02049D18 - 2 ; case 4
	.short _02049D26 - _02049D18 - 2 ; case 5
	.short _02049D2E - _02049D18 - 2 ; case 6
_02049D26:
	mov r0, #3
	bx lr
_02049D2A:
	mov r0, #4
	bx lr
_02049D2E:
	mov r0, #2
	bx lr
_02049D32:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02049D08

	thumb_func_start sub_02049D38
sub_02049D38: ; 0x02049D38
	push {r4, r5}
	mov r5, #0
	cmp r3, #0
	ble _02049D5E
_02049D40:
	ldrh r4, [r0]
	cmp r1, r4
	bne _02049D56
	cmp r2, #0
	beq _02049D56
	ldrh r4, [r0, #2]
	cmp r2, r4
	bne _02049D56
	mov r0, #1
	pop {r4, r5}
	bx lr
_02049D56:
	add r5, r5, #1
	add r0, r0, #4
	cmp r5, r3
	blt _02049D40
_02049D5E:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02049D38

	thumb_func_start sub_02049D64
sub_02049D64: ; 0x02049D64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov lr, r0
	sub r0, r5, #1
	mov r7, #0
	mov ip, r0
	cmp r0, #0
	ble _02049DB0
	mov r3, lr
_02049D76:
	add r2, r7, #1
	cmp r2, r5
	bge _02049DA6
	ldrh r6, [r3]
	lsl r1, r2, #2
	mov r0, lr
	add r4, r0, r1
_02049D84:
	ldrh r0, [r4]
	cmp r6, r0
	bne _02049D8E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02049D8E:
	ldrh r1, [r3, #2]
	cmp r1, #0
	beq _02049D9E
	ldrh r0, [r4, #2]
	cmp r1, r0
	bne _02049D9E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02049D9E:
	add r2, r2, #1
	add r4, r4, #4
	cmp r2, r5
	blt _02049D84
_02049DA6:
	add r7, r7, #1
	mov r0, ip
	add r3, r3, #4
	cmp r7, r0
	blt _02049D76
_02049DB0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02049D64

	thumb_func_start sub_02049DB4
sub_02049DB4: ; 0x02049DB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp]
	add r7, r1, #0
	add r6, r2, #0
	add r0, sp, #0x20
	mov r1, #0
	mov r2, #0x10
	str r3, [sp, #4]
	bl MI_CpuFill8
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _02049EBC
	ldr r0, [sp]
	str r0, [sp, #0x10]
_02049DD8:
	ldr r0, [sp, #0x10]
	ldrh r1, [r0]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #2]
	add r0, sp, #0x20
	strh r1, [r0, #2]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r6
	bge _02049EAA
	lsl r1, r0, #2
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #0xc]
_02049DFA:
	ldr r0, [sp, #0xc]
	cmp r7, #2
	ldrh r1, [r0]
	add r0, sp, #0x20
	strh r1, [r0, #4]
	ldr r0, [sp, #0xc]
	ldrh r1, [r0, #2]
	add r0, sp, #0x20
	strh r1, [r0, #6]
	bne _02049E20
	add r0, sp, #0x20
	add r1, r7, #0
	bl sub_02049D64
	cmp r0, #0
	beq _02049E9A
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02049E20:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	bge _02049E9A
	lsl r1, r0, #2
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #8]
_02049E32:
	ldr r0, [sp, #8]
	cmp r7, #3
	ldrh r1, [r0]
	add r0, sp, #0x20
	strh r1, [r0, #8]
	ldr r0, [sp, #8]
	ldrh r1, [r0, #2]
	add r0, sp, #0x20
	strh r1, [r0, #0xa]
	bne _02049E58
	add r0, sp, #0x20
	add r1, r7, #0
	bl sub_02049D64
	cmp r0, #0
	beq _02049E8A
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02049E58:
	ldr r0, [sp, #0x14]
	add r4, r0, #1
	cmp r4, r6
	bge _02049E8A
	ldr r0, [sp]
	lsl r1, r4, #2
	add r5, r0, r1
_02049E66:
	ldrh r1, [r5]
	add r0, sp, #0x20
	strh r1, [r0, #0xc]
	ldrh r1, [r5, #2]
	strh r1, [r0, #0xe]
	add r0, sp, #0x20
	add r1, r7, #0
	bl sub_02049D64
	cmp r0, #0
	beq _02049E82
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02049E82:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02049E66
_02049E8A:
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blt _02049E32
_02049E9A:
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r6
	blt _02049DFA
_02049EAA:
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1c]
	cmp r1, r0
	blt _02049DD8
_02049EBC:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02049DB4

	thumb_func_start sub_02049EC4
sub_02049EC4: ; 0x02049EC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	add r0, r1, #0
	str r2, [sp, #4]
	bl sub_0207A268
	str r0, [sp, #0xc]
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x10]
	ldr r0, [sp]
	cmp r1, r0
	bge _02049EEA
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02049EEA:
	ldr r0, [sp, #0x10]
	mov r7, #0
	add r4, r7, #0
	cmp r0, #0
	bls _02049F6A
_02049EF4:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	str r0, [sp, #8]
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp, #8]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02049F20
	mov r6, #0
_02049F20:
	ldr r0, [sp, #8]
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02049F5E
	add r0, r5, #0
	bl sub_02078804
	cmp r0, #1
	beq _02049F5E
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02049F4E
	add r0, sp, #0x14
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02049D38
	cmp r0, #1
	beq _02049F5E
_02049F4E:
	lsl r1, r4, #2
	add r0, sp, #0x14
	add r2, r0, r1
	strh r5, [r0, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	strh r6, [r2, #2]
	lsr r4, r0, #0x18
_02049F5E:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r7, r0
	blo _02049EF4
_02049F6A:
	ldr r0, [sp]
	cmp r4, r0
	bge _02049F76
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02049F76:
	ldr r1, [sp]
	add r0, sp, #0x14
	add r3, r1, #0
	sub r3, r4, r3
	add r2, r4, #0
	add r3, r3, #1
	bl sub_02049DB4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02049EC4

	thumb_func_start sub_02049F8C
sub_02049F8C: ; 0x02049F8C
	ldr r3, _02049F94 ; =OS_ResetSystem
	mov r0, #0
	bx r3
	nop
_02049F94: .word OS_ResetSystem
	thumb_func_end sub_02049F8C

	thumb_func_start sub_02049F98
sub_02049F98: ; 0x02049F98
	ldr r3, _02049F9C ; =sub_0202D060
	bx r3
	; .align 2, 0
_02049F9C: .word sub_0202D060
	thumb_func_end sub_02049F98

	thumb_func_start sub_02049FA0
sub_02049FA0: ; 0x02049FA0
	ldr r3, _02049FA4 ; =sub_0202D214
	bx r3
	; .align 2, 0
_02049FA4: .word sub_0202D214
	thumb_func_end sub_02049FA0

	thumb_func_start sub_02049FA8
sub_02049FA8: ; 0x02049FA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	ldr r1, [r5, #0x1c]
	ldr r1, [r1, #0]
	str r1, [r4, #0]
	mov r1, #0
	mvn r1, r1
	str r1, [r4, #4]
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AD9C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02049FA8

	thumb_func_start sub_02049FE8
sub_02049FE8: ; 0x02049FE8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206ADAC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02049FE8

	thumb_func_start sub_02049FF8
sub_02049FF8: ; 0x02049FF8
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #5
	bne _0204A004
	mov r0, #0
	pop {r4, pc}
_0204A004:
	cmp r4, #6
	bne _0204A020
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x71
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x71
	bl sub_02030698
	pop {r4, pc}
_0204A020:
	bl sub_0203068C
	lsl r1, r4, #1
	add r1, r1, #1
	mov r2, #0xff
	bl sub_02030698
	pop {r4, pc}
	thumb_func_end sub_02049FF8

	thumb_func_start sub_0204A030
sub_0204A030: ; 0x0204A030
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202D750
	cmp r4, #0
	bne _0204A046
	mov r1, #5
	mov r2, #2
	bl sub_0202D414
	pop {r4, pc}
_0204A046:
	mov r1, #5
	mov r2, #1
	bl sub_0202D414
	pop {r4, pc}
	thumb_func_end sub_0204A030

	thumb_func_start sub_0204A050
sub_0204A050: ; 0x0204A050
	push {r3, lr}
	bl sub_0202D750
	mov r1, #5
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	thumb_func_end sub_0204A050

	thumb_func_start sub_0204A064
sub_0204A064: ; 0x0204A064
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0202D740
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202D750
	mov r1, #0
	add r6, r0, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0202D0BC
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	bne _0204A08C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204A08C:
	cmp r4, #6
	bne _0204A0AC
	add r0, r5, #0
	bl sub_0203068C
	add r7, r0, #0
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0x64
	mov r3, #0
	bl sub_020306E4
	b _0204A0BC
_0204A0AC:
	add r1, r4, #0
	add r1, #8
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #2
	bl sub_0202D414
_0204A0BC:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #2
	bl sub_0202D3B4
	add r0, r5, #0
	bl sub_0203068C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E750
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0205E750
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_020306E4
	cmp r4, #4
	beq _0204A0FA
	cmp r4, #6
	beq _0204A0FA
	add r0, r5, #0
	bl sub_0206C02C
_0204A0FA:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204A064

	thumb_func_start sub_0204A100
sub_0204A100: ; 0x0204A100
	push {r3, lr}
	bl sub_0202D764
	bl sub_0202D5E8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	thumb_func_end sub_0204A100

	thumb_func_start sub_0204A110
sub_0204A110: ; 0x0204A110
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0204A11E
	bl GF_AssertFail
_0204A11E:
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_0204A110

	thumb_func_start sub_0204A124
sub_0204A124: ; 0x0204A124
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	ldr r1, _0204A31C ; =0x000008DC
	mov r0, #0xb
	add r7, r2, #0
	bl sub_02018144
	ldr r2, _0204A31C ; =0x000008DC
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0xb
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_0202D740
	str r0, [r4, #0x70]
	add r0, r6, #0
	bl sub_0202D750
	str r0, [r4, #0x74]
	ldr r0, _0204A320 ; =0x12345678
	mov r1, #0
	str r0, [r4, #0]
	ldr r0, [r4, #0x70]
	bl sub_0202D21C
	cmp r5, #0
	bne _0204A1B4
	strb r7, [r4, #0xf]
	ldrb r0, [r4, #0xf]
	bl sub_02049D08
	strb r0, [r4, #0xe]
	mov r0, #1
	strb r0, [r4, #0xc]
	mov r2, #0
	strb r2, [r4, #0xd]
	mov r1, #0xff
_0204A178:
	add r0, r4, r2
	add r0, #0x2a
	strb r1, [r0]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, #4
	blo _0204A178
	ldr r1, _0204A324 ; =0x0000FFFF
	mov r2, #0
_0204A18C:
	lsl r0, r2, #1
	add r0, r4, r0
	strh r1, [r0, #0x3e]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, #0xe
	blo _0204A18C
	ldr r0, [r4, #0x70]
	bl sub_0202D060
	ldrb r1, [r4, #0xf]
	add r0, sp, #8
	add r2, sp, #8
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #0
	bl sub_0202D140
	b _0204A272
_0204A1B4:
	mov r1, #0
	ldr r0, [r4, #0x70]
	add r2, r1, #0
	bl sub_0202D0BC
	strb r0, [r4, #0xf]
	ldr r0, [r4, #0x70]
	mov r1, #1
	mov r2, #0
	bl sub_0202D0BC
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xf]
	bl sub_02049D08
	strb r0, [r4, #0xe]
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #5
	add r2, #0x2a
	bl sub_0202D0BC
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #8
	add r2, #0x3e
	bl sub_0202D0BC
	ldr r0, [r4, #0x70]
	mov r1, #0xa
	mov r2, #0
	bl sub_0202D0BC
	str r0, [r4, #8]
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	bne _0204A272
	ldr r0, [r4, #0x70]
	mov r1, #9
	mov r2, #0
	bl sub_0202D0BC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1d
	ldrb r1, [r4, #0x10]
	mov r2, #0xe0
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r4, #0x10]
	ldrb r3, [r4, #0x10]
	ldr r2, _0204A328 ; =0x000007E8
	ldr r0, [r4, #0x70]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1d
	add r2, r4, r2
	lsl r3, r3, #4
	mov r1, #6
	add r2, r2, r3
	bl sub_0202D0BC
	ldrb r0, [r4, #0x10]
	mov r1, #7
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x1d
	ldr r0, [r4, #0x70]
	bl sub_0202D0BC
	add r3, r0, #0
	ldr r0, _0204A328 ; =0x000007E8
	mov r1, #0xa6
	lsl r1, r1, #2
	add r0, r4, r0
	lsl r2, r5, #4
	add r0, r0, r2
	add r2, r5, r2
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, r4, r1
	lsl r2, r2, #4
	add r1, r1, r2
	mov r2, #0x4b
	lsl r2, r2, #2
	add r2, r5, r2
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl sub_0204B404
_0204A272:
	add r0, r6, #0
	bl sub_02025E38
	bl sub_02025F30
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0xf]
	cmp r0, #5
	beq _0204A2F8
	add r0, r6, #0
	bl sub_0203068C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0202CD88
	ldrb r1, [r4, #0xf]
	add r7, r0, #0
	cmp r1, #6
	bne _0204A2A6
	add r0, r6, #0
	bl sub_020507E4
	bl sub_0206B6FC
	b _0204A2B8
_0204A2A6:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x74]
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
_0204A2B8:
	cmp r0, #0
	beq _0204A2EE
	ldrb r1, [r4, #0xf]
	cmp r1, #6
	bne _0204A2D4
	mov r0, #0x71
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x71
	bl sub_02030698
	b _0204A2E0
_0204A2D4:
	lsl r1, r1, #1
	add r0, r5, #0
	add r1, r1, #1
	mov r2, #0xff
	bl sub_02030698
_0204A2E0:
	strh r0, [r4, #0x1a]
	ldrb r1, [r4, #0xf]
	ldr r0, [r4, #0x74]
	mov r2, #0
	bl sub_0202D3B4
	strh r0, [r4, #0x1c]
_0204A2EE:
	add r0, r7, #0
	mov r1, #0x1d
	bl sub_0202CFB8
	str r0, [r4, #0x20]
_0204A2F8:
	ldrb r0, [r4, #0xf]
	cmp r0, #6
	bne _0204A316
	ldrh r0, [r4, #0x1a]
	mov r1, #7
	bl _s32_div_f
	add r2, r0, #0
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x74]
	mov r1, #6
	lsr r2, r2, #0x10
	bl sub_0202D3FC
	strh r0, [r4, #0x1c]
_0204A316:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0204A31C: .word 0x000008DC
_0204A320: .word 0x12345678
_0204A324: .word 0x0000FFFF
_0204A328: .word 0x000007E8
	thumb_func_end sub_0204A124

	thumb_func_start sub_0204A32C
sub_0204A32C: ; 0x0204A32C
	push {r4, lr}
	add r4, r0, #0
	beq _0204A34E
	ldr r1, [r4, #0]
	ldr r0, _0204A350 ; =0x12345678
	cmp r1, r0
	beq _0204A33E
	bl GF_AssertFail
_0204A33E:
	ldr r2, _0204A354 ; =0x000008DC
	add r0, r4, #0
	mov r1, #0
	bl MI_CpuFill8
	add r0, r4, #0
	bl sub_020181C4
_0204A34E:
	pop {r4, pc}
	; .align 2, 0
_0204A350: .word 0x12345678
_0204A354: .word 0x000008DC
	thumb_func_end sub_0204A32C

	thumb_func_start sub_0204A358
sub_0204A358: ; 0x0204A358
	push {r3, lr}
	sub sp, #0x10
	ldrb r0, [r0, #0xe]
	mov r3, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0x11
	str r3, [sp, #0xc]
	bl sub_0206BBFC
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end sub_0204A358

	thumb_func_start sub_0204A378
sub_0204A378: ; 0x0204A378
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r1, #0]
	str r1, [sp]
	str r0, [sp, #4]
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _0204A396
	ldr r0, [sp, #4]
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #7
	bne _0204A3A6
_0204A396:
	ldr r0, [sp, #4]
	bl sub_020181C4
	ldr r1, [sp]
	mov r0, #0
	str r0, [r1, #0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0204A3A6:
	add r0, r2, #0
	bl sub_0207A268
	str r0, [sp, #8]
	ldrb r0, [r5, #0xe]
	mov r4, #0
	cmp r0, #0
	ble _0204A3FA
_0204A3B6:
	ldr r0, [sp, #4]
	add r0, r0, r4
	add r0, #0x2c
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, r4
	add r0, #0x2a
	strb r1, [r0]
	add r1, r5, r4
	add r1, #0x2a
	ldrb r1, [r1]
	ldr r0, [sp, #8]
	bl sub_0207A0FC
	lsl r1, r4, #1
	add r6, r5, r1
	add r7, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r6, #0x2e]
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r6, #0x36]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldrb r0, [r5, #0xe]
	cmp r4, r0
	blt _0204A3B6
_0204A3FA:
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204A378

	thumb_func_start sub_0204A410
sub_0204A410: ; 0x0204A410
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	add r0, r1, #0
	bl sub_0207A268
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r5, #0
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	ble _0204A498
	add r7, sp, #0xc
	add r4, sp, #0x14
_0204A42C:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r1, r1, r5
	add r1, #0x2a
	ldrb r1, [r1]
	bl sub_0207A0FC
	str r0, [sp, #8]
	lsl r6, r5, #1
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, r6]
	ldr r0, [sp, #8]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r7, r6]
	cmp r5, #0
	beq _0204A48A
	mov r0, #0
	cmp r5, #0
	bls _0204A48A
	ldrh r1, [r4, r6]
	ldrh r2, [r7, r6]
_0204A462:
	lsl r6, r0, #1
	ldrh r3, [r4, r6]
	cmp r1, r3
	bne _0204A470
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0204A470:
	cmp r2, #0
	beq _0204A480
	ldrh r3, [r7, r6]
	cmp r2, r3
	bne _0204A480
	add sp, #0x1c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0204A480:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r5
	blo _0204A462
_0204A48A:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp]
	ldrb r0, [r0, #0xe]
	cmp r5, r0
	blt _0204A42C
_0204A498:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204A410

	thumb_func_start sub_0204A4A0
sub_0204A4A0: ; 0x0204A4A0
	push {r3, r4}
	mov r4, #0
	cmp r2, #0
	bls _0204A4C0
_0204A4A8:
	lsl r3, r4, #1
	ldrh r3, [r0, r3]
	cmp r1, r3
	bne _0204A4B6
	mov r0, #1
	pop {r3, r4}
	bx lr
_0204A4B6:
	add r3, r4, #1
	lsl r3, r3, #0x10
	lsr r4, r3, #0x10
	cmp r4, r2
	blo _0204A4A8
_0204A4C0:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0204A4A0

	thumb_func_start sub_0204A4C8
sub_0204A4C8: ; 0x0204A4C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r1, [r5, #0xf]
	cmp r1, #2
	beq _0204A4DC
	cmp r1, #6
	beq _0204A4DC
	cmp r1, #3
	bne _0204A53A
_0204A4DC:
	cmp r1, #3
	bne _0204A4E8
	ldrh r2, [r5, #0x14]
	ldrh r0, [r5, #0x1c]
	cmp r2, r0
	bhi _0204A4F6
_0204A4E8:
	cmp r1, #6
	bne _0204A4F4
	ldrh r2, [r5, #0x14]
	ldrh r0, [r5, #0x1c]
	cmp r2, r0
	bhi _0204A4F6
_0204A4F4:
	ldrh r2, [r5, #0x1c]
_0204A4F6:
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x3e
	mov r4, #0
	add r6, r5, #0
	str r0, [sp, #4]
_0204A508:
	lsr r2, r4, #0x1f
	add r2, r4, r2
	lsl r2, r2, #0x17
	ldrb r3, [r5, #0xf]
	ldr r1, [sp]
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_0204B0F0
	add r7, r0, #0
	lsl r2, r4, #0x10
	ldr r0, [sp, #4]
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl sub_0204A4A0
	cmp r0, #0
	bne _0204A508
	add r4, r4, #1
	strh r7, [r6, #0x3e]
	add r6, r6, #2
	cmp r4, #0xe
	blt _0204A508
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0204A53A:
	str r0, [sp, #8]
	add r0, #0x3e
	mov r4, #0
	add r6, r5, #0
	str r0, [sp, #8]
_0204A544:
	ldrh r1, [r5, #0x1c]
	lsl r2, r4, #0x18
	ldrb r3, [r5, #0xf]
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_0204B0F0
	add r7, r0, #0
	lsl r2, r4, #0x10
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl sub_0204A4A0
	cmp r0, #0
	bne _0204A544
	add r4, r4, #1
	strh r7, [r6, #0x3e]
	add r6, r6, #2
	cmp r4, #7
	blt _0204A544
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204A4C8

	thumb_func_start sub_0204A578
sub_0204A578: ; 0x0204A578
	ldrb r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0204A578

	thumb_func_start sub_0204A57C
sub_0204A57C: ; 0x0204A57C
	ldrb r2, [r0, #0x10]
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x1f
	beq _0204A588
	mov r0, #1
	bx lr
_0204A588:
	ldrb r1, [r0, #0xc]
	cmp r1, #7
	bls _0204A59C
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r2, r1
	strb r2, [r0, #0x10]
	add r0, r1, #0
	bx lr
_0204A59C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0204A57C

	thumb_func_start sub_0204A5A0
sub_0204A5A0: ; 0x0204A5A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xf]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0204A5B2
	cmp r0, #1
	bne _0204A5E8
_0204A5B2:
	add r0, r4, #0
	bl sub_0207A268
	ldrb r1, [r5, #0xf]
	cmp r1, #0
	bne _0204A5D4
	add r5, #0x2a
	ldrb r1, [r5]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #1
	bl sub_0206DBB0
	pop {r4, r5, r6, pc}
_0204A5D4:
	add r5, #0x2a
	ldrb r1, [r5]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0206DBB0
_0204A5E8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204A5A0

	thumb_func_start sub_0204A5EC
sub_0204A5EC: ; 0x0204A5EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	ldrb r2, [r5, #0xf]
	add r6, r1, #0
	add r4, r3, #0
	cmp r2, #0
	beq _0204A606
	cmp r2, #1
	beq _0204A60C
	cmp r2, #4
	beq _0204A620
	pop {r3, r4, r5, r6, r7, pc}
_0204A606:
	mov r2, #0
	bl sub_0204AE20
_0204A60C:
	cmp r4, #7
	blo _0204A65E
	add r0, r6, #0
	bl sub_0202440C
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0206CFE4
	pop {r3, r4, r5, r6, r7, pc}
_0204A620:
	mov r2, #1
	bl sub_0204AE20
	ldrh r1, [r5, #0x28]
	ldrh r2, [r5, #0x24]
	ldrh r3, [r5, #0x26]
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x70]
	lsr r1, r1, #0x18
	bl sub_0202D1E8
	ldrb r1, [r5, #0xf]
	add r0, sp, #0
	add r2, sp, #0
	strb r1, [r0]
	ldr r0, [r5, #0x70]
	mov r1, #0
	bl sub_0202D140
	ldrb r1, [r5, #0xc]
	add r0, sp, #0
	add r2, sp, #0
	strb r1, [r0]
	ldr r0, [r5, #0x70]
	mov r1, #1
	bl sub_0202D140
	ldr r0, [r5, #0x74]
	ldr r1, [r5, #0x70]
	bl sub_0202D334
_0204A65E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204A5EC

	thumb_func_start sub_0204A660
sub_0204A660: ; 0x0204A660
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0202CD88
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_0203068C
	str r0, [sp]
	ldrb r0, [r5, #0xf]
	cmp r0, #5
	bne _0204A680
	b _0204A79A
_0204A680:
	cmp r0, #6
	bne _0204A688
	mov r4, #0x70
	b _0204A68A
_0204A688:
	lsl r4, r0, #1
_0204A68A:
	add r0, r4, #0
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02030698
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r6, [r5, #0x1a]
	ldrb r3, [r5, #0xd]
	ldr r0, [sp]
	add r1, r4, #0
	add r3, r6, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_02030848
	add r6, r0, #0
	cmp r6, #1
	bls _0204A6DA
	ldr r1, [sp, #8]
	cmp r1, r6
	blo _0204A6D0
	cmp r1, r6
	bne _0204A6DA
	mov r1, #7
	bl _s32_div_f
	cmp r1, #0
	bne _0204A6DA
_0204A6D0:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0204A5A0
_0204A6DA:
	ldrb r1, [r5, #0xf]
	cmp r1, #6
	bne _0204A6FA
	add r0, r7, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl sub_02030698
	b _0204A708
_0204A6FA:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x74]
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0202D414
_0204A708:
	add r0, r4, #1
	bl sub_0205E6A8
	add r1, r4, #1
	add r2, r0, #0
	ldrh r4, [r5, #0x1a]
	ldrb r3, [r5, #0xd]
	ldr r0, [sp]
	add r3, r4, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_020306E4
	ldrb r1, [r5, #0xf]
	add r4, r0, #0
	cmp r1, #6
	bne _0204A746
	add r0, r7, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	mov r3, #0
	bl sub_020306E4
	b _0204A754
_0204A746:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x74]
	lsr r1, r1, #0x10
	mov r2, #2
	bl sub_0202D414
_0204A754:
	ldrb r2, [r5, #0xd]
	ldr r0, [sp, #4]
	mov r1, #0x1d
	bl sub_0202CF70
	ldrb r1, [r5, #0xf]
	ldr r0, [r5, #0x74]
	mov r2, #2
	bl sub_0202D3B4
	ldrb r0, [r5, #0xf]
	cmp r0, #6
	beq _0204A77C
	add r0, r7, #0
	bl sub_0202CD88
	mov r1, #0xf
	mov r2, #1
	bl sub_0202CF70
_0204A77C:
	add r0, r5, #0
	bl sub_0204ACC8
	ldr r0, _0204A7A0 ; =0x0000270F
	add r4, r4, #1
	cmp r4, r0
	bls _0204A78C
	add r4, r0, #0
_0204A78C:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0204A5EC
_0204A79A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0204A7A0: .word 0x0000270F
	thumb_func_end sub_0204A660

	thumb_func_start sub_0204A7A4
sub_0204A7A4: ; 0x0204A7A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #0xf]
	add r7, r1, #0
	str r2, [sp]
	cmp r0, #5
	bne _0204A7B6
	b _0204A8C4
_0204A7B6:
	add r0, r7, #0
	bl sub_0202CD88
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_0203068C
	ldrb r1, [r5, #0xf]
	str r0, [sp, #4]
	cmp r1, #6
	bne _0204A7D0
	mov r4, #0x70
	b _0204A7D2
_0204A7D0:
	lsl r4, r1, #1
_0204A7D2:
	cmp r1, #6
	bne _0204A7F0
	add r0, r7, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl sub_02030698
	b _0204A7FE
_0204A7F0:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x74]
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0202D414
_0204A7FE:
	add r0, r4, #1
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r6, [r5, #0x1a]
	ldrb r3, [r5, #0xd]
	ldr r0, [sp, #4]
	add r1, r4, #1
	add r3, r6, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_020306E4
	ldrb r1, [r5, #0xf]
	add r6, r0, #0
	cmp r1, #6
	bne _0204A83C
	add r0, r7, #0
	bl sub_0203068C
	str r0, [sp, #0xc]
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x64
	mov r3, #1
	bl sub_020306E4
	b _0204A84A
_0204A83C:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x74]
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_0202D414
_0204A84A:
	add r0, r4, #0
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_02030698
	add r0, r4, #0
	bl sub_0205E6A8
	add r2, r0, #0
	lsl r3, r6, #0x10
	ldr r0, [sp, #4]
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl sub_02030848
	ldr r0, [sp, #8]
	mov r1, #0x1d
	mov r2, #7
	bl sub_0202CF70
	ldrb r1, [r5, #0xf]
	ldr r0, [r5, #0x74]
	mov r2, #3
	bl sub_0202D3B4
	ldrb r0, [r5, #0xf]
	cmp r0, #6
	beq _0204A892
	ldr r0, [sp, #8]
	mov r1, #0xf
	mov r2, #1
	bl sub_0202CF70
_0204A892:
	ldr r0, [sp, #8]
	mov r1, #0xe
	bl sub_0202CFEC
	add r0, r5, #0
	bl sub_0204ACC8
	lsl r3, r6, #0x10
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_0204A5EC
	ldrb r0, [r5, #0xf]
	cmp r0, #4
	bne _0204A8C4
	ldr r0, [r5, #4]
	bl sub_0202C238
	add r1, r0, #0
	ldr r0, [sp]
	mov r2, #4
	bl sub_0202B758
_0204A8C4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204A7A4

	thumb_func_start sub_0204A8C8
sub_0204A8C8: ; 0x0204A8C8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	add r0, sp, #0
	add r2, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #0
	bl sub_0202D140
	ldrb r1, [r4, #0xc]
	add r0, sp, #0
	add r2, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #1
	bl sub_0202D140
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #5
	add r2, #0x2a
	bl sub_0202D140
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x24]
	ldrh r3, [r4, #0x26]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x70]
	lsr r1, r1, #0x18
	bl sub_0202D1E8
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #8
	add r2, #0x3e
	bl sub_0202D140
	add r2, r4, #0
	ldr r0, [r4, #0x70]
	mov r1, #0xa
	add r2, #8
	bl sub_0202D140
	ldr r0, [r4, #0x70]
	mov r1, #1
	bl sub_0202D21C
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	bne _0204A96E
	ldrb r0, [r4, #0x10]
	add r2, sp, #0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1d
	add r0, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x70]
	mov r1, #9
	bl sub_0202D140
	ldrb r3, [r4, #0x10]
	ldr r2, _0204A974 ; =0x000007E8
	ldr r0, [r4, #0x70]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1d
	add r2, r4, r2
	lsl r3, r3, #4
	mov r1, #6
	add r2, r2, r3
	bl sub_0202D140
	ldr r2, _0204A978 ; =0x00000838
	ldr r0, [r4, #0x70]
	add r3, r4, r2
	ldrb r2, [r4, #0x10]
	mov r1, #7
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1d
	add r2, r3, r2
	bl sub_0202D140
_0204A96E:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0204A974: .word 0x000007E8
_0204A978: .word 0x00000838
	thumb_func_end sub_0204A8C8

	thumb_func_start sub_0204A97C
sub_0204A97C: ; 0x0204A97C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _0204A9D8 ; =0x000007E8
	mov r4, #0
	add r6, r5, r0
	mov r0, #0xa6
	lsl r0, r0, #2
	add r7, r5, r0
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x2e
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x36
	str r0, [sp, #0x14]
_0204A99E:
	ldr r0, [sp, #0x10]
	mov r2, #0x4b
	str r0, [sp]
	ldr r0, [sp, #0x14]
	lsl r2, r2, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #4]
	add r2, r4, r2
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	ldrb r3, [r5, #0xe]
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl sub_0204B3B8
	add r2, r5, r4
	ldr r1, _0204A9DC ; =0x00000838
	add r4, r4, #1
	strb r0, [r2, r1]
	mov r0, #0x11
	lsl r0, r0, #4
	add r6, #0x10
	add r7, r7, r0
	cmp r4, #5
	blt _0204A99E
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204A9D8: .word 0x000007E8
_0204A9DC: .word 0x00000838
	thumb_func_end sub_0204A97C

	thumb_func_start sub_0204A9E0
sub_0204A9E0: ; 0x0204A9E0
	lsl r2, r1, #4
	add r1, r1, r2
	lsl r1, r1, #4
	add r0, r0, r1
	add r0, #0x7c
	ldrh r0, [r0]
	ldr r3, _0204A9F4 ; =sub_0204AF9C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx r3
	; .align 2, 0
_0204A9F4: .word sub_0204AF9C
	thumb_func_end sub_0204A9E0

	thumb_func_start sub_0204A9F8
sub_0204A9F8: ; 0x0204A9F8
	ldrb r0, [r0, #0xf]
	bx lr
	thumb_func_end sub_0204A9F8

	thumb_func_start sub_0204A9FC
sub_0204A9FC: ; 0x0204A9FC
	ldrb r0, [r0, #0x10]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end sub_0204A9FC

	thumb_func_start sub_0204AA04
sub_0204AA04: ; 0x0204AA04
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	cmp r1, #5
	bne _0204AA12
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204AA12:
	cmp r1, #4
	bne _0204AA24
	ldr r0, [r4, #0x74]
	mov r1, #0
	bl sub_0202D2C0
	ldr r1, _0204AA70 ; =0x020EBD44
	ldrb r5, [r1, r0]
	b _0204AA62
_0204AA24:
	cmp r1, #3
	beq _0204AA2C
	cmp r1, #6
	bne _0204AA42
_0204AA2C:
	ldr r0, [r4, #0x74]
	mov r2, #0
	bl sub_0202D3B4
	cmp r0, #7
	blo _0204AA3C
	mov r5, #0x12
	b _0204AA62
_0204AA3C:
	ldr r1, _0204AA74 ; =0x020EBD28
	ldrb r5, [r1, r0]
	b _0204AA62
_0204AA42:
	ldr r0, [r4, #0x74]
	mov r2, #0
	bl sub_0202D3B4
	ldrb r1, [r4, #0x10]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1e
	beq _0204AA56
	mov r5, #0x14
	b _0204AA62
_0204AA56:
	cmp r0, #7
	blo _0204AA5E
	mov r5, #7
	b _0204AA62
_0204AA5E:
	ldr r1, _0204AA78 ; =0x020EBD30
	ldrb r5, [r1, r0]
_0204AA62:
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	mov r2, #5
	bl sub_0202D230
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204AA70: .word 0x020EBD44
_0204AA74: .word 0x020EBD28
_0204AA78: .word 0x020EBD30
	thumb_func_end sub_0204AA04

	thumb_func_start sub_0204AA7C
sub_0204AA7C: ; 0x0204AA7C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	ldrb r1, [r4, #0xf]
	bl sub_02049FF8
	cmp r0, #0x32
	bhs _0204AA90
	mov r0, #0
	pop {r4, pc}
_0204AA90:
	cmp r0, #0x64
	ldr r0, [r4, #0x74]
	blo _0204AAA6
	mov r1, #1
	mov r2, #0
	bl sub_0202D414
	cmp r0, #0
	beq _0204AAB6
	mov r0, #0
	pop {r4, pc}
_0204AAA6:
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D414
	cmp r0, #0
	beq _0204AAB6
	mov r0, #0
	pop {r4, pc}
_0204AAB6:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204AA7C

	thumb_func_start sub_0204AABC
sub_0204AABC: ; 0x0204AABC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_0202D750
	add r6, r0, #0
	cmp r4, #0
	beq _0204AAD8
	cmp r4, #1
	beq _0204AAE0
	cmp r4, #2
	beq _0204AB1C
	b _0204AB60
_0204AAD8:
	mov r1, #0
	bl sub_0202D2C0
	pop {r4, r5, r6, pc}
_0204AAE0:
	mov r1, #4
	mov r2, #2
	bl sub_0202D414
	add r0, r6, #0
	mov r1, #0
	bl sub_0202D2C0
	add r4, r0, #0
	cmp r4, #0xa
	bne _0204AB02
	ldrb r1, [r5, #0x10]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0x10]
	mov r0, #0
	pop {r4, r5, r6, pc}
_0204AB02:
	add r0, r6, #0
	mov r1, #3
	bl sub_0202D2C0
	add r0, r4, #1
	cmp r0, #5
	blt _0204AB18
	ldrb r1, [r5, #0x10]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0x10]
_0204AB18:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0204AB1C:
	mov r1, #3
	bl sub_0202D288
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0202D2C0
	cmp r0, #1
	bne _0204AB34
	mov r0, #0
	pop {r4, r5, r6, pc}
_0204AB34:
	sub r1, r0, #1
	ldr r0, _0204AB64 ; =0x020EBD38
	ldrb r0, [r0, r1]
	cmp r4, r0
	blo _0204AB5C
	add r0, r6, #0
	mov r1, #4
	bl sub_0202D2C0
	add r0, r6, #0
	mov r1, #2
	bl sub_0202D288
	add r0, r6, #0
	mov r1, #4
	mov r2, #2
	bl sub_0202D414
	mov r0, #1
	pop {r4, r5, r6, pc}
_0204AB5C:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0204AB60:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204AB64: .word 0x020EBD38
	thumb_func_end sub_0204AABC

	thumb_func_start sub_0204AB68
sub_0204AB68: ; 0x0204AB68
	push {r3, lr}
	add r2, r0, #0
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	beq _0204AB76
	mov r0, #0
	pop {r3, pc}
_0204AB76:
	ldrb r0, [r2, #0x10]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1e
	cmp r0, #1
	beq _0204AB86
	cmp r0, #2
	beq _0204AB90
	b _0204AB9A
_0204AB86:
	add r0, r1, #0
	mov r1, #0x1a
	bl sub_0204AC54
	pop {r3, pc}
_0204AB90:
	add r0, r1, #0
	mov r1, #0x1b
	bl sub_0204AC54
	pop {r3, pc}
_0204AB9A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204AB68

	thumb_func_start sub_0204ABA0
sub_0204ABA0: ; 0x0204ABA0
	push {r4, lr}
	add r2, r0, #0
	ldrb r0, [r2, #0xf]
	cmp r0, #5
	bne _0204ABAE
	mov r0, #0
	pop {r4, pc}
_0204ABAE:
	cmp r0, #6
	bne _0204ABB6
	mov r0, #0
	pop {r4, pc}
_0204ABB6:
	ldrb r4, [r2, #0x10]
	lsl r4, r4, #0x1b
	lsr r4, r4, #0x1f
	bne _0204ABC2
	mov r0, #0
	pop {r4, pc}
_0204ABC2:
	cmp r0, #4
	bhi _0204ABEA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204ABD2: ; jump table
	.short _0204ABEA - _0204ABD2 - 2 ; case 0
	.short _0204ABDC - _0204ABD2 - 2 ; case 1
	.short _0204ABE0 - _0204ABD2 - 2 ; case 2
	.short _0204ABE4 - _0204ABD2 - 2 ; case 3
	.short _0204ABE8 - _0204ABD2 - 2 ; case 4
_0204ABDC:
	mov r3, #0x1c
	b _0204ABEA
_0204ABE0:
	mov r3, #0x1d
	b _0204ABEA
_0204ABE4:
	mov r3, #0x1e
	b _0204ABEA
_0204ABE8:
	mov r3, #0x1f
_0204ABEA:
	add r0, r1, #0
	add r1, r3, #0
	bl sub_0204AC54
	pop {r4, pc}
	thumb_func_end sub_0204ABA0

	thumb_func_start sub_0204ABF4
sub_0204ABF4: ; 0x0204ABF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0xf]
	cmp r1, #6
	bne _0204AC1A
	add r0, r4, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x64
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl sub_02030698
	b _0204AC28
_0204AC1A:
	add r1, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x74]
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0202D414
_0204AC28:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0
	bne _0204AC38
	add r0, r4, #0
	bl sub_0206C02C
	b _0204AC3E
_0204AC38:
	add r0, r4, #0
	bl sub_0206C068
_0204AC3E:
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r1, _0204AC50 ; =0x0000FFFF
	bl _u32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, pc}
	nop
_0204AC50: .word 0x0000FFFF
	thumb_func_end sub_0204ABF4

	thumb_func_start sub_0204AC54
sub_0204AC54: ; 0x0204AC54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r2, #0
	mov r2, #1
	add r1, sp, #0xc
	str r0, [sp]
	strb r2, [r1]
	bl sub_0207A268
	mov r4, #0
	str r4, [sp, #8]
	str r0, [sp, #4]
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	ble _0204ACB4
_0204AC74:
	add r1, r7, r4
	add r1, #0x2a
	ldrb r1, [r1]
	ldr r0, [sp, #4]
	bl sub_0207A0FC
	add r1, r5, #0
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204ACAC
	add r0, r6, #0
	add r1, r5, #0
	add r2, sp, #0xc
	bl sub_02074B30
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0206DDB8
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
_0204ACAC:
	ldrb r0, [r7, #0xe]
	add r4, r4, #1
	cmp r4, r0
	blt _0204AC74
_0204ACB4:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0204ACC0
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204ACC0:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204AC54

	thumb_func_start sub_0204ACC8
sub_0204ACC8: ; 0x0204ACC8
	ldrb r1, [r0, #0xf]
	cmp r1, #5
	beq _0204ACDA
	cmp r1, #0
	beq _0204ACDA
	cmp r1, #6
	beq _0204ACDA
	cmp r1, #4
	bne _0204ACDE
_0204ACDA:
	mov r0, #0
	bx lr
_0204ACDE:
	ldrh r2, [r0, #0x1a]
	ldrb r1, [r0, #0xd]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #0x32
	bhs _0204ACF0
	mov r0, #0
	bx lr
_0204ACF0:
	ldrb r2, [r0, #0x10]
	mov r1, #0x10
	orr r1, r2
	strb r1, [r0, #0x10]
	mov r0, #1
	bx lr
	thumb_func_end sub_0204ACC8

	thumb_func_start sub_0204ACFC
sub_0204ACFC: ; 0x0204ACFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	lsl r0, r0, #0x10
	ldrh r1, [r1]
	ldr r2, _0204AE18 ; =0xFFFFF800
	lsr r3, r0, #0x10
	lsr r0, r2, #0x15
	and r1, r2
	and r0, r3
	orr r1, r0
	ldr r0, [sp]
	mov r2, #0
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x70
	bl sub_02074470
	ldr r1, [sp]
	lsl r0, r0, #0x10
	ldrh r2, [r1]
	ldr r1, _0204AE1C ; =0xFFFF07FF
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1b
	and r1, r2
	lsr r0, r0, #0x10
	orr r1, r0
	ldr r0, [sp]
	mov r2, #0
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #6
	bl sub_02074470
	ldr r1, [sp]
	mov r4, #0
	strh r0, [r1, #2]
	add r0, r1, #0
	str r0, [sp, #4]
	add r0, #0x1e
	add r6, r1, #0
	add r7, r4, #0
	str r0, [sp, #4]
_0204AD60:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	strh r0, [r6, #4]
	add r0, r5, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #4]
	lsl r0, r7
	ldrb r1, [r1]
	add r4, r4, #1
	add r6, r6, #2
	orr r1, r0
	ldr r0, [sp, #4]
	add r7, r7, #2
	strb r1, [r0]
	cmp r4, #4
	blt _0204AD60
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	mov r2, #0
	strb r0, [r1, #0x1f]
	add r0, r5, #0
	mov r1, #7
	bl sub_02074470
	ldr r1, [sp]
	str r0, [r1, #0xc]
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074470
	ldr r1, [sp]
	mov r2, #0
	str r0, [r1, #0x10]
	add r0, r5, #0
	mov r1, #0xaf
	bl sub_02074470
	ldr r1, [sp]
	mov r4, #0
	str r0, [r1, #0x14]
	add r6, r4, #0
_0204ADCC:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xd
	add r2, r6, #0
	bl sub_02074470
	ldr r1, [sp]
	add r1, r1, r4
	add r4, r4, #1
	strb r0, [r1, #0x18]
	cmp r4, #6
	blt _0204ADCC
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	mov r2, #0
	add r1, #0x20
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #9
	bl sub_02074470
	ldr r1, [sp]
	ldr r2, [sp]
	add r1, #0x21
	strb r0, [r1]
	add r2, #0x22
	add r0, r5, #0
	mov r1, #0x75
	str r2, [sp]
	bl sub_02074470
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204AE18: .word 0xFFFFF800
_0204AE1C: .word 0xFFFF07FF
	thumb_func_end sub_0204ACFC

	thumb_func_start sub_0204AE20
sub_0204AE20: ; 0x0204AE20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r4, r1, #0
	mov r1, #0xa8
	str r2, [sp]
	bl sub_02018184
	mov r1, #0
	mov r2, #0xa8
	str r0, [sp, #4]
	bl MI_CpuFill8
	add r0, r4, #0
	bl sub_0207A268
	ldr r5, [sp, #4]
	add r7, r0, #0
	mov r4, #0
_0204AE48:
	add r1, r6, r4
	add r1, #0x2a
	ldrb r1, [r1]
	add r0, r7, #0
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0204ACFC
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #3
	blt _0204AE48
	ldr r0, [r6, #0x74]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl sub_0202D2F0
	ldr r0, [sp, #4]
	mov r1, #0
	mov r2, #0xa8
	bl MI_CpuFill8
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204AE20

	thumb_func_start sub_0204AE84
sub_0204AE84: ; 0x0204AE84
	cmp r0, #0x64
	bhs _0204AE8C
	mov r0, #3
	bx lr
_0204AE8C:
	cmp r0, #0x78
	bhs _0204AE94
	mov r0, #6
	bx lr
_0204AE94:
	cmp r0, #0x8c
	bhs _0204AE9C
	mov r0, #9
	bx lr
_0204AE9C:
	cmp r0, #0xa0
	bhs _0204AEA4
	mov r0, #0xc
	bx lr
_0204AEA4:
	cmp r0, #0xb4
	bhs _0204AEAC
	mov r0, #0xf
	bx lr
_0204AEAC:
	cmp r0, #0xc8
	bhs _0204AEB4
	mov r0, #0x12
	bx lr
_0204AEB4:
	cmp r0, #0xdc
	bhs _0204AEBC
	mov r0, #0x15
	bx lr
_0204AEBC:
	mov r0, #0x1f
	bx lr
	thumb_func_end sub_0204AE84

	thumb_func_start sub_0204AEC0
sub_0204AEC0: ; 0x0204AEC0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #6
	bne _0204AED0
	bl sub_0201D2E8
	pop {r4, pc}
_0204AED0:
	ldr r0, [r4, #8]
	bl sub_0206BFF0
	ldr r1, _0204AEE4 ; =0x0000FFFF
	str r0, [r4, #8]
	bl _u32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	; .align 2, 0
_0204AEE4: .word 0x0000FFFF
	thumb_func_end sub_0204AEC0

	.rodata


	.global Unk_020EBD28
Unk_020EBD28: ; 0x020EBD28
	.incbin "incbin/arm9_rodata.bin", 0x70E8, 0x70F0 - 0x70E8

	.global Unk_020EBD30
Unk_020EBD30: ; 0x020EBD30
	.incbin "incbin/arm9_rodata.bin", 0x70F0, 0x70F8 - 0x70F0

	.global Unk_020EBD38
Unk_020EBD38: ; 0x020EBD38
	.incbin "incbin/arm9_rodata.bin", 0x70F8, 0x7104 - 0x70F8

	.global Unk_020EBD44
Unk_020EBD44: ; 0x020EBD44
	.incbin "incbin/arm9_rodata.bin", 0x7104, 0xB

