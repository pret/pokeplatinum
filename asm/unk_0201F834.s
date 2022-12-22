	.include "macros/function.inc"
	.include "include/unk_0201F834.inc"

	

	.text


	thumb_func_start sub_0201F834
sub_0201F834: ; 0x0201F834
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0201F88C ; =0x021C0764
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0201F888
	add r0, r4, #0
	mov r1, #0x28
	bl sub_02018144
	add r1, r0, #0
	ldr r0, _0201F88C ; =0x021C0764
	mov r2, #0x28
	str r1, [r0, #0]
	mov r0, #0
	bl MIi_CpuClear32
	ldr r0, _0201F88C ; =0x021C0764
	mov r1, #0x30
	ldr r0, [r0, #0]
	mul r1, r6
	str r6, [r0, #4]
	add r0, r4, #0
	bl sub_02018144
	ldr r7, _0201F88C ; =0x021C0764
	mov r4, #0
	ldr r1, [r7, #0]
	cmp r6, #0
	str r0, [r1, #0]
	ble _0201F888
	add r5, r4, #0
_0201F876:
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	add r0, r0, r5
	bl sub_0201FB20
	add r4, r4, #1
	add r5, #0x30
	cmp r4, r6
	blt _0201F876
_0201F888:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201F88C: .word 0x021C0764
	thumb_func_end sub_0201F834

	thumb_func_start sub_0201F890
sub_0201F890: ; 0x0201F890
	cmp r1, #1
	bne _0201F8A0
	ldr r1, _0201F8B0 ; =0x021C0764
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0x24]
	orr r0, r1
	strh r0, [r2, #0x24]
	bx lr
_0201F8A0:
	cmp r1, #2
	bne _0201F8AE
	ldr r1, _0201F8B0 ; =0x021C0764
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0x26]
	orr r0, r1
	strh r0, [r2, #0x26]
_0201F8AE:
	bx lr
	; .align 2, 0
_0201F8B0: .word 0x021C0764
	thumb_func_end sub_0201F890

	thumb_func_start sub_0201F8B4
sub_0201F8B4: ; 0x0201F8B4
	push {r3, lr}
	ldr r0, _0201F8DC ; =0x021C0764
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0201F8DA
	bl sub_0201FA18
	ldr r0, _0201F8DC ; =0x021C0764
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0201F8DC ; =0x021C0764
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0201F8DC ; =0x021C0764
	mov r1, #0
	str r1, [r0, #0]
_0201F8DA:
	pop {r3, pc}
	; .align 2, 0
_0201F8DC: .word 0x021C0764
	thumb_func_end sub_0201F8B4

	thumb_func_start sub_0201F8E0
sub_0201F8E0: ; 0x0201F8E0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201F8E0

	thumb_func_start sub_0201F8E4
sub_0201F8E4: ; 0x0201F8E4
	push {r3, lr}
	ldr r0, _0201F908 ; =0x021C0764
	mov r2, #0
	ldr r1, [r0, #0]
	str r2, [r1, #0xc]
	ldr r1, [r0, #0]
	str r2, [r1, #0x10]
	ldr r1, [r0, #0]
	str r2, [r1, #0x14]
	ldr r0, [r0, #0]
	str r2, [r0, #0x18]
	bl sub_0201FC8C
	ldr r0, _0201F908 ; =0x021C0764
	ldr r0, [r0, #0]
	bl sub_0201FD9C
	pop {r3, pc}
	; .align 2, 0
_0201F908: .word 0x021C0764
	thumb_func_end sub_0201F8E4

	thumb_func_start sub_0201F90C
sub_0201F90C: ; 0x0201F90C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0201FC50
	add r4, r0, #0
	bne _0201F920
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F920:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201FAEC
	cmp r0, #0
	bne _0201F930
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F930:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201FB3C
	cmp r0, #0
	bne _0201F946
	ldr r0, [r5, #0xc]
	bl sub_0201F9F0
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F946:
	add r0, r4, #0
	bl sub_0201FDA4
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201F90C

	thumb_func_start sub_0201F950
sub_0201F950: ; 0x0201F950
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0201FC50
	add r4, r0, #0
	bne _0201F964
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F964:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201FAEC
	cmp r0, #0
	bne _0201F974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F974:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201FB94
	cmp r0, #0
	bne _0201F98A
	ldr r0, [r5, #0xc]
	bl sub_0201F9F0
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F98A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201F950

	thumb_func_start sub_0201F990
sub_0201F990: ; 0x0201F990
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bne _0201F99C
	bl GF_AssertFail
_0201F99C:
	add r0, r4, #0
	bl sub_0201FC18
	add r4, r0, #0
	bne _0201F9AA
	bl GF_AssertFail
_0201F9AA:
	str r5, [r4, #0]
	ldr r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _0201F9C2
	ldr r3, [r4, #8]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0xc]
	mov r0, #0xe
	lsl r3, r3, #5
	bl sub_0201DC68
_0201F9C2:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _0201F9D8
	ldr r3, [r4, #8]
	ldr r1, [r4, #0x28]
	ldr r2, [r5, #0xc]
	mov r0, #0x1e
	lsl r3, r3, #5
	bl sub_0201DC68
_0201F9D8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201F990

	thumb_func_start sub_0201F9DC
sub_0201F9DC: ; 0x0201F9DC
	push {r3, lr}
	bl sub_0201FC18
	cmp r0, #0
	beq _0201F9EA
	mov r0, #1
	pop {r3, pc}
_0201F9EA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201F9DC

	thumb_func_start sub_0201F9F0
sub_0201F9F0: ; 0x0201F9F0
	push {r4, lr}
	bl sub_0201FC18
	add r4, r0, #0
	bne _0201F9FE
	bl GF_AssertFail
_0201F9FE:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _0201FA14
	add r0, r4, #0
	bl sub_0201FDE0
	add r0, r4, #0
	bl sub_0201FAE4
_0201FA14:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201F9F0

	thumb_func_start sub_0201FA18
sub_0201FA18: ; 0x0201FA18
	push {r4, r5, r6, lr}
	ldr r6, _0201FA54 ; =0x021C0764
	mov r4, #0
	ldr r1, [r6, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0201FA50
	add r5, r4, #0
_0201FA28:
	ldr r1, [r1, #0]
	add r0, r1, r5
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _0201FA44
	add r0, r1, r5
	bl sub_0201FDE0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	add r0, r0, r5
	bl sub_0201FAE4
_0201FA44:
	ldr r1, [r6, #0]
	add r4, r4, #1
	ldr r0, [r1, #4]
	add r5, #0x30
	cmp r4, r0
	blt _0201FA28
_0201FA50:
	pop {r4, r5, r6, pc}
	nop
_0201FA54: .word 0x021C0764
	thumb_func_end sub_0201FA18

	thumb_func_start sub_0201FA58
sub_0201FA58: ; 0x0201FA58
	push {r3, lr}
	bl sub_0201FC18
	cmp r0, #0
	bne _0201FA6C
	bne _0201FA68
	bl GF_AssertFail
_0201FA68:
	mov r0, #0
	pop {r3, pc}
_0201FA6C:
	add r1, r0, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #1
	bne _0201FA7A
	add r0, #0x10
	pop {r3, pc}
_0201FA7A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201FA58

	thumb_func_start sub_0201FA80
sub_0201FA80: ; 0x0201FA80
	push {r4, lr}
	add r4, r1, #0
	bl sub_0201FC18
	cmp r0, #0
	bne _0201FA96
	bne _0201FA92
	bl GF_AssertFail
_0201FA92:
	mov r0, #0
	pop {r4, pc}
_0201FA96:
	add r1, r0, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #1
	beq _0201FAA4
	mov r0, #0
	pop {r4, pc}
_0201FAA4:
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _0201FAB0
	mov r1, #1
	str r1, [r4, #0x18]
_0201FAB0:
	add r0, #0x10
	pop {r4, pc}
	thumb_func_end sub_0201FA80

	thumb_func_start sub_0201FAB4
sub_0201FAB4: ; 0x0201FAB4
	push {r4, lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0201FAC2
	mov r4, #2
	lsl r4, r4, #8
	b _0201FACE
_0201FAC2:
	ldr r2, [r0, #0]
	cmp r2, #4
	bne _0201FACC
	mov r4, #0
	b _0201FACE
_0201FACC:
	mov r4, #0x20
_0201FACE:
	cmp r4, #0
	beq _0201FADE
	bl NNS_G2dGetImagePaletteLocation
	add r1, r4, #0
	bl _u32_div_f
	pop {r4, pc}
_0201FADE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201FAB4

	thumb_func_start sub_0201FAE4
sub_0201FAE4: ; 0x0201FAE4
	ldr r3, _0201FAE8 ; =sub_0201FB20
	bx r3
	; .align 2, 0
_0201FAE8: .word sub_0201FB20
	thumb_func_end sub_0201FAE4

	thumb_func_start sub_0201FAEC
sub_0201FAEC: ; 0x0201FAEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0201F9DC
	cmp r0, #1
	bne _0201FB08
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201FB08:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	str r0, [r4, #0xc]
	ldr r0, [r5, #4]
	add r1, #0x2c
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r1]
	ldr r1, [r5, #8]
	str r1, [r4, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201FAEC

	thumb_func_start sub_0201FB20
sub_0201FB20: ; 0x0201FB20
	push {r4, lr}
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0xc]
	add r4, #0x10
	add r0, r4, #0
	bl NNS_G2dInitImagePaletteProxy
	pop {r4, pc}
	thumb_func_end sub_0201FB20

	thumb_func_start sub_0201FB3C
sub_0201FB3C: ; 0x0201FB3C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201FB5C
	ldr r0, _0201FB90 ; =0x021C0764
	ldr r0, [r0, #0]
	add r4, r0, #0
	add r5, r0, #0
	ldr r3, [r0, #0x1c]
	add r4, #0x14
	add r5, #0x18
	ldr r0, [r0, #0x20]
	b _0201FB6C
_0201FB5C:
	ldr r0, _0201FB90 ; =0x021C0764
	mov r3, #2
	ldr r5, [r0, #0]
	lsl r3, r3, #8
	add r4, r5, #0
	add r4, #0xc
	add r5, #0x10
	add r0, r3, #0
_0201FB6C:
	str r0, [sp]
	ldr r1, [r4, #0]
	ldr r2, [r5, #0]
	add r0, r6, #0
	bl sub_0201FE1C
	add r0, r6, #0
	bl sub_0201FCD4
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0201FE68
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0201FB90: .word 0x021C0764
	thumb_func_end sub_0201FB3C

	thumb_func_start sub_0201FB94
sub_0201FB94: ; 0x0201FB94
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201FBA4
	bl GF_AssertFail
_0201FBA4:
	ldr r1, [r5, #4]
	mov r0, #1
	tst r0, r1
	beq _0201FBC6
	ldr r0, _0201FC14 ; =0x021C0764
	ldr r1, [r5, #8]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x24]
	bl sub_0201FD5C
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0201FBC6
	mov r0, #0
	pop {r4, r5, r6, pc}
_0201FBC6:
	ldr r1, [r5, #4]
	mov r0, #2
	tst r0, r1
	beq _0201FBE8
	ldr r0, _0201FC14 ; =0x021C0764
	ldr r1, [r5, #8]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x26]
	bl sub_0201FD5C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0201FBE8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0201FBE8:
	ldr r1, [r5, #4]
	mov r0, #1
	tst r0, r1
	beq _0201FBF2
	str r6, [r5, #0x24]
_0201FBF2:
	ldr r1, [r5, #4]
	mov r0, #2
	tst r0, r1
	beq _0201FBFC
	str r4, [r5, #0x28]
_0201FBFC:
	ldr r0, [r5, #8]
	lsl r1, r0, #5
	ldr r0, [r5, #0]
	str r1, [r0, #8]
	add r0, r5, #0
	bl sub_0201FCE4
	add r0, r5, #0
	bl sub_0201FDA4
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0201FC14: .word 0x021C0764
	thumb_func_end sub_0201FB94

	thumb_func_start sub_0201FC18
sub_0201FC18: ; 0x0201FC18
	push {r4, r5}
	ldr r2, _0201FC4C ; =0x021C0764
	mov r1, #0
	ldr r5, [r2, #0]
	ldr r2, [r5, #4]
	cmp r2, #0
	ble _0201FC44
	ldr r2, [r5, #0]
	add r4, r2, #0
_0201FC2A:
	ldr r3, [r4, #0xc]
	cmp r0, r3
	bne _0201FC3A
	mov r0, #0x30
	mul r0, r1
	add r0, r2, r0
	pop {r4, r5}
	bx lr
_0201FC3A:
	ldr r3, [r5, #4]
	add r1, r1, #1
	add r4, #0x30
	cmp r1, r3
	blt _0201FC2A
_0201FC44:
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_0201FC4C: .word 0x021C0764
	thumb_func_end sub_0201FC18

	thumb_func_start sub_0201FC50
sub_0201FC50: ; 0x0201FC50
	push {r3, r4}
	ldr r1, _0201FC88 ; =0x021C0764
	mov r0, #0
	ldr r4, [r1, #0]
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _0201FC80
	ldr r1, [r4, #0]
	add r3, r1, #0
_0201FC62:
	add r2, r3, #0
	add r2, #0x2c
	ldrb r2, [r2]
	cmp r2, #0
	bne _0201FC76
	mov r2, #0x30
	mul r2, r0
	add r0, r1, r2
	pop {r3, r4}
	bx lr
_0201FC76:
	ldr r2, [r4, #4]
	add r0, r0, #1
	add r3, #0x30
	cmp r0, r2
	blt _0201FC62
_0201FC80:
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_0201FC88: .word 0x021C0764
	thumb_func_end sub_0201FC50

	thumb_func_start sub_0201FC8C
sub_0201FC8C: ; 0x0201FC8C
	push {r3, lr}
	bl GX_GetBankForOBJExtPltt
	cmp r0, #0x20
	beq _0201FC9A
	cmp r0, #0x40
	bne _0201FCA6
_0201FC9A:
	ldr r0, _0201FCD0 ; =0x021C0764
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	str r1, [r0, #0x1c]
	b _0201FCAE
_0201FCA6:
	ldr r0, _0201FCD0 ; =0x021C0764
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x1c]
_0201FCAE:
	bl GX_GetBankForSubOBJExtPltt
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0201FCC4
	ldr r0, _0201FCD0 ; =0x021C0764
	lsl r1, r1, #5
	ldr r0, [r0, #0]
	str r1, [r0, #0x20]
	pop {r3, pc}
_0201FCC4:
	ldr r0, _0201FCD0 ; =0x021C0764
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x20]
	pop {r3, pc}
	nop
_0201FCD0: .word 0x021C0764
	thumb_func_end sub_0201FC8C

	thumb_func_start sub_0201FCD4
sub_0201FCD4: ; 0x0201FCD4
	ldr r1, [r0, #8]
	ldr r3, _0201FCE0 ; =sub_0201FCE4
	lsl r2, r1, #5
	ldr r1, [r0, #0]
	str r2, [r1, #8]
	bx r3
	; .align 2, 0
_0201FCE0: .word sub_0201FCE4
	thumb_func_end sub_0201FCD4

	thumb_func_start sub_0201FCE4
sub_0201FCE4: ; 0x0201FCE4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x10
	bl NNS_G2dInitImagePaletteProxy
	ldr r0, [r4, #4]
	mov r2, #1
	tst r0, r2
	beq _0201FD02
	add r3, r4, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r3, #0x10
	bl NNS_G2dLoadPalette
_0201FD02:
	ldr r0, [r4, #4]
	mov r2, #2
	tst r0, r2
	beq _0201FD16
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r4, #0x10
	add r3, r4, #0
	bl NNS_G2dLoadPalette
_0201FD16:
	pop {r4, pc}
	thumb_func_end sub_0201FCE4

	thumb_func_start sub_0201FD18
sub_0201FD18: ; 0x0201FD18
	push {r4, r5, r6, r7}
	mov r3, #0
	cmp r1, #0
	ble _0201FD36
	mov r5, #1
_0201FD22:
	ldrh r7, [r0]
	add r4, r2, r3
	add r6, r5, #0
	lsl r6, r4
	add r4, r7, #0
	orr r4, r6
	add r3, r3, #1
	strh r4, [r0]
	cmp r3, r1
	blt _0201FD22
_0201FD36:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201FD18

	thumb_func_start sub_0201FD3C
sub_0201FD3C: ; 0x0201FD3C
	push {r4, r5, r6, r7}
	mov r4, #0
	cmp r1, #0
	ble _0201FD58
	mov r6, #1
_0201FD46:
	add r5, r2, r4
	add r7, r6, #0
	ldrh r3, [r0]
	lsl r7, r5
	bic r3, r7
	add r4, r4, #1
	strh r3, [r0]
	cmp r4, r1
	blt _0201FD46
_0201FD58:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0201FD3C

	thumb_func_start sub_0201FD5C
sub_0201FD5C: ; 0x0201FD5C
	push {r4, r5, r6, r7}
	mov r3, #0
	mov r6, #1
	add r2, r3, #0
_0201FD64:
	add r4, r2, #0
	b _0201FD6E
_0201FD68:
	cmp r5, #0x10
	bge _0201FD7C
	add r4, r4, #1
_0201FD6E:
	add r5, r3, r4
	add r7, r6, #0
	lsl r7, r5
	tst r7, r0
	bne _0201FD7C
	cmp r4, r1
	blt _0201FD68
_0201FD7C:
	cmp r4, r1
	bge _0201FD88
	add r3, r3, r4
	add r3, r3, #1
	cmp r3, #0x10
	blt _0201FD64
_0201FD88:
	cmp r3, #0x10
	blt _0201FD94
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
_0201FD94:
	lsl r0, r3, #5
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201FD5C

	thumb_func_start sub_0201FD9C
sub_0201FD9C: ; 0x0201FD9C
	mov r1, #0
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	bx lr
	thumb_func_end sub_0201FD9C

	thumb_func_start sub_0201FDA4
sub_0201FDA4: ; 0x0201FDA4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _0201FDC0
	ldr r0, _0201FDDC ; =0x021C0764
	ldr r2, [r4, #0x24]
	ldr r0, [r0, #0]
	ldr r1, [r4, #8]
	add r0, #0x24
	lsr r2, r2, #5
	bl sub_0201FD18
_0201FDC0:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _0201FDD8
	ldr r0, _0201FDDC ; =0x021C0764
	ldr r2, [r4, #0x28]
	ldr r0, [r0, #0]
	ldr r1, [r4, #8]
	add r0, #0x26
	lsr r2, r2, #5
	bl sub_0201FD18
_0201FDD8:
	pop {r4, pc}
	nop
_0201FDDC: .word 0x021C0764
	thumb_func_end sub_0201FDA4

	thumb_func_start sub_0201FDE0
sub_0201FDE0: ; 0x0201FDE0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _0201FDFC
	ldr r0, _0201FE18 ; =0x021C0764
	ldr r2, [r4, #0x24]
	ldr r0, [r0, #0]
	ldr r1, [r4, #8]
	add r0, #0x24
	lsr r2, r2, #5
	bl sub_0201FD3C
_0201FDFC:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _0201FE14
	ldr r0, _0201FE18 ; =0x021C0764
	ldr r2, [r4, #0x28]
	ldr r0, [r0, #0]
	ldr r1, [r4, #8]
	add r0, #0x26
	lsr r2, r2, #5
	bl sub_0201FD3C
_0201FE14:
	pop {r4, pc}
	nop
_0201FE18: .word 0x021C0764
	thumb_func_end sub_0201FDE0

	thumb_func_start sub_0201FE1C
sub_0201FE1C: ; 0x0201FE1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldr r2, [r5, #4]
	mov r0, #1
	tst r2, r0
	beq _0201FE42
	ldr r2, [r5, #8]
	lsl r2, r2, #5
	add r2, r1, r2
	cmp r2, r3
	bls _0201FE40
	bl GF_AssertFail
	bl sub_0201F8E0
	mov r0, #0
	b _0201FE42
_0201FE40:
	str r1, [r5, #0x24]
_0201FE42:
	ldr r2, [r5, #4]
	mov r1, #2
	tst r1, r2
	beq _0201FE64
	ldr r1, [r5, #8]
	lsl r1, r1, #5
	add r2, r4, r1
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bls _0201FE62
	bl GF_AssertFail
	bl sub_0201F8E0
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201FE62:
	str r4, [r5, #0x28]
_0201FE64:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201FE1C

	thumb_func_start sub_0201FE68
sub_0201FE68: ; 0x0201FE68
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r3, #1
	tst r3, r4
	beq _0201FE7C
	ldr r3, [r0, #8]
	ldr r4, [r1, #0]
	lsl r3, r3, #5
	add r3, r4, r3
	str r3, [r1, #0]
_0201FE7C:
	ldr r3, [r0, #4]
	mov r1, #2
	tst r1, r3
	beq _0201FE8E
	ldr r0, [r0, #8]
	ldr r1, [r2, #0]
	lsl r0, r0, #5
	add r0, r1, r0
	str r0, [r2, #0]
_0201FE8E:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201FE68

	.bss


	.global Unk_021C0764
Unk_021C0764: ; 0x021C0764
	.space 0x4

