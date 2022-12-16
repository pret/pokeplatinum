	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov13_02227A4C
ov13_02227A4C: ; 0x02227A4C
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #0]
	ldrh r1, [r3, #0x20]
	cmp r1, #0
	bne _02227A5C
	mov r0, #0
	pop {r4, pc}
_02227A5C:
	ldr r0, [r3, #8]
	ldr r3, [r3, #0xc]
	mov r2, #1
	bl sub_0207D688
	cmp r0, #0
	bne _02227A76
	ldr r1, [r4, #0]
	mov r0, #0
	strh r0, [r1, #0x20]
	ldr r1, [r4, #0]
	strb r0, [r1, #0x1f]
	pop {r4, pc}
_02227A76:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02227A4C

	thumb_func_start ov13_02227A7C
ov13_02227A7C: ; 0x02227A7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02227AC4 ; =0x0000114D
	ldr r6, [r5, #0]
	ldrb r7, [r5, r0]
	mov r0, #0x90
	ldrh r2, [r6, #0x20]
	mul r0, r7
	mov r4, #0
	add r1, r5, r0
_02227A90:
	ldrh r0, [r1, #0x3c]
	cmp r2, r0
	bne _02227ABA
	add r0, r4, #0
	mov r1, #6
	bl sub_020E2178
	add r0, r6, r7
	add r0, #0x27
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #6
	bl sub_020E2178
	ldr r1, _02227AC4 ; =0x0000114D
	ldr r2, [r5, #0]
	ldrb r1, [r5, r1]
	add r1, r2, r1
	add r1, #0x2c
	strb r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
_02227ABA:
	add r4, r4, #1
	add r1, r1, #4
	cmp r4, #0x24
	blo _02227A90
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227AC4: .word 0x0000114D
	thumb_func_end ov13_02227A7C

	thumb_func_start ov13_02227AC8
ov13_02227AC8: ; 0x02227AC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #4]
_02227AD2:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
_02227ADE:
	ldr r0, [r4, #0]
	ldr r2, [sp]
	ldr r0, [r0, #8]
	lsl r2, r2, #0x10
	ldr r1, [sp, #8]
	lsr r2, r2, #0x10
	bl sub_0207D910
	add r5, r0, #0
	beq _02227B50
	ldrh r0, [r5]
	cmp r0, #0
	beq _02227B48
	ldrh r1, [r5, #2]
	cmp r1, #0
	beq _02227B48
	ldr r2, [r4, #0]
	mov r1, #0xd
	ldr r2, [r2, #0xc]
	bl sub_0207CFF0
	add r7, r0, #0
	ldr r1, _02227B9C ; =0x02229BB0
	mov r0, #0
_02227B0E:
	mov r2, #1
	lsl r2, r0
	tst r2, r7
	beq _02227B40
	ldrb r2, [r1]
	mov r3, #0x90
	add r6, r2, #0
	mul r6, r3
	add r3, r4, r2
	ldr r2, _02227BA0 ; =0x0000114F
	ldrb r2, [r3, r2]
	add r3, r4, r6
	lsl r2, r2, #2
	add r2, r2, r3
	ldrh r3, [r5]
	strh r3, [r2, #0x3c]
	ldrh r3, [r5, #2]
	strh r3, [r2, #0x3e]
	ldrb r2, [r1]
	add r6, r4, r2
	ldr r2, _02227BA0 ; =0x0000114F
	ldrb r2, [r6, r2]
	add r3, r2, #1
	ldr r2, _02227BA0 ; =0x0000114F
	strb r3, [r6, r2]
_02227B40:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #5
	blo _02227B0E
_02227B48:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	b _02227ADE
_02227B50:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	blo _02227AD2
	mov r5, #0
	add r7, r5, #0
_02227B5E:
	ldr r0, _02227BA0 ; =0x0000114F
	add r6, r4, r5
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _02227B6E
	ldr r0, _02227BA4 ; =0x00001154
	strb r7, [r6, r0]
	b _02227B7A
_02227B6E:
	sub r0, r0, #1
	mov r1, #6
	bl sub_020E1F6C
	ldr r1, _02227BA4 ; =0x00001154
	strb r0, [r6, r1]
_02227B7A:
	ldr r1, [r4, #0]
	ldr r0, _02227BA4 ; =0x00001154
	add r2, r1, r5
	add r2, #0x2c
	ldrb r0, [r6, r0]
	ldrb r2, [r2]
	cmp r0, r2
	bhs _02227B90
	add r1, r1, r5
	add r1, #0x2c
	strb r0, [r1]
_02227B90:
	add r5, r5, #1
	cmp r5, #5
	blo _02227B5E
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02227B9C: .word 0x02229BB0
_02227BA0: .word 0x0000114F
_02227BA4: .word 0x00001154
	thumb_func_end ov13_02227AC8

	thumb_func_start ov13_02227BA8
ov13_02227BA8: ; 0x02227BA8
	push {r3, r4}
	ldr r2, _02227BD8 ; =0x0000114D
	ldr r3, [r0, #0]
	ldrb r2, [r0, r2]
	add r3, r3, r2
	add r3, #0x2c
	ldrb r4, [r3]
	mov r3, #6
	mul r3, r4
	add r1, r1, r3
	lsl r3, r1, #2
	mov r1, #0x90
	mul r1, r2
	add r0, r0, r1
	add r1, r0, r3
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02227BD2
	ldrh r1, [r1, #0x3e]
	cmp r1, #0
	bne _02227BD4
_02227BD2:
	mov r0, #0
_02227BD4:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02227BD8: .word 0x0000114D
	thumb_func_end ov13_02227BA8

	.rodata


	.global Unk_ov13_02229BB0
Unk_ov13_02229BB0: ; 0x02229BB0
	.incbin "incbin/overlay13_rodata.bin", 0xEB4, 0x5

