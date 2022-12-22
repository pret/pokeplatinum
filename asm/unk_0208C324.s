	.include "macros/function.inc"
	.include "include/unk_0208C324.inc"

	

	.text


	thumb_func_start sub_0208C324
sub_0208C324: ; 0x0208C324
	push {r3, lr}
	bl sub_020507E4
	bl sub_0206ADCC
	pop {r3, pc}
	thumb_func_end sub_0208C324

	thumb_func_start sub_0208C330
sub_0208C330: ; 0x0208C330
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _0208C474 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _0208C478 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0208C47C ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1, #0]
	ldr r3, [r0, #0]
	add r1, #0x50
	and r2, r3
	str r2, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r2, #1
	mov r0, #3
	mov r1, #0x13
	lsl r2, r2, #0x12
	bl sub_02017FC8
	mov r0, #0x27
	mov r1, #0x13
	bl sub_02006C24
	add r6, r0, #0
	ldr r1, _0208C480 ; =0x000006B4
	add r0, r5, #0
	mov r2, #0x13
	bl sub_0200681C
	ldr r2, _0208C480 ; =0x000006B4
	mov r1, #0
	add r4, r0, #0
	bl memset
	add r0, r5, #0
	bl sub_02006840
	mov r1, #0x93
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x13
	bl sub_02018340
	mov r1, #1
	str r0, [r4, #0]
	mov r0, #0x13
	add r2, r1, #0
	bl sub_02015F84
	mov r1, #0xb9
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x93
	mov r1, #0x13
	bl sub_02006C24
	mov r1, #0x6a
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x13
	bl sub_02002BEC
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r4, #0
	bl sub_0208D748
	bl sub_0208C638
	ldr r0, [r4, #0]
	bl sub_0208C658
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0208C7AC
	bl sub_0208C86C
	add r0, r4, #0
	bl sub_020916B4
	add r0, r4, #0
	bl sub_0208C884
	add r0, r4, #0
	bl sub_0208D1A4
	add r0, r4, #0
	bl sub_0208EA44
	add r0, r4, #0
	bl sub_0208EB64
	add r0, r4, #0
	bl sub_02091F8C
	add r0, r4, #0
	bl sub_0208EE3C
	add r0, r4, #0
	bl sub_0208EE9C
	add r0, r4, #0
	bl sub_0208FCF8
	add r0, r4, #0
	bl sub_0208D678
	add r0, r4, #0
	bl sub_020920C0
	add r0, r4, #0
	bl sub_020917E0
	ldr r0, _0208C484 ; =sub_0208C604
	add r1, r4, #0
	bl sub_02017798
	bl sub_0201FFD0
	mov r1, #0
	mov r0, #0x3d
	add r2, r1, #0
	bl sub_02004550
	bl sub_020397E4
	add r0, r6, #0
	bl sub_02006CA8
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0208C474: .word 0xFFFFE0FF
_0208C478: .word 0x04001000
_0208C47C: .word 0xFFFF1FFF
_0208C480: .word 0x000006B4
_0208C484: .word sub_0208C604
	thumb_func_end sub_0208C330

	thumb_func_start sub_0208C488
sub_0208C488: ; 0x0208C488
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0x13
	bhi _0208C576
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0208C4A4: ; jump table
	.short _0208C4CC - _0208C4A4 - 2 ; case 0
	.short _0208C4DA - _0208C4A4 - 2 ; case 1
	.short _0208C4E2 - _0208C4A4 - 2 ; case 2
	.short _0208C4EA - _0208C4A4 - 2 ; case 3
	.short _0208C4F2 - _0208C4A4 - 2 ; case 4
	.short _0208C4FA - _0208C4A4 - 2 ; case 5
	.short _0208C502 - _0208C4A4 - 2 ; case 6
	.short _0208C50A - _0208C4A4 - 2 ; case 7
	.short _0208C512 - _0208C4A4 - 2 ; case 8
	.short _0208C51A - _0208C4A4 - 2 ; case 9
	.short _0208C522 - _0208C4A4 - 2 ; case 10
	.short _0208C52A - _0208C4A4 - 2 ; case 11
	.short _0208C532 - _0208C4A4 - 2 ; case 12
	.short _0208C53A - _0208C4A4 - 2 ; case 13
	.short _0208C542 - _0208C4A4 - 2 ; case 14
	.short _0208C54A - _0208C4A4 - 2 ; case 15
	.short _0208C552 - _0208C4A4 - 2 ; case 16
	.short _0208C55A - _0208C4A4 - 2 ; case 17
	.short _0208C562 - _0208C4A4 - 2 ; case 18
	.short _0208C56A - _0208C4A4 - 2 ; case 19
_0208C4CC:
	mov r0, #0
	mov r1, #0x13
	bl sub_0208C120
	mov r0, #1
	str r0, [r4, #0]
	b _0208C576
_0208C4DA:
	bl sub_0208C9C8
	str r0, [r4, #0]
	b _0208C576
_0208C4E2:
	bl sub_0208CA00
	str r0, [r4, #0]
	b _0208C576
_0208C4EA:
	bl sub_0208CB38
	str r0, [r4, #0]
	b _0208C576
_0208C4F2:
	bl sub_0208CB4C
	str r0, [r4, #0]
	b _0208C576
_0208C4FA:
	bl sub_0208CB60
	str r0, [r4, #0]
	b _0208C576
_0208C502:
	bl sub_0208CB74
	str r0, [r4, #0]
	b _0208C576
_0208C50A:
	bl sub_0208CB88
	str r0, [r4, #0]
	b _0208C576
_0208C512:
	bl sub_0208CC6C
	str r0, [r4, #0]
	b _0208C576
_0208C51A:
	bl sub_0208CD44
	str r0, [r4, #0]
	b _0208C576
_0208C522:
	bl sub_0208CE54
	str r0, [r4, #0]
	b _0208C576
_0208C52A:
	bl sub_0208CE70
	str r0, [r4, #0]
	b _0208C576
_0208C532:
	bl sub_0208CE84
	str r0, [r4, #0]
	b _0208C576
_0208C53A:
	bl sub_0208CE98
	str r0, [r4, #0]
	b _0208C576
_0208C542:
	bl sub_0208CF0C
	str r0, [r4, #0]
	b _0208C576
_0208C54A:
	bl sub_0208CF78
	str r0, [r4, #0]
	b _0208C576
_0208C552:
	bl sub_0208D114
	str r0, [r4, #0]
	b _0208C576
_0208C55A:
	bl sub_0208D164
	str r0, [r4, #0]
	b _0208C576
_0208C562:
	bl sub_0208D17C
	str r0, [r4, #0]
	b _0208C576
_0208C56A:
	bl sub_0208D18C
	cmp r0, #1
	bne _0208C576
	mov r0, #1
	pop {r3, r4, r5, pc}
_0208C576:
	add r0, r5, #0
	bl sub_0208EB14
	add r0, r5, #0
	bl sub_0208F3B0
	add r0, r5, #0
	bl sub_0208FB30
	ldr r0, _0208C59C ; =0x00000418
	ldr r0, [r5, r0]
	bl sub_0200C7EC
	add r0, r5, #0
	bl sub_02091750
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0208C59C: .word 0x00000418
	thumb_func_end sub_0208C488

	thumb_func_start sub_0208C5A0
sub_0208C5A0: ; 0x0208C5A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	bl sub_020917B0
	add r0, r4, #0
	bl sub_0208EAF4
	add r0, r4, #0
	bl sub_0208FE88
	ldr r0, [r4, #0]
	bl sub_0208C76C
	bl sub_0201E530
	bl sub_0201DC3C
	add r0, r4, #0
	bl sub_0208C950
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02006CA8
	mov r0, #0
	bl sub_02002C28
	ldr r0, _0208C600 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x13
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0208C600: .word 0x04000050
	thumb_func_end sub_0208C5A0

	thumb_func_start sub_0208C604
sub_0208C604: ; 0x0208C604
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0201C2B8
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02008A94
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r3, _0208C630 ; =0x027E0000
	ldr r1, _0208C634 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0208C630: .word 0x027E0000
_0208C634: .word 0x00003FF8
	thumb_func_end sub_0208C604

	thumb_func_start sub_0208C638
sub_0208C638: ; 0x0208C638
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0208C654 ; =0x020F40E4
	add r3, sp, #0
	mov r2, #5
_0208C642:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0208C642
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0208C654: .word 0x020F40E4
	thumb_func_end sub_0208C638

	thumb_func_start sub_0208C658
sub_0208C658: ; 0x0208C658
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0208C754 ; =0x020F4048
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0208C758 ; =0x020F4074
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _0208C75C ; =0x020F4090
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0x88
	bl sub_0201C63C
	ldr r5, _0208C760 ; =0x020F40AC
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _0208C764 ; =0x020F40C8
	add r3, sp, #0x1c
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
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _0208C768 ; =0x020F4058
	add r3, sp, #0
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
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x13
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x13
	bl sub_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_0208C754: .word 0x020F4048
_0208C758: .word 0x020F4074
_0208C75C: .word 0x020F4090
_0208C760: .word 0x020F40AC
_0208C764: .word 0x020F40C8
_0208C768: .word 0x020F4058
	thumb_func_end sub_0208C658

	thumb_func_start sub_0208C76C
sub_0208C76C: ; 0x0208C76C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201FF00
	bl sub_0201FF68
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	mov r0, #0x13
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208C76C

	thumb_func_start sub_0208C7AC
sub_0208C7AC: ; 0x0208C7AC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r5, r0, #0
	str r1, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	mov r1, #3
	ldr r2, [r5, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0200710C
	mov r2, #0
	str r2, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0xb
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #2
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x10
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0xf
	mov r3, #5
	bl sub_0200710C
	mov r3, #0
	str r3, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #4
	bl sub_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0208C7AC

	thumb_func_start sub_0208C86C
sub_0208C86C: ; 0x0208C86C
	push {r3, lr}
	mov r0, #8
	str r0, [sp]
	ldr r0, _0208C880 ; =0x04000050
	mov r1, #1
	mov r2, #0x1e
	mov r3, #0x17
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	; .align 2, 0
_0208C880: .word 0x04000050
	thumb_func_end sub_0208C86C

	thumb_func_start sub_0208C884
sub_0208C884: ; 0x0208C884
	push {r4, lr}
	ldr r2, _0208C92C ; =0x000001C7
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x13
	bl sub_0200B144
	ldr r1, _0208C930 ; =0x00000688
	ldr r2, _0208C934 ; =0x00000217
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x13
	bl sub_0200B144
	ldr r1, _0208C938 ; =0x0000068C
	mov r2, #0
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #2
	mov r3, #0x13
	bl sub_0200C440
	ldr r1, _0208C93C ; =0x00000684
	str r0, [r4, r1]
	mov r0, #0x13
	bl sub_0200B358
	mov r1, #0x69
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0xc
	mov r1, #0x13
	bl sub_02023790
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0xc
	mov r1, #0x13
	bl sub_02023790
	mov r1, #0x95
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #8
	mov r1, #0x13
	bl sub_02023790
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x80
	mov r1, #0x13
	bl sub_02023790
	ldr r1, _0208C940 ; =0x00000694
	ldr r2, _0208C944 ; =0x00000287
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x13
	bl sub_0200B144
	ldr r1, _0208C948 ; =0x0000069C
	str r0, [r4, r1]
	mov r0, #8
	mov r1, #0x13
	bl sub_02023790
	ldr r2, _0208C94C ; =0x00000698
	str r0, [r4, r2]
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0208C928
	ldr r0, [r4, r2]
	bl sub_02023D28
_0208C928:
	pop {r4, pc}
	nop
_0208C92C: .word 0x000001C7
_0208C930: .word 0x00000688
_0208C934: .word 0x00000217
_0208C938: .word 0x0000068C
_0208C93C: .word 0x00000684
_0208C940: .word 0x00000694
_0208C944: .word 0x00000287
_0208C948: .word 0x0000069C
_0208C94C: .word 0x00000698
	thumb_func_end sub_0208C884

	thumb_func_start sub_0208C950
sub_0208C950: ; 0x0208C950
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208C9B0 ; =0x0000069C
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0208C9B4 ; =0x0000068C
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0208C9B8 ; =0x00000688
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0208C9BC ; =0x00000684
	ldr r0, [r4, r0]
	bl sub_0200C560
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0208C9C0 ; =0x00000694
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0208C9C4 ; =0x00000698
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	nop
_0208C9B0: .word 0x0000069C
_0208C9B4: .word 0x0000068C
_0208C9B8: .word 0x00000688
_0208C9BC: .word 0x00000684
_0208C9C0: .word 0x00000694
_0208C9C4: .word 0x00000698
	thumb_func_end sub_0208C950

	thumb_func_start sub_0208C9C8
sub_0208C9C8: ; 0x0208C9C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #1
	bne _0208C9FC
	add r0, r4, #0
	bl sub_02092028
	add r0, r4, #0
	bl sub_0208D618
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _0208C9F0
	mov r0, #9
	pop {r4, pc}
_0208C9F0:
	cmp r0, #4
	bne _0208C9F8
	mov r0, #0xf
	pop {r4, pc}
_0208C9F8:
	mov r0, #2
	pop {r4, pc}
_0208C9FC:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0208C9C8

	thumb_func_start sub_0208CA00
sub_0208CA00: ; 0x0208CA00
	push {r4, r5, r6, lr}
	ldr r3, _0208CB28 ; =0x000006A7
	add r4, r0, #0
	ldrb r1, [r4, r3]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _0208CA1E
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	strb r1, [r0, #0x17]
	mov r0, #0x12
	pop {r4, r5, r6, pc}
_0208CA1E:
	ldr r2, _0208CB2C ; =0x021BF67C
	mov r1, #0x20
	ldr r5, [r2, #0x4c]
	add r6, r5, #0
	tst r6, r1
	beq _0208CA34
	sub r1, #0x21
	bl sub_0208D898
	mov r0, #2
	pop {r4, r5, r6, pc}
_0208CA34:
	mov r1, #0x10
	tst r1, r5
	beq _0208CA44
	mov r1, #1
	bl sub_0208D898
	mov r0, #2
	pop {r4, r5, r6, pc}
_0208CA44:
	mov r1, #0x40
	add r6, r5, #0
	tst r6, r1
	beq _0208CA56
	sub r1, #0x41
	bl sub_0208DB10
	mov r0, #2
	pop {r4, r5, r6, pc}
_0208CA56:
	mov r1, #0x80
	tst r1, r5
	beq _0208CA66
	mov r1, #1
	bl sub_0208DB10
	mov r0, #2
	pop {r4, r5, r6, pc}
_0208CA66:
	ldr r1, [r2, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0208CA84
	sub r3, #0xca
	add r0, r3, #0
	bl sub_02005748
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	strb r1, [r0, #0x17]
	mov r0, #0x12
	pop {r4, r5, r6, pc}
_0208CA84:
	mov r0, #1
	tst r0, r1
	beq _0208CB10
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	bne _0208CAAE
	sub r0, r3, #3
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bne _0208CAAE
	sub r3, #0xca
	add r0, r3, #0
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208E958
	pop {r4, r5, r6, pc}
_0208CAAE:
	ldr r0, _0208CB30 ; =0x000006A4
	ldrsb r1, [r4, r0]
	cmp r1, #3
	bne _0208CAC6
	sub r0, #8
	bl sub_02005748
	ldr r0, _0208CB34 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #3
	pop {r4, r5, r6, pc}
_0208CAC6:
	cmp r1, #5
	bne _0208CADA
	sub r0, #8
	bl sub_02005748
	ldr r0, _0208CB34 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #5
	pop {r4, r5, r6, pc}
_0208CADA:
	cmp r1, #6
	bne _0208CAF8
	add r1, r0, #0
	add r1, #0xd
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0208CB10
	sub r0, #0xc7
	bl sub_02005748
	ldr r0, _0208CB34 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_0208CAF8:
	cmp r1, #7
	bne _0208CB10
	sub r0, #0xc7
	bl sub_02005748
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	strb r1, [r0, #0x17]
	mov r0, #0x12
	pop {r4, r5, r6, pc}
_0208CB10:
	add r0, r4, #0
	bl sub_0208D920
	cmp r0, #1
	bne _0208CB24
	ldr r0, _0208CB34 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	mov r0, #0xe
	pop {r4, r5, r6, pc}
_0208CB24:
	mov r0, #2
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208CB28: .word 0x000006A7
_0208CB2C: .word 0x021BF67C
_0208CB30: .word 0x000006A4
_0208CB34: .word 0x000006A6
	thumb_func_end sub_0208CA00

	thumb_func_start sub_0208CB38
sub_0208CB38: ; 0x0208CB38
	push {r3, lr}
	bl sub_0208DD8C
	cmp r0, #1
	bne _0208CB46
	mov r0, #7
	pop {r3, pc}
_0208CB46:
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CB38

	thumb_func_start sub_0208CB4C
sub_0208CB4C: ; 0x0208CB4C
	push {r3, lr}
	bl sub_0208DEA4
	cmp r0, #1
	bne _0208CB5A
	mov r0, #2
	pop {r3, pc}
_0208CB5A:
	mov r0, #4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CB4C

	thumb_func_start sub_0208CB60
sub_0208CB60: ; 0x0208CB60
	push {r3, lr}
	bl sub_0208E208
	cmp r0, #1
	bne _0208CB6E
	mov r0, #7
	pop {r3, pc}
_0208CB6E:
	mov r0, #5
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CB60

	thumb_func_start sub_0208CB74
sub_0208CB74: ; 0x0208CB74
	push {r3, lr}
	bl sub_0208E308
	cmp r0, #1
	bne _0208CB82
	mov r0, #2
	pop {r3, pc}
_0208CB82:
	mov r0, #6
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CB74

	thumb_func_start sub_0208CB88
sub_0208CB88: ; 0x0208CB88
	push {r4, lr}
	ldr r1, _0208CC58 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #0x40
	add r3, r2, #0
	tst r3, r1
	beq _0208CBB2
	sub r1, #0x41
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CBAE
	ldr r0, _0208CC5C ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CBAE:
	mov r0, #7
	pop {r4, pc}
_0208CBB2:
	mov r1, #0x80
	tst r1, r2
	beq _0208CBD2
	mov r1, #1
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CBCE
	ldr r0, _0208CC5C ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CBCE:
	mov r0, #7
	pop {r4, pc}
_0208CBD2:
	mov r0, #1
	tst r0, r2
	beq _0208CC32
	ldr r0, _0208CC60 ; =0x000006A5
	ldrb r1, [r4, r0]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #4
	bne _0208CC00
	sub r0, #9
	bl sub_02005748
	ldr r0, _0208CC64 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208CBFC
	mov r0, #4
	pop {r4, pc}
_0208CBFC:
	mov r0, #6
	pop {r4, pc}
_0208CC00:
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r1, [r1, #0x12]
	cmp r1, #1
	beq _0208CC32
	sub r0, #0xc8
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208F310
	ldr r2, _0208CC60 ; =0x000006A5
	mov r1, #0xf0
	ldrb r3, [r4, r2]
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x1c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4, r2]
	mov r0, #8
	pop {r4, pc}
_0208CC32:
	mov r0, #2
	tst r0, r2
	beq _0208CC54
	ldr r0, _0208CC68 ; =0x0000069C
	bl sub_02005748
	ldr r0, _0208CC64 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208CC50
	mov r0, #4
	pop {r4, pc}
_0208CC50:
	mov r0, #6
	pop {r4, pc}
_0208CC54:
	mov r0, #7
	pop {r4, pc}
	; .align 2, 0
_0208CC58: .word 0x021BF67C
_0208CC5C: .word 0x000005DC
_0208CC60: .word 0x000006A5
_0208CC64: .word 0x000006A6
_0208CC68: .word 0x0000069C
	thumb_func_end sub_0208CB88

	thumb_func_start sub_0208CC6C
sub_0208CC6C: ; 0x0208CC6C
	push {r4, lr}
	ldr r1, _0208CD30 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #0x40
	add r3, r2, #0
	tst r3, r1
	beq _0208CC96
	sub r1, #0x41
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CC92
	ldr r0, _0208CD34 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CC92:
	mov r0, #8
	pop {r4, pc}
_0208CC96:
	mov r1, #0x80
	tst r1, r2
	beq _0208CCB6
	mov r1, #1
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CCB2
	ldr r0, _0208CD34 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CCB2:
	mov r0, #8
	pop {r4, pc}
_0208CCB6:
	mov r0, #1
	tst r0, r2
	beq _0208CD10
	ldr r0, _0208CD38 ; =0x00000444
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208CD3C ; =0x000006A5
	ldrb r1, [r4, r0]
	lsl r2, r1, #0x1c
	lsr r2, r2, #0x1c
	cmp r2, #4
	beq _0208CD06
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r2, r1
	beq _0208CD06
	sub r0, #0xc8
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208E0DC
	ldr r1, _0208CD3C ; =0x000006A5
	add r0, r4, #0
	ldrb r2, [r4, r1]
	lsl r1, r2, #0x1c
	lsl r2, r2, #0x18
	lsr r1, r1, #0x1c
	lsr r2, r2, #0x1c
	bl sub_0208F22C
	add r0, r4, #0
	bl sub_02091474
	add r0, r4, #0
	bl sub_0208DFF4
	b _0208CD0C
_0208CD06:
	ldr r0, _0208CD40 ; =0x000005DD
	bl sub_02005748
_0208CD0C:
	mov r0, #7
	pop {r4, pc}
_0208CD10:
	mov r0, #2
	tst r0, r2
	beq _0208CD2A
	ldr r0, _0208CD40 ; =0x000005DD
	bl sub_02005748
	ldr r0, _0208CD38 ; =0x00000444
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r0, #7
	pop {r4, pc}
_0208CD2A:
	mov r0, #8
	pop {r4, pc}
	nop
_0208CD30: .word 0x021BF67C
_0208CD34: .word 0x000005DC
_0208CD38: .word 0x00000444
_0208CD3C: .word 0x000006A5
_0208CD40: .word 0x000005DD
	thumb_func_end sub_0208CC6C

	thumb_func_start sub_0208CD44
sub_0208CD44: ; 0x0208CD44
	push {r4, lr}
	ldr r1, _0208CE40 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _0208CD5E
	sub r1, #0x21
	bl sub_0208D898
	mov r0, #9
	pop {r4, pc}
_0208CD5E:
	mov r1, #0x10
	tst r1, r2
	beq _0208CD6E
	mov r1, #1
	bl sub_0208D898
	mov r0, #9
	pop {r4, pc}
_0208CD6E:
	mov r1, #0x40
	add r3, r2, #0
	tst r3, r1
	beq _0208CD90
	sub r1, #0x41
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CD8C
	ldr r0, _0208CE44 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CD8C:
	mov r0, #9
	pop {r4, pc}
_0208CD90:
	mov r1, #0x80
	tst r1, r2
	beq _0208CDB0
	mov r1, #1
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CDAC
	ldr r0, _0208CE44 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CDAC:
	mov r0, #9
	pop {r4, pc}
_0208CDB0:
	mov r0, #1
	tst r0, r2
	beq _0208CE1A
	ldr r0, _0208CE48 ; =0x000005DD
	bl sub_02005748
	ldr r0, _0208CE4C ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #4
	beq _0208CE00
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xa1
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	bl sub_0207D28C
	cmp r0, #1
	bne _0208CE00
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0208CE00
	ldr r0, _0208CE50 ; =0x00000464
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	add r0, r4, #0
	bl sub_0208E46C
	add r0, r4, #0
	bl sub_020914F8
	mov r0, #0xa
	pop {r4, pc}
_0208CE00:
	ldr r0, _0208CE4C ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1c
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	strb r2, [r1, #0x16]
	ldr r0, [r4, r0]
	mov r1, #0
	strb r1, [r0, #0x17]
	mov r0, #0x12
	pop {r4, pc}
_0208CE1A:
	mov r0, #2
	tst r0, r2
	beq _0208CE3A
	ldr r0, _0208CE48 ; =0x000005DD
	bl sub_02005748
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #4
	strb r2, [r1, #0x16]
	ldr r0, [r4, r0]
	mov r1, #1
	strb r1, [r0, #0x17]
	mov r0, #0x12
	pop {r4, pc}
_0208CE3A:
	mov r0, #9
	pop {r4, pc}
	nop
_0208CE40: .word 0x021BF67C
_0208CE44: .word 0x000005DC
_0208CE48: .word 0x000005DD
_0208CE4C: .word 0x000006A5
_0208CE50: .word 0x00000464
	thumb_func_end sub_0208CD44

	thumb_func_start sub_0208CE54
sub_0208CE54: ; 0x0208CE54
	push {r3, lr}
	ldr r1, _0208CE6C ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _0208CE68
	bl sub_0208DFF4
	mov r0, #9
	pop {r3, pc}
_0208CE68:
	mov r0, #0xa
	pop {r3, pc}
	; .align 2, 0
_0208CE6C: .word 0x021BF67C
	thumb_func_end sub_0208CE54

	thumb_func_start sub_0208CE70
sub_0208CE70: ; 0x0208CE70
	push {r3, lr}
	bl sub_0208E57C
	cmp r0, #1
	bne _0208CE7E
	mov r0, #0xd
	pop {r3, pc}
_0208CE7E:
	mov r0, #0xb
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CE70

	thumb_func_start sub_0208CE84
sub_0208CE84: ; 0x0208CE84
	push {r3, lr}
	bl sub_0208E6A8
	cmp r0, #1
	bne _0208CE92
	mov r0, #2
	pop {r3, pc}
_0208CE92:
	mov r0, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CE84

	thumb_func_start sub_0208CE98
sub_0208CE98: ; 0x0208CE98
	push {r3, r4, r5, lr}
	ldr r3, _0208CF00 ; =0x021BF67C
	mov r1, #0x20
	ldr r2, [r3, #0x4c]
	add r4, r0, #0
	add r5, r2, #0
	tst r5, r1
	beq _0208CEB2
	sub r1, #0x21
	bl sub_0208E794
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_0208CEB2:
	mov r1, #0x10
	tst r1, r2
	beq _0208CEC2
	mov r1, #1
	bl sub_0208E794
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_0208CEC2:
	mov r1, #0x40
	add r5, r2, #0
	tst r5, r1
	beq _0208CED4
	sub r1, #0x44
	bl sub_0208E794
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_0208CED4:
	mov r1, #0x80
	tst r1, r2
	beq _0208CEE4
	mov r1, #4
	bl sub_0208E794
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_0208CEE4:
	ldr r1, [r3, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0208CEFC
	ldr r0, _0208CF04 ; =0x000005DD
	bl sub_02005748
	ldr r0, _0208CF08 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_0208CEFC:
	mov r0, #0xd
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208CF00: .word 0x021BF67C
_0208CF04: .word 0x000005DD
_0208CF08: .word 0x000006A6
	thumb_func_end sub_0208CE98

	thumb_func_start sub_0208CF0C
sub_0208CF0C: ; 0x0208CF0C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0209228C
	cmp r0, #1
	bne _0208CF1E
	ldr r0, _0208CF6C ; =0x000006A6
	ldrb r0, [r4, r0]
	pop {r4, pc}
_0208CF1E:
	ldr r1, _0208CF70 ; =0x000006AD
	ldrb r0, [r4, r1]
	cmp r0, #1
	bne _0208CF68
	add r1, r1, #1
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl sub_020923A4
	add r1, r0, #0
	cmp r1, #7
	bne _0208CF44
	ldr r2, _0208CF74 ; =0x000006A7
	mov r0, #0xf0
	ldrb r3, [r4, r2]
	bic r3, r0
	mov r0, #0x10
	orr r0, r3
	strb r0, [r4, r2]
_0208CF44:
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0208CF62
	cmp r1, #1
	beq _0208CF5A
	cmp r1, #7
	bne _0208CF68
_0208CF5A:
	add r0, r4, #0
	bl sub_0208D7EC
	b _0208CF68
_0208CF62:
	add r0, r4, #0
	bl sub_0208D7EC
_0208CF68:
	mov r0, #0xe
	pop {r4, pc}
	; .align 2, 0
_0208CF6C: .word 0x000006A6
_0208CF70: .word 0x000006AD
_0208CF74: .word 0x000006A7
	thumb_func_end sub_0208CF0C

	thumb_func_start sub_0208CF78
sub_0208CF78: ; 0x0208CF78
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _0208D0F4 ; =0x021BF67C
	add r5, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	bne _0208CF8A
	b _0208D0EE
_0208CF8A:
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r1, [r1, #0x11]
	cmp r1, #2
	bne _0208CFAE
	bl sub_0208DD48
	add r6, r0, #0
	mov r0, #0x13
	bl sub_02073C74
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020774C8
	b _0208CFB4
_0208CFAE:
	bl sub_0208DD48
	add r4, r0, #0
_0208CFB4:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	ldr r0, [r0, #0x24]
	bl sub_02098EF8
	ldr r0, _0208D0F8 ; =0x000006A6
	mov r2, #0
	strb r2, [r5, r0]
	ldr r0, _0208D0FC ; =0x00000295
	mov r1, #0x13
	ldrb r6, [r5, r0]
	add r0, r4, #0
	bl sub_02074470
	ldr r1, _0208D0FC ; =0x00000295
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r6, r0
	beq _0208CFE8
	ldr r1, _0208D0F8 ; =0x000006A6
	mov r0, #1
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_0208CFE8:
	ldr r0, _0208D100 ; =0x00000296
	mov r1, #0x14
	ldrb r6, [r5, r0]
	add r0, r4, #0
	mov r2, #0
	bl sub_02074470
	ldr r1, _0208D100 ; =0x00000296
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r6, r0
	beq _0208D00A
	ldr r1, _0208D0F8 ; =0x000006A6
	mov r0, #2
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_0208D00A:
	ldr r0, _0208D104 ; =0x00000297
	mov r1, #0x15
	ldrb r6, [r5, r0]
	add r0, r4, #0
	mov r2, #0
	bl sub_02074470
	ldr r1, _0208D104 ; =0x00000297
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r6, r0
	beq _0208D02C
	ldr r1, _0208D0F8 ; =0x000006A6
	mov r0, #4
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_0208D02C:
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r6, [r5, r0]
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	mov r1, #0xa6
	lsl r1, r1, #2
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r6, r0
	beq _0208D052
	ldr r1, _0208D0F8 ; =0x000006A6
	mov r0, #8
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_0208D052:
	ldr r0, _0208D108 ; =0x00000299
	mov r1, #0x17
	ldrb r6, [r5, r0]
	add r0, r4, #0
	mov r2, #0
	bl sub_02074470
	ldr r1, _0208D108 ; =0x00000299
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r6, r0
	beq _0208D074
	ldr r1, _0208D0F8 ; =0x000006A6
	mov r0, #0x10
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_0208D074:
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0
	bl sub_02074470
	ldr r1, _0208D10C ; =0x0000029A
	strb r0, [r5, r1]
	sub r1, #0x4e
	ldr r0, [r5, r1]
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	bne _0208D092
	add r0, r4, #0
	bl sub_020181C4
_0208D092:
	mov r1, #7
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x13
	bl sub_02002E98
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r2, _0208D110 ; =0x000003E2
	mov r1, #1
	mov r3, #0xd
	bl sub_0200DD0C
	ldr r0, _0208D0F8 ; =0x000006A6
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0208D0D6
	add r0, r5, #0
	mov r1, #0xfe
	bl sub_02091610
	add sp, #8
	mov r0, #0x11
	pop {r4, r5, r6, pc}
_0208D0D6:
	add r0, r5, #0
	bl sub_02091D50
	add r0, r5, #0
	bl sub_0208F34C
	add r0, r5, #0
	bl sub_0208F6A4
	add sp, #8
	mov r0, #0x10
	pop {r4, r5, r6, pc}
_0208D0EE:
	mov r0, #0xf
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208D0F4: .word 0x021BF67C
_0208D0F8: .word 0x000006A6
_0208D0FC: .word 0x00000295
_0208D100: .word 0x00000296
_0208D104: .word 0x00000297
_0208D108: .word 0x00000299
_0208D10C: .word 0x0000029A
_0208D110: .word 0x000003E2
	thumb_func_end sub_0208CF78

	thumb_func_start sub_0208D114
sub_0208D114: ; 0x0208D114
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0208D15C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0208D156
	ldr r0, _0208D160 ; =0x000006A6
	mov r1, #0
	ldrb r2, [r5, r0]
	mov r0, #1
_0208D12A:
	add r4, r0, #0
	lsl r4, r1
	add r3, r2, #0
	tst r3, r4
	beq _0208D14C
	add r0, r5, #0
	bl sub_02091610
	ldr r0, _0208D160 ; =0x000006A6
	ldrb r1, [r5, r0]
	eor r1, r4
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0208D156
	mov r0, #0x11
	pop {r3, r4, r5, pc}
_0208D14C:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #5
	blo _0208D12A
_0208D156:
	mov r0, #0x10
	pop {r3, r4, r5, pc}
	nop
_0208D15C: .word 0x021BF67C
_0208D160: .word 0x000006A6
	thumb_func_end sub_0208D114

	thumb_func_start sub_0208D164
sub_0208D164: ; 0x0208D164
	ldr r0, _0208D178 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0208D172
	mov r0, #0x12
	bx lr
_0208D172:
	mov r0, #0x11
	bx lr
	nop
_0208D178: .word 0x021BF67C
	thumb_func_end sub_0208D164

	thumb_func_start sub_0208D17C
sub_0208D17C: ; 0x0208D17C
	push {r3, lr}
	mov r0, #1
	mov r1, #0x13
	bl sub_0208C120
	mov r0, #0x13
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208D17C

	thumb_func_start sub_0208D18C
sub_0208D18C: ; 0x0208D18C
	push {r3, lr}
	bl sub_0200F2AC
	cmp r0, #1
	bne _0208D19A
	mov r0, #1
	b _0208D19C
_0208D19A:
	mov r0, #0
_0208D19C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208D18C

	thumb_func_start sub_0208D1A4
sub_0208D1A4: ; 0x0208D1A4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0208DD48
	mov r2, #0x93
	lsl r2, r2, #2
	add r1, r0, #0
	ldr r0, [r4, r2]
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	bne _0208D1C6
	add r2, r2, #4
	add r0, r4, #0
	add r2, r4, r2
	bl sub_0208D1D4
	pop {r4, pc}
_0208D1C6:
	add r2, r2, #4
	add r0, r4, #0
	add r2, r4, r2
	bl sub_0208D200
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208D1A4

	thumb_func_start sub_0208D1D4
sub_0208D1D4: ; 0x0208D1D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x13
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02073C74
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020774C8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0208D200
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208D1D4

	thumb_func_start sub_0208D200
sub_0208D200: ; 0x0208D200
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	add r5, r2, #0
	bl sub_02073C88
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0xc]
	add r0, r6, #0
	bl sub_02076B10
	ldr r2, _0208D584 ; =0x00000688
	add r4, r0, #0
	ldr r0, [r7, r2]
	add r2, #0xc
	ldr r2, [r7, r2]
	mov r1, #0xb
	bl sub_0200B1B8
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B538
	mov r2, #0x69
	lsl r2, r2, #4
	mov r1, #0x25
	ldr r0, [r7, r2]
	lsl r1, r1, #4
	add r2, r2, #4
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	bl sub_0200C388
	ldr r2, _0208D584 ; =0x00000688
	mov r1, #0
	ldr r0, [r7, r2]
	add r2, #0xc
	ldr r2, [r7, r2]
	bl sub_0200B1B8
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B5CC
	mov r2, #0x69
	lsl r2, r2, #4
	mov r1, #0x95
	ldr r0, [r7, r2]
	lsl r1, r1, #2
	add r2, r2, #4
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	bl sub_0200C388
	ldr r2, _0208D584 ; =0x00000688
	mov r1, #0xe
	ldr r0, [r7, r2]
	add r2, #0xc
	ldr r2, [r7, r2]
	bl sub_0200B1B8
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B5EC
	mov r2, #0x69
	lsl r2, r2, #4
	mov r1, #0x96
	ldr r0, [r7, r2]
	lsl r1, r1, #2
	add r2, r2, #4
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	bl sub_0200C388
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0xe]
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldrb r1, [r5, #0x12]
	mov r2, #0x7f
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0x7f
	and r0, r2
	orr r0, r1
	strb r0, [r5, #0x12]
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x1f
	ldr r2, [r5, #0x50]
	ldr r1, _0208D588 ; =0xEFFFFFFF
	lsr r0, r0, #3
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x50]
	add r0, r6, #0
	mov r1, #0xb0
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _0208D316
	ldr r0, [r5, #0x50]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0208D316
	ldrb r1, [r5, #0x12]
	mov r0, #0x80
	bic r1, r0
	strb r1, [r5, #0x12]
	b _0208D31E
_0208D316:
	ldrb r1, [r5, #0x12]
	mov r0, #0x80
	orr r0, r1
	strb r0, [r5, #0x12]
_0208D31E:
	add r0, r6, #0
	bl sub_02075D6C
	ldrb r1, [r5, #0x13]
	mov r2, #3
	bic r1, r2
	mov r2, #3
	and r0, r2
	orr r0, r1
	strb r0, [r5, #0x13]
	add r0, r6, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1a
	ldrb r1, [r5, #0x13]
	mov r2, #0xfc
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r5, #0x13]
	add r0, r6, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #0x10]
	add r0, r6, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #0x11]
	add r0, r6, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	str r0, [r5, #0x14]
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074470
	str r0, [r5, #0x18]
	add r0, r6, #0
	mov r1, #0x9d
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x44
	strb r0, [r1]
	ldrb r1, [r5, #0x12]
	ldrh r0, [r5, #0xc]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	bl sub_02075AD0
	str r0, [r5, #0x1c]
	ldrb r0, [r5, #0x12]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x19
	cmp r1, #0x64
	bne _0208D3AA
	ldr r0, [r5, #0x1c]
	b _0208D3B2
_0208D3AA:
	ldrh r0, [r5, #0xc]
	add r1, r1, #1
	bl sub_02075AD0
_0208D3B2:
	str r0, [r5, #0x20]
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x24]
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x26]
	add r0, r6, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x28]
	add r0, r6, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x2a]
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x2c]
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x2e]
	add r0, r6, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x30]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x32
	strb r0, [r1]
	add r0, r6, #0
	bl sub_02075BCC
	add r1, r5, #0
	add r1, #0x33
	strb r0, [r1]
	mov r4, #0
_0208D426:
	lsl r0, r4, #1
	add r0, r5, r0
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	mov r2, #0
	strh r0, [r1, #0x34]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3a
	bl sub_02074470
	add r1, r5, r4
	add r1, #0x3c
	strb r0, [r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp]
	ldrh r0, [r0, #0x34]
	bl sub_020790DC
	add r1, r5, r4
	add r1, #0x40
	strb r0, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0208D426
	add r0, r6, #0
	mov r1, #0x13
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x45
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x14
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x46
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x15
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x47
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x48
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x17
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x49
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x18
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x4a
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #5
	add r0, #0x4b
	strb r1, [r0]
	mov r4, #0
_0208D4E0:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207762C
	cmp r0, #1
	bne _0208D4F4
	add r0, r5, #0
	add r0, #0x4b
	strb r4, [r0]
	b _0208D4FE
_0208D4F4:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _0208D4E0
_0208D4FE:
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x4c
	strh r0, [r1]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x4e
	strh r0, [r1]
	add r0, r6, #0
	bl sub_0208E9F0
	mov r1, #0xf
	ldr r2, [r5, #0x50]
	lsl r1, r1, #0x1c
	and r2, r1
	ldr r1, _0208D58C ; =0x0FFFFFFF
	and r0, r1
	orr r0, r2
	str r0, [r5, #0x50]
	add r0, r6, #0
	bl sub_020778F8
	cmp r0, #1
	bne _0208D54E
	ldr r1, [r5, #0x50]
	ldr r0, _0208D590 ; =0x3FFFFFFF
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0x1e
	orr r0, r1
	str r0, [r5, #0x50]
	b _0208D598
_0208D54E:
	add r0, r6, #0
	bl sub_020778D8
	cmp r0, #1
	bne _0208D57C
	ldr r2, [r5, #0x50]
	ldr r1, _0208D590 ; =0x3FFFFFFF
	add r0, r5, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	str r1, [r5, #0x50]
	lsl r1, r1, #4
	lsr r1, r1, #4
	add r0, #0x50
	cmp r1, #7
	bne _0208D598
	mov r1, #0xf
	ldr r2, [r0, #0]
	lsl r1, r1, #0x1c
	and r1, r2
	str r1, [r0, #0]
	b _0208D598
_0208D57C:
	ldr r1, [r5, #0x50]
	ldr r0, _0208D590 ; =0x3FFFFFFF
	b _0208D594
	nop
_0208D584: .word 0x00000688
_0208D588: .word 0xEFFFFFFF
_0208D58C: .word 0x0FFFFFFF
_0208D590: .word 0x3FFFFFFF
_0208D594:
	and r0, r1
	str r0, [r5, #0x50]
_0208D598:
	add r0, r6, #0
	bl sub_02075E0C
	cmp r0, #1
	ldr r1, [r5, #0x50]
	bne _0208D5AC
	mov r0, #2
	lsl r0, r0, #0x1c
	orr r0, r1
	b _0208D5B0
_0208D5AC:
	ldr r0, _0208D610 ; =0xDFFFFFFF
	and r0, r1
_0208D5B0:
	str r0, [r5, #0x50]
	mov r4, #0
	str r4, [r5, #0x54]
	str r4, [r5, #0x58]
	str r4, [r5, #0x5c]
	ldr r0, _0208D614 ; =0x000006B1
	str r4, [r5, #0x60]
	strb r4, [r7, r0]
_0208D5C0:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_020923C0
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0208D5F8
	lsr r0, r4, #5
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0x1f
	add r2, r4, #0
	and r2, r1
	mov r1, #1
	ldr r3, [r0, #0x54]
	lsl r1, r2
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r0, _0208D614 ; =0x000006B1
	ldrb r0, [r7, r0]
	add r1, r0, #1
	ldr r0, _0208D614 ; =0x000006B1
	strb r1, [r7, r0]
_0208D5F8:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x50
	blo _0208D5C0
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl sub_02073CD4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208D610: .word 0xDFFFFFFF
_0208D614: .word 0x000006B1
	thumb_func_end sub_0208D200

	thumb_func_start sub_0208D618
sub_0208D618: ; 0x0208D618
	push {r4, lr}
	sub sp, #8
	mov r2, #0x2a
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0208D674
	mov r0, #0x6a
	sub r2, #0x44
	lsl r0, r0, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	add r1, sp, #4
	mov r3, #1
	bl sub_02078A4C
	mov r2, #0x97
	lsl r2, r2, #2
	add r1, r2, #0
	ldrh r0, [r4, r2]
	sub r1, #0xa3
	cmp r0, r1
	bne _0208D664
	add r0, sp, #4
	ldrb r0, [r0]
	mov r1, #0
	sub r2, #0x10
	str r0, [sp]
	ldr r0, [r4, r2]
	mov r2, #0x64
	ldr r0, [r0, #0x28]
	add r3, r1, #0
	bl sub_02006438
	add sp, #8
	pop {r4, pc}
_0208D664:
	add r2, #0x42
	ldrh r2, [r4, r2]
	add r1, sp, #4
	ldrb r1, [r1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_0200590C
_0208D674:
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_0208D618

	thumb_func_start sub_0208D678
sub_0208D678: ; 0x0208D678
	push {r4, lr}
	mov r1, #0x93
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	ldrb r0, [r0, #0x12]
	cmp r0, #4
	bhi _0208D6C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208D694: ; jump table
	.short _0208D69E - _0208D694 - 2 ; case 0
	.short _0208D69E - _0208D694 - 2 ; case 1
	.short _0208D6B6 - _0208D694 - 2 ; case 2
	.short _0208D6BE - _0208D694 - 2 ; case 3
	.short _0208D6BE - _0208D694 - 2 ; case 4
_0208D69E:
	add r1, #0x54
	ldr r0, [r4, r1]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	ldr r0, _0208D71C ; =0x000006A4
	bne _0208D6B0
	mov r1, #0
	strb r1, [r4, r0]
	b _0208D6C4
_0208D6B0:
	mov r1, #1
	strb r1, [r4, r0]
	b _0208D6C4
_0208D6B6:
	ldr r0, _0208D71C ; =0x000006A4
	mov r1, #3
	strb r1, [r4, r0]
	b _0208D6C4
_0208D6BE:
	ldr r0, _0208D71C ; =0x000006A4
	mov r1, #4
	strb r1, [r4, r0]
_0208D6C4:
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	add r0, r4, #0
	bl sub_0208ECF4
	add r0, r4, #0
	bl sub_0208EF58
	add r0, r4, #0
	bl sub_0208FA04
	add r0, r4, #0
	bl sub_0208EDC4
	add r0, r4, #0
	bl sub_0208F574
	add r0, r4, #0
	bl sub_0208F34C
	add r0, r4, #0
	bl sub_0208FD40
	add r0, r4, #0
	bl sub_020904C4
	add r0, r4, #0
	bl sub_0208D948
	add r0, r4, #0
	bl sub_020919E8
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _0208D71A
	add r0, r4, #0
	bl sub_0208E190
_0208D71A:
	pop {r4, pc}
	; .align 2, 0
_0208D71C: .word 0x000006A4
	thumb_func_end sub_0208D678

	thumb_func_start sub_0208D720
sub_0208D720: ; 0x0208D720
	push {r3, r4, r5, r6}
	mov r6, #0
	strb r6, [r0, #0x15]
	add r0, #0x15
	mov r3, #1
_0208D72A:
	ldrb r5, [r1, r6]
	cmp r5, #8
	beq _0208D744
	add r2, r3, #0
	ldrb r4, [r0]
	lsl r2, r5
	orr r2, r4
	strb r2, [r0]
	add r2, r6, #1
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	cmp r6, #8
	blo _0208D72A
_0208D744:
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0208D720

	thumb_func_start sub_0208D748
sub_0208D748: ; 0x0208D748
	push {r3, r4}
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	ldr r1, [r4, #0x2c]
	cmp r1, #1
	beq _0208D78C
	ldrb r2, [r4, #0x15]
	mov r1, #0x10
	add r3, r2, #0
	tst r3, r1
	beq _0208D764
	eor r1, r2
	strb r1, [r4, #0x15]
_0208D764:
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	mov r1, #0x20
	ldrb r2, [r4, #0x15]
	add r3, r2, #0
	tst r3, r1
	beq _0208D778
	eor r1, r2
	strb r1, [r4, #0x15]
_0208D778:
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	mov r0, #0x40
	ldrb r1, [r3, #0x15]
	add r2, r1, #0
	tst r2, r0
	beq _0208D78C
	eor r0, r1
	strb r0, [r3, #0x15]
_0208D78C:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0208D748

	thumb_func_start sub_0208D790
sub_0208D790: ; 0x0208D790
	mov r2, #0x2a
	lsl r2, r2, #4
	ldr r2, [r0, r2]
	lsl r2, r2, #3
	lsr r2, r2, #0x1f
	beq _0208D7A8
	cmp r1, #1
	beq _0208D7A8
	cmp r1, #7
	beq _0208D7A8
	mov r0, #0
	bx lr
_0208D7A8:
	mov r2, #0x93
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	ldrb r2, [r0, #0x15]
	mov r0, #1
	lsl r0, r1
	and r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_0208D790

	thumb_func_start sub_0208D7BC
sub_0208D7BC: ; 0x0208D7BC
	push {r3, r4}
	mov r3, #0x93
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	mov r2, #0
	ldrb r0, [r0, #0x15]
	add r1, r2, #0
	mov r3, #1
_0208D7CC:
	add r4, r3, #0
	lsl r4, r1
	tst r4, r0
	beq _0208D7DA
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_0208D7DA:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #8
	blo _0208D7CC
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208D7BC

	thumb_func_start sub_0208D7EC
sub_0208D7EC: ; 0x0208D7EC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _0208D894 ; =0x000006A4
	add r5, r0, #0
	ldrsb r1, [r5, r1]
	cmp r1, r4
	beq _0208D890
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r1, [r1, #0x12]
	cmp r1, #2
	bne _0208D80C
	bl sub_0208E4EC
_0208D80C:
	add r0, r5, #0
	bl sub_0208FE34
	ldr r0, _0208D894 ; =0x000006A4
	mov r1, #0
	strb r4, [r5, r0]
	add r0, r5, #0
	bl sub_0208F6DC
	add r0, r5, #0
	bl sub_0208ECF4
	add r0, r5, #0
	bl sub_0208EDC4
	add r0, r5, #0
	bl sub_0208EF58
	add r0, r5, #0
	bl sub_0208FA04
	add r0, r5, #0
	bl sub_0208F34C
	add r0, r5, #0
	bl sub_0208FD40
	add r0, r5, #0
	mov r1, #0
	bl sub_0208FB54
	mov r0, #4
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0]
	mov r1, #1
	mov r3, #0xe
	bl sub_02019CB8
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02019448
	add r0, r5, #0
	bl sub_020904C4
	add r0, r5, #0
	bl sub_0208D948
	add r0, r5, #0
	bl sub_020919E8
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _0208D890
	add r0, r5, #0
	bl sub_0208E508
_0208D890:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208D894: .word 0x000006A4
	thumb_func_end sub_0208D7EC

	thumb_func_start sub_0208D898
sub_0208D898: ; 0x0208D898
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0208D918 ; =0x000006A4
	mov r6, #1
	ldrsb r4, [r5, r0]
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov ip, r4
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	add r7, r6, #0
_0208D8B0:
	add r2, r4, r1
	lsl r2, r2, #0x18
	asr r4, r2, #0x18
	bpl _0208D8BC
	mov r4, #7
	b _0208D8C2
_0208D8BC:
	cmp r4, #7
	ble _0208D8C2
	mov r4, #0
_0208D8C2:
	cmp r0, #0
	bne _0208D8D8
	mov r2, #0x93
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	ldrb r3, [r2, #0x15]
	add r2, r6, #0
	lsl r2, r4
	tst r2, r3
	bne _0208D8F0
	b _0208D8B0
_0208D8D8:
	mov r2, #0x93
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	ldrb r3, [r2, #0x15]
	add r2, r7, #0
	lsl r2, r4
	tst r2, r3
	beq _0208D8B0
	cmp r4, #1
	beq _0208D8F0
	cmp r4, #7
	bne _0208D8B0
_0208D8F0:
	mov r0, ip
	cmp r4, r0
	beq _0208D914
	ldr r0, _0208D91C ; =0x000005E1
	bl sub_02005748
	add r0, r5, #0
	bl sub_0209219C
	add r0, r5, #0
	mov r1, #0
	bl sub_0208FB54
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0208D7EC
_0208D914:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208D918: .word 0x000006A4
_0208D91C: .word 0x000005E1
	thumb_func_end sub_0208D898

	thumb_func_start sub_0208D920
sub_0208D920: ; 0x0208D920
	push {r4, lr}
	add r4, r0, #0
	bl sub_020921E4
	cmp r0, #0xff
	bne _0208D930
	mov r0, #0
	pop {r4, pc}
_0208D930:
	ldr r1, _0208D944 ; =0x000006AC
	mov r3, #0
	strb r3, [r4, r1]
	add r2, r1, #2
	strb r0, [r4, r2]
	add r0, r1, #1
	strb r3, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	nop
_0208D944: .word 0x000006AC
	thumb_func_end sub_0208D920

	thumb_func_start sub_0208D948
sub_0208D948: ; 0x0208D948
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrb r0, [r1, #0x12]
	cmp r0, #2
	bne _0208D970
	ldrh r0, [r1, #0x18]
	cmp r0, #0
	beq _0208D970
	ldr r0, _0208D9CC ; =0x000006A4
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bne _0208D96C
	mov r1, #0xc
	b _0208D976
_0208D96C:
	mov r1, #0xd
	b _0208D976
_0208D970:
	ldr r0, _0208D9CC ; =0x000006A4
	ldrsb r0, [r5, r0]
	add r1, r0, #3
_0208D976:
	mov r0, #0x27
	mov r2, #0x13
	bl sub_02006AC0
	add r1, sp, #0xc
	add r4, r0, #0
	bl NNS_G2dGetUnpackedScreenData
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r0, [r5, #0]
	mov r1, #3
	add r2, #0xc
	bl sub_020198C0
	ldr r0, [r5, #0]
	mov r1, #3
	bl sub_0201C3C0
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, _0208D9CC ; =0x000006A4
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0208D9BC
	add r0, r5, #0
	bl sub_0208DA84
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0208D9BC:
	cmp r0, #2
	bne _0208D9C6
	add r0, r5, #0
	bl sub_0208D9D0
_0208D9C6:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0208D9CC: .word 0x000006A4
	thumb_func_end sub_0208D948

	thumb_func_start sub_0208D9D0
sub_0208D9D0: ; 0x0208D9D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0x9d
	add r6, r0, #0
	lsl r1, r1, #2
	ldrh r0, [r6, r1]
	add r1, r1, #2
	ldrh r1, [r6, r1]
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _0208DA0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208D9F6: ; jump table
	.short _0208DA00 - _0208D9F6 - 2 ; case 0
	.short _0208DA08 - _0208D9F6 - 2 ; case 1
	.short _0208DA04 - _0208D9F6 - 2 ; case 2
	.short _0208DA00 - _0208D9F6 - 2 ; case 3
	.short _0208DA00 - _0208D9F6 - 2 ; case 4
_0208DA00:
	ldr r7, _0208DA7C ; =0x0000A0C0
	b _0208DA0C
_0208DA04:
	ldr r7, _0208DA80 ; =0x0000A0E0
	b _0208DA0C
_0208DA08:
	mov r7, #0xa1
	lsl r7, r7, #8
_0208DA0C:
	mov r1, #0x9d
	lsl r1, r1, #2
	ldrh r0, [r6, r1]
	add r1, r1, #2
	ldrh r1, [r6, r1]
	mov r2, #0x30
	bl sub_0208C0BC
	add r4, r0, #0
	add r0, r7, #0
	add r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r5, #0
	str r0, [sp, #0x10]
_0208DA2A:
	cmp r4, #8
	blo _0208DA32
	ldr r2, [sp, #0x10]
	b _0208DA38
_0208DA32:
	add r0, r7, r4
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0208DA38:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r3, r5, #0
	str r0, [sp, #8]
	mov r0, #0x11
	add r3, #0x18
	str r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [r6, #0]
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02019CB8
	cmp r4, #8
	bhs _0208DA5E
	mov r4, #0
	b _0208DA64
_0208DA5E:
	sub r4, #8
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_0208DA64:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0208DA2A
	ldr r0, [r6, #0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0208DA7C: .word 0x0000A0C0
_0208DA80: .word 0x0000A0E0
	thumb_func_end sub_0208D9D0

	thumb_func_start sub_0208DA84
sub_0208DA84: ; 0x0208DA84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _0208DB0C ; =0x00000262
	add r6, r0, #0
	ldrb r0, [r6, r2]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	cmp r0, #0x64
	bhs _0208DAAC
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0xa
	add r1, #0xe
	add r2, r2, #6
	ldr r0, [r6, r0]
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	sub r1, r1, r0
	sub r0, r2, r0
	b _0208DAB0
_0208DAAC:
	mov r1, #0
	add r0, r1, #0
_0208DAB0:
	mov r2, #0x38
	bl sub_0208C0BC
	add r4, r0, #0
	mov r5, #0
	mov r7, #0x17
_0208DABC:
	cmp r4, #8
	blo _0208DAC4
	mov r2, #0xb4
	b _0208DACC
_0208DAC4:
	add r0, r4, #0
	add r0, #0xac
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0208DACC:
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r3, r5, #0
	str r0, [sp, #8]
	mov r0, #0x11
	add r3, #0x17
	str r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [r6, #0]
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02019CB8
	cmp r4, #8
	bhs _0208DAF0
	mov r4, #0
	b _0208DAF6
_0208DAF0:
	sub r4, #8
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_0208DAF6:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #7
	blo _0208DABC
	ldr r0, [r6, #0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208DB0C: .word 0x00000262
	thumb_func_end sub_0208DA84

	thumb_func_start sub_0208DB10
sub_0208DB10: ; 0x0208DB10
	push {r4, lr}
	add r4, r0, #0
	bl sub_0208DBC4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0208DBBC
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	strb r0, [r1, #0x14]
	add r0, r4, #0
	bl sub_0208D1A4
	add r0, r4, #0
	bl sub_0208D618
	add r0, r4, #0
	bl sub_0208FEA4
	add r0, r4, #0
	bl sub_0208FF3C
	add r0, r4, #0
	bl sub_0208FFE0
	ldr r0, _0208DBC0 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0208DB56
	add r0, r4, #0
	bl sub_0208DA84
	b _0208DB6C
_0208DB56:
	cmp r0, #2
	bne _0208DB62
	add r0, r4, #0
	bl sub_0208D9D0
	b _0208DB6C
_0208DB62:
	cmp r0, #4
	bne _0208DB6C
	add r0, r4, #0
	bl sub_02091D50
_0208DB6C:
	add r0, r4, #0
	bl sub_02092098
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	add r0, r4, #0
	bl sub_0208ECF4
	add r0, r4, #0
	bl sub_0208EDC4
	add r0, r4, #0
	bl sub_0208F16C
	add r0, r4, #0
	bl sub_0208EF58
	add r0, r4, #0
	bl sub_0208FA04
	add r0, r4, #0
	bl sub_0208F71C
	add r0, r4, #0
	bl sub_0208EE3C
	add r0, r4, #0
	bl sub_0208EE9C
	add r0, r4, #0
	bl sub_0208F34C
	add r0, r4, #0
	bl sub_0208F574
	add r0, r4, #0
	bl sub_020904C4
_0208DBBC:
	pop {r4, pc}
	nop
_0208DBC0: .word 0x000006A4
	thumb_func_end sub_0208DB10

	thumb_func_start sub_0208DBC4
sub_0208DBC4: ; 0x0208DBC4
	push {r3, lr}
	mov r2, #0x93
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	ldrb r2, [r2, #0x11]
	cmp r2, #0
	beq _0208DBDC
	cmp r2, #1
	beq _0208DBE2
	cmp r2, #2
	beq _0208DBE8
	b _0208DBEE
_0208DBDC:
	bl sub_0208DC1C
	pop {r3, pc}
_0208DBE2:
	bl sub_0208DC84
	pop {r3, pc}
_0208DBE8:
	bl sub_0208DCE0
	pop {r3, pc}
_0208DBEE:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end sub_0208DBC4

	thumb_func_start sub_0208DBF4
sub_0208DBF4: ; 0x0208DBF4
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldrb r1, [r1, #0x12]
	cmp r1, #3
	bne _0208DC04
	mov r0, #0
	bx lr
_0208DC04:
	ldr r1, _0208DC18 ; =0x000006A4
	ldrsb r0, [r0, r1]
	cmp r0, #1
	beq _0208DC14
	cmp r0, #7
	beq _0208DC14
	mov r0, #0
	bx lr
_0208DC14:
	mov r0, #1
	bx lr
	; .align 2, 0
_0208DC18: .word 0x000006A4
	thumb_func_end sub_0208DBF4

	thumb_func_start sub_0208DC1C
sub_0208DC1C: ; 0x0208DC1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	str r1, [sp]
	ldr r1, [r5, r0]
	mov r0, #0x14
	ldrsb r4, [r1, r0]
_0208DC2C:
	ldr r0, [sp]
	add r0, r4, r0
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	bmi _0208DC42
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x13]
	cmp r4, r0
	blt _0208DC48
_0208DC42:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0208DC48:
	bl sub_02076AF0
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r7, r4, #0
	ldr r6, [r1, #0]
	mul r7, r0
	add r0, r6, r7
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0208DC2C
	add r0, r6, r7
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0208DC7E
	add r0, r5, #0
	bl sub_0208DBF4
	cmp r0, #1
	bne _0208DC2C
_0208DC7E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208DC1C

	thumb_func_start sub_0208DC84
sub_0208DC84: ; 0x0208DC84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	add r7, r1, #0
	ldr r1, [r5, r0]
	mov r0, #0x14
	ldrsb r4, [r1, r0]
_0208DC94:
	add r0, r4, r7
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	bmi _0208DCA8
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrb r0, [r1, #0x13]
	cmp r4, r0
	blt _0208DCAE
_0208DCA8:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0208DCAE:
	ldr r0, [r1, #0]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0208DC94
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0208DCDC
	add r0, r5, #0
	bl sub_0208DBF4
	cmp r0, #1
	bne _0208DC94
_0208DCDC:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208DC84

	thumb_func_start sub_0208DCE0
sub_0208DCE0: ; 0x0208DCE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	str r1, [sp]
	ldr r1, [r5, r0]
	mov r0, #0x14
	ldrsb r4, [r1, r0]
_0208DCF0:
	ldr r0, [sp]
	add r0, r4, r0
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	bmi _0208DD06
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x13]
	cmp r4, r0
	blt _0208DD0C
_0208DD06:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0208DD0C:
	bl sub_02076AF4
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r7, r4, #0
	ldr r6, [r1, #0]
	mul r7, r0
	add r0, r6, r7
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _0208DCF0
	add r0, r6, r7
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _0208DD42
	add r0, r5, #0
	bl sub_0208DBF4
	cmp r0, #1
	bne _0208DCF0
_0208DD42:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208DCE0

	thumb_func_start sub_0208DD48
sub_0208DD48: ; 0x0208DD48
	push {r4, lr}
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _0208DD60
	cmp r0, #1
	beq _0208DD6E
	cmp r0, #2
	beq _0208DD78
	b _0208DD86
_0208DD60:
	bl sub_02076AF0
	ldrb r1, [r4, #0x14]
	ldr r2, [r4, #0]
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_0208DD6E:
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0FC
	pop {r4, pc}
_0208DD78:
	bl sub_02076AF4
	ldrb r1, [r4, #0x14]
	ldr r2, [r4, #0]
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_0208DD86:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208DD48

	thumb_func_start sub_0208DD8C
sub_0208DD8C: ; 0x0208DD8C
	push {r4, lr}
	ldr r1, _0208DE94 ; =0x000006A6
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0208DDA2
	cmp r1, #1
	beq _0208DE02
	cmp r1, #2
	beq _0208DE2E
	b _0208DE90
_0208DDA2:
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #0
	mov r3, #0x88
	bl sub_0201C63C
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	add r0, r4, #0
	mov r1, #0
	bl sub_0208EE10
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201AD10
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	ldr r1, _0208DE98 ; =0x000006A5
	mov r0, #0xf
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
	mov r2, #1
	add r0, r1, #1
	strb r2, [r4, r0]
	b _0208DE90
_0208DE02:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192EC
	cmp r0, #0x40
	ldr r0, [r4, #0]
	bgt _0208DE22
	mov r2, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, _0208DE94 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208DE90
_0208DE22:
	mov r1, #2
	add r2, r1, #0
	mov r3, #0x40
	bl sub_0201C63C
	b _0208DE90
_0208DE2E:
	bl sub_02091420
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #1
	beq _0208DE52
	add r0, r4, #0
	mov r1, #0x98
	bl sub_02090064
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
_0208DE52:
	add r0, r4, #0
	bl sub_0208DFF4
	ldr r0, _0208DE9C ; =0x00000448
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	add r0, r4, #0
	bl sub_0208F7A4
	mov r0, #0x26
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r1, r0
	beq _0208DE80
	ldr r0, _0208DEA0 ; =0x0000044C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
_0208DE80:
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #1
	pop {r4, pc}
_0208DE90:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0208DE94: .word 0x000006A6
_0208DE98: .word 0x000006A5
_0208DE9C: .word 0x00000448
_0208DEA0: .word 0x0000044C
	thumb_func_end sub_0208DD8C

	thumb_func_start sub_0208DEA4
sub_0208DEA4: ; 0x0208DEA4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208DF80 ; =0x000006A6
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0208DEBA
	cmp r0, #1
	beq _0208DF14
	cmp r0, #2
	beq _0208DF40
	b _0208DF7C
_0208DEBA:
	ldr r0, _0208DF84 ; =0x00000448
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	ldr r0, _0208DF88 ; =0x0000044C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	ldr r0, _0208DF8C ; =0x00000464
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	ldr r0, _0208DF90 ; =0x00000468
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	add r0, r4, #0
	bl sub_0209145C
	add r0, r4, #0
	bl sub_020913D8
	ldr r0, _0208DF80 ; =0x000006A6
	mov r1, #1
	strb r1, [r4, r0]
	b _0208DF7C
_0208DF14:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192EC
	cmp r0, #0x80
	ldr r0, [r4, #0]
	blt _0208DF34
	mov r1, #2
	mov r2, #0
	mov r3, #0x88
	bl sub_0201C63C
	ldr r0, _0208DF80 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208DF7C
_0208DF34:
	mov r1, #2
	mov r2, #1
	mov r3, #0x40
	bl sub_0201C63C
	b _0208DF7C
_0208DF40:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201A9A4
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #0x81
	bl sub_02090064
	add r0, r4, #0
	mov r1, #1
	bl sub_0208EE10
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #1
	pop {r4, pc}
_0208DF7C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0208DF80: .word 0x000006A6
_0208DF84: .word 0x00000448
_0208DF88: .word 0x0000044C
_0208DF8C: .word 0x00000464
_0208DF90: .word 0x00000468
	thumb_func_end sub_0208DEA4

	thumb_func_start sub_0208DF94
sub_0208DF94: ; 0x0208DF94
	push {r4, r5, r6, r7}
	add r5, r0, #0
	ldr r0, _0208DFF0 ; =0x000006A5
	mov r6, #0xa1
	ldrb r0, [r5, r0]
	mov r2, #4
	lsl r6, r6, #2
	lsl r0, r0, #0x1c
	lsr r4, r0, #0x1c
	lsl r0, r4, #0x18
	asr r3, r0, #0x18
	mov r0, #0
_0208DFAC:
	add r3, r3, r1
	lsl r3, r3, #0x18
	asr r3, r3, #0x18
	bpl _0208DFB8
	add r3, r2, #0
	b _0208DFBE
_0208DFB8:
	cmp r3, #5
	bne _0208DFBE
	add r3, r0, #0
_0208DFBE:
	lsl r7, r3, #1
	add r7, r5, r7
	ldrh r7, [r7, r6]
	cmp r7, #0
	bne _0208DFCC
	cmp r3, #4
	bne _0208DFAC
_0208DFCC:
	cmp r3, r4
	beq _0208DFEA
	ldr r2, _0208DFF0 ; =0x000006A5
	mov r1, #0xf
	ldrb r0, [r5, r2]
	bic r0, r1
	lsl r1, r3, #0x18
	lsr r3, r1, #0x18
	mov r1, #0xf
	and r1, r3
	orr r0, r1
	strb r0, [r5, r2]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0208DFEA:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0208DFF0: .word 0x000006A5
	thumb_func_end sub_0208DF94

	thumb_func_start sub_0208DFF4
sub_0208DFF4: ; 0x0208DFF4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0208F2E8
	ldr r2, _0208E078 ; =0x000006A5
	ldrb r0, [r4, r2]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	cmp r1, #4
	bne _0208E04C
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrh r1, [r0, #0x18]
	cmp r1, #0
	beq _0208E02C
	sub r0, r2, #1
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208E024
	add r0, r4, #0
	bl sub_0208E07C
	pop {r4, pc}
_0208E024:
	add r0, r4, #0
	bl sub_0208E0B8
	pop {r4, pc}
_0208E02C:
	sub r0, r2, #1
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208E040
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl sub_0208E07C
	pop {r4, pc}
_0208E040:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl sub_0208E0B8
	pop {r4, pc}
_0208E04C:
	sub r0, r2, #1
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208E066
	lsl r1, r1, #1
	add r2, r4, r1
	mov r1, #0xa1
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	add r0, r4, #0
	bl sub_0208E07C
	pop {r4, pc}
_0208E066:
	lsl r1, r1, #1
	add r2, r4, r1
	mov r1, #0xa1
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	add r0, r4, #0
	bl sub_0208E0B8
	pop {r4, pc}
	; .align 2, 0
_0208E078: .word 0x000006A5
	thumb_func_end sub_0208DFF4

	thumb_func_start sub_0208E07C
sub_0208E07C: ; 0x0208E07C
	push {r3, r4, r5, lr}
	mov r2, #0
	add r4, r1, #0
	mvn r2, r2
	add r5, r0, #0
	cmp r4, r2
	bne _0208E09A
	bl sub_020913D8
	ldr r0, _0208E0B4 ; =0x00000464
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D3EC
	pop {r3, r4, r5, pc}
_0208E09A:
	bl sub_020912A4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0208F294
	ldr r0, _0208E0B4 ; =0x00000464
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D3EC
	pop {r3, r4, r5, pc}
	nop
_0208E0B4: .word 0x00000464
	thumb_func_end sub_0208E07C

	thumb_func_start sub_0208E0B8
sub_0208E0B8: ; 0x0208E0B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208E498
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0208E0D2
	add r0, r5, #0
	bl sub_020915F4
	pop {r3, r4, r5, pc}
_0208E0D2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02091570
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208E0B8

	thumb_func_start sub_0208E0DC
sub_0208E0DC: ; 0x0208E0DC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0208DD48
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r1, [r1, #0x11]
	cmp r1, #2
	ldr r1, _0208E18C ; =0x000006A5
	bne _0208E102
	ldrb r2, [r4, r1]
	lsl r1, r2, #0x1c
	lsl r2, r2, #0x18
	lsr r1, r1, #0x1c
	lsr r2, r2, #0x1c
	bl sub_0207734C
	b _0208E110
_0208E102:
	ldrb r2, [r4, r1]
	lsl r1, r2, #0x1c
	lsl r2, r2, #0x18
	lsr r1, r1, #0x1c
	lsr r2, r2, #0x1c
	bl sub_02077344
_0208E110:
	ldr r0, _0208E18C ; =0x000006A5
	mov r1, #0xa1
	ldrb r6, [r4, r0]
	lsl r1, r1, #2
	add r5, r4, r1
	lsl r2, r6, #0x1c
	lsl r6, r6, #0x18
	lsr r6, r6, #0x1c
	lsl r6, r6, #1
	lsr r3, r2, #0x1b
	add r6, r4, r6
	ldrh r2, [r5, r3]
	ldrh r6, [r6, r1]
	strh r6, [r5, r3]
	ldrb r3, [r4, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	lsl r3, r3, #1
	add r3, r4, r3
	strh r2, [r3, r1]
	add r2, r1, #0
	add r2, #8
	ldrb r6, [r4, r0]
	add r5, r4, r2
	lsl r2, r6, #0x1c
	lsl r6, r6, #0x18
	lsr r6, r6, #0x1c
	add r7, r4, r6
	add r6, r1, #0
	lsr r3, r2, #0x1c
	add r6, #8
	ldrb r2, [r5, r3]
	ldrb r6, [r7, r6]
	strb r6, [r5, r3]
	ldrb r3, [r4, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	add r5, r4, r3
	add r3, r1, #0
	add r3, #8
	strb r2, [r5, r3]
	add r2, r1, #0
	add r2, #0xc
	ldrb r6, [r4, r0]
	add r5, r4, r2
	lsl r2, r6, #0x1c
	lsl r6, r6, #0x18
	lsr r6, r6, #0x1c
	add r7, r4, r6
	add r6, r1, #0
	lsr r3, r2, #0x1c
	add r6, #0xc
	ldrb r2, [r5, r3]
	ldrb r6, [r7, r6]
	add r1, #0xc
	strb r6, [r5, r3]
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	add r0, r4, r0
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208E18C: .word 0x000006A5
	thumb_func_end sub_0208E0DC

	thumb_func_start sub_0208E190
sub_0208E190: ; 0x0208E190
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201AD10
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r2, #0
	ldr r0, [r4, #0]
	mov r1, #2
	add r3, r2, #0
	bl sub_0201C63C
	add r0, r4, #0
	bl sub_02091420
	add r0, r4, #0
	bl sub_0208DFF4
	ldr r0, _0208E200 ; =0x00000448
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	add r0, r4, #0
	bl sub_0208F7A4
	mov r0, #0x26
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r1, r0
	beq _0208E1F0
	ldr r0, _0208E204 ; =0x0000044C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
_0208E1F0:
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	pop {r4, pc}
	nop
_0208E200: .word 0x00000448
_0208E204: .word 0x0000044C
	thumb_func_end sub_0208E190

	thumb_func_start sub_0208E208
sub_0208E208: ; 0x0208E208
	push {r4, lr}
	ldr r1, _0208E300 ; =0x000006A6
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0208E21E
	cmp r1, #1
	beq _0208E28A
	cmp r1, #2
	beq _0208E2B6
	b _0208E2FC
_0208E21E:
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #0
	mov r3, #0x88
	bl sub_0201C63C
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0]
	mov r1, #2
	add r3, #0xfd
	bl sub_0201C63C
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl sub_0208E498
	add r0, r4, #0
	mov r1, #0
	bl sub_0208EE10
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201AD10
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	ldr r1, _0208E304 ; =0x000006A5
	mov r0, #0xf
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
	mov r2, #1
	add r0, r1, #1
	strb r2, [r4, r0]
	b _0208E2FC
_0208E28A:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192EC
	cmp r0, #0x40
	ldr r0, [r4, #0]
	bgt _0208E2AA
	mov r2, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, _0208E300 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208E2FC
_0208E2AA:
	mov r1, #2
	add r2, r1, #0
	mov r3, #0x40
	bl sub_0201C63C
	b _0208E2FC
_0208E2B6:
	bl sub_02091420
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #1
	beq _0208E2DA
	add r0, r4, #0
	mov r1, #0x98
	bl sub_02090064
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
_0208E2DA:
	add r0, r4, #0
	bl sub_0208DFF4
	add r0, r4, #0
	bl sub_0208F7A4
	add r0, r4, #0
	bl sub_0208F844
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #1
	pop {r4, pc}
_0208E2FC:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0208E300: .word 0x000006A6
_0208E304: .word 0x000006A5
	thumb_func_end sub_0208E208

	thumb_func_start sub_0208E308
sub_0208E308: ; 0x0208E308
	push {r4, lr}
	ldr r1, _0208E3D4 ; =0x000006A6
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0208E31E
	cmp r1, #1
	beq _0208E368
	cmp r1, #2
	beq _0208E394
	b _0208E3D0
_0208E31E:
	bl sub_0208F964
	ldr r0, _0208E3D8 ; =0x00000468
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl sub_0208E498
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	add r0, r4, #0
	bl sub_0209145C
	add r0, r4, #0
	bl sub_020915F4
	ldr r0, _0208E3D4 ; =0x000006A6
	mov r1, #1
	strb r1, [r4, r0]
	b _0208E3D0
_0208E368:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192EC
	cmp r0, #0x80
	ldr r0, [r4, #0]
	blt _0208E388
	mov r1, #2
	mov r2, #0
	mov r3, #0x88
	bl sub_0201C63C
	ldr r0, _0208E3D4 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208E3D0
_0208E388:
	mov r1, #2
	mov r2, #1
	mov r3, #0x40
	bl sub_0201C63C
	b _0208E3D0
_0208E394:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201A9A4
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #0x9e
	bl sub_02090064
	add r0, r4, #0
	mov r1, #1
	bl sub_0208EE10
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #1
	pop {r4, pc}
_0208E3D0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0208E3D4: .word 0x000006A6
_0208E3D8: .word 0x00000468
	thumb_func_end sub_0208E308

	thumb_func_start sub_0208E3DC
sub_0208E3DC: ; 0x0208E3DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x2f
	str r0, [sp]
	mov r0, #1
	lsl r6, r2, #1
	add r4, r1, #0
	str r0, [sp, #4]
	add r7, r6, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	lsl r3, r7, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	add r2, r4, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #0x2f
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r6, r6, #3
	str r0, [sp, #8]
	mov r0, #0x10
	add r2, r4, #1
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #0x30
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #0x10
	add r2, #0x20
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r7, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #0x30
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	add r4, #0x21
	str r0, [sp, #0xc]
	lsl r2, r4, #0x10
	lsl r3, r6, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208E3DC

	thumb_func_start sub_0208E46C
sub_0208E46C: ; 0x0208E46C
	push {r4, r5, r6, lr}
	ldr r6, _0208E494 ; =0x0000012E
	add r5, r0, #0
	mov r4, #0
_0208E474:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_0208E3DC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _0208E474
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0201C3C0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208E494: .word 0x0000012E
	thumb_func_end sub_0208E46C

	thumb_func_start sub_0208E498
sub_0208E498: ; 0x0208E498
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208E46C
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0208E4E0
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020790C4
	bl sub_02095734
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	mov r4, #0
	cmp r6, #0
	ble _0208E4E0
	mov r7, #0x4b
	lsl r7, r7, #2
_0208E4CA:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl sub_0208E3DC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blt _0208E4CA
_0208E4E0:
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208E498

	thumb_func_start sub_0208E4EC
sub_0208E4EC: ; 0x0208E4EC
	push {r3, lr}
	ldr r1, _0208E504 ; =0x000006A4
	ldrsb r1, [r0, r1]
	cmp r1, #3
	bne _0208E4FC
	bl sub_020913D8
	pop {r3, pc}
_0208E4FC:
	bl sub_020915F4
	pop {r3, pc}
	nop
_0208E504: .word 0x000006A4
	thumb_func_end sub_0208E4EC

	thumb_func_start sub_0208E508
sub_0208E508: ; 0x0208E508
	push {r4, lr}
	add r4, r0, #0
	bl sub_02091420
	add r0, r4, #0
	bl sub_0208DFF4
	add r0, r4, #0
	bl sub_0208F7A4
	ldr r0, _0208E570 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208E55A
	add r0, r4, #0
	bl sub_0208F964
	ldr r0, _0208E574 ; =0x00000448
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	mov r0, #0x26
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r1, r0
	beq _0208E54C
	ldr r0, _0208E578 ; =0x0000044C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
_0208E54C:
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	pop {r4, pc}
_0208E55A:
	add r0, r4, #0
	bl sub_0208F844
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0]
	mov r1, #2
	add r3, #0xfd
	bl sub_0201C63C
	pop {r4, pc}
	; .align 2, 0
_0208E570: .word 0x000006A4
_0208E574: .word 0x00000448
_0208E578: .word 0x0000044C
	thumb_func_end sub_0208E508

	thumb_func_start sub_0208E57C
sub_0208E57C: ; 0x0208E57C
	push {r4, lr}
	ldr r1, _0208E68C ; =0x000006A6
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0208E592
	cmp r1, #1
	beq _0208E5FE
	cmp r1, #2
	beq _0208E62A
	b _0208E686
_0208E592:
	mov r1, #2
	add r3, r1, #0
	ldr r0, [r4, #0]
	mov r2, #0
	add r3, #0xfe
	bl sub_0201C63C
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	add r0, r4, #0
	mov r1, #0
	bl sub_0208EE10
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201AD10
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	ldr r1, _0208E690 ; =0x000006AF
	mov r2, #0
	strb r2, [r4, r1]
	add r0, r1, #1
	strb r2, [r4, r0]
	mov r0, #1
	sub r1, #9
	strb r0, [r4, r1]
	b _0208E686
_0208E5FE:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192F8
	cmp r0, #0x30
	ldr r0, [r4, #0]
	blt _0208E61E
	mov r1, #2
	mov r2, #3
	mov r3, #0x38
	bl sub_0201C63C
	ldr r0, _0208E68C ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208E686
_0208E61E:
	mov r1, #2
	mov r2, #4
	mov r3, #0x10
	bl sub_0201C63C
	b _0208E686
_0208E62A:
	mov r1, #0xb5
	bl sub_02090064
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	ldr r0, _0208E694 ; =0x00000528
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208E698 ; =0x00000534
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208E69C ; =0x00000518
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208E6A0 ; =0x0000051C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r0, #0x52
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208E6A4 ; =0x00000524
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #0
	bl sub_0208E794
	mov r0, #1
	pop {r4, pc}
_0208E686:
	mov r0, #0
	pop {r4, pc}
	nop
_0208E68C: .word 0x000006A6
_0208E690: .word 0x000006AF
_0208E694: .word 0x00000528
_0208E698: .word 0x00000534
_0208E69C: .word 0x00000518
_0208E6A0: .word 0x0000051C
_0208E6A4: .word 0x00000524
	thumb_func_end sub_0208E57C

	thumb_func_start sub_0208E6A8
sub_0208E6A8: ; 0x0208E6A8
	push {r4, lr}
	ldr r1, _0208E790 ; =0x000006A6
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _0208E6BE
	cmp r0, #1
	beq _0208E70E
	cmp r0, #2
	beq _0208E73A
	b _0208E78A
_0208E6BE:
	add r0, r1, #0
	mov r2, #0
	add r0, #9
	strb r2, [r4, r0]
	add r1, #0xa
	mov r0, #0x91
	strb r2, [r4, r1]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201AD10
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	add r0, r4, #0
	bl sub_0208FA04
	ldr r0, _0208E790 ; =0x000006A6
	mov r1, #1
	strb r1, [r4, r0]
	b _0208E78A
_0208E70E:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192F8
	cmp r0, #8
	ldr r0, [r4, #0]
	bgt _0208E72E
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	ldr r0, _0208E790 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208E78A
_0208E72E:
	mov r1, #2
	mov r2, #5
	mov r3, #0x10
	bl sub_0201C63C
	b _0208E78A
_0208E73A:
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201A9A4
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #0xb4
	bl sub_02090064
	add r0, r4, #0
	mov r1, #1
	bl sub_0208EE10
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #1
	pop {r4, pc}
_0208E78A:
	mov r0, #0
	pop {r4, pc}
	nop
_0208E790: .word 0x000006A6
	thumb_func_end sub_0208E6A8

	thumb_func_start sub_0208E794
sub_0208E794: ; 0x0208E794
	push {r4, r5, r6, lr}
	ldr r2, _0208E8F4 ; =0x000006AF
	add r5, r0, #0
	add r3, r2, #1
	ldrb r0, [r5, r2]
	ldrb r4, [r5, r3]
	cmp r1, #1
	bne _0208E7C0
	mov r1, #3
	and r1, r0
	cmp r1, #3
	beq _0208E7CE
	lsl r1, r4, #2
	add r1, r0, r1
	add r3, r1, #1
	add r1, r2, #2
	ldrb r1, [r5, r1]
	cmp r3, r1
	bge _0208E862
	add r1, r0, #1
	strb r1, [r5, r2]
	b _0208E862
_0208E7C0:
	mov r3, #0
	mvn r3, r3
	cmp r1, r3
	bne _0208E7D6
	mov r1, #3
	tst r1, r0
	bne _0208E7D0
_0208E7CE:
	b _0208E8F2
_0208E7D0:
	sub r1, r0, #1
	strb r1, [r5, r2]
	b _0208E862
_0208E7D6:
	cmp r1, #4
	bne _0208E844
	cmp r0, #4
	bhs _0208E80A
	add r1, r2, #2
	ldrb r3, [r5, r1]
	lsl r1, r4, #2
	add r1, r0, r1
	add r1, r1, #4
	cmp r1, r3
	blt _0208E804
	cmp r3, #4
	bls _0208E862
	lsr r1, r3, #0x1f
	lsl r6, r3, #0x1e
	sub r6, r6, r1
	mov r3, #0x1e
	ror r6, r3
	add r1, r1, r6
	beq _0208E862
	add r1, r1, #3
	strb r1, [r5, r2]
	b _0208E862
_0208E804:
	add r1, r0, #4
	strb r1, [r5, r2]
	b _0208E862
_0208E80A:
	add r1, r2, #2
	ldrb r1, [r5, r1]
	lsl r3, r4, #2
	add r3, #8
	cmp r3, r1
	bge _0208E862
	add r1, r2, #1
	ldrb r1, [r5, r1]
	add r6, r2, #1
	add r3, r1, #1
	add r1, r2, #1
	strb r3, [r5, r1]
	add r1, r2, #2
	ldrb r6, [r5, r6]
	ldrb r3, [r5, r1]
	ldrb r1, [r5, r2]
	lsl r6, r6, #2
	add r1, r1, r6
	cmp r1, r3
	blt _0208E862
	lsr r1, r3, #0x1f
	lsl r6, r3, #0x1e
	sub r6, r6, r1
	mov r3, #0x1e
	ror r6, r3
	add r1, r1, r6
	add r1, r1, #3
	strb r1, [r5, r2]
	b _0208E862
_0208E844:
	sub r3, r3, #3
	cmp r1, r3
	bne _0208E862
	cmp r0, #4
	blo _0208E854
	sub r1, r0, #4
	strb r1, [r5, r2]
	b _0208E862
_0208E854:
	cmp r4, #0
	beq _0208E862
	add r1, r2, #1
	ldrb r1, [r5, r1]
	sub r3, r1, #1
	add r1, r2, #1
	strb r3, [r5, r1]
_0208E862:
	ldr r1, _0208E8F4 ; =0x000006AF
	ldrb r2, [r5, r1]
	cmp r0, r2
	bne _0208E872
	add r0, r1, #1
	ldrb r0, [r5, r0]
	cmp r4, r0
	beq _0208E878
_0208E872:
	ldr r0, _0208E8F8 ; =0x000005DC
	bl sub_02005748
_0208E878:
	ldr r1, _0208E8F4 ; =0x000006AF
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_0208E904
	ldr r1, _0208E8FC ; =0x000006B2
	strb r0, [r5, r1]
	add r0, r5, #0
	bl sub_0208FB00
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r4, r0
	beq _0208E89C
	add r0, r5, #0
	bl sub_0208FAA4
_0208E89C:
	add r0, r5, #0
	bl sub_020910E4
	add r0, r5, #0
	bl sub_02090F84
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r0, #0
	ldr r0, _0208E900 ; =0x0000052C
	beq _0208E8BE
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	b _0208E8C6
_0208E8BE:
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
_0208E8C6:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	lsl r1, r1, #2
	add r1, #8
	cmp r1, r0
	bge _0208E8E6
	mov r0, #0x53
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	pop {r4, r5, r6, pc}
_0208E8E6:
	mov r0, #0x53
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
_0208E8F2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208E8F4: .word 0x000006AF
_0208E8F8: .word 0x000005DC
_0208E8FC: .word 0x000006B2
_0208E900: .word 0x0000052C
	thumb_func_end sub_0208E794

	thumb_func_start sub_0208E904
sub_0208E904: ; 0x0208E904
	push {r4, r5, r6, r7}
	mov r2, #0x6b
	lsl r2, r2, #4
	ldrb r2, [r0, r2]
	mov r6, #0
	add r4, r6, #0
	lsl r2, r2, #2
	add r1, r1, r2
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r1, #0xa9
	mov r2, #1
	lsl r1, r1, #2
_0208E91E:
	mov r3, #0x1f
	add r7, r4, #0
	and r7, r3
	add r3, r2, #0
	lsl r3, r7
	lsr r7, r4, #5
	lsl r7, r7, #2
	add r7, r0, r7
	ldr r7, [r7, r1]
	tst r3, r7
	beq _0208E946
	cmp r5, r6
	bne _0208E940
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, r7}
	bx lr
_0208E940:
	add r3, r6, #1
	lsl r3, r3, #0x18
	lsr r6, r3, #0x18
_0208E946:
	add r3, r4, #1
	lsl r3, r3, #0x10
	lsr r4, r3, #0x10
	cmp r4, #0x50
	blo _0208E91E
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208E904

	thumb_func_start sub_0208E958
sub_0208E958: ; 0x0208E958
	push {r4, lr}
	sub sp, #8
	ldr r1, _0208E9B8 ; =0x0000029A
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0xff
	bne _0208E9AA
	mov r0, #0
	sub r1, #0xda
	mov r2, #0x13
	bl sub_02002E98
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _0208E9BC ; =0x000003E2
	mov r1, #1
	mov r3, #0xd
	bl sub_0200DD0C
	add r0, r4, #0
	mov r1, #0xff
	bl sub_02091610
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	strb r1, [r0, #0x17]
	add sp, #8
	mov r0, #0x11
	pop {r4, pc}
_0208E9AA:
	sub r1, #0x4e
	ldr r0, [r4, r1]
	mov r2, #0
	strb r2, [r0, #0x17]
	mov r0, #0x12
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0208E9B8: .word 0x0000029A
_0208E9BC: .word 0x000003E2
	thumb_func_end sub_0208E958

	thumb_func_start sub_0208E9C0
sub_0208E9C0: ; 0x0208E9C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02025EF0
	str r0, [r5, #8]
	add r0, r4, #0
	bl sub_02025F20
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_02025F30
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208E9C0

	thumb_func_start sub_0208E9E0
sub_0208E9E0: ; 0x0208E9E0
	mov r0, #0x40
	bx lr
	thumb_func_end sub_0208E9E0

	thumb_func_start sub_0208E9E4
sub_0208E9E4: ; 0x0208E9E4
	mov r0, #0x41
	bx lr
	thumb_func_end sub_0208E9E4

	thumb_func_start sub_0208E9E8
sub_0208E9E8: ; 0x0208E9E8
	mov r0, #0x3f
	bx lr
	thumb_func_end sub_0208E9E8

	thumb_func_start sub_0208E9EC
sub_0208E9EC: ; 0x0208E9EC
	mov r0, #0x3e
	bx lr
	thumb_func_end sub_0208E9EC

	thumb_func_start sub_0208E9F0
sub_0208E9F0: ; 0x0208E9F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0208EA10
	mov r0, #6
	pop {r3, r4, r5, pc}
_0208EA10:
	mov r0, #0x88
	tst r0, r4
	beq _0208EA1A
	mov r0, #4
	pop {r3, r4, r5, pc}
_0208EA1A:
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	beq _0208EA26
	mov r0, #3
	pop {r3, r4, r5, pc}
_0208EA26:
	mov r1, #0x10
	tst r1, r4
	beq _0208EA30
	mov r0, #5
	pop {r3, r4, r5, pc}
_0208EA30:
	mov r1, #0x20
	tst r1, r4
	beq _0208EA3A
	mov r0, #2
	pop {r3, r4, r5, pc}
_0208EA3A:
	mov r1, #0x40
	tst r1, r4
	beq _0208EA42
	mov r0, #1
_0208EA42:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208E9F0

	.rodata


	.global Unk_020F4048
Unk_020F4048: ; 0x020F4048
	.incbin "incbin/arm9_rodata.bin", 0xF408, 0xF418 - 0xF408

	.global Unk_020F4058
Unk_020F4058: ; 0x020F4058
	.incbin "incbin/arm9_rodata.bin", 0xF418, 0xF434 - 0xF418

	.global Unk_020F4074
Unk_020F4074: ; 0x020F4074
	.incbin "incbin/arm9_rodata.bin", 0xF434, 0xF450 - 0xF434

	.global Unk_020F4090
Unk_020F4090: ; 0x020F4090
	.incbin "incbin/arm9_rodata.bin", 0xF450, 0xF46C - 0xF450

	.global Unk_020F40AC
Unk_020F40AC: ; 0x020F40AC
	.incbin "incbin/arm9_rodata.bin", 0xF46C, 0xF488 - 0xF46C

	.global Unk_020F40C8
Unk_020F40C8: ; 0x020F40C8
	.incbin "incbin/arm9_rodata.bin", 0xF488, 0xF4A4 - 0xF488

	.global Unk_020F40E4
Unk_020F40E4: ; 0x020F40E4
	.incbin "incbin/arm9_rodata.bin", 0xF4A4, 0xF4CC - 0xF4A4

	.global Unk_020F410C
Unk_020F410C: ; 0x020F410C
	.incbin "incbin/arm9_rodata.bin", 0xF4CC, 0x10

