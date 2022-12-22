	.include "macros/function.inc"
	.include "include/unk_0207E060.inc"

	

	.text


	thumb_func_start sub_0207E060
sub_0207E060: ; 0x0207E060
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x24
	bl sub_02018144
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	bl memset
	mov r0, #0x1c
	strb r0, [r4, #0x1b]
	add r0, r5, #0
	bl sub_02025F30
	strb r0, [r4, #0x1e]
	add r0, r5, #0
	bl sub_02025F8C
	strb r0, [r4, #0x1d]
	add r0, r5, #0
	bl sub_02025FCC
	strb r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_02025FD8
	strb r0, [r4, #0x19]
	add r0, r4, #0
	mov r1, #0x24
	bl ov4_021D222C
	cmp r0, #1
	beq _0207E0AA
	bl GF_AssertFail
_0207E0AA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207E060

	thumb_func_start sub_0207E0B0
sub_0207E0B0: ; 0x0207E0B0
	ldr r3, _0207E0B4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0207E0B4: .word sub_020181C4
	thumb_func_end sub_0207E0B0