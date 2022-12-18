	.include "macros/function.inc"
	.include "include/ov94_0223FB48.inc"

	

	.text


	thumb_func_start ov94_0223FB48
ov94_0223FB48: ; 0x0223FB48
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_022401E0
	ldr r0, [r4, #4]
	bl ov94_0223FC08
	add r0, r4, #0
	bl ov94_0223FD4C
	add r0, r4, #0
	bl ov94_02240028
	add r0, r4, #0
	bl ov94_0223FE24
	ldr r0, [r4, #0x20]
	cmp r0, #8
	bne _0223FB88
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	b _0223FB9E
_0223FB88:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
_0223FB9E:
	mov r1, #0x45
	lsl r1, r1, #2
	ldrh r1, [r4, r1]
	add r0, r4, #0
	bl ov94_02240FA0
	add r0, r4, #0
	bl ov94_02245934
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov94_0223FB48

	thumb_func_start ov94_0223FBBC
ov94_0223FBBC: ; 0x0223FBBC
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223C4B4
	bl sub_020397B0
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0223FBD8 ; =0x022468DC
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0223FBD8: .word 0x022468DC
	thumb_func_end ov94_0223FBBC

	thumb_func_start ov94_0223FBDC
ov94_0223FBDC: ; 0x0223FBDC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02039794
	add r0, r4, #0
	bl ov94_0223FFC8
	add r0, r4, #0
	bl ov94_02240268
	add r0, r4, #0
	bl ov94_02240190
	ldr r0, [r4, #4]
	bl ov94_0223FD20
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_0223FBDC

	thumb_func_start ov94_0223FC08
ov94_0223FC08: ; 0x0223FC08
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0223FD08 ; =0x02245E24
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223FD0C ; =0x02245E9C
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
	ldr r5, _0223FD10 ; =0x02245EB8
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
	ldr r5, _0223FD14 ; =0x02245E80
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
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _0223FD18 ; =0x02245E48
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
	ldr r5, _0223FD1C ; =0x02245E64
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
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_0223FD08: .word 0x02245E24
_0223FD0C: .word 0x02245E9C
_0223FD10: .word 0x02245EB8
_0223FD14: .word 0x02245E80
_0223FD18: .word 0x02245E48
_0223FD1C: .word 0x02245E64
	thumb_func_end ov94_0223FC08

	thumb_func_start ov94_0223FD20
ov94_0223FD20: ; 0x0223FD20
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
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
	pop {r4, pc}
	thumb_func_end ov94_0223FD20

	thumb_func_start ov94_0223FD4C
ov94_0223FD4C: ; 0x0223FD4C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r5, [r6, #4]
	mov r0, #0x68
	mov r1, #0x3e
	bl sub_02006C24
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0x3e
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #2
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xc
	add r2, r5, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x18
	add r2, r5, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1d
	add r2, r5, #0
	mov r3, #2
	bl sub_0200710C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_0223FD4C

	thumb_func_start ov94_0223FE24
ov94_0223FE24: ; 0x0223FE24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r2, _0223FFA8 ; =0x00000D54
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	add r2, r5, r2
	mov r3, #1
	bl ov94_0223C300
	ldr r0, _0223FFAC ; =0x00000116
	ldrh r1, [r5, r0]
	lsl r2, r1, #2
	ldr r1, _0223FFB0 ; =0x02245ED4
	ldrh r1, [r1, r2]
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	ldrh r0, [r5, r0]
	lsl r1, r0, #2
	ldr r0, _0223FFB4 ; =0x02245ED6
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0x37
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #4
	bl sub_02021D6C
	ldr r0, _0223FFAC ; =0x00000116
	ldrh r0, [r5, r0]
	cmp r0, #0x1f
	beq _0223FE7E
	cmp r0, #5
	bhi _0223FE8C
_0223FE7E:
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021E80
	b _0223FE98
_0223FE8C:
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021E80
_0223FE98:
	ldr r6, _0223FFB0 ; =0x02245ED4
	mov r7, #0
	add r4, r5, #0
_0223FE9E:
	ldrh r0, [r6]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r6, #2]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x14
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl sub_02021AA0
	ldr r1, _0223FFB8 ; =0x00000DC8
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	add r1, r7, #6
	bl sub_02021D6C
	ldr r0, _0223FFB8 ; =0x00000DC8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021E80
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #0x1e
	blt _0223FE9E
	ldr r6, _0223FFB0 ; =0x02245ED4
	mov r7, #0
	add r4, r5, #0
_0223FEDC:
	ldrh r0, [r6]
	add r0, r0, #4
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r6, #2]
	add r0, r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0x39
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #0x28
	bl sub_02021D6C
	mov r0, #0x39
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021E80
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #0x1e
	blt _0223FEDC
	ldr r6, _0223FFB0 ; =0x02245ED4
	mov r7, #0
	add r4, r5, #0
_0223FF22:
	ldrh r0, [r6]
	add r0, #0xc
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r6, #2]
	add r0, r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl sub_02021AA0
	ldr r1, _0223FFBC ; =0x00000EB8
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #0x2a
	bl sub_02021D6C
	ldr r0, _0223FFBC ; =0x00000EB8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021E80
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #6
	blt _0223FF22
	ldr r4, _0223FFC0 ; =0x02245E1C
	ldr r7, _0223FFC4 ; =0x00000EF4
	mov r6, #0
_0223FF64:
	ldrh r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldrh r0, [r4, #2]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	ldr r1, _0223FFC4 ; =0x00000EF4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _0223FFC4 ; =0x00000EF4
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r1, #0x26
	bl sub_02021D6C
	ldr r0, [r5, r7]
	mov r1, #1
	bl sub_02021E80
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #2
	blt _0223FF64
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FFA8: .word 0x00000D54
_0223FFAC: .word 0x00000116
_0223FFB0: .word 0x02245ED4
_0223FFB4: .word 0x02245ED6
_0223FFB8: .word 0x00000DC8
_0223FFBC: .word 0x00000EB8
_0223FFC0: .word 0x02245E1C
_0223FFC4: .word 0x00000EF4
	thumb_func_end ov94_0223FE24

	thumb_func_start ov94_0223FFC8
ov94_0223FFC8: ; 0x0223FFC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, _0224001C ; =0x00000EF4
	mov r6, #0
	add r4, r5, #0
_0223FFD2:
	ldr r0, [r4, r7]
	bl sub_02021BD4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _0223FFD2
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02021BD4
	mov r7, #0x39
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #6
_0223FFF2:
	ldr r0, _02240020 ; =0x00000DC8
	ldr r0, [r4, r0]
	bl sub_02021BD4
	ldr r0, [r4, r7]
	bl sub_02021BD4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x1e
	blt _0223FFF2
	ldr r6, _02240024 ; =0x00000EB8
	mov r4, #0
_0224000C:
	ldr r0, [r5, r6]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0224000C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224001C: .word 0x00000EF4
_02240020: .word 0x00000DC8
_02240024: .word 0x00000EB8
	thumb_func_end ov94_0223FFC8

	thumb_func_start ov94_02240028
ov94_02240028: ; 0x02240028
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #1
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _0224015C ; =0x00000F1C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _0224015C ; =0x00000F1C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r2, #0
	ldr r0, _02240160 ; =0x000F0E00
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, _02240164 ; =0x00000BB4
	ldr r0, _0224015C ; =0x00000F1C
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r3, #1
	bl ov94_02245900
	mov r1, #3
	str r1, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x60
	ldr r1, _02240168 ; =0x00000F2C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #5
	bl sub_0201A7E8
	ldr r0, _02240168 ; =0x00000F2C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	ldr r0, _02240168 ; =0x00000F2C
	add r0, r4, r0
	bl sub_0201A954
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	ldr r1, _0224016C ; =0x00000EFC
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	add r0, #0xfc
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _0224016C ; =0x00000EFC
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02240170 ; =0x0000013F
	ldr r1, _02240174 ; =0x0000103C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _02240174 ; =0x0000103C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #0x15
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _02240178 ; =0x00000165
	ldr r1, _0224017C ; =0x00000F4C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #1
	mov r3, #0x19
	bl sub_0201A7E8
	ldr r0, _0224017C ; =0x00000F4C
	mov r1, #6
	add r0, r4, r0
	bl sub_0201ADA4
	mov r3, #1
	ldr r0, _02240180 ; =0x00010306
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _02240184 ; =0x00000BAC
	ldr r0, _0224017C ; =0x00000F4C
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	bl ov94_02245900
	mov r1, #0xd
	str r1, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _02240188 ; =0x00000171
	ldr r1, _0224018C ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0224015C: .word 0x00000F1C
_02240160: .word 0x000F0E00
_02240164: .word 0x00000BB4
_02240168: .word 0x00000F2C
_0224016C: .word 0x00000EFC
_02240170: .word 0x0000013F
_02240174: .word 0x0000103C
_02240178: .word 0x00000165
_0224017C: .word 0x00000F4C
_02240180: .word 0x00010306
_02240184: .word 0x00000BAC
_02240188: .word 0x00000171
_0224018C: .word 0x00000F3C
	thumb_func_end ov94_02240028

	thumb_func_start ov94_02240190
ov94_02240190: ; 0x02240190
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022401C8 ; =0x0000103C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _022401CC ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _022401D0 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _022401D4 ; =0x00000EFC
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _022401D8 ; =0x00000F2C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _022401DC ; =0x00000F1C
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	nop
_022401C8: .word 0x0000103C
_022401CC: .word 0x00000F4C
_022401D0: .word 0x00000F3C
_022401D4: .word 0x00000EFC
_022401D8: .word 0x00000F2C
_022401DC: .word 0x00000F1C
	thumb_func_end ov94_02240190

	thumb_func_start ov94_022401E0
ov94_022401E0: ; 0x022401E0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x12
	mov r1, #0x3e
	bl sub_02023790
	ldr r1, _02240250 ; =0x00000BA8
	str r0, [r4, r1]
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, #0x24]
	cmp r0, #5
	bne _02240214
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x15
	bl sub_0200B1EC
	ldr r1, _02240254 ; =0x00000BB4
	str r0, [r4, r1]
	b _02240226
_02240214:
	cmp r0, #6
	bne _02240226
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x11
	bl sub_0200B1EC
	ldr r1, _02240254 ; =0x00000BB4
	str r0, [r4, r1]
_02240226:
	ldr r0, _02240258 ; =0x00000B94
	mov r1, #0x67
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	ldr r1, _0224025C ; =0x00000BAC
	str r0, [r4, r1]
	ldr r0, _02240260 ; =0x00000116
	ldrh r1, [r4, r0]
	cmp r1, #0x1e
	bne _02240240
	mov r1, #0
	strh r1, [r4, r0]
_02240240:
	mov r0, #0x3e
	mov r1, #0x78
	bl sub_02018144
	ldr r1, _02240264 ; =0x000010A8
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02240250: .word 0x00000BA8
_02240254: .word 0x00000BB4
_02240258: .word 0x00000B94
_0224025C: .word 0x00000BAC
_02240260: .word 0x00000116
_02240264: .word 0x000010A8
	thumb_func_end ov94_022401E0

	thumb_func_start ov94_02240268
ov94_02240268: ; 0x02240268
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240298 ; =0x000010A8
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, _0224029C ; =0x00000BA8
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _022402A0 ; =0x00000BAC
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _022402A4 ; =0x00000BB4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
_02240298: .word 0x000010A8
_0224029C: .word 0x00000BA8
_022402A0: .word 0x00000BAC
_022402A4: .word 0x00000BB4
	thumb_func_end ov94_02240268

	thumb_func_start ov94_022402A8
ov94_022402A8: ; 0x022402A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _022402B8
	mov r0, #1
	str r0, [r4, #0x2c]
_022402B8:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_022402A8

	thumb_func_start ov94_022402BC
ov94_022402BC: ; 0x022402BC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov94_022404F0
	ldr r0, [r5, #0x24]
	cmp r0, #5
	bne _022403CC
	ldr r0, _022404E0 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #2
	tst r0, r2
	beq _022402EC
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r5, #0x2c]
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_022402EC:
	mov r1, #1
	add r0, r2, #0
	tst r0, r1
	beq _02240336
	ldr r0, _022404E8 ; =0x00000116
	ldrh r0, [r5, r0]
	cmp r0, #0x1e
	bne _02240310
	add r0, r5, #0
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r5, #0x2c]
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_02240310:
	cmp r0, #0x1f
	beq _02240336
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022412F4
	cmp r0, #1
	beq _02240338
	cmp r0, #2
	beq _022403AE
_02240336:
	b _022404DA
_02240338:
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_0224121C
	cmp r0, #0
	beq _02240390
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	add r2, r0, #0
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, _022404EC ; =0x00000F0F
	mov r3, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x16
	mov r2, #1
	str r3, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #3
	mov r2, #7
	bl ov94_0223C3F4
	b _022404DA
_02240390:
	ldr r0, _022404EC ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1a
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _022404DA
_022403AE:
	ldr r0, _022404EC ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1b
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _022404DA
_022403CC:
	cmp r0, #6
	bne _02240432
	ldr r0, _022404E0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022403F0
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r5, #0x2c]
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_022403F0:
	mov r0, #1
	tst r0, r1
	beq _022404DA
	ldr r2, _022404E8 ; =0x00000116
	ldrh r3, [r5, r2]
	cmp r3, #0x1e
	bne _02240414
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r5, #0x2c]
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_02240414:
	cmp r3, #0x1f
	beq _022404DA
	ldr r1, [r5, #0]
	sub r2, r2, #2
	ldr r0, [r1, #8]
	ldrh r2, [r5, r2]
	ldr r1, [r1, #0xc]
	bl ov94_022412F4
	cmp r0, #0
	beq _022404D4
	cmp r0, #1
	beq _02240434
	cmp r0, #2
	beq _022404D4
_02240432:
	b _022404DA
_02240434:
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	mov r2, #0x12
	lsl r2, r2, #4
	mov r1, #0xd1
	ldr r3, [r5, r2]
	lsl r1, r1, #2
	add r2, r2, #4
	add r1, r5, r1
	mul r2, r3
	add r1, r1, r2
	add r4, r0, #0
	bl ov94_02241384
	cmp r0, #0
	beq _022404CC
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_0224121C
	cmp r0, #0
	beq _022404AE
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B5CC
	ldr r0, _022404EC ; =0x00000F0F
	mov r3, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #1
	str r3, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #3
	mov r2, #9
	bl ov94_0223C3F4
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_022404AE:
	ldr r0, _022404EC ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1a
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _022404DA
_022404CC:
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
	b _022404DA
_022404D4:
	ldr r0, _022404E4 ; =0x000005DC
	bl sub_02005748
_022404DA:
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022404E0: .word 0x021BF67C
_022404E4: .word 0x000005DC
_022404E8: .word 0x00000116
_022404EC: .word 0x00000F0F
	thumb_func_end ov94_022402BC

	thumb_func_start ov94_022404F0
ov94_022404F0: ; 0x022404F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _022405B4 ; =0x021BF67C
	mov r4, #0
	ldr r0, [r0, #0x48]
	mov r1, #0x40
	add r6, r4, #0
	tst r1, r0
	beq _02240506
	mov r6, #1
	b _02240522
_02240506:
	mov r1, #0x80
	tst r1, r0
	beq _02240510
	mov r6, #2
	b _02240522
_02240510:
	mov r1, #0x20
	tst r1, r0
	beq _0224051A
	mov r6, #3
	b _02240522
_0224051A:
	mov r1, #0x10
	tst r0, r1
	beq _02240522
	mov r6, #4
_02240522:
	cmp r6, #0
	beq _02240568
	ldr r0, _022405B8 ; =0x00000116
	ldr r1, _022405BC ; =0x02245F54
	ldrh r3, [r5, r0]
	sub r6, r6, #1
	lsl r2, r3, #2
	add r1, r1, r2
	ldrb r2, [r6, r1]
	cmp r2, r3
	beq _02240568
	cmp r2, #0x63
	beq _02240540
	cmp r2, #0x65
	bne _02240564
_02240540:
	mov r0, #0x45
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r1, #0x13
	sub r2, #0x64
	bl ov94_022405CC
	mov r1, #0x45
	lsl r1, r1, #2
	strh r0, [r5, r1]
	ldrh r1, [r5, r1]
	add r0, r5, #0
	bl ov94_02240FA0
	ldr r0, _022405C0 ; =0x000005DC
	bl sub_02005748
	b _02240568
_02240564:
	mov r4, #1
	strh r2, [r5, r0]
_02240568:
	cmp r4, #0
	beq _0224058A
	ldr r0, _022405C0 ; =0x000005DC
	bl sub_02005748
	ldr r0, _022405B8 ; =0x00000116
	ldr r1, _022405C4 ; =0x02245ED4
	ldrh r0, [r5, r0]
	ldr r2, _022405C8 ; =0x02245ED6
	lsl r3, r0, #2
	mov r0, #0x37
	lsl r0, r0, #6
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldr r0, [r5, r0]
	bl ov94_0223C3FC
_0224058A:
	ldr r0, _022405B8 ; =0x00000116
	ldrh r0, [r5, r0]
	cmp r0, #0x1f
	beq _02240596
	cmp r0, #5
	bhi _022405A4
_02240596:
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021E80
	pop {r4, r5, r6, pc}
_022405A4:
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021E80
	pop {r4, r5, r6, pc}
	nop
_022405B4: .word 0x021BF67C
_022405B8: .word 0x00000116
_022405BC: .word 0x02245F54
_022405C0: .word 0x000005DC
_022405C4: .word 0x02245ED4
_022405C8: .word 0x02245ED6
	thumb_func_end ov94_022404F0

	thumb_func_start ov94_022405CC
ov94_022405CC: ; 0x022405CC
	add r0, r0, r2
	bpl _022405D4
	sub r0, r1, #1
	bx lr
_022405D4:
	cmp r0, r1
	bne _022405DA
	mov r0, #0
_022405DA:
	bx lr
	thumb_func_end ov94_022405CC

	thumb_func_start ov94_022405DC
ov94_022405DC: ; 0x022405DC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	add r2, sp, #8
	strb r0, [r2, #8]
	mov r0, #1
	strb r0, [r2, #9]
	mov r0, #3
	strb r0, [r2, #0xa]
	ldrb r3, [r2, #0xb]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0x30
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0xc0
	bic r3, r1
	mov r1, #0x3e
	strb r3, [r2, #0xb]
	bl sub_02013A04
	ldr r1, _02240678 ; =0x0000106C
	mov r2, #0x5e
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _0224067C ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl sub_02013A4C
	ldr r0, _02240678 ; =0x0000106C
	ldr r1, _0224067C ; =0x00000B94
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x5f
	mov r3, #2
	bl sub_02013A4C
	ldr r0, _02240678 ; =0x0000106C
	ldr r1, _0224067C ; =0x00000B94
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x60
	mov r3, #3
	bl sub_02013A4C
	ldr r0, _02240678 ; =0x0000106C
	mov r1, #1
	ldr r0, [r4, r0]
	mov r2, #0x1f
	str r0, [sp, #8]
	ldr r0, _02240680 ; =0x00000F3C
	mov r3, #0xb
	add r0, r4, r0
	str r0, [sp, #0xc]
	bl sub_0200DC48
	mov r0, #0x3e
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #9
	add r3, r2, #0
	bl sub_02001B7C
	ldr r1, _02240684 ; =0x00001074
	str r0, [r4, r1]
	mov r0, #8
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02240678: .word 0x0000106C
_0224067C: .word 0x00000B94
_02240680: .word 0x00000F3C
_02240684: .word 0x00001074
	thumb_func_end ov94_022405DC

	thumb_func_start ov94_02240688
ov94_02240688: ; 0x02240688
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02240818 ; =0x00001074
	ldr r0, [r5, r0]
	bl sub_02001BE0
	cmp r0, #3
	bhi _022406AA
	cmp r0, #1
	blo _022406A8
	beq _022406B6
	cmp r0, #2
	beq _022406E2
	cmp r0, #3
	beq _022406B2
_022406A8:
	b _02240810
_022406AA:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _022406B4
_022406B2:
	b _022407E6
_022406B4:
	b _02240810
_022406B6:
	ldr r0, _02240818 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _0224081C ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240820 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #8
	mov r2, #5
	bl ov94_0223C4C0
	b _02240810
_022406E2:
	ldr r0, _02240818 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _0224081C ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240820 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	add r4, r0, #0
	bl ov94_0224123C
	cmp r0, #0
	beq _0224073A
	ldr r0, _02240824 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x25
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240810
_0224073A:
	add r0, r4, #0
	bl ov94_02241278
	cmp r0, #0
	beq _02240762
	ldr r0, _02240824 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xaa
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240810
_02240762:
	add r0, r4, #0
	bl ov94_022412C8
	cmp r0, #0
	beq _0224078A
	ldr r0, _02240824 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xab
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240810
_0224078A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r4, #0
	bl ov94_022411D0
	cmp r0, #0
	beq _022407B8
	ldr r1, _02240828 ; =0x00000116
	ldr r0, [r5, #0]
	ldrh r1, [r5, r1]
	ldr r0, [r0, #8]
	bl sub_0207A0FC
	mov r1, #0xa2
	add r2, r4, #0
	bl sub_02074470
	cmp r0, #0
	beq _022407B8
	mov r0, #0xe
	mov r4, #1
	str r0, [r5, #0x2c]
_022407B8:
	cmp r4, #0
	bne _02240810
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl ov94_0223C4C0
	b _02240810
_022407E6:
	ldr r0, _02240818 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _0224081C ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240820 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0224082C ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	mov r0, #1
	str r0, [r5, #0x2c]
_02240810:
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02240818: .word 0x00001074
_0224081C: .word 0x0000106C
_02240820: .word 0x00000F3C
_02240824: .word 0x00000F0F
_02240828: .word 0x00000116
_0224082C: .word 0x00000EFC
	thumb_func_end ov94_02240688

	thumb_func_start ov94_02240830
ov94_02240830: ; 0x02240830
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	add r2, sp, #8
	strb r0, [r2, #8]
	mov r0, #1
	strb r0, [r2, #9]
	mov r0, #3
	strb r0, [r2, #0xa]
	ldrb r3, [r2, #0xb]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0x30
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0xc0
	bic r3, r1
	mov r1, #0x3e
	strb r3, [r2, #0xb]
	bl sub_02013A04
	ldr r1, _022408D8 ; =0x0000106C
	mov r2, #0x54
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _022408DC ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl sub_02013A4C
	ldr r0, _022408D8 ; =0x0000106C
	ldr r1, _022408DC ; =0x00000B94
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x55
	mov r3, #2
	bl sub_02013A4C
	ldr r0, _022408D8 ; =0x0000106C
	ldr r1, _022408DC ; =0x00000B94
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x56
	mov r3, #3
	bl sub_02013A4C
	ldr r0, _022408D8 ; =0x0000106C
	mov r1, #0xf
	ldr r0, [r4, r0]
	str r0, [sp, #8]
	ldr r0, _022408E0 ; =0x00000F3C
	add r0, r4, r0
	str r0, [sp, #0xc]
	bl sub_0201ADA4
	ldr r0, _022408E0 ; =0x00000F3C
	mov r1, #1
	add r0, r4, r0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x3e
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #9
	add r3, r2, #0
	bl sub_02001B7C
	ldr r1, _022408E4 ; =0x00001074
	str r0, [r4, r1]
	mov r0, #0xa
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_022408D8: .word 0x0000106C
_022408DC: .word 0x00000B94
_022408E0: .word 0x00000F3C
_022408E4: .word 0x00001074
	thumb_func_end ov94_02240830

	thumb_func_start ov94_022408E8
ov94_022408E8: ; 0x022408E8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02240A54 ; =0x00001074
	ldr r0, [r5, r0]
	bl sub_02001BE0
	cmp r0, #3
	bhi _0224090A
	cmp r0, #1
	blo _02240908
	beq _02240916
	cmp r0, #2
	beq _02240942
	cmp r0, #3
	beq _02240912
_02240908:
	b _02240A4E
_0224090A:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _02240914
_02240912:
	b _02240A24
_02240914:
	b _02240A4E
_02240916:
	ldr r0, _02240A54 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _02240A58 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240A5C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #8
	mov r2, #6
	bl ov94_0223C4C0
	b _02240A4E
_02240942:
	ldr r0, _02240A54 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _02240A58 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240A5C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r5, #0]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	add r4, r0, #0
	bl ov94_0224123C
	cmp r0, #0
	beq _0224099A
	ldr r0, _02240A60 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x25
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240A4E
_0224099A:
	add r0, r4, #0
	bl ov94_02241278
	cmp r0, #0
	beq _022409C2
	ldr r0, _02240A60 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xaa
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240A4E
_022409C2:
	add r0, r4, #0
	bl ov94_022412C8
	cmp r0, #0
	beq _022409EA
	ldr r0, _02240A60 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xab
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	b _02240A4E
_022409EA:
	mov r0, #0x45
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r4, #0
	bl ov94_022411D0
	cmp r0, #0
	beq _02240A18
	ldr r1, _02240A64 ; =0x00000116
	ldr r0, [r5, #0]
	ldrh r1, [r5, r1]
	ldr r0, [r0, #8]
	bl sub_0207A0FC
	mov r1, #0xa2
	add r2, r4, #0
	bl sub_02074470
	cmp r0, #0
	beq _02240A18
	mov r0, #0xb
	mov r4, #1
	str r0, [r5, #0x2c]
_02240A18:
	cmp r4, #0
	bne _02240A4E
	add r0, r5, #0
	bl ov94_02240BB0
	b _02240A4E
_02240A24:
	ldr r0, _02240A54 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _02240A58 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02240A5C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _02240A68 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	mov r0, #1
	str r0, [r5, #0x2c]
_02240A4E:
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02240A54: .word 0x00001074
_02240A58: .word 0x0000106C
_02240A5C: .word 0x00000F3C
_02240A60: .word 0x00000F0F
_02240A64: .word 0x00000116
_02240A68: .word 0x00000EFC
	thumb_func_end ov94_022408E8

	thumb_func_start ov94_02240A6C
ov94_02240A6C: ; 0x02240A6C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02240A7C
	cmp r0, #8
	bne _02240A9C
_02240A7C:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, _02240AC0 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	b _02240AB4
_02240A9C:
	mov r0, #6
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
_02240AB4:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02240AC0: .word 0x000010B0
	thumb_func_end ov94_02240A6C

	thumb_func_start ov94_02240AC4
ov94_02240AC4: ; 0x02240AC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02240AE0 ; =0x000001AD
	mov r1, #0xf
	bl ov94_0223C3C0
	ldr r1, _02240AE4 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #6
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_02240AE0: .word 0x000001AD
_02240AE4: .word 0x00001070
	thumb_func_end ov94_02240AC4

	thumb_func_start ov94_02240AE8
ov94_02240AE8: ; 0x02240AE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240B1C ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02240B18
	sub r1, r1, #1
	cmp r0, r1
	bne _02240B0A
	mov r0, #0
	str r0, [r4, #0x2c]
	b _02240B18
_02240B0A:
	mov r0, #2
	mov r1, #0
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
_02240B18:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02240B1C: .word 0x00001070
	thumb_func_end ov94_02240AE8

	thumb_func_start ov94_02240B20
ov94_02240B20: ; 0x02240B20
	push {r4, lr}
	sub sp, #8
	ldr r1, _02240B48 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r2, #1
	mov r1, #0x19
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xc
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	nop
_02240B48: .word 0x00000F0F
	thumb_func_end ov94_02240B20

	thumb_func_start ov94_02240B4C
ov94_02240B4C: ; 0x02240B4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02240B68 ; =0x000001AD
	mov r1, #0xd
	bl ov94_0223C3C0
	ldr r1, _02240B6C ; =0x00001070
	str r0, [r4, r1]
	mov r0, #0xd
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_02240B68: .word 0x000001AD
_02240B6C: .word 0x00001070
	thumb_func_end ov94_02240B4C

	thumb_func_start ov94_02240B70
ov94_02240B70: ; 0x02240B70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240BA8 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02240BA2
	sub r1, r1, #1
	cmp r0, r1
	bne _02240B9C
	ldr r0, _02240BAC ; =0x0000103C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	mov r0, #1
	str r0, [r4, #0x2c]
	b _02240BA2
_02240B9C:
	add r0, r4, #0
	bl ov94_02240BB0
_02240BA2:
	mov r0, #3
	pop {r4, pc}
	nop
_02240BA8: .word 0x00001070
_02240BAC: .word 0x0000103C
	thumb_func_end ov94_02240B70

	thumb_func_start ov94_02240BB0
ov94_02240BB0: ; 0x02240BB0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bl ov94_02241498
	cmp r0, #0
	beq _02240C08
	mov r0, #0x45
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	cmp r0, #0x12
	beq _02240C08
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	cmp r0, #6
	bne _02240C08
	ldr r0, _02240C50 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x1c
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl ov94_0223C3F4
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_02240C08:
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r4, #0]
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _02240C54 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #7
	mov r2, #9
	bl ov94_0223C4C0
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	bl ov94_022413BC
	mov r0, #0x47
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02240C50: .word 0x00000F0F
_02240C54: .word 0x000010B0
	thumb_func_end ov94_02240BB0

	thumb_func_start ov94_02240C58
ov94_02240C58: ; 0x02240C58
	push {r4, lr}
	sub sp, #8
	ldr r1, _02240C80 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r2, #1
	mov r1, #0x19
	mov r3, #0
	str r2, [sp, #4]
	bl ov94_02240D58
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xf
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	nop
_02240C80: .word 0x00000F0F
	thumb_func_end ov94_02240C58

	thumb_func_start ov94_02240C84
ov94_02240C84: ; 0x02240C84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02240CA0 ; =0x000001AD
	mov r1, #0xd
	bl ov94_0223C3C0
	ldr r1, _02240CA4 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #0x10
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_02240CA0: .word 0x000001AD
_02240CA4: .word 0x00001070
	thumb_func_end ov94_02240C84

	thumb_func_start ov94_02240CA8
ov94_02240CA8: ; 0x02240CA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240D00 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02240CFC
	sub r1, r1, #1
	cmp r0, r1
	bne _02240CD4
	ldr r0, _02240D04 ; =0x0000103C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	mov r0, #1
	str r0, [r4, #0x2c]
	b _02240CFC
_02240CD4:
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r1, [r4, #0]
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov94_022411DC
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl ov94_0223C4C0
_02240CFC:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02240D00: .word 0x00001070
_02240D04: .word 0x0000103C
	thumb_func_end ov94_02240CA8

	thumb_func_start ov94_02240D08
ov94_02240D08: ; 0x02240D08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240D24 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02240D20
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_02240D20:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02240D24: .word 0x00000BE4
	thumb_func_end ov94_02240D08

	thumb_func_start ov94_02240D28
ov94_02240D28: ; 0x02240D28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240D50 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02240D4A
	ldr r0, _02240D54 ; =0x0000103C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_02240D4A:
	mov r0, #3
	pop {r4, pc}
	nop
_02240D50: .word 0x00000BE4
_02240D54: .word 0x0000103C
	thumb_func_end ov94_02240D28

	thumb_func_start ov94_02240D58
ov94_02240D58: ; 0x02240D58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02240DC0 ; =0x00000B94
	add r6, r2, #0
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0xb9
	add r7, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x20
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200C388
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _02240D84
	ldr r0, _02240DC4 ; =0x00000EFC
	b _02240D86
_02240D84:
	ldr r0, _02240DC8 ; =0x0000103C
_02240D86:
	add r4, r5, r0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r6, [sp, #4]
	mov r2, #0xbb
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _02240DCC ; =0x00000BE4
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02240DC0: .word 0x00000B94
_02240DC4: .word 0x00000EFC
_02240DC8: .word 0x0000103C
_02240DCC: .word 0x00000BE4
	thumb_func_end ov94_02240D58

	thumb_func_start ov94_02240DD0
ov94_02240DD0: ; 0x02240DD0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r2, r3, #0
	bl sub_02006CB8
	add r4, r0, #0
	beq _02240DF2
	add r1, r5, #0
	bl sub_020A7164
	cmp r0, #0
	bne _02240DF2
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
_02240DF2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov94_02240DD0

	thumb_func_start ov94_02240DF8
ov94_02240DF8: ; 0x02240DF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	add r1, r6, #0
	add r2, r5, #0
	str r0, [sp]
	add r7, r3, #0
	ldr r4, [sp, #0x28]
	bl sub_02079D8C
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	add r2, sp, #8
	mov r3, #0x3e
	bl ov94_02240DD0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r4, #0
	mov r2, #2
	ldr r0, [r0, #0x14]
	add r1, #0xc
	lsl r2, r2, #8
	bl sub_020C4C14
	lsl r0, r7, #4
	add r0, #0xc
	lsl r0, r0, #5
	str r0, [r4, #0]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl sub_02079EDC
	add r0, r0, #3
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov94_02240DF8

	thumb_func_start ov94_02240E50
ov94_02240E50: ; 0x02240E50
	push {r4, lr}
	add r4, r1, #0
	bl sub_02075B40
	strb r0, [r4, #3]
	pop {r4, pc}
	thumb_func_end ov94_02240E50

	thumb_func_start ov94_02240E5C
ov94_02240E5C: ; 0x02240E5C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02240EA8 ; =0x000010B4
	mov r6, #2
	lsl r6, r6, #8
	add r7, r6, #0
	ldr r5, [r0, r1]
	str r0, [sp]
	mov r4, #0
	add r7, #0xc
_02240E6E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02240E92
	add r0, r5, #0
	add r0, #0xc
	add r1, r6, #0
	bl sub_020C2C54
	add r0, r5, #0
	ldr r1, [r5, #0]
	add r0, #0xc
	add r2, r6, #0
	bl sub_020C02BC
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	bl sub_02021E90
_02240E92:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #0x1e
	blt _02240E6E
	ldr r1, _02240EA8 ; =0x000010B4
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240EA8: .word 0x000010B4
	thumb_func_end ov94_02240E5C

	thumb_func_start ov94_02240EAC
ov94_02240EAC: ; 0x02240EAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r1, [sp, #0xc]
	add r7, r2, #0
	add r6, r3, #0
	ldr r4, [sp, #0x40]
	bl sub_02073D20
	add r0, r5, #0
	mov r1, #0xac
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	strh r0, [r6]
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #0x18]
	ldrh r0, [r6]
	mov r1, #0x6f
	mov r2, #0
	strh r0, [r4]
	add r0, r5, #0
	bl sub_02074570
	add r0, r0, #1
	strb r0, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02240F16
	mov r0, #0
	strb r0, [r4, #3]
_02240F16:
	add r0, r5, #0
	mov r1, #1
	bl sub_02073D48
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02240F84
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	ldr r2, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x38]
	str r0, [sp, #8]
	ldrh r0, [r6]
	bl ov94_02240DF8
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02240F78
	add r0, r7, #0
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	cmp r0, #0
	beq _02240F6C
	add r0, r7, #0
	mov r1, #0x29
	bl sub_02021D6C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02240F6C:
	add r0, r7, #0
	mov r1, #0x28
	bl sub_02021D6C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02240F78:
	add r0, r7, #0
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02240F84:
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl sub_02021CAC
	add r0, r7, #0
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [sp, #0x44]
	mov r1, #0
	str r1, [r0, #8]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov94_02240EAC

	thumb_func_start ov94_02240FA0
ov94_02240FA0: ; 0x02240FA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r5, r0, #0
	ldr r0, [r5, #0]
	str r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	ldr r1, _022411A4 ; =0x00003D68
	str r0, [sp, #0x20]
	mov r0, #3
	bl sub_02018184
	ldr r1, _022411A8 ; =0x000010B4
	str r0, [sp, #0x18]
	str r0, [r5, r1]
	mov r0, #0x13
	mov r1, #0x3e
	bl sub_02006C24
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	blt _02241060
	cmp r0, #0x12
	bge _02241060
	ldr r6, _022411AC ; =0x000010A8
	mov r4, #0
_02240FD4:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	bl sub_02079C9C
	ldr r2, [r5, r6]
	lsl r1, r4, #2
	add r1, r2, r1
	bl ov94_02240E50
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1e
	blo _02240FD4
	mov r4, #0
_02240FF4:
	ldr r0, _022411AC ; =0x000010A8
	lsl r6, r4, #2
	ldr r1, [r5, r0]
	mov r0, #0
	strh r0, [r1, r6]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	add r7, r5, r6
	bl sub_02079C9C
	ldr r1, [sp, #0x1c]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, _022411AC ; =0x000010A8
	add r2, r4, #0
	ldr r1, [r5, r1]
	add r3, sp, #0x2c
	add r1, r1, r6
	str r1, [sp, #8]
	mov r1, #0x83
	lsl r1, r1, #2
	mul r2, r1
	ldr r1, [sp, #0x18]
	lsl r6, r4, #1
	add r1, r1, r2
	str r1, [sp, #0xc]
	ldr r1, _022411B0 ; =0x00000DC8
	mov r2, #0x39
	lsl r2, r2, #6
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	add r3, r3, r6
	bl ov94_02240EAC
	cmp r4, #6
	bhs _02241048
	ldr r0, _022411B4 ; =0x00000EB8
	mov r1, #0
	ldr r0, [r7, r0]
	bl sub_02021CAC
_02241048:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1e
	blo _02240FF4
	ldr r2, _022411B8 ; =0x00000BA8
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	ldr r2, [r5, r2]
	bl sub_02079AF4
	b _0224114C
_02241060:
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	mov r4, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _022410F0
_02241070:
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_0207A0FC
	str r0, [sp, #0x24]
	bl sub_02076B10
	ldr r1, _022411AC ; =0x000010A8
	lsl r6, r4, #2
	ldr r1, [r5, r1]
	str r0, [sp, #0x28]
	add r1, r1, r6
	bl ov94_02240E50
	mov r2, #0x39
	ldr r0, [sp, #0x1c]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, _022411AC ; =0x000010A8
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r7, r5, r6
	add r0, r0, r6
	str r0, [sp, #8]
	mov r0, #0x83
	lsl r0, r0, #2
	mul r1, r0
	ldr r0, [sp, #0x18]
	lsl r2, r2, #6
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r1, _022411B0 ; =0x00000DC8
	ldr r0, [sp, #0x28]
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	lsl r6, r4, #1
	add r3, sp, #0x2c
	add r3, r3, r6
	bl ov94_02240EAC
	ldr r0, [sp, #0x24]
	mov r1, #0xa2
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	ldr r0, _022411B4 ; =0x00000EB8
	beq _022410DC
	ldr r0, [r7, r0]
	mov r1, #1
	bl sub_02021CAC
	b _022410E4
_022410DC:
	ldr r0, [r7, r0]
	mov r1, #0
	bl sub_02021CAC
_022410E4:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x14]
	cmp r4, r0
	blt _02241070
_022410F0:
	cmp r4, #0x1e
	bhs _0224113E
	mov r7, #0
_022410F6:
	ldr r0, _022411AC ; =0x000010A8
	lsl r1, r4, #2
	ldr r0, [r5, r0]
	add r6, r5, r1
	strh r7, [r0, r1]
	ldr r0, _022411B0 ; =0x00000DC8
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl sub_02021CAC
	mov r0, #0x39
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x83
	lsl r0, r0, #2
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r1, r0, r1
	mov r0, #0
	str r0, [r1, #8]
	cmp r4, #6
	bhs _02241134
	ldr r0, _022411B4 ; =0x00000EB8
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_02021CAC
_02241134:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1e
	blo _022410F6
_0224113E:
	ldr r2, _022411BC ; =0x00000B94
	mov r1, #0x59
	ldr r0, [r5, r2]
	add r2, #0x14
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_0224114C:
	ldr r0, [sp, #0x1c]
	bl sub_02006CA8
	ldr r0, _022411C0 ; =0x00000F2C
	mov r1, #0
	add r0, r5, r0
	bl sub_0201ADA4
	mov r0, #1
	str r0, [sp]
	ldr r0, _022411C4 ; =0x00010200
	ldr r1, _022411B8 ; =0x00000BA8
	str r0, [sp, #4]
	ldr r0, _022411C0 ; =0x00000F2C
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0
	mov r3, #5
	bl ov94_02245900
	ldr r0, [r5, #0x24]
	cmp r0, #6
	bne _0224119A
	mov r3, #0x12
	lsl r3, r3, #4
	mov r2, #0xd1
	ldr r4, [r5, r3]
	ldr r0, _022411AC ; =0x000010A8
	lsl r2, r2, #2
	add r3, r3, #4
	ldr r1, _022411B0 ; =0x00000DC8
	add r2, r5, r2
	mul r3, r4
	add r2, r2, r3
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x18]
	add r1, r5, r1
	bl ov94_02241464
_0224119A:
	ldr r1, _022411C8 ; =ov94_02240E5C
	ldr r0, _022411CC ; =0x000010B8
	str r1, [r5, r0]
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022411A4: .word 0x00003D68
_022411A8: .word 0x000010B4
_022411AC: .word 0x000010A8
_022411B0: .word 0x00000DC8
_022411B4: .word 0x00000EB8
_022411B8: .word 0x00000BA8
_022411BC: .word 0x00000B94
_022411C0: .word 0x00000F2C
_022411C4: .word 0x00010200
_022411C8: .word ov94_02240E5C
_022411CC: .word 0x000010B8
	thumb_func_end ov94_02240FA0

	thumb_func_start ov94_022411D0
ov94_022411D0: ; 0x022411D0
	cmp r0, #0x12
	bne _022411D8
	mov r0, #1
	bx lr
_022411D8:
	mov r0, #0
	bx lr
	thumb_func_end ov94_022411D0

	thumb_func_start ov94_022411DC
ov94_022411DC: ; 0x022411DC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r1, #0
	add r4, r3, #0
	bl ov94_022411D0
	cmp r0, #0
	beq _0224120E
	add r0, r5, #0
	bl sub_0207A0F8
	sub r0, r0, #1
	cmp r4, r0
	ble _02241200
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02241200:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A0FC
	bl sub_02076B10
	pop {r3, r4, r5, r6, r7, pc}
_0224120E:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02079C9C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov94_022411DC

	thumb_func_start ov94_0224121C
ov94_0224121C: ; 0x0224121C
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	bl ov94_022411D0
	cmp r0, #0
	beq _02241238
	add r0, r4, #0
	bl sub_0207A0F8
	cmp r0, #2
	bge _02241238
	mov r0, #0
	pop {r4, pc}
_02241238:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_0224121C

	thumb_func_start ov94_0224123C
ov94_0224123C: ; 0x0224123C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	bl sub_02073D20
	ldr r5, _02241274 ; =0x02245E34
	str r0, [sp]
	add r6, r4, #0
_0224124C:
	ldrh r1, [r5]
	add r0, r7, #0
	mov r2, #0
	bl sub_02074570
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, #2
	cmp r6, #0xa
	blt _0224124C
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02073D48
	cmp r4, #0
	beq _02241270
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02241270:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241274: .word 0x02245E34
	thumb_func_end ov94_0224123C

	thumb_func_start ov94_02241278
ov94_02241278: ; 0x02241278
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02073D48
	cmp r6, #0
	ble _022412BE
	ldr r1, _022412C4 ; =0x000001DF
	cmp r4, r1
	beq _022412BA
	add r0, r1, #0
	add r0, #8
	cmp r4, r0
	beq _022412BA
	add r1, #0xd
	cmp r4, r1
	bne _022412BE
_022412BA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022412BE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022412C4: .word 0x000001DF
	thumb_func_end ov94_02241278

	thumb_func_start ov94_022412C8
ov94_022412C8: ; 0x022412C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02073D48
	cmp r4, #0x70
	bne _022412EE
	mov r0, #1
	pop {r4, r5, r6, pc}
_022412EE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_022412C8

	thumb_func_start ov94_022412F4
ov94_022412F4: ; 0x022412F4
	push {r4, lr}
	bl ov94_022411DC
	add r4, r0, #0
	bne _02241302
	mov r0, #0
	pop {r4, pc}
_02241302:
	mov r1, #0xac
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02241312
	mov r0, #0
	pop {r4, pc}
_02241312:
	add r0, r4, #0
	mov r1, #0xad
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _02241324
	mov r0, #2
	pop {r4, pc}
_02241324:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_022412F4

	thumb_func_start ov94_02241328
ov94_02241328: ; 0x02241328
	push {r3, r4}
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldrsh r2, [r1, r4]
	cmp r3, r2
	beq _0224133A
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_0224133A:
	mov r2, #2
	ldrsb r3, [r1, r2]
	cmp r3, #3
	beq _0224134E
	ldrsb r2, [r0, r2]
	cmp r3, r2
	beq _0224134E
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_0224134E:
	mov r2, #3
	ldrsb r3, [r0, r2]
	cmp r3, #0
	bne _0224135C
	mov r0, #0
	pop {r3, r4}
	bx lr
_0224135C:
	ldrsb r0, [r1, r2]
	cmp r0, #0
	beq _0224136C
	cmp r0, r3
	ble _0224136C
	mov r0, #0
	pop {r3, r4}
	bx lr
_0224136C:
	mov r0, #4
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0224137E
	cmp r0, r3
	bge _0224137E
	mov r0, #0
	pop {r3, r4}
	bx lr
_0224137E:
	mov r0, #1
	pop {r3, r4}
	bx lr
	thumb_func_end ov94_02241328

	thumb_func_start ov94_02241384
ov94_02241384: ; 0x02241384
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	add r1, sp, #0
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074570
	add r1, r0, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	add r0, r5, #0
	bl sub_02075B40
	add r1, sp, #0
	strb r0, [r1, #3]
	add r0, sp, #0
	add r1, r4, #0
	bl ov94_02241328
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov94_02241384

	thumb_func_start ov94_022413BC
ov94_022413BC: ; 0x022413BC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x46
	add r5, r1, #0
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strh r0, [r1, #6]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074570
	add r1, r0, #1
	add r0, sp, #0
	strb r1, [r0, #8]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02075B40
	add r1, sp, #0
	strb r0, [r1, #9]
	add r0, r4, #0
	ldrh r2, [r1, #6]
	add r0, #0xec
	strh r2, [r0]
	add r0, r4, #0
	ldrh r1, [r1, #8]
	add r0, #0xee
	strh r1, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov94_022425A8
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r5, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bl sub_02076B10
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	add r1, sp, #0
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074570
	add r0, r0, #1
	add r1, sp, #0
	strb r0, [r1, #2]
	mov r0, #0
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	add r0, r4, #0
	ldrh r2, [r1]
	add r0, #0xf0
	strh r2, [r0]
	add r0, r4, #0
	ldrh r2, [r1, #2]
	add r0, #0xf2
	add r4, #0xf4
	strh r2, [r0]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov94_022413BC

	thumb_func_start ov94_02241464
ov94_02241464: ; 0x02241464
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	mov r6, #0
_0224146E:
	mov r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0
	beq _02241488
	add r0, r5, #0
	add r1, r7, #0
	bl ov94_02241328
	cmp r0, #0
	bne _02241488
	ldr r0, [r4, #4]
	add r0, r0, #3
	str r0, [r4, #4]
_02241488:
	mov r0, #0x83
	lsl r0, r0, #2
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, r0
	cmp r6, #0x1e
	blt _0224146E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov94_02241464

	thumb_func_start ov94_02241498
ov94_02241498: ; 0x02241498
	push {r3, lr}
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	cmp r0, #0
	beq _022414B2
	mov r0, #1
	pop {r3, pc}
_022414B2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov94_02241498

	.rodata


	.global Unk_ov94_02245E1C
Unk_ov94_02245E1C: ; 0x02245E1C
	.incbin "incbin/overlay94_rodata.bin", 0x424, 0x42C - 0x424

	.global Unk_ov94_02245E24
Unk_ov94_02245E24: ; 0x02245E24
	.incbin "incbin/overlay94_rodata.bin", 0x42C, 0x43C - 0x42C

	.global Unk_ov94_02245E34
Unk_ov94_02245E34: ; 0x02245E34
	.incbin "incbin/overlay94_rodata.bin", 0x43C, 0x450 - 0x43C

	.global Unk_ov94_02245E48
Unk_ov94_02245E48: ; 0x02245E48
	.incbin "incbin/overlay94_rodata.bin", 0x450, 0x46C - 0x450

	.global Unk_ov94_02245E64
Unk_ov94_02245E64: ; 0x02245E64
	.incbin "incbin/overlay94_rodata.bin", 0x46C, 0x488 - 0x46C

	.global Unk_ov94_02245E80
Unk_ov94_02245E80: ; 0x02245E80
	.incbin "incbin/overlay94_rodata.bin", 0x488, 0x4A4 - 0x488

	.global Unk_ov94_02245E9C
Unk_ov94_02245E9C: ; 0x02245E9C
	.incbin "incbin/overlay94_rodata.bin", 0x4A4, 0x4C0 - 0x4A4

	.global Unk_ov94_02245EB8
Unk_ov94_02245EB8: ; 0x02245EB8
	.incbin "incbin/overlay94_rodata.bin", 0x4C0, 0x4DC - 0x4C0

	.global Unk_ov94_02245ED4
Unk_ov94_02245ED4: ; 0x02245ED4
	.incbin "incbin/overlay94_rodata.bin", 0x4DC, 0x55C - 0x4DC

	.global Unk_ov94_02245F54
Unk_ov94_02245F54: ; 0x02245F54
	.incbin "incbin/overlay94_rodata.bin", 0x55C, 0x80


	.data


	.global Unk_ov94_022468DC
Unk_ov94_022468DC: ; 0x022468DC
	.incbin "incbin/overlay94_data.bin", 0x4DC, 0x44

