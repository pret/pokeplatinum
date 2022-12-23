	.include "macros/function.inc"
	.include "overlay022/ov22_022597BC.inc"

	

	.text


	thumb_func_start ov22_022597BC
ov22_022597BC: ; 0x022597BC
	add r2, r0, #0
	ldr r0, [r1, #0]
	str r0, [r2, #0]
	ldr r3, [r1, #0x14]
	asr r0, r3, #2
	lsr r0, r0, #0x1d
	add r0, r3, r0
	asr r0, r0, #3
	str r0, [r2, #0xc]
	ldr r3, [r1, #0x18]
	asr r0, r3, #2
	lsr r0, r0, #0x1d
	add r0, r3, r0
	asr r0, r0, #3
	str r0, [r2, #0x10]
	ldr r0, [r1, #0x1c]
	ldr r3, _02259800 ; =ov22_022599A0
	str r0, [r2, #0x1c]
	ldr r0, [r1, #0x24]
	str r0, [r2, #0x20]
	ldr r0, [r1, #0x20]
	str r0, [r2, #0x24]
	ldr r0, [r1, #0x28]
	str r0, [r2, #0x28]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldr r0, [r1, #0x10]
	str r0, [r2, #8]
	add r0, r1, #0
	add r1, r2, #0
	add r1, #0x14
	add r2, #0x18
	bx r3
	nop
_02259800: .word ov22_022599A0
	thumb_func_end ov22_022597BC

	thumb_func_start ov22_02259804
ov22_02259804: ; 0x02259804
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x2c
	bl memset
	pop {r4, pc}
	thumb_func_end ov22_02259804

	thumb_func_start ov22_02259820
ov22_02259820: ; 0x02259820
	ldr r2, [r1, #0]
	str r2, [r0, #0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	mov r2, #0
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov22_02259820

	thumb_func_start ov22_02259838
ov22_02259838: ; 0x02259838
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r0, r1
	str r1, [r5, #0xc]
	ldr r0, [r5, #8]
	cmp r1, r0
	ble _0225989C
	mov r2, #0
	str r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0225985C
	ldr r1, [r5, #4]
	mov r0, #1
	str r0, [r5, #0x10]
	b _02259862
_0225985C:
	ldr r0, [r5, #0]
	ldr r1, [r0, #8]
	str r2, [r5, #0x10]
_02259862:
	ldr r0, [r5, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	add r3, sp, #0x14
	ldr r0, [r0, #4]
	bl sub_02006F6C
	ldr r3, [r5, #0]
	add r4, r0, #0
	ldr r0, [r3, #0x18]
	str r0, [sp]
	ldr r0, [r3, #0xc]
	str r0, [sp, #4]
	ldr r0, [r3, #0x10]
	str r0, [sp, #8]
	ldr r0, [r3, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r3, #0]
	ldr r1, [r3, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [r3, #0x14]
	bl ov22_02259ABC
	add r0, r4, #0
	bl sub_020181C4
_0225989C:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259838

	thumb_func_start ov22_022598A0
ov22_022598A0: ; 0x022598A0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r1, [r5, #0]
	ldr r0, [r5, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	add r3, sp, #0x14
	bl sub_02006F6C
	ldr r3, [r5, #0]
	add r4, r0, #0
	ldr r0, [r3, #0x18]
	str r0, [sp]
	ldr r0, [r3, #0xc]
	str r0, [sp, #4]
	ldr r0, [r3, #0x10]
	str r0, [sp, #8]
	ldr r0, [r3, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r3, #0]
	ldr r1, [r3, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [r3, #0x14]
	bl ov22_02259ABC
	add r0, r4, #0
	bl sub_020181C4
	mov r1, #0x18
	mov r0, #0
_022598E6:
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _022598E6
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_022598A0

	thumb_func_start ov22_022598F4
ov22_022598F4: ; 0x022598F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, _0225997C ; =ov22_02259A4C
	mov r1, #0x4c
	mov r2, #0
	mov r3, #0xd
	bl sub_0200679C
	bl sub_0201CED0
	add r4, r0, #0
	str r6, [r4, #0]
	add r7, r5, #0
	add r3, r4, #4
	mov r2, #6
_0225991A:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225991A
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	str r0, [r4, #0x34]
	ldr r0, [sp]
	str r1, [r4, #0x38]
	bl _s32_div_f
	str r0, [r4, #0x3c]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	bl _s32_div_f
	str r0, [r4, #0x40]
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x1c]
	bl sub_020192EC
	str r0, [r4, #0x44]
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x1c]
	bl sub_020192F8
	str r0, [r4, #0x48]
	mov r0, #0x80
	str r0, [r5, #0x28]
	mov r0, #5
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x14]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [r5, #0x18]
	mov r0, #0xe
	mov r1, #0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r2, r1, #0
	bl ov22_022599A0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225997C: .word ov22_02259A4C
	thumb_func_end ov22_022598F4

	thumb_func_start ov22_02259980
ov22_02259980: ; 0x02259980
	push {r3, r4}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r4, r2, #1
	mov r3, #0
	cmp r4, #0
	ble _0225999C
_0225998E:
	ldrh r2, [r0]
	add r3, r3, #1
	add r2, r2, r1
	strh r2, [r0]
	add r0, r0, #2
	cmp r3, r4
	blt _0225998E
_0225999C:
	pop {r3, r4}
	bx lr
	thumb_func_end ov22_02259980

	thumb_func_start ov22_022599A0
ov22_022599A0: ; 0x022599A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x14]
	add r6, r2, #0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	ldr r1, [r5, #0x18]
	str r0, [sp, #0x18]
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x28]
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0]
	ldr r3, [r5, #0x1c]
	bl ov22_02259B3C
	ldr r0, [r5, #0x1c]
	cmp r0, #4
	bge _022599E0
	mov r2, #0
	b _022599E2
_022599E0:
	mov r2, #4
_022599E2:
	ldr r0, [r5, #0x20]
	lsl r0, r0, #5
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	ldr r3, [r5, #0x24]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	lsl r3, r3, #5
	bl ov22_02259B8C
	ldr r0, [r5, #0x2c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x10]
	add r3, sp, #0x24
	bl sub_02006F6C
	ldr r2, [sp, #0x24]
	str r0, [sp, #0x20]
	ldrh r0, [r2]
	lsr r7, r0, #3
	ldrh r0, [r2, #2]
	add r3, r7, #0
	lsr r0, r0, #3
	str r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x1c]
	bl ov22_02259ABC
	ldr r0, [sp, #0x20]
	bl sub_020181C4
	cmp r4, #0
	beq _02259A3E
	str r7, [r4, #0]
_02259A3E:
	cmp r6, #0
	beq _02259A46
	ldr r0, [sp, #0x1c]
	str r0, [r6, #0]
_02259A46:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022599A0

	thumb_func_start ov22_02259A4C
ov22_02259A4C: ; 0x02259A4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x38]
	sub r0, r0, #1
	str r0, [r4, #0x38]
	ldr r1, [r4, #0]
	bmi _02259A80
	ldr r0, [r1, #0]
	ldr r1, [r1, #0x1c]
	ldr r3, [r4, #0x3c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #2
	bl sub_0201C63C
	ldr r1, [r4, #0]
	ldr r3, [r4, #0x40]
	ldr r0, [r1, #0]
	ldr r1, [r1, #0x1c]
	mov r2, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C63C
	pop {r3, r4, r5, pc}
_02259A80:
	ldr r0, [r1, #0]
	ldr r1, [r1, #0x1c]
	ldr r3, [r4, #0x44]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_0201C63C
	ldr r1, [r4, #0]
	ldr r3, [r4, #0x48]
	ldr r0, [r1, #0]
	ldr r1, [r1, #0x1c]
	mov r2, #3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C63C
	ldr r0, [r4, #0]
	add r1, r4, #4
	bl ov22_022597BC
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _02259AB4
	mov r0, #1
	str r0, [r1, #0]
_02259AB4:
	add r0, r5, #0
	bl sub_020067D0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259A4C

	thumb_func_start ov22_02259ABC
ov22_02259ABC: ; 0x02259ABC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r4, r2, #0
	add r7, r0, #0
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	add r6, r3, #0
	bl ov22_02259980
	ldr r1, [sp, #0x30]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	str r0, [sp]
	ldr r3, [sp, #0x38]
	str r2, [sp, #4]
	add r4, #0xc
	lsl r3, r3, #0x18
	str r4, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x34]
	lsl r1, r5, #0x18
	lsl r2, r2, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x34]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x38]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r5, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	add r0, r7, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
	lsl r1, r5, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_02259ABC

	thumb_func_start ov22_02259B3C
ov22_02259B3C: ; 0x02259B3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r1, #0x14
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02259B58:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02259B58
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	add r3, r4, #4
	bl sub_02006F50
	str r0, [r4, #8]
	str r5, [r4, #0]
	ldr r0, [sp, #0x20]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02259B88 ; =ov22_02259BD4
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA3C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02259B88: .word ov22_02259BD4
	thumb_func_end ov22_02259B3C

	thumb_func_start ov22_02259B8C
ov22_02259B8C: ; 0x02259B8C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0x14
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02259BA6:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02259BA6
	ldr r1, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02006F88
	str r0, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [sp, #0x18]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02259BD0 ; =ov22_02259C10
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02259BD0: .word ov22_02259C10
	thumb_func_end ov22_02259B8C

	thumb_func_start ov22_02259BD4
ov22_02259BD4: ; 0x02259BD4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl DC_FlushRange
	ldr r3, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r1, [r4, #0xc]
	ldr r2, [r3, #0x14]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	ldr r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl sub_0201958C
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02259BD4

	thumb_func_start ov22_02259C10
ov22_02259C10: ; 0x02259C10
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02259C34
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	bl GX_LoadBGPltt
	b _02259C44
_02259C34:
	cmp r0, #4
	bne _02259C44
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	bl GXS_LoadBGPltt
_02259C44:
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259C10