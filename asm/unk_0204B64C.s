	.include "macros/function.inc"
	.include "include/unk_0204B64C.inc"

	

	.text


	thumb_func_start sub_0204B64C
sub_0204B64C: ; 0x0204B64C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r1, r0, #0
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r1, [r1, #0]
	bl sub_02055F00
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B64C

	thumb_func_start sub_0204B680
sub_0204B680: ; 0x0204B680
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055F40
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B680

	thumb_func_start sub_0204B6B4
sub_0204B6B4: ; 0x0204B6B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055F64
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B6B4

	thumb_func_start sub_0204B6E8
sub_0204B6E8: ; 0x0204B6E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055F88
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B6E8

	thumb_func_start sub_0204B71C
sub_0204B71C: ; 0x0204B71C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055FA8
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B71C

	thumb_func_start sub_0204B750
sub_0204B750: ; 0x0204B750
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r2, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055E80
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204B750

	thumb_func_start sub_0204B784
sub_0204B784: ; 0x0204B784
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r2, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02055EAC
	add r0, r6, #0
	mov r1, #4
	bl sub_0202CF28
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B784

	thumb_func_start sub_0204B7CC
sub_0204B7CC: ; 0x0204B7CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	cmp r0, #0
	beq _0204B7DE
	cmp r0, #1
	beq _0204B7E8
	b _0204B7F2
_0204B7DE:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_020562AC
	b _0204B7F6
_0204B7E8:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_020562D8
	b _0204B7F6
_0204B7F2:
	bl sub_02022974
_0204B7F6:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204B7CC

	thumb_func_start sub_0204B7FC
sub_0204B7FC: ; 0x0204B7FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r1, r0, #0
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r1, [r1, #0]
	bl sub_02055E00
	add r0, r4, #0
	mov r1, #0
	bl sub_0202CFEC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B7FC