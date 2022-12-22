	.include "macros/function.inc"
	.include "include/unk_0206B9D8.inc"

	

	.text


	thumb_func_start sub_0206B9D8
sub_0206B9D8: ; 0x0206B9D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r0, r2, #0
	mov r1, #0x40
	bl sub_02018184
	ldr r6, [r7, #0xc]
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r6, #0
	bl sub_02025E44
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl sub_0207A268
	str r0, [r4, #0]
	add r0, r6, #0
	bl sub_0207D990
	str r0, [r4, #4]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	ldrb r2, [r5, #8]
	add r0, #0x20
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	mov r2, #0xf
	ldrb r3, [r5, #0xa]
	bic r0, r2
	mov r2, #0xf
	and r2, r3
	orr r2, r0
	add r0, r4, #0
	add r0, #0x32
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	mov r2, #0xf0
	bic r0, r2
	ldrb r2, [r5, #0xb]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x18
	orr r2, r0
	add r0, r4, #0
	add r0, #0x32
	strb r2, [r0]
	add r0, r4, #0
	ldrb r2, [r5, #0xc]
	add r0, #0x33
	strb r2, [r0]
	add r0, r4, #0
	ldrb r2, [r5, #0xd]
	add r0, #0x22
	strb r2, [r0]
_0206BA5A:
	add r0, r5, r1
	ldrb r2, [r0, #0xe]
	add r0, r4, r1
	add r0, #0x2c
	strb r2, [r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #6
	blo _0206BA5A
	ldr r1, _0206BA80 ; =0x020F1E88
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r5, #0x14]
	str r4, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206BA80: .word 0x020F1E88
	thumb_func_end sub_0206B9D8

	thumb_func_start sub_0206BA84
sub_0206BA84: ; 0x0206BA84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0206BA96
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206BA96:
	ldr r0, [r5, #0x14]
	ldr r4, [r0, #0]
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _0206BAB0
	cmp r0, #7
	bne _0206BAB8
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #4
	pop {r3, r4, r5, pc}
_0206BAB0:
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #4
	pop {r3, r4, r5, pc}
_0206BAB8:
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0xe
	mov r2, #6
	bl MI_CpuCopy8
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0x14]
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206BA84

	thumb_func_start sub_0206BAE0
sub_0206BAE0: ; 0x0206BAE0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	ldr r5, [r7, #0xc]
	add r0, r2, #0
	mov r1, #0x30
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0207A268
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0207A274
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0208C324
	str r0, [r4, #0x2c]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r6, #0xd]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	ldrb r0, [r6, #9]
	strb r0, [r4, #0x12]
	add r0, r5, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _0206BB64 ; =0x020EFB38
	add r0, r4, #0
	bl sub_0208D720
	add r0, r5, #0
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0206BB68 ; =0x020F410C
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r6, #0x14]
	str r4, [r0, #0]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206BB64: .word 0x020EFB38
_0206BB68: .word 0x020F410C
	thumb_func_end sub_0206BAE0

	thumb_func_start sub_0206BB6C
sub_0206BB6C: ; 0x0206BB6C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0206BB7E
	mov r0, #3
	pop {r4, pc}
_0206BB7E:
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #0xd]
	bl sub_020181C4
	ldr r1, [r4, #0x14]
	mov r0, #0
	str r0, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206BB6C

	thumb_func_start sub_0206BB94
sub_0206BB94: ; 0x0206BB94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #4
	bhi _0206BBF6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206BBB8: ; jump table
	.short _0206BBC2 - _0206BBB8 - 2 ; case 0
	.short _0206BBCE - _0206BBB8 - 2 ; case 1
	.short _0206BBD8 - _0206BBB8 - 2 ; case 2
	.short _0206BBE4 - _0206BBB8 - 2 ; case 3
	.short _0206BBEE - _0206BBB8 - 2 ; case 4
_0206BBC2:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0206B9D8
	str r0, [r4, #4]
	b _0206BBF6
_0206BBCE:
	add r1, r5, #0
	bl sub_0206BA84
	str r0, [r4, #4]
	b _0206BBF6
_0206BBD8:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0206BAE0
	str r0, [r4, #4]
	b _0206BBF6
_0206BBE4:
	add r1, r5, #0
	bl sub_0206BB6C
	str r0, [r4, #4]
	b _0206BBF6
_0206BBEE:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206BBF6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206BB94

	thumb_func_start sub_0206BBFC
sub_0206BBFC: ; 0x0206BBFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02050A60
	str r0, [sp]
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	strb r6, [r4, #8]
	strb r7, [r4, #9]
	add r0, sp, #8
	ldrb r1, [r0, #0x10]
	add r2, r4, #0
	strb r1, [r4, #0xa]
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #0xb]
	ldrb r1, [r0, #0x18]
	strb r1, [r4, #0xc]
	ldrb r0, [r0, #0x1c]
	ldr r1, _0206BC44 ; =sub_0206BB94
	strb r0, [r4, #0xd]
	ldr r0, [sp]
	str r5, [r4, #0x14]
	ldr r0, [r0, #0x10]
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206BC44: .word sub_0206BB94
	thumb_func_end sub_0206BBFC

	thumb_func_start sub_0206BC48
sub_0206BC48: ; 0x0206BC48
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _0206BC68
	ldrh r1, [r4, #0x12]
	ldrh r2, [r4, #0x14]
	add r0, r5, #0
	bl sub_0203E1AC
	str r0, [r4, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206BC68:
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206BC48

	thumb_func_start sub_0206BC70
sub_0206BC70: ; 0x0206BC70
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0206BC82
	mov r0, #1
	pop {r4, pc}
_0206BC82:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x20]
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206BC70

	thumb_func_start sub_0206BC94
sub_0206BC94: ; 0x0206BC94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0206BCB6
	cmp r1, #1
	beq _0206BCC0
	cmp r1, #2
	beq _0206BCCA
	b _0206BCE0
_0206BCB6:
	add r1, r5, #0
	bl sub_0206BC48
	str r0, [r4, #4]
	b _0206BCE0
_0206BCC0:
	add r1, r5, #0
	bl sub_0206BC70
	str r0, [r4, #4]
	b _0206BCE0
_0206BCCA:
	ldrh r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_0203F118
	ldr r1, [r4, #0]
	strh r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206BCE0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206BC94

	thumb_func_start sub_0206BCE4
sub_0206BCE4: ; 0x0206BCE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02050A60
	str r0, [sp]
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	strh r5, [r4, #0x12]
	strh r7, [r4, #0x14]
	ldr r0, [sp]
	strh r6, [r4, #0x10]
	ldr r0, [r0, #0x10]
	ldr r1, _0206BD18 ; =sub_0206BC94
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206BD18: .word sub_0206BC94
	thumb_func_end sub_0206BCE4

	thumb_func_start sub_0206BD1C
sub_0206BD1C: ; 0x0206BD1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r5, r0, #0
	bl sub_0203608C
	mov r1, #1
	sub r0, r1, r0
	bl sub_0203664C
	add r7, r0, #0
	bne _0206BD42
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206BD42:
	ldrh r1, [r5, #2]
	add r0, r6, #0
	bl sub_0203F118
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #0
	beq _0206BD5C
	cmp r0, #1
	beq _0206BD68
	cmp r0, #2
	beq _0206BD74
	b _0206BD7E
_0206BD5C:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0204AFC4
	strh r0, [r4]
	b _0206BD7E
_0206BD68:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0204B020
	strh r0, [r4]
	b _0206BD7E
_0206BD74:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0204B044
	strh r0, [r4]
_0206BD7E:
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206BD1C

	thumb_func_start sub_0206BD88
sub_0206BD88: ; 0x0206BD88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	strh r5, [r4]
	strh r6, [r4, #2]
	ldr r0, [r7, #0x10]
	ldr r1, _0206BDB8 ; =sub_0206BD1C
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206BDB8: .word sub_0206BD1C
	thumb_func_end sub_0206BD88

	thumb_func_start sub_0206BDBC
sub_0206BDBC: ; 0x0206BDBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	bl sub_0203068C
	mov r1, #0
	mov r2, #0xff
	bl sub_02030698
	str r0, [sp, #0x10]
	cmp r0, #0x14
	bhs _0206BDDA
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BDDA:
	ldr r0, [sp]
	bl sub_0202D750
	mov r1, #0xd
	mov r2, #0
	add r4, r0, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r7, r0, #0x18
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	cmp r7, #0
	beq _0206BE4C
	cmp r6, #0
	beq _0206BE4C
	cmp r5, #0
	beq _0206BE4C
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BE4C:
	ldr r0, [sp]
	bl sub_020298B0
	cmp r7, #0
	bne _0206BE86
	mov r1, #0x55
	bl sub_02028984
	cmp r0, #0
	beq _0206BE70
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #1
	bl sub_0202D414
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0206BE70:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0206BE80
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #1
	bl sub_0202D414
_0206BE80:
	add sp, #0x14
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_0206BE86:
	ldr r1, [sp, #0x10]
	cmp r1, #0x32
	bhs _0206BE92
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BE92:
	cmp r6, #0
	bne _0206BEC6
	mov r1, #0x56
	bl sub_02028984
	cmp r0, #0
	beq _0206BEB0
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl sub_0202D414
	add sp, #0x14
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0206BEB0:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0206BEC0
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_0202D414
_0206BEC0:
	add sp, #0x14
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_0206BEC6:
	cmp r1, #0x64
	blo _0206BECE
	cmp r5, #0
	beq _0206BED4
_0206BECE:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BED4:
	mov r1, #0x57
	bl sub_02028984
	cmp r0, #0
	beq _0206BEEE
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0202D414
	add sp, #0x14
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0206BEEE:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0206BEFE
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	bl sub_0202D414
_0206BEFE:
	mov r0, #4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206BDBC

	thumb_func_start sub_0206BF04
sub_0206BF04: ; 0x0206BF04
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_0203068C
	mov r1, #0
	mov r2, #0xff
	bl sub_02030698
	str r0, [sp, #8]
	cmp r0, #0x14
	bhs _0206BF22
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BF22:
	add r0, r4, #0
	bl sub_0202D750
	mov r1, #0xd
	mov r2, #0
	add r7, r0, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r6, r0, #0x18
	add r0, r7, #0
	add r2, r1, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r7, #0
	mov r1, #1
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r7, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #2
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r7, #0
	mov r1, #3
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r6, #0
	beq _0206BF92
	cmp r4, #0
	beq _0206BF92
	cmp r5, #0
	beq _0206BF92
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BF92:
	cmp r6, #0
	bne _0206BFA8
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0206BFA2
	add sp, #0xc
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_0206BFA2:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0206BFA8:
	ldr r0, [sp, #8]
	cmp r0, #0x32
	bhs _0206BFB4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BFB4:
	cmp r4, #0
	bne _0206BFCA
	ldr r0, [sp]
	cmp r0, #0
	beq _0206BFC4
	add sp, #0xc
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_0206BFC4:
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0206BFCA:
	cmp r0, #0x64
	bhs _0206BFD4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BFD4:
	cmp r5, #0
	beq _0206BFDE
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BFDE:
	cmp r1, #0
	beq _0206BFE8
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_0206BFE8:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206BF04

	thumb_func_start sub_0206BFF0
sub_0206BFF0: ; 0x0206BFF0
	ldr r1, _0206BFF8 ; =0x02E90EDD
	mul r1, r0
	add r0, r1, #1
	bx lr
	; .align 2, 0
_0206BFF8: .word 0x02E90EDD
	thumb_func_end sub_0206BFF0

	thumb_func_start sub_0206BFFC
sub_0206BFFC: ; 0x0206BFFC
	ldr r1, _0206C004 ; =0x5D588B65
	mul r1, r0
	add r0, r1, #1
	bx lr
	; .align 2, 0
_0206C004: .word 0x5D588B65
	thumb_func_end sub_0206BFFC

	thumb_func_start sub_0206C008
sub_0206C008: ; 0x0206C008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0202B4A0
	bl sub_0202B428
	bl sub_0206BFFC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202D750
	add r1, r4, #0
	bl sub_0202D470
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206C008

	thumb_func_start sub_0206C02C
sub_0206C02C: ; 0x0206C02C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_0202D750
	add r6, r0, #0
	bl sub_0202D474
	bl sub_0206BFFC
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202D470
	add r0, r4, #0
	bl sub_0206BFF0
	str r0, [sp]
	add r0, r5, #0
	bl sub_0202D740
	mov r1, #0xa
	add r2, sp, #0
	bl sub_0202D140
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206C02C

	thumb_func_start sub_0206C068
sub_0206C068: ; 0x0206C068
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	bl sub_0202D750
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202D740
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0202D474
	bl sub_0206BFF0
	mov r1, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0202D0BC
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0202D3B4
	mov r1, #0x18
	add r5, r0, #0
	mul r5, r1
	mov r4, #0
	cmp r5, #0
	ble _0206C0BA
	ldr r0, [sp]
_0206C0AE:
	bl sub_0206BFF0
	add r4, r4, #1
	str r0, [sp]
	cmp r4, r5
	blt _0206C0AE
_0206C0BA:
	add r0, r6, #0
	bl sub_0202D740
	mov r1, #0xa
	add r2, sp, #0
	bl sub_0202D140
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206C068

	thumb_func_start sub_0206C0D0
sub_0206C0D0: ; 0x0206C0D0
	ldr r0, [r0, #0x1c]
	ldr r1, [r0, #0]
	ldr r0, _0206C0E4 ; =0x000001ED
	cmp r1, r0
	bne _0206C0DE
	mov r0, #1
	bx lr
_0206C0DE:
	mov r0, #0
	bx lr
	nop
_0206C0E4: .word 0x000001ED
	thumb_func_end sub_0206C0D0

	.rodata


	.global Unk_020EFB38
Unk_020EFB38: ; 0x020EFB38
	.incbin "incbin/arm9_rodata.bin", 0xAEF8, 0x9

