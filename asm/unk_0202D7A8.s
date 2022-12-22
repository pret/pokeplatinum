	.include "macros/function.inc"
	.include "include/unk_0202D7A8.inc"

	

	.text


	thumb_func_start sub_0202D7A8
sub_0202D7A8: ; 0x0202D7A8
	mov r0, #0x55
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D7A8

	thumb_func_start sub_0202D7B0
sub_0202D7B0: ; 0x0202D7B0
	push {r4, lr}
	mov r2, #0x55
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	bl sub_0201D35C
	str r0, [r4, #0]
	bl sub_0201D35C
	str r0, [r4, #4]
	mov r1, #0
	add r3, r4, #0
	ldr r0, _0202D804 ; =0x0000FFFF
	str r1, [r4, #8]
	strh r0, [r4, #0xc]
	strh r0, [r4, #0xe]
	mov r0, #0x15
	add r3, #0x10
	strb r0, [r4, #0x10]
	add r2, r1, #0
_0202D7DE:
	str r2, [r3, #4]
	strb r2, [r3, #8]
	strb r2, [r3, #9]
	strb r2, [r3, #0xa]
	strb r2, [r3, #0xb]
	add r1, r1, #1
	add r3, #8
	cmp r1, #0x15
	blt _0202D7DE
	ldr r0, _0202D808 ; =0x0000014E
	strb r2, [r4, r0]
	add r1, r0, #1
	strb r2, [r4, r1]
	add r1, r0, #2
	strb r2, [r4, r1]
	add r0, r0, #3
	strb r2, [r4, r0]
	pop {r4, pc}
	nop
_0202D804: .word 0x0000FFFF
_0202D808: .word 0x0000014E
	thumb_func_end sub_0202D7B0

	thumb_func_start sub_0202D80C
sub_0202D80C: ; 0x0202D80C
	str r1, [r0, #0]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D80C

	thumb_func_start sub_0202D814
sub_0202D814: ; 0x0202D814
	push {r3, lr}
	cmp r1, #1
	beq _0202D820
	cmp r1, #2
	beq _0202D824
	b _0202D828
_0202D820:
	ldr r0, [r0, #0]
	pop {r3, pc}
_0202D824:
	ldr r0, [r0, #4]
	pop {r3, pc}
_0202D828:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0202D814

	thumb_func_start sub_0202D830
sub_0202D830: ; 0x0202D830
	add r0, #0xbc
	bx lr
	thumb_func_end sub_0202D830

	thumb_func_start sub_0202D834
sub_0202D834: ; 0x0202D834
	ldr r3, _0202D83C ; =sub_020245BC
	mov r1, #0x19
	bx r3
	nop
_0202D83C: .word sub_020245BC
	thumb_func_end sub_0202D834

	thumb_func_start sub_0202D840
sub_0202D840: ; 0x0202D840
	add r0, #0x10
	bx lr
	thumb_func_end sub_0202D840

	thumb_func_start sub_0202D844
sub_0202D844: ; 0x0202D844
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_0202D844

	thumb_func_start sub_0202D848
sub_0202D848: ; 0x0202D848
	strb r0, [r1]
	bx lr
	thumb_func_end sub_0202D848

	thumb_func_start sub_0202D84C
sub_0202D84C: ; 0x0202D84C
	add r1, r1, #4
	lsl r0, r0, #3
	add r0, r1, r0
	bx lr
	thumb_func_end sub_0202D84C

	thumb_func_start sub_0202D854
sub_0202D854: ; 0x0202D854
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl sub_0202D834
	add r6, r0, #0
	mov r4, #0
	add r6, #0x10
	add r7, r4, #0
_0202D864:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl sub_0202D84C
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0202D87C
	sub r1, r1, r5
	str r1, [r0, #0]
	bpl _0202D87C
	str r7, [r0, #0]
_0202D87C:
	add r4, r4, #1
	cmp r4, #0x15
	blt _0202D864
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202D854

	thumb_func_start sub_0202D884
sub_0202D884: ; 0x0202D884
	push {r3, lr}
	bl sub_0202D834
	ldr r1, _0202D894 ; =0x0000014E
	mov r2, #1
	strb r2, [r0, r1]
	pop {r3, pc}
	nop
_0202D894: .word 0x0000014E
	thumb_func_end sub_0202D884

	thumb_func_start sub_0202D898
sub_0202D898: ; 0x0202D898
	ldr r1, _0202D8A0 ; =0x0000014E
	ldrb r0, [r0, r1]
	bx lr
	nop
_0202D8A0: .word 0x0000014E
	thumb_func_end sub_0202D898

	thumb_func_start sub_0202D8A4
sub_0202D8A4: ; 0x0202D8A4
	add r2, r0, #0
	add r2, #0xc8
	ldr r3, [r2, #0]
	cmp r3, r1
	beq _0202D8B8
	add r2, r0, #0
	add r2, #0xcc
	str r3, [r2, #0]
	add r0, #0xc8
	str r1, [r0, #0]
_0202D8B8:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D8A4

	thumb_func_start sub_0202D8BC
sub_0202D8BC: ; 0x0202D8BC
	add r0, #0xcc
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D8BC

	thumb_func_start sub_0202D8C4
sub_0202D8C4: ; 0x0202D8C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	blo _0202D8D2
	bl GF_AssertFail
_0202D8D2:
	mov r0, #0x52
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202D8C4

	thumb_func_start sub_0202D8DC
sub_0202D8DC: ; 0x0202D8DC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	blo _0202D8EC
	bl GF_AssertFail
_0202D8EC:
	mov r0, #0x52
	add r1, r5, r4
	lsl r0, r0, #2
	strb r6, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202D8DC

	thumb_func_start sub_0202D8F8
sub_0202D8F8: ; 0x0202D8F8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	blo _0202D906
	bl GF_AssertFail
_0202D906:
	mov r0, #0x14
	mul r0, r4
	add r0, r5, r0
	add r0, #0xe2
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202D8F8

	thumb_func_start sub_0202D914
sub_0202D914: ; 0x0202D914
	ldr r2, [r0, #0]
	mov r1, #0x14
	mov r0, #0
_0202D91A:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0202D91A
	bx lr
	thumb_func_end sub_0202D914

	thumb_func_start sub_0202D924
sub_0202D924: ; 0x0202D924
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	blo _0202D932
	bl GF_AssertFail
_0202D932:
	mov r0, #0x14
	add r5, #0xd0
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202D924

	thumb_func_start sub_0202D93C
sub_0202D93C: ; 0x0202D93C
	cmp r1, #8
	bhi _0202D97C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202D94C: ; jump table
	.short _0202D97C - _0202D94C - 2 ; case 0
	.short _0202D95E - _0202D94C - 2 ; case 1
	.short _0202D962 - _0202D94C - 2 ; case 2
	.short _0202D966 - _0202D94C - 2 ; case 3
	.short _0202D96A - _0202D94C - 2 ; case 4
	.short _0202D96E - _0202D94C - 2 ; case 5
	.short _0202D972 - _0202D94C - 2 ; case 6
	.short _0202D976 - _0202D94C - 2 ; case 7
	.short _0202D97A - _0202D94C - 2 ; case 8
_0202D95E:
	ldr r0, [r0, #0]
	bx lr
_0202D962:
	ldr r0, [r0, #4]
	bx lr
_0202D966:
	ldr r0, [r0, #8]
	bx lr
_0202D96A:
	ldrh r0, [r0, #0xc]
	bx lr
_0202D96E:
	ldrh r0, [r0, #0xe]
	bx lr
_0202D972:
	ldrb r0, [r0, #0x10]
	bx lr
_0202D976:
	ldrb r0, [r0, #0x11]
	bx lr
_0202D97A:
	ldrb r0, [r0, #0x12]
_0202D97C:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D93C

	thumb_func_start sub_0202D980
sub_0202D980: ; 0x0202D980
	cmp r1, #8
	bhi _0202D9C0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202D990: ; jump table
	.short _0202D9C0 - _0202D990 - 2 ; case 0
	.short _0202D9A2 - _0202D990 - 2 ; case 1
	.short _0202D9A6 - _0202D990 - 2 ; case 2
	.short _0202D9AA - _0202D990 - 2 ; case 3
	.short _0202D9AE - _0202D990 - 2 ; case 4
	.short _0202D9B2 - _0202D990 - 2 ; case 5
	.short _0202D9B6 - _0202D990 - 2 ; case 6
	.short _0202D9BA - _0202D990 - 2 ; case 7
	.short _0202D9BE - _0202D990 - 2 ; case 8
_0202D9A2:
	str r2, [r0, #0]
	bx lr
_0202D9A6:
	str r2, [r0, #4]
	bx lr
_0202D9AA:
	str r2, [r0, #8]
	bx lr
_0202D9AE:
	strh r2, [r0, #0xc]
	bx lr
_0202D9B2:
	strh r2, [r0, #0xe]
	bx lr
_0202D9B6:
	strb r2, [r0, #0x10]
	bx lr
_0202D9BA:
	strb r2, [r0, #0x11]
	bx lr
_0202D9BE:
	strb r2, [r0, #0x12]
_0202D9C0:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D980

	thumb_func_start sub_0202D9C4
sub_0202D9C4: ; 0x0202D9C4
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	thumb_func_end sub_0202D9C4

	thumb_func_start sub_0202D9CC
sub_0202D9CC: ; 0x0202D9CC
	ldr r1, _0202D9D4 ; =0x0000014F
	add r0, r0, r1
	bx lr
	nop
_0202D9D4: .word 0x0000014F
	thumb_func_end sub_0202D9CC

	thumb_func_start sub_0202D9D8
sub_0202D9D8: ; 0x0202D9D8
	ldr r1, _0202D9E8 ; =0x0000014F
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0202D9E4
	mov r0, #1
	bx lr
_0202D9E4:
	mov r0, #0
	bx lr
	; .align 2, 0
_0202D9E8: .word 0x0000014F
	thumb_func_end sub_0202D9D8

	thumb_func_start sub_0202D9EC
sub_0202D9EC: ; 0x0202D9EC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #2
	bls _0202D9FA
	bl GF_AssertFail
_0202D9FA:
	ldr r0, _0202DA00 ; =0x00000151
	strb r4, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202DA00: .word 0x00000151
	thumb_func_end sub_0202D9EC

	thumb_func_start sub_0202DA04
sub_0202DA04: ; 0x0202DA04
	ldr r1, _0202DA0C ; =0x00000151
	ldrb r0, [r0, r1]
	bx lr
	nop
_0202DA0C: .word 0x00000151
	thumb_func_end sub_0202DA04

	thumb_func_start sub_0202DA10
sub_0202DA10: ; 0x0202DA10
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0202D834
	ldrh r1, [r0, #0xc]
	strh r1, [r5]
	ldrh r0, [r0, #0xe]
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DA10

	thumb_func_start sub_0202DA24
sub_0202DA24: ; 0x0202DA24
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0202D834
	add r4, r0, #0
	cmp r5, #0x10
	blo _0202DA36
	bl GF_AssertFail
_0202DA36:
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0xe]
	strh r5, [r4, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202DA24