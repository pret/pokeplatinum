	.include "macros/function.inc"
	.include "include/unk_0208EA44.inc"

	

	.text


	thumb_func_start sub_0208EA44
sub_0208EA44: ; 0x0208EA44
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
	mov r1, #0x13
	bl sub_0201DBEC
	mov r0, #0x13
	bl sub_0200C6E4
	ldr r1, _0208EAE0 ; =0x00000414
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_0200C704
	ldr r7, _0208EAE4 ; =0x00000418
	add r2, sp, #0x30
	ldr r3, _0208EAE8 ; =0x020F4160
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _0208EAEC ; =0x020F4130
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
	mov r2, #0x4d
	bl sub_0200C7C0
	ldr r5, _0208EAF0 ; =0x020F4144
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
	nop
_0208EAE0: .word 0x00000414
_0208EAE4: .word 0x00000418
_0208EAE8: .word 0x020F4160
_0208EAEC: .word 0x020F4130
_0208EAF0: .word 0x020F4144
	thumb_func_end sub_0208EA44

	thumb_func_start sub_0208EAF4
sub_0208EAF4: ; 0x0208EAF4
	push {r4, lr}
	ldr r1, _0208EB10 ; =0x00000414
	add r4, r0, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8B0
	ldr r0, _0208EB10 ; =0x00000414
	ldr r0, [r4, r0]
	bl sub_0200C8D4
	pop {r4, pc}
	nop
_0208EB10: .word 0x00000414
	thumb_func_end sub_0208EAF4

	thumb_func_start sub_0208EB14
sub_0208EB14: ; 0x0208EB14
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x47
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, _0208EB5C ; =0x00000474
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	mov r0, #0x13
	lsl r0, r0, #6
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, _0208EB60 ; =0x0000052C
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	mov r0, #0x53
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	pop {r4, pc}
	; .align 2, 0
_0208EB5C: .word 0x00000474
_0208EB60: .word 0x0000052C
	thumb_func_end sub_0208EB14

	thumb_func_start sub_0208EB64
sub_0208EB64: ; 0x0208EB64
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0208EC6C ; =0x020F41A8
	ldr r7, _0208EC70 ; =0x0000041C
	add r5, r0, #0
	mov r4, #0
_0208EB6E:
	ldr r0, _0208EC74 ; =0x00000414
	ldr r1, _0208EC78 ; =0x00000418
	mov r2, #0x28
	mul r2, r4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, r2
	bl sub_0200CA08
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, r7]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x4d
	blo _0208EB6E
	add r0, r5, #0
	bl sub_0208EF0C
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208EC7C ; =0x00000444
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208EC80 ; =0x000004C4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208EC84 ; =0x000004C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208EC88 ; =0x000004CC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208EC8C ; =0x000004D4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208EC90 ; =0x000004D8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208EC94 ; =0x000004DC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208EC98 ; =0x000004E4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208EC9C ; =0x000004E8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208ECA0 ; =0x000004EC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208ECA4 ; =0x00000538
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208ECA8 ; =0x0000053C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #0x15
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208ECAC ; =0x00000544
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208ECB0 ; =0x00000548
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208ECB4 ; =0x0000054C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208EC6C: .word 0x020F41A8
_0208EC70: .word 0x0000041C
_0208EC74: .word 0x00000414
_0208EC78: .word 0x00000418
_0208EC7C: .word 0x00000444
_0208EC80: .word 0x000004C4
_0208EC84: .word 0x000004C8
_0208EC88: .word 0x000004CC
_0208EC8C: .word 0x000004D4
_0208EC90: .word 0x000004D8
_0208EC94: .word 0x000004DC
_0208EC98: .word 0x000004E4
_0208EC9C: .word 0x000004E8
_0208ECA0: .word 0x000004EC
_0208ECA4: .word 0x00000538
_0208ECA8: .word 0x0000053C
_0208ECAC: .word 0x00000544
_0208ECB0: .word 0x00000548
_0208ECB4: .word 0x0000054C
	thumb_func_end sub_0208EB64

	thumb_func_start sub_0208ECB8
sub_0208ECB8: ; 0x0208ECB8
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_0208ECC0:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0208D790
	cmp r0, #0
	beq _0208ECD2
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0208ECD2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _0208ECC0
	sub r0, r5, #1
	lsl r1, r0, #4
	add r1, #0x18
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #0xbc
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0208ECB8

	thumb_func_start sub_0208ECF4
sub_0208ECF4: ; 0x0208ECF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	bl sub_0208ECB8
	str r0, [sp, #4]
	ldr r0, _0208EDBC ; =0x0000041C
	mov r5, #0
	add r4, r7, r0
	ldr r0, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp]
	add r0, #0x18
	str r0, [sp]
_0208ED10:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0208D790
	cmp r0, #0
	bne _0208ED28
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	b _0208EDAE
_0208ED28:
	lsl r6, r5, #2
	ldr r0, [r4, r6]
	bl sub_02021E24
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0208EDC0 ; =0x000006A4
	ldrsb r0, [r7, r0]
	cmp r0, r5
	bne _0208ED4A
	cmp r1, #8
	bhs _0208ED56
	ldr r0, [r4, r6]
	add r1, #8
	bl sub_02021D6C
	b _0208ED56
_0208ED4A:
	cmp r1, #8
	blo _0208ED56
	ldr r0, [r4, r6]
	sub r1, #8
	bl sub_02021D6C
