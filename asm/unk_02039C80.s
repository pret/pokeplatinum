	.include "macros/function.inc"
	.include "include/unk_02039C80.inc"

	

	.text


	thumb_func_start sub_02039C80
sub_02039C80: ; 0x02039C80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r2, [sp]
	mov r2, #0
	strb r2, [r4, #1]
	mov r0, #0xe1
	ldr r7, _02039D60 ; =0x0000070A
	ldr r6, _02039D64 ; =0x00000A8E
	mov ip, r1
	strb r2, [r4]
	add r3, r4, #0
	add r5, r2, #0
	lsl r0, r0, #2
_02039C9C:
	add r1, r4, r2
	strh r5, [r3, #2]
	strb r5, [r1, r7]
	strh r5, [r3, r6]
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, r0
	blt _02039C9C
	ldr r0, _02039D68 ; =0x00001196
	mov r2, #0
_02039CB0:
	add r1, r4, r5
	add r5, r5, #1
	strb r2, [r1, r0]
	cmp r5, #0x10
	blt _02039CB0
	mov r0, #0x29
	mov r1, ip
	mov r2, #0xb
	bl sub_02006ADC
	add r6, r0, #0
	ldrb r0, [r6]
	add r5, r6, #5
	strb r0, [r4, #1]
	ldrb r0, [r6, #1]
	strb r0, [r4]
	ldrb r0, [r6, #2]
	str r0, [sp, #8]
	ldrb r0, [r6, #3]
	str r0, [sp, #4]
	ldrb r7, [r6, #4]
	cmp r7, #0x10
	bls _02039CE2
	bl sub_02022974
_02039CE2:
	ldr r1, _02039D68 ; =0x00001196
	add r0, r5, #0
	add r1, r4, r1
	add r2, r7, #0
	bl MI_CpuCopy8
	ldr r0, [sp, #8]
	add r5, r5, r7
	cmp r0, #0
	beq _02039D12
	ldrb r3, [r4, #1]
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #2
	mul r2, r3
	lsl r2, r2, #1
	bl MI_CpuCopy8
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	mul r0, r1
	lsl r0, r0, #1
	add r5, r5, r0
	b _02039D26
_02039D12:
	ldrb r3, [r4, #1]
	ldrb r2, [r4]
	ldr r0, [sp]
	add r1, r4, #2
	lsl r0, r0, #0x10
	mul r2, r3
	lsr r0, r0, #0x10
	lsl r2, r2, #1
	bl MIi_CpuClear16
_02039D26:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02039D44
	ldrb r3, [r4, #1]
	ldrb r2, [r4]
	ldr r1, _02039D60 ; =0x0000070A
	add r0, r5, #0
	add r1, r4, r1
	mul r2, r3
	bl MI_CpuCopy8
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	mul r0, r1
	add r5, r5, r0
_02039D44:
	ldrb r3, [r4, #1]
	ldrb r2, [r4]
	ldr r1, _02039D64 ; =0x00000A8E
	add r0, r5, #0
	mul r2, r3
	add r1, r4, r1
	lsl r2, r2, #1
	bl MI_CpuCopy8
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02039D60: .word 0x0000070A
_02039D64: .word 0x00000A8E
_02039D68: .word 0x00001196
	thumb_func_end sub_02039C80

	thumb_func_start sub_02039D6C
sub_02039D6C: ; 0x02039D6C
	ldr r3, _02039D74 ; =sub_02039D78
	mov r0, #0xb
	bx r3
	nop
_02039D74: .word sub_02039D78
	thumb_func_end sub_02039D6C

	thumb_func_start sub_02039D78
sub_02039D78: ; 0x02039D78
	push {r3, lr}
	ldr r1, _02039D8C ; =0x000011AA
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	pop {r3, pc}
	nop
_02039D8C: .word 0x000011AA
	thumb_func_end sub_02039D78

	thumb_func_start sub_02039D90
sub_02039D90: ; 0x02039D90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _02039D9C
	bl sub_02022974
_02039D9C:
	cmp r5, #0
	bne _02039DA4
	bl sub_02022974
_02039DA4:
	cmp r5, r4
	bne _02039DAC
	bl sub_02022974
_02039DAC:
	ldr r1, _02039DBC ; =0x000008D5
_02039DAE:
	ldrh r0, [r5]
	add r5, r5, #2
	strh r0, [r4]
	add r4, r4, #2
	sub r1, r1, #1
	bne _02039DAE
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02039DBC: .word 0x000008D5
	thumb_func_end sub_02039D90

	thumb_func_start sub_02039DC0
sub_02039DC0: ; 0x02039DC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203A060
	add r6, r0, #0
	add r0, r4, #4
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02039C80
	strb r6, [r4, #2]
	ldrb r0, [r4, #4]
	strb r0, [r4, #1]
	ldrb r0, [r4, #5]
	strb r0, [r4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02039DC0

	thumb_func_start sub_02039DE4
sub_02039DE4: ; 0x02039DE4
	ldr r3, _02039DE8 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02039DE8: .word sub_020181C4
	thumb_func_end sub_02039DE4

	thumb_func_start sub_02039DEC
sub_02039DEC: ; 0x02039DEC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	mul r0, r1
	cmp r5, r0
	blt _02039E00
	bl sub_02022974
_02039E00:
	lsl r0, r5, #1
	add r1, r4, r0
	ldr r0, _02039E0C ; =0x00000A92
	ldrh r0, [r1, r0]
	pop {r3, r4, r5, pc}
	nop
_02039E0C: .word 0x00000A92
	thumb_func_end sub_02039DEC

	thumb_func_start sub_02039E10
sub_02039E10: ; 0x02039E10
	push {r4, lr}
	add r4, r0, #0
	bne _02039E1A
	bl sub_02022974
_02039E1A:
	ldrb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02039E10

	thumb_func_start sub_02039E20
sub_02039E20: ; 0x02039E20
	push {r4, lr}
	add r4, r0, #0
	bne _02039E2A
	bl sub_02022974
_02039E2A:
	ldrb r0, [r4, #1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02039E20

	thumb_func_start sub_02039E30
sub_02039E30: ; 0x02039E30
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldrb r0, [r7, #1]
	add r5, r1, #0
	add r4, r2, #0
	ldrb r6, [r7]
	str r0, [sp]
	cmp r5, #0
	blt _02039E46
	cmp r5, r6
	blt _02039E4A
_02039E46:
	bl sub_02022974
_02039E4A:
	cmp r4, #0
	blt _02039E54
	ldr r0, [sp]
	cmp r4, r0
	blt _02039E58
_02039E54:
	bl sub_02022974
_02039E58:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	lsl r0, r0, #1
	add r0, r7, r0
	ldrh r0, [r0, #6]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02039E30

	thumb_func_start sub_02039E68
sub_02039E68: ; 0x02039E68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	mul r0, r1
	cmp r4, #0
	blt _02039E7C
	cmp r4, r0
	blt _02039E80
_02039E7C:
	bl sub_02022974
_02039E80:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, #6]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02039E68

	thumb_func_start sub_02039E88
sub_02039E88: ; 0x02039E88
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_02039E88

	thumb_func_start sub_02039E8C
sub_02039E8C: ; 0x02039E8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	cmp r4, r0
	blt _02039E9E
	bl sub_02022974
_02039E9E:
	ldr r0, [sp, #0x10]
	mul r0, r6
	add r4, r4, r0
	mov r0, #0xe1
	lsl r0, r0, #2
	cmp r4, r0
	blt _02039EB0
	bl sub_02022974
_02039EB0:
	ldr r0, _02039EB8 ; =0x0000070E
	add r1, r5, r4
	ldrb r0, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02039EB8: .word 0x0000070E
	thumb_func_end sub_02039E8C

	thumb_func_start sub_02039EBC
sub_02039EBC: ; 0x02039EBC
	push {r3, r4, r5, lr}
	ldr r1, _02039EEC ; =0x00000708
	add r4, r0, #0
	bl sub_02018144
	add r5, r0, #0
	mov r0, #0x29
	mov r1, #0
	add r2, r4, #0
	bl sub_02006ADC
	add r4, r0, #0
	ldrb r1, [r4, #4]
	add r0, r4, #5
	ldr r2, _02039EEC ; =0x00000708
	add r0, r0, r1
	add r1, r5, #0
	bl MI_CpuCopy8
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02039EEC: .word 0x00000708
	thumb_func_end sub_02039EBC

	thumb_func_start sub_02039EF0
sub_02039EF0: ; 0x02039EF0
	push {r4, lr}
	add r4, r0, #0
	bne _02039EFA
	bl sub_02022974
_02039EFA:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02039EF0

	thumb_func_start sub_02039F04
sub_02039F04: ; 0x02039F04
	mov r3, #0x1e
	mul r3, r2
	add r1, r1, r3
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	bx lr
	thumb_func_end sub_02039F04

	thumb_func_start sub_02039F10
sub_02039F10: ; 0x02039F10
	push {r3, r4, r5, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1c8
	add r3, r0, #0
	add r5, r1, #0
	lsl r1, r3, #0x10
	add r4, r2, #0
	add r0, sp, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_02039C80
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r5, r0
	blt _02039F42
	bl sub_02022974
_02039F42:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r4, r0
	blt _02039F4E
	bl sub_02022974
_02039F4E:
	add r0, sp, #0
	ldrb r0, [r0, #1]
	mul r0, r4
	add r0, r5, r0
	lsl r1, r0, #1
	add r0, sp, #0
	add r0, #2
	ldrh r0, [r0, r1]
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1c8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02039F10

	thumb_func_start sub_02039F74
sub_02039F74: ; 0x02039F74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _02039F80
	bl sub_02022974
_02039F80:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02039DEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02039F74

	thumb_func_start sub_02039F8C
sub_02039F8C: ; 0x02039F8C
	push {r4, r5, r6, r7}
	ldr r1, _02039FD8 ; =0x00000A92
	ldrb r7, [r0]
	add r2, r0, r1
	ldr r1, _02039FDC ; =0x0000070E
	add r1, r0, r1
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _02039FD2
	mov r0, #0x15
	add r6, r7, #0
	mul r6, r0
	add r5, r6, #0
	add r5, #0x17
	mov r4, #0xb0
	lsl r0, r5, #1
	add r6, #0x18
	strh r4, [r2, r0]
	lsl r0, r6, #1
	strh r4, [r2, r0]
	mov r0, #0x16
	add r3, r7, #0
	mul r3, r0
	add r0, r3, #0
	add r0, #0x17
	lsl r7, r0, #1
	add r3, #0x18
	strh r4, [r2, r7]
	lsl r7, r3, #1
	strh r4, [r2, r7]
	mov r2, #2
	strb r2, [r1, r5]
	strb r2, [r1, r6]
	strb r2, [r1, r0]
	strb r2, [r1, r3]
_02039FD2:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02039FD8: .word 0x00000A92
_02039FDC: .word 0x0000070E
	thumb_func_end sub_02039F8C

	thumb_func_start sub_02039FE0
sub_02039FE0: ; 0x02039FE0
	push {r3, r4}
	ldr r1, _0203A020 ; =0x00000A92
	add r2, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0203A01A
	mov r0, #0xf
	mul r0, r1
	add r0, #0x1c
	mov r3, #0x77
	lsl r0, r0, #1
	strh r3, [r2, r0]
	lsl r0, r1, #4
	add r3, r0, #0
	add r3, #0x1b
	mov r4, #0x78
	lsl r3, r3, #1
	strh r4, [r2, r3]
	add r3, r0, #0
	add r3, #0x1c
	add r0, r1, r0
	add r0, #0x1b
	mov r4, #0x79
	lsl r3, r3, #1
	strh r4, [r2, r3]
	mov r3, #0x7a
	lsl r0, r0, #1
	strh r3, [r2, r0]
_0203A01A:
	pop {r3, r4}
	bx lr
	nop
_0203A020: .word 0x00000A92
	thumb_func_end sub_02039FE0