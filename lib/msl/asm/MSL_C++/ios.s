	.include "macros/function.inc"
	.include "include/ios.inc"

	

	.text


	arm_func_start sub_020DF9BC
sub_020DF9BC: ; 0x020DF9BC
	bx lr
	arm_func_end sub_020DF9BC

	arm_func_start sub_020DF9C0
sub_020DF9C0: ; 0x020DF9C0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	str r4, [r5, #0]
	add r1, sp, #0x20
	mov r0, #0x10
	str r4, [sp]
	str r1, [sp, #4]
	bl sub_020E3EEC
	cmp r0, #0
	beq _020DFA10
	ldr r1, _020DFA38 ; =0x02101A04
	mov r2, #1
	stmia r0, {r1, r2}
	ldr r1, _020DFA3C ; =0x02101A1C
	str r2, [r0, #8]
	str r1, [r0, #0]
	str r4, [r0, #0xc]
_020DFA10:
	str r0, [r5, #4]
	mov r1, #0
	add r0, sp, #0
	str r1, [sp]
	bl sub_020DFAD0
	mov r0, r5
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DFA38: .word 0x02101A04
_020DFA3C: .word 0x02101A1C
	arm_func_end sub_020DF9C0

	arm_func_start sub_020DFA40
sub_020DFA40: ; 0x020DFA40
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFA40

	arm_func_start sub_020DFA54
sub_020DFA54: ; 0x020DFA54
	bx lr
	arm_func_end sub_020DFA54

	arm_func_start sub_020DFA58
sub_020DFA58: ; 0x020DFA58
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	ldr r1, _020DFA7C ; =0x021019D8
	bl sub_020E40A0
	cmp r0, #0
	addne r0, r4, #0xc
	moveq r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020DFA7C: .word Unk_021019D8
	arm_func_end sub_020DFA58

	arm_func_start sub_020DFA80
sub_020DFA80: ; 0x020DFA80
	ldr ip, _020DFA8C ; =sub_020E4000
	ldr r0, [r0, #0xc]
	bx ip
	; .align 2, 0
_020DFA8C: .word sub_020E4000
	arm_func_end sub_020DFA80

	arm_func_start sub_020DFA90
sub_020DFA90: ; 0x020DFA90
	stmfd sp!, {r3, r4, fp, lr}
	sub sp, sp, #0x18
	mov fp, sp
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020DFAB0
	bl sub_020DFB80
_020DFAB0:
	add sp, fp, #0x18
	mov r0, r4
	ldmia sp!, {r3, r4, fp, pc}
_020DFABC:
	.byte 0x00, 0x00, 0x8B, 0xE2
	.byte 0xDA, 0x0F, 0x00, 0xEB, 0xFE, 0xFF, 0xFF, 0xEA, 0x18, 0xD0, 0x8B, 0xE2, 0x18, 0x88, 0xBD, 0xE8
	arm_func_end sub_020DFA90

	arm_func_start sub_020DFAD0
sub_020DFAD0: ; 0x020DFAD0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020DFAE8
	bl sub_020E4000
_020DFAE8:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFAD0

	arm_func_start sub_020DFAF0
sub_020DFAF0: ; 0x020DFAF0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFAF0

	arm_func_start sub_020DFB04
sub_020DFB04: ; 0x020DFB04
	bx lr
	arm_func_end sub_020DFB04


	.section .exception, 4


	.global Unk_020E4590
Unk_020E4590: ; 0x020E4590
	.byte 0x20, 0x3, 0x50, 0x58, 0x0, 0xE, 0x0, 0x82
	.byte 0x0, 0xD0, 0xFA, 0xD
	.word 0x2

	.global Unk_020E45A0
Unk_020E45A0: ; 0x020E45A0
	.byte 0x40, 0x81, 0x50, 0x0, 0x40, 0x0, 0x16, 0x28
	.short 0x1E00, 0x8F00, 0x5800, 0x8D00
	.space 0x4


	.data


	.global Unk_021019C8
Unk_021019C8: ; 0x021019C8
	.word 0x02101CB8
	.word Unk_021019EC

	.global Unk_021019D0
Unk_021019D0: ; 0x021019D0
	.word 0x02101CB8
	.word Unk_02101A50

	.global Unk_021019D8
Unk_021019D8: ; 0x021019D8
	.word 0x02101CB8
	.word Unk_02101A2C

	.global Unk_021019E0
Unk_021019E0: ; 0x021019E0
	.word 0x02101CA8
	.word Unk_02101A7C
	.word Unk_021019D0

	.global Unk_021019EC
Unk_021019EC: ; 0x021019EC
	.ascii "St9exception"
	.space 0x4

	.global Unk_021019FC
Unk_021019FC: ; 0x021019FC
	.space 0x4
	.word Unk_021019D0
	.word sub_020DFA54
	.word sub_020DFA40
	.space 0x8

	.global Unk_02101A14
Unk_02101A14: ; 0x02101A14
	.space 0x4
	.word Unk_021019E0
	.word sub_020DFB04
	.word sub_020DFAF0
	.word sub_020DFA58
	.word sub_020DFA80

	.global Unk_02101A2C
Unk_02101A2C: ; 0x02101A2C
	.asciz "NSt6detail14default_deleteIA0_cEE"
	.space 0x2

	.global Unk_02101A50
Unk_02101A50: ; 0x02101A50
	.ascii "NSt3tr16detail25shared_ptr_deleter_commonE"
	.space 0x2

	.global Unk_02101A7C
Unk_02101A7C: ; 0x02101A7C
	.asciz "NSt3tr16detail18shared_ptr_deleterIcNSt6detail14default_deleteIA0_cEEEE"

