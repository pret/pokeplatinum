	.include "macros/function.inc"
	.include "include/ov4_02203798.inc"

	

	.text


	arm_func_start ov4_02203798
ov4_02203798: ; 0x02203798
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, #0
	cmp r2, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr ip, _0220383C ; =0x00001FDF
	ldr r3, _02203840 ; =0x0221A0EC
	mov lr, #0xff
	mov r4, #0x7f
_022037B8:
	mov r5, r7, lsl #1
	ldrsh r5, [r1, r5]
	mov fp, r3
	movs sl, r5, asr #2
	movmi r6, r4
	ldr r5, _0220383C ; =0x00001FDF
	rsbmi sl, sl, #0
	movpl r6, lr
	cmp sl, r5
	movgt sl, ip
	mov r5, #0
	add sb, sl, #0x21
_022037E8:
	ldr r8, [fp], #4
	cmp sb, r8
	ble _02203804
	add r5, r5, #1
	cmp r5, #8
	blt _022037E8
	mov r5, #8
_02203804:
	cmp r5, #8
	eorge r5, r6, #0x7f
	bge _02203828
	add sb, sl, #0x21
	add r8, r5, #1
	mov r8, sb, asr r8
	and r8, r8, #0xf
	orr r5, r8, r5, lsl #4
	eor r5, r5, r6
_02203828:
	strb r5, [r0, r7]
	add r7, r7, #1
	cmp r7, r2
	blo _022037B8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220383C: .word 0x00001FDF
_02203840: .word 0x0221A0EC
	arm_func_end ov4_02203798

	arm_func_start ov4_02203844
ov4_02203844: ; 0x02203844
	stmfd sp!, {r4, lr}
	mov r4, #0
	cmp r2, #0
	ldmlsia sp!, {r4, pc}
_02203854:
	ldrb r3, [r0, r4]
	mvn lr, r3
	mov r3, lr, lsl #0x1c
	mov ip, r3, lsr #0x19
	and r3, lr, #0x70
	add ip, ip, #0x84
	mov r3, r3, asr #4
	mov r3, ip, lsl r3
	tst lr, #0x80
	rsbne ip, r3, #0x84
	subeq ip, r3, #0x84
	mov r3, r4, lsl #1
	add r4, r4, #1
	strh ip, [r1, r3]
	cmp r4, r2
	blo _02203854
	ldmia sp!, {r4, pc}
	arm_func_end ov4_02203844

	arm_func_start ov4_02203898
ov4_02203898: ; 0x02203898
	cmp r2, #0
	mov ip, #0
	bxls lr
_022038A4:
	mov r3, ip, lsl #1
	ldrsh r3, [r1, r3]
	mov r3, r3, asr #8
	strb r3, [r0, ip]
	add ip, ip, #1
	cmp ip, r2
	blo _022038A4
	bx lr
	arm_func_end ov4_02203898

	arm_func_start ov4_022038C4
ov4_022038C4: ; 0x022038C4
	stmfd sp!, {r3, lr}
	cmp r2, #0
	mov lr, #0
	ldmlsia sp!, {r3, pc}
_022038D4:
	ldrsb ip, [r0, lr]
	mov r3, lr, lsl #1
	add lr, lr, #1
	mov ip, ip, lsl #8
	strh ip, [r1, r3]
	cmp lr, r2
	blo _022038D4
	ldmia sp!, {r3, pc}
	arm_func_end ov4_022038C4

	.data


	.global Unk_ov4_0221A0EC
Unk_ov4_0221A0EC: ; 0x0221A0EC
	.incbin "incbin/overlay4_data.bin", 0x426C, 0x20

