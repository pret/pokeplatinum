	.include "macros/function.inc"
	.include "include/ov105_02245CD0.inc"

	

	.text


	thumb_func_start ov105_02245CD0
ov105_02245CD0: ; 0x02245CD0
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _02245D38 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	strh r2, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _02245D3C ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02245D40 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _02245D44 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _02245D48 ; =0xBFFF0000
	ldr r0, _02245D4C ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_02245D38: .word 0x04000008
_02245D3C: .word 0xFFFFCFFD
_02245D40: .word 0x0000CFFB
_02245D44: .word 0x00007FFF
_02245D48: .word 0xBFFF0000
_02245D4C: .word 0x04000580
	thumb_func_end ov105_02245CD0

	thumb_func_start ov105_02245D50
ov105_02245D50: ; 0x02245D50
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	ldr r2, _02245D80 ; =0x04000440
	mov r3, #0
	add r1, r2, #0
	str r3, [r2, #0]
	add r1, #0x14
	str r3, [r1, #0]
	mov r0, #2
	str r0, [r2, #0]
	str r3, [r1, #0]
	bl NNS_G3dGlbFlushP
	bl NNS_G2dSetupSoftwareSpriteCamera
	add r0, r4, #0
	bl sub_02007768
	ldr r0, _02245D84 ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_02245D80: .word 0x04000440
_02245D84: .word 0x04000540
	thumb_func_end ov105_02245D50

	thumb_func_start ov105_02245D88
ov105_02245D88: ; 0x02245D88
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	add r0, sp, #0x10
	mov r2, #2
	add r6, r3, #0
	bl sub_02075EF4
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, sp, #0x10
	add r2, r6, #0
	bl sub_02007C34
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov105_02245D88

	thumb_func_start ov105_02245DB8
ov105_02245DB8: ; 0x02245DB8
	ldr r3, _02245DC0 ; =sub_02007DEC
	add r2, r1, #0
	mov r1, #0x23
	bx r3
	; .align 2, 0
_02245DC0: .word sub_02007DEC
	thumb_func_end ov105_02245DB8