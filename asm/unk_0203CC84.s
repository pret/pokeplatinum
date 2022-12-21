	.include "macros/function.inc"
	.include "include/unk_0203CC84.inc"

	

	.text


	thumb_func_start sub_0203CC84
sub_0203CC84: ; 0x0203CC84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02006840
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203CDB0
	ldr r1, _0203CCB0 ; =0x021C07DC
	str r0, [r1, #0]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0203CCA4
	bl sub_02053808
	b _0203CCA8
_0203CCA4:
	bl sub_02053704
_0203CCA8:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203CCB0: .word 0x021C07DC
	thumb_func_end sub_0203CC84

	thumb_func_start sub_0203CCB4
sub_0203CCB4: ; 0x0203CCB4
	push {r3, lr}
	bl sub_0203CDB0
	ldr r1, _0203CCC8 ; =0x021C07DC
	str r0, [r1, #0]
	bl sub_020535CC
	mov r0, #1
	pop {r3, pc}
	nop
_0203CCC8: .word 0x021C07DC
	thumb_func_end sub_0203CCB4

	thumb_func_start sub_0203CCCC
sub_0203CCCC: ; 0x0203CCCC
	push {r3, lr}
	bl sub_0200682C
	bl sub_0203CEEC
	cmp r0, #0
	beq _0203CCDE
	mov r0, #1
	pop {r3, pc}
_0203CCDE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203CCCC

	thumb_func_start sub_0203CCE4
sub_0203CCE4: ; 0x0203CCE4
	push {r3, lr}
	bl sub_0203CE6C
	ldr r0, _0203CCF8 ; =0x0000004D
	ldr r1, _0203CCFC ; =0x021D742C
	bl sub_02000EC4
	mov r0, #1
	pop {r3, pc}
	nop
_0203CCF8: .word 0x0000004D
_0203CCFC: .word 0x021D742C
	thumb_func_end sub_0203CCE4

	thumb_func_start sub_0203CD00
sub_0203CD00: ; 0x0203CD00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0203CD10
	bl sub_02022974
_0203CD10:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203CD1C
	bl sub_02022974
_0203CD1C:
	ldr r0, _0203CD3C ; =0x00000005
	mov r1, #2
	bl sub_02006590
	mov r1, #0
	str r1, [r4, #0x68]
	ldr r0, [r4, #0]
	mov r2, #0xb
	str r1, [r0, #8]
	ldr r0, _0203CD40 ; =0x021F89B0
	add r1, r4, #0
	bl sub_020067E8
	ldr r1, [r4, #0]
	str r0, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
_0203CD3C: .word 0x00000005
_0203CD40: .word 0x021F89B0
	thumb_func_end sub_0203CD00

	thumb_func_start sub_0203CD44
sub_0203CD44: ; 0x0203CD44
	mov r1, #0
	str r1, [r0, #0x68]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203CD44

	thumb_func_start sub_0203CD4C
sub_0203CD4C: ; 0x0203CD4C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203CD58
	mov r0, #1
	bx lr
_0203CD58:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203CD4C

	thumb_func_start sub_0203CD5C
sub_0203CD5C: ; 0x0203CD5C
	ldr r1, [r0, #0]
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0203CD6E
	ldr r0, [r0, #0x68]
	cmp r0, #0
	beq _0203CD6E
	mov r0, #1
	bx lr
_0203CD6E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203CD5C

	thumb_func_start sub_0203CD74
sub_0203CD74: ; 0x0203CD74
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0203CD80
	mov r0, #1
	bx lr
_0203CD80:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203CD74

	thumb_func_start sub_0203CD84
sub_0203CD84: ; 0x0203CD84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #4]
	add r6, r2, #0
	cmp r0, #0
	beq _0203CD98
	bl sub_02022974
_0203CD98:
	add r0, r5, #0
	bl sub_0203CD44
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xb
	bl sub_020067E8
	ldr r1, [r5, #0]
	str r0, [r1, #4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203CD84

	thumb_func_start sub_0203CDB0
sub_0203CDB0: ; 0x0203CDB0
	push {r3, r4, r5, lr}
	mov r2, #7
	add r5, r0, #0
	mov r0, #3
	mov r1, #0xb
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r1, #0x20
	mov r0, #3
	lsl r2, r1, #9
	bl sub_02017FC8
	mov r2, #3
	mov r0, #0
	mov r1, #0x5b
	lsl r2, r2, #8
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0xcc
	mov r2, #0xb
	bl sub_0200681C
	mov r1, #0
	mov r2, #0xcc
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018144
	str r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	str r1, [r0, #4]
	ldr r0, [r4, #0]
	str r1, [r0, #8]
	ldr r0, [r4, #0]
	str r1, [r0, #0xc]
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A720
	str r0, [r4, #0x1c]
	bl sub_02039D6C
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #0xb
	bl sub_0203A378
	mov r0, #0xb
	bl sub_0207D99C
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1, #0]
	mov r0, #0xb
	bl sub_0206940C
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	bl sub_0209ACBC
	add r1, r4, #0
	add r1, #0xb4
	str r0, [r1, #0]
	mov r0, #0xb
	bl sub_0209C370
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203CDB0

	thumb_func_start sub_0203CE6C
sub_0203CE6C: ; 0x0203CE6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_02039DE4
	add r0, r4, #0
	bl sub_0203A398
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0206942C
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_0209ACDC
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_0209C388
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x5b
	bl sub_0201807C
	mov r0, #0xb
	bl sub_0201807C
	mov r0, #0x20
	bl sub_0201807C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203CE6C

	thumb_func_start sub_0203CECC
sub_0203CECC: ; 0x0203CECC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0203CEE8
	bl sub_02006844
	cmp r0, #0
	beq _0203CEE8
	ldr r0, [r4, #0]
	bl sub_02006814
	mov r0, #0
	str r0, [r4, #0]
_0203CEE8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203CECC

	thumb_func_start sub_0203CEEC
sub_0203CEEC: ; 0x0203CEEC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203CF5C
	add r0, r4, #0
	bl sub_02050958
	cmp r0, #1
	bne _0203CF0E
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0203CF0E
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov5_021EA714
_0203CF0E:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0203CF2A
	bl sub_0203CECC
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0203CF36
	ldr r0, _0203CF58 ; =0x00000005
	bl sub_02006514
	b _0203CF36
_0203CF2A:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0203CF36
	add r0, r0, #4
	bl sub_0203CECC
_0203CF36:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0203CF54
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0203CF54
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _0203CF54
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0203CF54
	mov r0, #1
	pop {r4, pc}
_0203CF54:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0203CF58: .word 0x00000005
	thumb_func_end sub_0203CEEC

	thumb_func_start sub_0203CF5C
sub_0203CF5C: ; 0x0203CF5C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r5, #0
	ldr r1, [r1, #8]
	cmp r1, #0
	bne _0203CF7C
	ldr r1, [r4, #0x68]
	cmp r1, #0
	beq _0203CF7C
	bl sub_020509A4
	cmp r0, #0
	bne _0203CF7C
	mov r5, #1
_0203CF7C:
	cmp r5, #0
	beq _0203CF9C
	ldr r0, [r4, #0x3c]
	bl sub_0205F490
	ldr r3, _0203D120 ; =0x021BF67C
	add r0, sp, #8
	ldr r2, [r3, #0x48]
	ldr r3, [r3, #0x44]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov5_021D1CAC
_0203CF9C:
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x70]
	ldr r1, [r0, #0]
	ldr r0, _0203D124 ; =0x00000146
	cmp r1, r0
	bne _0203CFAA
	mov r2, #0
_0203CFAA:
	cmp r2, #4
	bhi _0203D0AA
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203CFBA: ; jump table
	.short _0203D0AA - _0203CFBA - 2 ; case 0
	.short _0203CFC4 - _0203CFBA - 2 ; case 1
	.short _0203D00E - _0203CFBA - 2 ; case 2
	.short _0203CFE4 - _0203CFBA - 2 ; case 3
	.short _0203D03A - _0203CFBA - 2 ; case 4
_0203CFC4:
	cmp r5, #0
	beq _0203CFD8
	bl sub_02058C40
	cmp r0, #0
	beq _0203CFD8
	add r0, sp, #8
	add r1, r4, #0
	bl ov5_021D213C
_0203CFD8:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205805C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203CFE4:
	cmp r5, #0
	beq _0203D002
	bl sub_02058C40
	cmp r0, #0
	beq _0203D000
	add r0, sp, #8
	add r1, r4, #0
	bl ov5_021D219C
	cmp r0, #1
	bne _0203D002
	mov r5, #0
	b _0203D002
_0203D000:
	mov r5, #0
_0203D002:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205805C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203D00E:
	cmp r5, #0
	bne _0203D014
	b _0203D11C
_0203D014:
	add r0, sp, #8
	add r1, r4, #0
	bl ov5_021D2298
	cmp r0, #1
	beq _0203D11C
	add r3, sp, #8
	ldrh r0, [r3, #6]
	mov r2, #0
	str r0, [sp]
	str r2, [sp, #4]
	ldrh r3, [r3, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x28]
	sub r2, r2, #1
	bl sub_0205F180
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203D03A:
	cmp r5, #0
	beq _0203D11C
	add r0, sp, #8
	add r1, r4, #0
	bl ov5_021D2368
	cmp r0, #1
	bne _0203D06E
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl ov5_021DDA78
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E1BCC
	ldr r0, [r4, #0x3c]
	bl ov5_021E0EEC
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov5_021EA714
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203D06E:
	ldr r0, _0203D120 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0203D080
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl ov5_021DDA78
_0203D080:
	mov r5, #0
	bl sub_0203D158
	cmp r0, #0
	beq _0203D090
	bl ov25_02253DD4
	add r5, r0, #0
_0203D090:
	add r3, sp, #8
	ldrh r0, [r3, #6]
	mov r2, #0
	mvn r2, r2
	str r0, [sp]
	str r5, [sp, #4]
	ldrh r3, [r3, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x28]
	bl sub_0205F180
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203D0AA:
	cmp r5, #0
	beq _0203D11C
	add r0, sp, #8
	add r1, r4, #0
	bl ov5_021D1DA4
	cmp r0, #1
	bne _0203D0E4
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl ov5_021DDA78
	add r0, r4, #0
	mov r1, #4
	bl ov5_021E1BCC
	ldr r0, [r4, #0x3c]
	bl sub_0205F56C
	ldr r0, [r4, #0x3c]
	bl ov5_021E0EEC
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov5_021EA714
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0203D0E4:
	ldr r0, _0203D120 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0203D0F6
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl ov5_021DDA78
_0203D0F6:
	mov r5, #0
	bl sub_0203D158
	cmp r0, #0
	beq _0203D106
	bl ov25_02253DD4
	add r5, r0, #0
_0203D106:
	add r3, sp, #8
	ldrh r0, [r3, #6]
	mov r2, #0
	mvn r2, r2
	str r0, [sp]
	str r5, [sp, #4]
	ldrh r3, [r3, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x28]
	bl sub_0205F180
_0203D11C:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203D120: .word 0x021BF67C
_0203D124: .word 0x00000146
	thumb_func_end sub_0203CF5C

	thumb_func_start sub_0203D128
sub_0203D128: ; 0x0203D128
	ldr r0, _0203D138 ; =0x021C07DC
	ldr r3, _0203D13C ; =sub_02035EC8
	ldr r0, [r0, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	str r1, [r0, #8]
	bx r3
	nop
_0203D138: .word 0x021C07DC
_0203D13C: .word sub_02035EC8
	thumb_func_end sub_0203D128

	thumb_func_start sub_0203D140
sub_0203D140: ; 0x0203D140
	ldr r0, _0203D150 ; =0x021C07DC
	ldr r3, _0203D154 ; =sub_02035EA8
	ldr r0, [r0, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #8]
	bx r3
	nop
_0203D150: .word 0x021C07DC
_0203D154: .word sub_02035EA8
	thumb_func_end sub_0203D140

	thumb_func_start sub_0203D158
sub_0203D158: ; 0x0203D158
	ldr r0, _0203D16C ; =0x021C07DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0203D166
	mov r0, #0
	bx lr
_0203D166:
	ldr r0, [r0, #0x14]
	bx lr
	nop
_0203D16C: .word 0x021C07DC
	thumb_func_end sub_0203D158

	thumb_func_start sub_0203D170
sub_0203D170: ; 0x0203D170
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0203D170

	thumb_func_start sub_0203D174
sub_0203D174: ; 0x0203D174
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0203D174

	.rodata


	.global Unk_020EA10C
Unk_020EA10C: ; 0x020EA10C
	.incbin "incbin/arm9_rodata.bin", 0x54CC, 0x54DC - 0x54CC

	.global Unk_020EA11C
Unk_020EA11C: ; 0x020EA11C
	.incbin "incbin/arm9_rodata.bin", 0x54DC, 0x10



	.bss


	.global Unk_021C07DC
Unk_021C07DC: ; 0x021C07DC
	.space 0x4

