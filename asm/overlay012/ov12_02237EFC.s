	.include "macros/function.inc"
	.include "overlay012/ov12_02237EFC.inc"

	

	.text


	thumb_func_start ov12_02237EFC
ov12_02237EFC: ; 0x02237EFC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x48
	add r6, r0, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02237F14
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
_02237F14:
	bl ov12_02220474
	str r6, [r4, #0]
	cmp r5, #0
	beq _02237F22
	ldr r0, [r5, #0]
	str r0, [r4, #4]
_02237F22:
	mov r1, #0
	add r2, r4, #0
	add r0, r1, #0
_02237F28:
	add r1, r1, #1
	str r0, [r2, #8]
	add r2, r2, #4
	cmp r1, #0x10
	blt _02237F28
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02237EFC

	thumb_func_start ov12_02237F38
ov12_02237F38: ; 0x02237F38
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r4, #0
	add r3, r0, #0
_02237F40:
	ldr r2, [r3, #8]
	cmp r2, #0
	bne _02237F60
	add r4, r0, #0
	ldr r0, [r0, #0]
	add r4, #8
	lsl r6, r5, #2
	bl ov12_02237FC8
	str r0, [r4, r6]
	ldr r0, [r4, r6]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r4, [r4, r6]
	str r5, [r4, #0]
	b _02237F68
_02237F60:
	add r5, r5, #1
	add r3, r3, #4
	cmp r5, #0x10
	blt _02237F40
_02237F68:
	cmp r4, #0
	bne _02237F70
	bl GF_AssertFail
_02237F70:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02237F38

	thumb_func_start ov12_02237F74
ov12_02237F74: ; 0x02237F74
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02237F7C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02237F86
	bl sub_020181C4
_02237F86:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _02237F7C
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02237F74

	thumb_func_start ov12_02237F98
ov12_02237F98: ; 0x02237F98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02237F9E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02237FBC
	ldr r0, [r0, #0x10]
	bl ov12_02223894
	ldr r1, [r5, #8]
	ldr r0, [r1, #0x20]
	cmp r0, #0
	beq _02237FBC
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _02237FBC
	bl sub_0200DA58
_02237FBC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _02237F9E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02237F98

	thumb_func_start ov12_02237FC8
ov12_02237FC8: ; 0x02237FC8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x24
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02237FE0
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
_02237FE0:
	str r5, [r4, #4]
	ldr r1, [r6, #0]
	ldr r0, [r6, #4]
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	bl ov12_02238088
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	bl ov12_022237F0
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02237FC8

	thumb_func_start ov12_02238004
ov12_02238004: ; 0x02238004
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	str r1, [r4, #0x20]
	ldr r1, _02238024 ; =ov12_02238080
	bl ov12_02238054
	mov r2, #0xfa
	ldr r0, _02238028 ; =ov12_02238030
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	str r0, [r4, #0x18]
	pop {r4, pc}
	nop
_02238024: .word ov12_02238080
_02238028: .word ov12_02238030
	thumb_func_end ov12_02238004

	thumb_func_start ov12_0223802C
ov12_0223802C: ; 0x0223802C
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov12_0223802C

	thumb_func_start ov12_02238030
ov12_02238030: ; 0x02238030
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02014710
	cmp r0, #0
	bne _02238050
	mov r0, #0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	bl ov12_02223894
	add r0, r5, #0
	bl sub_0200DA58
_02238050:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02238030

	thumb_func_start ov12_02238054
ov12_02238054: ; 0x02238054
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r6, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _02238076
_02238062:
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_020146F4
	ldr r0, [r5, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blt _02238062
_02238076:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0xc]
	bl sub_02014788
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02238054

	thumb_func_start ov12_02238080
ov12_02238080: ; 0x02238080
	ldr r3, _02238084 ; =sub_02014764
	bx r3
	; .align 2, 0
_02238084: .word sub_02014764
	thumb_func_end ov12_02238080

	thumb_func_start ov12_02238088
ov12_02238088: ; 0x02238088
	push {r3, r4, r5, lr}
	sub sp, #0x58
	ldr r4, _022380B8 ; =0x0223B048
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #0xb
_02238094:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02238094
	sub r0, r5, #5
	cmp r0, #0x16
	blo _022380AC
	bl GF_AssertFail
	add sp, #0x58
	mov r0, #0
	pop {r3, r4, r5, pc}
_022380AC:
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x58
	pop {r3, r4, r5, pc}
	nop
_022380B8: .word 0x0223B048
	thumb_func_end ov12_02238088

	.rodata


	.global Unk_ov12_0223B048
Unk_ov12_0223B048: ; 0x0223B048
	.incbin "incbin/overlay12_rodata.bin", 0x2AB4, 0x58

