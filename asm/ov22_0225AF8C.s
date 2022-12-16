	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov22_0225AF8C
ov22_0225AF8C: ; 0x0225AF8C
	push {r3, r4, lr}
	sub sp, #0x6c
	add r2, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, r2, #0
	bl ov22_0225B4E4
	add r0, sp, #0
	add r1, r4, #0
	bl ov22_0225B4F8
	add r0, sp, #0
	bl ov22_0225B1BC
	add sp, #0x6c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AF8C

	thumb_func_start ov22_0225AFB0
ov22_0225AFB0: ; 0x0225AFB0
	push {r3, r4, lr}
	sub sp, #0x6c
	add r2, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, r2, #0
	bl ov22_0225B4E4
	add r0, sp, #0
	add r1, r4, #0
	bl ov22_0225B540
	add r0, sp, #0
	bl ov22_0225B1BC
	add sp, #0x6c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AFB0

	thumb_func_start ov22_0225AFD4
ov22_0225AFD4: ; 0x0225AFD4
	push {r3, r4, lr}
	sub sp, #0x6c
	add r2, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, r2, #0
	bl ov22_0225B4E4
	add r0, sp, #0
	add r1, r4, #0
	bl ov22_0225B540
	add r0, sp, #0
	bl ov22_0225B258
	add sp, #0x6c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AFD4

	thumb_func_start ov22_0225AFF8
ov22_0225AFF8: ; 0x0225AFF8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _0225B00E
	sub r0, #0x48
	add r0, r4, r0
	bl ov22_0225AF68
_0225B00E:
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0225B01E
	add r0, r4, #0
	bl ov22_0225B328
_0225B01E:
	pop {r4, pc}
	thumb_func_end ov22_0225AFF8

	thumb_func_start ov22_0225B020
ov22_0225B020: ; 0x0225B020
	push {r4, lr}
	mov r1, #0x26
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0225B032
	bl ov22_0225B480
_0225B032:
	add r0, r4, #0
	bl ov22_0225B464
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_02254E0C
	mov r0, #0x63
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #8
	add r0, r4, r0
	bl ov22_022594AC
	add r0, r4, #0
	bl ov22_0225B35C
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B020

	thumb_func_start ov22_0225B06C
ov22_0225B06C: ; 0x0225B06C
	ldr r3, _0225B070 ; =ov22_02255530
	bx r3
	; .align 2, 0
_0225B070: .word ov22_02255530
	thumb_func_end ov22_0225B06C

	thumb_func_start ov22_0225B074
ov22_0225B074: ; 0x0225B074
	mov r2, #0x99
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov22_0225B074

	thumb_func_start ov22_0225B07C
ov22_0225B07C: ; 0x0225B07C
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov22_0225B07C

	thumb_func_start ov22_0225B080
