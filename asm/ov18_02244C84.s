	.include "macros/function.inc"
	.include "include/ov18_02244C84.inc"

	

	.text


	arm_func_start ov18_02244C84
ov18_02244C84: ; 0x02244C84
	cmp r0, #1
	bne _02244CB0
	ldr r3, _02244CD4 ; =0x04001000
	ldr r2, [r3, #0]
	ldr r0, [r3, #0]
	and ip, r2, #0x1f00
	bic r2, r0, #0x1f00
	orr r0, r1, ip, lsr #8
	orr r0, r2, r0, lsl #8
	str r0, [r3, #0]
	bx lr
_02244CB0:
	mov r3, #0x4000000
	ldr r2, [r3, #0]
	ldr r0, [r3, #0]
	and ip, r2, #0x1f00
	bic r2, r0, #0x1f00
	orr r0, r1, ip, lsr #8
	orr r0, r2, r0, lsl #8
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_02244CD4: .word 0x04001000
	arm_func_end ov18_02244C84

	arm_func_start ov18_02244CD8
ov18_02244CD8: ; 0x02244CD8
	cmp r0, #1
	bne _02244D08
	ldr r3, _02244D30 ; =0x04001000
	mvn r0, r1
	ldr r2, [r3, #0]
	ldr r1, [r3, #0]
	and r2, r2, #0x1f00
	bic r1, r1, #0x1f00
	and r0, r0, r2, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r3, #0]
	bx lr
_02244D08:
	mov r3, #0x4000000
	ldr r0, [r3, #0]
	ldr r2, [r3, #0]
	and ip, r0, #0x1f00
	mvn r0, r1
	bic r1, r2, #0x1f00
	and r0, r0, ip, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_02244D30: .word 0x04001000
	arm_func_end ov18_02244CD8

	arm_func_start ov18_02244D34
ov18_02244D34: ; 0x02244D34
	cmp r0, #1
	bne _02244DBC
	cmp r1, #0
	ldrh r0, [r2]
	ldrh r3, [r2, #2]
	bne _02244D84
	ldrh r1, [r2, #4]
	ldrh ip, [r2, #6]
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _02244E3C ; =0x04001040
	and r1, r0, #0xff00
	and r0, ip, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_02244D84:
	ldrh r1, [r2, #4]
	ldrh ip, [r2, #6]
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _02244E40 ; =0x04001042
	and r1, r0, #0xff00
	and r0, ip, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_02244DBC:
	cmp r1, #0
	ldrh r0, [r2]
	ldrh r3, [r2, #2]
	bne _02244E04
	ldrh r1, [r2, #4]
	ldrh ip, [r2, #6]
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _02244E44 ; =0x04000040
	and r1, r0, #0xff00
	and r0, ip, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_02244E04:
	ldrh r1, [r2, #4]
	ldrh ip, [r2, #6]
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _02244E48 ; =0x04000042
	and r1, r0, #0xff00
	and r0, ip, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
	; .align 2, 0
_02244E3C: .word 0x04001040
_02244E40: .word 0x04001042
_02244E44: .word 0x04000040
_02244E48: .word 0x04000042
	arm_func_end ov18_02244D34

	arm_func_start ov18_02244E4C
ov18_02244E4C: ; 0x02244E4C
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	bx lr
_02244E58: ; jump table
	b _02244E68 ; case 0
	b _02244EB8 ; case 1
	b _02244F08 ; case 2
	b _02244F58 ; case 3
_02244E68:
	cmp r0, #1
	bne _02244E94
	ldr r0, _02244FA8 ; =0x04001048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _02244FA8 ; =0x04001048
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_02244E94:
	ldr r0, _02244FAC ; =0x04000048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _02244FAC ; =0x04000048
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_02244EB8:
	cmp r0, #1
	bne _02244EE4
	ldr r0, _02244FA8 ; =0x04001048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _02244FA8 ; =0x04001048
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_02244EE4:
	ldr r0, _02244FAC ; =0x04000048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _02244FAC ; =0x04000048
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_02244F08:
	cmp r0, #1
	bne _02244F34
	ldr r0, _02244FB0 ; =0x0400104A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _02244FB0 ; =0x0400104A
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_02244F34:
	ldr r0, _02244FB4 ; =0x0400004A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _02244FB4 ; =0x0400004A
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_02244F58:
	cmp r0, #1
	bne _02244F84
	ldr r0, _02244FB0 ; =0x0400104A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _02244FB0 ; =0x0400104A
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_02244F84:
	ldr r0, _02244FB4 ; =0x0400004A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _02244FB4 ; =0x0400004A
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
	; .align 2, 0
_02244FA8: .word 0x04001048
_02244FAC: .word 0x04000048
_02244FB0: .word 0x0400104A
_02244FB4: .word 0x0400004A
	arm_func_end ov18_02244E4C