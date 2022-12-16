	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov83_0223F7F4
ov83_0223F7F4: ; 0x0223F7F4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, r3, #0
	ldr r3, [sp, #0x1c]
	add r5, r0, #0
	ldr r6, [sp, #0x18]
	add r0, r2, #0
	sub r4, r4, r3
	sub r1, r1, r3
	mov r3, #0
	str r3, [sp]
	sub r2, r5, r6
	sub r0, r0, r6
	add r3, r4, #0
	bl sub_0201D4CC
	mov r1, #0xa0
	mul r1, r0
	add r0, r1, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov83_0223F7F4

	thumb_func_start ov83_0223F820
ov83_0223F820: ; 0x0223F820
	add r3, r0, #0
	mov r2, #0x18
	mov r1, #0
_0223F826:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _0223F826
	mov r2, #0x80
	str r2, [r0, #0]
	mov r1, #0x60
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov83_0223F820

	thumb_func_start ov83_0223F83C
ov83_0223F83C: ; 0x0223F83C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0223F888 ; =0x021BF6BC
	ldrh r1, [r0, #0x22]
	cmp r1, #0
	beq _0223F860
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #0]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0223F860
	ldr r0, [r4, #0]
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	str r0, [r4, #0xc]
_0223F860:
	mov r0, #0x80
	str r0, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl ov83_0223F7F4
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	str r0, [r4, #0xc]
	ldr r0, _0223F888 ; =0x021BF6BC
	ldrh r0, [r0, #0x22]
	str r0, [r4, #0x14]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0223F888: .word 0x021BF6BC
	thumb_func_end ov83_0223F83C

	thumb_func_start ov83_0223F88C
ov83_0223F88C: ; 0x0223F88C
	ldr r2, [r1, #0]
	strb r2, [r0]
	ldr r2, [r1, #4]
	strb r2, [r0, #1]
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bge _0223F8A4
	neg r1, r1
	strh r1, [r0, #2]
	mov r1, #1
	strb r1, [r0, #4]
	bx lr
_0223F8A4:
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #4]
	bx lr
	thumb_func_end ov83_0223F88C

	thumb_func_start ov83_0223F8AC
ov83_0223F8AC: ; 0x0223F8AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0201E3BC
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bge _0223F8C6
	neg r0, r0
_0223F8C6:
	lsl r0, r0, #0x10
	ldr r1, [r5, #0]
	lsr r0, r0, #0x10
	bl ov83_0223FB68
	asr r2, r0, #0x1f
	lsl r3, r2, #0x12
	lsr r1, r0, #0xe
	orr r3, r1
	mov r1, #2
	lsl r2, r0, #0x12
	mov r0, #0
	lsl r1, r1, #0xa
	add r2, r2, r1
	adc r3, r0
	lsl r1, r3, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	asr r1, r2, #0xc
	cmp r4, #0x10
	bhs _0223F8F4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223F8F4:
	add r1, #8
	cmp r4, r1
	bls _0223F8FC
	mov r0, #2
_0223F8FC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F8AC

	thumb_func_start ov83_0223F900
ov83_0223F900: ; 0x0223F900
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	str r0, [r5, #0x10]
	mov r0, #0
	add r4, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r2, #0
	beq _0223F98C
_0223F91A:
	ldr r0, [sp, #0xc]
	add r1, r4, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	mov r0, #0x1c
	add r6, r1, #0
	mul r6, r0
	add r1, r4, r6
	add r2, r4, r6
	add r1, #0x90
	add r2, #0x91
	ldrb r1, [r1]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov83_0223F8AC
	cmp r0, #0
	beq _0223F94A
	cmp r0, #1
	beq _0223F952
	cmp r0, #2
	beq _0223F962
	b _0223F968
_0223F94A:
	add r0, r4, r6
	add r0, #0x92
	ldrh r7, [r0]
	b _0223F968
_0223F952:
	add r0, r4, r6
	add r0, #0x92
	ldrh r0, [r0]
	lsl r0, r0, #0xf
	lsr r7, r0, #0x10
	mov r0, #0
	str r0, [r5, #0x10]
	b _0223F968
_0223F962:
	mov r7, #0
	add r0, r7, #0
	str r0, [r5, #0x10]
_0223F968:
	add r0, r4, r6
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223F97A
	ldr r0, [sp, #8]
	add r0, r0, r7
	str r0, [sp, #8]
	b _0223F980
_0223F97A:
	ldr r0, [sp, #8]
	sub r0, r0, r7
	str r0, [sp, #8]
_0223F980:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0xc]
	cmp r1, r0
	blo _0223F91A
_0223F98C:
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_020E1F6C
	add r4, r0, #0
	ldr r1, [r5, #0]
	ldr r0, _0223FA74 ; =0x02240590
	ldrb r0, [r0, r1]
	mov r1, #0x33
	lsl r1, r1, #0xe
	lsl r0, r0, #0xc
	bl sub_020BCFD0
	add r2, r0, #0
	lsl r0, r4, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r4, #2
	mov r2, #0
	lsl r4, r4, #0xa
	add r4, r0, r4
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	orr r1, r0
	ldr r3, [r5, #0xc]
	asr r0, r1, #0xc
	add r0, r3, r0
	str r0, [r5, #0xc]
	cmp r0, #0
	ble _0223F9E0
	ldr r1, [r5, #0]
	lsl r3, r1, #1
	ldr r1, _0223FA78 ; =0x0224059C
	ldrh r1, [r1, r3]
	sub r0, r0, r1
	str r0, [r5, #0xc]
	bpl _0223F9F4
	str r2, [r5, #0xc]
	b _0223F9F4
_0223F9E0:
	bge _0223F9F4
	ldr r1, [r5, #0]
	lsl r3, r1, #1
	ldr r1, _0223FA78 ; =0x0224059C
	ldrh r1, [r1, r3]
	add r0, r0, r1
	str r0, [r5, #0xc]
	cmp r0, #0
	ble _0223F9F4
	str r2, [r5, #0xc]
_0223F9F4:
	ldr r1, [r5, #0xc]
	ldr r0, _0223FA7C ; =0x00000E38
	cmp r1, r0
	ble _0223FA00
	str r0, [r5, #0xc]
	b _0223FA08
_0223FA00:
	ldr r0, _0223FA80 ; =0xFFFFF1C8
	cmp r1, r0
	bge _0223FA08
	str r0, [r5, #0xc]
_0223FA08:
	ldr r0, [r5, #0xc]
	mov r1, #0xa0
	ldr r4, [r5, #8]
	bl sub_020E1F6C
	add r1, r0, #0
	mov r0, #0x44
	bl sub_0201D580
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0223FA2C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bge _0223FA38
_0223FA2C:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0223FA68
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bge _0223FA68
_0223FA38:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0223FA54
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r1, r0
	ble _0223FA68
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _0223FA68
_0223FA54:
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r1, r0
	bge _0223FA68
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_0223FA68:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FA74: .word 0x02240590
_0223FA78: .word 0x0224059C
_0223FA7C: .word 0x00000E38
_0223FA80: .word 0xFFFFF1C8
	thumb_func_end ov83_0223F900

	thumb_func_start ov83_0223FA84
ov83_0223FA84: ; 0x0223FA84
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end ov83_0223FA84

	thumb_func_start ov83_0223FA8C
ov83_0223FA8C: ; 0x0223FA8C
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov83_0223FA8C

	thumb_func_start ov83_0223FA90
ov83_0223FA90: ; 0x0223FA90
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #3
	blt _0223FA9E
	bl sub_02022974
_0223FA9E:
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223FA90

	thumb_func_start ov83_0223FAA8
ov83_0223FAA8: ; 0x0223FAA8
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov83_0223FAA8

	thumb_func_start ov83_0223FAAC
ov83_0223FAAC: ; 0x0223FAAC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [r5, #0x18]
	add r4, r1, #0
	add r6, r2, #0
	str r0, [r5, #0x10]
	add r0, r4, #0
	add r1, r6, #0
	bl ov83_0223FB30
	cmp r0, #0
	beq _0223FAEA
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x1e
	blo _0223FAE4
	ldr r1, [r5, #4]
	ldr r0, _0223FB2C ; =0x0000270F
	cmp r1, r0
	bhs _0223FADC
	add r0, r1, #1
	str r0, [r5, #4]
_0223FADC:
	mov r0, #1
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0xc]
_0223FAE4:
	mov r0, #0
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
_0223FAEA:
	add r0, r4, #0
	add r1, r6, #0
	bl ov83_0223FB50
	cmp r0, #0
	beq _0223FB26
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0x5a
	blo _0223FB2A
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0223FB14
	mov r0, #2
	str r0, [r5, #0x10]
	mov r0, #1
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
_0223FB14:
	mov r0, #1
	str r0, [r5, #0x10]
	ldr r1, [r5, #0]
	ldr r0, _0223FB2C ; =0x0000270F
	cmp r1, r0
	bhs _0223FB2A
	add r0, r1, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_0223FB26:
	mov r0, #0
	str r0, [r5, #0x14]
_0223FB2A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223FB2C: .word 0x0000270F
	thumb_func_end ov83_0223FAAC

	thumb_func_start ov83_0223FB30
ov83_0223FB30: ; 0x0223FB30
	cmp r1, #2
	bne _0223FB38
	mov r0, #0
	bx lr
_0223FB38:
	cmp r0, #0
	bge _0223FB3E
	neg r0, r0
_0223FB3E:
	ldr r1, _0223FB4C ; =0x00000E38
	cmp r0, r1
	blt _0223FB48
	mov r0, #1
	bx lr
_0223FB48:
	mov r0, #0
	bx lr
	; .align 2, 0
_0223FB4C: .word 0x00000E38
	thumb_func_end ov83_0223FB30

	thumb_func_start ov83_0223FB50
ov83_0223FB50: ; 0x0223FB50
	cmp r0, #0
	bge _0223FB56
	neg r0, r0
_0223FB56:
	ldr r1, _0223FB64 ; =0x0000038E
	cmp r0, r1
	bgt _0223FB60
	mov r0, #1
	bx lr
_0223FB60:
	mov r0, #0
	bx lr
	; .align 2, 0
_0223FB64: .word 0x0000038E
	thumb_func_end ov83_0223FB50

	thumb_func_start ov83_0223FB68
ov83_0223FB68: ; 0x0223FB68
	push {r3, lr}
	ldr r1, _0223FB9C ; =0x0000038E
	sub r0, r0, r1
	bpl _0223FB72
	mov r0, #0
_0223FB72:
	lsl r2, r0, #0xc
	asr r1, r2, #0x1f
	lsr r0, r2, #0x16
	lsl r3, r1, #0xa
	orr r3, r0
	mov r0, #2
	lsl r2, r2, #0xa
	mov r1, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r3, r1
	lsl r1, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, _0223FBA0 ; =0x00AAA000
	bl sub_020BCFD0
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r0, r1
	pop {r3, pc}
	; .align 2, 0
_0223FB9C: .word 0x0000038E
_0223FBA0: .word 0x00AAA000
	thumb_func_end ov83_0223FB68

	thumb_func_start ov83_0223FBA4
ov83_0223FBA4: ; 0x0223FBA4
	add r3, r0, #0
	mov r2, #0x10
	mov r1, #0
_0223FBAA:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _0223FBAA
	mov r1, #2
	str r1, [r0, #8]
	sub r1, r1, #3
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov83_0223FBA4

	thumb_func_start ov83_0223FBBC
ov83_0223FBBC: ; 0x0223FBBC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	str r1, [r5, #0xc]
	add r1, r2, #0
	add r6, r3, #0
	bl ov83_0223FC3C
	cmp r0, #1
	beq _0223FC34
	cmp r6, #1
	beq _0223FC34
	ldr r0, [r5, #4]
	cmp r0, #0
	bge _0223FC2E
	bl sub_0201D35C
	mov r1, #5
	add r6, r0, #0
	bl sub_020E2178
	ldr r0, [r5, #8]
	cmp r1, r0
	bhi _0223FBF4
	mov r1, #1
	str r1, [r5, #0xc]
	b _0223FBFA
_0223FBF4:
	mov r0, #1
	mov r1, #0
	str r0, [r5, #0xc]
_0223FBFA:
	ldr r0, [r5, #0]
	cmp r1, r0
	bne _0223FC18
	cmp r0, #1
	ldr r0, [r5, #8]
	bne _0223FC0E
	sub r0, r0, #1
	bmi _0223FC1E
	str r0, [r5, #8]
	b _0223FC1E
_0223FC0E:
	add r0, r0, #1
	cmp r0, #5
	bge _0223FC1E
	str r0, [r5, #8]
	b _0223FC1E
_0223FC18:
	str r1, [r5, #0]
	mov r0, #2
	str r0, [r5, #8]
_0223FC1E:
	add r0, r6, #0
	mov r1, #0x3c
	bl sub_020E2178
	ldr r0, _0223FC38 ; =0x022405F0
	ldrb r0, [r0, r4]
	add r0, r0, r1
	str r0, [r5, #4]
_0223FC2E:
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
_0223FC34:
	pop {r4, r5, r6, pc}
	nop
_0223FC38: .word 0x022405F0
	thumb_func_end ov83_0223FBBC

	thumb_func_start ov83_0223FC3C
ov83_0223FC3C: ; 0x0223FC3C
	cmp r1, #0
	bge _0223FC46
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0223FC50
_0223FC46:
	cmp r1, #0
	ble _0223FC54
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0223FC54
_0223FC50:
	mov r0, #1
	bx lr
_0223FC54:
	mov r0, #0
	bx lr
	thumb_func_end ov83_0223FC3C

	thumb_func_start ov83_0223FC58
ov83_0223FC58: ; 0x0223FC58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #0x1f
	add r0, r1, #0
	str r1, [sp]
	add r6, r7, #0
	bl ov83_0223FA8C
	add r4, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #3
	blt _0223FC74
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223FC74:
	mov r1, #0x96
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	cmp r2, r1
	beq _0223FC86
	ldr r1, _0223FCE4 ; =0x02240594
	ldrb r0, [r1, r0]
	cmp r4, r0
	blt _0223FCA0
_0223FC86:
	ldr r0, [r5, #8]
	mov r4, #0
	add r0, r0, #1
	str r0, [r5, #8]
	str r4, [r5, #0]
	ldr r1, [r5, #8]
	cmp r1, #3
	blt _0223FC9A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223FC9A:
	ldr r0, [sp]
	bl ov83_0223FA90
_0223FCA0:
	mov r0, #0x96
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	sub r1, r0, r1
	cmp r1, #0x3c
	bgt _0223FCB8
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0x3c
	bl sub_020E1F6C
	add r7, r0, #0
_0223FCB8:
	ldr r1, [r5, #8]
	ldr r0, _0223FCE4 ; =0x02240594
	ldrb r0, [r0, r1]
	sub r1, r0, r4
	cmp r1, #5
	bgt _0223FCD0
	mov r0, #0x1f
	mul r0, r1
	mov r1, #5
	bl sub_020E1F6C
	add r6, r0, #0
_0223FCD0:
	cmp r7, r6
	bge _0223FCD8
	str r7, [r5, #4]
	b _0223FCDA
_0223FCD8:
	str r6, [r5, #4]
_0223FCDA:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FCE4: .word 0x02240594
	thumb_func_end ov83_0223FC58

	thumb_func_start ov83_0223FCE8
ov83_0223FCE8: ; 0x0223FCE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	str r1, [r0, #0xc]
	add r7, r5, #0
	add r4, r3, #0
	str r0, [sp]
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	add r6, r2, #0
	add r7, #0x98
	bl ov83_0223FB50
	cmp r0, #1
	beq _0223FD18
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl ov83_0223FB30
	cmp r0, #1
	beq _0223FD18
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0223FD22
_0223FD18:
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0223FD22:
	cmp r6, #1
	bgt _0223FD30
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0223FD30:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	beq _0223FDAE
	mov r0, #0
	cmp r6, #0
	ble _0223FD5E
	mov r2, #0x96
	mov r4, #0x1c
	lsl r2, r2, #2
_0223FD42:
	mov r1, #0x13
	add r3, r5, r0
	lsl r1, r1, #4
	ldrb r1, [r3, r1]
	add r3, r1, #0
	mul r3, r4
	add r1, r5, r3
	add r1, #0x92
	ldrh r1, [r1]
	cmp r1, r2
	bls _0223FDAE
	add r0, r0, #1
	cmp r0, r6
	blt _0223FD42
_0223FD5E:
	mov r4, #1
	cmp r6, #1
	ble _0223FD8E
_0223FD64:
	mov r0, #0x13
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r2, [r1, r0]
	ldrb r0, [r7]
	ldrb r1, [r7, #4]
	add r3, r7, r2
	ldrb r2, [r7, r2]
	ldrb r3, [r3, #4]
	bl sub_0201E3BC
	cmp r0, #0x20
	bls _0223FD88
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0223FD88:
	add r4, r4, #1
	cmp r4, r6
	blt _0223FD64
_0223FD8E:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #4
	bge _0223FD9E
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0223FD9E:
	ldr r0, [sp]
	mov r2, #1
	str r2, [r0, #0xc]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #0]
	str r2, [r0, #8]
_0223FDAE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223FCE8

	thumb_func_start ov83_0223FDB0
ov83_0223FDB0: ; 0x0223FDB0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x68
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0xc
	bl ov83_0223FBA4
	mov r1, #0
	mov r0, #0x1f
	str r0, [r4, #0x50]
	add r4, #0xc
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov83_0223FBBC
	pop {r4, pc}
	thumb_func_end ov83_0223FDB0

	thumb_func_start ov83_0223FDD8
ov83_0223FDD8: ; 0x0223FDD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r0, #0x4c
	add r1, #0x1c
	add r6, r2, #0
	bl ov83_0223FC58
	cmp r0, #1
	bne _0223FDF6
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223FDF6:
	add r0, r5, #0
	ldr r3, [r5, #0xc]
	add r0, #0x1c
	add r1, r4, #0
	add r2, r6, #0
	bl ov83_0223F900
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FAA8
	add r7, r0, #0
	add r0, r5, #0
	ldr r2, [r5, #0x54]
	add r0, #0x30
	add r1, r7, #0
	bl ov83_0223FAAC
	add r0, r5, #0
	add r0, #0xc
	add r1, r7, #0
	bl ov83_0223FC3C
	ldr r1, [r5, #0x54]
	add r2, r6, #0
	str r1, [sp]
	ldr r1, [r5, #0x2c]
	add r3, r7, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x58
	add r1, r4, #0
	bl ov83_0223FCE8
	add r0, r5, #0
	ldr r1, [r5, #0x54]
	ldr r3, [r5, #0x60]
	add r0, #0xc
	add r2, r7, #0
	bl ov83_0223FBBC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223FDD8

	thumb_func_start ov83_0223FE50
ov83_0223FE50: ; 0x0223FE50
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r4, #0xc
	mov r2, #0
_0223FE5A:
	add r3, r1, #0
	add r3, #0x90
	ldrb r3, [r3]
	add r0, r4, r2
	strb r3, [r4, r2]
	add r3, r1, #0
	add r3, #0x91
	ldrb r3, [r3]
	add r2, r2, #1
	add r1, #0x1c
	strb r3, [r0, #4]
	cmp r2, #4
	blt _0223FE5A
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FAA8
	cmp r0, #0
	blt _0223FE86
	strh r0, [r4, #0xa]
	mov r0, #0
	b _0223FE8C
_0223FE86:
	neg r0, r0
	strh r0, [r4, #0xa]
	mov r0, #1
_0223FE8C:
	strb r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FA84
	strh r0, [r4, #8]
	ldr r0, [r5, #0x40]
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0x48]
	strb r0, [r4, #0x13]
	ldr r0, [r5, #0xc]
	strb r0, [r4, #0x11]
	ldr r0, [r5, #0x18]
	strb r0, [r4, #0xe]
	ldr r0, [r5, #0x54]
	cmp r0, #3
	bge _0223FEB0
	b _0223FEB2
_0223FEB0:
	mov r0, #2
_0223FEB2:
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x50]
	strb r0, [r4, #0x10]
	ldr r0, [r5, #0x64]
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223FE50

	thumb_func_start ov83_0223FEC0
ov83_0223FEC0: ; 0x0223FEC0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r4, #0xc
	mov r2, #0
_0223FECA:
	add r3, r1, #0
	add r3, #0x90
	ldrb r3, [r3]
	add r0, r4, r2
	strb r3, [r4, r2]
	add r3, r1, #0
	add r3, #0x91
	ldrb r3, [r3]
	add r2, r2, #1
	add r1, #0x1c
	strb r3, [r0, #4]
	cmp r2, #4
	blt _0223FECA
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FAA8
	cmp r0, #0
	blt _0223FEF6
	strh r0, [r4, #0xa]
	mov r0, #0
	b _0223FEFC
_0223FEF6:
	neg r0, r0
	strh r0, [r4, #0xa]
	mov r0, #1
_0223FEFC:
	strb r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FA84
	strh r0, [r4, #8]
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0223FF10
	strb r0, [r4, #0x12]
_0223FF10:
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _0223FF1A
	ldr r0, [r5, #0x48]
	strb r0, [r4, #0x13]
_0223FF1A:
	ldr r0, [r5, #0x18]
	cmp r0, #1
	bne _0223FF28
	ldr r0, [r5, #0xc]
	strb r0, [r4, #0x11]
	ldr r0, [r5, #0x18]
	strb r0, [r4, #0xe]
_0223FF28:
	ldr r0, [r5, #0x54]
	cmp r0, #3
	bge _0223FF30
	b _0223FF32
_0223FF30:
	mov r0, #2
_0223FF32:
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x50]
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0223FF42
	ldr r0, [r5, #0x64]
	strb r0, [r4, #0xf]
_0223FF42:
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223FEC0

	thumb_func_start ov83_0223FF44
ov83_0223FF44: ; 0x0223FF44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r3, #0
	mov r1, #0x80
	mov r0, #0x60
_0223FF50:
	add r2, r4, r3
	strb r1, [r4, r3]
	add r3, r3, #1
	strb r0, [r2, #4]
	cmp r3, #4
	blt _0223FF50
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FAA8
	cmp r0, #0
	blt _0223FF6E
	strh r0, [r4, #0xa]
	mov r0, #0
	b _0223FF74
_0223FF6E:
	neg r0, r0
	strh r0, [r4, #0xa]
	mov r0, #1
_0223FF74:
	strb r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FA84
	strh r0, [r4, #8]
	ldr r0, [r5, #0x40]
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0x48]
	strb r0, [r4, #0x13]
	ldr r0, [r5, #0xc]
	strb r0, [r4, #0x11]
	ldr r0, [r5, #0x18]
	strb r0, [r4, #0xe]
	ldr r0, [r5, #0x54]
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x50]
	strb r0, [r4, #0x10]
	ldr r0, [r5, #0x64]
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223FF44

	thumb_func_start ov83_0223FFA0
ov83_0223FFA0: ; 0x0223FFA0
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov83_0223FFA0

	thumb_func_start ov83_0223FFA8
ov83_0223FFA8: ; 0x0223FFA8
	push {r4, lr}
	add r4, r1, #0
	mov r1, #6
	bl sub_020E2178
	ldr r1, _0223FFCC ; =0x02240597
	ldrb r1, [r1, r4]
	mul r1, r0
	add r0, r1, #0
	mov r1, #0xa
	bl sub_020E2178
	ldr r1, _0223FFD0 ; =0x0000270F
	cmp r0, r1
	ble _0223FFC8
	add r0, r1, #0
_0223FFC8:
	pop {r4, pc}
	nop
_0223FFCC: .word 0x02240597
_0223FFD0: .word 0x0000270F
	thumb_func_end ov83_0223FFA8

	thumb_func_start ov83_0223FFD4
ov83_0223FFD4: ; 0x0223FFD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	str r0, [sp]
	ldr r0, [sp, #0x78]
	str r1, [sp, #4]
	str r0, [sp, #0x78]
	add r0, r2, #0
	str r0, [sp, #0x24]
	add r0, #0x34
	str r0, [sp, #0x24]
	mov r1, #0
	add r0, sp, #0x4c
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	add r0, r1, #0
	add r6, r3, #0
	str r2, [sp, #8]
	str r1, [sp, #0x20]
	str r0, [sp, #0x18]
	str r0, [sp, #0x28]
	cmp r6, #0
	bls _02240086
_02240006:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x28]
	add r1, r1, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	ldr r1, [sp, #0x78]
	lsl r4, r0, #2
	ldr r0, [sp, #0x24]
	ldr r0, [r0, r4]
	bl sub_020973C8
	mov r3, #0
	add r7, r0, #0
	add r2, r3, #0
	cmp r6, #0
	bls _02240048
	ldr r0, [sp, #0x24]
	mov r5, #0x13
	ldr r4, [r0, r4]
	lsl r5, r5, #4
_02240030:
	ldr r0, [sp, #8]
	add r0, r0, r2
	ldrb r0, [r0, r5]
	lsl r1, r0, #2
	ldr r0, [sp, #0x24]
	ldr r0, [r0, r1]
	cmp r4, r0
	bne _02240042
	add r3, r3, #1
_02240042:
	add r2, r2, #1
	cmp r2, r6
	blo _02240030
_02240048:
	ldr r0, [sp, #0x18]
	cmp r3, r0
	ble _02240050
	str r3, [sp, #0x18]
_02240050:
	mov r5, #0
	add r4, sp, #0x4c
_02240054:
	add r0, r7, #0
	add r1, r5, #5
	bl sub_020973D4
	ldr r1, [r4, #0]
	add r5, r5, #1
	add r0, r1, r0
	stmia r4!, {r0}
	cmp r5, #5
	blt _02240054
	add r0, r7, #0
	mov r1, #0xa
	bl sub_020973D4
	ldr r1, [sp, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, r6
	blo _02240006
_02240086:
	ldr r0, [sp, #0x18]
	cmp r0, #2
	blt _02240096
	cmp r6, #1
	bls _02240096
	mov r0, #1
	str r0, [sp, #0x14]
	b _0224009A
_02240096:
	mov r0, #0
	str r0, [sp, #0x14]
_0224009A:
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	bl sub_020E2178
	sub r0, r0, r6
	mov r5, #0
	add r4, sp, #0x4c
	str r0, [sp, #0x1c]
	str r5, [sp, #0xc]
	add r7, sp, #0x38
	str r4, [sp, #0x2c]
_022400B0:
	ldr r0, [sp, #0xc]
	mov r1, #5
	add r0, r0, #1
	bl sub_020E1F6C
	lsl r2, r1, #2
	ldr r1, [sp, #0x2c]
	ldr r0, [r4, #0]
	ldr r1, [r1, r2]
	sub r0, r0, r1
	str r0, [r7, #0]
	bpl _022400CA
	add r5, r5, #1
_022400CA:
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #0xc]
	cmp r0, #5
	blt _022400B0
	mov r2, #0
	add r1, sp, #0x38
_022400DC:
	ldr r0, [r1, #0]
	add r2, r2, #1
	sub r0, r0, r5
	stmia r1!, {r0}
	cmp r2, #5
	blt _022400DC
	cmp r5, #4
	blt _022400F0
	mov r0, #1
	str r0, [sp, #0x14]
_022400F0:
	ldr r1, [sp]
	ldr r0, _022401A8 ; =0x001B7740
	ldr r1, [r1, #0]
	bl sub_020E2178
	mov r1, #0xa
	add r5, r0, #0
	bl sub_020E1F6C
	cmp r1, #5
	blt _02240108
	add r5, #0xa
_02240108:
	add r0, r5, #0
	mov r1, #0xa
	mov r7, #0
	add r4, sp, #0x38
	bl sub_020E1F6C
	str r0, [sp, #0x10]
_02240116:
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0]
	add r5, r0, #0
	mul r5, r1
	add r0, r5, #0
	mov r1, #0x64
	bl sub_020E1F6C
	cmp r1, #0x32
	blt _0224012C
	add r5, #0x64
_0224012C:
	add r0, r5, #0
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r1, [sp]
	ldr r2, [r1, #0x30]
	ldr r1, [r1, #0x34]
	add r1, r2, r1
	sub r0, r0, r1
	str r0, [r4, #0]
	bpl _02240146
	mov r0, #0
	str r0, [r4, #0]
_02240146:
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #5
	blt _02240116
	cmp r6, #1
	bls _02240168
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, #0x58]
	bl ov83_0223FFA8
	cmp r0, #0xa
	ble _02240162
	mov r0, #0xa
_02240162:
	ldr r1, [sp, #0x1c]
	sub r0, r1, r0
	str r0, [sp, #0x1c]
_02240168:
	ldr r0, [sp, #0x1c]
	cmp r0, #0xf
	bge _02240172
	mov r0, #0xf
	str r0, [sp, #0x1c]
_02240172:
	mov r3, #0
	add r1, sp, #0x38
	add r2, sp, #0x30
_02240178:
	ldr r0, [r1, #0]
	add r3, r3, #1
	strb r0, [r2]
	add r1, r1, #4
	add r2, r2, #1
	cmp r3, #5
	blt _02240178
	ldr r2, [sp, #0x1c]
	ldr r0, [sp, #4]
	lsl r2, r2, #0x18
	ldr r3, [sp, #0x14]
	add r1, sp, #0x30
	lsr r2, r2, #0x18
	bl sub_0202A9E4
	ldr r1, [sp]
	str r0, [r1, #4]
	ldr r0, [sp, #4]
	bl sub_0202AABC
	ldr r1, [sp]
	str r0, [r1, #8]
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022401A8: .word 0x001B7740
	thumb_func_end ov83_0223FFD4

	thumb_func_start ov83_022401AC
ov83_022401AC: ; 0x022401AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	str r0, [r1, #0x20]
	ldr r0, [r5, #0x30]
	add r4, #0x20
	str r0, [r4, #4]
	ldr r0, [r5, #0x58]
	add r1, r2, #0
	bl ov83_0223FFA8
	str r0, [r4, #8]
	ldr r0, [r5, #4]
	ldr r1, _02240204 ; =0x00000708
	strb r0, [r4, #0xc]
	ldr r0, [r5, #8]
	strb r0, [r4, #0xd]
	ldr r5, [r5, #0]
	add r0, r5, #0
	bl sub_020E1F6C
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xe]
	ldr r0, _02240204 ; =0x00000708
	mul r0, r1
	sub r5, r5, r0
	add r0, r5, #0
	mov r1, #0x1e
	bl sub_020E1F6C
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xf]
	mov r1, #0x1e
	add r2, r0, #0
	mul r2, r1
	sub r2, r5, r2
	mov r0, #0x64
	mul r0, r2
	bl sub_020E1F6C
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	nop
_02240204: .word 0x00000708
	thumb_func_end ov83_022401AC

	.rodata


	.global Unk_ov83_02240590
Unk_ov83_02240590: ; 0x02240590
	.incbin "incbin/overlay83_rodata.bin", 0x388, 0x38C - 0x388

	.global Unk_ov83_02240594
Unk_ov83_02240594: ; 0x02240594
	.incbin "incbin/overlay83_rodata.bin", 0x38C, 0x390 - 0x38C

	.global Unk_ov83_02240598
Unk_ov83_02240598: ; 0x02240598
	.incbin "incbin/overlay83_rodata.bin", 0x390, 0x394 - 0x390

	.global Unk_ov83_0224059C
Unk_ov83_0224059C: ; 0x0224059C
	.incbin "incbin/overlay83_rodata.bin", 0x394, 0x6


	.data


	.global Unk_ov83_022405F0
Unk_ov83_022405F0: ; 0x022405F0
	.incbin "incbin/overlay83_data.bin", 0x30, 0x3

