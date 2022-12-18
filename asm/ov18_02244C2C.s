	.include "macros/function.inc"
	.include "include/ov18_02244C2C.inc"

	

	.text


	arm_func_start ov18_02244C2C
ov18_02244C2C: ; 0x02244C2C
	strh r0, [r2]
	strh r1, [r2, #2]
	bx lr
	arm_func_end ov18_02244C2C

	arm_func_start ov18_02244C38
ov18_02244C38: ; 0x02244C38
	ldr ip, [sp]
	strh r0, [ip]
	strh r1, [ip, #2]
	strh r2, [ip, #4]
	strh r3, [ip, #6]
	bx lr
	arm_func_end ov18_02244C38

	arm_func_start ov18_02244C50
ov18_02244C50: ; 0x02244C50
	ldrh r3, [r0]
	strh r3, [r2]
	ldrh r3, [r0, #2]
	strh r3, [r2, #2]
	ldrh ip, [r0]
	ldrh r3, [r1]
	add r3, ip, r3
	strh r3, [r2, #4]
	ldrh r3, [r0, #2]
	ldrh r0, [r1, #2]
	add r0, r3, r0
	strh r0, [r2, #6]
	bx lr
	arm_func_end ov18_02244C50

	.rodata


	.global Unk_ov18_02249734
Unk_ov18_02249734: ; 0x02249734
	.incbin "incbin/overlay18_rodata.bin", 0x3300, 0x8

