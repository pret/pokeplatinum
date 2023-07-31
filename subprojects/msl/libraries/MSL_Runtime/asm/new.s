	.include "macros/function.inc"
	.include "include/new.inc"

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
	.byte 0x40, 0x87, 0x60, 0x0, 0x40, 0x40, 0x16, 0x28
	.byte 0x0, 0x26, 0x0, 0x8F, 0x2, 0x98, 0x0, 0x24, 0x1C, 0x10, 0x2, 0x8D
	.space 0x4

	.global Unk_020E4628
Unk_020E4628: ; 0x020E4628
	.byte 0x40, 0x80, 0x70, 0x0, 0x28, 0x0, 0x1C, 0x20, 0x0, 0x2A, 0x28, 0x0, 0x32, 0x0, 0xC, 0x0
	.byte 0x0, 0x0, 0x0, 0x38, 0x30, 0x8F, 0x0, 0x60, 0x0, 0x8D
	.space 0x2

	.global Unk_020E4644
Unk_020E4644: ; 0x020E4644
	.byte 0x40, 0x80, 0x40, 0x0
	.byte 0x20, 0x0, 0x16, 0x20, 0x0, 0x26, 0x0, 0x8F, 0x2, 0x30, 0x0, 0x24, 0x1C, 0x10, 0x2, 0x8D
	.space 0x4

	.global Unk_020E465C
Unk_020E465C: ; 0x020E465C
	.byte 0x40, 0x80, 0x40, 0x0, 0x20, 0x0, 0x16, 0x20, 0x0, 0x1E, 0x0, 0x8F
	.byte 0x0, 0x30, 0x0, 0x8D
	.space 0x4


	.data


	.global Unk_02101BF8
Unk_02101BF8: ; 0x02101BF8
	.word 0x1

	.global Unk_02101BFC
Unk_02101BFC: ; 0x02101BFC
	.asciz "bad_alloc"
	.space 0x2

	.global Unk_02101C08
Unk_02101C08: ; 0x02101C08
	.word 0x2101CA8
	.word Unk_02101C14
	.word Unk_021019C8

	.global Unk_02101C14
Unk_02101C14: ; 0x02101C14
	.ascii "St9bad_alloc"
	.space 0x4

	.global Unk_02101C24
Unk_02101C24: ; 0x02101C24
	.ascii "!std::bad_alloc!"
	.space 0x4

	.global Unk_02101C38
Unk_02101C38: ; 0x02101C38
	.space 0x4
	.word Unk_02101C08
	.word sub_020E3EE8
	.word sub_020E400C
	.word sub_020E4020

	.global Unk_02101C4C
Unk_02101C4C: ; 0x02101C4C
	.asciz "!std::exception!!std::bad_alloc!!"
	.space 0x2



	.bss


	.global Unk_021D0D60
Unk_021D0D60: ; 0x021D0D60
	.space 0x4

	.global Unk_021D0D64
Unk_021D0D64: ; 0x021D0D64
	.space 0x4


	.extern Unk_020E4558
	.extern Unk_020E4560
	.extern Unk_020E4568
	.extern Unk_020E4570
	.extern Unk_020E4578
	.extern Unk_020E4580
	.extern Unk_020E4588
	.extern Unk_020E4590
	.extern Unk_020E45A0
	.extern Unk_020E45B4
	.extern Unk_020E45CC
	.extern Unk_020E45D4
	.extern Unk_020E45E4
	.extern Unk_020E45EC
	.extern Unk_020E4600
	.extern Unk_020E4608
	.extern Unk_020E4610
	.extern Unk_020E4628
	.extern Unk_020E4644
	.extern Unk_020E465C

	.section .exception, 4

	.global Exception_Table_Index
Exception_Table_Index: ; 0x020E4670
	.incbin "incbin/main_etable.bin", 0x118, 0x164
	.word Unk_020E4558
	.incbin "incbin/main_etable.bin",0x280,0x68
	.word Unk_020E4560
	.incbin "incbin/main_etable.bin",0x2EC,0x2C
	.word Unk_020E4568
	.incbin "incbin/main_etable.bin",0x31C,0x8C
	.word Unk_020E4570
	.incbin "incbin/main_etable.bin",0x3AC,0x8
	.word Unk_020E4578
	.incbin "incbin/main_etable.bin",0x3B8,0x2C
	.word Unk_020E4580
	.incbin "incbin/main_etable.bin",0x3E8,0x80
	.word Unk_020E4588
	.incbin "incbin/main_etable.bin",0x46C,0x2C
	.word Unk_020E4590
	.incbin "incbin/main_etable.bin",0x49C,0x2C
	.word Unk_020E45A0
	.incbin "incbin/main_etable.bin",0x4CC,0x68
	.word Unk_020E45B4
	.incbin "incbin/main_etable.bin",0x538,0x2C
	.word Unk_020E45CC
	.incbin "incbin/main_etable.bin",0x568,0x8
	.word Unk_020E45D4
	.incbin "incbin/main_etable.bin",0x574,0x8
	.word Unk_020E45E4
	.incbin "incbin/main_etable.bin",0x580,0x14
	.word Unk_020E45EC
	.incbin "incbin/main_etable.bin",0x598,0x8
	.word Unk_020E4600
	.incbin "incbin/main_etable.bin",0x5A4,0x8
	.word Unk_020E4608
	.incbin "incbin/main_etable.bin",0x5B0,0x38
	.word Unk_020E4610
	.incbin "incbin/main_etable.bin",0x5EC,0x8
	.word Unk_020E4628
	.incbin "incbin/main_etable.bin",0x5F8,0x14
	.word Unk_020E4644
	.incbin "incbin/main_etable.bin",0x610,0x8
	.word Unk_020E465C
	.incbin "incbin/main_etable.bin",0x61C,0xCC

