	.include "macros/function.inc"
	.include "overlay016/ov16_0225177C.inc"

	

	.text


	thumb_func_start ov16_0225177C
ov16_0225177C: ; 0x0225177C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r1, #0
	str r2, [sp, #4]
	add r1, r2, #0
	add r2, r3, #0
	str r0, [sp]
	bl ov16_0223DFAC
	ldr r1, [sp, #4]
	mov r2, #0xc0
	add r5, r1, #0
	mov r1, #0xb5
	lsl r1, r1, #6
	add r1, r7, r1
	mul r5, r2
	str r1, [sp, #0x18]
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	ldr r1, [sp, #0x18]
	mov r2, #0
	strh r0, [r1, r5]
	add r0, r4, #0
	mov r1, #0xa5
	bl sub_02074470
	ldr r1, _02251B34 ; =0x00002D42
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251B38 ; =0x00002D44
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251B3C ; =0x00002D46
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251B40 ; =0x00002D48
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	add r1, r7, r5
	ldr r2, _02251B44 ; =0x00002D4A
	str r1, [sp, #0xc]
	strh r0, [r1, r2]
	add r0, r1, #0
	mov r6, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
_02251806:
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp, #0x14]
	ldr r1, _02251B48 ; =0x00002D4C
	strh r0, [r2, r1]
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp, #0x10]
	ldr r1, _02251B4C ; =0x00002D6C
	strb r0, [r2, r1]
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp, #0x10]
	ldr r1, _02251B50 ; =0x00002D70
	add r6, r6, #1
	strb r0, [r2, r1]
	ldr r0, [sp, #0x14]
	add r0, r0, #2
	str r0, [sp, #0x14]
	add r0, r2, #0
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r6, #4
	blt _02251806
	add r0, r1, #0
	sub r0, #0x1c
	add r6, r7, r0
	add r0, r4, #0
	mov r1, #0x46
	mov r2, #0
	bl sub_02074470
	ldr r1, [r6, r5]
	mov r2, #0x1f
	bic r1, r2
	mov r2, #0x1f
	and r0, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _02251B54 ; =0xFFFFFC1F
	lsr r0, r0, #0x16
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _02251B58 ; =0xFFFF83FF
	lsr r0, r0, #0x11
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x49
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _02251B5C ; =0xFFF07FFF
	lsr r0, r0, #0xc
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _02251B60 ; =0xFE0FFFFF
	lsr r0, r0, #7
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _02251B64 ; =0xC1FFFFFF
	lsr r0, r0, #2
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	ldr r2, [r6, r5]
	ldr r1, _02251B68 ; =0xBFFFFFFF
	lsl r0, r0, #0x1f
	and r1, r2
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4d
	mov r2, #0
	bl sub_02074470
	ldr r2, [r6, r5]
	ldr r1, _02251B6C ; =0x7FFFFFFF
	lsl r0, r0, #0x1f
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	ldr r0, _02251B70 ; =0x0000213C
	ldr r1, [r7, r0]
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r1
	bne _02251932
	ldr r0, _02251B74 ; =0x00002D58
	mov r2, #0
	mov r1, #6
_02251924:
	ldr r3, [sp, #0xc]
	add r2, r2, #1
	strb r1, [r3, r0]
	add r3, r3, #1
	str r3, [sp, #0xc]
	cmp r2, #8
	blt _02251924
_02251932:
	ldr r0, _02251B78 ; =0x00002D68
	mov r1, #1
	add r0, r7, r0
	ldr r2, [r0, r5]
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #2
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #4
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #8
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x10
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x20
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x40
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x80
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	ldr r1, _02251B7C ; =0xFFFFFEFF
	and r1, r2
	str r1, [r0, r5]
	ldr r2, [r0, r5]
	ldr r1, _02251B80 ; =0xFFFFFDFF
	and r1, r2
	str r1, [r0, r5]
	ldr r2, [r0, r5]
	ldr r1, _02251B84 ; =0xFFFFFBFF
	and r1, r2
	str r1, [r0, r5]
	add r0, r4, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251B88 ; =0x00002D64
	add r2, r7, r5
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251B8C ; =0x00002D65
	add r2, r7, r5
	strb r0, [r2, r1]
	add r1, #0x59
	add r0, r7, r1
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02075D6C
	ldr r1, [sp, #0x1c]
	mov r2, #0xf
	ldrb r1, [r1, r5]
	bic r1, r2
	mov r2, #0xf
	and r0, r2
	orr r1, r0
	ldr r0, [sp, #0x1c]
	strb r1, [r0, r5]
	ldr r0, _02251B90 ; =0x00002D66
	add r0, r7, r0
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_02075E0C
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x1f
	ldrb r1, [r1, r5]
	mov r2, #0x20
	lsr r0, r0, #0x1a
	bic r1, r2
	orr r1, r0
	ldr r0, [sp, #0x20]
	strb r1, [r0, r5]
	ldr r0, [sp]
	bl ov16_0223DF0C
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _02251A12
	ldr r2, _02251B94 ; =0x00002D67
	mov r0, #0
	add r3, r7, r5
	add r1, r2, #0
	strb r0, [r3, r2]
	add r2, #0x51
	add r1, #0x45
	add r2, r7, r2
	str r0, [r3, r1]
	add r1, r2, r5
	str r1, [sp, #8]
	strh r0, [r2, r5]
	b _02251A46
_02251A12:
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251B94 ; =0x00002D67
	add r2, r7, r5
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251B98 ; =0x00002DAC
	add r2, r7, r5
	str r0, [r2, r1]
	add r1, #0xc
	add r6, r7, r1
	add r0, r6, r5
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r6, r5]
_02251A46:
	ldr r0, [sp]
	bl ov16_0223DF0C
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _02251A6E
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov16_0223E208
	cmp r0, #0
	bne _02251A6E
	ldr r0, [sp, #0x20]
	ldrb r1, [r0, r5]
	mov r0, #0x1f
	bic r1, r0
	ldr r0, [sp, #0x20]
	strb r1, [r0, r5]
	b _02251A8E
_02251A6E:
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x20]
	mov r2, #0x1f
	ldrb r1, [r1, r5]
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0x1f
	and r0, r2
	orr r1, r0
	ldr r0, [sp, #0x20]
	strb r1, [r0, r5]
_02251A8E:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	add r6, r0, #0
	mul r6, r1
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251B9C ; =0x00002D74
	add r2, r7, r6
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251BA0 ; =0x00002D75
	add r2, r7, r6
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251BA4 ; =0x00002D8C
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251BA8 ; =0x00002D90
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251BAC ; =0x00002DA4
	add r2, r7, r6
	str r0, [r2, r1]
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074470
	ldr r1, _02251BB0 ; =0x00002DA8
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251BB4 ; =0x00002DB4
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0x9d
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1c
	ldrb r1, [r1, r5]
	mov r2, #0xf0
	lsr r0, r0, #0x18
	bic r1, r2
	orr r1, r0
	ldr r0, [sp, #0x1c]
	mov r2, #0
	strb r1, [r0, r5]
	add r0, r4, #0
	mov r1, #0x9b
	bl sub_02074470
	ldr r1, _02251BB8 ; =0x00002DBF
	b _02251BBC
	; .align 2, 0
_02251B34: .word 0x00002D42
_02251B38: .word 0x00002D44
_02251B3C: .word 0x00002D46
_02251B40: .word 0x00002D48
_02251B44: .word 0x00002D4A
_02251B48: .word 0x00002D4C
_02251B4C: .word 0x00002D6C
_02251B50: .word 0x00002D70
_02251B54: .word 0xFFFFFC1F
_02251B58: .word 0xFFFF83FF
_02251B5C: .word 0xFFF07FFF
_02251B60: .word 0xFE0FFFFF
_02251B64: .word 0xC1FFFFFF
_02251B68: .word 0xBFFFFFFF
_02251B6C: .word 0x7FFFFFFF
_02251B70: .word 0x0000213C
_02251B74: .word 0x00002D58
_02251B78: .word 0x00002D68
_02251B7C: .word 0xFFFFFEFF
_02251B80: .word 0xFFFFFDFF
_02251B84: .word 0xFFFFFBFF
_02251B88: .word 0x00002D64
_02251B8C: .word 0x00002D65
_02251B90: .word 0x00002D66
_02251B94: .word 0x00002D67
_02251B98: .word 0x00002DAC
_02251B9C: .word 0x00002D74
_02251BA0: .word 0x00002D75
_02251BA4: .word 0x00002D8C
_02251BA8: .word 0x00002D90
_02251BAC: .word 0x00002DA4
_02251BB0: .word 0x00002DA8
_02251BB4: .word 0x00002DB4
_02251BB8: .word 0x00002DBF
_02251BBC:
	add r2, r7, r6
	strb r0, [r2, r1]
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, r5]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	bl sub_02098988
	mov r0, #5
	bl sub_02098700
	mov r1, #0
	mov r2, #5
	str r0, [sp, #0x24]
	bl sub_0209872C
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x24]
	ldrh r1, [r1, r5]
	bl sub_02098828
	ldr r1, _02251C78 ; =0x00002D60
	add r2, r7, r6
	str r0, [r2, r1]
	ldr r0, [sp, #0x24]
	bl sub_020987BC
	ldr r0, [sp, #0x24]
	bl sub_02098718
	ldr r2, _02251C7C ; =0x00002D76
	add r0, r4, #0
	add r2, r7, r2
	mov r1, #0x75
	add r2, r2, r6
	bl sub_02074470
	ldr r2, _02251C80 ; =0x00002D94
	add r0, r4, #0
	add r2, r7, r2
	mov r1, #0x90
	add r2, r2, r6
	bl sub_02074470
	ldr r0, _02251C84 ; =0x00002DBC
	mov r2, #0
	add r1, r7, r6
	strb r2, [r1, r0]
	add r0, r0, #1
	strb r2, [r1, r0]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov16_0223E208
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, r0
	ldr r0, _02251C88 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020787CC
	lsl r1, r4, #3
	add r2, r7, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	beq _02251C5E
	ldr r0, [sp, #8]
	mov r1, #0
	strh r1, [r0]
	ldr r0, _02251C8C ; =0x00002DCC
	add sp, #0x28
	add r2, r7, r0
	ldr r1, [r2, r5]
	ldr r0, _02251C90 ; =0xFFBFFFFF
	and r0, r1
	str r0, [r2, r5]
	pop {r3, r4, r5, r6, r7, pc}
_02251C5E:
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	cmp r0, #0
	beq _02251C74
	ldr r0, _02251C8C ; =0x00002DCC
	add r2, r7, r0
	mov r0, #1
	ldr r1, [r2, r5]
	lsl r0, r0, #0x16
	orr r0, r1
	str r0, [r2, r5]
_02251C74:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02251C78: .word 0x00002D60
_02251C7C: .word 0x00002D76
_02251C80: .word 0x00002D94
_02251C84: .word 0x00002DBC
_02251C88: .word 0x0000219C
_02251C8C: .word 0x00002DCC
_02251C90: .word 0xFFBFFFFF
	thumb_func_end ov16_0225177C

	thumb_func_start ov16_02251C94
ov16_02251C94: ; 0x02251C94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	str r1, [sp]
	add r1, r5, #0
	add r2, r3, #0
	bl ov16_0223DFAC
	mov r1, #0xc0
	mul r1, r5
	str r1, [sp, #4]
	mov r1, #0xa5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _02251DE8 ; =0x00002D42
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _02251DEC ; =0x00002D44
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _02251DF0 ; =0x00002D46
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _02251DF4 ; =0x00002D48
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _02251DF8 ; =0x00002D4A
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _02251DFC ; =0x00002D74
	strb r0, [r2, r1]
	add r0, r6, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _02251E00 ; =0x00002D75
	strb r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _02251E04 ; =0x00002D8C
	str r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _02251E08 ; =0x00002D90
	str r0, [r2, r1]
	add r0, r1, #0
	add r0, #0x20
	ldr r2, [r2, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r2
	bne _02251DE4
	mov r0, #0xc0
	mul r0, r5
	ldr r2, [sp]
	str r0, [sp, #8]
	add r7, r2, r0
	add r1, #0x3c
	add r0, r2, #0
	add r0, r0, r1
	mov r4, #0
	add r5, r7, #0
	str r0, [sp, #0xc]
_02251D82:
	add r0, r4, #0
	bl sub_020787CC
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r1, [r2, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1c
	tst r0, r1
	bne _02251DC6
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	ldr r1, _02251E0C ; =0x00002D4C
	mov r2, #0
	strh r0, [r7, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3a
	bl sub_02074470
	ldr r1, _02251E10 ; =0x00002D6C
	mov r2, #0
	strb r0, [r5, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3e
	bl sub_02074470
	ldr r1, _02251E14 ; =0x00002D70
	strb r0, [r5, r1]
_02251DC6:
	add r4, r4, #1
	add r7, r7, #2
	add r5, r5, #1
	cmp r4, #4
	blt _02251D82
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074470
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _02251E18 ; =0x00002DA4
	str r0, [r2, r1]
_02251DE4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02251DE8: .word 0x00002D42
_02251DEC: .word 0x00002D44
_02251DF0: .word 0x00002D46
_02251DF4: .word 0x00002D48
_02251DF8: .word 0x00002D4A
_02251DFC: .word 0x00002D74
_02251E00: .word 0x00002D75
_02251E04: .word 0x00002D8C
_02251E08: .word 0x00002D90
_02251E0C: .word 0x00002D4C
_02251E10: .word 0x00002D6C
_02251E14: .word 0x00002D70
_02251E18: .word 0x00002DA4
	thumb_func_end ov16_02251C94

	thumb_func_start ov16_02251E1C
ov16_02251E1C: ; 0x02251E1C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02006B58
	mov r1, #0x19
	lsl r1, r1, #6
	cmp r0, r1
	blo _02251E38
	bl GF_AssertFail
_02251E38:
	add r0, r5, #0
	add r0, #0xac
	str r4, [r0, #0]
	add r0, r5, #0
	add r0, #0xb0
	str r6, [r0, #0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	mov r0, #0x27
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02006AA4
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_02251E1C

	thumb_func_start ov16_02251E5C
ov16_02251E5C: ; 0x02251E5C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02006B58
	mov r1, #0x19
	lsl r1, r1, #6
	cmp r0, r1
	blo _02251E78
	bl GF_AssertFail
_02251E78:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #4
	blt _02251E86
	bl GF_AssertFail
_02251E86:
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r0, #0xac
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0, #0]
	add r1, #0xbc
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r0, #0xb0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0, #0]
	add r1, #0xcc
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r0, #0xb4
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0, #0]
	add r1, #0xdc
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r2, r6, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xac
	str r4, [r0, #0]
	add r0, r5, #0
	add r0, #0xb0
	str r6, [r0, #0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	mov r0, #0x27
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #0
	bl sub_02006AA4
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_02251E5C

	thumb_func_start ov16_02251EF4
ov16_02251EF4: ; 0x02251EF4
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02251F3E
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	sub r2, r1, #1
	add r1, r4, #0
	add r1, #0xb8
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	lsl r2, r1, #2
	add r1, r4, r2
	add r2, r4, r2
	add r1, #0xbc
	add r2, #0xcc
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov16_02251E1C
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xdc
	ldr r0, [r0, #0]
	add r4, #0xb4
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
_02251F3E:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02251EF4

	thumb_func_start ov16_02251F44
ov16_02251F44: ; 0x02251F44
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	lsl r0, r1, #6
	lsl r6, r2, #4
	add r1, r4, r0
	add r5, r1, r6
	mov r1, #0x22
	add r7, r3, #0
	mov r3, #0
	lsl r1, r1, #8
_02251F58:
	ldrb r2, [r5, r1]
	cmp r2, #0
	bne _02251F6C
	add r0, r4, r0
	add r0, r0, r6
	add r1, r0, r3
	mov r0, #0x22
	lsl r0, r0, #8
	strb r7, [r1, r0]
	b _02251F74
_02251F6C:
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, #0x10
	blt _02251F58
_02251F74:
	cmp r3, #0x10
	blt _02251F7C
	bl GF_AssertFail
_02251F7C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02251F44

	thumb_func_start ov16_02251F80
ov16_02251F80: ; 0x02251F80
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp]
	add r4, r3, #0
	bne _02251F90
	bl GF_AssertFail
_02251F90:
	ldr r0, [sp]
	lsl r6, r5, #6
	lsl r5, r0, #4
	add r0, r7, r6
	add r3, r0, r5
	mov r0, #0x22
	mov r2, #0
	lsl r0, r0, #8
_02251FA0:
	ldrb r1, [r3, r0]
	cmp r4, r1
	bne _02251FB6
	add r1, r7, r6
	add r1, r1, r5
	add r3, r1, r2
	mov r1, #0x22
	mov r0, #0
	lsl r1, r1, #8
	strb r0, [r3, r1]
	b _02251FBE
_02251FB6:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #0x10
	blt _02251FA0
_02251FBE:
	cmp r2, #0x10
	blt _02251FC6
	bl GF_AssertFail
_02251FC6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02251F80

	thumb_func_start ov16_02251FC8
ov16_02251FC8: ; 0x02251FC8
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0
	mov r4, #0x22
	mov lr, r0
	mov ip, r2
	add r7, r0, #0
	add r6, r2, #0
	lsl r4, r4, #8
_02251FD8:
	mov r0, #0
	add r3, r7, #0
_02251FDC:
	add r1, r6, #0
_02251FDE:
	add r5, r3, r1
	ldrb r5, [r5, r4]
	add r1, r1, #1
	add r2, r2, r5
	cmp r1, #0x10
	blt _02251FDE
	add r0, r0, #1
	add r3, #0x10
	cmp r0, #4
	blt _02251FDC
	mov r0, ip
	add r0, r0, #1
	add r7, #0x40
	mov ip, r0
	cmp r0, #4
	blt _02251FD8
	cmp r2, #0
	bne _0225200A
	ldr r1, _02252018 ; =0x00003148
	mov r3, #0
	mov r0, lr
	str r3, [r0, r1]
_0225200A:
	cmp r2, #0
	bne _02252012
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02252012:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252018: .word 0x00003148
	thumb_func_end ov16_02251FC8

	thumb_func_start ov16_0225201C
ov16_0225201C: ; 0x0225201C
	push {r3, lr}
	ldr r1, _02252038 ; =0x00003148
	ldr r2, [r0, r1]
	add r2, r2, #1
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	ldr r0, _0225203C ; =0x00000708
	cmp r1, r0
	ble _02252034
	mov r0, #1
	bl sub_02038AE0
_02252034:
	pop {r3, pc}
	nop
_02252038: .word 0x00003148
_0225203C: .word 0x00000708
	thumb_func_end ov16_0225201C

	thumb_func_start ov16_02252040
ov16_02252040: ; 0x02252040
	push {r3, r4}
	lsl r1, r1, #8
	add r4, r0, r1
	mov r3, #0
	mov r0, #0x23
	mov r1, #1
	add r2, r3, #0
	lsl r0, r0, #8
	lsl r1, r1, #8
_02252052:
	add r3, r3, #1
	strb r2, [r4, r0]
	add r4, r4, #1
	cmp r3, r1
	blt _02252052
	pop {r3, r4}
	bx lr
	thumb_func_end ov16_02252040

	thumb_func_start ov16_02252060
ov16_02252060: ; 0x02252060
	push {r4, r5, r6, lr}
	mov r4, #0xb5
	lsl r4, r4, #6
	add r5, r0, r4
	mov r6, #0xc0
	add r4, r1, #0
	mul r4, r6
	add r4, r5, r4
	cmp r2, #0x64
	bls _02252076
	b _022523DE
_02252076:
	add r5, r2, r2
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02252082: ; jump table
	.short _0225214C - _02252082 - 2 ; case 0
	.short _02252150 - _02252082 - 2 ; case 1
	.short _02252154 - _02252082 - 2 ; case 2
	.short _02252158 - _02252082 - 2 ; case 3
	.short _0225215C - _02252082 - 2 ; case 4
	.short _02252160 - _02252082 - 2 ; case 5
	.short _02252164 - _02252082 - 2 ; case 6
	.short _02252164 - _02252082 - 2 ; case 7
	.short _02252164 - _02252082 - 2 ; case 8
	.short _02252164 - _02252082 - 2 ; case 9
	.short _0225216E - _02252082 - 2 ; case 10
	.short _02252176 - _02252082 - 2 ; case 11
	.short _0225217E - _02252082 - 2 ; case 12
	.short _02252186 - _02252082 - 2 ; case 13
	.short _0225218E - _02252082 - 2 ; case 14
	.short _02252196 - _02252082 - 2 ; case 15
	.short _0225219E - _02252082 - 2 ; case 16
	.short _022521A6 - _02252082 - 2 ; case 17
	.short _022521AC - _02252082 - 2 ; case 18
	.short _022521AC - _02252082 - 2 ; case 19
	.short _022521AC - _02252082 - 2 ; case 20
	.short _022521AC - _02252082 - 2 ; case 21
	.short _022521AC - _02252082 - 2 ; case 22
	.short _022521AC - _02252082 - 2 ; case 23
	.short _022521AC - _02252082 - 2 ; case 24
	.short _022521AC - _02252082 - 2 ; case 25
	.short _022521B6 - _02252082 - 2 ; case 26
	.short _022521BC - _02252082 - 2 ; case 27
	.short _022521BC - _02252082 - 2 ; case 28
	.short _022521C2 - _02252082 - 2 ; case 29
	.short _022521CC - _02252082 - 2 ; case 30
	.short _022521D6 - _02252082 - 2 ; case 31
	.short _022521D6 - _02252082 - 2 ; case 32
	.short _022521D6 - _02252082 - 2 ; case 33
	.short _022521D6 - _02252082 - 2 ; case 34
	.short _022521E0 - _02252082 - 2 ; case 35
	.short _022521E0 - _02252082 - 2 ; case 36
	.short _022521E0 - _02252082 - 2 ; case 37
	.short _022521E0 - _02252082 - 2 ; case 38
	.short _022521EA - _02252082 - 2 ; case 39
	.short _022521EA - _02252082 - 2 ; case 40
	.short _022521EA - _02252082 - 2 ; case 41
	.short _022521EA - _02252082 - 2 ; case 42
	.short _022521FE - _02252082 - 2 ; case 43
	.short _02252204 - _02252082 - 2 ; case 44
	.short _0225220A - _02252082 - 2 ; case 45
	.short _0225221C - _02252082 - 2 ; case 46
	.short _02252228 - _02252082 - 2 ; case 47
	.short _0225222C - _02252082 - 2 ; case 48
	.short _02252230 - _02252082 - 2 ; case 49
	.short _02252246 - _02252082 - 2 ; case 50
	.short _0225224A - _02252082 - 2 ; case 51
	.short _0225224E - _02252082 - 2 ; case 52
	.short _02252252 - _02252082 - 2 ; case 53
	.short _02252256 - _02252082 - 2 ; case 54
	.short _0225225A - _02252082 - 2 ; case 55
	.short _02252260 - _02252082 - 2 ; case 56
	.short _02252266 - _02252082 - 2 ; case 57
	.short _0225226C - _02252082 - 2 ; case 58
	.short _02252276 - _02252082 - 2 ; case 59
	.short _0225227C - _02252082 - 2 ; case 60
	.short _02252282 - _02252082 - 2 ; case 61
	.short _0225228C - _02252082 - 2 ; case 62
	.short _02252296 - _02252082 - 2 ; case 63
	.short _022522A0 - _02252082 - 2 ; case 64
	.short _022522AA - _02252082 - 2 ; case 65
	.short _022522B4 - _02252082 - 2 ; case 66
	.short _022522BE - _02252082 - 2 ; case 67
	.short _022522C8 - _02252082 - 2 ; case 68
	.short _022522D2 - _02252082 - 2 ; case 69
	.short _022522DC - _02252082 - 2 ; case 70
	.short _022522E6 - _02252082 - 2 ; case 71
	.short _022522F0 - _02252082 - 2 ; case 72
	.short _022522FA - _02252082 - 2 ; case 73
	.short _02252302 - _02252082 - 2 ; case 74
	.short _0225230C - _02252082 - 2 ; case 75
	.short _02252316 - _02252082 - 2 ; case 76
	.short _02252320 - _02252082 - 2 ; case 77
	.short _0225232A - _02252082 - 2 ; case 78
	.short _02252334 - _02252082 - 2 ; case 79
	.short _0225233E - _02252082 - 2 ; case 80
	.short _02252348 - _02252082 - 2 ; case 81
	.short _02252352 - _02252082 - 2 ; case 82
	.short _0225235C - _02252082 - 2 ; case 83
	.short _02252366 - _02252082 - 2 ; case 84
	.short _02252370 - _02252082 - 2 ; case 85
	.short _0225237A - _02252082 - 2 ; case 86
	.short _02252384 - _02252082 - 2 ; case 87
	.short _0225238A - _02252082 - 2 ; case 88
	.short _02252390 - _02252082 - 2 ; case 89
	.short _02252396 - _02252082 - 2 ; case 90
	.short _0225239C - _02252082 - 2 ; case 91
	.short _022523A2 - _02252082 - 2 ; case 92
	.short _022523A8 - _02252082 - 2 ; case 93
	.short _022523AE - _02252082 - 2 ; case 94
	.short _022523B4 - _02252082 - 2 ; case 95
	.short _022523BA - _02252082 - 2 ; case 96
	.short _022523C2 - _02252082 - 2 ; case 97
	.short _022523CA - _02252082 - 2 ; case 98
	.short _022523DE - _02252082 - 2 ; case 99
	.short _022523D4 - _02252082 - 2 ; case 100
_0225214C:
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_02252150:
	ldrh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_02252154:
	ldrh r0, [r4, #4]
	pop {r4, r5, r6, pc}
_02252158:
	ldrh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_0225215C:
	ldrh r0, [r4, #8]
	pop {r4, r5, r6, pc}
_02252160:
	ldrh r0, [r4, #0xa]
	pop {r4, r5, r6, pc}
_02252164:
	sub r0, r2, #6
	lsl r0, r0, #1
	add r0, r4, r0
	ldrh r0, [r0, #0xc]
	pop {r4, r5, r6, pc}
_0225216E:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_02252176:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0225217E:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_02252186:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0225218E:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #7
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_02252196:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #2
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0225219E:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_022521A6:
	ldr r0, [r4, #0x14]
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_022521AC:
	sub r2, #0x12
	add r1, r4, r2
	mov r0, #0x18
	ldrsb r0, [r1, r0]
	pop {r4, r5, r6, pc}
_022521B6:
	add r4, #0x27
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_022521BC:
	bl ov16_0225B734
	pop {r4, r5, r6, pc}
_022521C2:
	add r4, #0x7e
	ldrb r0, [r4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_022521CC:
	add r4, #0x26
	ldrb r0, [r4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_022521D6:
	sub r2, #0x1f
	add r0, r4, r2
	add r0, #0x2c
	ldrb r0, [r0]
	pop {r4, r5, r6, pc}
_022521E0:
	sub r2, #0x23
	add r0, r4, r2
	add r0, #0x30
	ldrb r0, [r0]
	pop {r4, r5, r6, pc}
_022521EA:
	sub r2, #0x27
	lsl r0, r2, #1
	add r1, r4, r2
	add r0, r4, r0
	add r1, #0x30
	ldrh r0, [r0, #0xc]
	ldrb r1, [r1]
	bl sub_020790DC
	pop {r4, r5, r6, pc}
_022521FE:
	add r4, #0x34
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_02252204:
	add r4, #0x35
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0225220A:
	mov r1, #0
_0225220C:
	ldrh r0, [r4, #0x36]
	add r1, r1, #1
	add r4, r4, #2
	strh r0, [r3]
	add r3, r3, #2
	cmp r1, #0xb
	blt _0225220C
	b _022523E2
_0225221C:
	add r4, #0x36
	add r0, r3, #0
	add r1, r4, #0
	bl sub_02023D28
	b _022523E2
_02252228:
	ldr r0, [r4, #0x4c]
	pop {r4, r5, r6, pc}
_0225222C:
	ldr r0, [r4, #0x50]
	pop {r4, r5, r6, pc}
_02252230:
	mov r1, #0
_02252232:
	add r0, r4, #0
	add r0, #0x54
	ldrh r0, [r0]
	add r1, r1, #1
	add r4, r4, #2
	strh r0, [r3]
	add r3, r3, #2
	cmp r1, #0xb
	blt _02252232
	b _022523E2
_02252246:
	ldr r0, [r4, #0x64]
	pop {r4, r5, r6, pc}
_0225224A:
	ldr r0, [r4, #0x68]
	pop {r4, r5, r6, pc}
_0225224E:
	ldr r0, [r4, #0x6c]
	pop {r4, r5, r6, pc}
_02252252:
	ldr r0, [r4, #0x70]
	pop {r4, r5, r6, pc}
_02252256:
	ldr r0, [r4, #0x74]
	pop {r4, r5, r6, pc}
_0225225A:
	add r4, #0x78
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_02252260:
	add r4, #0x7c
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_02252266:
	add r4, #0x7d
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0225226C:
	add r4, #0x7e
	ldrb r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_02252276:
	add r4, #0x80
	ldr r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0225227C:
	add r4, #0x84
	ldr r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252282:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0225228C:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_02252296:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_022522A0:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_022522AA:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_022522B4:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_022522BE:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #0xe
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_022522C8:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_022522D2:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #8
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_022522DC:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #5
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_022522E6:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #2
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_022522F0:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_022522FA:
	add r4, #0x88
	ldr r0, [r4, #0]
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_02252302:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0225230C:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_02252316:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_02252320:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0225232A:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_02252334:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0225233E:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_02252348:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_02252352:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #9
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0225235C:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #5
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_02252366:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #4
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_02252370:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0225237A:
	add r4, #0x8c
	ldr r0, [r4, #0]
	lsl r0, r0, #2
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_02252384:
	add r4, #0x90
	ldr r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0225238A:
	add r4, #0x94
	ldr r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252390:
	add r4, #0x98
	ldr r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252396:
	add r4, #0xa0
	ldr r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0225239C:
	add r4, #0xa4
	ldr r0, [r4, #0]
	pop {r4, r5, r6, pc}
_022523A2:
	add r4, #0xa8
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_022523A8:
	add r4, #0xac
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_022523AE:
	add r4, #0xaa
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_022523B4:
	add r4, #0xbc
	ldr r0, [r4, #0]
	pop {r4, r5, r6, pc}
_022523BA:
	ldr r0, [r4, #0x28]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_022523C2:
	ldr r0, [r4, #0x28]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_022523CA:
	add r4, #0x26
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_022523D4:
	add r6, #0x78
	ldr r2, [r0, r6]
	bl ov16_02252060
	pop {r4, r5, r6, pc}
_022523DE:
	bl GF_AssertFail
_022523E2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_02252060

	thumb_func_start ov16_022523E8
ov16_022523E8: ; 0x022523E8
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #0xb5
	lsl r2, r2, #6
	add r4, r0, r2
	mov r6, #0xc0
	add r2, r1, #0
	mul r2, r6
	add r2, r4, r2
	cmp r5, #0x64
	bls _02252400
	b _022529FE
_02252400:
	add r4, r5, r5
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_0225240C: ; jump table
	.short _022524D6 - _0225240C - 2 ; case 0
	.short _022524DC - _0225240C - 2 ; case 1
	.short _022524E2 - _0225240C - 2 ; case 2
	.short _022524E8 - _0225240C - 2 ; case 3
	.short _022524EE - _0225240C - 2 ; case 4
	.short _022524F4 - _0225240C - 2 ; case 5
	.short _022524FA - _0225240C - 2 ; case 6
	.short _022524FA - _0225240C - 2 ; case 7
	.short _022524FA - _0225240C - 2 ; case 8
	.short _022524FA - _0225240C - 2 ; case 9
	.short _02252506 - _0225240C - 2 ; case 10
	.short _02252518 - _0225240C - 2 ; case 11
	.short _0225252A - _0225240C - 2 ; case 12
	.short _0225253C - _0225240C - 2 ; case 13
	.short _0225254E - _0225240C - 2 ; case 14
	.short _02252560 - _0225240C - 2 ; case 15
	.short _02252572 - _0225240C - 2 ; case 16
	.short _02252584 - _0225240C - 2 ; case 17
	.short _02252594 - _0225240C - 2 ; case 18
	.short _02252594 - _0225240C - 2 ; case 19
	.short _02252594 - _0225240C - 2 ; case 20
	.short _02252594 - _0225240C - 2 ; case 21
	.short _02252594 - _0225240C - 2 ; case 22
	.short _02252594 - _0225240C - 2 ; case 23
	.short _02252594 - _0225240C - 2 ; case 24
	.short _02252594 - _0225240C - 2 ; case 25
	.short _022525A0 - _0225240C - 2 ; case 26
	.short _022525A8 - _0225240C - 2 ; case 27
	.short _022525B0 - _0225240C - 2 ; case 28
	.short _022525B8 - _0225240C - 2 ; case 29
	.short _022525D0 - _0225240C - 2 ; case 30
	.short _022525E8 - _0225240C - 2 ; case 31
	.short _022525E8 - _0225240C - 2 ; case 32
	.short _022525E8 - _0225240C - 2 ; case 33
	.short _022525E8 - _0225240C - 2 ; case 34
	.short _022525F4 - _0225240C - 2 ; case 35
	.short _022525F4 - _0225240C - 2 ; case 36
	.short _022525F4 - _0225240C - 2 ; case 37
	.short _022525F4 - _0225240C - 2 ; case 38
	.short _02252600 - _0225240C - 2 ; case 39
	.short _02252600 - _0225240C - 2 ; case 40
	.short _02252600 - _0225240C - 2 ; case 41
	.short _02252600 - _0225240C - 2 ; case 42
	.short _02252606 - _0225240C - 2 ; case 43
	.short _0225260E - _0225240C - 2 ; case 44
	.short _02252616 - _0225240C - 2 ; case 45
	.short _022529FE - _0225240C - 2 ; case 46
	.short _02252628 - _0225240C - 2 ; case 47
	.short _02252630 - _0225240C - 2 ; case 48
	.short _02252636 - _0225240C - 2 ; case 49
	.short _0225264C - _0225240C - 2 ; case 50
	.short _02252652 - _0225240C - 2 ; case 51
	.short _02252658 - _0225240C - 2 ; case 52
	.short _0225265E - _0225240C - 2 ; case 53
	.short _02252664 - _0225240C - 2 ; case 54
	.short _0225266A - _0225240C - 2 ; case 55
	.short _02252672 - _0225240C - 2 ; case 56
	.short _0225267A - _0225240C - 2 ; case 57
	.short _02252682 - _0225240C - 2 ; case 58
	.short _0225269A - _0225240C - 2 ; case 59
	.short _022526A2 - _0225240C - 2 ; case 60
	.short _022526AA - _0225240C - 2 ; case 61
	.short _022526C2 - _0225240C - 2 ; case 62
	.short _022526DA - _0225240C - 2 ; case 63
	.short _022526F2 - _0225240C - 2 ; case 64
	.short _0225270A - _0225240C - 2 ; case 65
	.short _02252722 - _0225240C - 2 ; case 66
	.short _0225273A - _0225240C - 2 ; case 67
	.short _02252752 - _0225240C - 2 ; case 68
	.short _0225276A - _0225240C - 2 ; case 69
	.short _02252782 - _0225240C - 2 ; case 70
	.short _0225279A - _0225240C - 2 ; case 71
	.short _022527B2 - _0225240C - 2 ; case 72
	.short _022527CA - _0225240C - 2 ; case 73
	.short _022527E0 - _0225240C - 2 ; case 74
	.short _022527F8 - _0225240C - 2 ; case 75
	.short _02252810 - _0225240C - 2 ; case 76
	.short _02252828 - _0225240C - 2 ; case 77
	.short _02252840 - _0225240C - 2 ; case 78
	.short _02252858 - _0225240C - 2 ; case 79
	.short _02252870 - _0225240C - 2 ; case 80
	.short _02252888 - _0225240C - 2 ; case 81
	.short _022528A0 - _0225240C - 2 ; case 82
	.short _02252910 - _0225240C - 2 ; case 83
	.short _02252928 - _0225240C - 2 ; case 84
	.short _02252940 - _0225240C - 2 ; case 85
	.short _02252958 - _0225240C - 2 ; case 86
	.short _02252970 - _0225240C - 2 ; case 87
	.short _02252978 - _0225240C - 2 ; case 88
	.short _02252980 - _0225240C - 2 ; case 89
	.short _02252988 - _0225240C - 2 ; case 90
	.short _02252990 - _0225240C - 2 ; case 91
	.short _02252998 - _0225240C - 2 ; case 92
	.short _022529A0 - _0225240C - 2 ; case 93
	.short _022529A8 - _0225240C - 2 ; case 94
	.short _022529B0 - _0225240C - 2 ; case 95
	.short _022529B8 - _0225240C - 2 ; case 96
	.short _022529CA - _0225240C - 2 ; case 97
	.short _022529DC - _0225240C - 2 ; case 98
	.short _022529FE - _0225240C - 2 ; case 99
	.short _022529F4 - _0225240C - 2 ; case 100
_022524D6:
	ldrh r0, [r3]
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_022524DC:
	ldrh r0, [r3]
	strh r0, [r2, #2]
	pop {r4, r5, r6, pc}
_022524E2:
	ldrh r0, [r3]
	strh r0, [r2, #4]
	pop {r4, r5, r6, pc}
_022524E8:
	ldrh r0, [r3]
	strh r0, [r2, #6]
	pop {r4, r5, r6, pc}
_022524EE:
	ldrh r0, [r3]
	strh r0, [r2, #8]
	pop {r4, r5, r6, pc}
_022524F4:
	ldrh r0, [r3]
	strh r0, [r2, #0xa]
	pop {r4, r5, r6, pc}
_022524FA:
	sub r0, r5, #6
	lsl r0, r0, #1
	ldrh r1, [r3]
	add r0, r2, r0
	strh r1, [r0, #0xc]
	pop {r4, r5, r6, pc}
_02252506:
	ldr r4, [r2, #0x14]
	mov r0, #0x1f
	bic r4, r0
	ldrb r1, [r3]
	mov r0, #0x1f
	and r0, r1
	orr r0, r4
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_02252518:
	ldr r1, [r2, #0x14]
	ldr r0, _022528AC ; =0xFFFFFC1F
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0225252A:
	ldr r1, [r2, #0x14]
	ldr r0, _022528B0 ; =0xFFFF83FF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0225253C:
	ldr r1, [r2, #0x14]
	ldr r0, _022528B4 ; =0xFFF07FFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0225254E:
	ldr r1, [r2, #0x14]
	ldr r0, _022528B8 ; =0xFE0FFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #7
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_02252560:
	ldr r1, [r2, #0x14]
	ldr r0, _022528BC ; =0xC1FFFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_02252572:
	ldr r1, [r2, #0x14]
	ldr r0, _022528C0 ; =0xBFFFFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_02252584:
	ldr r1, [r2, #0x14]
	ldr r0, _022528C4 ; =0x7FFFFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_02252594:
	mov r0, #0
	ldrsb r1, [r3, r0]
	sub r5, #0x12
	add r0, r2, r5
	strb r1, [r0, #0x18]
	pop {r4, r5, r6, pc}
_022525A0:
	ldrb r0, [r3]
	add r2, #0x27
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_022525A8:
	ldrb r0, [r3]
	add r2, #0x24
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_022525B0:
	ldrb r0, [r3]
	add r2, #0x25
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_022525B8:
	add r0, r2, #0
	add r0, #0x7e
	ldrb r4, [r0]
	ldrb r1, [r3]
	mov r0, #0xf
	bic r4, r0
	mov r0, #0xf
	and r0, r1
	orr r0, r4
	add r2, #0x7e
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_022525D0:
	add r0, r2, #0
	add r0, #0x26
	ldrb r1, [r0]
	mov r0, #0x20
	add r2, #0x26
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1a
	orr r0, r1
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_022525E8:
	sub r5, #0x1f
	add r0, r2, r5
	ldrb r1, [r3]
	add r0, #0x2c
	strb r1, [r0]
	pop {r4, r5, r6, pc}
_022525F4:
	sub r5, #0x23
	add r0, r2, r5
	ldrb r1, [r3]
	add r0, #0x30
	strb r1, [r0]
	pop {r4, r5, r6, pc}
_02252600:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
_02252606:
	ldrb r0, [r3]
	add r2, #0x34
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0225260E:
	ldrb r0, [r3]
	add r2, #0x35
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_02252616:
	mov r1, #0
_02252618:
	ldrh r0, [r3]
	add r1, r1, #1
	add r3, r3, #2
	strh r0, [r2, #0x36]
	add r2, r2, #2
	cmp r1, #0xb
	blt _02252618
	pop {r4, r5, r6, pc}
_02252628:
	mov r0, #0
	ldrsh r0, [r3, r0]
	str r0, [r2, #0x4c]
	pop {r4, r5, r6, pc}
_02252630:
	ldrh r0, [r3]
	str r0, [r2, #0x50]
	pop {r4, r5, r6, pc}
_02252636:
	mov r4, #0
_02252638:
	ldrh r1, [r3]
	add r0, r2, #0
	add r0, #0x54
	add r4, r4, #1
	strh r1, [r0]
	add r3, r3, #2
	add r2, r2, #2
	cmp r4, #0xb
	blt _02252638
	pop {r4, r5, r6, pc}
_0225264C:
	ldr r0, [r3, #0]
	str r0, [r2, #0x64]
	pop {r4, r5, r6, pc}
_02252652:
	ldr r0, [r3, #0]
	str r0, [r2, #0x68]
	pop {r4, r5, r6, pc}
_02252658:
	ldr r0, [r3, #0]
	str r0, [r2, #0x6c]
	pop {r4, r5, r6, pc}
_0225265E:
	ldr r0, [r3, #0]
	str r0, [r2, #0x70]
	pop {r4, r5, r6, pc}
_02252664:
	ldr r0, [r3, #0]
	str r0, [r2, #0x74]
	pop {r4, r5, r6, pc}
_0225266A:
	ldrh r0, [r3]
	add r2, #0x78
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_02252672:
	ldrb r0, [r3]
	add r2, #0x7c
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0225267A:
	ldrb r0, [r3]
	add r2, #0x7d
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_02252682:
	add r0, r2, #0
	add r0, #0x7e
	ldrb r1, [r0]
	mov r0, #0xf0
	add r2, #0x7e
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0225269A:
	ldr r0, [r3, #0]
	add r2, #0x80
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_022526A2:
	ldr r0, [r3, #0]
	add r2, #0x84
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_022526AA:
	add r0, r2, #0
	add r0, #0x88
	ldr r4, [r0, #0]
	mov r0, #7
	bic r4, r0
	ldrb r1, [r3]
	mov r0, #7
	add r2, #0x88
	and r0, r1
	orr r0, r4
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_022526C2:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	mov r0, #0x38
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x88
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_022526DA:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	mov r0, #0xc0
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x88
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_022526F2:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _022528C8 ; =0xFFFFF8FF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x15
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_0225270A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _022528CC ; =0xFFFFE7FF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x13
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252722:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _022528D0 ; =0xFFFF9FFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_0225273A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _022528D4 ; =0xFFFC7FFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xe
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252752:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _022528D8 ; =0xFFE3FFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xb
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_0225276A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _022528DC ; =0xFF1FFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #8
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252782:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _022528E0 ; =0xF8FFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #5
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_0225279A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _022528E4 ; =0xC7FFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_022527B2:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _022528C0 ; =0xBFFFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_022527CA:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _022528C4 ; =0x7FFFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_022527E0:
	add r0, r2, #0
	add r0, #0x8c
	ldr r4, [r0, #0]
	mov r0, #3
	bic r4, r0
	ldrb r1, [r3]
	mov r0, #3
	add r2, #0x8c
	and r0, r1
	orr r0, r4
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_022527F8:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	mov r0, #0x3c
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x8c
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252810:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	mov r0, #0xc0
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x8c
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252828:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _022528E8 ; =0xFFFFFCFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252840:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _022528EC ; =0xFFFFE3FF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x13
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252858:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _022528F0 ; =0xFFFF1FFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252870:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _022528F4 ; =0xFFF8FFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xd
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252888:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _022528F8 ; =0xFFC7FFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xa
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_022528A0:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _022528FC ; =0xFFBFFFFF
	b _02252900
	nop
_022528AC: .word 0xFFFFFC1F
_022528B0: .word 0xFFFF83FF
_022528B4: .word 0xFFF07FFF
_022528B8: .word 0xFE0FFFFF
_022528BC: .word 0xC1FFFFFF
_022528C0: .word 0xBFFFFFFF
_022528C4: .word 0x7FFFFFFF
_022528C8: .word 0xFFFFF8FF
_022528CC: .word 0xFFFFE7FF
_022528D0: .word 0xFFFF9FFF
_022528D4: .word 0xFFFC7FFF
_022528D8: .word 0xFFE3FFFF
_022528DC: .word 0xFF1FFFFF
_022528E0: .word 0xF8FFFFFF
_022528E4: .word 0xC7FFFFFF
_022528E8: .word 0xFFFFFCFF
_022528EC: .word 0xFFFFE3FF
_022528F0: .word 0xFFFF1FFF
_022528F4: .word 0xFFF8FFFF
_022528F8: .word 0xFFC7FFFF
_022528FC: .word 0xFFBFFFFF
_02252900:
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #9
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252910:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _02252A04 ; =0xF87FFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #5
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252928:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _02252A08 ; =0xF7FFFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #4
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252940:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _02252A0C ; =0xEFFFFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252958:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _02252A10 ; =0xDFFFFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252970:
	ldr r0, [r3, #0]
	add r2, #0x90
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252978:
	ldr r0, [r3, #0]
	add r2, #0x94
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252980:
	ldr r0, [r3, #0]
	add r2, #0x98
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252988:
	ldr r0, [r3, #0]
	add r2, #0xa0
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252990:
	ldr r0, [r3, #0]
	add r2, #0xa4
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_02252998:
	ldrh r0, [r3]
	add r2, #0xa8
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_022529A0:
	ldrh r0, [r3]
	add r2, #0xac
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_022529A8:
	ldrh r0, [r3]
	add r2, #0xaa
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_022529B0:
	ldr r0, [r3, #0]
	add r2, #0xbc
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
_022529B8:
	ldr r1, [r2, #0x28]
	mov r0, #0x40
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x19
	orr r0, r1
	str r0, [r2, #0x28]
	pop {r4, r5, r6, pc}
_022529CA:
	ldr r1, [r2, #0x28]
	mov r0, #0x80
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r2, #0x28]
	pop {r4, r5, r6, pc}
_022529DC:
	add r0, r2, #0
	add r0, #0x26
	ldrb r4, [r0]
	ldrb r1, [r3]
	mov r0, #0x1f
	bic r4, r0
	mov r0, #0x1f
	and r0, r1
	orr r0, r4
	add r2, #0x26
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_022529F4:
	add r6, #0x78
	ldr r2, [r0, r6]
	bl ov16_022523E8
	pop {r4, r5, r6, pc}
_022529FE:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02252A04: .word 0xF87FFFFF
_02252A08: .word 0xF7FFFFFF
_02252A0C: .word 0xEFFFFFFF
_02252A10: .word 0xDFFFFFFF
	thumb_func_end ov16_022523E8

	thumb_func_start ov16_02252A14
ov16_02252A14: ; 0x02252A14
	push {r4, lr}
	mov r4, #0xb5
	lsl r4, r4, #6
	add r4, r0, r4
	mov r0, #0xc0
	mul r0, r1
	add r1, r2, #0
	add r0, r4, r0
	add r2, r3, #0
	bl ov16_02252A2C
	pop {r4, pc}
	thumb_func_end ov16_02252A14

	thumb_func_start ov16_02252A2C
ov16_02252A2C: ; 0x02252A2C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0x62
	bls _02252A38
	b _02252E82
_02252A38:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02252A44: ; jump table
	.short _02252E82 - _02252A44 - 2 ; case 0
	.short _02252B0A - _02252A44 - 2 ; case 1
	.short _02252B12 - _02252A44 - 2 ; case 2
	.short _02252B1A - _02252A44 - 2 ; case 3
	.short _02252B22 - _02252A44 - 2 ; case 4
	.short _02252B2A - _02252A44 - 2 ; case 5
	.short _02252E82 - _02252A44 - 2 ; case 6
	.short _02252E82 - _02252A44 - 2 ; case 7
	.short _02252E82 - _02252A44 - 2 ; case 8
	.short _02252E82 - _02252A44 - 2 ; case 9
	.short _02252B32 - _02252A44 - 2 ; case 10
	.short _02252B4A - _02252A44 - 2 ; case 11
	.short _02252B60 - _02252A44 - 2 ; case 12
	.short _02252B76 - _02252A44 - 2 ; case 13
	.short _02252B8C - _02252A44 - 2 ; case 14
	.short _02252BA2 - _02252A44 - 2 ; case 15
	.short _02252E82 - _02252A44 - 2 ; case 16
	.short _02252E82 - _02252A44 - 2 ; case 17
	.short _02252BB8 - _02252A44 - 2 ; case 18
	.short _02252BB8 - _02252A44 - 2 ; case 19
	.short _02252BB8 - _02252A44 - 2 ; case 20
	.short _02252BB8 - _02252A44 - 2 ; case 21
	.short _02252BB8 - _02252A44 - 2 ; case 22
	.short _02252BB8 - _02252A44 - 2 ; case 23
	.short _02252BB8 - _02252A44 - 2 ; case 24
	.short _02252BB8 - _02252A44 - 2 ; case 25
	.short _02252E82 - _02252A44 - 2 ; case 26
	.short _02252E82 - _02252A44 - 2 ; case 27
	.short _02252E82 - _02252A44 - 2 ; case 28
	.short _02252E82 - _02252A44 - 2 ; case 29
	.short _02252E82 - _02252A44 - 2 ; case 30
	.short _02252BD6 - _02252A44 - 2 ; case 31
	.short _02252BD6 - _02252A44 - 2 ; case 32
	.short _02252BD6 - _02252A44 - 2 ; case 33
	.short _02252BD6 - _02252A44 - 2 ; case 34
	.short _02252BFC - _02252A44 - 2 ; case 35
	.short _02252BFC - _02252A44 - 2 ; case 36
	.short _02252BFC - _02252A44 - 2 ; case 37
	.short _02252BFC - _02252A44 - 2 ; case 38
	.short _02252E82 - _02252A44 - 2 ; case 39
	.short _02252E82 - _02252A44 - 2 ; case 40
	.short _02252E82 - _02252A44 - 2 ; case 41
	.short _02252E82 - _02252A44 - 2 ; case 42
	.short _02252C08 - _02252A44 - 2 ; case 43
	.short _02252C16 - _02252A44 - 2 ; case 44
	.short _02252E82 - _02252A44 - 2 ; case 45
	.short _02252E82 - _02252A44 - 2 ; case 46
	.short _02252C32 - _02252A44 - 2 ; case 47
	.short _02252C44 - _02252A44 - 2 ; case 48
	.short _02252E82 - _02252A44 - 2 ; case 49
	.short _02252C4C - _02252A44 - 2 ; case 50
	.short _02252C54 - _02252A44 - 2 ; case 51
	.short _02252E82 - _02252A44 - 2 ; case 52
	.short _02252E82 - _02252A44 - 2 ; case 53
	.short _02252E82 - _02252A44 - 2 ; case 54
	.short _02252E82 - _02252A44 - 2 ; case 55
	.short _02252E82 - _02252A44 - 2 ; case 56
	.short _02252E82 - _02252A44 - 2 ; case 57
	.short _02252E82 - _02252A44 - 2 ; case 58
	.short _02252E82 - _02252A44 - 2 ; case 59
	.short _02252E82 - _02252A44 - 2 ; case 60
	.short _02252C5C - _02252A44 - 2 ; case 61
	.short _02252C7A - _02252A44 - 2 ; case 62
	.short _02252C98 - _02252A44 - 2 ; case 63
	.short _02252CB6 - _02252A44 - 2 ; case 64
	.short _02252CD2 - _02252A44 - 2 ; case 65
	.short _02252CEE - _02252A44 - 2 ; case 66
	.short _02252D0A - _02252A44 - 2 ; case 67
	.short _02252D26 - _02252A44 - 2 ; case 68
	.short _02252D42 - _02252A44 - 2 ; case 69
	.short _02252D5E - _02252A44 - 2 ; case 70
	.short _02252D7A - _02252A44 - 2 ; case 71
	.short _02252E82 - _02252A44 - 2 ; case 72
	.short _02252E82 - _02252A44 - 2 ; case 73
	.short _02252E82 - _02252A44 - 2 ; case 74
	.short _02252E82 - _02252A44 - 2 ; case 75
	.short _02252E82 - _02252A44 - 2 ; case 76
	.short _02252E82 - _02252A44 - 2 ; case 77
	.short _02252D96 - _02252A44 - 2 ; case 78
	.short _02252DB2 - _02252A44 - 2 ; case 79
	.short _02252DCE - _02252A44 - 2 ; case 80
	.short _02252E82 - _02252A44 - 2 ; case 81
	.short _02252E82 - _02252A44 - 2 ; case 82
	.short _02252E82 - _02252A44 - 2 ; case 83
	.short _02252E82 - _02252A44 - 2 ; case 84
	.short _02252E82 - _02252A44 - 2 ; case 85
	.short _02252E82 - _02252A44 - 2 ; case 86
	.short _02252DEA - _02252A44 - 2 ; case 87
	.short _02252DF8 - _02252A44 - 2 ; case 88
	.short _02252E06 - _02252A44 - 2 ; case 89
	.short _02252E14 - _02252A44 - 2 ; case 90
	.short _02252E82 - _02252A44 - 2 ; case 91
	.short _02252E82 - _02252A44 - 2 ; case 92
	.short _02252E82 - _02252A44 - 2 ; case 93
	.short _02252E82 - _02252A44 - 2 ; case 94
	.short _02252E22 - _02252A44 - 2 ; case 95
	.short _02252E30 - _02252A44 - 2 ; case 96
	.short _02252E48 - _02252A44 - 2 ; case 97
	.short _02252E60 - _02252A44 - 2 ; case 98
_02252B0A:
	ldrh r0, [r4, #2]
	add r0, r0, r5
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_02252B12:
	ldrh r0, [r4, #4]
	add r0, r0, r5
	strh r0, [r4, #4]
	pop {r4, r5, r6, pc}
_02252B1A:
	ldrh r0, [r4, #6]
	add r0, r0, r5
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_02252B22:
	ldrh r0, [r4, #8]
	add r0, r0, r5
	strh r0, [r4, #8]
	pop {r4, r5, r6, pc}
_02252B2A:
	ldrh r0, [r4, #0xa]
	add r0, r0, r5
	strh r0, [r4, #0xa]
	pop {r4, r5, r6, pc}
_02252B32:
	ldr r2, [r4, #0x14]
	mov r1, #0x1f
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x1b
	add r2, r1, r5
	mov r1, #0x1f
	and r1, r2
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_02252B4A:
	ldr r1, [r4, #0x14]
	ldr r0, _02252E88 ; =0xFFFFFC1F
	and r0, r1
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_02252B60:
	ldr r1, [r4, #0x14]
	ldr r0, _02252E8C ; =0xFFFF83FF
	and r0, r1
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x11
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_02252B76:
	ldr r1, [r4, #0x14]
	ldr r0, _02252E90 ; =0xFFF07FFF
	and r0, r1
	lsl r1, r1, #0xc
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #0xc
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_02252B8C:
	ldr r1, [r4, #0x14]
	ldr r0, _02252E94 ; =0xFE0FFFFF
	and r0, r1
	lsl r1, r1, #7
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #7
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_02252BA2:
	ldr r1, [r4, #0x14]
	ldr r0, _02252E98 ; =0xC1FFFFFF
	and r0, r1
	lsl r1, r1, #2
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #2
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_02252BB8:
	add r4, #0x18
	sub r1, #0x12
	ldrsb r0, [r4, r1]
	add r0, r5, r0
	bpl _02252BC8
	mov r0, #0
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_02252BC8:
	cmp r0, #0xc
	ble _02252BD2
	mov r0, #0xc
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_02252BD2:
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_02252BD6:
	add r6, r1, #0
	sub r6, #0x1f
	lsl r0, r6, #1
	add r1, r4, r6
	add r0, r4, r0
	add r1, #0x30
	ldrh r0, [r0, #0xc]
	ldrb r1, [r1]
	bl sub_020790DC
	add r4, #0x2c
	ldrb r1, [r4, r6]
	add r1, r5, r1
	cmp r1, r0
	ble _02252BF8
	strb r0, [r4, r6]
	pop {r4, r5, r6, pc}
_02252BF8:
	strb r1, [r4, r6]
	pop {r4, r5, r6, pc}
_02252BFC:
	add r4, #0x30
	sub r1, #0x23
	ldrb r0, [r4, r1]
	add r0, r0, r5
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_02252C08:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	add r4, #0x34
	add r0, r0, r5
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252C16:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	add r0, r0, r5
	cmp r0, #0xff
	ble _02252C26
	mov r0, #0xff
	b _02252C2C
_02252C26:
	cmp r0, #0
	bge _02252C2C
	mov r0, #0
_02252C2C:
	add r4, #0x35
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252C32:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	add r0, r0, r5
	cmp r0, r1
	bls _02252C40
	str r1, [r4, #0x4c]
	pop {r4, r5, r6, pc}
_02252C40:
	str r0, [r4, #0x4c]
	pop {r4, r5, r6, pc}
_02252C44:
	ldr r0, [r4, #0x50]
	add r0, r0, r5
	str r0, [r4, #0x50]
	pop {r4, r5, r6, pc}
_02252C4C:
	ldr r0, [r4, #0x64]
	add r0, r0, r5
	str r0, [r4, #0x64]
	pop {r4, r5, r6, pc}
_02252C54:
	ldr r0, [r4, #0x68]
	add r0, r0, r5
	str r0, [r4, #0x68]
	pop {r4, r5, r6, pc}
_02252C5C:
	add r0, r4, #0
	add r0, #0x88
	ldr r2, [r0, #0]
	mov r1, #7
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1d
	lsr r1, r1, #0x1d
	add r2, r1, r5
	mov r1, #7
	and r1, r2
	orr r0, r1
	add r4, #0x88
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252C7A:
	add r0, r4, #0
	add r0, #0x88
	ldr r2, [r0, #0]
	mov r1, #0x38
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1a
	orr r0, r1
	add r4, #0x88
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252C98:
	add r0, r4, #0
	add r0, #0x88
	ldr r2, [r0, #0]
	mov r1, #0xc0
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x1e
	add r1, r1, r5
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x18
	orr r0, r1
	add r4, #0x88
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252CB6:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _02252E9C ; =0xFFFFF8FF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x15
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252CD2:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _02252EA0 ; =0xFFFFE7FF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0x13
	lsr r1, r1, #0x1e
	add r1, r1, r5
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x13
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252CEE:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _02252EA4 ; =0xFFFF9FFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1e
	add r1, r1, r5
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x11
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252D0A:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _02252EA8 ; =0xFFFC7FFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0xe
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0xe
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252D26:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _02252EAC ; =0xFFE3FFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0xb
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0xb
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252D42:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _02252EB0 ; =0xFF1FFFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #8
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #8
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252D5E:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _02252EB4 ; =0xF8FFFFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #5
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #5
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252D7A:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	ldr r0, _02252EB8 ; =0xC7FFFFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #2
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #2
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252D96:
	add r0, r4, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _02252EBC ; =0xFFFFE3FF
	add r4, #0x8c
	and r0, r1
	lsl r1, r1, #0x13
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x13
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252DB2:
	add r0, r4, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _02252EC0 ; =0xFFFF1FFF
	add r4, #0x8c
	and r0, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252DCE:
	add r0, r4, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	ldr r0, _02252EC4 ; =0xFFF8FFFF
	add r4, #0x8c
	and r0, r1
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0xd
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252DEA:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, r5
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252DF8:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, r5
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252E06:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r4, #0x98
	add r0, r0, r5
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252E14:
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	add r4, #0xa0
	add r0, r0, r5
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252E22:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	add r4, #0xbc
	add r0, r0, r5
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02252E30:
	ldr r2, [r4, #0x28]
	mov r1, #0x40
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x1f
	add r1, r1, r5
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x19
	orr r0, r1
	str r0, [r4, #0x28]
	pop {r4, r5, r6, pc}
_02252E48:
	ldr r2, [r4, #0x28]
	mov r1, #0x80
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x1f
	add r1, r1, r5
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r4, #0x28]
	pop {r4, r5, r6, pc}
_02252E60:
	add r0, r4, #0
	add r0, #0x26
	ldrb r2, [r0]
	mov r1, #0x1f
	add r4, #0x26
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x1f
	and r1, r2
	orr r0, r1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252E82:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02252E88: .word 0xFFFFFC1F
_02252E8C: .word 0xFFFF83FF
_02252E90: .word 0xFFF07FFF
_02252E94: .word 0xFE0FFFFF
_02252E98: .word 0xC1FFFFFF
_02252E9C: .word 0xFFFFF8FF
_02252EA0: .word 0xFFFFE7FF
_02252EA4: .word 0xFFFF9FFF
_02252EA8: .word 0xFFFC7FFF
_02252EAC: .word 0xFFE3FFFF
_02252EB0: .word 0xFF1FFFFF
_02252EB4: .word 0xF8FFFFFF
_02252EB8: .word 0xC7FFFFFF
_02252EBC: .word 0xFFFFE3FF
_02252EC0: .word 0xFFFF1FFF
_02252EC4: .word 0xFFF8FFFF
	thumb_func_end ov16_02252A2C

	thumb_func_start ov16_02252EC8
ov16_02252EC8: ; 0x02252EC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp, #4]
	ldr r0, [sp, #0x80]
	str r3, [sp, #0xc]
	str r0, [sp, #0x80]
	mov r0, #0
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x64]
	str r2, [sp, #8]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x64]
	ldr r3, _022531C4 ; =0x00002D8C
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x64]
	add r5, r1, #0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x34]
	mov r0, #0xc0
	mul r2, r0
	str r2, [sp, #0x18]
	add r2, r5, r3
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x68]
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _02252F20
	ldr r2, [sp, #0xc]
	mul r0, r2
	add r0, r5, r0
	ldr r0, [r0, r3]
	cmp r0, #0
	beq _02252F20
	add sp, #0x6c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252F20:
	cmp r1, #0
	beq _02252F3A
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022531C4 ; =0x00002D8C
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02252F3A
	add sp, #0x6c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02252F3A:
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02255A4C
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov16_02255A4C
	str r0, [sp, #0x28]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02258AB8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x58]
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl ov16_02258ACC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov16_02258AB8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0
	bl ov16_02258ACC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x18]
	ldr r2, _022531C8 ; =0x00002D5B
	add r0, r5, r0
	ldrsb r4, [r0, r2]
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	str r1, [sp, #0x14]
	ldrsb r7, [r0, r2]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x56
	bne _02252FBC
	sub r0, r4, #6
	lsl r0, r0, #1
	add r4, r0, #6
	cmp r4, #0xc
	ble _02252FB6
	mov r4, #0xc
_02252FB6:
	cmp r4, #0
	bge _02252FBC
	mov r4, #0
_02252FBC:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x56
	bne _02252FDA
	sub r0, r7, #6
	lsl r0, r0, #1
	add r7, r0, #6
	cmp r7, #0xc
	ble _02252FD4
	mov r7, #0xc
_02252FD4:
	cmp r7, #0
	bge _02252FDA
	mov r7, #0
_02252FDA:
	ldr r0, [sp, #0x18]
	lsl r1, r4, #1
	add r2, r5, r0
	ldr r0, _022531CC ; =0x00002D46
	ldrh r2, [r2, r0]
	ldr r0, _022531D0 ; =0x0226EBE0
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _022531D4 ; =0x0226EBE1
	ldrb r1, [r2, r1]
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	lsl r1, r7, #1
	add r2, r5, r0
	ldr r0, _022531CC ; =0x00002D46
	ldrh r2, [r2, r0]
	ldr r0, _022531D0 ; =0x0226EBE0
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _022531D4 ; =0x0226EBE1
	ldrb r1, [r2, r1]
	bl _s32_div_f
	add r4, r0, #0
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02253082
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02253082
	ldr r0, [sp, #0x2c]
	cmp r0, #0x21
	bne _02253048
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #3
	tst r0, r1
	bne _0225305A
_02253048:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x22
	bne _0225305C
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _0225305C
_0225305A:
	lsl r6, r6, #1
_0225305C:
	ldr r0, [sp, #0x28]
	cmp r0, #0x21
	bne _0225306E
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #3
	tst r0, r1
	bne _02253080
_0225306E:
	ldr r0, [sp, #0x28]
	cmp r0, #0x22
	bne _02253082
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _02253082
_02253080:
	lsl r4, r4, #1
_02253082:
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r7, _022531D8 ; =0x0226EBA8
	add r0, r5, r0
	str r0, [sp, #0x1c]
_0225308E:
	ldr r2, [sp, #0x1c]
	ldr r1, _022531DC ; =0x00002DB8
	add r0, r5, #0
	ldrh r1, [r2, r1]
	mov r2, #1
	bl ov16_0225B0FC
	ldrb r1, [r7]
	cmp r1, r0
	bne _022530A6
	lsr r6, r6, #1
	b _022530B2
_022530A6:
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #8
	blo _0225308E
_022530B2:
	ldr r0, [sp, #0x58]
	cmp r0, #0x73
	bne _022530C4
	mov r0, #0xf
	mul r0, r6
	mov r1, #0xa
	bl _u32_div_f
	add r6, r0, #0
_022530C4:
	ldr r0, [sp, #0x58]
	cmp r0, #0x66
	bne _022530DA
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	cmp r0, #0x84
	bne _022530DA
	lsl r6, r6, #1
_022530DA:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x5f
	bne _022530FC
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _022531E0 ; =0x00002DAC
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _022530FC
	mov r0, #0xf
	mul r0, r6
	mov r1, #0xa
	bl _u32_div_f
	add r6, r0, #0
	b _0225310C
_022530FC:
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _022531E0 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _0225310C
	lsr r6, r6, #2
_0225310C:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x70
	bne _02253128
	ldr r1, [sp, #0x18]
	mov r0, #0x15
	add r2, r5, r1
	ldr r1, _022531E4 ; =0x00002DD8
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, #5
	bge _02253128
	lsr r6, r6, #1
_02253128:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x54
	bne _02253146
	ldr r0, [sp, #0x18]
	add r2, r5, r0
	ldr r0, _022531E8 ; =0x00002DCC
	ldr r1, [r2, r0]
	lsl r1, r1, #9
	lsr r1, r1, #0x1f
	beq _02253146
	sub r0, #0x14
	ldrh r0, [r2, r0]
	cmp r0, #0
	bne _02253146
	lsl r6, r6, #1
_02253146:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ov16_0223E208
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r1
	beq _02253162
	lsl r6, r6, #1
_02253162:
	ldr r0, [sp, #0x58]
	cmp r0, #0x34
	bne _022531A0
	ldr r1, [sp, #0x54]
	mov r0, #0x64
	bl _s32_div_f
	add r1, r0, #0
	ldr r0, [sp, #8]
	lsl r0, r0, #1
	add r2, r5, r0
	ldr r0, _022531EC ; =0x0000310C
	ldrh r0, [r2, r0]
	bl _s32_div_f
	cmp r1, #0
	bne _022531A0
	mov r0, #1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _022531A0
	ldr r0, _022531E8 ; =0x00002DCC
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x18]
	str r2, [r0, r1]
_022531A0:
	ldr r0, [sp, #0x58]
	cmp r0, #0x2d
	bne _02253224
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _022531BA
	ldr r0, [sp, #0x54]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
_022531BA:
	ldr r0, [sp, #8]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022531F0 ; =0x00002D90
	b _022531F4
	; .align 2, 0
_022531C4: .word 0x00002D8C
_022531C8: .word 0x00002D5B
_022531CC: .word 0x00002D46
_022531D0: .word 0x0226EBE0
_022531D4: .word 0x0226EBE1
_022531D8: .word 0x0226EBA8
_022531DC: .word 0x00002DB8
_022531E0: .word 0x00002DAC
_022531E4: .word 0x00002DD8
_022531E8: .word 0x00002DCC
_022531EC: .word 0x0000310C
_022531F0: .word 0x00002D90
_022531F4:
	add r1, r5, r1
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x54]
	bl _u32_div_f
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x18]
	ldr r1, [r2, r1]
	cmp r1, r0
	bhi _02253224
	mov r0, #1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _02253224
	ldr r0, _022534EC ; =0x00002DCC
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	ldr r2, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x18]
	str r2, [r0, r1]
_02253224:
	ldr r0, [sp, #0x58]
	cmp r0, #0x6b
	bne _0225322E
	mov r0, #1
	str r0, [sp, #0x38]
_0225322E:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r7, _022534F0 ; =0x0226EBA8
	add r0, r5, r0
	str r0, [sp, #0x20]
_0225323A:
	ldr r2, [sp, #0x20]
	ldr r1, _022534F4 ; =0x00002DB8
	add r0, r5, #0
	ldrh r1, [r2, r1]
	mov r2, #1
	bl ov16_0225B0FC
	ldrb r1, [r7]
	cmp r1, r0
	bne _02253252
	lsr r4, r4, #1
	b _0225325E
_02253252:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #8
	blo _0225323A
_0225325E:
	ldr r0, [sp, #0x50]
	cmp r0, #0x73
	bne _02253270
	mov r0, #0xf
	mul r0, r4
	mov r1, #0xa
	bl _u32_div_f
	add r4, r0, #0
_02253270:
	ldr r0, [sp, #0x50]
	cmp r0, #0x66
	bne _02253286
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	cmp r0, #0x84
	bne _02253286
	lsl r4, r4, #1
_02253286:
	ldr r0, [sp, #0x28]
	cmp r0, #0x5f
	bne _022532A8
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, _022534F8 ; =0x00002DAC
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _022532A8
	mov r0, #0xf
	mul r0, r4
	mov r1, #0xa
	bl _u32_div_f
	add r4, r0, #0
	b _022532B8
_022532A8:
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, _022534F8 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _022532B8
	lsr r4, r4, #2
_022532B8:
	ldr r0, [sp, #0x28]
	cmp r0, #0x70
	bne _022532D4
	ldr r1, [sp, #0x14]
	mov r0, #0x15
	add r2, r5, r1
	ldr r1, _022534FC ; =0x00002DD8
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, #5
	bge _022532D4
	lsr r4, r4, #1
_022532D4:
	ldr r0, [sp, #0x28]
	cmp r0, #0x54
	bne _022532F2
	ldr r0, [sp, #0x14]
	add r2, r5, r0
	ldr r0, _022534EC ; =0x00002DCC
	ldr r1, [r2, r0]
	lsl r1, r1, #9
	lsr r1, r1, #0x1f
	beq _022532F2
	sub r0, #0x14
	ldrh r0, [r2, r0]
	cmp r0, #0
	bne _022532F2
	lsl r4, r4, #1
_022532F2:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	bl ov16_0223E208
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r1
	beq _0225330E
	lsl r4, r4, #1
_0225330E:
	ldr r0, [sp, #0x50]
	cmp r0, #0x34
	bne _0225334C
	ldr r1, [sp, #0x4c]
	mov r0, #0x64
	bl _s32_div_f
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	lsl r0, r0, #1
	add r2, r5, r0
	ldr r0, _02253500 ; =0x0000310C
	ldrh r0, [r2, r0]
	bl _s32_div_f
	cmp r1, #0
	bne _0225334C
	mov r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _0225334C
	ldr r0, _022534EC ; =0x00002DCC
	ldr r1, [sp, #0x14]
	add r0, r5, r0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x14]
	str r2, [r0, r1]
_0225334C:
	ldr r0, [sp, #0x50]
	cmp r0, #0x2d
	bne _022533A0
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _02253366
	ldr r0, [sp, #0x4c]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
_02253366:
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	add r7, r0, #0
	mul r7, r1
	ldr r0, _02253504 ; =0x00002D90
	add r1, r5, r7
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x4c]
	bl _u32_div_f
	ldr r1, _02253508 ; =0x00002D8C
	add r2, r5, r7
	ldr r2, [r2, r1]
	cmp r2, r0
	bhi _022533A0
	mov r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _022533A0
	add r1, #0x40
	add r0, r5, r1
	ldr r1, [sp, #0x14]
	ldr r2, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x14]
	str r2, [r0, r1]
_022533A0:
	ldr r0, [sp, #0x50]
	cmp r0, #0x6b
	bne _022533AA
	mov r0, #1
	str r0, [sp, #0x34]
_022533AA:
	ldr r0, [sp, #8]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0225350C ; =0x000021F0
	str r6, [r1, r0]
	ldr r1, [sp, #0xc]
	lsl r1, r1, #2
	add r1, r5, r1
	str r4, [r1, r0]
	ldr r1, [sp, #0x80]
	cmp r1, #0
	bne _02253462
	ldr r1, [sp, #0xc]
	ldr r3, _02253510 ; =0x000030BC
	lsl r1, r1, #4
	add r2, r5, r1
	add r1, r0, #0
	sub r1, #0x3c
	ldr r1, [r2, r1]
	sub r0, #0x3c
	str r1, [sp, #0x30]
	ldr r1, [sp, #8]
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r2, [r1, r3]
	ldr r1, [sp, #0xc]
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r7, [r1, r3]
	ldr r1, [sp, #8]
	lsl r1, r1, #4
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _0225341A
	ldr r0, [sp, #8]
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02253408
	mov r0, #0xa5
	str r0, [sp, #0x60]
	b _0225341A
_02253408:
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r2, #6
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x60]
_0225341A:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0225344A
	ldr r0, [sp, #0xc]
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02253438
	mov r0, #0xa5
	str r0, [sp, #0x5c]
	b _0225344A
_02253438:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r2, r7, #6
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x5c]
_0225344A:
	ldr r0, [sp, #0x60]
	mov r1, #0xfa
	lsl r0, r0, #4
	add r0, r5, r0
	lsl r1, r1, #2
	ldrsb r0, [r0, r1]
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x5c]
	lsl r0, r0, #4
	add r0, r5, r0
	ldrsb r0, [r0, r1]
	str r0, [sp, #0x44]
_02253462:
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x44]
	cmp r1, r0
	beq _0225346C
	b _022535D2
_0225346C:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _02253498
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02253498
	cmp r6, r4
	bhs _02253482
	mov r0, #1
	str r0, [sp, #0x64]
	b _022535DA
_02253482:
	cmp r6, r4
	bne _022534D6
	ldr r0, [sp, #4]
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _022534D6
	mov r0, #2
	str r0, [sp, #0x64]
	b _022535DA
_02253498:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _022534AA
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _022534AA
	mov r0, #1
	str r0, [sp, #0x64]
	b _022535DA
_022534AA:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _022534BC
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _022534BC
	mov r0, #0
	str r0, [sp, #0x64]
	b _022535DA
_022534BC:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _02253514
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _02253514
	cmp r6, r4
	bls _022534D2
	mov r0, #1
	str r0, [sp, #0x64]
	b _022535DA
_022534D2:
	cmp r6, r4
	beq _022534D8
_022534D6:
	b _022535DA
_022534D8:
	ldr r0, [sp, #4]
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _022535DA
	mov r0, #2
	str r0, [sp, #0x64]
	b _022535DA
	nop
_022534EC: .word 0x00002DCC
_022534F0: .word 0x0226EBA8
_022534F4: .word 0x00002DB8
_022534F8: .word 0x00002DAC
_022534FC: .word 0x00002DD8
_02253500: .word 0x0000310C
_02253504: .word 0x00002D90
_02253508: .word 0x00002D8C
_0225350C: .word 0x000021F0
_02253510: .word 0x000030BC
_02253514:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _02253526
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _02253526
	mov r0, #1
	str r0, [sp, #0x64]
	b _022535DA
_02253526:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _02253538
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _02253538
	mov r0, #0
	str r0, [sp, #0x64]
	b _022535DA
_02253538:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x64
	bne _02253564
	ldr r0, [sp, #0x28]
	cmp r0, #0x64
	bne _02253564
	cmp r6, r4
	bls _0225354E
	mov r0, #1
	str r0, [sp, #0x64]
	b _022535DA
_0225354E:
	cmp r6, r4
	bne _022535DA
	ldr r0, [sp, #4]
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _022535DA
	mov r0, #2
	str r0, [sp, #0x64]
	b _022535DA
_02253564:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x64
	bne _02253576
	ldr r0, [sp, #0x28]
	cmp r0, #0x64
	beq _02253576
	mov r0, #1
	str r0, [sp, #0x64]
	b _022535DA
_02253576:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x64
	beq _02253588
	ldr r0, [sp, #0x28]
	cmp r0, #0x64
	bne _02253588
	mov r0, #0
	str r0, [sp, #0x64]
	b _022535DA
_02253588:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0x10
	tst r0, r1
	beq _022535B4
	cmp r6, r4
	bls _0225359E
	mov r0, #1
	str r0, [sp, #0x64]
_0225359E:
	cmp r6, r4
	bne _022535DA
	ldr r0, [sp, #4]
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _022535DA
	mov r0, #2
	str r0, [sp, #0x64]
	b _022535DA
_022535B4:
	cmp r6, r4
	bhs _022535BC
	mov r0, #1
	str r0, [sp, #0x64]
_022535BC:
	cmp r6, r4
	bne _022535DA
	ldr r0, [sp, #4]
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _022535DA
	mov r0, #2
	str r0, [sp, #0x64]
	b _022535DA
_022535D2:
	cmp r1, r0
	bge _022535DA
	mov r0, #1
	str r0, [sp, #0x64]
_022535DA:
	ldr r0, [sp, #0x64]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_02252EC8

	thumb_func_start ov16_022535E0
ov16_022535E0: ; 0x022535E0
	asr r1, r1, #1
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	add r0, r0, r1
	mov r2, #0
	add r0, #0xa4
	str r2, [r0, #0]
	bx lr
	thumb_func_end ov16_022535E0

	thumb_func_start ov16_022535F0
ov16_022535F0: ; 0x022535F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	add r5, r1, #0
	mov r4, #0
	bl ov16_0223DF0C
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	str r0, [sp, #4]
	ldr r0, [sp]
	asr r0, r0, #1
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1d
	add r6, r5, r0
	add r6, #0xa4
_02253616:
	add r0, r4, #0
	bl sub_020787CC
	ldr r1, _02253660 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _0225364C
	ldr r0, [sp]
	bl sub_020787CC
	ldr r1, _02253660 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _0225364C
	ldr r1, [sp, #4]
	ldr r0, _02253664 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225364C
	ldr r0, _02253668 ; =0x0000219C
	add r1, r5, r4
	ldrb r0, [r1, r0]
	bl sub_020787CC
	ldr r1, [r6, #0]
	orr r0, r1
	str r0, [r6, #0]
_0225364C:
	add r4, r4, #2
	cmp r7, #0x4a
	beq _0225365A
	cmp r7, #0x4b
	beq _0225365A
	cmp r4, #2
	ble _02253616
_0225365A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253660: .word 0x00003108
_02253664: .word 0x00002D8C
_02253668: .word 0x0000219C
	thumb_func_end ov16_022535F0

	thumb_func_start ov16_0225366C
ov16_0225366C: ; 0x0225366C
	push {r4, r5, r6, lr}
	ldr r0, _022536F8 ; =0x00002170
	add r5, r1, #0
	add r4, r2, #0
	ldr r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x1c
	mov r6, #0
	tst r0, r2
	beq _0225369E
	add r0, r5, #0
	mov r1, #1
	bl ov16_0225B5D0
	str r0, [r4, #0]
	ldr r0, _022536F8 ; =0x00002170
	add r1, r6, #0
	str r1, [r5, r0]
	sub r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, _022536FC ; =0x801FDA49
	tst r0, r1
	bne _022536F2
	mov r6, #1
	b _022536F2
_0225369E:
	cmp r2, #0
	beq _022536F2
	add r0, r5, #0
	mov r1, #1
	bl ov16_0225B5D0
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02253700 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022536EC
	ldr r1, _02253704 ; =0x0000216C
	ldr r2, _022536FC ; =0x801FDA49
	ldr r0, [r5, r1]
	tst r2, r0
	beq _022536EA
	add r1, r1, #4
	mov r2, #2
	ldr r1, [r5, r1]
	lsl r2, r2, #0x16
	tst r2, r1
	beq _022536DC
	ldr r2, _02253708 ; =0x00040008
	tst r2, r0
	bne _022536EA
_022536DC:
	mov r2, #1
	lsl r2, r2, #0x1c
	tst r1, r2
	beq _022536EC
	ldr r1, _0225370C ; =0x00010001
	tst r0, r1
	beq _022536EC
_022536EA:
	mov r6, #1
_022536EC:
	ldr r0, _022536F8 ; =0x00002170
	mov r1, #0
	str r1, [r5, r0]
_022536F2:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_022536F8: .word 0x00002170
_022536FC: .word 0x801FDA49
_02253700: .word 0x00002D8C
_02253704: .word 0x0000216C
_02253708: .word 0x00040008
_0225370C: .word 0x00010001
	thumb_func_end ov16_0225366C

	thumb_func_start ov16_02253710
ov16_02253710: ; 0x02253710
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	ldr r0, _02253930 ; =0x00002174
	add r4, r2, #0
	ldr r2, [r5, r0]
	mov r1, #2
	lsl r1, r1, #0x1c
	add r3, r2, #0
	mov r6, #0
	tst r3, r1
	beq _02253746
	add r0, r5, #0
	mov r1, #2
	bl ov16_0225B5D0
	str r0, [r4, #0]
	ldr r0, _02253930 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	sub r0, #8
	ldr r1, [r5, r0]
	ldr r0, _02253934 ; =0x801FDA49
	tst r0, r1
	bne _022537E6
	mov r6, #1
	b _0225392A
_02253746:
	lsr r3, r1, #5
	tst r3, r2
	beq _0225377A
	add r0, r5, #0
	mov r1, #2
	bl ov16_0225B5D0
	str r0, [r4, #0]
	ldr r0, _02253930 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02259AC0
	cmp r0, #0
	bne _022537E6
	ldr r0, _02253938 ; =0x0000216C
	ldr r1, [r5, r0]
	ldr r0, _02253934 ; =0x801FDA49
	tst r0, r1
	bne _022537E6
	mov r6, #1
	b _0225392A
_0225377A:
	lsr r3, r1, #4
	tst r3, r2
	beq _022537BC
	add r0, r5, #0
	mov r1, #2
	bl ov16_0225B5D0
	str r0, [r4, #0]
	ldr r0, _02253930 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _0225393C ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022537E6
	add r0, r5, #0
	bl ov16_02259AC0
	cmp r0, #0
	bne _022537E6
	ldr r0, _02253938 ; =0x0000216C
	ldr r1, [r5, r0]
	ldr r0, _02253934 ; =0x801FDA49
	tst r0, r1
	bne _022537E6
	mov r6, #1
	b _0225392A
_022537BC:
	lsr r3, r1, #1
	tst r3, r2
	beq _022537EC
	add r0, r5, #0
	mov r1, #2
	bl ov16_0225B5D0
	str r0, [r4, #0]
	ldr r0, _02253930 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0225393C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022537E8
_022537E6:
	b _0225392A
_022537E8:
	mov r6, #1
	b _0225392A
_022537EC:
	lsr r1, r1, #3
	tst r1, r2
	beq _02253878
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x20
	ldr r0, _02253940 ; =0x00003044
	bne _02253810
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02253944 ; =0x000003E5
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r6, r0, #0x10
	b _0225381A
_02253810:
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02253944 ; =0x000003E5
	ldrb r6, [r1, r0]
_0225381A:
	cmp r6, #0
	bne _02253822
	bl GF_AssertFail
_02253822:
	ldr r0, [sp]
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, r6
	bge _0225383E
	ldr r1, _02253948 ; =0x0000213C
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0x16
	orr r0, r2
	str r0, [r5, r1]
_0225383E:
	ldr r2, _02253930 ; =0x00002174
	add r0, r5, #0
	ldr r2, [r5, r2]
	mov r1, #2
	bl ov16_0225B5D0
	str r0, [r4, #0]
	ldr r1, _02253930 ; =0x00002174
	mov r0, #0
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r2, [r0, #0]
	mov r0, #0xc0
	mul r0, r2
	add r2, r5, r0
	ldr r0, _0225393C ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _02253874
	add r0, r1, #0
	sub r0, #0x38
	ldr r2, [r5, r0]
	ldr r0, _0225394C ; =0xFFBFFFFF
	sub r1, #0x38
	and r0, r2
	str r0, [r5, r1]
_02253874:
	mov r6, #1
	b _0225392A
_02253878:
	cmp r2, #0
	beq _022538FC
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x20
	ldr r0, _02253940 ; =0x00003044
	bne _0225389A
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02253944 ; =0x000003E5
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r7, r0, #0x10
	b _022538A4
_0225389A:
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02253944 ; =0x000003E5
	ldrb r7, [r1, r0]
_022538A4:
	cmp r7, #0
	bne _022538AC
	bl GF_AssertFail
_022538AC:
	ldr r0, [sp]
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, r7
	bge _0225392A
	ldr r2, _02253930 ; =0x00002174
	add r0, r5, #0
	ldr r2, [r5, r2]
	mov r1, #2
	bl ov16_0225B5D0
	str r0, [r4, #0]
	ldr r0, _02253930 ; =0x00002174
	mov r1, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _0225393C ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225392A
	add r0, r5, #0
	bl ov16_02259AC0
	cmp r0, #0
	bne _0225392A
	ldr r0, _02253938 ; =0x0000216C
	ldr r1, [r5, r0]
	ldr r0, _02253934 ; =0x801FDA49
	tst r0, r1
	bne _0225392A
	mov r6, #1
	b _0225392A
_022538FC:
	add r0, r0, #4
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _0225392A
	add r0, r5, #0
	mov r1, #3
	bl ov16_0225B5D0
	str r0, [r4, #0]
	ldr r0, _02253950 ; =0x00002178
	add r1, r6, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0225393C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225392A
	mov r6, #1
_0225392A:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253930: .word 0x00002174
_02253934: .word 0x801FDA49
_02253938: .word 0x0000216C
_0225393C: .word 0x00002D8C
_02253940: .word 0x00003044
_02253944: .word 0x000003E5
_02253948: .word 0x0000213C
_0225394C: .word 0xFFBFFFFF
_02253950: .word 0x00002178
	thumb_func_end ov16_02253710

	thumb_func_start ov16_02253954
ov16_02253954: ; 0x02253954
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	mov r0, #0xff
	add r4, r1, #0
	add r5, r2, #0
	str r0, [sp, #0xc]
	cmp r3, #0
	beq _02253970
	lsl r0, r3, #4
	add r1, r4, r0
	ldr r0, _02253C1C ; =0x000003E6
	ldrh r0, [r1, r0]
	b _02253972
_02253970:
	ldr r0, [sp, #0x34]
_02253972:
	cmp r0, #4
	bne _02253A02
	add r0, r6, #0
	bl ov16_0223DF1C
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0223DF14
	bl ov16_02263AE4
	ldr r1, _02253C20 ; =0x0000217E
	mov r2, #0
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	ldr r2, [sp, #8]
	cmp r1, r2
	bge _022539F0
	mov r2, #1
	add r5, r0, #0
	and r5, r2
_0225399E:
	ldr r0, _02253C24 ; =0x000021EC
	add r1, r4, r1
	ldrb r7, [r1, r0]
	mov r0, #0xc0
	mul r0, r7
	add r1, r4, r0
	ldr r0, _02253C28 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022539DE
	add r0, r6, #0
	add r1, r7, #0
	bl ov16_0223DF14
	str r0, [sp]
	cmp r5, #0
	beq _022539CA
	bl ov16_02263AE4
	mov r1, #1
	tst r0, r1
	beq _022539DA
_022539CA:
	cmp r5, #0
	bne _022539DE
	ldr r0, [sp]
	bl ov16_02263AE4
	mov r1, #1
	tst r0, r1
	beq _022539DE
_022539DA:
	str r7, [sp, #0xc]
	b _022539F0
_022539DE:
	ldr r0, _02253C20 ; =0x0000217E
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _02253C20 ; =0x0000217E
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _0225399E
_022539F0:
	ldr r1, _02253C20 ; =0x0000217E
	ldr r0, [sp, #8]
	ldrb r2, [r4, r1]
	cmp r2, r0
	bne _022539FC
	b _02253C8C
_022539FC:
	add r0, r2, #1
	strb r0, [r4, r1]
	b _02253C8C
_02253A02:
	cmp r0, #8
	bne _02253A52
	add r0, r6, #0
	bl ov16_0223DF1C
	add r2, r0, #0
	ldr r0, _02253C20 ; =0x0000217E
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r3, [r4, r0]
	cmp r3, r2
	bge _02253A44
	ldr r7, _02253C28 ; =0x00002D8C
_02253A1C:
	ldr r1, _02253C24 ; =0x000021EC
	add r6, r4, r3
	ldrb r1, [r6, r1]
	mov r6, #0xc0
	mul r6, r1
	add r6, r4, r6
	ldr r6, [r6, r7]
	cmp r6, #0
	beq _02253A36
	cmp r1, r5
	beq _02253A36
	str r1, [sp, #0xc]
	b _02253A44
_02253A36:
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldr r1, _02253C20 ; =0x0000217E
	ldrb r3, [r4, r1]
	cmp r3, r2
	blt _02253A1C
_02253A44:
	cmp r3, r2
	beq _02253B30
	ldr r0, _02253C20 ; =0x0000217E
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02253C8C
_02253A52:
	mov r1, #2
	lsl r1, r1, #8
	cmp r0, r1
	bne _02253AA0
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _02253AA0
	add r0, r6, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02253A9C
	add r0, r6, #0
	bl ov16_0223F4BC
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _02253A9C
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0223E258
	mov r1, #0xc0
	mul r1, r0
	str r0, [sp, #0xc]
	ldr r0, _02253C28 ; =0x00002D8C
	add r1, r4, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02253B30
	str r5, [sp, #0xc]
	b _02253C8C
_02253A9C:
	str r5, [sp, #0xc]
	b _02253C8C
_02253AA0:
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	bne _02253ABC
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _02253ABC
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov16_02257028
	str r0, [sp, #0xc]
	b _02253C8C
_02253ABC:
	cmp r0, #0x80
	bne _02253ACE
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov16_02257028
	str r0, [sp, #0xc]
	b _02253C8C
_02253ACE:
	cmp r0, #0x10
	beq _02253ADE
	cmp r0, #0x20
	beq _02253ADE
	cmp r0, #1
	beq _02253ADE
	cmp r0, #0x40
	bne _02253AE2
_02253ADE:
	str r5, [sp, #0xc]
	b _02253C8C
_02253AE2:
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _02253B06
	add r0, r6, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02253B02
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0223E258
	str r0, [sp, #0xc]
	b _02253C8C
_02253B02:
	str r5, [sp, #0xc]
	b _02253C8C
_02253B06:
	lsl r1, r1, #1
	cmp r0, r1
	bne _02253B3A
	add r0, r6, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02253B36
	lsl r0, r5, #4
	add r1, r4, r0
	ldr r0, _02253C2C ; =0x000021AC
	ldr r0, [r1, r0]
	mov r1, #0xc0
	mul r1, r0
	str r0, [sp, #0xc]
	ldr r0, _02253C28 ; =0x00002D8C
	add r1, r4, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253B32
_02253B30:
	b _02253C8C
_02253B32:
	str r5, [sp, #0xc]
	b _02253C8C
_02253B36:
	str r5, [sp, #0xc]
	b _02253C8C
_02253B3A:
	cmp r0, #2
	beq _02253B44
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _02253C06
_02253B44:
	add r0, r6, #0
	bl ov16_0223DF0C
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0223E208
	add r7, r0, #0
	mov r1, #1
	eor r7, r1
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl ov16_0223E2A4
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	bl ov16_0223E2A4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	mov r1, #2
	tst r0, r1
	beq _02253BEE
	mov r0, #0x71
	lsl r0, r0, #2
	add r1, r4, r0
	lsl r0, r7, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02253BA0
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02253C28 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02253BA0
	str r0, [sp, #0xc]
	b _02253C8C
_02253BA0:
	ldr r0, [sp, #0x14]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r0, r4, r2
	ldr r2, _02253C28 ; =0x00002D8C
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02253BD0
	ldr r3, [sp, #0x18]
	mul r1, r3
	add r1, r4, r1
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _02253BD0
	add r0, r6, #0
	bl ov16_0223F4BC
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	add r0, sp, #0x14
	ldr r0, [r0, r1]
	str r0, [sp, #0xc]
	b _02253C8C
_02253BD0:
	cmp r0, #0
	beq _02253BDA
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
	b _02253C8C
_02253BDA:
	ldr r2, [sp, #0x18]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _02253C28 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253C8C
	str r2, [sp, #0xc]
	b _02253C8C
_02253BEE:
	mov r0, #1
	add r2, r5, #0
	eor r2, r0
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _02253C28 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253C8C
	str r2, [sp, #0xc]
	b _02253C8C
_02253C06:
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0223E208
	mov r1, #1
	eor r0, r1
	str r0, [sp, #4]
	lsl r0, r5, #4
	add r1, r4, r0
	ldr r0, _02253C2C ; =0x000021AC
	b _02253C30
	; .align 2, 0
_02253C1C: .word 0x000003E6
_02253C20: .word 0x0000217E
_02253C24: .word 0x000021EC
_02253C28: .word 0x00002D8C
_02253C2C: .word 0x000021AC
_02253C30:
	ldr r7, [r1, r0]
	add r0, r6, #0
	bl ov16_0223DF1C
	mov r0, #0x71
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02253C60
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02253C94 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02253C60
	str r0, [sp, #0xc]
	b _02253C8C
_02253C60:
	mov r0, #0xc0
	mul r0, r7
	add r1, r4, r0
	ldr r0, _02253C94 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253C72
	str r7, [sp, #0xc]
	b _02253C8C
_02253C72:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov16_02257028
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02253C94 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02253C8C
	str r0, [sp, #0xc]
_02253C8C:
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02253C94: .word 0x00002D8C
	thumb_func_end ov16_02253954

	thumb_func_start ov16_02253C98
ov16_02253C98: ; 0x02253C98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x6c]
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #0xff
	beq _02253CF2
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255A4C
	cmp r0, #0x60
	beq _02253CF2
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255A4C
	cmp r0, #0x68
	beq _02253CF2
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl ov16_0223E208
	add r2, r0, #0
	mov r1, #1
	mov r0, #0x71
	eor r2, r1
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r2, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02253CF4
	lsl r0, r0, #9
	lsr r1, r0, #0x1e
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02253E28 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253CF4
_02253CF2:
	b _02253E24
_02253CF4:
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov16_0225B910
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _02253D10
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _02253E2C ; =0x000003E2
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
_02253D10:
	ldr r0, [sp, #4]
	bl ov16_0223DF1C
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #0xd
	bne _02253DA0
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _02253E30 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02253D2E
	cmp r0, #2
	bne _02253DA0
_02253D2E:
	ldr r0, _02253E34 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02253DA0
	mov r0, #0x1f
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #9
	add r3, r7, #0
	bl ov16_022555A4
	cmp r0, #0
	beq _02253DA0
	ldr r0, [sp, #8]
	mov r6, #0
	cmp r0, #0
	ble _02253D80
_02253D54:
	ldr r0, _02253E38 ; =0x000021EC
	add r1, r5, r6
	ldrb r4, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x1f
	bne _02253D78
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02253E28 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253D78
	cmp r7, r4
	bne _02253D80
_02253D78:
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _02253D54
_02253D80:
	ldr r0, [r5, #0x6c]
	cmp r4, r0
	beq _02253E24
	mov r0, #0xb5
	lsl r0, r0, #2
	add r3, r5, r0
	mov r0, #0x1c
	add r2, r4, #0
	mul r2, r0
	ldr r1, [r3, r2]
	mov r0, #2
	orr r0, r1
	str r0, [r3, r2]
	add sp, #0x10
	str r4, [r5, #0x6c]
	pop {r3, r4, r5, r6, r7, pc}
_02253DA0:
	ldr r0, [sp, #0xc]
	cmp r0, #0xb
	bne _02253E24
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _02253E30 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02253DB6
	cmp r0, #2
	bne _02253E24
_02253DB6:
	ldr r0, _02253E34 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02253E24
	mov r0, #0x72
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #9
	add r3, r7, #0
	bl ov16_022555A4
	cmp r0, #0
	beq _02253E24
	ldr r0, [sp, #8]
	mov r6, #0
	cmp r0, #0
	ble _02253E08
_02253DDC:
	ldr r0, _02253E38 ; =0x000021EC
	add r1, r5, r6
	ldrb r4, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x72
	bne _02253E00
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02253E28 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253E00
	cmp r7, r4
	bne _02253E08
_02253E00:
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _02253DDC
_02253E08:
	ldr r0, [r5, #0x6c]
	cmp r4, r0
	beq _02253E24
	mov r0, #0xb5
	lsl r0, r0, #2
	add r3, r5, r0
	mov r0, #0x1c
	add r2, r4, #0
	mul r2, r0
	ldr r1, [r3, r2]
	mov r0, #4
	orr r0, r1
	str r0, [r3, r2]
	str r4, [r5, #0x6c]
_02253E24:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02253E28: .word 0x00002D8C
_02253E2C: .word 0x000003E2
_02253E30: .word 0x000003E6
_02253E34: .word 0x0000213C
_02253E38: .word 0x000021EC
	thumb_func_end ov16_02253C98

	thumb_func_start ov16_02253E3C
ov16_02253E3C: ; 0x02253E3C
	push {r3, r4, r5, lr}
	ldr r0, _02253EB8 ; =0x0000216C
	add r4, r1, #0
	ldr r1, [r4, r0]
	ldr r0, _02253EBC ; =0x801FDA49
	mov r2, #0
	tst r0, r1
	bne _02253E7A
	mov r0, #0xb5
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r3, [r4, #0x6c]
	mov r0, #0x1c
	mul r0, r3
	ldr r3, [r1, r0]
	lsl r5, r3, #0x1e
	lsr r5, r5, #0x1f
	beq _02253E7A
	mov r2, #2
	bic r3, r2
	str r3, [r1, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb4
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r2, #1
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_02253E7A:
	ldr r0, _02253EB8 ; =0x0000216C
	ldr r1, [r4, r0]
	ldr r0, _02253EBC ; =0x801FDA49
	tst r0, r1
	bne _02253EB2
	mov r0, #0xb5
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r3, [r4, #0x6c]
	mov r0, #0x1c
	mul r0, r3
	ldr r3, [r1, r0]
	lsl r5, r3, #0x1d
	lsr r5, r5, #0x1f
	beq _02253EB2
	mov r2, #4
	bic r3, r2
	str r3, [r1, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb4
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	mov r2, #1
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_02253EB2:
	add r0, r2, #0
	pop {r3, r4, r5, pc}
	nop
_02253EB8: .word 0x0000216C
_02253EBC: .word 0x801FDA49
	thumb_func_end ov16_02253E3C

	thumb_func_start ov16_02253EC0
ov16_02253EC0: ; 0x02253EC0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0xc0
	add r5, r1, #0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02253EEC ; =0x00002DB8
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _02253EE0
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov16_0225B830
_02253EE0:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_022662FC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02253EEC: .word 0x00002DB8
	thumb_func_end ov16_02253EC0

	thumb_func_start ov16_02253EF0
ov16_02253EF0: ; 0x02253EF0
	push {r4, r5}
	ldr r0, _02253F18 ; =0x00002DB0
	add r4, r2, #0
	add r5, r1, r0
	mov r0, #0xc0
	mul r4, r0
	mov r0, #1
	ldr r3, [r5, r4]
	lsl r0, r0, #0xc
	orr r0, r3
	str r0, [r5, r4]
	ldr r0, _02253F1C ; =0x00003044
	lsl r2, r2, #2
	ldr r3, [r1, r0]
	add r1, r1, r2
	add r0, #8
	str r3, [r1, r0]
	pop {r4, r5}
	bx lr
	nop
_02253F18: .word 0x00002DB0
_02253F1C: .word 0x00003044
	thumb_func_end ov16_02253EF0

	thumb_func_start ov16_02253F20
ov16_02253F20: ; 0x02253F20
	push {r4, r5}
	ldr r4, _02253F64 ; =0x00002DB0
	add r3, r2, #0
	mov r0, #0xc0
	mul r3, r0
	add r0, r1, r4
	ldr r5, [r0, r3]
	ldr r2, _02253F68 ; =0xFFFFEFFF
	and r2, r5
	str r2, [r0, r3]
	ldr r5, [r0, r3]
	ldr r2, _02253F6C ; =0xFFFFFCFF
	and r2, r5
	str r2, [r0, r3]
	add r0, r4, #0
	add r0, #0x10
	add r5, r1, r0
	ldr r2, [r5, r3]
	ldr r0, _02253F70 ; =0xDFFBFF3F
	add r4, #0x18
	and r0, r2
	str r0, [r5, r3]
	add r2, r1, r4
	ldr r1, [r2, r3]
	ldr r0, _02253F74 ; =0xFFFC7FFF
	and r0, r1
	str r0, [r2, r3]
	ldr r1, [r2, r3]
	ldr r0, _02253F78 ; =0xFFE3FFFF
	and r0, r1
	str r0, [r2, r3]
	pop {r4, r5}
	bx lr
	nop
_02253F64: .word 0x00002DB0
_02253F68: .word 0xFFFFEFFF
_02253F6C: .word 0xFFFFFCFF
_02253F70: .word 0xDFFBFF3F
_02253F74: .word 0xFFFC7FFF
_02253F78: .word 0xFFE3FFFF
	thumb_func_end ov16_02253F20

	thumb_func_start ov16_02253F7C
ov16_02253F7C: ; 0x02253F7C
	mov r2, #0xc0
	mul r2, r1
	add r1, r0, r2
	ldr r0, _02253FC8 ; =0x00002DAC
	ldr r0, [r1, r0]
	mov r1, #7
	tst r1, r0
	beq _02253F90
	mov r0, #1
	bx lr
_02253F90:
	mov r1, #8
	tst r1, r0
	beq _02253F9A
	mov r0, #2
	bx lr
_02253F9A:
	mov r1, #0x10
	tst r1, r0
	beq _02253FA4
	mov r0, #3
	bx lr
_02253FA4:
	mov r1, #0x20
	tst r1, r0
	beq _02253FAE
	mov r0, #4
	bx lr
_02253FAE:
	mov r1, #0x40
	tst r1, r0
	beq _02253FB8
	mov r0, #5
	bx lr
_02253FB8:
	mov r1, #0x80
	tst r0, r1
	beq _02253FC2
	mov r0, #2
	bx lr
_02253FC2:
	mov r0, #0
	bx lr
	nop
_02253FC8: .word 0x00002DAC
	thumb_func_end ov16_02253F7C

	thumb_func_start ov16_02253FCC
ov16_02253FCC: ; 0x02253FCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r7, r1, #0
	bl ov16_0223DF0C
	mov r1, #0x84
	tst r1, r0
	beq _02253FE4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02253FE4:
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	bne _02253FF2
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02253FF2:
	mov r2, #2
	tst r0, r2
	beq _02253FFE
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02253FFE:
	ldr r0, [sp]
	bl ov16_0223E0D8
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
_0225400A:
	ldr r0, [sp, #4]
	cmp r0, #4
	bls _02254012
	b _022541A8
_02254012:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225401E: ; jump table
	.short _02254028 - _0225401E - 2 ; case 0
	.short _0225406C - _0225401E - 2 ; case 1
	.short _022540B4 - _0225401E - 2 ; case 2
	.short _02254128 - _0225401E - 2 ; case 3
	.short _022541A8 - _0225401E - 2 ; case 4
_02254028:
	ldr r0, _022541B8 ; =0x00002E7C
	ldrb r0, [r7, r0]
	cmp r0, #1
	bne _02254064
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r7, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02254064
	ldr r0, [sp, #8]
	mov r1, #0xd
	mov r2, #5
	bl sub_02079280
	cmp r0, #0
	beq _02254064
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r7, r1]
	mov r0, #0x20
	orr r0, r2
	str r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0xd
	lsl r0, r0, #4
	str r1, [r7, r0]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02254064:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b _022541A8
_0225406C:
	ldr r1, _022541BC ; =0x00002E7D
	mov r0, #2
	ldrb r2, [r7, r1]
	tst r0, r2
	bne _022540AC
	add r0, r1, #0
	sub r0, #0x31
	sub r1, #0x2d
	ldr r2, [r7, r0]
	ldr r0, [r7, r1]
	lsr r0, r0, #1
	cmp r2, r0
	bhi _022540AC
	ldr r0, [sp, #8]
	mov r1, #0xe
	mov r2, #5
	bl sub_02079280
	cmp r0, #0
	beq _022540AC
	ldr r1, _022541BC ; =0x00002E7D
	mov r0, #2
	ldrb r2, [r7, r1]
	add sp, #0xc
	orr r0, r2
	strb r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0xe
	lsl r0, r0, #4
	str r1, [r7, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022540AC:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b _022541A8
_022540B4:
	ldr r0, _022541BC ; =0x00002E7D
	ldrb r1, [r7, r0]
	mov r0, #3
	tst r0, r1
	bne _02254120
	ldr r0, [sp]
	mov r1, #1
	bl ov16_0223DF20
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _022540F6
_022540D4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _022540EA
	add r6, r6, #1
_022540EA:
	add r0, r5, #0
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _022540D4
_022540F6:
	cmp r6, #1
	bne _02254120
	ldr r0, [sp, #8]
	mov r1, #0xf
	mov r2, #5
	bl sub_02079280
	cmp r0, #0
	beq _02254120
	ldr r1, _022541BC ; =0x00002E7D
	mov r0, #3
	ldrb r2, [r7, r1]
	add sp, #0xc
	orr r0, r2
	strb r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0xf
	lsl r0, r0, #4
	str r1, [r7, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02254120:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b _022541A8
_02254128:
	ldr r0, _022541BC ; =0x00002E7D
	ldrb r1, [r7, r0]
	mov r0, #4
	tst r0, r1
	bne _022541A2
	ldr r0, [sp]
	mov r1, #1
	bl ov16_0223DF20
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0225416A
_02254148:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0225415E
	add r6, r6, #1
_0225415E:
	add r0, r5, #0
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _02254148
_0225416A:
	cmp r6, #1
	bne _022541A2
	ldr r0, _022541C0 ; =0x00002E4C
	ldr r1, [r7, r0]
	add r0, r0, #4
	ldr r0, [r7, r0]
	lsr r0, r0, #1
	cmp r1, r0
	bhi _022541A2
	ldr r0, [sp, #8]
	mov r1, #0x10
	mov r2, #5
	bl sub_02079280
	cmp r0, #0
	beq _022541A2
	ldr r1, _022541BC ; =0x00002E7D
	mov r0, #4
	ldrb r2, [r7, r1]
	add sp, #0xc
	orr r0, r2
	strb r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0x10
	lsl r0, r0, #4
	str r1, [r7, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022541A2:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_022541A8:
	ldr r0, [sp, #4]
	cmp r0, #4
	beq _022541B0
	b _0225400A
_022541B0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022541B8: .word 0x00002E7C
_022541BC: .word 0x00002E7D
_022541C0: .word 0x00002E4C
	thumb_func_end ov16_02253FCC

	thumb_func_start ov16_022541C4
ov16_022541C4: ; 0x022541C4
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _022542A4 ; =0x00002144
	add r5, r0, #0
	mov r4, #0
	add r0, r1, #0
	str r4, [r5, r1]
	mov r2, #1
	add r0, #0xc
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x10
	str r4, [r5, r0]
	add r0, r1, #0
	mov r2, #0xa
	add r0, #0x14
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x1c
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x20
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x28
	str r4, [r5, r0]
	mov r0, #0xff
	add r2, r1, #0
	str r0, [r5, #0x74]
	add r2, #0x2c
	str r4, [r5, r2]
	add r2, r1, #0
	add r2, #0x30
	str r4, [r5, r2]
	add r2, r1, #0
	add r2, #0x34
	str r4, [r5, r2]
	add r2, r5, #0
	add r2, #0x88
	str r4, [r2, #0]
	add r2, r5, #0
	add r2, #0x8c
	str r4, [r2, #0]
	add r2, r5, #0
	add r2, #0x94
	str r0, [r2, #0]
	add r0, r1, #0
	add r0, #0x38
	strb r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x39
	strb r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x3a
	strb r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x3c
	str r4, [r5, r0]
	add r0, r1, #0
	str r4, [r5, #0x38]
	add r0, #0x40
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x44
	str r4, [r5, r0]
	str r4, [r5, #0x10]
	str r4, [r5, #0x18]
	str r4, [r5, #0x20]
	str r4, [r5, #0x28]
	str r4, [r5, #0x30]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x48]
	str r4, [r5, #0x4c]
	str r4, [r5, #0x50]
	add r0, r1, #0
	str r4, [r5, #0x54]
	sub r0, #8
	ldr r2, [r5, r0]
	ldr r0, _022542A8 ; =0xFF800000
	mov r7, #6
	and r2, r0
	add r0, r1, #0
	sub r0, #8
	str r2, [r5, r0]
	sub r0, r1, #4
	ldr r2, [r5, r0]
	ldr r0, _022542AC ; =0xFFFFFEA1
	and r2, r0
	sub r0, r1, #4
	str r2, [r5, r0]
	ldr r0, _022542B0 ; =0x00003120
	strb r4, [r5, r0]
	mov r0, #0xb5
	lsl r0, r0, #2
	add r6, r5, r0
_02254288:
	mov r0, #0
	add r1, r6, #0
	mov r2, #0x1c
	bl MIi_CpuClearFast
	add r1, r5, r4
	ldr r0, _022542B4 ; =0x000021A4
	add r4, r4, #1
	add r6, #0x1c
	strb r7, [r1, r0]
	cmp r4, #4
	blt _02254288
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022542A4: .word 0x00002144
_022542A8: .word 0xFF800000
_022542AC: .word 0xFFFFFEA1
_022542B0: .word 0x00003120
_022542B4: .word 0x000021A4
	thumb_func_end ov16_022541C4

	thumb_func_start ov16_022542B8
ov16_022542B8: ; 0x022542B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	mov r4, #0
	add r5, r6, #0
_022542C2:
	ldr r0, _02254324 ; =0x0000306C
	mov r1, #0xff
	strh r1, [r5, r0]
	ldr r0, _02254328 ; =0x000021A0
	add r2, r6, r4
	mov r1, #6
	strb r1, [r2, r0]
	add r0, r7, #0
	bl ov16_0223F4BC
	ldr r1, _0225432C ; =0x0000310C
	add r4, r4, #1
	strh r0, [r5, r1]
	add r5, r5, #2
	cmp r4, #4
	blt _022542C2
	ldr r0, _02254330 ; =0x00002168
	mov r1, #1
	str r1, [r6, r0]
	mov r0, #0x5d
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r0, r7, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _02254316
	add r0, r1, #0
	bl sub_020787CC
	ldr r1, _02254334 ; =0x00003108
	ldrb r2, [r6, r1]
	orr r0, r2
	strb r0, [r6, r1]
	mov r0, #3
	bl sub_020787CC
	ldr r1, _02254334 ; =0x00003108
	ldrb r2, [r6, r1]
	orr r0, r2
	strb r0, [r6, r1]
_02254316:
	ldr r0, _02254338 ; =0x0000311C
	mov r1, #6
	strb r1, [r6, r0]
	add r0, r0, #1
	strb r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02254324: .word 0x0000306C
_02254328: .word 0x000021A0
_0225432C: .word 0x0000310C
_02254330: .word 0x00002168
_02254334: .word 0x00003108
_02254338: .word 0x0000311C
	thumb_func_end ov16_022542B8

	thumb_func_start ov16_0225433C
ov16_0225433C: ; 0x0225433C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r1, [sp, #4]
	str r0, [sp]
	ldr r1, _02254680 ; =0x00002DC8
	ldr r0, [sp, #4]
	add r4, r2, #0
	add r1, r0, r1
	mov r0, #0xc0
	mul r0, r4
	add r5, r1, r0
	str r5, [sp, #0x14]
	add r3, sp, #0x20
	mov r2, #7
_02254358:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02254358
	ldr r0, [sp]
	bl ov16_0223DF1C
	add r6, r0, #0
	ldr r0, [sp]
	bl ov16_0223DF0C
	ldr r1, [sp, #4]
	lsl r2, r4, #4
	add r1, r1, r2
	ldr r2, _02254684 ; =0x000021A8
	mov r0, #0x27
	str r0, [r1, r2]
	ldr r1, [sp, #4]
	sub r2, #0x6c
	ldr r1, [r1, r2]
	add r0, #0xd9
	tst r0, r1
	bne _02254416
	mov r5, #0
	cmp r6, #0
	ble _022543F2
	ldr r1, [sp, #4]
	ldr r2, _02254688 ; =0x00002DCC
	add r0, r1, #0
	add r2, r0, r2
	mov r0, #0x18
	mov ip, r0
	mov r7, #3
_0225439A:
	ldr r0, _0225468C ; =0x00002DB0
	ldr r3, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x1a
	tst r0, r3
	beq _022543BC
	ldr r0, [r2, #0]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	cmp r4, r0
	bne _022543BC
	ldr r0, _0225468C ; =0x00002DB0
	ldr r3, [r1, r0]
	ldr r0, _02254690 ; =0xFBFFFFFF
	and r3, r0
	ldr r0, _0225468C ; =0x00002DB0
	str r3, [r1, r0]
_022543BC:
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r3, [r1, r0]
	mov r0, #0x18
	tst r0, r3
	beq _022543E8
	ldr r0, [r2, #0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r4, r0
	bne _022543E8
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r3, ip
	bic r0, r3
	mov r3, #0xb7
	lsl r3, r3, #6
	str r0, [r1, r3]
	ldr r0, [r2, #0]
	bic r0, r7
	str r0, [r2, #0]
_022543E8:
	add r5, r5, #1
	add r1, #0xc0
	add r2, #0xc0
	cmp r5, r6
	blt _0225439A
_022543F2:
	mov r0, #0xc0
	mul r0, r4
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	ldr r1, [sp, #0xc]
	mov r0, #0
	add r1, r2, r1
	ldr r2, _0225468C ; =0x00002DB0
	str r0, [r1, r2]
	ldr r1, [sp, #4]
	add r2, #0x10
	add r2, r1, r2
	ldr r1, [sp, #0xc]
	add r1, r2, r1
	str r1, [sp, #0x10]
	ldr r1, [sp, #0xc]
	str r0, [r2, r1]
	b _0225448E
_02254416:
	mov r0, #0xc0
	mul r0, r4
	str r0, [sp, #0xc]
	ldr r1, _0225468C ; =0x00002DB0
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r0, r1
	ldr r3, [r0, r2]
	ldr r2, _02254694 ; =0x15100007
	and r3, r2
	ldr r2, [sp, #0xc]
	str r3, [r0, r2]
	add r2, r1, #0
	ldr r0, [sp, #4]
	add r2, #0x10
	add r0, r0, r2
	ldr r2, [sp, #0xc]
	add r2, r0, r2
	str r2, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [r0, r2]
	ldr r2, _02254698 ; =0x0FA3843F
	and r3, r2
	ldr r2, [sp, #0xc]
	str r3, [r0, r2]
	mov r2, #0
	cmp r6, #0
	ble _0225448E
	ldr r0, [sp, #4]
	add r1, #0x1c
	add r3, r0, #0
	add r1, r3, r1
	mov r7, #0x18
_02254458:
	mov r3, #0xb7
	lsl r3, r3, #6
	ldr r5, [r0, r3]
	mov r3, #0x18
	tst r3, r5
	beq _02254484
	ldr r3, [r1, #0]
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x1e
	cmp r4, r3
	bne _02254484
	mov r3, #0xb7
	lsl r3, r3, #6
	ldr r5, [r0, r3]
	bic r5, r7
	str r5, [r0, r3]
	ldr r5, [r0, r3]
	mov r3, #0x10
	orr r5, r3
	mov r3, #0xb7
	lsl r3, r3, #6
	str r5, [r0, r3]
_02254484:
	add r2, r2, #1
	add r0, #0xc0
	add r1, #0xc0
	cmp r2, r6
	blt _02254458
_0225448E:
	mov r0, #0
	str r0, [sp, #8]
	cmp r6, #0
	ble _022544F6
	ldr r5, [sp, #4]
	ldr r1, _02254688 ; =0x00002DCC
	add r0, r5, #0
	add r7, r0, r1
_0225449E:
	add r0, r4, #0
	bl sub_020787CC
	ldr r1, _0225468C ; =0x00002DB0
	lsl r0, r0, #0x10
	ldr r1, [r5, r1]
	tst r0, r1
	beq _022544C6
	add r0, r4, #0
	bl sub_020787CC
	ldr r1, _0225468C ; =0x00002DB0
	lsl r2, r0, #0x10
	mov r0, #0
	mvn r0, r0
	ldr r1, [r5, r1]
	eor r0, r2
	and r1, r0
	ldr r0, _0225468C ; =0x00002DB0
	str r1, [r5, r0]
_022544C6:
	ldr r0, _0225468C ; =0x00002DB0
	ldr r1, [r5, r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	tst r0, r1
	beq _022544E8
	ldr r0, [r7, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	cmp r4, r0
	bne _022544E8
	ldr r0, _0225468C ; =0x00002DB0
	ldr r1, [r5, r0]
	ldr r0, _0225469C ; =0xFFFF1FFF
	and r1, r0
	ldr r0, _0225468C ; =0x00002DB0
	str r1, [r5, r0]
_022544E8:
	ldr r0, [sp, #8]
	add r5, #0xc0
	add r0, r0, #1
	add r7, #0xc0
	str r0, [sp, #8]
	cmp r0, r6
	blt _0225449E
_022544F6:
	mov r2, #0
	add r1, r2, #0
_022544FA:
	ldr r0, [sp, #0x14]
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, #0x38
	blo _022544FA
	ldr r1, _022546A0 ; =0x0000213C
	ldr r0, [sp, #4]
	ldr r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r1
	beq _022545AE
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x38]
	add r0, r1, r0
	ldr r1, _022546A4 ; =0x00002DE0
	str r2, [r0, r1]
	ldr r0, [sp, #4]
	sub r1, #0x14
	add r0, r0, r1
	ldr r1, [sp, #0xc]
	mov r2, #3
	ldr r1, [r0, r1]
	bic r1, r2
	ldr r2, [sp, #0x24]
	lsl r2, r2, #0x1e
	lsr r3, r2, #0x1e
	mov r2, #3
	and r2, r3
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x14]
	lsl r3, r3, #0x11
	lsr r3, r3, #0x1e
	lsl r3, r3, #0x1e
	ldr r1, [r1, #0]
	ldr r2, _022546A8 ; =0xFFFF9FFF
	lsr r3, r3, #0x11
	and r1, r2
	orr r3, r1
	ldr r1, [sp, #0x14]
	str r3, [r1, #0]
	ldr r1, [sp, #0xc]
	ldr r3, [r0, r1]
	asr r1, r2, #5
	ldr r2, [sp, #0x24]
	and r1, r3
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1e
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x16
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
	ldr r2, [r0, r1]
	ldr r1, _0225469C ; =0xFFFF1FFF
	and r1, r2
	ldr r2, [sp, #0x24]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1d
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x10
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
	ldr r3, [sp, #0x24]
	ldr r1, [r0, r1]
	lsl r3, r3, #0xa
	ldr r2, _022546AC ; =0xFFC7FFFF
	lsr r3, r3, #0x1d
	lsl r3, r3, #0x1d
	and r1, r2
	lsr r3, r3, #0xa
	orr r3, r1
	ldr r1, [sp, #0xc]
	str r3, [r0, r1]
	ldr r3, [r0, r1]
	asr r1, r2, #3
	ldr r2, [sp, #0x24]
	and r1, r3
	lsl r2, r2, #0xd
	lsr r2, r2, #0x1d
	lsl r2, r2, #0x1d
	lsr r2, r2, #0xd
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
_022545AE:
	mov r0, #0xc0
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r3, #0x90
	ldr r2, [r2, r3]
	add r1, r4, #0
	ldr r3, [sp, #4]
	mul r1, r0
	add r5, r0, #0
	add r1, r3, r1
	ldr r3, _022546B0 ; =0x00002DD4
	add r2, r2, #1
	str r2, [r1, r3]
	ldr r2, [sp, #4]
	add r5, #0x90
	ldr r2, [r2, r5]
	add r0, #0x90
	add r5, r2, #1
	add r2, r3, #4
	str r5, [r1, r2]
	ldr r1, [sp, #0x14]
	lsl r7, r4, #1
	ldr r2, [r1, #0]
	ldr r1, _022546B4 ; =0xBFFFFFFF
	mov r3, #0
	and r1, r2
	ldr r2, [sp, #4]
	mov r5, #0xff
	ldr r0, [r2, r0]
	add r0, r0, #1
	lsl r0, r0, #0x1f
	lsr r0, r0, #1
	orr r1, r0
	ldr r0, [sp, #0x14]
	str r1, [r0, #0]
	add r0, r2, #0
	add r2, r0, r7
	ldr r0, _022546B8 ; =0x0000305C
	add r1, r0, #0
	strh r3, [r2, r0]
	add r1, #8
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x10
	strh r5, [r2, r1]
	add r1, r0, #0
	add r1, #0x18
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x20
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x28
	strh r3, [r2, r1]
	ldr r1, [sp, #4]
	lsl r5, r4, #3
	add r1, r1, r5
	add r5, r0, #0
	add r5, #0x30
	strh r3, [r1, r5]
	add r5, r0, #0
	add r5, #0x32
	strh r3, [r1, r5]
	add r5, r0, #0
	add r5, #0x34
	strh r3, [r1, r5]
	add r5, r0, #0
	add r5, #0x36
	strh r3, [r1, r5]
	add r1, r0, #0
	add r1, #0x50
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x68
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x70
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x78
	strh r3, [r2, r1]
	add r0, #0x80
	strh r3, [r2, r0]
	add r0, r4, #0
	bl sub_020787CC
	mov r1, #6
	lsl r3, r0, #8
	mov r0, #0
	mvn r0, r0
	ldr r2, [sp, #4]
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	eor r0, r3
	and r2, r0
	ldr r0, [sp, #4]
	str r2, [r0, r1]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0]
	mov r0, #2
	lsl r0, r0, #0x16
	tst r0, r1
	beq _022546D6
	ldr r0, _022546BC ; =0x00002D42
	b _022546C0
	; .align 2, 0
_02254680: .word 0x00002DC8
_02254684: .word 0x000021A8
_02254688: .word 0x00002DCC
_0225468C: .word 0x00002DB0
_02254690: .word 0xFBFFFFFF
_02254694: .word 0x15100007
_02254698: .word 0x0FA3843F
_0225469C: .word 0xFFFF1FFF
_022546A0: .word 0x0000213C
_022546A4: .word 0x00002DE0
_022546A8: .word 0xFFFF9FFF
_022546AC: .word 0xFFC7FFFF
_022546B0: .word 0x00002DD4
_022546B4: .word 0xBFFFFFFF
_022546B8: .word 0x0000305C
_022546BC: .word 0x00002D42
_022546C0:
	ldr r1, [sp, #4]
	add r5, r1, r0
	ldr r1, [sp, #0xc]
	ldrh r3, [r5, r1]
	add r1, r0, #2
	ldr r0, [sp, #4]
	add r2, r0, r1
	ldr r0, [sp, #0xc]
	ldrh r1, [r2, r0]
	strh r1, [r5, r0]
	strh r3, [r2, r0]
_022546D6:
	mov r5, #0
	cmp r6, #0
	ble _0225471A
	ldr r0, [sp, #4]
	str r0, [sp, #0x18]
	add r7, r0, r7
_022546E2:
	cmp r5, r4
	beq _02254706
	ldr r0, [sp]
	add r1, r5, #0
	bl ov16_0223E208
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0223E208
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	beq _02254706
	ldr r1, [sp, #0x18]
	ldr r0, _0225473C ; =0x00003084
	mov r2, #0
	strh r2, [r1, r0]
_02254706:
	ldr r0, _02254740 ; =0x0000308C
	mov r1, #0
	strh r1, [r7, r0]
	ldr r0, [sp, #0x18]
	add r5, r5, #1
	add r0, r0, #2
	str r0, [sp, #0x18]
	add r7, #8
	cmp r5, r6
	blt _022546E2
_0225471A:
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov16_0225B80C
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov16_0225B824
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov16_0225B830
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225473C: .word 0x00003084
_02254740: .word 0x0000308C
	thumb_func_end ov16_0225433C

	thumb_func_start ov16_02254744
ov16_02254744: ; 0x02254744
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	str r0, [sp]
	add r5, r2, #0
	bl ov16_0223DF1C
	str r0, [sp, #0xc]
	mov r0, #0xc0
	mul r0, r5
	ldr r1, [sp, #4]
	str r0, [sp, #8]
	add r3, r1, r0
	ldr r0, _02254968 ; =0x00002D58
	mov r2, #0
	mov r1, #6
_02254764:
	add r2, r2, #1
	strb r1, [r3, r0]
	add r3, r3, #1
	cmp r2, #8
	blt _02254764
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r7, #0
	add r2, r0, r1
	ldr r1, _0225496C ; =0x00002DB0
	add r0, r1, #0
	str r7, [r2, r1]
	add r0, #0x10
	str r7, [r2, r0]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0225480A
	ldr r4, [sp, #4]
	add r1, #0x1c
	add r0, r4, #0
	add r6, r0, r1
_02254792:
	ldr r0, _0225496C ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0x1a
	tst r0, r1
	beq _022547B4
	ldr r0, [r6, #0]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	cmp r5, r0
	bne _022547B4
	ldr r0, _0225496C ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _02254970 ; =0xFBFFFFFF
	and r1, r0
	ldr r0, _0225496C ; =0x00002DB0
	str r1, [r4, r0]
_022547B4:
	add r0, r5, #0
	bl sub_020787CC
	ldr r1, _0225496C ; =0x00002DB0
	lsl r0, r0, #0x10
	ldr r1, [r4, r1]
	tst r0, r1
	beq _022547DC
	add r0, r5, #0
	bl sub_020787CC
	ldr r1, _0225496C ; =0x00002DB0
	lsl r2, r0, #0x10
	mov r0, #0
	mvn r0, r0
	ldr r1, [r4, r1]
	eor r0, r2
	and r1, r0
	ldr r0, _0225496C ; =0x00002DB0
	str r1, [r4, r0]
_022547DC:
	ldr r0, _0225496C ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	tst r0, r1
	beq _022547FE
	ldr r0, [r6, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	cmp r5, r0
	bne _022547FE
	ldr r0, _0225496C ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _02254974 ; =0xFFFF1FFF
	and r1, r0
	ldr r0, _0225496C ; =0x00002DB0
	str r1, [r4, r0]
_022547FE:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r4, #0xc0
	add r6, #0xc0
	cmp r7, r0
	blt _02254792
_0225480A:
	ldr r1, _02254978 ; =0x00002DC8
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r6, r1, r0
	mov r1, #0
	add r0, r1, #0
_02254818:
	strb r0, [r6, r1]
	add r1, r1, #1
	cmp r1, #0x38
	blo _02254818
	mov r2, #0x75
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r2, r1, r2
	lsl r1, r5, #6
	add r1, r2, r1
	mov r4, #0
_0225482E:
	strb r4, [r1, r0]
	add r0, r0, #1
	cmp r0, #0x40
	blo _0225482E
	mov r2, #0xc0
	add r3, r2, #0
	ldr r0, [sp, #4]
	add r3, #0x90
	ldr r0, [r0, r3]
	add r1, r5, #0
	ldr r3, [sp, #4]
	mul r1, r2
	add r3, r3, r1
	add r1, r2, #0
	ldr r7, _0225497C ; =0x00002DD4
	add r0, r0, #1
	str r0, [r3, r7]
	ldr r0, [sp, #4]
	add r1, #0x90
	ldr r0, [r0, r1]
	add r1, r7, #4
	add r0, r0, #1
	str r0, [r3, r1]
	ldr r1, [r6, #0]
	ldr r0, _02254980 ; =0xBFFFFFFF
	add r2, #0x90
	and r0, r1
	ldr r1, [sp, #4]
	mov r3, #0xff
	ldr r1, [r1, r2]
	add r1, r1, #1
	lsl r1, r1, #0x1f
	lsr r1, r1, #1
	orr r0, r1
	str r0, [r6, #0]
	ldr r0, [sp, #4]
	lsl r6, r5, #1
	add r2, r0, r6
	ldr r0, _02254984 ; =0x0000305C
	add r1, r0, #0
	strh r4, [r2, r0]
	add r1, #8
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x10
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x18
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x20
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x28
	strh r4, [r2, r1]
	ldr r1, [sp, #4]
	lsl r3, r5, #3
	add r1, r1, r3
	add r3, r0, #0
	add r3, #0x30
	strh r4, [r1, r3]
	add r3, r0, #0
	add r3, #0x32
	strh r4, [r1, r3]
	add r3, r0, #0
	add r3, #0x34
	strh r4, [r1, r3]
	add r3, r0, #0
	add r3, #0x36
	strh r4, [r1, r3]
	add r1, r0, #0
	add r1, #0x50
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x68
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x70
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x78
	strh r4, [r2, r1]
	add r0, #0x80
	strh r4, [r2, r0]
	add r0, r5, #0
	bl sub_020787CC
	mov r1, #6
	lsl r3, r0, #8
	mov r0, #0
	mvn r0, r0
	ldr r2, [sp, #4]
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	eor r0, r3
	and r2, r0
	ldr r0, [sp, #4]
	mov r4, #0
	str r2, [r0, r1]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _02254934
	ldr r7, [sp, #4]
	add r0, r7, #0
	add r6, r0, r6
_02254900:
	cmp r4, r5
	beq _02254922
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0223E208
	str r0, [sp, #0x10]
	ldr r0, [sp]
	add r1, r5, #0
	bl ov16_0223E208
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _02254922
	ldr r0, _02254988 ; =0x00003084
	mov r1, #0
	strh r1, [r7, r0]
_02254922:
	ldr r0, _0225498C ; =0x0000308C
	mov r1, #0
	strh r1, [r6, r0]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r7, r7, #2
	add r6, #8
	cmp r4, r0
	blt _02254900
_02254934:
	mov r1, #0x4f
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	add r3, r0, r1
	lsl r2, r5, #2
	ldr r1, [r3, r2]
	mov r0, #1
	bic r1, r0
	str r1, [r3, r2]
	lsl r1, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov16_0225B80C
	lsl r1, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov16_0225B824
	lsl r1, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov16_0225B830
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02254968: .word 0x00002D58
_0225496C: .word 0x00002DB0
_02254970: .word 0xFBFFFFFF
_02254974: .word 0xFFFF1FFF
_02254978: .word 0x00002DC8
_0225497C: .word 0x00002DD4
_02254980: .word 0xBFFFFFFF
_02254984: .word 0x0000305C
_02254988: .word 0x00003084
_0225498C: .word 0x0000308C
	thumb_func_end ov16_02254744

	thumb_func_start ov16_02254990
ov16_02254990: ; 0x02254990
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x75
	add r5, r1, #0
	lsl r0, r0, #2
	add r7, r5, r0
	mov r0, #0xd1
	lsl r0, r0, #2
	add r6, r5, r0
	mov r0, #8
	add r4, r5, #0
	str r0, [sp, #8]
_022549AE:
	mov r0, #0
	add r1, r7, #0
	mov r2, #0x40
	bl MIi_CpuClearFast
	mov r0, #0
	add r1, r6, #0
	mov r2, #4
	bl MIi_CpuClearFast
	ldr r0, _02254A58 ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, [sp, #8]
	bic r1, r0
	ldr r0, _02254A58 ; =0x00002DB0
	str r1, [r4, r0]
	add r0, #0x20
	ldr r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	bge _022549EA
	ldr r0, _02254A58 ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _02254A5C ; =0xFFBFFFFF
	and r1, r0
	ldr r0, _02254A58 ; =0x00002DB0
	str r1, [r4, r0]
_022549EA:
	ldr r0, _02254A60 ; =0x00002DAC
	ldr r1, [r4, r0]
	mov r0, #7
	tst r0, r1
	beq _02254A0A
	ldr r0, _02254A58 ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r1
	beq _02254A0A
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r5, #0
	bl ov16_02253F20
_02254A0A:
	ldr r0, _02254A60 ; =0x00002DAC
	ldr r1, [r4, r0]
	mov r0, #7
	tst r0, r1
	beq _02254A2C
	ldr r0, _02254A58 ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #3
	lsl r0, r0, #0xa
	tst r0, r1
	beq _02254A2C
	ldr r0, _02254A58 ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _02254A64 ; =0xFFFFF3FF
	and r1, r0
	ldr r0, _02254A58 ; =0x00002DB0
	str r1, [r4, r0]
_02254A2C:
	ldr r0, [sp, #4]
	add r7, #0x40
	add r0, r0, #1
	add r6, r6, #4
	add r4, #0xc0
	str r0, [sp, #4]
	cmp r0, #4
	blt _022549AE
	mov r2, #0x71
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	ldr r1, _02254A68 ; =0xFFEFFFFF
	and r0, r1
	str r0, [r5, r2]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r2, #8
	and r0, r1
	str r0, [r5, r2]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02254A58: .word 0x00002DB0
_02254A5C: .word 0xFFBFFFFF
_02254A60: .word 0x00002DAC
_02254A64: .word 0xFFFFF3FF
_02254A68: .word 0xFFEFFFFF
	thumb_func_end ov16_02254990

	thumb_func_start ov16_02254A6C
ov16_02254A6C: ; 0x02254A6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp]
	ldr r0, [sp, #0x70]
	add r7, r1, #0
	str r0, [sp, #0x70]
	str r2, [sp, #4]
	add r0, r7, #0
	add r1, r2, #0
	add r5, r3, #0
	bl ov16_02258AB8
	str r0, [sp, #0x34]
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	add r4, r7, r1
	str r1, [sp, #0x38]
	ldr r0, [sp, #0x70]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x70]
	mov r1, #2
	and r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x70]
	mov r1, #4
	and r0, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	mov r1, #8
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x70]
	mov r2, #0x10
	and r0, r1
	ldr r1, _02254C84 ; =0x00002DC8
	str r0, [sp, #0x1c]
	add r0, r7, r1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x70]
	sub r1, #0x88
	and r0, r2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x70]
	mov r2, #0x20
	and r0, r2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x70]
	mov r2, #0x40
	and r0, r2
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x70]
	mov r0, #0x80
	and r2, r0
	str r2, [sp, #0xc]
	lsl r2, r0, #2
	ldr r0, [sp, #0x70]
	mov r6, #0
	and r0, r2
	str r0, [sp, #8]
	add r0, r7, r1
	str r0, [sp, #0x40]
	ldr r0, _02254C88 ; =0x00002DE8
	str r4, [sp, #0x30]
	add r0, r4, r0
	str r0, [sp, #0x44]
	ldr r0, _02254C8C ; =0x00002DB0
	add r0, r4, r0
	str r0, [sp, #0x48]
	ldr r0, _02254C90 ; =0x00002DEC
	add r0, r4, r0
	str r0, [sp, #0x4c]
	ldr r0, _02254C94 ; =0x00002DF8
	add r0, r4, r0
	str r0, [sp, #0x50]
	ldr r0, _02254C94 ; =0x00002DF8
	add r0, r4, r0
	str r0, [sp, #0x58]
	ldr r0, _02254C94 ; =0x00002DF8
	add r0, r4, r0
	str r0, [sp, #0x54]
_02254B14:
	ldr r0, _02254C98 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _02254B2A
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _02254B2A
	add r0, r6, #0
	bl sub_020787CC
	orr r5, r0
_02254B2A:
	ldr r1, [sp, #0x30]
	ldr r0, _02254C9C ; =0x00002D6C
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02254B42
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02254B42
	add r0, r6, #0
	bl sub_020787CC
	orr r5, r0
_02254B42:
	ldr r0, [sp, #0x44]
	ldrh r1, [r0]
	ldr r0, _02254C98 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	bne _02254B5C
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02254B5C
	add r0, r6, #0
	bl sub_020787CC
	orr r5, r0
_02254B5C:
	ldr r1, [sp, #0x20]
	ldr r0, _02254CA0 ; =0x0000307C
	ldrh r1, [r1, r0]
	ldr r0, _02254C98 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	bne _02254B84
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02254B84
	ldr r0, [sp, #0x48]
	ldr r1, [r0, #0]
	mov r0, #2
	lsl r0, r0, #0x1e
	tst r0, r1
	beq _02254B84
	add r0, r6, #0
	bl sub_020787CC
	orr r5, r0
_02254B84:
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	ldr r0, [r1, r0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	beq _02254BAE
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02254BAE
	ldr r0, _02254C98 ; =0x00002D4C
	ldrh r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r7, r0
	ldr r0, _02254CA4 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02254BAE
	add r0, r6, #0
	bl sub_020787CC
	orr r5, r0
_02254BAE:
	ldr r3, _02254C98 ; =0x00002D4C
	ldr r0, [sp]
	ldrh r3, [r4, r3]
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl ov16_02255EF4
	cmp r0, #0
	beq _02254BCE
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02254BCE
	add r0, r6, #0
	bl sub_020787CC
	orr r5, r0
_02254BCE:
	ldr r3, _02254C98 ; =0x00002D4C
	ldr r0, [sp]
	ldrh r3, [r4, r3]
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl ov16_02256044
	cmp r0, #0
	beq _02254BEE
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02254BEE
	add r0, r6, #0
	bl sub_020787CC
	orr r5, r0
_02254BEE:
	ldr r3, _02254C98 ; =0x00002D4C
	ldr r0, [sp]
	ldrh r3, [r4, r3]
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl ov16_02256078
	cmp r0, #0
	beq _02254C0E
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02254C0E
	add r0, r6, #0
	bl sub_020787CC
	orr r5, r0
_02254C0E:
	ldr r0, [sp, #0x4c]
	ldrh r1, [r0]
	cmp r1, #0
	beq _02254C26
	ldr r0, _02254C98 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	beq _02254C26
	add r0, r6, #0
	bl sub_020787CC
	orr r5, r0
_02254C26:
	ldr r0, [sp, #0x34]
	cmp r0, #0x37
	beq _02254C34
	cmp r0, #0x73
	beq _02254C34
	cmp r0, #0x7d
	bne _02254C6C
_02254C34:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02254C6C
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x38]
	add r0, r1, r0
	ldr r1, [sp, #0x50]
	ldrh r1, [r1]
	bl ov16_02254EE0
	cmp r0, #4
	bne _02254C54
	ldr r0, [sp, #0x54]
	mov r1, #0
	strh r1, [r0]
	b _02254C6C
_02254C54:
	ldr r0, [sp, #0x58]
	ldrh r1, [r0]
	cmp r1, #0
	beq _02254C6C
	ldr r0, _02254C98 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	beq _02254C6C
	add r0, r6, #0
	bl sub_020787CC
	orr r5, r0
_02254C6C:
	ldr r0, [sp, #0x30]
	add r6, r6, #1
	add r0, r0, #1
	add r4, r4, #2
	str r0, [sp, #0x30]
	cmp r6, #4
	bge _02254C7C
	b _02254B14
_02254C7C:
	add r0, r5, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02254C84: .word 0x00002DC8
_02254C88: .word 0x00002DE8
_02254C8C: .word 0x00002DB0
_02254C90: .word 0x00002DEC
_02254C94: .word 0x00002DF8
_02254C98: .word 0x00002D4C
_02254C9C: .word 0x00002D6C
_02254CA0: .word 0x0000307C
_02254CA4: .word 0x000003E1
	thumb_func_end ov16_02254A6C

	thumb_func_start ov16_02254CA8
ov16_02254CA8: ; 0x02254CA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r3, #0
	mov r3, #1
	str r3, [sp, #8]
	mov r3, #4
	str r3, [sp]
	mov r3, #0
	str r0, [sp, #4]
	add r5, r1, #0
	add r6, r2, #0
	ldr r4, [sp, #0x40]
	bl ov16_02254A6C
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_020787CC
	ldr r1, [sp, #0xc]
	tst r0, r1
	beq _02254CFA
	mov r0, #0xa
	strb r0, [r4, #1]
	ldr r0, _02254EBC ; =0x00000261
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl ov16_02255560
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02254EC0 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02254EB6
_02254CFA:
	mov r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov16_02254A6C
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_020787CC
	ldr r1, [sp, #0x10]
	tst r0, r1
	beq _02254D32
	mov r0, #2
	strb r0, [r4, #1]
	mov r0, #0x99
	lsl r0, r0, #2
	strh r0, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255560
	str r0, [r4, #4]
	mov r0, #0
	str r0, [sp, #8]
	b _02254EB6
_02254D32:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov16_02254A6C
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl sub_020787CC
	ldr r1, [sp, #0x14]
	tst r0, r1
	beq _02254D78
	mov r0, #0xa
	strb r0, [r4, #1]
	ldr r0, _02254EC4 ; =0x00000265
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl ov16_02255560
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02254EC0 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02254EB6
_02254D78:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov16_02254A6C
	str r0, [sp, #0x18]
	add r0, r7, #0
	bl sub_020787CC
	ldr r1, [sp, #0x18]
	tst r0, r1
	beq _02254DC0
	mov r0, #0xa
	strb r0, [r4, #1]
	mov r0, #0x9a
	lsl r0, r0, #2
	strh r0, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255560
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02254EC0 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02254EB6
_02254DC0:
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov16_02254A6C
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl sub_020787CC
	ldr r1, [sp, #0x1c]
	tst r0, r1
	beq _02254E06
	mov r0, #0xa
	strb r0, [r4, #1]
	ldr r0, _02254EC8 ; =0x000003E9
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl ov16_02255560
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02254EC0 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02254EB6
_02254E06:
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov16_02254A6C
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_020787CC
	ldr r1, [sp, #0x20]
	tst r0, r1
	beq _02254E50
	mov r0, #0x22
	strb r0, [r4, #1]
	ldr r0, _02254ECC ; =0x00000421
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl ov16_02255560
	str r0, [r4, #4]
	ldr r0, _02254ED0 ; =0x00000179
	str r0, [r4, #8]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02254EC0 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	b _02254EB6
_02254E50:
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov16_02254A6C
	str r0, [sp, #0x24]
	add r0, r7, #0
	bl sub_020787CC
	ldr r1, [sp, #0x24]
	tst r0, r1
	beq _02254E90
	mov r0, #0x18
	strb r0, [r4, #1]
	ldr r0, _02254ED4 ; =0x0000038F
	strh r0, [r4, #2]
	mov r0, #0xc0
	mul r0, r6
	add r2, r5, r0
	ldr r0, _02254ED8 ; =0x00002DB8
	ldrh r1, [r2, r0]
	add r0, #0x40
	str r1, [r4, #4]
	ldrh r0, [r2, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02254EB6
_02254E90:
	mov r0, #2
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov16_02254A6C
	add r5, r0, #0
	add r0, r7, #0
	bl sub_020787CC
	tst r0, r5
	beq _02254EB6
	mov r0, #0
	str r0, [sp, #8]
	strb r0, [r4, #1]
	ldr r0, _02254EDC ; =0x00000337
	strh r0, [r4, #2]
_02254EB6:
	ldr r0, [sp, #8]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02254EBC: .word 0x00000261
_02254EC0: .word 0x00002D4C
_02254EC4: .word 0x00000265
_02254EC8: .word 0x000003E9
_02254ECC: .word 0x00000421
_02254ED0: .word 0x00000179
_02254ED4: .word 0x0000038F
_02254ED8: .word 0x00002DB8
_02254EDC: .word 0x00000337
	thumb_func_end ov16_02254CA8

	thumb_func_start ov16_02254EE0
ov16_02254EE0: ; 0x02254EE0
	mov r3, #0
_02254EE2:
	ldrh r2, [r0, #0xc]
	cmp r1, r2
	beq _02254EF0
	add r3, r3, #1
	add r0, r0, #2
	cmp r3, #4
	blt _02254EE2
_02254EF0:
	add r0, r3, #0
	bx lr
	thumb_func_end ov16_02254EE0

	thumb_func_start ov16_02254EF4
ov16_02254EF4: ; 0x02254EF4
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r1, r6, #0
	add r5, r0, #0
	add r4, r3, #0
	bl ov16_02258AB8
	mov r1, #1
	cmp r0, #0x6a
	beq _02254F1A
	mov r0, #0xc0
	mul r0, r6
	add r2, r5, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r2, r0]
	lsl r0, r1, #0xa
	tst r0, r2
	beq _02254F30
_02254F1A:
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02254FA0 ; =0x0226ECD5
	ldrb r0, [r0, r2]
	cmp r0, #2
	bne _02254F30
	ldr r0, _02254FA4 ; =0x0226ECD6
	ldrb r0, [r0, r2]
	cmp r0, #0
	bne _02254F30
	mov r1, #0
_02254F30:
	lsl r0, r6, #6
	add r2, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _02254F4E
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02254FA0 ; =0x0226ECD5
	ldrb r0, [r0, r2]
	cmp r0, #2
	bne _02254F4E
	mov r1, #0
_02254F4E:
	mov r0, #6
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r2
	beq _02254F72
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02254FA0 ; =0x0226ECD5
	ldrb r0, [r0, r2]
	cmp r0, #2
	bne _02254F72
	ldr r0, _02254FA4 ; =0x0226ECD6
	ldrb r0, [r0, r2]
	cmp r0, #0
	bne _02254F72
	mov r1, #0
_02254F72:
	mov r0, #0xc0
	mul r0, r6
	add r2, r5, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r2, r0]
	mov r0, #1
	lsl r0, r0, #0x16
	tst r0, r2
	beq _02254F9C
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02254FA0 ; =0x0226ECD5
	ldrb r0, [r0, r2]
	cmp r0, #0x11
	bne _02254F9C
	ldr r0, _02254FA4 ; =0x0226ECD6
	ldrb r0, [r0, r2]
	cmp r0, #0
	bne _02254F9C
	mov r1, #0
_02254F9C:
	add r0, r1, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02254FA0: .word 0x0226ECD5
_02254FA4: .word 0x0226ECD6
	thumb_func_end ov16_02254EF4

	thumb_func_start ov16_02254FA8
ov16_02254FA8: ; 0x02254FA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r0, [sp, #0x50]
	add r5, r1, #0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #8]
	str r0, [sp, #0x54]
	add r0, r2, #0
	add r4, r3, #0
	ldr r7, [sp, #0x48]
	ldr r6, [sp, #0x4c]
	cmp r0, #0xa5
	bne _02254FCA
	ldr r0, [sp, #0x50]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_02254FCA:
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02258AB8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov16_02258ACC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02258AB8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov16_02258ACC
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255A4C
	cmp r0, #0x60
	bne _02255012
	mov r0, #0
	str r0, [sp, #0x28]
	b _0225502A
_02255012:
	cmp r4, #0
	beq _0225501E
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	b _0225502A
_0225501E:
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022552BC ; =0x000003E2
	ldrb r0, [r1, r0]
	str r0, [sp, #0x28]
_0225502A:
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022552C0 ; =0x000003E1
	ldrb r0, [r1, r0]
	str r0, [sp, #0x14]
	ldr r0, _022552C4 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r1
	bne _02255088
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x28]
	cmp r1, r0
	beq _02255066
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x28]
	cmp r1, r0
	bne _02255088
_02255066:
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255A4C
	cmp r0, #0x5b
	bne _0225507A
	ldr r0, [sp, #0x50]
	lsl r0, r0, #1
	str r0, [sp, #0x50]
	b _02255088
_0225507A:
	ldr r1, [sp, #0x50]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	str r0, [sp, #0x50]
_02255088:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x1a
	bl ov16_02255AB4
	cmp r0, #1
	bne _022550B4
	ldr r0, [sp, #0x28]
	cmp r0, #4
	bne _022550B4
	ldr r0, [sp, #0x20]
	cmp r0, #0x6a
	beq _022550B4
	ldr r0, [sp, #0x54]
	ldr r1, [r0, #0]
	mov r0, #2
	lsl r0, r0, #0xa
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0, #0]
	b _022551D0
_022550B4:
	mov r0, #0xc0
	add r1, r6, #0
	mul r1, r0
	ldr r0, _022552C8 ; =0x00002DCC
	add r3, r5, r1
	ldr r2, [r3, r0]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1d
	beq _022550EC
	sub r0, #0xc
	ldr r2, [r3, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r2, r0
	bne _022550EC
	ldr r2, [sp, #0x28]
	cmp r2, #4
	bne _022550EC
	ldr r2, [sp, #0x20]
	cmp r2, #0x6a
	beq _022550EC
	ldr r1, [sp, #0x54]
	lsl r0, r0, #0xa
	ldr r1, [r1, #0]
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0, #0]
	b _022551D0
_022550EC:
	add r0, r5, r1
	mov r4, #0
	str r0, [sp, #0x18]
_022550F2:
	lsl r0, r4, #1
	ldr r1, _022552CC ; =0x0226ECD4
	add r0, r4, r0
	add r1, r1, r0
	str r1, [sp, #0xc]
	ldr r1, _022552CC ; =0x0226ECD4
	ldrb r1, [r1, r0]
	cmp r1, #0xfe
	bne _02255122
	ldr r1, [sp, #0x18]
	ldr r0, _022552D0 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0x1c
	tst r0, r1
	bne _022551D0
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255A4C
	cmp r0, #0x71
	beq _022551D0
	add r4, r4, #1
	b _022551C4
_02255122:
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _022551C2
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	ldrb r0, [r0, #1]
	mov r2, #0x1b
	mov r3, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov16_02252060
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _02255168
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov16_02254EF4
	cmp r0, #1
	bne _02255168
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x54]
	ldr r3, [sp, #0x50]
	str r0, [sp, #4]
	ldrb r2, [r2, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_0225B63C
	str r0, [sp, #0x50]
_02255168:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _022551C2
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x2c]
	cmp r1, r0
	beq _022551C2
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov16_02254EF4
	cmp r0, #1
	bne _022551C2
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x54]
	ldr r3, [sp, #0x50]
	str r0, [sp, #4]
	ldrb r2, [r2, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_0225B63C
	str r0, [sp, #0x50]
_022551C2:
	add r4, r4, #1
_022551C4:
	lsl r0, r4, #1
	add r1, r4, r0
	ldr r0, _022552CC ; =0x0226ECD4
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _022550F2
_022551D0:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x19
	bl ov16_02255AB4
	cmp r0, #1
	bne _02255214
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_0225B6C8
	cmp r0, #0
	beq _02255214
	ldr r0, [sp, #0x54]
	ldr r1, [r0, #0]
	mov r0, #2
	tst r0, r1
	beq _022551FE
	mov r0, #6
	and r0, r1
	cmp r0, #6
	bne _02255214
_022551FE:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02255214
	ldr r0, [sp, #0x54]
	ldr r1, [r0, #0]
	mov r0, #1
	lsl r0, r0, #0x12
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0, #0]
	b _022552B6
_02255214:
	ldr r0, _022552C4 ; =0x0000213C
	ldr r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xa
	add r1, r2, #0
	tst r1, r0
	bne _022552A2
	lsl r0, r0, #4
	tst r0, r2
	bne _022552A2
	ldr r0, [sp, #0x54]
	ldr r1, [r0, #0]
	mov r0, #2
	tst r0, r1
	beq _0225527E
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0225527E
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x6f
	bl ov16_02255AB4
	cmp r0, #1
	beq _02255258
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x74
	bl ov16_02255AB4
	cmp r0, #1
	bne _02255266
_02255258:
	ldr r0, [sp, #0x50]
	lsl r1, r0, #1
	add r0, r0, r1
	mov r1, #4
	bl ov16_022563F8
	str r0, [sp, #0x50]
_02255266:
	ldr r0, [sp, #0x24]
	cmp r0, #0x60
	bne _0225527E
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x50]
	add r0, #0x64
	str r0, [sp, #0x1c]
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	str r0, [sp, #0x50]
_0225527E:
	ldr r0, [sp, #0x54]
	ldr r1, [r0, #0]
	mov r0, #4
	tst r0, r1
	beq _022552B6
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _022552B6
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255A4C
	cmp r0, #0x6e
	bne _022552B6
	ldr r0, [sp, #0x50]
	lsl r0, r0, #1
	str r0, [sp, #0x50]
	b _022552B6
_022552A2:
	ldr r0, [sp, #0x54]
	ldr r1, [r0, #0]
	mov r0, #2
	bic r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0, #0]
	mov r0, #4
	bic r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0, #0]
_022552B6:
	ldr r0, [sp, #0x50]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022552BC: .word 0x000003E2
_022552C0: .word 0x000003E1
_022552C4: .word 0x0000213C
_022552C8: .word 0x00002DCC
_022552CC: .word 0x0226ECD4
_022552D0: .word 0x00002DB0
	thumb_func_end ov16_02254FA8

	thumb_func_start ov16_022552D4
ov16_022552D4: ; 0x022552D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	str r1, [sp]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r3, [sp, #4]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r6, [sp, #0x38]
	str r0, [sp, #0x34]
	add r0, r1, #0
	cmp r0, #0xa5
	beq _022553EA
	add r0, r3, #0
	cmp r0, #0x60
	bne _022552FE
	mov r0, #0
	str r0, [sp, #0xc]
	b _02255316
_022552FE:
	cmp r2, #0
	beq _0225530A
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	b _02255316
_0225530A:
	add r0, r1, #0
	lsl r0, r0, #4
	add r1, r7, r0
	ldr r0, _022553F0 ; =0x000003E2
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
_02255316:
	ldr r0, [sp, #4]
	cmp r0, #0x68
	beq _02255346
	ldr r0, [sp, #0x28]
	cmp r0, #0x1a
	bne _02255346
	ldr r0, [sp, #0xc]
	cmp r0, #4
	bne _02255346
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r7, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	bne _02255346
	ldr r0, [sp, #0x2c]
	cmp r0, #0x6a
	beq _02255346
	ldr r1, [r6, #0]
	mov r0, #8
	orr r0, r1
	str r0, [r6, #0]
	b _022553BA
_02255346:
	mov r4, #0
_02255348:
	lsl r0, r4, #1
	add r1, r4, r0
	ldr r0, _022553F4 ; =0x0226ECD4
	add r5, r0, r1
	ldrb r1, [r0, r1]
	cmp r1, #0xfe
	bne _02255360
	ldr r0, [sp, #4]
	cmp r0, #0x71
	beq _022553BA
	add r4, r4, #1
	b _022553AE
_02255360:
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bne _022553AC
	ldrb r0, [r5, #1]
	ldr r1, [sp, #0x30]
	str r0, [sp, #8]
	cmp r1, r0
	bne _02255386
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov16_022553F8
	cmp r0, #1
	bne _02255386
	ldrb r0, [r5, #2]
	add r1, r6, #0
	bl ov16_02255448
_02255386:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _022553AC
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	cmp r1, r0
	beq _022553AC
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov16_022553F8
	cmp r0, #1
	bne _022553AC
	ldrb r0, [r5, #2]
	add r1, r6, #0
	bl ov16_02255448
_022553AC:
	add r4, r4, #1
_022553AE:
	lsl r0, r4, #1
	add r1, r4, r0
	ldr r0, _022553F4 ; =0x0226ECD4
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _02255348
_022553BA:
	ldr r0, [sp, #4]
	cmp r0, #0x68
	beq _022553EA
	ldr r0, [sp, #0x28]
	cmp r0, #0x19
	bne _022553EA
	ldr r1, [sp]
	add r0, r7, #0
	bl ov16_0225B6C8
	cmp r0, #0
	beq _022553EA
	ldr r1, [r6, #0]
	mov r0, #2
	tst r0, r1
	beq _022553E2
	mov r0, #6
	and r0, r1
	cmp r0, #6
	bne _022553EA
_022553E2:
	ldr r1, [r6, #0]
	mov r0, #8
	orr r0, r1
	str r0, [r6, #0]
_022553EA:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022553F0: .word 0x000003E2
_022553F4: .word 0x0226ECD4
	thumb_func_end ov16_022552D4

	thumb_func_start ov16_022553F8
ov16_022553F8: ; 0x022553F8
	push {r3, r4}
	mov r3, #1
	cmp r1, #0x6a
	bne _02255416
	lsl r1, r2, #1
	add r4, r2, r1
	ldr r1, _02255440 ; =0x0226ECD5
	ldrb r1, [r1, r4]
	cmp r1, #2
	bne _02255416
	ldr r1, _02255444 ; =0x0226ECD6
	ldrb r1, [r1, r4]
	cmp r1, #0
	bne _02255416
	mov r3, #0
_02255416:
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r0, r1]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0225543A
	lsl r0, r2, #1
	add r1, r2, r0
	ldr r0, _02255440 ; =0x0226ECD5
	ldrb r0, [r0, r1]
	cmp r0, #2
	bne _0225543A
	ldr r0, _02255444 ; =0x0226ECD6
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0225543A
	mov r3, #0
_0225543A:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02255440: .word 0x0226ECD5
_02255444: .word 0x0226ECD6
	thumb_func_end ov16_022553F8

	thumb_func_start ov16_02255448
ov16_02255448: ; 0x02255448
	cmp r0, #0
	beq _02255456
	cmp r0, #5
	beq _02255468
	cmp r0, #0x14
	beq _02255480
	bx lr
_02255456:
	ldr r2, [r1, #0]
	mov r0, #8
	orr r2, r0
	mov r0, #4
	bic r2, r0
	mov r0, #2
	bic r2, r0
	str r2, [r1, #0]
	bx lr
_02255468:
	ldr r2, [r1, #0]
	mov r0, #2
	tst r0, r2
	beq _02255478
	mov r0, #2
	bic r2, r0
	str r2, [r1, #0]
	bx lr
_02255478:
	mov r0, #4
	orr r0, r2
	str r0, [r1, #0]
	bx lr
_02255480:
	ldr r2, [r1, #0]
	mov r0, #4
	tst r0, r2
	beq _02255490
	mov r0, #4
	bic r2, r0
	str r2, [r1, #0]
	bx lr
_02255490:
	mov r0, #2
	orr r0, r2
	str r0, [r1, #0]
	bx lr
	thumb_func_end ov16_02255448

	thumb_func_start ov16_02255498
ov16_02255498: ; 0x02255498
	mov r2, #0xd1
	lsl r2, r2, #2
	add r2, r0, r2
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	bne _022554D8
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1f
	bne _022554D8
	lsl r1, r0, #0x1d
	lsr r1, r1, #0x1f
	bne _022554D8
	lsl r1, r0, #0x1c
	lsr r1, r1, #0x1f
	bne _022554D8
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1f
	bne _022554D8
	lsl r1, r0, #0x1a
	lsr r1, r1, #0x1f
	bne _022554D8
	lsl r1, r0, #0x19
	lsr r1, r1, #0x1f
	bne _022554D8
	lsl r1, r0, #0x17
	lsr r1, r1, #0x1f
	bne _022554D8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _022554DC
_022554D8:
	mov r0, #1
	bx lr
_022554DC:
	mov r0, #0
	bx lr
	thumb_func_end ov16_02255498

	thumb_func_start ov16_022554E0
ov16_022554E0: ; 0x022554E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #4]
	mov r4, #0
	bl ov16_0223DF1C
	add r7, r0, #0
	cmp r6, #0
	beq _022554FE
	cmp r6, #1
	beq _02255522
	b _02255556
_022554FE:
	add r0, r4, #0
	cmp r7, #0
	ble _02255556
	ldr r2, _0225555C ; =0x00002D8C
_02255506:
	ldr r1, [sp, #4]
	cmp r0, r1
	beq _02255518
	ldr r1, [r5, r2]
	cmp r1, #0
	beq _02255518
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
_02255518:
	add r0, r0, #1
	add r5, #0xc0
	cmp r0, r7
	blt _02255506
	b _02255556
_02255522:
	add r6, r4, #0
	cmp r7, #0
	ble _02255556
_02255528:
	ldr r0, [sp]
	add r1, r6, #0
	bl ov16_0223E208
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov16_0223E208
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _0225554E
	ldr r0, _0225555C ; =0x00002D8C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225554E
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0225554E:
	add r6, r6, #1
	add r5, #0xc0
	cmp r6, r7
	blt _02255528
_02255556:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225555C: .word 0x00002D8C
	thumb_func_end ov16_022554E0

	thumb_func_start ov16_02255560
ov16_02255560: ; 0x02255560
	add r2, r0, r1
	ldr r0, _0225556C ; =0x0000219C
	ldrb r0, [r2, r0]
	lsl r0, r0, #8
	orr r0, r1
	bx lr
	; .align 2, 0
_0225556C: .word 0x0000219C
	thumb_func_end ov16_02255560

	thumb_func_start ov16_02255570
ov16_02255570: ; 0x02255570
	push {r4, r5}
	lsl r3, r1, #4
	add r5, r0, r3
	ldr r3, _0225559C ; =0x000021B4
	mov r2, #0
	ldr r4, [r5, r3]
	cmp r4, #1
	bne _02255596
	sub r3, r3, #4
	ldr r3, [r5, r3]
	cmp r3, #0
	beq _02255596
	mov r2, #0xc0
	mul r2, r1
	add r1, r0, r2
	lsl r0, r3, #1
	add r1, r1, r0
	ldr r0, _022555A0 ; =0x00002D4A
	ldrh r2, [r1, r0]
_02255596:
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0225559C: .word 0x000021B4
_022555A0: .word 0x00002D4A
	thumb_func_end ov16_02255570

	thumb_func_start ov16_022555A4
ov16_022555A4: ; 0x022555A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r2, [sp, #4]
	str r0, [sp]
	add r7, r1, #0
	str r3, [sp, #8]
	ldr r6, [sp, #0x70]
	mov r4, #0
	bl ov16_0223DF1C
	add r5, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #9
	bhi _02255618
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022555CC: ; jump table
	.short _022555E0 - _022555CC - 2 ; case 0
	.short _0225561A - _022555CC - 2 ; case 1
	.short _02255666 - _022555CC - 2 ; case 2
	.short _022556A0 - _022555CC - 2 ; case 3
	.short _022556EC - _022555CC - 2 ; case 4
	.short _0225573E - _022555CC - 2 ; case 5
	.short _02255760 - _022555CC - 2 ; case 6
	.short _02255788 - _022555CC - 2 ; case 7
	.short _022557B4 - _022555CC - 2 ; case 8
	.short _022557E8 - _022555CC - 2 ; case 9
_022555E0:
	add r0, r4, #0
	str r0, [sp, #0x44]
	cmp r5, #0
	ble _02255618
_022555E8:
	ldr r0, [sp]
	ldr r1, [sp, #0x44]
	bl ov16_0223E208
	str r0, [sp, #0x48]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov16_0223E208
	ldr r1, [sp, #0x48]
	cmp r1, r0
	bne _0225560E
	ldr r1, [sp, #0x44]
	add r0, r7, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _0225560E
	add r4, r4, #1
_0225560E:
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	cmp r0, r5
	blt _022555E8
_02255618:
	b _02255820
_0225561A:
	add r0, r4, #0
	str r0, [sp, #0xc]
	cmp r5, #0
	ble _02255664
	str r7, [sp, #0x30]
_02255624:
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl ov16_0223E208
	str r0, [sp, #0x4c]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov16_0223E208
	ldr r1, [sp, #0x4c]
	cmp r1, r0
	bne _02255654
	ldr r1, [sp, #0x30]
	ldr r0, _02255828 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02255654
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _02255654
	add r4, r4, #1
_02255654:
	ldr r0, [sp, #0x30]
	add r0, #0xc0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r5
	blt _02255624
_02255664:
	b _02255820
_02255666:
	add r0, r4, #0
	str r0, [sp, #0x10]
	cmp r5, #0
	ble _0225569E
_0225566E:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov16_0223E208
	str r0, [sp, #0x50]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov16_0223E208
	ldr r1, [sp, #0x50]
	cmp r1, r0
	beq _02255694
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _02255694
	add r4, r4, #1
_02255694:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r5
	blt _0225566E
_0225569E:
	b _02255820
_022556A0:
	add r0, r4, #0
	str r0, [sp, #0x14]
	cmp r5, #0
	ble _022556EA
	str r7, [sp, #0x34]
_022556AA:
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	bl ov16_0223E208
	str r0, [sp, #0x54]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov16_0223E208
	ldr r1, [sp, #0x54]
	cmp r1, r0
	beq _022556DA
	ldr r1, [sp, #0x34]
	ldr r0, _02255828 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022556DA
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _022556DA
	add r4, r4, #1
_022556DA:
	ldr r0, [sp, #0x34]
	add r0, #0xc0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r5
	blt _022556AA
_022556EA:
	b _02255820
_022556EC:
	add r0, r4, #0
	str r0, [sp, #0x18]
	cmp r5, #0
	ble _0225573C
	str r7, [sp, #0x38]
_022556F6:
	ldr r0, [sp]
	ldr r1, [sp, #0x18]
	bl ov16_0223E208
	str r0, [sp, #0x58]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov16_0223E208
	ldr r1, [sp, #0x58]
	cmp r1, r0
	beq _0225572C
	ldr r1, [sp, #0x38]
	ldr r0, _02255828 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225572C
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _0225572C
	ldr r0, [sp, #0x18]
	bl sub_020787CC
	orr r4, r0
_0225572C:
	ldr r0, [sp, #0x38]
	add r0, #0xc0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r5
	blt _022556F6
_0225573C:
	b _02255820
_0225573E:
	add r0, r4, #0
	str r0, [sp, #0x1c]
	cmp r5, #0
	ble _02255820
_02255746:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _02255754
	add r4, r4, #1
_02255754:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r5
	blt _02255746
	b _02255820
_02255760:
	add r0, r4, #0
	str r0, [sp, #0x20]
	cmp r5, #0
	ble _02255820
_02255768:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _0225577C
	add r0, r7, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _0225577C
	add r4, r4, #1
_0225577C:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r5
	blt _02255768
	b _02255820
_02255788:
	add r0, r4, #0
	str r0, [sp, #0x24]
	cmp r5, #0
	ble _02255820
_02255790:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _022557A8
	add r0, r7, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _022557A8
	ldr r0, [sp, #0x24]
	add r4, r0, #1
	b _02255820
_022557A8:
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, r5
	blt _02255790
	b _02255820
_022557B4:
	add r0, r4, #0
	str r0, [sp, #0x28]
	cmp r5, #0
	ble _02255820
	str r7, [sp, #0x3c]
_022557BE:
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _022557D6
	ldr r1, [sp, #0x3c]
	ldr r0, _02255828 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022557D6
	add r4, r4, #1
_022557D6:
	ldr r0, [sp, #0x3c]
	add r0, #0xc0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, r5
	blt _022557BE
	b _02255820
_022557E8:
	add r0, r4, #0
	str r0, [sp, #0x2c]
	cmp r5, #0
	ble _02255820
	str r7, [sp, #0x40]
_022557F2:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _02255810
	add r0, r7, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _02255810
	ldr r1, [sp, #0x40]
	ldr r0, _02255828 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02255810
	add r4, r4, #1
_02255810:
	ldr r0, [sp, #0x40]
	add r0, #0xc0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, r5
	blt _022557F2
_02255820:
	add r0, r4, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02255828: .word 0x00002D8C
	thumb_func_end ov16_022555A4

	thumb_func_start ov16_0225582C
ov16_0225582C: ; 0x0225582C
	lsl r1, r1, #4
	add r1, r0, r1
	ldr r0, _02255888 ; =0x000003DE
	ldrh r2, [r1, r0]
	cmp r2, #0x9b
	bgt _0225585E
	cmp r2, #0x97
	blt _02255844
	beq _0225587E
	cmp r2, #0x9b
	beq _0225587E
	b _02255882
_02255844:
	cmp r2, #0x27
	bgt _02255850
	bge _0225587E
	cmp r2, #0x1a
	beq _0225587E
	b _02255882
_02255850:
	cmp r2, #0x4b
	bgt _02255858
	beq _0225587E
	b _02255882
_02255858:
	cmp r2, #0x91
	beq _0225587E
	b _02255882
_0225585E:
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	bgt _0225586E
	bge _0225587E
	cmp r2, #0xff
	beq _0225587E
	b _02255882
_0225586E:
	add r0, r1, #7
	cmp r2, r0
	bgt _02255878
	beq _0225587E
	b _02255882
_02255878:
	add r1, #0x10
	cmp r2, r1
	bne _02255882
_0225587E:
	mov r0, #1
	bx lr
_02255882:
	mov r0, #0
	bx lr
	nop
_02255888: .word 0x000003DE
	thumb_func_end ov16_0225582C

	thumb_func_start ov16_0225588C
ov16_0225588C: ; 0x0225588C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	cmp r1, #0x70
	blo _022558A4
	bl ov16_0223F4BC
	mov r1, #0x70
	bl _u32_div_f
	mov r2, #0
_022558A4:
	lsl r0, r1, #1
	add r0, r1, r0
	ldr r1, _022558C0 ; =0x0226ECD4
	ldrb r1, [r1, r0]
	strb r1, [r5]
	ldr r1, _022558C4 ; =0x0226ECD5
	ldrb r1, [r1, r0]
	strb r1, [r4]
	ldr r1, _022558C8 ; =0x0226ECD6
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	add r0, r2, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022558C0: .word 0x0226ECD4
_022558C4: .word 0x0226ECD5
_022558C8: .word 0x0226ECD6
	thumb_func_end ov16_0225588C

	thumb_func_start ov16_022558CC
ov16_022558CC: ; 0x022558CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02255914 ; =0x0226ECD4
	add r5, r1, #0
	str r0, [sp]
	add r6, r2, #0
	mov r1, #0x28
_022558D8:
	ldrb r2, [r4]
	ldr r0, [sp]
	cmp r0, r2
	bne _02255906
	ldrb r7, [r4, #1]
	cmp r5, r7
	bne _022558F2
	ldrb r0, [r4, #2]
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
_022558F2:
	cmp r6, r7
	bne _02255906
	cmp r5, r6
	beq _02255906
	ldrb r0, [r4, #2]
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
_02255906:
	add r4, r4, #3
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _022558D8
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02255914: .word 0x0226ECD4
	thumb_func_end ov16_022558CC

	thumb_func_start ov16_02255918
ov16_02255918: ; 0x02255918
	cmp r0, #0
	beq _02255940
	cmp r0, #0xd6
	beq _02255940
	ldr r2, _02255948 ; =0x0000017F
	cmp r0, r2
	beq _02255940
	add r1, r2, #0
	sub r1, #0x6d
	cmp r0, r1
	beq _02255940
	sub r1, r2, #1
	cmp r0, r1
	beq _02255940
	ldr r1, _0225594C ; =0x0000FF8A
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _02255944
_02255940:
	mov r0, #1
	bx lr
_02255944:
	mov r0, #0
	bx lr
	; .align 2, 0
_02255948: .word 0x0000017F
_0225594C: .word 0x0000FF8A
	thumb_func_end ov16_02255918

	thumb_func_start ov16_02255950
ov16_02255950: ; 0x02255950
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0xae
	bne _0225597C
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r0, #7
	beq _02255978
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r0, #7
	bne _0225597C
_02255978:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225597C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02255950

	thumb_func_start ov16_02255980
ov16_02255980: ; 0x02255980
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r1, r6, #0
	mov r7, #0
	bl ov16_0223E208
	str r0, [sp]
	ldr r0, _022559D4 ; =0x00002DB8
	add r4, r5, r0
	mov r0, #0xc0
	mul r0, r6
	str r0, [sp, #4]
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _022559CE
	ldr r0, _022559D8 ; =0x0000219C
	add r1, r5, r6
	ldrb r0, [r1, r0]
	bl sub_020787CC
	ldr r1, [sp]
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	bne _022559CE
	ldr r0, [sp, #4]
	ldrh r0, [r4, r0]
	bl sub_0207D2D0
	cmp r0, #0
	bne _022559CE
	mov r7, #1
_022559CE:
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022559D4: .word 0x00002DB8
_022559D8: .word 0x0000219C
	thumb_func_end ov16_02255980

	thumb_func_start ov16_022559DC
ov16_022559DC: ; 0x022559DC
	push {r3, lr}
	mov r2, #0xc0
	mul r2, r1
	add r1, r0, r2
	ldr r0, _022559F8 ; =0x00002DB8
	ldrh r0, [r1, r0]
	bl sub_0207D2D0
	cmp r0, #0
	bne _022559F4
	mov r0, #1
	pop {r3, pc}
_022559F4:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_022559F8: .word 0x00002DB8
	thumb_func_end ov16_022559DC

	thumb_func_start ov16_022559FC
ov16_022559FC: ; 0x022559FC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r2, [r5, #0x6c]
	mov r1, #0xc0
	add r4, r2, #0
	ldr r2, _02255A48 ; =0x00002D74
	mul r4, r1
	add r3, r5, r2
	ldrb r4, [r3, r4]
	ldr r3, [r5, #0x64]
	mov r6, #0
	mul r1, r3
	add r1, r5, r1
	ldrb r1, [r1, r2]
	cmp r1, r4
	blo _02255A20
	mov r6, #1
	b _02255A44
_02255A20:
	bl ov16_0223F4BC
	ldr r2, [r5, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02255A48 ; =0x00002D74
	lsl r0, r0, #0x18
	ldrb r1, [r2, r1]
	lsr r0, r0, #0x18
	add r1, r1, r4
	mul r0, r1
	asr r0, r0, #8
	add r1, r0, #1
	lsr r0, r4, #2
	cmp r1, r0
	ble _02255A44
	mov r6, #1
_02255A44:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02255A48: .word 0x00002D74
	thumb_func_end ov16_022559FC

	thumb_func_start ov16_02255A4C
ov16_02255A4C: ; 0x02255A4C
	push {r4, r5}
	mov r2, #0xc0
	mul r2, r1
	mov r3, #0xb7
	mov r4, #2
	add r5, r0, r2
	lsl r3, r3, #6
	ldr r1, [r5, r3]
	lsl r4, r4, #0x14
	tst r4, r1
	beq _02255A70
	sub r3, #0x59
	ldrb r3, [r5, r3]
	cmp r3, #0x79
	beq _02255A70
	mov r0, #0
	pop {r4, r5}
	bx lr
_02255A70:
	mov r3, #6
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #7
	lsl r3, r3, #0xc
	tst r3, r4
	beq _02255A8E
	ldr r3, _02255AB0 ; =0x00002D67
	add r4, r0, r2
	ldrb r3, [r4, r3]
	cmp r3, #0x1a
	bne _02255A8E
	mov r0, #0
	pop {r4, r5}
	bx lr
_02255A8E:
	mov r3, #1
	lsl r3, r3, #0xa
	tst r1, r3
	beq _02255AA6
	ldr r1, _02255AB0 ; =0x00002D67
	add r3, r0, r2
	ldrb r1, [r3, r1]
	cmp r1, #0x1a
	bne _02255AA6
	mov r0, #0
	pop {r4, r5}
	bx lr
_02255AA6:
	add r1, r0, r2
	ldr r0, _02255AB0 ; =0x00002D67
	ldrb r0, [r1, r0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02255AB0: .word 0x00002D67
	thumb_func_end ov16_02255A4C

	thumb_func_start ov16_02255AB4
ov16_02255AB4: ; 0x02255AB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r4, r3, #0
	mov r6, #0
	bl ov16_02255A4C
	cmp r0, #0x68
	beq _02255AD8
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r4, r0
	bne _02255B06
	mov r6, #1
	b _02255B06
_02255AD8:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r4, r0
	bne _02255B06
	mov r0, #0xb5
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x1c
	mul r0, r7
	ldr r3, [r1, r0]
	lsl r2, r3, #0x1c
	lsr r2, r2, #0x1f
	bne _02255B06
	mov r2, #8
	orr r3, r2
	str r3, [r1, r0]
	ldr r1, _02255B0C ; =0x0000213C
	lsl r0, r2, #0x14
	ldr r3, [r5, r1]
	orr r0, r3
	str r0, [r5, r1]
_02255B06:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02255B0C: .word 0x0000213C
	thumb_func_end ov16_02255AB4

	thumb_func_start ov16_02255B10
ov16_02255B10: ; 0x02255B10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r6, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	str r6, [sp, #0x18]
	bl ov16_0223DF0C
	add r5, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0223DF20
	str r0, [sp, #0x14]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0223DF60
	add r7, r0, #0
	mov r0, #8
	tst r0, r5
	bne _02255B52
	mov r0, #0x10
	tst r0, r5
	beq _02255B66
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0223E1F8
	mov r1, #1
	tst r0, r1
	beq _02255B66
_02255B52:
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r5, #0
	add r1, r0, r4
	ldr r0, _02255BFC ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	b _02255BA2
_02255B66:
	mov r0, #2
	tst r0, r5
	beq _02255B90
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r5, #0
	add r1, r0, r4
	ldr r0, _02255BFC ; =0x0000219C
	ldrb r0, [r1, r0]
	add r1, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov16_0223E258
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r0, _02255BFC ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #8]
	b _02255BA2
_02255B90:
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r5, #0
	add r1, r0, r4
	ldr r0, _02255BFC ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
_02255BA2:
	cmp r5, r7
	bge _02255BEC
_02255BA6:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02255BE6
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02255BE6
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02255BE6
	ldr r0, [sp, #0xc]
	cmp r0, r5
	beq _02255BE6
	ldr r0, [sp, #8]
	cmp r0, r5
	beq _02255BE6
	add r6, r6, #1
_02255BE6:
	add r5, r5, #1
	cmp r5, r7
	blt _02255BA6
_02255BEC:
	ldr r0, [sp, #0x10]
	cmp r6, r0
	blt _02255BF6
	mov r0, #1
	str r0, [sp, #0x18]
_02255BF6:
	ldr r0, [sp, #0x18]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02255BFC: .word 0x0000219C
	thumb_func_end ov16_02255B10

	thumb_func_start ov16_02255C00
ov16_02255C00: ; 0x02255C00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r2, #0
	add r7, r0, #0
	add r4, r3, #0
	bl ov16_0223DF0C
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02258AB8
	str r0, [sp, #8]
	cmp r0, #0x3f
	beq _02255C36
	mov r1, #0xa9
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	tst r0, r1
	bne _02255C36
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	cmp r0, #0x32
	bne _02255C3C
_02255C36:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02255C3C:
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0223E208
	add r0, r7, #0
	bl ov16_0223DF1C
	mov r0, #0x17
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #9
	add r3, r6, #0
	bl ov16_022555A4
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _02255C92
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	cmp r0, #0x17
	beq _02255C92
	cmp r4, #0
	bne _02255C76
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255C76:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov16_02255560
	str r0, [r4, #4]
	mov r0, #0x17
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255C92:
	mov r0, #0x47
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #3
	add r3, r6, #0
	bl ov16_022555A4
	str r0, [sp, #4]
	cmp r0, #0
	beq _02255D44
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	bne _02255D1E
	ldr r0, [sp, #8]
	cmp r0, #0x6a
	beq _02255D1E
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	cmp r0, #0x1a
	beq _02255D44
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	ldr r0, _02255DD8 ; =0x00002DCC
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	bne _02255D44
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r0, #2
	beq _02255D44
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r0, #2
	beq _02255D44
	cmp r4, #0
	bne _02255D02
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255D02:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov16_02255560
	str r0, [r4, #4]
	mov r0, #0x47
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255D1E:
	cmp r4, #0
	bne _02255D28
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255D28:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov16_02255560
	str r0, [r4, #4]
	mov r0, #0x47
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255D44:
	mov r0, #0x2a
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #3
	add r3, r6, #0
	bl ov16_022555A4
	add r7, r0, #0
	beq _02255D9E
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r0, #8
	beq _02255D78
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r0, #8
	bne _02255D9E
_02255D78:
	cmp r4, #0
	bne _02255D82
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255D82:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255560
	str r0, [r4, #4]
	mov r0, #0x2a
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255D9E:
	mov r0, #0xc0
	mul r0, r6
	add r3, r5, r0
	ldr r0, _02255DDC ; =0x00002DB0
	ldr r1, _02255DE0 ; =0x0400E000
	ldr r2, [r3, r0]
	tst r2, r1
	bne _02255DB8
	add r0, #0x10
	ldr r2, [r3, r0]
	lsr r0, r1, #0x10
	tst r0, r2
	beq _02255DD0
_02255DB8:
	cmp r4, #0
	bne _02255DC2
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255DC2:
	mov r0, #0
	strb r0, [r4, #1]
	ldr r0, _02255DE4 ; =0x0000031A
	add sp, #0x14
	strh r0, [r4, #2]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255DD0:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02255DD8: .word 0x00002DCC
_02255DDC: .word 0x00002DB0
_02255DE0: .word 0x0400E000
_02255DE4: .word 0x0000031A
	thumb_func_end ov16_02255C00

	thumb_func_start ov16_02255DE8
ov16_02255DE8: ; 0x02255DE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp]
	bl ov16_0223DF0C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02258AB8
	mov r6, #0
	cmp r0, #0x3f
	bne _02255E1C
	mov r0, #0x75
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r2, r4, #6
	ldr r1, [r3, r2]
	ldr r0, _02255EB4 ; =0xFFFFFE7F
	mov r6, #1
	and r1, r0
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, r2]
	b _02255EB0
_02255E1C:
	mov r0, #0xa9
	lsl r0, r0, #2
	tst r0, r7
	beq _02255E28
	mov r6, #1
	b _02255EB0
_02255E28:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x32
	bne _02255E4C
	mov r1, #0x75
	lsl r1, r1, #2
	add r5, r5, r1
	lsl r3, r4, #6
	ldr r2, [r5, r3]
	ldr r0, _02255EB4 ; =0xFFFFFE7F
	sub r1, #0xd4
	and r0, r2
	orr r0, r1
	str r0, [r5, r3]
	mov r6, #1
	b _02255EB0
_02255E4C:
	mov r0, #1
	add r1, r4, #0
	eor r1, r0
	mov r2, #0xc0
	add r3, r1, #0
	mul r3, r2
	add r1, r5, r3
	ldr r3, _02255EB8 ; =0x00002D46
	mul r2, r4
	add r2, r5, r2
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	cmp r2, r1
	bhs _02255E96
	lsl r0, r2, #7
	bl _s32_div_f
	ldr r1, _02255EBC ; =0x0000311E
	ldrb r2, [r5, r1]
	mov r1, #0x1e
	mul r1, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	bl ov16_0223F4BC
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x18
	sub r2, r2, r1
	mov r0, #0x18
	ror r2, r0
	add r0, r1, r2
	cmp r7, r0
	ble _02255E98
	mov r6, #1
	b _02255E98
_02255E96:
	add r6, r0, #0
_02255E98:
	cmp r6, #0
	bne _02255EA8
	ldr r0, [sp]
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x62
	bl ov16_022666BC
_02255EA8:
	ldr r0, _02255EBC ; =0x0000311E
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
_02255EB0:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02255EB4: .word 0xFFFFFE7F
_02255EB8: .word 0x00002D46
_02255EBC: .word 0x0000311E
	thumb_func_end ov16_02255DE8

	thumb_func_start ov16_02255EC0
ov16_02255EC0: ; 0x02255EC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov16_02255A4C
	cmp r0, #0x36
	bne _02255EEA
	mov r2, #0xc0
	mul r2, r4
	add r3, r5, r2
	ldr r2, _02255EF0 ; =0x00002DC8
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r2, [r3, r2]
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r2, r2, #1
	and r1, r0
	lsr r2, r2, #0x1f
	cmp r1, r2
	bne _02255EEC
_02255EEA:
	mov r0, #0
_02255EEC:
	pop {r3, r4, r5, pc}
	nop
_02255EF0: .word 0x00002DC8
	thumb_func_end ov16_02255EC0

	thumb_func_start ov16_02255EF4
ov16_02255EF4: ; 0x02255EF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0
	str r0, [sp]
	add r4, r2, #0
	add r5, r3, #0
	str r1, [sp, #4]
	bl ov16_0223DF1C
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0223E208
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r7, #0
	cmp r0, #0
	ble _02255F5E
	ldr r4, _02255F64 ; =0x00002D4C
_02255F1E:
	ldr r0, [sp]
	add r1, r7, #0
	bl ov16_0223E208
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _02255F54
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r6, r0]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _02255F54
	mov r1, #0
	add r2, r6, #0
_02255F3E:
	ldrh r0, [r2, r4]
	cmp r5, r0
	beq _02255F4C
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #4
	blt _02255F3E
_02255F4C:
	cmp r1, #4
	beq _02255F54
	mov r0, #1
	str r0, [sp, #4]
_02255F54:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r6, #0xc0
	cmp r7, r0
	blt _02255F1E
_02255F5E:
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02255F64: .word 0x00002D4C
	thumb_func_end ov16_02255EF4

	thumb_func_start ov16_02255F68
ov16_02255F68: ; 0x02255F68
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r6, #0
	bl ov16_0223DF1C
	add r3, r6, #0
	cmp r0, #0
	ble _02255F90
	mov r1, #0xb7
	lsl r1, r1, #6
_02255F7E:
	ldr r2, [r5, r1]
	tst r2, r4
	beq _02255F88
	mov r6, #1
	b _02255F90
_02255F88:
	add r3, r3, #1
	add r5, #0xc0
	cmp r3, r0
	blt _02255F7E
_02255F90:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_02255F68

	thumb_func_start ov16_02255F94
ov16_02255F94: ; 0x02255F94
	ldr r2, _02255FB4 ; =0x0000216C
	mov r0, #0
	str r0, [r1, r2]
	add r0, r2, #0
	mov r3, #1
	sub r0, #0x1c
	str r3, [r1, r0]
	add r0, r2, #0
	sub r0, #0x30
	ldr r3, [r1, r0]
	ldr r0, _02255FB8 ; =0xFFEFFFFF
	sub r2, #0x30
	and r0, r3
	str r0, [r1, r2]
	bx lr
	nop
_02255FB4: .word 0x0000216C
_02255FB8: .word 0xFFEFFFFF
	thumb_func_end ov16_02255F94

	thumb_func_start ov16_02255FBC
ov16_02255FBC: ; 0x02255FBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	bl ov16_0223DF1C
	mov r2, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _02255FE0
	ldr r1, _02256040 ; =0x000021EC
_02255FD2:
	ldr r0, [sp, #8]
	add r0, r0, r2
	strb r2, [r0, r1]
	ldr r0, [sp, #0x14]
	add r2, r2, #1
	cmp r2, r0
	blt _02255FD2
_02255FE0:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _0225603C
_02255FEE:
	ldr r0, [sp, #0x10]
	add r4, r0, #1
	ldr r0, [sp, #0x14]
	cmp r4, r0
	bge _02256030
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x10]
	add r6, r1, r0
_02255FFE:
	ldr r0, _02256040 ; =0x000021EC
	ldr r1, [sp, #8]
	ldrb r0, [r6, r0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r7, r0, r4
	ldr r0, _02256040 ; =0x000021EC
	ldrb r5, [r7, r0]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r5, #0
	bl ov16_02252EC8
	cmp r0, #0
	beq _02256028
	ldr r0, _02256040 ; =0x000021EC
	ldr r1, [sp, #0xc]
	strb r5, [r6, r0]
	strb r1, [r7, r0]
_02256028:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _02255FFE
_02256030:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02255FEE
_0225603C:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02256040: .word 0x000021EC
	thumb_func_end ov16_02255FBC

	thumb_func_start ov16_02256044
ov16_02256044: ; 0x02256044
	push {r3, r4}
	mov r2, #6
	lsl r2, r2, #6
	ldr r2, [r1, r2]
	mov r1, #7
	lsl r1, r1, #0xc
	mov r0, #0
	tst r1, r2
	beq _0225606E
	ldr r4, _02256074 ; =0x0226EBD4
	add r2, r0, #0
_0225605A:
	ldrh r1, [r4]
	cmp r3, r1
	bne _02256066
	mov r0, #1
	pop {r3, r4}
	bx lr
_02256066:
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #6
	blo _0225605A
_0225606E:
	pop {r3, r4}
	bx lr
	nop
_02256074: .word 0x0226EBD4
	thumb_func_end ov16_02256044

	thumb_func_start ov16_02256078
ov16_02256078: ; 0x02256078
	push {r3, r4}
	mov r4, #0xc0
	mul r4, r2
	add r2, r1, r4
	ldr r1, _022560A8 ; =0x00002DCC
	mov r0, #0
	ldr r1, [r2, r1]
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1d
	beq _022560A4
	ldr r4, _022560AC ; =0x0226EBFA
	add r2, r0, #0
_02256090:
	ldrh r1, [r4]
	cmp r3, r1
	bne _0225609C
	mov r0, #1
	pop {r3, r4}
	bx lr
_0225609C:
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #0xe
	blo _02256090
_022560A4:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_022560A8: .word 0x00002DCC
_022560AC: .word 0x0226EBFA
	thumb_func_end ov16_02256078

	thumb_func_start ov16_022560B0
ov16_022560B0: ; 0x022560B0
	push {r4, r5, r6, r7}
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r3, [r1, r0]
	ldr r0, _02256118 ; =0x00000183
	cmp r3, r0
	beq _02256114
	ldr r4, [r1, #0x64]
	mov r0, #0xc0
	add r2, r4, #0
	mul r2, r0
	ldr r4, _0225611C ; =0x00002DCC
	add r0, r1, r2
	ldr r4, [r0, r4]
	lsl r4, r4, #0x13
	lsr r7, r4, #0x1d
	cmp r7, #4
	beq _02256114
	mov r6, #0
	cmp r7, #0
	bls _022560EA
	ldr r4, _02256120 ; =0x00002DF0
_022560DC:
	ldrh r5, [r0, r4]
	cmp r3, r5
	beq _02256114
	add r6, r6, #1
	add r0, r0, #2
	cmp r6, r7
	blo _022560DC
_022560EA:
	add r2, r1, r2
	lsl r0, r6, #1
	add r2, r2, r0
	ldr r0, _02256120 ; =0x00002DF0
	strh r3, [r2, r0]
	sub r0, #0x24
	add r2, r1, r0
	ldr r3, [r1, #0x64]
	mov r0, #0xc0
	add r1, r3, #0
	mul r1, r0
	ldr r3, [r2, r1]
	ldr r0, _02256124 ; =0xFFFFE3FF
	and r0, r3
	lsl r3, r3, #0x13
	lsr r3, r3, #0x1d
	add r3, r3, #1
	lsl r3, r3, #0x1d
	lsr r3, r3, #0x13
	orr r0, r3
	str r0, [r2, r1]
_02256114:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02256118: .word 0x00000183
_0225611C: .word 0x00002DCC
_02256120: .word 0x00002DF0
_02256124: .word 0xFFFFE3FF
	thumb_func_end ov16_022560B0

	thumb_func_start ov16_02256128
ov16_02256128: ; 0x02256128
	mov r3, #0xc0
	mul r3, r2
	add r3, r1, r3
	ldr r1, _02256144 ; =0x00002D4C
	mov r0, #0
_02256132:
	ldrh r2, [r3, r1]
	cmp r2, #0
	beq _02256140
	add r0, r0, #1
	add r3, r3, #2
	cmp r0, #4
	blt _02256132
_02256140:
	bx lr
	nop
_02256144: .word 0x00002D4C
	thumb_func_end ov16_02256128

	thumb_func_start ov16_02256148
ov16_02256148: ; 0x02256148
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	bl ov16_02255A4C
	cmp r0, #0x60
	bne _02256160
	mov r6, #0
	b _02256174
_02256160:
	ldr r0, _022562C4 ; =0x00002160
	ldr r6, [r5, r0]
	cmp r6, #0
	bne _02256174
	ldr r0, _022562C8 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022562CC ; =0x000003E2
	ldrb r6, [r1, r0]
_02256174:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0xa
	bl ov16_02255AB4
	cmp r0, #1
	bne _022561A4
	cmp r6, #0xd
	bne _022561A4
	cmp r7, r4
	beq _022561A4
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _022562D0 ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl ov16_022563F8
	ldr r1, _022562D4 ; =0x0000215C
	str r0, [r5, r1]
	mov r0, #0xb2
	str r0, [sp]
_022561A4:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0xb
	bl ov16_02255AB4
	cmp r0, #1
	bne _022561EA
	cmp r6, #0xb
	bne _022561EA
	ldr r0, _022562D8 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _022561EA
	ldr r0, _022562C8 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022562DC ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _022561EA
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _022562D0 ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl ov16_022563F8
	ldr r1, _022562D4 ; =0x0000215C
	str r0, [r5, r1]
	mov r0, #0xb2
	str r0, [sp]
_022561EA:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0x12
	bl ov16_02255AB4
	cmp r0, #1
	bne _02256230
	cmp r6, #0xa
	bne _02256230
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _022562E0 ; =0x00002DAC
	ldr r0, [r1, r0]
	mov r1, #0x20
	tst r0, r1
	bne _02256230
	ldr r0, _022562D8 ; =0x0000213C
	ldr r0, [r5, r0]
	tst r0, r1
	bne _02256230
	ldr r0, _022562C8 ; =0x00003044
	ldr r3, [r5, r0]
	lsl r0, r3, #4
	add r2, r5, r0
	ldr r0, _022562DC ; =0x000003E1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _0225622C
	add r1, #0xe5
	cmp r3, r1
	bne _02256230
_0225622C:
	mov r0, #0xb3
	str r0, [sp]
_02256230:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0x2b
	bl ov16_02255AB4
	cmp r0, #1
	bne _0225625C
	ldr r0, _022562C8 ; =0x00003044
	ldr r2, _022562E4 ; =0x02270B8C
	ldr r3, [r5, r0]
	mov r1, #0
_02256248:
	ldrh r0, [r2]
	cmp r3, r0
	bne _02256254
	mov r0, #0xb5
	str r0, [sp]
	b _0225625C
_02256254:
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #0xc
	blo _02256248
_0225625C:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0x4e
	bl ov16_02255AB4
	cmp r0, #1
	bne _02256278
	cmp r6, #0xd
	bne _02256278
	cmp r7, r4
	beq _02256278
	mov r0, #0xb6
	str r0, [sp]
_02256278:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0x57
	bl ov16_02255AB4
	cmp r0, #1
	bne _022562BE
	cmp r6, #0xb
	bne _022562BE
	ldr r0, _022562D8 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _022562BE
	ldr r0, _022562C8 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022562DC ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _022562BE
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _022562D0 ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl ov16_022563F8
	ldr r1, _022562D4 ; =0x0000215C
	str r0, [r5, r1]
	mov r0, #0xb2
	str r0, [sp]
_022562BE:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022562C4: .word 0x00002160
_022562C8: .word 0x00003044
_022562CC: .word 0x000003E2
_022562D0: .word 0x00002D90
_022562D4: .word 0x0000215C
_022562D8: .word 0x0000213C
_022562DC: .word 0x000003E1
_022562E0: .word 0x00002DAC
_022562E4: .word 0x02270B8C
	thumb_func_end ov16_02256148

	thumb_func_start ov16_022562E8
ov16_022562E8: ; 0x022562E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r6, #0
	bl ov16_02255A4C
	cmp r0, #3
	beq _02256306
	cmp r0, #0x3d
	beq _0225634C
	b _022563CE
_02256306:
	mov r2, #0xc0
	add r0, r4, #0
	mul r0, r2
	ldr r3, _022563EC ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _022563CE
	add r1, r3, #0
	sub r1, #0x31
	ldrsb r1, [r0, r1]
	cmp r1, #0xc
	bge _022563CE
	add r2, #0x90
	ldr r1, [r5, r2]
	add r3, #0x48
	ldr r0, [r0, r3]
	add r1, r1, #1
	cmp r1, r0
	beq _022563CE
	add r0, r5, #0
	mov r1, #0x11
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x94
	str r4, [r0, #0]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r6, #1
	b _022563CE
_0225634C:
	ldr r1, _022563F0 ; =0x00002DAC
	mov r0, #0xc0
	add r7, r4, #0
	mul r7, r0
	add r0, r5, r1
	str r0, [sp, #8]
	ldr r0, [r0, r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _022563CE
	add r0, r5, r7
	sub r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _022563CE
	ldr r0, [sp]
	bl ov16_0223F4BC
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _022563CE
	ldr r0, [sp, #8]
	mov r1, #7
	ldr r0, [r0, r7]
	tst r1, r0
	beq _0225638E
	mov r0, #0x13
	add r1, r6, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _022563C2
_0225638E:
	ldr r1, _022563F4 ; =0x00000F88
	tst r1, r0
	beq _0225639E
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _022563C2
_0225639E:
	mov r1, #0x10
	tst r1, r0
	beq _022563AE
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _022563C2
_022563AE:
	mov r1, #0x40
	tst r0, r1
	beq _022563BC
	mov r0, #3
	add r1, #0xf0
	str r0, [r5, r1]
	b _022563C2
_022563BC:
	mov r0, #4
	add r1, #0xf0
	str r0, [r5, r1]
_022563C2:
	mov r0, #0x46
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #0xbe
	str r0, [sp, #4]
	mov r6, #1
_022563CE:
	cmp r6, #1
	bne _022563E4
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0x15
	str r0, [r5, #8]
_022563E4:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022563EC: .word 0x00002D8C
_022563F0: .word 0x00002DAC
_022563F4: .word 0x00000F88
	thumb_func_end ov16_022562E8

	thumb_func_start ov16_022563F8
ov16_022563F8: ; 0x022563F8
	push {r4, lr}
	cmp r0, #0
	beq _02256412
	bge _02256406
	mov r4, #0
	mvn r4, r4
	b _02256408
_02256406:
	mov r4, #1
_02256408:
	bl _s32_div_f
	cmp r0, #0
	bne _02256412
	add r0, r4, #0
_02256412:
	pop {r4, pc}
	thumb_func_end ov16_022563F8

	thumb_func_start ov16_02256414
ov16_02256414: ; 0x02256414
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd0
	add r6, r0, #0
	add r5, r1, #0
	bl ov16_0223DF1C
	str r0, [sp, #0x80]
	mov r0, #0
	str r0, [sp, #0x84]
	str r0, [sp, #0xcc]
	thumb_func_end ov16_02256414

	thumb_func_start ov34_02256428
ov34_02256428: ; 0x02256428
	ldr r0, [r5, #0x58]
	cmp r0, #0xf
	bls _02256432
	bl _02257008
_02256432:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225643E: ; jump table
	.short _0225645E - _0225643E - 2 ; case 0
	.short _022564FE - _0225643E - 2 ; case 1
	.short _022565C2 - _0225643E - 2 ; case 2
	.short _022566D2 - _0225643E - 2 ; case 3
	.short _02256778 - _0225643E - 2 ; case 4
	.short _022568AA - _0225643E - 2 ; case 5
	.short _022569EA - _0225643E - 2 ; case 6
	.short _02256BFC - _0225643E - 2 ; case 7
	.short _02256D54 - _0225643E - 2 ; case 8
	.short _02256E2C - _0225643E - 2 ; case 9
	.short _02256EA0 - _0225643E - 2 ; case 10
	.short _02256F2E - _0225643E - 2 ; case 11
	.short _02256F4A - _0225643E - 2 ; case 12
	.short _02256F84 - _0225643E - 2 ; case 13
	.short _02256FC0 - _0225643E - 2 ; case 14
	.short _02257000 - _0225643E - 2 ; case 15
_0225645E:
	ldr r0, _02256748 ; =0x00003121
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _022564F4
	add r0, r6, #0
	bl ov16_0223F21C
	ldr r1, _0225674C ; =0x000003E9
	cmp r0, r1
	bgt _022564A4
	bge _022564D6
	cmp r0, #0xf
	bhi _022564E8
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02256484: ; jump table
	.short _022564E8 - _02256484 - 2 ; case 0
	.short _022564E8 - _02256484 - 2 ; case 1
	.short _022564AC - _02256484 - 2 ; case 2
	.short _022564AC - _02256484 - 2 ; case 3
	.short _022564AC - _02256484 - 2 ; case 4
	.short _022564B6 - _02256484 - 2 ; case 5
	.short _022564B6 - _02256484 - 2 ; case 6
	.short _022564B6 - _02256484 - 2 ; case 7
	.short _022564E8 - _02256484 - 2 ; case 8
	.short _022564E8 - _02256484 - 2 ; case 9
	.short _022564C2 - _02256484 - 2 ; case 10
	.short _022564E8 - _02256484 - 2 ; case 11
	.short _022564E8 - _02256484 - 2 ; case 12
	.short _022564E8 - _02256484 - 2 ; case 13
	.short _022564CC - _02256484 - 2 ; case 14
	.short _022564CC - _02256484 - 2 ; case 15
_022564A4:
	ldr r1, _02256750 ; =0x000003EA
	cmp r0, r1
	beq _022564E0
	b _022564E8
_022564AC:
	ldr r0, _02256754 ; =0x0000010F
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _022564E8
_022564B6:
	mov r0, #0x11
	lsl r0, r0, #4
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _022564E8
_022564C2:
	ldr r0, _02256758 ; =0x00000111
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _022564E8
_022564CC:
	ldr r0, _0225675C ; =0x00000112
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _022564E8
_022564D6:
	ldr r0, _02256760 ; =0x00000126
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _022564E8
_022564E0:
	ldr r0, _02256764 ; =0x00000127
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
_022564E8:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne _022564F4
	ldr r0, _02256748 ; =0x00003121
	mov r1, #1
	strb r1, [r5, r0]
_022564F4:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	bl _02257008
_022564FE:
	ldr r0, [sp, #0x80]
	mov r7, #0
	cmp r0, #0
	ble _022565AE
	ldr r0, _02256768 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0x90]
_0225650C:
	ldr r0, _0225676C ; =0x000021EC
	add r1, r5, r7
	ldrb r4, [r1, r0]
	add r0, r6, #0
	mov r2, #0
	add r1, r4, #0
	bl ov16_0223E2A4
	str r0, [sp, #0x88]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #2
	bl ov16_0223E2A4
	add r3, r0, #0
	ldr r2, [sp, #0x88]
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0225B840
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0xc0
	mul r0, r4
	ldr r1, [sp, #0x90]
	str r0, [sp, #0x8c]
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _022565A6
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0xff
	beq _022565A6
	ldr r0, [sp, #0x8c]
	ldr r2, _02256770 ; =0x00002D8C
	add r0, r5, r0
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _022565A6
	ldr r2, _02256774 ; =0x00002DB8
	ldrh r0, [r0, r2]
	cmp r0, #0x70
	beq _022565A6
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	add r0, r2, #0
	sub r0, #0x2c
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022565A6
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x24
	bne _022565A6
	ldr r1, [sp, #0x90]
	ldr r0, [sp, #0x8c]
	ldr r1, [r1, r0]
	mov r0, #4
	add r2, r1, #0
	orr r2, r0
	ldr r1, [sp, #0x90]
	ldr r0, [sp, #0x8c]
	str r2, [r1, r0]
	mov r0, #0x46
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #0xbb
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _022565AE
_022565A6:
	ldr r0, [sp, #0x80]
	add r7, r7, #1
	cmp r7, r0
	blt _0225650C
_022565AE:
	ldr r0, [sp, #0x80]
	cmp r7, r0
	beq _022565B8
	bl _02257008
_022565B8:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	bl _02257008
_022565C2:
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	ble _022566C0
	ldr r0, _02256768 ; =0x00002D68
	add r7, r5, r0
	mov r0, #1
	str r0, [sp, #0xbc]
	str r0, [sp, #0xb8]
	str r0, [sp, #0xb4]
	str r0, [sp, #0xb0]
_022565DA:
	ldr r0, [sp, #0x2c]
	add r1, r5, r0
	ldr r0, _0225676C ; =0x000021EC
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r7, r4]
	str r1, [sp, #0x10]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _022566A4
	ldr r0, _02256770 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022566A4
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x2d
	bgt _02256610
	bge _02256640
	cmp r0, #2
	beq _0225661E
	b _022566A4
_02256610:
	cmp r0, #0x46
	bgt _02256618
	beq _02256662
	b _022566A4
_02256618:
	cmp r0, #0x75
	beq _02256684
	b _022566A4
_0225661E:
	ldr r0, [r7, r4]
	ldr r1, [sp, #0xb0]
	bic r0, r1
	mov r1, #1
	orr r0, r1
	str r0, [r7, r4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #2
	tst r0, r1
	bne _022566A4
	mov r0, #0xb7
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _022566A4
_02256640:
	ldr r0, [r7, r4]
	ldr r1, [sp, #0xb4]
	bic r0, r1
	mov r1, #1
	orr r0, r1
	str r0, [r7, r4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #8
	tst r0, r1
	bne _022566A4
	mov r0, #0xb8
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _022566A4
_02256662:
	ldr r0, [r7, r4]
	ldr r1, [sp, #0xb8]
	bic r0, r1
	mov r1, #1
	orr r0, r1
	str r0, [r7, r4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _022566A4
	mov r0, #0xb9
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _022566A4
_02256684:
	ldr r0, [r7, r4]
	ldr r1, [sp, #0xbc]
	bic r0, r1
	mov r1, #1
	orr r0, r1
	str r0, [r7, r4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x80
	tst r0, r1
	bne _022566A4
	mov r0, #0xfc
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
_022566A4:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne _022566B4
	mov r1, #0x46
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	str r0, [r5, r1]
	b _022566C0
_022566B4:
	ldr r0, [sp, #0x2c]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x2c]
	cmp r1, r0
	blt _022565DA
_022566C0:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	bne _0225673A
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	bl _02257008
_022566D2:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _02256734
	ldr r0, _02256768 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0x94]
_022566E0:
	ldr r0, _0225676C ; =0x000021EC
	add r1, r5, r4
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r7, r1, #0
	mul r7, r0
	ldr r0, [sp, #0x94]
	str r1, [sp, #0x14]
	ldr r0, [r0, r7]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _0225672C
	ldr r0, _02256770 ; =0x00002D8C
	add r1, r5, r7
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225672C
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x16
	bne _0225672C
	ldr r0, [sp, #0x94]
	ldr r1, [r0, r7]
	mov r0, #2
	orr r1, r0
	ldr r0, [sp, #0x94]
	str r1, [r0, r7]
	mov r1, #0x46
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xba
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256734
_0225672C:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _022566E0
_02256734:
	ldr r0, [sp, #0x80]
	cmp r4, r0
	beq _0225673E
_0225673A:
	bl _02257008
_0225673E:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	bl _02257008
	; .align 2, 0
_02256748: .word 0x00003121
_0225674C: .word 0x000003E9
_02256750: .word 0x000003EA
_02256754: .word 0x0000010F
_02256758: .word 0x00000111
_0225675C: .word 0x00000112
_02256760: .word 0x00000126
_02256764: .word 0x00000127
_02256768: .word 0x00002D68
_0225676C: .word 0x000021EC
_02256770: .word 0x00002D8C
_02256774: .word 0x00002DB8
_02256778:
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bgt _02256784
	b _02256898
_02256784:
	ldr r0, _02256A8C ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0x9c]
_0225678A:
	ldr r0, [sp, #0x30]
	add r1, r5, r0
	ldr r0, _02256A90 ; =0x000021EC
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	mul r0, r1
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x9c]
	str r0, [sp, #0x98]
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _0225688A
	ldr r0, [sp, #0x98]
	add r1, r5, r0
	ldr r0, _02256A94 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225688A
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x58
	bne _0225688A
	mov r0, #0
	str r0, [sp, #0x78]
	str r0, [sp, #0x74]
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	ble _02256844
	add r4, r5, #0
_022567CC:
	ldr r1, [sp, #0x18]
	add r0, r6, #0
	bl ov16_0223E208
	add r7, r0, #0
	ldr r1, [sp, #0x7c]
	add r0, r6, #0
	bl ov16_0223E208
	cmp r7, r0
	beq _02256836
	ldr r0, _02256A98 ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0x18
	tst r0, r1
	bne _02256836
	ldr r0, _02256A94 ; =0x00002D8C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02256836
	ldr r0, _02256A9C ; =0x00002D5A
	ldrsb r0, [r4, r0]
	lsl r2, r0, #1
	ldr r0, _02256AA0 ; =0x0226EBE0
	add r1, r0, r2
	ldr r0, _02256AA4 ; =0x00002D44
	ldrb r1, [r1, #1]
	ldrh r3, [r4, r0]
	ldr r0, _02256AA0 ; =0x0226EBE0
	ldrb r0, [r0, r2]
	mul r0, r3
	bl _s32_div_f
	ldr r1, [sp, #0x78]
	add r0, r1, r0
	str r0, [sp, #0x78]
	ldr r0, _02256AA8 ; =0x00002D5D
	ldrsb r0, [r4, r0]
	lsl r2, r0, #1
	ldr r0, _02256AA0 ; =0x0226EBE0
	add r1, r0, r2
	ldr r0, _02256AAC ; =0x00002D4A
	ldrb r1, [r1, #1]
	ldrh r3, [r4, r0]
	ldr r0, _02256AA0 ; =0x0226EBE0
	ldrb r0, [r0, r2]
	mul r0, r3
	bl _s32_div_f
	ldr r1, [sp, #0x74]
	add r0, r1, r0
	str r0, [sp, #0x74]
_02256836:
	ldr r0, [sp, #0x7c]
	add r4, #0xc0
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x7c]
	cmp r1, r0
	blt _022567CC
_02256844:
	ldr r1, [sp, #0x9c]
	ldr r0, [sp, #0x98]
	ldr r1, [r1, r0]
	mov r0, #8
	add r2, r1, #0
	orr r2, r0
	ldr r1, [sp, #0x9c]
	ldr r0, [sp, #0x98]
	str r2, [r1, r0]
	ldr r1, [sp, #0x78]
	ldr r0, [sp, #0x74]
	add r0, r1, r0
	beq _0225688A
	ldr r0, [sp, #0x74]
	cmp r1, r0
	blt _02256868
	mov r1, #0x12
	b _0225686A
_02256868:
	mov r1, #0xf
_0225686A:
	add r0, r5, #0
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0, #0]
	add r1, r5, #0
	ldr r0, [sp, #0x18]
	add r1, #0x94
	str r0, [r1, #0]
	mov r0, #0xc
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256898
_0225688A:
	ldr r0, [sp, #0x30]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x30]
	cmp r1, r0
	bge _02256898
	b _0225678A
_02256898:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	beq _022568A2
	b _02257008
_022568A2:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02257008
_022568AA:
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bgt _022568B6
	b _022569D8
_022568B6:
	ldr r0, _02256A8C ; =0x00002D68
	add r7, r5, r0
_022568BA:
	ldr r0, [sp, #0x34]
	add r1, r5, r0
	ldr r0, _02256A90 ; =0x000021EC
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r7, r4]
	str r1, [sp, #0x1c]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bne _022569CA
	ldr r0, _02256A94 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022569CA
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x6b
	bne _022569CA
	ldr r1, [r7, r4]
	mov r0, #0x10
	orr r0, r1
	str r0, [r7, r4]
	mov r0, #0
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	ble _022569B6
	add r0, r5, r4
	str r5, [sp, #0x50]
	str r0, [sp, #0x4c]
_02256900:
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	bl ov16_0223E208
	add r4, r0, #0
	ldr r1, [sp, #0x70]
	add r0, r6, #0
	bl ov16_0223E208
	cmp r4, r0
	beq _022569A4
	ldr r1, [sp, #0x50]
	ldr r0, _02256A94 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022569A4
	mov r0, #0
	str r0, [sp, #0x6c]
	add r7, r1, #0
_02256926:
	ldr r0, _02256AB0 ; =0x00002D4C
	ldrh r4, [r7, r0]
	cmp r4, #0
	beq _02256992
	mov r0, #0
	str r0, [sp, #0xc8]
	ldr r0, [sp, #0x70]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, _02256AB4 ; =0x00002144
	mov r3, #0
	ldr r0, [r5, r0]
	str r0, [sp, #8]
	add r0, sp, #0xc8
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ov16_02254FA8
	ldr r1, _02256AB4 ; =0x00002144
	str r0, [r5, r1]
	ldr r1, [sp, #0xc8]
	mov r0, #8
	tst r0, r1
	bne _02256992
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0225B8E4
	cmp r0, #0
	bne _02256992
	ldr r1, [sp, #0xc8]
	mov r0, #2
	tst r0, r1
	bne _0225698C
	lsl r0, r4, #4
	add r1, r5, r0
	ldr r0, _02256AB8 ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x26
	bne _02256992
	ldr r1, [sp, #0x4c]
	ldr r0, _02256ABC ; =0x00002D74
	ldr r2, [sp, #0x50]
	ldrb r0, [r1, r0]
	ldr r1, _02256ABC ; =0x00002D74
	ldrb r1, [r2, r1]
	cmp r0, r1
	bhi _02256992
_0225698C:
	mov r0, #1
	str r0, [sp, #0x84]
	b _0225699E
_02256992:
	ldr r0, [sp, #0x6c]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #0x6c]
	cmp r0, #4
	blt _02256926
_0225699E:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	beq _022569B6
_022569A4:
	ldr r0, [sp, #0x50]
	add r0, #0xc0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x70]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x70]
	cmp r1, r0
	blt _02256900
_022569B6:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne _022569D8
	mov r1, #0x46
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xc2
	str r0, [sp, #0xcc]
	b _022569D8
_022569CA:
	ldr r0, [sp, #0x34]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x34]
	cmp r1, r0
	bge _022569D8
	b _022568BA
_022569D8:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	beq _022569E2
	b _02257008
_022569E2:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02257008
_022569EA:
	mov r0, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bgt _022569F6
	b _02256BEA
_022569F6:
	ldr r0, _02256A8C ; =0x00002D68
	add r7, r5, r0
_022569FA:
	ldr r0, [sp, #0x38]
	add r1, r5, r0
	ldr r0, _02256A90 ; =0x000021EC
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r7, r4]
	str r1, [sp, #0x20]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	bne _02256A28
	ldr r0, _02256A94 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02256A28
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x6c
	beq _02256A2A
_02256A28:
	b _02256BDC
_02256A2A:
	ldr r1, [r7, r4]
	mov r0, #0x20
	orr r0, r1
	str r0, [r7, r4]
	mov r4, #0
	ldr r0, [sp, #0x80]
	str r4, [sp, #0x5c]
	str r4, [sp, #0x68]
	cmp r0, #0
	bgt _02256A40
	b _02256B76
_02256A40:
	str r5, [sp, #0x58]
_02256A42:
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	bl ov16_0223E208
	add r7, r0, #0
	ldr r1, [sp, #0x68]
	add r0, r6, #0
	bl ov16_0223E208
	cmp r7, r0
	bne _02256A5A
	b _02256B62
_02256A5A:
	ldr r1, [sp, #0x58]
	ldr r0, _02256A94 ; =0x00002D8C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02256B62
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	str r0, [sp, #0x5c]
	mov r0, #0
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x54]
_02256A72:
	ldr r1, [sp, #0x54]
	ldr r0, _02256AB0 ; =0x00002D4C
	ldrh r7, [r1, r0]
	ldr r1, _02256AC0 ; =0x000003E1
	lsl r0, r7, #4
	add r0, r5, r0
	ldrb r1, [r0, r1]
	str r1, [sp, #0x60]
	cmp r1, #1
	bne _02256B34
	ldr r1, _02256AB8 ; =0x000003DE
	b _02256AC4
	nop
_02256A8C: .word 0x00002D68
_02256A90: .word 0x000021EC
_02256A94: .word 0x00002D8C
_02256A98: .word 0x00002DB0
_02256A9C: .word 0x00002D5A
_02256AA0: .word 0x0226EBE0
_02256AA4: .word 0x00002D44
_02256AA8: .word 0x00002D5D
_02256AAC: .word 0x00002D4A
_02256AB0: .word 0x00002D4C
_02256AB4: .word 0x00002144
_02256AB8: .word 0x000003DE
_02256ABC: .word 0x00002D74
_02256AC0: .word 0x000003E1
_02256AC4:
	ldrh r0, [r0, r1]
	cmp r0, #0x59
	bgt _02256AD2
	bge _02256AFC
	cmp r0, #0x26
	beq _02256AE0
	b _02256B18
_02256AD2:
	cmp r0, #0x90
	bgt _02256ADA
	beq _02256AFC
	b _02256B18
_02256ADA:
	cmp r0, #0xe3
	beq _02256AFC
	b _02256B18
_02256AE0:
	cmp r4, #0x96
	blo _02256AF2
	bne _02256B52
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _02256B52
_02256AF2:
	mov r4, #0x96
	add r0, r4, #0
	add r0, #0x8e
	str r7, [r5, r0]
	b _02256B52
_02256AFC:
	cmp r4, #0x78
	blo _02256B0E
	bne _02256B52
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _02256B52
_02256B0E:
	mov r4, #0x78
	add r0, r4, #0
	add r0, #0xac
	str r7, [r5, r0]
	b _02256B52
_02256B18:
	cmp r4, #0x50
	blo _02256B2A
	bne _02256B52
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _02256B52
_02256B2A:
	mov r4, #0x50
	add r0, r4, #0
	add r0, #0xd4
	str r7, [r5, r0]
	b _02256B52
_02256B34:
	add r0, r1, #0
	cmp r4, r0
	blo _02256B4A
	cmp r4, r0
	bne _02256B52
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _02256B52
_02256B4A:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r4, [sp, #0x60]
	str r7, [r5, r0]
_02256B52:
	ldr r0, [sp, #0x54]
	add r0, r0, #2
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x64]
	add r0, r0, #1
	str r0, [sp, #0x64]
	cmp r0, #4
	blt _02256A72
_02256B62:
	ldr r0, [sp, #0x58]
	add r0, #0xc0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x68]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x68]
	cmp r1, r0
	bge _02256B76
	b _02256A42
_02256B76:
	cmp r4, #0
	beq _02256B8C
	mov r1, #0x46
	ldr r0, [sp, #0x20]
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xc3
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256BEA
_02256B8C:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _02256BEA
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_02257028
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov16_02256128
	add r4, r0, #0
	add r0, r6, #0
	bl ov16_0223F4BC
	add r1, r4, #0
	bl _s32_div_f
	mov r0, #0xc0
	add r2, r7, #0
	mul r2, r0
	lsl r3, r1, #1
	add r1, r5, r2
	add r2, r3, r1
	ldr r1, _02256EB4 ; =0x00002D4C
	ldrh r2, [r2, r1]
	add r1, r0, #0
	add r1, #0x64
	str r2, [r5, r1]
	ldr r1, [sp, #0x20]
	add r0, #0x58
	str r1, [r5, r0]
	mov r0, #0xc3
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256BEA
_02256BDC:
	ldr r0, [sp, #0x38]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x38]
	cmp r1, r0
	bge _02256BEA
	b _022569FA
_02256BEA:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	beq _02256BF4
	b _02257008
_02256BF4:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02257008
_02256BFC:
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bgt _02256C08
	b _02256D42
_02256C08:
	ldr r0, _02256EB8 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0xa0]
_02256C0E:
	ldr r0, [sp, #0x3c]
	add r1, r5, r0
	ldr r0, _02256EBC ; =0x000021EC
	ldrb r4, [r1, r0]
	mov r0, #0xc0
	add r7, r4, #0
	mul r7, r0
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, r7]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	bne _02256D22
	ldr r0, _02256EC0 ; =0x00002D8C
	add r1, r5, r7
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02256D22
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x77
	bne _02256D22
	ldr r0, [sp, #0xa0]
	ldr r1, [r0, r7]
	mov r0, #1
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, [sp, #0xa0]
	str r1, [r0, r7]
	add r0, r6, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02256CFC
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov16_0223E2A4
	str r0, [sp, #0xc0]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #2
	bl ov16_0223E2A4
	ldr r2, [sp, #0xc0]
	mov r1, #0xc0
	mul r1, r2
	ldr r2, _02256EC0 ; =0x00002D8C
	add r1, r5, r1
	ldr r3, [r1, r2]
	str r0, [sp, #0xc4]
	cmp r3, #0
	beq _02256CC0
	add r2, #0x2c
	ldrh r2, [r1, r2]
	cmp r2, #0
	beq _02256CC0
	mov r2, #0xc0
	mul r2, r0
	add r0, r5, r2
	ldr r2, _02256EC0 ; =0x00002D8C
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _02256CC0
	ldr r2, _02256EC4 ; =0x00002DB8
	ldrh r0, [r0, r2]
	cmp r0, #0
	beq _02256CC0
	add r0, r6, #0
	bl ov16_0223F4BC
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	add r0, sp, #0xc0
	ldr r1, [r0, r1]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02256EC4 ; =0x00002DB8
	ldrh r1, [r1, r0]
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256D22
_02256CC0:
	cmp r3, #0
	beq _02256CD8
	ldr r0, _02256EC4 ; =0x00002DB8
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _02256CD8
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256D22
_02256CD8:
	ldr r1, [sp, #0xc4]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02256EC0 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02256D22
	ldr r1, _02256EC4 ; =0x00002DB8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _02256D22
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256D22
_02256CFC:
	mov r0, #1
	add r1, r4, #0
	eor r1, r0
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02256EC0 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02256D22
	ldr r1, _02256EC4 ; =0x00002DB8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _02256D22
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x84]
_02256D22:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne _02256D34
	mov r0, #0x46
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #0xfd
	str r0, [sp, #0xcc]
	b _02256D42
_02256D34:
	ldr r0, [sp, #0x3c]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x3c]
	cmp r1, r0
	bge _02256D42
	b _02256C0E
_02256D42:
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	beq _02256D4C
	b _02257008
_02256D4C:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02257008
_02256D54:
	mov r0, #0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	ble _02256E1C
	ldr r0, _02256EB8 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0xa4]
_02256D64:
	ldr r0, [sp, #0x40]
	add r1, r5, r0
	ldr r0, _02256EBC ; =0x000021EC
	ldrb r7, [r1, r0]
	mov r0, #0xc0
	add r4, r7, #0
	mul r4, r0
	ldr r0, [sp, #0xa4]
	ldr r0, [r0, r4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bne _02256DC0
	ldr r0, _02256EC0 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r0]
	str r1, [sp, #0x48]
	cmp r0, #0
	beq _02256DC0
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255A4C
	cmp r0, #0x70
	bne _02256DC0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	ldr r1, [sp, #0x48]
	ldr r0, _02256EC8 ; =0x00002DD8
	ldr r0, [r1, r0]
	cmp r2, r0
	bgt _02256DC0
	ldr r0, [sp, #0xa4]
	mov r2, #0x40
	ldr r0, [r0, r4]
	add r1, r0, #0
	orr r1, r2
	ldr r0, [sp, #0xa4]
	add r2, #0xd8
	str r1, [r0, r4]
	str r7, [r5, r2]
	mov r0, #0xc4
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256E1C
_02256DC0:
	ldr r0, [sp, #0xa4]
	ldr r0, [r0, r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _02256E10
	ldr r0, _02256EC0 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r0]
	str r1, [sp, #0x44]
	cmp r0, #0
	beq _02256E10
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255A4C
	cmp r0, #0x70
	bne _02256E10
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	ldr r1, [sp, #0x44]
	ldr r0, _02256EC8 ; =0x00002DD8
	ldr r0, [r1, r0]
	sub r0, r2, r0
	cmp r0, #5
	bne _02256E10
	ldr r0, [sp, #0xa4]
	mov r2, #0x80
	ldr r0, [r0, r4]
	add r1, r0, #0
	orr r1, r2
	ldr r0, [sp, #0xa4]
	add r2, #0x98
	str r1, [r0, r4]
	str r7, [r5, r2]
	mov r0, #0xc5
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256E1C
_02256E10:
	ldr r0, [sp, #0x40]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x40]
	cmp r1, r0
	blt _02256D64
_02256E1C:
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	bne _02256E96
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02257008
_02256E2C:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _02256E90
	ldr r0, _02256EB8 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0xa8]
_02256E3A:
	ldr r0, _02256EBC ; =0x000021EC
	add r1, r5, r4
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r7, r1, #0
	mul r7, r0
	ldr r0, [sp, #0xa8]
	str r1, [sp, #0x24]
	ldr r0, [r0, r7]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	bne _02256E88
	ldr r0, _02256EC0 ; =0x00002D8C
	add r1, r5, r7
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02256E88
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x68
	bne _02256E88
	ldr r0, [sp, #0xa8]
	mov r2, #2
	ldr r0, [r0, r7]
	lsl r2, r2, #8
	add r1, r0, #0
	orr r1, r2
	ldr r0, [sp, #0xa8]
	sub r2, #0xe8
	str r1, [r0, r7]
	ldr r0, [sp, #0x24]
	str r0, [r5, r2]
	mov r0, #0xb1
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256E90
_02256E88:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _02256E3A
_02256E90:
	ldr r0, [sp, #0x80]
	cmp r4, r0
	beq _02256E98
_02256E96:
	b _02257008
_02256E98:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02257008
_02256EA0:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _02256F20
	ldr r0, _02256EB8 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0xac]
_02256EAE:
	ldr r0, _02256EBC ; =0x000021EC
	b _02256ECC
	nop
_02256EB4: .word 0x00002D4C
_02256EB8: .word 0x00002D68
_02256EBC: .word 0x000021EC
_02256EC0: .word 0x00002D8C
_02256EC4: .word 0x00002DB8
_02256EC8: .word 0x00002DD8
_02256ECC:
	add r1, r5, r4
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r7, r1, #0
	mul r7, r0
	ldr r0, [sp, #0xac]
	str r1, [sp, #0x28]
	ldr r0, [r0, r7]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1f
	bne _02256F18
	ldr r0, _02257018 ; =0x00002D8C
	add r1, r5, r7
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02256F18
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x2e
	bne _02256F18
	ldr r0, [sp, #0xac]
	ldr r1, [r0, r7]
	mov r0, #1
	lsl r0, r0, #0xa
	orr r1, r0
	ldr r0, [sp, #0xac]
	str r1, [r0, r7]
	mov r1, #0x46
	ldr r0, [sp, #0x28]
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #5
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256F20
_02256F18:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _02256EAE
_02256F20:
	ldr r0, [sp, #0x80]
	cmp r4, r0
	bne _02257008
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02257008
_02256F2E:
	add r0, r6, #0
	add r1, r5, #0
	add r2, sp, #0xcc
	bl ov16_02259B9C
	cmp r0, #1
	bne _02256F42
	mov r0, #1
	str r0, [sp, #0x84]
	b _02257008
_02256F42:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02257008
_02256F4A:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _02256F7C
	mov r7, #2
_02256F54:
	ldr r1, _0225701C ; =0x000021EC
	add r2, r5, r4
	ldrb r2, [r2, r1]
	mov r1, #0xc0
	add r0, r5, #0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02257020 ; =0x00002DB8
	ldrh r1, [r2, r1]
	mov r2, #1
	bl ov16_0225B0FC
	cmp r0, #0x3a
	bne _02256F74
	ldr r0, _02257024 ; =0x00002168
	str r7, [r5, r0]
_02256F74:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _02256F54
_02256F7C:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02257008
_02256F84:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _02256FB2
	ldr r7, _0225701C ; =0x000021EC
_02256F8E:
	add r2, r5, r4
	ldrb r2, [r2, r7]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov16_02257628
	cmp r0, #1
	bne _02256FAA
	mov r0, #0xdd
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256FB2
_02256FAA:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _02256F8E
_02256FB2:
	ldr r0, [sp, #0x80]
	cmp r4, r0
	bne _02257008
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02257008
_02256FC0:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _02256FF2
_02256FC8:
	ldr r0, _0225701C ; =0x000021EC
	add r1, r5, r4
	ldrb r7, [r1, r0]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, sp, #0xcc
	bl ov16_02258104
	cmp r0, #1
	bne _02256FEA
	mov r0, #0x46
	lsl r0, r0, #2
	str r7, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02256FF2
_02256FEA:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _02256FC8
_02256FF2:
	ldr r0, [sp, #0x80]
	cmp r4, r0
	bne _02257008
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02257008
_02257000:
	mov r0, #0
	str r0, [r5, #0x58]
	mov r0, #2
	str r0, [sp, #0x84]
_02257008:
	ldr r0, [sp, #0x84]
	cmp r0, #0
	bne _02257012
	bl ov34_02256428
_02257012:
	ldr r0, [sp, #0xcc]
	add sp, #0xd0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02257018: .word 0x00002D8C
_0225701C: .word 0x000021EC
_02257020: .word 0x00002DB8
_02257024: .word 0x00002168
	thumb_func_end ov34_02256428

	thumb_func_start ov16_02257028
ov16_02257028: ; 0x02257028
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02257080
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov16_0223E2A4
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov16_0223E2A4
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov16_0223F4BC
	mov r3, #1
	add r2, r0, #0
	and r2, r3
	lsl r0, r2, #2
	add r1, sp, #0
	ldr r0, [r1, r0]
	mov r4, #0xc0
	mul r4, r0
	add r5, r6, r4
	ldr r4, _02257088 ; =0x00002D8C
	ldr r4, [r5, r4]
	cmp r4, #0
	bne _02257084
	add r0, r2, #0
	eor r0, r3
	lsl r0, r0, #2
	add sp, #8
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_02257080:
	mov r0, #1
	eor r0, r4
_02257084:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02257088: .word 0x00002D8C
	thumb_func_end ov16_02257028

	thumb_func_start ov16_0225708C
ov16_0225708C: ; 0x0225708C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5, #0x6c]
	add r7, r0, #0
	add r4, r2, #0
	mov r6, #0
	cmp r1, #0xff
	bne _022570A0
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022570A0:
	add r0, r5, #0
	bl ov16_02259AC0
	cmp r0, #1
	bne _022570AE
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022570AE:
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x26
	bgt _022570DE
	blt _022570BE
	b _02257386
_022570BE:
	cmp r0, #0x10
	bgt _022570CA
	bge _0225718C
	cmp r0, #9
	beq _022570F6
	b _0225760A
_022570CA:
	cmp r0, #0x1b
	bgt _022570DC
	cmp r0, #0x18
	blt _022570DC
	bne _022570D6
	b _02257236
_022570D6:
	cmp r0, #0x1b
	bne _022570DC
	b _022572CA
_022570DC:
	b _0225760A
_022570DE:
	cmp r0, #0x38
	bgt _022570EE
	blt _022570E6
	b _022574E0
_022570E6:
	cmp r0, #0x31
	bne _022570EC
	b _0225744A
_022570EC:
	b _0225760A
_022570EE:
	cmp r0, #0x6a
	bne _022570F4
	b _0225758A
_022570F4:
	b _0225760A
_022570F6:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _022573A8 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _022571D8
	add r1, r3, #0
	add r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _022571D8
	ldr r1, _022573AC ; =0x0000216C
	ldr r0, _022573B0 ; =0x801FDA49
	ldr r2, [r5, r1]
	tst r0, r2
	bne _022571D8
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _022571D8
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	bne _022571D8
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	lsr r1, r3, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _0225714A
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _022571D8
_0225714A:
	ldr r0, _022573B4 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022573B8 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _022571D8
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _022571D8
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x94
	str r1, [r0, #0]
	mov r0, #0x46
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x1f
	str r0, [r4, #0]
	mov r6, #1
	b _0225760A
_0225718C:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x60
	bne _0225719C
	add r7, r6, #0
	b _022571B6
_0225719C:
	ldr r0, _022573BC ; =0x00002160
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022571AA
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	b _022571B6
_022571AA:
	ldr r0, _022573B4 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022573C0 ; =0x000003E2
	ldrb r7, [r1, r0]
_022571B6:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _022573A8 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022571D8
	ldr r0, _022573AC ; =0x0000216C
	ldr r2, [r5, r0]
	ldr r0, _022573B0 ; =0x801FDA49
	tst r0, r2
	bne _022571D8
	ldr r0, _022573B4 ; =0x00003044
	ldr r3, [r5, r0]
	cmp r3, #0xa5
	bne _022571DA
_022571D8:
	b _0225760A
_022571DA:
	mov r0, #0x1c
	ldr r2, _022573A8 ; =0x00002D8C
	mul r0, r1
	add r0, r5, r0
	lsr r2, r2, #4
	ldr r2, [r0, r2]
	cmp r2, #0
	bne _022571F4
	mov r2, #0x2e
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _022572E4
_022571F4:
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	mov r0, #0x10
	tst r0, r2
	bne _022572E4
	lsl r0, r3, #4
	add r2, r5, r0
	ldr r0, _022573C4 ; =0x000003E1
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _022572E4
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r7, r0
	beq _022572E4
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r7, r0
	beq _022572E4
	mov r0, #0xbc
	str r0, [r4, #0]
	add r0, #0x74
	str r7, [r5, r0]
	mov r6, #1
	b _0225760A
_02257236:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _022573A8 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022572E4
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _022572E4
	ldr r1, _022573AC ; =0x0000216C
	ldr r0, _022573B0 ; =0x801FDA49
	ldr r2, [r5, r1]
	tst r0, r2
	bne _022572E4
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _022572E4
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	bne _022572E4
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r2, r5, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0225728A
	add r0, #8
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022572E4
_0225728A:
	ldr r0, _022573B4 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022573B8 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _022572E4
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _022573C8 ; =0x00002D90
	add r2, r5, r2
	ldr r2, [r2, r0]
	sub r1, #0xc1
	add r0, r2, #0
	mul r0, r1
	mov r1, #8
	bl ov16_022563F8
	ldr r1, _022573CC ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	mov r0, #0x46
	ldr r1, [r5, #0x64]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0xbd
	str r0, [r4, #0]
	b _0225760A
_022572CA:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _022573A8 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _022572E4
	add r1, r3, #0
	add r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _022572E6
_022572E4:
	b _0225760A
_022572E6:
	ldr r1, _022573AC ; =0x0000216C
	ldr r0, _022573B0 ; =0x801FDA49
	ldr r2, [r5, r1]
	tst r0, r2
	bne _022573EC
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _022573EC
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	bne _022573EC
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	lsr r1, r3, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02257320
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _022573EC
_02257320:
	ldr r0, _022573B4 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022573B8 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _022573EC
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _022573EC
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #3
	bl _s32_div_f
	cmp r1, #0
	beq _0225735A
	cmp r1, #1
	beq _02257360
	cmp r1, #2
	beq _02257366
_0225735A:
	mov r0, #0x16
	str r0, [r4, #0]
	b _0225736A
_02257360:
	mov r0, #0x1f
	str r0, [r4, #0]
	b _0225736A
_02257366:
	mov r0, #0x12
	str r0, [r4, #0]
_0225736A:
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x94
	str r1, [r0, #0]
	mov r0, #0x46
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r6, #1
	b _0225760A
_02257386:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _022573A8 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _022573EC
	add r1, r3, #0
	add r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _022573EC
	ldr r1, _022573AC ; =0x0000216C
	ldr r0, _022573B0 ; =0x801FDA49
	b _022573D0
	nop
_022573A8: .word 0x00002D8C
_022573AC: .word 0x0000216C
_022573B0: .word 0x801FDA49
_022573B4: .word 0x00003044
_022573B8: .word 0x000003E9
_022573BC: .word 0x00002160
_022573C0: .word 0x000003E2
_022573C4: .word 0x000003E1
_022573C8: .word 0x00002D90
_022573CC: .word 0x0000215C
_022573D0:
	ldr r2, [r5, r1]
	tst r0, r2
	bne _022573EC
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _022573EC
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	beq _022573EE
_022573EC:
	b _0225760A
_022573EE:
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	lsr r1, r3, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02257408
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _022574FE
_02257408:
	ldr r0, _02257610 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02257614 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _022574FE
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _022574FE
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x94
	str r1, [r0, #0]
	mov r0, #0x46
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x16
	str r0, [r4, #0]
	mov r6, #1
	b _0225760A
_0225744A:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _02257618 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _022574FE
	add r1, r3, #0
	add r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _022574FE
	ldr r1, _0225761C ; =0x0000216C
	ldr r0, _02257620 ; =0x801FDA49
	ldr r2, [r5, r1]
	tst r0, r2
	bne _022574FE
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _022574FE
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	bne _022574FE
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	lsr r1, r3, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _0225749E
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _022574FE
_0225749E:
	ldr r0, _02257610 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02257614 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _022574FE
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _022574FE
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x94
	str r1, [r0, #0]
	mov r0, #0x46
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x19
	str r0, [r4, #0]
	mov r6, #1
	b _0225760A
_022574E0:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _02257618 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _022574FE
	add r1, r3, #0
	add r1, #0x24
	ldr r1, [r0, r1]
	mov r0, #0xf
	lsl r0, r0, #0x10
	tst r0, r1
	beq _02257500
_022574FE:
	b _0225760A
_02257500:
	ldr r1, _0225761C ; =0x0000216C
	ldr r0, _02257620 ; =0x801FDA49
	ldr r2, [r5, r1]
	tst r0, r2
	bne _0225760A
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _0225760A
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	bne _0225760A
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	lsr r2, r3, #4
	ldr r2, [r0, r2]
	cmp r2, #0
	bne _0225753A
	mov r2, #0x2e
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _0225760A
_0225753A:
	ldr r0, _02257610 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r2, r5, r0
	ldr r0, _02257614 ; =0x000003E9
	ldrb r2, [r2, r0]
	mov r0, #1
	tst r0, r2
	beq _0225760A
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02257618 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225760A
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _0225760A
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x94
	str r1, [r0, #0]
	mov r0, #0x46
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x6a
	str r0, [r4, #0]
	mov r6, #1
	b _0225760A
_0225758A:
	ldr r1, [r5, #0x6c]
	ldr r0, [r5, #0x74]
	cmp r1, r0
	bne _0225760A
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _0225760A
	mov r0, #6
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	add r3, r6, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0225760A
	mov r2, #0x85
	lsl r2, r2, #6
	ldr r1, [r5, r2]
	mov r0, #0x10
	tst r0, r1
	bne _0225760A
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02257618 ; =0x00002D8C
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _0225760A
	add r2, #0x2c
	ldr r3, [r5, r2]
	ldr r2, _02257620 ; =0x801FDA49
	tst r2, r3
	bne _0225760A
	ldr r2, _02257610 ; =0x00003044
	ldr r2, [r5, r2]
	lsl r2, r2, #4
	add r3, r5, r2
	ldr r2, _02257614 ; =0x000003E9
	ldrb r3, [r3, r2]
	mov r2, #1
	tst r3, r2
	beq _0225760A
	add r0, r0, #4
	ldr r1, [r1, r0]
	sub r0, r2, #2
	mul r0, r1
	mov r1, #4
	bl ov16_022563F8
	ldr r1, _02257624 ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	mov r0, #0x46
	ldr r1, [r5, #0x64]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0xc1
	str r0, [r4, #0]
_0225760A:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02257610: .word 0x00003044
_02257614: .word 0x000003E9
_02257618: .word 0x00002D8C
_0225761C: .word 0x0000216C
_02257620: .word 0x801FDA49
_02257624: .word 0x0000215C
	thumb_func_end ov16_0225708C

	thumb_func_start ov16_02257628
ov16_02257628: ; 0x02257628
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r2, #0
	add r0, r4, #0
	add r1, r5, #0
	add r7, r3, #0
	mov r6, #0
	bl ov16_02255A4C
	cmp r0, #0x28
	bgt _0225766E
	bge _02257708
	cmp r0, #7
	bgt _02257648
	beq _022576B6
	b _02257760
_02257648:
	add r1, r0, #0
	sub r1, #0xc
	cmp r1, #8
	bhi _02257678
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225765C: ; jump table
	.short _02257724 - _0225765C - 2 ; case 0
	.short _02257760 - _0225765C - 2 ; case 1
	.short _02257760 - _0225765C - 2 ; case 2
	.short _022576D0 - _0225765C - 2 ; case 3
	.short _02257760 - _0225765C - 2 ; case 4
	.short _02257680 - _0225765C - 2 ; case 5
	.short _02257760 - _0225765C - 2 ; case 6
	.short _02257760 - _0225765C - 2 ; case 7
	.short _0225769A - _0225765C - 2 ; case 8
_0225766E:
	cmp r0, #0x48
	bgt _0225767A
	bge _022576D0
	cmp r0, #0x29
	beq _022576EC
_02257678:
	b _02257760
_0225767A:
	cmp r0, #0x54
	beq _02257742
	b _02257760
_02257680:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02257794 ; =0x00002DAC
	ldr r2, [r2, r1]
	ldr r1, _02257798 ; =0x00000F88
	tst r1, r2
	beq _02257760
	mov r6, #1
	add r0, #0x70
	str r6, [r4, r0]
	b _02257760
_0225769A:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _0225779C ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #7
	tst r1, r2
	beq _02257760
	mov r1, #5
	add r0, #0x70
	str r1, [r4, r0]
	mov r6, #1
	b _02257760
_022576B6:
	mov r0, #0xc0
	mul r0, r5
	add r1, r4, r0
	ldr r0, _02257794 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r1, r0
	beq _02257760
	mov r1, #3
	add r0, #0xf0
	str r1, [r4, r0]
	mov r6, #1
	b _02257760
_022576D0:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02257794 ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #7
	tst r1, r2
	beq _02257760
	mov r1, #0
	add r0, #0x70
	str r1, [r4, r0]
	mov r6, #1
	b _02257760
_022576EC:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02257794 ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #0x10
	tst r1, r2
	beq _02257760
	mov r1, #2
	add r0, #0x70
	str r1, [r4, r0]
	mov r6, #1
	b _02257760
_02257708:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02257794 ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #0x20
	tst r1, r2
	beq _02257760
	mov r1, #4
	add r0, #0x70
	str r1, [r4, r0]
	mov r6, #1
	b _02257760
_02257724:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _0225779C ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #0xf
	lsl r1, r1, #0x10
	tst r1, r2
	beq _02257760
	mov r1, #6
	add r0, #0x70
	str r1, [r4, r0]
	mov r6, #1
	b _02257760
_02257742:
	mov r0, #0xc0
	add r3, r5, #0
	mul r3, r0
	ldr r0, _022577A0 ; =0x00002DB8
	add r1, r4, r3
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _02257760
	add r0, #0x14
	add r2, r4, r0
	mov r0, #1
	ldr r1, [r2, r3]
	lsl r0, r0, #0x16
	orr r0, r1
	str r0, [r2, r3]
_02257760:
	cmp r6, #1
	bne _0225778E
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02255A4C
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r4, r1]
	cmp r7, #0
	bne _0225778E
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xdd
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_0225778E:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02257794: .word 0x00002DAC
_02257798: .word 0x00000F88
_0225779C: .word 0x00002DB0
_022577A0: .word 0x00002DB8
	thumb_func_end ov16_02257628

	thumb_func_start ov16_022577A4
ov16_022577A4: ; 0x022577A4
	mov r0, #0
	cmp r1, #0x28
	bgt _022577C4
	bge _022577FA
	cmp r1, #7
	bgt _022577B4
	beq _022577DC
	bx lr
_022577B4:
	cmp r1, #0x11
	bgt _02257802
	cmp r1, #0xf
	blt _02257802
	beq _022577E6
	cmp r1, #0x11
	beq _022577D2
	bx lr
_022577C4:
	cmp r1, #0x29
	bgt _022577CC
	beq _022577F0
	bx lr
_022577CC:
	cmp r1, #0x48
	beq _022577E6
	bx lr
_022577D2:
	ldr r1, _02257804 ; =0x00000F88
	tst r1, r2
	beq _02257802
	mov r0, #1
	bx lr
_022577DC:
	mov r1, #0x40
	tst r1, r2
	beq _02257802
	mov r0, #1
	bx lr
_022577E6:
	mov r1, #7
	tst r1, r2
	beq _02257802
	mov r0, #1
	bx lr
_022577F0:
	mov r1, #0x10
	tst r1, r2
	beq _02257802
	mov r0, #1
	bx lr
_022577FA:
	mov r1, #0x20
	tst r1, r2
	beq _02257802
	mov r0, #1
_02257802:
	bx lr
	; .align 2, 0
_02257804: .word 0x00000F88
	thumb_func_end ov16_022577A4

	thumb_func_start ov16_02257808
ov16_02257808: ; 0x02257808
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r4, r1, #0
	str r5, [sp]
	ldr r1, [r4, #0x6c]
	add r7, r0, #0
	add r6, r2, #0
	cmp r1, #0xff
	beq _0225784A
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x1c
	bne _0225784A
	add r1, r4, #0
	add r1, #0x94
	ldr r0, [r4, #0x6c]
	ldr r1, [r1, #0]
	cmp r0, r1
	bne _0225784A
	ldr r1, _02257998 ; =0x0000213C
	ldr r2, [r4, r1]
	mov r1, #0x80
	tst r2, r1
	beq _0225784A
	add r1, #0x98
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, #0x64]
	add r0, #0x94
	str r1, [r0, #0]
	mov r5, #1
	b _0225787A
_0225784A:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x1c
	bne _0225787A
	add r1, r4, #0
	add r1, #0x94
	ldr r0, [r4, #0x64]
	ldr r1, [r1, #0]
	cmp r0, r1
	bne _0225787A
	ldr r1, _02257998 ; =0x0000213C
	ldr r2, [r4, r1]
	mov r1, #0x80
	tst r2, r1
	beq _0225787A
	add r1, #0x98
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, #0x6c]
	add r0, #0x94
	str r1, [r0, #0]
	mov r5, #1
_0225787A:
	cmp r5, #1
	bne _022578D2
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0225799C ; =0x00002DAC
	ldr r0, [r1, r0]
	ldr r1, _022579A0 ; =0x00000F88
	tst r1, r0
	beq _0225789A
	mov r0, #0x16
	str r0, [sp]
	b _022578B0
_0225789A:
	mov r1, #0x10
	tst r1, r0
	beq _022578A6
	mov r0, #0x19
	str r0, [sp]
	b _022578B0
_022578A6:
	mov r1, #0x40
	tst r0, r1
	beq _022578B0
	mov r0, #0x1f
	str r0, [sp]
_022578B0:
	ldr r0, [sp]
	cmp r0, #0
	beq _022578D2
	add r0, r4, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0, #0]
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	str r6, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022578D2:
	add r0, r7, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov16_02259B9C
	add r5, r0, #0
	cmp r5, #1
	bne _022578F6
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	str r6, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022578F6:
	ldr r1, [r4, #0x6c]
	cmp r1, #0xff
	beq _02257936
	add r0, r4, #0
	bl ov16_02258AB8
	cmp r0, #0x6c
	bne _02257936
	add r1, r4, #0
	add r1, #0x94
	ldr r0, [r4, #0x6c]
	ldr r1, [r1, #0]
	cmp r0, r1
	bne _02257936
	mov r1, #0x1c
	add r2, r0, #0
	mul r2, r1
	add r3, r4, r2
	mov r2, #0xba
	lsl r2, r2, #2
	ldr r3, [r3, r2]
	mov r2, #4
	tst r2, r3
	beq _02257936
	add r1, #0xfc
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, #0x64]
	add r0, #0x94
	str r1, [r0, #0]
	mov r5, #1
	b _02257970
_02257936:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02258AB8
	cmp r0, #0x6c
	bne _02257970
	add r1, r4, #0
	add r1, #0x94
	ldr r0, [r4, #0x64]
	ldr r1, [r1, #0]
	cmp r0, r1
	bne _02257970
	mov r1, #0x1c
	add r2, r0, #0
	mul r2, r1
	add r3, r4, r2
	mov r2, #0xba
	lsl r2, r2, #2
	ldr r3, [r3, r2]
	mov r2, #4
	tst r2, r3
	beq _02257970
	add r1, #0xfc
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, #0x6c]
	add r0, #0x94
	str r1, [r0, #0]
	mov r5, #1
_02257970:
	cmp r5, #1
	bne _02257994
	mov r0, #0x6a
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	add r0, #0x88
	str r1, [r0, #0]
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02251E1C
	str r6, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02257994:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02257998: .word 0x0000213C
_0225799C: .word 0x00002DAC
_022579A0: .word 0x00000F88
	thumb_func_end ov16_02257808

	thumb_func_start ov16_022579A4
ov16_022579A4: ; 0x022579A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r4, r1, #0
	mov r0, #0
	str r0, [sp, #0xc]
	str r2, [sp, #4]
	add r0, r4, #0
	add r1, r2, #0
	bl ov16_02258AB8
	str r0, [sp, #0x10]
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov16_02258ACC
	add r6, r0, #0
	ldr r0, [sp, #4]
	mov r3, #0xc0
	add r5, r0, #0
	ldr r0, _02257CC8 ; =0x00002D8C
	mul r5, r3
	add r1, r4, r0
	ldr r2, [r1, r5]
	str r1, [sp, #0x14]
	cmp r2, #0
	bne _022579DE
	b _02257FD4
_022579DE:
	ldr r1, [sp, #0x10]
	cmp r1, #0x36
	bls _022579E6
	b _02257FA6
_022579E6:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022579F2: ; jump table
	.short _02257FA6 - _022579F2 - 2 ; case 0
	.short _02257A60 - _022579F2 - 2 ; case 1
	.short _02257FA6 - _022579F2 - 2 ; case 2
	.short _02257FA6 - _022579F2 - 2 ; case 3
	.short _02257FA6 - _022579F2 - 2 ; case 4
	.short _02257A9A - _022579F2 - 2 ; case 5
	.short _02257AAE - _022579F2 - 2 ; case 6
	.short _02257AC2 - _022579F2 - 2 ; case 7
	.short _02257AD6 - _022579F2 - 2 ; case 8
	.short _02257AEA - _022579F2 - 2 ; case 9
	.short _02257B00 - _022579F2 - 2 ; case 10
	.short _02257B62 - _022579F2 - 2 ; case 11
	.short _02257B76 - _022579F2 - 2 ; case 12
	.short _02257A78 - _022579F2 - 2 ; case 13
	.short _02257BD4 - _022579F2 - 2 ; case 14
	.short _02257C10 - _022579F2 - 2 ; case 15
	.short _02257C4E - _022579F2 - 2 ; case 16
	.short _02257C8A - _022579F2 - 2 ; case 17
	.short _02257CE4 - _022579F2 - 2 ; case 18
	.short _02257FA6 - _022579F2 - 2 ; case 19
	.short _02257FA6 - _022579F2 - 2 ; case 20
	.short _02257FA6 - _022579F2 - 2 ; case 21
	.short _02257FA6 - _022579F2 - 2 ; case 22
	.short _02257FA6 - _022579F2 - 2 ; case 23
	.short _02257FA6 - _022579F2 - 2 ; case 24
	.short _02257FA6 - _022579F2 - 2 ; case 25
	.short _02257FA6 - _022579F2 - 2 ; case 26
	.short _02257FA6 - _022579F2 - 2 ; case 27
	.short _02257FA6 - _022579F2 - 2 ; case 28
	.short _02257FA6 - _022579F2 - 2 ; case 29
	.short _02257FA6 - _022579F2 - 2 ; case 30
	.short _02257FA6 - _022579F2 - 2 ; case 31
	.short _02257FA6 - _022579F2 - 2 ; case 32
	.short _02257FA6 - _022579F2 - 2 ; case 33
	.short _02257FA6 - _022579F2 - 2 ; case 34
	.short _02257FA6 - _022579F2 - 2 ; case 35
	.short _02257D20 - _022579F2 - 2 ; case 36
	.short _02257D66 - _022579F2 - 2 ; case 37
	.short _02257DAC - _022579F2 - 2 ; case 38
	.short _02257DF2 - _022579F2 - 2 ; case 39
	.short _02257E38 - _022579F2 - 2 ; case 40
	.short _02257E80 - _022579F2 - 2 ; case 41
	.short _02257EC2 - _022579F2 - 2 ; case 42
	.short _02257FA6 - _022579F2 - 2 ; case 43
	.short _02257F74 - _022579F2 - 2 ; case 44
	.short _02257FA6 - _022579F2 - 2 ; case 45
	.short _02257FA6 - _022579F2 - 2 ; case 46
	.short _02257FA6 - _022579F2 - 2 ; case 47
	.short _02257FA6 - _022579F2 - 2 ; case 48
	.short _02257F30 - _022579F2 - 2 ; case 49
	.short _02257FA6 - _022579F2 - 2 ; case 50
	.short _02257FA6 - _022579F2 - 2 ; case 51
	.short _02257FA6 - _022579F2 - 2 ; case 52
	.short _02257FA6 - _022579F2 - 2 ; case 53
	.short _02257F58 - _022579F2 - 2 ; case 54
_02257A60:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r0, r0, #1
	cmp r2, r0
	bhi _02257AF6
	ldr r0, _02257CCC ; =0x0000215C
	mov r7, #0xc6
	str r6, [r4, r0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02257FA6
_02257A78:
	add r1, r4, r5
	add r0, r0, #4
	ldr r1, [r1, r0]
	lsr r0, r1, #1
	cmp r2, r0
	bhi _02257AF6
	add r0, r6, #0
	mul r0, r1
	mov r1, #0x64
	bl ov16_022563F8
	ldr r1, _02257CCC ; =0x0000215C
	mov r7, #0xc6
	str r0, [r4, r1]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02257FA6
_02257A9A:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _02257AF6
	mov r0, #1
	mov r7, #0xc7
	str r0, [sp, #0xc]
	b _02257FA6
_02257AAE:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02257AF6
	mov r0, #1
	mov r7, #0xc8
	str r0, [sp, #0xc]
	b _02257FA6
_02257AC2:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	ldr r0, _02257CD0 ; =0x00000F88
	tst r0, r1
	beq _02257AF6
	mov r0, #1
	mov r7, #0xc9
	str r0, [sp, #0xc]
	b _02257FA6
_02257AD6:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x10
	tst r0, r1
	beq _02257AF6
	mov r0, #1
	mov r7, #0xca
	str r0, [sp, #0xc]
	b _02257FA6
_02257AEA:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02257AF8
_02257AF6:
	b _02257FA6
_02257AF8:
	mov r0, #1
	mov r7, #0xcb
	str r0, [sp, #0xc]
	b _02257FA6
_02257B00:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, r5
	ldr r3, _02257CD4 ; =0x00002D4C
	add r1, r0, #0
_02257B0A:
	ldrh r2, [r0, r3]
	cmp r2, #0
	beq _02257B18
	ldr r2, _02257CD8 ; =0x00002D6C
	ldrb r2, [r1, r2]
	cmp r2, #0
	beq _02257B26
_02257B18:
	ldr r2, [sp, #8]
	add r0, r0, #2
	add r2, r2, #1
	add r1, r1, #1
	str r2, [sp, #8]
	cmp r2, #4
	blt _02257B0A
_02257B26:
	ldr r0, [sp, #8]
	cmp r0, #4
	beq _02257C1C
	mov r0, #0xb5
	lsl r0, r0, #6
	ldr r1, [sp, #8]
	add r0, r4, r0
	add r0, r0, r5
	add r1, #0x1f
	add r2, r6, #0
	bl ov16_02252A2C
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl ov16_02253EC0
	ldr r0, [sp, #8]
	add r1, r4, r5
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, _02257CD4 ; =0x00002D4C
	mov r7, #0xcc
	ldrh r1, [r1, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02257FA6
_02257B62:
	add r1, r4, r5
	add r0, #0x24
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02257C1C
	mov r0, #1
	mov r7, #0xcd
	str r0, [sp, #0xc]
	b _02257FA6
_02257B76:
	add r2, r0, #0
	add r1, r4, r5
	add r2, #0x20
	ldr r2, [r1, r2]
	lsl r3, r2, #0x18
	lsr r3, r3, #0x18
	bne _02257B8E
	add r0, #0x24
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02257C1C
_02257B8E:
	mov r0, #0x40
	tst r0, r2
	beq _02257B96
	mov r7, #0xc7
_02257B96:
	mov r0, #7
	tst r0, r2
	beq _02257B9E
	mov r7, #0xc8
_02257B9E:
	ldr r0, _02257CD0 ; =0x00000F88
	tst r0, r2
	beq _02257BA6
	mov r7, #0xc9
_02257BA6:
	mov r0, #0x10
	tst r0, r2
	beq _02257BAE
	mov r7, #0xca
_02257BAE:
	mov r0, #0x20
	tst r0, r2
	beq _02257BB6
	mov r7, #0xcb
_02257BB6:
	ldr r0, _02257CDC ; =0x00002DB0
	add r1, r4, r5
	ldr r1, [r1, r0]
	mov r0, #7
	and r0, r1
	beq _02257BC4
	mov r7, #0xcd
_02257BC4:
	cmp r3, #0
	beq _02257BCE
	cmp r0, #0
	beq _02257BCE
	mov r7, #0xce
_02257BCE:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02257FA6
_02257BD4:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _02257C1C
	add r1, r6, #0
	bl ov16_022563F8
	ldr r1, _02257CCC ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02257CE0 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02257C08
	mov r7, #0xcf
	b _02257C0A
_02257C08:
	mov r7, #0xc6
_02257C0A:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02257FA6
_02257C10:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bls _02257C1E
_02257C1C:
	b _02257FA6
_02257C1E:
	add r1, r6, #0
	bl ov16_022563F8
	ldr r1, _02257CCC ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02257CE0 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02257C46
	mov r7, #0xcf
	b _02257C48
_02257C46:
	mov r7, #0xc6
_02257C48:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02257FA6
_02257C4E:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _02257D56
	add r1, r6, #0
	bl ov16_022563F8
	ldr r1, _02257CCC ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02257CE0 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02257C82
	mov r7, #0xcf
	b _02257C84
_02257C82:
	mov r7, #0xc6
_02257C84:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02257FA6
_02257C8A:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _02257D56
	add r1, r6, #0
	bl ov16_022563F8
	ldr r1, _02257CCC ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02257CE0 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02257CBE
	mov r7, #0xcf
	b _02257CC0
_02257CBE:
	mov r7, #0xc6
_02257CC0:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02257FA6
	nop
_02257CC8: .word 0x00002D8C
_02257CCC: .word 0x0000215C
_02257CD0: .word 0x00000F88
_02257CD4: .word 0x00002D4C
_02257CD8: .word 0x00002D6C
_02257CDC: .word 0x00002DB0
_02257CE0: .word 0x00002DA8
_02257CE4:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _02257D56
	add r1, r6, #0
	bl ov16_022563F8
	ldr r1, _02257FDC ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02257FE0 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02257D18
	mov r7, #0xcf
	b _02257D1A
_02257D18:
	mov r7, #0xc6
_02257D1A:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02257FA6
_02257D20:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _02257D32
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02257D32:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02257FE4 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02257D56
	ldr r0, _02257FE8 ; =0x00002D59
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	blt _02257D58
_02257D56:
	b _02257FA6
_02257D58:
	mov r1, #0x13
	mov r0, #1
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	str r0, [r4, r1]
	mov r7, #0xd0
	b _02257FA6
_02257D66:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _02257D78
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02257D78:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02257FE4 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02257E6E
	ldr r0, _02257FEC ; =0x00002D5A
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _02257E6E
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	mov r7, #0xd0
	str r0, [sp, #0xc]
	b _02257FA6
_02257DAC:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _02257DBE
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02257DBE:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02257FE4 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02257E6E
	ldr r0, _02257FF0 ; =0x00002D5B
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _02257E6E
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	mov r7, #0xd0
	str r0, [sp, #0xc]
	b _02257FA6
_02257DF2:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _02257E04
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02257E04:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02257FE4 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02257E6E
	ldr r0, _02257FF4 ; =0x00002D5C
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _02257E6E
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	mov r7, #0xd0
	str r0, [sp, #0xc]
	b _02257FA6
_02257E38:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _02257E4A
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02257E4A:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02257FE4 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02257E6E
	ldr r0, _02257FF8 ; =0x00002D5D
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	blt _02257E70
_02257E6E:
	b _02257FA6
_02257E70:
	mov r0, #0x13
	mov r1, #5
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	mov r7, #0xd0
	str r0, [sp, #0xc]
	b _02257FA6
_02257E80:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _02257E92
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02257E92:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02257FE4 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02257FA6
	ldr r0, _02257FFC ; =0x00002DB0
	add r1, r4, r5
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x14
	tst r0, r1
	bne _02257FA6
	mov r0, #1
	mov r7, #0xd1
	str r0, [sp, #0xc]
	b _02257FA6
_02257EC2:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _02257ED4
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02257ED4:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02257FE4 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02257FA6
	ldr r0, _02257FE8 ; =0x00002D59
	mov r2, #0
	add r3, r4, r5
_02257EF4:
	ldrsb r1, [r3, r0]
	cmp r1, #0xc
	blt _02257F02
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #5
	blt _02257EF4
_02257F02:
	cmp r2, #5
	beq _02257FA6
	ldr r6, _02257FE8 ; =0x00002D59
	add r5, r4, r5
	mov r7, #5
_02257F0C:
	ldr r0, [sp]
	bl ov16_0223F4BC
	add r1, r7, #0
	bl _s32_div_f
	add r0, r5, r1
	ldrsb r0, [r0, r6]
	cmp r0, #0xc
	beq _02257F0C
	mov r0, #0x13
	add r1, r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	mov r7, #0xd2
	str r0, [sp, #0xc]
	b _02257FA6
_02257F30:
	ldr r6, _02258000 ; =0x00002D58
	add r1, r4, r5
	mov r0, #0
	mov r5, #6
	add r3, r6, #0
_02257F3A:
	ldrsb r2, [r1, r3]
	cmp r2, #6
	bge _02257F46
	mov r2, #1
	strb r5, [r1, r6]
	str r2, [sp, #0xc]
_02257F46:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #8
	blt _02257F3A
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02257FA6
	mov r7, #0xd3
	b _02257FA6
_02257F58:
	add r1, r4, r5
	add r0, #0x24
	ldr r1, [r1, r0]
	mov r0, #0xf
	lsl r0, r0, #0x10
	tst r0, r1
	beq _02257FA6
	mov r0, #6
	add r3, #0x70
	str r0, [r4, r3]
	mov r0, #1
	mov r7, #0xd4
	str r0, [sp, #0xc]
	b _02257FA6
_02257F74:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _02257F86
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02257F86:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02257FE4 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02257FA6
	mov r0, #1
	ldr r7, _02258004 ; =0x00000109
	str r0, [sp, #0xc]
_02257FA6:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02257FD4
	mov r1, #0x46
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02258874
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl ov16_02251E1C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x15
	str r0, [r4, #8]
_02257FD4:
	ldr r0, [sp, #0xc]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02257FDC: .word 0x0000215C
_02257FE0: .word 0x00002DA8
_02257FE4: .word 0x00002D90
_02257FE8: .word 0x00002D59
_02257FEC: .word 0x00002D5A
_02257FF0: .word 0x00002D5B
_02257FF4: .word 0x00002D5C
_02257FF8: .word 0x00002D5D
_02257FFC: .word 0x00002DB0
_02258000: .word 0x00002D58
_02258004: .word 0x00000109
	thumb_func_end ov16_022579A4

	thumb_func_start ov16_02258008
ov16_02258008: ; 0x02258008
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	mov r7, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02258AB8
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov16_02258ACC
	mov r0, #0xc0
	add r4, r6, #0
	mul r4, r0
	ldr r0, _022580F8 ; =0x00002D8C
	add r1, r5, r0
	str r1, [sp, #8]
	ldr r1, [r1, r4]
	cmp r1, #0
	beq _022580F2
	ldr r2, [sp, #4]
	cmp r2, #0x45
	beq _02258046
	add r0, r2, #0
	cmp r0, #0x6d
	beq _02258062
	b _022580C8
_02258046:
	add r2, r5, r4
	add r0, r0, #4
	ldr r0, [r2, r0]
	cmp r1, r0
	bhs _022580C8
	mov r1, #0x10
	bl ov16_022563F8
	ldr r1, _022580FC ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	mov r0, #0xd5
	str r0, [sp]
	b _022580C8
_02258062:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	add r3, r7, #0
	bl ov16_02252060
	cmp r0, #3
	beq _02258082
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	add r3, r7, #0
	bl ov16_02252060
	cmp r0, #3
	bne _022580A2
_02258082:
	ldr r0, _02258100 ; =0x00002D90
	add r1, r5, r4
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	ldr r1, [r1, r4]
	cmp r1, r0
	bhs _022580C8
	mov r1, #0x10
	bl ov16_022563F8
	ldr r1, _022580FC ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	mov r0, #0xd5
	str r0, [sp]
	b _022580C8
_022580A2:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _022580C8
	ldr r0, _02258100 ; =0x00002D90
	add r1, r5, r4
	ldr r1, [r1, r0]
	sub r0, r7, #1
	mul r0, r1
	mov r1, #8
	bl ov16_022563F8
	ldr r1, _022580FC ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	mov r0, #0xd7
	str r0, [sp]
_022580C8:
	cmp r7, #1
	bne _022580F2
	mov r0, #0x46
	lsl r0, r0, #2
	str r6, [r5, r0]
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02258874
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r2, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0x15
	str r0, [r5, #8]
_022580F2:
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022580F8: .word 0x00002D8C
_022580FC: .word 0x0000215C
_02258100: .word 0x00002D90
	thumb_func_end ov16_02258008

	thumb_func_start ov16_02258104
ov16_02258104: ; 0x02258104
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r4, r1, #0
	mov r0, #0
	str r0, [sp, #0xc]
	str r2, [sp, #4]
	add r0, r4, #0
	add r1, r2, #0
	add r6, r3, #0
	bl ov16_02258AB8
	str r0, [sp, #0x10]
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov16_02258ACC
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r3, #0xc0
	add r5, r0, #0
	ldr r0, _02258428 ; =0x00002D8C
	mul r5, r3
	add r1, r4, r0
	ldr r2, [r1, r5]
	str r1, [sp, #0x14]
	cmp r2, #0
	bne _02258140
	b _0225879E
_02258140:
	ldr r1, [sp, #0x10]
	cmp r1, #0x36
	bhi _022581CC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02258152: ; jump table
	.short _0225878A - _02258152 - 2 ; case 0
	.short _022581C0 - _02258152 - 2 ; case 1
	.short _0225878A - _02258152 - 2 ; case 2
	.short _0225878A - _02258152 - 2 ; case 3
	.short _0225878A - _02258152 - 2 ; case 4
	.short _02258200 - _02258152 - 2 ; case 5
	.short _02258216 - _02258152 - 2 ; case 6
	.short _0225822C - _02258152 - 2 ; case 7
	.short _02258242 - _02258152 - 2 ; case 8
	.short _02258258 - _02258152 - 2 ; case 9
	.short _0225826E - _02258152 - 2 ; case 10
	.short _022582D2 - _02258152 - 2 ; case 11
	.short _022582EA - _02258152 - 2 ; case 12
	.short _022581DC - _02258152 - 2 ; case 13
	.short _022583E6 - _02258152 - 2 ; case 14
	.short _02258450 - _02258152 - 2 ; case 15
	.short _0225848E - _02258152 - 2 ; case 16
	.short _022584CC - _02258152 - 2 ; case 17
	.short _0225850A - _02258152 - 2 ; case 18
	.short _0225878A - _02258152 - 2 ; case 19
	.short _0225878A - _02258152 - 2 ; case 20
	.short _0225878A - _02258152 - 2 ; case 21
	.short _0225878A - _02258152 - 2 ; case 22
	.short _0225878A - _02258152 - 2 ; case 23
	.short _0225878A - _02258152 - 2 ; case 24
	.short _0225878A - _02258152 - 2 ; case 25
	.short _0225878A - _02258152 - 2 ; case 26
	.short _0225878A - _02258152 - 2 ; case 27
	.short _0225878A - _02258152 - 2 ; case 28
	.short _0225878A - _02258152 - 2 ; case 29
	.short _0225878A - _02258152 - 2 ; case 30
	.short _0225878A - _02258152 - 2 ; case 31
	.short _0225878A - _02258152 - 2 ; case 32
	.short _0225878A - _02258152 - 2 ; case 33
	.short _0225878A - _02258152 - 2 ; case 34
	.short _0225878A - _02258152 - 2 ; case 35
	.short _0225854A - _02258152 - 2 ; case 36
	.short _02258590 - _02258152 - 2 ; case 37
	.short _022585D8 - _02258152 - 2 ; case 38
	.short _02258620 - _02258152 - 2 ; case 39
	.short _0225866A - _02258152 - 2 ; case 40
	.short _022586B2 - _02258152 - 2 ; case 41
	.short _022586F6 - _02258152 - 2 ; case 42
	.short _0225878A - _02258152 - 2 ; case 43
	.short _022583B0 - _02258152 - 2 ; case 44
	.short _0225878A - _02258152 - 2 ; case 45
	.short _0225878A - _02258152 - 2 ; case 46
	.short _0225878A - _02258152 - 2 ; case 47
	.short _0225878A - _02258152 - 2 ; case 48
	.short _02258368 - _02258152 - 2 ; case 49
	.short _0225878A - _02258152 - 2 ; case 50
	.short _0225878A - _02258152 - 2 ; case 51
	.short _0225878A - _02258152 - 2 ; case 52
	.short _0225878A - _02258152 - 2 ; case 53
	.short _02258392 - _02258152 - 2 ; case 54
_022581C0:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r0, r0, #1
	cmp r2, r0
	bls _022581CE
_022581CC:
	b _0225878A
_022581CE:
	ldr r0, _0225842C ; =0x0000215C
	str r7, [r4, r0]
	mov r0, #0xc6
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_022581DC:
	add r1, r4, r5
	add r0, r0, #4
	ldr r1, [r1, r0]
	lsr r0, r1, #1
	cmp r2, r0
	bhi _022582DE
	add r0, r7, #0
	mul r0, r1
	mov r1, #0x64
	bl ov16_022563F8
	ldr r1, _0225842C ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0xc6
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_02258200:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _022582DE
	mov r0, #0xc7
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_02258216:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _022582DE
	mov r0, #0xc8
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_0225822C:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	ldr r0, _02258430 ; =0x00000F88
	tst r0, r1
	beq _022582DE
	mov r0, #0xc9
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_02258242:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x10
	tst r0, r1
	beq _022582DE
	mov r0, #0xca
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_02258258:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _022582DE
	mov r0, #0xcb
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_0225826E:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, r5
	ldr r3, _02258434 ; =0x00002D4C
	add r1, r0, #0
_02258278:
	ldrh r2, [r0, r3]
	cmp r2, #0
	beq _02258286
	ldr r2, _02258438 ; =0x00002D6C
	ldrb r2, [r1, r2]
	cmp r2, #0
	beq _02258294
_02258286:
	ldr r2, [sp, #8]
	add r0, r0, #2
	add r2, r2, #1
	add r1, r1, #1
	str r2, [sp, #8]
	cmp r2, #4
	blt _02258278
_02258294:
	ldr r0, [sp, #8]
	cmp r0, #4
	beq _022582DE
	mov r0, #0xb5
	lsl r0, r0, #6
	ldr r1, [sp, #8]
	add r0, r4, r0
	add r0, r0, r5
	add r1, #0x1f
	add r2, r7, #0
	bl ov16_02252A2C
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl ov16_02253EC0
	ldr r0, [sp, #8]
	add r1, r4, r5
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, _02258434 ; =0x00002D4C
	ldrh r1, [r1, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0xcc
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_022582D2:
	add r1, r4, r5
	add r0, #0x24
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	bne _022582E0
_022582DE:
	b _0225878A
_022582E0:
	mov r0, #0xcd
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_022582EA:
	add r1, r0, #0
	add r1, #0x20
	add r1, r4, r1
	ldr r2, [r1, r5]
	lsl r3, r2, #0x18
	lsr r3, r3, #0x18
	bne _02258304
	add r3, r4, r5
	add r0, #0x24
	ldr r3, [r3, r0]
	mov r0, #7
	tst r0, r3
	beq _022583F2
_02258304:
	mov r0, #0x40
	tst r0, r2
	beq _0225830E
	mov r0, #0xc7
	str r0, [r6, #0]
_0225830E:
	ldr r2, [r1, r5]
	mov r0, #7
	tst r0, r2
	beq _0225831A
	mov r0, #0xc8
	str r0, [r6, #0]
_0225831A:
	ldr r2, [r1, r5]
	ldr r0, _02258430 ; =0x00000F88
	tst r0, r2
	beq _02258326
	mov r0, #0xc9
	str r0, [r6, #0]
_02258326:
	ldr r2, [r1, r5]
	mov r0, #0x10
	tst r0, r2
	beq _02258332
	mov r0, #0xca
	str r0, [r6, #0]
_02258332:
	ldr r2, [r1, r5]
	mov r0, #0x20
	tst r0, r2
	beq _0225833E
	mov r0, #0xcb
	str r0, [r6, #0]
_0225833E:
	ldr r0, _0225843C ; =0x00002DB0
	mov r2, #7
	add r0, r4, r0
	ldr r3, [r0, r5]
	tst r2, r3
	beq _0225834E
	mov r2, #0xcd
	str r2, [r6, #0]
_0225834E:
	ldr r1, [r1, r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	beq _02258362
	ldr r1, [r0, r5]
	mov r0, #7
	tst r0, r1
	beq _02258362
	mov r0, #0xce
	str r0, [r6, #0]
_02258362:
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_02258368:
	ldr r7, _02258440 ; =0x00002D58
	add r1, r4, r5
	mov r0, #0
	mov r5, #6
	add r3, r7, #0
_02258372:
	ldrsb r2, [r1, r3]
	cmp r2, #6
	bge _0225837E
	mov r2, #1
	strb r5, [r1, r7]
	str r2, [sp, #0xc]
_0225837E:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #8
	blt _02258372
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _022583F2
	mov r0, #0xd3
	str r0, [r6, #0]
	b _0225878A
_02258392:
	add r1, r4, r5
	add r0, #0x24
	ldr r1, [r1, r0]
	mov r0, #0xf
	lsl r0, r0, #0x10
	tst r0, r1
	beq _022583F2
	mov r0, #6
	add r3, #0x70
	str r0, [r4, r3]
	mov r0, #0xd4
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_022583B0:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _022583C2
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_022583C2:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02258444 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _022583F2
	ldr r0, _02258448 ; =0x00000109
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_022583E6:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bls _022583F4
_022583F2:
	b _0225878A
_022583F4:
	add r1, r7, #0
	bl ov16_022563F8
	ldr r1, _0225842C ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _0225844C ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0225841C
	mov r0, #0xcf
	b _0225841E
_0225841C:
	mov r0, #0xc6
_0225841E:
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
	nop
_02258428: .word 0x00002D8C
_0225842C: .word 0x0000215C
_02258430: .word 0x00000F88
_02258434: .word 0x00002D4C
_02258438: .word 0x00002D6C
_0225843C: .word 0x00002DB0
_02258440: .word 0x00002D58
_02258444: .word 0x00002D90
_02258448: .word 0x00000109
_0225844C: .word 0x00002DA8
_02258450:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _02258516
	add r1, r7, #0
	bl ov16_022563F8
	ldr r1, _02258740 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02258744 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02258484
	mov r0, #0xcf
	b _02258486
_02258484:
	mov r0, #0xc6
_02258486:
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_0225848E:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _02258516
	add r1, r7, #0
	bl ov16_022563F8
	ldr r1, _02258740 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02258744 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022584C2
	mov r0, #0xcf
	b _022584C4
_022584C2:
	mov r0, #0xc6
_022584C4:
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_022584CC:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _02258516
	add r1, r7, #0
	bl ov16_022563F8
	ldr r1, _02258740 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02258744 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02258500
	mov r0, #0xcf
	b _02258502
_02258500:
	mov r0, #0xc6
_02258502:
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_0225850A:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bls _02258518
_02258516:
	b _0225878A
_02258518:
	add r1, r7, #0
	bl ov16_022563F8
	ldr r1, _02258740 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02258744 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02258540
	mov r0, #0xcf
	b _02258542
_02258540:
	mov r0, #0xc6
_02258542:
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_0225854A:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _0225855C
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_0225855C:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02258748 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02258656
	ldr r0, _0225874C ; =0x00002D59
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _02258656
	mov r1, #0x13
	mov r0, #1
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	str r0, [r4, r1]
	mov r0, #0xd0
	str r0, [r6, #0]
	b _0225878A
_02258590:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _022585A2
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_022585A2:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02258748 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02258656
	ldr r0, _02258750 ; =0x00002D5A
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _02258656
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0xd0
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_022585D8:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _022585EA
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_022585EA:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02258748 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02258656
	ldr r0, _02258754 ; =0x00002D5B
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _02258656
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0xd0
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_02258620:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _02258632
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_02258632:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02258748 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02258656
	ldr r0, _02258758 ; =0x00002D5C
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	blt _02258658
_02258656:
	b _0225878A
_02258658:
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0xd0
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_0225866A:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _0225867C
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_0225867C:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02258748 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _0225878A
	ldr r0, _0225875C ; =0x00002D5D
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _0225878A
	mov r0, #0x13
	mov r1, #5
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0xd0
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_022586B2:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _022586C4
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_022586C4:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02258748 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _0225878A
	ldr r0, _02258760 ; =0x00002DB0
	add r1, r4, r5
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x14
	tst r0, r1
	bne _0225878A
	mov r0, #0xd1
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0225878A
_022586F6:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x52
	bne _02258708
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_02258708:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02258748 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _0225878A
	ldr r0, _0225874C ; =0x00002D59
	mov r2, #0
	add r3, r4, r5
_02258728:
	ldrsb r1, [r3, r0]
	cmp r1, #0xc
	blt _02258736
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #5
	blt _02258728
_02258736:
	cmp r2, #5
	beq _0225878A
	ldr r7, _0225874C ; =0x00002D59
	b _02258764
	nop
_02258740: .word 0x0000215C
_02258744: .word 0x00002DA8
_02258748: .word 0x00002D90
_0225874C: .word 0x00002D59
_02258750: .word 0x00002D5A
_02258754: .word 0x00002D5B
_02258758: .word 0x00002D5C
_0225875C: .word 0x00002D5D
_02258760: .word 0x00002DB0
_02258764:
	add r5, r4, r5
_02258766:
	ldr r0, [sp]
	bl ov16_0223F4BC
	mov r1, #5
	bl _s32_div_f
	add r0, r5, r1
	ldrsb r0, [r0, r7]
	cmp r0, #0xc
	beq _02258766
	mov r0, #0x13
	add r1, r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0xd2
	str r0, [r6, #0]
	mov r0, #1
	str r0, [sp, #0xc]
_0225878A:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0225879E
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02258874
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r4, r1]
_0225879E:
	ldr r0, [sp, #0xc]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02258104

	thumb_func_start ov16_022587A4
ov16_022587A4: ; 0x022587A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r2, #0
	mov r6, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02258AB8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_02258ACC
	str r0, [sp, #8]
	mov r0, #0xc0
	mul r0, r4
	str r0, [sp]
	add r1, r5, r0
	ldr r0, _02258868 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02258860
	cmp r7, #0x64
	beq _022587E2
	cmp r7, #0x65
	beq _022587F8
	cmp r7, #0x74
	beq _0225880E
	b _02258836
_022587E2:
	add r0, r5, #0
	add r0, #0x94
	str r4, [r0, #0]
	add r0, r5, #0
	mov r1, #5
	add r0, #0x88
	str r1, [r0, #0]
	mov r0, #0x2f
	str r0, [sp, #4]
	mov r6, #1
	b _02258836
_022587F8:
	add r0, r5, #0
	add r0, #0x94
	str r4, [r0, #0]
	add r0, r5, #0
	mov r1, #5
	add r0, #0x88
	str r1, [r0, #0]
	mov r0, #0x19
	str r0, [sp, #4]
	mov r6, #1
	b _02258836
_0225880E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _02258836
	ldr r0, [sp]
	add r1, r5, r0
	ldr r0, _0225886C ; =0x00002D90
	ldr r1, [r1, r0]
	sub r0, r6, #1
	mul r0, r1
	ldr r1, [sp, #8]
	bl ov16_022563F8
	ldr r1, _02258870 ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	mov r0, #0xd7
	str r0, [sp, #4]
_02258836:
	cmp r6, #1
	bne _02258860
	mov r0, #0x46
	lsl r0, r0, #2
	str r4, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02258874
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02251E1C
	ldr r0, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0x15
	str r0, [r5, #8]
_02258860:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02258868: .word 0x00002D8C
_0225886C: .word 0x00002D90
_02258870: .word 0x0000215C
	thumb_func_end ov16_022587A4

	thumb_func_start ov16_02258874
ov16_02258874: ; 0x02258874
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov16_02255A4C
	cmp r0, #0x67
	bne _02258886
	mov r0, #0
	pop {r3, r4, r5, pc}
_02258886:
	mov r0, #0xc0
	mul r0, r4
	add r2, r5, r0
	ldr r0, _022588A0 ; =0x00002DCC
	ldr r1, [r2, r0]
	lsl r1, r1, #0xa
	lsr r1, r1, #0x1d
	beq _0225889A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225889A:
	sub r0, #0x14
	ldrh r0, [r2, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022588A0: .word 0x00002DCC
	thumb_func_end ov16_02258874

	thumb_func_start ov16_022588A4
ov16_022588A4: ; 0x022588A4
	lsl r1, r1, #4
	add r1, r0, r1
	ldr r0, _022588B8 ; =0x000021A8
	ldr r0, [r1, r0]
	cmp r0, #0x27
	bne _022588B4
	mov r0, #1
	bx lr
_022588B4:
	mov r0, #0
	bx lr
	; .align 2, 0
_022588B8: .word 0x000021A8
	thumb_func_end ov16_022588A4

	thumb_func_start ov16_022588BC
ov16_022588BC: ; 0x022588BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #0x6c]
	str r0, [sp]
	add r6, r2, #0
	mov r7, #0
	cmp r1, #0xff
	bne _022588D4
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_022588D4:
	add r0, r5, #0
	bl ov16_02259AC0
	cmp r0, #1
	bne _022588E4
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_022588E4:
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl ov16_02258AB8
	add r4, r0, #0
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	add r2, r7, #0
	bl ov16_02258ACC
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r5, #0x64]
	bl ov16_0223E208
	str r0, [sp, #8]
	cmp r4, #0x2f
	bgt _0225891A
	cmp r4, #0x2b
	blt _02258918
	bne _02258910
	b _02258A4C
_02258910:
	cmp r4, #0x2e
	beq _0225899C
	cmp r4, #0x2f
	beq _022589FA
_02258918:
	b _02258A92
_0225891A:
	cmp r4, #0x74
	bne _02258984
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	mul r1, r0
	add r3, r5, r1
	ldr r1, _02258A98 ; =0x00002D8C
	ldr r2, [r3, r1]
	cmp r2, #0
	beq _02258984
	add r1, #0x2c
	ldrh r1, [r3, r1]
	cmp r1, #0
	bne _02258984
	add r1, r5, r0
	ldr r0, _02258A9C ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020787CC
	ldr r1, [sp, #8]
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r2, [r2, r1]
	lsl r2, r2, #3
	lsr r2, r2, #0x1a
	tst r0, r2
	bne _02258984
	ldr r0, _02258AA0 ; =0x00003044
	sub r1, #0xaa
	ldr r0, [r5, r0]
	cmp r0, r1
	beq _02258984
	ldr r2, [r5, #0x6c]
	mov r1, #0x1c
	mul r1, r2
	add r3, r5, r1
	mov r1, #0xb6
	lsl r1, r1, #2
	ldr r2, [r3, r1]
	cmp r2, #0
	bne _02258978
	add r1, #8
	ldr r1, [r3, r1]
	cmp r1, #0
	beq _02258984
_02258978:
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r1, #0x10
	tst r1, r2
	beq _02258986
_02258984:
	b _02258A92
_02258986:
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02258AA4 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r1, r0
	beq _02258A92
	mov r1, #0xd8
	str r1, [r6, #0]
	add r7, r0, #0
	b _02258A92
_0225899C:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _02258A98 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02258A92
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _02258A92
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _02258A92
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02258A92
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02258AA8 ; =0x00002D90
	add r2, r5, r2
	ldr r2, [r2, r0]
	sub r1, #0xc1
	add r0, r2, #0
	mul r0, r1
	ldr r1, [sp, #4]
	bl ov16_022563F8
	ldr r1, _02258AAC ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	lsr r0, r1, #5
	str r0, [r6, #0]
	b _02258A92
_022589FA:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _02258A98 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02258A92
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _02258A92
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02258A92
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02258AA8 ; =0x00002D90
	add r2, r5, r2
	ldr r2, [r2, r0]
	sub r1, #0xc1
	add r0, r2, #0
	mul r0, r1
	ldr r1, [sp, #4]
	bl ov16_022563F8
	ldr r1, _02258AAC ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	lsr r0, r1, #5
	str r0, [r6, #0]
	b _02258A92
_02258A4C:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	ldr r2, _02258A98 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _02258A92
	ldr r1, _02258AB0 ; =0x0000216C
	ldr r3, [r5, r1]
	mov r1, #2
	tst r1, r3
	beq _02258A92
	add r1, r2, #4
	ldr r0, [r0, r1]
	ldr r1, [sp, #4]
	bl ov16_022563F8
	ldr r1, _02258AAC ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	mov r1, #0xc6
	str r1, [r6, #0]
	ldr r0, [r5, #0x6c]
	add r1, #0x52
	str r0, [r5, r1]
	ldr r0, [r5, #0x6c]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02258AB4 ; =0x00002DB8
	add r2, r5, r2
	ldrh r0, [r2, r0]
	add r1, #0x68
	str r0, [r5, r1]
_02258A92:
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02258A98: .word 0x00002D8C
_02258A9C: .word 0x0000219C
_02258AA0: .word 0x00003044
_02258AA4: .word 0x000003E9
_02258AA8: .word 0x00002D90
_02258AAC: .word 0x0000215C
_02258AB0: .word 0x0000216C
_02258AB4: .word 0x00002DB8
	thumb_func_end ov16_022588BC

	thumb_func_start ov16_02258AB8
ov16_02258AB8: ; 0x02258AB8
	push {r4, lr}
	add r4, r0, #0
	bl ov16_02258874
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov16_0225B0FC
	pop {r4, pc}
	thumb_func_end ov16_02258AB8

	thumb_func_start ov16_02258ACC
ov16_02258ACC: ; 0x02258ACC
	push {r4, lr}
	add r4, r0, #0
	cmp r2, #0
	beq _02258ADE
	cmp r2, #1
	beq _02258AFA
	cmp r2, #2
	beq _02258AE6
	b _02258B04
_02258ADE:
	bl ov16_02258874
	add r1, r0, #0
	b _02258B04
_02258AE6:
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _02258B10 ; =0x00002DCC
	ldr r0, [r2, r0]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	beq _02258AFA
	mov r0, #0
	pop {r4, pc}
_02258AFA:
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02258B14 ; =0x00002DB8
	ldrh r1, [r1, r0]
_02258B04:
	add r0, r4, #0
	mov r2, #2
	bl ov16_0225B0FC
	pop {r4, pc}
	nop
_02258B10: .word 0x00002DCC
_02258B14: .word 0x00002DB8
	thumb_func_end ov16_02258ACC

	thumb_func_start ov16_02258B18
ov16_02258B18: ; 0x02258B18
	push {r4, lr}
	add r4, r0, #0
	bl ov16_02258874
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xb
	bl ov16_0225B0FC
	pop {r4, pc}
	thumb_func_end ov16_02258B18

	thumb_func_start ov16_02258B2C
ov16_02258B2C: ; 0x02258B2C
	push {r4, lr}
	add r4, r0, #0
	bl ov16_02258874
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xc
	bl ov16_0225B0FC
	pop {r4, pc}
	thumb_func_end ov16_02258B2C

	thumb_func_start ov16_02258B40
ov16_02258B40: ; 0x02258B40
	mov r2, #0xc0
	mul r2, r1
	ldr r1, _02258B50 ; =0x00002DB8
	add r2, r0, r2
	ldrh r1, [r2, r1]
	ldr r3, _02258B54 ; =ov16_0225B0FC
	mov r2, #8
	bx r3
	; .align 2, 0
_02258B50: .word 0x00002DB8
_02258B54: .word ov16_0225B0FC
	thumb_func_end ov16_02258B40

	thumb_func_start ov16_02258B58
ov16_02258B58: ; 0x02258B58
	push {r3, lr}
	mov r2, #0xc0
	mul r2, r1
	ldr r1, _02258B7C ; =0x00002DCC
	add r3, r0, r2
	ldr r2, [r3, r1]
	lsl r2, r2, #0xa
	lsr r2, r2, #0x1d
	beq _02258B6E
	mov r0, #0
	pop {r3, pc}
_02258B6E:
	sub r1, #0x14
	ldrh r1, [r3, r1]
	mov r2, #9
	bl ov16_0225B0FC
	pop {r3, pc}
	nop
_02258B7C: .word 0x00002DCC
	thumb_func_end ov16_02258B58

	thumb_func_start ov16_02258B80
ov16_02258B80: ; 0x02258B80
	push {r3, lr}
	mov r2, #0xc0
	mul r2, r1
	ldr r1, _02258BA4 ; =0x00002DCC
	add r3, r0, r2
	ldr r2, [r3, r1]
	lsl r2, r2, #0xa
	lsr r2, r2, #0x1d
	beq _02258B96
	mov r0, #0
	pop {r3, pc}
_02258B96:
	sub r1, #0x14
	ldrh r1, [r3, r1]
	mov r2, #0xa
	bl ov16_0225B0FC
	pop {r3, pc}
	nop
_02258BA4: .word 0x00002DCC
	thumb_func_end ov16_02258B80

	thumb_func_start ov16_02258BA8
ov16_02258BA8: ; 0x02258BA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r6, #0
	bl ov16_02258AB8
	cmp r0, #0x7b
	bne _02258BC6
	add sp, #8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02258BC6:
	mov r0, #0xc0
	add r7, r4, #0
	mul r7, r0
	ldr r0, _02258CA8 ; =0x00002DB0
	add r2, r5, r7
	ldr r1, [r2, r0]
	ldr r3, _02258CAC ; =0x0400E000
	tst r1, r3
	bne _02258BE2
	add r0, #0x10
	ldr r1, [r2, r0]
	lsr r0, r3, #0x10
	tst r0, r1
	beq _02258BE4
_02258BE2:
	mov r6, #1
_02258BE4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x17
	beq _02258C04
	mov r0, #0x17
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	add r3, r4, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02258C38
_02258C04:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r0, #8
	beq _02258C24
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r0, #8
	bne _02258C3A
_02258C24:
	mov r0, #0x2a
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	add r3, r4, #0
	bl ov16_022555A4
	cmp r0, #0
	beq _02258C3A
_02258C38:
	mov r6, #1
_02258C3A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x1a
	beq _02258C72
	ldr r0, _02258CB0 ; =0x00002DCC
	add r1, r5, r7
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	bne _02258C72
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r0, #2
	beq _02258C72
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r0, #2
	bne _02258C8C
_02258C72:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02258AB8
	cmp r0, #0x6a
	beq _02258C8C
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	beq _02258CA2
_02258C8C:
	mov r0, #0x47
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	add r3, r4, #0
	bl ov16_022555A4
	cmp r0, #0
	beq _02258CA2
	mov r6, #1
_02258CA2:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02258CA8: .word 0x00002DB0
_02258CAC: .word 0x0400E000
_02258CB0: .word 0x00002DCC
	thumb_func_end ov16_02258BA8

	thumb_func_start ov16_02258CB4
ov16_02258CB4: ; 0x02258CB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	str r0, [sp]
	mov r6, #0
	str r2, [sp, #4]
	add r0, r4, #0
	add r1, r2, #0
	add r5, r6, #0
	bl ov16_02258B40
	add r7, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r2, #1
	bl ov16_02258ACC
	str r0, [sp, #0x10]
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	bl ov16_02259AC0
	cmp r0, #1
	bne _02258CEA
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02258CEA:
	cmp r7, #0x17
	bls _02258CF0
	b _0225916A
_02258CF0:
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02258CFC: ; jump table
	.short _0225916A - _02258CFC - 2 ; case 0
	.short _02258D76 - _02258CFC - 2 ; case 1
	.short _02258D8E - _02258CFC - 2 ; case 2
	.short _02258DA6 - _02258CFC - 2 ; case 3
	.short _02258DBE - _02258CFC - 2 ; case 4
	.short _02258DD6 - _02258CFC - 2 ; case 5
	.short _02258DEE - _02258CFC - 2 ; case 6
	.short _02258D2C - _02258CFC - 2 ; case 7
	.short _02258E64 - _02258CFC - 2 ; case 8
	.short _02258E7C - _02258CFC - 2 ; case 9
	.short _02258D4C - _02258CFC - 2 ; case 10
	.short _02258EDE - _02258CFC - 2 ; case 11
	.short _02258F24 - _02258CFC - 2 ; case 12
	.short _02258F6A - _02258CFC - 2 ; case 13
	.short _02258FB0 - _02258CFC - 2 ; case 14
	.short _02258FF6 - _02258CFC - 2 ; case 15
	.short _02259066 - _02258CFC - 2 ; case 16
	.short _02259084 - _02258CFC - 2 ; case 17
	.short _022590A2 - _02258CFC - 2 ; case 18
	.short _022590C0 - _02258CFC - 2 ; case 19
	.short _022590DE - _02258CFC - 2 ; case 20
	.short _0225914A - _02258CFC - 2 ; case 21
	.short _022590FC - _02258CFC - 2 ; case 22
	.short _02259164 - _02258CFC - 2 ; case 23
_02258D2C:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _02259028 ; =0x00002D8C
	ldr r1, [r2, r0]
	add r0, r0, #4
	ldr r0, [r2, r0]
	cmp r1, r0
	beq _02258D48
	ldr r1, _0225902C ; =0x0000215C
	ldr r0, [sp, #0x10]
	mov r5, #0xc6
	str r0, [r4, r1]
_02258D48:
	mov r6, #1
	b _02259180
_02258D4C:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259030 ; =0x00002D90
	ldr r2, [r1, r0]
	sub r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, r2
	beq _02258D72
	ldr r1, [sp, #0x10]
	add r0, r1, #0
	mul r0, r2
	mov r1, #0x64
	bl ov16_022563F8
	ldr r1, _0225902C ; =0x0000215C
	mov r5, #0xc6
	str r0, [r4, r1]
_02258D72:
	mov r6, #1
	b _02259180
_02258D76:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259034 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _02258D8A
	mov r5, #0xc7
_02258D8A:
	mov r6, #1
	b _02259180
_02258D8E:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259034 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02258DA2
	mov r5, #0xc8
_02258DA2:
	mov r6, #1
	b _02259180
_02258DA6:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259034 ; =0x00002DAC
	ldr r1, [r1, r0]
	ldr r0, _02259038 ; =0x00000F88
	tst r0, r1
	beq _02258DBA
	mov r5, #0xc9
_02258DBA:
	mov r6, #1
	b _02259180
_02258DBE:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259034 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x10
	tst r0, r1
	beq _02258DD2
	mov r5, #0xca
_02258DD2:
	mov r6, #1
	b _02259180
_02258DD6:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259034 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _02258DEA
	mov r5, #0xcb
_02258DEA:
	mov r6, #1
	b _02259180
_02258DEE:
	str r5, [sp, #0xc]
_02258DF0:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r7, r1, #0
	mul r7, r0
	add r1, r4, r7
	ldr r0, _0225903C ; =0x00002D4C
	add r2, r6, r1
	ldrh r0, [r2, r0]
	cmp r0, #0
	beq _02258E22
	add r2, r5, r1
	ldr r1, _02259040 ; =0x00002D70
	ldrb r1, [r2, r1]
	bl sub_020790DC
	add r1, r4, r7
	add r2, r5, r1
	ldr r1, _02259044 ; =0x00002D6C
	ldrb r1, [r2, r1]
	sub r1, r0, r1
	ldr r0, [sp, #0xc]
	cmp r1, r0
	ble _02258E22
	str r1, [sp, #0xc]
	str r5, [sp, #8]
_02258E22:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #4
	blt _02258DF0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldr r1, [sp, #8]
	add r0, r4, r0
	ldr r2, [sp, #0x10]
	add r0, r0, r7
	add r1, #0x1f
	bl ov16_02252A2C
	ldr r0, [sp]
	ldr r2, [r4, #0x64]
	add r1, r4, #0
	bl ov16_02253EC0
	ldr r0, [r4, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, [sp, #8]
	add r2, r4, r2
	lsl r0, r0, #1
	add r2, r2, r0
	ldr r0, _0225903C ; =0x00002D4C
	add r1, #0x64
	ldrh r0, [r2, r0]
	mov r5, #0xcc
	mov r6, #1
	str r0, [r4, r1]
	b _02259180
_02258E64:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259048 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02258E78
	mov r5, #0xcd
_02258E78:
	mov r6, #1
	b _02259180
_02258E7C:
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	add r1, r2, #0
	mul r1, r0
	ldr r6, _02259034 ; =0x00002DAC
	add r0, r4, r1
	ldr r2, [r0, r6]
	lsl r3, r2, #0x18
	lsr r3, r3, #0x18
	bne _02258E9A
	add r6, r6, #4
	ldr r6, [r0, r6]
	mov r0, #7
	tst r0, r6
	beq _02258EDA
_02258E9A:
	mov r0, #0x40
	tst r0, r2
	beq _02258EA2
	mov r5, #0xc7
_02258EA2:
	mov r0, #7
	tst r0, r2
	beq _02258EAA
	mov r5, #0xc8
_02258EAA:
	ldr r0, _02259038 ; =0x00000F88
	tst r0, r2
	beq _02258EB2
	mov r5, #0xc9
_02258EB2:
	mov r0, #0x10
	tst r0, r2
	beq _02258EBA
	mov r5, #0xca
_02258EBA:
	mov r0, #0x20
	tst r0, r2
	beq _02258EC2
	mov r5, #0xcb
_02258EC2:
	ldr r0, _02259048 ; =0x00002DB0
	add r1, r4, r1
	ldr r1, [r1, r0]
	mov r0, #7
	and r0, r1
	beq _02258ED0
	mov r5, #0xcd
_02258ED0:
	cmp r3, #0
	beq _02258EDA
	cmp r0, #0
	beq _02258EDA
	mov r5, #0xce
_02258EDA:
	mov r6, #1
	b _02259180
_02258EDE:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02259030 ; =0x00002D90
	add r2, r4, r0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	beq _02258F20
	ldr r1, [sp, #0x10]
	bl ov16_022563F8
	ldr r1, _0225902C ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0x13
	add r1, r6, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _0225904C ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	sub r1, r6, #1
	cmp r0, r1
	bne _02258F1E
	mov r5, #0xcf
	b _02258F20
_02258F1E:
	mov r5, #0xc6
_02258F20:
	mov r6, #1
	b _02259180
_02258F24:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02259030 ; =0x00002D90
	add r2, r4, r0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	beq _02258F66
	ldr r1, [sp, #0x10]
	bl ov16_022563F8
	ldr r1, _0225902C ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _0225904C ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	sub r1, r6, #1
	cmp r0, r1
	bne _02258F64
	mov r5, #0xcf
	b _02258F66
_02258F64:
	mov r5, #0xc6
_02258F66:
	mov r6, #1
	b _02259180
_02258F6A:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02259030 ; =0x00002D90
	add r2, r4, r0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	beq _02258FAC
	ldr r1, [sp, #0x10]
	bl ov16_022563F8
	ldr r1, _0225902C ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _0225904C ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	sub r1, r6, #1
	cmp r0, r1
	bne _02258FAA
	mov r5, #0xcf
	b _02258FAC
_02258FAA:
	mov r5, #0xc6
_02258FAC:
	mov r6, #1
	b _02259180
_02258FB0:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02259030 ; =0x00002D90
	add r2, r4, r0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	beq _02258FF2
	ldr r1, [sp, #0x10]
	bl ov16_022563F8
	ldr r1, _0225902C ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _0225904C ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	sub r1, r6, #1
	cmp r0, r1
	bne _02258FF0
	mov r5, #0xcf
	b _02258FF2
_02258FF0:
	mov r5, #0xc6
_02258FF2:
	mov r6, #1
	b _02259180
_02258FF6:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02259030 ; =0x00002D90
	add r2, r4, r0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	beq _02259062
	ldr r1, [sp, #0x10]
	bl ov16_022563F8
	ldr r1, _0225902C ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _0225904C ; =0x00002DA8
	b _02259050
	; .align 2, 0
_02259028: .word 0x00002D8C
_0225902C: .word 0x0000215C
_02259030: .word 0x00002D90
_02259034: .word 0x00002DAC
_02259038: .word 0x00000F88
_0225903C: .word 0x00002D4C
_02259040: .word 0x00002D70
_02259044: .word 0x00002D6C
_02259048: .word 0x00002DB0
_0225904C: .word 0x00002DA8
_02259050:
	ldr r0, [r2, r0]
	bl sub_02077648
	sub r1, r6, #1
	cmp r0, r1
	bne _02259060
	mov r5, #0xcf
	b _02259062
_02259060:
	mov r5, #0xc6
_02259062:
	mov r6, #1
	b _02259180
_02259066:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _022591E4 ; =0x00002D59
	add r2, r4, r2
	ldrsb r1, [r2, r1]
	cmp r1, #0xc
	bge _02259080
	mov r1, #1
	add r0, #0x70
	str r1, [r4, r0]
	mov r5, #0xd0
_02259080:
	mov r6, #1
	b _02259180
_02259084:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _022591E8 ; =0x00002D5A
	add r2, r4, r2
	ldrsb r1, [r2, r1]
	cmp r1, #0xc
	bge _0225909E
	mov r1, #2
	add r0, #0x70
	str r1, [r4, r0]
	mov r5, #0xd0
_0225909E:
	mov r6, #1
	b _02259180
_022590A2:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _022591EC ; =0x00002D5B
	add r2, r4, r2
	ldrsb r1, [r2, r1]
	cmp r1, #0xc
	bge _022590BC
	mov r1, #3
	add r0, #0x70
	str r1, [r4, r0]
	mov r5, #0xd0
_022590BC:
	mov r6, #1
	b _02259180
_022590C0:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _022591F0 ; =0x00002D5C
	add r2, r4, r2
	ldrsb r1, [r2, r1]
	cmp r1, #0xc
	bge _022590DA
	mov r1, #4
	add r0, #0x70
	str r1, [r4, r0]
	mov r5, #0xd0
_022590DA:
	mov r6, #1
	b _02259180
_022590DE:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _022591F4 ; =0x00002D5D
	add r2, r4, r2
	ldrsb r1, [r2, r1]
	cmp r1, #0xc
	bge _022590F8
	mov r1, #5
	add r0, #0x70
	str r1, [r4, r0]
	mov r5, #0xd0
_022590F8:
	mov r6, #1
	b _02259180
_022590FC:
	ldr r2, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r3, r4, r1
	ldr r1, _022591E4 ; =0x00002D59
	add r0, r6, #0
_02259108:
	ldrsb r2, [r3, r1]
	cmp r2, #0xc
	blt _02259116
	add r0, r0, #1
	add r3, r3, #1
	cmp r0, #5
	blt _02259108
_02259116:
	cmp r0, #5
	beq _02259146
	ldr r5, _022591E4 ; =0x00002D59
	mov r7, #5
	mov r6, #0xc0
_02259120:
	ldr r0, [sp]
	bl ov16_0223F4BC
	add r1, r7, #0
	bl _s32_div_f
	ldr r0, [r4, #0x64]
	add r2, r0, #0
	mul r2, r6
	add r0, r4, r2
	add r0, r1, r0
	ldrsb r0, [r0, r5]
	cmp r0, #0xc
	beq _02259120
	mov r0, #0x13
	add r1, r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r5, #0xd2
_02259146:
	mov r6, #1
	b _02259180
_0225914A:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022591F8 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x14
	tst r0, r1
	bne _02259160
	mov r5, #0xd1
_02259160:
	mov r6, #1
	b _02259180
_02259164:
	ldr r5, _022591FC ; =0x00000109
	mov r6, #1
	b _02259180
_0225916A:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02259200 ; =0x00002DB8
	add r1, r4, r1
	ldrh r0, [r1, r0]
	bl sub_0207D324
	cmp r0, #1
	bne _02259180
	mov r6, #1
_02259180:
	cmp r6, #1
	bne _022591DE
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x67
	beq _022591A8
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	mov r1, #0xb7
	add r2, r4, r2
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	mov r1, #1
	lsl r1, r1, #0x1a
	tst r1, r2
	beq _022591B2
_022591A8:
	mov r0, #0x4e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _022591B6
_022591B2:
	add r0, #0x78
	str r5, [r4, r0]
_022591B6:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02259200 ; =0x00002DB8
	add r2, r4, r2
	ldrh r0, [r2, r0]
	add r1, #0x68
	str r0, [r4, r1]
	ldr r2, [r4, #0x64]
	mov r0, #0xba
	lsl r0, r0, #2
	mov r1, #0x1c
	add r3, r2, #0
	mul r3, r1
	add r0, r4, r0
	ldr r2, [r0, r3]
	mov r1, #2
	orr r1, r2
	str r1, [r0, r3]
_022591DE:
	add r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022591E4: .word 0x00002D59
_022591E8: .word 0x00002D5A
_022591EC: .word 0x00002D5B
_022591F0: .word 0x00002D5C
_022591F4: .word 0x00002D5D
_022591F8: .word 0x00002DB0
_022591FC: .word 0x00000109
_02259200: .word 0x00002DB8
	thumb_func_end ov16_02258CB4

	thumb_func_start ov16_02259204
ov16_02259204: ; 0x02259204
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	str r0, [sp]
	str r2, [sp, #4]
	add r0, r4, #0
	add r1, r2, #0
	bl ov16_02258B58
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r2, #2
	bl ov16_02258ACC
	str r0, [sp, #0x10]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02258B80
	ldr r1, _02259558 ; =0x00002154
	add r2, r4, #0
	str r0, [r4, r1]
	ldr r0, _0225955C ; =0x00003118
	mov r5, #0
	str r5, [r4, r0]
	add r2, #0x88
	str r5, [r2, #0]
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _02259248
	add sp, #0x14
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02259248:
	cmp r6, #0x1e
	bls _0225924E
	b _022597D2
_0225924E:
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225925A: ; jump table
	.short _022597D2 - _0225925A - 2 ; case 0
	.short _022592C6 - _0225925A - 2 ; case 1
	.short _022592DE - _0225925A - 2 ; case 2
	.short _022592F6 - _0225925A - 2 ; case 3
	.short _0225930E - _0225925A - 2 ; case 4
	.short _02259326 - _0225925A - 2 ; case 5
	.short _0225933E - _0225925A - 2 ; case 6
	.short _02259298 - _0225925A - 2 ; case 7
	.short _022593C0 - _0225925A - 2 ; case 8
	.short _022593D8 - _0225925A - 2 ; case 9
	.short _022592A4 - _0225925A - 2 ; case 10
	.short _0225949E - _0225925A - 2 ; case 11
	.short _022594E0 - _0225925A - 2 ; case 12
	.short _02259522 - _0225925A - 2 ; case 13
	.short _02259592 - _0225925A - 2 ; case 14
	.short _022595D4 - _0225925A - 2 ; case 15
	.short _022596D0 - _0225925A - 2 ; case 16
	.short _022596EE - _0225925A - 2 ; case 17
	.short _0225970C - _0225925A - 2 ; case 18
	.short _0225972A - _0225925A - 2 ; case 19
	.short _02259748 - _0225925A - 2 ; case 20
	.short _022597B4 - _0225925A - 2 ; case 21
	.short _02259766 - _0225925A - 2 ; case 22
	.short _022597CE - _0225925A - 2 ; case 23
	.short _02259616 - _0225925A - 2 ; case 24
	.short _0225963E - _0225925A - 2 ; case 25
	.short _02259662 - _0225925A - 2 ; case 26
	.short _02259678 - _0225925A - 2 ; case 27
	.short _0225968E - _0225925A - 2 ; case 28
	.short _022596A4 - _0225925A - 2 ; case 29
	.short _022596BA - _0225925A - 2 ; case 30
_02259298:
	ldr r1, [sp, #0x10]
	sub r2, r0, #4
	str r1, [r4, r2]
	mov r1, #0xc6
	str r1, [r4, r0]
	b _022597D2
_022592A4:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259560 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	mul r0, r1
	mov r1, #0x64
	bl ov16_022563F8
	ldr r1, _02259564 ; =0x00003114
	mov r2, #0xc6
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	b _022597D2
_022592C6:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _02259568 ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #0x40
	tst r1, r2
	beq _02259380
	mov r1, #0xc7
	str r1, [r4, r0]
	b _022597D2
_022592DE:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _02259568 ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #7
	tst r1, r2
	beq _02259380
	mov r1, #0xc8
	str r1, [r4, r0]
	b _022597D2
_022592F6:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _02259568 ; =0x00002DAC
	ldr r2, [r2, r1]
	ldr r1, _0225956C ; =0x00000F88
	tst r1, r2
	beq _02259380
	mov r1, #0xc9
	str r1, [r4, r0]
	b _022597D2
_0225930E:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _02259568 ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #0x10
	tst r1, r2
	beq _02259380
	mov r1, #0xca
	str r1, [r4, r0]
	b _022597D2
_02259326:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _02259568 ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #0x20
	tst r1, r2
	beq _02259380
	mov r1, #0xcb
	str r1, [r4, r0]
	b _022597D2
_0225933E:
	add r6, r5, #0
	add r7, r5, #0
_02259342:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	str r0, [sp, #8]
	ldr r0, _02259570 ; =0x00002D4C
	add r2, r7, r1
	ldrh r0, [r2, r0]
	cmp r0, #0
	beq _02259374
	add r2, r6, r1
	ldr r1, _02259574 ; =0x00002D70
	ldrb r1, [r2, r1]
	bl sub_020790DC
	ldr r1, [sp, #8]
	add r1, r4, r1
	add r2, r6, r1
	ldr r1, _02259578 ; =0x00002D6C
	ldrb r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, r5
	ble _02259374
	add r5, r0, #0
	str r6, [sp, #0xc]
_02259374:
	add r6, r6, #1
	add r7, r7, #2
	cmp r6, #4
	blt _02259342
	cmp r5, #0
	bne _02259382
_02259380:
	b _022597D2
_02259382:
	mov r0, #0xb5
	lsl r0, r0, #6
	add r1, r4, r0
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	add r1, #0x1f
	bl ov16_02252A2C
	ldr r0, [sp]
	ldr r2, [r4, #0x6c]
	add r1, r4, #0
	bl ov16_02253EC0
	ldr r0, [r4, #0x6c]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, [sp, #0xc]
	add r2, r4, r2
	lsl r0, r0, #1
	add r2, r2, r0
	ldr r0, _02259570 ; =0x00002D4C
	add r1, #0x64
	ldrh r0, [r2, r0]
	str r0, [r4, r1]
	ldr r0, _0225955C ; =0x00003118
	mov r1, #0xcc
	str r1, [r4, r0]
	b _022597D2
_022593C0:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _0225957C ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #7
	tst r1, r2
	beq _02259494
	mov r1, #0xcd
	str r1, [r4, r0]
	b _022597D2
_022593D8:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02259568 ; =0x00002DAC
	add r3, r4, r0
	ldr r0, [r3, r1]
	lsl r2, r0, #0x18
	lsr r2, r2, #0x18
	bne _022593F4
	add r1, r1, #4
	ldr r2, [r3, r1]
	mov r1, #7
	tst r1, r2
	beq _02259494
_022593F4:
	mov r1, #0x40
	tst r0, r1
	beq _02259400
	ldr r0, _0225955C ; =0x00003118
	mov r1, #0xc7
	str r1, [r4, r0]
_02259400:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259568 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02259418
	ldr r0, _0225955C ; =0x00003118
	mov r1, #0xc8
	str r1, [r4, r0]
_02259418:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259568 ; =0x00002DAC
	ldr r1, [r1, r0]
	ldr r0, _0225956C ; =0x00000F88
	tst r0, r1
	beq _02259430
	ldr r0, _0225955C ; =0x00003118
	mov r1, #0xc9
	str r1, [r4, r0]
_02259430:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259568 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x10
	tst r0, r1
	beq _02259448
	ldr r0, _0225955C ; =0x00003118
	mov r1, #0xca
	str r1, [r4, r0]
_02259448:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259568 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _02259460
	ldr r0, _0225955C ; =0x00003118
	mov r1, #0xcb
	str r1, [r4, r0]
_02259460:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0225957C ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02259478
	ldr r0, _0225955C ; =0x00003118
	mov r1, #0xcd
	str r1, [r4, r0]
_02259478:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _02259568 ; =0x00002DAC
	ldr r1, [r2, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	beq _02259494
	add r0, r0, #4
	ldr r1, [r2, r0]
	mov r0, #7
	tst r0, r1
	bne _02259496
_02259494:
	b _022597D2
_02259496:
	ldr r0, _0225955C ; =0x00003118
	mov r1, #0xce
	str r1, [r4, r0]
	b _022597D2
_0225949E:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259560 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	bl ov16_022563F8
	ldr r1, _02259564 ; =0x00003114
	str r0, [r4, r1]
	mov r0, #0x13
	add r1, r5, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02259580 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	sub r1, r5, #1
	cmp r0, r1
	ldr r0, _0225955C ; =0x00003118
	bne _022594DA
	mov r1, #0xcf
	str r1, [r4, r0]
	b _022597D2
_022594DA:
	mov r1, #0xc6
	str r1, [r4, r0]
	b _022597D2
_022594E0:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259560 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	bl ov16_022563F8
	ldr r1, _02259564 ; =0x00003114
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02259580 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	sub r1, r5, #1
	cmp r0, r1
	ldr r0, _0225955C ; =0x00003118
	bne _0225951C
	mov r1, #0xcf
	str r1, [r4, r0]
	b _022597D2
_0225951C:
	mov r1, #0xc6
	str r1, [r4, r0]
	b _022597D2
_02259522:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259560 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	bl ov16_022563F8
	ldr r1, _02259564 ; =0x00003114
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02259580 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	sub r1, r5, #1
	cmp r0, r1
	ldr r0, _0225955C ; =0x00003118
	b _02259584
	; .align 2, 0
_02259558: .word 0x00002154
_0225955C: .word 0x00003118
_02259560: .word 0x00002D90
_02259564: .word 0x00003114
_02259568: .word 0x00002DAC
_0225956C: .word 0x00000F88
_02259570: .word 0x00002D4C
_02259574: .word 0x00002D70
_02259578: .word 0x00002D6C
_0225957C: .word 0x00002DB0
_02259580: .word 0x00002DA8
_02259584:
	bne _0225958C
	mov r1, #0xcf
	str r1, [r4, r0]
	b _022597D2
_0225958C:
	mov r1, #0xc6
	str r1, [r4, r0]
	b _022597D2
_02259592:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259838 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	bl ov16_022563F8
	ldr r1, _0225983C ; =0x00003114
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02259840 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	sub r1, r5, #1
	cmp r0, r1
	ldr r0, _02259844 ; =0x00003118
	bne _022595CE
	mov r1, #0xcf
	str r1, [r4, r0]
	b _022597D2
_022595CE:
	mov r1, #0xc6
	str r1, [r4, r0]
	b _022597D2
_022595D4:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02259838 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	bl ov16_022563F8
	ldr r1, _0225983C ; =0x00003114
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02259840 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl sub_02077648
	sub r1, r5, #1
	cmp r0, r1
	ldr r0, _02259844 ; =0x00003118
	bne _02259610
	mov r1, #0xcf
	str r1, [r4, r0]
	b _022597D2
_02259610:
	mov r1, #0xc6
	str r1, [r4, r0]
	b _022597D2
_02259616:
	ldr r2, _02259848 ; =0x00002D58
	mov r6, #6
	mov r3, #0xd3
	mov r7, #0xc0
_0225961E:
	ldr r0, [r4, #0x6c]
	add r1, r0, #0
	mul r1, r7
	add r0, r4, r1
	add r0, r0, r5
	ldrsb r1, [r0, r2]
	cmp r1, #6
	bge _02259636
	ldr r1, _02259848 ; =0x00002D58
	strb r6, [r0, r1]
	ldr r0, _02259844 ; =0x00003118
	str r3, [r4, r0]
_02259636:
	add r5, r5, #1
	cmp r5, #8
	blt _0225961E
	b _022597D2
_0225963E:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _0225984C ; =0x00002DB0
	add r3, r4, r3
	ldr r3, [r3, r2]
	mov r2, #0xf
	lsl r2, r2, #0x10
	tst r2, r3
	bne _02259656
	b _022597D2
_02259656:
	mov r2, #6
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd4
	str r1, [r4, r0]
	b _022597D2
_02259662:
	add r2, r4, #0
	ldr r1, [sp, #4]
	add r2, #0x94
	str r1, [r2, #0]
	add r1, r4, #0
	mov r2, #2
	add r1, #0x88
	str r2, [r1, #0]
	mov r1, #0xe
	str r1, [r4, r0]
	b _022597D2
_02259678:
	add r2, r4, #0
	ldr r1, [sp, #4]
	add r2, #0x94
	str r1, [r2, #0]
	add r1, r4, #0
	mov r2, #2
	add r1, #0x88
	str r2, [r1, #0]
	mov r1, #0x1f
	str r1, [r4, r0]
	b _022597D2
_0225968E:
	add r2, r4, #0
	ldr r1, [sp, #4]
	add r2, #0x94
	str r1, [r2, #0]
	add r1, r4, #0
	mov r2, #2
	add r1, #0x88
	str r2, [r1, #0]
	mov r1, #0x16
	str r1, [r4, r0]
	b _022597D2
_022596A4:
	add r2, r4, #0
	ldr r1, [sp, #4]
	add r2, #0x94
	str r1, [r2, #0]
	add r1, r4, #0
	mov r2, #2
	add r1, #0x88
	str r2, [r1, #0]
	mov r1, #0x2f
	str r1, [r4, r0]
	b _022597D2
_022596BA:
	add r2, r4, #0
	ldr r1, [sp, #4]
	add r2, #0x94
	str r1, [r2, #0]
	add r1, r4, #0
	mov r2, #2
	add r1, #0x88
	str r2, [r1, #0]
	mov r1, #0x19
	str r1, [r4, r0]
	b _022597D2
_022596D0:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _02259850 ; =0x00002D59
	add r3, r4, r3
	ldrsb r2, [r3, r2]
	cmp r2, #0xc
	bge _022597D2
	mov r2, #1
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd0
	str r1, [r4, r0]
	b _022597D2
_022596EE:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _02259854 ; =0x00002D5A
	add r3, r4, r3
	ldrsb r2, [r3, r2]
	cmp r2, #0xc
	bge _022597D2
	mov r2, #2
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd0
	str r1, [r4, r0]
	b _022597D2
_0225970C:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _02259858 ; =0x00002D5B
	add r3, r4, r3
	ldrsb r2, [r3, r2]
	cmp r2, #0xc
	bge _022597D2
	mov r2, #3
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd0
	str r1, [r4, r0]
	b _022597D2
_0225972A:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _0225985C ; =0x00002D5C
	add r3, r4, r3
	ldrsb r2, [r3, r2]
	cmp r2, #0xc
	bge _022597D2
	mov r2, #4
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd0
	str r1, [r4, r0]
	b _022597D2
_02259748:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _02259860 ; =0x00002D5D
	add r3, r4, r3
	ldrsb r2, [r3, r2]
	cmp r2, #0xc
	bge _022597D2
	mov r2, #5
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd0
	str r1, [r4, r0]
	b _022597D2
_02259766:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _02259850 ; =0x00002D59
_02259770:
	ldrsb r1, [r2, r0]
	cmp r1, #0xc
	blt _0225977E
	add r5, r5, #1
	add r2, r2, #1
	cmp r5, #5
	blt _02259770
_0225977E:
	cmp r5, #5
	beq _022597D2
	ldr r5, _02259850 ; =0x00002D59
	mov r7, #5
	mov r6, #0xc0
_02259788:
	ldr r0, [sp]
	bl ov16_0223F4BC
	add r1, r7, #0
	bl _s32_div_f
	ldr r0, [r4, #0x6c]
	add r2, r0, #0
	mul r2, r6
	add r0, r4, r2
	add r0, r1, r0
	ldrsb r0, [r0, r5]
	cmp r0, #0xc
	beq _02259788
	mov r0, #0x13
	add r1, r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02259844 ; =0x00003118
	mov r1, #0xd2
	str r1, [r4, r0]
	b _022597D2
_022597B4:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _0225984C ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #1
	lsl r1, r1, #0x14
	tst r1, r2
	bne _022597D2
	mov r1, #0xd1
	str r1, [r4, r0]
	b _022597D2
_022597CE:
	ldr r1, _02259864 ; =0x00000109
	str r1, [r4, r0]
_022597D2:
	ldr r0, [r4, #0x6c]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r0, r4, r2
	mov r2, #0xb7
	lsl r2, r2, #6
	ldr r3, [r0, r2]
	mov r0, #1
	lsl r0, r0, #0x1a
	tst r0, r3
	beq _022597F2
	ldr r0, _02259844 ; =0x00003118
	mov r1, #0
	str r1, [r4, r0]
	b _02259832
_022597F2:
	ldr r0, [sp, #4]
	sub r2, #8
	add r3, r0, #0
	mul r3, r1
	add r0, r4, r3
	ldrh r0, [r0, r2]
	add r1, #0x68
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0225982A
	ldr r0, _02259844 ; =0x00003118
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225982A
	mov r0, #0xba
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	add r3, r4, r0
	mov r0, #0x1c
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	mov r0, #2
	orr r0, r1
	str r0, [r3, r2]
_0225982A:
	mov r0, #0x46
	ldr r1, [r4, #0x6c]
	lsl r0, r0, #2
	str r1, [r4, r0]
_02259832:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02259838: .word 0x00002D90
_0225983C: .word 0x00003114
_02259840: .word 0x00002DA8
_02259844: .word 0x00003118
_02259848: .word 0x00002D58
_0225984C: .word 0x00002DB0
_02259850: .word 0x00002D59
_02259854: .word 0x00002D5A
_02259858: .word 0x00002D5B
_0225985C: .word 0x00002D5C
_02259860: .word 0x00002D5D
_02259864: .word 0x00000109
	thumb_func_end ov16_02259204

	thumb_func_start ov16_02259868
ov16_02259868: ; 0x02259868
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02258AB8
	cmp r0, #0x69
	bne _022598F6
	ldr r5, [r4, #0x64]
	mov r6, #0xc0
	add r3, r5, #0
	mul r3, r6
	ldr r0, _0225990C ; =0x00002DB0
	add r2, r4, r3
	ldr r1, [r2, r0]
	lsl r6, r6, #4
	tst r6, r1
	bne _0225990A
	mov r6, #0x70
	tst r6, r1
	bne _0225990A
	ldr r6, _02259910 ; =0x0000213C
	ldr r7, [r4, r6]
	mov r6, #2
	lsl r6, r6, #8
	tst r7, r6
	bne _0225990A
	lsl r6, r6, #3
	tst r1, r6
	bne _0225990A
	mov r6, #0xc1
	lsl r6, r6, #6
	lsl r5, r5, #1
	add r7, r4, r5
	add r5, r6, #0
	add r5, #0x9c
	ldrh r5, [r7, r5]
	ldr r1, [r4, r6]
	cmp r1, r5
	bne _022598DC
	add r1, r0, #0
	add r1, #0x1c
	ldr r1, [r2, r1]
	lsl r1, r1, #5
	lsr r5, r1, #0x1c
	cmp r5, #0xa
	bhs _0225990A
	add r0, #0x1c
	add r0, r4, r0
	ldr r2, [r0, r3]
	ldr r1, _02259914 ; =0xF87FFFFF
	and r2, r1
	add r1, r5, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #5
	orr r1, r2
	str r1, [r0, r3]
	pop {r3, r4, r5, r6, r7, pc}
_022598DC:
	add r0, #0x1c
	add r2, r4, r0
	ldr r1, [r2, r3]
	ldr r0, _02259914 ; =0xF87FFFFF
	and r0, r1
	str r0, [r2, r3]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, r6]
	lsl r0, r0, #1
	add r0, r4, r0
	add r6, #0x9c
	strh r1, [r0, r6]
	pop {r3, r4, r5, r6, r7, pc}
_022598F6:
	ldr r0, _02259918 ; =0x00002DCC
	ldr r1, [r4, #0x64]
	add r3, r4, r0
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	ldr r0, _02259914 ; =0xF87FFFFF
	and r0, r1
	str r0, [r3, r2]
_0225990A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225990C: .word 0x00002DB0
_02259910: .word 0x0000213C
_02259914: .word 0xF87FFFFF
_02259918: .word 0x00002DCC
	thumb_func_end ov16_02259868

	thumb_func_start ov16_0225991C
ov16_0225991C: ; 0x0225991C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02258AB8
	cmp r0, #0x69
	bne _022599A8
	ldr r5, _022599C0 ; =0x0000216C
	ldr r0, _022599C4 ; =0x801FDA49
	ldr r1, [r4, r5]
	tst r0, r1
	beq _022599BC
	ldr r2, [r4, #0x64]
	mov r0, #0xc1
	lsl r0, r0, #6
	lsl r1, r2, #1
	ldr r3, [r4, r0]
	add r1, r4, r1
	add r0, #0x9c
	ldrh r0, [r1, r0]
	cmp r3, r0
	bne _022599BC
	mov r0, #0xc0
	add r1, r2, #0
	mul r1, r0
	ldr r3, _022599C8 ; =0x00002DCC
	add r6, r4, r1
	ldr r0, [r6, r3]
	lsl r0, r0, #5
	lsr r0, r0, #0x1c
	beq _022599BC
	mov r7, #0x1c
	mul r7, r2
	mov r2, #0xb5
	add r7, r4, r7
	lsl r2, r2, #2
	ldr r7, [r7, r2]
	lsl r7, r7, #0x17
	lsr r7, r7, #0x1d
	bne _022599BC
	add r7, r3, #0
	sub r7, #0x1c
	ldr r6, [r6, r7]
	mov r7, #0xc0
	lsl r7, r7, #4
	tst r7, r6
	bne _022599BC
	mov r7, #0x70
	tst r7, r6
	bne _022599BC
	sub r5, #0x30
	ldr r5, [r4, r5]
	sub r2, #0xd4
	tst r2, r5
	bne _022599BC
	mov r2, #1
	lsl r2, r2, #0xc
	tst r2, r6
	bne _022599BC
	add r2, r4, r3
	sub r0, r0, #1
	lsl r0, r0, #0x1c
	ldr r4, [r2, r1]
	ldr r3, _022599CC ; =0xF87FFFFF
	lsr r0, r0, #5
	and r3, r4
	orr r0, r3
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
_022599A8:
	ldr r0, _022599C8 ; =0x00002DCC
	ldr r1, [r4, #0x64]
	add r3, r4, r0
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	ldr r0, _022599CC ; =0xF87FFFFF
	and r0, r1
	str r0, [r3, r2]
_022599BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022599C0: .word 0x0000216C
_022599C4: .word 0x801FDA49
_022599C8: .word 0x00002DCC
_022599CC: .word 0xF87FFFFF
	thumb_func_end ov16_0225991C

	thumb_func_start ov16_022599D0
ov16_022599D0: ; 0x022599D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r3, #1
	bne _022599E2
	sub r0, r2, #2
	cmp r0, #1
	bhi _022599E2
	mov r0, #1
	b _022599E4
_022599E2:
	mov r0, #0
_022599E4:
	cmp r0, #1
	mov r0, #0xc0
	add r4, r1, #0
	mul r4, r0
	ldr r2, _02259A20 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	mov r6, #0
	bl sub_0208C104
	ldr r1, _02259A24 ; =0x00002DAC
	add r2, r5, r4
	ldr r1, [r2, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bne _02259A1A
	cmp r0, #4
	beq _02259A1C
	cmp r0, #3
	beq _02259A1C
_02259A1A:
	mov r6, #0xb
_02259A1C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02259A20: .word 0x00002D8C
_02259A24: .word 0x00002DAC
	thumb_func_end ov16_022599D0

	thumb_func_start ov16_02259A28
ov16_02259A28: ; 0x02259A28
	push {r3, r4}
	mov r3, #0xc0
	add r4, r1, #0
	mul r4, r3
	add r1, r0, r4
	ldr r0, _02259A58 ; =0x00002DB0
	mov r2, #1
	ldr r0, [r1, r0]
	lsl r1, r2, #0x16
	tst r1, r0
	bne _02259A50
	lsl r1, r3, #4
	tst r1, r0
	bne _02259A50
	mov r1, #0x70
	tst r1, r0
	bne _02259A50
	lsl r1, r2, #0xc
	tst r0, r1
	beq _02259A52
_02259A50:
	mov r2, #0
_02259A52:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02259A58: .word 0x00002DB0
	thumb_func_end ov16_02259A28

	thumb_func_start ov16_02259A5C
ov16_02259A5C: ; 0x02259A5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	bl ov16_0223E16C
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov16_0223E24C
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov16_0223E22C
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_0223DF0C
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _02259A9A
	add r0, r6, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	b _02259A9E
_02259A9A:
	sub r1, #0xd8
	ldr r2, [r4, r1]
_02259A9E:
	str r7, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r6, #0
	bl sub_02077E64
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02259A5C

	thumb_func_start ov16_02259AB4
ov16_02259AB4: ; 0x02259AB4
	lsl r1, r1, #8
	add r1, r0, r1
	mov r0, #0x23
	lsl r0, r0, #8
	ldrb r0, [r1, r0]
	bx lr
	thumb_func_end ov16_02259AB4

	thumb_func_start ov16_02259AC0
ov16_02259AC0: ; 0x02259AC0
	mov r3, #0x1c
	mul r3, r1
	add r1, r0, r3
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #8
	mov r2, #0
	tst r0, r1
	beq _02259AD6
	mov r2, #1
_02259AD6:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov16_02259AC0

	thumb_func_start ov16_02259ADC
ov16_02259ADC: ; 0x02259ADC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	bl ov16_0223E16C
	add r4, r0, #0
	bl sub_02025F20
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02025F30
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02025EF0
	ldr r2, [r5, #0x64]
	mov r1, #0xc0
	add r4, r2, #0
	mul r4, r1
	ldr r1, _02259B34 ; =0x00002DB4
	add r3, r5, r4
	ldr r2, [r3, r1]
	cmp r6, r2
	bne _02259B30
	add r2, r1, #0
	add r2, #0xa
	ldrb r2, [r3, r2]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1c
	cmp r7, r2
	bne _02259B30
	sub r1, #0x20
	add r1, r5, r1
	add r1, r1, r4
	mov r2, #7
	bl sub_02002238
	cmp r0, #0
	bne _02259B30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02259B30:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02259B34: .word 0x00002DB4
	thumb_func_end ov16_02259ADC

	thumb_func_start ov16_02259B38
ov16_02259B38: ; 0x02259B38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r1, #0
	bl ov16_0223E16C
	add r4, r0, #0
	bl sub_02025F20
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02025F30
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02025EF0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x90
	add r2, sp, #0
	bl sub_02074470
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	cmp r6, r0
	bne _02259B96
	add r0, r5, #0
	mov r1, #0x9d
	mov r2, #0
	bl sub_02074470
	cmp r7, r0
	bne _02259B96
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #7
	bl sub_02002238
	cmp r0, #0
	bne _02259B96
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02259B96:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02259B38

	thumb_func_start ov16_02259B9C
ov16_02259B9C: ; 0x02259B9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp, #4]
	str r4, [sp, #8]
	bl ov16_0223DF1C
	cmp r0, #0
	bgt _02259BB4
	b _0225A16C
_02259BB4:
	ldr r0, _02259EB4 ; =0x00002D66
	add r6, r5, r0
_02259BB8:
	ldr r0, _02259EB8 ; =0x000021EC
	add r1, r5, r4
	ldrb r1, [r1, r0]
	mov r0, #0x46
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r3, [r5, r0]
	mov r0, #0xc0
	mul r0, r3
	add r2, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r1, [r2, r0]
	ldr r0, _02259EBC ; =0x0000015F
	cmp r1, r0
	bne _02259BEC
	ldr r0, _02259EC0 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02259BEC
	add r0, r5, #0
	add r1, r3, #0
	bl ov16_02255A4C
	cmp r0, #0x3b
	beq _02259BEE
_02259BEC:
	b _02259DDA
_02259BEE:
	mov r0, #0xd
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02259C16
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	beq _02259C18
_02259C16:
	b _02259D88
_02259C18:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0xf3
	tst r1, r0
	bne _02259C76
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	ldr r2, _02259EC4 ; =0x00002D64
	add r1, r5, r1
	ldrb r2, [r1, r2]
	cmp r2, #0
	beq _02259C76
	ldr r2, _02259EC8 ; =0x00002D65
	ldrb r2, [r1, r2]
	cmp r2, #0
	beq _02259C76
	ldr r3, _02259EC4 ; =0x00002D64
	mov r2, #0
	mov r0, #0x46
	strb r2, [r1, r3]
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r1, #0xc0
	add r6, r4, #0
	mul r6, r1
	add r6, r5, r6
	add r4, r3, #1
	strb r2, [r6, r4]
	ldr r0, [r5, r0]
	add r2, r3, #2
	add r4, r0, #0
	mul r4, r1
	add r2, r5, r2
	ldrb r3, [r2, r4]
	mov r0, #0x1f
	add r1, #0x46
	bic r3, r0
	ldr r0, [sp, #4]
	strb r3, [r2, r4]
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _0225A16C
_02259C76:
	mov r1, #0x30
	tst r1, r0
	beq _02259CD0
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	ldr r2, _02259EC4 ; =0x00002D64
	add r1, r5, r1
	ldrb r2, [r1, r2]
	cmp r2, #0xa
	beq _02259CD0
	ldr r2, _02259EC8 ; =0x00002D65
	ldrb r2, [r1, r2]
	cmp r2, #0xa
	beq _02259CD0
	ldr r3, _02259EC4 ; =0x00002D64
	mov r2, #0xa
	mov r0, #0x46
	strb r2, [r1, r3]
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r1, #0xc0
	add r6, r4, #0
	mul r6, r1
	add r6, r5, r6
	add r4, r3, #1
	strb r2, [r6, r4]
	add r2, r3, #2
	ldr r3, [r5, r0]
	add r2, r5, r2
	add r0, r3, #0
	mul r0, r1
	ldrb r4, [r2, r0]
	mov r3, #0x1f
	add r1, #0x46
	bic r4, r3
	mov r3, #1
	str r3, [sp, #8]
	orr r3, r4
	strb r3, [r2, r0]
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	b _0225A16C
_02259CD0:
	mov r1, #3
	tst r1, r0
	beq _02259D2C
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	ldr r2, _02259EC4 ; =0x00002D64
	add r1, r5, r1
	ldrb r2, [r1, r2]
	cmp r2, #0xb
	beq _02259D2C
	ldr r2, _02259EC8 ; =0x00002D65
	ldrb r2, [r1, r2]
	cmp r2, #0xb
	beq _02259D2C
	ldr r3, _02259EC4 ; =0x00002D64
	mov r2, #0xb
	mov r0, #0x46
	strb r2, [r1, r3]
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r1, #0xc0
	add r6, r4, #0
	mul r6, r1
	add r6, r5, r6
	add r4, r3, #1
	strb r2, [r6, r4]
	add r2, r3, #2
	ldr r3, [r5, r0]
	add r2, r5, r2
	add r0, r3, #0
	mul r0, r1
	ldrb r4, [r2, r0]
	mov r3, #0x1f
	add r1, #0x46
	bic r4, r3
	mov r3, #2
	orr r3, r4
	strb r3, [r2, r0]
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _0225A16C
_02259D2C:
	mov r1, #0xc0
	tst r0, r1
	beq _02259DDA
	add r0, r1, #0
	add r0, #0x58
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02259EC4 ; =0x00002D64
	add r0, r5, r0
	ldrb r1, [r0, r1]
	cmp r1, #0xf
	beq _02259DDA
	ldr r1, _02259EC8 ; =0x00002D65
	ldrb r1, [r0, r1]
	cmp r1, #0xf
	beq _02259DDA
	ldr r3, _02259EC4 ; =0x00002D64
	mov r2, #0xf
	strb r2, [r0, r3]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r1, #0xc0
	add r6, r4, #0
	mul r6, r1
	add r6, r5, r6
	add r4, r3, #1
	strb r2, [r6, r4]
	add r2, r3, #2
	ldr r3, [r5, r0]
	add r2, r5, r2
	add r0, r3, #0
	mul r0, r1
	ldrb r4, [r2, r0]
	mov r3, #0x1f
	add r1, #0x46
	bic r4, r3
	mov r3, #3
	orr r3, r4
	strb r3, [r2, r0]
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _0225A16C
_02259D88:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02259EC4 ; =0x00002D64
	add r0, r5, r0
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02259DDA
	ldr r1, _02259EC8 ; =0x00002D65
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02259DDA
	ldr r3, _02259EC4 ; =0x00002D64
	mov r2, #0
	strb r2, [r0, r3]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r1, #0xc0
	add r6, r4, #0
	mul r6, r1
	add r6, r5, r6
	add r4, r3, #1
	strb r2, [r6, r4]
	ldr r0, [r5, r0]
	add r2, r3, #2
	add r4, r0, #0
	mul r4, r1
	add r2, r5, r2
	ldrb r3, [r2, r4]
	mov r0, #0x1f
	add r1, #0x46
	bic r3, r0
	ldr r0, [sp, #4]
	strb r3, [r2, r4]
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _0225A16C
_02259DDA:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	mov r1, #0xb5
	add r0, r5, r0
	lsl r1, r1, #6
	ldrh r2, [r0, r1]
	ldr r1, _02259ECC ; =0x000001A5
	cmp r2, r1
	bne _02259DFA
	ldr r1, _02259EC0 ; =0x00002D8C
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02259DFC
_02259DFA:
	b _02259F26
_02259DFC:
	mov r0, #0xd
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02259F00
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02259F00
	mov r0, #6
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	mov r0, #0xf3
	tst r0, r2
	bne _02259E58
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xc0
	add r3, r0, #0
	mul r3, r1
	ldrb r0, [r6, r3]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	cmp r1, #1
	bne _02259E58
	mov r1, #0x1f
	bic r0, r1
	strb r0, [r6, r3]
	ldr r1, _02259ED0 ; =0x00000106
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _0225A16C
_02259E58:
	mov r0, #0x30
	tst r0, r2
	beq _02259E86
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xc0
	add r3, r0, #0
	mul r3, r1
	ldrb r0, [r6, r3]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	bne _02259E86
	mov r1, #0x1f
	bic r0, r1
	mov r1, #1
	orr r0, r1
	str r1, [sp, #8]
	strb r0, [r6, r3]
	ldr r1, _02259ED0 ; =0x00000106
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	b _0225A16C
_02259E86:
	mov r0, #3
	tst r0, r2
	beq _02259ED4
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xc0
	add r3, r0, #0
	mul r3, r1
	ldrb r0, [r6, r3]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	cmp r1, #1
	bne _02259ED4
	mov r1, #0x1f
	bic r0, r1
	strb r0, [r6, r3]
	ldr r1, _02259ED0 ; =0x00000106
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _0225A16C
	; .align 2, 0
_02259EB4: .word 0x00002D66
_02259EB8: .word 0x000021EC
_02259EBC: .word 0x0000015F
_02259EC0: .word 0x00002D8C
_02259EC4: .word 0x00002D64
_02259EC8: .word 0x00002D65
_02259ECC: .word 0x000001A5
_02259ED0: .word 0x00000106
_02259ED4:
	mov r0, #0xc0
	tst r0, r2
	beq _02259F26
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	ldrb r2, [r6, r0]
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x1b
	cmp r1, #1
	bne _02259F26
	mov r1, #0x1f
	bic r2, r1
	strb r2, [r6, r0]
	ldr r1, _0225A174 ; =0x00000106
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _0225A16C
_02259F00:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	ldrb r2, [r6, r0]
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x1b
	cmp r1, #1
	bne _02259F26
	mov r1, #0x1f
	bic r2, r1
	strb r2, [r6, r0]
	ldr r1, _0225A174 ; =0x00000106
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _0225A16C
_02259F26:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	mov r0, #0xc0
	mul r0, r3
	add r2, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r1, [r2, r0]
	ldr r0, _0225A178 ; =0x000001ED
	cmp r1, r0
	bne _02259FA4
	ldr r0, _0225A17C ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02259FA4
	add r0, r5, #0
	add r1, r3, #0
	bl ov16_02255A4C
	cmp r0, #0x79
	bne _02259FA4
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0225A180 ; =0x00002DB8
	mov r2, #5
	ldrh r0, [r1, r0]
	mov r1, #1
	bl sub_0207CFF0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02077988
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0xc0
	add r3, r1, #0
	mul r3, r2
	ldrb r1, [r6, r3]
	lsl r2, r1, #0x1b
	lsr r2, r2, #0x1b
	cmp r0, r2
	beq _02259FA4
	mov r2, #0x1f
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r0, r0, #0x18
	mov r2, #0x1f
	and r0, r2
	orr r0, r1
	strb r0, [r6, r3]
	ldr r0, [sp, #4]
	add r2, #0xe7
	str r2, [r0, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _0225A16C
_02259FA4:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	add r3, r1, #0
	mul r3, r0
	mov r0, #0xb5
	add r2, r5, r3
	lsl r0, r0, #6
	ldrh r1, [r2, r0]
	ldr r0, _0225A184 ; =0x000001E7
	cmp r1, r0
	bne _0225A000
	ldr r0, _0225A17C ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225A000
	ldr r0, _0225A188 ; =0x00002D66
	ldrb r0, [r2, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	cmp r0, #1
	bne _0225A000
	ldr r0, _0225A18C ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	bne _0225A002
	add r0, r7, #0
	bl ov16_0223EBEC
	mov r1, #0x80
	tst r0, r1
	bne _0225A000
	add r0, r1, #0
	add r0, #0x98
	ldr r1, [r5, r0]
	mov r0, #0xc0
	add r3, r1, #0
	mul r3, r0
	ldr r0, _0225A180 ; =0x00002DB8
	add r1, r5, r3
	ldrh r0, [r1, r0]
	cmp r0, #0x70
	bne _0225A002
_0225A000:
	b _0225A15E
_0225A002:
	ldr r0, _0225A18C ; =0x00002DB0
	add r1, r5, r3
	ldr r1, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	bne _0225A012
	b _0225A150
_0225A012:
	mov r0, #5
	bl sub_02073C74
	add r4, r0, #0
	add r0, r7, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _0225A036
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225A190 ; =0x000021AC
	ldr r1, [r1, r0]
	b _0225A040
_0225A036:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	eor r1, r0
_0225A040:
	ldr r2, _0225A194 ; =0x0000219C
	add r3, r5, r1
	ldrb r2, [r3, r2]
	add r0, r7, #0
	bl ov16_0223DFAC
	add r1, r4, #0
	bl sub_020775EC
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0xc
	bl sub_02074B30
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #0xc
	bl sub_02074B30
	add r0, r4, #0
	bl sub_02077A00
	add r0, r4, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _0225A198 ; =0x00002D42
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _0225A19C ; =0x00002D44
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _0225A1A0 ; =0x00002D46
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _0225A1A4 ; =0x00002D48
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _0225A1A8 ; =0x00002D4A
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	mov r6, #0x46
	lsl r6, r6, #2
	ldr r2, [r5, r6]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _0225A1AC ; =0x00002D67
	strb r0, [r2, r1]
	sub r0, r1, #1
	add r3, r5, r0
	ldr r0, [r5, r6]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldrb r1, [r3, r2]
	mov r0, #0x1f
	bic r1, r0
	strb r1, [r3, r2]
	mov r1, #0x85
	lsl r1, r1, #6
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0x1a
	orr r0, r2
	str r0, [r5, r1]
	ldr r2, [r5, r6]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_022662FC
	add r0, r4, #0
	bl sub_020181C4
	add r1, r6, #0
	ldr r0, [sp, #4]
	sub r1, #0x12
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _0225A16C
_0225A150:
	mov r1, #0x4a
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _0225A16C
_0225A15E:
	add r0, r7, #0
	add r4, r4, #1
	bl ov16_0223DF1C
	cmp r4, r0
	bge _0225A16C
	b _02259BB8
_0225A16C:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225A174: .word 0x00000106
_0225A178: .word 0x000001ED
_0225A17C: .word 0x00002D8C
_0225A180: .word 0x00002DB8
_0225A184: .word 0x000001E7
_0225A188: .word 0x00002D66
_0225A18C: .word 0x00002DB0
_0225A190: .word 0x000021AC
_0225A194: .word 0x0000219C
_0225A198: .word 0x00002D42
_0225A19C: .word 0x00002D44
_0225A1A0: .word 0x00002D46
_0225A1A4: .word 0x00002D48
_0225A1A8: .word 0x00002D4A
_0225A1AC: .word 0x00002D67
	thumb_func_end ov16_02259B9C

	thumb_func_start ov16_0225A1B0
ov16_0225A1B0: ; 0x0225A1B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	str r1, [sp]
	mov r7, #0
	bl ov16_0223DF1C
	cmp r0, #0
	ble _0225A1F2
	ldr r5, [sp]
	ldr r4, _0225A1F8 ; =0x0000312C
_0225A1C6:
	mov r1, #0
_0225A1C8:
	add r0, r5, r1
	strb r1, [r0, r4]
	add r1, r1, #1
	cmp r1, #6
	blt _0225A1C8
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r3, r1, #0
	add r6, r3, r7
	ldr r3, _0225A1FC ; =0x0000219C
	add r2, r7, #0
	ldrb r3, [r6, r3]
	bl ov16_0225A200
	ldr r0, [sp, #4]
	add r5, r5, #6
	add r7, r7, #1
	bl ov16_0223DF1C
	cmp r7, r0
	blt _0225A1C6
_0225A1F2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225A1F8: .word 0x0000312C
_0225A1FC: .word 0x0000219C
	thumb_func_end ov16_0225A1B0

	thumb_func_start ov16_0225A200
ov16_0225A200: ; 0x0225A200
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r1, r0
	beq _0225A21A
	mov r1, #0x18
	tst r1, r0
	beq _0225A22E
_0225A21A:
	mov r1, #0x10
	tst r0, r1
	beq _0225A252
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0223E1F8
	mov r1, #1
	tst r0, r1
	bne _0225A252
_0225A22E:
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0223E1F8
	cmp r0, #4
	beq _0225A246
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0223E1F8
	cmp r0, #5
	bne _0225A24A
_0225A246:
	mov r1, #1
	b _0225A24C
_0225A24A:
	mov r1, #0
_0225A24C:
	mov r0, #1
	and r5, r0
	b _0225A254
_0225A252:
	mov r1, #0
_0225A254:
	mov r2, #6
	mul r2, r5
	ldr r3, _0225A27C ; =0x0000312C
	mov r0, #0
	add r7, r6, r2
_0225A25E:
	ldrb r5, [r7, r3]
	cmp r4, r5
	beq _0225A26C
	add r0, r0, #1
	add r7, r7, #1
	cmp r0, #6
	blt _0225A25E
_0225A26C:
	ldr r3, _0225A27C ; =0x0000312C
	add r3, r6, r3
	add r4, r3, r2
	ldrb r3, [r4, r1]
	ldrb r2, [r4, r0]
	strb r2, [r4, r1]
	strb r3, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225A27C: .word 0x0000312C
	thumb_func_end ov16_0225A200

	thumb_func_start ov16_0225A280
ov16_0225A280: ; 0x0225A280
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	str r0, [sp, #4]
	ldr r0, [sp, #0xa0]
	add r5, r1, #0
	str r0, [sp, #0xa0]
	ldr r0, [sp, #0xb4]
	str r2, [sp, #8]
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0x84]
	ldr r0, [sp, #0xb4]
	str r3, [sp, #0xc]
	cmp r0, #1
	beq _0225A2A4
	bhi _0225A2A4
	bl GF_AssertFail
_0225A2A4:
	add r0, sp, #0x90
	ldrb r0, [r0, #0x1c]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
	add r0, sp, #0xb0
	ldrb r0, [r0]
	mov r2, #2
	mov r3, #0
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x78]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #5
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x13
	mov r3, #0
	bl ov16_02252060
	sub r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x70]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #0
	bl ov16_02252060
	sub r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x6c]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x16
	mov r3, #0
	bl ov16_02252060
	sub r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x68]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x17
	mov r3, #0
	bl ov16_02252060
	sub r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x64]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x2b
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	str r0, [sp, #0x60]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	add r3, r2, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #0
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	add r3, r2, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x54]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x2f
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x2f
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x30
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x30
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x34
	mov r3, #0
	bl ov16_02252060
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x34
	mov r3, #0
	bl ov16_02252060
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl ov16_02255A4C
	add r7, r0, #0
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov16_02255A4C
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x1d
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x1d
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl ov16_02258874
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov16_0225B0FC
	str r0, [sp, #0x30]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov16_0225B0FC
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov16_02258874
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov16_0225B0FC
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov16_0225B0FC
	ldr r0, [sp, #4]
	bl ov16_0223DF0C
	str r0, [sp, #0x5c]
	add r0, sp, #0x90
	ldrh r4, [r0, #0x14]
	cmp r4, #0
	bne _0225A4A4
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225A724 ; =0x000003E1
	ldrb r4, [r1, r0]
_0225A4A4:
	cmp r7, #0x60
	bne _0225A4AC
	mov r6, #0
	b _0225A4C8
_0225A4AC:
	add r0, sp, #0x90
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	bne _0225A4C0
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225A728 ; =0x000003E2
	ldrb r6, [r1, r0]
	b _0225A4C8
_0225A4C0:
	mov r0, #0x3f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_0225A4C8:
	ldr r0, _0225A72C ; =0x00002158
	ldr r0, [r5, r0]
	cmp r0, #0xa
	bge _0225A4D4
	bl GF_AssertFail
_0225A4D4:
	ldr r0, _0225A72C ; =0x00002158
	mov r1, #0xa
	ldr r0, [r5, r0]
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, sp, #0x90
	ldrb r0, [r0, #0x1c]
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	mov r1, #0xb7
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	mov r1, #2
	lsl r1, r1, #8
	tst r1, r2
	beq _0225A504
	cmp r6, #0xd
	bne _0225A504
	lsl r1, r4, #0x11
	lsr r4, r1, #0x10
_0225A504:
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _0225A522
	mov r0, #0xf
	mul r0, r4
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A522:
	cmp r7, #0x65
	bne _0225A53E
	ldr r0, [sp, #8]
	cmp r0, #0xa5
	beq _0225A53E
	cmp r4, #0x3c
	bhi _0225A53E
	mov r0, #0xf
	mul r0, r4
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A53E:
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	add r1, r5, r0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r7, #0x25
	str r0, [sp, #0x80]
	beq _0225A556
	cmp r7, #0x4a
	bne _0225A55E
_0225A556:
	ldr r0, [sp, #0x7c]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_0225A55E:
	cmp r7, #0x70
	bne _0225A58C
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	mov r3, #0
	bl ov16_0225B45C
	str r0, [sp, #0x88]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x59
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x88]
	sub r0, r1, r0
	cmp r0, #5
	bge _0225A58C
	ldr r0, [sp, #0x7c]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_0225A58C:
	ldr r3, _0225A730 ; =0x0226EC92
	mov r2, #0
_0225A590:
	ldrb r1, [r3]
	ldr r0, [sp, #0x30]
	cmp r0, r1
	bne _0225A5B0
	ldrb r0, [r3, #1]
	cmp r6, r0
	bne _0225A5B0
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0225A5B8
_0225A5B0:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x21
	blo _0225A590
_0225A5B8:
	ldr r0, [sp, #0x30]
	cmp r0, #0x37
	bne _0225A5D0
	ldr r1, [sp, #0x7c]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_0225A5D0:
	ldr r0, [sp, #0x30]
	cmp r0, #0x7d
	bne _0225A5E8
	ldr r1, [sp, #0x74]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_0225A5E8:
	ldr r0, [sp, #0x30]
	cmp r0, #0x3c
	bne _0225A616
	ldr r0, [sp, #0x5c]
	mov r1, #0x80
	tst r0, r1
	bne _0225A616
	ldr r1, _0225A734 ; =0x0000FE84
	ldr r0, [sp, #0x58]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0225A616
	ldr r1, [sp, #0x74]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_0225A616:
	ldr r0, [sp, #0x28]
	cmp r0, #0x3c
	bne _0225A644
	ldr r0, [sp, #0x5c]
	mov r1, #0x80
	tst r0, r1
	bne _0225A644
	ldr r1, _0225A734 ; =0x0000FE84
	ldr r0, [sp, #0x54]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0225A644
	ldr r1, [sp, #0x10]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_0225A644:
	ldr r0, [sp, #0x30]
	cmp r0, #0x3d
	bne _0225A65A
	ldr r1, _0225A738 ; =0x0000016E
	ldr r0, [sp, #0x58]
	cmp r0, r1
	bne _0225A65A
	ldr r0, [sp, #0x74]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_0225A65A:
	ldr r0, [sp, #0x28]
	cmp r0, #0x3e
	bne _0225A670
	ldr r1, _0225A738 ; =0x0000016E
	ldr r0, [sp, #0x54]
	cmp r0, r1
	bne _0225A670
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_0225A670:
	ldr r0, [sp, #0x30]
	cmp r0, #0x47
	bne _0225A680
	ldr r0, [sp, #0x58]
	cmp r0, #0x19
	bne _0225A680
	lsl r0, r4, #0x11
	lsr r4, r0, #0x10
_0225A680:
	ldr r0, [sp, #0x28]
	cmp r0, #0x5a
	bne _0225A694
	ldr r0, [sp, #0x54]
	cmp r0, #0x84
	bne _0225A694
	ldr r0, [sp, #0x78]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x78]
_0225A694:
	ldr r0, [sp, #0x30]
	cmp r0, #0x5b
	bne _0225A6B0
	ldr r1, _0225A73C ; =0x0000FF98
	ldr r0, [sp, #0x58]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0225A6B0
	ldr r0, [sp, #0x7c]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_0225A6B0:
	ldr r0, [sp, #0x30]
	cmp r0, #3
	bne _0225A6D6
	cmp r6, #0x10
	beq _0225A6BE
	cmp r6, #8
	bne _0225A6D6
_0225A6BE:
	ldr r1, _0225A740 ; =0x000001E3
	ldr r0, [sp, #0x58]
	cmp r0, r1
	bne _0225A6D6
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A6D6:
	ldr r0, [sp, #0x30]
	cmp r0, #4
	bne _0225A6FE
	cmp r6, #0x10
	beq _0225A6E4
	cmp r6, #0xb
	bne _0225A6FE
_0225A6E4:
	mov r1, #0x79
	ldr r0, [sp, #0x58]
	lsl r1, r1, #2
	cmp r0, r1
	bne _0225A6FE
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A6FE:
	ldr r0, [sp, #0x30]
	cmp r0, #2
	bne _0225A75E
	cmp r6, #0x10
	beq _0225A70C
	cmp r6, #7
	bne _0225A75E
_0225A70C:
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x35
	mov r3, #0
	bl ov16_02252060
	mov r1, #2
	lsl r1, r1, #0x14
	tst r0, r1
	bne _0225A75E
	ldr r1, _0225A744 ; =0x000001E7
	b _0225A748
	; .align 2, 0
_0225A724: .word 0x000003E1
_0225A728: .word 0x000003E2
_0225A72C: .word 0x00002158
_0225A730: .word 0x0226EC92
_0225A734: .word 0x0000FE84
_0225A738: .word 0x0000016E
_0225A73C: .word 0x0000FF98
_0225A740: .word 0x000001E3
_0225A744: .word 0x000001E7
_0225A748:
	ldr r0, [sp, #0x58]
	cmp r0, r1
	bne _0225A75E
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A75E:
	ldr r0, [sp, #0x30]
	cmp r0, #0x5e
	bne _0225A77A
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _0225A77A
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A77A:
	ldr r0, [sp, #0x30]
	cmp r0, #0x5f
	bne _0225A798
	ldr r0, [sp, #0x80]
	cmp r0, #1
	bne _0225A798
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	str r0, [sp, #0x2c]
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A798:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x2f
	bl ov16_02255AB4
	cmp r0, #1
	bne _0225A7B4
	cmp r6, #0xa
	beq _0225A7B0
	cmp r6, #0xf
	bne _0225A7B4
_0225A7B0:
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
_0225A7B4:
	cmp r7, #0x37
	bne _0225A7CA
	ldr r1, [sp, #0x7c]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_0225A7CA:
	cmp r7, #0x3e
	bne _0225A7E6
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0225A7E6
	ldr r1, [sp, #0x7c]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_0225A7E6:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x3f
	bl ov16_02255AB4
	cmp r0, #1
	bne _0225A80E
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0225A80E
	ldr r1, [sp, #0x78]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x78]
_0225A80E:
	cmp r7, #0x39
	bne _0225A838
	mov r0, #0x3a
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r1, r5, #0
	mov r2, #1
	bl ov16_022555A4
	cmp r0, #0
	beq _0225A838
	ldr r1, [sp, #0x74]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_0225A838:
	cmp r7, #0x3a
	bne _0225A862
	mov r0, #0x39
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r1, r5, #0
	mov r2, #1
	bl ov16_022555A4
	cmp r0, #0
	beq _0225A862
	ldr r1, [sp, #0x74]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_0225A862:
	cmp r6, #0xd
	bne _0225A87A
	mov r2, #1
	ldr r0, [sp, #4]
	add r1, r5, #0
	lsl r2, r2, #0x10
	bl ov16_02255F68
	cmp r0, #0
	beq _0225A87A
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
_0225A87A:
	cmp r6, #0xa
	bne _0225A892
	mov r2, #2
	ldr r0, [sp, #4]
	add r1, r5, #0
	lsl r2, r2, #0x10
	bl ov16_02255F68
	cmp r0, #0
	beq _0225A892
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
_0225A892:
	cmp r6, #0xc
	bne _0225A8B6
	cmp r7, #0x41
	bne _0225A8B6
	ldr r0, [sp, #0x4c]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bgt _0225A8B6
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A8B6:
	cmp r6, #0xa
	bne _0225A8DA
	cmp r7, #0x42
	bne _0225A8DA
	ldr r0, [sp, #0x4c]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bgt _0225A8DA
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A8DA:
	cmp r6, #0xb
	bne _0225A8FE
	cmp r7, #0x43
	bne _0225A8FE
	ldr r0, [sp, #0x4c]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bgt _0225A8FE
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A8FE:
	cmp r6, #6
	bne _0225A922
	cmp r7, #0x44
	bne _0225A922
	ldr r0, [sp, #0x4c]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bgt _0225A922
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A922:
	cmp r6, #0xa
	bne _0225A93A
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x55
	bl ov16_02255AB4
	cmp r0, #1
	bne _0225A93A
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
_0225A93A:
	cmp r6, #0xa
	bne _0225A95C
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x57
	bl ov16_02255AB4
	cmp r0, #1
	bne _0225A95C
	mov r0, #0x7d
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225A95C:
	cmp r7, #0x56
	bne _0225A99C
	ldr r0, [sp, #0x70]
	mov r1, #5
	lsl r0, r0, #0x19
	asr r0, r0, #0x18
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x70]
	mvn r1, r1
	cmp r0, r1
	bge _0225A974
	str r1, [sp, #0x70]
_0225A974:
	ldr r0, [sp, #0x70]
	cmp r0, #6
	ble _0225A97E
	mov r0, #6
	str r0, [sp, #0x70]
_0225A97E:
	ldr r0, [sp, #0x68]
	mov r1, #5
	lsl r0, r0, #0x19
	asr r0, r0, #0x18
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x68]
	mvn r1, r1
	cmp r0, r1
	bge _0225A992
	str r1, [sp, #0x68]
_0225A992:
	ldr r0, [sp, #0x68]
	cmp r0, #6
	ble _0225A99C
	mov r0, #6
	str r0, [sp, #0x68]
_0225A99C:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x56
	bl ov16_02255AB4
	cmp r0, #1
	bne _0225A9E8
	ldr r0, [sp, #0x6c]
	mov r1, #5
	lsl r0, r0, #0x19
	asr r0, r0, #0x18
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x6c]
	mvn r1, r1
	cmp r0, r1
	bge _0225A9C0
	str r1, [sp, #0x6c]
_0225A9C0:
	ldr r0, [sp, #0x6c]
	cmp r0, #6
	ble _0225A9CA
	mov r0, #6
	str r0, [sp, #0x6c]
_0225A9CA:
	ldr r0, [sp, #0x64]
	mov r1, #5
	lsl r0, r0, #0x19
	asr r0, r0, #0x18
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x64]
	mvn r1, r1
	cmp r0, r1
	bge _0225A9DE
	str r1, [sp, #0x64]
_0225A9DE:
	ldr r0, [sp, #0x64]
	cmp r0, #6
	ble _0225A9E8
	mov r0, #6
	str r0, [sp, #0x64]
_0225A9E8:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x6d
	bl ov16_02255AB4
	cmp r0, #1
	bne _0225A9FE
	mov r0, #0
	str r0, [sp, #0x70]
	str r0, [sp, #0x68]
_0225A9FE:
	cmp r7, #0x6d
	bne _0225AA08
	mov r0, #0
	str r0, [sp, #0x6c]
	str r0, [sp, #0x64]
_0225AA08:
	ldr r0, [sp, #0x70]
	add r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x6c]
	add r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x68]
	add r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x64]
	add r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x64]
	cmp r7, #0x4f
	bne _0225AA56
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bne _0225AA56
	add r0, r1, #0
	cmp r0, #2
	beq _0225AA56
	ldr r0, [sp, #0x3c]
	cmp r0, #2
	beq _0225AA56
	mov r0, #0x7d
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225AA56:
	cmp r7, #0x4f
	bne _0225AA7C
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	beq _0225AA7C
	add r0, r1, #0
	cmp r0, #2
	beq _0225AA7C
	ldr r0, [sp, #0x3c]
	cmp r0, #2
	beq _0225AA7C
	mov r0, #0x4b
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225AA7C:
	ldr r2, _0225AD6C ; =0x0226EC16
	mov r3, #0
_0225AA80:
	ldrh r1, [r2]
	ldr r0, [sp, #8]
	cmp r0, r1
	bne _0225AA9C
	cmp r7, #0x59
	bne _0225AA9C
	mov r0, #0xc
	mul r0, r4
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0225AAA4
_0225AA9C:
	add r3, r3, #1
	add r2, r2, #2
	cmp r3, #0xf
	blo _0225AA80
_0225AAA4:
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0225AB76
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0225AB76
	ldr r0, [sp, #0xa0]
	mov r1, #0x30
	and r0, r1
	str r0, [sp, #0x1c]
	beq _0225AAEC
	cmp r7, #0x5e
	bne _0225AAEC
	ldr r1, [sp, #0x74]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_0225AAEC:
	ldr r0, [sp, #0xa0]
	mov r1, #0xc
	tst r0, r1
	beq _0225AB12
	ldr r0, [sp, #0x38]
	cmp r0, #5
	beq _0225AB00
	ldr r0, [sp, #0x34]
	cmp r0, #5
	bne _0225AB12
_0225AB00:
	ldr r1, [sp, #0x10]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_0225AB12:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0225AB3E
	mov r0, #0x7a
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r1, r5, #0
	mov r2, #1
	bl ov16_022555A4
	cmp r0, #0
	beq _0225AB3E
	ldr r1, [sp, #0x7c]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_0225AB3E:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0225AB76
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x68
	beq _0225AB76
	mov r0, #0x7a
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	mov r2, #1
	bl ov16_022555A4
	cmp r0, #0
	beq _0225AB76
	ldr r1, [sp, #0x10]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_0225AB76:
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _0225AD70 ; =0x000003DE
	ldrh r0, [r1, r0]
	str r0, [sp, #0x14]
	cmp r0, #7
	bne _0225AB8C
	ldr r0, [sp, #0x78]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #0x78]
_0225AB8C:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _0225AC8E
	ldr r0, [sp, #0xb4]
	cmp r0, #1
	bls _0225ABBA
	ldr r0, [sp, #0x70]
	cmp r0, #6
	ble _0225ABB4
	lsl r1, r0, #1
	ldr r0, _0225AD74 ; =0x0226EBE0
	ldr r2, [sp, #0x7c]
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0225AD78 ; =0x0226EBE1
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x84]
	b _0225ABD0
_0225ABB4:
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x84]
	b _0225ABD0
_0225ABBA:
	ldr r0, [sp, #0x70]
	ldr r2, [sp, #0x7c]
	lsl r1, r0, #1
	ldr r0, _0225AD74 ; =0x0226EBE0
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0225AD78 ; =0x0226EBE1
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x84]
_0225ABD0:
	ldr r0, [sp, #0x84]
	add r1, r0, #0
	ldr r0, [sp, #0x60]
	mul r1, r4
	str r1, [sp, #0x84]
	lsl r0, r0, #1
	mov r1, #5
	bl _s32_div_f
	add r1, r0, #2
	ldr r0, [sp, #0x84]
	mul r1, r0
	ldr r0, [sp, #0xb4]
	str r1, [sp, #0x84]
	cmp r0, #1
	bls _0225AC0C
	ldr r0, [sp, #0x6c]
	cmp r0, #6
	bge _0225AC22
	lsl r1, r0, #1
	ldr r0, _0225AD74 ; =0x0226EBE0
	ldr r2, [sp, #0x78]
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0225AD78 ; =0x0226EBE1
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x78]
	b _0225AC22
_0225AC0C:
	ldr r0, [sp, #0x6c]
	ldr r2, [sp, #0x78]
	lsl r1, r0, #1
	ldr r0, _0225AD74 ; =0x0226EBE0
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0225AD78 ; =0x0226EBE1
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x78]
_0225AC22:
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0x78]
	bl _s32_div_f
	mov r1, #0x32
	bl _s32_div_f
	str r0, [sp, #0x84]
	ldr r0, [sp, #0x48]
	mov r1, #0x10
	tst r0, r1
	beq _0225AC48
	cmp r7, #0x3e
	beq _0225AC48
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
_0225AC48:
	ldr r0, [sp, #0xc]
	mov r2, #1
	tst r0, r2
	beq _0225AC5C
	ldr r0, [sp, #0xb4]
	cmp r0, #1
	bne _0225AC5C
	ldr r0, [sp, #0x14]
	cmp r0, #0xba
	bne _0225AC5E
_0225AC5C:
	b _0225AD86
_0225AC5E:
	ldr r0, [sp, #0x5c]
	mov r1, #2
	tst r0, r1
	beq _0225AC82
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	bl ov16_022554E0
	cmp r0, #2
	bne _0225AC82
	ldr r0, [sp, #0x84]
	mov r1, #3
	lsl r0, r0, #1
	bl _s32_div_f
	str r0, [sp, #0x84]
	b _0225AD86
_0225AC82:
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
	b _0225AD86
_0225AC8E:
	cmp r0, #1
	bne _0225AD86
	ldr r0, [sp, #0xb4]
	cmp r0, #1
	bls _0225ACBA
	ldr r0, [sp, #0x68]
	cmp r0, #6
	ble _0225ACB4
	lsl r1, r0, #1
	ldr r0, _0225AD74 ; =0x0226EBE0
	ldr r2, [sp, #0x74]
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0225AD78 ; =0x0226EBE1
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x84]
	b _0225ACD0
_0225ACB4:
	ldr r0, [sp, #0x74]
	str r0, [sp, #0x84]
	b _0225ACD0
_0225ACBA:
	ldr r0, [sp, #0x68]
	ldr r2, [sp, #0x74]
	lsl r1, r0, #1
	ldr r0, _0225AD74 ; =0x0226EBE0
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0225AD78 ; =0x0226EBE1
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x84]
_0225ACD0:
	ldr r0, [sp, #0x84]
	add r1, r0, #0
	ldr r0, [sp, #0x60]
	mul r1, r4
	str r1, [sp, #0x84]
	lsl r0, r0, #1
	mov r1, #5
	bl _s32_div_f
	add r1, r0, #2
	ldr r0, [sp, #0x84]
	mul r1, r0
	ldr r0, [sp, #0xb4]
	str r1, [sp, #0x84]
	cmp r0, #1
	bls _0225AD0C
	ldr r0, [sp, #0x64]
	cmp r0, #6
	bge _0225AD22
	lsl r1, r0, #1
	ldr r0, _0225AD74 ; =0x0226EBE0
	ldr r2, [sp, #0x10]
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0225AD78 ; =0x0226EBE1
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x10]
	b _0225AD22
_0225AD0C:
	ldr r0, [sp, #0x64]
	ldr r2, [sp, #0x10]
	lsl r1, r0, #1
	ldr r0, _0225AD74 ; =0x0226EBE0
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0225AD78 ; =0x0226EBE1
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x10]
_0225AD22:
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0x10]
	bl _s32_div_f
	mov r1, #0x32
	bl _s32_div_f
	str r0, [sp, #0x84]
	ldr r0, [sp, #0xc]
	mov r1, #2
	tst r0, r1
	beq _0225AD86
	ldr r0, [sp, #0xb4]
	cmp r0, #1
	bne _0225AD86
	ldr r0, [sp, #0x14]
	cmp r0, #0xba
	beq _0225AD86
	ldr r0, [sp, #0x5c]
	tst r0, r1
	beq _0225AD7C
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	mov r2, #1
	bl ov16_022554E0
	cmp r0, #2
	bne _0225AD7C
	ldr r0, [sp, #0x84]
	mov r1, #3
	lsl r0, r0, #1
	bl _s32_div_f
	str r0, [sp, #0x84]
	b _0225AD86
	nop
_0225AD6C: .word 0x0226EC16
_0225AD70: .word 0x000003DE
_0225AD74: .word 0x0226EBE0
_0225AD78: .word 0x0226EBE1
_0225AD7C:
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
_0225AD86:
	ldr r0, [sp, #0x5c]
	mov r1, #2
	add r4, r0, #0
	and r4, r1
	beq _0225ADBC
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _0225AEB0 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #4
	bne _0225ADBC
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	mov r2, #1
	bl ov16_022554E0
	cmp r0, #2
	bne _0225ADBC
	ldr r0, [sp, #0x84]
	lsl r1, r0, #1
	add r1, r0, r1
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	str r0, [sp, #0x84]
_0225ADBC:
	cmp r4, #0
	beq _0225ADEC
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _0225AEB0 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #8
	bne _0225ADEC
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	mov r2, #0
	bl ov16_022554E0
	cmp r0, #2
	blo _0225ADEC
	ldr r0, [sp, #0x84]
	lsl r1, r0, #1
	add r1, r0, r1
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	str r0, [sp, #0x84]
_0225ADEC:
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0225AE84
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0225AE84
	ldr r0, [sp, #0xa0]
	mov r1, #3
	tst r0, r1
	beq _0225AE40
	cmp r6, #0xa
	beq _0225AE26
	cmp r6, #0xb
	beq _0225AE32
	b _0225AE40
_0225AE26:
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
	b _0225AE40
_0225AE32:
	ldr r1, [sp, #0x84]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	str r0, [sp, #0x84]
_0225AE40:
	ldr r1, _0225AEB4 ; =0x000080CF
	ldr r0, [sp, #0xa0]
	tst r0, r1
	beq _0225AE58
	ldr r0, [sp, #8]
	cmp r0, #0x4c
	bne _0225AE58
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
_0225AE58:
	ldr r0, [sp, #0xa0]
	mov r1, #0x30
	tst r0, r1
	beq _0225AE84
	cmp r6, #0xa
	beq _0225AE6A
	cmp r6, #0xb
	beq _0225AE7A
	b _0225AE84
_0225AE6A:
	ldr r1, [sp, #0x84]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	str r0, [sp, #0x84]
	b _0225AE84
_0225AE7A:
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
_0225AE84:
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x49
	mov r3, #0
	bl ov16_02252060
	cmp r0, #0
	beq _0225AEA6
	cmp r6, #0xa
	bne _0225AEA6
	ldr r1, [sp, #0x84]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	str r0, [sp, #0x84]
_0225AEA6:
	ldr r0, [sp, #0x84]
	add r0, r0, #2
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_0225AEB0: .word 0x000003E6
_0225AEB4: .word 0x000080CF
	thumb_func_end ov16_0225A280

	thumb_func_start ov16_0225AEB8
ov16_0225AEB8: ; 0x0225AEB8
	push {r4, lr}
	add r4, r2, #0
	beq _0225AEDE
	bl ov16_0223F4BC
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	mov r1, #0x64
	sub r0, r1, r0
	mul r0, r4
	bl _s32_div_f
	add r4, r0, #0
	bne _0225AEDE
	mov r4, #1
_0225AEDE:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0225AEB8

	thumb_func_start ov16_0225AEE4
ov16_0225AEE4: ; 0x0225AEE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #1
	add r4, r1, #0
	add r7, r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r7, #0
	str r3, [sp, #4]
	bl ov16_02258874
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov16_0225B0FC
	mov r3, #0xb5
	lsl r3, r3, #6
	add r2, r3, #0
	mov r5, #0xc0
	add r1, r7, #0
	mul r1, r5
	add r6, r4, r1
	add r2, #0x70
	ldr r2, [r6, r2]
	ldrh r1, [r6, r3]
	mov ip, r2
	ldr r2, [sp, #4]
	mul r5, r2
	add r2, r3, #0
	add r5, r4, r5
	add r2, #0x80
	ldr r2, [r5, r2]
	add r3, #0x27
	str r2, [sp, #0xc]
	ldrb r2, [r6, r3]
	cmp r2, #0x69
	bne _0225AF36
	mov r2, #1
	b _0225AF38
_0225AF36:
	mov r2, #0
_0225AF38:
	cmp r0, #0x43
	bne _0225AF40
	mov r3, #1
	b _0225AF42
_0225AF40:
	mov r3, #0
_0225AF42:
	mov r6, #1
	lsl r6, r6, #0x14
	mov r5, ip
	tst r5, r6
	beq _0225AF50
	mov r5, #1
	b _0225AF52
_0225AF50:
	mov r5, #0
_0225AF52:
	cmp r0, #0x59
	bne _0225AF5E
	cmp r1, #0x71
	bne _0225AF5E
	mov r6, #1
	b _0225AF60
_0225AF5E:
	mov r6, #0
_0225AF60:
	cmp r0, #0x5c
	bne _0225AF6C
	cmp r1, #0x53
	bne _0225AF6C
	mov r1, #1
	b _0225AF6E
_0225AF6C:
	mov r1, #0
_0225AF6E:
	lsl r5, r5, #1
	ldr r0, [sp, #0x28]
	add r3, r3, r5
	add r0, r0, r3
	add r2, r2, r0
	lsl r0, r6, #1
	add r2, r2, r0
	lsl r0, r1, #1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #4
	bls _0225AF8A
	mov r5, #4
_0225AF8A:
	ldr r0, [sp]
	bl ov16_0223F4BC
	ldr r1, _0225AFF0 ; =0x0226EBA0
	ldrb r1, [r1, r5]
	bl _s32_div_f
	cmp r1, #0
	bne _0225AFD4
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #4
	bl ov16_02255AB4
	cmp r0, #0
	bne _0225AFD4
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0x4b
	bl ov16_02255AB4
	cmp r0, #0
	bne _0225AFD4
	mov r0, #7
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0xc
	tst r0, r1
	bne _0225AFD4
	mov r1, #2
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0xe
	tst r0, r1
	bne _0225AFD4
	mov r0, #2
	str r0, [sp, #8]
_0225AFD4:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0225AFEA
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_02255A4C
	cmp r0, #0x61
	bne _0225AFEA
	mov r0, #3
	str r0, [sp, #8]
_0225AFEA:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225AFF0: .word 0x0226EBA0
	thumb_func_end ov16_0225AEE4

	thumb_func_start ov16_0225AFF4
ov16_0225AFF4: ; 0x0225AFF4
	push {r3, r4}
	ldr r4, _0225B024 ; =0x0226EC5C
	ldr r1, _0225B028 ; =0x0000FFFE
	mov r3, #0
_0225AFFC:
	ldrh r2, [r4]
	cmp r0, r2
	beq _0225B00C
	add r4, r4, #2
	ldrh r2, [r4]
	add r3, r3, #1
	cmp r2, r1
	bne _0225AFFC
_0225B00C:
	ldr r0, _0225B024 ; =0x0226EC5C
	lsl r1, r3, #1
	ldrh r1, [r0, r1]
	ldr r0, _0225B028 ; =0x0000FFFE
	cmp r1, r0
	bne _0225B01E
	mov r0, #1
	pop {r3, r4}
	bx lr
_0225B01E:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0225B024: .word 0x0226EC5C
_0225B028: .word 0x0000FFFE
	thumb_func_end ov16_0225AFF4

	thumb_func_start ov16_0225B02C
ov16_0225B02C: ; 0x0225B02C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, r3, #0
	mov r4, #0
	bl ov16_02256044
	cmp r0, #1
	beq _0225B050
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	bl ov16_02256078
	cmp r0, #1
	bne _0225B054
_0225B050:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225B054:
	ldr r2, _0225B07C ; =0x0226EC5C
	ldr r0, _0225B080 ; =0x0000FFFF
_0225B058:
	ldrh r1, [r2]
	cmp r5, r1
	beq _0225B068
	add r2, r2, #2
	ldrh r1, [r2]
	add r4, r4, #1
	cmp r1, r0
	bne _0225B058
_0225B068:
	ldr r0, _0225B07C ; =0x0226EC5C
	lsl r1, r4, #1
	ldrh r1, [r0, r1]
	ldr r0, _0225B080 ; =0x0000FFFF
	cmp r1, r0
	bne _0225B078
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225B078:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225B07C: .word 0x0226EC5C
_0225B080: .word 0x0000FFFF
	thumb_func_end ov16_0225B02C

	thumb_func_start ov16_0225B084
ov16_0225B084: ; 0x0225B084
	push {r4, r5}
	lsl r1, r1, #4
	add r4, r0, r1
	ldr r1, _0225B0B8 ; =0x000003DE
	ldr r3, _0225B0BC ; =0x0226EBB0
	ldrh r1, [r4, r1]
	ldr r4, _0225B0B8 ; =0x000003DE
	mov r2, #0
_0225B094:
	ldrh r5, [r3]
	lsl r5, r5, #4
	add r5, r0, r5
	ldrh r5, [r5, r4]
	cmp r1, r5
	beq _0225B0A8
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _0225B094
_0225B0A8:
	cmp r2, #6
	bne _0225B0B2
	mov r0, #1
	pop {r4, r5}
	bx lr
_0225B0B2:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0225B0B8: .word 0x000003DE
_0225B0BC: .word 0x0226EBB0
	thumb_func_end ov16_0225B084

	thumb_func_start ov16_0225B0C0
ov16_0225B0C0: ; 0x0225B0C0
	push {r4, r5}
	lsl r1, r1, #4
	add r4, r0, r1
	ldr r1, _0225B0F4 ; =0x000003DE
	ldr r3, _0225B0F8 ; =0x0226EBC8
	ldrh r1, [r4, r1]
	ldr r4, _0225B0F4 ; =0x000003DE
	mov r2, #0
_0225B0D0:
	ldrh r5, [r3]
	lsl r5, r5, #4
	add r5, r0, r5
	ldrh r5, [r5, r4]
	cmp r1, r5
	beq _0225B0E4
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _0225B0D0
_0225B0E4:
	cmp r2, #6
	bne _0225B0EE
	mov r0, #1
	pop {r4, r5}
	bx lr
_0225B0EE:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0225B0F4: .word 0x000003DE
_0225B0F8: .word 0x0226EBC8
	thumb_func_end ov16_0225B0C0

	thumb_func_start ov16_0225B0FC
ov16_0225B0FC: ; 0x0225B0FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0
	add r4, r2, #0
	bl sub_0207CE78
	add r1, r0, #0
	ldr r0, _0225B11C ; =0x00002120
	ldr r0, [r5, r0]
	bl sub_0207D3B0
	add r1, r4, #0
	bl sub_0207D014
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225B11C: .word 0x00002120
	thumb_func_end ov16_0225B0FC

	thumb_func_start ov16_0225B120
ov16_0225B120: ; 0x0225B120
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r2, #0
	bl ov16_0223DF1C
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0225B144
_0225B132:
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0223E208
	cmp r5, r0
	beq _0225B144
	add r4, r4, #1
	cmp r4, r6
	blt _0225B132
_0225B144:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0225B120

	thumb_func_start ov16_0225B148
ov16_0225B148: ; 0x0225B148
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	add r5, r1, #0
	bl ov16_0223DF1C
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _0225B1CE
_0225B164:
	ldr r0, [sp, #0x14]
	add r7, r0, #1
	ldr r0, [sp, #0x10]
	cmp r7, r0
	bge _0225B1C2
	ldr r0, [sp, #0x14]
	add r0, r5, r0
	str r0, [sp, #0xc]
_0225B174:
	ldr r1, [sp, #0xc]
	ldr r0, _0225B1D4 ; =0x000021E8
	ldrb r6, [r1, r0]
	add r1, r5, r7
	ldrb r4, [r1, r0]
	lsl r0, r6, #4
	str r1, [sp, #8]
	add r1, r5, r0
	ldr r0, _0225B1D8 ; =0x000021B4
	ldr r0, [r1, r0]
	lsl r1, r4, #4
	add r2, r5, r1
	ldr r1, _0225B1D8 ; =0x000021B4
	ldr r1, [r2, r1]
	cmp r0, r1
	bne _0225B1BA
	cmp r0, #1
	beq _0225B19C
	mov r0, #1
	b _0225B19E
_0225B19C:
	mov r0, #0
_0225B19E:
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov16_02252EC8
	cmp r0, #0
	beq _0225B1BA
	ldr r1, [sp, #0xc]
	ldr r0, _0225B1D4 ; =0x000021E8
	strb r4, [r1, r0]
	ldr r1, [sp, #8]
	strb r6, [r1, r0]
_0225B1BA:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	cmp r7, r0
	blt _0225B174
_0225B1C2:
	ldr r0, [sp, #0x14]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _0225B164
_0225B1CE:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225B1D4: .word 0x000021E8
_0225B1D8: .word 0x000021B4
	thumb_func_end ov16_0225B148

	thumb_func_start ov16_0225B1DC
ov16_0225B1DC: ; 0x0225B1DC
	push {r4, r5}
	mov r4, #0xc0
	mul r4, r1
	add r5, r0, r4
	ldr r0, _0225B21C ; =0x00002DB0
	mov r1, #1
	ldr r4, [r5, r0]
	lsl r1, r1, #0x18
	mov r3, #0
	tst r1, r4
	bne _0225B1FC
	add r0, #0x10
	ldr r1, [r5, r0]
	ldr r0, _0225B220 ; =0x200400C0
	tst r0, r1
	beq _0225B214
_0225B1FC:
	ldr r4, _0225B224 ; =0x0226EC34
	mov r1, #0
_0225B200:
	ldr r0, [r4, #0]
	cmp r2, r0
	bne _0225B20A
	mov r3, #1
	b _0225B216
_0225B20A:
	add r1, r1, #1
	add r4, r4, #4
	cmp r1, #0xa
	blo _0225B200
	b _0225B216
_0225B214:
	mov r3, #1
_0225B216:
	add r0, r3, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0225B21C: .word 0x00002DB0
_0225B220: .word 0x200400C0
_0225B224: .word 0x0226EC34
	thumb_func_end ov16_0225B1DC

	thumb_func_start ov16_0225B228
ov16_0225B228: ; 0x0225B228
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r1, [r5, #0x64]
	str r0, [sp]
	add r0, r5, #0
	add r4, r2, #0
	mov r6, #0
	bl ov16_02258AB8
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r6, #0
	bl ov16_02258ACC
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl ov16_02258AB8
	add r7, r0, #0
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	add r2, r6, #0
	bl ov16_02258ACC
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [r5, #0x64]
	bl ov16_0223E208
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	cmp r0, #0x58
	bne _0225B2C4
	ldr r0, _0225B3EC ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0225B2C4
	ldr r0, [r5, #0x64]
	mov r1, #0x1c
	mul r1, r0
	add r2, r5, r1
	mov r1, #0xbb
	lsl r1, r1, #2
	ldr r2, [r2, r1]
	cmp r2, #0
	beq _0225B2C4
	ldr r1, [r5, #0x6c]
	cmp r0, r1
	beq _0225B2C4
	mov r1, #0xc0
	mul r1, r0
	ldr r3, _0225B3F0 ; =0x00002D8C
	add r1, r5, r1
	ldr r0, [r1, r3]
	add r3, r3, #4
	ldr r1, [r1, r3]
	cmp r0, r1
	bhs _0225B2C4
	cmp r0, #0
	beq _0225B2C4
	ldr r1, [sp, #0x10]
	neg r0, r2
	bl ov16_022563F8
	ldr r1, _0225B3F4 ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	mov r0, #0x46
	ldr r1, [r5, #0x64]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0xd5
	str r0, [r4, #0]
_0225B2C4:
	ldr r0, [sp, #0xc]
	cmp r0, #0x62
	bne _0225B326
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _0225B326
	ldr r0, _0225B3EC ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0225B326
	ldr r0, _0225B3F8 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #2
	beq _0225B326
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r3, _0225B3F0 ; =0x00002D8C
	add r2, r5, r2
	ldr r1, [r2, r3]
	cmp r1, #0
	beq _0225B326
	add r1, r3, #4
	ldr r1, [r2, r1]
	sub r0, #0xc1
	mul r0, r1
	mov r1, #0xa
	bl ov16_022563F8
	ldr r1, _0225B3F4 ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	mov r0, #0x46
	ldr r1, [r5, #0x64]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0xd6
	str r0, [r4, #0]
_0225B326:
	cmp r7, #0x2e
	bne _0225B37A
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _0225B3F0 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225B37A
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x62
	beq _0225B37A
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225B37A
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _0225B3FC ; =0x00002D90
	add r2, r5, r2
	ldr r2, [r2, r0]
	sub r1, #0xc1
	add r0, r2, #0
	mul r0, r1
	ldr r1, [sp, #8]
	bl ov16_022563F8
	ldr r1, _0225B3F4 ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	lsr r0, r1, #5
	str r0, [r4, #0]
_0225B37A:
	cmp r7, #0x74
	bne _0225B3E6
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	mul r1, r0
	add r3, r5, r1
	ldr r1, _0225B3F0 ; =0x00002D8C
	ldr r2, [r3, r1]
	cmp r2, #0
	beq _0225B3E6
	add r1, #0x2c
	ldrh r1, [r3, r1]
	cmp r1, #0
	bne _0225B3E6
	add r1, r5, r0
	ldr r0, _0225B400 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020787CC
	ldr r1, [sp, #4]
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	bne _0225B3E6
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r2, r5, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0225B3CE
	add r0, #8
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225B3E6
_0225B3CE:
	ldr r0, _0225B3F8 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225B404 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r1, r0
	beq _0225B3E6
	mov r1, #0xd8
	str r1, [r4, #0]
	add r6, r0, #0
_0225B3E6:
	add r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225B3EC: .word 0x0000213C
_0225B3F0: .word 0x00002D8C
_0225B3F4: .word 0x0000215C
_0225B3F8: .word 0x00003044
_0225B3FC: .word 0x00002D90
_0225B400: .word 0x0000219C
_0225B404: .word 0x000003E9
	thumb_func_end ov16_0225B228

	thumb_func_start ov16_0225B408
ov16_0225B408: ; 0x0225B408
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0xff
	beq _0225B438
	add r1, r2, #0
	bl ov16_02255A4C
	cmp r0, #0x2e
	bne _0225B438
	ldr r0, _0225B43C ; =0x00002D6C
	add r1, r5, r0
	mov r0, #0xc0
	mul r0, r4
	add r0, r1, r0
	lsl r1, r4, #1
	add r2, r5, r1
	ldr r1, _0225B440 ; =0x000030BC
	ldrh r2, [r2, r1]
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _0225B438
	sub r1, r1, #1
	strb r1, [r0, r2]
_0225B438:
	pop {r3, r4, r5, pc}
	nop
_0225B43C: .word 0x00002D6C
_0225B440: .word 0x000030BC
	thumb_func_end ov16_0225B408

	thumb_func_start ov16_0225B444
ov16_0225B444: ; 0x0225B444
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0223F710
	cmp r0, #0
	beq _0225B458
	mov r0, #0x2a
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_0225B458:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov16_0225B444

	thumb_func_start ov16_0225B45C
ov16_0225B45C: ; 0x0225B45C
	push {r4, lr}
	add r4, r1, #0
	cmp r2, #0xe
	bhi _0225B51C
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225B470: ; jump table
	.short _0225B48E - _0225B470 - 2 ; case 0
	.short _0225B4A0 - _0225B470 - 2 ; case 1
	.short _0225B4B6 - _0225B470 - 2 ; case 2
	.short _0225B4BE - _0225B470 - 2 ; case 3
	.short _0225B4C6 - _0225B470 - 2 ; case 4
	.short _0225B4CC - _0225B470 - 2 ; case 5
	.short _0225B4D2 - _0225B470 - 2 ; case 6
	.short _0225B4DE - _0225B470 - 2 ; case 7
	.short _0225B4EA - _0225B470 - 2 ; case 8
	.short _0225B4F4 - _0225B470 - 2 ; case 9
	.short _0225B4FC - _0225B470 - 2 ; case 10
	.short _0225B502 - _0225B470 - 2 ; case 11
	.short _0225B50A - _0225B470 - 2 ; case 12
	.short _0225B514 - _0225B470 - 2 ; case 13
	.short _0225B518 - _0225B470 - 2 ; case 14
_0225B48E:
	add r1, r3, #0
	bl ov16_0223E208
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r4, pc}
_0225B4A0:
	add r1, r3, #0
	bl ov16_0223E208
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1d
	pop {r4, pc}
_0225B4B6:
	ldr r0, _0225B524 ; =0x0000219C
	add r1, r4, r3
	ldrb r0, [r1, r0]
	pop {r4, pc}
_0225B4BE:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	pop {r4, pc}
_0225B4C6:
	ldr r0, _0225B528 ; =0x00003109
	ldrb r0, [r4, r0]
	pop {r4, pc}
_0225B4CC:
	ldr r0, _0225B52C ; =0x0000311D
	ldrb r0, [r4, r0]
	pop {r4, pc}
_0225B4D2:
	lsl r0, r3, #2
	add r1, r4, r0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r4, pc}
_0225B4DE:
	lsl r0, r3, #2
	add r1, r4, r0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r4, pc}
_0225B4EA:
	lsl r0, r3, #4
	add r1, r4, r0
	ldr r0, _0225B530 ; =0x000021A8
	ldr r0, [r1, r0]
	pop {r4, pc}
_0225B4F4:
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	pop {r4, pc}
_0225B4FC:
	ldr r0, _0225B534 ; =0x00003108
	ldrb r0, [r4, r0]
	pop {r4, pc}
_0225B502:
	ldr r0, _0225B538 ; =0x000003DA
	add r1, r4, r3
	ldrb r0, [r1, r0]
	pop {r4, pc}
_0225B50A:
	lsl r0, r3, #4
	add r1, r4, r0
	ldr r0, _0225B53C ; =0x000021B0
	ldr r0, [r1, r0]
	pop {r4, pc}
_0225B514:
	ldr r0, [r4, #8]
	pop {r4, pc}
_0225B518:
	ldr r0, [r4, #0xc]
	pop {r4, pc}
_0225B51C:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0225B524: .word 0x0000219C
_0225B528: .word 0x00003109
_0225B52C: .word 0x0000311D
_0225B530: .word 0x000021A8
_0225B534: .word 0x00003108
_0225B538: .word 0x000003DA
_0225B53C: .word 0x000021B0
	thumb_func_end ov16_0225B45C

	thumb_func_start ov16_0225B540
ov16_0225B540: ; 0x0225B540
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [sp, #0x10]
	cmp r2, #0xb
	bhi _0225B5BE
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225B556: ; jump table
	.short _0225B56E - _0225B556 - 2 ; case 0
	.short _0225B580 - _0225B556 - 2 ; case 1
	.short _0225B59E - _0225B556 - 2 ; case 2
	.short _0225B5A6 - _0225B556 - 2 ; case 3
	.short _0225B5BE - _0225B556 - 2 ; case 4
	.short _0225B5BE - _0225B556 - 2 ; case 5
	.short _0225B5BE - _0225B556 - 2 ; case 6
	.short _0225B5BE - _0225B556 - 2 ; case 7
	.short _0225B5BE - _0225B556 - 2 ; case 8
	.short _0225B5AE - _0225B556 - 2 ; case 9
	.short _0225B5BE - _0225B556 - 2 ; case 10
	.short _0225B5B6 - _0225B556 - 2 ; case 11
_0225B56E:
	add r1, r3, #0
	bl ov16_0223E208
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	str r4, [r1, r0]
	pop {r3, r4, r5, pc}
_0225B580:
	add r1, r3, #0
	bl ov16_0223E208
	mov r1, #0x71
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r0, r0, #3
	ldr r3, [r1, r0]
	ldr r2, _0225B5C4 ; =0xFFFF8FFF
	and r3, r2
	lsl r2, r4, #0x1d
	lsr r2, r2, #0x11
	orr r2, r3
	str r2, [r1, r0]
	pop {r3, r4, r5, pc}
_0225B59E:
	ldr r0, _0225B5C8 ; =0x0000219C
	add r1, r5, r3
	strb r4, [r1, r0]
	pop {r3, r4, r5, pc}
_0225B5A6:
	mov r0, #0x15
	lsl r0, r0, #4
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
_0225B5AE:
	mov r0, #0x3d
	lsl r0, r0, #4
	strb r4, [r5, r0]
	pop {r3, r4, r5, pc}
_0225B5B6:
	ldr r0, _0225B5CC ; =0x000003DA
	add r1, r5, r3
	strb r4, [r1, r0]
	pop {r3, r4, r5, pc}
_0225B5BE:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225B5C4: .word 0xFFFF8FFF
_0225B5C8: .word 0x0000219C
_0225B5CC: .word 0x000003DA
	thumb_func_end ov16_0225B540

	thumb_func_start ov16_0225B5D0
ov16_0225B5D0: ; 0x0225B5D0
	push {r4, lr}
	add r3, r0, #0
	add r3, #0x88
	str r1, [r3, #0]
	add r3, r0, #0
	ldr r1, _0225B634 ; =0x007FFFFF
	add r4, r2, #0
	and r4, r1
	add r3, #0x8c
	str r4, [r3, #0]
	lsl r1, r1, #0x17
	add r3, r2, #0
	and r3, r1
	add r1, r0, #0
	add r1, #0x90
	str r3, [r1, #0]
	mov r3, #1
	lsl r3, r3, #0x1e
	add r1, r2, #0
	tst r1, r3
	beq _0225B602
	ldr r1, [r0, #0x64]
	add r0, #0x94
	str r1, [r0, #0]
	b _0225B622
_0225B602:
	lsl r1, r3, #1
	tst r1, r2
	beq _0225B610
	ldr r1, [r0, #0x6c]
	add r0, #0x94
	str r1, [r0, #0]
	b _0225B622
_0225B610:
	lsr r1, r3, #1
	tst r1, r2
	bne _0225B61C
	lsr r1, r3, #2
	tst r1, r2
	beq _0225B622
_0225B61C:
	mov r1, #0
	add r0, #0x94
	str r1, [r0, #0]
_0225B622:
	cmp r4, #0x91
	blo _0225B62A
	bl GF_AssertFail
_0225B62A:
	ldr r0, _0225B638 ; =0x0226EE24
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	nop
_0225B634: .word 0x007FFFFF
_0225B638: .word 0x0226EE24
	thumb_func_end ov16_0225B5D0

	thumb_func_start ov16_0225B63C
ov16_0225B63C: ; 0x0225B63C
	push {r3, r4, r5, lr}
	ldr r1, _0225B6C4 ; =0x0000213C
	add r5, r2, #0
	ldr r2, [r0, r1]
	mov r0, #2
	lsl r0, r0, #0xa
	add r1, r2, #0
	ldr r4, [sp, #0x14]
	tst r1, r0
	bne _0225B666
	lsl r0, r0, #4
	tst r0, r2
	bne _0225B666
	cmp r3, #0
	beq _0225B666
	add r0, r3, #0
	mul r0, r5
	mov r1, #0xa
	bl ov16_022563F8
	add r3, r0, #0
_0225B666:
	cmp r5, #0
	beq _0225B674
	cmp r5, #5
	beq _0225B686
	cmp r5, #0x14
	beq _0225B6A4
	b _0225B6C0
_0225B674:
	ldr r1, [r4, #0]
	mov r0, #8
	orr r1, r0
	mov r0, #4
	bic r1, r0
	mov r0, #2
	bic r1, r0
	str r1, [r4, #0]
	b _0225B6C0
_0225B686:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0225B6C0
	ldr r1, [r4, #0]
	mov r0, #2
	tst r0, r1
	beq _0225B69C
	mov r0, #2
	bic r1, r0
	str r1, [r4, #0]
	b _0225B6C0
_0225B69C:
	mov r0, #4
	orr r0, r1
	str r0, [r4, #0]
	b _0225B6C0
_0225B6A4:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0225B6C0
	ldr r1, [r4, #0]
	mov r0, #4
	tst r0, r1
	beq _0225B6BA
	mov r0, #4
	bic r1, r0
	str r1, [r4, #0]
	b _0225B6C0
_0225B6BA:
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0]
_0225B6C0:
	add r0, r3, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225B6C4: .word 0x0000213C
	thumb_func_end ov16_0225B63C

	thumb_func_start ov16_0225B6C8
ov16_0225B6C8: ; 0x0225B6C8
	lsl r1, r1, #4
	add r2, r0, r1
	ldr r1, _0225B72C ; =0x000003DE
	ldrh r3, [r2, r1]
	cmp r3, #0x9b
	bgt _0225B6FA
	cmp r3, #0x97
	blt _0225B6E0
	beq _0225B71A
	cmp r3, #0x9b
	beq _0225B71A
	b _0225B726
_0225B6E0:
	cmp r3, #0x27
	bgt _0225B6EC
	bge _0225B71A
	cmp r3, #0x1a
	beq _0225B71A
	b _0225B726
_0225B6EC:
	cmp r3, #0x4b
	bgt _0225B6F4
	beq _0225B71A
	b _0225B726
_0225B6F4:
	cmp r3, #0x91
	beq _0225B71A
	b _0225B726
_0225B6FA:
	mov r2, #1
	lsl r2, r2, #8
	cmp r3, r2
	bgt _0225B70A
	bge _0225B71A
	cmp r3, #0xff
	beq _0225B71A
	b _0225B726
_0225B70A:
	add r1, r2, #7
	cmp r3, r1
	bgt _0225B714
	beq _0225B71A
	b _0225B726
_0225B714:
	add r2, #0x11
	cmp r3, r2
	bne _0225B726
_0225B71A:
	ldr r1, _0225B730 ; =0x0000213C
	ldr r1, [r0, r1]
	mov r0, #2
	lsl r0, r0, #8
	and r0, r1
	bx lr
_0225B726:
	mov r0, #1
	bx lr
	nop
_0225B72C: .word 0x000003DE
_0225B730: .word 0x0000213C
	thumb_func_end ov16_0225B6C8

	thumb_func_start ov16_0225B734
ov16_0225B734: ; 0x0225B734
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	cmp r2, #0x1b
	bne _0225B74A
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	ldr r0, _0225B800 ; =0x00002D64
	ldrb r4, [r1, r0]
	b _0225B75E
_0225B74A:
	cmp r2, #0x1c
	bne _0225B75A
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	ldr r0, _0225B804 ; =0x00002D65
	ldrb r4, [r1, r0]
	b _0225B75E
_0225B75A:
	bl GF_AssertFail
_0225B75E:
	mov r0, #0xc0
	mul r0, r6
	mov r2, #0xb5
	add r1, r5, r0
	lsl r2, r2, #6
	ldrh r3, [r1, r2]
	ldr r0, _0225B808 ; =0x000001ED
	cmp r3, r0
	bne _0225B7FA
	add r0, r2, #0
	add r0, #0x27
	ldrb r0, [r1, r0]
	cmp r0, #0x79
	bne _0225B7FA
	add r2, #0x78
	ldrh r1, [r1, r2]
	add r0, r5, #0
	mov r2, #1
	bl ov16_0225B0FC
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _0225B7F8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225B798: ; jump table
	.short _0225B7B8 - _0225B798 - 2 ; case 0
	.short _0225B7BC - _0225B798 - 2 ; case 1
	.short _0225B7C0 - _0225B798 - 2 ; case 2
	.short _0225B7C4 - _0225B798 - 2 ; case 3
	.short _0225B7C8 - _0225B798 - 2 ; case 4
	.short _0225B7CC - _0225B798 - 2 ; case 5
	.short _0225B7D0 - _0225B798 - 2 ; case 6
	.short _0225B7D4 - _0225B798 - 2 ; case 7
	.short _0225B7D8 - _0225B798 - 2 ; case 8
	.short _0225B7DC - _0225B798 - 2 ; case 9
	.short _0225B7E0 - _0225B798 - 2 ; case 10
	.short _0225B7E4 - _0225B798 - 2 ; case 11
	.short _0225B7E8 - _0225B798 - 2 ; case 12
	.short _0225B7EC - _0225B798 - 2 ; case 13
	.short _0225B7F0 - _0225B798 - 2 ; case 14
	.short _0225B7F4 - _0225B798 - 2 ; case 15
_0225B7B8:
	mov r4, #0xa
	b _0225B7FA
_0225B7BC:
	mov r4, #0xb
	b _0225B7FA
_0225B7C0:
	mov r4, #0xd
	b _0225B7FA
_0225B7C4:
	mov r4, #0xc
	b _0225B7FA
_0225B7C8:
	mov r4, #0xf
	b _0225B7FA
_0225B7CC:
	mov r4, #1
	b _0225B7FA
_0225B7D0:
	mov r4, #3
	b _0225B7FA
_0225B7D4:
	mov r4, #4
	b _0225B7FA
_0225B7D8:
	mov r4, #2
	b _0225B7FA
_0225B7DC:
	mov r4, #0xe
	b _0225B7FA
_0225B7E0:
	mov r4, #6
	b _0225B7FA
_0225B7E4:
	mov r4, #5
	b _0225B7FA
_0225B7E8:
	mov r4, #7
	b _0225B7FA
_0225B7EC:
	mov r4, #0x10
	b _0225B7FA
_0225B7F0:
	mov r4, #0x11
	b _0225B7FA
_0225B7F4:
	mov r4, #8
	b _0225B7FA
_0225B7F8:
	mov r4, #0
_0225B7FA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0225B800: .word 0x00002D64
_0225B804: .word 0x00002D65
_0225B808: .word 0x000001ED
	thumb_func_end ov16_0225B734

	thumb_func_start ov16_0225B80C
ov16_0225B80C: ; 0x0225B80C
	lsl r1, r1, #3
	add r3, r0, r1
	mov r2, #0
	mov r0, #0x37
	add r1, r2, #0
	lsl r0, r0, #4
_0225B818:
	add r2, r2, #1
	strh r1, [r3, r0]
	add r3, r3, #2
	cmp r2, #4
	blt _0225B818
	bx lr
	thumb_func_end ov16_0225B80C

	thumb_func_start ov16_0225B824
ov16_0225B824: ; 0x0225B824
	add r1, r0, r1
	mov r0, #0x39
	mov r2, #0
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	thumb_func_end ov16_0225B824

	thumb_func_start ov16_0225B830
ov16_0225B830: ; 0x0225B830
	lsl r1, r1, #1
	add r1, r0, r1
	mov r0, #0xe5
	mov r2, #0
	lsl r0, r0, #2
	strh r2, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0225B830

	thumb_func_start ov16_0225B840
ov16_0225B840: ; 0x0225B840
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	mov r2, #0xff
	mov ip, r2
	mov r2, #0xc0
	add r7, r5, #0
	mul r7, r2
	ldr r2, _0225B8DC ; =0x00002D67
	add r6, r1, r7
	add r4, r3, #0
	ldrb r3, [r6, r2]
	cmp r3, #0x3b
	beq _0225B89C
	cmp r3, #0x24
	beq _0225B89C
	cmp r3, #0x79
	beq _0225B89C
	add r2, #0x25
	ldr r2, [r6, r2]
	cmp r2, #0
	beq _0225B89C
	mov r2, #0xc0
	mul r2, r4
	add r6, r1, r2
	ldr r2, _0225B8DC ; =0x00002D67
	add r2, #0x25
	ldr r2, [r6, r2]
	cmp r2, #0
	beq _0225B89C
	ldr r2, _0225B8DC ; =0x00002D67
	ldrb r2, [r6, r2]
	cmp r2, #0x3b
	beq _0225B89C
	cmp r2, #0x24
	beq _0225B89C
	cmp r2, #0x79
	beq _0225B89C
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _0225B898
	mov ip, r4
	b _0225B8D6
_0225B898:
	mov ip, r5
	b _0225B8D6
_0225B89C:
	cmp r3, #0x3b
	beq _0225B8B6
	cmp r3, #0x24
	beq _0225B8B6
	ldr r0, _0225B8E0 ; =0x00002D8C
	add r2, r1, r7
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225B8B6
	cmp r3, #0x79
	beq _0225B8B6
	mov ip, r5
	b _0225B8D6
_0225B8B6:
	mov r0, #0xc0
	mul r0, r4
	add r2, r1, r0
	ldr r0, _0225B8DC ; =0x00002D67
	ldrb r1, [r2, r0]
	cmp r1, #0x3b
	beq _0225B8D6
	cmp r1, #0x24
	beq _0225B8D6
	add r0, #0x25
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225B8D6
	cmp r1, #0x79
	beq _0225B8D6
	mov ip, r4
_0225B8D6:
	mov r0, ip
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225B8DC: .word 0x00002D67
_0225B8E0: .word 0x00002D8C
	thumb_func_end ov16_0225B840

	thumb_func_start ov16_0225B8E4
ov16_0225B8E4: ; 0x0225B8E4
	lsl r1, r1, #4
	add r1, r0, r1
	ldr r0, _0225B908 ; =0x000003DE
	ldr r3, _0225B90C ; =0x0226EBBC
	ldrh r1, [r1, r0]
	mov r2, #0
_0225B8F0:
	ldrh r0, [r3]
	cmp r0, r1
	bne _0225B8FA
	mov r0, #1
	bx lr
_0225B8FA:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _0225B8F0
	mov r0, #0
	bx lr
	nop
_0225B908: .word 0x000003DE
_0225B90C: .word 0x0226EBBC
	thumb_func_end ov16_0225B8E4

	thumb_func_start ov16_0225B910
ov16_0225B910: ; 0x0225B910
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	ldr r2, _0225BA7C ; =0x00000137
	add r7, r0, #0
	add r4, r1, #0
	cmp r3, r2
	bgt _0225B928
	blt _0225B922
	b _0225BA24
_0225B922:
	cmp r3, #0xed
	beq _0225B9CA
	b _0225BA76
_0225B928:
	add r0, r2, #0
	add r0, #0x34
	cmp r3, r0
	bgt _0225B938
	add r2, #0x34
	cmp r3, r2
	beq _0225B940
	b _0225BA76
_0225B938:
	add r2, #0x8a
	cmp r3, r2
	beq _0225B94C
	b _0225BA76
_0225B940:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02258B2C
	add r5, r0, #0
	b _0225BA78
_0225B94C:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02258AB8
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _0225B9C6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225B966: ; jump table
	.short _0225B9A6 - _0225B966 - 2 ; case 0
	.short _0225B9AA - _0225B966 - 2 ; case 1
	.short _0225B9B2 - _0225B966 - 2 ; case 2
	.short _0225B9AE - _0225B966 - 2 ; case 3
	.short _0225B9BA - _0225B966 - 2 ; case 4
	.short _0225B986 - _0225B966 - 2 ; case 5
	.short _0225B98E - _0225B966 - 2 ; case 6
	.short _0225B992 - _0225B966 - 2 ; case 7
	.short _0225B98A - _0225B966 - 2 ; case 8
	.short _0225B9B6 - _0225B966 - 2 ; case 9
	.short _0225B99A - _0225B966 - 2 ; case 10
	.short _0225B996 - _0225B966 - 2 ; case 11
	.short _0225B99E - _0225B966 - 2 ; case 12
	.short _0225B9BE - _0225B966 - 2 ; case 13
	.short _0225B9C2 - _0225B966 - 2 ; case 14
	.short _0225B9A2 - _0225B966 - 2 ; case 15
_0225B986:
	mov r5, #1
	b _0225BA78
_0225B98A:
	mov r5, #2
	b _0225BA78
_0225B98E:
	mov r5, #3
	b _0225BA78
_0225B992:
	mov r5, #4
	b _0225BA78
_0225B996:
	mov r5, #5
	b _0225BA78
_0225B99A:
	mov r5, #6
	b _0225BA78
_0225B99E:
	mov r5, #7
	b _0225BA78
_0225B9A2:
	mov r5, #8
	b _0225BA78
_0225B9A6:
	mov r5, #0xa
	b _0225BA78
_0225B9AA:
	mov r5, #0xb
	b _0225BA78
_0225B9AE:
	mov r5, #0xc
	b _0225BA78
_0225B9B2:
	mov r5, #0xd
	b _0225BA78
_0225B9B6:
	mov r5, #0xe
	b _0225BA78
_0225B9BA:
	mov r5, #0xf
	b _0225BA78
_0225B9BE:
	mov r5, #0x10
	b _0225BA78
_0225B9C2:
	mov r5, #0x11
	b _0225BA78
_0225B9C6:
	mov r5, #0
	b _0225BA78
_0225B9CA:
	ldr r0, _0225BA80 ; =0x00002D54
	add r1, r4, r0
	mov r0, #0xc0
	mul r0, r6
	ldr r4, [r1, r0]
	lsl r0, r4, #2
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r5, r0, #0x1a
	lsl r0, r4, #7
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r3, r0, #0x1b
	lsl r0, r4, #0xc
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r2, r0, #0x1c
	lsl r0, r4, #0x11
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	lsl r0, r4, #0x1b
	lsl r4, r4, #0x16
	lsr r4, r4, #0x1b
	lsr r6, r0, #0x1b
	mov r0, #1
	lsl r4, r4, #0x1f
	and r0, r6
	lsr r4, r4, #0x1e
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	add r1, r5, #0
	orr r1, r0
	mov r0, #0xf
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r5, r0, #1
	cmp r5, #9
	blt _0225BA78
	add r5, r5, #1
	b _0225BA78
_0225BA24:
	mov r2, #0xd
	str r2, [sp]
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0225BA78
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0225BA78
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, _0225BA84 ; =0x000080FF
	tst r1, r0
	beq _0225BA78
	mov r1, #3
	tst r1, r0
	beq _0225BA5C
	mov r5, #0xb
_0225BA5C:
	mov r1, #0xc
	tst r1, r0
	beq _0225BA64
	mov r5, #5
_0225BA64:
	mov r1, #0x30
	tst r1, r0
	beq _0225BA6C
	mov r5, #0xa
_0225BA6C:
	mov r1, #0xc0
	tst r0, r1
	beq _0225BA78
	mov r5, #0xf
	b _0225BA78
_0225BA76:
	mov r5, #0
_0225BA78:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225BA7C: .word 0x00000137
_0225BA80: .word 0x00002D54
_0225BA84: .word 0x000080FF
	thumb_func_end ov16_0225B910

	thumb_func_start ov16_0225BA88
ov16_0225BA88: ; 0x0225BA88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	str r1, [sp, #0x18]
	add r7, r0, #0
	bl ov16_0223DF10
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r7, #0
	bl ov16_0223DF0C
	mov r1, #0x10
	tst r0, r1
	bne _0225BAB4
	add r0, r7, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	beq _0225BAB8
_0225BAB4:
	str r4, [sp, #0x44]
	b _0225BAC6
_0225BAB8:
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl ov16_0223E258
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x44]
_0225BAC6:
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_02257028
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl ov16_0223DF60
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0x50]
	add r0, r5, r4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	add r0, r5, r0
	str r0, [sp, #0x30]
_0225BAEC:
	mov r0, #0
	str r0, [sp, #0x48]
	mov r0, #6
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x40]
	ldr r4, [sp, #0x48]
	cmp r0, #0
	ble _0225BBF0
_0225BAFC:
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	add r2, r4, #0
	bl ov16_0223DFAC
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #0x68]
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _0225BBD8
	ldr r0, _0225BE14 ; =0x000001EE
	cmp r1, r0
	beq _0225BBD8
	ldr r0, [sp, #0x68]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0225BBD8
	add r0, r4, #0
	bl sub_020787CC
	ldr r1, [sp, #0x50]
	tst r0, r1
	bne _0225BBD8
	ldr r1, [sp, #0x34]
	ldr r0, _0225BE18 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r4, r0
	beq _0225BBD8
	ldr r1, [sp, #0x30]
	ldr r0, _0225BE18 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r4, r0
	beq _0225BBD8
	ldr r1, [sp, #0x34]
	ldr r0, _0225BE1C ; =0x000021A4
	ldrb r0, [r1, r0]
	cmp r4, r0
	beq _0225BBD8
	ldr r1, [sp, #0x30]
	ldr r0, _0225BE1C ; =0x000021A4
	ldrb r0, [r1, r0]
	cmp r4, r0
	beq _0225BBD8
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x60]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x68]
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x68]
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x5c]
	bl ov16_022558CC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x5c]
	bl ov16_022558CC
	ldr r1, [sp, #0x4c]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x48]
	cmp r1, r0
	bhs _0225BBE8
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x48]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x38]
	b _0225BBE8
_0225BBD8:
	add r0, r4, #0
	bl sub_020787CC
	ldr r1, [sp, #0x50]
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
_0225BBE8:
	ldr r0, [sp, #0x40]
	add r4, r4, #1
	cmp r4, r0
	blt _0225BAFC
_0225BBF0:
	ldr r0, [sp, #0x38]
	cmp r0, #6
	beq _0225BCB8
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x38]
	add r0, r7, #0
	bl ov16_0223DFAC
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0x20]
_0225BC06:
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x3c]
	ldr r3, [sp, #0x3c]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_0225BE3C
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0225BC90
	mov r0, #0
	str r0, [sp, #0x90]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x70]
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	str r0, [sp, #0x74]
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02258AB8
	str r0, [sp, #0x78]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	str r0, [sp, #0x7c]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x74]
	ldr r2, [sp, #0x6c]
	str r1, [sp]
	ldr r1, [sp, #0x78]
	ldr r3, [sp, #0x70]
	str r1, [sp, #4]
	ldr r1, [sp, #0x7c]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x90
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x3c]
	add r0, r5, #0
	bl ov16_022552D4
	ldr r1, [sp, #0x90]
	mov r0, #2
	tst r0, r1
	bne _0225BC9A
_0225BC90:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #4
	blt _0225BC06
_0225BC9A:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bne _0225BCB2
	ldr r0, [sp, #0x38]
	bl sub_020787CC
	ldr r1, [sp, #0x50]
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
	b _0225BCBC
_0225BCB2:
	ldr r0, [sp, #0x38]
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
_0225BCB8:
	mov r0, #0x3f
	str r0, [sp, #0x50]
_0225BCBC:
	ldr r0, [sp, #0x50]
	cmp r0, #0x3f
	beq _0225BCC4
	b _0225BAEC
_0225BCC4:
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #6
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bgt _0225BCD8
	b _0225BE0C
_0225BCD8:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	add r0, r7, #0
	bl ov16_0223DFAC
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #0x1c]
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _0225BCF8
	ldr r0, _0225BE14 ; =0x000001EE
	cmp r1, r0
	bne _0225BCFA
_0225BCF8:
	b _0225BDFE
_0225BCFA:
	ldr r0, [sp, #0x1c]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0225BDFE
	ldr r0, _0225BE18 ; =0x0000219C
	ldr r1, [sp, #0x34]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x24]
	cmp r1, r2
	beq _0225BDFE
	ldr r1, [sp, #0x30]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x24]
	cmp r1, r2
	beq _0225BDFE
	add r2, r0, #0
	ldr r1, [sp, #0x34]
	add r2, #8
	ldrb r2, [r1, r2]
	ldr r1, [sp, #0x24]
	cmp r1, r2
	beq _0225BDFE
	ldr r1, [sp, #0x30]
	add r0, #8
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	beq _0225BDFE
	mov r0, #0
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x84]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x88]
_0225BD4C:
	ldr r1, [sp, #0x64]
	ldr r0, [sp, #0x1c]
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x8c]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x8c]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0225BE3C
	str r0, [sp, #0x80]
	ldr r0, [sp, #0x8c]
	cmp r0, #0
	beq _0225BDE6
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225BE20 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #1
	beq _0225BDE6
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0223E208
	add r3, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r3, r3, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x84]
	add r4, r5, r3
	str r0, [sp, #0xc]
	mov r3, #0x6f
	str r6, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	lsl r3, r3, #2
	ldr r2, [sp, #0x8c]
	ldr r3, [r4, r3]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0225A280
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x80]
	str r0, [sp]
	str r6, [sp, #4]
	str r1, [sp, #8]
	add r0, sp, #0x90
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x8c]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_02254FA8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x90]
	ldr r0, _0225BE24 ; =0x00140808
	tst r0, r1
	beq _0225BDE6
	mov r0, #0
	str r0, [sp, #0x4c]
_0225BDE6:
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x4c]
	cmp r1, r0
	bhs _0225BDF4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x88]
	str r0, [sp, #0x2c]
_0225BDF4:
	ldr r0, [sp, #0x64]
	add r0, r0, #1
	str r0, [sp, #0x64]
	cmp r0, #4
	blt _0225BD4C
_0225BDFE:
	ldr r0, [sp, #0x24]
	add r1, r0, #1
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x24]
	cmp r1, r0
	bge _0225BE0C
	b _0225BCD8
_0225BE0C:
	ldr r0, [sp, #0x2c]
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	nop
_0225BE14: .word 0x000001EE
_0225BE18: .word 0x0000219C
_0225BE1C: .word 0x000021A4
_0225BE20: .word 0x000003E1
_0225BE24: .word 0x00140808
	thumb_func_end ov16_0225BA88

	thumb_func_start ov16_0225BE28
ov16_0225BE28: ; 0x0225BE28
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0223DF10
	add r1, r0, r4
	ldr r0, _0225BE38 ; =0x000021A4
	ldrb r0, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
_0225BE38: .word 0x000021A4
	thumb_func_end ov16_0225BE28

	thumb_func_start ov16_0225BE3C
ov16_0225BE3C: ; 0x0225BE3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, _0225BFF4 ; =0x00000137
	add r7, r0, #0
	add r6, r1, #0
	cmp r3, r2
	bgt _0225BE56
	blt _0225BE50
	b _0225BF9A
_0225BE50:
	cmp r3, #0xed
	beq _0225BF18
	b _0225BFEC
_0225BE56:
	add r0, r2, #0
	add r0, #0x34
	cmp r3, r0
	bgt _0225BE66
	add r2, #0x34
	cmp r3, r2
	beq _0225BE6E
	b _0225BFEC
_0225BE66:
	add r2, #0x8a
	cmp r3, r2
	beq _0225BE8A
	b _0225BFEC
_0225BE6E:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #0xc
	bl ov16_0225B0FC
	add r5, r0, #0
	b _0225BFEE
_0225BE8A:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #1
	bl ov16_0225B0FC
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _0225BF14
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225BEB4: ; jump table
	.short _0225BEF4 - _0225BEB4 - 2 ; case 0
	.short _0225BEF8 - _0225BEB4 - 2 ; case 1
	.short _0225BF00 - _0225BEB4 - 2 ; case 2
	.short _0225BEFC - _0225BEB4 - 2 ; case 3
	.short _0225BF08 - _0225BEB4 - 2 ; case 4
	.short _0225BED4 - _0225BEB4 - 2 ; case 5
	.short _0225BEDC - _0225BEB4 - 2 ; case 6
	.short _0225BEE0 - _0225BEB4 - 2 ; case 7
	.short _0225BED8 - _0225BEB4 - 2 ; case 8
	.short _0225BF04 - _0225BEB4 - 2 ; case 9
	.short _0225BEE8 - _0225BEB4 - 2 ; case 10
	.short _0225BEE4 - _0225BEB4 - 2 ; case 11
	.short _0225BEEC - _0225BEB4 - 2 ; case 12
	.short _0225BF0C - _0225BEB4 - 2 ; case 13
	.short _0225BF10 - _0225BEB4 - 2 ; case 14
	.short _0225BEF0 - _0225BEB4 - 2 ; case 15
_0225BED4:
	mov r5, #1
	b _0225BFEE
_0225BED8:
	mov r5, #2
	b _0225BFEE
_0225BEDC:
	mov r5, #3
	b _0225BFEE
_0225BEE0:
	mov r5, #4
	b _0225BFEE
_0225BEE4:
	mov r5, #5
	b _0225BFEE
_0225BEE8:
	mov r5, #6
	b _0225BFEE
_0225BEEC:
	mov r5, #7
	b _0225BFEE
_0225BEF0:
	mov r5, #8
	b _0225BFEE
_0225BEF4:
	mov r5, #0xa
	b _0225BFEE
_0225BEF8:
	mov r5, #0xb
	b _0225BFEE
_0225BEFC:
	mov r5, #0xc
	b _0225BFEE
_0225BF00:
	mov r5, #0xd
	b _0225BFEE
_0225BF04:
	mov r5, #0xe
	b _0225BFEE
_0225BF08:
	mov r5, #0xf
	b _0225BFEE
_0225BF0C:
	mov r5, #0x10
	b _0225BFEE
_0225BF10:
	mov r5, #0x11
	b _0225BFEE
_0225BF14:
	mov r5, #0
	b _0225BFEE
_0225BF18:
	add r0, r4, #0
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x49
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x46
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r2, r6, #0x1f
	lsl r0, r5, #0x1f
	lsr r5, r2, #0x1b
	lsl r2, r7, #0x1f
	lsr r4, r2, #0x1c
	ldr r2, [sp, #4]
	lsl r1, r1, #0x1f
	lsl r2, r2, #0x1f
	lsr r3, r2, #0x1d
	ldr r2, [sp, #8]
	mov r6, #1
	and r2, r6
	lsr r1, r1, #0x1e
	orr r1, r2
	orr r1, r3
	orr r1, r4
	lsr r0, r0, #0x1a
	orr r1, r5
	orr r1, r0
	mov r0, #0xf
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r5, r0, #1
	cmp r5, #9
	blt _0225BFEE
	add r5, r5, #1
	b _0225BFEE
_0225BF9A:
	mov r2, #0xd
	str r2, [sp]
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0225BFEE
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _0225BFEE
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	ldr r1, _0225BFF8 ; =0x000080FF
	tst r1, r0
	beq _0225BFEE
	mov r1, #3
	tst r1, r0
	beq _0225BFD2
	mov r5, #0xb
_0225BFD2:
	mov r1, #0xc
	tst r1, r0
	beq _0225BFDA
	mov r5, #5
_0225BFDA:
	mov r1, #0x30
	tst r1, r0
	beq _0225BFE2
	mov r5, #0xa
_0225BFE2:
	mov r1, #0xc0
	tst r0, r1
	beq _0225BFEE
	mov r5, #0xf
	b _0225BFEE
_0225BFEC:
	mov r5, #0
_0225BFEE:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225BFF4: .word 0x00000137
_0225BFF8: .word 0x000080FF
	thumb_func_end ov16_0225BE3C

	.rodata


	.global Unk_ov16_0226EBA0
Unk_ov16_0226EBA0: ; 0x0226EBA0
	.incbin "incbin/overlay16_rodata.bin", 0x944, 0x94C - 0x944

	.global Unk_ov16_0226EBA8
Unk_ov16_0226EBA8: ; 0x0226EBA8
	.incbin "incbin/overlay16_rodata.bin", 0x94C, 0x954 - 0x94C

	.global Unk_ov16_0226EBB0
Unk_ov16_0226EBB0: ; 0x0226EBB0
	.incbin "incbin/overlay16_rodata.bin", 0x954, 0x960 - 0x954

	.global Unk_ov16_0226EBBC
Unk_ov16_0226EBBC: ; 0x0226EBBC
	.incbin "incbin/overlay16_rodata.bin", 0x960, 0x96C - 0x960

	.global Unk_ov16_0226EBC8
Unk_ov16_0226EBC8: ; 0x0226EBC8
	.incbin "incbin/overlay16_rodata.bin", 0x96C, 0x978 - 0x96C

	.global Unk_ov16_0226EBD4
Unk_ov16_0226EBD4: ; 0x0226EBD4
	.incbin "incbin/overlay16_rodata.bin", 0x978, 0x984 - 0x978

	.global Unk_ov16_0226EBE0
Unk_ov16_0226EBE0: ; 0x0226EBE0
	.incbin "incbin/overlay16_rodata.bin", 0x984, 0x99E - 0x984

	.global Unk_ov16_0226EBFA
Unk_ov16_0226EBFA: ; 0x0226EBFA
	.incbin "incbin/overlay16_rodata.bin", 0x99E, 0x9BA - 0x99E

	.global Unk_ov16_0226EC16
Unk_ov16_0226EC16: ; 0x0226EC16
	.incbin "incbin/overlay16_rodata.bin", 0x9BA, 0x9D8 - 0x9BA

	.global Unk_ov16_0226EC34
Unk_ov16_0226EC34: ; 0x0226EC34
	.incbin "incbin/overlay16_rodata.bin", 0x9D8, 0xA00 - 0x9D8

	.global Unk_ov16_0226EC5C
Unk_ov16_0226EC5C: ; 0x0226EC5C
	.incbin "incbin/overlay16_rodata.bin", 0xA00, 0xA36 - 0xA00

	.global Unk_ov16_0226EC92
Unk_ov16_0226EC92: ; 0x0226EC92
	.incbin "incbin/overlay16_rodata.bin", 0xA36, 0xA78 - 0xA36

	.global Unk_ov16_0226ECD4
Unk_ov16_0226ECD4: ; 0x0226ECD4
	.incbin "incbin/overlay16_rodata.bin", 0xA78, 0xBC8 - 0xA78

	.global Unk_ov16_0226EE24
Unk_ov16_0226EE24: ; 0x0226EE24
	.incbin "incbin/overlay16_rodata.bin", 0xBC8, 0x244


	.data


	.global Unk_ov16_02270B8C
Unk_ov16_02270B8C: ; 0x02270B8C
	.incbin "incbin/overlay16_data.bin", 0x6C, 0x18

