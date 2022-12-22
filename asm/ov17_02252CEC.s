	.include "macros/function.inc"
	.include "include/ov17_02252CEC.inc"

	

	.text


	thumb_func_start ov17_02252CEC
ov17_02252CEC: ; 0x02252CEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	add r6, r1, #0
	ldrb r1, [r3, r0]
	str r2, [sp]
	cmp r1, #0
	bne _02252D08
	sub r0, r0, #4
	ldr r1, [r3, r0]
	ldr r0, _02252D6C ; =0x000004FC
	add r4, r1, r0
	b _02252D3A
_02252D08:
	cmp r1, #1
	bne _02252D16
	sub r0, r0, #4
	ldr r1, [r3, r0]
	ldr r0, _02252D70 ; =0x00001174
	add r4, r1, r0
	b _02252D3A
_02252D16:
	cmp r1, #2
	bne _02252D26
	sub r0, r0, #4
	ldr r1, [r3, r0]
	mov r0, #0xc3
	lsl r0, r0, #4
	add r4, r1, r0
	b _02252D3A
_02252D26:
	cmp r1, #3
	bne _02252D34
	sub r0, r0, #4
	ldr r1, [r3, r0]
	ldr r0, _02252D74 ; =0x0000085C
	add r4, r1, r0
	b _02252D3A
_02252D34:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_02252D3A:
	mov r0, #2
	lsl r0, r0, #8
	cmp r6, r0
	ble _02252D46
	bl sub_02022974
_02252D46:
	ldr r0, _02252D78 ; =0x00000A11
	add r7, r4, r0
	ldrb r0, [r7, r5]
	cmp r0, #0
	beq _02252D54
	bl sub_02022974
_02252D54:
	mov r1, #0x21
	lsl r1, r1, #4
	add r2, r4, r1
	lsl r1, r5, #9
	add r1, r2, r1
	ldr r0, [sp]
	add r2, r6, #0
	bl MI_CpuCopy8
	mov r0, #1
	strb r0, [r7, r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02252D6C: .word 0x000004FC
_02252D70: .word 0x00001174
_02252D74: .word 0x0000085C
_02252D78: .word 0x00000A11
	thumb_func_end ov17_02252CEC

	thumb_func_start ov17_02252D7C
ov17_02252D7C: ; 0x02252D7C
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldr r3, _02252D88 ; =ov17_0224B20C
	add r1, r2, #0
	bx r3
	; .align 2, 0
_02252D88: .word ov17_0224B20C
	thumb_func_end ov17_02252D7C