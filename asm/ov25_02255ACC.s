	.include "macros/function.inc"
	.include "include/ov25_02255ACC.inc"

	

	.text


	thumb_func_start ov25_02255ACC
ov25_02255ACC: ; 0x02255ACC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r5, [sp, #0x20]
	bne _02255AE0
	bl sub_02022974
_02255AE0:
	add r0, r5, #0
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	beq _02255B2E
	ldr r0, [sp]
	str r5, [r4, #8]
	str r0, [r4, #4]
	str r6, [r4, #0]
	mov r1, #0xe
	ldr r0, [sp, #4]
	str r7, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r5, #0
	mul r1, r7
	bl sub_02018144
	str r0, [r4, #0x14]
	cmp r0, #0
	beq _02255B24
	mov r6, #0
	cmp r7, #0
	bls _02255B2E
	add r5, r6, #0
_02255B12:
	ldr r0, [r4, #0x14]
	add r0, r0, r5
	bl ov25_02255C80
	add r6, r6, #1
	add r5, #0xe
	cmp r6, r7
	blo _02255B12
	b _02255B2E
_02255B24:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02018238
	mov r4, #0
_02255B2E:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_02255ACC

	thumb_func_start ov25_02255B34
ov25_02255B34: ; 0x02255B34
	push {r4, lr}
	add r4, r0, #0
	bne _02255B3E
	bl sub_02022974
_02255B3E:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x14]
	bl sub_02018238
	ldr r0, [r4, #8]
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	thumb_func_end ov25_02255B34

	thumb_func_start ov25_02255B50
ov25_02255B50: ; 0x02255B50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0202278C
	str r0, [sp, #4]
	cmp r0, #0
	beq _02255BA8
	bl sub_02022798
	ldr r1, [r5, #0xc]
	mov r7, #0
	str r0, [sp]
	cmp r1, #0
	bls _02255BCE
	add r4, r7, #0
	add r6, r7, #0
_02255B72:
	ldr r0, [r5, #0x14]
	add r1, r0, r4
	ldrb r0, [r1, #1]
	strb r0, [r1, #2]
	ldr r0, [r5, #0x14]
	add r0, r0, r4
	ldrb r0, [r0, #1]
	cmp r0, #0
	ldr r0, [r5, #0]
	beq _02255B8E
	add r0, r0, r6
	bl sub_02022734
	b _02255B94
_02255B8E:
	add r0, r0, r6
	bl sub_02022760
_02255B94:
	ldr r1, [r5, #0x14]
	add r7, r7, #1
	add r1, r1, r4
	strb r0, [r1, #1]
	ldr r1, [r5, #0xc]
	add r4, #0xe
	add r6, r6, #4
	cmp r7, r1
	blo _02255B72
	b _02255BCE
_02255BA8:
	ldr r1, [r5, #0xc]
	mov r2, #0
	str r2, [sp]
	cmp r1, #0
	bls _02255BCE
	add r0, r2, #0
	add r3, r2, #0
_02255BB6:
	ldr r1, [r5, #0x14]
	add r2, r2, #1
	add r4, r1, r0
	ldrb r1, [r4, #1]
	strb r1, [r4, #2]
	ldr r1, [r5, #0x14]
	add r1, r1, r0
	strb r3, [r1, #1]
	ldr r1, [r5, #0xc]
	add r0, #0xe
	cmp r2, r1
	blo _02255BB6
_02255BCE:
	mov r6, #0
	cmp r1, #0
	bls _02255C14
	ldr r7, _02255C44 ; =0x0225607C
	add r4, r6, #0
_02255BD8:
	ldr r3, [r5, #0x14]
	ldr r1, [sp, #4]
	add r0, r3, r4
	ldrb r3, [r3, r4]
	ldr r2, [sp]
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	blx r3
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	add r0, r0, r4
	ldrb r2, [r0, #1]
	ldrb r0, [r0, #2]
	cmp r2, r0
	bne _02255BF8
	mov r2, #2
_02255BF8:
	cmp r1, #0
	bne _02255C00
	cmp r2, #2
	beq _02255C0A
_02255C00:
	ldr r3, [r5, #0x10]
	ldr r4, [r5, #4]
	add r0, r6, #0
	blx r4
	b _02255C14
_02255C0A:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0xe
	cmp r6, r0
	blo _02255BD8
_02255C14:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	cmp r6, r0
	bhs _02255C3E
	mov r0, #0xe
	add r4, r6, #0
	ldr r7, _02255C44 ; =0x0225607C
	mul r4, r0
_02255C24:
	ldr r3, [r5, #0x14]
	ldr r1, [sp, #4]
	add r0, r3, r4
	ldrb r3, [r3, r4]
	ldr r2, [sp]
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	blx r3
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0xe
	cmp r6, r0
	blo _02255C24
_02255C3E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02255C44: .word 0x0225607C
	thumb_func_end ov25_02255B50

	thumb_func_start ov25_02255C48
ov25_02255C48: ; 0x02255C48
	push {r3, r4}
	ldr r4, [r0, #0x14]
	mov r0, #0xe
	mul r0, r1
	add r1, r4, r0
	lsl r0, r2, #1
	add r0, r1, r0
	strh r3, [r0, #8]
	pop {r3, r4}
	bx lr
	thumb_func_end ov25_02255C48

	thumb_func_start ov25_02255C5C
ov25_02255C5C: ; 0x02255C5C
	ldr r3, [r0, #0x14]
	mov r0, #0xe
	mul r0, r1
	add r0, r3, r0
	strh r2, [r0, #0xc]
	bx lr
	thumb_func_end ov25_02255C5C

	thumb_func_start ov25_02255C68
ov25_02255C68: ; 0x02255C68
	add r3, r1, #0
	mov r2, #0xe
	mul r3, r2
	ldr r1, [r0, #0x14]
	mov r2, #0
	add r1, r1, r3
	strh r2, [r1, #4]
	ldr r0, [r0, #0x14]
	mov r1, #4
	strb r1, [r0, r3]
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255C68

	thumb_func_start ov25_02255C80
ov25_02255C80: ; 0x02255C80
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	add r3, r0, #0
	add r1, r2, #0
_02255C90:
	add r2, r2, #1
	strh r1, [r3, #8]
	add r3, r3, #2
	cmp r2, #2
	blo _02255C90
	strh r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255C80

	thumb_func_start ov25_02255CA0
ov25_02255CA0: ; 0x02255CA0
	strb r1, [r0]
	mov r1, #0
	strh r1, [r0, #4]
	bx lr
	thumb_func_end ov25_02255CA0

	thumb_func_start ov25_02255CA8
ov25_02255CA8: ; 0x02255CA8
	strb r1, [r0]
	bx lr
	thumb_func_end ov25_02255CA8

	thumb_func_start ov25_02255CAC
ov25_02255CAC: ; 0x02255CAC
	ldrh r2, [r0, #4]
	ldr r1, _02255CBC ; =0x0000FFFF
	cmp r2, r1
	bhs _02255CB8
	add r1, r2, #1
	strh r1, [r0, #4]
_02255CB8:
	bx lr
	nop
_02255CBC: .word 0x0000FFFF
	thumb_func_end ov25_02255CAC

	thumb_func_start ov25_02255CC0
ov25_02255CC0: ; 0x02255CC0
	ldrh r3, [r0, #4]
	mov r2, #0
_02255CC4:
	ldrh r1, [r0, #8]
	cmp r3, r1
	bne _02255CCE
	add r0, r2, #5
	bx lr
_02255CCE:
	add r2, r2, #1
	add r0, r0, #2
	cmp r2, #2
	blo _02255CC4
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov25_02255CC0

	thumb_func_start ov25_02255CDC
ov25_02255CDC: ; 0x02255CDC
	push {r3, lr}
	ldrb r1, [r0, #1]
	cmp r1, #0
	beq _02255CF2
	cmp r2, #0
	beq _02255CF2
	mov r1, #1
	bl ov25_02255CA0
	mov r0, #1
	pop {r3, pc}
_02255CF2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov25_02255CDC

	thumb_func_start ov25_02255CF8
ov25_02255CF8: ; 0x02255CF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov25_02255CAC
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _02255D26
	add r0, r5, #0
	bl ov25_02255CC0
	cmp r0, #0
	bne _02255D54
	ldrh r1, [r5, #0xc]
	cmp r1, #0
	beq _02255D52
	ldrh r0, [r5, #4]
	cmp r0, r1
	blo _02255D52
	mov r0, #0
	strh r0, [r5, #4]
	mov r0, #7
	pop {r3, r4, r5, pc}
_02255D26:
	cmp r4, #0
	beq _02255D36
	add r0, r5, #0
	mov r1, #0
	bl ov25_02255CA0
	mov r0, #2
	pop {r3, r4, r5, pc}
_02255D36:
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _02255D46
	add r0, r5, #0
	mov r1, #2
	bl ov25_02255CA8
	b _02255D52
_02255D46:
	add r0, r5, #0
	mov r1, #0
	bl ov25_02255CA0
	mov r0, #3
	pop {r3, r4, r5, pc}
_02255D52:
	mov r0, #0
_02255D54:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov25_02255CF8

	thumb_func_start ov25_02255D58
ov25_02255D58: ; 0x02255D58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov25_02255CAC
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	cmp r1, r0
	bls _02255D76
	add r0, r5, #0
	mov r1, #0
	bl ov25_02255CA0
	mov r0, #3
	pop {r3, r4, r5, pc}
_02255D76:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _02255D8C
	cmp r4, #0
	beq _02255D8C
	add r0, r5, #0
	mov r1, #3
	bl ov25_02255CA0
	mov r0, #4
	pop {r3, r4, r5, pc}
_02255D8C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02255D58

	thumb_func_start ov25_02255D90
ov25_02255D90: ; 0x02255D90
	push {r3, lr}
	ldrb r1, [r0, #1]
	cmp r1, #0
	beq _02255D9E
	bl ov25_02255CAC
	b _02255DA4
_02255D9E:
	mov r1, #0
	bl ov25_02255CA0
_02255DA4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov25_02255D90

	thumb_func_start ov25_02255DA8
ov25_02255DA8: ; 0x02255DA8
	push {r3, lr}
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _02255DB6
	mov r1, #0
	bl ov25_02255CA0
_02255DB6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov25_02255DA8

	.rodata


	.global Unk_ov25_0225607C
Unk_ov25_0225607C: ; 0x0225607C
	.incbin "incbin/overlay25_rodata.bin", 0x21C, 0x14

