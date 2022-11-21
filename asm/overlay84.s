	.include "macros/function.inc"


	.text

	thumb_func_start ov84_0223B5A0
ov84_0223B5A0: ; 0x0223B5A0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0223B758 ; =0xFFFFE0FF
	ldr r3, _0223B75C ; =0x04001000
	and r2, r1
	str r2, [r0, #0]
	ldr r2, [r3, #0]
	add r0, #0x50
	and r1, r2
	str r1, [r3, #0]
	mov r1, #0
	strh r1, [r0]
	add r3, #0x50
	strh r1, [r3]
	mov r1, #6
	mov r0, #3
	lsl r2, r1, #0xf
	bl sub_02017FC8
	ldr r1, _0223B760 ; =0x000004A4
	add r0, r5, #0
	mov r2, #6
	bl sub_0200681C
	ldr r2, _0223B760 ; =0x000004A4
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	bl sub_02006840
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov84_0223B9AC
	mov r0, #6
	bl sub_02018340
	str r0, [r4, #0]
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_02025F30
	ldr r1, _0223B764 ; =0x00000425
	mov r3, #0
	strb r0, [r4, r1]
	mov r1, #6
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #3
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #3
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	bl ov84_0223BEAC
	add r0, r4, #0
	bl ov84_0223BDB4
	add r0, r4, #0
	bl ov84_0223C158
	add r0, r4, #0
	bl ov84_0223BE24
	add r0, r4, #0
	bl ov84_0223C720
	bl ov84_0223BA3C
	ldr r0, [r4, #0]
	bl ov84_0223BA5C
	add r0, r4, #0
	bl ov84_0223BC1C
	add r0, r4, #0
	bl ov84_0223D0BC
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r4, #0
	bl ov84_0223F040
	mov r0, #1
	bl sub_02002B20
	add r0, r4, #0
	bl ov84_0223F1F8
	add r0, r4, #0
	bl ov84_0223F25C
	add r0, r4, #0
	bl ov84_0223F2FC
	add r0, r4, #0
	bl ov84_0223F438
	add r0, r4, #0
	bl ov84_0223FA88
	add r0, r4, #0
	bl ov84_0223F7D4
	add r0, r4, #0
	bl ov84_0223BFBC
	add r0, r4, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r0, r3, #0
	add r1, r3, #0
	add r0, #0xa
	add r1, #8
	add r0, r0, r2
	add r1, r1, r2
	add r2, r3, r2
	ldrb r2, [r2, #0xd]
	bl ov84_0223C194
	add r0, r4, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r0, r3, #0
	add r1, r3, #0
	add r0, #0xa
	add r1, #8
	add r0, r0, r2
	add r1, r1, r2
	add r2, r3, r2
	ldrb r2, [r2, #0xd]
	mov r3, #9
	bl ov84_0223C1D0
	add r0, r4, #0
	bl ov84_022403F4
	add r0, r4, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	ldrh r1, [r2, #0xa]
	ldrh r2, [r2, #8]
	add r0, r4, #0
	bl ov84_0223C224
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r0, #0x65
	ldrb r0, [r0]
	add r0, #0xfc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0223B73A
	add r0, r4, #0
	bl ov84_02240328
_0223B73A:
	ldr r0, _0223B768 ; =ov84_0223BA14
	add r1, r4, #0
	bl sub_02017798
	mov r1, #0
	mov r0, #0x33
	add r2, r1, #0
	bl sub_02004550
	bl sub_020397E4
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223B758: .word 0xFFFFE0FF
_0223B75C: .word 0x04001000
_0223B760: .word 0x000004A4
_0223B764: .word 0x00000425
_0223B768: .word ov84_0223BA14
	thumb_func_end ov84_0223B5A0

	thumb_func_start ov84_0223B76C
ov84_0223B76C: ; 0x0223B76C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0x18
	bhi _0223B7C2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223B788: ; jump table
	.short _0223B7BA - _0223B788 - 2 ; case 0
	.short _0223B7F2 - _0223B788 - 2 ; case 1
	.short _0223B7FA - _0223B788 - 2 ; case 2
	.short _0223B836 - _0223B788 - 2 ; case 3
	.short _0223B844 - _0223B788 - 2 ; case 4
	.short _0223B8E0 - _0223B788 - 2 ; case 5
	.short _0223B8E0 - _0223B788 - 2 ; case 6
	.short _0223B84C - _0223B788 - 2 ; case 7
	.short _0223B854 - _0223B788 - 2 ; case 8
	.short _0223B85C - _0223B788 - 2 ; case 9
	.short _0223B864 - _0223B788 - 2 ; case 10
	.short _0223B86C - _0223B788 - 2 ; case 11
	.short _0223B874 - _0223B788 - 2 ; case 12
	.short _0223B87C - _0223B788 - 2 ; case 13
	.short _0223B884 - _0223B788 - 2 ; case 14
	.short _0223B88C - _0223B788 - 2 ; case 15
	.short _0223B894 - _0223B788 - 2 ; case 16
	.short _0223B89C - _0223B788 - 2 ; case 17
	.short _0223B8A4 - _0223B788 - 2 ; case 18
	.short _0223B8AC - _0223B788 - 2 ; case 19
	.short _0223B8B4 - _0223B788 - 2 ; case 20
	.short _0223B8BC - _0223B788 - 2 ; case 21
	.short _0223B8C4 - _0223B788 - 2 ; case 22
	.short _0223B8CC - _0223B788 - 2 ; case 23
	.short _0223B8D4 - _0223B788 - 2 ; case 24
_0223B7BA:
	bl sub_0200F2AC
	cmp r0, #1
	beq _0223B7C4
_0223B7C2:
	b _0223B8E0
_0223B7C4:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #2
	bne _0223B7D8
	mov r0, #0x10
	str r0, [r4, #0]
	b _0223B8E0
_0223B7D8:
	cmp r0, #1
	bne _0223B7E2
	mov r0, #0xe
	str r0, [r4, #0]
	b _0223B8E0
_0223B7E2:
	cmp r0, #3
	bne _0223B7EC
	mov r0, #0x17
	str r0, [r4, #0]
	b _0223B8E0
_0223B7EC:
	mov r0, #1
	str r0, [r4, #0]
	b _0223B8E0
_0223B7F2:
	bl ov84_0223C51C
	str r0, [r4, #0]
	b _0223B8E0
_0223B7FA:
	bl ov84_0223D0FC
	add r0, r5, #0
	bl ov84_0223C920
	cmp r0, #1
	bne _0223B8E0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #2
	bne _0223B81C
	mov r0, #0x10
	str r0, [r4, #0]
	b _0223B8E0
_0223B81C:
	cmp r0, #1
	bne _0223B826
	mov r0, #0xe
	str r0, [r4, #0]
	b _0223B8E0
_0223B826:
	cmp r0, #3
	bne _0223B830
	mov r0, #0x17
	str r0, [r4, #0]
	b _0223B8E0
_0223B830:
	mov r0, #1
	str r0, [r4, #0]
	b _0223B8E0
_0223B836:
	bl ov84_0223D2F8
	cmp r0, #1
	bne _0223B8E0
	mov r0, #1
	str r0, [r4, #0]
	b _0223B8E0
_0223B844:
	bl ov84_0223D730
	str r0, [r4, #0]
	b _0223B8E0
_0223B84C:
	bl ov84_0223DF0C
	str r0, [r4, #0]
	b _0223B8E0
_0223B854:
	bl ov84_0223DFF8
	str r0, [r4, #0]
	b _0223B8E0
_0223B85C:
	bl ov84_0223E01C
	str r0, [r4, #0]
	b _0223B8E0
_0223B864:
	bl ov84_0223E158
	str r0, [r4, #0]
	b _0223B8E0
_0223B86C:
	bl ov84_0223E18C
	str r0, [r4, #0]
	b _0223B8E0
_0223B874:
	bl ov84_0223D8EC
	str r0, [r4, #0]
	b _0223B8E0
_0223B87C:
	bl ov84_0223DA04
	str r0, [r4, #0]
	b _0223B8E0
_0223B884:
	bl ov84_0223E27C
	str r0, [r4, #0]
	b _0223B8E0
_0223B88C:
	bl ov84_0223E36C
	str r0, [r4, #0]
	b _0223B8E0
_0223B894:
	bl ov84_0223E3BC
	str r0, [r4, #0]
	b _0223B8E0
_0223B89C:
	bl ov84_0223E588
	str r0, [r4, #0]
	b _0223B8E0
_0223B8A4:
	bl ov84_0223E5C4
	str r0, [r4, #0]
	b _0223B8E0
_0223B8AC:
	bl ov84_0223E7A8
	str r0, [r4, #0]
	b _0223B8E0
_0223B8B4:
	bl ov84_0223E7CC
	str r0, [r4, #0]
	b _0223B8E0
_0223B8BC:
	bl ov84_0223E920
	str r0, [r4, #0]
	b _0223B8E0
_0223B8C4:
	bl ov84_0223E9B0
	str r0, [r4, #0]
	b _0223B8E0
_0223B8CC:
	bl ov84_0223EA18
	str r0, [r4, #0]
	b _0223B8E0
_0223B8D4:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0223B8E0
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223B8E0:
	add r0, r5, #0
	bl ov84_0223D014
	add r0, r5, #0
	bl ov84_02240E5C
	add r0, r5, #0
	bl ov84_02240ABC
	add r5, #0xdc
	ldr r0, [r5, #0]
	bl sub_0200C7EC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov84_0223B76C

	thumb_func_start ov84_0223B900
ov84_0223B900: ; 0x0223B900
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl ov84_02240A88
	add r0, r4, #0
	bl ov84_0223C4E0
	add r0, r4, #0
	bl ov84_0223BF68
	add r0, r4, #4
	bl ov84_0223F1DC
	ldr r0, [r4, #0]
	bl ov84_0223BBC4
	bl sub_0201E530
	bl sub_0201DC3C
	add r0, r4, #0
	bl ov84_0223FB50
	add r0, r4, #0
	bl ov84_0223F238
	add r0, r4, #0
	bl ov84_0223F800
	add r0, r4, #0
	bl ov84_0223C178
	mov r0, #0xfe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200C560
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	add r4, #0xd4
	ldr r0, [r4, #0]
	bl sub_02006CA8
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #6
	bl sub_0201807C
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov84_0223B900

	thumb_func_start ov84_0223B9AC
ov84_0223B9AC: ; 0x0223B9AC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0207D990
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_02025E38
	add r1, r4, #0
	add r1, #0xcc
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_02025E44
	add r4, #0xd0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov84_0223B9AC

	thumb_func_start ov84_0223B9E4
ov84_0223B9E4: ; 0x0223B9E4
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r3, _0223B9F0 ; =sub_0202D834
	ldr r0, [r0, #0]
	bx r3
	nop
_0223B9F0: .word sub_0202D834
	thumb_func_end ov84_0223B9E4

	thumb_func_start ov84_0223B9F4
ov84_0223B9F4: ; 0x0223B9F4
	push {r4, lr}
	add r4, r1, #0
	bl ov84_0223B9E4
	bl sub_0202D9CC
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end ov84_0223B9F4

	thumb_func_start ov84_0223BA04
ov84_0223BA04: ; 0x0223BA04
	push {r4, lr}
	add r4, r1, #0
	bl ov84_0223B9E4
	add r1, r4, #0
	bl sub_0202D9EC
	pop {r4, pc}
	thumb_func_end ov84_0223BA04

	thumb_func_start ov84_0223BA14
ov84_0223BA14: ; 0x0223BA14
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r3, _0223BA34 ; =0x027E0000
	ldr r1, _0223BA38 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_0223BA34: .word 0x027E0000
_0223BA38: .word 0x00003FF8
	thumb_func_end ov84_0223BA14

	thumb_func_start ov84_0223BA3C
ov84_0223BA3C: ; 0x0223BA3C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223BA58 ; =0x0224100C
	add r3, sp, #0
	mov r2, #5
_0223BA46:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223BA46
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0223BA58: .word 0x0224100C
	thumb_func_end ov84_0223BA3C

	thumb_func_start ov84_0223BA5C
ov84_0223BA5C: ; 0x0223BA5C
	push {r4, r5, lr}
	sub sp, #0xd4
	ldr r5, _0223BBA4 ; =0x02240EC0
	add r3, sp, #0xc4
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223BBA8 ; =0x02240EE4
	add r3, sp, #0xa8
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
	ldr r5, _0223BBAC ; =0x02240F00
	add r3, sp, #0x8c
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
	ldr r5, _0223BBB0 ; =0x02240F38
	add r3, sp, #0x70
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
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _0223BBB4 ; =0x02240F8C
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _0223BBB8 ; =0x02240F1C
	add r3, sp, #0x38
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
	mov r1, #4
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _0223BBBC ; =0x02240F54
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _0223BBC0 ; =0x02240F70
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #7
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #1
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #7
	mov r2, #9
	mov r3, #0x80
	bl sub_0201C718
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xc
	mov r3, #0x50
	bl sub_0201C718
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #6
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #6
	bl sub_02019690
	add sp, #0xd4
	pop {r4, r5, pc}
	nop
_0223BBA4: .word 0x02240EC0
_0223BBA8: .word 0x02240EE4
_0223BBAC: .word 0x02240F00
_0223BBB0: .word 0x02240F38
_0223BBB4: .word 0x02240F8C
_0223BBB8: .word 0x02240F1C
_0223BBBC: .word 0x02240F54
_0223BBC0: .word 0x02240F70
	thumb_func_end ov84_0223BA5C

	thumb_func_start ov84_0223BBC4
ov84_0223BBC4: ; 0x0223BBC4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x1b
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #7
	bl sub_02019044
	add r0, r4, #0
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
	mov r0, #6
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov84_0223BBC4

	thumb_func_start ov84_0223BC1C
ov84_0223BC1C: ; 0x0223BC1C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0xd
	mov r1, #6
	bl sub_02006C24
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r2, [r4, #0]
	mov r1, #0xb
	mov r3, #1
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r2, [r4, #0]
	mov r1, #0xe
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r2, [r4, #0]
	mov r1, #0xd
	mov r3, #3
	bl sub_0200710C
	mov r2, #0
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	mov r1, #0xc
	add r3, r2, #0
	bl sub_02007130
	mov r0, #0x20
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xd4
	mov r3, #0x1a
	ldr r0, [r0, #0]
	mov r1, #0x16
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02007130
	mov r1, #0x16
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #6
	bl sub_02002E98
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _0223BDAC ; =0x000003F7
	mov r3, #0xe
	bl sub_0200DAA4
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _0223BDB0 ; =0x000003D9
	mov r1, #0
	mov r3, #0xc
	bl sub_0200DD0C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r2, [r4, #0]
	mov r1, #0xf
	mov r3, #5
	bl sub_020070E8
	mov r3, #0
	str r3, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	mov r1, #0x10
	mov r2, #4
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r2, [r4, #0]
	mov r1, #0x11
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r2, [r4, #0]
	mov r1, #0x20
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r2, [r4, #0]
	mov r1, #0x21
	mov r3, #7
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r2, [r4, #0]
	mov r1, #0x13
	mov r3, #4
	bl sub_020070E8
	mov r3, #0x40
	str r3, [sp]
	mov r0, #6
	add r4, #0xd4
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #0x12
	mov r2, #4
	bl sub_02007130
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223BDAC: .word 0x000003F7
_0223BDB0: .word 0x000003D9
	thumb_func_end ov84_0223BC1C

	thumb_func_start ov84_0223BDB4
ov84_0223BDB4: ; 0x0223BDB4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r2, #7
	mov r3, #6
	bl sub_0200B144
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #2
	mov r2, #0
	mov r3, #6
	bl sub_0200C440
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #6
	bl sub_0200B358
	mov r2, #0x46
	lsl r2, r2, #2
	str r0, [r4, r2]
	mov r0, #0
	mov r1, #0x1a
	add r2, #0x70
	mov r3, #6
	bl sub_0200B144
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, _0223BE20 ; =0x00000287
	mov r0, #0
	mov r1, #0x1a
	mov r3, #6
	bl sub_0200B144
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x20
	add r0, r1, #0
	mov r1, #6
	bl sub_02023790
	mov r1, #0xfe
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0223BE20: .word 0x00000287
	thumb_func_end ov84_0223BDB4

	thumb_func_start ov84_0223BE24
ov84_0223BE24: ; 0x0223BE24
	push {r4, r5}
	ldr r2, _0223BE58 ; =0x00000424
	mov r1, #0
	strb r1, [r0, r2]
	add r4, r2, #0
	mov r3, #0xc
_0223BE30:
	add r2, r0, #0
	add r2, #0xc4
	ldr r5, [r2, #0]
	add r2, r1, #0
	mul r2, r3
	add r2, r5, r2
	ldr r2, [r2, #4]
	cmp r2, #0
	beq _0223BE48
	ldrb r2, [r0, r4]
	add r2, r2, #1
	strb r2, [r0, r4]
_0223BE48:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #8
	blo _0223BE30
	pop {r4, r5}
	bx lr
	nop
_0223BE58: .word 0x00000424
	thumb_func_end ov84_0223BE24

	thumb_func_start ov84_0223BE5C
ov84_0223BE5C: ; 0x0223BE5C
	push {r3, r4}
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r4, r0, #4
	add r0, #0x64
	ldrb r3, [r0]
	mov r0, #0xc
	mul r0, r3
	cmp r2, #0
	ldr r2, [r4, r0]
	bne _0223BE7A
	lsl r0, r1, #2
	ldrh r0, [r2, r0]
	pop {r3, r4}
	bx lr
_0223BE7A:
	lsl r0, r1, #2
	add r0, r2, r0
	ldrh r0, [r0, #2]
	pop {r3, r4}
	bx lr
	thumb_func_end ov84_0223BE5C

	thumb_func_start ov84_0223BE84
ov84_0223BE84: ; 0x0223BE84
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0223BE90 ; =sub_0200B1B8
	bx r3
	nop
_0223BE90: .word sub_0200B1B8
	thumb_func_end ov84_0223BE84

	thumb_func_start ov84_0223BE94
ov84_0223BE94: ; 0x0223BE94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	bl sub_0207D268
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0200B1B8
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223BE94

	thumb_func_start ov84_0223BEAC
ov84_0223BEAC: ; 0x0223BEAC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r5, #0
	add r0, #0x64
	strb r5, [r0]
	add r0, r7, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r6, r0, #4
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	bne _0223BEEA
	mov r3, #1
	add r2, r5, #0
	mov r1, #0xc
_0223BECE:
	add r0, r5, #0
	mul r0, r1
	add r4, r6, r0
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223BF64
	add r0, r5, #1
	lsl r0, r0, #0x10
	strh r3, [r4, #4]
	lsr r5, r0, #0x10
	strh r2, [r4, #6]
	cmp r5, #8
	blo _0223BECE
	pop {r3, r4, r5, r6, r7, pc}
_0223BEEA:
	mov r0, #0xc
	mul r0, r5
	add r4, r6, r0
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223BF2E
	add r0, r7, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldrb r1, [r4, #8]
	add r2, sp, #0
	ldr r0, [r0, #0x6c]
	add r2, #1
	add r3, sp, #0
	bl sub_0207D9B4
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0223BF18
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #1]
_0223BF18:
	add r0, sp, #0
	ldrb r0, [r0, #1]
	strh r0, [r4, #4]
	add r0, sp, #0
	ldrb r0, [r0]
	strh r0, [r4, #6]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _0223BEEA
_0223BF2E:
	add r0, r7, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x6c]
	bl sub_0207D9C4
	mov r1, #0
	mov r3, #0xc
_0223BF3E:
	add r2, r1, #0
	mul r2, r3
	add r4, r6, r2
	ldr r2, [r6, r2]
	cmp r2, #0
	beq _0223BF64
	ldrb r2, [r4, #8]
	cmp r0, r2
	bne _0223BF5A
	add r2, r7, #0
	add r2, #0xc4
	ldr r2, [r2, #0]
	add r2, #0x64
	strb r1, [r2]
_0223BF5A:
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #8
	blo _0223BF3E
_0223BF64:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov84_0223BEAC

	thumb_func_start ov84_0223BF68
ov84_0223BF68: ; 0x0223BF68
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x6c]
	cmp r0, #0
	beq _0223BFBA
	add r7, r1, #4
	mov r4, #0
	add r5, r7, #0
_0223BF7C:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223BFA4
	add r0, r6, #0
	add r0, #0xc4
	ldrh r2, [r5, #4]
	ldrh r3, [r5, #6]
	ldr r0, [r0, #0]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldrb r1, [r5, #8]
	ldr r0, [r0, #0x6c]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207D9C8
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #8
	blo _0223BF7C
_0223BFA4:
	add r6, #0xc4
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x6c]
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r1, r7, r1
	ldrb r1, [r1, #8]
	bl sub_0207D9D4
_0223BFBA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov84_0223BF68

	thumb_func_start ov84_0223BFBC
ov84_0223BFBC: ; 0x0223BFBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r4, r2, r0
	ldrb r1, [r4, #8]
	ldr r0, _0223C154 ; =0x02241118
	ldrb r0, [r0, r1]
	mov r1, #6
	add r0, r0, #3
	bl sub_02013A04
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	sub r1, #0x4c
	mov r2, #0x20
	add r3, r2, #0
	ldr r1, [r5, r1]
	sub r3, #0x23
	bl sub_02013A4C
	ldrb r3, [r4, #8]
	cmp r3, #3
	bne _0223C086
	ldr r0, _0223C154 ; =0x02241118
	mov r6, #0
	ldrb r0, [r0, r3]
	cmp r0, #0
	bls _0223C056
	str r6, [sp]
	add r7, r5, #0
_0223C00A:
	ldr r0, [r4, #0]
	ldr r2, [sp]
	ldr r1, [sp]
	ldrh r2, [r0, r2]
	add r1, r0, r1
	cmp r2, #0
	beq _0223C056
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _0223C056
	mov r0, #0x12
	mov r1, #0x59
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r7, r1]
	mov r3, #6
	bl ov84_0223BE94
	mov r0, #0x16
	mov r1, #0x59
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r7, r1]
	add r2, r6, #0
	bl sub_02013A6C
	ldr r0, [sp]
	ldrb r1, [r4, #8]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, _0223C154 ; =0x02241118
	add r6, r6, #1
	ldrb r0, [r0, r1]
	add r7, r7, #4
	cmp r6, r0
	blo _0223C00A
_0223C056:
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	sub r1, #0x4c
	mov r2, #0x20
	add r3, r2, #0
	ldr r1, [r5, r1]
	sub r3, #0x22
	bl sub_02013A4C
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	sub r1, #0x4c
	mov r2, #0x20
	add r3, r2, #0
	ldr r1, [r5, r1]
	sub r3, #0x23
	bl sub_02013A4C
	add r0, r6, #3
	add sp, #8
	strb r0, [r4, #9]
	pop {r3, r4, r5, r6, r7, pc}
_0223C086:
	ldr r0, _0223C154 ; =0x02241118
	mov r6, #0
	ldrb r0, [r0, r3]
	cmp r0, #0
	bls _0223C0E0
	str r6, [sp, #4]
	add r7, r5, #0
_0223C094:
	ldr r2, [r4, #0]
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r2, r0
	ldrh r2, [r2, r1]
	cmp r2, #0
	beq _0223C0E0
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0223C0E0
	mov r0, #0x47
	mov r1, #0x59
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r7, r1]
	mov r3, #6
	bl ov84_0223BE84
	mov r0, #0x16
	mov r1, #0x59
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r7, r1]
	add r2, r6, #0
	bl sub_02013A6C
	ldr r0, [sp, #4]
	ldrb r3, [r4, #8]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, _0223C154 ; =0x02241118
	add r6, r6, #1
	ldrb r0, [r0, r3]
	add r7, r7, #4
	cmp r6, r0
	blo _0223C094
_0223C0E0:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #5
	beq _0223C138
	cmp r3, #4
	bne _0223C108
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	sub r1, #0x4c
	mov r2, #0x20
	add r3, r2, #0
	ldr r1, [r5, r1]
	sub r3, #0x22
	bl sub_02013A4C
	b _0223C11C
_0223C108:
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	sub r1, #0x4c
	mov r2, #0x29
	add r3, r2, #0
	ldr r1, [r5, r1]
	sub r3, #0x2b
	bl sub_02013A4C
_0223C11C:
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	sub r1, #0x4c
	mov r2, #0x20
	add r3, r2, #0
	ldr r1, [r5, r1]
	sub r3, #0x23
	bl sub_02013A4C
	add r0, r6, #3
	add sp, #8
	strb r0, [r4, #9]
	pop {r3, r4, r5, r6, r7, pc}
_0223C138:
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	sub r1, #0x4c
	mov r2, #0x20
	add r3, r2, #0
	ldr r1, [r5, r1]
	sub r3, #0x23
	bl sub_02013A4C
	add r0, r6, #2
	strb r0, [r4, #9]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C154: .word 0x02241118
	thumb_func_end ov84_0223BFBC

	thumb_func_start ov84_0223C158
ov84_0223C158: ; 0x0223C158
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x59
	add r5, r0, #0
	mov r4, #0
	mov r7, #0x12
	lsl r6, r6, #2
_0223C164:
	add r0, r7, #0
	mov r1, #6
	bl sub_02023790
	str r0, [r5, r6]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xa5
	blo _0223C164
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov84_0223C158

	thumb_func_start ov84_0223C178
ov84_0223C178: ; 0x0223C178
	push {r4, r5, r6, lr}
	mov r6, #0x59
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0223C182:
	ldr r0, [r5, r6]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xa5
	blo _0223C182
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov84_0223C178

	thumb_func_start ov84_0223C194
ov84_0223C194: ; 0x0223C194
	push {r4, r5}
	sub r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #8
	bls _0223C1A4
	mov r5, #7
	b _0223C1AA
_0223C1A4:
	sub r3, r2, #1
	lsl r3, r3, #0x18
	lsr r5, r3, #0x18
_0223C1AA:
	ldrh r3, [r0]
	cmp r3, #0
	beq _0223C1BC
	sub r4, r2, #1
	add r3, r3, r5
	cmp r3, r4
	ble _0223C1BC
	sub r3, r4, r5
	strh r3, [r0]
_0223C1BC:
	ldrh r3, [r0]
	ldrh r0, [r1]
	sub r2, r2, #1
	add r0, r3, r0
	cmp r0, r2
	blt _0223C1CC
	sub r0, r2, r3
	strh r0, [r1]
_0223C1CC:
	pop {r4, r5}
	bx lr
	thumb_func_end ov84_0223C194

	thumb_func_start ov84_0223C1D0
ov84_0223C1D0: ; 0x0223C1D0
	push {r3, r4, r5, r6}
	sub r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #8
	bls _0223C1E0
	mov r5, #7
	b _0223C1E6
_0223C1E0:
	sub r4, r2, #1
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
_0223C1E6:
	ldrh r6, [r1]
	asr r4, r3, #1
	add r3, r4, #2
	cmp r6, r3
	blt _0223C21E
	sub r6, r6, r4
	mov r3, #0
	sub r6, r6, #2
	bmi _0223C21E
	sub r2, r2, #1
_0223C1FA:
	ldrh r6, [r0]
	add r6, r6, r5
	cmp r2, r6
	beq _0223C21E
	ldrh r6, [r1]
	add r3, r3, #1
	lsl r3, r3, #0x18
	sub r6, r6, #1
	strh r6, [r1]
	ldrh r6, [r0]
	lsr r3, r3, #0x18
	add r6, r6, #1
	strh r6, [r0]
	ldrh r6, [r1]
	sub r6, r6, r4
	sub r6, r6, #2
	cmp r3, r6
	ble _0223C1FA
_0223C21E:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov84_0223C1D0

	thumb_func_start ov84_0223C224
ov84_0223C224: ; 0x0223C224
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r6, _0223C2A8 ; =0x02240FA8
	add r5, sp, #0
	add r4, r0, #0
	add r3, r1, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	str r0, [sp]
	add r0, r4, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x64
	ldrb r5, [r0]
	mov r0, #0xc
	add r6, r5, #0
	mul r6, r0
	add r1, r1, r6
	ldrb r5, [r1, #0xd]
	add r1, sp, #0
	strh r5, [r1, #0x10]
	add r5, r4, #0
	str r4, [sp, #0x1c]
	add r5, #0xc4
	ldr r5, [r5, #0]
	add r6, r5, #0
	add r6, #0x64
	ldrb r6, [r6]
	mul r0, r6
	add r0, r5, r0
	ldrb r0, [r0, #0xc]
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0223C288
	mov r0, #0x23
	b _0223C28A
_0223C288:
	mov r0, #0
_0223C28A:
	strb r0, [r1, #0x15]
	add r1, r3, #0
	add r0, sp, #0
	mov r3, #6
	bl sub_0200112C
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #4
	bl sub_0201A9A4
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_0223C2A8: .word 0x02240FA8
	thumb_func_end ov84_0223C224

	thumb_func_start ov84_0223C2AC
ov84_0223C2AC: ; 0x0223C2AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x13
	add r4, r2, #0
	bl sub_02001504
	add r5, r0, #0
	cmp r4, #1
	beq _0223C334
	ldr r0, _0223C39C ; =0x00000482
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0223C2CC
	cmp r0, #1
	beq _0223C2D4
	b _0223C2DC
_0223C2CC:
	ldr r0, _0223C3A0 ; =0x000006CC
	bl sub_02005748
	b _0223C2E2
_0223C2D4:
	ldr r0, _0223C3A4 ; =0x000006CD
	bl sub_02005748
	b _0223C2E2
_0223C2DC:
	ldr r0, _0223C3A8 ; =0x000006CE
	bl sub_02005748
_0223C2E2:
	ldr r0, _0223C39C ; =0x00000482
	mov r1, #3
	ldrb r0, [r5, r0]
	add r0, r0, #1
	bl sub_020E1F6C
	ldr r0, _0223C39C ; =0x00000482
	strb r1, [r5, r0]
	add r0, #0x10
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0223C308
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_0200D3B8
	cmp r0, #0
	bne _0223C334
_0223C308:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3CC
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r2, r1, #0
	add r2, #0x64
	ldrb r3, [r2]
	mov r2, #0xc
	add r0, #0xe0
	mul r2, r3
	add r1, r1, r2
	ldrb r1, [r1, #0xc]
	ldr r0, [r0, #0]
	add r1, #8
	bl sub_0200D364
_0223C334:
	ldr r0, _0223C3AC ; =0x0000047A
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _0223C398
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #1
	mvn r1, r1
	cmp r7, r1
	beq _0223C378
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	lsl r7, r7, #2
	add r4, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r6, r1, #0
	mul r6, r0
	ldr r1, [r4, r6]
	add r0, r5, #0
	ldrh r1, [r1, r7]
	bl ov84_0223F528
	ldr r1, [r4, r6]
	add r0, r5, #0
	ldrh r1, [r1, r7]
	bl ov84_02240AD8
	b _0223C388
_0223C378:
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ov84_0223F528
	ldr r1, _0223C3B0 ; =0x0000FFFF
	add r0, r5, #0
	bl ov84_02240AD8
_0223C388:
	ldr r0, _0223C3B4 ; =0x00000479
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0223C398
	add r5, #0x14
	add r0, r5, #0
	bl sub_0201A9A4
_0223C398:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C39C: .word 0x00000482
_0223C3A0: .word 0x000006CC
_0223C3A4: .word 0x000006CD
_0223C3A8: .word 0x000006CE
_0223C3AC: .word 0x0000047A
_0223C3B0: .word 0x0000FFFF
_0223C3B4: .word 0x00000479
	thumb_func_end ov84_0223C2AC

	thumb_func_start ov84_0223C3B8
ov84_0223C3B8: ; 0x0223C3B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x13
	str r0, [sp]
	add r7, r2, #0
	bl sub_02001504
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r6, r2, r0
	ldr r0, _0223C4D4 ; =0x0000047A
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0223C3F6
	add r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, r5
	bne _0223C3F6
	ldr r0, [sp]
	mov r1, #8
	mov r2, #0
	mov r3, #9
	bl sub_0200147C
	b _0223C402
_0223C3F6:
	ldr r0, [sp]
	mov r1, #1
	mov r2, #0
	mov r3, #2
	bl sub_0200147C
_0223C402:
	ldrb r0, [r6, #8]
	cmp r0, #7
	bne _0223C434
	mov r0, #2
	mvn r0, r0
	cmp r5, r0
	beq _0223C4D0
	add r0, r0, #1
	cmp r5, r0
	beq _0223C4D0
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_0207D3FC
	ldr r2, [r6, #0]
	lsl r1, r5, #2
	ldrh r1, [r2, r1]
	cmp r1, r0
	bne _0223C4D0
	add r0, r4, #0
	add r1, r7, #0
	bl ov84_0223FA44
	pop {r3, r4, r5, r6, r7, pc}
_0223C434:
	cmp r0, #3
	bne _0223C460
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _0223C44A
	add r0, r4, #0
	add r1, r7, #0
	bl ov84_0223F9F0
	pop {r3, r4, r5, r6, r7, pc}
_0223C44A:
	sub r0, r0, #1
	cmp r5, r0
	beq _0223C4D0
	ldr r2, [r6, #0]
	lsl r1, r5, #2
	add r1, r2, r1
	add r0, r4, #0
	add r2, r7, #0
	bl ov84_0223F8D0
	pop {r3, r4, r5, r6, r7, pc}
_0223C460:
	cmp r0, #4
	bne _0223C48C
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _0223C476
	add r0, r4, #0
	add r1, r7, #0
	bl ov84_0223F9F0
	pop {r3, r4, r5, r6, r7, pc}
_0223C476:
	sub r0, r0, #1
	cmp r5, r0
	beq _0223C4D0
	ldr r2, [r6, #0]
	lsl r1, r5, #2
	add r1, r2, r1
	add r0, r4, #0
	add r2, r7, #0
	bl ov84_0223F94C
	pop {r3, r4, r5, r6, r7, pc}
_0223C48C:
	mov r0, #2
	mvn r0, r0
	cmp r5, r0
	beq _0223C4D0
	add r0, r0, #1
	cmp r5, r0
	beq _0223C4D0
	ldr r0, _0223C4D4 ; =0x0000047A
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0223C4BE
	add r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, r5
	bne _0223C4BE
	ldr r2, [r6, #0]
	lsl r1, r5, #2
	add r1, r2, r1
	ldrh r1, [r1, #2]
	ldr r3, _0223C4D8 ; =0x00080900
	add r0, r4, #0
	add r2, r7, #0
	bl ov84_0223F81C
	pop {r3, r4, r5, r6, r7, pc}
_0223C4BE:
	ldr r2, [r6, #0]
	lsl r1, r5, #2
	add r1, r2, r1
	ldrh r1, [r1, #2]
	ldr r3, _0223C4DC ; =0x00010200
	add r0, r4, #0
	add r2, r7, #0
	bl ov84_0223F81C
_0223C4D0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C4D4: .word 0x0000047A
_0223C4D8: .word 0x00080900
_0223C4DC: .word 0x00010200
	thumb_func_end ov84_0223C3B8

	thumb_func_start ov84_0223C4E0
ov84_0223C4E0: ; 0x0223C4E0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	add r1, r3, #0
	mul r2, r0
	mov r0, #0x57
	lsl r0, r0, #2
	add r1, #0xa
	ldr r0, [r4, r0]
	add r3, #8
	add r1, r1, r2
	add r2, r3, r2
	bl sub_02001384
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x57
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov84_0223C4E0

	thumb_func_start ov84_0223C51C
ov84_0223C51C: ; 0x0223C51C
	push {r4, lr}
	add r4, r0, #0
	bl ov84_0223D0FC
	add r0, r4, #0
	bl ov84_0223ED14
	cmp r0, #1
	bne _0223C532
	mov r0, #1
	pop {r4, pc}
_0223C532:
	add r0, r4, #0
	bl ov84_0223C750
	cmp r0, #1
	bne _0223C540
	mov r0, #2
	pop {r4, pc}
_0223C540:
	add r0, r4, #0
	bl ov84_0223CD40
	cmp r0, #1
	bne _0223C54E
	mov r0, #2
	pop {r4, pc}
_0223C54E:
	add r0, r4, #0
	bl ov84_0223C5B8
	cmp r0, #1
	bne _0223C59C
	add r0, r4, #0
	mov r1, #2
	bl ov84_02240B34
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201ACF4
	add r0, r4, #0
	bl ov84_0223D5AC
	add r0, r4, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	bne _0223C598
	add r0, r4, #0
	mov r1, #1
	bl ov84_0223D7E8
_0223C598:
	mov r0, #4
	pop {r4, pc}
_0223C59C:
	cmp r0, #2
	bne _0223C5AA
	add r0, r4, #0
	bl ov84_0223D2A0
	mov r0, #3
	pop {r4, pc}
_0223C5AA:
	cmp r0, #3
	bne _0223C5B2
	mov r0, #0x18
	pop {r4, pc}
_0223C5B2:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov84_0223C51C

	thumb_func_start ov84_0223C5B8
ov84_0223C5B8: ; 0x0223C5B8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r4, r2, r0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #6
	add r2, r4, #4
	bl sub_020014DC
	ldr r0, _0223C714 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #4
	tst r0, r1
	beq _0223C5FC
	add r0, r5, #0
	bl ov84_0223D244
	cmp r0, #1
	bne _0223C5FC
	ldr r0, _0223C718 ; =0x000005DC
	bl sub_02005748
	add sp, #4
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_0223C5FC:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001288
	add r6, r0, #0
	mov r0, #0x57
	lsl r0, r0, #2
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r0, sp, #0
	ldrh r2, [r0]
	ldrh r0, [r4, #4]
	cmp r0, r2
	beq _0223C638
	sub r2, r2, #1
	add r0, r5, #0
	lsl r2, r2, #4
	add r0, #0xf0
	add r2, #0x18
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #0xb1
	asr r2, r2, #0x10
	bl sub_0200D4C4
_0223C638:
	add r0, sp, #0
	ldrh r1, [r0, #2]
	strh r1, [r4, #6]
	ldrh r0, [r0]
	strh r0, [r4, #4]
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0223C674
	add r0, r5, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223C674
	add r1, sp, #0
	ldrh r2, [r1, #2]
	ldrh r1, [r1]
	mov r0, #0x57
	lsl r0, r0, #2
	add r1, r2, r1
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_020014F8
	add r6, r0, #0
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #4
	strb r1, [r5, r0]
_0223C674:
	mov r0, #1
	mvn r0, r0
	cmp r6, r0
	beq _0223C6AA
	add r0, r0, #1
	cmp r6, r0
	bne _0223C6E8
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020014F0
	cmp r0, #1
	bne _0223C69A
	add r0, r5, #0
	mov r1, #0x24
	bl ov84_0223EB08
	b _0223C70E
_0223C69A:
	cmp r0, #2
	bne _0223C70E
	mov r1, #0x23
	add r0, r5, #0
	mvn r1, r1
	bl ov84_0223EB08
	b _0223C70E
_0223C6AA:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #5
	bne _0223C6BE
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223C6BE:
	ldr r0, _0223C718 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #0
	add r0, #0x66
	strh r1, [r0]
	add r5, #0xc4
	ldr r0, [r5, #0]
	mov r1, #5
	add r0, #0x68
	strh r1, [r0]
	mov r0, #1
	mov r1, #6
	bl sub_0208C120
	add sp, #4
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_0223C6E8:
	ldr r0, _0223C718 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0]
	lsl r2, r6, #2
	ldrh r1, [r0, r2]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add sp, #4
	add r0, #0x66
	strh r1, [r0]
	ldr r0, [r4, #0]
	add r0, r0, r2
	ldrh r1, [r0, #2]
	ldr r0, _0223C71C ; =0x0000048A
	strh r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223C70E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223C714: .word 0x021BF67C
_0223C718: .word 0x000005DC
_0223C71C: .word 0x0000048A
	thumb_func_end ov84_0223C5B8

	thumb_func_start ov84_0223C720
ov84_0223C720: ; 0x0223C720
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C748 ; =0x00000424
	ldrb r2, [r4, r0]
	mov r0, #0xa
	add r1, r2, #0
	mul r1, r0
	mov r0, #0x5a
	sub r0, r0, r1
	add r1, r2, #1
	bl sub_020E1F6C
	add r1, r0, #6
	ldr r0, _0223C74C ; =0x00000427
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	add r0, r0, #1
	add r1, r1, #4
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0223C748: .word 0x00000424
_0223C74C: .word 0x00000427
	thumb_func_end ov84_0223C720

	thumb_func_start ov84_0223C750
ov84_0223C750: ; 0x0223C750
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C834 ; =0x021BF67C
	ldr r1, [r0, #0x4c]
	mov r0, #0x20
	tst r0, r1
	beq _0223C7C4
	ldr r0, _0223C838 ; =0x00000424
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223C76A
	mov r0, #0
	pop {r4, pc}
_0223C76A:
	ldr r0, _0223C83C ; =0x000006CA
	bl sub_02005748
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223C794
	ldr r1, _0223C840 ; =0x00000429
	sub r0, r0, #1
	strb r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, #0x4f
	add r0, #0x64
	ldrb r0, [r0]
	sub r0, r0, #1
	b _0223C7A4
_0223C794:
	ldr r1, _0223C838 ; =0x00000424
	ldrb r0, [r4, r1]
	sub r2, r0, #1
	add r0, r1, #5
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	add r1, #0x54
	sub r0, r0, #1
_0223C7A4:
	strb r0, [r4, r1]
	add r0, r4, #0
	bl ov84_02240B68
	ldr r0, _0223C844 ; =0x0000042A
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov84_0223C848
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_0201C3C0
	mov r0, #1
	pop {r4, pc}
_0223C7C4:
	mov r0, #0x10
	tst r0, r1
	beq _0223C82E
	ldr r0, _0223C838 ; =0x00000424
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223C7D6
	mov r0, #0
	pop {r4, pc}
_0223C7D6:
	ldr r0, _0223C83C ; =0x000006CA
	bl sub_02005748
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r1, _0223C838 ; =0x00000424
	add r0, #0x64
	ldrb r0, [r0]
	add r2, r0, #1
	ldrb r0, [r4, r1]
	cmp r2, r0
	bge _0223C806
	add r0, r1, #5
	strb r2, [r4, r0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, #0x54
	add r0, #0x64
	ldrb r0, [r0]
	add r0, r0, #1
	strb r0, [r4, r1]
	b _0223C810
_0223C806:
	add r0, r1, #5
	mov r2, #0
	strb r2, [r4, r0]
	add r1, #0x54
	strb r2, [r4, r1]
_0223C810:
	add r0, r4, #0
	bl ov84_02240B68
	ldr r0, _0223C844 ; =0x0000042A
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov84_0223C848
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_0201C3C0
	mov r0, #1
	pop {r4, pc}
_0223C82E:
	mov r0, #0
	pop {r4, pc}
	nop
_0223C834: .word 0x021BF67C
_0223C838: .word 0x00000424
_0223C83C: .word 0x000006CA
_0223C840: .word 0x00000429
_0223C844: .word 0x0000042A
	thumb_func_end ov84_0223C750

	thumb_func_start ov84_0223C848
ov84_0223C848: ; 0x0223C848
	push {r4, lr}
	add r4, r0, #0
	bl ov84_0223C89C
	ldr r0, _0223C864 ; =0x0000042D
	mov r1, #3
	strb r1, [r4, r0]
	add r1, r0, #3
	ldrb r2, [r4, r1]
	mov r1, #0x80
	add r0, r0, #3
	bic r2, r1
	strb r2, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0223C864: .word 0x0000042D
	thumb_func_end ov84_0223C848

	thumb_func_start ov84_0223C868
ov84_0223C868: ; 0x0223C868
	push {r4, lr}
	ldr r1, _0223C894 ; =0x0000042A
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #2
	beq _0223C87A
	bl ov84_0223C89C
	b _0223C880
_0223C87A:
	mov r2, #2
	add r0, r1, #1
	strb r2, [r4, r0]
_0223C880:
	ldr r0, _0223C898 ; =0x0000042D
	mov r1, #0
	strb r1, [r4, r0]
	add r1, r0, #3
	ldrb r2, [r4, r1]
	mov r1, #0x80
	add r0, r0, #3
	orr r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0223C894: .word 0x0000042A
_0223C898: .word 0x0000042D
	thumb_func_end ov84_0223C868

	thumb_func_start ov84_0223C89C
ov84_0223C89C: ; 0x0223C89C
	push {r4, lr}
	ldr r1, _0223C91C ; =0x00000429
	add r4, r0, #0
	add r1, r4, r1
	mov r2, #0
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	strb r2, [r1, #5]
	ldrb r3, [r1, #7]
	mov r2, #0xf
	bic r3, r2
	strb r3, [r1, #7]
	ldrb r3, [r1, #7]
	mov r2, #0x70
	bic r3, r2
	strb r3, [r1, #7]
	bl ov84_0223C4E0
	add r0, r4, #4
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #4
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r4, #0
	add r1, #0x64
	ldrb r1, [r1]
	mov r2, #0
	bl ov84_0223F3AC
	add r0, r4, #0
	add r4, #0xc4
	ldr r1, [r4, #0]
	mov r2, #0
	add r1, #0x64
	ldrb r1, [r1]
	bl ov84_0223CF20
	pop {r4, pc}
	; .align 2, 0
_0223C91C: .word 0x00000429
	thumb_func_end ov84_0223C89C

	thumb_func_start ov84_0223C920
ov84_0223C920: ; 0x0223C920
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0223CA54 ; =0x00000429
	add r4, r5, r0
	bl sub_0202278C
	cmp r0, #0
	bne _0223C93C
	ldrb r1, [r4, #7]
	mov r0, #0x70
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r4, #7]
_0223C93C:
	add r0, r5, #0
	bl ov84_0223CE08
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _0223C952
	ldrb r0, [r4]
	cmp r6, r0
	beq _0223C95E
_0223C952:
	ldrb r1, [r4, #7]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #7]
_0223C95E:
	add r0, r5, #0
	bl ov84_0223CA5C
	cmp r0, #0
	bne _0223C9F2
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1d
	cmp r0, #1
	bne _0223C9F2
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _0223C9F2
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldrb r1, [r4]
	add r0, #0x64
	strb r1, [r0]
	lsl r0, r6, #0x18
	ldrb r1, [r4]
	lsr r0, r0, #0x18
	cmp r1, r0
	bls _0223C9AA
	mov r2, #0
	strb r2, [r4, #1]
	strb r2, [r4, #2]
	ldrb r1, [r4]
	add r0, r5, #0
	bl ov84_0223CF20
	ldrb r1, [r4]
	add r0, r5, #0
	mov r2, #0
	bl ov84_0223F3AC
	b _0223C9CE
_0223C9AA:
	cmp r1, r0
	bhs _0223C9CA
	mov r0, #1
	strb r0, [r4, #1]
	mov r2, #0
	strb r2, [r4, #2]
	ldrb r1, [r4]
	add r0, r5, #0
	bl ov84_0223CF20
	ldrb r1, [r4]
	add r0, r5, #0
	mov r2, #0
	bl ov84_0223F3AC
	b _0223C9CE
_0223C9CA:
	mov r0, #2
	strb r0, [r4, #1]
_0223C9CE:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	strb r0, [r4]
	ldrb r2, [r4, #7]
	mov r1, #0xf
	bic r2, r1
	strb r2, [r4, #7]
	ldrb r2, [r4, #7]
	mov r1, #0x70
	bic r2, r1
	strb r2, [r4, #7]
	mov r1, #0
	strb r1, [r4, #4]
	ldr r1, _0223CA58 ; =0x00000478
	strb r0, [r5, r1]
	add r0, r5, #0
	bl ov84_02240B68
_0223C9F2:
	add r0, r5, #0
	bl ov84_0223CBD8
	add r6, r0, #0
	add r0, r5, #0
	bl ov84_0223CE60
	add r7, r0, #0
	add r0, r5, #0
	bl ov84_02240B80
	cmp r6, #1
	bne _0223CA4E
	cmp r7, #1
	bne _0223CA4E
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _0223CA4E
	add r0, r5, #0
	bl ov84_02240B50
	cmp r0, #1
	bne _0223CA4E
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0223CA40
	ldrb r1, [r4]
	add r0, r5, #0
	mov r2, #1
	bl ov84_0223CF20
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
_0223CA40:
	add r5, #0xfc
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223CA4E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CA54: .word 0x00000429
_0223CA58: .word 0x00000478
	thumb_func_end ov84_0223C920

	thumb_func_start ov84_0223CA5C
ov84_0223CA5C: ; 0x0223CA5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223CBC4 ; =0x021BF67C
	ldr r1, _0223CBC8 ; =0x00000429
	ldr r2, [r0, #0x48]
	mov r0, #0x20
	add r4, r5, r1
	tst r0, r2
	beq _0223CB14
	sub r0, r1, #5
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _0223CA7A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223CA7A:
	ldr r0, _0223CBCC ; =0x000006CA
	bl sub_02005748
	add r1, r5, #0
	add r1, #0xc4
	ldr r3, [r1, #0]
	add r0, r5, #0
	add r0, #0xe0
	ldrb r2, [r4]
	mov r1, #0xc
	ldr r0, [r0, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0xc]
	bl sub_0200D364
	ldrb r1, [r4]
	add r0, r5, #0
	mov r2, #0
	bl ov84_0223CF20
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldrb r1, [r4]
	add r0, #0x64
	strb r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0223CACA
	sub r0, r0, #1
	strb r0, [r4]
	ldr r0, _0223CBD0 ; =0x00000478
	ldrb r1, [r5, r0]
	sub r1, r1, #1
	b _0223CAD8
_0223CACA:
	ldr r0, _0223CBD4 ; =0x00000424
	ldrb r1, [r5, r0]
	sub r1, r1, #1
	strb r1, [r4]
	ldrb r1, [r5, r0]
	add r0, #0x54
	sub r1, r1, #1
_0223CAD8:
	strb r1, [r5, r0]
	mov r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #1]
	ldrb r1, [r4, #7]
	mov r0, #0x70
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r4, #7]
	ldrb r1, [r4, #7]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #7]
	ldrb r1, [r4, #7]
	mov r0, #0x80
	bic r1, r0
	strb r1, [r4, #7]
	ldrb r0, [r4, #4]
	cmp r0, #3
	beq _0223CB0A
	mov r0, #4
	strb r0, [r4, #4]
_0223CB0A:
	add r0, r5, #0
	bl ov84_02240B68
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223CB14:
	mov r0, #0x10
	tst r0, r2
	beq _0223CBBE
	sub r0, r1, #5
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _0223CB26
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223CB26:
	ldr r0, _0223CBCC ; =0x000006CA
	bl sub_02005748
	add r1, r5, #0
	add r1, #0xc4
	ldr r3, [r1, #0]
	add r0, r5, #0
	add r0, #0xe0
	ldrb r2, [r4]
	mov r1, #0xc
	ldr r0, [r0, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0xc]
	bl sub_0200D364
	ldrb r1, [r4]
	add r0, r5, #0
	mov r2, #0
	bl ov84_0223CF20
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldrb r1, [r4]
	add r0, #0x64
	strb r1, [r0]
	ldrb r0, [r4]
	ldr r1, _0223CBD4 ; =0x00000424
	add r2, r0, #1
	ldrb r0, [r5, r1]
	cmp r2, r0
	bge _0223CB7C
	add r0, r1, #0
	strb r2, [r4]
	add r0, #0x54
	ldrb r0, [r5, r0]
	add r0, r0, #1
	b _0223CB80
_0223CB7C:
	mov r0, #0
	strb r0, [r4]
_0223CB80:
	add r1, #0x54
	strb r0, [r5, r1]
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, #1
	strb r0, [r4, #1]
	ldrb r2, [r4, #7]
	mov r1, #0x70
	bic r2, r1
	mov r1, #0x10
	orr r1, r2
	strb r1, [r4, #7]
	ldrb r2, [r4, #7]
	mov r1, #0xf
	bic r2, r1
	orr r0, r2
	strb r0, [r4, #7]
	ldrb r1, [r4, #7]
	mov r0, #0x80
	bic r1, r0
	strb r1, [r4, #7]
	ldrb r0, [r4, #4]
	cmp r0, #3
	beq _0223CBB4
	mov r0, #4
	strb r0, [r4, #4]
_0223CBB4:
	add r0, r5, #0
	bl ov84_02240B68
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223CBBE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223CBC4: .word 0x021BF67C
_0223CBC8: .word 0x00000429
_0223CBCC: .word 0x000006CA
_0223CBD0: .word 0x00000478
_0223CBD4: .word 0x00000424
	thumb_func_end ov84_0223CA5C

	thumb_func_start ov84_0223CBD8
ov84_0223CBD8: ; 0x0223CBD8
	push {r4, r5, r6, lr}
	ldr r1, _0223CD3C ; =0x00000429
	add r5, r0, #0
	add r4, r5, r1
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _0223CBF2
	cmp r1, #1
	beq _0223CBFE
	cmp r1, #2
	bne _0223CBF0
	b _0223CD34
_0223CBF0:
	b _0223CD38
_0223CBF2:
	mov r0, #0
	strb r0, [r4, #3]
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _0223CD38
_0223CBFE:
	ldrb r1, [r4, #3]
	cmp r1, #8
	bhs _0223CC0E
	add r1, r1, #1
	strb r1, [r4, #3]
	bl ov84_0223F2FC
	b _0223CD38
_0223CC0E:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223CC42
	add r1, r5, #0
	add r1, #0xc4
	ldr r3, [r1, #0]
	add r1, r3, #0
	add r1, #0x64
	ldrb r6, [r1]
	mov r1, #0xc
	add r2, r6, #0
	mul r2, r1
	add r1, r3, #0
	add r1, #0xa
	add r3, #8
	add r1, r1, r2
	add r2, r3, r2
	bl sub_02001384
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02013A3C
_0223CC42:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldrb r1, [r4]
	add r0, #0x64
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r2, r1, #0
	add r2, #0x64
	ldrb r3, [r2]
	mov r2, #0xc
	add r0, #0xe0
	mul r2, r3
	add r1, r1, r2
	ldrb r1, [r1, #0xc]
	ldr r0, [r0, #0]
	bl sub_0200D364
	add r0, r5, #0
	bl ov84_0223F438
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, #0x64
	ldrb r1, [r1]
	mov r2, #1
	bl ov84_0223F3AC
	add r0, r5, #0
	bl ov84_0223BFBC
	add r0, r5, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r0, r3, #0
	add r1, r3, #0
	add r0, #0xa
	add r1, #8
	add r0, r0, r2
	add r1, r1, r2
	add r2, r3, r2
	ldrb r2, [r2, #0xd]
	bl ov84_0223C194
	add r0, r5, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r0, r3, #0
	add r1, r3, #0
	add r0, #0xa
	add r1, #8
	add r0, r0, r2
	add r1, r1, r2
	add r2, r3, r2
	ldrb r2, [r2, #0xd]
	mov r3, #9
	bl ov84_0223C1D0
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x64
	ldrb r2, [r0]
	mov r0, #0xc
	add r3, r2, #0
	mul r3, r0
	add r2, r1, r3
	ldrh r1, [r2, #0xa]
	ldrh r2, [r2, #8]
	add r0, r5, #0
	bl ov84_0223C224
	add r0, r5, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r5, #0
	add r3, r2, #0
	add r3, #0x64
	ldrb r6, [r3]
	mov r3, #0xc
	add r0, #0xf0
	mul r3, r6
	add r2, r2, r3
	ldrh r2, [r2, #8]
	ldr r0, [r0, #0]
	mov r1, #0xb1
	sub r2, r2, #1
	lsl r2, r2, #4
	add r2, #0x18
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r5, #0xf0
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223CD34:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223CD38:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223CD3C: .word 0x00000429
	thumb_func_end ov84_0223CBD8

	thumb_func_start ov84_0223CD40
ov84_0223CD40: ; 0x0223CD40
	push {r4, lr}
	add r4, r0, #0
	bl ov84_0223CDB0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0223CD54
	mov r0, #0
	pop {r4, pc}
_0223CD54:
	ldr r2, _0223CDA8 ; =0x00000424
	ldrb r1, [r4, r2]
	cmp r1, #1
	bne _0223CD60
	mov r0, #0
	pop {r4, pc}
_0223CD60:
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r1, #0x64
	ldrb r3, [r1]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x18
	cmp r3, r1
	bne _0223CD7A
	mov r3, #2
	add r1, r2, #6
	strb r3, [r4, r1]
	b _0223CD8C
_0223CD7A:
	cmp r3, r1
	bls _0223CD86
	mov r3, #0
	add r1, r2, #6
	strb r3, [r4, r1]
	b _0223CD8C
_0223CD86:
	mov r3, #1
	add r1, r2, #6
	strb r3, [r4, r1]
_0223CD8C:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _0223CDAC ; =0x00000429
	strb r1, [r4, r0]
	add r0, #0x4f
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov84_02240B68
	add r0, r4, #0
	bl ov84_0223C868
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0223CDA8: .word 0x00000424
_0223CDAC: .word 0x00000429
	thumb_func_end ov84_0223CD40

	thumb_func_start ov84_0223CDB0
ov84_0223CDB0: ; 0x0223CDB0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0223CDF8 ; =0x00000424
	ldrb r0, [r5, r0]
	lsl r1, r0, #3
	ldr r0, _0223CDFC ; =0x022410CC
	ldr r0, [r0, r1]
	bl sub_02022664
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0223CDF2
	ldr r1, _0223CE00 ; =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0223CE04 ; =0x021BF6BC
	ldr r0, [r5, #0]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	mov r1, #4
	bl sub_0201C784
	cmp r0, #0
	bne _0223CDF2
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0223CDF2:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223CDF8: .word 0x00000424
_0223CDFC: .word 0x022410CC
_0223CE00: .word 0x0000FFFE
_0223CE04: .word 0x021BF6BC
	thumb_func_end ov84_0223CDB0

	thumb_func_start ov84_0223CE08
ov84_0223CE08: ; 0x0223CE08
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0223CE50 ; =0x00000424
	ldrb r0, [r5, r0]
	lsl r1, r0, #3
	ldr r0, _0223CE54 ; =0x022410CC
	ldr r0, [r0, r1]
	bl sub_02022644
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0223CE4A
	ldr r1, _0223CE58 ; =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0223CE5C ; =0x021BF6BC
	ldr r0, [r5, #0]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	mov r1, #4
	bl sub_0201C784
	cmp r0, #0
	bne _0223CE4A
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0223CE4A:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223CE50: .word 0x00000424
_0223CE54: .word 0x022410CC
_0223CE58: .word 0x0000FFFE
_0223CE5C: .word 0x021BF6BC
	thumb_func_end ov84_0223CE08

	thumb_func_start ov84_0223CE60
ov84_0223CE60: ; 0x0223CE60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223CF10 ; =0x00000429
	add r4, r5, r0
	ldrb r0, [r4, #4]
	cmp r0, #4
	bhi _0223CF06
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223CE7A: ; jump table
	.short _0223CE84 - _0223CE7A - 2 ; case 0
	.short _0223CE9C - _0223CE7A - 2 ; case 1
	.short _0223CEEC - _0223CE7A - 2 ; case 2
	.short _0223CEFA - _0223CE7A - 2 ; case 3
	.short _0223CEFE - _0223CE7A - 2 ; case 4
_0223CE84:
	mov r0, #0
	strb r0, [r4, #5]
	ldrb r1, [r4, #7]
	mov r0, #0x80
	orr r0, r1
	strb r0, [r4, #7]
	ldrb r0, [r4]
	strb r0, [r4, #6]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0223CF06
_0223CE9C:
	ldrb r0, [r4, #5]
	cmp r0, #3
	bne _0223CF06
	ldr r0, _0223CF14 ; =0x000005E4
	bl sub_02005748
	ldrb r1, [r4, #6]
	add r0, r5, #0
	mov r2, #2
	bl ov84_0223CF20
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
	ldrb r0, [r4, #6]
	lsl r3, r0, #1
	ldr r0, _0223CF18 ; =0x00000424
	ldrb r0, [r5, r0]
	lsl r1, r0, #3
	ldr r0, _0223CF1C ; =0x022410C8
	ldr r2, [r0, r1]
	add r0, r5, #0
	ldrb r1, [r2, r3]
	add r3, r3, #1
	ldrb r2, [r2, r3]
	lsl r1, r1, #3
	add r1, #0x14
	lsl r2, r2, #3
	add r2, #0x14
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov84_02240E24
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0223CF06
_0223CEEC:
	ldrb r1, [r4, #5]
	cmp r1, #7
	bne _0223CF06
	add r0, r0, #1
	strb r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223CEFA:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223CEFE:
	mov r0, #3
	strb r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223CF06:
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223CF10: .word 0x00000429
_0223CF14: .word 0x000005E4
_0223CF18: .word 0x00000424
_0223CF1C: .word 0x022410C8
	thumb_func_end ov84_0223CE60

	thumb_func_start ov84_0223CF20
ov84_0223CF20: ; 0x0223CF20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	mov r1, #4
	add r6, r2, #0
	bl sub_02019FE4
	add r7, r0, #0
	ldr r0, _0223CFA8 ; =0x00000424
	ldrb r0, [r4, r0]
	add r4, #0xc4
	lsl r1, r0, #3
	ldr r0, _0223CFAC ; =0x022410C8
	ldr r1, [r0, r1]
	lsl r0, r5, #1
	add r2, r1, r0
	ldr r1, [r4, #0]
	mov r0, #0xc
	mul r0, r5
	add r0, r1, r0
	ldrb r3, [r0, #0xc]
	lsl r0, r6, #2
	add r1, r6, r0
	lsr r5, r3, #1
	mov r0, #0x96
	mul r0, r5
	mov r5, #1
	and r5, r3
	mov r3, #0xf
	mul r3, r5
	add r0, r0, r3
	add r0, #0x1e
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r4, #0
	mov ip, r0
_0223CF6C:
	mov r0, #0x1e
	add r1, r4, #0
	mul r1, r0
	mov r0, ip
	mov r3, #0
	add r5, r0, r1
_0223CF78:
	ldrb r6, [r2, #1]
	mov r0, #2
	add r1, r3, r5
	lsl r0, r0, #0xc
	add r1, r1, r0
	add r6, r4, r6
	lsl r6, r6, #5
	ldrb r0, [r2]
	add r6, r3, r6
	add r0, r0, r6
	lsl r0, r0, #1
	strh r1, [r7, r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #5
	blo _0223CF78
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0223CF6C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CFA8: .word 0x00000424
_0223CFAC: .word 0x022410C8
	thumb_func_end ov84_0223CF20

	thumb_func_start ov84_0223CFB0
ov84_0223CFB0: ; 0x0223CFB0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r4, r1, #0
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_02019FE4
	mov ip, r0
	add r1, r4, #0
	mov r0, #6
	mul r1, r0
	ldr r0, _0223D010 ; =0x00000276
	mov r4, #3
	add r0, r1, r0
	lsl r0, r0, #0x10
	mov r6, #0
	lsr r7, r0, #0x10
	lsl r4, r4, #0xc
_0223CFD4:
	mov r0, #0x1e
	mul r0, r6
	add r2, r7, r0
	add r0, r6, #7
	lsl r3, r0, #6
	mov r0, ip
	mov r1, #0
	add r3, r0, r3
_0223CFE4:
	add r0, r1, r2
	lsl r5, r1, #1
	add r0, r0, r4
	add r5, r3, r5
	strh r0, [r5, #0x1a]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #6
	blo _0223CFE4
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #6
	blo _0223CFD4
	ldr r0, [sp]
	mov r1, #4
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D010: .word 0x00000276
	thumb_func_end ov84_0223CFB0

	thumb_func_start ov84_0223D014
ov84_0223D014: ; 0x0223D014
	push {r4, lr}
	mov r1, #0x49
	add r4, r0, #0
	lsl r1, r1, #4
	ldrb r2, [r4, r1]
	cmp r2, #3
	bhi _0223D0B0
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223D02E: ; jump table
	.short _0223D0B0 - _0223D02E - 2 ; case 0
	.short _0223D036 - _0223D02E - 2 ; case 1
	.short _0223D05E - _0223D02E - 2 ; case 2
	.short _0223D08A - _0223D02E - 2 ; case 3
_0223D036:
	mov r1, #0x80
	mov r2, #0x50
	bl ov84_02240E24
	ldr r0, _0223D0B4 ; =0x000005E4
	bl sub_02005748
	add r0, r4, #0
	mov r1, #2
	bl ov84_0223CFB0
	ldr r0, _0223D0B8 ; =0x00000491
	mov r1, #0
	strb r1, [r4, r0]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0223D05E:
	add r2, r1, #1
	ldrb r2, [r4, r2]
	cmp r2, #3
	bne _0223D07E
	mov r1, #1
	bl ov84_0223CFB0
	mov r0, #0x49
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r1, #0
	add r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0223D07E:
	add r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #1
	strb r2, [r4, r0]
	pop {r4, pc}
_0223D08A:
	add r2, r1, #1
	ldrb r2, [r4, r2]
	cmp r2, #2
	bne _0223D0A6
	mov r1, #0
	bl ov84_0223CFB0
	mov r0, #0x49
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	add r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0223D0A6:
	add r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #1
	strb r2, [r4, r0]
_0223D0B0:
	pop {r4, pc}
	nop
_0223D0B4: .word 0x000005E4
_0223D0B8: .word 0x00000491
	thumb_func_end ov84_0223D014

	thumb_func_start ov84_0223D0BC
ov84_0223D0BC: ; 0x0223D0BC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0
	add r5, r0, #0
	bl ov84_0223CFB0
	ldr r0, _0223D0F8 ; =0x00000424
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _0223D0EE
	mov r4, #0
	cmp r0, #0
	bls _0223D0EE
	ldr r6, _0223D0F8 ; =0x00000424
	add r7, r4, #0
_0223D0D8:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov84_0223CF20
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrb r0, [r5, r6]
	cmp r4, r0
	blo _0223D0D8
_0223D0EE:
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D0F8: .word 0x00000424
	thumb_func_end ov84_0223D0BC

	thumb_func_start ov84_0223D0FC
ov84_0223D0FC: ; 0x0223D0FC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0223D1F0 ; =0x00000481
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0223D1DE
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #3
	bhi _0223D1D0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D11E: ; jump table
	.short _0223D126 - _0223D11E - 2 ; case 0
	.short _0223D126 - _0223D11E - 2 ; case 1
	.short _0223D17C - _0223D11E - 2 ; case 2
	.short _0223D17C - _0223D11E - 2 ; case 3
_0223D126:
	add r0, r4, #0
	add r0, #0xe8
	add r1, sp, #0
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r3, sp, #0
	mov r1, #2
	ldrsh r0, [r3, r1]
	mov r2, #0
	sub r0, r0, #1
	strh r0, [r3, #2]
	add r0, r4, #0
	add r0, #0xe8
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #0]
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xec
	add r1, sp, #0
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r3, sp, #0
	mov r1, #2
	ldrsh r0, [r3, r1]
	mov r2, #0
	add r0, r0, #1
	strh r0, [r3, #2]
	add r0, r4, #0
	add r0, #0xec
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #0]
	bl sub_0200D4C4
	b _0223D1D0
_0223D17C:
	add r0, r4, #0
	add r0, #0xe8
	add r1, sp, #0
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r3, sp, #0
	mov r1, #2
	ldrsh r0, [r3, r1]
	mov r2, #0
	add r0, r0, #1
	strh r0, [r3, #2]
	add r0, r4, #0
	add r0, #0xe8
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #0]
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xec
	add r1, sp, #0
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r3, sp, #0
	mov r1, #2
	ldrsh r0, [r3, r1]
	mov r2, #0
	sub r0, r0, #1
	strh r0, [r3, #2]
	add r0, r4, #0
	add r0, #0xec
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #0]
	bl sub_0200D4C4
_0223D1D0:
	mov r1, #0x12
	lsl r1, r1, #6
	ldrb r0, [r4, r1]
	add r2, r0, #1
	mov r0, #3
	and r0, r2
	strb r0, [r4, r1]
_0223D1DE:
	ldr r1, _0223D1F0 ; =0x00000481
	ldrb r0, [r4, r1]
	add r2, r0, #1
	mov r0, #3
	and r0, r2
	strb r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D1F0: .word 0x00000481
	thumb_func_end ov84_0223D0FC

	thumb_func_start ov84_0223D1F4
ov84_0223D1F4: ; 0x0223D1F4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0223D238 ; =0x02240E98
	bl sub_02022664
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223D230
	ldr r1, _0223D23C ; =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0223D240 ; =0x021BF6BC
	ldr r0, [r4, #0]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	mov r1, #4
	bl sub_0201C784
	cmp r0, #0
	beq _0223D22A
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0223D22A:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0223D230:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_0223D238: .word 0x02240E98
_0223D23C: .word 0x0000FFFE
_0223D240: .word 0x021BF6BC
	thumb_func_end ov84_0223D1F4

	thumb_func_start ov84_0223D244
ov84_0223D244: ; 0x0223D244
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r4, r2, r0
	mov r0, #0x57
	lsl r0, r0, #2
	ldrh r2, [r4, #6]
	ldrh r1, [r4, #4]
	ldr r0, [r5, r0]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_020014F8
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0223D278
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223D278:
	add r5, #0xc4
	ldr r0, [r5, #0]
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223D288
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223D288:
	ldrb r0, [r4, #8]
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bls _0223D298
	mov r0, #1
	b _0223D29A
_0223D298:
	mov r0, #0
_0223D29A:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223D244

	thumb_func_start ov84_0223D2A0
ov84_0223D2A0: ; 0x0223D2A0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r3, r2, r0
	ldr r1, _0223D2F0 ; =0x0000047A
	mov r0, #1
	strb r0, [r4, r1]
	ldrh r2, [r3, #6]
	ldrh r0, [r3, #4]
	add r2, r2, r0
	add r0, r1, #1
	strb r2, [r4, r0]
	mov r0, #0x57
	add r1, r1, #1
	lsl r0, r0, #2
	ldrb r1, [r4, r1]
	ldr r0, [r4, r0]
	bl sub_020014F8
	ldr r1, _0223D2F4 ; =0x0000047C
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov84_0223FE18
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020013AC
	add r0, r4, #0
	bl ov84_0223D4E8
	pop {r4, pc}
	nop
_0223D2F0: .word 0x0000047A
_0223D2F4: .word 0x0000047C
	thumb_func_end ov84_0223D2A0

	thumb_func_start ov84_0223D2F8
ov84_0223D2F8: ; 0x0223D2F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl ov84_0223EE30
	cmp r0, #1
	bne _0223D30C
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223D30C:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r4, r2, r0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #6
	add r2, r4, #4
	bl sub_020014DC
	add r0, r5, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223D34E
	ldr r0, _0223D424 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov84_0223D42C
	mov r1, #0x49
	mov r0, #1
	lsl r1, r1, #4
	add sp, #4
	strb r0, [r5, r1]
	pop {r3, r4, r5, r6, pc}
_0223D34E:
	ldr r0, _0223D428 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #4
	tst r0, r1
	beq _0223D36A
	ldr r0, _0223D424 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov84_0223D42C
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223D36A:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001288
	add r6, r0, #0
	mov r0, #0x57
	lsl r0, r0, #2
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r0, sp, #0
	ldrh r2, [r0]
	ldrh r0, [r4, #4]
	cmp r0, r2
	beq _0223D3A6
	sub r2, r2, #1
	add r0, r5, #0
	lsl r2, r2, #4
	add r0, #0xf4
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #0xb1
	asr r2, r2, #0x10
	bl sub_0200D4C4
_0223D3A6:
	add r0, sp, #0
	ldrh r1, [r0, #2]
	strh r1, [r4, #6]
	ldrh r0, [r0]
	strh r0, [r4, #4]
	mov r0, #1
	mvn r0, r0
	cmp r6, r0
	beq _0223D3E6
	add r0, r0, #1
	cmp r6, r0
	bne _0223D40A
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020014F0
	cmp r0, #1
	bne _0223D3D6
	add r0, r5, #0
	mov r1, #0x24
	bl ov84_0223EB08
	b _0223D41C
_0223D3D6:
	cmp r0, #2
	bne _0223D41C
	mov r1, #0x23
	add r0, r5, #0
	mvn r1, r1
	bl ov84_0223EB08
	b _0223D41C
_0223D3E6:
	ldr r0, _0223D424 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0223D428 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0223D3FE
	add r0, r5, #0
	bl ov84_0223D42C
	b _0223D404
_0223D3FE:
	add r0, r5, #0
	bl ov84_0223D484
_0223D404:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223D40A:
	ldr r0, _0223D424 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov84_0223D42C
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223D41C:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0223D424: .word 0x000005DC
_0223D428: .word 0x021BF67C
	thumb_func_end ov84_0223D2F8

	thumb_func_start ov84_0223D42C
ov84_0223D42C: ; 0x0223D42C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldrh r2, [r0, #6]
	ldrh r1, [r0, #4]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldr r1, _0223D480 ; =0x0000047B
	ldrb r1, [r4, r1]
	cmp r1, r2
	beq _0223D478
	sub r2, r2, #1
	cmp r1, r2
	beq _0223D478
	sub r1, r1, #1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0207CDEC
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02013A3C
	add r0, r4, #0
	bl ov84_0223BFBC
_0223D478:
	add r0, r4, #0
	bl ov84_0223D484
	pop {r4, pc}
	; .align 2, 0
_0223D480: .word 0x0000047B
	thumb_func_end ov84_0223D42C

	thumb_func_start ov84_0223D484
ov84_0223D484: ; 0x0223D484
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r4, r2, r0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #6
	add r2, r4, #4
	bl sub_02001384
	mov r0, #0x57
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, _0223D4E0 ; =0x0000047B
	ldrh r1, [r4, #6]
	ldrb r2, [r5, r0]
	ldrh r0, [r4, #4]
	add r1, r1, r0
	cmp r2, r1
	bge _0223D4C0
	sub r0, r0, #1
	strh r0, [r4, #4]
_0223D4C0:
	ldr r0, _0223D4E4 ; =0x0000047A
	mov r2, #0
	strb r2, [r5, r0]
	add r1, r0, #1
	strb r2, [r5, r1]
	add r0, r0, #2
	str r2, [r5, r0]
	ldrh r1, [r4, #6]
	ldrh r2, [r4, #4]
	add r0, r5, #0
	bl ov84_0223C224
	add r0, r5, #0
	bl ov84_0223D4E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D4E0: .word 0x0000047B
_0223D4E4: .word 0x0000047A
	thumb_func_end ov84_0223D484

	thumb_func_start ov84_0223D4E8
ov84_0223D4E8: ; 0x0223D4E8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r2, r2, r0
	ldr r0, _0223D5A4 ; =0x0000047A
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0223D554
	ldrh r2, [r2, #4]
	add r0, r4, #0
	add r0, #0xf0
	sub r2, r2, #1
	lsl r2, r2, #4
	add r2, #0x18
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #0xb1
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, _0223D5A8 ; =0x00000424
	ldrb r0, [r4, r0]
	cmp r0, #1
	beq _0223D5A2
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r4, #0xec
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D3F4
	pop {r4, pc}
_0223D554:
	ldrh r2, [r2, #4]
	add r0, r4, #0
	add r0, #0xf4
	sub r2, r2, #1
	lsl r2, r2, #4
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #0xb1
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, _0223D5A8 ; =0x00000424
	ldrb r0, [r4, r0]
	cmp r0, #1
	beq _0223D5A2
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r4, #0xec
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
_0223D5A2:
	pop {r4, pc}
	; .align 2, 0
_0223D5A4: .word 0x0000047A
_0223D5A8: .word 0x00000424
	thumb_func_end ov84_0223D4E8

	thumb_func_start ov84_0223D5AC
ov84_0223D5AC: ; 0x0223D5AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #0
	add r0, #0x66
	ldrh r0, [r0]
	mov r2, #6
	bl sub_0207CF48
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r4, #0
	add r1, r0, #0
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r1, r0, r1
	add r0, #0x65
	ldrb r0, [r0]
	ldrb r6, [r1, #0xc]
	cmp r0, #0
	beq _0223D5E4
	b _0223D6F2
_0223D5E4:
	cmp r6, #4
	bne _0223D5F0
	mov r1, #9
	add r0, sp, #0
	strb r1, [r0]
	add r4, r4, #1
_0223D5F0:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x76
	ldrh r1, [r1]
	lsl r1, r1, #0x10
	lsr r2, r1, #0x11
	ldr r1, _0223D724 ; =0x0000FFFE
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bhi _0223D628
	add r1, r0, #0
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	cmp r0, #5
	bne _0223D6A2
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, r4]
	add r4, r4, #1
	b _0223D6A2
_0223D628:
	add r0, r7, #0
	mov r1, #6
	bl sub_0207D014
	cmp r0, #0
	beq _0223D6A2
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	ldr r2, _0223D728 ; =0x000001C2
	add r0, r1, #0
	add r0, #0x66
	ldrh r0, [r0]
	cmp r0, r2
	bne _0223D65C
	add r2, r1, #0
	add r2, #0x76
	ldrh r2, [r2]
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1f
	cmp r2, #1
	bne _0223D65C
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, r4]
	b _0223D6A0
_0223D65C:
	add r2, r1, #0
	add r2, #0x64
	ldrb r3, [r2]
	mov r2, #0xc
	mul r2, r3
	add r2, r1, r2
	ldrb r3, [r2, #0xc]
	cmp r3, #5
	bne _0223D676
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, r4]
	b _0223D6A0
_0223D676:
	ldr r2, _0223D72C ; =0x000001C1
	cmp r0, r2
	bne _0223D684
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0, r4]
	b _0223D6A0
_0223D684:
	cmp r3, #4
	bne _0223D69A
	ldr r0, [r1, #0x70]
	bl sub_02068B50
	cmp r0, #1
	bne _0223D69A
	mov r1, #3
	add r0, sp, #0
	strb r1, [r0, r4]
	b _0223D6A0
_0223D69A:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, r4]
_0223D6A0:
	add r4, r4, #1
_0223D6A2:
	add r0, r7, #0
	mov r1, #3
	bl sub_0207D014
	cmp r0, #0
	bne _0223D6C0
	mov r0, #8
	add r1, sp, #0
	strb r0, [r1, r4]
	add r4, r4, #1
	cmp r6, #3
	beq _0223D6C0
	mov r0, #5
	strb r0, [r1, r4]
	add r4, r4, #1
_0223D6C0:
	add r0, r7, #0
	mov r1, #4
	bl sub_0207D014
	cmp r0, #0
	beq _0223D708
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_0207D3FC
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r1, #0x66
	ldrh r1, [r1]
	cmp r1, r0
	bne _0223D6E8
	mov r1, #7
	b _0223D6EA
_0223D6E8:
	mov r1, #6
_0223D6EA:
	add r0, sp, #0
	strb r1, [r0, r4]
	add r4, r4, #1
	b _0223D708
_0223D6F2:
	add r0, #0xfc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0223D708
	mov r1, #0xa
	add r0, sp, #0
	strb r1, [r0]
	mov r1, #9
	strb r1, [r0, #1]
	add r4, r4, #2
_0223D708:
	add r2, r4, #1
	lsl r2, r2, #0x18
	mov r0, #0xb
	add r1, sp, #0
	strb r0, [r1, r4]
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl ov84_0223FB70
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D724: .word 0x0000FFFE
_0223D728: .word 0x000001C2
_0223D72C: .word 0x000001C1
	thumb_func_end ov84_0223D5AC

	thumb_func_start ov84_0223D730
ov84_0223D730: ; 0x0223D730
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov84_0223EF4C
	cmp r0, #1
	bne _0223D740
	mov r0, #4
	pop {r3, r4, r5, pc}
_0223D740:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001BE0
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0223D774
	add r0, r5, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223D774
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001D44
	add r4, r0, #0
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #4
	strb r1, [r5, r0]
_0223D774:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0223D7AA
	add r0, r0, #1
	cmp r4, r0
	bne _0223D7DC
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001DC8
	cmp r0, #1
	bne _0223D79A
	add r0, r5, #0
	mov r1, #0x12
	bl ov84_0223EB08
	b _0223D7E2
_0223D79A:
	cmp r0, #2
	bne _0223D7E2
	mov r1, #0x11
	add r0, r5, #0
	mvn r1, r1
	bl ov84_0223EB08
	b _0223D7E2
_0223D7AA:
	add r0, r5, #0
	mov r1, #1
	bl ov84_02240B34
	add r0, r5, #0
	bl ov84_0223FD84
	add r0, r5, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	bne _0223D7D8
	add r0, r5, #0
	mov r1, #0
	bl ov84_0223D7E8
_0223D7D8:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223D7DC:
	add r0, r5, #0
	blx r4
	pop {r3, r4, r5, pc}
_0223D7E2:
	mov r0, #4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov84_0223D730

	thumb_func_start ov84_0223D7E8
ov84_0223D7E8: ; 0x0223D7E8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #0
	bne _0223D816
	mov r0, #0x12
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r2, _0223D844 ; =0x02241064
	mov r1, #1
	mov r3, #0
	bl sub_020198C0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	b _0223D838
_0223D816:
	mov r0, #0x12
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r2, _0223D848 ; =0x02241096
	mov r1, #1
	mov r3, #0
	bl sub_020198C0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
_0223D838:
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0201C3C0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0223D844: .word 0x02241064
_0223D848: .word 0x02241096
	thumb_func_end ov84_0223D7E8

	thumb_func_start ov84_0223D84C
ov84_0223D84C: ; 0x0223D84C
	lsl r1, r0, #2
	ldr r0, _0223D854 ; =0x02241034
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_0223D854: .word 0x02241034
	thumb_func_end ov84_0223D84C

	thumb_func_start ov84_0223D858
ov84_0223D858: ; 0x0223D858
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov84_0223FD84
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #6
	add r0, #0x66
	ldrh r0, [r0]
	add r2, r1, #0
	bl sub_0207CFF0
	add r1, r0, #0
	lsl r1, r1, #0x10
	mov r0, #2
	lsr r1, r1, #0x10
	bl sub_020683F4
	add r1, r0, #0
	beq _0223D8D8
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x70]
	blx r1
	add r3, r0, #0
	beq _0223D8D8
	mov r0, #6
	add r2, r4, #0
	str r0, [sp]
	add r2, #0xc4
	ldr r2, [r2, #0]
	add r0, r4, #0
	mov r1, #0xfe
	add r2, #0x66
	add r0, #0xcc
	lsl r1, r1, #2
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	bl sub_0207CD34
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	ldr r2, _0223D8E4 ; =0x000003D9
	add r0, #0x64
	mov r1, #0
	mov r3, #0xc
	bl sub_0200E060
	add r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223D8E8 ; =0x00000426
	add sp, #4
	strb r0, [r4, r1]
	mov r0, #0xc
	pop {r3, r4, pc}
_0223D8D8:
	add r0, r4, #0
	bl ov84_0223D94C
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D8E4: .word 0x000003D9
_0223D8E8: .word 0x00000426
	thumb_func_end ov84_0223D858

	thumb_func_start ov84_0223D8EC
ov84_0223D8EC: ; 0x0223D8EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D940 ; =0x00000426
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0223D93C
	ldr r0, _0223D944 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0223D90E
	ldr r0, _0223D948 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223D93C
_0223D90E:
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240B34
	add r4, #0xc4
	ldr r0, [r4, #0]
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #3
	bne _0223D938
	mov r0, #0x17
	pop {r4, pc}
_0223D938:
	mov r0, #1
	pop {r4, pc}
_0223D93C:
	mov r0, #0xc
	pop {r4, pc}
	; .align 2, 0
_0223D940: .word 0x00000426
_0223D944: .word 0x021BF67C
_0223D948: .word 0x021BF6BC
	thumb_func_end ov84_0223D8EC

	thumb_func_start ov84_0223D94C
ov84_0223D94C: ; 0x0223D94C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r2, r2, r0
	ldr r1, _0223D9EC ; =0x00000483
	mov r0, #0
	strb r0, [r4, r1]
	ldrb r0, [r2, #8]
	cmp r0, #3
	bne _0223D976
	ldr r2, _0223D9F0 ; =ov84_0223DA14
	add r0, r1, #1
	str r2, [r4, r0]
	mov r0, #0xd
	pop {r4, pc}
_0223D976:
	add r0, r4, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	sub r1, #0x8b
	ldr r0, [r2, #0]
	add r2, #0x66
	ldrh r2, [r2]
	ldr r1, [r4, r1]
	mov r3, #6
	bl sub_0207CC10
	cmp r0, #1
	bne _0223D9B6
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	ldr r2, _0223D9F4 ; =0x000003D9
	add r0, #0x64
	mov r1, #0
	mov r3, #0xc
	bl sub_0200E060
	add r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223D9F8 ; =0x00000426
	strb r0, [r4, r1]
	mov r0, #0xc
	pop {r4, pc}
_0223D9B6:
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r4, #0
	add r1, #0x66
	ldrh r1, [r1]
	bl ov84_0223DBF4
	cmp r0, #1
	bne _0223D9D4
	ldr r1, _0223D9FC ; =ov84_0223DDD0
	ldr r0, _0223DA00 ; =0x00000484
	str r1, [r4, r0]
	mov r0, #0xd
	pop {r4, pc}
_0223D9D4:
	mov r0, #1
	mov r1, #6
	bl sub_0208C120
	add r4, #0xc4
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, #0x68
	strh r1, [r0]
	mov r0, #0x18
	pop {r4, pc}
	nop
_0223D9EC: .word 0x00000483
_0223D9F0: .word ov84_0223DA14
_0223D9F4: .word 0x000003D9
_0223D9F8: .word 0x00000426
_0223D9FC: .word ov84_0223DDD0
_0223DA00: .word 0x00000484
	thumb_func_end ov84_0223D94C

	thumb_func_start ov84_0223DA04
ov84_0223DA04: ; 0x0223DA04
	push {r3, lr}
	ldr r1, _0223DA10 ; =0x00000484
	ldr r1, [r0, r1]
	blx r1
	pop {r3, pc}
	nop
_0223DA10: .word 0x00000484
	thumb_func_end ov84_0223DA04

	thumb_func_start ov84_0223DA14
ov84_0223DA14: ; 0x0223DA14
	push {r3, r4, r5, lr}
	ldr r1, _0223DBE0 ; =0x00000483
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #3
	bls _0223DA22
	b _0223DBDC
_0223DA22:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223DA2E: ; jump table
	.short _0223DA36 - _0223DA2E - 2 ; case 0
	.short _0223DAAC - _0223DA2E - 2 ; case 1
	.short _0223DB0C - _0223DA2E - 2 ; case 2
	.short _0223DB26 - _0223DA2E - 2 ; case 3
_0223DA36:
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r0, #0x66
	ldrh r0, [r0]
	bl sub_0207D268
	add r5, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B630
	add r0, r5, #0
	bl sub_0207D28C
	cmp r0, #1
	bne _0223DA70
	mov r0, #0x45
	mov r2, #0xfe
	lsl r0, r0, #2
	lsl r2, r2, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x3b
	bl sub_0200B1B8
	b _0223DA82
_0223DA70:
	mov r0, #0x45
	mov r2, #0xfe
	lsl r0, r0, #2
	lsl r2, r2, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x3a
	bl sub_0200B1B8
_0223DA82:
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	ldr r2, _0223DBE4 ; =0x000003D9
	add r0, #0x64
	mov r1, #0
	mov r3, #0xc
	bl sub_0200E060
	add r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223DBE8 ; =0x00000426
	strb r0, [r4, r1]
	mov r0, #1
	add r1, #0x5d
	strb r0, [r4, r1]
	b _0223DBDC
_0223DAAC:
	sub r1, #0x5d
	ldrb r0, [r4, r1]
	bl sub_0201D724
	cmp r0, #0
	bne _0223DB6E
	ldr r0, _0223DBEC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0223DACA
	ldr r0, _0223DBF0 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223DB6E
_0223DACA:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x3c
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223DBE8 ; =0x00000426
	strb r0, [r4, r1]
	mov r0, #2
	add r1, #0x5d
	strb r0, [r4, r1]
	b _0223DBDC
_0223DB0C:
	sub r1, #0x5d
	ldrb r0, [r4, r1]
	bl sub_0201D724
	cmp r0, #0
	bne _0223DBDC
	add r0, r4, #0
	bl ov84_02240120
	ldr r0, _0223DBE0 ; =0x00000483
	mov r1, #3
	strb r1, [r4, r0]
	b _0223DBDC
_0223DB26:
	bl ov84_0223EF4C
	cmp r0, #1
	beq _0223DBDC
	add r0, r4, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223DB50
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	mov r2, #6
	bl sub_02002134
	mov r1, #0x49
	mov r2, #1
	lsl r1, r1, #4
	strb r2, [r4, r1]
	b _0223DB5C
_0223DB50:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl sub_02002114
_0223DB5C:
	cmp r0, #0
	beq _0223DB70
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223DBB6
	add r1, r1, #1
	cmp r0, r1
	beq _0223DB8E
_0223DB6E:
	b _0223DBDC
_0223DB70:
	mov r0, #1
	mov r1, #6
	bl sub_0208C120
	add r0, r4, #0
	mov r1, #0
	bl ov84_0223D7E8
	add r4, #0xc4
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, #0x68
	strh r1, [r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_0223DB8E:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001DC8
	cmp r0, #1
	bne _0223DBA6
	add r0, r4, #0
	mov r1, #0x12
	bl ov84_0223EB08
	b _0223DBDC
_0223DBA6:
	cmp r0, #2
	bne _0223DBDC
	mov r1, #0x11
	add r0, r4, #0
	mvn r1, r1
	bl ov84_0223EB08
	b _0223DBDC
_0223DBB6:
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240B34
	add r0, r4, #0
	mov r1, #0
	bl ov84_0223D7E8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223DBDC:
	mov r0, #0xd
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223DBE0: .word 0x00000483
_0223DBE4: .word 0x000003D9
_0223DBE8: .word 0x00000426
_0223DBEC: .word 0x021BF67C
_0223DBF0: .word 0x021BF6BC
	thumb_func_end ov84_0223DA14

	thumb_func_start ov84_0223DBF4
ov84_0223DBF4: ; 0x0223DBF4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x46
	add r2, r4, #0
	lsl r0, r0, #2
	add r2, #0xcc
	add r5, r1, #0
	ldr r0, [r4, r0]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200B498
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	add r2, r5, #0
	bl sub_0200B70C
	cmp r5, #0x44
	bne _0223DC3C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x40
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov84_0223BA04
	ldr r0, _0223DC98 ; =0x00000488
	mov r1, #0
	strh r1, [r4, r0]
	b _0223DC7A
_0223DC3C:
	cmp r5, #0x45
	bne _0223DC5E
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x3f
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl ov84_0223BA04
	ldr r0, _0223DC98 ; =0x00000488
	mov r1, #0
	strh r1, [r4, r0]
	b _0223DC7A
_0223DC5E:
	cmp r5, #0x4d
	beq _0223DC6A
	cmp r5, #0x4c
	beq _0223DC6A
	cmp r5, #0x4f
	bne _0223DC76
_0223DC6A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov84_0223DC9C
	add r5, r0, #0
	b _0223DC7A
_0223DC76:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223DC7A:
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0223DC98: .word 0x00000488
	thumb_func_end ov84_0223DBF4

	thumb_func_start ov84_0223DC9C
ov84_0223DC9C: ; 0x0223DC9C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov84_0223B9E4
	bl sub_0202D9D8
	cmp r0, #0
	bne _0223DCC2
	ldr r0, _0223DCF4 ; =0x00000488
	mov r1, #0
	strh r1, [r4, r0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x3e
	bl sub_0200B1EC
	pop {r3, r4, r5, pc}
_0223DCC2:
	add r0, r5, #0
	mov r1, #2
	mov r2, #6
	bl sub_0207CFF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov84_0223B9F4
	ldr r0, _0223DCF4 ; =0x00000488
	mov r1, #1
	strh r1, [r4, r0]
	mov r0, #6
	lsl r0, r0, #8
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x3d
	bl sub_0200B1EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223DCF4: .word 0x00000488
	thumb_func_end ov84_0223DC9C

	thumb_func_start ov84_0223DCF8
ov84_0223DCF8: ; 0x0223DCF8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r3, r1, #0
	mul r3, r0
	add r1, r2, r3
	mov r0, #6
	str r0, [sp]
	ldr r3, _0223DDCC ; =0x00000488
	ldr r0, [r1, #4]
	ldrb r1, [r1, #0xd]
	add r2, #0x66
	ldrh r2, [r2]
	ldrh r3, [r4, r3]
	sub r1, r1, #3
	bl sub_0207D658
	add r0, r4, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	add r1, r3, #0
	mul r2, r0
	mov r0, #0x57
	lsl r0, r0, #2
	add r1, #0xa
	ldr r0, [r4, r0]
	add r3, #8
	add r1, r1, r2
	add r2, r3, r2
	bl sub_02001384
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02013A3C
	add r0, r4, #0
	bl ov84_0223BFBC
	add r0, r4, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r0, r3, #0
	add r1, r3, #0
	add r0, #0xa
	add r1, #8
	add r0, r0, r2
	add r1, r1, r2
	add r2, r3, r2
	ldrb r2, [r2, #0xd]
	bl ov84_0223C194
	add r0, r4, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r0, r3, #0
	add r1, r3, #0
	add r0, #0xa
	add r1, #8
	add r0, r0, r2
	add r1, r1, r2
	add r2, r3, r2
	ldrb r2, [r2, #0xd]
	mov r3, #9
	bl ov84_0223C1D0
	add r0, r4, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	ldrh r1, [r2, #0xa]
	ldrh r2, [r2, #8]
	add r0, r4, #0
	bl ov84_0223C224
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223DDCC: .word 0x00000488
	thumb_func_end ov84_0223DCF8

	thumb_func_start ov84_0223DDD0
ov84_0223DDD0: ; 0x0223DDD0
	push {r4, lr}
	ldr r1, _0223DE64 ; =0x00000483
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _0223DDE6
	cmp r2, #1
	beq _0223DE0E
	cmp r2, #2
	beq _0223DE3E
	b _0223DE5E
_0223DDE6:
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	ldr r2, _0223DE68 ; =0x000003D9
	add r0, #0x64
	mov r1, #0
	mov r3, #0xc
	bl sub_0200E060
	add r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223DE6C ; =0x00000426
	strb r0, [r4, r1]
	mov r0, #1
	add r1, #0x5d
	strb r0, [r4, r1]
	b _0223DE5E
_0223DE0E:
	sub r1, #0x5d
	ldrb r0, [r4, r1]
	bl sub_0201D724
	cmp r0, #0
	bne _0223DE5E
	ldr r0, _0223DE70 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0223DE2C
	ldr r0, _0223DE74 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223DE5E
_0223DE2C:
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0200E084
	ldr r0, _0223DE64 ; =0x00000483
	mov r1, #2
	strb r1, [r4, r0]
	b _0223DE5E
_0223DE3E:
	add r1, r1, #5
	ldrsh r1, [r4, r1]
	cmp r1, #0
	beq _0223DE4A
	bl ov84_0223DCF8
_0223DE4A:
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240B34
	mov r0, #1
	pop {r4, pc}
_0223DE5E:
	mov r0, #0xd
	pop {r4, pc}
	nop
_0223DE64: .word 0x00000483
_0223DE68: .word 0x000003D9
_0223DE6C: .word 0x00000426
_0223DE70: .word 0x021BF67C
_0223DE74: .word 0x021BF6BC
	thumb_func_end ov84_0223DDD0

	thumb_func_start ov84_0223DE78
ov84_0223DE78: ; 0x0223DE78
	push {r4, lr}
	add r4, r0, #0
	bl ov84_0223FD84
	mov r0, #1
	mov r1, #6
	bl sub_0208C120
	add r4, #0xc4
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x68
	strh r1, [r0]
	mov r0, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov84_0223DE78

	thumb_func_start ov84_0223DE98
ov84_0223DE98: ; 0x0223DE98
	push {r4, lr}
	add r4, r0, #0
	bl ov84_0223FD84
	mov r0, #1
	mov r1, #6
	bl sub_0208C120
	add r4, #0xc4
	ldr r0, [r4, #0]
	mov r1, #3
	add r0, #0x68
	strh r1, [r0]
	mov r0, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov84_0223DE98

	thumb_func_start ov84_0223DEB8
ov84_0223DEB8: ; 0x0223DEB8
	push {r4, lr}
	add r4, r0, #0
	bl ov84_0223FD84
	ldr r0, _0223DF08 ; =0x00000488
	mov r1, #1
	strh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	mov r3, #6
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r2, r0
	ldr r0, [r1, #4]
	ldrb r1, [r1, #0xd]
	add r2, #0x66
	ldrh r2, [r2]
	sub r1, r1, #3
	bl sub_0207D748
	cmp r0, #1
	bne _0223DEF6
	add r0, r4, #0
	bl ov84_0223FFF0
	mov r0, #8
	pop {r4, pc}
_0223DEF6:
	add r0, r4, #0
	bl ov84_0223FE94
	add r0, r4, #0
	mov r1, #0
	bl ov84_02240CF0
	mov r0, #7
	pop {r4, pc}
	; .align 2, 0
_0223DF08: .word 0x00000488
	thumb_func_end ov84_0223DEB8

	thumb_func_start ov84_0223DF0C
ov84_0223DF0C: ; 0x0223DF0C
	push {r4, lr}
	ldr r2, _0223DFE8 ; =0x00000488
	add r4, r0, #0
	add r1, r4, r2
	add r2, r2, #2
	ldrh r2, [r4, r2]
	bl ov84_0223EFD0
	cmp r0, #1
	bne _0223DF2A
	add r0, r4, #0
	bl ov84_0223FF44
	mov r0, #7
	pop {r4, pc}
_0223DF2A:
	add r0, r4, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223DF4E
	add r0, r4, #0
	bl ov84_0223FFF0
	add r0, r4, #0
	mov r1, #0
	bl ov84_02240D3C
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #8
	pop {r4, pc}
_0223DF4E:
	ldr r1, _0223DFE8 ; =0x00000488
	add r0, r4, r1
	add r1, r1, #2
	ldrh r1, [r4, r1]
	bl sub_0208C15C
	cmp r0, #0
	beq _0223DF9A
	cmp r0, #1
	beq _0223DF68
	cmp r0, #2
	beq _0223DF80
	b _0223DF9A
_0223DF68:
	add r0, r4, #0
	mov r1, #0x12
	bl ov84_0223EB08
	add r0, r4, #0
	bl ov84_0223FF44
	ldr r0, _0223DFEC ; =0x00000638
	bl sub_02005748
	mov r0, #7
	pop {r4, pc}
_0223DF80:
	mov r1, #0x11
	add r0, r4, #0
	mvn r1, r1
	bl ov84_0223EB08
	add r0, r4, #0
	bl ov84_0223FF44
	ldr r0, _0223DFEC ; =0x00000638
	bl sub_02005748
	mov r0, #7
	pop {r4, pc}
_0223DF9A:
	ldr r0, _0223DFF0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0223DFBC
	add r0, r4, #0
	bl ov84_0223FFF0
	add r0, r4, #0
	mov r1, #0
	bl ov84_02240D3C
	ldr r0, _0223DFF4 ; =0x000005DC
	bl sub_02005748
	mov r0, #8
	pop {r4, pc}
_0223DFBC:
	mov r0, #2
	tst r0, r1
	beq _0223DFE2
	add r0, r4, #0
	bl ov84_0223FFC0
	add r0, r4, #0
	mov r1, #0
	bl ov84_02240D3C
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240B34
	ldr r0, _0223DFF4 ; =0x000005DC
	bl sub_02005748
	mov r0, #1
	pop {r4, pc}
_0223DFE2:
	mov r0, #7
	pop {r4, pc}
	nop
_0223DFE8: .word 0x00000488
_0223DFEC: .word 0x00000638
_0223DFF0: .word 0x021BF67C
_0223DFF4: .word 0x000005DC
	thumb_func_end ov84_0223DF0C

	thumb_func_start ov84_0223DFF8
ov84_0223DFF8: ; 0x0223DFF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E018 ; =0x00000426
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0223E012
	add r0, r4, #0
	bl ov84_02240120
	mov r0, #9
	pop {r4, pc}
_0223E012:
	mov r0, #8
	pop {r4, pc}
	nop
_0223E018: .word 0x00000426
	thumb_func_end ov84_0223DFF8

	thumb_func_start ov84_0223E01C
ov84_0223E01C: ; 0x0223E01C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov84_0223EF4C
	cmp r0, #1
	bne _0223E030
	add sp, #8
	mov r0, #9
	pop {r3, r4, r5, pc}
_0223E030:
	add r0, r5, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223E052
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r2, #6
	bl sub_02002134
	mov r1, #0x49
	mov r2, #1
	lsl r1, r1, #4
	strb r2, [r5, r1]
	b _0223E05E
_0223E052:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_02002114
_0223E05E:
	cmp r0, #0
	beq _0223E072
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223E128
	add r1, r1, #1
	cmp r0, r1
	beq _0223E100
	b _0223E148
_0223E072:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x35
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, _0223E150 ; =0x00000488
	ldrsh r0, [r5, r0]
	cmp r0, #1
	bne _0223E0A0
	add r2, r5, #0
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r0, #0x46
	add r2, #0x66
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B70C
	b _0223E0B6
_0223E0A0:
	add r2, r5, #0
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r0, #0x46
	add r2, #0x66
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B77C
_0223E0B6:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	mov r0, #0x46
	ldr r2, _0223E150 ; =0x00000488
	str r1, [sp, #4]
	lsl r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E154 ; =0x00000426
	add sp, #8
	strb r0, [r5, r1]
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_0223E100:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001DC8
	cmp r0, #1
	bne _0223E118
	add r0, r5, #0
	mov r1, #0x12
	bl ov84_0223EB08
	b _0223E148
_0223E118:
	cmp r0, #2
	bne _0223E148
	mov r1, #0x11
	add r0, r5, #0
	mvn r1, r1
	bl ov84_0223EB08
	b _0223E148
_0223E128:
	add r0, r5, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0200E084
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r5, #0
	mov r1, #1
	bl ov84_02240B34
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223E148:
	mov r0, #9
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223E150: .word 0x00000488
_0223E154: .word 0x00000426
	thumb_func_end ov84_0223E01C

	thumb_func_start ov84_0223E158
ov84_0223E158: ; 0x0223E158
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E184 ; =0x00000426
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	beq _0223E16C
	mov r0, #0xa
	pop {r4, pc}
_0223E16C:
	ldr r0, _0223E188 ; =0x00000479
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov84_0223DCF8
	add r4, #0x64
	add r0, r4, #0
	bl sub_0201A9A4
	mov r0, #0xb
	pop {r4, pc}
	; .align 2, 0
_0223E184: .word 0x00000426
_0223E188: .word 0x00000479
	thumb_func_end ov84_0223E158

	thumb_func_start ov84_0223E18C
ov84_0223E18C: ; 0x0223E18C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E1D4 ; =0x00000426
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0223E1D0
	ldr r0, _0223E1D8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0223E1AE
	ldr r0, _0223E1DC ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223E1D0
_0223E1AE:
	ldr r0, _0223E1E0 ; =0x00000479
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x64
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240B34
	mov r0, #1
	pop {r4, pc}
_0223E1D0:
	mov r0, #0xb
	pop {r4, pc}
	; .align 2, 0
_0223E1D4: .word 0x00000426
_0223E1D8: .word 0x021BF67C
_0223E1DC: .word 0x021BF6BC
_0223E1E0: .word 0x00000479
	thumb_func_end ov84_0223E18C

	thumb_func_start ov84_0223E1E4
ov84_0223E1E4: ; 0x0223E1E4
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, #0xc8
	add r1, #0x66
	ldrh r1, [r1]
	ldr r0, [r0, #0]
	bl sub_0207D404
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020013AC
	add r0, r4, #0
	bl ov84_0223FD84
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240B34
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov84_0223E1E4

	thumb_func_start ov84_0223E220
ov84_0223E220: ; 0x0223E220
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0207D404
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020013AC
	add r0, r4, #0
	bl ov84_0223FD84
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240B34
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov84_0223E220

	thumb_func_start ov84_0223E254
ov84_0223E254: ; 0x0223E254
	push {r4, lr}
	add r4, r0, #0
	bl ov84_0223FD84
	mov r0, #1
	mov r1, #6
	bl sub_0208C120
	add r0, r4, #0
	mov r1, #0
	bl ov84_0223D7E8
	add r4, #0xc4
	ldr r0, [r4, #0]
	mov r1, #2
	add r0, #0x68
	strh r1, [r0]
	mov r0, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov84_0223E254

	thumb_func_start ov84_0223E27C
ov84_0223E27C: ; 0x0223E27C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov84_0223D0FC
	add r0, r5, #0
	bl ov84_0223ED14
	cmp r0, #1
	bne _0223E292
	mov r0, #0xe
	pop {r3, r4, r5, pc}
_0223E292:
	add r0, r5, #0
	bl ov84_0223C750
	cmp r0, #1
	bne _0223E2A0
	mov r0, #2
	pop {r3, r4, r5, pc}
_0223E2A0:
	add r0, r5, #0
	bl ov84_0223CD40
	cmp r0, #1
	bne _0223E2AE
	mov r0, #2
	pop {r3, r4, r5, pc}
_0223E2AE:
	add r0, r5, #0
	bl ov84_0223C5B8
	cmp r0, #1
	bne _0223E34E
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #3
	add r0, #0x66
	ldrh r0, [r0]
	mov r2, #6
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E338
	add r0, r5, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	ldr r2, _0223E364 ; =0x000003D9
	add r0, #0x64
	mov r1, #0
	mov r3, #0xc
	bl sub_0200E060
	add r2, r5, #0
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r0, #0x46
	add r2, #0x66
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B70C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x2e
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E368 ; =0x00000426
	strb r0, [r5, r1]
	add r0, r5, #0
	mov r1, #2
	bl ov84_02240B34
	mov r0, #0xf
	pop {r3, r4, r5, pc}
_0223E338:
	add r5, #0xc4
	ldr r0, [r5, #0]
	mov r1, #4
	add r0, #0x68
	strh r1, [r0]
	mov r0, #1
	mov r1, #6
	bl sub_0208C120
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_0223E34E:
	cmp r0, #3
	bne _0223E360
	add r5, #0xc4
	ldr r0, [r5, #0]
	mov r1, #4
	add r0, #0x68
	strh r1, [r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_0223E360:
	mov r0, #0xe
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E364: .word 0x000003D9
_0223E368: .word 0x00000426
	thumb_func_end ov84_0223E27C

	thumb_func_start ov84_0223E36C
ov84_0223E36C: ; 0x0223E36C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E3B0 ; =0x00000426
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0223E3AC
	ldr r0, _0223E3B4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0223E38E
	ldr r0, _0223E3B8 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223E3AC
_0223E38E:
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240B34
	mov r0, #0xe
	pop {r4, pc}
_0223E3AC:
	mov r0, #0xf
	pop {r4, pc}
	; .align 2, 0
_0223E3B0: .word 0x00000426
_0223E3B4: .word 0x021BF67C
_0223E3B8: .word 0x021BF6BC
	thumb_func_end ov84_0223E36C

	thumb_func_start ov84_0223E3BC
ov84_0223E3BC: ; 0x0223E3BC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov84_0223D0FC
	add r0, r5, #0
	bl ov84_0223ED14
	cmp r0, #1
	bne _0223E3D6
	add sp, #8
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_0223E3D6:
	add r0, r5, #0
	bl ov84_0223C750
	cmp r0, #1
	bne _0223E3E6
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, pc}
_0223E3E6:
	add r0, r5, #0
	bl ov84_0223CD40
	cmp r0, #1
	bne _0223E3F6
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, pc}
_0223E3F6:
	add r0, r5, #0
	bl ov84_0223C5B8
	cmp r0, #1
	beq _0223E402
	b _0223E566
_0223E402:
	add r0, r5, #0
	mov r1, #0
	bl ov84_02240248
	add r0, r5, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	ldr r2, _0223E578 ; =0x000003D9
	add r0, #0x64
	mov r1, #0
	mov r3, #0xc
	bl sub_0200E060
	add r2, r5, #0
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r0, #0x46
	add r2, #0x66
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B70C
	add r0, r5, #0
	mov r1, #2
	bl ov84_02240B34
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #0
	add r0, #0x66
	ldrh r0, [r0]
	mov r2, #6
	bl sub_0207CFF0
	ldr r1, _0223E57C ; =0x0000048C
	mov r2, #6
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #3
	add r0, #0x66
	ldrh r0, [r0]
	bl sub_0207CFF0
	cmp r0, #0
	bne _0223E474
	ldr r1, _0223E57C ; =0x0000048C
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0223E4AA
_0223E474:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x4a
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E580 ; =0x00000426
	add sp, #8
	strb r0, [r5, r1]
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_0223E4AA:
	mov r2, #1
	sub r0, r1, #4
	strh r2, [r5, r0]
	ldr r0, [r5, r1]
	mov r3, #6
	lsr r0, r0, #1
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r2, r0
	ldr r0, [r1, #4]
	ldrb r1, [r1, #0xd]
	add r2, #0x66
	ldrh r2, [r2]
	sub r1, r1, #3
	bl sub_0207D748
	cmp r0, #1
	bne _0223E530
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x4c
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _0223E584 ; =0x00000488
	mov r0, #0x46
	ldrsh r3, [r5, r2]
	add r2, r2, #4
	lsl r0, r0, #2
	ldr r2, [r5, r2]
	ldr r0, [r5, r0]
	mul r2, r3
	mov r3, #6
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E580 ; =0x00000426
	add sp, #8
	strb r0, [r5, r1]
	mov r0, #0x13
	pop {r3, r4, r5, pc}
_0223E530:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x4b
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E580 ; =0x00000426
	add sp, #8
	strb r0, [r5, r1]
	mov r0, #0x11
	pop {r3, r4, r5, pc}
_0223E566:
	cmp r0, #3
	bne _0223E570
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_0223E570:
	mov r0, #0x10
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223E578: .word 0x000003D9
_0223E57C: .word 0x0000048C
_0223E580: .word 0x00000426
_0223E584: .word 0x00000488
	thumb_func_end ov84_0223E3BC

	thumb_func_start ov84_0223E588
ov84_0223E588: ; 0x0223E588
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E5BC ; =0x00000426
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0223E5B8
	ldr r0, _0223E5C0 ; =0x0000048A
	ldrh r1, [r4, r0]
	cmp r1, #0x63
	bls _0223E5A4
	mov r1, #0x63
	strh r1, [r4, r0]
_0223E5A4:
	add r0, r4, #0
	mov r1, #0
	bl ov84_02240148
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240CF0
	mov r0, #0x12
	pop {r4, pc}
_0223E5B8:
	mov r0, #0x11
	pop {r4, pc}
	; .align 2, 0
_0223E5BC: .word 0x00000426
_0223E5C0: .word 0x0000048A
	thumb_func_end ov84_0223E588

	thumb_func_start ov84_0223E5C4
ov84_0223E5C4: ; 0x0223E5C4
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r2, _0223E790 ; =0x00000488
	add r4, r0, #0
	add r1, r4, r2
	add r2, r2, #2
	ldrh r2, [r4, r2]
	bl ov84_0223EFD0
	cmp r0, #1
	bne _0223E5E8
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240148
	add sp, #8
	mov r0, #0x12
	pop {r3, r4, r5, pc}
_0223E5E8:
	add r0, r4, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223E668
	add r0, r4, #0
	mov r1, #0
	bl ov84_02240D3C
	add r0, r4, #0
	add r0, #0x74
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x4c
	bl sub_0200B1EC
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _0223E790 ; =0x00000488
	mov r0, #0x46
	ldrsh r3, [r4, r2]
	add r2, r2, #4
	lsl r0, r0, #2
	ldr r2, [r4, r2]
	ldr r0, [r4, r0]
	mul r2, r3
	mov r3, #6
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223E794 ; =0x00000426
	add sp, #8
	strb r0, [r4, r1]
	mov r0, #1
	add r1, #0x6a
	strb r0, [r4, r1]
	mov r0, #0x13
	pop {r3, r4, r5, pc}
_0223E668:
	ldr r1, _0223E790 ; =0x00000488
	add r0, r4, r1
	add r1, r1, #2
	ldrh r1, [r4, r1]
	bl sub_0208C15C
	cmp r0, #0
	beq _0223E6BC
	cmp r0, #1
	beq _0223E682
	cmp r0, #2
	beq _0223E69E
	b _0223E6BC
_0223E682:
	add r0, r4, #0
	mov r1, #0x12
	bl ov84_0223EB08
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240148
	ldr r0, _0223E798 ; =0x00000638
	bl sub_02005748
	add sp, #8
	mov r0, #0x12
	pop {r3, r4, r5, pc}
_0223E69E:
	mov r1, #0x11
	add r0, r4, #0
	mvn r1, r1
	bl ov84_0223EB08
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240148
	ldr r0, _0223E798 ; =0x00000638
	bl sub_02005748
	add sp, #8
	mov r0, #0x12
	pop {r3, r4, r5, pc}
_0223E6BC:
	ldr r0, _0223E79C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0223E73C
	add r0, r4, #0
	mov r1, #0
	bl ov84_02240D3C
	add r0, r4, #0
	add r0, #0x74
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x4c
	bl sub_0200B1EC
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _0223E790 ; =0x00000488
	mov r0, #0x46
	ldrsh r3, [r4, r2]
	add r2, r2, #4
	lsl r0, r0, #2
	ldr r2, [r4, r2]
	ldr r0, [r4, r0]
	mul r2, r3
	mov r3, #6
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223E794 ; =0x00000426
	strb r0, [r4, r1]
	ldr r0, _0223E7A0 ; =0x000005DC
	bl sub_02005748
	add sp, #8
	mov r0, #0x13
	pop {r3, r4, r5, pc}
_0223E73C:
	mov r0, #2
	tst r0, r1
	beq _0223E788
	ldr r0, _0223E7A4 ; =0x0000048C
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov84_02240D3C
	add r0, r4, #0
	add r0, #0x84
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x74
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240B34
	ldr r0, _0223E7A0 ; =0x000005DC
	bl sub_02005748
	add sp, #8
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_0223E788:
	mov r0, #0x12
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223E790: .word 0x00000488
_0223E794: .word 0x00000426
_0223E798: .word 0x00000638
_0223E79C: .word 0x021BF67C
_0223E7A0: .word 0x000005DC
_0223E7A4: .word 0x0000048C
	thumb_func_end ov84_0223E5C4

	thumb_func_start ov84_0223E7A8
ov84_0223E7A8: ; 0x0223E7A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E7C8 ; =0x00000426
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0223E7C2
	add r0, r4, #0
	bl ov84_02240120
	mov r0, #0x14
	pop {r4, pc}
_0223E7C2:
	mov r0, #0x13
	pop {r4, pc}
	nop
_0223E7C8: .word 0x00000426
	thumb_func_end ov84_0223E7A8

	thumb_func_start ov84_0223E7CC
ov84_0223E7CC: ; 0x0223E7CC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov84_0223EF4C
	cmp r0, #1
	bne _0223E7E0
	add sp, #8
	mov r0, #0x14
	pop {r3, r4, r5, pc}
_0223E7E0:
	add r0, r5, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223E802
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r2, #6
	bl sub_02002134
	mov r1, #0x49
	mov r2, #1
	lsl r1, r1, #4
	strb r2, [r5, r1]
	b _0223E80E
_0223E802:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_02002114
_0223E80E:
	cmp r0, #0
	beq _0223E822
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223E8DE
	add r1, r1, #1
	cmp r0, r1
	beq _0223E8B6
	b _0223E90E
_0223E822:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x4d
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, _0223E914 ; =0x00000488
	ldrsh r0, [r5, r0]
	cmp r0, #1
	ble _0223E850
	add r2, r5, #0
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r0, #0x46
	add r2, #0x66
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B77C
	b _0223E866
_0223E850:
	add r2, r5, #0
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r0, #0x46
	add r2, #0x66
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B70C
_0223E866:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	mov r0, #0x46
	ldr r2, _0223E914 ; =0x00000488
	str r1, [sp, #4]
	ldrsh r3, [r5, r2]
	add r2, r2, #4
	lsl r0, r0, #2
	ldr r2, [r5, r2]
	ldr r0, [r5, r0]
	mul r2, r3
	mov r3, #6
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E918 ; =0x00000426
	add sp, #8
	strb r0, [r5, r1]
	mov r0, #0x15
	pop {r3, r4, r5, pc}
_0223E8B6:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001DC8
	cmp r0, #1
	bne _0223E8CE
	add r0, r5, #0
	mov r1, #0x12
	bl ov84_0223EB08
	b _0223E90E
_0223E8CE:
	cmp r0, #2
	bne _0223E90E
	mov r1, #0x11
	add r0, r5, #0
	mvn r1, r1
	bl ov84_0223EB08
	b _0223E90E
_0223E8DE:
	ldr r0, _0223E91C ; =0x0000048C
	mov r1, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x84
	mov r1, #1
	bl sub_0200DC9C
	add r0, r5, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0200E084
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r5, #0
	mov r1, #1
	bl ov84_02240B34
	add sp, #8
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_0223E90E:
	mov r0, #0x14
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E914: .word 0x00000488
_0223E918: .word 0x00000426
_0223E91C: .word 0x0000048C
	thumb_func_end ov84_0223E7CC

	thumb_func_start ov84_0223E920
ov84_0223E920: ; 0x0223E920
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E9A0 ; =0x00000426
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	beq _0223E934
	mov r0, #0x15
	pop {r4, pc}
_0223E934:
	ldr r0, _0223E9A4 ; =0x00000644
	bl sub_02005748
	ldr r1, _0223E9A8 ; =0x00000488
	add r0, r4, #0
	ldrsh r2, [r4, r1]
	add r1, r1, #4
	add r0, #0xcc
	ldr r1, [r4, r1]
	ldr r0, [r0, #0]
	mul r1, r2
	bl sub_02025F94
	ldr r0, _0223E9A8 ; =0x00000488
	ldrsh r0, [r4, r0]
	cmp r0, #1
	bne _0223E974
	add r0, r4, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0223E980
	add r0, r1, #0
	add r0, #0x75
	ldrb r0, [r0]
	add r1, #0x75
	add r0, r0, #1
	strb r0, [r1]
	b _0223E980
_0223E974:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #2
	add r0, #0x75
	strb r1, [r0]
_0223E980:
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240248
	ldr r0, _0223E9AC ; =0x00000479
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov84_0223DCF8
	add r4, #0x64
	add r0, r4, #0
	bl sub_0201A9A4
	mov r0, #0x16
	pop {r4, pc}
	; .align 2, 0
_0223E9A0: .word 0x00000426
_0223E9A4: .word 0x00000644
_0223E9A8: .word 0x00000488
_0223E9AC: .word 0x00000479
	thumb_func_end ov84_0223E920

	thumb_func_start ov84_0223E9B0
ov84_0223E9B0: ; 0x0223E9B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223EA08 ; =0x00000426
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0223EA04
	ldr r0, _0223EA0C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0223E9D2
	ldr r0, _0223EA10 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223EA04
_0223E9D2:
	ldr r0, _0223EA14 ; =0x00000479
	mov r1, #0
	strb r1, [r4, r0]
	add r0, #0x13
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x84
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240B34
	mov r0, #0x10
	pop {r4, pc}
_0223EA04:
	mov r0, #0x16
	pop {r4, pc}
	; .align 2, 0
_0223EA08: .word 0x00000426
_0223EA0C: .word 0x021BF67C
_0223EA10: .word 0x021BF6BC
_0223EA14: .word 0x00000479
	thumb_func_end ov84_0223E9B0

	thumb_func_start ov84_0223EA18
ov84_0223EA18: ; 0x0223EA18
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov84_0223D0FC
	add r0, r4, #0
	bl ov84_0223ED14
	cmp r0, #1
	bne _0223EA32
	add sp, #4
	mov r0, #0x17
	pop {r3, r4, pc}
_0223EA32:
	add r0, r4, #0
	bl ov84_0223C750
	cmp r0, #1
	bne _0223EA42
	add sp, #4
	mov r0, #2
	pop {r3, r4, pc}
_0223EA42:
	add r0, r4, #0
	bl ov84_0223CD40
	cmp r0, #1
	bne _0223EA52
	add sp, #4
	mov r0, #2
	pop {r3, r4, pc}
_0223EA52:
	add r0, r4, #0
	bl ov84_0223C5B8
	cmp r0, #1
	bne _0223EAE4
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r1, r0, r1
	ldrb r1, [r1, #0xc]
	cmp r1, #0
	bne _0223EACC
	add r0, #0x66
	ldrh r0, [r0]
	mov r1, #6
	add r2, r1, #0
	bl sub_0207CFF0
	cmp r0, #0xd
	beq _0223EACC
	mov r3, #6
	add r2, r4, #0
	str r3, [sp]
	add r2, #0xc4
	ldr r2, [r2, #0]
	add r0, r4, #0
	mov r1, #0xfe
	add r2, #0x66
	add r0, #0xcc
	lsl r1, r1, #2
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	sub r3, r3, #7
	bl sub_0207CD34
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	ldr r2, _0223EB00 ; =0x000003D9
	add r0, #0x64
	mov r1, #0
	mov r3, #0xc
	bl sub_0200E060
	add r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223EB04 ; =0x00000426
	add sp, #4
	strb r0, [r4, r1]
	mov r0, #0xc
	pop {r3, r4, pc}
_0223EACC:
	add r4, #0xc4
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, #0x68
	strh r1, [r0]
	mov r0, #1
	mov r1, #6
	bl sub_0208C120
	add sp, #4
	mov r0, #0x18
	pop {r3, r4, pc}
_0223EAE4:
	cmp r0, #3
	bne _0223EAF8
	add r4, #0xc4
	ldr r0, [r4, #0]
	mov r1, #5
	add r0, #0x68
	strh r1, [r0]
	add sp, #4
	mov r0, #0x18
	pop {r3, r4, pc}
_0223EAF8:
	mov r0, #0x17
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223EB00: .word 0x000003D9
_0223EB04: .word 0x00000426
	thumb_func_end ov84_0223EA18

	thumb_func_start ov84_0223EB08
ov84_0223EB08: ; 0x0223EB08
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	mov r1, #7
	bl sub_02019FFC
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r0, r5
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r5, r0
	blt _0223EB30
	sub r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	b _0223EB3A
_0223EB30:
	cmp r5, #0
	bge _0223EB3A
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
_0223EB3A:
	lsl r3, r5, #0x10
	ldr r0, [r4, #0]
	mov r1, #7
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0201C660
	ldr r0, _0223EB50 ; =0x0000049A
	strh r5, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0223EB50: .word 0x0000049A
	thumb_func_end ov84_0223EB08

	thumb_func_start ov84_0223EB54
ov84_0223EB54: ; 0x0223EB54
	push {r3, lr}
	ldr r0, _0223EB68 ; =0x02240EA8
	bl sub_020226DC
	cmp r0, #1
	bne _0223EB64
	mov r0, #1
	pop {r3, pc}
_0223EB64:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0223EB68: .word 0x02240EA8
	thumb_func_end ov84_0223EB54

	thumb_func_start ov84_0223EB6C
ov84_0223EB6C: ; 0x0223EB6C
	push {r3, lr}
	ldr r0, _0223EB80 ; =0x02240EB4
	bl sub_02022684
	cmp r0, #1
	bne _0223EB7C
	mov r0, #1
	pop {r3, pc}
_0223EB7C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0223EB80: .word 0x02240EB4
	thumb_func_end ov84_0223EB6C

	thumb_func_start ov84_0223EB84
ov84_0223EB84: ; 0x0223EB84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov84_0223EB54
	cmp r0, #1
	bne _0223EBB2
	ldr r1, _0223ECF8 ; =0x00000492
	mov r0, #1
	strb r0, [r5, r1]
	mov r2, #0
	add r0, r1, #6
	strh r2, [r5, r0]
	add r0, r1, #2
	str r2, [r5, r0]
	add r0, r1, #0
	ldr r2, _0223ECFC ; =0x021BF6BC
	add r0, #0xc
	ldrh r3, [r2, #0x1c]
	add r1, #0xe
	strh r3, [r5, r0]
	ldrh r0, [r2, #0x1e]
	strh r0, [r5, r1]
_0223EBB2:
	ldr r0, _0223ECF8 ; =0x00000492
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _0223EBBC
	b _0223ECF2
_0223EBBC:
	bl ov84_0223EB6C
	cmp r0, #1
	beq _0223EBC6
	b _0223ECE4
_0223EBC6:
	mov r3, #0x50
	ldr r1, _0223ED00 ; =0x0000049E
	str r3, [sp]
	ldr r4, _0223ECFC ; =0x021BF6BC
	ldrh r0, [r5, r1]
	add r1, r1, #2
	ldrh r1, [r5, r1]
	ldrh r2, [r4, #0x1c]
	mov r7, #0x80
	ldrh r4, [r4, #0x1e]
	sub r1, r3, r1
	sub r0, r7, r0
	sub r2, r7, r2
	sub r3, r3, r4
	bl sub_0201D4CC
	add r4, r0, #0
	mov r0, #0x50
	lsl r1, r4, #1
	bl sub_0201D580
	lsl r0, r0, #8
	mov r1, #0xb6
	bl sub_020E1F6C
	ldr r1, _0223ED04 ; =0x0000049A
	asr r3, r0, #8
	ldrsh r2, [r5, r1]
	add r0, r5, r1
	add r2, r2, r3
	strh r2, [r0]
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bge _0223EC18
	mov r1, #0
	ldrsh r2, [r0, r1]
	add r1, r7, #0
	add r1, #0xe8
	add r1, r2, r1
	strh r1, [r0]
	b _0223EC28
_0223EC18:
	add r2, r7, #0
	add r2, #0xe8
	cmp r1, r2
	blt _0223EC28
	mov r1, #0
	ldrsh r1, [r0, r1]
	sub r1, r1, r2
	strh r1, [r0]
_0223EC28:
	ldr r3, _0223ED04 ; =0x0000049A
	ldr r0, [r5, #0]
	ldrh r3, [r5, r3]
	mov r1, #7
	mov r2, #0
	bl sub_0201C660
	ldr r0, _0223ED08 ; =0x000001F6
	add r1, r6, #0
	bl sub_020E1F6C
	add r6, r0, #0
	cmp r4, #0
	ble _0223EC8C
	ldr r0, _0223ED0C ; =0x00000498
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _0223EC66
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020E1F6C
	ldr r1, _0223ED0C ; =0x00000498
	strh r0, [r5, r1]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020E1F6C
	ldr r0, _0223ED10 ; =0x00000494
	str r1, [r5, r0]
	b _0223ECD4
_0223EC66:
	sub r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r0, r0, r4
	bl sub_020E1F6C
	ldr r1, _0223ED0C ; =0x00000498
	ldrsh r2, [r5, r1]
	add r0, r2, r0
	strh r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r0, r0, r4
	bl sub_020E1F6C
	ldr r0, _0223ED10 ; =0x00000494
	str r1, [r5, r0]
	b _0223ECD4
_0223EC8C:
	bge _0223ECD4
	ldr r0, _0223ED0C ; =0x00000498
	ldrsh r1, [r5, r0]
	cmp r1, #0
	ble _0223ECB0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020E1F6C
	ldr r1, _0223ED0C ; =0x00000498
	strh r0, [r5, r1]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020E1F6C
	ldr r0, _0223ED10 ; =0x00000494
	str r1, [r5, r0]
	b _0223ECD4
_0223ECB0:
	sub r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r0, r0, r4
	bl sub_020E1F6C
	ldr r1, _0223ED0C ; =0x00000498
	ldrsh r2, [r5, r1]
	add r0, r2, r0
	strh r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r0, r0, r4
	bl sub_020E1F6C
	ldr r0, _0223ED10 ; =0x00000494
	str r1, [r5, r0]
_0223ECD4:
	ldr r1, _0223ECFC ; =0x021BF6BC
	ldr r0, _0223ED00 ; =0x0000049E
	ldrh r2, [r1, #0x1c]
	strh r2, [r5, r0]
	ldrh r1, [r1, #0x1e]
	add r0, r0, #2
	strh r1, [r5, r0]
	b _0223ECEE
_0223ECE4:
	ldr r0, _0223ECF8 ; =0x00000492
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r0, #6
	strh r1, [r5, r0]
_0223ECEE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223ECF2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223ECF8: .word 0x00000492
_0223ECFC: .word 0x021BF6BC
_0223ED00: .word 0x0000049E
_0223ED04: .word 0x0000049A
_0223ED08: .word 0x000001F6
_0223ED0C: .word 0x00000498
_0223ED10: .word 0x00000494
	thumb_func_end ov84_0223EB84

	thumb_func_start ov84_0223ED14
ov84_0223ED14: ; 0x0223ED14
	push {r4, lr}
	mov r1, #0x24
	add r4, r0, #0
	bl ov84_0223EB84
	ldr r1, _0223ED60 ; =0x00000498
	ldrsh r1, [r4, r1]
	cmp r1, #0
	ble _0223ED42
	add r0, r4, #0
	mov r1, #0x40
	bl ov84_0223ED64
	cmp r0, #1
	ldr r0, _0223ED60 ; =0x00000498
	bne _0223ED3A
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	b _0223ED3C
_0223ED3A:
	mov r1, #0
_0223ED3C:
	strh r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0223ED42:
	bge _0223ED5E
	add r0, r4, #0
	mov r1, #0x80
	bl ov84_0223ED64
	cmp r0, #1
	ldr r0, _0223ED60 ; =0x00000498
	bne _0223ED58
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	b _0223ED5A
_0223ED58:
	mov r1, #0
_0223ED5A:
	strh r1, [r4, r0]
	mov r0, #1
_0223ED5E:
	pop {r4, pc}
	; .align 2, 0
_0223ED60: .word 0x00000498
	thumb_func_end ov84_0223ED14

	thumb_func_start ov84_0223ED64
ov84_0223ED64: ; 0x0223ED64
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	mov r5, #0xc
	add r0, r3, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r2, r0, #0
	mul r2, r5
	add r0, r3, r2
	ldrh r0, [r0, #0xa]
	add r3, sp, #0x10
	strh r0, [r3, #2]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #0
	add r2, #0x64
	ldrb r2, [r2]
	mul r5, r2
	add r0, r0, r5
	ldrh r0, [r0, #8]
	strh r0, [r3]
	mov r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	str r1, [sp, #4]
	add r0, #2
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x57
	lsl r0, r0, #2
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001408
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	add r5, r2, #0
	mul r5, r1
	add r1, sp, #0x10
	add r2, r0, r5
	ldrh r3, [r1, #2]
	ldrh r0, [r2, #0xa]
	cmp r3, r0
	bne _0223EDE2
	ldrh r1, [r1]
	ldrh r0, [r2, #8]
	cmp r1, r0
	bne _0223EDE2
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223EDE2:
	add r2, sp, #0x10
	ldrh r2, [r2]
	add r0, r4, #0
	add r0, #0xf0
	sub r2, r2, #1
	lsl r2, r2, #4
	add r2, #0x18
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #0xb1
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xc4
	ldr r6, [r0, #0]
	add r2, sp, #0x10
	add r0, r6, #0
	add r0, #0x64
	ldrb r0, [r0]
	ldrh r5, [r2, #2]
	mov r1, #0xc
	add r3, r0, #0
	mul r3, r1
	add r0, r6, r3
	strh r5, [r0, #0xa]
	add r4, #0xc4
	ldr r3, [r4, #0]
	ldrh r2, [r2]
	add r0, r3, #0
	add r0, #0x64
	ldrb r0, [r0]
	mul r1, r0
	add r0, r3, r1
	strh r2, [r0, #8]
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov84_0223ED64

	thumb_func_start ov84_0223EE30
ov84_0223EE30: ; 0x0223EE30
	push {r4, lr}
	mov r1, #0x24
	add r4, r0, #0
	bl ov84_0223EB84
	ldr r1, _0223EE7C ; =0x00000498
	ldrsh r1, [r4, r1]
	cmp r1, #0
	ble _0223EE5E
	add r0, r4, #0
	mov r1, #0x40
	bl ov84_0223EE80
	cmp r0, #1
	ldr r0, _0223EE7C ; =0x00000498
	bne _0223EE56
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	b _0223EE58
_0223EE56:
	mov r1, #0
_0223EE58:
	strh r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0223EE5E:
	bge _0223EE7A
	add r0, r4, #0
	mov r1, #0x80
	bl ov84_0223EE80
	cmp r0, #1
	ldr r0, _0223EE7C ; =0x00000498
	bne _0223EE74
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	b _0223EE76
_0223EE74:
	mov r1, #0
_0223EE76:
	strh r1, [r4, r0]
	mov r0, #1
_0223EE7A:
	pop {r4, pc}
	; .align 2, 0
_0223EE7C: .word 0x00000498
	thumb_func_end ov84_0223EE30

	thumb_func_start ov84_0223EE80
ov84_0223EE80: ; 0x0223EE80
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0xc4
	ldr r3, [r0, #0]
	mov r5, #0xc
	add r0, r3, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r2, r0, #0
	mul r2, r5
	add r0, r3, r2
	ldrh r0, [r0, #0xa]
	add r3, sp, #0x10
	strh r0, [r3, #2]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #0
	add r2, #0x64
	ldrb r2, [r2]
	mul r5, r2
	add r0, r0, r5
	ldrh r0, [r0, #8]
	strh r0, [r3]
	mov r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	str r1, [sp, #4]
	add r0, #2
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x57
	lsl r0, r0, #2
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001408
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	add r5, r2, #0
	mul r5, r1
	add r1, sp, #0x10
	add r2, r0, r5
	ldrh r3, [r1, #2]
	ldrh r0, [r2, #0xa]
	cmp r3, r0
	bne _0223EEFE
	ldrh r1, [r1]
	ldrh r0, [r2, #8]
	cmp r1, r0
	bne _0223EEFE
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223EEFE:
	add r2, sp, #0x10
	ldrh r2, [r2]
	add r0, r4, #0
	add r0, #0xf4
	sub r2, r2, #1
	lsl r2, r2, #4
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #0xb1
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xc4
	ldr r6, [r0, #0]
	add r2, sp, #0x10
	add r0, r6, #0
	add r0, #0x64
	ldrb r0, [r0]
	ldrh r5, [r2, #2]
	mov r1, #0xc
	add r3, r0, #0
	mul r3, r1
	add r0, r6, r3
	strh r5, [r0, #0xa]
	add r4, #0xc4
	ldr r3, [r4, #0]
	ldrh r2, [r2]
	add r0, r3, #0
	add r0, #0x64
	ldrb r0, [r0]
	mul r1, r0
	add r0, r3, r1
	strh r2, [r0, #8]
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov84_0223EE80

	thumb_func_start ov84_0223EF4C
ov84_0223EF4C: ; 0x0223EF4C
	push {r4, lr}
	mov r1, #0x12
	add r4, r0, #0
	bl ov84_0223EB84
	ldr r1, _0223EF98 ; =0x00000498
	ldrsh r1, [r4, r1]
	cmp r1, #0
	ble _0223EF7A
	add r0, r4, #0
	mov r1, #2
	bl ov84_0223EF9C
	cmp r0, #1
	ldr r0, _0223EF98 ; =0x00000498
	bne _0223EF72
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	b _0223EF74
_0223EF72:
	mov r1, #0
_0223EF74:
	strh r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0223EF7A:
	bge _0223EF96
	add r0, r4, #0
	mov r1, #3
	bl ov84_0223EF9C
	cmp r0, #1
	ldr r0, _0223EF98 ; =0x00000498
	bne _0223EF90
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	b _0223EF92
_0223EF90:
	mov r1, #0
_0223EF92:
	strh r1, [r4, r0]
	mov r0, #1
_0223EF96:
	pop {r4, pc}
	; .align 2, 0
_0223EF98: .word 0x00000498
	thumb_func_end ov84_0223EF4C

	thumb_func_start ov84_0223EF9C
ov84_0223EF9C: ; 0x0223EF9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	bl sub_02001DC4
	add r4, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02001D44
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001DC4
	cmp r4, r0
	beq _0223EFCC
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223EFCC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_0223EF9C

	thumb_func_start ov84_0223EFD0
ov84_0223EFD0: ; 0x0223EFD0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x12
	add r5, r0, #0
	add r6, r2, #0
	bl ov84_0223EB84
	ldr r7, _0223F038 ; =0x00000498
	mov r1, #0
	ldrsh r2, [r5, r7]
	ldrsh r3, [r4, r1]
	cmp r2, #0
	ble _0223F010
	sub r0, r2, #1
	strh r0, [r5, r7]
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	strh r0, [r4]
	ldrsh r0, [r4, r1]
	cmp r0, r6
	ble _0223EFFE
	mov r0, #1
	strh r0, [r4]
_0223EFFE:
	mov r0, #0
	ldrsh r1, [r4, r0]
	cmp r1, r3
	beq _0223F034
	ldr r0, _0223F03C ; =0x00000638
	bl sub_02005748
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223F010:
	bge _0223F034
	add r0, r2, #1
	strh r0, [r5, r7]
	ldrsh r0, [r4, r1]
	sub r0, r0, #1
	strh r0, [r4]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0223F024
	strh r6, [r4]
_0223F024:
	mov r0, #0
	ldrsh r1, [r4, r0]
	cmp r1, r3
	beq _0223F034
	ldr r0, _0223F03C ; =0x00000638
	bl sub_02005748
	mov r0, #1
_0223F034:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F038: .word 0x00000498
_0223F03C: .word 0x00000638
	thumb_func_end ov84_0223EFD0

	thumb_func_start ov84_0223F040
ov84_0223F040: ; 0x0223F040
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r2, #2
	mov r3, #0xe
	bl sub_0201A7E8
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1BC ; =0x00000133
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r2, #0
	ldr r0, [r4, #0]
	add r1, #0x14
	add r3, r2, #0
	bl sub_0201A7E8
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0x24
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0223F1C0 ; =0x000001F3
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x24
	mov r2, #2
	mov r3, #0
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _0223F1C4 ; =0x0000025F
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x34
	mov r2, #0
	mov r3, #6
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _0223F1C4 ; =0x0000025F
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x44
	mov r2, #0
	mov r3, #6
	bl sub_0201A7E8
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0223F1C8 ; =0x00000297
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r2, #0
	ldr r0, [r4, #0]
	add r1, #0x54
	add r3, r2, #0
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _0223F1CC ; =0x000002AF
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x64
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D0 ; =0x00000337
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x74
	mov r2, #0
	mov r3, #0x13
	bl sub_0201A7E8
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D4 ; =0x00000367
	add r1, #0x84
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	mov r2, #0
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D8 ; =0x00000387
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x94
	mov r2, #0
	mov r3, #0x18
	bl sub_0201A7E8
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D8 ; =0x00000387
	mov r2, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r4, #0xa4
	add r1, r4, #0
	mov r3, #1
	bl sub_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223F1BC: .word 0x00000133
_0223F1C0: .word 0x000001F3
_0223F1C4: .word 0x0000025F
_0223F1C8: .word 0x00000297
_0223F1CC: .word 0x000002AF
_0223F1D0: .word 0x00000337
_0223F1D4: .word 0x00000367
_0223F1D8: .word 0x00000387
	thumb_func_end ov84_0223F040

	thumb_func_start ov84_0223F1DC
ov84_0223F1DC: ; 0x0223F1DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0223F1E2:
	lsl r0, r4, #4
	add r0, r5, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xb
	blo _0223F1E2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov84_0223F1DC

	thumb_func_start ov84_0223F1F8
ov84_0223F1F8: ; 0x0223F1F8
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0223F230 ; =0x0000018B
	add r5, r0, #0
	mov r0, #1
	mov r1, #0x1a
	mov r3, #6
	bl sub_0200B144
	ldr r7, _0223F234 ; =0x00000404
	add r6, r0, #0
	mov r4, #0
_0223F20E:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200B1EC
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, r7]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #8
	blo _0223F20E
	add r0, r6, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F230: .word 0x0000018B
_0223F234: .word 0x00000404
	thumb_func_end ov84_0223F1F8

	thumb_func_start ov84_0223F238
ov84_0223F238: ; 0x0223F238
	push {r4, r5, r6, lr}
	ldr r6, _0223F258 ; =0x00000404
	add r5, r0, #0
	mov r4, #0
_0223F240:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_020237BC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #8
	blo _0223F240
	pop {r4, r5, r6, pc}
	nop
_0223F258: .word 0x00000404
	thumb_func_end ov84_0223F238

	thumb_func_start ov84_0223F25C
ov84_0223F25C: ; 0x0223F25C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xd
	mov r7, #1
_0223F268:
	str r6, [sp]
	ldr r2, _0223F2B8 ; =0x000001FF
	str r7, [sp, #4]
	add r2, r4, r2
	lsl r2, r2, #0x10
	lsl r3, r4, #0x18
	str r7, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #0xe
	str r0, [sp]
	mov r0, #1
	ldr r2, _0223F2BC ; =0x00000223
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #3
	add r2, r4, r2
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r4, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xc
	blo _0223F268
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F2B8: .word 0x000001FF
_0223F2BC: .word 0x00000223
	thumb_func_end ov84_0223F25C

	thumb_func_start ov84_0223F2C0
ov84_0223F2C0: ; 0x0223F2C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	add r4, r2, #0
	add r2, r0, #0
	add r6, r1, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F2F8 ; =0x00010200
	lsr r3, r3, #1
	add r5, #0x24
	str r0, [sp, #8]
	mov r1, #0
	add r0, r5, #0
	add r2, r6, #0
	sub r3, r4, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223F2F8: .word 0x00010200
	thumb_func_end ov84_0223F2C0

	thumb_func_start ov84_0223F2FC
ov84_0223F2FC: ; 0x0223F2FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x24
	mov r1, #0
	bl sub_0201ADA4
	add r2, r4, #0
	add r2, #0xc4
	ldr r6, [r2, #0]
	ldr r1, _0223F38C ; =0x00000429
	add r2, r6, #0
	add r2, #0x64
	ldrb r3, [r2]
	mov r2, #0xc
	add r0, r4, r1
	add r5, r3, #0
	mul r5, r2
	add r3, r6, r5
	ldrb r3, [r3, #0xc]
	lsl r3, r3, #2
	add r5, r4, r3
	add r3, r1, #0
	sub r3, #0x25
	ldr r7, [r5, r3]
	ldrb r3, [r0]
	sub r1, #0x25
	add r5, r3, #0
	mul r5, r2
	add r3, r6, r5
	ldrb r3, [r3, #0xc]
	lsl r3, r3, #2
	add r3, r4, r3
	ldr r1, [r3, r1]
	ldrb r3, [r0, #1]
	ldrb r0, [r0, #3]
	cmp r3, #0
	bne _0223F35E
	mul r2, r0
	add r2, #0x92
	lsl r0, r2, #0x10
	lsr r5, r0, #0x10
	add r2, r5, #0
	sub r2, #0x60
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl ov84_0223F2C0
	b _0223F376
_0223F35E:
	mul r2, r0
	mov r0, #0x92
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r2, r5, #0
	add r2, #0x60
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl ov84_0223F2C0
_0223F376:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov84_0223F2C0
	add r4, #0x24
	add r0, r4, #0
	bl sub_0201ACCC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F38C: .word 0x00000429
	thumb_func_end ov84_0223F2FC

	thumb_func_start ov84_0223F390
ov84_0223F390: ; 0x0223F390
	push {r3, r4, r5, lr}
	add r0, #0xd4
	ldr r0, [r0, #0]
	add r5, r1, #0
	mov r1, #0x15
	mov r2, #6
	bl sub_02006CB8
	add r1, r5, #0
	add r4, r0, #0
	bl sub_020A7164
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F390

	thumb_func_start ov84_0223F3AC
ov84_0223F3AC: ; 0x0223F3AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, sp, #0x18
	add r5, r0, #0
	add r6, r2, #0
	bl ov84_0223F390
	add r7, r0, #0
	cmp r6, #1
	bne _0223F3D8
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	mov r0, #0xc
	mul r0, r4
	add r0, r1, r0
	ldrb r0, [r0, #0xc]
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x18
	b _0223F3E8
_0223F3D8:
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	mov r0, #0xc
	mul r0, r4
	add r0, r1, r0
	ldrb r0, [r0, #0xc]
	lsl r0, r0, #0x1d
_0223F3E8:
	lsr r2, r0, #0x18
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x10
	ldr r1, _0223F434 ; =0x00000427
	str r0, [sp, #4]
	ldrb r0, [r5, r1]
	add r1, r1, #1
	ldrb r1, [r5, r1]
	add r3, r1, #0
	mul r3, r4
	add r0, r0, r3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	ldr r1, [r1, #0x14]
	add r0, #0x54
	mov r3, #0
	bl sub_0201ADDC
	add r5, #0x54
	add r0, r5, #0
	bl sub_0201A9A4
	mov r0, #6
	add r1, r7, #0
	bl sub_02018238
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F434: .word 0x00000427
	thumb_func_end ov84_0223F3AC

	thumb_func_start ov84_0223F438
ov84_0223F438: ; 0x0223F438
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r1, sp, #0x1c
	bl ov84_0223F390
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0x54
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _0223F4E0 ; =0x00000424
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bls _0223F4CC
	mov r7, #1
	add r6, r5, #0
	lsl r7, r7, #8
	add r6, #0x54
_0223F462:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x64
	ldrb r1, [r1]
	cmp r4, r1
	bne _0223F482
	mov r1, #0xc
	mul r1, r4
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x18
	b _0223F48C
_0223F482:
	mov r1, #0xc
	mul r1, r4
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	lsl r0, r0, #0x1d
_0223F48C:
	lsr r2, r0, #0x18
	str r7, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0223F4E4 ; =0x00000427
	ldrb r3, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	add r1, r0, #0
	mul r1, r4
	add r0, r3, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	ldr r1, [r1, #0x14]
	mov r3, #0
	bl sub_0201ADDC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _0223F4E0 ; =0x00000424
	ldrb r0, [r5, r0]
	cmp r4, r0
	blo _0223F462
_0223F4CC:
	add r5, #0x54
	add r0, r5, #0
	bl sub_0201A9A4
	ldr r1, [sp, #0x18]
	mov r0, #6
	bl sub_02018238
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F4E0: .word 0x00000424
_0223F4E4: .word 0x00000427
	thumb_func_end ov84_0223F438

	thumb_func_start ov84_0223F4E8
ov84_0223F4E8: ; 0x0223F4E8
	push {r3, r4, r5, lr}
	lsl r1, r1, #0x10
	add r4, r2, #0
	lsr r1, r1, #0x10
	mov r2, #0
	add r5, r0, #0
	bl ov84_0223BE5C
	add r2, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200B70C
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F4E8

	thumb_func_start ov84_0223F508
ov84_0223F508: ; 0x0223F508
	push {r3, r4, r5, lr}
	lsl r1, r1, #0x10
	add r4, r2, #0
	lsr r1, r1, #0x10
	mov r2, #0
	add r5, r0, #0
	bl ov84_0223BE5C
	add r2, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200B77C
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F508

	thumb_func_start ov84_0223F528
ov84_0223F528: ; 0x0223F528
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0223F57C ; =0x0000FFFF
	add r6, r1, #0
	cmp r6, r0
	beq _0223F54A
	mov r0, #0x82
	mov r1, #6
	bl sub_02023790
	add r1, r6, #0
	mov r2, #6
	add r4, r0, #0
	bl sub_0207CFC8
	b _0223F558
_0223F54A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x5e
	bl sub_0200B1EC
	add r4, r0, #0
_0223F558:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F580 ; =0x000F0E00
	add r5, #0x14
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0x28
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223F57C: .word 0x0000FFFF
_0223F580: .word 0x000F0E00
	thumb_func_end ov84_0223F528

	thumb_func_start ov84_0223F584
ov84_0223F584: ; 0x0223F584
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r5, #0
	add r0, r1, #0
	add r4, #0x14
	bl sub_0207D268
	str r0, [sp, #0x10]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x62
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x56
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x59
	bl sub_0200B1EC
	add r6, r0, #0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0x60
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x57
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x60
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x58
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x60
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_020790DC
	add r7, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x5a
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	mov r3, #2
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r2, #0xfe
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r3, #0x30
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	mov r1, #2
	bl sub_020790C4
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	cmp r7, #1
	bhi _0223F6FA
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x18
	bl sub_0200B1EC
	b _0223F706
_0223F6FA:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x5b
	bl sub_0200B1EC
_0223F706:
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r7, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r2, #0xfe
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r3, #0xa0
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	mov r1, #4
	bl sub_020790C4
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	bne _0223F770
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x18
	bl sub_0200B1EC
	b _0223F77C
_0223F770:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x5b
	bl sub_0200B1EC
_0223F77C:
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r7, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r2, #0xfe
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r3, #0xa0
	bl sub_0201D78C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223F7D0: .word 0x000F0E00
	thumb_func_end ov84_0223F584

	thumb_func_start ov84_0223F7D4
ov84_0223F7D4: ; 0x0223F7D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x26
	bl sub_0200B1EC
	mov r1, #0xff
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x25
	bl sub_0200B1EC
	mov r1, #1
	lsl r1, r1, #0xa
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov84_0223F7D4

	thumb_func_start ov84_0223F800
ov84_0223F800: ; 0x0223F800
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov84_0223F800

	thumb_func_start ov84_0223F81C
ov84_0223F81C: ; 0x0223F81C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r4, r2, #0
	add r1, r0, #0
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	add r6, r3, #0
	mul r1, r2
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	str r4, [sp]
	bne _0223F858
	mov r2, #0xff
	str r2, [sp, #4]
	str r6, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #4
	mov r3, #0x73
	bl sub_0201D78C
	b _0223F86E
_0223F858:
	mov r2, #0xff
	str r2, [sp, #4]
	str r6, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #4
	mov r3, #0x6d
	bl sub_0201D78C
_0223F86E:
	mov r0, #0xa
	mov r1, #6
	bl sub_02023790
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r2, #1
	lsl r0, r0, #2
	lsl r2, r2, #0xa
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r1, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r4, #0x86
	str r6, [sp, #8]
	mov r1, #0
	add r0, r5, #4
	add r2, r7, #0
	sub r3, r4, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov84_0223F81C

	thumb_func_start ov84_0223F8D0
ov84_0223F8D0: ; 0x0223F8D0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r4, r2, #0
	add r5, r0, #0
	mov r0, #0x69
	ldrh r2, [r6]
	lsl r0, r0, #2
	cmp r2, r0
	bhs _0223F91A
	add r1, r0, #0
	sub r1, #0x5d
	sub r1, r2, r1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	mov r1, #2
	str r1, [sp]
	add r3, r5, #4
	str r3, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	add r3, r4, #5
	str r3, [sp, #0xc]
	sub r0, #0x94
	ldr r0, [r5, r0]
	add r3, r1, #0
	bl sub_0200C648
	lsl r2, r4, #0x10
	ldrh r1, [r6, #2]
	ldr r3, _0223F948 ; =0x00010200
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl ov84_0223F81C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0223F91A:
	sub r1, r0, #1
	sub r1, r2, r1
	add r2, r5, #4
	str r2, [sp]
	mov r2, #0x10
	str r2, [sp, #4]
	add r2, r4, #5
	str r2, [sp, #8]
	sub r0, #0x94
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	mov r2, #2
	mov r3, #1
	bl sub_0200C5BC
	add r0, r5, #0
	add r1, r4, #0
	bl ov84_0223F9B0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223F948: .word 0x00010200
	thumb_func_end ov84_0223F8D0

	thumb_func_start ov84_0223F94C
ov84_0223F94C: ; 0x0223F94C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	add r6, r2, #0
	bl sub_0207D344
	mov r1, #2
	add r2, r0, #0
	str r1, [sp]
	add r0, r5, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r6, #5
	str r0, [sp, #0xc]
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r2, r2, #1
	add r3, r1, #0
	bl sub_0200C648
	lsl r2, r6, #0x10
	ldrh r1, [r4, #2]
	ldr r3, _0223F990 ; =0x00010200
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl ov84_0223F81C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223F990: .word 0x00010200
	thumb_func_end ov84_0223F94C

	thumb_func_start ov84_0223F994
ov84_0223F994: ; 0x0223F994
	push {r3, r4, r5, lr}
	add r0, #0xd4
	ldr r0, [r0, #0]
	add r5, r1, #0
	mov r1, #0x26
	mov r2, #6
	bl sub_02006CB8
	add r1, r5, #0
	add r4, r0, #0
	bl sub_020A7164
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F994

	thumb_func_start ov84_0223F9B0
ov84_0223F9B0: ; 0x0223F9B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, sp, #0x18
	add r5, r0, #0
	bl ov84_0223F994
	add r6, r0, #0
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x10
	lsl r1, r4, #0x10
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	lsr r1, r1, #0x10
	str r1, [sp, #0xc]
	mov r1, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r5, #4
	ldr r1, [r1, #0x14]
	mov r2, #0x28
	bl sub_0201ADDC
	mov r0, #6
	add r1, r6, #0
	bl sub_02018238
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov84_0223F9B0

	thumb_func_start ov84_0223F9F0
ov84_0223F9F0: ; 0x0223F9F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x29
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x88
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	lsl r3, r4, #0x10
	str r0, [sp, #4]
	add r0, r5, #4
	add r2, r1, #0
	lsr r3, r3, #0x10
	bl sub_0201AE78
	mov r1, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223FA40 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223FA40: .word 0x00010200
	thumb_func_end ov84_0223F9F0

	thumb_func_start ov84_0223FA44
ov84_0223FA44: ; 0x0223FA44
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, sp, #0x18
	add r5, r0, #0
	bl ov84_0223F994
	add r6, r0, #0
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x10
	mov r2, #0
	str r0, [sp, #4]
	mov r1, #0x60
	str r1, [sp, #8]
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0xc]
	mov r1, #0x28
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r5, #4
	ldr r1, [r1, #0x14]
	add r3, r2, #0
	bl sub_0201ADDC
	mov r0, #6
	add r1, r6, #0
	bl sub_02018238
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov84_0223FA44

	thumb_func_start ov84_0223FA88
ov84_0223FA88: ; 0x0223FA88
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B1EC
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x10
	ldr r0, [r4, r1]
	mov r1, #6
	bl sub_0200B1EC
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x14
	ldr r0, [r4, r1]
	mov r1, #0x10
	bl sub_0200B1EC
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x18
	ldr r0, [r4, r1]
	mov r1, #0x5f
	bl sub_0200B1EC
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x60
	bl sub_0200B1EC
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x20
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_0200B1EC
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x24
	ldr r0, [r4, r1]
	mov r1, #2
	bl sub_0200B1EC
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x28
	ldr r0, [r4, r1]
	mov r1, #0x12
	bl sub_0200B1EC
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r4, r1]
	sub r1, #0x2c
	ldr r0, [r4, r1]
	mov r1, #3
	bl sub_0200B1EC
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x30
	ldr r0, [r4, r1]
	mov r1, #4
	bl sub_0200B1EC
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x34
	ldr r0, [r4, r1]
	mov r1, #5
	bl sub_0200B1EC
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x38
	ldr r0, [r4, r1]
	mov r1, #8
	bl sub_0200B1EC
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov84_0223FA88

	thumb_func_start ov84_0223FB50
ov84_0223FB50: ; 0x0223FB50
	push {r4, r5, r6, lr}
	mov r6, #0x49
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0223FB5A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_020237BC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xc
	blo _0223FB5A
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_0223FB50

	thumb_func_start ov84_0223FB70
ov84_0223FB70: ; 0x0223FB70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r6, r1, #0
	add r1, r0, #0
	add r1, #0x64
	add r7, r2, #0
	ldrb r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _0223FBC0
	lsl r0, r7, #1
	mov r3, #0x17
	sub r1, r3, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #8
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223FD78 ; =0x00000337
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, #0xb4
	mov r2, #0
	bl sub_0201A7E8
	mov r0, #4
	str r0, [sp, #0x14]
	b _0223FBF0
_0223FBC0:
	lsl r0, r7, #1
	mov r1, #0x17
	sub r1, r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #7
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223FD78 ; =0x00000337
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, #0xb4
	mov r2, #0
	mov r3, #0x18
	bl sub_0201A7E8
	mov r0, #3
	str r0, [sp, #0x14]
_0223FBF0:
	add r0, r7, #0
	mov r1, #6
	bl sub_02013A04
	mov r1, #0x55
	lsl r1, r1, #2
	mov r4, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _0223FC2C
_0223FC04:
	ldrb r0, [r6, r4]
	bl ov84_0223D84C
	ldrb r1, [r6, r4]
	add r2, r0, #0
	mov r0, #0x55
	lsl r1, r1, #2
	add r3, r5, r1
	mov r1, #0x49
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r3, r1]
	bl sub_02013A6C
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r7
	blt _0223FC04
_0223FC2C:
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0xb4
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	strb r1, [r0, #8]
	mov r1, #1
	strb r1, [r0, #9]
	strb r7, [r0, #0xa]
	ldrb r2, [r0, #0xb]
	mov r1, #0xf
	bic r2, r1
	strb r2, [r0, #0xb]
	ldrb r2, [r0, #0xb]
	mov r1, #0x30
	bic r2, r1
	strb r2, [r0, #0xb]
	cmp r7, #4
	ldrb r2, [r0, #0xb]
	blo _0223FC68
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, #0xb]
	b _0223FC6E
_0223FC68:
	mov r1, #0xc0
	bic r2, r1
	strb r2, [r0, #0xb]
_0223FC6E:
	mov r0, #6
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x1c
	mov r1, #8
	add r3, r2, #0
	bl sub_02001AF4
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	mov r3, #0xc
	add r0, r2, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r1, r0, #0
	mul r1, r3
	add r0, r2, r1
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	bne _0223FCD8
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0201ADA4
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, #0x66
	ldrh r1, [r1]
	bl ov84_0223F584
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, #0x66
	ldrh r1, [r1]
	mov r2, #1
	bl ov84_02240D5C
	b _0223FD5E
_0223FCD8:
	ldr r0, [sp, #0x14]
	add r4, r5, #4
	lsl r6, r0, #4
	ldr r2, _0223FD7C ; =0x000003D9
	add r0, r4, r6
	mov r1, #1
	bl sub_0200E060
	add r0, r4, r6
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x2a
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	mov r0, #0x38
	mov r1, #6
	bl sub_02023790
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	add r0, r1, #4
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r1, r0, r1
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	add r0, r5, #0
	add r1, r2, r1
	sub r1, r1, #1
	mov r2, #0
	bl ov84_0223F4E8
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, r6
	mov r1, #1
	add r2, r7, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
_0223FD5E:
	add r0, r5, #0
	ldr r2, _0223FD80 ; =0x000003F7
	add r0, #0xb4
	mov r1, #1
	mov r3, #0xe
	bl sub_0200DC48
	add r5, #0xb4
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FD78: .word 0x00000337
_0223FD7C: .word 0x000003D9
_0223FD80: .word 0x000003F7
	thumb_func_end ov84_0223FB70

	thumb_func_start ov84_0223FD84
ov84_0223FD84: ; 0x0223FD84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _0223FDA2
	mov r1, #4
	b _0223FDA4
_0223FDA2:
	mov r1, #3
_0223FDA4:
	cmp r0, #3
	beq _0223FDBA
	lsl r6, r1, #4
	add r4, r5, #4
	add r0, r4, r6
	mov r1, #1
	bl sub_0200E084
	add r0, r4, r6
	bl sub_0201AD10
_0223FDBA:
	add r0, r5, #0
	add r0, #0xb4
	mov r1, #1
	bl sub_0200DC9C
	add r0, r5, #0
	add r0, #0xb4
	bl sub_0201AD10
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02013A3C
	add r0, r5, #0
	add r0, #0xb4
	bl sub_0201A8FC
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0201ADA4
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, #0x66
	ldrh r1, [r1]
	bl ov84_0223F528
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A9A4
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov84_02240D5C
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_0223FD84

	thumb_func_start ov84_0223FE18
ov84_0223FE18: ; 0x0223FE18
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x2d
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x82
	mov r1, #6
	bl sub_02023790
	ldr r1, _0223FE8C ; =0x0000047B
	add r4, r0, #0
	ldrb r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	sub r1, r1, #1
	bl ov84_0223F4E8
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223FE90 ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x14
	mov r3, #0x28
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r5, #0x14
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223FE8C: .word 0x0000047B
_0223FE90: .word 0x000F0E00
	thumb_func_end ov84_0223FE18

	thumb_func_start ov84_0223FE94
ov84_0223FE94: ; 0x0223FE94
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r2, _0223FF3C ; =0x000003F7
	add r5, r0, #0
	add r0, #0x94
	mov r1, #1
	mov r3, #0xe
	bl sub_0200DC48
	add r0, r5, #0
	bl ov84_0223FF44
	add r0, r5, #0
	ldr r2, _0223FF40 ; =0x000003D9
	add r0, #0x34
	mov r1, #1
	mov r3, #0xc
	bl sub_0200E060
	add r0, r5, #0
	add r0, #0x34
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x34
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x38
	mov r1, #6
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r2, r0
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	add r0, r5, #0
	add r1, r2, r1
	sub r1, r1, #1
	mov r2, #0
	bl ov84_0223F4E8
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x34
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r5, #0x34
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223FF3C: .word 0x000003F7
_0223FF40: .word 0x000003D9
	thumb_func_end ov84_0223FE94

	thumb_func_start ov84_0223FF44
ov84_0223FF44: ; 0x0223FF44
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x94
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x54
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _0223FFBC ; =0x00000488
	mov r0, #0x46
	lsl r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	mov r2, #0xfe
	str r1, [sp, #8]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r3, #0x10
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223FFBC: .word 0x00000488
	thumb_func_end ov84_0223FF44

	thumb_func_start ov84_0223FFC0
ov84_0223FFC0: ; 0x0223FFC0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x34
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x94
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x34
	bl sub_0201AD10
	add r0, r4, #0
	add r0, #0x94
	bl sub_0201AD10
	add r4, #0x14
	add r0, r4, #0
	bl sub_0201A9A4
	pop {r4, pc}
	thumb_func_end ov84_0223FFC0

	thumb_func_start ov84_0223FFF0
ov84_0223FFF0: ; 0x0223FFF0
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r2, _02240094 ; =0x000003D9
	add r5, r0, #0
	add r0, #0x64
	mov r1, #1
	mov r3, #0xc
	bl sub_0200E060
	add r0, r5, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r2, r0
	ldr r0, _02240098 ; =0x00000488
	ldrsh r0, [r5, r0]
	cmp r0, #1
	bne _02240046
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	add r0, r5, #0
	add r1, r2, r1
	sub r1, r1, #1
	mov r2, #0
	bl ov84_0223F4E8
	b _02240056
_02240046:
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	add r0, r5, #0
	add r1, r2, r1
	sub r1, r1, #1
	mov r2, #0
	bl ov84_0223F508
_02240056:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	mov r0, #0x46
	ldr r2, _02240098 ; =0x00000488
	str r1, [sp, #4]
	lsl r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0224009C ; =0x00000426
	strb r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02240094: .word 0x000003D9
_02240098: .word 0x00000488
_0224009C: .word 0x00000426
	thumb_func_end ov84_0223FFF0

	thumb_func_start ov84_022400A0
ov84_022400A0: ; 0x022400A0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _022400DC ; =ov84_022400E0
	mov r2, #0xfe
	str r0, [sp, #8]
	lsl r2, r2, #2
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x64
	mov r1, #1
	bl sub_0201D738
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022400DC: .word ov84_022400E0
	thumb_func_end ov84_022400A0

	thumb_func_start ov84_022400E0
ov84_022400E0: ; 0x022400E0
	push {r3, lr}
	cmp r1, #4
	bhi _02240118
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022400F2: ; jump table
	.short _02240118 - _022400F2 - 2 ; case 0
	.short _022400FC - _022400F2 - 2 ; case 1
	.short _02240102 - _022400F2 - 2 ; case 2
	.short _02240108 - _022400F2 - 2 ; case 3
	.short _02240110 - _022400F2 - 2 ; case 4
_022400FC:
	bl sub_020057E0
	pop {r3, pc}
_02240102:
	bl sub_020061E4
	pop {r3, pc}
_02240108:
	ldr r0, _0224011C ; =0x0000060D
	bl sub_02005748
	b _02240118
_02240110:
	ldr r0, _0224011C ; =0x0000060D
	bl sub_020057D4
	pop {r3, pc}
_02240118:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0224011C: .word 0x0000060D
	thumb_func_end ov84_022400E0

	thumb_func_start ov84_02240120
ov84_02240120: ; 0x02240120
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, _02240140 ; =0x02241150
	ldr r2, _02240144 ; =0x000003F7
	mov r3, #0xe
	bl sub_02002100
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02240140: .word 0x02241150
_02240144: .word 0x000003F7
	thumb_func_end ov84_02240120

	thumb_func_start ov84_02240148
ov84_02240148: ; 0x02240148
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x74
	cmp r1, #0
	bne _02240162
	ldr r2, _0224023C ; =0x000003F7
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xe
	bl sub_0200DC48
_02240162:
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x50
	bl sub_0200B1EC
	mov r3, #2
	add r6, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _02240240 ; =0x00000488
	mov r0, #0x46
	lsl r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	mov r2, #0xfe
	str r1, [sp, #8]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x51
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, _02240244 ; =0x0000048C
	mov r0, #0x46
	ldr r3, [r5, r2]
	sub r2, r2, #4
	ldrsh r2, [r5, r2]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mul r2, r3
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	mov r1, #0xfe
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	mov r2, #0xfe
	str r1, [sp, #8]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	mov r5, #0x60
	add r0, r4, #0
	sub r3, r5, r3
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224023C: .word 0x000003F7
_02240240: .word 0x00000488
_02240244: .word 0x0000048C
	thumb_func_end ov84_02240148

	thumb_func_start ov84_02240248
ov84_02240248: ; 0x02240248
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x84
	cmp r1, #0
	bne _02240294
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _02240324 ; =0x000003F7
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x4e
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	b _022402A6
_02240294:
	mov r0, #0x50
	str r0, [sp]
	mov r3, #0x10
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	str r3, [sp, #4]
	bl sub_0201AE78
_022402A6:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x4f
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_02025F74
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	mov r1, #0xfe
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	mov r2, #0xfe
	str r1, [sp, #8]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	mov r5, #0x50
	add r0, r4, #0
	sub r3, r5, r3
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02240324: .word 0x000003F7
	thumb_func_end ov84_02240248

	thumb_func_start ov84_02240328
ov84_02240328: ; 0x02240328
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0xa4
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _022403F0 ; =0x000003F7
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x6c
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x6d
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0202AB28
	bl sub_0202AC98
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r1, #0xfe
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	mov r2, #0xfe
	str r1, [sp, #8]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	mov r5, #0x58
	add r0, r4, #0
	sub r3, r5, r3
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022403F0: .word 0x000003F7
	thumb_func_end ov84_02240328

	thumb_func_start ov84_022403F4
ov84_022403F4: ; 0x022403F4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x20
	mov r1, #6
	bl sub_0201DBEC
	add r0, r4, #0
	bl ov84_02240424
	add r0, r4, #0
	bl ov84_022404C0
	add r0, r4, #0
	bl ov84_02240950
	pop {r4, pc}
	thumb_func_end ov84_022403F4

	thumb_func_start ov84_02240424
ov84_02240424: ; 0x02240424
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	ldr r3, _022404B4 ; =0x02241178
	add r2, sp, #0x34
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #6
	bl sub_0200C6E4
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	bl sub_0200C704
	add r1, r4, #0
	add r1, #0xdc
	add r2, sp, #0x14
	ldr r5, _022404B8 ; =0x02241190
	str r0, [r1, #0]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _022404BC ; =0x02241164
	stmia r2!, {r0, r1}
	add r5, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r3, #0x20
	bl sub_0200C73C
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0xc
	bl sub_0200C7C0
	add r0, r4, #0
	add r0, #0xd8
	add r4, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	add r2, sp, #0x34
	bl sub_0200CB30
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	nop
_022404B4: .word 0x02241178
_022404B8: .word 0x02241190
_022404BC: .word 0x02241164
	thumb_func_end ov84_02240424

	thumb_func_start ov84_022404C0
ov84_022404C0: ; 0x022404C0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02240844 ; =0x00000425
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _022404D4
	mov r3, #2
	mov r4, #3
	b _022404D8
_022404D4:
	mov r3, #6
	mov r4, #7
_022404D8:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02240848 ; =0x0000C0F9
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0224084C ; =0x0000C0FA
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x19
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02240850 ; =0x0000C0FB
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1c
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02240854 ; =0x0000C0FC
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1f
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02240858 ; =0x0000C0FD
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0xa
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0224085C ; =0x0000C0FE
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x24
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #8
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x3e
	mov r3, #4
	bl sub_0200CBDC
	mov r0, #0
	mov r1, #1
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02240860 ; =0x0000C0FF
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	bl sub_0200CBDC
	ldr r0, _02240864 ; =0x0000C101
	add r1, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #1
	mov r3, #0
	bl sub_0207C948
	ldr r0, _02240868 ; =0x0000C102
	add r1, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #1
	mov r3, #0
	bl sub_0207CAC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02240848 ; =0x0000C0F9
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	add r3, r4, #0
	bl sub_0200CD0C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _0224084C ; =0x0000C0FA
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x14
	bl sub_0200CD0C
	mov r0, #0
	mov r1, #2
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02240854 ; =0x0000C0FC
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	bl sub_0200CC9C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _02240858 ; =0x0000C0FD
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x3e
	mov r3, #0xa
	bl sub_0200CC9C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r3, _0224085C ; =0x0000C0FE
	mov r2, #1
	bl sub_0207C97C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _02240850 ; =0x0000C0FB
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x25
	bl sub_0200CD0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240848 ; =0x0000C0F9
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #1
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224084C ; =0x0000C0FA
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x18
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240850 ; =0x0000C0FB
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1b
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240854 ; =0x0000C0FC
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1e
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240858 ; =0x0000C0FD
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #9
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224085C ; =0x0000C0FE
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x23
	bl sub_0200CE24
	bl sub_0207CF40
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240860 ; =0x0000C0FF
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	bl sub_0200CE0C
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc1
	lsl r0, r0, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x3e
	mov r3, #5
	bl sub_0200CE0C
	mov r3, #0
	add r1, r5, #0
	add r2, r5, #0
	ldr r0, _02240848 ; =0x0000C0F9
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224084C ; =0x0000C0FA
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x17
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240850 ; =0x0000C0FB
	b _0224086C
	; .align 2, 0
_02240844: .word 0x00000425
_02240848: .word 0x0000C0F9
_0224084C: .word 0x0000C0FA
_02240850: .word 0x0000C0FB
_02240854: .word 0x0000C0FC
_02240858: .word 0x0000C0FD
_0224085C: .word 0x0000C0FE
_02240860: .word 0x0000C0FF
_02240864: .word 0x0000C101
_02240868: .word 0x0000C102
_0224086C:
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1a
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224093C ; =0x0000C0FC
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1d
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240940 ; =0x0000C0FD
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #8
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240944 ; =0x0000C0FE
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x22
	bl sub_0200CE54
	bl sub_0207CF44
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240948 ; =0x0000C0FF
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	bl sub_0200CE3C
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc1
	lsl r0, r0, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x3e
	mov r3, #6
	bl sub_0200CE3C
	add r0, r5, #0
	add r0, #0xd8
	add r5, #0xdc
	ldr r2, _0224094C ; =0x0000C101
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	add r3, r2, #0
	bl sub_0207C9EC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224093C: .word 0x0000C0FC
_02240940: .word 0x0000C0FD
_02240944: .word 0x0000C0FE
_02240948: .word 0x0000C0FF
_0224094C: .word 0x0000C101
	thumb_func_end ov84_022404C0

	thumb_func_start ov84_02240950
ov84_02240950: ; 0x02240950
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r4, _02240A7C ; =0x022411B0
	mov r7, #0
	add r6, r5, #0
_0224095C:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r4, #0
	bl sub_0200CE6C
	add r1, r6, #0
	add r1, #0xe0
	add r7, r7, #1
	str r0, [r1, #0]
	add r4, #0x34
	add r6, r6, #4
	cmp r7, #0xc
	blo _0224095C
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r0, #0x65
	ldrb r0, [r0]
	add r0, #0xfc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _022409CE
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
_022409CE:
	ldr r0, _02240A80 ; =0x00000424
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _022409EE
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
_022409EE:
	add r0, r5, #0
	mov r1, #0
	bl ov84_02240D3C
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r2, r1, #0
	add r2, #0x64
	ldrb r3, [r2]
	mov r2, #0xc
	add r0, #0xe0
	mul r2, r3
	add r1, r1, r2
	ldrb r1, [r1, #0xc]
	ldr r0, [r0, #0]
	bl sub_0200D364
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, #0x64
	ldrb r1, [r1]
	bl ov84_02240C30
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r2, #0x61
	bl sub_0200D4C4
	add r0, r5, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r5, #0
	add r3, r2, #0
	add r3, #0x64
	ldrb r4, [r3]
	mov r3, #0xc
	add r0, #0xf0
	mul r3, r4
	add r2, r2, r3
	ldrh r2, [r2, #8]
	ldr r0, [r0, #0]
	mov r1, #0xb1
	sub r2, r2, #1
	lsl r2, r2, #4
	add r2, #0x18
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r4, _02240A84 ; =0x02241158
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r2, #0
	add r5, #0xe0
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	mov r2, #2
	ldr r0, [r0, #0]
	bl sub_02021C80
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02240A7C: .word 0x022411B0
_02240A80: .word 0x00000424
_02240A84: .word 0x02241158
	thumb_func_end ov84_02240950

	thumb_func_start ov84_02240A88
ov84_02240A88: ; 0x02240A88
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02240A90:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blo _02240A90
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200D0B0
	add r6, #0xd8
	ldr r0, [r6, #0]
	bl sub_0200C8D4
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_02240A88

	thumb_func_start ov84_02240ABC
ov84_02240ABC: ; 0x02240ABC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02240AC2:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_0200D330
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blo _02240AC2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov84_02240ABC

	thumb_func_start ov84_02240AD8
ov84_02240AD8: ; 0x02240AD8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240B2C ; =0x0000C0FF
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	bl sub_0200D948
	add r0, r4, #0
	mov r1, #2
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240B30 ; =0x0000C0FC
	mov r2, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r5, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	bl sub_0200D97C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02240B2C: .word 0x0000C0FF
_02240B30: .word 0x0000C0FC
	thumb_func_end ov84_02240AD8

	thumb_func_start ov84_02240B34
ov84_02240B34: ; 0x02240B34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r4, r1, #0
	bl sub_0200D41C
	add r5, #0xe4
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_0200D41C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov84_02240B34

	thumb_func_start ov84_02240B50
ov84_02240B50: ; 0x02240B50
	ldr r1, _02240B64 ; =0x00000454
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _02240B5C
	mov r0, #1
	b _02240B5E
_02240B5C:
	mov r0, #0
_02240B5E:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
_02240B64: .word 0x00000454
	thumb_func_end ov84_02240B50

	thumb_func_start ov84_02240B68
ov84_02240B68: ; 0x02240B68
	ldr r1, _02240B78 ; =0x00000457
	mov r2, #0
	strb r2, [r0, r1]
	ldr r3, _02240B7C ; =ov84_02240C48
	mov r2, #1
	sub r1, r1, #3
	strb r2, [r0, r1]
	bx r3
	; .align 2, 0
_02240B78: .word 0x00000457
_02240B7C: .word ov84_02240C48
	thumb_func_end ov84_02240B68

	thumb_func_start ov84_02240B80
ov84_02240B80: ; 0x02240B80
	push {r3, lr}
	ldr r1, _02240B94 ; =0x00000454
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02240B92
	cmp r1, #1
	bne _02240B92
	bl ov84_02240B98
_02240B92:
	pop {r3, pc}
	; .align 2, 0
_02240B94: .word 0x00000454
	thumb_func_end ov84_02240B80

	thumb_func_start ov84_02240B98
ov84_02240B98: ; 0x02240B98
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r2, _02240C24 ; =0x00000455
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _02240BD0
	add r1, r2, #2
	ldrb r1, [r4, r1]
	ldr r0, [sp]
	lsl r1, r1, #2
	add r3, r4, r1
	add r1, r2, #3
	ldr r1, [r3, r1]
	sub r0, r0, r1
	str r0, [sp]
	b _02240BE2
_02240BD0:
	add r1, r2, #2
	ldrb r1, [r4, r1]
	ldr r0, [sp]
	lsl r1, r1, #2
	add r3, r4, r1
	add r1, r2, #3
	ldr r1, [r3, r1]
	add r0, r0, r1
	str r0, [sp]
_02240BE2:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r1, sp, #0
	ldr r0, [r0, #0]
	bl sub_02021C50
	ldr r1, _02240C28 ; =0x00000457
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	ldrb r0, [r4, r1]
	cmp r0, #8
	bne _02240C20
	add r1, #0x21
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl ov84_02240C30
	lsl r0, r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r1, sp, #0
	ldr r0, [r0, #0]
	bl sub_02021C50
	ldr r0, _02240C2C ; =0x00000454
	mov r1, #0
	strb r1, [r4, r0]
_02240C20:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02240C24: .word 0x00000455
_02240C28: .word 0x00000457
_02240C2C: .word 0x00000454
	thumb_func_end ov84_02240B98

	thumb_func_start ov84_02240C30
ov84_02240C30: ; 0x02240C30
	ldr r2, _02240C44 ; =0x00000427
	ldrb r3, [r0, r2]
	add r2, r2, #1
	ldrb r0, [r0, r2]
	mul r1, r0
	add r0, r3, r1
	add r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
_02240C44: .word 0x00000427
	thumb_func_end ov84_02240C30

	thumb_func_start ov84_02240C48
ov84_02240C48: ; 0x02240C48
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r1, _02240CE4 ; =0x00000478
	str r0, [r2, #0]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl ov84_02240C30
	lsl r1, r0, #0xc
	ldr r0, [sp]
	cmp r1, r0
	bge _02240C82
	sub r0, r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	mov r2, #0
	b _02240C8C
_02240C82:
	sub r0, r1, r0
	mov r1, #0x64
	bl sub_020E1F6C
	mov r2, #1
_02240C8C:
	ldr r1, _02240CE8 ; =0x00000455
	mov r3, #0x28
	strb r2, [r4, r1]
	add r5, r0, #0
	ldr r1, _02240CEC ; =0x00000458
	mov r2, #0
	mul r5, r3
	str r2, [r4, r1]
	add r3, r1, #4
	str r5, [r4, r3]
	mov r3, #0x19
	add r5, r0, #0
	mul r5, r3
	add r3, r1, #0
	add r3, #8
	str r5, [r4, r3]
	mov r3, #0xf
	add r5, r0, #0
	mul r5, r3
	add r3, r1, #0
	add r3, #0xc
	str r5, [r4, r3]
	mov r3, #0xa
	add r5, r0, #0
	mul r5, r3
	add r3, r1, #0
	add r3, #0x10
	str r5, [r4, r3]
	mov r3, #7
	add r5, r0, #0
	mul r5, r3
	add r3, r1, #0
	add r3, #0x14
	str r5, [r4, r3]
	lsl r3, r0, #1
	add r3, r0, r3
	add r0, r1, #0
	add r0, #0x18
	str r3, [r4, r0]
	add r1, #0x1c
	str r2, [r4, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02240CE4: .word 0x00000478
_02240CE8: .word 0x00000455
_02240CEC: .word 0x00000458
	thumb_func_end ov84_02240C48

	thumb_func_start ov84_02240CF0
ov84_02240CF0: ; 0x02240CF0
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _02240D16
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0xdc
	mov r2, #0x9c
	bl sub_0200D4C4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xdc
	mov r2, #0xb4
	bl sub_0200D4C4
	b _02240D32
_02240D16:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0xa2
	mov r2, #0x6c
	bl sub_0200D4C4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa2
	mov r2, #0x84
	bl sub_0200D4C4
_02240D32:
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240D3C
	pop {r4, pc}
	thumb_func_end ov84_02240CF0

	thumb_func_start ov84_02240D3C
ov84_02240D3C: ; 0x02240D3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_0200D3F4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200D3F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov84_02240D3C

	thumb_func_start ov84_02240D5C
ov84_02240D5C: ; 0x02240D5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x42
	lsl r0, r0, #2
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200D3F4
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200D3F4
	cmp r4, #0
	beq _02240E18
	add r0, r6, #0
	bl sub_0207D268
	mov r1, #3
	add r4, r0, #0
	bl sub_020790C4
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	mov r1, #1
	bl sub_020790C4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	bl sub_0207C944
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0207C908
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _02240E1C ; =0x0000C101
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r7, #0
	bl sub_0200D948
	add r0, r6, #0
	bl sub_0207C92C
	add r1, r0, #0
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #6
	bl sub_0200D41C
	bl sub_0207CAC0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0207CA90
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _02240E20 ; =0x0000C102
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r6, #0
	bl sub_0200D948
	add r0, r4, #0
	bl sub_0207CAA8
	add r1, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #6
	bl sub_0200D41C
_02240E18:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240E1C: .word 0x0000C101
_02240E20: .word 0x0000C102
	thumb_func_end ov84_02240D5C

	thumb_func_start ov84_02240E24
ov84_02240E24: ; 0x02240E24
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xf8
	add r4, r1, #0
	ldr r0, [r0, #0]
	mov r1, #1
	add r6, r2, #0
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200D4C4
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3CC
	add r5, #0xf8
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_0200D364
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_02240E24

	thumb_func_start ov84_02240E5C
ov84_02240E5C: ; 0x02240E5C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0200D408
	cmp r0, #1
	bne _02240E92
	add r0, r4, #0
	add r0, #0xf8
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bl sub_0200D34C
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0200D3E0
	cmp r0, #2
	bne _02240E92
	add r4, #0xf8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
_02240E92:
	pop {r4, pc}
	thumb_func_end ov84_02240E5C
	; 0x02240E94

	.incbin "data/overlay84.bin"