	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov7_0224B4E8
ov7_0224B4E8: ; 0x0224B4E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x54
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0224B522
	add r0, r5, #0
	add r0, #0x54
	bl sub_0201A7A0
	ldr r0, [r5, #0x10]
	add r1, r5, #0
	ldr r0, [r0, #8]
	add r1, #0x54
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x54
	bl sub_0205D944
	b _0224B52A
_0224B522:
	add r0, r5, #0
	add r0, #0x54
	bl sub_0205D988
_0224B52A:
	ldr r0, [r5, #0x68]
	ldr r2, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x14]
	bl sub_0200C388
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x18]
	add r0, #0x54
	mov r3, #1
	bl sub_0205D994
	str r0, [r5, #0x74]
	pop {r3, r4, r5, pc}
	thumb_func_end ov7_0224B4E8

	thumb_func_start ov7_0224B558
ov7_0224B558: ; 0x0224B558
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0224B570
	add r0, #0x54
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x54
	bl sub_0201ACF4
_0224B570:
	add r4, #0x54
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224B558

	thumb_func_start ov7_0224B57C
ov7_0224B57C: ; 0x0224B57C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	mov r3, #4
	bl sub_0202616C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x1c]
	add r3, r1, #0
	bl sub_0200B48C
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224B57C

	thumb_func_start ov7_0224B5A8
ov7_0224B5A8: ; 0x0224B5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r5, #0
	ldr r0, [r0, #0xc]
	mov r1, #0
	add r4, #0x34
	bl sub_0202610C
	mov r6, #5
	cmp r0, #0
	beq _0224B5C4
	add r6, r6, #1
_0224B5C4:
	add r0, r4, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0224B656
	add r0, r6, #2
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #8]
	mov r3, #1
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r6, #2
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224B6A4 ; =0x000003D9
	add r0, #0x34
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x68]
	mov r2, #0x7b
	mov r3, #0xc
	bl sub_02013A4C
	mov r4, #0
	cmp r6, #0
	ble _0224B648
	mov r7, #0x71
_0224B61C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224B57C
	ldr r0, [r5, #0x68]
	ldr r2, [r5, #0x1c]
	add r1, r7, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x1c]
	bl sub_0200C388
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x20]
	add r2, r4, #0
	bl sub_02013A6C
	add r4, r4, #1
	cmp r4, r6
	blt _0224B61C
_0224B648:
	mov r2, #0x72
	add r3, r2, #0
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x68]
	sub r3, #0x74
	bl sub_02013A4C
