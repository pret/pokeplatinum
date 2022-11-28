	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov66_0222DCE0
ov66_0222DCE0: ; 0x0222DCE0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0222DD64 ; =0x0000003F
	mov r1, #2
	bl sub_02006590
	bl sub_02099550
	bl sub_020995B4
	mov r2, #5
	mov r0, #3
	mov r1, #0x68
	lsl r2, r2, #0xc
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0x68
	bl sub_0200681C
	add r5, r0, #0
	add r2, r5, #0
	mov r1, #0x10
	mov r0, #0
_0222DD12:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0222DD12
	add r0, r4, #0
	bl sub_02006840
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0x68
	str r0, [r5, #0]
	bl ov66_0222DDF0
	str r0, [r5, #4]
	mov r0, #0x68
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	ldr r3, [r5, #4]
	bl ov66_02230C44
	str r0, [r5, #8]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	ldr r0, _0222DD68 ; =ov66_0222DDDC
	add r1, r5, #0
	mov r2, #0
	bl sub_0200DA3C
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	bl ov66_02230CAC
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222DD64: .word 0x0000003F
_0222DD68: .word ov66_0222DDDC
	thumb_func_end ov66_0222DCE0

	thumb_func_start ov66_0222DD6C
ov66_0222DD6C: ; 0x0222DD6C
	push {r3, r4, r5, lr}
	bl sub_0200682C
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl ov66_02230CB8
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl ov66_0222DF58
	cmp r4, #1
	bne _0222DD8A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222DD8A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222DD6C

	thumb_func_start ov66_0222DD90
ov66_0222DD90: ; 0x0222DD90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200DA58
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	ldr r0, [r4, #8]
	bl ov66_02230C90
	ldr r0, [r4, #4]
	bl ov66_0222DEEC
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x68
	bl sub_0201807C
	ldr r0, _0222DDD8 ; =0x0000003F
	bl sub_02006514
	bl sub_020995C4
	bl sub_02099560
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222DDD8: .word 0x0000003F
	thumb_func_end ov66_0222DD90

	thumb_func_start ov66_0222DDDC
ov66_0222DDDC: ; 0x0222DDDC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	bl ov66_02230CE8
	ldr r0, [r4, #4]
	bl ov66_0222DFF4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0222DDDC

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
	ldr r3, _0222E248 ; =FUN_020C4B4C
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
	ldr r3, _0222E2A0 ; =FUN_020C4DB0
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
	ldr r3, _0222E940 ; =FUN_020C4DB0
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
	ldr r3, _0222FC08 ; =FUN_020181C4
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
	ldr r3, _0222FC70 ; =FUN_020D5124
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
	ldr r3, _022308C4 ; =FUN_02014FF0
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
	bl sub_020D5124
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
	bl sub_02022974
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
	bl sub_02022974
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
	bl sub_02022974
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
	bl sub_02022974
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
	bl sub_02022974
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
	bl sub_020D5124
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
	bl sub_02022974
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
	bl sub_02022974
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
	ldr r3, _02230F4C ; =FUN_020181C4
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
	ldr r3, _02230FEC ; =FUN_020181C4
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
	ldr r3, _02231060 ; =FUN_020181C4
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
	bl sub_020D5124
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
	bl sub_020D5124
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
	bl sub_020D5124
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
	ldr r3, _022312B0 ; =FUN_020181C4
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
	ldr r3, _02231340 ; =FUN_020181C4
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
	ldr r3, _022313F0 ; =FUN_020181C4
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

	thumb_func_start ov66_02231428
ov66_02231428: ; 0x02231428
	push {r3, r4, lr}
	sub sp, #0x1c
	add r3, r1, #0
	ldmia r3!, {r2, r3}
	add r4, r0, #0
	add r0, sp, #0xc
	add r1, sp, #0
	bl sub_020CC3FC
	ldr r0, [sp]
	strb r0, [r4]
	ldr r0, [sp, #4]
	strb r0, [r4, #1]
	ldr r0, [sp, #8]
	strb r0, [r4, #2]
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231428

	thumb_func_start ov66_0223144C
ov66_0223144C: ; 0x0223144C
	push {r4, lr}
	sub sp, #8
	ldr r0, [r0, #0]
	add r4, r2, #0
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	str r0, [sp]
	add r0, sp, #0
	ldrb r2, [r0, #6]
	ldrb r1, [r0, #2]
	add r1, r2, r1
	strb r1, [r0, #6]
	ldrb r0, [r0, #6]
	mov r1, #0x3c
	bl sub_020E1F6C
	add r1, sp, #0
	ldrb r2, [r1, #5]
	add r0, r2, r0
	strb r0, [r1, #5]
	ldrb r0, [r1, #6]
	mov r1, #0x3c
	bl sub_020E1F6C
	strb r1, [r4, #2]
	add r0, sp, #0
	ldrb r2, [r0, #5]
	ldrb r1, [r0, #1]
	add r1, r2, r1
	strb r1, [r0, #5]
	ldrb r0, [r0, #5]
	mov r1, #0x3c
	bl sub_020E1F6C
	add r1, sp, #0
	ldrb r2, [r1, #4]
	add r0, r2, r0
	strb r0, [r1, #4]
	ldrb r0, [r1, #5]
	mov r1, #0x3c
	bl sub_020E1F6C
	strb r1, [r4, #1]
	add r0, sp, #0
	ldrb r2, [r0, #4]
	ldrb r1, [r0]
	add r1, r2, r1
	strb r1, [r0, #4]
	ldrb r0, [r0, #4]
	mov r1, #0x18
	bl sub_020E1F6C
	strb r1, [r4]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0223144C

	thumb_func_start ov66_022314BC
ov66_022314BC: ; 0x022314BC
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0, #0]
	add r4, r2, #0
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	add r1, sp, #0
	str r0, [sp]
	ldrb r5, [r1, #2]
	mov r0, #6
	ldrsb r1, [r1, r0]
	lsl r0, r5, #0x18
	asr r0, r0, #0x18
	sub r0, r1, r0
	bpl _022314F6
	neg r0, r0
	mov r1, #0x3c
	bl sub_020E1F6C
	add r2, sp, #0
	ldrb r3, [r2, #6]
	add r0, r0, #1
	mov r1, #0x3c
	mul r1, r0
	add r1, r3, r1
	strb r1, [r2, #6]
	ldrb r1, [r2, #5]
	sub r0, r1, r0
	strb r0, [r2, #5]
_022314F6:
	add r1, sp, #0
	ldrb r0, [r1, #6]
	sub r0, r0, r5
	strb r0, [r4, #2]
	ldrb r5, [r1, #1]
	mov r0, #5
	ldrsb r1, [r1, r0]
	lsl r0, r5, #0x18
	asr r0, r0, #0x18
	sub r0, r1, r0
	bpl _02231528
	neg r0, r0
	mov r1, #0x3c
	bl sub_020E1F6C
	add r2, sp, #0
	ldrb r3, [r2, #5]
	add r0, r0, #1
	mov r1, #0x3c
	mul r1, r0
	add r1, r3, r1
	strb r1, [r2, #5]
	ldrb r1, [r2, #4]
	sub r0, r1, r0
	strb r0, [r2, #4]
_02231528:
	add r1, sp, #0
	ldrb r0, [r1, #5]
	sub r0, r0, r5
	strb r0, [r4, #1]
	mov r0, #4
	ldrsb r2, [r1, r0]
	mov r0, #0
	ldrsb r0, [r1, r0]
	sub r0, r2, r0
	bpl _02231552
	neg r0, r0
	mov r1, #0x18
	bl sub_020E1F6C
	add r1, sp, #0
	add r2, r0, #1
	mov r0, #0x18
	ldrb r3, [r1, #4]
	mul r0, r2
	add r0, r3, r0
	strb r0, [r1, #4]
_02231552:
	add r0, sp, #0
	ldrb r1, [r0, #4]
	ldrb r0, [r0]
	sub r0, r1, r0
	strb r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_022314BC

	thumb_func_start ov66_02231560
ov66_02231560: ; 0x02231560
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r4, r2, #0
	add r6, r3, #0
	cmp r5, #0
	beq _022315D6
	add r0, r5, #0
	bl sub_020996F4
	cmp r4, r0
	bhi _022315D6
	mov r1, #0
	ldr r2, [sp]
	add r0, r1, #0
	mov r7, #1
_02231580:
	ldrb r3, [r2, #3]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	bne _0223158C
	add r1, r7, #0
	b _0223159E
_0223158C:
	ldrh r3, [r2]
	cmp r5, r3
	bne _0223159E
	ldrb r3, [r2, #2]
	cmp r4, r3
	bne _0223159E
	cmp r6, #1
	beq _022315D6
	mov r1, #1
_0223159E:
	cmp r1, #0
	beq _022315CE
	lsl r2, r0, #2
	ldr r0, [sp]
	ldr r1, [sp]
	add r0, r0, r2
	strh r5, [r1, r2]
	strb r4, [r0, #2]
	ldrb r3, [r0, #3]
	mov r1, #0xf
	bic r3, r1
	lsl r1, r6, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strb r1, [r0, #3]
	ldrb r2, [r0, #3]
	mov r1, #0xf0
	bic r2, r1
	mov r1, #0x10
	orr r1, r2
	strb r1, [r0, #3]
	pop {r3, r4, r5, r6, r7, pc}
_022315CE:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, #0x32
	blt _02231580
_022315D6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_02231560

	thumb_func_start ov66_022315D8
ov66_022315D8: ; 0x022315D8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x32
	blo _022315E6
	bl sub_02022974
_022315E6:
	lsl r0, r5, #2
	add r4, r4, r0
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _022315F8
	bl sub_02022974
_022315F8:
	ldrh r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_022315D8

	thumb_func_start ov66_022315FC
ov66_022315FC: ; 0x022315FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x32
	blo _0223160A
	bl sub_02022974
_0223160A:
	lsl r4, r4, #2
	add r0, r5, r4
	ldrb r0, [r0, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _0223161C
	bl sub_02022974
_0223161C:
	add r0, r5, r4
	ldrb r0, [r0, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_022315FC

	thumb_func_start ov66_02231624
ov66_02231624: ; 0x02231624
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x32
	blo _02231632
	bl sub_02022974
_02231632:
	lsl r0, r5, #2
	add r4, r4, r0
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _02231644
	bl sub_02022974
_02231644:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231624

	thumb_func_start ov66_0223164C
ov66_0223164C: ; 0x0223164C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x32
	blo _0223165A
	bl sub_02022974
_0223165A:
	lsl r0, r5, #2
	add r0, r4, r0
	ldrb r0, [r0, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0223164C

	thumb_func_start ov66_02231668
ov66_02231668: ; 0x02231668
	push {r4, lr}
	bl sub_020B3C0C
	cmp r0, #0
	beq _02231692
	add r2, r0, #0
	add r2, #8
	beq _02231686
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02231686
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02231688
_02231686:
	mov r1, #0
_02231688:
	cmp r1, #0
	beq _02231692
	ldr r1, [r1, #0]
	add r4, r0, r1
	b _02231694
_02231692:
	mov r4, #0
_02231694:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020B2CE4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl sub_020B2CE4
	mov r2, #2
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020B2CE4
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl sub_020B2CE4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231668

	thumb_func_start ov66_022316C4
ov66_022316C4: ; 0x022316C4
	push {r4, lr}
	add r4, r1, #0
	bl sub_020996F4
	cmp r0, #0
	bne _022316D8
	cmp r4, #0
	bne _022316D8
	mov r0, #1
	pop {r4, pc}
_022316D8:
	cmp r4, #1
	blo _022316E4
	cmp r4, r0
	bhi _022316E4
	mov r0, #1
	pop {r4, pc}
_022316E4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov66_022316C4

	thumb_func_start ov66_022316E8
ov66_022316E8: ; 0x022316E8
	ldr r1, _022316F0 ; =0x02258AA4
	ldrb r0, [r1, r0]
	bx lr
	nop
_022316F0: .word 0x02258AA4
	thumb_func_end ov66_022316E8

	thumb_func_start ov66_022316F4
ov66_022316F4: ; 0x022316F4
	push {r4, lr}
	add r4, r0, #0
	bl ov4_021D1F3C
	cmp r0, #0xb
	beq _02231704
	cmp r4, #0x19
	bne _02231708
_02231704:
	mov r0, #0xe
	pop {r4, pc}
_02231708:
	cmp r4, #0x1a
	bne _02231710
	mov r0, #0xd
	pop {r4, pc}
_02231710:
	cmp r0, #0
	bge _02231716
	mov r0, #0xb
_02231716:
	pop {r4, pc}
	thumb_func_end ov66_022316F4

	thumb_func_start ov66_02231718
ov66_02231718: ; 0x02231718
	push {r4, lr}
	add r4, r0, #0
	bl ov4_021D1F3C
	cmp r4, #0x19
	bne _02231728
	mov r0, #0xb
	b _0223172E
_02231728:
	cmp r4, #0x1a
	bne _0223172E
	mov r0, #0xc
_0223172E:
	cmp r0, #0xb
	bhi _0223175A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223173E: ; jump table
	.short _0223175A - _0223173E - 2 ; case 0
	.short _02231756 - _0223173E - 2 ; case 1
	.short _0223175A - _0223173E - 2 ; case 2
	.short _0223175A - _0223173E - 2 ; case 3
	.short _02231756 - _0223173E - 2 ; case 4
	.short _02231756 - _0223173E - 2 ; case 5
	.short _02231756 - _0223173E - 2 ; case 6
	.short _02231756 - _0223173E - 2 ; case 7
	.short _02231756 - _0223173E - 2 ; case 8
	.short _02231756 - _0223173E - 2 ; case 9
	.short _02231756 - _0223173E - 2 ; case 10
	.short _02231756 - _0223173E - 2 ; case 11
_02231756:
	mov r0, #0
	pop {r4, pc}
_0223175A:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231718

	thumb_func_start ov66_02231760
ov66_02231760: ; 0x02231760
	push {r3, lr}
	bl sub_020383E8
	cmp r0, #0
	bne _02231772
	bl sub_0203881C
	cmp r0, #0
	beq _02231776
_02231772:
	mov r0, #1
	pop {r3, pc}
_02231776:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_02231760

	thumb_func_start ov66_0223177C
ov66_0223177C: ; 0x0223177C
	push {r3, r4, r5, lr}
	mov r1, #0x23
	lsl r1, r1, #4
	add r5, r0, #0
	bl sub_02018144
	mov r2, #0x23
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	add r0, r4, #0
	add r0, #8
	bl ov66_02231D38
	add r0, r4, #0
	add r0, #0x5c
	add r1, r5, #0
	bl ov66_02231E94
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0223177C

	thumb_func_start ov66_022317AC
ov66_022317AC: ; 0x022317AC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x5c
	bl ov66_02231EEC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_022317AC

	thumb_func_start ov66_022317C0
ov66_022317C0: ; 0x022317C0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x5c
	bl ov66_02231F1C
	add r4, #8
	add r0, r4, #0
	mov r1, #0
	bl ov66_02231DC0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_022317C0

	thumb_func_start ov66_022317D8
ov66_022317D8: ; 0x022317D8
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022317D8

	thumb_func_start ov66_022317E4
ov66_022317E4: ; 0x022317E4
	push {r3, lr}
	add r0, #8
	bl ov66_02231D74
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_022317E4

	thumb_func_start ov66_022317F0
ov66_022317F0: ; 0x022317F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #8
	add r4, r1, #0
	bl ov66_02231E30
	add r5, #8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_02231D90
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_022317F0

	thumb_func_start ov66_0223180C
ov66_0223180C: ; 0x0223180C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	mov r5, #0
	add r4, #8
	mov r6, #2
	mov r7, #2
_0223181E:
	add r0, r4, #0
	add r1, r5, #0
	bl ov66_02231E54
	add r2, r0, #0
	tst r0, r7
	beq _02231836
	add r0, r4, #0
	add r1, r5, #0
	bic r2, r6
	bl ov66_02231DA8
_02231836:
	add r5, r5, #1
	cmp r5, #0x14
	blt _0223181E
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r0, #8
	bl ov66_02231E54
	add r3, r0, #0
	ldr r0, [sp]
	mov r2, #2
	add r0, #8
	ldr r1, [sp, #4]
	orr r2, r3
	str r0, [sp]
	bl ov66_02231DA8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_0223180C

	thumb_func_start ov66_0223185C
ov66_0223185C: ; 0x0223185C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x5c
	mov r1, #8
	bl ov66_02231F68
	add r6, r0, #0
	beq _022318A8
	ldr r1, [r4, #0]
	str r1, [sp]
	ldr r1, [r4, #4]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r2, [r4, #8]
	add r3, r1, #0
	str r2, [sp, #0x10]
	ldrh r2, [r4, #0xa]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	mov r2, #0x96
	str r1, [sp, #0x1c]
	lsl r2, r2, #2
	str r2, [sp, #0x20]
	mov r2, #8
	str r2, [sp, #0x24]
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_022318A8:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov66_0223185C

	thumb_func_start ov66_022318AC
ov66_022318AC: ; 0x022318AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0x1b
	bhs _02231902
	add r0, r5, #0
	add r0, #0x5c
	mov r1, #7
	bl ov66_02231F68
	add r6, r0, #0
	beq _02231902
	ldr r1, [r4, #0]
	mov r2, #0
	str r1, [sp]
	ldr r1, [r4, #4]
	add r3, r2, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldrh r1, [r4, #8]
	str r1, [sp, #0x10]
	ldrh r1, [r4, #0xa]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	mov r1, #0x96
	str r2, [sp, #0x1c]
	lsl r1, r1, #2
	str r1, [sp, #0x20]
	mov r1, #7
	str r1, [sp, #0x24]
	mov r1, #1
	str r1, [sp, #0x28]
	ldr r1, [r4, #0xc]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_02231902:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_022318AC

	thumb_func_start ov66_02231908
ov66_02231908: ; 0x02231908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r1, #0
	ldr r4, [r5, #0]
	add r6, r0, #0
	cmp r4, #0
	beq _0223191E
	cmp r4, #1
	beq _0223191E
	cmp r4, #2
	bne _02231992
_0223191E:
	ldr r0, [r5, #0x20]
	cmp r0, #1
	ldr r0, [r5, #4]
	bne _02231932
	cmp r0, #2
	blo _02231992
	cmp r0, #4
	bls _0223193A
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_02231932:
	cmp r0, #1
	blo _02231992
	cmp r0, #4
	bhi _02231992
_0223193A:
	ldr r0, _02231998 ; =0x02258ACC
	lsl r1, r4, #2
	ldr r7, [r0, r1]
	add r0, r6, #0
	lsl r1, r7, #0x10
	add r0, #0x5c
	lsr r1, r1, #0x10
	bl ov66_02231F68
	str r0, [sp, #0x2c]
	cmp r0, #0
	beq _02231992
	ldr r1, [r5, #8]
	str r1, [sp]
	ldr r1, [r5, #0xc]
	str r1, [sp, #4]
	ldr r1, [r5, #0x10]
	str r1, [sp, #8]
	ldr r1, [r5, #0x14]
	str r1, [sp, #0xc]
	ldrh r1, [r5, #0x18]
	str r1, [sp, #0x10]
	ldrh r1, [r5, #0x1a]
	str r1, [sp, #0x14]
	ldrh r1, [r5, #0x1c]
	str r1, [sp, #0x18]
	ldrh r1, [r5, #0x1e]
	str r1, [sp, #0x1c]
	mov r1, #0xe1
	lsl r1, r1, #2
	str r1, [sp, #0x20]
	str r7, [sp, #0x24]
	mov r1, #2
	str r1, [sp, #0x28]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0x20]
	add r1, r4, #0
	bl ov66_02231FFC
	add r6, #0x5c
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	bl ov66_02231FC0
_02231992:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231998: .word 0x02258ACC
	thumb_func_end ov66_02231908

	thumb_func_start ov66_0223199C
ov66_0223199C: ; 0x0223199C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #3
	beq _022319AE
	cmp r1, #4
	bne _022319F6
_022319AE:
	add r1, r1, #5
	add r0, r5, #0
	lsl r1, r1, #0x10
	add r0, #0x5c
	lsr r1, r1, #0x10
	bl ov66_02231F68
	add r6, r0, #0
	beq _022319F6
	ldr r1, [r4, #0]
	ldr r2, [r4, #8]
	mov r3, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldrh r2, [r4, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r2, #0xe1
	str r3, [sp, #0x1c]
	lsl r2, r2, #2
	str r2, [sp, #0x20]
	add r2, r1, #5
	str r2, [sp, #0x24]
	mov r2, #3
	str r2, [sp, #0x28]
	ldr r2, [r4, #4]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_022319F6:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_0223199C

	thumb_func_start ov66_022319FC
ov66_022319FC: ; 0x022319FC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x5c
	mov r1, #0xc
	bl ov66_02231F68
	add r6, r0, #0
	beq _02231A50
	ldr r1, [r4, #4]
	mov r2, #0
	str r1, [sp]
	ldr r1, [r4, #8]
	add r3, r2, #0
	str r1, [sp, #4]
	ldr r1, [r4, #0xc]
	str r1, [sp, #8]
	ldr r1, [r4, #0x10]
	str r1, [sp, #0xc]
	ldrh r1, [r4, #0x14]
	str r1, [sp, #0x10]
	ldrh r1, [r4, #0x16]
	str r1, [sp, #0x14]
	ldrh r1, [r4, #0x18]
	str r1, [sp, #0x18]
	ldrh r1, [r4, #0x1a]
	str r1, [sp, #0x1c]
	ldr r1, _02231A54 ; =0x000001C2
	str r1, [sp, #0x20]
	mov r1, #0xc
	str r1, [sp, #0x24]
	mov r1, #4
	str r1, [sp, #0x28]
	ldr r1, [r4, #0]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_02231A50:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02231A54: .word 0x000001C2
	thumb_func_end ov66_022319FC

	thumb_func_start ov66_02231A58
ov66_02231A58: ; 0x02231A58
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x5c
	mov r1, #0xd
	bl ov66_02231F68
	add r6, r0, #0
	beq _02231AAC
	ldr r1, [r4, #4]
	mov r2, #0
	str r1, [sp]
	ldr r1, [r4, #8]
	add r3, r2, #0
	str r1, [sp, #4]
	ldr r1, [r4, #0xc]
	str r1, [sp, #8]
	ldr r1, [r4, #0x10]
	str r1, [sp, #0xc]
	ldrh r1, [r4, #0x14]
	str r1, [sp, #0x10]
	ldrh r1, [r4, #0x16]
	str r1, [sp, #0x14]
	ldrh r1, [r4, #0x18]
	str r1, [sp, #0x18]
	ldrh r1, [r4, #0x1a]
	str r1, [sp, #0x1c]
	ldr r1, _02231AB0 ; =0x000001C2
	str r1, [sp, #0x20]
	mov r1, #0xd
	str r1, [sp, #0x24]
	mov r1, #5
	str r1, [sp, #0x28]
	ldr r1, [r4, #0]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_02231AAC:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02231AB0: .word 0x000001C2
	thumb_func_end ov66_02231A58

	thumb_func_start ov66_02231AB4
ov66_02231AB4: ; 0x02231AB4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _02231B1E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02231ACE: ; jump table
	.short _02231ADC - _02231ACE - 2 ; case 0
	.short _02231ADC - _02231ACE - 2 ; case 1
	.short _02231ADC - _02231ACE - 2 ; case 2
	.short _02231AD8 - _02231ACE - 2 ; case 3
	.short _02231ADC - _02231ACE - 2 ; case 4
_02231AD8:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
_02231ADC:
	add r0, r5, #0
	add r0, #0x5c
	mov r1, #0xe
	bl ov66_02231F68
	add r6, r0, #0
	beq _02231B1E
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r1, #0xe1
	str r3, [sp, #0x1c]
	lsl r1, r1, #2
	str r1, [sp, #0x20]
	mov r1, #0xe
	str r1, [sp, #0x24]
	mov r1, #6
	str r1, [sp, #0x28]
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	ldr r1, [r1, #0]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_02231B1E:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_02231AB4

	thumb_func_start ov66_02231B24
ov66_02231B24: ; 0x02231B24
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0x14
	bhs _02231B76
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _02231B76
	add r0, r5, #0
	add r0, #0x5c
	mov r1, #1
	bl ov66_02231F68
	add r6, r0, #0
	beq _02231B76
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r1, _02231B7C ; =0x00000708
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r1, #1
	str r1, [sp, #0x24]
	mov r1, #7
	str r1, [sp, #0x28]
	ldr r1, [r4, #0]
	add r3, r2, #0
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_02231B76:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_02231B7C: .word 0x00000708
	thumb_func_end ov66_02231B24

	thumb_func_start ov66_02231B80
ov66_02231B80: ; 0x02231B80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02231B96
	cmp r0, #1
	beq _02231B96
	cmp r0, #2
	bne _02231BF6
_02231B96:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl ov66_022324D0
	cmp r0, #0
	beq _02231BF6
	ldr r7, [r4, #0]
	ldr r0, _02231BFC ; =0x02258AB8
	ldrb r6, [r0, r7]
	add r0, r5, #0
	add r0, #0x5c
	add r1, r6, #0
	bl ov66_02231F68
	str r0, [sp, #0x2c]
	cmp r0, #0
	beq _02231BF6
	ldr r1, [r4, #8]
	mov r3, #0
	str r1, [sp]
	ldr r1, [r4, #0xc]
	str r1, [sp, #4]
	ldr r1, [r4, #0x10]
	str r1, [sp, #8]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0xc]
	ldrh r1, [r4, #0x18]
	str r1, [sp, #0x10]
	ldrh r1, [r4, #0x1a]
	str r1, [sp, #0x14]
	ldrh r1, [r4, #0x1c]
	str r1, [sp, #0x18]
	ldrh r1, [r4, #0x1e]
	str r1, [sp, #0x1c]
	ldr r1, _02231C00 ; =0x000001C2
	str r1, [sp, #0x20]
	str r6, [sp, #0x24]
	mov r1, #8
	str r1, [sp, #0x28]
	ldr r2, [r4, #4]
	add r1, r7, #0
	bl ov66_02231FFC
	add r5, #0x5c
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl ov66_02231FC0
_02231BF6:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231BFC: .word 0x02258AB8
_02231C00: .word 0x000001C2
	thumb_func_end ov66_02231B80

	thumb_func_start ov66_02231C04
ov66_02231C04: ; 0x02231C04
	ldr r3, _02231C0C ; =ov66_02231F58
	add r0, #0x5c
	bx r3
	nop
_02231C0C: .word ov66_02231F58
	thumb_func_end ov66_02231C04

	thumb_func_start ov66_02231C10
ov66_02231C10: ; 0x02231C10
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov66_02231C10

	thumb_func_start ov66_02231C18
ov66_02231C18: ; 0x02231C18
	ldr r3, _02231C20 ; =ov66_02231DE8
	add r0, #8
	bx r3
	nop
_02231C20: .word ov66_02231DE8
	thumb_func_end ov66_02231C18

	thumb_func_start ov66_02231C24
ov66_02231C24: ; 0x02231C24
	ldr r3, _02231C2C ; =ov66_02231DFC
	add r0, #8
	bx r3
	nop
_02231C2C: .word ov66_02231DFC
	thumb_func_end ov66_02231C24

	thumb_func_start ov66_02231C30
ov66_02231C30: ; 0x02231C30
	ldr r3, _02231C38 ; =ov66_02231E10
	add r0, #8
	bx r3
	nop
_02231C38: .word ov66_02231E10
	thumb_func_end ov66_02231C30

	thumb_func_start ov66_02231C3C
ov66_02231C3C: ; 0x02231C3C
	ldr r3, _02231C44 ; =ov66_02231E30
	add r0, #8
	bx r3
	nop
_02231C44: .word ov66_02231E30
	thumb_func_end ov66_02231C3C

	thumb_func_start ov66_02231C48
ov66_02231C48: ; 0x02231C48
	ldr r3, _02231C50 ; =ov66_02231E74
	add r0, #8
	bx r3
	nop
_02231C50: .word ov66_02231E74
	thumb_func_end ov66_02231C48

	thumb_func_start ov66_02231C54
ov66_02231C54: ; 0x02231C54
	ldr r3, _02231C5C ; =ov66_02231E6C
	add r0, #8
	bx r3
	nop
_02231C5C: .word ov66_02231E6C
	thumb_func_end ov66_02231C54

	thumb_func_start ov66_02231C60
ov66_02231C60: ; 0x02231C60
	mov r1, #0x8a
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	sub r1, #0x2c
	add r0, r0, r1
	cmp r2, r0
	beq _02231C72
	mov r0, #1
	bx lr
_02231C72:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02231C60

	thumb_func_start ov66_02231C78
ov66_02231C78: ; 0x02231C78
	push {r4, lr}
	add r4, r0, #0
	bl ov66_02231C60
	cmp r0, #0
	bne _02231C88
	bl sub_02022974
_02231C88:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231C78

	thumb_func_start ov66_02231C94
ov66_02231C94: ; 0x02231C94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	str r1, [sp, #8]
	add r5, r3, #0
	bl ov66_02231C60
	cmp r0, #0
	bne _02231CAA
	bl sub_02022974
_02231CAA:
	mov r2, #0x8a
	lsl r2, r2, #2
	ldr r4, [r4, r2]
	ldr r3, [sp, #0x28]
	mov r0, #1
	mov r1, #0x1a
	add r2, #0x65
	bl sub_0200B144
	add r7, r0, #0
	ldr r0, [sp, #0x28]
	bl sub_0200B358
	ldrb r6, [r4]
	str r0, [sp, #0xc]
	cmp r6, #9
	bhs _02231CE6
	ldr r0, [sp, #0x28]
	str r5, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r4, _02231CFC ; =0x02258AFC
	lsl r5, r6, #2
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r4, [r4, r5]
	add r3, r7, #0
	blx r4
	add r4, r0, #0
	b _02231CE8
_02231CE6:
	mov r4, #0
_02231CE8:
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, [sp, #0xc]
	bl sub_0200B3F0
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231CFC: .word 0x02258AFC
	thumb_func_end ov66_02231C94

	thumb_func_start ov66_02231D00
ov66_02231D00: ; 0x02231D00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov66_02231C60
	cmp r0, #0
	bne _02231D12
	bl sub_02022974
_02231D12:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r2, [r0]
	cmp r2, #9
	bhs _02231D2A
	lsl r3, r2, #2
	ldr r2, _02231D34 ; =0x02258AD8
	add r1, r4, #0
	ldr r2, [r2, r3]
	blx r2
	pop {r3, r4, r5, pc}
_02231D2A:
	bl sub_02022974
	mov r0, #0x14
	pop {r3, r4, r5, pc}
	nop
_02231D34: .word 0x02258AD8
	thumb_func_end ov66_02231D00

	thumb_func_start ov66_02231D38
ov66_02231D38: ; 0x02231D38
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	mov r6, #2
	add r7, r4, #0
_02231D42:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov66_02231D58
	add r4, r4, #1
	cmp r4, #0x14
	blt _02231D42
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_02231D38

	thumb_func_start ov66_02231D58
ov66_02231D58: ; 0x02231D58
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0x14
	blo _02231D6A
	bl sub_02022974
_02231D6A:
	lsl r0, r4, #2
	strh r6, [r5, r0]
	add r0, r5, r0
	strh r7, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_02231D58

	thumb_func_start ov66_02231D74
ov66_02231D74: ; 0x02231D74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov66_02231D58
	add r0, r5, #0
	mov r1, #1
	bl ov66_02231DC0
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_02231DD4
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231D74

	thumb_func_start ov66_02231D90
ov66_02231D90: ; 0x02231D90
	push {r4, lr}
	add r4, r0, #0
	mov r2, #2
	mov r3, #0
	bl ov66_02231D58
	add r0, r4, #0
	mov r1, #2
	bl ov66_02231DC0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231D90

	thumb_func_start ov66_02231DA8
ov66_02231DA8: ; 0x02231DA8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _02231DB8
	bl sub_02022974
_02231DB8:
	lsl r0, r4, #2
	add r0, r5, r0
	strh r6, [r0, #2]
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02231DA8

	thumb_func_start ov66_02231DC0
ov66_02231DC0: ; 0x02231DC0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #2
	ble _02231DCE
	bl sub_02022974
_02231DCE:
	add r5, #0x50
	strh r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231DC0

	thumb_func_start ov66_02231DD4
ov66_02231DD4: ; 0x02231DD4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _02231DE2
	bl sub_02022974
_02231DE2:
	add r5, #0x52
	strh r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231DD4

	thumb_func_start ov66_02231DE8
ov66_02231DE8: ; 0x02231DE8
	push {r3, lr}
	bl ov66_02231DFC
	cmp r0, #2
	beq _02231DF6
	mov r0, #1
	pop {r3, pc}
_02231DF6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_02231DE8

	thumb_func_start ov66_02231DFC
ov66_02231DFC: ; 0x02231DFC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x14
	blo _02231E0A
	bl sub_02022974
_02231E0A:
	lsl r0, r5, #2
	ldrh r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231DFC

	thumb_func_start ov66_02231E10
ov66_02231E10: ; 0x02231E10
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x14
	blo _02231E1E
	bl sub_02022974
_02231E1E:
	lsl r0, r5, #2
	add r0, r4, r0
	ldrh r1, [r0, #2]
	mov r0, #1
	tst r1, r0
	bne _02231E2C
	mov r0, #0
_02231E2C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02231E10

	thumb_func_start ov66_02231E30
ov66_02231E30: ; 0x02231E30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x14
	blo _02231E3E
	bl sub_02022974
_02231E3E:
	lsl r0, r5, #2
	add r0, r4, r0
	ldrh r1, [r0, #2]
	mov r0, #2
	tst r0, r1
	beq _02231E4E
	mov r0, #1
	pop {r3, r4, r5, pc}
_02231E4E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02231E30

	thumb_func_start ov66_02231E54
ov66_02231E54: ; 0x02231E54
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x14
	blo _02231E62
	bl sub_02022974
_02231E62:
	lsl r0, r5, #2
	add r0, r4, r0
	ldrh r0, [r0, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02231E54

	thumb_func_start ov66_02231E6C
ov66_02231E6C: ; 0x02231E6C
	add r0, #0x50
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02231E6C

	thumb_func_start ov66_02231E74
ov66_02231E74: ; 0x02231E74
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _02231E82
	bl sub_02022974
_02231E82:
	add r5, #0x52
	ldrh r0, [r5]
	cmp r0, r4
	bne _02231E8E
	mov r0, #1
	pop {r3, r4, r5, pc}
_02231E8E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02231E74

	thumb_func_start ov66_02231E94
ov66_02231E94: ; 0x02231E94
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r2, #0x75
	add r6, r1, #0
	mov r1, #0
	lsl r2, r2, #2
	str r0, [sp]
	bl sub_020D5124
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r7, #8
	str r0, [sp, #4]
_02231EB0:
	ldr r5, [sp, #4]
	mov r4, #0
_02231EB4:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02023790
	str r0, [r5, #0x10]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02231EB4
	ldr r0, [sp, #4]
	add r0, #0x34
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #8
	blt _02231EB0
	mov r2, #0x1a
	lsl r2, r2, #4
	ldr r0, [sp]
	add r1, r2, #0
	add r3, r0, r2
	add r1, #0x2c
	str r3, [r0, r1]
	add r2, #0x30
	str r3, [r0, r2]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov66_02231E94

	thumb_func_start ov66_02231EEC
ov66_02231EEC: ; 0x02231EEC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r7, #0
	add r6, r0, #0
_02231EF4:
	mov r4, #0
	add r5, r6, #0
_02231EF8:
	ldr r0, [r5, #0x10]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02231EF8
	add r7, r7, #1
	add r6, #0x34
	cmp r7, #8
	blt _02231EF4
	mov r2, #0x75
	ldr r0, [sp]
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_02231EEC

	thumb_func_start ov66_02231F1C
ov66_02231F1C: ; 0x02231F1C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	sub r0, #0x2c
	add r4, r6, r0
	cmp r1, r4
	beq _02231F54
	mov r7, #0
_02231F30:
	ldr r5, [r1, #0x2c]
	mov r0, #0x2a
	strh r7, [r1, #0x28]
	ldrsh r0, [r1, r0]
	sub r0, r0, #1
	cmp r0, #0
	ble _02231F48
	mov r0, #0x2a
	ldrsh r0, [r1, r0]
	sub r0, r0, #1
	strh r0, [r1, #0x2a]
	b _02231F4E
_02231F48:
	add r0, r6, #0
	bl ov66_02231FE8
_02231F4E:
	add r1, r5, #0
	cmp r5, r4
	bne _02231F30
_02231F54:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_02231F1C

	thumb_func_start ov66_02231F58
ov66_02231F58: ; 0x02231F58
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r3, _02231F64 ; =ov66_02231FE8
	ldr r1, [r0, r1]
	bx r3
	nop
_02231F64: .word ov66_02231FE8
	thumb_func_end ov66_02231F58

	thumb_func_start ov66_02231F68
ov66_02231F68: ; 0x02231F68
	push {r3, r4, r5, lr}
	mov r4, #0
	add r3, r4, #0
	add r5, r0, #0
_02231F70:
	ldr r2, [r5, #0x2c]
	cmp r2, #0
	bne _02231F7E
	mov r2, #0x34
	mul r2, r3
	add r4, r0, r2
	b _02231F86
_02231F7E:
	add r3, r3, #1
	add r5, #0x34
	cmp r3, #8
	blt _02231F70
_02231F86:
	cmp r4, #0
	bne _02231FAA
	mov r2, #0
	add r5, r0, #0
_02231F8E:
	ldrh r3, [r5, #0x28]
	cmp r3, r1
	blo _02231FA2
	mov r1, #0x34
	mul r1, r2
	add r4, r0, r1
	add r1, r4, #0
	bl ov66_02231FE8
	b _02231FAA
_02231FA2:
	add r2, r2, #1
	add r5, #0x34
	cmp r2, #8
	blt _02231F8E
_02231FAA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02231F68

	thumb_func_start ov66_02231FB0
ov66_02231FB0: ; 0x02231FB0
	ldr r2, [r0, #0x2c]
	str r2, [r1, #0x2c]
	str r0, [r1, #0x30]
	str r1, [r0, #0x2c]
	ldr r0, [r1, #0x2c]
	str r1, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02231FB0

	thumb_func_start ov66_02231FC0
ov66_02231FC0: ; 0x02231FC0
	push {r4, lr}
	mov r2, #0x1d
	lsl r2, r2, #4
	ldr r3, [r0, r2]
	sub r2, #0x30
	add r2, r0, r2
	cmp r3, r2
	beq _02231FDE
	ldrh r4, [r1, #0x28]
_02231FD2:
	ldrh r0, [r3, #0x28]
	cmp r0, r4
	blo _02231FDE
	ldr r3, [r3, #0x30]
	cmp r3, r2
	bne _02231FD2
_02231FDE:
	add r0, r3, #0
	bl ov66_02231FB0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231FC0

	thumb_func_start ov66_02231FE8
ov66_02231FE8: ; 0x02231FE8
	ldr r2, [r1, #0x2c]
	ldr r0, [r1, #0x30]
	str r2, [r0, #0x2c]
	ldr r2, [r1, #0x30]
	ldr r0, [r1, #0x2c]
	str r2, [r0, #0x30]
	mov r0, #0
	str r0, [r1, #0x30]
	str r0, [r1, #0x2c]
	bx lr
	thumb_func_end ov66_02231FE8

	thumb_func_start ov66_02231FFC
ov66_02231FFC: ; 0x02231FFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x40]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #9
	blo _02232010
	bl sub_02022974
_02232010:
	ldr r0, [sp, #0x40]
	strb r0, [r5]
	ldr r0, [sp, #0x38]
	strh r0, [r5, #0x2a]
	ldr r0, [sp, #0x3c]
	strh r0, [r5, #0x28]
	str r4, [r5, #4]
	str r6, [r5, #8]
	str r7, [r5, #0xc]
	add r0, sp, #8
	ldrh r1, [r0, #0x20]
	strh r1, [r5, #0x20]
	ldrh r1, [r0, #0x24]
	strh r1, [r5, #0x22]
	ldrh r1, [r0, #0x28]
	strh r1, [r5, #0x24]
	ldrh r0, [r0, #0x2c]
	strh r0, [r5, #0x26]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02232040
	ldr r1, [r5, #0x10]
	bl sub_02025EF4
_02232040:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0223204C
	ldr r1, [r5, #0x14]
	bl sub_02025EF4
_0223204C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02232058
	ldr r1, [r5, #0x18]
	bl sub_02025EF4
_02232058:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02232064
	ldr r1, [r5, #0x1c]
	bl sub_02025EF4
_02232064:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_02231FFC

	thumb_func_start ov66_02232068
ov66_02232068: ; 0x02232068
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _022320B8 ; =0x020E4C44
	add r6, r2, #0
	ldrb r4, [r0]
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	mov r1, #0
	add r7, r3, #0
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	mov r1, #1
	str r1, [sp]
	str r4, [sp, #4]
	ldr r2, [r5, #0x14]
	add r0, r6, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r7, #0
	mov r1, #7
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022320B8: .word 0x020E4C44
	thumb_func_end ov66_02232068

	thumb_func_start ov66_022320BC
ov66_022320BC: ; 0x022320BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02232118 ; =0x020E4C44
	add r6, r2, #0
	ldrb r4, [r0]
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	mov r1, #0
	add r7, r3, #0
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	mov r1, #1
	str r1, [sp]
	str r4, [sp, #4]
	ldr r2, [r5, #0x14]
	add r0, r6, #0
	mov r3, #0
	bl sub_0200B48C
	ldr r2, [r5, #4]
	add r0, r6, #0
	mov r1, #2
	bl sub_0200C120
	add r0, r7, #0
	mov r1, #8
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232118: .word 0x020E4C44
	thumb_func_end ov66_022320BC

	thumb_func_start ov66_0223211C
ov66_0223211C: ; 0x0223211C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	ldr r2, [r5, #4]
	add r0, r4, #0
	mov r1, #0
	add r7, r3, #0
	bl sub_0200C0B0
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _0223220A
	ldr r0, [r5, #8]
	cmp r0, #2
	beq _02232182
	cmp r0, #3
	beq _02232146
	cmp r0, #4
	beq _022321AC
	b _022321FA
_02232146:
	ldr r0, _02232254 ; =0x020E4C44
	mov r1, #1
	ldrb r6, [r0]
	str r1, [sp]
	add r0, r4, #0
	str r6, [sp, #4]
	ldr r2, [r5, #0x10]
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x14]
	add r0, r4, #0
	mov r1, #2
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x18]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl sub_0200B48C
	mov r1, #0x12
	b _02232200
_02232182:
	ldr r0, _02232254 ; =0x020E4C44
	mov r1, #1
	ldrb r6, [r0]
	str r1, [sp]
	add r0, r4, #0
	str r6, [sp, #4]
	ldr r2, [r5, #0x10]
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x14]
	add r0, r4, #0
	mov r1, #2
	mov r3, #0
	bl sub_0200B48C
	mov r1, #0x13
	b _02232200
_022321AC:
	ldr r0, _02232254 ; =0x020E4C44
	mov r1, #1
	ldrb r6, [r0]
	str r1, [sp]
	add r0, r4, #0
	str r6, [sp, #4]
	ldr r2, [r5, #0x10]
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x14]
	add r0, r4, #0
	mov r1, #2
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x18]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x1c]
	add r0, r4, #0
	mov r1, #4
	mov r3, #0
	bl sub_0200B48C
	mov r1, #6
	b _02232200
_022321FA:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232200:
	add r0, r7, #0
	bl sub_0200B1EC
	add r5, r0, #0
	b _0223223C
_0223220A:
	ldr r0, _02232254 ; =0x020E4C44
	mov r1, #1
	ldrb r0, [r0]
	str r1, [sp]
	mov r3, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	bl sub_0200B48C
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r5, [r5, #8]
	mov r2, #4
	add r0, r4, #0
	mov r1, #2
	sub r2, r2, r5
	bl sub_0200B60C
	add r0, r7, #0
	mov r1, #5
	bl sub_0200B1EC
	add r5, r0, #0
_0223223C:
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232254: .word 0x020E4C44
	thumb_func_end ov66_0223211C

	thumb_func_start ov66_02232258
ov66_02232258: ; 0x02232258
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	ldr r2, [r5, #4]
	add r0, r4, #0
	mov r1, #0
	add r6, r3, #0
	bl sub_0200C0B0
	ldr r0, _022322B4 ; =0x020E4C44
	mov r1, #1
	ldrb r0, [r0]
	str r1, [sp]
	mov r3, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	bl sub_0200B48C
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r5, [r5, #8]
	mov r2, #8
	add r0, r4, #0
	mov r1, #2
	sub r2, r2, r5
	bl sub_0200B60C
	add r0, r6, #0
	mov r1, #9
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022322B4: .word 0x020E4C44
	thumb_func_end ov66_02232258

	thumb_func_start ov66_022322B8
ov66_022322B8: ; 0x022322B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r1, [r6, #4]
	add r7, r2, #0
	mov r4, #0
	str r3, [sp, #8]
	cmp r1, #0
	bls _022322F0
	ldr r0, _0223232C ; =0x020E4C44
	add r5, r6, #0
	ldrb r0, [r0]
	str r0, [sp, #0xc]
_022322D2:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r7, #0
	mov r3, #0
	bl sub_0200B48C
	ldr r1, [r6, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r1
	blo _022322D2
_022322F0:
	ldrb r0, [r6]
	cmp r0, #4
	bne _02232300
	add r0, r7, #0
	mov r2, #5
	bl sub_0200C0B0
	b _02232308
_02232300:
	add r0, r7, #0
	mov r2, #6
	bl sub_0200C0B0
_02232308:
	ldr r2, [r6, #4]
	mov r1, #0xe
	ldr r0, [sp, #8]
	sub r1, r1, r2
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223232C: .word 0x020E4C44
	thumb_func_end ov66_022322B8

	thumb_func_start ov66_02232330
ov66_02232330: ; 0x02232330
	push {r3, r4, r5, lr}
	ldr r0, [r0, #8]
	add r4, r2, #0
	add r5, r3, #0
	cmp r0, #4
	bhi _02232380
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02232348: ; jump table
	.short _02232352 - _02232348 - 2 ; case 0
	.short _02232360 - _02232348 - 2 ; case 1
	.short _0223236E - _02232348 - 2 ; case 2
	.short _02232380 - _02232348 - 2 ; case 3
	.short _0223237C - _02232348 - 2 ; case 4
_02232352:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0200C0E8
	mov r1, #0xf
	b _02232384
_02232360:
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl sub_0200C0E8
	mov r1, #0x14
	b _02232384
_0223236E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl sub_0200C0E8
	mov r1, #0x10
	b _02232384
_0223237C:
	mov r1, #0x11
	b _02232384
_02232380:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02232384:
	add r0, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02232330

	thumb_func_start ov66_022323A0
ov66_022323A0: ; 0x022323A0
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0x14
	blo _022323AC
	mov r0, #0
	pop {r3, pc}
_022323AC:
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022323B6
	mov r0, #0
	pop {r3, pc}
_022323B6:
	ldr r2, [sp, #8]
	add r0, r3, #0
	mov r1, #0x15
	bl sub_0200B1B8
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov66_022323A0

	thumb_func_start ov66_022323C4
ov66_022323C4: ; 0x022323C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	add r7, r2, #0
	str r3, [sp, #8]
	bl ov66_022324D0
	cmp r0, #0
	bne _022323E0
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022323E0:
	ldr r2, [r6, #4]
	add r0, r7, #0
	mov r1, #0
	bl sub_0200C0B0
	ldr r1, [r6, #8]
	mov r4, #0
	cmp r1, #0
	bls _02232418
	ldr r0, _02232450 ; =0x020E4C44
	add r5, r6, #0
	ldrb r0, [r0]
	str r0, [sp, #0xc]
_022323FA:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r4, #1
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r7, #0
	mov r3, #0
	bl sub_0200B48C
	ldr r1, [r6, #8]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r1
	blo _022323FA
_02232418:
	ldr r0, [r6, #4]
	cmp r0, #1
	bhi _0223242C
	lsl r2, r1, #1
	ldr r1, _02232454 ; =0x02258ABA
	ldr r0, [sp, #8]
	ldrh r1, [r1, r2]
	bl sub_0200B1EC
	b _02232438
_0223242C:
	lsl r2, r1, #1
	ldr r1, _02232458 ; =0x02258AC2
	ldr r0, [sp, #8]
	ldrh r1, [r1, r2]
	bl sub_0200B1EC
_02232438:
	add r4, r0, #0
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02232450: .word 0x020E4C44
_02232454: .word 0x02258ABA
_02232458: .word 0x02258AC2
	thumb_func_end ov66_022323C4

	thumb_func_start ov66_0223245C
ov66_0223245C: ; 0x0223245C
	cmp r1, #2
	blo _02232464
	mov r0, #0x14
	bx lr
_02232464:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	thumb_func_end ov66_0223245C

	thumb_func_start ov66_0223246C
ov66_0223246C: ; 0x0223246C
	cmp r1, #2
	blo _02232474
	mov r0, #0x14
	bx lr
_02232474:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	thumb_func_end ov66_0223246C

	thumb_func_start ov66_0223247C
ov66_0223247C: ; 0x0223247C
	ldr r2, [r0, #8]
	cmp r2, r1
	bhi _02232486
	mov r0, #0x14
	bx lr
_02232486:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0223247C

	thumb_func_start ov66_02232490
ov66_02232490: ; 0x02232490
	cmp r1, #1
	blo _02232498
	mov r0, #0x14
	bx lr
_02232498:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	thumb_func_end ov66_02232490

	thumb_func_start ov66_022324A0
ov66_022324A0: ; 0x022324A0
	ldr r2, [r0, #4]
	cmp r2, r1
	bhi _022324AA
	mov r0, #0x14
	bx lr
_022324AA:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022324A0

	thumb_func_start ov66_022324B4
ov66_022324B4: ; 0x022324B4
	mov r0, #0x14
	bx lr
	thumb_func_end ov66_022324B4

	thumb_func_start ov66_022324B8
ov66_022324B8: ; 0x022324B8
	mov r0, #0x14
	bx lr
	thumb_func_end ov66_022324B8

	thumb_func_start ov66_022324BC
ov66_022324BC: ; 0x022324BC
	ldr r2, [r0, #8]
	cmp r2, r1
	bhi _022324C6
	mov r0, #0x14
	bx lr
_022324C6:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022324BC

	thumb_func_start ov66_022324D0
ov66_022324D0: ; 0x022324D0
	cmp r0, #1
	bhi _022324E0
	cmp r1, #1
	blo _022324DC
	cmp r1, #4
	bls _022324EC
_022324DC:
	mov r0, #0
	bx lr
_022324E0:
	cmp r1, #2
	blo _022324E8
	cmp r1, #4
	bls _022324EC
_022324E8:
	mov r0, #0
	bx lr
_022324EC:
	mov r0, #1
	bx lr
	thumb_func_end ov66_022324D0

	thumb_func_start ov66_022324F0
ov66_022324F0: ; 0x022324F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02232590 ; =0x0225B6C0
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _02232506
	bl sub_02022974
_02232506:
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r7, r0
	blo _02232512
	bl sub_02022974
_02232512:
	ldr r1, _02232594 ; =0x00000988
	add r0, r5, #0
	bl sub_02018144
	ldr r1, _02232590 ; =0x0225B6C0
	ldr r2, _02232594 ; =0x00000988
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020D5124
	ldr r0, _02232590 ; =0x0225B6C0
	ldr r0, [r0, #0]
	str r6, [r0, #0]
	add r0, r6, #0
	bl sub_0202B370
	ldr r1, _02232590 ; =0x0225B6C0
	ldr r1, [r1, #0]
	str r0, [r1, #4]
	add r0, r6, #0
	bl sub_0202C878
	ldr r6, _02232590 ; =0x0225B6C0
	ldr r1, [r6, #0]
	str r0, [r1, #8]
	ldr r3, [r6, #0]
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r7, #0
	str r0, [r2, #0]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	str r0, [r3, #0x20]
	ldr r0, [r6, #0]
	bl ov66_02233758
	add r0, r6, #0
	ldr r0, [r0, #0]
	mov r1, #0x14
	mov r2, #8
	add r3, r5, #0
	bl ov66_022338C8
	add r0, r6, #0
	ldr r0, [r0, #0]
	bl ov66_02234054
	add r0, r6, #0
	ldr r1, [r0, #0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0x80
	add r2, r5, #0
	bl ov66_022342F4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232590: .word 0x0225B6C0
_02232594: .word 0x00000988
	thumb_func_end ov66_022324F0

	thumb_func_start ov66_02232598
ov66_02232598: ; 0x02232598
	push {r3, lr}
	ldr r0, _022325D4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022325A6
	bl sub_02022974
_022325A6:
	ldr r0, _022325D4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov66_0223430C
	ldr r0, _022325D4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	bl ov66_02233920
	ldr r0, _022325D4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	bl ov66_02233788
	ldr r0, _022325D4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _022325D4 ; =0x0225B6C0
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_022325D4: .word 0x0225B6C0
	thumb_func_end ov66_02232598

	thumb_func_start ov66_022325D8
ov66_022325D8: ; 0x022325D8
	push {r3, lr}
	ldr r0, _022326D4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022325E6
	mov r0, #0
	pop {r3, pc}
_022325E6:
	blx ov66_02235428
	cmp r0, #0xa
	bhi _02232654
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022325FA: ; jump table
	.short _02232610 - _022325FA - 2 ; case 0
	.short _0223261E - _022325FA - 2 ; case 1
	.short _0223261E - _022325FA - 2 ; case 2
	.short _0223261E - _022325FA - 2 ; case 3
	.short _0223261E - _022325FA - 2 ; case 4
	.short _0223261E - _022325FA - 2 ; case 5
	.short _0223261E - _022325FA - 2 ; case 6
	.short _0223261E - _022325FA - 2 ; case 7
	.short _0223262C - _022325FA - 2 ; case 8
	.short _0223263A - _022325FA - 2 ; case 9
	.short _02232648 - _022325FA - 2 ; case 10
_02232610:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _02232654
_0223261E:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _02232654
_0223262C:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #2
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _02232654
_0223263A:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #3
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _02232654
_02232648:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #4
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
_02232654:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r1, #0x4b
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #2
	bne _022326CC
	bl ov66_022341F4
	ldr r0, _022326D4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r1, r0
	blx ov66_02235FD8
	blx ov66_022360F4
	cmp r0, #3
	bhi _022326CC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02232688: ; jump table
	.short _02232690 - _02232688 - 2 ; case 0
	.short _022326A4 - _02232688 - 2 ; case 1
	.short _022326B0 - _02232688 - 2 ; case 2
	.short _022326C2 - _02232688 - 2 ; case 3
_02232690:
	ldr r1, _022326D4 ; =0x0225B6C0
	ldr r0, _022326D8 ; =0x0000012E
	ldr r2, [r1, #0]
	mov r3, #0
	strb r3, [r2, r0]
	ldr r1, [r1, #0]
	mov r2, #4
	sub r0, r0, #1
	strb r2, [r1, r0]
	b _022326CC
_022326A4:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _022326D8 ; =0x0000012E
	strb r2, [r1, r0]
	b _022326CC
_022326B0:
	ldr r0, _022326D4 ; =0x0225B6C0
	ldr r2, [r0, #0]
	ldr r0, _022326D8 ; =0x0000012E
	ldrb r1, [r2, r0]
	cmp r1, #3
	beq _022326CC
	mov r1, #2
	strb r1, [r2, r0]
	b _022326CC
_022326C2:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #4
	ldr r1, [r0, #0]
	ldr r0, _022326D8 ; =0x0000012E
	strb r2, [r1, r0]
_022326CC:
	bl ov66_0223287C
	pop {r3, pc}
	nop
_022326D4: .word 0x0225B6C0
_022326D8: .word 0x0000012E
	thumb_func_end ov66_022325D8

	thumb_func_start ov66_022326DC
ov66_022326DC: ; 0x022326DC
	push {r3, lr}
	ldr r0, _02232704 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022326EA
	bl sub_02022974
_022326EA:
	ldr r0, _02232704 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02232708 ; =0x00000984
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022326FC
	blx ov66_022370FC
	pop {r3, pc}
_022326FC:
	blx ov66_02237134
	pop {r3, pc}
	nop
_02232704: .word 0x0225B6C0
_02232708: .word 0x00000984
	thumb_func_end ov66_022326DC

	thumb_func_start ov66_0223270C
ov66_0223270C: ; 0x0223270C
	ldr r3, _02232710 ; =ov66_02237118
	bx r3
	; .align 2, 0
_02232710: .word ov66_02237118
	thumb_func_end ov66_0223270C

	thumb_func_start ov66_02232714
ov66_02232714: ; 0x02232714
	ldr r3, _0223271C ; =ov66_02232720
	mov r1, #0
	bx r3
	nop
_0223271C: .word ov66_02232720
	thumb_func_end ov66_02232714

	thumb_func_start ov66_02232720
ov66_02232720: ; 0x02232720
	push {r3, r4, r5, lr}
	sub sp, #0x50
	add r5, r0, #0
	ldr r0, _022327B0 ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232734
	bl sub_02022974
_02232734:
	ldr r0, _022327B4 ; =ov66_02233B54
	str r0, [sp, #0xc]
	ldr r0, _022327B8 ; =ov66_02233BF0
	str r0, [sp, #0x10]
	ldr r0, _022327BC ; =ov66_02233C60
	str r0, [sp, #0x14]
	ldr r0, _022327C0 ; =ov66_02233CE4
	str r0, [sp, #0x18]
	ldr r0, _022327C4 ; =ov66_02233CE8
	str r0, [sp, #0x1c]
	ldr r0, _022327C8 ; =ov66_02233D94
	str r0, [sp, #0x20]
	ldr r0, _022327CC ; =ov66_02233DD4
	str r0, [sp, #0x24]
	ldr r0, _022327D0 ; =ov66_02233E50
	str r0, [sp, #0x28]
	ldr r0, _022327D4 ; =ov66_02233E8C
	str r0, [sp, #0x2c]
	ldr r0, _022327D8 ; =ov66_02233F18
	str r0, [sp, #0x30]
	ldr r0, _022327DC ; =ov66_02233F60
	str r0, [sp, #0x34]
	ldr r0, _022327E0 ; =ov66_02233F74
	str r0, [sp, #0x38]
	ldr r0, _022327E4 ; =ov66_02233FA0
	str r0, [sp, #0x3c]
	ldr r0, _022327E8 ; =ov66_02233FC0
	str r0, [sp, #0x40]
	ldr r0, _022327EC ; =ov66_02233FEC
	str r0, [sp, #0x44]
	ldr r0, _022327F0 ; =ov66_02234018
	str r0, [sp, #0x48]
	ldr r0, _022327F4 ; =ov66_02234040
	str r0, [sp, #0x4c]
	ldr r0, _022327B0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_0202AD28
	str r0, [sp]
	ldr r0, _022327B0 ; =0x0225B6C0
	str r5, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, _022327F8 ; =0x02258E14
	ldr r0, [r0, #0x28]
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, _022327FC ; =0x02258E04
	add r3, sp, #0xc
	blx ov66_02234FD4
	ldr r2, _022327B0 ; =0x0225B6C0
	ldr r1, _02232800 ; =0x00000984
	ldr r3, [r2, #0]
	str r0, [r3, r1]
	ldr r0, [r2, #0]
	ldr r0, [r0, r1]
	bl ov66_0223365C
	add sp, #0x50
	pop {r3, r4, r5, pc}
	nop
_022327B0: .word 0x0225B6C0
_022327B4: .word ov66_02233B54
_022327B8: .word ov66_02233BF0
_022327BC: .word ov66_02233C60
_022327C0: .word ov66_02233CE4
_022327C4: .word ov66_02233CE8
_022327C8: .word ov66_02233D94
_022327CC: .word ov66_02233DD4
_022327D0: .word ov66_02233E50
_022327D4: .word ov66_02233E8C
_022327D8: .word ov66_02233F18
_022327DC: .word ov66_02233F60
_022327E0: .word ov66_02233F74
_022327E4: .word ov66_02233FA0
_022327E8: .word ov66_02233FC0
_022327EC: .word ov66_02233FEC
_022327F0: .word ov66_02234018
_022327F4: .word ov66_02234040
_022327F8: .word 0x02258E14
_022327FC: .word 0x02258E04
_02232800: .word 0x00000984
	thumb_func_end ov66_02232720

	thumb_func_start ov66_02232804
ov66_02232804: ; 0x02232804
	push {r3, lr}
	ldr r0, _02232828 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232812
	bl sub_02022974
_02232812:
	ldr r0, _02232828 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _02232824
	mov r0, #1
	pop {r3, pc}
_02232824:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02232828: .word 0x0225B6C0
	thumb_func_end ov66_02232804

	thumb_func_start ov66_0223282C
ov66_0223282C: ; 0x0223282C
	push {r3, lr}
	ldr r0, _02232850 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223283A
	bl sub_02022974
_0223283A:
	bl ov66_0223369C
	blx ov66_022353A4
	bl ov66_0223365C
	cmp r0, #0
	bne _0223284E
	bl sub_02022974
_0223284E:
	pop {r3, pc}
	; .align 2, 0
_02232850: .word 0x0225B6C0
	thumb_func_end ov66_0223282C

	thumb_func_start ov66_02232854
ov66_02232854: ; 0x02232854
	push {r3, lr}
	ldr r0, _02232878 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232862
	bl sub_02022974
_02232862:
	ldr r0, _02232878 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02232874
	mov r0, #1
	pop {r3, pc}
_02232874:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02232878: .word 0x0225B6C0
	thumb_func_end ov66_02232854

	thumb_func_start ov66_0223287C
ov66_0223287C: ; 0x0223287C
	push {r3, lr}
	ldr r0, _022328C0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223288A
	bl sub_02022974
_0223288A:
	ldr r0, _022328C0 ; =0x0225B6C0
	ldr r1, _022328C4 ; =0x0000012D
	ldr r0, [r0, #0]
	ldrb r2, [r0, r1]
	cmp r2, #4
	beq _022328A2
	add r1, r1, #1
	ldrb r1, [r0, r1]
	cmp r1, #4
	bne _022328A2
	mov r0, #4
	pop {r3, pc}
_022328A2:
	ldr r2, _022328C8 ; =0x00000133
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _022328AE
	mov r0, #4
	pop {r3, pc}
_022328AE:
	sub r1, r2, #1
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _022328BA
	mov r0, #4
	pop {r3, pc}
_022328BA:
	sub r1, r2, #7
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_022328C0: .word 0x0225B6C0
_022328C4: .word 0x0000012D
_022328C8: .word 0x00000133
	thumb_func_end ov66_0223287C

	thumb_func_start ov66_022328CC
ov66_022328CC: ; 0x022328CC
	push {r3, lr}
	ldr r0, _022328E8 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022328DA
	bl sub_02022974
_022328DA:
	ldr r0, _022328E8 ; =0x0225B6C0
	ldr r1, _022328EC ; =0x00000131
	ldr r3, [r0, #0]
	mov r2, #0
	ldrb r0, [r3, r1]
	strb r2, [r3, r1]
	pop {r3, pc}
	; .align 2, 0
_022328E8: .word 0x0225B6C0
_022328EC: .word 0x00000131
	thumb_func_end ov66_022328CC

	thumb_func_start ov66_022328F0
ov66_022328F0: ; 0x022328F0
	push {r3, lr}
	ldr r0, _02232904 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022328FE
	bl sub_02022974
_022328FE:
	blx ov66_02236494
	pop {r3, pc}
	; .align 2, 0
_02232904: .word 0x0225B6C0
	thumb_func_end ov66_022328F0

	thumb_func_start ov66_02232908
ov66_02232908: ; 0x02232908
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232938 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232918
	bl sub_02022974
_02232918:
	blx ov66_02236494
	add r1, r0, #0
	ldr r0, _02232938 ; =0x0225B6C0
	add r2, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223379C
	ldr r1, _02232938 ; =0x0225B6C0
	add r0, r4, #0
	ldr r1, [r1, #0]
	mov r2, #0
	ldr r1, [r1, #0x28]
	blx ov66_022364C4
	pop {r4, pc}
	; .align 2, 0
_02232938: .word 0x0225B6C0
	thumb_func_end ov66_02232908

	thumb_func_start ov66_0223293C
ov66_0223293C: ; 0x0223293C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232958 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223294C
	bl sub_02022974
_0223294C:
	ldr r0, _02232958 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_022337E8
	pop {r4, pc}
	; .align 2, 0
_02232958: .word 0x0225B6C0
	thumb_func_end ov66_0223293C

	thumb_func_start ov66_0223295C
ov66_0223295C: ; 0x0223295C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02232984 ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223296E
	bl sub_02022974
_0223296E:
	ldr r0, _02232984 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl ov66_02233864
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	str r1, [r4, #0]
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	nop
_02232984: .word 0x0225B6C0
	thumb_func_end ov66_0223295C

	thumb_func_start ov66_02232988
ov66_02232988: ; 0x02232988
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	lsr r6, r0, #4
	add r5, r0, #0
	ldr r0, _022329E0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022329A2
	bl sub_02022974
_022329A2:
	mov r4, #0
_022329A4:
	ldr r0, _022329E0 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r2, #0
	bl ov66_02233A6C
	mov r1, #0
	add r7, r0, #0
	mvn r1, r1
	cmp r7, r1
	beq _022329D4
	add r1, sp, #4
	bl ov66_0223295C
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	sub r0, r2, r5
	mov ip, r1
	mov r0, ip
	sbc r0, r6
	bge _022329D4
	add r5, r2, #0
	add r6, r1, #0
	str r7, [sp]
_022329D4:
	add r4, r4, #1
	cmp r4, #0x14
	blt _022329A4
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022329E0: .word 0x0225B6C0
	thumb_func_end ov66_02232988

	thumb_func_start ov66_022329E4
ov66_022329E4: ; 0x022329E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	lsr r7, r0, #4
	add r6, r0, #0
	ldr r0, _02232A44 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232A00
	bl sub_02022974
_02232A00:
	mov r4, #0
_02232A02:
	ldr r0, _02232A44 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r2, #0
	bl ov66_02233A6C
	mov r1, #0
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	beq _02232A38
	ldr r1, [sp]
	cmp r5, r1
	beq _02232A38
	add r1, sp, #8
	bl ov66_0223295C
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	sub r0, r2, r6
	mov ip, r1
	mov r0, ip
	sbc r0, r7
	bge _02232A38
	add r6, r2, #0
	add r7, r1, #0
	str r5, [sp, #4]
_02232A38:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02232A02
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02232A44: .word 0x0225B6C0
	thumb_func_end ov66_022329E4

	thumb_func_start ov66_02232A48
ov66_02232A48: ; 0x02232A48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232A7C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232A58
	bl sub_02022974
_02232A58:
	add r0, r4, #0
	bl ov66_022336C0
	blx ov66_02235BA0
	bl ov66_0223365C
	cmp r0, #1
	bne _02232A7A
	ldr r2, _02232A7C ; =0x0225B6C0
	ldr r1, _02232A80 ; =0x0000012D
	ldr r3, [r2, #0]
	strb r4, [r3, r1]
	ldr r2, [r2, #0]
	mov r3, #0
	add r1, r1, #2
	strb r3, [r2, r1]
_02232A7A:
	pop {r4, pc}
	; .align 2, 0
_02232A7C: .word 0x0225B6C0
_02232A80: .word 0x0000012D
	thumb_func_end ov66_02232A48

	thumb_func_start ov66_02232A84
ov66_02232A84: ; 0x02232A84
	push {r3, lr}
	ldr r0, _02232A9C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232A92
	bl sub_02022974
_02232A92:
	ldr r0, _02232A9C ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02232AA0 ; =0x0000012F
	ldrb r0, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_02232A9C: .word 0x0225B6C0
_02232AA0: .word 0x0000012F
	thumb_func_end ov66_02232A84

	thumb_func_start ov66_02232AA4
ov66_02232AA4: ; 0x02232AA4
	push {r3, lr}
	ldr r0, _02232ACC ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232AB2
	bl sub_02022974
_02232AB2:
	blx ov66_02235DD4
	bl ov66_0223365C
	cmp r0, #1
	bne _02232AC8
	ldr r1, _02232ACC ; =0x0225B6C0
	mov r3, #3
	ldr r2, [r1, #0]
	ldr r1, _02232AD0 ; =0x0000012E
	strb r3, [r2, r1]
_02232AC8:
	pop {r3, pc}
	nop
_02232ACC: .word 0x0225B6C0
_02232AD0: .word 0x0000012E
	thumb_func_end ov66_02232AA4

	thumb_func_start ov66_02232AD4
ov66_02232AD4: ; 0x02232AD4
	push {r3, lr}
	ldr r0, _02232AF8 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232AE2
	bl sub_02022974
_02232AE2:
	ldr r0, _02232AF8 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02232AFC ; =0x0000012E
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02232AF2
	mov r0, #1
	pop {r3, pc}
_02232AF2:
	mov r0, #0
	pop {r3, pc}
	nop
_02232AF8: .word 0x0225B6C0
_02232AFC: .word 0x0000012E
	thumb_func_end ov66_02232AD4

	thumb_func_start ov66_02232B00
ov66_02232B00: ; 0x02232B00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232B1C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232B10
	bl sub_02022974
_02232B10:
	ldr r0, _02232B1C ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_02233AE8
	pop {r4, pc}
	; .align 2, 0
_02232B1C: .word 0x0225B6C0
	thumb_func_end ov66_02232B00

	thumb_func_start ov66_02232B20
ov66_02232B20: ; 0x02232B20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232B48 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232B30
	bl sub_02022974
_02232B30:
	ldr r1, _02232B48 ; =0x0225B6C0
	mov r0, #0x47
	ldr r2, [r1, #0]
	lsl r0, r0, #2
	ldrsh r2, [r2, r0]
	add r0, r0, #4
	str r2, [r4, #0]
	ldr r1, [r1, #0]
	ldr r0, [r1, r0]
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_02232B48: .word 0x0225B6C0
	thumb_func_end ov66_02232B20

	thumb_func_start ov66_02232B4C
ov66_02232B4C: ; 0x02232B4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232B74 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232B5C
	bl sub_02022974
_02232B5C:
	ldr r1, _02232B74 ; =0x0225B6C0
	mov r0, #0x49
	ldr r2, [r1, #0]
	lsl r0, r0, #2
	ldrsh r2, [r2, r0]
	add r0, r0, #4
	str r2, [r4, #0]
	ldr r1, [r1, #0]
	ldr r0, [r1, r0]
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_02232B74: .word 0x0225B6C0
	thumb_func_end ov66_02232B4C

	thumb_func_start ov66_02232B78
ov66_02232B78: ; 0x02232B78
	add r1, r0, #0
	ldr r0, _02232B84 ; =0x0225B6C0
	ldr r3, _02232B88 ; =ov66_02233A34
	ldr r0, [r0, #0]
	mov r2, #0
	bx r3
	; .align 2, 0
_02232B84: .word 0x0225B6C0
_02232B88: .word ov66_02233A34
	thumb_func_end ov66_02232B78

	thumb_func_start ov66_02232B8C
ov66_02232B8C: ; 0x02232B8C
	add r1, r0, #0
	ldr r0, _02232B98 ; =0x0225B6C0
	ldr r3, _02232B9C ; =ov66_02233A34
	ldr r0, [r0, #0]
	mov r2, #1
	bx r3
	; .align 2, 0
_02232B98: .word 0x0225B6C0
_02232B9C: .word ov66_02233A34
	thumb_func_end ov66_02232B8C

	thumb_func_start ov66_02232BA0
ov66_02232BA0: ; 0x02232BA0
	add r1, r0, #0
	ldr r0, _02232BAC ; =0x0225B6C0
	ldr r3, _02232BB0 ; =ov66_02233A6C
	ldr r0, [r0, #0]
	mov r2, #0
	bx r3
	; .align 2, 0
_02232BAC: .word 0x0225B6C0
_02232BB0: .word ov66_02233A6C
	thumb_func_end ov66_02232BA0

	thumb_func_start ov66_02232BB4
ov66_02232BB4: ; 0x02232BB4
	add r1, r0, #0
	ldr r0, _02232BC0 ; =0x0225B6C0
	ldr r3, _02232BC4 ; =ov66_02233A6C
	ldr r0, [r0, #0]
	mov r2, #1
	bx r3
	; .align 2, 0
_02232BC0: .word 0x0225B6C0
_02232BC4: .word ov66_02233A6C
	thumb_func_end ov66_02232BB4

	thumb_func_start ov66_02232BC8
ov66_02232BC8: ; 0x02232BC8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232BE8 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232BD8
	bl sub_02022974
_02232BD8:
	ldr r0, _02232BE8 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r1, r0
	ldmia r0!, {r2, r3}
	stmia r4!, {r2, r3}
	pop {r4, pc}
	; .align 2, 0
_02232BE8: .word 0x0225B6C0
	thumb_func_end ov66_02232BC8

	thumb_func_start ov66_02232BEC
ov66_02232BEC: ; 0x02232BEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02232C88 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232BFC
	bl sub_02022974
_02232BFC:
	ldr r1, _02232C88 ; =0x0225B6C0
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x4b
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #2
	beq _02232C12
	cmp r1, #4
	beq _02232C12
	mov r0, #0
_02232C12:
	cmp r0, #0
	bne _02232C1A
	bl sub_02022974
_02232C1A:
	cmp r5, #8
	blt _02232C22
	bl sub_02022974
_02232C22:
	ldr r0, _02232C88 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r1, r0
	cmp r5, #7
	bhi _02232C84
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02232C3C: ; jump table
	.short _02232C4C - _02232C3C - 2 ; case 0
	.short _02232C50 - _02232C3C - 2 ; case 1
	.short _02232C54 - _02232C3C - 2 ; case 2
	.short _02232C58 - _02232C3C - 2 ; case 3
	.short _02232C5C - _02232C3C - 2 ; case 4
	.short _02232C68 - _02232C3C - 2 ; case 5
	.short _02232C72 - _02232C3C - 2 ; case 6
	.short _02232C7C - _02232C3C - 2 ; case 7
_02232C4C:
	ldr r4, [r0, #0]
	b _02232C84
_02232C50:
	ldr r4, [r0, #4]
	b _02232C84
_02232C54:
	ldrb r4, [r0, #0xc]
	b _02232C84
_02232C58:
	ldrb r4, [r0, #0xd]
	b _02232C84
_02232C5C:
	ldr r0, [r0, #8]
	mov r4, #1
	tst r0, r4
	bne _02232C84
	mov r4, #0
	b _02232C84
_02232C68:
	mov r1, #0x13
	bl ov66_022342CC
	add r4, r0, #0
	b _02232C84
_02232C72:
	mov r1, #0x10
	bl ov66_022342CC
	add r4, r0, #0
	b _02232C84
_02232C7C:
	mov r1, #0x11
	bl ov66_022342CC
	add r4, r0, #0
_02232C84:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02232C88: .word 0x0225B6C0
	thumb_func_end ov66_02232BEC

	thumb_func_start ov66_02232C8C
ov66_02232C8C: ; 0x02232C8C
	push {r3, lr}
	ldr r0, _02232CB4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232C9A
	bl sub_02022974
_02232C9A:
	ldr r0, _02232CB4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	bl ov66_022336C4
	cmp r0, #0
	beq _02232CB2
	ldr r1, _02232CB4 ; =0x0225B6C0
	mov r3, #1
	ldr r2, [r1, #0]
	mov r1, #0x13
	lsl r1, r1, #4
	strb r3, [r2, r1]
_02232CB2:
	pop {r3, pc}
	; .align 2, 0
_02232CB4: .word 0x0225B6C0
	thumb_func_end ov66_02232C8C

	thumb_func_start ov66_02232CB8
ov66_02232CB8: ; 0x02232CB8
	ldr r0, _02232CD0 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02232CCA
	mov r0, #1
	bx lr
_02232CCA:
	mov r0, #0
	bx lr
	nop
_02232CD0: .word 0x0225B6C0
	thumb_func_end ov66_02232CB8

	thumb_func_start ov66_02232CD4
ov66_02232CD4: ; 0x02232CD4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232CFC ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232CE4
	bl sub_02022974
_02232CE4:
	cmp r4, #0x14
	blo _02232CEC
	bl sub_02022974
_02232CEC:
	ldr r0, _02232CFC ; =0x0225B6C0
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
_02232CFC: .word 0x0225B6C0
	thumb_func_end ov66_02232CD4

	thumb_func_start ov66_02232D00
ov66_02232D00: ; 0x02232D00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232D28 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232D10
	bl sub_02022974
_02232D10:
	cmp r4, #0x14
	blo _02232D18
	bl sub_02022974
_02232D18:
	ldr r0, _02232D28 ; =0x0225B6C0
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, _02232D2C ; =0x00000136
	ldrb r0, [r1, r0]
	pop {r4, pc}
	nop
_02232D28: .word 0x0225B6C0
_02232D2C: .word 0x00000136
	thumb_func_end ov66_02232D00

	thumb_func_start ov66_02232D30
ov66_02232D30: ; 0x02232D30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02232D5C ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	cmp r0, #0
	bne _02232D44
	bl sub_02022974
_02232D44:
	ldr r2, _02232D5C ; =0x0225B6C0
	mov r1, #0x61
	ldr r0, [r2, #0]
	lsl r1, r1, #2
	str r5, [r0, r1]
	ldr r3, [r2, #0]
	add r0, r1, #4
	str r4, [r3, r0]
	ldr r0, [r2, #0]
	add r1, #8
	str r6, [r0, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02232D5C: .word 0x0225B6C0
	thumb_func_end ov66_02232D30

	thumb_func_start ov66_02232D60
ov66_02232D60: ; 0x02232D60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02232D8C ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	cmp r0, #0
	bne _02232D74
	bl sub_02022974
_02232D74:
	ldr r2, _02232D8C ; =0x0225B6C0
	mov r1, #0x19
	ldr r0, [r2, #0]
	lsl r1, r1, #4
	str r5, [r0, r1]
	ldr r3, [r2, #0]
	add r0, r1, #4
	str r4, [r3, r0]
	ldr r0, [r2, #0]
	add r1, #8
	str r6, [r0, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02232D8C: .word 0x0225B6C0
	thumb_func_end ov66_02232D60

	thumb_func_start ov66_02232D90
ov66_02232D90: ; 0x02232D90
	push {r3, lr}
	ldr r0, _02232DC4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232D9E
	bl sub_02022974
_02232D9E:
	ldr r0, _02232DC4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x61
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
	pop {r3, pc}
	; .align 2, 0
_02232DC4: .word 0x0225B6C0
	thumb_func_end ov66_02232D90

	thumb_func_start ov66_02232DC8
ov66_02232DC8: ; 0x02232DC8
	push {r3, lr}
	ldr r0, _02232DFC ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232DD6
	bl sub_02022974
_02232DD6:
	ldr r0, _02232DFC ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x19
	lsl r0, r0, #4
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
	pop {r3, pc}
	; .align 2, 0
_02232DFC: .word 0x0225B6C0
	thumb_func_end ov66_02232DC8

	thumb_func_start ov66_02232E00
ov66_02232E00: ; 0x02232E00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02232E58 ; =0x0225B6C0
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r4, r2, #0
	cmp r0, #0
	bne _02232E14
	bl sub_02022974
_02232E14:
	ldr r0, _02232E58 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, r5
	bhi _02232E26
	bl sub_02022974
_02232E26:
	ldr r0, _02232E58 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	lsl r0, r5, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r4, r0
	beq _02232E3E
	bl sub_02022974
_02232E3E:
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	blx ov66_02236390
	bl ov66_0223365C
	cmp r0, #1
	beq _02232E56
	bl sub_02022974
_02232E56:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02232E58: .word 0x0225B6C0
	thumb_func_end ov66_02232E00

	thumb_func_start ov66_02232E5C
ov66_02232E5C: ; 0x02232E5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02232EB8 ; =0x0225B6C0
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _02232E72
	bl sub_02022974
_02232E72:
	ldr r0, _02232EB8 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, r5
	bhi _02232E84
	bl sub_02022974
_02232E84:
	ldr r0, _02232EB8 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	lsl r0, r5, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r4, r0
	beq _02232E9C
	bl sub_02022974
_02232E9C:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	blx ov66_02236414
	bl ov66_0223365C
	cmp r0, #1
	beq _02232EB4
	bl sub_02022974
_02232EB4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232EB8: .word 0x0225B6C0
	thumb_func_end ov66_02232E5C

	thumb_func_start ov66_02232EBC
ov66_02232EBC: ; 0x02232EBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02232F30 ; =0x0225B6C0
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r4, r2, #0
	cmp r0, #0
	bne _02232ED0
	bl sub_02022974
_02232ED0:
	ldr r0, _02232F30 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, r5
	bhi _02232EE2
	bl sub_02022974
_02232EE2:
	ldr r0, _02232F30 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	lsl r0, r5, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r4, r0
	beq _02232EFA
	bl sub_02022974
_02232EFA:
	ldr r0, _02232F30 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02232F34 ; =0x0000012D
	ldrb r0, [r1, r0]
	cmp r0, #4
	bne _02232F0A
	bl sub_02022974
_02232F0A:
	ldr r0, _02232F30 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02232F34 ; =0x0000012D
	ldrb r0, [r1, r0]
	bl ov66_022336C0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	blx ov66_02236390
	bl ov66_0223365C
	cmp r0, #1
	beq _02232F2C
	bl sub_02022974
_02232F2C:
	pop {r4, r5, r6, pc}
	nop
_02232F30: .word 0x0225B6C0
_02232F34: .word 0x0000012D
	thumb_func_end ov66_02232EBC

	thumb_func_start ov66_02232F38
ov66_02232F38: ; 0x02232F38
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _02233048 ; =0x0225B6C0
	add r6, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232F4A
	bl sub_02022974
_02232F4A:
	ldr r0, _02233048 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	cmp r0, #1
	bne _02232F5C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232F5C:
	ldr r2, _02233048 ; =0x0225B6C0
	ldr r1, _0223304C ; =0x0000069C
	ldr r0, [r2, #0]
	ldrh r3, [r0, r1]
	cmp r3, #3
	beq _02232F6C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232F6C:
	mov r3, #0x4c
	add r5, r4, #0
	mul r5, r3
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xe4
	str r4, [r3, r0]
	ldr r0, [r2, #0]
	mov r7, #1
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xe0
	str r6, [r3, r0]
	ldr r0, [r2, #0]
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xdc
	str r7, [r3, r0]
	ldr r0, [r2, #0]
	mov r7, #0
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xd8
	str r7, [r3, r0]
	ldr r2, [r2, #0]
	sub r1, #0xe4
	add r0, r2, r1
	mov r1, #0x67
	lsl r1, r1, #2
	add r0, r0, r5
	add r1, r2, r1
	bl ov66_02234288
	ldr r0, _02233048 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233050 ; =0x000005B8
	add r0, r1, r0
	add r0, r0, r5
	blx ov66_02236770
	bl ov66_0223365C
	cmp r0, #0
	bne _02232FC8
	bl sub_02022974
_02232FC8:
	ldr r1, _02233048 ; =0x0225B6C0
	mov r0, #0x4c
	add r5, r4, #0
	mul r5, r0
	ldr r1, [r1, #0]
	mov r0, #1
	add r2, r1, r5
	ldr r1, _02233054 ; =0x000005FC
	strh r0, [r2, r1]
	blx ov66_02236494
	ldr r1, _02233048 ; =0x0225B6C0
	mov r7, #6
	ldr r2, [r1, #0]
	lsl r7, r7, #8
	add r2, r2, r5
	str r0, [r2, r7]
	ldr r2, [r1, #0]
	ldr r0, _02233058 ; =0x00000708
	add r3, r2, r5
	sub r2, r7, #2
	strh r0, [r3, r2]
	add r2, r0, #0
	ldr r3, [r1, #0]
	sub r2, #0x6c
	strh r4, [r3, r2]
	add r2, r0, #0
	ldr r3, [r1, #0]
	mov r4, #1
	sub r2, #0x6a
	strb r4, [r3, r2]
	ldr r2, [r1, #0]
	mov r3, #0
	sub r0, #0x69
	strb r3, [r2, r0]
	ldr r4, [r1, #0]
	sub r0, r7, #2
	add r1, r4, r5
	ldrh r0, [r1, r0]
	mov r1, #0x1e
	bl sub_020E1F6C
	add r3, r0, #0
	add r0, r7, #0
	sub r0, #0x18
	add r0, r4, r0
	add r0, r0, r5
	add r1, r6, #0
	mov r2, #1
	bl ov4_021D116C
	ldr r1, _02233048 ; =0x0225B6C0
	ldr r0, _0223305C ; =ov66_022342A0
	ldr r1, [r1, #0]
	bl ov4_021D1150
	ldr r1, _02233048 ; =0x0225B6C0
	ldr r0, _02233060 ; =ov66_022342A4
	ldr r1, [r1, #0]
	bl ov4_021D1120
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233048: .word 0x0225B6C0
_0223304C: .word 0x0000069C
_02233050: .word 0x000005B8
_02233054: .word 0x000005FC
_02233058: .word 0x00000708
_0223305C: .word ov66_022342A0
_02233060: .word ov66_022342A4
	thumb_func_end ov66_02232F38

	thumb_func_start ov66_02233064
ov66_02233064: ; 0x02233064
	push {r4, lr}
	ldr r0, _022330C0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233072
	bl sub_02022974
_02233072:
	ldr r0, _022330C0 ; =0x0225B6C0
	ldr r2, [r0, #0]
	ldr r0, _022330C4 ; =0x0000069C
	ldrh r1, [r2, r0]
	cmp r1, #3
	beq _022330BC
	add r0, r0, #2
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _022330BC
	blx ov66_02236BB8
	bl ov66_0223365C
	cmp r0, #0
	bne _02233096
	bl sub_02022974
_02233096:
	ldr r0, _022330C0 ; =0x0225B6C0
	ldr r4, [r0, #0]
	blx ov66_02236494
	ldr r1, _022330C4 ; =0x0000069C
	add r2, r0, #0
	ldrh r1, [r4, r1]
	add r0, r4, #0
	bl ov66_022340F0
	cmp r0, #0
	bne _022330B2
	bl sub_02022974
_022330B2:
	ldr r0, _022330C0 ; =0x0225B6C0
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _022330C8 ; =0x0000069E
	strb r2, [r1, r0]
_022330BC:
	pop {r4, pc}
	nop
_022330C0: .word 0x0225B6C0
_022330C4: .word 0x0000069C
_022330C8: .word 0x0000069E
	thumb_func_end ov66_02233064

	thumb_func_start ov66_022330CC
ov66_022330CC: ; 0x022330CC
	push {r4, r5, r6, lr}
	ldr r0, _02233120 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022330DA
	bl sub_02022974
_022330DA:
	ldr r4, _02233120 ; =0x0225B6C0
	ldr r3, _02233124 ; =0x0000069E
	ldr r1, [r4, #0]
	ldrb r0, [r1, r3]
	cmp r0, #0
	beq _0223311C
	sub r2, r3, #2
	ldrh r5, [r1, r2]
	mov r2, #0x4c
	mov r0, #1
	add r6, r5, #0
	mul r6, r2
	add r5, r1, r6
	add r1, r3, #0
	sub r1, #0xda
	str r0, [r5, r1]
	add r0, r3, #0
	ldr r1, [r4, #0]
	sub r0, #0xe6
	add r4, r1, r0
	sub r0, r3, #2
	ldrh r0, [r1, r0]
	add r1, r0, #0
	mul r1, r2
	add r0, r4, r1
	blx ov66_02236AC4
	bl ov66_0223365C
	cmp r0, #0
	bne _0223311C
	bl sub_02022974
_0223311C:
	pop {r4, r5, r6, pc}
	nop
_02233120: .word 0x0225B6C0
_02233124: .word 0x0000069E
	thumb_func_end ov66_022330CC

	thumb_func_start ov66_02233128
ov66_02233128: ; 0x02233128
	push {r3, lr}
	ldr r0, _0223315C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233136
	bl sub_02022974
_02233136:
	ldr r0, _0223315C ; =0x0225B6C0
	ldr r1, _02233160 ; =0x0000069C
	ldr r3, [r0, #0]
	ldrh r2, [r3, r1]
	cmp r2, #3
	bne _02233146
	mov r0, #0
	pop {r3, pc}
_02233146:
	mov r0, #0x4c
	mul r0, r2
	add r0, r3, r0
	sub r1, #0xd8
	ldr r0, [r0, r1]
	cmp r0, #1
	bne _02233158
	mov r0, #1
	pop {r3, pc}
_02233158:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0223315C: .word 0x0225B6C0
_02233160: .word 0x0000069C
	thumb_func_end ov66_02233128

	thumb_func_start ov66_02233164
ov66_02233164: ; 0x02233164
	push {r3, lr}
	ldr r0, _0223317C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233172
	bl sub_02022974
_02233172:
	ldr r0, _0223317C ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233180 ; =0x0000069F
	ldrb r0, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_0223317C: .word 0x0225B6C0
_02233180: .word 0x0000069F
	thumb_func_end ov66_02233164

	thumb_func_start ov66_02233184
ov66_02233184: ; 0x02233184
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022331A0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233194
	bl sub_02022974
_02233194:
	ldr r0, _022331A0 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	pop {r4, pc}
	; .align 2, 0
_022331A0: .word 0x0225B6C0
	thumb_func_end ov66_02233184

	thumb_func_start ov66_022331A4
ov66_022331A4: ; 0x022331A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022331DC ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022331B4
	bl sub_02022974
_022331B4:
	add r0, r4, #0
	bl ov66_02233184
	cmp r0, #0
	bne _022331C2
	mov r0, #0
	pop {r4, pc}
_022331C2:
	ldr r0, _022331DC ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x4c
	mul r0, r4
	add r1, r1, r0
	ldr r0, _022331E0 ; =0x000005C4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022331D8
	mov r0, #1
	pop {r4, pc}
_022331D8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022331DC: .word 0x0225B6C0
_022331E0: .word 0x000005C4
	thumb_func_end ov66_022331A4

	thumb_func_start ov66_022331E4
ov66_022331E4: ; 0x022331E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02233220 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022331F4
	bl sub_02022974
_022331F4:
	cmp r4, #3
	blt _022331FC
	bl sub_02022974
_022331FC:
	ldr r0, _02233220 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	cmp r0, #0
	bne _0223320E
	mov r0, #0
	pop {r4, pc}
_0223320E:
	ldr r0, _02233220 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_022341C0
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	sub r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_02233220: .word 0x0225B6C0
	thumb_func_end ov66_022331E4

	thumb_func_start ov66_02233224
ov66_02233224: ; 0x02233224
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223325C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233234
	bl sub_02022974
_02233234:
	cmp r4, #3
	blt _0223323C
	bl sub_02022974
_0223323C:
	ldr r0, _0223325C ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	cmp r0, #0
	bne _0223324E
	mov r0, #0
	pop {r4, pc}
_0223324E:
	ldr r0, _0223325C ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_022341C0
	ldr r0, [r0, #8]
	pop {r4, pc}
	; .align 2, 0
_0223325C: .word 0x0225B6C0
	thumb_func_end ov66_02233224

	thumb_func_start ov66_02233260
ov66_02233260: ; 0x02233260
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _022332E4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233270
	bl sub_02022974
_02233270:
	ldr r0, _022332E4 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	cmp r0, #0
	bne _02233282
	mov r0, #0
	pop {r4, r5, r6, pc}
_02233282:
	ldr r3, _022332E4 ; =0x0225B6C0
	ldr r2, _022332E8 ; =0x0000069C
	ldr r0, [r3, #0]
	ldrh r1, [r0, r2]
	cmp r1, #3
	beq _02233292
	mov r0, #0
	pop {r4, r5, r6, pc}
_02233292:
	mov r1, #0x4c
	add r4, r5, #0
	mul r4, r1
	add r1, r2, #0
	add r6, r0, r4
	sub r1, #0xd8
	ldr r1, [r6, r1]
	cmp r1, #1
	bne _022332A8
	mov r0, #0
	pop {r4, r5, r6, pc}
_022332A8:
	strh r5, [r0, r2]
	ldr r5, [r3, #0]
	sub r2, #0x9e
	add r0, r5, r4
	ldrh r0, [r0, r2]
	mov r1, #0x1e
	bl sub_020E1F6C
	ldr r1, _022332EC ; =0x000005E8
	add r3, r0, #0
	add r0, r5, r1
	add r2, r5, r4
	sub r1, #0x2c
	ldr r1, [r2, r1]
	add r0, r0, r4
	mov r2, #0
	bl ov4_021D116C
	ldr r1, _022332E4 ; =0x0225B6C0
	ldr r0, _022332F0 ; =ov66_022342A0
	ldr r1, [r1, #0]
	bl ov4_021D1150
	ldr r1, _022332E4 ; =0x0225B6C0
	ldr r0, _022332F4 ; =ov66_022342A4
	ldr r1, [r1, #0]
	bl ov4_021D1120
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022332E4: .word 0x0225B6C0
_022332E8: .word 0x0000069C
_022332EC: .word 0x000005E8
_022332F0: .word ov66_022342A0
_022332F4: .word ov66_022342A4
	thumb_func_end ov66_02233260

	thumb_func_start ov66_022332F8
ov66_022332F8: ; 0x022332F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02233334 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233308
	bl sub_02022974
_02233308:
	cmp r4, #3
	blt _02233310
	bl sub_02022974
_02233310:
	ldr r0, _02233334 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	cmp r0, #0
	bne _02233322
	ldr r0, _02233338 ; =0x00000708
	pop {r4, pc}
_02233322:
	ldr r0, _02233334 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x4c
	mul r0, r4
	add r1, r1, r0
	ldr r0, _0223333C ; =0x000005FE
	ldrh r0, [r1, r0]
	pop {r4, pc}
	nop
_02233334: .word 0x0225B6C0
_02233338: .word 0x00000708
_0223333C: .word 0x000005FE
	thumb_func_end ov66_022332F8

	thumb_func_start ov66_02233340
ov66_02233340: ; 0x02233340
	push {r3, lr}
	ldr r0, _0223336C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223334E
	bl sub_02022974
_0223334E:
	ldr r0, _0223336C ; =0x0225B6C0
	ldr r1, _02233370 ; =0x0000069C
	ldr r3, [r0, #0]
	ldrh r2, [r3, r1]
	cmp r2, #3
	bne _02233360
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_02233360:
	mov r0, #0x4c
	mul r0, r2
	add r0, r3, r0
	sub r1, #0x9c
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0223336C: .word 0x0225B6C0
_02233370: .word 0x0000069C
	thumb_func_end ov66_02233340

	thumb_func_start ov66_02233374
ov66_02233374: ; 0x02233374
	push {r3, lr}
	ldr r0, _0223338C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233382
	bl sub_02022974
_02233382:
	ldr r0, _0223338C ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233390 ; =0x0000069E
	ldrb r0, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_0223338C: .word 0x0225B6C0
_02233390: .word 0x0000069E
	thumb_func_end ov66_02233374

	thumb_func_start ov66_02233394
ov66_02233394: ; 0x02233394
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022333B8 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022333A4
	bl sub_02022974
_022333A4:
	ldr r0, _022333B8 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #0
	bl ov66_02234344
	pop {r4, pc}
	nop
_022333B8: .word 0x0225B6C0
	thumb_func_end ov66_02233394

	thumb_func_start ov66_022333BC
ov66_022333BC: ; 0x022333BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022333E0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022333CC
	bl sub_02022974
_022333CC:
	ldr r0, _022333E0 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #0
	bl ov66_0223436C
	pop {r4, pc}
	nop
_022333E0: .word 0x0225B6C0
	thumb_func_end ov66_022333BC

	thumb_func_start ov66_022333E4
ov66_022333E4: ; 0x022333E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02233430 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022333F4
	bl sub_02022974
_022333F4:
	cmp r4, #3
	blt _022333FC
	bl sub_02022974
_022333FC:
	ldr r0, _02233430 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _0223340E
	bl sub_02022974
_0223340E:
	add r0, r4, #0
	blx ov66_02236D74
	bl ov66_0223365C
	cmp r0, #1
	beq _02233420
	bl sub_02022974
_02233420:
	ldr r0, _02233430 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #6
	str r2, [r1, r0]
	pop {r4, pc}
	nop
_02233430: .word 0x0225B6C0
	thumb_func_end ov66_022333E4

	thumb_func_start ov66_02233434
ov66_02233434: ; 0x02233434
	push {r3, lr}
	ldr r0, _02233450 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233442
	bl sub_02022974
_02233442:
	ldr r0, _02233450 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	pop {r3, pc}
	nop
_02233450: .word 0x0225B6C0
	thumb_func_end ov66_02233434

	thumb_func_start ov66_02233454
ov66_02233454: ; 0x02233454
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233464
	bl sub_02022974
_02233464:
	cmp r4, #0xb
	blt _0223346C
	bl sub_02022974
_0223346C:
	cmp r4, #0xa
	bhi _0223350E
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223347C: ; jump table
	.short _02233492 - _0223347C - 2 ; case 0
	.short _0223349C - _0223347C - 2 ; case 1
	.short _022334A6 - _0223347C - 2 ; case 2
	.short _022334B0 - _0223347C - 2 ; case 3
	.short _022334C8 - _0223347C - 2 ; case 4
	.short _022334D2 - _0223347C - 2 ; case 5
	.short _022334DC - _0223347C - 2 ; case 6
	.short _022334E6 - _0223347C - 2 ; case 7
	.short _022334FE - _0223347C - 2 ; case 8
	.short _022334FE - _0223347C - 2 ; case 9
	.short _022334FE - _0223347C - 2 ; case 10
_02233492:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _0223351C ; =0x000006A8
	ldr r0, [r1, r0]
	pop {r4, pc}
_0223349C:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233520 ; =0x000006AC
	ldr r0, [r1, r0]
	pop {r4, pc}
_022334A6:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233524 ; =0x00000804
	ldr r0, [r1, r0]
	pop {r4, pc}
_022334B0:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233520 ; =0x000006AC
	ldr r1, [r1, r0]
	mov r0, #0xfa
	lsl r0, r0, #2
	cmp r1, r0
	blt _022334C4
	mov r0, #1
	pop {r4, pc}
_022334C4:
	mov r0, #0
	pop {r4, pc}
_022334C8:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233528 ; =0x00000808
	ldr r0, [r1, r0]
	pop {r4, pc}
_022334D2:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _0223352C ; =0x0000080C
	ldr r0, [r1, r0]
	pop {r4, pc}
_022334DC:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233530 ; =0x00000964
	ldr r0, [r1, r0]
	pop {r4, pc}
_022334E6:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _0223352C ; =0x0000080C
	ldr r1, [r1, r0]
	mov r0, #0xfa
	lsl r0, r0, #2
	cmp r1, r0
	blt _022334FA
	mov r0, #1
	pop {r4, pc}
_022334FA:
	mov r0, #0
	pop {r4, pc}
_022334FE:
	ldr r0, _02233518 ; =0x0225B6C0
	sub r4, #8
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, _02233534 ; =0x00000974
	ldr r0, [r1, r0]
	pop {r4, pc}
_0223350E:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	nop
_02233518: .word 0x0225B6C0
_0223351C: .word 0x000006A8
_02233520: .word 0x000006AC
_02233524: .word 0x00000804
_02233528: .word 0x00000808
_0223352C: .word 0x0000080C
_02233530: .word 0x00000964
_02233534: .word 0x00000974
	thumb_func_end ov66_02233454

	thumb_func_start ov66_02233538
ov66_02233538: ; 0x02233538
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022335B4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233548
	bl sub_02022974
_02233548:
	cmp r4, #8
	blt _02233550
	bl sub_02022974
_02233550:
	cmp r4, #7
	bhi _022335AC
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233560: ; jump table
	.short _02233570 - _02233560 - 2 ; case 0
	.short _0223357C - _02233560 - 2 ; case 1
	.short _0223357C - _02233560 - 2 ; case 2
	.short _0223357C - _02233560 - 2 ; case 3
	.short _0223358E - _02233560 - 2 ; case 4
	.short _0223359A - _02233560 - 2 ; case 5
	.short _0223359A - _02233560 - 2 ; case 6
	.short _0223359A - _02233560 - 2 ; case 7
_02233570:
	ldr r0, _022335B4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x6b
	lsl r0, r0, #4
	add r0, r1, r0
	pop {r4, pc}
_0223357C:
	ldr r0, _022335B4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _022335B8 ; =0x0000078C
	add r2, r1, r0
	sub r1, r4, #1
	mov r0, #0x24
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_0223358E:
	ldr r0, _022335B4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x81
	lsl r0, r0, #4
	add r0, r1, r0
	pop {r4, pc}
_0223359A:
	ldr r0, _022335B4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _022335BC ; =0x000008EC
	add r2, r1, r0
	sub r1, r4, #5
	mov r0, #0x24
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_022335AC:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022335B4: .word 0x0225B6C0
_022335B8: .word 0x0000078C
_022335BC: .word 0x000008EC
	thumb_func_end ov66_02233538

	thumb_func_start ov66_022335C0
ov66_022335C0: ; 0x022335C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02233610 ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022335D2
	bl sub_02022974
_022335D2:
	cmp r5, #2
	blt _022335DA
	bl sub_02022974
_022335DA:
	cmp r4, #0xc
	blo _022335E2
	bl sub_02022974
_022335E2:
	cmp r5, #2
	blt _022335EA
	mov r0, #0
	pop {r3, r4, r5, pc}
_022335EA:
	cmp r4, #0xc
	blo _022335F2
	mov r0, #0
	pop {r3, r4, r5, pc}
_022335F2:
	cmp r5, #0
	bne _02233602
	ldr r0, _02233610 ; =0x0225B6C0
	ldr r0, [r0, #0]
	add r1, r0, r4
	ldr r0, _02233614 ; =0x000007F8
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
_02233602:
	ldr r0, _02233610 ; =0x0225B6C0
	ldr r0, [r0, #0]
	add r1, r0, r4
	ldr r0, _02233618 ; =0x00000958
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	nop
_02233610: .word 0x0225B6C0
_02233614: .word 0x000007F8
_02233618: .word 0x00000958
	thumb_func_end ov66_022335C0

	thumb_func_start ov66_0223361C
ov66_0223361C: ; 0x0223361C
	push {r4, lr}
	ldr r0, _02233654 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223362A
	bl sub_02022974
_0223362A:
	mov r0, #0
	add r1, r0, #0
	bl ov4_021D1150
	mov r0, #0
	add r1, r0, #0
	bl ov4_021D1120
	ldr r2, _02233654 ; =0x0225B6C0
	ldr r0, _02233658 ; =0x0000069C
	ldr r1, [r2, #0]
	mov r3, #3
	strh r3, [r1, r0]
	add r1, r0, #2
	ldr r3, [r2, #0]
	mov r4, #0
	strb r4, [r3, r1]
	ldr r1, [r2, #0]
	add r0, r0, #3
	strb r4, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
_02233654: .word 0x0225B6C0
_02233658: .word 0x0000069C
	thumb_func_end ov66_0223361C

	thumb_func_start ov66_0223365C
ov66_0223365C: ; 0x0223365C
	push {r3, lr}
	mov r1, #1
	cmp r0, #7
	bhi _02233690
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233670: ; jump table
	.short _02233696 - _02233670 - 2 ; case 0
	.short _02233680 - _02233670 - 2 ; case 1
	.short _02233680 - _02233670 - 2 ; case 2
	.short _02233684 - _02233670 - 2 ; case 3
	.short _02233680 - _02233670 - 2 ; case 4
	.short _02233680 - _02233670 - 2 ; case 5
	.short _02233684 - _02233670 - 2 ; case 6
	.short _0223368C - _02233670 - 2 ; case 7
_02233680:
	mov r1, #0
	b _02233696
_02233684:
	bl sub_02022974
	mov r1, #0
	b _02233696
_0223368C:
	mov r1, #0
	b _02233696
_02233690:
	bl sub_02022974
	mov r1, #0
_02233696:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_0223365C

	thumb_func_start ov66_0223369C
ov66_0223369C: ; 0x0223369C
	ldr r1, _022336B0 ; =0x0225B6C0
	ldr r0, _022336B4 ; =0x00000133
	ldr r2, [r1, #0]
	mov r3, #0
	strb r3, [r2, r0]
	ldr r1, [r1, #0]
	sub r0, r0, #1
	strb r3, [r1, r0]
	bx lr
	nop
_022336B0: .word 0x0225B6C0
_022336B4: .word 0x00000133
	thumb_func_end ov66_0223369C

	thumb_func_start ov66_022336B8
ov66_022336B8: ; 0x022336B8
	sub r0, r0, #1
	bpl _022336BE
	mov r0, #4
_022336BE:
	bx lr
	thumb_func_end ov66_022336B8

	thumb_func_start ov66_022336C0
ov66_022336C0: ; 0x022336C0
	add r0, r0, #1
	bx lr
	thumb_func_end ov66_022336C0

	thumb_func_start ov66_022336C4
ov66_022336C4: ; 0x022336C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, [r0, #8]
	bl sub_0202C8C0
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	bl sub_0202C8C4
	cmp r4, #0
	bne _022336E4
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022336E4:
	ldr r7, _02233750 ; =0x00000136
	ldr r2, [sp, #4]
	mov r1, #0
	sub r3, r7, #2
	add r5, r7, #1
_022336EE:
	ldrb r6, [r2, r5]
	cmp r6, #0
	beq _0223370E
	ldrh r6, [r2, r3]
	cmp r4, r6
	bne _02233706
	ldrb r6, [r2, r7]
	cmp r0, r6
	bne _02233706
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02233706:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x14
	blt _022336EE
_0223370E:
	cmp r1, #0x14
	blt _0223371C
	bl sub_02022974
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223371C:
	lsl r2, r1, #2
	ldr r1, [sp, #4]
	mov r3, #0x4d
	add r2, r1, r2
	lsl r3, r3, #2
	strh r4, [r2, r3]
	add r1, r3, #2
	strb r0, [r2, r1]
	mov r1, #1
	add r0, r3, #3
	strb r1, [r2, r0]
	mov r0, #0x50
	str r0, [sp]
	ldr r2, _02233754 ; =0x02258DF0
	ldr r4, [sp, #4]
	ldr r2, [r2, #0]
	sub r0, #0x51
	mov r1, #0
	add r3, r4, r3
	blx ov66_022361B8
	bl ov66_0223365C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233750: .word 0x00000136
_02233754: .word 0x02258DF0
	thumb_func_end ov66_022336C4

	thumb_func_start ov66_02233758
ov66_02233758: ; 0x02233758
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x14
	add r4, r5, #0
	mul r4, r0
	add r0, r2, #0
	add r1, r4, #0
	bl sub_02018144
	ldr r1, _02233784 ; =0x0225B6C0
	ldr r2, [r1, #0]
	str r0, [r2, #0x24]
	ldr r0, [r1, #0]
	mov r1, #0
	ldr r0, [r0, #0x24]
	add r2, r4, #0
	bl sub_020D5124
	ldr r0, _02233784 ; =0x0225B6C0
	ldr r0, [r0, #0]
	str r5, [r0, #0x28]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02233784: .word 0x0225B6C0
	thumb_func_end ov66_02233758

	thumb_func_start ov66_02233788
ov66_02233788: ; 0x02233788
	ldr r0, _02233794 ; =0x0225B6C0
	ldr r3, _02233798 ; =FUN_020181C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	bx r3
	nop
_02233794: .word 0x0225B6C0
_02233798: .word sub_020181C4
	thumb_func_end ov66_02233788

	thumb_func_start ov66_0223379C
ov66_0223379C: ; 0x0223379C
	push {r3, lr}
	ldr r3, [r0, #0x28]
	bl ov66_022337A8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_0223379C

	thumb_func_start ov66_022337A8
ov66_022337A8: ; 0x022337A8
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	mov r2, #0
	add r4, r0, #0
	add r6, r3, #0
	bl ov66_02233A34
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _022337C4
	bl sub_02022974
_022337C4:
	ldr r2, [r4, #0x28]
	ldr r5, [r4, #0x24]
	add r4, r2, #0
	mul r4, r7
	cmp r2, r6
	bls _022337DA
	add r0, r5, r4
	mov r1, #0
	bl sub_020D5124
	b _022337DC
_022337DA:
	add r6, r2, #0
_022337DC:
	ldr r1, [sp]
	add r0, r5, r4
	add r2, r6, #0
	bl sub_020D50B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_022337A8

	thumb_func_start ov66_022337E8
ov66_022337E8: ; 0x022337E8
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	bl ov66_02233A34
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02233800
	bl sub_02022974
_02233800:
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x24]
	add r1, r0, #0
	mul r1, r4
	add r0, r2, r1
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_022337E8

	thumb_func_start ov66_0223380C
ov66_0223380C: ; 0x0223380C
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	bl ov66_02233A34
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02233824
	bl sub_02022974
_02233824:
	ldr r2, [r5, #0x28]
	ldr r1, [r5, #0x24]
	add r0, r2, #0
	mul r0, r4
	add r0, r1, r0
	mov r1, #0
	bl sub_020D5124
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0223380C

	thumb_func_start ov66_02233838
ov66_02233838: ; 0x02233838
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r2, #0
	add r5, r0, #0
	bl ov66_02233A34
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _02233852
	bl sub_02022974
_02233852:
	mov r0, #0xc
	mul r0, r6
	add r2, r5, r0
	ldmia r4!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02233838

	thumb_func_start ov66_02233864
ov66_02233864: ; 0x02233864
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	bl ov66_02233A34
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0223387C
	bl sub_02022974
_0223387C:
	mov r0, #0xc
	add r5, #0x2c
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02233864

	thumb_func_start ov66_02233888
ov66_02233888: ; 0x02233888
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	bl ov66_02233A34
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _022338A0
	bl sub_02022974
_022338A0:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	add r5, #0x2c
	mov r0, #0
	add r2, r5, r1
	strb r0, [r5, r1]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	strb r0, [r2, #4]
	strb r0, [r2, #5]
	strb r0, [r2, #6]
	strb r0, [r2, #7]
	strb r0, [r2, #8]
	strb r0, [r2, #9]
	strb r0, [r2, #0xa]
	strb r0, [r2, #0xb]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02233888

	thumb_func_start ov66_022338C8
ov66_022338C8: ; 0x022338C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r4, #0
	add r5, r7, #0
_022338D8:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022338E6
	bl sub_02022974
_022338E6:
	cmp r4, #0
	bne _022338EE
	ldr r6, [sp]
	b _022338F0
_022338EE:
	ldr r6, [sp, #4]
_022338F0:
	mov r0, #0x47
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r5, r0]
	ldr r0, [sp, #8]
	lsl r1, r6, #2
	bl sub_02018144
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r0, r1, #2
	strh r6, [r5, r0]
	add r0, r7, #0
	add r1, r4, #0
	bl ov66_02233950
	add r4, r4, #1
	add r5, #8
	cmp r4, #2
	blt _022338D8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_022338C8

	thumb_func_start ov66_02233920
ov66_02233920: ; 0x02233920
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x12
	add r5, r0, #0
	add r6, r4, #0
	lsl r7, r7, #4
_0223392C:
	ldr r0, [r5, r7]
	cmp r0, #0
	bne _02233936
	bl sub_02022974
_02233936:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x12
	lsl r0, r0, #4
	str r6, [r5, r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, #2
	blt _0223392C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_02233920

	thumb_func_start ov66_02233950
ov66_02233950: ; 0x02233950
	push {r3, r4, r5, r6}
	lsl r2, r1, #3
	add r0, r0, r2
	mov r2, #0x47
	mov r1, #0
	lsl r2, r2, #2
	strh r1, [r0, r2]
	add r2, r2, #2
	ldrh r2, [r0, r2]
	cmp r2, #0
	ble _0223397E
	mov r2, #0x12
	lsl r2, r2, #4
	add r6, r1, #0
	sub r5, r1, #1
	sub r3, r2, #2
_02233970:
	ldr r4, [r0, r2]
	add r1, r1, #1
	str r5, [r4, r6]
	ldrh r4, [r0, r3]
	add r6, r6, #4
	cmp r1, r4
	blt _02233970
_0223397E:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02233950

	thumb_func_start ov66_02233984
ov66_02233984: ; 0x02233984
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp]
	add r4, r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02233A00
	ldr r0, _02233A04 ; =0x0000011E
	lsl r4, r4, #3
	add r5, r7, r0
	sub r0, r0, #2
	add r1, r7, r0
	add r0, r1, r4
	str r0, [sp, #4]
	ldrsh r1, [r1, r4]
	ldrh r0, [r5, r4]
	cmp r1, r0
	blt _022339B4
	bl sub_02022974
_022339B4:
	ldr r1, [sp, #4]
	mov r0, #0
	ldrh r2, [r5, r4]
	ldrsh r1, [r1, r0]
	cmp r1, r2
	bge _02233A00
	cmp r2, #0
	ble _022339E4
	mov r1, #0x12
	add r2, r7, r4
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	ldr r3, _02233A04 ; =0x0000011E
	sub r5, r0, #1
_022339D0:
	ldr r6, [r1, #0]
	cmp r6, r5
	bne _022339DA
	str r0, [sp, #8]
	b _022339E4
_022339DA:
	ldrh r6, [r2, r3]
	add r0, r0, #1
	add r1, r1, #4
	cmp r0, r6
	blt _022339D0
_022339E4:
	mov r0, #0x12
	add r1, r7, r4
	lsl r0, r0, #4
	ldr r2, [r1, r0]
	ldr r0, [sp, #8]
	lsl r1, r0, #2
	ldr r0, [sp]
	str r0, [r2, r1]
	ldr r0, [sp, #4]
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0]
_02233A00:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02233A04: .word 0x0000011E
	thumb_func_end ov66_02233984

	thumb_func_start ov66_02233A08
ov66_02233A08: ; 0x02233A08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233A32
	lsl r2, r4, #3
	mov r3, #0x12
	add r4, r5, r2
	lsl r3, r3, #4
	ldr r4, [r4, r3]
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r3, #4
	add r1, r5, r0
	ldrsh r0, [r1, r2]
	sub r0, r0, #1
	strh r0, [r1, r2]
_02233A32:
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02233A08

	thumb_func_start ov66_02233A34
ov66_02233A34: ; 0x02233A34
	push {r4, r5}
	lsl r2, r2, #3
	add r0, r0, r2
	ldr r2, _02233A68 ; =0x0000011E
	mov r3, #0
	ldrh r4, [r0, r2]
	cmp r4, #0
	ble _02233A60
	add r2, r2, #2
	ldr r5, [r0, r2]
	ldr r2, _02233A68 ; =0x0000011E
_02233A4A:
	ldr r4, [r5, #0]
	cmp r1, r4
	bne _02233A56
	add r0, r3, #0
	pop {r4, r5}
	bx lr
_02233A56:
	ldrh r4, [r0, r2]
	add r3, r3, #1
	add r5, r5, #4
	cmp r3, r4
	blt _02233A4A
_02233A60:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02233A68: .word 0x0000011E
	thumb_func_end ov66_02233A34

	thumb_func_start ov66_02233A6C
ov66_02233A6C: ; 0x02233A6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r6, r2, #3
	add r4, r1, #0
	ldr r0, _02233A90 ; =0x0000011E
	add r1, r5, r6
	ldrh r0, [r1, r0]
	cmp r4, r0
	blt _02233A82
	bl sub_02022974
_02233A82:
	mov r0, #0x12
	add r1, r5, r6
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02233A90: .word 0x0000011E
	thumb_func_end ov66_02233A6C

	thumb_func_start ov66_02233A94
ov66_02233A94: ; 0x02233A94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov66_022336C0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov66_02233950
	ldr r0, _02233AE4 ; =0x0000011E
	mov r4, #0
	ldrh r0, [r5, r0]
	cmp r0, #0
	ble _02233AE2
	add r6, r5, #0
_02233AB4:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov66_02233A6C
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02233AD6
	ldr r0, [r6, #0x34]
	cmp r7, r0
	bne _02233AD6
	add r0, r5, #0
	mov r2, #1
	bl ov66_02233984
_02233AD6:
	ldr r0, _02233AE4 ; =0x0000011E
	add r4, r4, #1
	ldrh r0, [r5, r0]
	add r6, #0xc
	cmp r4, r0
	blt _02233AB4
_02233AE2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233AE4: .word 0x0000011E
	thumb_func_end ov66_02233A94

	thumb_func_start ov66_02233AE8
ov66_02233AE8: ; 0x02233AE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	cmp r1, #4
	blt _02233AF8
	bl sub_02022974
_02233AF8:
	ldr r0, [sp]
	bl ov66_022336C0
	str r0, [sp, #4]
	ldr r0, _02233B4C ; =0x0000011E
	mov r7, #0
	ldrh r0, [r6, r0]
	add r4, r7, #0
	cmp r0, #0
	ble _02233B36
	add r5, r6, #0
_02233B0E:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov66_02233A6C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233B2A
	ldr r1, [r5, #0x34]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _02233B2A
	add r7, r7, #1
_02233B2A:
	ldr r0, _02233B4C ; =0x0000011E
	add r4, r4, #1
	ldrh r0, [r6, r0]
	add r5, #0xc
	cmp r4, r0
	blt _02233B0E
_02233B36:
	ldr r1, _02233B50 ; =0x02258B20
	ldr r0, [sp]
	ldrb r0, [r1, r0]
	cmp r0, r7
	ble _02233B46
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02233B46:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233B4C: .word 0x0000011E
_02233B50: .word 0x02258B20
	thumb_func_end ov66_02233AE8

	thumb_func_start ov66_02233B54
ov66_02233B54: ; 0x02233B54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _02233B94
	ldr r0, _02233BE0 ; =0x0225B6C0
	mov r3, #1
	ldr r2, [r0, #0]
	ldr r1, _02233BE4 ; =0x000005B4
	lsl r3, r3, #0xa
	str r3, [r2, r1]
	ldr r2, [r0, #0]
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r2, r0
	add r1, r2, r1
	blx ov66_02236084
	bl ov66_0223365C
	cmp r0, #0
	bne _02233B82
	bl sub_02022974
_02233B82:
	ldr r2, _02233BE8 ; =0x02258DF0
	mov r0, #0
	mov r1, #0
	ldr r2, [r2, #0]
	mvn r0, r0
	add r3, r1, #0
	blx ov66_02236218
	pop {r3, r4, r5, pc}
_02233B94:
	ldr r0, _02233BE0 ; =0x0225B6C0
	ldr r4, [r0, #0]
	add r0, r1, #0
	bl ov66_022336B8
	ldr r1, _02233BEC ; =0x0000012D
	ldrb r2, [r4, r1]
	cmp r2, r0
	bne _02233BD4
	cmp r5, #1
	bne _02233BCC
	mov r2, #1
	add r0, r1, #2
	strb r2, [r4, r0]
	ldr r0, _02233BE0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	ldrb r1, [r0, r1]
	bl ov66_02233A94
	blx ov66_02236494
	add r1, r0, #0
	ldr r0, _02233BE0 ; =0x0225B6C0
	mov r2, #1
	ldr r0, [r0, #0]
	bl ov66_02233984
	pop {r3, r4, r5, pc}
_02233BCC:
	mov r2, #2
	add r0, r1, #2
	strb r2, [r4, r0]
	pop {r3, r4, r5, pc}
_02233BD4:
	bl sub_02022974
	bl ov66_02232AA4
	pop {r3, r4, r5, pc}
	nop
_02233BE0: .word 0x0225B6C0
_02233BE4: .word 0x000005B4
_02233BE8: .word 0x02258DF0
_02233BEC: .word 0x0000012D
	thumb_func_end ov66_02233B54

	thumb_func_start ov66_02233BF0
ov66_02233BF0: ; 0x02233BF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	blx ov66_02236494
	cmp r5, r0
	bne _02233C14
	ldr r0, _02233C5C ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r1, r0
	blx ov66_02235FD8
	mov r4, #1
	b _02233C16
_02233C14:
	mov r4, #0
_02233C16:
	ldr r0, _02233C5C ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #0
	bl ov66_02233984
	ldr r0, _02233C5C ; =0x0225B6C0
	ldr r3, [sp]
	ldr r0, [r0, #0]
	add r1, r5, #0
	add r2, r7, #0
	bl ov66_022337A8
	ldr r0, _02233C5C ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r6, #0
	bl ov66_02233838
	ldr r0, _02233C5C ; =0x0225B6C0
	add r1, r5, #0
	ldr r6, [r0, #0]
	add r0, r6, #0
	bl ov66_022337E8
	add r3, r4, #0
	ldr r4, _02233C5C ; =0x0225B6C0
	add r1, r0, #0
	ldr r4, [r4, #0]
	ldr r2, [r6, #0x20]
	ldr r4, [r4, #0xc]
	add r0, r5, #0
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233C5C: .word 0x0225B6C0
	thumb_func_end ov66_02233BF0

	thumb_func_start ov66_02233C60
ov66_02233C60: ; 0x02233C60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02233CDC ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233CD8
	mov r6, #0
	ldr r7, _02233CDC ; =0x0225B6C0
	add r4, r6, #0
_02233C7E:
	ldr r1, [r7, #0]
	mov r0, #6
	add r2, r1, r4
	lsl r0, r0, #8
	ldr r0, [r2, r0]
	cmp r5, r0
	bne _02233C98
	ldr r2, _02233CE0 ; =0x000005B8
	add r0, r5, #0
	add r1, r1, r2
	add r1, r1, r4
	bl ov66_02233F18
_02233C98:
	add r6, r6, #1
	add r4, #0x4c
	cmp r6, #3
	blt _02233C7E
	ldr r0, _02233CDC ; =0x0225B6C0
	ldr r2, [r0, #0]
	add r0, r5, #0
	ldr r1, [r2, #0x20]
	ldr r2, [r2, #0x10]
	blx r2
	ldr r0, _02233CDC ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl ov66_02233888
	ldr r0, _02233CDC ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl ov66_0223380C
	ldr r0, _02233CDC ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #0
	bl ov66_02233A08
	ldr r0, _02233CDC ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #1
	bl ov66_02233A08
_02233CD8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233CDC: .word 0x0225B6C0
_02233CE0: .word 0x000005B8
	thumb_func_end ov66_02233C60

	thumb_func_start ov66_02233CE4
ov66_02233CE4: ; 0x02233CE4
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02233CE4

	thumb_func_start ov66_02233CE8
ov66_02233CE8: ; 0x02233CE8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02233D8C ; =0x0225B6C0
	add r4, r1, #0
	add r5, r2, #0
	ldr r0, [r0, #0]
	add r1, r7, #0
	mov r2, #0
	str r3, [sp]
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233D88
	cmp r4, #5
	bhi _02233D88
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233D16: ; jump table
	.short _02233D22 - _02233D16 - 2 ; case 0
	.short _02233D26 - _02233D16 - 2 ; case 1
	.short _02233D26 - _02233D16 - 2 ; case 2
	.short _02233D26 - _02233D16 - 2 ; case 3
	.short _02233D26 - _02233D16 - 2 ; case 4
	.short _02233D3C - _02233D16 - 2 ; case 5
_02233D22:
	mov r1, #0
	b _02233D42
_02233D26:
	add r0, r4, #0
	bl ov66_022336B8
	ldr r1, _02233D8C ; =0x0225B6C0
	ldr r2, [r1, #0]
	ldr r1, _02233D90 ; =0x0000012D
	ldrb r1, [r2, r1]
	cmp r1, r0
	bne _02233D88
	mov r1, #1
	b _02233D42
_02233D3C:
	mov r1, #0
	b _02233D42
_02233D40:
	.byte 0xF8, 0xBD
_02233D42:
	add r4, r1, #0
	mov r0, #0xc
	mul r4, r0
	ldr r0, _02233D8C ; =0x0225B6C0
	mov r1, #0x62
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	add r0, r0, r4
	ldr r2, [r0, r1]
	cmp r2, r5
	bls _02233D88
	sub r1, r1, #4
	ldr r0, [r0, r1]
	lsl r5, r5, #3
	add r0, r0, r5
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bls _02233D6C
	bl sub_02022974
_02233D6C:
	ldr r0, _02233D8C ; =0x0225B6C0
	mov r3, #0x61
	ldr r0, [r0, #0]
	lsl r3, r3, #2
	add r6, r0, r4
	ldr r4, [r6, r3]
	add r3, #8
	add r2, r4, r5
	ldr r1, [sp]
	ldr r2, [r2, #4]
	ldr r3, [r6, r3]
	ldr r4, [r4, r5]
	add r0, r7, #0
	blx r4
_02233D88:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233D8C: .word 0x0225B6C0
_02233D90: .word 0x0000012D
	thumb_func_end ov66_02233CE8

	thumb_func_start ov66_02233D94
ov66_02233D94: ; 0x02233D94
	push {r3, lr}
	ldr r1, _02233DCC ; =0x02258DF0
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_020D8D14
	cmp r0, #0
	bne _02233DC8
	ldr r0, _02233DD0 ; =0x0225B6C0
	mov r2, #0x50
	ldr r1, [r0, #0]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	bl sub_020D50B8
	ldr r0, _02233DD0 ; =0x0225B6C0
	ldr r2, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02233DC8
	mov r1, #0
	strb r1, [r2, r0]
_02233DC8:
	pop {r3, pc}
	nop
_02233DCC: .word 0x02258DF0
_02233DD0: .word 0x0225B6C0
	thumb_func_end ov66_02233D94

	thumb_func_start ov66_02233DD4
ov66_02233DD4: ; 0x02233DD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02233E48 ; =0x0225B6C0
	add r7, r1, #0
	ldr r0, [r0, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233E46
	ldr r0, _02233E48 ; =0x0225B6C0
	ldr r1, _02233E4C ; =0x0000012D
	ldr r0, [r0, #0]
	ldrb r1, [r0, r1]
	cmp r1, #4
	beq _02233E3A
	add r1, r5, #0
	bl ov66_02233864
	ldr r4, [r0, #8]
	ldr r0, _02233E48 ; =0x0225B6C0
	ldr r6, [r7, #8]
	ldr r1, [r0, #0]
	ldr r0, _02233E4C ; =0x0000012D
	ldrb r0, [r1, r0]
	bl ov66_022336C0
	cmp r4, #5
	bne _02233E26
	cmp r6, r0
	bne _02233E26
	ldr r0, _02233E48 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #1
	bl ov66_02233984
	b _02233E3A
_02233E26:
	cmp r4, r0
	bne _02233E3A
	cmp r6, r0
	beq _02233E3A
	ldr r0, _02233E48 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #1
	bl ov66_02233A08
_02233E3A:
	ldr r0, _02233E48 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r7, #0
	bl ov66_02233838
_02233E46:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233E48: .word 0x0225B6C0
_02233E4C: .word 0x0000012D
	thumb_func_end ov66_02233DD4

	thumb_func_start ov66_02233E50
ov66_02233E50: ; 0x02233E50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02233E88 ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233E84
	ldr r0, _02233E88 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl ov66_0223379C
	ldr r0, _02233E88 ; =0x0225B6C0
	add r1, r4, #0
	ldr r3, [r0, #0]
	add r0, r5, #0
	ldr r2, [r3, #0x20]
	ldr r3, [r3, #0x14]
	blx r3
_02233E84:
	pop {r3, r4, r5, pc}
	nop
_02233E88: .word 0x0225B6C0
	thumb_func_end ov66_02233E50

	thumb_func_start ov66_02233E8C
ov66_02233E8C: ; 0x02233E8C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02233F0C ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233F08
	bl ov66_022328F0
	cmp r0, r5
	beq _02233EFA
	ldr r0, _02233F0C ; =0x0225B6C0
	ldr r2, _02233F10 ; =0x0000069E
	ldr r1, [r0, #0]
	ldrb r0, [r1, r2]
	cmp r0, #0
	beq _02233EFA
	sub r0, r2, #2
	ldrh r0, [r1, r0]
	ldr r3, [r4, #0]
	cmp r0, r3
	bne _02233EFA
	sub r2, #0xe6
	add r2, r1, r2
	mov r1, #0x4c
	mul r1, r0
	add r0, r2, r1
	add r1, sp, #8
	bl ov66_02234294
	add r0, r4, #0
	add r1, sp, #0
	bl ov66_02234294
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	sub r0, r3, r0
	sbc r2, r1
	blt _02233F08
	ldr r0, _02233F0C ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02233F14 ; =0x0000069F
	strb r2, [r1, r0]
	bl ov66_02233064
_02233EFA:
	ldr r0, _02233F0C ; =0x0225B6C0
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	add r2, r5, #0
	add r3, r4, #0
	bl ov66_02234074
_02233F08:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02233F0C: .word 0x0225B6C0
_02233F10: .word 0x0000069E
_02233F14: .word 0x0000069F
	thumb_func_end ov66_02233E8C

	thumb_func_start ov66_02233F18
ov66_02233F18: ; 0x02233F18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02233F58 ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233F56
	ldr r0, _02233F58 ; =0x0225B6C0
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	add r2, r5, #0
	bl ov66_022340F0
	ldr r1, _02233F58 ; =0x0225B6C0
	ldr r2, [r4, #0]
	ldr r5, [r1, #0]
	ldr r1, _02233F5C ; =0x0000069C
	ldrh r3, [r5, r1]
	cmp r3, r2
	bne _02233F56
	cmp r0, #1
	bne _02233F56
	mov r2, #1
	add r0, r1, #3
	strb r2, [r5, r0]
_02233F56:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02233F58: .word 0x0225B6C0
_02233F5C: .word 0x0000069C
	thumb_func_end ov66_02233F18

	thumb_func_start ov66_02233F60
ov66_02233F60: ; 0x02233F60
	push {r3, lr}
	ldr r1, _02233F70 ; =0x0225B6C0
	ldr r2, [r1, #0]
	ldr r1, [r2, #0x20]
	ldr r2, [r2, #0x18]
	blx r2
	pop {r3, pc}
	nop
_02233F70: .word 0x0225B6C0
	thumb_func_end ov66_02233F60

	thumb_func_start ov66_02233F74
ov66_02233F74: ; 0x02233F74
	push {r3, lr}
	cmp r0, #0
	beq _02233F86
	ldr r0, _02233F98 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02233F9C ; =0x00000133
	strb r2, [r1, r0]
	pop {r3, pc}
_02233F86:
	ldr r0, _02233F98 ; =0x0225B6C0
	ldr r3, [r0, #0]
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r3, #0x20]
	ldr r3, [r3, #0x1c]
	blx r3
	pop {r3, pc}
	nop
_02233F98: .word 0x0225B6C0
_02233F9C: .word 0x00000133
	thumb_func_end ov66_02233F74

	thumb_func_start ov66_02233FA0
ov66_02233FA0: ; 0x02233FA0
	cmp r0, #0
	bne _02233FA8
	mov r0, #1
	bx lr
_02233FA8:
	ldr r0, _02233FB8 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02233FBC ; =0x00000132
	strb r2, [r1, r0]
	mov r0, #0
	bx lr
	nop
_02233FB8: .word 0x0225B6C0
_02233FBC: .word 0x00000132
	thumb_func_end ov66_02233FA0

	thumb_func_start ov66_02233FC0
ov66_02233FC0: ; 0x02233FC0
	push {r3, lr}
	cmp r0, #0
	bne _02233FD6
	ldr r0, _02233FE4 ; =0x0225B6C0
	ldr r3, [r0, #0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r3, r0
	bl ov66_0223431C
	pop {r3, pc}
_02233FD6:
	ldr r0, _02233FE4 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02233FE8 ; =0x00000132
	strb r2, [r1, r0]
	pop {r3, pc}
	nop
_02233FE4: .word 0x0225B6C0
_02233FE8: .word 0x00000132
	thumb_func_end ov66_02233FC0

	thumb_func_start ov66_02233FEC
ov66_02233FEC: ; 0x02233FEC
	push {r3, lr}
	cmp r0, #0
	bne _02234000
	ldr r0, _0223400C ; =0x0225B6C0
	ldr r2, [r0, #0]
	ldr r0, _02234010 ; =0x000006A8
	add r0, r2, r0
	bl ov66_0223439C
	pop {r3, pc}
_02234000:
	ldr r0, _0223400C ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02234014 ; =0x00000132
	strb r2, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_0223400C: .word 0x0225B6C0
_02234010: .word 0x000006A8
_02234014: .word 0x00000132
	thumb_func_end ov66_02233FEC

	thumb_func_start ov66_02234018
ov66_02234018: ; 0x02234018
	push {r3, lr}
	ldr r0, _0223403C ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _0223402C
	bl sub_02022974
_0223402C:
	ldr r0, _0223403C ; =0x0225B6C0
	mov r2, #2
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #6
	str r2, [r1, r0]
	pop {r3, pc}
	nop
_0223403C: .word 0x0225B6C0
	thumb_func_end ov66_02234018

	thumb_func_start ov66_02234040
ov66_02234040: ; 0x02234040
	ldr r0, _0223404C ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02234050 ; =0x00000131
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_0223404C: .word 0x0225B6C0
_02234050: .word 0x00000131
	thumb_func_end ov66_02234040

	thumb_func_start ov66_02234054
ov66_02234054: ; 0x02234054
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223406C ; =0x000005B8
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xe4
	bl sub_020D5124
	ldr r0, _02234070 ; =0x0000069C
	mov r1, #3
	strh r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0223406C: .word 0x000005B8
_02234070: .word 0x0000069C
	thumb_func_end ov66_02234054

	thumb_func_start ov66_02234074
ov66_02234074: ; 0x02234074
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r7, r3, #0
	str r2, [sp]
	cmp r6, #3
	blt _02234086
	bl sub_02022974
_02234086:
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_0223412C
	cmp r0, #1
	bne _022340A4
	mov r0, #0x4c
	mul r0, r6
	add r1, r5, r0
	mov r0, #6
	lsl r0, r0, #8
	ldr r1, [r1, r0]
	ldr r0, [sp]
	cmp r0, r1
	bne _022340E2
_022340A4:
	mov r0, #0x4c
	add r4, r6, #0
	mul r4, r0
	ldr r0, _022340E4 ; =0x000005B8
	add r1, r5, r4
	add r3, r1, r0
	mov r2, #8
_022340B2:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022340B2
	ldr r0, [r7, #0]
	str r0, [r3, #0]
	ldr r0, _022340E8 ; =0x000005FC
	add r2, r5, r0
	ldrh r1, [r2, r4]
	cmp r1, #0
	bne _022340E2
	mov r1, #1
	strh r1, [r2, r4]
	add r1, r0, #4
	ldr r0, [sp]
	add r2, r5, r4
	str r0, [r2, r1]
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_0223414C
	ldr r1, _022340EC ; =0x000005FE
	add r2, r5, r4
	strh r0, [r2, r1]
_022340E2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022340E4: .word 0x000005B8
_022340E8: .word 0x000005FC
_022340EC: .word 0x000005FE
	thumb_func_end ov66_02234074

	thumb_func_start ov66_022340F0
ov66_022340F0: ; 0x022340F0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #3
	blt _02234100
	bl sub_02022974
_02234100:
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_0223412C
	cmp r0, #1
	bne _02234126
	mov r0, #0x4c
	mul r0, r4
	add r2, r5, r0
	mov r0, #6
	lsl r0, r0, #8
	ldr r1, [r2, r0]
	cmp r6, r1
	bne _02234126
	mov r1, #0
	sub r0, r0, #4
	strh r1, [r2, r0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02234126:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_022340F0

	thumb_func_start ov66_0223412C
ov66_0223412C: ; 0x0223412C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _0223413A
	bl sub_02022974
_0223413A:
	mov r0, #0x4c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02234148 ; =0x000005FC
	ldrh r0, [r1, r0]
	pop {r3, r4, r5, pc}
	nop
_02234148: .word 0x000005FC
	thumb_func_end ov66_0223412C

	thumb_func_start ov66_0223414C
ov66_0223414C: ; 0x0223414C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	bl ov66_0223412C
	cmp r0, #0
	bne _02234162
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02234162:
	add r0, r4, #0
	add r1, r5, #0
	bl ov66_022341C0
	add r1, sp, #0
	bl ov66_02234294
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r2, [r4, r1]
	ldr r3, [sp]
	ldr r1, [sp, #4]
	sub r0, r0, r3
	sbc r2, r1
	mov r3, #0
	mov r1, #0x1e
	sub r1, r1, r0
	sbc r3, r2
	bge _02234192
	mov r0, #0x1e
	mov r2, #0
	b _022341A4
_02234192:
	mov r1, #0
	mov r3, #0
	sub r1, r0, r1
	mov ip, r2
	mov r1, ip
	sbc r1, r3
	bge _022341A4
	mov r0, #0
	add r2, r0, #0
_022341A4:
	mov r1, #0x3c
	mov r3, #0
	sub r0, r1, r0
	mov ip, r3
	mov r1, ip
	sbc r1, r2
	mov r2, #0x1e
	bl sub_020E1F1C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0223414C

	thumb_func_start ov66_022341C0
ov66_022341C0: ; 0x022341C0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #3
	blt _022341CE
	bl sub_02022974
_022341CE:
	mov r0, #0x4c
	add r4, r6, #0
	mul r4, r0
	ldr r0, _022341EC ; =0x000005FC
	add r1, r5, r4
	ldrh r0, [r1, r0]
	cmp r0, #1
	beq _022341E2
	bl sub_02022974
_022341E2:
	ldr r0, _022341F0 ; =0x000005B8
	add r0, r5, r0
	add r0, r0, r4
	pop {r4, r5, r6, pc}
	nop
_022341EC: .word 0x000005FC
_022341F0: .word 0x000005B8
	thumb_func_end ov66_022341C0

	thumb_func_start ov66_022341F4
ov66_022341F4: ; 0x022341F4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02234274 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02234278 ; =0x0000069E
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0223422E
	bl ov4_021D2610
	add r4, r0, #0
	cmp r4, #4
	bls _02234210
	bl sub_02022974
_02234210:
	ldr r0, _02234274 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _0223427C ; =0x000005B8
	add r2, r1, r0
	add r0, #0xe4
	ldrh r1, [r1, r0]
	mov r0, #0x4c
	mul r0, r1
	add r0, r2, r0
	ldr r1, [r0, #8]
	cmp r1, r4
	beq _0223422E
	str r4, [r0, #8]
	blx ov66_02236AC4
_0223422E:
	mov r4, #0
	ldr r6, _02234274 ; =0x0225B6C0
	ldr r7, _02234280 ; =0x000005FC
	add r5, r4, #0
_02234236:
	ldr r0, [r6, #0]
	add r0, r0, r5
	ldrh r1, [r0, r7]
	cmp r1, #1
	bne _0223426A
	ldr r1, _02234284 ; =0x000005FE
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _02234252
	ldr r1, _02234284 ; =0x000005FE
	ldrh r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _02234284 ; =0x000005FE
	strh r2, [r0, r1]
_02234252:
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl ov66_0223414C
	ldr r1, [r6, #0]
	ldr r2, _02234284 ; =0x000005FE
	add r1, r1, r5
	ldrh r2, [r1, r2]
	cmp r0, r2
	bhs _0223426A
	ldr r2, _02234284 ; =0x000005FE
	strh r0, [r1, r2]
_0223426A:
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #3
	blt _02234236
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234274: .word 0x0225B6C0
_02234278: .word 0x0000069E
_0223427C: .word 0x000005B8
_02234280: .word 0x000005FC
_02234284: .word 0x000005FE
	thumb_func_end ov66_022341F4

	thumb_func_start ov66_02234288
ov66_02234288: ; 0x02234288
	ldr r2, [r1, #0]
	ldr r1, [r1, #4]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02234288

	thumb_func_start ov66_02234294
ov66_02234294: ; 0x02234294
	ldr r2, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r2, [r1, #0]
	str r0, [r1, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02234294

	thumb_func_start ov66_022342A0
ov66_022342A0: ; 0x022342A0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022342A0

	thumb_func_start ov66_022342A4
ov66_022342A4: ; 0x022342A4
	push {r3, lr}
	ldr r2, _022342C4 ; =0x0000069E
	ldrb r1, [r1, r2]
	cmp r1, #1
	bne _022342B4
	bl ov66_02233064
	pop {r3, pc}
_022342B4:
	cmp r0, #0
	bne _022342C2
	ldr r0, _022342C8 ; =0x0225B6C0
	mov r3, #1
	ldr r1, [r0, #0]
	add r0, r2, #1
	strb r3, [r1, r0]
_022342C2:
	pop {r3, pc}
	; .align 2, 0
_022342C4: .word 0x0000069E
_022342C8: .word 0x0225B6C0
	thumb_func_end ov66_022342A4

	thumb_func_start ov66_022342CC
ov66_022342CC: ; 0x022342CC
	push {r4, r5}
	ldrh r2, [r0, #0xe]
	mov r3, #0
	add r4, r3, #0
	cmp r2, #0
	ble _022342EC
	add r5, r0, #0
_022342DA:
	ldr r2, [r5, #0x14]
	cmp r1, r2
	bne _022342E2
	ldr r3, [r5, #0x10]
_022342E2:
	ldrh r2, [r0, #0xe]
	add r4, r4, #1
	add r5, #8
	cmp r4, r2
	blt _022342DA
_022342EC:
	add r0, r3, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022342CC

	thumb_func_start ov66_022342F4
ov66_022342F4: ; 0x022342F4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r2, #0
	lsl r1, r5, #3
	bl sub_02018144
	str r0, [r4, #0]
	strh r5, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_022342F4

	thumb_func_start ov66_0223430C
ov66_0223430C: ; 0x0223430C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov66_0223430C

	thumb_func_start ov66_0223431C
ov66_0223431C: ; 0x0223431C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r2, #0
	add r6, r1, #0
	cmp r4, r0
	blo _0223432E
	bl sub_02022974
_0223432E:
	ldrh r0, [r5, #4]
	cmp r4, r0
	blo _02234336
	add r4, r0, #0
_02234336:
	ldr r1, [r5, #0]
	add r0, r6, #0
	lsl r2, r4, #3
	bl sub_020C4B68
	strh r4, [r5, #6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_0223431C

	thumb_func_start ov66_02234344
ov66_02234344: ; 0x02234344
	push {r3, r4}
	ldrh r2, [r0, #6]
	mov r3, #0
	cmp r2, #0
	ble _02234366
	ldr r4, [r0, #0]
_02234350:
	ldr r2, [r4, #0]
	cmp r1, r2
	bne _0223435C
	mov r0, #1
	pop {r3, r4}
	bx lr
_0223435C:
	ldrh r2, [r0, #6]
	add r3, r3, #1
	add r4, #8
	cmp r3, r2
	blt _02234350
_02234366:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov66_02234344

	thumb_func_start ov66_0223436C
ov66_0223436C: ; 0x0223436C
	push {r4, r5}
	ldrh r2, [r0, #6]
	mov r3, #0
	cmp r2, #0
	ble _02234394
	ldr r5, [r0, #0]
	add r4, r5, #0
_0223437A:
	ldr r2, [r4, #0]
	cmp r1, r2
	bne _0223438A
	lsl r0, r3, #3
	add r0, r5, r0
	ldr r0, [r0, #4]
	pop {r4, r5}
	bx lr
_0223438A:
	ldrh r2, [r0, #6]
	add r3, r3, #1
	add r4, #8
	cmp r3, r2
	blt _0223437A
_02234394:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0223436C

	thumb_func_start ov66_0223439C
ov66_0223439C: ; 0x0223439C
	ldr r3, _022343A4 ; =FUN_020D50B8
	mov r2, #0xb6
	lsl r2, r2, #2
	bx r3
	; .align 2, 0
_022343A4: .word sub_020D50B8
	thumb_func_end ov66_0223439C

	thumb_func_start ov66_022343A8
ov66_022343A8: ; 0x022343A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r7, #0
	mov r1, #0x30
	str r3, [sp, #0xc]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020D5124
	ldr r2, [sp, #4]
	mov r1, #0x90
	add r0, r7, #0
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #0x10]
	ldr r0, [sp, #4]
	mov r6, #0
	str r0, [r4, #0x14]
	cmp r0, #0
	bls _022343F2
	add r5, r6, #0
_022343E0:
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	bl ov66_022349C8
	ldr r0, [r4, #0x14]
	add r6, r6, #1
	add r5, #0x90
	cmp r6, r0
	blo _022343E0
_022343F2:
	mov r0, #1
	add r1, r7, #0
	bl sub_0202298C
	str r0, [r4, #0]
	mov r0, #2
	add r1, r7, #0
	bl sub_0202298C
	str r0, [r4, #4]
	mov r0, #0x14
	add r1, r7, #0
	bl sub_02022BD8
	str r0, [r4, #8]
	mov r0, #1
	add r1, r7, #0
	bl sub_02020B90
	ldr r0, [sp, #4]
	str r7, [sp, #0x24]
	str r0, [sp, #0x20]
	add r0, sp, #0x20
	bl sub_02020C44
	str r0, [r4, #0xc]
	mov r0, #0x51
	add r1, r7, #0
	bl sub_02006C24
	str r0, [sp, #0x18]
	mov r0, #0xba
	add r1, r7, #0
	bl sub_02006C24
	mov r2, #0
	ldr r3, [sp, #0xc]
	str r2, [sp]
	mov r1, #0x7f
	str r0, [sp, #0x14]
	bl sub_0200723C
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	mov r2, #0x7f
	bl sub_02022A1C
	add r0, r5, #0
	bl ov66_02231668
	add r0, r5, #0
	bl sub_020B3C0C
	cmp r0, #0
	beq _02234482
	add r2, r0, #0
	add r2, #8
	beq _02234476
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02234476
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02234478
_02234476:
	mov r1, #0
_02234478:
	cmp r1, #0
	beq _02234482
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _02234484
_02234482:
	mov r0, #0
_02234484:
	mov r1, #0
	bl sub_020B34F8
	mov r6, #0
	ldr r5, _02234540 ; =0x02258B28
	str r0, [r4, #0x2c]
	add r7, r6, #0
_02234492:
	str r7, [sp]
	ldrh r1, [r5]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0xc]
	add r2, r7, #0
	bl sub_0200723C
	add r1, r0, #0
	ldrh r2, [r5]
	ldr r0, [r4, #4]
	bl sub_02022A1C
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #2
	blt _02234492
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _022344BE
	mov r0, #1
	str r0, [sp, #0x10]
	b _022344C2
_022344BE:
	mov r0, #0
	str r0, [sp, #0x10]
_022344C2:
	ldr r5, _02234544 ; =0x02258B38
	mov r7, #0
_022344C6:
	ldr r0, [sp, #0x10]
	cmp r0, r7
	beq _02234518
	ldrh r0, [r5, #2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	bne _022344D8
	mov r6, #1
	b _022344DA
_022344D8:
	mov r6, #0
_022344DA:
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r5, #2]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0xc]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x11
	mov r2, #0
	bl sub_0200723C
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r3, r6, #0
	str r0, [sp]
	ldrh r2, [r5, #2]
	ldr r0, [r4, #8]
	lsl r2, r2, #0x11
	lsr r2, r2, #0x11
	bl sub_02022C58
	str r0, [sp, #0x1c]
	cmp r6, #1
	bne _02234518
	bl sub_02022EBC
	ldr r0, [sp, #0x1c]
	bl sub_02022E08
	ldr r0, [sp, #0x1c]
	bl sub_02022E54
_02234518:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #0x14
	blt _022344C6
	add r0, r4, #0
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0xc]
	add r0, #0x18
	mov r2, #0x80
	bl ov66_022348FC
	ldr r0, [sp, #0x18]
	bl sub_02006CA8
	ldr r0, [sp, #0x14]
	bl sub_02006CA8
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234540: .word 0x02258B28
_02234544: .word 0x02258B38
	thumb_func_end ov66_022343A8

	thumb_func_start ov66_02234548
ov66_02234548: ; 0x02234548
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x18
	bl ov66_02234958
	ldr r0, [r4, #8]
	bl sub_02022D58
	ldr r0, [r4, #0]
	bl sub_02022AE4
	ldr r0, [r4, #4]
	bl sub_02022AE4
	ldr r0, [r4, #0xc]
	bl sub_02020CCC
	bl sub_02020BD0
	ldr r0, [r4, #8]
	bl sub_02022C1C
	ldr r0, [r4, #0]
	bl sub_020229D8
	ldr r0, [r4, #4]
	bl sub_020229D8
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234548

	thumb_func_start ov66_02234590
ov66_02234590: ; 0x02234590
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	bls _022345C0
	add r4, r6, #0
_0223459E:
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_022349E0
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_02234BC4
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_02234D08
	ldr r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x90
	cmp r6, r0
	blo _0223459E
_022345C0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_02234590

	thumb_func_start ov66_022345C4
ov66_022345C4: ; 0x022345C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02020C08
	add r0, r5, #0
	add r0, #0x18
	bl ov66_0223496C
	cmp r0, #0
	beq _02234600
	ldr r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	bls _02234600
	add r4, r6, #0
_022345E2:
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_022349B8
	cmp r0, #1
	bne _022345F6
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_022349D4
_022345F6:
	ldr r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x90
	cmp r6, r0
	blo _022345E2
_02234600:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_022345C4

	thumb_func_start ov66_02234604
ov66_02234604: ; 0x02234604
	ldr r3, _0223460C ; =FUN_02020D68
	ldr r0, [r0, #0xc]
	bx r3
	nop
_0223460C: .word sub_02020D68
	thumb_func_end ov66_02234604

	thumb_func_start ov66_02234610
ov66_02234610: ; 0x02234610
	ldr r3, _02234618 ; =ov66_02234960
	add r0, #0x18
	bx r3
	nop
_02234618: .word ov66_02234960
	thumb_func_end ov66_02234610

	thumb_func_start ov66_0223461C
ov66_0223461C: ; 0x0223461C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	add r5, r0, #0
	add r7, r1, #0
	bl ov66_02234980
	add r4, r0, #0
	str r7, [r4, #4]
	add r1, sp, #0x34
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r3, _02234784 ; =0x02258B2C
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x28
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #7
	str r0, [r2, #0]
	add r0, r7, #0
	bl ov63_0222BF90
	bl ov66_022348B0
	add r6, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x7f
	bl sub_02022B20
	bl sub_02022B54
	ldrh r1, [r6, #2]
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x11
	bl sub_02022D98
	str r0, [sp, #0x18]
	bl sub_02022DF4
	str r0, [sp, #0x10]
	ldrh r0, [r6, #2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02234680
	ldr r1, _02234788 ; =0x000001BE
	b _02234682
_02234680:
	ldr r1, _0223478C ; =0x000001BD
_02234682:
	ldr r0, [r5, #4]
	bl sub_02022B20
	bl sub_02022B54
	add r1, sp, #0x40
	bl sub_02024184
	ldrh r0, [r6, #2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022346AE
	add r0, sp, #0x40
	str r0, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, _02234790 ; =0x02258B88
	add r0, sp, #0x70
	bl sub_02021284
	b _022346DC
_022346AE:
	ldr r0, [sp, #0x18]
	bl sub_02022EF4
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl sub_02022F04
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	bl sub_02022F14
	add r1, sp, #0x40
	str r1, [sp]
	ldr r1, [sp, #0x1c]
	str r6, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, _02234790 ; =0x02258B88
	add r0, sp, #0x70
	bl sub_0202125C
_022346DC:
	add r0, r7, #0
	bl ov63_0222C0E4
	add r1, sp, #0x20
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1]
	add r0, sp, #0x24
	strh r2, [r1, #4]
	ldrh r2, [r1, #2]
	strh r2, [r1, #6]
	add r1, sp, #0x34
	bl ov70_0225C700
	mov r0, #1
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x3c]
	ldr r0, [r5, #0xc]
	add r3, sp, #0x34
	str r0, [sp, #0x50]
	add r0, sp, #0x70
	str r0, [sp, #0x54]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x58
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, sp, #0x28
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x64
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, sp, #0x50
	bl sub_0202119C
	ldr r1, _02234794 ; =ov66_02234D78
	add r2, r4, #0
	str r0, [r4, #8]
	bl sub_02021444
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x18
	add r1, #0xc
	bl ov66_02234970
	mov r2, #2
	lsl r2, r2, #0xc
	add r0, r4, #0
	ldr r6, [sp, #0x3c]
	lsl r3, r2, #2
	ldr r1, [sp, #0x34]
	add r0, #0xc
	sub r3, r6, r3
	bl sub_02017350
	ldrb r1, [r4]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4]
	ldrb r1, [r4]
	mov r0, #0xc0
	bic r1, r0
	mov r0, #0x40
	orr r0, r1
	strb r0, [r4]
	ldrb r1, [r4]
	mov r0, #0x30
	bic r1, r0
	strb r1, [r4]
	add r0, r4, #0
	ldr r1, [r5, #0x2c]
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r4, #0
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234784: .word 0x02258B2C
_02234788: .word 0x000001BE
_0223478C: .word 0x000001BD
_02234790: .word 0x02258B88
_02234794: .word ov66_02234D78
	thumb_func_end ov66_0223461C

	thumb_func_start ov66_02234798
ov66_02234798: ; 0x02234798
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020211FC
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x90
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234798

	thumb_func_start ov66_022347B0
ov66_022347B0: ; 0x022347B0
	ldrb r3, [r0]
	mov r2, #0xf
	lsl r1, r1, #0x18
	bic r3, r2
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end ov66_022347B0

	thumb_func_start ov66_022347C4
ov66_022347C4: ; 0x022347C4
	add r0, #0x8c
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022347C4

	thumb_func_start ov66_022347CC
ov66_022347CC: ; 0x022347CC
	ldrb r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end ov66_022347CC

	thumb_func_start ov66_022347D4
ov66_022347D4: ; 0x022347D4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	bl ov70_0225C700
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl ov66_022347F8
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov66_022347D4

	thumb_func_start ov66_022347F8
ov66_022347F8: ; 0x022347F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	bl sub_020212A8
	mov r2, #2
	ldr r1, [r4, #0]
	lsl r2, r2, #0xc
	add r5, #0xc
	ldr r4, [r4, #8]
	lsl r3, r2, #2
	add r0, r5, #0
	sub r3, r4, r3
	bl sub_02017350
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_022347F8

	thumb_func_start ov66_0223481C
ov66_0223481C: ; 0x0223481C
	push {r4, lr}
	ldr r0, [r0, #8]
	add r4, r1, #0
	bl sub_020212C0
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0223481C

	thumb_func_start ov66_02234834
ov66_02234834: ; 0x02234834
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020213A4
	pop {r4, pc}
	thumb_func_end ov66_02234834

	thumb_func_start ov66_02234850
ov66_02234850: ; 0x02234850
	push {r3, r4}
	ldrb r3, [r0, #1]
	mov r2, #1
	lsl r1, r1, #0x18
	bic r3, r2
	add r2, r3, #0
	mov r4, #1
	orr r2, r4
	strb r2, [r0, #1]
	lsr r1, r1, #0x18
	lsl r1, r1, #0x19
	ldrb r2, [r0, #1]
	mov r3, #0xfe
	lsr r1, r1, #0x18
	bic r2, r3
	orr r1, r2
	strb r1, [r0, #1]
	mov r1, #0
	strb r1, [r0, #2]
	strb r4, [r0, #3]
	pop {r3, r4}
	bx lr
	thumb_func_end ov66_02234850

	thumb_func_start ov66_0223487C
ov66_0223487C: ; 0x0223487C
	ldrb r2, [r0, #1]
	mov r1, #1
	bic r2, r1
	strb r2, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0223487C

	thumb_func_start ov66_02234888
ov66_02234888: ; 0x02234888
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov66_02234888

	thumb_func_start ov66_0223488C
ov66_0223488C: ; 0x0223488C
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	ldrb r2, [r0]
	mov r3, #0xc0
	lsr r1, r1, #0x18
	bic r2, r3
	orr r1, r2
	ldr r3, _022348A4 ; =ov66_02234D3C
	strb r1, [r0]
	bx r3
	nop
_022348A4: .word ov66_02234D3C
	thumb_func_end ov66_0223488C

	thumb_func_start ov66_022348A8
ov66_022348A8: ; 0x022348A8
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end ov66_022348A8

	thumb_func_start ov66_022348B0
ov66_022348B0: ; 0x022348B0
	push {r3, lr}
	ldr r3, _022348D4 ; =0x02258B38
	mov r2, #0
_022348B6:
	ldrh r1, [r3]
	cmp r0, r1
	bne _022348C4
	ldr r1, _022348D4 ; =0x02258B38
	lsl r0, r2, #2
	add r0, r1, r0
	pop {r3, pc}
_022348C4:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x14
	blt _022348B6
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_022348D4: .word 0x02258B38
	thumb_func_end ov66_022348B0

	thumb_func_start ov66_022348D8
ov66_022348D8: ; 0x022348D8
	cmp r0, #0
	bne _022348DE
	add r1, r1, #4
_022348DE:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022348D8

	thumb_func_start ov66_022348E4
ov66_022348E4: ; 0x022348E4
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r1, #0
	mul r0, r2
	add r1, r3, #0
	bl sub_020E2178
	lsl r0, r0, #0xc
	pop {r3, pc}
	thumb_func_end ov66_022348E4

	thumb_func_start ov66_022348FC
ov66_022348FC: ; 0x022348FC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, sp, #0
	bl ov70_0225C730
	ldr r0, [sp]
	str r0, [r4, #0]
	bl sub_020B3C0C
	str r0, [r4, #4]
	cmp r0, #0
	beq _02234936
	add r2, r0, #0
	add r2, #8
	beq _0223492A
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0223492A
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0223492C
_0223492A:
	mov r1, #0
_0223492C:
	cmp r1, #0
	beq _02234936
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _02234938
_02234936:
	mov r0, #0
_02234938:
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	bl sub_020B3C1C
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	bl sub_0201CBB0
	ldr r0, [r4, #8]
	mov r1, #0x14
	bl sub_020B3724
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov66_022348FC

	thumb_func_start ov66_02234958
ov66_02234958: ; 0x02234958
	ldr r3, _0223495C ; =FUN_02017110
	bx r3
	; .align 2, 0
_0223495C: .word sub_02017110
	thumb_func_end ov66_02234958

	thumb_func_start ov66_02234960
ov66_02234960: ; 0x02234960
	ldr r3, _02234968 ; =FUN_020B3764
	str r1, [r0, #0x10]
	ldr r0, [r0, #8]
	bx r3
	; .align 2, 0
_02234968: .word sub_020B3764
	thumb_func_end ov66_02234960

	thumb_func_start ov66_0223496C
ov66_0223496C: ; 0x0223496C
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov66_0223496C

	thumb_func_start ov66_02234970
ov66_02234970: ; 0x02234970
	ldr r3, _0223497C ; =FUN_02017258
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	nop
_0223497C: .word sub_02017258
	thumb_func_end ov66_02234970

	thumb_func_start ov66_02234980
ov66_02234980: ; 0x02234980
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	bls _022349AE
	add r4, r6, #0
_0223498E:
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	bl ov66_022349B8
	cmp r0, #0
	bne _022349A4
	mov r0, #0x90
	ldr r1, [r5, #0x10]
	mul r0, r6
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_022349A4:
	ldr r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x90
	cmp r6, r0
	blo _0223498E
_022349AE:
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_02234980

	thumb_func_start ov66_022349B8
ov66_022349B8: ; 0x022349B8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022349C2
	mov r0, #1
	bx lr
_022349C2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022349B8

	thumb_func_start ov66_022349C8
ov66_022349C8: ; 0x022349C8
	ldr r3, _022349D0 ; =FUN_020D5124
	mov r1, #0
	mov r2, #0x90
	bx r3
	; .align 2, 0
_022349D0: .word sub_020D5124
	thumb_func_end ov66_022349C8

	thumb_func_start ov66_022349D4
ov66_022349D4: ; 0x022349D4
	ldr r3, _022349DC ; =FUN_02017294
	add r0, #0xc
	bx r3
	nop
_022349DC: .word sub_02017294
	thumb_func_end ov66_022349D4

	thumb_func_start ov66_022349E0
ov66_022349E0: ; 0x022349E0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _02234A70
	ldr r0, [r5, #4]
	mov r1, #5
	bl ov63_0222BF90
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r1, #8
	bl ov63_0222BF90
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x86
	ldrh r0, [r0]
	cmp r0, r6
	bhi _02234A16
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, r4
	beq _02234A42
_02234A16:
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	bl ov66_02234CD8
	cmp r0, #1
	bne _02234A3C
	ldr r0, [r5, #8]
	bl sub_02021358
	add r1, r5, #0
	add r1, #0x85
	strb r0, [r1]
	ldr r0, [r5, #8]
	bl sub_020213D4
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1, #0]
_02234A3C:
	add r0, r5, #0
	add r0, #0x84
	strb r4, [r0]
_02234A42:
	ldr r1, _02234A74 ; =0x02258E28
	add r0, r5, #0
	lsl r2, r4, #2
	add r0, #0x86
	strh r6, [r0]
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #4]
	bl ov63_0222C0FC
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	add r1, sp, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	add r0, r5, #0
	bl ov66_022347D4
_02234A70:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02234A74: .word 0x02258E28
	thumb_func_end ov66_022349E0

	thumb_func_start ov66_02234A78
ov66_02234A78: ; 0x02234A78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020213A4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234A78

	thumb_func_start ov66_02234AA0
ov66_02234AA0: ; 0x02234AA0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r1, #9
	bl ov63_0222BF90
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #4]
	mov r1, #8
	bl ov63_0222BF90
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r6, #0
	mov r2, #8
	bl ov66_022348E4
	add r6, r0, #0
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, r4
	ldr r0, [r5, #8]
	bne _02234B00
	mov r1, #0
	bl sub_020213A4
	ldr r0, [r5, #8]
	add r5, #0x88
	ldr r1, [r5, #0]
	add r1, r6, r1
	bl sub_02021368
	pop {r4, r5, r6, pc}
_02234B00:
	mov r1, #0
	bl sub_020213A4
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_02021368
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02234AA0

	thumb_func_start ov66_02234B10
ov66_02234B10: ; 0x02234B10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #8
	bl ov63_0222BF90
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #4
	bhs _02234B30
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020213A4
	pop {r4, pc}
_02234B30:
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020213A4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234B10

	thumb_func_start ov66_02234B54
ov66_02234B54: ; 0x02234B54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #0
	bl ov66_022348D8
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r1, #9
	bl ov63_0222BF90
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #4]
	mov r1, #8
	bl ov63_0222BF90
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r6, #0
	mov r2, #4
	bl ov66_022348E4
	add r6, r0, #0
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, r4
	ldr r0, [r5, #8]
	bne _02234BB4
	mov r1, #0
	bl sub_020213A4
	ldr r0, [r5, #8]
	add r5, #0x88
	ldr r1, [r5, #0]
	add r1, r6, r1
	bl sub_02021368
	pop {r4, r5, r6, pc}
_02234BB4:
	mov r1, #0
	bl sub_020213A4
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_02021368
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02234B54

	thumb_func_start ov66_02234BC4
ov66_02234BC4: ; 0x02234BC4
	push {r3, lr}
	ldrb r1, [r0]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bne _02234BE4
	ldrb r1, [r0, #1]
	lsl r2, r1, #0x1f
	lsr r2, r2, #0x1f
	cmp r2, #1
	bne _02234BE4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x19
	lsl r2, r1, #2
	ldr r1, _02234BE8 ; =0x02258E1C
	ldr r1, [r1, r2]
	blx r1
_02234BE4:
	pop {r3, pc}
	nop
_02234BE8: .word 0x02258E1C
	thumb_func_end ov66_02234BC4

	thumb_func_start ov66_02234BEC
ov66_02234BEC: ; 0x02234BEC
	push {r4, lr}
	add r4, r0, #0
	ldrb r3, [r4, #2]
	mov r0, #0x1e
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1e
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	bne _02234C1C
	ldr r1, _02234C30 ; =0x02258B24
	lsr r2, r3, #2
	ldrb r1, [r1, r2]
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020213A4
_02234C1C:
	ldrb r1, [r4, #3]
	ldrb r0, [r4, #2]
	add r0, r0, r1
	cmp r0, #0x10
	bge _02234C2A
	strb r0, [r4, #2]
	pop {r4, pc}
_02234C2A:
	mov r0, #0
	strb r0, [r4, #2]
	pop {r4, pc}
	; .align 2, 0
_02234C30: .word 0x02258B24
	thumb_func_end ov66_02234BEC

	thumb_func_start ov66_02234C34
ov66_02234C34: ; 0x02234C34
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _02234C6E
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020213A4
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
_02234C6E:
	pop {r4, pc}
	thumb_func_end ov66_02234C34

	thumb_func_start ov66_02234C70
ov66_02234C70: ; 0x02234C70
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _02234C9E
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020213A4
	b _02234CC4
_02234C9E:
	cmp r0, #4
	bne _02234CC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov63_0222BF90
	add r1, r0, #0
	mov r0, #1
	bl ov66_022348D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021344
	mov r1, #3
	ldr r0, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020213A4
_02234CC4:
	ldrb r0, [r4, #2]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #2]
	pop {r4, pc}
	thumb_func_end ov66_02234C70

	thumb_func_start ov66_02234CD8
ov66_02234CD8: ; 0x02234CD8
	cmp r0, #0xb
	bhi _02234D04
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234CE8: ; jump table
	.short _02234D04 - _02234CE8 - 2 ; case 0
	.short _02234D04 - _02234CE8 - 2 ; case 1
	.short _02234D00 - _02234CE8 - 2 ; case 2
	.short _02234D00 - _02234CE8 - 2 ; case 3
	.short _02234D04 - _02234CE8 - 2 ; case 4
	.short _02234D00 - _02234CE8 - 2 ; case 5
	.short _02234D00 - _02234CE8 - 2 ; case 6
	.short _02234D04 - _02234CE8 - 2 ; case 7
	.short _02234D04 - _02234CE8 - 2 ; case 8
	.short _02234D04 - _02234CE8 - 2 ; case 9
	.short _02234D00 - _02234CE8 - 2 ; case 10
	.short _02234D00 - _02234CE8 - 2 ; case 11
_02234D00:
	mov r0, #1
	bx lr
_02234D04:
	mov r0, #0
	bx lr
	thumb_func_end ov66_02234CD8

	thumb_func_start ov66_02234D08
ov66_02234D08: ; 0x02234D08
	push {r4, lr}
	add r4, r0, #0
	bl ov66_022349B8
	cmp r0, #0
	beq _02234D38
	ldr r0, [r4, #8]
	bl ov66_02234D8C
	cmp r0, #0
	ldrb r1, [r4]
	bne _02234D2C
	mov r0, #0x30
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r4]
	b _02234D32
_02234D2C:
	mov r0, #0x30
	bic r1, r0
	strb r1, [r4]
_02234D32:
	add r0, r4, #0
	bl ov66_02234D3C
_02234D38:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234D08

	thumb_func_start ov66_02234D3C
ov66_02234D3C: ; 0x02234D3C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4]
	lsl r1, r0, #0x1a
	lsr r1, r1, #0x1e
	bne _02234D64
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _02234D64
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021320
	add r4, #0xc
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	pop {r4, pc}
_02234D64:
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02021320
	add r4, #0xc
	add r0, r4, #0
	mov r1, #0
	bl sub_02017348
	pop {r4, pc}
	thumb_func_end ov66_02234D3C

	thumb_func_start ov66_02234D78
ov66_02234D78: ; 0x02234D78
	push {r4, lr}
	add r4, r1, #0
	bl sub_02021430
	add r4, #0x8c
	ldr r1, [r4, #0]
	bl sub_020B3664
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02234D78

	thumb_func_start ov66_02234D8C
ov66_02234D8C: ; 0x02234D8C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r5, r0, #0
	bl sub_020213F4
	cmp r0, #0
	beq _02234DA0
	add r4, r0, #0
	add r4, #0x14
	b _02234DA2
_02234DA0:
	mov r4, #0
_02234DA2:
	add r0, r5, #0
	bl sub_020212C0
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x38
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #0
	str r0, [r2, #0]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	strh r0, [r1, #0x24]
	mov r0, #0x20
	ldrsh r2, [r4, r0]
	strh r2, [r1, #0x26]
	ldrsh r0, [r4, r0]
	strh r0, [r1, #0x28]
	ldr r0, [r4, #0x24]
	asr r0, r0, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0x24]
	asr r0, r0, #0xc
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x24]
	asr r0, r0, #0xc
	str r0, [sp, #0x34]
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	mov r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x38]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #0x38]
	mov r0, #0x1a
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x3c]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #0x3c]
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x40]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #0x40]
	mov r0, #0x20
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	add r4, r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x40]
	orr r1, r0
	sub r0, r2, r1
	str r0, [sp, #0x40]
	add r0, sp, #0
	bl sub_020BB4C8
	ldr r1, _02234EA0 ; =0x021C5B48
	add r0, sp, #0
	bl sub_020C4C88
	ldr r1, _02234EA4 ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r5, #0
	str r2, [r1, #0x7c]
	bl sub_020212EC
	bl sub_020AF4EC
	add r0, sp, #0x38
	add r1, sp, #0x24
	bl sub_0201CF7C
	cmp r0, #0
	bne _02234E98
	add sp, #0x44
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_02234E98:
	mov r0, #1
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	nop
_02234EA0: .word 0x021C5B48
_02234EA4: .word 0x021C5B0C
	thumb_func_end ov66_02234D8C

	thumb_func_start ov66_02234EA8
ov66_02234EA8: ; 0x02234EA8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x66
	add r1, r7, #0
	bl sub_02006C24
	add r1, sp, #0xc
	str r1, [sp]
	add r1, r7, #0
	mov r2, #0xdb
	mov r3, #3
	add r4, r0, #0
	bl ov66_02234F2C
	add r0, sp, #8
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl ov66_02234F2C
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x18
	mul r0, r1
	ldr r1, _02234F28 ; =0x0000FFFF
	bl sub_020E1F6C
	cmp r0, #0
	bge _02234EF6
	add r0, #0x18
_02234EF6:
	cmp r0, #0x18
	blt _02234F02
	mov r1, #0x18
	bl sub_020E1F6C
	add r0, r1, #0
_02234F02:
	add r2, sp, #4
	mov r1, #0
	str r1, [r2, #0]
	add r1, sp, #4
	strb r0, [r1]
	add r0, r2, #0
	add r1, sp, #0x30
	bl ov66_0223144C
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02234F28: .word 0x0000FFFF
	thumb_func_end ov66_02234EA8

	thumb_func_start ov66_02234F2C
ov66_02234F2C: ; 0x02234F2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r7, #0
	add r5, r2, #0
	str r7, [sp]
	add r1, sp, #0x18
	str r1, [sp, #4]
	ldr r3, [sp, #0xc]
	mov r1, #0x12
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r4, [sp, #0x30]
	bl sub_02007250
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #6
	bl sub_020E2178
	cmp r5, r0
	blt _02234F5E
	bl sub_02022974
_02234F5E:
	mov r0, #6
	add r1, r5, #0
	mul r1, r0
	ldrh r0, [r6, r1]
	cmp r0, #2
	beq _02234F74
	add r1, r6, r1
	mov r0, #4
	ldrsh r0, [r1, r0]
	mov r7, #1
	str r0, [r4, #0]
_02234F74:
	add r0, r6, #0
	bl sub_020181C4
	cmp r7, #0
	bne _02234FC0
	add r0, r5, #0
	bl sub_020996D4
	bl sub_02099764
	mov r2, #0
	add r1, r0, #0
	str r2, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_02007250
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	lsr r1, r0, #2
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bge _02234FB0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #2
	ldrsh r0, [r1, r0]
	b _02234FB8
_02234FB0:
	bl sub_02022974
	mov r0, #2
	ldrsh r0, [r5, r0]
_02234FB8:
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_020181C4
_02234FC0:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov66_02234F2C