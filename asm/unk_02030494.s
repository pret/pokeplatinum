	.include "macros/function.inc"
	.include "include/unk_02030494.inc"

	

	.text


	thumb_func_start sub_02030494
sub_02030494: ; 0x02030494
	ldr r3, _0203049C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x48
	bx r3
	; .align 2, 0
_0203049C: .word MI_CpuFill8
	thumb_func_end sub_02030494

	thumb_func_start sub_020304A0
sub_020304A0: ; 0x020304A0
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	mov r1, #0x8e
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_020304A0

	thumb_func_start sub_020304B0
sub_020304B0: ; 0x020304B0
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_020304B0

	thumb_func_start sub_020304B8
sub_020304B8: ; 0x020304B8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0]
	mov r2, #8
	lsr r1, r1, #0x1c
	bic r3, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end sub_020304B8

	thumb_func_start sub_020304CC
sub_020304CC: ; 0x020304CC
	push {r4, lr}
	ldr r3, [sp, #8]
	cmp r1, #7
	bhi _02030546
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020304E0: ; jump table
	.short _020304F0 - _020304E0 - 2 ; case 0
	.short _02030502 - _020304E0 - 2 ; case 1
	.short _02030514 - _020304E0 - 2 ; case 2
	.short _0203051A - _020304E0 - 2 ; case 3
	.short _02030520 - _020304E0 - 2 ; case 4
	.short _0203052A - _020304E0 - 2 ; case 5
	.short _02030534 - _020304E0 - 2 ; case 6
	.short _0203053C - _020304E0 - 2 ; case 7
_020304F0:
	ldrb r4, [r0]
	ldrb r2, [r3]
	mov r1, #7
	bic r4, r1
	mov r1, #7
	and r1, r2
	orr r1, r4
	strb r1, [r0]
	pop {r4, pc}
_02030502:
	ldrb r2, [r0]
	mov r1, #0x10
	bic r2, r1
	ldrb r1, [r3]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r1, r2
	strb r1, [r0]
	pop {r4, pc}
_02030514:
	ldrb r1, [r3]
	strb r1, [r0, #1]
	pop {r4, pc}
_0203051A:
	ldrb r1, [r3]
	strb r1, [r0, #2]
	pop {r4, pc}
_02030520:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #6]
	pop {r4, pc}
_0203052A:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0xe]
	pop {r4, pc}
_02030534:
	ldrb r1, [r3]
	add r0, r0, r2
	strb r1, [r0, #3]
	pop {r4, pc}
_0203053C:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0x2a]
	pop {r4, pc}
_02030546:
	bl GF_AssertFail
	pop {r4, pc}
	thumb_func_end sub_020304CC

	thumb_func_start sub_0203054C
sub_0203054C: ; 0x0203054C
	push {r3, lr}
	cmp r1, #7
	bhi _020305A4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203055E: ; jump table
	.short _0203056E - _0203055E - 2 ; case 0
	.short _02030576 - _0203055E - 2 ; case 1
	.short _0203057E - _0203055E - 2 ; case 2
	.short _02030582 - _0203055E - 2 ; case 3
	.short _02030586 - _0203055E - 2 ; case 4
	.short _0203058E - _0203055E - 2 ; case 5
	.short _02030596 - _0203055E - 2 ; case 6
	.short _0203059C - _0203055E - 2 ; case 7
_0203056E:
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	pop {r3, pc}
_02030576:
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0203057E:
	ldrb r0, [r0, #1]
	pop {r3, pc}
_02030582:
	ldrb r0, [r0, #2]
	pop {r3, pc}
_02030586:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #6]
	pop {r3, pc}
_0203058E:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0xe]
	pop {r3, pc}
_02030596:
	add r0, r0, r2
	ldrb r0, [r0, #3]
	pop {r3, pc}
_0203059C:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x2a]
	pop {r3, pc}
_020305A4:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0203054C

	thumb_func_start sub_020305AC
sub_020305AC: ; 0x020305AC
	ldr r3, _020305B4 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #4
	bx r3
	; .align 2, 0
_020305B4: .word MI_CpuFill8
	thumb_func_end sub_020305AC

	thumb_func_start sub_020305B8
sub_020305B8: ; 0x020305B8
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _020305C8 ; =0x00001624
	add r0, r0, r1
	pop {r3, pc}
	nop
_020305C8: .word 0x00001624
	thumb_func_end sub_020305B8

	thumb_func_start sub_020305CC
sub_020305CC: ; 0x020305CC
	push {r4, lr}
	ldr r3, [sp, #8]
	cmp r1, #8
	bne _020305F8
	ldrb r1, [r3]
	cmp r1, #1
	blo _020305E6
	mov r1, #1
	ldrb r3, [r0]
	lsl r1, r2
	orr r1, r3
	strb r1, [r0]
	pop {r4, pc}
_020305E6:
	mov r1, #1
	add r3, r1, #0
	ldrb r4, [r0]
	lsl r3, r2
	mov r1, #0xff
	eor r1, r3
	and r1, r4
	strb r1, [r0]
	pop {r4, pc}
_020305F8:
	bl GF_AssertFail
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020305CC

	thumb_func_start sub_02030600
sub_02030600: ; 0x02030600
	push {r3, lr}
	cmp r1, #8
	bne _02030612
	ldrb r0, [r0]
	add r1, r0, #0
	asr r1, r2
	mov r0, #1
	and r0, r1
	pop {r3, pc}
_02030612:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030600