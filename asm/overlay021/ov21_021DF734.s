	.include "macros/function.inc"
	.include "overlay021/ov21_021DF734.inc"

	

	.text


	thumb_func_start ov21_021DF734
ov21_021DF734: ; 0x021DF734
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	bl ov21_021DF7CC
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021DF80C
	str r4, [r5, #0]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0x20]
	bl ov21_021DF86C
	str r0, [r5, #0x24]
	ldr r0, _021DF774 ; =ov21_021DF888
	str r0, [r5, #8]
	ldr r0, _021DF778 ; =ov21_021DF8B0
	str r0, [r5, #0xc]
	ldr r0, _021DF77C ; =ov21_021DF8C0
	str r0, [r5, #0x10]
	ldr r0, _021DF780 ; =ov21_021DF8C4
	str r0, [r5, #0x14]
	ldr r0, _021DF784 ; =ov21_021DF958
	str r0, [r5, #0x18]
	ldr r0, _021DF788 ; =ov21_021DFA18
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DF774: .word ov21_021DF888
_021DF778: .word ov21_021DF8B0
_021DF77C: .word ov21_021DF8C0
_021DF780: .word ov21_021DF8C4
_021DF784: .word ov21_021DF958
_021DF788: .word ov21_021DFA18
	thumb_func_end ov21_021DF734

	thumb_func_start ov21_021DF78C
ov21_021DF78C: ; 0x021DF78C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021DF844
	ldr r0, [r4, #4]
	bl ov21_021DF858
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF78C

	thumb_func_start ov21_021DF7A0
ov21_021DF7A0: ; 0x021DF7A0
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0]
	ldr r0, [r0, #4]
	add r2, r1, #0
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021DF7B2
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DF7B2:
	ldr r5, [r4, #0x14]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x10]
	add r1, r5, #0
	bl ov21_021DF870
	str r0, [r4, #0x14]
	cmp r5, r0
	beq _021DF7C8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DF7C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DF7A0

	thumb_func_start ov21_021DF7CC
ov21_021DF7CC: ; 0x021DF7CC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bne _021DF7DE
	bl GF_AssertFail
_021DF7DE:
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021DF7E4:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021DF7E4
	add r0, r5, #0
	bl ov21_021D138C
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #5
	bl ov21_021D1410
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF7CC

	thumb_func_start ov21_021DF80C
ov21_021DF80C: ; 0x021DF80C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	bne _021DF81E
	bl GF_AssertFail
_021DF81E:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DF80C

	thumb_func_start ov21_021DF844
ov21_021DF844: ; 0x021DF844
	push {r4, lr}
	add r4, r0, #0
	bne _021DF84E
	bl GF_AssertFail
_021DF84E:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF844

	thumb_func_start ov21_021DF858
ov21_021DF858: ; 0x021DF858
	push {r4, lr}
	add r4, r0, #0
	bne _021DF862
	bl GF_AssertFail
_021DF862:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF858

	thumb_func_start ov21_021DF86C
ov21_021DF86C: ; 0x021DF86C
	mov r0, #0
	bx lr
	thumb_func_end ov21_021DF86C

	thumb_func_start ov21_021DF870
ov21_021DF870: ; 0x021DF870
	cmp r2, #0
	ble _021DF87E
	add r2, r1, r2
	cmp r2, r3
	blt _021DF884
	mov r2, #0
	b _021DF884
_021DF87E:
	add r0, r1, r2
	bpl _021DF884
	sub r2, r3, #1
_021DF884:
	add r0, r2, #0
	bx lr
	thumb_func_end ov21_021DF870

	thumb_func_start ov21_021DF888
ov21_021DF888: ; 0x021DF888
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	add r5, r0, #0
	add r1, r4, #0
	bl ov21_021E01CC
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E0268
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DF888

	thumb_func_start ov21_021DF8B0
ov21_021DF8B0: ; 0x021DF8B0
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _021DF8BA
	mov r0, #1
	bx lr
_021DF8BA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021DF8B0

	thumb_func_start ov21_021DF8C0
ov21_021DF8C0: ; 0x021DF8C0
	mov r0, #1
	bx lr
	thumb_func_end ov21_021DF8C0

	thumb_func_start ov21_021DF8C4
ov21_021DF8C4: ; 0x021DF8C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021DF94E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DF8E0: ; jump table
	.short _021DF8E8 - _021DF8E0 - 2 ; case 0
	.short _021DF910 - _021DF8E0 - 2 ; case 1
	.short _021DF92E - _021DF8E0 - 2 ; case 2
	.short _021DF944 - _021DF8E0 - 2 ; case 3
_021DF8E8:
	ldr r0, [r4, #4]
	mov r1, #0xd0
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0xd0
	bl memset
	ldr r0, [r4, #8]
	ldr r1, [r7, #0xc]
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DF94E
_021DF910:
	ldr r3, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021DFA84
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021DFF38
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DF94E
_021DF92E:
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021DFFA8
	cmp r0, #0
	beq _021DF94E
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DF94E
_021DF944:
	ldr r0, _021DF954 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DF94E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF954: .word 0x04000050
	thumb_func_end ov21_021DF8C4

	thumb_func_start ov21_021DF958
ov21_021DF958: ; 0x021DF958
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #0
	beq _021DF974
	cmp r0, #1
	beq _021DF9C0
	cmp r0, #2
	beq _021DF9D8
	b _021DFA04
_021DF974:
	add r0, r6, #0
	add r0, #0xcc
	ldr r1, [r7, #0x14]
	ldr r0, [r0, #0]
	cmp r1, r0
	beq _021DFA08
	add r0, r6, #0
	add r0, #0xcc
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r6, #0
	add r1, r2, r1
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021E0094
	add r0, r6, #0
	bl ov21_021E0C10
	mov r0, #1
	str r0, [r5, #4]
	ldr r0, _021DFA14 ; =0x0000068B
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DFA08
_021DF9C0:
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021E00B8
	cmp r0, #1
	bne _021DFA08
	mov r0, #1
	str r0, [r5, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DFA08
_021DF9D8:
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _021DFA08
	ldr r0, [r7, #0xc]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [r7, #0x14]
	str r0, [sp, #4]
	ldr r3, [r4, #4]
	add r0, r6, #0
	bl ov21_021E0944
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov21_021DFBB4
	mov r0, #0
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r4, #0]
	b _021DFA08
_021DFA04:
	bl GF_AssertFail
_021DFA08:
	add r0, r6, #0
	bl ov21_021E0C30
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DFA14: .word 0x0000068B
	thumb_func_end ov21_021DF958

	thumb_func_start ov21_021DFA18
ov21_021DFA18: ; 0x021DFA18
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021DFA7E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DFA32: ; jump table
	.short _021DFA3C - _021DFA32 - 2 ; case 0
	.short _021DFA4C - _021DFA32 - 2 ; case 1
	.short _021DFA60 - _021DFA32 - 2 ; case 2
	.short _021DFA6E - _021DFA32 - 2 ; case 3
	.short _021DFA7A - _021DFA32 - 2 ; case 4
_021DFA3C:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021DFF38
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DFA7E
_021DFA4C:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021DFFA8
	cmp r0, #0
	beq _021DFA7E
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DFA7E
_021DFA60:
	add r1, r3, #0
	bl ov21_021DFACC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DFA7E
_021DFA6E:
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DFA7E
_021DFA7A:
	mov r0, #1
	pop {r4, pc}
_021DFA7E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DFA18

	thumb_func_start ov21_021DFA84
ov21_021DFA84: ; 0x021DFA84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r6, r3, #0
	add r4, r2, #0
	bl ov21_021DFB50
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov21_021DFD1C
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021DFAE8
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov21_021DFE0C
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [r4, #0x14]
	add r2, r4, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r3, r6, #0
	bl ov21_021E08D0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DFA84

	thumb_func_start ov21_021DFACC
ov21_021DFACC: ; 0x021DFACC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021E0BF8
	add r0, r5, #0
	bl ov21_021DFF18
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DFDC8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DFACC

	thumb_func_start ov21_021DFAE8
ov21_021DFAE8: ; 0x021DFAE8
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
	mov r1, #0x21
	mov r3, #3
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x32
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r2]
	mov r1, #3
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
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DFAE8

	thumb_func_start ov21_021DFB50
ov21_021DFB50: ; 0x021DFB50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	add r5, r1, #0
	bl ov21_021D37BC
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [r4, #0x14]
	add r2, r4, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r7, #0
	bl ov21_021DFBEC
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	ldr r3, [r4, #0x10]
	mov r2, #1
	bl ov21_021DF870
	ldr r1, [r4, #0xc]
	add r2, r4, #0
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r3, r7, #0
	bl ov21_021DFBEC
	mov r4, #0
	mov r6, #1
_021DFBA0:
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021D2280
	add r4, r4, #1
	cmp r4, #4
	blt _021DFBA0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DFB50

	thumb_func_start ov21_021DFBB4
ov21_021DFBB4: ; 0x021DFBB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r1, #0
	bl ov21_021D37BC
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	ldr r3, [r4, #0x10]
	mov r2, #1
	bl ov21_021DF870
	ldr r1, [r4, #0xc]
	add r2, r4, #0
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov21_021DFBEC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DFBB4

	thumb_func_start ov21_021DFBEC
ov21_021DFBEC: ; 0x021DFBEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, [sp, #0x30]
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x2c]
	cmp r5, #2
	ble _021DFC04
	bl GF_AssertFail
_021DFC04:
	ldr r0, [sp, #0x28]
	cmp r0, #0xc
	bhi _021DFCF8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DFC16: ; jump table
	.short _021DFC30 - _021DFC16 - 2 ; case 0
	.short _021DFC30 - _021DFC16 - 2 ; case 1
	.short _021DFC30 - _021DFC16 - 2 ; case 2
	.short _021DFC30 - _021DFC16 - 2 ; case 3
	.short _021DFC6C - _021DFC16 - 2 ; case 4
	.short _021DFC80 - _021DFC16 - 2 ; case 5
	.short _021DFC44 - _021DFC16 - 2 ; case 6
	.short _021DFC58 - _021DFC16 - 2 ; case 7
	.short _021DFC94 - _021DFC16 - 2 ; case 8
	.short _021DFCA8 - _021DFC16 - 2 ; case 9
	.short _021DFCBC - _021DFC16 - 2 ; case 10
	.short _021DFCD0 - _021DFC16 - 2 ; case 11
	.short _021DFCE4 - _021DFC16 - 2 ; case 12
_021DFC30:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E0354
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFC44:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E03EC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFC58:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E0478
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFC6C:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E0504
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFC80:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E0590
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFC94:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E061C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFCA8:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E06A8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFCBC:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E072C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFCD0:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E07B8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFCE4:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E0844
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFCF8:
	bl GF_AssertFail
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DFBEC

	thumb_func_start ov21_021DFD00
ov21_021DFD00: ; 0x021DFD00
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021DFD08:
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021D2280
	add r4, r4, #1
	cmp r4, #4
	blt _021DFD08
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021DFD00

	thumb_func_start ov21_021DFD1C
ov21_021DFD1C: ; 0x021DFD1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021DFDB8 ; =0x0000372A
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0x7a
	bl sub_02009A4C
	str r0, [r5, #0x10]
	bl sub_0200A3DC
	ldr r0, [r5, #0x10]
	bl sub_02009D4C
	ldr r0, _021DFDBC ; =0x000036C6
	add r1, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x16
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x14]
	bl sub_0200A640
	ldr r0, [r5, #0x14]
	bl sub_02009D4C
	ldr r0, _021DFDC0 ; =0x0000372B
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x7b
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x18]
	ldr r0, _021DFDC4 ; =0x00003729
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x79
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x1c]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DFDB8: .word 0x0000372A
_021DFDBC: .word 0x000036C6
_021DFDC0: .word 0x0000372B
_021DFDC4: .word 0x00003729
	thumb_func_end ov21_021DFD1C

	thumb_func_start ov21_021DFDC8
ov21_021DFDC8: ; 0x021DFDC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	ldr r0, [r5, #0x14]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x10]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x14]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DFDC8

	thumb_func_start ov21_021DFE0C
ov21_021DFE0C: ; 0x021DFE0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r3, #0
	ldr r4, [r1, #0]
	ldr r3, _021DFF14 ; =0x00003729
	add r6, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #5
	lsl r0, r0, #6
	str r2, [sp, #0x2c]
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
	add r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x58
	sub r2, #0x63
	add r3, r3, #2
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r4, #0
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	mov r0, #0x20
	str r0, [sp, #0x4c]
	mov r0, #1
	str r5, [sp, #0x54]
	str r0, [sp, #0x50]
	str r4, [sp, #0x40]
	str r4, [sp, #0x44]
	add r5, r6, #0
	mov r7, #0x1f
_021DFE7A:
	add r0, r4, #0
	add r1, sp, #0x34
	add r2, sp, #0x30
	bl ov21_021E0B24
	ldr r0, [sp, #0x34]
	lsl r0, r0, #0xc
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x30]
	add r0, #8
	lsl r0, r0, #0xc
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	bl sub_02021B90
	str r0, [r5, #0]
	lsr r1, r4, #0x1f
	lsl r0, r4, #0x1f
	sub r0, r0, r1
	ror r0, r7
	add r0, r1, r0
	ldr r0, [r5, #0]
	bne _021DFEB0
	mov r1, #0
	bl sub_02021D6C
	b _021DFEB6
_021DFEB0:
	mov r1, #2
	bl sub_02021D6C
_021DFEB6:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021DFE7A
	mov r0, #0x3e
	lsl r0, r0, #0xe
	str r0, [sp, #0x40]
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x44]
	mov r0, #0
	str r0, [sp, #0x4c]
	add r0, sp, #0x38
	bl sub_02021B90
	add r1, r6, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r6, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021D6C
	add r0, r6, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021CC8
	add r0, r6, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021E80
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bgt _021DFF10
	add r6, #0xbc
	ldr r0, [r6, #0]
	mov r1, #0
	bl sub_02021CAC
_021DFF10:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DFF14: .word 0x00003729
	thumb_func_end ov21_021DFE0C

	thumb_func_start ov21_021DFF18
ov21_021DFF18: ; 0x021DFF18
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021DFF20:
	ldr r0, [r5, #0]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021DFF20
	add r6, #0xbc
	ldr r0, [r6, #0]
	bl sub_02021BD4
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DFF18

	thumb_func_start ov21_021DFF38
ov21_021DFF38: ; 0x021DFF38
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021DFFF8
	ldr r0, [r4, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DFF9E
	cmp r6, #0
	beq _021DFF7A
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2b
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	b _021DFF9E
_021DFF7A:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2b
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021DFF9E:
	add r0, r5, #0
	bl ov21_021E0078
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021DFF38

	thumb_func_start ov21_021DFFA8
ov21_021DFFA8: ; 0x021DFFA8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r2, #8]
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5, #0]
	beq _021DFFC8
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	b _021DFFD2
_021DFFC8:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
_021DFFD2:
	add r4, r0, #0
	cmp r4, #1
	bne _021DFFEC
	cmp r6, #1
	bne _021DFFE4
	add r0, r7, #0
	bl ov21_021E0038
	b _021DFFF2
_021DFFE4:
	add r0, r5, #0
	bl ov21_021DFD00
	b _021DFFF2
_021DFFEC:
	add r0, r5, #0
	bl ov21_021E0078
_021DFFF2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DFFA8

	thumb_func_start ov21_021DFFF8
ov21_021DFFF8: ; 0x021DFFF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	mov r7, #1
_021E0002:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl sub_02021FE0
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021E0002
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021FE0
	mov r4, #0
	mov r6, #1
_021E0022:
	ldr r0, [r5, #0x20]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E0022
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DFFF8

	thumb_func_start ov21_021E0038
ov21_021E0038: ; 0x021E0038
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_021E0042:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl sub_02021FE0
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021E0042
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021FE0
	mov r4, #0
	add r6, r4, #0
_021E0062:
	ldr r0, [r5, #0x20]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E0062
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0038

	thumb_func_start ov21_021E0078
ov21_021E0078: ; 0x021E0078
	push {r4, r5, r6, lr}
	mov r6, #0x5b
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021E0082:
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r1, r0, r6
	bl ov21_021D251C
	add r4, r4, #1
	cmp r4, #4
	blt _021E0082
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E0078

	thumb_func_start ov21_021E0094
ov21_021E0094: ; 0x021E0094
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xff
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mvn r7, r7
_021E00A0:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	str r4, [sp]
	bl ov21_021E00F4
	add r4, r4, #1
	cmp r4, #4
	blt _021E00A0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0094

	thumb_func_start ov21_021E00B8
ov21_021E00B8: ; 0x021E00B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _021E00C8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E00C8:
	mov r4, #0
_021E00CA:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021E015C
	add r4, r4, #1
	add r7, r0, #0
	cmp r4, #4
	blt _021E00CA
	mov r4, #0
_021E00DE:
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0]
	bl sub_02012938
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E00DE
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E00B8

	thumb_func_start ov21_021E00F4
ov21_021E00F4: ; 0x021E00F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r7, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x38]
	cmp r0, #0
	bne _021E010E
	add r4, r5, #0
	b _021E0114
_021E010E:
	sub r4, r5, #2
	bpl _021E0114
	add r4, r4, #4
_021E0114:
	add r0, r5, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov21_021E0B24
	ldr r0, [r7, #0]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	add r3, r4, #0
	bl ov21_021D2250
	add r1, r6, #0
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r0, #0x10
	str r3, [sp]
	str r0, [sp, #4]
	ldr r4, [sp, #0xc]
	add r1, #0x28
	lsl r0, r5, #5
	add r0, r1, r0
	ldr r1, [sp, #8]
	add r3, r3, r4
	add r1, r2, r1
	bl ov21_021D2648
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	sub r1, r1, r0
	lsl r0, r5, #2
	add r0, r6, r0
	add r0, #0xa8
	str r1, [r0, #0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E00F4

	thumb_func_start ov21_021E015C
ov21_021E015C: ; 0x021E015C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r4, r2, #0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r0, #0
	beq _021E0176
	sub r4, r4, #2
	bpl _021E0176
	add r4, r4, #4
_021E0176:
	ldr r0, [sp, #4]
	add r7, r5, #0
	lsl r6, r0, #5
	add r7, #0x28
	add r0, r7, r6
	bl ov21_021D2664
	str r0, [sp, #8]
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0x2c
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r3, [r2, r6]
	ldr r2, [sp, #4]
	ldr r0, [r0, #0]
	lsl r2, r2, #2
	add r2, r5, r2
	add r2, #0xa8
	ldr r2, [r2, #0]
	ldr r1, [r7, r6]
	add r2, r3, r2
	add r3, r4, #0
	bl ov21_021D222C
	ldr r0, [r7, r6]
	add r1, sp, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, r6]
	add r0, #8
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl sub_02021C50
	ldr r0, [sp, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E015C

	thumb_func_start ov21_021E01CC
ov21_021E01CC: ; 0x021E01CC
	push {r3, lr}
	ldr r2, _021E0264 ; =0x000001A6
	cmp r0, r2
	bgt _021E020A
	bge _021E023E
	add r3, r2, #0
	sub r3, #0x24
	cmp r0, r3
	bgt _021E01EA
	sub r2, #0x24
	cmp r0, r2
	bge _021E024E
	cmp r0, #0xc9
	beq _021E023A
	b _021E025E
_021E01EA:
	add r3, r2, #0
	sub r3, #9
	cmp r0, r3
	bgt _021E025E
	add r3, r2, #0
	sub r3, #0xa
	cmp r0, r3
	blt _021E025E
	add r3, r2, #0
	sub r3, #0xa
	cmp r0, r3
	beq _021E0246
	sub r2, #9
	cmp r0, r2
	beq _021E024A
	b _021E025E
_021E020A:
	add r3, r2, #0
	add r3, #0x39
	cmp r0, r3
	bgt _021E0222
	add r3, r2, #0
	add r3, #0x39
	cmp r0, r3
	bge _021E025A
	add r2, r2, #1
	cmp r0, r2
	beq _021E0242
	b _021E025E
_021E0222:
	add r3, r2, #0
	add r3, #0x41
	cmp r0, r3
	bgt _021E0232
	add r2, #0x41
	cmp r0, r2
	beq _021E0256
	b _021E025E
_021E0232:
	add r2, #0x46
	cmp r0, r2
	beq _021E0252
	b _021E025E
_021E023A:
	mov r0, #8
	pop {r3, pc}
_021E023E:
	mov r0, #4
	pop {r3, pc}
_021E0242:
	mov r0, #5
	pop {r3, pc}
_021E0246:
	mov r0, #6
	pop {r3, pc}
_021E024A:
	mov r0, #7
	pop {r3, pc}
_021E024E:
	mov r0, #9
	pop {r3, pc}
_021E0252:
	mov r0, #0xa
	pop {r3, pc}
_021E0256:
	mov r0, #0xb
	pop {r3, pc}
_021E025A:
	mov r0, #0xc
	pop {r3, pc}
_021E025E:
	bl ov21_021E02F0
	pop {r3, pc}
	; .align 2, 0
_021E0264: .word 0x000001A6
	thumb_func_end ov21_021E01CC

	thumb_func_start ov21_021E0268
ov21_021E0268: ; 0x021E0268
	push {r3, lr}
	add r2, r0, #0
	ldr r0, _021E02EC ; =0x000001A6
	cmp r2, r0
	bgt _021E02A8
	bge _021E02D6
	add r3, r0, #0
	sub r3, #0x24
	cmp r2, r3
	bgt _021E0288
	sub r0, #0x24
	cmp r2, r0
	bge _021E02D6
	cmp r2, #0xc9
	beq _021E02D6
	b _021E02E0
_021E0288:
	add r3, r0, #0
	sub r3, #9
	cmp r2, r3
	bgt _021E02E0
	add r3, r0, #0
	sub r3, #0xa
	cmp r2, r3
	blt _021E02E0
	add r3, r0, #0
	sub r3, #0xa
	cmp r2, r3
	beq _021E02D6
	sub r0, #9
	cmp r2, r0
	beq _021E02D6
	b _021E02E0
_021E02A8:
	add r3, r0, #0
	add r3, #0x39
	cmp r2, r3
	bgt _021E02C0
	add r3, r0, #0
	add r3, #0x39
	cmp r2, r3
	bge _021E02D6
	add r0, r0, #1
	cmp r2, r0
	beq _021E02D6
	b _021E02E0
_021E02C0:
	add r3, r0, #0
	add r3, #0x41
	cmp r2, r3
	bgt _021E02D0
	add r0, #0x41
	cmp r2, r0
	beq _021E02D6
	b _021E02E0
_021E02D0:
	add r0, #0x46
	cmp r2, r0
	bne _021E02E0
_021E02D6:
	ldr r0, [r1, #4]
	add r1, r2, #0
	bl ov21_021D341C
	pop {r3, pc}
_021E02E0:
	ldr r0, [r1, #4]
	add r1, r2, #0
	bl ov21_021D33E0
	pop {r3, pc}
	nop
_021E02EC: .word 0x000001A6
	thumb_func_end ov21_021E0268

	thumb_func_start ov21_021E02F0
ov21_021E02F0: ; 0x021E02F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x12
	add r5, r0, #0
	bl sub_020759F0
	cmp r0, #0
	bne _021E0304
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E0304:
	cmp r0, #0xfe
	bne _021E030C
	mov r0, #2
	pop {r3, r4, r5, pc}
_021E030C:
	cmp r0, #0xff
	bne _021E0314
	mov r0, #3
	pop {r3, r4, r5, pc}
_021E0314:
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov21_021D33E0
	cmp r0, #1
	bne _021E0350
	ldr r0, [r4, #4]
	add r1, r5, #0
	mov r2, #0
	bl ov21_021D334C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021E0338
	bl GF_AssertFail
_021E0338:
	cmp r4, #0
	bne _021E0340
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E0340:
	cmp r4, #0xfe
	bne _021E0348
	mov r0, #2
	pop {r3, r4, r5, pc}
_021E0348:
	cmp r4, #0xff
	bne _021E0350
	mov r0, #3
	pop {r3, r4, r5, pc}
_021E0350:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E02F0

	thumb_func_start ov21_021E0354
ov21_021E0354: ; 0x021E0354
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x34]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	str r3, [sp, #0x10]
	bl ov21_021E0B24
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021E037A
	add r0, r4, #0
	b _021E0380
_021E037A:
	sub r0, r4, #2
	bpl _021E0380
	add r0, r0, #4
_021E0380:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x14]
	mov r3, #2
	str r1, [sp, #4]
	ldr r1, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	bl ov21_021D19D8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E03A6
	bl GF_AssertFail
_021E03A6:
	add r0, r4, #1
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov21_021E0B24
	add r5, #0xb8
	ldr r1, [r5, #0]
	add r0, r4, #1
	cmp r1, #0
	beq _021E03C0
	sub r0, r0, #2
	bpl _021E03C0
	add r0, r0, #4
_021E03C0:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x14]
	mov r3, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	bl ov21_021D19D8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E03E6
	bl GF_AssertFail
_021E03E6:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0354

	thumb_func_start ov21_021E03EC
ov21_021E03EC: ; 0x021E03EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021E0410
	add r1, r4, #0
	b _021E0416
_021E0410:
	sub r1, r4, #2
	bpl _021E0416
	add r1, r1, #4
_021E0416:
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B08
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E0438
	bl GF_AssertFail
_021E0438:
	add r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r5, #0xb8
	ldr r0, [r5, #0]
	add r1, r4, #1
	cmp r0, #0
	beq _021E0452
	sub r1, r1, #2
	bpl _021E0452
	add r1, r1, #4
_021E0452:
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B08
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E0474
	bl GF_AssertFail
_021E0474:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E03EC

	thumb_func_start ov21_021E0478
ov21_021E0478: ; 0x021E0478
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021E049C
	add r1, r4, #0
	b _021E04A2
_021E049C:
	sub r1, r4, #2
	bpl _021E04A2
	add r1, r1, #4
_021E04A2:
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B4C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E04C4
	bl GF_AssertFail
_021E04C4:
	add r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r5, #0xb8
	ldr r0, [r5, #0]
	add r1, r4, #1
	cmp r0, #0
	beq _021E04DE
	sub r1, r1, #2
	bpl _021E04DE
	add r1, r1, #4
_021E04DE:
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B4C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E0500
	bl GF_AssertFail
_021E0500:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0478

	thumb_func_start ov21_021E0504
ov21_021E0504: ; 0x021E0504
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021E0528
	add r1, r4, #0
	b _021E052E
_021E0528:
	sub r1, r4, #2
	bpl _021E052E
	add r1, r1, #4
_021E052E:
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1A78
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E0550
	bl GF_AssertFail
_021E0550:
	add r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r5, #0xb8
	ldr r0, [r5, #0]
	add r1, r4, #1
	cmp r0, #0
	beq _021E056A
	sub r1, r1, #2
	bpl _021E056A
	add r1, r1, #4
_021E056A:
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1A78
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E058C
	bl GF_AssertFail
_021E058C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0504

	thumb_func_start ov21_021E0590
ov21_021E0590: ; 0x021E0590
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021E05B4
	add r1, r4, #0
	b _021E05BA
_021E05B4:
	sub r1, r4, #2
	bpl _021E05BA
	add r1, r1, #4
_021E05BA:
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1AC0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E05DC
	bl GF_AssertFail
_021E05DC:
	add r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r5, #0xb8
	ldr r0, [r5, #0]
	add r1, r4, #1
	cmp r0, #0
	beq _021E05F6
	sub r1, r1, #2
	bpl _021E05F6
	add r1, r1, #4
_021E05F6:
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1AC0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E0618
	bl GF_AssertFail
_021E0618:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0590

	thumb_func_start ov21_021E061C
ov21_021E061C: ; 0x021E061C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021E0640
	add r1, r4, #0
	b _021E0646
_021E0640:
	sub r1, r4, #2
	bpl _021E0646
	add r1, r1, #4
_021E0646:
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E0668
	bl GF_AssertFail
_021E0668:
	add r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r5, #0xb8
	ldr r0, [r5, #0]
	add r1, r4, #1
	cmp r0, #0
	beq _021E0682
	sub r1, r1, #2
	bpl _021E0682
	add r1, r1, #4
_021E0682:
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E06A4
	bl GF_AssertFail
_021E06A4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E061C

	thumb_func_start ov21_021E06A8
ov21_021E06A8: ; 0x021E06A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021E06CC
	add r1, r4, #0
	b _021E06D2
_021E06CC:
	sub r1, r4, #2
	bpl _021E06D2
	add r1, r1, #4
_021E06D2:
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B94
	cmp r0, #0xf
	bne _021E06F0
	bl GF_AssertFail
_021E06F0:
	add r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r5, #0xb8
	ldr r0, [r5, #0]
	add r1, r4, #1
	cmp r0, #0
	beq _021E070A
	sub r1, r1, #2
	bpl _021E070A
	add r1, r1, #4
_021E070A:
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B94
	cmp r0, #0xf
	bne _021E0728
	bl GF_AssertFail
_021E0728:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E06A8

	thumb_func_start ov21_021E072C
ov21_021E072C: ; 0x021E072C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021E0750
	add r1, r4, #0
	b _021E0756
_021E0750:
	sub r1, r4, #2
	bpl _021E0756
	add r1, r1, #4
_021E0756:
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1BD8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E0778
	bl GF_AssertFail
_021E0778:
	add r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r5, #0xb8
	ldr r0, [r5, #0]
	add r1, r4, #1
	cmp r0, #0
	beq _021E0792
	sub r1, r1, #2
	bpl _021E0792
	add r1, r1, #4
_021E0792:
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1BD8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E07B4
	bl GF_AssertFail
_021E07B4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E072C

	thumb_func_start ov21_021E07B8
ov21_021E07B8: ; 0x021E07B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021E07DC
	add r1, r4, #0
	b _021E07E2
_021E07DC:
	sub r1, r4, #2
	bpl _021E07E2
	add r1, r1, #4
_021E07E2:
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1C30
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E0804
	bl GF_AssertFail
_021E0804:
	add r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r5, #0xb8
	ldr r0, [r5, #0]
	add r1, r4, #1
	cmp r0, #0
	beq _021E081E
	sub r1, r1, #2
	bpl _021E081E
	add r1, r1, #4
_021E081E:
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1C30
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E0840
	bl GF_AssertFail
_021E0840:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E07B8

	thumb_func_start ov21_021E0844
ov21_021E0844: ; 0x021E0844
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021E0868
	add r1, r4, #0
	b _021E086E
_021E0868:
	sub r1, r4, #2
	bpl _021E086E
	add r1, r1, #4
_021E086E:
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1C88
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E0890
	bl GF_AssertFail
_021E0890:
	add r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	add r5, #0xb8
	ldr r0, [r5, #0]
	add r1, r4, #1
	cmp r0, #0
	beq _021E08AA
	sub r1, r1, #2
	bpl _021E08AA
	add r1, r1, #4
_021E08AA:
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6, #0]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1C88
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E08CC
	bl GF_AssertFail
_021E08CC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0844

	thumb_func_start ov21_021E08D0
ov21_021E08D0: ; 0x021E08D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r4, r2, #0
	add r7, r3, #0
	mov r0, #0
	cmp r1, #0
	beq _021E08EE
	sub r0, r0, #2
	bpl _021E08EE
	add r0, r0, #4
_021E08EE:
	ldr r1, [sp, #0x28]
	add r2, r4, #0
	str r1, [sp]
	ldr r1, [sp, #0x2c]
	add r3, r7, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021E09A4
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r3, [r4, #0x10]
	mov r2, #1
	bl ov21_021DF870
	add r2, r5, #0
	add r2, #0xb8
	ldr r2, [r2, #0]
	mov r1, #2
	cmp r2, #0
	beq _021E0926
	sub r1, r1, #2
	bpl _021E0926
	add r1, r1, #4
_021E0926:
	ldr r2, [sp, #0x28]
	add r3, r7, #0
	str r2, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021E09A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E08D0

	thumb_func_start ov21_021E0944
ov21_021E0944: ; 0x021E0944
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r2, #0
	add r5, r0, #0
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r3, [r6, #0x10]
	mov r2, #1
	bl ov21_021DF870
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	mov r4, #2
	cmp r0, #0
	beq _021E0970
	sub r4, r4, #2
	bpl _021E0970
	add r4, r4, #4
_021E0970:
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r7, r2, r1
	lsl r0, r7, #2
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	bl ov21_021D4D1C
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x14]
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	str r7, [sp, #0xc]
	bl ov21_021E09A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0944

	thumb_func_start ov21_021E09A4
ov21_021E09A4: ; 0x021E09A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [sp, #0x58]
	add r6, r1, #0
	lsl r7, r0, #2
	ldr r0, [r5, r7]
	str r2, [sp]
	str r3, [sp, #4]
	ldr r4, [r6, #0]
	cmp r0, #0
	bne _021E09C0
	bl GF_AssertFail
_021E09C0:
	ldr r1, [sp]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	add r0, r6, #0
	bl ov21_021E0B64
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x14]
	bl sub_0200A72C
	mov r1, #0xb
	mvn r1, r1
	str r1, [sp, #0x20]
	mov r1, #0x28
	str r1, [sp, #0x24]
	mov r1, #3
	str r1, [sp, #0x28]
	mov r1, #0
	ldr r2, [sp, #4]
	str r1, [sp, #0x2c]
	mov r1, #1
	str r0, [sp, #0x18]
	str r1, [sp, #0x30]
	str r2, [sp, #0x34]
	bl sub_0201FAB4
	str r0, [sp, #0xc]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x10
	mov r2, #2
	bl ov21_021D4D6C
	add r6, r0, #0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E0A48 ; =0x000002B9
	ldr r3, [sp, #8]
	add r1, r6, #0
	bl ov21_021D4E10
	str r6, [sp, #0x14]
	ldr r0, [r5, r7]
	add r5, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x5c]
	lsl r4, r0, #2
	add r0, sp, #0x10
	bl ov21_021D4CA0
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0]
	bl sub_02012A60
	add r0, r6, #0
	bl ov21_021D4DA0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E0A48: .word 0x000002B9
	thumb_func_end ov21_021E09A4

	thumb_func_start ov21_021E0A4C
ov21_021E0A4C: ; 0x021E0A4C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r6, r2, #0
	bl ov21_021D37BC
	add r1, r0, #0
	ldr r0, [r5, #4]
	add r2, r6, #0
	bl ov21_021D334C
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021E0A70
	bl GF_AssertFail
_021E0A70:
	cmp r5, #0
	beq _021E0A7A
	cmp r5, #1
	beq _021E0A7E
	b _021E0A82
_021E0A7A:
	mov r4, #0xd
	b _021E0A86
_021E0A7E:
	mov r4, #0xe
	b _021E0A86
_021E0A82:
	bl GF_AssertFail
_021E0A86:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0A4C

	thumb_func_start ov21_021E0A8C
ov21_021E0A8C: ; 0x021E0A8C
	mov r0, #0xd
	bx lr
	thumb_func_end ov21_021E0A8C

	thumb_func_start ov21_021E0A90
ov21_021E0A90: ; 0x021E0A90
	mov r0, #0xe
	bx lr
	thumb_func_end ov21_021E0A90

	thumb_func_start ov21_021E0A94
ov21_021E0A94: ; 0x021E0A94
	mov r0, #0x15
	bx lr
	thumb_func_end ov21_021E0A94

	thumb_func_start ov21_021E0A98
ov21_021E0A98: ; 0x021E0A98
	push {r3, lr}
	ldr r0, [r1, #4]
	add r1, r2, #0
	bl ov21_021D33A4
	add r0, #0x11
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0A98

	thumb_func_start ov21_021E0AA8
ov21_021E0AA8: ; 0x021E0AA8
	push {r3, lr}
	ldr r0, [r1, #4]
	add r1, r2, #0
	bl ov21_021D33BC
	add r0, #0x11
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0AA8

	thumb_func_start ov21_021E0AB8
ov21_021E0AB8: ; 0x021E0AB8
	push {r3, lr}
	ldr r0, [r1, #4]
	add r1, r2, #0
	bl ov21_021D3374
	add r0, #0xf
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0AB8

	thumb_func_start ov21_021E0AC8
ov21_021E0AC8: ; 0x021E0AC8
	push {r3, lr}
	ldr r0, [r1, #4]
	add r1, r2, #0
	bl ov21_021D338C
	add r0, #0xf
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0AC8

	thumb_func_start ov21_021E0AD8
ov21_021E0AD8: ; 0x021E0AD8
	mov r0, #0x14
	bx lr
	thumb_func_end ov21_021E0AD8

	thumb_func_start ov21_021E0ADC
ov21_021E0ADC: ; 0x021E0ADC
	push {r3, lr}
	ldr r0, [r1, #4]
	add r1, r2, #0
	bl ov21_021D3404
	add r0, #0x6f
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0ADC

	thumb_func_start ov21_021E0AEC
ov21_021E0AEC: ; 0x021E0AEC
	push {r3, lr}
	ldr r0, [r1, #4]
	mov r1, #0x7b
	lsl r1, r1, #2
	bl ov21_021D3410
	add r0, #0x73
	pop {r3, pc}
	thumb_func_end ov21_021E0AEC

	thumb_func_start ov21_021E0AFC
ov21_021E0AFC: ; 0x021E0AFC
	push {r3, lr}
	ldr r0, [r1, #4]
	ldr r1, _021E0B0C ; =0x000001E7
	bl ov21_021D3410
	add r0, #0x75
	pop {r3, pc}
	nop
_021E0B0C: .word 0x000001E7
	thumb_func_end ov21_021E0AFC

	thumb_func_start ov21_021E0B10
ov21_021E0B10: ; 0x021E0B10
	push {r3, lr}
	ldr r0, [r1, #4]
	ldr r1, _021E0B20 ; =0x000001DF
	bl ov21_021D3410
	add r0, #0x77
	pop {r3, pc}
	nop
_021E0B20: .word 0x000001DF
	thumb_func_end ov21_021E0B10

	thumb_func_start ov21_021E0B24
ov21_021E0B24: ; 0x021E0B24
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r1, #0
	add r7, r2, #0
	add r5, r4, #0
	cmp r0, #3
	bhi _021E0B5A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E0B3E: ; jump table
	.short _021E0B48 - _021E0B3E - 2 ; case 0
	.short _021E0B46 - _021E0B3E - 2 ; case 1
	.short _021E0B50 - _021E0B3E - 2 ; case 2
	.short _021E0B4E - _021E0B3E - 2 ; case 3
_021E0B46:
	mov r4, #0x68
_021E0B48:
	add r4, #0x4c
	mov r5, #0x58
	b _021E0B5E
_021E0B4E:
	mov r4, #0x68
_021E0B50:
	mov r0, #0x53
	lsl r0, r0, #2
	add r4, r4, r0
	mov r5, #0x58
	b _021E0B5E
_021E0B5A:
	bl GF_AssertFail
_021E0B5E:
	str r4, [r6, #0]
	str r5, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0B24

	thumb_func_start ov21_021E0B64
ov21_021E0B64: ; 0x021E0B64
	push {r3, lr}
	cmp r2, #0xc
	bhi _021E0BF6
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E0B76: ; jump table
	.short _021E0B90 - _021E0B76 - 2 ; case 0
	.short _021E0B98 - _021E0B76 - 2 ; case 1
	.short _021E0BA0 - _021E0B76 - 2 ; case 2
	.short _021E0BA8 - _021E0B76 - 2 ; case 3
	.short _021E0BC0 - _021E0B76 - 2 ; case 4
	.short _021E0BC8 - _021E0B76 - 2 ; case 5
	.short _021E0BB0 - _021E0B76 - 2 ; case 6
	.short _021E0BB8 - _021E0B76 - 2 ; case 7
	.short _021E0BD0 - _021E0B76 - 2 ; case 8
	.short _021E0BD8 - _021E0B76 - 2 ; case 9
	.short _021E0BE0 - _021E0B76 - 2 ; case 10
	.short _021E0BE8 - _021E0B76 - 2 ; case 11
	.short _021E0BF0 - _021E0B76 - 2 ; case 12
_021E0B90:
	add r2, r3, #0
	bl ov21_021E0A4C
	pop {r3, pc}
_021E0B98:
	add r2, r3, #0
	bl ov21_021E0A8C
	pop {r3, pc}
_021E0BA0:
	add r2, r3, #0
	bl ov21_021E0A90
	pop {r3, pc}
_021E0BA8:
	add r2, r3, #0
	bl ov21_021E0A94
	pop {r3, pc}
_021E0BB0:
	add r2, r3, #0
	bl ov21_021E0A98
	pop {r3, pc}
_021E0BB8:
	add r2, r3, #0
	bl ov21_021E0AA8
	pop {r3, pc}
_021E0BC0:
	add r2, r3, #0
	bl ov21_021E0AB8
	pop {r3, pc}
_021E0BC8:
	add r2, r3, #0
	bl ov21_021E0AC8
	pop {r3, pc}
_021E0BD0:
	add r2, r3, #0
	bl ov21_021E0AD8
	pop {r3, pc}
_021E0BD8:
	add r2, r3, #0
	bl ov21_021E0ADC
	pop {r3, pc}
_021E0BE0:
	add r2, r3, #0
	bl ov21_021E0AEC
	pop {r3, pc}
_021E0BE8:
	add r2, r3, #0
	bl ov21_021E0AFC
	pop {r3, pc}
_021E0BF0:
	add r2, r3, #0
	bl ov21_021E0B10
_021E0BF6:
	pop {r3, pc}
	thumb_func_end ov21_021E0B64

	thumb_func_start ov21_021E0BF8
ov21_021E0BF8: ; 0x021E0BF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E0BFE:
	ldr r0, [r5, #0x20]
	bl ov21_021D4D1C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E0BFE
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0BF8

	thumb_func_start ov21_021E0C10
ov21_021E0C10: ; 0x021E0C10
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #0x18
	add r0, #0xc0
	str r1, [r0, #0]
	mov r0, #1
	add r4, #0xc4
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0C10

	thumb_func_start ov21_021E0C30
ov21_021E0C30: ; 0x021E0C30
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021E0C66
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	cmp r0, #0
	bgt _021E0C66
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0
	add r4, #0xc4
	str r0, [r4, #0]
_021E0C66:
	pop {r4, pc}
	thumb_func_end ov21_021E0C30