	.include "macros/function.inc"
	.include "include/unk_02082C2C.inc"

	

	.text


	thumb_func_start sub_02082C2C
sub_02082C2C: ; 0x02082C2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x20
	mov r1, #0xc
	bl sub_0201DBEC
	mov r0, #0xc
	bl sub_0200C6E4
	ldr r1, _02082CD8 ; =0x000005A8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_0200C704
	ldr r7, _02082CDC ; =0x000005AC
	add r2, sp, #0x30
	ldr r3, _02082CE0 ; =0x020F20A0
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _02082CE4 ; =0x020F2070
	stmia r2!, {r0, r1}
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [r3, #0]
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl sub_0200C73C
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x23
	bl sub_0200C7C0
	sub r0, r7, #4
	ldr r0, [r4, r0]
	bl sub_0200C738
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	ldr r5, _02082CE8 ; =0x020F2084
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	sub r1, r7, #4
	str r0, [r3, #0]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8F0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02082CD8: .word 0x000005A8
_02082CDC: .word 0x000005AC
_02082CE0: .word 0x020F20A0
_02082CE4: .word 0x020F2070
_02082CE8: .word 0x020F2084
	thumb_func_end sub_02082C2C

	thumb_func_start sub_02082CEC
sub_02082CEC: ; 0x02082CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r0, _02082D94 ; =0x000005A4
	str r3, [sp, #8]
	ldr r0, [r5, r0]
	add r4, r2, #0
	ldr r0, [r0, #0]
	add r7, r1, #0
	bl sub_0207A0FC
	lsl r1, r4, #0x10
	asr r6, r1, #0x10
	mov r1, #0x2c
	mul r1, r7
	str r1, [sp, #0xc]
	add r2, r5, r1
	ldr r1, _02082D98 ; =0x0000071A
	str r0, [sp, #0x10]
	strh r6, [r2, r1]
	ldr r3, [sp, #8]
	add r1, r1, #2
	lsl r3, r3, #0x10
	asr r4, r3, #0x10
	strh r4, [r2, r1]
	add r7, r7, #4
	bl sub_02079D80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r1, _02082D9C ; =0x000005A8
	str r7, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x50]
	bl sub_0200D9B4
	ldr r0, [sp, #0x10]
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	str r7, [sp, #0x14]
	add r0, sp, #0x14
	strh r6, [r0, #4]
	strh r4, [r0, #6]
	mov r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x20]
	ldr r1, _02082DA0 ; =0x00000708
	add r3, r5, r0
	ldrh r0, [r3, r1]
	add r1, #0xd
	ldrb r1, [r3, r1]
	bl sub_02079EDC
	add r0, r0, #3
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x28]
	mov r0, #0
	ldr r1, _02082D9C ; =0x000005A8
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, sp, #0x14
	bl sub_0200CA08
	ldr r1, [sp, #0xc]
	add r2, r5, r1
	ldr r1, _02082DA4 ; =0x00000728
	str r0, [r2, r1]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02082D94: .word 0x000005A4
_02082D98: .word 0x0000071A
_02082D9C: .word 0x000005A8
_02082DA0: .word 0x00000708
_02082DA4: .word 0x00000728
	thumb_func_end sub_02082CEC

	thumb_func_start sub_02082DA8
sub_02082DA8: ; 0x02082DA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _02082E50 ; =0x000005A4
	add r6, r1, #0
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	str r0, [sp, #0xc]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	add r7, r0, #0
	ldr r0, _02082E54 ; =0x00000728
	add r5, r4, r0
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	ldr r0, [r5, r4]
	bl sub_02021F98
	mov r1, #1
	bl NNS_G2dGetImageLocation
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_02079D80
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0xc
	bl sub_0200723C
	add r1, sp, #0x14
	add r6, r0, #0
	bl NNS_G2dGetUnpackedCharacterData
	cmp r0, #0
	beq _02082E2C
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl DC_FlushRange
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r0, [r2, #0x14]
	ldr r2, [r2, #0x10]
	bl GX_LoadOBJ
_02082E2C:
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	mov r2, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [r5, r4]
	add r1, r1, #3
	bl sub_0200D414
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02082E50: .word 0x000005A4
_02082E54: .word 0x00000728
	thumb_func_end sub_02082DA8

	thumb_func_start sub_02082E58
sub_02082E58: ; 0x02082E58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r1, _02082F78 ; =0x000005A8
	add r5, r0, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, _02082F7C ; =0x020F20C0
	bl sub_0200CA08
	ldr r1, _02082F80 ; =0x000005C8
	ldr r2, _02082F84 ; =0x020F20E8
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x20
	sub r1, #0x1c
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_0200CA08
	ldr r1, _02082F88 ; =0x000005CC
	ldr r2, _02082F8C ; =0x020F2110
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x24
	sub r1, #0x20
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_0200CA08
	mov r1, #0x5d
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x28
	sub r1, #0x24
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _02082F90 ; =0x020F2138
	bl sub_0200CA08
	ldr r1, _02082F94 ; =0x000005D4
	ldr r2, _02082F98 ; =0x020F2430
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x2c
	sub r1, #0x28
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_0200CA08
	mov r1, #0x62
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, _02082F7C ; =0x020F20C0
	mov r4, #0
	str r4, [sp, #4]
	add r6, r5, #0
	str r0, [sp]
	add r7, r5, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
_02082ED6:
	ldr r0, _02082F78 ; =0x000005A8
	ldr r1, _02082F9C ; =0x000005AC
	add r3, r4, #0
	ldr r2, [sp, #8]
	add r3, #0xa0
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r2, r3
	bl sub_0200CA08
	ldr r1, _02082FA0 ; =0x000005D8
	str r0, [r6, r1]
	ldr r1, [sp]
	mov r0, #0xa4
	ldrsh r1, [r1, r0]
	ldr r0, _02082FA4 ; =0x0000071E
	strh r1, [r7, r0]
	ldr r1, [sp]
	mov r0, #0xa6
	ldrsh r1, [r1, r0]
	mov r0, #0x72
	lsl r0, r0, #4
	strh r1, [r7, r0]
	ldr r0, _02082FA0 ; =0x000005D8
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_02021CAC
	mov r2, #0x19
	ldr r0, _02082F78 ; =0x000005A8
	ldr r1, _02082F9C ; =0x000005AC
	lsl r2, r2, #4
	add r3, r4, r2
	ldr r2, [sp, #0xc]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r2, r3
	bl sub_0200CA08
	mov r1, #0x5f
	lsl r1, r1, #4
	mov r2, #0xa
	str r0, [r6, r1]
	add r0, r1, #0
	lsl r2, r2, #6
	sub r0, #0x48
	sub r1, #0x44
	add r3, r4, r2
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r2, r3
	bl sub_0200CA08
	ldr r1, _02082FA8 ; =0x00000608
	add r4, #0x28
	str r0, [r6, r1]
	ldr r0, [sp]
	add r6, r6, #4
	add r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	add r7, #0x2c
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #6
	blo _02082ED6
	add r0, r1, #0
	sub r0, #0x3c
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02082F78: .word 0x000005A8
_02082F7C: .word 0x020F20C0
_02082F80: .word 0x000005C8
_02082F84: .word 0x020F20E8
_02082F88: .word 0x000005CC
_02082F8C: .word 0x020F2110
_02082F90: .word 0x020F2138
_02082F94: .word 0x000005D4
_02082F98: .word 0x020F2430
_02082F9C: .word 0x000005AC
_02082FA0: .word 0x000005D8
_02082FA4: .word 0x0000071E
_02082FA8: .word 0x00000608
	thumb_func_end sub_02082E58

	thumb_func_start sub_02082FAC
sub_02082FAC: ; 0x02082FAC
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	add r0, sp, #0
	strh r2, [r0, #4]
	strh r3, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	mov r0, #1
	str r1, [sp, #0x10]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	ldr r1, _02082FF0 ; =0x000005A8
	str r0, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, sp, #0
	bl sub_0200CA08
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0x5b
	lsl r1, r1, #4
	str r0, [r2, r1]
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_02082FF0: .word 0x000005A8
	thumb_func_end sub_02082FAC

	thumb_func_start sub_02082FF4
sub_02082FF4: ; 0x02082FF4
	push {r4, lr}
	ldr r1, _02083010 ; =0x000005A8
	add r4, r0, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8B0
	ldr r0, _02083010 ; =0x000005A8
	ldr r0, [r4, r0]
	bl sub_0200C8D4
	pop {r4, pc}
	nop
_02083010: .word 0x000005A8
	thumb_func_end sub_02082FF4

	thumb_func_start sub_02083014
sub_02083014: ; 0x02083014
	push {r3, r4, r5, lr}
	mov r3, #0x5b
	lsl r3, r3, #4
	add r1, #0xa
	add r5, r0, r3
	lsl r4, r1, #2
	cmp r2, #7
	ldr r0, [r5, r4]
	bne _0208302E
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_0208302E:
	add r1, r2, #0
	bl sub_02021D6C
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02083014

	thumb_func_start sub_02083040
sub_02083040: ; 0x02083040
	push {r3, r4, r5, lr}
	mov r3, #0x5b
	lsl r3, r3, #4
	add r1, #0x10
	add r5, r0, r3
	lsl r4, r1, #2
	cmp r2, #0
	bne _0208305A
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_0208305A:
	add r0, r2, #0
	bl sub_0207D2D0
	cmp r0, #1
	ldr r0, [r5, r4]
	bne _0208306E
	mov r1, #1
	bl sub_02021D6C
	b _02083074
_0208306E:
	mov r1, #0
	bl sub_02021D6C
_02083074:
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02083040

	thumb_func_start sub_02083080
sub_02083080: ; 0x02083080
	push {r3, r4, r5, lr}
	mov r2, #0x5b
	lsl r2, r2, #4
	add r1, #0x10
	lsl r4, r1, #2
	add r5, r0, r2
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02083080

	thumb_func_start sub_020830A0
sub_020830A0: ; 0x020830A0
	push {r4, r5, r6, lr}
	ldr r6, _020830D0 ; =0x00000722
	add r5, r1, #0
	mov r4, #0x2c
	mul r5, r4
	add r1, #0x10
	lsl r1, r1, #2
	add r4, r0, r6
	add r2, #8
	strh r2, [r4, r5]
	add r2, r6, #2
	add r2, r0, r2
	add r3, #8
	add r1, r0, r1
	mov r0, #0x5b
	strh r3, [r2, r5]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldrsh r1, [r4, r5]
	ldrsh r2, [r2, r5]
	bl sub_0200D494
	pop {r4, r5, r6, pc}
	nop
_020830D0: .word 0x00000722
	thumb_func_end sub_020830A0

	thumb_func_start sub_020830D4
sub_020830D4: ; 0x020830D4
	add r2, r0, #0
	add r3, r1, #0
	mov r0, #0x2c
	mul r3, r0
	add r1, #0x16
	lsl r0, r1, #2
	add r1, r2, r0
	mov r0, #0x5b
	add r3, r2, r3
	lsl r0, r0, #4
	ldr r2, _020830FC ; =0x00000722
	ldr r0, [r1, r0]
	ldrsh r1, [r3, r2]
	add r2, r2, #2
	ldrsh r2, [r3, r2]
	add r1, #8
	lsl r1, r1, #0x10
	ldr r3, _02083100 ; =sub_0200D494
	asr r1, r1, #0x10
	bx r3
	; .align 2, 0
_020830FC: .word 0x00000722
_02083100: .word sub_0200D494
	thumb_func_end sub_020830D4

	thumb_func_start sub_02083104
sub_02083104: ; 0x02083104
	push {r4, lr}
	mov r2, #0x5b
	mov r4, #0x2c
	lsl r2, r2, #4
	add r3, r0, r2
	add r2, r1, #0
	mul r4, r1
	add r1, r0, r4
	ldr r0, _02083134 ; =0x00000716
	add r2, #0x16
	ldrh r0, [r1, r0]
	lsl r2, r2, #2
	cmp r0, #0
	ldr r0, [r3, r2]
	bne _0208312A
	mov r1, #0
	bl sub_02021CAC
	pop {r4, pc}
_0208312A:
	mov r1, #1
	bl sub_02021CAC
	pop {r4, pc}
	nop
_02083134: .word 0x00000716
	thumb_func_end sub_02083104

	thumb_func_start sub_02083138
sub_02083138: ; 0x02083138
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02021E24
	cmp r4, r0
	beq _02083156
	add r0, r5, #0
	mov r1, #0
	bl sub_02021E50
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021D6C
_02083156:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02083138

	thumb_func_start sub_02083158
sub_02083158: ; 0x02083158
	push {r3, lr}
	add r2, r0, #0
	ldrh r0, [r2, #6]
	cmp r0, #0
	bne _02083166
	mov r0, #0
	pop {r3, pc}
_02083166:
	ldrh r1, [r2, #0xe]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x14
	cmp r1, #7
	beq _0208317C
	cmp r1, #0
	beq _0208317C
	cmp r1, #6
	beq _0208317C
	mov r0, #5
	pop {r3, pc}
_0208317C:
	ldrh r1, [r2, #8]
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _020831AE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02083194: ; jump table
	.short _020831AE - _02083194 - 2 ; case 0
	.short _020831AA - _02083194 - 2 ; case 1
	.short _020831A6 - _02083194 - 2 ; case 2
	.short _020831A2 - _02083194 - 2 ; case 3
	.short _0208319E - _02083194 - 2 ; case 4
_0208319E:
	mov r0, #1
	pop {r3, pc}
_020831A2:
	mov r0, #2
	pop {r3, pc}
_020831A6:
	mov r0, #3
	pop {r3, pc}
_020831AA:
	mov r0, #4
	pop {r3, pc}
_020831AE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02083158

	thumb_func_start sub_020831B4
sub_020831B4: ; 0x020831B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0208326C ; =0x00000704
	mov r5, #0
	add r0, r6, r0
	str r0, [sp]
_020831C0:
	mov r0, #0x2c
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp]
	add r4, r0, r1
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _02083260
	ldr r0, _02083270 ; =0x00000B14
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _020831F2
	mov r0, #0xb1
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	cmp r0, r5
	beq _020831EE
	ldr r0, _02083274 ; =0x00000B11
	ldrb r0, [r6, r0]
	cmp r0, r5
	bne _020831F2
_020831EE:
	mov r7, #0
	b _020831FA
_020831F2:
	add r0, r4, #0
	bl sub_02083158
	add r7, r0, #0
_020831FA:
	lsl r1, r7, #0x18
	ldr r0, [r4, #0x24]
	lsr r1, r1, #0x18
	bl sub_02083138
	mov r1, #1
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, _02083278 ; =0x00000B29
	ldrb r0, [r6, r0]
	cmp r0, r5
	bne _02083252
	cmp r7, #0
	beq _02083252
	cmp r7, #5
	beq _02083252
	ldr r0, [r4, #0x24]
	bl sub_02021E74
	cmp r0, #0
	ldr r0, [r4, #0x24]
	bne _0208323E
	mov r2, #0x18
	ldrsh r2, [r4, r2]
	mov r1, #0x16
	ldrsh r1, [r4, r1]
	sub r2, r2, #3
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	b _02083260
_0208323E:
	mov r2, #0x18
	ldrsh r2, [r4, r2]
	mov r1, #0x16
	ldrsh r1, [r4, r1]
	add r2, r2, #1
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	b _02083260
_02083252:
	mov r1, #0x16
	mov r2, #0x18
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	bl sub_0200D494
_02083260:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #6
	blo _020831C0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208326C: .word 0x00000704
_02083270: .word 0x00000B14
_02083274: .word 0x00000B11
_02083278: .word 0x00000B29
	thumb_func_end sub_020831B4

	thumb_func_start sub_0208327C
sub_0208327C: ; 0x0208327C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _020832D8 ; =0x0000080C
	add r4, r1, #0
	ldr r1, [r5, r0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r1, sp, #0
	add r6, r2, #0
	add r1, #1
	add r2, sp, #0
	bl sub_0201E010
	ldr r0, _020832DC ; =0x000005A4
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r0, #0x21
	ldrb r0, [r0]
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _020832E0 ; =0x000005C8
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _020832E0 ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _020832E0 ; =0x000005C8
	add r2, sp, #0
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl sub_0200D494
	ldr r0, _020832E0 ; =0x000005C8
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_0200D414
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_020832D8: .word 0x0000080C
_020832DC: .word 0x000005A4
_020832E0: .word 0x000005C8
	thumb_func_end sub_0208327C

	thumb_func_start sub_020832E4
sub_020832E4: ; 0x020832E4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	lsl r0, r1, #0xc
	str r0, [sp]
	mov r0, #1
	lsl r1, r2, #0xc
	lsl r0, r0, #0x14
	str r1, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl sub_02021C50
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021E50
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021D6C
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020832E4

	thumb_func_start sub_02083334
sub_02083334: ; 0x02083334
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021D34
	cmp r0, #1
	bne _0208336E
	mov r0, #0x62
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021E74
	cmp r0, #2
	bne _0208336E
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_0208336E:
	pop {r4, pc}
	thumb_func_end sub_02083334

	.rodata


	.global Unk_020F2070
Unk_020F2070: ; 0x020F2070
	.incbin "incbin/arm9_rodata.bin", 0xD430, 0xD444 - 0xD430

	.global Unk_020F2084
Unk_020F2084: ; 0x020F2084
	.incbin "incbin/arm9_rodata.bin", 0xD444, 0xD460 - 0xD444

	.global Unk_020F20A0
Unk_020F20A0: ; 0x020F20A0
	.incbin "incbin/arm9_rodata.bin", 0xD460, 0xD480 - 0xD460

	.global Unk_020F20C0
Unk_020F20C0: ; 0x020F20C0
	.incbin "incbin/arm9_rodata.bin", 0xD480, 0x398



	.data


	.global Unk_02100BCC
Unk_02100BCC: ; 0x02100BCC
	.incbin "incbin/arm9_data.bin", 0x1EEC, 0x1F00 - 0x1EEC

	.global Unk_02100BE0
Unk_02100BE0: ; 0x02100BE0
	.incbin "incbin/arm9_data.bin", 0x1F00, 0x1F18 - 0x1F00

	.global Unk_02100BF8
Unk_02100BF8: ; 0x02100BF8
	.incbin "incbin/arm9_data.bin", 0x1F18, 0x1F30 - 0x1F18

	.global Unk_02100C10
Unk_02100C10: ; 0x02100C10
	.incbin "incbin/arm9_data.bin", 0x1F30, 0x1F48 - 0x1F30

	.global Unk_02100C28
Unk_02100C28: ; 0x02100C28
	.incbin "incbin/arm9_data.bin", 0x1F48, 0x17

