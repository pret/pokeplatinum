	.include "macros/function.inc"
	.include "include/ov66_0223177C.inc"

	

	.text


	thumb_func_start ov66_0223177C
ov66_0223177C: ; 0x0223177C
	push {r3, r4, r5, lr}
	mov r1, #0x23
	lsl r1, r1, #4
	add r5, r0, #0
	bl sub_02018144
	mov r2, #0x23
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl memset
	add r0, r4, #0
	add r0, #8
	bl ov66_02231D38
	add r0, r4, #0
	add r0, #0x5c
	add r1, r5, #0
	bl ov66_02231E94
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0223177C

	thumb_func_start ov66_022317AC
ov66_022317AC: ; 0x022317AC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x5c
	bl ov66_02231EEC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_022317AC

	thumb_func_start ov66_022317C0
ov66_022317C0: ; 0x022317C0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x5c
	bl ov66_02231F1C
	add r4, #8
	add r0, r4, #0
	mov r1, #0
	bl ov66_02231DC0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_022317C0

	thumb_func_start ov66_022317D8
ov66_022317D8: ; 0x022317D8
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022317D8

	thumb_func_start ov66_022317E4
ov66_022317E4: ; 0x022317E4
	push {r3, lr}
	add r0, #8
	bl ov66_02231D74
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_022317E4

	thumb_func_start ov66_022317F0
ov66_022317F0: ; 0x022317F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #8
	add r4, r1, #0
	bl ov66_02231E30
	add r5, #8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_02231D90
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_022317F0

	thumb_func_start ov66_0223180C
ov66_0223180C: ; 0x0223180C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	mov r5, #0
	add r4, #8
	mov r6, #2
	mov r7, #2
_0223181E:
	add r0, r4, #0
	add r1, r5, #0
	bl ov66_02231E54
	add r2, r0, #0
	tst r0, r7
	beq _02231836
	add r0, r4, #0
	add r1, r5, #0
	bic r2, r6
	bl ov66_02231DA8
