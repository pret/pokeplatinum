	.include "macros/function.inc"
	.include "include/ov17_02247A48.inc"

	

	.text


	thumb_func_start ov17_02247A48
ov17_02247A48: ; 0x02247A48
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02247A7C ; =0x02254488
	add r3, sp, #0
	str r1, [sp]
	mov r1, #0x11
	strh r1, [r3, #4]
	ldr r1, [r0, #0]
	ldr r2, _02247A80 ; =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	sub r1, r2, #7
	ldr r4, [r0, #0]
	add r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0, #0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	ldr r1, _02247A84 ; =0x000004FC
	add r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02247A7C: .word 0x02254488
_02247A80: .word 0x00000123
_02247A84: .word 0x000004FC
	thumb_func_end ov17_02247A48

	thumb_func_start ov17_02247A88
ov17_02247A88: ; 0x02247A88
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247A88

	thumb_func_start ov17_02247A9C
ov17_02247A9C: ; 0x02247A9C
	push {r3, lr}
	add r1, r2, #0
	mov r2, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247A9C

	thumb_func_start ov17_02247AAC
ov17_02247AAC: ; 0x02247AAC
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02247AAC

	thumb_func_start ov17_02247AB0
ov17_02247AB0: ; 0x02247AB0
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247AB0

	thumb_func_start ov17_02247AC4
ov17_02247AC4: ; 0x02247AC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldr r0, _02247AE8 ; =0x00000F1C
	mov r2, #1
	strb r2, [r1, r0]
	ldr r0, [r1, #0]
	bl sub_02094EDC
	cmp r0, #0
	bne _02247AE6
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov17_0224F26C
_02247AE6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02247AE8: .word 0x00000F1C
	thumb_func_end ov17_02247AC4

	thumb_func_start ov17_02247AEC
ov17_02247AEC: ; 0x02247AEC
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247AEC

	thumb_func_start ov17_02247B00
ov17_02247B00: ; 0x02247B00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	add r6, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	str r6, [r4, #0]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	mov r5, #0
	strh r0, [r4, #0xa]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0xc]
	ldrb r0, [r7]
	strb r0, [r4, #0x11]
	b _02247B60
_02247B3C:
	ldr r1, [r4, #0]
	lsl r0, r5, #4
	add r1, r1, r0
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02247B5E
	bl ov22_0225B020
	ldr r1, [r4, #0]
	lsl r0, r5, #4
	add r2, r1, r0
	mov r0, #0xf2
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r2, r0]
_02247B5E:
	add r5, r5, #1
_02247B60:
	cmp r5, #4
	blt _02247B3C
	ldrb r0, [r7]
	ldr r1, [r6, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, #0x16
	str r0, [sp, #0x20]
	mov r1, #0x80
	mov r0, #0x68
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldrb r2, [r7]
	lsl r2, r2, #4
	add r3, r6, r2
	ldr r2, _02247C44 ; =0x00000F24
	str r1, [r3, r2]
	ldrb r1, [r7]
	lsl r1, r1, #4
	add r3, r6, r1
	add r1, r2, #4
	str r0, [r3, r1]
	ldrb r1, [r7]
	ldr r2, [r6, #0]
	add r0, sp, #0x14
	lsl r1, r1, #2
	add r1, r2, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	bl ov22_0225AFD4
	ldrb r1, [r7]
	lsl r1, r1, #4
	add r2, r6, r1
	mov r1, #0xf2
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldrb r0, [r7]
	lsl r0, r0, #4
	add r0, r6, r0
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov22_0225B074
	ldr r0, _02247C48 ; =0x04000048
	mov r2, #0x3f
	ldrh r1, [r0]
	mov r3, #0x1f
	bic r1, r2
	add r5, r1, #0
	orr r5, r3
	mov r1, #0x20
	orr r1, r5
	strh r1, [r0]
	ldrh r1, [r0, #2]
	bic r1, r2
	orr r1, r3
	strh r1, [r0, #2]
	mov r1, #1
	add r2, r1, #0
	add r0, #8
	sub r2, #0x11
	bl G2x_SetBlendBrightness_
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02247C4C ; =0xFFFF1FFF
	mov r3, #0xff
	and r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	mov r1, #0xf6
	str r0, [r2, #0]
	lsl r1, r1, #4
	mov r0, #0
	strb r0, [r6, r1]
	add r2, r1, #1
	strb r0, [r6, r2]
	add r2, r1, #2
	strb r3, [r6, r2]
	ldr r2, _02247C50 ; =0x02254468
	add r1, r1, #3
	ldrsb r2, [r2, r0]
	mov r3, #2
	add r2, r2, #4
	lsl r2, r2, #3
	strb r2, [r6, r1]
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x16
	str r0, [sp, #0xc]
	ldr r2, [r6, #0x30]
	mov r0, #0x2d
	mov r1, #0x15
	bl sub_02006E60
	ldr r0, _02247C54 ; =ov17_02247C5C
	ldr r2, _02247C58 ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02247C44: .word 0x00000F24
_02247C48: .word 0x04000048
_02247C4C: .word 0xFFFF1FFF
_02247C50: .word 0x02254468
_02247C54: .word ov17_02247C5C
_02247C58: .word 0x00007530
	thumb_func_end ov17_02247B00

	thumb_func_start ov17_02247C5C
ov17_02247C5C: ; 0x02247C5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #4
	bhi _02247D3E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247C74: ; jump table
	.short _02247C7E - _02247C74 - 2 ; case 0
	.short _02247C84 - _02247C74 - 2 ; case 1
	.short _02247CDE - _02247C74 - 2 ; case 2
	.short _02247CE4 - _02247C74 - 2 ; case 3
	.short _02247D24 - _02247C74 - 2 ; case 4
_02247C7E:
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247C84:
	ldr r1, _02247D58 ; =0x04000048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x1e
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r3, r0, #0
	ldrb r0, [r4, #0x11]
	mov r2, #0xf2
	lsl r2, r2, #4
	lsl r1, r0, #4
	ldr r0, [r4, #0]
	add r5, r0, r1
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl ov22_0225B158
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r1, r1, r0
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov22_0225B074
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247CDE:
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247CE4:
	ldr r1, _02247D58 ; =0x04000048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x1f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _02247D5C ; =0x00001FFF
	ldr r0, [r0, #0x50]
	add r3, r1, #0
	bl sub_02003A2C
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0]
	ldr r2, _02247D60 ; =0x00003FFF
	ldr r0, [r0, #0x50]
	mov r1, #2
	bl sub_02003A2C
	ldr r0, _02247D64 ; =0x000006EC
	bl sub_02005748
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247D24:
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0xa
	ble _02247D56
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247D3E:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02247D56:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02247D58: .word 0x04000048
_02247D5C: .word 0x00001FFF
_02247D60: .word 0x00003FFF
_02247D64: .word 0x000006EC
	thumb_func_end ov17_02247C5C

	thumb_func_start ov17_02247D68
ov17_02247D68: ; 0x02247D68
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247D68

	thumb_func_start ov17_02247D7C
ov17_02247D7C: ; 0x02247D7C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02247DC0 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02247DC4 ; =ov17_02247DC8
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247DC0: .word 0x00007530
_02247DC4: .word ov17_02247DC8
	thumb_func_end ov17_02247D7C

	thumb_func_start ov17_02247DC8
ov17_02247DC8: ; 0x02247DC8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02247DDA
	cmp r0, #1
	beq _02247E0A
	b _02247E5E
_02247DDA:
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247E0A:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	mov r0, #1
	ldr r1, [r4, #0x18]
	lsl r0, r0, #8
	add r2, r1, r0
	lsl r1, r0, #6
	str r2, [r4, #0x18]
	cmp r2, r1
	blt _02247E34
	lsl r0, r0, #6
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_02247E34:
	ldrb r0, [r4, #0x11]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldrb r0, [r4, #0x11]
	ldr r2, [r4, #0x18]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_02247E5E:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02247DC8

	thumb_func_start ov17_02247E78
ov17_02247E78: ; 0x02247E78
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247E78

	thumb_func_start ov17_02247E8C
ov17_02247E8C: ; 0x02247E8C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02247ED4 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0x12]
	mov r0, #0
	strb r0, [r4, #0x1a]
	ldr r0, _02247ED8 ; =ov17_02247F8C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247ED4: .word 0x00007530
_02247ED8: .word ov17_02247F8C
	thumb_func_end ov17_02247E8C

	thumb_func_start ov17_02247EDC
ov17_02247EDC: ; 0x02247EDC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02247F24 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x12]
	mov r0, #1
	strb r0, [r4, #0x1a]
	ldr r0, _02247F28 ; =ov17_02247F8C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247F24: .word 0x00007530
_02247F28: .word ov17_02247F8C
	thumb_func_end ov17_02247EDC

	thumb_func_start ov17_02247F2C
ov17_02247F2C: ; 0x02247F2C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	ldr r2, _02247F84 ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r1, [r6, #1]
	ldrb r0, [r6, #2]
	add r0, r1, r0
	strb r0, [r4, #0x12]
	ldrb r0, [r6, #1]
	add r1, r4, #0
	strb r0, [r4, #0x14]
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x15]
	mov r0, #0
	strb r0, [r4, #0x1a]
	mov r0, #1
	strb r0, [r4, #0x1b]
	ldr r0, _02247F88 ; =ov17_02247F8C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247F84: .word 0x00007530
_02247F88: .word ov17_02247F8C
	thumb_func_end ov17_02247F2C

	thumb_func_start ov17_02247F8C
ov17_02247F8C: ; 0x02247F8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _02247FA6
	cmp r0, #1
	beq _02247FB6
	cmp r0, #2
	bne _02247FA4
	b _022480FE
_02247FA4:
	b _02248118
_02247FA6:
	ldr r0, _02248134 ; =0x000006E5
	bl sub_02005748
	mov r0, #0xf
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
_02247FB6:
	ldrb r1, [r5, #0x13]
	ldrb r0, [r5, #0x12]
	cmp r1, r0
	blo _02247FD2
	mov r0, #0
	strb r0, [r5, #0x11]
	ldr r0, _02248134 ; =0x000006E5
	bl sub_02005748
	ldrb r0, [r5, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02247FD2:
	ldrb r0, [r5, #0x1b]
	cmp r0, #1
	bne _02247FE2
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	blo _02247FE2
	mov r0, #1
	strb r0, [r5, #0x1a]
_02247FE2:
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _02247FF0
	sub r0, r0, #1
	add sp, #8
	strb r0, [r5, #0x11]
	pop {r3, r4, r5, r6, r7, pc}
_02247FF0:
	mov r0, #3
	strb r0, [r5, #0x11]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_02094E98
	mov r1, #0x60
	bl _s32_div_f
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_02094E98
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1a
	sub r1, r1, r2
	mov r0, #0x1a
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_02094E98
	mov r1, #1
	tst r0, r1
	beq _02248034
	ldr r0, [sp, #4]
	add r0, #0x80
	b _0224803A
_02248034:
	ldr r0, [sp, #4]
	mov r1, #0x80
	sub r0, r1, r0
_0224803A:
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_02094E98
	mov r1, #1
	tst r0, r1
	beq _02248052
	add r0, r7, #0
	add r0, #0x60
	b _02248056
_02248052:
	mov r0, #0x60
	sub r0, r0, r7
_02248056:
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _022480C6
	mov r0, #0x16
	ldrsh r0, [r5, r0]
	cmp r0, #0x80
	bge _0224806C
	cmp r6, #0x80
	blt _02248074
_0224806C:
	cmp r0, #0x80
	ble _022480C6
	cmp r6, #0x80
	ble _022480C6
_02248074:
	mov r0, #0x18
	ldrsh r0, [r5, r0]
	cmp r0, #0x60
	bge _02248080
	cmp r4, #0x60
	blt _02248088
_02248080:
	cmp r0, #0x60
	ble _022480C6
	cmp r4, #0x60
	ble _022480C6
_02248088:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_02094E98
	mov r1, #1
	tst r0, r1
	beq _022480B2
	cmp r6, #0x80
	bge _022480A6
	ldr r0, [sp, #4]
	add r0, #0x80
	str r0, [sp, #4]
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	b _022480C6
_022480A6:
	ldr r0, [sp, #4]
	mov r1, #0x80
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	b _022480C6
_022480B2:
	cmp r4, #0x60
	bge _022480BE
	add r7, #0x60
	lsl r0, r7, #0x10
	asr r4, r0, #0x10
	b _022480C6
_022480BE:
	mov r0, #0x60
	sub r0, r0, r7
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_022480C6:
	ldrb r1, [r5, #0x13]
	mov r0, #1
	tst r0, r1
	ldrb r0, [r5, #0x1a]
	beq _022480E2
	str r0, [sp]
	mov r3, #0x2d
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r4, #0
	lsl r3, r3, #0xe
	bl ov17_022477B8
	b _022480F0
_022480E2:
	str r0, [sp]
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0
	bl ov17_022477B8
_022480F0:
	strh r6, [r5, #0x16]
	strh r4, [r5, #0x18]
	ldrb r0, [r5, #0x13]
	add sp, #8
	add r0, r0, #1
	strb r0, [r5, #0x13]
	pop {r3, r4, r5, r6, r7, pc}
_022480FE:
	ldrb r0, [r5, #0x11]
	add r0, r0, #1
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1e
	bls _02248130
	mov r0, #0
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02248118:
	mov r2, #0
	ldr r0, [r5, #0xc]
	add r1, r5, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02248130:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248134: .word 0x000006E5
	thumb_func_end ov17_02247F8C

	thumb_func_start ov17_02248138
ov17_02248138: ; 0x02248138
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02248138

	thumb_func_start ov17_0224814C
ov17_0224814C: ; 0x0224814C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02248190 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02248194 ; =ov17_02248198
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248190: .word 0x00007530
_02248194: .word ov17_02248198
	thumb_func_end ov17_0224814C

	thumb_func_start ov17_02248198
ov17_02248198: ; 0x02248198
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r3, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _022481BC
	cmp r0, #1
	beq _022481E4
	b _02248218
_022481BC:
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r1, r1, r0
	ldr r0, _02248254 ; =0x00000F24
	ldr r1, [r1, r0]
	add r0, r0, #4
	lsl r1, r1, #8
	str r1, [r4, #0x14]
	ldrb r1, [r4, #0x11]
	ldr r2, [r4, #0]
	lsl r1, r1, #4
	add r1, r2, r1
	ldr r0, [r1, r0]
	lsl r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022481E4:
	mov r0, #3
	ldr r1, [r4, #0x14]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #0x4b
	lsl r0, r0, #0xa
	str r1, [r4, #0x14]
	cmp r1, r0
	blt _022481FC
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_022481FC:
	ldrb r0, [r4, #0x11]
	ldr r2, [r4, #0x18]
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r1, r1, r0
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [r4, #0x14]
	asr r2, r2, #8
	asr r1, r1, #8
	bl ov22_0225B158
	pop {r3, r4, r5, pc}
_02248218:
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r1, r1, r0
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov22_0225B020
	ldrb r0, [r4, #0x11]
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r1, r1, r0
	mov r0, #0xf2
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_02248254: .word 0x00000F24
	thumb_func_end ov17_02248198

	thumb_func_start ov17_02248258
ov17_02248258: ; 0x02248258
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02248258

	thumb_func_start ov17_0224826C
ov17_0224826C: ; 0x0224826C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x18
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _022482A8 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _022482AC ; =ov17_022482B0
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022482A8: .word 0x00007530
_022482AC: .word ov17_022482B0
	thumb_func_end ov17_0224826C

	thumb_func_start ov17_022482B0
ov17_022482B0: ; 0x022482B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _022482C0
	b _022483E6
_022482C0:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _022482D4
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_022482D4:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _022482E8
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_022482E8:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x30]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _02248360
_02248300:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _02248404 ; =0x02254468
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _0224835A
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r0, [r0, #0x12]
	mov r7, #0x3f
	str r5, [sp, #4]
	lsl r1, r0, #1
	ldr r0, _02248408 ; =0x02254470
	lsl r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r0, r0, #5
	add r6, r1, r0
	b _02248354
_02248330:
	mov r4, #0
	b _02248348
_02248334:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_02248348:
	cmp r4, #8
	blt _02248334
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_02248354:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _02248330
_0224835A:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_02248360:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _02248300
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _022483A2
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _022483A2
	ldr r0, _02248404 ; =0x02254468
	sub r1, r1, #1
	ldrsb r0, [r0, r1]
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #0x3f
	str r0, [sp, #4]
	lsl r1, r1, #0xa
	b _0224839C
_0224838C:
	ldr r0, [sp, #4]
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_0224839C:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0224838C
_022483A2:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _02248400
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _02248400
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022483E6:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02248400:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02248404: .word 0x02254468
_02248408: .word 0x02254470
	thumb_func_end ov17_022482B0

	thumb_func_start ov17_0224840C
ov17_0224840C: ; 0x0224840C
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224840C

	thumb_func_start ov17_02248420
ov17_02248420: ; 0x02248420
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x18
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224845C ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02248460 ; =ov17_02248464
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224845C: .word 0x00007530
_02248460: .word ov17_02248464
	thumb_func_end ov17_02248420

	thumb_func_start ov17_02248464
ov17_02248464: ; 0x02248464
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _02248474
	b _022485C2
_02248474:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02248488
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_02248488:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224849C
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_0224849C:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x30]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _0224851C
_022484B4:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	mov r0, #4
	sub r1, r0, r1
	ldr r0, _022485E0 ; =0x02254468
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _02248516
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r1, [r0, #0x12]
	mov r0, #0xb
	mov r7, #0x3f
	sub r0, r0, r1
	lsl r1, r0, #1
	ldr r0, _022485E4 ; =0x02254470
	str r5, [sp, #4]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r7, r7, #0xa
	lsl r0, r0, #5
	add r6, r1, r0
	b _02248510
_022484EC:
	mov r4, #0
	b _02248504
_022484F0:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_02248504:
	cmp r4, #8
	blt _022484F0
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_02248510:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _022484EC
_02248516:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0224851C:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _022484B4
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0224857E
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0224857E
	mov r0, #5
	sub r1, r0, r1
	ldr r0, _022485E0 ; =0x02254468
	mov r7, #0x3f
	ldrsb r0, [r0, r1]
	lsl r7, r7, #0xa
	mov r6, #0x1d
	add r0, r0, #3
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #2
	str r0, [sp, #4]
	lsl r1, r1, #8
	b _02248578
_02248552:
	ldr r0, [sp, #4]
	ldr r5, [sp, #4]
	lsl r4, r0, #1
	ldrh r0, [r3, r4]
	lsl r5, r5, #0x1d
	and r0, r7
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	ldrh r2, [r3, r4]
	lsr r0, r0, #0x1f
	sub r5, r5, r0
	ror r5, r6
	add r0, r0, r5
	add r0, r0, r1
	orr r0, r2
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_02248578:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _02248552
_0224857E:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _022485DC
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _022485DC
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022485C2:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_022485DC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022485E0: .word 0x02254468
_022485E4: .word 0x02254470
	thumb_func_end ov17_02248464

	thumb_func_start ov17_022485E8
ov17_022485E8: ; 0x022485E8
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_022485E8

	thumb_func_start ov17_022485FC
ov17_022485FC: ; 0x022485FC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02248640 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02248644 ; =ov17_02248648
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248640: .word 0x00007530
_02248644: .word ov17_02248648
	thumb_func_end ov17_022485FC

	thumb_func_start ov17_02248648
ov17_02248648: ; 0x02248648
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224865A
	cmp r0, #1
	beq _02248684
	b _022486C8
_0224865A:
	ldrb r1, [r4, #0x11]
	ldr r0, [r4, #0]
	bl ov17_022478D0
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_02248684:
	mov r0, #1
	ldr r1, [r4, #0x14]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	mov r0, #0xe6
	lsl r0, r0, #8
	str r1, [r4, #0x14]
	cmp r1, r0
	bgt _0224869E
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0224869E:
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r3, [r4, #0x18]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_022486C8:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02248648

	thumb_func_start ov17_022486E4
ov17_022486E4: ; 0x022486E4
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_022486E4

	thumb_func_start ov17_022486F8
ov17_022486F8: ; 0x022486F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224873C ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02248740 ; =ov17_02248744
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224873C: .word 0x00007530
_02248740: .word ov17_02248744
	thumb_func_end ov17_022486F8

	thumb_func_start ov17_02248744
ov17_02248744: ; 0x02248744
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02248756
	cmp r0, #1
	beq _02248784
	b _022487C8
_02248756:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _02248762
	bl GF_AssertFail
_02248762:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_02248784:
	mov r0, #1
	ldr r1, [r4, #0x14]
	lsl r0, r0, #0xa
	add r1, r1, r0
	mov r0, #5
	lsl r0, r0, #0xe
	str r1, [r4, #0x14]
	cmp r1, r0
	blt _0224879E
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0224879E:
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r3, [r4, #0x18]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_022487C8:
	ldr r0, [r4, #0]
	bl ov17_02247918
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02248744

	thumb_func_start ov17_022487E8
ov17_022487E8: ; 0x022487E8
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_022487E8

	thumb_func_start ov17_022487FC
ov17_022487FC: ; 0x022487FC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	mov r0, #0x16
	mov r1, #0x58
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x58
	bl MI_CpuFill8
	str r6, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02248858 ; =0x00007530
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r0, [r4, #0xc]
	ldrb r0, [r7]
	strb r0, [r4, #0x11]
	str r6, [r4, #0x2c]
	str r6, [r4, #0x38]
	add r0, r4, #0
	ldrb r1, [r7]
	add r0, #0x46
	strb r1, [r0]
	str r6, [r4, #0x48]
	ldrb r0, [r7]
	ldr r1, [r6, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	str r0, [r4, #0x24]
	ldr r0, _0224885C ; =ov17_02248860
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248858: .word 0x00007530
_0224885C: .word ov17_02248860
	thumb_func_end ov17_022487FC

	thumb_func_start ov17_02248860
ov17_02248860: ; 0x02248860
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _02248878
	cmp r0, #1
	beq _02248902
	cmp r0, #2
	beq _0224892C
	b _0224895A
_02248878:
	ldr r0, _02248978 ; =ov17_02248A24
	ldr r2, _0224897C ; =0x0000753A
	add r1, #0x2c
	bl sub_0200D9E8
	add r1, r5, #0
	ldr r0, _02248980 ; =ov17_02248BE0
	ldr r2, _0224897C ; =0x0000753A
	add r1, #0x48
	bl sub_0200D9E8
	ldr r0, [r5, #0x38]
	ldr r1, [r0, #0xc]
	add r0, r5, #0
	add r0, #0x46
	ldrb r0, [r0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, #0x16
	str r0, [sp, #0xc]
	mov r0, #0x80
	add r4, #0x40
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [r5, #0x38]
	add r0, sp, #0
	ldr r2, [r1, #0]
	add r1, r5, #0
	add r1, #0x46
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r2, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	bl ov22_0225AFD4
	add r1, r5, #0
	add r1, #0x46
	ldrb r1, [r1]
	ldr r2, [r5, #0x38]
	lsl r1, r1, #4
	add r2, r2, r1
	mov r1, #0xf2
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r5, #0
	add r0, #0x46
	ldrb r0, [r0]
	ldr r2, [r5, #0x38]
	lsl r0, r0, #4
	add r0, r2, r0
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov22_0225B074
	ldrb r0, [r5, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_02248902:
	add r0, r5, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	ldr r0, _02248984 ; =ov17_022489C8
	ldr r2, _0224897C ; =0x0000753A
	add r1, #0x14
	bl sub_0200D9E8
	add r1, r5, #0
	ldr r0, _02248988 ; =ov17_02248AA4
	ldr r2, _0224897C ; =0x0000753A
	add r1, #0x38
	bl sub_0200D9E8
	ldrb r0, [r5, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_0224892C:
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	add r0, r5, #0
	add r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	add r0, r5, #0
	add r0, #0x55
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	ldr r0, _0224898C ; =0x000006E5
	bl sub_02005748
	ldrb r0, [r5, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_0224895A:
	mov r2, #0
	ldr r0, [r5, #0xc]
	add r1, r5, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02248972:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02248978: .word ov17_02248A24
_0224897C: .word 0x0000753A
_02248980: .word ov17_02248BE0
_02248984: .word ov17_022489C8
_02248988: .word ov17_02248AA4
_0224898C: .word 0x000006E5
	thumb_func_end ov17_02248860

	thumb_func_start ov17_02248990
ov17_02248990: ; 0x02248990
	push {r3}
	sub sp, #0xc
	add r2, sp, #0
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	str r1, [r2, #8]
	ldr r1, [r0, #0x20]
	ldr r2, [sp]
	ldr r1, [r1, #0]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #4]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #8]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
	add sp, #0xc
	pop {r3}
	bx lr
	thumb_func_end ov17_02248990

	thumb_func_start ov17_022489C8
ov17_022489C8: ; 0x022489C8
	push {r4, lr}
	add r4, r1, #0
	ldrb r2, [r4, #0x14]
	cmp r2, #0
	beq _022489D8
	cmp r2, #1
	beq _022489FC
	b _02248A14
_022489D8:
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #0x10]
	str r0, [r4, #8]
	mov r0, #0x16
	bl ov12_02236004
	str r0, [r4, #0xc]
	bl ov12_02236320
	ldr r0, [r4, #0xc]
	ldr r1, _02248A20 ; =ov17_02248990
	bl ov12_02236384
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, pc}
_022489FC:
	ldr r0, [r4, #0xc]
	bl ov12_022363C4
	cmp r0, #0
	bne _02248A1C
	ldr r0, [r4, #0xc]
	bl ov12_02236428
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, pc}
_02248A14:
	mov r1, #1
	strb r1, [r4, #0x15]
	bl sub_0200DA58
_02248A1C:
	pop {r4, pc}
	nop
_02248A20: .word ov17_02248990
	thumb_func_end ov17_022489C8

	thumb_func_start ov17_02248A24
ov17_02248A24: ; 0x02248A24
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02248A3C
	cmp r0, #1
	beq _02248A56
	cmp r0, #2
	beq _02248A86
	b _02248A90
_02248A3C:
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	blo _02248AA0
	mov r0, #0
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #8]
	add sp, #0x28
	add r0, r0, #1
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02248A56:
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x28]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x50]
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0
	bl ov12_02237728
	str r0, [r4, #4]
	ldrb r0, [r4, #8]
	add sp, #0x28
	add r0, r0, #1
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02248A86:
	ldr r0, [r4, #4]
	bl ov12_022377F8
	cmp r0, #1
	beq _02248AA0
_02248A90:
	ldr r0, [r4, #4]
	bl ov12_0223783C
	mov r0, #1
	strb r0, [r4, #9]
	add r0, r5, #0
	bl sub_0200DA58
_02248AA0:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02248A24

	thumb_func_start ov17_02248AA4
ov17_02248AA4: ; 0x02248AA4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r6, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _02248ACA
	cmp r0, #1
	beq _02248B1A
	b _02248BCC
_02248ACA:
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	ldrb r0, [r4, #0xe]
	mov r3, #0xf2
	ldr r2, [r4, #0]
	lsl r0, r0, #4
	add r0, r2, r0
	lsl r3, r3, #4
	ldr r0, [r0, r3]
	add r2, r1, #0
	add r3, #0xe0
	bl ov22_0225B0EC
	ldrb r1, [r4, #0xe]
	ldr r2, [r4, #0]
	mov r0, #0x80
	lsl r1, r1, #4
	add r2, r2, r1
	ldr r1, _02248BDC ; =0x00000F24
	str r0, [r2, r1]
	ldrb r2, [r4, #0xe]
	ldr r3, [r4, #0]
	mov r0, #0x68
	lsl r2, r2, #4
	add r3, r3, r2
	add r2, r1, #4
	str r0, [r3, r2]
	ldrb r0, [r4, #0xe]
	ldr r2, [r4, #0]
	lsl r0, r0, #4
	add r2, r2, r0
	sub r0, r1, #4
	ldr r0, [r2, r0]
	mov r1, #1
	bl ov22_0225B074
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02248B1A:
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [r4, #4]
	ldr r1, [r4, #8]
	add r1, r1, r0
	str r1, [r4, #8]
	ldr r2, [r4, #4]
	lsl r1, r0, #3
	cmp r2, r1
	blt _02248B38
	lsl r0, r0, #3
	str r0, [r4, #4]
	str r0, [r4, #8]
_02248B38:
	ldrb r0, [r4, #0xe]
	mov r3, #0xf2
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	lsl r3, r3, #4
	ldr r0, [r0, r3]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, #0xe0
	bl ov22_0225B0EC
	ldrb r0, [r4, #0xe]
	mov r2, #0xf2
	lsl r2, r2, #4
	lsl r1, r0, #4
	ldr r0, [r4, #0]
	add r3, r0, r1
	add r1, r2, #4
	ldr r0, [r3, r2]
	add r2, #8
	ldr r1, [r3, r1]
	ldr r2, [r3, r2]
	add r3, r6, #0
	bl ov22_0225B158
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #0xc
	cmp r1, r0
	blt _02248BD6
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #5
	bl sub_02074470
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x70
	bl sub_02074470
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r2, #0x7f
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x16
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	ldrb r6, [r4, #0xe]
	ldr r0, [r0, #0]
	add r2, #0xdd
	lsl r6, r6, #2
	add r0, r0, r6
	ldr r0, [r0, r2]
	lsl r2, r5, #0x10
	lsr r2, r2, #0x10
	bl sub_02077D3C
	ldrb r0, [r4, #0xc]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02248BCC:
	mov r0, #1
	strb r0, [r4, #0xd]
	add r0, r5, #0
	bl sub_0200DA58
_02248BD6:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02248BDC: .word 0x00000F24
	thumb_func_end ov17_02248AA4

	thumb_func_start ov17_02248BE0
ov17_02248BE0: ; 0x02248BE0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bls _02248BEE
	b _02248D16
_02248BEE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248BFA: ; jump table
	.short _02248C04 - _02248BFA - 2 ; case 0
	.short _02248C2A - _02248BFA - 2 ; case 1
	.short _02248C4C - _02248BFA - 2 ; case 2
	.short _02248CBA - _02248BFA - 2 ; case 3
	.short _02248CD2 - _02248BFA - 2 ; case 4
_02248C04:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _02248C10
	bl GF_AssertFail
_02248C10:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	bhi _02248C1E
	b _02248D26
_02248C1E:
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02248C2A:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #8]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02248C4C:
	ldrb r1, [r4, #0xe]
	mov r0, #1
	tst r0, r1
	ldr r0, [r4, #0]
	beq _02248C7E
	ldr r3, [r4, #4]
	ldr r0, [r0, #0x24]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r3, [r4, #8]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	b _02248CA6
_02248C7E:
	ldr r3, [r4, #4]
	ldr r0, [r0, #0x24]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r3, [r4, #8]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	asr r2, r2, #8
	ldr r0, [r0, #0x24]
	mov r1, #1
	sub r2, r2, #3
	bl sub_02007DEC
_02248CA6:
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #3
	blo _02248D26
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02248CBA:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xf]
	cmp r0, #7
	blo _02248D26
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02248CD2:
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #0xa
	add r1, r1, r0
	mov r0, #5
	lsl r0, r0, #0xe
	str r1, [r4, #4]
	cmp r1, r0
	blt _02248CEC
	str r0, [r4, #4]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02248CEC:
	ldr r3, [r4, #4]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r3, [r4, #8]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_02248D16:
	ldr r0, [r4, #0]
	bl ov17_02247918
	mov r0, #1
	strb r0, [r4, #0xd]
	add r0, r5, #0
	bl sub_0200DA58
_02248D26:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02248BE0

	thumb_func_start ov17_02248D28
ov17_02248D28: ; 0x02248D28
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02248D28

	thumb_func_start ov17_02248D3C
ov17_02248D3C: ; 0x02248D3C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x16
	mov r1, #0x1c
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	ldr r2, _02248D9C ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r6]
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0x13]
	ldrb r0, [r5, #4]
	strb r0, [r4, #0x14]
	ldrb r0, [r5, #5]
	strb r0, [r4, #0x15]
	ldrb r0, [r5, #6]
	strb r0, [r4, #0x16]
	ldrb r0, [r5, #7]
	strb r0, [r4, #0x17]
	ldrb r0, [r5, #9]
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #8]
	strb r0, [r4, #0x18]
	ldr r0, _02248DA0 ; =ov17_02248DA4
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248D9C: .word 0x00007530
_02248DA0: .word ov17_02248DA4
	thumb_func_end ov17_02248D3C

	thumb_func_start ov17_02248DA4
ov17_02248DA4: ; 0x02248DA4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02248DBA
	cmp r0, #1
	beq _02248DF2
	cmp r0, #2
	beq _02248E04
	b _02248E3C
_02248DBA:
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _02248DEC
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x34
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	add r2, r4, #0
	ldrb r1, [r4, #0x17]
	ldr r0, [r4, #0]
	add r2, #0x13
	bl ov17_02247A08
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248DEC:
	mov r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248DF2:
	ldr r0, [r4, #0]
	bl ov17_02247A3C
	cmp r0, #0
	bne _02248E54
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248E04:
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _02248E18
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248E18:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x18]
	cmp r1, r0
	blo _02248E54
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x34
	bl sub_0200E084
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248E3C:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02248E54:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02248DA4

	thumb_func_start ov17_02248E58
ov17_02248E58: ; 0x02248E58
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02248E58

	thumb_func_start ov17_02248E6C
ov17_02248E6C: ; 0x02248E6C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x16
	mov r1, #0x18
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	ldr r2, _02248EBC ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r5]
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	mov r0, #0xa
	ldrsb r0, [r6, r0]
	strb r0, [r4, #0x11]
	mov r0, #0xb
	ldrsb r0, [r6, r0]
	strb r0, [r4, #0x12]
	mov r0, #0xc
	ldrsb r0, [r6, r0]
	strb r0, [r4, #0x13]
	ldr r0, _02248EC0 ; =ov17_02248EC4
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248EBC: .word 0x00007530
_02248EC0: .word ov17_02248EC4
	thumb_func_end ov17_02248E6C

	thumb_func_start ov17_02248EC4
ov17_02248EC4: ; 0x02248EC4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02248ED8
	cmp r0, #1
	beq _02248F50
	b _02248F8C
_02248ED8:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldr r0, _02248FA8 ; =0x00000171
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02248F32
	ldr r0, _02248FAC ; =0x04000048
	ldr r1, _02248FB0 ; =0xFFFFC0FF
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x1f
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0, #2]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r2, r1
	strh r2, [r0, #2]
	lsl r3, r1, #0x15
	ldr r2, [r3, #0]
	ldr r0, _02248FB4 ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #9
	orr r0, r2
	str r0, [r3, #0]
	ldr r1, [r4, #0]
	ldr r0, _02248FB8 ; =0x00000F64
	mov r2, #0xf0
	strb r2, [r1, r0]
	ldr r2, [r4, #0]
	mov r3, #0
	add r1, r0, #1
	strb r3, [r2, r1]
	add r1, r0, #2
	ldr r2, [r4, #0]
	mov r3, #0xff
	strb r3, [r2, r1]
	ldr r1, [r4, #0]
	mov r2, #0x10
	add r0, r0, #3
	strb r2, [r1, r0]
_02248F32:
	mov r0, #1
	str r0, [sp]
	mov r1, #0x12
	mov r2, #0x11
	ldrb r0, [r4, #0x13]
	ldrsb r1, [r4, r1]
	ldrsb r2, [r4, r2]
	mov r3, #0x3d
	bl sub_0200AAE0
	ldrb r0, [r4, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248F50:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _02248FA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xd0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	ldr r0, [r0, #0x50]
	add r3, r1, #0
	bl sub_020038B0
	mov r2, #0
	str r2, [sp]
	mov r0, #0xe0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #2
	ldr r0, [r0, #0x50]
	add r3, r2, #0
	bl sub_020038B0
	ldrb r0, [r4, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248F8C:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02248FA4:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02248FA8: .word 0x00000171
_02248FAC: .word 0x04000048
_02248FB0: .word 0xFFFFC0FF
_02248FB4: .word 0xFFFF1FFF
_02248FB8: .word 0x00000F64
	thumb_func_end ov17_02248EC4

	thumb_func_start ov17_02248FBC
ov17_02248FBC: ; 0x02248FBC
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02248FBC

	thumb_func_start ov17_02248FD0
ov17_02248FD0: ; 0x02248FD0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224900C ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02249010 ; =ov17_02249014
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224900C: .word 0x00007530
_02249010: .word ov17_02249014
	thumb_func_end ov17_02248FD0

	thumb_func_start ov17_02249014
ov17_02249014: ; 0x02249014
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r1, #0x18]
	str r1, [sp]
	add r1, r0, #1
	ldr r0, [sp]
	cmp r1, #0x1e
	str r1, [r0, #0x18]
	bne _02249030
	mov r1, #0x1e
	strb r1, [r0, #0x13]
	mov r1, #1
	strb r1, [r0, #0x15]
_02249030:
	ldr r0, [sp]
	ldr r0, [r0, #0]
	ldr r1, [r0, #0]
	ldr r0, _02249228 ; =0x00000171
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224906A
	ldr r0, [sp]
	ldr r0, [r0, #0x18]
	cmp r0, #0x1e
	bge _0224906A
	ldr r0, _0224922C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02249058
	ldr r0, _02249230 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0224906A
_02249058:
	ldr r0, [sp]
	mov r1, #0x1e
	str r1, [r0, #0x18]
	ldr r1, [sp]
	mov r0, #0
	strb r0, [r1, #0x13]
	mov r2, #1
	strb r2, [r1, #0x15]
	b _02249078
_0224906A:
	ldr r0, [sp]
	ldr r0, [r0, #0x18]
	cmp r0, #0x1e
	ble _02249076
	mov r0, #0
	b _02249078
_02249076:
	mov r0, #1
_02249078:
	ldr r1, [sp]
	ldrb r1, [r1, #0x10]
	cmp r1, #0
	beq _02249082
	b _022491FA
_02249082:
	ldr r1, [sp]
	mov r2, #0x14
	ldrsb r1, [r1, r2]
	cmp r1, #0
	ble _02249096
	ldr r0, [sp]
	sub r1, r1, #1
	strb r1, [r0, #0x14]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02249096:
	ldr r1, [sp]
	mov r2, #0x13
	ldrsb r1, [r1, r2]
	cmp r1, #0
	ble _022490AA
	ldr r0, [sp]
	sub r1, r1, #1
	strb r1, [r0, #0x13]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022490AA:
	ldr r1, [sp]
	strb r0, [r1, #0x13]
	add r0, r1, #0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022490C2
	ldr r0, _02249234 ; =0x000006ED
	bl sub_02005748
	ldr r0, [sp]
	mov r1, #0
	strb r1, [r0, #0x15]
_022490C2:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _02249136
_022490D6:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _02249238 ; =0x02254468
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _02249130
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r0, [r0, #0x12]
	mov r7, #0x3f
	str r5, [sp, #4]
	lsl r1, r0, #1
	ldr r0, _0224923C ; =0x02254470
	lsl r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r0, r0, #5
	add r6, r1, r0
	b _0224912A
_02249106:
	mov r4, #0
	b _0224911E
_0224910A:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_0224911E:
	cmp r4, #8
	blt _0224910A
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_0224912A:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _02249106
_02249130:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_02249136:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _022490D6
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _02249178
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _02249178
	ldr r0, _02249238 ; =0x02254468
	sub r1, r1, #1
	ldrsb r0, [r0, r1]
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #0x3f
	str r0, [sp, #4]
	lsl r1, r1, #0xa
	b _02249172
_02249162:
	ldr r0, [sp, #4]
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_02249172:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _02249162
_02249178:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldr r0, [sp]
	mov r1, #0xc
	ldrb r0, [r0, #0x12]
	lsl r0, r0, #5
	bl _u32_div_f
	ldr r1, [sp]
	mov r2, #0x11
	ldrsb r2, [r1, r2]
	ldr r1, _02249238 ; =0x02254468
	ldrsb r1, [r1, r2]
	add r1, r1, #4
	lsl r1, r1, #3
	sub r2, r1, r0
	ldr r0, [sp]
	ldr r1, _02249240 ; =0x00000F63
	ldr r0, [r0, #0]
	strb r2, [r0, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _022491C2
	ldr r2, _02249244 ; =0x04000050
	mov r0, #0
	strh r0, [r2]
	sub r2, #0x50
	ldr r1, [r2, #0]
	ldr r0, _02249248 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
_022491C2:
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _02249224
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _02249224
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022491FA:
	ldr r3, _02249244 ; =0x04000050
	mov r2, #0
	strh r2, [r3]
	sub r3, #0x50
	ldr r1, [r3, #0]
	ldr r0, _02249248 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r3, #0]
	ldr r0, [sp]
	ldr r1, [sp]
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02249224:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02249228: .word 0x00000171
_0224922C: .word 0x021BF67C
_02249230: .word 0x021BF6BC
_02249234: .word 0x000006ED
_02249238: .word 0x02254468
_0224923C: .word 0x02254470
_02249240: .word 0x00000F63
_02249244: .word 0x04000050
_02249248: .word 0xFFFF1FFF
	thumb_func_end ov17_02249014

	thumb_func_start ov17_0224924C
ov17_0224924C: ; 0x0224924C
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224924C

	thumb_func_start ov17_02249260
ov17_02249260: ; 0x02249260
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x14
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrh r0, [r0, #0x10]
	bl sub_02005748
	ldr r0, _022492A4 ; =ov17_022492AC
	ldr r2, _022492A8 ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022492A4: .word ov17_022492AC
_022492A8: .word 0x00007530
	thumb_func_end ov17_02249260

	thumb_func_start ov17_022492AC
ov17_022492AC: ; 0x022492AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _022492D8 ; =0x000004F9
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022492D4
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_022492D4:
	pop {r3, r4, r5, pc}
	nop
_022492D8: .word 0x000004F9
	thumb_func_end ov17_022492AC

	.rodata


	.global Unk_ov17_02254468
Unk_ov17_02254468: ; 0x02254468
	.incbin "incbin/overlay17_rodata.bin", 0x16DC, 0x16E4 - 0x16DC

	.global Unk_ov17_02254470
Unk_ov17_02254470: ; 0x02254470
	.incbin "incbin/overlay17_rodata.bin", 0x16E4, 0x16FC - 0x16E4

	.global Unk_ov17_02254488
Unk_ov17_02254488: ; 0x02254488
	.incbin "incbin/overlay17_rodata.bin", 0x16FC, 0xCC

