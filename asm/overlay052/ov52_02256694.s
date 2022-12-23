	.include "macros/function.inc"
	.include "overlay052/ov52_02256694.inc"

	

	.text


	thumb_func_start ov52_02256694
ov52_02256694: ; 0x02256694
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x60
	bl sub_02018144
	add r4, r0, #0
	beq _022566E2
	add r0, #8
	mov r1, #4
	bl ov25_02255090
	str r5, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x30]
	ldr r2, _022566E8 ; =0x000001CD
	mov r0, #1
	mov r1, #0x1a
	mov r3, #8
	bl sub_0200B144
	str r0, [r4, #0x58]
	mov r0, #0x60
	mov r1, #8
	bl sub_02023790
	str r0, [r4, #0x5c]
	add r0, r4, #0
	add r1, r5, #0
	bl ov52_0225670C
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_022566E2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_022566E8: .word 0x000001CD
	thumb_func_end ov52_02256694

	thumb_func_start ov52_022566EC
ov52_022566EC: ; 0x022566EC
	push {r4, lr}
	add r4, r0, #0
	beq _0225670A
	ldr r0, [r4, #0x5c]
	bl sub_020237BC
	ldr r0, [r4, #0x58]
	bl sub_0200B190
	add r0, r4, #0
	bl ov52_0225677C
	add r0, r4, #0
	bl sub_020181C4
_0225670A:
	pop {r4, pc}
	thumb_func_end ov52_022566EC

	thumb_func_start ov52_0225670C
ov52_0225670C: ; 0x0225670C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r6, r0, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x63
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x44
	mov r1, #0xc
	mov r2, #0x61
	mov r3, #0x62
	bl ov25_02255958
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x44
	ldr r4, _02256778 ; =0x02256DA4
	mov r7, #0
	add r5, r6, #0
	str r0, [sp, #0xc]
_02256746:
	ldr r0, [r6, #0x30]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	bl ov25_02255810
	str r0, [r5, #0x34]
	add r7, r7, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r7, #4
	blt _02256746
	ldr r0, [r6, #0x38]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r6, #0x3c]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r6, #0x40]
	mov r1, #1
	bl ov25_02255914
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256778: .word 0x02256DA4
	thumb_func_end ov52_0225670C

	thumb_func_start ov52_0225677C
ov52_0225677C: ; 0x0225677C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02256784:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _02256790
	ldr r0, [r6, #0x30]
	bl ov25_022558B0
_02256790:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02256784
	add r6, #0x44
	add r0, r6, #0
	bl ov25_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov52_0225677C

	thumb_func_start ov52_022567A4
ov52_022567A4: ; 0x022567A4
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022567C4 ; =0x02256DE4
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022567C4: .word 0x02256DE4
	thumb_func_end ov52_022567A4

	thumb_func_start ov52_022567C8
ov52_022567C8: ; 0x022567C8
	ldr r3, _022567D0 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022567D0: .word ov25_02255130
	thumb_func_end ov52_022567C8

	thumb_func_start ov52_022567D4
ov52_022567D4: ; 0x022567D4
	ldr r3, _022567DC ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022567DC: .word ov25_02255154
	thumb_func_end ov52_022567D4

	thumb_func_start ov52_022567E0
ov52_022567E0: ; 0x022567E0
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov52_022567E0

	thumb_func_start ov52_022567F4
ov52_022567F4: ; 0x022567F4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _022568A8 ; =0x02256D88
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x60
	mov r3, #6
	bl sub_02006E3C
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x5f
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	mov r3, #2
	add r1, r5, #0
	str r3, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r0, r4, #0xb
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	add r1, #0x20
	mov r2, #6
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0x20
	bl sub_0201A9F4
	add r0, r5, #0
	bl ov52_02256A7C
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _022568AC ; =0x04001000
	ldr r0, _022568B0 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x14]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #4
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r6, #0
	bl ov52_022567E0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022568A8: .word 0x02256D88
_022568AC: .word 0x04001000
_022568B0: .word 0xFFFFE0FF
	thumb_func_end ov52_022567F4

	thumb_func_start ov52_022568B4
ov52_022568B4: ; 0x022568B4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, #0x20
	bl sub_0201A8FC
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov52_022568B4

	thumb_func_start ov52_022568D8
ov52_022568D8: ; 0x022568D8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl ov25_02255914
	add r0, r4, #0
	bl ov52_02256A7C
	ldr r0, _02256918 ; =0x00000663
	bl ov25_02254424
	add r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256918: .word 0x00000663
	thumb_func_end ov52_022568D8

	thumb_func_start ov52_0225691C
ov52_0225691C: ; 0x0225691C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ov25_022558C4
	add r0, r4, #0
	bl ov52_02256B10
	ldr r0, _02256964 ; =0x00000663
	bl ov25_02254424
	add r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256964: .word 0x00000663
	thumb_func_end ov52_0225691C

	thumb_func_start ov52_02256968
ov52_02256968: ; 0x02256968
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #0x3c]
	mov r1, #2
	bl ov25_022558C4
	add r0, r4, #0
	bl ov52_02256B64
	ldr r0, _022569B0 ; =0x0000066E
	bl ov25_02254424
	add r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022569B0: .word 0x0000066E
	thumb_func_end ov52_02256968

	thumb_func_start ov52_022569B4
ov52_022569B4: ; 0x022569B4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #0x3c]
	mov r1, #2
	bl ov25_022558C4
	add r0, r4, #0
	bl ov52_02256BDC
	ldr r0, _022569FC ; =0x0000066E
	bl ov25_02254424
	add r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022569FC: .word 0x0000066E
	thumb_func_end ov52_022569B4

	thumb_func_start ov52_02256A00
ov52_02256A00: ; 0x02256A00
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r6, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl ov25_022558C4
	add r0, r4, #0
	add r1, r6, #0
	bl ov52_02256C64
	ldr r0, _02256A54 ; =0x00000663
	bl ov25_02254424
	add r0, r5, #0
	bl ov52_022567E0
	pop {r4, r5, r6, pc}
	nop
_02256A54: .word 0x00000663
	thumb_func_end ov52_02256A00

	thumb_func_start ov52_02256A58
ov52_02256A58: ; 0x02256A58
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r1, r0, #0
	add r0, r4, #0
	bl ov52_02256C64
	add r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov52_02256A58

	thumb_func_start ov52_02256A7C
ov52_02256A7C: ; 0x02256A7C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x20
	mov r1, #4
	bl sub_0201ADA4
	ldr r0, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	mov r1, #0
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r5, #0x5c]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xc0
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256B0C ; =0x00010804
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x5c]
	add r0, #0x20
	bl sub_0201D78C
	ldr r0, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	mov r1, #0xa
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r5, #0x5c]
	add r2, r0, #0
	bl sub_02002EB4
	mov r1, #0xc0
	sub r0, r1, r0
	lsr r4, r0, #1
	ldr r0, [r5, #0x5c]
	mov r6, #0x40
	bl sub_02023C5C
	lsl r0, r0, #3
	sub r0, r6, r0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256B0C ; =0x00010804
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x5c]
	add r0, #0x20
	add r3, r4, #0
	bl sub_0201D78C
	add r5, #0x20
	add r0, r5, #0
	bl sub_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02256B0C: .word 0x00010804
	thumb_func_end ov52_02256A7C

	thumb_func_start ov52_02256B10
ov52_02256B10: ; 0x02256B10
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0x20
	mov r1, #4
	bl sub_0201ADA4
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	mov r1, #1
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r4, #0x5c]
	add r2, r0, #0
	bl sub_02002EB4
	mov r1, #0xc0
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256B60 ; =0x00010804
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x5c]
	add r0, #0x20
	bl sub_0201D78C
	add r4, #0x20
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #0x10
	pop {r4, pc}
	nop
_02256B60: .word 0x00010804
	thumb_func_end ov52_02256B10

	thumb_func_start ov52_02256B64
ov52_02256B64: ; 0x02256B64
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0x20
	mov r1, #4
	bl sub_0201ADA4
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	mov r1, #2
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r4, #0x5c]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xc0
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256BD8 ; =0x00010804
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x5c]
	add r0, #0x20
	bl sub_0201D78C
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	mov r1, #3
	bl sub_0200B1B8
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256BD8 ; =0x00010804
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x5c]
	add r0, #0x20
	mov r3, #0x10
	bl sub_0201D78C
	add r4, #0x20
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02256BD8: .word 0x00010804
	thumb_func_end ov52_02256B64

	thumb_func_start ov52_02256BDC
ov52_02256BDC: ; 0x02256BDC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0x20
	mov r1, #4
	bl sub_0201ADA4
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	mov r1, #2
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r4, #0x5c]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xc0
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256C60 ; =0x00010804
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x5c]
	add r0, #0x20
	bl sub_0201D78C
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	mov r1, #4
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r4, #0x5c]
	add r2, r0, #0
	bl sub_02002EB4
	mov r1, #0xc0
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256C60 ; =0x00010804
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x5c]
	add r0, #0x20
	bl sub_0201D78C
	add r4, #0x20
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #0x10
	pop {r4, pc}
	nop
_02256C60: .word 0x00010804
	thumb_func_end ov52_02256BDC

	thumb_func_start ov52_02256C64
ov52_02256C64: ; 0x02256C64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	add r0, #0x20
	mov r1, #4
	bl sub_0201ADA4
	ldr r0, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	mov r1, #5
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r5, #0x5c]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xc0
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256D24 ; =0x00010804
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x5c]
	add r0, #0x20
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x20
	ldr r6, _02256D28 ; =0x02256D84
	mov r4, #0x20
	str r0, [sp, #0x14]
_02256CB8:
	ldrb r1, [r6]
	ldr r0, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	bl sub_0200B1B8
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256D24 ; =0x00010804
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x5c]
	mov r3, #8
	bl sub_0201D78C
	mov r0, #1
	str r0, [sp]
	mov r2, #2
	ldr r0, [r5, #0x5c]
	ldr r1, [r7, #0]
	add r3, r2, #0
	bl sub_020238A0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256D24 ; =0x00010804
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x5c]
	mov r3, #0xa0
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, r0, #1
	add r4, #0x10
	add r7, r7, #4
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _02256CB8
	add r5, #0x20
	add r0, r5, #0
	bl sub_0201ACCC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256D24: .word 0x00010804
_02256D28: .word 0x02256D84
	thumb_func_end ov52_02256C64

	.rodata


	.global Unk_ov52_02256D84
Unk_ov52_02256D84: ; 0x02256D84
	.incbin "incbin/overlay52_rodata.bin", 0x58, 0x5C - 0x58

	.global Unk_ov52_02256D88
Unk_ov52_02256D88: ; 0x02256D88
	.incbin "incbin/overlay52_rodata.bin", 0x5C, 0x78 - 0x5C

	.global Unk_ov52_02256DA4
Unk_ov52_02256DA4: ; 0x02256DA4
	.incbin "incbin/overlay52_rodata.bin", 0x78, 0xB8 - 0x78

	.global Unk_ov52_02256DE4
Unk_ov52_02256DE4: ; 0x02256DE4
	.incbin "incbin/overlay52_rodata.bin", 0xB8, 0x6C

