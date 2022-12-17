	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov97_0223635C
ov97_0223635C: ; 0x0223635C
	push {r3, lr}
	bl ov97_02236350
	ldrb r2, [r0, #0xb]
	ldrb r1, [r0, #0xa]
	lsl r3, r2, #8
	ldrb r2, [r0, #0xd]
	ldrb r0, [r0, #0xc]
	lsl r2, r2, #0x18
	lsl r0, r0, #0x10
	orr r0, r2
	orr r0, r3
	orr r0, r1
	pop {r3, pc}
	thumb_func_end ov97_0223635C

	thumb_func_start ov97_02236378
ov97_02236378: ; 0x02236378
	ldr r3, _0223637C ; =ov97_02236350
	bx r3
	; .align 2, 0
_0223637C: .word ov97_02236350
	thumb_func_end ov97_02236378