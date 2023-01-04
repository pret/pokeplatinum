	.include "macros/function.inc"
	.include "overlay018/ov18_0223C470.inc"

	

	.text


	arm_func_start ov18_0223C470
ov18_0223C470: ; 0x0223C470
	stmfd sp!, {r3, lr}
	ldr r0, _0223C4A8 ; =0x02253364
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223C4B0
	mov r0, #8
	bl ov18_0222BBC0
	mov r0, #0x29
	bl ov18_0222B7C8
	mov r0, #0x10
	bl ov18_0223E994
	ldr r0, _0223C4AC ; =ov18_0223C530
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C4A8: .word Unk_ov18_02253364
_0223C4AC: .word ov18_0223C530
	arm_func_end ov18_0223C470

	arm_func_start ov18_0223C4B0
ov18_0223C4B0: ; 0x0223C4B0
	stmfd sp!, {r3, lr}
	ldr r0, _0223C520 ; =0x0224A50C
	ldr r1, _0223C524 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _0223C528 ; =0x04001008
	ldr r1, _0223C52C ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
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
_0223C520: .word 0x0224A50C
_0223C524: .word GX_LoadBG2Scr
_0223C528: .word 0x04001008
_0223C52C: .word 0x0400000A
	arm_func_end ov18_0223C4B0

	arm_func_start ov18_0223C530
ov18_0223C530: ; 0x0223C530
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _0223C560 ; =ov18_0223C564
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C560: .word ov18_0223C564
	arm_func_end ov18_0223C530

	arm_func_start ov18_0223C564
ov18_0223C564: ; 0x0223C564
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223C584 ; =ov18_0223C588
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C584: .word ov18_0223C588
	arm_func_end ov18_0223C564

	arm_func_start ov18_0223C588
ov18_0223C588: ; 0x0223C588
	stmfd sp!, {r3, lr}
	bl ov18_0223C648
	bl ov18_0223C598
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223C588

	arm_func_start ov18_0223C598
ov18_0223C598: ; 0x0223C598
	bx lr
	arm_func_end ov18_0223C598

	arm_func_start ov18_0223C59C
ov18_0223C59C: ; 0x0223C59C
	stmfd sp!, {r3, lr}
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
	ldr r0, _0223C5D4 ; =ov18_0223C5D8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C5D4: .word ov18_0223C5D8
	arm_func_end ov18_0223C59C

	arm_func_start ov18_0223C5D8
ov18_0223C5D8: ; 0x0223C5D8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, #2
	bl ov18_0222F710
	ldr r0, _0223C644 ; =ov18_0223C21C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C644: .word ov18_0223C21C
	arm_func_end ov18_0223C5D8

	arm_func_start ov18_0223C648
ov18_0223C648: ; 0x0223C648
	stmfd sp!, {r3, lr}
	ldr r0, _0223C674 ; =0x02253364
	ldrb r1, [r0]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0]
	cmp r1, #0x78
	ldmloia sp!, {r3, pc}
	ldr r0, _0223C678 ; =ov18_0223C59C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C674: .word Unk_ov18_02253364
_0223C678: .word ov18_0223C59C
	arm_func_end ov18_0223C648

	.data


	.global Unk_ov18_0224A50C
Unk_ov18_0224A50C: ; 0x0224A50C
	.incbin "incbin/overlay18_data.bin", 0xDAC, 0x14



	.bss


	.global Unk_ov18_02253364
Unk_ov18_02253364: ; 0x02253364
	.space 0x4

