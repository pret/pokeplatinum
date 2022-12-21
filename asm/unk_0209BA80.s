	.include "macros/function.inc"
	.include "include/unk_0209BA80.inc"

	

	.text


	thumb_func_start sub_0209BA80
sub_0209BA80: ; 0x0209BA80
	ldr r3, _0209BA8C ; =sub_02032798
	add r2, r0, #0
	ldr r0, _0209BA90 ; =0x020F8BF0
	mov r1, #0x34
	bx r3
	nop
_0209BA8C: .word sub_02032798
_0209BA90: .word 0x020F8BF0
	thumb_func_end sub_0209BA80

	thumb_func_start sub_0209BA94
sub_0209BA94: ; 0x0209BA94
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0209BB00 ; =0x000008D4
	add r5, r3, #0
	ldrb r1, [r5, r0]
	add r6, r2, #0
	mov r4, #0
	add r1, r1, #1
	strb r1, [r5, r0]
	bl sub_0203608C
	cmp r7, r0
	beq _0209BAFE
	ldrh r0, [r6]
	mov r1, #0xe0
	strb r0, [r5, #0x12]
	ldrh r0, [r6, #2]
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #4]
	strh r0, [r5, #0x18]
	ldrh r0, [r6, #6]
	strh r0, [r5, #0x14]
	ldrb r0, [r5, #0x10]
	bic r0, r1
	ldrb r1, [r5, #0x12]
	add r1, r1, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r5, #0x10]
	ldrh r2, [r5, #0x16]
	ldrh r1, [r5, #0x2e]
	cmp r1, r2
	beq _0209BAE2
	ldrh r0, [r5, #0x18]
	cmp r1, r0
	bne _0209BAE8
_0209BAE2:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0209BAE8:
	ldrh r1, [r5, #0x30]
	cmp r1, r2
	beq _0209BAF4
	ldrh r0, [r5, #0x18]
	cmp r1, r0
	bne _0209BAFA
_0209BAF4:
	add r0, r4, #2
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0209BAFA:
	ldr r0, _0209BB04 ; =0x000008D8
	strh r4, [r5, r0]
_0209BAFE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0209BB00: .word 0x000008D4
_0209BB04: .word 0x000008D8
	thumb_func_end sub_0209BA94

	thumb_func_start sub_0209BB08
sub_0209BB08: ; 0x0209BB08
	push {r4, lr}
	ldr r1, _0209BB30 ; =0x0000083E
	add r4, r0, #0
	add r1, r4, r1
	add r0, #0x3e
	mov r2, #0x1c
	bl sub_020C4DB0
	ldr r1, _0209BB30 ; =0x0000083E
	mov r0, #0x3f
	add r1, r4, r1
	mov r2, #0x1c
	bl sub_020359DC
	cmp r0, #1
	bne _0209BB2C
	mov r0, #1
	pop {r4, pc}
_0209BB2C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0209BB30: .word 0x0000083E
	thumb_func_end sub_0209BB08

	thumb_func_start sub_0209BB34
sub_0209BB34: ; 0x0209BB34
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0209BB64 ; =0x000008D4
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0209BB60
	bl sub_0203608C
	cmp r0, #0
	beq _0209BB60
	add r4, #0x3e
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x1c
	bl sub_020C4DB0
_0209BB60:
	pop {r4, r5, r6, pc}
	nop
_0209BB64: .word 0x000008D4
	thumb_func_end sub_0209BB34

	thumb_func_start sub_0209BB68
sub_0209BB68: ; 0x0209BB68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0209BBA0 ; =0x000008D8
	add r4, r3, #0
	mov r1, #0
	strh r1, [r4, r0]
	sub r1, r0, #4
	ldrb r1, [r4, r1]
	sub r0, r0, #4
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0209BB9C
	ldrb r0, [r4, #0x10]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _0209BB96
	ldrh r0, [r6]
	cmp r0, #0
	beq _0209BB9C
_0209BB96:
	ldr r0, _0209BBA0 ; =0x000008D8
	mov r1, #1
	strh r1, [r4, r0]
_0209BB9C:
	pop {r4, r5, r6, pc}
	nop
_0209BBA0: .word 0x000008D8
	thumb_func_end sub_0209BB68

	thumb_func_start sub_0209BBA4
sub_0209BBA4: ; 0x0209BBA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xa0
	ldrb r0, [r0]
	strh r0, [r5, #8]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	bl ov104_0223C264
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203068C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02030698
	strh r0, [r5, #0xa]
	add r5, #8
	mov r0, #0x39
	add r1, r5, #0
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0209BBE8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0209BBE8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0209BBA4

	thumb_func_start sub_0209BBEC
sub_0209BBEC: ; 0x0209BBEC
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x6f
	ldrb r0, [r0]
	add r5, r2, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x6f
	strb r1, [r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0209BC18
	ldrh r1, [r5]
	add r0, r4, #0
	add r0, #0x6e
	strb r1, [r0]
	ldrh r0, [r5, #2]
	add r4, #0x72
	strh r0, [r4]
_0209BC18:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209BBEC

	thumb_func_start sub_0209BC1C
sub_0209BC1C: ; 0x0209BC1C
	push {r3, lr}
	add r2, r0, #0
	strh r1, [r2, #8]
	add r2, #8
	add r1, r2, #0
	mov r0, #0x3a
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0209BC36
	mov r0, #1
	pop {r3, pc}
_0209BC36:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0209BC1C

	thumb_func_start sub_0209BC3C
sub_0209BC3C: ; 0x0209BC3C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x6f
	ldrb r0, [r0]
	add r6, r2, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x6f
	strb r1, [r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0209BC60
	ldrh r0, [r6]
	add r4, #0x59
	strb r0, [r4]
_0209BC60:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209BC3C

	thumb_func_start sub_0209BC64
sub_0209BC64: ; 0x0209BC64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0207A268
	add r1, r5, #0
	add r1, #0x6a
	strb r4, [r1]
	add r1, r5, #0
	add r1, #0x6b
	add r7, r0, #0
	strb r6, [r1]
	cmp r4, #0xff
	bne _0209BCA0
	add r0, r5, #0
	mov r1, #0
	add r0, #0x76
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x7e
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x78
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x80
	strh r1, [r0]
	b _0209BCEE
_0209BCA0:
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x76
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x7e
	strh r0, [r1]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x78
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x80
	strh r0, [r1]
_0209BCEE:
	add r0, r5, #0
	add r0, #0x76
	ldrh r0, [r0]
	mov r2, #0x28
	strh r0, [r5, #8]
	add r0, r5, #0
	add r0, #0x7e
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	add r0, r5, #0
	add r0, #0x80
	ldrh r0, [r0]
	strh r0, [r5, #0xe]
	add r5, #8
	mov r0, #0x3b
	add r1, r5, #0
	bl sub_020359DC
	cmp r0, #1
	bne _0209BD22
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209BD22:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209BC64

	thumb_func_start sub_0209BD28
sub_0209BD28: ; 0x0209BD28
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x6f
	ldrb r0, [r0]
	add r5, r2, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x6f
	strb r1, [r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0209BD64
	ldrh r1, [r5]
	add r0, r4, #0
	add r0, #0x86
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #2]
	add r0, #0x8e
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #4]
	add r0, #0x88
	add r4, #0x90
	strh r1, [r0]
	ldrh r0, [r5, #6]
	strh r0, [r4]
_0209BD64:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209BD28

	thumb_func_start sub_0209BD68
sub_0209BD68: ; 0x0209BD68
	push {r3, lr}
	add r2, r0, #0
	strh r1, [r2, #8]
	add r2, #8
	add r1, r2, #0
	mov r0, #0x3c
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0209BD82
	mov r0, #1
	pop {r3, pc}
_0209BD82:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0209BD68

	thumb_func_start sub_0209BD88
sub_0209BD88: ; 0x0209BD88
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x6f
	ldrb r0, [r0]
	add r6, r2, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x6f
	strb r1, [r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0209BDAC
	ldrh r0, [r6]
	add r4, #0x74
	strh r0, [r4]
_0209BDAC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209BD88

	thumb_func_start sub_0209BDB0
sub_0209BDB0: ; 0x0209BDB0
	push {r3, lr}
	add r2, r0, #0
	strh r1, [r2, #8]
	add r2, #8
	add r1, r2, #0
	mov r0, #0x3d
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0209BDCA
	mov r0, #1
	pop {r3, pc}
_0209BDCA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0209BDB0

	thumb_func_start sub_0209BDD0
sub_0209BDD0: ; 0x0209BDD0
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x6f
	ldrb r0, [r0]
	add r6, r2, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x6f
	strb r1, [r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0209BDF4
	ldrh r0, [r6]
	add r4, #0x71
	strb r0, [r4]
_0209BDF4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209BDD0

	.rodata


	.global Unk_020F8BF0
Unk_020F8BF0: ; 0x020F8BF0
	.incbin "incbin/arm9_rodata.bin", 0x13FB0, 0x270

