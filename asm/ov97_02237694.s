	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov97_02237694
ov97_02237694: ; 0x02237694
	push {r3, r4, r5, r6}
	add r4, r0, #0
	mov r0, #0
	ldr r6, _022376BC ; =0x0223F550
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	mov r5, #0x75
_022376A4:
	stmia r6!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	sub r5, r5, #1
	bne _022376A4
	stmia r6!, {r0, r1}
	ldr r0, _022376C0 ; =0x0223F550
	mov r1, #1
	str r1, [r0, #4]
	str r4, [r0, #8]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_022376BC: .word 0x0223F550
_022376C0: .word 0x0223F550
	thumb_func_end ov97_02237694

	thumb_func_start ov97_022376C4
ov97_022376C4: ; 0x022376C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r1, #0
	mov r0, #3
	add r2, r3, #0
	bl sub_02017FC8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200681C
	mov r1, #0
	add r2, r4, #0
	add r5, r0, #0
	bl sub_020D5124
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_022376C4

	thumb_func_start ov97_022376FC
ov97_022376FC: ; 0x022376FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r5, _02237780 ; =0x0223DAAC
	add r6, r3, #0
	add r7, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	cmp r2, #4
	str r0, [r3, #0]
	add r0, sp, #0
	strb r2, [r0, #0x10]
	bhi _02237756
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223772E: ; jump table
	.short _02237756 - _0223772E - 2 ; case 0
	.short _02237738 - _0223772E - 2 ; case 1
	.short _02237740 - _0223772E - 2 ; case 2
	.short _02237748 - _0223772E - 2 ; case 3
	.short _02237750 - _0223772E - 2 ; case 4
_02237738:
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	b _02237756
_02237740:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _02237756
_02237748:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _02237756
_02237750:
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #8]
_02237756:
	lsr r1, r6, #0xb
	add r0, sp, #0
	strb r1, [r0, #0x12]
	ldr r1, [sp, #0x30]
	add r2, sp, #0
	lsr r1, r1, #0xe
	strb r1, [r0, #0x13]
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r3, #0
	bl sub_020183C4
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02237780: .word 0x0223DAAC
	thumb_func_end ov97_022376FC

	thumb_func_start ov97_02237784
ov97_02237784: ; 0x02237784
	ldr r1, _0223778C ; =0x0223F550
	str r0, [r1, #0x10]
	bx lr
	nop
_0223778C: .word 0x0223F550
	thumb_func_end ov97_02237784

	thumb_func_start ov97_02237790
ov97_02237790: ; 0x02237790
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #0xc]
	ldr r0, _022377E4 ; =0x0223F550
	add r5, r1, #0
	ldr r0, [r0, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	ldr r7, _022377E8 ; =0x0223F550
	cmp r0, #0
	bne _022377C0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	b _022377D8
_022377C0:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	ldr r3, _022377EC ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
_022377D8:
	cmp r4, #0
	beq _022377DE
	str r6, [r4, #0]
_022377DE:
	str r5, [r7, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022377E4: .word 0x0223F550
_022377E8: .word 0x0223F550
_022377EC: .word 0x00007FFF
	thumb_func_end ov97_02237790

	thumb_func_start ov97_022377F0
ov97_022377F0: ; 0x022377F0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, _02237804 ; =0x0223F550
	bl sub_0200F2AC
	cmp r0, #0
	beq _02237802
	ldr r0, [r5, #0xc]
	str r0, [r4, #0]
_02237802:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237804: .word 0x0223F550
	thumb_func_end ov97_022377F0

	thumb_func_start ov97_02237808
ov97_02237808: ; 0x02237808
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x54
	add r5, r0, #0
	add r7, r3, #0
	bl sub_020D5124
	mov r0, #1
	str r0, [r5, #4]
	str r0, [r5, #8]
	sub r0, r0, #2
	str r0, [r5, #0x4c]
	str r4, [r5, #0x10]
	str r6, [r5, #0x30]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x34]
	str r0, [r5, #0x38]
	ldr r0, [sp, #0x1c]
	mov r2, #0
	str r0, [r5, #0x3c]
	str r2, [r5, #0x2c]
	ldr r0, _02237854 ; =0x0001020F
	str r2, [r5, #0x40]
	str r0, [r5, #0x44]
	add r0, r5, #0
	mov r1, #0xf
	add r0, #0x48
	strb r1, [r0]
	str r2, [r5, #0]
	str r2, [r5, #0x24]
	str r2, [r5, #0x20]
	str r2, [r5, #0x14]
	mov r0, #0xff
	str r0, [r5, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237854: .word 0x0001020F
	thumb_func_end ov97_02237808

	thumb_func_start ov97_02237858
ov97_02237858: ; 0x02237858
	str r1, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r3, [r0, #0x28]
	bx lr
	thumb_func_end ov97_02237858

	thumb_func_start ov97_02237860
ov97_02237860: ; 0x02237860
	str r1, [r0, #0]
	str r2, [r0, #0x40]
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02237860

	thumb_func_start ov97_02237868
ov97_02237868: ; 0x02237868
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02237868

	thumb_func_start ov97_02237870
ov97_02237870: ; 0x02237870
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	ldr r4, _02237958 ; =0x0223F550
	cmp r1, r0
	beq _0223794E
	ldr r0, [r5, #0x4c]
	cmp r0, r1
	beq _0223794E
	str r1, [r5, #0x4c]
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0223789A
	add r1, r5, #0
	add r1, #0x48
	ldrb r1, [r1]
	ldr r0, [r5, #0x10]
	bl sub_0201ADA4
_0223789A:
	mov r0, #0
	ldr r1, [r5, #0x4c]
	mvn r0, r0
	cmp r1, r0
	beq _0223794E
	ldr r2, [r5, #0x34]
	ldr r3, [r4, #8]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	ldr r6, [r5, #0x14]
	str r0, [sp, #0x10]
	cmp r6, #0
	bne _022378C0
	ldr r0, [r4, #8]
	bl sub_0200B358
	add r6, r0, #0
_022378C0:
	ldr r1, [sp, #0x10]
	ldr r2, [r5, #0x4c]
	ldr r3, [r4, #8]
	add r0, r6, #0
	bl sub_0200B29C
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _022378F4
	ldr r0, [r5, #0x24]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x20]
	bl sub_0201D78C
	add r7, r0, #0
	b _02237936
_022378F4:
	ldr r0, [r5, #0x40]
	mov r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02002DF8
	add r2, r0, #0
	ldr r0, [r5, #0x40]
	add r1, r4, #0
	bl sub_02002D7C
	add r7, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0201C294
	lsl r0, r0, #3
	sub r3, r0, r7
	ldr r0, [r5, #0x24]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x40]
	bl sub_0201D78C
	add r7, r0, #0
	mov r0, #0
	str r0, [r5, #0xc]
_02237936:
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _02237948
	add r0, r6, #0
	bl sub_0200B3F0
_02237948:
	ldr r0, [sp, #0x10]
	bl sub_0200B190
_0223794E:
	mov r0, #0xff
	str r0, [r5, #0x50]
	add r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02237958: .word 0x0223F550
	thumb_func_end ov97_02237870

	thumb_func_start ov97_0223795C
ov97_0223795C: ; 0x0223795C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, [r4, #0x10]
	add r6, r2, #0
	ldr r2, [r1, #0]
	add r5, r3, #0
	cmp r2, #0
	bne _022379AE
	lsl r2, r5, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	ldr r2, [r4, #0x18]
	lsl r3, r6, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	ldr r2, [r4, #0x1c]
	lsr r3, r3, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #8]
	ldr r2, [r4, #0x30]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0xc]
	ldr r2, [r4, #0x28]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r2, [sp, #0x10]
	ldr r2, [r4, #0x2c]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_0201A7E8
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov97_02237870
	add r5, r0, #0
	b _022379DC
_022379AE:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _022379C0
	add r0, r1, #0
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C2AC
_022379C0:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _022379D2
	lsl r1, r5, #0x18
	ldr r0, [r4, #0x10]
	lsr r1, r1, #0x18
	bl sub_0201C2B0
_022379D2:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov97_02237870
	add r5, r0, #0
_022379DC:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02237A10
	ldr r0, [r4, #0]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	bne _022379FE
	ldr r2, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0200DC48
	b _02237A10
_022379FE:
	ldr r2, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0200E060
_02237A10:
	add r0, r5, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_0223795C

	thumb_func_start ov97_02237A18
ov97_02237A18: ; 0x02237A18
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	mul r0, r1
	bx lr
	thumb_func_end ov97_02237A18

	thumb_func_start ov97_02237A20
ov97_02237A20: ; 0x02237A20
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02237A58 ; =0x0223DA9C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, _02237A5C ; =0x0223F550
	mov r1, #0x10
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	ldr r1, _02237A5C ; =0x0223F550
	mov r0, #0x1e
	ldr r1, [r1, #8]
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02237A58: .word 0x0223DA9C
_02237A5C: .word 0x0223F550
	thumb_func_end ov97_02237A20

	thumb_func_start ov97_02237A60
ov97_02237A60: ; 0x02237A60
	ldr r0, _02237A70 ; =0x0223F550
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _02237A6C
	mov r0, #1
	bx lr
_02237A6C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02237A70: .word 0x0223F550
	thumb_func_end ov97_02237A60

	thumb_func_start ov97_02237A74
ov97_02237A74: ; 0x02237A74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r6, _02237ADC ; =0x0223F550
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	ldr r2, _02237AE0 ; =0x0223F550
	str r3, [sp, #0xc]
	ldr r2, [r2, #8]
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	ldr r2, _02237AE0 ; =0x0223F550
	ldr r1, _02237AE4 ; =0x0223F588
	ldr r2, [r2, #8]
	mov r0, #0x80
	bl sub_020095C4
	ldr r1, _02237AE0 ; =0x0223F550
	mov r2, #1
	str r0, [r1, #0x34]
	ldr r0, _02237AE4 ; =0x0223F588
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r1, #3
	mov r7, #0x16
	ldr r0, _02237AE8 ; =0x0223F750
	lsl r1, r1, #0x12
	str r1, [r0, #0x10]
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_02237AC4:
	ldr r2, [r6, #8]
	mov r0, #0x20
	add r1, r4, #0
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02237AC4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02237ADC: .word 0x0223F550
_02237AE0: .word 0x0223F550
_02237AE4: .word 0x0223F588
_02237AE8: .word 0x0223F750
	thumb_func_end ov97_02237A74

	thumb_func_start ov97_02237AEC
ov97_02237AEC: ; 0x02237AEC
	push {r4, lr}
	ldr r0, _02237B04 ; =0x0223F550
	ldr r4, _02237B08 ; =0x0223F550
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _02237AFC
	bl sub_02022974
_02237AFC:
	add r4, #0x34
	add r0, r4, #0
	pop {r4, pc}
	nop
_02237B04: .word 0x0223F550
_02237B08: .word 0x0223F550
	thumb_func_end ov97_02237AEC

	thumb_func_start ov97_02237B0C
ov97_02237B0C: ; 0x02237B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, [sp, #0x54]
	add r6, r0, #0
	mov ip, r1
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	ldr r5, _02237C78 ; =0x0223F550
	cmp r4, #0
	bne _02237B24
	mov r7, #1
	b _02237B26
_02237B24:
	mov r7, #2
_02237B26:
	mov r0, #1
	str r0, [sp, #0x34]
	cmp r6, #0x10
	bne _02237B32
	mov r0, #0
	str r0, [sp, #0x34]
_02237B32:
	mov r1, #0
	mvn r1, r1
	mov r0, ip
	cmp r0, r1
	beq _02237B60
	str r4, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #8]
	ldr r3, [sp, #0x34]
	str r0, [sp, #8]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, ip
	bl sub_0200985C
	mov r1, #0x18
	mul r1, r4
	add r2, r5, r1
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r2, r1]
_02237B60:
	mov r1, #0
	ldr r0, [sp, #0x2c]
	mvn r1, r1
	cmp r0, r1
	beq _02237B92
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x2c]
	str r0, [sp, #0xc]
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x18
	mul r1, r4
	add r2, r5, r1
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r2, r1]
_02237B92:
	mov r1, #0
	ldr r0, [sp, #0x30]
	mvn r1, r1
	cmp r0, r1
	beq _02237BC2
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	bl sub_02009918
	mov r1, #0x18
	add r2, r4, #0
	mul r2, r1
	add r2, r5, r2
	lsl r1, r1, #4
	str r0, [r2, r1]
_02237BC2:
	mov r0, #0
	ldr r2, [sp, #0x50]
	mvn r0, r0
	cmp r2, r0
	beq _02237BF0
	str r4, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r3, [sp, #0x34]
	str r0, [sp, #8]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02009918
	mov r1, #0x18
	mul r1, r4
	add r2, r5, r1
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r2, r1]
_02237BF0:
	mov r0, #0x18
	add r6, r4, #0
	mul r6, r0
	mov r0, #0x5e
	add r1, r5, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A328
	mov r0, #0x5f
	add r1, r5, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	mov r0, #0
	mov r2, #0x16
	str r4, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	add r3, r4, #0
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	str r1, [sp, #0x1c]
	add r1, r2, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	add r2, #0x48
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r0, #0x24
	add r1, r5, r2
	mul r0, r4
	add r0, r1, r0
	add r1, r4, #0
	add r2, r4, #0
	bl sub_020093B4
	cmp r4, #0
	bne _02237C62
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	b _02237C6A
_02237C62:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
_02237C6A:
	ldr r0, _02237C7C ; =ov97_02237E58
	mov r1, #0
	bl sub_02017798
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237C78: .word 0x0223F550
_02237C7C: .word ov97_02237E58
	thumb_func_end ov97_02237B0C

	thumb_func_start ov97_02237C80
ov97_02237C80: ; 0x02237C80
	push {r4, lr}
	add r2, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	ldr r0, _02237C98 ; =0x0223F588
	add r2, r4, #0
	bl sub_0200964C
	ldr r0, _02237C9C ; =0x0223F750
	str r4, [r0, #0x10]
	pop {r4, pc}
	nop
_02237C98: .word 0x0223F588
_02237C9C: .word 0x0223F750
	thumb_func_end ov97_02237C80

	thumb_func_start ov97_02237CA0
ov97_02237CA0: ; 0x02237CA0
	ldr r3, _02237CA8 ; =ov97_02237CAC
	mov r0, #0
	bx r3
	nop
_02237CA8: .word ov97_02237CAC
	thumb_func_end ov97_02237CA0

	thumb_func_start ov97_02237CAC
ov97_02237CAC: ; 0x02237CAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02237D0C ; =0x0223F750
	ldr r4, _02237D10 ; =0x0223F550
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02237D00
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02237CFC
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021D34
	cmp r0, #0
	bne _02237CE0
	cmp r5, #0
	bne _02237CE0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
_02237CE0:
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	mov r1, #6
	ldr r2, [r0, #4]
	lsl r1, r1, #0x12
	cmp r2, r1
	bge _02237D00
	lsr r1, r1, #7
	add r1, r2, r1
	str r1, [r0, #4]
	b _02237D00
_02237CFC:
	sub r1, r1, #1
	str r1, [r4, r0]
_02237D00:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _02237D0A
	bl sub_020219F8
_02237D0A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237D0C: .word 0x0223F750
_02237D10: .word 0x0223F550
	thumb_func_end ov97_02237CAC

	thumb_func_start ov97_02237D14
ov97_02237D14: ; 0x02237D14
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r1, #0
	ldr r1, _02237D9C ; =0x0223F550
	bne _02237D76
	ldr r4, [r1, #0x34]
	lsl r2, r2, #0xc
	str r4, [sp]
	mov r4, #0x6a
	lsl r4, r4, #2
	add r5, r1, r4
	mov r4, #0x24
	mul r4, r0
	add r4, r5, r4
	str r4, [sp, #4]
	mov r4, #1
	lsl r4, r4, #0xc
	mov r5, #0
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	add r4, sp, #0
	strh r5, [r4, #0x20]
	str r2, [sp, #8]
	lsl r2, r3, #0xc
	str r2, [sp, #0xc]
	mov r2, #0xa
	str r2, [sp, #0x24]
	cmp r0, #0
	bne _02237D56
	mov r2, #1
	b _02237D58
_02237D56:
	mov r2, #2
_02237D58:
	ldr r0, [r1, #8]
	str r2, [sp, #0x28]
	str r0, [sp, #0x2c]
	cmp r2, #2
	bne _02237D6E
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r2, [sp, #0xc]
	ldr r0, [r1, r0]
	add r0, r2, r0
	str r0, [sp, #0xc]
_02237D6E:
	add r0, sp, #0
	bl sub_02021AA0
	add r4, r0, #0
_02237D76:
	add r0, r4, #0
	mov r1, #1
	bl sub_02021CC8
	add r0, r4, #0
	mov r1, #0
	bl sub_02021E80
	ldr r1, [sp, #0x40]
	add r0, r4, #0
	bl sub_02021D6C
	add r0, r4, #0
	mov r1, #1
	bl sub_02021CAC
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237D9C: .word 0x0223F550
	thumb_func_end ov97_02237D14

	thumb_func_start ov97_02237DA0
ov97_02237DA0: ; 0x02237DA0
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02237E40 ; =0x0223F750
	ldr r4, _02237E44 ; =0x0223F550
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02237DBE
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021BD4
	mov r0, #0x82
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02237DBE:
	mov r1, #0x51
	ldr r0, _02237E48 ; =0x0223F584
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DCE
	bl sub_0200A4E4
_02237DCE:
	mov r1, #0x57
	ldr r0, _02237E48 ; =0x0223F584
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DDE
	bl sub_0200A4E4
_02237DDE:
	mov r1, #0x52
	ldr r0, _02237E48 ; =0x0223F584
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DEE
	bl sub_0200A6DC
_02237DEE:
	mov r1, #0x16
	ldr r0, _02237E48 ; =0x0223F584
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DFE
	bl sub_0200A6DC
_02237DFE:
	mov r4, #0
	mov r7, #0x4b
	ldr r5, _02237E48 ; =0x0223F584
	add r6, r4, #0
	lsl r7, r7, #2
_02237E08:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	str r6, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02237E08
	ldr r0, _02237E48 ; =0x0223F584
	ldr r0, [r0, #0]
	bl sub_02021964
	ldr r0, _02237E48 ; =0x0223F584
	mov r1, #0
	str r1, [r0, #0]
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02237E40: .word 0x0223F750
_02237E44: .word 0x0223F550
_02237E48: .word 0x0223F584
	thumb_func_end ov97_02237DA0

	thumb_func_start ov97_02237E4C
ov97_02237E4C: ; 0x02237E4C
	mov r1, #1
	sub r0, #0xa
	lsl r1, r0
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02237E4C

	thumb_func_start ov97_02237E58
ov97_02237E58: ; 0x02237E58
	push {r4, lr}
	ldr r0, _02237E94 ; =0x022403D0
	ldr r4, _02237E98 ; =0x0223F550
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _02237E72
	ldr r1, _02237E9C ; =0x00000EA4
	add r0, r4, #0
	ldr r1, [r4, r1]
	blx r1
	ldr r0, _02237E9C ; =0x00000EA4
	mov r1, #0
	str r1, [r4, r0]
_02237E72:
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02237E84
	bl sub_0201C2B8
_02237E84:
	ldr r3, _02237EA0 ; =0x027E0000
	ldr r1, _02237EA4 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02237E94: .word 0x022403D0
_02237E98: .word 0x0223F550
_02237E9C: .word 0x00000EA4
_02237EA0: .word 0x027E0000
_02237EA4: .word 0x00003FF8
	thumb_func_end ov97_02237E58

	thumb_func_start ov97_02237EA8
ov97_02237EA8: ; 0x02237EA8
	push {r3, r4}
	sub sp, #0x20
	ldr r4, _02237EF4 ; =0x0223DAC8
	add r3, sp, #0
	mov r2, #0x1e
_02237EB2:
	ldrb r1, [r4]
	add r4, r4, #1
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02237EB2
	add r1, sp, #0
	ldrb r2, [r1]
	mov r3, #0
	sub r1, r3, #1
	cmp r2, r1
	beq _02237EEC
	add r4, sp, #0
	sub r1, r3, #1
_02237ECE:
	ldrb r2, [r4]
	cmp r0, r2
	bne _02237EE2
	add r0, sp, #0
	lsl r1, r3, #1
	add r0, #1
	add sp, #0x20
	ldrb r0, [r0, r1]
	pop {r3, r4}
	bx lr
_02237EE2:
	add r4, r4, #2
	ldrb r2, [r4]
	add r3, r3, #1
	cmp r2, r1
	bne _02237ECE
_02237EEC:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02237EF4: .word 0x0223DAC8
	thumb_func_end ov97_02237EA8

	thumb_func_start ov97_02237EF8
ov97_02237EF8: ; 0x02237EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r1, #0
	str r0, [sp, #0x20]
	add r0, r6, #0
	add r5, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x44]
	bl sub_02075D6C
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl sub_02075E0C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r0, r7, #0x18
	ldr r2, [sp, #0x24]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0
	lsl r1, r5, #0x10
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_02075FB4
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl sub_02074470
	mov r3, #0
	str r3, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x40]
	ldr r2, _02237FB0 ; =0x0223F550
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r2, [r2, #8]
	bl sub_020136A4
	mov r1, #0x32
	ldr r0, [sp, #0x40]
	lsl r1, r1, #6
	bl sub_020C2C54
	ldr r0, [sp, #0x20]
	bl sub_02021F98
	mov r1, #2
	bl sub_020A81B0
	mov r2, #0x32
	add r1, r0, #0
	lsl r2, r2, #6
	ldr r0, [sp, #0x40]
	add r1, r1, r2
	bl sub_020C0314
	ldr r0, [sp, #0x20]
	bl sub_02021F9C
	mov r1, #2
	bl sub_020A81FC
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _02237FB0 ; =0x0223F550
	mov r2, #5
	ldr r0, [r0, #8]
	add r3, #0x60
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldrh r1, [r4, #4]
	bl sub_02006E84
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02237FB0: .word 0x0223F550
	thumb_func_end ov97_02237EF8

	thumb_func_start ov97_02237FB4
ov97_02237FB4: ; 0x02237FB4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x21
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x23
	mov r2, #0x20
	mov r3, #0x22
	bl ov97_02237B0C
	mov r1, #1
	mov r0, #0
	lsl r1, r1, #0x14
	bl ov97_02237C80
	mov r3, #0
	mov r1, #0x82
	str r3, [sp]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #1
	mov r2, #0x80
	bl ov97_02237D14
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov97_02237FB4

	thumb_func_start ov97_02237FF4
ov97_02237FF4: ; 0x02237FF4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	str r0, [sp, #4]
	mov r0, #0x36
	mov r1, #0xa
	mov r2, #0
	mov r3, #0xb
	bl ov97_02237B0C
	mov r1, #1
	mov r0, #0
	lsl r1, r1, #0x14
	bl ov97_02237C80
	mov r0, #1
	mov r1, #0x82
	str r0, [sp]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0x80
	mov r3, #0
	bl ov97_02237D14
	mov r2, #0x82
	lsl r2, r2, #2
	add r6, #8
	str r0, [r5, r2]
	cmp r4, #7
	bgt _0223804C
	cmp r4, #1
	blt _022380BE
	beq _02238050
	cmp r4, #2
	beq _02238086
	cmp r4, #7
	beq _022380A4
	add sp, #8
	pop {r4, r5, r6, pc}
_0223804C:
	cmp r4, #0xd
	bne _022380BE
_02238050:
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	mov r1, #0x85
	lsl r1, r1, #2
	add r3, r0, #0
	add r0, r5, r1
	str r0, [sp]
	ldr r0, _022380C4 ; =0x00000E94
	sub r1, #0xc
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r6, #0
	add r2, r4, #0
	bl ov97_02237EF8
	add sp, #8
	pop {r4, r5, r6, pc}
_02238086:
	add r0, r2, #0
	add r0, #0xc
	add r0, r5, r0
	str r0, [sp]
	ldr r0, _022380C4 ; =0x00000E94
	add r1, r6, #0
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	sub r2, #0x1a
	mov r3, #0
	bl ov97_02237EF8
	add sp, #8
	pop {r4, r5, r6, pc}
_022380A4:
	add r0, r2, #0
	add r0, #0xc
	add r0, r5, r0
	str r0, [sp]
	ldr r0, _022380C4 ; =0x00000E94
	add r1, r6, #0
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	sub r2, #0x1a
	mov r3, #1
	bl ov97_02237EF8
_022380BE:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022380C4: .word 0x00000E94
	thumb_func_end ov97_02237FF4

	thumb_func_start ov97_022380C8
ov97_022380C8: ; 0x022380C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	cmp r1, #0xc
	bhi _0223810C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022380DE: ; jump table
	.short _0223810C - _022380DE - 2 ; case 0
	.short _0223810C - _022380DE - 2 ; case 1
	.short _0223810C - _022380DE - 2 ; case 2
	.short _022380F8 - _022380DE - 2 ; case 3
	.short _0223810C - _022380DE - 2 ; case 4
	.short _0223810C - _022380DE - 2 ; case 5
	.short _0223810C - _022380DE - 2 ; case 6
	.short _0223810C - _022380DE - 2 ; case 7
	.short _022380FC - _022380DE - 2 ; case 8
	.short _02238100 - _022380DE - 2 ; case 9
	.short _02238106 - _022380DE - 2 ; case 10
	.short _0223810C - _022380DE - 2 ; case 11
	.short _0223810A - _022380DE - 2 ; case 12
_022380F8:
	ldr r4, [r2, #4]
	b _0223810C
_022380FC:
	ldr r4, _02238168 ; =0x000001C6
	b _0223810C
_02238100:
	mov r4, #0x71
	lsl r4, r4, #2
	b _0223810C
_02238106:
	ldr r4, _0223816C ; =0x000001C7
	b _0223810C
_0223810A:
	ldr r4, _02238170 ; =0x000001D3
_0223810C:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	bl sub_0207CE78
	add r7, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #2
	bl sub_0207CE78
	add r4, r0, #0
	bl sub_0207CF40
	add r6, r0, #0
	bl sub_0207CF44
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x10
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov97_02237B0C
	mov r1, #1
	mov r0, #0
	lsl r1, r1, #0x14
	bl ov97_02237C80
	mov r3, #0
	mov r1, #0x82
	str r3, [sp]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r0, #1
	mov r2, #0x80
	bl ov97_02237D14
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02238168: .word 0x000001C6
_0223816C: .word 0x000001C7
_02238170: .word 0x000001D3
	thumb_func_end ov97_022380C8

	thumb_func_start ov97_02238174
ov97_02238174: ; 0x02238174
	push {r3, lr}
	sub sp, #8
	mov r1, #0xc0
	str r1, [sp]
	ldr r0, [r0, #8]
	mov r2, #4
	add r3, r2, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x1d
	add r3, #0xfc
	bl sub_02006E84
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02238174

	thumb_func_start ov97_02238194
ov97_02238194: ; 0x02238194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldrh r4, [r6]
	add r5, r0, #0
	add r0, r4, #0
	bl ov97_02237EA8
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _0223828C ; =0x0223F550
	mov r1, #0x1e
	ldr r0, [r0, #8]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0x74
	mov r3, #5
	bl sub_02006E3C
	mov r2, #1
	ldr r3, _0223828C ; =0x0223F550
	str r2, [sp]
	ldr r3, [r3, #8]
	mov r0, #0x74
	mov r1, #0x1f
	bl sub_02006FE8
	add r1, sp, #0x14
	str r0, [sp, #0x10]
	bl sub_020A7248
	ldr r2, [sp, #0x14]
	mov r3, #6
	add r0, r5, #0
	mov r1, #5
	add r2, #0xc
	lsl r3, r3, #8
	bl sub_02019574
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	mov r2, #0
	add r7, #8
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_02019E2C
	add r0, r5, #0
	mov r1, #5
	bl sub_0201C3C0
	ldr r1, _02238290 ; =ov97_02238174
	ldr r0, _02238294 ; =0x022403D0
	cmp r4, #0xd
	str r1, [r0, #0x24]
	ldr r0, _0223828C ; =0x0223F550
	str r5, [r0, #0]
	bhi _0223827A
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02238232: ; jump table
	.short _0223827A - _02238232 - 2 ; case 0
	.short _02238264 - _02238232 - 2 ; case 1
	.short _02238264 - _02238232 - 2 ; case 2
	.short _02238270 - _02238232 - 2 ; case 3
	.short _0223824E - _02238232 - 2 ; case 4
	.short _0223824E - _02238232 - 2 ; case 5
	.short _0223824E - _02238232 - 2 ; case 6
	.short _0223825A - _02238232 - 2 ; case 7
	.short _02238270 - _02238232 - 2 ; case 8
	.short _02238270 - _02238232 - 2 ; case 9
	.short _02238270 - _02238232 - 2 ; case 10
	.short _0223824E - _02238232 - 2 ; case 11
	.short _02238270 - _02238232 - 2 ; case 12
	.short _02238264 - _02238232 - 2 ; case 13
_0223824E:
	ldr r0, _02238298 ; =0x0223F550
	add r1, r4, #0
	add r2, r6, #0
	bl ov97_02237FB4
	b _0223827A
_0223825A:
	mov r1, #0x83
	ldr r0, _02238298 ; =0x0223F550
	mov r2, #0x78
	lsl r1, r1, #2
	str r2, [r0, r1]
_02238264:
	ldr r0, _02238298 ; =0x0223F550
	add r1, r4, #0
	add r2, r6, #0
	bl ov97_02237FF4
	b _0223827A
_02238270:
	ldr r0, _02238298 ; =0x0223F550
	add r1, r4, #0
	add r2, r6, #0
	bl ov97_022380C8
_0223827A:
	mov r1, #0x82
	ldr r0, _02238298 ; =0x0223F550
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223828C: .word 0x0223F550
_02238290: .word ov97_02238174
_02238294: .word 0x022403D0
_02238298: .word 0x0223F550
	thumb_func_end ov97_02238194

	thumb_func_start ov97_0223829C
ov97_0223829C: ; 0x0223829C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r0, r2, #0
	lsl r1, r1, #8
	str r2, [sp]
	bl sub_02018144
	ldr r1, _0223831C ; =0x0000A001
	add r4, r0, #0
	bl sub_020D316C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x50
	bl sub_020D32D4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	add r0, sp, #4
	bl sub_020C3FA0
	add r0, sp, #4
	ldrh r1, [r0, #2]
	mov r2, #0
	add r3, sp, #4
	strh r1, [r0, #6]
	ldr r1, _02238320 ; =0x0000D679
	strh r6, [r0, #2]
_022382DE:
	ldrh r0, [r3]
	add r2, r2, #1
	eor r0, r1
	strh r0, [r3]
	ldrh r1, [r3]
	add r3, r3, #2
	cmp r2, #4
	blt _022382DE
	mov r1, #0x41
	ldr r0, [sp]
	lsl r1, r1, #2
	bl sub_02018144
	add r1, sp, #4
	mov r2, #8
	add r4, r0, #0
	bl sub_020A49A4
	add r5, #0x50
	mov r2, #0xd6
	add r0, r4, #0
	add r1, r5, #0
	lsl r2, r2, #2
	add r3, r7, #0
	blx ov97_02239420
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223831C: .word 0x0000A001
_02238320: .word 0x0000D679
	thumb_func_end ov97_0223829C

	thumb_func_start ov97_02238324
ov97_02238324: ; 0x02238324
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r0, r2, #0
	lsl r1, r1, #8
	str r2, [sp]
	bl sub_02018144
	ldr r1, _022383BC ; =0x0000A001
	add r4, r0, #0
	bl sub_020D316C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x50
	bl sub_020D32D4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	bl sub_02033F3C
	ldrb r2, [r0, #4]
	add r1, sp, #4
	mov r3, #0
	strb r2, [r1]
	ldrb r2, [r0, #5]
	strb r2, [r1, #1]
	ldrb r2, [r0, #6]
	strb r2, [r1, #2]
	ldrb r2, [r0, #7]
	strb r2, [r1, #3]
	ldrb r2, [r0, #8]
	strb r2, [r1, #4]
	ldrb r0, [r0, #9]
	strb r0, [r1, #5]
	add r0, sp, #4
	ldrh r2, [r0, #2]
	strh r2, [r0, #6]
	ldr r2, _022383C0 ; =0x0000D679
	strh r6, [r0, #2]
_0223837E:
	ldrh r0, [r1]
	add r3, r3, #1
	eor r0, r2
	strh r0, [r1]
	ldrh r2, [r1]
	add r1, r1, #2
	cmp r3, #4
	blt _0223837E
	mov r1, #0x41
	ldr r0, [sp]
	lsl r1, r1, #2
	bl sub_02018144
	add r1, sp, #4
	mov r2, #8
	add r4, r0, #0
	bl sub_020A49A4
	add r5, #0x50
	mov r2, #0xd6
	add r0, r4, #0
	add r1, r5, #0
	lsl r2, r2, #2
	add r3, r7, #0
	blx ov97_02239420
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022383BC: .word 0x0000A001
_022383C0: .word 0x0000D679
	thumb_func_end ov97_02238324

	thumb_func_start ov97_022383C4
ov97_022383C4: ; 0x022383C4
	push {r3, lr}
	cmp r2, #0
	beq _022383CE
	cmp r2, #1
	pop {r3, pc}
_022383CE:
	ldr r0, _022383D8 ; =0x000005DC
	bl sub_02005748
	pop {r3, pc}
	nop
_022383D8: .word 0x000005DC
	thumb_func_end ov97_022383C4

	thumb_func_start ov97_022383DC
ov97_022383DC: ; 0x022383DC
	push {r3, lr}
	ldr r0, _022383FC ; =0x027FFFA8
	ldrh r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	bne _022383F8
	bl sub_020D08C0
	cmp r0, #0
	bne _022383F8
	bl sub_020D12E4
_022383F8:
	pop {r3, pc}
	nop
_022383FC: .word 0x027FFFA8
	thumb_func_end ov97_022383DC

	thumb_func_start ov97_02238400
ov97_02238400: ; 0x02238400
	push {r3, lr}
	cmp r0, #1
	bne _02238428
	ldr r1, _02238434 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #0
	strh r0, [r1]
	lsr r0, r1, #0xd
	ldr r1, _02238438 ; =ov97_022383DC
	bl sub_020C144C
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_020C161C
	ldr r1, _02238434 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	pop {r3, pc}
_02238428:
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_020C164C
	pop {r3, pc}
	nop
_02238434: .word 0x04000208
_02238438: .word ov97_022383DC
	thumb_func_end ov97_02238400

	thumb_func_start ov97_0223843C
ov97_0223843C: ; 0x0223843C
	bx lr
	; .align 2, 0
	thumb_func_end ov97_0223843C

	thumb_func_start ov97_02238440
ov97_02238440: ; 0x02238440
	push {r3, lr}
	ldr r1, _02238464 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #0
	strh r0, [r1]
	lsr r0, r1, #0xd
	ldr r1, _02238468 ; =ov97_0223843C
	bl sub_020C144C
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_020C161C
	ldr r1, _02238464 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	pop {r3, pc}
	; .align 2, 0
_02238464: .word 0x04000208
_02238468: .word ov97_0223843C
	thumb_func_end ov97_02238440

	thumb_func_start ov97_0223846C
ov97_0223846C: ; 0x0223846C
	ldr r1, _02238478 ; =0x0223F550
	str r0, [r1, #0x18]
	mov r0, #0
	str r0, [r1, #0x14]
	bx lr
	nop
_02238478: .word 0x0223F550
	thumb_func_end ov97_0223846C

	thumb_func_start ov97_0223847C
ov97_0223847C: ; 0x0223847C
	push {r3, r4, r5, lr}
	ldr r0, _022384EC ; =0x0223F550
	ldr r4, _022384F0 ; =0x0223F550
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bhi _022384E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02238494: ; jump table
	.short _0223849E - _02238494 - 2 ; case 0
	.short _022384B4 - _02238494 - 2 ; case 1
	.short _022384E8 - _02238494 - 2 ; case 2
	.short _022384E8 - _02238494 - 2 ; case 3
	.short _022384E8 - _02238494 - 2 ; case 4
_0223849E:
	mov r0, #4
	bl sub_02017DE0
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_02024814
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	b _022384E8
_022384B4:
	ldr r0, [r4, #0x18]
	bl sub_02024828
	add r5, r0, #0
	cmp r5, #3
	bne _022384C6
	mov r0, #3
	str r0, [r4, #0x14]
	b _022384D8
_022384C6:
	cmp r5, #2
	bne _022384D0
	mov r0, #2
	str r0, [r4, #0x14]
	b _022384D8
_022384D0:
	cmp r5, #1
	bne _022384D8
	mov r0, #4
	str r0, [r4, #0x14]
_022384D8:
	sub r0, r5, #2
	cmp r0, #1
	bhi _022384E4
	mov r0, #4
	bl sub_02017DF0
_022384E4:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_022384E8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022384EC: .word 0x0223F550
_022384F0: .word 0x0223F550
	thumb_func_end ov97_0223847C

	thumb_func_start ov97_022384F4
ov97_022384F4: ; 0x022384F4
	ldr r0, _02238504 ; =0x0223F550
	ldr r1, _02238508 ; =0x0223F550
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bne _02238502
	mov r0, #1
	str r0, [r1, #0x14]
_02238502:
	bx lr
	; .align 2, 0
_02238504: .word 0x0223F550
_02238508: .word 0x0223F550
	thumb_func_end ov97_022384F4

	thumb_func_start ov97_0223850C
ov97_0223850C: ; 0x0223850C
	push {r3, lr}
	ldr r0, _02238524 ; =0x0223F550
	ldr r0, [r0, #0x18]
	bl sub_02024850
	ldr r0, _02238524 ; =0x0223F550
	mov r1, #3
	str r1, [r0, #0x14]
	mov r0, #4
	bl sub_02017DF0
	pop {r3, pc}
	; .align 2, 0
_02238524: .word 0x0223F550
	thumb_func_end ov97_0223850C

	thumb_func_start ov97_02238528
ov97_02238528: ; 0x02238528
	ldr r0, _02238530 ; =0x0223F550
	ldr r0, [r0, #0x14]
	bx lr
	nop
_02238530: .word 0x0223F550
	thumb_func_end ov97_02238528

	.rodata


	.global Unk_ov97_0223DA9C
Unk_ov97_0223DA9C: ; 0x0223DA9C
	.incbin "incbin/overlay97_rodata.bin", 0x428, 0x438 - 0x428

	.global Unk_ov97_0223DAAC
Unk_ov97_0223DAAC: ; 0x0223DAAC
	.incbin "incbin/overlay97_rodata.bin", 0x438, 0x454 - 0x438

	.global Unk_ov97_0223DAC8
Unk_ov97_0223DAC8: ; 0x0223DAC8
	.incbin "incbin/overlay97_rodata.bin", 0x454, 0x1E


	.bss


	.global Unk_ov97_0223F550
Unk_ov97_0223F550: ; 0x0223F550
	.space 0xEA8

