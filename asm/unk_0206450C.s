	.include "macros/function.inc"
	.include "include/unk_0206450C.inc"

	

	.text


	thumb_func_start sub_0206450C
sub_0206450C: ; 0x0206450C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #8
	add r5, r0, #0
	bl sub_02062A54
	add r4, r0, #0
	mov r1, #0
	ldr r0, _02064538 ; =0x020EEA88
	mvn r1, r1
	bl sub_0206530C
	strh r0, [r4, #2]
	add r0, r5, #0
	mov r1, #0
	str r6, [r4, #4]
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02064538: .word 0x020EEA88
	thumb_func_end sub_0206450C

	thumb_func_start sub_0206453C
sub_0206453C: ; 0x0206453C
	ldr r3, _02064544 ; =sub_0206450C
	mov r1, #0
	bx r3
	nop
_02064544: .word sub_0206450C
	thumb_func_end sub_0206453C

	thumb_func_start sub_02064548
sub_02064548: ; 0x02064548
	ldr r3, _02064550 ; =sub_0206450C
	mov r1, #1
	bx r3
	nop
_02064550: .word sub_0206450C
	thumb_func_end sub_02064548

	thumb_func_start sub_02064554
sub_02064554: ; 0x02064554
	ldr r3, _0206455C ; =sub_0206450C
	mov r1, #2
	bx r3
	nop
_0206455C: .word sub_0206450C
	thumb_func_end sub_02064554

	thumb_func_start sub_02064560
sub_02064560: ; 0x02064560
	ldr r3, _02064568 ; =sub_0206450C
	mov r1, #3
	bx r3
	nop
_02064568: .word sub_0206450C
	thumb_func_end sub_02064560

	thumb_func_start sub_0206456C
sub_0206456C: ; 0x0206456C
	ldr r3, _02064574 ; =sub_0206450C
	mov r1, #4
	bx r3
	nop
_02064574: .word sub_0206450C
	thumb_func_end sub_0206456C

	thumb_func_start sub_02064578
sub_02064578: ; 0x02064578
	ldr r3, _02064580 ; =sub_0206450C
	mov r1, #5
	bx r3
	nop
_02064580: .word sub_0206450C
	thumb_func_end sub_02064578

	thumb_func_start sub_02064584
sub_02064584: ; 0x02064584
	ldr r3, _0206458C ; =sub_0206450C
	mov r1, #6
	bx r3
	nop
_0206458C: .word sub_0206450C
	thumb_func_end sub_02064584

	thumb_func_start sub_02064590
sub_02064590: ; 0x02064590
	ldr r3, _02064598 ; =sub_0206450C
	mov r1, #7
	bx r3
	nop
_02064598: .word sub_0206450C
	thumb_func_end sub_02064590

	thumb_func_start sub_0206459C
sub_0206459C: ; 0x0206459C
	ldr r3, _020645A4 ; =sub_0206450C
	mov r1, #8
	bx r3
	nop
_020645A4: .word sub_0206450C
	thumb_func_end sub_0206459C

	thumb_func_start sub_020645A8
sub_020645A8: ; 0x020645A8
	ldr r3, _020645B0 ; =sub_0206450C
	mov r1, #9
	bx r3
	nop
_020645B0: .word sub_0206450C
	thumb_func_end sub_020645A8

	thumb_func_start sub_020645B4
sub_020645B4: ; 0x020645B4
	ldr r3, _020645BC ; =sub_0206450C
	mov r1, #0xa
	bx r3
	nop
_020645BC: .word sub_0206450C
	thumb_func_end sub_020645B4

	thumb_func_start sub_020645C0
sub_020645C0: ; 0x020645C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	mov r2, #0
	ldr r1, [r4, #4]
	add r0, r5, #0
	mvn r2, r2
	bl sub_02065448
	mov r2, #0
	add r1, r0, #0
	mvn r2, r2
	cmp r1, r2
	beq _020645E8
	add r0, r5, #0
	bl sub_02062974
	b _02064618
_020645E8:
	ldrh r0, [r4]
	cmp r0, #0
	bne _02064618
	mov r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _02064618
	ldr r0, _02064620 ; =0x020EEA88
	add r1, r2, #0
	bl sub_0206530C
	strh r0, [r4, #2]
	mov r1, #0
	ldr r0, [r4, #4]
	mvn r1, r1
	bl sub_02065330
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062974
_02064618:
	add r0, r5, #0
	bl sub_02064208
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02064620: .word 0x020EEA88
	thumb_func_end sub_020645C0

	thumb_func_start sub_02064624
sub_02064624: ; 0x02064624
	bx lr
	; .align 2, 0
	thumb_func_end sub_02064624

	thumb_func_start sub_02064628
sub_02064628: ; 0x02064628
	push {r3, lr}
	mov r1, #0xc
	mov r2, #0xb
	mov r3, #0
	bl sub_02064668
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064628

	thumb_func_start sub_02064638
sub_02064638: ; 0x02064638
	push {r3, lr}
	mov r1, #0xc
	add r2, r1, #0
	mov r3, #0
	bl sub_02064668
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064638

	thumb_func_start sub_02064648
sub_02064648: ; 0x02064648
	push {r3, lr}
	mov r1, #0xc
	mov r2, #0xd
	mov r3, #0
	bl sub_02064668
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064648

	thumb_func_start sub_02064658
sub_02064658: ; 0x02064658
	push {r3, lr}
	mov r1, #0xc
	mov r2, #0xd
	mov r3, #2
	bl sub_02064668
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064658

	thumb_func_start sub_02064668
sub_02064668: ; 0x02064668
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r3, #0
	mov r1, #0x10
	add r5, r0, #0
	add r6, r2, #0
	bl sub_02062A54
	str r7, [r0, #4]
	str r4, [r0, #8]
	str r6, [r0, #0xc]
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02064668

	thumb_func_start sub_02064690
sub_02064690: ; 0x02064690
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #4
	bhi _02064798
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020646AE: ; jump table
	.short _020646B8 - _020646AE - 2 ; case 0
	.short _020646E2 - _020646AE - 2 ; case 1
	.short _02064700 - _020646AE - 2 ; case 2
	.short _02064716 - _020646AE - 2 ; case 3
	.short _02064784 - _020646AE - 2 ; case 4
_020646B8:
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	add r0, r5, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_020646E2:
	add r0, r5, #0
	bl sub_020658DC
	cmp r0, #0
	beq _02064798
	mov r1, #0
	ldr r0, _0206479C ; =0x020EEA88
	mvn r1, r1
	bl sub_0206530C
	strh r0, [r4, #2]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4]
_02064700:
	mov r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02064798
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4]
_02064716:
	mov r1, #0
	ldr r0, [r4, #0xc]
	mvn r1, r1
	bl sub_02065330
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020629A0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02064742
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206489C
	cmp r0, #0
	bne _02064742
	mov r0, #0
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02064742:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02063EBC
	cmp r0, #0
	beq _02064766
	ldr r1, [r4, #4]
	cmp r1, #2
	bne _02064760
	mov r1, #1
	tst r0, r1
	beq _02064766
	mov r0, #0
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02064760:
	mov r0, #0
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02064766:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	add r0, r5, #0
	bl sub_02062D04
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4]
_02064784:
	add r0, r5, #0
	bl sub_020658DC
	cmp r0, #0
	beq _02064798
	add r0, r5, #0
	bl sub_02062D10
	mov r0, #0
	strh r0, [r4]
_02064798:
	pop {r4, r5, r6, pc}
	nop
_0206479C: .word 0x020EEA88
	thumb_func_end sub_02064690

	thumb_func_start sub_020647A0
sub_020647A0: ; 0x020647A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r4, r1, #0
	bl sub_02062FF0
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_02063000
	add r5, r0, #0
	ldr r0, [sp]
	bl sub_02062A00
	add r7, r0, #0
	ldr r0, [sp]
	bl sub_02062A08
	str r0, [sp, #4]
	ldr r0, [sp]
	bl sub_02062948
	cmp r0, #0xd
	bhi _02064894
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020647DC: ; jump table
	.short _02064894 - _020647DC - 2 ; case 0
	.short _02064894 - _020647DC - 2 ; case 1
	.short _02064894 - _020647DC - 2 ; case 2
	.short _02064894 - _020647DC - 2 ; case 3
	.short _02064894 - _020647DC - 2 ; case 4
	.short _02064894 - _020647DC - 2 ; case 5
	.short _020647F8 - _020647DC - 2 ; case 6
	.short _0206480A - _020647DC - 2 ; case 7
	.short _0206481C - _020647DC - 2 ; case 8
	.short _0206482E - _020647DC - 2 ; case 9
	.short _02064840 - _020647DC - 2 ; case 10
	.short _02064856 - _020647DC - 2 ; case 11
	.short _0206486C - _020647DC - 2 ; case 12
	.short _02064880 - _020647DC - 2 ; case 13
_020647F8:
	sub r0, r6, r7
	str r0, [r4, #0]
	ldr r0, [sp, #4]
	str r6, [r4, #8]
	sub r0, r5, r0
	str r0, [r4, #4]
	add sp, #8
	str r5, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0206480A:
	str r6, [r4, #0]
	add r0, r6, r7
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	add sp, #8
	sub r0, r5, r0
	str r0, [r4, #4]
	str r5, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0206481C:
	sub r0, r6, r7
	str r0, [r4, #0]
	ldr r0, [sp, #4]
	str r6, [r4, #8]
	str r5, [r4, #4]
	add r0, r5, r0
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0206482E:
	str r6, [r4, #0]
	add r0, r6, r7
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	str r5, [r4, #4]
	add r0, r5, r0
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02064840:
	sub r0, r6, r7
	str r0, [r4, #0]
	ldr r0, [sp, #4]
	str r6, [r4, #8]
	sub r0, r5, r0
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	add sp, #8
	add r0, r5, r0
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02064856:
	str r6, [r4, #0]
	add r0, r6, r7
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	sub r0, r5, r0
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	add sp, #8
	add r0, r5, r0
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0206486C:
	sub r0, r6, r7
	str r0, [r4, #0]
	add r0, r6, r7
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	add sp, #8
	sub r0, r5, r0
	str r0, [r4, #4]
	str r5, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02064880:
	sub r0, r6, r7
	str r0, [r4, #0]
	add r0, r6, r7
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	str r5, [r4, #4]
	add r0, r5, r0
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02064894:
	bl sub_02022974
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020647A0

	thumb_func_start sub_0206489C
sub_0206489C: ; 0x0206489C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	add r1, sp, #0
	bl sub_020647A0
	add r0, r5, #0
	bl sub_02063020
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0206419C
	add r4, r4, r0
	add r0, r5, #0
	bl sub_02063040
	add r5, r0, #0
	add r0, r6, #0
	bl sub_020641A8
	add r1, r5, r0
	ldr r0, [sp]
	cmp r0, r4
	bgt _020648D6
	ldr r0, [sp, #8]
	cmp r0, r4
	bge _020648DC
_020648D6:
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_020648DC:
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt _020648E8
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _020648EE
_020648E8:
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_020648EE:
	mov r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206489C

	thumb_func_start sub_020648F4
sub_020648F4: ; 0x020648F4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #8
	bl sub_02062A54
	str r4, [r0, #0]
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02064208
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020648F4

	thumb_func_start sub_02064918
sub_02064918: ; 0x02064918
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0206492C
	cmp r0, #1
	pop {r3, r4, r5, pc}
_0206492C:
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl sub_02062974
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02064918

	thumb_func_start sub_0206493C
sub_0206493C: ; 0x0206493C
	ldr r3, _02064944 ; =sub_020648F4
	mov r1, #0
	bx r3
	nop
_02064944: .word sub_020648F4
	thumb_func_end sub_0206493C

	thumb_func_start sub_02064948
sub_02064948: ; 0x02064948
	ldr r3, _02064950 ; =sub_020648F4
	mov r1, #1
	bx r3
	nop
_02064950: .word sub_020648F4
	thumb_func_end sub_02064948

	thumb_func_start sub_02064954
sub_02064954: ; 0x02064954
	ldr r3, _0206495C ; =sub_020648F4
	mov r1, #2
	bx r3
	nop
_0206495C: .word sub_020648F4
	thumb_func_end sub_02064954

	thumb_func_start sub_02064960
sub_02064960: ; 0x02064960
	ldr r3, _02064968 ; =sub_020648F4
	mov r1, #3
	bx r3
	nop
_02064968: .word sub_020648F4
	thumb_func_end sub_02064960

	thumb_func_start sub_0206496C
sub_0206496C: ; 0x0206496C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #8
	bl sub_02062A54
	strb r4, [r0]
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02064208
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206496C

	thumb_func_start sub_02064990
sub_02064990: ; 0x02064990
	ldr r3, _02064998 ; =sub_0206496C
	mov r1, #2
	bx r3
	nop
_02064998: .word sub_0206496C
	thumb_func_end sub_02064990

	thumb_func_start sub_0206499C
sub_0206499C: ; 0x0206499C
	ldr r3, _020649A4 ; =sub_0206496C
	mov r1, #3
	bx r3
	nop
_020649A4: .word sub_0206496C
	thumb_func_end sub_0206499C

	thumb_func_start sub_020649A8
sub_020649A8: ; 0x020649A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _020649C8 ; =0x020EE900
	add r4, r0, #0
	mov r7, #2
_020649B6:
	ldrsb r2, [r4, r7]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _020649B6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020649C8: .word 0x020EE900
	thumb_func_end sub_020649A8

	thumb_func_start sub_020649CC
sub_020649CC: ; 0x020649CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x26
	add r2, r1, #0
	sub r2, #0x27
	add r5, r0, #0
	bl sub_02065448
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020649EA
	add r0, r5, #0
	bl sub_0206298C
_020649EA:
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #1
	strb r0, [r4, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020649CC

	thumb_func_start sub_02064A00
sub_02064A00: ; 0x02064A00
	push {r4, lr}
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #0
	bne _02064A10
	mov r0, #0
	pop {r4, pc}
_02064A10:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #2
	strb r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02064A00

	thumb_func_start sub_02064A1C
sub_02064A1C: ; 0x02064A1C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02064A40
	mov r1, #0x26
	add r2, r1, #0
	sub r2, #0x27
	bl sub_02065448
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02064A40
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
_02064A40:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x18
	bge _02064A4E
	mov r0, #0
	pop {r4, pc}
_02064A4E:
	mov r0, #3
	strb r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02064A1C

	thumb_func_start sub_02064A58
sub_02064A58: ; 0x02064A58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r3, _02064AE8 ; =0x020EEA24
	add r2, sp, #0x14
	add r7, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	add r5, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r4, _02064AEC ; =0x020EEA38
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #2
	beq _02064A8E
	add r5, r2, #0
_02064A8E:
	add r0, r7, #0
	bl sub_0206298C
	mov r4, #0
	ldr r2, [r5, #0]
	sub r1, r4, #1
	cmp r2, r1
	beq _02064AB2
	add r1, r5, #0
	sub r2, r4, #1
_02064AA2:
	ldr r3, [r1, #0]
	cmp r0, r3
	beq _02064AB2
	add r1, r1, #4
	ldr r3, [r1, #0]
	add r4, r4, #1
	cmp r3, r2
	bne _02064AA2
_02064AB2:
	lsl r0, r4, #2
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02064AC2
	bl sub_02022974
_02064AC2:
	add r4, r4, #1
	lsl r0, r4, #2
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02064AD2
	mov r4, #0
_02064AD2:
	lsl r1, r4, #2
	ldr r1, [r5, r1]
	add r0, r7, #0
	bl sub_02062974
	mov r0, #0
	strb r0, [r6, #2]
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02064AE8: .word 0x020EEA24
_02064AEC: .word 0x020EEA38
	thumb_func_end sub_02064A58

	thumb_func_start sub_02064AF0
sub_02064AF0: ; 0x02064AF0
	ldr r3, _02064AF8 ; =sub_0206496C
	mov r1, #3
	bx r3
	nop
_02064AF8: .word sub_0206496C
	thumb_func_end sub_02064AF0

	thumb_func_start sub_02064AFC
sub_02064AFC: ; 0x02064AFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _02064B1C ; =0x020EE870
	add r4, r0, #0
	mov r7, #2
_02064B0A:
	ldrsb r2, [r4, r7]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _02064B0A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02064B1C: .word 0x020EE870
	thumb_func_end sub_02064AFC

	thumb_func_start sub_02064B20
sub_02064B20: ; 0x02064B20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #1
	strb r0, [r4, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02064B20

	thumb_func_start sub_02064B40
sub_02064B40: ; 0x02064B40
	push {r4, lr}
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #0
	bne _02064B50
	mov r0, #0
	pop {r4, pc}
_02064B50:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #2
	strb r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02064B40

	thumb_func_start sub_02064B5C
sub_02064B5C: ; 0x02064B5C
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0x18
	bge _02064B6A
	mov r0, #0
	bx lr
_02064B6A:
	mov r0, #3
	strb r0, [r1, #2]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02064B5C

	thumb_func_start sub_02064B74
sub_02064B74: ; 0x02064B74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r3, _02064C20 ; =0x020EEA4C
	add r2, sp, #0x14
	add r7, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	add r5, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02064C24 ; =0x020EEA60
	str r0, [r2, #0]
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #2
	beq _02064BAA
	add r5, r4, #0
_02064BAA:
	add r0, r7, #0
	bl sub_0206298C
	mov r4, #0
	ldr r2, [r5, #0]
	sub r1, r4, #1
	cmp r2, r1
	beq _02064BCE
	add r1, r5, #0
	sub r2, r4, #1
_02064BBE:
	ldr r3, [r1, #0]
	cmp r0, r3
	beq _02064BCE
	add r1, r1, #4
	ldr r3, [r1, #0]
	add r4, r4, #1
	cmp r3, r2
	bne _02064BBE
_02064BCE:
	lsl r0, r4, #2
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02064BDE
	bl sub_02022974
_02064BDE:
	add r4, r4, #1
	lsl r0, r4, #2
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02064BEE
	mov r4, #0
_02064BEE:
	lsl r1, r4, #2
	ldr r1, [r5, r1]
	add r0, r7, #0
	bl sub_02062974
	add r0, r7, #0
	bl sub_0206298C
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02062968
	cmp r4, r0
	bne _02064C14
	mov r0, #0
	ldrsb r0, [r6, r0]
	bl sub_0206447C
	strb r0, [r6]
_02064C14:
	mov r0, #0
	strb r0, [r6, #2]
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02064C20: .word 0x020EEA4C
_02064C24: .word 0x020EEA60
	thumb_func_end sub_02064B74

	thumb_func_start sub_02064C28
sub_02064C28: ; 0x02064C28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #8
	bl sub_02062A54
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02064C46
	add r0, r5, #0
	add r1, r4, #4
	bl sub_02065550
_02064C46:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02064C28

	thumb_func_start sub_02064C48
sub_02064C48: ; 0x02064C48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _02064C68 ; =0x020EE814
	add r4, r0, #0
	mov r7, #0
_02064C56:
	ldrsh r2, [r4, r7]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _02064C56
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02064C68: .word 0x020EE814
	thumb_func_end sub_02064C48

	thumb_func_start sub_02064C6C
sub_02064C6C: ; 0x02064C6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062968
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r6, r0, #0
	cmp r1, #1
	bne _02064C86
	bl sub_0206447C
	add r6, r0, #0
_02064C86:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #0
	bne _02064CA0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02062974
_02064CA0:
	mov r0, #1
	strh r0, [r4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02064C6C

	thumb_func_start sub_02064CA8
sub_02064CA8: ; 0x02064CA8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #2
	ldrsh r1, [r6, r1]
	add r5, r0, #0
	cmp r1, #0
	beq _02064D06
	bl sub_02062FF0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063000
	str r0, [sp]
	add r0, r5, #0
	bl sub_02063020
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063040
	cmp r7, r4
	bne _02064D06
	ldr r1, [sp]
	cmp r1, r0
	bne _02064D06
	add r0, r5, #0
	bl sub_0206299C
	bl sub_0206447C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #0
	bne _02064D02
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062974
_02064D02:
	mov r0, #0
	strh r0, [r6, #2]
_02064D06:
	add r0, r5, #0
	bl sub_0206299C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02063EBC
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	beq _02064D30
	add r0, r4, #0
	strh r1, [r6, #2]
	bl sub_0206447C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02063EBC
_02064D30:
	mov r1, #0xc
	cmp r0, #0
	beq _02064D38
	mov r1, #0x20
_02064D38:
	add r0, r4, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02064D58
	add r0, r5, #0
	add r1, r6, #4
	bl sub_02065568
_02064D58:
	add r0, r5, #0
	bl sub_02062D04
	mov r0, #2
	strh r0, [r6]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02064CA8

	thumb_func_start sub_02064D68
sub_02064D68: ; 0x02064D68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _02064D92
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02064D8E
	add r0, r5, #0
	add r1, r4, #4
	bl sub_020655E4
_02064D8E:
	mov r0, #0
	strh r0, [r4]
_02064D92:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02064D68

	thumb_func_start sub_02064D98
sub_02064D98: ; 0x02064D98
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xc
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02062A54
	add r4, r0, #0
	strb r6, [r4, #2]
	ldr r0, [sp]
	strb r7, [r4, #3]
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02064DC6
	add r4, #8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065550
_02064DC6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02064D98

	thumb_func_start sub_02064DC8
sub_02064DC8: ; 0x02064DC8
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0xe
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064DC8

	thumb_func_start sub_02064DD8
sub_02064DD8: ; 0x02064DD8
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0xf
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064DD8

	thumb_func_start sub_02064DE8
sub_02064DE8: ; 0x02064DE8
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x10
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064DE8

	thumb_func_start sub_02064DF8
sub_02064DF8: ; 0x02064DF8
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x11
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064DF8

	thumb_func_start sub_02064E08
sub_02064E08: ; 0x02064E08
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x12
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E08

	thumb_func_start sub_02064E18
sub_02064E18: ; 0x02064E18
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x13
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E18

	thumb_func_start sub_02064E28
sub_02064E28: ; 0x02064E28
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x14
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E28

	thumb_func_start sub_02064E38
sub_02064E38: ; 0x02064E38
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x15
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E38

	thumb_func_start sub_02064E48
sub_02064E48: ; 0x02064E48
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x16
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E48

	thumb_func_start sub_02064E58
sub_02064E58: ; 0x02064E58
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x17
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E58

	thumb_func_start sub_02064E68
sub_02064E68: ; 0x02064E68
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x18
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E68

	thumb_func_start sub_02064E78
sub_02064E78: ; 0x02064E78
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x19
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E78

	thumb_func_start sub_02064E88
sub_02064E88: ; 0x02064E88
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x1a
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E88

	thumb_func_start sub_02064E98
sub_02064E98: ; 0x02064E98
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x1b
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064E98

	thumb_func_start sub_02064EA8
sub_02064EA8: ; 0x02064EA8
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x1c
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064EA8

	thumb_func_start sub_02064EB8
sub_02064EB8: ; 0x02064EB8
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x1d
	bl sub_02064D98
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02064EB8

	thumb_func_start sub_02064EC8
sub_02064EC8: ; 0x02064EC8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _02064EE8 ; =0x020EE7AC
	add r4, r0, #0
_02064ED4:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _02064ED4
	pop {r4, r5, r6, pc}
	nop
_02064EE8: .word 0x020EE7AC
	thumb_func_end sub_02064EC8

	thumb_func_start sub_02064EEC
sub_02064EEC: ; 0x02064EEC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldrb r2, [r4, #1]
	ldrb r1, [r4, #2]
	add r6, r0, #0
	cmp r2, r1
	bne _02064F2E
	ldrb r1, [r4, #3]
	cmp r1, #0
	bne _02064F18
	bl sub_02062FF0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063020
	cmp r5, r0
	bne _02064F2E
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02064F2E
_02064F18:
	bl sub_02063000
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063040
	cmp r5, r0
	bne _02064F2E
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_02064F2E:
	ldrb r0, [r4, #1]
	cmp r0, #3
	bne _02064F60
	add r0, r6, #0
	bl sub_02062FF0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02063000
	str r0, [sp]
	add r0, r6, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063040
	cmp r7, r5
	bne _02064F60
	ldr r1, [sp]
	cmp r1, r0
	bne _02064F60
	mov r0, #0
	strb r0, [r4, #1]
_02064F60:
	ldr r0, [r4, #4]
	bl sub_02065358
	add r7, r0, #0
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	ldr r5, [r7, r0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062994
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #0
	bne _02064F88
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062974
_02064F88:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02063EBC
	mov r1, #1
	tst r1, r0
	beq _02064FC4
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	ldr r5, [r7, r0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062994
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #0
	bne _02064FBC
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062974
_02064FBC:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02063EBC
_02064FC4:
	mov r1, #0xc
	cmp r0, #0
	beq _02064FCC
	mov r1, #0x20
_02064FCC:
	add r0, r5, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02065668
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02064FEE
	add r1, r4, #0
	add r0, r6, #0
	add r1, #8
	bl sub_02065568
_02064FEE:
	add r0, r6, #0
	bl sub_02062D04
	mov r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02064EEC

	thumb_func_start sub_02064FFC
sub_02064FFC: ; 0x02064FFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _02065028
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _02065024
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl sub_020655E4
_02065024:
	mov r0, #0
	strb r0, [r4]
_02065028:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02064FFC

	thumb_func_start sub_0206502C
sub_0206502C: ; 0x0206502C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xc
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02062A54
	add r4, r0, #0
	strb r6, [r4, #2]
	ldr r0, [sp]
	strb r7, [r4, #3]
	strb r0, [r4, #4]
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _0206505A
	add r4, #8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065550
_0206505A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206502C

	thumb_func_start sub_0206505C
sub_0206505C: ; 0x0206505C
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x1e
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206505C

	thumb_func_start sub_0206506C
sub_0206506C: ; 0x0206506C
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x1f
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206506C

	thumb_func_start sub_0206507C
sub_0206507C: ; 0x0206507C
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x20
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206507C

	thumb_func_start sub_0206508C
sub_0206508C: ; 0x0206508C
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x21
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206508C

	thumb_func_start sub_0206509C
sub_0206509C: ; 0x0206509C
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x22
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206509C

	thumb_func_start sub_020650AC
sub_020650AC: ; 0x020650AC
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x23
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020650AC

	thumb_func_start sub_020650BC
sub_020650BC: ; 0x020650BC
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x24
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020650BC

	thumb_func_start sub_020650CC
sub_020650CC: ; 0x020650CC
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x25
	bl sub_0206502C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020650CC

	thumb_func_start sub_020650DC
sub_020650DC: ; 0x020650DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _020650FC ; =0x020EE820
	add r4, r0, #0
_020650E8:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _020650E8
	pop {r4, r5, r6, pc}
	nop
_020650FC: .word 0x020EE820
	thumb_func_end sub_020650DC

	thumb_func_start sub_02065100
sub_02065100: ; 0x02065100
	ldrb r1, [r0, #5]
	cmp r1, #1
	bne _0206511A
	mov r1, #1
	ldrsb r2, [r0, r1]
	sub r2, r2, #1
	strb r2, [r0, #1]
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _02065122
	mov r1, #3
	strb r1, [r0, #1]
	bx lr
_0206511A:
	mov r1, #1
	ldrsb r1, [r0, r1]
	add r1, r1, #1
	strb r1, [r0, #1]
_02065122:
	bx lr
	thumb_func_end sub_02065100

	thumb_func_start sub_02065124
sub_02065124: ; 0x02065124
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062950
	cmp r0, #0xa
	bne _02065180
	add r0, r5, #0
	bl sub_02062C00
	bl sub_0205EF3C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0206298C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02067D58
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _02065180
	add r0, r6, #0
	mov r1, #0x30
	bl sub_02065838
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02065668
	add r0, r5, #0
	bl sub_02062D04
	mov r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02065180:
	mov r0, #2
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02065124

	thumb_func_start sub_02065188
sub_02065188: ; 0x02065188
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _020651A0
	add r0, r5, #0
	bl sub_02062D10
	mov r0, #2
	strb r0, [r4]
_020651A0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02065188

	thumb_func_start sub_020651A4
sub_020651A4: ; 0x020651A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #1
	ldrsb r2, [r4, r1]
	ldrb r1, [r4, #2]
	add r6, r0, #0
	cmp r2, r1
	bne _020651E8
	ldrb r1, [r4, #3]
	cmp r1, #0
	bne _020651D2
	bl sub_02062FF0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063020
	cmp r5, r0
	bne _020651E8
	add r0, r4, #0
	bl sub_02065100
	b _020651E8
_020651D2:
	bl sub_02063000
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063040
	cmp r5, r0
	bne _020651E8
	add r0, r4, #0
	bl sub_02065100
_020651E8:
	mov r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0206521C
	add r0, r6, #0
	bl sub_02062FF0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02063000
	str r0, [sp]
	add r0, r6, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063040
	cmp r7, r5
	bne _0206521C
	ldr r1, [sp]
	cmp r1, r0
	bne _0206521C
	mov r0, #0
	strb r0, [r4, #1]
_0206521C:
	ldrb r0, [r4, #4]
	bl sub_02065358
	add r7, r0, #0
	mov r0, #1
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	ldr r5, [r7, r0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062994
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #0
	bne _02065246
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062974
_02065246:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02063EBC
	mov r1, #1
	tst r1, r0
	beq _02065284
	add r0, r4, #0
	bl sub_02065100
	mov r0, #1
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	ldr r5, [r7, r0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062994
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #0
	bne _0206527C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062974
_0206527C:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02063EBC
_02065284:
	mov r1, #0xc
	cmp r0, #0
	beq _0206528C
	mov r1, #0x20
_0206528C:
	add r0, r5, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02065668
	add r0, r6, #0
	bl sub_0206553C
	cmp r0, #1
	bne _020652AE
	add r1, r4, #0
	add r0, r6, #0
	add r1, #8
	bl sub_02065568
_020652AE:
	add r0, r6, #0
	bl sub_02062D04
	mov r0, #3
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020651A4

	thumb_func_start sub_020652BC
sub_020652BC: ; 0x020652BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _020652E8
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_0206553C
	cmp r0, #1
	bne _020652E4
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl sub_020655E4
_020652E4:
	mov r0, #0
	strb r0, [r4]
_020652E8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020652BC

	thumb_func_start sub_020652EC
sub_020652EC: ; 0x020652EC
	push {r4, lr}
	ldr r2, [r0, #0]
	mov r4, #0
	cmp r1, r2
	beq _02065300
_020652F6:
	add r0, r0, #4
	ldr r2, [r0, #0]
	add r4, r4, #1
	cmp r1, r2
	bne _020652F6
_02065300:
	cmp r4, #0
	bne _02065308
	bl sub_02022974
_02065308:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020652EC

	thumb_func_start sub_0206530C
sub_0206530C: ; 0x0206530C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201D2E8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020652EC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E1F6C
	lsl r0, r1, #2
	ldr r0, [r5, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206530C

	thumb_func_start sub_02065330
sub_02065330: ; 0x02065330
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02065358
	add r4, r0, #0
	bl sub_0201D2E8
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020652EC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E1F6C
	lsl r0, r1, #2
	ldr r0, [r4, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02065330

	thumb_func_start sub_02065358
sub_02065358: ; 0x02065358
	push {r3, lr}
	ldr r1, _02065378 ; =0x020EEB08
	mov r2, #0
_0206535E:
	cmp r2, r0
	bne _02065366
	ldr r0, [r1, #4]
	pop {r3, pc}
_02065366:
	add r1, #8
	ldr r2, [r1, #0]
	cmp r2, #0x27
	bne _0206535E
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_02065378: .word 0x020EEB08
	thumb_func_end sub_02065358

	thumb_func_start sub_0206537C
sub_0206537C: ; 0x0206537C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062950
	cmp r0, #1
	beq _02065392
	cmp r0, #2
	beq _02065392
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02065392:
	add r0, r5, #0
	bl sub_02062C00
	bl sub_0205EF3C
	add r6, r0, #0
	bl sub_0206140C
	cmp r0, #0
	bne _020653AC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020653AC:
	add r0, r5, #0
	mov r4, #0
	bl sub_02062948
	ldr r1, _02065444 ; =0x020EEAD0
_020653B6:
	lsl r2, r4, #2
	ldr r2, [r1, r2]
	add r4, r4, #1
	cmp r2, r0
	beq _020653C4
	cmp r2, #0xff
	bne _020653B6
_020653C4:
	cmp r0, r2
	beq _020653CE
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020653CE:
	add r0, r6, #0
	bl sub_0205EB3C
	bl sub_020630DC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020630DC
	cmp r4, r0
	beq _020653EA
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020653EA:
	add r0, r6, #0
	bl sub_0205EABC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205EAC8
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	str r0, [sp]
	add r0, r5, #0
	bl sub_02063020
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063040
	add r2, r0, #0
	ldr r3, [sp]
	ldr r0, [sp]
	add r5, r2, r3
	sub r1, r7, r0
	sub r3, r2, r3
	add r0, r7, r0
	cmp r3, r6
	bgt _0206543E
	cmp r5, r6
	blt _0206543E
	cmp r1, r4
	bgt _0206543E
	cmp r0, r4
	blt _0206543E
	add r1, r2, #0
	add r0, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02064488
	pop {r3, r4, r5, r6, r7, pc}
_0206543E:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02065444: .word 0x020EEAD0
	thumb_func_end sub_0206537C

	thumb_func_start sub_02065448
sub_02065448: ; 0x02065448
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r4, r2, #0
	add r0, r1, #0
	bl sub_02065358
	add r1, r4, #0
	add r5, r0, #0
	bl sub_020652EC
	add r4, r0, #0
	cmp r4, #1
	bne _0206546C
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_0206546C:
	ldr r0, [sp]
	bl sub_0206537C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02065536
	mov r2, #0
	add r3, r5, #0
_0206547E:
	ldr r1, [r3, #0]
	cmp r0, r1
	beq _02065536
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, r4
	blt _0206547E
	mov r7, #0
	mvn r7, r7
	ldr r0, [sp]
	add r6, r7, #0
	bl sub_02063020
	str r0, [sp, #8]
	ldr r0, [sp]
	bl sub_02063040
	str r0, [sp, #4]
	ldr r0, [sp]
	bl sub_02062C00
	bl sub_0205EF3C
	str r0, [sp, #0xc]
	bl sub_0205EABC
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_0205EAC8
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x10]
	cmp r2, r1
	ble _020654C6
	mov r7, #2
	b _020654CC
_020654C6:
	cmp r2, r1
	bge _020654CC
	mov r7, #3
_020654CC:
	ldr r1, [sp, #4]
	cmp r1, r0
	ble _020654D6
	mov r6, #0
	b _020654DC
_020654D6:
	cmp r1, r0
	bge _020654DC
	mov r6, #1
_020654DC:
	mov r0, #0
	sub r1, r0, #1
	cmp r7, r1
	bne _020654FA
_020654E4:
	ldr r1, [r5, #0]
	cmp r6, r1
	bne _020654F0
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_020654F0:
	add r0, r0, #1
	add r5, r5, #4
	cmp r0, r4
	blt _020654E4
	b _02065532
_020654FA:
	cmp r6, r1
	bne _02065514
_020654FE:
	ldr r1, [r5, #0]
	cmp r7, r1
	bne _0206550A
	add sp, #0x14
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_0206550A:
	add r0, r0, #1
	add r5, r5, #4
	cmp r0, r4
	blt _020654FE
	b _02065532
_02065514:
	ldr r1, [r5, #0]
	cmp r7, r1
	bne _02065520
	add sp, #0x14
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02065520:
	cmp r6, r1
	bne _0206552A
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_0206552A:
	add r0, r0, #1
	add r5, r5, #4
	cmp r0, r4
	blt _02065514
_02065532:
	mov r0, #0
	mvn r0, r0
_02065536:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02065448

	thumb_func_start sub_0206553C
sub_0206553C: ; 0x0206553C
	push {r3, lr}
	bl sub_02062950
	sub r0, r0, #7
	cmp r0, #1
	bhi _0206554C
	mov r0, #1
	pop {r3, pc}
_0206554C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206553C

	thumb_func_start sub_02065550
sub_02065550: ; 0x02065550
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062950
	cmp r0, #7
	bne _02065562
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
_02065562:
	mov r0, #1
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end sub_02065550

	thumb_func_start sub_02065568
sub_02065568: ; 0x02065568
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	bl sub_0206298C
	mov r4, #0
	add r6, r0, #0
	add r1, r4, #0
	ldr r0, _020655E0 ; =0x020EEAB0
	mov r2, #1
	b _02065582
_0206557E:
	add r1, r1, #4
	add r4, r4, #1
_02065582:
	cmp r4, #4
	bge _02065592
	ldrsb r3, [r5, r2]
	lsl r3, r3, #4
	add r3, r0, r3
	ldr r3, [r1, r3]
	cmp r6, r3
	bne _0206557E
_02065592:
	cmp r4, #4
	blt _0206559A
	bl sub_02022974
_0206559A:
	add r0, r4, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	strb r6, [r5]
	mov r0, #1
	add r1, r2, r1
	ldrsb r0, [r5, r0]
	lsl r1, r1, #2
	lsl r2, r0, #4
	ldr r0, _020655E0 ; =0x020EEAB0
	add r0, r0, r2
	ldr r4, [r1, r0]
	add r0, r7, #0
	mov r1, #0x80
	bl sub_020628D0
	cmp r0, #0
	beq _020655C8
	mov r0, #1
	b _020655CA
_020655C8:
	mov r0, #0
_020655CA:
	strb r0, [r5, #2]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02062974
	add r0, r7, #0
	mov r1, #0x80
	bl sub_020628BC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020655E0: .word 0x020EEAB0
	thumb_func_end sub_02065568

	thumb_func_start sub_020655E4
sub_020655E4: ; 0x020655E4
	push {r3, lr}
	ldrb r1, [r1, #2]
	cmp r1, #0
	bne _020655F2
	mov r1, #0x80
	bl sub_020628C4
_020655F2:
	pop {r3, pc}
	thumb_func_end sub_020655E4

	.rodata


	.global Unk_020EE7AC
Unk_020EE7AC: ; 0x020EE7AC
	.incbin "incbin/arm9_rodata.bin", 0x9B6C, 0x9B74 - 0x9B6C

	.global Unk_020EE7B4
Unk_020EE7B4: ; 0x020EE7B4
	.incbin "incbin/arm9_rodata.bin", 0x9B74, 0x9B80 - 0x9B74

	.global Unk_020EE7C0
Unk_020EE7C0: ; 0x020EE7C0
	.incbin "incbin/arm9_rodata.bin", 0x9B80, 0x9B8C - 0x9B80

	.global Unk_020EE7CC
Unk_020EE7CC: ; 0x020EE7CC
	.incbin "incbin/arm9_rodata.bin", 0x9B8C, 0x9B98 - 0x9B8C

	.global Unk_020EE7D8
Unk_020EE7D8: ; 0x020EE7D8
	.incbin "incbin/arm9_rodata.bin", 0x9B98, 0x9BA4 - 0x9B98

	.global Unk_020EE7E4
Unk_020EE7E4: ; 0x020EE7E4
	.incbin "incbin/arm9_rodata.bin", 0x9BA4, 0x9BB0 - 0x9BA4

	.global Unk_020EE7F0
Unk_020EE7F0: ; 0x020EE7F0
	.incbin "incbin/arm9_rodata.bin", 0x9BB0, 0x9BBC - 0x9BB0

	.global Unk_020EE7FC
Unk_020EE7FC: ; 0x020EE7FC
	.incbin "incbin/arm9_rodata.bin", 0x9BBC, 0x9BC8 - 0x9BBC

	.global Unk_020EE808
Unk_020EE808: ; 0x020EE808
	.incbin "incbin/arm9_rodata.bin", 0x9BC8, 0x9BD4 - 0x9BC8

	.global Unk_020EE814
Unk_020EE814: ; 0x020EE814
	.incbin "incbin/arm9_rodata.bin", 0x9BD4, 0x9BE0 - 0x9BD4

	.global Unk_020EE820
Unk_020EE820: ; 0x020EE820
	.incbin "incbin/arm9_rodata.bin", 0x9BE0, 0x9BF0 - 0x9BE0

	.global Unk_020EE830
Unk_020EE830: ; 0x020EE830
	.incbin "incbin/arm9_rodata.bin", 0x9BF0, 0x9C00 - 0x9BF0

	.global Unk_020EE840
Unk_020EE840: ; 0x020EE840
	.incbin "incbin/arm9_rodata.bin", 0x9C00, 0x9C10 - 0x9C00

	.global Unk_020EE850
Unk_020EE850: ; 0x020EE850
	.incbin "incbin/arm9_rodata.bin", 0x9C10, 0x9C20 - 0x9C10

	.global Unk_020EE860
Unk_020EE860: ; 0x020EE860
	.incbin "incbin/arm9_rodata.bin", 0x9C20, 0x9C30 - 0x9C20

	.global Unk_020EE870
Unk_020EE870: ; 0x020EE870
	.incbin "incbin/arm9_rodata.bin", 0x9C30, 0x9C40 - 0x9C30

	.global Unk_020EE880
Unk_020EE880: ; 0x020EE880
	.incbin "incbin/arm9_rodata.bin", 0x9C40, 0x9C50 - 0x9C40

	.global Unk_020EE890
Unk_020EE890: ; 0x020EE890
	.incbin "incbin/arm9_rodata.bin", 0x9C50, 0x9C60 - 0x9C50

	.global Unk_020EE8A0
Unk_020EE8A0: ; 0x020EE8A0
	.incbin "incbin/arm9_rodata.bin", 0x9C60, 0x9C70 - 0x9C60

	.global Unk_020EE8B0
Unk_020EE8B0: ; 0x020EE8B0
	.incbin "incbin/arm9_rodata.bin", 0x9C70, 0x9C80 - 0x9C70

	.global Unk_020EE8C0
Unk_020EE8C0: ; 0x020EE8C0
	.incbin "incbin/arm9_rodata.bin", 0x9C80, 0x9C90 - 0x9C80

	.global Unk_020EE8D0
Unk_020EE8D0: ; 0x020EE8D0
	.incbin "incbin/arm9_rodata.bin", 0x9C90, 0x9CA0 - 0x9C90

	.global Unk_020EE8E0
Unk_020EE8E0: ; 0x020EE8E0
	.incbin "incbin/arm9_rodata.bin", 0x9CA0, 0x9CB0 - 0x9CA0

	.global Unk_020EE8F0
Unk_020EE8F0: ; 0x020EE8F0
	.incbin "incbin/arm9_rodata.bin", 0x9CB0, 0x9CC0 - 0x9CB0

	.global Unk_020EE900
Unk_020EE900: ; 0x020EE900
	.incbin "incbin/arm9_rodata.bin", 0x9CC0, 0x9CD0 - 0x9CC0

	.global Unk_020EE910
Unk_020EE910: ; 0x020EE910
	.incbin "incbin/arm9_rodata.bin", 0x9CD0, 0x9CE0 - 0x9CD0

	.global Unk_020EE920
Unk_020EE920: ; 0x020EE920
	.incbin "incbin/arm9_rodata.bin", 0x9CE0, 0x9CF0 - 0x9CE0

	.global Unk_020EE930
Unk_020EE930: ; 0x020EE930
	.incbin "incbin/arm9_rodata.bin", 0x9CF0, 0x9D00 - 0x9CF0

	.global Unk_020EE940
Unk_020EE940: ; 0x020EE940
	.incbin "incbin/arm9_rodata.bin", 0x9D00, 0x9D10 - 0x9D00

	.global Unk_020EE950
Unk_020EE950: ; 0x020EE950
	.incbin "incbin/arm9_rodata.bin", 0x9D10, 0x9D20 - 0x9D10

	.global Unk_020EE960
Unk_020EE960: ; 0x020EE960
	.incbin "incbin/arm9_rodata.bin", 0x9D20, 0x9D30 - 0x9D20

	.global Unk_020EE970
Unk_020EE970: ; 0x020EE970
	.incbin "incbin/arm9_rodata.bin", 0x9D30, 0x9D40 - 0x9D30

	.global Unk_020EE980
Unk_020EE980: ; 0x020EE980
	.incbin "incbin/arm9_rodata.bin", 0x9D40, 0x9D50 - 0x9D40

	.global Unk_020EE990
Unk_020EE990: ; 0x020EE990
	.incbin "incbin/arm9_rodata.bin", 0x9D50, 0x9D60 - 0x9D50

	.global Unk_020EE9A0
Unk_020EE9A0: ; 0x020EE9A0
	.incbin "incbin/arm9_rodata.bin", 0x9D60, 0x9D70 - 0x9D60

	.global Unk_020EE9B0
Unk_020EE9B0: ; 0x020EE9B0
	.incbin "incbin/arm9_rodata.bin", 0x9D70, 0x9D80 - 0x9D70

	.global Unk_020EE9C0
Unk_020EE9C0: ; 0x020EE9C0
	.incbin "incbin/arm9_rodata.bin", 0x9D80, 0x9D90 - 0x9D80

	.global Unk_020EE9D0
Unk_020EE9D0: ; 0x020EE9D0
	.incbin "incbin/arm9_rodata.bin", 0x9D90, 0x9DA0 - 0x9D90

	.global Unk_020EE9E0
Unk_020EE9E0: ; 0x020EE9E0
	.incbin "incbin/arm9_rodata.bin", 0x9DA0, 0x9DB0 - 0x9DA0

	.global Unk_020EE9F0
Unk_020EE9F0: ; 0x020EE9F0
	.incbin "incbin/arm9_rodata.bin", 0x9DB0, 0x9DC0 - 0x9DB0

	.global Unk_020EEA00
Unk_020EEA00: ; 0x020EEA00
	.incbin "incbin/arm9_rodata.bin", 0x9DC0, 0x9DD0 - 0x9DC0

	.global Unk_020EEA10
Unk_020EEA10: ; 0x020EEA10
	.incbin "incbin/arm9_rodata.bin", 0x9DD0, 0x9DE4 - 0x9DD0

	.global Unk_020EEA24
Unk_020EEA24: ; 0x020EEA24
	.incbin "incbin/arm9_rodata.bin", 0x9DE4, 0x9DF8 - 0x9DE4

	.global Unk_020EEA38
Unk_020EEA38: ; 0x020EEA38
	.incbin "incbin/arm9_rodata.bin", 0x9DF8, 0x9E0C - 0x9DF8

	.global Unk_020EEA4C
Unk_020EEA4C: ; 0x020EEA4C
	.incbin "incbin/arm9_rodata.bin", 0x9E0C, 0x9E20 - 0x9E0C

	.global Unk_020EEA60
Unk_020EEA60: ; 0x020EEA60
	.incbin "incbin/arm9_rodata.bin", 0x9E20, 0x9E34 - 0x9E20

	.global Unk_020EEA74
Unk_020EEA74: ; 0x020EEA74
	.incbin "incbin/arm9_rodata.bin", 0x9E34, 0x9E48 - 0x9E34

	.global Unk_020EEA88
Unk_020EEA88: ; 0x020EEA88
	.incbin "incbin/arm9_rodata.bin", 0x9E48, 0x9E5C - 0x9E48

	.global Unk_020EEA9C
Unk_020EEA9C: ; 0x020EEA9C
	.incbin "incbin/arm9_rodata.bin", 0x9E5C, 0x9E70 - 0x9E5C

	.global Unk_020EEAB0
Unk_020EEAB0: ; 0x020EEAB0
	.incbin "incbin/arm9_rodata.bin", 0x9E70, 0x9E90 - 0x9E70

	.global Unk_020EEAD0
Unk_020EEAD0: ; 0x020EEAD0
	.incbin "incbin/arm9_rodata.bin", 0x9E90, 0x9EC8 - 0x9E90

	.global Unk_020EEB08
Unk_020EEB08: ; 0x020EEB08
	.incbin "incbin/arm9_rodata.bin", 0x9EC8, 0x140

