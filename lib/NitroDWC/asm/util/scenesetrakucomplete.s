	.include "macros/function.inc"
	.include "include/scenesetrakucomplete.inc"

	

	.text


	arm_func_start ov18_02239B34
ov18_02239B34: ; 0x02239B34
	stmfd sp!, {r3, lr}
	ldr r0, _02239B68 ; =0x02253340
	mov r1, #0
	strb r1, [r0]
	bl ov18_02239B70
	bl ov18_0222BC1C
	mov r0, #0x26
	bl ov18_0222B7C8
	mov r0, #0x10
	bl ov18_0223E994
	ldr r0, _02239B6C ; =ov18_02239BF0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239B68: .word Unk_ov18_02253340
_02239B6C: .word ov18_02239BF0
	arm_func_end ov18_02239B34

	arm_func_start ov18_02239B70
ov18_02239B70: ; 0x02239B70
	stmfd sp!, {r3, lr}
	ldr r0, _02239BE0 ; =0x0224A350
	ldr r1, _02239BE4 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _02239BE8 ; =0x04001008
	ldr r1, _02239BEC ; =0x0400000A
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
_02239BE0: .word Unk_ov18_0224A350
_02239BE4: .word GX_LoadBG2Scr
_02239BE8: .word 0x04001008
_02239BEC: .word 0x0400000A
	arm_func_end ov18_02239B70

	arm_func_start ov18_02239BF0
ov18_02239BF0: ; 0x02239BF0
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02239C20 ; =ov18_02239C24
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239C20: .word ov18_02239C24
	arm_func_end ov18_02239BF0

	arm_func_start ov18_02239C24
ov18_02239C24: ; 0x02239C24
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02239C44 ; =ov18_02239C48
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239C44: .word ov18_02239C48
	arm_func_end ov18_02239C24

	arm_func_start ov18_02239C48
ov18_02239C48: ; 0x02239C48
	stmfd sp!, {r3, lr}
	bl ov18_02239D08
	bl ov18_02239C58
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02239C48

	arm_func_start ov18_02239C58
ov18_02239C58: ; 0x02239C58
	bx lr
	arm_func_end ov18_02239C58

	arm_func_start ov18_02239C5C
ov18_02239C5C: ; 0x02239C5C
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
	ldr r0, _02239C94 ; =ov18_02239C98
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239C94: .word ov18_02239C98
	arm_func_end ov18_02239C5C

	arm_func_start ov18_02239C98
ov18_02239C98: ; 0x02239C98
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
	mov r1, #1
	bl ov18_0222F710
	ldr r0, _02239D04 ; =ov18_0223C21C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239D04: .word ov18_0223C21C
	arm_func_end ov18_02239C98

	arm_func_start ov18_02239D08
ov18_02239D08: ; 0x02239D08
	stmfd sp!, {r3, lr}
	ldr r0, _02239D34 ; =0x02253340
	ldrb r1, [r0]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0]
	cmp r1, #0x78
	ldmloia sp!, {r3, pc}
	ldr r0, _02239D38 ; =ov18_02239C5C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239D34: .word Unk_ov18_02253340
_02239D38: .word ov18_02239C5C
	arm_func_end ov18_02239D08

	.data


	.global Unk_ov18_0224A350
Unk_ov18_0224A350: ; 0x0224A350
	.incbin "incbin/overlay18_data.bin", 0xBF0, 0x14



	.bss


	.global Unk_ov18_02253340
Unk_ov18_02253340: ; 0x02253340
	.space 0x4

