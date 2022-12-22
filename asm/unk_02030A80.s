	.include "macros/function.inc"
	.include "include/unk_02030A80.inc"

	

	.text


	thumb_func_start sub_02030A80
sub_02030A80: ; 0x02030A80
	push {r4, lr}
	mov r1, #0x80
	bl sub_02018144
	mov r1, #0
	mov r2, #0x80
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030A80

	thumb_func_start sub_02030A98
sub_02030A98: ; 0x02030A98
	ldr r3, _02030A9C ; =sub_020181C4
	bx r3
	; .align 2, 0
_02030A9C: .word sub_020181C4
	thumb_func_end sub_02030A98

	thumb_func_start sub_02030AA0
sub_02030AA0: ; 0x02030AA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02025E38
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202C878
	str r0, [sp]
	add r0, r6, #0
	bl sub_02025CCC
	add r0, r6, #0
	bl sub_02027848
	add r7, r0, #0
	add r0, sp, #0x10
	bl OS_GetOwnerInfo
	add r0, r7, #0
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02027914
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	add r0, r4, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020021B0
	add r0, r4, #0
	bl sub_02025F20
	str r0, [r5, #0x10]
	add r0, r4, #0
	bl sub_02025F30
	strb r0, [r5, #0x14]
	ldr r0, [sp, #0xc]
	mov r1, #0xfe
	strh r0, [r5, #0x1c]
	ldrb r0, [r5, #0x1b]
	bic r0, r1
	ldr r1, [sp, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x19
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x1b]
	mov r1, #1
	bic r0, r1
	ldr r1, [sp, #4]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #1
	and r1, r2
	orr r0, r1
	strb r0, [r5, #0x1b]
	ldr r0, [sp]
	bl sub_0202C8C0
	strb r0, [r5, #0x17]
	ldr r0, [sp]
	bl sub_0202C8C4
	strb r0, [r5, #0x18]
	ldr r0, _02030B90 ; =0x0000FFFF
	mov r1, #0
	add r2, r5, #0
_02030B42:
	add r1, r1, #1
	strh r0, [r2, #0x20]
	add r2, r2, #2
	cmp r1, #0x28
	blt _02030B42
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0x20
	bl sub_02027938
	add r0, sp, #4
	ldrb r0, [r0, #0xe]
	strb r0, [r5, #0x15]
	add r0, r4, #0
	bl sub_02025F30
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02025F8C
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0
	bl sub_0205CA14
	strb r0, [r5, #0x16]
	mov r0, #0xc
	strb r0, [r5, #0x19]
	mov r0, #2
	strb r0, [r5, #0x1a]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x7c
	bl sub_0202486C
	add r5, #0x7c
	strh r0, [r5]
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02030B90: .word 0x0000FFFF
	thumb_func_end sub_02030AA0

	thumb_func_start sub_02030B94
sub_02030B94: ; 0x02030B94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xf
	bl sub_02023790
	add r1, r5, #0
	mov r2, #0xf
	add r4, r0, #0
	bl sub_02023D8C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02030B94

	thumb_func_start sub_02030BAC
sub_02030BAC: ; 0x02030BAC
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	beq _02030BB8
	cmp r0, #1
	beq _02030BB8
	mov r0, #0
_02030BB8:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030BAC

	thumb_func_start sub_02030BBC
sub_02030BBC: ; 0x02030BBC
	ldrh r0, [r0, #0x1c]
	ldr r1, _02030BC8 ; =0x000001EF
	cmp r0, r1
	blo _02030BC6
	mov r0, #0
_02030BC6:
	bx lr
	; .align 2, 0
_02030BC8: .word 0x000001EF
	thumb_func_end sub_02030BBC

	thumb_func_start sub_02030BCC
sub_02030BCC: ; 0x02030BCC
	push {r3, lr}
	add r2, r0, #0
	ldrh r0, [r2, #0x1c]
	ldr r1, _02030BE8 ; =0x000001EF
	cmp r0, r1
	blo _02030BDC
	mov r0, #0
	pop {r3, pc}
_02030BDC:
	ldrb r1, [r2, #0x1b]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x19
	bl sub_020761E8
	pop {r3, pc}
	; .align 2, 0
_02030BE8: .word 0x000001EF
	thumb_func_end sub_02030BCC

	thumb_func_start sub_02030BEC
sub_02030BEC: ; 0x02030BEC
	ldrb r0, [r0, #0x1b]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bls _02030BF8
	mov r0, #1
_02030BF8:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030BEC

	thumb_func_start sub_02030BFC
sub_02030BFC: ; 0x02030BFC
	ldrb r0, [r0, #0x17]
	cmp r0, #0xea
	blo _02030C04
	mov r0, #0
_02030C04:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030BFC

	thumb_func_start sub_02030C08
sub_02030C08: ; 0x02030C08
	push {r4, lr}
	ldrb r1, [r0, #0x17]
	cmp r1, #0xea
	blo _02030C14
	mov r0, #0
	pop {r4, pc}
_02030C14:
	ldrb r4, [r0, #0x18]
	add r0, r1, #0
	bl sub_020996F4
	cmp r0, r4
	bhs _02030C22
	mov r4, #0
_02030C22:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030C08

	thumb_func_start sub_02030C28
sub_02030C28: ; 0x02030C28
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #0x1e]
	add r4, r1, #0
	mov r6, #0
	cmp r0, #0
	bne _02030CAA
	ldrh r0, [r5, #0x20]
	strh r0, [r4]
	ldrh r0, [r5, #0x22]
	strh r0, [r4, #2]
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #4]
	ldrh r0, [r5, #0x26]
	strh r0, [r4, #6]
	ldrh r0, [r4]
	cmp r0, #5
	blo _02030C52
	add r6, r6, #1
	b _02030C86
_02030C52:
	ldrh r0, [r4, #2]
	cmp r0, #0x13
	bls _02030C5C
	add r6, r6, #1
	b _02030C86
_02030C5C:
	ldrh r0, [r4, #4]
	ldr r1, _02030CC4 ; =0x0000FFFF
	cmp r0, r1
	beq _02030C70
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02014E4C
	cmp r0, #0
	beq _02030C84
_02030C70:
	ldrh r0, [r4, #6]
	ldr r1, _02030CC4 ; =0x0000FFFF
	cmp r0, r1
	beq _02030C86
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02014E4C
	cmp r0, #0
	bne _02030C86
_02030C84:
	add r6, r6, #1
_02030C86:
	cmp r6, #0
	ble _02030CA4
	add r0, r4, #0
	mov r1, #4
	bl sub_02014A9C
	mov r0, #0
	strh r0, [r4, #2]
	ldr r0, _02030CC8 ; =0x000001B9
	mov r1, #0x63
	bl sub_02014DFC
	strh r0, [r4, #4]
	ldr r0, _02030CC4 ; =0x0000FFFF
	strh r0, [r4, #6]
_02030CA4:
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02030CAA:
	mov r0, #0x28
	add r1, r2, #0
	bl sub_02023790
	add r5, #0x20
	add r1, r5, #0
	mov r2, #0x28
	add r4, r0, #0
	bl sub_02023D8C
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02030CC4: .word 0x0000FFFF
_02030CC8: .word 0x000001B9
	thumb_func_end sub_02030C28

	thumb_func_start sub_02030CCC
sub_02030CCC: ; 0x02030CCC
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	blo _02030CD6
	cmp r0, #0xc
	bls _02030CD8
_02030CD6:
	mov r0, #1
_02030CD8:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030CCC

	thumb_func_start sub_02030CDC
sub_02030CDC: ; 0x02030CDC
	ldrb r0, [r0, #0x16]
	cmp r0, #0xf
	bls _02030CE4
	mov r0, #0
_02030CE4:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030CDC