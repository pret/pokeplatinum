	.include "macros/function.inc"
	.include "include/unk_0202854C.inc"

	

	.text


	thumb_func_start sub_0202854C
sub_0202854C: ; 0x0202854C
	ldr r0, _02028550 ; =0x000009B4
	bx lr
	; .align 2, 0
_02028550: .word 0x000009B4
	thumb_func_end sub_0202854C

	thumb_func_start sub_02028554
sub_02028554: ; 0x02028554
	mov r0, #0x94
	bx lr
	thumb_func_end sub_02028554

	thumb_func_start sub_02028558
sub_02028558: ; 0x02028558
	mov r0, #0x3c
	bx lr
	thumb_func_end sub_02028558

	thumb_func_start sub_0202855C
sub_0202855C: ; 0x0202855C
	push {r4, lr}
	mov r1, #0x3c
	bl sub_02018144
	mov r1, #0
	mov r2, #0x3c
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202855C

	thumb_func_start sub_02028574
sub_02028574: ; 0x02028574
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, sp, #0xc
	add r1, sp, #0
	bl sub_0201384C
	ldr r0, _020285D0 ; =0x021BF67C
	ldr r6, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x2c]
	lsl r6, r6, #5
	add r5, r1, r0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r0, r6
	lsl r0, r0, #5
	add r0, r1, r0
	mov r7, #0
	ldr r2, [sp]
	lsl r0, r0, #5
	add r0, r2, r0
	ldr r3, [sp, #4]
	lsl r0, r0, #5
	add r0, r3, r0
	lsl r0, r0, #5
	add r5, r5, r0
	ldr r2, _020285D4 ; =0x000009B4
	add r0, r4, #0
	add r1, r7, #0
	bl MI_CpuFill8
	add r0, r4, #0
	add r0, #0x94
	mov r1, #0x9b
	str r5, [r0, #0]
	lsl r1, r1, #4
	ldrb r2, [r4, r1]
	mov r0, #0xf
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r4, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_020285D0: .word 0x021BF67C
_020285D4: .word 0x000009B4
	thumb_func_end sub_02028574

	thumb_func_start sub_020285D8
sub_020285D8: ; 0x020285D8
	mov r1, #9
	mov r3, #0
	lsl r1, r1, #8
_020285DE:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _020285EA
	add r0, r3, #0
	bx lr
_020285EA:
	add r3, r3, #1
	cmp r3, #0x28
	blt _020285DE
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020285D8

	thumb_func_start sub_020285F8
sub_020285F8: ; 0x020285F8
	mov r1, #0x95
	mov r3, #0
	lsl r1, r1, #4
_020285FE:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _0202860A
	add r0, r3, #0
	bx lr
_0202860A:
	add r3, r3, #1
	cmp r3, #0x28
	blt _020285FE
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020285F8

	thumb_func_start sub_02028618
sub_02028618: ; 0x02028618
	ldr r1, _02028634 ; =0x00000928
	mov r3, #0
_0202861C:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _02028628
	add r0, r3, #0
	bx lr
_02028628:
	add r3, r3, #1
	cmp r3, #0x28
	blt _0202861C
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
_02028634: .word 0x00000928
	thumb_func_end sub_02028618

	thumb_func_start sub_02028638
sub_02028638: ; 0x02028638
	ldr r1, _02028654 ; =0x000008D8
	mov r3, #0
_0202863C:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _02028648
	add r0, r3, #0
	bx lr
_02028648:
	add r3, r3, #1
	cmp r3, #0x28
	blt _0202863C
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
_02028654: .word 0x000008D8
	thumb_func_end sub_02028638

	thumb_func_start sub_02028658
sub_02028658: ; 0x02028658
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp]
	bl sub_020298B0
	ldr r1, _02028748 ; =0x020E5B44
	add r6, r0, #0
	ldrb r2, [r1]
	add r0, sp, #8
	strb r2, [r0, #6]
	ldrb r2, [r1, #1]
	strb r2, [r0, #7]
	ldrb r2, [r1, #2]
	strb r2, [r0, #8]
	ldrb r2, [r1, #3]
	strb r2, [r0, #9]
	ldrb r2, [r1, #4]
	strb r2, [r0, #0xa]
	ldrb r2, [r1, #5]
	strb r2, [r0, #0xb]
	ldrb r2, [r1, #6]
	strb r2, [r0]
	ldrb r2, [r1, #7]
	strb r2, [r0, #1]
	ldrb r2, [r1, #8]
	strb r2, [r0, #2]
	ldrb r2, [r1, #9]
	strb r2, [r0, #3]
	ldrb r2, [r1, #0xa]
	strb r2, [r0, #4]
	ldrb r1, [r1, #0xb]
	strb r1, [r0, #5]
	ldr r0, [sp]
	cmp r0, #0
	ble _02028744
	str r0, [sp, #4]
	cmp r0, #0x63
	ble _020286A8
	mov r0, #0x63
	str r0, [sp, #4]
_020286A8:
	add r0, r6, #0
	add r0, #0x94
	ldr r3, [r0, #0]
	mov r0, #0
	mov ip, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _02028720
	add r7, sp, #0xc
	add r7, #2
_020286BC:
	mov r2, #0
_020286BE:
	ldr r0, _0202874C ; =0x0000055C
	add r4, r6, r2
	ldrb r5, [r4, r0]
	cmp r5, #0
	beq _0202870E
	ldr r0, _02028750 ; =0x5D588B65
	ldrb r1, [r7, r5]
	mul r0, r3
	ldr r3, _02028754 ; =0x00269EC3
	add r3, r0, r3
	cmp r1, #0
	bne _020286DA
	lsr r0, r3, #0x10
	b _020286E0
_020286DA:
	lsr r0, r3, #0x10
	mul r1, r0
	lsr r0, r1, #0x10
_020286E0:
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #8
	ldrb r0, [r0, r5]
	add r0, r0, r1
	mov r1, #0x17
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r1, r0, r1
	cmp r1, #0x63
	bge _02028706
	mov r1, #0x17
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r1, r1, r0
	mov r0, #0x17
	lsl r0, r0, #6
	strb r1, [r4, r0]
	b _0202870E
_02028706:
	mov r0, #0x17
	mov r1, #0x63
	lsl r0, r0, #6
	strb r1, [r4, r0]
_0202870E:
	add r2, r2, #1
	cmp r2, #0x64
	blt _020286BE
	mov r0, ip
	add r1, r0, #1
	ldr r0, [sp, #4]
	mov ip, r1
	cmp r1, r0
	blt _020286BC
_02028720:
	add r0, r6, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	ldr r0, [sp]
	add r0, r1, r0
	bl sub_0201D30C
	add r1, r6, #0
	add r1, #0x94
	str r0, [r1, #0]
	mov r1, #0x9b
	lsl r1, r1, #4
	ldrb r2, [r6, r1]
	mov r0, #0xf
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r6, r1]
_02028744:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02028748: .word 0x020E5B44
_0202874C: .word 0x0000055C
_02028750: .word 0x5D588B65
_02028754: .word 0x00269EC3
	thumb_func_end sub_02028658

	thumb_func_start sub_02028758
sub_02028758: ; 0x02028758
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r2, #0
	bl sub_020298B0
	cmp r4, #0
	blt _02028788
	cmp r5, #0
	bne _02028788
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	cmp r1, r4
	bge _0202877C
	mov r1, #0
	add r0, #0x98
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
_0202877C:
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	add r0, #0x98
	sub r1, r1, r4
	str r1, [r0, #0]
_02028788:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02028758

	thumb_func_start sub_0202878C
sub_0202878C: ; 0x0202878C
	push {r3, lr}
	bl sub_020298B0
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _020287AE
	add r1, r0, #0
	add r1, #0x9c
	ldrb r1, [r1]
	cmp r1, #2
	bne _020287AE
	add r1, r0, #0
	mov r2, #0
	add r1, #0x9c
	strb r2, [r1]
_020287AE:
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _020287CC
	add r1, r0, #0
	add r1, #0x9c
	ldrb r1, [r1]
	cmp r1, #1
	bne _020287CC
	mov r2, #0x5a
	add r1, r0, #0
	lsl r2, r2, #4
	add r1, #0x98
	str r2, [r1, #0]
_020287CC:
	add r1, r0, #0
	add r1, #0x9c
	ldrb r1, [r1]
	cmp r1, #1
	bne _020287DC
	mov r1, #2
	add r0, #0x9c
	strb r1, [r0]
_020287DC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202878C

	thumb_func_start sub_020287E0
sub_020287E0: ; 0x020287E0
	push {r3, lr}
	bl sub_020298B0
	add r1, r0, #0
	add r1, #0x9c
	ldrb r1, [r1]
	cmp r1, #0
	bne _020287F6
	mov r1, #1
	add r0, #0x9c
	strb r1, [r0]
_020287F6:
	pop {r3, pc}
	thumb_func_end sub_020287E0

	thumb_func_start sub_020287F8
sub_020287F8: ; 0x020287F8
	push {r3, lr}
	bl sub_020298B0
	add r1, r0, #0
	add r1, #0x9c
	ldrb r1, [r1]
	cmp r1, #1
	bne _0202880E
	mov r1, #0
	add r0, #0x9c
	strb r1, [r0]
_0202880E:
	pop {r3, pc}
	thumb_func_end sub_020287F8

	thumb_func_start sub_02028810
sub_02028810: ; 0x02028810
	push {r3, lr}
	bl sub_020298B0
	add r0, #0x9c
	ldrb r0, [r0]
	cmp r0, #2
	beq _02028822
	mov r0, #1
	pop {r3, pc}
_02028822:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02028810

	thumb_func_start sub_02028828
sub_02028828: ; 0x02028828
	mov r1, #1
	add r0, #0x9d
	strb r1, [r0]
	bx lr
	thumb_func_end sub_02028828

	thumb_func_start sub_02028830
sub_02028830: ; 0x02028830
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _020288C0 ; =0x0000010E
	add r6, r1, #0
	ldrb r0, [r7, r0]
	mov r4, #0
	add r5, r7, #0
	str r0, [sp]
_02028840:
	add r0, r6, #0
	bl sub_02025F20
	add r1, r5, #0
	add r1, #0xa0
	ldr r1, [r1, #0]
	cmp r1, r0
	beq _020288BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _02028840
	ldr r0, [sp]
	cmp r0, #5
	blt _02028862
	bl GF_AssertFail
_02028862:
	add r0, r6, #0
	bl sub_02025EF0
	ldr r1, [sp]
	add r2, r7, #0
	add r2, #0xb4
	lsl r1, r1, #4
	add r1, r2, r1
	mov r2, #0x10
	bl MI_CpuCopy8
	add r0, r6, #0
	bl sub_02025F20
	ldr r1, [sp]
	lsl r1, r1, #2
	add r1, r7, r1
	add r1, #0xa0
	str r0, [r1, #0]
	add r0, r6, #0
	bl sub_02025FD8
	ldr r1, [sp]
	add r2, r7, r1
	mov r1, #0x41
	lsl r1, r1, #2
	strb r0, [r2, r1]
	add r0, r6, #0
	bl sub_02025FCC
	ldr r1, [sp]
	add r2, r7, r1
	ldr r1, _020288C4 ; =0x00000109
	strb r0, [r2, r1]
	add r0, r1, #5
	ldrb r0, [r7, r0]
	add r2, r0, #1
	add r0, r1, #5
	strb r2, [r7, r0]
	ldrb r0, [r7, r0]
	cmp r0, #5
	blo _020288BC
	mov r2, #0
	add r0, r1, #5
	strb r2, [r7, r0]
_020288BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020288C0: .word 0x0000010E
_020288C4: .word 0x00000109
	thumb_func_end sub_02028830

	thumb_func_start sub_020288C8
sub_020288C8: ; 0x020288C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02028928 ; =0x0000010E
	ldrb r0, [r5, r0]
	sub r0, r0, r2
	sub r4, r0, #1
	bpl _020288D8
	add r4, r4, #5
_020288D8:
	add r7, r5, #0
	lsl r0, r4, #4
	add r7, #0xb4
	str r0, [sp]
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _02028922
	add r0, r1, #0
	bl sub_02025E6C
	ldr r1, [sp]
	add r6, r0, #0
	add r1, r7, r1
	bl sub_02025EC0
	ldr r1, _0202892C ; =0x00000109
	add r2, r5, r4
	ldrb r1, [r2, r1]
	add r0, r6, #0
	bl sub_02025FD0
	mov r1, #0x41
	add r2, r5, r4
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	add r0, r6, #0
	bl sub_02025FDC
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0xa0
	ldr r1, [r1, #0]
	add r0, r6, #0
	bl sub_02025F1C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02028922:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02028928: .word 0x0000010E
_0202892C: .word 0x00000109
	thumb_func_end sub_020288C8

	thumb_func_start sub_02028930
sub_02028930: ; 0x02028930
	add r0, #0x94
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02028930

	thumb_func_start sub_02028938
sub_02028938: ; 0x02028938
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0xb
	bge _02028944
	bl GF_AssertFail
_02028944:
	cmp r4, #0x3c
	blt _0202894C
	bl GF_AssertFail
_0202894C:
	sub r4, #0xb
	ldr r0, _02028958 ; =0x02100920
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	pop {r4, pc}
	nop
_02028958: .word 0x02100920
	thumb_func_end sub_02028938

	thumb_func_start sub_0202895C
sub_0202895C: ; 0x0202895C
	push {r3, r4, r5, r6}
	mov r6, #0
	mov r2, #0x81
	add r5, r6, #0
	lsl r2, r2, #4
_02028966:
	add r4, r0, r5
	ldrb r3, [r4, r2]
	cmp r3, #0
	bne _02028978
	mov r0, #0x81
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r6, #1
	b _0202897E
_02028978:
	add r5, r5, #1
	cmp r5, #0xc8
	blt _02028966
_0202897E:
	add r0, r6, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0202895C

	thumb_func_start sub_02028984
sub_02028984: ; 0x02028984
	mov r1, #0x81
	mov r3, #0
	lsl r1, r1, #4
_0202898A:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _02028996
	mov r0, #1
	bx lr
_02028996:
	add r3, r3, #1
	cmp r3, #0xc8
	blt _0202898A
	mov r0, #0
	bx lr
	thumb_func_end sub_02028984

	thumb_func_start sub_020289A0
sub_020289A0: ; 0x020289A0
	mov r1, #0x81
	mov r3, #0
	lsl r1, r1, #4
_020289A6:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	beq _020289B4
	add r3, r3, #1
	cmp r3, #0xc8
	blt _020289A6
_020289B4:
	add r0, r3, #0
	bx lr
	thumb_func_end sub_020289A0

	thumb_func_start sub_020289B8
sub_020289B8: ; 0x020289B8
	add r1, r0, r1
	mov r0, #0x81
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020289B8

	thumb_func_start sub_020289C4
sub_020289C4: ; 0x020289C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02028AFC
	cmp r0, #0
	beq _020289D6
	bl GF_AssertFail
_020289D6:
	mov r0, #0x81
	add r1, r5, r4
	lsl r0, r0, #4
	add r6, r4, #0
	ldrb r7, [r1, r0]
	cmp r4, #0xc7
	bge _020289F6
	mov r1, #0x81
	add r0, r0, #1
	lsl r1, r1, #4
_020289EA:
	add r3, r5, r6
	ldrb r2, [r3, r0]
	add r6, r6, #1
	cmp r6, #0xc7
	strb r2, [r3, r1]
	blt _020289EA
_020289F6:
	ldr r0, _02028A0C ; =0x000008D7
	mov r2, #0
	strb r2, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	sub r2, r2, #1
	bl sub_02028B48
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02028A0C: .word 0x000008D7
	thumb_func_end sub_020289C4

	thumb_func_start sub_02028A10
sub_02028A10: ; 0x02028A10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xd4
	mov r4, #0
	add r5, r0, #0
	sub r0, r4, #1
	str r0, [sp, #4]
	mov r0, #0x81
	lsl r0, r0, #4
	str r1, [sp, #8]
	str r2, [sp]
	add r0, r5, r0
	add r1, sp, #0xc
	mov r2, #0xc8
	bl MI_CpuCopy8
	ldr r2, [sp, #8]
	add r1, sp, #0xc
	add r0, r4, #0
	add r7, r1, r2
_02028A36:
	ldr r2, [sp, #8]
	cmp r0, r2
	beq _02028A48
	ldrb r6, [r1]
	mov r2, #0x81
	add r3, r5, r4
	lsl r2, r2, #4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028A48:
	ldr r2, [sp]
	cmp r0, r2
	bne _02028A5A
	ldrb r6, [r7]
	mov r2, #0x81
	add r3, r5, r4
	lsl r2, r2, #4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028A5A:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #0xc8
	blt _02028A36
	ldr r0, [sp, #8]
	mov r3, #0
	add r2, r0, #1
	mov r0, #0x9a
	lsl r0, r0, #4
_02028A6C:
	add r1, r5, r3
	ldrb r1, [r1, r0]
	cmp r2, r1
	bne _02028A78
	str r3, [sp, #4]
	b _02028A7E
_02028A78:
	add r3, r3, #1
	cmp r3, #0xf
	blt _02028A6C
_02028A7E:
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #1
	bl sub_02028B48
	mov r2, #0
	ldr r1, [sp, #8]
	add r0, r5, #0
	mvn r2, r2
	bl sub_02028B48
	mov r1, #0
	ldr r0, [sp, #4]
	mvn r1, r1
	cmp r0, r1
	beq _02028AC6
	ldr r1, [sp]
	ldr r0, [sp, #8]
	cmp r0, r1
	bge _02028AB8
	add r0, r1, #0
	add r2, r0, #1
	ldr r0, [sp, #4]
	add sp, #0xd4
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #4
	strb r2, [r1, r0]
	pop {r4, r5, r6, r7, pc}
_02028AB8:
	add r0, r1, #0
	add r2, r0, #2
	ldr r0, [sp, #4]
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #4
	strb r2, [r1, r0]
_02028AC6:
	add sp, #0xd4
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02028A10

	thumb_func_start sub_02028ACC
sub_02028ACC: ; 0x02028ACC
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, #1
	bge _02028ADC
	bl GF_AssertFail
_02028ADC:
	cmp r6, #0xf
	ble _02028AE4
	bl GF_AssertFail
_02028AE4:
	sub r0, r6, #1
	add r1, r5, r0
	mov r0, #0x9a
	add r2, r4, #1
	lsl r0, r0, #4
	strb r2, [r1, r0]
	mov r0, #0x81
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02028ACC

	thumb_func_start sub_02028AFC
sub_02028AFC: ; 0x02028AFC
	push {r3, r4}
	add r3, r1, #1
	mov r1, #0x9a
	mov r4, #0
	lsl r1, r1, #4
_02028B06:
	add r2, r0, r4
	ldrb r2, [r2, r1]
	cmp r3, r2
	bne _02028B14
	mov r0, #1
	pop {r3, r4}
	bx lr
_02028B14:
	add r4, r4, #1
	cmp r4, #0xf
	blt _02028B06
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02028AFC

	thumb_func_start sub_02028B20
sub_02028B20: ; 0x02028B20
	sub r1, r1, #1
	cmp r1, #0xf
	bge _02028B30
	add r1, r0, r1
	mov r0, #0x9a
	mov r2, #0
	lsl r0, r0, #4
	strb r2, [r1, r0]
_02028B30:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02028B20

	thumb_func_start sub_02028B34
sub_02028B34: ; 0x02028B34
	mov r1, #0x9a
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r3, _02028B44 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0xf
	bx r3
	nop
_02028B44: .word MI_CpuFill8
	thumb_func_end sub_02028B34

	thumb_func_start sub_02028B48
sub_02028B48: ; 0x02028B48
	push {r4, r5, r6, r7}
	mov r6, #0x9a
	lsl r6, r6, #4
	mov r4, #0
	add r1, r1, #1
	add r7, r6, #0
_02028B54:
	add r3, r0, r4
	ldrb r5, [r3, r7]
	cmp r5, r1
	ble _02028B66
	mov r5, #0x9a
	lsl r5, r5, #4
	ldrb r5, [r3, r5]
	add r5, r5, r2
	strb r5, [r3, r6]
_02028B66:
	add r4, r4, #1
	cmp r4, #0xf
	blt _02028B54
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_02028B48

	thumb_func_start sub_02028B70
sub_02028B70: ; 0x02028B70
	mov r1, #9
	mov r3, #0
	lsl r1, r1, #8
_02028B76:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	beq _02028B84
	add r3, r3, #1
	cmp r3, #0x28
	blt _02028B76
_02028B84:
	add r0, r3, #0
	bx lr
	thumb_func_end sub_02028B70

	thumb_func_start sub_02028B88
sub_02028B88: ; 0x02028B88
	add r1, r0, r1
	mov r0, #9
	lsl r0, r0, #8
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02028B88

	thumb_func_start sub_02028B94
sub_02028B94: ; 0x02028B94
	push {r3, r4, r5, r6}
	mov r2, #9
	add r3, r0, r1
	lsl r2, r2, #8
	ldrb r2, [r3, r2]
	cmp r1, #0x27
	bge _02028BB2
	ldr r3, _02028BC0 ; =0x00000901
	sub r4, r3, #1
_02028BA6:
	add r6, r0, r1
	ldrb r5, [r6, r3]
	add r1, r1, #1
	cmp r1, #0x27
	strb r5, [r6, r4]
	blt _02028BA6
_02028BB2:
	ldr r1, _02028BC4 ; =0x00000927
	mov r3, #0
	strb r3, [r0, r1]
	add r0, r2, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02028BC0: .word 0x00000901
_02028BC4: .word 0x00000927
	thumb_func_end sub_02028B94

	thumb_func_start sub_02028BC8
sub_02028BC8: ; 0x02028BC8
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	bl sub_020285D8
	sub r1, r4, #1
	cmp r0, r1
	beq _02028BE4
	add r1, r5, r0
	mov r0, #9
	lsl r0, r0, #8
	strb r6, [r1, r0]
	mov r4, #1
_02028BE4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02028BC8

	thumb_func_start sub_02028BE8
sub_02028BE8: ; 0x02028BE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	mov r0, #9
	lsl r0, r0, #8
	str r1, [sp, #4]
	str r2, [sp]
	add r0, r5, r0
	add r1, sp, #8
	mov r2, #0x28
	mov r4, #0
	bl MI_CpuCopy8
	ldr r2, [sp, #4]
	add r1, sp, #8
	add r0, r4, #0
	add r7, r1, r2
_02028C0A:
	ldr r2, [sp, #4]
	cmp r0, r2
	beq _02028C1C
	ldrb r6, [r1]
	mov r2, #9
	add r3, r5, r4
	lsl r2, r2, #8
	strb r6, [r3, r2]
	add r4, r4, #1
_02028C1C:
	ldr r2, [sp]
	cmp r0, r2
	bne _02028C2E
	ldrb r6, [r7]
	mov r2, #9
	add r3, r5, r4
	lsl r2, r2, #8
	strb r6, [r3, r2]
	add r4, r4, #1
_02028C2E:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #0x28
	blt _02028C0A
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02028BE8

	thumb_func_start sub_02028C3C
sub_02028C3C: ; 0x02028C3C
	mov r1, #0x95
	mov r3, #0
	lsl r1, r1, #4
_02028C42:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	beq _02028C50
	add r3, r3, #1
	cmp r3, #0x28
	blt _02028C42
_02028C50:
	add r0, r3, #0
	bx lr
	thumb_func_end sub_02028C3C

	thumb_func_start sub_02028C54
sub_02028C54: ; 0x02028C54
	add r1, r0, r1
	mov r0, #0x95
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02028C54

	thumb_func_start sub_02028C60
sub_02028C60: ; 0x02028C60
	add r1, r0, r1
	ldr r0, _02028C68 ; =0x00000978
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02028C68: .word 0x00000978
	thumb_func_end sub_02028C60

	thumb_func_start sub_02028C6C
sub_02028C6C: ; 0x02028C6C
	push {r4, r5, r6, r7}
	add r2, r0, #0
	mov r0, #0x95
	add r3, r2, r1
	lsl r0, r0, #4
	ldrb r0, [r3, r0]
	cmp r1, #0x27
	mov ip, r0
	bge _02028C9A
	ldr r7, _02028CA8 ; =0x00000951
	add r4, r7, #0
	add r5, r7, #0
	sub r3, r7, #1
	add r4, #0x28
	add r5, #0x27
_02028C8A:
	add r0, r2, r1
	ldrb r6, [r0, r7]
	add r1, r1, #1
	cmp r1, #0x27
	strb r6, [r0, r3]
	ldrb r6, [r0, r4]
	strb r6, [r0, r5]
	blt _02028C8A
_02028C9A:
	ldr r0, _02028CAC ; =0x00000977
	mov r1, #0
	strb r1, [r2, r0]
	mov r0, ip
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02028CA8: .word 0x00000951
_02028CAC: .word 0x00000977
	thumb_func_end sub_02028C6C

	thumb_func_start sub_02028CB0
sub_02028CB0: ; 0x02028CB0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_020285F8
	sub r1, r4, #1
	cmp r0, r1
	beq _02028CD2
	add r1, r5, r0
	mov r0, #0x95
	lsl r0, r0, #4
	strb r6, [r1, r0]
	add r0, #0x28
	strb r7, [r1, r0]
	mov r4, #1
_02028CD2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02028CB0

	thumb_func_start sub_02028CD8
sub_02028CD8: ; 0x02028CD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r7, r0, #0
	mov r0, #0x95
	lsl r0, r0, #4
	str r1, [sp]
	str r2, [sp, #4]
	add r0, r7, r0
	add r1, sp, #0x34
	mov r2, #0x28
	mov r4, #0
	bl MI_CpuCopy8
	ldr r0, _02028D54 ; =0x00000978
	add r1, sp, #0xc
	add r0, r7, r0
	mov r2, #0x28
	bl MI_CpuCopy8
	ldr r3, [sp]
	add r1, sp, #0x34
	add r3, r1, r3
	mov ip, r3
	ldr r3, [sp]
	add r2, sp, #0xc
	add r3, r2, r3
	add r0, r4, #0
	str r3, [sp, #8]
_02028D10:
	ldr r3, [sp]
	cmp r0, r3
	beq _02028D28
	ldrb r5, [r1]
	mov r3, #0x95
	add r6, r7, r4
	lsl r3, r3, #4
	strb r5, [r6, r3]
	ldrb r5, [r2]
	add r3, #0x28
	add r4, r4, #1
	strb r5, [r6, r3]
_02028D28:
	ldr r3, [sp, #4]
	cmp r0, r3
	bne _02028D44
	mov r3, ip
	ldrb r5, [r3]
	mov r3, #0x95
	add r6, r7, r4
	lsl r3, r3, #4
	strb r5, [r6, r3]
	ldr r3, [sp, #8]
	add r4, r4, #1
	ldrb r5, [r3]
	ldr r3, _02028D54 ; =0x00000978
	strb r5, [r6, r3]
_02028D44:
	add r0, r0, #1
	add r1, r1, #1
	add r2, r2, #1
	cmp r0, #0x28
	blt _02028D10
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02028D54: .word 0x00000978
	thumb_func_end sub_02028CD8

	thumb_func_start sub_02028D58
sub_02028D58: ; 0x02028D58
	ldr r1, _02028D70 ; =0x00000928
	mov r3, #0
_02028D5C:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	beq _02028D6A
	add r3, r3, #1
	cmp r3, #0x28
	blt _02028D5C
_02028D6A:
	add r0, r3, #0
	bx lr
	nop
_02028D70: .word 0x00000928
	thumb_func_end sub_02028D58

	thumb_func_start sub_02028D74
sub_02028D74: ; 0x02028D74
	add r1, r0, r1
	ldr r0, _02028D7C ; =0x00000928
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02028D7C: .word 0x00000928
	thumb_func_end sub_02028D74

	thumb_func_start sub_02028D80
sub_02028D80: ; 0x02028D80
	push {r3, r4, r5, r6}
	ldr r2, _02028DA8 ; =0x00000928
	add r3, r0, r1
	ldrb r2, [r3, r2]
	cmp r1, #0x27
	bge _02028D9C
	ldr r3, _02028DAC ; =0x00000929
	sub r4, r3, #1
_02028D90:
	add r6, r0, r1
	ldrb r5, [r6, r3]
	add r1, r1, #1
	cmp r1, #0x27
	strb r5, [r6, r4]
	blt _02028D90
_02028D9C:
	ldr r1, _02028DB0 ; =0x0000094F
	mov r3, #0
	strb r3, [r0, r1]
	add r0, r2, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_02028DA8: .word 0x00000928
_02028DAC: .word 0x00000929
_02028DB0: .word 0x0000094F
	thumb_func_end sub_02028D80

	thumb_func_start sub_02028DB4
sub_02028DB4: ; 0x02028DB4
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02028618
	sub r1, r4, #1
	cmp r0, r1
	beq _02028DCE
	add r1, r5, r0
	ldr r0, _02028DD4 ; =0x00000928
	mov r4, #1
	strb r6, [r1, r0]
_02028DCE:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02028DD4: .word 0x00000928
	thumb_func_end sub_02028DB4

	thumb_func_start sub_02028DD8
sub_02028DD8: ; 0x02028DD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _02028E24 ; =0x00000928
	str r1, [sp, #4]
	str r2, [sp]
	add r0, r5, r0
	add r1, sp, #8
	mov r2, #0x28
	mov r4, #0
	bl MI_CpuCopy8
	ldr r2, [sp, #4]
	add r1, sp, #8
	add r0, r4, #0
	add r7, r1, r2
_02028DF8:
	ldr r2, [sp, #4]
	cmp r0, r2
	beq _02028E08
	ldrb r6, [r1]
	ldr r2, _02028E24 ; =0x00000928
	add r3, r5, r4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028E08:
	ldr r2, [sp]
	cmp r0, r2
	bne _02028E18
	ldrb r6, [r7]
	ldr r2, _02028E24 ; =0x00000928
	add r3, r5, r4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028E18:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #0x28
	blt _02028DF8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02028E24: .word 0x00000928
	thumb_func_end sub_02028DD8

	thumb_func_start sub_02028E28
sub_02028E28: ; 0x02028E28
	ldr r1, _02028E40 ; =0x000008D8
	mov r3, #0
_02028E2C:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	beq _02028E3A
	add r3, r3, #1
	cmp r3, #0x28
	blt _02028E2C
_02028E3A:
	add r0, r3, #0
	bx lr
	nop
_02028E40: .word 0x000008D8
	thumb_func_end sub_02028E28

	thumb_func_start sub_02028E44
sub_02028E44: ; 0x02028E44
	add r1, r0, r1
	ldr r0, _02028E4C ; =0x000008D8
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02028E4C: .word 0x000008D8
	thumb_func_end sub_02028E44

	thumb_func_start sub_02028E50
sub_02028E50: ; 0x02028E50
	push {r3, r4, r5, r6}
	ldr r2, _02028E78 ; =0x000008D8
	add r3, r0, r1
	ldrb r2, [r3, r2]
	cmp r1, #0x27
	bge _02028E6C
	ldr r3, _02028E7C ; =0x000008D9
	sub r4, r3, #1
_02028E60:
	add r6, r0, r1
	ldrb r5, [r6, r3]
	add r1, r1, #1
	cmp r1, #0x27
	strb r5, [r6, r4]
	blt _02028E60
_02028E6C:
	ldr r1, _02028E80 ; =0x000008FF
	mov r3, #0
	strb r3, [r0, r1]
	add r0, r2, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_02028E78: .word 0x000008D8
_02028E7C: .word 0x000008D9
_02028E80: .word 0x000008FF
	thumb_func_end sub_02028E50

	thumb_func_start sub_02028E84
sub_02028E84: ; 0x02028E84
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02028638
	sub r1, r4, #1
	cmp r0, r1
	beq _02028E9E
	add r1, r5, r0
	ldr r0, _02028EA4 ; =0x000008D8
	mov r4, #1
	strb r6, [r1, r0]
_02028E9E:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02028EA4: .word 0x000008D8
	thumb_func_end sub_02028E84

	thumb_func_start sub_02028EA8
sub_02028EA8: ; 0x02028EA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _02028EF4 ; =0x000008D8
	str r1, [sp, #4]
	str r2, [sp]
	add r0, r5, r0
	add r1, sp, #8
	mov r2, #0x28
	mov r4, #0
	bl MI_CpuCopy8
	ldr r2, [sp, #4]
	add r1, sp, #8
	add r0, r4, #0
	add r7, r1, r2
_02028EC8:
	ldr r2, [sp, #4]
	cmp r0, r2
	beq _02028ED8
	ldrb r6, [r1]
	ldr r2, _02028EF4 ; =0x000008D8
	add r3, r5, r4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028ED8:
	ldr r2, [sp]
	cmp r0, r2
	bne _02028EE8
	ldrb r6, [r7]
	ldr r2, _02028EF4 ; =0x000008D8
	add r3, r5, r4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028EE8:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #0x28
	blt _02028EC8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02028EF4: .word 0x000008D8
	thumb_func_end sub_02028EA8

	thumb_func_start sub_02028EF8
sub_02028EF8: ; 0x02028EF8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r3, #0
	cmp r4, #0x40
	blt _02028F0A
	bl GF_AssertFail
_02028F0A:
	ldr r0, _02028F3C ; =0x0000010F
	add r1, r5, r4
	strb r7, [r1, r0]
	lsl r1, r4, #1
	add r1, r4, r1
	add r2, r0, #0
	add r1, r5, r1
	add r2, #0x40
	strb r6, [r1, r2]
	mov r2, #0xf
	lsl r2, r2, #8
	add r3, r6, #0
	and r3, r2
	asr r4, r3, #8
	ldr r3, [sp, #0x18]
	and r2, r3
	asr r2, r2, #4
	add r4, r4, r2
	add r2, r0, #0
	add r2, #0x41
	strb r4, [r1, r2]
	add r0, #0x42
	strb r3, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02028F3C: .word 0x0000010F
	thumb_func_end sub_02028EF8

	thumb_func_start sub_02028F40
sub_02028F40: ; 0x02028F40
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x40
	blt _02028F4E
	bl GF_AssertFail
_02028F4E:
	ldr r0, _02028F58 ; =0x0000010F
	add r1, r5, r4
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	nop
_02028F58: .word 0x0000010F
	thumb_func_end sub_02028F40

	thumb_func_start sub_02028F5C
sub_02028F5C: ; 0x02028F5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x40
	blt _02028F6A
	bl GF_AssertFail
_02028F6A:
	lsl r0, r4, #1
	add r0, r4, r0
	add r1, r5, r0
	ldr r0, _02028F84 ; =0x0000014F
	ldrb r2, [r1, r0]
	add r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #8
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02028F84: .word 0x0000014F
	thumb_func_end sub_02028F5C

	thumb_func_start sub_02028F88
sub_02028F88: ; 0x02028F88
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x40
	blt _02028F96
	bl GF_AssertFail
_02028F96:
	lsl r0, r4, #1
	add r0, r4, r0
	add r1, r5, r0
	ldr r0, _02028FB0 ; =0x00000151
	ldrb r2, [r1, r0]
	sub r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #4
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02028FB0: .word 0x00000151
	thumb_func_end sub_02028F88

	thumb_func_start sub_02028FB4
sub_02028FB4: ; 0x02028FB4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x40
	blt _02028FC2
	bl GF_AssertFail
_02028FC2:
	ldr r0, _02028FDC ; =0x0000010F
	mov r1, #0
	add r2, r5, r4
	strb r1, [r2, r0]
	add r0, #0x40
	add r2, r5, r0
	lsl r0, r4, #1
	add r0, r4, r0
	add r0, r2, r0
	mov r2, #3
	bl MI_CpuFill8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02028FDC: .word 0x0000010F
	thumb_func_end sub_02028FB4

	thumb_func_start sub_02028FE0
sub_02028FE0: ; 0x02028FE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r3, #0
	cmp r4, #0x10
	blt _02028FF2
	bl GF_AssertFail
_02028FF2:
	lsl r2, r4, #1
	ldr r1, _0202902C ; =0x0000050C
	add r0, r5, r4
	add r2, r4, r2
	add r4, r5, r2
	add r2, r1, #0
	mov r5, #0xf
	strb r7, [r0, r1]
	add r2, #0x10
	strb r6, [r4, r2]
	lsl r5, r5, #8
	add r2, r6, #0
	and r2, r5
	asr r3, r2, #8
	ldr r2, [sp, #0x18]
	and r5, r2
	asr r5, r5, #4
	add r5, r3, r5
	add r3, r1, #0
	add r3, #0x11
	strb r5, [r4, r3]
	add r3, r1, #0
	add r3, #0x12
	strb r2, [r4, r3]
	ldr r2, [sp, #0x1c]
	add r1, #0x40
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202902C: .word 0x0000050C
	thumb_func_end sub_02028FE0

	thumb_func_start sub_02029030
sub_02029030: ; 0x02029030
	add r1, r0, r1
	ldr r0, _02029038 ; =0x0000050C
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02029038: .word 0x0000050C
	thumb_func_end sub_02029030

	thumb_func_start sub_0202903C
sub_0202903C: ; 0x0202903C
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _02029058 ; =0x0000051C
	ldrb r2, [r1, r0]
	add r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #8
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_02029058: .word 0x0000051C
	thumb_func_end sub_0202903C

	thumb_func_start sub_0202905C
sub_0202905C: ; 0x0202905C
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _02029078 ; =0x0000051E
	ldrb r2, [r1, r0]
	sub r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #4
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_02029078: .word 0x0000051E
	thumb_func_end sub_0202905C

	thumb_func_start sub_0202907C
sub_0202907C: ; 0x0202907C
	add r1, r0, r1
	ldr r0, _02029084 ; =0x0000054C
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02029084: .word 0x0000054C
	thumb_func_end sub_0202907C

	thumb_func_start sub_02029088
sub_02029088: ; 0x02029088
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r3, #0
	cmp r4, #0x64
	blt _0202909A
	bl GF_AssertFail
_0202909A:
	ldr r1, _020290D4 ; =0x0000055C
	add r0, r5, r4
	strb r6, [r0, r1]
	lsl r1, r4, #1
	add r1, r4, r1
	add r4, r5, r1
	mov r5, #0xf
	lsl r5, r5, #8
	add r2, r7, #0
	and r2, r5
	asr r3, r2, #8
	ldr r2, [sp, #0x18]
	ldr r1, _020290D8 ; =0x00000688
	and r5, r2
	asr r5, r5, #4
	add r5, r3, r5
	strb r7, [r4, r1]
	add r3, r1, #1
	strb r5, [r4, r3]
	add r3, r1, #2
	strb r2, [r4, r3]
	add r2, r1, #0
	ldr r3, [sp, #0x1c]
	sub r2, #0x64
	strb r3, [r0, r2]
	ldr r2, [sp, #0x20]
	sub r1, #0xc8
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020290D4: .word 0x0000055C
_020290D8: .word 0x00000688
	thumb_func_end sub_02029088

	thumb_func_start sub_020290DC
sub_020290DC: ; 0x020290DC
	add r1, r0, r1
	ldr r0, _020290E4 ; =0x0000055C
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_020290E4: .word 0x0000055C
	thumb_func_end sub_020290DC

	thumb_func_start sub_020290E8
sub_020290E8: ; 0x020290E8
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _02029104 ; =0x00000688
	ldrb r2, [r1, r0]
	add r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #8
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_02029104: .word 0x00000688
	thumb_func_end sub_020290E8

	thumb_func_start sub_02029108
sub_02029108: ; 0x02029108
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _02029124 ; =0x0000068A
	ldrb r2, [r1, r0]
	sub r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #4
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_02029124: .word 0x0000068A
	thumb_func_end sub_02029108

	thumb_func_start sub_02029128
sub_02029128: ; 0x02029128
	add r1, r0, r1
	ldr r0, _02029130 ; =0x00000624
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02029130: .word 0x00000624
	thumb_func_end sub_02029128

	thumb_func_start sub_02029134
sub_02029134: ; 0x02029134
	add r1, r0, r1
	mov r0, #0x17
	lsl r0, r0, #6
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029134

	thumb_func_start sub_02029140
sub_02029140: ; 0x02029140
	push {r4, r5, r6, r7}
	ldr r3, _0202919C ; =0x00000211
	add r7, r0, #0
	mov ip, r1
	mov r0, #0
	add r1, r7, #0
	sub r4, r3, #1
	sub r5, r3, #2
_02029150:
	ldrb r6, [r1, r5]
	cmp r6, #0
	bne _0202918A
	ldrb r6, [r1, r4]
	cmp r6, #0
	bne _0202918A
	ldrb r6, [r1, r3]
	cmp r6, #0
	bne _0202918A
	lsl r1, r0, #1
	add r1, r0, r1
	mov r5, #0xf
	ldr r4, _020291A0 ; =0x0000020F
	add r1, r7, r1
	mov r3, ip
	strb r3, [r1, r4]
	lsl r5, r5, #8
	mov r3, ip
	and r3, r5
	asr r6, r3, #8
	add r3, r2, #0
	and r3, r5
	asr r3, r3, #4
	add r5, r6, r3
	add r3, r4, #1
	strb r5, [r1, r3]
	add r3, r4, #2
	strb r2, [r1, r3]
	b _02029192
_0202918A:
	add r0, r0, #1
	add r1, r1, #3
	cmp r0, #0xff
	blt _02029150
_02029192:
	cmp r0, #0xff
	bne _02029198
	mov r0, #0
_02029198:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0202919C: .word 0x00000211
_020291A0: .word 0x0000020F
	thumb_func_end sub_02029140

	thumb_func_start sub_020291A4
sub_020291A4: ; 0x020291A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xff
	blt _020291B2
	bl GF_AssertFail
_020291B2:
	ldr r0, _020291C8 ; =0x0000020F
	mov r2, #3
	add r1, r5, r0
	lsl r0, r4, #1
	add r0, r4, r0
	add r0, r1, r0
	mov r1, #0
	bl MI_CpuFill8
	pop {r3, r4, r5, pc}
	nop
_020291C8: .word 0x0000020F
	thumb_func_end sub_020291A4

	thumb_func_start sub_020291CC
sub_020291CC: ; 0x020291CC
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _020291E8 ; =0x0000020F
	ldrb r2, [r1, r0]
	add r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #8
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_020291E8: .word 0x0000020F
	thumb_func_end sub_020291CC

	thumb_func_start sub_020291EC
sub_020291EC: ; 0x020291EC
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _02029208 ; =0x00000211
	ldrb r2, [r1, r0]
	sub r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #4
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_02029208: .word 0x00000211
	thumb_func_end sub_020291EC

	thumb_func_start sub_0202920C
sub_0202920C: ; 0x0202920C
	mov r1, #0x9b
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0202921C
	mov r0, #1
	bx lr
_0202921C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0202920C

	thumb_func_start sub_02029220
sub_02029220: ; 0x02029220
	mov r2, #0x9b
	lsl r2, r2, #4
	ldrb r3, [r0, r2]
	mov r1, #0xf0
	bic r3, r1
	mov r1, #0x10
	orr r1, r3
	strb r1, [r0, r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029220

	thumb_func_start sub_02029234
sub_02029234: ; 0x02029234
	mov r1, #0x9b
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bx lr
	thumb_func_end sub_02029234

	thumb_func_start sub_02029240
sub_02029240: ; 0x02029240
	mov r2, #0x9b
	lsl r2, r2, #4
	ldrb r3, [r0, r2]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r0, r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029240

	thumb_func_start sub_02029250
sub_02029250: ; 0x02029250
	push {r3, r4}
	cmp r1, #0x2c
	blt _0202926A
	cmp r1, #0x3b
	bgt _0202926A
	ldr r2, _02029270 ; =0x0000080C
	mov r3, #1
	sub r1, #0x2c
	ldr r4, [r0, r2]
	lsl r3, r1
	add r1, r4, #0
	orr r1, r3
	str r1, [r0, r2]
_0202926A:
	pop {r3, r4}
	bx lr
	nop
_02029270: .word 0x0000080C
	thumb_func_end sub_02029250

	thumb_func_start sub_02029274
sub_02029274: ; 0x02029274
	cmp r1, #0x2c
	blt _0202927C
	cmp r1, #0x3b
	ble _02029280
_0202927C:
	mov r0, #1
	bx lr
_02029280:
	ldr r2, _02029298 ; =0x0000080C
	sub r1, #0x2c
	ldr r3, [r0, r2]
	mov r0, #1
	add r2, r0, #0
	lsl r2, r1
	add r1, r3, #0
	tst r1, r2
	beq _02029294
	mov r0, #0
_02029294:
	bx lr
	nop
_02029298: .word 0x0000080C
	thumb_func_end sub_02029274

	thumb_func_start sub_0202929C
sub_0202929C: ; 0x0202929C
	ldr r1, _020292B0 ; =0x000009AF
	ldrb r2, [r0, r1]
	cmp r2, #0x63
	blo _020292AA
	mov r2, #0
	strb r2, [r0, r1]
	bx lr
_020292AA:
	add r2, r2, #1
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_020292B0: .word 0x000009AF
	thumb_func_end sub_0202929C

	thumb_func_start sub_020292B4
sub_020292B4: ; 0x020292B4
	ldr r1, _020292BC ; =0x000009AF
	ldrb r0, [r0, r1]
	bx lr
	nop
_020292BC: .word 0x000009AF
	thumb_func_end sub_020292B4

	thumb_func_start sub_020292C0
sub_020292C0: ; 0x020292C0
	ldr r3, _020292C8 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x94
	bx r3
	; .align 2, 0
_020292C8: .word MI_CpuFill8
	thumb_func_end sub_020292C0

	thumb_func_start sub_020292CC
sub_020292CC: ; 0x020292CC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x2d
	bl MI_CpuFill8
	add r0, r4, #0
	add r0, #0x2d
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r4, #0
	mov r1, #0
	add r0, #0x8c
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x8e
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x90
	strb r1, [r0]
	add r4, #0x91
	strb r1, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020292CC

	thumb_func_start sub_02029300
sub_02029300: ; 0x02029300
	mov r1, #0
	add r0, #0x91
	strb r1, [r0]
	bx lr
	thumb_func_end sub_02029300

	thumb_func_start sub_02029308
sub_02029308: ; 0x02029308
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r4, #0x20
	blt _0202931A
	bl GF_AssertFail
_0202931A:
	cmp r6, #0x20
	blt _02029322
	bl GF_AssertFail
_02029322:
	ldr r0, [sp, #0x18]
	cmp r0, #0x20
	blt _0202932C
	bl GF_AssertFail
_0202932C:
	cmp r5, #0
	bne _02029334
	bl GF_AssertFail
_02029334:
	cmp r4, #0
	beq _02029360
	cmp r4, #0x10
	bge _0202934E
	sub r1, r4, #1
	lsl r0, r1, #1
	add r0, r1, r0
	strb r6, [r5, r0]
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	strb r1, [r0, #1]
	strb r7, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
_0202934E:
	sub r4, #0x10
	lsl r2, r4, #1
	add r0, r5, r2
	add r0, #0x2d
	strb r6, [r0]
	add r0, r5, r2
	ldr r1, [sp, #0x18]
	add r0, #0x2e
	strb r1, [r0]
_02029360:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02029308

	thumb_func_start sub_02029364
sub_02029364: ; 0x02029364
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_020293B0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	str r4, [sp]
	bl sub_02029308
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02029364

	thumb_func_start sub_02029384
sub_02029384: ; 0x02029384
	add r0, #0x88
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	cmp r0, #0x32
	blt _02029394
	mov r0, #5
	bx lr
_02029394:
	cmp r0, #0xa
	blt _0202939C
	mov r0, #4
	bx lr
_0202939C:
	cmp r0, #3
	blt _020293A4
	mov r0, #3
	bx lr
_020293A4:
	cmp r0, #1
	blt _020293AC
	mov r0, #2
	bx lr
_020293AC:
	mov r0, #1
	bx lr
	thumb_func_end sub_02029384

	thumb_func_start sub_020293B0
sub_020293B0: ; 0x020293B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x20
	blt _020293BE
	bl GF_AssertFail
_020293BE:
	cmp r5, #0
	bne _020293CA
	add r0, r4, #0
	bl sub_02029384
	pop {r3, r4, r5, pc}
_020293CA:
	cmp r5, #0x10
	bge _020293DA
	sub r1, r5, #1
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r4, r0
	ldrb r0, [r0, #2]
	pop {r3, r4, r5, pc}
_020293DA:
	sub r5, #0x10
	lsl r1, r5, #1
	add r0, r4, r1
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _020293F6
	add r0, r4, r1
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _020293F6
	mov r0, #6
	pop {r3, r4, r5, pc}
_020293F6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020293B0

	thumb_func_start sub_020293FC
sub_020293FC: ; 0x020293FC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x20
	blt _0202940A
	bl GF_AssertFail
_0202940A:
	cmp r5, #0
	bne _02029412
	mov r0, #0xf
	pop {r3, r4, r5, pc}
_02029412:
	cmp r5, #0x10
	bge _02029420
	sub r1, r5, #1
	lsl r0, r1, #1
	add r0, r1, r0
	ldrb r0, [r4, r0]
	pop {r3, r4, r5, pc}
_02029420:
	sub r5, #0x10
	lsl r0, r5, #1
	add r0, r4, r0
	add r0, #0x2d
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020293FC

	thumb_func_start sub_0202942C
sub_0202942C: ; 0x0202942C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x20
	blt _0202943A
	bl GF_AssertFail
_0202943A:
	cmp r5, #0
	bne _02029442
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02029442:
	cmp r5, #0x10
	bge _02029452
	sub r1, r5, #1
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r4, r0
	ldrb r0, [r0, #1]
	pop {r3, r4, r5, pc}
_02029452:
	sub r5, #0x10
	lsl r0, r5, #1
	add r0, r4, r0
	add r0, #0x2e
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202942C

	thumb_func_start sub_02029460
sub_02029460: ; 0x02029460
	add r0, #0x88
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	cmp r0, #0x32
	blo _02029470
	mov r0, #0
	bx lr
_02029470:
	cmp r0, #0xa
	blo _02029478
	mov r0, #6
	bx lr
_02029478:
	cmp r0, #3
	blo _02029480
	mov r0, #0xb
	bx lr
_02029480:
	cmp r0, #1
	blo _02029488
	mov r0, #0xf
	bx lr
_02029488:
	mov r0, #0x10
	bx lr
	thumb_func_end sub_02029460

	thumb_func_start sub_0202948C
sub_0202948C: ; 0x0202948C
	add r0, #0x88
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	cmp r0, #0x32
	blo _0202949C
	mov r0, #0xf
	bx lr
_0202949C:
	cmp r0, #0xa
	blo _020294A4
	mov r0, #0xf
	bx lr
_020294A4:
	cmp r0, #3
	blo _020294AC
	mov r0, #0xf
	bx lr
_020294AC:
	cmp r0, #1
	blo _020294B4
	mov r0, #0xc
	bx lr
_020294B4:
	mov r0, #0xa
	bx lr
	thumb_func_end sub_0202948C

	thumb_func_start sub_020294B8
sub_020294B8: ; 0x020294B8
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020294B8

	thumb_func_start sub_020294C0
sub_020294C0: ; 0x020294C0
	push {r3, lr}
	bl sub_0202958C
	cmp r0, #4
	bne _020294CE
	mov r0, #1
	pop {r3, pc}
_020294CE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020294C0

	thumb_func_start sub_020294D4
sub_020294D4: ; 0x020294D4
	ldr r3, [r0, #0]
	ldr r2, _020294E4 ; =0xFFF00000
	and r3, r2
	ldr r2, _020294E8 ; =0x000FFFFF
	and r1, r2
	orr r1, r3
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020294E4: .word 0xFFF00000
_020294E8: .word 0x000FFFFF
	thumb_func_end sub_020294D4

	thumb_func_start sub_020294EC
sub_020294EC: ; 0x020294EC
	ldr r0, [r0, #4]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020294EC

	thumb_func_start sub_020294F4
sub_020294F4: ; 0x020294F4
	push {r3, r4}
	ldr r2, [r0, #4]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029518 ; =0x000F423F
	cmp r4, r1
	bhs _02029512
	ldr r1, _0202951C ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029520 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #4]
_02029512:
	pop {r3, r4}
	bx lr
	nop
_02029518: .word 0x000F423F
_0202951C: .word 0xFFF00000
_02029520: .word 0x000FFFFF
	thumb_func_end sub_020294F4

	thumb_func_start sub_02029524
sub_02029524: ; 0x02029524
	ldr r0, [r0, #8]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_02029524

	thumb_func_start sub_0202952C
sub_0202952C: ; 0x0202952C
	push {r3, r4}
	ldr r2, [r0, #8]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029550 ; =0x000F423F
	cmp r4, r1
	bhs _0202954A
	ldr r1, _02029554 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029558 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #8]
_0202954A:
	pop {r3, r4}
	bx lr
	nop
_02029550: .word 0x000F423F
_02029554: .word 0xFFF00000
_02029558: .word 0x000FFFFF
	thumb_func_end sub_0202952C

	thumb_func_start sub_0202955C
sub_0202955C: ; 0x0202955C
	push {r3, r4}
	ldr r2, [r0, #0xc]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029580 ; =0x000F423F
	cmp r4, r1
	bhs _0202957A
	ldr r1, _02029584 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029588 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0xc]
_0202957A:
	pop {r3, r4}
	bx lr
	nop
_02029580: .word 0x000F423F
_02029584: .word 0xFFF00000
_02029588: .word 0x000FFFFF
	thumb_func_end sub_0202955C

	thumb_func_start sub_0202958C
sub_0202958C: ; 0x0202958C
	ldr r0, [r0, #0x38]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	cmp r0, #0x32
	blt _0202959A
	mov r0, #4
	bx lr
_0202959A:
	cmp r0, #0xa
	blt _020295A2
	mov r0, #3
	bx lr
_020295A2:
	cmp r0, #3
	blt _020295AA
	mov r0, #2
	bx lr
_020295AA:
	cmp r0, #1
	blt _020295B2
	mov r0, #1
	bx lr
_020295B2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202958C

	thumb_func_start sub_020295B8
sub_020295B8: ; 0x020295B8
	ldr r0, [r0, #0x38]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020295B8

	thumb_func_start sub_020295C0
sub_020295C0: ; 0x020295C0
	push {r3, r4}
	ldr r2, [r0, #0x38]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _020295E4 ; =0x000F423F
	cmp r4, r1
	bhs _020295DE
	ldr r1, _020295E8 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _020295EC ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x38]
_020295DE:
	pop {r3, r4}
	bx lr
	nop
_020295E4: .word 0x000F423F
_020295E8: .word 0xFFF00000
_020295EC: .word 0x000FFFFF
	thumb_func_end sub_020295C0

	thumb_func_start sub_020295F0
sub_020295F0: ; 0x020295F0
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020295F0

	thumb_func_start sub_020295F8
sub_020295F8: ; 0x020295F8
	push {r4, r5}
	cmp r1, #0
	ble _02029618
	ldr r4, [r0, #0x10]
	lsl r2, r4, #0xc
	lsr r5, r2, #0xc
	ldr r2, _02029630 ; =0x000F423F
	sub r3, r2, r1
	cmp r5, r3
	bls _02029618
	ldr r1, _02029634 ; =0xFFF00000
	and r1, r4
	orr r1, r2
	str r1, [r0, #0x10]
	pop {r4, r5}
	bx lr
_02029618:
	ldr r3, [r0, #0x10]
	ldr r2, _02029634 ; =0xFFF00000
	and r2, r3
	lsl r3, r3, #0xc
	lsr r3, r3, #0xc
	add r3, r3, r1
	ldr r1, _02029638 ; =0x000FFFFF
	and r1, r3
	orr r1, r2
	str r1, [r0, #0x10]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02029630: .word 0x000F423F
_02029634: .word 0xFFF00000
_02029638: .word 0x000FFFFF
	thumb_func_end sub_020295F8

	thumb_func_start sub_0202963C
sub_0202963C: ; 0x0202963C
	ldr r0, [r0, #0x14]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_0202963C

	thumb_func_start sub_02029644
sub_02029644: ; 0x02029644
	push {r4, r5}
	cmp r1, #0
	ble _02029664
	ldr r4, [r0, #0x14]
	lsl r2, r4, #0xc
	lsr r5, r2, #0xc
	ldr r2, _0202967C ; =0x000F423F
	sub r3, r2, r1
	cmp r5, r3
	bls _02029664
	ldr r1, _02029680 ; =0xFFF00000
	and r1, r4
	orr r1, r2
	str r1, [r0, #0x14]
	pop {r4, r5}
	bx lr
_02029664:
	ldr r3, [r0, #0x14]
	ldr r2, _02029680 ; =0xFFF00000
	and r2, r3
	lsl r3, r3, #0xc
	lsr r3, r3, #0xc
	add r3, r3, r1
	ldr r1, _02029684 ; =0x000FFFFF
	and r1, r3
	orr r1, r2
	str r1, [r0, #0x14]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0202967C: .word 0x000F423F
_02029680: .word 0xFFF00000
_02029684: .word 0x000FFFFF
	thumb_func_end sub_02029644

	thumb_func_start sub_02029688
sub_02029688: ; 0x02029688
	push {r4, r5}
	cmp r1, #0
	ble _020296A8
	ldr r4, [r0, #0x18]
	lsl r2, r4, #0xc
	lsr r5, r2, #0xc
	ldr r2, _020296C0 ; =0x000F423F
	sub r3, r2, r1
	cmp r5, r3
	bls _020296A8
	ldr r1, _020296C4 ; =0xFFF00000
	and r1, r4
	orr r1, r2
	str r1, [r0, #0x18]
	pop {r4, r5}
	bx lr
_020296A8:
	ldr r3, [r0, #0x18]
	ldr r2, _020296C4 ; =0xFFF00000
	and r2, r3
	lsl r3, r3, #0xc
	lsr r3, r3, #0xc
	add r3, r3, r1
	ldr r1, _020296C8 ; =0x000FFFFF
	and r1, r3
	orr r1, r2
	str r1, [r0, #0x18]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_020296C0: .word 0x000F423F
_020296C4: .word 0xFFF00000
_020296C8: .word 0x000FFFFF
	thumb_func_end sub_02029688

	thumb_func_start sub_020296CC
sub_020296CC: ; 0x020296CC
	ldr r0, [r0, #0x1c]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020296CC

	thumb_func_start sub_020296D4
sub_020296D4: ; 0x020296D4
	push {r3, r4}
	ldr r2, [r0, #0x1c]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _020296F8 ; =0x000F423F
	cmp r4, r1
	bhs _020296F2
	ldr r1, _020296FC ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029700 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x1c]
_020296F2:
	pop {r3, r4}
	bx lr
	nop
_020296F8: .word 0x000F423F
_020296FC: .word 0xFFF00000
_02029700: .word 0x000FFFFF
	thumb_func_end sub_020296D4

	thumb_func_start sub_02029704
sub_02029704: ; 0x02029704
	ldr r0, [r0, #0x20]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_02029704

	thumb_func_start sub_0202970C
sub_0202970C: ; 0x0202970C
	push {r3, r4}
	ldr r2, [r0, #0x20]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029730 ; =0x000F423F
	cmp r4, r1
	bhs _0202972A
	ldr r1, _02029734 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029738 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x20]
_0202972A:
	pop {r3, r4}
	bx lr
	nop
_02029730: .word 0x000F423F
_02029734: .word 0xFFF00000
_02029738: .word 0x000FFFFF
	thumb_func_end sub_0202970C

	thumb_func_start sub_0202973C
sub_0202973C: ; 0x0202973C
	ldr r0, [r0, #0x24]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_0202973C

	thumb_func_start sub_02029744
sub_02029744: ; 0x02029744
	push {r3, r4}
	ldr r2, [r0, #0x24]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029768 ; =0x000F423F
	cmp r4, r1
	bhs _02029762
	ldr r1, _0202976C ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029770 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x24]
_02029762:
	pop {r3, r4}
	bx lr
	nop
_02029768: .word 0x000F423F
_0202976C: .word 0xFFF00000
_02029770: .word 0x000FFFFF
	thumb_func_end sub_02029744

	thumb_func_start sub_02029774
sub_02029774: ; 0x02029774
	ldr r0, [r0, #0x28]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_02029774

	thumb_func_start sub_0202977C
sub_0202977C: ; 0x0202977C
	push {r3, r4}
	ldr r2, [r0, #0x28]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _020297A0 ; =0x000F423F
	cmp r4, r1
	bhs _0202979A
	ldr r1, _020297A4 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _020297A8 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x28]
_0202979A:
	pop {r3, r4}
	bx lr
	nop
_020297A0: .word 0x000F423F
_020297A4: .word 0xFFF00000
_020297A8: .word 0x000FFFFF
	thumb_func_end sub_0202977C

	thumb_func_start sub_020297AC
sub_020297AC: ; 0x020297AC
	ldr r0, [r0, #0x2c]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020297AC

	thumb_func_start sub_020297B4
sub_020297B4: ; 0x020297B4
	push {r3, r4}
	ldr r2, [r0, #0x2c]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _020297D8 ; =0x000F423F
	cmp r4, r1
	bhs _020297D2
	ldr r1, _020297DC ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _020297E0 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x2c]
_020297D2:
	pop {r3, r4}
	bx lr
	nop
_020297D8: .word 0x000F423F
_020297DC: .word 0xFFF00000
_020297E0: .word 0x000FFFFF
	thumb_func_end sub_020297B4

	thumb_func_start sub_020297E4
sub_020297E4: ; 0x020297E4
	ldr r0, [r0, #0x30]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020297E4

	thumb_func_start sub_020297EC
sub_020297EC: ; 0x020297EC
	push {r3, r4}
	ldr r2, [r0, #0x30]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029810 ; =0x000F423F
	cmp r4, r1
	bhs _0202980A
	ldr r1, _02029814 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029818 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x30]
_0202980A:
	pop {r3, r4}
	bx lr
	nop
_02029810: .word 0x000F423F
_02029814: .word 0xFFF00000
_02029818: .word 0x000FFFFF
	thumb_func_end sub_020297EC

	thumb_func_start sub_0202981C
sub_0202981C: ; 0x0202981C
	ldr r0, [r0, #0x34]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_0202981C

	thumb_func_start sub_02029824
sub_02029824: ; 0x02029824
	push {r3, r4}
	ldr r2, [r0, #0x34]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029848 ; =0x000F423F
	cmp r4, r1
	bhs _02029842
	ldr r1, _0202984C ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029850 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x34]
_02029842:
	pop {r3, r4}
	bx lr
	nop
_02029848: .word 0x000F423F
_0202984C: .word 0xFFF00000
_02029850: .word 0x000FFFFF
	thumb_func_end sub_02029824

	thumb_func_start sub_02029854
sub_02029854: ; 0x02029854
	push {r3, r4}
	add r4, r0, #0
	add r4, #0x8c
	strh r1, [r4]
	add r1, r0, #0
	add r1, #0x8e
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0x90
	strb r3, [r1]
	mov r1, #1
	add r0, #0x91
	strb r1, [r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029854

	thumb_func_start sub_02029874
sub_02029874: ; 0x02029874
	add r0, #0x8c
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029874

	thumb_func_start sub_0202987C
sub_0202987C: ; 0x0202987C
	add r0, #0x8e
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202987C

	thumb_func_start sub_02029884
sub_02029884: ; 0x02029884
	add r0, #0x90
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029884

	thumb_func_start sub_0202988C
sub_0202988C: ; 0x0202988C
	add r0, #0x91
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202988C

	thumb_func_start sub_02029894
sub_02029894: ; 0x02029894
	ldr r3, _0202989C ; =sub_020245BC
	mov r1, #0xc
	bx r3
	nop
_0202989C: .word sub_020245BC
	thumb_func_end sub_02029894

	thumb_func_start sub_020298A0
sub_020298A0: ; 0x020298A0
	push {r3, lr}
	mov r1, #0xc
	bl sub_020245BC
	add r0, #0x50
	pop {r3, pc}
	thumb_func_end sub_020298A0

	thumb_func_start sub_020298AC
sub_020298AC: ; 0x020298AC
	add r0, #0x50
	bx lr
	thumb_func_end sub_020298AC

	thumb_func_start sub_020298B0
sub_020298B0: ; 0x020298B0
	ldr r3, _020298B8 ; =sub_020245BC
	mov r1, #0xc
	bx r3
	nop
_020298B8: .word sub_020245BC
	thumb_func_end sub_020298B0

	.rodata


	.global Unk_020E5B44
Unk_020E5B44: ; 0x020E5B44
	.incbin "incbin/arm9_rodata.bin", 0xF04, 0xF0A - 0xF04

	.global Unk_020E5B4A
Unk_020E5B4A: ; 0x020E5B4A
	.incbin "incbin/arm9_rodata.bin", 0xF0A, 0x6



	.data


	.global Unk_02100920
Unk_02100920: ; 0x02100920
	.incbin "incbin/arm9_data.bin", 0x1C40, 0x62

