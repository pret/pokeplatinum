	.include "macros/function.inc"
	.include "include/cxxabi_rtti.inc"

	

	.text


	arm_func_start sub_020E409C
sub_020E409C: ; 0x020E409C
	bx lr
	arm_func_end sub_020E409C

	arm_func_start sub_020E40A0
sub_020E40A0: ; 0x020E40A0
	stmfd sp!, {r3, lr}
	cmp r0, r1
	beq _020E40C0
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	bl strcmp
	cmp r0, #0
	bne _020E40C8
_020E40C0:
	mov r0, #1
	ldmia sp!, {r3, pc}
_020E40C8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020E40A0

	arm_func_start sub_020E40D0
sub_020E40D0: ; 0x020E40D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E409C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E40D0

	arm_func_start sub_020E40E4
sub_020E40E4: ; 0x020E40E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E409C
	mov r0, r4
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E40E4

	arm_func_start sub_020E4100
sub_020E4100: ; 0x020E4100
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E409C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E4100

	arm_func_start sub_020E4114
sub_020E4114: ; 0x020E4114
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E4100
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E4114

	arm_func_start sub_020E4128
sub_020E4128: ; 0x020E4128
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020E4100
	mov r0, r4
	bl sub_020E3F94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E4128

	.data


	.global Unk_02101C70
Unk_02101C70: ; 0x02101C70
	.word Unk_02101CB0+8
	.word Unk_02101C90

	.global Unk_02101C78
Unk_02101C78: ; 0x02101C78
	.word Unk_02101CA0+8
	.word Unk_02101CE4
	.word Unk_02101C84

	.global Unk_02101C84
Unk_02101C84: ; 0x02101C84
	.word Unk_02101CA0+8
	.word Unk_02101CC0
	.word Unk_02101C70

	.global Unk_02101C90
Unk_02101C90: ; 0x02101C90
	.ascii "St9type_info"
	.space 0x4

	.global Unk_02101CA0
Unk_02101CA0: ; 0x02101CA0
	.word 0x0
	.word Unk_02101C78
	.word sub_020E4114
	.word sub_020E4128

	.global Unk_02101CB0
Unk_02101CB0: ; 0x02101CB0
	.word 0x0
	.word Unk_02101C84
	.word sub_020E40D0
	.word sub_020E40E4

	.global Unk_02101CC0
Unk_02101CC0: ; 0x02101CC0
	.asciz "N10__cxxabiv117__class_type_infoE"
	.space 0x2

	.global Unk_02101CE4
Unk_02101CE4: ; 0x02101CE4
	.asciz "N10__cxxabiv120__si_class_type_infoE"

