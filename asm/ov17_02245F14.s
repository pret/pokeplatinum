	.include "macros/function.inc"
	.include "include/ov17_02245F14.inc"

	

	.text


	thumb_func_start ov17_02245F14
ov17_02245F14: ; 0x02245F14
	strb r1, [r0, #0x12]
	ldr r1, _02245F40 ; =0x00007530
	strb r2, [r0, #0x13]
	cmp r3, r1
	beq _02245F20
	strb r3, [r0, #0xc]
_02245F20:
	ldr r2, [sp]
	ldr r1, _02245F40 ; =0x00007530
	cmp r2, r1
	beq _02245F2A
	strb r2, [r0, #0xd]
_02245F2A:
	ldr r2, [sp, #4]
	ldr r1, _02245F40 ; =0x00007530
	cmp r2, r1
	beq _02245F34
	strh r2, [r0, #0xe]
_02245F34:
	ldr r2, [sp, #8]
	ldr r1, _02245F40 ; =0x00007530
	cmp r2, r1
	beq _02245F3E
	strb r2, [r0, #0x10]
_02245F3E:
	bx lr
	; .align 2, 0
_02245F40: .word 0x00007530
	thumb_func_end ov17_02245F14

	thumb_func_start ov17_02245F44
ov17_02245F44: ; 0x02245F44
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x26
	add r5, r1, #0
	lsl r0, r0, #4
	add r4, r6, r0
	add r3, r5, #0
	mov r2, #0x19
_02245F54:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02245F54
	add r0, r5, #0
	bl ov17_02246540
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xb0
	bl MI_CpuFill8
	mov r4, #0
	add r7, r6, #0
_02245F70:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0xc
	add r2, r4, #0
	bl ov17_02243120
	ldr r0, _02245FAC ; =0x0000023E
	add r1, r6, r4
	ldrb r0, [r1, r0]
	mov r1, #0xa
	strb r0, [r5, #3]
	ldr r0, _02245FB0 ; =0x00000236
	ldrh r0, [r7, r0]
	strh r0, [r5]
	bl sub_020790C4
	strb r0, [r5, #2]
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r6, r0
	add r1, r4, #0
	bl ov17_02243AC4
	strb r0, [r5, #9]
	add r4, r4, #1
	add r5, #0x2c
	add r7, r7, #2
	cmp r4, #4
	blt _02245F70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245FAC: .word 0x0000023E
_02245FB0: .word 0x00000236
	thumb_func_end ov17_02245F44

	thumb_func_start ov17_02245FB4
ov17_02245FB4: ; 0x02245FB4
	push {r4, r5, r6, r7}
	add r3, r1, #0
	ldr r5, _0224600C ; =0xFFFFFCFF
	ldr r6, _02246010 ; =0xFFFFF3FF
	add r4, r0, #0
	mov r1, #0
	add r2, r3, #0
_02245FC2:
	ldr r7, [r2, #0x28]
	add r1, r1, #1
	add r0, r7, #0
	lsl r7, r7, #0x1a
	lsr r7, r7, #0x1e
	lsl r7, r7, #0x1e
	and r0, r5
	lsr r7, r7, #0x16
	orr r7, r0
	add r0, r7, #0
	lsl r7, r7, #0x18
	lsr r7, r7, #0x1e
	lsl r7, r7, #0x1e
	and r0, r6
	lsr r7, r7, #0x14
	orr r0, r7
	str r0, [r2, #0x28]
	add r2, #0x2c
	cmp r1, #4
	blt _02245FC2
	ldr r1, _02246014 ; =0x00000252
	mov r0, #0
	add r5, r1, #0
_02245FF0:
	add r7, r4, r0
	ldrsb r6, [r7, r1]
	add r2, r3, r0
	add r2, #0xc0
	strb r6, [r2]
	add r2, r3, r0
	ldrsb r6, [r7, r5]
	add r2, #0xc3
	add r0, r0, #1
	strb r6, [r2]
	cmp r0, #3
	blt _02245FF0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0224600C: .word 0xFFFFFCFF
_02246010: .word 0xFFFFF3FF
_02246014: .word 0x00000252
	thumb_func_end ov17_02245FB4

	thumb_func_start ov17_02246018
ov17_02246018: ; 0x02246018
	push {r4, r5, r6, r7}
	mov r5, #0
	ldr r2, _02246040 ; =0x00000252
	add r3, r5, #0
_02246020:
	add r7, r1, r5
	mov r6, #0xc3
	ldrsb r7, [r7, r6]
	ldr r6, _02246040 ; =0x00000252
	add r4, r0, r5
	strb r7, [r4, r6]
	ldrsb r6, [r4, r2]
	cmp r6, #0x32
	blt _02246036
	ldr r6, _02246040 ; =0x00000252
	strb r3, [r4, r6]
_02246036:
	add r5, r5, #1
	cmp r5, #3
	blt _02246020
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02246040: .word 0x00000252
	thumb_func_end ov17_02246018

	thumb_func_start ov17_02246044
ov17_02246044: ; 0x02246044
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0224608C ; =0x00000242
	mov ip, r1
	add r5, r7, #0
	mov lr, r0
	mov r1, #0
	mov r2, ip
	add r3, r0, #0
	mov r6, #0x18
	add r5, #8
_02246058:
	ldr r0, _0224608C ; =0x00000242
	mov r4, #0x18
	ldrsh r0, [r3, r0]
	ldrsh r4, [r2, r4]
	add r1, r1, #1
	add r0, r0, r4
	strh r0, [r3, r7]
	ldrsh r0, [r2, r6]
	add r2, #0x2c
	strh r0, [r3, r5]
	add r3, r3, #2
	cmp r1, #4
	blt _02246058
	mov r1, #0x26
	lsl r1, r1, #4
	mov r0, lr
	add r4, r0, r1
	mov r3, #0x19
_0224607C:
	mov r2, ip
	ldmia r2!, {r0, r1}
	mov ip, r2
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0224607C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224608C: .word 0x00000242
	thumb_func_end ov17_02246044

	thumb_func_start ov17_02246090
ov17_02246090: ; 0x02246090
	push {r3, r4}
	mov r2, #0x2c
	mul r2, r1
	add r2, r0, r2
	mov r1, #0x18
	ldrsh r1, [r2, r1]
	mov r4, #0
	strh r1, [r2, #0x1a]
	strh r4, [r2, #0x1e]
	strh r4, [r2, #0x20]
	mov r1, #0xc3
_022460A6:
	add r3, r0, r4
	ldrsb r2, [r3, r1]
	add r3, #0xc0
	add r4, r4, #1
	strb r2, [r3]
	cmp r4, #3
	blt _022460A6
	mov r2, #0
	add r1, r2, #0
_022460B8:
	strb r1, [r0, #0x14]
	strb r1, [r0, #0x12]
	add r2, r2, #1
	add r0, #0x2c
	cmp r2, #4
	blt _022460B8
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_02246090

	thumb_func_start ov17_022460C8
ov17_022460C8: ; 0x022460C8
	mov r3, #0
	mov r1, #0x18
_022460CC:
	ldrsh r2, [r0, r1]
	add r3, r3, #1
	strh r2, [r0, #0x1c]
	add r0, #0x2c
	cmp r3, #4
	blt _022460CC
	bx lr
	; .align 2, 0
	thumb_func_end ov17_022460C8

	thumb_func_start ov17_022460DC
ov17_022460DC: ; 0x022460DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r7, r2, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov17_02246090
	mov r0, #0x2c
	add r4, r7, #0
	mul r4, r0
	add r6, r5, #2
	ldrb r0, [r6, r4]
	ldr r1, _0224612C ; =0x02253AFD
	lsl r2, r0, #3
	ldrb r1, [r1, r2]
	cmp r1, #0
	bne _02246126
	mov r1, #4
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_02095790
	ldr r1, [sp, #0x10]
	ldr r0, _02246130 ; =0x0000FFFF
	cmp r1, r0
	beq _02246126
	ldr r0, _02246134 ; =0x00007530
	mov r2, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r1, [r6, r4]
	add r0, r5, r4
	add r3, r7, #0
	bl ov17_02245F14
_02246126:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224612C: .word 0x02253AFD
_02246130: .word 0x0000FFFF
_02246134: .word 0x00007530
	thumb_func_end ov17_022460DC

	thumb_func_start ov17_02246138
ov17_02246138: ; 0x02246138
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov17_02246090
	add r4, r6, #0
	mov r0, #0x2c
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #2]
	add r6, r5, #4
	bl sub_02095734
	strb r0, [r6, r4]
	ldrb r1, [r6, r4]
	add r0, r5, r4
	strh r1, [r0, #0x18]
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02246138

	thumb_func_start ov17_02246160
ov17_02246160: ; 0x02246160
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r0, r7, #0
	add r1, r2, #0
	str r3, [sp, #0xc]
	bl ov17_02246090
	ldr r0, [sp, #8]
	mov r1, #0x2c
	add r4, r0, #0
	mul r4, r1
	add r0, r7, r4
	ldrb r0, [r0, #2]
	lsl r6, r0, #3
	ldr r0, _0224621C ; =0x02253AFC
	ldrb r0, [r0, r6]
	cmp r0, #3
	bne _022461B6
	ldr r0, [sp, #0xc]
	ldr r5, _02246220 ; =0x02253AF8
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	ldr r5, [r5, r6]
	add r1, r7, #0
	add r3, r2, #0
	blx r5
	add r2, r7, #0
	mov r0, #1
	add r3, r7, r4
	strb r0, [r3, #0x14]
	mov r0, #0x1e
	add r2, #0x18
	mov r5, #0x20
	ldrsh r0, [r3, r0]
	ldrsh r3, [r3, r5]
	ldrsh r1, [r2, r4]
	add r0, r0, r3
	add r0, r1, r0
	strh r0, [r2, r4]
_022461B6:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	blt _02246218
_022461C0:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, r0
	ldr r0, _02246224 ; =0x00000231
	ldrb r5, [r1, r0]
	mov r0, #0x2c
	mul r0, r5
	add r4, r7, r0
	ldrb r0, [r4, #2]
	lsl r1, r0, #3
	ldr r0, _02246220 ; =0x02253AF8
	add r0, r0, r1
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _0224620C
	add r0, r7, #0
	add r1, r5, #0
	bl ov17_02246090
	ldr r0, [sp, #0xc]
	add r3, r5, #0
	str r0, [sp]
	ldrb r5, [r4, #2]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	lsl r6, r5, #3
	ldr r5, _02246220 ; =0x02253AF8
	add r1, r7, #0
	ldr r5, [r5, r6]
	blx r5
	mov r0, #1
	strb r0, [r4, #0x14]
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #0x18]
_0224620C:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r1
	ble _022461C0
_02246218:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224621C: .word 0x02253AFC
_02246220: .word 0x02253AF8
_02246224: .word 0x00000231
	thumb_func_end ov17_02246160

	thumb_func_start ov17_02246228
ov17_02246228: ; 0x02246228
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r2, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov17_02246090
	add r7, r5, #0
	lsl r0, r6, #2
	add r7, #0xb0
	str r0, [sp, #0xc]
	ldr r0, [r7, r0]
	lsl r0, r0, #8
	lsr r0, r0, #0x18
	beq _0224627E
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	add r1, r5, r4
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	add r1, r5, #0
	add r1, #0x1e
	ldrsh r2, [r1, r4]
	add r2, r2, r0
	strh r2, [r1, r4]
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, _022462A0 ; =0x00007530
	mov r2, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r5, r4
	ldr r1, [r7, r1]
	add r3, r6, #0
	lsl r1, r1, #8
	lsr r1, r1, #0x18
	bl ov17_02245F14
_0224627E:
	mov r0, #0x2c
	add r2, r6, #0
	add r1, r5, #0
	mul r2, r0
	add r1, #0x18
	add r5, r5, r2
	mov r3, #0x1e
	ldrsh r4, [r5, r3]
	mov r3, #0x20
	ldrsh r3, [r5, r3]
	ldrsh r0, [r1, r2]
	add r3, r4, r3
	add r0, r0, r3
	strh r0, [r1, r2]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022462A0: .word 0x00007530
	thumb_func_end ov17_02246228

	thumb_func_start ov17_022462A4
ov17_022462A4: ; 0x022462A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	str r3, [sp, #8]
	bl ov17_02246090
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #2]
	lsl r7, r0, #3
	ldr r0, _022462FC ; =0x02253AFC
	ldrb r0, [r0, r7]
	cmp r0, #4
	bne _022462F4
	ldr r0, [sp, #8]
	add r2, r6, #0
	add r3, r6, #0
	ldr r6, _02246300 ; =0x02253AF8
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r6, [r6, r7]
	add r1, r5, #0
	blx r6
	add r3, r5, r4
	mov r0, #1
	strb r0, [r3, #0x14]
	add r5, #0x18
	mov r1, #0x1e
	ldrsh r2, [r5, r4]
	ldrsh r1, [r3, r1]
	add sp, #0xc
	add r1, r2, r1
	strh r1, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_022462F4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022462FC: .word 0x02253AFC
_02246300: .word 0x02253AF8
	thumb_func_end ov17_022462A4

	thumb_func_start ov17_02246304
ov17_02246304: ; 0x02246304
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	str r3, [sp, #8]
	bl ov17_02246090
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #2]
	lsl r7, r0, #3
	ldr r0, _0224635C ; =0x02253AFC
	ldrb r0, [r0, r7]
	cmp r0, #5
	bne _02246354
	ldr r0, [sp, #8]
	add r2, r6, #0
	add r3, r6, #0
	ldr r6, _02246360 ; =0x02253AF8
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r6, [r6, r7]
	add r1, r5, #0
	blx r6
	add r3, r5, r4
	mov r0, #1
	strb r0, [r3, #0x14]
	add r5, #0x18
	mov r1, #0x1e
	ldrsh r2, [r5, r4]
	ldrsh r1, [r3, r1]
	add sp, #0xc
	add r1, r2, r1
	strh r1, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_02246354:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224635C: .word 0x02253AFC
_02246360: .word 0x02253AF8
	thumb_func_end ov17_02246304

	thumb_func_start ov17_02246364
ov17_02246364: ; 0x02246364
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	str r3, [sp, #8]
	bl ov17_02246090
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #2]
	lsl r7, r0, #3
	ldr r0, _022463BC ; =0x02253AFC
	ldrb r0, [r0, r7]
	cmp r0, #6
	bne _022463B4
	ldr r0, [sp, #8]
	add r2, r6, #0
	add r3, r6, #0
	ldr r6, _022463C0 ; =0x02253AF8
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r6, [r6, r7]
	add r1, r5, #0
	blx r6
	add r3, r5, r4
	mov r0, #1
	strb r0, [r3, #0x14]
	add r5, #0x18
	mov r1, #0x1e
	ldrsh r2, [r5, r4]
	ldrsh r1, [r3, r1]
	add sp, #0xc
	add r1, r2, r1
	strh r1, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_022463B4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022463BC: .word 0x02253AFC
_022463C0: .word 0x02253AF8
	thumb_func_end ov17_02246364

	thumb_func_start ov17_022463C4
ov17_022463C4: ; 0x022463C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r2, #0
	str r2, [sp, #4]
	add r7, r3, #0
	bl ov17_02246090
	mov r0, #0
	strb r0, [r7, #0xc]
	strb r0, [r7, #0xd]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	mov r6, #0x2c
	add r1, r1, r0
	ldr r0, _02246510 ; =0x0000023E
	ldrb r5, [r1, r0]
	ldr r0, [sp]
	ldr r3, [r0, #0]
	ldr r0, [sp, #4]
	add r2, r5, #0
	add r1, r0, #0
	mul r1, r6
	add r0, r4, r1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xf3
	str r1, [sp, #0x10]
	add r6, #0xf2
	ldrb r0, [r3, r0]
	ldrh r1, [r4, r1]
	ldrb r3, [r3, r6]
	bl ov17_02243AF0
	add r6, r0, #0
	cmp r6, #0
	ble _02246432
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x28]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02246432
	add r0, r4, #0
	add r0, #0xc3
	ldrsb r1, [r0, r5]
	add r1, r1, r6
	strb r1, [r0, r5]
	ldrsb r1, [r0, r5]
	cmp r1, #0x32
	blt _0224645E
	mov r1, #0x32
	strb r1, [r0, r5]
	b _0224645E
_02246432:
	cmp r6, #0
	bge _0224645C
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x28]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0224645C
	add r0, r4, #0
	add r0, #0xc3
	add r1, r0, r5
	ldrsb r0, [r0, r5]
	cmp r0, #0
	ble _0224645C
	add r0, r0, r6
	mov r2, #0
	strb r0, [r1]
	ldrsb r0, [r1, r2]
	cmp r0, #0
	bgt _0224645E
	strb r2, [r1]
	b _0224645E
_0224645C:
	mov r6, #0
_0224645E:
	add r1, r4, #0
	add r1, #0xc3
	add r0, r1, r5
	str r0, [sp, #8]
	ldrsb r0, [r1, r5]
	cmp r0, #0x32
	blt _0224648A
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldr r0, _02246514 ; =0x0000011E
	ldrb r0, [r1, r0]
	cmp r5, r0
	bne _02246482
	ldr r0, [sp, #0x10]
	mov r1, #0x50
	add r0, r4, r0
	strb r1, [r0, #8]
	b _0224648A
_02246482:
	ldr r0, [sp, #0x10]
	mov r1, #0x32
	add r0, r4, r0
	strb r1, [r0, #8]
_0224648A:
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	add r0, #8
	add r5, r0, r1
	ldrsb r0, [r0, r1]
	mov r1, #0xa
	bl _s32_div_f
	strb r0, [r7, #0xa]
	cmp r6, #0
	ble _022464E4
	ldr r0, [sp, #0xc]
	mov r1, #0xb
	ldrh r0, [r0]
	bl sub_020790C4
	bl ov17_02243970
	strb r0, [r7, #0xc]
	ldr r0, [sp, #8]
	mov r1, #0
	ldrsb r0, [r0, r1]
	mov r1, #0xa
	bl _s32_div_f
	cmp r0, #5
	bhi _022464F6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022464CC: ; jump table
	.short _022464F6 - _022464CC - 2 ; case 0
	.short _022464F6 - _022464CC - 2 ; case 1
	.short _022464F6 - _022464CC - 2 ; case 2
	.short _022464F6 - _022464CC - 2 ; case 3
	.short _022464D8 - _022464CC - 2 ; case 4
	.short _022464DE - _022464CC - 2 ; case 5
_022464D8:
	mov r0, #0x19
	strb r0, [r7, #0xd]
	b _022464F6
_022464DE:
	mov r0, #0x1a
	strb r0, [r7, #0xd]
	b _022464F6
_022464E4:
	bge _022464F6
	ldr r0, [sp, #0xc]
	mov r1, #0xb
	ldrh r0, [r0]
	bl sub_020790C4
	bl ov17_0224399C
	strb r0, [r7, #0xc]
_022464F6:
	ldr r0, [sp, #4]
	mov r1, #0x2c
	add r2, r0, #0
	mov r0, #0
	add r4, #0x18
	mul r2, r1
	ldrsh r1, [r4, r2]
	ldrsb r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r4, r2]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02246510: .word 0x0000023E
_02246514: .word 0x0000011E
	thumb_func_end ov17_022463C4

	thumb_func_start ov17_02246518
ov17_02246518: ; 0x02246518
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov17_02246090
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #9]
	bl ov17_02243AE4
	add r5, #0x18
	ldrsh r1, [r5, r4]
	add r0, r1, r0
	strh r0, [r5, r4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02246518

	thumb_func_start ov17_02246540
ov17_02246540: ; 0x02246540
	push {r3, r4, r5, r6}
	add r3, r0, #0
	ldr r4, _02246570 ; =0xFFFF0000
	ldr r5, _02246574 ; =0xFF00FFFF
	mov r2, #0
	add r3, #0xb0
_0224654C:
	ldr r1, [r3, #0]
	add r2, r2, #1
	and r1, r4
	str r1, [r3, #0]
	ldr r6, [r0, #0x28]
	and r1, r5
	lsl r6, r6, #0xc
	lsr r6, r6, #0x18
	lsl r6, r6, #0x18
	lsr r6, r6, #8
	orr r1, r6
	add r0, #0x2c
	stmia r3!, {r1}
	cmp r2, #4
	blt _0224654C
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02246570: .word 0xFFFF0000
_02246574: .word 0xFF00FFFF
	thumb_func_end ov17_02246540

	thumb_func_start ov17_02246578
ov17_02246578: ; 0x02246578
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r0, #4
	str r3, [sp, #0xc]
	mov ip, r0
	add r7, r1, #0
	mov r0, #0
	add r2, sp, #0x10
	mov r3, #0xff
_0224658A:
	ldr r4, [r1, #0x28]
	lsl r5, r4, #0x1a
	lsr r5, r5, #0x1e
	bne _02246596
	strb r3, [r2]
	b _022465AA
_02246596:
	cmp r5, #1
	bne _022465A2
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	bne _022465A2
	mov ip, r0
_022465A2:
	ldr r4, [r1, #0x28]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	strb r4, [r2]
_022465AA:
	add r0, r0, #1
	add r1, #0x2c
	add r2, r2, #1
	cmp r0, #4
	blt _0224658A
	ldr r0, [sp, #0xc]
	mov r1, #0xff
	add r6, sp, #0x10
	strb r1, [r6, r0]
	mov r4, #0
_022465BE:
	mov r1, #0
	add r2, r6, #0
	add r3, r7, #0
_022465C4:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _022465E0
	cmp r4, r0
	bne _022465E0
	ldr r5, [r3, #0x28]
	lsl r5, r5, #0x18
	lsr r5, r5, #0x1e
	cmp r0, r5
	bne _022465E0
	ldrb r0, [r6, r1]
	add r0, r0, #1
	strb r0, [r6, r1]
	b _022465EA
_022465E0:
	add r1, r1, #1
	add r2, r2, #1
	add r3, #0x2c
	cmp r1, #4
	blt _022465C4
_022465EA:
	cmp r1, #4
	beq _022465F4
	add r4, r4, #1
	cmp r4, #4
	blt _022465BE
_022465F4:
	mov r3, #0
	add r1, sp, #0x10
	add r2, r7, #0
	mov r4, #0xc0
_022465FC:
	ldrb r5, [r1]
	cmp r5, #0xff
	beq _0224660E
	ldr r0, [r2, #0x28]
	lsl r5, r5, #0x1e
	bic r0, r4
	lsr r5, r5, #0x18
	orr r0, r5
	str r0, [r2, #0x28]
_0224660E:
	add r3, r3, #1
	add r1, r1, #1
	add r2, #0x2c
	cmp r3, #4
	blt _022465FC
	ldr r0, [sp, #0xc]
	mov r1, #0x2c
	mul r1, r0
	add r0, r7, r1
	ldr r2, [r0, #0x28]
	mov r1, #0x30
	bic r2, r1
	mov r1, #0x10
	orr r2, r1
	mov r1, #0xc0
	bic r2, r1
	mov r1, ip
	str r2, [r0, #0x28]
	cmp r1, #4
	beq _0224664C
	mov r1, ip
	str r1, [sp]
	ldr r1, _02246664 ; =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #1
	bl ov17_02245F14
	b _0224665E
_0224664C:
	ldr r1, _02246664 ; =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
_0224665E:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02246664: .word 0x00007530
	thumb_func_end ov17_02246578

	thumb_func_start ov17_02246668
ov17_02246668: ; 0x02246668
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r0, #4
	str r3, [sp, #0xc]
	mov ip, r0
	add r7, r1, #0
	mov r0, #0
	add r2, sp, #0x10
	mov r3, #0xff
_0224667A:
	ldr r4, [r1, #0x28]
	lsl r5, r4, #0x1a
	lsr r5, r5, #0x1e
	bne _02246686
	strb r3, [r2]
	b _0224669C
_02246686:
	cmp r5, #2
	bne _02246694
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	cmp r4, #3
	bne _02246694
	mov ip, r0
_02246694:
	ldr r4, [r1, #0x28]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	strb r4, [r2]
_0224669C:
	add r0, r0, #1
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	add r1, #0x2c
	add r2, r2, #1
	cmp r0, #4
	blt _0224667A
	ldr r0, [sp, #0xc]
	mov r1, #0xff
	add r6, sp, #0x10
	strb r1, [r6, r0]
	mov r4, #3
_022466B4:
	mov r1, #0
	add r2, r6, #0
	add r3, r7, #0
_022466BA:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _022466D6
	cmp r4, r0
	bne _022466D6
	ldr r5, [r3, #0x28]
	lsl r5, r5, #0x18
	lsr r5, r5, #0x1e
	cmp r0, r5
	bne _022466D6
	ldrb r0, [r6, r1]
	sub r0, r0, #1
	strb r0, [r6, r1]
	b _022466E4
_022466D6:
	add r0, r1, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	add r2, r2, #1
	add r3, #0x2c
	cmp r1, #4
	blt _022466BA
_022466E4:
	cmp r1, #4
	beq _022466F6
	sub r0, r4, #1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bgt _022466B4
_022466F6:
	mov r3, #0
	add r1, sp, #0x10
	add r2, r7, #0
	mov r4, #0xc0
_022466FE:
	ldrb r5, [r1]
	cmp r5, #0xff
	beq _02246710
	ldr r0, [r2, #0x28]
	lsl r5, r5, #0x1e
	bic r0, r4
	lsr r5, r5, #0x18
	orr r0, r5
	str r0, [r2, #0x28]
_02246710:
	add r0, r3, #1
	lsl r0, r0, #0x18
	asr r3, r0, #0x18
	add r1, r1, #1
	add r2, #0x2c
	cmp r3, #4
	blt _022466FE
	ldr r0, [sp, #0xc]
	mov r1, #0x2c
	mul r1, r0
	add r0, r7, r1
	ldr r2, [r0, #0x28]
	mov r1, #0x30
	bic r2, r1
	mov r1, #0x20
	orr r2, r1
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0xc0
	orr r1, r2
	str r1, [r0, #0x28]
	mov r1, ip
	cmp r1, #4
	bne _02246754
	ldr r1, _02246770 ; =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	b _02246768
_02246754:
	mov r1, ip
	str r1, [sp]
	ldr r1, _02246770 ; =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #1
	bl ov17_02245F14
_02246768:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02246770: .word 0x00007530
	thumb_func_end ov17_02246668

	thumb_func_start ov17_02246774
ov17_02246774: ; 0x02246774
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r4, #0
	mov r0, #0x2c
	add r7, r3, #0
	mul r3, r0
	add r2, #9
	add r1, #0x1e
	ldrb r6, [r2, r3]
	mov r5, #0x14
	ldrsh r0, [r1, r3]
	mul r5, r6
	add r0, r0, r5
	strh r0, [r1, r3]
	ldrb r0, [r2, r3]
	cmp r0, #0
	beq _022467A2
	cmp r0, #1
	beq _022467A6
	cmp r0, #2
	beq _022467AA
	b _022467AE
_022467A2:
	mov r2, #0
	b _022467B0
_022467A6:
	mov r2, #1
	b _022467B0
_022467AA:
	mov r2, #2
	b _022467B0
_022467AE:
	mov r2, #3
_022467B0:
	ldr r0, _022467C8 ; =0x00007530
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, r3
	ldrb r1, [r0, #2]
	add r3, r7, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022467C8: .word 0x00007530
	thumb_func_end ov17_02246774

	thumb_func_start ov17_022467CC
ov17_022467CC: ; 0x022467CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #0xc]
	ldr r3, [r0, #0]
	ldr r0, [sp, #0xc]
	mov r6, #0x2c
	add r4, r0, #0
	add r0, r6, #0
	mul r4, r6
	add r5, r1, #0
	add r7, r5, r4
	add r0, #0xf3
	add r6, #0xf2
	ldrb r0, [r3, r0]
	ldrh r1, [r5, r4]
	ldrb r2, [r7, #3]
	ldrb r3, [r3, r6]
	bl ov17_02243AF0
	cmp r0, #0
	ble _02246824
	ldr r0, [r7, #0x28]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02246824
	add r1, r5, #0
	add r1, #0x1e
	ldrsh r0, [r1, r4]
	ldr r2, _0224682C ; =0x00007530
	ldr r3, [sp, #0xc]
	add r0, #0x14
	strh r0, [r1, r4]
	str r2, [sp]
	ldrh r1, [r5, r4]
	add r0, r7, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02246824:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224682C: .word 0x00007530
	thumb_func_end ov17_022467CC

	thumb_func_start ov17_02246830
ov17_02246830: ; 0x02246830
	mov r0, #1
	bx lr
	thumb_func_end ov17_02246830

	thumb_func_start ov17_02246834
ov17_02246834: ; 0x02246834
	push {r3, r4, lr}
	sub sp, #0xc
	mov r0, #0x2c
	add r4, r3, #0
	mul r4, r0
	add r0, r1, r4
	ldrb r2, [r0, #9]
	cmp r2, #0
	bne _02246860
	add r1, #0x1e
	ldrsh r2, [r1, r4]
	add r2, #0x1e
	strh r2, [r1, r4]
	ldr r1, _02246878 ; =0x00007530
	mov r2, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	b _02246870
_02246860:
	ldr r1, _02246878 ; =0x00007530
	mov r2, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
_02246870:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02246878: .word 0x00007530
	thumb_func_end ov17_02246834

	thumb_func_start ov17_0224687C
ov17_0224687C: ; 0x0224687C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsl r4, r3, #1
	add r2, r1, #0
	add r4, r0, r4
	ldr r0, _022468C8 ; =0x00000256
	mov r1, #0x2c
	add r7, r3, #0
	mul r7, r1
	ldrh r1, [r2, r7]
	ldrh r0, [r4, r0]
	cmp r1, r0
	beq _022468C2
	add r6, r2, #0
	add r6, #0xb0
	lsl r5, r3, #2
	lsl r1, r1, #0x10
	ldr r4, [r6, r5]
	ldr r0, _022468CC ; =0xFFFF0000
	lsr r1, r1, #0x10
	and r0, r4
	orr r0, r1
	str r0, [r6, r5]
	ldr r0, _022468D0 ; =0x00007530
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r2, r7
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022468C2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022468C8: .word 0x00000256
_022468CC: .word 0xFFFF0000
_022468D0: .word 0x00007530
	thumb_func_end ov17_0224687C

	thumb_func_start ov17_022468D4
ov17_022468D4: ; 0x022468D4
	push {r4, r5, lr}
	sub sp, #0xc
	mov r0, #0x2c
	add r4, r3, #0
	add r5, r1, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #3]
	add r2, r5, #0
	add r2, #0x1e
	add r1, r5, r0
	mov r0, #0xc0
	ldrsb r0, [r1, r0]
	ldrsh r1, [r2, r4]
	add r1, r1, r0
	strh r1, [r2, r4]
	mov r1, #0xa
	bl _s32_div_f
	ldr r3, _02246914 ; =0x00007530
	mov r2, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02246914: .word 0x00007530
	thumb_func_end ov17_022468D4

	thumb_func_start ov17_02246918
ov17_02246918: ; 0x02246918
	push {r3, r4, lr}
	sub sp, #0xc
	mov r0, #0x2c
	add r4, r3, #0
	mul r4, r0
	add r0, r1, r4
	ldrb r2, [r0, #9]
	cmp r2, #3
	bne _02246944
	add r1, #0x1e
	ldrsh r2, [r1, r4]
	add r2, #0x96
	strh r2, [r1, r4]
	ldr r1, _0224695C ; =0x00007530
	mov r2, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	b _02246954
_02246944:
	ldr r1, _0224695C ; =0x00007530
	mov r2, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
_02246954:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0224695C: .word 0x00007530
	thumb_func_end ov17_02246918

	thumb_func_start ov17_02246960
ov17_02246960: ; 0x02246960
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0x2c
	add r7, r3, #0
	add r4, r1, #0
	mul r7, r0
	add r1, r4, r7
	ldr r0, [r1, #0x28]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224697E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224697E:
	mov r3, #0
	mov r0, #0xc3
_02246982:
	add r2, r4, r3
	ldrsb r2, [r2, r0]
	cmp r2, #0
	bne _02246990
	add r3, r3, #1
	cmp r3, #3
	blt _02246982
_02246990:
	cmp r3, #3
	bne _0224699A
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224699A:
	ldr r2, [r1, #0x28]
	mov r0, #8
	orr r0, r2
	mov r3, #0xc3
	str r0, [r1, #0x28]
	mov r2, #0
	add r5, r3, #0
_022469A8:
	add r0, r4, r2
	ldrsb r6, [r0, r5]
	cmp r6, #0
	ble _022469B8
	ldrsb r6, [r0, r3]
	add r0, #0xc3
	sub r6, #0xa
	strb r6, [r0]
_022469B8:
	add r2, r2, #1
	cmp r2, #3
	blt _022469A8
	ldr r3, _022469D8 ; =0x00007530
	add r0, r1, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r1, r4, r7
	ldrb r1, [r1, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022469D8: .word 0x00007530
	thumb_func_end ov17_02246960

	thumb_func_start ov17_022469DC
ov17_022469DC: ; 0x022469DC
	mov r0, #0x2c
	mul r0, r3
	add r2, r1, r0
	ldr r1, [r2, #0x28]
	ldr r0, _022469F8 ; =0xFFF00FFF
	and r1, r0
	ldrb r0, [r2, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r2, #0x28]
	mov r0, #1
	bx lr
	nop
_022469F8: .word 0xFFF00FFF
	thumb_func_end ov17_022469DC

	thumb_func_start ov17_022469FC
ov17_022469FC: ; 0x022469FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r2, r1, #0
	ldr r1, [sp, #0x20]
	add r4, r0, #0
	mov ip, r3
	cmp r1, #4
	bge _02246A28
	ldr r7, _02246A48 ; =0x00000231
	mov r6, #0x2c
	mov r3, #2
_02246A12:
	add r0, r4, r1
	ldrb r0, [r0, r7]
	add r1, r1, #1
	add r5, r0, #0
	mul r5, r6
	add r0, r2, r5
	ldr r5, [r0, #0x28]
	orr r5, r3
	str r5, [r0, #0x28]
	cmp r1, #4
	blt _02246A12
_02246A28:
	ldr r3, _02246A4C ; =0x00007530
	mov r1, #0x2c
	mov r0, ip
	str r3, [sp]
	mul r1, r0
	str r3, [sp, #4]
	add r0, r2, r1
	str r3, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02246A48: .word 0x00000231
_02246A4C: .word 0x00007530
	thumb_func_end ov17_022469FC

	thumb_func_start ov17_02246A50
ov17_02246A50: ; 0x02246A50
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bne _02246A62
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02246A62:
	sub r1, r1, #1
	add r1, r0, r1
	ldr r0, _02246AA8 ; =0x00000231
	ldrb r4, [r1, r0]
	mov r0, #0x2c
	add r1, r4, #0
	mul r1, r0
	add r2, r5, r1
	mov r1, #8
	ldrsb r2, [r2, r1]
	cmp r2, #0
	bne _02246A80
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02246A80:
	add r1, r3, #0
	mul r1, r0
	add r0, r5, #0
	add r0, #0x1e
	ldrsh r6, [r0, r1]
	add r2, r6, r2
	strh r2, [r0, r1]
	ldr r0, _02246AAC ; =0x00007530
	str r4, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, r1
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02246AA8: .word 0x00000231
_02246AAC: .word 0x00007530
	thumb_func_end ov17_02246A50

	thumb_func_start ov17_02246AB0
ov17_02246AB0: ; 0x02246AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r3, #0
	add r0, sp, #0x18
	add r1, sp, #0x14
_02246AC0:
	lsl r2, r3, #0x18
	lsr r2, r2, #0x18
	strb r2, [r0]
	strb r2, [r1]
	add r2, r3, #1
	lsl r2, r2, #0x18
	asr r3, r2, #0x18
	add r0, r0, #1
	add r1, r1, #1
	cmp r3, #4
	blt _02246AC0
	mov r4, #0
	add r7, sp, #0x18
	add r6, sp, #0x14
_02246ADC:
	ldr r0, [r5, #0]
	bl sub_02094E98
	mov r1, #4
	sub r1, r1, r4
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r2, r0, #0x18
	mov r1, #0
	add r3, r6, #0
_02246AF2:
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _02246B0A
	cmp r2, #0
	bne _02246B04
	mov r0, #0xff
	strb r4, [r7, r1]
	strb r0, [r6, r1]
	b _02246B16
_02246B04:
	sub r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
_02246B0A:
	add r0, r1, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	add r3, r3, #1
	cmp r1, #4
	blt _02246AF2
_02246B16:
	add r0, r4, #1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	cmp r4, #4
	blt _02246ADC
	ldr r1, [sp, #0xc]
	mov r3, #0
	add r2, sp, #0x18
	mov r4, #0x30
	mov r7, #0x30
	mov r5, #0xc0
_02246B2C:
	ldr r0, [r1, #0x28]
	bic r0, r4
	orr r0, r7
	str r0, [r1, #0x28]
	ldrb r6, [r2]
	bic r0, r5
	add r2, r2, #1
	lsl r6, r6, #0x1e
	lsr r6, r6, #0x18
	orr r0, r6
	str r0, [r1, #0x28]
	add r0, r3, #1
	lsl r0, r0, #0x18
	asr r3, r0, #0x18
	add r1, #0x2c
	cmp r3, #4
	blt _02246B2C
	ldr r3, _02246B70 ; =0x00007530
	ldr r0, [sp, #0x10]
	mov r1, #0x2c
	mul r1, r0
	str r3, [sp]
	ldr r0, [sp, #0xc]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r0, r1
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02246B70: .word 0x00007530
	thumb_func_end ov17_02246AB0

	thumb_func_start ov17_02246B74
ov17_02246B74: ; 0x02246B74
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	cmp r0, #3
	bne _02246BB6
	add r4, r3, #0
	mov r0, #0x2c
	add r3, r5, #0
	add r2, r5, #0
	mul r4, r0
	add r3, #0x18
	add r2, #0x1e
	ldrsh r1, [r2, r4]
	ldrsh r0, [r3, r4]
	add r0, r1, r0
	strh r0, [r2, r4]
	ldrsh r0, [r3, r4]
	mov r1, #0xa
	bl _s32_div_f
	ldr r3, _02246BBC ; =0x00007530
	mov r2, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02246BB6:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02246BBC: .word 0x00007530
	thumb_func_end ov17_02246B74

	thumb_func_start ov17_02246BC0
ov17_02246BC0: ; 0x02246BC0
	push {r4, r5, lr}
	sub sp, #0xc
	mov r0, #0x2c
	add r4, r3, #0
	add r5, r1, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #3]
	add r1, r5, r0
	mov r0, #0xc0
	ldrsb r0, [r1, r0]
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, _02246C08 ; =0x02253AF0
	add r2, r5, #0
	add r2, #0x1e
	ldrb r0, [r1, r0]
	ldrsh r1, [r2, r4]
	add r1, r1, r0
	strh r1, [r2, r4]
	mov r1, #0xa
	bl _s32_div_f
	ldr r3, _02246C0C ; =0x00007530
	mov r2, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02246C08: .word 0x02253AF0
_02246C0C: .word 0x00007530
	thumb_func_end ov17_02246BC0

	thumb_func_start ov17_02246C10
ov17_02246C10: ; 0x02246C10
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02246C42
	add r4, r3, #0
	mov r0, #0x2c
	add r2, r1, #0
	mul r4, r0
	add r2, #0x1e
	ldrsh r0, [r2, r4]
	ldr r3, _02246C48 ; =0x00007530
	add r0, #0x14
	strh r0, [r2, r4]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r1, r4
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02246C42:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02246C48: .word 0x00007530
	thumb_func_end ov17_02246C10

	thumb_func_start ov17_02246C4C
ov17_02246C4C: ; 0x02246C4C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, [sp, #0x18]
	cmp r0, #3
	bne _02246C7E
	add r4, r3, #0
	mov r0, #0x2c
	add r2, r1, #0
	mul r4, r0
	add r2, #0x1e
	ldrsh r0, [r2, r4]
	ldr r3, _02246C84 ; =0x00007530
	add r0, #0x14
	strh r0, [r2, r4]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r1, r4
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02246C7E:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02246C84: .word 0x00007530
	thumb_func_end ov17_02246C4C

	thumb_func_start ov17_02246C88
ov17_02246C88: ; 0x02246C88
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r2, r1, #0
	ldr r1, [sp, #0x20]
	add r4, r0, #0
	mov ip, r3
	cmp r1, #4
	bge _02246CB4
	ldr r7, _02246CD4 ; =0x00000231
	mov r6, #0x2c
	mov r3, #4
_02246C9E:
	add r0, r4, r1
	ldrb r0, [r0, r7]
	add r1, r1, #1
	add r5, r0, #0
	mul r5, r6
	add r0, r2, r5
	ldr r5, [r0, #0x28]
	orr r5, r3
	str r5, [r0, #0x28]
	cmp r1, #4
	blt _02246C9E
_02246CB4:
	ldr r3, _02246CD8 ; =0x00007530
	mov r1, #0x2c
	mov r0, ip
	str r3, [sp]
	mul r1, r0
	str r3, [sp, #4]
	add r0, r2, r1
	str r3, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02246CD4: .word 0x00000231
_02246CD8: .word 0x00007530
	thumb_func_end ov17_02246C88

	thumb_func_start ov17_02246CDC
ov17_02246CDC: ; 0x02246CDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	add r4, r1, #0
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _02246CF2
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02246CF2:
	sub r0, r0, #1
	add r1, r5, r0
	ldr r0, _02246D98 ; =0x00000231
	mov r3, #0x2c
	ldrb r0, [r1, r0]
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	add r0, r1, #0
	mul r0, r3
	add r7, r4, r0
	str r0, [sp, #0x20]
	ldr r0, [r7, #0x28]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02246D24
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	mul r1, r3
	add r0, r4, r1
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x28]
	str r1, [sp, #0x10]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _02246D2A
_02246D24:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02246D2A:
	ldr r0, [r5, #0]
	add r1, r3, #0
	mov ip, r0
	add r1, #0xf3
	ldrb r0, [r0, r1]
	add r3, #0xf2
	mov r6, ip
	ldrh r1, [r7]
	ldrb r2, [r7, #3]
	ldrb r3, [r6, r3]
	bl ov17_02243AF0
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, r4, r2
	ldr r5, [r5, #0]
	ldr r3, _02246D9C ; =0x0000011F
	str r0, [sp, #0x1c]
	ldrb r0, [r5, r3]
	sub r3, r3, #1
	ldrh r1, [r1]
	ldrb r2, [r2, #3]
	ldrb r3, [r5, r3]
	bl ov17_02243AF0
	cmp r0, #0
	ble _02246D92
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _02246D92
	add r2, r4, #0
	ldr r0, [sp, #0x20]
	add r2, #0x1e
	ldrsh r1, [r2, r0]
	ldr r3, [sp, #0xc]
	add r1, #0x1e
	strh r1, [r2, r0]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	str r0, [sp]
	ldr r0, _02246DA0 ; =0x00007530
	add r1, r4, r1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r1, [r1, #2]
	add r0, r7, #0
	mov r2, #0
	bl ov17_02245F14
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02246D92:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02246D98: .word 0x00000231
_02246D9C: .word 0x0000011F
_02246DA0: .word 0x00007530
	thumb_func_end ov17_02246CDC

	thumb_func_start ov17_02246DA4
ov17_02246DA4: ; 0x02246DA4
	push {r4, r5, lr}
	sub sp, #0xc
	add r0, r1, #0
	mov r1, #0x2c
	mul r1, r3
	add r4, r0, r1
	mov r1, #0x1e
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x18]
	ldr r5, _02246E00 ; =0x02253AEC
	ldrb r5, [r5, r1]
	add r2, r2, r5
	strh r2, [r4, #0x1e]
	cmp r1, #3
	bhi _02246DE2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246DCE: ; jump table
	.short _02246DD6 - _02246DCE - 2 ; case 0
	.short _02246DDA - _02246DCE - 2 ; case 1
	.short _02246DDE - _02246DCE - 2 ; case 2
	.short _02246DE2 - _02246DCE - 2 ; case 3
_02246DD6:
	mov r2, #0
	b _02246DE4
_02246DDA:
	mov r2, #1
	b _02246DE4
_02246DDE:
	mov r2, #2
	b _02246DE4
_02246DE2:
	mov r2, #3
_02246DE4:
	ldr r1, _02246E04 ; =0x00007530
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x2c
	mul r1, r3
	add r0, r0, r1
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02246E00: .word 0x02253AEC
_02246E04: .word 0x00007530
	thumb_func_end ov17_02246DA4

	thumb_func_start ov17_02246E08
ov17_02246E08: ; 0x02246E08
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bne _02246E18
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_02246E18:
	sub r2, r2, #1
	add r2, r0, r2
	ldr r0, _02246E60 ; =0x00000231
	ldrb r2, [r2, r0]
	mov r0, #0x2c
	mul r0, r2
	add r2, r1, r0
	mov r0, #8
	ldrsb r0, [r2, r0]
	cmp r0, #0x32
	bge _02246E32
	cmp r0, #0x50
	blt _02246E5A
_02246E32:
	add r2, r1, #0
	mov r0, #0x2c
	add r4, r3, #0
	mul r4, r0
	add r2, #0x1e
	ldrsh r0, [r2, r4]
	add r0, #0x1e
	strh r0, [r2, r4]
	ldr r0, _02246E64 ; =0x00007530
	mov r2, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r1, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02246E5A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02246E60: .word 0x00000231
_02246E64: .word 0x00007530
	thumb_func_end ov17_02246E08

	thumb_func_start ov17_02246E68
ov17_02246E68: ; 0x02246E68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r0, #0x2c
	mul r0, r3
	str r1, [sp, #0xc]
	mov r2, #0
	add r4, r1, #0
	mov ip, r0
	add r5, r1, r0
	mov r7, #0x1a
	mov r6, #0x1c
_02246E7E:
	cmp r2, r3
	beq _02246E8A
	ldrsh r1, [r4, r7]
	ldrsh r0, [r5, r6]
	cmp r1, r0
	blt _02246E92
_02246E8A:
	add r2, r2, #1
	add r4, #0x2c
	cmp r2, #4
	blt _02246E7E
_02246E92:
	cmp r2, #4
	beq _02246E9C
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02246E9C:
	ldr r2, [sp, #0xc]
	mov r0, ip
	add r2, #0x1e
	ldrsh r1, [r2, r0]
	mov r0, ip
	add r1, #0x1e
	strh r1, [r2, r0]
	ldr r0, _02246EC8 ; =0x00007530
	ldr r1, [sp, #0xc]
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, ip
	add r0, r1, r0
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246EC8: .word 0x00007530
	thumb_func_end ov17_02246E68

	.rodata


	.global Unk_ov17_02253AEC
Unk_ov17_02253AEC: ; 0x02253AEC
	.incbin "incbin/overlay17_rodata.bin", 0xD60, 0xD64 - 0xD60

	.global Unk_ov17_02253AF0
Unk_ov17_02253AF0: ; 0x02253AF0
	.incbin "incbin/overlay17_rodata.bin", 0xD64, 0xD6C - 0xD64

	.global Unk_ov17_02253AF8
Unk_ov17_02253AF8: ; 0x02253AF8
	.incbin "incbin/overlay17_rodata.bin", 0xD6C, 0xC0

