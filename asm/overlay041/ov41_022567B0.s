	.include "macros/function.inc"
	.include "overlay041/ov41_022567B0.inc"

	

	.text


	thumb_func_start ov41_022567B0
ov41_022567B0: ; 0x022567B0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x70
	bl sub_02018144
	add r4, r0, #0
	beq _022567F4
	add r0, #8
	mov r1, #4
	bl ov25_02255090
	str r5, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x20]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x68
	strh r1, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov41_0225680C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022567F4
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_022567F4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_022567B0

	thumb_func_start ov41_022567F8
ov41_022567F8: ; 0x022567F8
	push {r4, lr}
	add r4, r0, #0
	beq _02256808
	bl ov41_02256864
	add r0, r4, #0
	bl sub_020181C4
_02256808:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov41_022567F8

	thumb_func_start ov41_0225680C
ov41_0225680C: ; 0x0225680C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r7, r0, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x59
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x34
	mov r1, #0xc
	mov r2, #0x57
	mov r3, #0x58
	bl ov25_02255958
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, #0x34
	ldr r4, _02256860 ; =0x02256DC0
	mov r6, #0
	add r5, r7, #0
	str r0, [sp, #0xc]
_02256846:
	ldr r0, [r7, #0x20]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	bl ov25_02255810
	str r0, [r5, #0x24]
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #4
	blt _02256846
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256860: .word 0x02256DC0
	thumb_func_end ov41_0225680C

	thumb_func_start ov41_02256864
ov41_02256864: ; 0x02256864
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0225686C:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _02256878
	ldr r0, [r6, #0x20]
	bl ov25_022558B0
_02256878:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225686C
	add r6, #0x34
	add r0, r6, #0
	bl ov25_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov41_02256864

	thumb_func_start ov41_0225688C
ov41_0225688C: ; 0x0225688C
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022568AC ; =0x02256E00
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022568AC: .word 0x02256E00
	thumb_func_end ov41_0225688C

	thumb_func_start ov41_022568B0
ov41_022568B0: ; 0x022568B0
	ldr r3, _022568B8 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022568B8: .word ov25_02255130
	thumb_func_end ov41_022568B0

	thumb_func_start ov41_022568BC
ov41_022568BC: ; 0x022568BC
	ldr r3, _022568C4 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022568C4: .word ov25_02255154
	thumb_func_end ov41_022568BC

	thumb_func_start ov41_022568C8
ov41_022568C8: ; 0x022568C8
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov41_022568C8

	thumb_func_start ov41_022568DC
ov41_022568DC: ; 0x022568DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	mov r0, #8
	add r5, r1, #0
	bl sub_0201833C
	cmp r0, #0
	bne _022568F0
	bl GF_AssertFail
_022568F0:
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _022569AC ; =0x02256D88
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #4]
	ldr r2, _022569B0 ; =0x02256DA4
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _0225691E
	bl GF_AssertFail
_0225691E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0xc
	mov r1, #0x56
	mov r3, #6
	bl sub_02006E3C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0xc
	mov r1, #0x55
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _0225696A
	bl GF_AssertFail
_0225696A:
	add r0, r4, #0
	lsr r1, r6, #5
	bl ov41_022569BC
	ldr r0, [r4, #4]
	mov r1, #7
	bl sub_02019448
	ldr r1, _022569B4 ; =0x04001000
	ldr r0, _022569B8 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #0x14
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r5, #0
	bl ov41_022568C8
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _022569A8
	bl GF_AssertFail
_022569A8:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022569AC: .word 0x02256D88
_022569B0: .word 0x02256DA4
_022569B4: .word 0x04001000
_022569B8: .word 0xFFFFE0FF
	thumb_func_end ov41_022568DC

	thumb_func_start ov41_022569BC
ov41_022569BC: ; 0x022569BC
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _02256A18 ; =0x02256D80
	add r4, r0, #0
	ldrh r5, [r3]
	add r0, sp, #0
	add r2, sp, #0
	strh r5, [r0]
	ldrh r5, [r3, #2]
	strh r5, [r0, #2]
	ldrh r5, [r3, #4]
	ldrh r3, [r3, #6]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	str r1, [r4, #0x58]
	strh r1, [r0, #6]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	bl sub_0201A8D4
	ldr r0, [r4, #0]
	mov r2, #0xbe
	ldr r0, [r0, #8]
	ldr r1, [r4, #0x54]
	lsl r2, r2, #6
	bl sub_02099DD0
	cmp r0, #0
	bne _02256A02
	add r0, r4, #0
	add r0, #0x48
	mov r1, #4
	bl sub_0201ADA4
_02256A02:
	add r0, r4, #0
	add r0, #0x48
	bl sub_0201A9F4
	add r4, #0x48
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02256A18: .word 0x02256D80
	thumb_func_end ov41_022569BC

	thumb_func_start ov41_02256A1C
ov41_02256A1C: ; 0x02256A1C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256A38
	cmp r0, #1
	beq _02256A44
	pop {r3, r4, r5, pc}
_02256A38:
	mov r0, #1
	str r0, [r4, #0x5c]
	add r0, r5, #0
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_02256A44:
	ldr r0, [r4, #0]
	mov r2, #0xbe
	ldr r0, [r0, #8]
	ldr r1, [r4, #0x54]
	lsl r2, r2, #6
	bl sub_02099DA8
	add r0, r4, #0
	add r0, #0x48
	bl sub_0201A8FC
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #7
	bl sub_02019044
	add r0, r5, #0
	bl ov41_022568C8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov41_02256A1C

	thumb_func_start ov41_02256A74
ov41_02256A74: ; 0x02256A74
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r0, #0x48
	bl sub_0201ACCC
	add r0, r4, #0
	bl ov41_022568C8
	pop {r4, pc}
	thumb_func_end ov41_02256A74

	thumb_func_start ov41_02256A8C
ov41_02256A8C: ; 0x02256A8C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, [r1, #0]
	lsl r2, r0, #1
	ldr r0, [r1, #4]
	mov r1, #0x14
	lsl r3, r0, #1
	asr r5, r3, #3
	asr r0, r2, #3
	mul r1, r5
	add r5, r0, r1
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x48
	mov r1, #1
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE78
	ldr r1, [r4, #0x54]
	lsl r0, r5, #5
	add r0, r1, r0
	ldr r1, [r4, #0x58]
	mov r2, #0x20
	add r1, r1, r5
	lsl r1, r1, #5
	bl GXS_LoadBG3Char
	add r0, r6, #0
	bl ov41_022568C8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov41_02256A8C

	thumb_func_start ov41_02256AE4
ov41_02256AE4: ; 0x02256AE4
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r0, #0x48
	bl sub_0201ACCC
	add r0, r4, #0
	bl ov41_022568C8
	pop {r4, pc}
	thumb_func_end ov41_02256AE4

	thumb_func_start ov41_02256AFC
ov41_02256AFC: ; 0x02256AFC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r6, #0
	bl ov25_02255240
	add r5, r0, #0
	ldr r0, _02256B54 ; =0x00005B74
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256B1C
	mov r1, #2
	b _02256B1E
_02256B1C:
	mov r1, #1
_02256B1E:
	ldr r0, [r4, #0x28]
	bl ov25_022558C4
	ldr r0, _02256B58 ; =0x00005B75
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256B30
	mov r1, #4
	b _02256B32
_02256B30:
	mov r1, #3
_02256B32:
	ldr r0, [r4, #0x2c]
	bl ov25_022558C4
	ldr r0, _02256B5C ; =0x00005B76
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256B44
	mov r1, #6
	b _02256B46
_02256B44:
	mov r1, #5
_02256B46:
	ldr r0, [r4, #0x30]
	bl ov25_022558C4
	add r0, r6, #0
	bl ov41_022568C8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256B54: .word 0x00005B74
_02256B58: .word 0x00005B75
_02256B5C: .word 0x00005B76
	thumb_func_end ov41_02256AFC

	thumb_func_start ov41_02256B60
ov41_02256B60: ; 0x02256B60
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r0, r4, #0
	add r0, #0x48
	mov r1, #4
	bl sub_0201ADA4
	add r4, #0x48
	add r0, r4, #0
	bl sub_0201ACCC
	add r0, r5, #0
	bl ov41_022568C8
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02256B60

	thumb_func_start ov41_02256B8C
ov41_02256B8C: ; 0x02256B8C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256BB6
	ldr r1, [r4, #0x5c]
	cmp r1, #0
	beq _02256BB6
	add r0, r5, #0
	bl ov41_022568C8
	pop {r3, r4, r5, pc}
_02256BB6:
	cmp r0, #4
	bls _02256BBC
	b _02256D1A
_02256BBC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02256BC8: ; jump table
	.short _02256BD2 - _02256BC8 - 2 ; case 0
	.short _02256C06 - _02256BC8 - 2 ; case 1
	.short _02256C58 - _02256BC8 - 2 ; case 2
	.short _02256CA2 - _02256BC8 - 2 ; case 3
	.short _02256CD6 - _02256BC8 - 2 ; case 4
_02256BD2:
	add r0, r4, #0
	add r0, #0x68
	ldrh r0, [r0]
	mov r1, #0x15
	lsl r1, r1, #4
	add r2, r0, r1
	add r0, r4, #0
	add r0, #0x68
	strh r2, [r0]
	add r0, r4, #0
	add r0, #0x6a
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl ov25_02255950
	mov r0, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x60]
	str r0, [r4, #0x5c]
	add r0, r5, #0
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_02256C06:
	add r0, r4, #0
	add r0, #0x68
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x68
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl ov25_02255950
	add r0, r4, #0
	add r0, #0x6a
	ldrh r1, [r0]
	mov r0, #0x15
	lsl r0, r0, #4
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x6a
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	mov r1, #3
	ldrh r0, [r0]
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _02256D1A
	add r0, r4, #0
	add r0, #0x6a
	strh r1, [r0]
	mov r0, #1
	str r0, [r4, #0x64]
	add r0, r5, #0
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_02256C58:
	add r0, r4, #0
	add r0, #0x68
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x68
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl ov25_02255950
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _02256D1A
	bl sub_0201D35C
	mov r1, #7
	and r0, r1
	str r0, [r4, #0x6c]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r1, [r0]
	mov r0, #0x1a
	lsl r0, r0, #8
	cmp r1, r0
	bls _02256C9A
	add r4, #0x6a
	strh r0, [r4]
_02256C9A:
	add r0, r5, #0
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_02256CA2:
	add r0, r4, #0
	add r0, #0x68
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x68
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl ov25_02255950
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _02256CCE
	sub r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r3, r4, r5, pc}
_02256CCE:
	add r0, r5, #0
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_02256CD6:
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	cmp r0, #0x50
	bls _02256D0E
	add r0, r4, #0
	add r0, #0x6a
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	sub r1, #0x50
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r0, [r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x68
	strh r1, [r0]
	ldr r0, [r4, #0x24]
	add r4, #0x68
	ldrh r1, [r4]
	bl ov25_02255950
	pop {r3, r4, r5, pc}
_02256D0E:
	mov r0, #0
	add r4, #0x6a
	strh r0, [r4]
	add r0, r5, #0
	bl ov41_022568C8
_02256D1A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02256B8C

	thumb_func_start ov41_02256D1C
ov41_02256D1C: ; 0x02256D1C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256D3E
	cmp r0, #1
	beq _02256D4A
	pop {r3, r4, r5, pc}
_02256D3E:
	mov r0, #1
	str r0, [r4, #0x60]
	add r0, r5, #0
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_02256D4A:
	add r0, r4, #0
	mov r1, #7
	bl ov41_022568B0
	cmp r0, #0
	beq _02256D62
	ldr r0, _02256D64 ; =0x0000066A
	bl ov25_02254424
	add r0, r5, #0
	bl ov41_022568C8
_02256D62:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256D64: .word 0x0000066A
	thumb_func_end ov41_02256D1C

	.rodata


	.global Unk_ov41_02256D80
Unk_ov41_02256D80: ; 0x02256D80
	.incbin "incbin/overlay41_rodata.bin", 0x18, 0x20 - 0x18

	.global Unk_ov41_02256D88
Unk_ov41_02256D88: ; 0x02256D88
	.incbin "incbin/overlay41_rodata.bin", 0x20, 0x3C - 0x20

	.global Unk_ov41_02256DA4
Unk_ov41_02256DA4: ; 0x02256DA4
	.incbin "incbin/overlay41_rodata.bin", 0x3C, 0x58 - 0x3C

	.global Unk_ov41_02256DC0
Unk_ov41_02256DC0: ; 0x02256DC0
	.incbin "incbin/overlay41_rodata.bin", 0x58, 0x98 - 0x58

	.global Unk_ov41_02256E00
Unk_ov41_02256E00: ; 0x02256E00
	.incbin "incbin/overlay41_rodata.bin", 0x98, 0x78

