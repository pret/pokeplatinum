	.include "macros/function.inc"
	.include "include/ov13_022264F4.inc"

	

	.text


	thumb_func_start ov13_022264F4
ov13_022264F4: ; 0x022264F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02226584 ; =ov13_02226590
	ldr r1, _02226588 ; =0x0000115C
	ldr r3, [r5, #0xc]
	mov r2, #0x64
	bl sub_0200679C
	bl sub_0201CED0
	ldr r2, _02226588 ; =0x0000115C
	add r4, r0, #0
	mov r1, #0
	bl sub_020D5124
	str r5, [r4, #0]
	ldr r0, [r5, #0]
	bl ov16_0223DF00
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	bl ov16_0223E064
	str r0, [r4, #8]
	ldr r0, _0222658C ; =0x0000114A
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, [r5, #0]
	bl ov16_0223E1B0
	add r6, r0, #0
	mov r5, #0
_02226534:
	ldr r3, [r4, #0]
	add r0, r6, #0
	add r2, r3, #0
	add r2, #0x27
	add r3, #0x2c
	add r1, r5, #0
	add r2, r2, r5
	add r3, r3, r5
	bl sub_0207D9D8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #5
	blo _02226534
	add r0, r6, #0
	bl sub_0207D9E4
	ldr r1, [r4, #0]
	strh r0, [r1, #0x20]
	add r0, r6, #0
	bl sub_0207D9E8
	ldr r1, [r4, #0]
	strb r0, [r1, #0x1f]
	add r0, r4, #0
	bl ov13_02227A4C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl ov16_0223DF0C
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _02226582
	ldr r0, [r4, #0]
	mov r1, #1
	str r1, [r0, #0x14]
_02226582:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02226584: .word ov13_02226590
_02226588: .word 0x0000115C
_0222658C: .word 0x0000114A
	thumb_func_end ov13_022264F4

	thumb_func_start ov13_02226590
ov13_02226590: ; 0x02226590
	push {r4, lr}
	ldr r2, _02226688 ; =0x0000114A
	add r4, r1, #0
	ldrb r2, [r4, r2]
	cmp r2, #0xe
	bhi _02226676
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022265A8: ; jump table
	.short _022265C6 - _022265A8 - 2 ; case 0
	.short _022265D2 - _022265A8 - 2 ; case 1
	.short _022265DE - _022265A8 - 2 ; case 2
	.short _022265EA - _022265A8 - 2 ; case 3
	.short _022265F6 - _022265A8 - 2 ; case 4
	.short _02226602 - _022265A8 - 2 ; case 5
	.short _0222660E - _022265A8 - 2 ; case 6
	.short _0222661A - _022265A8 - 2 ; case 7
	.short _02226626 - _022265A8 - 2 ; case 8
	.short _02226632 - _022265A8 - 2 ; case 9
	.short _0222663E - _022265A8 - 2 ; case 10
	.short _0222664A - _022265A8 - 2 ; case 11
	.short _02226656 - _022265A8 - 2 ; case 12
	.short _02226662 - _022265A8 - 2 ; case 13
	.short _0222666E - _022265A8 - 2 ; case 14
_022265C6:
	add r0, r4, #0
	bl ov13_0222668C
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_022265D2:
	add r0, r4, #0
	bl ov13_02226760
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_022265DE:
	add r0, r4, #0
	bl ov13_02226838
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_022265EA:
	add r0, r4, #0
	bl ov13_022269C0
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_022265F6:
	add r0, r4, #0
	bl ov13_02226C48
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_02226602:
	add r0, r4, #0
	bl ov13_02226C54
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_0222660E:
	add r0, r4, #0
	bl ov13_02226C60
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_0222661A:
	add r0, r4, #0
	bl ov13_02226948
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_02226626:
	add r0, r4, #0
	bl ov13_02226C6C
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_02226632:
	add r0, r4, #0
	bl ov13_02226C7C
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_0222663E:
	add r0, r4, #0
	bl ov13_02226C94
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_0222664A:
	add r0, r4, #0
	bl ov13_02226CBC
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_02226656:
	add r0, r4, #0
	bl ov13_02226D94
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_02226662:
	add r0, r4, #0
	bl ov13_02226CD4
	ldr r1, _02226688 ; =0x0000114A
	strb r0, [r4, r1]
	b _02226676
_0222666E:
	bl ov13_02226CFC
	cmp r0, #1
	beq _02226686
_02226676:
	add r0, r4, #0
	bl ov13_02228848
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200C7EC
_02226686:
	pop {r4, pc}
	; .align 2, 0
_02226688: .word 0x0000114A
	thumb_func_end ov13_02226590

	thumb_func_start ov13_0222668C
ov13_0222668C: ; 0x0222668C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _02226750 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl ov13_02228A38
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl ov13_02226ED0
	add r0, r4, #0
	bl ov13_02226FC4
	add r0, r4, #0
	bl ov13_022270B8
	ldr r1, [r4, #0]
	mov r0, #2
	ldr r1, [r1, #0xc]
	bl sub_02002BB8
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E1B0
	bl sub_0207D9EC
	ldr r1, _02226754 ; =0x0000114D
	strb r0, [r4, r1]
	add r0, r4, #0
	bl ov13_02227AC8
	ldr r1, _02226758 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02228924
	add r0, r4, #0
	bl ov13_02227288
	ldr r1, _02226758 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02227350
	add r0, r4, #0
	bl ov13_02227BDC
	ldr r1, _02226758 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02227E68
	ldr r0, [r4, #0]
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #0
	beq _02226710
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov13_02228A60
_02226710:
	ldr r1, _02226758 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02228008
	ldr r1, _02226758 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_022280F0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r1, #0xa
	str r0, [sp, #8]
	add r3, r1, #0
	ldr r0, [r4, #8]
	ldr r2, _0222675C ; =0x0000FFFF
	sub r3, #0x12
	bl sub_02003178
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _0222674A
	add sp, #0xc
	mov r0, #0xc
	pop {r3, r4, pc}
_0222674A:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02226750: .word 0x04001050
_02226754: .word 0x0000114D
_02226758: .word 0x0000114C
_0222675C: .word 0x0000FFFF
	thumb_func_end ov13_0222668C

	thumb_func_start ov13_02226760
ov13_02226760: ; 0x02226760
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0200384C
	cmp r0, #0
	beq _02226772
	mov r0, #1
	pop {r3, r4, r5, pc}
_02226772:
	ldr r1, _0222682C ; =0x02229A1C
	add r0, r4, #0
	bl ov13_02227238
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _02226798
	ldr r0, [r4, #0x34]
	bl ov13_02228B64
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _0222679E
	mov r5, #5
	b _0222679E
_02226798:
	add r0, r4, #0
	bl ov13_02228050
_0222679E:
	cmp r5, #5
	bhi _02226828
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022267AE: ; jump table
	.short _022267BA - _022267AE - 2 ; case 0
	.short _022267BA - _022267AE - 2 ; case 1
	.short _022267BA - _022267AE - 2 ; case 2
	.short _022267BA - _022267AE - 2 ; case 3
	.short _022267DA - _022267AE - 2 ; case 4
	.short _0222680A - _022267AE - 2 ; case 5
_022267BA:
	ldr r0, _02226830 ; =0x000005DD
	bl sub_02005748
	lsl r0, r5, #0x18
	lsr r1, r0, #0x18
	ldr r0, _02226834 ; =0x0000114D
	mov r2, #5
	strb r1, [r4, r0]
	sub r0, r0, #2
	strb r2, [r4, r0]
	add r0, r4, #0
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_022267DA:
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _02226828
	ldr r0, _02226830 ; =0x000005DD
	bl sub_02005748
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0x1f]
	ldr r0, _02226834 ; =0x0000114D
	strb r1, [r4, r0]
	mov r1, #6
	sub r0, r0, #2
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov13_02227A7C
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_0222680A:
	ldr r0, _02226830 ; =0x000005DD
	bl sub_02005748
	ldr r0, [r4, #0]
	mov r2, #0
	strh r2, [r0, #0x1c]
	ldr r0, [r4, #0]
	mov r1, #4
	strb r1, [r0, #0x1e]
	add r0, r4, #0
	mov r1, #5
	bl ov13_0222880C
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_02226828:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222682C: .word 0x02229A1C
_02226830: .word 0x000005DD
_02226834: .word 0x0000114D
	thumb_func_end ov13_02226760

	thumb_func_start ov13_02226838
ov13_02226838: ; 0x02226838
	push {r3, r4, r5, lr}
	ldr r1, _02226938 ; =0x02229A38
	add r4, r0, #0
	bl ov13_02227238
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _02226860
	ldr r0, [r4, #0x34]
	bl ov13_02228B64
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _02226866
	mov r5, #8
	b _02226866
_02226860:
	add r0, r4, #0
	bl ov13_02228050
_02226866:
	cmp r5, #8
	bhi _02226934
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226876: ; jump table
	.short _02226888 - _02226876 - 2 ; case 0
	.short _02226888 - _02226876 - 2 ; case 1
	.short _02226888 - _02226876 - 2 ; case 2
	.short _02226888 - _02226876 - 2 ; case 3
	.short _02226888 - _02226876 - 2 ; case 4
	.short _02226888 - _02226876 - 2 ; case 5
	.short _022268BE - _02226876 - 2 ; case 6
	.short _022268EC - _02226876 - 2 ; case 7
	.short _0222691A - _02226876 - 2 ; case 8
_02226888:
	add r0, r4, #0
	add r1, r5, #0
	bl ov13_02227BA8
	cmp r0, #0
	beq _02226934
	ldr r0, _0222693C ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226940 ; =0x0000114D
	ldr r2, [r4, #0]
	ldrb r1, [r4, r0]
	sub r0, r0, #2
	add r1, r2, r1
	add r1, #0x27
	strb r5, [r1]
	mov r1, #6
	strb r1, [r4, r0]
	add r1, r5, #6
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_022268BE:
	ldr r0, _02226940 ; =0x0000114D
	ldrb r1, [r4, r0]
	add r0, r0, #7
	add r1, r4, r1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02226934
	ldr r0, _0222693C ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226944 ; =0x0000114B
	mov r1, #7
	strb r1, [r4, r0]
	sub r1, #8
	add r0, r0, #3
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_022268EC:
	ldr r0, _02226940 ; =0x0000114D
	ldrb r1, [r4, r0]
	add r0, r0, #7
	add r1, r4, r1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02226934
	ldr r0, _0222693C ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226944 ; =0x0000114B
	mov r1, #7
	strb r1, [r4, r0]
	mov r1, #1
	add r0, r0, #3
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_0222691A:
	ldr r0, _0222693C ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226944 ; =0x0000114B
	mov r1, #4
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02226934:
	mov r0, #2
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02226938: .word 0x02229A38
_0222693C: .word 0x000005DD
_02226940: .word 0x0000114D
_02226944: .word 0x0000114B
	thumb_func_end ov13_02226838

	thumb_func_start ov13_02226948
ov13_02226948: ; 0x02226948
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _022269B8 ; =0x0000114D
	ldr r1, [r4, #0]
	ldrb r2, [r4, r0]
	mov r3, #0
	add r5, r1, r2
	mov r1, #0x2c
	ldrsb r2, [r5, r1]
	add r5, #0x27
	add r1, r0, #1
	strb r3, [r5]
	ldrsb r1, [r4, r1]
	add r1, r2, r1
	lsl r1, r1, #0x18
	asr r2, r1, #0x18
	ldrb r1, [r4, r0]
	add r0, r0, #7
	add r5, r4, r1
	ldrb r5, [r5, r0]
	cmp r2, r5
	ble _0222697E
	ldr r0, [r4, #0]
	add r0, r0, r1
	add r0, #0x2c
	strb r3, [r0]
	b _02226992
_0222697E:
	cmp r2, #0
	ldr r0, [r4, #0]
	bge _0222698C
	add r0, r0, r1
	add r0, #0x2c
	strb r5, [r0]
	b _02226992
_0222698C:
	add r0, r0, r1
	add r0, #0x2c
	strb r2, [r0]
_02226992:
	add r0, r4, #0
	bl ov13_02227650
	add r0, r4, #0
	bl ov13_02227698
	ldr r1, _022269BC ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02227E68
	ldr r1, _022269BC ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_02228924
	mov r0, #2
	pop {r3, r4, r5, pc}
	nop
_022269B8: .word 0x0000114D
_022269BC: .word 0x0000114C
	thumb_func_end ov13_02226948

	thumb_func_start ov13_022269C0
ov13_022269C0: ; 0x022269C0
	push {r3, r4, r5, lr}
	ldr r1, _02226A4C ; =0x022299AC
	add r5, r0, #0
	bl ov13_02227238
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _022269E8
	ldr r0, [r5, #0x34]
	bl ov13_02228B64
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022269EE
	mov r4, #1
	b _022269EE
_022269E8:
	add r0, r5, #0
	bl ov13_02228050
_022269EE:
	cmp r4, #0
	beq _022269F8
	cmp r4, #1
	beq _02226A2E
	b _02226A48
_022269F8:
	ldr r0, _02226A50 ; =0x000005DD
	bl sub_02005748
	ldr r1, _02226A54 ; =0x0000114D
	ldr r2, [r5, #0]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	add r1, r2, r1
	add r1, #0x27
	ldrb r1, [r1]
	bl ov13_02227BA8
	ldr r1, [r5, #0]
	mov r2, #0
	strh r0, [r1, #0x1c]
	ldr r0, _02226A54 ; =0x0000114D
	ldrb r1, [r5, r0]
	ldr r0, [r5, #0]
	strb r1, [r0, #0x1e]
	add r0, r5, #0
	mov r1, #0xf
	bl ov13_0222880C
	add r0, r5, #0
	bl ov13_02226A5C
	pop {r3, r4, r5, pc}
_02226A2E:
	ldr r0, _02226A50 ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226A58 ; =0x0000114B
	mov r1, #5
	strb r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov13_0222880C
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02226A48:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02226A4C: .word 0x022299AC
_02226A50: .word 0x000005DD
_02226A54: .word 0x0000114D
_02226A58: .word 0x0000114B
	thumb_func_end ov13_022269C0

	thumb_func_start ov13_02226A5C
ov13_02226A5C: ; 0x02226A5C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02226C3C ; =0x0000114D
	add r5, r0, #0
	ldrb r1, [r5, r1]
	ldr r4, [r5, #0]
	cmp r1, #3
	beq _02226A6C
	b _02226B86
_02226A6C:
	bl ov13_02227244
	add r7, r0, #0
	ldrh r0, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	mov r1, #7
	bl sub_0207CFF0
	add r6, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02226ADE
	ldrh r0, [r4, #0x1c]
	cmp r0, #0x37
	beq _02226ADE
	cmp r6, #3
	beq _02226ADE
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	add r2, r7, #0
	bl ov16_0223DFAC
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	mov r1, #0x2e
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, [r5, #0x14]
	ldr r2, _02226C40 ; =0x00000175
	mov r1, #1
	bl sub_0200B630
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226ADE:
	ldrh r0, [r4, #0x1c]
	add r2, r7, #0
	mov r3, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	bl ov16_0223E30C
	cmp r0, #1
	bne _02226B04
	ldr r2, _02226C3C ; =0x0000114D
	ldrh r1, [r4, #0x1c]
	ldrb r2, [r5, r2]
	ldr r0, [r4, #0]
	ldr r3, [r4, #0xc]
	bl ov13_02227260
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
_02226B04:
	cmp r6, #3
	bne _02226B6C
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #1
	tst r0, r1
	bne _02226B26
	ldr r2, _02226C3C ; =0x0000114D
	ldrh r1, [r4, #0x1c]
	ldrb r2, [r5, r2]
	ldr r0, [r4, #0]
	ldr r3, [r4, #0xc]
	bl ov13_02227260
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
_02226B26:
	ldr r3, [r4, #0xc]
	add r0, r1, #0
	mov r1, #0x1a
	mov r2, #0xd5
	bl sub_0200B144
	mov r1, #0x24
	add r7, r0, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	ldr r2, [r4, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226B6C:
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x22
	bl sub_0200B1B8
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226B86:
	cmp r1, #2
	bne _02226C36
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #1
	bne _02226BAE
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x2c
	bl sub_0200B1B8
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226BAE:
	add r0, r4, #0
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #1
	bne _02226BD2
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x2f
	bl sub_0200B1B8
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226BD2:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #1
	bne _02226BF6
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x30
	bl sub_0200B1B8
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226BF6:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	bl ov16_0223DF20
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E228
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0207A0F8
	cmp r0, #6
	bne _02226C36
	add r0, r4, #0
	bl sub_020799A0
	cmp r0, #0x12
	bne _02226C36
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x2d
	bl sub_0200B1B8
	add r0, r5, #0
	bl ov13_022279F4
	ldr r0, _02226C44 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02226C36:
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226C3C: .word 0x0000114D
_02226C40: .word 0x00000175
_02226C44: .word 0x0000114B
	thumb_func_end ov13_02226A5C

	thumb_func_start ov13_02226C48
ov13_02226C48: ; 0x02226C48
	push {r3, lr}
	mov r1, #0
	bl ov13_022271D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov13_02226C48

	thumb_func_start ov13_02226C54
ov13_02226C54: ; 0x02226C54
	push {r3, lr}
	mov r1, #1
	bl ov13_022271D0
	mov r0, #2
	pop {r3, pc}
	thumb_func_end ov13_02226C54

	thumb_func_start ov13_02226C60
ov13_02226C60: ; 0x02226C60
	push {r3, lr}
	mov r1, #2
	bl ov13_022271D0
	mov r0, #3
	pop {r3, pc}
	thumb_func_end ov13_02226C60

	thumb_func_start ov13_02226C6C
ov13_02226C6C: ; 0x02226C6C
	push {r3, lr}
	add r0, #0x1c
	mov r1, #0
	bl sub_0200E084
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov13_02226C6C

	thumb_func_start ov13_02226C7C
ov13_02226C7C: ; 0x02226C7C
	push {r3, lr}
	add r0, #0x32
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02226C8E
	mov r0, #0xa
	pop {r3, pc}
_02226C8E:
	mov r0, #9
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov13_02226C7C

	thumb_func_start ov13_02226C94
ov13_02226C94: ; 0x02226C94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02226CB4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02226CAA
	bl sub_02022798
	cmp r0, #1
	bne _02226CB0
_02226CAA:
	ldr r0, _02226CB8 ; =0x0000114B
	ldrb r0, [r4, r0]
	pop {r4, pc}
_02226CB0:
	mov r0, #0xa
	pop {r4, pc}
	; .align 2, 0
_02226CB4: .word 0x021BF67C
_02226CB8: .word 0x0000114B
	thumb_func_end ov13_02226C94

	thumb_func_start ov13_02226CBC
ov13_02226CBC: ; 0x02226CBC
	ldr r1, _02226CD0 ; =0x0000113E
	ldrb r2, [r0, r1]
	cmp r2, #2
	bne _02226CCA
	add r1, #0xd
	ldrb r0, [r0, r1]
	bx lr
_02226CCA:
	mov r0, #0xb
	bx lr
	nop
_02226CD0: .word 0x0000113E
	thumb_func_end ov13_02226CBC

	thumb_func_start ov13_02226CD4
ov13_02226CD4: ; 0x02226CD4
	push {lr}
	sub sp, #0xc
	mov r2, #0
	str r2, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #0xa
	add r3, r1, #0
	ldr r0, [r0, #8]
	ldr r2, _02226CF8 ; =0x0000FFFF
	sub r3, #0x12
	bl sub_02003178
	mov r0, #0xe
	add sp, #0xc
	pop {pc}
	nop
_02226CF8: .word 0x0000FFFF
	thumb_func_end ov13_02226CD4

	thumb_func_start ov13_02226CFC
ov13_02226CFC: ; 0x02226CFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #8]
	bl sub_0200384C
	cmp r0, #0
	beq _02226D10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02226D10:
	add r0, r5, #0
	bl ov13_02227E08
	add r0, r5, #0
	bl ov13_02227334
	add r0, r5, #0
	bl ov13_022270F8
	ldr r0, [r5, #4]
	bl ov13_02226F9C
	ldr r0, [r5, #0x34]
	bl ov13_02228A5C
	ldr r1, [r5, #0]
	add r1, #0x25
	strb r0, [r1]
	ldr r0, [r5, #0x34]
	bl ov13_02228A50
	mov r0, #2
	bl sub_02002C60
	ldr r1, [r5, #0]
	ldrh r0, [r1, #0x1c]
	cmp r0, #0
	beq _02226D7C
	ldr r0, [r1, #0]
	bl ov16_0223E1B0
	add r6, r0, #0
	mov r4, #0
_02226D52:
	ldr r3, [r5, #0]
	add r0, r6, #0
	add r2, r3, r4
	add r3, r3, r4
	add r2, #0x27
	add r3, #0x2c
	ldrb r2, [r2]
	ldrb r3, [r3]
	add r1, r4, #0
	bl sub_0207D9F0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _02226D52
	ldr r1, _02226D90 ; =0x0000114D
	add r0, r6, #0
	ldrb r1, [r5, r1]
	bl sub_0207DA24
_02226D7C:
	ldr r0, [r5, #0]
	mov r1, #1
	add r0, #0x26
	strb r1, [r0]
	add r0, r7, #0
	bl sub_020067D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226D90: .word 0x0000114D
	thumb_func_end ov13_02226CFC

	thumb_func_start ov13_02226D94
ov13_02226D94: ; 0x02226D94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0200384C
	cmp r0, #0
	beq _02226DA6
	mov r0, #0xc
	pop {r4, pc}
_02226DA6:
	ldr r0, _02226EC0 ; =0x00001159
	ldrb r0, [r4, r0]
	cmp r0, #4
	bls _02226DB0
	b _02226EBA
_02226DB0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226DBC: ; jump table
	.short _02226DC6 - _02226DBC - 2 ; case 0
	.short _02226E08 - _02226DBC - 2 ; case 1
	.short _02226E18 - _02226DBC - 2 ; case 2
	.short _02226E62 - _02226DBC - 2 ; case 3
	.short _02226E72 - _02226DBC - 2 ; case 4
_02226DC6:
	ldr r0, [r4, #0x38]
	bl ov16_0226DFD4
	cmp r0, #1
	bne _02226DFE
	ldr r0, _02226EC4 ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226EC8 ; =0x0000114D
	mov r1, #2
	strb r1, [r4, r0]
	mov r2, #0xc
	sub r0, r0, #2
	strb r2, [r4, r0]
	add r0, r4, #0
	mov r2, #0
	bl ov13_0222880C
	ldr r0, _02226ECC ; =0x0000115A
	mov r1, #0
	strb r1, [r4, r0]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0xb
	pop {r4, pc}
_02226DFE:
	ldr r0, _02226ECC ; =0x0000115A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02226EBA
_02226E08:
	add r0, r4, #0
	bl ov13_02226C54
	ldr r0, _02226EC0 ; =0x00001159
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02226EBA
_02226E18:
	ldr r0, [r4, #0x38]
	bl ov16_0226DFD4
	cmp r0, #1
	bne _02226E58
	ldr r0, _02226EC4 ; =0x000005DD
	bl sub_02005748
	ldr r0, _02226EC8 ; =0x0000114D
	ldr r3, [r4, #0]
	ldrb r1, [r4, r0]
	mov r2, #0
	sub r0, r0, #2
	add r1, r3, r1
	add r1, #0x27
	strb r2, [r1]
	mov r1, #0xc
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #6
	bl ov13_0222880C
	ldr r0, _02226ECC ; =0x0000115A
	mov r1, #0
	strb r1, [r4, r0]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0xb
	pop {r4, pc}
_02226E58:
	ldr r0, _02226ECC ; =0x0000115A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02226EBA
_02226E62:
	add r0, r4, #0
	bl ov13_02226C60
	ldr r0, _02226EC0 ; =0x00001159
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02226EBA
_02226E72:
	ldr r0, [r4, #0x38]
	bl ov16_0226DFD4
	cmp r0, #1
	bne _02226EB2
	ldr r0, _02226EC4 ; =0x000005DD
	bl sub_02005748
	ldr r1, _02226EC8 ; =0x0000114D
	ldr r2, [r4, #0]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	add r1, r2, r1
	add r1, #0x27
	ldrb r1, [r1]
	bl ov13_02227BA8
	ldr r1, [r4, #0]
	mov r2, #0
	strh r0, [r1, #0x1c]
	ldr r0, _02226EC8 ; =0x0000114D
	ldrb r1, [r4, r0]
	ldr r0, [r4, #0]
	strb r1, [r0, #0x1e]
	add r0, r4, #0
	mov r1, #0xf
	bl ov13_0222880C
	add r0, r4, #0
	bl ov13_02226A5C
	pop {r4, pc}
_02226EB2:
	ldr r0, _02226ECC ; =0x0000115A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
_02226EBA:
	mov r0, #0xc
	pop {r4, pc}
	nop
_02226EC0: .word 0x00001159
_02226EC4: .word 0x000005DD
_02226EC8: .word 0x0000114D
_02226ECC: .word 0x0000115A
	thumb_func_end ov13_02226D94

	thumb_func_start ov13_02226ED0
ov13_02226ED0: ; 0x02226ED0
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _02226F8C ; =0x022299B8
	add r3, sp, #0x54
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	mov r1, #1
	bl sub_020183A0
	ldr r5, _02226F90 ; =0x02229A00
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _02226F94 ; =0x022299E4
	add r3, sp, #0x1c
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
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #4]
	mov r1, #5
	bl sub_02019EBC
	ldr r5, _02226F98 ; =0x022299C8
	add r3, sp, #0
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
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02019EBC
	ldr r3, [r4, #0]
	mov r0, #5
	ldr r3, [r3, #0xc]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [r4, #0]
	mov r0, #4
	ldr r3, [r3, #0xc]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r0, [r4, #4]
	mov r1, #5
	bl sub_0201C3C0
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #0x64
	pop {r4, r5, pc}
	; .align 2, 0
_02226F8C: .word 0x022299B8
_02226F90: .word 0x02229A00
_02226F94: .word 0x022299E4
_02226F98: .word 0x022299C8
	thumb_func_end ov13_02226ED0

	thumb_func_start ov13_02226F9C
ov13_02226F9C: ; 0x02226F9C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x17
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #6
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02226F9C

	thumb_func_start ov13_02226FC4
ov13_02226FC4: ; 0x02226FC4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x4d
	ldr r1, [r1, #0xc]
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [r5, #0]
	mov r3, #6
	ldr r1, [r1, #0xc]
	add r4, r0, #0
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r1, #2
	bl sub_020070E8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #0]
	mov r3, #6
	ldr r0, [r0, #0xc]
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	add r0, r4, #0
	bl sub_0200710C
	ldr r2, [r5, #0]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	mov r1, #1
	bl sub_02006CB8
	add r1, sp, #0x10
	add r6, r0, #0
	bl sub_020A7248
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, #0xc
	bl ov13_02228128
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	ldr r0, [r5, #8]
	ldr r3, [r3, #0xc]
	mov r1, #0x4d
	mov r2, #3
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xf0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	ldr r0, [r5, #8]
	ldr r3, [r3, #0xc]
	mov r1, #0xe
	mov r2, #7
	bl sub_02003050
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov16_0223EDE0
	add r4, r0, #0
	bl sub_0200DD04
	add r1, r0, #0
	ldr r0, _022270B4 ; =0x000003E2
	mov r3, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0x26
	bl sub_02006E3C
	add r0, r4, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	ldr r0, [r5, #8]
	ldr r3, [r3, #0xc]
	mov r1, #0x26
	bl sub_02003050
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022270B4: .word 0x000003E2
	thumb_func_end ov13_02226FC4

	thumb_func_start ov13_022270B8
ov13_022270B8: ; 0x022270B8
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #0]
	mov r0, #0
	ldr r3, [r3, #0xc]
	mov r1, #0x1a
	mov r2, #2
	bl sub_0200B144
	str r0, [r4, #0x10]
	ldr r3, [r4, #0]
	mov r0, #0xf
	ldr r3, [r3, #0xc]
	mov r1, #0xe
	mov r2, #0
	bl sub_0200C440
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0200B358
	str r0, [r4, #0x14]
	ldr r1, [r4, #0]
	mov r0, #2
	ldr r1, [r1, #0xc]
	lsl r0, r0, #8
	bl sub_02023790
	str r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_022270B8

	thumb_func_start ov13_022270F8
ov13_022270F8: ; 0x022270F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	ldr r0, [r4, #0xc]
	bl sub_0200C560
	ldr r0, [r4, #0x14]
	bl sub_0200B3F0
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_022270F8

	thumb_func_start ov13_02227118
ov13_02227118: ; 0x02227118
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0222712A
	cmp r1, #1
	beq _02227144
	cmp r1, #2
	beq _02227160
	pop {r4, pc}
_0222712A:
	mov r2, #0
	ldr r0, [r4, #4]
	mov r1, #6
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	pop {r4, pc}
_02227144:
	mov r1, #6
	add r3, r1, #0
	ldr r0, [r4, #4]
	mov r2, #0
	add r3, #0xfa
	bl sub_0201C63C
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	pop {r4, pc}
_02227160:
	mov r2, #0
	ldr r0, [r4, #4]
	mov r1, #6
	add r3, r2, #0
	bl sub_0201C63C
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #4]
	mov r1, #6
	add r3, #0xfd
	bl sub_0201C63C
	pop {r4, pc}
	thumb_func_end ov13_02227118

	thumb_func_start ov13_0222717C
ov13_0222717C: ; 0x0222717C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #2
	bne _022271C6
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _022271CC ; =0x0000114D
	mov r1, #6
	ldrb r0, [r4, r0]
	mov r2, #2
	mov r3, #0x23
	add r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02019E2C
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _022271CC ; =0x0000114D
	mov r1, #6
	ldrb r0, [r4, r0]
	mov r2, #2
	mov r3, #0x28
	add r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02019E2C
_022271C6:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022271CC: .word 0x0000114D
	thumb_func_end ov13_0222717C

	thumb_func_start ov13_022271D0
ov13_022271D0: ; 0x022271D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov13_0222717C
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02227118
	ldr r0, [r5, #4]
	mov r1, #4
	mov r2, #0
	bl sub_02019F04
	ldr r0, [r5, #4]
	mov r1, #5
	mov r2, #0
	bl sub_02019F04
	add r0, r5, #0
	bl ov13_02227324
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_022272AC
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02227350
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02228924
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02228008
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_022280F0
	ldr r1, _02227234 ; =0x0000114C
	add r0, r5, #0
	strb r4, [r5, r1]
	ldrb r1, [r5, r1]
	bl ov13_02227E68
	pop {r3, r4, r5, pc}
	nop
_02227234: .word 0x0000114C
	thumb_func_end ov13_022271D0

	thumb_func_start ov13_02227238
ov13_02227238: ; 0x02227238
	ldr r3, _02227240 ; =sub_02022664
	add r0, r1, #0
	bx r3
	nop
_02227240: .word sub_02022664
	thumb_func_end ov13_02227238

	thumb_func_start ov13_02227244
ov13_02227244: ; 0x02227244
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #0]
	bl ov16_0223DF10
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r3, [r4, #0x10]
	ldr r0, [r0, #0]
	mov r2, #2
	bl ov16_0225B45C
	pop {r3, r4, r5, pc}
	thumb_func_end ov13_02227244

	thumb_func_start ov13_02227260
ov13_02227260: ; 0x02227260
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r3, #0
	add r6, r0, #0
	add r7, r2, #0
	bl ov16_0223E1AC
	add r1, r5, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_0207D60C
	add r0, r6, #0
	bl ov16_0223E1B0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0207DA1C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_02227260

	.rodata


	.global Unk_ov13_022299AC
Unk_ov13_022299AC: ; 0x022299AC
	.incbin "incbin/overlay13_rodata.bin", 0xCB0, 0xCBC - 0xCB0

	.global Unk_ov13_022299B8
Unk_ov13_022299B8: ; 0x022299B8
	.incbin "incbin/overlay13_rodata.bin", 0xCBC, 0xCCC - 0xCBC

	.global Unk_ov13_022299C8
Unk_ov13_022299C8: ; 0x022299C8
	.incbin "incbin/overlay13_rodata.bin", 0xCCC, 0xCE8 - 0xCCC

	.global Unk_ov13_022299E4
Unk_ov13_022299E4: ; 0x022299E4
	.incbin "incbin/overlay13_rodata.bin", 0xCE8, 0xD04 - 0xCE8

	.global Unk_ov13_02229A00
Unk_ov13_02229A00: ; 0x02229A00
	.incbin "incbin/overlay13_rodata.bin", 0xD04, 0xD20 - 0xD04

	.global Unk_ov13_02229A1C
Unk_ov13_02229A1C: ; 0x02229A1C
	.incbin "incbin/overlay13_rodata.bin", 0xD20, 0xD3C - 0xD20

	.global Unk_ov13_02229A38
Unk_ov13_02229A38: ; 0x02229A38
	.incbin "incbin/overlay13_rodata.bin", 0xD3C, 0x28

