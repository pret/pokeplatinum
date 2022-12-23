	.include "macros/function.inc"
	.include "overlay060/ov60_0221F800.inc"

	

	.text


	thumb_func_start ov60_0221F800
ov60_0221F800: ; 0x0221F800
	lsl r1, r0, #0x10
	orr r1, r0
	ldr r0, _0221F80C ; =0x02229E20
	str r1, [r0, #0]
	bx lr
	nop
_0221F80C: .word 0x02229E20
	thumb_func_end ov60_0221F800

	thumb_func_start ov60_0221F810
ov60_0221F810: ; 0x0221F810
	ldr r1, _0221F82C ; =0x02229E20
	mov r0, #0x45
	ldr r2, [r1, #0]
	add r3, r2, #0
	mul r3, r0
	ldr r0, _0221F830 ; =0x00001111
	add r2, r3, r0
	ldr r0, _0221F834 ; =0x7FFFFFFF
	and r0, r2
	str r0, [r1, #0]
	asr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
_0221F82C: .word 0x02229E20
_0221F830: .word 0x00001111
_0221F834: .word 0x7FFFFFFF
	thumb_func_end ov60_0221F810

	thumb_func_start ov60_0221F838
ov60_0221F838: ; 0x0221F838
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0
	add r5, r2, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #8
	add r7, r1, #0
	str r3, [sp]
	str r0, [sp, #0x10]
	bl ov60_0221F944
	ldr r1, [sp, #0x30]
	add r0, r0, #1
	cmp r1, r0
	bge _0221F862
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0221F862:
	ldr r1, [sp, #0x10]
	mov r0, #0xa
	bl ov4_021D7780
	add r6, r0, #0
	bne _0221F874
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221F874:
	lsr r0, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r0, r0, r1
	lsr r1, r4, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r0, r0, r1
	lsl r1, r4, #0x18
	lsr r4, r1, #0x18
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	add r0, r0, r1
	str r0, [sp, #0x14]
	mov r0, #0
	cmp r5, #0
	ble _0221F8C0
_0221F8B2:
	ldrb r2, [r7, r0]
	ldr r1, [sp, #0x14]
	add r0, r0, #1
	add r1, r1, r2
	str r1, [sp, #0x14]
	cmp r0, r5
	blt _0221F8B2
_0221F8C0:
	ldr r0, [sp, #0x14]
	bl ov60_0221F800
	bl ov60_0221F810
	eor r0, r4
	strb r0, [r6, #4]
	bl ov60_0221F810
	ldr r1, [sp, #0xc]
	eor r0, r1
	strb r0, [r6, #5]
	bl ov60_0221F810
	ldr r1, [sp, #8]
	eor r0, r1
	strb r0, [r6, #6]
	bl ov60_0221F810
	ldr r1, [sp, #4]
	mov r4, #0
	eor r0, r1
	strb r0, [r6, #7]
	cmp r5, #0
	ble _0221F904
_0221F8F2:
	bl ov60_0221F810
	ldrb r1, [r7, r4]
	eor r1, r0
	add r0, r6, r4
	add r4, r4, #1
	strb r1, [r0, #8]
	cmp r4, r5
	blt _0221F8F2
_0221F904:
	ldr r1, _0221F940 ; =0x4A3B2C1D
	ldr r0, [sp, #0x14]
	add r5, #8
	eor r1, r0
	lsr r0, r1, #0x18
	strb r0, [r6]
	lsr r0, r1, #0x10
	strb r0, [r6, #1]
	lsr r0, r1, #8
	strb r0, [r6, #2]
	strb r1, [r6, #3]
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #2
	bl ov4_021EB0F0
	ldr r0, [sp, #0x10]
	bl ov60_0221F944
	ldr r1, [sp]
	mov r2, #0
	strb r2, [r1, r0]
	mov r0, #0xa
	add r1, r6, #0
	bl ov4_021D77C4
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0221F940: .word 0x4A3B2C1D
	thumb_func_end ov60_0221F838

	thumb_func_start ov60_0221F944
ov60_0221F944: ; 0x0221F944
	push {r3, r4, r5, lr}
	mov r1, #3
	add r5, r0, #0
	bl _u32_div_f
	cmp r1, #0
	beq _0221F956
	mov r4, #1
	b _0221F958
_0221F956:
	mov r4, #0
_0221F958:
	add r0, r5, #0
	mov r1, #3
	bl _u32_div_f
	add r0, r0, r4
	lsl r0, r0, #2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov60_0221F944

	.bss


	.global Unk_ov60_02229E20
Unk_ov60_02229E20: ; 0x02229E20
	.space 0x4

