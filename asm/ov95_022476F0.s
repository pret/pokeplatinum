	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov95_022476F0
ov95_022476F0: ; 0x022476F0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	mov r0, #0x3a
	mov r1, #0x20
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r6, r0, #0
	beq _02247736
	ldr r3, [sp]
	add r1, r4, #0
	add r2, r5, #0
	bl ov95_02247AF0
	mov r1, #0x8c
	mov r0, #0x3a
	mul r1, r7
	bl sub_02018144
	str r0, [r6, #0x18]
	mov r4, #0
	str r7, [r6, #0x1c]
	cmp r7, #0
	bls _02247736
	add r5, r4, #0
_02247726:
	ldr r0, [r6, #0x18]
	add r0, r0, r5
	bl ov95_02247868
	add r4, r4, #1
	add r5, #0x8c
	cmp r4, r7
	blo _02247726
_02247736:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov95_022476F0

	thumb_func_start ov95_0224773C
ov95_0224773C: ; 0x0224773C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	mov r6, #0
	cmp r0, #0
	bls _0224775C
	add r4, r6, #0
_0224774A:
	ldr r0, [r5, #0x18]
	add r0, r0, r4
	bl ov95_0224789C
	ldr r0, [r5, #0x1c]
	add r6, r6, #1
	add r4, #0x8c
	cmp r6, r0
	blo _0224774A
_0224775C:
	ldr r0, [r5, #0x18]
	bl sub_020181C4
	add r0, r5, #0
	bl ov95_02247B5C
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov95_0224773C

	thumb_func_start ov95_02247770
ov95_02247770: ; 0x02247770
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0
	add r5, r0, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	bl sub_020203EC
	ldr r0, [r5, #0x1c]
	mov r6, #0
	cmp r0, #0
	bls _022477A6
	add r4, r6, #0
_0224778E:
	ldr r0, [r5, #0x18]
	add r0, r0, r4
	ldr r1, [r0, #0x64]
	cmp r1, #0
	beq _0224779C
	bl ov95_022477B8
_0224779C:
	ldr r0, [r5, #0x1c]
	add r6, r6, #1
	add r4, #0x8c
	cmp r6, r0
	blo _0224778E
_022477A6:
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov95_02247770

	thumb_func_start ov95_022477B8
ov95_022477B8: ; 0x022477B8
	push {r4, lr}
	sub sp, #0x50
	add r4, r0, #0
	add r0, sp, #0x2c
	bl sub_020BB4C8
	add r0, r4, #0
	add r0, #0x80
	ldrh r0, [r0]
	ldr r3, _02247864 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #8
	bl sub_020BB5AC
	add r1, sp, #0x2c
	add r0, sp, #8
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x82
	ldrh r0, [r0]
	ldr r3, _02247864 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #8
	bl sub_020BB5C8
	add r1, sp, #0x2c
	add r0, sp, #8
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x84
	ldrh r0, [r0]
	ldr r3, _02247864 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #8
	bl sub_020BB5E4
	add r1, sp, #0x2c
	add r0, sp, #8
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0x1f
	beq _02247850
	str r0, [sp]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl sub_020AF5B4
_02247850:
	add r1, r4, #0
	add r0, r4, #4
	add r4, #0x74
	add r1, #0x68
	add r2, sp, #0x2c
	add r3, r4, #0
	bl sub_0201CA74
	add sp, #0x50
	pop {r4, pc}
	; .align 2, 0
_02247864: .word 0x020F983C
	thumb_func_end ov95_022477B8

	thumb_func_start ov95_02247868
ov95_02247868: ; 0x02247868
	mov r1, #0
	str r1, [r0, #0x64]
	add r2, r0, #0
	str r1, [r0, #0]
	add r2, #0x84
	strh r1, [r2]
	mov r2, #0x84
	ldrsh r3, [r0, r2]
	add r2, r0, #0
	add r2, #0x82
	strh r3, [r2]
	mov r2, #0x82
	ldrsh r3, [r0, r2]
	add r2, r0, #0
	add r2, #0x80
	strh r3, [r2]
	mov r2, #1
	lsl r2, r2, #0xc
	str r2, [r0, #0x7c]
	str r2, [r0, #0x78]
	str r2, [r0, #0x74]
	str r1, [r0, #0x70]
	str r1, [r0, #0x6c]
	str r1, [r0, #0x68]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02247868

	thumb_func_start ov95_0224789C
ov95_0224789C: ; 0x0224789C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _022478B0
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #0x64]
_022478B0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224789C

	thumb_func_start ov95_022478B4
ov95_022478B4: ; 0x022478B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [r0, #0x18]
	add r6, r1, #0
	mov r0, #0x8c
	mul r6, r0
	add r7, r2, #0
	mov r0, #1
	str r0, [sp]
	str r3, [sp, #4]
	add r1, r3, #0
	add r0, r7, #0
	mov r2, #0
	mov r3, #0x3a
	add r5, r4, r6
	bl sub_02006FE8
	str r0, [r4, r6]
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl sub_02006B58
	add r1, r0, #0
	ldr r0, [r4, r6]
	bl sub_020C2C54
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _02247950
	bl sub_020B3C0C
	str r0, [r5, #0x58]
	cmp r0, #0
	beq _02247918
	add r2, r0, #0
	add r2, #8
	beq _0224790C
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0224790C
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0224790E
_0224790C:
	mov r1, #0
_0224790E:
	cmp r1, #0
	beq _02247918
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _0224791A
_02247918:
	mov r0, #0
_0224791A:
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0]
	bl sub_020B3C1C
	str r0, [r5, #0x60]
	bl sub_0201CBCC
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x60]
	bl sub_0201CBB0
	ldr r1, [r5, #0x5c]
	add r0, r5, #4
	bl sub_020AE608
	ldr r0, [sp, #0x20]
	mov r1, #0x1f
	str r0, [r5, #0x68]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x6c]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x70]
	add r0, r5, #0
	add r0, #0x88
	str r1, [r0, #0]
	ldr r0, [sp, #0x2c]
	str r0, [r5, #0x64]
_02247950:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov95_022478B4

	thumb_func_start ov95_02247958
ov95_02247958: ; 0x02247958
	add r2, r0, #0
	add r2, #0x68
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end ov95_02247958

	thumb_func_start ov95_02247968
ov95_02247968: ; 0x02247968
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x68
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end ov95_02247968

	thumb_func_start ov95_02247978
ov95_02247978: ; 0x02247978
	add r2, r0, #0
	add r2, #0x80
	ldrh r2, [r2]
	strh r2, [r1]
	add r2, r0, #0
	add r2, #0x82
	ldrh r2, [r2]
	add r0, #0x84
	strh r2, [r1, #2]
	ldrh r0, [r0]
	strh r0, [r1, #4]
	bx lr
	thumb_func_end ov95_02247978

	thumb_func_start ov95_02247990
ov95_02247990: ; 0x02247990
	ldrh r3, [r1]
	add r2, r0, #0
	add r2, #0x80
	strh r3, [r2]
	add r2, r0, #0
	ldrh r3, [r1, #2]
	add r2, #0x82
	add r0, #0x84
	strh r3, [r2]
	ldrh r1, [r1, #4]
	strh r1, [r0]
	bx lr
	thumb_func_end ov95_02247990

	thumb_func_start ov95_022479A8
ov95_022479A8: ; 0x022479A8
	str r1, [r0, #0x64]
	bx lr
	thumb_func_end ov95_022479A8

	thumb_func_start ov95_022479AC
ov95_022479AC: ; 0x022479AC
	push {r3, lr}
	add r2, r0, #0
	add r2, #0x88
	str r1, [r2, #0]
	cmp r1, #0x1f
	ldr r0, [r0, #0x5c]
	beq _022479C6
	mov r2, #0x1f
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_020B2D8C
	pop {r3, pc}
_022479C6:
	mov r2, #0x1f
	mov r1, #1
	lsl r2, r2, #0x10
	bl sub_020B2D8C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov95_022479AC

	thumb_func_start ov95_022479D4
ov95_022479D4: ; 0x022479D4
	str r1, [r0, #0x74]
	str r1, [r0, #0x78]
	str r1, [r0, #0x7c]
	bx lr
	thumb_func_end ov95_022479D4

	thumb_func_start ov95_022479DC
ov95_022479DC: ; 0x022479DC
	push {r3, r4, lr}
	sub sp, #0x4c
	add r4, r0, #0
	add r0, sp, #0x28
	bl sub_020BB4C8
	add r0, r4, #0
	add r0, #0x80
	ldrh r0, [r0]
	ldr r3, _02247A8C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #4
	bl sub_020BB5AC
	add r1, sp, #0x28
	add r0, sp, #4
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x82
	ldrh r0, [r0]
	ldr r3, _02247A8C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #4
	bl sub_020BB5C8
	add r1, sp, #0x28
	add r0, sp, #4
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x84
	ldrh r0, [r0]
	ldr r3, _02247A8C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #4
	bl sub_020BB5E4
	add r1, sp, #0x28
	add r0, sp, #4
	add r2, r1, #0
	bl sub_020BB8EC
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	bl sub_020203EC
	add r1, r4, #0
	ldr r0, [r4, #0x5c]
	add r4, #0x74
	add r1, #0x68
	add r2, sp, #0x28
	add r3, r4, #0
	bl sub_0201CED8
	add r4, r0, #0
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
	add r0, r4, #0
	add sp, #0x4c
	pop {r3, r4, pc}
	; .align 2, 0
_02247A8C: .word 0x020F983C
	thumb_func_end ov95_022479DC

	thumb_func_start ov95_02247A90
ov95_02247A90: ; 0x02247A90
	push {r3, r4, lr}
	sub sp, #0xc
	add r2, r0, #0
	add r4, r1, #0
	ldr r1, [r2, #0]
	add r0, sp, #0
	bl sub_02020ABC
	add r2, sp, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02247A90

	thumb_func_start ov95_02247AB0
ov95_02247AB0: ; 0x02247AB0
	ldr r3, _02247ABC ; =sub_020209D4
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0]
	bx r3
	nop
_02247ABC: .word sub_020209D4
	thumb_func_end ov95_02247AB0

	thumb_func_start ov95_02247AC0
ov95_02247AC0: ; 0x02247AC0
	ldr r3, _02247ACC ; =sub_020209F8
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0]
	bx r3
	nop
_02247ACC: .word sub_020209F8
	thumb_func_end ov95_02247AC0

	thumb_func_start ov95_02247AD0
ov95_02247AD0: ; 0x02247AD0
	ldr r3, _02247ADC ; =sub_02020854
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0]
	bx r3
	nop
_02247ADC: .word sub_02020854
	thumb_func_end ov95_02247AD0

	thumb_func_start ov95_02247AE0
ov95_02247AE0: ; 0x02247AE0
	ldr r3, _02247AEC ; =sub_02020910
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0]
	bx r3
	nop
_02247AEC: .word sub_02020910
	thumb_func_end ov95_02247AE0

	thumb_func_start ov95_02247AF0
ov95_02247AF0: ; 0x02247AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x3a
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020203AC
	str r0, [r5, #0]
	str r4, [r5, #4]
	str r6, [r5, #8]
	mov r1, #0x4b
	add r2, r5, #0
	str r7, [r5, #0xc]
	mov r0, #0
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	strh r0, [r5, #0x14]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r3, _02247B58 ; =0x00000FA4
	str r0, [sp, #8]
	add r0, r5, #4
	lsl r1, r1, #0xe
	add r2, #0x10
	bl sub_020206D0
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0xc]
	str r1, [sp, #0x14]
	ldr r1, [r5, #0]
	add r0, sp, #0xc
	bl sub_02020680
	ldr r0, [r5, #0]
	bl sub_020203D4
	mov r1, #0xfa
	ldr r2, [r5, #0]
	mov r0, #0
	lsl r1, r1, #0xe
	bl sub_020206BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247B58: .word 0x00000FA4
	thumb_func_end ov95_02247AF0

	thumb_func_start ov95_02247B5C
ov95_02247B5C: ; 0x02247B5C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020203E0
	ldr r0, [r4, #0]
	bl sub_020203B8
	pop {r4, pc}
	thumb_func_end ov95_02247B5C