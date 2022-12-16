	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov104_0222E930
ov104_0222E930: ; 0x0222E930
	push {r3, r4}
	mov r4, #0
	strb r4, [r0, #0x19]
	str r4, [r0, #0x1c]
	add r3, r0, #0
	strb r4, [r0, #0x18]
	add r3, #0x88
	str r4, [r3, #0]
	str r1, [r0, #0x70]
	str r2, [r0, #0x74]
	add r2, r0, #0
	add r3, r4, #0
_0222E948:
	add r1, r2, #0
	add r1, #0x78
	add r4, r4, #1
	add r2, r2, #2
	strh r3, [r1]
	cmp r4, #4
	blo _0222E948
	mov r1, #0
_0222E958:
	add r3, r3, #1
	str r1, [r0, #0x20]
	add r0, r0, #4
	cmp r3, #0x14
	blo _0222E958
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0222E930

	thumb_func_start ov104_0222E968
ov104_0222E968: ; 0x0222E968
	str r1, [r0, #0x1c]
	mov r1, #1
	strb r1, [r0, #0x19]
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0222E968

	thumb_func_start ov104_0222E974
ov104_0222E974: ; 0x0222E974
	mov r2, #2
	strb r2, [r0, #0x19]
	add r0, #0x88
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0222E974

	thumb_func_start ov104_0222E980
ov104_0222E980: ; 0x0222E980
	mov r1, #0
	strb r1, [r0, #0x19]
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov104_0222E980

	thumb_func_start ov104_0222E988
ov104_0222E988: ; 0x0222E988
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0x19]
	cmp r1, #0
	beq _0222E99C
	cmp r1, #1
	beq _0222E9C2
	cmp r1, #2
	beq _0222E9A0
	b _0222E9F4
_0222E99C:
	mov r0, #0
	pop {r4, pc}
_0222E9A0:
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0222E9BE
	blx r1
	cmp r0, #1
	bne _0222E9BA
	mov r0, #1
	strb r0, [r4, #0x19]
	mov r0, #0
	add r4, #0x88
	str r0, [r4, #0]
_0222E9BA:
	mov r0, #1
	pop {r4, pc}
_0222E9BE:
	mov r0, #1
	strb r0, [r4, #0x19]
_0222E9C2:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0222E9CE
	mov r0, #0
	strb r0, [r4, #0x19]
	pop {r4, pc}
_0222E9CE:
	add r0, r4, #0
	bl ov104_0222EA48
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	cmp r1, r0
	blo _0222E9E6
	bl sub_02022974
	mov r0, #0
	strb r0, [r4, #0x19]
	pop {r4, pc}
_0222E9E6:
	ldr r2, [r4, #0x70]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, r4, #0
	blx r1
	cmp r0, #1
	bne _0222E9C2
_0222E9F4:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov104_0222E988

	thumb_func_start ov104_0222E9F8
ov104_0222E9F8: ; 0x0222E9F8
	ldrb r3, [r0, #0x18]
	add r2, r3, #1
	cmp r2, #0x14
	blt _0222EA04
	mov r0, #1
	bx lr
_0222EA04:
	lsl r2, r3, #2
	add r2, r0, r2
	str r1, [r2, #0x20]
	ldrb r1, [r0, #0x18]
	add r1, r1, #1
	strb r1, [r0, #0x18]
	mov r0, #0
	bx lr
	thumb_func_end ov104_0222E9F8

	thumb_func_start ov104_0222EA14
ov104_0222EA14: ; 0x0222EA14
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	bne _0222EA1E
	mov r0, #0
	bx lr
_0222EA1E:
	sub r1, r1, #1
	strb r1, [r0, #0x18]
	ldrb r1, [r0, #0x18]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov104_0222EA14

	thumb_func_start ov104_0222EA2C
ov104_0222EA2C: ; 0x0222EA2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x1c]
	bl ov104_0222E9F8
	str r4, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0222EA2C

	thumb_func_start ov104_0222EA3C
ov104_0222EA3C: ; 0x0222EA3C
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222EA14
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov104_0222EA3C

	thumb_func_start ov104_0222EA48
ov104_0222EA48: ; 0x0222EA48
	ldr r1, [r0, #0x1c]
	add r3, r1, #1
	str r3, [r0, #0x1c]
	ldrb r2, [r1]
	add r1, r3, #1
	str r1, [r0, #0x1c]
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end ov104_0222EA48

	thumb_func_start ov104_0222EA60
ov104_0222EA60: ; 0x0222EA60
	push {r4, r5}
	ldr r1, [r0, #0x1c]
	add r2, r1, #1
	str r2, [r0, #0x1c]
	ldrb r3, [r1]
	add r1, r2, #1
	add r5, r1, #1
	str r1, [r0, #0x1c]
	ldrb r2, [r2]
	add r4, r5, #1
	str r5, [r0, #0x1c]
	ldrb r1, [r1]
	str r4, [r0, #0x1c]
	ldrb r0, [r5]
	mov r4, #0
	add r0, r4, r0
	lsl r0, r0, #8
	add r0, r0, r1
	lsl r0, r0, #8
	add r0, r0, r2
	lsl r0, r0, #8
	add r0, r0, r3
	pop {r4, r5}
	bx lr
	thumb_func_end ov104_0222EA60