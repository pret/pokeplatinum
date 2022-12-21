	.include "macros/function.inc"
	.include "include/unk_02012480.inc"

	

	.text


	thumb_func_start sub_02012480
sub_02012480: ; 0x02012480
	cmp r1, #0
	ldr r1, _020124A4 ; =0xFFFF1FFF
	bne _02012496
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3, #0]
	lsl r0, r0, #0xd
	and r1, r2
	orr r0, r1
	str r0, [r3, #0]
	bx lr
_02012496:
	ldr r3, _020124A8 ; =0x04001000
	lsl r0, r0, #0xd
	ldr r2, [r3, #0]
	and r1, r2
	orr r0, r1
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_020124A4: .word 0xFFFF1FFF
_020124A8: .word 0x04001000
	thumb_func_end sub_02012480

	thumb_func_start sub_020124AC
sub_020124AC: ; 0x020124AC
	push {r3, r4}
	cmp r2, #0
	bne _020124EE
	cmp r3, #0
	bne _020124D2
	ldr r2, _02012528 ; =0x04000048
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _020124CA
	mov r0, #0x20
	orr r2, r0
_020124CA:
	ldr r0, _02012528 ; =0x04000048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_020124D2:
	ldr r2, _0201252C ; =0x04001048
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _020124E6
	mov r0, #0x20
	orr r2, r0
_020124E6:
	ldr r0, _0201252C ; =0x04001048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_020124EE:
	cmp r3, #0
	ldr r2, _02012530 ; =0xFFFFC0FF
	bne _0201250E
	ldr r4, _02012528 ; =0x04000048
	lsl r0, r0, #8
	ldrh r3, [r4]
	and r2, r3
	orr r2, r0
	cmp r1, #0
	beq _02012506
	lsr r0, r4, #0xd
	orr r2, r0
_02012506:
	ldr r0, _02012528 ; =0x04000048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_0201250E:
	ldr r4, _0201252C ; =0x04001048
	lsl r0, r0, #8
	ldrh r3, [r4]
	and r2, r3
	orr r2, r0
	cmp r1, #0
	beq _02012520
	lsr r0, r4, #0xd
	orr r2, r0
_02012520:
	ldr r0, _0201252C ; =0x04001048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02012528: .word 0x04000048
_0201252C: .word 0x04001048
_02012530: .word 0xFFFFC0FF
	thumb_func_end sub_020124AC

	thumb_func_start sub_02012534
sub_02012534: ; 0x02012534
	cmp r2, #0
	bne _02012552
	ldr r2, _0201256C ; =0x0400004A
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _0201254C
	mov r0, #0x20
	orr r2, r0
_0201254C:
	ldr r0, _0201256C ; =0x0400004A
	strh r2, [r0]
	bx lr
_02012552:
	ldr r2, _02012570 ; =0x0400104A
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _02012566
	mov r0, #0x20
	orr r2, r0
_02012566:
	ldr r0, _02012570 ; =0x0400104A
	strh r2, [r0]
	bx lr
	; .align 2, 0
_0201256C: .word 0x0400004A
_02012570: .word 0x0400104A
	thumb_func_end sub_02012534

	thumb_func_start sub_02012574
sub_02012574: ; 0x02012574
	push {r4, r5}
	add r4, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _020125D2
	ldr r3, [sp, #0xc]
	cmp r3, #0
	bne _020125AC
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02012624 ; =0x04000040
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_020125AC:
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02012628 ; =0x04001040
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_020125D2:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	bne _020125FE
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _0201262C ; =0x04000042
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_020125FE:
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02012630 ; =0x04001042
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02012624: .word 0x04000040
_02012628: .word 0x04001040
_0201262C: .word 0x04000042
_02012630: .word 0x04001042
	thumb_func_end sub_02012574

	thumb_func_start sub_02012634
sub_02012634: ; 0x02012634
	push {r4, lr}
	lsl r3, r2, #3
	add r4, r0, r3
	str r1, [r0, r3]
	str r2, [r4, #4]
	ldr r0, _0201264C ; =sub_020126CC
	add r1, r4, #0
	mov r2, #1
	bl sub_0200DA3C
	pop {r4, pc}
	nop
_0201264C: .word sub_020126CC
	thumb_func_end sub_02012634

	thumb_func_start sub_02012650
sub_02012650: ; 0x02012650
	push {r4, r5, r6, lr}
	ldr r5, [sp, #0x10]
	add r0, #0x10
	lsl r4, r5, #5
	add r6, r0, r4
	lsl r0, r3, #4
	add r4, r6, r0
	str r1, [r6, r0]
	str r2, [r4, #4]
	str r3, [r4, #8]
	ldr r0, _02012674 ; =sub_020126E0
	add r1, r4, #0
	mov r2, #1
	str r5, [r4, #0xc]
	bl sub_0200DA3C
	pop {r4, r5, r6, pc}
	nop
_02012674: .word sub_020126E0
	thumb_func_end sub_02012650

	thumb_func_start sub_02012678
sub_02012678: ; 0x02012678
	push {r3, r4, r5, lr}
	mov r4, #0xc
	add r0, #0x68
	mul r4, r3
	add r5, r0, r4
	str r1, [r0, r4]
	str r2, [r5, #4]
	ldr r0, _02012694 ; =sub_020126FC
	add r1, r5, #0
	mov r2, #1
	str r3, [r5, #8]
	bl sub_0200DA3C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02012694: .word sub_020126FC
	thumb_func_end sub_02012678

	thumb_func_start sub_02012698
sub_02012698: ; 0x02012698
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x20]
	add r7, r1, #0
	add r0, #0x80
	lsl r1, r5, #5
	add r6, r0, r1
	add r4, r2, #0
	ldr r0, [sp, #0x1c]
	add r2, r3, #0
	lsl r3, r0, #4
	add r1, r6, r3
	strh r7, [r6, r3]
	strh r4, [r1, #2]
	strh r2, [r1, #4]
	ldr r2, [sp, #0x18]
	strh r2, [r1, #6]
	str r0, [r1, #8]
	ldr r0, _020126C8 ; =sub_02012714
	mov r2, #1
	str r5, [r1, #0xc]
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020126C8: .word sub_02012714
	thumb_func_end sub_02012698

	thumb_func_start sub_020126CC
sub_020126CC: ; 0x020126CC
	push {r4, lr}
	add r4, r0, #0
	ldmia r1!, {r0, r1}
	bl sub_02012480
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020126CC

	thumb_func_start sub_020126E0
sub_020126E0: ; 0x020126E0
	push {r4, lr}
	add r3, r1, #0
	add r4, r0, #0
	ldr r0, [r3, #0]
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_020124AC
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020126E0

	thumb_func_start sub_020126FC
sub_020126FC: ; 0x020126FC
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl sub_02012534
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end sub_020126FC

	thumb_func_start sub_02012714
sub_02012714: ; 0x02012714
	push {r3, r4, r5, lr}
	sub sp, #8
	add r3, r1, #0
	add r4, r0, #0
	ldr r0, [r3, #8]
	mov r1, #2
	str r0, [sp]
	ldr r0, [r3, #0xc]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0
	mov r5, #6
	ldrsh r0, [r3, r0]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	bl sub_02012574
	add r0, r4, #0
	bl sub_0200DA58
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02012714