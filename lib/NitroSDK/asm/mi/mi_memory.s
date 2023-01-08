	.include "macros/function.inc"

	

	.text


	arm_func_start MIi_CpuClear16
MIi_CpuClear16: ; 0x020C4AF0
	mov r3, #0
_020C4AF4:
	cmp r3, r2
	blt _020C4B00
	b _020C4B04
_020C4B00:
	strh r0, [r1, r3]
_020C4B04:
	blt _020C4B0C
	b _020C4B10
_020C4B0C:
	add r3, r3, #2
_020C4B10:
	blt _020C4AF4
	bx lr
	arm_func_end MIi_CpuClear16

	arm_func_start MIi_CpuCopy16
MIi_CpuCopy16: ; 0x020C4B18
	mov ip, #0
_020C4B1C:
	cmp ip, r2
	blt _020C4B28
	b _020C4B2C
_020C4B28:
	ldrh r3, [r0, ip]
_020C4B2C:
	blt _020C4B34
	b _020C4B38
_020C4B34:
	strh r3, [r1, ip]
_020C4B38:
	blt _020C4B40
	b _020C4B44
_020C4B40:
	add ip, ip, #2
_020C4B44:
	blt _020C4B1C
	bx lr
	arm_func_end MIi_CpuCopy16

	arm_func_start MIi_CpuClear32
MIi_CpuClear32: ; 0x020C4B4C
	add ip, r1, r2
_020C4B50:
	cmp r1, ip
	blt _020C4B5C
	b _020C4B60
_020C4B5C:
	stmia r1!, {r0}
_020C4B60:
	blt _020C4B50
	bx lr
	arm_func_end MIi_CpuClear32

	arm_func_start MIi_CpuCopy32
MIi_CpuCopy32: ; 0x020C4B68
	add ip, r1, r2
_020C4B6C:
	cmp r1, ip
	blt _020C4B78
	b _020C4B7C
_020C4B78:
	ldmia r0!, {r2}
_020C4B7C:
	blt _020C4B84
	b _020C4B88
_020C4B84:
	stmia r1!, {r2}
_020C4B88:
	blt _020C4B6C
	bx lr
	arm_func_end MIi_CpuCopy32

	arm_func_start MIi_CpuSend32
MIi_CpuSend32: ; 0x020C4B90
	add ip, r0, r2
_020C4B94:
	cmp r0, ip
	blt _020C4BA0
	b _020C4BA4
_020C4BA0:
	ldmia r0!, {r2}
_020C4BA4:
	blt _020C4BAC
	b _020C4BB0
_020C4BAC:
	str r2, [r1, #0]
_020C4BB0:
	blt _020C4B94
	bx lr
	arm_func_end MIi_CpuSend32

	arm_func_start MIi_CpuClearFast
MIi_CpuClearFast: ; 0x020C4BB8
	stmfd sp!, {r4, r5, r6, r7, r8, sb}
	add sb, r1, r2
	mov ip, r2, lsr #5
	add ip, r1, ip, lsl #5
	mov r2, r0
	mov r3, r2
	mov r4, r2
	mov r5, r2
	mov r6, r2
	mov r7, r2
	mov r8, r2
_020C4BE4:
	cmp r1, ip
	blt _020C4BF0
	b _020C4BF4
_020C4BF0:
	stmia r1!, {r0, r2, r3, r4, r5, r6, r7, r8}
_020C4BF4:
	blt _020C4BE4
_020C4BF8:
	cmp r1, sb
	blt _020C4C04
	b _020C4C08
_020C4C04:
	stmia r1!, {r0}
_020C4C08:
	blt _020C4BF8
	ldmia sp!, {r4, r5, r6, r7, r8, sb}
	bx lr
	arm_func_end MIi_CpuClearFast

	arm_func_start MIi_CpuCopyFast
MIi_CpuCopyFast: ; 0x020C4C14
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl}
	add sl, r1, r2
	mov ip, r2, lsr #5
	add ip, r1, ip, lsl #5
_020C4C24:
	cmp r1, ip
	blt _020C4C30
	b _020C4C34
_020C4C30:
	ldmia r0!, {r2, r3, r4, r5, r6, r7, r8, sb}
_020C4C34:
	blt _020C4C3C
	b _020C4C40
_020C4C3C:
	stmia r1!, {r2, r3, r4, r5, r6, r7, r8, sb}
_020C4C40:
	blt _020C4C24
_020C4C44:
	cmp r1, sl
	blt _020C4C50
	b _020C4C54
_020C4C50:
	ldmia r0!, {r2}
_020C4C54:
	blt _020C4C5C
	b _020C4C60
_020C4C5C:
	stmia r1!, {r2}
_020C4C60:
	blt _020C4C44
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl}
	bx lr
	arm_func_end MIi_CpuCopyFast

	arm_func_start MI_Copy32B
MI_Copy32B: ; 0x020C4C6C
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3}
	stmia r1!, {r2, r3}
	bx lr
	arm_func_end MI_Copy32B

	arm_func_start MI_Copy36B
MI_Copy36B: ; 0x020C4C88
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	bx lr
	arm_func_end MI_Copy36B

	arm_func_start MI_Copy48B
MI_Copy48B: ; 0x020C4CA4
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	bx lr
	arm_func_end MI_Copy48B

	arm_func_start MI_Copy64B
