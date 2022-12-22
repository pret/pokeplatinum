	.include "macros/function.inc"
	.include "include/ov18_0221F800.inc"

	

	.text


	thumb_func_start ov18_0221F800
ov18_0221F800: ; 0x0221F800
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02033478
	bl OS_InitTick
	bl OS_InitAlarm
	bl OS_DisableInterrupts
	add r5, r0, #0
	mov r0, #2
	bl ov4_021D792C
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x12
	bl sub_02018144
	add r4, r0, #0
	mov r1, #1
	mov r2, #0
	blx ov18_0222F20C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl OS_RestoreInterrupts
	ldr r1, _0221F848 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	pop {r3, r4, r5, pc}
	nop
_0221F848: .word 0x04000208
	thumb_func_end ov18_0221F800