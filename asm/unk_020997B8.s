	.include "macros/function.inc"
	.include "include/unk_020997B8.inc"

	

	.text


	thumb_func_start sub_020997B8
sub_020997B8: ; 0x020997B8
	push {r3, lr}
	mov r1, #0x18
	bl sub_02018144
	add r3, r0, #0
	mov r2, #0x18
	mov r1, #0
_020997C6:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _020997C6
	pop {r3, pc}
	thumb_func_end sub_020997B8

	thumb_func_start sub_020997D0
sub_020997D0: ; 0x020997D0
	ldr r3, _020997D4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_020997D4: .word sub_020181C4
	thumb_func_end sub_020997D0

	thumb_func_start sub_020997D8
sub_020997D8: ; 0x020997D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp]
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r4, #0
	str r0, [sp, #4]
	add r7, r4, #0
	add r6, sp, #0x10
_02099814:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074470
	lsl r1, r4, #1
	strh r0, [r6, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02099814
	ldr r0, [sp]
	mov r1, #0x2c
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0x2c
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, r7, #0
	bl sub_02077D28
	mov r2, #0
	mov ip, r2
_02099850:
	mov r0, ip
	lsl r0, r0, #1
	ldrh r5, [r7, r0]
	ldr r6, _020998D4 ; =0x0000FFFF
	cmp r5, r6
	bne _02099862
	lsl r0, r2, #1
	strh r6, [r4, r0]
	b _020998C8
_02099862:
	mov r1, #0xfe
	lsl r1, r1, #8
	and r1, r5
	asr r3, r1, #9
	ldr r1, [sp, #4]
	cmp r3, r1
	bgt _020998BA
	lsr r1, r6, #7
	and r1, r5
	strh r1, [r7, r0]
	ldrh r3, [r7, r0]
	mov r1, #0
	add r6, sp, #0x10
_0209987C:
	lsl r5, r1, #1
	ldrh r5, [r6, r5]
	cmp r3, r5
	beq _0209988E
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #4
	blo _0209987C
_0209988E:
	cmp r1, #4
	bne _020998BA
	mov r1, #0
	cmp r2, #0
	bls _020998AA
_02099898:
	lsl r5, r1, #1
	ldrh r5, [r4, r5]
	cmp r5, r3
	beq _020998AA
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r2
	blo _02099898
_020998AA:
	cmp r1, r2
	bne _020998BA
	ldrh r1, [r7, r0]
	lsl r0, r2, #1
	strh r1, [r4, r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
_020998BA:
	mov r0, ip
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	cmp r0, #0x16
	blo _02099850
_020998C8:
	add r0, r7, #0
	bl sub_020181C4
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020998D4: .word 0x0000FFFF
	thumb_func_end sub_020997D8

	thumb_func_start sub_020998D8
sub_020998D8: ; 0x020998D8
	ldrh r1, [r0]
	ldr r0, _020998E8 ; =0x0000FFFF
	cmp r1, r0
	beq _020998E4
	mov r0, #1
	bx lr
_020998E4:
	mov r0, #0
	bx lr
	; .align 2, 0
_020998E8: .word 0x0000FFFF
	thumb_func_end sub_020998D8