_0208ED56:
	add r1, sp, #0xc
	ldr r0, [r4, r6]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D50C
	ldr r0, _0208EDC0 ; =0x000006A4
	ldrsb r0, [r7, r0]
	cmp r0, r5
	blt _0208ED72
	ldr r0, [sp, #8]
	lsl r1, r0, #4
	ldr r0, [sp, #4]
	b _0208ED7A
_0208ED72:
	ldr r0, [sp, #8]
	sub r0, r0, #1
	lsl r1, r0, #4
	ldr r0, [sp]
_0208ED7A:
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r0, sp, #0xc
	strh r1, [r0, #2]
	lsl r0, r5, #2
	add r1, r7, r0
	ldr r0, _0208EDBC ; =0x0000041C
	add r2, sp, #0xc
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	bl sub_0200D494
	ldr r0, [r4, r6]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
_0208EDAE:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0208ED10
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208EDBC: .word 0x0000041C
_0208EDC0: .word 0x000006A4
	thumb_func_end sub_0208ECF4

	thumb_func_start sub_0208EDC4
sub_0208EDC4: ; 0x0208EDC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0208D7BC
	cmp r0, #1
	bhi _0208EDD8
	add r0, r5, #0
	mov r1, #0
	bl sub_0208EE10
_0208EDD8:
	add r0, r5, #0
	bl sub_0208ECB8
	add r4, r0, #0
	mov r0, #0x47
	add r1, r4, #0
	lsl r0, r0, #4
	sub r1, #0xc
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl sub_0200D494
	mov r1, #0x5d
	ldr r0, _0208EE0C ; =0x00000474
	lsl r1, r1, #2
	sub r1, r1, r4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl sub_0200D494
	pop {r3, r4, r5, pc}
	nop
_0208EE0C: .word 0x00000474
	thumb_func_end sub_0208EDC4

	thumb_func_start sub_0208EE10
sub_0208EE10: ; 0x0208EE10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208D7BC
	cmp r0, #1
	bhi _0208EE20
	mov r4, #0
_0208EE20:
	mov r0, #0x47
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021CAC
	ldr r0, _0208EE38 ; =0x00000474
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208EE38: .word 0x00000474
	thumb_func_end sub_0208EE10

	thumb_func_start sub_0208EE3C
sub_0208EE3C: ; 0x0208EE3C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0208EE90 ; =0x00000263
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r3, r0, #0x1a
	bne _0208EE50
	mov r3, #0x15
	b _0208EE52
_0208EE50:
	add r3, #0x14
_0208EE52:
	mov r0, #0
	str r0, [sp]
	ldr r1, _0208EE94 ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x27
	bl sub_0200D948
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	ldr r3, _0208EE90 ; =0x00000263
	str r0, [sp, #4]
	ldrb r3, [r4, r3]
	ldr r1, _0208EE94 ; =0x00000414
	mov r2, #0x27
	ldr r0, [r4, r1]
	add r1, r1, #4
	lsl r3, r3, #0x18
	ldr r1, [r4, r1]
	lsr r4, r3, #0x1a
	ldr r3, _0208EE98 ; =0x020F411C
	ldrb r3, [r3, r4]
	add r3, #0x25
	bl sub_0200D97C
	add sp, #8
	pop {r4, pc}
	nop
_0208EE90: .word 0x00000263
_0208EE94: .word 0x00000414
_0208EE98: .word 0x020F411C
	thumb_func_end sub_0208EE3C

	thumb_func_start sub_0208EE9C
sub_0208EE9C: ; 0x0208EE9C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	lsr r0, r0, #4
	cmp r0, #7
	bne _0208EEC4
	ldr r0, _0208EF04 ; =0x0000046C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208EF08 ; =0x0000054C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r4, pc}
_0208EEC4:
	cmp r0, #0
	ldr r0, _0208EF08 ; =0x0000054C
	beq _0208EEF0
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208EF04 ; =0x0000046C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r1, #0x2a
	lsl r1, r1, #4
	ldr r0, _0208EF04 ; =0x0000046C
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	lsl r1, r1, #4
	lsr r1, r1, #4
	bl sub_02021D6C
	pop {r4, pc}
_0208EEF0:
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _0208EF04 ; =0x0000046C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r4, pc}
	; .align 2, 0
_0208EF04: .word 0x0000046C
_0208EF08: .word 0x0000054C
	thumb_func_end sub_0208EE9C

	thumb_func_start sub_0208EF0C
sub_0208EF0C: ; 0x0208EF0C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0208F16C
	mov r6, #0xa1
	mov r4, #0
	mov r7, #3
	lsl r6, r6, #2
_0208EF1C:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, r6]
	cmp r0, #0
	beq _0208EF46
	add r1, r7, #0
	bl sub_020790C4
	add r3, r0, #0
	add r1, r4, #0
	add r1, #0xd
	add r2, r4, #5
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0208F194
_0208EF46:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0208EF1C
	add r0, r5, #0
	bl sub_0208F71C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208EF0C

	thumb_func_start sub_0208EF58
sub_0208EF58: ; 0x0208EF58
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0208F158 ; =0x0000041C
	add r5, r0, #0
	mov r4, #0xb
	mov r7, #0
_0208EF62:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_0200D3EC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x13
	bls _0208EF62
	ldr r0, _0208F15C ; =0x000006A4
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0208EF8C
	cmp r0, #3
	beq _0208EFD4
	cmp r0, #5
	bne _0208EF8A
	b _0208F094
_0208EF8A:
	pop {r3, r4, r5, r6, r7, pc}
_0208EF8C:
	ldr r0, _0208F160 ; =0x00000448
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D3EC
	mov r0, #0x26
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	cmp r1, r0
	ldr r0, _0208F160 ; =0x00000448
	bne _0208EFB2
	ldr r0, [r5, r0]
	mov r1, #0xd8
	mov r2, #0x50
	bl sub_0200D494
	pop {r3, r4, r5, r6, r7, pc}
_0208EFB2:
	ldr r0, [r5, r0]
	mov r1, #0xc7
	mov r2, #0x50
	bl sub_0200D494
	ldr r0, _0208F164 ; =0x0000044C
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D3EC
	ldr r0, _0208F164 ; =0x0000044C
	mov r1, #0xe9
	ldr r0, [r5, r0]
	mov r2, #0x50
	bl sub_0200D494
	pop {r3, r4, r5, r6, r7, pc}
_0208EFD4:
	mov r7, #0xa1
	mov r4, #0
	lsl r7, r7, #2
_0208EFDA:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, r7]
	cmp r0, #0
	beq _0208F028
	mov r1, #3
	bl sub_020790C4
	add r3, r0, #0
	add r1, r4, #0
	add r1, #0xd
	add r2, r4, #5
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0208F194
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0200D3EC
	mov r0, #0x45
	lsl r2, r4, #5
	lsl r0, r0, #4
	add r2, #0x2a
	lsl r2, r2, #0x10
	ldr r0, [r6, r0]
	mov r1, #0x97
	asr r2, r2, #0x10
	bl sub_0200D494
_0208F028:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0208EFDA
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0208F06E
	mov r1, #3
	bl sub_020790C4
	add r3, r0, #0
	lsl r3, r3, #0x18
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #9
	lsr r3, r3, #0x18
	bl sub_0208F194
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D3EC
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0xaa
	bl sub_0200D494
_0208F06E:
	ldr r0, _0208F160 ; =0x00000448
	mov r1, #0x3f
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl sub_0200D494
	ldr r0, _0208F164 ; =0x0000044C
	mov r1, #0x61
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl sub_0200D494
	ldr r0, _0208F168 ; =0x00000464
	mov r1, #0x6c
	ldr r0, [r5, r0]
	mov r2, #0x48
	bl sub_0200D494
	pop {r3, r4, r5, r6, r7, pc}
_0208F094:
	mov r7, #0xa1
	mov r4, #0
	lsl r7, r7, #2
_0208F09A:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, r7]
	cmp r0, #0
	beq _0208F0EA
	mov r1, #0xb
	bl sub_020790C4
	add r3, r0, #0
	add r1, r4, #0
	add r1, #0xd
	add r2, r4, #5
	add r3, #0x12
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0208F194
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0200D3EC
	mov r0, #0x45
	lsl r2, r4, #5
	lsl r0, r0, #4
	add r2, #0x2a
	lsl r2, r2, #0x10
	ldr r0, [r6, r0]
	mov r1, #0x97
	asr r2, r2, #0x10
	bl sub_0200D494
