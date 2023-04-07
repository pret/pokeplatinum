	.include "macros/function.inc"
	.include "include/scenesetaosscomplete.inc"

	

	.text


	arm_func_start ov18_02233624
ov18_02233624: ; 0x02233624
	stmfd sp!, {r3, lr}
	ldr r0, _02233658 ; =0x02253314
	mov r1, #0
	strb r1, [r0]
	bl ov18_02233660
	bl ov18_0222BC1C
	mov r0, #0x23
	bl ov18_0222B7C8
	mov r0, #0x10
	bl ov18_0223E994
	ldr r0, _0223365C ; =ov18_022336CC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233658: .word Unk_ov18_02253314
_0223365C: .word ov18_022336CC
	arm_func_end ov18_02233624

	arm_func_start ov18_02233660
ov18_02233660: ; 0x02233660
	stmfd sp!, {r3, lr}
	ldr r0, _022336BC ; =0x0224A124
	ldr r1, _022336C0 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r2, _022336C4 ; =0x04001008
	ldr r1, _022336C8 ; =0x0400000A
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
_022336BC: .word Unk_ov18_0224A124
_022336C0: .word GX_LoadBG2Scr
_022336C4: .word 0x04001008
_022336C8: .word 0x0400000A
	arm_func_end ov18_02233660

	arm_func_start ov18_022336CC
ov18_022336CC: ; 0x022336CC
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _022336FC ; =ov18_02233700
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022336FC: .word ov18_02233700
	arm_func_end ov18_022336CC

	arm_func_start ov18_02233700
ov18_02233700: ; 0x02233700
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02233720 ; =ov18_02233724
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233720: .word ov18_02233724
	arm_func_end ov18_02233700

	arm_func_start ov18_02233724
ov18_02233724: ; 0x02233724
	stmfd sp!, {r3, lr}
	bl ov18_022337E4
	bl ov18_02233734
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02233724

	arm_func_start ov18_02233734
ov18_02233734: ; 0x02233734
	bx lr
	arm_func_end ov18_02233734

	arm_func_start ov18_02233738
ov18_02233738: ; 0x02233738
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
	ldr r0, _02233770 ; =ov18_02233774
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233770: .word ov18_02233774
	arm_func_end ov18_02233738

	arm_func_start ov18_02233774
ov18_02233774: ; 0x02233774
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
	ldr r0, _022337E0 ; =ov18_0223C21C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022337E0: .word ov18_0223C21C
	arm_func_end ov18_02233774

	arm_func_start ov18_022337E4
ov18_022337E4: ; 0x022337E4
	stmfd sp!, {r3, lr}
	ldr r0, _02233810 ; =0x02253314
	ldrb r1, [r0]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0]
	cmp r1, #0x78
	ldmloia sp!, {r3, pc}
	ldr r0, _02233814 ; =ov18_02233738
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233810: .word Unk_ov18_02253314
_02233814: .word ov18_02233738
	arm_func_end ov18_022337E4

	.data


	.global Unk_ov18_0224A124
Unk_ov18_0224A124: ; 0x0224A124
	.asciz "char/xb4Multi.nsc.l"



	.bss


	.global Unk_ov18_02253314
Unk_ov18_02253314: ; 0x02253314
	.space 0x4

