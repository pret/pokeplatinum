	.include "macros/function.inc"
	.include "include/aosslink.inc"

	

	.text


	thumb_func_start ov18_02226910
ov18_02226910: ; 0x02226910
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xa]
	add r4, r1, #0
	add r1, r4, #4
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0xc
	mov r2, #0x20
	bl MIi_CpuCopy16
	ldrh r0, [r5, #0x36]
	add r1, r4, #0
	add r1, #0x30
	str r0, [r4, #0x24]
	add r0, r5, #4
	mov r2, #6
	bl MIi_CpuCopy16
	mov r1, #0
	ldr r2, _02226998 ; =0x02249808
	add r0, r1, #0
	mov r6, #0x80
_0222693E:
	ldrh r7, [r5, #0x30]
	ldrh r3, [r2]
	tst r3, r7
	beq _02226968
	ldrb r7, [r2, #2]
	add r3, r4, r1
	add r3, #0x3c
	strb r7, [r3]
	ldrh r7, [r5, #0x2e]
	ldrh r3, [r2]
	tst r3, r7
	beq _02226966
	add r3, r4, r1
	add r3, #0x3c
	ldrb r3, [r3]
	add r7, r3, #0
	add r3, r4, r1
	orr r7, r6
	add r3, #0x3c
	strb r7, [r3]
_02226966:
	add r1, r1, #1
_02226968:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, #0xc
	blt _0222693E
	str r1, [r4, #0x38]
	ldrh r0, [r5, #0x32]
	str r0, [r4, #0x4c]
	ldrh r1, [r5, #0x2c]
	mov r0, #3
	and r0, r1
	cmp r0, #1
	bne _02226986
	mov r0, #1
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_02226986:
	cmp r0, #2
	bne _02226990
	mov r0, #2
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_02226990:
	mov r0, #0
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226998: .word Unk_ov18_02249808
	thumb_func_end ov18_02226910

	thumb_func_start ov18_0222699C
ov18_0222699C: ; 0x0222699C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	add r1, #0xc
	mov r2, #0x20
	bl MIi_CpuClear16
	ldr r0, [r5, #0]
	add r1, r4, #0
	strh r0, [r4, #0xa]
	ldrh r2, [r4, #0xa]
	add r0, r5, #4
	add r1, #0xc
	bl MI_CpuCopy8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov18_0222699C

	thumb_func_start ov18_022269C0
ov18_022269C0: ; 0x022269C0
	add r3, r0, #0
	add r0, r1, #0
	str r2, [r3, #0]
	add r1, r3, #4
	ldr r3, _022269CC ; =ov18_02226910
	bx r3
	; .align 2, 0
_022269CC: .word ov18_02226910
	thumb_func_end ov18_022269C0

	thumb_func_start ov18_022269D0
ov18_022269D0: ; 0x022269D0
	ldr r3, _022269DC ; =OS_SendMessage
	add r1, r0, #0
	ldr r0, _022269E0 ; =0x02251B80
	mov r2, #0
	bx r3
	nop
_022269DC: .word OS_SendMessage
_022269E0: .word Unk_ov18_02251B80
	thumb_func_end ov18_022269D0

	thumb_func_start ov18_022269E4
ov18_022269E4: ; 0x022269E4
	ldr r3, _022269F0 ; =OS_SendMessage
	add r1, r0, #0
	ldr r0, _022269F4 ; =0x02251B80
	mov r2, #0
	bx r3
	nop
_022269F0: .word OS_SendMessage
_022269F4: .word Unk_ov18_02251B80
	thumb_func_end ov18_022269E4

	thumb_func_start ov18_022269F8
ov18_022269F8: ; 0x022269F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, _02226AA8 ; =0x02251B80
	ldr r1, _02226AAC ; =0x02251B70
	mov r2, #4
	mov r4, #1
	bl OS_InitMessageQueue
	cmp r5, #0
	beq _02226A12
	cmp r6, #0
	bne _02226A18
_02226A12:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02226A18:
	bl OS_DisableInterrupts
	ldr r1, _02226AB0 ; =0x02251B60
	str r5, [r1, #0]
	str r6, [r1, #0xc]
	bl OS_RestoreInterrupts
	ldr r1, _02226AB0 ; =0x02251B60
	ldr r0, _02226AB4 ; =0x00005890
	ldr r1, [r1, #0]
	blx r1
	add r1, r0, #0
	ldr r0, _02226AB0 ; =0x02251B60
	str r1, [r0, #8]
	bne _02226A3A
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02226A3A:
	ldr r0, _02226AB8 ; =ov18_022269D0
	ldr r2, _02226AB4 ; =0x00005890
	bl ov18_02227494
	cmp r0, #0
	bne _02226A48
	mov r4, #0
_02226A48:
	cmp r4, #0
	beq _02226A98
	ldr r5, _02226AA8 ; =0x02251B80
	add r6, sp, #0
	mov r7, #1
_02226A52:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl OS_ReceiveMessage
	ldr r0, [sp]
	cmp r0, #0xf
	bhi _02226A92
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226A6E: ; jump table
	.short _02226A92 - _02226A6E - 2 ; case 0
	.short _02226A92 - _02226A6E - 2 ; case 1
	.short _02226A92 - _02226A6E - 2 ; case 2
	.short _02226A92 - _02226A6E - 2 ; case 3
	.short _02226A94 - _02226A6E - 2 ; case 4
	.short _02226A94 - _02226A6E - 2 ; case 5
	.short _02226A8E - _02226A6E - 2 ; case 6
	.short _02226A92 - _02226A6E - 2 ; case 7
	.short _02226A92 - _02226A6E - 2 ; case 8
	.short _02226A92 - _02226A6E - 2 ; case 9
	.short _02226A92 - _02226A6E - 2 ; case 10
	.short _02226A92 - _02226A6E - 2 ; case 11
	.short _02226A92 - _02226A6E - 2 ; case 12
	.short _02226A92 - _02226A6E - 2 ; case 13
	.short _02226A92 - _02226A6E - 2 ; case 14
	.short _02226A92 - _02226A6E - 2 ; case 15
_02226A8E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02226A92:
	mov r4, #0
_02226A94:
	cmp r4, #0
	bne _02226A52
_02226A98:
	ldr r1, _02226AB0 ; =0x02251B60
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226AA8: .word Unk_ov18_02251B80
_02226AAC: .word Unk_ov18_02251B70
_02226AB0: .word Unk_ov18_02251B60
_02226AB4: .word 0x00005890
_02226AB8: .word ov18_022269D0
	thumb_func_end ov18_022269F8

	thumb_func_start ov18_02226ABC
ov18_02226ABC: ; 0x02226ABC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02226B4C ; =0x02251B60
	mov r4, #1
	ldr r0, [r0, #0xc]
	sub r5, r4, #2
	cmp r0, #0
	bne _02226ACE
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02226ACE:
	bl ov18_022273B8
	cmp r0, #0
	bne _02226ADA
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02226ADA:
	ldr r7, _02226B50 ; =0x02251B80
	ldr r6, _02226B4C ; =0x02251B60
_02226ADE:
	add r0, r7, #0
	add r1, sp, #0
	mov r2, #1
	bl OS_ReceiveMessage
	ldr r0, [sp]
	cmp r0, #0x14
	bhi _02226B30
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226AFA: ; jump table
	.short _02226B30 - _02226AFA - 2 ; case 0
	.short _02226B30 - _02226AFA - 2 ; case 1
	.short _02226B30 - _02226AFA - 2 ; case 2
	.short _02226B30 - _02226AFA - 2 ; case 3
	.short _02226B32 - _02226AFA - 2 ; case 4
	.short _02226B32 - _02226AFA - 2 ; case 5
	.short _02226B30 - _02226AFA - 2 ; case 6
	.short _02226B30 - _02226AFA - 2 ; case 7
	.short _02226B30 - _02226AFA - 2 ; case 8
	.short _02226B30 - _02226AFA - 2 ; case 9
	.short _02226B30 - _02226AFA - 2 ; case 10
	.short _02226B30 - _02226AFA - 2 ; case 11
	.short _02226B30 - _02226AFA - 2 ; case 12
	.short _02226B30 - _02226AFA - 2 ; case 13
	.short _02226B30 - _02226AFA - 2 ; case 14
	.short _02226B30 - _02226AFA - 2 ; case 15
	.short _02226B30 - _02226AFA - 2 ; case 16
	.short _02226B30 - _02226AFA - 2 ; case 17
	.short _02226B30 - _02226AFA - 2 ; case 18
	.short _02226B30 - _02226AFA - 2 ; case 19
	.short _02226B24 - _02226AFA - 2 ; case 20
_02226B24:
	ldr r0, [r6, #8]
	mov r4, #0
	ldr r1, [r6, #0xc]
	add r5, r4, #0
	blx r1
	b _02226B32
_02226B30:
	mov r4, #0
_02226B32:
	cmp r4, #0
	bne _02226ADE
	bl OS_DisableInterrupts
	ldr r1, _02226B4C ; =0x02251B60
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #0xc]
	bl OS_RestoreInterrupts
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226B4C: .word Unk_ov18_02251B60
_02226B50: .word Unk_ov18_02251B80
	thumb_func_end ov18_02226ABC

	thumb_func_start ov18_02226B54
ov18_02226B54: ; 0x02226B54
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mvn r5, r5
	bl ov18_02227380
	cmp r0, #0
	beq _02226B84
	ldr r4, _02226B88 ; =0x02251B80
	add r6, sp, #0
	mov r7, #1
_02226B68:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl OS_ReceiveMessage
	ldr r0, [sp]
	cmp r0, #0xe
	bne _02226B7E
	mov r0, #0
	add r5, r0, #0
	b _02226B80
_02226B7E:
	mov r0, #0
_02226B80:
	cmp r0, #0
	bne _02226B68
_02226B84:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02226B88: .word Unk_ov18_02251B80
	thumb_func_end ov18_02226B54

	thumb_func_start ov18_02226B8C
ov18_02226B8C: ; 0x02226B8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #4]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r6, #0
	ldr r0, _02226CF0 ; =0x02251B60
	add r7, r6, #0
	ldr r1, [r0, #0]
	add r5, r6, #0
	cmp r1, #0
	beq _02226BB0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02226BB8
_02226BB0:
	mov r0, #0
	add sp, #0x44
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02226BB8:
	mov r0, #3
	lsl r0, r0, #0xc
	blx r1
	add r4, r0, #0
	bne _02226BC8
	add sp, #0x44
	sub r0, r6, #1
	pop {r4, r5, r6, r7, pc}
_02226BC8:
	add r0, r6, #0
	ldr r3, _02226CF4 ; =0x0030BFFE
	add r1, r0, #0
	add r2, r0, #0
	str r4, [sp, #8]
	bl ov18_02227254
	cmp r0, #0
	bne _02226BDC
	b _02226CE0
_02226BDC:
	add r0, sp, #0x18
	bl OS_CreateAlarm
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _02226CF8 ; =0x003FEC42
	ldr r3, _02226CFC ; =ov18_022269E4
	add r0, sp, #0x18
	add r2, r6, #0
	bl OS_SetAlarm
_02226BF2:
	ldr r0, _02226D00 ; =0x02251B80
	add r1, sp, #0x14
	mov r2, #1
	bl OS_ReceiveMessage
	ldr r0, [sp, #0x14]
	cmp r0, #0x13
	bhi _02226CC6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226C0E: ; jump table
	.short _02226CC6 - _02226C0E - 2 ; case 0
	.short _02226CC6 - _02226C0E - 2 ; case 1
	.short _02226CC6 - _02226C0E - 2 ; case 2
	.short _02226CC6 - _02226C0E - 2 ; case 3
	.short _02226C7C - _02226C0E - 2 ; case 4
	.short _02226C54 - _02226C0E - 2 ; case 5
	.short _02226CC6 - _02226C0E - 2 ; case 6
	.short _02226CC6 - _02226C0E - 2 ; case 7
	.short _02226C7C - _02226C0E - 2 ; case 8
	.short _02226CC6 - _02226C0E - 2 ; case 9
	.short _02226C76 - _02226C0E - 2 ; case 10
	.short _02226CC6 - _02226C0E - 2 ; case 11
	.short _02226CC6 - _02226C0E - 2 ; case 12
	.short _02226CC6 - _02226C0E - 2 ; case 13
	.short _02226CC6 - _02226C0E - 2 ; case 14
	.short _02226CC6 - _02226C0E - 2 ; case 15
	.short _02226CC6 - _02226C0E - 2 ; case 16
	.short _02226CC6 - _02226C0E - 2 ; case 17
	.short _02226C7C - _02226C0E - 2 ; case 18
	.short _02226C36 - _02226C0E - 2 ; case 19
_02226C36:
	cmp r6, #0
	bne _02226C7C
	cmp r5, #0
	beq _02226C48
	add r0, r4, #0
	mov r1, #0x40
	bl ov18_02227210
	add r7, r0, #0
_02226C48:
	bl ov18_02227344
	cmp r0, #0
	beq _02226CC6
	mov r6, #1
	b _02226C7C
_02226C54:
	cmp r6, #0
	bne _02226C7C
	cmp r5, #8
	bge _02226C60
	add r5, r5, #1
	b _02226C7C
_02226C60:
	add r0, r4, #0
	mov r1, #0x40
	bl ov18_02227210
	add r7, r0, #0
	bl ov18_02227344
	cmp r0, #0
	beq _02226CC6
	mov r6, #1
	b _02226C7C
_02226C76:
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
_02226C7C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02226BF2
	cmp r7, #0
	beq _02226C9A
	sub r1, r7, #1
	mov r0, #0x54
	mul r0, r1
	ldr r1, _02226CF0 ; =0x02251B60
	add r0, #0x58
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	bne _02226CA6
	b _02226CC6
_02226C9A:
	ldr r1, _02226CF0 ; =0x02251B60
	mov r0, #0x58
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _02226CC6
_02226CA6:
	ldr r1, [sp, #4]
	mov r6, #0
	str r0, [r1, #0]
	str r7, [r0, #0]
	cmp r7, #0
	ble _02226CC6
	add r5, r0, #4
_02226CB4:
	add r0, r4, #0
	add r1, r5, #0
	bl ov18_02226910
	add r6, r6, #1
	add r4, #0xc0
	add r5, #0x54
	cmp r6, r7
	blt _02226CB4
_02226CC6:
	add r0, sp, #0x18
	bl OS_CancelAlarm
	ldr r5, _02226D00 ; =0x02251B80
	add r4, sp, #0x14
	mov r6, #0
_02226CD2:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl OS_ReceiveMessage
	cmp r0, #1
	beq _02226CD2
_02226CE0:
	ldr r1, _02226CF0 ; =0x02251B60
	ldr r0, [sp, #8]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [sp, #0x10]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_02226CF0: .word Unk_ov18_02251B60
_02226CF4: .word 0x0030BFFE
_02226CF8: .word 0x003FEC42
_02226CFC: .word ov18_022269E4
_02226D00: .word Unk_ov18_02251B80
	thumb_func_end ov18_02226B8C

	thumb_func_start ov18_02226D04
ov18_02226D04: ; 0x02226D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	mov r4, #1
	add r7, r0, #0
	sub r0, r4, #2
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x24]
	mov r6, #0
	str r1, [sp, #4]
	cmp r0, #0
	bne _02226D1E
	lsl r5, r4, #0x13
	b _02226D26
_02226D1E:
	cmp r0, #1
	bne _02226D26
	mov r5, #3
	lsl r5, r5, #0x12
_02226D26:
	mov r0, #3
	lsl r0, r0, #0x10
	orr r5, r0
	ldr r0, _02226EB8 ; =0x02251C60
	mov r1, #0
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, [r7, #0x28]
	cmp r0, #5
	bne _02226D44
	ldr r0, _02226EB8 ; =0x02251C60
	mov r1, #1
	strb r1, [r0]
	b _02226D64
_02226D44:
	cmp r0, #0xd
	bne _02226D50
	ldr r0, _02226EB8 ; =0x02251C60
	mov r1, #2
	strb r1, [r0]
	b _02226D64
_02226D50:
	cmp r0, #0x10
	bne _02226D5C
	ldr r0, _02226EB8 ; =0x02251C60
	mov r1, #3
	strb r1, [r0]
	b _02226D64
_02226D5C:
	mov r0, #0
	add sp, #0x40
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02226D64:
	mov r1, #0x14
	ldr r2, _02226EB8 ; =0x02251C60
	mul r1, r6
	add r1, r1, #2
	add r0, r7, #0
	strb r6, [r2, #1]
	add r1, r2, r1
	ldr r2, [r7, #0x28]
	add r0, #0x2c
	bl MI_CpuCopy8
	bl ov4_02214E34
	ldr r2, [r7, #0]
	ldr r3, _02226EBC ; =0x0030BFFE
	mov r0, #0
	add r1, r7, #4
	bl ov18_02227254
	cmp r0, #0
	bne _02226D90
	b _02226E9E
_02226D90:
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x14
	bl OS_CreateAlarm
	mov r0, #0x12
	str r0, [sp]
	ldr r1, _02226EC0 ; =0x003FEC42
	ldr r3, _02226EC4 ; =ov18_022269E4
	add r0, sp, #0x14
	mov r2, #0
	bl OS_SetAlarm
	b _02226E80
_02226DAC:
	ldr r0, _02226EC8 ; =0x02251B80
	add r1, sp, #0x10
	mov r2, #1
	bl OS_ReceiveMessage
	ldr r0, [sp, #0x10]
	cmp r0, #0x13
	bhi _02226E7E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226DC8: ; jump table
	.short _02226E7E - _02226DC8 - 2 ; case 0
	.short _02226E7E - _02226DC8 - 2 ; case 1
	.short _02226E7E - _02226DC8 - 2 ; case 2
	.short _02226E7E - _02226DC8 - 2 ; case 3
	.short _02226E80 - _02226DC8 - 2 ; case 4
	.short _02226DF8 - _02226DC8 - 2 ; case 5
	.short _02226E7E - _02226DC8 - 2 ; case 6
	.short _02226E7E - _02226DC8 - 2 ; case 7
	.short _02226E80 - _02226DC8 - 2 ; case 8
	.short _02226E7E - _02226DC8 - 2 ; case 9
	.short _02226E3E - _02226DC8 - 2 ; case 10
	.short _02226E7E - _02226DC8 - 2 ; case 11
	.short _02226E58 - _02226DC8 - 2 ; case 12
	.short _02226E5E - _02226DC8 - 2 ; case 13
	.short _02226E7E - _02226DC8 - 2 ; case 14
	.short _02226E7E - _02226DC8 - 2 ; case 15
	.short _02226E7E - _02226DC8 - 2 ; case 16
	.short _02226E7E - _02226DC8 - 2 ; case 17
	.short _02226DF0 - _02226DC8 - 2 ; case 18
	.short _02226DF6 - _02226DC8 - 2 ; case 19
_02226DF0:
	cmp r6, #0
	bne _02226E80
	mov r4, #0
_02226DF6:
	b _02226E80
_02226DF8:
	cmp r6, #0
	bne _02226E80
	add r0, sp, #0x14
	bl OS_CancelAlarm
	ldr r0, _02226ECC ; =0x02251BA0
	mov r1, #1
	bl ov18_02227210
	cmp r0, #1
	beq _02226E12
	mov r4, #0
	b _02226E80
_02226E12:
	ldr r1, _02226ECC ; =0x02251BA0
	add r0, r7, #0
	bl ov18_0222699C
	ldr r1, _02226ED0 ; =0x02251BA0
	mov r0, #0
	ldrh r1, [r1, #0xa]
	b _02226E24
_02226E22:
	add r0, r0, #1
_02226E24:
	cmp r0, r1
	blt _02226E22
	ldr r0, _02226ECC ; =0x02251BA0
	ldr r1, _02226EB8 ; =0x02251C60
	add r2, r5, #0
	bl ov18_02227410
	cmp r0, #0
	bne _02226E3A
	mov r4, #0
	b _02226E80
_02226E3A:
	mov r6, #1
	b _02226E80
_02226E3E:
	ldr r1, _02226ECC ; =0x02251BA0
	add r0, r7, #0
	bl ov18_0222699C
	ldr r0, _02226ECC ; =0x02251BA0
	ldr r1, _02226EB8 ; =0x02251C60
	add r2, r5, #0
	bl ov18_02227410
	cmp r0, #0
	bne _02226E80
	mov r4, #0
	b _02226E80
_02226E58:
	mov r4, #0
	str r4, [sp, #0xc]
	b _02226E80
_02226E5E:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	bge _02226E7A
	ldr r0, _02226ECC ; =0x02251BA0
	ldr r1, _02226EB8 ; =0x02251C60
	add r2, r5, #0
	bl ov18_02227410
	cmp r0, #0
	bne _02226E80
	mov r4, #0
	b _02226E80
_02226E7A:
	mov r4, #0
	b _02226E80
_02226E7E:
	mov r4, #0
_02226E80:
	cmp r4, #0
	bne _02226DAC
	add r0, sp, #0x14
	bl OS_CancelAlarm
	ldr r5, _02226EC8 ; =0x02251B80
	add r4, sp, #0x10
	mov r6, #0
_02226E90:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl OS_ReceiveMessage
	cmp r0, #1
	beq _02226E90
_02226E9E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02226EA8
	mov r2, #1
	b _02226EAA
_02226EA8:
	mov r2, #0
_02226EAA:
	ldr r0, [sp, #4]
	ldr r1, _02226ECC ; =0x02251BA0
	bl ov18_022269C0
	ldr r0, [sp, #0xc]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02226EB8: .word Unk_ov18_02251C60
_02226EBC: .word 0x0030BFFE
_02226EC0: .word 0x003FEC42
_02226EC4: .word ov18_022269E4
_02226EC8: .word Unk_ov18_02251B80
_02226ECC: .word Unk_ov18_02251BA0
_02226ED0: .word Unk_ov18_02251BA0
	thumb_func_end ov18_02226D04

	thumb_func_start ov18_02226ED4
ov18_02226ED4: ; 0x02226ED4
	ldr r3, _02226ED8 ; =OS_Sleep
	bx r3
	; .align 2, 0
_02226ED8: .word OS_Sleep
	thumb_func_end ov18_02226ED4

	thumb_func_start ov18_02226EDC
ov18_02226EDC: ; 0x02226EDC
	push {r3, lr}
	ldr r1, _02226EEC ; =0x02251B60
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _02226EE8
	blx r1
_02226EE8:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02226EEC: .word Unk_ov18_02251B60
	thumb_func_end ov18_02226EDC

	.data


	.global Unk_ov18_02249808
Unk_ov18_02249808: ; 0x02249808
	.incbin "incbin/overlay18_data.bin", 0xA8, 0x30



	.bss


	.global Unk_ov18_02251B60
Unk_ov18_02251B60: ; 0x02251B60
	.space 0x4

	.global Unk_ov18_02251B64
Unk_ov18_02251B64: ; 0x02251B64
	.space 0x4

	.global Unk_ov18_02251B68
Unk_ov18_02251B68: ; 0x02251B68
	.space 0x4

	.global Unk_ov18_02251B6C
Unk_ov18_02251B6C: ; 0x02251B6C
	.space 0x4

	.global Unk_ov18_02251B70
Unk_ov18_02251B70: ; 0x02251B70
	.space 0x10

	.global Unk_ov18_02251B80
Unk_ov18_02251B80: ; 0x02251B80
	.space 0x20

	.global Unk_ov18_02251BA0
Unk_ov18_02251BA0: ; 0x02251BA0
	.space 0xC0

	.global Unk_ov18_02251C60
Unk_ov18_02251C60: ; 0x02251C60
	.space 0x60

