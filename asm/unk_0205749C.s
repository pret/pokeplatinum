	.include "macros/function.inc"
	.include "include/unk_0205749C.inc"

	

	.text


	thumb_func_start sub_0205749C
sub_0205749C: ; 0x0205749C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018184
	add r2, r0, #0
	add r3, r2, #0
	mov r1, #0x10
	mov r0, #0
_020574B2:
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _020574B2
	ldr r1, _020574C8 ; =sub_020574CC
	add r0, r5, #0
	strh r4, [r2, #2]
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_020574C8: .word sub_020574CC
	thumb_func_end sub_0205749C

	thumb_func_start sub_020574CC
sub_020574CC: ; 0x020574CC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrh r1, [r4]
	cmp r1, #0
	beq _020574EA
	cmp r1, #1
	beq _02057508
	b _02057510
_020574EA:
	ldr r0, [r5, #0xc]
	add r5, #0xc4
	str r0, [r4, #8]
	ldrh r0, [r4, #2]
	ldr r1, _02057514 ; =0x020ED4CC
	add r2, r4, #4
	str r0, [r4, #0xc]
	str r5, [r4, #4]
	add r0, r6, #0
	bl sub_02050A38
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02057510
_02057508:
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_02057510:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02057514: .word 0x020ED4CC
	thumb_func_end sub_020574CC

	.rodata


	.global Unk_020ED4CC
Unk_020ED4CC: ; 0x020ED4CC
	.incbin "incbin/arm9_rodata.bin", 0x888C, 0x10

