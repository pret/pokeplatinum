	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov62_0222F2C0
ov62_0222F2C0: ; 0x0222F2C0
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0222F500 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0222F504 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #0x66
	bl sub_0201DBEC
	mov r0, #0xa2
	mov r1, #0x66
	bl sub_02006C24
	str r0, [r4, #0x14]
	mov r0, #0x66
	bl sub_02018340
	str r0, [r4, #0x24]
	mov r0, #0x66
	bl sub_02002F38
	str r0, [r4, #0x28]
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #0x66
	mov r2, #1
	add r3, r1, #0
	bl sub_02024220
	str r0, [r4, #0x60]
	mov r0, #0x66
	bl sub_0200762C
	str r0, [r4, #0x64]
	bl sub_020A73C0
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_02003858
	mov r2, #2
	ldr r0, [r4, #0x28]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x66
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r4, #0x28]
	lsl r2, r1, #9
	mov r3, #0x66
	bl sub_02002F70
	mov r1, #2
	ldr r0, [r4, #0x28]
	lsl r2, r1, #8
	mov r3, #0x66
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r4, #0x28]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x66
	bl sub_02002F70
	ldr r0, [r4, #0x24]
	bl ov62_0222F670
	add r0, r4, #0
	bl ov62_0222F848
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r0, #1
	str r0, [r4, #0x44]
	add r0, r4, #0
	bl ov62_0222FF40
	mov r0, #1
	bl sub_02002B20
	ldr r0, _0222F508 ; =ov62_0222F8E4
	add r1, r4, #0
	bl sub_02017798
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0222F406
	add r0, r4, #0
	bl ov62_02241130
	ldr r1, _0222F50C ; =0x00200010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	ldr r1, _0222F50C ; =0x00200010
	mov r0, #2
	bl sub_0200966C
	mov r0, #2
	bl sub_02009704
	bl sub_02039734
	mov r0, #1
	mov r1, #0x66
	bl sub_020397C8
	mov r0, #0x66
	bl sub_020394A8
	add r1, sp, #0x10
	add r5, r0, #0
	bl sub_020A71B0
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #0x28]
	ldr r1, [r1, #0xc]
	mov r2, #2
	mov r3, #0xe0
	bl sub_02002FBC
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #0x28]
	ldr r1, [r1, #0xc]
	mov r2, #3
	mov r3, #0xe0
	bl sub_02002FBC
	add r0, r5, #0
	bl sub_020181C4
_0222F406:
	mov r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #0x66
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	mov r1, #1
	str r0, [sp, #0x20]
	lsl r0, r1, #0x14
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x18]
	mov r5, sp
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	sub r5, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	add r3, sp, #0x14
	str r1, [sp, #0x1c]
	str r0, [sp, #0xc]
	ldmia r3!, {r0, r1}
	add r2, r5, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldmia r5!, {r0, r1, r2, r3}
	bl sub_0208B284
	mov r1, #0x6f
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r4, #0
	add r1, #0x5c
	ldrb r1, [r1]
	bl sub_0208B878
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B8B0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #2
	str r0, [sp, #0x1c]
	lsl r0, r0, #0x13
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x18]
	mov r5, sp
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	sub r5, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	add r3, sp, #0x14
	str r0, [sp, #0xc]
	ldmia r3!, {r0, r1}
	add r2, r5, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldmia r5!, {r0, r1, r2, r3}
	bl sub_0208B284
	ldr r1, _0222F510 ; =0x000006F4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r4, #0
	add r1, #0x5c
	ldrb r1, [r1]
	bl sub_0208B878
	ldr r0, _0222F510 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B8B0
	ldr r0, _0222F510 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	mov r0, #0x14
	mov r1, #0x66
	bl sub_02012744
	str r0, [r4, #0x50]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xa
	mov r3, #0x66
	bl sub_0200B144
	str r0, [r4, #0x48]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0x14
	mov r3, #0x66
	bl sub_0200B144
	str r0, [r4, #0x4c]
	add r0, r4, #0
	bl ov62_022338A8
	add r0, r4, #0
	bl sub_0208C06C
	add r0, r4, #0
	bl ov62_022300D8
	add r0, r4, #0
	bl ov62_022337D4
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_0222F500: .word 0xFFFFE0FF
_0222F504: .word 0x04001000
_0222F508: .word ov62_0222F8E4
_0222F50C: .word 0x00200010
_0222F510: .word 0x000006F4
	thumb_func_end ov62_0222F2C0

	thumb_func_start ov62_0222F514
ov62_0222F514: ; 0x0222F514
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r5, #0x24]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r5, #0x24]
	bl sub_020181C4
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r5, #0x28]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r5, #0x28]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r5, #0x28]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r5, #0x28]
	bl sub_02002F54
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _0222F5DE
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0202783C
	add r1, r5, #0
	add r1, #0x5c
	ldrb r1, [r1]
	bl sub_0202798C
_0222F5DE:
	ldr r0, [r5, #0x14]
	bl sub_02006CA8
	ldr r0, _0222F664 ; =0x0000416C
	ldr r0, [r5, r0]
	bl sub_0200DA58
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	bl sub_0200D0B0
	ldr r0, [r5, #0x18]
	bl sub_0200C8D4
	bl sub_02039794
	bl sub_0201E530
	ldr r0, [r5, #0x2c]
	bl sub_02024034
	mov r0, #0
	bl sub_02002B20
	ldr r7, _0222F668 ; =0x0000087C
	mov r6, #0
	add r4, r5, #0
_0222F614:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0222F61E
	bl sub_020181C4
_0222F61E:
	ldr r0, _0222F66C ; =0x0000088C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222F62A
	bl sub_020181C4
_0222F62A:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0222F614
	ldr r0, [r5, #0x50]
	bl sub_020127BC
	ldr r0, [r5, #0x48]
	bl sub_0200B190
	ldr r0, [r5, #0x4c]
	bl sub_0200B190
	ldr r0, [r5, #0x60]
	bl sub_020242C4
	ldr r0, [r5, #0x64]
	bl sub_02007B6C
	add r0, r5, #0
	bl ov62_022411EC
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_0201DC3C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F664: .word 0x0000416C
_0222F668: .word 0x0000087C
_0222F66C: .word 0x0000088C
	thumb_func_end ov62_0222F514

	thumb_func_start ov62_0222F670
ov62_0222F670: ; 0x0222F670
	push {r4, r5, lr}
	sub sp, #0x3c
	add r4, r0, #0
	bl sub_0201FF00
	ldr r5, _0222F7F4 ; =0x0224872C
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0222F7F8 ; =0x02248788
	add r3, sp, #4
	mov r2, #5
_0222F694:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222F694
	add r0, sp, #4
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0
	ldr r2, _0222F7FC ; =0x022487B0
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	ldr r2, _0222F800 ; =0x022487CC
	add r0, r4, #0
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	ldr r2, _0222F804 ; =0x022487E8
	add r0, r4, #0
	mov r1, #2
	mov r3, #0
	bl sub_020183C4
	ldr r2, _0222F808 ; =0x02248804
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r2, _0222F80C ; =0x02248820
	add r0, r4, #0
	mov r1, #4
	mov r3, #0
	bl sub_020183C4
	ldr r2, _0222F810 ; =0x0224883C
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl sub_020183C4
	ldr r2, _0222F814 ; =0x02248858
	add r0, r4, #0
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	ldr r2, _0222F818 ; =0x02248874
	add r0, r4, #0
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #6
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #1
	bl ov62_0222F824
	mov r0, #8
	str r0, [sp]
	ldr r0, _0222F81C ; =0x04000050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl sub_020BF55C
	mov r0, #8
	str r0, [sp]
	ldr r0, _0222F820 ; =0x04001050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl sub_020BF55C
	add sp, #0x3c
	pop {r4, r5, pc}
	; .align 2, 0
_0222F7F4: .word 0x0224872C
_0222F7F8: .word 0x02248788
_0222F7FC: .word 0x022487B0
_0222F800: .word 0x022487CC
_0222F804: .word 0x022487E8
_0222F808: .word 0x02248804
_0222F80C: .word 0x02248820
_0222F810: .word 0x0224883C
_0222F814: .word 0x02248858
_0222F818: .word 0x02248874
_0222F81C: .word 0x04000050
_0222F820: .word 0x04001050
	thumb_func_end ov62_0222F670

	thumb_func_start ov62_0222F824
ov62_0222F824: ; 0x0222F824
	ldr r1, _0222F82C ; =0x021BF6DC
	ldr r3, _0222F830 ; =sub_0201FFE8
	strb r0, [r1, #5]
	bx r3
	; .align 2, 0
_0222F82C: .word 0x021BF6DC
_0222F830: .word sub_0201FFE8
	thumb_func_end ov62_0222F824

	thumb_func_start ov62_0222F834
ov62_0222F834: ; 0x0222F834
	push {r3, lr}
	ldr r0, [r0, #0x24]
	ldr r2, _0222F844 ; =0x022487E8
	mov r1, #2
	mov r3, #0
	bl sub_020183C4
	pop {r3, pc}
	; .align 2, 0
_0222F844: .word 0x022487E8
	thumb_func_end ov62_0222F834

	thumb_func_start ov62_0222F848
ov62_0222F848: ; 0x0222F848
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x66
	bl sub_0200C6E4
	add r2, sp, #0x2c
	ldr r5, _0222F8D8 ; =0x02248768
	str r0, [r4, #0x18]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _0222F8DC ; =0x0224873C
	stmia r2!, {r0, r1}
	add r5, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	ldr r0, [r4, #0x18]
	mov r3, #0x20
	bl sub_0200C73C
	ldr r3, _0222F8E0 ; =0x02248750
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x18]
	bl sub_0200C704
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	mov r2, #0xc0
	bl sub_0200C7C0
	cmp r0, #0
	bne _0222F8B2
	bl sub_02022974
_0222F8B2:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	add r2, sp, #0
	bl sub_0200CB30
	cmp r0, #0
	bne _0222F8C4
	bl sub_02022974
_0222F8C4:
	ldr r0, [r4, #0x18]
	bl sub_0200C738
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222F8D8: .word 0x02248768
_0222F8DC: .word 0x0224873C
_0222F8E0: .word 0x02248750
	thumb_func_end ov62_0222F848

	thumb_func_start ov62_0222F8E4
ov62_0222F8E4: ; 0x0222F8E4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	ldr r0, [r4, #0x28]
	bl sub_02003694
	ldr r0, [r4, #0x24]
	bl sub_0201C2B8
	ldr r3, _0222F908 ; =0x027E0000
	ldr r1, _0222F90C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0222F908: .word 0x027E0000
_0222F90C: .word 0x00003FF8
	thumb_func_end ov62_0222F8E4

	thumb_func_start ov62_0222F910
ov62_0222F910: ; 0x0222F910
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0x12
	bls _0222F91E
	b _0222FAEA
_0222F91E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222F92A: ; jump table
	.short _0222F950 - _0222F92A - 2 ; case 0
	.short _0222F988 - _0222F92A - 2 ; case 1
	.short _0222F9A0 - _0222F92A - 2 ; case 2
	.short _0222F9B8 - _0222F92A - 2 ; case 3
	.short _0222F9D0 - _0222F92A - 2 ; case 4
	.short _0222F9E8 - _0222F92A - 2 ; case 5
	.short _0222FA00 - _0222F92A - 2 ; case 6
	.short _0222FA18 - _0222F92A - 2 ; case 7
	.short _0222FA30 - _0222F92A - 2 ; case 8
	.short _0222FA30 - _0222F92A - 2 ; case 9
	.short _0222FA48 - _0222F92A - 2 ; case 10
	.short _0222FA48 - _0222F92A - 2 ; case 11
	.short _0222FA60 - _0222F92A - 2 ; case 12
	.short _0222FA78 - _0222F92A - 2 ; case 13
	.short _0222FA90 - _0222F92A - 2 ; case 14
	.short _0222FAA8 - _0222F92A - 2 ; case 15
	.short _0222FAC0 - _0222F92A - 2 ; case 16
	.short _0222FACC - _0222F92A - 2 ; case 17
	.short _0222FAE4 - _0222F92A - 2 ; case 18
_0222F950:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB0C ; =0x02248BD8
	ldr r1, [r1, r2]
	blx r1
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	add r3, r5, #0
	bl ov62_0222FB44
	cmp r6, #0
	bne _0222F96E
	b _0222FAEE
_0222F96E:
	ldr r0, [r4, #0x44]
	cmp r0, #1
	bne _0222F97E
	add r0, r4, #0
	mov r1, #0
	bl ov62_0222FB60
	b _0222FAEE
_0222F97E:
	add r0, r4, #0
	mov r1, #1
	bl ov62_0222FB60
	b _0222FAEE
_0222F988:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB10 ; =0x02248BF0
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222F9A0:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB14 ; =0x02248C28
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222F9B8:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB18 ; =0x02248C50
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222F9D0:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB1C ; =0x02248D08
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222F9E8:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB20 ; =0x02248D20
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA00:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB24 ; =0x02248E24
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA18:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB28 ; =0x02248E50
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA30:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB2C ; =0x02248F58
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA48:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB30 ; =0x022490DC
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA60:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB30 ; =0x022490DC
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA78:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB34 ; =0x02249680
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA90:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB38 ; =0x0224962C
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FAA8:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB3C ; =0x02249618
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FAC0:
	mov r1, #0xff
	mov r2, #1
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FACC:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222FB40 ; =0x02249790
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FAE4:
	bl ov62_022348FC
	b _0222FAEE
_0222FAEA:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222FAEE:
	bl sub_020241B4
	ldr r0, [r4, #0x64]
	bl sub_02007768
	mov r0, #1
	mov r1, #0
	bl sub_020241BC
	add r0, r4, #0
	bl ov62_022411D4
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0222FB0C: .word 0x02248BD8
_0222FB10: .word 0x02248BF0
_0222FB14: .word 0x02248C28
_0222FB18: .word 0x02248C50
_0222FB1C: .word 0x02248D08
_0222FB20: .word 0x02248D20
_0222FB24: .word 0x02248E24
_0222FB28: .word 0x02248E50
_0222FB2C: .word 0x02248F58
_0222FB30: .word 0x022490DC
_0222FB34: .word 0x02249680
_0222FB38: .word 0x0224962C
_0222FB3C: .word 0x02249618
_0222FB40: .word 0x02249790
	thumb_func_end ov62_0222F910

	thumb_func_start ov62_0222FB44
ov62_0222FB44: ; 0x0222FB44
	push {r4, lr}
	add r4, r0, #0
	cmp r2, #0
	beq _0222FB5C
	str r1, [r3, #0]
	mov r1, #0
	bl ov62_0222FB60
	add r0, r4, #0
	mov r1, #0
	bl ov62_0222FB6C
_0222FB5C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_0222FB44

	thumb_func_start ov62_0222FB60
ov62_0222FB60: ; 0x0222FB60
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov62_0222FB60

	thumb_func_start ov62_0222FB6C
ov62_0222FB6C: ; 0x0222FB6C
	str r1, [r0, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov62_0222FB6C

	thumb_func_start ov62_0222FB74
ov62_0222FB74: ; 0x0222FB74
	push {r4, lr}
	add r4, r0, #0
	bl sub_0208C06C
	add r0, r4, #0
	bl ov62_02230A5C
	ldr r0, _0222FB8C ; =0x000006E4
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_0222FB8C: .word 0x000006E4
	thumb_func_end ov62_0222FB74

	thumb_func_start ov62_0222FB90
ov62_0222FB90: ; 0x0222FB90
	push {r4, r5, r6, lr}
	ldr r2, _0222FBF0 ; =0x000006D8
	ldr r3, _0222FBF4 ; =0x00000818
	ldr r4, [r0, r2]
	ldr r1, [r0, r3]
	lsl r4, r4, #2
	add r5, r0, r4
	add r4, r3, #4
	str r1, [r5, r4]
	add r1, r2, #0
	add r1, #0xc
	ldr r1, [r0, r1]
	ldr r5, [r0, r3]
	add r4, r1, #0
	ldr r1, [r0, r2]
	mov r6, #0x24
	mul r4, r6
	lsl r1, r1, #2
	add r5, r5, r4
	add r4, r0, r1
	add r1, r2, #0
	sub r1, #0x14
	str r5, [r4, r1]
	add r4, r2, #0
	add r4, #0xc
	ldr r4, [r0, r4]
	ldr r1, [r0, r3]
	add r5, r4, #0
	mul r5, r6
	add r1, r1, r5
	ldr r1, [r1, #0x20]
	mov r4, #0
	str r1, [r0, r3]
	ldr r1, [r0, r2]
	add r1, r1, #1
	str r1, [r0, r2]
	add r2, #0xc
	str r4, [r0, r2]
	ldr r1, [r0, r3]
	cmp r1, #0
	bne _0222FBE6
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0222FBE6:
	bl ov62_0222FB74
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0222FBF0: .word 0x000006D8
_0222FBF4: .word 0x00000818
	thumb_func_end ov62_0222FB90

	thumb_func_start ov62_0222FBF8
ov62_0222FBF8: ; 0x0222FBF8
	push {r3, lr}
	ldr r1, _0222FC14 ; =0x000006D8
	ldr r1, [r0, r1]
	lsl r1, r1, #2
	add r2, r0, r1
	ldr r1, _0222FC18 ; =0x0000081C
	ldr r2, [r2, r1]
	sub r1, r1, #4
	str r2, [r0, r1]
	bl ov62_0222FB74
	mov r0, #1
	pop {r3, pc}
	nop
_0222FC14: .word 0x000006D8
_0222FC18: .word 0x0000081C
	thumb_func_end ov62_0222FBF8

	thumb_func_start ov62_0222FC1C
ov62_0222FC1C: ; 0x0222FC1C
	push {r3, r4, r5, lr}
	ldr r3, _0222FD34 ; =0x000006E4
	add r4, r0, #0
	ldr r1, _0222FD38 ; =0x00000818
	ldr r5, [r4, r3]
	mov r3, #0x24
	ldr r2, [r4, r1]
	mul r3, r5
	add r2, r2, r3
	ldr r2, [r2, #0x10]
	cmp r2, #0x13
	bhi _0222FD30
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0222FC40: ; jump table
	.short _0222FD30 - _0222FC40 - 2 ; case 0
	.short _0222FD30 - _0222FC40 - 2 ; case 1
	.short _0222FC68 - _0222FC40 - 2 ; case 2
	.short _0222FD30 - _0222FC40 - 2 ; case 3
	.short _0222FC7E - _0222FC40 - 2 ; case 4
	.short _0222FC8A - _0222FC40 - 2 ; case 5
	.short _0222FD30 - _0222FC40 - 2 ; case 6
	.short _0222FD26 - _0222FC40 - 2 ; case 7
	.short _0222FC96 - _0222FC40 - 2 ; case 8
	.short _0222FCA2 - _0222FC40 - 2 ; case 9
	.short _0222FCAE - _0222FC40 - 2 ; case 10
	.short _0222FCBA - _0222FC40 - 2 ; case 11
	.short _0222FCC6 - _0222FC40 - 2 ; case 12
	.short _0222FCD2 - _0222FC40 - 2 ; case 13
	.short _0222FCDE - _0222FC40 - 2 ; case 14
	.short _0222FCEA - _0222FC40 - 2 ; case 15
	.short _0222FCF6 - _0222FC40 - 2 ; case 16
	.short _0222FD02 - _0222FC40 - 2 ; case 17
	.short _0222FD0E - _0222FC40 - 2 ; case 18
	.short _0222FD1A - _0222FC40 - 2 ; case 19
_0222FC68:
	add r1, #0x50
	ldr r0, [r4, r1]
	mov r1, #0
	add r2, r1, #0
	bl sub_0208BA84
	add r0, r4, #0
	mov r1, #2
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_0222FC7E:
	ldr r3, [r4, #0x10]
	mov r1, #2
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FC8A:
	ldr r3, [r4, #0x10]
	mov r1, #3
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FC96:
	ldr r3, [r4, #0x10]
	mov r1, #4
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCA2:
	ldr r3, [r4, #0x10]
	mov r1, #5
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCAE:
	ldr r3, [r4, #0x10]
	mov r1, #6
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCBA:
	ldr r3, [r4, #0x10]
	mov r1, #7
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCC6:
	ldr r3, [r4, #0x10]
	mov r1, #8
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCD2:
	ldr r3, [r4, #0x10]
	mov r1, #9
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCDE:
	ldr r3, [r4, #0x10]
	mov r1, #0xa
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCEA:
	ldr r3, [r4, #0x10]
	mov r1, #0xb
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCF6:
	ldr r3, [r4, #0x10]
	mov r1, #0xc
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FD02:
	ldr r3, [r4, #0x10]
	mov r1, #0xd
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FD0E:
	ldr r3, [r4, #0x10]
	mov r1, #0xe
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FD1A:
	ldr r3, [r4, #0x10]
	mov r1, #0xf
	mov r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FD26:
	ldr r3, [r4, #0x10]
	mov r1, #0x11
	mov r2, #1
	bl ov62_0222FB44
_0222FD30:
	pop {r3, r4, r5, pc}
	nop
_0222FD34: .word 0x000006E4
_0222FD38: .word 0x00000818
	thumb_func_end ov62_0222FC1C

	thumb_func_start ov62_0222FD3C
ov62_0222FD3C: ; 0x0222FD3C
	push {r4, r5, r6, lr}
	ldr r3, _0222FDF8 ; =0x000006E4
	add r5, r0, #0
	ldr r1, _0222FDFC ; =0x00000818
	ldr r4, [r5, r3]
	mov r3, #0x24
	ldr r2, [r5, r1]
	mul r3, r4
	add r2, r2, r3
	ldr r4, [r2, #0x18]
	ldr r2, [r5, #0]
	mov r6, #1
	cmp r2, #6
	bhi _0222FD72
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0222FD64: ; jump table
	.short _0222FD72 - _0222FD64 - 2 ; case 0
	.short _0222FD72 - _0222FD64 - 2 ; case 1
	.short _0222FDCA - _0222FD64 - 2 ; case 2
	.short _0222FDE0 - _0222FD64 - 2 ; case 3
	.short _0222FDE0 - _0222FD64 - 2 ; case 4
	.short _0222FD8E - _0222FD64 - 2 ; case 5
	.short _0222FDB2 - _0222FD64 - 2 ; case 6
_0222FD72:
	cmp r4, #3
	bhi _0222FDE0
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0222FE00 ; =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0222FDE0
	ldr r1, _0222FE04 ; =0x0000010D
	add r0, r5, #0
	bl ov62_0223197C
	mov r6, #0
	b _0222FDE0
_0222FD8E:
	cmp r4, #0
	bne _0222FDE0
	add r1, #0x18
	ldr r0, [r5, r1]
	bl sub_0202A750
	add r1, r4, #0
	bl sub_02029CA8
	bl sub_02029F34
	add r6, r0, #0
	bne _0222FDE0
	ldr r1, _0222FE08 ; =0x00000122
	add r0, r5, #0
	bl ov62_0223197C
	b _0222FDE0
_0222FDB2:
	cmp r4, #0x64
	bne _0222FDE0
	bl ov62_02231974
	cmp r0, #0
	beq _0222FDE0
	ldr r1, _0222FE0C ; =0x00000111
	add r0, r5, #0
	bl ov62_0223197C
	mov r6, #0
	b _0222FDE0
_0222FDCA:
	ldr r2, _0222FE10 ; =0x0000270F
	cmp r4, r2
	bne _0222FDE0
	add r1, #0x64
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _0222FDE0
	mov r1, #0x81
	bl ov62_0223197C
	mov r6, #0
_0222FDE0:
	cmp r6, #0
	bne _0222FDEC
	ldr r0, _0222FE14 ; =0x00000564
	bl sub_02005748
	b _0222FDF2
_0222FDEC:
	ldr r0, _0222FE18 ; =0x00000563
	bl sub_02005748
_0222FDF2:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0222FDF8: .word 0x000006E4
_0222FDFC: .word 0x00000818
_0222FE00: .word 0x0000087C
_0222FE04: .word 0x0000010D
_0222FE08: .word 0x00000122
_0222FE0C: .word 0x00000111
_0222FE10: .word 0x0000270F
_0222FE14: .word 0x00000564
_0222FE18: .word 0x00000563
	thumb_func_end ov62_0222FD3C

	thumb_func_start ov62_0222FE1C
ov62_0222FE1C: ; 0x0222FE1C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	bne _0222FF1C
	ldr r0, _0222FF20 ; =0x000006E4
	str r5, [r4, r0]
	add r0, r4, #0
	bl ov62_0222FD3C
	cmp r0, #0
	beq _0222FF1C
	cmp r5, #4
	bhi _0222FF1C
	mov r0, #0x28
	mul r0, r5
	add r1, r4, r0
	ldr r0, _0222FF24 ; =0x000005FC
	add r2, sp, #0
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ov62_02230E74
	mov r0, #0x6f
	lsl r0, r0, #4
	add r3, sp, #0
	mov r1, #2
	ldrsh r1, [r3, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r1, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	bl sub_0208B948
	mov r0, #0x6f
	lsl r0, r0, #4
	add r3, sp, #0
	mov r1, #2
	ldrsh r1, [r3, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r1, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	bl sub_0208B8B8
	ldr r2, _0222FF20 ; =0x000006E4
	ldr r1, _0222FF28 ; =0x00000818
	ldr r0, [r4, r2]
	ldr r6, [r4, r1]
	mov r3, #0x24
	add r5, r0, #0
	mul r5, r3
	add r0, r6, r5
	ldr r5, [r0, #0x18]
	add r0, r1, #0
	add r0, #0x54
	str r5, [r4, r0]
	ldr r5, [r4, r1]
	ldr r1, [r4, r2]
	add r0, r4, #0
	add r2, r1, #0
	mul r2, r3
	add r1, r5, r2
	ldr r1, [r1, #0x14]
	bl ov62_0222FB60
	ldr r1, _0222FF20 ; =0x000006E4
	ldr r0, _0222FF28 ; =0x00000818
	ldr r2, [r4, r1]
	mov r1, #0x24
	ldr r3, [r4, r0]
	mul r1, r2
	add r1, r3, r1
	ldr r1, [r1, #0x14]
	cmp r1, #2
	bne _0222FECE
	add r0, #0x50
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA84
	b _0222FEE0
_0222FECE:
	add r0, r4, #0
	bl ov62_02230014
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
_0222FEE0:
	ldr r1, _0222FF2C ; =0x0000086C
	ldr r0, _0222FF30 ; =0x000003E7
	ldr r2, [r4, r1]
	cmp r2, r0
	bne _0222FEF6
	add r0, r4, #0
	mov r1, #0xc1
	bl ov62_02231BC4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222FEF6:
	ldr r0, _0222FF34 ; =0x0000270F
	cmp r2, r0
	bne _0222FF08
	ldr r1, _0222FF38 ; =0x0000012D
	add r0, r4, #0
	bl ov62_02231BC4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222FF08:
	add r1, #0x30
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0222FF1C
	add r0, r4, #0
	bl ov62_02231A1C
	ldr r0, _0222FF3C ; =0x0000089C
	mov r1, #0
	str r1, [r4, r0]
_0222FF1C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222FF20: .word 0x000006E4
_0222FF24: .word 0x000005FC
_0222FF28: .word 0x00000818
_0222FF2C: .word 0x0000086C
_0222FF30: .word 0x000003E7
_0222FF34: .word 0x0000270F
_0222FF38: .word 0x0000012D
_0222FF3C: .word 0x0000089C
	thumb_func_end ov62_0222FE1C

	thumb_func_start ov62_0222FF40
ov62_0222FF40: ; 0x0222FF40
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r4, #0
	ldr r0, _0222FF74 ; =0x0000060C
	mov r1, #0
	add r2, #0x30
	add r3, r4, #0
_0222FF50:
	add r1, r1, #1
	str r2, [r3, r0]
	add r2, r2, #4
	add r3, #0x28
	cmp r1, #5
	blt _0222FF50
	mov r0, #0x66
	str r0, [sp]
	add r0, r4, #0
	ldr r2, _0222FF78 ; =ov62_0222FE1C
	add r0, #0x30
	mov r1, #5
	add r3, r4, #0
	bl sub_02023FCC
	str r0, [r4, #0x2c]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0222FF74: .word 0x0000060C
_0222FF78: .word ov62_0222FE1C
	thumb_func_end ov62_0222FF40

	thumb_func_start ov62_0222FF7C
ov62_0222FF7C: ; 0x0222FF7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _02230008 ; =0x00000818
	str r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02230004
	mov r4, #0
	ldr r5, [sp]
	str r4, [sp, #4]
	add r6, r4, #0
	add r7, sp, #8
_0222FF94:
	ldr r1, [sp]
	ldr r0, _02230008 ; =0x00000818
	ldr r0, [r1, r0]
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _0222FFBA
	ldr r0, _0223000C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0]
	ldr r0, _0223000C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0, #1]
	ldr r0, _0223000C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0, #2]
	ldr r0, _0223000C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0, #3]
	b _0222FFF6
_0222FFBA:
	ldr r0, _02230010 ; =0x000005FC
	add r1, sp, #8
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, _0223000C ; =0x0000060C
	ldr r0, [r5, r0]
	sub r1, #0x10
	strb r1, [r0]
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, _0223000C ; =0x0000060C
	ldr r0, [r5, r0]
	add r1, #0x10
	strb r1, [r0, #1]
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, _0223000C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r1, [r0, #2]
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, _0223000C ; =0x0000060C
	ldr r0, [r5, r0]
	add r1, #0xa0
	strb r1, [r0, #3]
_0222FFF6:
	ldr r0, [sp, #4]
	add r4, #0x24
	add r0, r0, #1
	add r5, #0x28
	str r0, [sp, #4]
	cmp r0, #5
	blt _0222FF94
_02230004:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02230008: .word 0x00000818
_0223000C: .word 0x0000060C
_02230010: .word 0x000005FC
	thumb_func_end ov62_0222FF7C

	thumb_func_start ov62_02230014
ov62_02230014: ; 0x02230014
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r7, _0223004C ; =0x0000060C
	add r5, r0, #0
	add r4, r6, #0
_0223001E:
	ldr r0, _02230050 ; =0x000005FC
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	ldr r0, _0223004C ; =0x0000060C
	add r6, r6, #1
	ldr r0, [r5, r0]
	strb r4, [r0]
	ldr r0, _0223004C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r4, [r0, #1]
	ldr r0, _0223004C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r4, [r0, #2]
	ldr r0, [r5, r7]
	add r5, #0x28
	strb r4, [r0, #3]
	cmp r6, #5
	blt _0223001E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223004C: .word 0x0000060C
_02230050: .word 0x000005FC
	thumb_func_end ov62_02230014

	thumb_func_start ov62_02230054
ov62_02230054: ; 0x02230054
	ldr r3, _0223005C ; =sub_0202404C
	ldr r0, [r0, #0x2c]
	bx r3
	nop
_0223005C: .word sub_0202404C
	thumb_func_end ov62_02230054

	thumb_func_start ov62_02230060
ov62_02230060: ; 0x02230060
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02230090 ; =0x000006D8
	ldr r1, [r4, r0]
	cmp r1, #0
	ble _02230072
	sub r1, r1, #1
	str r1, [r4, r0]
	b _0223007C
_02230072:
	beq _0223007C
	mov r1, #0
	str r1, [r4, r0]
	bl sub_02022974
_0223007C:
	ldr r0, _02230090 ; =0x000006D8
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02230094 ; =0x0000081C
	ldr r1, [r1, r0]
	sub r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_02230090: .word 0x000006D8
_02230094: .word 0x0000081C
	thumb_func_end ov62_02230060

	thumb_func_start ov62_02230098
ov62_02230098: ; 0x02230098
	ldr r1, _022300B8 ; =0x00000838
	mov r3, #0
	str r3, [r0, r1]
	mov r2, #0xff
	add r1, r1, #4
	str r2, [r0, r1]
	mov r1, #0x21
	add r2, r3, #0
	lsl r1, r1, #6
_022300AA:
	add r3, r3, #1
	str r2, [r0, r1]
	add r0, r0, #4
	cmp r3, #8
	blt _022300AA
	bx lr
	nop
_022300B8: .word 0x00000838
	thumb_func_end ov62_02230098

	thumb_func_start ov62_022300BC
ov62_022300BC: ; 0x022300BC
	ldr r1, _022300C4 ; =0x00000838
	ldr r0, [r0, r1]
	bx lr
	nop
_022300C4: .word 0x00000838
	thumb_func_end ov62_022300BC

	thumb_func_start ov62_022300C8
ov62_022300C8: ; 0x022300C8
	ldr r2, _022300D4 ; =0x00000838
	mov r3, #1
	str r3, [r0, r2]
	add r2, r2, #4
	str r1, [r0, r2]
	bx lr
	; .align 2, 0
_022300D4: .word 0x00000838
	thumb_func_end ov62_022300C8

	.rodata


	.global Unk_ov62_0224872C
Unk_ov62_0224872C: ; 0x0224872C
	.incbin "incbin/overlay62_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov62_0224873C
Unk_ov62_0224873C: ; 0x0224873C
	.incbin "incbin/overlay62_rodata.bin", 0x10, 0x24 - 0x10

	.global Unk_ov62_02248750
Unk_ov62_02248750: ; 0x02248750
	.incbin "incbin/overlay62_rodata.bin", 0x24, 0x3C - 0x24

	.global Unk_ov62_02248768
Unk_ov62_02248768: ; 0x02248768
	.incbin "incbin/overlay62_rodata.bin", 0x3C, 0x5C - 0x3C

	.global Unk_ov62_02248788
Unk_ov62_02248788: ; 0x02248788
	.incbin "incbin/overlay62_rodata.bin", 0x5C, 0x84 - 0x5C

	.global Unk_ov62_022487B0
Unk_ov62_022487B0: ; 0x022487B0
	.incbin "incbin/overlay62_rodata.bin", 0x84, 0xF4 - 0x84

	.global Unk_ov62_02248820
Unk_ov62_02248820: ; 0x02248820
	.incbin "incbin/overlay62_rodata.bin", 0xF4, 0x70

