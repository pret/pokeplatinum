	.include "macros/function.inc"
	.include "overlay017/ov17_02252AB0.inc"

	

	.text


	thumb_func_start ov17_02252AB0
ov17_02252AB0: ; 0x02252AB0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	add r6, r3, #0
	str r0, [sp, #0x14]
	add r0, r2, #0
	mov r1, #3
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0200CD7C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0xfa
	str r6, [sp, #8]
	bl sub_0200CBDC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0xfb
	bl sub_0200CE0C
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0xfc
	bl sub_0200CE3C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02252AB0

	thumb_func_start ov17_02252B20
ov17_02252B20: ; 0x02252B20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0200D070
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D080
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200D090
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl sub_0200D0A0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02252B20

	thumb_func_start ov17_02252B48
ov17_02252B48: ; 0x02252B48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r3, #0
	mov ip, r2
	ldr r3, _02252BC0 ; =0x02254D9C
	add r6, r0, #0
	add r7, r1, #0
	add r2, sp, #4
	mov r4, #6
_02252B5A:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _02252B5A
	ldr r0, [r3, #0]
	mov r1, #0x18
	str r0, [r2, #0]
	ldr r0, [sp, #0x50]
	str r5, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x30]
	mov r0, ip
	bl sub_02018144
	mov r1, #0
	mov r2, #0x18
	str r0, [sp]
	bl MI_CpuFill8
	ldr r5, [sp]
	mov r4, #0
_02252B92:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #4
	bl sub_0200CE6C
	mov r1, #0
	stmia r5!, {r0}
	bl sub_0200D3F4
	add r4, r4, #1
	cmp r4, #5
	blt _02252B92
	ldr r0, _02252BC4 ; =ov17_02252CB8
	ldr r1, [sp]
	ldr r2, _02252BC8 ; =0x00009C40
	bl sub_0200D9E8
	ldr r1, [sp]
	str r0, [r1, #0x14]
	add r0, r1, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252BC0: .word 0x02254D9C
_02252BC4: .word ov17_02252CB8
_02252BC8: .word 0x00009C40
	thumb_func_end ov17_02252B48

	thumb_func_start ov17_02252BCC
ov17_02252BCC: ; 0x02252BCC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02252BD4:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _02252BD4
	ldr r0, [r6, #0x14]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02252BCC

	thumb_func_start ov17_02252BF0
ov17_02252BF0: ; 0x02252BF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r4, [sp, #0x24]
	add r6, r3, #0
	ldr r0, [r5, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r2, [sp, #0x10]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0xc]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_0200D364
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl sub_0200D364
	mov r4, #0
	mov r6, #1
_02252C66:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02252C66
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02252BF0

	thumb_func_start ov17_02252C78
ov17_02252C78: ; 0x02252C78
	push {r4, lr}
	sub sp, #0x18
	add r4, r2, #0
	str r3, [sp]
	ldr r2, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x24]
	str r2, [sp, #0x14]
	add r2, r3, #0
	add r3, r4, #0
	bl ov17_02252BF0
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02252C78

	thumb_func_start ov17_02252C9C
ov17_02252C9C: ; 0x02252C9C
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_02252CA4:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _02252CA4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02252C9C

	thumb_func_start ov17_02252CB8
ov17_02252CB8: ; 0x02252CB8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6, #0]
	bl sub_0200D408
	cmp r0, #0
	beq _02252CE8
	mov r4, #0
	add r5, r6, #0
_02252CCA:
	ldr r0, [r5, #0]
	bl sub_0200D330
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02252CCA
	ldr r0, [r6, #0x10]
	bl sub_0200D408
	cmp r0, #1
	bne _02252CE8
	ldr r0, [r6, #0x10]
	bl sub_0200D330
_02252CE8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02252CB8

	.rodata


	.global Unk_ov17_02254D9C
Unk_ov17_02254D9C: ; 0x02254D9C
	.incbin "incbin/overlay17_rodata.bin", 0x2010, 0x34

