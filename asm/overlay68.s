	.include "macros/function.inc"


	.text

	thumb_func_start ov68_0225C700
ov68_0225C700: ; 0x0225C700
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_02006840
	mov r2, #5
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x7a
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0xa3
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x7a
	bl sub_0200681C
	mov r2, #0xa3
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	ldr r1, [r5, #0]
	add r0, r4, #0
	mov r2, #0x7a
	bl ov68_0225C91C
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r1, [r5, #4]
	add r0, r4, r0
	mov r2, #0x7a
	bl ov68_0225CB70
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r2, [r5, #0]
	add r0, r4, r0
	add r1, r4, #0
	mov r3, #0x7a
	bl ov68_0225D128
	ldr r0, [r5, #8]
	cmp r0, #2
	blt _0225C762
	bl sub_02022974
_0225C762:
	mov r1, #0x7a
	str r1, [sp]
	add r3, r5, #0
	ldr r5, [r5, #8]
	add r0, r1, #0
	lsl r6, r5, #2
	ldr r5, _0225C790 ; =0x0225DEB0
	add r0, #0xfe
	add r1, #0xca
	ldr r5, [r5, r6]
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #0
	blx r5
	ldr r0, _0225C794 ; =ov68_0225C914
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0225C790: .word 0x0225DEB0
_0225C794: .word ov68_0225C914
	thumb_func_end ov68_0225C700

	thumb_func_start ov68_0225C798
ov68_0225C798: ; 0x0225C798
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200682C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _0225C896
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225C7C0: ; jump table
	.short _0225C7CA - _0225C7C0 - 2 ; case 0
	.short _0225C7F0 - _0225C7C0 - 2 ; case 1
	.short _0225C800 - _0225C7C0 - 2 ; case 2
	.short _0225C85E - _0225C7C0 - 2 ; case 3
	.short _0225C87E - _0225C7C0 - 2 ; case 4
_0225C7CA:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x7a
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r5, #4]
	mov r1, #1
	bl ov66_0222E31C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225C896
_0225C7F0:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225C896
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225C896
_0225C800:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225C830
	ldr r0, [r5, #4]
	bl ov66_0222E12C
	cmp r0, #1
	bne _0225C820
	ldr r0, [r5, #4]
	bl ov66_0222E2A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225C896
_0225C820:
	bl ov66_02231760
	cmp r0, #1
	bne _0225C830
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225C896
_0225C830:
	mov r1, #0x7a
	str r5, [sp]
	str r1, [sp, #4]
	ldr r5, [r5, #8]
	add r0, r1, #0
	lsl r6, r5, #2
	ldr r5, _0225C8A4 ; =0x0225DEA8
	mov r3, #0x9a
	add r0, #0xfe
	add r1, #0xca
	lsl r3, r3, #2
	ldr r5, [r5, r6]
	add r0, r7, r0
	add r1, r7, r1
	add r2, r7, #0
	add r3, r7, r3
	blx r5
	cmp r0, #1
	bne _0225C896
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225C896
_0225C85E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x7a
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225C896
_0225C87E:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225C896
	mov r0, #0x9a
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov68_0225D2A0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225C896:
	add r0, r7, #0
	bl ov68_0225C980
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225C8A4: .word 0x0225DEA8
	thumb_func_end ov68_0225C798

	thumb_func_start ov68_0225C8A8
ov68_0225C8A8: ; 0x0225C8A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	ldr r3, [r6, #8]
	mov r1, #0x5e
	lsl r6, r3, #2
	ldr r3, _0225C910 ; =0x0225DEA0
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x34
	ldr r3, [r3, r6]
	add r1, r4, r1
	add r2, r4, #0
	blx r3
	mov r0, #0x9a
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0x7a
	bl ov68_0225D178
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov68_0225CBC0
	add r0, r4, #0
	bl ov68_0225C960
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x7a
	bl sub_0201807C
	mov r0, #0
	bl sub_020057BC
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0225C910: .word 0x0225DEA0
	thumb_func_end ov68_0225C8A8

	thumb_func_start ov68_0225C914
ov68_0225C914: ; 0x0225C914
	ldr r3, _0225C918 ; =ov68_0225C98C
	bx r3
	; .align 2, 0
_0225C918: .word ov68_0225C98C
	thumb_func_end ov68_0225C914

	thumb_func_start ov68_0225C91C
ov68_0225C91C: ; 0x0225C91C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	bl sub_02025E44
	add r6, r0, #0
	mov r0, #0xba
	add r1, r4, #0
	bl sub_02006C24
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x20
	add r1, r4, #0
	bl sub_0201DBEC
	ldr r0, _0225C95C ; =0x0225DDC0
	bl sub_0201FE94
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov68_0225C9A0
	add r0, r5, #0
	add r1, r4, #0
	bl ov68_0225CAB4
	pop {r4, r5, r6, pc}
	nop
_0225C95C: .word 0x0225DDC0
	thumb_func_end ov68_0225C91C

	thumb_func_start ov68_0225C960
ov68_0225C960: ; 0x0225C960
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02006CA8
	bl sub_0201DC3C
	add r0, r4, #0
	bl ov68_0225CA8C
	add r0, r4, #0
	bl ov68_0225CB44
	pop {r4, pc}
	thumb_func_end ov68_0225C960

	thumb_func_start ov68_0225C980
ov68_0225C980: ; 0x0225C980
	ldr r3, _0225C988 ; =sub_020219F8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225C988: .word sub_020219F8
	thumb_func_end ov68_0225C980

	thumb_func_start ov68_0225C98C
ov68_0225C98C: ; 0x0225C98C
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0201C2B8
	bl sub_0200A858
	bl sub_0201DCAC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov68_0225C98C

	thumb_func_start ov68_0225C9A0
ov68_0225C9A0: ; 0x0225C9A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _0225CA7C ; =0x0225DD48
	add r7, r2, #0
	str r1, [sp, #0x10]
	bl sub_02018368
	add r0, r7, #0
	bl sub_02018340
	str r0, [r5, #0]
	ldr r0, _0225CA80 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #0
	ldr r6, _0225CA84 ; =0x0225DE18
	ldr r4, _0225CA88 ; =0x0225DD68
	str r0, [sp, #0x14]
_0225C9CA:
	ldr r1, [r4, #0]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r6, #0
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0]
	mov r1, #0x20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	add r3, r7, #0
	bl sub_02019690
	ldr r1, [r4, #0]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019EBC
	ldr r0, [sp, #0x14]
	add r6, #0x1c
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0225C9CA
	mov r0, #0
	mov r1, #0x80
	add r2, r7, #0
	bl sub_02002E98
	ldr r0, [sp, #0x10]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r7, [sp, #4]
	mov r1, #1
	ldr r0, [r5, #0]
	add r2, r1, #0
	mov r3, #5
	bl sub_0200DD0C
	mov r0, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #1
	mov r2, #0x1f
	mov r3, #6
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r2, [r5, #0]
	mov r0, #0xa9
	mov r1, #2
	mov r3, #4
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r2, [r5, #0]
	mov r0, #0xa9
	mov r1, #6
	mov r3, #4
	bl sub_02006E60
	mov r1, #0
	str r1, [sp]
	mov r0, #0xa9
	mov r2, #4
	add r3, r1, #0
	str r7, [sp, #4]
	bl sub_02006E84
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225CA7C: .word 0x0225DD48
_0225CA80: .word 0x021BF6DC
_0225CA84: .word 0x0225DE18
_0225CA88: .word 0x0225DD68
	thumb_func_end ov68_0225C9A0

	thumb_func_start ov68_0225CA8C
ov68_0225CA8C: ; 0x0225CA8C
	push {r4, r5, r6, lr}
	ldr r5, _0225CAB0 ; =0x0225DD68
	add r6, r0, #0
	mov r4, #0
_0225CA94:
	ldr r1, [r5, #0]
	ldr r0, [r6, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225CA94
	ldr r0, [r6, #0]
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225CAB0: .word 0x0225DD68
	thumb_func_end ov68_0225CA8C

	thumb_func_start ov68_0225CAB4
ov68_0225CAB4: ; 0x0225CAB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r6, [sp, #0x10]
	bl sub_0200A784
	mov r1, #0x10
	ldr r0, _0225CB40 ; =0x0225DD58
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #0x20
	add r1, r6, #0
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	mov r0, #1
	mov r1, #0x10
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	add r1, r5, #0
	mov r0, #0x20
	add r1, #8
	add r2, r6, #0
	bl sub_020095C4
	mov r7, #0x13
	str r0, [r5, #4]
	mov r4, #0
	lsl r7, r7, #4
_0225CB12:
	mov r0, #0x20
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225CB12
	bl sub_02039734
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225CB40: .word 0x0225DD58
	thumb_func_end ov68_0225CAB4

	thumb_func_start ov68_0225CB44
ov68_0225CB44: ; 0x0225CB44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_02021964
	mov r6, #0x13
	mov r4, #0
	lsl r6, r6, #4
_0225CB54:
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225CB54
	bl sub_0201E958
	bl sub_0201F8B4
	bl sub_0200A878
	pop {r4, r5, r6, pc}
	thumb_func_end ov68_0225CB44

	thumb_func_start ov68_0225CB70
ov68_0225CB70: ; 0x0225CB70
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0225CBBC ; =0x0225DD9C
	str r0, [sp]
	add r7, r2, #0
	str r1, [r0, #0x30]
	mov r6, #0
	add r5, r0, #0
_0225CB7E:
	ldr r2, [r4, #0]
	mov r0, #0
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	add r6, r6, #1
	add r4, r4, #4
	stmia r5!, {r0}
	cmp r6, #9
	blt _0225CB7E
	add r0, r7, #0
	bl sub_0200B358
	ldr r1, [sp]
	str r0, [r1, #0x24]
	mov r0, #1
	lsl r0, r0, #8
	add r1, r7, #0
	bl sub_02023790
	ldr r1, [sp]
	str r0, [r1, #0x28]
	mov r0, #1
	lsl r0, r0, #8
	add r1, r7, #0
	bl sub_02023790
	ldr r1, [sp]
	str r0, [r1, #0x2c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225CBBC: .word 0x0225DD9C
	thumb_func_end ov68_0225CB70

	thumb_func_start ov68_0225CBC0
ov68_0225CBC0: ; 0x0225CBC0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0225CBC8:
	ldr r0, [r5, #0]
	bl sub_0200B190
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #9
	blt _0225CBC8
	ldr r0, [r6, #0x24]
	bl sub_0200B3F0
	ldr r0, [r6, #0x28]
	bl sub_020237BC
	ldr r0, [r6, #0x2c]
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov68_0225CBC0

	thumb_func_start ov68_0225CBEC
ov68_0225CBEC: ; 0x0225CBEC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #9
	blo _0225CBFC
	bl sub_02022974
_0225CBFC:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x2c]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_0200C388
	ldr r0, [r5, #0x28]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov68_0225CBEC

	thumb_func_start ov68_0225CC18
ov68_0225CC18: ; 0x0225CC18
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	cmp r2, #0x3c
	blo _0225CC2A
	bhs _0225CC28
	bl sub_02022974
_0225CC28:
	mov r2, #0
_0225CC2A:
	cmp r2, #0x32
	bhs _0225CC38
	add r0, r4, #0
	mov r1, #1
	bl ov68_0225CBEC
	pop {r4, pc}
_0225CC38:
	add r0, r4, #0
	mov r1, #2
	sub r2, #0x32
	bl ov68_0225CBEC
	pop {r4, pc}
	thumb_func_end ov68_0225CC18

	thumb_func_start ov68_0225CC44
ov68_0225CC44: ; 0x0225CC44
	push {r3, r4, r5, lr}
	add r3, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	cmp r3, #0x3c
	blo _0225CC58
	bhs _0225CC56
	bl sub_02022974
_0225CC56:
	mov r3, #0
_0225CC58:
	cmp r3, #0x32
	bhs _0225CC68
	add r0, r4, #0
	add r1, r5, #3
	add r2, r3, #0
	bl ov68_0225CBEC
	pop {r3, r4, r5, pc}
_0225CC68:
	sub r3, #0x32
	add r0, r4, #0
	add r1, r5, #6
	add r2, r3, #0
	bl ov68_0225CBEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov68_0225CC44

	thumb_func_start ov68_0225CC78
ov68_0225CC78: ; 0x0225CC78
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r0, r7, #0
	add r4, r1, #0
	bl sub_02025E6C
	add r6, r0, #0
	ldr r0, [r5, #0x30]
	bl ov66_0222E3BC
	add r1, r6, #0
	add r2, r7, #0
	bl ov66_0222E640
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200B498
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov68_0225CC78

	thumb_func_start ov68_0225CCA8
ov68_0225CCA8: ; 0x0225CCA8
	push {r3, lr}
	ldr r3, [sp, #8]
	bl ov68_0225CCD0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov68_0225CCA8

	thumb_func_start ov68_0225CCB4
ov68_0225CCB4: ; 0x0225CCB4
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl ov68_0225CE48
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov68_0225CCB4

	thumb_func_start ov68_0225CCC8
ov68_0225CCC8: ; 0x0225CCC8
	ldr r3, _0225CCCC ; =ov68_0225D02C
	bx r3
	; .align 2, 0
_0225CCCC: .word ov68_0225D02C
	thumb_func_end ov68_0225CCC8

	thumb_func_start ov68_0225CCD0
ov68_0225CCD0: ; 0x0225CCD0
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r5, r0, #0
	mov r0, #0x80
	str r0, [sp]
	add r6, r3, #0
	add r4, r2, #0
	mov r2, #0
	str r6, [sp, #4]
	add r0, #0xc0
	ldr r0, [r4, r0]
	mov r1, #0xc7
	add r3, r2, #0
	bl sub_02007130
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #5
	str r6, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r2, [r4, #0]
	mov r1, #0xc8
	bl sub_020070E8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #5
	str r6, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r2, [r4, #0]
	mov r1, #0xc9
	bl sub_0200710C
	mov r0, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0x13
	str r6, [sp, #8]
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, #0x10
	ldr r1, [r4, r1]
	mov r2, #0xcd
	mov r3, #0
	bl sub_02009A4C
	str r0, [r5, #0x18]
	mov r0, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r1, #0x4d
	str r6, [sp, #0xc]
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0xc
	ldr r1, [r4, r1]
	mov r2, #0xcc
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	bl sub_0200A3DC
	cmp r0, #0
	bne _0225CD6C
	bl sub_02022974
_0225CD6C:
	ldr r0, [r5, #0x1c]
	bl sub_0200A640
	cmp r0, #0
	bne _0225CD7A
	bl sub_02022974
_0225CD7A:
	ldr r0, [r5, #0x18]
	bl sub_02009D4C
	ldr r0, [r5, #0x1c]
	bl sub_02009D4C
	mov r0, #0x14
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0x4e
	str r6, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #8
	ldr r1, [r4, r1]
	mov r2, #0xce
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0x20]
	mov r0, #0x14
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r1, #0x4f
	str r6, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0xcf
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0x24]
	mov r0, #0
	add r2, sp, #0x2c
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x14
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x15
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, #0x13
	str r0, [sp, #0x10]
	lsl r2, r2, #4
	ldr r3, [r4, r2]
	str r3, [sp, #0x14]
	add r3, r2, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	add r3, r2, #0
	add r3, #8
	ldr r3, [r4, r3]
	add r2, #0xc
	str r3, [sp, #0x1c]
	ldr r2, [r4, r2]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r4, #4]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x44]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl sub_02021B90
	mov r1, #0
	str r0, [r5, #0x14]
	bl sub_02021CAC
	ldr r0, [r4, #0]
	ldr r2, _0225CE44 ; =0x0225DD40
	add r1, r5, #0
	bl sub_0201A8D4
	add r5, #0x2c
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl ov68_0225DB8C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225CE44: .word 0x0225DD40
	thumb_func_end ov68_0225CCD0

	thumb_func_start ov68_0225CE48
ov68_0225CE48: ; 0x0225CE48
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r3, #0
	ldrh r3, [r4, #0x28]
	add r6, r1, #0
	cmp r3, #0xa
	bls _0225CE58
	b _0225D014
_0225CE58:
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0225CE64: ; jump table
	.short _0225CE7A - _0225CE64 - 2 ; case 0
	.short _0225CE96 - _0225CE64 - 2 ; case 1
	.short _0225CEA6 - _0225CE64 - 2 ; case 2
	.short _0225CEC8 - _0225CE64 - 2 ; case 3
	.short _0225CEEE - _0225CE64 - 2 ; case 4
	.short _0225CF16 - _0225CE64 - 2 ; case 5
	.short _0225CF6E - _0225CE64 - 2 ; case 6
	.short _0225CFA4 - _0225CE64 - 2 ; case 7
	.short _0225CFD4 - _0225CE64 - 2 ; case 8
	.short _0225CFFA - _0225CE64 - 2 ; case 9
	.short _0225D004 - _0225CE64 - 2 ; case 10
_0225CE7A:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x5e
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	mov r0, #1
	strh r0, [r4, #0x2a]
	mov r0, #0xa
	strh r0, [r4, #0x28]
	b _0225D018
_0225CE96:
	add r1, r2, #0
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	bl ov68_0225D304
	mov r0, #2
	strh r0, [r4, #0x28]
	b _0225D018
_0225CEA6:
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov68_0225D330
	cmp r0, #0
	beq _0225CEBC
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0225CEC2
	b _0225D018
_0225CEBC:
	mov r0, #3
	strh r0, [r4, #0x28]
	b _0225D018
_0225CEC2:
	mov r0, #9
	strh r0, [r4, #0x28]
	b _0225D018
_0225CEC8:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _0225CED2
	mov r2, #0x5c
	b _0225CED4
_0225CED2:
	mov r2, #0x5d
_0225CED4:
	add r0, r6, #0
	mov r1, #0
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	mov r0, #4
	strh r0, [r4, #0x2a]
	mov r0, #0xa
	strh r0, [r4, #0x28]
	b _0225D018
_0225CEEE:
	bl ov68_0225D06C
	add r0, r4, #0
	add r0, #0x2c
	add r1, r6, #0
	bl ov68_0225DC40
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D218
	add r0, r4, #0
	bl ov68_0225D0F8
	add r0, r4, #0
	bl ov68_0225D11C
	mov r0, #5
	strh r0, [r4, #0x28]
	b _0225D018
_0225CF16:
	ldr r0, _0225D01C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0225CF2E
	ldr r0, _0225D020 ; =0x000005DC
	bl sub_02005748
	ldrh r0, [r4, #0x28]
	add r0, r0, #1
	strh r0, [r4, #0x28]
	b _0225D018
_0225CF2E:
	mov r0, #0x40
	tst r0, r1
	beq _0225CF4A
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	bmi _0225CF66
	mov r0, #0x5e
	lsl r0, r0, #4
	bl sub_02005748
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	b _0225CF66
_0225CF4A:
	mov r0, #0x80
	tst r0, r1
	beq _0225CF66
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	cmp r0, #3
	bge _0225CF66
	mov r0, #0x5e
	lsl r0, r0, #4
	bl sub_02005748
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
_0225CF66:
	add r0, r4, #0
	bl ov68_0225D0F8
	b _0225D018
_0225CF6E:
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x30]
	ldr r0, [r0, #4]
	ldr r2, [r4, #0x10]
	bl ov66_0222E5D8
	ldr r0, [r4, #0x10]
	bl ov66_022333E4
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x60
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D218
	add r0, r5, #0
	bl ov68_0225D284
	ldr r0, _0225D024 ; =0x00000565
	bl sub_02005748
	mov r0, #7
	strh r0, [r4, #0x28]
	b _0225D018
_0225CFA4:
	bl ov66_02233434
	cmp r0, #1
	beq _0225D018
	ldr r0, _0225D028 ; =0x000005E4
	bl sub_02005748
	add r0, r5, #0
	bl ov68_0225D2A0
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x61
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	mov r0, #8
	strh r0, [r4, #0x2a]
	mov r0, #0xa
	strh r0, [r4, #0x28]
	b _0225D018
_0225CFD4:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _0225CFDE
	mov r2, #0x62
	b _0225CFE0
_0225CFDE:
	mov r2, #0x63
_0225CFE0:
	add r0, r6, #0
	mov r1, #0
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	mov r0, #9
	strh r0, [r4, #0x2a]
	mov r0, #0xa
	strh r0, [r4, #0x28]
	b _0225D018
_0225CFFA:
	add r0, r5, #0
	bl ov68_0225D2CC
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225D004:
	add r0, r5, #0
	bl ov68_0225D2B4
	cmp r0, #1
	bne _0225D018
	ldrh r0, [r4, #0x2a]
	strh r0, [r4, #0x28]
	b _0225D018
_0225D014:
	bl sub_02022974
_0225D018:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225D01C: .word 0x021BF67C
_0225D020: .word 0x000005DC
_0225D024: .word 0x00000565
_0225D028: .word 0x000005E4
	thumb_func_end ov68_0225CE48

	thumb_func_start ov68_0225D02C
ov68_0225D02C: ; 0x0225D02C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x2c
	add r4, r2, #0
	bl ov68_0225DC24
	add r0, r5, #0
	bl sub_0201A8FC
	ldr r0, [r5, #0x14]
	bl sub_02021BD4
	ldr r0, [r5, #0x18]
	bl sub_0200A4E4
	ldr r0, [r5, #0x1c]
	bl sub_0200A6DC
	mov r7, #0x13
	mov r6, #0
	lsl r7, r7, #4
_0225D056:
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x18]
	bl sub_02009D68
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #4
	cmp r6, #4
	blt _0225D056
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov68_0225D02C

	thumb_func_start ov68_0225D06C
ov68_0225D06C: ; 0x0225D06C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x2c
	add r1, r4, #0
	mov r2, #0
	bl ov68_0225DC58
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225D0F4 ; =0x00010200
	mov r1, #1
	str r0, [sp, #8]
	add r0, r5, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	add r0, #0x2c
	add r1, r4, #0
	mov r2, #1
	bl ov68_0225DC58
	add r2, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225D0F4 ; =0x00010200
	mov r3, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	add r0, #0x2c
	add r1, r4, #0
	mov r2, #2
	bl ov68_0225DC58
	add r2, r0, #0
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225D0F4 ; =0x00010200
	mov r3, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225D0F4: .word 0x00010200
	thumb_func_end ov68_0225D06C

	thumb_func_start ov68_0225D0F8
ov68_0225D0F8: ; 0x0225D0F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02021CAC
	ldr r2, [r4, #0x10]
	mov r1, #0xc
	ldr r3, _0225D118 ; =0x0225DD78
	mul r1, r2
	ldr r0, [r4, #0x14]
	add r1, r3, r1
	bl sub_02021C50
	pop {r4, pc}
	nop
_0225D118: .word 0x0225DD78
	thumb_func_end ov68_0225D0F8

	thumb_func_start ov68_0225D11C
ov68_0225D11C: ; 0x0225D11C
	ldr r3, _0225D124 ; =sub_02021CC8
	ldr r0, [r0, #0x14]
	mov r1, #1
	bx r3
	; .align 2, 0
_0225D124: .word sub_02021CC8
	thumb_func_end ov68_0225D11C

	thumb_func_start ov68_0225D128
ov68_0225D128: ; 0x0225D128
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r1, #0]
	add r1, r5, #0
	add r4, r2, #0
	add r6, r3, #0
	add r1, #8
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #8
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #1
	lsl r0, r0, #8
	add r1, r6, #0
	bl sub_02023790
	str r0, [r5, #0x18]
	add r0, r4, #0
	bl sub_02025E44
	bl sub_02027AC0
	str r0, [r5, #4]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov68_0225D128

	thumb_func_start ov68_0225D178
ov68_0225D178: ; 0x0225D178
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225D196
	ldr r0, [r5, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225D196:
	add r0, r5, #0
	bl ov68_0225D2A0
	ldr r0, [r5, #0x18]
	bl sub_020237BC
	add r0, r5, #0
	add r0, #8
	bl sub_0201A8FC
	add r0, r5, #0
	add r1, r4, #0
	bl ov68_0225D348
	pop {r3, r4, r5, pc}
	thumb_func_end ov68_0225D178

	thumb_func_start ov68_0225D1B4
ov68_0225D1B4: ; 0x0225D1B4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225D1D4
	ldr r0, [r5, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225D1D4:
	add r0, r5, #0
	add r0, #8
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_02023810
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #4]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, _0225D214 ; =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x18]
	add r0, #8
	bl sub_0201D78C
	str r0, [r5, #0]
	add r5, #8
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #5
	bl sub_0200E060
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225D214: .word 0x0001020F
	thumb_func_end ov68_0225D1B4

	thumb_func_start ov68_0225D218
ov68_0225D218: ; 0x0225D218
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225D238
	ldr r0, [r5, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225D238:
	add r0, r5, #0
	add r0, #8
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_02023810
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225D280 ; =0x0001020F
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x18]
	add r0, #8
	bl sub_0201D78C
	add r0, r5, #0
	mov r1, #1
	add r0, #8
	add r2, r1, #0
	mov r3, #5
	bl sub_0200E060
	add r5, #8
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225D280: .word 0x0001020F
	thumb_func_end ov68_0225D218

	thumb_func_start ov68_0225D284
ov68_0225D284: ; 0x0225D284
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225D292
	bl sub_02022974
_0225D292:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl sub_0200E7FC
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov68_0225D284

	thumb_func_start ov68_0225D2A0
ov68_0225D2A0: ; 0x0225D2A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225D2B2
	bl sub_0200EBA0
	mov r0, #0
	str r0, [r4, #0x1c]
_0225D2B2:
	pop {r4, pc}
	thumb_func_end ov68_0225D2A0

	thumb_func_start ov68_0225D2B4
ov68_0225D2B4: ; 0x0225D2B4
	push {r3, lr}
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0225D2C8
	mov r0, #1
	pop {r3, pc}
_0225D2C8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov68_0225D2B4

	thumb_func_start ov68_0225D2CC
ov68_0225D2CC: ; 0x0225D2CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225D2E8
	ldr r0, [r4, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225D2E8:
	add r0, r4, #0
	bl ov68_0225D2A0
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl sub_0200E084
	add r4, #8
	add r0, r4, #0
	bl sub_0201AD10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov68_0225D2CC

	thumb_func_start ov68_0225D304
ov68_0225D304: ; 0x0225D304
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0225D318
	bl sub_02022974
_0225D318:
	str r6, [sp]
	ldr r0, [r4, #0]
	ldr r1, _0225D32C ; =0x0225DD38
	mov r2, #0x1f
	mov r3, #6
	bl sub_02002100
	str r0, [r5, #0x20]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0225D32C: .word 0x0225DD38
	thumb_func_end ov68_0225D304

	thumb_func_start ov68_0225D330
ov68_0225D330: ; 0x0225D330
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0225D346
	mov r1, #0
	str r1, [r4, #0x20]
_0225D346:
	pop {r4, pc}
	thumb_func_end ov68_0225D330

	thumb_func_start ov68_0225D348
ov68_0225D348: ; 0x0225D348
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0225D35A
	bl sub_02002154
	mov r0, #0
	str r0, [r4, #0x20]
_0225D35A:
	pop {r4, pc}
	thumb_func_end ov68_0225D348

	thumb_func_start ov68_0225D35C
ov68_0225D35C: ; 0x0225D35C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov68_0225D388
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov68_0225D35C

	thumb_func_start ov68_0225D36C
ov68_0225D36C: ; 0x0225D36C
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl ov68_0225D478
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov68_0225D36C

	thumb_func_start ov68_0225D380
ov68_0225D380: ; 0x0225D380
	ldr r3, _0225D384 ; =ov68_0225D868
	bx r3
	; .align 2, 0
_0225D384: .word ov68_0225D868
	thumb_func_end ov68_0225D380

	thumb_func_start ov68_0225D388
ov68_0225D388: ; 0x0225D388
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x30]
	mov r1, #0x80
	str r1, [sp]
	add r6, r2, #0
	add r1, #0xc0
	str r0, [sp, #0x30]
	str r0, [sp, #4]
	ldr r0, [r6, r1]
	mov r2, #0
	str r3, [sp, #0x18]
	mov r1, #0xc7
	add r3, r2, #0
	bl sub_02007130
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	ldr r2, [r6, #0]
	mov r1, #0xc8
	bl sub_020070E8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	ldr r2, [r6, #0]
	mov r1, #0xca
	bl sub_0200710C
	ldr r4, _0225D474 ; =0x0225DDE8
	ldr r5, [sp, #0x10]
	mov r7, #0
_0225D3E6:
	ldr r0, [r6, #0]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	add r7, r7, #1
	add r4, #8
	add r5, #0x10
	cmp r7, #6
	blt _0225D3E6
	mov r3, #0xc1
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r2, #0x6d
	lsl r3, r3, #0xa
	bl ov68_0225D89C
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r1, #0xc8
	mov r2, #0
	add r3, #0x84
	bl sub_020071B4
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	add r1, #0x80
	str r0, [r1, #0]
	ldr r0, [sp, #0x10]
	mov r1, #1
	add r0, #0x88
	bl ov68_0225DB8C
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x30]
	add r0, #0xa8
	mov r1, #0
	bl ov68_0225DB8C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #4]
	add r1, #0xc8
	bl ov66_0222F144
	cmp r0, #0
	bne _0225D464
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #4]
	add r0, #0xc8
	bl ov68_0225DCCC
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #4]
	add r1, #0xc8
	bl ov66_0222F124
_0225D464:
	ldr r0, [sp, #0x10]
	add r0, #0xdc
	str r0, [sp, #0x10]
	bl ov68_0225DC74
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225D474: .word 0x0225DDE8
	thumb_func_end ov68_0225D388

	thumb_func_start ov68_0225D478
ov68_0225D478: ; 0x0225D478
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r2, [sp, #0x14]
	ldr r2, [sp, #0x44]
	add r4, r0, #0
	str r2, [sp, #0x44]
	add r2, r4, #0
	add r2, #0x60
	ldrh r2, [r2]
	add r7, r1, #0
	add r5, r3, #0
	ldr r6, [sp, #0x40]
	cmp r2, #0x16
	bls _0225D496
	b _0225D85C
_0225D496:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0225D4A2: ; jump table
	.short _0225D4D0 - _0225D4A2 - 2 ; case 0
	.short _0225D4FE - _0225D4A2 - 2 ; case 1
	.short _0225D51C - _0225D4A2 - 2 ; case 2
	.short _0225D54A - _0225D4A2 - 2 ; case 3
	.short _0225D578 - _0225D4A2 - 2 ; case 4
	.short _0225D5D0 - _0225D4A2 - 2 ; case 5
	.short _0225D5E2 - _0225D4A2 - 2 ; case 6
	.short _0225D622 - _0225D4A2 - 2 ; case 7
	.short _0225D646 - _0225D4A2 - 2 ; case 8
	.short _0225D66C - _0225D4A2 - 2 ; case 9
	.short _0225D68C - _0225D4A2 - 2 ; case 10
	.short _0225D6A8 - _0225D4A2 - 2 ; case 11
	.short _0225D6C6 - _0225D4A2 - 2 ; case 12
	.short _0225D6D6 - _0225D4A2 - 2 ; case 13
	.short _0225D704 - _0225D4A2 - 2 ; case 14
	.short _0225D722 - _0225D4A2 - 2 ; case 15
	.short _0225D750 - _0225D4A2 - 2 ; case 16
	.short _0225D77E - _0225D4A2 - 2 ; case 17
	.short _0225D7E0 - _0225D4A2 - 2 ; case 18
	.short _0225D7F2 - _0225D4A2 - 2 ; case 19
	.short _0225D804 - _0225D4A2 - 2 ; case 20
	.short _0225D826 - _0225D4A2 - 2 ; case 21
	.short _0225D832 - _0225D4A2 - 2 ; case 22
_0225D4D0:
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0225D4DC
	mov r2, #0x67
	b _0225D4DE
_0225D4DC:
	mov r2, #0x69
_0225D4DE:
	add r0, r7, #0
	mov r1, #0
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	add r0, r4, #0
	mov r1, #1
	add r0, #0x62
	strh r1, [r0]
	mov r0, #0x16
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D4FE:
	add r0, #0x88
	bl ov68_0225DC40
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	add r0, r4, #0
	mov r1, #2
	add r0, #0x62
	strh r1, [r0]
	mov r0, #0x16
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D51C:
	ldr r0, _0225D848 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0225D528
	b _0225D860
_0225D528:
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x68
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	add r0, r4, #0
	mov r1, #3
	add r0, #0x62
	strh r1, [r0]
	mov r0, #0x16
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D54A:
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0225D556
	mov r2, #0x6b
	b _0225D558
_0225D556:
	mov r2, #0x6c
_0225D558:
	add r0, r7, #0
	mov r1, #0
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	add r0, r4, #0
	mov r1, #4
	add r0, #0x62
	strh r1, [r0]
	mov r0, #0x16
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D578:
	ldr r0, [r6, #4]
	bl ov66_0222E3BC
	add r1, sp, #0x20
	bl ov66_0222E908
	ldr r0, [r6, #4]
	bl ov66_0222E338
	add r1, r0, #0
	ldr r0, [r6, #4]
	bl ov66_0222E924
	add r1, sp, #0x20
	str r1, [sp]
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	ldr r1, _0225D84C ; =0x00090A00
	add r2, r7, #0
	str r1, [sp, #8]
	ldr r1, _0225D850 ; =0x000D0E00
	str r1, [sp, #0xc]
	add r1, r4, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0x88
	bl ov68_0225D8F0
	add r1, r4, #0
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc8
	mov r3, #1
	bl ov68_0225DA30
	mov r0, #0x17
	lsl r0, r0, #6
	bl sub_02005748
	mov r0, #5
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D5D0:
	ldr r1, [sp, #0x14]
	bl ov68_0225DA74
	cmp r0, #1
	bne _0225D65A
	mov r0, #6
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D5E2:
	ldr r0, _0225D848 ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	tst r0, r1
	beq _0225D65A
	add r0, r4, #0
	add r0, #0xa8
	ldr r2, [r0, #0]
	sub r0, r1, #2
	cmp r2, r0
	beq _0225D600
	mov r0, #7
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D600:
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x70
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0x62
	strh r1, [r0]
	mov r0, #0x16
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D622:
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x6f
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D218
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x44]
	add r0, r5, #0
	bl ov68_0225D304
	mov r0, #8
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D646:
	ldr r1, [sp, #0x44]
	add r0, r5, #0
	bl ov68_0225D330
	cmp r0, #0
	beq _0225D65C
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0225D664
_0225D65A:
	b _0225D860
_0225D65C:
	mov r0, #9
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D664:
	mov r0, #0x14
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D66C:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0xa
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D68C:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225D72C
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x44]
	add r0, r4, #0
	add r1, r7, #0
	bl ov68_0225DB3C
	mov r0, #0xb
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D6A8:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	ldr r0, [sp, #0x44]
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0xc
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D6C6:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225D72C
	mov r0, #0xd
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D6D6:
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0225D6E2
	mov r2, #0x71
	b _0225D6E4
_0225D6E2:
	mov r2, #0x73
_0225D6E4:
	add r0, r7, #0
	mov r1, #0
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x62
	strh r1, [r0]
	mov r0, #0x16
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D704:
	add r0, #0xa8
	bl ov68_0225DC40
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x62
	strh r1, [r0]
	mov r0, #0x16
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D722:
	ldr r0, _0225D848 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0225D72E
_0225D72C:
	b _0225D860
_0225D72E:
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x72
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x62
	strh r1, [r0]
	mov r0, #0x16
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D750:
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0225D75C
	mov r2, #0x75
	b _0225D75E
_0225D75C:
	mov r2, #0x76
_0225D75E:
	add r0, r7, #0
	mov r1, #0
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	add r0, r4, #0
	mov r1, #0x11
	add r0, #0x62
	strh r1, [r0]
	mov r0, #0x16
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D77E:
	ldr r0, [r6, #0]
	bl sub_02030EC4
	add r5, r0, #0
	bl sub_02030ED0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02030ED4
	str r0, [sp, #0x1c]
	ldr r0, [r6, #4]
	bl ov66_0222E338
	add r1, r0, #0
	ldr r0, [r6, #4]
	bl ov66_0222E924
	add r1, sp, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	ldr r1, _0225D854 ; =0x000B0C00
	add r2, r7, #0
	str r1, [sp, #8]
	ldr r1, _0225D858 ; =0x000F0E00
	str r1, [sp, #0xc]
	add r1, r4, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xa8
	bl ov68_0225D8F0
	add r1, r4, #0
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xdc
	mov r3, #2
	bl ov68_0225DA30
	mov r0, #0x17
	lsl r0, r0, #6
	bl sub_02005748
	mov r0, #0x12
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D7E0:
	ldr r1, [sp, #0x14]
	bl ov68_0225DA74
	cmp r0, #1
	bne _0225D860
	mov r0, #0x13
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D7F2:
	ldr r0, _0225D848 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0225D860
	mov r0, #0x14
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D804:
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x78
	bl ov68_0225CBEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_0225D1B4
	add r0, r4, #0
	mov r1, #0x15
	add r0, #0x62
	strh r1, [r0]
	mov r0, #0x16
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D826:
	add r0, r5, #0
	bl ov68_0225D2CC
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225D832:
	add r0, r5, #0
	bl ov68_0225D2B4
	cmp r0, #1
	bne _0225D860
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	add r4, #0x60
	strh r0, [r4]
	b _0225D860
	; .align 2, 0
_0225D848: .word 0x021BF67C
_0225D84C: .word 0x00090A00
_0225D850: .word 0x000D0E00
_0225D854: .word 0x000B0C00
_0225D858: .word 0x000F0E00
_0225D85C:
	bl sub_02022974
_0225D860:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov68_0225D478

	thumb_func_start ov68_0225D868
ov68_0225D868: ; 0x0225D868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x88
	bl ov68_0225DC24
	add r0, r5, #0
	add r0, #0xa8
	bl ov68_0225DC24
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r5, #0
	mov r4, #0
	add r0, #0x80
	str r4, [r0, #0]
_0225D88C:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _0225D88C
	pop {r3, r4, r5, pc}
	thumb_func_end ov68_0225D868

	thumb_func_start ov68_0225D89C
ov68_0225D89C: ; 0x0225D89C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	mov r1, #0
	add r5, r0, #0
	add r4, r3, #0
	bl sub_0201ADA4
	add r0, r6, #0
	mov r1, #0
	add r2, r7, #0
	bl ov68_0225CBEC
	add r6, r0, #0
	mov r0, #1
	add r1, r6, #0
	mov r2, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r4, #0x90
	mov r0, #0
	sub r3, r4, r3
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	lsr r3, r3, #1
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov68_0225D89C

	thumb_func_start ov68_0225D8F0
ov68_0225D8F0: ; 0x0225D8F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	str r1, [sp, #0x20]
	add r0, #0x10
	mov r1, #0
	str r2, [sp, #0x10]
	ldr r7, [sp, #0x38]
	ldr r4, [sp, #0x40]
	bl sub_0201ADA4
	add r0, r6, #0
	add r0, #0x50
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	mov r2, #0
	bl ov68_0225DC58
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r6, #0
	str r4, [sp, #8]
	add r0, #0x10
	mov r1, #1
	str r3, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	mov r2, #1
	bl ov68_0225DC58
	add r2, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r6, #0
	str r4, [sp, #8]
	mov r3, #0
	add r0, #0x10
	mov r1, #1
	str r3, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	mov r2, #2
	bl ov68_0225DC58
	add r2, r0, #0
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r6, #0
	str r4, [sp, #8]
	mov r3, #0
	add r0, #0x10
	mov r1, #1
	str r3, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	ldr r1, [r7, #0]
	ldr r0, [r0, #4]
	cmp r1, r0
	bne _0225DA1C
	ldr r0, [r7, #4]
	cmp r0, #3
	bhs _0225DA1C
	ldr r0, [sp, #0x48]
	cmp r0, #1
	bne _0225D996
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x14]
	b _0225D998
_0225D996:
	str r4, [sp, #0x14]
_0225D998:
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x3c]
	mov r1, #0
	bl ov68_0225CC78
	ldr r0, [sp, #0x10]
	mov r1, #0
	mov r2, #0x6e
	bl ov68_0225CBEC
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	mov r0, #1
	mov r2, #0
	bl sub_02002D7C
	str r0, [sp, #0x1c]
	mov r1, #0
	ldr r3, [sp, #0x1c]
	mov r5, #0x60
	sub r5, r5, r3
	lsr r3, r5, #0x1f
	add r3, r5, r3
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	add r0, r6, #0
	str r1, [sp, #0xc]
	add r0, #0x50
	mov r1, #1
	asr r3, r3, #1
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	ldr r2, [r7, #4]
	bl ov68_0225DC58
	add r5, r0, #0
	mov r0, #1
	add r1, r5, #0
	mov r2, #0
	bl sub_02002D7C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r4, #0x68
	sub r4, r4, r3
	lsr r3, r4, #0x1f
	add r3, r4, r3
	add r0, r6, #0
	asr r3, r3, #1
	str r1, [sp, #0xc]
	add r0, #0x50
	mov r1, #1
	add r2, r5, #0
	add r3, #0x60
	bl sub_0201D78C
_0225DA1C:
	add r0, r6, #0
	add r0, #0x50
	bl sub_0201A9A4
	add r6, #0x10
	add r0, r6, #0
	bl sub_0201A9A4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov68_0225D8F0

	thumb_func_start ov68_0225DA30
ov68_0225DA30: ; 0x0225DA30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	lsl r0, r3, #0x18
	mov r4, #0
	lsr r0, r0, #0x18
	str r1, [sp]
	str r4, [r6, #0x64]
	add r5, r6, #0
	str r0, [sp, #4]
_0225DA44:
	mov r0, #0
	str r0, [r5, #0x68]
	ldr r0, [sp]
	add r1, r4, #0
	mov r2, #0x50
	bl ov68_0225DCA4
	str r0, [r5, #0x74]
	add r0, r4, #2
	lsl r7, r0, #4
	ldr r1, [sp, #4]
	add r0, r6, r7
	bl sub_0201C2B4
	add r0, r6, r7
	mov r1, #0
	bl sub_0201ADA4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0225DA44
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov68_0225DA30

	thumb_func_start ov68_0225DA74
ov68_0225DA74: ; 0x0225DA74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r0, #0
	ldr r0, [r6, #0x64]
	cmp r0, #0x14
	blt _0225DA86
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225DA86:
	add r1, r0, #1
	mov r0, #0x50
	str r1, [r6, #0x64]
	mul r0, r1
	mov r1, #0x14
	bl sub_020E1F6C
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r6, [sp, #0x18]
_0225DA9E:
	ldr r0, [sp, #0x18]
	ldr r2, [r0, #0x74]
	ldr r0, [r0, #0x68]
	cmp r0, r2
	bne _0225DAB0
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	b _0225DB18
_0225DAB0:
	ldr r1, [sp, #0x24]
	cmp r2, r1
	blt _0225DABE
	sub r4, r1, r0
	add r2, r1, #0
	ldr r1, [sp, #0x18]
	b _0225DAC2
_0225DABE:
	ldr r1, [sp, #0x18]
	sub r4, r2, r0
_0225DAC2:
	mov r5, #0
	str r2, [r1, #0x68]
	cmp r4, #0
	ble _0225DB0C
	ldr r1, [sp, #0x20]
	add r0, r0, #4
	add r1, r1, #2
	lsl r7, r1, #4
	str r0, [sp, #0x28]
_0225DAD4:
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	add r0, r0, r5
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0x14]
	add r1, #0x84
	ldr r1, [r1, #0]
	add r0, r6, r7
	ldr r1, [r1, #0x14]
	mov r2, #0xf7
	mov r3, #0x10
	bl sub_0201ADDC
	add r5, r5, #1
	cmp r5, r4
	blt _0225DAD4
_0225DB0C:
	ldr r0, [sp, #0x20]
	add r0, r0, #2
	lsl r0, r0, #4
	add r0, r6, r0
	bl sub_0201A9A4
_0225DB18:
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #3
	blt _0225DA9E
	ldr r0, [sp, #0x1c]
	cmp r0, #3
	bne _0225DB34
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225DB34:
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov68_0225DA74

	thumb_func_start ov68_0225DB3C
ov68_0225DB3C: ; 0x0225DB3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	add r7, r0, #0
	str r4, [sp, #8]
	mov r0, #5
	str r3, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r2, r0]
	str r1, [sp, #0x10]
	ldr r2, [r2, #0]
	mov r1, #0xcb
	add r3, r4, #0
	bl sub_0200710C
	add r5, r7, #0
	add r6, r4, #0
_0225DB62:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A954
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _0225DB62
	ldr r1, [sp, #0x10]
	ldr r3, _0225DB88 ; =0x00050600
	add r0, r7, #0
	mov r2, #0x77
	bl ov68_0225D89C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225DB88: .word 0x00050600
	thumb_func_end ov68_0225DB3C

	thumb_func_start ov68_0225DB8C
ov68_0225DB8C: ; 0x0225DB8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r2, #0
	str r1, [sp]
	lsl r0, r0, #8
	add r1, r7, #0
	bl sub_02023790
	str r0, [r5, #0x10]
	mov r6, #0
	add r4, r5, #0
_0225DBA4:
	mov r0, #1
	lsl r0, r0, #8
	add r1, r7, #0
	bl sub_02023790
	str r0, [r4, #0x14]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _0225DBA4
	ldr r0, [sp]
	cmp r0, #1
	bne _0225DBC2
	mov r6, #0
	b _0225DBC4
_0225DBC2:
	mov r6, #4
_0225DBC4:
	add r0, r6, #2
	bl ov66_02233454
	str r0, [r5, #8]
	add r0, r6, #1
	bl ov66_02233454
	str r0, [r5, #0]
	add r0, r6, #0
	bl ov66_02233454
	str r0, [r5, #4]
	add r0, r6, #3
	bl ov66_02233454
	str r0, [r5, #0xc]
	cmp r0, #1
	bne _0225DC20
	add r0, r6, #0
	bl ov66_02233538
	add r4, r0, #0
	bne _0225DBF6
	bl sub_02022974
_0225DBF6:
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl sub_02023D28
	mov r4, #0
	add r7, r6, #1
_0225DC02:
	add r0, r7, r4
	bl ov66_02233538
	add r6, r0, #0
	bne _0225DC10
	bl sub_02022974
_0225DC10:
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	bl sub_02023D28
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0225DC02
_0225DC20:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov68_0225DB8C

	thumb_func_start ov68_0225DC24
ov68_0225DC24: ; 0x0225DC24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_020237BC
	mov r4, #0
_0225DC30:
	ldr r0, [r5, #0x14]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0225DC30
	pop {r3, r4, r5, pc}
	thumb_func_end ov68_0225DC24

	thumb_func_start ov68_0225DC40
ov68_0225DC40: ; 0x0225DC40
	push {r3, lr}
	add r2, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _0225DC54
	add r0, r1, #0
	ldr r1, [r2, #0]
	bl ov68_0225CC18
	pop {r3, pc}
_0225DC54:
	ldr r0, [r2, #0x10]
	pop {r3, pc}
	thumb_func_end ov68_0225DC40

	thumb_func_start ov68_0225DC58
ov68_0225DC58: ; 0x0225DC58
	push {r3, lr}
	add r3, r0, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne _0225DC6C
	add r0, r1, #0
	ldr r1, [r3, #0]
	bl ov68_0225CC44
	pop {r3, pc}
_0225DC6C:
	lsl r0, r2, #2
	add r0, r3, r0
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	thumb_func_end ov68_0225DC58

	thumb_func_start ov68_0225DC74
ov68_0225DC74: ; 0x0225DC74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	str r6, [r5, #0xc]
	add r4, r5, #0
	str r6, [r5, #0x10]
	add r4, #0xc
	add r7, r6, #0
_0225DC84:
	add r0, r6, #0
	add r0, #8
	bl ov66_02233454
	str r0, [r5, #0]
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	add r0, r1, r0
	adc r2, r7
	str r0, [r4, #0]
	add r6, r6, #1
	add r5, r5, #4
	str r2, [r4, #4]
	cmp r6, #3
	blt _0225DC84
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov68_0225DC74

	thumb_func_start ov68_0225DCA4
ov68_0225DCA4: ; 0x0225DCA4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #3
	blo _0225DCB4
	bl sub_02022974
_0225DCB4:
	lsl r2, r4, #2
	mov r1, #0
	ldr r2, [r5, r2]
	add r0, r6, #0
	add r3, r1, #0
	bl sub_020E1F1C
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	bl sub_020E1ED4
	pop {r4, r5, r6, pc}
	thumb_func_end ov68_0225DCA4

	thumb_func_start ov68_0225DCCC
ov68_0225DCCC: ; 0x0225DCCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	str r1, [sp]
	add r2, r6, #0
	mov r1, #0x14
	mov r0, #0
_0225DCDA:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0225DCDA
	add r4, r6, #0
	mov r5, #0
	add r4, #0xc
_0225DCE8:
	ldr r0, [sp]
	add r1, r5, #0
	bl ov66_0222E374
	add r7, r0, #0
	beq _0225DD2A
	bl ov66_0222E850
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, sp, #8
	bl ov66_0222E908
	ldr r1, [sp, #4]
	mov r0, #0
	bl ov66_022335C0
	cmp r0, #1
	bne _0225DD2A
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bhs _0225DD2A
	lsl r1, r0, #2
	ldr r0, [r6, r1]
	add r0, r0, #1
	str r0, [r6, r1]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r0, #1
	ldr r0, _0225DD34 ; =0x00000000
	str r2, [r4, #0]
	adc r1, r0
	str r1, [r4, #4]
_0225DD2A:
	add r5, r5, #1
	cmp r5, #0x14
	blt _0225DCE8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225DD34: .word 0x00000000
	thumb_func_end ov68_0225DCCC
	; 0x0225DD38

	.incbin "data/overlay68.bin"