_0208F0EA:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0208F09A
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0208F132
	mov r1, #0xb
	bl sub_020790C4
	add r3, r0, #0
	add r3, #0x12
	lsl r3, r3, #0x18
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #9
	lsr r3, r3, #0x18
	bl sub_0208F194
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D3EC
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0xaa
	bl sub_0200D494
_0208F132:
	ldr r0, _0208F160 ; =0x00000448
	mov r1, #0x3f
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl sub_0200D494
	ldr r0, _0208F164 ; =0x0000044C
	mov r1, #0x61
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl sub_0200D494
	ldr r0, _0208F168 ; =0x00000464
	mov r1, #0x6c
	ldr r0, [r5, r0]
	mov r2, #0x48
	bl sub_0200D494
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208F158: .word 0x0000041C
_0208F15C: .word 0x000006A4
_0208F160: .word 0x00000448
_0208F164: .word 0x0000044C
_0208F168: .word 0x00000464
	thumb_func_end sub_0208EF58

	thumb_func_start sub_0208F16C
sub_0208F16C: ; 0x0208F16C
	push {r4, lr}
	mov r3, #0x26
	add r4, r0, #0
	lsl r3, r3, #4
	ldrb r3, [r4, r3]
	mov r1, #0xb
	mov r2, #3
	bl sub_0208F194
	ldr r3, _0208F190 ; =0x00000261
	add r0, r4, #0
	ldrb r3, [r4, r3]
	mov r1, #0xc
	mov r2, #4
	bl sub_0208F194
	pop {r4, pc}
	nop
_0208F190: .word 0x00000261
	thumb_func_end sub_0208F16C

	thumb_func_start sub_0208F194
