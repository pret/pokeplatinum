	.include "macros/function.inc"
	.include "include/unk_0203E724.inc"

	

	.text


	thumb_func_start sub_0203E724
sub_0203E724: ; 0x0203E724
	push {r3, r4}
	mov r3, #0
	strb r3, [r0, #1]
	str r3, [r0, #8]
	strb r3, [r0]
	str r3, [r0, #4]
	str r1, [r0, #0x5c]
	str r2, [r0, #0x60]
	add r1, r0, #0
	add r4, r3, #0
_0203E738:
	add r3, r3, #1
	str r4, [r1, #0x64]
	add r1, r1, #4
	cmp r3, #4
	blo _0203E738
	add r2, r0, #0
	mov r1, #0
_0203E746:
	add r4, r4, #1
	str r1, [r2, #0xc]
	add r2, r2, #4
	cmp r4, #0x14
	blo _0203E746
	str r1, [r0, #0x74]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203E724

	thumb_func_start sub_0203E758
sub_0203E758: ; 0x0203E758
	str r1, [r0, #8]
	mov r1, #1
	strb r1, [r0, #1]
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203E758

	thumb_func_start sub_0203E764
sub_0203E764: ; 0x0203E764
	mov r2, #2
	strb r2, [r0, #1]
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0203E764

	thumb_func_start sub_0203E76C
sub_0203E76C: ; 0x0203E76C
	mov r1, #0
	strb r1, [r0, #1]
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0203E76C

	thumb_func_start sub_0203E774
sub_0203E774: ; 0x0203E774
	str r1, [r0, #0x74]
	bx lr
	thumb_func_end sub_0203E774

	thumb_func_start sub_0203E778
sub_0203E778: ; 0x0203E778
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	bne _0203E786
	mov r0, #0
	pop {r4, pc}
_0203E786:
	beq _0203E792
	cmp r1, #1
	beq _0203E7AE
	cmp r1, #2
	beq _0203E796
	b _0203E7E0
_0203E792:
	mov r0, #0
	pop {r4, pc}
_0203E796:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0203E7AA
	blx r1
	cmp r0, #1
	bne _0203E7A6
	mov r0, #1
	strb r0, [r4, #1]
_0203E7A6:
	mov r0, #1
	pop {r4, pc}
_0203E7AA:
	mov r0, #1
	strb r0, [r4, #1]
_0203E7AE:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0203E7BA
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
_0203E7BA:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [r4, #0x60]
	cmp r1, r0
	blo _0203E7D2
	bl GF_AssertFail
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
_0203E7D2:
	ldr r2, [r4, #0x5c]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, r4, #0
	blx r1
	cmp r0, #1
	bne _0203E7AE
_0203E7E0:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0203E778

	thumb_func_start sub_0203E7E4
sub_0203E7E4: ; 0x0203E7E4
	ldrb r3, [r0]
	add r2, r3, #1
	cmp r2, #0x14
	blt _0203E7F0
	mov r0, #1
	bx lr
_0203E7F0:
	lsl r2, r3, #2
	add r2, r0, r2
	str r1, [r2, #0xc]
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #0
	bx lr
	thumb_func_end sub_0203E7E4

	thumb_func_start sub_0203E800
sub_0203E800: ; 0x0203E800
	ldrb r1, [r0]
	cmp r1, #0
	bne _0203E80A
	mov r0, #0
	bx lr
_0203E80A:
	sub r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0203E800

	thumb_func_start sub_0203E818
sub_0203E818: ; 0x0203E818
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0203E818

	thumb_func_start sub_0203E81C
sub_0203E81C: ; 0x0203E81C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #8]
	bl sub_0203E7E4
	str r4, [r5, #8]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203E81C

	thumb_func_start sub_0203E82C
sub_0203E82C: ; 0x0203E82C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E800
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0203E82C

	thumb_func_start sub_0203E838
sub_0203E838: ; 0x0203E838
	ldr r1, [r0, #8]
	add r3, r1, #1
	str r3, [r0, #8]
	ldrb r2, [r1]
	add r1, r3, #1
	str r1, [r0, #8]
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_0203E838

	thumb_func_start sub_0203E850
sub_0203E850: ; 0x0203E850
	push {r4, r5}
	ldr r1, [r0, #8]
	add r2, r1, #1
	str r2, [r0, #8]
	ldrb r3, [r1]
	add r1, r2, #1
	add r5, r1, #1
	str r1, [r0, #8]
	ldrb r2, [r2]
	add r4, r5, #1
	str r5, [r0, #8]
	ldrb r1, [r1]
	str r4, [r0, #8]
	ldrb r0, [r5]
	mov r4, #0
	add r0, r4, r0
	lsl r0, r0, #8
	add r0, r0, r1
	lsl r0, r0, #8
	add r0, r0, r2
	lsl r0, r0, #8
	add r0, r0, r3
	pop {r4, r5}
	bx lr
	thumb_func_end sub_0203E850