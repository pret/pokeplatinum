	.include "macros/function.inc"
	.include "include/unk_020C1274.inc"

	

	.text


	arm_func_start sub_020C1274
sub_020C1274: ; 0x020C1274
	ldmia r0!, {r2, r3, ip}
	stmia r1, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1, {r2, r3, ip}
	bx lr
	arm_func_end sub_020C1274

	arm_func_start sub_020C1298
sub_020C1298: ; 0x020C1298
	stmfd sp!, {r4, r5, r6, r7, r8}
	ldmia r0!, {r2, r3, r4, r5, r6, r7, r8, ip}
	stmia r1, {r2, r3, r4, r5, r6, r7, r8, ip}
	ldmia r0!, {r2, r3, r4, r5, r6, r7, r8, ip}
	stmia r1, {r2, r3, r4, r5, r6, r7, r8, ip}
	ldmia sp!, {r4, r5, r6, r7, r8}
	bx lr
	arm_func_end sub_020C1298