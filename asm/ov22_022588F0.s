	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov22_022588F0
ov22_022588F0: ; 0x022588F0
	add r3, r0, #0
	mov r2, #0x1c
	mov r1, #0
_022588F6:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _022588F6
	ldr r1, _02258908 ; =ov22_02258948
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
_02258908: .word ov22_02258948
	thumb_func_end ov22_022588F0

	thumb_func_start ov22_0225890C
ov22_0225890C: ; 0x0225890C
	push {r4, lr}
	ldr r1, _02258944 ; =0x021BF6BC
	add r4, r0, #0
	ldrh r2, [r1, #0x20]
	cmp r2, #0
	beq _0225891E
	ldr r1, [r4, #4]
	blx r1
	b _02258934
_0225891E:
	ldrh r1, [r1, #0x22]
	cmp r1, #0
	beq _0225892A
	ldr r1, [r4, #0xc]
	blx r1
	b _02258934
_0225892A:
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	beq _02258934
	ldr r1, [r4, #8]
	blx r1
_02258934:
	ldr r0, _02258944 ; =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	strh r1, [r4, #0x14]
	ldrh r1, [r0, #0x1e]
	strh r1, [r4, #0x16]
	ldrh r0, [r0, #0x22]
	strb r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
_02258944: .word 0x021BF6BC
	thumb_func_end ov22_0225890C

	thumb_func_start ov22_02258948
ov22_02258948: ; 0x02258948
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02258948