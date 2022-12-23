	.include "macros/function.inc"
	.include "overlay104/ov104_022358E8.inc"

	

	.text


	thumb_func_start ov104_022358E8
ov104_022358E8: ; 0x022358E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl ov104_0222FC00
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov104_0222FC00
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	str r0, [sp, #0x14]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	str r6, [sp]
	lsl r2, r4, #0x18
	ldr r1, [sp, #0x14]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsr r2, r2, #0x18
	bl ov104_022361B4
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B980
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_022358E8

	thumb_func_start ov104_0223594C
ov104_0223594C: ; 0x0223594C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r4, #0
	bl ov104_02236514
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223594C

	thumb_func_start ov104_02235968
ov104_02235968: ; 0x02235968
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_022367AC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02235968

	thumb_func_start ov104_0223597C
ov104_0223597C: ; 0x0223597C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r6, #8]
	add r1, r7, #0
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov104_02235B3C
	ldr r0, _022359C8 ; =ov104_02235B84
	ldr r1, _022359CC ; =0x0223FA94
	str r0, [sp]
	ldr r0, [r5, #0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	mov r3, #0
	bl sub_0209B988
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022359C8: .word ov104_02235B84
_022359CC: .word 0x0223FA94
	thumb_func_end ov104_0223597C

	thumb_func_start ov104_022359D0
ov104_022359D0: ; 0x022359D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r6, #8]
	add r1, r7, #0
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov104_02235B3C
	ldr r0, _02235A1C ; =ov104_02235B84
	ldr r1, _02235A20 ; =0x0223FA84
	str r0, [sp]
	ldr r0, [r5, #0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	mov r3, #0
	bl sub_0209B988
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02235A1C: .word ov104_02235B84
_02235A20: .word 0x0223FA84
	thumb_func_end ov104_022359D0

	thumb_func_start ov104_02235A24
ov104_02235A24: ; 0x02235A24
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	ldr r5, [r4, #0xc]
	mov r1, #0
	ldr r0, [r5, #4]
	bl sub_0207A0FC
	add r2, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0207A128
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0207A0FC
	add r2, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0207A128
	ldrb r0, [r4, #0x10]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02235A74
	ldr r0, [r5, #4]
	mov r1, #2
	bl sub_0207A0FC
	add r2, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_0207A128
	b _02235A98
_02235A74:
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_0207A0FC
	add r2, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_0207A128
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_0207A0FC
	add r2, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl sub_0207A128
_02235A98:
	ldr r0, [r5, #0x14]
	bl sub_02052868
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_020520A4
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02235A24

	thumb_func_start ov104_02235AAC
ov104_02235AAC: ; 0x02235AAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r6, #0
	add r4, r0, #0
	bl ov104_0223B810
	add r2, r0, #0
	str r2, [r4, #0xc]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0]
	ldr r1, _02235AE4 ; =0x020EA358
	ldr r0, [r0, #0]
	bl sub_0209B988
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02235AE4: .word 0x020EA358
	thumb_func_end ov104_02235AAC

	thumb_func_start ov104_02235AE8
ov104_02235AE8: ; 0x02235AE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r6, #8]
	add r1, r7, #0
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov104_02235B3C
	ldr r0, _02235B34 ; =ov104_02235B84
	ldr r1, _02235B38 ; =0x0223FAA4
	str r0, [sp]
	ldr r0, [r5, #0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	mov r3, #0
	bl sub_0209B988
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02235B34: .word ov104_02235B84
_02235B38: .word 0x0223FAA4
	thumb_func_end ov104_02235AE8

	thumb_func_start ov104_02235B3C
ov104_02235B3C: ; 0x02235B3C
	push {r4, r5, r6, r7}
	ldrb r2, [r1, #0x10]
	mov r6, #0
	strb r2, [r0, #4]
	ldr r2, [r1, #0x28]
	str r2, [r0, #0x18]
	ldr r2, [r1, #0x2c]
	str r2, [r0, #0x1c]
	ldr r2, _02235B80 ; =0x00000A1C
	str r1, [r0, #0x24]
	ldrh r2, [r1, r2]
	strh r2, [r0, #0x28]
	mov r2, #0xde
	lsl r2, r2, #2
	add r3, r2, #4
_02235B5A:
	mov r7, #0x37
	add r5, r1, r6
	lsl r7, r7, #4
	ldrb r7, [r5, r7]
	add r4, r0, r6
	add r6, r6, #1
	strb r7, [r4, #8]
	mov r7, #0xdd
	lsl r7, r7, #2
	ldrb r7, [r5, r7]
	cmp r6, #4
	strb r7, [r4, #0xc]
	ldrb r7, [r5, r2]
	strb r7, [r4, #0x10]
	ldrb r5, [r5, r3]
	strb r5, [r4, #0x14]
	blt _02235B5A
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02235B80: .word 0x00000A1C
	thumb_func_end ov104_02235B3C

	thumb_func_start ov104_02235B84
ov104_02235B84: ; 0x02235B84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r4, #0
	bl ov104_022367DC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov104_02235B84

	thumb_func_start ov104_02235B98
ov104_02235B98: ; 0x02235B98
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_02236BF0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02235B98

	thumb_func_start ov104_02235BAC
ov104_02235BAC: ; 0x02235BAC
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_02236BF8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02235BAC

	thumb_func_start ov104_02235BC0
ov104_02235BC0: ; 0x02235BC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, [r0, #0x1c]
	add r1, r0, #0
	add r2, r3, #1
	str r2, [r1, #0x1c]
	ldrb r1, [r3]
	add r3, r2, #1
	str r0, [sp, #0x10]
	str r1, [sp, #0x18]
	add r1, r0, #0
	str r3, [r1, #0x1c]
	ldrb r6, [r2]
	add r2, r3, #1
	str r2, [r1, #0x1c]
	ldrb r1, [r3]
	str r1, [sp, #0x14]
	bl ov104_0222FBE4
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	cmp r0, #0x2c
	bls _02235C08
	b _02235F7E
_02235C08:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235C14: ; jump table
	.short _02235F7E - _02235C14 - 2 ; case 0
	.short _02235F7E - _02235C14 - 2 ; case 1
	.short _02235C6E - _02235C14 - 2 ; case 2
	.short _02235C72 - _02235C14 - 2 ; case 3
	.short _02235C80 - _02235C14 - 2 ; case 4
	.short _02235C86 - _02235C14 - 2 ; case 5
	.short _02235F7E - _02235C14 - 2 ; case 6
	.short _02235C94 - _02235C14 - 2 ; case 7
	.short _02235F7E - _02235C14 - 2 ; case 8
	.short _02235C9C - _02235C14 - 2 ; case 9
	.short _02235CA6 - _02235C14 - 2 ; case 10
	.short _02235F7E - _02235C14 - 2 ; case 11
	.short _02235F7E - _02235C14 - 2 ; case 12
	.short _02235F7E - _02235C14 - 2 ; case 13
	.short _02235CB0 - _02235C14 - 2 ; case 14
	.short _02235CBA - _02235C14 - 2 ; case 15
	.short _02235CCE - _02235C14 - 2 ; case 16
	.short _02235E1A - _02235C14 - 2 ; case 17
	.short _02235CE4 - _02235C14 - 2 ; case 18
	.short _02235D10 - _02235C14 - 2 ; case 19
	.short _02235D1A - _02235C14 - 2 ; case 20
	.short _02235D26 - _02235C14 - 2 ; case 21
	.short _02235D2E - _02235C14 - 2 ; case 22
	.short _02235D36 - _02235C14 - 2 ; case 23
	.short _02235D40 - _02235C14 - 2 ; case 24
	.short _02235E20 - _02235C14 - 2 ; case 25
	.short _02235D4A - _02235C14 - 2 ; case 26
	.short _02235D52 - _02235C14 - 2 ; case 27
	.short _02235D66 - _02235C14 - 2 ; case 28
	.short _02235D6E - _02235C14 - 2 ; case 29
	.short _02235D76 - _02235C14 - 2 ; case 30
	.short _02235D88 - _02235C14 - 2 ; case 31
	.short _02235D98 - _02235C14 - 2 ; case 32
	.short _02235D9E - _02235C14 - 2 ; case 33
	.short _02235DDC - _02235C14 - 2 ; case 34
	.short _02235E10 - _02235C14 - 2 ; case 35
	.short _02235E26 - _02235C14 - 2 ; case 36
	.short _02235E3A - _02235C14 - 2 ; case 37
	.short _02235E68 - _02235C14 - 2 ; case 38
	.short _02235E72 - _02235C14 - 2 ; case 39
	.short _02235EA2 - _02235C14 - 2 ; case 40
	.short _02235EC4 - _02235C14 - 2 ; case 41
	.short _02235EF0 - _02235C14 - 2 ; case 42
	.short _02235EF8 - _02235C14 - 2 ; case 43
	.short _02235F02 - _02235C14 - 2 ; case 44
_02235C6E:
	strb r6, [r4, #0x10]
	b _02235F7E
_02235C72:
	lsl r0, r6, #1
	add r1, r4, r0
	mov r0, #0xe
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	strh r0, [r5]
	b _02235F7E
_02235C80:
	ldrh r0, [r4, #0x14]
	strh r0, [r5]
	b _02235F7E
_02235C86:
	ldrh r1, [r4, #0x14]
	ldr r0, _02235F84 ; =0x0000270F
	cmp r1, r0
	bhs _02235D0E
	add r0, r1, #1
	strh r0, [r4, #0x14]
	b _02235F7E
_02235C94:
	mov r0, #0
	bl OS_ResetSystem
	b _02235F7E
_02235C9C:
	ldr r0, [r4, #8]
	bl sub_020302EC
	strh r0, [r5]
	b _02235F7E
_02235CA6:
	add r0, r4, #0
	mov r1, #2
	bl ov104_02236848
	b _02235F7E
_02235CB0:
	add r0, r4, #0
	bl ov104_02236B48
	strh r0, [r5]
	b _02235F7E
_02235CBA:
	mov r0, #0x38
	mul r0, r6
	add r1, r4, r0
	mov r0, #0xa2
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	strh r0, [r5]
	b _02235F7E
_02235CCE:
	mov r0, #0x38
	mul r0, r6
	add r1, r4, r0
	ldr r0, [sp, #0x14]
	lsl r0, r0, #1
	add r1, r1, r0
	mov r0, #0xa3
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	strh r0, [r5]
	b _02235F7E
_02235CE4:
	ldr r0, [r7, #8]
	bl sub_0207A268
	add r7, r0, #0
	ldr r0, _02235F88 ; =0x0000036A
	mov r5, #0
	add r6, r4, r0
_02235CF2:
	add r1, r4, r5
	add r1, #0x24
	ldrb r1, [r1]
	add r0, r7, #0
	bl sub_0207A0FC
	mov r1, #6
	add r2, r6, #0
	bl sub_02074B30
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #3
	blt _02235CF2
_02235D0E:
	b _02235F7E
_02235D10:
	add r0, r4, #0
	bl ov104_0223BB60
	strh r0, [r5]
	b _02235F7E
_02235D1A:
	add r0, r4, #0
	add r1, r6, #0
	bl ov104_02236B58
	strh r0, [r5]
	b _02235F7E
_02235D26:
	add r0, r4, #0
	bl ov104_02236B8C
	b _02235F7E
_02235D2E:
	add r0, r4, #0
	bl ov104_02236BD0
	b _02235F7E
_02235D36:
	add r0, r4, #0
	bl ov104_02236B54
	strh r0, [r5]
	b _02235F7E
_02235D40:
	mov r0, #0xa1
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	strh r0, [r5]
	b _02235F7E
_02235D4A:
	ldr r0, _02235F8C ; =0x00000A11
	ldrb r0, [r4, r0]
	strh r0, [r5]
	b _02235F7E
_02235D52:
	add r0, r4, #0
	bl ov104_02236D10
	strh r0, [r5]
	ldrb r1, [r4, #0x10]
	ldrh r2, [r5]
	ldr r0, [r4, #4]
	bl ov104_02236ED8
	b _02235F7E
_02235D66:
	add r0, r4, #0
	bl ov104_02236C50
	b _02235F7E
_02235D6E:
	add r0, r4, #0
	bl sub_0209BA80
	b _02235F7E
_02235D76:
	ldr r0, _02235F90 ; =0x00000A1B
	ldrb r0, [r4, r0]
	cmp r0, #6
	blo _02235D84
	sub r0, r0, #6
	strh r0, [r5]
	b _02235F7E
_02235D84:
	strh r0, [r5]
	b _02235F7E
_02235D88:
	ldr r0, _02235F90 ; =0x00000A1B
	mov r2, #0
	strb r2, [r4, r0]
	sub r1, r0, #2
	strb r2, [r4, r1]
	sub r0, r0, #3
	strb r2, [r4, r0]
	b _02235F7E
_02235D98:
	ldr r0, _02235F94 ; =0x00000A18
	strb r6, [r4, r0]
	b _02235F7E
_02235D9E:
	ldr r0, _02235F90 ; =0x00000A1B
	mov r5, #0
	ldrb r0, [r4, r0]
	cmp r0, #6
	blo _02235DB4
	bl sub_0203608C
	cmp r0, #0
	beq _02235DBE
	mov r5, #1
	b _02235DBE
_02235DB4:
	bl sub_0203608C
	cmp r0, #0
	bne _02235DBE
	mov r5, #1
_02235DBE:
	cmp r5, #1
	bne _02235DD2
	ldr r0, [r7, #8]
	bl sub_0203068C
	ldrb r1, [r4, #0x10]
	mov r2, #0x32
	bl ov104_0223BC2C
	b _02235F7E
_02235DD2:
	ldr r0, _02235F98 ; =0x00000A1C
	ldrh r1, [r4, r0]
	sub r1, #0x32
	strh r1, [r4, r0]
	b _02235F7E
_02235DDC:
	mov r0, #0
	strh r0, [r5]
	ldrb r0, [r4, #0x10]
	bl ov104_0223BA14
	cmp r0, #1
	bne _02235E08
	ldr r0, _02235F90 ; =0x00000A1B
	ldrb r0, [r4, r0]
	cmp r0, #6
	blo _02235E00
	bl sub_0203608C
	cmp r0, #0
	bne _02235E08
	mov r0, #1
	strh r0, [r5]
	b _02235F7E
_02235E00:
	bl sub_0203608C
	cmp r0, #0
	bne _02235E0A
_02235E08:
	b _02235F7E
_02235E0A:
	mov r0, #1
	strh r0, [r5]
	b _02235F7E
_02235E10:
	ldrb r0, [r4, #0x10]
	bl ov104_0223BA14
	strh r0, [r5]
	b _02235F7E
_02235E1A:
	ldrb r0, [r4, #0x10]
	strh r0, [r5]
	b _02235F7E
_02235E20:
	ldrb r0, [r4, #0x12]
	strh r0, [r5]
	b _02235F7E
_02235E26:
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	bl ov104_0222E924
	ldr r0, [r0, #0]
	add r1, r4, #0
	mov r2, #3
	bl ov104_0223BB84
	b _02235F7E
_02235E3A:
	ldrb r1, [r4, #0x11]
	add r0, r4, #0
	add r0, #0x4c
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, #0x30]
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222E278
	ldrb r1, [r4, #0x11]
	mov r0, #0x57
	lsl r0, r0, #2
	add r1, r1, #7
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, #0x30]
	add r0, r4, r0
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222E278
	b _02235F7E
_02235E68:
	add r0, r4, #0
	bl ov104_02237338
	strh r0, [r5]
	b _02235F7E
_02235E72:
	ldr r0, [r7, #8]
	bl sub_0203041C
	mov r2, #0
	str r2, [sp]
	mov r1, #0xa
	add r3, r2, #0
	bl sub_02030470
	strh r0, [r5]
	mov r1, #1
	add r0, sp, #0x20
	strb r1, [r0]
	ldr r0, [r7, #8]
	bl sub_0203041C
	add r1, sp, #0x20
	mov r2, #0
	str r1, [sp]
	mov r1, #0xa
	add r3, r2, #0
	bl sub_02030430
	b _02235F7E
_02235EA2:
	mov r0, #0
	strh r0, [r5]
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _02235F7E
	ldrh r0, [r4, #0x14]
	add r0, r0, #1
	cmp r0, #0x15
	bne _02235EBA
	mov r0, #1
	strh r0, [r5]
	b _02235F7E
_02235EBA:
	cmp r0, #0x31
	bne _02235F7E
	mov r0, #2
	strh r0, [r5]
	b _02235F7E
_02235EC4:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	mov r3, #0xa2
	lsl r3, r3, #2
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp, #0xc]
	add r0, r4, r3
	sub r1, #0x1c
	sub r2, #0x14
	sub r3, #0x10
	add r1, r4, r1
	add r2, r4, r2
	add r3, r4, r3
	bl ov104_0222E330
	b _02235F7E
_02235EF0:
	add r0, r4, #0
	bl ov104_0223BAB8
	b _02235F7E
_02235EF8:
	ldrb r0, [r4, #0x13]
	strh r0, [r5]
	mov r0, #1
	strb r0, [r4, #0x13]
	b _02235F7E
_02235F02:
	ldrb r5, [r4, #0x10]
	cmp r5, #3
	bne _02235F7E
	cmp r6, #0
	ldr r0, [r7, #8]
	bne _02235F5A
	bl sub_0203068C
	add r6, r0, #0
	ldrb r0, [r4, #0x10]
	bl sub_0205E630
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	bl sub_02030698
	strh r0, [r4, #0x22]
	ldr r0, [r7, #8]
	bl sub_0203068C
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	bl sub_0205E630
	add r6, r0, #0
	ldrb r0, [r4, #0x10]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r4, #0x20]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020306E4
	b _02235F7E
_02235F5A:
	bl sub_0203068C
	add r6, r0, #0
	ldrb r0, [r4, #0x10]
	bl sub_0205E630
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r4, #0x22]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020306E4
_02235F7E:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02235F84: .word 0x0000270F
_02235F88: .word 0x0000036A
_02235F8C: .word 0x00000A11
_02235F90: .word 0x00000A1B
_02235F94: .word 0x00000A18
_02235F98: .word 0x00000A1C
	thumb_func_end ov104_02235BC0

	thumb_func_start ov104_02235F9C
ov104_02235F9C: ; 0x02235F9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldr r0, [r0, #0x1c]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02235F9C

	thumb_func_start ov104_02235FB8
ov104_02235FB8: ; 0x02235FB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r6, #0
	add r2, r7, #0
	bl ov104_02236F70
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02235FB8

	thumb_func_start ov104_02235FE8
ov104_02235FE8: ; 0x02235FE8
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222EA48
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _02236004 ; =ov104_02236008
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	nop
_02236004: .word ov104_02236008
	thumb_func_end ov104_02235FE8

	thumb_func_start ov104_02236008
ov104_02236008: ; 0x02236008
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC8C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldr r1, _02236034 ; =0x00000A1A
	ldrb r2, [r0, r1]
	cmp r2, #2
	blo _0223602E
	mov r2, #0
	strb r2, [r0, r1]
	mov r0, #1
	pop {r4, pc}
_0223602E:
	mov r0, #0
	pop {r4, pc}
	nop
_02236034: .word 0x00000A1A
	thumb_func_end ov104_02236008

	thumb_func_start ov104_02236038
ov104_02236038: ; 0x02236038
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222EA48
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _02236054 ; =ov104_02236058
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	nop
_02236054: .word ov104_02236058
	thumb_func_end ov104_02236038

	thumb_func_start ov104_02236058
ov104_02236058: ; 0x02236058
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC14
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldr r2, _0223608C ; =0x00000A1B
	ldrb r1, [r0, r2]
	cmp r1, #0
	bne _0223607C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223607C:
	mov r3, #0
	sub r1, r2, #1
	strb r3, [r0, r1]
	ldrb r0, [r0, r2]
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0223608C: .word 0x00000A1B
	thumb_func_end ov104_02236058

	thumb_func_start ov104_02236090
ov104_02236090: ; 0x02236090
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov104_02236FC0
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov104_02236090

	thumb_func_start ov104_022360A8
ov104_022360A8: ; 0x022360A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov104_022370E0
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov104_022360A8

	thumb_func_start ov104_022360C0
ov104_022360C0: ; 0x022360C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov104_02237180
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov104_022360C0

	thumb_func_start ov104_022360D8
ov104_022360D8: ; 0x022360D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_0203068C
	add r5, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205E630
	add r7, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02030698
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022360D8

	thumb_func_start ov104_02236120
ov104_02236120: ; 0x02236120
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_0203068C
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	add r2, r6, #0
	bl ov104_0223BC2C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_02236120

	thumb_func_start ov104_02236150
ov104_02236150: ; 0x02236150
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	lsl r1, r4, #0x18
	ldr r0, [r0, #8]
	lsr r1, r1, #0x18
	add r2, r6, #0
	bl ov104_02236ED8
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_02236150

	thumb_func_start ov104_0223617C
ov104_0223617C: ; 0x0223617C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r1, [r5, #0x1c]
	add r0, r1, #1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	ldrb r4, [r1]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r2, r0, #0
	bne _022361A0
	mov r0, #0
	pop {r3, r4, r5, pc}
_022361A0:
	lsl r1, r4, #4
	add r1, r4, r1
	add r2, #0x64
	lsl r1, r1, #4
	add r0, r5, #0
	add r1, r2, r1
	bl ov104_022330FC
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223617C

	.rodata


	.global Unk_ov104_0223FA84
Unk_ov104_0223FA84: ; 0x0223FA84
	.incbin "incbin/overlay104_rodata.bin", 0x7F4, 0x804 - 0x7F4

	.global Unk_ov104_0223FA94
Unk_ov104_0223FA94: ; 0x0223FA94
	.incbin "incbin/overlay104_rodata.bin", 0x804, 0x814 - 0x804

	.global Unk_ov104_0223FAA4
Unk_ov104_0223FAA4: ; 0x0223FAA4
	.incbin "incbin/overlay104_rodata.bin", 0x814, 0x10