_02231836:
	add r5, r5, #1
	cmp r5, #0x14
	blt _0223181E
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r0, #8
	bl ov66_02231E54
	add r3, r0, #0
	ldr r0, [sp]
	mov r2, #2
	add r0, #8
	ldr r1, [sp, #4]
	orr r2, r3
	str r0, [sp]
	bl ov66_02231DA8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_0223180C

	thumb_func_start ov66_0223185C
ov66_0223185C: ; 0x0223185C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x5c
	mov r1, #8
	bl ov66_02231F68
	add r6, r0, #0
	beq _022318A8
	ldr r1, [r4, #0]
	str r1, [sp]
	ldr r1, [r4, #4]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r2, [r4, #8]
	add r3, r1, #0
	str r2, [sp, #0x10]
	ldrh r2, [r4, #0xa]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	mov r2, #0x96
	str r1, [sp, #0x1c]
	lsl r2, r2, #2
	str r2, [sp, #0x20]
	mov r2, #8
	str r2, [sp, #0x24]
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_022318A8:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov66_0223185C

	thumb_func_start ov66_022318AC
ov66_022318AC: ; 0x022318AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0x1b
	bhs _02231902
	add r0, r5, #0
	add r0, #0x5c
	mov r1, #7
	bl ov66_02231F68
	add r6, r0, #0
	beq _02231902
	ldr r1, [r4, #0]
	mov r2, #0
	str r1, [sp]
	ldr r1, [r4, #4]
	add r3, r2, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldrh r1, [r4, #8]
	str r1, [sp, #0x10]
	ldrh r1, [r4, #0xa]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	mov r1, #0x96
	str r2, [sp, #0x1c]
	lsl r1, r1, #2
	str r1, [sp, #0x20]
	mov r1, #7
	str r1, [sp, #0x24]
	mov r1, #1
	str r1, [sp, #0x28]
	ldr r1, [r4, #0xc]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_02231902:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_022318AC

	thumb_func_start ov66_02231908
ov66_02231908: ; 0x02231908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r1, #0
	ldr r4, [r5, #0]
	add r6, r0, #0
	cmp r4, #0
	beq _0223191E
	cmp r4, #1
	beq _0223191E
	cmp r4, #2
	bne _02231992
_0223191E:
	ldr r0, [r5, #0x20]
	cmp r0, #1
	ldr r0, [r5, #4]
	bne _02231932
	cmp r0, #2
	blo _02231992
	cmp r0, #4
	bls _0223193A
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_02231932:
	cmp r0, #1
	blo _02231992
	cmp r0, #4
	bhi _02231992
_0223193A:
	ldr r0, _02231998 ; =0x02258ACC
	lsl r1, r4, #2
	ldr r7, [r0, r1]
	add r0, r6, #0
	lsl r1, r7, #0x10
	add r0, #0x5c
	lsr r1, r1, #0x10
	bl ov66_02231F68
	str r0, [sp, #0x2c]
	cmp r0, #0
	beq _02231992
	ldr r1, [r5, #8]
	str r1, [sp]
	ldr r1, [r5, #0xc]
	str r1, [sp, #4]
	ldr r1, [r5, #0x10]
	str r1, [sp, #8]
	ldr r1, [r5, #0x14]
	str r1, [sp, #0xc]
	ldrh r1, [r5, #0x18]
	str r1, [sp, #0x10]
	ldrh r1, [r5, #0x1a]
	str r1, [sp, #0x14]
	ldrh r1, [r5, #0x1c]
	str r1, [sp, #0x18]
	ldrh r1, [r5, #0x1e]
	str r1, [sp, #0x1c]
	mov r1, #0xe1
	lsl r1, r1, #2
	str r1, [sp, #0x20]
	str r7, [sp, #0x24]
	mov r1, #2
	str r1, [sp, #0x28]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0x20]
	add r1, r4, #0
	bl ov66_02231FFC
	add r6, #0x5c
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	bl ov66_02231FC0
_02231992:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231998: .word 0x02258ACC
	thumb_func_end ov66_02231908

	thumb_func_start ov66_0223199C
ov66_0223199C: ; 0x0223199C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #3
	beq _022319AE
	cmp r1, #4
	bne _022319F6
_022319AE:
	add r1, r1, #5
	add r0, r5, #0
	lsl r1, r1, #0x10
	add r0, #0x5c
	lsr r1, r1, #0x10
	bl ov66_02231F68
	add r6, r0, #0
	beq _022319F6
	ldr r1, [r4, #0]
	ldr r2, [r4, #8]
	mov r3, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldrh r2, [r4, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r2, #0xe1
	str r3, [sp, #0x1c]
	lsl r2, r2, #2
	str r2, [sp, #0x20]
	add r2, r1, #5
	str r2, [sp, #0x24]
	mov r2, #3
	str r2, [sp, #0x28]
	ldr r2, [r4, #4]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_022319F6:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_0223199C

	thumb_func_start ov66_022319FC
ov66_022319FC: ; 0x022319FC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x5c
	mov r1, #0xc
	bl ov66_02231F68
	add r6, r0, #0
	beq _02231A50
	ldr r1, [r4, #4]
	mov r2, #0
	str r1, [sp]
	ldr r1, [r4, #8]
	add r3, r2, #0
	str r1, [sp, #4]
	ldr r1, [r4, #0xc]
	str r1, [sp, #8]
	ldr r1, [r4, #0x10]
	str r1, [sp, #0xc]
	ldrh r1, [r4, #0x14]
	str r1, [sp, #0x10]
	ldrh r1, [r4, #0x16]
	str r1, [sp, #0x14]
	ldrh r1, [r4, #0x18]
	str r1, [sp, #0x18]
	ldrh r1, [r4, #0x1a]
	str r1, [sp, #0x1c]
	ldr r1, _02231A54 ; =0x000001C2
	str r1, [sp, #0x20]
	mov r1, #0xc
	str r1, [sp, #0x24]
	mov r1, #4
	str r1, [sp, #0x28]
	ldr r1, [r4, #0]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_02231A50:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02231A54: .word 0x000001C2
	thumb_func_end ov66_022319FC

	thumb_func_start ov66_02231A58
ov66_02231A58: ; 0x02231A58
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x5c
	mov r1, #0xd
	bl ov66_02231F68
	add r6, r0, #0
	beq _02231AAC
	ldr r1, [r4, #4]
	mov r2, #0
	str r1, [sp]
	ldr r1, [r4, #8]
	add r3, r2, #0
	str r1, [sp, #4]
	ldr r1, [r4, #0xc]
	str r1, [sp, #8]
	ldr r1, [r4, #0x10]
	str r1, [sp, #0xc]
	ldrh r1, [r4, #0x14]
	str r1, [sp, #0x10]
	ldrh r1, [r4, #0x16]
	str r1, [sp, #0x14]
	ldrh r1, [r4, #0x18]
	str r1, [sp, #0x18]
	ldrh r1, [r4, #0x1a]
	str r1, [sp, #0x1c]
	ldr r1, _02231AB0 ; =0x000001C2
	str r1, [sp, #0x20]
	mov r1, #0xd
	str r1, [sp, #0x24]
	mov r1, #5
	str r1, [sp, #0x28]
	ldr r1, [r4, #0]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_02231AAC:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02231AB0: .word 0x000001C2
	thumb_func_end ov66_02231A58

	thumb_func_start ov66_02231AB4
ov66_02231AB4: ; 0x02231AB4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _02231B1E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02231ACE: ; jump table
	.short _02231ADC - _02231ACE - 2 ; case 0
	.short _02231ADC - _02231ACE - 2 ; case 1
	.short _02231ADC - _02231ACE - 2 ; case 2
	.short _02231AD8 - _02231ACE - 2 ; case 3
	.short _02231ADC - _02231ACE - 2 ; case 4
_02231AD8:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
_02231ADC:
	add r0, r5, #0
	add r0, #0x5c
	mov r1, #0xe
	bl ov66_02231F68
	add r6, r0, #0
	beq _02231B1E
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r1, #0xe1
	str r3, [sp, #0x1c]
	lsl r1, r1, #2
	str r1, [sp, #0x20]
	mov r1, #0xe
	str r1, [sp, #0x24]
	mov r1, #6
	str r1, [sp, #0x28]
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	ldr r1, [r1, #0]
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_02231B1E:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_02231AB4

	thumb_func_start ov66_02231B24
ov66_02231B24: ; 0x02231B24
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0x14
	bhs _02231B76
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _02231B76
	add r0, r5, #0
	add r0, #0x5c
	mov r1, #1
	bl ov66_02231F68
	add r6, r0, #0
	beq _02231B76
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r1, _02231B7C ; =0x00000708
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r1, #1
	str r1, [sp, #0x24]
	mov r1, #7
	str r1, [sp, #0x28]
	ldr r1, [r4, #0]
	add r3, r2, #0
	bl ov66_02231FFC
	add r5, #0x5c
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_02231FC0
_02231B76:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_02231B7C: .word 0x00000708
	thumb_func_end ov66_02231B24

	thumb_func_start ov66_02231B80
ov66_02231B80: ; 0x02231B80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02231B96
	cmp r0, #1
	beq _02231B96
	cmp r0, #2
	bne _02231BF6
_02231B96:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl ov66_022324D0
	cmp r0, #0
	beq _02231BF6
	ldr r7, [r4, #0]
	ldr r0, _02231BFC ; =0x02258AB8
	ldrb r6, [r0, r7]
	add r0, r5, #0
	add r0, #0x5c
	add r1, r6, #0
	bl ov66_02231F68
	str r0, [sp, #0x2c]
	cmp r0, #0
	beq _02231BF6
	ldr r1, [r4, #8]
	mov r3, #0
	str r1, [sp]
	ldr r1, [r4, #0xc]
	str r1, [sp, #4]
	ldr r1, [r4, #0x10]
	str r1, [sp, #8]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0xc]
	ldrh r1, [r4, #0x18]
	str r1, [sp, #0x10]
	ldrh r1, [r4, #0x1a]
	str r1, [sp, #0x14]
	ldrh r1, [r4, #0x1c]
	str r1, [sp, #0x18]
	ldrh r1, [r4, #0x1e]
	str r1, [sp, #0x1c]
	ldr r1, _02231C00 ; =0x000001C2
	str r1, [sp, #0x20]
	str r6, [sp, #0x24]
	mov r1, #8
	str r1, [sp, #0x28]
	ldr r2, [r4, #4]
	add r1, r7, #0
	bl ov66_02231FFC
	add r5, #0x5c
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl ov66_02231FC0
_02231BF6:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231BFC: .word 0x02258AB8
_02231C00: .word 0x000001C2
	thumb_func_end ov66_02231B80

	thumb_func_start ov66_02231C04
ov66_02231C04: ; 0x02231C04
	ldr r3, _02231C0C ; =ov66_02231F58
	add r0, #0x5c
	bx r3
	nop
_02231C0C: .word ov66_02231F58
	thumb_func_end ov66_02231C04

	thumb_func_start ov66_02231C10
ov66_02231C10: ; 0x02231C10
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov66_02231C10

	thumb_func_start ov66_02231C18
ov66_02231C18: ; 0x02231C18
	ldr r3, _02231C20 ; =ov66_02231DE8
	add r0, #8
	bx r3
	nop
_02231C20: .word ov66_02231DE8
	thumb_func_end ov66_02231C18

	thumb_func_start ov66_02231C24
ov66_02231C24: ; 0x02231C24
	ldr r3, _02231C2C ; =ov66_02231DFC
	add r0, #8
	bx r3
	nop
_02231C2C: .word ov66_02231DFC
	thumb_func_end ov66_02231C24

	thumb_func_start ov66_02231C30
ov66_02231C30: ; 0x02231C30
	ldr r3, _02231C38 ; =ov66_02231E10
	add r0, #8
	bx r3
	nop
_02231C38: .word ov66_02231E10
	thumb_func_end ov66_02231C30

	thumb_func_start ov66_02231C3C
ov66_02231C3C: ; 0x02231C3C
	ldr r3, _02231C44 ; =ov66_02231E30
	add r0, #8
	bx r3
	nop
_02231C44: .word ov66_02231E30
	thumb_func_end ov66_02231C3C

	thumb_func_start ov66_02231C48
ov66_02231C48: ; 0x02231C48
	ldr r3, _02231C50 ; =ov66_02231E74
	add r0, #8
	bx r3
	nop
_02231C50: .word ov66_02231E74
	thumb_func_end ov66_02231C48

	thumb_func_start ov66_02231C54
ov66_02231C54: ; 0x02231C54
	ldr r3, _02231C5C ; =ov66_02231E6C
	add r0, #8
	bx r3
	nop
_02231C5C: .word ov66_02231E6C
	thumb_func_end ov66_02231C54

	thumb_func_start ov66_02231C60
ov66_02231C60: ; 0x02231C60
	mov r1, #0x8a
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	sub r1, #0x2c
	add r0, r0, r1
	cmp r2, r0
	beq _02231C72
	mov r0, #1
	bx lr
_02231C72:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02231C60

	thumb_func_start ov66_02231C78
ov66_02231C78: ; 0x02231C78
	push {r4, lr}
	add r4, r0, #0
	bl ov66_02231C60
	cmp r0, #0
	bne _02231C88
	bl GF_AssertFail
_02231C88:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231C78

	thumb_func_start ov66_02231C94
ov66_02231C94: ; 0x02231C94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	str r1, [sp, #8]
	add r5, r3, #0
	bl ov66_02231C60
	cmp r0, #0
	bne _02231CAA
	bl GF_AssertFail
_02231CAA:
	mov r2, #0x8a
	lsl r2, r2, #2
	ldr r4, [r4, r2]
	ldr r3, [sp, #0x28]
	mov r0, #1
	mov r1, #0x1a
	add r2, #0x65
	bl sub_0200B144
	add r7, r0, #0
	ldr r0, [sp, #0x28]
	bl sub_0200B358
	ldrb r6, [r4]
	str r0, [sp, #0xc]
	cmp r6, #9
	bhs _02231CE6
	ldr r0, [sp, #0x28]
	str r5, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r4, _02231CFC ; =0x02258AFC
	lsl r5, r6, #2
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r4, [r4, r5]
	add r3, r7, #0
	blx r4
	add r4, r0, #0
	b _02231CE8
_02231CE6:
	mov r4, #0
_02231CE8:
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, [sp, #0xc]
	bl sub_0200B3F0
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231CFC: .word 0x02258AFC
	thumb_func_end ov66_02231C94

	thumb_func_start ov66_02231D00
ov66_02231D00: ; 0x02231D00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov66_02231C60
	cmp r0, #0
	bne _02231D12
	bl GF_AssertFail
_02231D12:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r2, [r0]
	cmp r2, #9
	bhs _02231D2A
	lsl r3, r2, #2
	ldr r2, _02231D34 ; =0x02258AD8
	add r1, r4, #0
	ldr r2, [r2, r3]
	blx r2
	pop {r3, r4, r5, pc}
_02231D2A:
	bl GF_AssertFail
	mov r0, #0x14
	pop {r3, r4, r5, pc}
	nop
_02231D34: .word 0x02258AD8
	thumb_func_end ov66_02231D00

	thumb_func_start ov66_02231D38
ov66_02231D38: ; 0x02231D38
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	mov r6, #2
	add r7, r4, #0
_02231D42:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov66_02231D58
	add r4, r4, #1
	cmp r4, #0x14
	blt _02231D42
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_02231D38

	thumb_func_start ov66_02231D58
ov66_02231D58: ; 0x02231D58
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0x14
	blo _02231D6A
	bl GF_AssertFail
_02231D6A:
	lsl r0, r4, #2
	strh r6, [r5, r0]
	add r0, r5, r0
	strh r7, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_02231D58

	thumb_func_start ov66_02231D74
ov66_02231D74: ; 0x02231D74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov66_02231D58
	add r0, r5, #0
	mov r1, #1
	bl ov66_02231DC0
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_02231DD4
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231D74

	thumb_func_start ov66_02231D90
ov66_02231D90: ; 0x02231D90
	push {r4, lr}
	add r4, r0, #0
	mov r2, #2
	mov r3, #0
	bl ov66_02231D58
	add r0, r4, #0
	mov r1, #2
	bl ov66_02231DC0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231D90

	thumb_func_start ov66_02231DA8
ov66_02231DA8: ; 0x02231DA8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _02231DB8
	bl GF_AssertFail
_02231DB8:
	lsl r0, r4, #2
	add r0, r5, r0
	strh r6, [r0, #2]
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02231DA8

	thumb_func_start ov66_02231DC0
ov66_02231DC0: ; 0x02231DC0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #2
	ble _02231DCE
	bl GF_AssertFail
_02231DCE:
	add r5, #0x50
	strh r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231DC0

	thumb_func_start ov66_02231DD4
ov66_02231DD4: ; 0x02231DD4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _02231DE2
	bl GF_AssertFail
_02231DE2:
	add r5, #0x52
	strh r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231DD4

	thumb_func_start ov66_02231DE8
ov66_02231DE8: ; 0x02231DE8
	push {r3, lr}
	bl ov66_02231DFC
	cmp r0, #2
	beq _02231DF6
	mov r0, #1
	pop {r3, pc}
_02231DF6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_02231DE8

	thumb_func_start ov66_02231DFC
ov66_02231DFC: ; 0x02231DFC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x14
	blo _02231E0A
	bl GF_AssertFail
_02231E0A:
	lsl r0, r5, #2
	ldrh r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231DFC

	thumb_func_start ov66_02231E10
ov66_02231E10: ; 0x02231E10
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x14
	blo _02231E1E
	bl GF_AssertFail
_02231E1E:
	lsl r0, r5, #2
	add r0, r4, r0
	ldrh r1, [r0, #2]
	mov r0, #1
	tst r1, r0
	bne _02231E2C
	mov r0, #0
_02231E2C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02231E10

	thumb_func_start ov66_02231E30
ov66_02231E30: ; 0x02231E30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x14
	blo _02231E3E
	bl GF_AssertFail
_02231E3E:
	lsl r0, r5, #2
	add r0, r4, r0
	ldrh r1, [r0, #2]
	mov r0, #2
	tst r0, r1
	beq _02231E4E
	mov r0, #1
	pop {r3, r4, r5, pc}
_02231E4E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02231E30

	thumb_func_start ov66_02231E54
ov66_02231E54: ; 0x02231E54
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x14
	blo _02231E62
	bl GF_AssertFail
_02231E62:
	lsl r0, r5, #2
	add r0, r4, r0
	ldrh r0, [r0, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02231E54

	thumb_func_start ov66_02231E6C
ov66_02231E6C: ; 0x02231E6C
	add r0, #0x50
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02231E6C

	thumb_func_start ov66_02231E74
ov66_02231E74: ; 0x02231E74
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _02231E82
	bl GF_AssertFail
_02231E82:
	add r5, #0x52
	ldrh r0, [r5]
	cmp r0, r4
	bne _02231E8E
	mov r0, #1
	pop {r3, r4, r5, pc}
_02231E8E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02231E74

	thumb_func_start ov66_02231E94
ov66_02231E94: ; 0x02231E94
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r2, #0x75
	add r6, r1, #0
	mov r1, #0
	lsl r2, r2, #2
	str r0, [sp]
	bl memset
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r7, #8
	str r0, [sp, #4]
_02231EB0:
	ldr r5, [sp, #4]
	mov r4, #0
_02231EB4:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02023790
	str r0, [r5, #0x10]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02231EB4
	ldr r0, [sp, #4]
	add r0, #0x34
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #8
	blt _02231EB0
	mov r2, #0x1a
	lsl r2, r2, #4
	ldr r0, [sp]
	add r1, r2, #0
	add r3, r0, r2
	add r1, #0x2c
	str r3, [r0, r1]
	add r2, #0x30
	str r3, [r0, r2]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov66_02231E94

	thumb_func_start ov66_02231EEC
ov66_02231EEC: ; 0x02231EEC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r7, #0
	add r6, r0, #0
_02231EF4:
	mov r4, #0
	add r5, r6, #0
_02231EF8:
	ldr r0, [r5, #0x10]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02231EF8
	add r7, r7, #1
	add r6, #0x34
	cmp r7, #8
	blt _02231EF4
	mov r2, #0x75
	ldr r0, [sp]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_02231EEC

	thumb_func_start ov66_02231F1C
ov66_02231F1C: ; 0x02231F1C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	sub r0, #0x2c
	add r4, r6, r0
	cmp r1, r4
	beq _02231F54
	mov r7, #0
_02231F30:
	ldr r5, [r1, #0x2c]
	mov r0, #0x2a
	strh r7, [r1, #0x28]
	ldrsh r0, [r1, r0]
	sub r0, r0, #1
	cmp r0, #0
	ble _02231F48
	mov r0, #0x2a
	ldrsh r0, [r1, r0]
	sub r0, r0, #1
	strh r0, [r1, #0x2a]
	b _02231F4E
_02231F48:
	add r0, r6, #0
	bl ov66_02231FE8
_02231F4E:
	add r1, r5, #0
	cmp r5, r4
	bne _02231F30
_02231F54:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_02231F1C

	thumb_func_start ov66_02231F58
ov66_02231F58: ; 0x02231F58
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r3, _02231F64 ; =ov66_02231FE8
	ldr r1, [r0, r1]
	bx r3
	nop
_02231F64: .word ov66_02231FE8
	thumb_func_end ov66_02231F58

	thumb_func_start ov66_02231F68
ov66_02231F68: ; 0x02231F68
	push {r3, r4, r5, lr}
	mov r4, #0
	add r3, r4, #0
	add r5, r0, #0
_02231F70:
	ldr r2, [r5, #0x2c]
	cmp r2, #0
	bne _02231F7E
	mov r2, #0x34
	mul r2, r3
	add r4, r0, r2
	b _02231F86
_02231F7E:
	add r3, r3, #1
	add r5, #0x34
	cmp r3, #8
	blt _02231F70
_02231F86:
	cmp r4, #0
	bne _02231FAA
	mov r2, #0
	add r5, r0, #0
_02231F8E:
	ldrh r3, [r5, #0x28]
	cmp r3, r1
	blo _02231FA2
	mov r1, #0x34
	mul r1, r2
	add r4, r0, r1
	add r1, r4, #0
	bl ov66_02231FE8
	b _02231FAA
_02231FA2:
	add r2, r2, #1
	add r5, #0x34
	cmp r2, #8
	blt _02231F8E
_02231FAA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02231F68

	thumb_func_start ov66_02231FB0
ov66_02231FB0: ; 0x02231FB0
	ldr r2, [r0, #0x2c]
	str r2, [r1, #0x2c]
	str r0, [r1, #0x30]
	str r1, [r0, #0x2c]
	ldr r0, [r1, #0x2c]
	str r1, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02231FB0

	thumb_func_start ov66_02231FC0
ov66_02231FC0: ; 0x02231FC0
	push {r4, lr}
	mov r2, #0x1d
	lsl r2, r2, #4
	ldr r3, [r0, r2]
	sub r2, #0x30
	add r2, r0, r2
	cmp r3, r2
	beq _02231FDE
	ldrh r4, [r1, #0x28]
_02231FD2:
	ldrh r0, [r3, #0x28]
	cmp r0, r4
	blo _02231FDE
	ldr r3, [r3, #0x30]
	cmp r3, r2
	bne _02231FD2
_02231FDE:
	add r0, r3, #0
	bl ov66_02231FB0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231FC0

	thumb_func_start ov66_02231FE8
ov66_02231FE8: ; 0x02231FE8
	ldr r2, [r1, #0x2c]
	ldr r0, [r1, #0x30]
	str r2, [r0, #0x2c]
	ldr r2, [r1, #0x30]
	ldr r0, [r1, #0x2c]
	str r2, [r0, #0x30]
	mov r0, #0
	str r0, [r1, #0x30]
	str r0, [r1, #0x2c]
	bx lr
	thumb_func_end ov66_02231FE8

	thumb_func_start ov66_02231FFC
ov66_02231FFC: ; 0x02231FFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x40]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #9
	blo _02232010
	bl GF_AssertFail
_02232010:
	ldr r0, [sp, #0x40]
	strb r0, [r5]
	ldr r0, [sp, #0x38]
	strh r0, [r5, #0x2a]
	ldr r0, [sp, #0x3c]
	strh r0, [r5, #0x28]
	str r4, [r5, #4]
	str r6, [r5, #8]
	str r7, [r5, #0xc]
	add r0, sp, #8
	ldrh r1, [r0, #0x20]
	strh r1, [r5, #0x20]
	ldrh r1, [r0, #0x24]
	strh r1, [r5, #0x22]
	ldrh r1, [r0, #0x28]
	strh r1, [r5, #0x24]
	ldrh r0, [r0, #0x2c]
	strh r0, [r5, #0x26]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02232040
	ldr r1, [r5, #0x10]
	bl sub_02025EF4
_02232040:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0223204C
	ldr r1, [r5, #0x14]
	bl sub_02025EF4
_0223204C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02232058
	ldr r1, [r5, #0x18]
	bl sub_02025EF4
_02232058:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02232064
	ldr r1, [r5, #0x1c]
	bl sub_02025EF4
_02232064:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_02231FFC

	thumb_func_start ov66_02232068
ov66_02232068: ; 0x02232068
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _022320B8 ; =0x020E4C44
	add r6, r2, #0
	ldrb r4, [r0]
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	mov r1, #0
	add r7, r3, #0
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	mov r1, #1
	str r1, [sp]
	str r4, [sp, #4]
	ldr r2, [r5, #0x14]
	add r0, r6, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r7, #0
	mov r1, #7
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022320B8: .word 0x020E4C44
	thumb_func_end ov66_02232068

	thumb_func_start ov66_022320BC
ov66_022320BC: ; 0x022320BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02232118 ; =0x020E4C44
	add r6, r2, #0
	ldrb r4, [r0]
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	mov r1, #0
	add r7, r3, #0
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	mov r1, #1
	str r1, [sp]
	str r4, [sp, #4]
	ldr r2, [r5, #0x14]
	add r0, r6, #0
	mov r3, #0
	bl sub_0200B48C
	ldr r2, [r5, #4]
	add r0, r6, #0
	mov r1, #2
	bl sub_0200C120
	add r0, r7, #0
	mov r1, #8
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232118: .word 0x020E4C44
	thumb_func_end ov66_022320BC

	thumb_func_start ov66_0223211C
ov66_0223211C: ; 0x0223211C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	ldr r2, [r5, #4]
	add r0, r4, #0
	mov r1, #0
	add r7, r3, #0
	bl sub_0200C0B0
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _0223220A
	ldr r0, [r5, #8]
	cmp r0, #2
	beq _02232182
	cmp r0, #3
	beq _02232146
	cmp r0, #4
	beq _022321AC
	b _022321FA
_02232146:
	ldr r0, _02232254 ; =0x020E4C44
	mov r1, #1
	ldrb r6, [r0]
	str r1, [sp]
	add r0, r4, #0
	str r6, [sp, #4]
	ldr r2, [r5, #0x10]
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x14]
	add r0, r4, #0
	mov r1, #2
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x18]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl sub_0200B48C
	mov r1, #0x12
	b _02232200
_02232182:
	ldr r0, _02232254 ; =0x020E4C44
	mov r1, #1
	ldrb r6, [r0]
	str r1, [sp]
	add r0, r4, #0
	str r6, [sp, #4]
	ldr r2, [r5, #0x10]
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x14]
	add r0, r4, #0
	mov r1, #2
	mov r3, #0
	bl sub_0200B48C
	mov r1, #0x13
	b _02232200
_022321AC:
	ldr r0, _02232254 ; =0x020E4C44
	mov r1, #1
	ldrb r6, [r0]
	str r1, [sp]
	add r0, r4, #0
	str r6, [sp, #4]
	ldr r2, [r5, #0x10]
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x14]
	add r0, r4, #0
	mov r1, #2
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x18]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x1c]
	add r0, r4, #0
	mov r1, #4
	mov r3, #0
	bl sub_0200B48C
	mov r1, #6
	b _02232200
_022321FA:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232200:
	add r0, r7, #0
	bl sub_0200B1EC
	add r5, r0, #0
	b _0223223C
_0223220A:
	ldr r0, _02232254 ; =0x020E4C44
	mov r1, #1
	ldrb r0, [r0]
	str r1, [sp]
	mov r3, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	bl sub_0200B48C
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r5, [r5, #8]
	mov r2, #4
	add r0, r4, #0
	mov r1, #2
	sub r2, r2, r5
	bl sub_0200B60C
	add r0, r7, #0
	mov r1, #5
	bl sub_0200B1EC
	add r5, r0, #0
_0223223C:
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232254: .word 0x020E4C44
	thumb_func_end ov66_0223211C

	thumb_func_start ov66_02232258
ov66_02232258: ; 0x02232258
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	ldr r2, [r5, #4]
	add r0, r4, #0
	mov r1, #0
	add r6, r3, #0
	bl sub_0200C0B0
	ldr r0, _022322B4 ; =0x020E4C44
	mov r1, #1
	ldrb r0, [r0]
	str r1, [sp]
	mov r3, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	bl sub_0200B48C
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r5, [r5, #8]
	mov r2, #8
	add r0, r4, #0
	mov r1, #2
	sub r2, r2, r5
	bl sub_0200B60C
	add r0, r6, #0
	mov r1, #9
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022322B4: .word 0x020E4C44
	thumb_func_end ov66_02232258

	thumb_func_start ov66_022322B8
ov66_022322B8: ; 0x022322B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r1, [r6, #4]
	add r7, r2, #0
	mov r4, #0
	str r3, [sp, #8]
	cmp r1, #0
	bls _022322F0
	ldr r0, _0223232C ; =0x020E4C44
	add r5, r6, #0
	ldrb r0, [r0]
	str r0, [sp, #0xc]
_022322D2:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r7, #0
	mov r3, #0
	bl sub_0200B48C
	ldr r1, [r6, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r1
	blo _022322D2
_022322F0:
	ldrb r0, [r6]
	cmp r0, #4
	bne _02232300
	add r0, r7, #0
	mov r2, #5
	bl sub_0200C0B0
	b _02232308
_02232300:
	add r0, r7, #0
	mov r2, #6
	bl sub_0200C0B0
_02232308:
	ldr r2, [r6, #4]
	mov r1, #0xe
	ldr r0, [sp, #8]
	sub r1, r1, r2
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223232C: .word 0x020E4C44
	thumb_func_end ov66_022322B8

	thumb_func_start ov66_02232330
ov66_02232330: ; 0x02232330
	push {r3, r4, r5, lr}
	ldr r0, [r0, #8]
	add r4, r2, #0
	add r5, r3, #0
	cmp r0, #4
	bhi _02232380
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02232348: ; jump table
	.short _02232352 - _02232348 - 2 ; case 0
	.short _02232360 - _02232348 - 2 ; case 1
	.short _0223236E - _02232348 - 2 ; case 2
	.short _02232380 - _02232348 - 2 ; case 3
	.short _0223237C - _02232348 - 2 ; case 4
_02232352:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0200C0E8
	mov r1, #0xf
	b _02232384
_02232360:
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl sub_0200C0E8
	mov r1, #0x14
	b _02232384
_0223236E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl sub_0200C0E8
	mov r1, #0x10
	b _02232384
_0223237C:
	mov r1, #0x11
	b _02232384
_02232380:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02232384:
	add r0, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02232330

	thumb_func_start ov66_022323A0
ov66_022323A0: ; 0x022323A0
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0x14
	blo _022323AC
	mov r0, #0
	pop {r3, pc}
_022323AC:
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022323B6
	mov r0, #0
	pop {r3, pc}
_022323B6:
	ldr r2, [sp, #8]
	add r0, r3, #0
	mov r1, #0x15
	bl sub_0200B1B8
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov66_022323A0

	thumb_func_start ov66_022323C4
ov66_022323C4: ; 0x022323C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	add r7, r2, #0
	str r3, [sp, #8]
	bl ov66_022324D0
	cmp r0, #0
	bne _022323E0
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022323E0:
	ldr r2, [r6, #4]
	add r0, r7, #0
	mov r1, #0
	bl sub_0200C0B0
	ldr r1, [r6, #8]
	mov r4, #0
	cmp r1, #0
	bls _02232418
	ldr r0, _02232450 ; =0x020E4C44
	add r5, r6, #0
	ldrb r0, [r0]
	str r0, [sp, #0xc]
_022323FA:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r4, #1
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r7, #0
	mov r3, #0
	bl sub_0200B48C
	ldr r1, [r6, #8]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r1
	blo _022323FA
_02232418:
	ldr r0, [r6, #4]
	cmp r0, #1
	bhi _0223242C
	lsl r2, r1, #1
	ldr r1, _02232454 ; =0x02258ABA
	ldr r0, [sp, #8]
	ldrh r1, [r1, r2]
	bl sub_0200B1EC
	b _02232438
_0223242C:
	lsl r2, r1, #1
	ldr r1, _02232458 ; =0x02258AC2
	ldr r0, [sp, #8]
	ldrh r1, [r1, r2]
	bl sub_0200B1EC
_02232438:
	add r4, r0, #0
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02232450: .word 0x020E4C44
_02232454: .word 0x02258ABA
_02232458: .word 0x02258AC2
	thumb_func_end ov66_022323C4

	thumb_func_start ov66_0223245C
ov66_0223245C: ; 0x0223245C
	cmp r1, #2
	blo _02232464
	mov r0, #0x14
	bx lr
_02232464:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	thumb_func_end ov66_0223245C

	thumb_func_start ov66_0223246C
ov66_0223246C: ; 0x0223246C
	cmp r1, #2
	blo _02232474
	mov r0, #0x14
	bx lr
_02232474:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	thumb_func_end ov66_0223246C

	thumb_func_start ov66_0223247C
ov66_0223247C: ; 0x0223247C
	ldr r2, [r0, #8]
	cmp r2, r1
	bhi _02232486
	mov r0, #0x14
	bx lr
_02232486:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0223247C

	thumb_func_start ov66_02232490
ov66_02232490: ; 0x02232490
	cmp r1, #1
	blo _02232498
	mov r0, #0x14
	bx lr
_02232498:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	thumb_func_end ov66_02232490

	thumb_func_start ov66_022324A0
ov66_022324A0: ; 0x022324A0
	ldr r2, [r0, #4]
	cmp r2, r1
	bhi _022324AA
	mov r0, #0x14
	bx lr
_022324AA:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022324A0

	thumb_func_start ov66_022324B4
ov66_022324B4: ; 0x022324B4
	mov r0, #0x14
	bx lr
	thumb_func_end ov66_022324B4

	thumb_func_start ov66_022324B8
ov66_022324B8: ; 0x022324B8
	mov r0, #0x14
	bx lr
	thumb_func_end ov66_022324B8

	thumb_func_start ov66_022324BC
ov66_022324BC: ; 0x022324BC
	ldr r2, [r0, #8]
	cmp r2, r1
	bhi _022324C6
	mov r0, #0x14
	bx lr
_022324C6:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022324BC

	thumb_func_start ov66_022324D0
ov66_022324D0: ; 0x022324D0
	cmp r0, #1
	bhi _022324E0
	cmp r1, #1
	blo _022324DC
	cmp r1, #4
	bls _022324EC
_022324DC:
	mov r0, #0
	bx lr
_022324E0:
	cmp r1, #2
	blo _022324E8
	cmp r1, #4
	bls _022324EC
_022324E8:
	mov r0, #0
	bx lr
_022324EC:
	mov r0, #1
	bx lr
	thumb_func_end ov66_022324D0

	.rodata


	.global Unk_ov66_02258AB8
Unk_ov66_02258AB8: ; 0x02258AB8
	.incbin "incbin/overlay66_rodata.bin", 0x1A0, 0x1A4 - 0x1A0

	.global Unk_ov66_02258ABC
Unk_ov66_02258ABC: ; 0x02258ABC
	.incbin "incbin/overlay66_rodata.bin", 0x1A4, 0x1AC - 0x1A4

	.global Unk_ov66_02258AC4
Unk_ov66_02258AC4: ; 0x02258AC4
	.incbin "incbin/overlay66_rodata.bin", 0x1AC, 0x1B4 - 0x1AC

	.global Unk_ov66_02258ACC
Unk_ov66_02258ACC: ; 0x02258ACC
	.incbin "incbin/overlay66_rodata.bin", 0x1B4, 0x1C0 - 0x1B4

	.global Unk_ov66_02258AD8
Unk_ov66_02258AD8: ; 0x02258AD8
	.incbin "incbin/overlay66_rodata.bin", 0x1C0, 0x1E4 - 0x1C0

	.global Unk_ov66_02258AFC
Unk_ov66_02258AFC: ; 0x02258AFC
	.incbin "incbin/overlay66_rodata.bin", 0x1E4, 0x24