sub_0208F194: ; 0x0208F194
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r3, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0207C944
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_0207C908
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r1, _0208F1DC ; =0x00000414
	str r6, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [sp, #8]
	bl sub_0200D948
	add r0, r7, #0
	bl sub_0207C92C
	add r2, r0, #0
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208F1E0 ; =0x0000041C
	ldr r0, [r1, r0]
	add r1, r2, #3
	bl sub_0200D414
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0208F1DC: .word 0x00000414
_0208F1E0: .word 0x0000041C
	thumb_func_end sub_0208F194

	thumb_func_start sub_0208F1E4
sub_0208F1E4: ; 0x0208F1E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	ldrb r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	lsl r0, r0, #5
	add r0, #0x2a
	lsl r0, r0, #0x10
	add r4, r3, #0
	asr r7, r0, #0x10
	mov r6, #0
_0208F1FE:
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl sub_0200D50C
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r7, r0
	bne _0208F21C
	ldr r0, [sp]
	add sp, #8
	strb r6, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_0208F21C:
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r5, r5, #4
	cmp r6, #4
	blt _0208F1FE
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208F1E4

	thumb_func_start sub_0208F22C
sub_0208F22C: ; 0x0208F22C
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, #8
	add r2, sp, #4
	add r1, sp, #0x14
	add r2, #2
	add r3, sp, #4
	add r4, r0, #0
	bl sub_0208F1E4
	add r2, sp, #0
	add r0, r4, #0
	add r1, sp, #0x18
	add r2, #2
	add r3, sp, #0
	bl sub_0208F1E4
	add r0, sp, #0x10
	ldrb r0, [r0, #4]
	add r3, sp, #0
	mov r2, #0
	add r0, #0xd
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208F290 ; =0x0000041C
	ldrsh r2, [r3, r2]
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r3, r1]
	bl sub_0200D494
	add r0, sp, #0x10
	ldrb r0, [r0, #8]
	add r3, sp, #0
	mov r2, #4
	add r0, #0xd
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208F290 ; =0x0000041C
	ldrsh r2, [r3, r2]
	ldr r0, [r1, r0]
	mov r1, #6
	ldrsh r1, [r3, r1]
	bl sub_0200D494
	add sp, #8
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_0208F290: .word 0x0000041C
	thumb_func_end sub_0208F22C

	thumb_func_start sub_0208F294
sub_0208F294: ; 0x0208F294
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl sub_020790C4
	add r4, r0, #0
	bl sub_0207CAC0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0207CA90
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa
	ldr r1, _0208F2E0 ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200D948
	add r0, r4, #0
	bl sub_0207CAA8
	add r1, r0, #0
	ldr r0, _0208F2E4 ; =0x00000464
	add r1, r1, #3
	ldr r0, [r5, r0]
	bl sub_0200D414
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0208F2E0: .word 0x00000414
_0208F2E4: .word 0x00000464
	thumb_func_end sub_0208F294

	thumb_func_start sub_0208F2E8
sub_0208F2E8: ; 0x0208F2E8
	ldr r2, _0208F308 ; =0x000006A5
	add r3, r0, #0
	ldrb r2, [r3, r2]
	mov r0, #0x11
	lsl r0, r0, #6
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	lsl r2, r2, #5
	ldr r0, [r3, r0]
	add r2, #0x30
	lsl r2, r2, #0x10
	ldr r3, _0208F30C ; =sub_0200D494
	mov r1, #0xc2
	asr r2, r2, #0x10
	bx r3
	nop
_0208F308: .word 0x000006A5
_0208F30C: .word sub_0200D494
	thumb_func_end sub_0208F2E8

	thumb_func_start sub_0208F310
sub_0208F310: ; 0x0208F310
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x11
	lsl r0, r0, #6
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D50C
	ldr r0, _0208F348 ; =0x00000444
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	bl sub_0200D494
	ldr r0, _0208F348 ; =0x00000444
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
	nop
_0208F348: .word 0x00000444
	thumb_func_end sub_0208F310

	thumb_func_start sub_0208F34C
sub_0208F34C: ; 0x0208F34C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0208F3A4 ; =0x000006A8
	mov r1, #0
	strb r1, [r0, r2]
	add r3, r2, #3
	strb r1, [r0, r3]
	add r3, r2, #2
	strb r1, [r0, r3]
	ldr r3, _0208F3A8 ; =0x0000029A
	ldrb r3, [r0, r3]
	cmp r3, #0
	bne _0208F36A
	add r2, r2, #1
	strb r1, [r0, r2]
	b _0208F380
_0208F36A:
	cmp r3, #0xff
	bne _0208F376
	mov r3, #0xc
	add r1, r2, #1
	strb r3, [r0, r1]
	b _0208F380
_0208F376:
	mov r1, #0xc
	mul r1, r3
	asr r3, r1, #8
	add r1, r2, #1
	strb r3, [r0, r1]
_0208F380:
	ldr r7, _0208F3AC ; =0x0000041C
	add r5, r0, #0
	mov r4, #0x1d
	add r5, #0x74
	add r6, r7, #0
_0208F38A:
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_02021E50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x28
	bls _0208F38A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208F3A4: .word 0x000006A8
_0208F3A8: .word 0x0000029A
_0208F3AC: .word 0x0000041C
	thumb_func_end sub_0208F34C

	thumb_func_start sub_0208F3B0
sub_0208F3B0: ; 0x0208F3B0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0208F560 ; =0x000006A4
	ldrsb r1, [r4, r0]
	cmp r1, #4
	bne _0208F3C4
	add r1, r0, #5
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0208F3C6
_0208F3C4:
	b _0208F55C
_0208F3C6:
	add r2, r0, #4
	ldrb r2, [r4, r2]
	cmp r2, #4
	bhi _0208F3F4
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0208F3DA: ; jump table
	.short _0208F3E4 - _0208F3DA - 2 ; case 0
	.short _0208F408 - _0208F3DA - 2 ; case 1
	.short _0208F478 - _0208F3DA - 2 ; case 2
	.short _0208F498 - _0208F3DA - 2 ; case 3
	.short _0208F4F2 - _0208F3DA - 2 ; case 4
_0208F3E4:
	add r1, r0, #7
	ldrb r1, [r4, r1]
	add r2, r1, #1
	add r1, r0, #7
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #8
	beq _0208F3F6
_0208F3F4:
	b _0208F510
_0208F3F6:
	mov r2, #1
	add r1, r0, #4
	strb r2, [r4, r1]
	add r1, r0, #7
	mov r2, #0
	strb r2, [r4, r1]
	add r0, r0, #6
	strb r2, [r4, r0]
	b _0208F510
_0208F408:
	add r1, r0, #7
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0208F466
	add r0, r0, #6
	ldrb r0, [r4, r0]
	add r0, #0x1d
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208F564 ; =0x0000041C
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _0208F568 ; =0x000006AA
	ldrb r0, [r4, r0]
	add r0, #0x1d
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208F564 ; =0x0000041C
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021E50
	ldr r0, _0208F568 ; =0x000006AA
	ldrb r0, [r4, r0]
	add r0, #0x1d
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208F564 ; =0x0000041C
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, _0208F568 ; =0x000006AA
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	sub r1, r0, #1
	ldrb r2, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r2, r1
	bne _0208F466
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r4, r0]
	b _0208F510
_0208F466:
	ldr r0, _0208F56C ; =0x000006AB
	mov r1, #0xa
	ldrb r0, [r4, r0]
	add r0, r0, #1
	bl sub_020E1F6C
	ldr r0, _0208F56C ; =0x000006AB
	strb r1, [r4, r0]
	b _0208F510
_0208F478:
	add r1, #0x1c
	lsl r0, r1, #2
	add r1, r4, r0
	ldr r0, _0208F564 ; =0x0000041C
	ldr r0, [r1, r0]
	bl sub_02021D34
	cmp r0, #0
	bne _0208F510
	ldr r0, _0208F56C ; =0x000006AB
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #3
	sub r0, r0, #3
	strb r1, [r4, r0]
	b _0208F510
_0208F498:
	add r1, r0, #7
	ldrb r1, [r4, r1]
	add r2, r1, #1
	add r1, r0, #7
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x20
	bne _0208F510
	add r0, r0, #5
	ldrb r0, [r4, r0]
	mov r6, #0x1d
	add r0, #0x1d
	cmp r0, #0x1d
	bls _0208F4E4
	add r5, r4, #0
	ldr r7, _0208F570 ; =0x000006A9
	add r5, #0x74
_0208F4BA:
	ldr r0, _0208F564 ; =0x0000041C
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208F564 ; =0x0000041C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021E50
	ldr r0, _0208F564 ; =0x0000041C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldrb r0, [r4, r7]
	add r6, r6, #1
	add r5, r5, #4
	add r0, #0x1d
	cmp r6, r0
	blo _0208F4BA
_0208F4E4:
	ldr r0, _0208F56C ; =0x000006AB
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #4
	sub r0, r0, #3
	strb r1, [r4, r0]
	b _0208F510
_0208F4F2:
	add r1, r0, #7
	ldrb r1, [r4, r1]
	add r2, r1, #1
	add r1, r0, #7
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x20
	bne _0208F510
	mov r2, #0
	add r1, r0, #4
	strb r2, [r4, r1]
	add r1, r0, #7
	strb r2, [r4, r1]
	add r0, r0, #6
	strb r2, [r4, r0]
_0208F510:
	ldr r0, _0208F570 ; =0x000006A9
	mov r6, #0x1d
	ldrb r0, [r4, r0]
	add r0, #0x1d
	cmp r0, #0x1d
	bls _0208F55C
	add r5, r4, #0
	ldr r7, _0208F564 ; =0x0000041C
	add r5, #0x74
_0208F522:
	ldr r0, [r5, r7]
	bl sub_02021D34
	cmp r0, #0
	beq _0208F54E
	ldr r0, _0208F564 ; =0x0000041C
	mov r1, #1
	ldr r0, [r5, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, _0208F564 ; =0x0000041C
	ldr r0, [r5, r0]
	bl sub_02021E74
	cmp r0, #6
	bne _0208F54E
	ldr r0, _0208F564 ; =0x0000041C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
_0208F54E:
	ldr r0, _0208F570 ; =0x000006A9
	add r6, r6, #1
	ldrb r0, [r4, r0]
	add r5, r5, #4
	add r0, #0x1d
	cmp r6, r0
	blo _0208F522
_0208F55C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208F560: .word 0x000006A4
_0208F564: .word 0x0000041C
_0208F568: .word 0x000006AA
_0208F56C: .word 0x000006AB
_0208F570: .word 0x000006A9
	thumb_func_end sub_0208F3B0

	thumb_func_start sub_0208F574
sub_0208F574: ; 0x0208F574
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	mov r7, #1
_0208F57E:
	mov r0, #0xa7
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	add r0, r7, #0
	lsl r0, r4
	tst r0, r1
	ldr r0, _0208F5F8 ; =0x00000478
	beq _0208F598
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_02021D6C
	b _0208F5A0
_0208F598:
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021D6C
_0208F5A0:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _0208F57E
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	lsl r1, r0, #2
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _0208F5CA
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0208F5CA
	mov r0, #0x4f
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0200D3EC
	b _0208F5D6
_0208F5CA:
	mov r0, #0x4f
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0200D3EC
_0208F5D6:
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	lsr r0, r0, #0x1e
	cmp r0, #2
	ldr r0, _0208F5FC ; =0x000004F4
	bne _0208F5EE
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0200D3EC
	pop {r3, r4, r5, r6, r7, pc}
_0208F5EE:
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0200D3EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208F5F8: .word 0x00000478
_0208F5FC: .word 0x000004F4
	thumb_func_end sub_0208F574

	thumb_func_start sub_0208F600
sub_0208F600: ; 0x0208F600
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021E50
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021D6C
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0
	bl sub_02092368
	ldr r0, _0208F680 ; =0x000006A7
	add r3, sp, #0
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bne _0208F65E
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #6
	add r2, #0xc0
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	ldr r0, [r4, r0]
	asr r2, r2, #0x10
	bl sub_0200D494
	add sp, #4
	pop {r3, r4, pc}
_0208F65E:
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	mov r0, #0x13
	lsl r0, r0, #6
	sub r1, r1, #4
	add r2, #0xc0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0208F680: .word 0x000006A7
	thumb_func_end sub_0208F600

	thumb_func_start sub_0208F684
sub_0208F684: ; 0x0208F684
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02021E74
	cmp r0, #2
	bne _0208F6A2
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_0208F6A2:
	pop {r4, pc}
	thumb_func_end sub_0208F684

	thumb_func_start sub_0208F6A4
sub_0208F6A4: ; 0x0208F6A4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0208F6D4 ; =0x000006A6
	add r5, r0, #0
	mov r4, #0
	mov r6, #1
_0208F6AE:
	add r0, r6, #0
	ldrb r1, [r5, r7]
	lsl r0, r4
	tst r0, r1
	beq _0208F6C6
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208F6D8 ; =0x000004C4
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_02021CAC
_0208F6C6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0208F6AE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208F6D4: .word 0x000006A6
_0208F6D8: .word 0x000004C4
	thumb_func_end sub_0208F6A4

	thumb_func_start sub_0208F6DC
sub_0208F6DC: ; 0x0208F6DC
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _0208F6F0
	ldr r0, _0208F718 ; =0x000004D8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r4, pc}
_0208F6F0:
	add r0, r1, #0
	bl sub_0201C29C
	add r1, r0, #0
	ldr r0, _0208F718 ; =0x000004D8
	lsl r1, r1, #3
	sub r1, #0xa
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	mov r2, #8
	bl sub_0200D494
	ldr r0, _0208F718 ; =0x000004D8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r4, pc}
	nop