MI_Copy64B: ; 0x020C4CC8
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0, {r0, r2, r3, ip}
	stmia r1!, {r0, r2, r3, ip}
	bx lr
	arm_func_end MI_Copy64B

	arm_func_start MI_CpuFill8
MI_CpuFill8: ; 0x020C4CF4
	cmp r2, #0
	beq _020C4D00
	b _020C4D04
_020C4D00:
	bx lr
_020C4D04:
	tst r0, #1
	beq _020C4D30
	ldrh ip, [r0, #-1]
	and ip, ip, #0xff
	orr r3, ip, r1, lsl #8
	strh r3, [r0, #-1]
	add r0, r0, #1
	subs r2, r2, #1
	beq _020C4D2C
	b _020C4D30
_020C4D2C:
	bx lr
_020C4D30:
	cmp r2, #2
	blo _020C4D88
	orr r1, r1, r1, lsl #8
	tst r0, #2
	beq _020C4D58
	strh r1, [r0], #2
	subs r2, r2, #2
	beq _020C4D54
	b _020C4D58
_020C4D54:
	bx lr
_020C4D58:
	orr r1, r1, r1, lsl #16
	bics r3, r2, #3
	beq _020C4D78
	sub r2, r2, r3
	add ip, r3, r0
_020C4D6C:
	str r1, [r0, #0], #4
	cmp r0, ip
	blo _020C4D6C
_020C4D78:
	tst r2, #2
	bne _020C4D84
	b _020C4D88
_020C4D84:
	strh r1, [r0], #2
_020C4D88:
	tst r2, #1
	beq _020C4D94
	b _020C4D98
_020C4D94:
	bx lr
_020C4D98:
	ldrh r3, [r0]
	and r3, r3, #0xff00
	and r1, r1, #0xff
	orr r1, r1, r3
	strh r1, [r0]
	bx lr
	arm_func_end MI_CpuFill8

	arm_func_start MI_CpuCopy8
MI_CpuCopy8: ; 0x020C4DB0
	cmp r2, #0
	beq _020C4DBC
	b _020C4DC0
_020C4DBC:
	bx lr
_020C4DC0:
	tst r1, #1
	beq _020C4E18
	ldrh ip, [r1, #-1]
	and ip, ip, #0xff
	tst r0, #1
	bne _020C4DDC
	b _020C4DE0
_020C4DDC:
	ldrh r3, [r0, #-1]
_020C4DE0:
	bne _020C4DE8
	b _020C4DEC
_020C4DE8:
	mov r3, r3, lsr #8
_020C4DEC:
	beq _020C4DF4
	b _020C4DF8
_020C4DF4:
	ldrh r3, [r0]
_020C4DF8:
	orr r3, ip, r3, lsl #8
	strh r3, [r1, #-1]
	add r0, r0, #1
	add r1, r1, #1
	subs r2, r2, #1
	beq _020C4E14
	b _020C4E18
_020C4E14:
	bx lr
_020C4E18:
	eor ip, r1, r0
	tst ip, #1
	beq _020C4E74
	bic r0, r0, #1
	ldrh ip, [r0], #2
	mov r3, ip, lsr #8
	subs r2, r2, #2
	blo _020C4E50
_020C4E38:
	ldrh ip, [r0], #2
	orr ip, r3, ip, lsl #8
	strh ip, [r1], #2
	mov r3, ip, lsr #0x10
	subs r2, r2, #2
	bhs _020C4E38
_020C4E50:
	tst r2, #1
	beq _020C4E5C
	b _020C4E60
_020C4E5C:
	bx lr
_020C4E60:
	ldrh ip, [r1]
	and ip, ip, #0xff00
	orr ip, ip, r3
	strh ip, [r1]
	bx lr
_020C4E74:
	tst ip, #2
	beq _020C4EA0
	bics r3, r2, #1
	beq _020C4F04
	sub r2, r2, r3
	add ip, r3, r1
_020C4E8C:
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	cmp r1, ip
	blo _020C4E8C
	b _020C4F04
_020C4EA0:
	cmp r2, #2
	blo _020C4F04
	tst r1, #2
	beq _020C4EC8
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	subs r2, r2, #2
	beq _020C4EC4
	b _020C4EC8
_020C4EC4:
	bx lr
_020C4EC8:
	bics r3, r2, #3
	beq _020C4EE8
	sub r2, r2, r3
	add ip, r3, r1
_020C4ED8:
	ldr r3, [r0, #0], #4
	str r3, [r1, #0], #4
	cmp r1, ip
	blo _020C4ED8
_020C4EE8:
	tst r2, #2
	bne _020C4EF4
	b _020C4EF8
_020C4EF4:
	ldrh r3, [r0], #2
_020C4EF8:
	bne _020C4F00
	b _020C4F04
_020C4F00:
	strh r3, [r1], #2
_020C4F04:
	tst r2, #1
	beq _020C4F10
	b _020C4F14
_020C4F10:
	bx lr
_020C4F14:
	ldrh r2, [r1]
	ldrh r0, [r0]
	and r2, r2, #0xff00
	and r0, r0, #0xff
	orr r0, r2, r0
	strh r0, [r1]
	bx lr
	arm_func_end MI_CpuCopy8

	thumb_func_start MI_Zero36B
MI_Zero36B: ; 0x020C4F30
	mov r1, #0
	mov r2, #0
	mov r3, #0
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r2, r3}
	bx lr
	; .align 2, 0
	thumb_func_end MI_Zero36B