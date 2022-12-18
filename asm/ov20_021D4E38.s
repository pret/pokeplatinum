	.include "macros/function.inc"
	.include "include/ov20_021D4E38.inc"

	

	.text


	thumb_func_start ov20_021D4E38
ov20_021D4E38: ; 0x021D4E38
	push {r4, lr}
	add r4, r0, #0
	str r1, [r4, #0]
	str r2, [r4, #4]
	cmp r3, #0
	bne _021D4E52
	add r0, r1, #0
	add r1, r2, #0
	bl sub_020192EC
	str r0, [r4, #0xc]
	mov r0, #0
	b _021D4E5E
_021D4E52:
	add r0, r1, #0
	add r1, r2, #0
	bl sub_020192F8
	str r0, [r4, #0xc]
	mov r0, #3
_021D4E5E:
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	add r2, r1, r0
	ldr r1, _021D4E88 ; =0x000001FF
	lsl r0, r0, #0xc
	and r1, r2
	str r1, [r4, #0x10]
	ldr r1, [r4, #0xc]
	lsl r1, r1, #0xc
	str r1, [r4, #0xc]
	ldr r1, [sp, #0xc]
	bl sub_020E1F6C
	str r0, [r4, #0x14]
	ldr r0, [sp, #0xc]
	strh r0, [r4, #0x18]
	mov r0, #0
	strh r0, [r4, #0x1a]
	pop {r4, pc}
	nop
_021D4E88: .word 0x000001FF
	thumb_func_end ov20_021D4E38

	thumb_func_start ov20_021D4E8C
ov20_021D4E8C: ; 0x021D4E8C
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x1a]
	cmp r0, #0
	beq _021D4EA0
	cmp r0, #1
	beq _021D4EB4
	cmp r0, #2
	beq _021D4ECA
	b _021D4ECE
_021D4EA0:
	ldr r0, _021D4ED4 ; =ov20_021D4ED8
	add r1, r4, #0
	mov r2, #0
	bl ov20_021D2170
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1a]
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	b _021D4ECE
_021D4EB4:
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	bne _021D4ECE
	ldr r0, [r4, #0x1c]
	bl sub_0200DA58
	ldrh r0, [r4, #0x1a]
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	mov r0, #1
	pop {r4, pc}
_021D4ECA:
	mov r0, #1
	pop {r4, pc}
_021D4ECE:
	mov r0, #0
	pop {r4, pc}
	nop
_021D4ED4: .word ov20_021D4ED8
	thumb_func_end ov20_021D4E8C

	thumb_func_start ov20_021D4ED8
ov20_021D4ED8: ; 0x021D4ED8
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	beq _021D4F06
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r3, r1, r0
	str r3, [r4, #0xc]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	asr r3, r3, #0xc
	bl sub_02019184
	ldrh r0, [r4, #0x18]
	sub r0, r0, #1
	strh r0, [r4, #0x18]
	pop {r4, pc}
_021D4F06:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r4, #0]
	ldr r3, [r4, #0x10]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_02019184
	pop {r4, pc}
	thumb_func_end ov20_021D4ED8

	thumb_func_start ov20_021D4F1C
ov20_021D4F1C: ; 0x021D4F1C
	push {r4, lr}
	add r4, r0, #0
	str r1, [r4, #0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	str r2, [r4, #4]
	str r1, [r4, #0x14]
	str r3, [r4, #8]
	sub r0, r0, r3
	bl sub_020E1F6C
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	mov r2, #0
	str r0, [r4, #0xc]
	ldr r0, _021D4F48 ; =ov20_021D4F74
	add r1, r4, #0
	str r2, [r4, #0x18]
	bl ov20_021D2170
	str r0, [r4, #0x1c]
	pop {r4, pc}
	; .align 2, 0
_021D4F48: .word ov20_021D4F74
	thumb_func_end ov20_021D4F1C

	thumb_func_start ov20_021D4F4C
ov20_021D4F4C: ; 0x021D4F4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021D4F6C
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021D4F70
	ldr r0, [r4, #0x1c]
	bl sub_0200DA58
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	mov r0, #1
	pop {r4, pc}
_021D4F6C:
	mov r0, #1
	pop {r4, pc}
_021D4F70:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov20_021D4F4C

	thumb_func_start ov20_021D4F74
ov20_021D4F74: ; 0x021D4F74
	push {r3, lr}
	add r2, r1, #0
	ldr r0, [r2, #0x14]
	cmp r0, #0
	beq _021D4F90
	ldr r1, [r2, #8]
	ldr r0, [r2, #0x10]
	add r0, r1, r0
	str r0, [r2, #8]
	asr r3, r0, #3
	ldr r0, [r2, #0x14]
	sub r0, r0, #1
	str r0, [r2, #0x14]
	b _021D4F94
_021D4F90:
	ldr r0, [r2, #0xc]
	asr r3, r0, #3
_021D4F94:
	cmp r3, #0x10
	ble _021D4F9A
	mov r3, #0x10
_021D4F9A:
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021D4FAC ; =0x04000050
	ldmia r2!, {r1, r2}
	bl sub_020BF55C
	pop {r3, pc}
	nop
_021D4FAC: .word 0x04000050
	thumb_func_end ov20_021D4F74

	thumb_func_start ov20_021D4FB0
ov20_021D4FB0: ; 0x021D4FB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021D4FE8 ; =0x04000050
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020BF578
	ldr r1, [sp, #0x18]
	str r4, [r5, #0]
	str r1, [r5, #0x14]
	lsl r0, r6, #0xc
	str r0, [r5, #8]
	lsl r2, r7, #0xc
	str r2, [r5, #0xc]
	ldr r0, [r5, #8]
	sub r0, r2, r0
	bl sub_020E1F6C
	str r0, [r5, #0x10]
	mov r2, #0
	ldr r0, _021D4FEC ; =ov20_021D5018
	add r1, r5, #0
	str r2, [r5, #0x18]
	bl ov20_021D2170
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4FE8: .word 0x04000050
_021D4FEC: .word ov20_021D5018
	thumb_func_end ov20_021D4FB0

	thumb_func_start ov20_021D4FF0
ov20_021D4FF0: ; 0x021D4FF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021D5010
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021D5014
	ldr r0, [r4, #0x1c]
	bl sub_0200DA58
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	mov r0, #1
	pop {r4, pc}
_021D5010:
	mov r0, #1
	pop {r4, pc}
_021D5014:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov20_021D4FF0

	thumb_func_start ov20_021D5018
ov20_021D5018: ; 0x021D5018
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _021D5030
	ldr r2, [r1, #8]
	ldr r0, [r1, #0x10]
	add r0, r2, r0
	str r0, [r1, #8]
	asr r2, r0, #0xc
	ldr r0, [r1, #0x14]
	sub r0, r0, #1
	str r0, [r1, #0x14]
	b _021D5034
_021D5030:
	ldr r0, [r1, #0xc]
	asr r2, r0, #0xc
_021D5034:
	ldr r3, _021D503C ; =sub_020BF578
	ldr r0, _021D5040 ; =0x04000050
	ldr r1, [r1, #0]
	bx r3
	; .align 2, 0
_021D503C: .word sub_020BF578
_021D5040: .word 0x04000050
	thumb_func_end ov20_021D5018