_0208F718: .word 0x000004D8
	thumb_func_end sub_0208F6DC

	thumb_func_start sub_0208F71C
sub_0208F71C: ; 0x0208F71C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0208DD48
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r1, [r1, #0x11]
	cmp r1, #2
	bne _0208F738
	bl sub_02079D40
	b _0208F73C
_0208F738:
	bl sub_02079D80
_0208F73C:
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb
	ldr r1, _0208F79C ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	bl sub_0200D948
	mov r2, #0x97
	lsl r2, r2, #2
	add r1, r2, #0
	ldrh r0, [r4, r2]
	add r2, #0x44
	add r1, #0x42
	ldr r2, [r4, r2]
	ldrh r1, [r4, r1]
	lsl r2, r2, #3
	lsr r2, r2, #0x1f
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, _0208F7A0 ; =0x00000468
	add r1, r1, #7
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r1, #0x97
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	add r1, #0x42
	ldrh r1, [r4, r1]
	mov r2, #0x1c
	bl sub_020759CC
	add r2, r0, #0
	ldr r0, _0208F7A0 ; =0x00000468
	mov r1, #1
	ldr r0, [r4, r0]
	eor r1, r2
	bl sub_02021D0C
	add sp, #8
	pop {r4, pc}
	nop
_0208F79C: .word 0x00000414
_0208F7A0: .word 0x00000468
	thumb_func_end sub_0208F71C

	thumb_func_start sub_0208F7A4
sub_0208F7A4: ; 0x0208F7A4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02079FD0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	ldr r1, _0208F7F4 ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	bl sub_0200D97C
	ldr r0, _0208F7F8 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #3
	ldr r0, _0208F7FC ; =0x00000468
	bne _0208F7DC
	ldr r0, [r4, r0]
	mov r1, #0x18
	mov r2, #0x30
	bl sub_0200D494
	b _0208F7E6
_0208F7DC:
	ldr r0, [r4, r0]
	mov r1, #0x20
	mov r2, #0x44
	bl sub_0200D494
_0208F7E6:
	ldr r0, _0208F7FC ; =0x00000468
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0208F7F4: .word 0x00000414
_0208F7F8: .word 0x000006A4
_0208F7FC: .word 0x00000468
	thumb_func_end sub_0208F7A4

	thumb_func_start sub_0208F800
sub_0208F800: ; 0x0208F800
	push {r4, lr}
	add r4, r2, #0
	cmp r4, r1
	ble _0208F826
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
_0208F826:
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
	thumb_func_end sub_0208F800

	thumb_func_start sub_0208F844
sub_0208F844: ; 0x0208F844
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0208F944 ; =0x00000295
	mov r1, #0x58
	ldrb r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208F800
	add r5, r0, #0
	ldr r0, _0208F944 ; =0x00000295
	mov r1, #0x31
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208F800
	add r2, r0, #0
	ldr r0, _0208F948 ; =0x000004DC
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0200D494
	ldr r0, _0208F94C ; =0x00000296
	mov r1, #0x6e
	ldrb r0, [r4, r0]
	mov r2, #0x58
	bl sub_0208F800
	add r5, r0, #0
	ldr r0, _0208F94C ; =0x00000296
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208F800
	add r2, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200D494
	ldr r0, _0208F950 ; =0x00000297
	mov r1, #0x67
	ldrb r0, [r4, r0]
	mov r2, #0x58
	bl sub_0208F800
	add r5, r0, #0
	ldr r0, _0208F950 ; =0x00000297
	mov r1, #0x5c
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208F800
	add r2, r0, #0
	ldr r0, _0208F954 ; =0x000004E4
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0200D494
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	mov r1, #0x48
	mov r2, #0x57
	bl sub_0208F800
	add r5, r0, #0
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	mov r1, #0x5c
	mov r2, #0x49
	bl sub_0208F800
	add r2, r0, #0
	ldr r0, _0208F958 ; =0x000004E8
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0200D494
	ldr r0, _0208F95C ; =0x00000299
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x57
	bl sub_0208F800
	add r5, r0, #0
	ldr r0, _0208F95C ; =0x00000299
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208F800
	add r2, r0, #0
	ldr r0, _0208F960 ; =0x000004EC
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0200D494
	ldr r0, _0208F948 ; =0x000004DC
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _0208F954 ; =0x000004E4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208F958 ; =0x000004E8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208F960 ; =0x000004EC
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	nop
_0208F944: .word 0x00000295
_0208F948: .word 0x000004DC
_0208F94C: .word 0x00000296
_0208F950: .word 0x00000297
_0208F954: .word 0x000004E4
_0208F958: .word 0x000004E8
_0208F95C: .word 0x00000299
_0208F960: .word 0x000004EC
	thumb_func_end sub_0208F844

	thumb_func_start sub_0208F964
sub_0208F964: ; 0x0208F964
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208F9A0 ; =0x000004DC
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208F9A4 ; =0x000004E4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208F9A8 ; =0x000004E8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208F9AC ; =0x000004EC
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r4, pc}
	nop
