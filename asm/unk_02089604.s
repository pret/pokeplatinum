	.include "macros/function.inc"
	.include "include/unk_02089604.inc"

	

	.text


	thumb_func_start sub_02089604
sub_02089604: ; 0x02089604
	push {r3, r4}
	mov r2, #0xb5
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	add r3, r2, #4
	str r4, [r0, r3]
	str r1, [r0, r2]
	add r1, r2, #0
	mov r3, #0
	add r1, #8
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0xc
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x10
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x14
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _02089656
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x2a
	ldrh r3, [r3, r1]
	add r1, r2, #0
	add r1, #8
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x28
	ldrh r1, [r3, r1]
	add r2, #0xc
	str r1, [r0, r2]
_02089656:
	mov r2, #0xb6
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _02089684
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x2e
	ldrh r3, [r3, r1]
	add r1, r2, #0
	add r1, #0xc
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x2c
	ldrh r1, [r3, r1]
	add r2, #0x10
	str r1, [r0, r2]
_02089684:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02089604

	thumb_func_start sub_02089688
sub_02089688: ; 0x02089688
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0xdd
	lsl r0, r0, #2
	mov r1, #1
	str r1, [r4, r0]
	add r7, r0, #0
	mov r5, #0
	mov r1, #0xab
	add r3, r5, #0
	add r6, r4, #0
	sub r7, #0xca
	add r0, #0x48
	lsl r1, r1, #2
_020896A4:
	strh r5, [r6, r7]
	ldr r2, [r6, r0]
	add r3, r3, #1
	add r2, r5, r2
	lsl r2, r2, #0x10
	lsr r5, r2, #0x10
	strh r5, [r6, r1]
	add r6, r6, #4
	cmp r3, #5
	blt _020896A4
	mov r1, #0xf7
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r1, r1, #1
	bl sub_02089604
	mov r1, #0xfb
	lsl r1, r1, #2
	mov r0, #0x2d
	add r7, r1, #0
	mov r6, #0
	add r5, r4, #0
	lsl r0, r0, #4
	sub r7, #0x30
_020896D6:
	ldr r3, [r5, r7]
	cmp r3, #0
	beq _020896F0
	ldr r2, [r4, r0]
	add r6, r6, #1
	add r2, r2, r3
	str r2, [r4, r0]
	ldr r2, [r4, r1]
	add r5, r5, #4
	add r2, r2, #1
	str r2, [r4, r1]
	cmp r6, #4
	blt _020896D6
_020896F0:
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r7, _02089804 ; =0x000002A2
	sub r1, r1, #1
	str r1, [r4, r0]
	mov r1, #0x2d
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	ldr r0, [r4, r0]
	sub r1, #0x30
	add r0, r2, r0
	lsl r2, r0, #3
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r2, r0, #1
	mov r0, #0x70
	sub r0, r0, r2
	strh r0, [r4, r1]
	mov r6, #0
	add r3, r4, #0
	add r5, r4, #0
_0208971C:
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r2, [r3, r0]
	add r0, #0x30
	ldr r0, [r4, r0]
	add r6, r6, #1
	lsl r1, r0, #3
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r3, r3, #4
	sub r0, r0, r2
	lsl r0, r0, #3
	lsl r2, r2, #5
	add r0, r0, r2
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #0x70
	sub r0, r0, r1
	strh r0, [r5, r7]
	add r5, r5, #2
	cmp r6, #4
	blt _0208971C
	ldr r0, _02089804 ; =0x000002A2
	ldrsh r1, [r4, r0]
	add r1, #0xc
	strh r1, [r4, r0]
	mov r1, #0xfb
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r4, r1]
	add r3, r0, #0
	cmp r1, #0
	ble _02089788
	mov r7, #7
	mov r6, #0xfb
	add r1, r4, #0
	add r2, r4, #0
	lsl r7, r7, #6
	lsl r6, r6, #2
_02089770:
	mov r5, #0xef
	lsl r5, r5, #2
	ldr r5, [r1, r5]
	add r3, r3, #1
	add r0, r0, r5
	sub r5, r0, #1
	str r5, [r2, r7]
	ldr r5, [r4, r6]
	add r1, r1, #4
	add r2, #0x1c
	cmp r3, r5
	blt _02089770
_02089788:
	mov r3, #0
	mov ip, r3
	str r4, [sp]
	add r2, r4, #0
_02089790:
	mov r1, #0xef
	ldr r5, [sp]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r0, #0
	cmp r1, #0
	ble _020897BE
	mov r5, ip
	lsl r5, r5, #2
	add r7, r4, r5
	mov r5, ip
	add r1, r2, #0
	add r6, r5, #1
