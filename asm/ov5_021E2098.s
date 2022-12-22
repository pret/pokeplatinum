	.include "macros/function.inc"
	.include "include/ov5_021E2098.inc"

	

	.text


	thumb_func_start ov5_021E2098
ov5_021E2098: ; 0x021E2098
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021E20E0 ; =ov5_021E2178
	ldr r3, [r5, #0x28]
	mov r1, #0x38
	mov r2, #5
	bl sub_0200679C
	add r6, r0, #0
	bl sub_0201CED0
	add r4, r0, #0
	add r2, r4, #4
	mov r3, #5
_021E20B4:
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _021E20B4
	ldr r0, [r5, #0]
	str r0, [r2, #0]
	str r6, [r4, #0x34]
	mov r0, #0
	str r0, [r4, #0x30]
	bl GX_GetBankForLCDC
	str r0, [r4, #0]
	add r0, r4, #4
	bl ov5_021E2218
	ldr r0, _021E20E4 ; =ov5_021E21B8
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA3C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021E20E0: .word ov5_021E2178
_021E20E4: .word ov5_021E21B8
	thumb_func_end ov5_021E2098

	thumb_func_start ov5_021E20E8
ov5_021E20E8: ; 0x021E20E8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl GX_SetGraphicsMode
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl GX_SetBankForLCDC
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #0xa
	bgt _021E2118
	bge _021E213C
	cmp r0, #6
	bgt _021E2158
	cmp r0, #2
	blt _021E2158
	beq _021E211E
	cmp r0, #6
	beq _021E212E
	b _021E2158
_021E2118:
	cmp r0, #0xe
	beq _021E214A
	b _021E2158
_021E211E:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E215E
_021E212E:
	mov r2, #2
	ldr r1, _021E216C ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E215E
_021E213C:
	mov r2, #2
	ldr r1, _021E2170 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E215E
_021E214A:
	mov r2, #2
	ldr r1, _021E2174 ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E215E
_021E2158:
	mov r0, #0
	bl GX_SetBankForLCDC
_021E215E:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x34]
	bl sub_020067D0
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_021E216C: .word 0x06820000
_021E2170: .word 0x06840000
_021E2174: .word 0x06860000
	thumb_func_end ov5_021E20E8

	thumb_func_start ov5_021E2178
ov5_021E2178: ; 0x021E2178
	push {r4, r5, r6, r7}
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _021E21B0
	ldr r6, [r1, #0x20]
	ldr r5, [r1, #0x10]
	ldr r4, [r1, #0x1c]
	ldr r3, [r1, #0x18]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	lsl r5, r5, #0x14
	lsl r7, r1, #8
	lsl r1, r3, #0x18
	lsl r3, r2, #0x1d
	mov r2, #2
	lsl r2, r2, #0x1e
	orr r3, r2
	lsl r2, r4, #0x19
	orr r2, r3
	orr r1, r2
	lsl r6, r6, #0x10
	orr r1, r5
	orr r1, r6
	orr r1, r7
	orr r1, r0
	ldr r0, _021E21B4 ; =0x04000064
	str r1, [r0, #0]
_021E21B0:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_021E21B4: .word 0x04000064
	thumb_func_end ov5_021E2178

	thumb_func_start ov5_021E21B8
ov5_021E21B8: ; 0x021E21B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bgt _021E21D6
	bge _021E21EC
	cmp r0, #6
	bgt _021E21FC
	cmp r0, #2
	blt _021E21FC
	beq _021E21DC
	cmp r0, #6
	beq _021E21E4
	b _021E21FC
_021E21D6:
	cmp r0, #0xe
	beq _021E21F4
	b _021E21FC
_021E21DC:
	mov r0, #1
	bl GX_SetBankForLCDC
	b _021E2202
_021E21E4:
	mov r0, #2
	bl GX_SetBankForLCDC
	b _021E2202
_021E21EC:
	mov r0, #4
	bl GX_SetBankForLCDC
	b _021E2202
_021E21F4:
	mov r0, #8
	bl GX_SetBankForLCDC
	b _021E2202
_021E21FC:
	mov r0, #0
	bl GX_SetBankForLCDC
_021E2202:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl GX_SetGraphicsMode
	mov r0, #1
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021E21B8

	thumb_func_start ov5_021E2218
ov5_021E2218: ; 0x021E2218
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0xa
	bgt _021E2234
	bge _021E2258
	cmp r0, #6
	bgt _021E2272
	cmp r0, #2
	blt _021E2272
	beq _021E223A
	cmp r0, #6
	beq _021E224A
	b _021E2272
_021E2234:
	cmp r0, #0xe
	beq _021E2266
	b _021E2272
_021E223A:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E2272
_021E224A:
	mov r2, #2
	ldr r1, _021E22A0 ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E2272
_021E2258:
	mov r2, #2
	ldr r1, _021E22A4 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E2272
_021E2266:
	mov r2, #2
	ldr r1, _021E22A8 ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
_021E2272:
	ldr r5, [r4, #0x10]
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x18]
	ldr r6, [r4, #0x14]
	ldr r0, [r4, #0xc]
	mov r4, #2
	lsl r2, r1, #0x10
	lsl r1, r0, #0x14
	lsl r5, r5, #0x1d
	lsl r4, r4, #0x1e
	orr r4, r5
	lsl r3, r3, #0x19
	lsl r0, r6, #0x18
	orr r3, r4
	orr r0, r3
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, #0x10
	orr r1, r0
	ldr r0, _021E22AC ; =0x04000064
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021E22A0: .word 0x06820000
_021E22A4: .word 0x06840000
_021E22A8: .word 0x06860000
_021E22AC: .word 0x04000064
	thumb_func_end ov5_021E2218