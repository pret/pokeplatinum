	.include "macros/function.inc"
	.include "include/ov116_0226432C.inc"

	

	.text


	thumb_func_start ov116_0226432C
ov116_0226432C: ; 0x0226432C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	ldr r0, [sp, #0x64]
	add r4, r1, #0
	add r6, r3, #0
	add r7, r2, #0
	bl sub_020E16BC
	str r0, [sp, #0x10]
	sub r0, r4, r6
	str r1, [sp, #4]
	bl sub_020E01B8
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _02264514 ; =0x147AE148
	ldr r1, _02264518 ; =0x3F7547AE
	bl sub_020E0234
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	bl sub_020E0234
	bl sub_020DFF84
	add r6, r0, #0
	ldr r0, [sp, #0x64]
	bl sub_020E16BC
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x60]
	add r4, r1, #0
	sub r0, r7, r0
	bl sub_020E01B8
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _0226451C ; =0x55555555
	ldr r1, _02264520 ; =0x3F755555
	bl sub_020E0234
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl sub_020E0234
	bl sub_020DFF84
	add r4, r0, #0
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _022643E0
	mov r0, #0x7f
	lsl r0, r0, #2
	str r6, [r5, r0]
	add r1, r0, #4
	str r4, [r5, r1]
	sub r1, r0, #4
	mov r2, #8
	str r2, [r5, r1]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020E1304
	mov r1, #0x81
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_020E1304
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [r5, r1]
_022643E0:
	add r0, r6, #0
	add r1, r6, #0
	bl sub_020E18B0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E0B00
	mov r1, #0
	add r7, r0, #0
	bl sub_020E1108
	ldr r0, _02264524 ; =0x45800000
	bls _02264418
	add r1, r7, #0
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02264426
_02264418:
	add r1, r7, #0
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02264426:
	bl sub_020E1740
	bl sub_020BCFF0
	add r7, r0, #0
	bl sub_020E17B4
	ldr r1, _02264524 ; =0x45800000
	bl sub_020E1304
	str r0, [sp, #0x18]
	bl sub_020E16BC
	add r2, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r1, r0, #0
	bl sub_020E1020
	beq _0226450E
	add r0, r7, #0
	bl sub_020BD838
	str r0, [sp, #0x1c]
	str r1, [sp, #0xc]
	add r0, r7, #0
	bl sub_020BD8D0
	str r0, [sp, #0x20]
	add r7, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0xc]
	bl sub_020E1844
	ldr r1, _02264528 ; =0x4F800000
	bl sub_020E1304
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	bl sub_020E1844
	ldr r1, _02264528 ; =0x4F800000
	bl sub_020E1304
	add r7, r0, #0
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	bl sub_020E1304
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	str r7, [sp, #0x3c]
	bl sub_020E18B0
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x28]
	add r0, r6, #0
	bl sub_020E18B0
	mov r2, #0x19
	str r0, [sp, #0x44]
	mov r0, #0
	lsl r2, r2, #4
	str r0, [sp, #0x48]
	add r0, r5, r2
	add r2, #0x10
	add r1, sp, #0x3c
	add r2, r5, r2
	bl ov116_0226700C
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x40
	add r1, r5, r1
	bl ov116_022671EC
	mov r1, #0x1a
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x10
	add r1, r5, r1
	bl ov116_02266FFC
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x60
	add r1, r5, r1
	bl ov116_02267728
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov116_02267160
	mov r7, #0x19
	lsl r7, r7, #4
	add r3, sp, #0x2c
	add r4, r5, r7
	add r6, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	add r0, r5, r7
	add r2, r6, #0
	bl ov116_022671B8
	add sp, #0x4c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226450E:
	mov r0, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02264514: .word 0x147AE148
_02264518: .word 0x3F7547AE
_0226451C: .word 0x55555555
_02264520: .word 0x3F755555
_02264524: .word 0x45800000
_02264528: .word 0x4F800000
	thumb_func_end ov116_0226432C

	thumb_func_start ov116_0226452C
ov116_0226452C: ; 0x0226452C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x7f
	lsl r1, r1, #2
	add r5, r0, #0
	add r0, r1, #4
	ldr r4, [r5, r1]
	ldr r0, [r5, r0]
	add r1, #8
	str r0, [sp]
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl sub_020E1A9C
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #4
	add r1, #0xc
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_020E1A9C
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r5, r0]
	sub r1, #8
	sub r0, r0, #1
	str r0, [r5, r1]
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020E18B0
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r0, #0
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	mov r1, #0
	add r6, r0, #0
	bl sub_020E1108
	ldr r0, _02264678 ; =0x45800000
	bls _022645A4
	add r1, r6, #0
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022645B2
_022645A4:
	add r1, r6, #0
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022645B2:
	bl sub_020E1740
	bl sub_020BCFF0
	add r6, r0, #0
	bl sub_020E17B4
	ldr r1, _02264678 ; =0x45800000
	bl sub_020E1304
	str r0, [sp, #4]
	bl sub_020E16BC
	add r2, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r1, r0, #0
	bl sub_020E1020
	beq _02264672
	add r0, r6, #0
	bl sub_020BD838
	str r0, [sp, #8]
	add r0, r6, #0
	add r7, r1, #0
	bl sub_020BD8D0
	str r0, [sp, #0xc]
	add r6, r1, #0
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl sub_020E1844
	ldr r1, _0226467C ; =0x4F800000
	bl sub_020E1304
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_020E1844
	ldr r1, _0226467C ; =0x4F800000
	bl sub_020E1304
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl sub_020E1304
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r7, #0
	str r6, [sp, #0x10]
	bl sub_020E18B0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020E18B0
	mov r2, #0x19
	str r0, [sp, #0x18]
	mov r0, #0
	lsl r2, r2, #4
	str r0, [sp, #0x1c]
	add r0, r5, r2
	add r2, #0x10
	add r1, sp, #0x10
	add r2, r5, r2
	bl ov116_0226700C
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x40
	add r1, r5, r1
	bl ov116_022671EC
	mov r1, #0x1a
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x10
	add r1, r5, r1
	bl ov116_02266FFC
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x60
	add r1, r5, r1
	bl ov116_02267728
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02264672:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264678: .word 0x45800000
_0226467C: .word 0x4F800000
	thumb_func_end ov116_0226452C

	thumb_func_start ov116_02264680
ov116_02264680: ; 0x02264680
	mov r3, #0
_02264682:
	add r2, r0, #0
	add r2, #0xbc
	ldr r2, [r2, #0]
	cmp r1, r2
	bne _02264690
	add r0, r3, #0
	bx lr
_02264690:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #4
	blt _02264682
	mov r0, #0xff
	bx lr
	thumb_func_end ov116_02264680

	thumb_func_start ov116_0226469C
ov116_0226469C: ; 0x0226469C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r7, r2, #0
	add r0, r3, #0
	add r6, r1, #0
	lsl r2, r4, #0xc
	str r3, [sp]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	sub r0, r7, r6
	mov r7, #2
	mov r3, #0
	lsl r7, r7, #0xa
	add r2, r2, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r2, r0, r2
	asr r1, r2, #0x1f
	lsr r0, r2, #0x13
	lsl r1, r1, #0xd
	orr r1, r0
	lsl r0, r2, #0xd
	add r0, r0, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, r4, #0
	mul r1, r4
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	str r6, [r5, #0]
	ldr r1, [sp]
	str r6, [r5, #4]
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov116_0226469C

	thumb_func_start ov116_022646FC
ov116_022646FC: ; 0x022646FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r2, r6, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	add r2, r6, #0
	orr r4, r0
	ldr r0, [r5, #0xc]
	mul r2, r6
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r2, #2
	bl sub_020BCFD0
	ldr r1, [r5, #4]
	add r0, r4, r0
	add r0, r1, r0
	str r0, [r5, #0]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r0, #1
	cmp r0, r1
	bgt _0226475C
	str r0, [r5, #0x10]
	mov r0, #0
	pop {r4, r5, r6, pc}
_0226475C:
	str r1, [r5, #0x10]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_022646FC

	thumb_func_start ov116_02264764
ov116_02264764: ; 0x02264764
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r3, [r0, #0x14]
	bx lr
	thumb_func_end ov116_02264764

	thumb_func_start ov116_02264774
ov116_02264774: ; 0x02264774
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x14]
	ldr r0, [r5, #0x10]
	cmp r0, r2
	blt _02264784
	mov r4, #1
	b _0226478C
_02264784:
	add r2, r0, #0
	add r0, r0, #1
	str r0, [r5, #0x10]
	mov r4, #0
_0226478C:
	ldr r0, [r5, #0xc]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r5, #0x14]
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	ldr r1, [r5, #4]
	add r0, r0, r1
	str r0, [r5, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_02264774

	thumb_func_start ov116_022647BC
ov116_022647BC: ; 0x022647BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	ldr r3, _0226492C ; =0x02267D74
	add r6, r0, #0
	mov r0, #1
	str r1, [sp, #4]
	str r0, [sp, #0x18]
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _02264930 ; =0x02267D8C
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl sub_0200F2AC
	cmp r0, #0
	beq _022647FE
	ldr r0, [sp, #4]
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02264820
_022647FE:
	ldr r5, [sp, #4]
	mov r4, #0
_02264802:
	ldr r0, [r5, #8]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _02264802
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0, #0]
	add r0, r6, #0
	bl sub_0200DA58
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
_02264820:
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0226482E
	cmp r0, #1
	beq _02264898
	b _0226490A
_0226482E:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r7, sp, #0x3c
	add r6, r0, #0
	add r5, r0, #0
	str r0, [sp, #0x10]
	add r6, #0x14
	add r4, sp, #0x24
	add r5, #0x2c
_02264842:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x20
	ldr r0, [r0, #8]
	add r2, sp, #0x1c
	bl sub_0200D638
	ldr r1, [sp, #0x20]
	mov r0, #8
	str r0, [sp]
	ldr r2, [r7, #0]
	ldr r3, _02264934 ; =0x000004CD
	add r0, r6, #0
	add r2, r1, r2
	bl ov116_0226469C
	ldr r1, [sp, #0x1c]
	mov r0, #8
	str r0, [sp]
	ldr r2, [r4, #0]
	ldr r3, _02264938 ; =0x00000333
	add r0, r5, #0
	add r2, r1, r2
	bl ov116_0226469C
	ldr r0, [sp, #0x10]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r6, #0x30
	add r0, r0, #1
	add r4, r4, #4
	add r5, #0x30
	str r0, [sp, #8]
	cmp r0, #3
	blt _02264842
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp, #4]
	add sp, #0x74
	str r1, [r0, #4]
	pop {r4, r5, r6, r7, pc}
_02264898:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r7, [sp, #4]
	ldr r6, [sp, #4]
	str r0, [sp, #0x14]
	add r0, #0x14
	str r0, [sp, #0x14]
	add r4, sp, #0x54
	add r7, #0x2c
	add r5, r6, #0
_022648AE:
	ldr r0, [sp, #0x14]
	bl ov116_022646FC
	str r0, [r4, #0]
	add r0, r7, #0
	bl ov116_022646FC
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x2c]
	bl sub_0200D614
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _022648D4
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022648D8
_022648D4:
	mov r0, #0
	str r0, [sp, #0x18]
_022648D8:
	ldr r0, [r5, #8]
	bl sub_0200D330
	ldr r0, [sp, #0x14]
	add r4, #8
	add r0, #0x30
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r7, #0x30
	add r0, r0, #1
	add r6, #0x30
	add r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _022648AE
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02264928
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp, #4]
	add sp, #0x74
	str r1, [r0, #4]
	pop {r4, r5, r6, r7, pc}
_0226490A:
	ldr r4, [sp, #4]
	mov r5, #0
_0226490E:
	ldr r0, [r4, #8]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _0226490E
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0, #0]
	add r0, r6, #0
	bl sub_0200DA58
_02264928:
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226492C: .word 0x02267D74
_02264930: .word 0x02267D8C
_02264934: .word 0x000004CD
_02264938: .word 0x00000333
	thumb_func_end ov116_022647BC

	thumb_func_start ov116_0226493C
ov116_0226493C: ; 0x0226493C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	ldr r3, [sp]
	ldr r1, _022649D4 ; =0x00002490
	add r5, r2, #0
	mov r0, #0
_0226494C:
	ldr r2, [r3, r1]
	cmp r2, #1
	beq _022649C8
	mov r1, #0xa8
	mul r1, r0
	str r1, [sp, #0xc]
	ldr r1, [sp]
	mov r7, #0
	ldr r3, [r1, #0x14]
	add r2, r1, #0
	ldr r1, [sp, #0xc]
	add r6, r7, #0
	add r4, r2, r1
	ldr r2, _022649D8 ; =0x00002534
	add r1, r2, #0
	str r3, [r4, r2]
	sub r1, #0xa0
	str r7, [r4, r1]
	ldr r1, [sp]
	sub r2, #0xa4
	add r1, r1, r2
	str r1, [sp, #0x10]
	add r2, r1, #0
	ldr r1, [sp, #0xc]
	mov r3, #1
	str r3, [r2, r1]
	add r1, r0, #1
	ldr r0, [sp, #4]
	mul r1, r0
	str r1, [sp, #8]
_02264988:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r5, #0
	bl ov116_022626E8
	ldr r1, _022649DC ; =0x00002498
	str r0, [r4, r1]
	ldr r0, [sp, #8]
	add r1, r6, r5
	add r0, r0, r1
	mov r1, #3
	bl sub_020E1F6C
	ldr r0, _022649DC ; =0x00002498
	ldr r0, [r4, r0]
	bl sub_0200D364
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, r5
	cmp r7, #3
	blt _02264988
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r0, _022649E0 ; =ov116_022647BC
	add r1, r2, r1
	mov r2, #1
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_022649C8:
	add r0, r0, #1
	add r3, #0xa8
	cmp r0, #8
	blt _0226494C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022649D4: .word 0x00002490
_022649D8: .word 0x00002534
_022649DC: .word 0x00002498
_022649E0: .word ov116_022647BC
	thumb_func_end ov116_0226493C

	thumb_func_start ov116_022649E4
ov116_022649E4: ; 0x022649E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	ldr r0, [r1, #0]
	str r1, [sp]
	ldr r5, [r0, #0x14]
	bl sub_0200F2AC
	cmp r0, #0
	beq _02264A00
	add r5, #0x34
	ldrb r0, [r5]
	cmp r0, #1
	bne _02264A18
_02264A00:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0x10]
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_0200DA58
	ldr r0, [sp]
	bl sub_020181C4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_02264A18:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02264A2C
	cmp r0, #1
	beq _02264A3A
	cmp r0, #2
	bne _02264A2A
	b _02264C8A
_02264A2A:
	b _02264FC2
_02264A2C:
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
_02264A3A:
	ldr r3, _02264D78 ; =0x02267D60
	add r2, sp, #0x1c
	mov r1, #0xa
_02264A40:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02264A40
	ldr r0, [sp]
	mov r5, #0
	ldr r0, [r0, #0xc]
	mov r6, #0x3f
	lsl r1, r0, #2
	add r0, sp, #0x1c
	ldrsh r0, [r0, r1]
	str r5, [sp, #0xc]
	lsl r6, r6, #0x18
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	add r0, #2
	ldrsh r0, [r0, r1]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	str r5, [r0, #8]
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
_02264A7A:
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0x3a
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #3
	bl sub_020E1F6C
	add r7, r1, #0
	mov r0, #6
	sub r0, r0, r7
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r0, r4, #0
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x44
	strh r1, [r0]
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	ldr r0, [r0, #0x40]
	mov r1, #3
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_020E1F6C
	mov r1, #0x1e
	mul r1, r0
	str r1, [r4, #0x3c]
	add r0, r1, #0
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	str r1, [r4, #0x3c]
	add r1, r4, #0
	add r1, #0x40
	mov r0, #0
	strh r0, [r1]
	lsl r0, r7, #1
	neg r1, r0
	add r0, r4, #0
	add r0, #0x46
	strh r1, [r0]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02264AF8
	ldr r0, [sp, #8]
	bl sub_020E17FC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	b _02264B04
_02264AF8:
	ldr r0, [sp, #8]
	bl sub_020E17FC
	add r1, r6, #0
	bl sub_020E1A9C
_02264B04:
	bl sub_020E1740
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02264B20
	ldr r0, [sp, #4]
	bl sub_020E17FC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	b _02264B2C
_02264B20:
	ldr r0, [sp, #4]
	bl sub_020E17FC
	add r1, r6, #0
	bl sub_020E1A9C
_02264B2C:
	bl sub_020E1740
	str r0, [r4, #0x24]
	mov r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x28]
	add r1, r4, #0
	str r0, [r4, #0x2c]
	add r1, #0x38
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x39
	mov r0, #1
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x3b
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x3c]
	cmp r0, #0xb4
	bne _02264B64
	add r1, r4, #0
	add r1, #0x38
	mov r0, #2
	strb r0, [r1]
_02264B64:
	ldr r1, [r4, #0x3c]
	ldr r0, _02264D7C ; =0x0000010E
	cmp r1, r0
	blt _02264B78
	cmp r1, #0x5a
	bgt _02264B78
	add r1, r4, #0
	add r1, #0x38
	mov r0, #1
	strb r0, [r1]
_02264B78:
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02264B90
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	b _02264B9C
_02264B90:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r6, #0
	bl sub_020E1A9C
_02264B9C:
	bl sub_020E1740
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02264D80 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x30]
	mov r0, #0x44
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02264BE0
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	b _02264BEC
_02264BE0:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r6, #0
	bl sub_020E1A9C
_02264BEC:
	bl sub_020E1740
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02264D80 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x34]
	mov r0, #0x40
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02264C30
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	b _02264C3C
_02264C30:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r6, #0
	bl sub_020E1A9C
_02264C3C:
	bl sub_020E1740
	ldr r1, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x28]
	ldr r1, [r4, #0x20]
	mov ip, r0
	add r1, r2, r1
	ldr r7, [r4, #0x30]
	ldr r3, [r4, #0x18]
	add r1, r7, r1
	add r1, r3, r1
	ldr r3, [r4, #0x2c]
	ldr r2, [r4, #0x24]
	ldr r7, [r4, #0x34]
	add r2, r3, r2
	add r2, r7, r2
	mov r3, ip
	add r2, r3, r2
	mov r3, #0xe
	ldr r0, [r4, #0x14]
	lsl r3, r3, #0x10
	bl sub_0200D650
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r0, r0, #4
	add r4, #0x34
	str r0, [sp, #0xc]
	cmp r5, #0x24
	bge _02264C7E
	b _02264A7A
_02264C7E:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	b _02264FDA
_02264C8A:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02264CA8
	add r1, r0, #1
	ldr r0, [sp]
	mov r2, #0
	str r1, [r0, #8]
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov116_02261E0C
	ldr r0, _02264D84 ; =0x00000573
	bl sub_02005748
_02264CA8:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0x1e
	ble _02264CD4
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [r0, #0xc]
	ldr r1, [sp]
	add r0, r0, #1
	str r0, [r1, #0xc]
	mov r1, #5
	bl sub_020E1F6C
	ldr r0, [sp]
	mov r2, #1
	str r1, [r0, #0xc]
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov116_02261E0C
	b _02264FAC
_02264CD4:
	add r1, r0, #1
	ldr r0, [sp]
	mov r4, #0x3f
	str r1, [r0, #8]
	mov r0, #0
	ldr r5, [sp]
	str r0, [sp, #0x10]
	lsl r4, r4, #0x18
_02264CE4:
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x46
	strh r1, [r0]
	mov r0, #0x46
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _02264CFA
	b _02264F9E
_02264CFA:
	add r0, r5, #0
	add r0, #0x3a
	ldrb r0, [r0]
	add r0, #0xa
	cmp r1, r0
	blt _02264DB2
	cmp r1, r0
	bne _02264D12
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200D364
_02264D12:
	mov r0, #0x46
	ldrsh r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x3a
	ldrb r0, [r0]
	add r0, #0x12
	cmp r1, r0
	bne _02264D2C
	add r1, r5, #0
	add r1, #0x39
	mov r0, #0
	strb r0, [r1]
	b _02264D4A
_02264D2C:
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _02264D4A
	add r0, r5, #0
	add r0, #0x39
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0x39
	strb r1, [r0]
_02264D4A:
	add r1, r5, #0
	add r1, #0x39
	ldrb r1, [r1]
	ldr r0, [r5, #0x14]
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _02264D6A
	cmp r0, #1
	beq _02264D70
	cmp r0, #2
	beq _02264D8C
	b _02264D92
_02264D6A:
	ldr r0, _02264D88 ; =0xFFFFF000
	str r0, [r5, #0x28]
	b _02264D92
_02264D70:
	mov r0, #0
	str r0, [r5, #0x28]
	b _02264D92
	nop
_02264D78: .word 0x02267D60
_02264D7C: .word 0x0000010E
_02264D80: .word 0x00000000
_02264D84: .word 0x00000573
_02264D88: .word 0xFFFFF000
_02264D8C:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #0x28]
_02264D92:
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x3b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	mov r1, #3
	bl sub_020E1F6C
	add r0, r5, #0
	add r0, #0x3b
	strb r1, [r0]
_02264DB2:
	mov r0, #0x46
	ldrsh r1, [r5, r0]
	cmp r1, #5
	ble _02264DFA
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _02264DEC
	cmp r0, #1
	beq _02264DDC
	cmp r0, #2
	bne _02264DFA
	add r0, r1, #5
	mov r1, #6
	bl sub_020E1F6C
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
	b _02264DFA
_02264DDC:
	add r0, r1, #5
	mov r1, #6
	bl sub_020E1F6C
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
	b _02264DFA
_02264DEC:
	add r0, r1, #5
	mov r1, #7
	bl sub_020E1F6C
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
_02264DFA:
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _02264E58
	cmp r0, #1
	beq _02264E32
	cmp r0, #2
	bne _02264E32
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	mov r1, #0x1e
	add r2, r0, #5
	sub r2, r1, r2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	add r2, r0, #7
	mov r0, #0x1e
	sub r2, r0, r2
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r1, r1, #0xd
	lsl r0, r0, #0xd
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	b _02264E7C
_02264E32:
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	mov r1, #0x1e
	add r2, r0, #5
	sub r2, r1, r2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	add r2, r0, #6
	mov r0, #0x1e
	sub r2, r0, r2
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r1, r1, #0xd
	lsl r0, r0, #0xd
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	b _02264E7C
_02264E58:
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	mov r1, #0x1e
	add r2, r0, #5
	sub r2, r1, r2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	add r2, r0, #4
	mov r0, #0x1e
	sub r2, r0, r2
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r1, r1, #0xd
	lsl r0, r0, #0xd
	asr r1, r1, #0x10
	asr r0, r0, #0x10
_02264E7C:
	cmp r1, #0
	ble _02264E88
	mov r2, #0x42
	ldrsh r2, [r5, r2]
	add r2, r2, r1
	b _02264E8E
_02264E88:
	mov r1, #0x42
	ldrsh r1, [r5, r1]
	add r2, r1, #1
_02264E8E:
	add r1, r5, #0
	add r1, #0x42
	strh r2, [r1]
	cmp r0, #0
	ble _02264EA0
	mov r1, #0x44
	ldrsh r1, [r5, r1]
	add r1, r1, r0
	b _02264EA6
_02264EA0:
	mov r0, #0x44
	ldrsh r0, [r5, r0]
	add r1, r0, #1
_02264EA6:
	add r0, r5, #0
	add r0, #0x44
	strh r1, [r0]
	mov r0, #0x42
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02264EC4
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020E0B00
	b _02264ED0
_02264EC4:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1A9C
_02264ED0:
	bl sub_020E1740
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02264FE8 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x30]
	mov r0, #0x44
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02264F14
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020E0B00
	b _02264F20
_02264F14:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1A9C
_02264F20:
	bl sub_020E1740
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02264FE8 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x34]
	mov r0, #0x40
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02264F64
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020E0B00
	b _02264F70
_02264F64:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1A9C
_02264F70:
	bl sub_020E1740
	ldr r1, [r5, #0x1c]
	add r7, r1, r0
	str r7, [r5, #0x1c]
	ldr r2, [r5, #0x28]
	ldr r1, [r5, #0x20]
	ldr r3, [r5, #0x30]
	add r1, r2, r1
	add r1, r3, r1
	ldr r6, [r5, #0x18]
	ldr r3, [r5, #0x2c]
	ldr r2, [r5, #0x24]
	add r1, r6, r1
	add r2, r3, r2
	ldr r6, [r5, #0x34]
	mov r3, #0xe
	add r2, r6, r2
	ldr r0, [r5, #0x14]
	add r2, r7, r2
	lsl r3, r3, #0x10
	bl sub_0200D650
_02264F9E:
	ldr r0, [sp, #0x10]
	add r5, #0x34
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x24
	bge _02264FAC
	b _02264CE4
_02264FAC:
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02264FDA
	ldr r0, [sp]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	b _02264FDA
_02264FC2:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl ov116_02261E0C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02264FDA:
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl ov116_02261E28
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264FE8: .word 0x00000000
	thumb_func_end ov116_022649E4

	thumb_func_start ov116_02264FEC
ov116_02264FEC: ; 0x02264FEC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _02265014 ; =0x00000764
	mov r0, #0x6a
	bl sub_02018144
	add r1, r0, #0
	mov r2, #1
	str r5, [r1, #0]
	mov r0, #0
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _02265018 ; =ov116_022649E4
	lsl r2, r2, #0xc
	str r4, [r1, #0x10]
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	nop
_02265014: .word 0x00000764
_02265018: .word ov116_022649E4
	thumb_func_end ov116_02264FEC

	thumb_func_start ov116_0226501C
ov116_0226501C: ; 0x0226501C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	ldr r5, [r4, #0xc]
	ldr r6, [r4, #0x14]
	ldr r7, [r4, #0x10]
	cmp r1, #0
	beq _0226510A
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _022650FE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02265040: ; jump table
	.short _02265048 - _02265040 - 2 ; case 0
	.short _0226508E - _02265040 - 2 ; case 1
	.short _022650A0 - _02265040 - 2 ; case 2
	.short _022650B8 - _02265040 - 2 ; case 3
_02265048:
	ldr r0, [r5, #0]
	cmp r0, #4
	bge _02265054
	add r0, r0, #1
	str r0, [r5, #0]
	b _0226505E
_02265054:
	mov r0, #4
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0226505E:
	mov r1, #0
	str r1, [sp]
	ldr r4, [r5, #0]
	ldr r3, [r6, #0]
	add r0, r7, #0
	add r3, r4, r3
	lsl r3, r3, #0x18
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r4, [r5, #0]
	ldr r3, [r6, #0]
	add r0, r7, #0
	add r3, r4, r3
	lsl r3, r3, #0x18
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	pop {r3, r4, r5, r6, r7, pc}
_0226508E:
	mov r1, #1
	bl sub_02017348
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022650A0:
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _0226510A
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	cmp r0, #0xf
	blt _0226510A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022650B8:
	ldr r0, [r5, #0]
	cmp r0, #0
	ble _022650C4
	sub r0, r0, #1
	str r0, [r5, #0]
	b _022650CE
_022650C4:
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022650CE:
	mov r1, #0
	str r1, [sp]
	ldr r4, [r5, #0]
	ldr r3, [r6, #0]
	add r0, r7, #0
	add r3, r4, r3
	lsl r3, r3, #0x18
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r4, [r5, #0]
	ldr r3, [r6, #0]
	add r0, r7, #0
	add r3, r4, r3
	lsl r3, r3, #0x18
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	pop {r3, r4, r5, r6, r7, pc}
_022650FE:
	mov r1, #0
	str r1, [r4, #0x50]
	str r1, [r4, #4]
	str r1, [r4, #0]
	bl sub_02017348
_0226510A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov116_0226501C

	thumb_func_start ov116_0226510C
ov116_0226510C: ; 0x0226510C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _02265258 ; =0x02267D08
	add r3, sp, #0x20
	ldrh r1, [r0]
	add r6, sp, #0x14
	ldr r2, _0226525C ; =0x02267D40
	strh r1, [r6, #4]
	ldrh r1, [r0, #2]
	add r4, r3, #0
	add r7, sp, #0x18
	strh r1, [r6, #6]
	ldrh r1, [r0, #4]
	ldrh r0, [r0, #6]
	strh r1, [r6, #8]
	strh r0, [r6, #0xa]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0226513E
	b _02265252
_0226513E:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0226514E
	cmp r0, #1
	beq _022651BE
	cmp r0, #2
	beq _022651D6
	b _02265236
_0226514E:
	mov r0, #0
	str r0, [sp, #0x10]
	str r5, [sp, #8]
_02265154:
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02265188
	add r1, sp, #0x14
	add r1, #2
	add r2, sp, #0x14
	bl sub_0200D550
	mov r0, #0
	ldrsh r1, [r6, r0]
	ldrsh r0, [r7, r0]
	cmp r1, r0
	ble _02265188
	sub r0, r1, #6
	strh r0, [r6]
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [sp, #0xc]
	bl sub_0200D4C4
	mov r0, #0
	str r0, [r4, #0]
_02265188:
	ldr r0, [sp, #8]
	add r7, r7, #2
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _02265154
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0226523E
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0226523E
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0226523E
	beq _0226523E
	mov r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x50]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0226523E
_022651BE:
	ldr r0, [r5, #0x50]
	cmp r0, #1
	bne _0226523E
	ldr r0, [r5, #0x28]
	add r0, r0, #1
	str r0, [r5, #0x28]
	cmp r0, #0xf
	blt _0226523E
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0226523E
_022651D6:
	mov r0, #0
	str r0, [sp, #4]
	add r7, r5, #0
_022651DC:
	ldr r0, [r7, #8]
	str r0, [sp]
	cmp r0, #0
	beq _0226520C
	add r1, sp, #0x14
	add r1, #2
	add r2, sp, #0x14
	bl sub_0200D550
	mov r0, #0
	ldrsh r0, [r6, r0]
	cmp r0, #0xe0
	bge _0226520C
	add r0, r0, #6
	strh r0, [r6]
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [sp]
	bl sub_0200D4C4
	mov r0, #0
	str r0, [r4, #0]
_0226520C:
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #4]
	cmp r0, #4
	blt _022651DC
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0226523E
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0226523E
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0226523E
	beq _0226523E
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0226523E
_02265236:
	mov r0, #0
	str r0, [r5, #0x50]
	str r0, [r5, #4]
	str r0, [r5, #0]
_0226523E:
	mov r4, #0
_02265240:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0226524A
	bl sub_0200D33C
_0226524A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02265240
_02265252:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265258: .word 0x02267D08
_0226525C: .word 0x02267D40
	thumb_func_end ov116_0226510C

	thumb_func_start ov116_02265260
ov116_02265260: ; 0x02265260
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022652F2
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02265278
	cmp r0, #1
	beq _022652B2
	b _022652D2
_02265278:
	mov r7, #0
	ldr r4, [sp]
	add r5, r7, #0
_0226527E:
	ldr r6, [r4, #8]
	add r0, r5, #0
	mov r1, #0x28
	bl sub_020E1F6C
	add r0, r6, #0
	add r0, #0x88
	bl sub_02017240
	add r0, r6, #0
	mov r1, #1
	bl sub_02017348
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r7, #8
	blt _0226527E
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x4c]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022652B2:
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	cmp r0, #1
	bne _022652F2
	ldr r0, [sp]
	ldr r0, [r0, #0x4c]
	add r1, r0, #1
	ldr r0, [sp]
	cmp r1, #0xf
	str r1, [r0, #0x4c]
	blt _022652F2
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022652D2:
	mov r5, #0
	ldr r4, [sp]
	add r6, r5, #0
_022652D8:
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_02017348
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #8
	blt _022652D8
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x50]
	str r1, [r0, #4]
	str r1, [r0, #0]
_022652F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov116_02265260

	thumb_func_start ov116_022652F4
ov116_022652F4: ; 0x022652F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0226534A
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0226530A
	cmp r0, #1
	beq _02265320
	b _0226533C
_0226530A:
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0x54
	bl ov116_02264FEC
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02265320:
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _0226534A
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	cmp r0, #0xf
	blt _0226534A
	mov r0, #1
	str r0, [r4, #0x54]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0226533C:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _0226534A
	mov r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #4]
	str r0, [r4, #0]
_0226534A:
	pop {r4, pc}
	thumb_func_end ov116_022652F4

	thumb_func_start ov116_0226534C
ov116_0226534C: ; 0x0226534C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x99
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	bl sub_0200F2AC
	cmp r0, #0
	beq _02265368
	add r5, #0x34
	ldrb r0, [r5]
	cmp r0, #1
	bne _02265370
_02265368:
	add r0, r6, #0
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
_02265370:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	cmp r0, #5
	bhi _0226540C
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02265384: ; jump table
	.short _0226540C - _02265384 - 2 ; case 0
	.short _022653FC - _02265384 - 2 ; case 1
	.short _022653DC - _02265384 - 2 ; case 2
	.short _022653C2 - _02265384 - 2 ; case 3
	.short _022653A4 - _02265384 - 2 ; case 4
	.short _02265390 - _02265384 - 2 ; case 5
_02265390:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _022653A4
	mov r1, #1
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0x4c
	str r1, [r4, r0]
_022653A4:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022653C2
	ldr r0, _02265468 ; =0x0000060F
	bl sub_02005748
	mov r0, #0x5d
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0x4c
	str r1, [r4, r0]
_022653C2:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022653DC
	add r0, r4, #0
	mov r1, #1
	add r0, #0xfc
	str r1, [r0, #0]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_022653DC:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022653FC
	ldr r0, _0226546C ; =0x00000571
	bl sub_02005748
	add r0, r4, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
_022653FC:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02265434
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x58]
	b _02265434
_0226540C:
	ldr r1, [r4, #0]
	cmp r0, r1
	beq _02265434
	mov r2, #1
	add r0, r4, #0
	mov r1, #0x52
	str r2, [r4, #0x58]
	add r0, #0xd0
	lsl r1, r1, #2
	str r2, [r0, #0]
	add r0, r1, #0
	str r2, [r4, r1]
	add r0, #0x78
	str r2, [r4, r0]
	add r1, #0xf0
	str r2, [r4, r1]
	ldr r0, _0226546C ; =0x00000571
	mov r1, #0
	bl sub_020057A4
_02265434:
	add r0, r4, #0
	add r0, #8
	bl ov116_0226501C
	add r0, r4, #0
	add r0, #0x80
	bl ov116_0226510C
	add r0, r4, #0
	add r0, #0xf8
	bl ov116_02265260
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov116_0226510C
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov116_022652F4
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02265468: .word 0x0000060F
_0226546C: .word 0x00000571
	thumb_func_end ov116_0226534C

	thumb_func_start ov116_02265470
ov116_02265470: ; 0x02265470
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	ldr r0, _022655C0 ; =0x0000248C
	mov r6, #0
	str r1, [r4, r0]
	ldr r0, _022655C4 ; =0x00002AE8
	add r1, r4, r0
	ldr r0, _022655C8 ; =0x0000222C
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	ldr r2, [r1, #0]
	sub r1, r0, #4
	add r0, r0, #4
	str r2, [r4, r1]
	add r5, r4, r0
_02265492:
	mov r1, #0
	str r1, [r5, #0]
	str r1, [r5, #4]
	cmp r6, #4
	bhi _02265540
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022654A8: ; jump table
	.short _022654B2 - _022654A8 - 2 ; case 0
	.short _022654CE - _022654A8 - 2 ; case 1
	.short _02265528 - _022654A8 - 2 ; case 2
	.short _02265542 - _022654A8 - 2 ; case 3
	.short _0226559C - _022654A8 - 2 ; case 4
_022654B2:
	ldr r0, _022655CC ; =0x00000944
	add r0, r4, r0
	str r0, [r5, #8]
	mov r0, #0x42
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r0, #4
	str r1, [r5, #0xc]
	add r0, r4, r0
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0x14]
	str r0, [r5, #0x10]
	b _0226559E
_022654CE:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r2, sp, #4
	str r0, [r5, #8]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	str r0, [r5, #0xc]
	str r1, [r5, #0x10]
	add r0, r4, #0
	str r1, [r5, #0x14]
	add r0, #0xd0
	add r1, sp, #4
	ldr r0, [r0, #0]
	add r1, #2
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0xd0
	add r2, sp, #0
	mov r1, #6
	ldrsh r1, [r2, r1]
	ldr r0, [r0, #0]
	mov r2, #0xe0
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xd4
	add r1, sp, #4
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0xd4
	add r2, sp, #0
	mov r1, #6
	ldrsh r1, [r2, r1]
	ldr r0, [r0, #0]
	mov r2, #0xe0
	bl sub_0200D4C4
	b _0226559E
_02265528:
	mov r0, #0xb5
	lsl r0, r0, #4
	add r2, r4, r0
	mov r0, #0x83
	add r3, r5, #0
	lsl r0, r0, #2
_02265534:
	add r1, r1, #1
	str r2, [r3, #8]
	add r2, r2, r0
	add r3, r3, #4
	cmp r1, #8
	blt _02265534
_02265540:
	b _0226559E
_02265542:
	str r1, [r5, #8]
	add r0, r4, #0
	str r1, [r5, #0xc]
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r1, sp, #0
	str r0, [r5, #0x10]
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	add r1, #2
	str r0, [r5, #0x14]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r2, sp, #0
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0xd8
	add r2, sp, #0
	mov r1, #2
	ldrsh r1, [r2, r1]
	ldr r0, [r0, #0]
	mov r2, #0xe0
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xdc
	add r1, sp, #0
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0xdc
	add r2, sp, #0
	mov r1, #2
	ldrsh r1, [r2, r1]
	ldr r0, [r0, #0]
	mov r2, #0xe0
	bl sub_0200D4C4
	b _0226559E
_0226559C:
	str r4, [r5, #8]
_0226559E:
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #5
	bge _022655A8
	b _02265492
_022655A8:
	ldr r1, _022655D0 ; =0x00002228
	mov r2, #1
	ldr r0, _022655D4 ; =ov116_0226534C
	add r1, r4, r1
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	ldr r1, _022655D8 ; =0x00002488
	str r0, [r4, r1]
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022655C0: .word 0x0000248C
_022655C4: .word 0x00002AE8
_022655C8: .word 0x0000222C
_022655CC: .word 0x00000944
_022655D0: .word 0x00002228
_022655D4: .word ov116_0226534C
_022655D8: .word 0x00002488
	thumb_func_end ov116_02265470

	thumb_func_start ov116_022655DC
ov116_022655DC: ; 0x022655DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x57
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	str r0, [sp, #8]
	add r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02265604
	cmp r0, #1
	beq _02265642
	cmp r0, #2
	beq _022656E6
	b _022656F4
_02265604:
	add r1, #0x24
	mov r2, #0xa
	add r0, r5, r1
	mov r1, #0
	lsl r2, r2, #0xe
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x66
	lsl r0, r0, #2
	mov r2, #5
	add r0, r5, r0
	mov r1, #0
	lsl r2, r2, #0x10
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r2, _02265750 ; =0xFFFB0000
	add r0, r5, r0
	mov r1, #0
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	b _022656F4
_02265642:
	add r1, #0x24
	mov r7, #0
	add r6, r5, r1
	add r4, sp, #0xc
_0226564A:
	add r0, r6, #0
	bl ov116_02264774
	add r7, r7, #1
	add r6, #0x18
	stmia r4!, {r0}
	cmp r7, #3
	blt _0226564A
	mov r0, #0x5f
	lsl r0, r0, #2
	mov r2, #3
	ldr r0, [r5, r0]
	lsl r3, r2, #7
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #7
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x1c
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #5
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x34
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #6
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x1c
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #1
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x34
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #2
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _022656F4
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _022656F4
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _022656F4
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	b _022656F4
_022656E6:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x1c
	str r2, [r5, r0]
	mov r0, #0
	add r1, #0x14
	str r0, [r5, r1]
_022656F4:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	cmp r0, #6
	bge _02265702
	add r1, r0, #1
	ldr r0, [sp, #4]
	b _02265706
_02265702:
	ldr r0, [sp, #4]
	mov r1, #6
_02265706:
	str r1, [r0, #0]
	mov r1, #0
	ldr r3, [sp, #8]
	str r1, [sp]
	ldr r4, [r3, #0]
	ldr r3, [sp, #4]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r3, [r3, #0]
	ldr r0, [r5, r0]
	add r3, r4, r3
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x14]
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #8]
	mov r0, #0x5f
	ldr r4, [r3, #0]
	ldr r3, [sp, #4]
	lsl r0, r0, #2
	ldr r3, [r3, #0]
	ldr r0, [r5, r0]
	add r3, r4, r3
	mov r1, #1
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x14]
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265750: .word 0xFFFB0000
	thumb_func_end ov116_022655DC

	thumb_func_start ov116_02265754
ov116_02265754: ; 0x02265754
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x57
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	str r0, [sp, #8]
	add r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0226577C
	cmp r0, #1
	beq _022657BA
	cmp r0, #2
	beq _0226585E
	b _0226586A
_0226577C:
	add r1, #0x24
	add r0, r5, r1
	mov r1, #0xa
	lsl r1, r1, #0xe
	mov r2, #0
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x66
	lsl r0, r0, #2
	mov r1, #5
	add r0, r5, r0
	lsl r1, r1, #0x10
	mov r2, #0
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r1, _022658C4 ; =0xFFFB0000
	add r0, r5, r0
	mov r2, #0
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	b _0226586A
_022657BA:
	add r1, #0x24
	mov r7, #0
	add r6, r5, r1
	add r4, sp, #0xc
_022657C2:
	add r0, r6, #0
	bl ov116_02264774
	add r7, r7, #1
	add r6, #0x18
	stmia r4!, {r0}
	cmp r7, #3
	blt _022657C2
	mov r0, #0x5f
	lsl r0, r0, #2
	mov r2, #3
	ldr r0, [r5, r0]
	lsl r3, r2, #7
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #7
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x1c
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #5
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x34
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #6
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x1c
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #1
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x34
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #2
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0226586A
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0226586A
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0226586A
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	b _0226586A
_0226585E:
	add r0, r1, #0
	mov r2, #0
	add r0, #0x1c
	str r2, [r5, r0]
	add r1, #0x14
	str r2, [r5, r1]
_0226586A:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	cmp r0, #4
	ble _02265878
	sub r1, r0, #1
	ldr r0, [sp, #4]
	b _0226587C
_02265878:
	ldr r0, [sp, #4]
	mov r1, #0
_0226587C:
	str r1, [r0, #0]
	mov r1, #0
	ldr r3, [sp, #8]
	str r1, [sp]
	ldr r4, [r3, #0]
	ldr r3, [sp, #4]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r3, [r3, #0]
	ldr r0, [r5, r0]
	add r3, r4, r3
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x14]
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #8]
	mov r0, #0x5f
	ldr r4, [r3, #0]
	ldr r3, [sp, #4]
	lsl r0, r0, #2
	ldr r3, [r3, #0]
	ldr r0, [r5, r0]
	add r3, r4, r3
	mov r1, #1
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x14]
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022658C4: .word 0xFFFB0000
	thumb_func_end ov116_02265754

	thumb_func_start ov116_022658C8
ov116_022658C8: ; 0x022658C8
	cmp r0, #0xa
	bhi _02265916
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022658D8: ; jump table
	.short _02265916 - _022658D8 - 2 ; case 0
	.short _022658EE - _022658D8 - 2 ; case 1
	.short _022658F2 - _022658D8 - 2 ; case 2
	.short _022658F6 - _022658D8 - 2 ; case 3
	.short _022658FA - _022658D8 - 2 ; case 4
	.short _022658FE - _022658D8 - 2 ; case 5
	.short _02265902 - _022658D8 - 2 ; case 6
	.short _02265906 - _022658D8 - 2 ; case 7
	.short _0226590A - _022658D8 - 2 ; case 8
	.short _0226590E - _022658D8 - 2 ; case 9
	.short _02265912 - _022658D8 - 2 ; case 10
_022658EE:
	mov r0, #0x1c
	bx lr
_022658F2:
	mov r0, #0xe
	bx lr
_022658F6:
	mov r0, #0xc
	bx lr
_022658FA:
	mov r0, #0xa
	bx lr
_022658FE:
	mov r0, #9
	bx lr
_02265902:
	mov r0, #0x20
	bx lr
_02265906:
	mov r0, #0xe
	bx lr
_0226590A:
	mov r0, #0xc
	bx lr
_0226590E:
	mov r0, #0xb
	bx lr
_02265912:
	mov r0, #0xb
	bx lr
_02265916:
	mov r0, #9
	bx lr
	; .align 2, 0
	thumb_func_end ov116_022658C8

	thumb_func_start ov116_0226591C
ov116_0226591C: ; 0x0226591C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x56
	add r6, r1, #0
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r4, [r0, #0]
	bl sub_0200F2AC
	cmp r0, #0
	beq _02265940
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r6, r1]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02265948
_02265940:
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
_02265948:
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _022659DC
	sub r0, r1, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _02265960
	add r0, r6, #0
	bl ov116_022655DC
_02265960:
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r0, [r6, r1]
	cmp r0, #0
	bne _022659F6
	cmp r4, #0
	beq _022659F6
	cmp r4, #8
	bge _022659F6
	add r2, r4, #0
	mov r0, #0x28
	mul r2, r0
	str r2, [sp]
	ldr r2, _02265A08 ; =0x02267DA4
	ldr r3, [sp]
	mov r7, #0
	ldr r3, [r2, r3]
	ldr r4, _02265A0C ; =0x02267DA8
	str r3, [r6, r1]
	add r3, r1, #4
	str r7, [r6, r3]
	ldr r3, [sp]
	lsl r0, r0, #3
	ldr r3, [r4, r3]
	add r5, r6, #0
	sub r3, r3, #1
	str r3, [r6, r0]
	ldr r3, _02265A10 ; =0x02267DAC
	ldr r0, [sp]
	ldr r3, [r3, r0]
	add r0, r1, #0
	sub r0, #0x20
	str r3, [r6, r0]
	add r0, r3, #5
	sub r1, #0x1c
	str r0, [r6, r1]
	ldr r0, [sp]
	add r4, r2, r0
_022659AC:
	ldr r1, [r4, #0xc]
	ldr r0, [r5, #0]
	add r1, r1, #4
	bl sub_0200D430
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x18]
	bl sub_0200D430
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x50
	cmp r7, #2
	blt _022659AC
	ldr r1, _02265A14 ; =0x02267DC8
	ldr r0, [sp]
	ldr r2, _02265A18 ; =0x00001001
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_0200D9E8
	b _022659F6
_022659DC:
	bne _022659F6
	add r0, r1, #0
	sub r0, #0x18
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _022659F6
	sub r0, r1, #4
	ldr r0, [r6, r0]
	cmp r0, #1
	bne _022659F6
	add r0, r6, #0
	bl ov116_02265754
_022659F6:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _02265A04
	sub r1, r1, #1
	str r1, [r6, r0]
_02265A04:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265A08: .word 0x02267DA4
_02265A0C: .word 0x02267DA8
_02265A10: .word 0x02267DAC
_02265A14: .word 0x02267DC8
_02265A18: .word 0x00001001
	thumb_func_end ov116_0226591C

	thumb_func_start ov116_02265A1C
ov116_02265A1C: ; 0x02265A1C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _02265A90 ; =0x00002AF4
	ldr r6, _02265A94 ; =0x00002030
	add r1, r4, r0
	ldr r0, _02265A98 ; =0x00002188
	str r1, [r4, r0]
	mov r1, #0x42
	lsl r1, r1, #2
	add r3, r4, r1
	add r2, r0, #4
	str r3, [r4, r2]
	add r1, r1, #4
	add r2, r4, r1
	add r1, r0, #0
	add r1, #8
	str r2, [r4, r1]
	add r1, r0, #0
	ldr r2, [r4, #0x14]
	add r1, #0x24
	str r2, [r4, r1]
	add r2, r0, #0
	mov r1, #0
	add r2, #0xc
	str r1, [r4, r2]
	add r2, r0, #0
	add r2, #0x18
	str r1, [r4, r2]
	add r0, #0x1c
	str r1, [r4, r0]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r4, #0
	add r0, #0xa0
_02265A60:
	add r5, r2, #0
	add r5, #0xe8
	ldr r5, [r5, #0]
	add r1, r1, #1
	str r5, [r3, r6]
	add r5, r2, #0
	add r5, #0xe0
	ldr r5, [r5, #0]
	add r2, r2, #4
	str r5, [r3, r0]
	add r3, #0x50
	cmp r1, #2
	blt _02265A60
	ldr r1, _02265A94 ; =0x00002030
	mov r2, #1
	ldr r0, _02265A9C ; =ov116_0226591C
	add r1, r4, r1
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	ldr r1, _02265AA0 ; =0x00002184
	str r0, [r4, r1]
	pop {r4, r5, r6, pc}
	nop
_02265A90: .word 0x00002AF4
_02265A94: .word 0x00002030
_02265A98: .word 0x00002188
_02265A9C: .word ov116_0226591C
_02265AA0: .word 0x00002184
	thumb_func_end ov116_02265A1C

	thumb_func_start ov116_02265AA4
ov116_02265AA4: ; 0x02265AA4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _02265AC2
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02265ACC
_02265AC2:
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #8
	pop {r4, r5, r6, pc}
_02265ACC:
	add r0, r1, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	cmp r0, #4
	bls _02265AD8
	b _02265D78
_02265AD8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265AE4: ; jump table
	.short _02265AEE - _02265AE4 - 2 ; case 0
	.short _02265C5E - _02265AE4 - 2 ; case 1
	.short _02265CA6 - _02265AE4 - 2 ; case 2
	.short _02265CEC - _02265AE4 - 2 ; case 3
	.short _02265D32 - _02265AE4 - 2 ; case 4
_02265AEE:
	mov r0, #0
	strh r0, [r4, #8]
	mov r0, #0x80
	strh r0, [r4, #0x14]
	mov r0, #0xa0
	strh r0, [r4, #0x16]
	mov r0, #0x40
	str r0, [r4, #0x18]
	mov r0, #0x18
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa8
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0x80
	add r0, #0xb4
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0xa0
	add r0, #0xb6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0x40
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0x18
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	lsl r3, r3, #0x14
	bl sub_0200D67C
	ldrh r0, [r4, #8]
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	lsl r2, r1, #0xc
	ldr r1, [r4, #0x18]
	mul r0, r1
	add r5, r2, r0
	ldrh r0, [r4, #8]
	bl sub_0201D264
	mov r1, #0x16
	ldrsh r1, [r4, r1]
	mov r3, #1
	lsl r3, r3, #0x14
	lsl r2, r1, #0xc
	ldr r1, [r4, #0x1c]
	mul r0, r1
	add r6, r2, r0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0200D650
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov116_022658C8
	mov r2, #0x2d
	add r3, r0, #0
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x20
	add r1, r5, #0
	add r2, r5, r2
	bl ov116_02264764
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov116_022658C8
	mov r2, #6
	add r3, r0, #0
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x38
	add r1, r6, #0
	sub r2, r6, r2
	bl ov116_02264764
	add r0, r4, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, sp, #4
	add r2, sp, #0
	lsl r3, r3, #0x14
	bl sub_0200D67C
	add r0, r4, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xb4
	ldrsh r1, [r4, r1]
	lsl r2, r1, #0xc
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	mul r0, r1
	add r6, r2, r0
	add r0, r4, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D264
	mov r1, #0xb6
	ldrsh r1, [r4, r1]
	mov r3, #1
	lsl r3, r3, #0x14
	lsl r2, r1, #0xc
	add r1, r4, #0
	add r1, #0xbc
	ldr r1, [r1, #0]
	mul r0, r1
	sub r5, r2, r0
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0200D650
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov116_022658C8
	mov r2, #0x2d
	add r3, r0, #0
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0xc0
	add r1, r6, #0
	sub r2, r6, r2
	bl ov116_02264764
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov116_022658C8
	mov r2, #6
	add r3, r0, #0
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0xd8
	add r1, r5, #0
	add r2, r5, r2
	bl ov116_02264764
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02265C5E:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov116_02265FD4
	mov r1, #0x52
	lsl r1, r1, #2
	add r5, r0, #0
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	cmp r5, #0
	beq _02265D7E
	cmp r0, #0
	beq _02265D7E
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02265CA6:
	sub r1, #0x38
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r1, #0x52
	lsl r1, r1, #2
	add r5, r0, #0
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	cmp r5, #0
	beq _02265D7E
	cmp r0, #0
	beq _02265D7E
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02265CEC:
	sub r1, #0x38
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x52
	lsl r1, r1, #2
	add r5, r0, #0
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	cmp r5, #0
	beq _02265D7E
	cmp r0, #0
	beq _02265D7E
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02265D32:
	sub r1, #0x38
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov116_02265FD4
	mov r1, #0x52
	lsl r1, r1, #2
	add r5, r0, #0
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	cmp r5, #0
	beq _02265D7E
	cmp r0, #0
	beq _02265D7E
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02265D78:
	add r0, r5, #0
	bl sub_0200DA58
_02265D7E:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02265AA4

	thumb_func_start ov116_02265D84
ov116_02265D84: ; 0x02265D84
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02265D84

	thumb_func_start ov116_02265D8C
ov116_02265D8C: ; 0x02265D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _02265DA4
	cmp r0, #1
	beq _02265E2C
	b _02265E56
_02265DA4:
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, sp, #4
	add r2, sp, #0
	lsl r3, r3, #0x14
	bl sub_0200D67C
	cmp r6, #0
	bne _02265DD2
	add r0, r4, #0
	ldr r6, [sp, #4]
	bl ov116_022658C8
	mov r2, #0x2d
	add r3, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0xe
	add r0, #0x20
	add r1, r6, #0
	sub r2, r6, r2
	bl ov116_02264764
	b _02265DEC
_02265DD2:
	add r0, r4, #0
	ldr r6, [sp, #4]
	bl ov116_022658C8
	mov r2, #0x2d
	add r3, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0xe
	add r0, #0x20
	add r1, r6, #0
	add r2, r6, r2
	bl ov116_02264764
_02265DEC:
	cmp r7, #2
	bne _02265E0C
	add r0, r4, #0
	ldr r6, [sp]
	bl ov116_022658C8
	mov r2, #6
	add r3, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0xe
	add r0, #0x38
	add r1, r6, #0
	sub r2, r6, r2
	bl ov116_02264764
	b _02265E26
_02265E0C:
	add r0, r4, #0
	ldr r6, [sp]
	bl ov116_022658C8
	mov r2, #6
	add r3, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0xe
	add r0, #0x38
	add r1, r6, #0
	add r2, r6, r2
	bl ov116_02264764
_02265E26:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_02265E2C:
	add r0, r5, #0
	add r0, #0x20
	bl ov116_02264774
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ov116_02264774
	mov r3, #1
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x38]
	lsl r3, r3, #0x14
	bl sub_0200D650
	cmp r4, #0
	beq _02265E5C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02265E56:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02265E5C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov116_02265D8C

	thumb_func_start ov116_02265E64
ov116_02265E64: ; 0x02265E64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02265E78
	cmp r0, #1
	beq _02265EE8
	b _02265F10
_02265E78:
	cmp r2, #0
	bne _02265E96
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #2
	add r0, #0x20
	lsl r1, r1, #0xe
	lsl r2, r2, #0x12
	bl ov116_02264764
	b _02265EAC
_02265E96:
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r2, #2
	ldr r1, _02265F18 ; =0xFFFC2000
	add r0, #0x20
	lsl r2, r2, #0x12
	bl ov116_02264764
_02265EAC:
	cmp r6, #2
	bne _02265ECA
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0x22
	add r0, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl ov116_02264764
	b _02265EE2
_02265ECA:
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0x2e
	add r0, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl ov116_02264764
_02265EE2:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_02265EE8:
	add r0, r5, #0
	add r0, #0x20
	bl ov116_02264774
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ov116_02264774
	mov r3, #1
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x38]
	lsl r3, r3, #0x14
	bl sub_0200D650
	cmp r4, #0
	beq _02265F14
	mov r0, #1
	pop {r4, r5, r6, pc}
_02265F10:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02265F14:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02265F18: .word 0xFFFC2000
	thumb_func_end ov116_02265E64

	thumb_func_start ov116_02265F1C
ov116_02265F1C: ; 0x02265F1C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02265F30
	cmp r0, #1
	beq _02265FA0
	b _02265FC8
_02265F30:
	cmp r2, #0
	bne _02265F4E
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #2
	add r0, #0x20
	lsl r1, r1, #0xe
	lsl r2, r2, #0x12
	bl ov116_02264764
	b _02265F64
_02265F4E:
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r2, #2
	ldr r1, _02265FD0 ; =0xFFFC2000
	add r0, #0x20
	lsl r2, r2, #0x12
	bl ov116_02264764
_02265F64:
	cmp r6, #2
	bne _02265F82
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #6
	mov r2, #0x12
	add r0, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl ov116_02264764
	b _02265F9A
_02265F82:
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #6
	mov r2, #0x1e
	add r0, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl ov116_02264764
_02265F9A:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_02265FA0:
	add r0, r5, #0
	add r0, #0x20
	bl ov116_02264774
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ov116_02264774
	mov r3, #1
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x38]
	lsl r3, r3, #0x14
	bl sub_0200D650
	cmp r4, #0
	beq _02265FCC
	mov r0, #1
	pop {r4, r5, r6, pc}
_02265FC8:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02265FCC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02265FD0: .word 0xFFFC2000
	thumb_func_end ov116_02265F1C

	thumb_func_start ov116_02265FD4
ov116_02265FD4: ; 0x02265FD4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r5, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02265FEA
	cmp r0, #1
	beq _02265FF6
	b _0226609A
_02265FEA:
	mov r0, #0
	str r0, [r4, #0x10]
	strh r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_02265FF6:
	add r0, r1, #0
	bl ov116_022658C8
	add r1, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	bl sub_020E1F6C
	mov r1, #8
	ldrsh r2, [r4, r1]
	add r0, r2, r0
	strh r0, [r4, #8]
	mov r0, #0x5a
	ldrsh r1, [r4, r1]
	lsl r0, r0, #2
	cmp r1, r0
	blt _0226601C
	mov r0, #0
	strh r0, [r4, #8]
_0226601C:
	mov r3, #1
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	lsl r3, r3, #0x14
	bl sub_0200D67C
	cmp r5, #0
	ldrh r0, [r4, #8]
	bne _02266048
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	lsl r2, r1, #0xc
	ldr r1, [r4, #0x18]
	mul r0, r1
	sub r5, r2, r0
	ldrh r0, [r4, #8]
	bl sub_0201D264
	b _0226605E
_02266048:
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	lsl r2, r1, #0xc
	ldr r1, [r4, #0x18]
	mul r0, r1
	add r5, r2, r0
	ldrh r0, [r4, #8]
	bl sub_0201D264
_0226605E:
	mov r1, #0x16
	ldrsh r1, [r4, r1]
	mov r3, #1
	lsl r3, r3, #0x14
	lsl r2, r1, #0xc
	ldr r1, [r4, #0x1c]
	mul r0, r1
	sub r2, r2, r0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_0200D650
	mov r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022660A0
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, r6
	blt _02266094
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02266094:
	mov r0, #1
	str r0, [r4, #4]
	b _022660A0
_0226609A:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_022660A0:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02265FD4

	thumb_func_start ov116_022660A8
ov116_022660A8: ; 0x022660A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _02266100 ; =0x02267D20
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl sub_0200F2AC
	cmp r0, #0
	beq _022660D2
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _022660DC
_022660D2:
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_022660DC:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #4
	bls _022660E8
	b _02266442
_022660E8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022660F4: ; jump table
	.short _02266104 - _022660F4 - 2 ; case 0
	.short _0226623C - _022660F4 - 2 ; case 1
	.short _022662BE - _022660F4 - 2 ; case 2
	.short _0226633A - _022660F4 - 2 ; case 3
	.short _022663B6 - _022660F4 - 2 ; case 4
	nop
_02266100: .word 0x02267D20
_02266104:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _0226620C
	add r5, r4, #0
_02266112:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	ldrh r0, [r5, #8]
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl sub_0201D264
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D264
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2, #0]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _02266112
_0226620C:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0226623C:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _02266310
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266310
	cmp r0, #0
	beq _02266310
	cmp r2, #0
	beq _02266310
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022662BE:
	mov r3, #1
	mov r1, #0x51
	add r0, r4, #0
	str r3, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	bl ov116_02265FD4
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266310
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266310
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266310
	cmp r0, #0
	bne _02266312
_02266310:
	b _02266448
_02266312:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0226633A:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266448
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266448
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266448
	cmp r0, #0
	beq _02266448
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022663B6:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov116_02265FD4
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266448
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266448
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266448
	cmp r0, #0
	beq _02266448
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	beq _0226642E
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_0226642E:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02266442:
	add r0, r5, #0
	bl sub_0200DA58
_02266448:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov116_022660A8

	thumb_func_start ov116_0226644C
ov116_0226644C: ; 0x0226644C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _022664A4 ; =0x02267D10
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl sub_0200F2AC
	cmp r0, #0
	beq _02266476
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _02266480
_02266476:
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02266480:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #4
	bls _0226648C
	b _022667E8
_0226648C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02266498: ; jump table
	.short _022664A8 - _02266498 - 2 ; case 0
	.short _022665E0 - _02266498 - 2 ; case 1
	.short _02266662 - _02266498 - 2 ; case 2
	.short _022666E0 - _02266498 - 2 ; case 3
	.short _0226675C - _02266498 - 2 ; case 4
	nop
_022664A4: .word 0x02267D10
_022664A8:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _022665B0
	add r5, r4, #0
_022664B6:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	ldrh r0, [r5, #8]
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl sub_0201D264
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D264
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2, #0]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _022664B6
_022665B0:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022665E0:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _022666B6
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022666B6
	cmp r0, #0
	beq _022666B6
	cmp r2, #0
	beq _022666B6
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266662:
	mov r0, #1
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov116_02265FD4
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _022666B6
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022666B6
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _022666B6
	cmp r0, #0
	bne _022666B8
_022666B6:
	b _022667EE
_022666B8:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022666E0:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _022667EE
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022667EE
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _022667EE
	cmp r0, #0
	beq _022667EE
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0226675C:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265FD4
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _022667EE
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022667EE
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _022667EE
	cmp r0, #0
	beq _022667EE
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	beq _022667D4
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_022667D4:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_022667E8:
	add r0, r5, #0
	bl sub_0200DA58
_022667EE:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov116_0226644C

	thumb_func_start ov116_022667F4
ov116_022667F4: ; 0x022667F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _02266850 ; =0x02267D30
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl sub_0200F2AC
	cmp r0, #0
	beq _0226681E
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _02266828
_0226681E:
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02266828:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #6
	bls _02266834
	b _02266BE6
_02266834:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02266840: ; jump table
	.short _02266854 - _02266840 - 2 ; case 0
	.short _0226698C - _02266840 - 2 ; case 1
	.short _02266A0E - _02266840 - 2 ; case 2
	.short _02266A88 - _02266840 - 2 ; case 3
	.short _02266AB4 - _02266840 - 2 ; case 4
	.short _02266B30 - _02266840 - 2 ; case 5
	.short _02266B9A - _02266840 - 2 ; case 6
	nop
_02266850: .word 0x02267D30
_02266854:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _0226695C
	add r5, r4, #0
_02266862:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	ldrh r0, [r5, #8]
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl sub_0201D264
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D264
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2, #0]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _02266862
_0226695C:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0226698C:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _02266AA0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266AA0
	cmp r0, #0
	beq _02266AA0
	cmp r2, #0
	beq _02266AA0
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266A0E:
	mov r3, #1
	mov r1, #0x51
	add r0, r4, #0
	str r3, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	bl ov116_02265FD4
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266AA0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266AA0
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266AA0
	cmp r0, #0
	beq _02266AA0
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266A88:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xf0
	add r3, r2, #0
	bl ov116_02265FD4
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _02266AA2
_02266AA0:
	b _02266BEC
_02266AA2:
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266AB4:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266BEC
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266BEC
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266BEC
	cmp r0, #0
	beq _02266BEC
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266B30:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov116_02265FD4
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266BEC
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266BEC
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266BEC
	cmp r0, #0
	beq _02266BEC
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266B9A:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xa0
	add r3, r2, #0
	bl ov116_02265FD4
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02266BEC
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	beq _02266BD2
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02266BD2:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02266BE6:
	add r0, r5, #0
	bl sub_0200DA58
_02266BEC:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov116_022667F4

	thumb_func_start ov116_02266BF0
ov116_02266BF0: ; 0x02266BF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _02266C4C ; =0x02267D50
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl sub_0200F2AC
	cmp r0, #0
	beq _02266C1A
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _02266C24
_02266C1A:
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02266C24:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #6
	bls _02266C30
	b _02266FE2
_02266C30:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02266C3C: ; jump table
	.short _02266C50 - _02266C3C - 2 ; case 0
	.short _02266D88 - _02266C3C - 2 ; case 1
	.short _02266E0A - _02266C3C - 2 ; case 2
	.short _02266E84 - _02266C3C - 2 ; case 3
	.short _02266EB0 - _02266C3C - 2 ; case 4
	.short _02266F2C - _02266C3C - 2 ; case 5
	.short _02266F96 - _02266C3C - 2 ; case 6
	nop
_02266C4C: .word 0x02267D50
_02266C50:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _02266D58
	add r5, r4, #0
_02266C5E:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	ldrh r0, [r5, #8]
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl sub_0201D264
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D264
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2, #0]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _02266C5E
_02266D58:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266D88:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _02266E9C
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266E9C
	cmp r0, #0
	beq _02266E9C
	cmp r2, #0
	beq _02266E9C
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266E0A:
	mov r3, #1
	mov r1, #0x51
	add r0, r4, #0
	str r3, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	bl ov116_02265FD4
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266E9C
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266E9C
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266E9C
	cmp r0, #0
	beq _02266E9C
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266E84:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xf0
	add r3, r2, #0
	bl ov116_02265FD4
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _02266E9E
_02266E9C:
	b _02266FE8
_02266E9E:
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266EB0:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266FE8
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266FE8
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266FE8
	cmp r0, #0
	beq _02266FE8
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266F2C:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov116_02265FD4
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266FE8
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266FE8
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266FE8
	cmp r0, #0
	beq _02266FE8
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266F96:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xa0
	add r3, r2, #0
	bl ov116_02265FD4
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02266FE8
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #8
	beq _02266FCE
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02266FCE:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02266FE2:
	add r0, r5, #0
	bl sub_0200DA58
_02266FE8:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov116_02266BF0

	.rodata


	.global Unk_ov116_02267D08
Unk_ov116_02267D08: ; 0x02267D08
	.incbin "incbin/overlay116_rodata.bin", 0x5C8, 0x5D0 - 0x5C8

	.global Unk_ov116_02267D10
Unk_ov116_02267D10: ; 0x02267D10
	.incbin "incbin/overlay116_rodata.bin", 0x5D0, 0x5E0 - 0x5D0

	.global Unk_ov116_02267D20
Unk_ov116_02267D20: ; 0x02267D20
	.incbin "incbin/overlay116_rodata.bin", 0x5E0, 0x5F0 - 0x5E0

	.global Unk_ov116_02267D30
Unk_ov116_02267D30: ; 0x02267D30
	.incbin "incbin/overlay116_rodata.bin", 0x5F0, 0x600 - 0x5F0

	.global Unk_ov116_02267D40
Unk_ov116_02267D40: ; 0x02267D40
	.incbin "incbin/overlay116_rodata.bin", 0x600, 0x610 - 0x600

	.global Unk_ov116_02267D50
Unk_ov116_02267D50: ; 0x02267D50
	.incbin "incbin/overlay116_rodata.bin", 0x610, 0x620 - 0x610

	.global Unk_ov116_02267D60
Unk_ov116_02267D60: ; 0x02267D60
	.incbin "incbin/overlay116_rodata.bin", 0x620, 0x634 - 0x620

	.global Unk_ov116_02267D74
Unk_ov116_02267D74: ; 0x02267D74
	.incbin "incbin/overlay116_rodata.bin", 0x634, 0x64C - 0x634

	.global Unk_ov116_02267D8C
Unk_ov116_02267D8C: ; 0x02267D8C
	.incbin "incbin/overlay116_rodata.bin", 0x64C, 0x664 - 0x64C

	.global Unk_ov116_02267DA4
Unk_ov116_02267DA4: ; 0x02267DA4
	.incbin "incbin/overlay116_rodata.bin", 0x664, 0x168

