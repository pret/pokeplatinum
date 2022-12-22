	.include "macros/function.inc"
	.include "include/unk_0200F85C.inc"

	

	.text


	thumb_func_start sub_0200F85C
sub_0200F85C: ; 0x0200F85C
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0200F872
	mov r1, #1
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	bl sub_02010238
	mov r0, #0
	pop {r3, pc}
_0200F872:
	bl sub_020102D8
	pop {r3, pc}
	thumb_func_end sub_0200F85C

	thumb_func_start sub_0200F878
sub_0200F878: ; 0x0200F878
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0200F890
	mov r1, #0
	str r1, [r0, #0x28]
	mov r2, #1
	str r2, [r0, #0x2c]
	bl sub_02010238
	mov r0, #0
	pop {r3, pc}
_0200F890:
	bl sub_020102D8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200F878

	thumb_func_start sub_0200F898
sub_0200F898: ; 0x0200F898
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F8C0
	ldr r1, _0200F8C8 ; =0x020E5128
	ldr r0, _0200F8CC ; =0x021007B4
	str r1, [r0, #0x18]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F8D0 ; =0x021007CC
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F8C0:
	bl sub_02011F88
	pop {r4, pc}
	nop
_0200F8C8: .word 0x020E5128
_0200F8CC: .word 0x021007B4
_0200F8D0: .word 0x021007CC
	thumb_func_end sub_0200F898

	thumb_func_start sub_0200F8D4
sub_0200F8D4: ; 0x0200F8D4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F8FA
	ldr r1, _0200F900 ; =0x020E5120
	ldr r0, _0200F904 ; =0x021007B4
	str r1, [r0, #8]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F908 ; =0x021007BC
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F8FA:
	bl sub_02011F88
	pop {r4, pc}
	; .align 2, 0
_0200F900: .word 0x020E5120
_0200F904: .word 0x021007B4
_0200F908: .word 0x021007BC
	thumb_func_end sub_0200F8D4

	thumb_func_start sub_0200F90C
sub_0200F90C: ; 0x0200F90C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F934
	ldr r1, _0200F93C ; =0x020E511C
	ldr r0, _0200F940 ; =0x021007B4
	str r1, [r0, #0]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F944 ; =0x021007B4
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F934:
	bl sub_02011F88
	pop {r4, pc}
	nop
_0200F93C: .word 0x020E511C
_0200F940: .word 0x021007B4
_0200F944: .word 0x021007B4
	thumb_func_end sub_0200F90C

	thumb_func_start sub_0200F948
sub_0200F948: ; 0x0200F948
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F96E
	ldr r1, _0200F974 ; =0x020E5124
	ldr r0, _0200F978 ; =0x021007B4
	str r1, [r0, #0x30]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F97C ; =0x021007E4
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F96E:
	bl sub_02011F88
	pop {r4, pc}
	; .align 2, 0
_0200F974: .word 0x020E5124
_0200F978: .word 0x021007B4
_0200F97C: .word 0x021007E4
	thumb_func_end sub_0200F948

	thumb_func_start sub_0200F980
sub_0200F980: ; 0x0200F980
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F9A2
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F9A8 ; =0x020E51F0
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F9A2:
	bl sub_02010D44
	pop {r4, pc}
	; .align 2, 0
_0200F9A8: .word 0x020E51F0
	thumb_func_end sub_0200F980

	thumb_func_start sub_0200F9AC
sub_0200F9AC: ; 0x0200F9AC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F9CC
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F9D4 ; =0x020E5214
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F9CC:
	bl sub_02010D44
	pop {r4, pc}
	nop
_0200F9D4: .word 0x020E5214
	thumb_func_end sub_0200F9AC

	thumb_func_start sub_0200F9D8
sub_0200F9D8: ; 0x0200F9D8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FA00
	ldr r1, _0200FA08 ; =0x020E515C
	ldr r0, _0200FA0C ; =0x021007B4
	str r1, [r0, #0x28]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FA10 ; =0x021007DC
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FA00:
	bl sub_02011F88
	pop {r4, pc}
	nop
_0200FA08: .word 0x020E515C
_0200FA0C: .word 0x021007B4
_0200FA10: .word 0x021007DC
	thumb_func_end sub_0200F9D8

	thumb_func_start sub_0200FA14
sub_0200FA14: ; 0x0200FA14
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FA3A
	ldr r1, _0200FA40 ; =0x020E518C
	ldr r0, _0200FA44 ; =0x021007B4
	str r1, [r0, #0x38]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FA48 ; =0x021007EC
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FA3A:
	bl sub_02011F88
	pop {r4, pc}
	; .align 2, 0
_0200FA40: .word 0x020E518C
_0200FA44: .word 0x021007B4
_0200FA48: .word 0x021007EC
	thumb_func_end sub_0200FA14

	thumb_func_start sub_0200FA4C
sub_0200FA4C: ; 0x0200FA4C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FA74
	ldr r1, _0200FA7C ; =0x020E513C
	ldr r0, _0200FA80 ; =0x021007B4
	str r1, [r0, #0x10]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FA84 ; =0x021007C4
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FA74:
	bl sub_02011F88
	pop {r4, pc}
	nop
_0200FA7C: .word 0x020E513C
_0200FA80: .word 0x021007B4
_0200FA84: .word 0x021007C4
	thumb_func_end sub_0200FA4C

	thumb_func_start sub_0200FA88
sub_0200FA88: ; 0x0200FA88
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FAAE
	ldr r1, _0200FAB4 ; =0x020E5194
	ldr r0, _0200FAB8 ; =0x021007B4
	str r1, [r0, #0x40]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FABC ; =0x021007F4
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FAAE:
	bl sub_02011F88
	pop {r4, pc}
	; .align 2, 0
_0200FAB4: .word 0x020E5194
_0200FAB8: .word 0x021007B4
_0200FABC: .word 0x021007F4
	thumb_func_end sub_0200FA88

	thumb_func_start sub_0200FAC0
sub_0200FAC0: ; 0x0200FAC0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FAE2
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FAE8 ; =0x020E5238
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FAE2:
	bl sub_02010D44
	pop {r4, pc}
	; .align 2, 0
_0200FAE8: .word 0x020E5238
	thumb_func_end sub_0200FAC0

	thumb_func_start sub_0200FAEC
sub_0200FAEC: ; 0x0200FAEC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FB0C
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FB14 ; =0x020E5244
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FB0C:
	bl sub_02010D44
	pop {r4, pc}
	nop
_0200FB14: .word 0x020E5244
	thumb_func_end sub_0200FAEC

	thumb_func_start sub_0200FB18
sub_0200FB18: ; 0x0200FB18
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FB3C
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FB44 ; =0x020E5250
	ldr r2, _0200FB48 ; =0x020E525C
	add r0, r4, #0
	bl sub_02010D94
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FB3C:
	bl sub_02010DEC
	pop {r4, pc}
	nop
_0200FB44: .word 0x020E5250
_0200FB48: .word 0x020E525C
	thumb_func_end sub_0200FB18

	thumb_func_start sub_0200FB4C
sub_0200FB4C: ; 0x0200FB4C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FB6E
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FB74 ; =0x020E5268
	ldr r2, _0200FB78 ; =0x020E5280
	add r0, r4, #0
	bl sub_02010D94
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FB6E:
	bl sub_02010DEC
	pop {r4, pc}
	; .align 2, 0
_0200FB74: .word 0x020E5268
_0200FB78: .word 0x020E5280
	thumb_func_end sub_0200FB4C

	thumb_func_start sub_0200FB7C
sub_0200FB7C: ; 0x0200FB7C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FB9E
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FBA4 ; =0x020E528C
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FB9E:
	bl sub_02010F64
	pop {r4, pc}
	; .align 2, 0
_0200FBA4: .word 0x020E528C
	thumb_func_end sub_0200FB7C

	thumb_func_start sub_0200FBA8
sub_0200FBA8: ; 0x0200FBA8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FBC8
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FBD0 ; =0x020E519C
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FBC8:
	bl sub_02010F64
	pop {r4, pc}
	nop
_0200FBD0: .word 0x020E519C
	thumb_func_end sub_0200FBA8

	thumb_func_start sub_0200FBD4
sub_0200FBD4: ; 0x0200FBD4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FBF6
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FBFC ; =0x020E51A8
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FBF6:
	bl sub_02010F64
	pop {r4, pc}
	; .align 2, 0
_0200FBFC: .word 0x020E51A8
	thumb_func_end sub_0200FBD4

	thumb_func_start sub_0200FC00
sub_0200FC00: ; 0x0200FC00
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FC20
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FC28 ; =0x020E51B4
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FC20:
	bl sub_02010F64
	pop {r4, pc}
	nop
_0200FC28: .word 0x020E51B4
	thumb_func_end sub_0200FC00

	thumb_func_start sub_0200FC2C
sub_0200FC2C: ; 0x0200FC2C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FC4E
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FC54 ; =0x020E514C
	add r0, r4, #0
	bl sub_02011204
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FC4E:
	bl sub_0201123C
	pop {r4, pc}
	; .align 2, 0
_0200FC54: .word 0x020E514C
	thumb_func_end sub_0200FC2C

	thumb_func_start sub_0200FC58
sub_0200FC58: ; 0x0200FC58
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FC78
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FC80 ; =0x020E5184
	add r0, r4, #0
	bl sub_02011204
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FC78:
	bl sub_0201123C
	pop {r4, pc}
	nop
_0200FC80: .word 0x020E5184
	thumb_func_end sub_0200FC58

	thumb_func_start sub_0200FC84
sub_0200FC84: ; 0x0200FC84
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FCA6
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FCAC ; =0x020E51D8
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FCA6:
	bl sub_02010D44
	pop {r4, pc}
	; .align 2, 0
_0200FCAC: .word 0x020E51D8
	thumb_func_end sub_0200FC84

	thumb_func_start sub_0200FCB0
sub_0200FCB0: ; 0x0200FCB0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FCD0
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FCD8 ; =0x020E51E4
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FCD0:
	bl sub_02010D44
	pop {r4, pc}
	nop
_0200FCD8: .word 0x020E51E4
	thumb_func_end sub_0200FCB0

	thumb_func_start sub_0200FCDC
sub_0200FCDC: ; 0x0200FCDC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FCFE
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FD04 ; =0x020E51FC
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FCFE:
	bl sub_02010D44
	pop {r4, pc}
	; .align 2, 0
_0200FD04: .word 0x020E51FC
	thumb_func_end sub_0200FCDC

	thumb_func_start sub_0200FD08
sub_0200FD08: ; 0x0200FD08
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FD28
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FD30 ; =0x020E5220
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FD28:
	bl sub_02010D44
	pop {r4, pc}
	nop
_0200FD30: .word 0x020E5220
	thumb_func_end sub_0200FD08

	thumb_func_start sub_0200FD34
sub_0200FD34: ; 0x0200FD34
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FD56
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FD5C ; =0x020E5174
	add r0, r4, #0
	bl sub_02011408
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FD56:
	bl sub_02011440
	pop {r4, pc}
	; .align 2, 0
_0200FD5C: .word 0x020E5174
	thumb_func_end sub_0200FD34

	thumb_func_start sub_0200FD60
sub_0200FD60: ; 0x0200FD60
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FD80
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FD88 ; =0x020E516C
	add r0, r4, #0
	bl sub_02011408
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FD80:
	bl sub_02011440
	pop {r4, pc}
	nop
_0200FD88: .word 0x020E516C
	thumb_func_end sub_0200FD60

	thumb_func_start sub_0200FD8C
sub_0200FD8C: ; 0x0200FD8C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FDD0
	ldr r0, _0200FDD8 ; =0x020E52A4
	mov r1, #4
	str r0, [sp]
	ldr r0, _0200FDDC ; =0x020E52B4
	str r0, [sp, #4]
	add r0, sp, #0
	strh r1, [r0, #8]
	mov r1, #0
	strh r1, [r0, #0xa]
	mov r1, #0x3f
	strb r1, [r0, #0xc]
	mov r1, #0x20
	strb r1, [r0, #0xd]
	mov r1, #1
	strh r1, [r0, #0xe]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020116A0
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FDD0:
	bl sub_020116D8
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0200FDD8: .word 0x020E52A4
_0200FDDC: .word 0x020E52B4
	thumb_func_end sub_0200FD8C

	thumb_func_start sub_0200FDE0
sub_0200FDE0: ; 0x0200FDE0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FE20
	ldr r0, _0200FE28 ; =0x020E52C4
	mov r1, #4
	str r0, [sp]
	ldr r0, _0200FE2C ; =0x020E52D4
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	mov r1, #0x3f
	strb r1, [r0, #0xc]
	mov r1, #0x20
	strb r1, [r0, #0xd]
	strh r2, [r0, #0xe]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020116A0
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FE20:
	bl sub_020116D8
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0200FE28: .word 0x020E52C4
_0200FE2C: .word 0x020E52D4
	thumb_func_end sub_0200FDE0

	thumb_func_start sub_0200FE30
sub_0200FE30: ; 0x0200FE30
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FE58
	ldr r1, _0200FE60 ; =0x020E5298
	ldr r0, _0200FE64 ; =0x021007B4
	str r1, [r0, #0x20]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FE68 ; =0x021007D4
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FE58:
	bl sub_02011F88
	pop {r4, pc}
	nop
_0200FE60: .word 0x020E5298
_0200FE64: .word 0x021007B4
_0200FE68: .word 0x021007D4
	thumb_func_end sub_0200FE30

	thumb_func_start sub_0200FE6C
sub_0200FE6C: ; 0x0200FE6C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FE92
	ldr r1, _0200FE98 ; =0x020E51C0
	ldr r0, _0200FE9C ; =0x021007B4
	str r1, [r0, #0x48]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FEA0 ; =0x021007FC
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FE92:
	bl sub_02011F88
	pop {r4, pc}
	; .align 2, 0
_0200FE98: .word 0x020E51C0
_0200FE9C: .word 0x021007B4
_0200FEA0: .word 0x021007FC
	thumb_func_end sub_0200FE6C

	thumb_func_start sub_0200FEA4
sub_0200FEA4: ; 0x0200FEA4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FEDE
	ldr r1, _0200FEE8 ; =0x020E511C
	add r0, sp, #0
	ldrh r2, [r1, #0x28]
	strh r2, [r0]
	ldrh r2, [r1, #0x2a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x2c]
	ldrh r1, [r1, #0x2e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011960
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FEDE:
	bl sub_020119A0
	add sp, #8
	pop {r4, pc}
	nop
_0200FEE8: .word 0x020E511C
	thumb_func_end sub_0200FEA4

	thumb_func_start sub_0200FEEC
sub_0200FEEC: ; 0x0200FEEC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FF24
	ldr r1, _0200FF2C ; =0x020E511C
	add r0, sp, #0
	ldrh r2, [r1, #0x38]
	strh r2, [r0]
	ldrh r2, [r1, #0x3a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x3c]
	ldrh r1, [r1, #0x3e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011960
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FF24:
	bl sub_020119A0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0200FF2C: .word 0x020E511C
	thumb_func_end sub_0200FEEC

	thumb_func_start sub_0200FF30
sub_0200FF30: ; 0x0200FF30
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FF6A
	ldr r1, _0200FF74 ; =0x020E515C
	add r0, sp, #0
	ldrh r2, [r1, #8]
	strh r2, [r0]
	ldrh r2, [r1, #0xa]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011C94
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FF6A:
	bl sub_02011CD4
	add sp, #8
	pop {r4, pc}
	nop
_0200FF74: .word 0x020E515C
	thumb_func_end sub_0200FF30

	thumb_func_start sub_0200FF78
sub_0200FF78: ; 0x0200FF78
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FFB0
	ldr r1, _0200FFB8 ; =0x020E511C
	add r0, sp, #0
	ldrh r2, [r1, #0x18]
	strh r2, [r0]
	ldrh r2, [r1, #0x1a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011C94
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FFB0:
	bl sub_02011CD4
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0200FFB8: .word 0x020E511C
	thumb_func_end sub_0200FF78

	thumb_func_start sub_0200FFBC
sub_0200FFBC: ; 0x0200FFBC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FFDE
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FFE4 ; =0x020E5274
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FFDE:
	bl sub_02010F64
	pop {r4, pc}
	; .align 2, 0
_0200FFE4: .word 0x020E5274
	thumb_func_end sub_0200FFBC

	thumb_func_start sub_0200FFE8
sub_0200FFE8: ; 0x0200FFE8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010008
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _02010010 ; =0x020E51CC
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010008:
	bl sub_02010F64
	pop {r4, pc}
	nop
_02010010: .word 0x020E51CC
	thumb_func_end sub_0200FFE8

	thumb_func_start sub_02010014
sub_02010014: ; 0x02010014
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010036
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0201003C ; =0x020E5208
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010036:
	bl sub_02010D44
	pop {r4, pc}
	; .align 2, 0
_0201003C: .word 0x020E5208
	thumb_func_end sub_02010014

	thumb_func_start sub_02010040
sub_02010040: ; 0x02010040
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010060
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _02010068 ; =0x020E522C
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010060:
	bl sub_02010D44
	pop {r4, pc}
	nop
_02010068: .word 0x020E522C
	thumb_func_end sub_02010040

	thumb_func_start sub_0201006C
sub_0201006C: ; 0x0201006C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010094
	ldr r1, _0201009C ; =0x020E517C
	ldr r0, _020100A0 ; =0x021007B4
	str r1, [r0, #0x5c]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _020100A4 ; =0x02100804
	add r0, r4, #0
	bl sub_020121C4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010094:
	bl sub_02012228
	pop {r4, pc}
	nop
_0201009C: .word 0x020E517C
_020100A0: .word 0x021007B4
_020100A4: .word 0x02100804
	thumb_func_end sub_0201006C

	thumb_func_start sub_020100A8
sub_020100A8: ; 0x020100A8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020100CE
	ldr r1, _020100D4 ; =0x020E512C
	ldr r0, _020100D8 ; =0x021007B4
	str r1, [r0, #0x74]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _020100DC ; =0x0210081C
	add r0, r4, #0
	bl sub_020121C4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020100CE:
	bl sub_02012228
	pop {r4, pc}
	; .align 2, 0
_020100D4: .word 0x020E512C
_020100D8: .word 0x021007B4
_020100DC: .word 0x0210081C
	thumb_func_end sub_020100A8

	thumb_func_start sub_020100E0
sub_020100E0: ; 0x020100E0
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	ldr r2, _020100F4 ; =0x020F983C
	add r1, r1, #1
	lsl r1, r1, #1
	ldr r3, _020100F8 ; =FX_Div
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bx r3
	; .align 2, 0
_020100F4: .word 0x020F983C
_020100F8: .word FX_Div
	thumb_func_end sub_020100E0

	thumb_func_start sub_020100FC
sub_020100FC: ; 0x020100FC
	push {r4, lr}
	add r4, r1, #0
	bl sub_020100E0
	lsl r2, r4, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020100FC

	thumb_func_start sub_02010124
sub_02010124: ; 0x02010124
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_020100E0
	cmp r6, r7
	bge _0201016E
	lsl r1, r6, #2
	str r0, [sp]
	asr r0, r0, #0x1f
	lsl r4, r6, #0xc
	add r5, r5, r1
	str r0, [sp, #4]
_02010142:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	asr r3, r4, #0x1f
	add r2, r4, #0
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _02010174 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r0, r0, #0xc
	stmia r5!, {r0}
	mov r0, #1
	lsl r0, r0, #0xc
	add r6, r6, #1
	add r4, r4, r0
	cmp r6, r7
	blt _02010142
_0201016E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02010174: .word 0x00000000
	thumb_func_end sub_02010124

	thumb_func_start sub_02010178
sub_02010178: ; 0x02010178
	push {r4, lr}
	add r4, r1, #0
	bl sub_020100E0
	add r1, r0, #0
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r0, r0, #1
	lsl r0, r0, #0xc
	bl FX_Div
	pop {r4, pc}
	thumb_func_end sub_02010178

	thumb_func_start sub_02010190
sub_02010190: ; 0x02010190
	ldr r3, _0201019C ; =_s32_div_f
	sub r0, r1, r0
	lsl r0, r0, #7
	add r1, r2, #0
	bx r3
	nop
_0201019C: .word _s32_div_f
	thumb_func_end sub_02010190

	thumb_func_start sub_020101A0
sub_020101A0: ; 0x020101A0
	add r0, r0, r1
	bpl _020101A6
	mov r0, #0
_020101A6:
	cmp r0, #0xff
	ble _020101AC
	mov r0, #0xff
_020101AC:
	bx lr
	; .align 2, 0
	thumb_func_end sub_020101A0

	thumb_func_start sub_020101B0
sub_020101B0: ; 0x020101B0
	ldr r3, [r0, #0]
	ldr r2, [r1, #0]
	add r2, r3, r2
	str r2, [r0, #0]
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	add r2, r3, r2
	str r2, [r0, #4]
	ldr r3, [r0, #8]
	ldr r2, [r1, #8]
	add r2, r3, r2
	str r2, [r0, #8]
	ldr r2, [r0, #0xc]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020101B0

	thumb_func_start sub_020101D4
sub_020101D4: ; 0x020101D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r6, r2, #0
	ldrb r2, [r5]
	ldr r4, [sp, #0x18]
	ldr r7, [sp, #0x1c]
	lsl r2, r2, #7
	str r2, [r0, #0]
	ldrb r2, [r5, #1]
	lsl r2, r2, #7
	str r2, [r0, #4]
	ldrb r2, [r5, #2]
	lsl r2, r2, #7
	str r2, [r0, #8]
	ldrb r2, [r5, #3]
	lsl r2, r2, #7
	str r2, [r0, #0xc]
	ldrb r0, [r4]
	add r2, r7, #0
	str r0, [r1, #0]
	ldrb r0, [r4, #1]
	str r0, [r1, #4]
	ldrb r0, [r4, #2]
	str r0, [r1, #8]
	ldrb r0, [r4, #3]
	str r0, [r1, #0xc]
	ldrb r0, [r5]
	ldrb r1, [r4]
	bl sub_02010190
	str r0, [r6, #0]
	ldrb r0, [r5, #1]
	ldrb r1, [r4, #1]
	add r2, r7, #0
	bl sub_02010190
	str r0, [r6, #4]
	ldrb r0, [r5, #2]
	ldrb r1, [r4, #2]
	add r2, r7, #0
	bl sub_02010190
	str r0, [r6, #8]
	ldrb r0, [r5, #3]
	ldrb r1, [r4, #3]
	add r2, r7, #0
	bl sub_02010190
	str r0, [r6, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020101D4

	thumb_func_start sub_02010238
sub_02010238: ; 0x02010238
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #0x1c
	bl sub_02018144
	str r0, [r5, #0x14]
	mov r2, #0x1c
	mov r1, #0
_0201024C:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0201024C
	ldr r4, [r5, #0x14]
	cmp r6, #0
	ldrh r1, [r5, #0x24]
	ldr r0, _020102D4 ; =0x00007FFF
	bne _02010280
	cmp r1, r0
	bne _02010268
	mov r7, #0x10
	mov r6, #0
	b _020102A0
_02010268:
	cmp r1, #0
	bne _02010274
	mov r7, #0xf
	mvn r7, r7
	mov r6, #0
	b _020102A0
_02010274:
	mov r7, #0xf
	mvn r7, r7
	mov r6, #0
	bl sub_02022974
	b _020102A0
_02010280:
	cmp r1, r0
	bne _0201028A
	mov r7, #0
	mov r6, #0x10
	b _020102A0
_0201028A:
	cmp r1, #0
	bne _02010296
	mov r7, #0
	add r6, r7, #0
	sub r6, #0x10
	b _020102A0
_02010296:
	mov r7, #0
	add r6, r7, #0
	sub r6, #0x10
	bl sub_02022974
_020102A0:
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	bl sub_0200F44C
	ldr r0, [r5, #4]
	add r1, r6, #0
	str r0, [r4, #0]
	ldr r0, [r5, #8]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	lsl r0, r7, #7
	str r0, [r4, #0xc]
	lsl r0, r6, #7
	str r0, [r4, #0x10]
	ldr r2, [r5, #4]
	add r0, r7, #0
	bl sub_02010190
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x18]
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020102D4: .word 0x00007FFF
	thumb_func_end sub_02010238

	thumb_func_start sub_020102D8
sub_020102D8: ; 0x020102D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	mov r4, #0
	ldr r0, [r5, #0x14]
	cmp r1, #1
	beq _020102F0
	cmp r1, #2
	beq _02010300
	cmp r1, #3
	beq _02010312
	b _02010314
_020102F0:
	bl sub_02010318
	cmp r0, #1
	bne _02010314
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010314
_02010300:
	bl sub_020181C4
	add r0, r4, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r4, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010314
_02010312:
	mov r4, #1
_02010314:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020102D8

	thumb_func_start sub_02010318
sub_02010318: ; 0x02010318
	push {r4, lr}
	add r1, r0, #0
	ldr r0, [r1, #8]
	mov r4, #0
	add r2, r0, #1
	str r2, [r1, #8]
	ldr r0, [r1, #4]
	cmp r2, r0
	blt _02010356
	str r4, [r1, #8]
	ldr r0, [r1, #0]
	sub r0, r0, #1
	cmp r0, #0
	ble _02010340
	str r0, [r1, #0]
	ldr r2, [r1, #0xc]
	ldr r0, [r1, #0x14]
	add r0, r2, r0
	str r0, [r1, #0xc]
	b _02010346
_02010340:
	ldr r0, [r1, #0x10]
	mov r4, #1
	str r0, [r1, #0xc]
_02010346:
	ldr r2, [r1, #0xc]
	ldr r0, [r1, #0x18]
	asr r1, r2, #6
	lsr r1, r1, #0x19
	add r1, r2, r1
	asr r1, r1, #7
	bl sub_0200F44C
_02010356:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02010318

	thumb_func_start sub_0201035C
sub_0201035C: ; 0x0201035C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bne _02010366
	bl sub_02022974
_02010366:
	ldr r0, _02010578 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xc0
	bge _0201040C
	add r5, r0, #1
	cmp r5, #0xbf
	ble _02010376
	sub r5, #0xc0
_02010376:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02010426
	add r0, r4, #0
	mov r1, #0
	bl sub_02010604
	ldr r3, [r4, #8]
	lsl r5, r5, #1
	mov r4, #6
	add r1, r0, r5
	lsl r4, r4, #6
	ldrsh r2, [r1, r4]
	lsl r4, r4, #2
	ldrsh r1, [r0, r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	ldr r0, _0201057C ; =0x04000004
	bne _020103E0
	cmp r3, #0
	bne _020103C0
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _0201040C
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_020103C0:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _0201040C
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010580 ; =0x04001040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	pop {r4, r5, r6, pc}
_020103E0:
	cmp r3, #0
	bne _02010404
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _0201040C
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_02010404:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	bne _0201040E
_0201040C:
	b _02010574
_0201040E:
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010584 ; =0x04001042
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	pop {r4, r5, r6, pc}
_02010426:
	add r0, r4, #0
	mov r1, #0
	bl sub_02010604
	add r3, r0, #0
	lsl r5, r5, #1
	mov r6, #6
	add r1, r3, r5
	lsl r6, r6, #6
	ldrsh r2, [r1, r6]
	lsl r6, r6, #2
	ldrsh r1, [r3, r5]
	ldr r3, [r3, r6]
	ldr r0, [r4, #8]
	cmp r3, #0
	bne _0201048C
	cmp r0, #0
	ldr r0, _0201057C ; =0x04000004
	bne _0201046C
	ldrh r6, [r0]
	mov r3, #2
	tst r3, r6
	beq _020104D0
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0]
	b _020104D0
_0201046C:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _020104D0
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010580 ; =0x04001040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	b _020104D0
_0201048C:
	cmp r0, #0
	ldr r0, _0201057C ; =0x04000004
	bne _020104B2
	ldrh r6, [r0]
	mov r3, #2
	tst r3, r6
	beq _020104D0
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0]
	b _020104D0
_020104B2:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _020104D0
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010584 ; =0x04001042
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
_020104D0:
	add r0, r4, #0
	mov r1, #1
	bl sub_02010604
	ldr r3, [r4, #8]
	mov r4, #6
	add r1, r0, r5
	lsl r4, r4, #6
	ldrsh r2, [r1, r4]
	lsl r4, r4, #2
	ldrsh r1, [r0, r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	ldr r0, _0201057C ; =0x04000004
	bne _02010532
	cmp r3, #0
	bne _02010512
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _02010574
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_02010512:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _02010574
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010580 ; =0x04001040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	pop {r4, r5, r6, pc}
_02010532:
	cmp r3, #0
	bne _02010556
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _02010574
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_02010556:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _02010574
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010584 ; =0x04001042
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
_02010574:
	pop {r4, r5, r6, pc}
	nop
_02010578: .word 0x04000006
_0201057C: .word 0x04000004
_02010580: .word 0x04001040
_02010584: .word 0x04001042
	thumb_func_end sub_0201035C

	thumb_func_start sub_02010588
sub_02010588: ; 0x02010588
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	beq _0201059E
	cmp r4, #1
	beq _0201059E
	cmp r4, #2
	beq _020105B8
	pop {r4, r5, r6, pc}
_0201059E:
	ldr r1, _020105E4 ; =0x00000604
	add r0, r3, #0
	bl sub_02018144
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r5, #4]
	str r6, [r5, #8]
	mov r0, #6
	ldr r1, [r5, #0]
	lsl r0, r0, #8
	str r4, [r1, r0]
	pop {r4, r5, r6, pc}
_020105B8:
	ldr r1, _020105E8 ; =0x00000C08
	add r0, r3, #0
	bl sub_02018144
	str r0, [r5, #0]
	mov r0, #2
	str r0, [r5, #4]
	mov r0, #6
	mov r3, #0
	lsl r0, r0, #8
	str r6, [r5, #8]
	add r4, r3, #0
	add r1, r0, #4
_020105D2:
	ldr r2, [r5, #0]
	add r2, r2, r4
	str r3, [r2, r0]
	add r3, r3, #1
	add r4, r4, r1
	cmp r3, #2
	blt _020105D2
	pop {r4, r5, r6, pc}
	nop
_020105E4: .word 0x00000604
_020105E8: .word 0x00000C08
	thumb_func_end sub_02010588

	thumb_func_start sub_020105EC
sub_020105EC: ; 0x020105EC
	ldr r3, _020105F0 ; =sub_020105F4
	bx r3
	; .align 2, 0
_020105F0: .word sub_020105F4
	thumb_func_end sub_020105EC

	thumb_func_start sub_020105F4
sub_020105F4: ; 0x020105F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_020105F4

	thumb_func_start sub_02010604
sub_02010604: ; 0x02010604
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, r4
	bgt _02010614
	bl sub_02022974
_02010614:
	ldr r0, _02010620 ; =0x00000604
	ldr r1, [r5, #0]
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	nop
_02010620: .word 0x00000604
	thumb_func_end sub_02010604

	thumb_func_start sub_02010624
sub_02010624: ; 0x02010624
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ble _02010650
	mov r7, #3
	lsl r7, r7, #8
	add r6, r7, #0
_02010638:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02010604
	add r1, r0, r6
	add r2, r7, #0
	bl memcpy
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02010638
_02010650:
	ldr r0, [sp]
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02010624

	thumb_func_start sub_02010658
sub_02010658: ; 0x02010658
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r2, #0
	cmp r0, #0
	bne _02010670
	add r0, r5, #0
	mov r1, #0
	bl sub_02012634
	add sp, #0xc
	pop {r4, r5, pc}
_02010670:
	add r0, r5, #0
	mov r1, #1
	bl sub_02012634
	mov r2, #0
	add r0, r5, #0
	mov r1, #0x3f
	add r3, r2, #0
	str r4, [sp]
	bl sub_02012650
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp, #8]
	bl sub_02012698
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02012678
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02010658

	thumb_func_start sub_020106A8
sub_020106A8: ; 0x020106A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	ldr r2, [sp, #0x34]
	add r6, r0, #0
	add r5, r3, #0
	ldr r4, [sp, #0x20]
	cmp r2, #0
	bne _020106E4
	add r0, r1, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020124AC
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_02012534
	str r5, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	str r4, [sp, #4]
	bl sub_02012574
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020106E4:
	mov r2, #0
	str r4, [sp]
	bl sub_02012650
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_02012678
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x24]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r6, #0
	str r4, [sp, #8]
	bl sub_02012698
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020106A8

	thumb_func_start sub_02010710
sub_02010710: ; 0x02010710
	push {r3, lr}
	cmp r3, #0
	bne _02010720
	add r0, r1, #0
	add r1, r2, #0
	bl sub_02012480
	pop {r3, pc}
_02010720:
	bl sub_02012634
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02010710

	thumb_func_start sub_02010728
sub_02010728: ; 0x02010728
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0xc3
	add r6, r1, #0
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	add r7, r3, #0
	bl memset
	cmp r4, #1
	bne _02010752
	mov r0, #6
	lsl r0, r0, #6
	str r7, [r5, r0]
	mov r0, #0xc2
	lsl r0, r0, #2
	strb r4, [r5, r0]
	add r0, r0, #1
	strb r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02010752:
	mov r0, #6
	lsl r0, r0, #6
	str r7, [r5, r0]
	mov r0, #0xc1
	ldr r1, [sp, #0x18]
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r1, r0, #4
	strb r4, [r5, r1]
	add r0, r0, #5
	strb r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02010728

	thumb_func_start sub_0201076C
sub_0201076C: ; 0x0201076C
	ldr r3, _02010778 ; =sub_0200DA3C
	add r1, r0, #0
	ldr r0, _0201077C ; =sub_020107AC
	ldr r2, _02010780 ; =0x000003FF
	bx r3
	nop
_02010778: .word sub_0200DA3C
_0201077C: .word sub_020107AC
_02010780: .word 0x000003FF
	thumb_func_end sub_0201076C

	thumb_func_start sub_02010784
sub_02010784: ; 0x02010784
	push {r3, lr}
	ldr r3, _02010794 ; =0x00000309
	str r2, [sp]
	ldrb r3, [r1, r3]
	ldr r2, _02010798 ; =sub_020107D8
	bl sub_0200F6D8
	pop {r3, pc}
	; .align 2, 0
_02010794: .word 0x00000309
_02010798: .word sub_020107D8
	thumb_func_end sub_02010784

	thumb_func_start sub_0201079C
sub_0201079C: ; 0x0201079C
	ldr r3, _020107A4 ; =0x00000309
	ldrb r1, [r1, r3]
	ldr r3, _020107A8 ; =sub_0200F704
	bx r3
	; .align 2, 0
_020107A4: .word 0x00000309
_020107A8: .word sub_0200F704
	thumb_func_end sub_0201079C

	thumb_func_start sub_020107AC
sub_020107AC: ; 0x020107AC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xc0
	add r6, r7, #0
	str r0, [sp]
	add r5, r1, #0
	mov r4, #0
	add r6, #0xc4
_020107BA:
	add r0, r5, #0
	add r0, #0xc0
	add r1, r5, #0
	add r2, r7, #0
	bl memcpy
	add r4, r4, #1
	add r5, r5, r6
	cmp r4, #2
	blt _020107BA
	ldr r0, [sp]
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020107AC

	thumb_func_start sub_020107D8
sub_020107D8: ; 0x020107D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _020107E2
	bl sub_02022974
_020107E2:
	ldr r0, _02010AD0 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xc0
	bge _02010864
	add r0, r0, #1
	cmp r0, #0xbf
	ble _020107F2
	sub r0, #0xc0
_020107F2:
	mov r2, #0xc2
	lsl r2, r2, #2
	ldrb r1, [r4, r2]
	cmp r1, #1
	beq _020107FE
	b _02010998
_020107FE:
	add r0, r4, r0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	bne _020108CE
	add r0, r2, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02010AD4 ; =0x04000004
	bne _0201082E
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _02010848
	add r0, #0x46
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	b _02010848
_0201082E:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010848
	ldr r1, _02010AD8 ; =0x0400104A
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
_02010848:
	ldr r0, _02010ADC ; =0x00000309
	ldrb r1, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02010894
	cmp r1, #0
	bne _02010878
	ldr r2, _02010AD4 ; =0x04000004
	mov r0, #2
	ldrh r1, [r2]
	tst r0, r1
	bne _02010866
_02010864:
	b _02010CDC
_02010866:
	add r2, #0x44
	ldrh r1, [r2]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x20
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_02010878:
	ldr r0, _02010AD4 ; =0x04000004
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010980
	ldr r1, _02010AE0 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_02010894:
	cmp r1, #0
	ldr r0, _02010AD4 ; =0x04000004
	bne _020108B4
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _02010980
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _02010AE4 ; =0xFFFFC0FF
	and r3, r1
	lsl r1, r2, #0xc
	orr r3, r1
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_020108B4:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010980
	ldr r2, _02010AE0 ; =0x04001048
	ldr r0, _02010AE4 ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	lsr r0, r2, #0xd
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_020108CE:
	add r0, r2, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02010AD4 ; =0x04000004
	bne _020108F2
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _0201090A
	add r0, #0x46
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x20
	orr r2, r1
	orr r1, r2
	strh r1, [r0]
	b _0201090A
_020108F2:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _0201090A
	ldr r1, _02010AD8 ; =0x0400104A
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1]
_0201090A:
	ldr r0, _02010ADC ; =0x00000309
	ldrb r1, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02010AD4 ; =0x04000004
	bne _02010956
	cmp r1, #0
	bne _0201093A
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _02010980
	add r0, #0x44
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_0201093A:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010980
	ldr r1, _02010AE0 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_02010956:
	cmp r1, #0
	bne _02010978
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _02010980
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _02010AE4 ; =0xFFFFC0FF
	and r3, r1
	mov r1, #0x3f
	lsl r1, r1, #8
	orr r3, r1
	lsl r1, r2, #0xc
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_02010978:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	bne _02010982
_02010980:
	b _02010CDC
_02010982:
	ldr r2, _02010AE0 ; =0x04001048
	ldr r0, _02010AE4 ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x3f
	lsl r0, r0, #8
	orr r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_02010998:
	add r1, r4, r0
	add r1, #0xc0
	ldrb r1, [r1]
	cmp r1, #0
	bne _02010A64
	add r1, r2, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	ldr r1, _02010AD4 ; =0x04000004
	bne _020109C8
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _020109E2
	add r1, #0x46
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r1]
	b _020109E2
_020109C8:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _020109E2
	ldr r2, _02010AD8 ; =0x0400104A
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x3f
	orr r3, r1
	mov r1, #0x20
	orr r1, r3
	strh r1, [r2]
_020109E2:
	ldr r1, _02010ADC ; =0x00000309
	ldrb r2, [r4, r1]
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #0
	ldr r1, _02010AD4 ; =0x04000004
	bne _02010A2A
	cmp r2, #0
	bne _02010A10
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _02010A36
	add r1, #0x44
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r1]
	b _02010B42
_02010A10:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _02010A36
	ldr r2, _02010AE0 ; =0x04001048
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x20
	orr r3, r1
	orr r1, r3
	strh r1, [r2]
	b _02010B42
_02010A2A:
	cmp r2, #0
	bne _02010A4A
	ldrh r2, [r1]
	mov r3, #2
	tst r2, r3
	bne _02010A38
_02010A36:
	b _02010B42
_02010A38:
	add r1, #0x44
	ldrh r5, [r1]
	ldr r2, _02010AE4 ; =0xFFFFC0FF
	and r5, r2
	lsl r2, r3, #0xc
	orr r5, r2
	orr r2, r5
	strh r2, [r1]
	b _02010B42
_02010A4A:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _02010B42
	ldr r3, _02010AE0 ; =0x04001048
	ldr r1, _02010AE4 ; =0xFFFFC0FF
	ldrh r2, [r3]
	and r2, r1
	lsr r1, r3, #0xd
	orr r2, r1
	orr r1, r2
	strh r1, [r3]
	b _02010B42
_02010A64:
	add r1, r2, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	ldr r1, _02010AD4 ; =0x04000004
	bne _02010A88
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _02010AA0
	add r1, #0x46
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r1]
	b _02010AA0
_02010A88:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _02010AA0
	ldr r2, _02010AD8 ; =0x0400104A
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x20
	orr r3, r1
	orr r1, r3
	strh r1, [r2]
_02010AA0:
	ldr r1, _02010ADC ; =0x00000309
	ldrb r2, [r4, r1]
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #0
	ldr r1, _02010AD4 ; =0x04000004
	bne _02010B04
	cmp r2, #0
	bne _02010AE8
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _02010B42
	add r1, #0x44
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r1]
	b _02010B42
	; .align 2, 0
_02010AD0: .word 0x04000006
_02010AD4: .word 0x04000004
_02010AD8: .word 0x0400104A
_02010ADC: .word 0x00000309
_02010AE0: .word 0x04001048
_02010AE4: .word 0xFFFFC0FF
_02010AE8:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _02010B42
	ldr r2, _02010CE0 ; =0x04001048
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x3f
	orr r3, r1
	mov r1, #0x20
	orr r1, r3
	strh r1, [r2]
	b _02010B42
_02010B04:
	cmp r2, #0
	bne _02010B26
	ldrh r2, [r1]
	mov r3, #2
	tst r2, r3
	beq _02010B42
	add r1, #0x44
	ldrh r5, [r1]
	ldr r2, _02010CE4 ; =0xFFFFC0FF
	and r5, r2
	mov r2, #0x3f
	lsl r2, r2, #8
	orr r5, r2
	lsl r2, r3, #0xc
	orr r2, r5
	strh r2, [r1]
	b _02010B42
_02010B26:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _02010B42
	ldr r3, _02010CE0 ; =0x04001048
	ldr r1, _02010CE4 ; =0xFFFFC0FF
	ldrh r2, [r3]
	and r2, r1
	mov r1, #0x3f
	lsl r1, r1, #8
	orr r2, r1
	lsr r1, r3, #0xd
	orr r1, r2
	strh r1, [r3]
_02010B42:
	mov r1, #0x61
	lsl r1, r1, #2
	add r1, r4, r1
	add r0, r1, r0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, _02010CE8 ; =0x00000309
	bne _02010C18
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02010CEC ; =0x04000004
	bne _02010B78
	ldrh r3, [r0]
	mov r2, #2
	tst r2, r3
	beq _02010B92
	add r0, #0x46
	ldrh r3, [r0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r0]
	b _02010B92
_02010B78:
	ldrh r2, [r0]
	mov r0, #2
	tst r0, r2
	beq _02010B92
	ldr r2, _02010CF0 ; =0x0400104A
	mov r0, #0x3f
	ldrh r3, [r2]
	bic r3, r0
	mov r0, #0x3f
	orr r3, r0
	mov r0, #0x20
	orr r0, r3
	strh r0, [r2]
_02010B92:
	ldr r0, _02010CE8 ; =0x00000309
	ldrb r2, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02010BDE
	cmp r2, #0
	bne _02010BC0
	ldr r2, _02010CEC ; =0x04000004
	mov r0, #2
	ldrh r1, [r2]
	tst r0, r1
	beq _02010BCA
	add r2, #0x44
	ldrh r1, [r2]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x20
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_02010BC0:
	ldr r0, _02010CEC ; =0x04000004
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	bne _02010BCC
_02010BCA:
	b _02010CDC
_02010BCC:
	ldr r1, _02010CE0 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_02010BDE:
	cmp r2, #0
	ldr r0, _02010CEC ; =0x04000004
	bne _02010BFE
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _02010CDC
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _02010CE4 ; =0xFFFFC0FF
	and r3, r1
	lsl r1, r2, #0xc
	orr r3, r1
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_02010BFE:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010CDC
	ldr r2, _02010CE0 ; =0x04001048
	ldr r0, _02010CE4 ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	lsr r0, r2, #0xd
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_02010C18:
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02010CEC ; =0x04000004
	bne _02010C3A
	ldrh r3, [r0]
	mov r2, #2
	tst r2, r3
	beq _02010C52
	add r0, #0x46
	ldrh r3, [r0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r0]
	b _02010C52
_02010C3A:
	ldrh r2, [r0]
	mov r0, #2
	tst r0, r2
	beq _02010C52
	ldr r2, _02010CF0 ; =0x0400104A
	mov r0, #0x3f
	ldrh r3, [r2]
	bic r3, r0
	mov r0, #0x20
	orr r3, r0
	orr r0, r3
	strh r0, [r2]
_02010C52:
	ldr r0, _02010CE8 ; =0x00000309
	ldrb r2, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	ldr r0, _02010CEC ; =0x04000004
	bne _02010C9E
	cmp r2, #0
	bne _02010C82
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _02010CDC
	add r0, #0x44
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_02010C82:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010CDC
	ldr r1, _02010CE0 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_02010C9E:
	cmp r2, #0
	bne _02010CC0
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _02010CDC
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _02010CE4 ; =0xFFFFC0FF
	and r3, r1
	mov r1, #0x3f
	lsl r1, r1, #8
	orr r3, r1
	lsl r1, r2, #0xc
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_02010CC0:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02010CDC
	ldr r2, _02010CE0 ; =0x04001048
	ldr r0, _02010CE4 ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x3f
	lsl r0, r0, #8
	orr r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	strh r0, [r2]
_02010CDC:
	pop {r3, r4, r5, pc}
	nop
_02010CE0: .word 0x04001048
_02010CE4: .word 0xFFFFC0FF
_02010CE8: .word 0x00000309
_02010CEC: .word 0x04000004
_02010CF0: .word 0x0400104A
	thumb_func_end sub_020107D8

	thumb_func_start sub_02010CF4
sub_02010CF4: ; 0x02010CF4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #0x4c
	bl sub_02018144
	str r0, [r5, #0x14]
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, r4, #0
	bl sub_02010E48
	ldrb r0, [r6, #8]
	cmp r0, #0
	ldr r0, [r5, #0x18]
	bne _02010D30
	ldr r2, [r4, #0x30]
	ldr r3, [r4, #0x44]
	mov r1, #1
	bl sub_02010710
	b _02010D3A
_02010D30:
	ldr r2, [r4, #0x30]
	ldr r3, [r4, #0x44]
	mov r1, #2
	bl sub_02010710
_02010D3A:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02010CF4

	thumb_func_start sub_02010D44
sub_02010D44: ; 0x02010D44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02010D5C
	cmp r0, #2
	beq _02010D78
	cmp r0, #3
	beq _02010D8C
	b _02010D8E
_02010D5C:
	add r0, r4, #0
	bl sub_02010EA4
	cmp r0, #1
	bne _02010D8E
	ldr r0, [r4, #0x44]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010D8E
_02010D78:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010D8E
_02010D8C:
	mov r6, #1
_02010D8E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02010D44

	thumb_func_start sub_02010D94
sub_02010D94: ; 0x02010D94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #0x98
	add r7, r2, #0
	bl sub_02018144
	str r0, [r5, #0x14]
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, r4, #0
	bl sub_02010E48
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, #0x4c
	bl sub_02010E48
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #0x10]
	ldr r3, [r4, #0x44]
	mov r1, #3
	bl sub_02010710
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02010D94

	thumb_func_start sub_02010DEC
sub_02010DEC: ; 0x02010DEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r7, #0
	ldr r6, [r5, #0x14]
	cmp r0, #1
	beq _02010E04
	cmp r0, #2
	beq _02010E2C
	cmp r0, #3
	beq _02010E40
	b _02010E42
_02010E04:
	add r0, r6, #0
	bl sub_02010EA4
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x4c
	bl sub_02010EA4
	add r0, r4, r0
	cmp r0, #2
	bne _02010E42
	ldr r0, [r6, #0x44]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010E42
_02010E2C:
	add r0, r6, #0
	bl sub_020181C4
	add r0, r7, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r7, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010E42
_02010E40:
	mov r7, #1
_02010E42:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02010DEC

	thumb_func_start sub_02010E48
sub_02010E48: ; 0x02010E48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r1, r4, #4
	add r5, r0, #0
	add r6, r2, #0
	str r1, [sp]
	add r1, r5, #0
	add r2, r5, #0
	add r7, r3, #0
	add r1, #0x20
	add r2, #0x10
	add r3, r4, #0
	str r6, [sp, #4]
	bl sub_020101D4
	ldr r1, [sp, #0x30]
	str r1, [r5, #0x30]
	ldrb r0, [r4, #8]
	str r0, [r5, #0x34]
	str r6, [r5, #0x38]
	str r7, [r5, #0x3c]
	mov r0, #0
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x34]
	str r0, [r5, #0x48]
	ldrb r2, [r4, #0xb]
	str r2, [r5, #0x44]
	str r1, [sp]
	ldrb r1, [r4]
	str r1, [sp, #4]
	ldrb r1, [r4, #1]
	str r1, [sp, #8]
	ldrb r1, [r4, #2]
	str r1, [sp, #0xc]
	ldrb r1, [r4, #3]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x44]
	str r1, [sp, #0x14]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xa]
	ldrb r3, [r4, #8]
	bl sub_020106A8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02010E48

	thumb_func_start sub_02010EA4
sub_02010EA4: ; 0x02010EA4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0x40]
	add r2, r1, #1
	str r2, [r4, #0x40]
	ldr r1, [r4, #0x3c]
	cmp r2, r1
	blt _02010F24
	mov r1, #0
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x38]
	sub r1, r1, #1
	cmp r1, #0
	ble _02010ECE
	str r1, [r4, #0x38]
	add r1, r4, #0
	add r1, #0x10
	bl sub_020101B0
	b _02010EEC
_02010ECE:
	ldr r0, [r4, #0x2c]
	str r0, [sp]
	ldr r0, [r4, #0x34]
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	str r0, [sp, #8]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	bl sub_02012698
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02010EEC:
	ldr r1, [r4, #0xc]
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r0, r0, #7
	str r0, [sp]
	ldr r0, [r4, #0x34]
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	str r0, [sp, #8]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	asr r1, r2, #6
	lsr r1, r1, #0x19
	add r1, r2, r1
	ldr r0, [r4, #0x48]
	asr r2, r3, #6
	lsr r2, r2, #0x19
	add r2, r3, r2
	ldr r4, [r4, #8]
	asr r1, r1, #7
	asr r3, r4, #6
	lsr r3, r3, #0x19
	add r3, r4, r3
	asr r2, r2, #7
	asr r3, r3, #7
	bl sub_02012698
_02010F24:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02010EA4

	thumb_func_start sub_02010F2C
sub_02010F2C: ; 0x02010F2C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x38
	bl sub_02018144
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02010FC0
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02010F2C

	thumb_func_start sub_02010F64
sub_02010F64: ; 0x02010F64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02010F7C
	cmp r0, #2
	beq _02010F98
	cmp r0, #3
	beq _02010FB2
	b _02010FB6
_02010F7C:
	add r0, r4, #0
	bl sub_0201109C
	cmp r0, #1
	bne _02010FBA
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010FBA
_02010F98:
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010FBA
_02010FB2:
	mov r6, #1
	b _02010FBA
_02010FB6:
	bl sub_02022974
_02010FBA:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02010F64

	thumb_func_start sub_02010FC0
sub_02010FC0: ; 0x02010FC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #2
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl sub_02010190
	str r0, [sp, #0x20]
	ldrb r1, [r4, #8]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02010588
	mov r0, #0
	ldrsh r1, [r4, r0]
	lsl r1, r1, #7
	str r1, [r5, #0xc]
	mov r1, #4
	ldrsh r1, [r4, r1]
	str r1, [r5, #0x10]
	mov r1, #6
	ldrsh r1, [r4, r1]
	str r1, [r5, #0x14]
	ldr r1, [sp, #0x20]
	str r1, [r5, #0x18]
	ldr r1, [sp, #0x18]
	str r1, [r5, #0x1c]
	ldr r1, [sp, #0x1c]
	str r1, [r5, #0x20]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x28]
	ldrb r0, [r4, #0xb]
	str r0, [r5, #0x2c]
	add r0, r5, #0
	bl sub_02011180
	ldr r0, _02011090 ; =sub_02010624
	ldr r2, _02011094 ; =0x000003FF
	add r1, r5, #0
	bl sub_0200DA3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02010604
	mov r1, #3
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xa]
	ldrb r3, [r4, #8]
	add r0, r7, #0
	bl sub_020106A8
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _02011070
	ldr r3, [r5, #0x2c]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02010710
	b _0201107C
_02011070:
	ldr r3, [r5, #0x2c]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02010710
_0201107C:
	ldr r0, [sp, #0x44]
	ldr r2, _02011098 ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r5, #0x34]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200F6D8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02011090: .word sub_02010624
_02011094: .word 0x000003FF
_02011098: .word sub_0201035C
	thumb_func_end sub_02010FC0

	thumb_func_start sub_0201109C
sub_0201109C: ; 0x0201109C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	add r2, r1, #1
	str r2, [r4, #0x24]
	ldr r1, [r4, #0x20]
	cmp r2, r1
	blt _020110E0
	mov r1, #0
	str r1, [r4, #0x24]
	ldr r1, [r4, #0x1c]
	sub r1, r1, #1
	cmp r1, #0
	ble _020110D2
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x18]
	add r1, r2, r1
	str r1, [r4, #0xc]
	bl sub_02011180
	ldr r0, _020110E4 ; =sub_02010624
	ldr r2, _020110E8 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _020110E0
_020110D2:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x28]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_020110E0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_020110E4: .word sub_02010624
_020110E8: .word 0x000003FF
	thumb_func_end sub_0201109C

	thumb_func_start sub_020110EC
sub_020110EC: ; 0x020110EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	asr r1, r0, #6
	lsr r1, r1, #0x19
	add r1, r0, r1
	asr r1, r1, #7
	ldr r5, [sp, #0x20]
	ldr r4, [sp, #0x24]
	sub r0, r3, r2
	bpl _02011104
	neg r0, r0
_02011104:
	cmp r0, r1
	blt _02011112
	mov r0, #0
	str r0, [r5, #0]
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_02011112:
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	asr r7, r0, #0x1f
	lsl r0, r1, #0xc
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl _ull_mul
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r6, r1, #0
	add r1, r7, #0
	add r2, r0, #0
	add r3, r7, #0
	bl _ull_mul
	add r2, r0, #0
	add r3, r1, #0
	mov r0, #2
	ldr r1, [sp, #8]
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r1, r0
	adc r6, r7
	lsl r1, r6, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r2, r1
	adc r3, r7
	lsl r1, r3, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r0, r0, r2
	bl FX_Sqrt
	asr r2, r0, #0xc
	ldr r0, [sp]
	sub r0, r0, r2
	str r0, [r5, #0]
	bpl _0201116C
	add r0, r7, #0
	str r0, [r5, #0]
_0201116C:
	ldr r1, [r5, #0]
	lsl r0, r2, #1
	add r0, r1, r0
	str r0, [r4, #0]
	cmp r0, #0xff
	ble _0201117C
	mov r0, #0xff
	str r0, [r4, #0]
_0201117C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020110EC

	thumb_func_start sub_02011180
sub_02011180: ; 0x02011180
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0
	add r5, r0, #0
	bl sub_02010604
	add r7, r0, #0
	mov r4, #0
	add r6, r7, #0
_02011192:
	ldr r2, [r5, #0x14]
	cmp r4, r2
	bgt _020111AC
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	add r3, r4, #0
	bl sub_020110EC
	b _020111E6
_020111AC:
	lsl r0, r2, #1
	cmp r4, r0
	bgt _020111D4
	sub r0, r0, r4
	lsl r0, r0, #1
	add r1, r7, r0
	mov r0, #3
	lsl r0, r0, #8
	ldrsh r0, [r1, r0]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #1
	sub r0, r0, r4
	lsl r0, r0, #1
	add r1, r7, r0
	mov r0, #0x12
	lsl r0, r0, #6
	ldrsh r0, [r1, r0]
	str r0, [sp, #8]
	b _020111E6
_020111D4:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	add r3, r4, #0
	bl sub_020110EC
_020111E6:
	mov r0, #3
	ldr r1, [sp, #0xc]
	lsl r0, r0, #8
	strh r1, [r6, r0]
	mov r0, #0x12
	ldr r1, [sp, #8]
	lsl r0, r0, #6
	strh r1, [r6, r0]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #0xc0
	blt _02011192
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02011180

	thumb_func_start sub_02011204
sub_02011204: ; 0x02011204
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x30
	bl sub_02018144
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011298
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011204

	thumb_func_start sub_0201123C
sub_0201123C: ; 0x0201123C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02011254
	cmp r0, #2
	beq _02011270
	cmp r0, #3
	beq _0201128A
	b _0201128E
_02011254:
	add r0, r4, #0
	bl sub_02011360
	cmp r0, #1
	bne _02011292
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011292
_02011270:
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011292
_0201128A:
	mov r6, #1
	b _02011292
_0201128E:
	bl sub_02022974
_02011292:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201123C

	thumb_func_start sub_02011298
sub_02011298: ; 0x02011298
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl sub_02010190
	str r0, [r5, #0x10]
	ldrb r1, [r4, #4]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02010588
	ldrh r0, [r4]
	lsl r0, r0, #7
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x24]
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x2c]
	ldrb r0, [r4, #7]
	str r0, [r5, #0x20]
	add r0, r5, #0
	bl sub_020113B0
	ldr r0, _02011354 ; =sub_02010624
	ldr r2, _02011358 ; =0x000003FF
	add r1, r5, #0
	bl sub_0200DA3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02010604
	mov r1, #3
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #6]
	ldrb r3, [r4, #4]
	add r0, r7, #0
	bl sub_020106A8
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02011334
	ldr r3, [r5, #0x20]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02010710
	b _02011340
_02011334:
	ldr r3, [r5, #0x20]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02010710
_02011340:
	ldr r0, [sp, #0x44]
	ldr r2, _0201135C ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r5, #0x28]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200F6D8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02011354: .word sub_02010624
_02011358: .word 0x000003FF
_0201135C: .word sub_0201035C
	thumb_func_end sub_02011298

	thumb_func_start sub_02011360
sub_02011360: ; 0x02011360
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	add r2, r1, #1
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	cmp r2, r1
	blt _020113A4
	mov r1, #0
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	sub r1, r1, #1
	cmp r1, #0
	ble _02011396
	str r1, [r4, #0x14]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r1, r2, r1
	str r1, [r4, #0xc]
	bl sub_020113B0
	ldr r0, _020113A8 ; =sub_02010624
	ldr r2, _020113AC ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _020113A4
_02011396:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_020113A4:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_020113A8: .word sub_02010624
_020113AC: .word 0x000003FF
	thumb_func_end sub_02011360

	thumb_func_start sub_020113B0
sub_020113B0: ; 0x020113B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x104
	add r4, r0, #0
	mov r1, #0
	bl sub_02010604
	ldr r1, [r4, #0xc]
	add r5, r0, #0
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r0, r0, #7
	add r1, sp, #0
	mov r2, #0xc0
	mov r3, #0
	bl sub_02010124
	mov r7, #0x12
	mov r6, #0
	add r4, sp, #0
	lsl r7, r7, #6
_020113DC:
	ldr r1, [r4, #0]
	mov r0, #0x80
	neg r1, r1
	bl sub_020101A0
	mov r1, #3
	lsl r1, r1, #8
	strh r0, [r5, r1]
	ldr r1, [r4, #0]
	mov r0, #0x80
	bl sub_020101A0
	strh r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #2
	cmp r6, #0xc0
	blt _020113DC
	add sp, #0x1fc
	add sp, #0x104
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020113B0

	thumb_func_start sub_02011408
sub_02011408: ; 0x02011408
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x34
	bl sub_02018144
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011494
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011408

	thumb_func_start sub_02011440
sub_02011440: ; 0x02011440
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02011458
	cmp r0, #2
	beq _02011474
	cmp r0, #3
	beq _0201148E
	b _02011490
_02011458:
	add r0, r4, #0
	bl sub_02011568
	cmp r0, #1
	bne _02011490
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011490
_02011474:
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011490
_0201148E:
	mov r6, #1
_02011490:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02011440

	thumb_func_start sub_02011494
sub_02011494: ; 0x02011494
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	ldrh r1, [r4, #2]
	ldrh r0, [r4]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	sub r0, r1, r0
	add r1, r2, #0
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl _s32_div_f
	str r0, [sp, #0x20]
	ldrb r1, [r4, #4]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02010588
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [r5, #0xc]
	ldrh r0, [r4]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x1c]
	mov r0, #0
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x28]
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x30]
	ldrb r0, [r4, #7]
	str r0, [r5, #0x24]
	add r0, r5, #0
	bl sub_020115B8
	ldr r0, _0201155C ; =sub_02010624
	ldr r2, _02011560 ; =0x000003FF
	add r1, r5, #0
	bl sub_0200DA3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02010604
	mov r1, #0xf
	str r6, [sp]
	lsl r1, r1, #6
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x15
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #6]
	ldrb r3, [r4, #4]
	add r0, r7, #0
	bl sub_020106A8
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0201153C
	ldr r3, [r5, #0x24]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02010710
	b _02011548
_0201153C:
	ldr r3, [r5, #0x24]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02010710
_02011548:
	ldr r0, [sp, #0x44]
	ldr r2, _02011564 ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200F6D8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0201155C: .word sub_02010624
_02011560: .word 0x000003FF
_02011564: .word sub_0201035C
	thumb_func_end sub_02011494

	thumb_func_start sub_02011568
sub_02011568: ; 0x02011568
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x20]
	add r2, r1, #1
	str r2, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	cmp r2, r1
	blt _020115AC
	mov r1, #0
	str r1, [r4, #0x20]
	ldr r1, [r4, #0x18]
	sub r1, r1, #1
	cmp r1, #0
	ble _0201159E
	str r1, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r1, r2, r1
	str r1, [r4, #0x10]
	bl sub_020115B8
	ldr r0, _020115B0 ; =sub_02010624
	ldr r2, _020115B4 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _020115AC
_0201159E:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x30]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_020115AC:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_020115B0: .word sub_02010624
_020115B4: .word 0x000003FF
	thumb_func_end sub_02011568

	thumb_func_start sub_020115B8
sub_020115B8: ; 0x020115B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x110
	add r4, r0, #0
	mov r1, #0
	bl sub_02010604
	str r0, [sp]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0xc]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02011698 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r7, r1, #0xc
	lsl r0, r7, #1
	mov r1, #0x15
	bl _s32_div_f
	add r0, r0, #1
	lsl r0, r0, #1
	mov r1, #0xb4
	sub r2, r1, r0
	ldr r0, _0201169C ; =0x0000FFFF
	add r1, #0xb4
	mul r0, r2
	bl _s32_div_f
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r4, r1, #1
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_02010178
	asr r0, r0, #0xc
	str r0, [sp, #4]
	cmp r0, #0xc0
	blt _02011624
	bl sub_02022974
_02011624:
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0xc
	mov r3, #0
	bl sub_02010124
	ldr r5, [sp]
	mov r4, #0
_02011634:
	ldr r0, [sp, #4]
	add r1, r4, #1
	sub r0, r0, r1
	add r6, r7, #0
	cmp r0, #0
	ble _0201164C
	lsl r1, r0, #2
	add r0, sp, #0xc
	ldr r0, [r0, r1]
	cmp r0, r7
	ble _0201164C
	add r6, r0, #0
_0201164C:
	mov r0, #0x80
	neg r1, r6
	bl sub_020101A0
	str r0, [sp, #8]
	mov r0, #0x80
	add r1, r6, #0
	bl sub_020101A0
	ldr r1, [sp, #8]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	mov r1, #3
	lsl r1, r1, #8
	strh r2, [r5, r1]
	asr r1, r0, #0x10
	mov r0, #0x12
	lsl r0, r0, #6
	strh r1, [r5, r0]
	mov r0, #0xbf
	sub r0, r0, r4
	lsl r3, r0, #1
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, r3
	mov r3, #3
	lsl r3, r3, #8
	strh r2, [r0, r3]
	mov r2, #0x12
	lsl r2, r2, #6
	add r5, r5, #2
	strh r1, [r0, r2]
	cmp r4, #0x60
	blt _02011634
	add sp, #0x1fc
	add sp, #0x110
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02011698: .word 0x020F983C
_0201169C: .word 0x0000FFFF
	thumb_func_end sub_020115B8

	thumb_func_start sub_020116A0
sub_020116A0: ; 0x020116A0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x30
	bl sub_02018144
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011738
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020116A0

	thumb_func_start sub_020116D8
sub_020116D8: ; 0x020116D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _020116F0
	cmp r0, #2
	beq _0201170C
	cmp r0, #3
	beq _0201172C
	b _02011730
_020116F0:
	add r0, r4, #0
	bl sub_0201184C
	cmp r0, #1
	bne _02011734
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011734
_0201170C:
	add r0, r4, #0
	bl sub_0201189C
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011734
_0201172C:
	mov r6, #1
	b _02011734
_02011730:
	bl sub_02022974
_02011734:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020116D8

	thumb_func_start sub_02011738
sub_02011738: ; 0x02011738
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r6, r0, #0
	str r2, [sp, #0x18]
	ldr r0, [sp, #0x38]
	ldrh r2, [r5, #8]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x44]
	mov r1, #0x30
	mul r1, r2
	str r3, [sp, #0x1c]
	str r0, [sp, #0x44]
	bl sub_02018144
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _02011760
	bl sub_02022974
_02011760:
	ldrh r0, [r5, #8]
	str r0, [r6, #0x10]
	mov r0, #0
	str r0, [sp, #0x20]
	ldrh r0, [r5, #8]
	cmp r0, #0
	ble _020117A0
	ldr r4, [sp, #0x20]
	add r7, r4, #0
_02011772:
	ldr r0, [r5, #4]
	ldr r2, [r6, #0xc]
	add r0, r0, r4
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	add r0, r2, r7
	ldr r3, [r5, #0]
	add r1, r0, #0
	add r2, r2, r7
	add r1, #0x20
	add r2, #0x10
	add r3, r3, r4
	bl sub_020101D4
	ldr r0, [sp, #0x20]
	ldrh r1, [r5, #8]
	add r0, r0, #1
	add r4, r4, #4
	add r7, #0x30
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _02011772
_020117A0:
	ldrh r1, [r5, #0xa]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x44]
	add r0, r6, #0
	bl sub_02010588
	ldr r0, [sp, #0x18]
	str r0, [r6, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [r6, #0x18]
	mov r0, #0
	str r0, [r6, #0x1c]
	ldr r0, [sp, #0x3c]
	str r0, [r6, #0x24]
	ldr r0, [sp, #0x40]
	str r0, [r6, #0x28]
	ldr r0, [sp, #0x44]
	str r0, [r6, #0x2c]
	ldrh r0, [r5, #0xe]
	str r0, [r6, #0x20]
	add r0, r6, #0
	bl sub_020118AC
	ldr r0, _02011840 ; =sub_02010624
	ldr r2, _02011844 ; =0x000003FF
	add r1, r6, #0
	bl sub_0200DA3C
	add r0, r6, #0
	mov r1, #0
	bl sub_02010604
	ldr r1, [sp, #0x38]
	str r1, [sp]
	mov r1, #3
	lsl r1, r1, #8
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x14]
	ldrb r1, [r5, #0xc]
	ldrb r2, [r5, #0xd]
	ldrh r3, [r5, #0xa]
	ldr r0, [sp, #0x3c]
	bl sub_020106A8
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	ldr r0, [r6, #0x24]
	bne _02011820
	ldr r2, [sp, #0x38]
	ldr r3, [r6, #0x20]
	mov r1, #1
	bl sub_02010710
	b _0201182A
_02011820:
	ldr r2, [sp, #0x38]
	ldr r3, [r6, #0x20]
	mov r1, #2
	bl sub_02010710
_0201182A:
	ldr r0, [sp, #0x44]
	ldr r2, _02011848 ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r6, #0x28]
	ldr r3, [sp, #0x38]
	add r1, r6, #0
	bl sub_0200F6D8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02011840: .word sub_02010624
_02011844: .word 0x000003FF
_02011848: .word sub_0201035C
	thumb_func_end sub_02011738

	thumb_func_start sub_0201184C
sub_0201184C: ; 0x0201184C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	add r2, r1, #1
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	cmp r2, r1
	blt _0201188E
	mov r1, #0
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	sub r1, r1, #1
	cmp r1, #0
	ble _02011880
	str r1, [r4, #0x14]
	bl sub_02011938
	add r0, r4, #0
	bl sub_020118AC
	ldr r0, _02011894 ; =sub_02010624
	ldr r2, _02011898 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _0201188E
_02011880:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_0201188E:
	mov r0, #0
	pop {r4, pc}
	nop
_02011894: .word sub_02010624
_02011898: .word 0x000003FF
	thumb_func_end sub_0201184C

	thumb_func_start sub_0201189C
sub_0201189C: ; 0x0201189C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end sub_0201189C

	thumb_func_start sub_020118AC
sub_020118AC: ; 0x020118AC
	push {r4, r5, r6, lr}
	mov r1, #0
	add r6, r0, #0
	bl sub_02010604
	mov r2, #3
	lsl r2, r2, #8
	add r0, r0, r2
	mov r1, #0
	bl memset
	ldr r0, [r6, #0x10]
	sub r4, r0, #1
	bmi _020118DE
	mov r0, #0x30
	add r5, r4, #0
	mul r5, r0
_020118CE:
	ldr r1, [r6, #0xc]
	add r0, r6, #0
	add r1, r1, r5
	bl sub_020118E0
	sub r5, #0x30
	sub r4, r4, #1
	bpl _020118CE
_020118DE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020118AC

	thumb_func_start sub_020118E0
sub_020118E0: ; 0x020118E0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_02010604
	ldr r2, [r4, #0]
	ldr r3, [r4, #8]
	asr r1, r2, #6
	lsr r1, r1, #0x19
	add r1, r2, r1
	asr r2, r1, #7
	asr r1, r3, #6
	ldr r5, [r4, #0xc]
	lsr r1, r1, #0x19
	add r1, r3, r1
	asr r3, r5, #6
	lsr r3, r3, #0x19
	add r3, r5, r3
	ldr r4, [r4, #4]
	asr r5, r3, #7
	asr r3, r4, #6
	lsr r3, r3, #0x19
	add r3, r4, r3
	asr r3, r3, #7
	asr r1, r1, #7
	cmp r3, r5
	bge _02011936
	lsl r4, r3, #1
	lsl r1, r1, #0x10
	add r4, r0, r4
	lsl r0, r2, #0x10
	asr r6, r1, #0x10
	mov r1, #3
	mov r2, #0x12
	asr r0, r0, #0x10
	lsl r1, r1, #8
	lsl r2, r2, #6
_0201192A:
	strh r0, [r4, r1]
	strh r6, [r4, r2]
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r5
	blt _0201192A
_02011936:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020118E0

	thumb_func_start sub_02011938
sub_02011938: ; 0x02011938
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _0201195C
	add r4, r6, #0
_02011946:
	ldr r1, [r5, #0xc]
	add r0, r1, r4
	add r1, r1, r4
	add r1, #0x10
	bl sub_020101B0
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x30
	cmp r6, r0
	blt _02011946
_0201195C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02011938

	thumb_func_start sub_02011960
sub_02011960: ; 0x02011960
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x38
	bl sub_02018144
	str r0, [r5, #0x14]
	mov r1, #0
	mov r2, #0x38
	bl memset
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011A00
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011960

	thumb_func_start sub_020119A0
sub_020119A0: ; 0x020119A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _020119B8
	cmp r0, #2
	beq _020119D4
	cmp r0, #3
	beq _020119F4
	b _020119F8
_020119B8:
	add r0, r4, #0
	bl sub_02011AFC
	cmp r0, #1
	bne _020119FC
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _020119FC
_020119D4:
	add r0, r4, #0
	bl sub_02011B54
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _020119FC
_020119F4:
	mov r6, #1
	b _020119FC
_020119F8:
	bl sub_02022974
_020119FC:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020119A0

	thumb_func_start sub_02011A00
sub_02011A00: ; 0x02011A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	str r1, [r5, #0xc]
	ldrh r1, [r4]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r1, [r5, #0x10]
	ldrh r2, [r4, #2]
	ldrh r1, [r4]
	ldr r6, [sp, #0x40]
	ldr r3, [sp, #0x4c]
	sub r1, r2, r1
	str r1, [r5, #0x14]
	mov r1, #2
	add r2, r6, #0
	ldr r7, [sp, #0x44]
	bl sub_02010588
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
	ldr r0, [sp, #0x48]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x4c]
	str r0, [r5, #0x2c]
	ldrh r0, [r4, #6]
	str r0, [r5, #0x28]
	add r0, r5, #0
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x18]
	add r0, #0xc
	bl sub_02011C7C
	add r0, r5, #0
	bl sub_02011B58
	ldr r0, _02011AF0 ; =sub_02010624
	ldr r2, _02011AF4 ; =0x000003FF
	add r1, r5, #0
	bl sub_0200DA3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02010604
	str r0, [sp, #0x20]
	add r0, r5, #0
	mov r1, #1
	bl sub_02010604
	str r0, [sp, #0x24]
	mov r1, #3
	ldr r0, [sp, #0x20]
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r0, [r0, r1]
	mov r1, #0x12
	mov r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r3, [sp, #8]
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_020106A8
	mov r1, #3
	ldr r0, [sp, #0x24]
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r0, [r0, r1]
	mov r1, #0x12
	lsl r1, r1, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	mov r3, #1
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_020106A8
	ldr r3, [r5, #0x28]
	add r0, r7, #0
	mov r1, #3
	add r2, r6, #0
	bl sub_02010710
	ldr r0, [sp, #0x4c]
	ldr r2, _02011AF8 ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r5, #0x34]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200F6D8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02011AF0: .word sub_02010624
_02011AF4: .word 0x000003FF
_02011AF8: .word sub_0201035C
	thumb_func_end sub_02011A00

	thumb_func_start sub_02011AFC
sub_02011AFC: ; 0x02011AFC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _02011B46
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bgt _02011B38
	str r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r2, [r4, #0x18]
	add r0, #0xc
	bl sub_02011C7C
	add r0, r4, #0
	bl sub_02011B58
	ldr r0, _02011B4C ; =sub_02010624
	ldr r2, _02011B50 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _02011B46
_02011B38:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_02011B46:
	mov r0, #0
	pop {r4, pc}
	nop
_02011B4C: .word sub_02010624
_02011B50: .word 0x000003FF
	thumb_func_end sub_02011AFC

	thumb_func_start sub_02011B54
sub_02011B54: ; 0x02011B54
	bx lr
	; .align 2, 0
	thumb_func_end sub_02011B54

	thumb_func_start sub_02011B58
sub_02011B58: ; 0x02011B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r0, #0xc]
	ldr r1, _02011C78 ; =0x00003FFF
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r1, #0
	bl sub_02010604
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #1
	bl sub_02010604
	add r4, r0, #0
	mov r6, #0
	add r5, r4, #0
_02011B84:
	ldr r0, [sp]
	ldr r1, [r0, #0xc]
	ldr r0, _02011C78 ; =0x00003FFF
	cmp r1, r0
	bge _02011BC8
	mov r1, #0x60
	ldr r0, [sp, #4]
	sub r1, r1, r6
	bl sub_020100FC
	cmp r0, #0x7f
	ble _02011B9E
	mov r0, #0x7f
_02011B9E:
	mov r1, #0xbf
	sub r1, r1, r6
	lsl r1, r1, #1
	add r3, r7, r1
	mov r1, #0x80
	sub r2, r1, r0
	mov r1, #3
	lsl r1, r1, #8
	strh r2, [r3, r1]
	mov r1, #0x12
	mov r2, #0x80
	lsl r1, r1, #6
	strh r2, [r3, r1]
	mov r1, #3
	lsl r1, r1, #8
	strh r2, [r5, r1]
	mov r1, #0x12
	add r0, #0x80
	lsl r1, r1, #6
	strh r0, [r5, r1]
	b _02011BF0
_02011BC8:
	mov r0, #0xbf
	sub r0, r0, r6
	lsl r0, r0, #1
	mov r1, #3
	add r0, r7, r0
	mov r2, #0
	lsl r1, r1, #8
	strh r2, [r0, r1]
	mov r1, #0x12
	mov r2, #0x80
	lsl r1, r1, #6
	strh r2, [r0, r1]
	mov r0, #3
	add r1, r2, #0
	lsl r0, r0, #8
	strh r1, [r5, r0]
	mov r0, #0x12
	mov r1, #0xff
	lsl r0, r0, #6
	strh r1, [r5, r0]
_02011BF0:
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #0x60
	blt _02011B84
	ldr r1, _02011C78 ; =0x00003FFF
	ldr r0, [sp, #4]
	mov r5, #0x60
	add r4, #0xc0
	sub r6, r1, r0
_02011C02:
	ldr r0, [sp]
	ldr r1, [r0, #0xc]
	ldr r0, _02011C78 ; =0x00003FFF
	cmp r1, r0
	bge _02011C32
	mov r0, #0xbf
	sub r0, r0, r5
	lsl r0, r0, #1
	mov r1, #3
	add r0, r7, r0
	mov r2, #0x80
	lsl r1, r1, #8
	strh r2, [r0, r1]
	mov r1, #0x12
	lsl r1, r1, #6
	strh r2, [r0, r1]
	mov r0, #3
	add r1, r2, #0
	lsl r0, r0, #8
	strh r1, [r4, r0]
	mov r0, #0x12
	lsl r0, r0, #6
	strh r1, [r4, r0]
	b _02011C6C
_02011C32:
	add r1, r5, #0
	add r0, r6, #0
	sub r1, #0x60
	bl sub_020100FC
	add r1, r0, #0
	cmp r1, #0x7f
	ble _02011C44
	mov r1, #0x7f
_02011C44:
	mov r0, #0xbf
	sub r0, r0, r5
	lsl r0, r0, #1
	mov r2, #3
	add r0, r7, r0
	mov r3, #0
	lsl r2, r2, #8
	strh r3, [r0, r2]
	mov r2, #0x80
	sub r3, r2, r1
	mov r2, #0x12
	lsl r2, r2, #6
	strh r3, [r0, r2]
	mov r0, #3
	add r1, #0x80
	lsl r0, r0, #8
	strh r1, [r4, r0]
	mov r1, #0xff
	add r0, r2, #0
	strh r1, [r4, r0]
_02011C6C:
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #0xc0
	blt _02011C02
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02011C78: .word 0x00003FFF
	thumb_func_end sub_02011B58

	thumb_func_start sub_02011C7C
sub_02011C7C: ; 0x02011C7C
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #8]
	add r0, r3, #0
	mul r0, r1
	add r1, r2, #0
	bl _s32_div_f
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_02011C7C

	thumb_func_start sub_02011C94
sub_02011C94: ; 0x02011C94
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x38
	bl sub_02018144
	str r0, [r5, #0x14]
	mov r1, #0
	mov r2, #0x38
	bl memset
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011D34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011C94

	thumb_func_start sub_02011CD4
sub_02011CD4: ; 0x02011CD4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02011CEC
	cmp r0, #2
	beq _02011D08
	cmp r0, #3
	beq _02011D28
	b _02011D2C
_02011CEC:
	add r0, r4, #0
	bl sub_02011E04
	cmp r0, #1
	bne _02011D30
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011D30
_02011D08:
	add r0, r4, #0
	bl sub_02011E5C
	add r0, r4, #0
	bl sub_020105EC
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011D30
_02011D28:
	mov r6, #1
	b _02011D30
_02011D2C:
	bl sub_02022974
_02011D30:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02011CD4

	thumb_func_start sub_02011D34
sub_02011D34: ; 0x02011D34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	str r3, [sp, #0x1c]
	str r1, [r5, #0xc]
	ldrh r1, [r4]
	str r2, [sp, #0x18]
	ldr r6, [sp, #0x38]
	str r1, [r5, #0x10]
	ldrh r2, [r4, #2]
	ldrh r1, [r4]
	ldr r3, [sp, #0x44]
	ldr r7, [sp, #0x3c]
	sub r1, r2, r1
	str r1, [r5, #0x14]
	mov r1, #2
	add r2, r6, #0
	bl sub_02010588
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x2c]
	ldrh r0, [r4, #6]
	str r0, [r5, #0x28]
	add r0, r5, #0
	bl sub_02011E60
	ldr r0, _02011DF8 ; =sub_02010624
	ldr r2, _02011DFC ; =0x000003FF
	add r1, r5, #0
	bl sub_0200DA3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02010604
	add r0, r5, #0
	mov r1, #1
	bl sub_02010604
	str r6, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_020106A8
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	mov r3, #1
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_020106A8
	ldr r3, [r5, #0x28]
	add r0, r7, #0
	mov r1, #3
	add r2, r6, #0
	bl sub_02010710
	ldr r0, [sp, #0x44]
	ldr r2, _02011E00 ; =sub_0201035C
	str r0, [sp]
	ldr r0, [r5, #0x34]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200F6D8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02011DF8: .word sub_02010624
_02011DFC: .word 0x000003FF
_02011E00: .word sub_0201035C
	thumb_func_end sub_02011D34

	thumb_func_start sub_02011E04
sub_02011E04: ; 0x02011E04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _02011E4E
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bgt _02011E40
	str r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r2, [r4, #0x18]
	add r0, #0xc
	bl sub_02011F2C
	add r0, r4, #0
	bl sub_02011E60
	ldr r0, _02011E54 ; =sub_02010624
	ldr r2, _02011E58 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200DA3C
	b _02011E4E
_02011E40:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200F704
	mov r0, #1
	pop {r4, pc}
_02011E4E:
	mov r0, #0
	pop {r4, pc}
	nop
_02011E54: .word sub_02010624
_02011E58: .word 0x000003FF
	thumb_func_end sub_02011E04

	thumb_func_start sub_02011E5C
sub_02011E5C: ; 0x02011E5C
	bx lr
	; .align 2, 0
	thumb_func_end sub_02011E5C

	thumb_func_start sub_02011E60
sub_02011E60: ; 0x02011E60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #0
	bl sub_02010604
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #1
	bl sub_02010604
	str r0, [sp, #0xc]
	add r5, r0, #0
	ldr r1, _02011F28 ; =0x00003FFF
	ldr r0, [sp, #8]
	ldr r6, [sp, #0x10]
	sub r0, r1, r0
	mov r7, #0
	str r0, [sp, #4]
_02011E8E:
	mov r0, #0x60
	sub r0, r0, r7
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_020100FC
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl sub_020100FC
	cmp r4, #0x7f
	ble _02011EAC
	mov r4, #0x7f
_02011EAC:
	cmp r0, #0x7f
	ble _02011EB2
	mov r0, #0x7f
_02011EB2:
	mov r1, #0x80
	sub r1, r1, r0
	lsl r1, r1, #0x10
	mov r2, #3
	asr r1, r1, #0x10
	lsl r2, r2, #8
	str r1, [sp, #0x14]
	strh r1, [r6, r2]
	mov r1, #0x80
	sub r1, r1, r4
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	mov r1, #0x12
	lsl r1, r1, #6
	strh r2, [r6, r1]
	mov r1, #0xbf
	sub r1, r1, r7
	mov ip, r2
	lsl r1, r1, #1
	ldr r2, [sp, #0x10]
	add r0, #0x80
	add r3, r2, r1
	str r1, [sp, #0x18]
	mov r2, #3
	ldr r1, [sp, #0x14]
	lsl r2, r2, #8
	strh r1, [r3, r2]
	mov r1, #0x12
	mov r2, ip
	lsl r1, r1, #6
	strh r2, [r3, r1]
	add r4, #0x80
	lsl r1, r4, #0x10
	asr r2, r1, #0x10
	mov r1, #3
	lsl r1, r1, #8
	lsl r0, r0, #0x10
	strh r2, [r5, r1]
	asr r1, r0, #0x10
	mov r0, #0x12
	lsl r0, r0, #6
	strh r1, [r5, r0]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	add r0, r3, r0
	mov r3, #3
	lsl r3, r3, #8
	strh r2, [r0, r3]
	mov r2, #0x12
	lsl r2, r2, #6
	strh r1, [r0, r2]
	add r6, r6, #2
	add r5, r5, #2
	cmp r7, #0x60
	blt _02011E8E
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02011F28: .word 0x00003FFF
	thumb_func_end sub_02011E60

	thumb_func_start sub_02011F2C
sub_02011F2C: ; 0x02011F2C
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #8]
	add r0, r3, #0
	mul r0, r1
	add r1, r2, #0
	bl _s32_div_f
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_02011F2C

	thumb_func_start sub_02011F44
sub_02011F44: ; 0x02011F44
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0xcd
	ldr r0, [r5, #0x20]
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0xcd
	str r0, [r5, #0x14]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011FE8
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011F44

	thumb_func_start sub_02011F88
sub_02011F88: ; 0x02011F88
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02011FA0
	cmp r0, #2
	beq _02011FC2
	cmp r0, #3
	beq _02011FDC
	b _02011FE0
_02011FA0:
	add r0, r4, #0
	bl sub_020120D4
	cmp r0, #1
	bne _02011FE4
	mov r1, #0xc9
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #8
	ldr r1, [r4, r1]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011FE4
_02011FC2:
	add r0, r4, #0
	bl sub_02012134
	ldr r0, [r5, #0x14]
	bl sub_020181C4
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011FE4
_02011FDC:
	mov r6, #1
	b _02011FE4
_02011FE0:
	bl sub_02022974
_02011FE4:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02011F88

	thumb_func_start sub_02011FE8
sub_02011FE8: ; 0x02011FE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r7, [sp, #0x38]
	str r3, [sp, #0x1c]
	mov r3, #0
	add r4, r1, #0
	str r2, [sp, #0x18]
	str r3, [sp]
	add r1, r7, #0
	mov r2, #1
	add r5, r0, #0
	ldr r6, [sp, #0x3c]
	bl sub_02010728
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _02012022
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xc0
	bl memset
	add r0, r5, #0
	add r0, #0xc0
	mov r1, #1
	mov r2, #0xc0
	bl memset
	b _02012038
_02012022:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xc0
	bl memset
	add r0, r5, #0
	add r0, #0xc0
	mov r1, #0
	mov r2, #0xc0
	bl memset
_02012038:
	mov r1, #0xc3
	ldr r0, [r4, #0]
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrh r2, [r4, #4]
	add r0, r1, #4
	ldr r3, [sp, #0x44]
	str r2, [r5, r0]
	add r0, r1, #0
	ldrh r2, [r4, #6]
	add r0, #0x18
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x1c
	str r3, [r5, r0]
	add r2, r1, #0
	ldr r0, [sp, #0x18]
	add r2, #8
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0xc
	mov r0, #0
	str r0, [r5, r2]
	add r2, r1, #0
	ldr r0, [sp, #0x1c]
	add r2, #0x10
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0x14
	mov r0, #0
	str r0, [r5, r2]
	add r0, r1, #0
	add r0, #0x20
	str r6, [r5, r0]
	ldr r0, [sp, #0x40]
	add r1, #0x24
	str r0, [r5, r1]
	add r1, r5, #0
	add r2, r3, #0
	bl sub_02010784
	ldrh r0, [r4, #6]
	cmp r0, #1
	str r7, [sp]
	bne _020120AA
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x20
	mov r2, #0x3f
	bl sub_020106A8
	b _020120C0
_020120AA:
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x3f
	mov r2, #0x20
	bl sub_020106A8
_020120C0:
	mov r3, #0xc9
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	add r0, r6, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02010710
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02011FE8

	thumb_func_start sub_020120D4
sub_020120D4: ; 0x020120D4
	push {r4, lr}
	mov r2, #0x32
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	add r1, r1, #1
	str r1, [r4, r2]
	sub r1, r2, #4
	ldr r3, [r4, r2]
	ldr r1, [r4, r1]
	cmp r3, r1
	blt _0201212E
	mov r1, #0
	str r1, [r4, r2]
	add r1, r2, #0
	sub r1, #8
	ldr r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #0
	sub r1, #0xc
	ldr r1, [r4, r1]
	cmp r3, r1
	bgt _0201211A
	add r1, r2, #0
	sub r1, #8
	ldr r1, [r4, r1]
	sub r2, #8
	add r1, r1, #1
	str r1, [r4, r2]
	bl sub_02012138
	add r0, r4, #0
	bl sub_0201076C
	b _0201212E
_0201211A:
	add r0, r2, #0
	add r0, #0x10
	add r2, #8
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	add r1, r4, #0
	bl sub_0201079C
	mov r0, #1
	pop {r4, pc}
_0201212E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020120D4

	thumb_func_start sub_02012134
sub_02012134: ; 0x02012134
	bx lr
	; .align 2, 0
	thumb_func_end sub_02012134

	thumb_func_start sub_02012138
sub_02012138: ; 0x02012138
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _02012172
	mov r7, #0x31
	add r4, r6, #0
	lsl r7, r7, #4
_0201214E:
	mov r0, #0xc3
	lsl r0, r0, #2
	mov r2, #0xc6
	mov r3, #0xc5
	ldr r0, [r5, r0]
	lsl r2, r2, #2
	lsl r3, r3, #2
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r0, r4
	add r1, r5, #0
	bl sub_02012174
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0201214E
_02012172:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02012138

	thumb_func_start sub_02012174
sub_02012174: ; 0x02012174
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldrb r6, [r7]
	ldrb r4, [r7, #1]
	add r5, r1, #0
	add r1, r3, #0
	sub r0, r4, r6
	mul r0, r2
	bl _s32_div_f
	add r0, r0, r6
	cmp r6, r4
	bhi _02012194
	add r1, r6, #0
	ldrh r6, [r7, #2]
	b _020121A4
_02012194:
	ldrh r2, [r7, #2]
	add r1, r4, #0
	add r4, r6, #0
	cmp r2, #0
	bne _020121A2
	mov r6, #1
	b _020121A4
_020121A2:
	mov r6, #0
_020121A4:
	cmp r1, r4
	bge _020121C2
	mov r2, #0
	mov r3, #1
_020121AC:
	cmp r1, r0
	bne _020121BA
	cmp r6, #0
	bne _020121B8
	add r6, r3, #0
	b _020121BA
_020121B8:
	add r6, r2, #0
_020121BA:
	strb r6, [r5, r1]
	add r1, r1, #1
	cmp r1, r4
	blt _020121AC
_020121C2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02012174

	thumb_func_start sub_020121C4
sub_020121C4: ; 0x020121C4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0xe2
	ldr r0, [r5, #0x20]
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0xe2
	str r0, [r5, #0x14]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldrb r1, [r4, #0xb]
	ldr r0, [r5, #0x14]
	cmp r1, #0
	ldr r1, [r5, #0x10]
	bne _02012206
	str r1, [sp]
	ldr r1, [r5, #0x18]
	str r1, [sp, #4]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #8]
	ldr r1, [r5, #0x20]
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r1, r4, #0
	bl sub_02012290
	b _0201221E
_02012206:
	str r1, [sp]
	ldr r1, [r5, #0x18]
	str r1, [sp, #4]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #8]
	ldr r1, [r5, #0x20]
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r1, r4, #0
	bl sub_02012384
_0201221E:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020121C4

	thumb_func_start sub_02012228
sub_02012228: ; 0x02012228
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	mov r4, #0
	ldr r0, [r5, #0x14]
	cmp r1, #1
	beq _02012240
	cmp r1, #2
	beq _0201226C
	cmp r1, #3
	beq _0201227E
	b _02012282
_02012240:
	ldr r1, _0201228C ; =0x00000386
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _02012250
	add r1, r5, #0
	bl sub_02012310
	b _02012256
_02012250:
	add r1, r5, #0
	bl sub_020123F4
_02012256:
	cmp r0, #1
	bne _02012286
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl sub_02010658
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012286
_0201226C:
	bl sub_020181C4
	add r0, r4, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r4, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012286
_0201227E:
	mov r4, #1
	b _02012286
_02012282:
	bl sub_02022974
_02012286:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0201228C: .word 0x00000386
	thumb_func_end sub_02012228

	thumb_func_start sub_02012290
sub_02012290: ; 0x02012290
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	lsl r0, r6, #0xc
	ldr r2, [r4, #0x14]
	add r7, r3, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r2, r0, #0xc
	mov r0, #0xe1
	sub r1, r6, r2
	lsl r0, r0, #2
	strb r1, [r5, r0]
	sub r1, r0, #4
	str r4, [r5, r1]
	ldrb r1, [r4, #0xb]
	add r0, r0, #2
	add r3, r7, #0
	strb r1, [r5, r0]
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02010E48
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _020122F4
	ldrb r3, [r4, #0xb]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	mov r1, #1
	bl sub_02010710
	b _02012300
_020122F4:
	ldrb r3, [r4, #0xb]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	mov r1, #2
	bl sub_02010710
_02012300:
	ldr r0, _0201230C ; =0x00000385
	mov r1, #0
	strb r1, [r5, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201230C: .word 0x00000385
	thumb_func_end sub_02012290

	thumb_func_start sub_02012310
sub_02012310: ; 0x02012310
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _02012380 ; =0x00000385
	add r5, r0, #0
	ldrb r1, [r5, r1]
	mov r6, #0
	cmp r1, #0
	beq _0201232C
	cmp r1, #1
	beq _02012362
	cmp r1, #2
	beq _02012378
	b _0201237A
_0201232C:
	bl sub_02010EA4
	cmp r0, #1
	bne _0201237A
	ldr r2, _02012380 ; =0x00000385
	ldrb r0, [r5, r2]
	sub r1, r2, #5
	add r0, r0, #1
	strb r0, [r5, r2]
	ldr r0, [r4, #0x10]
	sub r2, r2, #1
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0xc]
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrb r2, [r5, r2]
	ldr r3, [r4, #8]
	add r0, #0x4c
	add r1, #0xc
	bl sub_02011FE8
	b _0201237A
_02012362:
	add r0, #0x4c
	bl sub_020120D4
	cmp r0, #1
	bne _0201237A
	ldr r0, _02012380 ; =0x00000385
	mov r6, #1
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _0201237A
_02012378:
	mov r6, #1
_0201237A:
	add r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02012380: .word 0x00000385
	thumb_func_end sub_02012310

	thumb_func_start sub_02012384
sub_02012384: ; 0x02012384
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	lsl r0, r6, #0xc
	ldr r2, [r4, #0x14]
	add r7, r3, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0xe1
	asr r0, r0, #0xc
	lsl r1, r1, #2
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	sub r2, r6, r0
	sub r0, r1, #4
	str r4, [r5, r0]
	add r0, r1, #2
	ldrb r3, [r4, #0xb]
	sub r1, r1, #4
	strb r3, [r5, r0]
	ldr r0, [sp, #0x28]
	add r3, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r0, #0x4c
	add r1, #0xc
	bl sub_02011FE8
	ldr r0, _020123F0 ; =0x00000385
	mov r1, #0
	strb r1, [r5, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020123F0: .word 0x00000385
	thumb_func_end sub_02012384

	thumb_func_start sub_020123F4
sub_020123F4: ; 0x020123F4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _0201247C ; =0x00000385
	add r5, r0, #0
	ldrb r1, [r5, r1]
	mov r6, #0
	cmp r1, #0
	beq _02012410
	cmp r1, #1
	beq _02012460
	cmp r1, #2
	beq _02012474
	b _02012476
_02012410:
	add r0, #0x4c
	bl sub_020120D4
	cmp r0, #1
	bne _02012476
	ldr r2, _0201247C ; =0x00000385
	ldrb r0, [r5, r2]
	sub r1, r2, #5
	add r0, r0, #1
	strb r0, [r5, r2]
	ldr r0, [r4, #0x10]
	sub r2, r2, #1
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	ldr r3, [r4, #8]
	add r0, r5, #0
	bl sub_02010E48
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r3, [r5, r0]
	ldrb r0, [r3, #8]
	cmp r0, #0
	ldr r0, [r4, #0x18]
	bne _02012454
	ldrb r3, [r3, #0xb]
	ldr r2, [r4, #0x10]
	mov r1, #1
	bl sub_02010710
	b _02012476
_02012454:
	ldrb r3, [r3, #0xb]
	ldr r2, [r4, #0x10]
	mov r1, #2
	bl sub_02010710
	b _02012476
_02012460:
	bl sub_02010EA4
	cmp r0, #1
	bne _02012476
	ldr r0, _0201247C ; =0x00000385
	mov r6, #1
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _02012476
_02012474:
	mov r6, #1
_02012476:
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0201247C: .word 0x00000385
	thumb_func_end sub_020123F4

	.rodata


	.global Unk_020E511C
Unk_020E511C: ; 0x020E511C
	.incbin "incbin/arm9_rodata.bin", 0x4DC, 0x4E0 - 0x4DC

	.global Unk_020E5120
Unk_020E5120: ; 0x020E5120
	.incbin "incbin/arm9_rodata.bin", 0x4E0, 0x4E4 - 0x4E0

	.global Unk_020E5124
Unk_020E5124: ; 0x020E5124
	.incbin "incbin/arm9_rodata.bin", 0x4E4, 0x4E8 - 0x4E4

	.global Unk_020E5128
Unk_020E5128: ; 0x020E5128
	.incbin "incbin/arm9_rodata.bin", 0x4E8, 0x4EC - 0x4E8

	.global Unk_020E512C
Unk_020E512C: ; 0x020E512C
	.incbin "incbin/arm9_rodata.bin", 0x4EC, 0x4F4 - 0x4EC

	.global Unk_020E5134
Unk_020E5134: ; 0x020E5134
	.incbin "incbin/arm9_rodata.bin", 0x4F4, 0x4FC - 0x4F4

	.global Unk_020E513C
Unk_020E513C: ; 0x020E513C
	.incbin "incbin/arm9_rodata.bin", 0x4FC, 0x504 - 0x4FC

	.global Unk_020E5144
Unk_020E5144: ; 0x020E5144
	.incbin "incbin/arm9_rodata.bin", 0x504, 0x50C - 0x504

	.global Unk_020E514C
Unk_020E514C: ; 0x020E514C
	.incbin "incbin/arm9_rodata.bin", 0x50C, 0x514 - 0x50C

	.global Unk_020E5154
Unk_020E5154: ; 0x020E5154
	.incbin "incbin/arm9_rodata.bin", 0x514, 0x51C - 0x514

	.global Unk_020E515C
Unk_020E515C: ; 0x020E515C
	.incbin "incbin/arm9_rodata.bin", 0x51C, 0x524 - 0x51C

	.global Unk_020E5164
Unk_020E5164: ; 0x020E5164
	.incbin "incbin/arm9_rodata.bin", 0x524, 0x52C - 0x524

	.global Unk_020E516C
Unk_020E516C: ; 0x020E516C
	.incbin "incbin/arm9_rodata.bin", 0x52C, 0x534 - 0x52C

	.global Unk_020E5174
Unk_020E5174: ; 0x020E5174
	.incbin "incbin/arm9_rodata.bin", 0x534, 0x53C - 0x534

	.global Unk_020E517C
Unk_020E517C: ; 0x020E517C
	.incbin "incbin/arm9_rodata.bin", 0x53C, 0x544 - 0x53C

	.global Unk_020E5184
Unk_020E5184: ; 0x020E5184
	.incbin "incbin/arm9_rodata.bin", 0x544, 0x54C - 0x544

	.global Unk_020E518C
Unk_020E518C: ; 0x020E518C
	.incbin "incbin/arm9_rodata.bin", 0x54C, 0x554 - 0x54C

	.global Unk_020E5194
Unk_020E5194: ; 0x020E5194
	.incbin "incbin/arm9_rodata.bin", 0x554, 0x55C - 0x554

	.global Unk_020E519C
Unk_020E519C: ; 0x020E519C
	.incbin "incbin/arm9_rodata.bin", 0x55C, 0x568 - 0x55C

	.global Unk_020E51A8
Unk_020E51A8: ; 0x020E51A8
	.incbin "incbin/arm9_rodata.bin", 0x568, 0x574 - 0x568

	.global Unk_020E51B4
Unk_020E51B4: ; 0x020E51B4
	.incbin "incbin/arm9_rodata.bin", 0x574, 0x580 - 0x574

	.global Unk_020E51C0
Unk_020E51C0: ; 0x020E51C0
	.incbin "incbin/arm9_rodata.bin", 0x580, 0x58C - 0x580

	.global Unk_020E51CC
Unk_020E51CC: ; 0x020E51CC
	.incbin "incbin/arm9_rodata.bin", 0x58C, 0x598 - 0x58C

	.global Unk_020E51D8
Unk_020E51D8: ; 0x020E51D8
	.incbin "incbin/arm9_rodata.bin", 0x598, 0x5A4 - 0x598

	.global Unk_020E51E4
Unk_020E51E4: ; 0x020E51E4
	.incbin "incbin/arm9_rodata.bin", 0x5A4, 0x5B0 - 0x5A4

	.global Unk_020E51F0
Unk_020E51F0: ; 0x020E51F0
	.incbin "incbin/arm9_rodata.bin", 0x5B0, 0x5BC - 0x5B0

	.global Unk_020E51FC
Unk_020E51FC: ; 0x020E51FC
	.incbin "incbin/arm9_rodata.bin", 0x5BC, 0x5C8 - 0x5BC

	.global Unk_020E5208
Unk_020E5208: ; 0x020E5208
	.incbin "incbin/arm9_rodata.bin", 0x5C8, 0x5D4 - 0x5C8

	.global Unk_020E5214
Unk_020E5214: ; 0x020E5214
	.incbin "incbin/arm9_rodata.bin", 0x5D4, 0x5E0 - 0x5D4

	.global Unk_020E5220
Unk_020E5220: ; 0x020E5220
	.incbin "incbin/arm9_rodata.bin", 0x5E0, 0x5EC - 0x5E0

	.global Unk_020E522C
Unk_020E522C: ; 0x020E522C
	.incbin "incbin/arm9_rodata.bin", 0x5EC, 0x5F8 - 0x5EC

	.global Unk_020E5238
Unk_020E5238: ; 0x020E5238
	.incbin "incbin/arm9_rodata.bin", 0x5F8, 0x604 - 0x5F8

	.global Unk_020E5244
Unk_020E5244: ; 0x020E5244
	.incbin "incbin/arm9_rodata.bin", 0x604, 0x610 - 0x604

	.global Unk_020E5250
Unk_020E5250: ; 0x020E5250
	.incbin "incbin/arm9_rodata.bin", 0x610, 0x61C - 0x610

	.global Unk_020E525C
Unk_020E525C: ; 0x020E525C
	.incbin "incbin/arm9_rodata.bin", 0x61C, 0x628 - 0x61C

	.global Unk_020E5268
Unk_020E5268: ; 0x020E5268
	.incbin "incbin/arm9_rodata.bin", 0x628, 0x634 - 0x628

	.global Unk_020E5274
Unk_020E5274: ; 0x020E5274
	.incbin "incbin/arm9_rodata.bin", 0x634, 0x640 - 0x634

	.global Unk_020E5280
Unk_020E5280: ; 0x020E5280
	.incbin "incbin/arm9_rodata.bin", 0x640, 0x64C - 0x640

	.global Unk_020E528C
Unk_020E528C: ; 0x020E528C
	.incbin "incbin/arm9_rodata.bin", 0x64C, 0x658 - 0x64C

	.global Unk_020E5298
Unk_020E5298: ; 0x020E5298
	.incbin "incbin/arm9_rodata.bin", 0x658, 0x664 - 0x658

	.global Unk_020E52A4
Unk_020E52A4: ; 0x020E52A4
	.incbin "incbin/arm9_rodata.bin", 0x664, 0x674 - 0x664

	.global Unk_020E52B4
Unk_020E52B4: ; 0x020E52B4
	.incbin "incbin/arm9_rodata.bin", 0x674, 0x684 - 0x674

	.global Unk_020E52C4
Unk_020E52C4: ; 0x020E52C4
	.incbin "incbin/arm9_rodata.bin", 0x684, 0x694 - 0x684

	.global Unk_020E52D4
Unk_020E52D4: ; 0x020E52D4
	.incbin "incbin/arm9_rodata.bin", 0x694, 0x10



	.data


	.global Unk_021007B4
Unk_021007B4: ; 0x021007B4
	.incbin "incbin/arm9_data.bin", 0x1AD4, 0x1ADC - 0x1AD4

	.global Unk_021007BC
Unk_021007BC: ; 0x021007BC
	.incbin "incbin/arm9_data.bin", 0x1ADC, 0x1AE4 - 0x1ADC

	.global Unk_021007C4
Unk_021007C4: ; 0x021007C4
	.incbin "incbin/arm9_data.bin", 0x1AE4, 0x1AEC - 0x1AE4

	.global Unk_021007CC
Unk_021007CC: ; 0x021007CC
	.incbin "incbin/arm9_data.bin", 0x1AEC, 0x1AF4 - 0x1AEC

	.global Unk_021007D4
Unk_021007D4: ; 0x021007D4
	.incbin "incbin/arm9_data.bin", 0x1AF4, 0x1AFC - 0x1AF4

	.global Unk_021007DC
Unk_021007DC: ; 0x021007DC
	.incbin "incbin/arm9_data.bin", 0x1AFC, 0x1B04 - 0x1AFC

	.global Unk_021007E4
Unk_021007E4: ; 0x021007E4
	.incbin "incbin/arm9_data.bin", 0x1B04, 0x1B0C - 0x1B04

	.global Unk_021007EC
Unk_021007EC: ; 0x021007EC
	.incbin "incbin/arm9_data.bin", 0x1B0C, 0x1B14 - 0x1B0C

	.global Unk_021007F4
Unk_021007F4: ; 0x021007F4
	.incbin "incbin/arm9_data.bin", 0x1B14, 0x1B1C - 0x1B14

	.global Unk_021007FC
Unk_021007FC: ; 0x021007FC
	.incbin "incbin/arm9_data.bin", 0x1B1C, 0x1B24 - 0x1B1C

	.global Unk_02100804
Unk_02100804: ; 0x02100804
	.incbin "incbin/arm9_data.bin", 0x1B24, 0x1B3C - 0x1B24

	.global Unk_0210081C
Unk_0210081C: ; 0x0210081C
	.incbin "incbin/arm9_data.bin", 0x1B3C, 0x18

