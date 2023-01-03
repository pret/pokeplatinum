	.include "macros/function.inc"
	.include "include/unk_020C41D8.inc"

	.extern Unk_021CCFBC

	.text


	arm_func_start OS_GetLowEntropyData
OS_GetLowEntropyData: ; 0x020C41D8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020C4298 ; =0x04000006
	mov r5, r0
	ldrh r6, [r1]
	ldr r4, _020C429C ; =0x027FFC00
	bl OS_GetTickLo
	orr r0, r0, r6, lsl #16
	str r0, [r5, #0]
	ldr r1, _020C42A0 ; =0x021CCFBC
	ldrh ip, [r4, #0xf8]
	ldr r3, [r1, #0]
	ldr r2, [r1, #4]
	mov r0, r4
	eor r2, r3, ip, lsl #16
	str r2, [r5, #4]
	ldr r2, [r1, #0]
	ldr r3, [r0, #0x3c]
	ldr r2, [r1, #4]
	ldr r1, [r4, #0xf4]
	ldr ip, _020C42A4 ; =0x04000600
	eor r1, r2, r1
	eor r2, r3, r1
	str r2, [r5, #8]
	ldr r1, [ip]
	eor r1, r2, r1
	str r1, [r5, #8]
	ldr r2, [r0, #0x1e8]
	add r1, r0, #0x300
	str r2, [r5, #0xc]
	ldr r3, [r0, #0x1ec]
	sub r2, ip, #0x4d0
	str r3, [r5, #0x10]
	ldr r3, [r0, #0x390]
	ldrh r4, [r1, #0x94]
	add r0, r0, #0x3a8
	eor r3, r3, r4, lsl #16
	str r3, [r5, #0x14]
	ldrh r4, [r1, #0xaa]
	ldrh r3, [r1, #0xac]
	orr r3, r3, r4, lsl #16
	str r3, [r5, #0x18]
	ldrh r2, [r2]
	ldrh r0, [r0]
	ldrh r1, [r1, #0x98]
	orr r0, r2, r0
	orr r0, r0, r1, lsl #16
	str r0, [r5, #0x1c]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C4298: .word 0x04000006
_020C429C: .word 0x027FFC00
_020C42A0: .word Unk_021CCFBC
_020C42A4: .word 0x04000600
	arm_func_end OS_GetLowEntropyData