	.include "macros/function.inc"
	.include "include/ov6_02247078.inc"

	

	.text


	thumb_func_start ov6_02247078
ov6_02247078: ; 0x02247078
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r4, _022470E4 ; =0x022495AC
	add r3, sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, sp, #0x18
	str r0, [sp]
	add r1, r2, #0
	add r0, r5, #0
	mov r2, #4
	add r3, sp, #0x1c
	bl sub_02055324
	cmp r0, #0
	beq _022470DA
	ldr r0, [r5, #0x30]
	bl ov5_021EFAA0
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov5_021E18BC
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov5_021E18C0
	str r4, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	ldr r3, [sp, #0x18]
	add r2, r7, #0
	bl ov5_021D41C8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_022470DA:
	bl sub_02022974
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022470E4: .word 0x022495AC
	thumb_func_end ov6_02247078

	thumb_func_start ov6_022470E8
ov6_022470E8: ; 0x022470E8
	ldr r3, _022470F0 ; =ov5_021D4250
	ldr r0, [r0, #0x54]
	mov r2, #0
	bx r3
	; .align 2, 0
_022470F0: .word ov5_021D4250
	thumb_func_end ov6_022470E8

	thumb_func_start ov6_022470F4
ov6_022470F4: ; 0x022470F4
	ldr r3, _022470FC ; =ov5_021D4250
	ldr r0, [r0, #0x54]
	mov r2, #1
	bx r3
	; .align 2, 0
_022470FC: .word ov5_021D4250
	thumb_func_end ov6_022470F4

	.rodata


	.global Unk_ov6_022495AC
Unk_ov6_022495AC: ; 0x022495AC
	.incbin "incbin/overlay6_rodata.bin", 0x798, 0x10