ov22_0225B080: ; 0x0225B080
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	mov r2, #0x19
	add r4, r1, #0
	lsl r2, r2, #4
	add r5, r0, #0
	add r1, r2, #0
	add r0, r5, r2
	str r6, [sp]
	add r1, #0xac
	add r2, #0xb0
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r3, r4, #0
	bl ov22_02257AD8
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225B0C8
	mov r3, #0x88
	ldr r0, [r5, #0x40]
	mov r1, #2
	mov r2, #0
	sub r3, r3, r4
	bl sub_02019184
	mov r3, #0x10
	ldr r0, [r5, #0x40]
	mov r1, #2
	mov r2, #3
	sub r3, r3, r6
	bl sub_02019184
_0225B0C8:
	mov r0, #0x8f
	lsl r0, r0, #2
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B080

	thumb_func_start ov22_0225B0D8
ov22_0225B0D8: ; 0x0225B0D8
	mov r3, #0x91
	lsl r3, r3, #2
	str r1, [r0, r3]
	add r1, r3, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end ov22_0225B0D8

	thumb_func_start ov22_0225B0E4
ov22_0225B0E4: ; 0x0225B0E4
	mov r2, #0x93
	lsl r2, r2, #2
	strh r1, [r0, r2]
	bx lr
	thumb_func_end ov22_0225B0E4

	thumb_func_start ov22_0225B0EC
ov22_0225B0EC: ; 0x0225B0EC
	push {r3, r4}
	mov r4, #0x25
	lsl r4, r4, #4
	str r1, [r0, r4]
	add r1, r4, #4
	str r2, [r0, r1]
	add r4, #8
	str r3, [r0, r4]
	pop {r3, r4}
	bx lr
	thumb_func_end ov22_0225B0EC

	thumb_func_start ov22_0225B100
ov22_0225B100: ; 0x0225B100
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	add r4, r1, #0
	add r6, r2, #0
	add r0, r5, r0
	add r1, sp, #8
	add r2, sp, #4
	bl ov22_02259270
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov22_02257CE0
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r1, [sp, #0x10]
	ldr r2, [r5, r0]
	sub r1, r4, r1
	add r0, r0, #4
	add r7, r2, r1
	ldr r1, [r5, r0]
	ldr r0, [sp, #0xc]
	sub r0, r6, r0
	add r0, r1, r0
	str r0, [sp]
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	bl ov22_0225B080
	ldr r2, [sp]
	add r0, r5, #0
	sub r1, r4, r7
	sub r2, r6, r2
	bl ov22_0225B0D8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B100

	thumb_func_start ov22_0225B158
ov22_0225B158: ; 0x0225B158
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r2, #0x95
	add r5, r0, #0
	mov r0, #0x28
	lsl r2, r2, #2
	sub r0, r0, r3
	ldr r2, [r5, r2]
	lsl r0, r0, #0xc
	add r6, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	add r0, r5, #0
	mov r5, #2
	add r3, r1, #0
	add r1, r6, #0
	mov r6, #0
	lsl r5, r5, #0xa
	add r5, r2, r5
	adc r3, r6
	lsl r2, r3, #0x14
	lsr r3, r5, #0xc
	orr r3, r2
	asr r2, r3, #0xc
	sub r2, r4, r2
	bl ov22_0225B100
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B158

	thumb_func_start ov22_0225B198
ov22_0225B198: ; 0x0225B198
	mov r2, #0x97
	lsl r2, r2, #2
	strh r1, [r0, r2]
	sub r2, #0xcc
	ldr r3, _0225B1A8 ; =ov22_02257D70
	add r0, r0, r2
	bx r3
	nop
_0225B1A8: .word ov22_02257D70
	thumb_func_end ov22_0225B198

	thumb_func_start ov22_0225B1AC
ov22_0225B1AC: ; 0x0225B1AC
	mov r2, #0x19
	lsl r2, r2, #4
	ldr r3, _0225B1B8 ; =ov22_02257B74
	add r0, r0, r2
	bx r3
	nop
_0225B1B8: .word ov22_02257B74
	thumb_func_end ov22_0225B1AC

	thumb_func_start ov22_0225B1BC
ov22_0225B1BC: ; 0x0225B1BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x9a
	ldr r0, [r5, #0x68]
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x9a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x8e
	ldr r1, [r5, #0x68]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0x68]
	bl sub_02073C74
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0]
	ldr r1, [r4, r1]
	bl sub_0202A61C
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B2D4
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x68]
	add r0, r4, #0
	bl ov22_022554A8
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, [r5, #0x68]
	add r0, r4, r0
	mov r1, #0x15
	bl ov22_02259484
	ldr r1, [r5, #0x68]
	mov r0, #0x14
	bl ov22_02254DE0
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B388
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B450
	mov r1, #0x86
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x88
	ldr r2, [r5, #0x68]
	add r1, r4, r1
	bl ov22_0225AF44
	mov r0, #0x26
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B490
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225B1BC

	thumb_func_start ov22_0225B258
ov22_0225B258: ; 0x0225B258
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x9a
	ldr r0, [r5, #0x68]
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x9a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x8e
	ldr r1, [r5, #0x68]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0x68]
	bl sub_02073C74
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0]
	ldr r1, [r4, r1]
	bl sub_0202A61C
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B2D4
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, [r5, #0x68]
	add r0, r4, r0
	mov r1, #0x15
	bl ov22_02259484
	ldr r1, [r5, #0x68]
	mov r0, #0x14
	bl ov22_02254DE0
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B388
	mov r0, #0x26
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B490
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225B258

	thumb_func_start ov22_0225B2D4
ov22_0225B2D4: ; 0x0225B2D4
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r1, #0
	ldr r1, [r4, #0x68]
	add r5, r0, #0
	mov r0, #0x19
	bl sub_02006C24
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, _0225B324 ; =0x000002CE
	add r1, sp, #0
	str r0, [sp]
	mov r0, #0x76
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	ldr r0, [r4, #0x68]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x68]
	add r0, r5, #0
	bl ov22_0225547C
	ldr r3, [r4, #0x68]
	add r0, r5, #0
	add r1, sp, #0x10
	add r2, r4, #0
	bl ov22_0225B588
	add r0, r5, #0
	add r1, sp, #0x10
	bl ov22_022551B4
	add r0, sp, #0x10
	bl ov22_02255338
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_0225B324: .word 0x000002CE
	thumb_func_end ov22_0225B2D4

	thumb_func_start ov22_0225B328
ov22_0225B328: ; 0x0225B328
	push {r3, r4, lr}
	sub sp, #4
	mov r3, #0x25
	lsl r3, r3, #4
	add r1, r0, r3
	str r1, [sp]
	add r1, r3, #0
	sub r1, #0x14
	ldr r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xc
	ldr r1, [r0, r1]
	add r1, r2, r1
	add r2, r3, #0
	sub r2, #0x10
	ldr r4, [r0, r2]
	add r2, r3, #0
	sub r2, #8
	sub r3, r3, #4
	ldr r2, [r0, r2]
	ldrh r3, [r0, r3]
	add r2, r4, r2
	bl ov22_0225553C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov22_0225B328

	thumb_func_start ov22_0225B35C
ov22_0225B35C: ; 0x0225B35C
	push {r4, lr}
	add r4, r0, #0
	bl ov22_022551D0
	add r0, r4, #0
	bl ov22_022554F8
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225B37A
	add r0, r4, #0
	bl ov22_02255524
_0225B37A:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02006CA8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B35C

	thumb_func_start ov22_0225B388
ov22_0225B388: ; 0x0225B388
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	add r2, sp, #0x28
	mov r0, #0
	add r7, r1, #0
	add r3, r2, #0
	add r1, r0, #0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x3c]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	str r1, [sp, #0x40]
	add r1, r0, #0
	sub r1, #8
	add r1, r5, r1
	str r1, [sp, #0x44]
	mov r1, #0x15
	add r0, r0, #4
	str r1, [sp, #0x48]
	add r0, r5, r0
	add r1, r2, #0
	bl ov22_022578F4
	ldr r0, [r7, #0]
	bl sub_0202A60C
	add r6, r0, #0
	ldr r0, [r7, #0]
	bl sub_0202A614
	add r4, r0, #0
	ldr r0, [r7, #0]
	bl sub_0202A604
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [r7, #0x68]
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #8]
	add r0, r5, r1
	add r1, #0xa4
	ldr r1, [r5, r1]
	add r2, sp, #0x18
	add r3, r6, #0
	bl ov22_02257964
	ldr r0, [r7, #0x54]
	mov r6, #0
	cmp r0, #0
	ble _0225B44C
	add r4, r7, #0
_0225B412:
	ldr r0, [r4, #4]
	bl sub_0202A624
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_0202A628
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	bl sub_0202A62C
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl sub_0202A630
	str r0, [sp]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, r0
	bl ov22_022579FC
	ldr r0, [r7, #0x54]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0225B412
_0225B44C:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B388

	thumb_func_start ov22_0225B450
ov22_0225B450: ; 0x0225B450
	add r2, r1, #0
	mov r1, #0x19
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [r2, #0x5c]
	ldr r3, _0225B460 ; =ov22_02257C88
	ldr r2, [r2, #0x68]
	bx r3
	; .align 2, 0
_0225B460: .word ov22_02257C88
	thumb_func_end ov22_0225B450

	thumb_func_start ov22_0225B464
ov22_0225B464: ; 0x0225B464
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_02257A98
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_02257948
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B464

	thumb_func_start ov22_0225B480
ov22_0225B480: ; 0x0225B480
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r3, _0225B48C ; =ov22_02257CD4
	add r0, r0, r1
	bx r3
	nop
_0225B48C: .word ov22_02257CD4
	thumb_func_end ov22_0225B480

	thumb_func_start ov22_0225B490
ov22_0225B490: ; 0x0225B490
	push {r3, r4, r5, lr}
	add r3, r1, #0
	mov r1, #0x8f
	add r4, r0, #0
	mov r2, #0x48
	lsl r1, r1, #2
	str r2, [r4, r1]
	mov r5, #0x38
	add r2, r1, #4
	str r5, [r4, r2]
	add r2, r1, #0
	add r2, #8
	str r5, [r4, r2]
	add r2, r1, #0
	mov r5, #0x40
	add r2, #0xc
	str r5, [r4, r2]
	lsl r2, r5, #6
	add r5, r1, #0
	add r5, #0x14
	str r2, [r4, r5]
	add r5, r1, #0
	add r5, #0x18
	str r2, [r4, r5]
	add r5, r1, #0
	add r5, #0x1c
	str r2, [r4, r5]
	mov r2, #0
	add r1, #0x10
	strh r2, [r4, r1]
	ldr r1, [r3, #0x60]
	ldr r2, [r3, #0x64]
	bl ov22_0225B080
	mov r0, #0x97
	ldr r1, _0225B4E0 ; =0x00007FFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0225B4E0: .word 0x00007FFF
	thumb_func_end ov22_0225B490

	thumb_func_start ov22_0225B4E4
ov22_0225B4E4: ; 0x0225B4E4
	ldr r2, [r1, #0]
	str r2, [r0, #0x58]
	ldr r2, [r1, #4]
	str r2, [r0, #0x60]
	ldr r2, [r1, #8]
	str r2, [r0, #0x64]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0x68]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225B4E4

	thumb_func_start ov22_0225B4F8
ov22_0225B4F8: ; 0x0225B4F8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0202A138
	add r6, r5, #0
	str r0, [r5, #0]
	mov r4, #0
	str r4, [r5, #0x54]
	add r6, #0x54
_0225B50E:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202A110
	cmp r0, #0
	beq _0225B530
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202A150
	ldr r1, [r5, #0x54]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_0225B530:
	add r4, r4, #1
	cmp r4, #0xa
	blt _0225B50E
	add r0, r7, #0
	bl sub_0202A1DC
	str r0, [r5, #0x5c]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B4F8

	thumb_func_start ov22_0225B540
ov22_0225B540: ; 0x0225B540
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0202A4D8
	add r6, r5, #0
	str r0, [r5, #0]
	mov r4, #0
	str r4, [r5, #0x54]
	add r6, #0x54
_0225B556:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202A488
	cmp r0, #0
	beq _0225B578
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202A4F0
	ldr r1, [r5, #0x54]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_0225B578:
	add r4, r4, #1
	cmp r4, #0x14
	blt _0225B556
	add r0, r7, #0
	bl sub_0202A5B8
	str r0, [r5, #0x5c]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B540

	thumb_func_start ov22_0225B588
ov22_0225B588: ; 0x0225B588
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r3, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov22_02255410
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov22_0225B5A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B588

	thumb_func_start ov22_0225B5A8
ov22_0225B5A8: ; 0x0225B5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r2, #0
	ldr r0, [r0, #0x54]
	add r4, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r0, #0
	ble _0225B620
	add r6, r2, #0
_0225B5C2:
	ldr r0, [r6, #4]
	bl sub_0202A624
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl sub_020229F8
	cmp r0, #1
	bne _0225B60E
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	ldr r1, [sp, #4]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	ldr r3, [sp, #0xc]
	add r1, r5, #1
	mov r2, #0
	bl sub_0200723C
	add r7, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02022A1C
	ldr r1, [r4, #0]
	lsl r5, r5, #3
	add r1, r1, r5
	add r0, r7, #0
	add r1, r1, #4
	bl sub_020A7118
	ldr r0, [sp, #4]
	ldr r1, [r0, #0]
	ldr r0, [r4, #0]
	str r1, [r0, r5]
_0225B60E:
	ldr r0, [sp, #0x10]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x54]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _0225B5C2
_0225B620:
	mov r0, #1
	str r0, [sp]
	mov r1, #6
	ldr r0, [sp, #4]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	mov r1, #0
	ldr r3, [sp, #0xc]
	add r2, r1, #0
	bl sub_0200723C
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	mov r2, #0
	bl sub_02022A1C
	ldr r1, [r4, #8]
	add r0, r5, #0
	add r1, r1, #4
	bl sub_020A71B0
	ldr r0, [sp, #4]
	ldr r1, [r0, #0]
	ldr r0, [r4, #8]
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	mov r1, #3
	str r1, [r0, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B5A8