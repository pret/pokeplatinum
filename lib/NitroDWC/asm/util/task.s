	.include "macros/function.inc"
	.include "include/task.inc"

	

	.text


	arm_func_start ov18_022460F8
ov18_022460F8: ; 0x022460F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0x80
	mov r1, #4
	bl ov18_02245068
	mov r8, #0
	ldr r4, _02246204 ; =0x02253424
	ldr sb, _02246208 ; =0x0224973C
	mov sl, r8
	str r0, [r4, #0]
	mov r7, r8
	mov r6, #0xff
	mov r5, #1
	mov fp, #0x14
_0224612C:
	ldr r0, [r4, #0]
	ldrb r2, [sb]
	add r0, r0, r8, lsl #6
	mov r1, #4
	str r2, [r0, #0x34]
	ldrb r2, [sb]
	mul r0, r2, fp
	bl ov18_02245068
	ldr r1, [r4, #0]
	mov r2, #0x14
	add r1, r1, r8, lsl #6
	str r0, [r1, #0x3c]
	ldr r1, [r4, #0]
	ldrb r0, [sb]
	add r1, r1, r8, lsl #6
	ldr r1, [r1, #0x3c]
	bl ov18_02244008
	ldr r1, [r4, #0]
	str r0, [r1, r8, lsl #6]
	ldrb r0, [sb], #1
	bl ov18_02243FD4
	ldr r1, [r4, #0]
	add r1, r1, r8, lsl #6
	str r0, [r1, #4]
	bl ov18_02245974
	ldr r1, [r4, #0]
	add r1, r1, r8, lsl #6
	str r0, [r1, #8]
	ldr r0, [r4, #0]
	add r0, r0, r8, lsl #6
	strb r7, [r0, #0x1c]
	ldr r0, [r4, #0]
	add r0, r0, r8, lsl #6
	strb r6, [r0, #0x30]
	ldr r1, [r4, #0]
	add r0, r1, r8, lsl #6
	add r1, r1, sl
	ldr r0, [r0, #8]
	add r1, r1, #0xc
	bl ov18_02245A34
	ldr r1, [r4, #0]
	add r0, r1, r8, lsl #6
	add r1, r1, sl
	ldr r0, [r0, #8]
	add r1, r1, #0x20
	bl ov18_02245A24
	ldr r0, [r4, #0]
	add sl, sl, #0x40
	add r0, r0, r8, lsl #6
	add r8, r8, #1
	strb r5, [r0, #0x38]
	cmp r8, #2
	blt _0224612C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02246204: .word Unk_ov18_02253424
_02246208: .word Unk_ov18_0224973C
	arm_func_end ov18_022460F8

	arm_func_start ov18_0224620C
ov18_0224620C: ; 0x0224620C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0224624C ; =0x02253424
	mov r5, #0
_02246218:
	ldr r0, [r4, #0]
	add r0, r0, r5, lsl #6
	ldr r0, [r0, #8]
	bl ov18_022459A0
	ldr r0, [r4, #0]
	ldr r0, [r0, r5, lsl #6]
	bl ov18_02244048
	add r5, r5, #1
	cmp r5, #2
	blt _02246218
	ldr r0, _02246250 ; =0x02253424
	bl ov18_0224508C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224624C: .word Unk_ov18_02253424
_02246250: .word Unk_ov18_02253424
	arm_func_end ov18_0224620C

	arm_func_start ov18_02246254
ov18_02246254: ; 0x02246254
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _02246300 ; =0x02253424
	mov r6, r0
	ldr r0, [r5, #0]
	add r2, r0, r6, lsl #6
	ldrb r1, [r2, #0x38]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, [r2, #0x10]
	add r1, r2, #0x20
	cmp r4, r1
	beq _022462AC
_02246284:
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #8]
	mov r0, r4
	blx r2
	ldr r0, [r5, #0]
	ldr r4, [r4, #4]
	add r1, r0, r6, lsl #6
	add r1, r1, #0x20
	cmp r4, r1
	bne _02246284
_022462AC:
	add r1, r0, r6, lsl #6
	ldr r1, [r1, #0x34]
	mov r4, r6, lsl #6
	mov r5, #0
	cmp r1, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _02246300 ; =0x02253424
_022462C8:
	add r0, r4, r0
	ldr r0, [r0, #4]
	bl ov18_022440BC
	movs r1, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl ov18_022463D8
	ldr r0, [r7, #0]
	add r5, r5, #1
	add r1, r4, r0
	ldr r1, [r1, #0x34]
	cmp r5, r1
	blt _022462C8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246300: .word Unk_ov18_02253424
	arm_func_end ov18_02246254

	arm_func_start ov18_02246304
ov18_02246304: ; 0x02246304
	stmfd sp!, {r3, lr}
	mov ip, #0
	str ip, [sp]
	bl ov18_02246318
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02246304

	arm_func_start ov18_02246318
ov18_02246318: ; 0x02246318
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _022463A0 ; =0x02253424
	mov r7, r0
	ldr r0, [r4, #0]
	mov r8, r1
	ldr r0, [r0, r7, lsl #6]
	mov r5, r2
	mov r6, r3
	bl ov18_022440BC
	mov r4, r0
	str r8, [r4, #8]
	str r5, [r4, #0xc]
	ldrb r1, [sp, #0x18]
	strb r6, [r4, #0x10]
	mov r0, #1
	strb r1, [r4, #0x11]
	bl OS_DisableIrqMask
	ldr r1, _022463A0 ; =0x02253424
	mov r5, r0
	ldr r0, [r1, #0]
	add r0, r0, r7, lsl #6
	ldr r0, [r0, #0x10]
_02246370:
	ldrb r1, [r0, #0x10]
	cmp r6, r1
	bhs _02246388
	mov r1, r4
	bl ov18_022459F4
	b _02246390
_02246388:
	ldr r0, [r0, #4]
	b _02246370
_02246390:
	mov r0, r5
	bl OS_EnableIrqMask
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022463A0: .word Unk_ov18_02253424
	arm_func_end ov18_02246318

	arm_func_start ov18_022463A4
ov18_022463A4: ; 0x022463A4
	str r1, [r0, #8]
	bx lr
	arm_func_end ov18_022463A4

	arm_func_start ov18_022463AC
ov18_022463AC: ; 0x022463AC
	ldr r2, _022463C4 ; =0x02253424
	ldr ip, _022463C8 ; =ov18_02244064
	ldr r2, [r2, #0]
	add r0, r2, r0, lsl #6
	ldr r0, [r0, #4]
	bx ip
	; .align 2, 0
_022463C4: .word Unk_ov18_02253424
_022463C8: .word ov18_02244064
	arm_func_end ov18_022463AC

	arm_func_start ov18_022463CC
ov18_022463CC: ; 0x022463CC
	ldr ip, _022463D4 ; =ov18_022463D8
	bx ip
	; .align 2, 0
_022463D4: .word ov18_022463D8
	arm_func_end ov18_022463CC

	arm_func_start ov18_022463D8
ov18_022463D8: ; 0x022463D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #0x11]
	mov r5, r0
	cmp r1, #0
	beq _022463F8
	add r0, r4, #0xc
	bl ov18_0224508C
_022463F8:
	mov r0, r4
	bl ov18_022459BC
	ldr r0, _02246418 ; =0x02253424
	mov r1, r4
	ldr r0, [r0, #0]
	ldr r0, [r0, r5, lsl #6]
	bl ov18_02244064
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02246418: .word Unk_ov18_02253424
	arm_func_end ov18_022463D8

	arm_func_start ov18_0224641C
ov18_0224641C: ; 0x0224641C
	ldr r2, _02246430 ; =0x02253424
	ldr r2, [r2, #0]
	add r0, r2, r0, lsl #6
	strb r1, [r0, #0x38]
	bx lr
	; .align 2, 0
_02246430: .word Unk_ov18_02253424
	arm_func_end ov18_0224641C

	.rodata


	.global Unk_ov18_0224973C
Unk_ov18_0224973C: ; 0x0224973C
	.incbin "incbin/overlay18_rodata.bin", 0x3308, 0x2



	.bss


	.global Unk_ov18_02253424
Unk_ov18_02253424: ; 0x02253424
	.space 0x4

