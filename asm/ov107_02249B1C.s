	.include "macros/function.inc"
	.include "include/ov107_02249B1C.inc"

	

	.text


	thumb_func_start ov107_02249B1C
ov107_02249B1C: ; 0x02249B1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x64
	mov r1, #8
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	add r0, sp, #0x28
	mov r2, #0x14
	ldrsh r2, [r0, r2]
	ldr r3, [sp, #0x10]
	strh r2, [r4]
	mov r2, #0x18
	ldrsh r0, [r0, r2]
	add r2, r7, #0
	strh r0, [r4, #2]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x44]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov107_022498A4
	str r0, [r4, #4]
	add r1, sp, #0x28
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	add r1, sp, #0x14
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	bl sub_02021C50
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02249B1C

	thumb_func_start ov107_02249B8C
ov107_02249B8C: ; 0x02249B8C
	push {r4, lr}
	add r4, r0, #0
	bne _02249B9A
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_02249B9A:
	ldr r0, [r4, #4]
	bl sub_02021BD4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02249B8C

	thumb_func_start ov107_02249BAC
ov107_02249BAC: ; 0x02249BAC
	ldr r3, _02249BB4 ; =sub_02021CAC
	ldr r0, [r0, #4]
	bx r3
	nop
_02249BB4: .word sub_02021CAC
	thumb_func_end ov107_02249BAC

	thumb_func_start ov107_02249BB8
ov107_02249BB8: ; 0x02249BB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r7, #0
	str r0, [r2, #0]
	lsl r0, r4, #0xc
	str r0, [sp]
	lsl r0, r6, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02249BB8

	thumb_func_start ov107_02249BEC
ov107_02249BEC: ; 0x02249BEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #1
	ldr r0, [r5, #4]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02249BEC

	thumb_func_start ov107_02249C08
ov107_02249C08: ; 0x02249C08
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02079FC4
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl sub_02021F24
	pop {r4, pc}
	thumb_func_end ov107_02249C08

	thumb_func_start ov107_02249C1C
ov107_02249C1C: ; 0x02249C1C
	ldr r3, _02249C24 ; =ov104_0222E1D8
	ldr r0, [r0, #4]
	bx r3
	nop
_02249C24: .word ov104_0222E1D8
	thumb_func_end ov107_02249C1C

	thumb_func_start ov107_02249C28
ov107_02249C28: ; 0x02249C28
	push {r4, lr}
	add r4, r0, #0
	add r3, r1, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #4]
	bl ov104_0222E204
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02249C28

	thumb_func_start ov107_02249C40
ov107_02249C40: ; 0x02249C40
	ldr r3, _02249C48 ; =sub_02021FD0
	ldr r0, [r0, #4]
	bx r3
	nop
_02249C48: .word sub_02021FD0
	thumb_func_end ov107_02249C40

	thumb_func_start ov107_02249C4C
ov107_02249C4C: ; 0x02249C4C
	ldr r3, _02249C54 ; =sub_02021E80
	ldr r0, [r0, #4]
	bx r3
	nop
_02249C54: .word sub_02021E80
	thumb_func_end ov107_02249C4C

	thumb_func_start ov107_02249C58
ov107_02249C58: ; 0x02249C58
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov107_02249C58

	thumb_func_start ov107_02249C60
ov107_02249C60: ; 0x02249C60
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	mov r1, #0xb
	bl ov107_02249BEC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov107_02249BB8
	add r0, r5, #0
	mov r1, #1
	bl ov107_02249BAC
	ldr r0, _02249C90 ; =0x000005E3
	bl sub_02005748
	ldr r0, _02249C94 ; =0x00000656
	bl sub_02005748
	pop {r4, r5, r6, pc}
	nop
_02249C90: .word 0x000005E3
_02249C94: .word 0x00000656
	thumb_func_end ov107_02249C60