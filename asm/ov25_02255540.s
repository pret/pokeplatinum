	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov25_02255540
ov25_02255540: ; 0x02255540
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x1c
	mov r6, #0
	bl sub_02018144
	add r4, r0, #0
	beq _022555AA
	add r0, r6, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0xc]
	str r0, [r4, #4]
	str r7, [r4, #0]
	str r5, [r4, #0x18]
	add r0, r7, #0
	bl sub_020A813C
	strh r0, [r4, #0x10]
	ldrh r1, [r4, #0x10]
	add r0, r5, #0
	lsl r1, r1, #3
	bl sub_02018144
	str r0, [r4, #0x14]
	cmp r0, #0
	beq _022555AA
	ldrh r2, [r4, #0x10]
	mov r1, #0x94
	add r0, r5, #0
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _022555AA
	ldrh r1, [r4, #0x10]
	add r0, r5, #0
	lsl r1, r1, #2
	bl sub_02018144
	str r0, [r4, #4]
	cmp r0, #0
	beq _022555AA
	ldrh r2, [r4, #0x10]
	ldr r1, [r4, #0xc]
	bl ov25_022559D8
	add r0, r6, #0
	strh r0, [r4, #0x12]
	str r0, [r4, #8]
	mov r6, #1
_022555AA:
	cmp r6, #0
	bne _022555E2
	cmp r4, #0
	beq _022555DE
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _022555BE
	add r0, r5, #0
	bl sub_02018238
_022555BE:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _022555CA
	add r0, r5, #0
	bl sub_02018238
_022555CA:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _022555D6
	add r0, r5, #0
	bl sub_02018238
_022555D6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02018238
_022555DE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022555E2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov25_02255540

	thumb_func_start ov25_022555E8
ov25_022555E8: ; 0x022555E8
	push {r4, lr}
	add r4, r0, #0
	beq _02255612
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _022555F8
	bl sub_020181C4
_022555F8:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02255602
	bl sub_020181C4
_02255602:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0225560C
	bl sub_020181C4
_0225560C:
	add r0, r4, #0
	bl sub_020181C4
_02255612:
	pop {r4, pc}
	thumb_func_end ov25_022555E8

	thumb_func_start ov25_02255614
ov25_02255614: ; 0x02255614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0xc]
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	bne _02255622
	b _022557EE
_02255622:
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #8]
	ldr r5, [r0, #0x14]
	ldrh r0, [r0, #0x10]
	cmp r4, #0
	str r0, [sp, #0x10]
	bne _02255632
	b _022557D4
_02255632:
	add r0, r4, #0
	mov r1, #2
	add r0, #8
	lsl r1, r1, #0xc
	bl sub_020A8D60
	add r0, r4, #0
	add r0, #0x8a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225564A
	b _022557CC
_0225564A:
	add r6, r4, #0
	add r6, #0x44
	mov r0, #0xc
	ldrsh r0, [r6, r0]
	ldr r1, [r4, #0x68]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x18]
	mov r0, #0xe
	ldrsh r0, [r6, r0]
	ldr r1, [r4, #0x6c]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225568A
	add r0, sp, #0x18
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r1, [sp, #0x10]
	str r3, [sp, #8]
	lsl r1, r1, #0x10
	ldr r2, [r4, #0x38]
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_020A8DA0
	b _02255722
_0225568A:
	ldr r0, [r4, #0x70]
	bl sub_020BB44C
	ldrh r1, [r6, #0x12]
	mov r0, #4
	tst r0, r1
	beq _022556BC
	add r0, r4, #0
	add r0, #0x90
	ldrh r2, [r6, #0x10]
	ldrh r0, [r0]
	ldr r1, _022557F4 ; =0x020F983C
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r3, r0, #2
	add r2, r1, r3
	ldrsh r1, [r1, r3]
	mov r3, #2
	ldrsh r2, [r2, r3]
	ldr r0, [r4, #0x70]
	bl sub_020BB464
	b _022556DA
_022556BC:
	add r0, r4, #0
	add r0, #0x90
	ldrh r0, [r0]
	cmp r0, #0
	beq _022556DA
	asr r0, r0, #4
	lsl r3, r0, #2
	ldr r1, _022557F4 ; =0x020F983C
	ldr r0, [r4, #0x70]
	add r2, r1, r3
	ldrsh r1, [r1, r3]
	mov r3, #2
	ldrsh r2, [r2, r3]
	bl sub_020BB464
_022556DA:
	ldrh r1, [r6, #0x12]
	mov r0, #2
	tst r0, r1
	beq _022556FE
	ldr r0, [r6, #4]
	ldr r7, [r4, #0x70]
	bl sub_020BCFE0
	str r0, [sp, #0x14]
	ldr r0, [r6, #8]
	bl sub_020BCFE0
	add r3, r0, #0
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	add r1, r7, #0
	bl sub_020BB470
_022556FE:
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x70]
	ldr r0, [r0, #0]
	bl sub_020A7D34
	add r1, sp, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x38]
	lsl r1, r1, #0x10
	ldr r3, [r4, #0x70]
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_020A8DA0
_02255722:
	ldr r1, [sp, #0x10]
	sub r1, r1, r0
	str r1, [sp, #0x10]
	add r1, r0, #0
	sub r0, r0, #1
	cmp r1, #0
	beq _022557CC
	ldr r7, _022557F8 ; =0xDFFFFFFF
	asr r1, r7, #0x11
_02255734:
	ldr r3, [r5, #4]
	ldr r2, _022557FC ; =0xFFFFF3FF
	add r6, r4, #0
	and r2, r3
	add r3, r4, #0
	add r3, #0x86
	ldrh r3, [r3]
	add r6, #0x88
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x14
	orr r2, r3
	str r2, [r5, #4]
	ldr r3, _02255800 ; =0xFFFF0FFF
	ldrh r6, [r6]
	and r3, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1c
	add r2, r2, r6
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x10
	orr r2, r3
	add r6, r4, #0
	ldr r3, _02255804 ; =0xFFFFFC00
	str r2, [r5, #4]
	add r6, #0x8c
	and r3, r2
	lsl r2, r2, #0x16
	ldrh r6, [r6]
	lsr r2, r2, #0x16
	add r6, r2, r6
	ldr r2, _02255808 ; =0x000003FF
	and r2, r6
	orr r2, r3
	add r6, r4, #0
	str r2, [r5, #4]
	add r6, #0x8e
	ldr r2, [r5, #0]
	ldr r3, _0225580C ; =0xEFFFFFFF
	ldrb r6, [r6]
	and r3, r2
	lsl r2, r2, #3
	lsr r2, r2, #0x1f
	eor r2, r6
	lsl r2, r2, #0x1f
	lsr r2, r2, #3
	orr r2, r3
	add r6, r4, #0
	add r3, r2, #0
	str r2, [r5, #0]
	add r6, #0x8f
	lsl r2, r2, #2
	ldrb r6, [r6]
	lsr r2, r2, #0x1f
	and r3, r7
	eor r2, r6
	lsl r2, r2, #0x1f
	lsr r2, r2, #2
	orr r2, r3
	add r6, r4, #0
	add r3, r2, #0
	str r2, [r5, #0]
	add r6, #0x92
	lsl r2, r2, #0x13
	ldrb r6, [r6]
	lsr r2, r2, #0x1f
	and r3, r1
	eor r2, r6
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x13
	orr r2, r3
	str r2, [r5, #0]
	add r2, r0, #0
	add r5, #8
	sub r0, r0, #1
	cmp r2, #0
	bne _02255734
_022557CC:
	ldr r4, [r4, #0x60]
	cmp r4, #0
	beq _022557D4
	b _02255632
_022557D4:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #0x14]
	cmp r5, r1
	bls _022557EE
	sub r3, r5, r1
	asr r2, r3, #2
	lsr r2, r2, #0x1d
	add r2, r3, r2
	lsl r2, r2, #0xd
	ldr r0, [r0, #0]
	lsr r2, r2, #0x10
	bl sub_020A7B80
_022557EE:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022557F4: .word 0x020F983C
_022557F8: .word 0xDFFFFFFF
_022557FC: .word 0xFFFFF3FF
_02255800: .word 0xFFFF0FFF
_02255804: .word 0xFFFFFC00
_02255808: .word 0x000003FF
_0225580C: .word 0xEFFFFFFF
	thumb_func_end ov25_02255614

	thumb_func_start ov25_02255810
ov25_02255810: ; 0x02255810
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov25_02255A04
	add r4, r0, #0
	beq _022558AC
	ldrb r1, [r5, #0xb]
	add r0, #0x86
	strh r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5, #0xc]
	add r0, #0x84
	strh r1, [r0]
	add r0, r7, #0
	add r1, r4, #0
	bl ov25_02255A40
	ldr r0, [r6, #8]
	str r0, [r4, #0]
	ldr r0, [r6, #0xc]
	str r0, [r4, #4]
	ldrh r1, [r5, #8]
	bl sub_020A6EF0
	add r1, r0, #0
	add r0, r4, #0
	ldr r2, [r4, #0]
	add r0, #8
	bl sub_020A8C88
	ldr r1, [r5, #0]
	ldr r0, [r5, #4]
	str r1, [r4, #0x68]
	add r1, r4, #0
	str r0, [r4, #0x6c]
	mov r0, #0
	add r1, #0x88
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x8c
	strh r0, [r1]
	ldrb r2, [r5, #0xa]
	mov r1, #1
	tst r2, r1
	beq _02255870
	add r0, r1, #0
_02255870:
	add r1, r4, #0
	add r1, #0x8e
	strb r0, [r1]
	ldrb r1, [r5, #0xa]
	mov r0, #2
	tst r0, r1
	beq _02255882
	mov r1, #1
	b _02255884
_02255882:
	mov r1, #0
_02255884:
	add r0, r4, #0
	add r0, #0x8f
	strb r1, [r0]
	add r1, r4, #0
	mov r0, #0
	add r1, #0x92
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x90
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x74
	str r1, [r4, #0x70]
	add r1, r4, #0
	ldrb r2, [r5, #0xd]
	add r1, #0x8b
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x8a
	strb r0, [r1]
_022558AC:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_02255810

	thumb_func_start ov25_022558B0
ov25_022558B0: ; 0x022558B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov25_02255A98
	add r0, r5, #0
	add r1, r4, #0
	bl ov25_02255A1C
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_022558B0

	thumb_func_start ov25_022558C4
ov25_022558C4: ; 0x022558C4
	push {r4, lr}
	add r4, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl sub_020A6EF0
	add r1, r0, #0
	add r0, r4, #0
	ldr r2, [r4, #0]
	add r0, #8
	bl sub_020A8C88
	pop {r4, pc}
	thumb_func_end ov25_022558C4

	thumb_func_start ov25_022558E0
ov25_022558E0: ; 0x022558E0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _022558EA
	mov r0, #1
	bx lr
_022558EA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov25_022558E0

	thumb_func_start ov25_022558F0
ov25_022558F0: ; 0x022558F0
	ldr r3, [r0, #0x68]
	add r1, r3, r1
	str r1, [r0, #0x68]
	ldr r1, [r0, #0x6c]
	add r1, r1, r2
	str r1, [r0, #0x6c]
	bx lr
	; .align 2, 0
	thumb_func_end ov25_022558F0

	thumb_func_start ov25_02255900
ov25_02255900: ; 0x02255900
	str r1, [r0, #0x68]
	str r2, [r0, #0x6c]
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255900

	thumb_func_start ov25_02255908
ov25_02255908: ; 0x02255908
	ldr r3, [r0, #0x68]
	str r3, [r1, #0]
	ldr r0, [r0, #0x6c]
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255908

	thumb_func_start ov25_02255914
ov25_02255914: ; 0x02255914
	add r0, #0x8a
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255914

	thumb_func_start ov25_0225591C
ov25_0225591C: ; 0x0225591C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	bl ov25_02255A98
	add r0, r5, #0
	add r0, #0x84
	strh r4, [r0]
	add r0, r6, #0
	add r1, r5, #0
	bl ov25_02255A40
	pop {r4, r5, r6, pc}
	thumb_func_end ov25_0225591C

	thumb_func_start ov25_02255938
ov25_02255938: ; 0x02255938
	add r0, #0x88
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255938

	thumb_func_start ov25_02255940
ov25_02255940: ; 0x02255940
	add r0, #0x8c
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255940

	thumb_func_start ov25_02255948
ov25_02255948: ; 0x02255948
	add r0, #0x92
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255948

	thumb_func_start ov25_02255950
ov25_02255950: ; 0x02255950
	add r0, #0x90
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255950

	thumb_func_start ov25_02255958
ov25_02255958: ; 0x02255958
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r6, r1, #0
	add r1, r2, #0
	add r7, r3, #0
	str r4, [r5, #0x10]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02006FD8
	str r0, [r5, #0]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_02006FD8
	str r0, [r5, #4]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _022559AA
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _022559AA
	add r1, r5, #0
	add r1, #8
	bl sub_020A6F38
	cmp r0, #0
	bne _02255998
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02255998:
	ldr r0, [r5, #4]
	add r5, #0xc
	add r1, r5, #0
	bl sub_020A6D94
	cmp r0, #0
	bne _022559AA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022559AA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov25_02255958

	thumb_func_start ov25_022559B0
ov25_022559B0: ; 0x022559B0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _022559C4
	ldr r0, [r4, #0x10]
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_022559C4:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _022559D4
	ldr r0, [r4, #0x10]
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #4]
_022559D4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov25_022559B0

	thumb_func_start ov25_022559D8
ov25_022559D8: ; 0x022559D8
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	sub r6, r6, #1
	cmp r0, #0
	beq _022559FA
_022559E8:
	add r0, r4, #0
	stmia r5!, {r4}
	bl ov25_022559FC
	add r0, r6, #0
	add r4, #0x94
	sub r6, r6, #1
	cmp r0, #0
	bne _022559E8
_022559FA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov25_022559D8

	thumb_func_start ov25_022559FC
ov25_022559FC: ; 0x022559FC
	mov r1, #0
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	bx lr
	thumb_func_end ov25_022559FC

	thumb_func_start ov25_02255A04
ov25_02255A04: ; 0x02255A04
	ldrh r2, [r0, #0x12]
	ldrh r1, [r0, #0x10]
	cmp r2, r1
	bhs _02255A18
	add r1, r2, #1
	strh r1, [r0, #0x12]
	ldr r1, [r0, #4]
	lsl r0, r2, #2
	ldr r0, [r1, r0]
	bx lr
_02255A18:
	mov r0, #0
	bx lr
	thumb_func_end ov25_02255A04

	thumb_func_start ov25_02255A1C
ov25_02255A1C: ; 0x02255A1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x12]
	add r4, r1, #0
	cmp r0, #0
	beq _02255A3C
	add r0, r4, #0
	bl ov25_022559FC
	ldrh r0, [r5, #0x12]
	sub r0, r0, #1
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	str r4, [r1, r0]
_02255A3C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov25_02255A1C

	thumb_func_start ov25_02255A40
ov25_02255A40: ; 0x02255A40
	push {r4, r5}
	ldr r3, [r0, #8]
	cmp r3, #0
	bne _02255A54
	str r1, [r0, #8]
	mov r0, #0
	str r0, [r1, #0x60]
	str r0, [r1, #0x64]
	pop {r4, r5}
	bx lr
_02255A54:
	add r4, r1, #0
	add r4, #0x84
	ldr r5, [r4, #0]
	add r2, r3, #0
_02255A5C:
	add r4, r2, #0
	add r4, #0x84
	ldr r4, [r4, #0]
	cmp r5, r4
	bhs _02255A7E
	cmp r2, r3
	bne _02255A6C
	str r1, [r0, #8]
_02255A6C:
	ldr r0, [r2, #0x64]
	str r0, [r1, #0x64]
	cmp r0, #0
	beq _02255A76
	str r1, [r0, #0x60]
_02255A76:
	str r2, [r1, #0x60]
	str r1, [r2, #0x64]
	pop {r4, r5}
	bx lr
_02255A7E:
	ldr r4, [r2, #0x60]
	cmp r4, #0
	bne _02255A90
	str r1, [r2, #0x60]
	str r2, [r1, #0x64]
	mov r0, #0
	str r0, [r1, #0x60]
	pop {r4, r5}
	bx lr
_02255A90:
	add r2, r4, #0
	b _02255A5C
	thumb_func_end ov25_02255A40
_02255A94:
	.byte 0x30, 0xBC, 0x70, 0x47

	thumb_func_start ov25_02255A98
ov25_02255A98: ; 0x02255A98
	ldr r2, [r1, #0x64]
	cmp r2, #0
	beq _02255AB4
	ldr r0, [r1, #0x60]
	cmp r0, #0
	beq _02255AAE
	str r0, [r2, #0x60]
	ldr r2, [r1, #0x64]
	ldr r0, [r1, #0x60]
	str r2, [r0, #0x64]
	bx lr
_02255AAE:
	mov r0, #0
	str r0, [r2, #0x60]
	bx lr
_02255AB4:
	ldr r3, [r1, #0x60]
	cmp r3, #0
	beq _02255AC4
	mov r2, #0
	str r2, [r3, #0x64]
	ldr r1, [r1, #0x60]
	str r1, [r0, #8]
	bx lr
_02255AC4:
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255A98