	.include "macros/function.inc"
	.include "overlay018/ov18_022390AC.inc"

	

	.text


	arm_func_start ov18_022390AC
ov18_022390AC: ; 0x022390AC
	stmfd sp!, {r3, lr}
	bl ov18_022390CC
	bl ov18_0222BC1C
	bl ov18_0223E2D0
	ldr r0, _022390C8 ; =ov18_02239160
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022390C8: .word ov18_02239160
	arm_func_end ov18_022390AC

	arm_func_start ov18_022390CC
ov18_022390CC: ; 0x022390CC
	stmfd sp!, {r3, lr}
	ldr r0, _02239140 ; =0x0224A2E4
	ldr r1, _02239144 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02239148 ; =0x0224A2FC
	ldr r1, _0223914C ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _02239150 ; =0x0224A314
	ldr r1, _02239154 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r2, _02239158 ; =0x04001008
	ldr r1, _0223915C ; =0x0400000A
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
_02239140: .word Unk_ov18_0224A2E4
_02239144: .word 0x020C07EC
_02239148: .word Unk_ov18_0224A2FC
_0223914C: .word GX_LoadBGPltt
_02239150: .word Unk_ov18_0224A314
_02239154: .word GX_LoadBG2Scr
_02239158: .word 0x04001008
_0223915C: .word 0x0400000A
	arm_func_end ov18_022390CC

	arm_func_start ov18_02239160
ov18_02239160: ; 0x02239160
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _022391B0 ; =ov18_022391B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022391B0: .word ov18_022391B4
	arm_func_end ov18_02239160

	arm_func_start ov18_022391B4
ov18_022391B4: ; 0x022391B4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r2, #1
	mov ip, #0
	sub r3, r2, #2
	mov r0, #0x44
	mov r1, #5
	str ip, [sp]
	bl ov18_0223FC48
	ldr r0, _02239200 ; =ov18_02239204
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239200: .word ov18_02239204
	arm_func_end ov18_022391B4

	arm_func_start ov18_02239204
ov18_02239204: ; 0x02239204
	stmfd sp!, {r3, lr}
	bl ov18_0223922C
	bl ov18_02239230
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02239228 ; =ov18_02239234
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239228: .word ov18_02239234
	arm_func_end ov18_02239204

	arm_func_start ov18_0223922C
ov18_0223922C: ; 0x0223922C
	bx lr
	arm_func_end ov18_0223922C

	arm_func_start ov18_02239230
ov18_02239230: ; 0x02239230
	bx lr
	arm_func_end ov18_02239230

	arm_func_start ov18_02239234
ov18_02239234: ; 0x02239234
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223926C ; =ov18_02239270
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223926C: .word ov18_02239270
	arm_func_end ov18_02239234

	arm_func_start ov18_02239270
ov18_02239270: ; 0x02239270
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _022392C8 ; =ov18_0223A6B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022392C8: .word ov18_0223A6B4
	arm_func_end ov18_02239270

	.data


	.global Unk_ov18_0224A2E4
Unk_ov18_0224A2E4: ; 0x0224A2E4
	.incbin "incbin/overlay18_data.bin", 0xB84, 0xB9C - 0xB84

	.global Unk_ov18_0224A2FC
Unk_ov18_0224A2FC: ; 0x0224A2FC
	.incbin "incbin/overlay18_data.bin", 0xB9C, 0xBB4 - 0xB9C

	.global Unk_ov18_0224A314
Unk_ov18_0224A314: ; 0x0224A314
	.incbin "incbin/overlay18_data.bin", 0xBB4, 0x13

