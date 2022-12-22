	.include "macros/function.inc"
	.include "include/unk_0203A9C8.inc"

	

	.text


	thumb_func_start sub_0203A9C8
sub_0203A9C8: ; 0x0203A9C8
	push {r3, lr}
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	cmp r0, #0
	beq _0203A9DA
	mov r0, #1
	pop {r3, pc}
_0203A9DA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203A9C8

	thumb_func_start sub_0203A9E0
sub_0203A9E0: ; 0x0203A9E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203ABB4
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	bne _0203AA06
	add r0, r5, #0
	bl sub_0203AC24
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203AA46
_0203AA06:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _0203AA22
	add r0, r5, #0
	bl sub_0203AC28
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203AA46
_0203AA22:
	add r0, r5, #0
	bl sub_0206C0D0
	cmp r0, #1
	bne _0203AA3A
	add r0, r5, #0
	bl sub_0203AC2C
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203AA46
_0203AA3A:
	add r0, r5, #0
	bl sub_0203ABD0
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
_0203AA46:
	mov r0, #0x71
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0x3c]
	bl sub_0205F588
	cmp r0, #1
	bne _0203AA66
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205F5E4
_0203AA66:
	ldr r1, _0203AA74 ; =sub_0203AC44
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, pc}
	nop
_0203AA74: .word sub_0203AC44
	thumb_func_end sub_0203A9E0

	thumb_func_start sub_0203AA78
sub_0203AA78: ; 0x0203AA78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203ABB4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203AC34
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r2, #1
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r5, #0x3c]
	bl sub_0205F588
	cmp r0, #1
	bne _0203AAAC
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205F5E4
_0203AAAC:
	ldr r1, _0203AAB8 ; =sub_0203AC44
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203AAB8: .word sub_0203AC44
	thumb_func_end sub_0203AA78

	thumb_func_start sub_0203AABC
sub_0203AABC: ; 0x0203AABC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203ABB4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203AC3C
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r2, #0
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r5, #0x3c]
	bl sub_0205F588
	cmp r0, #1
	bne _0203AAF0
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205F5E4
_0203AAF0:
	ldr r1, _0203AAFC ; =sub_0203AC44
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203AAFC: .word sub_0203AC44
	thumb_func_end sub_0203AABC

	thumb_func_start sub_0203AB00
