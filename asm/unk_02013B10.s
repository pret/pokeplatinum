	.include "macros/function.inc"
	.include "include/unk_02013B10.inc"

	

	.text


	thumb_func_start sub_02013B10
sub_02013B10: ; 0x02013B10
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xc
	add r4, r2, #0
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	mov r1, #1
	strb r1, [r0, #9]
	str r5, [r0, #0]
	str r4, [r0, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02013B10

	thumb_func_start sub_02013B40
sub_02013B40: ; 0x02013B40
	push {r4, lr}
	add r4, r0, #0
	bne _02013B4A
	bl sub_02022974
_02013B4A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013B40

	thumb_func_start sub_02013B54
sub_02013B54: ; 0x02013B54
	push {r4, lr}
	add r4, r0, #0
	bne _02013B5E
	bl sub_02022974
_02013B5E:
	ldrb r0, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013B54

	thumb_func_start sub_02013B68
sub_02013B68: ; 0x02013B68
	push {r4, lr}
	add r4, r0, #0
	bne _02013B72
	bl sub_02022974
_02013B72:
	ldrb r1, [r4, #8]
	mov r0, #1
	eor r0, r1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013B68

	thumb_func_start sub_02013B80
sub_02013B80: ; 0x02013B80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02013B8E
	bl sub_02022974
_02013B8E:
	strb r4, [r5, #9]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02013B80

	thumb_func_start sub_02013B94
sub_02013B94: ; 0x02013B94
	cmp r0, #0
	beq _02013BA6
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _02013BA6
	ldrb r2, [r0, #8]
	mov r1, #1
	eor r1, r2
	strb r1, [r0, #8]
_02013BA6:
	bx lr
	thumb_func_end sub_02013B94

	thumb_func_start sub_02013BA8
sub_02013BA8: ; 0x02013BA8
	push {r3, lr}
	mov r0, #0
	bl MI_StopDma
	mov r0, #0
	bl MI_WaitDma
	pop {r3, pc}
	thumb_func_end sub_02013BA8

	thumb_func_start sub_02013BB8
sub_02013BB8: ; 0x02013BB8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #1
	bne _02013BD2
	mov r0, #0
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl MI_HBlankDmaCopy32
	pop {r4, r5, r6, pc}
_02013BD2:
	mov r0, #0
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl MI_HBlankDmaCopy16
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02013BB8

	thumb_func_start sub_02013BE0
sub_02013BE0: ; 0x02013BE0
	push {r3, r4, r5, lr}
	ldr r1, _02013C0C ; =0x0000079C
	add r5, r0, #0
	bl sub_02018144
	ldr r2, _02013C0C ; =0x0000079C
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r2, #3
	lsl r2, r2, #8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, r2
	bl sub_02013B10
	mov r1, #6
	lsl r1, r1, #8
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02013C0C: .word 0x0000079C
	thumb_func_end sub_02013BE0

	thumb_func_start sub_02013C10
sub_02013C10: ; 0x02013C10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02013C22
	bl sub_02022974
_02013C22:
	ldr r0, _02013C90 ; =0x00000604
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02013C2E
	bl sub_02022974
_02013C2E:
	ldr r0, _02013C94 ; =0x0000078C
	mov r2, #0
	strb r4, [r5, r0]
	add r1, r0, #1
	strb r6, [r5, r1]
	add r1, r0, #0
	add r1, #0xc
	strh r2, [r5, r1]
	add r2, sp, #8
	mov r1, #0x14
	ldrsh r2, [r2, r1]
	add r1, r0, #0
	add r1, #0xe
	strh r2, [r5, r1]
	add r1, r0, #4
	ldr r2, [sp, #0x20]
	add r0, #8
	str r2, [r5, r1]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x18]
	str r1, [r5, r0]
	ldr r0, _02013C98 ; =0x0000060C
	mov r1, #0xc0
	add r0, r5, r0
	add r2, r7, #0
	bl sub_02013DFC
	ldr r0, _02013C9C ; =sub_02013E58
	ldr r2, [sp, #0x28]
	add r1, r5, #0
	bl sub_0200D9E8
	ldr r1, _02013C90 ; =0x00000604
	mov r2, #3
	str r0, [r5, r1]
	ldr r0, _02013CA0 ; =0x00000794
	add r1, r5, #0
	ldr r0, [r5, r0]
	lsl r2, r2, #8
	bl MIi_CpuClear32
	ldr r0, _02013CA0 ; =0x00000794
	mov r2, #3
	lsl r2, r2, #8
	ldr r0, [r5, r0]
	add r1, r5, r2
	bl MIi_CpuClear32
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02013C90: .word 0x00000604
_02013C94: .word 0x0000078C
_02013C98: .word 0x0000060C
_02013C9C: .word sub_02013E58
_02013CA0: .word 0x00000794
	thumb_func_end sub_02013C10

	thumb_func_start sub_02013CA4
sub_02013CA4: ; 0x02013CA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02013CB6
	bl sub_02022974
_02013CB6:
	ldr r0, _02013D24 ; =0x00000604
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02013CC2
	bl sub_02022974
_02013CC2:
	ldr r0, _02013D28 ; =0x0000078C
	mov r2, #0
	strb r4, [r5, r0]
	add r1, r0, #1
	strb r6, [r5, r1]
	add r1, r0, #0
	add r1, #0xc
	strh r2, [r5, r1]
	add r2, sp, #8
	mov r1, #0x14
	ldrsh r2, [r2, r1]
	add r1, r0, #0
	add r1, #0xe
	strh r2, [r5, r1]
	add r1, r0, #4
	ldr r2, [sp, #0x20]
	add r0, #8
	str r2, [r5, r1]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x18]
	str r1, [r5, r0]
	ldr r0, _02013D2C ; =0x0000060C
	mov r1, #0xc0
	add r0, r5, r0
	add r2, r7, #0
	bl sub_02013DFC
	ldr r0, _02013D30 ; =sub_02013F04
	ldr r2, [sp, #0x28]
	add r1, r5, #0
	bl sub_0200D9E8
	ldr r1, _02013D24 ; =0x00000604
	mov r2, #3
	str r0, [r5, r1]
	ldr r0, _02013D34 ; =0x00000794
	add r1, r5, #0
	ldr r0, [r5, r0]
	lsl r2, r2, #8
	bl MIi_CpuClear32
	ldr r0, _02013D34 ; =0x00000794
	mov r2, #3
	lsl r2, r2, #8
	ldr r0, [r5, r0]
	add r1, r5, r2
	bl MIi_CpuClear32
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02013D24: .word 0x00000604
_02013D28: .word 0x0000078C
_02013D2C: .word 0x0000060C
_02013D30: .word sub_02013F04
_02013D34: .word 0x00000794
	thumb_func_end sub_02013CA4

	thumb_func_start sub_02013D38
sub_02013D38: ; 0x02013D38
	push {r4, lr}
	add r4, r0, #0
	bne _02013D42
	bl sub_02022974
_02013D42:
	ldr r0, _02013D6C ; =0x00000604
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02013D68
	bl sub_0200DA58
	ldr r0, _02013D6C ; =0x00000604
	mov r1, #0
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02013B54
	ldr r1, _02013D70 ; =0x00000794
	mov r2, #3
	ldr r1, [r4, r1]
	lsl r2, r2, #8
	bl memset
_02013D68:
	pop {r4, pc}
	nop
_02013D6C: .word 0x00000604
_02013D70: .word 0x00000794
	thumb_func_end sub_02013D38

	thumb_func_start sub_02013D74
sub_02013D74: ; 0x02013D74
	push {r4, lr}
	add r4, r0, #0
	bl sub_02013D38
	bl sub_02013FC8
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02013B40
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013D74

	thumb_func_start sub_02013D94
sub_02013D94: ; 0x02013D94
	mov r1, #6
	lsl r1, r1, #8
	ldr r3, _02013DA0 ; =sub_02013B54
	ldr r0, [r0, r1]
	bx r3
	nop
_02013DA0: .word sub_02013B54
	thumb_func_end sub_02013D94

	thumb_func_start sub_02013DA4
sub_02013DA4: ; 0x02013DA4
	push {r4, lr}
	add r4, r0, #0
	beq _02013DD2
	ldr r0, _02013DD4 ; =0x00000604
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02013DD2
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02013B94
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02013B54
	add r1, r0, #0
	ldr r0, _02013DD8 ; =0x00000794
	mov r2, #3
	ldr r0, [r4, r0]
	lsl r2, r2, #8
	bl MIi_CpuClear32
_02013DD2:
	pop {r4, pc}
	; .align 2, 0
_02013DD4: .word 0x00000604
_02013DD8: .word 0x00000794
	thumb_func_end sub_02013DA4

	thumb_func_start sub_02013DDC
sub_02013DDC: ; 0x02013DDC
	push {r4, lr}
	add r4, r0, #0
	beq _02013DF4
	ldr r0, _02013DF8 ; =0x00000604
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02013DF4
	bl sub_02013FC8
	add r0, r4, #0
	bl sub_02013FD0
_02013DF4:
	pop {r4, pc}
	nop
_02013DF8: .word 0x00000604
	thumb_func_end sub_02013DDC

	thumb_func_start sub_02013DFC
sub_02013DFC: ; 0x02013DFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0
	add r7, r1, #0
	add r5, r0, #0
	add r6, r4, #0
	str r2, [sp]
	cmp r7, #0
	bls _02013E4A
	asr r0, r3, #0x1f
	str r3, [sp, #4]
	str r0, [sp, #8]
_02013E14:
	asr r0, r4, #4
	lsl r1, r0, #2
	ldr r0, _02013E50 ; =0x020F983C
	ldr r2, [sp, #4]
	ldrsh r0, [r0, r1]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _02013E54 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r0, r0, #0xc
	strh r0, [r5]
	ldr r0, [sp]
	add r6, r6, #1
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r5, r5, #2
	cmp r6, r7
	blo _02013E14
_02013E4A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02013E50: .word 0x020F983C
_02013E54: .word 0x00000000
	thumb_func_end sub_02013DFC

	thumb_func_start sub_02013E58
sub_02013E58: ; 0x02013E58
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #6
	add r6, r1, #0
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	bl sub_02013B54
	add r5, r0, #0
	ldr r0, _02013EF4 ; =0x00000798
	mov r1, #0x64
	ldrsh r0, [r6, r0]
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r0, _02013EF8 ; =0x0000078C
	ldrb r4, [r6, r0]
	add r0, r0, #1
	ldrb r0, [r6, r0]
	cmp r4, r0
	bgt _02013EC0
	lsl r0, r4, #2
	add r5, r5, r0
_02013E86:
	ldr r2, [r5, #0]
	lsl r0, r2, #0x10
	asr r7, r0, #0x10
	lsl r0, r3, #1
	add r1, r6, r0
	ldr r0, _02013EFC ; =0x0000060C
	ldrsh r0, [r1, r0]
	add r0, r7, r0
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	lsr r0, r2, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	stmia r5!, {r0}
	add r0, r3, #1
	mov r1, #0xc0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r3, r0, #0x18
	ldr r0, _02013F00 ; =0x0000078D
	add r4, r4, #1
	ldrb r0, [r6, r0]
	cmp r4, r0
	ble _02013E86
_02013EC0:
	ldr r1, _02013EF4 ; =0x00000798
	add r0, r1, #2
	ldrsh r2, [r6, r1]
	ldrsh r0, [r6, r0]
	add r4, r6, r1
	add r0, r2, r0
	strh r0, [r4]
	ldrsh r0, [r6, r1]
	mov r1, #0x4b
	lsl r1, r1, #8
	cmp r0, r1
	blt _02013EE4
	mov r0, #0
	ldrsh r0, [r4, r0]
	bl _s32_div_f
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02013EE4:
	cmp r0, #0
	bge _02013EF0
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, r1
	strh r0, [r4]
_02013EF0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02013EF4: .word 0x00000798
_02013EF8: .word 0x0000078C
_02013EFC: .word 0x0000060C
_02013F00: .word 0x0000078D
	thumb_func_end sub_02013E58

	thumb_func_start sub_02013F04
sub_02013F04: ; 0x02013F04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r0, #6
	add r6, r1, #0
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	bl sub_02013B54
	add r5, r0, #0
	ldr r0, _02013FB8 ; =0x00000798
	mov r1, #0x64
	ldrsh r0, [r6, r0]
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, _02013FBC ; =0x0000078C
	ldrb r4, [r6, r0]
	add r0, r0, #1
	ldrb r0, [r6, r0]
	cmp r4, r0
	bgt _02013F80
	lsl r0, r4, #2
	add r5, r5, r0
_02013F34:
	ldr r0, [r5, #0]
	mov r1, #0xc0
	str r0, [sp]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0xb4
	bl _s32_div_f
	lsl r0, r1, #1
	add r1, r6, r0
	ldr r0, _02013FC0 ; =0x0000060C
	ldrsh r1, [r1, r0]
	ldr r0, [sp, #4]
	add r0, r0, r1
	ldr r1, [sp]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	stmia r5!, {r0}
	add r0, r7, #1
	mov r1, #0xc0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r7, r0, #0x18
	ldr r0, _02013FC4 ; =0x0000078D
	add r4, r4, #1
	ldrb r0, [r6, r0]
	cmp r4, r0
	ble _02013F34
_02013F80:
	ldr r1, _02013FB8 ; =0x00000798
	add r0, r1, #2
	ldrsh r2, [r6, r1]
	ldrsh r0, [r6, r0]
	add r4, r6, r1
	add r0, r2, r0
	strh r0, [r4]
	ldrsh r0, [r6, r1]
	mov r1, #0x4b
	lsl r1, r1, #8
	cmp r0, r1
	blt _02013FA6
	mov r0, #0
	ldrsh r0, [r4, r0]
	bl _s32_div_f
	add sp, #8
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02013FA6:
	cmp r0, #0
	bge _02013FB2
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, r1
	strh r0, [r4]
_02013FB2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02013FB8: .word 0x00000798
_02013FBC: .word 0x0000078C
_02013FC0: .word 0x0000060C
_02013FC4: .word 0x0000078D
	thumb_func_end sub_02013F04

	thumb_func_start sub_02013FC8
sub_02013FC8: ; 0x02013FC8
	ldr r3, _02013FCC ; =sub_02013BA8
	bx r3
	; .align 2, 0
_02013FCC: .word sub_02013BA8
	thumb_func_end sub_02013FC8

	thumb_func_start sub_02013FD0
sub_02013FD0: ; 0x02013FD0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _02013FDA
	bl sub_02022974
_02013FDA:
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02013B68
	mov r1, #3
	lsl r1, r1, #8
	add r5, r0, #0
	bl DC_FlushRange
	mov r1, #0x79
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #4
	mov r3, #1
	bl sub_02013BB8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02013FD0