_0224B656:
	ldr r4, _0224B6A8 ; =0x0224F188
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r6, #2
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, [r5, #8]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x34
	str r0, [sp, #0x20]
	add r0, r2, #0
	add r2, r5, #0
	str r5, [sp, #0x30]
	add r2, #0x78
	ldrh r2, [r2]
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0]
	add r5, #0x34
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0224B6A4: .word 0x000003D9
_0224B6A8: .word 0x0224F188
	thumb_func_end ov7_0224B5A8

	thumb_func_start ov7_0224B6AC
ov7_0224B6AC: ; 0x0224B6AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224B6E6
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
	add r0, r4, #0
	add r0, #0x34
	mov r1, #1
	bl sub_0200DC9C
	add r1, r4, #0
	add r1, #0x38
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	bl sub_0201C3C0
	add r0, r4, #0
	add r0, #0x34
	bl sub_0201A8FC
	ldr r0, [r4, #8]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0]
_0224B6E6:
	pop {r4, pc}
	thumb_func_end ov7_0224B6AC

	thumb_func_start ov7_0224B6E8
ov7_0224B6E8: ; 0x0224B6E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02001288
	add r4, r0, #0
	add r2, r5, #0
	ldr r0, [r5, #0]
	mov r1, #0
	add r2, #0x78
	bl sub_020014DC
	add r0, r5, #0
	add r0, #0x80
	ldrh r6, [r0]
	add r1, r5, #0
	ldr r0, [r5, #0]
	add r1, #0x80
	bl sub_020014D0
	add r0, r5, #0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r6, r0
	beq _0224B720
	ldr r0, _0224B784 ; =0x000005DC
	bl sub_02005748
_0224B720:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224B750
	add r0, r0, #1
	cmp r4, r0
	beq _0224B734
	cmp r4, #0xc
	beq _0224B738
	b _0224B76A
_0224B734:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0224B738:
	ldr r0, _0224B784 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov7_0224B6AC
	mov r0, #2
	pop {r4, r5, r6, pc}
_0224B750:
	ldr r0, _0224B784 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov7_0224B6AC
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0224B76A:
	ldr r0, _0224B784 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	bl sub_02026150
	ldr r1, [r5, #0x10]
	add r1, #0xb0
	str r0, [r1, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224B784: .word 0x000005DC
	thumb_func_end ov7_0224B6E8

	thumb_func_start ov7_0224B788
ov7_0224B788: ; 0x0224B788
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #3
	mov r1, #4
	ldr r4, _0224B82C ; =0x0224F4D8
	bl sub_02013A04
	str r0, [r5, #0xc]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224B830 ; =0x00000201
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x10]
	add r1, #0x44
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x16
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224B834 ; =0x000003D9
	add r0, #0x44
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r6, #0
_0224B7CE:
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x68]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, #3
	blt _0224B7CE
	ldr r4, _0224B838 ; =0x0224F188
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #3
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x44
	str r0, [sp, #0x20]
	add r0, r2, #0
	add r2, r5, #0
	str r5, [sp, #0x30]
	add r2, #0x7a
	ldrh r2, [r2]
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #4]
	add r5, #0x44
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_0224B82C: .word 0x0224F4D8
_0224B830: .word 0x00000201
_0224B834: .word 0x000003D9
_0224B838: .word 0x0224F188
	thumb_func_end ov7_0224B788

	thumb_func_start ov7_0224B83C
ov7_0224B83C: ; 0x0224B83C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_02001288
	add r4, r0, #0
	add r2, r5, #0
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, #0x7a
	bl sub_020014DC
	add r0, r5, #0
	add r0, #0x82
	ldrh r6, [r0]
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0x82
	bl sub_020014D0
	add r0, r5, #0
	add r0, #0x82
	ldrh r0, [r0]
	cmp r6, r0
	beq _0224B874
	ldr r0, _0224B8D8 ; =0x000005DC
	bl sub_02005748
_0224B874:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224B886
	add r0, r0, #1
	cmp r4, r0
	bne _0224B892
	mov r0, #0
	pop {r4, r5, r6, pc}
_0224B886:
	ldr r0, _0224B8D8 ; =0x000005DC
	bl sub_02005748
	mov r4, #0
	mvn r4, r4
	b _0224B89E
_0224B892:
	ldr r0, _0224B8D8 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov7_0224B6AC
_0224B89E:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0224B8D4
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
	add r0, r5, #0
	add r0, #0x44
	mov r1, #1
	bl sub_0200DC9C
	add r1, r5, #0
	add r1, #0x48
	ldrb r1, [r1]
	ldr r0, [r5, #0x44]
	bl sub_0201C3C0
	add r0, r5, #0
	add r0, #0x44
	bl sub_0201A8FC
	ldr r0, [r5, #0xc]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r5, #4]
_0224B8D4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224B8D8: .word 0x000005DC
	thumb_func_end ov7_0224B83C

	thumb_func_start ov7_0224B8DC
ov7_0224B8DC: ; 0x0224B8DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r2, _0224BB80 ; =0x00000161
	str r0, [sp, #0x14]
	ldr r5, [r0, #0x64]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	str r0, [sp, #0x30]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [sp, #0x2c]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	mov r2, #3
	str r0, [sp, #0x24]
	add r0, #0x24
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x10]
	mov r3, #4
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	ldr r0, [sp, #0x24]
	ldr r2, _0224BB84 ; =0x000003D9
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r0, [sp, #0x24]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	add r1, r0, #0
	add r1, #0x78
	ldrh r1, [r1]
	sub r1, r1, #1
	bl ov7_0224B57C
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	mov r1, #0x5f
	bl sub_0200B1B8
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x28]
	mov r3, #0x39
	str r1, [sp, #8]
	bl sub_0201D738
	mov r6, #0
	mov r4, #0x10
	mov r7, #0xff
_0224B982:
	add r1, r6, #0
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	add r1, #0x4b
	bl sub_0200B1B8
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x2c]
	mov r1, #0
	mov r3, #2
	bl sub_0201D738
	add r6, r6, #1
	add r4, #0xf
	cmp r6, #9
	blt _0224B982
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _0224BB88 ; =0x0224F4CC
	ldr r7, _0224BB8C ; =0x0224F4C0
	str r0, [sp, #0x20]
	mov r0, #0x10
	str r0, [sp, #0x1c]
_0224B9B8:
	ldr r0, [sp, #0x14]
	ldrb r1, [r7]
	ldr r0, [r0, #0x10]
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_02026074
	add r2, r0, #0
	ldr r0, [sp, #0x20]
	ldrb r4, [r0]
	ldrb r0, [r7]
	cmp r0, #0xb
	bls _0224B9D4
	b _0224BB10
_0224B9D4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224B9E0: ; jump table
	.short _0224BB10 - _0224B9E0 - 2 ; case 0
	.short _0224B9F8 - _0224B9E0 - 2 ; case 1
	.short _0224BA0A - _0224B9E0 - 2 ; case 2
	.short _0224BA1E - _0224B9E0 - 2 ; case 3
	.short _0224BB0A - _0224B9E0 - 2 ; case 4
	.short _0224BA3A - _0224B9E0 - 2 ; case 5
	.short _0224BB10 - _0224B9E0 - 2 ; case 6
	.short _0224BAB8 - _0224B9E0 - 2 ; case 7
	.short _0224BB10 - _0224B9E0 - 2 ; case 8
	.short _0224BB0A - _0224B9E0 - 2 ; case 9
	.short _0224BB0A - _0224B9E0 - 2 ; case 10
	.short _0224BB0A - _0224B9E0 - 2 ; case 11
_0224B9F8:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #1
	bl sub_0200B60C
	b _0224BB10
_0224BA0A:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	b _0224BB10
_0224BA1E:
	cmp r2, #0
	bne _0224BA26
	mov r4, #0x60
	b _0224BB10
_0224BA26:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	b _0224BB10
_0224BA3A:
	cmp r2, #0
	ldr r0, _0224BB90 ; =0x00002710
	blt _0224BA54
	mul r0, r2
	mov r1, #0xfe
	bl sub_020E1F6C
	add r0, r0, #5
	mov r1, #0xa
	bl sub_020E1F6C
	add r6, r0, #0
	b _0224BA68
_0224BA54:
	neg r1, r2
	mul r0, r1
	mov r1, #0xfe
	bl sub_020E1F6C
	add r0, r0, #5
	mov r1, #0xa
	bl sub_020E1F6C
	neg r6, r0
_0224BA68:
	add r0, r6, #0
	mov r1, #0xc
	bl sub_020E1F6C
	bl sub_020D4070
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #2
	bl sub_0200B60C
	add r0, r6, #0
	mov r1, #0xc
	bl sub_020E1F6C
	add r0, r1, #0
	bl sub_020D4070
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r3, #2
	bl sub_0200B60C
	cmp r6, #0
	bne _0224BAB2
	mov r4, #0x60
	b _0224BB10
_0224BAB2:
	ble _0224BB10
	add r4, r4, #1
	b _0224BB10
_0224BAB8:
	cmp r2, #0
	ldr r0, _0224BB94 ; =0x00035D2E
	blt _0224BAD0
	add r1, r2, #0
	mul r1, r0
	ldr r0, _0224BB98 ; =0x0000C350
	add r0, r1, r0
	ldr r1, _0224BB9C ; =0x000186A0
	bl sub_020E1F6C
	add r6, r0, #0
	b _0224BAE2
_0224BAD0:
	neg r1, r2
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0224BB98 ; =0x0000C350
	ldr r1, _0224BB9C ; =0x000186A0
	add r0, r2, r0
	bl sub_020E1F6C
	neg r6, r0
_0224BAE2:
	add r0, r6, #0
	bl sub_020D4070
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	cmp r6, #0
	bne _0224BB04
	mov r4, #0x60
	b _0224BB10
_0224BB04:
	ble _0224BB10
	add r4, r4, #1
	b _0224BB10
_0224BB0A:
	cmp r2, #0
	bne _0224BB10
	add r4, r4, #1
_0224BB10:
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	bl sub_0200C388
	mov r0, #0
	ldr r1, [sp, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	mov r3, #0xbf
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x28]
	mov r1, #0
	sub r3, r3, r4
	bl sub_0201D738
	ldr r0, [sp, #0x20]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, #0xf
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #9
	bge _0224BB64
	b _0224B9B8
_0224BB64:
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x30]
	bl sub_0200B190
	ldr r0, [sp, #0x24]
	bl sub_0201A954
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BB80: .word 0x00000161
_0224BB84: .word 0x000003D9
_0224BB88: .word 0x0224F4CC
_0224BB8C: .word 0x0224F4C0
_0224BB90: .word 0x00002710
_0224BB94: .word 0x00035D2E
_0224BB98: .word 0x0000C350
_0224BB9C: .word 0x000186A0
	thumb_func_end ov7_0224B8DC

	thumb_func_start ov7_0224BBA0
ov7_0224BBA0: ; 0x0224BBA0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x24
	mov r1, #1
	bl sub_0200DC9C
	add r1, r4, #0
	add r1, #0x28
	ldrb r1, [r1]
	ldr r0, [r4, #0x24]
	bl sub_0201C3C0
	add r4, #0x24
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224BBA0

	thumb_func_start ov7_0224BBC4
ov7_0224BBC4: ; 0x0224BBC4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x6c]
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0207A594
	cmp r0, #0
	beq _0224BBEE
	cmp r0, #1
	beq _0224BC2E
	cmp r0, #4
	beq _0224BBF4
	b _0224BC2E
_0224BBEE:
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0224BBF4:
	ldr r0, _0224BC70 ; =0x000005F3
	bl sub_02005748
	add r1, r4, #0
	add r1, #0x78
	ldrh r1, [r1]
	add r0, r4, #0
	sub r1, r1, #1
	bl ov7_0224B57C
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_02026074
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	add r2, r0, #0
	ldr r0, [r4, #0x64]
	add r3, r1, #0
	bl sub_0200B60C
	add r0, r4, #0
	mov r1, #0x6b
	bl ov7_0224B4E8
	b _0224BC68
_0224BC2E:
	ldr r0, _0224BC70 ; =0x000005F3
	bl sub_02005748
	add r1, r4, #0
	add r1, #0x78
	ldrh r1, [r1]
	add r0, r4, #0
	sub r1, r1, #1
	bl ov7_0224B57C
	ldr r0, [r4, #0x10]
	mov r1, #3
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_02026074
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r4, #0x64]
	mov r3, #3
	bl sub_0200B60C
	add r0, r4, #0
	mov r1, #0x79
	bl ov7_0224B4E8
_0224BC68:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_0224BC70: .word 0x000005F3
	thumb_func_end ov7_0224BBC4

	thumb_func_start ov7_0224BC74
ov7_0224BC74: ; 0x0224BC74
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0x7c]
	cmp r1, #0xb
	bls _0224BC8C
	b _0224BE02
_0224BC8C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224BC98: ; jump table
	.short _0224BCB0 - _0224BC98 - 2 ; case 0
	.short _0224BCBE - _0224BC98 - 2 ; case 1
	.short _0224BCDC - _0224BC98 - 2 ; case 2
	.short _0224BD0E - _0224BC98 - 2 ; case 3
	.short _0224BD1A - _0224BC98 - 2 ; case 4
	.short _0224BD40 - _0224BC98 - 2 ; case 5
	.short _0224BD5A - _0224BC98 - 2 ; case 6
	.short _0224BD78 - _0224BC98 - 2 ; case 7
	.short _0224BD8C - _0224BC98 - 2 ; case 8
	.short _0224BDAE - _0224BC98 - 2 ; case 9
	.short _0224BE06 - _0224BC98 - 2 ; case 10
	.short _0224BDC2 - _0224BC98 - 2 ; case 11
_0224BCB0:
	mov r1, #0x6a
	bl ov7_0224B4E8
	ldr r0, [r4, #0x7c]
	add r0, r0, #1
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BCBE:
	ldr r0, [r4, #0x74]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	bne _0224BCCE
	b _0224BE06
_0224BCCE:
	add r0, r4, #0
	bl ov7_0224B5A8
	ldr r0, [r4, #0x7c]
	add r0, r0, #1
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BCDC:
	bl ov7_0224B6E8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0224BCF4
	ldr r0, [r4, #0x70]
	mov r1, #2
	strh r1, [r0]
	mov r0, #0xb
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BCF4:
	cmp r0, #2
	bne _0224BD04
	ldr r0, [r4, #0x70]
	mov r1, #3
	strh r1, [r0]
	mov r0, #0xb
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD04:
	cmp r0, #1
	bne _0224BE06
	mov r0, #3
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD0E:
	bl ov7_0224B788
	ldr r0, [r4, #0x7c]
	add r0, r0, #1
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD1A:
	bl ov7_0224B83C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0224BD2C
	mov r0, #2
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD2C:
	cmp r0, #1
	bne _0224BD36
	mov r0, #5
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD36:
	cmp r0, #2
	bne _0224BE06
	mov r0, #7
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD40:
	bl ov7_0224BBC4
	cmp r0, #0
	beq _0224BD54
	ldr r0, [r4, #0x70]
	mov r1, #1
	strh r1, [r0]
	mov r0, #0xb
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD54:
	mov r0, #6
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD5A:
	ldr r0, [r4, #0x74]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0224BE06
	ldr r0, _0224BE0C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224BE06
	mov r0, #0
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD78:
	mov r1, #1
	bl ov7_0224B558
	add r0, r4, #0
	bl ov7_0224B8DC
	ldr r0, [r4, #0x7c]
	add r0, r0, #1
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD8C:
	ldr r1, _0224BE0C ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _0224BE06
	bl ov7_0224BBA0
	add r0, r4, #0
	mov r1, #0x6a
	bl ov7_0224B4E8
	add r0, r4, #0
	bl ov7_0224B5A8
	mov r0, #9
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BDAE:
	ldr r0, [r4, #0x74]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0224BE06
	mov r0, #3
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BDC2:
	bl ov7_0224B6AC
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224B558
	ldr r0, [r4, #0x64]
	bl sub_0200B3F0
	ldr r0, [r4, #0x68]
	bl sub_0200B190
	ldr r0, [r4, #0x14]
	bl sub_020237BC
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	ldr r0, [r4, #0x1c]
	bl sub_020237BC
	ldr r0, [r4, #0x20]
	bl sub_020237BC
	ldr r0, [r4, #0x6c]
	bl sub_0207A2C0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0224BE02:
	mov r0, #1
	pop {r4, pc}
_0224BE06:
	mov r0, #0
	pop {r4, pc}
	nop
_0224BE0C: .word 0x021BF67C
	thumb_func_end ov7_0224BC74

	thumb_func_start ov7_0224BE10
ov7_0224BE10: ; 0x0224BE10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0x84
	bl sub_02018184
	mov r1, #0
	mov r2, #0x84
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0x7c]
	str r5, [r4, #0x10]
	add r5, #0xb0
	str r0, [r5, #0]
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x64]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xdd
	mov r3, #4
	bl sub_0200B144
	str r0, [r4, #0x68]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x14]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x18]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x1c]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x20]
	mov r0, #0xb
	bl sub_0207A2A8
	str r0, [r4, #0x6c]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov7_0224BE10

	thumb_func_start ov7_0224BE7C
ov7_0224BE7C: ; 0x0224BE7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02050A60
	bl ov7_0224BE10
	add r2, r0, #0
	ldr r1, _0224BE98 ; =ov7_0224BC74
	add r0, r5, #0
	str r4, [r2, #0x70]
	bl sub_02050944
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224BE98: .word ov7_0224BC74
	thumb_func_end ov7_0224BE7C

	.rodata


	.global Unk_ov7_0224F174
Unk_ov7_0224F174: ; 0x0224F174
	.incbin "incbin/overlay7_rodata.bin", 0x468, 0x46C - 0x468

	.global Unk_ov7_0224F178
Unk_ov7_0224F178: ; 0x0224F178
	.incbin "incbin/overlay7_rodata.bin", 0x46C, 0x470 - 0x46C

	.global Unk_ov7_0224F17C
Unk_ov7_0224F17C: ; 0x0224F17C
	.incbin "incbin/overlay7_rodata.bin", 0x470, 0x474 - 0x470

	.global Unk_ov7_0224F180
Unk_ov7_0224F180: ; 0x0224F180
	.incbin "incbin/overlay7_rodata.bin", 0x474, 0x478 - 0x474

	.global Unk_ov7_0224F184
Unk_ov7_0224F184: ; 0x0224F184
	.incbin "incbin/overlay7_rodata.bin", 0x478, 0x47C - 0x478

	.global Unk_ov7_0224F188
Unk_ov7_0224F188: ; 0x0224F188
	.incbin "incbin/overlay7_rodata.bin", 0x47C, 0x20


	.data


	.global Unk_ov7_0224F4C0
Unk_ov7_0224F4C0: ; 0x0224F4C0
	.incbin "incbin/overlay7_data.bin", 0x0, 0xC - 0x0

	.global Unk_ov7_0224F4CC
Unk_ov7_0224F4CC: ; 0x0224F4CC
	.incbin "incbin/overlay7_data.bin", 0xC, 0x18 - 0xC

	.global Unk_ov7_0224F4D8
Unk_ov7_0224F4D8: ; 0x0224F4D8
	.incbin "incbin/overlay7_data.bin", 0x18, 0x18

