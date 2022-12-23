	.include "macros/function.inc"
	.include "overlay013/ov13_0221FC20.inc"

	

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
	bl memset
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
	bl NNS_G2dGetUnpackedScreenData
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
	bl NNS_G2dGetUnpackedScreenData
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
	bl memcpy
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
	bl memcpy
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
	bl _s32_div_f
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
	bl NNS_G2dGetUnpackedScreenData
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

	.rodata


	.global Unk_ov13_02228CFC
Unk_ov13_02228CFC: ; 0x02228CFC
	.incbin "incbin/overlay13_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov13_02228D04
Unk_ov13_02228D04: ; 0x02228D04
	.incbin "incbin/overlay13_rodata.bin", 0x8, 0x18 - 0x8

	.global Unk_ov13_02228D14
Unk_ov13_02228D14: ; 0x02228D14
	.incbin "incbin/overlay13_rodata.bin", 0x18, 0x28 - 0x18

	.global Unk_ov13_02228D24
Unk_ov13_02228D24: ; 0x02228D24
	.incbin "incbin/overlay13_rodata.bin", 0x28, 0x3C - 0x28

	.global Unk_ov13_02228D38
Unk_ov13_02228D38: ; 0x02228D38
	.incbin "incbin/overlay13_rodata.bin", 0x3C, 0x50 - 0x3C

	.global Unk_ov13_02228D4C
Unk_ov13_02228D4C: ; 0x02228D4C
	.incbin "incbin/overlay13_rodata.bin", 0x50, 0x68 - 0x50

	.global Unk_ov13_02228D64
Unk_ov13_02228D64: ; 0x02228D64
	.incbin "incbin/overlay13_rodata.bin", 0x68, 0x80 - 0x68

	.global Unk_ov13_02228D7C
Unk_ov13_02228D7C: ; 0x02228D7C
	.incbin "incbin/overlay13_rodata.bin", 0x80, 0x9C - 0x80

	.global Unk_ov13_02228D98
Unk_ov13_02228D98: ; 0x02228D98
	.incbin "incbin/overlay13_rodata.bin", 0x9C, 0xB8 - 0x9C

	.global Unk_ov13_02228DB4
Unk_ov13_02228DB4: ; 0x02228DB4
	.incbin "incbin/overlay13_rodata.bin", 0xB8, 0xD4 - 0xB8

	.global Unk_ov13_02228DD0
Unk_ov13_02228DD0: ; 0x02228DD0
	.incbin "incbin/overlay13_rodata.bin", 0xD4, 0xF0 - 0xD4

	.global Unk_ov13_02228DEC
Unk_ov13_02228DEC: ; 0x02228DEC
	.incbin "incbin/overlay13_rodata.bin", 0xF0, 0x110 - 0xF0

	.global Unk_ov13_02228E0C
Unk_ov13_02228E0C: ; 0x02228E0C
	.incbin "incbin/overlay13_rodata.bin", 0x110, 0x130 - 0x110

	.global Unk_ov13_02228E2C
Unk_ov13_02228E2C: ; 0x02228E2C
	.incbin "incbin/overlay13_rodata.bin", 0x130, 0x154 - 0x130

	.global Unk_ov13_02228E50
Unk_ov13_02228E50: ; 0x02228E50
	.incbin "incbin/overlay13_rodata.bin", 0x154, 0x50

