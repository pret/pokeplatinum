	.include "macros/function.inc"
	.include "include/ov20_021D3864.inc"

	

	.text


	thumb_func_start ov20_021D3864
ov20_021D3864: ; 0x021D3864
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x23
	mov r1, #0x10
	add r6, r2, #0
	bl sub_02018144
	str r5, [r0, #0]
	str r4, [r0, #4]
	str r6, [r0, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	pop {r4, r5, r6, pc}
	thumb_func_end ov20_021D3864

	thumb_func_start ov20_021D3880
ov20_021D3880: ; 0x021D3880
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D388E
	bl sub_02021BD4
_021D388E:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D3880

	thumb_func_start ov20_021D3898
ov20_021D3898: ; 0x021D3898
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl ov20_021D2E04
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	add r2, r4, #0
	mov r3, #3
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #5
	add r2, r4, #0
	mov r3, #3
	bl sub_020070E8
	ldr r1, _021D3904 ; =0x021D52D4
	add r0, r4, #0
	mov r2, #0
	bl ov20_021D390C
	ldr r1, _021D3908 ; =0x021D52DC
	add r0, r4, #0
	mov r2, #1
	bl ov20_021D390C
	add r0, r5, #0
	bl ov20_021D3980
	add r0, r4, #0
	mov r1, #3
	bl sub_02019448
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D3904: .word 0x021D52D4
_021D3908: .word 0x021D52DC
	thumb_func_end ov20_021D3898

	thumb_func_start ov20_021D390C
ov20_021D390C: ; 0x021D390C
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r4, r2, #0
	add r1, sp, #0x10
	add r2, r5, #0
	bl sub_0201A8D4
	add r0, sp, #0x10
	bl sub_0201A9F4
	add r0, sp, #0x10
	mov r1, #0xe
	bl sub_0201ADA4
	ldr r1, _021D3978 ; =0x000001B6
	mov r0, #0x1a
	add r2, r4, #0
	mov r3, #0x23
	bl sub_0200B010
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	ldrb r1, [r5, #3]
	add r2, r4, #0
	lsl r1, r1, #3
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D397C ; =0x0001020E
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, sp, #0x10
	bl sub_0201ACCC
	add r0, r4, #0
	bl sub_020237BC
	add r0, sp, #0x10
	bl sub_0201A8FC
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021D3978: .word 0x000001B6
_021D397C: .word 0x0001020E
	thumb_func_end ov20_021D390C

	thumb_func_start ov20_021D3980
ov20_021D3980: ; 0x021D3980
	push {r3, r4, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r1, sp, #8
	mov r2, #0
	mov r3, #3
	bl ov20_021D2E0C
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #8
	mov r2, #0x40
	mov r3, #0x38
	bl ov20_021D2E50
	str r0, [r4, #0xc]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x2c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D3980

	thumb_func_start ov20_021D39BC
ov20_021D39BC: ; 0x021D39BC
	ldr r3, _021D39C4 ; =sub_02021D6C
	ldr r0, [r0, #0xc]
	mov r1, #3
	bx r3
	; .align 2, 0
_021D39C4: .word sub_02021D6C
	thumb_func_end ov20_021D39BC

	thumb_func_start ov20_021D39C8
ov20_021D39C8: ; 0x021D39C8
	ldr r3, _021D39D0 ; =sub_02021D6C
	ldr r0, [r0, #0xc]
	mov r1, #2
	bx r3
	; .align 2, 0
_021D39D0: .word sub_02021D6C
	thumb_func_end ov20_021D39C8

	thumb_func_start ov20_021D39D4
ov20_021D39D4: ; 0x021D39D4
	ldr r3, _021D39DC ; =sub_02021CAC
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D39DC: .word sub_02021CAC
	thumb_func_end ov20_021D39D4

	thumb_func_start ov20_021D39E0
ov20_021D39E0: ; 0x021D39E0
	ldr r3, _021D39E8 ; =sub_02021D34
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D39E8: .word sub_02021D34
	thumb_func_end ov20_021D39E0

	thumb_func_start ov20_021D39EC
ov20_021D39EC: ; 0x021D39EC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	cmp r1, #0
	beq _021D39FE
	cmp r1, #1
	beq _021D3A0C
_021D39FE:
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp]
	mov r0, #0xe
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	b _021D3A18
_021D3A0C:
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp]
	mov r0, #0xe
	lsl r0, r0, #0xe
	str r0, [sp, #4]
_021D3A18:
	ldr r0, [r4, #0xc]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02021D6C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov20_021D39EC

	thumb_func_start ov20_021D3A2C
ov20_021D3A2C: ; 0x021D3A2C
	push {r3, lr}
	ldr r0, [r0, #0]
	bl ov20_021D2E04
	mov r1, #3
	add r2, r1, #0
	mov r3, #0x40
	bl sub_02019184
	pop {r3, pc}
	thumb_func_end ov20_021D3A2C

	thumb_func_start ov20_021D3A40
ov20_021D3A40: ; 0x021D3A40
	push {r3, lr}
	ldr r0, [r0, #0]
	bl ov20_021D2E04
	mov r1, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	pop {r3, pc}
	thumb_func_end ov20_021D3A40

	.rodata


	.global Unk_ov20_021D52D4
Unk_ov20_021D52D4: ; 0x021D52D4
	.incbin "incbin/overlay20_rodata.bin", 0x194, 0x19C - 0x194

	.global Unk_ov20_021D52DC
Unk_ov20_021D52DC: ; 0x021D52DC
	.incbin "incbin/overlay20_rodata.bin", 0x19C, 0x8

