	.include "macros/function.inc"
	.include "overlay023/ov23_02248F1C.inc"

	

	.text


	thumb_func_start ov23_02248F1C
ov23_02248F1C: ; 0x02248F1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	str r2, [sp, #0x2c]
	ldr r2, _022491C8 ; =0x02257768
	str r4, [r2, #0]
	ldr r2, [r4, #0]
	cmp r2, #8
	bls _02248F36
	b _022491C4
_02248F36:
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02248F42: ; jump table
	.short _02248F54 - _02248F42 - 2 ; case 0
	.short _02248F7E - _02248F42 - 2 ; case 1
	.short _02249084 - _02248F42 - 2 ; case 2
	.short _0224908C - _02248F42 - 2 ; case 3
	.short _022490BE - _02248F42 - 2 ; case 4
	.short _022490C6 - _02248F42 - 2 ; case 5
	.short _02249130 - _02248F42 - 2 ; case 6
	.short _0224914C - _02248F42 - 2 ; case 7
	.short _022491B8 - _02248F42 - 2 ; case 8
_02248F54:
	mov r1, #0x39
	lsl r1, r1, #4
	ldr r0, [sp, #0x2c]
	add r1, r4, r1
	bl ov23_0224944C
	add r1, r4, #0
	add r0, r4, #4
	add r1, #0x44
	bl ov23_022491CC
	mov r0, #0xeb
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov23_02249724
	ldr r0, [r4, #0]
	add sp, #0x60
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02248F7E:
	add r0, r4, #0
	bl ov23_02249584
	mov r1, #0xfa
	lsl r1, r1, #2
	mov r0, #0
	mov r3, #0xba
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r4, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r4, r2]
	add r3, #0x20
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	str r0, [sp, #0x30]
	mov r0, #0xc2
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x34]
	mov r0, #0x12
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x3c]
	lsr r0, r1, #5
	mov r6, #0
	mov r7, #0xcb
	str r1, [sp, #0x38]
	str r6, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, sp, #0x30
	strh r6, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x58]
	mov r0, #4
	str r6, [sp, #0x54]
	str r0, [sp, #0x5c]
	add r5, r4, #0
	lsl r7, r7, #2
_02249002:
	add r0, sp, #0x30
	bl sub_02021AA0
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_02021CAC
	cmp r6, #0
	bne _02249030
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021D6C
_02249030:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #8
	blt _02249002
	mov r7, #0xd3
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_02249040:
	add r0, sp, #0x30
	bl sub_02021AA0
	mov r1, #0xd3
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, r7]
	mov r1, #2
	bl sub_02021D6C
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x11
	blt _02249040
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #0]
	add sp, #0x60
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02249084:
	add r0, r2, #1
	add sp, #0x60
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0224908C:
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	ldr r0, [r4, #0]
	add sp, #0x60
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022490BE:
	add r0, r2, #1
	add sp, #0x60
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022490C6:
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r2, r4, #0
	ldr r0, [r0, #0x3c]
	add r1, r4, #4
	add r2, #0x44
	bl ov23_02249214
	mov r1, #0xcb
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x44
	add r1, r4, r1
	bl ov23_022492C8
	add r0, r4, #0
	add r0, #0xa4
	bl ov23_02249334
	mov r1, #0xd3
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0xa4
	add r1, r4, r1
	bl ov23_0224937C
	mov r3, #0xea
	lsl r3, r3, #2
	add r0, r4, r3
	str r0, [sp]
	add r0, r3, #4
	add r0, r4, r0
	str r0, [sp, #4]
	mov r0, #0x6e
	lsl r0, r0, #2
	add r1, r3, #0
	add r2, r3, #0
	sub r1, #0x18
	sub r2, #8
	sub r3, r3, #4
	ldr r0, [r4, r0]
	add r1, r4, r1
	add r2, r4, r2
	add r3, r4, r3
	bl ov23_0224966C
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
_02249130:
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _022491C4
	ldr r0, [r4, #0]
	add sp, #0x60
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0224914C:
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A4E4
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A6DC
	mov r7, #0xba
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_02249168:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02249168
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021964
	mov r0, #0x39
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0x39
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, [sp, #0x2c]
	mov r1, #7
	bl sub_02019044
	ldr r0, [sp, #0x2c]
	bl ov23_02249438
	mov r0, #0xeb
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov23_02249778
	ldr r0, [r4, #0]
	add sp, #0x60
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022491B8:
	sub r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0
	str r2, [r1, #0x6c]
	bl sub_020067D0
_022491C4:
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022491C8: .word 0x02257768
	thumb_func_end ov23_02248F1C

	thumb_func_start ov23_022491CC
ov23_022491CC: ; 0x022491CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02249210 ; =0x0225776C
	add r6, r0, #0
	add r5, r1, #0
	mov r7, #0
_022491D6:
	mov r0, #0
	str r0, [r6, #0]
	str r0, [r6, #4]
	str r0, [r5, #0]
	str r0, [r5, #4]
	str r0, [r5, #8]
	bl sub_0201D2E8
	mov r1, #0x7d
	lsl r1, r1, #2
	bl _s32_div_f
	add r1, #0x32
	str r1, [r4, #0]
	bl sub_0201D2E8
	mov r1, #0x7d
	lsl r1, r1, #2
	bl _s32_div_f
	add r1, #0x32
	str r1, [r4, #4]
	add r7, r7, #1
	add r6, #8
	add r5, #0xc
	add r4, #8
	cmp r7, #8
	blt _022491D6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249210: .word 0x0225776C
	thumb_func_end ov23_022491CC

	thumb_func_start ov23_02249214
ov23_02249214: ; 0x02249214
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r4, r2, #0
	mov r7, #0
	add r6, r5, #0
_02249220:
	add r0, r7, #0
	bl sub_02058CA0
	str r0, [r6, #0]
	add r0, r7, #0
	bl sub_02058CF4
	str r0, [r6, #4]
	add r7, r7, #1
	add r6, #8
	cmp r7, #8
	blt _02249220
	bl sub_02035E38
	cmp r0, #0
	beq _0224928A
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _0224925E
	ldr r0, [sp]
	bl sub_0205EABC
	str r0, [r5, #0]
	ldr r0, [sp]
	bl sub_0205EAC8
	str r0, [r5, #4]
	b _0224928A
_0224925E:
	ldr r7, [r5, #0]
	ldr r6, [r5, #4]
	bl sub_0203608C
	lsl r0, r0, #3
	ldr r0, [r5, r0]
	str r0, [r5, #0]
	bl sub_0203608C
	lsl r0, r0, #3
	add r0, r5, r0
	ldr r0, [r0, #4]
	str r0, [r5, #4]
	bl sub_0203608C
	lsl r0, r0, #3
	str r7, [r5, r0]
	bl sub_0203608C
	lsl r0, r0, #3
	add r0, r5, r0
	str r6, [r0, #4]
_0224928A:
	mov r6, #0
	mov r7, #0x3c
_0224928E:
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	bl ov23_02242E58
	cmp r0, #0
	bne _022492AA
	ldr r0, [r5, #0]
	sub r0, #0x20
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	sub r0, #0x40
	str r0, [r4, #4]
	str r7, [r4, #8]
	b _022492BA
_022492AA:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _022492BA
	ldr r0, [r4, #0]
	cmp r0, #0
	blt _022492BA
	sub r0, r1, #1
	str r0, [r4, #8]
_022492BA:
	add r6, r6, #1
	add r5, #8
	add r4, #0xc
	cmp r6, #8
	blt _0224928E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02249214

	thumb_func_start ov23_022492C8
ov23_022492C8: ; 0x022492C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #1
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	lsl r7, r7, #0xc
_022492D6:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0224931C
	ldr r1, [r5, #0]
	mov r0, #0x8a
	mul r0, r1
	mov r1, #7
	lsl r1, r1, #6
	bl _s32_div_f
	add r0, #0x3c
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x1a
	lsl r0, r0, #7
	lsl r1, r1, #4
	bl _s32_div_f
	add r0, #9
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r7, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021CAC
	b _02249324
_0224931C:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021CAC
_02249324:
	add r6, r6, #1
	add r5, #0xc
	add r4, r4, #4
	cmp r6, #8
	blt _022492D6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_022492C8

	thumb_func_start ov23_02249334
ov23_02249334: ; 0x02249334
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
_0224933A:
	add r0, r4, #0
	bl ov23_02242E78
	add r6, r0, #0
	add r0, r4, #0
	bl ov23_02242EE0
	add r7, r0, #0
	add r0, r4, #0
	bl ov23_02242F48
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl ov23_02242E58
	cmp r0, #0
	bne _0224936A
	sub r6, #0x20
	str r6, [r5, #0]
	sub r7, #0x40
	str r7, [r5, #4]
	ldr r0, [sp]
	b _02249370
_0224936A:
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #4]
_02249370:
	add r4, r4, #1
	str r0, [r5, #8]
	add r5, #0x10
	cmp r4, #0x11
	blt _0224933A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02249334

	thumb_func_start ov23_0224937C
ov23_0224937C: ; 0x0224937C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #1
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	lsl r7, r7, #0xc
_0224938A:
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _022493E8
	mov r0, #0x8a
	mul r0, r1
	mov r1, #7
	lsl r1, r1, #6
	bl _s32_div_f
	add r0, #0x3c
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x1a
	lsl r0, r0, #7
	lsl r1, r1, #4
	bl _s32_div_f
	add r0, #9
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r7, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _022493F0
	cmp r1, #0
	ldr r0, [r4, #0]
	beq _022493E0
	bl sub_02021D6C
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021CAC
	b _022493F0
_022493E0:
	mov r1, #0
	bl sub_02021CAC
	b _022493F0
_022493E8:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021CAC
_022493F0:
	ldr r0, [r5, #8]
	add r6, r6, #1
	str r0, [r5, #0xc]
	add r5, #0x10
	add r4, r4, #4
	cmp r6, #0x11
	blt _0224938A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224937C

	thumb_func_start ov23_02249404
ov23_02249404: ; 0x02249404
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x4e
	mov r2, #4
	ldr r0, _02249428 ; =ov23_02248F1C
	lsl r1, r1, #4
	add r3, r2, #0
	bl sub_0200679C
	bl sub_0201CED0
	mov r1, #0x6d
	lsl r1, r1, #2
	str r4, [r0, r1]
	ldr r2, [r4, #8]
	add r1, r1, #4
	str r2, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02249428: .word ov23_02248F1C
	thumb_func_end ov23_02249404

	thumb_func_start ov23_0224942C
ov23_0224942C: ; 0x0224942C
	ldr r1, [r0, #0]
	cmp r1, #5
	bne _02249436
	mov r1, #6
	str r1, [r0, #0]
_02249436:
	bx lr
	thumb_func_end ov23_0224942C

	thumb_func_start ov23_02249438
ov23_02249438: ; 0x02249438
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov23_02249438

	thumb_func_start ov23_0224944C
ov23_0224944C: ; 0x0224944C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x64
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	add r0, r5, #0
	bl ov23_02249438
	ldr r4, _02249578 ; =0x022567DC
	add r3, sp, #0x48
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	ldr r4, _0224957C ; =0x022567C0
	add r3, sp, #0x2c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	ldr r4, _02249580 ; =0x022567A4
	add r3, sp, #0x10
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #7
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	add r0, r5, #0
	mov r1, #7
	bl sub_02019EBC
	mov r0, #0x1c
	mov r1, #4
	bl sub_02006C24
	mov r1, #0x40
	str r1, [sp]
	mov r1, #0
	mov r2, #4
	add r3, r1, #0
	add r4, r0, #0
	str r2, [sp, #4]
	bl sub_02007130
	mov r1, #0
	mov r0, #5
	str r1, [sp]
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r3, #4
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	str r3, [sp, #0xc]
	bl sub_020070E8
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r3, #4
	add r0, r4, #0
	mov r1, #2
	add r2, r5, #0
	str r3, [sp, #0xc]
	bl sub_0200710C
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #4
	mov r1, #0
	bl sub_0205D8CC
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl sub_02019690
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #7
	bl sub_0205D8F4
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r3, #0x80
	str r3, [sp]
	mov r2, #4
	mov r0, #0x32
	mov r1, #0x34
	add r3, #0xc0
	str r2, [sp, #4]
	bl sub_02006E84
	mov r0, #1
	bl sub_0200F338
	add sp, #0x64
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02249578: .word 0x022567DC
_0224957C: .word 0x022567C0
_02249580: .word 0x022567A4
	thumb_func_end ov23_0224944C

	thumb_func_start ov23_02249584
ov23_02249584: ; 0x02249584
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #7
	add r6, r0, #0
	lsl r1, r1, #6
	mov r0, #0x19
	add r1, r6, r1
	mov r2, #4
	bl sub_020095C4
	mov r1, #0x6f
	lsl r1, r1, #2
	mov r7, #0xba
	str r0, [r6, r1]
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_022495A6:
	mov r0, #1
	add r1, r4, #0
	mov r2, #4
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022495A6
	mov r0, #0x1c
	mov r1, #4
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r2, #4
	mov r0, #0xba
	str r2, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0xbe
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	add r0, #0xf0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #4
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	add r1, r4, #0
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	mov r1, #0xbf
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	add r0, #0xec
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	add r1, r4, #0
	mov r2, #5
	mov r3, #0
	bl sub_02009BC4
	mov r1, #3
	lsl r1, r1, #8
	str r0, [r6, r1]
	add r0, r1, #0
	add r0, #0xe8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	add r1, r4, #0
	mov r2, #6
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A3DC
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A640
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02249584

	thumb_func_start ov23_0224966C
ov23_0224966C: ; 0x0224966C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x2c]
	str r1, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r7, r2, #0
	add r6, r3, #0
	ldr r5, [sp, #0x28]
	bl ov23_02242D60
	cmp r0, #0
	beq _022496A2
_02249688:
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl ov23_02249844
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov23_02242D60
	cmp r0, #0
	bne _02249688
_022496A2:
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _022496B4
	cmp r0, #1
	beq _022496DA
	cmp r0, #2
	beq _022496F4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022496B4:
	add r0, r4, #0
	bl ov23_022498C4
	add r2, r0, #0
	beq _02249720
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r3, #0
	ldr r0, [sp, #0xc]
	str r3, [sp, #8]
	bl sub_0201D738
	str r0, [r7, #0]
	mov r0, #1
	add sp, #0x10
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022496DA:
	ldr r0, [r7, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _02249720
	mov r0, #2
	str r0, [r6, #0]
	mov r0, #0
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022496F4:
	add r0, r4, #0
	bl ov23_02249900
	cmp r0, #0
	bne _02249720
	mov r1, #0
	ldr r0, [sp, #0xc]
	mov r2, #2
	add r3, r1, #0
	bl sub_0201C04C
	ldr r0, [sp, #0xc]
	bl sub_0201A954
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r0, #8
	blt _02249720
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r6, #0]
_02249720:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224966C

	thumb_func_start ov23_02249724
ov23_02249724: ; 0x02249724
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x64
_0224972E:
	add r0, r7, #0
	mov r1, #4
	bl sub_02023790
	add r6, r6, #1
	stmia r4!, {r0}
	cmp r6, #0x20
	blt _0224972E
	add r0, r5, #0
	mov r1, #0
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0, #0]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1, #0]
	mov r4, #0
	mov r6, #0x50
	mov r7, #4
_02249760:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02023790
	add r1, r5, #0
	add r1, #0x84
	add r4, r4, #1
	add r5, r5, #4
	str r0, [r1, #0]
	cmp r4, #2
	blt _02249760
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02249724

	thumb_func_start ov23_02249778
ov23_02249778: ; 0x02249778
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
_02249780:
	ldr r0, [r4, #0]
	bl sub_020237BC
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x20
	blt _02249780
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020237BC
	mov r4, #0
_0224979A:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0224979A
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02249778

	thumb_func_start ov23_022497B0
ov23_022497B0: ; 0x022497B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	add r0, r1, #0
	add r1, r5, #0
	add r1, #0x94
	mov r2, #0x50
	bl sub_02023DF0
	add r0, r5, #0
	add r0, #0x94
	ldrh r2, [r0]
	mov r4, #0
	ldr r0, _02249840 ; =0x0000FFFF
	add r1, r4, #0
	cmp r2, r0
	beq _022497F6
	add r7, r0, #0
	mov r0, #0xe
	add r2, r5, #0
	lsl r0, r0, #0xc
_022497DA:
	add r3, r2, #0
	add r3, #0x94
	ldrh r3, [r3]
	cmp r3, r0
	bne _022497E8
	add r4, r4, #1
	add r6, r1, #0
_022497E8:
	add r2, r2, #2
	add r3, r2, #0
	add r3, #0x94
	ldrh r3, [r3]
	add r1, r1, #1
	cmp r3, r7
	bne _022497DA
_022497F6:
	cmp r4, #2
	blt _022497FE
	bl GF_AssertFail
_022497FE:
	cmp r4, #0
	bne _02249810
	add r5, #0x84
	ldr r0, [r5, #0]
	ldr r1, [sp]
	bl sub_02023810
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249810:
	lsl r0, r6, #1
	add r0, r5, r0
	ldr r1, _02249840 ; =0x0000FFFF
	add r0, #0x94
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x84
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r1, #0x94
	bl sub_02023D28
	add r0, r5, #0
	add r0, #0x88
	add r1, r6, #1
	ldr r0, [r0, #0]
	add r5, #0x94
	lsl r1, r1, #1
	add r1, r5, r1
	bl sub_02023D28
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249840: .word 0x0000FFFF
	thumb_func_end ov23_022497B0

	thumb_func_start ov23_02249844
ov23_02249844: ; 0x02249844
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov23_022497B0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	mov r2, #0
	ldr r1, [r0, #0]
	cmp r6, #0
	ble _02249878
	add r0, r5, #0
	add r0, #0x90
	ldr r3, [r0, #0]
	add r0, r2, #0
_02249862:
	add r1, r1, #1
	cmp r1, #0x20
	bne _0224986A
	add r1, r0, #0
_0224986A:
	cmp r1, r3
	bne _02249872
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02249872:
	add r2, r2, #1
	cmp r2, r6
	blt _02249862
_02249878:
	mov r0, #0
	str r0, [sp]
	cmp r6, #0
	ble _022498BE
	add r7, r5, #0
	add r4, r5, #0
	add r7, #0x8c
_02249886:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r4, #0
	lsl r0, r0, #2
	add r1, #0x84
	ldr r0, [r5, r0]
	ldr r1, [r1, #0]
	bl sub_02023810
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0x20
	bne _022498B2
	add r1, r5, #0
	add r1, #0x8c
	mov r0, #0
	str r0, [r1, #0]
_022498B2:
	ldr r0, [sp]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp]
	cmp r0, r6
	blt _02249886
_022498BE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02249844

	thumb_func_start ov23_022498C4
ov23_022498C4: ; 0x022498C4
	add r1, r0, #0
	add r2, r0, #0
	add r1, #0x90
	add r2, #0x8c
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	cmp r2, r1
	beq _022498FA
	add r2, r0, #0
	add r2, #0x90
	ldr r2, [r2, #0]
	add r3, r2, #1
	add r2, r0, #0
	add r2, #0x90
	str r3, [r2, #0]
	add r2, r0, #0
	add r2, #0x90
	ldr r2, [r2, #0]
	cmp r2, #0x20
	bne _022498F4
	add r2, r0, #0
	mov r3, #0
	add r2, #0x90
	str r3, [r2, #0]
_022498F4:
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
_022498FA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022498C4

	thumb_func_start ov23_02249900
ov23_02249900: ; 0x02249900
	add r1, r0, #0
	add r1, #0x8c
	add r0, #0x90
	ldr r1, [r1, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	bne _02249912
	mov r0, #1
	bx lr
_02249912:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02249900

	.rodata


	.global Unk_ov23_022567A4
Unk_ov23_022567A4: ; 0x022567A4
	.incbin "incbin/overlay23_rodata.bin", 0x498, 0x4B4 - 0x498

	.global Unk_ov23_022567C0
Unk_ov23_022567C0: ; 0x022567C0
	.incbin "incbin/overlay23_rodata.bin", 0x4B4, 0x4D0 - 0x4B4

	.global Unk_ov23_022567DC
Unk_ov23_022567DC: ; 0x022567DC
	.incbin "incbin/overlay23_rodata.bin", 0x4D0, 0x1C


	.bss


	.global Unk_ov23_02257768
Unk_ov23_02257768: ; 0x02257768
	.space 0x4

	.global Unk_ov23_0225776C
Unk_ov23_0225776C: ; 0x0225776C
	.space 0x40

