	.include "macros/function.inc"
	.include "include/unk_0207A6DC.inc"

	

	.text


	thumb_func_start sub_0207A6DC
sub_0207A6DC: ; 0x0207A6DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov16_0223EBEC
	mov r1, #0x10
	tst r0, r1
	bne _0207A736
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r6, r0, #0
	ldr r0, _0207A738 ; =0x020F099C
	mov r1, #0xc
	add r2, r5, #0
	bl sub_02032798
	str r5, [r4, #0]
	mov r0, #0
	strb r0, [r4, #4]
	str r5, [r6, #0]
	strb r0, [r6, #4]
	add r0, r5, #0
	add r1, r4, #4
	bl ov16_0223F320
	add r0, r5, #0
	add r1, r6, #4
	bl ov16_0223F32C
	ldr r0, _0207A73C ; =sub_0207ACB4
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	ldr r0, _0207A740 ; =sub_0207AD40
	add r1, r6, #0
	mov r2, #0
	bl sub_0200D9E8
_0207A736:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207A738: .word 0x020F099C
_0207A73C: .word sub_0207ACB4
_0207A740: .word sub_0207AD40
	thumb_func_end sub_0207A6DC

	thumb_func_start sub_0207A744
sub_0207A744: ; 0x0207A744
	ldr r3, _0207A750 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _0207A754 ; =0x020F099C
	mov r1, #0xc
	bx r3
	nop
_0207A750: .word sub_02032798
_0207A754: .word 0x020F099C
	thumb_func_end sub_0207A744

	thumb_func_start sub_0207A758
sub_0207A758: ; 0x0207A758
	mov r0, #4
	bx lr
	thumb_func_end sub_0207A758

	thumb_func_start sub_0207A75C
sub_0207A75C: ; 0x0207A75C
	ldr r3, _0207A760 ; =sub_02025E68
	bx r3
	; .align 2, 0
_0207A760: .word sub_02025E68
	thumb_func_end sub_0207A75C

	thumb_func_start sub_0207A764
sub_0207A764: ; 0x0207A764
	ldr r3, _0207A768 ; =sub_02079FEC
	bx r3
	; .align 2, 0
_0207A768: .word sub_02079FEC
	thumb_func_end sub_0207A764

	thumb_func_start sub_0207A76C
sub_0207A76C: ; 0x0207A76C
	mov r0, #0xfa
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A76C

	thumb_func_start sub_0207A774
sub_0207A774: ; 0x0207A774
	mov r0, #0x34
	bx lr
	thumb_func_end sub_0207A774

	thumb_func_start sub_0207A778
sub_0207A778: ; 0x0207A778
	ldr r3, [r1, #0]
	mov r1, #0x80
	ldr r2, [r3, #0]
	tst r1, r2
	beq _0207A78C
	lsl r0, r0, #3
	add r0, r3, r0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bx lr
_0207A78C:
	lsl r0, r0, #2
	add r0, r3, r0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A778

	thumb_func_start sub_0207A798
sub_0207A798: ; 0x0207A798
	ldr r1, [r1, #0]
	mov r2, #0x80
	ldr r3, [r1, #0]
	tst r2, r3
	beq _0207A7AE
	lsl r2, r0, #1
	mov r0, #0x34
	add r1, #0x28
	mul r0, r2
	add r0, r1, r0
	bx lr
_0207A7AE:
	mov r2, #0x34
	add r1, #0x28
	mul r2, r0
	add r0, r1, r2
	bx lr
	thumb_func_end sub_0207A798

	thumb_func_start sub_0207A7B8
sub_0207A7B8: ; 0x0207A7B8
	ldr r3, [r1, #0]
	mov r1, #0x80
	ldr r2, [r3, #0]
	tst r1, r2
	beq _0207A7CA
	lsl r0, r0, #3
	add r0, r3, r0
	ldr r0, [r0, #4]
	bx lr
_0207A7CA:
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A7B8

	thumb_func_start sub_0207A7D4
sub_0207A7D4: ; 0x0207A7D4
	ldr r3, [r1, #0]
	mov r1, #0x80
	ldr r2, [r3, #0]
	tst r2, r1
	beq _0207A7E8
	lsl r0, r0, #3
	add r0, r3, r0
	add r1, #0x98
	ldr r0, [r0, r1]
	bx lr
_0207A7E8:
	lsl r0, r0, #2
	add r0, r3, r0
	add r1, #0x98
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A7D4

	thumb_func_start sub_0207A7F4
sub_0207A7F4: ; 0x0207A7F4
	ldr r0, [r1, #0]
	add r0, #0x5c
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A7F4

	thumb_func_start sub_0207A7FC
sub_0207A7FC: ; 0x0207A7FC
	ldr r0, [r1, #0]
	add r0, #0xc4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A7FC

	thumb_func_start sub_0207A804
sub_0207A804: ; 0x0207A804
	ldr r0, [r1, #0]
	ldr r0, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A804

	thumb_func_start sub_0207A80C
sub_0207A80C: ; 0x0207A80C
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A80C

	thumb_func_start sub_0207A814
sub_0207A814: ; 0x0207A814
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0207A814

	thumb_func_start sub_0207A81C
sub_0207A81C: ; 0x0207A81C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #5
	mov r1, #4
	str r2, [sp, #8]
	add r7, r3, #0
	bl sub_02018144
	add r6, r0, #0
	ldr r0, [sp]
	bl ov16_0223E06C
	add r5, r0, #0
	ldr r0, [sp]
	bl ov16_0223E08C
	add r4, r0, #0
	ldr r0, [sp]
	bl ov16_0223E098
	mov ip, r0
	add r0, sp, #0x10
	ldrh r3, [r4]
	ldrb r0, [r0, #0x10]
	add r1, r3, #5
	add r2, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r2, r1
	bls _0207A864
	mov r1, ip
	strh r3, [r1]
	mov r1, #0
	strh r1, [r4]
_0207A864:
	ldr r1, [sp, #4]
	mov r3, #0
	strb r1, [r6]
	ldr r1, [sp, #8]
	strb r1, [r6, #1]
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	strh r1, [r6, #2]
_0207A874:
	ldrb r2, [r6, r3]
	ldrh r1, [r4]
	add r3, r3, #1
	strb r2, [r5, r1]
	ldrh r1, [r4]
	add r1, r1, #1
	strh r1, [r4]
	cmp r3, #4
	blo _0207A874
	mov r3, #0
	cmp r0, #0
	ble _0207A89E
_0207A88C:
	ldrb r2, [r7, r3]
	ldrh r1, [r4]
	add r3, r3, #1
	strb r2, [r5, r1]
	ldrh r1, [r4]
	add r1, r1, #1
	strh r1, [r4]
	cmp r3, r0
	blt _0207A88C
_0207A89E:
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A81C

	thumb_func_start sub_0207A8A8
sub_0207A8A8: ; 0x0207A8A8
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov16_0223E074
	add r7, r0, #0
	ldr r0, [sp]
	bl ov16_0223E0B0
	add r4, r0, #0
	ldr r0, [sp]
	bl ov16_0223E0BC
	ldrh r1, [r4]
	add r2, r1, r5
	add r3, r2, #1
	mov r2, #1
	lsl r2, r2, #0xc
	cmp r3, r2
	ble _0207A8DA
	strh r1, [r0]
	mov r0, #0
	strh r0, [r4]
_0207A8DA:
	mov r0, #0
	cmp r5, #0
	ble _0207A8F2
_0207A8E0:
	ldrb r2, [r6, r0]
	ldrh r1, [r4]
	add r0, r0, #1
	strb r2, [r7, r1]
	ldrh r1, [r4]
	add r1, r1, #1
	strh r1, [r4]
	cmp r0, r5
	blt _0207A8E0
_0207A8F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A8A8

	thumb_func_start sub_0207A8F4
sub_0207A8F4: ; 0x0207A8F4
	push {r0, r1, r2, r3}
	push {r3, lr}
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207A90E
	mov r0, #0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
_0207A90E:
	mov r0, #0x33
	bl sub_02036540
	cmp r0, #0
	bne _0207A922
	mov r0, #0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
_0207A922:
	mov r0, #0x18
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020359DC
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_0207A8F4

	thumb_func_start sub_0207A934
sub_0207A934: ; 0x0207A934
	push {r3, r4, r5, lr}
	add r4, r3, #0
	ldr r5, [r2, #0]
	ldr r2, [r4, #0]
	lsl r1, r0, #2
	add r3, r2, r1
	mov r2, #0x5f
	lsl r2, r2, #2
	str r5, [r3, r2]
	ldr r3, [r4, #0]
	add r1, r3, r1
	ldr r1, [r1, r2]
	bl sub_0202FAA8
	ldr r0, _0207A95C ; =0x00001020
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0207A95C: .word 0x00001020
	thumb_func_end sub_0207A934

	thumb_func_start sub_0207A960
sub_0207A960: ; 0x0207A960
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207A974
	mov r0, #0
	pop {r4, pc}
_0207A974:
	ldr r0, [r4, #0]
	add r4, #0x20
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_02025E80
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207A960

	thumb_func_start sub_0207A988
sub_0207A988: ; 0x0207A988
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207A99C
	mov r0, #0
	pop {r4, pc}
_0207A99C:
	mov r0, #0x34
	bl sub_02036540
	cmp r0, #0
	bne _0207A9AA
	mov r0, #0
	pop {r4, pc}
_0207A9AA:
	bl sub_02025E68
	add r4, #0x20
	add r2, r0, #0
	mov r0, #0x19
	add r1, r4, #0
	bl sub_0203597C
	pop {r4, pc}
	thumb_func_end sub_0207A988

	thumb_func_start sub_0207A9BC
sub_0207A9BC: ; 0x0207A9BC
	ldr r0, _0207A9C8 ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207A9C8: .word 0x00001020
	thumb_func_end sub_0207A9BC

	thumb_func_start sub_0207A9CC
sub_0207A9CC: ; 0x0207A9CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207A9E0
	mov r0, #0
	pop {r4, pc}
_0207A9E0:
	ldr r3, [r4, #0]
	add r4, #0x20
	add r3, #0x28
	mov r2, #6
_0207A9E8:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0207A9E8
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0207A9CC

	thumb_func_start sub_0207A9F8
sub_0207A9F8: ; 0x0207A9F8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AA0C
	mov r0, #0
	pop {r4, pc}
_0207AA0C:
	mov r0, #0x35
	bl sub_02036540
	cmp r0, #0
	bne _0207AA1A
	mov r0, #0
	pop {r4, pc}
_0207AA1A:
	add r4, #0x20
	mov r0, #0x1a
	add r1, r4, #0
	mov r2, #0x34
	bl sub_0203597C
	pop {r4, pc}
	thumb_func_end sub_0207A9F8

	thumb_func_start sub_0207AA28
sub_0207AA28: ; 0x0207AA28
	ldr r0, _0207AA34 ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207AA34: .word 0x00001020
	thumb_func_end sub_0207AA28

	thumb_func_start sub_0207AA38
sub_0207AA38: ; 0x0207AA38
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AA4C
	mov r0, #0
	pop {r4, pc}
_0207AA4C:
	ldr r0, [r4, #0]
	add r4, #0x20
	ldr r0, [r0, #4]
	add r1, r4, #0
	bl sub_0207A21C
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0207AA38

	thumb_func_start sub_0207AA5C
sub_0207AA5C: ; 0x0207AA5C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AA70
	mov r0, #0
	pop {r4, pc}
_0207AA70:
	mov r0, #0x36
	bl sub_02036540
	cmp r0, #0
	bne _0207AA7E
	mov r0, #0
	pop {r4, pc}
_0207AA7E:
	bl sub_02079FEC
	add r4, #0x20
	add r2, r0, #0
	mov r0, #0x1b
	add r1, r4, #0
	bl sub_0203597C
	pop {r4, pc}
	thumb_func_end sub_0207AA5C

	thumb_func_start sub_0207AA90
sub_0207AA90: ; 0x0207AA90
	ldr r0, _0207AA9C ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207AA9C: .word 0x00001020
	thumb_func_end sub_0207AA90

	thumb_func_start sub_0207AAA0
sub_0207AAA0: ; 0x0207AAA0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AAB4
	mov r0, #0
	pop {r4, pc}
_0207AAB4:
	ldr r2, [r4, #0]
	add r1, #0x10
	add r0, r4, #0
	ldr r1, [r2, r1]
	add r0, #0x20
	bl sub_0202CD3C
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207AAA0

	thumb_func_start sub_0207AAC8
sub_0207AAC8: ; 0x0207AAC8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AADC
	mov r0, #0
	pop {r4, pc}
_0207AADC:
	mov r0, #0x37
	bl sub_02036540
	cmp r0, #0
	bne _0207AAEA
	mov r0, #0
	pop {r4, pc}
_0207AAEA:
	add r4, #0x20
	mov r2, #0xfa
	mov r0, #0x1c
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0203597C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207AAC8

	thumb_func_start sub_0207AAFC
sub_0207AAFC: ; 0x0207AAFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AB10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207AB10:
	ldr r4, [r5, #0]
	mov r0, #0x80
	ldr r1, [r4, #0]
	tst r0, r1
	beq _0207AB22
	bl sub_0203608C
	lsl r0, r0, #3
	b _0207AB28
_0207AB22:
	bl sub_0203608C
	lsl r0, r0, #2
_0207AB28:
	add r0, r4, r0
	mov r1, #0x53
	add r0, #0xf8
	lsl r1, r1, #2
	add r2, r5, #0
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, #0x20
	bl sub_0207ADD4
	mov r4, #0
	mov r6, #5
	mov r7, #0x88
_0207AB42:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02018144
	str r0, [r5, #0x10]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0207AB42
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207AAFC

	thumb_func_start sub_0207AB58
sub_0207AB58: ; 0x0207AB58
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AB6C
	mov r0, #0
	pop {r4, pc}
_0207AB6C:
	mov r0, #0x38
	bl sub_02036540
	cmp r0, #0
	bne _0207AB7A
	mov r0, #0
	pop {r4, pc}
_0207AB7A:
	add r4, #0x20
	mov r2, #0xfa
	mov r0, #0x21
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0203597C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207AB58

	thumb_func_start sub_0207AB8C
sub_0207AB8C: ; 0x0207AB8C
	ldr r0, _0207AB98 ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207AB98: .word 0x00001020
	thumb_func_end sub_0207AB8C

	thumb_func_start sub_0207AB9C
sub_0207AB9C: ; 0x0207AB9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207ABB2
	mov r0, #0
	pop {r3, r4, r5, pc}
_0207ABB2:
	ldr r1, [r5, #0]
	mov r0, #0x34
	mul r0, r4
	add r3, r1, r0
	add r3, #0x28
	add r5, #0x20
	mov r2, #6
_0207ABC0:
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _0207ABC0
	ldr r0, [r3, #0]
	str r0, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207AB9C

	thumb_func_start sub_0207ABD0
sub_0207ABD0: ; 0x0207ABD0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207ABE8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207ABE8:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl sub_02036540
	cmp r0, #0
	bne _0207ABF8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207ABF8:
	cmp r4, #1
	bne _0207AC0A
	add r5, #0x20
	mov r0, #0x1d
	add r1, r5, #0
	mov r2, #0x34
	bl sub_0203597C
	pop {r4, r5, r6, pc}
_0207AC0A:
	add r5, #0x20
	mov r0, #0x1e
	add r1, r5, #0
	mov r2, #0x34
	bl sub_0203597C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207ABD0

	thumb_func_start sub_0207AC18
sub_0207AC18: ; 0x0207AC18
	ldr r0, _0207AC24 ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207AC24: .word 0x00001020
	thumb_func_end sub_0207AC18

	thumb_func_start sub_0207AC28
sub_0207AC28: ; 0x0207AC28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AC3E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0207AC3E:
	ldr r1, [r5, #0]
	lsl r0, r4, #2
	add r0, r1, r0
	add r5, #0x20
	ldr r0, [r0, #4]
	add r1, r5, #0
	bl sub_0207A21C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207AC28

	thumb_func_start sub_0207AC54
sub_0207AC54: ; 0x0207AC54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AC6C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207AC6C:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl sub_02036540
	cmp r0, #0
	bne _0207AC7C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207AC7C:
	cmp r4, #1
	bne _0207AC92
	bl sub_02079FEC
	add r5, #0x20
	add r2, r0, #0
	mov r0, #0x1f
	add r1, r5, #0
	bl sub_0203597C
	pop {r4, r5, r6, pc}
_0207AC92:
	bl sub_02079FEC
	add r5, #0x20
	add r2, r0, #0
	mov r0, #0x20
	add r1, r5, #0
	bl sub_0203597C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207AC54

	thumb_func_start sub_0207ACA4
sub_0207ACA4: ; 0x0207ACA4
	ldr r0, _0207ACB0 ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207ACB0: .word 0x00001020
	thumb_func_end sub_0207ACA4

	thumb_func_start sub_0207ACB4
sub_0207ACB4: ; 0x0207ACB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	bl ov16_0223E06C
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E080
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E08C
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	bl ov16_0223E098
	add r7, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0207ACE6
	cmp r0, #0xff
	b _0207AD30
_0207ACE6:
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	bne _0207AD3C
	ldr r0, [sp, #4]
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0207AD3C
	ldrh r0, [r7]
	cmp r1, r0
	bne _0207AD08
	mov r0, #0
	strh r0, [r4]
	strh r0, [r7]
_0207AD08:
	ldrh r1, [r4]
	add r0, r1, #2
	ldrb r2, [r6, r0]
	add r0, r1, #3
	ldrb r0, [r6, r0]
	add r1, r6, r1
	lsl r0, r0, #8
	orr r0, r2
	add r5, r0, #4
	mov r0, #0x17
	add r2, r5, #0
	bl sub_020359DC
	cmp r0, #1
	bne _0207AD3C
	ldrh r0, [r4]
	add sp, #8
	add r0, r0, r5
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0207AD30:
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [sp]
	bl sub_0200DA58
_0207AD3C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207ACB4

	thumb_func_start sub_0207AD40
sub_0207AD40: ; 0x0207AD40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	bl ov16_0223E074
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E0A4
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E0B0
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E0BC
	ldrb r1, [r5, #4]
	cmp r1, #0
	beq _0207AD6E
	cmp r1, #0xff
	b _0207ADA6
_0207AD6E:
	ldrh r1, [r4]
	ldrh r2, [r7]
	cmp r1, r2
	beq _0207ADB2
	ldrh r2, [r0]
	cmp r1, r2
	bne _0207AD82
	mov r1, #0
	strh r1, [r4]
	strh r1, [r0]
_0207AD82:
	ldrh r1, [r4]
	ldr r0, [r5, #0]
	add r1, r6, r1
	bl ov16_02266AE4
	cmp r0, #1
	bne _0207ADB2
	ldrh r0, [r4]
	add r1, r0, #2
	ldrb r2, [r6, r1]
	add r1, r0, #3
	ldrb r1, [r6, r1]
	lsl r1, r1, #8
	orr r1, r2
	add r1, r1, #4
	add r0, r0, r1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0207ADA6:
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [sp]
	bl sub_0200DA58
_0207ADB2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207AD40

	thumb_func_start sub_0207ADB4
sub_0207ADB4: ; 0x0207ADB4
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	mov r1, #0xff
	bl ov16_0223F338
	add r0, r4, #0
	mov r1, #0xff
	bl ov16_0223F344
	add r0, r4, #0
	mov r1, #1
	bl ov16_0223F350
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207ADB4

	thumb_func_start sub_0207ADD4
sub_0207ADD4: ; 0x0207ADD4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020021B0
	add r0, r6, #0
	bl sub_02025F20
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl sub_02025FD8
	strb r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_02025FCC
	strb r0, [r4, #0x15]
	add r0, r6, #0
	bl sub_02025F30
	strb r0, [r4, #0x16]
	mov r0, #0
	add r1, r4, #0
_0207AE0C:
	ldr r2, [r5, #0x10]
	str r2, [r1, #0x18]
	ldrb r3, [r5, #0x15]
	add r2, r4, r0
	add r2, #0x58
	strb r3, [r2]
	add r2, r4, r0
	ldrb r3, [r5, #0x14]
	add r2, #0x68
	add r1, r1, #4
	strb r3, [r2]
	add r2, r4, r0
	ldrb r3, [r5, #0x16]
	add r2, #0x78
	add r0, r0, #1
	add r5, #0x88
	strb r3, [r2]
	cmp r0, #0x10
	blt _0207AE0C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207ADD4

	thumb_func_start sub_0207AE34
sub_0207AE34: ; 0x0207AE34
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r5, r0
	beq _0207AE56
	mov r0, #0x53
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	mov r2, #1
	mov r3, #5
	bl sub_02027FEC
_0207AE56:
	ldr r0, _0207AE60 ; =0x00001020
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207AE60: .word 0x00001020
	thumb_func_end sub_0207AE34

	thumb_func_start sub_0207AE64
sub_0207AE64: ; 0x0207AE64
	mov r0, #0x88
	bx lr
	thumb_func_end sub_0207AE64

	.rodata


	.global Unk_020F099C
Unk_020F099C: ; 0x020F099C
	.incbin "incbin/arm9_rodata.bin", 0xBD5C, 0x90