_0208F9A0: .word 0x000004DC
_0208F9A4: .word 0x000004E4
_0208F9A8: .word 0x000004E8
_0208F9AC: .word 0x000004EC
	thumb_func_end sub_0208F964

	thumb_func_start sub_0208F9B0
sub_0208F9B0: ; 0x0208F9B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	add r4, r2, #0
	bl sub_020923C0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x1a
	ldr r1, _0208F9FC ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x27
	bl sub_0200D948
	add r0, r6, #0
	mov r1, #2
	bl sub_020923C0
	add r4, #0x37
	add r2, r0, #0
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208FA00 ; =0x0000041C
	ldr r0, [r1, r0]
	add r1, r2, #7
	bl sub_0200D414
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0208F9FC: .word 0x00000414
_0208FA00: .word 0x0000041C
	thumb_func_end sub_0208F9B0

	thumb_func_start sub_0208FA04
sub_0208FA04: ; 0x0208FA04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _0208FA8C ; =0x0000041C
	add r5, r0, #0
	mov r4, #0x37
	mov r7, #0
_0208FA10:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x46
	bls _0208FA10
	ldr r0, _0208FA90 ; =0x000006A4
	ldrsb r0, [r5, r0]
	cmp r0, #6
	bne _0208FA88
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	ldr r1, _0208FA94 ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x27
	mov r3, #0x88
	bl sub_0200D97C
	ldr r7, _0208FA98 ; =0x000004F8
	ldr r6, _0208FA9C ; =0x000006B1
	mov r4, #0
