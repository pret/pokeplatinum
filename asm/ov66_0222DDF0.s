	.include "macros/function.inc"
	.include "include/ov66_0222DDF0.inc"

	

	.text


	thumb_func_start ov66_0222DDF0
ov66_0222DDF0: ; 0x0222DDF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	mov r1, #0x53
	add r5, r0, #0
	add r0, r7, #0
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x53
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _0222DEC8 ; =0x00000528
	str r5, [r4, #0]
	str r7, [r4, r0]
	ldr r0, _0222DECC ; =ov66_0222F1DC
	mov r2, #0x94
	str r0, [sp, #4]
	ldr r0, _0222DED0 ; =ov66_0222F398
	add r3, sp, #4
	str r0, [sp, #8]
	ldr r0, _0222DED4 ; =ov66_0222F458
	str r0, [sp, #0xc]
	ldr r0, _0222DED8 ; =ov66_0222F4C8
	str r0, [sp, #0x10]
	ldr r0, _0222DEDC ; =ov66_0222F684
	str r0, [sp, #0x14]
	str r4, [sp]
	ldr r1, [r4, #0]
	add r0, r7, #0
	bl ov66_022324F0
	add r0, r7, #0
	bl ov66_0223177C
	str r0, [r4, #4]
	mov r6, #0
	add r5, r4, #0
_0222DE42:
	add r0, r7, #0
	bl sub_02025E6C
	add r1, r5, #0
	add r1, #0xe8
	add r6, r6, #1
	add r5, r5, #4
	str r0, [r1, #0]
	cmp r6, #4
	blt _0222DE42
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r4, #0]
	add r0, r4, r0
	add r2, r7, #0
	bl ov66_0222F7C8
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov66_0222FC68
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_0222FC58
	ldr r0, _0222DEE0 ; =0x022589B4
	mov r1, #8
	add r2, r4, #0
	bl ov66_02232D30
	mov r0, #0x7f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_0222FB64
	mov r0, #0x83
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_022302B0
	mov r0, #0xeb
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_022307D4
	mov r0, #0xf9
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r7, #0
	bl ov66_022308A0
	ldr r0, _0222DEE4 ; =0x000004BC
	ldr r1, [r4, #0]
	add r0, r4, r0
	bl ov66_02230A6C
	ldr r0, _0222DEE8 ; =0x00000508
	add r1, r7, #0
	add r0, r4, r0
	bl ov66_0222FBF0
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DEC8: .word 0x00000528
_0222DECC: .word ov66_0222F1DC
_0222DED0: .word ov66_0222F398
_0222DED4: .word ov66_0222F458
_0222DED8: .word ov66_0222F4C8
_0222DEDC: .word ov66_0222F684
_0222DEE0: .word 0x022589B4
_0222DEE4: .word 0x000004BC
_0222DEE8: .word 0x00000508
	thumb_func_end ov66_0222DDF0

	thumb_func_start ov66_0222DEEC
ov66_0222DEEC: ; 0x0222DEEC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r6, r0
	add r1, sp, #0
	bl ov66_0222E908
	ldr r0, [r6, #0]
	bl sub_02030EC4
	ldr r1, [sp]
	add r4, r0, #0
	bl sub_02030ED8
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02030EDC
	ldr r0, _0222DF54 ; =0x00000508
	add r0, r6, r0
	bl ov66_0222FC00
	mov r0, #0xf9
	lsl r0, r0, #2
	add r0, r6, r0
	bl ov66_022308BC
	bl ov66_02232D90
	ldr r0, [r6, #4]
	bl ov66_022317AC
	mov r4, #0
	add r5, r6, #0
_0222DF34:
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0222DF34
	bl ov66_02232598
	add r0, r6, #0
	bl sub_020181C4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222DF54: .word 0x00000508
	thumb_func_end ov66_0222DEEC

	thumb_func_start ov66_0222DF58
ov66_0222DF58: ; 0x0222DF58
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov66_022317C0
	add r0, sp, #0
	bl ov66_02232BC8
	add r1, sp, #0
	add r0, r1, #0
	ldmia r0!, {r2, r3}
	add r0, r4, #0
	add r0, #0xd8
	stmia r0!, {r2, r3}
	add r0, r4, #0
	add r0, #0xd4
	bl ov66_02231428
	add r0, r4, #0
	bl ov66_0222F768
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov66_0222FD84
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_0222FC58
	add r0, r4, #0
	add r0, #0xf8
	bl ov66_0222FA80
	mov r2, #0x7f
	lsl r2, r2, #2
	ldr r3, _0222DFE8 ; =0x0000049C
	add r0, r4, r2
	add r1, r4, #0
	add r2, #0x10
	add r1, #0xf8
	add r2, r4, r2
	add r3, r4, r3
	bl ov66_0222FA88
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov66_0222FBE0
	mov r0, #0x83
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_022302D8
	ldr r0, _0222DFE8 ; =0x0000049C
	add r0, r4, r0
	bl ov66_022309C8
	ldr r0, _0222DFEC ; =0x000004BC
	add r0, r4, r0
	bl ov66_02230C04
	cmp r0, #1
	bne _0222DFE4
	ldr r0, _0222DFF0 ; =0x0000052C
	mov r1, #1
	str r1, [r4, r0]
_0222DFE4:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0222DFE8: .word 0x0000049C
_0222DFEC: .word 0x000004BC
_0222DFF0: .word 0x0000052C
	thumb_func_end ov66_0222DF58

	thumb_func_start ov66_0222DFF4
ov66_0222DFF4: ; 0x0222DFF4
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222DFF4

	thumb_func_start ov66_0222DFF8
ov66_0222DFF8: ; 0x0222DFF8
	ldr r1, _0222E000 ; =0x0000052C
	ldr r0, [r0, r1]
	bx lr
	nop
_0222E000: .word 0x0000052C
	thumb_func_end ov66_0222DFF8

	thumb_func_start ov66_0222E004
ov66_0222E004: ; 0x0222E004
	ldr r3, _0222E008 ; =ov66_022328CC
	bx r3
	; .align 2, 0
_0222E008: .word ov66_022328CC
	thumb_func_end ov66_0222E004

	thumb_func_start ov66_0222E00C
ov66_0222E00C: ; 0x0222E00C
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov66_0222E00C

	thumb_func_start ov66_0222E010
ov66_0222E010: ; 0x0222E010
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x42
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0xc
	bl ov66_0222F6C4
	add r4, #0xc
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov66_0222E010

	thumb_func_start ov66_0222E028
ov66_0222E028: ; 0x0222E028
	add r0, #0xd4
	bx lr
	thumb_func_end ov66_0222E028

	thumb_func_start ov66_0222E02C
ov66_0222E02C: ; 0x0222E02C
	push {r3, r4}
	mov r2, #1
	add r3, r2, #0
	lsl r3, r1
	add r1, r0, #0
	add r1, #0xf8
	ldr r1, [r1, #0]
	tst r1, r3
	beq _0222E052
	add r1, r0, #0
	add r1, #0xf8
	ldr r4, [r1, #0]
	mvn r1, r3
	and r1, r4
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
_0222E052:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov66_0222E02C

	thumb_func_start ov66_0222E058
ov66_0222E058: ; 0x0222E058
	push {r3, r4}
	mov r2, #1
	add r3, r2, #0
	lsl r3, r1
	add r1, r0, #0
	add r1, #0xfc
	ldr r1, [r1, #0]
	tst r1, r3
	beq _0222E07E
	add r1, r0, #0
	add r1, #0xfc
	ldr r4, [r1, #0]
	mvn r1, r3
	and r1, r4
	add r0, #0xfc
	str r1, [r0, #0]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
_0222E07E:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov66_0222E058

	thumb_func_start ov66_0222E084
ov66_0222E084: ; 0x0222E084
	mov r2, #1
	lsl r2, r2, #8
	ldr r3, [r0, r2]
	mov r0, #1
	add r2, r0, #0
	lsl r2, r1
	add r1, r3, #0
	tst r1, r2
	bne _0222E098
	mov r0, #0
_0222E098:
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222E084

	thumb_func_start ov66_0222E09C
ov66_0222E09C: ; 0x0222E09C
	push {r4, r5}
	mov r4, #1
	add r5, r4, #0
	lsl r5, r1
	mov r1, #0x41
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	add r2, r3, #0
	tst r2, r5
	beq _0222E0BC
	mvn r2, r5
	and r2, r3
	str r2, [r0, r1]
	add r0, r4, #0
	pop {r4, r5}
	bx lr
_0222E0BC:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222E09C

	thumb_func_start ov66_0222E0C4
ov66_0222E0C4: ; 0x0222E0C4
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov66_0222E0C4

	thumb_func_start ov66_0222E0C8
ov66_0222E0C8: ; 0x0222E0C8
	push {r3, lr}
	cmp r0, #0
	bne _0222E0D2
	bl sub_02022974
_0222E0D2:
	mov r0, #4
	bl ov66_02232BEC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_0222E0C8

	thumb_func_start ov66_0222E0DC
ov66_0222E0DC: ; 0x0222E0DC
	push {r4, lr}
	add r4, r0, #0
	bne _0222E0E6
	bl sub_02022974
_0222E0E6:
	ldr r0, _0222E0F0 ; =0x0000020B
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	pop {r4, pc}
	; .align 2, 0
_0222E0F0: .word 0x0000020B
	thumb_func_end ov66_0222E0DC

	thumb_func_start ov66_0222E0F4
ov66_0222E0F4: ; 0x0222E0F4
	push {r4, lr}
	add r4, r0, #0
	bne _0222E0FE
	bl sub_02022974
_0222E0FE:
	ldr r0, _0222E108 ; =0x0000020B
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	pop {r4, pc}
	; .align 2, 0
_0222E108: .word 0x0000020B
	thumb_func_end ov66_0222E0F4

	thumb_func_start ov66_0222E10C
ov66_0222E10C: ; 0x0222E10C
	ldr r2, _0222E11C ; =0x0000020B
	mov r1, #0xf0
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #0x10
	orr r1, r3
	strb r1, [r0, r2]
	bx lr
	; .align 2, 0
_0222E11C: .word 0x0000020B
	thumb_func_end ov66_0222E10C

	thumb_func_start ov66_0222E120
ov66_0222E120: ; 0x0222E120
	mov r1, #0x7f
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end ov66_0222E120

	thumb_func_start ov66_0222E12C
ov66_0222E12C: ; 0x0222E12C
	mov r1, #0x7f
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end ov66_0222E12C

	thumb_func_start ov66_0222E138
ov66_0222E138: ; 0x0222E138
	mov r1, #0x7f
	lsl r1, r1, #2
	ldrb r2, [r0, r1]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1f
	cmp r2, #1
	bne _0222E152
	add r1, r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0222E152
	mov r0, #1
	bx lr
_0222E152:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222E138

	thumb_func_start ov66_0222E158
ov66_0222E158: ; 0x0222E158
	mov r1, #0x81
	lsl r1, r1, #2
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bgt _0222E16C
	sub r1, #8
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1e
	bx lr
_0222E16C:
	mov r0, #0
	bx lr
	thumb_func_end ov66_0222E158

	thumb_func_start ov66_0222E170
ov66_0222E170: ; 0x0222E170
	mov r1, #0x7f
	lsl r1, r1, #2
	ldrb r2, [r0, r1]
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	cmp r2, #1
	bne _0222E18A
	add r1, #0xa
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0222E18A
	mov r0, #1
	bx lr
_0222E18A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222E170

	thumb_func_start ov66_0222E190
ov66_0222E190: ; 0x0222E190
	mov r1, #0x7f
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end ov66_0222E190

	thumb_func_start ov66_0222E19C
ov66_0222E19C: ; 0x0222E19C
	ldr r1, [r0, #8]
	cmp r1, #1
	bne _0222E1AE
	ldr r1, _0222E1B4 ; =0x00000202
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0222E1AE
	mov r0, #1
	bx lr
_0222E1AE:
	mov r0, #0
	bx lr
	nop
_0222E1B4: .word 0x00000202
	thumb_func_end ov66_0222E19C

	thumb_func_start ov66_0222E1B8
ov66_0222E1B8: ; 0x0222E1B8
	ldr r1, _0222E1CC ; =0x00000202
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bgt _0222E1C6
	sub r1, r1, #5
	ldrb r0, [r0, r1]
	bx lr
_0222E1C6:
	mov r0, #1
	bx lr
	nop
_0222E1CC: .word 0x00000202
	thumb_func_end ov66_0222E1B8

	thumb_func_start ov66_0222E1D0
ov66_0222E1D0: ; 0x0222E1D0
	ldr r1, _0222E1E4 ; =0x00000202
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bgt _0222E1DE
	sub r1, r1, #4
	ldrb r0, [r0, r1]
	bx lr
_0222E1DE:
	mov r0, #7
	bx lr
	nop
_0222E1E4: .word 0x00000202
	thumb_func_end ov66_0222E1D0

	thumb_func_start ov66_0222E1E8
ov66_0222E1E8: ; 0x0222E1E8
	ldr r1, _0222E1FC ; =0x00000202
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bgt _0222E1F6
	sub r1, r1, #3
	ldrb r0, [r0, r1]
	bx lr
_0222E1F6:
	mov r0, #0xb
	bx lr
	nop
_0222E1FC: .word 0x00000202
	thumb_func_end ov66_0222E1E8

	thumb_func_start ov66_0222E200
ov66_0222E200: ; 0x0222E200
	mov r1, #0x3a
	lsl r1, r1, #4
	ldr r3, _0222E20C ; =ov66_0222FBC8
	add r0, r0, r1
	bx r3
	nop
_0222E20C: .word ov66_0222FBC8
	thumb_func_end ov66_0222E200

	thumb_func_start ov66_0222E210
ov66_0222E210: ; 0x0222E210
	mov r1, #0x3a
	lsl r1, r1, #4
	ldr r3, _0222E21C ; =ov66_0222FBD0
	add r0, r0, r1
	bx r3
	nop
_0222E21C: .word ov66_0222FBD0
	thumb_func_end ov66_0222E210

	thumb_func_start ov66_0222E220
ov66_0222E220: ; 0x0222E220
	ldr r1, _0222E228 ; =0x0000050C
	ldr r0, [r0, r1]
	bx lr
	nop
_0222E228: .word 0x0000050C
	thumb_func_end ov66_0222E220

	thumb_func_start ov66_0222E22C
ov66_0222E22C: ; 0x0222E22C
	ldr r2, _0222E234 ; =0x0000050C
	str r1, [r0, r2]
	bx lr
	nop
_0222E234: .word 0x0000050C
	thumb_func_end ov66_0222E22C

	thumb_func_start ov66_0222E238
ov66_0222E238: ; 0x0222E238
	mov r1, #0x3e
	add r2, r0, #0
	lsl r1, r1, #4
	add r1, r2, r1
	ldr r3, _0222E248 ; =sub_020C4B4C
	mov r0, #0
	mov r2, #4
	bx r3
	; .align 2, 0
_0222E248: .word sub_020C4B4C
	thumb_func_end ov66_0222E238

	thumb_func_start ov66_0222E24C
ov66_0222E24C: ; 0x0222E24C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #4
	blo _0222E25C
	bl sub_02022974
_0222E25C:
	add r0, r6, #0
	bl ov66_02232B78
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0222E270
	bl sub_02022974
_0222E270:
	mov r0, #0x3e
	add r1, r5, r4
	lsl r0, r0, #4
	strb r6, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_0222E24C

	thumb_func_start ov66_0222E27C
ov66_0222E27C: ; 0x0222E27C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov66_022328F0
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov66_0222E24C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222E27C

	thumb_func_start ov66_0222E294
ov66_0222E294: ; 0x0222E294
	mov r2, #0x3e
	lsl r2, r2, #4
	add r0, r0, r2
	ldr r3, _0222E2A0 ; =sub_020C4DB0
	mov r2, #4
	bx r3
	; .align 2, 0
_0222E2A0: .word sub_020C4DB0
	thumb_func_end ov66_0222E294

	thumb_func_start ov66_0222E2A4
ov66_0222E2A4: ; 0x0222E2A4
	mov r1, #0x3a
	lsl r1, r1, #4
	ldr r3, _0222E2B0 ; =ov66_0222FC4C
	add r0, r0, r1
	bx r3
	nop
_0222E2B0: .word ov66_0222FC4C
	thumb_func_end ov66_0222E2A4

	thumb_func_start ov66_0222E2B4
ov66_0222E2B4: ; 0x0222E2B4
	mov r1, #0x3a
	lsl r1, r1, #4
	ldr r3, _0222E2C0 ; =ov66_0222FC54
	add r0, r0, r1
	bx r3
	nop
_0222E2C0: .word ov66_0222FC54
	thumb_func_end ov66_0222E2B4

	thumb_func_start ov66_0222E2C4
ov66_0222E2C4: ; 0x0222E2C4
	mov r2, #0x82
	lsl r2, r2, #2
	strb r1, [r0, r2]
	bx lr
	thumb_func_end ov66_0222E2C4

	thumb_func_start ov66_0222E2CC
ov66_0222E2CC: ; 0x0222E2CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _0222E2FC
	add r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0222E2FC
	ldr r1, _0222E314 ; =0x000004BD
	mov r0, #0x15
	mov r2, #0
	bl sub_02004550
	mov r0, #0x7f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_0222FBAC
	pop {r4, pc}
_0222E2FC:
	ldr r1, _0222E318 ; =0x000004BC
	mov r0, #0x15
	mov r2, #0
	bl sub_02004550
	mov r0, #0x7f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_0222FBAC
	pop {r4, pc}
	nop
_0222E314: .word 0x000004BD
_0222E318: .word 0x000004BC
	thumb_func_end ov66_0222E2CC

	thumb_func_start ov66_0222E31C
ov66_0222E31C: ; 0x0222E31C
	push {r3, lr}
	ldr r2, _0222E334 ; =0x00000209
	ldrb r3, [r0, r2]
	cmp r1, r3
	beq _0222E330
	strb r1, [r0, r2]
	sub r2, #0xd
	add r0, r0, r2
	bl ov66_0222FBAC
_0222E330:
	pop {r3, pc}
	nop
_0222E334: .word 0x00000209
	thumb_func_end ov66_0222E31C

	thumb_func_start ov66_0222E338
ov66_0222E338: ; 0x0222E338
	push {r3, lr}
	bl ov66_022328F0
	bl ov66_02232B78
	pop {r3, pc}
	thumb_func_end ov66_0222E338

	thumb_func_start ov66_0222E344
ov66_0222E344: ; 0x0222E344
	ldr r3, _0222E348 ; =ov66_022328F0
	bx r3
	; .align 2, 0
_0222E348: .word ov66_022328F0
	thumb_func_end ov66_0222E344

	thumb_func_start ov66_0222E34C
ov66_0222E34C: ; 0x0222E34C
	push {r4, lr}
	sub sp, #8
	add r0, sp, #0
	add r4, r1, #0
	bl ov66_02232B20
	ldr r1, [sp, #4]
	lsl r0, r4, #2
	ldr r1, [r1, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0222E36C
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0222E36C:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0222E34C

	thumb_func_start ov66_0222E374
ov66_0222E374: ; 0x0222E374
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x14
	blo _0222E384
	bl sub_02022974
_0222E384:
	add r0, sp, #0
	bl ov66_02232B20
	ldr r1, [sp, #4]
	lsl r0, r5, #2
	ldr r5, [r1, r0]
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _0222E39E
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222E39E:
	bl ov66_022328F0
	cmp r5, r0
	bne _0222E3B0
	mov r0, #0x4a
	lsl r0, r0, #2
	add sp, #8
	add r0, r4, r0
	pop {r3, r4, r5, pc}
_0222E3B0:
	add r0, r5, #0
	bl ov66_0223293C
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222E374

	thumb_func_start ov66_0222E3BC
ov66_0222E3BC: ; 0x0222E3BC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r4, #0]
	add r0, r4, r0
	bl ov66_0222FA04
	cmp r0, #0
	bne _0222E3D6
	ldr r0, _0222E3E0 ; =0x0000052C
	mov r1, #1
	str r1, [r4, r0]
_0222E3D6:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
	nop
_0222E3E0: .word 0x0000052C
	thumb_func_end ov66_0222E3BC

	thumb_func_start ov66_0222E3E4
ov66_0222E3E4: ; 0x0222E3E4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0xf
	blt _0222E3F2
	bl sub_02022974
_0222E3F2:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r4, #0]
	add r0, r4, r0
	bl ov66_0222FA04
	cmp r0, #0
	bne _0222E40A
	ldr r0, _0222E4F4 ; =0x0000052C
	mov r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0222E40A:
	ldr r0, _0222E4F8 ; =0x0000016B
	ldrb r0, [r4, r0]
	cmp r0, r5
	beq _0222E4F2
	cmp r5, #9
	beq _0222E44A
	add r0, r4, #0
	bl ov66_0222EDF4
	cmp r0, #1
	bne _0222E44A
	add r0, r4, #0
	bl ov66_0222EE08
	cmp r0, #0
	bne _0222E440
	mov r0, #0x71
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	bl ov66_02232BA0
	mov r1, #0x71
	lsl r1, r1, #2
	ldrh r1, [r4, r1]
	add r0, r4, #0
	bl ov66_0222FD50
_0222E440:
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov66_0222FC84
_0222E44A:
	ldr r0, _0222E4F8 ; =0x0000016B
	ldrb r0, [r4, r0]
	cmp r0, #8
	bhi _0222E4DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E45E: ; jump table
	.short _0222E4DE - _0222E45E - 2 ; case 0
	.short _0222E4DE - _0222E45E - 2 ; case 1
	.short _0222E470 - _0222E45E - 2 ; case 2
	.short _0222E480 - _0222E45E - 2 ; case 3
	.short _0222E490 - _0222E45E - 2 ; case 4
	.short _0222E4A0 - _0222E45E - 2 ; case 5
	.short _0222E4B0 - _0222E45E - 2 ; case 6
	.short _0222E4C0 - _0222E45E - 2 ; case 7
	.short _0222E4D0 - _0222E45E - 2 ; case 8
_0222E470:
	ldr r0, _0222E4FC ; =0x000004BC
	mov r1, #0x10
	add r2, r1, #0
	add r0, r4, r0
	sub r2, #0x11
	bl ov66_02230A9C
	b _0222E4DE
_0222E480:
	ldr r0, _0222E4FC ; =0x000004BC
	mov r1, #0x11
	add r2, r1, #0
	add r0, r4, r0
	sub r2, #0x12
	bl ov66_02230A9C
	b _0222E4DE
_0222E490:
	ldr r0, _0222E4FC ; =0x000004BC
	mov r1, #0x12
	add r2, r1, #0
	add r0, r4, r0
	sub r2, #0x13
	bl ov66_02230A9C
	b _0222E4DE
_0222E4A0:
	ldr r0, _0222E4FC ; =0x000004BC
	mov r1, #0x13
	add r2, r1, #0
	add r0, r4, r0
	sub r2, #0x14
	bl ov66_02230A9C
	b _0222E4DE
_0222E4B0:
	ldr r0, _0222E4FC ; =0x000004BC
	mov r1, #0x14
	add r2, r1, #0
	add r0, r4, r0
	sub r2, #0x15
	bl ov66_02230A9C
	b _0222E4DE
_0222E4C0:
	ldr r0, _0222E4FC ; =0x000004BC
	mov r1, #0x15
	add r2, r1, #0
	add r0, r4, r0
	sub r2, #0x16
	bl ov66_02230A9C
	b _0222E4DE
_0222E4D0:
	ldr r0, _0222E4FC ; =0x000004BC
	mov r1, #0x16
	add r2, r1, #0
	add r0, r4, r0
	sub r2, #0x17
	bl ov66_02230A9C
_0222E4DE:
	ldr r0, _0222E4F8 ; =0x0000016B
	strb r5, [r4, r0]
	sub r0, #0x63
	ldr r1, [r4, #0]
	add r0, r4, r0
	bl ov66_0222F9EC
	add r0, r4, #0
	bl ov66_0222F964
_0222E4F2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222E4F4: .word 0x0000052C
_0222E4F8: .word 0x0000016B
_0222E4FC: .word 0x000004BC
	thumb_func_end ov66_0222E3E4

	thumb_func_start ov66_0222E500
ov66_0222E500: ; 0x0222E500
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x18
	blt _0222E510
	bl sub_02022974
_0222E510:
	ldr r0, _0222E524 ; =0x000004BC
	add r1, r4, #0
	add r0, r5, r0
	add r2, r6, #0
	bl ov66_02230A9C
	add r0, r5, #0
	bl ov66_0222F964
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222E524: .word 0x000004BC
	thumb_func_end ov66_0222E500

	thumb_func_start ov66_0222E528
ov66_0222E528: ; 0x0222E528
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x1b
	blo _0222E536
	bl sub_02022974
_0222E536:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r5, #0]
	add r0, r5, r0
	bl ov66_0222FA04
	cmp r0, #0
	bne _0222E54E
	ldr r0, _0222E564 ; =0x0000052C
	mov r1, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
_0222E54E:
	ldr r0, _0222E568 ; =0x00000169
	strb r4, [r5, r0]
	sub r0, #0x61
	ldr r1, [r5, #0]
	add r0, r5, r0
	bl ov66_0222F9EC
	add r0, r5, #0
	bl ov66_0222F964
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222E564: .word 0x0000052C
_0222E568: .word 0x00000169
	thumb_func_end ov66_0222E528

	thumb_func_start ov66_0222E56C
ov66_0222E56C: ; 0x0222E56C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x12
	blt _0222E57C
	bl sub_02022974
_0222E57C:
	cmp r6, #0x12
	blt _0222E584
	bl sub_02022974
_0222E584:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r5, #0]
	add r0, r5, r0
	bl ov66_0222FA04
	cmp r0, #0
	bne _0222E59C
	ldr r0, _0222E5D4 ; =0x0000052C
	mov r1, #1
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
_0222E59C:
	cmp r4, #0x12
	bge _0222E5D2
	cmp r6, #0x12
	bge _0222E5D2
	cmp r4, #0
	bne _0222E5B6
	mov r0, #0x1b
	lsl r0, r0, #4
	strh r6, [r5, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r5, r0]
	b _0222E5C0
_0222E5B6:
	mov r0, #0x1b
	lsl r0, r0, #4
	strh r4, [r5, r0]
	add r0, r0, #2
	strh r6, [r5, r0]
_0222E5C0:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r5, #0]
	add r0, r5, r0
	bl ov66_0222F9EC
	add r0, r5, #0
	bl ov66_0222F964
_0222E5D2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222E5D4: .word 0x0000052C
	thumb_func_end ov66_0222E56C

	thumb_func_start ov66_0222E5D8
ov66_0222E5D8: ; 0x0222E5D8
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #3
	blo _0222E5E8
	bl sub_02022974
_0222E5E8:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r5, #0]
	add r0, r5, r0
	bl ov66_0222FA04
	cmp r0, #0
	bne _0222E600
	ldr r0, _0222E63C ; =0x0000052C
	mov r1, #1
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
_0222E600:
	cmp r4, #3
	bhs _0222E63A
	mov r0, #0x6d
	lsl r0, r0, #2
	str r6, [r5, r0]
	add r1, r0, #4
	str r4, [r5, r1]
	add r1, r0, #0
	add r1, #0x57
	ldrb r2, [r5, r1]
	mov r1, #0xf
	add r0, #0x57
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strb r1, [r5, r0]
	add r0, r5, #0
	mov r1, #6
	bl ov66_0222F040
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r5, #0]
	add r0, r5, r0
	bl ov66_0222F9EC
	add r0, r5, #0
	bl ov66_0222F964
_0222E63A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222E63C: .word 0x0000052C
	thumb_func_end ov66_0222E5D8

	thumb_func_start ov66_0222E640
ov66_0222E640: ; 0x0222E640
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, #8
	mov r1, #8
	add r7, r2, #0
	bl ov66_0222F1B4
	mov r6, #0
	cmp r0, #1
	bne _0222E69C
	add r1, r5, #0
	add r0, r4, #0
	add r1, #8
	bl sub_02025EC0
	mov r0, #0x20
	add r1, r7, #0
	bl sub_02023790
	str r0, [sp]
	mov r0, #0x20
	add r1, r7, #0
	bl sub_02023790
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02025EF4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r6, #0
	bl sub_02002DB4
	cmp r0, #0
	bne _0222E68E
	mov r6, #1
_0222E68E:
	ldr r0, [sp]
	bl sub_020237BC
	ldr r0, [sp, #4]
	bl sub_020237BC
	b _0222E69E
_0222E69C:
	mov r6, #1
_0222E69E:
	cmp r6, #0
	beq _0222E6CC
	ldr r2, _0222E718 ; =0x000002A1
	mov r0, #1
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	mov r1, #0x40
	add r6, r0, #0
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02025EE0
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
_0222E6CC:
	add r0, r5, #0
	bl ov66_0222E79C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02025F1C
	add r0, r5, #0
	bl ov66_0222E7C8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02025F2C
	add r0, r5, #0
	bl ov66_0222E858
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02025F90
	add r0, r5, #0
	bl ov66_0222E80C
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02025FDC
	add r0, r4, #0
	bl sub_02025FE0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E718: .word 0x000002A1
	thumb_func_end ov66_0222E640

	thumb_func_start ov66_0222E71C
ov66_0222E71C: ; 0x0222E71C
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0xe
	blo _0222E726
	mov r0, #0xe
_0222E726:
	bx lr
	thumb_func_end ov66_0222E71C

	thumb_func_start ov66_0222E728
ov66_0222E728: ; 0x0222E728
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xc
	blo _0222E736
	bl sub_02022974
_0222E736:
	mov r1, #0
	add r2, r1, #0
_0222E73A:
	add r0, r5, r2
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0x18
	bhs _0222E746
	add r1, r1, #1
_0222E746:
	sub r0, r1, #1
	cmp r0, r4
	bne _0222E754
	add r0, r5, r2
	add r0, #0x4c
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
_0222E754:
	add r2, r2, #1
	cmp r2, #0xc
	blt _0222E73A
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222E728

	thumb_func_start ov66_0222E760
ov66_0222E760: ; 0x0222E760
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xc
	blo _0222E76E
	bl sub_02022974
_0222E76E:
	mov r1, #0
	add r2, r1, #0
_0222E772:
	add r0, r5, r2
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0x18
	bhs _0222E77E
	add r1, r1, #1
_0222E77E:
	sub r0, r1, #1
	cmp r0, r4
	bne _0222E78C
	lsl r0, r2, #2
	add r0, r5, r0
	ldr r0, [r0, #0x58]
	pop {r3, r4, r5, pc}
_0222E78C:
	add r2, r2, #1
	cmp r2, #0xc
	blt _0222E772
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_0222E760

	thumb_func_start ov66_0222E798
ov66_0222E798: ; 0x0222E798
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov66_0222E798

	thumb_func_start ov66_0222E79C
ov66_0222E79C: ; 0x0222E79C
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov66_0222E79C

	thumb_func_start ov66_0222E7A0
ov66_0222E7A0: ; 0x0222E7A0
	push {r3, lr}
	bl ov66_0222E858
	ldr r3, _0222E7C0 ; =0x02258974
	mov r2, #0
_0222E7AA:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0222E7B4
	add r0, r2, #0
	pop {r3, pc}
_0222E7B4:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x10
	blt _0222E7AA
	mov r0, #0x18
	pop {r3, pc}
	; .align 2, 0
_0222E7C0: .word 0x02258974
	thumb_func_end ov66_0222E7A0

	thumb_func_start ov66_0222E7C4
ov66_0222E7C4: ; 0x0222E7C4
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end ov66_0222E7C4

	thumb_func_start ov66_0222E7C8
ov66_0222E7C8: ; 0x0222E7C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	blo _0222E7FC
	ldrh r0, [r5, #0x3a]
	bl ov66_02230C2C
	ldr r1, _0222E804 ; =0x0000FFFF
	cmp r0, r1
	beq _0222E7F8
	ldrh r3, [r5, #0x3a]
	ldr r2, _0222E808 ; =0x02258974
	mov r1, #0
_0222E7E6:
	ldrh r0, [r2]
	cmp r3, r0
	bne _0222E7EE
	add r4, r0, #0
_0222E7EE:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blo _0222E7E6
	b _0222E7FE
_0222E7F8:
	mov r4, #1
	b _0222E7FE
_0222E7FC:
	add r4, r0, #0
_0222E7FE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0222E804: .word 0x0000FFFF
_0222E808: .word 0x02258974
	thumb_func_end ov66_0222E7C8

	thumb_func_start ov66_0222E80C
ov66_0222E80C: ; 0x0222E80C
	push {r4, lr}
	add r4, r0, #0
	bl ov66_0222E824
	cmp r0, #1
	bne _0222E81E
	add r4, #0x39
	ldrb r0, [r4]
	pop {r4, pc}
_0222E81E:
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0222E80C

	thumb_func_start ov66_0222E824
ov66_0222E824: ; 0x0222E824
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0222E84C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E838: ; jump table
	.short _0222E84C - _0222E838 - 2 ; case 0
	.short _0222E848 - _0222E838 - 2 ; case 1
	.short _0222E848 - _0222E838 - 2 ; case 2
	.short _0222E848 - _0222E838 - 2 ; case 3
	.short _0222E848 - _0222E838 - 2 ; case 4
	.short _0222E848 - _0222E838 - 2 ; case 5
	.short _0222E84C - _0222E838 - 2 ; case 6
	.short _0222E848 - _0222E838 - 2 ; case 7
_0222E848:
	mov r0, #1
	bx lr
_0222E84C:
	mov r0, #0
	bx lr
	thumb_func_end ov66_0222E824

	thumb_func_start ov66_0222E850
ov66_0222E850: ; 0x0222E850
	add r0, #0x39
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222E850

	thumb_func_start ov66_0222E858
ov66_0222E858: ; 0x0222E858
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x3a]
	bl ov66_02230C2C
	ldr r1, _0222E87C ; =0x0000FFFF
	cmp r0, r1
	bne _0222E878
	add r0, r4, #0
	bl ov66_0222E7C8
	cmp r0, #0
	bne _0222E876
	mov r0, #3
	pop {r4, pc}
_0222E876:
	mov r0, #6
_0222E878:
	pop {r4, pc}
	nop
_0222E87C: .word 0x0000FFFF
	thumb_func_end ov66_0222E858

	thumb_func_start ov66_0222E880
ov66_0222E880: ; 0x0222E880
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0xea
	blo _0222E88E
	mov r0, #0
	pop {r4, pc}
_0222E88E:
	add r1, r4, #0
	add r1, #0x3e
	ldrb r1, [r1]
	bl ov66_022316C4
	cmp r0, #0
	bne _0222E8A0
	mov r0, #0
	pop {r4, pc}
_0222E8A0:
	ldrh r0, [r4, #0x3c]
	pop {r4, pc}
	thumb_func_end ov66_0222E880

	thumb_func_start ov66_0222E8A4
ov66_0222E8A4: ; 0x0222E8A4
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x3e
	ldrh r0, [r4, #0x3c]
	ldrb r1, [r1]
	bl ov66_022316C4
	cmp r0, #0
	bne _0222E8BC
	mov r0, #0
	pop {r4, pc}
_0222E8BC:
	add r4, #0x3e
	ldrb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0222E8A4

	thumb_func_start ov66_0222E8C4
ov66_0222E8C4: ; 0x0222E8C4
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0222E8D0
	mov r0, #0
	bx lr
_0222E8D0:
	cmp r0, #0x1b
	blo _0222E8D6
	mov r0, #0
_0222E8D6:
	bx lr
	thumb_func_end ov66_0222E8C4

	thumb_func_start ov66_0222E8D8
ov66_0222E8D8: ; 0x0222E8D8
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0222E8E4
	mov r0, #1
	bx lr
_0222E8E4:
	mov r0, #0
	bx lr
	thumb_func_end ov66_0222E8D8

	thumb_func_start ov66_0222E8E8
ov66_0222E8E8: ; 0x0222E8E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #2
	blo _0222E8F6
	bl sub_02022974
_0222E8F6:
	lsl r0, r5, #1
	add r0, r4, r0
	add r0, #0x88
	ldrh r0, [r0]
	cmp r0, #0x12
	blo _0222E904
	mov r0, #0
_0222E904:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222E8E8

	thumb_func_start ov66_0222E908
ov66_0222E908: ; 0x0222E908
	add r2, r0, #0
	add r2, #0x8c
	add r0, #0x90
	ldr r2, [r2, #0]
	ldr r0, [r0, #0]
	str r2, [r1, #0]
	str r0, [r1, #4]
	bx lr
	thumb_func_end ov66_0222E908

	thumb_func_start ov66_0222E918
ov66_0222E918: ; 0x0222E918
	ldr r1, _0222E920 ; =0x00000508
	ldr r0, [r0, r1]
	bx lr
	nop
_0222E920: .word 0x00000508
	thumb_func_end ov66_0222E918

	thumb_func_start ov66_0222E924
ov66_0222E924: ; 0x0222E924
	mov r2, #0xf3
	lsl r2, r2, #2
	ldr r3, _0222E930 ; =ov66_02230884
	add r0, r0, r2
	bx r3
	nop
_0222E930: .word ov66_02230884
	thumb_func_end ov66_0222E924

	thumb_func_start ov66_0222E934
ov66_0222E934: ; 0x0222E934
	mov r2, #0xf3
	lsl r2, r2, #2
	add r0, r0, r2
	ldr r3, _0222E940 ; =sub_020C4DB0
	mov r2, #0x14
	bx r3
	; .align 2, 0
_0222E940: .word sub_020C4DB0
	thumb_func_end ov66_0222E934

	thumb_func_start ov66_0222E944
ov66_0222E944: ; 0x0222E944
	mov r2, #0xf9
	lsl r2, r2, #2
	ldr r3, _0222E950 ; =ov66_022308F8
	add r0, r0, r2
	bx r3
	nop
_0222E950: .word ov66_022308F8
	thumb_func_end ov66_0222E944

	thumb_func_start ov66_0222E954
ov66_0222E954: ; 0x0222E954
	mov r2, #0xf9
	lsl r2, r2, #2
	ldr r3, _0222E960 ; =ov66_02230914
	add r0, r0, r2
	bx r3
	nop
_0222E960: .word ov66_02230914
	thumb_func_end ov66_0222E954

	thumb_func_start ov66_0222E964
ov66_0222E964: ; 0x0222E964
	push {r3, lr}
	sub sp, #8
	add r0, sp, #0
	bl ov66_02232B4C
	ldr r0, [sp]
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov66_0222E964

	thumb_func_start ov66_0222E974
ov66_0222E974: ; 0x0222E974
	push {r3, lr}
	add r0, r1, #0
	bl ov66_02232BB4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222E98A
	bl ov66_02232B78
	add r1, r0, #0
_0222E98A:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_0222E974

	thumb_func_start ov66_0222E990
ov66_0222E990: ; 0x0222E990
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r0, sp, #0
	mov r2, #0
	str r2, [r0, #0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	add r0, sp, #0
	strb r2, [r0, #0x11]
	add r0, r1, #0
	bl ov66_02232BA0
	str r0, [sp]
	add r0, r4, #0
	bl ov66_02232BA0
	str r0, [sp, #4]
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r0, #4
	add r1, sp, #0
	mov r2, #0x14
	bl ov66_02232E00
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov66_0222E990

	thumb_func_start ov66_0222E9CC
ov66_0222E9CC: ; 0x0222E9CC
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #0x11]
	add r0, r2, #0
	add r4, r3, #0
	bl ov66_02232BA0
	str r0, [sp]
	add r0, r5, #0
	bl ov66_02232BA0
	str r0, [sp, #4]
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, #0x10]
	strb r4, [r0, #0x12]
	mov r0, #4
	add r1, sp, #0
	mov r2, #0x14
	bl ov66_02232E00
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222E9CC

	thumb_func_start ov66_0222EA10
ov66_0222EA10: ; 0x0222EA10
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	add r5, r2, #0
	str r0, [r1, #0x10]
	cmp r4, #6
	bhi _0222EAB0
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222EA36: ; jump table
	.short _0222EA44 - _0222EA36 - 2 ; case 0
	.short _0222EA44 - _0222EA36 - 2 ; case 1
	.short _0222EA44 - _0222EA36 - 2 ; case 2
	.short _0222EA48 - _0222EA36 - 2 ; case 3
	.short _0222EA48 - _0222EA36 - 2 ; case 4
	.short _0222EA4C - _0222EA36 - 2 ; case 5
	.short _0222EA50 - _0222EA36 - 2 ; case 6
_0222EA44:
	mov r1, #2
	b _0222EA58
_0222EA48:
	mov r1, #3
	b _0222EA58
_0222EA4C:
	mov r1, #4
	b _0222EA58
_0222EA50:
	mov r1, #5
	b _0222EA58
_0222EA54:
	.byte 0x05, 0xB0, 0x30, 0xBD
_0222EA58:
	add r0, sp, #0
	strb r1, [r0, #0x11]
	add r0, r3, #0
	bl ov66_02232BA0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	bl ov66_02232BA0
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	bl ov66_02232BA0
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	bl ov66_02232BA0
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r5, [r0, #0x10]
	ldrb r1, [r0, #0x13]
	mov r2, #0x7f
	bic r1, r2
	lsl r2, r4, #0x18
	lsr r3, r2, #0x18
	mov r2, #0x7f
	and r2, r3
	orr r1, r2
	strb r1, [r0, #0x13]
	ldrb r1, [r0, #0x13]
	mov r2, #0x80
	bic r1, r2
	ldr r2, [sp, #0x2c]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x18
	orr r1, r2
	strb r1, [r0, #0x13]
	mov r0, #4
	add r1, sp, #0
	mov r2, #0x14
	bl ov66_02232E00
_0222EAB0:
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov66_0222EA10

	thumb_func_start ov66_0222EAB4
ov66_0222EAB4: ; 0x0222EAB4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	add r4, r2, #0
	str r0, [r1, #0x10]
	cmp r5, #0
	beq _0222EAD6
	cmp r5, #1
	beq _0222EAD6
	cmp r5, #2
	bne _0222EB24
_0222EAD6:
	mov r1, #8
	add r0, sp, #0
	strb r1, [r0, #0x11]
	add r0, r3, #0
	bl ov66_02232BA0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	bl ov66_02232BA0
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	bl ov66_02232BA0
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	bl ov66_02232BA0
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r4, [r0, #0x10]
	ldrb r1, [r0, #0x13]
	mov r2, #0x7f
	bic r1, r2
	lsl r2, r5, #0x18
	lsr r3, r2, #0x18
	mov r2, #0x7f
	and r2, r3
	orr r1, r2
	strb r1, [r0, #0x13]
	ldrb r2, [r0, #0x13]
	mov r1, #0x80
	bic r2, r1
	strb r2, [r0, #0x13]
	mov r0, #4
	add r1, sp, #0
	mov r2, #0x14
	bl ov66_02232E00
_0222EB24:
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov66_0222EAB4

	thumb_func_start ov66_0222EB28
ov66_0222EB28: ; 0x0222EB28
	push {r3, lr}
	mov r0, #3
	bl ov66_02232BEC
	cmp r0, #5
	blo _0222EB36
	mov r0, #0
_0222EB36:
	pop {r3, pc}
	thumb_func_end ov66_0222EB28

	thumb_func_start ov66_0222EB38
ov66_0222EB38: ; 0x0222EB38
	push {r3, lr}
	mov r0, #2
	bl ov66_02232BEC
	cmp r0, #5
	blo _0222EB46
	mov r0, #0
_0222EB46:
	pop {r3, pc}
	thumb_func_end ov66_0222EB38

	thumb_func_start ov66_0222EB48
ov66_0222EB48: ; 0x0222EB48
	push {r3, lr}
	mov r0, #5
	bl ov66_02232BEC
	add r0, #0x1e
	pop {r3, pc}
	thumb_func_end ov66_0222EB48

	thumb_func_start ov66_0222EB54
ov66_0222EB54: ; 0x0222EB54
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0222EB62
	bl sub_02022974
_0222EB62:
	mov r0, #0x7a
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_0222EB54

	thumb_func_start ov66_0222EB6C
ov66_0222EB6C: ; 0x0222EB6C
	push {r3, lr}
	str r1, [sp]
	mov r0, #5
	add r1, sp, #0
	mov r2, #4
	bl ov66_02232E00
	pop {r3, pc}
	thumb_func_end ov66_0222EB6C

	thumb_func_start ov66_0222EB7C
ov66_0222EB7C: ; 0x0222EB7C
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r3, _0222EB88 ; =ov66_0223040C
	add r0, r0, r2
	bx r3
	nop
_0222EB88: .word ov66_0223040C
	thumb_func_end ov66_0222EB7C

	thumb_func_start ov66_0222EB8C
ov66_0222EB8C: ; 0x0222EB8C
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r3, _0222EB98 ; =ov66_02230424
	add r0, r0, r2
	bx r3
	nop
_0222EB98: .word ov66_02230424
	thumb_func_end ov66_0222EB8C

	thumb_func_start ov66_0222EB9C
ov66_0222EB9C: ; 0x0222EB9C
	mov r0, #0x4b
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222EB9C

	thumb_func_start ov66_0222EBA4
ov66_0222EBA4: ; 0x0222EBA4
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r3, _0222EBB0 ; =ov66_022304DC
	add r0, r0, r2
	bx r3
	nop
_0222EBB0: .word ov66_022304DC
	thumb_func_end ov66_0222EBA4

	thumb_func_start ov66_0222EBB4
ov66_0222EBB4: ; 0x0222EBB4
	mov r3, #0x83
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0222EBC0 ; =ov66_02230330
	bx r3
	nop
_0222EBC0: .word ov66_02230330
	thumb_func_end ov66_0222EBB4

	thumb_func_start ov66_0222EBC4
ov66_0222EBC4: ; 0x0222EBC4
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r3, _0222EBD0 ; =ov66_022303A8
	add r0, r0, r2
	bx r3
	nop
_0222EBD0: .word ov66_022303A8
	thumb_func_end ov66_0222EBC4

	thumb_func_start ov66_0222EBD4
ov66_0222EBD4: ; 0x0222EBD4
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r3, _0222EBE0 ; =ov66_0223043C
	add r0, r0, r2
	bx r3
	nop
_0222EBE0: .word ov66_0223043C
	thumb_func_end ov66_0222EBD4

	thumb_func_start ov66_0222EBE4
ov66_0222EBE4: ; 0x0222EBE4
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r3, _0222EBF0 ; =ov66_02230474
	add r0, r0, r2
	bx r3
	nop
_0222EBF0: .word ov66_02230474
	thumb_func_end ov66_0222EBE4

	thumb_func_start ov66_0222EBF4
ov66_0222EBF4: ; 0x0222EBF4
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r3, _0222EC00 ; =ov66_022304A8
	add r0, r0, r2
	bx r3
	nop
_0222EC00: .word ov66_022304A8
	thumb_func_end ov66_0222EBF4

	thumb_func_start ov66_0222EC04
ov66_0222EC04: ; 0x0222EC04
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	mov r1, #3
	add r4, r2, #0
	bl sub_020E2178
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #3
	bl sub_020E2178
	str r1, [r4, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_0222EC04

	thumb_func_start ov66_0222EC20
ov66_0222EC20: ; 0x0222EC20
	mov r3, #0x83
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0222EC2C ; =ov66_02230510
	bx r3
	nop
_0222EC2C: .word ov66_02230510
	thumb_func_end ov66_0222EC20

	thumb_func_start ov66_0222EC30
ov66_0222EC30: ; 0x0222EC30
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r3, _0222EC3C ; =ov66_02230580
	add r0, r0, r2
	bx r3
	nop
_0222EC3C: .word ov66_02230580
	thumb_func_end ov66_0222EC30

	thumb_func_start ov66_0222EC40
ov66_0222EC40: ; 0x0222EC40
	push {r3, lr}
	mov r0, #6
	add r1, sp, #0
	mov r2, #4
	bl ov66_02232E00
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_0222EC40

	thumb_func_start ov66_0222EC50
ov66_0222EC50: ; 0x0222EC50
	push {r3, lr}
	mov r0, #7
	add r1, sp, #0
	mov r2, #4
	bl ov66_02232E00
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_0222EC50

	thumb_func_start ov66_0222EC60
ov66_0222EC60: ; 0x0222EC60
	mov r1, #7
	lsl r1, r1, #6
	ldr r3, _0222EC6C ; =ov66_0222FC74
	add r0, r0, r1
	bx r3
	nop
_0222EC6C: .word ov66_0222FC74
	thumb_func_end ov66_0222EC60

	thumb_func_start ov66_0222EC70
ov66_0222EC70: ; 0x0222EC70
	push {r3, r4, r5, lr}
	ldr r2, _0222ECD0 ; =0x000001CA
	add r5, r0, #0
	ldrb r2, [r5, r2]
	add r4, r1, #0
	cmp r2, #0
	beq _0222EC82
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222EC82:
	bl ov66_0222E374
	bl ov66_0222E71C
	cmp r0, #1
	beq _0222EC92
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222EC92:
	mov r0, #0x71
	lsl r0, r0, #2
	strh r4, [r5, r0]
	mov r2, #1
	add r1, r0, #2
	strb r2, [r5, r1]
	add r1, r0, #6
	sub r0, r0, #4
	strb r2, [r5, r1]
	add r0, r5, r0
	mov r1, #0
	bl ov66_0222FD28
	add r0, r4, #0
	bl ov66_02232BA0
	mov r2, #0x1e
	lsl r2, r2, #4
	add r1, r0, #0
	mov r0, #0
	add r2, r5, r2
	mov r3, #4
	bl ov66_02232E5C
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	bl ov66_0222FD70
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222ECD0: .word 0x000001CA
	thumb_func_end ov66_0222EC70

	thumb_func_start ov66_0222ECD4
ov66_0222ECD4: ; 0x0222ECD4
	push {r4, lr}
	ldr r3, _0222ED74 ; =0x000001CA
	add r4, r0, #0
	ldrb r2, [r4, r3]
	mov r0, #0
	cmp r2, #1
	bne _0222ECEE
	sub r3, r3, #4
	ldrb r3, [r4, r3]
	cmp r3, #2
	beq _0222ECFC
	mov r0, #1
	b _0222ECFC
_0222ECEE:
	cmp r2, #2
	bne _0222ECFC
	sub r3, r3, #4
	ldrb r3, [r4, r3]
	cmp r3, #3
	beq _0222ECFC
	mov r0, #1
_0222ECFC:
	cmp r0, #0
	beq _0222ED14
	mov r0, #0x71
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	bl ov66_02232BA0
	add r1, r0, #0
	add r0, r4, #0
	bl ov66_0222FD50
	pop {r4, pc}
_0222ED14:
	cmp r2, #1
	beq _0222ED1E
	cmp r2, #2
	beq _0222ED26
	b _0222ED2E
_0222ED1E:
	ldr r0, _0222ED78 ; =0x000001C6
	mov r2, #3
	strb r2, [r4, r0]
	b _0222ED42
_0222ED26:
	ldr r0, _0222ED78 ; =0x000001C6
	mov r2, #2
	strb r2, [r4, r0]
	b _0222ED42
_0222ED2E:
	mov r0, #0x71
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	bl ov66_02232BA0
	add r1, r0, #0
	add r0, r4, #0
	bl ov66_0222FD50
	pop {r4, pc}
_0222ED42:
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov66_0222FD28
	mov r0, #0x71
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	bl ov66_02232BA0
	mov r2, #0x1e
	lsl r2, r2, #4
	add r1, r0, #0
	mov r0, #2
	add r2, r4, r2
	mov r3, #4
	bl ov66_02232E5C
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov66_0222FD70
	pop {r4, pc}
	nop
_0222ED74: .word 0x000001CA
_0222ED78: .word 0x000001C6
	thumb_func_end ov66_0222ECD4

	thumb_func_start ov66_0222ED7C
ov66_0222ED7C: ; 0x0222ED7C
	push {r4, lr}
	ldr r1, _0222EDBC ; =0x000001C6
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _0222EDBA
	add r0, r1, #4
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0222EDBA
	add r0, r1, #0
	mov r2, #0
	add r0, #0x1c
	strh r2, [r4, r0]
	sub r0, r1, #2
	ldrh r0, [r4, r0]
	bl ov66_02232BA0
	mov r2, #0x1e
	lsl r2, r2, #4
	add r1, r0, #0
	mov r0, #3
	add r2, r4, r2
	mov r3, #4
	bl ov66_02232E5C
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov66_0222FC74
_0222EDBA:
	pop {r4, pc}
	; .align 2, 0
_0222EDBC: .word 0x000001C6
	thumb_func_end ov66_0222ED7C

	thumb_func_start ov66_0222EDC0
ov66_0222EDC0: ; 0x0222EDC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222EDF0 ; =0x000001C6
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0222EDEC
	sub r0, r0, #2
	ldrh r0, [r4, r0]
	bl ov66_02232BA0
	ldr r2, _0222EDF0 ; =0x000001C6
	add r1, r0, #0
	mov r3, #4
	add r0, r2, #0
	strb r3, [r4, r2]
	add r0, #0x1c
	add r2, #0x1a
	strh r3, [r4, r0]
	mov r0, #2
	add r2, r4, r2
	bl ov66_02232E5C
_0222EDEC:
	pop {r4, pc}
	nop
_0222EDF0: .word 0x000001C6
	thumb_func_end ov66_0222EDC0

	thumb_func_start ov66_0222EDF4
ov66_0222EDF4: ; 0x0222EDF4
	ldr r1, _0222EE04 ; =0x000001CA
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0222EE00
	mov r0, #1
	bx lr
_0222EE00:
	mov r0, #0
	bx lr
	; .align 2, 0
_0222EE04: .word 0x000001CA
	thumb_func_end ov66_0222EDF4

	thumb_func_start ov66_0222EE08
ov66_0222EE08: ; 0x0222EE08
	ldr r1, _0222EE18 ; =0x000001CA
	ldrb r0, [r0, r1]
	cmp r0, #2
	bne _0222EE14
	mov r0, #1
	bx lr
_0222EE14:
	mov r0, #0
	bx lr
	; .align 2, 0
_0222EE18: .word 0x000001CA
	thumb_func_end ov66_0222EE08

	thumb_func_start ov66_0222EE1C
ov66_0222EE1C: ; 0x0222EE1C
	mov r1, #0x71
	lsl r1, r1, #2
	ldrh r0, [r0, r1]
	bx lr
	thumb_func_end ov66_0222EE1C

	thumb_func_start ov66_0222EE24
ov66_0222EE24: ; 0x0222EE24
	ldr r1, _0222EE2C ; =0x000001CB
	ldrb r0, [r0, r1]
	bx lr
	nop
_0222EE2C: .word 0x000001CB
	thumb_func_end ov66_0222EE24

	thumb_func_start ov66_0222EE30
ov66_0222EE30: ; 0x0222EE30
	ldr r1, _0222EE38 ; =0x000001C6
	ldrb r0, [r0, r1]
	bx lr
	nop
_0222EE38: .word 0x000001C6
	thumb_func_end ov66_0222EE30

	thumb_func_start ov66_0222EE3C
ov66_0222EE3C: ; 0x0222EE3C
	mov r1, #0x72
	lsl r1, r1, #2
	ldrh r0, [r0, r1]
	bx lr
	thumb_func_end ov66_0222EE3C

	thumb_func_start ov66_0222EE44
ov66_0222EE44: ; 0x0222EE44
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0222EE52
	bl sub_02022974
_0222EE52:
	mov r0, #0x73
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #6
	blo _0222EE62
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222EE62:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222EE44

	thumb_func_start ov66_0222EE68
ov66_0222EE68: ; 0x0222EE68
	push {r3, lr}
	ldr r1, _0222EE8C ; =0x000001C6
	ldrb r2, [r0, r1]
	cmp r2, #4
	bne _0222EE76
	mov r0, #1
	pop {r3, pc}
_0222EE76:
	sub r1, r1, #6
	add r0, r0, r1
	bl ov66_0222FD9C
	cmp r0, #0
	bne _0222EE86
	mov r0, #1
	pop {r3, pc}
_0222EE86:
	mov r0, #0
	pop {r3, pc}
	nop
_0222EE8C: .word 0x000001C6
	thumb_func_end ov66_0222EE68

	thumb_func_start ov66_0222EE90
ov66_0222EE90: ; 0x0222EE90
	mov r1, #7
	lsl r1, r1, #6
	ldr r3, _0222EE9C ; =ov66_0222FDBC
	add r0, r0, r1
	bx r3
	nop
_0222EE9C: .word ov66_0222FDBC
	thumb_func_end ov66_0222EE90

	thumb_func_start ov66_0222EEA0
ov66_0222EEA0: ; 0x0222EEA0
	ldr r1, _0222EEA8 ; =0x000001C7
	mov r2, #1
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_0222EEA8: .word 0x000001C7
	thumb_func_end ov66_0222EEA0

	thumb_func_start ov66_0222EEAC
ov66_0222EEAC: ; 0x0222EEAC
	ldr r1, _0222EEB4 ; =0x000001C7
	ldrb r0, [r0, r1]
	bx lr
	nop
_0222EEB4: .word 0x000001C7
	thumb_func_end ov66_0222EEAC

	thumb_func_start ov66_0222EEB8
ov66_0222EEB8: ; 0x0222EEB8
	push {r4, lr}
	add r4, r0, #0
	bl ov66_0222EDF4
	cmp r0, #1
	bne _0222EED2
	mov r1, #7
	lsl r1, r1, #6
	add r0, r4, r1
	add r1, r1, #4
	ldrh r1, [r4, r1]
	bl ov66_0222FCF4
_0222EED2:
	pop {r4, pc}
	thumb_func_end ov66_0222EEB8

	thumb_func_start ov66_0222EED4
ov66_0222EED4: ; 0x0222EED4
	mov r2, #7
	lsl r2, r2, #6
	ldr r3, _0222EEE0 ; =ov66_0222FCF4
	add r0, r0, r2
	bx r3
	nop
_0222EEE0: .word ov66_0222FCF4
	thumb_func_end ov66_0222EED4

	thumb_func_start ov66_0222EEE4
ov66_0222EEE4: ; 0x0222EEE4
	mov r2, #7
	lsl r2, r2, #6
	ldr r3, _0222EEF0 ; =ov66_0222FCBC
	add r0, r0, r2
	bx r3
	nop
_0222EEF0: .word ov66_0222FCBC
	thumb_func_end ov66_0222EEE4

	thumb_func_start ov66_0222EEF4
ov66_0222EEF4: ; 0x0222EEF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_0202B628
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_0222E374
	add r5, r0, #0
	beq _0222EF42
	mov r0, #0x70
	bl sub_02025E6C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x70
	bl ov66_0222E640
	add r0, r4, #0
	bl sub_02025EF0
	add r5, #0x38
	ldrb r1, [r5]
	mov r2, #0x70
	mov r3, #0x16
	bl sub_0202C250
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #4
	bl sub_0202B758
	add r0, r4, #0
	bl sub_020181C4
_0222EF42:
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_0222EEF4

	thumb_func_start ov66_0222EF44
ov66_0222EF44: ; 0x0222EF44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_0202B628
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_0222E374
	add r5, r0, #0
	beq _0222EF92
	mov r0, #0x70
	bl sub_02025E6C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x70
	bl ov66_0222E640
	add r0, r4, #0
	bl sub_02025EF0
	add r5, #0x38
	ldrb r1, [r5]
	mov r2, #0x70
	mov r3, #0x17
	bl sub_0202C250
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #4
	bl sub_0202B758
	add r0, r4, #0
	bl sub_020181C4
_0222EF92:
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_0222EF44

	thumb_func_start ov66_0222EF94
ov66_0222EF94: ; 0x0222EF94
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0]
	add r4, r1, #0
	bl sub_0202B628
	add r5, r0, #0
	cmp r4, #6
	bhi _0222EFF0
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222EFB0: ; jump table
	.short _0222EFBE - _0222EFB0 - 2 ; case 0
	.short _0222EFBE - _0222EFB0 - 2 ; case 1
	.short _0222EFBE - _0222EFB0 - 2 ; case 2
	.short _0222EFCC - _0222EFB0 - 2 ; case 3
	.short _0222EFCC - _0222EFB0 - 2 ; case 4
	.short _0222EFD8 - _0222EFB0 - 2 ; case 5
	.short _0222EFE4 - _0222EFB0 - 2 ; case 6
_0222EFBE:
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0x18
	bl sub_0202C280
	add r1, r0, #0
	b _0222EFF2
_0222EFCC:
	mov r0, #0x70
	mov r1, #0x19
	bl sub_0202C244
	add r1, r0, #0
	b _0222EFF2
_0222EFD8:
	mov r0, #0x70
	mov r1, #0x1a
	bl sub_0202C244
	add r1, r0, #0
	b _0222EFF2
_0222EFE4:
	mov r0, #0x70
	mov r1, #0x1b
	bl sub_0202C244
	add r1, r0, #0
	b _0222EFF2
_0222EFF0:
	mov r1, #0
_0222EFF2:
	cmp r1, #0
	beq _0222EFFE
	add r0, r5, #0
	mov r2, #4
	bl sub_0202B758
_0222EFFE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_0222EF94

	thumb_func_start ov66_0222F000
ov66_0222F000: ; 0x0222F000
	push {r4, lr}
	ldr r0, [r0, #0]
	bl sub_0202B628
	add r4, r0, #0
	mov r0, #0x70
	mov r1, #0x1c
	bl sub_0202C244
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #4
	bl sub_0202B758
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0222F000

	thumb_func_start ov66_0222F020
ov66_0222F020: ; 0x0222F020
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0202CD88
	mov r1, #0x2e
	bl sub_0202CF28
	pop {r3, pc}
	thumb_func_end ov66_0222F020

	thumb_func_start ov66_0222F030
ov66_0222F030: ; 0x0222F030
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0202CD88
	mov r1, #0x76
	bl sub_0202CF28
	pop {r3, pc}
	thumb_func_end ov66_0222F030

	thumb_func_start ov66_0222F040
ov66_0222F040: ; 0x0222F040
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blt _0222F04E
	bl sub_02022974
_0222F04E:
	mov r0, #0xe9
	mov r2, #1
	add r1, r5, r4
	lsl r0, r0, #2
	strb r2, [r1, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222F040

	thumb_func_start ov66_0222F05C
ov66_0222F05C: ; 0x0222F05C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, #0xe9
	add r5, r0, #0
	add r7, r4, #0
	lsl r6, r6, #2
_0222F068:
	add r0, r5, r4
	ldrb r0, [r0, r6]
	cmp r0, #0
	bne _0222F0D0
	cmp r4, #7
	bhi _0222F0C6
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F080: ; jump table
	.short _0222F090 - _0222F080 - 2 ; case 0
	.short _0222F090 - _0222F080 - 2 ; case 1
	.short _0222F090 - _0222F080 - 2 ; case 2
	.short _0222F0A2 - _0222F080 - 2 ; case 3
	.short _0222F0A2 - _0222F080 - 2 ; case 4
	.short _0222F0A2 - _0222F080 - 2 ; case 5
	.short _0222F0B4 - _0222F080 - 2 ; case 6
	.short _0222F0C6 - _0222F080 - 2 ; case 7
_0222F090:
	add r0, r5, #0
	bl ov66_0222E190
	cmp r0, #1
	bne _0222F09E
	add r0, r7, #0
	b _0222F0C8
_0222F09E:
	mov r0, #1
	b _0222F0C8
_0222F0A2:
	add r0, r5, #0
	bl ov66_0222E12C
	cmp r0, #1
	bne _0222F0B0
	mov r0, #0
	b _0222F0C8
_0222F0B0:
	mov r0, #1
	b _0222F0C8
_0222F0B4:
	add r0, r5, #0
	bl ov66_0222E19C
	cmp r0, #1
	bne _0222F0C2
	mov r0, #0
	b _0222F0C8
_0222F0C2:
	mov r0, #1
	b _0222F0C8
_0222F0C6:
	mov r0, #1
_0222F0C8:
	cmp r0, #1
	bne _0222F0D0
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222F0D0:
	add r4, r4, #1
	cmp r4, #8
	blt _0222F068
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_0222F05C

	thumb_func_start ov66_0222F0DC
ov66_0222F0DC: ; 0x0222F0DC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0xeb
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_02230828
	add r5, r0, #0
	add r0, r4, #0
	bl ov66_0222E338
	add r1, r0, #0
	add r0, r4, #0
	bl ov66_0222E924
	cmp r0, #1
	bne _0222F100
	add r5, r5, #2
_0222F100:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_0222F0DC

	thumb_func_start ov66_0222F104
ov66_0222F104: ; 0x0222F104
	ldr r1, _0222F10C ; =0x0000049C
	ldr r3, _0222F110 ; =ov66_02230A68
	add r0, r0, r1
	bx r3
	; .align 2, 0
_0222F10C: .word 0x0000049C
_0222F110: .word ov66_02230A68
	thumb_func_end ov66_0222F104

	thumb_func_start ov66_0222F114
ov66_0222F114: ; 0x0222F114
	ldr r1, _0222F11C ; =0x0000049C
	ldr r3, _0222F120 ; =ov66_02230A64
	add r0, r0, r1
	bx r3
	; .align 2, 0
_0222F11C: .word 0x0000049C
_0222F120: .word ov66_02230A64
	thumb_func_end ov66_0222F114

	thumb_func_start ov66_0222F124
ov66_0222F124: ; 0x0222F124
	add r3, r1, #0
	ldr r1, _0222F140 ; =0x00000524
	mov r2, #1
	str r2, [r0, r1]
	sub r1, #0x14
	add r2, r0, r1
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	nop
_0222F140: .word 0x00000524
	thumb_func_end ov66_0222F124

	thumb_func_start ov66_0222F144
ov66_0222F144: ; 0x0222F144
	add r3, r1, #0
	ldr r1, _0222F168 ; =0x00000524
	ldr r2, [r0, r1]
	cmp r2, #1
	bne _0222F162
	sub r1, #0x14
	add r2, r0, r1
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	mov r0, #1
	bx lr
_0222F162:
	mov r0, #0
	bx lr
	nop
_0222F168: .word 0x00000524
	thumb_func_end ov66_0222F144

	thumb_func_start ov66_0222F16C
ov66_0222F16C: ; 0x0222F16C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F190 ; =0x000004B8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222F17C
	bl sub_02022974
_0222F17C:
	ldr r0, [r4, #0]
	bl sub_02025E38
	ldr r1, _0222F194 ; =0x00000528
	ldr r1, [r4, r1]
	bl sub_0207E060
	ldr r1, _0222F190 ; =0x000004B8
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_0222F190: .word 0x000004B8
_0222F194: .word 0x00000528
	thumb_func_end ov66_0222F16C

	thumb_func_start ov66_0222F198
ov66_0222F198: ; 0x0222F198
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F1B0 ; =0x000004B8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222F1AE
	bl sub_0207E0B0
	ldr r0, _0222F1B0 ; =0x000004B8
	mov r1, #0
	str r1, [r4, r0]
_0222F1AE:
	pop {r4, pc}
	; .align 2, 0
_0222F1B0: .word 0x000004B8
	thumb_func_end ov66_0222F198

	thumb_func_start ov66_0222F1B4
ov66_0222F1B4: ; 0x0222F1B4
	push {r3, r4}
	mov r4, #0
	cmp r1, #0
	bls _0222F1D2
	ldr r2, _0222F1D8 ; =0x0000FFFF
_0222F1BE:
	ldrh r3, [r0]
	cmp r3, r2
	bne _0222F1CA
	mov r0, #1
	pop {r3, r4}
	bx lr
_0222F1CA:
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, r1
	blo _0222F1BE
_0222F1D2:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0222F1D8: .word 0x0000FFFF
	thumb_func_end ov66_0222F1B4

	thumb_func_start ov66_0222F1DC
ov66_0222F1DC: ; 0x0222F1DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r2, #0
	str r1, [sp]
	cmp r3, #0
	beq _0222F2B2
	ldr r2, _0222F388 ; =0x00000508
	mov r1, #0x42
	add r0, r4, r2
	add r2, #0x20
	lsl r1, r1, #2
	ldr r2, [r4, r2]
	add r1, r4, r1
	bl ov66_0222FC0C
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r4, #0]
	add r0, r4, r0
	bl ov66_0222FA04
	cmp r0, #0
	bne _0222F212
	ldr r0, _0222F38C ; =0x0000052C
	mov r1, #1
	str r1, [r4, r0]
_0222F212:
	add r0, r5, #0
	bl ov66_02232B78
	mov r2, #0x16
	lsl r2, r2, #4
	add r1, r0, #0
	ldrb r2, [r4, r2]
	ldr r0, [r4, #4]
	mov r3, #3
	bl ov66_022317E4
	mov r0, #0x4a
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r5, #0
	add r1, sp, #0xc
	bl ov66_0223295C
	mov r0, #5
	lsl r0, r0, #6
	add r0, r4, r0
	add r1, sp, #0xc
	bl ov66_02231428
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_0222E880
	add r6, r0, #0
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_0222E8A4
	add r7, r0, #0
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_0222E824
	cmp r6, #0
	beq _0222F28C
	cmp r0, #1
	bne _0222F28C
	mov r2, #5
	ldr r3, _0222F390 ; =0x00000528
	lsl r2, r2, #6
	lsl r0, r6, #0x10
	lsl r1, r7, #0x18
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl ov66_02234EA8
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [sp, #4]
	str r0, [r4, r1]
	b _0222F29E
_0222F28C:
	mov r0, #0x51
	mov r1, #0xc
	lsl r0, r0, #2
	strb r1, [r4, r0]
	add r1, r0, #1
	mov r2, #0
	strb r2, [r4, r1]
	add r0, r0, #2
	strb r2, [r4, r0]
_0222F29E:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r4, #0]
	add r0, r4, r0
	bl ov66_0222F9EC
	add r0, r4, #0
	bl ov66_0222F964
	b _0222F2F6
_0222F2B2:
	bl ov66_02232988
	add r6, r0, #0
	add r0, r5, #0
	bl ov66_02232B78
	add r7, r0, #0
	ldr r0, [sp]
	bl ov66_0222E7C8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r7, #0
	mov r3, #0
	bl ov66_022317E4
	cmp r6, r5
	bne _0222F2DE
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov66_0223180C
_0222F2DE:
	ldr r0, _0222F394 ; =0x000004BC
	mov r2, #0
	add r0, r4, r0
	add r1, r5, #0
	mvn r2, r2
	bl ov66_02230AF8
	cmp r0, #0
	beq _0222F2F6
	add r0, r4, #0
	bl ov66_0222F964
_0222F2F6:
	add r0, r5, #0
	bl ov66_02232B78
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xf8
	ldr r1, [r0, #0]
	mov r0, #1
	lsl r0, r6
	orr r1, r0
	add r0, r4, #0
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov66_02233394
	cmp r0, #1
	bne _0222F366
	mov r0, #0xf3
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r6, #0
	mov r2, #1
	bl ov66_0223086C
	str r6, [sp, #8]
	mov r2, #0xf3
	lsl r2, r2, #2
	ldr r0, [r4, #4]
	add r1, sp, #8
	add r2, r4, r2
	bl ov66_02231B24
	add r0, r5, #0
	bl ov66_022333BC
	add r3, r0, #0
	beq _0222F354
	mov r0, #0xf9
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r6, #0
	mov r2, #1
	bl ov66_022308C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0222F354:
	mov r0, #0xf9
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r6, #0
	mov r2, #0
	bl ov66_022308C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0222F366:
	mov r0, #0xf3
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r6, #0
	mov r2, #0
	bl ov66_0223086C
	mov r0, #0xf9
	lsl r0, r0, #2
	mov r2, #0
	add r0, r4, r0
	add r1, r6, #0
	add r3, r2, #0
	bl ov66_022308C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F388: .word 0x00000508
_0222F38C: .word 0x0000052C
_0222F390: .word 0x00000528
_0222F394: .word 0x000004BC
	thumb_func_end ov66_0222F1DC

	thumb_func_start ov66_0222F398
ov66_0222F398: ; 0x0222F398
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl ov66_022328F0
	cmp r6, r0
	beq _0222F450
	add r0, r6, #0
	bl ov66_02232B78
	add r4, r0, #0
	add r0, r5, #0
	bl ov66_0222EDF4
	cmp r0, #1
	bne _0222F3CC
	add r0, r5, #0
	bl ov66_0222EE1C
	cmp r4, r0
	bne _0222F3CC
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	bl ov66_0222FC84
_0222F3CC:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov66_022317F0
	cmp r0, #0
	beq _0222F3EA
	add r0, r6, #0
	bl ov66_022329E4
	bl ov66_02232B78
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl ov66_0223180C
_0222F3EA:
	mov r0, #0xf3
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	bl ov66_0223086C
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, r4, #0
	bl ov66_0222FD10
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, r4, #0
	bl ov66_0222FCD8
	ldr r0, _0222F454 ; =0x000004BC
	mov r2, #0
	add r0, r5, r0
	add r1, r6, #0
	mvn r2, r2
	bl ov66_02230AF8
	cmp r0, #0
	beq _0222F428
	add r0, r5, #0
	bl ov66_0222F964
_0222F428:
	mov r0, #0xf9
	lsl r0, r0, #2
	mov r2, #0
	add r0, r5, r0
	add r1, r4, #0
	add r3, r2, #0
	bl ov66_022308C8
	add r0, r6, #0
	bl ov66_02232B78
	add r1, r5, #0
	add r1, #0xfc
	ldr r2, [r1, #0]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	add r5, #0xfc
	str r0, [r5, #0]
_0222F450:
	pop {r4, r5, r6, pc}
	nop
_0222F454: .word 0x000004BC
	thumb_func_end ov66_0222F398

	thumb_func_start ov66_0222F458
ov66_0222F458: ; 0x0222F458
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov66_02232B78
	mov r1, #0x41
	add r6, r0, #0
	lsl r1, r1, #2
	mov r2, #1
	ldr r0, [r4, r1]
	lsl r2, r6
	orr r0, r2
	str r0, [r4, r1]
	add r0, r5, #0
	bl ov66_0222E71C
	cmp r0, #8
	bhi _0222F4A6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F488: ; jump table
	.short _0222F4A6 - _0222F488 - 2 ; case 0
	.short _0222F4A6 - _0222F488 - 2 ; case 1
	.short _0222F49A - _0222F488 - 2 ; case 2
	.short _0222F49A - _0222F488 - 2 ; case 3
	.short _0222F49A - _0222F488 - 2 ; case 4
	.short _0222F49A - _0222F488 - 2 ; case 5
	.short _0222F49A - _0222F488 - 2 ; case 6
	.short _0222F49A - _0222F488 - 2 ; case 7
	.short _0222F49A - _0222F488 - 2 ; case 8
_0222F49A:
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	add r1, r6, #0
	bl ov66_0222FD10
_0222F4A6:
	add r0, r5, #0
	bl ov66_0222E8D8
	cmp r0, #1
	bne _0222F4C4
	add r0, r5, #0
	bl ov66_0222E8C4
	add r1, r0, #0
	mov r0, #0xeb
	lsl r0, r0, #2
	add r0, r4, r0
	add r2, r6, #0
	bl ov66_022307F0
_0222F4C4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_0222F458

	thumb_func_start ov66_0222F4C8
ov66_0222F4C8: ; 0x0222F4C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r6, #0
	blx ov66_02235FD8
	add r0, r4, #0
	add r0, #0xd4
	add r1, sp, #0
	bl ov66_02231428
	add r0, sp, #0
	ldmia r0!, {r2, r3}
	add r0, r4, #0
	add r0, #0xd8
	stmia r0!, {r2, r3}
	cmp r5, #0x13
	bls _0222F4F2
	b _0222F662
_0222F4F2:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F4FE: ; jump table
	.short _0222F526 - _0222F4FE - 2 ; case 0
	.short _0222F572 - _0222F4FE - 2 ; case 1
	.short _0222F55C - _0222F4FE - 2 ; case 2
	.short _0222F55C - _0222F4FE - 2 ; case 3
	.short _0222F55C - _0222F4FE - 2 ; case 4
	.short _0222F55C - _0222F4FE - 2 ; case 5
	.short _0222F55C - _0222F4FE - 2 ; case 6
	.short _0222F59A - _0222F4FE - 2 ; case 7
	.short _0222F584 - _0222F4FE - 2 ; case 8
	.short _0222F584 - _0222F4FE - 2 ; case 9
	.short _0222F584 - _0222F4FE - 2 ; case 10
	.short _0222F5C2 - _0222F4FE - 2 ; case 11
	.short _0222F5AC - _0222F4FE - 2 ; case 12
	.short _0222F5AC - _0222F4FE - 2 ; case 13
	.short _0222F5AC - _0222F4FE - 2 ; case 14
	.short _0222F646 - _0222F4FE - 2 ; case 15
	.short _0222F5D4 - _0222F4FE - 2 ; case 16
	.short _0222F5FE - _0222F4FE - 2 ; case 17
	.short _0222F61C - _0222F4FE - 2 ; case 18
	.short _0222F62C - _0222F4FE - 2 ; case 19
_0222F526:
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0xd4
	bl ov66_022317D8
	add r0, r4, #0
	add r0, #0xd8
	ldmia r0!, {r2, r3}
	add r0, r4, #0
	mov r1, #0x7f
	add r0, #0xe0
	stmia r0!, {r2, r3}
	lsl r1, r1, #2
	ldrb r3, [r4, r1]
	mov r0, #1
	mov r2, #1
	bic r3, r0
	add r0, r3, #0
	orr r0, r2
	strb r0, [r4, r1]
	add r0, r2, #0
	add r0, #0xff
	ldr r0, [r4, r0]
	orr r0, r2
	add r2, #0xff
	str r0, [r4, r2]
	b _0222F662
_0222F55C:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0222F572
	mov r1, #0x4b
	lsl r1, r1, #2
	mov r6, #1
	add r0, r1, #0
	str r6, [r4, #8]
	add r0, #0xd6
	mov r7, #0
	strh r1, [r4, r0]
_0222F572:
	ldr r0, _0222F674 ; =0x000001FD
	strb r5, [r4, r0]
	sub r0, #0xfd
	ldr r1, [r4, r0]
	mov r0, #2
	orr r1, r0
	add r0, #0xfe
	str r1, [r4, r0]
	b _0222F662
_0222F584:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0222F59A
	mov r1, #0x4b
	lsl r1, r1, #2
	mov r6, #1
	add r0, r1, #0
	str r6, [r4, #8]
	add r0, #0xd6
	mov r7, #0
	strh r1, [r4, r0]
_0222F59A:
	ldr r0, _0222F678 ; =0x000001FE
	strb r5, [r4, r0]
	sub r0, #0xfe
	ldr r1, [r4, r0]
	mov r0, #4
	orr r1, r0
	add r0, #0xfc
	str r1, [r4, r0]
	b _0222F662
_0222F5AC:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0222F5C2
	mov r1, #0x4b
	lsl r1, r1, #2
	mov r6, #1
	add r0, r1, #0
	str r6, [r4, #8]
	add r0, #0xd6
	mov r7, #0
	strh r1, [r4, r0]
_0222F5C2:
	ldr r0, _0222F67C ; =0x000001FF
	strb r5, [r4, r0]
	sub r0, #0xff
	ldr r1, [r4, r0]
	mov r0, #8
	orr r1, r0
	add r0, #0xf8
	str r1, [r4, r0]
	b _0222F662
_0222F5D4:
	mov r6, #1
	mov r0, #6
	add r7, r6, #0
	bl ov66_02232BEC
	add r5, r0, #0
	mov r0, #7
	bl ov66_02232BEC
	add r2, r0, #0
	ldr r0, _0222F680 ; =0x0000049C
	add r1, r5, #0
	add r0, r4, r0
	bl ov66_022309A4
	mov r1, #0x4b
	lsl r1, r1, #2
	add r0, r1, #0
	add r0, #0xd8
	strh r1, [r4, r0]
	b _0222F662
_0222F5FE:
	mov r1, #0x7f
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	mov r0, #0xc
	bic r2, r0
	mov r0, #8
	orr r2, r0
	add r0, #0xf8
	strb r2, [r4, r1]
	ldr r1, [r4, r0]
	mov r0, #0x20
	orr r1, r0
	add r0, #0xe0
	str r1, [r4, r0]
	b _0222F662
_0222F61C:
	mov r1, #0x4b
	lsl r1, r1, #2
	add r0, r1, #0
	add r0, #0xda
	mov r6, #1
	mov r7, #2
	strh r1, [r4, r0]
	b _0222F662
_0222F62C:
	mov r1, #0x7f
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	mov r0, #0x80
	mov r6, #1
	orr r2, r0
	strb r2, [r4, r1]
	mov r1, #0xe1
	lsl r1, r1, #2
	lsl r0, r0, #2
	mov r7, #4
	strh r1, [r4, r0]
	b _0222F662
_0222F646:
	mov r1, #0x7f
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	mov r0, #0x60
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	add r0, #0xe0
	strb r2, [r4, r1]
	ldr r1, [r4, r0]
	mov r0, #0x10
	orr r1, r0
	add r0, #0xf0
	str r1, [r4, r0]
_0222F662:
	cmp r6, #0
	beq _0222F66E
	add r0, r4, #0
	add r1, r7, #0
	bl ov66_02230298
_0222F66E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F674: .word 0x000001FD
_0222F678: .word 0x000001FE
_0222F67C: .word 0x000001FF
_0222F680: .word 0x0000049C
	thumb_func_end ov66_0222F4C8

	thumb_func_start ov66_0222F684
ov66_0222F684: ; 0x0222F684
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x42
	add r4, r2, #0
	add r6, r1, #0
	lsl r0, r0, #2
	ldr r1, [r4, #0]
	add r0, r4, r0
	bl ov66_0222FA04
	cmp r0, #0
	bne _0222F6A4
	ldr r0, _0222F6C0 ; =0x0000052C
	mov r1, #1
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0222F6A4:
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r5, #0
	add r2, r6, #0
	bl ov66_0222FA28
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r4, #0]
	add r0, r4, r0
	bl ov66_0222F9EC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222F6C0: .word 0x0000052C
	thumb_func_end ov66_0222F684

	thumb_func_start ov66_0222F6C4
ov66_0222F6C4: ; 0x0222F6C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xc8
	bl sub_020D5124
	add r0, sp, #4
	bl ov66_02232B20
	add r4, #0x20
	add r0, r4, #0
	bl ov66_0222E880
	add r6, r0, #0
	add r0, r4, #0
	bl ov66_0222E8A4
	add r2, r0, #0
	lsl r1, r6, #0x10
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov66_02231560
	mov r6, #0
	add r4, r6, #0
_0222F702:
	ldr r0, [sp, #8]
	mov r1, #0
	ldr r0, [r0, r4]
	mvn r1, r1
	cmp r0, r1
	beq _0222F732
	bl ov66_0223293C
	str r0, [sp]
	bl ov66_0222E880
	add r7, r0, #0
	ldr r0, [sp]
	bl ov66_0222E8A4
	add r2, r0, #0
	lsl r1, r7, #0x10
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov66_02231560
_0222F732:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x14
	blt _0222F702
	mov r4, #0
	mov r7, #1
_0222F73E:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl ov66_02232CD4
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl ov66_02232D00
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov66_02231560
	add r4, r4, #1
	cmp r4, #0x14
	blt _0222F73E
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov66_0222F6C4

	thumb_func_start ov66_0222F768
ov66_0222F768: ; 0x0222F768
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _0222F7C6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _0222F7C6
	bl ov66_0223287C
	cmp r0, #2
	bne _0222F7C6
	add r0, r4, #0
	bl ov66_0222EB48
	add r2, r4, #0
	add r2, #0xe0
	ldr r3, [r2, #0]
	add r2, r4, #0
	add r2, #0xe4
	mov r1, #0
	ldr r2, [r2, #0]
	add r5, r0, r3
	adc r1, r2
	add r0, r4, #0
	add r0, #0xd8
	ldr r3, [r0, #0]
	add r0, r4, #0
	add r0, #0xdc
	ldr r2, [r0, #0]
	sub r0, r5, r3
	sbc r1, r2
	bge _0222F7C6
	mov r1, #0x7f
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	mov r0, #0x80
	orr r2, r0
	strb r2, [r4, r1]
	mov r1, #0xe1
	lsl r1, r1, #2
	lsl r0, r0, #2
	strh r1, [r4, r0]
_0222F7C6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_0222F768

	thumb_func_start ov66_0222F7C8
ov66_0222F7C8: ; 0x0222F7C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp]
	add r0, r1, #0
	add r4, r2, #0
	bl sub_02025E38
	str r0, [sp, #0x18]
	ldr r0, [sp]
	bl sub_0207A268
	str r0, [sp, #0x14]
	ldr r0, [sp]
	bl sub_02027560
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl sub_0202C878
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl sub_02025CD8
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_02025F04
	add r1, r5, #0
	add r4, r0, #0
	add r1, #0x28
	mov r2, #8
	bl sub_02023DF0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x18]
	bl sub_02025F20
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x14]
	bl sub_0207A0F8
	str r0, [sp, #4]
	mov r4, #0
	add r6, r5, #0
_0222F838:
	ldr r0, [sp, #4]
	cmp r4, r0
	bge _0222F878
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	add r1, r6, #0
	add r1, #0x40
	strh r0, [r1]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r5, r4
	add r1, #0x4c
	strb r0, [r1]
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	add r1, r5, r4
	add r1, #0x52
	strb r0, [r1]
	b _0222F880
_0222F878:
	add r1, r6, #0
	ldr r0, _0222F960 ; =0x000001EF
	add r1, #0x40
	strh r0, [r1]
_0222F880:
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #6
	blt _0222F838
	ldr r0, [sp, #0x18]
	bl sub_02025F30
	add r1, r5, #0
	add r1, #0x58
	strb r0, [r1]
	ldr r0, [sp, #0x18]
	bl sub_02025FD8
	add r1, r5, #0
	add r1, #0x59
	strb r0, [r1]
	ldr r0, [sp, #0x18]
	bl sub_02025F8C
	add r1, r5, #0
	add r1, #0x5a
	strh r0, [r1]
	add r0, r5, #0
	add r0, #0x5a
	ldrh r0, [r0]
	bl ov66_02230C0C
	add r1, r5, #0
	add r1, #0x5a
	strh r0, [r1]
	ldr r0, [sp, #0x10]
	bl sub_0202C8C0
	add r1, r5, #0
	add r1, #0x5c
	strh r0, [r1]
	ldr r0, [sp, #0x10]
	bl sub_0202C8C4
	add r1, r5, #0
	add r1, #0x5e
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	bl sub_02027474
	add r1, r5, #0
	add r1, #0x5f
	strb r0, [r1]
	ldr r0, [sp, #0x18]
	bl sub_02025FF0
	add r1, r5, #0
	add r1, #0x60
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x61
	strb r1, [r0]
	add r1, r5, #0
	mov r0, #0
	add r1, #0x63
	strb r0, [r1]
	add r1, r5, #0
	mov r2, #0xc
	add r1, #0x62
	strb r2, [r1]
	ldr r1, [sp, #8]
	add r4, r5, #0
	add r1, #0x24
	str r1, [sp, #8]
	ldmia r1!, {r2, r3}
	str r1, [sp, #8]
	add r1, r5, #0
	add r1, #0x64
	stmia r1!, {r2, r3}
	mov r3, #0x18
	add r2, r3, #0
	sub r2, #0x19
_0222F91C:
	add r1, r5, r0
	add r1, #0x6c
	strb r3, [r1]
	str r2, [r4, #0x78]
	add r0, r0, #1
	add r4, r4, #4
	cmp r0, #0xc
	blt _0222F91C
	mov r2, #0
	add r3, r5, #0
	add r1, r2, #0
_0222F932:
	add r0, r3, #0
	add r0, #0xa8
	add r2, r2, #1
	add r3, r3, #2
	strh r1, [r0]
	cmp r2, #2
	blt _0222F932
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	add r0, #0xac
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #3
	add r0, #0xb0
	str r1, [r0, #0]
	ldr r1, [sp]
	add r0, r5, #0
	bl ov66_0222F9EC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0222F960: .word 0x000001EF
	thumb_func_end ov66_0222F7C8

	thumb_func_start ov66_0222F964
ov66_0222F964: ; 0x0222F964
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r5, #0]
	add r0, r5, r0
	bl ov66_0222FA04
	cmp r0, #0
	bne _0222F980
	ldr r0, _0222F9E4 ; =0x0000052C
	mov r1, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0222F980:
	ldr r7, _0222F9E8 ; =0x000004BC
	mov r4, #0
	add r6, r5, #0
_0222F986:
	add r0, r5, r7
	add r1, r4, #0
	bl ov66_02230B78
	mov r1, #0x5d
	add r2, r5, r4
	lsl r1, r1, #2
	strb r0, [r2, r1]
	add r0, r5, r7
	add r1, r4, #0
	bl ov66_02230BA4
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r6, r1]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #0xc
	blt _0222F986
	sub r1, #0x68
	add r0, r5, r1
	add r1, #0x18
	add r1, r5, r1
	mov r2, #0x10
	bl sub_020C4DB0
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov66_02232908
	mov r1, #0x42
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, #0x28
	add r1, r5, r1
	mov r2, #0x10
	bl sub_020C4DB0
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r5, #0]
	add r0, r5, r0
	bl ov66_0222F9EC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F9E4: .word 0x0000052C
_0222F9E8: .word 0x000004BC
	thumb_func_end ov66_0222F964

	thumb_func_start ov66_0222F9EC
ov66_0222F9EC: ; 0x0222F9EC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	add r1, #0x20
	mov r2, #0x94
	bl sub_0202486C
	add r4, #0xb4
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0222F9EC

	thumb_func_start ov66_0222FA04
ov66_0222FA04: ; 0x0222FA04
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	add r1, #0x20
	mov r2, #0x94
	bl sub_0202486C
	add r4, #0xb4
	ldr r1, [r4, #0]
	cmp r0, r1
	beq _0222FA24
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_0222FA24:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov66_0222FA04

	thumb_func_start ov66_0222FA28
ov66_0222FA28: ; 0x0222FA28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r3, r5, #0
	add r7, r2, #0
	add r6, r4, #0
	add r3, #0x20
	mov r2, #0x12
_0222FA38:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222FA38
	ldr r0, [r6, #0]
	cmp r7, #0x94
	str r0, [r3, #0]
	bhi _0222FA56
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x20
	add r2, r7, #0
	bl sub_020C4DB0
	b _0222FA62
_0222FA56:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x20
	mov r2, #0x94
	bl sub_020C4DB0
_0222FA62:
	add r4, #8
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x10
	mov r2, #0x10
	bl sub_020C4DB0
	add r0, r5, #0
	add r5, #0x28
	add r1, r5, #0
	mov r2, #0x10
	bl sub_020C4DB0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_0222FA28

	thumb_func_start ov66_0222FA80
ov66_0222FA80: ; 0x0222FA80
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222FA80

	thumb_func_start ov66_0222FA88
ov66_0222FA88: ; 0x0222FA88
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #4
	add r6, r2, #0
	ldrsh r2, [r5, r1]
	add r7, r3, #0
	sub r0, r2, #1
	bmi _0222FAB4
	strh r0, [r5, #4]
	ldrsh r1, [r5, r1]
	mov r0, #0xd2
	lsl r0, r0, #2
	cmp r1, r0
	bne _0222FACE
	mov r0, #0
	mov r1, #0x7f
	bl sub_0200564C
	mov r0, #1
	strb r0, [r5, #0xe]
	b _0222FACE
_0222FAB4:
	cmp r2, #0
	bne _0222FACE
	ldrb r2, [r5]
	mov r0, #2
	orr r0, r2
	strb r0, [r5]
	ldr r2, [r4, #8]
	mov r0, #0x80
	orr r0, r2
	str r0, [r4, #8]
	ldrsh r0, [r5, r1]
	sub r0, r0, #1
	strh r0, [r5, #4]
_0222FACE:
	mov r0, #6
	ldrsh r2, [r5, r0]
	sub r1, r2, #1
	bmi _0222FADA
	strh r1, [r5, #6]
	b _0222FAF4
_0222FADA:
	cmp r2, #0
	bne _0222FAF4
	ldr r2, [r4, #8]
	mov r1, #4
	orr r2, r1
	mov r1, #8
	orr r2, r1
	mov r1, #2
	orr r1, r2
	str r1, [r4, #8]
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	strh r0, [r5, #6]
_0222FAF4:
	mov r0, #8
	ldrsh r2, [r5, r0]
	sub r1, r2, #1
	bmi _0222FB00
	strh r1, [r5, #8]
	b _0222FB24
_0222FB00:
	cmp r2, #0
	bne _0222FB24
	ldrb r1, [r5]
	mov r2, #0xc
	bic r1, r2
	mov r2, #4
	orr r1, r2
	strb r1, [r5]
	ldr r2, [r4, #8]
	mov r1, #0x20
	orr r1, r2
	str r1, [r4, #8]
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	strh r0, [r5, #8]
	add r0, r7, #0
	bl ov66_022309B4
_0222FB24:
	mov r0, #0xa
	ldrsh r1, [r5, r0]
	sub r0, r1, #1
	bmi _0222FB30
	strh r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0222FB30:
	cmp r1, #0
	bne _0222FB5E
	add r0, r6, #0
	bl ov66_022302D0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0222FB46
	ldr r0, _0222FB60 ; =0x000004BD
	bl sub_0200549C
_0222FB46:
	ldrb r1, [r5]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5]
	ldr r1, [r4, #8]
	mov r0, #0x40
	orr r0, r1
	str r0, [r4, #8]
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	strh r0, [r5, #0xa]
_0222FB5E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222FB60: .word 0x000004BD
	thumb_func_end ov66_0222FA88

	thumb_func_start ov66_0222FB64
ov66_0222FB64: ; 0x0222FB64
	ldrb r2, [r0]
	mov r1, #1
	bic r2, r1
	strb r2, [r0]
	ldrb r2, [r0]
	mov r1, #2
	bic r2, r1
	strb r2, [r0]
	ldrb r2, [r0]
	mov r1, #0xc
	bic r2, r1
	strb r2, [r0]
	ldrb r2, [r0]
	mov r1, #0x10
	bic r2, r1
	strb r2, [r0]
	ldrb r2, [r0]
	mov r1, #0x60
	bic r2, r1
	strb r2, [r0]
	ldrb r2, [r0]
	mov r1, #0x80
	bic r2, r1
	strb r2, [r0]
	mov r1, #1
	strb r1, [r0, #1]
	mov r1, #7
	strb r1, [r0, #2]
	mov r1, #0xb
	strb r1, [r0, #3]
	sub r1, #0xc
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	bx lr
	thumb_func_end ov66_0222FB64

	thumb_func_start ov66_0222FBAC
ov66_0222FBAC: ; 0x0222FBAC
	push {r3, lr}
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	bne _0222FBBE
	mov r0, #7
	mov r1, #0x2a
	bl sub_0200544C
	pop {r3, pc}
_0222FBBE:
	mov r0, #7
	mov r1, #0x7f
	bl sub_0200544C
	pop {r3, pc}
	thumb_func_end ov66_0222FBAC

	thumb_func_start ov66_0222FBC8
ov66_0222FBC8: ; 0x0222FBC8
	mov r1, #0xe1
	lsl r1, r1, #2
	strh r1, [r0]
	bx lr
	thumb_func_end ov66_0222FBC8

	thumb_func_start ov66_0222FBD0
ov66_0222FBD0: ; 0x0222FBD0
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0222FBDA
	mov r1, #1
_0222FBDA:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222FBD0

	thumb_func_start ov66_0222FBE0
ov66_0222FBE0: ; 0x0222FBE0
	mov r1, #0
	ldrsh r1, [r0, r1]
	cmp r1, #0
	ble _0222FBEC
	sub r1, r1, #1
	strh r1, [r0]
_0222FBEC:
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222FBE0

	thumb_func_start ov66_0222FBF0
ov66_0222FBF0: ; 0x0222FBF0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02025E6C
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0222FBF0

	thumb_func_start ov66_0222FC00
ov66_0222FC00: ; 0x0222FC00
	ldr r3, _0222FC08 ; =sub_020181C4
	ldr r0, [r0, #0]
	bx r3
	nop
_0222FC08: .word sub_020181C4
	thumb_func_end ov66_0222FC00

	thumb_func_start ov66_0222FC0C
ov66_0222FC0C: ; 0x0222FC0C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r7, #0
	mov r1, #0x94
	bl sub_02018144
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x20
	add r1, r6, #0
	mov r2, #0x94
	bl sub_020C4C14
	add r4, #0x10
	add r1, r6, #0
	add r0, r4, #0
	add r1, #8
	mov r2, #0x10
	bl sub_020C4DB0
	ldr r1, [r5, #0]
	add r0, r6, #0
	add r2, r7, #0
	bl ov66_0222E640
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_0222FC0C

	thumb_func_start ov66_0222FC4C
ov66_0222FC4C: ; 0x0222FC4C
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222FC4C

	thumb_func_start ov66_0222FC54
ov66_0222FC54: ; 0x0222FC54
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end ov66_0222FC54

	thumb_func_start ov66_0222FC58
ov66_0222FC58: ; 0x0222FC58
	mov r2, #0x14
	mov r1, #0
_0222FC5C:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0222FC5C
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222FC58

	thumb_func_start ov66_0222FC68
ov66_0222FC68: ; 0x0222FC68
	ldr r3, _0222FC70 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x28
	bx r3
	; .align 2, 0
_0222FC70: .word sub_020D5124
	thumb_func_end ov66_0222FC68

	thumb_func_start ov66_0222FC74
ov66_0222FC74: ; 0x0222FC74
	mov r1, #0
	strh r1, [r0, #4]
	strb r1, [r0, #6]
	ldr r3, _0222FC80 ; =ov66_0222FD7C
	strb r1, [r0, #0xa]
	bx r3
	; .align 2, 0
_0222FC80: .word ov66_0222FD7C
	thumb_func_end ov66_0222FC74

	thumb_func_start ov66_0222FC84
ov66_0222FC84: ; 0x0222FC84
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	strh r1, [r4, #4]
	mov r1, #4
	strb r1, [r4, #6]
	bl ov66_0222FD7C
	mov r0, #0
	strb r0, [r4, #0xa]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0222FC84

	thumb_func_start ov66_0222FC9C
ov66_0222FC9C: ; 0x0222FC9C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0222FCAA
	bl sub_02022974
_0222FCAA:
	mov r0, #1
	add r1, r0, #0
	ldr r2, [r5, #0]
	lsl r1, r4
	tst r1, r2
	bne _0222FCB8
	mov r0, #0
_0222FCB8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222FC9C

	thumb_func_start ov66_0222FCBC
ov66_0222FCBC: ; 0x0222FCBC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0222FCCA
	bl sub_02022974
_0222FCCA:
	mov r0, #1
	ldr r1, [r5, #0]
	lsl r0, r4
	orr r0, r1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222FCBC

	thumb_func_start ov66_0222FCD8
ov66_0222FCD8: ; 0x0222FCD8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0222FCE6
	bl sub_02022974
_0222FCE6:
	mov r0, #1
	lsl r0, r4
	ldr r1, [r5, #0]
	mvn r0, r0
	and r0, r1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_0222FCD8

	thumb_func_start ov66_0222FCF4
ov66_0222FCF4: ; 0x0222FCF4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0222FD02
	bl sub_02022974
_0222FD02:
	add r5, #0xc
	ldrb r0, [r5, r4]
	add r0, r0, #1
	cmp r0, #6
	bgt _0222FD0E
	strb r0, [r5, r4]
_0222FD0E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_0222FCF4

	thumb_func_start ov66_0222FD10
ov66_0222FD10: ; 0x0222FD10
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0222FD1E
	bl sub_02022974
_0222FD1E:
	mov r1, #0
	add r0, r5, r4
	strb r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222FD10

	thumb_func_start ov66_0222FD28
ov66_0222FD28: ; 0x0222FD28
	ldrb r2, [r0, #6]
	strh r2, [r0, #0x22]
	strh r1, [r0, #0x20]
	bx lr
	thumb_func_end ov66_0222FD28

	thumb_func_start ov66_0222FD30
ov66_0222FD30: ; 0x0222FD30
	push {r4, lr}
	ldr r4, _0222FD4C ; =0x000001E2
	add r3, r0, #0
	mov r0, #2
	strh r0, [r3, r4]
	sub r0, r4, #2
	strh r2, [r3, r0]
	sub r2, r4, #2
	add r2, r3, r2
	mov r0, #1
	mov r3, #4
	bl ov66_02232E5C
	pop {r4, pc}
	; .align 2, 0
_0222FD4C: .word 0x000001E2
	thumb_func_end ov66_0222FD30

	thumb_func_start ov66_0222FD50
ov66_0222FD50: ; 0x0222FD50
	push {r4, lr}
	ldr r2, _0222FD6C ; =0x000001C6
	add r4, r0, #0
	mov r3, #4
	add r0, r2, #0
	strb r3, [r4, r2]
	add r0, #0x1c
	add r2, #0x1a
	strh r3, [r4, r0]
	mov r0, #2
	add r2, r4, r2
	bl ov66_02232E5C
	pop {r4, pc}
	; .align 2, 0
_0222FD6C: .word 0x000001C6
	thumb_func_end ov66_0222FD50

	thumb_func_start ov66_0222FD70
ov66_0222FD70: ; 0x0222FD70
	mov r1, #1
	strh r1, [r0, #0x24]
	mov r1, #0
	strh r1, [r0, #0x26]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222FD70

	thumb_func_start ov66_0222FD7C
ov66_0222FD7C: ; 0x0222FD7C
	mov r1, #0
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	bx lr
	thumb_func_end ov66_0222FD7C

	thumb_func_start ov66_0222FD84
ov66_0222FD84: ; 0x0222FD84
	ldrh r1, [r0, #0x24]
	cmp r1, #1
	bne _0222FD9A
	mov r1, #0x26
	ldrsh r1, [r0, r1]
	add r2, r1, #1
	mov r1, #0xe1
	lsl r1, r1, #2
	cmp r2, r1
	bgt _0222FD9A
	strh r2, [r0, #0x26]
_0222FD9A:
	bx lr
	thumb_func_end ov66_0222FD84

	thumb_func_start ov66_0222FD9C
ov66_0222FD9C: ; 0x0222FD9C
	ldrh r1, [r0, #0x24]
	cmp r1, #0
	bne _0222FDA6
	mov r0, #1
	bx lr
_0222FDA6:
	mov r1, #0x26
	ldrsh r1, [r0, r1]
	mov r0, #0xe1
	lsl r0, r0, #2
	cmp r1, r0
	bge _0222FDB6
	mov r0, #1
	bx lr
_0222FDB6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222FD9C

	thumb_func_start ov66_0222FDBC
ov66_0222FDBC: ; 0x0222FDBC
	mov r1, #0x26
	ldrsh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0222FDBC

	thumb_func_start ov66_0222FDC4
ov66_0222FDC4: ; 0x0222FDC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #2
	bne _0222FE36
	mov r7, #0
	add r4, r1, #0
	add r5, r6, #0
_0222FDD8:
	ldr r0, [r4, #0]
	bl ov66_02232B78
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0222FE36
	add r0, r6, #0
	bl ov66_0222E374
	add r1, r5, #0
	ldr r2, _0222FE3C ; =0x00000528
	add r1, #0xe8
	ldr r1, [r1, #0]
	ldr r2, [r6, r2]
	bl ov66_0222E640
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #2
	blt _0222FDD8
	add r0, r6, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl ov66_02232B78
	add r1, sp, #4
	strh r0, [r1, #8]
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl ov66_02232B78
	add r1, sp, #4
	strh r0, [r1, #0xa]
	ldr r0, [r6, #4]
	add r1, sp, #4
	bl ov66_0223185C
_0222FE36:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222FE3C: .word 0x00000528
	thumb_func_end ov66_0222FDC4

	thumb_func_start ov66_0222FE40
ov66_0222FE40: ; 0x0222FE40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #2
	bne _0222FEB8
	mov r7, #0
	add r4, r1, #0
	add r5, r6, #0
_0222FE54:
	ldr r0, [r4, #0]
	bl ov66_02232B78
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0222FEB8
	add r0, r6, #0
	bl ov66_0222E374
	add r1, r5, #0
	ldr r2, _0222FEBC ; =0x00000528
	add r1, #0xe8
	ldr r1, [r1, #0]
	ldr r2, [r6, r2]
	bl ov66_0222E640
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #2
	blt _0222FE54
	add r0, r6, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl ov66_02232B78
	add r1, sp, #4
	strh r0, [r1, #8]
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl ov66_02232B78
	add r1, sp, #4
	strh r0, [r1, #0xa]
	ldr r0, [sp]
	add r1, sp, #4
	ldrb r0, [r0, #0x12]
	str r0, [sp, #0x10]
	ldr r0, [r6, #4]
	bl ov66_022318AC
_0222FEB8:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222FEBC: .word 0x00000528
	thumb_func_end ov66_0222FE40

	thumb_func_start ov66_0222FEC0
ov66_0222FEC0: ; 0x0222FEC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #4
	bhi _0222FED2
	cmp r0, #0
	bne _0222FED4
_0222FED2:
	b _0222FFEA
_0222FED4:
	add r0, r1, #0
	ldrb r0, [r0, #0x13]
	add r5, sp, #0x30
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0222FF38
	add r0, r1, #0
	mov r7, #0
	str r0, [sp, #4]
	add r4, r6, #0
_0222FEEA:
	ldr r0, [sp]
	ldrb r0, [r0, #0x10]
	cmp r7, r0
	bge _0222FF22
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov66_02232B78
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0222FFEA
	add r0, r6, #0
	bl ov66_0222E374
	add r1, r4, #0
	ldr r2, _0222FFF0 ; =0x00000528
	add r1, #0xe8
	ldr r1, [r1, #0]
	ldr r2, [r6, r2]
	bl ov66_0222E640
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [r5, #0]
	b _0222FF26
_0222FF22:
	mov r0, #0
	str r0, [r5, #0]
_0222FF26:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r0, r0, #4
	str r0, [sp, #4]
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #4
	blt _0222FEEA
	b _0222FF88
_0222FF38:
	add r0, r1, #0
	mov r7, #0
	str r0, [sp, #8]
	add r4, r6, #0
_0222FF40:
	cmp r7, #0
	bne _0222FF74
	ldr r0, [sp, #8]
	ldr r0, [r0, #0]
	bl ov66_02232B78
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0222FFEA
	add r0, r6, #0
	bl ov66_0222E374
	add r1, r4, #0
	ldr r2, _0222FFF0 ; =0x00000528
	add r1, #0xe8
	ldr r1, [r1, #0]
	ldr r2, [r6, r2]
	bl ov66_0222E640
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [r5, #0]
	b _0222FF78
_0222FF74:
	mov r0, #0
	str r0, [r5, #0]
_0222FF78:
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, r0, #4
	str r0, [sp, #8]
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #4
	blt _0222FF40
_0222FF88:
	ldr r0, [sp]
	ldrb r0, [r0, #0x13]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldrb r0, [r0, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x20]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl ov66_02232B78
	add r1, sp, #0xc
	strh r0, [r1, #0x18]
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl ov66_02232B78
	add r1, sp, #0xc
	strh r0, [r1, #0x1a]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl ov66_02232B78
	add r1, sp, #0xc
	strh r0, [r1, #0x1c]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl ov66_02232B78
	add r1, sp, #0xc
	strh r0, [r1, #0x1e]
	ldr r0, [sp]
	add r1, sp, #0xc
	ldrb r0, [r0, #0x13]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	str r0, [sp, #0x2c]
	ldr r0, [r6, #4]
	bl ov66_02231908
_0222FFEA:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222FFF0: .word 0x00000528
	thumb_func_end ov66_0222FEC0

	thumb_func_start ov66_0222FFF4
ov66_0222FFF4: ; 0x0222FFF4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #8
	bhi _02230050
	cmp r0, #0
	beq _02230050
	ldr r0, [r4, #0]
	bl ov66_02232B78
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02230050
	add r0, r5, #0
	bl ov66_0222E374
	add r1, r5, #0
	ldr r2, _02230054 ; =0x00000528
	add r1, #0xe8
	ldr r1, [r1, #0]
	ldr r2, [r5, r2]
	bl ov66_0222E640
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	str r0, [sp]
	ldrb r0, [r4, #0x10]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	bl ov66_02232B78
	add r1, sp, #0
	strh r0, [r1, #0xc]
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl ov66_0223199C
_02230050:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02230054: .word 0x00000528
	thumb_func_end ov66_0222FFF4

	thumb_func_start ov66_02230058
ov66_02230058: ; 0x02230058
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp]
	ldrb r0, [r1, #0x10]
	str r1, [sp, #4]
	cmp r0, #4
	bhi _0223010A
	cmp r0, #0
	beq _0223010A
	ldr r4, [sp]
	mov r7, #0
	add r6, r1, #0
	add r5, sp, #0x24
_02230072:
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x10]
	cmp r7, r0
	bge _022300AA
	ldr r0, [r6, #0]
	bl ov66_02232B78
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0223010A
	ldr r0, [sp]
	bl ov66_0222E374
	add r1, r4, #0
	add r1, #0xe8
	ldr r3, [sp]
	ldr r2, _02230110 ; =0x00000528
	ldr r1, [r1, #0]
	ldr r2, [r3, r2]
	bl ov66_0222E640
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [r5, #0]
	b _022300AE
_022300AA:
	mov r0, #0
	str r0, [r5, #0]
_022300AE:
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #4
	blt _02230072
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x14]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x16]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x18]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x1a]
	ldr r0, [sp]
	add r1, sp, #8
	ldr r0, [r0, #4]
	bl ov66_022319FC
_0223010A:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02230110: .word 0x00000528
	thumb_func_end ov66_02230058

	thumb_func_start ov66_02230114
ov66_02230114: ; 0x02230114
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp]
	ldrb r0, [r1, #0x10]
	str r1, [sp, #4]
	cmp r0, #4
	bhi _022301C6
	cmp r0, #0
	beq _022301C6
	ldr r4, [sp]
	mov r7, #0
	add r6, r1, #0
	add r5, sp, #0x24
_0223012E:
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x10]
	cmp r7, r0
	bge _02230166
	ldr r0, [r6, #0]
	bl ov66_02232B78
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _022301C6
	ldr r0, [sp]
	bl ov66_0222E374
	add r1, r4, #0
	add r1, #0xe8
	ldr r3, [sp]
	ldr r2, _022301CC ; =0x00000528
	ldr r1, [r1, #0]
	ldr r2, [r3, r2]
	bl ov66_0222E640
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [r5, #0]
	b _0223016A
_02230166:
	mov r0, #0
	str r0, [r5, #0]
_0223016A:
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #4
	blt _0223012E
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x14]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x16]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x18]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x1a]
	ldr r0, [sp]
	add r1, sp, #8
	ldr r0, [r0, #4]
	bl ov66_02231A58
_022301C6:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_022301CC: .word 0x00000528
	thumb_func_end ov66_02230114

	thumb_func_start ov66_022301D0
ov66_022301D0: ; 0x022301D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	ldrb r0, [r1, #0x10]
	str r1, [sp, #4]
	cmp r0, #4
	bhi _0223028C
	cmp r0, #0
	beq _0223028C
	ldr r4, [sp]
	mov r7, #0
	add r6, r1, #0
	add r5, sp, #0x28
_022301EA:
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x10]
	cmp r7, r0
	bge _02230222
	ldr r0, [r6, #0]
	bl ov66_02232B78
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0223028C
	ldr r0, [sp]
	bl ov66_0222E374
	add r1, r4, #0
	add r1, #0xe8
	ldr r3, [sp]
	ldr r2, _02230290 ; =0x00000528
	ldr r1, [r1, #0]
	ldr r2, [r3, r2]
	bl ov66_0222E640
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [r5, #0]
	b _02230226
_02230222:
	mov r0, #0
	str r0, [r5, #0]
_02230226:
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #4
	blt _022301EA
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x13]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x18]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x1a]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x1c]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl ov66_02232B78
	add r1, sp, #8
	strh r0, [r1, #0x1e]
	ldr r0, [sp]
	add r1, sp, #8
	ldr r0, [r0, #4]
	bl ov66_02231B80
_0223028C:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02230290: .word 0x00000528
	thumb_func_end ov66_022301D0

	thumb_func_start ov66_02230294
ov66_02230294: ; 0x02230294
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02230294

	thumb_func_start ov66_02230298
ov66_02230298: ; 0x02230298
	push {r3, lr}
	sub sp, #8
	add r2, r0, #0
	add r2, #0xd4
	str r1, [sp, #4]
	str r2, [sp]
	ldr r0, [r0, #4]
	add r1, sp, #0
	bl ov66_02231AB4
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov66_02230298

	thumb_func_start ov66_022302B0
ov66_022302B0: ; 0x022302B0
	push {r4, lr}
	mov r2, #0x65
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	mov r0, #0
	add r4, #0x50
	mvn r0, r0
	add r1, r4, #0
	mov r2, #0x6c
	bl sub_020C4B4C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_022302B0

	thumb_func_start ov66_022302D0
ov66_022302D0: ; 0x022302D0
	mov r1, #1
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022302D0

	thumb_func_start ov66_022302D8
ov66_022302D8: ; 0x022302D8
	push {r4, r5, r6, r7}
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02230322
	ldr r3, _02230328 ; =0x0225892C
	mov r2, #0
	add r4, r0, #0
	mov r1, #1
	mov r6, #2
_022302EA:
	ldr r7, [r0, #4]
	ldr r5, [r3, #0]
	cmp r7, r5
	bne _022302F4
	str r1, [r4, #0x2c]
_022302F4:
	ldr r5, [r4, #0x2c]
	cmp r5, #1
	bne _0223030C
	ldr r5, [r4, #8]
	add r7, r5, #1
	mov r5, #0x4b
	lsl r5, r5, #4
	cmp r7, r5
	bgt _0223030A
	str r7, [r4, #8]
	b _0223030C
_0223030A:
	str r6, [r4, #0x2c]
_0223030C:
	add r2, r2, #1
	add r3, r3, #4
	add r4, r4, #4
	cmp r2, #9
	blt _022302EA
	ldr r1, [r0, #4]
	add r2, r1, #1
	ldr r1, _0223032C ; =0x000010E0
	cmp r2, r1
	bgt _02230322
	str r2, [r0, #4]
_02230322:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02230328: .word 0x0225892C
_0223032C: .word 0x000010E0
	thumb_func_end ov66_022302D8

	thumb_func_start ov66_02230330
ov66_02230330: ; 0x02230330
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	add r7, r2, #0
	bl ov66_022304DC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0223039E
	mov r5, #0
	str r5, [sp, #4]
_0223034A:
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ov66_0223040C
	cmp r0, #2
	beq _02230392
	mov r4, #0
_02230358:
	add r0, r6, #0
	add r1, r4, r5
	add r2, r7, #0
	bl ov66_02230544
	cmp r0, #0
	bne _0223038C
	add r0, r6, #0
	add r1, r4, r5
	bl ov66_022303DC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0223038C
	ldr r0, [sp, #4]
	mov r1, #0xc
	mul r1, r0
	add r1, r6, r1
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, [sp]
	add sp, #8
	str r0, [r1, #0x50]
	add r0, r4, r5
	pop {r3, r4, r5, r6, r7, pc}
_0223038C:
	add r4, r4, #1
	cmp r4, #3
	blt _02230358
_02230392:
	ldr r0, [sp, #4]
	add r5, r5, #3
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #9
	blt _0223034A
_0223039E:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_02230330

	thumb_func_start ov66_022303A8
ov66_022303A8: ; 0x022303A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov66_022304DC
	mov r1, #0
	add r6, r0, #0
	mvn r1, r1
	cmp r6, r1
	beq _022303DA
	mov r1, #3
	bl sub_020E2178
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl sub_020E2178
	mov r2, #0xc
	mul r2, r4
	mov r0, #0
	add r2, r5, r2
	lsl r1, r1, #2
	mvn r0, r0
	add r1, r2, r1
	str r0, [r1, #0x50]
_022303DA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_022303A8

	thumb_func_start ov66_022303DC
ov66_022303DC: ; 0x022303DC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x1b
	blo _022303EA
	bl sub_02022974
_022303EA:
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	mov r0, #0xc
	mul r0, r6
	add r2, r5, r0
	lsl r0, r1, #2
	add r0, r2, r0
	ldr r0, [r0, #0x50]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_022303DC

	thumb_func_start ov66_0223040C
ov66_0223040C: ; 0x0223040C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #9
	blo _0223041A
	bl sub_02022974
_0223041A:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x2c]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0223040C

	thumb_func_start ov66_02230424
ov66_02230424: ; 0x02230424
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #9
	blo _02230432
	bl sub_02022974
_02230432:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02230424

	thumb_func_start ov66_0223043C
ov66_0223043C: ; 0x0223043C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov66_022304DC
	mov r1, #0
	add r6, r0, #0
	mvn r1, r1
	cmp r6, r1
	beq _02230470
	mov r1, #3
	bl sub_020E2178
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl sub_020E2178
	mov r2, #0xc
	mul r2, r4
	add r2, r5, r2
	lsl r1, r1, #2
	add r2, r2, r1
	mov r1, #0x4a
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r2, r1]
_02230470:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_0223043C

	thumb_func_start ov66_02230474
ov66_02230474: ; 0x02230474
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x1b
	blo _02230482
	bl sub_02022974
_02230482:
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	mov r0, #0xc
	mul r0, r6
	add r2, r5, r0
	lsl r0, r1, #2
	add r1, r2, r0
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_02230474

	thumb_func_start ov66_022304A8
ov66_022304A8: ; 0x022304A8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x1b
	blo _022304B6
	bl sub_02022974
_022304B6:
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	mov r2, #0xc
	mul r2, r6
	add r2, r5, r2
	lsl r1, r1, #2
	add r2, r2, r1
	mov r1, #0x4a
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_022304A8

	thumb_func_start ov66_022304DC
ov66_022304DC: ; 0x022304DC
	push {r3, r4, r5, r6}
	mov r4, #0
	add r3, r4, #0
_022304E2:
	add r5, r3, #0
	add r6, r0, #0
_022304E6:
	ldr r2, [r6, #0x50]
	cmp r1, r2
	bne _022304F6
	lsl r0, r4, #1
	add r0, r4, r0
	add r0, r5, r0
	pop {r3, r4, r5, r6}
	bx lr
_022304F6:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #3
	blt _022304E6
	add r4, r4, #1
	add r0, #0xc
	cmp r4, #9
	blt _022304E2
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022304DC

	thumb_func_start ov66_02230510
ov66_02230510: ; 0x02230510
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x1b
	blo _02230520
	bl sub_02022974
_02230520:
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	mov r2, #0xc
	mul r2, r7
	add r2, r5, r2
	lsl r1, r1, #2
	add r1, r2, r1
	add r0, r6, #1
	add r1, #0xbc
	str r0, [r1, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_02230510

	thumb_func_start ov66_02230544
ov66_02230544: ; 0x02230544
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x1b
	blo _02230554
	bl sub_02022974
_02230554:
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	mov r0, #0xc
	mul r0, r7
	add r2, r5, r0
	lsl r0, r1, #2
	add r0, r2, r0
	add r0, #0xbc
	ldr r0, [r0, #0]
	cmp r0, r6
	bhi _0223057C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223057C:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_02230544

	thumb_func_start ov66_02230580
ov66_02230580: ; 0x02230580
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x1b
	blo _0223058E
	bl sub_02022974
_0223058E:
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl sub_020E2178
	mov r0, #0xc
	mul r0, r6
	add r2, r5, r0
	lsl r0, r1, #2
	add r0, r2, r0
	add r0, #0xbc
	ldr r0, [r0, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02230580

	thumb_func_start ov66_022305B0
ov66_022305B0: ; 0x022305B0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	add r5, r3, #0
	bl ov66_02232B78
	add r6, r0, #0
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r5, #0]
	add r0, r5, r0
	bl ov66_0222FA04
	cmp r0, #0
	bne _022305D4
	ldr r0, _0223065C ; =0x0000052C
	mov r1, #1
	str r1, [r5, r0]
_022305D4:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov66_0222E71C
	add r4, r0, #0
	add r0, r5, #0
	bl ov66_0222EDF4
	cmp r4, #1
	bne _0223060A
	mov r1, #0
	mvn r1, r1
	cmp r6, r1
	beq _0223060A
	ldr r1, [sp]
	ldrh r1, [r1, #2]
	cmp r1, #1
	bne _0223060A
	cmp r0, #1
	beq _0223060A
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_0222EE44
	cmp r0, #0
	bne _02230616
_0223060A:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov66_0222FD30
	pop {r3, r4, r5, r6, r7, pc}
_02230616:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov66_0222FD30
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, r6, #0
	bl ov66_0222FC9C
	cmp r0, #0
	bne _02230634
	mov r1, #1
	b _02230636
_02230634:
	mov r1, #0
_02230636:
	ldr r0, _02230660 ; =0x000001CB
	mov r2, #2
	strb r1, [r5, r0]
	mov r0, #0x71
	lsl r0, r0, #2
	strh r6, [r5, r0]
	add r1, r0, #2
	strb r2, [r5, r1]
	add r1, r0, #6
	strb r2, [r5, r1]
	add r1, r0, #3
	sub r0, r0, #4
	mov r2, #0
	add r0, r5, r0
	strb r2, [r5, r1]
	bl ov66_0222FD70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223065C: .word 0x0000052C
_02230660: .word 0x000001CB
	thumb_func_end ov66_022305B0

	thumb_func_start ov66_02230664
ov66_02230664: ; 0x02230664
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r3, #0
	bl ov66_02232B78
	ldr r2, _022306B8 ; =0x000001CA
	add r1, r0, #0
	ldrb r0, [r4, r2]
	cmp r0, #0
	beq _022306B6
	sub r0, r2, #6
	ldrh r0, [r4, r0]
	cmp r0, r1
	bne _022306B6
	ldrh r0, [r5]
	cmp r0, #1
	bne _022306A4
	sub r2, #0xa
	add r0, r4, r2
	bl ov66_0222FC9C
	cmp r0, #0
	bne _02230696
	mov r1, #1
	b _02230698
_02230696:
	mov r1, #0
_02230698:
	ldr r0, _022306BC ; =0x000001CB
	strb r1, [r4, r0]
	ldr r0, _022306C0 ; =0x000001C6
	mov r1, #2
	strb r1, [r4, r0]
	b _022306AC
_022306A4:
	sub r2, #0xa
	add r0, r4, r2
	bl ov66_0222FC74
_022306AC:
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov66_0222FD7C
_022306B6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022306B8: .word 0x000001CA
_022306BC: .word 0x000001CB
_022306C0: .word 0x000001C6
	thumb_func_end ov66_02230664

	thumb_func_start ov66_022306C4
ov66_022306C4: ; 0x022306C4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _02230720 ; =0x000001CA
	add r4, r3, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0223071C
	bl ov66_02232B78
	mov r1, #0x71
	lsl r1, r1, #2
	ldrh r2, [r4, r1]
	cmp r2, r0
	bne _0223070C
	ldrh r0, [r5, #2]
	ldr r2, _02230724 ; =0x0000FFFE
	add r2, r0, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, #1
	bhi _02230702
	add r2, r1, #2
	strb r0, [r4, r2]
	ldrh r2, [r5]
	add r0, r1, #4
	strh r2, [r4, r0]
	sub r0, r1, #4
	add r0, r4, r0
	bl ov66_0222FD7C
	pop {r3, r4, r5, pc}
_02230702:
	sub r0, r1, #4
	add r0, r4, r0
	bl ov66_0222FC84
	pop {r3, r4, r5, pc}
_0223070C:
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	bne _0223071C
	sub r0, r1, #4
	add r0, r4, r0
	bl ov66_0222FC84
_0223071C:
	pop {r3, r4, r5, pc}
	nop
_02230720: .word 0x000001CA
_02230724: .word 0x0000FFFE
	thumb_func_end ov66_022306C4

	thumb_func_start ov66_02230728
ov66_02230728: ; 0x02230728
	push {r4, lr}
	ldr r1, _0223074C ; =0x000001C6
	add r4, r3, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0223074A
	bl ov66_02232B78
	mov r1, #0x71
	lsl r1, r1, #2
	ldrh r2, [r4, r1]
	cmp r2, r0
	bne _0223074A
	sub r0, r1, #4
	add r0, r4, r0
	bl ov66_0222FC74
_0223074A:
	pop {r4, pc}
	; .align 2, 0
_0223074C: .word 0x000001C6
	thumb_func_end ov66_02230728

	thumb_func_start ov66_02230750
ov66_02230750: ; 0x02230750
	push {r3, lr}
	ldrb r2, [r1, #0x11]
	add r0, r3, #0
	lsl r3, r2, #2
	ldr r2, _02230760 ; =0x02258950
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	; .align 2, 0
_02230760: .word 0x02258950
	thumb_func_end ov66_02230750

	thumb_func_start ov66_02230764
ov66_02230764: ; 0x02230764
	push {r4, lr}
	add r4, r3, #0
	bl ov66_02232B78
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223077E
	add r1, r4, r0
	mov r0, #0x7a
	mov r2, #1
	lsl r0, r0, #2
	strb r2, [r1, r0]
_0223077E:
	pop {r4, pc}
	thumb_func_end ov66_02230764

	thumb_func_start ov66_02230780
ov66_02230780: ; 0x02230780
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	bl ov66_02232B78
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _022307B0
	mov r7, #0x83
	mov r4, #0
	lsl r7, r7, #2
_02230798:
	add r0, r5, r7
	add r1, r6, #0
	add r2, r4, #0
	bl ov66_02230330
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022307B0
	add r4, r4, #1
	cmp r4, #3
	blt _02230798
_022307B0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_02230780

	thumb_func_start ov66_022307B4
ov66_022307B4: ; 0x022307B4
	push {r4, lr}
	add r4, r3, #0
	bl ov66_02232B78
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _022307D0
	mov r0, #0x83
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov66_0223043C
_022307D0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_022307B4

	thumb_func_start ov66_022307D4
ov66_022307D4: ; 0x022307D4
	push {r4, lr}
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020D5124
	mov r1, #0
	mov r0, #0x64
_022307E4:
	strb r0, [r4, r1]
	add r1, r1, #1
	cmp r1, #9
	blt _022307E4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_022307D4

	thumb_func_start ov66_022307F0
ov66_022307F0: ; 0x022307F0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #0x14
	blo _02230800
	bl sub_02022974
_02230800:
	cmp r6, #0x1b
	blo _02230808
	bl sub_02022974
_02230808:
	add r7, r5, #0
	add r7, #0xc
	ldrb r0, [r7, r4]
	cmp r0, #0
	bne _02230824
	add r0, r6, #0
	mov r1, #3
	bl sub_020E2178
	ldrb r1, [r5, r0]
	asr r1, r1, #1
	strb r1, [r5, r0]
	mov r0, #1
	strb r0, [r7, r4]
_02230824:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_022307F0

	thumb_func_start ov66_02230828
ov66_02230828: ; 0x02230828
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r0, #0
	add r1, r5, #0
_02230830:
	ldrb r0, [r4, r1]
	add r1, r1, #1
	add r5, r5, r0
	cmp r1, #9
	blt _02230830
	bl sub_0201D35C
	add r1, r5, #0
	bl sub_020E2178
	mov r3, #0
	add r0, r3, #0
_02230848:
	cmp r3, r1
	bhi _0223085A
	ldrb r2, [r4, r0]
	add r2, r3, r2
	cmp r2, r1
	bls _0223085A
	lsl r1, r0, #1
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_0223085A:
	ldrb r2, [r4, r0]
	add r0, r0, #1
	add r3, r3, r2
	cmp r0, #9
	blt _02230848
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02230828

	thumb_func_start ov66_0223086C
ov66_0223086C: ; 0x0223086C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _0223087C
	bl sub_02022974
_0223087C:
	cmp r4, #0x14
	bhs _02230882
	strb r6, [r5, r4]
_02230882:
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_0223086C

	thumb_func_start ov66_02230884
ov66_02230884: ; 0x02230884
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _02230892
	bl sub_02022974
_02230892:
	cmp r4, #0x14
	bhs _0223089A
	ldrb r0, [r5, r4]
	pop {r3, r4, r5, pc}
_0223089A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02230884

	thumb_func_start ov66_022308A0
ov66_022308A0: ; 0x022308A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mov r2, #0xb8
	add r5, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_02014FB0
	add r5, #0xb4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_022308A0

	thumb_func_start ov66_022308BC
ov66_022308BC: ; 0x022308BC
	ldr r3, _022308C4 ; =sub_02014FF0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_022308C4: .word sub_02014FF0
	thumb_func_end ov66_022308BC

	thumb_func_start ov66_022308C8
ov66_022308C8: ; 0x022308C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0x14
	blo _022308DA
	bl sub_02022974
_022308DA:
	cmp r4, #0x14
	bhs _022308F6
	strb r6, [r5, r4]
	cmp r6, #1
	bne _022308F6
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r5, #0x14
	lsl r2, r4, #3
	add r1, r7, #0
	add r2, r5, r2
	bl ov66_02230938
_022308F6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_022308C8

	thumb_func_start ov66_022308F8
ov66_022308F8: ; 0x022308F8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _02230906
	bl sub_02022974
_02230906:
	cmp r4, #0x14
	bhs _0223090E
	ldrb r0, [r5, r4]
	pop {r3, r4, r5, pc}
_0223090E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_022308F8

	thumb_func_start ov66_02230914
ov66_02230914: ; 0x02230914
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _02230922
	bl sub_02022974
_02230922:
	cmp r4, #0x14
	bhs _02230934
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _02230934
	add r5, #0x14
	lsl r0, r4, #3
	add r0, r5, r0
	pop {r3, r4, r5, pc}
_02230934:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02230914

	thumb_func_start ov66_02230938
ov66_02230938: ; 0x02230938
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	add r5, r2, #0
	bl sub_02015004
	add r7, r0, #0
	str r4, [sp, #8]
	add r0, sp, #8
	ldrb r4, [r0]
	ldrb r0, [r0, #3]
	add r1, r7, #0
	str r0, [sp]
	add r0, r0, r4
	bl sub_020E2178
	add r0, r6, #0
	bl sub_02015008
	strh r0, [r5]
	add r0, sp, #8
	ldrb r0, [r0, #1]
	add r1, r7, #0
	str r0, [sp, #4]
	add r0, r4, r0
	bl sub_020E2178
	add r0, r6, #0
	bl sub_02015008
	strh r0, [r5, #2]
	add r0, sp, #8
	ldrb r4, [r0, #2]
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r0, r0, r4
	bl sub_020E2178
	add r0, r6, #0
	bl sub_02015008
	strh r0, [r5, #4]
	ldr r0, [sp]
	add r1, r7, #0
	add r0, r4, r0
	bl sub_020E2178
	add r0, r6, #0
	bl sub_02015008
	strh r0, [r5, #6]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov66_02230938

	thumb_func_start ov66_022309A4
ov66_022309A4: ; 0x022309A4
	mov r3, #0
	str r3, [r0, #0]
	sub r2, r2, r1
	mov r1, #0x1e
	str r3, [r0, #0xc]
	mul r1, r2
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov66_022309A4

	thumb_func_start ov66_022309B4
ov66_022309B4: ; 0x022309B4
	mov r1, #1
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r3, _022309C4 ; =ov66_02232BC8
	add r0, r0, #4
	bx r3
	nop
_022309C4: .word ov66_02232BC8
	thumb_func_end ov66_022309B4

	thumb_func_start ov66_022309C8
ov66_022309C8: ; 0x022309C8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02230A5A
	add r0, sp, #0
	bl ov66_02232BC8
	ldr r3, [sp]
	ldr r0, [r4, #4]
	ldr r1, [sp, #4]
	ldr r2, [r4, #8]
	sub r0, r3, r0
	sbc r1, r2
	mov r2, #0x1e
	mov r3, #0
	bl sub_020E1F1C
	ldr r2, [r4, #0xc]
	asr r3, r2, #0x1f
	sub r2, r2, r0
	sbc r3, r1
	bge _022309FA
	str r0, [r4, #0xc]
_022309FA:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bge _02230A3A
	add r0, r1, #1
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #8
	bl sub_020E1F6C
	mov r2, #0
	ldr r5, _02230A60 ; =0x02258918
	add r3, r2, #0
_02230A14:
	ldrh r1, [r5, #2]
	add r2, r2, r1
	cmp r2, r0
	blo _02230A30
	ldr r0, _02230A60 ; =0x02258918
	lsl r1, r3, #2
	ldrh r1, [r0, r1]
	ldr r0, [r4, #0x14]
	cmp r0, r1
	beq _02230A54
	str r1, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
	b _02230A54
_02230A30:
	add r3, r3, #1
	add r5, r5, #4
	cmp r3, #5
	blo _02230A14
	b _02230A54
_02230A3A:
	ldr r0, [r4, #0x14]
	cmp r0, #5
	beq _02230A48
	mov r0, #5
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
_02230A48:
	ldr r0, [r4, #0x18]
	cmp r0, #0x78
	blo _02230A54
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0]
_02230A54:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
_02230A5A:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02230A60: .word 0x02258918
	thumb_func_end ov66_022309C8

	thumb_func_start ov66_02230A64
ov66_02230A64: ; 0x02230A64
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end ov66_02230A64

	thumb_func_start ov66_02230A68
ov66_02230A68: ; 0x02230A68
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end ov66_02230A68

	thumb_func_start ov66_02230A6C
ov66_02230A6C: ; 0x02230A6C
	push {r4, r5, r6, lr}
	mov r4, #0x18
	add r3, r4, #0
	mov r5, #0
	add r6, r0, #0
	sub r3, #0x19
_02230A78:
	add r2, r0, r5
	add r2, #0x34
	strb r4, [r2]
	add r5, r5, #1
	stmia r6!, {r3}
	cmp r5, #0xd
	blt _02230A78
	add r2, r0, #0
	mov r3, #0
	add r2, #0x41
	strb r3, [r2]
	add r2, r0, #0
	add r2, #0x42
	strb r3, [r2]
	str r1, [r0, #0x44]
	bl ov66_02230BCC
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02230A6C

	thumb_func_start ov66_02230A9C
ov66_02230A9C: ; 0x02230A9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov66_02230BE0
	add r0, r5, #0
	add r0, #0x42
	ldrb r0, [r0]
	mov r1, #0xd
	add r0, r0, #1
	bl sub_020E1F6C
	add r0, r5, #0
	add r0, #0x41
	ldrb r0, [r0]
	cmp r1, r0
	bne _02230AC6
	add r0, r5, #0
	bl ov66_02230B28
_02230AC6:
	add r0, r5, #0
	add r0, #0x42
	ldrb r0, [r0]
	mov r1, #0xd
	add r0, r5, r0
	add r0, #0x34
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x42
	ldrb r0, [r0]
	lsl r0, r0, #2
	str r6, [r5, r0]
	add r0, r5, #0
	add r0, #0x42
	ldrb r0, [r0]
	add r0, r0, #1
	bl sub_020E1F6C
	add r0, r5, #0
	add r0, #0x42
	strb r1, [r0]
	add r0, r5, #0
	bl ov66_02230BCC
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02230A9C

	thumb_func_start ov66_02230AF8
ov66_02230AF8: ; 0x02230AF8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	mov r6, #0
	bl ov66_02230BE0
	add r2, r6, #0
	add r3, r7, #0
	mov r0, #1
_02230B0C:
	ldr r1, [r3, #0]
	cmp r5, r1
	bne _02230B16
	str r4, [r3, #0]
	add r6, r0, #0
_02230B16:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0xd
	blt _02230B0C
	add r0, r7, #0
	bl ov66_02230BCC
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_02230AF8

	thumb_func_start ov66_02230B28
ov66_02230B28: ; 0x02230B28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov66_02230BE0
	add r0, r5, #0
	add r0, #0x41
	ldrb r2, [r0]
	add r0, r5, #0
	add r0, #0x42
	ldrb r0, [r0]
	cmp r0, r2
	bne _02230B44
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02230B44:
	add r0, r5, #0
	add r0, #0x34
	ldrb r4, [r0, r2]
	mov r1, #0x18
	strb r1, [r0, r2]
	add r0, r5, #0
	add r0, #0x42
	ldrb r0, [r0]
	sub r1, #0x19
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x41
	ldrb r0, [r0]
	mov r1, #0xd
	add r0, r0, #1
	bl sub_020E1F6C
	add r0, r5, #0
	add r0, #0x41
	strb r1, [r0]
	add r0, r5, #0
	bl ov66_02230BCC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02230B28

	thumb_func_start ov66_02230B78
ov66_02230B78: ; 0x02230B78
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xc
	blo _02230B86
	bl sub_02022974
_02230B86:
	add r0, r5, #0
	bl ov66_02230BE0
	add r0, r5, #0
	add r0, #0x42
	ldrb r1, [r0]
	add r0, r4, #1
	sub r0, r1, r0
	bpl _02230B9A
	add r0, #0xd
_02230B9A:
	add r0, r5, r0
	add r0, #0x34
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02230B78

	thumb_func_start ov66_02230BA4
ov66_02230BA4: ; 0x02230BA4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xc
	blo _02230BB2
	bl sub_02022974
_02230BB2:
	add r0, r5, #0
	bl ov66_02230BE0
	add r0, r5, #0
	add r0, #0x42
	ldrb r1, [r0]
	add r0, r4, #1
	sub r0, r1, r0
	bpl _02230BC6
	add r0, #0xd
_02230BC6:
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02230BA4

	thumb_func_start ov66_02230BCC
ov66_02230BCC: ; 0x02230BCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	add r1, r4, #0
	mov r2, #0x44
	bl sub_0202486C
	add r4, #0x48
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end ov66_02230BCC

	thumb_func_start ov66_02230BE0
ov66_02230BE0: ; 0x02230BE0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	add r1, r4, #0
	mov r2, #0x44
	bl sub_0202486C
	add r1, r4, #0
	add r1, #0x48
	ldrh r1, [r1]
	cmp r0, r1
	beq _02230C02
	bl sub_02022974
	mov r0, #1
	add r4, #0x4a
	strh r0, [r4]
_02230C02:
	pop {r4, pc}
	thumb_func_end ov66_02230BE0

	thumb_func_start ov66_02230C04
ov66_02230C04: ; 0x02230C04
	add r0, #0x4a
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02230C04

	thumb_func_start ov66_02230C0C
ov66_02230C0C: ; 0x02230C0C
	ldr r3, _02230C28 ; =0x02258974
	mov r2, #0
_02230C10:
	ldrh r1, [r3]
	cmp r0, r1
	bne _02230C1A
	add r0, r2, #0
	bx lr
_02230C1A:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x10
	blt _02230C10
	mov r0, #0x10
	bx lr
	nop
_02230C28: .word 0x02258974
	thumb_func_end ov66_02230C0C

	thumb_func_start ov66_02230C2C
ov66_02230C2C: ; 0x02230C2C
	cmp r0, #0x10
	bhs _02230C38
	lsl r1, r0, #2
	ldr r0, _02230C3C ; =0x02258974
	ldrh r0, [r0, r1]
	bx lr
_02230C38:
	ldr r0, _02230C40 ; =0x0000FFFF
	bx lr
	; .align 2, 0
_02230C3C: .word 0x02258974
_02230C40: .word 0x0000FFFF
	thumb_func_end ov66_02230C2C

	.rodata


	.global Unk_ov66_02258918
Unk_ov66_02258918: ; 0x02258918
	.incbin "incbin/overlay66_rodata.bin", 0x0, 0x14 - 0x0

	.global Unk_ov66_0225892C
Unk_ov66_0225892C: ; 0x0225892C
	.incbin "incbin/overlay66_rodata.bin", 0x14, 0x38 - 0x14

	.global Unk_ov66_02258950
Unk_ov66_02258950: ; 0x02258950
	.incbin "incbin/overlay66_rodata.bin", 0x38, 0x5C - 0x38

	.global Unk_ov66_02258974
Unk_ov66_02258974: ; 0x02258974
	.incbin "incbin/overlay66_rodata.bin", 0x5C, 0x9C - 0x5C

	.global Unk_ov66_022589B4
Unk_ov66_022589B4: ; 0x022589B4
	.incbin "incbin/overlay66_rodata.bin", 0x9C, 0x40

