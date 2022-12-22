	.include "macros/function.inc"
	.include "include/unk_0207064C.inc"

	

	.text


	thumb_func_start sub_0207064C
sub_0207064C: ; 0x0207064C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x18
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02018184
	add r3, r0, #0
	mov r2, #0x18
	mov r1, #0
_02070660:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02070660
	str r5, [r0, #0]
	str r4, [r0, #0x10]
	strh r6, [r0, #8]
	add r2, sp, #0
	mov r1, #0x10
	ldrsh r1, [r2, r1]
	strh r1, [r0, #0xa]
	mov r1, #0x14
	ldrsh r1, [r2, r1]
	strh r1, [r0, #0xc]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207064C

	thumb_func_start sub_02070680
sub_02070680: ; 0x02070680
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bl sub_02050A60
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0207069E
	cmp r0, #1
	beq _020706BC
	b _02070706
_0207069E:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB98
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x10]
	mov r1, #1
	bl ov6_02243F88
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02070706
_020706BC:
	ldr r0, [r4, #0x14]
	bl ov6_02243FBC
	cmp r0, #0
	beq _02070706
	ldr r0, [r4, #0x14]
	bl ov6_02243FC8
	mov r1, #0xa
	mov r2, #0xc
	ldrh r0, [r4, #8]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	bl sub_0203A8A0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	bne _020706E4
	bl GF_AssertFail
_020706E4:
	add r0, r6, #0
	add r1, sp, #8
	bl sub_0203A7F0
	ldr r0, [sp, #0x14]
	mov r2, #1
	str r0, [sp]
	str r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	sub r2, r2, #2
	bl sub_02053AFC
	add r0, r4, #0
	bl sub_020181C4
_02070706:
	mov r0, #0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02070680