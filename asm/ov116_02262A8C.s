	.include "macros/function.inc"
	.include "include/ov116_02262A8C.inc"

	

	.text


	thumb_func_start ov116_02262A8C
ov116_02262A8C: ; 0x02262A8C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _02262AD8 ; =0x00002BBC
	mov r0, #0x6a
	add r7, r2, #0
	bl sub_02018144
	ldr r2, _02262AD8 ; =0x00002BBC
	add r4, r0, #0
	mov r1, #0
	bl memset
	str r5, [r4, #4]
	ldr r3, _02262ADC ; =0x00002BB8
	str r6, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r7, [r4, #0x14]
	add r1, r3, #0
	str r0, [r4, r3]
	sub r1, #0xcc
	ldr r2, [r4, r1]
	ldr r1, _02262AE0 ; =0x00002228
	str r2, [r4, r1]
	add r2, r3, #0
	sub r2, #0xcc
	add r2, r4, r2
	add r1, r1, #4
	str r2, [r4, r1]
	sub r3, #0x24
	str r0, [r4, r3]
	add r0, r4, #0
	bl ov116_02262AE4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262AD8: .word 0x00002BBC
_02262ADC: .word 0x00002BB8
_02262AE0: .word 0x00002228
	thumb_func_end ov116_02262A8C

	thumb_func_start ov116_02262AE4
ov116_02262AE4: ; 0x02262AE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _02262C48 ; =0x00001FC8
	add r7, r0, #0
	mov r0, #0
	mov r3, #0x19
	str r0, [r7, r2]
	add r1, r2, #4
	lsl r3, r3, #0xe
	str r3, [r7, r1]
	add r2, #8
	mov r3, #0x31
	ldr r1, _02262C4C ; =0x0000051C
	str r0, [r7, r2]
	str r0, [r7, r1]
	add r2, r1, #4
	str r0, [r7, r2]
	lsl r3, r3, #4
	str r0, [r7, r3]
	add r2, r3, #4
	str r0, [r7, r2]
	sub r1, r1, #4
	str r0, [r7, r1]
	sub r1, r3, #4
	sub r3, #0x6c
	str r0, [r7, r1]
	add r0, r7, r3
	bl ov116_02266FEC
	mov r0, #0xad
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov116_02266FEC
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r7, r0
	bl ov116_02266FEC
	mov r0, #0x13
	lsl r0, r0, #6
	add r0, r7, r0
	bl ov116_02266FEC
	ldr r0, _02262C50 ; =0x00000AD4
	add r0, r7, r0
	bl ov116_02266FEC
	ldr r0, _02262C54 ; =0x00000AE4
	add r0, r7, r0
	bl ov116_02266FEC
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xce
	lsl r0, r0, #4
	add r6, r7, r0
	add r0, #0x10
	add r4, r7, r0
	mov r0, #0xb5
	lsl r0, r0, #4
	add r5, r7, r0
_02262B60:
	add r0, r6, #0
	bl ov116_02266FEC
	add r0, r4, #0
	bl ov116_02266FEC
	mov r0, #5
	str r0, [sp]
	ldr r0, _02262C58 ; =0x3F4CCCCD
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #5
	bl ov116_0226432C
	mov r1, #0
	mov r0, #4
	mvn r0, r0
	str r0, [sp]
	ldr r0, _02262C58 ; =0x3F4CCCCD
	add r2, r1, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	sub r3, r1, #5
	bl ov116_0226432C
	mov r0, #0x83
	lsl r0, r0, #2
	add r6, r6, r0
	add r4, r4, r0
	add r5, r5, r0
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #8
	blt _02262B60
	mov r3, #5
	ldr r0, _02262C5C ; =0x3FF0A3D7
	str r3, [sp]
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r7, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02262C5C ; =0x3FF0A3D7
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r7, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #5
	mov r1, #0
	ldr r0, _02262C58 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r7, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02262C58 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r7, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #5
	mov r1, #0
	ldr r0, _02262C5C ; =0x3FF0A3D7
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _02262C60 ; =0x00000944
	add r2, r1, #0
	add r0, r7, r0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02262C58 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _02262C60 ; =0x00000944
	add r2, r1, #0
	add r0, r7, r0
	str r1, [sp, #8]
	bl ov116_0226432C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262C48: .word 0x00001FC8
_02262C4C: .word 0x0000051C
_02262C50: .word 0x00000AD4
_02262C54: .word 0x00000AE4
_02262C58: .word 0x3F4CCCCD
_02262C5C: .word 0x3FF0A3D7
_02262C60: .word 0x00000944
	thumb_func_end ov116_02262AE4

	thumb_func_start ov116_02262C64
ov116_02262C64: ; 0x02262C64
	ldr r3, _02262C68 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02262C68: .word sub_020181C4
	thumb_func_end ov116_02262C64

	thumb_func_start ov116_02262C6C
ov116_02262C6C: ; 0x02262C6C
	ldr r1, _02262C80 ; =0x00001FCC
	ldr r0, [r0, r1]
	asr r0, r0, #0xc
	cmp r0, #0x2d
	bgt _02262C7A
	mov r0, #1
	bx lr
_02262C7A:
	mov r0, #0
	bx lr
	nop
_02262C80: .word 0x00001FCC
	thumb_func_end ov116_02262C6C

	thumb_func_start ov116_02262C84
ov116_02262C84: ; 0x02262C84
	push {r3, lr}
	ldr r1, _02262CB4 ; =0x00001FCC
	ldr r1, [r0, r1]
	asr r1, r1, #0xc
	cmp r1, #0x4b
	bge _02262C9C
	cmp r1, #0x3d
	ble _02262C9C
	mov r1, #1
	bl ov116_02261C48
	pop {r3, pc}
_02262C9C:
	cmp r1, #0x3c
	bge _02262CAC
	cmp r1, #0x2e
	ble _02262CAC
	mov r1, #2
	bl ov116_02261C48
	pop {r3, pc}
_02262CAC:
	mov r1, #0
	bl ov116_02261C48
	pop {r3, pc}
	; .align 2, 0
_02262CB4: .word 0x00001FCC
	thumb_func_end ov116_02262C84

	thumb_func_start ov116_02262CB8
ov116_02262CB8: ; 0x02262CB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x6a
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	add r1, r5, #0
	add r1, #0xf4
	lsl r0, r6, #1
	ldrh r2, [r1, r0]
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, #0x1c]
	str r2, [r4, #0xc]
	ldrh r0, [r1, r0]
	mov r2, #1
	add r1, r4, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	lsl r2, r2, #0xc
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x2c]
	ldr r0, _02262D04 ; =ov116_02263158
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_02262D04: .word ov116_02263158
	thumb_func_end ov116_02262CB8

	thumb_func_start ov116_02262D08
ov116_02262D08: ; 0x02262D08
	push {r3, r4, r5, lr}
	ldr r2, _02262D58 ; =0x000029D0
	add r3, r0, r2
	mov r2, #0x44
	mul r2, r1
	add r3, r3, r2
	ldr r2, [r3, #0x30]
	cmp r2, #1
	beq _02262D56
	ldr r4, _02262D5C ; =0x00002BB4
	ldr r2, [r0, r4]
	sub r4, #0xac
	str r2, [r3, #0x40]
	mov r2, #1
	add r5, r0, r4
	lsl r4, r1, #2
	str r2, [r3, #0x30]
	add r4, r5, r4
	str r4, [r3, #0x2c]
	ldr r4, [r4, #0]
	lsl r1, r1, #1
	add r1, r0, r1
	str r4, [r3, #0x28]
	add r1, #0xf4
	ldrh r1, [r1]
	lsl r2, r2, #0xc
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r1, [r1, #0x34]
	str r1, [r3, #0xc]
	mov r1, #0
	str r1, [r3, #0]
	str r1, [r3, #4]
	ldr r0, [r0, #0x14]
	add r1, r3, #0
	str r0, [r3, #0x3c]
	ldr r0, _02262D60 ; =ov116_0226323C
	bl sub_0200D9E8
_02262D56:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02262D58: .word 0x000029D0
_02262D5C: .word 0x00002BB4
_02262D60: .word ov116_0226323C
	thumb_func_end ov116_02262D08

	thumb_func_start ov116_02262D64
ov116_02262D64: ; 0x02262D64
	push {r3, lr}
	ldr r2, _02262DAC ; =0x000029D0
	add r3, r0, r2
	mov r2, #0x44
	mul r2, r1
	add r1, r3, r2
	ldr r2, [r1, #0x30]
	cmp r2, #1
	beq _02262DA8
	ldr r3, _02262DB0 ; =0x00002BB4
	ldr r2, [r0, r3]
	sub r3, #0xc8
	str r2, [r1, #0x40]
	mov r2, #1
	str r2, [r1, #0x30]
	add r3, r0, r3
	str r3, [r1, #0x2c]
	ldr r3, [r3, #0]
	lsl r2, r2, #0xc
	str r3, [r1, #0x28]
	ldr r3, _02262DB4 ; =0x00001BB0
	add r3, r0, r3
	str r3, [r1, #0x34]
	ldr r3, _02262DB8 ; =0x00001DBC
	add r3, r0, r3
	str r3, [r1, #0x38]
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	ldr r0, [r0, #0x14]
	str r0, [r1, #0x3c]
	ldr r0, _02262DBC ; =ov116_02263434
	bl sub_0200D9E8
_02262DA8:
	pop {r3, pc}
	nop
_02262DAC: .word 0x000029D0
_02262DB0: .word 0x00002BB4
_02262DB4: .word 0x00001BB0
_02262DB8: .word 0x00001DBC
_02262DBC: .word ov116_02263434
	thumb_func_end ov116_02262D64

	thumb_func_start ov116_02262DC0
ov116_02262DC0: ; 0x02262DC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x6a
	mov r1, #0x7c
	bl sub_02018144
	mov r1, #0
	mov r2, #0x7c
	add r4, r0, #0
	bl memset
	mov r0, #0x11
	lsl r0, r0, #4
	add r1, r5, r0
	str r1, [r4, #0xc]
	mov r1, #0x32
	lsl r1, r1, #4
	add r1, r5, r1
	add r0, r0, #4
	add r2, r4, #0
	str r1, [r4, #0x10]
	add r0, r5, r0
	str r0, [r4, #0x14]
	ldr r0, _02262E40 ; =0x00001FC8
	add r2, #0x20
	add r3, r5, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0
	str r0, [r2, #0]
	ldr r0, _02262E44 ; =0x00002BB4
	ldr r0, [r5, r0]
	str r0, [r4, #0x74]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x78]
	add r0, r5, #0
	bl ov116_02261C48
	mov r0, #0xea
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02017240
	ldr r0, _02262E48 ; =0x000005B4
	mov r1, #0
	add r0, r5, r0
	bl sub_02017240
	mov r0, #0x1f
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl sub_02017240
	mov r2, #1
	ldr r0, _02262E4C ; =ov116_02262E50
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	nop
_02262E40: .word 0x00001FC8
_02262E44: .word 0x00002BB4
_02262E48: .word 0x000005B4
_02262E4C: .word ov116_02262E50
	thumb_func_end ov116_02262DC0

	thumb_func_start ov116_02262E50
ov116_02262E50: ; 0x02262E50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0x28]
	lsl r0, r0, #4
	asr r5, r0, #0x10
	bl sub_0200F2AC
	cmp r0, #0
	beq _02262E70
	ldr r0, [r4, #0x78]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02262E80
_02262E70:
	add r0, r6, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02262E80:
	ldr r0, [r4, #0]
	cmp r0, #3
	bls _02262E88
	b _022630E0
_02262E88:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02262E94: ; jump table
	.short _02262E9C - _02262E94 - 2 ; case 0
	.short _02262F4E - _02262E94 - 2 ; case 1
	.short _0226306A - _02262E94 - 2 ; case 2
	.short _022630AC - _02262E94 - 2 ; case 3
_02262E9C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	cmp r0, #0
	bne _02262EF0
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #3
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x44
	add r2, r1, r2
	mov r3, #4
	bl ov116_02264764
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _02262ED8
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #4
	bl ov116_02264764
	b _02262F3A
_02262ED8:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #4
	bl ov116_02264764
	b _02262F3A
_02262EF0:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #3
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x44
	add r2, r1, r2
	mov r3, #8
	bl ov116_02264764
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _02262F24
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #8
	bl ov116_02264764
	b _02262F3A
_02262F24:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #4
	bl ov116_02264764
_02262F3A:
	ldr r0, _02263140 ; =0x0000060B
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_02262F4E:
	add r0, r4, #0
	add r0, #0x44
	bl ov116_02264774
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0x5c
	bl ov116_02264774
	add r6, r0, #0
	mov r0, #0x79
	ldr r2, [r4, #0x44]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r1, r0, #4
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x10]
	cmp r7, #0
	str r3, [r2, r1]
	beq _02262F7C
	cmp r6, #0
	bne _02262F7E
_02262F7C:
	b _0226313C
_02262F7E:
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _02263018
	ldr r1, [r4, #0xc]
	mov r2, #1
	str r2, [r1, #0]
	ldr r1, [r4, #0x10]
	sub r0, #0x54
	add r0, r1, r0
	bl ov116_02266FEC
	mov r0, #0x1a
	ldr r1, [r4, #0x10]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov116_02266FEC
	mov r3, #5
	mov r1, #0
	ldr r0, _02263144 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02263144 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ov116_0226432C
	mov r0, #0x79
	mov r2, #3
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x44
	sub r2, r1, r2
	mov r3, #8
	bl ov116_02264764
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _02263000
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #8
	bl ov116_02264764
	b _02263060
_02263000:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #8
	bl ov116_02264764
	b _02263060
_02263018:
	ldr r1, [r4, #0x10]
	mov r2, #3
	ldr r1, [r1, r0]
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x44
	sub r2, r1, r2
	mov r3, #4
	bl ov116_02264764
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _0226304A
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #4
	bl ov116_02264764
	b _02263060
_0226304A:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #4
	bl ov116_02264764
_02263060:
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0226306A:
	add r0, r4, #0
	add r0, #0x44
	bl ov116_02264774
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x5c
	bl ov116_02264774
	mov r1, #0x79
	ldr r3, [r4, #0x44]
	ldr r2, [r4, #0x10]
	lsl r1, r1, #2
	str r3, [r2, r1]
	add r1, r1, #4
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x10]
	cmp r5, #0
	str r3, [r2, r1]
	beq _0226313C
	cmp r0, #0
	beq _0226313C
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022630A2
	ldr r0, _02263148 ; =0x00000631
	bl sub_02005748
_022630A2:
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022630AC:
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _022630D8
	ldr r0, [r4, #8]
	cmp r0, #8
	bne _022630BE
	ldr r0, _0226314C ; =0x00000575
	bl sub_02005748
_022630BE:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x28
	blt _0226313C
	ldr r0, [r4, #0xc]
	mov r1, #2
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022630D8:
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022630E0:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _0226310A
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x2d
	blt _0226313C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, _02263140 ; =0x0000060B
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_0226310A:
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	blt _0226313C
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0226311C
	ldr r2, _02263150 ; =0xFFFF8000
	b _0226311E
_0226311C:
	ldr r2, _02263154 ; =0xFFFEC000
_0226311E:
	mov r0, #0x79
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	str r2, [r1, r0]
	mov r0, #0x7a
	ldr r1, [r4, #0x10]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r6, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
_0226313C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02263140: .word 0x0000060B
_02263144: .word 0x3F4CCCCD
_02263148: .word 0x00000631
_0226314C: .word 0x00000575
_02263150: .word 0xFFFF8000
_02263154: .word 0xFFFEC000
	thumb_func_end ov116_02262E50

	thumb_func_start ov116_02263158
ov116_02263158: ; 0x02263158
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200D3E0
	bl sub_0200F2AC
	cmp r0, #0
	beq _02263178
	ldr r0, [r4, #0x2c]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02263188
_02263178:
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, pc}
_02263188:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02263194
	cmp r0, #1
	beq _022631D8
	b _02263204
_02263194:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_0200D638
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022631BC
	mov r2, #2
	add r0, r4, #0
	ldr r1, [sp, #8]
	lsl r2, r2, #0x10
	add r0, #0x14
	add r2, r1, r2
	mov r3, #0x10
	bl ov116_02264764
	b _022631CE
_022631BC:
	mov r2, #2
	add r0, r4, #0
	ldr r1, [sp, #8]
	lsl r2, r2, #0x10
	add r0, #0x14
	sub r2, r1, r2
	mov r3, #4
	bl ov116_02264764
_022631CE:
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_022631D8:
	add r0, r4, #0
	add r0, #0x14
	bl ov116_02264774
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0200D638
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #4]
	ldr r2, [r4, #0x14]
	bl sub_0200D614
	cmp r5, #0
	beq _02263236
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02263204:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _02263222
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x23
	blt _02263236
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02263222:
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	blt _02263236
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
_02263236:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_02263158

	thumb_func_start ov116_0226323C
ov116_0226323C: ; 0x0226323C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _02263256
	ldr r0, [r4, #0x3c]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02263264
_02263256:
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #8
	pop {r3, r4, r5, pc}
_02263264:
	ldr r0, [r4, #0]
	cmp r0, #5
	bls _0226326C
	b _022633F6
_0226326C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263278: ; jump table
	.short _02263284 - _02263278 - 2 ; case 0
	.short _022632F8 - _02263278 - 2 ; case 1
	.short _0226332A - _02263278 - 2 ; case 2
	.short _02263340 - _02263278 - 2 ; case 3
	.short _02263370 - _02263278 - 2 ; case 4
	.short _022633C0 - _02263278 - 2 ; case 5
_02263284:
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl sub_0200D364
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200D474
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0xc]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0200D788
	ldr r0, [sp]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02263428 ; =0x45800000
	bls _022632C4
	ldr r1, [sp]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022632D2
_022632C4:
	ldr r1, [sp]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022632D2:
	bl _f_ftoi
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	add r0, #0x10
	lsl r2, r2, #0xc
	mov r3, #2
	bl ov116_02264764
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0]
	sub r1, r1, #1
	bl sub_0200D430
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022632F8:
	add r0, r4, #0
	add r0, #0x10
	bl ov116_02264774
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl _f_itof
	ldr r1, _02263428 ; =0x45800000
	bl _fdiv
	add r2, r0, #0
	mov r1, #0xfe
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x16
	bl sub_0200D6E8
	cmp r5, #0
	bne _02263320
	b _02263424
_02263320:
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_0226332A:
	add r0, r4, #0
	mov r1, #2
	ldr r2, _0226342C ; =0x00000666
	add r0, #0x10
	lsl r1, r1, #0xc
	mov r3, #4
	bl ov116_02264764
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02263340:
	add r0, r4, #0
	add r0, #0x10
	bl ov116_02264774
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl _f_itof
	ldr r1, _02263428 ; =0x45800000
	bl _fdiv
	add r2, r0, #0
	mov r1, #0xfe
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x16
	bl sub_0200D6E8
	cmp r5, #0
	beq _02263424
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02263370:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	ldr r0, [r0, #0]
	cmp r1, r0
	beq _02263380
	mov r0, #0
	str r0, [r4, #0]
	b _022633AA
_02263380:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02263396
	add r0, r4, #0
	ldr r1, _0226342C ; =0x00000666
	ldr r2, _02263430 ; =0x00000CCD
	add r0, #0x10
	mov r3, #2
	bl ov116_02264764
	b _022633A4
_02263396:
	ldr r1, _02263430 ; =0x00000CCD
	add r0, r4, #0
	add r0, #0x10
	lsr r2, r1, #1
	mov r3, #4
	bl ov116_02264764
_022633A4:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022633AA:
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #0]
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02263424
	mov r0, #0xff
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_022633C0:
	add r0, r4, #0
	add r0, #0x10
	bl ov116_02264774
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl _f_itof
	ldr r1, _02263428 ; =0x45800000
	bl _fdiv
	add r2, r0, #0
	mov r1, #0xfe
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x16
	bl sub_0200D6E8
	cmp r5, #0
	beq _02263424
	mov r0, #4
	str r0, [r4, #0]
	ldr r1, [r4, #4]
	mov r0, #1
	eor r0, r1
	add sp, #8
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_022633F6:
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl sub_0200D364
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_0200D474
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200D6A4
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl sub_0200DA58
_02263424:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02263428: .word 0x45800000
_0226342C: .word 0x00000666
_02263430: .word 0x00000CCD
	thumb_func_end ov116_0226323C

	thumb_func_start ov116_02263434
ov116_02263434: ; 0x02263434
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r0, #0
	ldr r6, [r4, #0x34]
	ldr r5, [r4, #0x38]
	bl sub_0200F2AC
	cmp r0, #0
	beq _02263454
	ldr r2, [r4, #0x3c]
	add r0, r2, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _0226349E
_02263454:
	add r0, r6, #0
	bl ov116_0226192C
	add r0, r5, #0
	bl ov116_0226192C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020171A0
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl sub_0200DA58
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0226349E:
	ldr r0, [r4, #0x2c]
	ldr r1, [r0, #0]
	sub r3, r1, #1
	bmi _022634AA
	cmp r3, #4
	ble _022634AC
_022634AA:
	mov r3, #0
_022634AC:
	ldr r0, [r4, #0]
	cmp r0, #5
	bls _022634B4
	b _02263722
_022634B4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022634C0: ; jump table
	.short _022634CC - _022634C0 - 2 ; case 0
	.short _022634EC - _022634C0 - 2 ; case 1
	.short _022635A0 - _022634C0 - 2 ; case 2
	.short _022635C0 - _022634C0 - 2 ; case 3
	.short _0226369C - _022634C0 - 2 ; case 4
	.short _022636C8 - _022634C0 - 2 ; case 5
_022634CC:
	ldr r1, [r2, #0]
	ldr r2, _0226376C ; =0x02267BD4
	lsl r3, r3, #3
	ldr r2, [r2, r3]
	add r0, r6, #0
	bl ov116_022618A8
	ldr r1, [r4, #0x40]
	add r0, r6, #0
	bl ov116_022618B4
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022634EC:
	mov r0, #0x6a
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r6, #0
	ldr r2, [r2, #0]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x27
	bl sub_02017164
	add r1, r6, #0
	ldr r2, [r4, #0x3c]
	mov r0, #0x6a
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r2, [r2, #0]
	add r0, #0x9c
	add r1, #0x78
	mov r3, #0x28
	bl sub_02017164
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x88
	bl sub_0201727C
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x9c
	bl sub_0201727C
	add r0, r6, #0
	add r0, #0x88
	mov r1, #0
	bl sub_02017240
	add r0, r6, #0
	add r0, #0x9c
	mov r1, #0
	bl sub_02017240
	add r0, r6, #0
	mov r1, #0
	bl sub_02017348
	mov r0, #0x7b
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	sub r0, #0x5c
	add r0, r6, r0
	bl ov116_02266FEC
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r6, r0
	bl ov116_02266FEC
	mov r3, #5
	mov r1, #0
	ldr r0, _02263770 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02263770 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r6, #0
	add r2, r1, #0
	bl ov116_0226432C
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022635A0:
	ldr r1, [r2, #0]
	ldr r2, _02263774 ; =0x02267BD8
	lsl r3, r3, #3
	ldr r2, [r2, r3]
	add r0, r5, #0
	bl ov116_022618A8
	ldr r1, [r4, #0x40]
	add r0, r5, #0
	bl ov116_022618B4
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022635C0:
	mov r0, #0x6a
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	ldr r2, [r2, #0]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x29
	bl sub_02017164
	add r1, r5, #0
	ldr r2, [r4, #0x3c]
	mov r0, #0x6a
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r2, [r2, #0]
	add r0, #0x9c
	add r1, #0x78
	mov r3, #0x2a
	bl sub_02017164
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x88
	bl sub_0201727C
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x9c
	bl sub_0201727C
	add r0, r5, #0
	add r0, #0x88
	mov r1, #0
	bl sub_02017240
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #0
	bl sub_02017240
	add r0, r5, #0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x7b
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0x5c
	add r0, r5, r0
	bl ov116_02266FEC
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov116_02266FEC
	mov r3, #5
	mov r1, #0
	ldr r0, _02263770 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02263770 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	add r2, r1, #0
	bl ov116_0226432C
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _02263692
	mov r1, #0
	ldr r2, _02263778 ; =0xFFFF8000
	add r0, r6, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #0
	ldr r2, _02263778 ; =0xFFFF8000
	add r0, r5, #0
	add r3, r1, #0
	bl sub_02017350
	mov r0, #0x79
	ldr r1, _02263778 ; =0xFFFF8000
	lsl r0, r0, #2
	str r1, [r6, r0]
	str r1, [r5, r0]
_02263692:
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0226369C:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02263768
	add r0, r6, #0
	mov r1, #1
	bl sub_02017348
	add r0, r5, #0
	mov r1, #0
	bl sub_02017348
	mov r0, #0x7b
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r6, r0]
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022636C8:
	cmp r1, #0
	bne _022636D2
	mov r0, #0xff
	str r0, [r4, #0]
	b _02263718
_022636D2:
	ldr r0, [r4, #0x28]
	cmp r0, r1
	beq _02263718
	add r0, r6, #0
	bl ov116_0226192C
	add r0, r5, #0
	bl ov116_0226192C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020171A0
	mov r0, #0
	str r0, [r4, #0]
_02263718:
	ldr r0, [r4, #0x2c]
	add sp, #0xc
	ldr r0, [r0, #0]
	str r0, [r4, #0x28]
	pop {r4, r5, r6, r7, pc}
_02263722:
	add r0, r6, #0
	bl ov116_0226192C
	add r0, r5, #0
	bl ov116_0226192C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020171A0
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl sub_0200DA58
_02263768:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226376C: .word 0x02267BD4
_02263770: .word 0x3F4CCCCD
_02263774: .word 0x02267BD8
_02263778: .word 0xFFFF8000
	thumb_func_end ov116_02263434

	thumb_func_start ov116_0226377C
ov116_0226377C: ; 0x0226377C
	push {r3, r4}
	sub sp, #8
	ldr r3, _022637AC ; =0x02267B38
	add r2, sp, #0
	ldrh r4, [r3, #0x10]
	add r1, sp, #0
	strh r4, [r2]
	ldrh r4, [r3, #0x12]
	strh r4, [r2, #2]
	ldrh r4, [r3, #0x14]
	ldrh r3, [r3, #0x16]
	strh r4, [r2, #4]
	strh r3, [r2, #6]
	ldr r3, _022637B0 ; =0x00002AF0
	sub r2, r3, #4
	ldr r2, [r0, r2]
	ldr r4, [r0, r3]
	lsl r2, r2, #1
	ldrh r1, [r1, r2]
	add r1, r4, r1
	str r1, [r0, r3]
	add sp, #8
	pop {r3, r4}
	bx lr
	; .align 2, 0
_022637AC: .word 0x02267B38
_022637B0: .word 0x00002AF0
	thumb_func_end ov116_0226377C

	thumb_func_start ov116_022637B4
ov116_022637B4: ; 0x022637B4
	push {r3, r4}
	sub sp, #8
	ldr r3, _022637E8 ; =0x02267B38
	add r1, sp, #0
	ldrh r4, [r3, #0x18]
	add r2, sp, #0
	strh r4, [r1]
	ldrh r4, [r3, #0x1a]
	strh r4, [r1, #2]
	ldrh r4, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	strh r4, [r1, #4]
	ldr r4, _022637EC ; =0x00002AF0
	strh r3, [r1, #6]
	sub r3, r4, #4
	ldr r3, [r0, r3]
	ldr r1, [r0, r4]
	sub r3, r3, #1
	lsl r3, r3, #1
	ldrh r2, [r2, r3]
	add r1, r1, r2
	str r1, [r0, r4]
	add sp, #8
	pop {r3, r4}
	bx lr
	nop
_022637E8: .word 0x02267B38
_022637EC: .word 0x00002AF0
	thumb_func_end ov116_022637B4

	thumb_func_start ov116_022637F0
ov116_022637F0: ; 0x022637F0
	ldr r2, _0226385C ; =0x00002B18
	ldr r1, _02263860 ; =0x0000010D
	ldr r3, [r0, r2]
	cmp r3, r1
	bgt _0226380A
	bge _0226382A
	cmp r3, #0
	bgt _02263804
	beq _0226384A
	b _02263850
_02263804:
	cmp r3, #0x77
	beq _02263822
	b _02263850
_0226380A:
	ldr r1, _02263864 ; =0x00000239
	cmp r3, r1
	bgt _0226381A
	bge _0226383A
	sub r1, #0x96
	cmp r3, r1
	beq _02263832
	b _02263850
_0226381A:
	add r1, #0x96
	cmp r3, r1
	beq _02263842
	b _02263850
_02263822:
	mov r1, #1
	sub r2, #0x30
	str r1, [r0, r2]
	b _02263850
_0226382A:
	mov r1, #2
	sub r2, #0x30
	str r1, [r0, r2]
	b _02263850
_02263832:
	mov r1, #3
	sub r2, #0x30
	str r1, [r0, r2]
	b _02263850
_0226383A:
	mov r1, #4
	sub r2, #0x30
	str r1, [r0, r2]
	b _02263850
_02263842:
	mov r1, #5
	sub r2, #0x30
	str r1, [r0, r2]
	b _02263850
_0226384A:
	mov r1, #0
	sub r2, #0x30
	str r1, [r0, r2]
_02263850:
	ldr r2, _0226385C ; =0x00002B18
	ldr r3, _02263868 ; =ov116_0226386C
	ldr r1, [r0, r2]
	sub r2, #0x2c
	add r2, r0, r2
	bx r3
	; .align 2, 0
_0226385C: .word 0x00002B18
_02263860: .word 0x0000010D
_02263864: .word 0x00000239
_02263868: .word ov116_0226386C
	thumb_func_end ov116_022637F0

	thumb_func_start ov116_0226386C
ov116_0226386C: ; 0x0226386C
	ldr r0, _022638BC ; =0x00000257
	cmp r1, r0
	bgt _02263884
	bge _0226389C
	cmp r1, #0
	bgt _0226387C
	beq _022638B4
	b _022638B8
_0226387C:
	lsr r0, r0, #1
	cmp r1, r0
	beq _02263896
	b _022638B8
_02263884:
	ldr r0, _022638C0 ; =0x00000383
	cmp r1, r0
	bgt _0226388E
	beq _022638A4
	b _022638B8
_0226388E:
	ldr r0, _022638C4 ; =0x000004AF
	cmp r1, r0
	beq _022638AC
	b _022638B8
_02263896:
	mov r0, #1
	str r0, [r2, #0]
	bx lr
_0226389C:
	mov r0, #2
	str r0, [r2, #0]
	mov r0, #1
	bx lr
_022638A4:
	mov r0, #3
	str r0, [r2, #0]
	mov r0, #1
	bx lr
_022638AC:
	mov r0, #4
	str r0, [r2, #0]
	mov r0, #1
	bx lr
_022638B4:
	mov r0, #0
	str r0, [r2, #0]
_022638B8:
	mov r0, #0
	bx lr
	; .align 2, 0
_022638BC: .word 0x00000257
_022638C0: .word 0x00000383
_022638C4: .word 0x000004AF
	thumb_func_end ov116_0226386C

	thumb_func_start ov116_022638C8
ov116_022638C8: ; 0x022638C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _022639A4
	ldr r0, _022639A8 ; =0x00002B08
	add r7, r5, #0
	add r0, r5, r0
	str r0, [sp]
	add r6, r5, #0
_022638E2:
	ldr r0, [r5, #0]
	cmp r4, r0
	beq _02263992
	ldr r0, _022639AC ; =0x00002B9C
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _022638FA
	cmp r0, #1
	beq _0226393A
	cmp r0, #2
	beq _0226397A
	b _02263992
_022638FA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov116_02261EA4
	cmp r0, #1
	beq _02263910
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov116_02261E58
_02263910:
	mov r1, #0x2b
	lsl r1, r1, #8
	ldrsh r1, [r6, r1]
	ldr r2, [sp]
	add r0, r5, #0
	bl ov116_0226386C
	cmp r0, #0
	beq _0226392A
	add r0, r5, #0
	add r1, r4, #0
	bl ov116_02262D08
_0226392A:
	mov r0, #0x2b
	lsl r0, r0, #8
	ldrsh r0, [r6, r0]
	add r1, r0, #1
	mov r0, #0x2b
	lsl r0, r0, #8
	strh r1, [r6, r0]
	b _02263992
_0226393A:
	ldr r0, _022639B0 ; =0x00002AFE
	mov r1, #0
	strh r1, [r5, r0]
	add r0, r0, #2
	strh r1, [r6, r0]
	ldr r0, _022639A8 ; =0x00002B08
	str r1, [r7, r0]
	ldr r0, _022639B4 ; =0x000021A4
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov116_02261EA4
	cmp r0, #3
	beq _02263992
	ldr r0, _022639B8 ; =0x00002BB8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02263992
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ov116_02261E58
	add r0, r5, #0
	add r1, r4, #0
	bl ov116_02262CB8
	ldr r0, _022639B8 ; =0x00002BB8
	mov r1, #1
	str r1, [r5, r0]
	b _02263992
_0226397A:
	ldr r0, _022639B8 ; =0x00002BB8
	mov r1, #0
	str r1, [r5, r0]
	sub r0, #0xba
	strh r1, [r5, r0]
	mov r0, #0x2b
	lsl r0, r0, #8
	strh r1, [r6, r0]
	add r0, #8
	str r1, [r7, r0]
	ldr r0, _022639AC ; =0x00002B9C
	str r1, [r7, r0]
_02263992:
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r6, r6, #2
	cmp r4, r0
	blt _022638E2
_022639A4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022639A8: .word 0x00002B08
_022639AC: .word 0x00002B9C
_022639B0: .word 0x00002AFE
_022639B4: .word 0x000021A4
_022639B8: .word 0x00002BB8
	thumb_func_end ov116_022638C8

	thumb_func_start ov116_022639BC
ov116_022639BC: ; 0x022639BC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, _02263B20 ; =0x00002B9C
	ldr r2, [r4, #0]
	add r3, r4, r1
	lsl r2, r2, #2
	ldr r5, [r3, r2]
	cmp r5, #3
	bls _022639D0
	b _02263B1C
_022639D0:
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_022639DC: ; jump table
	.short _022639E4 - _022639DC - 2 ; case 0
	.short _02263A56 - _022639DC - 2 ; case 1
	.short _02263A90 - _022639DC - 2 ; case 2
	.short _02263AEE - _022639DC - 2 ; case 3
_022639E4:
	mov r1, #0
	bl ov116_02262C6C
	cmp r0, #0
	beq _02263A2C
	ldr r0, _02263B24 ; =0x00002AFC
	mov r1, #0
	strh r1, [r4, r0]
	add r0, r4, #0
	bl ov116_02262DC0
	add r0, r4, #0
	bl ov116_02263DB8
	ldr r0, [r4, #0]
	ldr r1, _02263B20 ; =0x00002B9C
	lsl r0, r0, #2
	mov r2, #1
	add r0, r4, r0
	str r2, [r0, r1]
	add r2, r4, r1
	ldr r1, [r4, #0]
	mov r0, #0x18
	lsl r1, r1, #2
	add r1, r2, r1
	mov r2, #4
	bl sub_020359DC
	ldr r0, _02263B28 ; =0x00002B18
	mov r1, #0
	str r1, [r4, r0]
	sub r0, #0x1a
	strh r1, [r4, r0]
	ldr r0, _02263B2C ; =0x000021A4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02263A2C:
	add r0, r4, #0
	bl ov116_02262C84
	add r0, r4, #0
	bl ov116_02263BA0
	add r0, r4, #0
	bl ov116_02263E20
	add r0, r4, #0
	bl ov116_0226377C
	mov r0, #0x2b
	lsl r0, r0, #8
	add r2, r4, r0
	ldr r0, [r4, #0]
	lsl r1, r0, #1
	ldrsh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	pop {r3, r4, r5, pc}
_02263A56:
	add r0, r1, #0
	sub r0, #0xa0
	ldrsh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #0
	sub r0, #0xa0
	strh r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xa0
	ldrsh r0, [r4, r0]
	cmp r0, #0x5a
	blt _02263A78
	ldr r0, [r4, #0]
	mov r2, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r2, [r0, r1]
_02263A78:
	ldr r1, _02263B28 ; =0x00002B18
	mov r2, #0
	add r0, r1, #0
	str r2, [r4, r1]
	sub r0, #0x1a
	strh r2, [r4, r0]
	ldr r0, [r4, #0]
	sub r1, #0x18
	lsl r0, r0, #1
	add r0, r4, r0
	strh r2, [r0, r1]
	pop {r3, r4, r5, pc}
_02263A90:
	add r0, r1, #0
	sub r0, #0xa0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _02263AE8
	add r2, r1, #0
	mov r0, #0
	sub r2, #0x84
	str r0, [r4, r2]
	add r2, r1, #0
	sub r2, #0x9e
	strh r0, [r4, r2]
	add r2, r1, #0
	sub r2, #0xa0
	strh r0, [r4, r2]
	ldr r2, [r4, #0]
	lsl r2, r2, #1
	add r3, r4, r2
	add r2, r1, #0
	sub r2, #0x9c
	strh r0, [r3, r2]
	add r0, r1, #0
	sub r0, #0xa4
	ldr r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xa8
	ldr r0, [r4, r0]
	cmp r2, r0
	beq _02263ACE
	sub r1, #0xa8
	str r2, [r4, r1]
_02263ACE:
	add r0, r4, #0
	bl ov116_02262AE4
	ldr r1, _02263B20 ; =0x00002B9C
	mov r0, #0x18
	add r2, r4, r1
	ldr r1, [r4, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	mov r2, #4
	bl sub_020359DC
	pop {r3, r4, r5, pc}
_02263AE8:
	mov r0, #0
	str r0, [r3, r2]
	pop {r3, r4, r5, pc}
_02263AEE:
	add r2, r1, #0
	sub r2, #0xa0
	ldrsh r2, [r4, r2]
	add r3, r2, #1
	add r2, r1, #0
	sub r2, #0xa0
	strh r3, [r4, r2]
	add r2, r1, #0
	sub r2, #0xa0
	ldrsh r2, [r4, r2]
	cmp r2, #0x1d
	blo _02263B1C
	mov r2, #0
	sub r1, #0xa0
	strh r2, [r4, r1]
	bl ov116_02262AE4
	ldr r0, [r4, #0]
	mov r2, #0
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02263B20 ; =0x00002B9C
	str r2, [r1, r0]
_02263B1C:
	pop {r3, r4, r5, pc}
	nop
_02263B20: .word 0x00002B9C
_02263B24: .word 0x00002AFC
_02263B28: .word 0x00002B18
_02263B2C: .word 0x000021A4
	thumb_func_end ov116_022639BC

	thumb_func_start ov116_02263B30
ov116_02263B30: ; 0x02263B30
	push {r4, lr}
	ldr r1, _02263B94 ; =0x00002AE4
	add r4, r0, #0
	ldr r2, [r4, r1]
	mov r1, #0x4b
	lsl r1, r1, #4
	cmp r2, r1
	bge _02263B90
	bl ov116_022639BC
	add r0, r4, #0
	bl ov116_022638C8
	add r0, r4, #0
	bl ov116_022637F0
	cmp r0, #1
	bne _02263B68
	ldr r1, [r4, #0]
	add r0, r4, #0
	bl ov116_02262D64
	add r0, r4, #0
	bl ov116_022637B4
	ldr r0, _02263B98 ; =0x00000574
	bl sub_02005748
_02263B68:
	add r0, r4, #0
	bl ov116_02263DE8
	ldr r1, _02263B9C ; =0x00002B18
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x34
	ldr r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #0
	sub r0, #0x34
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x1a
	ldrsh r0, [r4, r0]
	sub r1, #0x1a
	add r0, r0, #1
	strh r0, [r4, r1]
_02263B90:
	pop {r4, pc}
	nop
_02263B94: .word 0x00002AE4
_02263B98: .word 0x00000574
_02263B9C: .word 0x00002B18
	thumb_func_end ov116_02263B30

	thumb_func_start ov116_02263BA0
ov116_02263BA0: ; 0x02263BA0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #0x10
	add r1, sp, #0xc
	bl sub_020227A4
	ldr r0, _02263D7C ; =0x00002B84
	mov r1, #0
	str r1, [r5, r0]
	add r0, #0x30
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02263BC8
	ldr r0, _02263D80 ; =0x02267B40
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_020227DC
	b _02263BD2
_02263BC8:
	ldr r0, _02263D84 ; =0x02267B38
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_020227DC
_02263BD2:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02263C76
	ldr r3, _02263D88 ; =0x00001FD4
	mov r0, #0
	mov r2, #0xc3
	str r0, [r5, r3]
	add r1, r3, #4
	lsl r2, r2, #2
	str r0, [r5, r1]
	ldr r1, [r5, r2]
	cmp r1, #0
	beq _02263C32
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #0xfe
	add r0, r5, r0
	lsl r1, r1, #0x16
	bl ov116_0226452C
	mov r0, #0x32
	lsl r0, r0, #4
	mov r1, #0x3f
	add r0, r5, r0
	lsl r1, r1, #0x18
	bl ov116_0226452C
	ldr r4, _02263D8C ; =0x02267B60
	add r3, sp, #0x20
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0x4d
	str r0, [r3, #0]
	add r0, r2, #0
	ldr r2, _02263D90 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
	ldr r0, _02263D7C ; =0x00002B84
	mov r1, #1
	add sp, #0x2c
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, pc}
_02263C32:
	add r1, r2, #4
	str r0, [r5, r1]
	add r2, #8
	str r0, [r5, r2]
	add r1, r3, #4
	ldr r2, [r5, r1]
	ldr r1, [r5, r3]
	ldr r3, _02263D94 ; =0x3FF0A3D7
	str r2, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226432C
	ldr r0, _02263D98 ; =0x00001FD8
	ldr r2, [r5, r0]
	sub r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, _02263D9C ; =0x3E6147AE
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226432C
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
_02263C76:
	ldr r0, _02263DA0 ; =0x00001FCC
	mov r1, #0x28
	ldr r0, [r5, r0]
	asr r4, r0, #0xc
	mov r0, #0x64
	sub r0, r0, r4
	bl _s32_div_f
	bl _f_itof
	add r6, r0, #0
	cmp r4, #0x5f
	blt _02263C92
	ldr r6, _02263DA4 ; =0x3DCCCCCD
_02263C92:
	add r0, r6, #0
	bl _f_ftod
	ldr r2, _02263DA8 ; =0xC28F5C29
	ldr r3, _02263DAC ; =0x3FCC28F5
	bl _d_fge
	blo _02263CA6
	ldr r4, _02263D9C ; =0x3E6147AE
	b _02263CBE
_02263CA6:
	add r0, r6, #0
	bl _f_ftod
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _02263DA8 ; =0xC28F5C29
	ldr r1, _02263DAC ; =0x3FCC28F5
	bl _dsub
	bl _d_dtof
	add r4, r0, #0
_02263CBE:
	ldr r0, _02263D88 ; =0x00001FD4
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02263CD0
	ldr r1, [sp, #0x10]
	str r1, [r5, r0]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r1, [r5, r0]
_02263CD0:
	ldr r3, _02263D98 ; =0x00001FD8
	ldr r0, [r5, r3]
	sub r3, r3, #4
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0x1e
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov116_0226432C
	ldr r3, _02263D98 ; =0x00001FD8
	ldr r0, [r5, r3]
	sub r3, r3, #4
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov116_0226432C
	ldr r4, _02263DB0 ; =0x02267B6C
	add r3, sp, #0x14
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0x4d
	str r0, [r3, #0]
	add r0, r2, #0
	ldr r2, _02263D90 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
	ldr r0, _02263D7C ; =0x00002B84
	mov r2, #1
	add r1, r0, #0
	str r2, [r5, r0]
	add r1, #0x10
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _02263D42
	add r0, #0x10
	str r2, [r5, r0]
_02263D42:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02263D6A
	ldr r0, _02263DB4 ; =0x00000572
	bl sub_020057D4
	cmp r0, #0
	bne _02263D58
	ldr r0, _02263DB4 ; =0x00000572
	bl sub_02005748
_02263D58:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov116_0226493C
_02263D6A:
	ldr r1, [sp, #0x10]
	ldr r0, _02263D88 ; =0x00001FD4
	str r1, [r5, r0]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r1, [r5, r0]
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_02263D7C: .word 0x00002B84
_02263D80: .word 0x02267B40
_02263D84: .word 0x02267B38
_02263D88: .word 0x00001FD4
_02263D8C: .word 0x02267B60
_02263D90: .word 0x00001FC8
_02263D94: .word 0x3FF0A3D7
_02263D98: .word 0x00001FD8
_02263D9C: .word 0x3E6147AE
_02263DA0: .word 0x00001FCC
_02263DA4: .word 0x3DCCCCCD
_02263DA8: .word 0xC28F5C29
_02263DAC: .word 0x3FCC28F5
_02263DB0: .word 0x02267B6C
_02263DB4: .word 0x00000572
	thumb_func_end ov116_02263BA0

	thumb_func_start ov116_02263DB8
ov116_02263DB8: ; 0x02263DB8
	ldr r2, _02263DE4 ; =0x00002B20
	mov r3, #0
	add r1, r2, #0
	strh r3, [r0, r2]
	sub r1, #0x40
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x64
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x68
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x6c
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x70
	str r3, [r0, r1]
	sub r2, #0x34
	str r3, [r0, r2]
	bx lr
	nop
_02263DE4: .word 0x00002B20
	thumb_func_end ov116_02263DB8

	thumb_func_start ov116_02263DE8
ov116_02263DE8: ; 0x02263DE8
	ldr r2, _02263E18 ; =0x00002AFE
	ldrsh r1, [r0, r2]
	cmp r1, #0x95
	blt _02263E16
	add r1, r2, #0
	sub r1, #0xa
	ldr r3, [r0, r1]
	cmp r3, #8
	beq _02263E16
	sub r1, r2, #6
	str r3, [r0, r1]
	add r1, r2, #0
	sub r1, #0xa
	ldr r1, [r0, r1]
	add r3, r1, #1
	add r1, r2, #0
	sub r1, #0xa
	str r3, [r0, r1]
	mov r1, #0
	strh r1, [r0, r2]
	ldr r1, _02263E1C ; =0x000021A4
	mov r2, #1
	str r2, [r0, r1]
_02263E16:
	bx lr
	; .align 2, 0
_02263E18: .word 0x00002AFE
_02263E1C: .word 0x000021A4
	thumb_func_end ov116_02263DE8

	thumb_func_start ov116_02263E20
ov116_02263E20: ; 0x02263E20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r1, _02264140 ; =0x02267B38
	add r5, r0, #0
	ldrh r3, [r1, #0x20]
	add r0, sp, #0x18
	add r2, sp, #0x18
	strh r3, [r0]
	ldrh r3, [r1, #0x22]
	strh r3, [r0, #2]
	ldrh r3, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	strh r3, [r0, #4]
	strh r1, [r0, #6]
	ldr r1, _02264144 ; =0x00002AE0
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x40
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bne _02263E50
	b _02263F94
_02263E50:
	add r0, r1, #0
	add r0, #0x42
	ldrsh r0, [r5, r0]
	cmp r0, #9
	bge _02263EC8
	cmp r0, #8
	bgt _02263EB2
	add r0, r1, #0
	add r0, #0x74
	ldr r7, [r5, r0]
	add r0, r1, #0
	add r0, #0x8c
	add r1, #0x74
	ldr r6, [r5, r0]
	add r0, r5, r1
	bl ov116_022646FC
	str r0, [sp, #0x10]
	ldr r0, _02264148 ; =0x00002B6C
	add r0, r5, r0
	bl ov116_022646FC
	ldr r2, _0226414C ; =0x00002B54
	ldr r1, [r5, r2]
	add r2, #0x18
	sub r1, r1, r7
	lsl r1, r1, #4
	asr r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, [r5, r2]
	sub r1, r1, r6
	lsl r1, r1, #4
	asr r4, r1, #0x10
	ldr r1, [sp, #0x10]
	cmp r1, #1
	beq _02263E9C
	cmp r0, #1
	bne _02263F2C
_02263E9C:
	ldr r1, _0226414C ; =0x00002B54
	ldr r0, [r5, r1]
	sub r0, r0, r7
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	add r1, #0x18
	sub r0, r0, r6
	str r0, [r5, r1]
	b _02263F2C
_02263EB2:
	add r0, r1, #0
	add r0, #0x74
	ldr r0, [r5, r0]
	add r1, #0x8c
	lsl r0, r0, #4
	asr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	lsl r0, r0, #4
	asr r4, r0, #0x10
	b _02263F2C
_02263EC8:
	add r0, r1, #0
	add r0, #0x44
	ldr r7, [r5, r0]
	add r0, r1, #0
	add r0, #0x5c
	add r1, #0x44
	ldr r6, [r5, r0]
	add r0, r5, r1
	bl ov116_022646FC
	str r0, [sp, #0x14]
	ldr r0, _02264150 ; =0x00002B3C
	add r0, r5, r0
	bl ov116_022646FC
	ldr r2, _02264154 ; =0x00002B24
	ldr r1, [r5, r2]
	add r2, #0x18
	sub r1, r1, r7
	lsl r1, r1, #4
	asr r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, [r5, r2]
	sub r1, r1, r6
	lsl r1, r1, #4
	asr r4, r1, #0x10
	ldr r1, [sp, #0x14]
	cmp r1, #1
	beq _02263F06
	cmp r0, #1
	bne _02263F2C
_02263F06:
	ldr r0, _02264158 ; =0x00002B88
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02263F2C
	mov r1, #1
	str r1, [r5, r0]
	add r1, r0, #0
	sub r1, #0x64
	ldr r1, [r5, r1]
	sub r2, r1, r7
	add r1, r0, #0
	sub r1, #0x64
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x4c
	ldr r1, [r5, r1]
	sub r0, #0x4c
	sub r1, r1, r6
	str r1, [r5, r0]
_02263F2C:
	ldr r0, _0226415C ; =0x3FF0A3D7
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r3, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	bl ov116_0226432C
	mov r1, #0
	ldr r0, _02264160 ; =0x3F4CCCCD
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r3, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	bl ov116_0226432C
	cmp r0, #0
	beq _02263F7E
	ldr r4, _02264164 ; =0x02267B90
	add r3, sp, #0x38
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0x4d
	str r0, [r3, #0]
	add r0, r2, #0
	ldr r2, _02264168 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
_02263F7E:
	ldr r0, _0226416C ; =0x00002B22
	add sp, #0x44
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	sub r1, r0, #2
	ldrsh r1, [r5, r1]
	sub r0, r0, #2
	sub r1, r1, #1
	strh r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_02263F94:
	ldr r0, [r5, r1]
	add r1, #0xc
	ldr r1, [r5, r1]
	lsl r1, r1, #1
	ldrsh r1, [r2, r1]
	bl _s32_div_f
	cmp r1, #0
	bne _02263FB2
	ldr r0, _02264144 ; =0x00002AE0
	mov r1, #0
	str r1, [r5, r0]
	mov r1, #1
	add r0, #0xac
	str r1, [r5, r0]
_02263FB2:
	ldr r1, _02264170 ; =0x00002B84
	ldr r2, [r5, r1]
	cmp r2, #0
	bne _02264028
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02264028
	add r0, r1, #0
	sub r0, #0x48
	ldr r0, [r5, r0]
	sub r1, #0x60
	lsl r0, r0, #4
	asr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0
	lsl r0, r0, #4
	asr r6, r0, #0x10
	ldr r0, _0226415C ; =0x3FF0A3D7
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r1, #0
	ldr r0, _02264160 ; =0x3F4CCCCD
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	cmp r0, #0
	beq _02264098
	ldr r4, _02264174 ; =0x02267B78
	add r3, sp, #0x2c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0x4d
	str r0, [r3, #0]
	add r0, r2, #0
	ldr r2, _02264168 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
	b _02264098
_02264028:
	cmp r2, #1
	bne _02264098
	ldr r1, _02264158 ; =0x00002B88
	ldr r0, [r5, r1]
	cmp r0, #1
	bne _02264098
	add r0, r1, #0
	sub r0, #0x4c
	ldr r0, [r5, r0]
	sub r1, #0x64
	lsl r0, r0, #4
	asr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0
	lsl r0, r0, #4
	asr r6, r0, #0x10
	ldr r0, _0226415C ; =0x3FF0A3D7
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r1, #0
	ldr r0, _02264160 ; =0x3F4CCCCD
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	cmp r0, #0
	beq _02264098
	ldr r4, _02264178 ; =0x02267B84
	add r3, sp, #0x20
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0x4d
	str r0, [r3, #0]
	add r0, r2, #0
	ldr r2, _02264168 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
_02264098:
	ldr r1, _0226417C ; =0x00002B90
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _022640B2
	sub r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _022640B0
	sub r1, #8
	ldr r0, [r5, r1]
	cmp r0, #1
	beq _022640B2
_022640B0:
	b _0226430C
_022640B2:
	bl sub_0201D2D0
	add r4, r0, #0
	bl sub_0201D2E8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0201D2DC
	add r0, r6, #0
	mov r1, #0x64
	bl _u32_div_f
	ldr r0, _02264180 ; =0x00002AEC
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	lsl r7, r0, #5
	ldr r0, _02264184 ; =0x02267C8C
	add r3, r1, #0
	ldr r2, [r0, r7]
	ldr r0, _02264188 ; =0x02267C88
	add r0, r0, r7
_022640E0:
	cmp r4, r2
	blt _022640F2
	add r6, r3, r0
	ldr r6, [r6, #0xc]
	add r1, r1, #1
	add r2, r2, r6
	add r3, #8
	cmp r1, #3
	blt _022640E0
_022640F2:
	ldr r0, _02264188 ; =0x02267C88
	lsl r1, r1, #3
	add r0, r0, r7
	ldr r6, [r1, r0]
	ldr r1, _02264168 ; =0x00001FC8
	ldr r0, [r5, r1]
	add r1, #8
	lsl r0, r0, #4
	ldr r1, [r5, r1]
	asr r7, r0, #0x10
	lsl r0, r1, #4
	asr r0, r0, #0x10
	cmp r1, #0
	bne _02264128
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r1
	mov r4, #0x1f
	ror r0, r4
	add r0, r1, r0
	beq _02264124
	mov r4, #1
	b _0226413A
_02264124:
	sub r4, #0x20
	b _0226413A
_02264128:
	cmp r0, #0
	blt _02264130
	mov r0, #1
	b _02264134
_02264130:
	mov r0, #0
	mvn r0, r0
_02264134:
	neg r0, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_0226413A:
	ldr r0, _02264168 ; =0x00001FC8
	b _0226418C
	nop
_02264140: .word 0x02267B38
_02264144: .word 0x00002AE0
_02264148: .word 0x00002B6C
_0226414C: .word 0x00002B54
_02264150: .word 0x00002B3C
_02264154: .word 0x00002B24
_02264158: .word 0x00002B88
_0226415C: .word 0x3FF0A3D7
_02264160: .word 0x3F4CCCCD
_02264164: .word 0x02267B90
_02264168: .word 0x00001FC8
_0226416C: .word 0x00002B22
_02264170: .word 0x00002B84
_02264174: .word 0x02267B78
_02264178: .word 0x02267B84
_0226417C: .word 0x00002B90
_02264180: .word 0x00002AEC
_02264184: .word 0x02267C8C
_02264188: .word 0x02267C88
_0226418C:
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022641AC
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r2
	mov r1, #0x1f
	ror r0, r1
	add r0, r2, r0
	beq _022641A8
	mov r1, #1
	b _022641C6
_022641A8:
	sub r1, #0x20
	b _022641C6
_022641AC:
	cmp r7, #0
	blt _022641B4
	mov r1, #1
	b _022641B8
_022641B4:
	mov r1, #0
	mvn r1, r1
_022641B8:
	cmp r4, #0
	bge _022641C6
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_022641C6:
	ldr r0, _02264310 ; =0x00002AEC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022641D0
	mov r1, #0
_022641D0:
	add r0, r6, #0
	mul r0, r1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	add r0, r6, #0
	mul r0, r4
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	mul r0, r4
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, _02264314 ; =0x00002B98
	lsl r1, r2, #0x10
	strh r7, [r5, r0]
	add r0, r0, #2
	asr r1, r1, #0x10
	strh r6, [r5, r0]
	cmp r1, #0
	ble _0226420E
	lsl r0, r1, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226421C
_0226420E:
	lsl r0, r1, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226421C:
	bl _f_ftoi
	add r2, r0, #0
	mov r0, #8
	str r0, [sp]
	ldr r0, _02264318 ; =0x00002B54
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226469C
	cmp r4, #0
	ble _02264248
	lsl r0, r4, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02264256
_02264248:
	lsl r0, r4, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02264256:
	bl _f_ftoi
	add r2, r0, #0
	mov r0, #8
	str r0, [sp]
	ldr r0, _0226431C ; =0x00002B6C
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226469C
	cmp r7, #0
	ble _02264282
	lsl r0, r7, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02264290
_02264282:
	lsl r0, r7, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02264290:
	bl _f_ftoi
	add r2, r0, #0
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _02264320 ; =0x00002B24
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226469C
	cmp r6, #0
	ble _022642BC
	lsl r0, r6, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022642CA
_022642BC:
	lsl r0, r6, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022642CA:
	bl _f_ftoi
	add r2, r0, #0
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _02264324 ; =0x00002B3C
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226469C
	ldr r0, _02264328 ; =0x00002B20
	mov r1, #0x16
	strh r1, [r5, r0]
	mov r1, #0
	add r2, r0, #2
	strh r1, [r5, r2]
	sub r2, r0, #4
	strh r7, [r5, r2]
	sub r2, r0, #2
	strh r6, [r5, r2]
	add r2, r0, #0
	add r2, #0x64
	str r1, [r5, r2]
	add r2, r0, #0
	add r2, #0x6c
	str r1, [r5, r2]
	add r2, r0, #0
	add r2, #0x68
	str r1, [r5, r2]
	mov r1, #1
	add r0, #0x70
	str r1, [r5, r0]
_0226430C:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02264310: .word 0x00002AEC
_02264314: .word 0x00002B98
_02264318: .word 0x00002B54
_0226431C: .word 0x00002B6C
_02264320: .word 0x00002B24
_02264324: .word 0x00002B3C
_02264328: .word 0x00002B20
	thumb_func_end ov116_02263E20

	.rodata


	.global Unk_ov116_02267B38
Unk_ov116_02267B38: ; 0x02267B38
	.incbin "incbin/overlay116_rodata.bin", 0x3F8, 0x400 - 0x3F8

	.global Unk_ov116_02267B40
Unk_ov116_02267B40: ; 0x02267B40
	.incbin "incbin/overlay116_rodata.bin", 0x400, 0x408 - 0x400

	.global Unk_ov116_02267B48
Unk_ov116_02267B48: ; 0x02267B48
	.incbin "incbin/overlay116_rodata.bin", 0x408, 0x410 - 0x408

	.global Unk_ov116_02267B50
Unk_ov116_02267B50: ; 0x02267B50
	.incbin "incbin/overlay116_rodata.bin", 0x410, 0x418 - 0x410

	.global Unk_ov116_02267B58
Unk_ov116_02267B58: ; 0x02267B58
	.incbin "incbin/overlay116_rodata.bin", 0x418, 0x420 - 0x418

	.global Unk_ov116_02267B60
Unk_ov116_02267B60: ; 0x02267B60
	.incbin "incbin/overlay116_rodata.bin", 0x420, 0x42C - 0x420

	.global Unk_ov116_02267B6C
Unk_ov116_02267B6C: ; 0x02267B6C
	.incbin "incbin/overlay116_rodata.bin", 0x42C, 0x438 - 0x42C

	.global Unk_ov116_02267B78
Unk_ov116_02267B78: ; 0x02267B78
	.incbin "incbin/overlay116_rodata.bin", 0x438, 0x444 - 0x438

	.global Unk_ov116_02267B84
Unk_ov116_02267B84: ; 0x02267B84
	.incbin "incbin/overlay116_rodata.bin", 0x444, 0x450 - 0x444

	.global Unk_ov116_02267B90
Unk_ov116_02267B90: ; 0x02267B90
	.incbin "incbin/overlay116_rodata.bin", 0x450, 0x45C - 0x450

	.global Unk_ov116_02267B9C
Unk_ov116_02267B9C: ; 0x02267B9C
	.incbin "incbin/overlay116_rodata.bin", 0x45C, 0x474 - 0x45C

	.global Unk_ov116_02267BB4
Unk_ov116_02267BB4: ; 0x02267BB4
	.incbin "incbin/overlay116_rodata.bin", 0x474, 0x494 - 0x474

	.global Unk_ov116_02267BD4
Unk_ov116_02267BD4: ; 0x02267BD4
	.incbin "incbin/overlay116_rodata.bin", 0x494, 0x4BC - 0x494

	.global Unk_ov116_02267BFC
Unk_ov116_02267BFC: ; 0x02267BFC
	.incbin "incbin/overlay116_rodata.bin", 0x4BC, 0x4E4 - 0x4BC

	.global Unk_ov116_02267C24
Unk_ov116_02267C24: ; 0x02267C24
	.incbin "incbin/overlay116_rodata.bin", 0x4E4, 0x50C - 0x4E4

	.global Unk_ov116_02267C4C
Unk_ov116_02267C4C: ; 0x02267C4C
	.incbin "incbin/overlay116_rodata.bin", 0x50C, 0x548 - 0x50C

	.global Unk_ov116_02267C88
Unk_ov116_02267C88: ; 0x02267C88
	.incbin "incbin/overlay116_rodata.bin", 0x548, 0x80

