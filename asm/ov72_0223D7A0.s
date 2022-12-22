	.include "macros/function.inc"
	.include "include/ov72_0223D7A0.inc"

	

	.text


	thumb_func_start ov72_0223D7A0
ov72_0223D7A0: ; 0x0223D7A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r6, r0, #0
	cmp r1, #0
	beq _0223D7B6
	cmp r1, #1
	bne _0223D7B4
	b _0223D8EA
_0223D7B4:
	b _0223D8F8
_0223D7B6:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0223D900 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0223D904 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #3
	mov r1, #0x27
	lsl r2, r2, #6
	bl sub_02017FC8
	ldr r1, _0223D908 ; =0x00005CB0
	add r0, r6, #0
	mov r2, #0x27
	bl sub_0200681C
	ldr r2, _0223D908 ; =0x00005CB0
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x27
	bl sub_02018340
	str r0, [r4, #0]
	mov r0, #0x5f
	mov r1, #0x27
	bl sub_02006C24
	add r7, r0, #0
	mov r0, #0x27
	bl sub_0200B358
	str r0, [r4, #0x10]
	ldr r2, _0223D90C ; =0x000001A9
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x27
	bl sub_0200B144
	str r0, [r4, #0x14]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	bl ov72_0223DA70
	ldr r0, [r4, #0]
	bl ov72_0223DA90
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x27
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	add r0, r6, #0
	bl sub_02006840
	bl sub_0202C834
	bl sub_0202C840
	ldr r1, _0223D910 ; =0x00005B98
	str r0, [r4, r1]
	add r0, r6, #0
	bl sub_02006840
	bl sub_0202CD88
	str r0, [r4, #8]
	add r0, r6, #0
	bl sub_02006840
	bl sub_02025E44
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	bl ov72_0223DCA8
	bl sub_0201E3D8
	mov r0, #1
	bl sub_0201E450
	ldr r0, _0223D914 ; =ov72_0223DA48
	ldr r1, [r4, #0]
	bl sub_02017798
	mov r0, #2
	mov r1, #0x27
	bl sub_02002BB8
	add r0, r4, #0
	bl ov72_0223DB98
	bl ov72_0223DDA8
	add r0, r4, #0
	add r1, r7, #0
	bl ov72_0223DDD8
	add r0, r4, #0
	bl ov72_0223DF58
	add r0, r4, #0
	add r1, r6, #0
	bl ov72_0223E0A0
	mov r1, #0
	mov r0, #0x38
	add r2, r1, #0
	bl sub_02004550
	ldr r2, _0223D918 ; =0x04000304
	ldr r0, _0223D91C ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	add r0, r7, #0
	bl sub_02006CA8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223D8F8
_0223D8EA:
	bl sub_0200682C
	mov r0, #0
	str r0, [r5, #0]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223D8F8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223D900: .word 0xFFFFE0FF
_0223D904: .word 0x04001000
_0223D908: .word 0x00005CB0
_0223D90C: .word 0x000001A9
_0223D910: .word 0x00005B98
_0223D914: .word ov72_0223DA48
_0223D918: .word 0x04000304
_0223D91C: .word 0xFFFF7FFF
	thumb_func_end ov72_0223D7A0

	thumb_func_start ov72_0223D920
ov72_0223D920: ; 0x0223D920
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0
	beq _0223D93A
	cmp r1, #1
	beq _0223D948
	cmp r1, #2
	beq _0223D966
	b _0223D972
_0223D93A:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223D972
	mov r0, #1
	str r0, [r5, #0]
	b _0223D972
_0223D948:
	mov r2, #0xc3
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	lsl r3, r2, #2
	ldr r2, _0223D97C ; =0x0223ED40
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _0223D95C
	blx r2
	str r0, [r5, #0]
_0223D95C:
	ldr r0, _0223D980 ; =0x00004318
	add r0, r4, r0
	bl ov72_0223E8D0
	b _0223D972
_0223D966:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223D972
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223D972:
	ldr r0, [r4, #0x3c]
	bl sub_020219F8
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D97C: .word 0x0223ED40
_0223D980: .word 0x00004318
	thumb_func_end ov72_0223D920

	thumb_func_start ov72_0223D984
ov72_0223D984: ; 0x0223D984
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0200682C
	add r6, r0, #0
	ldr r0, _0223DA40 ; =0x00005B98
	mov r1, #0x2d
	lsl r1, r1, #4
	ldr r0, [r6, r0]
	ldr r1, [r6, r1]
	bl ov72_0223E9B4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	mov r7, #0x5a
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_0223D9D4:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223D9D4
	ldr r0, [r6, #0x3c]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	add r0, r6, #0
	bl ov72_0223E260
	mov r0, #2
	bl sub_02002C60
	ldr r0, [r6, #0]
	bl ov72_0223DC6C
	bl sub_0201E530
	ldr r0, [r6, #0x14]
	bl sub_0200B190
	ldr r0, [r6, #0x10]
	bl sub_0200B3F0
	add r0, r6, #0
	bl ov72_0223DC34
	ldr r0, [sp]
	bl sub_02006830
	ldr r2, _0223DA44 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x27
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DA40: .word 0x00005B98
_0223DA44: .word 0x04000304
	thumb_func_end ov72_0223D984

	thumb_func_start ov72_0223DA48
ov72_0223DA48: ; 0x0223DA48
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200A858
	add r0, r4, #0
	bl sub_0201C2B8
	ldr r3, _0223DA68 ; =0x027E0000
	ldr r1, _0223DA6C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_0223DA68: .word 0x027E0000
_0223DA6C: .word 0x00003FF8
	thumb_func_end ov72_0223DA48

	thumb_func_start ov72_0223DA70
ov72_0223DA70: ; 0x0223DA70
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223DA8C ; =0x0223EC08
	add r3, sp, #0
	mov r2, #5
_0223DA7A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223DA7A
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0223DA8C: .word 0x0223EC08
	thumb_func_end ov72_0223DA70

	thumb_func_start ov72_0223DA90
ov72_0223DA90: ; 0x0223DA90
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0223DB80 ; =0x0223EB5C
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223DB84 ; =0x0223EBB4
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _0223DB88 ; =0x0223EBD0
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _0223DB8C ; =0x0223EBEC
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _0223DB90 ; =0x0223EB7C
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _0223DB94 ; =0x0223EB98
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x27
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x27
	bl sub_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_0223DB80: .word 0x0223EB5C
_0223DB84: .word 0x0223EBB4
_0223DB88: .word 0x0223EBD0
_0223DB8C: .word 0x0223EBEC
_0223DB90: .word 0x0223EB7C
_0223DB94: .word 0x0223EB98
	thumb_func_end ov72_0223DA90

	thumb_func_start ov72_0223DB98
ov72_0223DB98: ; 0x0223DB98
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0223DC24 ; =0x0000433D
	mov r6, #0
	add r5, r7, r0
	mov r0, #0xf0
	add r4, r7, #0
	str r0, [sp]
_0223DBA8:
	mov r0, #8
	mov r1, #0x27
	bl sub_02023790
	str r0, [r4, #0x18]
	ldrb r1, [r5]
	ldr r0, [sp]
	add r6, r6, #1
	bic r1, r0
	strb r1, [r5]
	ldr r0, _0223DC28 ; =0x00004384
	mov r1, #0
	strh r1, [r4, r0]
	add r4, r4, #4
	add r5, #0x11
	cmp r6, #5
	blt _0223DBA8
	mov r0, #0x14
	mov r1, #0x27
	bl sub_02023790
	str r0, [r7, #0x2c]
	mov r0, #0x28
	mov r1, #0x27
	bl sub_02023790
	str r0, [r7, #0x30]
	mov r0, #0x50
	mov r1, #0x27
	bl sub_02023790
	str r0, [r7, #0x34]
	ldr r0, _0223DC2C ; =0x0000431A
	mov r1, #0
	strb r1, [r7, r0]
	mov r0, #0xc3
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r7, r0]
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x2c]
	mov r1, #0xc
	bl sub_0200B1B8
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x30]
	mov r1, #9
	bl sub_0200B1B8
	mov r0, #0x27
	bl sub_02015920
	ldr r1, _0223DC30 ; =0x00005C9C
	mov r2, #5
	str r0, [r7, r1]
	add r1, r1, #4
	mov r0, #0
	add r1, r7, r1
	bl MIi_CpuClearFast
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DC24: .word 0x0000433D
_0223DC28: .word 0x00004384
_0223DC2C: .word 0x0000431A
_0223DC30: .word 0x00005C9C
	thumb_func_end ov72_0223DB98

	thumb_func_start ov72_0223DC34
ov72_0223DC34: ; 0x0223DC34
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0223DC68 ; =0x00005C9C
	ldr r0, [r6, r0]
	bl sub_02015938
	mov r4, #0
	add r5, r6, #0
_0223DC44:
	ldr r0, [r5, #0x18]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0223DC44
	ldr r0, [r6, #0x34]
	bl sub_020237BC
	ldr r0, [r6, #0x30]
	bl sub_020237BC
	ldr r0, [r6, #0x2c]
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	nop
_0223DC68: .word 0x00005C9C
	thumb_func_end ov72_0223DC34

	thumb_func_start ov72_0223DC6C
ov72_0223DC6C: ; 0x0223DC6C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov72_0223DC6C

	thumb_func_start ov72_0223DCA8
ov72_0223DCA8: ; 0x0223DCA8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r4, [r6, #0]
	mov r0, #0x60
	add r5, r1, #0
	mov r1, #0
	str r0, [sp]
	mov r0, #0x27
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02007130
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x27
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x27
	bl sub_02002E98
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x27
	bl sub_02002E98
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x27
	bl sub_02019690
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x27
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x27
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #5
	add r2, r4, #0
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x27
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #4
	add r2, r4, #0
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x27
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	mov r3, #5
	bl sub_0200710C
	ldr r0, [r6, #0xc]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x27
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x27
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov72_0223DCA8

	thumb_func_start ov72_0223DDA8
ov72_0223DDA8: ; 0x0223DDA8
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0223DDD4 ; =0x0223EB6C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x27
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223DDD4: .word 0x0223EB6C
	thumb_func_end ov72_0223DDA8

	thumb_func_start ov72_0223DDD8
ov72_0223DDD8: ; 0x0223DDD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x27
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	add r1, r5, #0
	mov r0, #0x32
	add r1, #0x40
	mov r2, #0x27
	bl sub_020095C4
	str r0, [r5, #0x3c]
	add r0, r5, #0
	mov r2, #1
	add r0, #0x40
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r6, #0
	add r4, r5, #0
_0223DE1C:
	mov r0, #2
	add r1, r6, #0
	mov r2, #0x27
	bl sub_02009714
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0223DE1C
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x27
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #7
	bl sub_02009A4C
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x27
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	bl sub_02009B04
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x27
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #8
	mov r3, #1
	bl sub_02009BC4
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x27
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #9
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x27
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #7
	bl sub_02009A4C
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r2, #1
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x27
	sub r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009B04
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x27
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #8
	bl sub_02009BC4
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x27
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #9
	bl sub_02009BC4
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	bl sub_0200A328
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A328
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov72_0223DDD8

	thumb_func_start ov72_0223DF58
ov72_0223DF58: ; 0x0223DF58
	push {r3, r4, lr}
	sub sp, #0x5c
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #0x5a
	str r1, [sp, #0x10]
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r4, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r2, #0x30
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r4, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	mov r1, #1
	mov r3, #0x5a
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r4, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r4, r2]
	add r3, #0x54
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	ldr r0, [r4, #0x3c]
	mov r2, #0
	str r0, [sp, #0x2c]
	mov r0, #0x66
	lsl r0, r0, #2
	add r1, r4, r0
	str r1, [sp, #0x30]
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, #0x24
	str r2, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	add r1, sp, #0x2c
	strh r2, [r1, #0x20]
	mov r1, #1
	add r0, r4, r0
	str r0, [sp, #0x30]
	mov r0, #0xe
	lsl r0, r0, #0x10
	str r0, [sp, #0x34]
	mov r0, #0xaf
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	str r1, [sp, #0x50]
	str r1, [sp, #0x54]
	mov r1, #0x27
	add r0, sp, #0x2c
	str r1, [sp, #0x58]
	bl sub_02021AA0
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021D6C
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021E90
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021E80
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov72_0223DF58

	thumb_func_start ov72_0223E060
ov72_0223E060: ; 0x0223E060
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #2
	mov r2, #0
	add r6, r1, #0
	add r7, r3, #0
	bl sub_02002D7C
	add r3, r0, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r4, [r5, #7]
	add r0, r5, #0
	add r2, r6, #0
	lsl r4, r4, #3
	sub r4, r4, r3
	lsr r3, r4, #0x1f
	add r3, r4, r3
	asr r3, r3, #1
	bl sub_0201D78C
	ldr r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov72_0223E060

	thumb_func_start ov72_0223E0A0
ov72_0223E0A0: ; 0x0223E0A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	mov r1, #0xb5
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	add r1, r5, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0xb5
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #9
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #8
	mov r1, #0xb1
	lsl r1, r1, #2
	str r0, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r5, r1
	mov r3, #4
	bl sub_0201A7E8
	mov r0, #0xb1
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #2
	bl sub_0201ADA4
	mov r0, #0x15
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xc1
	mov r1, #0xb9
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	add r1, r5, r1
	mov r2, #1
	mov r3, #0x1a
	bl sub_0201A7E8
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _0223E250 ; =0x000E0702
	mov r2, #1
	str r0, [sp]
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r1, [r5, #0x2c]
	add r0, r5, r0
	mov r3, #2
	bl ov72_0223E060
	mov r1, #2
	lsl r1, r1, #8
	bl DC_FlushRange
	mov r4, #0
	ldr r0, _0223E254 ; =0x00005B9C
	str r4, [sp, #0x18]
	add r7, r4, #0
	add r6, r5, r0
_0223E156:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #4
	mov r2, #2
	add r3, r4, #0
	str r6, [sp, #4]
	bl sub_02012C60
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #8
	bl DC_FlushRange
	mov r2, #1
	add r0, r6, #0
	add r1, r7, #0
	lsl r2, r2, #8
	bl GX_LoadOBJ
	mov r0, #1
	lsl r0, r0, #8
	add r7, r7, r0
	ldr r0, [sp, #0x18]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _0223E156
	mov r3, #2
	str r3, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r1, #0xbd
	lsl r1, r1, #2
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xd1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r5, r1
	mov r2, #1
	bl sub_0201A7E8
	ldr r1, [r5, #0x30]
	mov r0, #1
	mov r2, #0
	bl sub_02002D7C
	add r4, r0, #0
	mov r0, #0xbd
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r3, #0xe0
	sub r4, r3, r4
	lsr r3, r4, #0x1f
	add r3, r4, r3
	ldr r0, _0223E258 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r2, [r5, #0x30]
	add r0, r5, r0
	mov r1, #1
	asr r3, r3, #1
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x9d
	lsl r0, r0, #2
	mov r7, #1
	mov r6, #3
	add r4, r5, r0
_0223E1FE:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r2, #4
	mov r3, #5
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	add r7, #0x14
	add r0, r0, #1
	add r6, r6, #4
	add r4, #0x10
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _0223E1FE
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r2, _0223E25C ; =0x000E0D0F
	add r0, r5, r0
	mov r1, #0
	add r3, r5, #0
	bl ov72_0223E910
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223E250: .word 0x000E0702
_0223E254: .word 0x00005B9C
_0223E258: .word 0x00010200
_0223E25C: .word 0x000E0D0F
	thumb_func_end ov72_0223E0A0

	thumb_func_start ov72_0223E260
ov72_0223E260: ; 0x0223E260
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x9d
	lsl r0, r0, #2
	mov r4, #0
	add r5, r6, r0
_0223E26C:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _0223E26C
	mov r0, #0xbd
	lsl r0, r0, #2
	add r0, r6, r0
	bl sub_0201A8FC
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r6, r0
	bl sub_0201A8FC
	mov r0, #0xb1
	lsl r0, r0, #2
	add r0, r6, r0
	bl sub_0201A8FC
	mov r0, #0xb5
	lsl r0, r0, #2
	add r0, r6, r0
	bl sub_0201A8FC
	pop {r4, r5, r6, pc}
	thumb_func_end ov72_0223E260

	thumb_func_start ov72_0223E2A4
ov72_0223E2A4: ; 0x0223E2A4
	bx lr
	; .align 2, 0
	thumb_func_end ov72_0223E2A4

	thumb_func_start ov72_0223E2A8
ov72_0223E2A8: ; 0x0223E2A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r0, #0
	ldr r0, _0223E370 ; =0x0223EB4A
	bl sub_02022664
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0223E2FC
	cmp r1, #0
	bne _0223E2EE
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0223E2FC
	add r0, r4, #0
	mov r1, #0xa
	bl ov72_0223E930
	mov r0, #0xc3
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #0xbc
	add r0, r4, r0
	mov r1, #1
	bl ov72_0223E3A8
	ldr r0, _0223E374 ; =0x000005DD
	bl sub_02005748
	b _0223E2FC
_0223E2EE:
	ldr r0, _0223E378 ; =0x0000431A
	strb r1, [r4, r0]
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov72_0223E388
_0223E2FC:
	ldr r0, _0223E37C ; =0x0223EB42
	bl sub_02022644
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223E310
	add r0, r4, #0
	bl ov72_0223EA18
_0223E310:
	add r0, sp, #0
	mov r1, #4
	mov r2, #1
	bl sub_0201E564
	cmp r0, #1
	bne _0223E36C
	add r7, sp, #0
	ldrh r3, [r7]
	mov r1, #0
	cmp r3, #0
	ble _0223E344
	ldr r5, _0223E380 ; =0x0000431C
	add r2, sp, #0
	add r6, r5, #0
	add r6, #8
_0223E330:
	ldrh r3, [r2, #2]
	add r0, r4, r1
	add r1, r1, #1
	strb r3, [r0, r5]
	ldrh r3, [r2, #4]
	add r2, #8
	strb r3, [r0, r6]
	ldrh r3, [r7]
	cmp r1, r3
	blt _0223E330
_0223E344:
	ldr r0, _0223E384 ; =0x0000432C
	mov r2, #0xf0
	ldrb r1, [r4, r0]
	bic r1, r2
	lsl r2, r3, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x18
	orr r1, r2
	strb r1, [r4, r0]
	ldrb r3, [r4, r0]
	mov r1, #0xf
	bic r3, r1
	add r1, r0, #0
	sub r1, #0x12
	ldrb r2, [r4, r1]
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strb r1, [r4, r0]
_0223E36C:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E370: .word 0x0223EB4A
_0223E374: .word 0x000005DD
_0223E378: .word 0x0000431A
_0223E37C: .word 0x0223EB42
_0223E380: .word 0x0000431C
_0223E384: .word 0x0000432C
	thumb_func_end ov72_0223E2A8

	thumb_func_start ov72_0223E388
ov72_0223E388: ; 0x0223E388
	push {r3, lr}
	ldr r2, _0223E3A4 ; =0x0223EB3C
	cmp r1, #0
	ldr r0, [r0, #0]
	bne _0223E39C
	ldrh r1, [r2, #4]
	add r1, r1, #1
	bl sub_02021D6C
	pop {r3, pc}
_0223E39C:
	ldrh r1, [r2, #4]
	bl sub_02021D6C
	pop {r3, pc}
	; .align 2, 0
_0223E3A4: .word 0x0223EB3C
	thumb_func_end ov72_0223E388

	thumb_func_start ov72_0223E3A8
ov72_0223E3A8: ; 0x0223E3A8
	push {r3, lr}
	cmp r1, #1
	ldr r0, [r0, #0]
	bne _0223E3B8
	mov r1, #1
	bl sub_02021D6C
	pop {r3, pc}
_0223E3B8:
	mov r1, #0
	bl sub_02021D6C
	pop {r3, pc}
	thumb_func_end ov72_0223E3A8

	thumb_func_start ov72_0223E3C0
ov72_0223E3C0: ; 0x0223E3C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov72_0223E2A8
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r2, _0223E400 ; =0x000E0C0F
	add r0, r5, r0
	mov r1, #0
	add r3, r5, #0
	bl ov72_0223E910
	add r0, r5, #0
	bl ov72_0223E914
	add r0, r5, #0
	bl ov72_0223E8CC
	ldr r2, _0223E404 ; =0x0000432D
	mov r0, #0xb1
	lsl r0, r0, #2
	add r1, r5, r2
	add r2, #0x55
	add r0, r5, r0
	add r2, r5, r2
	mov r3, #1
	bl ov72_0223E80C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0223E400: .word 0x000E0C0F
_0223E404: .word 0x0000432D
	thumb_func_end ov72_0223E3C0

	thumb_func_start ov72_0223E408
ov72_0223E408: ; 0x0223E408
	push {r4, lr}
	add r4, r0, #0
	bl ov72_0223E2A4
	add r0, r4, #0
	bl ov72_0223E8CC
	ldr r2, _0223E42C ; =0x0000432D
	mov r0, #0xb1
	lsl r0, r0, #2
	add r1, r4, r2
	add r2, #0x55
	add r0, r4, r0
	add r2, r4, r2
	mov r3, #0
	bl ov72_0223E80C
	pop {r4, pc}
	; .align 2, 0
_0223E42C: .word 0x0000432D
	thumb_func_end ov72_0223E408

	thumb_func_start ov72_0223E430
ov72_0223E430: ; 0x0223E430
	push {lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xb4
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	mov r2, #0x19
	add r0, sp, #0
	strb r2, [r0, #0x10]
	mov r2, #6
	strb r2, [r0, #0x11]
	add r0, r1, #0
	add r1, sp, #0
	bl sub_02015958
	add sp, #0x14
	pop {pc}
	thumb_func_end ov72_0223E430

	thumb_func_start ov72_0223E458
ov72_0223E458: ; 0x0223E458
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	add r4, r1, #0
	bl ov72_0223E99C
	cmp r0, #0
	beq _0223E47A
	ldr r1, _0223E484 ; =0x00005C9C
	ldr r0, [r5, #0]
	ldr r1, [r5, r1]
	bl ov72_0223E430
	mov r0, #0xc3
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r5, r0]
_0223E47A:
	add r0, r5, #0
	bl ov72_0223E408
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E484: .word 0x00005C9C
	thumb_func_end ov72_0223E458

	thumb_func_start ov72_0223E488
ov72_0223E488: ; 0x0223E488
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223E520 ; =0x00005C9C
	add r4, r1, #0
	ldr r0, [r5, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _0223E4A2
	cmp r0, #2
	beq _0223E4E4
	b _0223E50A
_0223E4A2:
	ldr r0, [r5, #8]
	mov r1, #4
	bl sub_0202CFEC
	ldr r0, [r5, #8]
	mov r1, #0x72
	bl sub_0202CF28
	mov r0, #0xb5
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _0223E520 ; =0x00005C9C
	ldr r0, [r5, r0]
	bl sub_02015A54
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x27
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_0223E4E4:
	mov r0, #0xc3
	mov r1, #4
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0xbc
	add r0, r5, r0
	mov r1, #0
	bl ov72_0223E3A8
	mov r0, #0xb5
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _0223E520 ; =0x00005C9C
	ldr r0, [r5, r0]
	bl sub_02015A54
_0223E50A:
	ldr r1, _0223E524 ; =0x0000432C
	mov r0, #0xf0
	ldrb r2, [r5, r1]
	bic r2, r0
	add r0, r5, #0
	strb r2, [r5, r1]
	bl ov72_0223E408
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223E520: .word 0x00005C9C
_0223E524: .word 0x0000432C
	thumb_func_end ov72_0223E488

	thumb_func_start ov72_0223E528
ov72_0223E528: ; 0x0223E528
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223E58C ; =0x00005C9C
	add r4, r1, #0
	ldr r0, [r5, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _0223E540
	cmp r0, #2
	beq _0223E570
	b _0223E588
_0223E540:
	mov r0, #0xc3
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0x38
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _0223E58C ; =0x00005C9C
	ldr r0, [r5, r0]
	bl sub_02015A54
	mov r0, #0xb1
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #2
	bl sub_0201ADA4
	mov r0, #0xb1
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A954
	b _0223E588
_0223E570:
	mov r0, #0xc3
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0x38
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _0223E58C ; =0x00005C9C
	ldr r0, [r5, r0]
	bl sub_02015A54
_0223E588:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E58C: .word 0x00005C9C
	thumb_func_end ov72_0223E528

	thumb_func_start ov72_0223E590
ov72_0223E590: ; 0x0223E590
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0xb
	add r5, r0, #0
	bl ov72_0223E930
	mov r0, #0xc3
	mov r1, #5
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov72_0223E408
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov72_0223E590

	thumb_func_start ov72_0223E5B0
ov72_0223E5B0: ; 0x0223E5B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	add r4, r1, #0
	bl ov72_0223E99C
	cmp r0, #0
	beq _0223E5D2
	mov r0, #0xc3
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, _0223E5DC ; =0x00005C9C
	ldr r0, [r5, #0]
	ldr r1, [r5, r1]
	bl ov72_0223E430
_0223E5D2:
	add r0, r5, #0
	bl ov72_0223E408
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E5DC: .word 0x00005C9C
	thumb_func_end ov72_0223E5B0

	thumb_func_start ov72_0223E5E0
ov72_0223E5E0: ; 0x0223E5E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x38]
	mov ip, r1
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp, #0x18]
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	cmp r4, #0
	bge _0223E60C
	neg r0, r4
	cmp r0, r2
	ble _0223E600
	add r0, r2, #0
_0223E600:
	ldr r5, [sp, #0x30]
	mov r4, #0
	sub r5, r5, r0
	add r6, r6, r0
	str r5, [sp, #0x30]
	sub r2, r2, r0
_0223E60C:
	cmp r3, #0
	bge _0223E624
	neg r0, r3
	cmp r0, r1
	ble _0223E618
	add r0, r1, #0
_0223E618:
	ldr r5, [sp, #0x34]
	mov r3, #0
	sub r5, r5, r0
	add r7, r7, r0
	str r5, [sp, #0x34]
	sub r1, r1, r0
_0223E624:
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x34]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	lsl r2, r6, #0x10
	lsl r3, r7, #0x10
	ldr r0, [sp, #0x18]
	mov r1, ip
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201ADDC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov72_0223E5E0

	thumb_func_start ov72_0223E660
ov72_0223E660: ; 0x0223E660
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #0x20]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x50]
	str r3, [sp, #0x24]
	ldr r4, [r0, #0]
	ldr r0, [sp, #0x54]
	ldr r5, [r0, #0]
	add r0, r2, #0
	str r0, [sp, #0x38]
	add r0, r3, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bne _0223E6A0
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _0223E6A0
	ldr r0, [sp, #0x50]
	add r1, r2, #0
	str r1, [r0, #0]
	ldr r0, [sp, #0x54]
	add r1, r3, #0
	str r1, [r0, #0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_0223E6A0:
	ldr r0, [sp, #0x20]
	sub r0, r0, r4
	str r0, [sp, #0x34]
	bpl _0223E6AC
	neg r0, r0
	str r0, [sp, #0x34]
_0223E6AC:
	ldr r0, [sp, #0x24]
	sub r7, r0, r5
	bpl _0223E6B4
	neg r7, r7
_0223E6B4:
	ldr r0, [sp, #0x34]
	cmp r0, r7
	ble _0223E742
	ldr r0, [sp, #0x20]
	cmp r4, r0
	ble _0223E6DA
	ldr r0, [sp, #0x24]
	cmp r5, r0
	ble _0223E6CC
	mov r0, #1
	str r0, [sp, #0x2c]
	b _0223E6D2
_0223E6CC:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x2c]
_0223E6D2:
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	b _0223E6EC
_0223E6DA:
	ldr r0, [sp, #0x24]
	cmp r5, r0
	bge _0223E6E6
	mov r0, #1
	str r0, [sp, #0x2c]
	b _0223E6EC
_0223E6E6:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x2c]
_0223E6EC:
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r3, r2, #0
	bl ov72_0223E5E0
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	asr r6, r0, #1
	ldr r0, [sp, #0x38]
	cmp r4, r0
	bgt _0223E7C6
_0223E712:
	sub r6, r6, r7
	bpl _0223E71E
	ldr r0, [sp, #0x34]
	add r6, r6, r0
	ldr r0, [sp, #0x2c]
	add r5, r5, r0
_0223E71E:
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r3, r2, #0
	bl ov72_0223E5E0
	ldr r0, [sp, #0x38]
	add r4, r4, #1
	cmp r4, r0
	ble _0223E712
	b _0223E7C6
_0223E742:
	ldr r0, [sp, #0x24]
	cmp r5, r0
	ble _0223E762
	ldr r0, [sp, #0x20]
	cmp r4, r0
	ble _0223E754
	mov r0, #1
	str r0, [sp, #0x28]
	b _0223E75A
_0223E754:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x28]
_0223E75A:
	str r5, [sp, #0x30]
	ldr r5, [sp, #0x24]
	ldr r4, [sp, #0x20]
	b _0223E774
_0223E762:
	ldr r0, [sp, #0x20]
	cmp r4, r0
	bge _0223E76E
	mov r0, #1
	str r0, [sp, #0x28]
	b _0223E774
_0223E76E:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x28]
_0223E774:
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r3, r2, #0
	bl ov72_0223E5E0
	ldr r0, [sp, #0x30]
	add r5, r5, #1
	asr r6, r7, #1
	cmp r5, r0
	bgt _0223E7C6
_0223E798:
	ldr r0, [sp, #0x34]
	sub r6, r6, r0
	bpl _0223E7A4
	ldr r0, [sp, #0x28]
	add r6, r6, r7
	add r4, r4, r0
_0223E7A4:
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r3, r2, #0
	bl ov72_0223E5E0
	ldr r0, [sp, #0x30]
	add r5, r5, #1
	cmp r5, r0
	ble _0223E798
_0223E7C6:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x50]
	str r1, [r0, #0]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x54]
	str r1, [r0, #0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov72_0223E660

	thumb_func_start ov72_0223E7D8
ov72_0223E7D8: ; 0x0223E7D8
	mov r2, #0
_0223E7DA:
	ldrb r3, [r0, #0x10]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	strh r3, [r1, #2]
	ldrb r3, [r0, #0x10]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	beq _0223E7FE
	add r3, r0, r3
	sub r3, r3, #1
	ldrb r3, [r3]
	strb r3, [r1]
	ldrb r3, [r0, #0x10]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	add r3, r0, r3
	ldrb r3, [r3, #7]
	strb r3, [r1, #1]
_0223E7FE:
	add r2, r2, #1
	add r0, #0x11
	add r1, r1, #4
	cmp r2, #5
	blt _0223E7DA
	bx lr
	; .align 2, 0
	thumb_func_end ov72_0223E7D8

	thumb_func_start ov72_0223E80C
ov72_0223E80C: ; 0x0223E80C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r0, #0
	mov r0, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	add r5, r1, #0
	add r6, r2, #0
_0223E822:
	ldrb r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	beq _0223E886
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _0223E83C
	ldrb r0, [r6]
	sub r0, #0x20
	str r0, [sp, #0x28]
	ldrb r0, [r6, #1]
	sub r0, #0x48
	str r0, [sp, #0x24]
_0223E83C:
	ldrb r0, [r5, #0x10]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1c
	cmp r1, #0
	ble _0223E886
	mov r0, #1
	str r0, [sp, #0x1c]
	cmp r1, #0
	ble _0223E886
_0223E850:
	add r0, sp, #0x28
	str r0, [sp]
	add r0, sp, #0x24
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrh r0, [r6, #2]
	add r3, r5, r4
	str r0, [sp, #0xc]
	ldrb r1, [r5, #0x10]
	ldrb r3, [r3, #8]
	add r0, r7, #0
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	lsl r2, r1, #4
	ldr r1, _0223E8C8 ; =0x0223EC30
	sub r3, #0x48
	add r1, r1, r2
	ldrb r2, [r5, r4]
	sub r2, #0x20
	bl ov72_0223E660
	ldrb r0, [r5, #0x10]
	add r4, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r4, r0
	blt _0223E850
_0223E886:
	ldr r0, [sp, #0x20]
	add r5, #0x11
	add r0, r0, #1
	add r6, r6, #4
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _0223E822
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0223E8A6
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0223E8A6
	add r0, r7, #0
	bl sub_0201A954
_0223E8A6:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl ov72_0223E7D8
	mov r3, #0
	mov r1, #0xf0
_0223E8B2:
	ldr r0, [sp, #0x10]
	add r3, r3, #1
	ldrb r2, [r0, #0x10]
	bic r2, r1
	strb r2, [r0, #0x10]
	add r0, #0x11
	str r0, [sp, #0x10]
	cmp r3, #5
	blt _0223E8B2
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E8C8: .word 0x0223EC30
	thumb_func_end ov72_0223E80C

	thumb_func_start ov72_0223E8CC
ov72_0223E8CC: ; 0x0223E8CC
	bx lr
	; .align 2, 0
	thumb_func_end ov72_0223E8CC

	thumb_func_start ov72_0223E8D0
ov72_0223E8D0: ; 0x0223E8D0
	push {r3, lr}
	ldrh r1, [r0]
	add r1, #0x14
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r2, r1
	bls _0223E8E6
	mov r1, #0
	strh r1, [r0]
_0223E8E6:
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xa
	mul r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	add r0, #0xf
	lsl r1, r0, #5
	mov r0, #0x1d
	orr r1, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0
	mov r1, #0x18
	mov r2, #2
	bl GX_LoadOBJPltt
	pop {r3, pc}
	thumb_func_end ov72_0223E8D0

	thumb_func_start ov72_0223E910
ov72_0223E910: ; 0x0223E910
	bx lr
	; .align 2, 0
	thumb_func_end ov72_0223E910

	thumb_func_start ov72_0223E914
ov72_0223E914: ; 0x0223E914
	ldr r1, _0223E92C ; =0x0000431C
	add r3, r0, r1
	add r1, #0x11
	add r2, r0, r1
	mov r1, #0x11
_0223E91E:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0223E91E
	bx lr
	; .align 2, 0
_0223E92C: .word 0x0000431C
	thumb_func_end ov72_0223E914

	thumb_func_start ov72_0223E930
ov72_0223E930: ; 0x0223E930
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x50
	mov r1, #0x27
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0xb5
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0xb5
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	ldr r0, [r5, #0xc]
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r2, [r5, #0x34]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	str r0, [r5, #0x38]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov72_0223E930

	thumb_func_start ov72_0223E99C
ov72_0223E99C: ; 0x0223E99C
	push {r3, lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223E9AE
	mov r0, #1
	pop {r3, pc}
_0223E9AE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov72_0223E99C

	thumb_func_start ov72_0223E9B4
ov72_0223E9B4: ; 0x0223E9B4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	add r5, r0, #0
	str r1, [sp]
	add r4, r7, #0
	strb r7, [r5]
	add r6, r7, #0
_0223E9C2:
	ldr r0, [sp]
	ldrb r1, [r0, r6]
	mov r0, #0xf
	and r0, r1
	cmp r0, #1
	bne _0223E9D8
	mov r0, #1
	ldrb r1, [r5]
	lsl r0, r4
	orr r0, r1
	strb r0, [r5]
_0223E9D8:
	ldr r0, [sp]
	ldrb r0, [r0, r6]
	asr r0, r0, #4
	cmp r0, #1
	bne _0223E9EE
	ldrb r0, [r5]
	add r2, r4, #1
	mov r1, #1
	lsl r1, r2
	orr r0, r1
	strb r0, [r5]
_0223E9EE:
	add r4, r4, #2
	cmp r4, #8
	bne _0223E9FE
	mov r0, #0
	add r5, r5, #1
	add r7, r7, #1
	strb r0, [r5]
	add r4, r0, #0
_0223E9FE:
	mov r0, #6
	lsl r0, r0, #0xa
	cmp r7, r0
	blt _0223EA0A
	bl sub_02022974
_0223EA0A:
	mov r0, #6
	add r6, r6, #1
	lsl r0, r0, #0xa
	cmp r6, r0
	blt _0223E9C2
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov72_0223E9B4

	thumb_func_start ov72_0223EA18
ov72_0223EA18: ; 0x0223EA18
	push {r3, r4, r5, lr}
	ldr r1, _0223EAC4 ; =0x021BF6BC
	add r4, r0, #0
	ldrh r0, [r1, #0x1c]
	ldr r3, _0223EAC8 ; =0x0000FFFF
	cmp r0, r3
	beq _0223EAB2
	ldrh r1, [r1, #0x1e]
	cmp r1, r3
	beq _0223EAB2
	ldr r2, _0223EACC ; =0x00005CA8
	ldr r5, [r4, r2]
	cmp r5, r3
	beq _0223EAB2
	add r1, r2, #4
	ldr r1, [r4, r1]
	cmp r1, r3
	beq _0223EAB2
	cmp r5, r0
	ble _0223EA48
	mov r1, #0
	sub r3, r5, r0
	mvn r1, r1
	b _0223EA4C
_0223EA48:
	sub r3, r0, r5
	mov r1, #1
_0223EA4C:
	sub r0, r2, #6
	strb r1, [r4, r0]
	cmp r3, #3
	blt _0223EA82
	cmp r3, #0x28
	bgt _0223EA82
	ldr r0, _0223EAC4 ; =0x021BF6BC
	ldrh r2, [r0, #0x1e]
	ldr r0, _0223EAD0 ; =0x00005CAC
	ldr r1, [r4, r0]
	cmp r1, r2
	ble _0223EA6C
	sub r2, r1, r2
	mov r1, #0
	mvn r1, r1
	b _0223EA70
_0223EA6C:
	sub r2, r2, r1
	mov r1, #1
_0223EA70:
	sub r0, #9
	strb r1, [r4, r0]
	cmp r2, #0x28
	bgt _0223EAB2
	ldr r0, _0223EAD4 ; =0x00005CA0
	add r0, r4, r0
	bl ov72_0223EAD8
	b _0223EAB2
_0223EA82:
	cmp r3, #0x28
	bgt _0223EAB2
	ldr r0, _0223EAC4 ; =0x021BF6BC
	ldrh r2, [r0, #0x1e]
	ldr r0, _0223EAD0 ; =0x00005CAC
	ldr r1, [r4, r0]
	cmp r1, r2
	ble _0223EA9A
	sub r2, r1, r2
	mov r1, #0
	mvn r1, r1
	b _0223EA9E
_0223EA9A:
	sub r2, r2, r1
	mov r1, #1
_0223EA9E:
	sub r0, #9
	strb r1, [r4, r0]
	cmp r2, #3
	blt _0223EAB2
	cmp r2, #0x28
	bgt _0223EAB2
	ldr r0, _0223EAD4 ; =0x00005CA0
	add r0, r4, r0
	bl ov72_0223EAD8
_0223EAB2:
	ldr r1, _0223EAC4 ; =0x021BF6BC
	ldr r0, _0223EACC ; =0x00005CA8
	ldrh r2, [r1, #0x1c]
	str r2, [r4, r0]
	ldrh r1, [r1, #0x1e]
	add r0, r0, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0223EAC4: .word 0x021BF6BC
_0223EAC8: .word 0x0000FFFF
_0223EACC: .word 0x00005CA8
_0223EAD0: .word 0x00005CAC
_0223EAD4: .word 0x00005CA0
	thumb_func_end ov72_0223EA18

	thumb_func_start ov72_0223EAD8
ov72_0223EAD8: ; 0x0223EAD8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0223EAFC
	mov r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0223EAFC
	ldr r0, _0223EB38 ; =0x0000069A
	bl sub_020057D4
	cmp r0, #0
	bne _0223EAFC
	ldr r0, _0223EB38 ; =0x0000069A
	bl sub_02005748
_0223EAFC:
	mov r0, #0
	ldrsb r1, [r4, r0]
	mov r0, #2
	ldrsb r0, [r4, r0]
	mul r0, r1
	bmi _0223EB14
	mov r0, #1
	ldrsb r1, [r4, r0]
	mov r0, #3
	ldrsb r0, [r4, r0]
	mul r0, r1
	bpl _0223EB24
_0223EB14:
	ldr r0, _0223EB38 ; =0x0000069A
	bl sub_020057D4
	cmp r0, #0
	bne _0223EB24
	ldr r0, _0223EB38 ; =0x0000069A
	bl sub_02005748
_0223EB24:
	mov r0, #2
	ldrsb r0, [r4, r0]
	strb r0, [r4]
	mov r0, #3
	ldrsb r0, [r4, r0]
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	pop {r4, pc}
	; .align 2, 0
_0223EB38: .word 0x0000069A
	thumb_func_end ov72_0223EAD8

	.rodata


	.global Unk_ov72_0223EB3C
Unk_ov72_0223EB3C: ; 0x0223EB3C
	.incbin "incbin/overlay72_rodata.bin", 0x0, 0x6 - 0x0

	.global Unk_ov72_0223EB42
Unk_ov72_0223EB42: ; 0x0223EB42
	.incbin "incbin/overlay72_rodata.bin", 0x6, 0xE - 0x6

	.global Unk_ov72_0223EB4A
Unk_ov72_0223EB4A: ; 0x0223EB4A
	.incbin "incbin/overlay72_rodata.bin", 0xE, 0x20 - 0xE

	.global Unk_ov72_0223EB5C
Unk_ov72_0223EB5C: ; 0x0223EB5C
	.incbin "incbin/overlay72_rodata.bin", 0x20, 0x30 - 0x20

	.global Unk_ov72_0223EB6C
Unk_ov72_0223EB6C: ; 0x0223EB6C
	.incbin "incbin/overlay72_rodata.bin", 0x30, 0x40 - 0x30

	.global Unk_ov72_0223EB7C
Unk_ov72_0223EB7C: ; 0x0223EB7C
	.incbin "incbin/overlay72_rodata.bin", 0x40, 0x5C - 0x40

	.global Unk_ov72_0223EB98
Unk_ov72_0223EB98: ; 0x0223EB98
	.incbin "incbin/overlay72_rodata.bin", 0x5C, 0x78 - 0x5C

	.global Unk_ov72_0223EBB4
Unk_ov72_0223EBB4: ; 0x0223EBB4
	.incbin "incbin/overlay72_rodata.bin", 0x78, 0x94 - 0x78

	.global Unk_ov72_0223EBD0
Unk_ov72_0223EBD0: ; 0x0223EBD0
	.incbin "incbin/overlay72_rodata.bin", 0x94, 0xB0 - 0x94

	.global Unk_ov72_0223EBEC
Unk_ov72_0223EBEC: ; 0x0223EBEC
	.incbin "incbin/overlay72_rodata.bin", 0xB0, 0xCC - 0xB0

	.global Unk_ov72_0223EC08
Unk_ov72_0223EC08: ; 0x0223EC08
	.incbin "incbin/overlay72_rodata.bin", 0xCC, 0xF4 - 0xCC

	.global Unk_ov72_0223EC30
Unk_ov72_0223EC30: ; 0x0223EC30
	.incbin "incbin/overlay72_rodata.bin", 0xF4, 0x100


	.data


	.global Unk_ov72_0223ED40
Unk_ov72_0223ED40: ; 0x0223ED40
	.incbin "incbin/overlay72_data.bin", 0x0, 0x1C

