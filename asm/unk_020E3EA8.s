	.include "macros/function.inc"
	.include "include/unk_020E3EA8.inc"

	.extern Unk_021D0D64
	

	.text


	arm_func_start sub_020E3EA8
sub_020E3EA8: ; 0x020E3EA8
	stmfd sp!, {r3, lr}
	ldr r0, _020E3ED8 ; =0x02101BF8
	ldrb r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r3, _020E3EDC ; =0x02101C40
	ldr r0, _020E3EE0 ; =0x02101C4C
	ldr r2, _020E3EE4 ; =sub_020E3EE8
	add r1, sp, #0
	str r3, [sp]
	bl __throw
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020E3ED8: .word Unk_02101BF8
_020E3EDC: .word 0x02101C40
_020E3EE0: .word Unk_02101C4C
_020E3EE4: .word sub_020E3EE8
	arm_func_end sub_020E3EA8

	arm_func_start sub_020E3EE8
sub_020E3EE8: ; 0x020E3EE8
	bx lr
	arm_func_end sub_020E3EE8

	arm_func_start sub_020E3EEC
sub_020E3EEC: ; 0x020E3EEC
	stmfd sp!, {r3, r4, r5, r6, fp, lr}
	sub sp, sp, #0x18
	mov fp, sp
	movs r6, r0
	ldr r4, _020E3F4C ; =0x021D0D64
	moveq r6, #4
_020E3F04:
	mov r0, r6
	bl malloc
	movs r5, r0
	bne _020E3F2C
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020E3F28
	blx r0
	b _020E3F04
_020E3F28:
	bl sub_020E3EA8
_020E3F2C:
	add sp, fp, #0x18
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, fp, pc}
_020E3F38:
	.byte 0x00, 0x00, 0x8B, 0xE2, 0xBB, 0xFE, 0xFF, 0xEB
	.byte 0xFE, 0xFF, 0xFF, 0xEA, 0x18, 0xD0, 0x8B, 0xE2, 0x78, 0x88, 0xBD, 0xE8
_020E3F4C: .word Unk_021D0D64
	arm_func_end sub_020E3EEC

	arm_func_start sub_020E3F50
sub_020E3F50: ; 0x020E3F50
	stmfd sp!, {fp, lr}
	sub sp, sp, #0x30
	mov fp, sp
	str sp, [fp, #0x2c]
	bl sub_020E3EEC
	add sp, fp, #0x30
	ldmia sp!, {fp, pc}
_020E3F6C:
	.byte 0x18, 0x00, 0x8B, 0xE2
	.byte 0xBA, 0xFF, 0xFF, 0xEB, 0x30, 0xD0, 0x8B, 0xE2, 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x88, 0xBD, 0xE8
	.byte 0x00, 0x00, 0x8B, 0xE2, 0xA9, 0xFE, 0xFF, 0xEB, 0xFE, 0xFF, 0xFF, 0xEA, 0x30, 0xD0, 0x8B, 0xE2
	.byte 0x00, 0x88, 0xBD, 0xE8
	arm_func_end sub_020E3F50

	arm_func_start sub_020E3F94
sub_020E3F94: ; 0x020E3F94
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl free
	ldmia sp!, {r3, pc}
	arm_func_end sub_020E3F94

	arm_func_start sub_020E3FA8
sub_020E3FA8: ; 0x020E3FA8
	stmfd sp!, {fp, lr}
	sub sp, sp, #0x18
	mov fp, sp
	bl sub_020E3EEC
	add sp, fp, #0x18
	ldmia sp!, {fp, pc}
_020E3FC0:
	.byte 0x00, 0x00, 0x8B, 0xE2, 0x99, 0xFE, 0xFF, 0xEB, 0xFE, 0xFF, 0xFF, 0xEA, 0x18, 0xD0, 0x8B, 0xE2
	.byte 0x00, 0x88, 0xBD, 0xE8
	arm_func_end sub_020E3FA8

	arm_func_start sub_020E3FD4
sub_020E3FD4: ; 0x020E3FD4
	stmfd sp!, {fp, lr}
	sub sp, sp, #0x18
	mov fp, sp
	bl sub_020E3F50
	add sp, fp, #0x18
	ldmia sp!, {fp, pc}
_020E3FEC:
	.byte 0x00, 0x00, 0x8B, 0xE2
	.byte 0x8E, 0xFE, 0xFF, 0xEB, 0xFE, 0xFF, 0xFF, 0xEA, 0x18, 0xD0, 0x8B, 0xE2, 0x00, 0x88, 0xBD, 0xE8
	arm_func_end sub_020E3FD4

	arm_func_start sub_020E4000
sub_020E4000: ; 0x020E4000
	ldr ip, _020E4008 ; =sub_020E3F94
	bx ip
	; .align 2, 0
_020E4008: .word sub_020E3F94
	arm_func_end sub_020E4000

	arm_func_start sub_020E400C
sub_020E400C: ; 0x020E400C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E400C

	arm_func_start sub_020E4020
sub_020E4020: ; 0x020E4020
	ldr r0, _020E4028 ; =0x02101BFC
	bx lr
	; .align 2, 0
_020E4028: .word Unk_02101BFC
	arm_func_end sub_020E4020


	.section .exception, 4


	.global Unk_020E4610
Unk_020E4610: ; 0x020E4610
	.incbin "incbin/arm9_exception.bin", 0xB8, 0x18

	.global Unk_020E4628
Unk_020E4628: ; 0x020E4628
	.incbin "incbin/arm9_exception.bin", 0xD0, 0x1C

	.global Unk_020E4644
Unk_020E4644: ; 0x020E4644
	.incbin "incbin/arm9_exception.bin", 0xEC, 0x18

	.global Unk_020E465C
Unk_020E465C: ; 0x020E465C
	.incbin "incbin/arm9_exception.bin", 0x104, 0x14


	.data


	.global Unk_02101BF8
Unk_02101BF8: ; 0x02101BF8
	.incbin "incbin/arm9_data.bin", 0x2F18, 0x2F1C - 0x2F18

	.global Unk_02101BFC
Unk_02101BFC: ; 0x02101BFC
	.incbin "incbin/arm9_data.bin", 0x2F1C, 0x2F28 - 0x2F1C

	.global Unk_02101C08
Unk_02101C08: ; 0x02101C08
	.incbin "incbin/arm9_data.bin", 0x2F28, 0x2F34 - 0x2F28

	.global Unk_02101C14
Unk_02101C14: ; 0x02101C14
	.incbin "incbin/arm9_data.bin", 0x2F34, 0x2F44 - 0x2F34

	.global Unk_02101C24
Unk_02101C24: ; 0x02101C24
	.incbin "incbin/arm9_data.bin", 0x2F44, 0x2F58 - 0x2F44

	.global Unk_02101C38
Unk_02101C38: ; 0x02101C38
	.incbin "incbin/arm9_data.bin", 0x2F58, 0x2F6C - 0x2F58

	.global Unk_02101C4C
Unk_02101C4C: ; 0x02101C4C
	.incbin "incbin/arm9_data.bin", 0x2F6C, 0x22



	.bss


	.global Unk_021D0D60
Unk_021D0D60: ; 0x021D0D60
	.space 0x4

	.global Unk_021D0D64
Unk_021D0D64: ; 0x021D0D64
	.space 0x4

