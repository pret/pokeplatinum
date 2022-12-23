	.include "macros/function.inc"
	.include "overlay099/ov99_021D3DE0.inc"

	

	.text


	thumb_func_start ov99_021D3DE0
ov99_021D3DE0: ; 0x021D3DE0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D3DF8
	cmp r0, #1
	beq _021D3E16
	cmp r0, #2
	beq _021D3E58
	b _021D3E66
_021D3DF8:
	mov r0, #0x1e
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4b
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3E66
_021D3E16:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D3E66
	ldr r0, _021D3E6C ; =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D3E70 ; =0x00002760
	cmp r1, r0
	bhi _021D3E38
	ldr r0, _021D3E74 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _021D3E38
	mov r0, #8
	tst r0, r1
	beq _021D3E66
_021D3E38:
	mov r0, #0x2d
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4b
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3E66
_021D3E58:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D3E66
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D3E66:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D3E6C: .word 0x000010FC
_021D3E70: .word 0x00002760
_021D3E74: .word 0x021BF67C
	thumb_func_end ov99_021D3DE0