_0208FA4C:
	ldrb r0, [r5, r6]
	cmp r4, r0
	bge _0208FA74
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #1
	bl sub_02021CAC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0208E904
	lsl r2, r4, #0x18
	add r1, r0, #0
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_0208F9B0
_0208FA74:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xc
	blo _0208FA4C
	ldr r0, _0208FAA0 ; =0x00000534
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021D6C
_0208FA88:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208FA8C: .word 0x0000041C
_0208FA90: .word 0x000006A4
_0208FA94: .word 0x00000414
_0208FA98: .word 0x000004F8
_0208FA9C: .word 0x000006B1
_0208FAA0: .word 0x00000534
	thumb_func_end sub_0208FA04

	thumb_func_start sub_0208FAA4
sub_0208FAA4: ; 0x0208FAA4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x6b
	lsl r7, r7, #4
	add r5, r0, #0
	mov r4, #0
	add r6, r7, #1
_0208FAB0:
	ldrb r0, [r5, r7]
	lsl r0, r0, #2
	add r1, r4, r0
	ldrb r0, [r5, r6]
	cmp r1, r0
	bge _0208FAE2
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208FAFC ; =0x000004F8
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0208E904
	lsl r2, r4, #0x18
	add r1, r0, #0
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_0208F9B0
	b _0208FAF0
_0208FAE2:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208FAFC ; =0x000004F8
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
_0208FAF0:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #8
	blo _0208FAB0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208FAFC: .word 0x000004F8
	thumb_func_end sub_0208FAA4

	thumb_func_start sub_0208FB00
sub_0208FB00: ; 0x0208FB00
	ldr r1, _0208FB24 ; =0x000006AF
	ldrb r2, [r0, r1]
	ldr r1, _0208FB28 ; =0x00000528
	ldr r0, [r0, r1]
	lsl r1, r2, #0x1e
	lsr r3, r2, #2
	mov r2, #0x28
	mul r2, r3
	lsr r1, r1, #0x19
	add r1, #0x84
	add r2, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r3, _0208FB2C ; =sub_0200D494
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bx r3
	nop
_0208FB24: .word 0x000006AF
_0208FB28: .word 0x00000528
_0208FB2C: .word sub_0200D494
	thumb_func_end sub_0208FB00

	thumb_func_start sub_0208FB30
sub_0208FB30: ; 0x0208FB30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208FB50 ; =0x00000534
	ldr r0, [r4, r0]
	bl sub_02021D34
	cmp r0, #1
	bne _0208FB4C
	ldr r0, _0208FB50 ; =0x00000534
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
_0208FB4C:
	pop {r4, pc}
	nop
_0208FB50: .word 0x00000534
	thumb_func_end sub_0208FB30

	thumb_func_start sub_0208FB54
sub_0208FB54: ; 0x0208FB54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _0208FB7A
	mov r4, #0
	ldr r6, _0208FBFC ; =0x00000538
	add r7, r4, #0
_0208FB62:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _0208FB62
	pop {r3, r4, r5, r6, r7, pc}
_0208FB7A:
	ldr r0, _0208FC00 ; =0x00000295
	ldrb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	add r4, r1, #0
	cmp r1, r0
	bge _0208FB8A
	add r4, r0, #0
_0208FB8A:
	ldr r0, _0208FC04 ; =0x00000297
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0208FB94
	add r4, r0, #0
