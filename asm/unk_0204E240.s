	.include "macros/function.inc"
	.include "include/unk_0204E240.inc"

	

	.text


	thumb_func_start sub_0204E240
sub_0204E240: ; 0x0204E240
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r4, #0
	ldr r7, _0204E288 ; =0x020EBFFC
	str r0, [sp]
	add r5, r4, #0
_0204E260:
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	lsl r1, r4, #2
	ldrh r1, [r7, r1]
	mov r2, #4
	bl sub_0207D730
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	blo _0204E260
	ldr r0, [sp]
	strh r5, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204E288: .word 0x020EBFFC
	thumb_func_end sub_0204E240

	thumb_func_start sub_0204E28C
sub_0204E28C: ; 0x0204E28C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	mov r5, #0
	ldr r2, _0204E2D8 ; =0x020EBFFC
	strh r5, [r4]
_0204E2B8:
	lsl r3, r5, #2
	ldrh r1, [r2, r3]
	cmp r0, r1
	bne _0204E2C8
	ldr r0, _0204E2DC ; =0x020EBFFE
	ldrh r0, [r0, r3]
	strh r0, [r4]
	b _0204E2D2
_0204E2C8:
	add r1, r5, #1
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	cmp r5, #7
	blo _0204E2B8
_0204E2D2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0204E2D8: .word 0x020EBFFC
_0204E2DC: .word 0x020EBFFE
	thumb_func_end sub_0204E28C

	thumb_func_start sub_0204E2E0
sub_0204E2E0: ; 0x0204E2E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	str r0, [sp]
	mov r4, #0
	ldr r0, [sp, #8]
	add r5, r4, #0
	strh r4, [r0]
	ldr r0, [sp, #4]
	strh r4, [r0]
_0204E330:
	ldr r0, [r6, #0xc]
	lsl r7, r4, #2
	bl sub_0207D990
	ldr r1, _0204E36C ; =0x020EBFFC
	mov r2, #4
	ldrh r1, [r1, r7]
	bl sub_0207D730
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp]
	cmp r5, r0
	blo _0204E35C
	ldr r0, _0204E36C ; =0x020EBFFC
	ldrh r1, [r0, r7]
	ldr r0, [sp, #8]
	strh r1, [r0]
	ldr r0, [sp, #4]
	strh r4, [r0]
	b _0204E366
_0204E35C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	blo _0204E330
_0204E366:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0204E36C: .word 0x020EBFFC
	thumb_func_end sub_0204E2E0

	thumb_func_start sub_0204E370
sub_0204E370: ; 0x0204E370
	mov r0, #0
	bx lr
	thumb_func_end sub_0204E370

	thumb_func_start sub_0204E374
sub_0204E374: ; 0x0204E374
	mov r0, #0
	bx lr
	thumb_func_end sub_0204E374

	.rodata


	.global Unk_020EBFFC
Unk_020EBFFC: ; 0x020EBFFC
	.incbin "incbin/arm9_rodata.bin", 0x73BC, 0x1C

