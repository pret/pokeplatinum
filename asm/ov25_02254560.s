	.include "macros/function.inc"
	.include "include/ov25_02254560.inc"

	

	.text


	thumb_func_start ov25_02254560
ov25_02254560: ; 0x02254560
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x42
	add r5, r0, #0
	mov r0, #7
	lsl r1, r1, #4
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	str r0, [r5, #0]
	add r4, r0, #0
	beq _0225464C
	mov r0, #0x72
	lsl r0, r0, #2
	str r7, [r4, r0]
	ldr r0, [r4, r0]
	bl sub_020A7FFC
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #7
	bl ov25_02255540
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _022545AA
	ldr r0, [r5, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022545AA:
	mov r0, #7
	str r6, [r4, #0]
	bl sub_02018340
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp]
	add r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov25_02254684
	mov r1, #0x75
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #8
	ldr r1, [r4, r1]
	bl ov25_02254DD8
	ldr r0, [r5, #0]
	mov r1, #8
	add r0, r0, #4
	bl ov25_02255090
	ldr r0, [r5, #0]
	mov r1, #0x48
	add r0, #0x2c
	mov r2, #4
	mov r3, #6
	bl ov25_02254798
	ldr r0, [r5, #0]
	mov r1, #0x4c
	add r0, #0x6c
	mov r2, #4
	mov r3, #6
	bl ov25_02254798
	ldr r0, [r5, #0]
	mov r1, #0x50
	add r0, #0xac
	mov r2, #4
	mov r3, #6
	bl ov25_02254798
	ldr r0, [r5, #0]
	mov r1, #0x54
	add r0, #0xec
	mov r2, #2
	mov r3, #4
	bl ov25_02254798
	mov r0, #0x4b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0x58
	mov r2, #2
	mov r3, #4
	bl ov25_02254798
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0x5c
	mov r2, #2
	mov r3, #4
	bl ov25_02254798
	ldr r0, _02254650 ; =ov25_02254654
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA3C
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225464C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02254650: .word ov25_02254654
	thumb_func_end ov25_02254560

	thumb_func_start ov25_02254654
ov25_02254654: ; 0x02254654
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r3, _02254660 ; =ov25_02255614
	ldr r0, [r1, r0]
	bx r3
	nop
_02254660: .word ov25_02255614
	thumb_func_end ov25_02254654

	thumb_func_start ov25_02254664
ov25_02254664: ; 0x02254664
	push {r3, lr}
	bl ov25_02254418
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov25_02254664

	thumb_func_start ov25_02254674
ov25_02254674: ; 0x02254674
	push {r3, lr}
	bl ov25_02254418
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov25_02254674

	thumb_func_start ov25_02254684
ov25_02254684: ; 0x02254684
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xc
	mov r1, #0
	add r2, sp, #0
	mov r3, #7
	bl sub_02006F88
	add r4, r0, #0
	beq _022546B6
	ldr r0, [sp]
	mov r2, #2
	lsl r2, r2, #8
	ldr r0, [r0, #0xc]
	add r1, r5, r2
	bl sub_020C4B68
	mov r1, #2
	lsl r1, r1, #8
	add r0, r5, r1
	bl sub_020C2C54
	add r0, r4, #0
	bl sub_020181C4
_022546B6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02254684

	thumb_func_start ov25_022546B8
ov25_022546B8: ; 0x022546B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	bl ov25_02254418
	add r4, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov25_02254540
	bl sub_02056888
	mov r1, #2
	lsl r1, r1, #8
	add r5, r4, r1
	lsl r4, r0, #6
	add r0, r5, r4
	lsl r1, r6, #5
	mov r2, #0x20
	bl sub_020C0108
	add r0, r5, r4
	add r1, r7, #0
	mov r2, #0x20
	bl sub_020C01B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_022546B8

	thumb_func_start ov25_022546F0
ov25_022546F0: ; 0x022546F0
	push {r3, r4, r5, lr}
	bl ov25_02254418
	add r4, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov25_02254540
	bl sub_02056888
	mov r1, #2
	lsl r0, r0, #5
	lsl r1, r1, #8
	add r0, #0x10
	add r4, r4, r1
	lsl r5, r0, #1
	add r0, r4, r5
	mov r1, #0
	mov r2, #0x20
	bl sub_020C0108
	add r0, r4, r5
	mov r1, #0
	mov r2, #0x20
	bl sub_020C01B8
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_022546F0

	thumb_func_start ov25_02254728
ov25_02254728: ; 0x02254728
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov25_02254418
	add r4, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov25_02254540
	bl sub_02056888
	mov r1, #2
	lsl r1, r1, #8
	add r1, r4, r1
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	mov r2, #0x20
	bl sub_020C4B18
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02254728

	thumb_func_start ov25_02254754
ov25_02254754: ; 0x02254754
	push {r4, lr}
	add r4, r0, #0
	beq _02254794
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov25_02254F40
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02254772
	bl ov25_022555E8
_02254772:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02254780
	bl sub_020181C4
_02254780:
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225478E
	bl sub_0200DA58
_0225478E:
	add r0, r4, #0
	bl sub_020181C4
_02254794:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov25_02254754

	thumb_func_start ov25_02254798
ov25_02254798: ; 0x02254798
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0xf
	mov r6, #0
	mov ip, r2
	mov lr, r1
	add r7, r3, #0
	add r2, r6, #0
	lsl r4, r4, #0xc
_022547A8:
	mov r3, lr
	mov r1, #0
	add r3, r3, r6
_022547AE:
	add r5, r1, r3
	orr r5, r4
	strh r5, [r0]
	add r1, r1, #1
	add r0, r0, #2
	cmp r1, #4
	blt _022547AE
	mov r1, ip
	cmp r2, r1
	blt _022547C6
	cmp r2, r7
	blt _022547C8
_022547C6:
	add r6, #0x20
_022547C8:
	add r2, r2, #1
	cmp r2, #8
	blt _022547A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_02254798

	thumb_func_start ov25_022547D0
ov25_022547D0: ; 0x022547D0
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, r2, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	ldr r0, _022547F0 ; =0x02255F8C
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022547F0: .word 0x02255F8C
	thumb_func_end ov25_022547D0

	thumb_func_start ov25_022547F4
ov25_022547F4: ; 0x022547F4
	ldr r3, _022547FC ; =ov25_02255130
	add r0, r0, #4
	bx r3
	nop
_022547FC: .word ov25_02255130
	thumb_func_end ov25_022547F4

	thumb_func_start ov25_02254800
ov25_02254800: ; 0x02254800
	ldr r3, _02254808 ; =ov25_02255154
	add r0, r0, #4
	bx r3
	nop
_02254808: .word ov25_02255154
	thumb_func_end ov25_02254800

	thumb_func_start ov25_0225480C
ov25_0225480C: ; 0x0225480C
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, r0, #4
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov25_0225480C

	thumb_func_start ov25_02254820
ov25_02254820: ; 0x02254820
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	mov r0, #0
	bl sub_020BDEA8
	mov r0, #0x80
	bl sub_020BEA50
	mov r0, #1
	lsl r0, r0, #8
	bl sub_020BEAF8
	ldr r2, _0225492C ; =0x04001000
	ldr r0, _02254930 ; =0xFFCFFFEF
	ldr r1, [r2, #0]
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	str r0, [r2, #0]
	bl sub_0201FF68
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, _02254934 ; =0x02255F54
	mov r1, #4
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, _02254938 ; =0x02255F70
	mov r1, #5
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #7
	mov r2, #0x7e
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	mov r0, #0xc
	mov r1, #0xe
	mov r3, #4
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #7
	mov r2, #0x7e
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	mov r0, #0xc
	mov r1, #0xf
	mov r3, #4
	bl sub_02006E60
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov25_02254548
	add r3, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0xd
	mov r2, #4
	lsl r3, r3, #5
	bl sub_02006E9C
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	mov r2, #0xe4
	bl sub_02019CB8
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_02019448
	ldr r0, _0225492C ; =0x04001000
	ldr r1, _0225493C ; =0xFFFFE0FF
	ldr r2, [r0, #0]
	and r2, r1
	mov r1, #0x13
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0, #0]
	ldr r2, [r0, #0]
	ldr r1, _02254940 ; =0xFFFF1FFF
	and r1, r2
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov25_0225480C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225492C: .word 0x04001000
_02254930: .word 0xFFCFFFEF
_02254934: .word 0x02255F54
_02254938: .word 0x02255F70
_0225493C: .word 0xFFFFE0FF
_02254940: .word 0xFFFF1FFF
	thumb_func_end ov25_02254820

	thumb_func_start ov25_02254944
ov25_02254944: ; 0x02254944
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	add r0, r1, #0
	bl ov25_02255244
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	bl ov25_02255248
	cmp r0, #0
	beq _02254970
	cmp r0, #1
	beq _0225497C
	cmp r0, #2
	beq _02254A50
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02254970:
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	ldr r0, [sp, #0x10]
	bl ov25_0225524C
_0225497C:
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _02254A56
	mov r0, #0
	strh r0, [r4]
	ldrh r0, [r4, #2]
	add r0, #0xc
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0x28
	bls _0225499C
	mov r0, #0x28
	strh r0, [r4, #2]
_0225499C:
	ldrh r1, [r4, #2]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	lsr r0, r1, #2
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	mov r1, #0xc
	sub r6, r1, r0
	lsl r0, r0, #1
	str r0, [sp, #0x14]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r7, r3, r2
	ldr r0, [sp, #0x14]
	mov r1, #5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0x40
	mov r3, #2
	bl sub_02019CB8
	cmp r7, #0
	beq _02254A34
	sub r0, r6, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	add r2, r7, #0
	lsl r0, r0, #2
	add r2, #0xe4
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #5
	lsr r2, r2, #0x10
	mov r3, #2
	bl sub_02019CB8
	ldr r0, [sp, #0x14]
	mov r2, #0xe4
	add r0, r6, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	lsl r0, r0, #2
	sub r2, r2, r7
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #5
	lsr r2, r2, #0x10
	mov r3, #2
	bl sub_02019CB8
_02254A34:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_02019448
	ldrh r0, [r4, #2]
	cmp r0, #0x28
	bne _02254A56
	ldr r0, [sp, #0x10]
	bl ov25_0225524C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02254A50:
	ldr r0, [sp, #0x10]
	bl ov25_0225480C
_02254A56:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov25_02254944

	thumb_func_start ov25_02254A5C
ov25_02254A5C: ; 0x02254A5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	add r0, r1, #0
	bl ov25_02255244
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	bl ov25_02255248
	cmp r0, #0
	beq _02254A88
	cmp r0, #1
	beq _02254A94
	cmp r0, #2
	beq _02254B82
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02254A88:
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	ldr r0, [sp, #0x10]
	bl ov25_0225524C
_02254A94:
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _02254B88
	mov r0, #0
	strh r0, [r4]
	ldrh r0, [r4, #2]
	add r0, #8
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0x28
	bls _02254AB4
	mov r0, #0x28
	strh r0, [r4, #2]
_02254AB4:
	ldrh r0, [r4, #2]
	mov r3, #2
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	lsr r7, r0, #2
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	mov r0, #0x16
	sub r0, r0, r7
	str r0, [sp, #0x14]
	str r3, [sp]
	mov r0, #0x18
	add r6, r2, r1
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	mov r2, #0xe4
	bl sub_02019CB8
	ldr r0, [sp, #0x14]
	mov r1, #5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0xe4
	mov r3, #2
	bl sub_02019CB8
	cmp r6, #0
	beq _02254B66
	mov r0, #0
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	lsl r0, r0, #2
	sub r3, r6, #1
	mov r2, #0xe7
	sub r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #5
	lsr r2, r2, #0x10
	mov r3, #2
	bl sub_02019CB8
	ldr r0, [sp, #0x14]
	add r6, #0xe0
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	lsl r0, r0, #2
	lsl r2, r6, #0x10
	ldr r0, [r5, r0]
	mov r1, #5
	lsr r2, r2, #0x10
	mov r3, #2
	bl sub_02019CB8
_02254B66:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_02019448
	ldrh r0, [r4, #2]
	cmp r0, #0x28
	bne _02254B88
	ldr r0, [sp, #0x10]
	bl ov25_0225524C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02254B82:
	ldr r0, [sp, #0x10]
	bl ov25_0225480C
_02254B88:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_02254A5C

	thumb_func_start ov25_02254B8C
ov25_02254B8C: ; 0x02254B8C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_02255244
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	add r2, r0, #0
	cmp r2, #4
	bhs _02254BE6
	mov r3, #2
	str r3, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	mov r6, #0xe3
	lsl r0, r0, #2
	sub r2, r6, r2
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #5
	lsr r2, r2, #0x10
	bl sub_02019CB8
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_02019448
	add r0, r5, #0
	bl ov25_0225524C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_02254BE6:
	add r0, r5, #0
	bl ov25_0225480C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov25_02254B8C

	thumb_func_start ov25_02254BF0
ov25_02254BF0: ; 0x02254BF0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_02255244
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	add r2, r0, #0
	cmp r2, #4
	bhs _02254C4A
	mov r3, #2
	str r3, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	mov r6, #0xe7
	lsl r0, r0, #2
	sub r2, r6, r2
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #5
	lsr r2, r2, #0x10
	bl sub_02019CB8
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_02019448
	add r0, r5, #0
	bl ov25_0225524C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_02254C4A:
	add r0, r5, #0
	bl ov25_0225480C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov25_02254BF0

	thumb_func_start ov25_02254C54
ov25_02254C54: ; 0x02254C54
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	bl ov25_0225523C
	add r4, r0, #0
	cmp r5, #0
	bne _02254C6E
	mov r3, #0x1c
	mov r0, #4
	b _02254C72
_02254C6E:
	mov r3, #0x1c
	mov r0, #0xc
_02254C72:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x7e
	lsl r0, r0, #2
	lsl r3, r3, #0x18
	ldr r0, [r4, r0]
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl sub_020198C0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_02019448
	add r0, r6, #0
	bl ov25_0225480C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov25_02254C54

	thumb_func_start ov25_02254CA8
ov25_02254CA8: ; 0x02254CA8
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r1, r0, #0
	add r0, r4, #0
	add r1, #0x6c
	mov r2, #0
	bl ov25_02254C54
	ldr r0, _02254CC8 ; =0x00000671
	bl sub_02005748
	pop {r4, pc}
	nop
_02254CC8: .word 0x00000671
	thumb_func_end ov25_02254CA8

	thumb_func_start ov25_02254CCC
ov25_02254CCC: ; 0x02254CCC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	mov r1, #0x4b
	add r2, r0, #0
	lsl r1, r1, #2
	add r1, r2, r1
	add r0, r4, #0
	mov r2, #1
	bl ov25_02254C54
	ldr r0, _02254CF0 ; =0x00000671
	bl sub_02005748
	pop {r4, pc}
	nop
_02254CF0: .word 0x00000671
	thumb_func_end ov25_02254CCC

	thumb_func_start ov25_02254CF4
ov25_02254CF4: ; 0x02254CF4
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r1, r0, #0
	add r0, r4, #0
	add r1, #0x2c
	mov r2, #0
	bl ov25_02254C54
	pop {r4, pc}
	thumb_func_end ov25_02254CF4

	thumb_func_start ov25_02254D0C
ov25_02254D0C: ; 0x02254D0C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r1, r0, #0
	add r0, r4, #0
	add r1, #0xec
	mov r2, #1
	bl ov25_02254C54
	pop {r4, pc}
	thumb_func_end ov25_02254D0C

	thumb_func_start ov25_02254D24
ov25_02254D24: ; 0x02254D24
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r1, r0, #0
	add r0, r4, #0
	add r1, #0xac
	mov r2, #0
	bl ov25_02254C54
	ldr r0, _02254D44 ; =0x0000066F
	bl sub_02005748
	pop {r4, pc}
	nop
_02254D44: .word 0x0000066F
	thumb_func_end ov25_02254D24

	thumb_func_start ov25_02254D48
ov25_02254D48: ; 0x02254D48
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	mov r1, #0x5b
	add r2, r0, #0
	lsl r1, r1, #2
	add r1, r2, r1
	add r0, r4, #0
	mov r2, #1
	bl ov25_02254C54
	ldr r0, _02254D6C ; =0x0000066F
	bl sub_02005748
	pop {r4, pc}
	nop
_02254D6C: .word 0x0000066F
	thumb_func_end ov25_02254D48

	thumb_func_start ov25_02254D70
ov25_02254D70: ; 0x02254D70
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	mov r1, #0x75
	add r4, r0, #0
	lsl r1, r1, #2
	add r1, r4, r1
	bl ov25_02254DE0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r1, [r4, #0]
	add r0, r4, r0
	bl ov25_02254EE8
	add r0, r5, #0
	bl ov25_0225480C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov25_02254D70

	thumb_func_start ov25_02254D9C
ov25_02254D9C: ; 0x02254D9C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r1, r0, #0
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r1, [r1, #0]
	bl ov25_02254EE8
	add r0, r4, #0
	bl ov25_0225480C
	pop {r4, pc}
	thumb_func_end ov25_02254D9C

	thumb_func_start ov25_02254DBC
ov25_02254DBC: ; 0x02254DBC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	mov r1, #0x75
	lsl r1, r1, #2
	add r0, r0, r1
	bl ov25_02254F40
	add r0, r4, #0
	bl ov25_0225480C
	pop {r4, pc}
	thumb_func_end ov25_02254DBC

	thumb_func_start ov25_02254DD8
ov25_02254DD8: ; 0x02254DD8
	mov r2, #0
	str r2, [r0, #0]
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov25_02254DD8

	thumb_func_start ov25_02254DE0
ov25_02254DE0: ; 0x02254DE0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #7
	str r0, [sp]
	add r0, r4, #0
	add r0, #8
	mov r1, #0xc
	mov r2, #3
	mov r3, #4
	bl ov25_02255958
	cmp r0, #0
	beq _02254E7C
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #2
	bl sub_02006EC0
	mov r0, #0x60
	str r0, [sp]
	mov r0, #7
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0xc
	mov r2, #5
	add r3, r1, #0
	bl sub_02006E84
	add r0, r5, #0
	mov r1, #0xf
	bl ov25_02254E84
	add r2, r4, #0
	ldr r0, [r4, #4]
	ldr r1, _02254E80 ; =0x02255F44
	add r2, #8
	bl ov25_02255810
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _02254E7C
	add r2, r4, #0
	ldr r0, [r4, #4]
	ldr r1, _02254E80 ; =0x02255F44
	add r2, #8
	bl ov25_02255810
	str r0, [r4, #0x20]
	cmp r0, #0
	bne _02254E5E
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x1c]
	bl ov25_022558B0
	add sp, #0xc
	pop {r4, r5, pc}
_02254E5E:
	mov r1, #1
	lsl r1, r1, #0x10
	mov r2, #0
	bl ov25_022558F0
	ldr r0, [r4, #0x1c]
	mov r1, #0xf
	bl ov25_02255938
	ldr r0, [r4, #0x20]
	mov r1, #0xf
	bl ov25_02255938
	mov r0, #1
	str r0, [r4, #0]
_02254E7C:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02254E80: .word 0x02255F44
	thumb_func_end ov25_02254DE0

	thumb_func_start ov25_02254E84
ov25_02254E84: ; 0x02254E84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl ov25_02254540
	bl sub_02056888
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r5, r0
	bl ov25_02254728
	ldr r1, _02254EE4 ; =0x00000402
	add r0, r1, #6
	ldrh r2, [r5, r1]
	ldrh r0, [r5, r0]
	strh r0, [r5, r1]
	add r0, r1, #6
	strh r2, [r5, r0]
	add r0, r1, #0
	add r2, r1, #0
	add r0, #0xe
	add r2, #0x1c
	ldrh r3, [r5, r2]
	add r2, r1, #0
	ldrh r0, [r5, r0]
	add r2, #0xe
	strh r3, [r5, r2]
	add r2, r1, #0
	add r2, #0x1c
	strh r0, [r5, r2]
	sub r0, r1, #2
	add r0, r5, r0
	mov r1, #0x20
	bl sub_020C2C54
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r5, r0
	lsl r1, r4, #5
	mov r2, #0x20
	bl sub_020C01B8
	pop {r3, r4, r5, pc}
	nop
_02254EE4: .word 0x00000402
	thumb_func_end ov25_02254E84

	thumb_func_start ov25_02254EE8
ov25_02254EE8: ; 0x02254EE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02254F32
	ldr r0, [r1, #0]
	ldr r2, _02254F34 ; =0x04000280
	mov r3, #0
	add r0, r0, #1
	strh r3, [r2]
	str r0, [r2, #0x10]
	add r0, r2, #0
	mov r1, #0xa
	add r0, #0x18
	str r1, [r0, #0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_02254F0A:
	ldrh r1, [r2]
	tst r1, r0
	bne _02254F0A
	ldr r0, _02254F38 ; =0x040002A0
	add r3, r0, #0
	ldr r1, [r0, #0]
	sub r3, #0x20
	lsr r0, r0, #0xb
_02254F1A:
	ldrh r2, [r3]
	tst r2, r0
	bne _02254F1A
	ldr r0, _02254F3C ; =0x040002A8
	ldr r5, [r0, #0]
	ldr r0, [r4, #0x1c]
	bl ov25_022558C4
	ldr r0, [r4, #0x20]
	add r1, r5, #0
	bl ov25_022558C4
_02254F32:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02254F34: .word 0x04000280
_02254F38: .word 0x040002A0
_02254F3C: .word 0x040002A8
	thumb_func_end ov25_02254EE8

	thumb_func_start ov25_02254F40
ov25_02254F40: ; 0x02254F40
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02254F66
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x1c]
	bl ov25_022558B0
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x20]
	bl ov25_022558B0
	add r0, r4, #0
	add r0, #8
	bl ov25_022559B0
	mov r0, #0
	str r0, [r4, #0]
_02254F66:
	pop {r4, pc}
	thumb_func_end ov25_02254F40

	thumb_func_start ov25_02254F68
ov25_02254F68: ; 0x02254F68
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r6, #0
	bl ov25_02255244
	add r0, r6, #0
	bl ov25_02255248
	add r5, r0, #0
	cmp r5, #3
	bhi _02254FFC
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02254F94: ; jump table
	.short _02254F9C - _02254F94 - 2 ; case 0
	.short _02254FB8 - _02254F94 - 2 ; case 1
	.short _02254FB8 - _02254F94 - 2 ; case 2
	.short _02254FB8 - _02254F94 - 2 ; case 3
_02254F9C:
	mov r0, #6
	str r0, [sp]
	ldr r0, _02255000 ; =0x04001050
	mov r1, #2
	mov r2, #0x1c
	mov r3, #0x1a
	bl sub_020BF55C
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_02019448
_02254FB8:
	mov r3, #2
	str r3, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	mov r2, #0xe7
	lsl r0, r0, #2
	sub r2, r2, r5
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #5
	lsr r2, r2, #0x10
	bl sub_02019CB8
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_02019448
	cmp r5, #3
	bne _02254FF6
	add r0, r6, #0
	bl ov25_0225480C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_02254FF6:
	add r0, r6, #0
	bl ov25_0225524C
_02254FFC:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02255000: .word 0x04001050
	thumb_func_end ov25_02254F68

	thumb_func_start ov25_02255004
ov25_02255004: ; 0x02255004
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	mov r3, #2
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	mov r2, #0x40
	bl sub_02019CB8
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_02019448
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_02019448
	mov r1, #0
	ldr r0, _02255060 ; =0x04001050
	add r2, r1, #0
	mov r3, #0x1f
	str r1, [sp]
	bl sub_020BF55C
	add r0, r5, #0
	bl ov25_0225480C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02255060: .word 0x04001050
	thumb_func_end ov25_02255004

	thumb_func_start ov25_02255064
ov25_02255064: ; 0x02255064
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_02019044
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_02019044
	add r0, r5, #0
	bl ov25_0225480C
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02255064

	.rodata


	.global Unk_ov25_02255F44
Unk_ov25_02255F44: ; 0x02255F44
	.incbin "incbin/overlay25_rodata.bin", 0xE4, 0xF4 - 0xE4

	.global Unk_ov25_02255F54
Unk_ov25_02255F54: ; 0x02255F54
	.incbin "incbin/overlay25_rodata.bin", 0xF4, 0x110 - 0xF4

	.global Unk_ov25_02255F70
Unk_ov25_02255F70: ; 0x02255F70
	.incbin "incbin/overlay25_rodata.bin", 0x110, 0x12C - 0x110

	.global Unk_ov25_02255F8C
Unk_ov25_02255F8C: ; 0x02255F8C
	.incbin "incbin/overlay25_rodata.bin", 0x12C, 0xE4