_020897AA:
	mov r5, #0xef
	str r6, [r1, #4]
	lsl r5, r5, #2
	ldr r5, [r7, r5]
	add r0, r0, #1
	add r1, #0x1c
	add r2, #0x1c
	add r3, r3, #1
	cmp r0, r5
	blt _020897AA
_020897BE:
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r3, r0
	blt _02089790
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	cmp r0, #0
	ble _02089800
	mov r5, #0x3f
	lsl r5, r5, #4
	add r2, r5, #0
	add r3, r5, #0
	add r0, r4, #0
	sub r2, #0x34
	sub r3, #0x14
_020897EE:
	ldr r6, [r0, r2]
	ldr r7, [r4, r5]
	add r1, r1, #1
	add r6, r7, r6
	str r6, [r4, r5]
	ldr r6, [r4, r3]
	add r0, r0, #4
	cmp r1, r6
	blt _020897EE
_02089800:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02089804: .word 0x000002A2
	thumb_func_end sub_02089688

	thumb_func_start sub_02089808
sub_02089808: ; 0x02089808
	mov r2, #0xb
	lsl r2, r2, #6
	str r1, [r0, r2]
	mov r3, #0
	add r1, r2, #4
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #8
	str r3, [r0, r1]
	add r2, #0xc
	str r3, [r0, r2]
	bx lr
	thumb_func_end sub_02089808

	thumb_func_start sub_02089820
sub_02089820: ; 0x02089820
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl sub_0208A490
	add r0, r5, #0
	bl sub_0208ADA4
	add r0, r5, #0
	bl sub_0208A758
	add r0, r5, #0
	mov r1, #0
	bl sub_0208ADE4
	add r0, r5, #0
	bl sub_0208A8A0
	add r0, r5, #0
	bl sub_0208A9BC
	add r0, r5, #0
	bl sub_0208AF44
	add r0, r5, #0
	bl sub_0208AFCC
	add r0, r5, #0
	bl sub_0208B064
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	mov r1, #0xf9
	str r3, [sp, #8]
	mov r0, #0x64
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	mov r2, #4
	str r0, [sp, #0x10]
	add r0, r1, #0
	sub r0, #0xec
	sub r1, #0x48
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl sub_0208B1C4
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020898B8
	mov r0, #0x65
	bl sub_020394A8
	add r1, sp, #0x14
	add r4, r0, #0
	bl NNS_G2dGetUnpackedPaletteData
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xbf
	ldr r1, [sp, #0x14]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r1, #0xc]
	mov r2, #3
	mov r3, #0xe0
	bl sub_02002FBC
	add r0, r4, #0
	bl sub_020181C4
_020898B8:
	add r0, r5, #0
	mov r1, #1
	bl sub_02089808
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x65
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02089820

	thumb_func_start sub_020898DC
sub_020898DC: ; 0x020898DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _020898F2
	cmp r0, #1
	beq _02089916
	b _0208992A
_020898F2:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x65
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _02089930
_02089916:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02089930
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _02089930
_0208992A:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02089930:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020898DC

	thumb_func_start sub_02089938
sub_02089938: ; 0x02089938
	push {r4, lr}
	mov r1, #0xb2
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _0208995A
	bl sub_0200F2AC
	cmp r0, #1
	bne _0208996E
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0208996E
_0208995A:
	bl sub_0208A328
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_0202404C
	add r0, r4, #0
	bl sub_02089C20
_0208996E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02089938

	thumb_func_start sub_02089974
sub_02089974: ; 0x02089974
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xb2
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _0208998A
	cmp r2, #1
	bne _02089988
	b _02089AF0
_02089988:
	b _02089B84
_0208998A:
	mov r1, #0
	add r2, r1, #0
	bl sub_0208AAB4
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _02089A1C
	ldr r7, _02089BE0 ; =0x02100CB8
	add r4, r5, #0
_020899A2:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _02089A0E
	mov r1, #0x14
	mov r2, #0x16
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	bl sub_0200D5DC
	ldrb r0, [r4, #0x18]
	sub r0, r0, #1
	strb r0, [r4, #0x18]
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	blt _020899E4
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _020899E4
	ldrb r0, [r4, #0x19]
	lsl r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
_020899E4:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	blt _02089A0E
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02089A0E
	ldrb r0, [r4, #0x19]
	ldr r1, _02089BE4 ; =0x02100CD4
	lsl r2, r0, #2
	ldr r1, [r1, r2]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
_02089A0E:
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _020899A2
_02089A1C:
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _02089A64
	mov r7, #0x76
	add r4, r5, #0
	lsl r7, r7, #2
_02089A2E:
	ldrb r0, [r4, r7]
	cmp r0, #0
	beq _02089A56
	mov r1, #0x75
	ldr r2, _02089BE8 ; =0x000001D6
	mov r0, #0x73
	lsl r1, r1, #2
	lsl r0, r0, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, r0]
	bl sub_0200D5DC
	mov r0, #0x76
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	sub r1, r0, #1
	mov r0, #0x76
	lsl r0, r0, #2
	strb r1, [r4, r0]
_02089A56:
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02089A2E
_02089A64:
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _02089AE4
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02089AA2
	mov r0, #0x1c
	mul r0, r6
	mov r7, #0x2e
	add r4, r5, r0
	lsl r7, r7, #4
_02089A82:
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	bl sub_0208AD98
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200D364
	ldr r0, [r4, #0xc]
	bl sub_0200D330
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02089A82
_02089AA2:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02089ADA
	mov r0, #0x1c
	mul r0, r6
	mov r7, #0xba
	add r4, r5, r0
	lsl r7, r7, #2
_02089ABA:
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	bl sub_0208AD98
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200D364
	ldr r0, [r4, #0xc]
	bl sub_0200D330
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02089ABA
_02089ADA:
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
_02089AE4:
	mov r0, #0xb3
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	b _02089BDA
_02089AF0:
	add r0, r1, #0
	add r0, #0x14
	add r1, #0x18
	ldr r6, [r5, r0]
	ldr r0, [r5, r1]
	cmp r6, r0
	bge _02089B2C
	mov r0, #0x1c
	mul r0, r6
	ldr r7, _02089BE0 ; =0x02100CB8
	add r4, r5, r0
_02089B06:
	ldrb r0, [r4, #0x19]
	cmp r0, #6
	beq _02089B1E
	lsl r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
_02089B1E:
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02089B06
_02089B2C:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02089B68
	mov r0, #0x1c
	mul r0, r6
	ldr r7, _02089BE4 ; =0x02100CD4
	add r4, r5, r0
_02089B42:
	ldrb r0, [r4, #0x19]
	cmp r0, #6
	beq _02089B5A
	lsl r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
_02089B5A:
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02089B42
_02089B68:
	mov r1, #0xb3
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #6
	bne _02089BDA
	sub r0, r1, #4
	ldr r0, [r5, r0]
	add r2, r0, #1
	sub r0, r1, #4
	str r2, [r5, r0]
	b _02089BDA
_02089B84:
	bl sub_0208AF44
	mov r1, #0xed
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _02089BA6
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0208A398
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0208AAE4
	b _02089BB8
_02089BA6:
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0208A3C0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0208AAE4
_02089BB8:
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02089BCC
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl sub_0208AAB4
_02089BCC:
	add r0, r5, #0
	bl sub_0208A384
	add r0, r5, #0
	mov r1, #1
	bl sub_02089808
_02089BDA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02089BE0: .word 0x02100CB8
_02089BE4: .word 0x02100CD4
_02089BE8: .word 0x000001D6
	thumb_func_end sub_02089974

	thumb_func_start sub_02089BEC
sub_02089BEC: ; 0x02089BEC
	push {r3, r4, r5, lr}
	mov r1, #0xb
	add r5, r0, #0
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	lsl r2, r1, #2
	ldr r1, _02089C1C ; =0x020F2EB8
	ldr r1, [r1, r2]
	blx r1
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0208ABB4
	add r0, r5, #0
	bl sub_0208AC8C
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200C7EC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02089C1C: .word 0x020F2EB8
	thumb_func_end sub_02089BEC

	thumb_func_start sub_02089C20
sub_02089C20: ; 0x02089C20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r5, _02089F00 ; =0x020F2EC8
	add r4, r0, #0
	add r3, sp, #4
	mov r2, #7
_02089C2C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02089C2C
	ldr r0, [r5, #0]
	mov r1, #0x14
	str r0, [r3, #0]
	mov r3, #0x91
	lsl r3, r3, #2
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	ldrsh r7, [r4, r3]
	mov r6, #0
	mov ip, r0
	mul r1, r0
	add r0, sp, #4
	lsl r2, r7, #2
	add r0, r0, r1
	ldr r5, [r2, r0]
	add r0, r3, #0
	add r0, #0x7c
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02089C80
	mov r2, #0xeb
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	cmp r0, #1
	beq _02089C80
	add r0, r2, #0
	sub r0, #0x38
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02089CBC
	ldr r0, _02089F04 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02089C80
	bl sub_0202278C
	cmp r0, #0
	beq _02089C82
_02089C80:
	b _02089F78
_02089C82:
	mov r0, #0xdd
	add r1, r6, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208AB2C
	sub r5, #0xa
	cmp r5, #1
	bhi _02089CAA
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #2
	beq _02089D8C
	mov r1, #2
	add sp, #0x40
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02089CAA:
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	beq _02089D8C
	mov r1, #1
	add sp, #0x40
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02089CBC:
	ldr r0, _02089F04 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	beq _02089CDE
	mov r0, ip
	cmp r0, #0
	ble _02089CD4
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	sub r1, r0, #1
	b _02089CD6
_02089CD4:
	mov r1, #2
_02089CD6:
	add r0, r3, #2
	strh r1, [r4, r0]
	mov r6, #1
	b _02089F2A
_02089CDE:
	mov r1, #0x80
	tst r1, r0
	beq _02089CFE
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	mov r1, #3
	bl _s32_div_f
	ldr r0, _02089F08 ; =0x00000246
	mov r6, #1
	strh r1, [r4, r0]
	b _02089F2A
_02089CFE:
	mov r1, #0x10
	tst r1, r0
	beq _02089D2C
	cmp r5, #0xa
	bne _02089D0E
	mov r0, #3
	strh r0, [r4, r3]
	b _02089D28
_02089D0E:
	cmp r5, #0xb
	bne _02089D16
	strh r6, [r4, r3]
	b _02089D28
_02089D16:
	add r0, r7, #1
	strh r0, [r4, r3]
	ldrsh r0, [r4, r3]
	mov r1, #5
	bl _s32_div_f
	mov r0, #0x91
	lsl r0, r0, #2
	strh r1, [r4, r0]
_02089D28:
	mov r6, #1
	b _02089F2A
_02089D2C:
	mov r1, #0x20
	tst r1, r0
	beq _02089D56
	cmp r5, #0xa
	bne _02089D3C
	mov r0, #3
	strh r0, [r4, r3]
	b _02089D52
_02089D3C:
	cmp r5, #0xb
	bne _02089D44
	strh r6, [r4, r3]
	b _02089D52
_02089D44:
	cmp r7, #0
	ble _02089D4E
	sub r0, r7, #1
	strh r0, [r4, r3]
	b _02089D52
_02089D4E:
	mov r0, #4
	strh r0, [r4, r3]
_02089D52:
	mov r6, #1
	b _02089F2A
_02089D56:
	ldr r1, _02089F04 ; =0x021BF67C
	ldr r7, [r1, #0x48]
	mov r1, #1
	tst r1, r7
	beq _02089E3C
	cmp r5, #0xa
	bne _02089D72
	add r0, r4, #0
	bl sub_02089FFC
	ldr r0, _02089F0C ; =0x000005E5
	bl sub_02005748
	b _02089F2A
_02089D72:
	cmp r5, #0xb
	bne _02089D84
	add r0, r4, #0
	bl sub_02089F80
	ldr r0, _02089F10 ; =0x000005E2
	bl sub_02005748
	b _02089F2A
_02089D84:
	sub r2, #0xd8
	ldr r0, [r4, r2]
	cmp r0, #0
	bne _02089D8E
_02089D8C:
	b _02089F78
_02089D8E:
	sub r3, #0x30
	ldr r0, [r4, r3]
	mov r1, #0x1c
	add r7, r0, #0
	str r0, [sp]
	mul r7, r1
	add r0, r5, #1
	str r0, [r4, r7]
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0208AAB4
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_0208AAB4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl sub_0208AB6C
	add r1, r4, r7
	ldr r0, [r4, r7]
	ldr r1, [r1, #8]
	bl sub_0208AD98
	add r1, r0, #0
	add r0, r4, r7
	ldr r0, [r0, #0xc]
	bl sub_0200D364
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_0200D364
	add r0, r4, r7
	ldr r3, [r0, #4]
	ldr r0, [sp]
	add r2, r0, #1
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r2, r1
	bne _02089E0E
	add r1, r0, #0
	mov r6, #1
	add r1, #0xdc
	str r6, [r4, r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xe0
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #3
	sub r1, #0x8c
	strh r2, [r4, r1]
	mov r1, #2
	sub r0, #0x8a
	strh r1, [r4, r0]
	b _02089F2A
_02089E0E:
	mov r1, #0x1c
	mul r1, r2
	add r1, r4, r1
	ldr r1, [r1, #4]
	cmp r3, r1
	beq _02089E28
	add r2, r0, #0
	mov r3, #1
	add r2, #0xdc
	str r3, [r4, r2]
	add r0, #0xe0
	str r1, [r4, r0]
	b _02089E34
_02089E28:
	add r1, r0, #0
	mov r3, #2
	add r1, #0xdc
	str r3, [r4, r1]
	add r0, #0xe0
	str r2, [r4, r0]
_02089E34:
	ldr r0, _02089F0C ; =0x000005E5
	bl sub_02005748
	b _02089F2A
_02089E3C:
	mov r1, #2
	add r5, r7, #0
	tst r5, r1
	beq _02089E52
	add r0, r4, #0
	bl sub_02089FFC
	ldr r0, _02089F0C ; =0x000005E5
	bl sub_02005748
	b _02089F2A
_02089E52:
	lsl r5, r1, #8
	tst r5, r0
	beq _02089EB6
	add r0, r3, #0
	sub r0, #0x30
	ldr r1, [r4, r0]
	add r0, r2, #0
	add r0, #0x44
	ldr r0, [r4, r0]
	cmp r1, r0
	bne _02089E6E
	sub r2, #0xdc
	ldr r0, [r4, r2]
	b _02089E74
_02089E6E:
	add r0, r3, #0
	sub r0, #0x30
	ldr r0, [r4, r0]
_02089E74:
	sub r0, r0, #1
	sub r3, #0x30
	str r0, [r4, r3]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	mul r1, r0
	add r2, r4, r1
	ldr r1, [r2, #8]
	cmp r1, #1
	bne _02089E9A
	mov r1, #0xeb
	mov r2, #2
	lsl r1, r1, #2
	str r2, [r4, r1]
	add r1, r1, #4
	str r0, [r4, r1]
	b _02089EAC
_02089E9A:
	mov r1, #0xeb
	lsl r1, r1, #2
	mov r3, #1
	str r3, [r4, r1]
	add r0, r1, #4
	ldr r2, [r2, #4]
	add r1, #8
	str r2, [r4, r0]
	str r3, [r4, r1]
_02089EAC:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl sub_02005748
	b _02089F2A
_02089EB6:
	add r1, #0xfe
	tst r0, r1
	beq _02089F2A
	add r1, r2, #0
	add r0, r3, #0
	sub r1, #0xdc
	sub r0, #0x30
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	sub r1, r1, #1
	cmp r0, r1
	bne _02089ED4
	add r2, #0x44
	ldr r0, [r4, r2]
	b _02089EDC
_02089ED4:
	add r0, r3, #0
	sub r0, #0x30
	ldr r0, [r4, r0]
	add r0, r0, #1
_02089EDC:
	sub r3, #0x30
	str r0, [r4, r3]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	mul r1, r0
	add r2, r4, r1
	ldr r1, [r2, #8]
	cmp r1, #1
	bne _02089F14
	mov r1, #0xeb
	mov r2, #2
	lsl r1, r1, #2
	str r2, [r4, r1]
	add r1, r1, #4
	str r0, [r4, r1]
	b _02089F22
	; .align 2, 0
_02089F00: .word 0x020F2EC8
_02089F04: .word 0x021BF67C
_02089F08: .word 0x00000246
_02089F0C: .word 0x000005E5
_02089F10: .word 0x000005E2
_02089F14:
	mov r0, #0xeb
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, [r2, #4]
	add r0, r0, #4
	str r1, [r4, r0]
_02089F22:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl sub_02005748
_02089F2A:
	cmp r6, #1
	bne _02089F78
	mov r0, #0x5e
	lsl r0, r0, #4
	bl sub_02005748
	ldr r1, _02089F7C ; =0x00000246
	mov r0, #0x14
	ldrsh r2, [r4, r1]
	sub r1, r1, #2
	ldrsh r1, [r4, r1]
	mul r0, r2
	add r2, sp, #4
	lsl r1, r1, #2
	add r0, r2, r0
	ldr r5, [r1, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208AB2C
	sub r5, #0xa
	cmp r5, #1
	bhi _02089F6A
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #2
	beq _02089F78
	mov r1, #2
	add sp, #0x40
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02089F6A:
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	beq _02089F78
	mov r1, #1
	str r1, [r4, r0]
_02089F78:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02089F7C: .word 0x00000246
	thumb_func_end sub_02089C20

	thumb_func_start sub_02089F80
sub_02089F80: ; 0x02089F80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x64
	mov r1, #0x65
	bl sub_02023790
	mov r1, #0xa1
	add r7, r0, #0
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	mov r4, #0
	add r0, #0x18
	add r1, #0x4c
	strb r4, [r6, r0]
	ldr r0, [r6, r1]
	cmp r0, #0
	ble _02089FEC
	add r5, r6, #0
_02089FA8:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _02089FC0
	mov r0, #1
	str r0, [r5, #0]
	ldr r1, [r5, #8]
	bl sub_0208AD98
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0200D364
_02089FC0:
	mov r0, #1
	str r0, [sp]
	ldr r1, [r5, #0]
	mov r2, #1
	add r0, r7, #0
	sub r1, r1, #1
	add r3, r2, #0
	bl sub_020238A0
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r7, #0
	bl sub_02023E4C
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, r0
	blt _02089FA8
_02089FEC:
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	mov r1, #3
	bl sub_02089808
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02089F80

	thumb_func_start sub_02089FFC
sub_02089FFC: ; 0x02089FFC
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x9a
	lsl r2, r2, #2
	add r5, r0, #0
	mov r1, #1
	add r3, r2, #0
	str r1, [r5, r2]
	mov r0, #0
	add r3, #0x18
	strb r0, [r5, r3]
	add r3, r2, #0
	add r3, #0x6c
	ldr r3, [r5, r3]
	cmp r3, #0
	bne _0208A044
	add r0, r2, #0
	add r0, #0x68
	ldr r0, [r5, r0]
	sub r3, r0, #1
	add r0, r2, #0
	sub r0, #0x54
	str r3, [r5, r0]
	sub r2, #0x54
	ldr r2, [r5, r2]
	mov r0, #0x1c
	mul r0, r2
	add r0, r5, r0
	mov r2, #0xeb
	ldr r3, [r0, #4]
	lsl r2, r2, #2
	str r1, [r5, r2]
	add r0, r2, #4
	str r3, [r5, r0]
	add r2, #8
	str r1, [r5, r2]
	pop {r3, r4, r5, r6, r7, pc}
_0208A044:
	sub r2, #0x54
	ldr r6, [r5, r2]
	mov r1, #0x1c
	add r4, r6, #0
	mul r4, r1
	str r0, [r5, r4]
	add r1, r5, r4
	ldr r0, [r5, r4]
	ldr r1, [r1, #8]
	bl sub_0208AD98
	add r1, r0, #0
	add r0, r5, r4
	ldr r0, [r0, #0xc]
	bl sub_0200D364
	add r0, r5, r4
	ldr r7, [r0, #4]
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	ble _0208A0B6
	sub r1, r6, #1
	mov r0, #0x1c
	add r4, r1, #0
	mul r4, r0
	add r1, r5, r4
	ldr r0, [r5, r4]
	ldr r1, [r1, #8]
	bl sub_0208AD98
	add r1, r0, #0
	add r0, r5, r4
	ldr r0, [r0, #0xc]
	bl sub_0200D364
	add r0, r5, r4
	ldr r3, [r0, #4]
	cmp r7, r3
	beq _0208A0A8
	mov r1, #0xeb
	lsl r1, r1, #2
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r3, [r5, r0]
	add r1, #8
	str r2, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0208A0A8:
	mov r0, #0xeb
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r1, r6, #1
	add r0, r0, #4
	str r1, [r5, r0]
_0208A0B6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02089FFC

	thumb_func_start sub_0208A0B8
sub_0208A0B8: ; 0x0208A0B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r0, [sp, #4]
	mov r2, #0xc1
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r1, r1, r2
	ldr r2, [sp, #4]
	mov r0, #0
_0208A0CA:
	add r0, r0, #1
	str r1, [r2, #0x10]
	add r1, r1, #4
	add r2, #0x1c
	cmp r0, #0x10
	blt _0208A0CA
	ldr r4, _0208A16C ; =0x020F2F04
	add r3, sp, #8
	mov r2, #0x30
_0208A0DC:
	ldrh r1, [r4]
	add r4, r4, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0208A0DC
	cmp r0, #0x1c
	bge _0208A14A
	add r2, sp, #8
	lsl r1, r0, #3
	add r1, r2, r1
	mov r7, #0x7f
	ldr r2, [sp, #4]
	lsl r3, r0, #2
	mvn r7, r7
	add r2, r2, r3
	ldr r4, _0208A170 ; =0x00000307
	add r3, r7, #4
_0208A100:
	mov r5, #0x7d
	mov r6, #0x79
	mvn r5, r5
	mvn r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	add r0, r0, #1
	sub r6, r5, r6
	mov r5, #0xc1
	lsl r5, r5, #2
	strb r6, [r2, r5]
	mov r5, #0x7f
	mov r6, #0x7b
	mvn r5, r5
	mvn r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	sub r6, r5, r6
	ldr r5, _0208A174 ; =0x00000306
	strb r6, [r2, r5]
	mov r5, #0x7d
	mov r6, #0x79
	mvn r5, r5
	mvn r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	add r6, r5, r6
	ldr r5, _0208A178 ; =0x00000305
	strb r6, [r2, r5]
	ldrsh r6, [r1, r7]
	ldrsh r5, [r1, r3]
	add r1, #8
	add r5, r6, r5
	strb r5, [r2, r4]
	add r2, r2, #4
	cmp r0, #0x1c
	blt _0208A100
_0208A14A:
	mov r0, #0x65
	str r0, [sp]
	mov r1, #0xc1
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r2, _0208A17C ; =sub_0208A180
	ldr r3, [sp, #4]
	mov r1, #0x1c
	bl sub_02023FCC
	mov r2, #3
	ldr r1, [sp, #4]
	lsl r2, r2, #8
	str r0, [r1, r2]
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208A16C: .word 0x020F2F04
_0208A170: .word 0x00000307
_0208A174: .word 0x00000306
_0208A178: .word 0x00000305
_0208A17C: .word sub_0208A180
	thumb_func_end sub_0208A0B8

	thumb_func_start sub_0208A180
sub_0208A180: ; 0x0208A180
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0xb
	lsl r2, r2, #6
	add r5, r0, #0
	ldr r0, [r4, r2]
	cmp r0, #1
	bne _0208A1B4
	add r0, r2, #0
	add r0, #0xb4
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _0208A1A0
	mov r0, #1
	add r2, #0xb4
	str r0, [r4, r2]
_0208A1A0:
	cmp r1, #0
	beq _0208A1A6
	b _0208A31A
_0208A1A6:
	cmp r5, #0x10
	bhs _0208A1E6
	mov r1, #0x3f
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	cmp r5, r0
	bhs _0208A1B6
_0208A1B4:
	b _0208A31A
_0208A1B6:
	mov r0, #0x1c
	mul r0, r5
	add r3, r4, r0
	ldr r0, [r3, #8]
	cmp r0, #1
	bne _0208A1D0
	add r0, r1, #0
	mov r2, #2
	sub r0, #0x44
	str r2, [r4, r0]
	sub r1, #0x40
	str r5, [r4, r1]
	b _0208A1DE
_0208A1D0:
	add r0, r1, #0
	mov r2, #1
	sub r0, #0x44
	str r2, [r4, r0]
	ldr r0, [r3, #4]
	sub r1, #0x40
	str r0, [r4, r1]
_0208A1DE:
	ldr r0, _0208A31C ; =0x000005E5
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_0208A1E6:
	cmp r5, #0x1a
	bne _0208A200
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r1, #2
	add r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, _0208A31C ; =0x000005E5
	bl sub_02005748
	b _0208A23E
_0208A200:
	cmp r5, #0x1b
	bne _0208A21A
	mov r0, #0x91
	mov r1, #3
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r1, #2
	add r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, _0208A320 ; =0x000005E2
	bl sub_02005748
	b _0208A23E
_0208A21A:
	add r0, r5, #0
	sub r0, #0x10
	mov r1, #5
	bl _u32_div_f
	mov r0, #0x91
	lsl r0, r0, #2
	strh r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x10
	mov r1, #5
	bl _u32_div_f
	ldr r1, _0208A324 ; =0x00000246
	strh r0, [r4, r1]
	ldr r0, _0208A31C ; =0x000005E5
	bl sub_02005748
_0208A23E:
	cmp r5, #0x10
	blo _0208A308
	cmp r5, #0x19
	bhi _0208A308
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0208A31A
	sub r0, #0xc0
	ldr r7, [r4, r0]
	mov r0, #0x1c
	add r6, r7, #0
	mul r6, r0
	add r0, r5, #0
	sub r0, #0xf
	str r0, [r4, r6]
	add r1, r4, r6
	ldr r0, [r4, r6]
	ldr r1, [r1, #8]
	bl sub_0208AD98
	add r1, r0, #0
	add r0, r4, r6
	ldr r0, [r0, #0xc]
	bl sub_0200D364
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0208AAB4
	sub r5, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208AB2C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl sub_0208AAB4
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_0208AAB4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl sub_0208AB6C
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_0200D364
	add r0, r4, r6
	ldr r2, [r0, #4]
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	add r1, r7, #1
	cmp r1, r3
	bne _0208A2D8
	add r1, r0, #0
	mov r2, #1
	add r1, #0xdc
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xe0
	str r2, [r4, r1]
	add r0, #0xe4
	str r2, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0208A2D8:
	mov r3, #0x1c
	mul r3, r1
	add r3, r4, r3
	ldr r3, [r3, #4]
	cmp r2, r3
	beq _0208A2FA
	add r1, r0, #0
	mov r2, #1
	add r1, #0xdc
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xe0
	str r3, [r4, r1]
	mov r1, #0
	add r0, #0xe4
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0208A2FA:
	add r2, r0, #0
	mov r3, #2
	add r2, #0xdc
	str r3, [r4, r2]
	add r0, #0xe0
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0208A308:
	cmp r5, #0x1a
	bne _0208A314
	add r0, r4, #0
	bl sub_02089FFC
	pop {r3, r4, r5, r6, r7, pc}
_0208A314:
	add r0, r4, #0
	bl sub_02089F80
_0208A31A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208A31C: .word 0x000005E5
_0208A320: .word 0x000005E2
_0208A324: .word 0x00000246
	thumb_func_end sub_0208A180

	thumb_func_start sub_0208A328
sub_0208A328: ; 0x0208A328
	push {r4, lr}
	mov r1, #0xeb
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #2
	bgt _0208A346
	cmp r2, #0
	blt _0208A380
	beq _0208A380
	cmp r2, #1
	beq _0208A34A
	cmp r2, #2
	beq _0208A372
	pop {r4, pc}
_0208A346:
	cmp r2, #0xff
	pop {r4, pc}
_0208A34A:
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02089604
	add r0, r4, #0
	bl sub_0208ADA4
	add r0, r4, #0
	mov r1, #1
	bl sub_0208ADE4
	add r0, r4, #0
	mov r1, #2
	bl sub_02089808
	mov r0, #0xeb
	mov r1, #0xff
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_0208A372:
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0208AAE4
	add r0, r4, #0
	bl sub_0208A384
_0208A380:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208A328

	thumb_func_start sub_0208A384
sub_0208A384: ; 0x0208A384
	mov r2, #0xeb
	lsl r2, r2, #2
	mov r3, #0
	str r3, [r0, r2]
	add r1, r2, #4
	str r3, [r0, r1]
	add r2, #8
	str r3, [r0, r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208A384

	thumb_func_start sub_0208A398
sub_0208A398: ; 0x0208A398
	push {r3, r4}
	mov r2, #0x2d
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	mov r3, #0
	cmp r4, #0
	ble _0208A3BA
_0208A3A6:
	ldr r2, [r0, #4]
	cmp r1, r2
	bne _0208A3B2
	add r0, r3, #0
	pop {r3, r4}
	bx lr
_0208A3B2:
	add r3, r3, #1
	add r0, #0x1c
	cmp r3, r4
	blt _0208A3A6
_0208A3BA:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0208A398

	thumb_func_start sub_0208A3C0
sub_0208A3C0: ; 0x0208A3C0
	push {r3, r4, r5, r6}
	mov r2, #0x2d
	lsl r2, r2, #4
	ldr r6, [r0, r2]
	mov r5, #0
	add r4, r5, #0
	cmp r6, #0
	ble _0208A3EE
	mov r2, #1
_0208A3D2:
	ldr r3, [r0, #4]
	cmp r1, r3
	bne _0208A3DC
	add r5, r2, #0
	b _0208A3E6
_0208A3DC:
	cmp r5, #1
	bne _0208A3E6
	sub r0, r4, #1
	pop {r3, r4, r5, r6}
	bx lr
_0208A3E6:
	add r4, r4, #1
	add r0, #0x1c
	cmp r4, r6
	blt _0208A3D2
_0208A3EE:
	sub r0, r6, #1
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0208A3C0

	.rodata


	.global Unk_020F2EB8
Unk_020F2EB8: ; 0x020F2EB8
	.incbin "incbin/arm9_rodata.bin", 0xE278, 0xE288 - 0xE278

	.global Unk_020F2EC8
Unk_020F2EC8: ; 0x020F2EC8
	.incbin "incbin/arm9_rodata.bin", 0xE288, 0xE2C4 - 0xE288

	.global Unk_020F2F04
Unk_020F2F04: ; 0x020F2F04
	.incbin "incbin/arm9_rodata.bin", 0xE2C4, 0x60



	.data


	.global Unk_02100CB8
Unk_02100CB8: ; 0x02100CB8
	.incbin "incbin/arm9_data.bin", 0x1FD8, 0x1FF4 - 0x1FD8

	.global Unk_02100CD4
Unk_02100CD4: ; 0x02100CD4
	.incbin "incbin/arm9_data.bin", 0x1FF4, 0x1C

