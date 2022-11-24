	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov13_0221FC20
ov13_0221FC20: ; 0x0221FC20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x11]
	cmp r0, #5
	bls _0221FC2E
	mov r0, #0
	strb r0, [r5, #0x11]
_0221FC2E:
	ldr r0, _0221FC98 ; =ov13_0221FCAC
	ldr r1, _0221FC9C ; =0x00002090
	ldr r3, [r5, #0xc]
	mov r2, #0
	bl sub_0200679C
	bl sub_0201CED0
	ldr r2, _0221FC9C ; =0x00002090
	add r4, r0, #0
	mov r1, #0
	bl sub_020D5124
	str r5, [r4, #0]
	ldr r0, [r5, #8]
	bl ov16_0223DF00
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #8]
	bl ov16_0223E064
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _0221FCA0 ; =0x00002078
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r1, [r5, #0x11]
	sub r0, r0, #2
	strb r1, [r4, r0]
	ldr r0, [r5, #8]
	bl ov16_0223F1F8
	ldr r3, _0221FCA4 ; =0x00002077
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1c
	ldrb r1, [r4, r3]
	mov r2, #0xf0
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r4, r3]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x28]
	bl ov16_0223E1F8
	ldr r1, _0221FCA8 ; =0x0000208F
	strb r0, [r4, r1]
	pop {r3, r4, r5, pc}
	nop
_0221FC98: .word ov13_0221FCAC
_0221FC9C: .word 0x00002090
_0221FCA0: .word 0x00002078
_0221FCA4: .word 0x00002077
_0221FCA8: .word 0x0000208F
	thumb_func_end ov13_0221FC20

	thumb_func_start ov13_0221FCAC
ov13_0221FCAC: ; 0x0221FCAC
	push {r4, lr}
	ldr r2, _0221FE54 ; =0x00002078
	add r4, r1, #0
	ldrb r2, [r4, r2]
	cmp r2, #0x1a
	bls _0221FCBA
	b _0221FE3C
_0221FCBA:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0221FCC6: ; jump table
	.short _0221FCFC - _0221FCC6 - 2 ; case 0
	.short _0221FD08 - _0221FCC6 - 2 ; case 1
	.short _0221FD14 - _0221FCC6 - 2 ; case 2
	.short _0221FD20 - _0221FCC6 - 2 ; case 3
	.short _0221FD2C - _0221FCC6 - 2 ; case 4
	.short _0221FD38 - _0221FCC6 - 2 ; case 5
	.short _0221FD44 - _0221FCC6 - 2 ; case 6
	.short _0221FD50 - _0221FCC6 - 2 ; case 7
	.short _0221FD5C - _0221FCC6 - 2 ; case 8
	.short _0221FD68 - _0221FCC6 - 2 ; case 9
	.short _0221FD74 - _0221FCC6 - 2 ; case 10
	.short _0221FD80 - _0221FCC6 - 2 ; case 11
	.short _0221FD8C - _0221FCC6 - 2 ; case 12
	.short _0221FD98 - _0221FCC6 - 2 ; case 13
	.short _0221FDA4 - _0221FCC6 - 2 ; case 14
	.short _0221FDB0 - _0221FCC6 - 2 ; case 15
	.short _0221FDBC - _0221FCC6 - 2 ; case 16
	.short _0221FDC8 - _0221FCC6 - 2 ; case 17
	.short _0221FDD4 - _0221FCC6 - 2 ; case 18
	.short _0221FDE0 - _0221FCC6 - 2 ; case 19
	.short _0221FDEC - _0221FCC6 - 2 ; case 20
	.short _0221FDF8 - _0221FCC6 - 2 ; case 21
	.short _0221FE04 - _0221FCC6 - 2 ; case 22
	.short _0221FE10 - _0221FCC6 - 2 ; case 23
	.short _0221FE1C - _0221FCC6 - 2 ; case 24
	.short _0221FE28 - _0221FCC6 - 2 ; case 25
	.short _0221FE34 - _0221FCC6 - 2 ; case 26
_0221FCFC:
	add r0, r4, #0
	bl ov13_0221FE5C
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD08:
	add r0, r4, #0
	bl ov13_0221FF60
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD14:
	add r0, r4, #0
	bl ov13_0222012C
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD20:
	add r0, r4, #0
	bl ov13_022201DC
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD2C:
	add r0, r4, #0
	bl ov13_0222029C
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD38:
	add r0, r4, #0
	bl ov13_022203A0
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD44:
	add r0, r4, #0
	bl ov13_0222072C
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD50:
	add r0, r4, #0
	bl ov13_02220738
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD5C:
	add r0, r4, #0
	bl ov13_02220744
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD68:
	add r0, r4, #0
	bl ov13_02220750
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD74:
	add r0, r4, #0
	bl ov13_0222075C
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD80:
	add r0, r4, #0
	bl ov13_02220768
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD8C:
	add r0, r4, #0
	bl ov13_0222078C
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FD98:
	add r0, r4, #0
	bl ov13_022207B8
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FDA4:
	add r0, r4, #0
	bl ov13_022207DC
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FDB0:
	add r0, r4, #0
	bl ov13_0222081C
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FDBC:
	add r0, r4, #0
	bl ov13_02220834
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FDC8:
	add r0, r4, #0
	bl ov13_02220848
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FDD4:
	add r0, r4, #0
	bl ov13_02220864
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FDE0:
	add r0, r4, #0
	bl ov13_02220418
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FDEC:
	add r0, r4, #0
	bl ov13_0222050C
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FDF8:
	add r0, r4, #0
	bl ov13_02220628
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FE04:
	add r0, r4, #0
	bl ov13_0222088C
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FE10:
	add r0, r4, #0
	bl ov13_022208A4
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FE1C:
	add r0, r4, #0
	bl ov13_02220A4C
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FE28:
	add r0, r4, #0
	bl ov13_02220B78
	ldr r1, _0221FE54 ; =0x00002078
	strb r0, [r4, r1]
	b _0221FE3C
_0221FE34:
	bl ov13_02220BA4
	cmp r0, #1
	beq _0221FE50
_0221FE3C:
	add r0, r4, #0
	bl ov13_0222537C
	ldr r0, _0221FE58 ; =0x00001FB4
	ldr r0, [r4, r0]
	bl sub_0200C7EC
	add r0, r4, #0
	bl ov13_0222601C
_0221FE50:
	pop {r4, pc}
	nop
_0221FE54: .word 0x00002078
_0221FE58: .word 0x00001FB4
	thumb_func_end ov13_0221FCAC

	thumb_func_start ov13_0221FE5C
ov13_0221FE5C: ; 0x0221FE5C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0221FF50 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r5, #0]
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #3
	ldr r0, _0221FF54 ; =0x0000207A
	bne _0221FE7C
	mov r1, #6
	strb r1, [r5, r0]
	mov r4, #0x13
	b _0221FE80
_0221FE7C:
	strb r1, [r5, r0]
	mov r4, #1
_0221FE80:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl ov13_02228A38
	ldr r1, _0221FF58 ; =0x00002088
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov13_02220F98
	add r0, r5, #0
	bl ov13_02220C0C
	add r0, r5, #0
	bl ov13_02220D4C
	add r0, r5, #0
	bl ov13_02220F08
	ldr r1, [r5, #0]
	mov r0, #2
	ldr r1, [r1, #0xc]
	bl sub_02002BB8
	ldr r1, _0221FF54 ; =0x0000207A
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl ov13_02221738
	ldr r1, _0221FF54 ; =0x0000207A
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl ov13_022260EC
	ldr r1, _0221FF54 ; =0x0000207A
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl ov13_02226444
	add r0, r5, #0
	bl ov13_02224500
	ldr r1, _0221FF54 ; =0x0000207A
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl ov13_02224B7C
	add r0, r5, #0
	bl ov13_02221A88
	ldr r1, _0221FF54 ; =0x0000207A
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl ov13_02221BF8
	ldr r0, [r5, #0]
	add r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0221FF00
	ldr r0, _0221FF58 ; =0x00002088
	mov r1, #1
	ldr r0, [r5, r0]
	bl ov13_02228A60
_0221FF00:
	ldr r0, _0221FF54 ; =0x0000207A
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0221FF1A
	add r0, r5, #0
	mov r1, #0
	bl ov13_022219AC
	cmp r0, #1
	bne _0221FF1A
	ldr r0, [r5, #0]
	mov r1, #1
	strb r1, [r0, #0x11]
_0221FF1A:
	ldr r1, _0221FF54 ; =0x0000207A
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl ov13_0222563C
	ldr r1, _0221FF54 ; =0x0000207A
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl ov13_022214E0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x7a
	lsl r0, r0, #2
	mov r1, #0xa
	add r3, r1, #0
	ldr r0, [r5, r0]
	ldr r2, _0221FF5C ; =0x0000FFFF
	sub r3, #0x12
	bl sub_02003178
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0221FF50: .word 0x04001050
_0221FF54: .word 0x0000207A
_0221FF58: .word 0x00002088
_0221FF5C: .word 0x0000FFFF
	thumb_func_end ov13_0221FE5C

	thumb_func_start ov13_0221FF60
ov13_0221FF60: ; 0x0221FF60
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200384C
	cmp r0, #0
	beq _0221FF76
	mov r0, #1
	pop {r4, pc}
_0221FF76:
	add r0, r4, #0
	bl ov13_0222124C
	cmp r0, #1
	bne _0221FFCE
	ldr r1, [r4, #0]
	ldrb r0, [r1, #0x11]
	cmp r0, #6
	bne _0221FFA2
	add r1, #0x35
	ldrb r0, [r1]
	cmp r0, #1
	beq _0221FFCE
	ldr r0, _0221FFD4 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #6
	bl ov13_02225FCC
	mov r0, #0x19
	pop {r4, pc}
_0221FFA2:
	ldr r0, _0221FFD4 ; =0x000005DD
	bl sub_02005748
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	bl ov13_02225FCC
	ldr r0, [r4, #0]
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #2
	bne _0221FFC4
	add r0, r4, #0
	bl ov13_0221FFDC
	pop {r4, pc}
_0221FFC4:
	ldr r0, _0221FFD8 ; =0x00002079
	mov r1, #7
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r4, pc}
_0221FFCE:
	mov r0, #1
	pop {r4, pc}
	nop
_0221FFD4: .word 0x000005DD
_0221FFD8: .word 0x00002079
	thumb_func_end ov13_0221FF60

	thumb_func_start ov13_0221FFDC
ov13_0221FFDC: ; 0x0221FFDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0]
	ldrb r1, [r4, #0x11]
	cmp r1, #0
	bne _0221FFEE
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0221FFF8
_0221FFEE:
	cmp r1, #1
	bne _02220014
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02220014
_0221FFF8:
	add r0, r5, #0
	bl ov13_0222449C
	add r0, r5, #0
	bl ov13_022240E0
	ldr r0, [r5, #0]
	mov r1, #6
	strb r1, [r0, #0x11]
	ldr r0, _02220120 ; =0x00002079
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x11
	pop {r3, r4, r5, pc}
_02220014:
	ldrh r0, [r4, #0x22]
	ldr r2, [r4, #0xc]
	mov r1, #0x24
	bl sub_0207CFF0
	cmp r0, #0
	beq _0222004A
	ldrh r0, [r4, #0x22]
	ldr r2, [r4, #0xc]
	mov r1, #0x25
	bl sub_0207CFF0
	cmp r0, #0
	bne _0222004A
	ldrb r1, [r4, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r0, r5, r0
	ldrb r0, [r0, #0x1b]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _0222004A
	ldr r0, _02220120 ; =0x00002079
	mov r1, #0xd
	strb r1, [r5, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_0222004A:
	ldrh r0, [r4, #0x22]
	mov r3, #0
	str r0, [sp]
	ldrb r2, [r4, #0x11]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x28]
	add r2, r4, r2
	add r2, #0x2c
	ldrb r2, [r2]
	bl ov16_0223E30C
	cmp r0, #1
	bne _022200FA
	ldrh r0, [r4, #0x22]
	ldr r2, [r4, #0xc]
	mov r1, #0x25
	bl sub_0207CFF0
	cmp r0, #0
	beq _0222007A
	ldr r0, _02220120 ; =0x00002079
	mov r1, #0xd
	strb r1, [r5, r0]
	b _022200F0
_0222007A:
	ldrb r1, [r4, #0x11]
	add r0, r5, #0
	bl ov13_022213F0
	cmp r0, #1
	bne _022200EA
	ldrh r0, [r4, #0x22]
	ldr r2, [r4, #0xc]
	mov r1, #0x17
	bl sub_0207CFF0
	cmp r0, #0
	bne _022200EA
	add r2, r4, #0
	add r2, #0x33
	ldrh r1, [r4, #0x22]
	ldrb r2, [r2]
	ldr r0, [r4, #8]
	ldr r3, [r4, #0xc]
	bl ov13_02221A54
	ldrb r2, [r4, #0x11]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x28]
	add r2, r4, r2
	add r2, #0x2c
	ldrb r2, [r2]
	bl ov16_0223DFAC
	ldrb r2, [r4, #0x11]
	mov r1, #0x50
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	str r0, [r2, #4]
	ldrb r0, [r4, #0x11]
	mov r2, #0
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #4]
	mov r1, #0xa3
	bl sub_02074470
	strh r0, [r4, #0x20]
	ldrb r1, [r4, #0x11]
	mov r0, #0x50
	ldrh r2, [r4, #0x20]
	mul r0, r1
	add r0, r5, r0
	ldrh r0, [r0, #0x14]
	mov r1, #0x19
	sub r0, r2, r0
	strh r0, [r4, #0x20]
	ldr r0, _02220120 ; =0x00002079
	strb r1, [r5, r0]
	b _022200F0
_022200EA:
	ldr r0, _02220120 ; =0x00002079
	mov r1, #0x17
	strb r1, [r5, r0]
_022200F0:
	ldr r0, _02220124 ; =0x0000207C
	mov r1, #0
	strb r1, [r5, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_022200FA:
	ldr r2, _02220128 ; =0x00001FA8
	mov r1, #0x51
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	add r0, r5, #0
	bl ov13_022240E0
	ldr r0, [r5, #0]
	mov r1, #6
	strb r1, [r0, #0x11]
	ldr r0, _02220120 ; =0x00002079
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x11
	pop {r3, r4, r5, pc}
	nop
_02220120: .word 0x00002079
_02220124: .word 0x0000207C
_02220128: .word 0x00001FA8
	thumb_func_end ov13_0221FFDC

	thumb_func_start ov13_0222012C
ov13_0222012C: ; 0x0222012C
	push {r4, lr}
	add r4, r0, #0
	bl ov13_022212C4
	cmp r0, #3
	bhi _022201CE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02220144: ; jump table
	.short _0222014C - _02220144 - 2 ; case 0
	.short _02220172 - _02220144 - 2 ; case 1
	.short _02220194 - _02220144 - 2 ; case 2
	.short _022201B6 - _02220144 - 2 ; case 3
_0222014C:
	ldr r0, _022201D4 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #7
	bl ov13_02225FCC
	add r0, r4, #0
	bl ov13_022217A4
	cmp r0, #1
	bne _02220168
	mov r0, #0x19
	pop {r4, pc}
_02220168:
	ldr r0, _022201D8 ; =0x00002079
	mov r1, #0xf
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r4, pc}
_02220172:
	add r0, r4, #0
	bl ov13_0222194C
	cmp r0, #1
	beq _022201CE
	ldr r0, _022201D4 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #8
	bl ov13_02225FCC
	ldr r0, _022201D8 ; =0x00002079
	mov r1, #8
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r4, pc}
_02220194:
	add r0, r4, #0
	bl ov13_0222194C
	cmp r0, #1
	beq _022201CE
	ldr r0, _022201D4 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0xa
	bl ov13_02225FCC
	ldr r0, _022201D8 ; =0x00002079
	mov r1, #9
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r4, pc}
_022201B6:
	ldr r0, _022201D4 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #6
	bl ov13_02225FCC
	ldr r0, _022201D8 ; =0x00002079
	mov r1, #6
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r4, pc}
_022201CE:
	mov r0, #2
	pop {r4, pc}
	nop
_022201D4: .word 0x000005DD
_022201D8: .word 0x00002079
	thumb_func_end ov13_0222012C

	thumb_func_start ov13_022201DC
ov13_022201DC: ; 0x022201DC
	push {r4, lr}
	add r4, r0, #0
	bl ov13_0222130C
	cmp r0, #3
	bhi _0222028C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022201F4: ; jump table
	.short _022201FC - _022201F4 - 2 ; case 0
	.short _0222022A - _022201F4 - 2 ; case 1
	.short _02220256 - _022201F4 - 2 ; case 2
	.short _0222026E - _022201F4 - 2 ; case 3
_022201FC:
	ldr r1, [r4, #0]
	mov r2, #0
	ldrb r1, [r1, #0x11]
	add r0, r4, #0
	mvn r2, r2
	bl ov13_02221428
	cmp r0, #0xff
	beq _0222028C
	ldr r1, [r4, #0]
	strb r0, [r1, #0x11]
	ldr r0, _02220290 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0xc
	bl ov13_02225FCC
	ldr r0, _02220294 ; =0x00002079
	mov r1, #0xe
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r4, pc}
_0222022A:
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	mov r2, #1
	bl ov13_02221428
	cmp r0, #0xff
	beq _0222028C
	ldr r1, [r4, #0]
	strb r0, [r1, #0x11]
	ldr r0, _02220290 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0xd
	bl ov13_02225FCC
	ldr r0, _02220294 ; =0x00002079
	mov r1, #0xe
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r4, pc}
_02220256:
	ldr r0, _02220290 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0xb
	bl ov13_02225FCC
	ldr r0, _02220294 ; =0x00002079
	mov r1, #9
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r4, pc}
_0222026E:
	ldr r0, _02220290 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #6
	bl ov13_02225FCC
	ldr r0, _02220298 ; =0x0000208C
	mov r1, #1
	strb r1, [r4, r0]
	mov r1, #7
	sub r0, #0x13
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r4, pc}
_0222028C:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02220290: .word 0x000005DD
_02220294: .word 0x00002079
_02220298: .word 0x0000208C
	thumb_func_end ov13_022201DC

	thumb_func_start ov13_0222029C
ov13_0222029C: ; 0x0222029C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov13_02221354
	add r5, r0, #0
	cmp r5, #7
	bhi _0222038E
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022202B6: ; jump table
	.short _022202C6 - _022202B6 - 2 ; case 0
	.short _022202C6 - _022202B6 - 2 ; case 1
	.short _022202C6 - _022202B6 - 2 ; case 2
	.short _022202C6 - _022202B6 - 2 ; case 3
	.short _022202FE - _022202B6 - 2 ; case 4
	.short _0222032C - _022202B6 - 2 ; case 5
	.short _02220358 - _022202B6 - 2 ; case 6
	.short _02220370 - _022202B6 - 2 ; case 7
_022202C6:
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r1, r4, r0
	lsl r0, r5, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _0222038E
	ldr r0, _02220394 ; =0x000005DD
	bl sub_02005748
	add r1, r5, #0
	add r1, #0xe
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov13_02225FCC
	ldr r0, [r4, #0]
	mov r1, #0xa
	add r0, #0x34
	strb r5, [r0]
	ldr r0, _02220398 ; =0x00002079
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_022202FE:
	ldr r1, [r4, #0]
	mov r2, #0
	ldrb r1, [r1, #0x11]
	add r0, r4, #0
	mvn r2, r2
	bl ov13_02221428
	cmp r0, #0xff
	beq _0222038E
	ldr r1, [r4, #0]
	strb r0, [r1, #0x11]
	ldr r0, _02220394 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0xc
	bl ov13_02225FCC
	ldr r0, _02220398 ; =0x00002079
	mov r1, #0xe
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_0222032C:
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	mov r2, #1
	bl ov13_02221428
	cmp r0, #0xff
	beq _0222038E
	ldr r1, [r4, #0]
	strb r0, [r1, #0x11]
	ldr r0, _02220394 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0xd
	bl ov13_02225FCC
	ldr r0, _02220398 ; =0x00002079
	mov r1, #0xe
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_02220358:
	ldr r0, _02220394 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #9
	bl ov13_02225FCC
	ldr r0, _02220398 ; =0x00002079
	mov r1, #8
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_02220370:
	ldr r0, _02220394 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #6
	bl ov13_02225FCC
	ldr r0, _0222039C ; =0x0000208C
	mov r1, #2
	strb r1, [r4, r0]
	mov r1, #7
	sub r0, #0x13
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_0222038E:
	mov r0, #4
	pop {r3, r4, r5, pc}
	nop
_02220394: .word 0x000005DD
_02220398: .word 0x00002079
_0222039C: .word 0x0000208C
	thumb_func_end ov13_0222029C

	thumb_func_start ov13_022203A0
ov13_022203A0: ; 0x022203A0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov13_0222139C
	add r5, r0, #0
	cmp r5, #4
	bhi _0222040A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022203BA: ; jump table
	.short _022203C4 - _022203BA - 2 ; case 0
	.short _022203C4 - _022203BA - 2 ; case 1
	.short _022203C4 - _022203BA - 2 ; case 2
	.short _022203C4 - _022203BA - 2 ; case 3
	.short _022203F2 - _022203BA - 2 ; case 4
_022203C4:
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, r5
	beq _022203E2
	ldrb r1, [r1, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r1, r4, r0
	lsl r0, r5, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _0222040A
_022203E2:
	ldr r0, _02220410 ; =0x000005DD
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, #0x34
	strb r5, [r0]
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_022203F2:
	ldr r0, _02220410 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #6
	bl ov13_02225FCC
	ldr r0, _02220414 ; =0x00002079
	mov r1, #9
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_0222040A:
	mov r0, #5
	pop {r3, r4, r5, pc}
	nop
_02220410: .word 0x000005DD
_02220414: .word 0x00002079
	thumb_func_end ov13_022203A0

	thumb_func_start ov13_02220418
ov13_02220418: ; 0x02220418
	push {r3, r4, r5, lr}
	ldr r1, _022204F4 ; =0x02228E0C
	add r4, r0, #0
	bl ov13_022213E4
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _02220442
	ldr r0, _022204F8 ; =0x00002088
	ldr r0, [r4, r0]
	bl ov13_02228B64
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _02220448
	mov r5, #6
	b _02220448
_02220442:
	add r0, r4, #0
	bl ov13_022256E8
_02220448:
	cmp r5, #6
	bhi _022204F0
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02220458: ; jump table
	.short _02220466 - _02220458 - 2 ; case 0
	.short _02220466 - _02220458 - 2 ; case 1
	.short _02220466 - _02220458 - 2 ; case 2
	.short _02220466 - _02220458 - 2 ; case 3
	.short _02220466 - _02220458 - 2 ; case 4
	.short _02220490 - _02220458 - 2 ; case 5
	.short _022204D0 - _02220458 - 2 ; case 6
_02220466:
	lsl r0, r5, #0x18
	lsr r1, r0, #0x18
	ldr r0, [r4, #0]
	add r0, #0x34
	strb r1, [r0]
	ldr r0, _022204FC ; =0x0000208D
	strb r1, [r4, r0]
	ldr r0, _02220500 ; =0x000005DD
	bl sub_02005748
	add r5, #0x17
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov13_02225FCC
	ldr r0, _02220504 ; =0x00002079
	mov r1, #0xc
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_02220490:
	ldr r0, _02220508 ; =0x00002077
	ldrb r3, [r4, r0]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x1c
	beq _022204F0
	mov r2, #0xf
	add r1, r3, #0
	bic r1, r2
	lsl r2, r3, #0x1c
	lsr r3, r2, #0x1c
	mov r2, #1
	eor r2, r3
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	mov r2, #0xf
	and r2, r3
	orr r1, r2
	strb r1, [r4, r0]
	add r0, #0x16
	strb r5, [r4, r0]
	ldr r0, _02220500 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x12
	bl ov13_02225FCC
	ldr r0, _02220504 ; =0x00002079
	mov r1, #0xb
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_022204D0:
	ldr r0, [r4, #0]
	mov r1, #4
	add r0, #0x34
	strb r1, [r0]
	ldr r0, _02220500 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #6
	bl ov13_02225FCC
	ldr r0, _02220504 ; =0x00002079
	mov r1, #0x19
	strb r1, [r4, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_022204F0:
	mov r0, #0x13
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022204F4: .word 0x02228E0C
_022204F8: .word 0x00002088
_022204FC: .word 0x0000208D
_02220500: .word 0x000005DD
_02220504: .word 0x00002079
_02220508: .word 0x00002077
	thumb_func_end ov13_02220418

	thumb_func_start ov13_0222050C
ov13_0222050C: ; 0x0222050C
	push {r3, r4, r5, lr}
	ldr r1, _02220610 ; =0x02228D14
	add r5, r0, #0
	bl ov13_022213E4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02220536
	ldr r0, _02220614 ; =0x00002088
	ldr r0, [r5, r0]
	bl ov13_02228B64
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _0222053C
	mov r4, #2
	b _0222053C
_02220536:
	add r0, r5, #0
	bl ov13_022256E8
_0222053C:
	cmp r4, #0
	beq _0222054A
	cmp r4, #1
	beq _022205A6
	cmp r4, #2
	beq _022205EC
	b _0222060A
_0222054A:
	ldr r0, _02220618 ; =0x000005DD
	bl sub_02005748
	ldr r0, _0222061C ; =0x00002077
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bne _02220564
	add r0, r5, #0
	mov r1, #0x1c
	bl ov13_02225FCC
	b _0222056C
_02220564:
	add r0, r5, #0
	mov r1, #0x1d
	bl ov13_02225FCC
_0222056C:
	add r0, r5, #0
	bl ov13_022219DC
	cmp r0, #1
	bne _0222059C
	add r0, r5, #0
	bl ov13_02223118
	ldr r0, _0222061C ; =0x00002077
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bne _0222058E
	add r0, r5, #0
	bl ov13_02221A04
	b _02220594
_0222058E:
	add r0, r5, #0
	bl ov13_02221A3C
_02220594:
	ldr r0, _02220620 ; =0x00002079
	mov r1, #0x14
	strb r1, [r5, r0]
	b _022205A2
_0222059C:
	ldr r0, _02220620 ; =0x00002079
	mov r1, #0x19
	strb r1, [r5, r0]
_022205A2:
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_022205A6:
	ldr r0, _0222061C ; =0x00002077
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	beq _0222060A
	ldr r0, _02220618 ; =0x000005DD
	bl sub_02005748
	add r0, r5, #0
	mov r1, #0x12
	bl ov13_02225FCC
	ldr r2, _0222061C ; =0x00002077
	mov r1, #0xf
	ldrb r3, [r5, r2]
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x1c
	lsr r3, r1, #0x1c
	mov r1, #1
	eor r1, r3
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	mov r1, #0xf
	and r1, r3
	orr r0, r1
	strb r0, [r5, r2]
	add r0, r2, #0
	add r0, #0x17
	strb r4, [r5, r0]
	mov r1, #0xc
	add r0, r2, #2
	strb r1, [r5, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_022205EC:
	ldr r0, _02220618 ; =0x000005DD
	bl sub_02005748
	add r0, r5, #0
	mov r1, #6
	bl ov13_02225FCC
	ldr r0, _02220624 ; =0x0000208E
	mov r1, #0
	strb r1, [r5, r0]
	mov r1, #0xb
	sub r0, #0x15
	strb r1, [r5, r0]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_0222060A:
	mov r0, #0x14
	pop {r3, r4, r5, pc}
	nop
_02220610: .word 0x02228D14
_02220614: .word 0x00002088
_02220618: .word 0x000005DD
_0222061C: .word 0x00002077
_02220620: .word 0x00002079
_02220624: .word 0x0000208E
	thumb_func_end ov13_0222050C

	thumb_func_start ov13_02220628
ov13_02220628: ; 0x02220628
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _02220714 ; =0x02228D64
	add r4, r0, #0
	ldr r6, [r4, #0]
	bl ov13_022213E4
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _02220656
	ldr r0, _02220718 ; =0x00002088
	ldr r0, [r4, r0]
	bl ov13_02228B64
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _0222065C
	mov r5, #4
	b _0222065C
_02220656:
	add r0, r4, #0
	bl ov13_022256E8
_0222065C:
	cmp r5, #4
	bhi _0222070E
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222066C: ; jump table
	.short _02220676 - _0222066C - 2 ; case 0
	.short _02220676 - _0222066C - 2 ; case 1
	.short _02220676 - _0222066C - 2 ; case 2
	.short _02220676 - _0222066C - 2 ; case 3
	.short _022206F4 - _0222066C - 2 ; case 4
_02220676:
	ldrb r1, [r6, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r1, r4, r0
	lsl r0, r5, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _0222070E
	ldr r0, [r4, #0]
	add r0, #0x34
	strb r5, [r0]
	ldr r0, _0222071C ; =0x000005DD
	bl sub_02005748
	add r1, r5, #0
	add r1, #0x13
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov13_02225FCC
	ldrh r0, [r6, #0x22]
	add r3, r5, #0
	str r0, [sp]
	ldrb r2, [r6, #0x11]
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x28]
	add r2, r6, r2
	add r2, #0x2c
	ldrb r2, [r2]
	bl ov16_0223E30C
	cmp r0, #1
	bne _022206CE
	ldr r0, _02220720 ; =0x0000207C
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #0x17
	sub r0, r0, #3
	strb r1, [r4, r0]
	add sp, #4
	mov r0, #0x16
	pop {r3, r4, r5, r6, pc}
_022206CE:
	ldr r2, _02220724 ; =0x00001FA8
	mov r1, #0x51
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	add r0, r4, #0
	bl ov13_022240E0
	ldr r0, [r4, #0]
	mov r1, #6
	strb r1, [r0, #0x11]
	ldr r0, _02220728 ; =0x00002079
	mov r1, #0x19
	strb r1, [r4, r0]
	add sp, #4
	mov r0, #0x11
	pop {r3, r4, r5, r6, pc}
_022206F4:
	ldr r0, _0222071C ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #6
	bl ov13_02225FCC
	ldr r0, _02220728 ; =0x00002079
	mov r1, #6
	strb r1, [r4, r0]
	add sp, #4
	mov r0, #0x16
	pop {r3, r4, r5, r6, pc}
_0222070E:
	mov r0, #0x15
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02220714: .word 0x02228D64
_02220718: .word 0x00002088
_0222071C: .word 0x000005DD
_02220720: .word 0x0000207C
_02220724: .word 0x00001FA8
_02220728: .word 0x00002079
	thumb_func_end ov13_02220628

	thumb_func_start ov13_0222072C
ov13_0222072C: ; 0x0222072C
	push {r3, lr}
	mov r1, #0
	bl ov13_022216C0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov13_0222072C

	thumb_func_start ov13_02220738
ov13_02220738: ; 0x02220738
	push {r3, lr}
	mov r1, #1
	bl ov13_022216C0
	mov r0, #2
	pop {r3, pc}
	thumb_func_end ov13_02220738

	thumb_func_start ov13_02220744
ov13_02220744: ; 0x02220744
	push {r3, lr}
	mov r1, #2
	bl ov13_022216C0
	mov r0, #3
	pop {r3, pc}
	thumb_func_end ov13_02220744

	thumb_func_start ov13_02220750
ov13_02220750: ; 0x02220750
	push {r3, lr}
	mov r1, #3
	bl ov13_022216C0
	mov r0, #4
	pop {r3, pc}
	thumb_func_end ov13_02220750

	thumb_func_start ov13_0222075C
ov13_0222075C: ; 0x0222075C
	push {r3, lr}
	mov r1, #4
	bl ov13_022216C0
	mov r0, #5
	pop {r3, pc}
	thumb_func_end ov13_0222075C

	thumb_func_start ov13_02220768
ov13_02220768: ; 0x02220768
	push {r3, lr}
	ldr r1, _02220788 ; =0x00002077
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bne _0222077C
	mov r1, #6
	bl ov13_022216C0
	b _02220782
_0222077C:
	mov r1, #8
	bl ov13_022216C0
_02220782:
	mov r0, #0x13
	pop {r3, pc}
	nop
_02220788: .word 0x00002077
	thumb_func_end ov13_02220768

	thumb_func_start ov13_0222078C
ov13_0222078C: ; 0x0222078C
	push {r4, lr}
	add r4, r0, #0
	bl ov13_022252E8
	ldr r0, _022207B4 ; =0x00002077
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bne _022207A8
	add r0, r4, #0
	mov r1, #7
	bl ov13_022216C0
	b _022207B0
_022207A8:
	add r0, r4, #0
	mov r1, #9
	bl ov13_022216C0
_022207B0:
	mov r0, #0x14
	pop {r4, pc}
	; .align 2, 0
_022207B4: .word 0x00002077
	thumb_func_end ov13_0222078C

	thumb_func_start ov13_022207B8
ov13_022207B8: ; 0x022207B8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl ov13_022216C0
	ldr r2, [r4, #0]
	mov r1, #0x25
	ldrh r0, [r2, #0x22]
	ldr r2, [r2, #0xc]
	bl sub_0207CFF0
	cmp r0, #0
	beq _022207D6
	mov r0, #0x18
	pop {r4, pc}
_022207D6:
	mov r0, #0x15
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_022207B8

	thumb_func_start ov13_022207DC
ov13_022207DC: ; 0x022207DC
	push {r4, lr}
	ldr r1, _02220818 ; =0x0000207A
	add r4, r0, #0
	ldrb r1, [r4, r1]
	bl ov13_02224B7C
	ldr r1, _02220818 ; =0x0000207A
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02221BF8
	ldr r1, _02220818 ; =0x0000207A
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_022260EC
	ldr r1, _02220818 ; =0x0000207A
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_022214E0
	ldr r0, _02220818 ; =0x0000207A
	ldrb r0, [r4, r0]
	cmp r0, #2
	bne _02220812
	mov r0, #3
	pop {r4, pc}
_02220812:
	mov r0, #4
	pop {r4, pc}
	nop
_02220818: .word 0x0000207A
	thumb_func_end ov13_022207DC

	thumb_func_start ov13_0222081C
ov13_0222081C: ; 0x0222081C
	push {r4, lr}
	add r4, r0, #0
	bl ov13_022240E0
	ldr r0, _02220830 ; =0x00002079
	mov r1, #0x10
	strb r1, [r4, r0]
	mov r0, #0x11
	pop {r4, pc}
	nop
_02220830: .word 0x00002079
	thumb_func_end ov13_0222081C

	thumb_func_start ov13_02220834
ov13_02220834: ; 0x02220834
	push {r3, lr}
	ldr r1, _02220844 ; =0x00002060
	add r0, r0, r1
	mov r1, #0
	bl sub_0200E084
	mov r0, #2
	pop {r3, pc}
	; .align 2, 0
_02220844: .word 0x00002060
	thumb_func_end ov13_02220834

	thumb_func_start ov13_02220848
ov13_02220848: ; 0x02220848
	push {r3, lr}
	ldr r1, _02220860 ; =0x0000207B
	ldrb r0, [r0, r1]
	bl sub_0201D724
	cmp r0, #0
	bne _0222085A
	mov r0, #0x12
	pop {r3, pc}
_0222085A:
	mov r0, #0x11
	pop {r3, pc}
	nop
_02220860: .word 0x0000207B
	thumb_func_end ov13_02220848

	thumb_func_start ov13_02220864
ov13_02220864: ; 0x02220864
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02220884 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0222087A
	bl sub_02022798
	cmp r0, #1
	bne _02220880
_0222087A:
	ldr r0, _02220888 ; =0x00002079
	ldrb r0, [r4, r0]
	pop {r4, pc}
_02220880:
	mov r0, #0x12
	pop {r4, pc}
	; .align 2, 0
_02220884: .word 0x021BF67C
_02220888: .word 0x00002079
	thumb_func_end ov13_02220864

	thumb_func_start ov13_0222088C
ov13_0222088C: ; 0x0222088C
	ldr r1, _022208A0 ; =0x00001FA3
	ldrb r2, [r0, r1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	bne _0222089C
	add r1, #0xd6
	ldrb r0, [r0, r1]
	bx lr
_0222089C:
	mov r0, #0x16
	bx lr
	; .align 2, 0
_022208A0: .word 0x00001FA3
	thumb_func_end ov13_0222088C

	thumb_func_start ov13_022208A4
ov13_022208A4: ; 0x022208A4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02220A3C ; =0x0000207C
	add r4, r0, #0
	ldrb r1, [r4, r7]
	ldr r5, [r4, #0]
	cmp r1, #4
	bls _022208B4
	b _02220A38
_022208B4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022208C0: ; jump table
	.short _022208CA - _022208C0 - 2 ; case 0
	.short _0222098E - _022208C0 - 2 ; case 1
	.short _022209B6 - _022208C0 - 2 ; case 2
	.short _022209EE - _022208C0 - 2 ; case 3
	.short _02220A0E - _022208C0 - 2 ; case 4
_022208CA:
	ldrb r2, [r5, #0x11]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x28]
	add r2, r5, r2
	add r2, #0x2c
	ldrb r2, [r2]
	bl ov16_0223DFAC
	ldrb r2, [r5, #0x11]
	mov r1, #0x50
	mul r1, r2
	add r1, r4, r1
	str r0, [r1, #4]
	add r0, r4, #0
	bl ov13_02224144
	sub r0, r7, #2
	ldrb r0, [r4, r0]
	ldrb r1, [r5, #0x11]
	cmp r0, #5
	bne _02220914
	mov r0, #0x50
	mul r0, r1
	add r5, #0x34
	ldrb r1, [r5]
	add r0, r4, r0
	ldr r0, [r0, #4]
	add r1, #0x3a
	mov r2, #0
	bl sub_02074470
	add r1, r7, #4
	strh r0, [r4, r1]
	mov r2, #2
	sub r0, r1, #4
	strb r2, [r4, r0]
	b _02220986
_02220914:
	mov r0, #0x50
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #4]
	bl sub_0208E9F0
	add r6, r0, #0
	ldrb r0, [r5, #0x11]
	add r3, r4, #0
	mov r7, #0x50
	add r2, r0, #0
	add r3, #0x1b
	mul r2, r7
	ldrb r1, [r3, r2]
	mov r0, #0x78
	bic r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x19
	orr r0, r1
	strb r0, [r3, r2]
	ldrb r0, [r5, #0x11]
	add r1, r0, #0
	mul r1, r7
	add r1, r4, r1
	ldrb r1, [r1, #0x1b]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1c
	cmp r1, #7
	bne _0222096A
	add r0, #0xd
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02220A40 ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D3F4
	ldrb r1, [r5, #0x11]
	add r0, r4, #0
	bl ov13_022234A8
_0222096A:
	ldrb r1, [r5, #0x11]
	mov r0, #0x50
	mov r2, #0
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #4]
	mov r1, #0xa3
	bl sub_02074470
	ldr r1, _02220A44 ; =0x0000207E
	mov r2, #4
	strh r0, [r4, r1]
	sub r0, r1, #2
	strb r2, [r4, r0]
_02220986:
	ldr r0, _02220A48 ; =0x000005EC
	bl sub_02005748
	b _02220A38
_0222098E:
	ldrb r1, [r5, #0x11]
	add r6, r4, #0
	mov r2, #0x50
	add r3, r1, #0
	add r6, #0x14
	mul r3, r2
	add r1, r7, #2
	ldrh r2, [r4, r1]
	ldrh r1, [r6, r3]
	cmp r2, r1
	beq _022209B0
	add r1, r1, #1
	strh r1, [r6, r3]
	ldrb r1, [r5, #0x11]
	bl ov13_02223448
	b _02220A38
_022209B0:
	mov r0, #3
	strb r0, [r4, r7]
	b _02220A38
_022209B6:
	ldrb r3, [r5, #0x11]
	add r1, r4, #0
	mov r2, #0x50
	add r1, #0x36
	mul r2, r3
	add r6, r1, r2
	add r1, r5, #0
	add r1, #0x34
	ldrb r1, [r1]
	lsl r3, r1, #3
	add r1, r7, #4
	ldrh r2, [r4, r1]
	ldrb r1, [r6, r3]
	cmp r2, r1
	beq _022209E8
	add r1, r1, #1
	strb r1, [r6, r3]
	add r5, #0x34
	ldrb r2, [r5]
	add r1, r2, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov13_02223F5C
	b _02220A38
_022209E8:
	mov r0, #3
	strb r0, [r4, r7]
	b _02220A38
_022209EE:
	add r2, r5, #0
	add r2, #0x33
	ldrh r1, [r5, #0x22]
	ldrb r2, [r2]
	ldr r0, [r5, #8]
	ldr r3, [r5, #0xc]
	bl ov13_02221A54
	add r0, r4, #0
	bl ov13_022240E0
	mov r1, #0x19
	sub r0, r7, #3
	strb r1, [r4, r0]
	mov r0, #0x11
	pop {r3, r4, r5, r6, r7, pc}
_02220A0E:
	ldrb r1, [r5, #0x11]
	add r3, r4, #0
	mov r2, #0x50
	mul r2, r1
	add r1, r7, #2
	add r3, #0x14
	ldrh r6, [r4, r1]
	ldrh r1, [r3, r2]
	cmp r6, r1
	beq _02220A32
	add r1, r1, #1
	strh r1, [r3, r2]
	ldrb r1, [r5, #0x11]
	bl ov13_02223448
	add r0, r4, #0
	bl ov13_022264C4
_02220A32:
	ldr r0, _02220A3C ; =0x0000207C
	mov r1, #1
	strb r1, [r4, r0]
_02220A38:
	mov r0, #0x17
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220A3C: .word 0x0000207C
_02220A40: .word 0x00001FB8
_02220A44: .word 0x0000207E
_02220A48: .word 0x000005EC
	thumb_func_end ov13_022208A4

	thumb_func_start ov13_02220A4C
ov13_02220A4C: ; 0x02220A4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	str r0, [sp, #4]
	ldr r0, _02220B6C ; =0x0000207C
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02220A68
	cmp r0, #1
	beq _02220AD2
	cmp r0, #2
	beq _02220B3C
	b _02220B64
_02220A68:
	ldr r2, [sp, #4]
	ldr r0, [sp, #4]
	ldrb r3, [r2, #0x11]
	ldr r1, [sp, #4]
	ldr r0, [r0, #8]
	add r2, r2, r3
	add r2, #0x2c
	ldrb r2, [r2]
	ldr r1, [r1, #0x28]
	bl ov16_0223DFAC
	ldr r1, [sp, #4]
	mov r7, #0
	ldrb r2, [r1, #0x11]
	mov r1, #0x50
	add r6, r7, #0
	mul r1, r2
	add r1, r5, r1
	str r0, [r1, #4]
	add r4, r5, #0
_02220A90:
	ldr r0, [sp, #4]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r1, r5, r0
	add r0, r1, r6
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _02220AB4
	ldr r0, [r1, #4]
	add r1, r7, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_02074470
	mov r1, #0x82
	lsl r1, r1, #6
	strh r0, [r4, r1]
_02220AB4:
	add r7, r7, #1
	add r6, #8
	add r4, r4, #2
	cmp r7, #4
	blo _02220A90
	add r0, r5, #0
	bl ov13_02224144
	ldr r0, _02220B70 ; =0x000005EC
	bl sub_02005748
	ldr r0, _02220B6C ; =0x0000207C
	mov r1, #1
	strb r1, [r5, r0]
	b _02220B64
_02220AD2:
	mov r6, #0
	add r4, r6, #0
	str r6, [sp]
	add r7, r5, #0
_02220ADA:
	ldr r0, [sp, #4]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r1, r5, r0
	ldr r0, [sp]
	add r1, r1, r0
	ldrh r0, [r1, #0x34]
	cmp r0, #0
	bne _02220AF2
	add r6, r6, #1
	b _02220B22
_02220AF2:
	mov r0, #0x82
	add r2, r1, #0
	lsl r0, r0, #6
	add r2, #0x36
	ldrh r0, [r7, r0]
	ldrb r2, [r2]
	cmp r0, r2
	beq _02220B20
	add r0, r1, #0
	add r0, #0x36
	ldrb r0, [r0]
	lsl r2, r4, #0x10
	add r1, #0x36
	add r0, r0, #1
	strb r0, [r1]
	add r1, r4, #1
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov13_02223F5C
	b _02220B22
_02220B20:
	add r6, r6, #1
_02220B22:
	ldr r0, [sp]
	add r4, r4, #1
	add r0, #8
	add r7, r7, #2
	str r0, [sp]
	cmp r4, #4
	blo _02220ADA
	cmp r6, #4
	bne _02220B64
	ldr r0, _02220B6C ; =0x0000207C
	mov r1, #2
	strb r1, [r5, r0]
	b _02220B64
_02220B3C:
	ldr r2, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [sp, #4]
	add r2, #0x33
	ldr r3, [sp, #4]
	ldrh r1, [r1, #0x22]
	ldrb r2, [r2]
	ldr r0, [r0, #8]
	ldr r3, [r3, #0xc]
	bl ov13_02221A54
	add r0, r5, #0
	bl ov13_022240E0
	ldr r0, _02220B74 ; =0x00002079
	mov r1, #0x19
	strb r1, [r5, r0]
	add sp, #8
	mov r0, #0x11
	pop {r3, r4, r5, r6, r7, pc}
_02220B64:
	mov r0, #0x18
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220B6C: .word 0x0000207C
_02220B70: .word 0x000005EC
_02220B74: .word 0x00002079
	thumb_func_end ov13_02220A4C

	thumb_func_start ov13_02220B78
ov13_02220B78: ; 0x02220B78
	push {lr}
	sub sp, #0xc
	mov r2, #0
	str r2, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	mov r1, #0x7a
	str r2, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0xa
	add r3, r1, #0
	ldr r2, _02220BA0 ; =0x0000FFFF
	sub r3, #0x12
	bl sub_02003178
	mov r0, #0x1a
	add sp, #0xc
	pop {pc}
	nop
_02220BA0: .word 0x0000FFFF
	thumb_func_end ov13_02220B78

	thumb_func_start ov13_02220BA4
ov13_02220BA4: ; 0x02220BA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x7a
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200384C
	cmp r0, #0
	beq _02220BBC
	mov r0, #0
	pop {r3, r4, r5, pc}
_02220BBC:
	add r0, r4, #0
	bl ov13_02220F60
	add r0, r4, #0
	bl ov13_02224970
	add r0, r4, #0
	bl ov13_02221BC8
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov13_02220D1C
	ldr r0, _02220C08 ; =0x00002088
	ldr r0, [r4, r0]
	bl ov13_02228A5C
	ldr r1, [r4, #0]
	add r1, #0x32
	strb r0, [r1]
	ldr r0, _02220C08 ; =0x00002088
	ldr r0, [r4, r0]
	bl ov13_02228A50
	mov r0, #2
	bl sub_02002C60
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x36
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020067D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02220C08: .word 0x00002088
	thumb_func_end ov13_02220BA4

	thumb_func_start ov13_02220C0C
ov13_02220C0C: ; 0x02220C0C
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02220D08 ; =0x02228D04
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	mov r1, #1
	bl sub_020183A0
	ldr r5, _02220D0C ; =0x02228D7C
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #7
	str r0, [r3, #0]
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _02220D10 ; =0x02228DB4
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _02220D14 ; =0x02228DD0
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_02019EBC
	ldr r5, _02220D18 ; =0x02228D98
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_02019EBC
	ldr r3, [r4, #0]
	mov r0, #5
	ldr r3, [r3, #0xc]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [r4, #0]
	mov r0, #4
	ldr r3, [r3, #0xc]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_0201C3C0
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #0x80
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02220D08: .word 0x02228D04
_02220D0C: .word 0x02228D7C
_02220D10: .word 0x02228DB4
_02220D14: .word 0x02228DD0
_02220D18: .word 0x02228D98
	thumb_func_end ov13_02220C0C

	thumb_func_start ov13_02220D1C
ov13_02220D1C: ; 0x02220D1C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	mov r1, #7
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02220D1C

	thumb_func_start ov13_02220D4C
ov13_02220D4C: ; 0x02220D4C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x48
	ldr r1, [r1, #0xc]
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [r5, #0]
	mov r2, #0x79
	ldr r1, [r1, #0xc]
	lsl r2, r2, #2
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r1, #0x16
	mov r3, #7
	add r4, r0, #0
	bl sub_020070E8
	ldr r2, [r5, #0]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	mov r1, #0x14
	bl sub_02006CB8
	add r1, sp, #0x10
	add r6, r0, #0
	bl sub_020A7248
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, #0xc
	bl ov13_02225710
	add r0, r6, #0
	bl sub_020181C4
	ldr r2, [r5, #0]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	mov r1, #0x15
	bl sub_02006CB8
	add r1, sp, #0x10
	add r6, r0, #0
	bl sub_020A7248
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, #0xc
	bl ov13_02225A3C
	add r0, r6, #0
	bl sub_020181C4
	mov r0, #1
	str r0, [sp]
	lsl r0, r0, #9
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x7a
	ldr r3, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r3, #0xc]
	mov r1, #0x48
	mov r2, #0x17
	bl sub_02003050
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02003164
	add r2, r0, #0
	ldr r0, _02220F04 ; =0x00001F60
	mov r1, #6
	lsl r1, r1, #6
	add r1, r2, r1
	add r0, r5, r0
	mov r2, #0x40
	bl sub_020D50B8
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	mov r0, #0x7a
	ldr r3, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r3, #0xc]
	mov r1, #0xe
	mov r2, #6
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xf0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	add r0, #0xf8
	ldr r0, [r5, r0]
	ldr r3, [r3, #0xc]
	mov r1, #0xe
	mov r2, #7
	bl sub_02003050
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223EDE0
	add r4, r0, #0
	bl sub_0200DD04
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r2, #0x79
	ldr r0, [r0, #0xc]
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x26
	mov r3, #4
	bl sub_02006E3C
	add r0, r4, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	mov r0, #0x7a
	ldr r3, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r3, #0xc]
	mov r1, #0x26
	bl sub_02003050
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02003164
	add r6, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl sub_02018144
	mov r1, #0x1a
	lsl r1, r1, #4
	add r1, r6, r1
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020D50B8
	mov r0, #0x4d
	lsl r0, r0, #2
	add r1, r6, r0
	ldrb r3, [r1]
	add r2, r4, #0
	add r2, #0xe
	strb r3, [r4, #0xe]
	ldrb r3, [r1, #1]
	strb r3, [r2, #1]
	ldrb r3, [r1, #2]
	strb r3, [r2, #2]
	ldrb r1, [r1, #3]
	mov r3, #0xd0
	strb r1, [r2, #3]
	add r2, r0, #4
	add r1, r0, #4
	ldrb r2, [r6, r2]
	add r1, r6, r1
	add r0, #0xb4
	strb r2, [r4, #6]
	ldrb r2, [r1, #1]
	strb r2, [r4, #7]
	ldrb r2, [r1, #2]
	strb r2, [r4, #8]
	ldrb r1, [r1, #3]
	mov r2, #1
	strb r1, [r4, #9]
	mov r1, #0x20
	str r1, [sp]
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02002FBC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02220F04: .word 0x00001F60
	thumb_func_end ov13_02220D4C

	thumb_func_start ov13_02220F08
ov13_02220F08: ; 0x02220F08
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #0]
	mov r0, #0
	ldr r3, [r3, #0xc]
	mov r1, #0x1a
	mov r2, #3
	bl sub_0200B144
	ldr r1, _02220F50 ; =0x00001FA8
	mov r2, #0
	str r0, [r4, r1]
	ldr r3, [r4, #0]
	mov r0, #0xf
	ldr r3, [r3, #0xc]
	mov r1, #0xe
	bl sub_0200C440
	ldr r1, _02220F54 ; =0x00001FA4
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0200B358
	ldr r1, _02220F58 ; =0x00001FAC
	str r0, [r4, r1]
	ldr r1, [r4, #0]
	mov r0, #2
	ldr r1, [r1, #0xc]
	lsl r0, r0, #8
	bl sub_02023790
	ldr r1, _02220F5C ; =0x00001FB0
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02220F50: .word 0x00001FA8
_02220F54: .word 0x00001FA4
_02220F58: .word 0x00001FAC
_02220F5C: .word 0x00001FB0
	thumb_func_end ov13_02220F08

	thumb_func_start ov13_02220F60
ov13_02220F60: ; 0x02220F60
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02220F88 ; =0x00001FA8
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _02220F8C ; =0x00001FA4
	ldr r0, [r4, r0]
	bl sub_0200C560
	ldr r0, _02220F90 ; =0x00001FAC
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	ldr r0, _02220F94 ; =0x00001FB0
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	nop
_02220F88: .word 0x00001FA8
_02220F8C: .word 0x00001FA4
_02220F90: .word 0x00001FAC
_02220F94: .word 0x00001FB0
	thumb_func_end ov13_02220F60

	thumb_func_start ov13_02220F98
ov13_02220F98: ; 0x02220F98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0207A0F8
	cmp r0, #0
	bgt _02220FB2
	b _02221246
_02220FB2:
	ldr r0, [sp, #8]
	mov r1, #0x50
	mul r1, r0
	ldr r0, [sp]
	str r1, [sp, #4]
	add r4, r0, r1
	ldr r0, [r0, #0]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	str r0, [r4, #4]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _02220FDC
	b _0222122A
_02220FDC:
	ldr r0, [sp, #8]
	mov r1, #0x50
	add r5, r0, #0
	mul r5, r1
	ldr r0, [sp]
	mov r1, #0xa5
	add r4, r0, r5
	ldr r0, [r4, #4]
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0xa]
	ldr r0, [r4, #4]
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0xc]
	ldr r0, [r4, #4]
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0xe]
	ldr r0, [r4, #4]
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x10]
	ldr r0, [r4, #4]
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x12]
	ldr r0, [r4, #4]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x14]
	ldr r0, [r4, #4]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x16]
	ldr r0, [r4, #4]
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	strb r0, [r4, #0x18]
	ldr r0, [r4, #4]
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	ldr r6, [sp]
	strb r0, [r4, #0x19]
	ldr r0, [r4, #4]
	add r6, #0x1a
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldrb r1, [r6, r5]
	mov r2, #0x7f
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0x7f
	and r0, r2
	orr r0, r1
	strb r0, [r6, r5]
	ldr r0, [r4, #4]
	mov r1, #0xb0
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	ldrb r1, [r6, r5]
	bne _0222108C
	mov r0, #0x80
	bic r1, r0
	strb r1, [r6, r5]
	b _02221092
_0222108C:
	mov r0, #0x80
	orr r0, r1
	strb r0, [r6, r5]
_02221092:
	ldr r0, [sp]
	add r4, r0, r5
	add r6, r0, #0
	ldr r0, [r4, #4]
	add r6, #0x1b
	bl sub_02075D6C
	ldrb r1, [r6, r5]
	mov r2, #7
	bic r1, r2
	mov r2, #7
	and r0, r2
	orr r0, r1
	strb r0, [r6, r5]
	ldr r0, [r4, #4]
	bl sub_0208E9F0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1c
	ldrb r1, [r6, r5]
	mov r2, #0x78
	lsr r0, r0, #0x19
	bic r1, r2
	orr r0, r1
	strb r0, [r6, r5]
	ldr r0, [r4, #4]
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r6, r5]
	mov r2, #0x80
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r6, r5]
	ldr r0, [r4, #4]
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x1e]
	ldr r0, [r4, #4]
	mov r1, #8
	mov r2, #0
	bl sub_02074470
	ldr r6, [sp]
	str r0, [r4, #0x20]
	add r6, #0x1a
	ldrb r1, [r6, r5]
	ldrh r0, [r4, #8]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	bl sub_02075AD0
	str r0, [r4, #0x24]
	ldrb r0, [r6, r5]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x19
	cmp r1, #0x64
	bne _0222112A
	ldr r0, [sp]
	add r4, r0, r5
	ldr r0, [r4, #0x24]
	b _02221136
_0222112A:
	ldr r0, [sp]
	add r1, r1, #1
	add r4, r0, r5
	ldrh r0, [r4, #8]
	bl sub_02075AD0
_02221136:
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	mov r1, #0x13
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x2c
	strb r0, [r1]
	ldr r0, [r4, #4]
	mov r1, #0x14
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x2d
	strb r0, [r1]
	ldr r0, [r4, #4]
	mov r1, #0x15
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x2e
	strb r0, [r1]
	ldr r0, [r4, #4]
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x2f
	strb r0, [r1]
	ldr r0, [r4, #4]
	mov r1, #0x17
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x30
	strb r0, [r1]
	ldr r0, [r4, #4]
	mov r1, #0xa2
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x31
	strb r0, [r1]
	ldr r0, [r4, #4]
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r4, #0x32
	strb r0, [r4]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r1, #0x34
	add r7, r1, r0
	ldr r1, [sp]
	mov r4, #0
	add r6, r1, r0
_022211B4:
	lsl r0, r4, #3
	add r1, r4, #0
	str r0, [sp, #0xc]
	add r5, r7, r0
	ldr r0, [r6, #4]
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0xc]
	strh r0, [r7, r1]
	add r0, r1, #0
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _02221220
	add r1, r4, #0
	ldr r0, [r6, #4]
	add r1, #0x3a
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #2]
	add r1, r4, #0
	ldr r0, [r6, #4]
	add r1, #0x3e
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #3]
	ldrh r0, [r5]
	ldrb r1, [r5, #3]
	bl sub_020790DC
	strb r0, [r5, #3]
	ldrh r0, [r5]
	mov r1, #3
	bl sub_020790C4
	strb r0, [r5, #4]
	ldrh r0, [r5]
	mov r1, #1
	bl sub_020790C4
	strb r0, [r5, #5]
	ldrh r0, [r5]
	mov r1, #4
	bl sub_020790C4
	strb r0, [r5, #6]
	ldrh r0, [r5]
	mov r1, #2
	bl sub_020790C4
	strb r0, [r5, #7]
_02221220:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _022211B4
_0222122A:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0207A0F8
	ldr r1, [sp, #8]
	cmp r1, r0
	bge _02221246
	b _02220FB2
_02221246:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02220F98

	thumb_func_start ov13_0222124C
ov13_0222124C: ; 0x0222124C
	push {r3, r4, r5, lr}
	ldr r1, _022212BC ; =0x02228DEC
	add r4, r0, #0
	bl ov13_022213E4
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _02221298
	ldr r0, _022212C0 ; =0x00002088
	ldr r0, [r4, r0]
	bl ov13_02228B64
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _02221276
	mov r5, #6
	b _02221280
_02221276:
	add r0, r0, #1
	cmp r5, r0
	bne _02221280
	mov r0, #0
	pop {r3, r4, r5, pc}
_02221280:
	cmp r5, #6
	beq _02221290
	add r0, r4, #0
	add r1, r5, #0
	bl ov13_022213F0
	cmp r0, #0
	beq _022212B6
_02221290:
	ldr r0, [r4, #0]
	strb r5, [r0, #0x11]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02221298:
	cmp r5, #6
	beq _022212A8
	add r0, r4, #0
	add r1, r5, #0
	bl ov13_022213F0
	cmp r0, #0
	beq _022212B6
_022212A8:
	ldr r0, [r4, #0]
	strb r5, [r0, #0x11]
	add r0, r4, #0
	bl ov13_022256E8
	mov r0, #1
	pop {r3, r4, r5, pc}
_022212B6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022212BC: .word 0x02228DEC
_022212C0: .word 0x00002088
	thumb_func_end ov13_0222124C

	thumb_func_start ov13_022212C4
ov13_022212C4: ; 0x022212C4
	push {r3, r4, r5, lr}
	ldr r1, _02221304 ; =0x02228D24
	add r5, r0, #0
	bl ov13_022213E4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _022212F8
	ldr r0, _02221308 ; =0x00002088
	ldr r0, [r5, r0]
	bl ov13_02228B64
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022212EE
	mov r4, #3
	b _022212FE
_022212EE:
	add r0, r0, #1
	cmp r4, r0
	bne _022212FE
	mov r0, #0xff
	pop {r3, r4, r5, pc}
_022212F8:
	add r0, r5, #0
	bl ov13_022256E8
_022212FE:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02221304: .word 0x02228D24
_02221308: .word 0x00002088
	thumb_func_end ov13_022212C4

	thumb_func_start ov13_0222130C
ov13_0222130C: ; 0x0222130C
	push {r3, r4, r5, lr}
	ldr r1, _0222134C ; =0x02228D38
	add r5, r0, #0
	bl ov13_022213E4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02221340
	ldr r0, _02221350 ; =0x00002088
	ldr r0, [r5, r0]
	bl ov13_02228B64
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _02221336
	mov r4, #3
	b _02221346
_02221336:
	add r0, r0, #1
	cmp r4, r0
	bne _02221346
	mov r0, #0xff
	pop {r3, r4, r5, pc}
_02221340:
	add r0, r5, #0
	bl ov13_022256E8
_02221346:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222134C: .word 0x02228D38
_02221350: .word 0x00002088
	thumb_func_end ov13_0222130C

	thumb_func_start ov13_02221354
ov13_02221354: ; 0x02221354
	push {r3, r4, r5, lr}
	ldr r1, _02221394 ; =0x02228E2C
	add r5, r0, #0
	bl ov13_022213E4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02221388
	ldr r0, _02221398 ; =0x00002088
	ldr r0, [r5, r0]
	bl ov13_02228B64
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _0222137E
	mov r4, #7
	b _0222138E
_0222137E:
	add r0, r0, #1
	cmp r4, r0
	bne _0222138E
	mov r0, #0xff
	pop {r3, r4, r5, pc}
_02221388:
	add r0, r5, #0
	bl ov13_022256E8
_0222138E:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02221394: .word 0x02228E2C
_02221398: .word 0x00002088
	thumb_func_end ov13_02221354

	thumb_func_start ov13_0222139C
ov13_0222139C: ; 0x0222139C
	push {r3, r4, r5, lr}
	ldr r1, _022213DC ; =0x02228D4C
	add r5, r0, #0
	bl ov13_022213E4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _022213D0
	ldr r0, _022213E0 ; =0x00002088
	ldr r0, [r5, r0]
	bl ov13_02228B64
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022213C6
	mov r4, #4
	b _022213D6
_022213C6:
	add r0, r0, #1
	cmp r4, r0
	bne _022213D6
	mov r0, #0xff
	pop {r3, r4, r5, pc}
_022213D0:
	add r0, r5, #0
	bl ov13_022256E8
_022213D6:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022213DC: .word 0x02228D4C
_022213E0: .word 0x00002088
	thumb_func_end ov13_0222139C

	thumb_func_start ov13_022213E4
ov13_022213E4: ; 0x022213E4
	ldr r3, _022213EC ; =sub_02022664
	add r0, r1, #0
	bx r3
	nop
_022213EC: .word sub_02022664
	thumb_func_end ov13_022213E4

	thumb_func_start ov13_022213F0
ov13_022213F0: ; 0x022213F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x50
	add r5, r0, #0
	mul r1, r4
	add r1, r5, r1
	ldrh r1, [r1, #8]
	cmp r1, #0
	bne _02221406
	mov r0, #0
	pop {r3, r4, r5, pc}
_02221406:
	cmp r4, #0
	beq _02221420
	bl ov13_0222196C
	cmp r0, #0
	bne _0222141C
	add r0, r5, #0
	bl ov13_0222198C
	cmp r0, #0
	beq _02221424
_0222141C:
	cmp r4, #1
	bne _02221424
_02221420:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02221424:
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end ov13_022213F0

	thumb_func_start ov13_02221428
ov13_02221428: ; 0x02221428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	add r6, r4, #0
	bl ov13_0222198C
	cmp r0, #1
	bne _022214A0
	ldr r2, _022214DC ; =0x02228CFC
	add r1, sp, #0
	ldrb r3, [r2]
	add r0, sp, #0
	mov r4, #0
	strb r3, [r1]
	ldrb r3, [r2, #1]
	strb r3, [r1, #1]
	ldrb r3, [r2, #2]
	strb r3, [r1, #2]
	ldrb r3, [r2, #3]
	strb r3, [r1, #3]
	ldrb r3, [r2, #4]
	ldrb r2, [r2, #5]
	strb r3, [r1, #4]
	strb r2, [r1, #5]
_0222145C:
	ldrb r1, [r0]
	cmp r6, r1
	beq _0222146A
	add r4, r4, #1
	add r0, r0, #1
	cmp r4, #6
	blt _0222145C
_0222146A:
	add r4, r4, r7
	bpl _02221472
	mov r4, #5
	b _02221478
_02221472:
	cmp r4, #6
	blt _02221478
	mov r4, #0
_02221478:
	add r0, sp, #0
	ldrb r1, [r0, r4]
	cmp r6, r1
	beq _022214D4
	add r0, r5, #0
	bl ov13_022213F0
	cmp r0, #0
	beq _0222146A
	add r0, sp, #0
	ldrb r0, [r0, r4]
	mov r1, #0x50
	mul r1, r0
	add r1, r5, r1
	ldrb r1, [r1, #0x1b]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	bne _0222146A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022214A0:
	add r4, r4, r7
	bpl _022214A8
	mov r4, #5
	b _022214AE
_022214A8:
	cmp r4, #6
	blt _022214AE
	mov r4, #0
_022214AE:
	cmp r6, r4
	beq _022214D4
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_022213F0
	cmp r0, #0
	beq _022214A0
	mov r0, #0x50
	mul r0, r4
	add r0, r5, r0
	ldrb r0, [r0, #0x1b]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _022214A0
	lsl r0, r4, #0x18
	add sp, #8
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_022214D4:
	mov r0, #0xff
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022214DC: .word 0x02228CFC
	thumb_func_end ov13_02221428

	thumb_func_start ov13_022214E0
ov13_022214E0: ; 0x022214E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	cmp r1, #2
	bne _0222155E
	ldr r0, [r6, #0]
	add r2, r6, #4
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r0, r2, r0
	ldrb r1, [r0, #0x16]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	cmp r1, #0x64
	bhs _0222150A
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x24]
	ldr r0, [r0, #0x1c]
	sub r1, r1, r2
	sub r0, r0, r2
	b _0222150E
_0222150A:
	mov r1, #0
	add r0, r1, #0
_0222150E:
	mov r2, #0x40
	bl sub_0208C0BC
	add r4, r0, #0
	mov r5, #0
	mov r7, #0x1e
_0222151A:
	cmp r4, #8
	blo _02221522
	add r1, r7, #0
	b _0222152A
_02221522:
	add r0, r4, #0
	add r0, #0x16
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_0222152A:
	add r2, r5, #0
	add r2, #0xa
	lsl r2, r2, #0x10
	add r0, r6, #0
	lsr r2, r2, #0x10
	mov r3, #8
	bl ov13_02221560
	cmp r4, #8
	bhs _02221542
	mov r4, #0
	b _02221548
_02221542:
	sub r4, #8
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_02221548:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0222151A
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #7
	bl sub_0201C3C0
_0222155E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_022214E0

	thumb_func_start ov13_02221560
ov13_02221560: ; 0x02221560
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r4, r2, #0
	str r1, [sp, #8]
	mov r1, #0x10
	str r1, [sp, #0xc]
	mov r1, #0x79
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	lsl r3, r4, #0x18
	mov r1, #7
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov13_02221560

	thumb_func_start ov13_02221590
ov13_02221590: ; 0x02221590
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0xe
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	lsl r6, r2, #1
	add r4, r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x79
	add r7, r6, #2
	lsl r0, r0, #2
	lsl r3, r7, #0x18
	ldr r0, [r5, r0]
	mov r1, #7
	add r2, r4, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #0xe
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x79
	add r6, r6, #3
	lsl r0, r0, #2
	add r2, r4, #1
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	ldr r0, [r5, r0]
	mov r1, #7
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #0xf
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x79
	add r2, r4, #0
	lsl r0, r0, #2
	add r2, #0x20
	lsl r2, r2, #0x10
	lsl r3, r7, #0x18
	ldr r0, [r5, r0]
	mov r1, #7
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #0xf
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x79
	lsl r0, r0, #2
	add r4, #0x21
	lsl r2, r4, #0x10
	lsl r3, r6, #0x18
	ldr r0, [r5, r0]
	mov r1, #7
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_02221590

	thumb_func_start ov13_02221630
ov13_02221630: ; 0x02221630
	push {r4, r5, r6, lr}
	ldr r6, _02221650 ; =0x00000125
	add r5, r0, #0
	mov r4, #0
_02221638:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov13_02221590
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _02221638
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02221650: .word 0x00000125
	thumb_func_end ov13_02221630

	thumb_func_start ov13_02221654
ov13_02221654: ; 0x02221654
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #9
	bne _022216BE
	bl ov13_02221630
	ldr r1, [r5, #0]
	add r0, r1, #0
	add r0, #0x34
	ldrb r2, [r0]
	cmp r2, #4
	bhs _0222167C
	ldrb r1, [r1, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r1, r5, r0
	lsl r0, r2, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x34]
	b _0222167E
_0222167C:
	ldrh r0, [r1, #0x24]
_0222167E:
	mov r1, #0xa
	bl sub_020790C4
	bl sub_02095734
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	mov r4, #0
	cmp r6, #0
	ble _022216B2
	mov r7, #5
	lsl r7, r7, #6
_0222169C:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl ov13_02221590
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blt _0222169C
_022216B2:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #7
	bl sub_0201C3C0
_022216BE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_02221654

	thumb_func_start ov13_022216C0
ov13_022216C0: ; 0x022216C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov13_02221738
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	mov r2, #0
	bl sub_02019F04
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	mov r2, #0
	bl sub_02019F04
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02224B7C
	add r0, r5, #0
	bl ov13_02221BB0
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02221AC4
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02221BF8
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_022214E0
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02221654
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_0222563C
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_022260EC
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02226444
	ldr r0, _02221734 ; =0x0000207A
	strb r4, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_02221734: .word 0x0000207A
	thumb_func_end ov13_022216C0

	thumb_func_start ov13_02221738
ov13_02221738: ; 0x02221738
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _022217A0 ; =0x02228E50
	add r5, r0, #0
	lsl r0, r1, #3
	mov r4, #0
	add r6, r2, r0
_02221746:
	ldr r2, [r5, #0]
	ldr r1, [r6, #0]
	ldr r2, [r2, #0xc]
	mov r0, #0x48
	bl sub_02006AC0
	add r1, sp, #0xc
	add r7, r0, #0
	bl sub_020A7248
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x79
	lsl r0, r0, #2
	add r1, r4, #6
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	add r2, #0xc
	mov r3, #0
	bl sub_020198C0
	mov r0, #0x79
	lsl r0, r0, #2
	add r1, r4, #6
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add r0, r7, #0
	bl sub_020181C4
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #2
	blo _02221746
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022217A0: .word 0x02228E50
	thumb_func_end ov13_02221738

	thumb_func_start ov13_022217A4
ov13_022217A4: ; 0x022217A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r2, #0x50
	ldrb r1, [r1, #0x11]
	add r3, r5, #4
	mul r2, r1
	add r4, r3, r2
	bl ov13_022219AC
	cmp r0, #1
	bne _02221800
	ldr r0, _02221940 ; =0x00001FA8
	mov r1, #0x50
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	add r4, r0, #0
	ldr r0, [r1, #8]
	ldr r1, [r1, #0x28]
	bl ov16_0223E258
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E120
	add r2, r0, #0
	ldr r0, _02221944 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200BA74
	ldr r1, _02221944 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02221800:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	bne _0222183C
	ldr r0, _02221940 ; =0x00001FA8
	mov r1, #0x4d
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02221944 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02221944 ; =0x00001FAC
	add r2, r6, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222183C:
	ldr r2, [r5, #0]
	ldrb r0, [r2, #0x11]
	add r0, r2, r0
	add r0, #0x2c
	ldrb r1, [r0]
	ldrb r0, [r2, #0x14]
	cmp r0, r1
	beq _02221852
	ldrb r0, [r2, #0x15]
	cmp r0, r1
	bne _02221888
_02221852:
	ldr r0, _02221940 ; =0x00001FA8
	mov r1, #0x4c
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02221944 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02221944 ; =0x00001FAC
	add r2, r6, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02221888:
	add r0, r5, #0
	bl ov13_0222194C
	cmp r0, #1
	bne _022218A4
	ldr r2, _02221940 ; =0x00001FA8
	mov r1, #0x4f
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022218A4:
	ldr r2, [r5, #0]
	ldrb r1, [r2, #0x12]
	cmp r1, #6
	beq _022218F4
	ldrb r4, [r2, #0x11]
	add r0, r2, r4
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r1, r0
	bne _022218F4
	ldr r0, _02221940 ; =0x00001FA8
	mov r1, #0x5d
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x50
	mul r0, r4
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02221944 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02221944 ; =0x00001FAC
	add r2, r6, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022218F4:
	ldrh r0, [r2, #0x24]
	cmp r0, #0
	beq _0222193C
	ldr r1, _02221948 ; =0x00002076
	mov r0, #0x50
	ldrb r2, [r5, r1]
	sub r1, #0xce
	add r4, r5, #4
	add r6, r2, #0
	mul r6, r0
	ldr r0, [r5, r1]
	mov r1, #0x4e
	bl sub_0200B1EC
	add r7, r0, #0
	ldr r0, [r4, r6]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02221944 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02221944 ; =0x00001FAC
	add r2, r7, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222193C:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221940: .word 0x00001FA8
_02221944: .word 0x00001FAC
_02221948: .word 0x00002076
	thumb_func_end ov13_022217A4

	thumb_func_start ov13_0222194C
ov13_0222194C: ; 0x0222194C
	ldr r1, [r0, #0]
	ldrb r2, [r1, #0x11]
	mov r1, #0x50
	mul r1, r2
	add r0, r0, r1
	ldrb r0, [r0, #0x1b]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _02221962
	mov r0, #1
	b _02221964
_02221962:
	mov r0, #0
_02221964:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
	thumb_func_end ov13_0222194C

	thumb_func_start ov13_0222196C
ov13_0222196C: ; 0x0222196C
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl ov16_0223DF0C
	cmp r0, #0x4a
	beq _02221988
	cmp r0, #0x4b
	beq _02221988
	mov r1, #0x12
	tst r0, r1
	beq _02221988
	mov r0, #1
	pop {r3, pc}
_02221988:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov13_0222196C

	thumb_func_start ov13_0222198C
ov13_0222198C: ; 0x0222198C
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl ov16_0223DF0C
	cmp r0, #0x4a
	beq _022219A8
	cmp r0, #0x4b
	beq _022219A8
	mov r1, #8
	tst r0, r1
	beq _022219A8
	mov r0, #1
	pop {r3, pc}
_022219A8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov13_0222198C

	thumb_func_start ov13_022219AC
ov13_022219AC: ; 0x022219AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov13_0222198C
	cmp r0, #1
	bne _022219D4
	ldr r0, _022219D8 ; =0x0000208F
	ldrb r0, [r5, r0]
	cmp r0, #2
	bne _022219CC
	mov r0, #1
	add r1, r4, #0
	tst r1, r0
	beq _022219D4
	pop {r3, r4, r5, pc}
_022219CC:
	mov r0, #1
	add r1, r4, #0
	tst r1, r0
	beq _022219D6
_022219D4:
	mov r0, #0
_022219D6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022219D8: .word 0x0000208F
	thumb_func_end ov13_022219AC

	thumb_func_start ov13_022219DC
ov13_022219DC: ; 0x022219DC
	ldr r2, [r0, #0]
	add r1, r2, #0
	add r1, #0x34
	ldrb r3, [r1]
	cmp r3, #4
	bne _022219EC
	ldrh r0, [r2, #0x24]
	b _022219FA
_022219EC:
	ldrb r2, [r2, #0x11]
	mov r1, #0x50
	mul r1, r2
	add r1, r0, r1
	lsl r0, r3, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x34]
_022219FA:
	ldr r3, _02221A00 ; =sub_0207D28C
	bx r3
	nop
_02221A00: .word sub_0207D28C
	thumb_func_end ov13_022219DC

	thumb_func_start ov13_02221A04
ov13_02221A04: ; 0x02221A04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02221A34 ; =0x00002020
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3F4
	ldr r0, _02221A38 ; =0x00002070
	ldr r0, [r4, r0]
	add r0, #0xa0
	bl sub_0201AD10
	ldr r0, _02221A38 ; =0x00002070
	ldr r0, [r4, r0]
	add r0, #0x60
	bl sub_0201AD10
	ldr r0, _02221A38 ; =0x00002070
	ldr r0, [r4, r0]
	add r0, #0x70
	bl sub_0201AD10
	pop {r4, pc}
	nop
_02221A34: .word 0x00002020
_02221A38: .word 0x00002070
	thumb_func_end ov13_02221A04

	thumb_func_start ov13_02221A3C
ov13_02221A3C: ; 0x02221A3C
	push {r4, lr}
	add r4, r0, #0
	bl ov13_02221630
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #7
	bl sub_0201C3C0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02221A3C

	thumb_func_start ov13_02221A54
ov13_02221A54: ; 0x02221A54
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0x41
	beq _02221A78
	cmp r4, #0x43
	beq _02221A78
	cmp r4, #0x42
	beq _02221A78
	bl ov16_0223E1AC
	add r1, r4, #0
	mov r2, #1
	add r3, r7, #0
	bl sub_0207D60C
_02221A78:
	add r0, r5, #0
	bl ov16_0223E1B0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0207DA1C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_02221A54

	thumb_func_start ov13_02221A88
ov13_02221A88: ; 0x02221A88
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02221AB8 ; =0x00002050
	ldr r4, _02221ABC ; =0x02228EA0
	mov r6, #0
	add r5, r7, r0
_02221A94:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #2
	blo _02221A94
	ldr r1, _02221AC0 ; =0x0000207A
	add r0, r7, #0
	ldrb r1, [r7, r1]
	bl ov13_02221AC4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221AB8: .word 0x00002050
_02221ABC: .word 0x02228EA0
_02221AC0: .word 0x0000207A
	thumb_func_end ov13_02221A88

	thumb_func_start ov13_02221AC4
ov13_02221AC4: ; 0x02221AC4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r1, #9
	bhi _02221B44
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02221AD8: ; jump table
	.short _02221AEC - _02221AD8 - 2 ; case 0
	.short _02221AF6 - _02221AD8 - 2 ; case 1
	.short _02221B00 - _02221AD8 - 2 ; case 2
	.short _02221B0A - _02221AD8 - 2 ; case 3
	.short _02221B14 - _02221AD8 - 2 ; case 4
	.short _02221B1E - _02221AD8 - 2 ; case 5
	.short _02221B28 - _02221AD8 - 2 ; case 6
	.short _02221B32 - _02221AD8 - 2 ; case 7
	.short _02221B28 - _02221AD8 - 2 ; case 8
	.short _02221B3C - _02221AD8 - 2 ; case 9
_02221AEC:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #6
	ldr r6, _02221B88 ; =0x02228F54
	strb r1, [r4, r0]
	b _02221B44
_02221AF6:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #4
	ldr r6, _02221B8C ; =0x02228EDC
	strb r1, [r4, r0]
	b _02221B44
_02221B00:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #0x23
	ldr r6, _02221B90 ; =0x022290FC
	strb r1, [r4, r0]
	b _02221B44
_02221B0A:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #0xb
	ldr r6, _02221B94 ; =0x02228FBC
	strb r1, [r4, r0]
	b _02221B44
_02221B14:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #0x11
	ldr r6, _02221B98 ; =0x02229074
	strb r1, [r4, r0]
	b _02221B44
_02221B1E:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #5
	ldr r6, _02221B9C ; =0x02228EFC
	strb r1, [r4, r0]
	b _02221B44
_02221B28:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #6
	ldr r6, _02221BA0 ; =0x02228F24
	strb r1, [r4, r0]
	b _02221B44
_02221B32:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #0xc
	ldr r6, _02221BA4 ; =0x02229014
	strb r1, [r4, r0]
	b _02221B44
_02221B3C:
	ldr r0, _02221B84 ; =0x00002074
	mov r1, #7
	ldr r6, _02221BA8 ; =0x02228F84
	strb r1, [r4, r0]
_02221B44:
	ldr r1, _02221B84 ; =0x00002074
	ldr r0, [r4, #0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0xc]
	bl sub_0201A778
	ldr r1, _02221BAC ; =0x00002070
	mov r5, #0
	str r0, [r4, r1]
	add r0, r1, #4
	ldrb r0, [r4, r0]
	cmp r0, #0
	bls _02221B82
	add r7, r1, #4
_02221B60:
	ldr r1, _02221BAC ; =0x00002070
	mov r0, #0x79
	ldr r2, [r4, r1]
	lsl r0, r0, #2
	lsl r1, r5, #4
	add r1, r2, r1
	lsl r2, r5, #3
	ldr r0, [r4, r0]
	add r2, r6, r2
	bl sub_0201A8D4
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldrb r0, [r4, r7]
	cmp r5, r0
	blo _02221B60
_02221B82:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221B84: .word 0x00002074
_02221B88: .word 0x02228F54
_02221B8C: .word 0x02228EDC
_02221B90: .word 0x022290FC
_02221B94: .word 0x02228FBC
_02221B98: .word 0x02229074
_02221B9C: .word 0x02228EFC
_02221BA0: .word 0x02228F24
_02221BA4: .word 0x02229014
_02221BA8: .word 0x02228F84
_02221BAC: .word 0x00002070
	thumb_func_end ov13_02221AC4

	thumb_func_start ov13_02221BB0
ov13_02221BB0: ; 0x02221BB0
	ldr r1, _02221BC0 ; =0x00002070
	add r2, r0, #0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r3, _02221BC4 ; =sub_0201A928
	ldrb r1, [r2, r1]
	bx r3
	nop
_02221BC0: .word 0x00002070
_02221BC4: .word sub_0201A928
	thumb_func_end ov13_02221BB0

	thumb_func_start ov13_02221BC8
ov13_02221BC8: ; 0x02221BC8
	push {r3, r4, r5, lr}
	ldr r1, _02221BF0 ; =0x00002070
	add r5, r0, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldrb r1, [r5, r1]
	bl sub_0201A928
	ldr r0, _02221BF4 ; =0x00002050
	mov r4, #0
	add r5, r5, r0
_02221BDE:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blo _02221BDE
	pop {r3, r4, r5, pc}
	nop
_02221BF0: .word 0x00002070
_02221BF4: .word 0x00002050
	thumb_func_end ov13_02221BC8

	thumb_func_start ov13_02221BF8
ov13_02221BF8: ; 0x02221BF8
	push {r3, lr}
	cmp r1, #9
	bhi _02221C52
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02221C0A: ; jump table
	.short _02221C1E - _02221C0A - 2 ; case 0
	.short _02221C24 - _02221C0A - 2 ; case 1
	.short _02221C2A - _02221C0A - 2 ; case 2
	.short _02221C30 - _02221C0A - 2 ; case 3
	.short _02221C36 - _02221C0A - 2 ; case 4
	.short _02221C3C - _02221C0A - 2 ; case 5
	.short _02221C42 - _02221C0A - 2 ; case 6
	.short _02221C48 - _02221C0A - 2 ; case 7
	.short _02221C42 - _02221C0A - 2 ; case 8
	.short _02221C4E - _02221C0A - 2 ; case 9
_02221C1E:
	bl ov13_0222339C
	pop {r3, pc}
_02221C24:
	bl ov13_022234C8
	pop {r3, pc}
_02221C2A:
	bl ov13_022237F8
	pop {r3, pc}
_02221C30:
	bl ov13_022236B8
	pop {r3, pc}
_02221C36:
	bl ov13_02223A10
	pop {r3, pc}
_02221C3C:
	bl ov13_02223E68
	pop {r3, pc}
_02221C42:
	bl ov13_02223B74
	pop {r3, pc}
_02221C48:
	bl ov13_02223C9C
	pop {r3, pc}
_02221C4E:
	bl ov13_02223F7C
_02221C52:
	pop {r3, pc}
	thumb_func_end ov13_02221BF8

	thumb_func_start ov13_02221C54
ov13_02221C54: ; 0x02221C54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	ldr r0, _02221DE4 ; =0x00002070
	str r3, [sp, #0x14]
	ldr r5, [r6, r0]
	lsl r4, r1, #4
	ldr r0, [sp, #0x14]
	mov r1, #0x50
	mul r1, r0
	add r7, r6, #4
	add r0, r7, r1
	str r1, [sp, #0x24]
	ldr r1, [r6, #0]
	str r0, [sp, #0x20]
	ldr r1, [r1, #0xc]
	mov r0, #0xc
	str r2, [sp, #0x10]
	bl sub_02023790
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, _02221DE8 ; =0x00001FA8
	lsl r2, r1, #2
	ldr r1, _02221DEC ; =0x02228EC4
	ldr r0, [r6, r0]
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	ldr r0, [r7, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02221DF0 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_0200B5CC
	ldr r0, _02221DF0 ; =0x00001FAC
	ldr r1, [sp, #0x1c]
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x18]
	bl sub_0200C388
	ldr r0, [sp, #0x10]
	add r3, sp, #0x38
	cmp r0, #0
	bne _02221CD6
	ldrb r7, [r3, #0x14]
	mov r0, #0xff
	ldr r1, [sp, #0x10]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r0, _02221DF4 ; =0x000F0E00
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r3, #0x10]
	add r0, r5, r4
	bl sub_0201D78C
	b _02221CF2
_02221CD6:
	ldrb r7, [r3, #0x14]
	mov r0, #0xff
	ldr r1, [sp, #0x10]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r0, _02221DF8 ; =0x00070809
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r3, #0x10]
	add r0, r5, r4
	bl sub_0201D78C
_02221CF2:
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, #0x16]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _02221DD8
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, #0x17]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	bne _02221DD8
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bne _02221D76
	ldr r0, _02221DE8 ; =0x00001FA8
	mov r1, #0x10
	ldr r0, [r6, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, r4
	bl sub_0201C294
	str r0, [sp, #0x28]
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	ldr r1, [sp, #0x28]
	str r7, [sp]
	lsl r1, r1, #3
	sub r3, r1, r0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02221D5A
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02221DFC ; =0x00070800
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	b _02221D6E
_02221D5A:
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02221E00 ; =0x000A0B00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_02221D6E:
	add r0, r6, #0
	bl sub_020237BC
	b _02221DD8
_02221D76:
	cmp r0, #1
	bne _02221DD8
	ldr r0, _02221DE8 ; =0x00001FA8
	mov r1, #0x11
	ldr r0, [r6, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, r4
	bl sub_0201C294
	str r0, [sp, #0x2c]
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	ldr r1, [sp, #0x2c]
	str r7, [sp]
	lsl r1, r1, #3
	sub r3, r1, r0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02221DBE
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	mov r1, #0
	add r0, r5, r4
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	b _02221DD2
_02221DBE:
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02221E04 ; =0x000C0D00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_02221DD2:
	add r0, r6, #0
	bl sub_020237BC
_02221DD8:
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02221DE4: .word 0x00002070
_02221DE8: .word 0x00001FA8
_02221DEC: .word 0x02228EC4
_02221DF0: .word 0x00001FAC
_02221DF4: .word 0x000F0E00
_02221DF8: .word 0x00070809
_02221DFC: .word 0x00070800
_02221E00: .word 0x000A0B00
_02221E04: .word 0x000C0D00
	thumb_func_end ov13_02221C54

	thumb_func_start ov13_02221E08
ov13_02221E08: ; 0x02221E08
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02221E4C ; =0x00002070
	lsl r4, r1, #4
	ldr r1, [r5, r0]
	add r3, #8
	add r1, r1, r4
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	mov r3, #0x50
	mul r3, r2
	str r1, [sp, #0xc]
	add r2, r5, r3
	ldrb r2, [r2, #0x1a]
	sub r0, #0xcc
	ldr r0, [r5, r0]
	lsl r2, r2, #0x19
	mov r1, #1
	lsr r2, r2, #0x19
	mov r3, #3
	bl sub_0200C648
	ldr r0, _02221E4C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02221E4C: .word 0x00002070
	thumb_func_end ov13_02221E08

	thumb_func_start ov13_02221E50
ov13_02221E50: ; 0x02221E50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x50
	add r7, r3, #0
	mul r0, r2
	add r3, r5, #4
	add r0, r3, r0
	str r0, [sp, #0xc]
	add r0, sp, #0x18
	ldrb r6, [r0, #0x10]
	ldr r0, _02221EC8 ; =0x00002070
	lsl r4, r1, #4
	ldr r1, [r5, r0]
	sub r0, #0xcc
	add r1, r1, r4
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [r5, r0]
	ldrh r1, [r1, #0x10]
	mov r2, #3
	mov r3, #1
	bl sub_0200C5BC
	add r3, r7, #0
	ldr r2, _02221ECC ; =0x00001FA4
	str r6, [sp]
	ldr r0, [r5, r2]
	add r2, #0xcc
	ldr r2, [r5, r2]
	mov r1, #0
	add r2, r2, r4
	add r3, #0x18
	bl sub_0200C578
	ldr r0, _02221EC8 ; =0x00002070
	add r7, #0x20
	ldr r1, [r5, r0]
	sub r0, #0xcc
	add r1, r1, r4
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [r5, r0]
	ldrh r1, [r1, #0x12]
	mov r2, #3
	mov r3, #0
	bl sub_0200C5BC
	ldr r0, _02221EC8 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02221EC8: .word 0x00002070
_02221ECC: .word 0x00001FA4
	thumb_func_end ov13_02221E50

	thumb_func_start ov13_02221ED0
ov13_02221ED0: ; 0x02221ED0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x50
	str r1, [sp, #8]
	mul r0, r2
	add r1, r4, #4
	str r3, [sp, #0xc]
	add r5, r1, r0
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0x12]
	mov r2, #0x30
	mov r7, #1
	bl sub_0208C0BC
	str r0, [sp, #0x14]
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0x12]
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _02221F2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02221F0A: ; jump table
	.short _02221F14 - _02221F0A - 2 ; case 0
	.short _02221F2C - _02221F0A - 2 ; case 1
	.short _02221F28 - _02221F0A - 2 ; case 2
	.short _02221F26 - _02221F0A - 2 ; case 3
	.short _02221F26 - _02221F0A - 2 ; case 4
_02221F14:
	ldr r0, _02221FA4 ; =0x00002070
	ldr r1, [r4, r0]
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02221F26:
	b _02221F2E
_02221F28:
	mov r7, #3
	b _02221F2E
_02221F2C:
	mov r7, #5
_02221F2E:
	add r0, sp, #0x20
	ldrb r6, [r0, #0x10]
	add r0, r7, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	lsl r5, r0, #4
	ldr r0, [sp, #0x14]
	add r3, r6, #1
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02221FA4 ; =0x00002070
	lsl r1, r1, #0x18
	ldr r0, [r4, r0]
	lsl r3, r3, #0x10
	ldr r2, [sp, #0xc]
	add r0, r0, r5
	lsr r1, r1, #0x18
	lsr r3, r3, #0x10
	bl sub_0201AE78
	ldr r0, [sp, #0x14]
	add r3, r6, #2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02221FA4 ; =0x00002070
	lsl r3, r3, #0x10
	ldr r0, [r4, r0]
	ldr r2, [sp, #0xc]
	add r0, r0, r5
	add r1, r7, #0
	lsr r3, r3, #0x10
	bl sub_0201AE78
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02221FA4 ; =0x00002070
	add r3, r6, #4
	ldr r0, [r4, r0]
	lsl r1, r1, #0x18
	lsl r3, r3, #0x10
	ldr r2, [sp, #0xc]
	add r0, r0, r5
	lsr r1, r1, #0x18
	lsr r3, r3, #0x10
	bl sub_0201AE78
	ldr r0, _02221FA4 ; =0x00002070
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221FA4: .word 0x00002070
	thumb_func_end ov13_02221ED0

	thumb_func_start ov13_02221FA8
ov13_02221FA8: ; 0x02221FA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	mov r0, #0x10
	ldr r1, [r1, #0xc]
	add r7, r2, #0
	bl sub_02023790
	add r6, r0, #0
	ldr r0, _02222020 ; =0x00001FA8
	mov r1, #8
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r2, #0x50
	mul r2, r7
	str r0, [sp, #0x10]
	ldr r0, _02222024 ; =0x00001FAC
	add r2, r5, r2
	ldrh r2, [r2, #0x1c]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B6A0
	ldr r0, _02222024 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222028 ; =0x000F0E00
	lsl r4, r4, #4
	str r0, [sp, #8]
	ldr r0, _0222202C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r2, r6, #0
	add r0, r0, r4
	add r3, r1, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0222202C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222020: .word 0x00001FA8
_02222024: .word 0x00001FAC
_02222028: .word 0x000F0E00
_0222202C: .word 0x00002070
	thumb_func_end ov13_02221FA8

	thumb_func_start ov13_02222030
ov13_02222030: ; 0x02222030
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x50
	add r7, r1, #0
	add r1, r4, #4
	mul r0, r2
	add r5, r1, r0
	ldrh r0, [r5, #0x1a]
	cmp r0, #0
	bne _02222054
	ldr r0, _022220BC ; =0x00001FA8
	mov r1, #0x14
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	b _0222208A
_02222054:
	ldr r1, [r4, #0]
	mov r0, #0x12
	ldr r1, [r1, #0xc]
	bl sub_02023790
	add r6, r0, #0
	ldr r0, _022220BC ; =0x00001FA8
	mov r1, #9
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	ldr r0, _022220C0 ; =0x00001FAC
	ldrh r2, [r5, #0x1a]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B70C
	ldr r0, _022220C0 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0200C388
	ldr r0, [sp, #0x10]
	bl sub_020237BC
_0222208A:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022220C4 ; =0x000F0E00
	lsl r5, r7, #4
	str r0, [sp, #8]
	ldr r0, _022220C8 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r4, r0]
	add r2, r6, #0
	add r0, r0, r5
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _022220C8 ; =0x00002070
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022220BC: .word 0x00001FA8
_022220C0: .word 0x00001FAC
_022220C4: .word 0x000F0E00
_022220C8: .word 0x00002070
	thumb_func_end ov13_02222030

	thumb_func_start ov13_022220CC
ov13_022220CC: ; 0x022220CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x10]
	ldr r1, [r5, #0]
	ldr r0, _02222164 ; =0x00002070
	ldr r1, [r1, #0xc]
	ldr r4, [r5, r0]
	mov r0, #0x10
	str r3, [sp, #0x14]
	lsl r6, r2, #4
	bl sub_02023790
	add r7, r0, #0
	ldr r0, _02222168 ; =0x00001FA8
	ldr r1, [sp, #0x14]
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	ldr r0, _0222216C ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B630
	ldr r0, _0222216C ; =0x00001FAC
	ldr r2, [sp, #0x18]
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0200C388
	add r0, sp, #0x20
	ldrh r0, [r0, #0x10]
	cmp r0, #2
	bne _02222130
	add r0, r4, r6
	bl sub_0201C294
	add r5, r0, #0
	add r0, sp, #0x20
	ldrh r0, [r0, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl sub_02002D7C
	lsl r1, r5, #3
	sub r0, r1, r0
	lsr r3, r0, #1
	b _02222132
_02222130:
	mov r3, #0
_02222132:
	add r1, sp, #0x20
	ldrh r0, [r1, #0x14]
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r1, [r1, #0x10]
	add r0, r4, r6
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222164: .word 0x00002070
_02222168: .word 0x00001FA8
_0222216C: .word 0x00001FAC
	thumb_func_end ov13_022220CC

	thumb_func_start ov13_02222170
ov13_02222170: ; 0x02222170
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _022221BC ; =0x00001FA8
	str r2, [sp, #0x10]
	add r5, r1, #0
	ldr r0, [r4, r0]
	add r6, r3, #0
	mov r1, #0xe
	bl sub_0200B1EC
	add r7, r0, #0
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022221C0 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _022221C4 ; =0x00002070
	lsl r5, r5, #4
	ldr r0, [r4, r0]
	ldr r3, [sp, #0x10]
	add r0, r0, r5
	add r2, r7, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, _022221C4 ; =0x00002070
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022221BC: .word 0x00001FA8
_022221C0: .word 0x000F0E00
_022221C4: .word 0x00002070
	thumb_func_end ov13_02222170

	thumb_func_start ov13_022221C8
ov13_022221C8: ; 0x022221C8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _02222220 ; =0x00002050
	add r5, r1, #0
	mov r1, #1
	add r0, r4, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, _02222220 ; =0x00002050
	mov r1, #0xf
	add r0, r4, r0
	bl sub_0201ADA4
	ldr r0, _02222224 ; =0x00001FA8
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222228 ; =0x00010200
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, _02222220 ; =0x00002050
	add r2, r5, #0
	add r0, r4, r0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, _02222220 ; =0x00002050
	add r0, r4, r0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02222220: .word 0x00002050
_02222224: .word 0x00001FA8
_02222228: .word 0x00010200
	thumb_func_end ov13_022221C8

	thumb_func_start ov13_0222222C
ov13_0222222C: ; 0x0222222C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r3, _02222288 ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r0, r3]
	sub r3, #0xc8
	ldr r0, [r0, r3]
	add r1, r2, #0
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #2
	add r1, r7, #0
	mov r2, #0
	bl sub_02002D7C
	add r6, r0, #0
	add r0, r5, r4
	bl sub_0201C294
	add r3, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222228C ; =0x00070809
	lsl r3, r3, #3
	str r0, [sp, #8]
	mov r0, #0
	sub r3, r3, r6
	str r0, [sp, #0xc]
	add r0, r5, r4
	mov r1, #2
	add r2, r7, #0
	lsr r3, r3, #1
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222288: .word 0x00002070
_0222228C: .word 0x00070809
	thumb_func_end ov13_0222222C

	thumb_func_start ov13_02222290
ov13_02222290: ; 0x02222290
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x50
	mul r0, r1
	add r2, r5, #4
	add r4, r2, r0
	ldr r1, _0222244C ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r5, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0x17
	bl sub_0200B1EC
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r2, _02222450 ; =0x000F0E00
	add r0, #0x31
	str r2, [sp, #8]
	ldr r2, _02222454 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r3, r1, #0
	add r0, r2, r0
	add r2, r7, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, _02222458 ; =0x00001FA8
	mov r1, #0x18
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x18]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	str r0, [sp, #0x1c]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r2, [r4, #0x16]
	ldr r0, _0222245C ; =0x00001FAC
	mov r3, #3
	lsl r2, r2, #0x19
	ldr r0, [r5, r0]
	lsr r2, r2, #0x19
	bl sub_0200B60C
	ldr r0, _0222245C ; =0x00001FAC
	ldr r1, [sp, #0x1c]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x18]
	bl sub_0200C388
	mov r1, #0
	add r0, r6, #0
	add r0, #0xb
	lsl r7, r0, #4
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222450 ; =0x000F0E00
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, _02222454 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, r0, r7
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, _02222458 ; =0x00001FA8
	mov r1, #0x19
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	str r0, [sp, #0x20]
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r2, _02222450 ; =0x000F0E00
	add r0, #0x41
	str r2, [sp, #8]
	ldr r2, _02222454 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r3, r1, #0
	add r0, r2, r0
	ldr r2, [sp, #0x20]
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, _02222458 ; =0x00001FA8
	mov r1, #0x1a
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x14]
	ldr r1, [r1, #0xc]
	mov r0, #0xe
	bl sub_02023790
	str r0, [sp, #0x10]
	ldrb r0, [r4, #0x16]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	cmp r0, #0x64
	bhs _022223B0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222245C ; =0x00001FAC
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x1c]
	ldr r0, [r5, r0]
	sub r2, r2, r3
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	b _022223C4
_022223B0:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222245C ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	mov r3, #6
	bl sub_0200B60C
_022223C4:
	ldr r0, _0222245C ; =0x00001FAC
	ldr r1, [sp, #0x10]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x14]
	bl sub_0200C388
	ldr r0, _02222454 ; =0x00002070
	add r6, #0xc
	ldr r0, [r5, r0]
	lsl r4, r6, #4
	add r0, r0, r4
	bl sub_0201C294
	add r6, r0, #0
	mov r0, #0
	ldr r1, [sp, #0x10]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r1, r6, #3
	sub r0, r1, r0
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222460 ; =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, _02222454 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, _02222454 ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _02222454 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r7
	bl sub_0201A9A4
	ldr r0, _02222454 ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #5
	lsl r0, r0, #6
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _02222454 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222244C: .word 0x00002075
_02222450: .word 0x000F0E00
_02222454: .word 0x00002070
_02222458: .word 0x00001FA8
_0222245C: .word 0x00001FAC
_02222460: .word 0x00010200
	thumb_func_end ov13_02222290

	thumb_func_start ov13_02222464
ov13_02222464: ; 0x02222464
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r5, r0, #0
	ldr r1, _02222548 ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r5, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0x20
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222254C ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02222550 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, #0xe0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222554 ; =0x00001FA8
	mov r1, #0x21
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	mov r2, #0x50
	add r6, r0, #0
	mul r2, r7
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222558 ; =0x00001FAC
	add r2, r5, r2
	ldrh r2, [r2, #0xa]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222558 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #5
	lsl r4, r0, #4
	ldr r0, _02222550 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222255C ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02222550 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222550 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0xe0
	bl sub_0201A9A4
	ldr r0, _02222550 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02222548: .word 0x00002075
_0222254C: .word 0x000F0E00
_02222550: .word 0x00002070
_02222554: .word 0x00001FA8
_02222558: .word 0x00001FAC
_0222255C: .word 0x00010200
	thumb_func_end ov13_02222464

	thumb_func_start ov13_02222560
ov13_02222560: ; 0x02222560
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r5, r0, #0
	ldr r1, _02222644 ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r5, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0x22
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222648 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0222264C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, #0xf0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222650 ; =0x00001FA8
	mov r1, #0x23
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	mov r2, #0x50
	add r6, r0, #0
	mul r2, r7
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222654 ; =0x00001FAC
	add r2, r5, r2
	ldrh r2, [r2, #0xc]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222654 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #6
	lsl r4, r0, #4
	ldr r0, _0222264C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222658 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0222264C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0222264C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0xf0
	bl sub_0201A9A4
	ldr r0, _0222264C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02222644: .word 0x00002075
_02222648: .word 0x000F0E00
_0222264C: .word 0x00002070
_02222650: .word 0x00001FA8
_02222654: .word 0x00001FAC
_02222658: .word 0x00010200
	thumb_func_end ov13_02222560

	thumb_func_start ov13_0222265C
ov13_0222265C: ; 0x0222265C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r5, r0, #0
	ldr r1, _02222744 ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r5, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0x28
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02222748 ; =0x000F0E00
	add r2, r2, #1
	str r0, [sp, #8]
	ldr r0, _0222274C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, r0, r2
	add r2, r6, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222750 ; =0x00001FA8
	mov r1, #0x29
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	mov r2, #0x50
	add r6, r0, #0
	mul r2, r7
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222754 ; =0x00001FAC
	add r2, r5, r2
	ldrh r2, [r2, #0xe]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222754 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #7
	lsl r4, r0, #4
	ldr r0, _0222274C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222758 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0222274C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0222274C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _0222274C ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222744: .word 0x00002075
_02222748: .word 0x000F0E00
_0222274C: .word 0x00002070
_02222750: .word 0x00001FA8
_02222754: .word 0x00001FAC
_02222758: .word 0x00010200
	thumb_func_end ov13_0222265C

	thumb_func_start ov13_0222275C
ov13_0222275C: ; 0x0222275C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r4, r0, #0
	ldr r1, _02222844 ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r4, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, r1]
	mov r1, #0x24
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r2, _02222848 ; =0x000F0E00
	add r0, #0x11
	str r2, [sp, #8]
	ldr r2, _0222284C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r3, r1, #0
	add r0, r2, r0
	add r2, r6, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222850 ; =0x00001FA8
	mov r1, #0x25
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	ldr r1, [r4, #0]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	mov r2, #0x50
	add r6, r0, #0
	mul r2, r7
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222854 ; =0x00001FAC
	add r2, r4, r2
	ldrh r2, [r2, #0x10]
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222854 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, _0222284C ; =0x00002070
	add r5, #8
	ldr r0, [r4, r0]
	lsl r5, r5, #4
	add r0, r0, r5
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222858 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0222284C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0222284C ; =0x00002070
	ldr r1, [r4, r0]
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _0222284C ; =0x00002070
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222844: .word 0x00002075
_02222848: .word 0x000F0E00
_0222284C: .word 0x00002070
_02222850: .word 0x00001FA8
_02222854: .word 0x00001FAC
_02222858: .word 0x00010200
	thumb_func_end ov13_0222275C

	thumb_func_start ov13_0222285C
ov13_0222285C: ; 0x0222285C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r4, r0, #0
	ldr r1, _02222944 ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r4, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, r1]
	mov r1, #0x26
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r2, _02222948 ; =0x000F0E00
	add r0, #0x21
	str r2, [sp, #8]
	ldr r2, _0222294C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r3, r1, #0
	add r0, r2, r0
	add r2, r6, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222950 ; =0x00001FA8
	mov r1, #0x27
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	ldr r1, [r4, #0]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	mov r2, #0x50
	add r6, r0, #0
	mul r2, r7
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222954 ; =0x00001FAC
	add r2, r4, r2
	ldrh r2, [r2, #0x12]
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222954 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, _0222294C ; =0x00002070
	add r5, #9
	ldr r0, [r4, r0]
	lsl r5, r5, #4
	add r0, r0, r5
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222958 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0222294C ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0222294C ; =0x00002070
	ldr r1, [r4, r0]
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _0222294C ; =0x00002070
	ldr r0, [r4, r0]
	add r0, r0, r5
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222944: .word 0x00002075
_02222948: .word 0x000F0E00
_0222294C: .word 0x00002070
_02222950: .word 0x00001FA8
_02222954: .word 0x00001FAC
_02222958: .word 0x00010200
	thumb_func_end ov13_0222285C

	thumb_func_start ov13_0222295C
ov13_0222295C: ; 0x0222295C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #0x50
	mul r0, r1
	add r2, r5, #4
	add r7, r2, r0
	ldr r1, _02222ADC ; =0x00002075
	mov r0, #0x16
	ldrb r2, [r5, r1]
	sub r1, #0xcd
	mul r0, r2
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0x1c
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222AE0 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02222AE4 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, #0xd0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02222AE8 ; =0x00001FA8
	mov r1, #0x1f
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	mov r0, #0
	ldr r1, [sp, #0x10]
	add r2, r0, #0
	bl sub_02002D7C
	str r0, [sp, #0x14]
	ldr r0, _02222AE4 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201C294
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	sub r0, r1, r0
	lsl r0, r0, #0xf
	lsr r6, r0, #0x10
	add r0, r4, #4
	mov r1, #0
	lsl r4, r0, #4
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222AEC ; =0x00010200
	add r3, r6, #0
	str r0, [sp, #8]
	ldr r0, _02222AE4 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, _02222AE8 ; =0x00001FA8
	mov r1, #0x1d
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x18]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	str r0, [sp, #0x1c]
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222AF0 ; =0x00001FAC
	ldrh r2, [r7, #0x10]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222AF0 ; =0x00001FAC
	ldr r1, [sp, #0x1c]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x18]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [sp, #0x1c]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222AEC ; =0x00010200
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, _02222AE4 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	sub r3, r6, r3
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, _02222AE8 ; =0x00001FA8
	mov r1, #0x1e
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x20]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	str r0, [sp, #0x24]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222AF0 ; =0x00001FAC
	ldrh r2, [r7, #0x12]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222AF0 ; =0x00001FAC
	ldr r1, [sp, #0x24]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x20]
	bl sub_0200C388
	mov r1, #0
	ldr r3, [sp, #0x14]
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222AEC ; =0x00010200
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, _02222AE4 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r6, r3
	add r0, r0, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	ldr r0, _02222AE4 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0xd0
	bl sub_0201A9A4
	ldr r0, _02222AE4 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02222ADC: .word 0x00002075
_02222AE0: .word 0x000F0E00
_02222AE4: .word 0x00002070
_02222AE8: .word 0x00001FA8
_02222AEC: .word 0x00010200
_02222AF0: .word 0x00001FAC
	thumb_func_end ov13_0222295C

	thumb_func_start ov13_02222AF4
ov13_02222AF4: ; 0x02222AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02222B60 ; =0x00002075
	add r6, r1, #0
	ldrb r1, [r5, r0]
	ldr r3, [r5, #0]
	mov r2, #0x99
	add r4, r1, #0
	mov r0, #0x16
	mul r4, r0
	ldr r3, [r3, #0xc]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	mov r1, #0x50
	mul r1, r6
	add r1, r5, r1
	ldrh r1, [r1, #0x1c]
	add r7, r0, #0
	bl sub_0200B1EC
	add r6, r0, #0
	mov r1, #0
	add r0, r4, #2
	lsl r4, r0, #4
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222B64 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02222B68 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r3, r1, #0
	add r0, r0, r4
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, _02222B68 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02222B60: .word 0x00002075
_02222B64: .word 0x00010200
_02222B68: .word 0x00002070
	thumb_func_end ov13_02222AF4

	thumb_func_start ov13_02222B6C
ov13_02222B6C: ; 0x02222B6C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r2, _02222BAC ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r0, r2]
	sub r2, #0xc8
	ldr r0, [r0, r2]
	mov r1, #0x33
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222BB0 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02222BAC: .word 0x00002070
_02222BB0: .word 0x000F0E00
	thumb_func_end ov13_02222B6C

	thumb_func_start ov13_02222BB4
ov13_02222BB4: ; 0x02222BB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r2, [sp, #0x10]
	add r5, r0, #0
	ldr r2, _02222C90 ; =0x00002070
	ldr r0, [sp, #0x10]
	lsl r6, r1, #4
	ldr r4, [r5, r2]
	cmp r0, #0
	bne _02222C0E
	sub r2, #0xc8
	ldr r0, [r5, r2]
	mov r1, #0x32
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, r6
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r5
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222C94 ; =0x00010200
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	b _02222C84
_02222C0E:
	sub r2, #0xc8
	ldr r0, [r5, r2]
	mov r1, #0x34
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x14]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222C98 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222C98 ; =0x00001FAC
	ldr r2, [sp, #0x14]
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, r6
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r5
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222C94 ; =0x00010200
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
_02222C84:
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222C90: .word 0x00002070
_02222C94: .word 0x00010200
_02222C98: .word 0x00001FAC
	thumb_func_end ov13_02222BB4

	thumb_func_start ov13_02222C9C
ov13_02222C9C: ; 0x02222C9C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r2, _02222CDC ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r0, r2]
	sub r2, #0xc8
	ldr r0, [r0, r2]
	mov r1, #0x30
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222CE0 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02222CDC: .word 0x00002070
_02222CE0: .word 0x000F0E00
	thumb_func_end ov13_02222C9C

	thumb_func_start ov13_02222CE4
ov13_02222CE4: ; 0x02222CE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r2, [sp, #0x10]
	add r5, r0, #0
	ldr r2, _02222DC0 ; =0x00002070
	ldr r0, [sp, #0x10]
	lsl r6, r1, #4
	ldr r4, [r5, r2]
	cmp r0, #1
	bhi _02222D3E
	sub r2, #0xc8
	ldr r0, [r5, r2]
	mov r1, #0x32
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, r6
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r5
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222DC4 ; =0x00010200
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	b _02222DB4
_02222D3E:
	sub r2, #0xc8
	ldr r0, [r5, r2]
	mov r1, #0x31
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x14]
	ldr r1, [r1, #0xc]
	mov r0, #8
	bl sub_02023790
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02222DC8 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _02222DC8 ; =0x00001FAC
	ldr r2, [sp, #0x14]
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, r6
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r5
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222DC4 ; =0x00010200
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
_02222DB4:
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222DC0: .word 0x00002070
_02222DC4: .word 0x00010200
_02222DC8: .word 0x00001FAC
	thumb_func_end ov13_02222CE4

	thumb_func_start ov13_02222DCC
ov13_02222DCC: ; 0x02222DCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r3, r0, #0
	ldr r0, _02222E20 ; =0x00002070
	add r6, r2, #0
	ldr r5, [r3, r0]
	ldr r3, [r3, #0]
	lsl r4, r1, #4
	ldr r2, _02222E24 ; =0x00000286
	ldr r3, [r3, #0xc]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222E28 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02222E20: .word 0x00002070
_02222E24: .word 0x00000286
_02222E28: .word 0x00010200
	thumb_func_end ov13_02222DCC

	thumb_func_start ov13_02222E2C
ov13_02222E2C: ; 0x02222E2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, _02222E8C ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r6, r0]
	add r0, r2, #0
	mov r1, #0xa
	bl sub_020790C4
	bl sub_0209577C
	ldr r3, [r6, #0]
	add r7, r0, #0
	ldr r3, [r3, #0xc]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd2
	bl sub_0200B144
	add r1, r7, #0
	str r0, [sp, #0x10]
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222E90 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02222E8C: .word 0x00002070
_02222E90: .word 0x00010200
	thumb_func_end ov13_02222E2C

	thumb_func_start ov13_02222E94
ov13_02222E94: ; 0x02222E94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _02222EF0 ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r0, r2]
	sub r2, #0xc8
	ldr r0, [r0, r2]
	mov r1, #0x35
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, r4
	bl sub_0201C294
	lsl r0, r0, #3
	sub r1, r0, r6
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	mov r1, #0
	lsr r3, r0, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222EF4 ; =0x000F0E00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r5, r4
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02222EF0: .word 0x00002070
_02222EF4: .word 0x000F0E00
	thumb_func_end ov13_02222E94

	thumb_func_start ov13_02222EF8
ov13_02222EF8: ; 0x02222EF8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r3, _02222F6C ; =0x00002070
	lsl r4, r1, #4
	ldr r5, [r0, r3]
	cmp r2, #0
	beq _02222F10
	cmp r2, #1
	beq _02222F1E
	cmp r2, #2
	beq _02222F2C
	b _02222F38
_02222F10:
	sub r3, #0xc8
	ldr r0, [r0, r3]
	mov r1, #0x36
	bl sub_0200B1EC
	add r6, r0, #0
	b _02222F38
_02222F1E:
	sub r3, #0xc8
	ldr r0, [r0, r3]
	mov r1, #0x38
	bl sub_0200B1EC
	add r6, r0, #0
	b _02222F38
_02222F2C:
	sub r3, #0xc8
	ldr r0, [r0, r3]
	mov r1, #0x37
	bl sub_0200B1EC
	add r6, r0, #0
_02222F38:
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	mov r3, #0x38
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02222F70 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02222F6C: .word 0x00002070
_02222F70: .word 0x00010200
	thumb_func_end ov13_02222EF8

	thumb_func_start ov13_02222F74
ov13_02222F74: ; 0x02222F74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _02223098 ; =0x00002070
	lsl r6, r1, #4
	ldr r4, [r5, r0]
	sub r0, #0xc8
	ldr r0, [r5, r0]
	mov r1, #0x2e
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	str r0, [sp, #0x1c]
	add r0, r4, r6
	bl sub_0201C294
	lsl r1, r0, #3
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	sub r0, r1, r0
	lsr r7, r0, #1
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222309C ; =0x000F0E00
	add r3, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, _022230A0 ; =0x00001FA8
	mov r1, #0x2c
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x20]
	ldr r1, [r1, #0xc]
	mov r0, #6
	bl sub_02023790
	mov r1, #0
	str r0, [sp, #0x24]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022230A4 ; =0x00001FAC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _022230A4 ; =0x00001FAC
	ldr r1, [sp, #0x24]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x20]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [sp, #0x24]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222309C ; =0x000F0E00
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	add r0, r4, r6
	sub r3, r7, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	ldr r0, _022230A0 ; =0x00001FA8
	mov r1, #0x2d
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	ldr r1, [r5, #0]
	str r0, [sp, #0x28]
	ldr r1, [r1, #0xc]
	mov r0, #6
	bl sub_02023790
	mov r1, #0
	str r0, [sp, #0x2c]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022230A4 ; =0x00001FAC
	ldr r2, [sp, #0x14]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, _022230A4 ; =0x00001FAC
	ldr r1, [sp, #0x2c]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x28]
	bl sub_0200C388
	mov r1, #0
	ldr r3, [sp, #0x1c]
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222309C ; =0x000F0E00
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	add r0, r4, r6
	add r3, r7, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02223098: .word 0x00002070
_0222309C: .word 0x000F0E00
_022230A0: .word 0x00001FA8
_022230A4: .word 0x00001FAC
	thumb_func_end ov13_02222F74

	thumb_func_start ov13_022230A8
ov13_022230A8: ; 0x022230A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	lsl r4, r1, #4
	ldr r1, [r0, #0]
	ldr r2, _02223110 ; =0x00002070
	add r1, #0x34
	ldrb r1, [r1]
	ldr r5, [r0, r2]
	cmp r1, #4
	bne _022230C8
	sub r2, #0xc8
	ldr r0, [r0, r2]
	mov r1, #0x3b
	bl sub_0200B1EC
	b _022230D2
_022230C8:
	sub r2, #0xc8
	ldr r0, [r0, r2]
	mov r1, #0x3a
	bl sub_0200B1EC
_022230D2:
	add r6, r0, #0
	mov r0, #2
	add r1, r6, #0
	mov r2, #0
	bl sub_02002D7C
	add r7, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02223114 ; =0x00070809
	mov r3, #0x60
	str r0, [sp, #8]
	mov r0, #0
	sub r3, r3, r7
	str r0, [sp, #0xc]
	add r0, r5, r4
	mov r1, #2
	add r2, r6, #0
	lsr r3, r3, #1
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02223110: .word 0x00002070
_02223114: .word 0x00070809
	thumb_func_end ov13_022230A8

	thumb_func_start ov13_02223118
ov13_02223118: ; 0x02223118
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _02223170 ; =0x0000207A
	ldrb r1, [r4, r0]
	cmp r1, #7
	bne _0222312E
	sub r0, #0xa
	ldr r5, [r4, r0]
	add r5, #0x80
	b _02223134
_0222312E:
	sub r0, #0xa
	ldr r5, [r4, r0]
	add r5, #0x50
_02223134:
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223174 ; =0x00001FA8
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02223178 ; =0x00010200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02223170: .word 0x0000207A
_02223174: .word 0x00001FA8
_02223178: .word 0x00010200
	thumb_func_end ov13_02223118

	thumb_func_start ov13_0222317C
ov13_0222317C: ; 0x0222317C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	str r1, [sp, #0x10]
	ldr r1, [r5, #0]
	ldr r0, _022232B8 ; =0x00002070
	ldr r1, [r1, #0xc]
	ldr r4, [r5, r0]
	mov r0, #6
	lsl r6, r2, #4
	bl sub_02023790
	add r7, r0, #0
	ldr r0, _022232BC ; =0x00001FA8
	mov r1, #0x2b
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022232C0 ; =0x000F0E00
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	mov r1, #0
	add r0, r4, r6
	mov r3, #0x28
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, _022232BC ; =0x00001FA8
	mov r1, #0x2e
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	str r0, [sp, #0x1c]
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022232C0 ; =0x000F0E00
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r1, #0
	add r0, r4, r6
	mov r3, #0x50
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, _022232BC ; =0x00001FA8
	mov r1, #0x2d
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	str r0, [sp, #0x20]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r0, _022232C4 ; =0x00001FAC
	ldrb r2, [r2, #3]
	ldr r0, [r5, r0]
	mov r3, #2
	bl sub_0200B60C
	ldr r0, _022232C4 ; =0x00001FAC
	ldr r2, [sp, #0x20]
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0200C388
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022232C0 ; =0x000F0E00
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	mov r1, #0
	add r3, #0x50
	add r0, r4, r6
	add r2, r7, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x1c]
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, _022232BC ; =0x00001FA8
	mov r1, #0x2c
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	str r0, [sp, #0x24]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r0, _022232C4 ; =0x00001FAC
	ldrb r2, [r2, #2]
	ldr r0, [r5, r0]
	mov r3, #2
	bl sub_0200B60C
	ldr r0, _022232C4 ; =0x00001FAC
	ldr r2, [sp, #0x24]
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r5, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022232C0 ; =0x000F0E00
	mov r3, #0x50
	str r0, [sp, #8]
	mov r1, #0
	add r0, r4, r6
	add r2, r7, #0
	sub r3, r3, r5
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022232B8: .word 0x00002070
_022232BC: .word 0x00001FA8
_022232C0: .word 0x000F0E00
_022232C4: .word 0x00001FAC
	thumb_func_end ov13_0222317C

	thumb_func_start ov13_022232C8
ov13_022232C8: ; 0x022232C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x10]
	ldr r1, [r5, #0]
	ldr r0, _0222338C ; =0x00002070
	ldr r1, [r1, #0xc]
	ldr r4, [r5, r0]
	mov r0, #6
	lsl r6, r2, #4
	bl sub_02023790
	str r0, [sp, #0x14]
	ldr r0, _02223390 ; =0x00001FA8
	mov r1, #0x2b
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r7, #0x28
	mov r0, #0x50
	sub r0, r0, r7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r7, #0x10
	str r0, [sp, #4]
	add r0, r4, r6
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0x18
	bl sub_0201AE78
	ldr r0, _02223390 ; =0x00001FA8
	mov r1, #0x2c
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r0, _02223394 ; =0x00001FAC
	ldrb r2, [r2, #2]
	ldr r0, [r5, r0]
	mov r3, #2
	bl sub_0200B60C
	ldr r0, _02223394 ; =0x00001FAC
	ldr r1, [sp, #0x14]
	ldr r0, [r5, r0]
	add r2, r7, #0
	bl sub_0200C388
	mov r0, #0
	ldr r1, [sp, #0x14]
	add r2, r0, #0
	bl sub_02002D7C
	add r5, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02223398 ; =0x000F0E00
	mov r3, #0x50
	str r0, [sp, #8]
	mov r1, #0
	ldr r2, [sp, #0x14]
	add r0, r4, r6
	sub r3, r3, r5
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0222338C: .word 0x00002070
_02223390: .word 0x00001FA8
_02223394: .word 0x00001FAC
_02223398: .word 0x000F0E00
	thumb_func_end ov13_022232C8

	thumb_func_start ov13_0222339C
ov13_0222339C: ; 0x0222339C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r4, #0
	ldr r0, [r0, #0]
	bl sub_0207A0F8
	cmp r0, #0
	ble _02223422
	add r0, r4, #0
	add r7, r5, #0
	str r0, [sp, #8]
	add r6, r5, #0
	add r7, #0x1b
_022233BA:
	ldr r0, _02223444 ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #8]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldrh r0, [r6, #8]
	cmp r0, #0
	beq _0222340A
	mov r0, #0x20
	str r0, [sp]
	mov r0, #8
	lsl r3, r4, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	lsr r3, r3, #0x10
	bl ov13_02221C54
	ldrb r0, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _022233F6
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov13_02223448
_022233F6:
	ldr r0, [r6, #4]
	bl sub_0208E9F0
	cmp r0, #7
	bne _0222340A
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov13_022234A8
_0222340A:
	ldr r0, [sp, #8]
	add r6, #0x50
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r7, #0x50
	ldr r0, [r0, #0]
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _022233BA
_02223422:
	ldr r0, [r5, #0]
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #2
	bne _02223438
	add r0, r5, #0
	mov r1, #7
	bl ov13_022221C8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02223438:
	add r0, r5, #0
	mov r1, #6
	bl ov13_022221C8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02223444: .word 0x00002070
	thumb_func_end ov13_0222339C

	thumb_func_start ov13_02223448
ov13_02223448: ; 0x02223448
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #8
	add r6, r1, #0
	str r0, [sp, #4]
	ldr r0, _022234A4 ; =0x00002070
	lsl r4, r6, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, r0, r4
	mov r2, #0x38
	mov r3, #0x20
	bl sub_0201AE78
	mov r2, #0x40
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _022234A4 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	mov r3, #0x18
	add r0, r0, r4
	bl sub_0201AE78
	mov r0, #0x20
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	mov r3, #0x38
	bl ov13_02221E50
	mov r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	mov r3, #0x40
	bl ov13_02221ED0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022234A4: .word 0x00002070
	thumb_func_end ov13_02223448

	thumb_func_start ov13_022234A8
ov13_022234A8: ; 0x022234A8
	push {r3, lr}
	mov r2, #0x50
	mul r2, r1
	add r2, r0, r2
	ldrb r2, [r2, #0x1b]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	bne _022234C4
	mov r2, #0x20
	str r2, [sp]
	add r2, r1, #0
	mov r3, #0
	bl ov13_02221E08
_022234C4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov13_022234A8

	thumb_func_start ov13_022234C8
ov13_022234C8: ; 0x022234C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222354C ; =0x00002070
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0201ADA4
	ldr r0, _0222354C ; =0x00002070
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _0222354C ; =0x00002070
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, _0222354C ; =0x00002070
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	bl ov13_02223550
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf
	bl ov13_0222222C
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r0, r4, r0
	ldrb r0, [r0, #0x1b]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _02223536
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x12
	bl ov13_0222222C
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x13
	bl ov13_0222222C
	pop {r4, pc}
_02223536:
	ldr r0, _0222354C ; =0x00002070
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	ldr r0, _0222354C ; =0x00002070
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	pop {r4, pc}
	; .align 2, 0
_0222354C: .word 0x00002070
	thumb_func_end ov13_022234C8

	thumb_func_start ov13_02223550
ov13_02223550: ; 0x02223550
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _0222369C ; =0x00002070
	add r6, r1, #0
	ldr r0, [r4, r0]
	ldr r1, [r4, #0]
	str r0, [sp, #0x18]
	mov r0, #0x50
	add r7, r6, #0
	add r5, r4, #4
	mul r7, r0
	add r0, r5, r7
	str r0, [sp, #0x14]
	ldr r1, [r1, #0xc]
	mov r0, #0xc
	bl sub_02023790
	str r0, [sp, #0x10]
	ldr r0, _022236A0 ; =0x00001FA8
	ldr r1, _022236A4 ; =0x02228EC4
	lsl r2, r6, #2
	ldr r0, [r4, r0]
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, [r5, r7]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _022236A8 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200B5CC
	ldr r0, _022236A8 ; =0x00001FAC
	ldr r1, [sp, #0x10]
	ldr r0, [r4, r0]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	mov r5, #0
	ldrb r0, [r0, #0x16]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _022235E4
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, #0x17]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	bne _022235E4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bne _022235D4
	ldr r0, _022236A0 ; =0x00001FA8
	mov r1, #0x10
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	b _022235E4
_022235D4:
	cmp r0, #1
	bne _022235E4
	ldr r0, _022236A0 ; =0x00001FA8
	mov r1, #0x11
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
_022235E4:
	ldr r1, [sp, #0x10]
	mov r0, #2
	mov r2, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r5, #0
	bne _022235FC
	mov r7, #0
	add r4, r7, #0
	b _0222360C
_022235FC:
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r4, #8
_0222360C:
	ldr r0, [sp, #0x18]
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r6
	sub r0, r0, r7
	sub r1, r0, r4
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r7, r0, #0x18
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022236AC ; =0x00070809
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	mov r1, #2
	add r3, r7, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	cmp r5, #0
	beq _02223692
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, #0x17]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bne _02223670
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022236B0 ; =0x000A0B00
	add r3, r7, r6
	str r0, [sp, #8]
	mov r1, #0
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	add r3, r4, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	b _0222368C
_02223670:
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022236B4 ; =0x000C0D00
	add r3, r7, r6
	str r0, [sp, #8]
	mov r1, #0
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	add r3, r4, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
_0222368C:
	add r0, r5, #0
	bl sub_020237BC
_02223692:
	ldr r0, [sp, #0x18]
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222369C: .word 0x00002070
_022236A0: .word 0x00001FA8
_022236A4: .word 0x02228EC4
_022236A8: .word 0x00001FAC
_022236AC: .word 0x00070809
_022236B0: .word 0x000A0B00
_022236B4: .word 0x000C0D00
	thumb_func_end ov13_02223550

	thumb_func_start ov13_022236B8
ov13_022236B8: ; 0x022236B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _022237E8 ; =0x00002075
	mov r1, #6
	ldrb r2, [r5, r0]
	sub r0, r0, #5
	mul r1, r2
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	ldr r1, [r5, r0]
	lsl r0, r6, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #1
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #2
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #3
	lsl r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #4
	lsl r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _022237EC ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201ADA4
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r1, r6, #0
	bl ov13_02221C54
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0x34
	mov r4, #0
	add r7, r6, #1
	str r0, [sp, #0x1c]
_02223752:
	ldr r0, [r5, #0]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x1c]
	lsl r1, r4, #3
	add r0, r0, r2
	str r1, [sp, #0x20]
	ldrh r1, [r0, r1]
	str r0, [sp, #0x24]
	cmp r1, #0
	beq _02223794
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _022237F0 ; =0x00070809
	ldr r3, _022237F4 ; =0x02228EB0
	lsl r6, r4, #2
	str r0, [sp, #8]
	ldr r3, [r3, r6]
	add r0, r5, #0
	add r2, r7, r4
	bl ov13_022220CC
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	add r1, r1, r2
	add r2, r7, r4
	bl ov13_0222317C
_02223794:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _02223752
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x12
	bl ov13_0222222C
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, _022237EC ; =0x00002070
	ldr r1, [r5, r0]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r1, _022237E8 ; =0x00002075
	mov r0, #1
	ldrb r2, [r5, r1]
	eor r0, r2
	strb r0, [r5, r1]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022237E8: .word 0x00002075
_022237EC: .word 0x00002070
_022237F0: .word 0x00070809
_022237F4: .word 0x02228EB0
	thumb_func_end ov13_022236B8

	thumb_func_start ov13_022237F8
ov13_022237F8: ; 0x022237F8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02223A08 ; =0x00002075
	mov r1, #0x16
	ldrb r2, [r5, r0]
	sub r0, r0, #5
	add r4, r2, #0
	mul r4, r1
	ldr r1, [r5, r0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #5
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xe0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xf0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xd0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	lsl r0, r4, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xa
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xb
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xc
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #5
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #6
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #7
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #9
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #1
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #2
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223A0C ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #3
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r1, r4, #0
	bl ov13_02221C54
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_0222295C
	mov r3, #0
	str r3, [sp]
	ldr r2, [r5, #0]
	add r1, r4, #0
	ldrb r2, [r2, #0x11]
	add r0, r5, #0
	add r1, #0xa
	bl ov13_02221ED0
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_02222290
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_02222464
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_02222560
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_0222265C
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_0222275C
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_0222285C
	ldr r2, [r5, #0]
	add r0, r5, #0
	ldrb r2, [r2, #0x11]
	add r1, r4, #1
	bl ov13_02221FA8
	ldr r2, [r5, #0]
	add r0, r5, #0
	ldrb r2, [r2, #0x11]
	add r1, r4, #3
	bl ov13_02222030
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrb r1, [r1, #0x11]
	bl ov13_02222AF4
	add r0, r5, #0
	mov r1, #0x15
	mov r2, #0x13
	bl ov13_0222222C
	ldr r1, _02223A08 ; =0x00002075
	mov r0, #1
	ldrb r2, [r5, r1]
	eor r0, r2
	strb r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02223A08: .word 0x00002075
_02223A0C: .word 0x00002070
	thumb_func_end ov13_022237F8

	thumb_func_start ov13_02223A10
ov13_02223A10: ; 0x02223A10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02223B64 ; =0x00002075
	mov r1, #0xb
	ldrb r2, [r5, r0]
	sub r0, r0, #5
	ldr r0, [r5, r0]
	add r4, r2, #0
	mul r4, r1
	add r0, #0x60
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x70
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x80
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x90
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xa0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #1
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	lsl r0, r4, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #2
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #3
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #5
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02223B68 ; =0x00002070
	ldr r1, [r5, r0]
	add r0, r4, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0]
	add r2, r5, #0
	ldrb r3, [r0, #0x11]
	add r0, #0x34
	ldrb r0, [r0]
	mov r1, #0x50
	add r2, #0x34
	mul r1, r3
	add r1, r2, r1
	lsl r0, r0, #3
	add r7, r1, r0
	mov r2, #0
	str r2, [sp]
	add r0, r5, #0
	mov r1, #6
	str r2, [sp, #4]
	bl ov13_02221C54
	mov r2, #0
	add r0, r5, #0
	mov r1, #7
	add r3, r2, #0
	bl ov13_02222170
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02223B6C ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	ldrh r1, [r7]
	add r3, #0x34
	ldrb r3, [r3]
	add r0, r5, #0
	lsl r6, r3, #2
	ldr r3, _02223B70 ; =0x02228EB0
	ldr r3, [r3, r6]
	bl ov13_022220CC
	add r0, r5, #0
	mov r1, #8
	bl ov13_02222B6C
	ldrb r2, [r7, #6]
	add r0, r5, #0
	add r1, r4, #2
	bl ov13_02222BB4
	add r0, r5, #0
	mov r1, #9
	bl ov13_02222C9C
	ldrb r2, [r7, #7]
	add r0, r5, #0
	add r1, r4, #3
	bl ov13_02222CE4
	ldrh r2, [r7]
	add r0, r5, #0
	add r1, r4, #4
	bl ov13_02222DCC
	add r0, r5, #0
	mov r1, #0xa
	bl ov13_02222E94
	ldrb r2, [r7, #5]
	add r0, r5, #0
	add r1, r4, #5
	bl ov13_02222EF8
	ldrb r2, [r7, #2]
	ldrb r3, [r7, #3]
	add r0, r5, #0
	add r1, r4, #1
	bl ov13_02222F74
	ldr r1, _02223B64 ; =0x00002075
	mov r0, #1
	ldrb r2, [r5, r1]
	eor r0, r2
	strb r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02223B64: .word 0x00002075
_02223B68: .word 0x00002070
_02223B6C: .word 0x000F0E00
_02223B70: .word 0x02228EB0
	thumb_func_end ov13_02223A10

	thumb_func_start ov13_02223B74
ov13_02223B74: ; 0x02223B74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201ADA4
	ldr r0, _02223C90 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r2, r1, #0
	bl ov13_02221C54
	add r0, r5, #0
	mov r6, #0
	str r0, [sp, #0x10]
	add r0, #0x34
	ldr r7, _02223C94 ; =0x02228EB0
	add r4, r6, #0
	str r0, [sp, #0x10]
_02223BE0:
	ldr r0, [r5, #0]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x10]
	add r0, r0, r2
	ldrh r1, [r0, r4]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _02223C18
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _02223C98 ; =0x00070809
	add r2, r6, #1
	str r0, [sp, #8]
	ldr r3, [r7, #0]
	add r0, r5, #0
	bl ov13_022220CC
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r1, r4
	add r2, r6, #1
	bl ov13_0222317C
_02223C18:
	add r6, r6, #1
	add r4, #8
	add r7, r7, #4
	cmp r6, #4
	blo _02223BE0
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _02223C98 ; =0x00070809
	mov r2, #5
	str r0, [sp, #8]
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	mov r3, #0x49
	bl ov13_022220CC
	ldr r0, [r5, #0]
	mov r1, #5
	ldrh r0, [r0, #0x24]
	bl sub_020790C4
	add r1, sp, #0x14
	strb r0, [r1, #2]
	ldrb r0, [r1, #2]
	mov r2, #5
	strb r0, [r1, #3]
	add r0, r5, #0
	add r1, sp, #0x14
	bl ov13_0222317C
	ldr r0, _02223C90 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201A9A4
	ldr r0, _02223C90 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201A9A4
	ldr r0, _02223C90 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201A9A4
	ldr r0, _02223C90 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201A9A4
	ldr r0, _02223C90 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02223C90: .word 0x00002070
_02223C94: .word 0x02228EB0
_02223C98: .word 0x00070809
	thumb_func_end ov13_02223B74

	thumb_func_start ov13_02223C9C
ov13_02223C9C: ; 0x02223C9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x60
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x70
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x90
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xa0
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x80
	bl sub_0201ADA4
	ldr r0, _02223E5C ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0xb0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r2, r1, #0
	bl ov13_02221C54
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl ov13_02222170
	add r0, r5, #0
	mov r1, #4
	bl ov13_02222B6C
	add r0, r5, #0
	mov r1, #5
	bl ov13_02222C9C
	add r0, r5, #0
	mov r1, #9
	bl ov13_02222E94
	ldr r1, [r5, #0]
	add r0, r1, #0
	add r0, #0x34
	ldrb r3, [r0]
	cmp r3, #4
	bhs _02223DD8
	ldrb r1, [r1, #0x11]
	add r2, r5, #0
	mov r0, #0x50
	add r2, #0x34
	mul r0, r1
	add r7, r2, r0
	lsl r0, r3, #3
	str r0, [sp, #0xc]
	add r4, r7, r0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02223E60 ; =0x000F0E00
	lsl r6, r3, #2
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, _02223E64 ; =0x02228EB0
	ldrh r1, [r7, r1]
	ldr r3, [r3, r6]
	add r0, r5, #0
	mov r2, #1
	bl ov13_022220CC
	ldrb r2, [r4, #6]
	add r0, r5, #0
	mov r1, #6
	bl ov13_02222BB4
	ldrb r2, [r4, #7]
	add r0, r5, #0
	mov r1, #7
	bl ov13_02222CE4
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	ldrh r2, [r7, r2]
	mov r1, #8
	bl ov13_02222DCC
	ldrb r2, [r4, #5]
	add r0, r5, #0
	mov r1, #0xa
	bl ov13_02222EF8
	ldrb r2, [r4, #2]
	ldrb r3, [r4, #3]
	add r0, r5, #0
	mov r1, #3
	bl ov13_02222F74
	b _02223E4E
_02223DD8:
	ldrh r0, [r1, #0x24]
	mov r1, #5
	bl sub_020790C4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02223E60 ; =0x000F0E00
	mov r2, #1
	str r0, [sp, #8]
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	mov r3, #0x49
	bl ov13_022220CC
	ldr r2, [r5, #0]
	add r0, r5, #0
	ldrh r2, [r2, #0x24]
	mov r1, #8
	bl ov13_02222DCC
	ldr r0, [r5, #0]
	mov r1, #4
	ldrh r0, [r0, #0x24]
	bl sub_020790C4
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #6
	bl ov13_02222BB4
	ldr r0, [r5, #0]
	mov r1, #2
	ldrh r0, [r0, #0x24]
	bl sub_020790C4
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #7
	bl ov13_02222CE4
	ldr r0, [r5, #0]
	mov r1, #1
	ldrh r0, [r0, #0x24]
	bl sub_020790C4
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0xa
	bl ov13_02222EF8
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	add r3, r4, #0
	bl ov13_02222F74
_02223E4E:
	add r0, r5, #0
	mov r1, #0xb
	bl ov13_022230A8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02223E5C: .word 0x00002070
_02223E60: .word 0x000F0E00
_02223E64: .word 0x02228EB0
	thumb_func_end ov13_02223C9C

	thumb_func_start ov13_02223E68
ov13_02223E68: ; 0x02223E68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _02223F50 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	ldr r0, _02223F50 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _02223F50 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, _02223F50 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _02223F50 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r2, r1, #0
	bl ov13_02221C54
	add r0, r5, #0
	mov r6, #0
	str r0, [sp, #0x10]
	add r0, #0x34
	ldr r7, _02223F54 ; =0x02228EB0
	add r4, r6, #0
	str r0, [sp, #0x10]
_02223EC8:
	ldr r0, [r5, #0]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x10]
	add r0, r0, r2
	ldrh r1, [r0, r4]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _02223F00
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _02223F58 ; =0x00070809
	add r2, r6, #1
	str r0, [sp, #8]
	ldr r3, [r7, #0]
	add r0, r5, #0
	bl ov13_022220CC
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r1, r4
	add r2, r6, #1
	bl ov13_0222317C
_02223F00:
	add r6, r6, #1
	add r4, #8
	add r7, r7, #4
	cmp r6, #4
	blo _02223EC8
	ldr r2, [r5, #0]
	mov r1, #0x25
	ldrh r0, [r2, #0x22]
	ldr r2, [r2, #0xc]
	bl sub_0207CFF0
	cmp r0, #0
	bne _02223F22
	add r0, r5, #0
	mov r1, #0x5e
	bl ov13_022221C8
_02223F22:
	ldr r0, _02223F50 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201A9A4
	ldr r0, _02223F50 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201A9A4
	ldr r0, _02223F50 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201A9A4
	ldr r0, _02223F50 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02223F50: .word 0x00002070
_02223F54: .word 0x02228EB0
_02223F58: .word 0x00070809
	thumb_func_end ov13_02223E68

	thumb_func_start ov13_02223F5C
ov13_02223F5C: ; 0x02223F5C
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0]
	add r3, r1, #0
	ldrb r5, [r4, #0x11]
	add r1, r0, #0
	mov r4, #0x50
	add r1, #0x34
	mul r4, r5
	add r4, r1, r4
	lsl r1, r2, #3
	add r1, r4, r1
	add r2, r3, #0
	bl ov13_022232C8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov13_02223F5C

	thumb_func_start ov13_02223F7C
ov13_02223F7C: ; 0x02223F7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201ADA4
	ldr r0, _022240D0 ; =0x00002070
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x60
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r3, [r5, #0]
	add r0, r5, #0
	ldrb r3, [r3, #0x11]
	add r2, r1, #0
	bl ov13_02221C54
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl ov13_02222170
	ldr r0, _022240D4 ; =0x00001FA8
	mov r1, #0x39
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	mov r3, #0x60
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022240D8 ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, _022240D0 ; =0x00002070
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, _022240D0 ; =0x00002070
	ldr r0, [r5, r0]
	add r0, #0x40
	bl sub_0201A9A4
	ldr r1, [r5, #0]
	add r0, r1, #0
	add r0, #0x34
	ldrb r3, [r0]
	cmp r3, #4
	bhs _0222408A
	ldrb r1, [r1, #0x11]
	add r2, r5, #0
	mov r0, #0x50
	add r2, #0x34
	mul r0, r1
	add r4, r2, r0
	lsl r7, r3, #3
	add r0, r4, r7
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022240D8 ; =0x000F0E00
	lsl r6, r3, #2
	str r0, [sp, #8]
	ldr r3, _022240DC ; =0x02228EB0
	ldrh r1, [r4, r7]
	ldr r3, [r3, r6]
	add r0, r5, #0
	mov r2, #1
	bl ov13_022220CC
	ldrh r2, [r4, r7]
	add r0, r5, #0
	mov r1, #5
	bl ov13_02222E2C
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x10]
	ldrb r2, [r2, #2]
	ldrb r3, [r3, #3]
	add r0, r5, #0
	mov r1, #3
	bl ov13_02222F74
	b _022240C4
_0222408A:
	ldrh r0, [r1, #0x24]
	mov r1, #5
	bl sub_020790C4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022240D8 ; =0x000F0E00
	mov r2, #1
	str r0, [sp, #8]
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	mov r3, #0x49
	bl ov13_022220CC
	ldr r2, [r5, #0]
	add r0, r5, #0
	ldrh r2, [r2, #0x24]
	mov r1, #5
	bl ov13_02222E2C
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	add r3, r4, #0
	bl ov13_02222F74
_022240C4:
	add r0, r5, #0
	mov r1, #6
	bl ov13_022230A8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022240D0: .word 0x00002070
_022240D4: .word 0x00001FA8
_022240D8: .word 0x000F0E00
_022240DC: .word 0x02228EB0
	thumb_func_end ov13_02223F7C

	thumb_func_start ov13_022240E0
ov13_022240E0: ; 0x022240E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02224104 ; =0x00002060
	mov r1, #1
	add r0, r4, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, _02224104 ; =0x00002060
	mov r1, #0xf
	add r0, r4, r0
	bl sub_0201ADA4
	add r0, r4, #0
	bl ov13_02224108
	pop {r4, pc}
	; .align 2, 0
_02224104: .word 0x00002060
	thumb_func_end ov13_022240E0

	thumb_func_start ov13_02224108
ov13_02224108: ; 0x02224108
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	bl sub_02002AC8
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	bl ov16_0223EDF0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r2, _0222413C ; =0x00002060
	str r3, [sp, #8]
	add r0, r4, r2
	sub r2, #0xb0
	ldr r2, [r4, r2]
	mov r1, #1
	bl sub_0201D738
	ldr r1, _02224140 ; =0x0000207B
	strb r0, [r4, r1]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0222413C: .word 0x00002060
_02224140: .word 0x0000207B
	thumb_func_end ov13_02224108

	thumb_func_start ov13_02224144
ov13_02224144: ; 0x02224144
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldrh r0, [r0, #0x22]
	ldr r2, [r2, #0xc]
	bl sub_0207CF48
	ldr r2, [sp, #0xc]
	add r6, r0, #0
	ldrb r3, [r2, #0x11]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r2, r2, r3
	add r2, #0x2c
	ldrb r2, [r2]
	ldr r0, [r0, #8]
	ldr r1, [r1, #0x28]
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0xf
	mov r4, #0
	bl sub_0207D014
	cmp r0, #0
	beq _02224198
	mov r0, #1
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02224198:
	add r0, r6, #0
	mov r1, #0x10
	bl sub_0207D014
	cmp r0, #0
	beq _022241AC
	mov r0, #2
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022241AC:
	add r0, r6, #0
	mov r1, #0x11
	bl sub_0207D014
	cmp r0, #0
	beq _022241C0
	mov r0, #4
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022241C0:
	add r0, r6, #0
	mov r1, #0x12
	bl sub_0207D014
	cmp r0, #0
	beq _022241D4
	mov r0, #8
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022241D4:
	add r0, r6, #0
	mov r1, #0x13
	bl sub_0207D014
	cmp r0, #0
	beq _022241E8
	mov r0, #0x10
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022241E8:
	add r0, r6, #0
	mov r1, #0x14
	bl sub_0207D014
	cmp r0, #0
	beq _022241FC
	mov r0, #0x20
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022241FC:
	add r0, r6, #0
	mov r1, #0x15
	bl sub_0207D014
	cmp r0, #0
	beq _02224210
	mov r0, #0x40
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02224210:
	ldr r0, [sp, #0xc]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r0, r5, r0
	ldrh r1, [r0, #0x14]
	cmp r1, #0
	bne _0222425A
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0222425A
	ldr r0, _02224494 ; =0x00001FA8
	mov r1, #0x58
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_0222425A:
	ldr r0, [sp, #8]
	cmp r0, r1
	beq _022242B6
	ldr r0, _02224494 ; =0x00001FA8
	mov r1, #0x52
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r2, [sp, #0xc]
	str r1, [sp, #4]
	ldrb r3, [r2, #0x11]
	mov r2, #0x50
	ldr r0, _02224498 ; =0x00001FAC
	mul r2, r3
	add r2, r5, r2
	ldrh r3, [r2, #0x14]
	ldr r2, [sp, #8]
	ldr r0, [r5, r0]
	sub r2, r2, r3
	mov r3, #3
	bl sub_0200B60C
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_022242B6:
	add r0, r6, #0
	mov r1, #0x24
	bl sub_0207D014
	cmp r0, #0
	bne _022242CE
	add r0, r6, #0
	mov r1, #0x25
	bl sub_0207D014
	cmp r0, #0
	beq _022242DE
_022242CE:
	ldr r2, _02224494 ; =0x00001FA8
	mov r1, #0x57
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	b _0222448A
_022242DE:
	cmp r4, #1
	ldr r0, _02224494 ; =0x00001FA8
	bne _02224316
	ldr r0, [r5, r0]
	mov r1, #0x5c
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_02224316:
	cmp r4, #2
	bne _0222434C
	ldr r0, [r5, r0]
	mov r1, #0x53
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_0222434C:
	cmp r4, #4
	bne _02224382
	ldr r0, [r5, r0]
	mov r1, #0x55
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_02224382:
	cmp r4, #8
	bne _022243B8
	ldr r0, [r5, r0]
	mov r1, #0x56
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_022243B8:
	cmp r4, #0x10
	bne _022243EE
	ldr r0, [r5, r0]
	mov r1, #0x54
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_022243EE:
	cmp r4, #0x20
	bne _02224424
	ldr r0, [r5, r0]
	mov r1, #0x5a
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_02224424:
	cmp r4, #0x40
	bne _0222445A
	ldr r0, [r5, r0]
	mov r1, #0x5b
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _0222448A
_0222445A:
	ldr r0, [r5, r0]
	mov r1, #0x59
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _02224498 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r1, _02224498 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
_0222448A:
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02224494: .word 0x00001FA8
_02224498: .word 0x00001FAC
	thumb_func_end ov13_02224144

	thumb_func_start ov13_0222449C
ov13_0222449C: ; 0x0222449C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r3, [r5, #0]
	ldrb r2, [r3, #0x11]
	ldr r0, [r3, #8]
	ldr r1, [r3, #0x28]
	add r2, r3, r2
	add r2, #0x2c
	ldrb r2, [r2]
	bl ov16_0223DFAC
	add r6, r0, #0
	ldr r0, _022244F4 ; =0x00001FA8
	mov r1, #0x5f
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, _022244F8 ; =0x00001FAC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B5CC
	ldr r0, _022244F8 ; =0x00001FAC
	ldr r2, _022244FC ; =0x00000175
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200B630
	ldr r1, _022244F8 ; =0x00001FAC
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022244F4: .word 0x00001FA8
_022244F8: .word 0x00001FAC
_022244FC: .word 0x00000175
	thumb_func_end ov13_0222449C

	thumb_func_start ov13_02224500
ov13_02224500: ; 0x02224500
	push {r4, lr}
	add r4, r0, #0
	bl ov13_0222453C
	add r0, r4, #0
	bl ov13_02224588
	add r0, r4, #0
	bl ov13_02224670
	add r0, r4, #0
	bl ov13_02224720
	add r0, r4, #0
	bl ov13_02224798
	add r0, r4, #0
	bl ov13_02224848
	add r0, r4, #0
	bl ov13_02224948
	add r0, r4, #0
	bl ov13_0222554C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r4, pc}
	thumb_func_end ov13_02224500

	thumb_func_start ov13_0222453C
ov13_0222453C: ; 0x0222453C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02224580 ; =0x022292EC
	add r2, sp, #0
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	add r4, r0, #0
	bl sub_0200C704
	ldr r1, _02224584 ; =0x00001FB4
	mov r2, #0x2b
	str r0, [r5, r1]
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl sub_0200C7C0
	ldr r1, _02224584 ; =0x00001FB4
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r2, sp, #0
	bl sub_0200CB30
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02224580: .word 0x022292EC
_02224584: .word 0x00001FB4
	thumb_func_end ov13_0222453C

	thumb_func_start ov13_02224588
ov13_02224588: ; 0x02224588
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r1, [r6, #0]
	mov r0, #0x13
	ldr r1, [r1, #0xc]
	bl sub_02006C24
	add r7, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	str r0, [sp, #0x18]
	bl sub_02079FD0
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _02224668 ; =0x0000B007
	ldr r3, _0222466C ; =0x00001FB4
	str r0, [sp, #0x14]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x18]
	ldr r3, [r6, r3]
	bl sub_0200CDC4
	bl sub_02079FD8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02224668 ; =0x0000B007
	ldr r1, _0222466C ; =0x00001FB4
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CE24
	bl sub_02079FE4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02224668 ; =0x0000B007
	ldr r1, _0222466C ; =0x00001FB4
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CE54
	mov r4, #0
	add r5, r6, #0
_02224604:
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0222462E
	ldr r0, [r5, #4]
	bl sub_02079D80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02224668 ; =0x0000B007
	ldr r1, _0222466C ; =0x00001FB4
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CC3C
	b _02224654
_0222462E:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02079D8C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02224668 ; =0x0000B007
	ldr r1, _0222466C ; =0x00001FB4
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CC3C
_02224654:
	add r4, r4, #1
	add r5, #0x50
	cmp r4, #6
	blo _02224604
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02224668: .word 0x0000B007
_0222466C: .word 0x00001FB4
	thumb_func_end ov13_02224588

	thumb_func_start ov13_02224670
ov13_02224670: ; 0x02224670
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	ldr r1, [r5, #0]
	add r4, r0, #0
	ldr r1, [r1, #0xc]
	mov r0, #0x27
	bl sub_02006C24
	add r6, r0, #0
	bl sub_0208E9E4
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _02224714 ; =0x0000B008
	ldr r3, _02224718 ; =0x00001FB4
	str r0, [sp, #0x14]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	mov r1, #3
	add r2, r4, #0
	bl sub_0200CDC4
	bl sub_0208E9E8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02224714 ; =0x0000B008
	ldr r1, _02224718 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0200CE24
	bl sub_0208E9EC
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02224714 ; =0x0000B008
	ldr r1, _02224718 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0200CE54
	bl sub_0208E9E0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0222471C ; =0x0000B00D
	ldr r1, _02224718 ; =0x00001FB4
	str r0, [sp, #8]
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0200CC3C
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_02224714: .word 0x0000B008
_02224718: .word 0x00001FB4
_0222471C: .word 0x0000B00D
	thumb_func_end ov13_02224670

	thumb_func_start ov13_02224720
ov13_02224720: ; 0x02224720
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	ldr r0, _02224788 ; =0x0000B009
	ldr r3, _0222478C ; =0x00001FB4
	str r0, [sp, #4]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	mov r1, #3
	add r2, r6, #0
	bl sub_0207C9B0
	ldr r1, _0222478C ; =0x00001FB4
	ldr r2, _02224788 ; =0x0000B009
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0207C9EC
	ldr r4, _02224790 ; =0x0000B00E
	add r7, r4, #6
_0222475C:
	ldr r1, _0222478C ; =0x00001FB4
	str r4, [sp]
	ldr r1, [r5, r1]
	add r0, r6, #0
	mov r2, #2
	mov r3, #0
	bl sub_0207C948
	add r4, r4, #1
	cmp r4, r7
	bls _0222475C
	ldr r0, _02224794 ; =0x0000B015
	ldr r1, _0222478C ; =0x00001FB4
	str r0, [sp]
	ldr r1, [r5, r1]
	add r0, r6, #0
	mov r2, #2
	mov r3, #0
	bl sub_0207CAC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02224788: .word 0x0000B009
_0222478C: .word 0x00001FB4
_02224790: .word 0x0000B00E
_02224794: .word 0x0000B015
	thumb_func_end ov13_02224720

	thumb_func_start ov13_02224798
ov13_02224798: ; 0x02224798
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x14
	ldr r1, [r1, #0xc]
	bl sub_02006C24
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	add r6, r0, #0
	bl sub_02081934
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0222483C ; =0x0000B00A
	ldr r3, _02224840 ; =0x00001FB4
	str r0, [sp, #0x14]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	mov r1, #3
	add r2, r6, #0
	bl sub_0200CDC4
	bl sub_02081938
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222483C ; =0x0000B00A
	ldr r1, _02224840 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE24
	bl sub_0208193C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222483C ; =0x0000B00A
	ldr r1, _02224840 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE54
	bl sub_02081930
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02224844 ; =0x0000B016
	ldr r1, _02224840 ; =0x00001FB4
	str r0, [sp, #8]
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CC3C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0222483C: .word 0x0000B00A
_02224840: .word 0x00001FB4
_02224844: .word 0x0000B016
	thumb_func_end ov13_02224798

	thumb_func_start ov13_02224848
ov13_02224848: ; 0x02224848
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	add r4, r0, #0
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _022248CC ; =0x0000B00B
	ldr r3, _022248D0 ; =0x00001FB4
	str r0, [sp, #0x14]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	mov r1, #3
	add r2, r4, #0
	bl sub_0200CD7C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022248CC ; =0x0000B00B
	ldr r1, _022248D0 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r4, #0
	mov r2, #0x48
	mov r3, #0x19
	bl sub_0200CE0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022248CC ; =0x0000B00B
	ldr r1, _022248D0 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r4, #0
	mov r2, #0x48
	mov r3, #0x18
	bl sub_0200CE3C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _022248D4 ; =0x0000B017
	ldr r1, _022248D0 ; =0x00001FB4
	str r0, [sp, #8]
	ldr r1, [r5, r1]
	add r0, r4, #0
	mov r2, #0x48
	mov r3, #0x1a
	bl sub_0200CBDC
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022248CC: .word 0x0000B00B
_022248D0: .word 0x00001FB4
_022248D4: .word 0x0000B017
	thumb_func_end ov13_02224848

	thumb_func_start ov13_022248D8
ov13_022248D8: ; 0x022248D8
	push {r4, r5, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #8]
	bl ov16_0223E010
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	mov r1, #0x14
	ldr r3, _02224930 ; =0x02229524
	mul r1, r4
	ldr r3, [r3, r1]
	str r2, [sp, #0xc]
	str r3, [sp, #8]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r3, _02224934 ; =0x02229514
	str r2, [sp, #0x30]
	ldr r3, [r3, r1]
	add r2, sp, #0
	str r3, [sp, #0x14]
	ldr r3, _02224938 ; =0x02229518
	ldr r3, [r3, r1]
	str r3, [sp, #0x18]
	ldr r3, _0222493C ; =0x0222951C
	ldr r3, [r3, r1]
	str r3, [sp, #0x1c]
	ldr r3, _02224940 ; =0x02229520
	ldr r1, [r3, r1]
	str r1, [sp, #0x20]
	mov r1, #1
	str r1, [sp, #0x2c]
	ldr r1, _02224944 ; =0x00001FB4
	ldr r1, [r5, r1]
	bl sub_0200CE6C
	add sp, #0x34
	pop {r4, r5, pc}
	; .align 2, 0
_02224930: .word 0x02229524
_02224934: .word 0x02229514
_02224938: .word 0x02229518
_0222493C: .word 0x0222951C
_02224940: .word 0x02229520
_02224944: .word 0x00001FB4
	thumb_func_end ov13_022248D8

	thumb_func_start ov13_02224948
ov13_02224948: ; 0x02224948
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _0222496C ; =0x00001FB8
	mov r4, #0
	add r5, r6, #0
_02224952:
	add r0, r6, #0
	add r1, r4, #0
	bl ov13_022248D8
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x26
	blo _02224952
	add r0, r6, #0
	bl ov13_022249CC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222496C: .word 0x00001FB8
	thumb_func_end ov13_02224948

	thumb_func_start ov13_02224970
ov13_02224970: ; 0x02224970
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	ldr r6, _022249A4 ; =0x00001FB8
	str r0, [sp]
	mov r4, #0
	add r5, r7, #0
_02224984:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x26
	blo _02224984
	add r0, r7, #0
	bl ov13_022255B8
	ldr r1, _022249A8 ; =0x00001FB4
	ldr r0, [sp]
	ldr r1, [r7, r1]
	bl sub_0200D0B0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022249A4: .word 0x00001FB8
_022249A8: .word 0x00001FB4
	thumb_func_end ov13_02224970

	thumb_func_start ov13_022249AC
ov13_022249AC: ; 0x022249AC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #1
	add r6, r0, #0
	bl sub_0200D3F4
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov13_022249AC

	thumb_func_start ov13_022249CC
ov13_022249CC: ; 0x022249CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	mov r7, #0
	add r4, #0x1b
	add r6, r5, #0
_022249D8:
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _022249F8
	add r1, r5, #0
	ldrb r2, [r4]
	add r1, #0x32
	ldrb r1, [r1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, _02224A08 ; =0x00001FD4
	ldr r0, [r6, r0]
	bl sub_0200D41C
_022249F8:
	add r7, r7, #1
	add r5, #0x50
	add r4, #0x50
	add r6, r6, #4
	cmp r7, #6
	blt _022249D8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224A08: .word 0x00001FD4
	thumb_func_end ov13_022249CC

	thumb_func_start ov13_02224A0C
ov13_02224A0C: ; 0x02224A0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r3, #0
	ldr r0, [r0, #8]
	add r7, r1, #0
	add r4, r2, #0
	bl ov16_0223E010
	str r0, [sp, #8]
	bl sub_0207C944
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_0207C908
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r1, _02224A58 ; =0x00001FB4
	str r4, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0xc]
	bl sub_0200D948
	add r0, r6, #0
	bl sub_0207C92C
	add r1, r0, #0
	add r0, r7, #0
	add r1, r1, #4
	bl sub_0200D41C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224A58: .word 0x00001FB4
	thumb_func_end ov13_02224A0C

	thumb_func_start ov13_02224A5C
ov13_02224A5C: ; 0x02224A5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r2, #0
	ldr r0, [r0, #8]
	add r6, r1, #0
	bl ov16_0223E010
	add r7, r0, #0
	bl sub_0207CAC0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0207CA90
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _02224AA8 ; =0x0000B015
	ldr r1, _02224AAC ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	ldr r2, [sp, #8]
	add r0, r7, #0
	bl sub_0200D948
	add r0, r4, #0
	bl sub_0207CAA8
	add r1, r0, #0
	add r0, r6, #0
	add r1, r1, #4
	bl sub_0200D41C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02224AA8: .word 0x0000B015
_02224AAC: .word 0x00001FB4
	thumb_func_end ov13_02224A5C

	thumb_func_start ov13_02224AB0
ov13_02224AB0: ; 0x02224AB0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r6, #7
	beq _02224AD0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200D364
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov13_022249AC
_02224AD0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02224AB0

	thumb_func_start ov13_02224AD4
ov13_02224AD4: ; 0x02224AD4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _02224B18 ; =0x00002004
	add r5, r0, #0
	add r6, r2, #0
	ldrb r3, [r4, #0x14]
	ldr r1, [r5, r1]
	ldr r2, _02224B1C ; =0x0000B00E
	bl ov13_02224A0C
	ldr r0, _02224B18 ; =0x00002004
	ldr r1, [r6, #0]
	ldr r0, [r5, r0]
	ldr r2, [r6, #4]
	bl ov13_022249AC
	ldrb r3, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	cmp r0, r3
	beq _02224B14
	ldr r1, _02224B20 ; =0x00002008
	ldr r2, _02224B24 ; =0x0000B00F
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov13_02224A0C
	ldr r0, _02224B20 ; =0x00002008
	ldr r1, [r6, #8]
	ldr r0, [r5, r0]
	ldr r2, [r6, #0xc]
	bl ov13_022249AC
_02224B14:
	pop {r4, r5, r6, pc}
	nop
_02224B18: .word 0x00002004
_02224B1C: .word 0x0000B00E
_02224B20: .word 0x00002008
_02224B24: .word 0x0000B00F
	thumb_func_end ov13_02224AD4

	thumb_func_start ov13_02224B28
ov13_02224B28: ; 0x02224B28
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02224B58
	bl sub_0207D2D0
	cmp r0, #1
	bne _02224B46
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D364
	b _02224B4E
_02224B46:
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D364
_02224B4E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov13_022249AC
_02224B58:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov13_02224B28

	thumb_func_start ov13_02224B5C
ov13_02224B5C: ; 0x02224B5C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02224B7A
	add r0, r5, #0
	mov r1, #2
	bl sub_0200D364
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov13_022249AC
_02224B7A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov13_02224B5C

	thumb_func_start ov13_02224B7C
ov13_02224B7C: ; 0x02224B7C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _02224C10 ; =0x00001FB8
	str r1, [sp]
	mov r5, #0
	add r4, r6, #0
_02224B88:
	ldr r0, [r4, r7]
	mov r1, #0
	bl sub_0200D3F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x26
	blo _02224B88
	ldr r0, [sp]
	cmp r0, #9
	bhi _02224C0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02224BAA: ; jump table
	.short _02224BBE - _02224BAA - 2 ; case 0
	.short _02224BC6 - _02224BAA - 2 ; case 1
	.short _02224BCE - _02224BAA - 2 ; case 2
	.short _02224BD6 - _02224BAA - 2 ; case 3
	.short _02224BDE - _02224BAA - 2 ; case 4
	.short _02224BE6 - _02224BAA - 2 ; case 5
	.short _02224BEE - _02224BAA - 2 ; case 6
	.short _02224BF6 - _02224BAA - 2 ; case 7
	.short _02224BFE - _02224BAA - 2 ; case 8
	.short _02224C06 - _02224BAA - 2 ; case 9
_02224BBE:
	add r0, r6, #0
	bl ov13_02224C14
	pop {r3, r4, r5, r6, r7, pc}
_02224BC6:
	add r0, r6, #0
	bl ov13_02224CB0
	pop {r3, r4, r5, r6, r7, pc}
_02224BCE:
	add r0, r6, #0
	bl ov13_02224D08
	pop {r3, r4, r5, r6, r7, pc}
_02224BD6:
	add r0, r6, #0
	bl ov13_02224DA0
	pop {r3, r4, r5, r6, r7, pc}
_02224BDE:
	add r0, r6, #0
	bl ov13_02224E78
	pop {r3, r4, r5, r6, r7, pc}
_02224BE6:
	add r0, r6, #0
	bl ov13_0222506C
	pop {r3, r4, r5, r6, r7, pc}
_02224BEE:
	add r0, r6, #0
	bl ov13_02224F3C
	pop {r3, r4, r5, r6, r7, pc}
_02224BF6:
	add r0, r6, #0
	bl ov13_02224FA8
	pop {r3, r4, r5, r6, r7, pc}
_02224BFE:
	add r0, r6, #0
	bl ov13_02225150
	pop {r3, r4, r5, r6, r7, pc}
_02224C06:
	add r0, r6, #0
	bl ov13_022250D8
_02224C0C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224C10: .word 0x00001FB8
	thumb_func_end ov13_02224B7C

	thumb_func_start ov13_02224C14
ov13_02224C14: ; 0x02224C14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x1b
	ldr r4, _02224C98 ; =0x02229404
	ldr r7, _02224C9C ; =0x02229434
	add r5, r6, #0
	str r0, [sp]
_02224C2C:
	ldrh r0, [r6, #8]
	cmp r0, #0
	beq _02224C7A
	ldr r0, _02224CA0 ; =0x00001FD4
	ldr r1, [r4, #0]
	ldr r0, [r5, r0]
	ldr r2, [r4, #4]
	bl ov13_022249AC
	ldr r0, [sp]
	ldr r1, _02224CA4 ; =0x00001FEC
	ldrb r0, [r0]
	ldr r1, [r5, r1]
	ldr r2, [r7, #0]
	lsl r0, r0, #0x19
	ldr r3, [r7, #4]
	lsr r0, r0, #0x1c
	bl ov13_02224AB0
	ldr r1, _02224CA8 ; =0x00001FB8
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldrh r0, [r6, #0x1e]
	ldr r1, [r5, r1]
	add r2, #8
	add r3, #8
	bl ov13_02224B28
	add r0, r6, #0
	add r0, #0x31
	ldr r1, _02224CAC ; =0x00002038
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldrb r0, [r0]
	ldr r1, [r5, r1]
	add r2, #0x10
	add r3, #8
	bl ov13_02224B5C
_02224C7A:
	ldr r0, [sp]
	add r6, #0x50
	add r0, #0x50
	str r0, [sp]
	ldr r0, [sp, #4]
	add r4, #8
	add r0, r0, #1
	add r5, r5, #4
	add r7, #8
	str r0, [sp, #4]
	cmp r0, #6
	blt _02224C2C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224C98: .word 0x02229404
_02224C9C: .word 0x02229434
_02224CA0: .word 0x00001FD4
_02224CA4: .word 0x00001FEC
_02224CA8: .word 0x00001FB8
_02224CAC: .word 0x00002038
	thumb_func_end ov13_02224C14

	thumb_func_start ov13_02224CB0
ov13_02224CB0: ; 0x02224CB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02224D04 ; =0x00001FB8
	mov r2, #0x48
	ldr r0, [r1, r0]
	mov r1, #0x80
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x50
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224D04 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x88
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r4, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r4]
	mov r3, #0x50
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224D04 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x90
	bl ov13_02224B5C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02224D04: .word 0x00001FB8
	thumb_func_end ov13_02224CB0

	thumb_func_start ov13_02224D08
ov13_02224D08: ; 0x02224D08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02224D94 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrb r0, [r4, #0x17]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r0, r0, #0x19
	add r1, #0xd
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224D94 ; =0x00001FB8
	lsr r0, r0, #0x1c
	ldr r1, [r2, r1]
	mov r2, #0xc6
	bl ov13_02224AB0
	ldr r2, _02224D98 ; =0x022292C4
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224D94 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	add r0, #0x2d
	ldrb r0, [r0]
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224D94 ; =0x00001FB8
	mov r3, #0x14
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	ldr r1, _02224D9C ; =0x00001FD0
	ldrh r0, [r4, #0x1a]
	ldr r1, [r5, r1]
	mov r2, #0x14
	mov r3, #0x84
	bl ov13_02224B28
	pop {r3, r4, r5, pc}
	nop
_02224D94: .word 0x00001FB8
_02224D98: .word 0x022292C4
_02224D9C: .word 0x00001FD0
	thumb_func_end ov13_02224D08

	thumb_func_start ov13_02224DA0
ov13_02224DA0: ; 0x02224DA0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [r0, #0]
	ldrb r2, [r0, #0x11]
	ldr r0, [sp]
	add r1, r0, #4
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r1, r0, #2
	ldr r0, [sp]
	mov r2, #0xc
	add r1, r0, r1
	ldr r0, _02224E64 ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r1, [sp]
	ldrb r0, [r4, #0x17]
	ldr r1, [r1, #0]
	mov r3, #0x14
	ldrb r1, [r1, #0x11]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1c
	add r1, #0xd
	lsl r2, r1, #2
	ldr r1, [sp]
	add r2, r1, r2
	ldr r1, _02224E64 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0xc6
	bl ov13_02224AB0
	ldr r0, [sp]
	ldr r2, _02224E68 ; =0x022292A4
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r1, [sp]
	ldrh r0, [r4, #0x1a]
	ldr r1, [r1, #0]
	mov r3, #0x14
	ldrb r1, [r1, #0x11]
	lsl r2, r1, #2
	ldr r1, [sp]
	add r2, r1, r2
	ldr r1, _02224E64 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [sp]
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r0]
	mov r3, #0x14
	add r1, #0x20
	lsl r2, r1, #2
	ldr r1, [sp]
	add r2, r1, r2
	ldr r1, _02224E64 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	ldr r5, [sp]
	ldr r6, _02224E6C ; =0x02229324
	mov r7, #0
_02224E30:
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _02224E56
	add r3, r4, #0
	ldr r1, _02224E70 ; =0x0000200C
	add r3, #0x34
	ldr r2, _02224E74 ; =0x0000B010
	ldrb r3, [r3]
	ldr r0, [sp]
	ldr r1, [r5, r1]
	add r2, r7, r2
	bl ov13_02224A0C
	ldr r0, _02224E70 ; =0x0000200C
	ldr r1, [r6, #0]
	ldr r0, [r5, r0]
	ldr r2, [r6, #4]
	bl ov13_022249AC
_02224E56:
	add r7, r7, #1
	add r4, #8
	add r5, r5, #4
	add r6, #8
	cmp r7, #4
	blo _02224E30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02224E64: .word 0x00001FB8
_02224E68: .word 0x022292A4
_02224E6C: .word 0x02229324
_02224E70: .word 0x0000200C
_02224E74: .word 0x0000B010
	thumb_func_end ov13_02224DA0

	thumb_func_start ov13_02224E78
ov13_02224E78: ; 0x02224E78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02224F30 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrb r0, [r4, #0x17]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r0, r0, #0x19
	add r1, #0xd
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224F30 ; =0x00001FB8
	lsr r0, r0, #0x1c
	ldr r1, [r2, r1]
	mov r2, #0xc6
	bl ov13_02224AB0
	ldr r2, _02224F34 ; =0x022292B4
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r0, [r5, #0]
	mov r2, #0x30
	add r0, #0x34
	ldrb r0, [r0]
	add r0, #0x15
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02224F30 ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0x88
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224F30 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	add r0, #0x2d
	ldrb r0, [r0]
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224F30 ; =0x00001FB8
	mov r3, #0x14
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	ldr r2, [r5, #0]
	ldr r1, _02224F38 ; =0x00002020
	add r2, #0x34
	ldrb r2, [r2]
	ldr r1, [r5, r1]
	add r0, r5, #0
	lsl r2, r2, #3
	add r2, r4, r2
	add r2, #0x35
	ldrb r2, [r2]
	bl ov13_02224A5C
	ldr r0, _02224F38 ; =0x00002020
	mov r1, #0x18
	ldr r0, [r5, r0]
	mov r2, #0x58
	bl ov13_022249AC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02224F30: .word 0x00001FB8
_02224F34: .word 0x022292B4
_02224F38: .word 0x00002020
	thumb_func_end ov13_02224E78

	thumb_func_start ov13_02224F3C
ov13_02224F3C: ; 0x02224F3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02224FA0 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r2, _02224FA4 ; =0x02229294
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224FA0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r4, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r4]
	mov r3, #0x14
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224FA0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	add r0, r5, #0
	bl ov13_022252E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02224FA0: .word 0x00001FB8
_02224FA4: .word 0x02229294
	thumb_func_end ov13_02224F3C

	thumb_func_start ov13_02224FA8
ov13_02224FA8: ; 0x02224FA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02225060 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r2, _02225064 ; =0x02229284
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r0, [r5, #0]
	mov r2, #0x30
	add r0, #0x34
	ldrb r0, [r0]
	add r0, #0x15
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02225060 ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0x88
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02225060 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	add r0, #0x2d
	ldrb r0, [r0]
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02225060 ; =0x00001FB8
	mov r3, #0x14
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	ldr r1, [r5, #0]
	add r0, r1, #0
	add r0, #0x34
	ldrb r2, [r0]
	cmp r2, #4
	bhs _0222503E
	lsl r2, r2, #3
	add r2, r4, r2
	ldr r1, _02225068 ; =0x00002020
	add r2, #0x35
	ldrb r2, [r2]
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov13_02224A5C
	b _02225052
_0222503E:
	ldrh r0, [r1, #0x24]
	mov r1, #1
	bl sub_020790C4
	ldr r1, _02225068 ; =0x00002020
	add r2, r0, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov13_02224A5C
_02225052:
	ldr r0, _02225068 ; =0x00002020
	mov r1, #0x18
	ldr r0, [r5, r0]
	mov r2, #0x58
	bl ov13_022249AC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02225060: .word 0x00001FB8
_02225064: .word 0x02229284
_02225068: .word 0x00002020
	thumb_func_end ov13_02224FA8

	thumb_func_start ov13_0222506C
ov13_0222506C: ; 0x0222506C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _022250D0 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r2, _022250D4 ; =0x02229294
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _022250D0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r4, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r4]
	mov r3, #0x14
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _022250D0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	add r0, r5, #0
	bl ov13_022252E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022250D0: .word 0x00001FB8
_022250D4: .word 0x02229294
	thumb_func_end ov13_0222506C

	thumb_func_start ov13_022250D8
ov13_022250D8: ; 0x022250D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0222514C ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r0, [r5, #0]
	mov r2, #0x48
	add r0, #0x34
	ldrb r0, [r0]
	add r0, #0x15
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0222514C ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0x88
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _0222514C ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r4, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r4]
	mov r3, #0x14
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _0222514C ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	add r0, r5, #0
	bl ov13_02225420
	pop {r3, r4, r5, pc}
	nop
_0222514C: .word 0x00001FB8
	thumb_func_end ov13_022250D8

	thumb_func_start ov13_02225150
ov13_02225150: ; 0x02225150
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _022251B0 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _022251B0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r4, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r4]
	mov r3, #0x14
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _022251B0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	add r0, r5, #0
	bl ov13_022252E8
	add r0, r5, #0
	bl ov13_02225420
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022251B0: .word 0x00001FB8
	thumb_func_end ov13_02225150

	thumb_func_start ov13_022251B4
ov13_022251B4: ; 0x022251B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	add r2, r6, #4
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mov r4, #0
	mul r0, r1
	add r0, r2, r0
	str r0, [sp]
_022251C8:
	ldr r0, [sp]
	lsl r5, r4, #3
	add r3, r0, r5
	ldrh r0, [r3, #0x30]
	cmp r0, #0
	beq _022251FC
	lsl r0, r4, #2
	add r3, #0x34
	add r7, r6, r0
	ldr r1, _02225234 ; =0x0000200C
	ldr r2, _02225238 ; =0x0000B010
	ldrb r3, [r3]
	ldr r1, [r7, r1]
	add r0, r6, #0
	add r2, r4, r2
	bl ov13_02224A0C
	ldr r0, _0222523C ; =0x022293DC
	ldr r1, _0222523C ; =0x022293DC
	add r2, r0, r5
	ldr r0, _02225234 ; =0x0000200C
	ldr r1, [r1, r5]
	ldr r0, [r7, r0]
	ldr r2, [r2, #4]
	bl ov13_022249AC
_022251FC:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _022251C8
	ldr r0, [r6, #0]
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _02225232
	mov r1, #3
	bl sub_020790C4
	add r3, r0, #0
	ldr r1, _02225240 ; =0x0000201C
	lsl r3, r3, #0x18
	ldr r1, [r6, r1]
	ldr r2, _02225244 ; =0x0000B014
	add r0, r6, #0
	lsr r3, r3, #0x18
	bl ov13_02224A0C
	ldr r0, _02225240 ; =0x0000201C
	mov r1, #0x58
	ldr r0, [r6, r0]
	mov r2, #0xb0
	bl ov13_022249AC
_02225232:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225234: .word 0x0000200C
_02225238: .word 0x0000B010
_0222523C: .word 0x022293DC
_02225240: .word 0x0000201C
_02225244: .word 0x0000B014
	thumb_func_end ov13_022251B4

	thumb_func_start ov13_02225248
ov13_02225248: ; 0x02225248
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	add r2, r7, #4
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mov r4, #0
	mul r0, r1
	add r0, r2, r0
	str r0, [sp]
_0222525C:
	ldr r0, [sp]
	lsl r5, r4, #3
	add r0, r0, r5
	ldrh r0, [r0, #0x30]
	cmp r0, #0
	beq _0222529A
	lsl r1, r4, #2
	add r6, r7, r1
	mov r1, #0xb
	bl sub_020790C4
	add r3, r0, #0
	ldr r1, _022252D4 ; =0x0000200C
	ldr r2, _022252D8 ; =0x0000B010
	add r3, #0x12
	lsl r3, r3, #0x18
	ldr r1, [r6, r1]
	add r0, r7, #0
	add r2, r4, r2
	lsr r3, r3, #0x18
	bl ov13_02224A0C
	ldr r0, _022252DC ; =0x022293DC
	ldr r1, _022252DC ; =0x022293DC
	add r2, r0, r5
	ldr r0, _022252D4 ; =0x0000200C
	ldr r1, [r1, r5]
	ldr r0, [r6, r0]
	ldr r2, [r2, #4]
	bl ov13_022249AC
_0222529A:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0222525C
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _022252D2
	mov r1, #0xb
	bl sub_020790C4
	add r3, r0, #0
	ldr r1, _022252E0 ; =0x0000201C
	add r3, #0x12
	lsl r3, r3, #0x18
	ldr r1, [r7, r1]
	ldr r2, _022252E4 ; =0x0000B014
	add r0, r7, #0
	lsr r3, r3, #0x18
	bl ov13_02224A0C
	ldr r0, _022252E0 ; =0x0000201C
	mov r1, #0x58
	ldr r0, [r7, r0]
	mov r2, #0xb0
	bl ov13_022249AC
_022252D2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022252D4: .word 0x0000200C
_022252D8: .word 0x0000B010
_022252DC: .word 0x022293DC
_022252E0: .word 0x0000201C
_022252E4: .word 0x0000B014
	thumb_func_end ov13_02225248

	thumb_func_start ov13_022252E8
ov13_022252E8: ; 0x022252E8
	push {r3, lr}
	ldr r1, _02225300 ; =0x00002077
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bne _022252FA
	bl ov13_022251B4
	pop {r3, pc}
_022252FA:
	bl ov13_02225248
	pop {r3, pc}
	; .align 2, 0
_02225300: .word 0x00002077
	thumb_func_end ov13_022252E8

	thumb_func_start ov13_02225304
ov13_02225304: ; 0x02225304
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200D37C
	cmp r4, r0
	beq _02225322
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D3CC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D364
_02225322:
	pop {r3, r4, r5, pc}
	thumb_func_end ov13_02225304

	thumb_func_start ov13_02225324
ov13_02225324: ; 0x02225324
	push {r3, lr}
	add r2, r0, #0
	ldrh r0, [r2, #0x10]
	cmp r0, #0
	bne _02225332
	mov r0, #0
	pop {r3, pc}
_02225332:
	ldrb r1, [r2, #0x17]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1c
	cmp r1, #7
	beq _02225344
	cmp r1, #6
	beq _02225344
	mov r0, #5
	pop {r3, pc}
_02225344:
	ldrh r1, [r2, #0x12]
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _02225376
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222535C: ; jump table
	.short _02225376 - _0222535C - 2 ; case 0
	.short _02225372 - _0222535C - 2 ; case 1
	.short _0222536E - _0222535C - 2 ; case 2
	.short _0222536A - _0222535C - 2 ; case 3
	.short _02225366 - _0222535C - 2 ; case 4
_02225366:
	mov r0, #1
	pop {r3, pc}
_0222536A:
	mov r0, #2
	pop {r3, pc}
_0222536E:
	mov r0, #3
	pop {r3, pc}
_02225372:
	mov r0, #4
	pop {r3, pc}
_02225376:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov13_02225324

	thumb_func_start ov13_0222537C
ov13_0222537C: ; 0x0222537C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r4, #0
	ldr r0, [r0, #0]
	bl sub_0207A0F8
	cmp r0, #0
	ble _022253D4
	add r7, r5, #4
_02225390:
	mov r0, #0x50
	add r1, r4, #0
	mul r1, r0
	add r0, r5, r1
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _022253C2
	add r0, r7, r1
	bl ov13_02225324
	add r1, r0, #0
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, _022253D8 ; =0x00001FD4
	lsl r1, r1, #0x18
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	bl ov13_02225304
	ldr r0, _022253D8 ; =0x00001FD4
	mov r1, #1
	ldr r0, [r6, r0]
	lsl r1, r1, #0xc
	bl sub_0200D34C
_022253C2:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0207A0F8
	cmp r4, r0
	blt _02225390
_022253D4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022253D8: .word 0x00001FD4
	thumb_func_end ov13_0222537C

	thumb_func_start ov13_022253DC
ov13_022253DC: ; 0x022253DC
	push {r4, lr}
	add r4, r2, #0
	cmp r4, r1
	ble _02225402
	add r0, #0x2c
	sub r1, r4, r1
	mul r1, r0
	lsl r0, r1, #0x10
	mov r1, #0x4b
	lsl r1, r1, #2
	bl sub_020E2178
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, pc}
_02225402:
	add r0, #0x2c
	sub r1, r1, r4
	mul r1, r0
	lsl r0, r1, #0x10
	mov r1, #0x4b
	lsl r1, r1, #2
	bl sub_020E2178
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, pc}
	thumb_func_end ov13_022253DC

	thumb_func_start ov13_02225420
ov13_02225420: ; 0x02225420
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	add r5, r6, #4
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	add r4, r1, #0
	mul r4, r0
	ldr r0, _02225538 ; =0x00002024
	mov r1, #0
	ldr r0, [r6, r0]
	bl ov13_02225304
	ldr r0, _0222553C ; =0x00002028
	mov r1, #1
	ldr r0, [r6, r0]
	bl ov13_02225304
	ldr r0, _02225540 ; =0x0000202C
	mov r1, #3
	ldr r0, [r6, r0]
	bl ov13_02225304
	ldr r0, _02225544 ; =0x00002030
	mov r1, #4
	ldr r0, [r6, r0]
	bl ov13_02225304
	ldr r0, _02225548 ; =0x00002034
	mov r1, #2
	ldr r0, [r6, r0]
	bl ov13_02225304
	add r0, r5, r4
	add r0, #0x28
	mov r1, #0x90
	ldrb r0, [r0]
	add r2, r1, #0
	bl ov13_022253DC
	add r7, r0, #0
	add r0, r5, r4
	add r0, #0x28
	ldrb r0, [r0]
	mov r1, #2
	mov r2, #0x18
	bl ov13_022253DC
	add r2, r0, #0
	ldr r0, _02225538 ; =0x00002024
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl ov13_022249AC
	add r0, r5, r4
	add r0, #0x29
	ldrb r0, [r0]
	mov r1, #0xa4
	mov r2, #0x90
	bl ov13_022253DC
	add r7, r0, #0
	add r0, r5, r4
	add r0, #0x29
	ldrb r0, [r0]
	mov r1, #0x10
	mov r2, #0x18
	bl ov13_022253DC
	add r2, r0, #0
	ldr r0, _0222553C ; =0x00002028
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl ov13_022249AC
	add r0, r5, r4
	add r0, #0x2a
	ldrb r0, [r0]
	mov r1, #0x9c
	mov r2, #0x90
	bl ov13_022253DC
	add r7, r0, #0
	add r0, r5, r4
	add r0, #0x2a
	ldrb r0, [r0]
	mov r1, #0x29
	mov r2, #0x18
	bl ov13_022253DC
	add r2, r0, #0
	ldr r0, _02225540 ; =0x0000202C
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl ov13_022249AC
	add r0, r5, r4
	add r0, #0x2b
	ldrb r0, [r0]
	mov r1, #0x83
	mov r2, #0x8f
	bl ov13_022253DC
	add r7, r0, #0
	add r0, r5, r4
	add r0, #0x2b
	ldrb r0, [r0]
	mov r1, #0x29
	mov r2, #0x18
	bl ov13_022253DC
	add r2, r0, #0
	ldr r0, _02225544 ; =0x00002030
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl ov13_022249AC
	add r0, r5, r4
	add r0, #0x2c
	ldrb r0, [r0]
	mov r1, #0x7b
	mov r2, #0x8f
	bl ov13_022253DC
	add r7, r0, #0
	add r0, r5, r4
	add r0, #0x2c
	ldrb r0, [r0]
	mov r1, #0x10
	mov r2, #0x18
	bl ov13_022253DC
	add r2, r0, #0
	ldr r0, _02225548 ; =0x00002034
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl ov13_022249AC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02225538: .word 0x00002024
_0222553C: .word 0x00002028
_02225540: .word 0x0000202C
_02225544: .word 0x00002030
_02225548: .word 0x00002034
	thumb_func_end ov13_02225420

	thumb_func_start ov13_0222554C
ov13_0222554C: ; 0x0222554C
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	ldr r1, _022255A8 ; =0x0000B018
	mov r2, #0x7a
	str r1, [sp]
	sub r1, #0xc
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, _022255AC ; =0x00001FB4
	ldr r3, [r5, #0]
	lsl r2, r2, #2
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r3, #0xc]
	add r4, r0, #0
	bl ov16_0226DB7C
	ldr r3, _022255B0 ; =0x0000B00C
	mov r0, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r1, _022255AC ; =0x00001FB4
	ldr r2, [r5, #0]
	ldr r1, [r5, r1]
	ldr r2, [r2, #0xc]
	add r0, r4, #0
	add r3, #0xc
	bl ov16_0226DC24
	add r1, r0, #0
	ldr r0, _022255B4 ; =0x00002088
	ldr r0, [r5, r0]
	bl ov13_02228A64
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_022255A8: .word 0x0000B018
_022255AC: .word 0x00001FB4
_022255B0: .word 0x0000B00C
_022255B4: .word 0x00002088
	thumb_func_end ov13_0222554C

	thumb_func_start ov13_022255B8
ov13_022255B8: ; 0x022255B8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _022255E0 ; =0x00002088
	ldr r0, [r4, r0]
	bl ov13_02228A58
	bl ov16_0226DCA8
	ldr r2, _022255E4 ; =0x0000B00C
	ldr r0, _022255E8 ; =0x00001FB4
	str r2, [sp]
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r1, #0xc
	add r3, r2, #0
	bl ov16_0226DBFC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022255E0: .word 0x00002088
_022255E4: .word 0x0000B00C
_022255E8: .word 0x00001FB4
	thumb_func_end ov13_022255B8

	thumb_func_start ov13_022255EC
ov13_022255EC: ; 0x022255EC
	push {r3, lr}
	ldr r1, _02225610 ; =0x00002077
	ldrb r2, [r0, r1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1c
	bne _02225604
	add r1, #0x11
	ldr r0, [r0, r1]
	mov r1, #0x5f
	bl ov13_02228AC8
	pop {r3, pc}
_02225604:
	add r1, #0x11
	ldr r0, [r0, r1]
	mov r1, #0x7f
	bl ov13_02228AC8
	pop {r3, pc}
	; .align 2, 0
_02225610: .word 0x00002077
	thumb_func_end ov13_022255EC

	thumb_func_start ov13_02225614
ov13_02225614: ; 0x02225614
	push {r3, lr}
	ldr r1, _02225638 ; =0x00002077
	ldrb r2, [r0, r1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1c
	bne _0222562C
	add r1, #0x11
	ldr r0, [r0, r1]
	mov r1, #5
	bl ov13_02228AC8
	pop {r3, pc}
_0222562C:
	add r1, #0x11
	ldr r0, [r0, r1]
	mov r1, #7
	bl ov13_02228AC8
	pop {r3, pc}
	; .align 2, 0
_02225638: .word 0x00002077
	thumb_func_end ov13_02225614

	thumb_func_start ov13_0222563C
ov13_0222563C: ; 0x0222563C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, _022256DC ; =0x00002088
	ldr r1, _022256E0 ; =0x0222938C
	lsl r2, r5, #2
	ldr r0, [r4, r0]
	ldr r1, [r1, r2]
	bl ov13_02228A9C
	cmp r5, #9
	bhi _022256DA
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02225660: ; jump table
	.short _02225674 - _02225660 - 2 ; case 0
	.short _0222568E - _02225660 - 2 ; case 1
	.short _022256DA - _02225660 - 2 ; case 2
	.short _022256A4 - _02225660 - 2 ; case 3
	.short _022256A4 - _02225660 - 2 ; case 4
	.short _022256DA - _02225660 - 2 ; case 5
	.short _022256B4 - _02225660 - 2 ; case 6
	.short _022256C8 - _02225660 - 2 ; case 7
	.short _022256B4 - _02225660 - 2 ; case 8
	.short _022256C8 - _02225660 - 2 ; case 9
_02225674:
	ldr r1, [r4, #0]
	ldr r0, _022256DC ; =0x00002088
	ldrb r1, [r1, #0x11]
	ldr r0, [r4, r0]
	bl ov13_02228A68
	ldr r0, _022256E4 ; =0x0000208C
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, [r4, #0]
	add r0, #0x34
	strb r1, [r0]
	pop {r3, r4, r5, pc}
_0222568E:
	ldr r1, _022256DC ; =0x00002088
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldrb r1, [r4, r1]
	bl ov13_02228A68
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, #0x34
	strb r1, [r0]
	pop {r3, r4, r5, pc}
_022256A4:
	ldr r1, [r4, #0]
	ldr r0, _022256DC ; =0x00002088
	add r1, #0x34
	ldrb r1, [r1]
	ldr r0, [r4, r0]
	bl ov13_02228A68
	pop {r3, r4, r5, pc}
_022256B4:
	add r0, r4, #0
	bl ov13_022255EC
	ldr r1, _022256DC ; =0x00002088
	ldr r0, [r4, r1]
	add r1, r1, #5
	ldrb r1, [r4, r1]
	bl ov13_02228A68
	pop {r3, r4, r5, pc}
_022256C8:
	add r0, r4, #0
	bl ov13_02225614
	ldr r1, _022256DC ; =0x00002088
	ldr r0, [r4, r1]
	add r1, r1, #6
	ldrb r1, [r4, r1]
	bl ov13_02228A68
_022256DA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022256DC: .word 0x00002088
_022256E0: .word 0x0222938C
_022256E4: .word 0x0000208C
	thumb_func_end ov13_0222563C

	thumb_func_start ov13_022256E8
ov13_022256E8: ; 0x022256E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222570C ; =0x00002088
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov13_02228A60
	ldr r0, _0222570C ; =0x00002088
	ldr r0, [r4, r0]
	bl ov13_02228A90
	ldr r0, _0222570C ; =0x00002088
	ldr r0, [r4, r0]
	bl ov13_02228A58
	bl ov16_0226DDE8
	pop {r4, pc}
	; .align 2, 0
_0222570C: .word 0x00002088
	thumb_func_end ov13_022256E8

	thumb_func_start ov13_02225710
ov13_02225710: ; 0x02225710
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x7b
	lsl r0, r0, #2
	mov r2, #0
	add r0, r5, r0
	add r3, r2, #0
	add r4, r1, #0
	bl ov13_02225AF0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xab
	lsl r0, r0, #2
	mov r3, #6
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	str r3, [sp, #4]
	bl ov13_02225AF0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0xdb
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0xc
	bl ov13_02225AF0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _022259D0 ; =0x0000042C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x12
	bl ov13_02225AF0
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _022259D4 ; =0x000004EC
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0
	bl ov13_02225AF0
	ldr r0, _022259D8 ; =0x000005AC
	mov r2, #0x10
	str r2, [sp]
	mov r3, #6
	add r0, r5, r0
	add r1, r4, #0
	str r3, [sp, #4]
	bl ov13_02225AF0
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _022259DC ; =0x0000066C
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0xc
	bl ov13_02225AF0
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _022259E0 ; =0x0000072C
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0x12
	bl ov13_02225AF0
	mov r0, #0xd
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022259E4 ; =0x000007EC
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x27
	bl ov13_02225AF0
	mov r0, #0xd
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022259E8 ; =0x0000086E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x2c
	bl ov13_02225AF0
	mov r2, #0xd
	str r2, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x8f
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x27
	bl ov13_02225AF0
	mov r2, #0xd
	str r2, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022259EC ; =0x00000972
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0x2c
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022259F0 ; =0x000009F4
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x31
	bl ov13_02225AF0
	ldr r0, _022259F4 ; =0x00000A26
	mov r2, #5
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x31
	str r2, [sp, #4]
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022259F8 ; =0x00000A58
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x31
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022259FC ; =0x00000A8A
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xf
	mov r3, #0x31
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A00 ; =0x00000ABC
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x36
	bl ov13_02225AF0
	ldr r0, _02225A04 ; =0x00000AEE
	mov r2, #5
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x36
	str r2, [sp, #4]
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xb2
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0xa
	mov r3, #0x36
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A08 ; =0x00000B52
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xf
	mov r3, #0x36
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A0C ; =0x00000B84
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1a
	mov r3, #0x18
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A10 ; =0x00000BB6
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1a
	mov r3, #0x1d
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A14 ; =0x00000BE8
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1a
	mov r3, #0x22
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A18 ; =0x00000C1A
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1a
	mov r3, #0x27
	bl ov13_02225AF0
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x6d
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x18
	bl ov13_02225AF0
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _02225A1C ; =0x00001C44
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x1d
	bl ov13_02225AF0
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _02225A20 ; =0x00001D48
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x22
	bl ov13_02225AF0
	mov r0, #9
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02225A24 ; =0x00001E4C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x31
	bl ov13_02225AF0
	mov r0, #9
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02225A28 ; =0x00001E94
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x35
	bl ov13_02225AF0
	mov r0, #9
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02225A2C ; =0x00001EDC
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x39
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02225A30 ; =0x00001F24
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x3b
	bl ov13_02225AF0
	mov r2, #5
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02225A34 ; =0x00001F38
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0x3b
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02225A38 ; =0x00001F4C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x3b
	bl ov13_02225AF0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022259D0: .word 0x0000042C
_022259D4: .word 0x000004EC
_022259D8: .word 0x000005AC
_022259DC: .word 0x0000066C
_022259E0: .word 0x0000072C
_022259E4: .word 0x000007EC
_022259E8: .word 0x0000086E
_022259EC: .word 0x00000972
_022259F0: .word 0x000009F4
_022259F4: .word 0x00000A26
_022259F8: .word 0x00000A58
_022259FC: .word 0x00000A8A
_02225A00: .word 0x00000ABC
_02225A04: .word 0x00000AEE
_02225A08: .word 0x00000B52
_02225A0C: .word 0x00000B84
_02225A10: .word 0x00000BB6
_02225A14: .word 0x00000BE8
_02225A18: .word 0x00000C1A
_02225A1C: .word 0x00001C44
_02225A20: .word 0x00001D48
_02225A24: .word 0x00001E4C
_02225A28: .word 0x00001E94
_02225A2C: .word 0x00001EDC
_02225A30: .word 0x00001F24
_02225A34: .word 0x00001F38
_02225A38: .word 0x00001F4C
	thumb_func_end ov13_02225710

	thumb_func_start ov13_02225A3C
ov13_02225A3C: ; 0x02225A3C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	ldr r0, _02225AE4 ; =0x00000C4C
	mov r2, #0
	add r0, r5, r0
	add r3, r2, #0
	add r4, r1, #0
	bl ov13_02225AF0
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, _02225AE8 ; =0x00001048
	mov r3, #0x11
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	str r3, [sp, #4]
	bl ov13_02225AF0
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	ldr r0, _02225AEC ; =0x00001444
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x22
	bl ov13_02225AF0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x61
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x33
	bl ov13_02225AF0
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x19
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x33
	bl ov13_02225AF0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x67
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x39
	bl ov13_02225AF0
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x6a
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x39
	bl ov13_02225AF0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02225AE4: .word 0x00000C4C
_02225AE8: .word 0x00001048
_02225AEC: .word 0x00001444
	thumb_func_end ov13_02225A3C

	thumb_func_start ov13_02225AF0
ov13_02225AF0: ; 0x02225AF0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r0, sp, #8
	mov lr, r3
	ldrb r3, [r0, #0x14]
	mov r6, #0
	mov ip, r3
	cmp r3, #0
	ble _02225B3C
	ldrb r3, [r0, #0x10]
	lsl r2, r2, #1
	add r7, r1, r2
_02225B08:
	mov r2, #0
	cmp r3, #0
	ble _02225B30
	mov r0, lr
	add r0, r0, r6
	lsl r0, r0, #6
	add r5, r7, r0
	add r0, r6, #0
	mul r0, r3
	lsl r1, r0, #1
	ldr r0, [sp]
	add r4, r0, r1
_02225B20:
	lsl r1, r2, #1
	ldrh r0, [r5, r1]
	strh r0, [r4, r1]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, r3
	blt _02225B20
_02225B30:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, ip
	cmp r6, r0
	blt _02225B08
_02225B3C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02225AF0

	thumb_func_start ov13_02225B40
ov13_02225B40: ; 0x02225B40
	cmp r1, #0x21
	bhi _02225C26
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225B50: ; jump table
	.short _02225B94 - _02225B50 - 2 ; case 0
	.short _02225B94 - _02225B50 - 2 ; case 1
	.short _02225B94 - _02225B50 - 2 ; case 2
	.short _02225B94 - _02225B50 - 2 ; case 3
	.short _02225B94 - _02225B50 - 2 ; case 4
	.short _02225B94 - _02225B50 - 2 ; case 5
	.short _02225BB2 - _02225B50 - 2 ; case 6
	.short _02225BBE - _02225B50 - 2 ; case 7
	.short _02225BCC - _02225B50 - 2 ; case 8
	.short _02225BCC - _02225B50 - 2 ; case 9
	.short _02225BCC - _02225B50 - 2 ; case 10
	.short _02225BCC - _02225B50 - 2 ; case 11
	.short _02225BD8 - _02225B50 - 2 ; case 12
	.short _02225BE4 - _02225B50 - 2 ; case 13
	.short _02225BF0 - _02225B50 - 2 ; case 14
	.short _02225BF0 - _02225B50 - 2 ; case 15
	.short _02225BF0 - _02225B50 - 2 ; case 16
	.short _02225BF0 - _02225B50 - 2 ; case 17
	.short _02225C0E - _02225B50 - 2 ; case 18
	.short _02225BF0 - _02225B50 - 2 ; case 19
	.short _02225BF0 - _02225B50 - 2 ; case 20
	.short _02225BF0 - _02225B50 - 2 ; case 21
	.short _02225BF0 - _02225B50 - 2 ; case 22
	.short _02225BF0 - _02225B50 - 2 ; case 23
	.short _02225BF0 - _02225B50 - 2 ; case 24
	.short _02225BF0 - _02225B50 - 2 ; case 25
	.short _02225BF0 - _02225B50 - 2 ; case 26
	.short _02225BF0 - _02225B50 - 2 ; case 27
	.short _02225BFE - _02225B50 - 2 ; case 28
	.short _02225BFE - _02225B50 - 2 ; case 29
	.short _02225C1A - _02225B50 - 2 ; case 30
	.short _02225C1A - _02225B50 - 2 ; case 31
	.short _02225C1A - _02225B50 - 2 ; case 32
	.short _02225C1A - _02225B50 - 2 ; case 33
_02225B94:
	cmp r3, #0
	bne _02225BA6
	mov r1, #0x7b
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xc0
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BA6:
	ldr r1, _02225C2C ; =0x000004EC
	add r1, r0, r1
	mov r0, #0xc0
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BB2:
	ldr r1, _02225C30 ; =0x00000B84
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BBE:
	ldr r1, _02225C34 ; =0x00000C4C
	add r1, r0, r1
	mov r0, #0xff
	lsl r0, r0, #2
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BCC:
	ldr r1, _02225C38 ; =0x000007EC
	add r1, r0, r1
	mov r0, #0x82
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BD8:
	ldr r1, _02225C3C ; =0x000009F4
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BE4:
	ldr r1, _02225C40 ; =0x00000ABC
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BF0:
	mov r1, #0x61
	lsl r1, r1, #6
	add r1, r0, r1
	mov r0, #0xc0
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BFE:
	mov r1, #0x6d
	lsl r1, r1, #6
	add r1, r0, r1
	lsl r0, r2, #6
	add r0, r2, r0
	lsl r0, r0, #2
	add r0, r1, r0
	bx lr
_02225C0E:
	ldr r1, _02225C44 ; =0x00001E4C
	add r1, r0, r1
	mov r0, #0x48
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225C1A:
	ldr r1, _02225C48 ; =0x00001F24
	add r1, r0, r1
	mov r0, #0x14
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225C26:
	mov r0, #0
	bx lr
	nop
_02225C2C: .word 0x000004EC
_02225C30: .word 0x00000B84
_02225C34: .word 0x00000C4C
_02225C38: .word 0x000007EC
_02225C3C: .word 0x000009F4
_02225C40: .word 0x00000ABC
_02225C44: .word 0x00001E4C
_02225C48: .word 0x00001F24
	thumb_func_end ov13_02225B40

	thumb_func_start ov13_02225C4C
ov13_02225C4C: ; 0x02225C4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r2, r3, #0
	add r3, sp, #0x10
	add r4, r1, #0
	ldrb r3, [r3, #0x10]
	add r1, r7, #0
	str r0, [sp]
	bl ov13_02225B40
	add r1, r0, #0
	ldr r2, _02225D80 ; =0x02229926
	lsl r0, r7, #2
	ldrb r6, [r2, r0]
	ldr r2, _02225D84 ; =0x02229927
	ldrb r0, [r2, r0]
	add r5, r6, #0
	mul r5, r0
	add r0, r4, #0
	lsl r2, r5, #1
	bl sub_020D50B8
	cmp r7, #5
	bgt _02225C9A
	cmp r7, #0
	blt _02225D7C
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02225C8E: ; jump table
	.short _02225CA2 - _02225C8E - 2 ; case 0
	.short _02225CA2 - _02225C8E - 2 ; case 1
	.short _02225CA2 - _02225C8E - 2 ; case 2
	.short _02225CA2 - _02225C8E - 2 ; case 3
	.short _02225CA2 - _02225C8E - 2 ; case 4
	.short _02225CA2 - _02225C8E - 2 ; case 5
_02225C9A:
	cmp r7, #0x1b
	beq _02225D5C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02225CA2:
	mov r0, #0x50
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _02225D7C
	ldrb r1, [r0, #0x1b]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _02225D02
	lsl r2, r6, #1
	add r0, r2, #5
	lsl r0, r0, #1
	ldrh r1, [r4, r0]
	add r0, sp, #4
	strh r1, [r0]
	add r1, r6, r2
	add r1, r1, #5
	lsl r1, r1, #1
	ldrh r1, [r4, r1]
	strh r1, [r0, #2]
	mov r1, #0
	add r0, sp, #4
_02225CD4:
	add r5, r1, #2
	lsl r3, r1, #1
	add r7, r5, #0
	mul r7, r6
	lsl r5, r7, #1
	ldrh r3, [r0, r3]
	mov r2, #0
	add r5, r4, r5
_02225CE4:
	lsl r7, r2, #1
	add r2, r2, #1
	lsl r2, r2, #0x18
	add r7, r5, r7
	lsr r2, r2, #0x18
	strh r3, [r7, #0xc]
	cmp r2, #9
	blo _02225CE4
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #2
	blo _02225CD4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02225D02:
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	bne _02225D2C
	mov r1, #0
	cmp r5, #0
	ble _02225D7C
	mov r3, #2
	ldr r2, _02225D88 ; =0x00000FFF
	lsl r3, r3, #0xc
_02225D14:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r2
	orr r6, r3
	strh r6, [r4, r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blt _02225D14
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02225D2C:
	lsl r1, r7, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov13_022219AC
	cmp r0, #1
	bne _02225D7C
	mov r1, #0
	cmp r5, #0
	ble _02225D7C
	ldr r2, _02225D88 ; =0x00000FFF
	add r3, r2, #1
_02225D44:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r2
	orr r6, r3
	strh r6, [r4, r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blt _02225D44
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02225D5C:
	mov r1, #0
	cmp r5, #0
	ble _02225D7C
	mov r3, #0xa
	ldr r2, _02225D88 ; =0x00000FFF
	lsl r3, r3, #0xc
_02225D68:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r2
	orr r6, r3
	strh r6, [r4, r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blt _02225D68
_02225D7C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225D80: .word 0x02229926
_02225D84: .word 0x02229927
_02225D88: .word 0x00000FFF
	thumb_func_end ov13_02225C4C

	thumb_func_start ov13_02225D8C
ov13_02225D8C: ; 0x02225D8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	lsl r4, r0, #2
	ldr r0, _02225DF8 ; =0x02229927
	ldrb r7, [r0, r4]
	ldr r0, _02225DFC ; =0x02229926
	ldrb r6, [r0, r4]
	ldr r0, [r5, #0]
	add r1, r6, #0
	mul r1, r7
	ldr r0, [r0, #0xc]
	lsl r1, r1, #1
	bl sub_02018144
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	bl ov13_02225C4C
	ldr r0, _02225E00 ; =0x02229925
	ldr r3, _02225E04 ; =0x02229924
	ldrb r0, [r0, r4]
	ldrb r3, [r3, r4]
	ldr r2, [sp, #0x18]
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0x79
	str r7, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_020198C0
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_0201C3C0
	ldr r0, [sp, #0x18]
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02225DF8: .word 0x02229927
_02225DFC: .word 0x02229926
_02225E00: .word 0x02229925
_02225E04: .word 0x02229924
	thumb_func_end ov13_02225D8C

	thumb_func_start ov13_02225E08
ov13_02225E08: ; 0x02225E08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02225EA8 ; =0x0222989C
	lsl r3, r1, #2
	ldr r6, [r0, r3]
	cmp r6, #0
	beq _02225EA6
	cmp r1, #5
	bhi _02225E22
	ldr r0, _02225EAC ; =0x0222988C
	ldrb r0, [r0, r2]
	str r0, [sp]
	b _02225E28
_02225E22:
	ldr r0, _02225EB0 ; =0x0222987C
	ldrb r0, [r0, r2]
	str r0, [sp]
_02225E28:
	cmp r2, #0
	beq _02225E36
	cmp r2, #1
	beq _02225E3A
	cmp r2, #2
	beq _02225E3E
	b _02225E40
_02225E36:
	mov r7, #1
	b _02225E40
_02225E3A:
	mov r7, #0
	b _02225E40
_02225E3E:
	mov r7, #1
_02225E40:
	cmp r1, #0xe
	blo _02225E74
	cmp r1, #0x11
	bhi _02225E74
	ldr r1, _02225EB4 ; =0x00002070
	ldr r2, [sp]
	ldr r0, [r5, r1]
	add r1, r1, #5
	ldrb r1, [r5, r1]
	mov r3, #0
	ldrb r1, [r6, r1]
	lsl r1, r1, #4
	add r0, r0, r1
	add r1, r7, #0
	bl sub_0201C04C
	ldr r1, _02225EB4 ; =0x00002070
	ldr r0, [r5, r1]
	add r1, r1, #5
	ldrb r1, [r5, r1]
	ldrb r1, [r6, r1]
	lsl r1, r1, #4
	add r0, r0, r1
	bl sub_0201A9A4
	pop {r3, r4, r5, r6, r7, pc}
_02225E74:
	mov r4, #0
_02225E76:
	ldrb r2, [r6, r4]
	cmp r2, #0xff
	beq _02225EA6
	ldr r0, _02225EB4 ; =0x00002070
	mov r3, #0
	ldr r1, [r5, r0]
	lsl r0, r2, #4
	add r0, r1, r0
	ldr r2, [sp]
	add r1, r7, #0
	bl sub_0201C04C
	ldr r0, _02225EB4 ; =0x00002070
	ldr r1, [r5, r0]
	ldrb r0, [r6, r4]
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #8
	blo _02225E76
_02225EA6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225EA8: .word 0x0222989C
_02225EAC: .word 0x0222988C
_02225EB0: .word 0x0222987C
_02225EB4: .word 0x00002070
	thumb_func_end ov13_02225E08

	thumb_func_start ov13_02225EB8
ov13_02225EB8: ; 0x02225EB8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x1b
	bhi _02225FBC
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02225ECE: ; jump table
	.short _02225F06 - _02225ECE - 2 ; case 0
	.short _02225F06 - _02225ECE - 2 ; case 1
	.short _02225F06 - _02225ECE - 2 ; case 2
	.short _02225F06 - _02225ECE - 2 ; case 3
	.short _02225F06 - _02225ECE - 2 ; case 4
	.short _02225F06 - _02225ECE - 2 ; case 5
	.short _02225FBC - _02225ECE - 2 ; case 6
	.short _02225F44 - _02225ECE - 2 ; case 7
	.short _02225FBC - _02225ECE - 2 ; case 8
	.short _02225FBC - _02225ECE - 2 ; case 9
	.short _02225FBC - _02225ECE - 2 ; case 10
	.short _02225FBC - _02225ECE - 2 ; case 11
	.short _02225FBC - _02225ECE - 2 ; case 12
	.short _02225FBC - _02225ECE - 2 ; case 13
	.short _02225F76 - _02225ECE - 2 ; case 14
	.short _02225F76 - _02225ECE - 2 ; case 15
	.short _02225F76 - _02225ECE - 2 ; case 16
	.short _02225F76 - _02225ECE - 2 ; case 17
	.short _02225FBC - _02225ECE - 2 ; case 18
	.short _02225F8E - _02225ECE - 2 ; case 19
	.short _02225F8E - _02225ECE - 2 ; case 20
	.short _02225F8E - _02225ECE - 2 ; case 21
	.short _02225F8E - _02225ECE - 2 ; case 22
	.short _02225FA6 - _02225ECE - 2 ; case 23
	.short _02225FA6 - _02225ECE - 2 ; case 24
	.short _02225FA6 - _02225ECE - 2 ; case 25
	.short _02225FA6 - _02225ECE - 2 ; case 26
	.short _02225FA6 - _02225ECE - 2 ; case 27
_02225F06:
	ldr r0, _02225FC0 ; =0x02229896
	lsl r1, r2, #1
	ldrsh r6, [r0, r1]
	add r0, r5, #0
	add r0, #0xd
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	add r2, r6, #0
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	add r2, r6, #0
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	add r0, r5, #7
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	add r2, r6, #0
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	pop {r4, r5, r6, pc}
_02225F44:
	ldr r0, _02225FC8 ; =0x02229890
	lsl r1, r2, #1
	ldrsh r5, [r0, r1]
	ldr r0, [r4, #0]
	ldrb r0, [r0, #0x11]
	add r2, r5, #0
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	ldr r0, [r4, #0]
	add r2, r5, #0
	ldrb r0, [r0, #0x11]
	add r0, r0, #7
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	pop {r4, r5, r6, pc}
_02225F76:
	add r0, r5, #7
	lsl r0, r0, #2
	lsl r3, r2, #1
	ldr r2, _02225FC8 ; =0x02229890
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	ldrsh r2, [r2, r3]
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	pop {r4, r5, r6, pc}
_02225F8E:
	add r0, r5, #2
	lsl r0, r0, #2
	lsl r3, r2, #1
	ldr r2, _02225FC8 ; =0x02229890
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	ldrsh r2, [r2, r3]
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	pop {r4, r5, r6, pc}
_02225FA6:
	sub r0, r5, #2
	lsl r0, r0, #2
	lsl r3, r2, #1
	ldr r2, _02225FC8 ; =0x02229890
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	ldrsh r2, [r2, r3]
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
_02225FBC:
	pop {r4, r5, r6, pc}
	nop
_02225FC0: .word 0x02229896
_02225FC4: .word 0x00001FB8
_02225FC8: .word 0x02229890
	thumb_func_end ov13_02225EB8

	thumb_func_start ov13_02225FCC
ov13_02225FCC: ; 0x02225FCC
	push {r4, r5, r6, lr}
	ldr r3, _02226014 ; =0x00001FA3
	add r5, r0, #0
	ldrb r6, [r5, r3]
	mov r2, #0x70
	add r4, r1, #0
	bic r6, r2
	strb r6, [r5, r3]
	cmp r4, #5
	bhi _02225FF6
	bl ov13_022213F0
	cmp r0, #2
	bne _02225FF6
	ldr r1, _02226014 ; =0x00001FA3
	mov r0, #0x70
	ldrb r2, [r5, r1]
	bic r2, r0
	mov r0, #0x10
	orr r0, r2
	strb r0, [r5, r1]
_02225FF6:
	ldr r0, _02226018 ; =0x00001FA0
	mov r2, #0
	strb r2, [r5, r0]
	add r1, r0, #1
	strb r2, [r5, r1]
	add r1, r0, #2
	strb r4, [r5, r1]
	add r1, r0, #3
	ldrb r2, [r5, r1]
	mov r1, #0x80
	add r0, r0, #3
	orr r1, r2
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_02226014: .word 0x00001FA3
_02226018: .word 0x00001FA0
	thumb_func_end ov13_02225FCC

	thumb_func_start ov13_0222601C
ov13_0222601C: ; 0x0222601C
	push {r4, lr}
	ldr r2, _022260E0 ; =0x00001FA3
	add r4, r0, #0
	ldrb r3, [r4, r2]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x1f
	beq _022260DC
	sub r1, r2, #3
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0222603C
	cmp r1, #1
	beq _02226070
	cmp r1, #2
	beq _022260A4
	pop {r4, pc}
_0222603C:
	sub r1, r2, #1
	ldrb r1, [r4, r1]
	lsl r3, r3, #0x19
	mov r2, #1
	lsr r3, r3, #0x1d
	bl ov13_02225D8C
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #1
	bl ov13_02225E08
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #1
	bl ov13_02225EB8
	ldr r0, _022260E8 ; =0x00001FA1
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_02226070:
	sub r1, r2, #1
	ldrb r1, [r4, r1]
	lsl r3, r3, #0x19
	mov r2, #2
	lsr r3, r3, #0x1d
	bl ov13_02225D8C
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #2
	bl ov13_02225E08
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #2
	bl ov13_02225EB8
	ldr r0, _022260E8 ; =0x00001FA1
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #2
	sub r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_022260A4:
	sub r1, r2, #1
	ldrb r1, [r4, r1]
	lsl r3, r3, #0x19
	mov r2, #0
	lsr r3, r3, #0x1d
	bl ov13_02225D8C
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #0
	bl ov13_02225E08
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #0
	bl ov13_02225EB8
	ldr r0, _022260E8 ; =0x00001FA1
	mov r1, #0
	strb r1, [r4, r0]
	add r1, r0, #2
	ldrb r2, [r4, r1]
	mov r1, #0x80
	add r0, r0, #2
	bic r2, r1
	strb r2, [r4, r0]
_022260DC:
	pop {r4, pc}
	nop
_022260E0: .word 0x00001FA3
_022260E4: .word 0x00001FA2
_022260E8: .word 0x00001FA1
	thumb_func_end ov13_0222601C

	thumb_func_start ov13_022260EC
ov13_022260EC: ; 0x022260EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r1, #9
	bls _022260F6
	b _0222643E
_022260F6:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02226102: ; jump table
	.short _02226116 - _02226102 - 2 ; case 0
	.short _0222618E - _02226102 - 2 ; case 1
	.short _022261EA - _02226102 - 2 ; case 2
	.short _0222623E - _02226102 - 2 ; case 3
	.short _022262DC - _02226102 - 2 ; case 4
	.short _02226328 - _02226102 - 2 ; case 5
	.short _02226380 - _02226102 - 2 ; case 6
	.short _022263E0 - _02226102 - 2 ; case 7
	.short _02226380 - _02226102 - 2 ; case 8
	.short _02226410 - _02226102 - 2 ; case 9
_02226116:
	mov r5, #0
	mov r6, #3
	mov r7, #1
_0222611C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov13_022213F0
	cmp r0, #0
	bne _02226138
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl ov13_02225D8C
	b _0222615E
_02226138:
	cmp r0, #1
	bne _0222614C
	lsl r1, r5, #0x18
	mov r2, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl ov13_02225D8C
	b _0222615E
_0222614C:
	cmp r0, #2
	bne _0222615E
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	mov r2, #0
	mov r3, #1
	bl ov13_02225D8C
_0222615E:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #6
	blo _0222611C
	ldr r0, [r4, #0]
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #1
	bne _02226180
	add r0, r4, #0
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_02226180:
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_0222618E:
	mov r2, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #7
	add r3, r2, #0
	bl ov13_02225D8C
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r0, r4, r0
	ldrb r0, [r0, #0x1b]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _022261D0
	add r0, r4, #0
	mov r1, #8
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_022261D0:
	mov r2, #0
	add r0, r4, #0
	mov r1, #8
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xa
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_022261EA:
	bl ov13_02226484
	cmp r0, #1
	bne _0222620C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xc
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xd
	add r3, r2, #0
	bl ov13_02225D8C
	b _02226224
_0222620C:
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
_02226224:
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xb
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_0222623E:
	bl ov13_02226484
	cmp r0, #1
	bne _02226260
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xc
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xd
	add r3, r2, #0
	bl ov13_02225D8C
	b _02226278
_02226260:
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
_02226278:
	mov r5, #0
	mov r7, #3
	mov r6, #0x50
_0222627E:
	ldr r0, [r4, #0]
	lsl r1, r5, #3
	ldrb r0, [r0, #0x11]
	add r2, r0, #0
	mul r2, r6
	add r0, r4, r2
	add r0, r1, r0
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _022262A6
	add r1, r5, #0
	add r1, #0xe
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl ov13_02225D8C
	b _022262B8
_022262A6:
	add r1, r5, #0
	add r1, #0xe
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	mov r3, #0
	bl ov13_02225D8C
_022262B8:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #4
	blo _0222627E
	mov r2, #0
	add r0, r4, #0
	mov r1, #9
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_022262DC:
	mov r2, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	mov r5, #0
	mov r6, #2
	add r7, r5, #0
_022262EC:
	ldr r0, [r4, #0]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, r5
	bne _0222630A
	add r1, r5, #0
	add r1, #0x1e
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl ov13_02225D8C
	b _0222631C
_0222630A:
	add r1, r5, #0
	add r1, #0x1e
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl ov13_02225D8C
_0222631C:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #4
	blo _022262EC
	pop {r3, r4, r5, r6, r7, pc}
_02226328:
	mov r5, #0
	mov r7, #3
	mov r6, #0x50
_0222632E:
	ldr r0, [r4, #0]
	lsl r1, r5, #3
	ldrb r0, [r0, #0x11]
	add r2, r0, #0
	mul r2, r6
	add r0, r4, r2
	add r0, r1, r0
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _02226356
	add r1, r5, #0
	add r1, #0x13
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl ov13_02225D8C
	b _02226368
_02226356:
	add r1, r5, #0
	add r1, #0x13
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	mov r3, #0
	bl ov13_02225D8C
_02226368:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #4
	blo _0222632E
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_02226380:
	mov r2, #0
	mov r1, #0x17
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x18
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x19
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x1a
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x1b
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	ldr r0, _02226440 ; =0x00002077
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _0222643E
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x12
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_022263E0:
	mov r2, #0
	mov r1, #0x1c
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	ldr r0, _02226440 ; =0x00002077
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _0222643E
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x12
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_02226410:
	mov r2, #0
	mov r1, #0x1d
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	ldr r0, _02226440 ; =0x00002077
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _0222643E
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x12
	add r3, r2, #0
	bl ov13_02225D8C
_0222643E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02226440: .word 0x00002077
	thumb_func_end ov13_022260EC

	thumb_func_start ov13_02226444
ov13_02226444: ; 0x02226444
	push {r3, lr}
	add r2, r0, #0
	cmp r1, #3
	bne _02226466
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	mov r1, #0x7e
	lsl r1, r1, #6
	ldr r0, [r2, r0]
	add r1, r2, r1
	mov r2, #1
	mov r3, #0xc0
	bl sub_02002FBC
	pop {r3, pc}
_02226466:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, _02226480 ; =0x00001F60
	ldr r0, [r2, r0]
	add r1, r2, r1
	mov r2, #1
	mov r3, #0xc0
	bl sub_02002FBC
	pop {r3, pc}
	nop
_02226480: .word 0x00001F60
	thumb_func_end ov13_02226444

	thumb_func_start ov13_02226484
ov13_02226484: ; 0x02226484
	push {r4, r5}
	mov r2, #0
	add r1, r2, #0
	mov r3, #0x50
_0222648C:
	add r4, r1, #0
	mul r4, r3
	add r5, r0, r4
	ldrh r4, [r5, #8]
	cmp r4, #0
	beq _022264A6
	ldrb r4, [r5, #0x1b]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1f
	bne _022264A6
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
_022264A6:
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #6
	blo _0222648C
	cmp r2, #2
	blo _022264B8
	mov r0, #1
	b _022264BA
_022264B8:
	mov r0, #0
_022264BA:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov13_02226484

	thumb_func_start ov13_022264C4
ov13_022264C4: ; 0x022264C4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldrb r1, [r1, #0x11]
	bl ov13_022213F0
	cmp r0, #2
	bne _022264E4
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	mov r2, #0
	mov r3, #1
	bl ov13_02225D8C
	pop {r4, pc}
_022264E4:
	ldr r1, [r4, #0]
	mov r2, #0
	ldrb r1, [r1, #0x11]
	add r0, r4, #0
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r4, pc}
	thumb_func_end ov13_022264C4

	thumb_func_start ov13_022264F4
ov13_022264F4: ; 0x022264F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02226584 ; =ov13_02226590
	ldr r1, _02226588 ; =0x0000115C
	ldr r3, [r5, #0xc]
	mov r2, #0x64
	bl sub_0200679C
	bl sub_0201CED0
	ldr r2, _02226588 ; =0x0000115C
	add r4, r0, #0
	mov r1, #0
	bl sub_020D5124
	str r5, [r4, #0]
	ldr r0, [r5, #0]
	bl ov16_0223DF00
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	bl ov16_0223E064
	str r0, [r4, #8]
	ldr r0, _0222658C ; =0x0000114A
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, [r5, #0]
	bl ov16_0223E1B0
	add r6, r0, #0
	mov r5, #0
_02226534:
	ldr r3, [r4, #0]
	add r0, r6, #0
	add r2, r3, #0
	add r2, #0x27
	add r3, #0x2c
	add r1, r5, #0
	add r2, r2, r5
	add r3, r3, r5
	bl sub_0207D9D8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #5
	blo _02226534
	add r0, r6, #0
	bl sub_0207D9E4
	ldr r1, [r4, #0]
	strh r0, [r1, #0x20]
	add r0, r6, #0
	bl sub_0207D9E8
	ldr r1, [r4, #0]
	strb r0, [r1, #0x1f]
	add r0, r4, #0
	bl ov13_02227A4C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl ov16_0223DF0C
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _02226582
	ldr r0, [r4, #0]
	mov r1, #1
	str r1, [r0, #0x14]
_02226582:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02226584: .word ov13_02226590
_02226588: .word 0x0000115C
_0222658C: .word 0x0000114A
	thumb_func_end ov13_022264F4

	thumb_func_start ov13_02226590
ov13_02226590: ; 0x02226590
	push {r4, lr}
	ldr r2, _02226688 ; =0x0000114A
	add r4, r1, #0
	ldrb r2, [r4, r2]
	cmp r2, #0xe
	bhi _02226676
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022265A8: ; jump table
	.short _022265C6 - _022265A8 - 2 ; case 0
	.short _022265D2 - _022265A8 - 2 ; case 1
	.short _022265DE - _022265A8 - 2 ; case 2
	.short _022265EA - _022265A8 - 2 ; case 3
	.short _022265F6 - _022265A8 - 2 ; case 4
	.short _02226602 - _022265A8 - 2 ; case 5
	.short _0222660E - _022265A8 - 2 ; case 6
	.short _0222661A - _022265A8 - 2 ; case 7
	.short _02226626 - _022265A8 - 2 ; case 8
	.short _02226632 - _022265A8 - 2 ; case 9
	.short _0222663E - _022265A8 - 2 ; case 10
	.short _0222664A - _022265A8 - 2 ; case 11
	.short _02226656 - _022265A8 - 2 ; case 12
	.short _02226662 - _022265A8 - 2 ; case 13
	.short _0222666E - _022265A8 - 2 ; case 14
_022265C6:
	add r0, r4, #0
	bl ov13_0222668C
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_022265D2:
	add r0, r4, #0
	bl ov13_02226760
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_022265DE:
	add r0, r4, #0
	bl ov13_02226838
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_022265EA:
	add r0, r4, #0
	bl ov13_022269C0
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_022265F6:
	add r0, r4, #0
	bl ov13_02226C48
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_02226602:
	add r0, r4, #0
	bl ov13_02226C54
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_0222660E:
	add r0, r4, #0
	bl ov13_02226C60
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_0222661A:
	add r0, r4, #0
	bl ov13_02226948
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_02226626:
	add r0, r4, #0
	bl ov13_02226C6C
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_02226632:
	add r0, r4, #0
	bl ov13_02226C7C
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_0222663E:
	add r0, r4, #0
	bl ov13_02226C94
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_0222664A:
	add r0, r4, #0
	bl ov13_02226CBC
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_02226656:
	add r0, r4, #0
	bl ov13_02226D94
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_02226662:
	add r0, r4, #0
	bl ov13_02226CD4
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_0222666E:
	bl ov13_02226CFC
	cmp r0, #1
	beq _02226686
_02226676:
	add r0, r4, #0
	bl ov13_02228848
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200C7EC
_02226686:
	pop {r4, pc}
	; .align 2, 0
_02226688: .word 0x0000114A
	thumb_func_end ov13_02226590

	thumb_func_start ov13_0222668C
ov13_0222668C: ; 0x0222668C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _02226750 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl ov13_02228A38
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl ov13_02226ED0
	add r0, r4, #0
	bl ov13_02226FC4
	add r0, r4, #0
	bl ov13_022270B8
	ldr r1, [r4, #0]
	mov r0, #2
	ldr r1, [r1, #0xc]
	bl sub_02002BB8
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E1B0
	bl sub_0207D9EC
	ldr r1, _02226754 ; =0x0000114D
	strb r0, [r4, r1]
	add r0, r4, #0
	bl ov13_02227AC8
	ldr r1, _02226758 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02228924
	add r0, r4, #0
	bl ov13_02227288
	ldr r1, _02226758 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02227350
	add r0, r4, #0
	bl ov13_02227BDC
	ldr r1, _02226758 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02227E68
	ldr r0, [r4, #0]
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #0
	beq _02226710
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov13_02228A60
_02226710:
	ldr r1, _02226758 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02228008
	ldr r1, _02226758 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_022280F0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r1, #0xa
	str r0, [sp, #8]
	add r3, r1, #0
	ldr r0, [r4, #8]
	ldr r2, _0222675C ; =0x0000FFFF
	sub r3, #0x12
	bl sub_02003178
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _0222674A
	add sp, #0xc
	mov r0, #0xc
	pop {r3, r4, pc}
_0222674A:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02226750: .word 0x04001050
_02226754: .word 0x0000114D
_02226758: .word 0x0000114C
_0222675C: .word 0x0000FFFF
	thumb_func_end ov13_0222668C

	thumb_func_start ov13_02226760
ov13_02226760: ; 0x02226760
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0200384C
	cmp r0, #0
	beq _02226772
	mov r0, #1
	pop {r3, r4, r5, pc}
_02226772:
	ldr r1, _0222682C ; =0x02229A1C
	add r0, r4, #0
	bl ov13_02227238
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _02226798
	ldr r0, [r4, #0x34]
	bl ov13_02228B64
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _0222679E
	mov r5, #5
	b _0222679E
_02226798:
	add r0, r4, #0
	bl ov13_02228050
_0222679E:
	cmp r5, #5
	bhi _02226828
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022267AE: ; jump table
	.short _022267BA - _022267AE - 2 ; case 0
	.short _022267BA - _022267AE - 2 ; case 1
	.short _022267BA - _022267AE - 2 ; case 2
	.short _022267BA - _022267AE - 2 ; case 3
	.short _022267DA - _022267AE - 2 ; case 4
	.short _0222680A - _022267AE - 2 ; case 5
_022267BA:
	ldr r0, _02226830 ; =0x000005DD
	bl sub_02005748
	lsl r0, r5, #0x18
	lsr r1, r0, #0x18
	ldr r0, _02226834 ; =0x0000114D
	mov r2, #5
	strb r1, [r4, r0]
	sub r0, r0, #2
	strb r2, [r4, r0]
	add r0, r4, #0
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_022267DA:
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _02226828
	ldr r0, _02226830 ; =0x000005DD
	bl sub_02005748
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0x1f]
	ldr r0, _02226834 ; =0x0000114D
	strb r1, [r4, r0]
	mov r1, #6
	sub r0, r0, #2
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov13_02227A7C
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_0222680A:
	ldr r0, _02226830 ; =0x000005DD
	bl sub_02005748
	ldr r0, [r4, #0]
	mov r2, #0
	strh r2, [r0, #0x1c]
	ldr r0, [r4, #0]
	mov r1, #4
	strb r1, [r0, #0x1e]
	add r0, r4, #0
	mov r1, #5
	bl ov13_0222880C
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_02226828:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222682C: .word 0x02229A1C
_02226830: .word 0x000005DD
_02226834: .word 0x0000114D
	thumb_func_end ov13_02226760

	thumb_func_start ov13_02226838
ov13_02226838: ; 0x02226838
	push {r3, r4, r5, lr}
	ldr r1, _02226938 ; =0x02229A38
	add r4, r0, #0
	bl ov13_02227238
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _02226860
	ldr r0, [r4, #0x34]
	bl ov13_02228B64
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _02226866
	mov r5, #8
	b _02226866
_02226860:
	add r0, r4, #0
	bl ov13_02228050
_02226866:
	cmp r5, #8
	bhi _02226934
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226876: ; jump table
	.short _02226888 - _02226876 - 2 ; case 0
	.short _02226888 - _02226876 - 2 ; case 1
	.short _02226888 - _02226876 - 2 ; case 2
	.short _02226888 - _02226876 - 2 ; case 3
	.short _02226888 - _02226876 - 2 ; case 4
	.short _02226888 - _02226876 - 2 ; case 5
	.short _022268BE - _02226876 - 2 ; case 6
	.short _022268EC - _02226876 - 2 ; case 7
	.short _0222691A - _02226876 - 2 ; case 8
_02226888:
	add r0, r4, #0
	add r1, r5, #0
	bl ov13_02227BA8
	cmp r0, #0
	beq _02226934
	ldr r0, _0222693C ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226940 ; =0x0000114D
	ldr r2, [r4, #0]
	ldrb r1, [r4, r0]
	sub r0, r0, #2
	add r1, r2, r1
	add r1, #0x27
	strb r5, [r1]
	mov r1, #6
	strb r1, [r4, r0]
	add r1, r5, #6
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_022268BE:
	ldr r0, _02226940 ; =0x0000114D
	ldrb r1, [r4, r0]
	add r0, r0, #7
	add r1, r4, r1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02226934
	ldr r0, _0222693C ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226944 ; =0x0000114B
	mov r1, #7
	strb r1, [r4, r0]
	sub r1, #8
	add r0, r0, #3
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_022268EC:
	ldr r0, _02226940 ; =0x0000114D
	ldrb r1, [r4, r0]
	add r0, r0, #7
	add r1, r4, r1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02226934
	ldr r0, _0222693C ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226944 ; =0x0000114B
	mov r1, #7
	strb r1, [r4, r0]
	mov r1, #1
	add r0, r0, #3
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_0222691A:
	ldr r0, _0222693C ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226944 ; =0x0000114B
	mov r1, #4
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02226934:
	mov r0, #2
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02226938: .word 0x02229A38
_0222693C: .word 0x000005DD
_02226940: .word 0x0000114D
_02226944: .word 0x0000114B
	thumb_func_end ov13_02226838

	thumb_func_start ov13_02226948
ov13_02226948: ; 0x02226948
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _022269B8 ; =0x0000114D
	ldr r1, [r4, #0]
	ldrb r2, [r4, r0]
	mov r3, #0
	add r5, r1, r2
	mov r1, #0x2c
	ldrsb r2, [r5, r1]
	add r5, #0x27
	add r1, r0, #1
	strb r3, [r5]
	ldrsb r1, [r4, r1]
	add r1, r2, r1
	lsl r1, r1, #0x18
	asr r2, r1, #0x18
	ldrb r1, [r4, r0]
	add r0, r0, #7
	add r5, r4, r1
	ldrb r5, [r5, r0]
	cmp r2, r5
	ble _0222697E
	ldr r0, [r4, #0]
	add r0, r0, r1
	add r0, #0x2c
	strb r3, [r0]
	b _02226992
_0222697E:
	cmp r2, #0
	ldr r0, [r4, #0]
	bge _0222698C
	add r0, r0, r1
	add r0, #0x2c
	strb r5, [r0]
	b _02226992
_0222698C:
	add r0, r0, r1
	add r0, #0x2c
	strb r2, [r0]
_02226992:
	add r0, r4, #0
	bl ov13_02227650
	add r0, r4, #0
	bl ov13_02227698
	ldr r1, _022269BC ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02227E68
	ldr r1, _022269BC ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02228924
	mov r0, #2
	pop {r3, r4, r5, pc}
	nop
_022269B8: .word 0x0000114D
_022269BC: .word 0x0000114C
	thumb_func_end ov13_02226948

	thumb_func_start ov13_022269C0
ov13_022269C0: ; 0x022269C0
	push {r3, r4, r5, lr}
	ldr r1, _02226A4C ; =0x022299AC
	add r5, r0, #0
	bl ov13_02227238
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _022269E8
	ldr r0, [r5, #0x34]
	bl ov13_02228B64
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022269EE
	mov r4, #1
	b _022269EE
_022269E8:
	add r0, r5, #0
	bl ov13_02228050
_022269EE:
	cmp r4, #0
	beq _022269F8
	cmp r4, #1
	beq _02226A2E
	b _02226A48
_022269F8:
	ldr r0, _02226A50 ; =0x000005DD
	bl sub_02005748
	ldr r1, _02226A54 ; =0x0000114D
	ldr r2, [r5, #0]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	add r1, r2, r1
	add r1, #0x27
	ldrb r1, [r1]
	bl ov13_02227BA8
	ldr r1, [r5, #0]
	mov r2, #0
	strh r0, [r1, #0x1c]
	ldr r0, _02226A54 ; =0x0000114D
	ldrb r1, [r5, r0]
	ldr r0, [r5, #0]
	strb r1, [r0, #0x1e]
	add r0, r5, #0
	mov r1, #0xf
	bl ov13_0222880C
	add r0, r5, #0
	bl ov13_02226A5C
	pop {r3, r4, r5, pc}
_02226A2E:
	ldr r0, _02226A50 ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226A58 ; =0x0000114B
	mov r1, #5
	strb r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02226A48:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02226A4C: .word 0x022299AC
_02226A50: .word 0x000005DD
_02226A54: .word 0x0000114D
_02226A58: .word 0x0000114B
	thumb_func_end ov13_022269C0

	thumb_func_start ov13_02226A5C
ov13_02226A5C: ; 0x02226A5C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02226C3C ; =0x0000114D
	add r5, r0, #0
	ldrb r1, [r5, r1]
	ldr r4, [r5, #0]
	cmp r1, #3
	beq _02226A6C
	b _02226B86
_02226A6C:
	bl ov13_02227244
	add r7, r0, #0
	ldrh r0, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	mov r1, #7
	bl sub_0207CFF0
	add r6, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02226ADE
	ldrh r0, [r4, #0x1c]
	cmp r0, #0x37
	beq _02226ADE
	cmp r6, #3
	beq _02226ADE
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	add r2, r7, #0
	bl ov16_0223DFAC
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	mov r1, #0x2e
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, [r5, #0x14]
	ldr r2, _02226C40 ; =0x00000175
	mov r1, #1
	bl sub_0200B630
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226ADE:
	ldrh r0, [r4, #0x1c]
	add r2, r7, #0
	mov r3, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	bl ov16_0223E30C
	cmp r0, #1
	bne _02226B04
	ldr r2, _02226C3C ; =0x0000114D
	ldrh r1, [r4, #0x1c]
	ldrb r2, [r5, r2]
	ldr r0, [r4, #0]
	ldr r3, [r4, #0xc]
	bl ov13_02227260
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
_02226B04:
	cmp r6, #3
	bne _02226B6C
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #1
	tst r0, r1
	bne _02226B26
	ldr r2, _02226C3C ; =0x0000114D
	ldrh r1, [r4, #0x1c]
	ldrb r2, [r5, r2]
	ldr r0, [r4, #0]
	ldr r3, [r4, #0xc]
	bl ov13_02227260
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
_02226B26:
	ldr r3, [r4, #0xc]
	add r0, r1, #0
	mov r1, #0x1a
	mov r2, #0xd5
	bl sub_0200B144
	mov r1, #0x24
	add r7, r0, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	ldr r2, [r4, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226B6C:
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x22
	bl sub_0200B1B8
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226B86:
	cmp r1, #2
	bne _02226C36
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #1
	bne _02226BAE
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x2c
	bl sub_0200B1B8
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226BAE:
	add r0, r4, #0
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #1
	bne _02226BD2
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x2f
	bl sub_0200B1B8
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226BD2:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #1
	bne _02226BF6
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x30
	bl sub_0200B1B8
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226BF6:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	bl ov16_0223DF20
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E228
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0207A0F8
	cmp r0, #6
	bne _02226C36
	add r0, r4, #0
	bl sub_020799A0
	cmp r0, #0x12
	bne _02226C36
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x2d
	bl sub_0200B1B8
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226C36:
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226C3C: .word 0x0000114D
_02226C40: .word 0x00000175
_02226C44: .word 0x0000114B
	thumb_func_end ov13_02226A5C

	thumb_func_start ov13_02226C48
ov13_02226C48: ; 0x02226C48
	push {r3, lr}
	mov r1, #0
	bl ov13_022271D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov13_02226C48

	thumb_func_start ov13_02226C54
ov13_02226C54: ; 0x02226C54
	push {r3, lr}
	mov r1, #1
	bl ov13_022271D0
	mov r0, #2
	pop {r3, pc}
	thumb_func_end ov13_02226C54

	thumb_func_start ov13_02226C60
ov13_02226C60: ; 0x02226C60
	push {r3, lr}
	mov r1, #2
	bl ov13_022271D0
	mov r0, #3
	pop {r3, pc}
	thumb_func_end ov13_02226C60

	thumb_func_start ov13_02226C6C
ov13_02226C6C: ; 0x02226C6C
	push {r3, lr}
	add r0, #0x1c
	mov r1, #0
	bl sub_0200E084
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov13_02226C6C

	thumb_func_start ov13_02226C7C
ov13_02226C7C: ; 0x02226C7C
	push {r3, lr}
	add r0, #0x32
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02226C8E
	mov r0, #0xa
	pop {r3, pc}
_02226C8E:
	mov r0, #9
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov13_02226C7C

	thumb_func_start ov13_02226C94
ov13_02226C94: ; 0x02226C94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02226CB4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02226CAA
	bl sub_02022798
	cmp r0, #1
	bne _02226CB0
_02226CAA:
	ldr r0, _02226CB8 ; =0x0000114B
	ldrb r0, [r4, r0]
	pop {r4, pc}
_02226CB0:
	mov r0, #0xa
	pop {r4, pc}
	; .align 2, 0
_02226CB4: .word 0x021BF67C
_02226CB8: .word 0x0000114B
	thumb_func_end ov13_02226C94

	thumb_func_start ov13_02226CBC
ov13_02226CBC: ; 0x02226CBC
	ldr r1, _02226CD0 ; =0x0000113E
	ldrb r2, [r0, r1]
	cmp r2, #2
	bne _02226CCA
	add r1, #0xd
	ldrb r0, [r0, r1]
	bx lr
_02226CCA:
	mov r0, #0xb
	bx lr
	nop
_02226CD0: .word 0x0000113E
	thumb_func_end ov13_02226CBC

	thumb_func_start ov13_02226CD4
ov13_02226CD4: ; 0x02226CD4
	push {lr}
	sub sp, #0xc
	mov r2, #0
	str r2, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #0xa
	add r3, r1, #0
	ldr r0, [r0, #8]
	ldr r2, _02226CF8 ; =0x0000FFFF
	sub r3, #0x12
	bl sub_02003178
	mov r0, #0xe
	add sp, #0xc
	pop {pc}
	nop
_02226CF8: .word 0x0000FFFF
	thumb_func_end ov13_02226CD4

	thumb_func_start ov13_02226CFC
ov13_02226CFC: ; 0x02226CFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #8]
	bl sub_0200384C
	cmp r0, #0
	beq _02226D10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02226D10:
	add r0, r5, #0
	bl ov13_02227E08
	add r0, r5, #0
	bl ov13_02227334
	add r0, r5, #0
	bl ov13_022270F8
	ldr r0, [r5, #4]
	bl ov13_02226F9C
	ldr r0, [r5, #0x34]
	bl ov13_02228A5C
	ldr r1, [r5, #0]
	add r1, #0x25
	strb r0, [r1]
	ldr r0, [r5, #0x34]
	bl ov13_02228A50
	mov r0, #2
	bl sub_02002C60
	ldr r1, [r5, #0]
	ldrh r0, [r1, #0x1c]
	cmp r0, #0
	beq _02226D7C
	ldr r0, [r1, #0]
	bl ov16_0223E1B0
	add r6, r0, #0
	mov r4, #0
_02226D52:
	ldr r3, [r5, #0]
	add r0, r6, #0
	add r2, r3, r4
	add r3, r3, r4
	add r2, #0x27
	add r3, #0x2c
	ldrb r2, [r2]
	ldrb r3, [r3]
	add r1, r4, #0
	bl sub_0207D9F0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _02226D52
	ldr r1, _02226D90 ; =0x0000114D
	add r0, r6, #0
	ldrb r1, [r5, r1]
	bl sub_0207DA24
_02226D7C:
	ldr r0, [r5, #0]
	mov r1, #1
	add r0, #0x26
	strb r1, [r0]
	add r0, r7, #0
	bl sub_020067D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226D90: .word 0x0000114D
	thumb_func_end ov13_02226CFC

	thumb_func_start ov13_02226D94
ov13_02226D94: ; 0x02226D94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0200384C
	cmp r0, #0
	beq _02226DA6
	mov r0, #0xc
	pop {r4, pc}
_02226DA6:
	ldr r0, _02226EC0 ; =0x00001159
	ldrb r0, [r4, r0]
	cmp r0, #4
	bls _02226DB0
	b _02226EBA
_02226DB0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226DBC: ; jump table
	.short _02226DC6 - _02226DBC - 2 ; case 0
	.short _02226E08 - _02226DBC - 2 ; case 1
	.short _02226E18 - _02226DBC - 2 ; case 2
	.short _02226E62 - _02226DBC - 2 ; case 3
	.short _02226E72 - _02226DBC - 2 ; case 4
_02226DC6:
	ldr r0, [r4, #0x38]
	bl ov16_0226DFD4
	cmp r0, #1
	bne _02226DFE
	ldr r0, _02226EC4 ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226EC8 ; =0x0000114D
	mov r1, #2
	strb r1, [r4, r0]
	mov r2, #0xc
	sub r0, r0, #2
	strb r2, [r4, r0]
	add r0, r4, #0
	mov r2, #0
	bl ov13_0222880C
	ldr r0, _02226ECC ; =0x0000115A
	mov r1, #0
	strb r1, [r4, r0]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0xb
	pop {r4, pc}
_02226DFE:
	ldr r0, _02226ECC ; =0x0000115A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02226EBA
_02226E08:
	add r0, r4, #0
	bl ov13_02226C54
	ldr r0, _02226EC0 ; =0x00001159
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02226EBA
_02226E18:
	ldr r0, [r4, #0x38]
	bl ov16_0226DFD4
	cmp r0, #1
	bne _02226E58
	ldr r0, _02226EC4 ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226EC8 ; =0x0000114D
	ldr r3, [r4, #0]
	ldrb r1, [r4, r0]
	mov r2, #0
	sub r0, r0, #2
	add r1, r3, r1
	add r1, #0x27
	strb r2, [r1]
	mov r1, #0xc
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #6
	bl ov13_0222880C
	ldr r0, _02226ECC ; =0x0000115A
	mov r1, #0
	strb r1, [r4, r0]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0xb
	pop {r4, pc}
_02226E58:
	ldr r0, _02226ECC ; =0x0000115A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02226EBA
_02226E62:
	add r0, r4, #0
	bl ov13_02226C60
	ldr r0, _02226EC0 ; =0x00001159
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02226EBA
_02226E72:
	ldr r0, [r4, #0x38]
	bl ov16_0226DFD4
	cmp r0, #1
	bne _02226EB2
	ldr r0, _02226EC4 ; =0x000005DD
	bl sub_02005748
	ldr r1, _02226EC8 ; =0x0000114D
	ldr r2, [r4, #0]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	add r1, r2, r1
	add r1, #0x27
	ldrb r1, [r1]
	bl ov13_02227BA8
	ldr r1, [r4, #0]
	mov r2, #0
	strh r0, [r1, #0x1c]
	ldr r0, _02226EC8 ; =0x0000114D
	ldrb r1, [r4, r0]
	ldr r0, [r4, #0]
	strb r1, [r0, #0x1e]
	add r0, r4, #0
	mov r1, #0xf
	bl ov13_0222880C
	add r0, r4, #0
	bl ov13_02226A5C
	pop {r4, pc}
_02226EB2:
	ldr r0, _02226ECC ; =0x0000115A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
_02226EBA:
	mov r0, #0xc
	pop {r4, pc}
	nop
_02226EC0: .word 0x00001159
_02226EC4: .word 0x000005DD
_02226EC8: .word 0x0000114D
_02226ECC: .word 0x0000115A
	thumb_func_end ov13_02226D94

	thumb_func_start ov13_02226ED0
ov13_02226ED0: ; 0x02226ED0
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _02226F8C ; =0x022299B8
	add r3, sp, #0x54
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	mov r1, #1
	bl sub_020183A0
	ldr r5, _02226F90 ; =0x02229A00
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _02226F94 ; =0x022299E4
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #4]
	mov r1, #5
	bl sub_02019EBC
	ldr r5, _02226F98 ; =0x022299C8
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02019EBC
	ldr r3, [r4, #0]
	mov r0, #5
	ldr r3, [r3, #0xc]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [r4, #0]
	mov r0, #4
	ldr r3, [r3, #0xc]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r0, [r4, #4]
	mov r1, #5
	bl sub_0201C3C0
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #0x64
	pop {r4, r5, pc}
	; .align 2, 0
_02226F8C: .word 0x022299B8
_02226F90: .word 0x02229A00
_02226F94: .word 0x022299E4
_02226F98: .word 0x022299C8
	thumb_func_end ov13_02226ED0

	thumb_func_start ov13_02226F9C
ov13_02226F9C: ; 0x02226F9C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x17
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #6
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02226F9C

	thumb_func_start ov13_02226FC4
ov13_02226FC4: ; 0x02226FC4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x4d
	ldr r1, [r1, #0xc]
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [r5, #0]
	mov r3, #6
	ldr r1, [r1, #0xc]
	add r4, r0, #0
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r1, #2
	bl sub_020070E8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #0]
	mov r3, #6
	ldr r0, [r0, #0xc]
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	add r0, r4, #0
	bl sub_0200710C
	ldr r2, [r5, #0]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	mov r1, #1
	bl sub_02006CB8
	add r1, sp, #0x10
	add r6, r0, #0
	bl sub_020A7248
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, #0xc
	bl ov13_02228128
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	ldr r0, [r5, #8]
	ldr r3, [r3, #0xc]
	mov r1, #0x4d
	mov r2, #3
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xf0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	ldr r0, [r5, #8]
	ldr r3, [r3, #0xc]
	mov r1, #0xe
	mov r2, #7
	bl sub_02003050
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov16_0223EDE0
	add r4, r0, #0
	bl sub_0200DD04
	add r1, r0, #0
	ldr r0, _022270B4 ; =0x000003E2
	mov r3, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0x26
	bl sub_02006E3C
	add r0, r4, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	ldr r0, [r5, #8]
	ldr r3, [r3, #0xc]
	mov r1, #0x26
	bl sub_02003050
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022270B4: .word 0x000003E2
	thumb_func_end ov13_02226FC4

	thumb_func_start ov13_022270B8
ov13_022270B8: ; 0x022270B8
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #0]
	mov r0, #0
	ldr r3, [r3, #0xc]
	mov r1, #0x1a
	mov r2, #2
	bl sub_0200B144
	str r0, [r4, #0x10]
	ldr r3, [r4, #0]
	mov r0, #0xf
	ldr r3, [r3, #0xc]
	mov r1, #0xe
	mov r2, #0
	bl sub_0200C440
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0200B358
	str r0, [r4, #0x14]
	ldr r1, [r4, #0]
	mov r0, #2
	ldr r1, [r1, #0xc]
	lsl r0, r0, #8
	bl sub_02023790
	str r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_022270B8

	thumb_func_start ov13_022270F8
ov13_022270F8: ; 0x022270F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	ldr r0, [r4, #0xc]
	bl sub_0200C560
	ldr r0, [r4, #0x14]
	bl sub_0200B3F0
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_022270F8

	thumb_func_start ov13_02227118
ov13_02227118: ; 0x02227118
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0222712A
	cmp r1, #1
	beq _02227144
	cmp r1, #2
	beq _02227160
	pop {r4, pc}
_0222712A:
	mov r2, #0
	ldr r0, [r4, #4]
	mov r1, #6
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	pop {r4, pc}
_02227144:
	mov r1, #6
	add r3, r1, #0
	ldr r0, [r4, #4]
	mov r2, #0
	add r3, #0xfa
	bl sub_0201C63C
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	pop {r4, pc}
_02227160:
	mov r2, #0
	ldr r0, [r4, #4]
	mov r1, #6
	add r3, r2, #0
	bl sub_0201C63C
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #4]
	mov r1, #6
	add r3, #0xfd
	bl sub_0201C63C
	pop {r4, pc}
	thumb_func_end ov13_02227118

	thumb_func_start ov13_0222717C
ov13_0222717C: ; 0x0222717C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #2
	bne _022271C6
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _022271CC ; =0x0000114D
	mov r1, #6
	ldrb r0, [r4, r0]
	mov r2, #2
	mov r3, #0x23
	add r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02019E2C
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _022271CC ; =0x0000114D
	mov r1, #6
	ldrb r0, [r4, r0]
	mov r2, #2
	mov r3, #0x28
	add r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02019E2C
_022271C6:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022271CC: .word 0x0000114D
	thumb_func_end ov13_0222717C

	thumb_func_start ov13_022271D0
ov13_022271D0: ; 0x022271D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov13_0222717C
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02227118
	ldr r0, [r5, #4]
	mov r1, #4
	mov r2, #0
	bl sub_02019F04
	ldr r0, [r5, #4]
	mov r1, #5
	mov r2, #0
	bl sub_02019F04
	add r0, r5, #0
	bl ov13_02227324
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_022272AC
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02227350
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02228924
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02228008
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_022280F0
	ldr r1, _02227234 ; =0x0000114C
	add r0, r5, #0
	strb r4, [r5, r1]
	ldrb r1, [r5, r1]
	bl ov13_02227E68
	pop {r3, r4, r5, pc}
	nop
_02227234: .word 0x0000114C
	thumb_func_end ov13_022271D0

	thumb_func_start ov13_02227238
ov13_02227238: ; 0x02227238
	ldr r3, _02227240 ; =sub_02022664
	add r0, r1, #0
	bx r3
	nop
_02227240: .word sub_02022664
	thumb_func_end ov13_02227238

	thumb_func_start ov13_02227244
ov13_02227244: ; 0x02227244
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #0]
	bl ov16_0223DF10
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r3, [r4, #0x10]
	ldr r0, [r0, #0]
	mov r2, #2
	bl ov16_0225B45C
	pop {r3, r4, r5, pc}
	thumb_func_end ov13_02227244

	thumb_func_start ov13_02227260
ov13_02227260: ; 0x02227260
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r3, #0
	add r6, r0, #0
	add r7, r2, #0
	bl ov16_0223E1AC
	add r1, r5, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_0207D60C
	add r0, r6, #0
	bl ov16_0223E1B0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0207DA1C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_02227260

	thumb_func_start ov13_02227288
ov13_02227288: ; 0x02227288
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #4]
	ldr r2, _022272A4 ; =0x02229A60
	add r1, #0x1c
	bl sub_0201A8D4
	ldr r1, _022272A8 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_022272AC
	pop {r4, pc}
	; .align 2, 0
_022272A4: .word 0x02229A60
_022272A8: .word 0x0000114C
	thumb_func_end ov13_02227288

	thumb_func_start ov13_022272AC
ov13_022272AC: ; 0x022272AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _022272BE
	cmp r1, #1
	beq _022272C8
	cmp r1, #2
	beq _022272D2
	b _022272DA
_022272BE:
	mov r1, #5
	add r0, #0x30
	ldr r6, _02227318 ; =0x02229A88
	strb r1, [r0]
	b _022272DA
_022272C8:
	mov r1, #0x1a
	add r0, #0x30
	ldr r6, _0222731C ; =0x02229AE0
	strb r1, [r0]
	b _022272DA
_022272D2:
	ldr r6, _02227320 ; =0x02229A68
	mov r1, #4
	add r0, #0x30
	strb r1, [r0]
_022272DA:
	add r1, r5, #0
	ldr r0, [r5, #0]
	add r1, #0x30
	ldrb r1, [r1]
	ldr r0, [r0, #0xc]
	bl sub_0201A778
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _02227316
_022272F6:
	ldr r2, [r5, #0x2c]
	lsl r1, r4, #4
	add r1, r2, r1
	lsl r2, r4, #3
	ldr r0, [r5, #4]
	add r2, r6, r2
	bl sub_0201A8D4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r4, r0
	blo _022272F6
_02227316:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02227318: .word 0x02229A88
_0222731C: .word 0x02229AE0
_02227320: .word 0x02229A68
	thumb_func_end ov13_022272AC

	thumb_func_start ov13_02227324
ov13_02227324: ; 0x02227324
	add r1, r0, #0
	ldr r0, [r1, #0x2c]
	add r1, #0x30
	ldr r3, _02227330 ; =sub_0201A928
	ldrb r1, [r1]
	bx r3
	; .align 2, 0
_02227330: .word sub_0201A928
	thumb_func_end ov13_02227324

	thumb_func_start ov13_02227334
ov13_02227334: ; 0x02227334
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	ldr r0, [r4, #0x2c]
	bl sub_0201A928
	add r4, #0x1c
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02227334

	thumb_func_start ov13_02227350
ov13_02227350: ; 0x02227350
	push {r3, lr}
	cmp r1, #0
	beq _02227360
	cmp r1, #1
	beq _02227366
	cmp r1, #2
	beq _0222736C
	pop {r3, pc}
_02227360:
	bl ov13_022273CC
	pop {r3, pc}
_02227366:
	bl ov13_02227888
	pop {r3, pc}
_0222736C:
	bl ov13_02227974
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov13_02227350

	thumb_func_start ov13_02227374
ov13_02227374: ; 0x02227374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r5, [r0, #0x2c]
	lsl r4, r1, #4
	ldr r0, [r0, #0x10]
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	mov r2, #0
	bl sub_02002D7C
	add r7, r0, #0
	add r0, r5, r4
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsr r3, r0, #1
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, r6, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02227374

	thumb_func_start ov13_022273CC
ov13_022273CC: ; 0x022273CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
	add r7, r6, #0
_022273D8:
	ldr r0, [r5, #0x2c]
	add r1, r7, #0
	add r0, r0, r4
	bl sub_0201ADA4
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #5
	blo _022273D8
	mov r0, #8
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #2
	bl ov13_02227374
	mov r0, #0x18
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #1
	mov r3, #2
	bl ov13_02227374
	mov r0, #8
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r2, #2
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl ov13_02227374
	mov r0, #0x18
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r1, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #3
	mov r3, #2
	bl ov13_02227374
	mov r0, #8
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r1, #2
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #7
	add r3, r1, #0
	bl ov13_02227374
	mov r0, #8
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r1, #3
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #6
	mov r3, #2
	bl ov13_02227374
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0222749E
	ldr r0, [r5, #0x10]
	mov r1, #8
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022274A4 ; =0x00030201
	mov r3, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	mov r1, #2
	add r0, #0x40
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [r5, #0x2c]
	add r0, #0x40
	bl sub_0201A9A4
_0222749E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022274A4: .word 0x00030201
	thumb_func_end ov13_022273CC

	thumb_func_start ov13_022274A8
ov13_022274A8: ; 0x022274A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r4, [r5, #0x2c]
	lsl r6, r3, #4
	add r7, r1, #0
	add r0, r4, r6
	mov r1, #0
	str r2, [sp, #0x10]
	bl sub_0201ADA4
	ldr r0, _02227544 ; =0x0000114D
	lsl r7, r7, #2
	ldrb r1, [r5, r0]
	mov r0, #0x90
	mul r0, r1
	add r0, r5, r0
	add r0, r0, r7
	ldrh r0, [r0, #0x3c]
	cmp r0, #0
	beq _0222753A
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x10]
	lsl r2, r1, #3
	ldr r1, _02227548 ; =0x02229AB0
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	ldr r2, _02227544 ; =0x0000114D
	str r0, [sp, #0x14]
	ldrb r3, [r5, r2]
	mov r2, #0x90
	ldr r0, [r5, #0x14]
	mul r2, r3
	add r2, r5, r2
	add r2, r2, r7
	ldrh r2, [r2, #0x3c]
	mov r1, #0
	bl sub_0200B70C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [sp, #0x14]
	bl sub_0200C388
	ldr r0, [sp, #0x30]
	ldr r1, [r5, #0x18]
	mov r2, #0
	bl sub_02002D7C
	add r7, r0, #0
	add r0, r4, r6
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsr r3, r0, #1
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r4, r6
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
_0222753A:
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227544: .word 0x0000114D
_02227548: .word 0x02229AB0
	thumb_func_end ov13_022274A8

	thumb_func_start ov13_0222754C
ov13_0222754C: ; 0x0222754C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r4, [r5, #0x2c]
	lsl r7, r3, #4
	add r6, r1, #0
	add r0, r4, r7
	mov r1, #0
	str r2, [sp, #0x10]
	bl sub_0201ADA4
	ldr r0, _022275D8 ; =0x0000114D
	lsl r6, r6, #2
	ldrb r1, [r5, r0]
	mov r0, #0x90
	mul r0, r1
	add r0, r5, r0
	add r0, r0, r6
	ldrh r0, [r0, #0x3e]
	cmp r0, #0
	beq _022275CE
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x10]
	lsl r2, r1, #3
	ldr r1, _022275DC ; =0x02229AB4
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	mov r1, #0
	str r0, [sp, #0x14]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _022275D8 ; =0x0000114D
	ldr r0, [r5, #0x14]
	ldrb r3, [r5, r2]
	mov r2, #0x90
	mul r2, r3
	add r2, r5, r2
	add r2, r2, r6
	ldrh r2, [r2, #0x3e]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [sp, #0x14]
	bl sub_0200C388
	ldr r0, [sp, #0x34]
	mov r3, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x30]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r4, r7
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
_022275CE:
	add r0, r4, r7
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022275D8: .word 0x0000114D
_022275DC: .word 0x02229AB4
	thumb_func_end ov13_0222754C

	thumb_func_start ov13_022275E0
ov13_022275E0: ; 0x022275E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, _02227644 ; =0x0000114D
	add r5, r1, #0
	ldrb r0, [r6, r0]
	ldr r1, [r6, #0]
	add r0, r1, r0
	add r0, #0x2c
	ldrb r1, [r0]
	mov r0, #6
	mul r0, r1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _02227608
	mov r4, #0
	b _0222760A
_02227608:
	mov r4, #0xc
_0222760A:
	mov r0, #2
	str r0, [sp]
	ldr r0, _02227648 ; =0x00030201
	ldr r1, [sp, #0xc]
	lsl r7, r5, #1
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, r1
	add r2, r5, #0
	add r3, r4, r7
	bl ov13_022274A8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _0222764C ; =0x00010200
	ldr r1, [sp, #0xc]
	add r3, r4, #1
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, r1
	add r2, r5, #0
	add r3, r3, r7
	bl ov13_0222754C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227644: .word 0x0000114D
_02227648: .word 0x00030201
_0222764C: .word 0x00010200
	thumb_func_end ov13_022275E0

	thumb_func_start ov13_02227650
ov13_02227650: ; 0x02227650
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	mov r1, #5
	add r3, r2, #0
	bl sub_02019CB8
	mov r5, #0
_02227672:
	add r0, r4, #0
	add r1, r5, #0
	bl ov13_022275E0
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #6
	blo _02227672
	add r0, r4, #0
	add r0, #0x31
	ldrb r1, [r0]
	mov r0, #1
	add r4, #0x31
	eor r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov13_02227650

	thumb_func_start ov13_02227698
ov13_02227698: ; 0x02227698
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x19
	ldr r1, [r5, #0x2c]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x10]
	mov r1, #0x1c
	ldr r4, [r5, #0x2c]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	mov r0, #0
	ldr r1, [sp, #0x10]
	add r2, r0, #0
	bl sub_02002D7C
	add r7, r0, #0
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsr r6, r0, #1
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022277C0 ; =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0x19
	lsl r0, r0, #4
	mov r1, #0
	add r0, r4, r0
	add r3, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, [r5, #0x10]
	mov r1, #0x1d
	bl sub_0200B1EC
	mov r1, #0
	str r0, [sp, #0x14]
	ldr r3, _022277C4 ; =0x0000114D
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _022277C4 ; =0x0000114D
	add r3, r3, #7
	ldrb r2, [r5, r2]
	ldr r0, [r5, #0x14]
	add r2, r5, r2
	ldrb r2, [r2, r3]
	mov r3, #2
	add r2, r2, #1
	bl sub_0200B60C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [sp, #0x14]
	bl sub_0200C388
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022277C0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r2, [r5, #0x18]
	add r0, r4, r0
	add r3, r6, r7
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, [r5, #0x10]
	mov r1, #0x1e
	bl sub_0200B1EC
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, _022277C4 ; =0x0000114D
	ldr r2, [r5, #0]
	ldrb r3, [r5, r3]
	ldr r0, [r5, #0x14]
	add r2, r2, r3
	add r2, #0x2c
	ldrb r2, [r2]
	mov r3, #2
	add r2, r2, #1
	bl sub_0200B60C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r7, #0
	bl sub_0200C388
	mov r0, #0
	ldr r1, [r5, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022277C0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r2, [r5, #0x18]
	add r0, r4, r0
	sub r3, r6, r3
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022277C0: .word 0x00010200
_022277C4: .word 0x0000114D
	thumb_func_end ov13_02227698

	thumb_func_start ov13_022277C8
ov13_022277C8: ; 0x022277C8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #6
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02227880 ; =0x0000114D
	ldrb r0, [r4, r0]
	cmp r0, #3
	bhi _0222787C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022277F0: ; jump table
	.short _022277F8 - _022277F0 - 2 ; case 0
	.short _02227824 - _022277F0 - 2 ; case 1
	.short _02227850 - _022277F0 - 2 ; case 2
	.short _02227868 - _022277F0 - 2 ; case 3
_022277F8:
	mov r0, #4
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x16
	mov r3, #0
	bl ov13_02227374
	mov r0, #0x14
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x17
	mov r3, #0
	bl ov13_02227374
	add sp, #8
	pop {r4, pc}
_02227824:
	mov r0, #4
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl ov13_02227374
	mov r0, #0x14
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x19
	mov r3, #0
	bl ov13_02227374
	add sp, #8
	pop {r4, pc}
_02227850:
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1a
	mov r3, #0
	bl ov13_02227374
	add sp, #8
	pop {r4, pc}
_02227868:
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov13_02227374
_0222787C:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02227880: .word 0x0000114D
_02227884: .word 0x00010200
	thumb_func_end ov13_022277C8

	thumb_func_start ov13_02227888
ov13_02227888: ; 0x02227888
	push {r4, lr}
	add r4, r0, #0
	bl ov13_02227650
	add r0, r4, #0
	bl ov13_022277C8
	add r0, r4, #0
	bl ov13_02227698
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02227888

	thumb_func_start ov13_022278A0
ov13_022278A0: ; 0x022278A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r6, r1, #0
	mov r1, #9
	ldr r4, [r5, #0x2c]
	bl sub_0200B1EC
	ldr r2, _02227908 ; =0x0000114D
	add r7, r0, #0
	ldrb r3, [r5, r2]
	mov r2, #0x90
	ldr r0, [r5, #0x14]
	mul r2, r3
	add r2, r5, r2
	lsl r3, r6, #2
	add r2, r2, r3
	ldrh r2, [r2, #0x3c]
	mov r1, #0
	bl sub_0200B70C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r7, #0
	bl sub_0200C388
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222790C ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r4, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227908: .word 0x0000114D
_0222790C: .word 0x00010200
	thumb_func_end ov13_022278A0

	thumb_func_start ov13_02227910
ov13_02227910: ; 0x02227910
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0]
	ldr r4, [r5, #0x2c]
	ldr r1, [r1, #0xc]
	mov r0, #0x82
	add r4, #0x20
	bl sub_02023790
	ldr r1, _0222796C ; =0x0000114D
	add r7, r0, #0
	ldrb r2, [r5, r1]
	mov r1, #0x90
	mul r1, r2
	add r2, r5, r1
	lsl r1, r6, #2
	add r1, r2, r1
	ldr r2, [r5, #0]
	ldrh r1, [r1, #0x3c]
	ldr r2, [r2, #0xc]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0207CFC8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02227970 ; =0x00010200
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #4
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222796C: .word 0x0000114D
_02227970: .word 0x00010200
	thumb_func_end ov13_02227910

	thumb_func_start ov13_02227974
ov13_02227974: ; 0x02227974
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
	add r7, r6, #0
_02227980:
	ldr r0, [r5, #0x2c]
	add r1, r7, #0
	add r0, r0, r4
	bl sub_0201ADA4
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #4
	blo _02227980
	ldr r0, _022279E8 ; =0x0000114D
	ldr r1, [r5, #0]
	ldrb r2, [r5, r0]
	add r0, r1, r2
	add r0, #0x27
	ldrb r4, [r0]
	add r0, r1, r2
	add r0, #0x2c
	ldrb r1, [r0]
	mov r0, #6
	add r6, r1, #0
	mul r6, r0
	add r0, r5, #0
	add r1, r4, r6
	bl ov13_022278A0
	mov r2, #0
	str r2, [sp]
	ldr r0, _022279EC ; =0x00010200
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, r6
	mov r3, #1
	bl ov13_0222754C
	add r0, r5, #0
	add r1, r4, r6
	bl ov13_02227910
	mov r0, #6
	str r0, [sp]
	ldr r0, _022279F0 ; =0x00030201
	mov r1, #3
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1f
	mov r3, #2
	bl ov13_02227374
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022279E8: .word 0x0000114D
_022279EC: .word 0x00010200
_022279F0: .word 0x00030201
	thumb_func_end ov13_02227974

	thumb_func_start ov13_022279F4
ov13_022279F4: ; 0x022279F4
	push {r4, lr}
	ldr r2, _02227A18 ; =0x000003E2
	add r4, r0, #0
	add r0, #0x1c
	mov r1, #1
	mov r3, #0xe
	bl sub_0200E060
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	bl ov13_02227A1C
	pop {r4, pc}
	nop
_02227A18: .word 0x000003E2
	thumb_func_end ov13_022279F4

	thumb_func_start ov13_02227A1C
ov13_02227A1C: ; 0x02227A1C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	bl sub_02002AC8
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl ov16_0223EDF0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x18]
	add r0, #0x1c
	mov r1, #1
	bl sub_0201D738
	add r4, #0x32
	strb r0, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov13_02227A1C

	thumb_func_start ov13_02227A4C
ov13_02227A4C: ; 0x02227A4C
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #0]
	ldrh r1, [r3, #0x20]
	cmp r1, #0
	bne _02227A5C
	mov r0, #0
	pop {r4, pc}
_02227A5C:
	ldr r0, [r3, #8]
	ldr r3, [r3, #0xc]
	mov r2, #1
	bl sub_0207D688
	cmp r0, #0
	bne _02227A76
	ldr r1, [r4, #0]
	mov r0, #0
	strh r0, [r1, #0x20]
	ldr r1, [r4, #0]
	strb r0, [r1, #0x1f]
	pop {r4, pc}
_02227A76:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02227A4C

	thumb_func_start ov13_02227A7C
ov13_02227A7C: ; 0x02227A7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02227AC4 ; =0x0000114D
	ldr r6, [r5, #0]
	ldrb r7, [r5, r0]
	mov r0, #0x90
	ldrh r2, [r6, #0x20]
	mul r0, r7
	mov r4, #0
	add r1, r5, r0
_02227A90:
	ldrh r0, [r1, #0x3c]
	cmp r2, r0
	bne _02227ABA
	add r0, r4, #0
	mov r1, #6
	bl sub_020E2178
	add r0, r6, r7
	add r0, #0x27
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #6
	bl sub_020E2178
	ldr r1, _02227AC4 ; =0x0000114D
	ldr r2, [r5, #0]
	ldrb r1, [r5, r1]
	add r1, r2, r1
	add r1, #0x2c
	strb r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
_02227ABA:
	add r4, r4, #1
	add r1, r1, #4
	cmp r4, #0x24
	blo _02227A90
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227AC4: .word 0x0000114D
	thumb_func_end ov13_02227A7C

	thumb_func_start ov13_02227AC8
ov13_02227AC8: ; 0x02227AC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #4]
_02227AD2:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
_02227ADE:
	ldr r0, [r4, #0]
	ldr r2, [sp]
	ldr r0, [r0, #8]
	lsl r2, r2, #0x10
	ldr r1, [sp, #8]
	lsr r2, r2, #0x10
	bl sub_0207D910
	add r5, r0, #0
	beq _02227B50
	ldrh r0, [r5]
	cmp r0, #0
	beq _02227B48
	ldrh r1, [r5, #2]
	cmp r1, #0
	beq _02227B48
	ldr r2, [r4, #0]
	mov r1, #0xd
	ldr r2, [r2, #0xc]
	bl sub_0207CFF0
	add r7, r0, #0
	ldr r1, _02227B9C ; =0x02229BB0
	mov r0, #0
_02227B0E:
	mov r2, #1
	lsl r2, r0
	tst r2, r7
	beq _02227B40
	ldrb r2, [r1]
	mov r3, #0x90
	add r6, r2, #0
	mul r6, r3
	add r3, r4, r2
	ldr r2, _02227BA0 ; =0x0000114F
	ldrb r2, [r3, r2]
	add r3, r4, r6
	lsl r2, r2, #2
	add r2, r2, r3
	ldrh r3, [r5]
	strh r3, [r2, #0x3c]
	ldrh r3, [r5, #2]
	strh r3, [r2, #0x3e]
	ldrb r2, [r1]
	add r6, r4, r2
	ldr r2, _02227BA0 ; =0x0000114F
	ldrb r2, [r6, r2]
	add r3, r2, #1
	ldr r2, _02227BA0 ; =0x0000114F
	strb r3, [r6, r2]
_02227B40:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #5
	blo _02227B0E
_02227B48:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	b _02227ADE
_02227B50:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	blo _02227AD2
	mov r5, #0
	add r7, r5, #0
_02227B5E:
	ldr r0, _02227BA0 ; =0x0000114F
	add r6, r4, r5
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _02227B6E
	ldr r0, _02227BA4 ; =0x00001154
	strb r7, [r6, r0]
	b _02227B7A
_02227B6E:
	sub r0, r0, #1
	mov r1, #6
	bl sub_020E1F6C
	ldr r1, _02227BA4 ; =0x00001154
	strb r0, [r6, r1]
_02227B7A:
	ldr r1, [r4, #0]
	ldr r0, _02227BA4 ; =0x00001154
	add r2, r1, r5
	add r2, #0x2c
	ldrb r0, [r6, r0]
	ldrb r2, [r2]
	cmp r0, r2
	bhs _02227B90
	add r1, r1, r5
	add r1, #0x2c
	strb r0, [r1]
_02227B90:
	add r5, r5, #1
	cmp r5, #5
	blo _02227B5E
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02227B9C: .word 0x02229BB0
_02227BA0: .word 0x0000114F
_02227BA4: .word 0x00001154
	thumb_func_end ov13_02227AC8

	thumb_func_start ov13_02227BA8
ov13_02227BA8: ; 0x02227BA8
	push {r3, r4}
	ldr r2, _02227BD8 ; =0x0000114D
	ldr r3, [r0, #0]
	ldrb r2, [r0, r2]
	add r3, r3, r2
	add r3, #0x2c
	ldrb r4, [r3]
	mov r3, #6
	mul r3, r4
	add r1, r1, r3
	lsl r3, r1, #2
	mov r1, #0x90
	mul r1, r2
	add r0, r0, r1
	add r1, r0, r3
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02227BD2
	ldrh r1, [r1, #0x3e]
	cmp r1, #0
	bne _02227BD4
_02227BD2:
	mov r0, #0
_02227BD4:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02227BD8: .word 0x0000114D
	thumb_func_end ov13_02227BA8

	thumb_func_start ov13_02227BDC
ov13_02227BDC: ; 0x02227BDC
	push {r4, lr}
	add r4, r0, #0
	bl ov13_02227C08
	add r0, r4, #0
	bl ov13_02227C54
	add r0, r4, #0
	bl ov13_02227DE8
	add r0, r4, #0
	bl ov13_02227F7C
	add r0, r4, #0
	bl ov13_02228070
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02227BDC

	thumb_func_start ov13_02227C08
ov13_02227C08: ; 0x02227C08
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02227C50 ; =0x02229BE4
	add r2, sp, #0
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E010
	add r4, r0, #0
	bl sub_0200C704
	mov r1, #0xc3
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [r5, r1]
	add r0, r4, #0
	mov r2, #0xc
	bl sub_0200C7C0
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, sp, #0
	bl sub_0200CB30
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02227C50: .word 0x02229BE4
	thumb_func_end ov13_02227C08

	thumb_func_start ov13_02227C54
ov13_02227C54: ; 0x02227C54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r1, [r6, #0]
	mov r0, #0x10
	ldr r1, [r1, #0xc]
	bl sub_02006C24
	add r7, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E010
	str r0, [sp, #0x18]
	mov r4, #0
_02227C72:
	ldr r0, _02227D0C ; =0x0000B4B7
	add r5, r4, r0
	mov r0, #1
	add r1, r0, #0
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0xc3
	str r5, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CC3C
	mov r0, #1
	mov r1, #2
	bl sub_0207CE78
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r3, #0xc3
	str r5, [sp, #0x14]
	lsl r3, r3, #2
	ldr r0, [r6, #8]
	ldr r2, [sp, #0x18]
	ldr r3, [r6, r3]
	mov r1, #3
	bl sub_0200CDC4
	add r4, r4, #1
	cmp r4, #6
	blo _02227C72
	bl sub_0207CF40
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02227D0C ; =0x0000B4B7
	mov r1, #0xc3
	str r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CE24
	bl sub_0207CF44
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02227D0C ; =0x0000B4B7
	mov r1, #0xc3
	str r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CE54
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02227D0C: .word 0x0000B4B7
	thumb_func_end ov13_02227C54

	thumb_func_start ov13_02227D10
ov13_02227D10: ; 0x02227D10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r4, r2, #0
	bl ov16_0223E010
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #0xc3
	str r4, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r7, #0
	mov r2, #0x10
	bl sub_0200D948
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02227D10

	thumb_func_start ov13_02227D48
ov13_02227D48: ; 0x02227D48
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #2
	add r4, r2, #0
	bl sub_0207CE78
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r4, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	ldr r0, [r5, #8]
	ldr r3, [r3, #0xc]
	mov r1, #0x10
	bl sub_02003050
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov13_02227D48

	thumb_func_start ov13_02227D78
ov13_02227D78: ; 0x02227D78
	push {r4, r5, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0]
	bl ov16_0223E010
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	mov r1, #0x14
	ldr r3, _02227DD4 ; =0x02229CCC
	mul r1, r4
	ldr r3, [r3, r1]
	str r2, [sp, #0xc]
	str r3, [sp, #8]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r3, _02227DD8 ; =0x02229CBC
	str r2, [sp, #0x30]
	ldr r3, [r3, r1]
	add r2, sp, #0
	str r3, [sp, #0x14]
	ldr r3, _02227DDC ; =0x02229CC0
	ldr r3, [r3, r1]
	str r3, [sp, #0x18]
	ldr r3, _02227DE0 ; =0x02229CC4
	ldr r3, [r3, r1]
	str r3, [sp, #0x1c]
	ldr r3, _02227DE4 ; =0x02229CC8
	ldr r1, [r3, r1]
	str r1, [sp, #0x20]
	mov r1, #1
	str r1, [sp, #0x2c]
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	bl sub_0200CE6C
	add sp, #0x34
	pop {r4, r5, pc}
	nop
_02227DD4: .word 0x02229CCC
_02227DD8: .word 0x02229CBC
_02227DDC: .word 0x02229CC0
_02227DE0: .word 0x02229CC4
_02227DE4: .word 0x02229CC8
	thumb_func_end ov13_02227D78

	thumb_func_start ov13_02227DE8
ov13_02227DE8: ; 0x02227DE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0x31
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_02227DF4:
	add r0, r6, #0
	add r1, r4, #0
	bl ov13_02227D78
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _02227DF4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_02227DE8

	thumb_func_start ov13_02227E08
ov13_02227E08: ; 0x02227E08
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E010
	mov r6, #0x31
	str r0, [sp]
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #4
_02227E1E:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _02227E1E
	add r0, r7, #0
	bl ov13_02227FDC
	add r0, r7, #0
	bl ov13_022280C8
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r0, [sp]
	ldr r1, [r7, r1]
	bl sub_0200D0B0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02227E08

	thumb_func_start ov13_02227E48
ov13_02227E48: ; 0x02227E48
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #1
	add r6, r0, #0
	bl sub_0200D3F4
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov13_02227E48

	thumb_func_start ov13_02227E68
ov13_02227E68: ; 0x02227E68
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x31
	str r0, [sp]
	add r7, r1, #0
	mov r4, #0
	add r5, r0, #0
	lsl r6, r6, #4
_02227E76:
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _02227E76
	cmp r7, #0
	beq _02227E94
	cmp r7, #1
	beq _02227E9C
	cmp r7, #2
	beq _02227EA4
	pop {r3, r4, r5, r6, r7, pc}
_02227E94:
	ldr r0, [sp]
	bl ov13_02227EAC
	pop {r3, r4, r5, r6, r7, pc}
_02227E9C:
	ldr r0, [sp]
	bl ov13_02227EE0
	pop {r3, r4, r5, r6, r7, pc}
_02227EA4:
	ldr r0, [sp]
	bl ov13_02227F38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_02227E68

	thumb_func_start ov13_02227EAC
ov13_02227EAC: ; 0x02227EAC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldrh r1, [r1, #0x20]
	cmp r1, #0
	beq _02227EDA
	ldr r2, _02227EDC ; =0x0000B4B7
	bl ov13_02227D10
	ldr r1, [r4, #0]
	ldr r3, _02227EDC ; =0x0000B4B7
	ldrh r1, [r1, #0x20]
	add r0, r4, #0
	mov r2, #0
	bl ov13_02227D48
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x18
	mov r2, #0xb2
	bl ov13_02227E48
_02227EDA:
	pop {r4, pc}
	; .align 2, 0
_02227EDC: .word 0x0000B4B7
	thumb_func_end ov13_02227EAC

	thumb_func_start ov13_02227EE0
ov13_02227EE0: ; 0x02227EE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r6, _02227F30 ; =0x02229C44
	mov r4, #0
	add r7, r5, #0
_02227EEA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02227BA8
	str r0, [sp]
	cmp r0, #0
	beq _02227F22
	ldr r2, _02227F34 ; =0x0000B4B7
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r4, r2
	bl ov13_02227D10
	ldr r3, _02227F34 ; =0x0000B4B7
	lsl r2, r4, #0x10
	ldr r1, [sp]
	add r0, r5, #0
	lsr r2, r2, #0x10
	add r3, r4, r3
	bl ov13_02227D48
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	ldr r1, [r6, #0]
	ldr r2, [r6, #4]
	bl ov13_02227E48
_02227F22:
	add r4, r4, #1
	add r6, #8
	add r7, r7, #4
	cmp r4, #6
	blo _02227EEA
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227F30: .word 0x02229C44
_02227F34: .word 0x0000B4B7
	thumb_func_end ov13_02227EE0

	thumb_func_start ov13_02227F38
ov13_02227F38: ; 0x02227F38
	push {r3, r4, r5, lr}
	ldr r1, _02227F74 ; =0x0000114D
	add r4, r0, #0
	ldrb r1, [r4, r1]
	ldr r2, [r4, #0]
	add r1, r2, r1
	add r1, #0x27
	ldrb r1, [r1]
	bl ov13_02227BA8
	add r5, r0, #0
	ldr r2, _02227F78 ; =0x0000B4B7
	add r0, r4, #0
	add r1, r5, #0
	bl ov13_02227D10
	ldr r3, _02227F78 ; =0x0000B4B7
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov13_02227D48
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x28
	mov r2, #0x2c
	bl ov13_02227E48
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02227F74: .word 0x0000114D
_02227F78: .word 0x0000B4B7
	thumb_func_end ov13_02227F38

	thumb_func_start ov13_02227F7C
ov13_02227F7C: ; 0x02227F7C
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E010
	ldr r1, _02227FD8 ; =0x0000B4BE
	add r4, r0, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r1, r1, #5
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #0xc3
	ldr r3, [r5, #0]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r5, #8]
	ldr r3, [r3, #0xc]
	bl ov16_0226DB7C
	ldr r3, _02227FD8 ; =0x0000B4BE
	mov r1, #0xc3
	str r3, [sp]
	sub r0, r3, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r2, #0xc]
	add r0, r4, #0
	bl ov16_0226DC24
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	bl ov13_02228A64
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02227FD8: .word 0x0000B4BE
	thumb_func_end ov13_02227F7C

	thumb_func_start ov13_02227FDC
ov13_02227FDC: ; 0x02227FDC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl ov13_02228A58
	bl ov16_0226DCA8
	ldr r3, _02228004 ; =0x0000B4B9
	mov r0, #0xc3
	add r1, r3, #5
	str r3, [sp]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ov16_0226DBFC
	add sp, #4
	pop {r3, r4, pc}
	nop
_02228004: .word 0x0000B4B9
	thumb_func_end ov13_02227FDC

	thumb_func_start ov13_02228008
ov13_02228008: ; 0x02228008
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _02228048 ; =0x02229BC8
	lsl r2, r4, #2
	ldr r0, [r5, #0x34]
	ldr r1, [r1, r2]
	bl ov13_02228A9C
	cmp r4, #0
	beq _02228026
	cmp r4, #1
	beq _02228032
	cmp r4, #2
	pop {r3, r4, r5, pc}
_02228026:
	ldr r1, _0222804C ; =0x0000114D
	ldr r0, [r5, #0x34]
	ldrb r1, [r5, r1]
	bl ov13_02228A68
	pop {r3, r4, r5, pc}
_02228032:
	ldr r1, _0222804C ; =0x0000114D
	ldr r2, [r5, #0]
	ldrb r1, [r5, r1]
	ldr r0, [r5, #0x34]
	add r1, r2, r1
	add r1, #0x27
	ldrb r1, [r1]
	bl ov13_02228A68
	pop {r3, r4, r5, pc}
	nop
_02228048: .word 0x02229BC8
_0222804C: .word 0x0000114D
	thumb_func_end ov13_02228008

	thumb_func_start ov13_02228050
ov13_02228050: ; 0x02228050
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov13_02228A60
	ldr r0, [r4, #0x34]
	bl ov13_02228A90
	ldr r0, [r4, #0x34]
	bl ov13_02228A58
	bl ov16_0226DDE8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02228050

	thumb_func_start ov13_02228070
ov13_02228070: ; 0x02228070
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E010
	ldr r1, _022280C4 ; =0x0000B4BD
	add r4, r0, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r1, r1, #5
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #0xc3
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r2, #0xc]
	ldr r3, [r5, #8]
	bl ov16_0226DE44
	ldr r3, _022280C4 ; =0x0000B4BD
	mov r1, #0xc3
	str r3, [sp]
	sub r0, r3, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r2, #0xc]
	add r0, r4, #0
	bl ov16_0226DEEC
	str r0, [r5, #0x38]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_022280C4: .word 0x0000B4BD
	thumb_func_end ov13_02228070

	thumb_func_start ov13_022280C8
ov13_022280C8: ; 0x022280C8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl ov16_0226DF68
	ldr r3, _022280EC ; =0x0000B4B8
	mov r0, #0xc3
	add r1, r3, #5
	str r3, [sp]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ov16_0226DEC4
	add sp, #4
	pop {r3, r4, pc}
	nop
_022280EC: .word 0x0000B4B8
	thumb_func_end ov13_022280C8

	thumb_func_start ov13_022280F0
ov13_022280F0: ; 0x022280F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _02228116
	lsl r3, r1, #3
	ldr r1, _02228120 ; =0x02229BFC
	ldr r2, _02228124 ; =0x02229C00
	ldr r0, [r4, #0x38]
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	bl ov16_0226DFB0
	ldr r0, [r4, #0x38]
	mov r1, #0x3c
	bl ov16_0226DFD0
	pop {r4, pc}
_02228116:
	ldr r0, [r4, #0x38]
	bl ov16_0226DFBC
	pop {r4, pc}
	nop
_02228120: .word 0x02229BFC
_02228124: .word 0x02229C00
	thumb_func_end ov13_022280F0

	thumb_func_start ov13_02228128
ov13_02228128: ; 0x02228128
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #0xca
	lsl r0, r0, #2
	mov r2, #0
	add r0, r5, r0
	add r3, r2, #0
	add r4, r1, #0
	bl ov13_02228460
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _022283E4 ; =0x00000448
	mov r3, #9
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	str r3, [sp, #4]
	bl ov13_02228460
	mov r0, #0x10
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	ldr r0, _022283E8 ; =0x00000568
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x12
	bl ov13_02228460
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022283EC ; =0x00000688
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x1b
	bl ov13_02228460
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022283F0 ; =0x0000078C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x20
	bl ov13_02228460
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x89
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x25
	bl ov13_02228460
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022283F4 ; =0x00000994
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x25
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022283F8 ; =0x00000A98
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x39
	bl ov13_02228460
	ldr r0, _022283FC ; =0x00000ACA
	mov r2, #5
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x39
	str r2, [sp, #4]
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228400 ; =0x00000AFC
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x39
	bl ov13_02228460
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _02228404 ; =0x00000B2E
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0
	bl ov13_02228460
	ldr r0, _02228408 ; =0x00000BEE
	mov r2, #0x10
	str r2, [sp]
	mov r3, #6
	add r0, r5, r0
	add r1, r4, #0
	str r3, [sp, #4]
	bl ov13_02228460
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _0222840C ; =0x00000CAE
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0xc
	bl ov13_02228460
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _02228410 ; =0x00000D6E
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0x12
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228414 ; =0x00000E2E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #0xe6
	mov r2, #5
	lsl r0, r0, #4
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x2f
	str r2, [sp, #4]
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228418 ; =0x00000E92
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222841C ; =0x00000EC4
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xf
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228420 ; =0x00000EF6
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x34
	bl ov13_02228460
	ldr r0, _02228424 ; =0x00000F28
	mov r2, #5
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x34
	str r2, [sp, #4]
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228428 ; =0x00000F5A
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x34
	bl ov13_02228460
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222842C ; =0x00000F8C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xf
	mov r3, #0x34
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228430 ; =0x00000FBE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228434 ; =0x00000FDE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228438 ; =0x00000FFE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x2f
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222843C ; =0x0000101E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x33
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228440 ; =0x0000103E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x33
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228444 ; =0x0000105E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x33
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228448 ; =0x0000107E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x37
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222844C ; =0x0000109E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x37
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228450 ; =0x000010BE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x37
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228454 ; =0x000010DE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x3b
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02228458 ; =0x000010FE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x3b
	bl ov13_02228460
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222845C ; =0x0000111E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x3b
	bl ov13_02228460
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022283E4: .word 0x00000448
_022283E8: .word 0x00000568
_022283EC: .word 0x00000688
_022283F0: .word 0x0000078C
_022283F4: .word 0x00000994
_022283F8: .word 0x00000A98
_022283FC: .word 0x00000ACA
_02228400: .word 0x00000AFC
_02228404: .word 0x00000B2E
_02228408: .word 0x00000BEE
_0222840C: .word 0x00000CAE
_02228410: .word 0x00000D6E
_02228414: .word 0x00000E2E
_02228418: .word 0x00000E92
_0222841C: .word 0x00000EC4
_02228420: .word 0x00000EF6
_02228424: .word 0x00000F28
_02228428: .word 0x00000F5A
_0222842C: .word 0x00000F8C
_02228430: .word 0x00000FBE
_02228434: .word 0x00000FDE
_02228438: .word 0x00000FFE
_0222843C: .word 0x0000101E
_02228440: .word 0x0000103E
_02228444: .word 0x0000105E
_02228448: .word 0x0000107E
_0222844C: .word 0x0000109E
_02228450: .word 0x000010BE
_02228454: .word 0x000010DE
_02228458: .word 0x000010FE
_0222845C: .word 0x0000111E
	thumb_func_end ov13_02228128

	thumb_func_start ov13_02228460
ov13_02228460: ; 0x02228460
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r0, sp, #8
	mov lr, r3
	ldrb r3, [r0, #0x14]
	mov r6, #0
	mov ip, r3
	cmp r3, #0
	ble _022284AC
	ldrb r3, [r0, #0x10]
	lsl r2, r2, #1
	add r7, r1, r2
_02228478:
	mov r2, #0
	cmp r3, #0
	ble _022284A0
	mov r0, lr
	add r0, r0, r6
	lsl r0, r0, #6
	add r5, r7, r0
	add r0, r6, #0
	mul r0, r3
	lsl r1, r0, #1
	ldr r0, [sp]
	add r4, r0, r1
_02228490:
	lsl r1, r2, #1
	ldrh r0, [r5, r1]
	strh r0, [r4, r1]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, r3
	blt _02228490
_022284A0:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, ip
	cmp r6, r0
	blt _02228478
_022284AC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02228460

	thumb_func_start ov13_022284B0
ov13_022284B0: ; 0x022284B0
	cmp r1, #0x10
	bhi _0222853E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022284C0: ; jump table
	.short _022284E2 - _022284C0 - 2 ; case 0
	.short _022284E2 - _022284C0 - 2 ; case 1
	.short _022284E2 - _022284C0 - 2 ; case 2
	.short _022284E2 - _022284C0 - 2 ; case 3
	.short _022284F2 - _022284C0 - 2 ; case 4
	.short _02228500 - _022284C0 - 2 ; case 5
	.short _0222850C - _022284C0 - 2 ; case 6
	.short _0222850C - _022284C0 - 2 ; case 7
	.short _0222850C - _022284C0 - 2 ; case 8
	.short _0222850C - _022284C0 - 2 ; case 9
	.short _0222850C - _022284C0 - 2 ; case 10
	.short _0222850C - _022284C0 - 2 ; case 11
	.short _02228518 - _022284C0 - 2 ; case 12
	.short _02228524 - _022284C0 - 2 ; case 13
	.short _02228500 - _022284C0 - 2 ; case 14
	.short _02228530 - _022284C0 - 2 ; case 15
	.short _02228500 - _022284C0 - 2 ; case 16
_022284E2:
	mov r1, #0xca
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x12
	lsl r0, r0, #4
	mul r0, r2
	add r0, r1, r0
	bx lr
_022284F2:
	ldr r1, _02228544 ; =0x00000688
	add r1, r0, r1
	lsl r0, r2, #6
	add r0, r2, r0
	lsl r0, r0, #2
	add r0, r1, r0
	bx lr
_02228500:
	ldr r1, _02228548 ; =0x00000A98
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_0222850C:
	ldr r1, _0222854C ; =0x00000B2E
	add r1, r0, r1
	mov r0, #0xc0
	mul r0, r2
	add r0, r1, r0
	bx lr
_02228518:
	ldr r1, _02228550 ; =0x00000E2E
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_02228524:
	ldr r1, _02228554 ; =0x00000EF6
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_02228530:
	ldr r1, _02228544 ; =0x00000688
	add r1, r0, r1
	lsl r0, r2, #6
	add r0, r2, r0
	lsl r0, r0, #2
	add r0, r1, r0
	bx lr
_0222853E:
	mov r0, #0
	bx lr
	nop
_02228544: .word 0x00000688
_02228548: .word 0x00000A98
_0222854C: .word 0x00000B2E
_02228550: .word 0x00000E2E
_02228554: .word 0x00000EF6
	thumb_func_end ov13_022284B0

	thumb_func_start ov13_02228558
ov13_02228558: ; 0x02228558
	cmp r2, #3
	bne _02228560
	mov r0, #5
	bx lr
_02228560:
	cmp r1, #0x10
	bhi _022285BE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02228570: ; jump table
	.short _02228592 - _02228570 - 2 ; case 0
	.short _02228592 - _02228570 - 2 ; case 1
	.short _02228592 - _02228570 - 2 ; case 2
	.short _02228592 - _02228570 - 2 ; case 3
	.short _02228596 - _02228570 - 2 ; case 4
	.short _0222859A - _02228570 - 2 ; case 5
	.short _0222859E - _02228570 - 2 ; case 6
	.short _0222859E - _02228570 - 2 ; case 7
	.short _0222859E - _02228570 - 2 ; case 8
	.short _0222859E - _02228570 - 2 ; case 9
	.short _0222859E - _02228570 - 2 ; case 10
	.short _0222859E - _02228570 - 2 ; case 11
	.short _0222859A - _02228570 - 2 ; case 12
	.short _0222859A - _02228570 - 2 ; case 13
	.short _0222859A - _02228570 - 2 ; case 14
	.short _022285AA - _02228570 - 2 ; case 15
	.short _0222859A - _02228570 - 2 ; case 16
_02228592:
	mov r0, #0
	bx lr
_02228596:
	mov r0, #3
	bx lr
_0222859A:
	mov r0, #2
	bx lr
_0222859E:
	ldr r1, _022285C4 ; =0x0000114D
	ldrb r0, [r0, r1]
	add r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_022285AA:
	cmp r3, #2
	bne _022285BA
	ldr r1, _022285C4 ; =0x0000114D
	ldrb r0, [r0, r1]
	add r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_022285BA:
	mov r0, #1
	bx lr
_022285BE:
	mov r0, #0
	bx lr
	nop
_022285C4: .word 0x0000114D
	thumb_func_end ov13_02228558

	thumb_func_start ov13_022285C8
ov13_022285C8: ; 0x022285C8
	push {r4, r5, r6, r7}
	cmp r2, #0
	bne _022285D8
	ldr r2, _0222862C ; =0x00000FBE
	add r2, r0, r2
	lsl r0, r3, #5
	add r0, r2, r0
	b _02228600
_022285D8:
	cmp r2, #1
	bne _022285E6
	ldr r2, _02228630 ; =0x0000101E
	add r2, r0, r2
	lsl r0, r3, #5
	add r0, r2, r0
	b _02228600
_022285E6:
	cmp r2, #2
	bne _022285F4
	ldr r2, _02228634 ; =0x0000107E
	add r2, r0, r2
	lsl r0, r3, #5
	add r0, r2, r0
	b _02228600
_022285F4:
	cmp r2, #3
	bne _02228628
	ldr r2, _02228638 ; =0x000010DE
	add r2, r0, r2
	lsl r0, r3, #5
	add r0, r2, r0
_02228600:
	mov r2, #0
_02228602:
	lsl r4, r2, #3
	lsl r5, r2, #5
	mov r3, #0
	add r4, r0, r4
	add r5, r1, r5
_0222860C:
	lsl r6, r3, #1
	ldrh r7, [r4, r6]
	add r3, r3, #1
	lsl r3, r3, #0x10
	add r6, r5, r6
	lsr r3, r3, #0x10
	strh r7, [r6, #0xc]
	cmp r3, #4
	blo _0222860C
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, #4
	blo _02228602
_02228628:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0222862C: .word 0x00000FBE
_02228630: .word 0x0000101E
_02228634: .word 0x0000107E
_02228638: .word 0x000010DE
	thumb_func_end ov13_022285C8

	thumb_func_start ov13_0222863C
ov13_0222863C: ; 0x0222863C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r5, r1, #0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	str r0, [sp]
	bl ov13_022284B0
	add r3, sp, #0x10
	add r4, r0, #0
	ldrb r3, [r3, #0x10]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl ov13_02228558
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x10
	ldr r0, [sp, #4]
	ldr r6, _022286A8 ; =0x02229D7F
	lsl r3, r0, #2
	ldr r0, _022286AC ; =0x02229D7E
	ldrb r6, [r6, r3]
	ldrb r0, [r0, r3]
	mov r1, #0
	mul r6, r0
	cmp r6, #0
	ble _02228698
	ldr r0, _022286B0 ; =0x02229D7C
	ldr r7, _022286B4 ; =0x00000FFF
	add r3, r0, r3
_0222867E:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r7
	orr r6, r2
	strh r6, [r5, r0]
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrb r6, [r3, #2]
	ldrb r0, [r3, #3]
	mul r0, r6
	cmp r1, r0
	blt _0222867E
_02228698:
	ldr r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r1, r5, #0
	bl ov13_022285C8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022286A8: .word 0x02229D7F
_022286AC: .word 0x02229D7E
_022286B0: .word 0x02229D7C
_022286B4: .word 0x00000FFF
	thumb_func_end ov13_0222863C

	thumb_func_start ov13_022286B8
ov13_022286B8: ; 0x022286B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	lsl r4, r0, #2
	ldr r0, _0222871C ; =0x02229D7F
	ldrb r7, [r0, r4]
	ldr r0, _02228720 ; =0x02229D7E
	ldrb r6, [r0, r4]
	ldr r0, [r5, #0]
	add r1, r6, #0
	mul r1, r7
	ldr r0, [r0, #0xc]
	lsl r1, r1, #1
	bl sub_02018144
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	bl ov13_0222863C
	ldr r0, _02228724 ; =0x02229D7D
	ldr r3, _02228728 ; =0x02229D7C
	ldrb r0, [r0, r4]
	ldrb r3, [r3, r4]
	ldr r2, [sp, #0x18]
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_020198C0
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_0201C3C0
	ldr r0, [sp, #0x18]
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0222871C: .word 0x02229D7F
_02228720: .word 0x02229D7E
_02228724: .word 0x02229D7D
_02228728: .word 0x02229D7C
	thumb_func_end ov13_022286B8

	thumb_func_start ov13_0222872C
ov13_0222872C: ; 0x0222872C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	cmp r1, #6
	blo _0222874A
	cmp r1, #0xb
	bhi _0222874A
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222874A
	add r1, #0xb
	ldr r0, _022287A0 ; =0x02229DC0
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	b _02228750
_0222874A:
	ldr r0, _022287A0 ; =0x02229DC0
	lsl r1, r1, #2
	ldr r4, [r0, r1]
_02228750:
	cmp r4, #0
	beq _0222879C
	cmp r2, #0
	beq _02228760
	cmp r2, #1
	beq _02228768
	cmp r2, #2
	bne _0222876E
_02228760:
	mov r0, #1
	str r0, [sp]
	mov r7, #2
	b _0222876E
_02228768:
	mov r0, #0
	str r0, [sp]
	mov r7, #4
_0222876E:
	mov r5, #0
_02228770:
	ldrb r0, [r4, r5]
	cmp r0, #0xff
	beq _0222879C
	ldr r1, [r6, #0x2c]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r1, [sp]
	add r2, r7, #0
	mov r3, #0
	bl sub_0201C04C
	ldrb r0, [r4, r5]
	ldr r1, [r6, #0x2c]
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _02228770
_0222879C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022287A0: .word 0x02229DC0
	thumb_func_end ov13_0222872C

	thumb_func_start ov13_022287A4
ov13_022287A4: ; 0x022287A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	cmp r1, #6
	blo _022287C0
	cmp r1, #0xb
	bhi _022287C0
	sub r0, r1, #6
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r6, [r1, r0]
	b _022287E4
_022287C0:
	cmp r1, #4
	bne _02228808
	mov r7, #0x31
	mov r4, #0
	lsl r7, r7, #4
_022287CA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r6, [r0, r7]
	add r0, r6, #0
	bl sub_0200D408
	cmp r0, #0
	bne _022287E4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _022287CA
_022287E4:
	ldr r0, [sp]
	cmp r0, #0
	beq _022287F2
	cmp r0, #1
	beq _022287FE
	cmp r0, #2
	bne _02228808
_022287F2:
	add r0, r6, #0
	mov r1, #0
	mov r2, #2
	bl sub_0200D5DC
	pop {r3, r4, r5, r6, r7, pc}
_022287FE:
	mov r1, #0
	add r0, r6, #0
	sub r2, r1, #4
	bl sub_0200D5DC
_02228808:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_022287A4

	thumb_func_start ov13_0222880C
ov13_0222880C: ; 0x0222880C
	push {r4, r5}
	ldr r3, _02228844 ; =0x0000113E
	mov r5, #0
	strb r5, [r0, r3]
	add r4, r3, #1
	strb r5, [r0, r4]
	add r4, r3, #2
	strb r1, [r0, r4]
	add r1, r3, #3
	ldrb r4, [r0, r1]
	mov r1, #0xf0
	bic r4, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x18
	add r2, r4, #0
	orr r2, r1
	add r1, r3, #3
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	mov r1, #0xf
	bic r2, r1
	mov r1, #1
	orr r2, r1
	add r1, r3, #3
	strb r2, [r0, r1]
	pop {r4, r5}
	bx lr
	nop
_02228844: .word 0x0000113E
	thumb_func_end ov13_0222880C

	thumb_func_start ov13_02228848
ov13_02228848: ; 0x02228848
	push {r4, lr}
	ldr r3, _0222891C ; =0x00001141
	add r4, r0, #0
	ldrb r1, [r4, r3]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	beq _02228918
	sub r1, r3, #3
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _02228868
	cmp r1, #1
	beq _022288A0
	cmp r1, #2
	beq _022288D8
	pop {r4, pc}
_02228868:
	sub r1, r3, #1
	add r3, #0xb
	ldrb r1, [r4, r1]
	ldrb r3, [r4, r3]
	mov r2, #1
	bl ov13_022286B8
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl ov13_0222872C
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl ov13_022287A4
	ldr r0, _02228920 ; =0x0000113F
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_022288A0:
	sub r1, r3, #1
	add r3, #0xb
	ldrb r1, [r4, r1]
	ldrb r3, [r4, r3]
	mov r2, #2
	bl ov13_022286B8
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #2
	bl ov13_0222872C
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #2
	bl ov13_022287A4
	ldr r0, _02228920 ; =0x0000113F
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #2
	sub r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_022288D8:
	sub r1, r3, #1
	add r3, #0xb
	ldrb r1, [r4, r1]
	ldrb r3, [r4, r3]
	mov r2, #0
	bl ov13_022286B8
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0
	bl ov13_0222872C
	mov r1, #0x45
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0
	bl ov13_022287A4
	ldr r0, _02228920 ; =0x0000113F
	mov r2, #0
	strb r2, [r4, r0]
	sub r1, r0, #1
	strb r2, [r4, r1]
	add r1, r0, #2
	ldrb r2, [r4, r1]
	mov r1, #0xf
	add r0, r0, #2
	bic r2, r1
	strb r2, [r4, r0]
_02228918:
	pop {r4, pc}
	nop
_0222891C: .word 0x00001141
_02228920: .word 0x0000113F
	thumb_func_end ov13_02228848

	thumb_func_start ov13_02228924
ov13_02228924: ; 0x02228924
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	beq _02228936
	cmp r6, #1
	beq _02228994
	cmp r6, #2
	beq _02228A1A
	pop {r3, r4, r5, r6, r7, pc}
_02228936:
	mov r1, #0
	add r2, r1, #0
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _0222897A
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	add r3, r6, #0
	bl ov13_022286B8
	b _02228986
_0222897A:
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
_02228986:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	pop {r3, r4, r5, r6, r7, pc}
_02228994:
	mov r4, #0
	mov r7, #3
_02228998:
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02227BA8
	cmp r0, #0
	bne _022289B6
	add r1, r4, #6
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	add r3, r6, #0
	bl ov13_022286B8
	b _022289C6
_022289B6:
	add r1, r4, #6
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
_022289C6:
	add r4, r4, #1
	cmp r4, #6
	blo _02228998
	ldr r0, _02228A34 ; =0x0000114D
	ldrb r1, [r5, r0]
	add r0, r0, #7
	add r1, r5, r1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022289F4
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #3
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #3
	add r3, r6, #0
	bl ov13_022286B8
	b _02228A0C
_022289F4:
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
_02228A0C:
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	pop {r3, r4, r5, r6, r7, pc}
_02228A1A:
	mov r1, #0xf
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	add r3, r6, #0
	bl ov13_022286B8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228A34: .word 0x0000114D
	thumb_func_end ov13_02228924

	thumb_func_start ov13_02228A38
ov13_02228A38: ; 0x02228A38
	push {r3, lr}
	mov r1, #0x10
	bl sub_02018144
	add r3, r0, #0
	mov r2, #0x10
	mov r1, #0
_02228A46:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02228A46
	pop {r3, pc}
	thumb_func_end ov13_02228A38

	thumb_func_start ov13_02228A50
ov13_02228A50: ; 0x02228A50
	ldr r3, _02228A54 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02228A54: .word sub_020181C4
	thumb_func_end ov13_02228A50

	thumb_func_start ov13_02228A58
ov13_02228A58: ; 0x02228A58
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov13_02228A58

	thumb_func_start ov13_02228A5C
ov13_02228A5C: ; 0x02228A5C
	ldrb r0, [r0, #8]
	bx lr
	thumb_func_end ov13_02228A5C

	thumb_func_start ov13_02228A60
ov13_02228A60: ; 0x02228A60
	strb r1, [r0, #8]
	bx lr
	thumb_func_end ov13_02228A60

	thumb_func_start ov13_02228A64
ov13_02228A64: ; 0x02228A64
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov13_02228A64

	thumb_func_start ov13_02228A68
ov13_02228A68: ; 0x02228A68
	push {r3, r4, lr}
	sub sp, #4
	strb r1, [r0, #9]
	ldrb r1, [r0, #8]
	cmp r1, #1
	bne _02228A8C
	ldrb r1, [r0, #9]
	ldr r2, [r0, #4]
	lsl r4, r1, #3
	add r3, r2, r4
	ldrb r1, [r3, #3]
	str r1, [sp]
	ldrb r1, [r2, r4]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #1]
	ldr r0, [r0, #0]
	bl ov16_0226DD7C
_02228A8C:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov13_02228A68

	thumb_func_start ov13_02228A90
ov13_02228A90: ; 0x02228A90
	mov r1, #0
	strb r1, [r0, #9]
	mov r1, #0xff
	strb r1, [r0, #0xa]
	bx lr
	; .align 2, 0
	thumb_func_end ov13_02228A90

	thumb_func_start ov13_02228A9C
ov13_02228A9C: ; 0x02228A9C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov13_02228A90
	mov r0, #0
	str r5, [r4, #4]
	mvn r0, r0
	str r0, [r4, #0xc]
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _02228AC6
	ldr r3, [r4, #4]
	ldrb r0, [r3, #3]
	str r0, [sp]
	ldrb r1, [r3]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #1]
	ldr r0, [r4, #0]
	bl ov16_0226DD7C
_02228AC6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov13_02228A9C

	thumb_func_start ov13_02228AC8
ov13_02228AC8: ; 0x02228AC8
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov13_02228AC8

	thumb_func_start ov13_02228ACC
ov13_02228ACC: ; 0x02228ACC
	push {r3, r4, lr}
	sub sp, #4
	ldrb r1, [r0, #8]
	cmp r1, #1
	bne _02228ADC
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_02228ADC:
	ldr r1, _02228B10 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0xf3
	tst r1, r2
	beq _02228B08
	mov r1, #1
	strb r1, [r0, #8]
	ldrb r1, [r0, #9]
	ldr r2, [r0, #4]
	lsl r4, r1, #3
	add r3, r2, r4
	ldrb r1, [r3, #3]
	str r1, [sp]
	ldrb r1, [r2, r4]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #1]
	ldr r0, [r0, #0]
	bl ov16_0226DD7C
	ldr r0, _02228B14 ; =0x000005DC
	bl sub_02005748
_02228B08:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02228B10: .word 0x021BF67C
_02228B14: .word 0x000005DC
	thumb_func_end ov13_02228ACC

	thumb_func_start ov13_02228B18
ov13_02228B18: ; 0x02228B18
	cmp r1, #3
	bhi _02228B60
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02228B28: ; jump table
	.short _02228B30 - _02228B28 - 2 ; case 0
	.short _02228B3C - _02228B28 - 2 ; case 1
	.short _02228B48 - _02228B28 - 2 ; case 2
	.short _02228B54 - _02228B28 - 2 ; case 3
_02228B30:
	ldrb r1, [r0, #5]
	mov r0, #0x80
	tst r0, r1
	beq _02228B60
	mov r0, #1
	bx lr
_02228B3C:
	ldrb r1, [r0, #4]
	mov r0, #0x80
	tst r0, r1
	beq _02228B60
	mov r0, #1
	bx lr
_02228B48:
	ldrb r1, [r0, #7]
	mov r0, #0x80
	tst r0, r1
	beq _02228B60
	mov r0, #1
	bx lr
_02228B54:
	ldrb r1, [r0, #6]
	mov r0, #0x80
	tst r0, r1
	beq _02228B60
	mov r0, #1
	bx lr
_02228B60:
	mov r0, #0
	bx lr
	thumb_func_end ov13_02228B18

	thumb_func_start ov13_02228B64
ov13_02228B64: ; 0x02228B64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl ov13_02228ACC
	cmp r0, #0
	bne _02228B7A
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02228B7A:
	ldr r0, _02228CF0 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _02228B9E
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #9]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_0201E028
	add r4, r0, #0
	mov r6, #0
	b _02228C06
_02228B9E:
	mov r1, #0x80
	tst r1, r0
	beq _02228BC0
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #9]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_0201E028
	add r4, r0, #0
	mov r6, #1
	b _02228C06
_02228BC0:
	mov r1, #0x20
	tst r1, r0
	beq _02228BE2
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #9]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_0201E028
	add r4, r0, #0
	mov r6, #2
	b _02228C06
_02228BE2:
	mov r1, #0x10
	tst r0, r1
	beq _02228C04
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #9]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_0201E028
	add r4, r0, #0
	mov r6, #3
	b _02228C06
_02228C04:
	mov r4, #0xff
_02228C06:
	cmp r4, #0xff
	beq _02228CC6
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x80
	add r1, r4, #0
	tst r1, r0
	beq _02228C26
	ldrb r1, [r5, #0xa]
	cmp r1, #0xff
	beq _02228C20
	add r4, r1, #0
	b _02228C26
_02228C20:
	eor r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02228C26:
	mov r7, #0
_02228C28:
	mov r0, #1
	ldr r1, [r5, #0xc]
	lsl r0, r4
	tst r0, r1
	bne _02228C60
	str r7, [sp, #0xc]
	str r7, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl sub_0201E028
	mov r1, #0x7f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r4
	beq _02228C58
	ldrb r0, [r5, #9]
	cmp r1, r0
	bne _02228C5C
_02228C58:
	ldrb r4, [r5, #9]
	b _02228C60
_02228C5C:
	add r4, r1, #0
	b _02228C28
_02228C60:
	ldrb r0, [r5, #9]
	cmp r0, r4
	beq _02228CBE
	ldr r0, [r5, #4]
	lsl r7, r4, #3
	add r1, sp, #0x10
	add r2, sp, #0x10
	add r0, r0, r7
	add r1, #3
	add r2, #2
	bl sub_0201E010
	ldr r0, [r5, #4]
	add r1, sp, #0x10
	add r0, r0, r7
	add r1, #1
	add r2, sp, #0x10
	bl sub_0201E01C
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r0, r0, r7
	bl ov13_02228B18
	cmp r0, #1
	bne _02228CA0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02228CA0
	ldrb r0, [r5, #9]
	strb r0, [r5, #0xa]
	b _02228CA4
_02228CA0:
	mov r0, #0xff
	strb r0, [r5, #0xa]
_02228CA4:
	strb r4, [r5, #9]
	add r3, sp, #0x10
	ldrb r0, [r3]
	str r0, [sp]
	ldrb r1, [r3, #3]
	ldrb r2, [r3, #1]
	ldrb r3, [r3, #2]
	ldr r0, [r5, #0]
	bl ov16_0226DD7C
	ldr r0, _02228CF4 ; =0x000005DC
	bl sub_02005748
_02228CBE:
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02228CC6:
	ldr r0, _02228CF0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02228CD6
	add sp, #0x14
	ldrb r0, [r5, #9]
	pop {r4, r5, r6, r7, pc}
_02228CD6:
	mov r0, #2
	tst r1, r0
	beq _02228CEA
	ldr r0, _02228CF8 ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02228CEA:
	sub r0, r0, #3
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02228CF0: .word 0x021BF67C
_02228CF4: .word 0x000005DC
_02228CF8: .word 0x000005DD
	thumb_func_end ov13_02228B64
	; 0x02228CFC


	.rodata
	.incbin "incbin/overlay13_rodata.bin"