sub_0203AB00: ; 0x0203AB00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0203ABAC ; =0x000005FD
	bl sub_02005748
	bl sub_0203ABB4
	add r4, r0, #0
	mov r0, #0x71
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	bne _0203AB34
	add r0, r5, #0
	bl sub_0203AC24
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203ABA0
_0203AB34:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _0203AB50
	add r0, r5, #0
	bl sub_0203AC28
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203ABA0
_0203AB50:
	add r0, r5, #0
	bl sub_0206C0D0
	cmp r0, #1
	bne _0203AB68
	add r0, r5, #0
	bl sub_0203AC2C
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203ABA0
_0203AB68:
	ldr r0, [r5, #0x70]
	cmp r0, #3
	bne _0203AB7C
	add r0, r5, #0
	bl sub_0203AC3C
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203ABA0
_0203AB7C:
	cmp r0, #2
	bne _0203AB94
	add r0, r5, #0
	bl sub_0203AC34
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r2, #1
	add r0, r1, #4
	str r2, [r4, r0]
	b _0203ABA0
_0203AB94:
	add r0, r5, #0
	bl sub_0203ABD0
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
_0203ABA0:
	ldr r0, [r5, #0x10]
	ldr r1, _0203ABB0 ; =sub_0203AC44
	add r2, r4, #0
	bl sub_02050924
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203ABAC: .word 0x000005FD
_0203ABB0: .word sub_0203AC44
	thumb_func_end sub_0203AB00

	thumb_func_start sub_0203ABB4
sub_0203ABB4: ; 0x0203ABB4
	push {r3, lr}
	mov r1, #2
	mov r0, #0xb
	lsl r1, r1, #8
	bl sub_02018144
	mov r2, #0
	strh r2, [r0, #0x2a]
	mov r1, #0x7e
	strh r2, [r0, #0x28]
	lsl r1, r1, #2
	str r2, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203ABB4

	thumb_func_start sub_0203ABD0
sub_0203ABD0: ; 0x0203ABD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	bl sub_02027560
	bl sub_02027520
	cmp r0, #0
	bne _0203ABE8
	mov r0, #1
	orr r4, r0
_0203ABE8:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B054
	cmp r0, #0
	bne _0203ABFA
	mov r0, #2
	orr r4, r0
_0203ABFA:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A938
	cmp r0, #0
	bne _0203AC0C
	mov r0, #4
	orr r4, r0
_0203AC0C:
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A310
	cmp r0, #1
	bne _0203AC1C
	mov r0, #6
	orr r4, r0
_0203AC1C:
	mov r0, #6
	lsl r0, r0, #6
	orr r0, r4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203ABD0

	thumb_func_start sub_0203AC24
sub_0203AC24: ; 0x0203AC24
	mov r0, #0x90
	bx lr
	thumb_func_end sub_0203AC24

	thumb_func_start sub_0203AC28
sub_0203AC28: ; 0x0203AC28
	mov r0, #0x94
	bx lr
	thumb_func_end sub_0203AC28

	thumb_func_start sub_0203AC2C
sub_0203AC2C: ; 0x0203AC2C
	ldr r0, _0203AC30 ; =0x00000195
	bx lr
	; .align 2, 0
_0203AC30: .word 0x00000195
	thumb_func_end sub_0203AC2C

	thumb_func_start sub_0203AC34
sub_0203AC34: ; 0x0203AC34
	mov r0, #0x11
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203AC34

	thumb_func_start sub_0203AC3C
sub_0203AC3C: ; 0x0203AC3C
	ldr r0, _0203AC40 ; =0x00000191
	bx lr
	; .align 2, 0
_0203AC40: .word 0x00000191
	thumb_func_end sub_0203AC3C

	thumb_func_start sub_0203AC44
sub_0203AC44: ; 0x0203AC44
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrh r1, [r4, #0x2a]
	cmp r1, #0xf
	bhi _0203ACC2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203AC68: ; jump table
	.short _0203AC88 - _0203AC68 - 2 ; case 0
	.short _0203ACB8 - _0203AC68 - 2 ; case 1
	.short _0203ACC8 - _0203AC68 - 2 ; case 2
	.short _0203ACD0 - _0203AC68 - 2 ; case 3
	.short _0203ACD8 - _0203AC68 - 2 ; case 4
	.short _0203ACE0 - _0203AC68 - 2 ; case 5
	.short _0203ACE8 - _0203AC68 - 2 ; case 6
	.short _0203ACF0 - _0203AC68 - 2 ; case 7
	.short _0203AD20 - _0203AC68 - 2 ; case 8
	.short _0203AD36 - _0203AC68 - 2 ; case 9
	.short _0203AD56 - _0203AC68 - 2 ; case 10
	.short _0203AD72 - _0203AC68 - 2 ; case 11
	.short _0203ACF8 - _0203AC68 - 2 ; case 12
	.short _0203ADA0 - _0203AC68 - 2 ; case 13
	.short _0203ADD8 - _0203AC68 - 2 ; case 14
	.short _0203AD92 - _0203AC68 - 2 ; case 15
_0203AC88:
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0206842C
	mov r1, #0x7a
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_02070728
	add r0, r6, #0
	bl sub_0203ADFC
	add r0, r6, #0
	bl sub_0203B094
	mov r0, #1
	strh r0, [r4, #0x2a]
	b _0203ADE4
_0203ACB8:
	add r0, r6, #0
	bl sub_0203B244
	cmp r0, #0
	beq _0203ACC4
_0203ACC2:
	b _0203ADE4
_0203ACC4:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203ACC8:
	add r0, r6, #0
	bl sub_0203B610
	b _0203ADE4
_0203ACD0:
	add r0, r6, #0
	bl sub_0203B64C
	b _0203ADE4
_0203ACD8:
	add r0, r6, #0
	bl sub_0203BF6C
	b _0203ADE4
_0203ACE0:
	add r0, r6, #0
	bl sub_0203BFC0
	b _0203ADE4
_0203ACE8:
	add r0, r6, #0
	bl sub_0203C7B8
	b _0203ADE4
_0203ACF0:
	add r0, r6, #0
	bl sub_0203C8CC
	b _0203ADE4
_0203ACF8:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	beq _0203ADE4
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	add r0, r6, #0
	bl sub_0203ADFC
	add r0, r6, #0
	bl sub_0203B094
	mov r0, #1
	bl ov5_021D1744
	mov r0, #0xe
	strh r0, [r4, #0x2a]
	b _0203ADE4
_0203AD20:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	beq _0203ADE4
	mov r0, #1
	bl ov5_021D1744
	mov r0, #9
	strh r0, [r4, #0x2a]
	b _0203ADE4
_0203AD36:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0203ADE4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203B2EC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203AD56:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	beq _0203ADE4
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	mov r0, #1
	bl ov5_021D1744
	mov r0, #0xb
	strh r0, [r4, #0x2a]
	b _0203ADE4
_0203AD72:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0203ADE4
	mov r2, #0x72
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	add r2, #0x30
	ldr r2, [r4, r2]
	add r0, r6, #0
	bl sub_02050924
	add r0, r4, #0
	bl sub_020181C4
	b _0203ADE4
_0203AD92:
	bl sub_020181C4
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203ADA0:
	add r1, r5, #0
	bl sub_0203B2EC
	add r0, r4, #0
	bl sub_0203B078
	add r0, r4, #0
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	bl sub_0201A8FC
	add r0, r6, #0
	bl sub_0203B200
	ldr r0, [r5, #8]
	mov r1, #3
	bl sub_0201C3C0
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203ADD8:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0203ADE4
	mov r0, #1
	strh r0, [r4, #0x2a]
_0203ADE4:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0203ADF6
	add r0, r4, #0
	bl sub_0203B520
	ldr r0, [r4, #0x38]
	bl sub_020219F8
_0203ADF6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203AC44

	thumb_func_start sub_0203ADFC
sub_0203ADFC: ; 0x0203ADFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	bl sub_02050A60
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x30
	bl sub_0203AFCC
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r2, #3
	lsl r1, r0, #1
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _0203AFB8 ; =0x00000145
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	mov r3, #0x14
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	mov r0, #1
	str r0, [sp]
	mov r3, #0xb
	ldr r0, [sp, #0x1c]
	str r3, [sp, #4]
	ldr r0, [r0, #8]
	ldr r2, _0203AFBC ; =0x000003D9
	mov r1, #3
	bl sub_0200DAA4
	ldr r2, _0203AFBC ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _0203AFC0 ; =0x0000016F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	mov r1, #0xb
	bl sub_02013A04
	str r0, [r4, #0x24]
	mov r5, #0
	ldr r0, [sp, #0x14]
	strh r5, [r4, #0x28]
	cmp r0, #0
	bls _0203AF1C
_0203AE86:
	add r0, r4, r5
	add r0, #0x30
	ldrb r3, [r0]
	cmp r3, #3
	bne _0203AEF4
	mov r0, #0xb
	bl sub_0200B358
	add r6, r0, #0
	mov r0, #8
	mov r1, #0xb
	bl sub_02023790
	add r1, r4, r5
	add r1, #0x30
	ldrb r1, [r1]
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	lsl r2, r1, #3
	ldr r1, _0203AFC4 ; =0x020EA05C
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0200B498
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200C388
	add r2, r4, r5
	add r2, #0x30
	ldrb r2, [r2]
	ldr r0, [r4, #0x24]
	add r1, r7, #0
	bl sub_02013A6C
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B3F0
	b _0203AF02
_0203AEF4:
	ldr r2, _0203AFC4 ; =0x020EA05C
	lsl r6, r3, #3
	ldr r0, [r4, #0x24]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, r6]
	bl sub_02013A4C
_0203AF02:
	ldr r0, [sp, #0x1c]
	add r0, #0x90
	ldr r1, [r0, #0]
	add r0, r4, r5
	add r0, #0x30
	ldrb r0, [r0]
	cmp r1, r0
	bne _0203AF14
	strh r5, [r4, #0x28]
_0203AF14:
	ldr r0, [sp, #0x14]
	add r5, r5, #1
	cmp r5, r0
	blo _0203AE86
_0203AF1C:
	ldrh r0, [r4, #0x28]
	add r0, r4, r0
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0x1c]
	add r0, #0x90
	str r1, [r0, #0]
	ldr r0, [sp, #0x18]
	bl sub_0200B190
	ldr r0, [r4, #0x24]
	mov r1, #1
	str r0, [sp, #0x24]
	str r4, [sp, #0x28]
	add r0, sp, #0x24
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	ldr r1, [sp, #0x14]
	strb r1, [r0, #0xa]
	ldrb r2, [r0, #0xb]
	mov r1, #0xf
	bic r2, r1
	mov r1, #8
	orr r1, r2
	strb r1, [r0, #0xb]
	ldrb r2, [r0, #0xb]
	mov r1, #0x30
	bic r2, r1
	mov r1, #0x10
	orr r1, r2
	strb r1, [r0, #0xb]
	ldr r1, [sp, #0x14]
	ldrb r2, [r0, #0xb]
	cmp r1, #4
	blo _0203AF6E
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, #0xb]
	b _0203AF74
_0203AF6E:
	mov r1, #0xc0
	bic r2, r1
	strb r2, [r0, #0xb]
_0203AF74:
	mov r0, #0xb
	str r0, [sp]
	ldr r0, _0203AFC8 ; =0x00000402
	mov r1, #0x1c
	str r0, [sp, #4]
	ldrh r3, [r4, #0x28]
	add r0, sp, #0x24
	mov r2, #4
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02001AF4
	str r0, [r4, #0x20]
	add r0, r4, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	bl sub_02025F30
	add r3, r0, #0
	add r0, r4, #0
	add r4, #0x30
	lsl r3, r3, #0x18
	ldr r2, [sp, #0x14]
	add r1, r4, #0
	lsr r3, r3, #0x18
	bl sub_0203B318
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203AFB8: .word 0x00000145
_0203AFBC: .word 0x000003D9
_0203AFC0: .word 0x0000016F
_0203AFC4: .word 0x020EA05C
_0203AFC8: .word 0x00000402
	thumb_func_end sub_0203ADFC

	thumb_func_start sub_0203AFCC
sub_0203AFCC: ; 0x0203AFCC
	push {r3, r4}
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	sub r3, #0xc0
	mov r2, #0
	tst r3, r4
	bne _0203AFE2
	mov r3, #8
	strb r3, [r1]
	add r2, r2, #1
_0203AFE2:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #0x80
	tst r3, r4
	bne _0203AFF4
	mov r3, #7
	strb r3, [r1, r2]
	add r2, r2, #1
_0203AFF4:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #1
	tst r3, r4
	bne _0203B006
	mov r3, #0
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B006:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #2
	tst r3, r4
	bne _0203B018
	mov r3, #1
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B018:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #4
	tst r3, r4
	bne _0203B02A
	mov r3, #2
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B02A:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #8
	tst r3, r4
	bne _0203B03C
	mov r3, #3
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B03C:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #0x10
	tst r3, r4
	bne _0203B04E
	mov r3, #4
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B04E:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #0x20
	tst r3, r4
	bne _0203B060
	mov r3, #5
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B060:
	mov r3, #7
	lsl r3, r3, #6
	ldr r3, [r0, r3]
	mov r0, #0x40
	tst r0, r3
	bne _0203B072
	mov r0, #6
	strb r0, [r1, r2]
	add r2, r2, #1
_0203B072:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0203AFCC

	thumb_func_start sub_0203B078
sub_0203B078: ; 0x0203B078
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203B4E8
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, [r4, #0x24]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0x20]
	pop {r4, pc}
	thumb_func_end sub_0203B078

	thumb_func_start sub_0203B094
sub_0203B094: ; 0x0203B094
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	bne _0203B0BA
	mov r6, #0
	b _0203B0CC
_0203B0BA:
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	beq _0203B0CA
	b _0203B1EE
_0203B0CA:
	mov r6, #1
_0203B0CC:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0203B1F4 ; =0x00000237
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #8]
	add r1, #0x10
	mov r2, #3
	bl sub_0201A7E8
	mov r0, #1
	str r0, [sp]
	mov r3, #0xb
	str r3, [sp, #4]
	ldr r0, [r4, #8]
	ldr r2, _0203B1F8 ; =0x000003D9
	mov r1, #3
	bl sub_0200DAA4
	add r0, r5, #0
	ldr r2, _0203B1F8 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _0203B1FC ; =0x0000016F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #0x1c]
	cmp r6, #0
	bne _0203B130
	mov r1, #9
	bl sub_0200B1EC
	b _0203B136
_0203B130:
	mov r1, #0xa
	bl sub_0200B1EC
_0203B136:
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x10
	add r2, r7, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #0xb
	bl sub_0200B358
	add r7, r0, #0
	mov r0, #0x20
	mov r1, #0xb
	bl sub_02023790
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r1, #0xb
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	cmp r6, #0
	bne _0203B194
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A784
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r2]
	add r0, r7, #0
	mov r3, #2
	bl sub_0200B60C
	b _0203B1AC
_0203B194:
	add r0, r4, #0
	bl sub_020563BC
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	mov r3, #2
	bl sub_0200B60C
_0203B1AC:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	bl sub_0200C388
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	add r0, #0x10
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
	ldr r0, [sp, #0x1c]
	bl sub_0200B190
	add r5, #0x10
	add r0, r5, #0
	bl sub_0201A9A4
_0203B1EE:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203B1F4: .word 0x00000237
_0203B1F8: .word 0x000003D9
_0203B1FC: .word 0x0000016F
	thumb_func_end sub_0203B094

	thumb_func_start sub_0203B200
sub_0203B200: ; 0x0203B200
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #0
	bne _0203B22E
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #0
	beq _0203B240
_0203B22E:
	add r0, r5, #0
	add r0, #0x10
	mov r1, #1
	bl sub_0200DC9C
	add r5, #0x10
	add r0, r5, #0
	bl sub_0201A8FC
_0203B240:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203B200

	thumb_func_start sub_0203B244
sub_0203B244: ; 0x0203B244
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	bl sub_02001DC4
	add r6, r0, #0
	mov r1, #0x5e
	ldr r0, [r5, #0x20]
	lsl r1, r1, #4
	bl sub_02001C94
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	bl sub_02001DC4
	strh r0, [r5, #0x28]
	ldrh r1, [r5, #0x28]
	cmp r6, r1
	beq _0203B29A
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0203B558
	ldrh r2, [r5, #0x28]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0203B5B4
	ldrh r0, [r5, #0x28]
	add r4, #0x90
	add r0, r5, r0
	add r0, #0x30
	ldrb r0, [r0]
	str r0, [r4, #0]
_0203B29A:
	ldrh r0, [r5, #0x28]
	add r0, r0, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #0]
	bl sub_0203B5E8
	mov r1, #1
	ldr r2, [r5, #0x2c]
	mvn r1, r1
	cmp r2, r1
	beq _0203B2C0
	add r0, r1, #1
	cmp r2, r0
	beq _0203B2E2
	b _0203B2C6
_0203B2C0:
	mov r0, #0xd
	strh r0, [r5, #0x2a]
	b _0203B2E2
_0203B2C6:
	ldr r0, _0203B2E8 ; =0x020EA060
	lsl r2, r2, #3
	ldr r2, [r0, r2]
	cmp r2, r1
	bne _0203B2D6
	mov r0, #0xd
	strh r0, [r5, #0x2a]
	b _0203B2E2
_0203B2D6:
	add r0, r1, #1
	cmp r2, r0
	beq _0203B2E2
	add r0, r7, #0
	blx r2
	pop {r3, r4, r5, r6, r7, pc}
_0203B2E2:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203B2E8: .word 0x020EA060
	thumb_func_end sub_0203B244

	thumb_func_start sub_0203B2EC
sub_0203B2EC: ; 0x0203B2EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02033E1C
	cmp r0, #0
	beq _0203B316
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0203B316
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_0205C2B0
	bl sub_02036AC4
	mov r0, #0
	bl sub_0205BEA8
_0203B316:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203B2EC

	thumb_func_start sub_0203B318
sub_0203B318: ; 0x0203B318
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	ldr r4, _0203B4D0 ; =0x020EA044
	str r3, [sp, #0x18]
	add r3, sp, #0xa0
	str r2, [sp, #0x14]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0xc]
	add r1, r2, #0
	add r0, #0x38
	mov r2, #8
	mov r3, #0xb
	bl ov5_021D3190
	mov r0, #0x42
	mov r1, #0xb
	bl sub_02006C24
	str r0, [sp, #0x1c]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0203B4D4 ; =0x000034D8
	ldr r1, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r2, #5
	add r0, #0x38
	mov r3, #0
	bl ov5_021D32E8
	ldr r0, _0203B4D4 ; =0x000034D8
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #1
	add r0, #0x38
	mov r3, #0
	bl ov5_021D3374
	ldr r0, _0203B4D4 ; =0x000034D8
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r0, #0x38
	add r3, r2, #0
	bl ov5_021D339C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0203B4D4 ; =0x000034D8
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #2
	add r0, #0x38
	mov r3, #0
	bl ov5_021D3414
	ldr r0, [sp, #0xc]
	ldr r1, _0203B4D8 ; =0x020EA0A4
	add r0, #0x38
	bl ov5_021D3584
	mov r2, #0x67
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, r2]
	ldrh r1, [r1, #0x28]
	ldr r0, [r0, #0]
	bl sub_0203B558
	ldr r0, _0203B4DC ; =0x000034D9
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #4
	add r0, #0x38
	mov r3, #0
	bl ov5_021D3374
	ldr r0, _0203B4DC ; =0x000034D9
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #3
	add r0, #0x38
	mov r3, #0
	bl ov5_021D339C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0203B4DC ; =0x000034D9
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #6
	add r0, #0x38
	mov r3, #0
	bl ov5_021D3414
	ldr r0, [sp, #0x14]
	mov r4, #0
	cmp r0, #0
	bls _0203B496
	ldr r5, [sp, #0xc]
	ldr r3, _0203B4E0 ; =0x020EA0D8
	add r7, r4, #0
	add r2, sp, #0x2c
	mov r6, #6
_0203B40C:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0203B40C
	ldr r0, [r3, #0]
	ldr r3, _0203B4E4 ; =0x020EA038
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
_0203B424:
	add r6, sp, #0x2c
	add r3, sp, #0x6c
	mov r2, #6
_0203B42A:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0203B42A
	ldr r0, [r6, #0]
	add r1, sp, #0x6c
	str r0, [r3, #0]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, r0, r7
	strh r0, [r1, #2]
	ldr r0, [sp, #0x10]
	ldrb r2, [r0, r4]
	cmp r2, #2
	bne _0203B454
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _0203B454
	mov r0, #0x1b
	strh r0, [r1, #6]
	b _0203B45C
_0203B454:
	lsl r0, r2, #1
	add r1, r2, r0
	add r0, sp, #0x6c
	strh r1, [r0, #6]
_0203B45C:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x6c
	add r0, #0x38
	bl ov5_021D3584
	mov r1, #0x1a
	lsl r1, r1, #4
	add r2, sp, #0x60
	add r3, sp, #0x20
	str r0, [r5, r1]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r6, #0
	str r0, [r2, #0]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r2, #1
	ldr r0, [r0, #0]
	bl sub_02021C80
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r7, #0x18
	add r5, r5, #4
	cmp r4, r0
	blo _0203B424
_0203B496:
	ldr r0, [sp, #0xc]
	mov r2, #1
	ldrh r0, [r0, #0x28]
	add r0, r0, #1
	lsl r1, r0, #2
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldr r0, [r0, #0]
	bl sub_0203B588
	ldr r0, [sp, #0x14]
	mov r1, #0x6f
	add r2, r0, #1
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	str r2, [r0, r1]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [sp, #0x1c]
	bl sub_02006CA8
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203B4D0: .word 0x020EA044
_0203B4D4: .word 0x000034D8
_0203B4D8: .word 0x020EA0A4
_0203B4DC: .word 0x000034D9
_0203B4E0: .word 0x020EA0D8
_0203B4E4: .word 0x020EA038
	thumb_func_end sub_0203B318

	thumb_func_start sub_0203B4E8
sub_0203B4E8: ; 0x0203B4E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _0203B516
	mov r7, #0x67
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x20
_0203B500:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	bl sub_0200D0F4
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r6]
	cmp r4, r0
	blo _0203B500
_0203B516:
	add r5, #0x38
	add r0, r5, #0
	bl ov5_021D375C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203B4E8

	thumb_func_start sub_0203B520
sub_0203B520: ; 0x0203B520
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _0203B554
	mov r7, #0x67
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x20
_0203B538:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r6]
	cmp r4, r0
	blo _0203B538
_0203B554:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203B520

	thumb_func_start sub_0203B558
sub_0203B558: ; 0x0203B558
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	mov r0, #0x18
	mul r0, r4
	add r0, #0x14
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0203B558

	thumb_func_start sub_0203B588
sub_0203B588: ; 0x0203B588
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021E24
	mov r1, #3
	bl _u32_div_f
	add r2, r0, #0
	lsl r1, r2, #1
	add r1, r2, r1
	add r0, r5, #0
	add r1, r4, r1
	bl sub_02021D6C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02021EC4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203B588

	thumb_func_start sub_0203B5B4
sub_0203B5B4: ; 0x0203B5B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	add r4, r2, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_0203B588
	add r0, r4, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_0203B588
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203B5B4

	thumb_func_start sub_0203B5E8
sub_0203B5E8: ; 0x0203B5E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02021E24
	mov r1, #3
	bl _u32_div_f
	cmp r1, #1
	bne _0203B60E
	add r0, r4, #0
	bl sub_02021FD0
	cmp r0, #0
	bne _0203B60E
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_0203B588
_0203B60E:
	pop {r4, pc}
	thumb_func_end sub_0203B5E8

	thumb_func_start sub_0203B610
sub_0203B610: ; 0x0203B610
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _0203B648
	add r0, r5, #0
	bl sub_02050A60
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	bl sub_0203B078
	add r0, r4, #0
	bl sub_0201A8FC
	add r0, r5, #0
	bl sub_0203B200
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	blx r1
	mov r0, #3
	strh r0, [r4, #0x2a]
_0203B648:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203B610

	thumb_func_start sub_0203B64C
sub_0203B64C: ; 0x0203B64C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0203B672
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	blx r1
_0203B672:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203B64C

	thumb_func_start sub_0203B674
sub_0203B674: ; 0x0203B674
	mov r2, #0x72
	lsl r2, r2, #2
	str r1, [r0, r2]
	mov r1, #3
	strh r1, [r0, #0x2a]
	bx lr
	thumb_func_end sub_0203B674

	thumb_func_start sub_0203B680
sub_0203B680: ; 0x0203B680
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203B6A0 ; =sub_0203B6A4
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203B6A0: .word sub_0203B6A4
	thumb_func_end sub_0203B680

	thumb_func_start sub_0203B6A4
sub_0203B6A4: ; 0x0203B6A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r6, r0, #0
	mov r0, #0xb
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	str r0, [sp]
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r7, r0, #0
	ldr r0, [sp]
	str r0, [r4, #0]
	ldr r0, [sp, #4]
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02055BA8
	str r0, [r4, #8]
	add r0, r7, #0
	mov r1, #0
	bl sub_0206B1F0
	str r0, [r4, #0xc]
	add r0, r7, #0
	mov r1, #1
	bl sub_0206B1F0
	str r0, [r4, #0x10]
	add r0, r7, #0
	mov r1, #2
	bl sub_0206B1F0
	str r0, [r4, #0x14]
	add r0, r7, #0
	mov r1, #3
	bl sub_0206B1F0
	str r0, [r4, #0x18]
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r1, r4, #0
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0203E0AC
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r6, r0]
	ldr r1, _0203B734 ; =sub_0203B738
	sub r0, #0x30
	str r1, [r6, r0]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203B734: .word sub_0203B738
	thumb_func_end sub_0203B6A4

	thumb_func_start sub_0203B738
sub_0203B738: ; 0x0203B738
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0203B760
	mov r0, #0xb
	bl sub_02018238
_0203B760:
	mov r0, #0xc
	strh r0, [r4, #0x2a]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203B738

	thumb_func_start sub_0203B768
sub_0203B768: ; 0x0203B768
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203B788 ; =sub_0203B78C
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203B788: .word sub_0203B78C
	thumb_func_end sub_0203B768

	thumb_func_start sub_0203B78C
sub_0203B78C: ; 0x0203B78C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x7a
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	mov r2, #0
	bl sub_0203D390
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _0203B7BC ; =sub_0203B7C0
	sub r1, #0x30
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203B7BC: .word sub_0203B7C0
	thumb_func_end sub_0203B78C

	thumb_func_start sub_0203B7C0
sub_0203B7C0: ; 0x0203B7C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r2, #0x40
	add r6, r0, #0
	bl memcpy
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r6, #0
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0x17
	bls _0203B800
	b _0203BB56
_0203B800:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203B80C: ; jump table
	.short _0203BB56 - _0203B80C - 2 ; case 0
	.short _0203B83C - _0203B80C - 2 ; case 1
	.short _0203BB56 - _0203B80C - 2 ; case 2
	.short _0203BA5A - _0203B80C - 2 ; case 3
	.short _0203B8BA - _0203B80C - 2 ; case 4
	.short _0203B940 - _0203B80C - 2 ; case 5
	.short _0203B9C6 - _0203B80C - 2 ; case 6
	.short _0203BA1C - _0203B80C - 2 ; case 7
	.short _0203BAB4 - _0203B80C - 2 ; case 8
	.short _0203BAE0 - _0203B80C - 2 ; case 9
	.short _0203BB3A - _0203B80C - 2 ; case 10
	.short _0203BB14 - _0203B80C - 2 ; case 11
	.short _0203BB14 - _0203B80C - 2 ; case 12
	.short _0203BB14 - _0203B80C - 2 ; case 13
	.short _0203BB14 - _0203B80C - 2 ; case 14
	.short _0203BB14 - _0203B80C - 2 ; case 15
	.short _0203BB14 - _0203B80C - 2 ; case 16
	.short _0203BB14 - _0203B80C - 2 ; case 17
	.short _0203BB14 - _0203B80C - 2 ; case 18
	.short _0203BB14 - _0203B80C - 2 ; case 19
	.short _0203BB14 - _0203B80C - 2 ; case 20
	.short _0203BB14 - _0203B80C - 2 ; case 21
	.short _0203BB14 - _0203B80C - 2 ; case 22
	.short _0203BB14 - _0203B80C - 2 ; case 23
_0203B83C:
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r7, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r7, #4]
	mov r0, #1
	strb r0, [r7, #0x11]
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r7, #0x14]
	ldr r0, [r7, #0]
	bl sub_0207A0F8
	strb r0, [r7, #0x13]
	mov r0, #0
	strh r0, [r7, #0x18]
	strb r0, [r7, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0202D79C
	str r0, [r7, #0x20]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r7, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r7, #0x2c]
	mov r0, #0
	str r0, [r7, #0x28]
	ldr r1, _0203BBDC ; =0x020EA02C
	add r0, r7, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0208E9C0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0203D334
	mov r0, #0x7e
	lsl r0, r0, #2
	str r7, [r4, r0]
	ldr r1, _0203BBE0 ; =sub_0203C1C8
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203B8BA:
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r7, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r7, #4]
	mov r1, #1
	add r0, r6, #0
	strb r1, [r7, #0x11]
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r7, #0x14]
	strb r1, [r7, #0x13]
	ldrh r0, [r6, #0x26]
	strh r0, [r7, #0x18]
	mov r0, #2
	strb r0, [r7, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r7, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r7, #0x2c]
	mov r0, #0
	str r0, [r7, #0x28]
	ldr r1, _0203BBE4 ; =0x020EA01C
	add r0, r7, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0208E9C0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0203D334
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	ldrh r1, [r6, #0x24]
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	str r7, [r4, r0]
	ldr r1, _0203BBE0 ; =sub_0203C1C8
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203B940:
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r7, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r7, #4]
	mov r1, #1
	add r0, r6, #0
	strb r1, [r7, #0x11]
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r7, #0x14]
	strb r1, [r7, #0x13]
	ldrh r0, [r6, #0x26]
	strh r0, [r7, #0x18]
	mov r0, #2
	strb r0, [r7, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r7, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r7, #0x2c]
	mov r0, #0
	str r0, [r7, #0x28]
	ldr r1, _0203BBE4 ; =0x020EA01C
	add r0, r7, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0208E9C0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0203D334
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	mov r1, #0
	strh r1, [r0]
	ldr r1, [r6, #0x34]
	strh r1, [r0, #2]
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	str r7, [r4, r0]
	ldr r1, _0203BBE0 ; =sub_0203C1C8
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203B9C6:
	ldrh r0, [r6, #0x24]
	bl sub_0207D2F0
	add r3, r0, #0
	mov r0, #0xb
	add r2, r6, #0
	str r0, [sp]
	add r2, #0x22
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #2
	bl sub_0203D920
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r6, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0xa
	ldrh r0, [r6, #0x24]
	bne _0203BA00
	add r2, r6, #0
	add r2, #0x22
	ldrb r2, [r2]
	mov r1, #0
	bl sub_0203C540
	b _0203BA0C
_0203BA00:
	add r2, r6, #0
	add r2, #0x22
	ldrb r2, [r2]
	mov r1, #1
	bl sub_0203C540
_0203BA0C:
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203BBE8 ; =sub_0203C558
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BA1C:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	add r1, #0x22
	ldrb r1, [r1]
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0xb
	bl sub_0203D984
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r2, r6, #0
	add r2, #0x22
	ldrh r0, [r6, #0x24]
	ldrb r2, [r2]
	mov r1, #2
	bl sub_0203C540
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203BBE8 ; =sub_0203C558
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BA5A:
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	add r1, r6, #0
	add r1, #0x22
	ldrb r1, [r1]
	str r1, [r0, #0]
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	ldr r1, _0203BBEC ; =0x020EA020
	add r0, r7, #0
	mov r2, #0xb
	bl sub_0207D824
	mov r1, #0x7e
	lsl r1, r1, #2
	add r3, r5, #0
	str r0, [r4, r1]
	add r3, #0x98
	ldr r0, [r4, r1]
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0]
	mov r2, #1
	bl sub_0207CB2C
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl sub_0203D1E4
	ldr r1, _0203BBF0 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BAB4:
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018144
	ldrh r1, [r6, #0x24]
	strh r1, [r0, #2]
	mov r1, #3
	strb r1, [r0, #1]
	add r1, r6, #0
	add r1, #0x22
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r1, [r6, #0x38]
	strh r1, [r0, #4]
	ldr r1, [r6, #0x3c]
	str r1, [r0, #8]
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #6
	strh r0, [r4, #0x2a]
	b _0203BBCE
_0203BAE0:
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A354
	strh r0, [r7, #2]
	mov r0, #0
	strb r0, [r7, #1]
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r7]
	ldrh r0, [r6, #0x38]
	strh r0, [r7, #4]
	ldr r0, [r6, #0x3c]
	str r0, [r7, #8]
	mov r0, #0x7e
	lsl r0, r0, #2
	str r7, [r4, r0]
	mov r0, #6
	strh r0, [r4, #0x2a]
	b _0203BBCE
_0203BB14:
	sub r0, #0xb
	add r1, sp, #4
	strh r0, [r1, #6]
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	strh r0, [r1, #4]
	str r7, [sp, #4]
	ldrh r1, [r1, #6]
	mov r0, #0
	bl sub_0207070C
	mov r1, #0x7a
	lsl r1, r1, #2
	add r2, r0, #0
	add r0, sp, #4
	add r1, r4, r1
	blx r2
	b _0203BBCE
_0203BB3A:
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203BBF0 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BB56:
	add r0, r6, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #5
	beq _0203BB70
	cmp r0, #6
	beq _0203BB70
	cmp r0, #7
	beq _0203BB70
	cmp r0, #0x10
	beq _0203BB70
	cmp r0, #8
	bne _0203BBA4
_0203BB70:
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r2, #0x7e
	lsl r2, r2, #2
	str r0, [r4, r2]
	add r0, r6, #0
	add r0, #0x22
	ldrb r1, [r0]
	ldr r0, [r4, r2]
	cmp r1, #6
	blo _0203BB96
	mov r1, #0
	bl sub_0207CB70
	b _0203BB9A
_0203BB96:
	bl sub_0207CB70
_0203BB9A:
	ldr r1, _0203BBF0 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BBA4:
	cmp r0, #9
	bne _0203BBC4
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203BBF0 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	b _0203BBCE
_0203BBC4:
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0xc
	strh r0, [r4, #0x2a]
_0203BBCE:
	add r0, r6, #0
	bl sub_020181C4
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0203BBDC: .word 0x020EA02C
_0203BBE0: .word sub_0203C1C8
_0203BBE4: .word 0x020EA01C
_0203BBE8: .word sub_0203C558
_0203BBEC: .word 0x020EA020
_0203BBF0: .word sub_0203BC5C
	thumb_func_end sub_0203B7C0

	thumb_func_start sub_0203BBF4
sub_0203BBF4: ; 0x0203BBF4
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203BC14 ; =sub_0203BC18
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203BC14: .word sub_0203BC18
	thumb_func_end sub_0203BBF4

	thumb_func_start sub_0203BC18
sub_0203BC18: ; 0x0203BC18
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x73
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_0207CB70
	mov r0, #0x72
	ldr r1, _0203BC58 ; =sub_0203BC5C
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov5_021E2064
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0203BC58: .word sub_0203BC5C
	thumb_func_end sub_0203BC18

	thumb_func_start sub_0203BC5C
sub_0203BC5C: ; 0x0203BC5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0xb
	bl sub_0207CB08
	str r0, [sp, #8]
	bl sub_0207CB20
	mov r1, #0x7e
	lsl r1, r1, #2
	add r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [r4, r1]
	bl memcpy
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, [sp, #8]
	bl sub_0207CB9C
	cmp r0, #5
	bls _0203BCA0
	b _0203BE68
_0203BCA0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203BCAC: ; jump table
	.short _0203BCB8 - _0203BCAC - 2 ; case 0
	.short _0203BCF2 - _0203BCAC - 2 ; case 1
	.short _0203BD02 - _0203BCAC - 2 ; case 2
	.short _0203BE68 - _0203BCAC - 2 ; case 3
	.short _0203BD70 - _0203BCAC - 2 ; case 4
	.short _0203BE68 - _0203BCAC - 2 ; case 5
_0203BCB8:
	ldr r0, [sp, #8]
	bl sub_0207CB94
	add r1, sp, #0x10
	strh r0, [r1, #4]
	ldr r0, [sp, #8]
	bl sub_0207CBA4
	add r1, sp, #0x10
	strb r0, [r1, #6]
	str r5, [sp, #0x10]
	ldrh r0, [r1, #4]
	mov r1, #6
	mov r2, #0xb
	bl sub_0207CFF0
	add r1, r0, #0
	lsl r1, r1, #0x10
	mov r0, #0
	lsr r1, r1, #0x10
	bl sub_020683F4
	mov r1, #0x73
	lsl r1, r1, #2
	add r2, r0, #0
	add r0, sp, #0x10
	add r1, r4, r1
	blx r2
	b _0203BE72
_0203BCF2:
	ldr r0, [sp, #8]
	bl sub_0207CB94
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203C2D8
	b _0203BE72
_0203BD02:
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r5, r0, #0
	bl memset
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [r5, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r5, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	str r0, [r5, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [r5, #0x18]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #9
	add r0, #0x20
	strb r1, [r0]
	ldr r0, [sp, #8]
	bl sub_0207CB94
	strh r0, [r5, #0x24]
	ldr r1, _0203BE80 ; =0x020F1E88
	add r0, r6, #0
	add r2, r5, #0
	str r6, [r5, #0x1c]
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r1, _0203BE84 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203BE72
_0203BD70:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [sp, #4]
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r7, [r0, #0]
	ldr r0, [sp, #8]
	bl sub_0207CB94
	add r5, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_0207A0FC
	str r0, [sp, #0xc]
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0207D2D0
	cmp r0, #1
	bne _0203BDEE
	ldr r0, [sp, #0xc]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0203BDEE
	add r0, r5, #0
	bl sub_0207D2F0
	add r3, r0, #0
	mov r0, #0xb
	lsl r2, r7, #0x18
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	lsr r2, r2, #0x18
	bl sub_0203D920
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	lsl r2, r7, #0x18
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl sub_0203C540
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203BE88 ; =sub_0203C558
	add r0, r4, #0
	bl sub_0203B674
	b _0203BE72
_0203BDEE:
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r5, r0, #0
	bl memset
	ldr r0, [sp, #4]
	str r0, [r5, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r5, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	str r0, [r5, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [r5, #0x18]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	ldr r0, [sp, #8]
	bl sub_0207CB94
	strh r0, [r5, #0x24]
	add r0, r5, #0
	add r0, #0x22
	strb r7, [r0]
	str r6, [r5, #0x1c]
	ldrh r0, [r5, #0x24]
	cmp r0, #0
	bne _0203BE46
	mov r1, #0
	b _0203BE48
_0203BE46:
	mov r1, #0xa
_0203BE48:
	add r0, r5, #0
	add r0, #0x20
	strb r1, [r0]
	ldr r1, _0203BE80 ; =0x020F1E88
	add r0, r6, #0
	add r2, r5, #0
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r1, _0203BE84 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203BE72
_0203BE68:
	add r0, r6, #0
	bl sub_020509D4
	mov r0, #0xc
	strh r0, [r4, #0x2a]
_0203BE72:
	ldr r0, [sp, #8]
	bl sub_020181C4
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203BE80: .word 0x020F1E88
_0203BE84: .word sub_0203B7C0
_0203BE88: .word sub_0203C558
	thumb_func_end sub_0203BC5C

	thumb_func_start sub_0203BE8C
sub_0203BE8C: ; 0x0203BE8C
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203BEAC ; =sub_0203BEB0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203BEAC: .word sub_0203BEB0
	thumb_func_end sub_0203BE8C

	thumb_func_start sub_0203BEB0
sub_0203BEB0: ; 0x0203BEB0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0xb
	bl sub_02071F04
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	str r5, [sp]
	ldr r0, [r4, r1]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #1
	add r1, r0, #0
	mov r3, #0xff
	bl sub_02071D40
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl sub_0203E09C
	mov r0, #0x72
	ldr r1, _0203BEFC ; =sub_0203BF00
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203BEFC: .word sub_0203BF00
	thumb_func_end sub_0203BEB0

	thumb_func_start sub_0203BF00
sub_0203BF00: ; 0x0203BF00
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x7e
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl sub_020721D4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02071F20
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0xc
	strh r0, [r4, #0x2a]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203BF00

	thumb_func_start sub_0203BF38
sub_0203BF38: ; 0x0203BF38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	bl sub_0203B078
	add r0, r4, #0
	mov r1, #1
	bl sub_0200DC9C
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	add r0, r4, #0
	bl sub_0201A8FC
	add r0, r5, #0
	bl sub_0203B200
	mov r0, #4
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203BF38

	thumb_func_start sub_0203BF6C
sub_0203BF6C: ; 0x0203BF6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	ldr r0, [r0, #0xc]
	bl sub_020247E0
	cmp r0, #0
	beq _0203BF94
	mov r2, #0
	ldr r1, _0203BFB8 ; =0x000007F2
	add r0, r5, #0
	add r3, r2, #0
	bl sub_0203E8E0
	b _0203BFB2
_0203BF94:
	mov r0, #0x20
	mov r1, #8
	bl sub_02018144
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r3, [r4, r1]
	mov r2, #0
	strh r2, [r3, #4]
	ldr r1, _0203BFBC ; =0x000007D5
	add r0, r5, #0
	add r3, r3, #4
	bl sub_0203E8E0
_0203BFB2:
	mov r0, #5
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203BFB8: .word 0x000007F2
_0203BFBC: .word 0x000007D5
	thumb_func_end sub_0203BF6C

	thumb_func_start sub_0203BFC0
sub_0203BFC0: ; 0x0203BFC0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	ldr r0, [r6, #0xc]
	bl sub_020247E0
	cmp r0, #0
	beq _0203BFE8
	mov r0, #0
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
_0203BFE8:
	ldrh r0, [r5, #4]
	cmp r0, #0
	bne _0203BFF2
	mov r0, #0
	b _0203BFF4
_0203BFF2:
	mov r0, #0xf
_0203BFF4:
	strh r0, [r4, #0x2a]
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203BFC0

	thumb_func_start sub_0203C000
sub_0203C000: ; 0x0203C000
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203C020 ; =sub_0203C024
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203C020: .word sub_0203C024
	thumb_func_end sub_0203C000

	thumb_func_start sub_0203C024
sub_0203C024: ; 0x0203C024
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203D8EC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _0203C04C ; =sub_0203C050
	sub r1, #0x30
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C04C: .word sub_0203C050
	thumb_func_end sub_0203C024

	thumb_func_start sub_0203C050
sub_0203C050: ; 0x0203C050
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0xc
	strh r0, [r4, #0x2a]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203C050

	thumb_func_start sub_0203C07C
sub_0203C07C: ; 0x0203C07C
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0
	bl ov5_021D1744
	mov r0, #0x72
	ldr r1, _0203C09C ; =sub_0203C0A0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	strh r0, [r4, #0x2a]
	mov r0, #1
	pop {r4, pc}
	nop
_0203C09C: .word sub_0203C0A0
	thumb_func_end sub_0203C07C

	thumb_func_start sub_0203C0A0
sub_0203C0A0: ; 0x0203C0A0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r2, [r5, #0xc]
	mov r0, #2
	mov r1, #0
	mov r3, #0xb
	bl sub_0209747C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, sp, #0
	mov r1, #4
	bl sub_02014A9C
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl sub_02097500
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl sub_0203D874
	mov r0, #0x72
	ldr r1, _0203C0F4 ; =sub_0203C0F8
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C0F4: .word sub_0203C0F8
	thumb_func_end sub_0203C0A0

	thumb_func_start sub_0203C0F8
sub_0203C0F8: ; 0x0203C0F8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02097528
	cmp r0, #0
	bne _0203C142
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl sub_02097540
	bl sub_02033E1C
	cmp r0, #0
	beq _0203C13C
	add r0, sp, #0
	bl sub_0205C12C
	ldr r0, [r4, #0x7c]
	add r1, sp, #0
	bl sub_0205C010
_0203C13C:
	mov r0, #8
	strh r0, [r5, #0x2a]
	b _0203C146
_0203C142:
	mov r0, #0xc
	strh r0, [r5, #0x2a]
_0203C146:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020974EC
	add r0, r4, #0
	bl sub_020509D4
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_0205C2B0
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203C0F8

	thumb_func_start sub_0203C164
sub_0203C164: ; 0x0203C164
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	bl sub_0203B078
	add r0, r4, #0
	mov r1, #1
	bl sub_0200DC9C
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	add r0, r4, #0
	bl sub_0201A8FC
	add r0, r5, #0
	bl sub_0203B200
	ldr r0, [r6, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	bne _0203C1B0
	ldr r1, _0203C1C4 ; =0x00002275
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	b _0203C1BA
_0203C1B0:
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl sub_0203E918
_0203C1BA:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203C1C4: .word 0x00002275
	thumb_func_end sub_0203C164

	thumb_func_start sub_0203C1C8
sub_0203C1C8: ; 0x0203C1C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r2, #0x30
	add r7, r0, #0
	bl memcpy
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldrb r0, [r7, #0x12]
	cmp r0, #2
	bne _0203C2AA
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r2, #0x40
	str r1, [sp]
	mov r1, #0
	add r5, r0, #0
	bl memset
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [r5, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r5, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	str r0, [r5, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r5, #0
	str r0, [r5, #0x18]
	mov r0, #0
	add r1, #0x21
	strb r0, [r1]
	ldr r1, [sp]
	str r6, [r5, #0x1c]
	ldrh r1, [r1]
	cmp r1, #0
	beq _0203C25E
	add r1, r5, #0
	mov r2, #7
	add r1, #0x20
	strb r2, [r1]
	b _0203C26A
_0203C25E:
	add r0, r5, #0
	mov r1, #8
	add r0, #0x20
	strb r1, [r0]
	ldr r0, [sp]
	ldrh r0, [r0, #2]
_0203C26A:
	str r0, [r5, #0x34]
	ldr r0, [sp]
	add r2, r5, #0
	ldrh r0, [r0]
	strh r0, [r5, #0x24]
	add r0, r5, #0
	ldrb r1, [r7, #0x14]
	add r0, #0x22
	strb r1, [r0]
	ldrh r0, [r7, #0x18]
	strh r0, [r5, #0x26]
	add r0, r5, #0
	ldrb r1, [r7, #0x16]
	add r0, #0x28
	strb r1, [r0]
	ldr r1, _0203C2D0 ; =0x020F1E88
	add r0, r6, #0
	bl sub_0203CD84
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x7e
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r1, _0203C2D4 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203C2C6
_0203C2AA:
	mov r1, #0x7a
	lsl r1, r1, #2
	ldrb r2, [r7, #0x14]
	add r0, r6, #0
	add r1, r4, r1
	bl sub_0203D390
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C2D4 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
_0203C2C6:
	add r0, r7, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203C2D0: .word 0x020F1E88
_0203C2D4: .word sub_0203B7C0
	thumb_func_end sub_0203C1C8

	thumb_func_start sub_0203C2D8
sub_0203C2D8: ; 0x0203C2D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02050A60
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02050A64
	add r6, r0, #0
	mov r0, #0xb
	bl sub_020972FC
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	str r0, [sp]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #0
	mov r2, #1
	bl sub_02097320
	mov r5, #0
	add r4, r5, #0
_0203C316:
	add r0, r4, #0
	bl sub_0207D354
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r7, #0
	mov r2, #1
	mov r3, #0xb
	bl sub_0207D688
	cmp r0, #1
	bne _0203C342
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0
	bl sub_02097320
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0203C342:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x40
	blo _0203C316
	ldr r0, [sp, #4]
	add r3, sp, #8
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r1, #4
	add r2, sp, #8
	add r3, #1
	bl sub_0207D9B4
	mov r0, #0x7e
	add r2, sp, #8
	lsl r0, r0, #2
	ldrb r1, [r2, #1]
	add r3, r5, #3
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	ldr r0, [r6, r0]
	lsr r3, r3, #0x18
	bl sub_0209733C
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [sp, #4]
	ldr r1, [r6, r1]
	bl sub_0203D2E4
	ldr r1, _0203C38C ; =sub_0203C390
	add r0, r6, #0
	bl sub_0203B674
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0203C38C: .word sub_0203C390
	thumb_func_end sub_0203C2D8

	thumb_func_start sub_0203C390
sub_0203C390: ; 0x0203C390
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #1
	add r2, sp, #0
	bl sub_02097390
	add r0, r5, #0
	add r3, sp, #0
	add r0, #0x98
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0207D9C8
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0xb
	bl sub_02018238
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C3F0 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0203C3F0: .word sub_0203BC5C
	thumb_func_end sub_0203C390

	thumb_func_start sub_0203C3F4
sub_0203C3F4: ; 0x0203C3F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x7e
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0xb
	bl sub_02018238
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C430 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C430: .word sub_0203BC5C
	thumb_func_end sub_0203C3F4

	thumb_func_start sub_0203C434
sub_0203C434: ; 0x0203C434
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0xb
	ldr r7, [r1, #0]
	bl sub_02018238
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0203C48A
	mov r0, #0xb
	add r1, r5, #0
	bl sub_02018238
	mov r1, #0x7a
	lsl r1, r1, #2
	lsl r2, r7, #0x18
	add r0, r6, #0
	add r1, r4, r1
	lsr r2, r2, #0x18
	bl sub_0203D390
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C504 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203C4FE
_0203C48A:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x18]
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r3, [r5, #0x1c]
	mov r0, #0xb
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_0207064C
	ldr r1, [r5, #0x1c]
	add r7, r0, #0
	lsl r1, r1, #0x10
	mov r0, #1
	lsr r1, r1, #0x10
	mov r2, #0xb
	bl sub_0202BE00
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r2, #1
	bl sub_0202B758
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0xb
	bl sub_02018238
	add r0, r6, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _0203C508 ; =sub_02070680
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r7, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
_0203C4FE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203C504: .word sub_0203B7C0
_0203C508: .word sub_02070680
	thumb_func_end sub_0203C434

	thumb_func_start sub_0203C50C
sub_0203C50C: ; 0x0203C50C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x73
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C53C ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C53C: .word sub_0203BC5C
	thumb_func_end sub_0203C50C

	thumb_func_start sub_0203C540
sub_0203C540: ; 0x0203C540
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #4
	add r6, r2, #0
	bl sub_02018144
	strh r5, [r0]
	strb r6, [r0, #2]
	strb r4, [r0, #3]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203C540

	thumb_func_start sub_0203C558
sub_0203C558: ; 0x0203C558
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	ldrb r1, [r6, #3]
	cmp r1, #3
	bhi _0203C650
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203C582: ; jump table
	.short _0203C5D4 - _0203C582 - 2 ; case 0
	.short _0203C614 - _0203C582 - 2 ; case 1
	.short _0203C5AE - _0203C582 - 2 ; case 2
	.short _0203C58A - _0203C582 - 2 ; case 3
_0203C58A:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02097770
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C660 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	b _0203C650
_0203C5AE:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02097770
	mov r1, #0x7a
	lsl r1, r1, #2
	ldrb r2, [r6, #2]
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D390
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C664 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203C650
_0203C5D4:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02097728
	cmp r0, #1
	bne _0203C5EC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xc
	bl sub_0203C668
	b _0203C650
_0203C5EC:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02097770
	mov r1, #0x7a
	lsl r1, r1, #2
	ldrb r2, [r6, #2]
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D390
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C664 ; =sub_0203B7C0
	add r0, r4, #0
	bl sub_0203B674
	b _0203C650
_0203C614:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02097728
	cmp r0, #1
	bne _0203C62C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xb
	bl sub_0203C668
	b _0203C650
_0203C62C:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02097770
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C660 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
_0203C650:
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0203C660: .word sub_0203BC5C
_0203C664: .word sub_0203B7C0
	thumb_func_end sub_0203C558

	thumb_func_start sub_0203C668
sub_0203C668: ; 0x0203C668
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7f
	add r6, r1, #0
	str r2, [sp]
	lsl r0, r0, #2
	ldr r7, [r6, r0]
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl memset
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r6, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	ldrh r0, [r7]
	strh r0, [r4, #0x24]
	add r0, r4, #0
	ldrb r1, [r7, #2]
	add r0, #0x22
	strb r1, [r0]
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x20
	strb r0, [r1]
	str r5, [r4, #0x1c]
	ldrb r1, [r7, #2]
	ldr r0, [r4, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02097750
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02097770
	ldr r1, _0203C708 ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r6, r0]
	ldr r1, _0203C70C ; =sub_0203B7C0
	add r0, r6, #0
	bl sub_0203B674
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203C708: .word 0x020F1E88
_0203C70C: .word sub_0203B7C0
	thumb_func_end sub_0203C668

	thumb_func_start sub_0203C710
sub_0203C710: ; 0x0203C710
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02098AF0
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C74C ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0203C74C: .word sub_0203BC5C
	thumb_func_end sub_0203C710

	thumb_func_start sub_0203C750
sub_0203C750: ; 0x0203C750
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x73
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C780 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C780: .word sub_0203BC5C
	thumb_func_end sub_0203C750

	thumb_func_start sub_0203C784
sub_0203C784: ; 0x0203C784
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	mov r1, #0x73
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _0203C7B4 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203C7B4: .word sub_0203BC5C
	thumb_func_end sub_0203C784

	thumb_func_start sub_0203C7B8
sub_0203C7B8: ; 0x0203C7B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r6, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r5, [r6, r0]
	bl sub_0200569C
	mov r0, #3
	mov r1, #0x49
	lsl r2, r0, #0x10
	bl sub_02017FC8
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	ldrb r1, [r5]
	str r0, [sp, #0x20]
	bl sub_0207A0FC
	str r0, [sp, #0x24]
	ldrb r0, [r5, #1]
	cmp r0, #0
	ldr r0, [r4, #0xc]
	bne _0203C84E
	bl sub_02025E44
	str r0, [sp, #0x28]
	ldr r0, [r4, #0xc]
	bl sub_0208C324
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02027560
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	str r0, [sp, #0x30]
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	str r0, [sp, #0x34]
	ldr r0, [r4, #0xc]
	bl sub_02056B24
	ldr r1, [sp, #0x2c]
	str r7, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x30]
	ldr r3, [sp, #0x28]
	str r1, [sp, #8]
	ldr r1, [sp, #0x34]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	mov r0, #0x49
	str r0, [sp, #0x1c]
	ldrh r2, [r5, #4]
	ldr r0, [sp, #0x20]
	bl sub_0207AE68
	b _0203C8A2
_0203C84E:
	bl sub_02025E44
	str r0, [sp, #0x38]
	ldr r0, [r4, #0xc]
	bl sub_0208C324
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02027560
	str r0, [sp, #0x3c]
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	str r0, [sp, #0x40]
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	str r0, [sp, #0x44]
	ldr r0, [r4, #0xc]
	bl sub_02056B24
	ldr r1, [sp, #0x3c]
	str r7, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x40]
	ldr r3, [sp, #0x38]
	str r1, [sp, #8]
	ldr r1, [sp, #0x44]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0x49
	str r0, [sp, #0x1c]
	ldrh r2, [r5, #4]
	ldr r0, [sp, #0x20]
	bl sub_0207AE68
_0203C8A2:
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	ldrb r1, [r5]
	str r1, [r0, #0]
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r0, r1, #4
	ldr r0, [r6, r0]
	bl sub_020181C4
	mov r0, #0x7e
	lsl r0, r0, #2
	str r4, [r6, r0]
	mov r0, #7
	strh r0, [r6, #0x2a]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203C7B8

	thumb_func_start sub_0203C8CC
sub_0203C8CC: ; 0x0203C8CC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207B0D0
	cmp r0, #1
	bne _0203C948
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207B0E0
	mov r0, #0x49
	bl sub_0201807C
	ldr r0, _0203C94C ; =0x00000475
	mov r1, #0
	bl sub_020055D0
	mov r0, #0
	bl sub_02004234
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_020556A0
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0203D20C
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r1, [r1, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0207CB70
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r1, _0203C950 ; =sub_0203BC5C
	add r0, r4, #0
	bl sub_0203B674
_0203C948:
	pop {r3, r4, r5, pc}
	nop
_0203C94C: .word 0x00000475
_0203C950: .word sub_0203BC5C
	thumb_func_end sub_0203C8CC

	.rodata


	.global Unk_020EA01C
Unk_020EA01C: ; 0x020EA01C
	.incbin "incbin/arm9_rodata.bin", 0x53DC, 0x53E0 - 0x53DC

	.global Unk_020EA020
Unk_020EA020: ; 0x020EA020
	.incbin "incbin/arm9_rodata.bin", 0x53E0, 0x53EC - 0x53E0

	.global Unk_020EA02C
Unk_020EA02C: ; 0x020EA02C
	.incbin "incbin/arm9_rodata.bin", 0x53EC, 0x53F8 - 0x53EC

	.global Unk_020EA038
Unk_020EA038: ; 0x020EA038
	.incbin "incbin/arm9_rodata.bin", 0x53F8, 0x5404 - 0x53F8

	.global Unk_020EA044
Unk_020EA044: ; 0x020EA044
	.incbin "incbin/arm9_rodata.bin", 0x5404, 0x541C - 0x5404

	.global Unk_020EA05C
Unk_020EA05C: ; 0x020EA05C
	.incbin "incbin/arm9_rodata.bin", 0x541C, 0x5464 - 0x541C

	.global Unk_020EA0A4
Unk_020EA0A4: ; 0x020EA0A4
	.incbin "incbin/arm9_rodata.bin", 0x5464, 0x68

