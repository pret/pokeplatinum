	.include "macros/function.inc"
	.include "include/ov25_02255090.inc"

	

	.text


	thumb_func_start ov25_02255090
ov25_02255090: ; 0x02255090
	ldr r2, _022550AC ; =0x12345678
	str r1, [r0, #0]
	mov r3, #0
	str r2, [r0, #4]
	cmp r1, #0
	bls _022550A8
	sub r2, r3, #1
_0225509E:
	add r3, r3, #1
	str r2, [r0, #8]
	add r0, r0, #4
	cmp r3, r1
	blo _0225509E
_022550A8:
	bx lr
	nop
_022550AC: .word 0x12345678
	thumb_func_end ov25_02255090

	thumb_func_start ov25_022550B0
ov25_022550B0: ; 0x022550B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	ldr r0, _022550EC ; =0x12345678
	cmp r1, r0
	beq _022550C2
	bl sub_02022974
_022550C2:
	ldr r6, [r5, #0]
	mov r2, #0
	cmp r6, #0
	bls _022550E6
	add r3, r5, #0
	sub r0, r2, #1
_022550CE:
	ldr r1, [r3, #8]
	cmp r1, r0
	bne _022550DE
	lsl r0, r2, #2
	add r0, r5, r0
	str r4, [r0, #8]
	mov r0, #1
	pop {r4, r5, r6, pc}
_022550DE:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, r6
	blo _022550CE
_022550E6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_022550EC: .word 0x12345678
	thumb_func_end ov25_022550B0

	thumb_func_start ov25_022550F0
ov25_022550F0: ; 0x022550F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	ldr r0, _0225512C ; =0x12345678
	cmp r1, r0
	beq _02255102
	bl sub_02022974
_02255102:
	ldr r3, [r5, #0]
	mov r2, #0
	cmp r3, #0
	bls _02255126
	add r1, r5, #0
_0225510C:
	ldr r0, [r1, #8]
	cmp r4, r0
	bne _0225511E
	mov r1, #0
	lsl r0, r2, #2
	mvn r1, r1
	add r0, r5, r0
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_0225511E:
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, r3
	blo _0225510C
_02255126:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225512C: .word 0x12345678
	thumb_func_end ov25_022550F0

	thumb_func_start ov25_02255130
ov25_02255130: ; 0x02255130
	push {r3, r4}
	ldr r4, [r0, #0]
	mov r3, #0
	cmp r4, #0
	bls _0225514E
_0225513A:
	ldr r2, [r0, #8]
	cmp r1, r2
	bne _02255146
	mov r0, #0
	pop {r3, r4}
	bx lr
_02255146:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, r4
	blo _0225513A
_0225514E:
	mov r0, #1
	pop {r3, r4}
	bx lr
	thumb_func_end ov25_02255130

	thumb_func_start ov25_02255154
ov25_02255154: ; 0x02255154
	push {r3, r4}
	ldr r4, [r0, #0]
	mov r3, #0
	cmp r4, #0
	bls _02255174
	sub r1, r3, #1
_02255160:
	ldr r2, [r0, #8]
	cmp r2, r1
	beq _0225516C
	mov r0, #0
	pop {r3, r4}
	bx lr
_0225516C:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, r4
	blo _02255160
_02255174:
	mov r0, #1
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255154

	thumb_func_start ov25_0225517C
ov25_0225517C: ; 0x0225517C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r2, [sp]
	mov r0, #0
	add r5, r1, #0
	ldr r2, [r7, #0]
	sub r1, r0, #1
	str r3, [sp, #4]
	cmp r2, r1
	beq _0225521C
	add r3, r7, #0
	sub r1, r0, #1
_02255196:
	ldr r2, [r3, #0]
	cmp r5, r2
	bne _02255212
	add r6, r0, #0
	add r0, r7, #0
	str r0, [sp, #8]
	add r0, #8
	mov r1, #0xc
	str r0, [sp, #8]
	mul r6, r1
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x28]
	ldr r1, [r1, r6]
	add r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	beq _0225520C
	ldr r0, [sp, #8]
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _022551C8
	add r0, r4, #0
	add r0, #0x18
	b _022551CA
_022551C8:
	mov r0, #0
_022551CA:
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	bl ov25_022550B0
	cmp r0, #0
	beq _02255202
	ldr r0, [sp]
	ldr r2, [sp, #0x24]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #4]
	str r5, [r4, #0]
	ldr r0, [sp, #4]
	add r5, r7, #4
	str r0, [r4, #0x10]
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x14]
	cmp r0, #0
	beq _02255220
	ldr r2, [r5, r6]
	add r1, r4, #0
	blx r2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02255202:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0225520C:
	bl sub_02022974
	b _0225521C
_02255212:
	add r3, #0xc
	ldr r2, [r3, #0]
	add r0, r0, #1
	cmp r2, r1
	bne _02255196
_0225521C:
	bl sub_02022974
_02255220:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov25_0225517C

	thumb_func_start ov25_02255224
ov25_02255224: ; 0x02255224
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	bl ov25_022550F0
	ldr r0, [r4, #0x14]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov25_02255224

	thumb_func_start ov25_0225523C
ov25_0225523C: ; 0x0225523C
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov25_0225523C

	thumb_func_start ov25_02255240
ov25_02255240: ; 0x02255240
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov25_02255240

	thumb_func_start ov25_02255244
ov25_02255244: ; 0x02255244
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov25_02255244

	thumb_func_start ov25_02255248
ov25_02255248: ; 0x02255248
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov25_02255248

	thumb_func_start ov25_0225524C
ov25_0225524C: ; 0x0225524C
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov25_0225524C

	thumb_func_start ov25_02255254
ov25_02255254: ; 0x02255254
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov25_02255254

	thumb_func_start ov25_02255258
ov25_02255258: ; 0x02255258
	push {r3, r4, r5, r6}
	mul r2, r3
	ldr r4, [sp, #0x18]
	add r1, r1, r2
	lsl r6, r1, #1
	lsl r4, r4, #0xc
	ldr r1, [sp, #0x10]
	add r5, r4, #0
	orr r5, r1
	add r2, r0, r6
	strh r5, [r0, r6]
	add r0, r1, #1
	orr r0, r4
	strh r0, [r2, #2]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #1
	add r1, r1, r0
	add r0, r4, #0
	orr r0, r1
	strh r0, [r2, r3]
	add r0, r1, #1
	add r1, r4, #0
	orr r1, r0
	add r0, r2, r3
	strh r1, [r0, #2]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255258

	thumb_func_start ov25_02255290
ov25_02255290: ; 0x02255290
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x20
	bl sub_02018144
	add r7, r0, #0
	beq _022552FC
	bl ov25_02254728
	mov r4, #0
	cmp r6, #0
	bls _022552F6
_022552AC:
	ldrh r3, [r5]
	mov r0, #0x1f
	lsl r0, r0, #0xa
	and r0, r3
	asr r0, r0, #0xa
	add r2, r0, #0
	mov r1, #0x72
	mov r0, #0x1f
	mul r2, r1
	and r0, r3
	add r1, #0xb9
	mul r1, r0
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r3
	asr r3, r0, #5
	ldr r0, _02255300 ; =0x0000024B
	mul r0, r3
	add r0, r1, r0
	mov r1, #0xfa
	add r0, r2, r0
	lsl r1, r1, #2
	bl sub_020E2178
	lsr r1, r0, #3
	cmp r1, #3
	bls _022552E4
	mov r1, #3
_022552E4:
	ldr r0, _02255304 ; =0x02256078
	add r4, r4, #1
	ldrb r0, [r0, r1]
	lsl r0, r0, #1
	ldrh r0, [r7, r0]
	strh r0, [r5]
	add r5, r5, #2
	cmp r4, r6
	blo _022552AC
_022552F6:
	add r0, r7, #0
	bl sub_020181C4
_022552FC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02255300: .word 0x0000024B
_02255304: .word 0x02256078
	thumb_func_end ov25_02255290

	thumb_func_start ov25_02255308
ov25_02255308: ; 0x02255308
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #8
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	beq _0225535E
	mov r0, #8
	mov r1, #0x20
	bl sub_02018144
	add r5, r0, #0
	add r0, r4, #0
	bl ov25_02254728
	cmp r5, #0
	beq _02255358
	mov r0, #0
	add r1, r5, #0
	lsl r3, r6, #1
_02255334:
	ldrh r2, [r4, r3]
	add r0, r0, #1
	strh r2, [r1]
	add r1, r1, #2
	cmp r0, #0x10
	blt _02255334
	add r0, r5, #0
	mov r1, #0x20
	bl sub_020C2C54
	add r0, r5, #0
	lsl r1, r7, #5
	mov r2, #0x20
	bl sub_020C01B8
	add r0, r5, #0
	bl sub_020181C4
_02255358:
	add r0, r4, #0
	bl sub_020181C4
_0225535E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_02255308

	thumb_func_start ov25_02255360
ov25_02255360: ; 0x02255360
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02079FD0
	add r1, r0, #0
	mov r0, #0x13
	add r2, sp, #0
	mov r3, #8
	bl sub_02006F88
	add r4, r0, #0
	beq _0225539E
	ldr r0, [sp]
	mov r1, #0x40
	ldr r0, [r0, #0xc]
	bl ov25_02255290
	ldr r0, [sp]
	mov r1, #0x80
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp]
	lsl r1, r5, #5
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl sub_020C01B8
	add r0, r4, #0
	bl sub_020181C4
_0225539E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02255360

	thumb_func_start ov25_022553A0
ov25_022553A0: ; 0x022553A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #4]
	lsl r0, r3, #1
	str r0, [sp, #0xc]
	add r6, r1, #0
	str r2, [sp, #8]
	ldr r2, _02255438 ; =0x02256074
	ldr r1, [sp, #0xc]
	mov r0, #8
	ldrh r1, [r2, r1]
	bl sub_02018144
	add r7, r0, #0
	beq _02255434
	mov r0, #0x13
	mov r1, #8
	bl sub_02006C24
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _0225542E
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	cmp r0, #0
	bls _02255428
	ldr r1, _0225543C ; =0x02256070
	ldr r0, [sp, #0xc]
	ldr r4, [sp, #0x18]
	ldrh r5, [r1, r0]
	ldr r1, _02255438 ; =0x02256074
	ldrh r0, [r1, r0]
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	lsl r0, r0, #5
	str r0, [sp, #0x10]
_022553EA:
	str r7, [sp]
	ldr r0, [sp, #0x1c]
	ldr r1, [r6, #0]
	ldr r3, [sp, #0x14]
	mov r2, #0
	bl sub_02006DC8
	add r0, r7, #0
	add r1, sp, #0x20
	bl sub_020A7118
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	ldr r0, [r0, #0x14]
	bl sub_020C2C54
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x14]
	add r1, r1, r4
	add r2, r5, #0
	bl sub_020C0314
	ldr r0, [sp, #0x18]
	add r6, r6, #4
	add r1, r0, #1
	ldr r0, [sp, #8]
	add r4, r4, r5
	str r1, [sp, #0x18]
	cmp r1, r0
	blo _022553EA
_02255428:
	ldr r0, [sp, #0x1c]
	bl sub_02006CA8
_0225542E:
	add r0, r7, #0
	bl sub_020181C4
_02255434:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02255438: .word 0x02256074
_0225543C: .word 0x02256070
	thumb_func_end ov25_022553A0

	thumb_func_start ov25_02255440
ov25_02255440: ; 0x02255440
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #2
	add r2, sp, #0xc
	strh r1, [r2]
	mov r3, #3
	strh r3, [r2, #2]
	mov r3, #0xa
	strh r3, [r2, #4]
	mov r3, #0xb
	strh r3, [r2, #6]
	str r3, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	add r2, sp, #0xc
	mov r3, #9
	add r6, r0, #0
	bl sub_020198C0
	mov r1, #4
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #5
	strh r1, [r0, #2]
	mov r1, #0xc
	strh r1, [r0, #4]
	mov r1, #0xd
	strh r1, [r0, #6]
	mov r3, #0xb
	lsl r1, r4, #0x18
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r2, sp, #0xc
	bl sub_020198C0
	mov r1, #6
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #7
	strh r1, [r0, #2]
	mov r1, #0xe
	strh r1, [r0, #4]
	mov r1, #0xf
	strh r1, [r0, #6]
	mov r0, #0xb
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	lsl r1, r4, #0x18
	str r0, [sp, #8]
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r2, sp, #0xc
	mov r3, #0xd
	bl sub_020198C0
	add r0, r5, #0
	mov r1, #0xa
	bl sub_020E2178
	mov r1, #0xa
	mul r1, r0
	add r0, r0, #4
	sub r5, r5, r1
	lsr r1, r0, #2
	lsl r0, r0, #0x1e
	lsl r1, r1, #4
	lsr r0, r0, #0x1d
	add r2, r1, r0
	add r0, sp, #0xc
	strh r2, [r0]
	add r1, r2, #1
	strh r1, [r0, #2]
	add r1, r2, #0
	add r1, #8
	strh r1, [r0, #4]
	add r2, #9
	strh r2, [r0, #6]
	mov r0, #0xb
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	lsl r1, r4, #0x18
	str r0, [sp, #8]
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r2, sp, #0xc
	mov r3, #0xf
	bl sub_020198C0
	add r0, r5, #4
	lsr r1, r0, #2
	lsl r0, r0, #0x1e
	lsl r1, r1, #4
	lsr r0, r0, #0x1d
	add r2, r1, r0
	add r0, sp, #0xc
	strh r2, [r0]
	add r1, r2, #1
	strh r1, [r0, #2]
	add r1, r2, #0
	add r1, #8
	strh r1, [r0, #4]
	add r2, #9
	strh r2, [r0, #6]
	mov r0, #0xb
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	lsl r1, r4, #0x18
	str r0, [sp, #8]
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r2, sp, #0xc
	mov r3, #0x11
	bl sub_020198C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov25_02255440

	.rodata


	.global Unk_ov25_02256070
Unk_ov25_02256070: ; 0x02256070
	.incbin "incbin/overlay25_rodata.bin", 0x210, 0x214 - 0x210

	.global Unk_ov25_02256074
Unk_ov25_02256074: ; 0x02256074
	.incbin "incbin/overlay25_rodata.bin", 0x214, 0x218 - 0x214

	.global Unk_ov25_02256078
Unk_ov25_02256078: ; 0x02256078
	.incbin "incbin/overlay25_rodata.bin", 0x218, 0x4

