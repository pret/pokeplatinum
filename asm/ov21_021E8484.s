	.include "macros/function.inc"
	.include "include/ov21_021E8484.inc"

	

	.text


	thumb_func_start ov21_021E8484
ov21_021E8484: ; 0x021E8484
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021E84FC
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E8544
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E856C
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E859C
	str r0, [r5, #0x24]
	ldr r0, _021E84CC ; =ov21_021E85A0
	str r0, [r5, #8]
	ldr r0, _021E84D0 ; =ov21_021E85DC
	str r0, [r5, #0xc]
	ldr r0, _021E84D4 ; =ov21_021E8640
	str r0, [r5, #0x10]
	ldr r0, _021E84D8 ; =ov21_021E8654
	str r0, [r5, #0x14]
	ldr r0, _021E84DC ; =ov21_021E86DC
	str r0, [r5, #0x18]
	ldr r0, _021E84E0 ; =ov21_021E870C
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E84CC: .word ov21_021E85A0
_021E84D0: .word ov21_021E85DC
_021E84D4: .word ov21_021E8640
_021E84D8: .word ov21_021E8654
_021E84DC: .word ov21_021E86DC
_021E84E0: .word ov21_021E870C
	thumb_func_end ov21_021E8484

	thumb_func_start ov21_021E84E4
ov21_021E84E4: ; 0x021E84E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021E8570
	ldr r0, [r4, #4]
	bl ov21_021E8584
	ldr r0, [r4, #0x20]
	bl ov21_021E8598
	pop {r4, pc}
	thumb_func_end ov21_021E84E4

	thumb_func_start ov21_021E84FC
ov21_021E84FC: ; 0x021E84FC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	bne _021E850E
	bl GF_AssertFail
_021E850E:
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_021E8514:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E8514
	add r0, r5, #0
	bl ov21_021D13A0
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #3
	bl ov21_021D1430
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #3
	bl ov21_021D1410
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E84FC

	thumb_func_start ov21_021E8544
ov21_021E8544: ; 0x021E8544
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021E8556
	bl GF_AssertFail
_021E8556:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E8544

	thumb_func_start ov21_021E856C
ov21_021E856C: ; 0x021E856C
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E856C

	thumb_func_start ov21_021E8570
ov21_021E8570: ; 0x021E8570
	push {r4, lr}
	add r4, r0, #0
	bne _021E857A
	bl GF_AssertFail
_021E857A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E8570

	thumb_func_start ov21_021E8584
ov21_021E8584: ; 0x021E8584
	push {r4, lr}
	add r4, r0, #0
	bne _021E858E
	bl GF_AssertFail
_021E858E:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E8584

	thumb_func_start ov21_021E8598
ov21_021E8598: ; 0x021E8598
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E8598

	thumb_func_start ov21_021E859C
ov21_021E859C: ; 0x021E859C
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E859C

	thumb_func_start ov21_021E85A0
ov21_021E85A0: ; 0x021E85A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021E85B6:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E85B6
	mov r0, #4
	str r0, [r4, #0x10]
	ldr r2, [r5, #4]
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021E886C
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021E88B8
	str r4, [r5, #8]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E85A0

	thumb_func_start ov21_021E85DC
ov21_021E85DC: ; 0x021E85DC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021E85EC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E85EC:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021E85F6
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E85F6:
	ldr r0, [r5, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E863A
	add r0, r4, #0
	bl ov21_021E88B0
	ldr r0, [r5, #8]
	bl ov21_021E33BC
	cmp r0, #0
	beq _021E8622
	ldr r0, [r5, #4]
	bl ov21_021D3998
	cmp r0, #2
	bne _021E8622
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E8CF0
_021E8622:
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E88B8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021E863A
	add r0, r5, #0
	bl ov21_021E8D3C
	mov r0, #0
	str r0, [r4, #0x14]
_021E863A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E85DC

	thumb_func_start ov21_021E8640
ov21_021E8640: ; 0x021E8640
	push {r4, lr}
	ldr r4, [r0, #8]
	add r0, r4, #0
	bl ov21_021E88D0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021E8640

	thumb_func_start ov21_021E8654
ov21_021E8654: ; 0x021E8654
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021E86D8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8670: ; jump table
	.short _021E8678 - _021E8670 - 2 ; case 0
	.short _021E8692 - _021E8670 - 2 ; case 1
	.short _021E86B0 - _021E8670 - 2 ; case 2
	.short _021E86C6 - _021E8670 - 2 ; case 3
_021E8678:
	ldr r0, [r4, #4]
	mov r1, #0x30
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0x30
	bl memset
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E86D8
_021E8692:
	ldr r2, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021E891C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021E87C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E86D8
_021E86B0:
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021E8830
	cmp r0, #0
	beq _021E86D8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E86D8
_021E86C6:
	mov r0, #0x79
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl ov21_021D25AC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E86D8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E8654

	thumb_func_start ov21_021E86DC
ov21_021E86DC: ; 0x021E86DC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r3, #8]
	add r4, r2, #0
	str r0, [sp]
	add r5, r1, #0
	ldr r0, [r4, #8]
	ldr r7, [r5, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E8708
	ldr r2, [sp]
	ldr r3, [r5, #4]
	add r0, r6, #0
	add r1, r7, #0
	bl ov21_021E8CBC
	add r0, r6, #0
	add r1, r4, #0
	bl ov21_021E8D04
_021E8708:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E86DC

	thumb_func_start ov21_021E870C
ov21_021E870C: ; 0x021E870C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #4
	bhi _021E878E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8728: ; jump table
	.short _021E8732 - _021E8728 - 2 ; case 0
	.short _021E8754 - _021E8728 - 2 ; case 1
	.short _021E876A - _021E8728 - 2 ; case 2
	.short _021E877C - _021E8728 - 2 ; case 3
	.short _021E878A - _021E8728 - 2 ; case 4
_021E8732:
	mov r0, #0x79
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	bl ov21_021D25AC
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #0
	bl ov21_021E87C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E878E
_021E8754:
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0
	bl ov21_021E8830
	cmp r0, #0
	beq _021E878E
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E878E
_021E876A:
	ldr r2, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021E894C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E878E
_021E877C:
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E878E
_021E878A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E878E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E870C

	thumb_func_start ov21_021E8794
ov21_021E8794: ; 0x021E8794
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021FE0
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02012AF0
	pop {r4, pc}
	thumb_func_end ov21_021E8794

	thumb_func_start ov21_021E87AC
ov21_021E87AC: ; 0x021E87AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021FE0
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	pop {r4, pc}
	thumb_func_end ov21_021E87AC

	thumb_func_start ov21_021E87C4
ov21_021E87C4: ; 0x021E87C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021E8794
	ldr r0, [r4, #8]
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E882C
	cmp r6, #0
	beq _021E8808
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2c
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	mov r1, #1
	str r1, [sp, #0x10]
	mov r0, #0x19
	ldr r2, [r5, #0]
	lsl r0, r0, #4
	add r0, r2, r0
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E8808:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2c
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	mov r1, #1
	str r1, [sp, #0x10]
	mov r0, #0x19
	ldr r3, [r5, #0]
	lsl r0, r0, #4
	add r0, r3, r0
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021E882C:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E87C4

	thumb_func_start ov21_021E8830
ov21_021E8830: ; 0x021E8830
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r2, #8]
	add r5, r1, #0
	add r4, r3, #0
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E8850
	mov r0, #0x19
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov21_021D2424
	b _021E8856
_021E8850:
	mov r0, #2
	bl sub_0200AC1C
_021E8856:
	cmp r0, #0
	beq _021E8868
	cmp r4, #0
	beq _021E8864
	add r0, r6, #0
	bl ov21_021E87AC
_021E8864:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E8868:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E8830

	thumb_func_start ov21_021E886C
ov21_021E886C: ; 0x021E886C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #4
	bl sub_02018144
	str r0, [r5, #4]
	mov r0, #0xf8
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x68
	mov r2, #0xb8
	mov r3, #8
	bl ov21_021D154C
	str r4, [r5, #8]
	str r5, [r5, #0xc]
	str r6, [sp]
	add r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021E88AC ; =ov21_021E88E8
	mov r1, #1
	add r3, #8
	bl sub_02023FCC
	str r0, [r5, #0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E88AC: .word ov21_021E88E8
	thumb_func_end ov21_021E886C

	thumb_func_start ov21_021E88B0
ov21_021E88B0: ; 0x021E88B0
	mov r1, #3
	str r1, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E88B0

	thumb_func_start ov21_021E88B8
ov21_021E88B8: ; 0x021E88B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0202404C
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021E88CC
	mov r0, #2
	str r0, [r4, #0x10]
_021E88CC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E88B8

	thumb_func_start ov21_021E88D0
ov21_021E88D0: ; 0x021E88D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02024034
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E88D0

	thumb_func_start ov21_021E88E8
ov21_021E88E8: ; 0x021E88E8
	push {r4, lr}
	ldr r4, [r2, #4]
	ldr r3, [r2, #0]
	lsl r2, r0, #2
	add r2, r4, r2
	str r1, [r2, #0x10]
	cmp r1, #0
	beq _021E88FE
	cmp r1, #2
	beq _021E8910
	pop {r4, pc}
_021E88FE:
	cmp r0, #0
	bne _021E8918
	ldr r0, [r3, #8]
	mov r1, #1
	bl ov21_021E33B4
	mov r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_021E8910:
	cmp r0, #0
	bne _021E8918
	mov r0, #1
	str r0, [r4, #0x14]
_021E8918:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E88E8

	thumb_func_start ov21_021E891C
ov21_021E891C: ; 0x021E891C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021E898C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E89F4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E8AA8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E8B40
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E891C

	thumb_func_start ov21_021E894C
ov21_021E894C: ; 0x021E894C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	add r4, r1, #0
	str r2, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #9
	mov r2, #4
	mov r3, #0x80
	bl ov21_021D276C
	add r0, r5, #0
	bl ov21_021E8B34
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E8BDC
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E8A74
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021E8986
	bl sub_020181C4
_021E8986:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E894C

	thumb_func_start ov21_021E898C
ov21_021E898C: ; 0x021E898C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x22
	mov r3, #6
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x3a
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r2]
	mov r1, #6
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	mov r1, #6
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E898C

	thumb_func_start ov21_021E89F4
ov21_021E89F4: ; 0x021E89F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021E8A68 ; =0x0000332E
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r2, #0x66
	mov r3, #1
	bl sub_02009A4C
	str r0, [r5, #8]
	bl sub_0200A3DC
	ldr r0, [r5, #8]
	bl sub_02009D4C
	ldr r0, _021E8A6C ; =0x0000332C
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x64
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x10]
	ldr r0, _021E8A70 ; =0x0000332D
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x65
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x14]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E8A68: .word 0x0000332E
_021E8A6C: .word 0x0000332C
_021E8A70: .word 0x0000332D
	thumb_func_end ov21_021E89F4

	thumb_func_start ov21_021E8A74
ov21_021E8A74: ; 0x021E8A74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #8]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x10]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x14]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E8A74

	thumb_func_start ov21_021E8AA8
ov21_021E8AA8: ; 0x021E8AA8
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1, #0]
	ldr r3, _021E8B2C ; =0x0000332D
	add r5, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #5
	lsl r0, r0, #6
	add r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r4, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r2, _021E8B30 ; =0x0000083F
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x4c
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #9
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x1f
	str r0, [sp, #0x40]
	mov r0, #2
	str r0, [sp, #0x44]
	lsl r0, r0, #0x12
	str r0, [sp, #0x34]
	mov r0, #3
	lsl r1, r1, #0x10
	lsl r0, r0, #0x12
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl sub_02021B90
	mov r1, #2
	str r0, [r5, #0]
	bl sub_02021D6C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021E8B2C: .word 0x0000332D
_021E8B30: .word 0x0000083F
	thumb_func_end ov21_021E8AA8

	thumb_func_start ov21_021E8B34
ov21_021E8B34: ; 0x021E8B34
	ldr r3, _021E8B3C ; =sub_02021BD4
	ldr r0, [r0, #0]
	bx r3
	nop
_021E8B3C: .word sub_02021BD4
	thumb_func_end ov21_021E8B34

	thumb_func_start ov21_021E8B40
ov21_021E8B40: ; 0x021E8B40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r2, #0
	ldr r4, [r1, #0]
	cmp r0, #0
	bne _021E8B54
	bl GF_AssertFail
_021E8B54:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021E8BD4 ; =0x0000083F
	bl sub_02009DC8
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #8]
	mov r1, #0
	bl sub_0200A72C
	mov r1, #7
	mvn r1, r1
	str r1, [sp, #0x1c]
	mov r1, #2
	mov r2, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0x20]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	str r6, [sp, #0x2c]
	bl sub_0201FAB4
	add r7, r0, #0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x10
	mov r2, #2
	bl ov21_021D4D6C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E8BD8 ; =0x000002B9
	add r1, r6, #0
	mov r3, #0x65
	bl ov21_021D4DAC
	lsr r0, r0, #1
	neg r0, r0
	str r6, [sp, #0xc]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	str r0, [sp, #0x14]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #4]
	ldr r0, [r0, #0]
	add r1, r7, #4
	bl sub_02012A60
	add r0, r6, #0
	bl ov21_021D4DA0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E8BD4: .word 0x0000083F
_021E8BD8: .word 0x000002B9
	thumb_func_end ov21_021E8B40

	thumb_func_start ov21_021E8BDC
ov21_021E8BDC: ; 0x021E8BDC
	ldr r3, _021E8BE4 ; =ov21_021D4D1C
	ldr r0, [r0, #4]
	bx r3
	nop
_021E8BE4: .word ov21_021D4D1C
	thumb_func_end ov21_021E8BDC

	thumb_func_start ov21_021E8BE8
ov21_021E8BE8: ; 0x021E8BE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	add r1, r3, #0
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x30]
	ldr r6, [sp, #0x40]
	mov r5, #0
	bl ov21_021D144C
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x38]
	bl ov21_021E8C94
	ldr r0, [sp, #8]
	bl sub_02021E74
	cmp r0, #3
	bhi _021E8C5A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8C26: ; jump table
	.short _021E8C2E - _021E8C26 - 2 ; case 0
	.short _021E8C2E - _021E8C26 - 2 ; case 1
	.short _021E8C3E - _021E8C26 - 2 ; case 2
	.short _021E8C4C - _021E8C26 - 2 ; case 3
_021E8C2E:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021E8C5A
	mov r0, #0
	mov r5, #1
	mov r7, #9
	str r0, [r4, #0]
	b _021E8C5A
_021E8C3E:
	ldr r0, [r4, #0]
	cmp r0, #1
	beq _021E8C5A
	mov r5, #1
	mov r7, #0xa
	str r5, [r4, #0]
	b _021E8C5A
_021E8C4C:
	ldr r0, [r4, #0]
	cmp r0, #2
	beq _021E8C5A
	mov r0, #2
	mov r5, #1
	mov r7, #8
	str r0, [r4, #0]
_021E8C5A:
	cmp r5, #0
	beq _021E8C90
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _021E8C68
	bl sub_020181C4
_021E8C68:
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x34]
	ldr r0, [r0, #0]
	add r1, r7, #0
	add r2, sp, #0x10
	bl ov21_021D27E0
	str r0, [r6, #0]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	ldr r2, [r2, #0xc]
	mov r0, #0x1f
	lsl r1, r1, #5
	mov r3, #0x20
	bl sub_0201DC68
	cmp r0, #0
	bne _021E8C90
	bl GF_AssertFail
_021E8C90:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E8BE8

	thumb_func_start ov21_021E8C94
ov21_021E8C94: ; 0x021E8C94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	bl ov21_021D1498
	add r0, r5, #0
	bl sub_02021E74
	cmp r0, #2
	ldr r0, [r4, #0]
	bge _021E8CB4
	add r1, r6, #0
	bl sub_02012AC0
	pop {r4, r5, r6, pc}
_021E8CB4:
	ldr r1, [sp, #0x10]
	bl sub_02012AC0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E8C94

	thumb_func_start ov21_021E8CBC
ov21_021E8CBC: ; 0x021E8CBC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r1, #0
	mov r1, #7
	mvn r1, r1
	add r4, r2, #0
	str r1, [sp]
	mov r2, #4
	add r1, r5, #0
	str r2, [sp, #4]
	add r1, #0x28
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r1, #1
	str r1, [sp, #0x14]
	add r1, r5, #0
	add r1, #0x2c
	str r1, [sp, #0x18]
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	ldr r3, [r4, #0x10]
	bl ov21_021E8BE8
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov21_021E8CBC

	thumb_func_start ov21_021E8CF0
ov21_021E8CF0: ; 0x021E8CF0
	ldr r1, _021E8D00 ; =0x021BF67C
	ldr r2, [r1, #0x44]
	mov r1, #1
	tst r2, r1
	beq _021E8CFC
	str r1, [r0, #0x14]
_021E8CFC:
	bx lr
	nop
_021E8D00: .word 0x021BF67C
	thumb_func_end ov21_021E8CF0

	thumb_func_start ov21_021E8D04
ov21_021E8D04: ; 0x021E8D04
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r1, #8]
	bl ov21_021E33BC
	cmp r0, #1
	bne _021E8D24
	mov r0, #0x40
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x90
	mov r3, #0xe4
	bl ov21_021E8D28
_021E8D24:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021E8D04

	thumb_func_start ov21_021E8D28
ov21_021E8D28: ; 0x021E8D28
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r0, [r0, #0]
	bl ov21_021D2574
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E8D28

	thumb_func_start ov21_021E8D3C
ov21_021E8D3C: ; 0x021E8D3C
	ldr r3, _021E8D44 ; =ov21_021DF7A0
	ldr r0, [r0, #0xc]
	mov r1, #1
	bx r3
	; .align 2, 0
_021E8D44: .word ov21_021DF7A0
	thumb_func_end ov21_021E8D3C