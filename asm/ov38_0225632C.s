	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov38_0225632C
ov38_0225632C: ; 0x0225632C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x30
	bl sub_02018144
	add r4, r0, #0
	beq _02256358
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	cmp r0, #0
	beq _02256358
	str r4, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256358:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov38_0225632C

	thumb_func_start ov38_0225635C
ov38_0225635C: ; 0x0225635C
	push {r3, lr}
	cmp r0, #0
	beq _02256366
	bl sub_020181C4
_02256366:
	pop {r3, pc}
	thumb_func_end ov38_0225635C

	thumb_func_start ov38_02256368
ov38_02256368: ; 0x02256368
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256388 ; =0x0225649C
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256388: .word 0x0225649C
	thumb_func_end ov38_02256368

	thumb_func_start ov38_0225638C
ov38_0225638C: ; 0x0225638C
	ldr r3, _02256394 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256394: .word ov25_02255130
	thumb_func_end ov38_0225638C

	thumb_func_start ov38_02256398
ov38_02256398: ; 0x02256398
	ldr r3, _022563A0 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022563A0: .word ov25_02255154
	thumb_func_end ov38_02256398

	thumb_func_start ov38_022563A4
ov38_022563A4: ; 0x022563A4
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov38_022563A4

	thumb_func_start ov38_022563B8
ov38_022563B8: ; 0x022563B8
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _0225644C ; =0x02256480
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #8
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r3, #6
	bl sub_02006E3C
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5, #4]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019CB8
	mov r0, #0x20
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0xc
	mov r1, #9
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	ldr r0, [r5, #4]
	mov r1, #0xc
	mov r2, #6
	bl ov25_02255440
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256450 ; =0x04001000
	ldr r0, _02256454 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #4
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov38_022563A4
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0225644C: .word 0x02256480
_02256450: .word 0x04001000
_02256454: .word 0xFFFFE0FF
	thumb_func_end ov38_022563B8

	thumb_func_start ov38_02256458
ov38_02256458: ; 0x02256458
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov38_022563A4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov38_02256458

	.rodata


	.global Unk_ov38_02256480
Unk_ov38_02256480: ; 0x02256480
	.incbin "incbin/overlay38_rodata.bin", 0xC, 0x28 - 0xC

	.global Unk_ov38_0225649C
Unk_ov38_0225649C: ; 0x0225649C
	.incbin "incbin/overlay38_rodata.bin", 0x28, 0x24

