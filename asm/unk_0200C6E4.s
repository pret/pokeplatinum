	.include "macros/function.inc"
	.include "include/unk_0200C6E4.inc"

	

	.text


	thumb_func_start sub_0200C6E4
sub_0200C6E4: ; 0x0200C6E4
	push {r4, lr}
	mov r1, #0x4e
	lsl r1, r1, #2
	add r4, r0, #0
	bl sub_02018144
	cmp r0, #0
	bne _0200C6F8
	mov r0, #0
	pop {r4, pc}
_0200C6F8:
	str r4, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #8]
	pop {r4, pc}
	thumb_func_end sub_0200C6E4

	thumb_func_start sub_0200C704
sub_0200C704: ; 0x0200C704
	push {r4, lr}
	add r4, r0, #0
	bne _0200C70E
	bl sub_02022974
_0200C70E:
	ldr r0, [r4, #0]
	mov r1, #0x58
	bl sub_02018144
	cmp r0, #0
	bne _0200C71E
	mov r0, #0
	pop {r4, pc}
_0200C71E:
	ldr r1, [r4, #4]
	mov r2, #0
	add r1, r1, #1
	str r1, [r4, #4]
	add r3, r0, #0
	add r1, r2, #0
_0200C72A:
	add r2, r2, #1
	str r1, [r3, #0xc]
	add r3, r3, #4
	cmp r2, #6
	blt _0200C72A
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200C704

	thumb_func_start sub_0200C738
sub_0200C738: ; 0x0200C738
	add r0, #0x10
	bx lr
	thumb_func_end sub_0200C738

	thumb_func_start sub_0200C73C
sub_0200C73C: ; 0x0200C73C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0200C750
	bl sub_02022974
_0200C750:
	cmp r5, #0
	bne _0200C75A
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200C75A:
	ldr r0, [r6, #0]
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	str r0, [sp, #0x18]
	ldr r0, [r6, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0]
	str r0, [sp, #0x20]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	add r0, sp, #0x14
	bl sub_0201E88C
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_0201F834
	bl sub_020A7944
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0200C7A6
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r0, [r4, #0x14]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	str r0, [sp, #8]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0200A784
_0200C7A6:
	ldr r1, [r5, #0]
	mov r0, #0x20
	bl sub_0201DCC8
	str r0, [r5, #0xc]
	bl sub_0201E994
	bl sub_0201F8E4
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C73C

	thumb_func_start sub_0200C7C0
sub_0200C7C0: ; 0x0200C7C0
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	cmp r3, #0
	beq _0200C7CE
	cmp r4, #0
	bne _0200C7D2
_0200C7CE:
	mov r0, #0
	pop {r4, pc}
_0200C7D2:
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [r3, #0]
	add r1, #0x10
	bl sub_020095C4
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0200C7C0

	thumb_func_start sub_0200C7E4
sub_0200C7E4: ; 0x0200C7E4
	ldr r3, _0200C7E8 ; =sub_02021BD4
	bx r3
	; .align 2, 0
_0200C7E8: .word sub_02021BD4
	thumb_func_end sub_0200C7E4

	thumb_func_start sub_0200C7EC
sub_0200C7EC: ; 0x0200C7EC
	push {r4, lr}
	add r4, r0, #0
	bne _0200C7F6
	bl sub_02022974
_0200C7F6:
	ldr r0, [r4, #0]
	bl sub_020219F8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200C7EC

	thumb_func_start sub_0200C800
sub_0200C800: ; 0x0200C800
	ldr r3, _0200C804 ; =sub_0200A858
	bx r3
	; .align 2, 0
_0200C804: .word sub_0200A858
	thumb_func_end sub_0200C800

	thumb_func_start sub_0200C808
sub_0200C808: ; 0x0200C808
	ldr r3, _0200C80C ; =sub_0201DCE8
	bx r3
	; .align 2, 0
_0200C80C: .word sub_0201DCE8
	thumb_func_end sub_0200C808

	thumb_func_start sub_0200C810
sub_0200C810: ; 0x0200C810
	ldr r3, _0200C818 ; =sub_02021964
	ldr r0, [r0, #0]
	bx r3
	nop
_0200C818: .word sub_02021964
	thumb_func_end sub_0200C810

	thumb_func_start sub_0200C81C
sub_0200C81C: ; 0x0200C81C
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200C828
	bl sub_020095A8
_0200C828:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200C81C

	thumb_func_start sub_0200C82C
sub_0200C82C: ; 0x0200C82C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	mov r4, #0
	cmp r0, #0
	ble _0200C84C
_0200C838:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_02009F38
	bl sub_02009F8C
	ldr r0, [r5, #0x54]
	add r4, r4, #1
	cmp r4, r0
	blt _0200C838
_0200C84C:
	ldr r0, [r5, #8]
	bl sub_020181C4
	ldr r0, [r5, #0x24]
	bl sub_0200A508
	ldr r0, [r5, #0x28]
	bl sub_0200A700
	ldr r0, [r5, #0x54]
	mov r6, #0
	cmp r0, #0
	ble _0200C87E
	add r4, r5, #0
_0200C868:
	ldr r0, [r4, #0x24]
	bl sub_02009D20
	ldr r0, [r4, #0xc]
	bl sub_02009754
	ldr r0, [r5, #0x54]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200C868
_0200C87E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200C82C

	thumb_func_start sub_0200C880
sub_0200C880: ; 0x0200C880
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0201DCF0
	bl sub_0201E958
	bl sub_0201F8B4
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0200C89C
	bl sub_0200A878
_0200C89C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200C880

	thumb_func_start sub_0200C8A0
sub_0200C8A0: ; 0x0200C8A0
	ldr r2, [r0, #4]
	ldr r3, _0200C8AC ; =sub_020181C4
	sub r2, r2, #1
	str r2, [r0, #4]
	add r0, r1, #0
	bx r3
	; .align 2, 0
_0200C8AC: .word sub_020181C4
	thumb_func_end sub_0200C8A0

	thumb_func_start sub_0200C8B0
sub_0200C8B0: ; 0x0200C8B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0200C810
	add r0, r4, #0
	bl sub_0200C81C
	add r0, r4, #0
	bl sub_0200C82C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200C8A0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200C8B0

	thumb_func_start sub_0200C8D4
sub_0200C8D4: ; 0x0200C8D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0200C8E2
	bl sub_02022974
_0200C8E2:
	add r0, r4, #0
	bl sub_0200C880
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0200C8D4

	thumb_func_start sub_0200C8F0
sub_0200C8F0: ; 0x0200C8F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	cmp r5, #0
	beq _0200C906
	cmp r4, #0
	bne _0200C90C
_0200C906:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200C90C:
	add r0, r2, #0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _0200C918
	mov r0, #4
	str r0, [sp, #0x14]
_0200C918:
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x54]
	bl sub_02009F34
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	ldr r0, [r5, #0]
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #8]
	ldr r0, [sp, #0x14]
	mov r7, #0
	cmp r0, #0
	ble _0200C964
	ldr r6, [sp, #0x10]
_0200C938:
	ldr r0, [r4, #8]
	add r1, r7, #0
	bl sub_02009F38
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	ldr r1, [r6, #0]
	bl sub_02017A40
	ldr r1, [sp, #0x18]
	ldr r2, [r5, #0]
	str r0, [sp, #0x1c]
	bl sub_02009F40
	ldr r0, [sp, #0x1c]
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r6, r6, #4
	cmp r7, r0
	blt _0200C938
_0200C964:
	ldr r0, [sp, #0x14]
	mov r6, #0
	cmp r0, #0
	ble _0200C98E
	add r7, r4, #0
_0200C96E:
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_02009F38
	bl sub_02009FA4
	ldr r2, [r5, #0]
	add r1, r6, #0
	bl sub_02009714
	str r0, [r7, #0xc]
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	add r7, r7, #4
	cmp r6, r0
	blt _0200C96E
_0200C98E:
	ldr r0, [sp, #0x14]
	mov r7, #0
	cmp r0, #0
	ble _0200C9C6
	add r6, r4, #0
_0200C998:
	ldr r0, [r4, #8]
	add r1, r7, #0
	bl sub_02009F38
	str r0, [sp, #0x20]
	bl sub_02009FA4
	ldr r1, [r5, #0]
	bl sub_02009CFC
	add r2, r0, #0
	str r2, [r6, #0x24]
	ldr r0, [r6, #0xc]
	ldr r1, [sp, #0x20]
	ldr r3, [r5, #0]
	bl sub_02009C80
	str r0, [r6, #0x3c]
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r6, r6, #4
	cmp r7, r0
	blt _0200C998
_0200C9C6:
	ldr r0, [r4, #0x24]
	bl sub_0200A368
	ldr r0, [r4, #0x28]
	bl sub_0200A60C
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0]
	ldr r1, [r1, #0x18]
	bl sub_02017A40
	ldr r1, [r4, #0x14]
	add r6, r0, #0
	str r1, [sp]
	ldr r1, [r4, #0x18]
	str r1, [sp, #4]
	ldr r1, [r4, #0x1c]
	str r1, [sp, #8]
	ldr r1, [r4, #0x20]
	str r1, [sp, #0xc]
	ldr r1, [r5, #0]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl sub_02009508
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_020181C4
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C8F0

	thumb_func_start sub_0200CA08
sub_0200CA08: ; 0x0200CA08
	push {r4, lr}
	sub sp, #0x28
	mov r3, #4
	mov r4, #6
	ldrsh r3, [r2, r3]
	ldrsh r4, [r2, r4]
	str r4, [sp]
	str r3, [sp, #4]
	ldrh r4, [r2, #0xa]
	str r4, [sp, #8]
	ldr r4, [r2, #0xc]
	str r4, [sp, #0xc]
	ldr r4, [r2, #0x10]
	str r4, [sp, #0x10]
	ldr r4, [r2, #0x14]
	str r4, [sp, #0x14]
	ldr r4, [r2, #0x18]
	str r4, [sp, #0x18]
	ldr r4, [r2, #0x1c]
	str r4, [sp, #0x1c]
	ldr r4, [r2, #0x20]
	str r4, [sp, #0x20]
	ldr r4, [r2, #0x24]
	str r4, [sp, #0x24]
	ldr r2, [r2, #0]
	bl sub_0200CA44
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200CA08

	thumb_func_start sub_0200CA44
sub_0200CA44: ; 0x0200CA44
	push {r4, lr}
	sub sp, #0x30
	add r4, r0, #0
	ldr r0, [r1, #0]
	str r0, [sp]
	ldr r0, [r1, #4]
	ldr r1, [r0, #0]
	mov r0, #0x24
	mul r0, r2
	add r0, r1, r0
	str r0, [sp, #4]
	cmp r3, #0
	ble _0200CA70
	lsl r0, r3, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CA7E
_0200CA70:
	lsl r0, r3, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CA7E:
	bl sub_020E1740
	str r0, [sp, #8]
	add r1, sp, #0x28
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _0200CAA0
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CAAE
_0200CAA0:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CAAE:
	bl sub_020E1740
	str r0, [sp, #0xc]
	add r1, sp, #0x28
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _0200CAD0
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CADE
_0200CAD0:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CADE:
	bl sub_020E1740
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4c]
	cmp r0, #2
	bne _0200CAF4
	mov r0, #3
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0xc]
_0200CAF4:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0, #0x20]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x28]
	ldr r0, [r4, #0]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl sub_02021AA0
	add r4, r0, #0
	beq _0200CB2A
	add r1, sp, #0x28
	ldrh r1, [r1, #0x18]
	bl sub_02021D6C
	ldr r1, [sp, #0x48]
	add r0, r4, #0
	bl sub_02021E90
_0200CB2A:
	add r0, r4, #0
	add sp, #0x30
	pop {r4, pc}
	thumb_func_end sub_0200CA44

	thumb_func_start sub_0200CB30
sub_0200CB30: ; 0x0200CB30
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0200CB48
	cmp r5, #0
	bne _0200CB4E
_0200CB48:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CB4E:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0200CB5A
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0200CB5E
_0200CB5A:
	mov r0, #4
	str r0, [sp, #4]
_0200CB5E:
	ldr r0, [sp, #4]
	str r0, [r5, #0x54]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0200CB8E
	add r7, r6, #0
	add r4, r5, #0
_0200CB70:
	ldr r2, [sp]
	ldr r0, [r7, #0]
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	bl sub_02009714
	str r0, [r4, #0xc]
	ldr r0, [sp, #8]
	add r7, r7, #4
	add r1, r0, #1
	ldr r0, [sp, #4]
	add r4, r4, #4
	str r1, [sp, #8]
	cmp r1, r0
	blt _0200CB70
_0200CB8E:
	ldr r0, [sp, #4]
	mov r7, #0
	cmp r0, #0
	ble _0200CBD4
	add r4, r7, #0
_0200CB98:
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0200CBC8
	ldr r1, [sp]
	ldr r1, [r1, #0]
	bl sub_02009CFC
	str r0, [r5, #0x24]
	mov r0, #0
	str r0, [r5, #0x3c]
	ldr r3, [r5, #0x24]
	add r1, r0, #0
	ldr r0, [r3, #4]
	cmp r0, #0
	ble _0200CBC8
	add r2, r1, #0
_0200CBB8:
	ldr r0, [r3, #0]
	add r1, r1, #1
	str r4, [r0, r2]
	ldr r3, [r5, #0x24]
	add r2, r2, #4
	ldr r0, [r3, #4]
	cmp r1, r0
	blt _0200CBB8
_0200CBC8:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r6, r6, #4
	add r5, r5, #4
	cmp r7, r0
	blt _0200CB98
_0200CBD4:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200CB30

	thumb_func_start sub_0200CBDC
sub_0200CBDC: ; 0x0200CBDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200CBFA
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CBFA:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0200985C
	add r5, r0, #0
	beq _0200CC28
	bl sub_0200A3DC
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200CC28:
	bl sub_02022974
	cmp r5, #0
	beq _0200CC36
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200CC36:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CBDC

	thumb_func_start sub_0200CC3C
sub_0200CC3C: ; 0x0200CC3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200CC5A
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CC5A:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_02009A4C
	add r5, r0, #0
	beq _0200CC88
	bl sub_0200A3DC
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200CC88:
	bl sub_02022974
	cmp r5, #0
	beq _0200CC96
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200CC96:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CC3C

	thumb_func_start sub_0200CC9C
sub_0200CC9C: ; 0x0200CC9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x34]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200CCBC
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0200CCBC:
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl sub_020098B8
	add r5, r0, #0
	beq _0200CD00
	bl sub_0200A640
	cmp r0, #1
	beq _0200CCE8
	bl sub_02022974
_0200CCE8:
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_0200D1FC
	ldr r1, [sp, #0x30]
	add r0, r5, #0
	bl sub_0200A760
	lsl r0, r0, #0x18
	add sp, #0x10
	asr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0200CD00:
	bl sub_02022974
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CC9C

	thumb_func_start sub_0200CD0C
sub_0200CD0C: ; 0x0200CD0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x34]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200CD2C
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0200CD2C:
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl sub_02009B04
	add r5, r0, #0
	beq _0200CD70
	bl sub_0200A640
	cmp r0, #1
	beq _0200CD58
	bl sub_02022974
_0200CD58:
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_0200D1FC
	ldr r1, [sp, #0x30]
	add r0, r5, #0
	bl sub_0200A760
	lsl r0, r0, #0x18
	add sp, #0x10
	asr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0200CD70:
	bl sub_02022974
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CD0C

	thumb_func_start sub_0200CD7C
sub_0200CD7C: ; 0x0200CD7C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	add r0, r2, #0
	ldr r2, [sp, #0x20]
	bl sub_0200CC9C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0200CDBA
	ldr r3, [sp, #0x2c]
	lsl r2, r4, #0x14
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	lsl r3, r3, #5
	bl sub_02003070
_0200CDBA:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200CD7C

	thumb_func_start sub_0200CDC4
sub_0200CDC4: ; 0x0200CDC4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	add r0, r2, #0
	ldr r2, [sp, #0x20]
	bl sub_0200CD0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0200CE02
	ldr r3, [sp, #0x2c]
	lsl r2, r4, #0x14
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	lsl r3, r3, #5
	bl sub_02003070
_0200CE02:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200CDC4

	thumb_func_start sub_0200CE0C
sub_0200CE0C: ; 0x0200CE0C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #2
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200D11C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200CE0C

	thumb_func_start sub_0200CE24
sub_0200CE24: ; 0x0200CE24
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #2
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200D18C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200CE24

	thumb_func_start sub_0200CE3C
sub_0200CE3C: ; 0x0200CE3C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #3
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200D11C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200CE3C

	thumb_func_start sub_0200CE54
sub_0200CE54: ; 0x0200CE54
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #3
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200D18C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200CE54

	thumb_func_start sub_0200CE6C
sub_0200CE6C: ; 0x0200CE6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	add r7, r0, #0
	ldr r0, [r7, #0]
	add r6, r1, #0
	mov r1, #0x10
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _0200CE88
	add sp, #0x74
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CE88:
	ldr r0, [r7, #0]
	mov r1, #8
	bl sub_02018144
	str r0, [r4, #8]
	cmp r0, #0
	bne _0200CE9C
	add sp, #0x74
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CE9C:
	ldr r0, [r7, #0]
	mov r1, #0x24
	bl sub_02018144
	ldr r1, [r4, #8]
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _0200CEC4
	cmp r0, #0
	beq _0200CEBE
	bl sub_020181C4
_0200CEBE:
	add sp, #0x74
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CEC4:
	mov r1, #0
	add r2, r5, #0
	add r3, sp, #0x2c
_0200CECA:
	ldr r0, [r2, #0x14]
	add r1, r1, #1
	add r2, r2, #4
	stmia r3!, {r0}
	cmp r1, #6
	blt _0200CECA
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _0200CEE2
	ldr r1, [r6, #0x20]
	cmp r1, #0
	bne _0200CEEC
_0200CEE2:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	b _0200CF1E
_0200CEEC:
	mov r2, #0
	ldr r1, [sp, #0x3c]
	mvn r2, r2
	cmp r1, r2
	beq _0200CF04
	bl sub_02009D34
	cmp r0, #0
	bne _0200CF04
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x3c]
_0200CF04:
	mov r0, #0
	ldr r1, [sp, #0x40]
	mvn r0, r0
	cmp r1, r0
	beq _0200CF1E
	ldr r0, [r6, #0x20]
	bl sub_02009D34
	cmp r0, #0
	bne _0200CF1E
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x40]
_0200CF1E:
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x10]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [r6, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [r6, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x28]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	bl sub_020093B4
	ldr r0, [r6, #0]
	str r0, [sp, #0x44]
	ldr r0, [r4, #4]
	str r0, [sp, #0x48]
	mov r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200CF78
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CF86
_0200CF78:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CF86:
	bl sub_020E1740
	str r0, [sp, #0x4c]
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200CFA6
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CFB4
_0200CFA6:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CFB4:
	bl sub_020E1740
	str r0, [sp, #0x50]
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200CFD4
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CFE2
_0200CFD4:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CFE2:
	bl sub_020E1740
	str r0, [sp, #0x54]
	ldr r0, [r5, #0x10]
	cmp r0, #2
	bne _0200CFF8
	mov r0, #3
	ldr r1, [sp, #0x50]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x50]
_0200CFF8:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	mov r1, #0
	add r0, sp, #0x2c
	strh r1, [r0, #0x38]
	ldr r0, [r5, #8]
	str r0, [sp, #0x68]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x6c]
	ldr r0, [r7, #0]
	str r0, [sp, #0x70]
	add r0, sp, #0x44
	bl sub_02021AA0
	str r0, [r4, #0]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0200D040
	bl sub_02021EE8
	add r6, r0, #0
	ldrh r1, [r5, #6]
	ldr r0, [r4, #0]
	bl sub_02021D6C
	ldr r1, [r5, #0xc]
	ldr r0, [r4, #0]
	add r1, r6, r1
	bl sub_02021E90
	b _0200D044
_0200D040:
	bl sub_02022974
_0200D044:
	add r0, r4, #0
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200CE6C

	thumb_func_start sub_0200D04C
sub_0200D04C: ; 0x0200D04C
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl sub_02009DC8
	mov r1, #0
	bl sub_0200A72C
	pop {r3, pc}
	thumb_func_end sub_0200D04C

	thumb_func_start sub_0200D05C
sub_0200D05C: ; 0x0200D05C
	push {r4, lr}
	ldr r0, [r0, #0x10]
	add r4, r2, #0
	bl sub_02009DC8
	add r1, r4, #0
	bl sub_0200A760
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200D05C

	thumb_func_start sub_0200D070
sub_0200D070: ; 0x0200D070
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0xc]
	ldr r1, [r3, #0x24]
	ldr r3, _0200D07C ; =sub_0200D27C
	bx r3
	; .align 2, 0
_0200D07C: .word sub_0200D27C
	thumb_func_end sub_0200D070

	thumb_func_start sub_0200D080
sub_0200D080: ; 0x0200D080
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x28]
	ldr r3, _0200D08C ; =sub_0200D2D0
	bx r3
	; .align 2, 0
_0200D08C: .word sub_0200D2D0
	thumb_func_end sub_0200D080

	thumb_func_start sub_0200D090
sub_0200D090: ; 0x0200D090
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x2c]
	ldr r3, _0200D09C ; =sub_0200D230
	bx r3
	; .align 2, 0
_0200D09C: .word sub_0200D230
	thumb_func_end sub_0200D090

	thumb_func_start sub_0200D0A0
sub_0200D0A0: ; 0x0200D0A0
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x18]
	ldr r1, [r3, #0x30]
	ldr r3, _0200D0AC ; =sub_0200D230
	bx r3
	; .align 2, 0
_0200D0AC: .word sub_0200D230
	thumb_func_end sub_0200D0A0

	thumb_func_start sub_0200D0B0
sub_0200D0B0: ; 0x0200D0B0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0200C810
	ldr r0, [r6, #0x24]
	bl sub_0200A508
	ldr r0, [r6, #0x28]
	bl sub_0200A700
	ldr r0, [r6, #0x54]
	mov r4, #0
	cmp r0, #0
	ble _0200D0E8
	add r5, r6, #0
_0200D0D2:
	ldr r0, [r5, #0x24]
	bl sub_02009D20
	ldr r0, [r5, #0xc]
	bl sub_02009754
	ldr r0, [r6, #0x54]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0200D0D2
_0200D0E8:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200C8A0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200D0B0

	thumb_func_start sub_0200D0F4
sub_0200D0F4: ; 0x0200D0F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200D106
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_0200A5B4
_0200D106:
	ldr r0, [r4, #0]
	bl sub_02021BD4
	ldr r0, [r4, #8]
	bl sub_020095A8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200D0F4

	thumb_func_start sub_0200D11C
sub_0200D11C: ; 0x0200D11C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	add r5, r6, #0
	lsl r4, r0, #2
	add r5, #0xc
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x30]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_02009D34
	cmp r0, #0
	bne _0200D142
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D142:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	ldr r3, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	bl sub_02009918
	add r5, r0, #0
	beq _0200D178
	add r0, r6, r4
	ldr r0, [r0, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add r4, r0, #0
	cmp r4, #1
	beq _0200D172
	bl sub_02022974
_0200D172:
	add sp, #0x14
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0200D178:
	bl sub_02022974
	cmp r5, #0
	beq _0200D186
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D186:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D11C

	thumb_func_start sub_0200D18C
sub_0200D18C: ; 0x0200D18C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	add r5, r6, #0
	lsl r4, r0, #2
	add r5, #0xc
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x30]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_02009D34
	cmp r0, #0
	bne _0200D1B2
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D1B2:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	ldr r3, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	bl sub_02009BC4
	add r5, r0, #0
	beq _0200D1E8
	add r0, r6, r4
	ldr r0, [r0, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add r4, r0, #0
	cmp r4, #1
	beq _0200D1E2
	bl sub_02022974
_0200D1E2:
	add sp, #0x14
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0200D1E8:
	bl sub_02022974
	cmp r5, #0
	beq _0200D1F6
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D1F6:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D18C

	thumb_func_start sub_0200D1FC
sub_0200D1FC: ; 0x0200D1FC
	push {r3, r4, r5, r6}
	ldr r6, [r0, #4]
	mov r3, #0
	cmp r6, #0
	ble _0200D228
	ldr r5, [r0, #0]
	add r4, r5, #0
_0200D20A:
	ldr r2, [r4, #0]
	cmp r2, #0
	bne _0200D220
	lsl r2, r3, #2
	str r1, [r5, r2]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0200D220:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, r6
	blt _0200D20A
_0200D228:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200D1FC

	thumb_func_start sub_0200D230
sub_0200D230: ; 0x0200D230
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200D278
	add r4, r6, #0
_0200D242:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200D26E
	bl sub_02009E08
	cmp r0, r7
	bne _0200D26E
	ldr r1, [r5, #0]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl sub_02009D68
	ldr r0, [r5, #0]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200D26E:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200D242
_0200D278:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D230

	thumb_func_start sub_0200D27C
sub_0200D27C: ; 0x0200D27C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200D2CA
	add r4, r6, #0
_0200D28E:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200D2C0
	bl sub_02009E08
	cmp r0, r7
	bne _0200D2C0
	add r0, r7, #0
	bl sub_0201EB50
	ldr r1, [r5, #0]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl sub_02009D68
	ldr r0, [r5, #0]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200D2C0:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200D28E
_0200D2CA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200D27C

	thumb_func_start sub_0200D2D0
sub_0200D2D0: ; 0x0200D2D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200D31E
	add r4, r6, #0
_0200D2E2:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200D314
	bl sub_02009E08
	cmp r0, r7
	bne _0200D314
	add r0, r7, #0
	bl sub_0201F9F0
	ldr r1, [r5, #0]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl sub_02009D68
	ldr r0, [r5, #0]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200D314:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200D2E2
_0200D31E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200D2D0

	thumb_func_start sub_0200D324
sub_0200D324: ; 0x0200D324
	ldr r3, _0200D32C ; =sub_02021E2C
	mov r1, #1
	lsl r1, r1, #0xc
	bx r3
	; .align 2, 0
_0200D32C: .word sub_02021E2C
	thumb_func_end sub_0200D324

	thumb_func_start sub_0200D330
sub_0200D330: ; 0x0200D330
	ldr r3, _0200D338 ; =sub_0200D324
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D338: .word sub_0200D324
	thumb_func_end sub_0200D330

	thumb_func_start sub_0200D33C
sub_0200D33C: ; 0x0200D33C
	ldr r3, _0200D348 ; =sub_02021E2C
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bx r3
	nop
_0200D348: .word sub_02021E2C
	thumb_func_end sub_0200D33C

	thumb_func_start sub_0200D34C
sub_0200D34C: ; 0x0200D34C
	ldr r3, _0200D354 ; =sub_02021E2C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D354: .word sub_02021E2C
	thumb_func_end sub_0200D34C

	thumb_func_start sub_0200D358
sub_0200D358: ; 0x0200D358
	ldr r3, _0200D360 ; =sub_02021D44
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D360: .word sub_02021D44
	thumb_func_end sub_0200D358

	thumb_func_start sub_0200D364
sub_0200D364: ; 0x0200D364
	ldr r3, _0200D36C ; =sub_02021D6C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D36C: .word sub_02021D6C
	thumb_func_end sub_0200D364

	thumb_func_start sub_0200D370
sub_0200D370: ; 0x0200D370
	ldr r3, _0200D378 ; =sub_02021DCC
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D378: .word sub_02021DCC
	thumb_func_end sub_0200D370

	thumb_func_start sub_0200D37C
sub_0200D37C: ; 0x0200D37C
	ldr r3, _0200D384 ; =sub_02021E24
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D384: .word sub_02021E24
	thumb_func_end sub_0200D37C

	thumb_func_start sub_0200D388
sub_0200D388: ; 0x0200D388
	ldr r3, _0200D38C ; =sub_02021CC8
	bx r3
	; .align 2, 0
_0200D38C: .word sub_02021CC8
	thumb_func_end sub_0200D388

	thumb_func_start sub_0200D390
sub_0200D390: ; 0x0200D390
	ldr r3, _0200D398 ; =sub_0200D388
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D398: .word sub_0200D388
	thumb_func_end sub_0200D390

	thumb_func_start sub_0200D39C
sub_0200D39C: ; 0x0200D39C
	ldr r3, _0200D3A0 ; =sub_02021CE4
	bx r3
	; .align 2, 0
_0200D3A0: .word sub_02021CE4
	thumb_func_end sub_0200D39C

	thumb_func_start sub_0200D3A4
sub_0200D3A4: ; 0x0200D3A4
	ldr r3, _0200D3AC ; =sub_0200D39C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D3AC: .word sub_0200D39C
	thumb_func_end sub_0200D3A4

	thumb_func_start sub_0200D3B0
sub_0200D3B0: ; 0x0200D3B0
	ldr r3, _0200D3B4 ; =sub_02021FD0
	bx r3
	; .align 2, 0
_0200D3B4: .word sub_02021FD0
	thumb_func_end sub_0200D3B0

	thumb_func_start sub_0200D3B8
sub_0200D3B8: ; 0x0200D3B8
	ldr r3, _0200D3C0 ; =sub_0200D3B0
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D3C0: .word sub_0200D3B0
	thumb_func_end sub_0200D3B8

	thumb_func_start sub_0200D3C4
sub_0200D3C4: ; 0x0200D3C4
	ldr r3, _0200D3C8 ; =sub_02021E50
	bx r3
	; .align 2, 0
_0200D3C8: .word sub_02021E50
	thumb_func_end sub_0200D3C4

	thumb_func_start sub_0200D3CC
sub_0200D3CC: ; 0x0200D3CC
	ldr r3, _0200D3D4 ; =sub_0200D3C4
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D3D4: .word sub_0200D3C4
	thumb_func_end sub_0200D3CC

	thumb_func_start sub_0200D3D8
sub_0200D3D8: ; 0x0200D3D8
	ldr r3, _0200D3DC ; =sub_02021E74
	bx r3
	; .align 2, 0
_0200D3DC: .word sub_02021E74
	thumb_func_end sub_0200D3D8

	thumb_func_start sub_0200D3E0
sub_0200D3E0: ; 0x0200D3E0
	ldr r3, _0200D3E8 ; =sub_0200D3D8
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D3E8: .word sub_0200D3D8
	thumb_func_end sub_0200D3E0

	thumb_func_start sub_0200D3EC
sub_0200D3EC: ; 0x0200D3EC
	ldr r3, _0200D3F0 ; =sub_02021CAC
	bx r3
	; .align 2, 0
_0200D3F0: .word sub_02021CAC
	thumb_func_end sub_0200D3EC

	thumb_func_start sub_0200D3F4
sub_0200D3F4: ; 0x0200D3F4
	ldr r3, _0200D3FC ; =sub_0200D3EC
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D3FC: .word sub_0200D3EC
	thumb_func_end sub_0200D3F4

	thumb_func_start sub_0200D400
sub_0200D400: ; 0x0200D400
	ldr r3, _0200D404 ; =sub_02021D34
	bx r3
	; .align 2, 0
_0200D404: .word sub_02021D34
	thumb_func_end sub_0200D400

	thumb_func_start sub_0200D408
sub_0200D408: ; 0x0200D408
	ldr r3, _0200D410 ; =sub_0200D400
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D410: .word sub_0200D400
	thumb_func_end sub_0200D408

	thumb_func_start sub_0200D414
sub_0200D414: ; 0x0200D414
	ldr r3, _0200D418 ; =sub_02021E90
	bx r3
	; .align 2, 0
_0200D418: .word sub_02021E90
	thumb_func_end sub_0200D414

	thumb_func_start sub_0200D41C
sub_0200D41C: ; 0x0200D41C
	ldr r3, _0200D424 ; =sub_0200D414
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D424: .word sub_0200D414
	thumb_func_end sub_0200D41C

	thumb_func_start sub_0200D428
sub_0200D428: ; 0x0200D428
	ldr r3, _0200D42C ; =sub_02021EF0
	bx r3
	; .align 2, 0
_0200D42C: .word sub_02021EF0
	thumb_func_end sub_0200D428

	thumb_func_start sub_0200D430
sub_0200D430: ; 0x0200D430
	ldr r3, _0200D438 ; =sub_0200D428
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D438: .word sub_0200D428
	thumb_func_end sub_0200D430

	thumb_func_start sub_0200D43C
sub_0200D43C: ; 0x0200D43C
	ldr r3, _0200D444 ; =sub_02021F48
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D444: .word sub_02021F48
	thumb_func_end sub_0200D43C

	thumb_func_start sub_0200D448
sub_0200D448: ; 0x0200D448
	ldr r3, _0200D450 ; =sub_02021E80
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bx r3
	; .align 2, 0
_0200D450: .word sub_02021E80
	thumb_func_end sub_0200D448

	thumb_func_start sub_0200D454
sub_0200D454: ; 0x0200D454
	ldr r3, _0200D45C ; =sub_02021E88
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D45C: .word sub_02021E88
	thumb_func_end sub_0200D454

	thumb_func_start sub_0200D460
sub_0200D460: ; 0x0200D460
	ldr r3, _0200D468 ; =sub_0200D448
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D468: .word sub_0200D448
	thumb_func_end sub_0200D460

	thumb_func_start sub_0200D46C
sub_0200D46C: ; 0x0200D46C
	ldr r3, _0200D470 ; =sub_02021F58
	bx r3
	; .align 2, 0
_0200D470: .word sub_02021F58
	thumb_func_end sub_0200D46C

	thumb_func_start sub_0200D474
sub_0200D474: ; 0x0200D474
	ldr r3, _0200D47C ; =sub_0200D46C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D47C: .word sub_0200D46C
	thumb_func_end sub_0200D474

	thumb_func_start sub_0200D480
sub_0200D480: ; 0x0200D480
	ldr r3, _0200D484 ; =sub_02021F74
	bx r3
	; .align 2, 0
_0200D484: .word sub_02021F74
	thumb_func_end sub_0200D480

	thumb_func_start sub_0200D488
sub_0200D488: ; 0x0200D488
	ldr r3, _0200D490 ; =sub_0200D480
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D490: .word sub_0200D480
	thumb_func_end sub_0200D488

	thumb_func_start sub_0200D494
sub_0200D494: ; 0x0200D494
	push {r3, r4, lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	add r4, r0, #0
	str r1, [sp, #4]
	bl sub_02021FC8
	cmp r0, #2
	bne _0200D4B4
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #4]
_0200D4B4:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200D494

	thumb_func_start sub_0200D4C4
sub_0200D4C4: ; 0x0200D4C4
	ldr r3, _0200D4CC ; =sub_0200D494
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D4CC: .word sub_0200D494
	thumb_func_end sub_0200D4C4

	thumb_func_start sub_0200D4D0
sub_0200D4D0: ; 0x0200D4D0
	push {r4, r5, lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	add r5, r0, #0
	add r4, r3, #0
	str r1, [sp, #4]
	bl sub_02021FC8
	cmp r0, #2
	bne _0200D4EE
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
_0200D4EE:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200D4D0

	thumb_func_start sub_0200D500
sub_0200D500: ; 0x0200D500
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0200D4D0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200D500

	thumb_func_start sub_0200D50C
sub_0200D50C: ; 0x0200D50C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl sub_02021D28
	add r4, r0, #0
	ldr r1, [r4, #0]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r6]
	add r0, r7, #0
	bl sub_02021FC8
	cmp r0, #2
	ldr r1, [r4, #4]
	bne _0200D544
	mov r0, #3
	lsl r0, r0, #0x12
	sub r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0200D544:
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D50C

	thumb_func_start sub_0200D550
sub_0200D550: ; 0x0200D550
	ldr r3, _0200D558 ; =sub_0200D50C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D558: .word sub_0200D50C
	thumb_func_end sub_0200D550

	thumb_func_start sub_0200D55C
sub_0200D55C: ; 0x0200D55C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02021D28
	add r4, r0, #0
	ldr r1, [r4, #0]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r6]
	ldr r0, [sp]
	bl sub_02021FC8
	cmp r0, #2
	bne _0200D592
	ldr r0, [r4, #4]
	sub r1, r0, r7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0200D592:
	ldr r1, [r4, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D55C

	thumb_func_start sub_0200D5A0
sub_0200D5A0: ; 0x0200D5A0
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0200D55C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200D5A0

	thumb_func_start sub_0200D5AC
sub_0200D5AC: ; 0x0200D5AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02021D28
	ldr r2, [r0, #0]
	lsl r1, r5, #0xc
	add r1, r2, r1
	str r1, [sp]
	ldr r2, [r0, #4]
	lsl r1, r4, #0xc
	add r1, r2, r1
	str r1, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200D5AC

	thumb_func_start sub_0200D5DC
sub_0200D5DC: ; 0x0200D5DC
	ldr r3, _0200D5E4 ; =sub_0200D5AC
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D5E4: .word sub_0200D5AC
	thumb_func_end sub_0200D5DC

	thumb_func_start sub_0200D5E8
sub_0200D5E8: ; 0x0200D5E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021D28
	ldr r1, [r0, #0]
	add r1, r1, r4
	str r1, [sp]
	ldr r1, [r0, #4]
	add r1, r1, r6
	str r1, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0200D5E8

	thumb_func_start sub_0200D614
sub_0200D614: ; 0x0200D614
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021D28
	str r4, [sp]
	str r6, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0200D614

	thumb_func_start sub_0200D638
sub_0200D638: ; 0x0200D638
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02021D28
	ldr r1, [r0, #0]
	str r1, [r5, #0]
	ldr r0, [r0, #4]
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200D638

	thumb_func_start sub_0200D650
sub_0200D650: ; 0x0200D650
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_02021FC8
	cmp r0, #2
	bne _0200D670
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, r7
	bl sub_0200D614
	pop {r3, r4, r5, r6, r7, pc}
_0200D670:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200D614
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D650

	thumb_func_start sub_0200D67C
sub_0200D67C: ; 0x0200D67C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0200D638
	ldr r0, [r5, #0]
	bl sub_02021FC8
	cmp r0, #2
	bne _0200D698
	ldr r0, [r4, #0]
	sub r0, r0, r6
	str r0, [r4, #0]
_0200D698:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200D67C

	thumb_func_start sub_0200D69C
sub_0200D69C: ; 0x0200D69C
	ldr r3, _0200D6A0 ; =sub_02021CF8
	bx r3
	; .align 2, 0
_0200D6A0: .word sub_02021CF8
	thumb_func_end sub_0200D69C

	thumb_func_start sub_0200D6A4
sub_0200D6A4: ; 0x0200D6A4
	ldr r3, _0200D6AC ; =sub_0200D69C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D6AC: .word sub_0200D69C
	thumb_func_end sub_0200D6A4

	thumb_func_start sub_0200D6B0
sub_0200D6B0: ; 0x0200D6B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02021D2C
	add r4, r0, #0
	ldr r0, _0200D6E4 ; =0x45800000
	add r1, r6, #0
	bl sub_020E18B0
	bl sub_020E1740
	str r0, [r4, #0]
	ldr r0, _0200D6E4 ; =0x45800000
	add r1, r7, #0
	bl sub_020E18B0
	bl sub_020E1740
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021C70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200D6E4: .word 0x45800000
	thumb_func_end sub_0200D6B0

	thumb_func_start sub_0200D6E8
sub_0200D6E8: ; 0x0200D6E8
	ldr r3, _0200D6F0 ; =sub_0200D6B0
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D6F0: .word sub_0200D6B0
	thumb_func_end sub_0200D6E8

	thumb_func_start sub_0200D6F4
sub_0200D6F4: ; 0x0200D6F4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp]
	bl sub_02021D2C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020E17B4
	add r6, r0, #0
	ldr r0, _0200D748 ; =0x45800000
	add r1, r5, #0
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	bl sub_020E1740
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	bl sub_020E17B4
	add r5, r0, #0
	ldr r0, _0200D748 ; =0x45800000
	ldr r1, [sp]
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020E0B00
	bl sub_020E1740
	str r0, [r4, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02021C70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200D748: .word 0x45800000
	thumb_func_end sub_0200D6F4

	thumb_func_start sub_0200D74C
sub_0200D74C: ; 0x0200D74C
	ldr r3, _0200D754 ; =sub_0200D6F4
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D754: .word sub_0200D6F4
	thumb_func_end sub_0200D74C

	thumb_func_start sub_0200D758
sub_0200D758: ; 0x0200D758
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02021D2C
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_020E17B4
	ldr r1, _0200D784 ; =0x45800000
	bl sub_020E1304
	str r0, [r5, #0]
	ldr r0, [r6, #4]
	bl sub_020E17B4
	ldr r1, _0200D784 ; =0x45800000
	bl sub_020E1304
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	nop
_0200D784: .word 0x45800000
	thumb_func_end sub_0200D758

	thumb_func_start sub_0200D788
sub_0200D788: ; 0x0200D788
	ldr r3, _0200D790 ; =sub_0200D758
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D790: .word sub_0200D758
	thumb_func_end sub_0200D788

	thumb_func_start sub_0200D794
sub_0200D794: ; 0x0200D794
	ldr r3, _0200D798 ; =sub_02021C94
	bx r3
	; .align 2, 0
_0200D798: .word sub_02021C94
	thumb_func_end sub_0200D794

	thumb_func_start sub_0200D79C
sub_0200D79C: ; 0x0200D79C
	ldr r3, _0200D7A4 ; =sub_0200D794
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D7A4: .word sub_0200D794
	thumb_func_end sub_0200D79C

	thumb_func_start sub_0200D7A8
sub_0200D7A8: ; 0x0200D7A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_02021D30
	add r0, r0, r5
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0
	bl sub_02021C94
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200D7A8

	thumb_func_start sub_0200D7C0
sub_0200D7C0: ; 0x0200D7C0
	ldr r3, _0200D7C8 ; =sub_0200D7A8
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D7C8: .word sub_0200D7A8
	thumb_func_end sub_0200D7C0

	thumb_func_start sub_0200D7CC
sub_0200D7CC: ; 0x0200D7CC
	ldr r3, _0200D7D0 ; =sub_02021D0C
	bx r3
	; .align 2, 0
_0200D7D0: .word sub_02021D0C
	thumb_func_end sub_0200D7CC

	thumb_func_start sub_0200D7D4
sub_0200D7D4: ; 0x0200D7D4
	ldr r3, _0200D7DC ; =sub_0200D7CC
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D7DC: .word sub_0200D7CC
	thumb_func_end sub_0200D7D4

	thumb_func_start sub_0200D7E0
sub_0200D7E0: ; 0x0200D7E0
	push {lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #0]
	add r1, sp, #0
	bl sub_02021C60
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_0200D7E0

	thumb_func_start sub_0200D7FC
sub_0200D7FC: ; 0x0200D7FC
	ldr r3, _0200D804 ; =sub_02021FA0
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D804: .word sub_02021FA0
	thumb_func_end sub_0200D7FC

	thumb_func_start sub_0200D808
sub_0200D808: ; 0x0200D808
	ldr r3, _0200D80C ; =sub_02021FE0
	bx r3
	; .align 2, 0
_0200D80C: .word sub_02021FE0
	thumb_func_end sub_0200D808

	thumb_func_start sub_0200D810
sub_0200D810: ; 0x0200D810
	ldr r3, _0200D818 ; =sub_0200D808
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D818: .word sub_0200D808
	thumb_func_end sub_0200D810

	thumb_func_start sub_0200D81C
sub_0200D81C: ; 0x0200D81C
	ldr r3, _0200D824 ; =sub_020220F4
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D824: .word sub_020220F4
	thumb_func_end sub_0200D81C

	thumb_func_start sub_0200D828
sub_0200D828: ; 0x0200D828
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200D846
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D846:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0200985C
	add r5, r0, #0
	beq _0200D874
	bl sub_0200A39C
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D874:
	bl sub_02022974
	cmp r5, #0
	beq _0200D882
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D882:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D828

	thumb_func_start sub_0200D888
sub_0200D888: ; 0x0200D888
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200D8A6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D8A6:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0200985C
	add r5, r0, #0
	beq _0200D8D4
	bl sub_0200A450
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D8D4:
	bl sub_02022974
	cmp r5, #0
	beq _0200D8E2
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D8E2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D888

	thumb_func_start sub_0200D8E8
sub_0200D8E8: ; 0x0200D8E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200D906
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D906:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_02009A4C
	add r5, r0, #0
	beq _0200D934
	bl sub_0200A450
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D934:
	bl sub_02022974
	cmp r5, #0
	beq _0200D942
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D942:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D8E8

	thumb_func_start sub_0200D948
sub_0200D948: ; 0x0200D948
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02009DC8
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r7, #0
	bl sub_02009968
	add r0, r6, #0
	bl sub_0200A4C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D948

	thumb_func_start sub_0200D97C
sub_0200D97C: ; 0x0200D97C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02009DC8
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r2, r7, #0
	bl sub_020099D4
	add r0, r6, #0
	bl sub_0200A6B8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D97C

	thumb_func_start sub_0200D9B0
sub_0200D9B0: ; 0x0200D9B0
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0200D9B0

	thumb_func_start sub_0200D9B4
sub_0200D9B4: ; 0x0200D9B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02009DC8
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r7, #0
	bl sub_02009C14
	add r0, r6, #0
	bl sub_0200A4C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D9B4