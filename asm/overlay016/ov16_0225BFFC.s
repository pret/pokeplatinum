	.include "macros/function.inc"
	.include "overlay016/ov16_0225BFFC.inc"

	

	.text


	thumb_func_start ov16_0225BFFC
ov16_0225BFFC: ; 0x0225BFFC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x6b
	mov r0, #5
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	mov r2, #0x6b
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	bl MIi_CpuClearFast
	mov r0, #0x65
	ldrb r1, [r5]
	lsl r0, r0, #2
	strb r1, [r4, r0]
	ldrb r1, [r5, #1]
	add r0, r0, #1
	strb r1, [r4, r0]
	mov r0, #0x93
	mov r1, #5
	bl sub_02006C24
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0225BFFC

	thumb_func_start ov16_0225C038
ov16_0225C038: ; 0x0225C038
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov16_0223DF0C
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	bne _0225C0D0
	sub r1, #0x8b
	ldrb r1, [r4, r1]
	mov r0, #1
	tst r0, r1
	beq _0225C064
	add r0, r5, #0
	bl ov16_0223DF0C
	mov r1, #1
	tst r0, r1
	beq _0225C0D0
_0225C064:
	ldr r0, _0225C0D4 ; =0x00000195
	ldr r1, _0225C0D8 ; =0x0226F174
	ldrb r2, [r4, r0]
	sub r0, r0, #1
	ldrb r1, [r1, r2]
	str r1, [sp]
	mov r1, #5
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	ldrb r0, [r4, r0]
	str r0, [sp, #0xc]
	add r0, r5, #0
	str r6, [sp, #0x10]
	bl ov16_0223E010
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov16_0223E064
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0
	bl ov12_02237728
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x64
	bl ov12_02237E34
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #2
	bl ov12_02237E40
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov12_02237E0C
	add r4, #0x88
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_02237E30
_0225C0D0:
	add sp, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225C0D4: .word 0x00000195
_0225C0D8: .word 0x0226F174
	thumb_func_end ov16_0225C038

	thumb_func_start ov16_0225C0DC
ov16_0225C0DC: ; 0x0225C0DC
	push {r3, lr}
	add r2, r1, #0
	add r2, #0x94
	ldrb r2, [r2]
	cmp r2, #0
	beq _0225C0FE
	mov r2, #0x6a
	mov r3, #0
	lsl r2, r2, #2
	strb r3, [r1, r2]
	add r2, r1, #0
	add r2, #0x94
	ldrb r2, [r2]
	lsl r3, r2, #2
	ldr r2, _0225C100 ; =0x0226F068
	ldr r2, [r2, r3]
	blx r2
_0225C0FE:
	pop {r3, pc}
	; .align 2, 0
_0225C100: .word 0x0226F068
	thumb_func_end ov16_0225C0DC

	thumb_func_start ov16_0225C104
ov16_0225C104: ; 0x0225C104
	push {r4, lr}
	add r4, r1, #0
	cmp r2, #2
	beq _0225C114
	add r0, r4, #0
	add r0, #0x28
	bl ov16_02267360
_0225C114:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0225C11E
	bl sub_0200D0F4
_0225C11E:
	add r0, r4, #0
	bl ov16_022647D8
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006CA8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0225C104

	thumb_func_start ov16_0225C138
ov16_0225C138: ; 0x0225C138
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0225C138

	thumb_func_start ov16_0225C13C
ov16_0225C13C: ; 0x0225C13C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	add r5, r0, #0
	bl ov16_0223F4F4
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0225CBB8
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #1
	bl ov16_02266ABC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0225C13C

	thumb_func_start ov16_0225C168
ov16_0225C168: ; 0x0225C168
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225CBDC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C168

	thumb_func_start ov16_0225C17C
ov16_0225C17C: ; 0x0225C17C
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225CE1C
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C17C

	thumb_func_start ov16_0225C190
ov16_0225C190: ; 0x0225C190
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225CF70
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C190

	thumb_func_start ov16_0225C1A4
ov16_0225C1A4: ; 0x0225C1A4
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D118
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C1A4

	thumb_func_start ov16_0225C1B8
ov16_0225C1B8: ; 0x0225C1B8
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D1C4
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C1B8

	thumb_func_start ov16_0225C1CC
ov16_0225C1CC: ; 0x0225C1CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_02007DC8
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #7
	bl ov16_02266ABC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0225C1CC

	thumb_func_start ov16_0225C1F0
ov16_0225C1F0: ; 0x0225C1F0
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D228
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C1F0

	thumb_func_start ov16_0225C204
ov16_0225C204: ; 0x0225C204
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D360
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C204

	thumb_func_start ov16_0225C218
ov16_0225C218: ; 0x0225C218
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0225D3CC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C218

	thumb_func_start ov16_0225C228
ov16_0225C228: ; 0x0225C228
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D414
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C228

	thumb_func_start ov16_0225C23C
ov16_0225C23C: ; 0x0225C23C
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D4A8
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C23C

	thumb_func_start ov16_0225C250
ov16_0225C250: ; 0x0225C250
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0225D570
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C250

	thumb_func_start ov16_0225C260
ov16_0225C260: ; 0x0225C260
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r4, #0
	add r6, #0x94
	add r1, r6, #0
	add r1, #0x29
	ldrb r1, [r1]
	add r5, r0, #0
	bl ov16_0223F290
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0225D5B8
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0225C260

	thumb_func_start ov16_0225C288
ov16_0225C288: ; 0x0225C288
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D698
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C288

	thumb_func_start ov16_0225C29C
ov16_0225C29C: ; 0x0225C29C
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D708
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C29C

	thumb_func_start ov16_0225C2B0
ov16_0225C2B0: ; 0x0225C2B0
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D794
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C2B0

	thumb_func_start ov16_0225C2C4
ov16_0225C2C4: ; 0x0225C2C4
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D840
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C2C4

	thumb_func_start ov16_0225C2D8
ov16_0225C2D8: ; 0x0225C2D8
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D8AC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C2D8

	thumb_func_start ov16_0225C2EC
ov16_0225C2EC: ; 0x0225C2EC
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D8F0
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C2EC

	thumb_func_start ov16_0225C300
ov16_0225C300: ; 0x0225C300
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D958
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C300

	thumb_func_start ov16_0225C314
ov16_0225C314: ; 0x0225C314
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225D9A8
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C314

	thumb_func_start ov16_0225C328
ov16_0225C328: ; 0x0225C328
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	mov r1, #6
	bl sub_020080C0
	cmp r0, #1
	bne _0225C34A
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x17
	bl ov16_02266ABC
	b _0225C352
_0225C34A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0225DA44
_0225C352:
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0225C328

	thumb_func_start ov16_0225C35C
ov16_0225C35C: ; 0x0225C35C
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225DA74
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C35C

	thumb_func_start ov16_0225C370
ov16_0225C370: ; 0x0225C370
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225DB00
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C370

	thumb_func_start ov16_0225C384
ov16_0225C384: ; 0x0225C384
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225DB74
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C384

	thumb_func_start ov16_0225C398
ov16_0225C398: ; 0x0225C398
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225DC4C
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C398

	thumb_func_start ov16_0225C3AC
ov16_0225C3AC: ; 0x0225C3AC
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0225DC7C
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C3AC

	thumb_func_start ov16_0225C3BC
ov16_0225C3BC: ; 0x0225C3BC
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225DCB0
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C3BC

	thumb_func_start ov16_0225C3D0
ov16_0225C3D0: ; 0x0225C3D0
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225DD44
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C3D0

	thumb_func_start ov16_0225C3E4
ov16_0225C3E4: ; 0x0225C3E4
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225DD7C
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C3E4

	thumb_func_start ov16_0225C3F8
ov16_0225C3F8: ; 0x0225C3F8
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225DDD8
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C3F8

	thumb_func_start ov16_0225C40C
ov16_0225C40C: ; 0x0225C40C
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225DE30
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C40C

	thumb_func_start ov16_0225C420
ov16_0225C420: ; 0x0225C420
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0225DE88
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C420

	thumb_func_start ov16_0225C430
ov16_0225C430: ; 0x0225C430
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225DEDC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C430

	thumb_func_start ov16_0225C444
ov16_0225C444: ; 0x0225C444
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0225DF34
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C444

	thumb_func_start ov16_0225C454
ov16_0225C454: ; 0x0225C454
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225DF6C
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C454

	thumb_func_start ov16_0225C468
ov16_0225C468: ; 0x0225C468
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225E008
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C468

	thumb_func_start ov16_0225C47C
ov16_0225C47C: ; 0x0225C47C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	mov r2, #0x65
	add r6, #0x94
	lsl r2, r2, #2
	str r1, [sp, #4]
	ldrb r1, [r1, r2]
	ldrb r2, [r6, #1]
	str r0, [sp]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	bl ov16_0223DFAC
	add r7, r0, #0
	mov r0, #2
	ldr r1, [r6, #0x1c]
	lsl r0, r0, #0x14
	tst r0, r1
	bne _0225C4E4
	add r0, r6, #0
	add r5, r6, #0
	str r0, [sp, #8]
	add r0, #0x16
	mov r4, #0
	add r5, #0xe
	str r0, [sp, #8]
_0225C4B2:
	add r0, r4, #0
	bl sub_020787CC
	ldrb r1, [r6, #1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	tst r0, r1
	bne _0225C4DC
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x36
	add r2, r5, #0
	bl sub_02074B30
	ldr r2, [sp, #8]
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x3a
	add r2, r2, r4
	bl sub_02074B30
_0225C4DC:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0225C4B2
_0225C4E4:
	ldrb r0, [r6, #1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bl sub_020787CC
	ldr r1, [r6, #8]
	tst r0, r1
	bne _0225C500
	add r2, r6, #0
	add r0, r7, #0
	mov r1, #6
	add r2, #0xc
	bl sub_02074B30
_0225C500:
	add r0, r7, #0
	mov r1, #0xa3
	add r2, r6, #2
	bl sub_02074B30
	add r0, r7, #0
	mov r1, #0xa0
	add r2, r6, #4
	bl sub_02074B30
	ldrh r0, [r6, #0x2a]
	cmp r0, #0
	beq _0225C526
	add r2, r6, #0
	add r0, r7, #0
	mov r1, #0x70
	add r2, #0x20
	bl sub_02074B30
_0225C526:
	ldrh r0, [r6, #0x28]
	cmp r0, #0
	beq _0225C53E
	add r2, r6, #0
	add r0, r7, #0
	mov r1, #0xa
	add r2, #0x24
	bl sub_02074B30
	add r0, r7, #0
	bl sub_0207418C
_0225C53E:
	mov r2, #0x65
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	ldrb r1, [r1, r2]
	ldrb r2, [r6]
	ldr r0, [sp]
	bl ov16_02266ABC
	ldr r0, [sp, #4]
	bl ov16_0225CBB0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_0225C47C

	thumb_func_start ov16_0225C558
ov16_0225C558: ; 0x0225C558
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov16_0223DF0C
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_0223E02C
	ldr r2, _0225C5A8 ; =0x00000196
	ldrb r1, [r4, r2]
	cmp r1, #0
	bne _0225C58C
	mov r1, #8
	and r1, r6
	bne _0225C584
	cmp r1, #0
	bne _0225C58C
	sub r1, r2, #1
	ldrb r1, [r4, r1]
	cmp r1, #4
	beq _0225C58C
_0225C584:
	ldr r1, _0225C5AC ; =0xFFFFF300
	mov r2, #0
	bl ov16_0226947C
_0225C58C:
	mov r1, #0x65
	add r2, r4, #0
	lsl r1, r1, #2
	add r2, #0x94
	ldrb r1, [r4, r1]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov16_02266ABC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, r5, r6, pc}
	nop
_0225C5A8: .word 0x00000196
_0225C5AC: .word 0xFFFFF300
	thumb_func_end ov16_0225C558

	thumb_func_start ov16_0225C5B0
ov16_0225C5B0: ; 0x0225C5B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x28
	bl ov16_022675AC
	add r0, r4, #0
	bl ov16_022647D8
	mov r1, #0x65
	add r2, r4, #0
	lsl r1, r1, #2
	add r2, #0x94
	ldrb r1, [r4, r1]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov16_02266ABC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0225C5B0

	thumb_func_start ov16_0225C5E0
ov16_0225C5E0: ; 0x0225C5E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x65
	lsl r1, r1, #2
	add r4, r7, #0
	ldrb r1, [r7, r1]
	str r0, [sp]
	add r4, #0x94
	bl ov16_0223DF60
	mov r5, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _0225C642
_0225C602:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r7, r1]
	ldr r0, [sp]
	add r2, r5, #0
	bl ov16_0223DFAC
	ldrb r1, [r4, #1]
	add r6, r0, #0
	cmp r1, #0x68
	bne _0225C61C
	mov r0, #0
	b _0225C624
_0225C61C:
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
_0225C624:
	ldrh r1, [r4, #2]
	cmp r1, #0xd7
	bne _0225C630
	bne _0225C63A
	cmp r0, #0x2b
	beq _0225C63A
_0225C630:
	add r0, r6, #0
	mov r1, #0xa0
	add r2, sp, #8
	bl sub_02074B30
_0225C63A:
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _0225C602
_0225C642:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r7, r1]
	ldrb r2, [r4]
	ldr r0, [sp]
	bl ov16_02266ABC
	add r0, r7, #0
	bl ov16_0225CBB0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0225C5E0

	thumb_func_start ov16_0225C65C
ov16_0225C65C: ; 0x0225C65C
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225E0BC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C65C

	thumb_func_start ov16_0225C670
ov16_0225C670: ; 0x0225C670
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225E0F4
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C670

	thumb_func_start ov16_0225C684
ov16_0225C684: ; 0x0225C684
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	add r5, r1, #0
	ldr r0, _0225C778 ; =0x00000195
	add r4, r5, #0
	ldrb r1, [r5, r0]
	mov r0, #1
	add r4, #0x94
	tst r0, r1
	beq _0225C69E
	mov r6, #2
	b _0225C6A0
_0225C69E:
	mov r6, #0
_0225C6A0:
	ldrb r0, [r4, #5]
	lsl r3, r6, #0x18
	lsr r3, r3, #0x18
	str r0, [sp]
	ldrb r0, [r4, #1]
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldrh r1, [r4, #2]
	ldrb r2, [r4, #4]
	add r0, sp, #0x14
	bl sub_02075FB4
	ldr r0, [r5, #0x20]
	bl sub_02008A90
	add r7, r0, #0
	add r2, sp, #0x14
	add r3, r7, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0x20]
	bl sub_020089A0
	ldr r0, [sp, #0x10]
	bl ov16_0223E0C8
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	bl ov16_0223F2B8
	add r3, r0, #0
	ldr r0, [r4, #8]
	mov r2, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldrh r0, [r7, #6]
	str r0, [sp, #0xc]
	ldrh r0, [r7]
	ldrh r1, [r7, #2]
	bl sub_02013750
	ldr r0, [sp, #0x10]
	bl ov16_0223E0C8
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrh r2, [r7]
	bl ov16_0223F2CC
	ldr r0, [sp, #0x10]
	bl ov16_0223E0C8
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrh r2, [r7, #4]
	bl ov16_0223F2E4
	ldr r0, [r4, #8]
	lsl r2, r6, #0x18
	str r0, [sp]
	ldrh r0, [r4, #2]
	ldrb r1, [r4, #4]
	ldrb r3, [r4, #1]
	lsr r2, r2, #0x18
	bl sub_02076648
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	bl ov16_0223E0C8
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	add r2, r6, #0
	bl ov16_0223F2FC
	ldr r0, _0225C778 ; =0x00000195
	mov r1, #1
	ldrb r0, [r5, r0]
	bl ov12_022384CC
	add r2, r0, #0
	ldr r0, [r5, #0x20]
	mov r1, #1
	add r2, r6, r2
	bl sub_02007DEC
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	ldr r0, [sp, #0x10]
	bl ov16_02266ABC
	add r0, r5, #0
	bl ov16_0225CBB0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0225C778: .word 0x00000195
	thumb_func_end ov16_0225C684

	thumb_func_start ov16_0225C77C
ov16_0225C77C: ; 0x0225C77C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov16_0223EF8C
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x2e
	bl ov16_02266ABC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0225C77C

	thumb_func_start ov16_0225C79C
ov16_0225C79C: ; 0x0225C79C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0225C83C ; =0x00000196
	add r4, r1, #0
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0225C822
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r6, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_0223E02C
	str r0, [sp, #8]
	mov r3, #0
	str r3, [sp]
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	str r3, [sp, #4]
	bl ov16_02268C04
	ldr r0, [sp, #8]
	mov r1, #0
	bl ov16_0226BCCC
	add r0, r6, #0
	bl sub_02006CA8
	add r0, r7, #0
	bl sub_02006CA8
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	bl ov16_0223E258
	add r1, r0, #0
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r1, r0
	beq _0225C80E
	add r0, r5, #0
	bl ov16_0223F35C
	bl ov16_0226846C
_0225C80E:
	add r0, r4, #0
	add r0, #0x28
	bl ov16_022675AC
	ldr r0, [sp, #8]
	bl ov16_02269218
	add r0, r4, #0
	bl ov16_022647D8
_0225C822:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x2f
	bl ov16_02266ABC
	add r0, r4, #0
	bl ov16_0225CBB0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225C83C: .word 0x00000196
	thumb_func_end ov16_0225C79C

	thumb_func_start ov16_0225C840
ov16_0225C840: ; 0x0225C840
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225E134
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C840

	thumb_func_start ov16_0225C854
ov16_0225C854: ; 0x0225C854
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225E17C
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C854

	thumb_func_start ov16_0225C868
ov16_0225C868: ; 0x0225C868
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r6, r4, #0
	add r5, r0, #0
	add r6, #0x94
	bl ov16_0223E208
	cmp r0, #0
	beq _0225C88C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0225E1B4
	b _0225C89A
_0225C88C:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x32
	bl ov16_02266ABC
_0225C89A:
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0225C868

	thumb_func_start ov16_0225C8A4
ov16_0225C8A4: ; 0x0225C8A4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r6, r4, #0
	add r5, r0, #0
	add r6, #0x94
	bl ov16_0223E208
	cmp r0, #0
	beq _0225C8C8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0225E200
	b _0225C8D6
_0225C8C8:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x33
	bl ov16_02266ABC
_0225C8D6:
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0225C8A4

	thumb_func_start ov16_0225C8E0
ov16_0225C8E0: ; 0x0225C8E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov16_0223E010
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_0223E018
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_0223E064
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov16_0226D094
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x34
	bl ov16_02266ABC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0225C8E0

	thumb_func_start ov16_0225C91C
ov16_0225C91C: ; 0x0225C91C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov16_0223E018
	bl ov16_0226D12C
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x35
	bl ov16_02266ABC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0225C91C

	thumb_func_start ov16_0225C940
ov16_0225C940: ; 0x0225C940
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r5, #0
	add r4, #0x94
	ldrb r1, [r4, #1]
	add r6, r0, #0
	cmp r1, #0
	ldr r1, _0225C984 ; =0x00000196
	bne _0225C960
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _0225C96C
	ldrh r1, [r4, #2]
	bl ov16_0223F24C
	b _0225C96C
_0225C960:
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _0225C96C
	ldrh r1, [r4, #2]
	bl ov16_0223F24C
_0225C96C:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl ov16_02266ABC
	add r0, r5, #0
	bl ov16_0225CBB0
	pop {r4, r5, r6, pc}
	nop
_0225C984: .word 0x00000196
	thumb_func_end ov16_0225C940

	thumb_func_start ov16_0225C988
ov16_0225C988: ; 0x0225C988
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	ldrh r1, [r2, #2]
	add r5, r0, #0
	add r2, r2, #4
	bl ov16_0223F638
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0225E23C
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0225C988

	thumb_func_start ov16_0225C9AC
ov16_0225C9AC: ; 0x0225C9AC
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225E294
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C9AC

	thumb_func_start ov16_0225C9C0
ov16_0225C9C0: ; 0x0225C9C0
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0225E2C8
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C9C0

	thumb_func_start ov16_0225C9D0
ov16_0225C9D0: ; 0x0225C9D0
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0225E300
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C9D0

	thumb_func_start ov16_0225C9E0
ov16_0225C9E0: ; 0x0225C9E0
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0225E338
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225C9E0

	thumb_func_start ov16_0225C9F0
ov16_0225C9F0: ; 0x0225C9F0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r6, #0
	add r4, #0x94
	ldrh r1, [r4, #2]
	add r5, r0, #0
	add r2, r4, #4
	bl ov16_0223F638
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov16_0225E38C
	add r0, r6, #0
	bl ov16_0225CBB0
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0225C9F0

	thumb_func_start ov16_0225CA14
ov16_0225CA14: ; 0x0225CA14
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	ldrh r1, [r2, #2]
	add r5, r0, #0
	add r2, r2, #4
	bl ov16_0223F638
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0225E3E0
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0225CA14

	thumb_func_start ov16_0225CA38
ov16_0225CA38: ; 0x0225CA38
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225E434
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225CA38

	thumb_func_start ov16_0225CA4C
ov16_0225CA4C: ; 0x0225CA4C
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225E468
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225CA4C

	thumb_func_start ov16_0225CA60
ov16_0225CA60: ; 0x0225CA60
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x94
	bl ov16_0225E4C8
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, pc}
	thumb_func_end ov16_0225CA60

	thumb_func_start ov16_0225CA74
ov16_0225CA74: ; 0x0225CA74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	str r1, [sp, #0x10]
	add r1, #0x94
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x10]
	mov r7, #0
	ldrh r1, [r1, #2]
	str r0, [sp]
	add r2, #8
	str r7, [sp, #8]
	bl ov16_0223F638
	ldr r0, [sp]
	bl ov16_0223DF0C
	mov r1, #0x80
	tst r0, r1
	beq _0225CAAC
	ldr r1, [sp, #0x10]
	ldr r0, [sp]
	ldr r1, [r1, #4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov16_0223F444
	b _0225CB64
_0225CAAC:
	add r0, r7, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov16_0223DF1C
	cmp r0, #0
	ble _0225CB3A
_0225CABA:
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl ov16_0223DF20
	add r6, r0, #0
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0225CB28
_0225CACE:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0225CB1C
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0225CB1C
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl ov16_0223E208
	cmp r0, #0
	beq _0225CB10
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	b _0225CB1C
_0225CB10:
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r7, r7, r0
_0225CB1C:
	add r0, r6, #0
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0225CACE
_0225CB28:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov16_0223DF1C
	ldr r1, [sp, #0xc]
	cmp r1, r0
	blt _0225CABA
_0225CB3A:
	cmp r7, #0
	bne _0225CB4E
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0225CB4E
	ldr r0, [sp]
	mov r1, #3
	bl ov16_0223F444
	b _0225CB64
_0225CB4E:
	cmp r7, #0
	bne _0225CB5C
	ldr r0, [sp]
	mov r1, #2
	bl ov16_0223F444
	b _0225CB64
_0225CB5C:
	ldr r0, [sp]
	mov r1, #1
	bl ov16_0223F444
_0225CB64:
	mov r2, #0x65
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	ldrb r1, [r1, r2]
	ldr r2, [sp, #0x10]
	ldr r0, [sp]
	ldrb r2, [r2]
	bl ov16_02266ABC
	ldr r0, [sp, #4]
	bl ov16_0225CBB0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_0225CA74

	thumb_func_start ov16_0225CB80
ov16_0225CB80: ; 0x0225CB80
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl ov16_0223DF04
	add r6, r0, #0
	mov r1, #0xff
	bl sub_0201ADA4
	add r0, r6, #0
	bl sub_0201ACCC
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x42
	bl ov16_02266ABC
	add r0, r4, #0
	bl ov16_0225CBB0
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0225CB80

	thumb_func_start ov16_0225CBB0
ov16_0225CBB0: ; 0x0225CBB0
	mov r1, #0
	add r0, #0x94
	strb r1, [r0]
	bx lr
	thumb_func_end ov16_0225CBB0

	.rodata


	.global Unk_ov16_0226F068
Unk_ov16_0226F068: ; 0x0226F068
	.incbin "incbin/overlay16_rodata.bin", 0xE0C, 0x10C

