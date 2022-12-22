	.include "macros/function.inc"
	.include "include/unk_0204CFFC.inc"

	

	.text


	thumb_func_start sub_0204CFFC
sub_0204CFFC: ; 0x0204CFFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldr r0, [sp, #0x10]
	lsl r3, r7, #0x18
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [sp, #0xc]
	mov r0, #0xb
	lsr r3, r3, #0x18
	bl sub_020548B0
	strh r0, [r4]
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204CFFC

	thumb_func_start sub_0204D08C
sub_0204D08C: ; 0x0204D08C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldrh r1, [r6]
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D0E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	b _0204D0E2
_0204D0E0:
	mov r0, #0
_0204D0E2:
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204D08C

	thumb_func_start sub_0204D0E8
sub_0204D0E8: ; 0x0204D0E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldrh r1, [r6]
	bl sub_0207A0FC
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r7, #0
	bl sub_02025F20
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r5, r0
	bne _0204D14C
	mov r0, #0
	b _0204D14E
_0204D14C:
	mov r0, #1
_0204D14E:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204D0E8

	thumb_func_start sub_0204D154
sub_0204D154: ; 0x0204D154
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r6, r0, #0
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #6
	bhs _0204D1D4
	mov r0, #0xb
	bl sub_02073C74
	add r4, r0, #0
	bl sub_02073C2C
	mov r0, #1
	add r1, r5, #0
	bl sub_02017070
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	add r0, r4, #0
	mov r2, #1
	add r3, r7, #0
	bl ov5_021E6CF0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A048
	add r0, r4, #0
	bl sub_020181C4
_0204D1D4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D154

	thumb_func_start sub_0204D1DC
sub_0204D1DC: ; 0x0204D1DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
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
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02054988
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D1DC

	thumb_func_start sub_0204D234
sub_0204D234: ; 0x0204D234
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	mov r2, #0
	mov r1, #0x4c
	add r4, r0, #0
	strh r2, [r6]
	bl sub_02074470
	cmp r0, #0
	beq _0204D296
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204D296:
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D2CE
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D2CE
	add r0, r4, #0
	mov r1, #0x38
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D2CE
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	bne _0204D2D2
_0204D2CE:
	mov r0, #1
	strh r0, [r6]
_0204D2D2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D234

	thumb_func_start sub_0204D2D8
sub_0204D2D8: ; 0x0204D2D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	str r1, [sp, #4]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r1, _0204D390 ; =0x00000006
	ldr r0, [sp]
	ldr r6, _0204D394 ; =0x00000000
	strh r1, [r0]
	beq _0204D388
_0204D324:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D37E
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D378
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D378
	add r0, r4, #0
	mov r1, #0x38
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0204D378
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	bne _0204D37E
_0204D378:
	ldr r0, [sp]
	strh r6, [r0]
	b _0204D388
_0204D37E:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, r7
	blo _0204D324
_0204D388:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204D390: .word 0x00000006
_0204D394: .word 0x00000000
	thumb_func_end sub_0204D2D8

	thumb_func_start sub_0204D398
sub_0204D398: ; 0x0204D398
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
	bl sub_02054B94
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204D398

	thumb_func_start sub_0204D3DC
sub_0204D3DC: ; 0x0204D3DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r4, #0
	ldr r0, [sp, #4]
	add r5, r4, #0
	strh r4, [r0]
	ldr r0, [sp, #8]
	cmp r0, #0
	bls _0204D466
_0204D42A:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D45A
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	cmp r0, r1
	bhi _0204D45A
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0204D45A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #8]
	cmp r4, r0
	blo _0204D42A
_0204D466:
	ldr r0, [sp, #4]
	strh r5, [r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204D3DC

	thumb_func_start sub_0204D470
sub_0204D470: ; 0x0204D470
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r2, #0
	mov r1, #0x4c
	add r5, r0, #0
	strh r2, [r4]
	bl sub_02074470
	cmp r0, #0
	bne _0204D4C6
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
_0204D4C6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204D470

	thumb_func_start sub_0204D4CC
sub_0204D4CC: ; 0x0204D4CC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r1, r6, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203E838
	add r6, #0x80
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl sub_0203F150
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r6, r0
	blt _0204D512
	mov r0, #0
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_0204D512:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204D532
	mov r0, #0
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_0204D532:
	add r0, r5, #0
	bl sub_02075BCC
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204D4CC

	thumb_func_start sub_0204D540
sub_0204D540: ; 0x0204D540
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r1, _0204D5C4 ; =0x000000FF
	ldr r0, [sp, #4]
	ldr r5, _0204D5C8 ; =0x00000000
	strh r1, [r0]
	beq _0204D5BE
_0204D588:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D5B4
	add r0, r4, #0
	bl sub_02075BCC
	ldr r1, [sp]
	cmp r1, r0
	bne _0204D5B4
	ldr r0, [sp, #4]
	strh r5, [r0]
	b _0204D5BE
_0204D5B4:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0204D588
_0204D5BE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204D5C4: .word 0x000000FF
_0204D5C8: .word 0x00000000
	thumb_func_end sub_0204D540

	thumb_func_start sub_0204D5CC
sub_0204D5CC: ; 0x0204D5CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204D5CC

	thumb_func_start sub_0204D614
sub_0204D614: ; 0x0204D614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r7, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	ldr r1, [sp]
	bl sub_0207A0FC
	mov r1, #9
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	add r1, sp, #4
	strh r0, [r1]
	cmp r4, #0
	beq _0204D6C2
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	mov r2, #0xb
	bl sub_0207CFF0
	cmp r0, #0x35
	bne _0204D69A
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0204D69A:
	add r0, r5, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xb
	bne _0204D6AE
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0204D6AE:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	cmp r7, r0
	bne _0204D6C2
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0204D6C2:
	add r0, sp, #4
	ldrh r1, [r0]
	add r1, r1, r4
	strh r1, [r0]
	ldrh r1, [r0]
	cmp r1, #0xff
	bls _0204D6D4
	mov r1, #0xff
	strh r1, [r0]
_0204D6D4:
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #4
	bl sub_02074B30
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204D614

	thumb_func_start sub_0204D6E4
sub_0204D6E4: ; 0x0204D6E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #9
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	add r1, sp, #0
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r4, r0
	bls _0204D738
	mov r0, #0
	b _0204D73A
_0204D738:
	sub r0, r0, r4
_0204D73A:
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0204D6E4

	thumb_func_start sub_0204D74C
sub_0204D74C: ; 0x0204D74C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
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
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	add r4, #0x13
	add r1, r4, #0
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D74C

	thumb_func_start sub_0204D7AC
sub_0204D7AC: ; 0x0204D7AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0205E1B4
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204D7AC

	thumb_func_start sub_0204D7D4
sub_0204D7D4: ; 0x0204D7D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	strh r0, [r7]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D7D4

	thumb_func_start sub_0204D840
sub_0204D840: ; 0x0204D840
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204D840

	thumb_func_start sub_0204D86C
sub_0204D86C: ; 0x0204D86C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	mov r5, #0
	add r7, r0, #0
	add r4, r5, #0
	cmp r7, #0
	ble _0204D8BA
_0204D89A:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D8B4
	add r4, r4, #1
_0204D8B4:
	add r5, r5, #1
	cmp r5, r7
	blt _0204D89A
_0204D8BA:
	ldr r0, [sp]
	strh r4, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D86C

	thumb_func_start sub_0204D8C4
sub_0204D8C4: ; 0x0204D8C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	mov r5, #0
	add r4, r5, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _0204D940
_0204D908:
	ldr r0, [sp]
	cmp r5, r0
	beq _0204D938
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D938
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204D938
	add r4, r4, #1
_0204D938:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _0204D908
_0204D940:
	ldr r0, [sp, #4]
	strh r4, [r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D8C4

	thumb_func_start sub_0204D94C
sub_0204D94C: ; 0x0204D94C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_02024420
	str r0, [sp, #4]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	mov r5, #0
	add r4, r5, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _0204D9B6
_0204D984:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204D9AE
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204D9AE
	add r4, r4, #1
_0204D9AE:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _0204D984
_0204D9B6:
	ldr r0, [sp, #4]
	bl sub_02079BEC
	add r1, r4, r0
	ldr r0, [sp]
	strh r1, [r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204D94C

	thumb_func_start sub_0204D9C8
sub_0204D9C8: ; 0x0204D9C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	mov r5, #0
	add r7, r0, #0
	add r4, r5, #0
	cmp r7, #0
	ble _0204DA16
_0204D9F6:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DA10
	add r4, r4, #1
_0204DA10:
	add r5, r5, #1
	cmp r5, r7
	blt _0204D9F6
_0204DA16:
	ldr r0, [sp]
	strh r4, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204D9C8

	thumb_func_start sub_0204DA20
sub_0204DA20: ; 0x0204DA20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r4, _0204DA80 ; =0x00000000
	ldr r0, [sp]
	strh r4, [r0]
	beq _0204DA7C
	mov r7, #0x9a
_0204DA52:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	add r1, r7, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DA72
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
	b _0204DA7C
_0204DA72:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blo _0204DA52
_0204DA7C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204DA80: .word 0x00000000
	thumb_func_end sub_0204DA20

	thumb_func_start sub_0204DA84
sub_0204DA84: ; 0x0204DA84
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
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204DA84

	thumb_func_start sub_0204DACC
sub_0204DACC: ; 0x0204DACC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DB1A
	mov r0, #0
	strh r0, [r5]
	pop {r4, r5, r6, pc}
_0204DB1A:
	mov r4, #0
	add r0, r6, #0
	mov r1, #0x36
	add r2, r4, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DB30
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0204DB30:
	add r0, r6, #0
	mov r1, #0x37
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DB44
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0204DB44:
	add r0, r6, #0
	mov r1, #0x38
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DB58
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0204DB58:
	add r0, r6, #0
	mov r1, #0x39
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DB6C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0204DB6C:
	strh r4, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204DACC

	thumb_func_start sub_0204DB74
sub_0204DB74: ; 0x0204DB74
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	add r1, r4, #0
	bl sub_02077408
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204DB74

	thumb_func_start sub_0204DBB8
sub_0204DBB8: ; 0x0204DBB8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	add r4, #0x36
	add r1, r4, #0
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204DBB8

	thumb_func_start sub_0204DC18
sub_0204DC18: ; 0x0204DC18
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204DC18

	thumb_func_start sub_0204DC60
sub_0204DC60: ; 0x0204DC60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1]
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204DC60

	thumb_func_start sub_0204DC98
sub_0204DC98: ; 0x0204DC98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r5, _0204DD24 ; =0x00000000
	ldr r0, [sp, #4]
	strh r5, [r0]
	beq _0204DD1E
_0204DCDE:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204DD14
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp]
	cmp r0, r1
	bne _0204DD14
	ldr r0, [sp, #4]
	mov r1, #1
	strh r1, [r0]
	b _0204DD1E
_0204DD14:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0204DCDE
_0204DD1E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204DD24: .word 0x00000000
	thumb_func_end sub_0204DC98

	thumb_func_start sub_0204DD28
sub_0204DD28: ; 0x0204DD28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	str r1, [sp, #4]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	mov r3, #0
	add r7, r0, #0
	add r2, r3, #0
	add r1, sp, #0xc
_0204DD60:
	lsl r0, r3, #1
	strh r2, [r1, r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #6
	blo _0204DD60
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r5, #0
	strh r5, [r6]
	ldr r0, [sp]
	cmp r0, #0
	bls _0204DDFA
	add r4, sp, #0xc
_0204DD8C:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	str r0, [sp, #8]
	bl sub_02074470
	cmp r0, #0
	bne _0204DDEE
	ldr r0, [sp, #8]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r7, #0
	bne _0204DDE4
	lsl r1, r5, #1
	strh r0, [r4, r1]
	mov r0, #0
	cmp r5, #0
	bls _0204DDEE
	ldrh r1, [r4, r1]
_0204DDC6:
	lsl r2, r0, #1
	ldrh r2, [r4, r2]
	cmp r2, r1
	bne _0204DDD8
	mov r0, #1
	strh r0, [r6]
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204DDD8:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r5
	blo _0204DDC6
	b _0204DDEE
_0204DDE4:
	cmp r7, r0
	bne _0204DDEE
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
_0204DDEE:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp]
	cmp r5, r0
	blo _0204DD8C
_0204DDFA:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204DD28

	thumb_func_start sub_0204DE00
sub_0204DE00: ; 0x0204DE00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r7, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r1, _0204DE8C ; =0x000000FF
	ldr r0, [sp, #4]
	ldr r5, _0204DE90 ; =0x00000000
	strh r1, [r0]
	beq _0204DE86
_0204DE48:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204DE7C
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp]
	cmp r0, r1
	bne _0204DE7C
	ldr r0, [sp, #4]
	strh r5, [r0]
	b _0204DE86
_0204DE7C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0204DE48
_0204DE86:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204DE8C: .word 0x000000FF
_0204DE90: .word 0x00000000
	thumb_func_end sub_0204DE00

	thumb_func_start sub_0204DE94
sub_0204DE94: ; 0x0204DE94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
	add r7, r4, #0
_0204DED6:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl sub_020923C0
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DEF4
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0204DEF4:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x50
	blo _0204DED6
	ldr r0, [sp]
	strh r5, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204DE94

	thumb_func_start sub_0204DF08
sub_0204DF08: ; 0x0204DF08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	add r4, #0x80
	lsr r6, r0, #0x10
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #4]
_0204DF46:
	mov r5, #0
	cmp r6, #0
	bls _0204DF94
	ldr r0, [sp, #8]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0204DF52:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204DF8A
	add r0, r7, #0
	mov r1, #0
	bl sub_020923C0
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204DF8A
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	b _0204DF94
_0204DF8A:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r6
	blo _0204DF52
_0204DF94:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	cmp r0, #0x50
	blo _0204DF46
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strh r1, [r0]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204DF08

	thumb_func_start sub_0204DFB0
sub_0204DFB0: ; 0x0204DFB0
	push {r3, r4, r5, r6, r7, lr}
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
	add r7, r0, #0
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
	add r1, r7, #0
	bl sub_0207A0FC
	add r5, r0, #0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_020923C0
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204DFB0

	thumb_func_start sub_0204E01C
sub_0204E01C: ; 0x0204E01C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
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
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	add r6, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_020923C0
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #0
	bl sub_02074B30
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_020923C0
	add r5, #0x80
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0xc]
	bl sub_0206DDB8
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0204E01C

	thumb_func_start sub_0204E094
sub_0204E094: ; 0x0204E094
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	add r4, #0x80
	lsr r6, r0, #0x10
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
_0204E0D0:
	mov r5, #0
	cmp r6, #0
	bls _0204E110
_0204E0D6:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204E106
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204E106
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204E106:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r6
	blo _0204E0D6
_0204E110:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #0x50
	blo _0204E0D0
	ldr r1, [sp]
	mov r0, #0
	strh r0, [r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204E094

	thumb_func_start sub_0204E128
sub_0204E128: ; 0x0204E128
	mov r0, #0
	bx lr
	thumb_func_end sub_0204E128

	thumb_func_start sub_0204E12C
sub_0204E12C: ; 0x0204E12C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r1, _0204E1C8 ; =0x000000FF
	ldr r0, [sp, #4]
	ldr r5, _0204E1CC ; =0x00000000
	strh r1, [r0]
	beq _0204E1C0
_0204E174:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204E1B6
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp]
	cmp r0, r1
	bne _0204E1B6
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _0204E1B6
	ldr r0, [sp, #4]
	strh r5, [r0]
	b _0204E1C0
_0204E1B6:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r7
	blo _0204E174
_0204E1C0:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204E1C8: .word 0x000000FF
_0204E1CC: .word 0x00000000
	thumb_func_end sub_0204E12C

	thumb_func_start sub_0204E1D0
sub_0204E1D0: ; 0x0204E1D0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	add r6, r0, #0
	mov r4, #0
	ldr r0, [sp]
	cmp r6, #0
	strh r4, [r0]
	ble _0204E23A
_0204E214:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	cmp r7, r0
	bne _0204E234
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
	b _0204E23A
_0204E234:
	add r4, r4, #1
	cmp r4, r6
	blt _0204E214
_0204E23A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204E1D0