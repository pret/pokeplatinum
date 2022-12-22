	.include "macros/function.inc"
	.include "include/unk_02009714.inc"

	

	.text


	thumb_func_start sub_02009714
sub_02009714: ; 0x02009714
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	add r0, r2, #0
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_0202298C
	str r0, [r4, #0]
	mov r0, #0xc
	add r7, r5, #0
	mul r7, r0
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02018144
	mov r1, #0
	add r2, r7, #0
	str r0, [r4, #4]
	bl memset
	str r5, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009714

	thumb_func_start sub_02009754
sub_02009754: ; 0x02009754
	push {r4, lr}
	add r4, r0, #0
	bne _0200975E
	bl sub_02022974
_0200975E:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02009768
	bl sub_02022974
_02009768:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02009772
	bl sub_02022974
_02009772:
	add r0, r4, #0
	bl sub_02009D9C
	ldr r0, [r4, #0]
	bl sub_020229D8
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02009754

	thumb_func_start sub_02009794
sub_02009794: ; 0x02009794
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _020097A8
	bl sub_02022974
_020097A8:
	cmp r4, #0
	bne _020097B0
	bl sub_02022974
_020097B0:
	ldr r0, [r4, #4]
	cmp r0, r6
	bgt _020097BA
	bl sub_02022974
_020097BA:
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #8]
	cmp r1, r0
	beq _020097C6
	bl sub_02022974
_020097C6:
	add r0, r5, #0
	bl sub_0200A0A8
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _020097D6
	bl sub_02022974
_020097D6:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _02009812
	ldr r2, [r4, #0]
	mov r0, #0x4c
	add r1, r6, #0
	mul r1, r0
	add r6, r2, r1
	ldr r1, [r2, r1]
	add r0, r5, #0
	bl sub_02009D34
	cmp r0, #1
	beq _020097F6
	bl sub_02022974
_020097F6:
	ldr r0, [r6, #0x44]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [r6, #0x48]
	add r2, r6, #4
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r3, [r6, #0]
	add r0, r5, #0
	bl sub_0200A224
	b _02009850
_02009812:
	mov r0, #0x18
	ldr r1, [r4, #0]
	mul r0, r6
	add r6, r1, r0
	ldr r1, [r6, #0xc]
	add r0, r5, #0
	bl sub_02009D34
	cmp r0, #1
	beq _0200982A
	bl sub_02022974
_0200982A:
	ldr r0, [r6, #8]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [r6, #0xc]
	str r0, [sp, #4]
	ldr r0, [r6, #0x10]
	str r0, [sp, #8]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r2, [r6, #0]
	ldr r3, [r6, #4]
	add r0, r5, #0
	bl sub_0200A250
_02009850:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009794

	thumb_func_start sub_0200985C
sub_0200985C: ; 0x0200985C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009870
	bl sub_02022974
_02009870:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0200987A
	bl sub_02022974
_0200987A:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009888
	bl sub_02022974
_02009888:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200A250
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200985C

	thumb_func_start sub_020098B8
sub_020098B8: ; 0x020098B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _020098CC
	bl sub_02022974
_020098CC:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _020098D6
	bl sub_02022974
_020098D6:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _020098E4
	bl sub_02022974
_020098E4:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200A250
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020098B8

	thumb_func_start sub_02009918
sub_02009918: ; 0x02009918
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _0200992C
	bl sub_02022974
_0200992C:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _0200993A
	bl sub_02022974
_0200993A:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200A250
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009918

	thumb_func_start sub_02009968
sub_02009968: ; 0x02009968
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0
	bne _0200997C
	bl sub_02022974
_0200997C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02009986
	bl sub_02022974
_02009986:
	cmp r4, #0
	bne _0200998E
	bl sub_02022974
_0200998E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02009998
	bl sub_02022974
_02009998:
	add r0, r4, #0
	bl sub_02009E08
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02009EBC
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02009D68
	ldr r0, [sp, #0x38]
	mov r1, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A250
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02009968

	thumb_func_start sub_020099D4
sub_020099D4: ; 0x020099D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0
	bne _020099E8
	bl sub_02022974
_020099E8:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _020099F2
	bl sub_02022974
_020099F2:
	cmp r4, #0
	bne _020099FA
	bl sub_02022974
_020099FA:
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _02009A04
	bl sub_02022974
_02009A04:
	add r0, r4, #0
	bl sub_02009E08
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02009EBC
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02009EE8
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02009D68
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x24]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A250
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020099D4

	thumb_func_start sub_02009A4C
sub_02009A4C: ; 0x02009A4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009A60
	bl sub_02022974
_02009A60:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02009A6A
	bl sub_02022974
_02009A6A:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009A78
	bl sub_02022974
_02009A78:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200A288
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02009A4C

	thumb_func_start sub_02009AA8
sub_02009AA8: ; 0x02009AA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009ABC
	bl sub_02022974
_02009ABC:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02009AC6
	bl sub_02022974
_02009AC6:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009AD4
	bl sub_02022974
_02009AD4:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200A288
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009AA8

	thumb_func_start sub_02009B04
sub_02009B04: ; 0x02009B04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009B18
	bl sub_02022974
_02009B18:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _02009B22
	bl sub_02022974
_02009B22:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009B30
	bl sub_02022974
_02009B30:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200A288
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02009B04

	thumb_func_start sub_02009B64
sub_02009B64: ; 0x02009B64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009B78
	bl sub_02022974
_02009B78:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _02009B82
	bl sub_02022974
_02009B82:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009B90
	bl sub_02022974
_02009B90:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200A288
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02009B64

	thumb_func_start sub_02009BC4
sub_02009BC4: ; 0x02009BC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009BD8
	bl sub_02022974
_02009BD8:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009BE6
	bl sub_02022974
_02009BE6:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200A288
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009BC4

	thumb_func_start sub_02009C14
sub_02009C14: ; 0x02009C14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0
	bne _02009C28
	bl sub_02022974
_02009C28:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02009C32
	bl sub_02022974
_02009C32:
	cmp r4, #0
	bne _02009C3A
	bl sub_02022974
_02009C3A:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02009C44
	bl sub_02022974
_02009C44:
	add r0, r4, #0
	bl sub_02009E08
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02009EBC
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02009D68
	ldr r0, [sp, #0x38]
	mov r1, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A288
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02009C14

	thumb_func_start sub_02009C80
sub_02009C80: ; 0x02009C80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02009C94
	bl sub_02022974
_02009C94:
	cmp r4, #0
	bne _02009C9C
	bl sub_02022974
_02009C9C:
	str r6, [sp]
	str r7, [sp, #4]
	ldr r3, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02009CB4
	ldr r0, [r4, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02009C80

	thumb_func_start sub_02009CB4
sub_02009CB4: ; 0x02009CB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r2, #0
	ldr r0, [sp, #0x24]
	add r7, r5, r3
	str r1, [sp, #4]
	ldr r4, [sp, #0x20]
	str r0, [sp, #0x24]
	cmp r5, r7
	bge _02009CF8
	add r6, r4, #0
	add r6, #8
_02009CCE:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [sp, #0x24]
	add r2, r5, #0
	bl sub_02009794
	cmp r4, #0
	beq _02009CF2
	ldr r2, [r4, #8]
	ldr r1, [r4, #4]
	cmp r1, r2
	ble _02009CF2
	ldr r1, [r4, #0]
	lsl r2, r2, #2
	str r0, [r1, r2]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_02009CF2:
	add r5, r5, #1
	cmp r5, r7
	blt _02009CCE
_02009CF8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009CB4

	thumb_func_start sub_02009CFC
sub_02009CFC: ; 0x02009CFC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	lsl r1, r5, #2
	bl sub_02018144
	str r0, [r4, #0]
	str r5, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02009CFC

	thumb_func_start sub_02009D20
sub_02009D20: ; 0x02009D20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009D20

	thumb_func_start sub_02009D34
sub_02009D34: ; 0x02009D34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02009D42
	bl sub_02022974
_02009D42:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_020229F8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02009D34

	thumb_func_start sub_02009D4C
sub_02009D4C: ; 0x02009D4C
	push {r4, lr}
	add r4, r0, #0
	bne _02009D56
	bl sub_02022974
_02009D56:
	add r0, r4, #0
	bl sub_0200A1F8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02022B64
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009D4C

	thumb_func_start sub_02009D68
sub_02009D68: ; 0x02009D68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02009D76
	bl sub_02022974
_02009D76:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02009D80
	bl sub_02022974
_02009D80:
	add r0, r4, #0
	bl sub_0200A1F8
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02022AB0
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02009D68

	thumb_func_start sub_02009D9C
sub_02009D9C: ; 0x02009D9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _02009DC4
	add r4, r6, #0
_02009DAA:
	ldr r1, [r5, #4]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02009DBA
	add r0, r5, #0
	add r1, r1, r4
	bl sub_02009D68
_02009DBA:
	ldr r0, [r5, #8]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02009DAA
_02009DC4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02009D9C

	thumb_func_start sub_02009DC8
sub_02009DC8: ; 0x02009DC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02009DD6
	bl sub_02022974
_02009DD6:
	ldr r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _02009E04
	add r4, r6, #0
_02009DE0:
	ldr r0, [r5, #4]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _02009DFA
	bl sub_02022B80
	cmp r0, r7
	bne _02009DFA
	mov r0, #0xc
	ldr r1, [r5, #4]
	mul r0, r6
	add r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_02009DFA:
	ldr r0, [r5, #8]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02009DE0
_02009E04:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009DC8

	thumb_func_start sub_02009E08
sub_02009E08: ; 0x02009E08
	push {r4, lr}
	add r4, r0, #0
	bne _02009E12
	bl sub_02022974
_02009E12:
	ldr r0, [r4, #0]
	bl sub_02022B80
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009E08

	thumb_func_start sub_02009E1C
sub_02009E1C: ; 0x02009E1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02009E2A
	bl sub_02022974
_02009E2A:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E1C

	thumb_func_start sub_02009E34
sub_02009E34: ; 0x02009E34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _02009E42
	bl sub_02022974
_02009E42:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E34

	thumb_func_start sub_02009E4C
sub_02009E4C: ; 0x02009E4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #2
	beq _02009E5A
	bl sub_02022974
_02009E5A:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E4C

	thumb_func_start sub_02009E64
sub_02009E64: ; 0x02009E64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _02009E72
	bl sub_02022974
_02009E72:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E64

	thumb_func_start sub_02009E7C
sub_02009E7C: ; 0x02009E7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	beq _02009E8A
	bl sub_02022974
_02009E8A:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E7C

	thumb_func_start sub_02009E94
sub_02009E94: ; 0x02009E94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	beq _02009EA2
	bl sub_02022974
_02009EA2:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E94

	thumb_func_start sub_02009EAC
sub_02009EAC: ; 0x02009EAC
	push {r4, lr}
	add r4, r0, #0
	bne _02009EB6
	bl sub_02022974
_02009EB6:
	ldr r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009EAC

	thumb_func_start sub_02009EBC
sub_02009EBC: ; 0x02009EBC
	push {r4, lr}
	add r4, r0, #0
	bne _02009EC6
	bl sub_02022974
_02009EC6:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02009ED6
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #4]
	pop {r4, pc}
_02009ED6:
	cmp r0, #1
	bne _02009EE4
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #4]
	pop {r4, pc}
_02009EE4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02009EBC

	thumb_func_start sub_02009EE8
sub_02009EE8: ; 0x02009EE8
	push {r4, lr}
	add r4, r0, #0
	bne _02009EF2
	bl sub_02022974
_02009EF2:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02009F02
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #8]
	pop {r4, pc}
_02009F02:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009EE8

	thumb_func_start sub_02009F08
sub_02009F08: ; 0x02009F08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02009F16
	bl sub_02022974
_02009F16:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02009F24
	add r0, r5, #0
	bl sub_0200A20C
	str r4, [r0, #4]
_02009F24:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _02009F32
	add r0, r5, #0
	bl sub_0200A20C
	str r4, [r0, #4]
_02009F32:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02009F08

	thumb_func_start sub_02009F34
sub_02009F34: ; 0x02009F34
	mov r0, #0x10
	bx lr
	thumb_func_end sub_02009F34

	thumb_func_start sub_02009F38
sub_02009F38: ; 0x02009F38
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02009F38

	thumb_func_start sub_02009F40
sub_02009F40: ; 0x02009F40
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _02009F50
	bl sub_02022974
_02009F50:
	ldr r0, [r5, #0]
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #0xc]
	add r0, r5, #4
	bl sub_0200A2C0
	add r2, r0, #0
	str r0, [r4, #4]
	cmp r2, #0
	ble _02009F72
	mov r1, #0x18
	add r0, r6, #0
	mul r1, r2
	bl sub_02018144
	b _02009F74
_02009F72:
	mov r0, #0
_02009F74:
	str r0, [r4, #0]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02009F88
	ldr r3, [r4, #4]
	mov r2, #0x18
	add r1, r5, #4
	mul r2, r3
	bl memcpy
_02009F88:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02009F40

	thumb_func_start sub_02009F8C
sub_02009F8C: ; 0x02009F8C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02009F9A
	bl sub_020181C4
_02009F9A:
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009F8C

	thumb_func_start sub_02009FA4
sub_02009FA4: ; 0x02009FA4
	push {r4, lr}
	add r4, r0, #0
	bne _02009FAE
	bl sub_02022974
_02009FAE:
	ldr r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009FA4

	thumb_func_start sub_02009FB4
sub_02009FB4: ; 0x02009FB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02009FC2
	bl sub_02022974
_02009FC2:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _02009FCC
	bl sub_02022974
_02009FCC:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5, #0]
	cmp r0, #0
	bne _02009FDC
	mov r0, #0x4c
	mul r0, r4
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
_02009FDC:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02009FB4

	thumb_func_start sub_02009FE8
sub_02009FE8: ; 0x02009FE8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02009FF6
	bl sub_02022974
_02009FF6:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200A000
	bl sub_02022974
_0200A000:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _0200A010
	mov r0, #0x18
	ldr r1, [r5, #0]
	mul r0, r4
	add r0, r1, r0
	ldr r6, [r0, #4]
_0200A010:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02009FE8

	thumb_func_start sub_0200A014
sub_0200A014: ; 0x0200A014
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A022
	bl sub_02022974
_0200A022:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200A02C
	bl sub_02022974
_0200A02C:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _0200A03C
	mov r0, #0x18
	ldr r1, [r5, #0]
	mul r0, r4
	add r0, r1, r0
	ldr r6, [r0, #8]
_0200A03C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A014

	thumb_func_start sub_0200A040
sub_0200A040: ; 0x0200A040
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A04E
	bl sub_02022974
_0200A04E:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200A058
	bl sub_02022974
_0200A058:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5, #0]
	cmp r0, #0
	bne _0200A06A
	mov r0, #0x4c
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x44]
	pop {r3, r4, r5, pc}
_0200A06A:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200A040

	thumb_func_start sub_0200A074
sub_0200A074: ; 0x0200A074
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A082
	bl sub_02022974
_0200A082:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200A08C
	bl sub_02022974
_0200A08C:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5, #0]
	cmp r0, #0
	bne _0200A09E
	mov r0, #0x4c
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x48]
	pop {r3, r4, r5, pc}
_0200A09E:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200A074

	thumb_func_start sub_0200A0A8
sub_0200A0A8: ; 0x0200A0A8
	push {r3, r4}
	ldr r4, [r0, #8]
	mov r1, #0
	cmp r4, #0
	ble _0200A0CE
	ldr r3, [r0, #4]
	add r2, r3, #0
_0200A0B6:
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _0200A0C6
	mov r0, #0xc
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_0200A0C6:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, r4
	blt _0200A0B6
_0200A0CE:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0200A0A8

	thumb_func_start sub_0200A0D4
sub_0200A0D4: ; 0x0200A0D4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r5, [sp, #0x18]
	bl sub_02022B54
	cmp r6, #5
	bhi _0200A142
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200A0F6: ; jump table
	.short _0200A102 - _0200A0F6 - 2 ; case 0
	.short _0200A10E - _0200A0F6 - 2 ; case 1
	.short _0200A11C - _0200A0F6 - 2 ; case 2
	.short _0200A126 - _0200A0F6 - 2 ; case 3
	.short _0200A130 - _0200A0F6 - 2 ; case 4
	.short _0200A13A - _0200A0F6 - 2 ; case 5
_0200A102:
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200A144
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200A10E:
	ldr r2, [sp]
	add r1, r7, #0
	add r3, r5, #0
	bl sub_0200A164
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200A11C:
	add r1, r5, #0
	bl sub_0200A188
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200A126:
	add r1, r5, #0
	bl sub_0200A1A4
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200A130:
	add r1, r5, #0
	bl sub_0200A1C0
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200A13A:
	add r1, r5, #0
	bl sub_0200A1DC
	str r0, [r4, #8]
_0200A142:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A0D4

	thumb_func_start sub_0200A144
sub_0200A144: ; 0x0200A144
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedCharacterData
	str r5, [r4, #4]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200A144

	thumb_func_start sub_0200A164
sub_0200A164: ; 0x0200A164
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0xc
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedPaletteData
	str r5, [r4, #4]
	str r6, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200A164

	thumb_func_start sub_0200A188
sub_0200A188: ; 0x0200A188
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedCellBank
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A188

	thumb_func_start sub_0200A1A4
sub_0200A1A4: ; 0x0200A1A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedAnimBank
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A1A4

	thumb_func_start sub_0200A1C0
sub_0200A1C0: ; 0x0200A1C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedMultiCellBank
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A1C0

	thumb_func_start sub_0200A1DC
sub_0200A1DC: ; 0x0200A1DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G2dGetUnpackedMCAnimBank
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A1DC

	thumb_func_start sub_0200A1F8
sub_0200A1F8: ; 0x0200A1F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0200A206
	bl sub_020181C4
_0200A206:
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0200A1F8

	thumb_func_start sub_0200A20C
sub_0200A20C: ; 0x0200A20C
	push {r4, lr}
	add r4, r0, #0
	bne _0200A216
	bl sub_02022974
_0200A216:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0200A220
	bl sub_02022974
_0200A220:
	ldr r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0200A20C

	thumb_func_start sub_0200A224
sub_0200A224: ; 0x0200A224
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r0, [r0, #0]
	ldr r3, [sp, #0x1c]
	bl sub_02022A58
	str r0, [r4, #0]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	bl sub_0200A0D4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200A224

	thumb_func_start sub_0200A250
sub_0200A250: ; 0x0200A250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x24]
	bl sub_02006FE8
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x14]
	bl sub_02022A1C
	str r0, [r4, #0]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0200A0D4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A250

	thumb_func_start sub_0200A288
sub_0200A288: ; 0x0200A288
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x24]
	bl sub_0200A2DC
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x14]
	bl sub_02022A1C
	str r0, [r4, #0]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0200A0D4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A288

	thumb_func_start sub_0200A2C0
sub_0200A2C0: ; 0x0200A2C0
	mov r3, #0
	ldr r2, [r0, #0]
	sub r1, r3, #2
	cmp r2, r1
	beq _0200A2D6
	sub r1, r3, #2
_0200A2CC:
	add r0, #0x18
	ldr r2, [r0, #0]
	add r3, r3, #1
	cmp r2, r1
	bne _0200A2CC
_0200A2D6:
	add r0, r3, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200A2C0

	thumb_func_start sub_0200A2DC
sub_0200A2DC: ; 0x0200A2DC
	push {r4, r5, r6, lr}
	add r6, r3, #0
	add r5, r2, #0
	add r2, r6, #0
	bl sub_02006CB8
	add r4, r0, #0
	beq _0200A322
	cmp r5, #0
	beq _0200A322
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0200A302
	ldr r1, [r4, #0]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_02018144
	b _0200A30C
_0200A302:
	ldr r1, [r4, #0]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_02018184
_0200A30C:
	add r5, r0, #0
	cmp r5, #0
	beq _0200A320
	add r0, r4, #0
	add r1, r5, #0
	bl MI_UncompressLZ8
	add r0, r4, #0
	bl sub_020181C4
_0200A320:
	add r4, r5, #0
_0200A322:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200A2DC