_0208FB94:
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0208FBA0
	add r4, r0, #0
_0208FBA0:
	ldr r0, _0208FC08 ; =0x00000299
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0208FBAA
	add r4, r0, #0
_0208FBAA:
	ldr r0, _0208FBFC ; =0x00000538
	ldr r3, _0208FC0C ; =0x020F4180
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl sub_0208FC30
	ldr r1, _0208FC10 ; =0x00000296
	ldr r0, _0208FC14 ; =0x0000053C
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r3, _0208FC18 ; =0x020F4188
	add r2, r4, #0
	bl sub_0208FC30
	ldr r1, _0208FC04 ; =0x00000297
	mov r0, #0x15
	lsl r0, r0, #6
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r3, _0208FC1C ; =0x020F4190
	add r2, r4, #0
	bl sub_0208FC30
	mov r1, #0xa6
	ldr r0, _0208FC20 ; =0x00000544
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r3, _0208FC24 ; =0x020F4198
	add r2, r4, #0
	bl sub_0208FC30
	ldr r1, _0208FC08 ; =0x00000299
	ldr r0, _0208FC28 ; =0x00000548
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r3, _0208FC2C ; =0x020F41A0
	add r2, r4, #0
	bl sub_0208FC30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208FBFC: .word 0x00000538
_0208FC00: .word 0x00000295
_0208FC04: .word 0x00000297
_0208FC08: .word 0x00000299
_0208FC0C: .word 0x020F4180
_0208FC10: .word 0x00000296
_0208FC14: .word 0x0000053C
_0208FC18: .word 0x020F4188
_0208FC1C: .word 0x020F4190
_0208FC20: .word 0x00000544
_0208FC24: .word 0x020F4198
_0208FC28: .word 0x00000548
_0208FC2C: .word 0x020F41A0
	thumb_func_end sub_0208FB54

	thumb_func_start sub_0208FC30
sub_0208FC30: ; 0x0208FC30
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r3, #0
	cmp r5, #0
	beq _0208FC40
	cmp r5, r2
	beq _0208FC4A
_0208FC40:
	add r0, r6, #0
	mov r1, #0
	bl sub_02021CAC
	pop {r4, r5, r6, pc}
_0208FC4A:
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r1, r0
	blt _0208FC70
	sub r1, r1, r0
	lsl r2, r1, #8
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	mul r1, r5
	lsr r1, r1, #8
	add r1, r0, r1
	b _0208FC82
_0208FC70:
	sub r1, r0, r1
	lsl r2, r1, #8
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	mul r1, r5
	lsr r1, r1, #8
	sub r1, r0, r1
_0208FC82:
	mov r0, #2
	ldrsh r2, [r4, r0]
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r2, r0
	blt _0208FCA2
	sub r2, r2, r0
	lsl r3, r2, #8
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	asr r2, r2, #8
	mul r2, r5
	lsr r2, r2, #8
	add r2, r0, r2
	b _0208FCB4
_0208FCA2:
	sub r2, r0, r2
	lsl r3, r2, #8
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	asr r2, r2, #8
	mul r2, r5
	lsr r2, r2, #8
	sub r2, r0, r2
_0208FCB4:
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	add r0, r6, #0
	mov r1, #0
	bl sub_02021E50
	add r0, r6, #0
	mov r1, #0
	bl sub_02021D6C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0208FC30

	thumb_func_start sub_0208FCD4
sub_0208FCD4: ; 0x0208FCD4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	ldr r6, _0208FCF4 ; =0x00000538
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #0xc
_0208FCE0:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl sub_02021E2C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blo _0208FCE0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208FCF4: .word 0x00000538
	thumb_func_end sub_0208FCD4

	.rodata


	.global Unk_020F411C
Unk_020F411C: ; 0x020F411C
	.incbin "incbin/arm9_rodata.bin", 0xF4DC, 0xF4F0 - 0xF4DC

	.global Unk_020F4130
Unk_020F4130: ; 0x020F4130
	.incbin "incbin/arm9_rodata.bin", 0xF4F0, 0xF504 - 0xF4F0

	.global Unk_020F4144
Unk_020F4144: ; 0x020F4144
	.incbin "incbin/arm9_rodata.bin", 0xF504, 0xF520 - 0xF504

	.global Unk_020F4160
Unk_020F4160: ; 0x020F4160
	.incbin "incbin/arm9_rodata.bin", 0xF520, 0xF540 - 0xF520

	.global Unk_020F4180
Unk_020F4180: ; 0x020F4180
	.incbin "incbin/arm9_rodata.bin", 0xF540, 0xF568 - 0xF540

	.global Unk_020F41A8
Unk_020F41A8: ; 0x020F41A8
	.incbin "incbin/arm9_rodata.bin", 0xF568, 0xC08



	.data


	.global Unk_02100D0C
Unk_02100D0C: ; 0x02100D0C
	.incbin "incbin/arm9_data.bin", 0x202C, 0x2040 - 0x202C

	.global Unk_02100D20
Unk_02100D20: ; 0x02100D20
	.incbin "incbin/arm9_data.bin", 0x2040, 0x2054 - 0x2040

	.global Unk_02100D34
Unk_02100D34: ; 0x02100D34
	.incbin "incbin/arm9_data.bin", 0x2054, 0x2068 - 0x2054

	.global Unk_02100D48
Unk_02100D48: ; 0x02100D48
	.incbin "incbin/arm9_data.bin", 0x2068, 0x2080 - 0x2068

	.global Unk_02100D60
Unk_02100D60: ; 0x02100D60
	.incbin "incbin/arm9_data.bin", 0x2080, 0x15

