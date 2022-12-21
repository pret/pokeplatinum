	.include "macros/function.inc"
	.include "include/unk_020673B8.inc"

	

	.text


	thumb_func_start sub_020673B8
sub_020673B8: ; 0x020673B8
	ldr r3, _020673BC ; =sub_020673E4
	bx r3
	; .align 2, 0
_020673BC: .word sub_020673E4
	thumb_func_end sub_020673B8

	thumb_func_start sub_020673C0
sub_020673C0: ; 0x020673C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02067400
	cmp r0, #0
	bne _020673D0
	mov r0, #0
	pop {r4, pc}
_020673D0:
	add r0, r4, #0
	bl sub_0206741C
	cmp r0, #0
	beq _020673DE
	mov r0, #1
	pop {r4, pc}
_020673DE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020673C0

	thumb_func_start sub_020673E4
sub_020673E4: ; 0x020673E4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062950
	add r1, r0, #0
	lsl r2, r1, #2
	ldr r1, _020673FC ; =0x020EF630
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_020673FC: .word 0x020EF630
	thumb_func_end sub_020673E4

	thumb_func_start sub_02067400
sub_02067400: ; 0x02067400
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062950
	add r1, r0, #0
	lsl r2, r1, #2
	ldr r1, _02067418 ; =0x020EF660
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_02067418: .word 0x020EF660
	thumb_func_end sub_02067400

	thumb_func_start sub_0206741C
sub_0206741C: ; 0x0206741C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062950
	add r1, r0, #0
	lsl r2, r1, #2
	ldr r1, _02067434 ; =0x020EF690
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_02067434: .word 0x020EF690
	thumb_func_end sub_0206741C

	thumb_func_start sub_02067438
sub_02067438: ; 0x02067438
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02063008
	cmp r5, r0
	beq _02067450
	mov r0, #1
	pop {r3, r4, r5, pc}
_02067450:
	add r0, r4, #0
	bl sub_02063040
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02063018
	cmp r5, r0
	beq _02067466
	mov r0, #1
	pop {r3, r4, r5, pc}
_02067466:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02067438

	thumb_func_start sub_0206746C
sub_0206746C: ; 0x0206746C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02063008
	cmp r5, r0
	beq _02067484
	mov r0, #0
	pop {r3, r4, r5, pc}
_02067484:
	add r0, r4, #0
	bl sub_02063040
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02063018
	cmp r5, r0
	bne _0206749A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206749A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206746C

	thumb_func_start sub_020674A0
sub_020674A0: ; 0x020674A0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020674A0

	thumb_func_start sub_020674A4
sub_020674A4: ; 0x020674A4
	mov r0, #0
	bx lr
	thumb_func_end sub_020674A4

	thumb_func_start sub_020674A8
sub_020674A8: ; 0x020674A8
	mov r0, #0
	bx lr
	thumb_func_end sub_020674A8

	thumb_func_start sub_020674AC
