	.include "macros/function.inc"
	.include "include/unk_0204EDA4.inc"

	

	.text


	thumb_func_start sub_0204EDA4
sub_0204EDA4: ; 0x0204EDA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r5, #0
	add r1, #0x80
	lsl r2, r4, #0x18
	add r6, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	lsr r2, r2, #0x18
	bl sub_0203D6E4
	str r0, [r6, #0]
	ldr r1, _0204EDE8 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0204EDE8: .word sub_02041D60
	thumb_func_end sub_0204EDA4

	thumb_func_start sub_0204EDEC
sub_0204EDEC: ; 0x0204EDEC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0204EE18
	bl GF_AssertFail
_0204EE18:
	ldr r0, [r4, #0]
	bl sub_0203D750
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #4
	bne _0204EE2A
	mov r0, #0xff
	strh r0, [r5]
_0204EE2A:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204EDEC

	thumb_func_start sub_0204EE38
sub_0204EE38: ; 0x0204EE38
	mov r0, #0
	bx lr
	thumb_func_end sub_0204EE38

	thumb_func_start sub_0204EE3C
sub_0204EE3C: ; 0x0204EE3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x20
	bl sub_020997D8
	add r5, r0, #0
	bl sub_020998D8
	strh r0, [r4]
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204EE3C

	thumb_func_start sub_0204EE90
sub_0204EE90: ; 0x0204EE90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	add r7, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0x13
	str r2, [sp]
	add r6, r3, #0
	bl sub_0203F098
	str r0, [sp, #4]
	mov r0, #0x20
	bl sub_020997B8
	add r4, r0, #0
	ldr r0, [sp, #4]
	str r4, [r0, #0]
	ldr r0, [sp]
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	add r0, r5, #0
	strb r7, [r4, #0x15]
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_0203E284
	ldr r1, _0204EEF8 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	add r0, r6, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204EEF8: .word sub_02041D60
	thumb_func_end sub_0204EE90

	thumb_func_start sub_0204EEFC
sub_0204EEFC: ; 0x0204EEFC
	mov r0, #1
	bx lr
	thumb_func_end sub_0204EEFC

	thumb_func_start sub_0204EF00
sub_0204EF00: ; 0x0204EF00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #0x20
	bl sub_020997D8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_0204EE90
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204EF00

	thumb_func_start sub_0204EF40
sub_0204EF40: ; 0x0204EF40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	add r6, r0, #0
	mov r0, #0x20
	mov r1, #4
	bl sub_02018144
	add r3, r0, #0
	ldr r0, _0204EF9C ; =0x0000FFFF
	strh r4, [r3]
	strh r0, [r3, #2]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0204EE90
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204EF9C: .word 0x0000FFFF
	thumb_func_end sub_0204EF40

	thumb_func_start sub_0204EFA0
sub_0204EFA0: ; 0x0204EFA0
	mov r0, #0
	bx lr
	thumb_func_end sub_0204EFA0

	thumb_func_start sub_0204EFA4
sub_0204EFA4: ; 0x0204EFA4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	ldr r4, [r0, #0]
	cmp r4, #0
	bne _0204EFCE
	bl GF_AssertFail
_0204EFCE:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _0204EFD8
	mov r0, #0
	b _0204EFDA
_0204EFD8:
	mov r0, #0xff
_0204EFDA:
	strh r0, [r5]
	add r0, r4, #0
	bl sub_020997D0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204EFA4

	thumb_func_start sub_0204EFE8
sub_0204EFE8: ; 0x0204EFE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	ldr r4, [r0, #0]
	cmp r4, #0
	bne _0204F012
	bl GF_AssertFail
_0204F012:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _0204F01C
	mov r0, #0
	b _0204F01E
_0204F01C:
	mov r0, #0xff
_0204F01E:
	strh r0, [r5]
	add r0, r4, #0
	bl sub_020997D0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204EFE8