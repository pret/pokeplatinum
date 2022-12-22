	.include "macros/function.inc"
	.include "include/ov66_02230C44.inc"

	

	.text


	thumb_func_start ov66_02230C44
ov66_02230C44: ; 0x02230C44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, [sp, #0x20]
	add r5, r0, #0
	add r7, r1, #0
	add r0, r6, #0
	mov r1, #0x48
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x48
	add r4, r0, #0
	bl memset
	ldr r0, [sp, #4]
	str r0, [r4, #0x3c]
	ldr r0, [sp]
	str r7, [r4, #0x40]
	str r0, [r4, #0x44]
	add r0, r4, #0
	add r0, #0x39
	strb r5, [r0]
	strh r6, [r4, #0x3a]
	mov r5, #0
_02230C78:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov66_02230D0C
	add r5, r5, #1
	cmp r5, #0xd
	blt _02230C78
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_02230C44

	thumb_func_start ov66_02230C90
ov66_02230C90: ; 0x02230C90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02230C96:
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_02230D34
	add r4, r4, #1
	cmp r4, #0xd
	blt _02230C96
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02230C90

	thumb_func_start ov66_02230CAC
ov66_02230CAC: ; 0x02230CAC
	ldr r3, _02230CB4 ; =ov66_02230D54
	mov r1, #5
	bx r3
	nop
_02230CB4: .word ov66_02230D54
	thumb_func_end ov66_02230CAC

	thumb_func_start ov66_02230CB8
ov66_02230CB8: ; 0x02230CB8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r5, #0
	cmp r0, #0
	beq _02230CE2
	bl sub_02006844
	cmp r0, #0
	beq _02230CE2
	ldr r0, [r4, #0]
	bl sub_02006814
	add r0, r5, #0
	str r0, [r4, #0]
	add r0, r4, #0
	add r4, #0x38
	ldrb r1, [r4]
	bl ov66_02230D7C
	add r5, r0, #0
_02230CE2:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02230CB8

	thumb_func_start ov66_02230CE8
ov66_02230CE8: ; 0x02230CE8
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02230CE8

	thumb_func_start ov66_02230CEC
ov66_02230CEC: ; 0x02230CEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _02230CFE
	bl GF_AssertFail
_02230CFE:
	ldrh r2, [r5, #0x3a]
	ldr r1, [r4, #0]
	add r0, r6, #0
	bl sub_020067E8
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02230CEC

	thumb_func_start ov66_02230D0C
ov66_02230D0C: ; 0x02230D0C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0xd
	blo _02230D1C
	bl GF_AssertFail
_02230D1C:
	lsl r3, r4, #2
	add r1, r5, #4
	ldr r4, _02230D30 ; =0x02258D88
	add r1, r1, r3
	ldr r3, [r4, r3]
	add r0, r5, #0
	add r2, r6, #0
	blx r3
	pop {r4, r5, r6, pc}
	nop
_02230D30: .word 0x02258D88
	thumb_func_end ov66_02230D0C

	thumb_func_start ov66_02230D34
ov66_02230D34: ; 0x02230D34
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0xd
	blo _02230D42
	bl GF_AssertFail
_02230D42:
	ldr r1, _02230D50 ; =0x02258D20
	lsl r2, r5, #2
	add r0, r4, #4
	ldr r1, [r1, r2]
	add r0, r0, r2
	blx r1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02230D50: .word 0x02258D20
	thumb_func_end ov66_02230D34

	thumb_func_start ov66_02230D54
ov66_02230D54: ; 0x02230D54
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xd
	blo _02230D62
	bl GF_AssertFail
_02230D62:
	ldr r2, _02230D78 ; =0x02258D54
	lsl r3, r4, #2
	add r1, r5, #4
	ldr r2, [r2, r3]
	add r0, r5, #0
	add r1, r1, r3
	blx r2
	add r5, #0x38
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	nop
_02230D78: .word 0x02258D54
	thumb_func_end ov66_02230D54

	thumb_func_start ov66_02230D7C
ov66_02230D7C: ; 0x02230D7C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0xd
	blo _02230D8A
	bl GF_AssertFail
_02230D8A:
	ldr r2, _02230D9C ; =0x02258DBC
	lsl r3, r5, #2
	add r1, r4, #4
	ldr r2, [r2, r3]
	add r0, r4, #0
	add r1, r1, r3
	blx r2
	pop {r3, r4, r5, pc}
	nop
_02230D9C: .word 0x02258DBC
	thumb_func_end ov66_02230D7C

	thumb_func_start ov66_02230DA0
ov66_02230DA0: ; 0x02230DA0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_02230DA8:
	add r0, r6, #0
	bl sub_02025E6C
	str r0, [r5, #0x20]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02230DA8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_02230DA0

	thumb_func_start ov66_02230DBC
ov66_02230DBC: ; 0x02230DBC
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_02230DC4:
	ldr r0, [r5, #0x20]
	bl sub_020181C4
	str r6, [r5, #0x20]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02230DC4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_02230DBC

	thumb_func_start ov66_02230DD8
ov66_02230DD8: ; 0x02230DD8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	add r0, r7, #0
	str r2, [sp]
	bl ov66_0222E3BC
	bl ov66_0222E8C4
	add r1, r6, #0
	str r0, [r6, #0]
	add r0, r7, #0
	add r1, #8
	bl ov66_0222E934
	add r0, r7, #0
	add r1, r6, #4
	bl ov66_0222E294
	str r7, [r6, #0x30]
	mov r4, #0
	str r4, [r6, #0x1c]
	add r5, r6, #0
_02230E06:
	add r1, r6, r4
	ldrb r1, [r1, #4]
	add r0, r7, #0
	bl ov66_0222E374
	cmp r0, #0
	beq _02230E1C
	ldr r1, [r5, #0x20]
	ldr r2, [sp]
	bl ov66_0222E640
_02230E1C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02230E06
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_02230DD8

	thumb_func_start ov66_02230E28
ov66_02230E28: ; 0x02230E28
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	mov r1, #0x20
	bl sub_02018144
	str r0, [r5, #0]
	mov r1, #0
	mov r2, #0x20
	bl memset
	ldr r1, [r5, #0]
	ldr r0, [r4, #0x40]
	str r0, [r1, #0]
	ldr r0, [r4, #0x3c]
	str r0, [r1, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02230E28

	thumb_func_start ov66_02230E4C
ov66_02230E4C: ; 0x02230E4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02230E5A
	bl GF_AssertFail
_02230E5A:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02230E4C

	thumb_func_start ov66_02230E68
ov66_02230E68: ; 0x02230E68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, [r6, #0]
	ldr r0, [r5, #0x3c]
	bl ov66_0222EB28
	str r0, [r4, #4]
	ldr r0, [r5, #0x3c]
	bl ov66_0222EB38
	str r0, [r4, #8]
	ldr r2, _02230E8C ; =0x02258A84
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02230CEC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02230E8C: .word 0x02258A84
	thumb_func_end ov66_02230E68

	thumb_func_start ov66_02230E90
ov66_02230E90: ; 0x02230E90
	push {r3, lr}
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x18]
	cmp r1, #0xa
	bhi _02230F14
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02230EA6: ; jump table
	.short _02230EBC - _02230EA6 - 2 ; case 0
	.short _02230EC4 - _02230EA6 - 2 ; case 1
	.short _02230ECC - _02230EA6 - 2 ; case 2
	.short _02230EE4 - _02230EA6 - 2 ; case 3
	.short _02230EEC - _02230EA6 - 2 ; case 4
	.short _02230EF4 - _02230EA6 - 2 ; case 5
	.short _02230ED4 - _02230EA6 - 2 ; case 6
	.short _02230EDC - _02230EA6 - 2 ; case 7
	.short _02230EFC - _02230EA6 - 2 ; case 8
	.short _02230F04 - _02230EA6 - 2 ; case 9
	.short _02230F0C - _02230EA6 - 2 ; case 10
_02230EBC:
	mov r1, #9
	bl ov66_02230D54
	b _02230F18
_02230EC4:
	mov r1, #1
	bl ov66_02230D54
	b _02230F18
_02230ECC:
	mov r1, #2
	bl ov66_02230D54
	b _02230F18
_02230ED4:
	mov r1, #3
	bl ov66_02230D54
	b _02230F18
_02230EDC:
	mov r1, #4
	bl ov66_02230D54
	b _02230F18
_02230EE4:
	mov r1, #6
	bl ov66_02230D54
	b _02230F18
_02230EEC:
	mov r1, #7
	bl ov66_02230D54
	b _02230F18
_02230EF4:
	mov r1, #8
	bl ov66_02230D54
	b _02230F18
_02230EFC:
	mov r1, #0xa
	bl ov66_02230D54
	b _02230F18
_02230F04:
	mov r1, #0xb
	bl ov66_02230D54
	b _02230F18
_02230F0C:
	mov r1, #0xc
	bl ov66_02230D54
	b _02230F18
_02230F14:
	bl GF_AssertFail
_02230F18:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov66_02230E90

	thumb_func_start ov66_02230F1C
ov66_02230F1C: ; 0x02230F1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #0x10
	bl sub_02018144
	str r0, [r4, #0]
	mov r2, #0x10
	mov r1, #0
_02230F30:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02230F30
	ldr r1, [r4, #0]
	ldr r0, [r5, #0x40]
	str r0, [r1, #4]
	ldr r0, [r5, #0x3c]
	str r0, [r1, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02230F1C

	thumb_func_start ov66_02230F44
ov66_02230F44: ; 0x02230F44
	ldr r3, _02230F4C ; =sub_020181C4
	ldr r0, [r0, #0]
	bx r3
	nop
_02230F4C: .word sub_020181C4
	thumb_func_end ov66_02230F44

	thumb_func_start ov66_02230F50
ov66_02230F50: ; 0x02230F50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, [r6, #0]
	ldr r0, [r5, #0x3c]
	bl ov66_0222E010
	str r0, [r4, #0]
	ldr r0, [r5, #0x3c]
	bl ov66_0222E028
	ldr r0, [r0, #0]
	ldr r2, _02230F78 ; =0x02258A74
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02230CEC
	pop {r4, r5, r6, pc}
	nop
_02230F78: .word 0x02258A74
	thumb_func_end ov66_02230F50

	thumb_func_start ov66_02230F7C
ov66_02230F7C: ; 0x02230F7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl ov66_0222E138
	cmp r0, #0
	beq _02230F94
	add r0, r4, #0
	mov r1, #0xa
	bl ov66_02230D54
	b _02230F9C
_02230F94:
	add r0, r4, #0
	mov r1, #0
	bl ov66_02230D54
_02230F9C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov66_02230F7C

	thumb_func_start ov66_02230FA0
ov66_02230FA0: ; 0x02230FA0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	mov r1, #0xc
	bl sub_02018144
	str r0, [r5, #0]
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	ldr r5, [r5, #0]
	ldr r0, [r4, #0x3c]
	bl ov66_0222E00C
	str r0, [r5, #0]
	ldr r0, [r4, #0x3c]
	bl ov66_0222E028
	str r0, [r5, #4]
	ldr r0, [r4, #0x3c]
	str r0, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02230FA0

	thumb_func_start ov66_02230FE4
ov66_02230FE4: ; 0x02230FE4
	ldr r3, _02230FEC ; =sub_020181C4
	ldr r0, [r0, #0]
	bx r3
	nop
_02230FEC: .word sub_020181C4
	thumb_func_end ov66_02230FE4

	thumb_func_start ov66_02230FF0
ov66_02230FF0: ; 0x02230FF0
	ldr r3, _02230FF8 ; =ov66_02230CEC
	ldr r2, _02230FFC ; =0x02258A64
	bx r3
	nop
_02230FF8: .word ov66_02230CEC
_02230FFC: .word 0x02258A64
	thumb_func_end ov66_02230FF0

	thumb_func_start ov66_02231000
ov66_02231000: ; 0x02231000
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl ov66_0222E138
	cmp r0, #0
	beq _02231018
	add r0, r4, #0
	mov r1, #0xa
	bl ov66_02230D54
	b _02231020
_02231018:
	add r0, r4, #0
	mov r1, #0
	bl ov66_02230D54
_02231020:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov66_02231000

	thumb_func_start ov66_02231024
ov66_02231024: ; 0x02231024
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #0x14
	bl sub_02018144
	str r0, [r4, #0]
	mov r2, #0x14
	mov r1, #0
_02231038:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02231038
	ldr r1, [r4, #0]
	ldr r0, [r5, #0x40]
	str r0, [r1, #0]
	ldr r0, [r5, #0x3c]
	str r0, [r1, #4]
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	str r0, [r1, #8]
	ldr r0, [r5, #0x44]
	str r0, [r1, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231024

	thumb_func_start ov66_02231058
ov66_02231058: ; 0x02231058
	ldr r3, _02231060 ; =sub_020181C4
	ldr r0, [r0, #0]
	bx r3
	nop
_02231060: .word sub_020181C4
	thumb_func_end ov66_02231058

	thumb_func_start ov66_02231064
ov66_02231064: ; 0x02231064
	ldr r3, _0223106C ; =ov66_02230CEC
	ldr r2, _02231070 ; =0x02258A54
	bx r3
	nop
_0223106C: .word ov66_02230CEC
_02231070: .word 0x02258A54
	thumb_func_end ov66_02231064

	thumb_func_start ov66_02231074
ov66_02231074: ; 0x02231074
	push {r3, lr}
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _02231082
	mov r0, #1
	pop {r3, pc}
_02231082:
	mov r1, #0
	bl ov66_02230D54
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov66_02231074

	thumb_func_start ov66_0223108C
ov66_0223108C: ; 0x0223108C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0x3c
	bl sub_02018144
	str r0, [r4, #0]
	mov r1, #0
	mov r2, #0x3c
	bl memset
	ldr r0, [r4, #0]
	mov r2, #0
	add r1, r0, #0
	add r1, #0x38
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0x39
	strb r2, [r1]
	ldr r1, [r5, #0x40]
	str r1, [r0, #0x34]
	add r1, r6, #0
	bl ov66_02230DA0
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_0223108C

	thumb_func_start ov66_022310C4
ov66_022310C4: ; 0x022310C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov66_02230DBC
	ldr r0, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_022310C4

	thumb_func_start ov66_022310D8
ov66_022310D8: ; 0x022310D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _022310FC ; =0x00000072
	mov r1, #2
	bl sub_02006590
	ldrh r2, [r5, #0x3a]
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x3c]
	bl ov66_02230DD8
	ldr r2, _02231100 ; =0x02258A44
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_02230CEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022310FC: .word 0x00000072
_02231100: .word 0x02258A44
	thumb_func_end ov66_022310D8

	thumb_func_start ov66_02231104
ov66_02231104: ; 0x02231104
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02231130 ; =0x00000072
	add r5, r1, #0
	bl sub_02006514
	ldr r5, [r5, #0]
	ldr r0, [r4, #0x3c]
	ldr r1, [r5, #0x1c]
	bl ov66_0222E22C
	ldr r0, [r4, #0x3c]
	ldr r1, [r5, #0]
	bl ov66_0222E528
	add r0, r4, #0
	mov r1, #0
	bl ov66_02230D54
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02231130: .word 0x00000072
	thumb_func_end ov66_02231104

	thumb_func_start ov66_02231134
ov66_02231134: ; 0x02231134
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0x40
	bl sub_02018144
	str r0, [r4, #0]
	mov r1, #0
	mov r2, #0x40
	bl memset
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0x3c]
	mov r1, #1
	str r1, [r0, #0x38]
	ldr r1, [r5, #0x40]
	str r1, [r0, #0x34]
	add r1, r6, #0
	bl ov66_02230DA0
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02231134

	thumb_func_start ov66_02231164
ov66_02231164: ; 0x02231164
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov66_02230DBC
	ldr r0, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231164

	thumb_func_start ov66_02231178
ov66_02231178: ; 0x02231178
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _0223119C ; =0x00000072
	mov r1, #2
	bl sub_02006590
	ldrh r2, [r5, #0x3a]
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x3c]
	bl ov66_02230DD8
	ldr r2, _022311A0 ; =0x02258A94
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_02230CEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223119C: .word 0x00000072
_022311A0: .word 0x02258A94
	thumb_func_end ov66_02231178

	thumb_func_start ov66_022311A4
ov66_022311A4: ; 0x022311A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _022311D0 ; =0x00000072
	add r5, r1, #0
	bl sub_02006514
	ldr r5, [r5, #0]
	ldr r0, [r4, #0x3c]
	ldr r1, [r5, #0x1c]
	bl ov66_0222E22C
	ldr r0, [r4, #0x3c]
	ldr r1, [r5, #0]
	bl ov66_0222E528
	add r0, r4, #0
	mov r1, #0
	bl ov66_02230D54
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022311D0: .word 0x00000072
	thumb_func_end ov66_022311A4

	thumb_func_start ov66_022311D4
ov66_022311D4: ; 0x022311D4
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0x3c
	bl sub_02018144
	str r0, [r4, #0]
	mov r1, #0
	mov r2, #0x3c
	bl memset
	ldr r0, [r4, #0]
	mov r2, #0
	add r1, r0, #0
	add r1, #0x38
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0x39
	strb r2, [r1]
	ldr r1, [r5, #0x40]
	str r1, [r0, #0x34]
	add r1, r6, #0
	bl ov66_02230DA0
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_022311D4

	thumb_func_start ov66_0223120C
ov66_0223120C: ; 0x0223120C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov66_02230DBC
	ldr r0, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0223120C

	thumb_func_start ov66_02231220
ov66_02231220: ; 0x02231220
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _02231244 ; =0x00000072
	mov r1, #2
	bl sub_02006590
	ldrh r2, [r5, #0x3a]
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x3c]
	bl ov66_02230DD8
	ldr r2, _02231248 ; =0x02258A24
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_02230CEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02231244: .word 0x00000072
_02231248: .word 0x02258A24
	thumb_func_end ov66_02231220

	thumb_func_start ov66_0223124C
ov66_0223124C: ; 0x0223124C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02231278 ; =0x00000072
	add r5, r1, #0
	bl sub_02006514
	ldr r5, [r5, #0]
	ldr r0, [r4, #0x3c]
	ldr r1, [r5, #0x1c]
	bl ov66_0222E22C
	ldr r0, [r4, #0x3c]
	ldr r1, [r5, #0]
	bl ov66_0222E528
	add r0, r4, #0
	mov r1, #0
	bl ov66_02230D54
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02231278: .word 0x00000072
	thumb_func_end ov66_0223124C

	thumb_func_start ov66_0223127C
ov66_0223127C: ; 0x0223127C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #8
	bl sub_02018144
	str r0, [r4, #0]
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	ldr r1, [r5, #0x3c]
	ldr r0, [r4, #0]
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0223127C

	thumb_func_start ov66_022312A8
ov66_022312A8: ; 0x022312A8
	ldr r3, _022312B0 ; =sub_020181C4
	ldr r0, [r0, #0]
	bx r3
	nop
_022312B0: .word sub_020181C4
	thumb_func_end ov66_022312A8

	thumb_func_start ov66_022312B4
ov66_022312B4: ; 0x022312B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl ov66_0222E138
	cmp r0, #0
	beq _022312CC
	add r0, r4, #0
	mov r1, #0xa
	bl ov66_02230D54
	b _022312D4
_022312CC:
	add r0, r4, #0
	mov r1, #0
	bl ov66_02230D54
_022312D4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov66_022312B4

	thumb_func_start ov66_022312D8
ov66_022312D8: ; 0x022312D8
	ldr r2, [r1, #0]
	mov r3, #0
	strb r3, [r2, #4]
	ldr r3, _022312E4 ; =ov66_02230CEC
	ldr r2, _022312E8 ; =0x02258A14
	bx r3
	; .align 2, 0
_022312E4: .word ov66_02230CEC
_022312E8: .word 0x02258A14
	thumb_func_end ov66_022312D8

	thumb_func_start ov66_022312EC
ov66_022312EC: ; 0x022312EC
	ldr r2, [r1, #0]
	mov r3, #1
	strb r3, [r2, #4]
	ldr r3, _022312F8 ; =ov66_02230CEC
	ldr r2, _022312FC ; =0x02258A04
	bx r3
	; .align 2, 0
_022312F8: .word ov66_02230CEC
_022312FC: .word 0x02258A04
	thumb_func_end ov66_022312EC

	thumb_func_start ov66_02231300
ov66_02231300: ; 0x02231300
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #0xc
	bl sub_02018144
	str r0, [r4, #0]
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	ldr r1, [r4, #0]
	ldr r0, [r5, #0x40]
	str r0, [r1, #0]
	ldr r0, [r5, #0x3c]
	str r0, [r1, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02231300

	thumb_func_start ov66_02231338
ov66_02231338: ; 0x02231338
	ldr r3, _02231340 ; =sub_020181C4
	ldr r0, [r0, #0]
	bx r3
	nop
_02231340: .word sub_020181C4
	thumb_func_end ov66_02231338

	thumb_func_start ov66_02231344
ov66_02231344: ; 0x02231344
	ldr r3, _0223134C ; =ov66_0223135C
	mov r2, #0
	bx r3
	nop
_0223134C: .word ov66_0223135C
	thumb_func_end ov66_02231344

	thumb_func_start ov66_02231350
ov66_02231350: ; 0x02231350
	ldr r3, _02231358 ; =ov66_0223135C
	mov r2, #1
	bx r3
	nop
_02231358: .word ov66_0223135C
	thumb_func_end ov66_02231350

	thumb_func_start ov66_0223135C
ov66_0223135C: ; 0x0223135C
	ldr r3, [r1, #0]
	str r2, [r3, #8]
	ldr r3, _02231368 ; =ov66_02230CEC
	ldr r2, _0223136C ; =0x022589F4
	bx r3
	nop
_02231368: .word ov66_02230CEC
_0223136C: .word 0x022589F4
	thumb_func_end ov66_0223135C

	thumb_func_start ov66_02231370
ov66_02231370: ; 0x02231370
	mov r0, #1
	bx lr
	thumb_func_end ov66_02231370

	thumb_func_start ov66_02231374
ov66_02231374: ; 0x02231374
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #0xc
	bl sub_02018144
	str r0, [r4, #0]
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strb r2, [r0, #6]
	strb r2, [r0, #7]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	strb r2, [r0, #0xa]
	strb r2, [r0, #0xb]
	ldr r1, [r4, #0]
	ldr r0, [r5, #0x40]
	str r0, [r1, #0]
	ldr r0, [r5, #0x3c]
	str r0, [r1, #4]
	str r2, [r1, #8]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231374

	thumb_func_start ov66_022313AC
ov66_022313AC: ; 0x022313AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #0xc
	bl sub_02018144
	str r0, [r4, #0]
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	ldr r1, [r4, #0]
	ldr r0, [r5, #0x40]
	str r0, [r1, #0]
	ldr r0, [r5, #0x3c]
	str r0, [r1, #4]
	mov r0, #1
	str r0, [r1, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_022313AC

	thumb_func_start ov66_022313E8
ov66_022313E8: ; 0x022313E8
	ldr r3, _022313F0 ; =sub_020181C4
	ldr r0, [r0, #0]
	bx r3
	nop
_022313F0: .word sub_020181C4
	thumb_func_end ov66_022313E8

	thumb_func_start ov66_022313F4
ov66_022313F4: ; 0x022313F4
	ldr r3, _022313FC ; =ov66_02230CEC
	ldr r2, _02231400 ; =0x02258A34
	bx r3
	nop
_022313FC: .word ov66_02230CEC
_02231400: .word 0x02258A34
	thumb_func_end ov66_022313F4

	thumb_func_start ov66_02231404
ov66_02231404: ; 0x02231404
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl ov66_0222E138
	cmp r0, #0
	beq _0223141C
	add r0, r4, #0
	mov r1, #0xa
	bl ov66_02230D54
	b _02231424
_0223141C:
	add r0, r4, #0
	mov r1, #0
	bl ov66_02230D54
_02231424:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov66_02231404

	.rodata


	.global Unk_ov66_022589F4
Unk_ov66_022589F4: ; 0x022589F4
	.incbin "incbin/overlay66_rodata.bin", 0xDC, 0xEC - 0xDC

	.global Unk_ov66_02258A04
Unk_ov66_02258A04: ; 0x02258A04
	.incbin "incbin/overlay66_rodata.bin", 0xEC, 0xFC - 0xEC

	.global Unk_ov66_02258A14
Unk_ov66_02258A14: ; 0x02258A14
	.incbin "incbin/overlay66_rodata.bin", 0xFC, 0x10C - 0xFC

	.global Unk_ov66_02258A24
Unk_ov66_02258A24: ; 0x02258A24
	.incbin "incbin/overlay66_rodata.bin", 0x10C, 0x11C - 0x10C

	.global Unk_ov66_02258A34
Unk_ov66_02258A34: ; 0x02258A34
	.incbin "incbin/overlay66_rodata.bin", 0x11C, 0x12C - 0x11C

	.global Unk_ov66_02258A44
Unk_ov66_02258A44: ; 0x02258A44
	.incbin "incbin/overlay66_rodata.bin", 0x12C, 0x13C - 0x12C

	.global Unk_ov66_02258A54
Unk_ov66_02258A54: ; 0x02258A54
	.incbin "incbin/overlay66_rodata.bin", 0x13C, 0x14C - 0x13C

	.global Unk_ov66_02258A64
Unk_ov66_02258A64: ; 0x02258A64
	.incbin "incbin/overlay66_rodata.bin", 0x14C, 0x15C - 0x14C

	.global Unk_ov66_02258A74
Unk_ov66_02258A74: ; 0x02258A74
	.incbin "incbin/overlay66_rodata.bin", 0x15C, 0x16C - 0x15C

	.global Unk_ov66_02258A84
Unk_ov66_02258A84: ; 0x02258A84
	.incbin "incbin/overlay66_rodata.bin", 0x16C, 0x17C - 0x16C

	.global Unk_ov66_02258A94
Unk_ov66_02258A94: ; 0x02258A94
	.incbin "incbin/overlay66_rodata.bin", 0x17C, 0x10


	.data


	.global Unk_ov66_02258D20
Unk_ov66_02258D20: ; 0x02258D20
	.incbin "incbin/overlay66_data.bin", 0x0, 0x34 - 0x0

	.global Unk_ov66_02258D54
Unk_ov66_02258D54: ; 0x02258D54
	.incbin "incbin/overlay66_data.bin", 0x34, 0x68 - 0x34

	.global Unk_ov66_02258D88
Unk_ov66_02258D88: ; 0x02258D88
	.incbin "incbin/overlay66_data.bin", 0x68, 0x9C - 0x68

	.global Unk_ov66_02258DBC
Unk_ov66_02258DBC: ; 0x02258DBC
	.incbin "incbin/overlay66_data.bin", 0x9C, 0x34

