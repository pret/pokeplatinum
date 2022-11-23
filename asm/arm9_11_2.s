
	.include "macros/function.inc"
	.include "global.inc"

	.text

	arm_func_start sub_020BB470
sub_020BB470: ; 0x020BB470
	stmfd sp!, {r3, lr}
	ldr ip, [r0]
	smull lr, ip, r2, ip
	mov lr, lr, lsr #0xc
	orr lr, lr, ip, lsl #20
	str lr, [r1]
	ldr ip, [r0, #4]
	smull lr, ip, r2, ip
	mov r2, lr, lsr #0xc
	orr r2, r2, ip, lsl #20
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	smull ip, r2, r3, r2
	mov ip, ip, lsr #0xc
	orr ip, ip, r2, lsl #20
	str ip, [r1, #8]
	ldr r0, [r0, #0xc]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BB470

	arm_func_start sub_020BB4C8
sub_020BB4C8: ; 0x020BB4C8
	mov r2, #0x1000
	str r2, [r0, #0x20]
	mov r3, #0
	stmia r0!, {r2, r3}
	mov r1, #0
	stmia r0!, {r1, r3}
	stmia r0!, {r2, r3}
	stmia r0!, {r1, r3}
	bx lr
	arm_func_end sub_020BB4C8

	arm_func_start sub_020BB4EC
sub_020BB4EC: ; 0x020BB4EC
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0]
	ldr ip, [sp, #8]
	smull lr, r4, r2, r4
	mov lr, lr, lsr #0xc
	orr lr, lr, r4, lsl #20
	str lr, [r1]
	ldr r4, [r0, #4]
	smull lr, r4, r2, r4
	mov lr, lr, lsr #0xc
	orr lr, lr, r4, lsl #20
	str lr, [r1, #4]
	ldr lr, [r0, #8]
	smull r4, lr, r2, lr
	mov r2, r4, lsr #0xc
	orr r2, r2, lr, lsl #20
	str r2, [r1, #8]
	ldr r2, [r0, #0xc]
	smull lr, r2, r3, r2
	mov lr, lr, lsr #0xc
	orr lr, lr, r2, lsl #20
	str lr, [r1, #0xc]
	ldr r2, [r0, #0x10]
	smull lr, r2, r3, r2
	mov lr, lr, lsr #0xc
	orr lr, lr, r2, lsl #20
	str lr, [r1, #0x10]
	ldr r2, [r0, #0x14]
	smull lr, r2, r3, r2
	mov r3, lr, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [r1, #0x14]
	ldr r2, [r0, #0x18]
	smull r3, r2, ip, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [r1, #0x18]
	ldr r2, [r0, #0x1c]
	smull r3, r2, ip, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [r1, #0x1c]
	ldr r0, [r0, #0x20]
	smull r2, r0, ip, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [r1, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BB4EC