sub_020674AC: ; 0x020674AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #9
	bl sub_02062A7C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_020629D8
	strb r0, [r4, #3]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020674AC

	thumb_func_start sub_020674C4
sub_020674C4: ; 0x020674C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AA0
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhi _0206753C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020674E0: ; jump table
	.short _020674E8 - _020674E0 - 2 ; case 0
	.short _020674FA - _020674E0 - 2 ; case 1
	.short _02067522 - _020674E0 - 2 ; case 2
	.short _02067538 - _020674E0 - 2 ; case 3
_020674E8:
	add r0, r5, #0
	bl sub_02067438
	cmp r0, #1
	bne _0206753C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0206753C
_020674FA:
	add r0, r5, #0
	bl sub_0206746C
	cmp r0, #0
	beq _0206753C
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #2]
	ldrsb r1, [r4, r0]
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r1, r0
	bge _0206751C
	mov r0, #0
	strb r0, [r4]
	b _0206753C
_0206751C:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02067522:
	add r0, r5, #0
	bl sub_02062D1C
	cmp r0, #1
	beq _0206753C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #1]
_02067538:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206753C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020674C4

	thumb_func_start sub_02067540
sub_02067540: ; 0x02067540
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl sub_02062AA0
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhi _0206761E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206755E: ; jump table
	.short _02067566 - _0206755E - 2 ; case 0
	.short _02067588 - _0206755E - 2 ; case 1
	.short _020675BA - _0206755E - 2 ; case 2
	.short _020675D0 - _0206755E - 2 ; case 3
_02067566:
	ldr r3, _02067624 ; =0x020EF5F0
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl sub_0206298C
	strb r0, [r4, #4]
	lsl r1, r0, #2
	add r0, sp, #0x10
	ldr r0, [r0, r1]
	strb r0, [r4, #5]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_02067588:
	ldr r6, _02067628 ; =0x020EF600
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #5
	ldrsb r0, [r4, r0]
	lsl r3, r0, #3
	mov r0, #6
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, r2, r3
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_020675BA:
	add r0, r5, #0
	bl sub_020658DC
	cmp r0, #0
	bne _020675CA
	add sp, #0x20
	mov r0, #1
	pop {r4, r5, r6, pc}
_020675CA:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_020675D0:
	mov r0, #8
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #8]
	ldrsb r0, [r4, r0]
	cmp r0, #8
	bge _020675E4
	add sp, #0x20
	mov r0, #1
	pop {r4, r5, r6, pc}
_020675E4:
	mov r0, #0
	strb r0, [r4, #8]
	mov r0, #7
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bge _02067608
	mov r0, #6
	ldrsb r0, [r4, r0]
	add sp, #0x20
	add r1, r0, #1
	mov r0, #1
	and r1, r0
	strb r1, [r4, #6]
	strb r0, [r4, #1]
	pop {r4, r5, r6, pc}
_02067608:
	mov r1, #4
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062974
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #7]
	strb r0, [r4]
_0206761E:
	mov r0, #0
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02067624: .word 0x020EF5F0
_02067628: .word 0x020EF600
	thumb_func_end sub_02067540

	thumb_func_start sub_0206762C
sub_0206762C: ; 0x0206762C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #9
	bl sub_02062A7C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_020629D8
	strb r0, [r4, #3]
	add r0, r5, #0
	bl sub_02062950
	cmp r0, #5
	beq _02067650
	mov r0, #1
	b _02067652
_02067650:
	mov r0, #0
_02067652:
	strb r0, [r4, #5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206762C

	thumb_func_start sub_02067658
sub_02067658: ; 0x02067658
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AA0
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhi _020676D0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02067674: ; jump table
	.short _0206767C - _02067674 - 2 ; case 0
	.short _0206768E - _02067674 - 2 ; case 1
	.short _020676B6 - _02067674 - 2 ; case 2
	.short _020676CC - _02067674 - 2 ; case 3
_0206767C:
	add r0, r5, #0
	bl sub_02067438
	cmp r0, #1
	bne _020676D0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _020676D0
_0206768E:
	add r0, r5, #0
	bl sub_0206746C
	cmp r0, #0
	beq _020676D0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #2]
	ldrsb r1, [r4, r0]
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r1, r0
	bge _020676B0
	mov r0, #0
	strb r0, [r4]
	b _020676D0
_020676B0:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_020676B6:
	add r0, r5, #0
	bl sub_02062D1C
	cmp r0, #1
	beq _020676D0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #1]
_020676CC:
	mov r0, #1
	pop {r3, r4, r5, pc}
_020676D0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02067658

	thumb_func_start sub_020676D4
sub_020676D4: ; 0x020676D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r3, _020677F0 ; =0x020EF610
	add r2, sp, #0
	add r7, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r7, #0
	bl sub_02062AA0
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhi _020677EA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02067708: ; jump table
	.short _02067710 - _02067708 - 2 ; case 0
	.short _02067756 - _02067708 - 2 ; case 1
	.short _0206777C - _02067708 - 2 ; case 2
	.short _02067792 - _02067708 - 2 ; case 3
_02067710:
	add r0, r7, #0
	bl sub_0206298C
	mov r5, #0
	add r6, r0, #0
	add r1, r5, #0
	add r0, sp, #0
	mov r2, #5
	b _02067726
_02067722:
	add r1, r1, #4
	add r5, r5, #1
_02067726:
	cmp r5, #4
	bge _02067736
	ldrsb r3, [r4, r2]
	lsl r3, r3, #4
	add r3, r0, r3
	ldr r3, [r1, r3]
	cmp r6, r3
	bne _02067722
_02067736:
	cmp r5, #4
	blt _0206773E
	bl sub_02022974
_0206773E:
	add r0, r5, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	strb r6, [r4, #4]
	add r0, r2, r1
	strb r0, [r4, #6]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_02067756:
	mov r0, #5
	ldrsb r0, [r4, r0]
	add r2, sp, #0
	lsl r3, r0, #4
	mov r0, #6
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, r2, r3
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02065668
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_0206777C:
	add r0, r7, #0
	bl sub_020658DC
	cmp r0, #0
	bne _0206778C
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206778C:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_02067792:
	mov r0, #8
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #8]
	ldrsb r0, [r4, r0]
	cmp r0, #8
	bge _020677A6
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020677A6:
	mov r0, #0
	strb r0, [r4, #8]
	mov r0, #7
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bge _020677D4
	mov r0, #6
	ldrsb r0, [r4, r0]
	add sp, #0x20
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #6]
	mov r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, r6, r7, pc}
_020677D4:
	mov r1, #4
	ldrsb r1, [r4, r1]
	add r0, r7, #0
	bl sub_02062974
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #7]
	strb r0, [r4]
_020677EA:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020677F0: .word 0x020EF610
	thumb_func_end sub_020676D4

	.rodata


	.global Unk_020EF5F0
Unk_020EF5F0: ; 0x020EF5F0
	.incbin "incbin/arm9_rodata.bin", 0xA9B0, 0xA9C0 - 0xA9B0

	.global Unk_020EF600
Unk_020EF600: ; 0x020EF600
	.incbin "incbin/arm9_rodata.bin", 0xA9C0, 0xA9D0 - 0xA9C0

	.global Unk_020EF610
Unk_020EF610: ; 0x020EF610
	.incbin "incbin/arm9_rodata.bin", 0xA9D0, 0xA9F0 - 0xA9D0

	.global Unk_020EF630
Unk_020EF630: ; 0x020EF630
	.incbin "incbin/arm9_rodata.bin", 0xA9F0, 0xAA20 - 0xA9F0

	.global Unk_020EF660
Unk_020EF660: ; 0x020EF660
	.incbin "incbin/arm9_rodata.bin", 0xAA20, 0xAA50 - 0xAA20

	.global Unk_020EF690
Unk_020EF690: ; 0x020EF690
	.incbin "incbin/arm9_rodata.bin", 0xAA50, 0x30

