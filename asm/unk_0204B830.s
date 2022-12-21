	.include "macros/function.inc"
	.include "include/unk_0204B830.inc"

	

	.text


	thumb_func_start sub_0204B830
sub_0204B830: ; 0x0204B830
	str r1, [r0, #0]
	str r2, [r0, #4]
	str r3, [r0, #8]
	bx lr
	thumb_func_end sub_0204B830

	thumb_func_start sub_0204B838
sub_0204B838: ; 0x0204B838
	push {r3, lr}
	bl sub_0202DF18
	bl sub_0202DF40
	pop {r3, pc}
	thumb_func_end sub_0204B838

	thumb_func_start sub_0204B844
sub_0204B844: ; 0x0204B844
	push {r3, lr}
	bl sub_0202DF18
	bl sub_0202DF5C
	pop {r3, pc}
	thumb_func_end sub_0204B844

	thumb_func_start sub_0204B850
sub_0204B850: ; 0x0204B850
	push {r3, lr}
	bl sub_0202DF18
	bl sub_0202DF78
	pop {r3, pc}
	thumb_func_end sub_0204B850

	thumb_func_start sub_0204B85C
sub_0204B85C: ; 0x0204B85C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	bl sub_0203E838
	cmp r0, #8
	bls _0204B86C
	b _0204BA44
_0204B86C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204B878: ; jump table
	.short _0204B88A - _0204B878 - 2 ; case 0
	.short _0204B8B4 - _0204B878 - 2 ; case 1
	.short _0204B8E0 - _0204B878 - 2 ; case 2
	.short _0204B900 - _0204B878 - 2 ; case 3
	.short _0204B93C - _0204B878 - 2 ; case 4
	.short _0204B96E - _0204B878 - 2 ; case 5
	.short _0204B9DA - _0204B878 - 2 ; case 6
	.short _0204B898 - _0204B878 - 2 ; case 7
	.short _0204B8A6 - _0204B878 - 2 ; case 8
_0204B88A:
	add r4, #0x80
	ldr r0, [r4, #0]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl sub_0202DEE4
	b _0204BA44
_0204B898:
	add r4, #0x80
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl sub_0202DF04
	b _0204BA44
_0204B8A6:
	add r4, #0x80
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl sub_0202DF04
	b _0204BA44
_0204B8B4:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0204B838
	cmp r0, #0
	beq _0204B8DA
	mov r0, #1
	strh r0, [r5]
	b _0204BA44
_0204B8DA:
	mov r0, #0
	strh r0, [r5]
	b _0204BA44
_0204B8E0:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0204B838
	strh r0, [r5]
	b _0204BA44
_0204B900:
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B838
	sub r0, r0, #1
	lsl r5, r0, #4
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r7, _0204BA4C ; =0x020EBE94
	bl sub_0204B844
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r7, r5]
	blx r2
	strh r0, [r6]
	b _0204BA44
_0204B93C:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B838
	sub r0, r0, #1
	ldr r1, _0204BA4C ; =0x020EBE94
	lsl r0, r0, #4
	add r5, r1, r0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B844
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r2, [r5, #4]
	blx r2
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_0204B850
	b _0204BA44
_0204B96E:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B838
	sub r0, r0, #1
	ldr r1, _0204BA4C ; =0x020EBE94
	lsl r0, r0, #4
	add r5, r1, r0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r4, #0
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
	bl sub_0204B844
	add r4, #0x80
	add r3, r0, #0
	ldr r1, [r4, #0]
	ldr r2, [r6, #0]
	add r0, sp, #0x14
	bl sub_0204B830
	ldr r2, [sp]
	ldr r3, [r5, #8]
	add r0, sp, #0x14
	add r1, r7, #0
	blx r3
	b _0204BA44
_0204B9DA:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B838
	sub r0, r0, #1
	ldr r1, _0204BA4C ; =0x020EBE94
	lsl r0, r0, #4
	add r5, r1, r0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0204B844
	add r4, #0x80
	add r3, r0, #0
	ldr r1, [r4, #0]
	ldr r2, [r6, #0]
	add r0, sp, #8
	bl sub_0204B830
	ldr r2, [sp, #4]
	ldr r3, [r5, #0xc]
	add r0, sp, #8
	add r1, r7, #0
	blx r3
_0204BA44:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204BA4C: .word 0x020EBE94
	thumb_func_end sub_0204B85C

	thumb_func_start sub_0204BA50
sub_0204BA50: ; 0x0204BA50
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	cmp r0, #6
	bge _0204BA64
	mov r0, #1
	pop {r3, pc}
_0204BA64:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204BA50

	thumb_func_start sub_0204BA68
sub_0204BA68: ; 0x0204BA68
	push {r3, lr}
	sub sp, #8
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r1, [r1, #0xc]
	ldr r2, _0204BA84 ; =0x000001EA
	mov r0, #0x20
	bl sub_02054930
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_0204BA84: .word 0x000001EA
	thumb_func_end sub_0204BA68

	thumb_func_start sub_0204BA88
sub_0204BA88: ; 0x0204BA88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0204BAA8 ; =0x0000017B
	strh r0, [r1]
	mov r0, #0xd
	strh r0, [r2]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200B498
	pop {r4, pc}
	; .align 2, 0
_0204BAA8: .word 0x0000017B
	thumb_func_end sub_0204BA88

	thumb_func_start sub_0204BAAC
sub_0204BAAC: ; 0x0204BAAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r0, #0
	bl sub_0204B844
	str r0, [sp, #0x14]
	ldr r0, [r7, #0xc]
	bl sub_02025E38
	str r0, [sp, #0x10]
	ldr r0, [r7, #0xc]
	bl sub_020507E4
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #8]
	add r5, r0, #0
	add r4, r0, #4
	add r0, r4, #0
	mov r1, #0x98
	add r5, #0xf0
	bl sub_02074470
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	bl sub_020C3880
	bl sub_0201D30C
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x38]
	cmp r0, #0
	beq _0204BB30
	cmp r0, #1
	bne _0204BB2E
	add r0, r6, #0
	bl sub_02075E38
	cmp r0, #0
	beq _0204BB30
_0204BB18:
	ldr r0, [sp, #0x38]
	bl sub_0201D30C
	add r1, r0, #0
	add r0, r6, #0
	str r1, [sp, #0x38]
	bl sub_02075E38
	cmp r0, #0
	bne _0204BB18
	b _0204BB30
_0204BB2E:
	str r0, [sp, #0x38]
_0204BB30:
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	bl sub_020780C4
	add r0, r4, #0
	bl sub_02075D6C
	str r0, [sp, #0x34]
	add r0, r4, #0
	mov r1, #0x6f
	add r2, sp, #0x34
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x20]
	add r0, r4, #0
	mov r1, #0x49
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x24]
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x28]
	add r0, r4, #0
	mov r1, #0x46
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	add r1, r6, r0
	ldr r0, [sp, #0x28]
	add r1, r0, r1
	ldr r0, [sp, #0x24]
	add r1, r0, r1
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	str r0, [sp, #0x34]
	bne _0204BC22
	bl sub_0201D2E8
	add r6, r0, #0
	mov r0, #0x1f
	and r0, r6
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x46
	add r2, sp, #0x38
	bl sub_02074B30
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r6
	lsr r0, r0, #5
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x47
	add r2, sp, #0x38
	bl sub_02074B30
	mov r0, #0x1f
	lsl r0, r0, #0xa
	and r0, r6
	lsr r0, r0, #0xa
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x48
	add r2, sp, #0x38
	bl sub_02074B30
	bl sub_0201D2E8
	add r6, r0, #0
	mov r0, #0x1f
	and r0, r6
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x49
	add r2, sp, #0x38
	bl sub_02074B30
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r6
	lsr r0, r0, #5
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x4a
	add r2, sp, #0x38
	bl sub_02074B30
	mov r0, #0x1f
	lsl r0, r0, #0xa
	and r0, r6
	lsr r0, r0, #0xa
	str r0, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x4b
	add r2, sp, #0x38
	bl sub_02074B30
_0204BC22:
	ldr r0, [r7, #0xc]
	bl sub_0202D79C
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x2e
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BC42
	mov r0, #0x49
	bl sub_02092444
	ldrb r1, [r5]
	strb r1, [r6, r0]
_0204BC42:
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BC5A
	mov r0, #0x4a
	bl sub_02092444
	ldrb r1, [r5, #1]
	strb r1, [r6, r0]
_0204BC5A:
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BC72
	mov r0, #0x4b
	bl sub_02092444
	ldrb r1, [r5, #2]
	strb r1, [r6, r0]
_0204BC72:
	add r0, r4, #0
	mov r1, #0x31
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BC8A
	mov r0, #0x4c
	bl sub_02092444
	ldrb r1, [r5, #3]
	strb r1, [r6, r0]
_0204BC8A:
	add r0, r4, #0
	mov r1, #0x32
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BCA2
	mov r0, #0x4d
	bl sub_02092444
	ldrb r1, [r5, #4]
	strb r1, [r6, r0]
_0204BCA2:
	add r0, r4, #0
	mov r1, #0x33
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BCBA
	mov r0, #0x4e
	bl sub_02092444
	ldrb r1, [r5, #5]
	strb r1, [r6, r0]
_0204BCBA:
	add r0, r4, #0
	mov r1, #0x34
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BCD2
	mov r0, #0x4f
	bl sub_02092444
	ldrb r1, [r5, #6]
	strb r1, [r6, r0]
_0204BCD2:
	add r0, r4, #0
	mov r1, #0x67
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BCEA
	mov r0, #0x19
	bl sub_02092444
	ldrb r1, [r5, #7]
	strb r1, [r6, r0]
_0204BCEA:
	add r0, r4, #0
	mov r1, #0x68
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BD02
	mov r0, #0x1a
	bl sub_02092444
	ldrb r1, [r5, #8]
	strb r1, [r6, r0]
_0204BD02:
	add r0, r4, #0
	mov r1, #0x69
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0204BD1A
	mov r0, #0x1b
	bl sub_02092444
	ldrb r1, [r5, #9]
	strb r1, [r6, r0]
_0204BD1A:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0204BD72
	ldr r0, [sp, #0x10]
	mov r1, #0x20
	bl sub_02025F04
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_02025F20
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	bl sub_02025F30
	str r0, [sp, #0x2c]
	mov r0, #0x20
	bl sub_02073C74
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl sub_020775EC
	ldr r0, [sp, #8]
	mov r1, #0x91
	add r2, r5, #0
	bl sub_02074B30
	ldr r0, [sp, #8]
	mov r1, #7
	add r2, sp, #0x30
	bl sub_02074B30
	ldr r0, [sp, #8]
	mov r1, #0x9d
	add r2, sp, #0x2c
	bl sub_02074B30
	add r0, r5, #0
	ldr r4, [sp, #8]
	bl sub_020237BC
_0204BD72:
	ldr r1, [sp, #4]
	mov r0, #2
	bl sub_02017070
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	mov r2, #4
	bl sub_0209304C
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _0204BDE8 ; =0x000001ED
	cmp r0, r1
	bne _0204BDBA
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _0204BDBA
	ldr r0, [sp, #0xc]
	bl sub_0206B5F8
	cmp r0, #0
	bne _0204BDBA
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl sub_0206B608
_0204BDBA:
	add r0, r4, #0
	bl sub_0207418C
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A048
	cmp r0, #0
	beq _0204BDD8
	ldr r0, [r7, #0xc]
	add r1, r4, #0
	bl sub_0202F180
_0204BDD8:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0204BDE2
	bl sub_020181C4
_0204BDE2:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0204BDE8: .word 0x000001ED
	thumb_func_end sub_0204BAAC

	thumb_func_start sub_0204BDEC
sub_0204BDEC: ; 0x0204BDEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	add r7, r0, #0
	ldr r0, _0204BE28 ; =0x0000017B
	strh r0, [r4]
	mov r0, #7
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	add r0, r7, #4
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200B578
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204BE28: .word 0x0000017B
	thumb_func_end sub_0204BDEC

	thumb_func_start sub_0204BE2C
sub_0204BE2C: ; 0x0204BE2C
	ldr r0, _0204BE38 ; =0x0000017B
	strh r0, [r1]
	mov r0, #4
	strh r0, [r2]
	bx lr
	nop
_0204BE38: .word 0x0000017B
	thumb_func_end sub_0204BE2C

	thumb_func_start sub_0204BE3C
sub_0204BE3C: ; 0x0204BE3C
	ldr r3, _0204BE40 ; =sub_0204BAAC
	bx r3
	; .align 2, 0
_0204BE40: .word sub_0204BAAC
	thumb_func_end sub_0204BE3C

	thumb_func_start sub_0204BE44
sub_0204BE44: ; 0x0204BE44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	add r7, r0, #0
	ldr r0, _0204BE80 ; =0x0000017B
	strh r0, [r4]
	mov r0, #8
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	add r0, r7, #4
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200B538
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204BE80: .word 0x0000017B
	thumb_func_end sub_0204BE44

	thumb_func_start sub_0204BE84
sub_0204BE84: ; 0x0204BE84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	add r1, r0, #0
	ldr r1, [r1, #0]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D55C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204BE84

	thumb_func_start sub_0204BEAC
sub_0204BEAC: ; 0x0204BEAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	add r1, r0, #0
	ldr r1, [r1, #0]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D570
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204BEAC

	thumb_func_start sub_0204BED4
sub_0204BED4: ; 0x0204BED4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, _0204BF10 ; =0x0000017B
	strh r0, [r4]
	mov r0, #9
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	mov r1, #1
	add r2, r7, #0
	bl sub_0200B70C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204BF10: .word 0x0000017B
	thumb_func_end sub_0204BED4

	thumb_func_start sub_0204BF14
sub_0204BF14: ; 0x0204BF14
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	bl sub_0207D990
	ldr r0, [r5, #0]
	bl sub_0204B844
	ldr r0, [r0, #0]
	mov r1, #0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, _0204BF44 ; =0x0000017B
	strh r0, [r4]
	mov r0, #5
	strh r0, [r6]
	ldr r0, [r5, #4]
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204BF44: .word 0x0000017B
	thumb_func_end sub_0204BF14

	thumb_func_start sub_0204BF48
sub_0204BF48: ; 0x0204BF48
	mov r0, #1
	bx lr
	thumb_func_end sub_0204BF48

	thumb_func_start sub_0204BF4C
sub_0204BF4C: ; 0x0204BF4C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204B844
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202613C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204BF4C

	thumb_func_start sub_0204BF60
sub_0204BF60: ; 0x0204BF60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	add r7, r0, #0
	ldr r0, _0204BFB4 ; =0x0000017B
	strh r0, [r4]
	mov r0, #0xa
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	add r0, r7, #0
	mov r1, #0x20
	bl sub_0202605C
	add r4, r0, #0
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204BFB4: .word 0x0000017B
	thumb_func_end sub_0204BF60

	thumb_func_start sub_0204BFB8
sub_0204BFB8: ; 0x0204BFB8
	ldr r0, _0204BFC4 ; =0x0000017B
	strh r0, [r1]
	mov r0, #6
	strh r0, [r2]
	bx lr
	nop
_0204BFC4: .word 0x0000017B
	thumb_func_end sub_0204BFB8

	thumb_func_start sub_0204BFC8
sub_0204BFC8: ; 0x0204BFC8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	bl sub_020289A0
	cmp r0, #0xc8
	bge _0204BFDC
	mov r0, #1
	pop {r3, pc}
_0204BFDC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204BFC8

	thumb_func_start sub_0204BFE0
sub_0204BFE0: ; 0x0204BFE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0204B844
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020298B0
	ldr r1, [r4, #0]
	bl sub_0202895C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204BFE0

	thumb_func_start sub_0204BFF8
sub_0204BFF8: ; 0x0204BFF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r7, [r0, #0]
	ldr r0, _0204C030 ; =0x0000017B
	strh r0, [r4]
	mov r0, #0xb
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	mov r1, #1
	add r2, r7, #0
	bl sub_0200BC80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204C030: .word 0x0000017B
	thumb_func_end sub_0204BFF8

	thumb_func_start sub_0204C034
sub_0204C034: ; 0x0204C034
	ldr r0, _0204C040 ; =0x0000017B
	strh r0, [r1]
	mov r0, #6
	strh r0, [r2]
	bx lr
	nop
_0204C040: .word 0x0000017B
	thumb_func_end sub_0204C034

	thumb_func_start sub_0204C044
sub_0204C044: ; 0x0204C044
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0204B844
	ldr r4, [r0, #4]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0204C05E
	cmp r0, #2
	beq _0204C06E
	cmp r0, #3
	beq _0204C072
	b _0204C076
_0204C05E:
	ldr r0, [r5, #0xc]
	bl sub_0202CA1C
	add r1, r4, #0
	mov r2, #1
	bl sub_0202CB70
	pop {r3, r4, r5, pc}
_0204C06E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204C072:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204C076:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C044

	thumb_func_start sub_0204C07C
sub_0204C07C: ; 0x0204C07C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0204B844
	ldr r4, [r0, #4]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0204C096
	cmp r0, #2
	beq _0204C0A6
	cmp r0, #3
	beq _0204C0BA
	pop {r3, r4, r5, pc}
_0204C096:
	ldr r0, [r5, #0xc]
	bl sub_0202CA1C
	add r1, r4, #0
	mov r2, #1
	bl sub_0202CAE0
	pop {r3, r4, r5, pc}
_0204C0A6:
	ldr r0, [r5, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	mov r2, #1
	bl sub_02029E2C
	pop {r3, r4, r5, pc}
_0204C0BA:
	ldr r0, [r5, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	bl sub_02029EFC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C07C

	thumb_func_start sub_0204C0CC
sub_0204C0CC: ; 0x0204C0CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r2, [r0, #4]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0204C0EC
	cmp r0, #2
	beq _0204C0F6
	cmp r0, #3
	beq _0204C100
	b _0204C108
_0204C0EC:
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200BE64
	b _0204C108
_0204C0F6:
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200BFAC
	b _0204C108
_0204C100:
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200C01C
_0204C108:
	ldr r0, _0204C124 ; =0x0000017B
	strh r0, [r4]
	mov r0, #0xc
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204C124: .word 0x0000017B
	thumb_func_end sub_0204C0CC

	thumb_func_start sub_0204C128
sub_0204C128: ; 0x0204C128
	ldr r0, _0204C134 ; =0x0000017B
	strh r0, [r1]
	mov r0, #6
	strh r0, [r2]
	bx lr
	nop
_0204C134: .word 0x0000017B
	thumb_func_end sub_0204C128

	thumb_func_start sub_0204C138
sub_0204C138: ; 0x0204C138
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	ldr r1, _0204C158 ; =0x000001C6
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D55C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C158: .word 0x000001C6
	thumb_func_end sub_0204C138

	thumb_func_start sub_0204C15C
sub_0204C15C: ; 0x0204C15C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0204B844
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	ldr r1, _0204C18C ; =0x000001C6
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D570
	add r0, r4, #0
	mov r1, #0
	bl sub_0206B144
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C18C: .word 0x000001C6
	thumb_func_end sub_0204C15C

	thumb_func_start sub_0204C190
sub_0204C190: ; 0x0204C190
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, _0204C1C4 ; =0x0000017B
	strh r0, [r4]
	mov r0, #0xe
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	ldr r2, _0204C1C8 ; =0x000001C6
	mov r1, #1
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204C1C4: .word 0x0000017B
_0204C1C8: .word 0x000001C6
	thumb_func_end sub_0204C190

	thumb_func_start sub_0204C1CC
sub_0204C1CC: ; 0x0204C1CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	bl sub_0207D990
	ldr r0, [r5, #0]
	bl sub_0204B844
	ldr r2, _0204C1F8 ; =0x0000017B
	mov r0, #5
	strh r2, [r4]
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, #0x4b
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204C1F8: .word 0x0000017B
	thumb_func_end sub_0204C1CC

	thumb_func_start sub_0204C1FC
sub_0204C1FC: ; 0x0204C1FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	mov r1, #0x71
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D55C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C1FC

	thumb_func_start sub_0204C220
sub_0204C220: ; 0x0204C220
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0204B844
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	mov r1, #0x71
	add r4, r0, #0
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D570
	add r0, r4, #0
	mov r1, #1
	bl sub_0206B144
	add r0, r4, #0
	bl sub_0206B618
	cmp r0, #0
	bne _0204C262
	add r0, r4, #0
	mov r1, #1
	bl sub_0206B628
_0204C262:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C220

	thumb_func_start sub_0204C264
sub_0204C264: ; 0x0204C264
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, _0204C29C ; =0x0000017B
	strh r0, [r4]
	mov r0, #0xf
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	mov r2, #0x71
	ldr r0, [r5, #4]
	mov r1, #1
	lsl r2, r2, #2
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204C29C: .word 0x0000017B
	thumb_func_end sub_0204C264

	thumb_func_start sub_0204C2A0
sub_0204C2A0: ; 0x0204C2A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	bl sub_0207D990
	ldr r0, [r5, #0]
	bl sub_0204B844
	ldr r2, _0204C2CC ; =0x0000017B
	mov r0, #5
	strh r2, [r4]
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, #0x49
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204C2CC: .word 0x0000017B
	thumb_func_end sub_0204C2A0

	thumb_func_start sub_0204C2D0
sub_0204C2D0: ; 0x0204C2D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	ldr r1, _0204C2F0 ; =0x000001D3
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D55C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C2F0: .word 0x000001D3
	thumb_func_end sub_0204C2D0

	thumb_func_start sub_0204C2F4
sub_0204C2F4: ; 0x0204C2F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0204B844
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	ldr r1, _0204C324 ; =0x000001D3
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D570
	add r0, r4, #0
	mov r1, #3
	bl sub_0206B144
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C324: .word 0x000001D3
	thumb_func_end sub_0204C2F4

	thumb_func_start sub_0204C328
sub_0204C328: ; 0x0204C328
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, _0204C35C ; =0x0000017B
	strh r0, [r4]
	mov r0, #0x11
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	ldr r2, _0204C360 ; =0x000001D3
	mov r1, #1
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204C35C: .word 0x0000017B
_0204C360: .word 0x000001D3
	thumb_func_end sub_0204C328

	thumb_func_start sub_0204C364
sub_0204C364: ; 0x0204C364
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	bl sub_0207D990
	ldr r0, [r5, #0]
	bl sub_0204B844
	ldr r2, _0204C390 ; =0x0000017B
	mov r0, #5
	strh r2, [r4]
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, #0x58
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204C390: .word 0x0000017B
	thumb_func_end sub_0204C364

	thumb_func_start sub_0204C394
sub_0204C394: ; 0x0204C394
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	ldr r1, _0204C3B4 ; =0x000001C7
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D55C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C3B4: .word 0x000001C7
	thumb_func_end sub_0204C394

	thumb_func_start sub_0204C3B8
sub_0204C3B8: ; 0x0204C3B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0204B844
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	ldr r1, _0204C3E8 ; =0x000001C7
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D570
	add r0, r4, #0
	mov r1, #2
	bl sub_0206B144
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204C3E8: .word 0x000001C7
	thumb_func_end sub_0204C3B8

	thumb_func_start sub_0204C3EC
sub_0204C3EC: ; 0x0204C3EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, _0204C420 ; =0x0000017B
	strh r0, [r4]
	mov r0, #0x10
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	ldr r2, _0204C424 ; =0x000001C7
	mov r1, #1
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204C420: .word 0x0000017B
_0204C424: .word 0x000001C7
	thumb_func_end sub_0204C3EC

	thumb_func_start sub_0204C428
sub_0204C428: ; 0x0204C428
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	bl sub_0207D990
	ldr r0, [r5, #0]
	bl sub_0204B844
	ldr r2, _0204C454 ; =0x0000017B
	mov r0, #5
	strh r2, [r4]
	strh r0, [r6]
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, #0x4c
	bl sub_0200B70C
	pop {r4, r5, r6, pc}
	nop
_0204C454: .word 0x0000017B
	thumb_func_end sub_0204C428

	thumb_func_start sub_0204C458
sub_0204C458: ; 0x0204C458
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	add r0, r4, #0
	bl sub_020567E0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C458

	thumb_func_start sub_0204C474
sub_0204C474: ; 0x0204C474
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204B844
	add r1, r0, #0
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl sub_020567F0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C474

	thumb_func_start sub_0204C494
sub_0204C494: ; 0x0204C494
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	add r7, r0, #0
	ldr r0, _0204C4CC ; =0x0000017B
	strh r0, [r4]
	mov r0, #0x13
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #4]
	ldr r2, [r7, #0]
	mov r1, #1
	bl sub_0200B928
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204C4CC: .word 0x0000017B
	thumb_func_end sub_0204C494

	thumb_func_start sub_0204C4D0
sub_0204C4D0: ; 0x0204C4D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0204B844
	ldr r0, _0204C4FC ; =0x0000017B
	strh r0, [r4]
	mov r0, #0x14
	strh r0, [r6]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200B498
	pop {r4, r5, r6, pc}
	nop
_0204C4FC: .word 0x0000017B
	thumb_func_end sub_0204C4D0

	.rodata


	.global Unk_020EBE94
Unk_020EBE94: ; 0x020EBE94
	.incbin "incbin/arm9_rodata.bin", 0x7254, 0xD0

