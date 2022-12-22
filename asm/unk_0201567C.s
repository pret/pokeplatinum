	.include "macros/function.inc"
	.include "include/unk_0201567C.inc"

	

	.text


	thumb_func_start sub_0201567C
sub_0201567C: ; 0x0201567C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _02015724 ; =sub_0201576C
	mov r1, #0x50
	mov r2, #0
	bl sub_0200679C
	str r0, [sp, #4]
	bl sub_0201CED0
	add r4, r0, #0
	cmp r5, #0
	beq _020156C0
	cmp r6, #0
	bne _020156B0
	add r0, r5, #0
	mov r1, #0
	bl sub_02003164
	str r0, [sp]
	ldr r0, _02015728 ; =sub_02015870
	str r0, [r4, #4]
	b _020156DA
_020156B0:
	add r0, r5, #0
	mov r1, #1
	bl sub_02003164
	str r0, [sp]
	ldr r0, _0201572C ; =sub_0201588C
	str r0, [r4, #4]
	b _020156DA
_020156C0:
	cmp r6, #0
	bne _020156D0
	bl sub_020241F0
	str r0, [sp]
	ldr r0, _02015730 ; =sub_02015840
	str r0, [r4, #4]
	b _020156DA
_020156D0:
	bl sub_02024200
	str r0, [sp]
	ldr r0, _02015734 ; =sub_02015858
	str r0, [r4, #4]
_020156DA:
	ldr r1, [sp]
	lsl r0, r7, #5
	str r0, [sp, #8]
	add r0, r1, r0
	add r1, r4, #0
	add r1, #0xc
	mov r2, #0x20
	bl MIi_CpuCopy16
	ldr r1, [sp]
	ldr r0, [sp, #8]
	mov r2, #0x20
	add r0, r1, r0
	add r1, r4, #0
	add r1, #0x2c
	bl MIi_CpuCopy16
	ldr r0, [sp, #4]
	mov r1, #1
	str r0, [r4, #0]
	add r0, r4, #0
	str r5, [r4, #8]
	add r0, #0x4c
	strb r6, [r0]
	add r0, r4, #0
	add r0, #0x4d
	strb r7, [r0]
	add r0, r4, #0
	add r0, #0x4e
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4f
	strb r1, [r0]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02015724: .word sub_0201576C
_02015728: .word sub_02015870
_0201572C: .word sub_0201588C
_02015730: .word sub_02015840
_02015734: .word sub_02015858
	thumb_func_end sub_0201567C

	thumb_func_start sub_02015738
sub_02015738: ; 0x02015738
	cmp r1, #0
	beq _02015746
	cmp r1, #1
	beq _0201574E
	cmp r1, #2
	beq _02015756
	bx lr
_02015746:
	mov r1, #0
	add r0, #0x4e
	strb r1, [r0]
	bx lr
_0201574E:
	mov r1, #2
	add r0, #0x4e
	strb r1, [r0]
	bx lr
_02015756:
	mov r1, #3
	add r0, #0x4e
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015738

	thumb_func_start sub_02015760
sub_02015760: ; 0x02015760
	ldr r3, _02015768 ; =sub_020067D0
	ldr r0, [r0, #0]
	bx r3
	nop
_02015768: .word sub_020067D0
	thumb_func_end sub_02015760

	thumb_func_start sub_0201576C
sub_0201576C: ; 0x0201576C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #3
	bhi _020157E2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02015788: ; jump table
	.short _02015790 - _02015788 - 2 ; case 0
	.short _020157A0 - _02015788 - 2 ; case 1
	.short _020157E2 - _02015788 - 2 ; case 2
	.short _020157D4 - _02015788 - 2 ; case 3
_02015790:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4f
	strb r1, [r0]
	mov r0, #1
	add r4, #0x4e
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_020157A0:
	add r0, r4, #0
	bl sub_020157E4
	cmp r0, #1
	bne _020157B4
	add r1, r4, #0
	ldr r2, [r4, #4]
	add r0, r4, #0
	add r1, #0x2c
	blx r2
_020157B4:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _020157E2
	mov r0, #0
	add r4, #0x4f
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_020157D4:
	ldr r2, [r4, #4]
	add r0, r4, #0
	add r1, #0xc
	blx r2
	add r0, r5, #0
	bl sub_020067D0
_020157E2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201576C

	thumb_func_start sub_020157E4
sub_020157E4: ; 0x020157E4
	push {r4, r5}
	add r1, r0, #0
	add r1, #0x4f
	ldrb r1, [r1]
	cmp r1, #0
	bne _02015812
	mov r1, #0x1e
	mov r4, #0
	mov r3, #1
	lsl r1, r1, #0xa
_020157F8:
	add r2, r3, #0
	lsl r2, r4
	tst r2, r1
	beq _02015804
	ldrh r2, [r0, #0xc]
	strh r2, [r0, #0x2c]
_02015804:
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, #0x10
	blo _020157F8
	mov r0, #1
	pop {r4, r5}
	bx lr
_02015812:
	cmp r1, #0x18
	bne _0201583A
	mov r1, #0x1e
	mov r5, #0
	add r4, r0, #0
	mov r3, #1
	lsl r1, r1, #0xa
_02015820:
	add r2, r3, #0
	lsl r2, r5
	tst r2, r1
	beq _0201582C
	ldrh r2, [r0, #0x2a]
	strh r2, [r4, #0x2c]
_0201582C:
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #0x10
	blo _02015820
	mov r0, #1
	pop {r4, r5}
	bx lr
_0201583A:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end sub_020157E4

	thumb_func_start sub_02015840
sub_02015840: ; 0x02015840
	push {r3, lr}
	add r3, r0, #0
	add r3, #0x4d
	ldrb r3, [r3]
	mov r0, #0
	mov r2, #0x20
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	bl sub_0201972C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02015840

	thumb_func_start sub_02015858
sub_02015858: ; 0x02015858
	push {r3, lr}
	add r3, r0, #0
	add r3, #0x4d
	ldrb r3, [r3]
	mov r0, #4
	mov r2, #0x20
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	bl sub_0201972C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02015858

	thumb_func_start sub_02015870
sub_02015870: ; 0x02015870
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r3, #8]
	add r3, #0x4d
	ldrb r3, [r3]
	mov r2, #0
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl sub_02002FBC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02015870

	thumb_func_start sub_0201588C
sub_0201588C: ; 0x0201588C
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r3, #8]
	add r3, #0x4d
	ldrb r3, [r3]
	mov r2, #1
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl sub_02002FBC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201588C