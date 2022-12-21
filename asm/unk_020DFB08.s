	.include "macros/function.inc"
	.include "include/unk_020DFB08.inc"

	

	.text


	arm_func_start sub_020DFB08
sub_020DFB08: ; 0x020DFB08
	ldr r0, [r0, #4]
	bx lr
	arm_func_end sub_020DFB08

	arm_func_start sub_020DFB10
sub_020DFB10: ; 0x020DFB10
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl sub_020DFA90
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFB10

	arm_func_start sub_020DFB28
sub_020DFB28: ; 0x020DFB28
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl sub_020DFA90
	mov r0, r4
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFB28

	arm_func_start sub_020DFB48
sub_020DFB48: ; 0x020DFB48
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl sub_020DFA90
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFB48

	arm_func_start sub_020DFB60
sub_020DFB60: ; 0x020DFB60
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl sub_020DFA90
	mov r0, r4
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFB60

	.data


	.global Unk_02101AC4
Unk_02101AC4: ; 0x02101AC4
	.incbin "incbin/arm9_data.bin", 0x2DE4, 0x2DF0 - 0x2DE4

	.global Unk_02101AD0
Unk_02101AD0: ; 0x02101AD0
	.incbin "incbin/arm9_data.bin", 0x2DF0, 0x2DFC - 0x2DF0

	.global Unk_02101ADC
Unk_02101ADC: ; 0x02101ADC
	.incbin "incbin/arm9_data.bin", 0x2DFC, 0x2E0C - 0x2DFC

	.global Unk_02101AEC
Unk_02101AEC: ; 0x02101AEC
	.incbin "incbin/arm9_data.bin", 0x2E0C, 0x2E20 - 0x2E0C

	.global Unk_02101B00
Unk_02101B00: ; 0x02101B00
	.incbin "incbin/arm9_data.bin", 0x2E20, 0x2E34 - 0x2E20

	.global Unk_02101B14
Unk_02101B14: ; 0x02101B14
	.incbin "incbin/arm9_data.bin", 0x2E34, 0x14

