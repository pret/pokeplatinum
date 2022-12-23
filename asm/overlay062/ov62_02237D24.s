	.include "macros/function.inc"
	.include "overlay062/ov62_02237D24.inc"

	

	.text


	thumb_func_start ov62_02237D24
ov62_02237D24: ; 0x02237D24
	push {r3, r4, r5, lr}
	mov r1, #0xba
	add r5, r0, #0
	mov r0, #0x66
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0xba
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	mov r0, #0x86
	lsl r0, r0, #4
	str r4, [r5, r0]
	ldr r0, _02237DB4 ; =0x00000016
	mov r1, #2
	bl sub_02006590
	mov r1, #0x86
	ldr r0, [r5, #0x24]
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r2, #0x48
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #0x10
	add r0, #8
	str r2, [r4, r0]
	mov r0, #0x66
	add r1, #0xc
	str r0, [r4, r1]
	bl sub_02029C68
	mov r1, #0x8e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x66
	bl sub_02030A80
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	bl ov62_022315C8
	add r0, r5, #0
	mov r1, #1
	bl ov62_0222FB60
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237DB4: .word 0x00000016
	thumb_func_end ov62_02237D24

	thumb_func_start ov62_02237DB8
ov62_02237DB8: ; 0x02237DB8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02237DD4
	cmp r1, #1
	beq _02237E32
	cmp r1, #2
	beq _02237E86
	b _02237E9C
_02237DD4:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02237DE8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02237DE8:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02237F00
_02237E32:
	mov r0, #0
	add r1, r0, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #3
	mov r1, #2
	bl sub_02019060
	mov r0, #4
	mov r1, #0
	bl sub_02019060
	mov r0, #6
	mov r1, #1
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #7
	mov r1, #2
	bl sub_02019060
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02237F00
_02237E86:
	mov r1, #0
	bl ov62_0223376C
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02237F00
_02237E9C:
	bl ov62_02233790
	cmp r0, #0
	beq _02237F00
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_02231454
	add r0, r5, #0
	bl ov62_02239608
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r5, #0
	mov r1, #2
	bl ov62_0222FB60
_02237F00:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02237DB8

	thumb_func_start ov62_02237F08
ov62_02237F08: ; 0x02237F08
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02237F22
	cmp r1, #1
	beq _02237FB2
	cmp r1, #2
	beq _02237FC8
	b _02238018
_02237F22:
	bl ov62_02239518
	add r0, r5, #0
	mov r1, #0x23
	mov r2, #3
	bl ov62_022343B8
	add r0, r5, #0
	mov r1, #0x25
	mov r2, #7
	bl ov62_022343B8
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0202A750
	mov r1, #0
	bl sub_02029CA8
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02237F8A
	add r0, r1, #0
	sub r0, #0x14
	ldr r1, [r4, r1]
	add r0, r4, r0
	bl ov22_0225AF8C
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl ov22_0225B074
_02237F8A:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _02238044 ; =ov62_022394D8
	add r1, r5, #0
	bl sub_02017798
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223801E
_02237FB2:
	mov r1, #0
	mov r3, #2
	ldr r0, [r5, #0x28]
	add r2, r1, #0
	lsl r3, r3, #8
	bl sub_02003070
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223801E
_02237FC8:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02237FFE
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	add r0, r5, #0
	bl ov62_02239724
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02237FFE:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223801E
_02238018:
	mov r1, #3
	bl ov62_0222FB60
_0223801E:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223803E
	bl sub_020241B4
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_0225AFF8
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_0223803E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02238044: .word ov62_022394D8
	thumb_func_end ov62_02237F08

	thumb_func_start ov62_02238048
ov62_02238048: ; 0x02238048
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _022380A8 ; =0x02248CB0
	bl sub_02022760
	cmp r0, #0
	beq _0223806A
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
_0223806A:
	ldr r0, _022380AC ; =0x02248CB4
	bl sub_02022760
	cmp r0, #0
	beq _02238082
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #4
	bl ov62_0222FB60
_02238082:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022380A2
	bl sub_020241B4
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_0225AFF8
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_022380A2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022380A8: .word 0x02248CB0
_022380AC: .word 0x02248CB4
	thumb_func_end ov62_02238048

	thumb_func_start ov62_022380B0
ov62_022380B0: ; 0x022380B0
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _022380CA
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022380CA:
	ldr r0, [r4, #8]
	cmp r0, #6
	bls _022380D2
	b _02238316
_022380D2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022380DE: ; jump table
	.short _022380EC - _022380DE - 2 ; case 0
	.short _0223815E - _022380DE - 2 ; case 1
	.short _022381D2 - _022380DE - 2 ; case 2
	.short _0223822A - _022380DE - 2 ; case 3
	.short _02238256 - _022380DE - 2 ; case 4
	.short _022382A6 - _022380DE - 2 ; case 5
	.short _022382C8 - _022380DE - 2 ; case 6
_022380EC:
	mov r0, #0
	mov r1, #1
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #2
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #1
	bl sub_02019060
	mov r0, #4
	mov r1, #1
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #6
	mov r1, #2
	bl sub_02019060
	mov r0, #7
	mov r1, #1
	bl sub_02019060
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02030A98
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	add r0, r4, #0
	bl ov62_02239D0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_0223815E:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022381B8
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_022396E8
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	mov r2, #0
	ldr r0, [r4, #0x24]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022381B8:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _022383CA
_022381D2:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r1, _022383D0 ; =0x0000011E
	add r0, r4, #0
	bl ov62_02231AAC
	mov r0, #0x66
	bl sub_02030A80
	mov r1, #0xb7
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0x83
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02030AA0
	ldr r0, _022383D4 ; =0x00000565
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_0223822A:
	add r0, r4, #0
	bl ov62_0224112C
	mov r2, #0xb7
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0xb0
	ldr r2, [r5, r2]
	bl ov61_0222B1B4
	cmp r0, #1
	beq _02238244
	b _022383CA
_02238244:
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02030A98
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_02238256:
	add r0, r4, #0
	bl ov62_02231B8C
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl ov61_0222BB48
	cmp r0, #1
	ldr r0, _022383D4 ; =0x00000565
	bne _0223828A
	mov r1, #0
	bl sub_020057A4
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #0
	bl ov62_022348B8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_0223828A:
	mov r1, #0
	bl sub_020057A4
	add r0, r4, #0
	mov r1, #0x2f
	bl ov62_02233704
	ldr r0, _022383D8 ; =0x0000055F
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_022382A6:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_022382C8:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r5, #8
	add r0, r5, #0
	bl ov62_02231688
	add r0, r4, #0
	bl ov62_0223146C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_02238316:
	add r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _022383CA
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223839A
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223834E
	bl ov22_0225B020
	add r0, r4, #0
	bl ov62_0222F834
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	bl ov62_0223956C
_0223834E:
	add r0, r4, #0
	bl ov62_022318E8
	add r0, r5, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, _022383DC ; =0x00000016
	bl sub_02006514
	ldr r0, _022383E0 ; =ov62_0222F8E4
	add r1, r4, #0
	bl sub_02017798
	b _022383CA
_0223839A:
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_022383CA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022383D0: .word 0x0000011E
_022383D4: .word 0x00000565
_022383D8: .word 0x0000055F
_022383DC: .word 0x00000016
_022383E0: .word ov62_0222F8E4
	thumb_func_end ov62_022380B0

	thumb_func_start ov62_022383E4
ov62_022383E4: ; 0x022383E4
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _022383FE
	cmp r1, #1
	beq _02238470
	cmp r1, #2
	beq _022384D0
	b _0223851E
_022383FE:
	mov r0, #0
	mov r1, #1
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #2
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #1
	bl sub_02019060
	mov r0, #4
	mov r1, #1
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #6
	mov r1, #2
	bl sub_02019060
	mov r0, #7
	mov r1, #1
	bl sub_02019060
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02030A98
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	add r0, r5, #0
	bl ov62_02239D0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022385E0
_02238470:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022384B6
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_022396E8
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_022384B6:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _022385E0
_022384D0:
	add r4, #8
	add r0, r4, #0
	bl ov62_02231688
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223146C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022385E0
_0223851E:
	bl ov62_02233790
	cmp r0, #0
	beq _022385E0
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _022385B0
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223855C
	bl ov22_0225B020
	add r0, r5, #0
	bl ov62_0222F834
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	bl ov62_0223956C
_0223855C:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_022318E8
	add r0, r4, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, _022385E4 ; =0x00000016
	bl sub_02006514
	ldr r0, _022385E8 ; =ov62_0222F8E4
	add r1, r5, #0
	bl sub_02017798
	b _022385E0
_022385B0:
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_022385E0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022385E4: .word 0x00000016
_022385E8: .word ov62_0222F8E4
	thumb_func_end ov62_022383E4

	thumb_func_start ov62_022385EC
ov62_022385EC: ; 0x022385EC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _02238604
	mov r1, #1
	bl ov62_0223958C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223860A
_02238604:
	mov r1, #3
	bl ov62_0222FB60
_0223860A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_022385EC

	thumb_func_start ov62_02238610
ov62_02238610: ; 0x02238610
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _02238622
	b _02238768
_02238622:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223862E: ; jump table
	.short _02238638 - _0223862E - 2 ; case 0
	.short _0223867E - _0223862E - 2 ; case 1
	.short _022386C6 - _0223862E - 2 ; case 2
	.short _022386F2 - _0223862E - 2 ; case 3
	.short _0223870C - _0223862E - 2 ; case 4
_02238638:
	mov r1, #0x3c
	mov r2, #7
	bl ov62_022343B8
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _02238788 ; =0x022491F0
	ldr r2, _0223878C ; =ov62_02239BAC
	mov r1, #9
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238784
_0223867E:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022386AC
	add r0, r4, #0
	mov r1, #0x72
	bl ov62_02231AAC
	add r0, r4, #0
	bl ov62_02239BD8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022386AC:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02238784
_022386C6:
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0202404C
	ldr r0, _02238790 ; =0x02248CAC
	bl sub_02022760
	cmp r0, #0
	bne _022386E4
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02238784
_022386E4:
	add r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238784
_022386F2:
	bl ov62_02239CE8
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02024034
	add r0, r4, #0
	bl ov62_02231B8C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223870C:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0223872E
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02238784
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238784
_0223872E:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223874E
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223874E:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02238784
_02238768:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0223877C
	add r0, r4, #0
	mov r1, #4
	bl ov62_0222FB60
	b _02238784
_0223877C:
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
_02238784:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02238788: .word 0x022491F0
_0223878C: .word ov62_02239BAC
_02238790: .word 0x02248CAC
	thumb_func_end ov62_02238610

	thumb_func_start ov62_02238794
ov62_02238794: ; 0x02238794
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _022387A8
	b _02238932
_022387A8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022387B4: ; jump table
	.short _022387BE - _022387B4 - 2 ; case 0
	.short _022387D6 - _022387B4 - 2 ; case 1
	.short _02238878 - _022387B4 - 2 ; case 2
	.short _022388C4 - _022387B4 - 2 ; case 3
	.short _022388F8 - _022387B4 - 2 ; case 4
_022387BE:
	mov r1, #1
	bl ov62_0223958C
	add r0, r4, #0
	mov r1, #0x3a
	mov r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238954
_022387D6:
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	bne _022387E8
	b _02238954
_022387E8:
	add r0, r4, #0
	mov r1, #0x72
	bl ov62_02231AAC
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223895C ; =0x0000047C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_022335B0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r3, _02238960 ; =0x02248CDC
	add r2, r5, r0
	mov r6, #5
_0223880C:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0223880C
	ldr r0, [r3, #0]
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r2, #0]
	ldr r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	add r1, #8
	str r0, [r5, r1]
	ldr r0, _02238964 ; =0x0000049C
	add r0, r4, r0
	bl ov62_02233310
	mov r3, #0x1e
	ldr r0, _02238964 ; =0x0000049C
	lsl r3, r3, #4
	ldr r2, [r5, r3]
	add r3, #0xc
	add r0, r4, r0
	add r1, r4, #0
	add r3, r5, r3
	bl ov62_02232594
	ldr r1, _0223895C ; =0x0000047C
	add r0, r4, r1
	add r1, #0x20
	add r1, r4, r1
	bl ov62_02233638
	ldr r0, _02238964 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	mov r2, #2
	bl ov62_0223331C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0x2e
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238954
_02238878:
	ldr r0, _0223895C ; =0x0000047C
	add r0, r4, r0
	bl ov62_02233664
	ldr r1, _02238964 ; =0x0000049C
	add r0, r4, r1
	sub r1, #0x10
	ldrsh r1, [r4, r1]
	bl ov62_022332AC
	ldr r0, _02238964 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_02232F68
	cmp r0, #0
	beq _022388AC
	mov r1, #0x2e
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022388AC:
	ldr r0, _02238968 ; =0x02248CAC
	bl sub_02022760
	cmp r0, #0
	beq _02238954
	add r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238954
_022388C4:
	bl ov62_02231B8C
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223895C ; =0x0000047C
	add r0, r4, r0
	bl ov62_02233600
	ldr r0, _02238964 ; =0x0000049C
	add r0, r4, r0
	bl ov62_022332FC
	ldr r0, _02238964 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_022334FC
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022388F8:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02238918
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02238918:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02238954
_02238932:
	add r0, r4, #0
	bl ov62_02239B7C
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223894C
	add r0, r4, #0
	mov r1, #6
	bl ov62_0222FB60
	b _02238954
_0223894C:
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
_02238954:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0223895C: .word 0x0000047C
_02238960: .word 0x02248CDC
_02238964: .word 0x0000049C
_02238968: .word 0x02248CAC
	thumb_func_end ov62_02238794

	thumb_func_start ov62_0223896C
ov62_0223896C: ; 0x0223896C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02238986
	cmp r1, #1
	beq _022389F2
	cmp r1, #2
	beq _02238A52
	b _02238AA0
_02238986:
	mov r0, #0
	mov r1, #1
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #2
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #1
	bl sub_02019060
	mov r0, #4
	mov r1, #1
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #6
	mov r1, #2
	bl sub_02019060
	mov r0, #7
	mov r1, #1
	bl sub_02019060
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02030A98
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02238B62
_022389F2:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02238A38
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_022396E8
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02238A38:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02238B62
_02238A52:
	add r4, #8
	add r0, r4, #0
	bl ov62_02231688
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223146C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02238B62
_02238AA0:
	bl ov62_02233790
	cmp r0, #0
	beq _02238B62
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02238B32
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238ADE
	bl ov22_0225B020
	add r0, r5, #0
	bl ov62_0222F834
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	bl ov62_0223956C
_02238ADE:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_022318E8
	add r0, r4, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, _02238B68 ; =0x00000016
	bl sub_02006514
	ldr r0, _02238B6C ; =ov62_0222F8E4
	add r1, r5, #0
	bl sub_02017798
	b _02238B62
_02238B32:
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_02238B62:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02238B68: .word 0x00000016
_02238B6C: .word ov62_0222F8E4
	thumb_func_end ov62_0223896C

	thumb_func_start ov62_02238B70
ov62_02238B70: ; 0x02238B70
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _02238B86
	mov r0, #0
	pop {r3, r4, r5, pc}
_02238B86:
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02238B8E
	b _02238CCC
_02238B8E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02238B9A: ; jump table
	.short _02238BA4 - _02238B9A - 2 ; case 0
	.short _02238BE4 - _02238B9A - 2 ; case 1
	.short _02238C00 - _02238B9A - 2 ; case 2
	.short _02238C5E - _02238B9A - 2 ; case 3
	.short _02238C98 - _02238B9A - 2 ; case 4
_02238BA4:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r1, _02238CF4 ; =0x0000011F
	add r0, r4, #0
	bl ov62_02231AAC
	ldr r0, _02238CF8 ; =0x00000565
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238CF0
_02238BE4:
	add r0, r4, #0
	bl ov62_0224112C
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	bl ov61_0222B1FC
	cmp r0, #1
	bne _02238CF0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238CF0
_02238C00:
	add r0, r4, #0
	bl ov62_02231B8C
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #0
	bl ov61_0222BB48
	cmp r0, #1
	ldr r0, _02238CF8 ; =0x00000565
	bne _02238C4A
	mov r1, #0
	bl sub_020057A4
	ldr r3, [sp]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #1
	bl ov62_022348B8
	mov r0, #0xb9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x6f
	str r1, [r4, #0xc]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
	b _02238CF0
_02238C4A:
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02238CFC ; =0x0000055F
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238CF0
_02238C5E:
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238CF0
_02238C98:
	mov r1, #0xb9
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _02238CB8
	add r0, r1, #0
	mov r2, #0
	sub r0, #0xb0
	str r2, [r5, r0]
	sub r1, #0xb4
	str r2, [r5, r1]
	add r0, r4, #0
	mov r1, #7
	bl ov62_0222FB60
	b _02238CF0
_02238CB8:
	ldr r1, _02238D00 ; =0x00000125
	add r0, r4, #0
	bl ov62_02231AAC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	b _02238CF0
_02238CCC:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x3c
	bge _02238CDE
	bl sub_02022798
	cmp r0, #1
	bne _02238CF0
_02238CDE:
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov62_02231B8C
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
_02238CF0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02238CF4: .word 0x0000011F
_02238CF8: .word 0x00000565
_02238CFC: .word 0x0000055F
_02238D00: .word 0x00000125
	thumb_func_end ov62_02238B70

	thumb_func_start ov62_02238D04
ov62_02238D04: ; 0x02238D04
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02238D1E
	cmp r1, #1
	beq _02238DA8
	cmp r1, #2
	beq _02238DBE
	b _02238E26
_02238D1E:
	mov r1, #0x8d
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, #0xc]
	ldr r0, [r4, r1]
	lsl r0, r0, #2
	add r2, r4, r0
	add r0, r1, #0
	add r0, #8
	ldr r0, [r2, r0]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r0, #0x80
	bl ov61_0222AE80
	mov r1, #0x86
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, #0x20
	ldr r1, [r4, r1]
	bl ov22_0225AF8C
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl ov22_0225B074
	bl ov62_02239518
	add r0, r5, #0
	mov r1, #0x23
	mov r2, #3
	bl ov62_022343B8
	add r0, r5, #0
	mov r1, #0x24
	mov r2, #7
	bl ov62_022343B8
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _02238E50 ; =ov62_022394D8
	add r1, r5, #0
	bl sub_02017798
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02238E2C
_02238DA8:
	mov r1, #0
	mov r3, #2
	ldr r0, [r5, #0x28]
	add r2, r1, #0
	lsl r3, r3, #8
	bl sub_02003070
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02238E2C
_02238DBE:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02238E0C
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov22_0225B074
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov62_02239854
	add r0, r5, #0
	bl ov62_02239498
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02238E0C:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02238E2C
_02238E26:
	mov r1, #8
	bl ov62_0222FB60
_02238E2C:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238E4C
	bl sub_020241B4
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_0225AFF8
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_02238E4C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02238E50: .word ov62_022394D8
	thumb_func_end ov62_02238D04

	thumb_func_start ov62_02238E54
ov62_02238E54: ; 0x02238E54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _02238F14 ; =0x02248CAC
	bl sub_02022760
	cmp r0, #0
	beq _02238E76
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #9
	bl ov62_0222FB60
_02238E76:
	ldr r0, _02238F18 ; =0x02248CB8
	bl sub_02022760
	cmp r0, #0
	beq _02238E8E
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #0xa
	bl ov62_0222FB60
_02238E8E:
	ldr r0, _02238F1C ; =0x02248CBC
	bl sub_02022760
	cmp r0, #0
	beq _02238EBC
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _02238EA4
	b _02238EAA
_02238EA4:
	add r0, r1, #0
	add r0, #0xb0
	ldr r0, [r4, r0]
_02238EAA:
	sub r0, r0, #1
	str r0, [r4, r1]
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #0xb
	bl ov62_0222FB60
_02238EBC:
	ldr r0, _02238F20 ; =0x02248CC0
	bl sub_02022760
	cmp r0, #0
	beq _02238EEE
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, #0xb0
	ldr r1, [r4, r1]
	bl _s32_div_f
	mov r0, #0x8d
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #0xb
	bl ov62_0222FB60
_02238EEE:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238F0E
	bl sub_020241B4
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_0225AFF8
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_02238F0E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02238F14: .word 0x02248CAC
_02238F18: .word 0x02248CB8
_02238F1C: .word 0x02248CBC
_02238F20: .word 0x02248CC0
	thumb_func_end ov62_02238E54

	thumb_func_start ov62_02238F24
ov62_02238F24: ; 0x02238F24
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02238F3A
	cmp r1, #1
	beq _02238F80
	b _02239002
_02238F3A:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02238F58
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	add r0, r5, #0
	bl ov62_02239D0C
	b _02238F72
_02238F58:
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02232394
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
_02238F72:
	add r0, r5, #0
	bl ov62_02239424
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02239008
_02238F80:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02238FE8
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238FC2
	bl ov22_0225B020
	add r0, r5, #0
	bl ov62_0222F834
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #0x8a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl ov62_0223956C
_02238FC2:
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02238FE8:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02239008
_02239002:
	mov r1, #3
	bl ov62_0222FB60
_02239008:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02238F24

	thumb_func_start ov62_0223900C
ov62_0223900C: ; 0x0223900C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #4
	bls _0223901E
	b _022391FE
_0223901E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223902A: ; jump table
	.short _02239034 - _0223902A - 2 ; case 0
	.short _0223906A - _0223902A - 2 ; case 1
	.short _022390CA - _0223902A - 2 ; case 2
	.short _02239186 - _0223902A - 2 ; case 3
	.short _022391A2 - _0223902A - 2 ; case 4
_02239034:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02239048
	bl ov62_02239D0C
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	b _02239062
_02239048:
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02232394
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
_02239062:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02239216
_0223906A:
	mov r2, #1
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223907C
	b _02239216
_0223907C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022390C2
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022390AA
	bl ov22_0225B020
	add r0, r5, #0
	bl ov62_0222F834
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #0x8a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl ov62_0223956C
_022390AA:
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
_022390C2:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02239216
_022390CA:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0223911A
	mov r1, #1
	bl ov62_02234540
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r0, r0, #2
	add r2, r4, r0
	add r0, r1, #0
	add r0, #8
	add r1, #0x1c
	ldr r0, [r2, r0]
	ldr r1, [r4, r1]
	bl ov61_0222AFC0
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02232378
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl ov62_022323B8
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #0x50
	mov r2, #3
	bl ov62_022343B8
	b _0223917E
_0223911A:
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r0, r0, #2
	add r2, r4, r0
	add r0, r1, #0
	add r0, #8
	ldr r0, [r2, r0]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r0, #0x80
	bl ov61_0222AE80
	mov r1, #0x86
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, #0x20
	ldr r1, [r4, r1]
	bl ov22_0225AF8C
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl ov22_0225B074
	bl ov62_02239518
	add r0, r5, #0
	mov r1, #0x23
	mov r2, #3
	bl ov62_022343B8
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
_0223917E:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02239216
_02239186:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223919A
	mov r1, #0
	mov r3, #2
	ldr r0, [r5, #0x28]
	add r2, r1, #0
	lsl r3, r3, #8
	bl sub_02003070
_0223919A:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02239216
_022391A2:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _02239216
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022391CE
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #1
	bl ov62_022323B8
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	b _022391F6
_022391CE:
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov62_02239854
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov22_0225B074
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
_022391F6:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02239216
_022391FE:
	ldr r1, [r4, #0xc]
	mov r0, #1
	eor r1, r0
	str r1, [r4, #0xc]
	add r0, r5, #0
	add r1, #0x79
	bl ov62_02239440
	add r0, r5, #0
	mov r1, #8
	bl ov62_0222FB60
_02239216:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223900C

	thumb_func_start ov62_0223921C
ov62_0223921C: ; 0x0223921C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #4
	bls _0223922E
	b _02239416
_0223922E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223923A: ; jump table
	.short _02239244 - _0223923A - 2 ; case 0
	.short _0223927A - _0223923A - 2 ; case 1
	.short _022392DA - _0223923A - 2 ; case 2
	.short _0223939E - _0223923A - 2 ; case 3
	.short _022393BA - _0223923A - 2 ; case 4
_02239244:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02239258
	bl ov62_02239D0C
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	b _02239272
_02239258:
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02232394
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
_02239272:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223941E
_0223927A:
	mov r2, #1
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223928C
	b _0223941E
_0223928C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022392D2
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022392BA
	bl ov22_0225B020
	add r0, r5, #0
	bl ov62_0222F834
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #0x8a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl ov62_0223956C
_022392BA:
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
_022392D2:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223941E
_022392DA:
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0223934C
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r0, r0, #2
	add r2, r4, r0
	add r0, r1, #0
	add r0, #8
	ldr r0, [r2, r0]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r0, #0x80
	bl ov61_0222AE80
	mov r1, #0x86
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, #0x20
	ldr r1, [r4, r1]
	bl ov22_0225AF8C
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl ov22_0225B074
	bl ov62_02239518
	add r0, r5, #0
	mov r1, #0x23
	mov r2, #3
	bl ov62_022343B8
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	b _0223938E
_0223934C:
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r0, r0, #2
	add r2, r4, r0
	add r0, r1, #0
	add r0, #8
	add r1, #0x1c
	ldr r0, [r2, r0]
	ldr r1, [r4, r1]
	bl ov61_0222AFC0
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02232378
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl ov62_022323B8
	add r0, r5, #0
	mov r1, #0x50
	mov r2, #3
	bl ov62_022343B8
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
_0223938E:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223941E
_0223939E:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022393B2
	mov r1, #0
	mov r3, #2
	ldr r0, [r5, #0x28]
	add r2, r1, #0
	lsl r3, r3, #8
	bl sub_02003070
_022393B2:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223941E
_022393BA:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223941E
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022393FA
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov62_02239854
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov22_0225B074
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	b _0223940E
_022393FA:
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #1
	bl ov62_022323B8
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
_0223940E:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223941E
_02239416:
	add r0, r5, #0
	mov r1, #8
	bl ov62_0222FB60
_0223941E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223921C

	thumb_func_start ov62_02239424
ov62_02239424: ; 0x02239424
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	add r0, r4, #0
	add r0, #0xd0
	bl sub_0201ACF4
	add r4, #0xd0
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02239424

	thumb_func_start ov62_02239440
ov62_02239440: ; 0x02239440
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r6, r1, #0
	add r4, #0xd0
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239494 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02239494: .word 0x000F0D00
	thumb_func_end ov62_02239440

	thumb_func_start ov62_02239498
ov62_02239498: ; 0x02239498
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r4, #0xd0
	add r0, r4, #0
	bl sub_0201A7A0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	mov r2, #6
	mov r3, #8
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0x79
	bl ov62_02239440
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov62_02239498

	thumb_func_start ov62_022394D8
ov62_022394D8: ; 0x022394D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022394F0
	bl ov22_0225B06C
_022394F0:
	bl sub_0201DCAC
	ldr r0, [r4, #0x28]
	bl sub_02003694
	ldr r0, [r4, #0x24]
	bl sub_0201C2B8
	ldr r3, _02239510 ; =0x027E0000
	ldr r1, _02239514 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02239510: .word 0x027E0000
_02239514: .word 0x00003FF8
	thumb_func_end ov62_022394D8

	thumb_func_start ov62_02239518
ov62_02239518: ; 0x02239518
	push {r4, r5}
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _02239560 ; =0xFFFF1FFF
	add r4, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0]
	add r4, #0x48
	ldrh r3, [r4]
	mov r2, #0x3f
	mov r1, #0x1f
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r4]
	add r4, r0, #0
	add r4, #0x4a
	ldrh r5, [r4]
	mov r1, #0x1e
	bic r5, r2
	orr r1, r5
	orr r1, r3
	strh r1, [r4]
	add r1, r0, #0
	ldr r2, _02239564 ; =0x000048B8
	add r1, #0x40
	strh r2, [r1]
	ldr r1, _02239568 ; =0x00001090
	add r0, #0x44
	strh r1, [r0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02239560: .word 0xFFFF1FFF
_02239564: .word 0x000048B8
_02239568: .word 0x00001090
	thumb_func_end ov62_02239518

	thumb_func_start ov62_0223956C
ov62_0223956C: ; 0x0223956C
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02239584 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02239588 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	bx lr
	nop
_02239584: .word 0xFFFF1FFF
_02239588: .word 0x04001000
	thumb_func_end ov62_0223956C

	thumb_func_start ov62_0223958C
ov62_0223958C: ; 0x0223958C
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	bne _022395C0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020129D0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x20
	mov r2, #0xe8
	bl sub_0200D4C4
	b _022395E6
_022395C0:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020129D0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x50
	mov r2, #0xe8
	bl sub_0200D4C4
_022395E6:
	mov r0, #0x1a
	lsl r0, r0, #4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	mov r0, #0x6f
	lsl r0, r0, #2
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	pop {r4, pc}
	thumb_func_end ov62_0223958C

	thumb_func_start ov62_02239608
ov62_02239608: ; 0x02239608
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	mov r1, #2
	bl ov62_022312CC
	add r0, r5, #0
	mov r1, #2
	bl ov62_022313E0
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	mov r1, #2
	bl ov62_022313E0
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x20
	add r0, r4, r1
	add r1, r5, #0
	add r1, #0x14
	mov r2, #2
	bl ov62_0223118C
	mov r0, #0x6d
	lsl r0, r0, #2
	add r1, r5, #0
	add r0, r4, r0
	add r1, #0x14
	mov r2, #2
	bl ov62_0223118C
	mov r0, #0x66
	lsl r0, r0, #2
	add r1, r5, #0
	add r0, r4, r0
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	mov r0, #0x6d
	lsl r0, r0, #2
	add r1, r5, #0
	add r0, r4, r0
	add r1, #0x14
	mov r2, #0x35
	bl ov62_0223124C
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_0200D364
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x20
	mov r2, #0xe8
	bl sub_0200D4C4
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0xe8
	bl sub_0200D4C4
	mov r0, #0x1a
	lsl r0, r0, #4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	mov r0, #0x6f
	lsl r0, r0, #2
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020129D0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020129D0
	add r0, r5, #0
	mov r1, #0
	bl ov62_0223958C
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02239608

	thumb_func_start ov62_022396E8
ov62_022396E8: ; 0x022396E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov62_022312B0
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov62_022312B0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	add r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_022396E8

	thumb_func_start ov62_02239724
ov62_02239724: ; 0x02239724
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	add r0, r6, #0
	add r0, #0x10
	bl sub_0201A7CC
	cmp r0, #1
	bne _0223973E
	b _0223984A
_0223973E:
	add r0, r6, #0
	str r0, [sp, #0x20]
	add r0, #0x10
	str r0, [sp, #0x20]
	bl sub_0201A7A0
	mov r0, #0x13
	str r0, [sp]
	mov r3, #0x10
	str r3, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [sp, #0x20]
	mov r2, #2
	bl sub_0201A7E8
	ldr r0, [sp, #0x20]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x66
	bl ov62_02231690
	str r0, [sp, #0x18]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #0x38
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #0
	bl sub_0202A1A0
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_022349A8
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0202A1F4
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r0, [sp, #0x18]
	mov r1, #1
	add r2, r5, #0
	bl sub_0200BE48
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r1, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_02023C5C
	mov r5, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	bls _0223982C
	add r6, r5, #0
_022397F0:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02023C9C
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x80
	sub r0, r1, r0
	lsr r3, r0, #1
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239850 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r2, r4, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	add r5, r5, #1
	add r6, #0x10
	cmp r5, r0
	blo _022397F0
_0223982C:
	ldr r0, [sp, #0x20]
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_0200B3F0
_0223984A:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02239850: .word 0x000F0D00
	thumb_func_end ov62_02239724

	thumb_func_start ov62_02239854
ov62_02239854: ; 0x02239854
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	add r0, r6, #0
	add r0, #0x10
	bl sub_0201A7CC
	cmp r0, #1
	bne _0223986E
	b _0223997A
_0223986E:
	add r0, r6, #0
	str r0, [sp, #0x20]
	add r0, #0x10
	str r0, [sp, #0x20]
	bl sub_0201A7A0
	mov r0, #0x13
	str r0, [sp]
	mov r3, #0x10
	str r3, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [sp, #0x20]
	mov r2, #2
	bl sub_0201A7E8
	ldr r0, [sp, #0x20]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x66
	bl ov62_02231690
	str r0, [sp, #0x18]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #0x38
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #0
	bl sub_0202A1A0
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_022349A8
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0202A1F4
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r0, [sp, #0x18]
	mov r1, #1
	add r2, r5, #0
	bl sub_0200BE48
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r1, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_02023C5C
	mov r5, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	bls _0223995C
	add r6, r5, #0
_02239920:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02023C9C
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x80
	sub r0, r1, r0
	lsr r3, r0, #1
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239980 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r2, r4, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	add r5, r5, #1
	add r6, #0x10
	cmp r5, r0
	blo _02239920
_0223995C:
	ldr r0, [sp, #0x20]
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_0200B3F0
_0223997A:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02239980: .word 0x000F0D00
	thumb_func_end ov62_02239854

	thumb_func_start ov62_02239984
ov62_02239984: ; 0x02239984
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	add r0, r1, #1
	ldr r2, _02239A04 ; =0x022497D4
	lsl r0, r0, #1
	ldrh r4, [r2, r0]
	lsl r0, r1, #1
	ldrh r6, [r2, r0]
	ldr r1, [sp, #8]
	mov r0, #0x66
	add r2, sp, #0xc
	bl ov62_02231948
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02027560
	str r0, [sp]
	add r7, r6, #0
	cmp r6, r4
	bge _022399D6
	ldr r0, [sp, #4]
	lsl r1, r6, #1
	add r5, r0, r1
_022399BE:
	ldrh r1, [r5]
	ldr r0, [sp]
	bl sub_02026FE8
	cmp r0, #0
	bne _022399CE
	ldr r0, _02239A08 ; =0x0000FFFF
	strh r0, [r5]
_022399CE:
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, r4
	blt _022399BE
_022399D6:
	cmp r6, r4
	bge _022399F6
	ldr r0, [sp, #4]
	lsl r1, r6, #1
	add r2, r0, r1
	ldr r0, _02239A08 ; =0x0000FFFF
_022399E2:
	ldrh r1, [r2]
	cmp r1, r0
	beq _022399EE
	mov r0, #1
	str r0, [sp, #8]
	b _022399F6
_022399EE:
	add r6, r6, #1
	add r2, r2, #2
	cmp r6, r4
	blt _022399E2
_022399F6:
	ldr r0, [sp, #4]
	bl sub_020181C4
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02239A04: .word 0x022497D4
_02239A08: .word 0x0000FFFF
	thumb_func_end ov62_02239984

	thumb_func_start ov62_02239A0C
ov62_02239A0C: ; 0x02239A0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r0, r1, #1
	ldr r2, _02239B74 ; =0x022497D4
	lsl r0, r0, #1
	ldrh r6, [r2, r0]
	lsl r0, r1, #1
	ldrh r0, [r2, r0]
	mov r2, #0x76
	lsl r2, r2, #2
	str r0, [sp]
	mov r0, #0x66
	mov r1, #0
	add r2, r4, r2
	bl ov62_02231948
	mov r2, #0x77
	lsl r2, r2, #2
	str r0, [r4, r2]
	sub r2, r2, #4
	mov r0, #0x66
	mov r1, #0
	add r2, r4, r2
	bl ov62_02231948
	str r0, [sp, #8]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02027560
	str r0, [sp, #4]
	mov r0, #0x75
	ldr r7, [sp]
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r7, #0
	cmp r0, r6
	bge _02239A92
	lsl r1, r0, #1
	ldr r0, [sp, #8]
	add r5, r0, r1
_02239A6A:
	ldrh r1, [r5]
	ldr r0, [sp, #4]
	bl sub_02026FE8
	cmp r0, #0
	bne _02239A7C
	ldr r0, _02239B78 ; =0x0000FFFF
	strh r0, [r5]
	b _02239A8A
_02239A7C:
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0x75
	lsl r0, r0, #2
	str r1, [r4, r0]
_02239A8A:
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, r6
	blt _02239A6A
_02239A92:
	ldr r1, [sp]
	mov r0, #0
	cmp r1, r6
	bge _02239AC2
	lsl r2, r1, #1
	ldr r1, [sp, #8]
	ldr r7, _02239B78 ; =0x0000FFFF
	add r2, r1, r2
	add r3, r0, #0
_02239AA4:
	ldrh r1, [r2]
	cmp r1, r7
	beq _02239AB6
	mov r5, #0x77
	lsl r5, r5, #2
	ldr r5, [r4, r5]
	add r0, r0, #1
	strh r1, [r5, r3]
	add r3, r3, #2
_02239AB6:
	ldr r1, [sp]
	add r2, r2, #2
	add r1, r1, #1
	str r1, [sp]
	cmp r1, r6
	blt _02239AA4
_02239AC2:
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r0, r1
	bge _02239AEA
	mov r7, #0x77
	ldr r1, [sp, #8]
	lsl r6, r0, #1
	lsl r7, r7, #2
	add r5, r1, r6
	sub r1, r7, #4
_02239AD8:
	ldrh r3, [r5]
	ldr r2, [r4, r7]
	add r0, r0, #1
	strh r3, [r2, r6]
	ldr r2, [r4, r1]
	add r5, r5, #2
	add r6, r6, #2
	cmp r0, r2
	blt _02239AD8
_02239AEA:
	ldr r0, [sp, #8]
	bl sub_020181C4
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0x66
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x7a
	lsl r2, r2, #2
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	sub r2, #0x14
	ldr r2, [r4, r2]
	mov r1, #0
	lsl r2, r2, #4
	bl MI_CpuFill8
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r5, #0
	cmp r0, #0
	ble _02239B54
	mov r7, #0x7a
	lsl r7, r7, #2
	add r0, r7, #0
	add r2, r5, #0
	add r3, r5, #0
	sub r0, #0x14
_02239B2A:
	mov r1, #0x77
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r6, #0x7a
	lsl r6, r6, #2
	ldrh r1, [r1, r2]
	ldr r6, [r4, r6]
	add r5, r5, #1
	str r1, [r6, r3]
	mov r1, #0x77
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r6, [r4, r7]
	ldrh r1, [r1, r2]
	add r6, r6, r3
	add r2, r2, #2
	str r1, [r6, #4]
	ldr r1, [r4, r0]
	add r3, #0x10
	cmp r5, r1
	blt _02239B2A
_02239B54:
	mov r2, #0x67
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x66
	bl sub_0200B144
	mov r1, #0x1e
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r2, #1
	add r0, r1, #4
	str r2, [r4, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02239B74: .word 0x022497D4
_02239B78: .word 0x0000FFFF
	thumb_func_end ov62_02239A0C

	thumb_func_start ov62_02239B7C
ov62_02239B7C: ; 0x02239B7C
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x77
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x79
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov62_02239B7C

	thumb_func_start ov62_02239BAC
ov62_02239BAC: ; 0x02239BAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	bne _02239BD2
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_02239984
	cmp r0, #0
	bne _02239BCA
	ldr r0, _02239BD4 ; =0x00000564
	bl sub_02005748
	pop {r3, r4, r5, pc}
_02239BCA:
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_02239A0C
_02239BD2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02239BD4: .word 0x00000564
	thumb_func_end ov62_02239BAC

	thumb_func_start ov62_02239BD8
ov62_02239BD8: ; 0x02239BD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x28]
	mov r1, #0x86
	ldr r0, [sp, #0x14]
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	ldr r5, _02239CDC ; =0x022491F0
	mov r7, #0
	add r4, #0xd0
_02239BF0:
	ldrb r0, [r5, #2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	ldrb r0, [r5]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	ldrb r0, [r5, #3]
	lsr r1, r0, #3
	ldr r0, [sp, #0x24]
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #1]
	lsr r1, r0, #3
	ldr r0, [sp, #0x20]
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	bl sub_0201A7A0
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r2, #6
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x24]
	ldr r0, [r0, #0x24]
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	ldr r0, [r0, #0x48]
	add r1, #0x44
	bl sub_0200B1EC
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	bl ov62_0223429C
	lsl r1, r6, #3
	sub r1, #0x10
	str r0, [sp, #0x30]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	bl ov62_02239984
	cmp r0, #1
	bne _02239C9A
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x2c]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239CE0 ; =0x000F0D00
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	bl sub_0201D78C
	b _02239CB6
_02239C9A:
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x2c]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239CE4 ; =0x000C0B00
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	bl sub_0201D78C
_02239CB6:
	add r0, r4, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	add r7, r7, #1
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	mul r1, r6
	add r0, r0, r1
	str r0, [sp, #0x28]
	add r4, #0x10
	add r5, r5, #4
	cmp r7, #9
	blo _02239BF0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02239CDC: .word 0x022491F0
_02239CE0: .word 0x000F0D00
_02239CE4: .word 0x000C0B00
	thumb_func_end ov62_02239BD8

	thumb_func_start ov62_02239CE8
ov62_02239CE8: ; 0x02239CE8
	push {r3, r4, r5, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r5, [r0, r1]
	mov r4, #0
	add r5, #0xd0
_02239CF4:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #9
	blo _02239CF4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02239CE8

	thumb_func_start ov62_02239D0C
ov62_02239D0C: ; 0x02239D0C
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A7CC
	cmp r0, #1
	bne _02239D30
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201ACF4
	add r4, #0x10
	add r0, r4, #0
	bl sub_0201A8FC
_02239D30:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02239D0C

	thumb_func_start ov62_02239D34
ov62_02239D34: ; 0x02239D34
	bx lr
	; .align 2, 0
	thumb_func_end ov62_02239D34

	thumb_func_start ov62_02239D38
ov62_02239D38: ; 0x02239D38
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r1, [r1, #0]
	ldr r4, [r0, r2]
	cmp r1, #1
	beq _02239D5C
	bl ov62_0224112C
	mov r1, #0x8f
	lsl r1, r1, #2
	add r1, r4, r1
	mov r2, #5
	bl ov61_0222BC90
	mov r1, #0xb9
	lsl r1, r1, #2
	str r0, [r4, r1]
_02239D5C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02239D38

	.rodata


	.global Unk_ov62_02248CAC
Unk_ov62_02248CAC: ; 0x02248CAC
	.incbin "incbin/overlay62_rodata.bin", 0x580, 0x584 - 0x580

	.global Unk_ov62_02248CB0
Unk_ov62_02248CB0: ; 0x02248CB0
	.incbin "incbin/overlay62_rodata.bin", 0x584, 0x58C - 0x584

	.global Unk_ov62_02248CB8
Unk_ov62_02248CB8: ; 0x02248CB8
	.incbin "incbin/overlay62_rodata.bin", 0x58C, 0x598 - 0x58C

	.global Unk_ov62_02248CC4
Unk_ov62_02248CC4: ; 0x02248CC4
	.incbin "incbin/overlay62_rodata.bin", 0x598, 0x5B0 - 0x598

	.global Unk_ov62_02248CDC
Unk_ov62_02248CDC: ; 0x02248CDC
	.incbin "incbin/overlay62_rodata.bin", 0x5B0, 0x5DC - 0x5B0

	.global Unk_ov62_02248D08
Unk_ov62_02248D08: ; 0x02248D08
	.incbin "incbin/overlay62_rodata.bin", 0x5DC, 0x5F4 - 0x5DC

	.global Unk_ov62_02248D20
Unk_ov62_02248D20: ; 0x02248D20
	.incbin "incbin/overlay62_rodata.bin", 0x5F4, 0x30


	.data


	.global Unk_ov62_022497D4
Unk_ov62_022497D4: ; 0x022497D4
	.incbin "incbin/overlay62_data.bin", 0x14, 0x14

