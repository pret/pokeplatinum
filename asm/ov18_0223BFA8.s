	.include "macros/function.inc"
	.include "include/ov18_0223BFA8.inc"

	

	.text


	arm_func_start ov18_0223BFA8
ov18_0223BFA8: ; 0x0223BFA8
	stmfd sp!, {r3, lr}
	ldr r0, _0223BFD0 ; =0x02253360
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223BFD8
	mov r0, #0x2d
	bl ov18_0222B7C8
	ldr r0, _0223BFD4 ; =ov18_0223C044
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223BFD0: .word 0x02253360
_0223BFD4: .word ov18_0223C044
	arm_func_end ov18_0223BFA8

	arm_func_start ov18_0223BFD8
ov18_0223BFD8: ; 0x0223BFD8
	stmfd sp!, {r3, lr}
	ldr r0, _0223C034 ; =0x0224A4E4
	ldr r1, _0223C038 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r2, _0223C03C ; =0x04001008
	ldr r1, _0223C040 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C034: .word 0x0224A4E4
_0223C038: .word GX_LoadBG2Scr
_0223C03C: .word 0x04001008
_0223C040: .word 0x0400000A
	arm_func_end ov18_0223BFD8

	arm_func_start ov18_0223C044
ov18_0223C044: ; 0x0223C044
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _0223C074 ; =ov18_0223C078
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C074: .word ov18_0223C078
	arm_func_end ov18_0223C044

	arm_func_start ov18_0223C078
ov18_0223C078: ; 0x0223C078
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223C098 ; =ov18_0223C09C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C098: .word ov18_0223C09C
	arm_func_end ov18_0223C078

	arm_func_start ov18_0223C09C
ov18_0223C09C: ; 0x0223C09C
	stmfd sp!, {r3, lr}
	bl ov18_0223C1AC
	bl ov18_0223C0AC
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223C09C

	arm_func_start ov18_0223C0AC
ov18_0223C0AC: ; 0x0223C0AC
	bx lr
	arm_func_end ov18_0223C0AC

	arm_func_start ov18_0223C0B0
ov18_0223C0B0: ; 0x0223C0B0
	stmfd sp!, {r3, lr}
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	beq _0223C0D0
	bl ov18_0223EF7C
_0223C0D0:
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223C104 ; =ov18_0223C108
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C104: .word ov18_0223C108
	arm_func_end ov18_0223C0B0

	arm_func_start ov18_0223C108
ov18_0223C108: ; 0x0223C108
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0223F4A4
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	bne _0223C198
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	ldr r0, _0223C1A4 ; =ov18_02236BE0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223C198:
	ldr r0, _0223C1A8 ; =ov18_02230228
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C1A4: .word ov18_02236BE0
_0223C1A8: .word ov18_02230228
	arm_func_end ov18_0223C108

	arm_func_start ov18_0223C1AC
ov18_0223C1AC: ; 0x0223C1AC
	stmfd sp!, {r3, lr}
	ldr r0, _0223C210 ; =0x02253360
	ldrb r1, [r0]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0]
	cmp r1, #0xb4
	ldmloia sp!, {r3, pc}
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	bl ov18_0222F75C
	cmp r0, #0
	beq _0223C204
	cmp r0, #1
	bne _0223C204
	ldr r0, [sp]
	cmp r0, #0
	beq _0223C204
	ldr r0, _0223C214 ; =ov18_0222FEE8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223C204:
	ldr r0, _0223C218 ; =ov18_0223C0B0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C210: .word 0x02253360
_0223C214: .word ov18_0222FEE8
_0223C218: .word ov18_0223C0B0
	arm_func_end ov18_0223C1AC

	.data


	.global Unk_ov18_0224A4E4
Unk_ov18_0224A4E4: ; 0x0224A4E4
	.incbin "incbin/overlay18_data.bin", 0xD84, 0x14



	.bss


	.global Unk_ov18_02253360
Unk_ov18_02253360: ; 0x02253360
	.space 0x4

