	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov21_021E8D48
ov21_021E8D48: ; 0x021E8D48
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r1, #0x7a
	ldr r0, [r5, #0xc]
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x7a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	ldr r1, _021E8DC8 ; =0x000001E7
	cmp r6, r1
	bne _021E8D86
	bl sub_02098988
	b _021E8D8C
_021E8D86:
	mov r0, #1
	bl sub_02098988
_021E8D8C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E8E0C
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl ov21_021E98D8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	mov r2, #0xa
	mov r3, #0xf
	bl ov21_021E98F8
	ldr r0, _021E8DCC ; =ov21_021E9828
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E8DC8: .word 0x000001E7
_021E8DCC: .word ov21_021E9828
	thumb_func_end ov21_021E8D48

	thumb_func_start ov21_021E8DD0
ov21_021E8DD0: ; 0x021E8DD0
	push {r4, lr}
	add r4, r0, #0
	bl ov21_021E900C
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E8DD0

	thumb_func_start ov21_021E8DEC
ov21_021E8DEC: ; 0x021E8DEC
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #4
	bne _021E8DFA
	mov r0, #1
	bx lr
_021E8DFA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E8DEC

	thumb_func_start ov21_021E8E00
ov21_021E8E00: ; 0x021E8E00
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov21_021E8E00

	thumb_func_start ov21_021E8E04
ov21_021E8E04: ; 0x021E8E04
	mov r2, #0x79
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov21_021E8E04

	thumb_func_start ov21_021E8E0C
ov21_021E8E0C: ; 0x021E8E0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	add r5, r0, #0
	mov r0, #0x45
	bl sub_02006C24
	add r6, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #0x10]
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	str r0, [r5, #0]
	ldr r2, [r4, #0xc]
	mov r0, #0x20
	add r1, #0x10
	bl sub_020095C4
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #0xc]
	bl sub_02022014
	ldr r0, [r4, #0xc]
	bl ov21_021E9A0C
	ldr r0, [r4, #0xc]
	mov r2, #0x30
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	mov r3, #0x48
	bl ov21_021E99E0
	str r0, [r5, #0xc]
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x10]
	add r0, sp, #4
	bl ov21_021D4C0C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0]
	ldr r1, [r4, #0xc]
	bl ov21_021E90B0
	mov r1, #0x3f
	add r2, r1, #0
	ldr r0, _021E9008 ; =0x04000050
	sub r2, #0x4f
	bl sub_020BF578
	ldr r0, [r5, #0]
	ldr r1, [r4, #0xc]
	bl ov21_021E91B0
	str r0, [r5, #4]
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r1, [r4, #0xc]
	add r0, r5, r0
	bl ov21_021E9208
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x14
	ldr r2, [r4, #0xc]
	add r1, r5, r1
	add r3, r6, #0
	bl ov21_021D2B88
	mov r2, #0x15
	lsl r2, r2, #4
	mov r0, #2
	str r0, [sp]
	add r1, r2, #0
	sub r1, #0x18
	add r0, r5, r2
	sub r2, #0x14
	ldr r1, [r5, r1]
	ldr r3, [r4, #0xc]
	add r2, r5, r2
	bl ov21_021D2D88
	ldr r0, [r4, #0x14]
	mov r3, #0x15
	lsl r3, r3, #4
	str r0, [sp]
	sub r1, r3, #4
	add r0, r5, r3
	add r3, #0x6c
	ldr r1, [r5, r1]
	ldr r2, [r4, #0xc]
	ldr r3, [r5, r3]
	bl ov21_021E9240
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0xac
	mov r2, #0x20
	bl ov21_021D1858
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl ov21_021D2E44
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r0, #0x2b
	cmp r2, r0
	bne _021E8F2C
	cmp r7, #0
	ble _021E8F2C
	mov r2, #0xb
_021E8F2C:
	mov r1, #6
	lsl r1, r1, #6
	add r0, r5, r1
	sub r1, #0x44
	ldr r3, [r4, #0xc]
	add r1, r5, r1
	bl ov21_021E9458
	mov r2, #6
	lsl r2, r2, #6
	add r1, r2, #0
	sub r1, #0x48
	add r0, r5, r2
	sub r2, #0x44
	ldr r1, [r5, r1]
	ldr r3, [r4, #0xc]
	add r2, r5, r2
	bl ov21_021E94B0
	mov r2, #0x67
	lsl r2, r2, #2
	str r6, [sp]
	add r1, r2, #0
	add r0, r5, r2
	add r2, #0x20
	sub r1, #0x60
	ldr r2, [r5, r2]
	ldr r3, [r4, #0xc]
	add r1, r5, r1
	bl ov21_021E95BC
	mov r2, #0x6f
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r1, r2, #0
	str r0, [sp]
	add r0, r2, #0
	sub r1, #0x84
	sub r0, #0x20
	sub r2, #0x80
	ldr r1, [r5, r1]
	ldr r3, [r4, #0xc]
	add r0, r5, r0
	add r2, r5, r2
	bl ov21_021E95F8
	mov r2, #0x69
	lsl r2, r2, #2
	add r0, r5, r2
	str r0, [sp]
	add r1, r2, #0
	add r0, r2, #0
	sub r1, #0x6c
	sub r0, #0x10
	sub r2, #0x68
	ldr r1, [r5, r1]
	ldr r3, [r4, #0xc]
	add r0, r5, r0
	add r2, r5, r2
	bl ov21_021E9504
	mov r3, #0x16
	lsl r3, r3, #4
	ldr r0, [r5, r3]
	add r1, r3, #0
	str r0, [sp]
	add r0, r3, #0
	sub r1, #0x14
	add r3, #0x5c
	add r0, #0x34
	ldr r1, [r5, r1]
	ldr r2, [r4, #0xc]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov21_021E9560
	ldr r0, [r5, #0]
	ldr r1, [r4, #0xc]
	add r2, r6, #0
	bl ov21_021E96A8
	ldr r0, [r5, #0]
	ldr r1, [r4, #0xc]
	add r2, r6, #0
	bl ov21_021E97C4
	mov r2, #0x6f
	lsl r2, r2, #2
	ldr r0, [r5, #4]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, r2]
	bl ov21_021E9968
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r5, r0
	add r3, r6, #0
	bl ov21_021E9A40
	mov r0, #0x79
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E9008: .word 0x04000050
	thumb_func_end ov21_021E8E0C

	thumb_func_start ov21_021E900C
ov21_021E900C: ; 0x021E900C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov21_021E9AC8
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov21_021E968C
	mov r1, #0x67
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x60
	add r1, r4, r1
	bl ov21_021E95EC
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov21_021E95B0
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov21_021E9554
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov21_021E94F8
	mov r1, #6
	lsl r1, r1, #6
	add r0, r4, r1
	sub r1, #0x44
	add r1, r4, r1
	bl ov21_021E94A4
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov21_021E92B0
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov21_021D2E1C
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r4, r1
	sub r1, #0x14
	add r1, r4, r1
	bl ov21_021D2C58
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov21_021E9228
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021964
	ldr r0, [r4, #4]
	bl ov21_021E91F0
	ldr r0, [r4, #0]
	bl ov21_021E9194
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov21_021D4C6C
	bl ov21_021E9A38
	pop {r4, pc}
	thumb_func_end ov21_021E900C

	thumb_func_start ov21_021E90B0
ov21_021E90B0: ; 0x021E90B0
	push {r4, r5, lr}
	sub sp, #0x54
	ldr r3, _021E9188 ; =0x021E9F30
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x38
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #1
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_02019044
	add r0, r5, #0
	mov r1, #1
	add r2, sp, #0x38
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r3, _021E918C ; =0x021E9F14
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #2
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_02019044
	add r0, r5, #0
	mov r1, #2
	add r2, sp, #0x1c
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	mov r1, #2
	bl sub_02019EBC
	mov r0, #0
	add r1, r0, #0
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	add r0, r5, #0
	mov r1, #0
	bl sub_02019044
	ldr r3, _021E9190 ; =0x021E9F4C
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #3
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_02019044
	add r0, r5, #0
	mov r1, #3
	add r2, sp, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	mov r1, #3
	bl sub_02019EBC
	add sp, #0x54
	pop {r4, r5, pc}
	; .align 2, 0
_021E9188: .word 0x021E9F30
_021E918C: .word 0x021E9F14
_021E9190: .word 0x021E9F4C
	thumb_func_end ov21_021E90B0

	thumb_func_start ov21_021E9194
ov21_021E9194: ; 0x021E9194
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov21_021E9194

	thumb_func_start ov21_021E91B0
ov21_021E91B0: ; 0x021E91B0
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl sub_0201A778
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	str r3, [sp, #0x10]
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_0201A954
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E91B0

	thumb_func_start ov21_021E91F0
ov21_021E91F0: ; 0x021E91F0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201ACF4
	add r0, r4, #0
	bl sub_0201A8FC
	add r0, r4, #0
	mov r1, #1
	bl sub_0201A928
	pop {r4, pc}
	thumb_func_end ov21_021E91F0

	thumb_func_start ov21_021E9208
ov21_021E9208: ; 0x021E9208
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r7, #8
_021E9212:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02009714
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #4
	blt _021E9212
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E9208

	thumb_func_start ov21_021E9228
ov21_021E9228: ; 0x021E9228
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021E9230:
	ldr r0, [r5, #0]
	bl sub_02009754
	add r4, r4, #1
	stmia r5!, {r6}
	cmp r4, #4
	blt _021E9230
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E9228

	thumb_func_start ov21_021E9240
ov21_021E9240: ; 0x021E9240
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	str r4, [sp, #4]
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0200A72C
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	str r0, [sp, #0x10]
	mov r0, #0x3f
	mvn r0, r0
	str r0, [sp, #0x14]
	add r0, #0x38
	str r0, [sp, #0x18]
	mov r0, #2
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x40]
	str r6, [sp, #0x28]
	cmp r0, #0
	bne _021E9286
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov21_021D172C
	b _021E9290
_021E9286:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov21_021D170C
_021E9290:
	add r4, r0, #0
	ldr r0, [sp, #0x40]
	str r4, [sp, #8]
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #0
	add r3, r7, #0
	bl ov21_021D22F8
	add r0, r4, #0
	bl ov21_021D4DA0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E9240

	thumb_func_start ov21_021E92B0
ov21_021E92B0: ; 0x021E92B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021E92C2
	bl ov21_021D4D1C
	mov r0, #0
	str r0, [r4, #8]
_021E92C2:
	pop {r4, pc}
	thumb_func_end ov21_021E92B0

	thumb_func_start ov21_021E92C4
ov21_021E92C4: ; 0x021E92C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r7, [sp, #0x3c]
	str r3, [sp, #0x10]
	str r7, [sp]
	mov r3, #1
	add r6, r2, #0
	str r3, [sp, #4]
	add r4, r1, #0
	str r6, [sp, #8]
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x28]
	bl sub_0200985C
	str r0, [r5, #0]
	bl sub_0200A3DC
	ldr r0, [r5, #0]
	bl sub_02009D4C
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x2c]
	mov r3, #0
	bl sub_020098B8
	str r0, [r5, #4]
	bl sub_0200A640
	ldr r0, [r5, #4]
	bl sub_02009D4C
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	mov r3, #1
	bl sub_02009918
	str r0, [r5, #8]
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	mov r3, #1
	bl sub_02009918
	str r0, [r5, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E92C4

	thumb_func_start ov21_021E9344
ov21_021E9344: ; 0x021E9344
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r7, [sp, #0x3c]
	str r3, [sp, #0x10]
	str r7, [sp]
	mov r3, #1
	add r6, r2, #0
	str r3, [sp, #4]
	add r4, r1, #0
	str r6, [sp, #8]
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x28]
	bl sub_02009A4C
	str r0, [r5, #0]
	bl sub_0200A3DC
	ldr r0, [r5, #0]
	bl sub_02009D4C
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x2c]
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #4]
	bl sub_0200A640
	ldr r0, [r5, #4]
	bl sub_02009D4C
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #8]
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E9344

	thumb_func_start ov21_021E93C4
ov21_021E93C4: ; 0x021E93C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_0200A4E4
	ldr r0, [r5, #4]
	bl sub_0200A6DC
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	bl sub_02009D68
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	bl sub_02009D68
	ldr r0, [r4, #8]
	ldr r1, [r5, #8]
	bl sub_02009D68
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0xc]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E93C4

	thumb_func_start ov21_021E93F8
ov21_021E93F8: ; 0x021E93F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02009E08
	str r0, [sp, #0x2c]
	ldr r0, [r5, #4]
	bl sub_02009E08
	str r0, [sp, #0x30]
	ldr r0, [r5, #8]
	bl sub_02009E08
	str r0, [sp, #0x34]
	ldr r0, [r5, #0xc]
	bl sub_02009E08
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r1, [r4, #0]
	ldr r2, [sp, #0x30]
	str r1, [sp, #0x14]
	ldr r1, [r4, #4]
	ldr r3, [sp, #0x34]
	str r1, [sp, #0x18]
	ldr r1, [r4, #8]
	str r1, [sp, #0x1c]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	bl sub_020093B4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E93F8

	thumb_func_start ov21_021E9458
ov21_021E9458: ; 0x021E9458
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r2, #0
	add r5, r0, #0
	str r1, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl ov21_021D1F90
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl ov21_021D1F94
	add r4, r0, #0
	bl ov21_021D1F98
	add r6, r0, #0
	bl ov21_021D1F9C
	add r7, r0, #0
	bl ov21_021D1FA0
	str r4, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0xfa
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r5, #4
	bl ov21_021E92C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E9458

	thumb_func_start ov21_021E94A4
ov21_021E94A4: ; 0x021E94A4
	ldr r3, _021E94AC ; =ov21_021E93C4
	add r0, r0, #4
	bx r3
	nop
_021E94AC: .word ov21_021E93C4
	thumb_func_end ov21_021E94A4

	thumb_func_start ov21_021E94B0
ov21_021E94B0: ; 0x021E94B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	add r1, r2, #0
	add r0, r5, #4
	add r2, sp, #0
	mov r3, #2
	bl ov21_021E93F8
	add r0, sp, #0
	str r0, [sp, #0x28]
	mov r0, #1
	str r0, [sp, #0x3c]
	mov r0, #0x20
	str r0, [sp, #0x38]
	mov r0, #0x1e
	lsl r0, r0, #0xe
	str r0, [sp, #0x2c]
	mov r0, #0x16
	lsl r0, r0, #0xe
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	str r4, [sp, #0x24]
	str r6, [sp, #0x40]
	bl sub_02021B90
	str r0, [r5, #0]
	cmp r0, #0
	bne _021E94F2
	bl sub_02022974
_021E94F2:
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E94B0

	thumb_func_start ov21_021E94F8
ov21_021E94F8: ; 0x021E94F8
	ldr r3, _021E9500 ; =sub_02021BD4
	ldr r0, [r0, #0]
	bx r3
	nop
_021E9500: .word sub_02021BD4
	thumb_func_end ov21_021E94F8

	thumb_func_start ov21_021E9504
ov21_021E9504: ; 0x021E9504
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	add r1, r2, #0
	ldr r0, [sp, #0x58]
	add r2, sp, #0
	mov r3, #2
	bl ov21_021E93F8
	add r0, sp, #0
	str r0, [sp, #0x28]
	mov r0, #1
	str r0, [sp, #0x3c]
	mov r0, #0x20
	str r0, [sp, #0x38]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp, #0x2c]
	mov r0, #0xd
	lsl r0, r0, #0xe
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	str r4, [sp, #0x24]
	str r6, [sp, #0x40]
	bl sub_02021B90
	str r0, [r5, #0]
	cmp r0, #0
	bne _021E9546
	bl sub_02022974
_021E9546:
	ldr r0, [r5, #0]
	mov r1, #0x11
	bl sub_02021D6C
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E9504

	thumb_func_start ov21_021E9554
ov21_021E9554: ; 0x021E9554
	ldr r3, _021E955C ; =sub_02021BD4
	ldr r0, [r0, #0]
	bx r3
	nop
_021E955C: .word sub_02021BD4
	thumb_func_end ov21_021E9554

	thumb_func_start ov21_021E9560
ov21_021E9560: ; 0x021E9560
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	add r1, r3, #0
	add r6, r2, #0
	bl ov21_021DF30C
	add r4, r0, #0
	ldr r0, [sp, #0x40]
	str r7, [sp]
	mov r1, #0
	bl sub_0200A72C
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	str r0, [sp, #0xc]
	mov r0, #0x4d
	mvn r0, r0
	str r0, [sp, #0x10]
	add r0, #0x46
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	mov r0, #0x1f
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	str r6, [sp, #0x24]
	str r4, [sp, #4]
	add r0, sp, #0
	bl ov21_021D4CA0
	str r0, [r5, #4]
	add r0, r4, #0
	bl ov21_021D4DA0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E9560

	thumb_func_start ov21_021E95B0
ov21_021E95B0: ; 0x021E95B0
	ldr r3, _021E95B8 ; =ov21_021D4D1C
	ldr r0, [r0, #4]
	bx r3
	nop
_021E95B8: .word ov21_021D4D1C
	thumb_func_end ov21_021E95B0

	thumb_func_start ov21_021E95BC
ov21_021E95BC: ; 0x021E95BC
	push {r3, lr}
	sub sp, #0x18
	mov r2, #0x5a
	str r2, [sp]
	mov r2, #0xd
	str r2, [sp, #4]
	mov r2, #0x58
	str r2, [sp, #8]
	mov r2, #0x59
	str r2, [sp, #0xc]
	mov r2, #5
	str r2, [sp, #0x10]
	ldr r2, _021E95E8 ; =0x00004268
	add r0, #8
	str r2, [sp, #0x14]
	add r2, r3, #0
	ldr r3, [sp, #0x20]
	bl ov21_021E9344
	add sp, #0x18
	pop {r3, pc}
	nop
_021E95E8: .word 0x00004268
	thumb_func_end ov21_021E95BC

	thumb_func_start ov21_021E95EC
ov21_021E95EC: ; 0x021E95EC
	ldr r3, _021E95F4 ; =ov21_021E93C4
	add r0, #8
	bx r3
	nop
_021E95F4: .word ov21_021E93C4
	thumb_func_end ov21_021E95EC

	thumb_func_start ov21_021E95F8
ov21_021E95F8: ; 0x021E95F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #0x60]
	mov r1, #6
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_020759F0
	add r4, r0, #0
	ldr r0, [sp, #0x60]
	mov r1, #7
	bl sub_020759F0
	add r6, r0, #0
	add r0, r4, #0
	bl ov21_021DF180
	add r4, r0, #0
	add r0, r6, #0
	bl ov21_021DF180
	add r6, r0, #0
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #8
	add r2, sp, #8
	mov r3, #2
	bl ov21_021E93F8
	add r0, sp, #8
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #0x20
	str r0, [sp, #0x40]
	ldr r0, [sp, #4]
	str r7, [sp, #0x2c]
	str r0, [sp, #0x48]
	mov r0, #0xaa
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	mov r0, #0x12
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	add r1, r4, #0
	str r0, [r5, #0]
	bl sub_02021D6C
	cmp r4, r6
	beq _021E9684
	mov r0, #0x37
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r0, #0x12
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	add r1, r6, #0
	str r0, [r5, #4]
	bl sub_02021D6C
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_021E9684:
	mov r0, #0
	str r0, [r5, #4]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E95F8

	thumb_func_start ov21_021E968C
ov21_021E968C: ; 0x021E968C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021E969A
	bl sub_02021BD4
_021E969A:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E96A4
	bl sub_02021BD4
_021E96A4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E968C

	thumb_func_start ov21_021E96A8
ov21_021E96A8: ; 0x021E96A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	mov r2, #0
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp]
	add r0, r6, #0
	mov r1, #6
	add r3, r2, #0
	str r4, [sp, #4]
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x21
	add r2, r5, #0
	mov r3, #3
	bl sub_020070E8
	str r4, [sp]
	add r0, r6, #0
	mov r1, #0x32
	mov r2, #1
	add r3, sp, #0x10
	bl sub_020071D0
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r7, r0, #0
	ldrh r0, [r2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020198C0
	add r0, r7, #0
	bl sub_020181C4
	str r4, [sp]
	add r0, r6, #0
	mov r1, #0x33
	mov r2, #1
	add r3, sp, #0x10
	bl sub_020071D0
	ldr r2, [sp, #0x10]
	mov r1, #3
	str r1, [sp]
	add r7, r0, #0
	ldrh r0, [r2]
	mov r3, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020198C0
	add r0, r7, #0
	bl sub_020181C4
	add r0, r6, #0
	mov r1, #0x34
	mov r2, #1
	add r3, sp, #0x10
	str r4, [sp]
	bl sub_020071D0
	add r7, r0, #0
	ldr r2, [sp, #0x10]
	mov r0, #8
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020198C0
	add r0, r7, #0
	bl sub_020181C4
	str r4, [sp]
	add r0, r6, #0
	mov r1, #0x36
	mov r2, #1
	add r3, sp, #0x10
	bl sub_020071D0
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020198C0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #3
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E96A8

	thumb_func_start ov21_021E97C4
ov21_021E97C4: ; 0x021E97C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x21
	add r2, r5, #0
	mov r3, #2
	bl sub_020070E8
	str r4, [sp]
	add r0, r6, #0
	mov r1, #0x39
	mov r2, #1
	add r3, sp, #0x10
	bl sub_020071D0
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r4, r0, #0
	ldrh r0, [r2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020198C0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #2
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E97C4

	thumb_func_start ov21_021E9828
ov21_021E9828: ; 0x021E9828
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #4
	bhi _021E98B4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9844: ; jump table
	.short _021E984E - _021E9844 - 2 ; case 0
	.short _021E985C - _021E9844 - 2 ; case 1
	.short _021E9874 - _021E9844 - 2 ; case 2
	.short _021E98A2 - _021E9844 - 2 ; case 3
	.short _021E98B4 - _021E9844 - 2 ; case 4
_021E984E:
	ldr r0, _021E98D4 ; =0x04000050
	mov r2, #0
	strh r2, [r0]
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	b _021E98B4
_021E985C:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl ov21_021E9948
	cmp r0, #0
	beq _021E98B4
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _021E98B4
_021E9874:
	add r2, r1, #0
	add r2, #0x47
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r0, #0xe
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r3, r2, #0
	bl sub_020059D0
	cmp r0, #0
	bne _021E9896
	bl sub_02022974
_021E9896:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _021E98B4
_021E98A2:
	bl sub_0200598C
	cmp r0, #0
	bne _021E98B4
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_021E98B4:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021E98C6
	sub r0, #0x20
	add r0, r4, r0
	bl ov21_021E9A9C
_021E98C6:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021E98D4: .word 0x04000050
	thumb_func_end ov21_021E9828

	thumb_func_start ov21_021E98D8
ov21_021E98D8: ; 0x021E98D8
	push {r4, lr}
	mov r1, #0
	mov r3, #2
	add r2, r1, #0
	lsl r3, r3, #8
	add r4, r0, #0
	bl sub_02003070
	mov r3, #7
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	lsl r3, r3, #6
	bl sub_02003070
	pop {r4, pc}
	thumb_func_end ov21_021E98D8

	thumb_func_start ov21_021E98F8
ov21_021E98F8: ; 0x021E98F8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	add r4, r3, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_020086FC
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	lsl r3, r3, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _021E9944 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #5
	asr r3, r3, #0x18
	bl sub_02003178
	add r0, r5, #0
	mov r1, #0
	bl sub_02003858
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E9944: .word 0x0000FFFF
	thumb_func_end ov21_021E98F8

	thumb_func_start ov21_021E9948
ov21_021E9948: ; 0x021E9948
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200384C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020087B4
	cmp r4, #0
	bne _021E9964
	cmp r0, #0
	bne _021E9964
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E9964:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E9948

	thumb_func_start ov21_021E9968
ov21_021E9968: ; 0x021E9968
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _021E9988 ; =0x00020100
	add r5, r0, #0
	str r1, [sp]
	add r1, r2, #0
	add r2, r4, #0
	mov r3, #0
	bl ov21_021DEB8C
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E998C
	pop {r3, r4, r5, pc}
	nop
_021E9988: .word 0x00020100
	thumb_func_end ov21_021E9968

	thumb_func_start ov21_021E998C
ov21_021E998C: ; 0x021E998C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r0, #0x40
	add r4, r1, #0
	bl sub_02023790
	add r5, r0, #0
	ldr r2, _021E99DC ; =0x000002B9
	mov r0, #0
	mov r1, #0x1a
	add r3, r4, #0
	bl sub_0200B144
	mov r1, #0x6e
	add r2, r5, #0
	add r4, r0, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xc1
	str r1, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0x20
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021E99DC: .word 0x000002B9
	thumb_func_end ov21_021E998C

	thumb_func_start ov21_021E99E0
ov21_021E99E0: ; 0x021E99E0
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r2, #0
	add r0, sp, #0x10
	mov r2, #2
	add r6, r3, #0
	bl sub_02075EF4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, sp, #0x10
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02007C34
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E99E0

	thumb_func_start ov21_021E9A0C
ov21_021E9A0C: ; 0x021E9A0C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r4, _021E9A30 ; =0x021E9F04
	add r3, sp, #0
	add r5, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r1, _021E9A34 ; =0x00200010
	mov r2, #0x10
	str r5, [sp, #0xc]
	bl sub_0201E88C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021E9A30: .word 0x021E9F04
_021E9A34: .word 0x00200010
	thumb_func_end ov21_021E9A0C

	thumb_func_start ov21_021E9A38
ov21_021E9A38: ; 0x021E9A38
	ldr r3, _021E9A3C ; =sub_0201E958
	bx r3
	; .align 2, 0
_021E9A3C: .word sub_0201E958
	thumb_func_end ov21_021E9A38

	thumb_func_start ov21_021E9A40
ov21_021E9A40: ; 0x021E9A40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	cmp r2, #0
	bne _021E9A5C
	add r2, r5, #0
	add r0, r6, #0
	mov r1, #0x17
	add r2, #8
	add r3, r4, #0
	bl sub_020071EC
	b _021E9A6A
_021E9A5C:
	add r2, r5, #0
	add r0, r6, #0
	mov r1, #0x18
	add r2, #8
	add r3, r4, #0
	bl sub_020071EC
_021E9A6A:
	add r2, r5, #0
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x1a
	add r2, #0xc
	add r3, r4, #0
	bl sub_020071EC
	str r0, [r5, #4]
	mov r1, #0
	str r1, [r5, #0x10]
	str r1, [r5, #0x1c]
	add r2, r5, #0
_021E9A84:
	add r1, r1, #1
	lsl r0, r1, #4
	str r0, [r2, #0x14]
	add r2, r2, #4
	cmp r1, #2
	blt _021E9A84
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	bl ov21_021E9AE8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E9A40

	thumb_func_start ov21_021E9A9C
ov21_021E9A9C: ; 0x021E9A9C
	push {r3, lr}
	ldr r3, [r0, #0x1c]
	lsl r1, r3, #2
	add r1, r0, r1
	ldr r2, [r1, #0x14]
	ldr r1, [r0, #0x10]
	cmp r2, r1
	bgt _021E9AC2
	add r1, r3, #1
	str r1, [r0, #0x1c]
	cmp r1, #2
	blt _021E9ABA
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x10]
_021E9ABA:
	ldr r1, [r0, #0x1c]
	bl ov21_021E9B08
	pop {r3, pc}
_021E9AC2:
	add r1, r1, #1
	str r1, [r0, #0x10]
	pop {r3, pc}
	thumb_func_end ov21_021E9A9C

	thumb_func_start ov21_021E9AC8
ov21_021E9AC8: ; 0x021E9AC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E9ACE:
	ldr r0, [r5, #0]
	bl sub_020181C4
	add r4, r4, #1
	cmp r4, #2
	blt _021E9ACE
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E9AC8

	thumb_func_start ov21_021E9AE8
ov21_021E9AE8: ; 0x021E9AE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	add r5, #8
	ldr r0, [r5, r4]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [r5, r4]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl sub_020C00B4
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E9AE8

	thumb_func_start ov21_021E9B08
ov21_021E9B08: ; 0x021E9B08
	push {r3, lr}
	add r2, r1, #0
	add r3, r0, #0
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r2, [r2, #8]
	mov r0, #0xf
	ldr r2, [r2, #0xc]
	mov r1, #0
	mov r3, #0x20
	bl sub_0201DC68
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021E9B08

	.rodata


	.global Unk_ov21_021E9F04
Unk_ov21_021E9F04: ; 0x021E9F04
	.incbin "incbin/overlay21_rodata.bin", 0x3E0, 0x3F0 - 0x3E0

	.global Unk_ov21_021E9F14
Unk_ov21_021E9F14: ; 0x021E9F14
	.incbin "incbin/overlay21_rodata.bin", 0x3F0, 0x40C - 0x3F0

	.global Unk_ov21_021E9F30
Unk_ov21_021E9F30: ; 0x021E9F30
	.incbin "incbin/overlay21_rodata.bin", 0x40C, 0x428 - 0x40C

	.global Unk_ov21_021E9F4C
Unk_ov21_021E9F4C: ; 0x021E9F4C
	.incbin "incbin/overlay21_rodata.bin", 0x428, 0x1C

