	.include "macros/function.inc"
	.include "overlay117/ov117_022666C0.inc"

	.text

	thumb_func_start ov117_022666C0
ov117_022666C0: ; 0x022666C0
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	lsl r3, r2, #2
	ldr r2, _022666E4 ; =0x02267014
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _022666E0
	blx r2
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #1
	pop {r4, pc}
_022666E0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022666E4: .word 0x02267014
	thumb_func_end ov117_022666C0

	thumb_func_start ov117_022666E8
ov117_022666E8: ; 0x022666E8
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #1
	str r0, [sp]
	add r2, sp, #4
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov117_022666E8

	thumb_func_start ov117_02266714
ov117_02266714: ; 0x02266714
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0203608C
	ldrb r1, [r4, #4]
	cmp r1, r0
	beq _0226672C
	add r0, r5, #0
	add r1, r4, #4
	bl ov117_02263DC4
_0226672C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_02266714

	thumb_func_start ov117_02266730
ov117_02266730: ; 0x02266730
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #2
	str r0, [sp]
	add r0, sp, #0
	strh r5, [r0, #4]
	mov r1, #5
	strb r1, [r0, #6]
	strb r4, [r0, #7]
	add r0, r6, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov117_02266730

	thumb_func_start ov117_02266760
ov117_02266760: ; 0x02266760
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02266780 ; =0x00002FD0
	add r5, r0, #0
	ldr r2, [r5, r1]
	add r2, r2, #1
	str r2, [r5, r1]
	bl ov117_02264808
	ldrb r1, [r4, #6]
	ldrb r2, [r4, #7]
	add r0, r5, #0
	bl ov117_0226238C
	pop {r3, r4, r5, pc}
	nop
_02266780: .word 0x00002FD0
	thumb_func_end ov117_02266760

	thumb_func_start ov117_02266784
ov117_02266784: ; 0x02266784
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	add r6, r3, #0
	bl MI_CpuFill8
	mov r0, #3
	str r0, [sp]
	add r0, sp, #0
	strh r5, [r0, #4]
	strb r4, [r0, #6]
	mov r1, #4
	strb r1, [r0, #7]
	strb r6, [r0, #8]
	add r0, r7, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02266784

	thumb_func_start ov117_022667B8
ov117_022667B8: ; 0x022667B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4, #4]
	add r5, r0, #0
	ldr r0, _022667E8 ; =0x00002FC8
	ldr r3, _022667EC ; =0x00001428
	str r1, [r5, r0]
	ldr r1, [r5, #0]
	ldrb r2, [r4, #6]
	add r1, #0x30
	ldrb r1, [r1]
	ldr r0, [r5, #0x2c]
	add r3, r5, r3
	bl ov117_02263AF0
	ldr r0, _022667F0 ; =0x00002FCC
	mov r1, #1
	str r1, [r5, r0]
	ldrb r1, [r4, #7]
	ldrb r2, [r4, #8]
	add r0, r5, #0
	bl ov117_0226238C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022667E8: .word 0x00002FC8
_022667EC: .word 0x00001428
_022667F0: .word 0x00002FCC
	thumb_func_end ov117_022667B8

	thumb_func_start ov117_022667F4
ov117_022667F4: ; 0x022667F4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #4
	str r0, [sp]
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, #4]
	strb r4, [r0, #5]
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_022667F4

	thumb_func_start ov117_02266820
ov117_02266820: ; 0x02266820
	add r2, r1, #0
	mov r1, #3
	str r1, [r0, #0x20]
	ldrb r1, [r2, #4]
	ldr r3, _02266830 ; =ov117_0226238C
	ldrb r2, [r2, #5]
	bx r3
	nop
_02266830: .word ov117_0226238C
	thumb_func_end ov117_02266820

	thumb_func_start ov117_02266834
ov117_02266834: ; 0x02266834
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #5
	str r0, [sp]
	mov r1, #3
	add r0, sp, #0
	strb r1, [r0, #4]
	strb r4, [r0, #5]
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_02266834

	thumb_func_start ov117_02266860
ov117_02266860: ; 0x02266860
	add r3, r1, #0
	ldr r1, _02266874 ; =0x00002FBC
	mov r2, #1
	str r2, [r0, r1]
	mov r1, #6
	str r1, [r0, #0x20]
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #5]
	ldr r3, _02266878 ; =ov117_0226238C
	bx r3
	; .align 2, 0
_02266874: .word 0x00002FBC
_02266878: .word ov117_0226238C
	thumb_func_end ov117_02266860

	thumb_func_start ov117_0226687C
ov117_0226687C: ; 0x0226687C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #6
	str r0, [sp]
	add r0, sp, #0
	strb r5, [r0, #4]
	strb r4, [r0, #5]
	add r0, r6, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov117_0226687C

	thumb_func_start ov117_022668A8
ov117_022668A8: ; 0x022668A8
	ldr r3, _022668B4 ; =ov117_0226238C
	add r2, r1, #0
	ldrb r1, [r2, #4]
	ldrb r2, [r2, #5]
	bx r3
	nop
_022668B4: .word ov117_0226238C
	thumb_func_end ov117_022668A8

	thumb_func_start ov117_022668B8
ov117_022668B8: ; 0x022668B8
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #7
	str r0, [sp]
	mov r1, #6
	add r0, sp, #0
	strb r1, [r0, #4]
	strb r4, [r0, #5]
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_022668B8

	thumb_func_start ov117_022668E4
ov117_022668E4: ; 0x022668E4
	add r2, r1, #0
	mov r1, #1
	str r1, [r0, #0x20]
	ldrb r1, [r2, #4]
	ldr r3, _022668F4 ; =ov117_0226238C
	ldrb r2, [r2, #5]
	bx r3
	nop
_022668F4: .word ov117_0226238C
	thumb_func_end ov117_022668E4
	; 0x022668F8


	.rodata

	.global Unk_ov117_02267014
Unk_ov117_02267014: ; 0x02267014
	.incbin "incbin/overlay117_rodata.bin", 0x71C, 0x73C - 0x71C

	.bss
	.space 0x0
