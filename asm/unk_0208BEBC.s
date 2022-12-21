	.include "macros/function.inc"
	.include "include/unk_0208BEBC.inc"

	

	.text


	thumb_func_start sub_0208BEBC
sub_0208BEBC: ; 0x0208BEBC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0x55
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x66
	lsl r2, r2, #0xc
	bl sub_02017FC8
	add r0, r4, #0
	bl sub_0208BA78
	add r4, r0, #0
	bl ov62_02230060
	mov r0, #1
	mov r1, #0x2a
	bl sub_0200544C
	cmp r5, #0
	beq _0208BEF0
	ldr r1, _0208BF30 ; =0x000004AC
	mov r0, #4
	mov r2, #1
	bl sub_02004550
_0208BEF0:
	cmp r5, #0
	bne _0208BF22
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0202783C
	add r1, r4, #0
	add r1, #0x5c
	bl sub_0202797C
	add r0, r4, #0
	add r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #7
	blo _0208BF18
	add r0, r4, #0
	mov r1, #0
	add r0, #0x5c
	strb r1, [r0]
_0208BF18:
	add r0, r4, #0
	bl ov62_022316A0
	str r0, [r4, #0x58]
	b _0208BF26
_0208BF22:
	ldr r0, _0208BF34 ; =0x00007FDD
	str r0, [r4, #0x58]
_0208BF26:
	add r0, r4, #0
	bl ov62_0222F2C0
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208BF30: .word 0x000004AC
_0208BF34: .word 0x00007FDD
	thumb_func_end sub_0208BEBC

	thumb_func_start sub_0208BF38
sub_0208BF38: ; 0x0208BF38
	ldr r3, _0208BF40 ; =sub_0208BEBC
	mov r2, #0
	bx r3
	nop
_0208BF40: .word sub_0208BEBC
	thumb_func_end sub_0208BF38

	thumb_func_start sub_0208BF44
sub_0208BF44: ; 0x0208BF44
	ldr r3, _0208BF4C ; =sub_0208BEBC
	mov r2, #1
	bx r3
	nop
_0208BF4C: .word sub_0208BEBC
	thumb_func_end sub_0208BF44

	thumb_func_start sub_0208BF50
sub_0208BF50: ; 0x0208BF50
	push {r4, lr}
	add r4, r1, #0
	bl sub_0208BA78
	add r1, r4, #0
	str r4, [r0, #0x10]
	bl ov62_0222F910
	cmp r0, #0
	beq _0208BF68
	mov r0, #1
	pop {r4, pc}
_0208BF68:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0208BF50

	thumb_func_start sub_0208BF6C
sub_0208BF6C: ; 0x0208BF6C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0208BA78
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #3
	bhi _0208BFDE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0208BF88: ; jump table
	.short _0208BF90 - _0208BF88 - 2 ; case 0
	.short _0208BF9C - _0208BF88 - 2 ; case 1
	.short _0208BFB4 - _0208BF88 - 2 ; case 2
	.short _0208BFCA - _0208BF88 - 2 ; case 3
_0208BF90:
	bl ov62_0223069C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208BFFE
_0208BF9C:
	bl ov62_0223066C
	add r0, r5, #0
	bl ov62_02230B74
	add r0, r5, #0
	bl ov62_0223113C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208BFFE
_0208BFB4:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0208B988
	cmp r0, #0
	bne _0208BFFE
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208BFFE
_0208BFCA:
	ldr r0, _0208C004 ; =0x000006F4
	ldr r0, [r5, r0]
	bl sub_0208B988
	cmp r0, #0
	bne _0208BFFE
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208BFFE
_0208BFDE:
	add r0, r5, #0
	bl ov62_0222F514
	mov r0, #0x66
	bl sub_0201807C
	ldr r0, _0208C008 ; =0x0000003E
	bl sub_02006514
	ldr r0, _0208C00C ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0208BFFE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0208C004: .word 0x000006F4
_0208C008: .word 0x0000003E
_0208C00C: .word 0x021BF6DC
	thumb_func_end sub_0208BF6C

	.rodata


	.global Unk_020F3050
Unk_020F3050: ; 0x020F3050
	.incbin "incbin/arm9_rodata.bin", 0xE410, 0xE420 - 0xE410

	.global Unk_020F3060
Unk_020F3060: ; 0x020F3060
	.incbin "incbin/arm9_rodata.bin", 0xE420, 0x10

