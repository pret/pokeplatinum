	.include "macros/function.inc"
	.include "include/unk_0201D670.inc"

	

	.text


	thumb_func_start sub_0201D670
sub_0201D670: ; 0x0201D670
	ldr r1, _0201D678 ; =0x02100840
	str r0, [r1, #0]
	bx lr
	nop
_0201D678: .word 0x02100840
	thumb_func_end sub_0201D670

	thumb_func_start sub_0201D67C
sub_0201D67C: ; 0x0201D67C
	push {r4, r5, r6, lr}
	ldr r4, _0201D6AC ; =0x021C04E0
	mov r5, #0
_0201D682:
	ldr r3, [r4, #0]
	cmp r3, #0
	bne _0201D69C
	ldr r6, _0201D6AC ; =0x021C04E0
	lsl r4, r5, #2
	bl sub_0200DA20
	str r0, [r6, r4]
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _0201D6A4
	mov r5, #8
	b _0201D6A4
_0201D69C:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #8
	blt _0201D682
_0201D6A4:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	nop
_0201D6AC: .word 0x021C04E0
	thumb_func_end sub_0201D67C

	thumb_func_start sub_0201D6B0
sub_0201D6B0: ; 0x0201D6B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r5, #8
	blo _0201D6BC
	bl GF_AssertFail
_0201D6BC:
	ldr r6, _0201D6F4 ; =0x021C04E0
	lsl r4, r5, #2
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _0201D6CA
	bl GF_AssertFail
_0201D6CA:
	cmp r5, #8
	bhs _0201D6F0
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _0201D6F0
	bl sub_0201CED0
	add r5, r0, #0
	beq _0201D6E6
	bl sub_0201DBD8
	add r0, r5, #0
	bl sub_020181C4
_0201D6E6:
	ldr r0, [r6, r4]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r6, r4]
_0201D6F0:
	pop {r4, r5, r6, pc}
	nop
_0201D6F4: .word 0x021C04E0
	thumb_func_end sub_0201D6B0

	thumb_func_start sub_0201D6F8
sub_0201D6F8: ; 0x0201D6F8
	lsl r1, r0, #2
	ldr r0, _0201D70C ; =0x021C04E0
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0201D706
	mov r0, #1
	bx lr
_0201D706:
	mov r0, #0
	bx lr
	nop
_0201D70C: .word 0x021C04E0
	thumb_func_end sub_0201D6F8

	thumb_func_start sub_0201D710
sub_0201D710: ; 0x0201D710
	mov r1, #0
	ldr r2, _0201D720 ; =0x021C04E0
	add r0, r1, #0
_0201D716:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #8
	blt _0201D716
	bx lr
	; .align 2, 0
_0201D720: .word 0x021C04E0
	thumb_func_end sub_0201D710

	thumb_func_start sub_0201D724
sub_0201D724: ; 0x0201D724
	push {r3, lr}
	bl sub_0201D6F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end sub_0201D724

	thumb_func_start sub_0201D730
sub_0201D730: ; 0x0201D730
	ldr r3, _0201D734 ; =sub_0201D6B0
	bx r3
	; .align 2, 0
_0201D734: .word sub_0201D6B0
	thumb_func_end sub_0201D730

	thumb_func_start sub_0201D738
sub_0201D738: ; 0x0201D738
	push {lr}
	sub sp, #0x1c
	str r2, [sp]
	str r0, [sp, #4]
	add r2, sp, #0
	strb r1, [r2, #9]
	ldr r0, [sp, #0x20]
	strb r3, [r2, #0xa]
	strb r0, [r2, #0xb]
	strh r3, [r2, #0xc]
	strh r0, [r2, #0xe]
	ldr r0, _0201D788 ; =0x02100840
	lsl r1, r1, #3
	ldr r0, [r0, #0]
	add r1, r0, r1
	ldrb r0, [r1, #2]
	strh r0, [r2, #0x10]
	ldrb r0, [r1, #3]
	strh r0, [r2, #0x12]
	ldrb r0, [r1, #4]
	strb r0, [r2, #0x14]
	ldrb r0, [r1, #5]
	strb r0, [r2, #0x15]
	ldrb r0, [r1, #6]
	strb r0, [r2, #0x16]
	ldrb r0, [r1, #7]
	ldr r1, [sp, #0x24]
	strb r0, [r2, #0x17]
	mov r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1a]
	mov r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r2, [sp, #0x28]
	add r0, sp, #0
	bl sub_0201D834
	add sp, #0x1c
	pop {pc}
	nop
_0201D788: .word 0x02100840
	thumb_func_end sub_0201D738

	thumb_func_start sub_0201D78C
sub_0201D78C: ; 0x0201D78C
	push {lr}
	sub sp, #0x1c
	str r2, [sp]
	str r0, [sp, #4]
	add r2, sp, #0
	strb r1, [r2, #9]
	ldr r0, [sp, #0x20]
	strb r3, [r2, #0xa]
	strb r0, [r2, #0xb]
	strh r3, [r2, #0xc]
	strh r0, [r2, #0xe]
	ldr r0, _0201D7DC ; =0x02100840
	lsl r1, r1, #3
	ldr r0, [r0, #0]
	add r1, r0, r1
	ldrb r0, [r1, #2]
	strh r0, [r2, #0x10]
	ldrb r0, [r1, #3]
	strh r0, [r2, #0x12]
	ldrb r0, [r1, #4]
	ldr r1, [sp, #0x28]
	strb r0, [r2, #0x14]
	lsr r0, r1, #0x10
	strb r0, [r2, #0x15]
	lsr r0, r1, #8
	strb r0, [r2, #0x17]
	strb r1, [r2, #0x16]
	mov r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1a]
	mov r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x2c]
	add r0, sp, #0
	bl sub_0201D834
	add sp, #0x1c
	pop {pc}
	nop
_0201D7DC: .word 0x02100840
	thumb_func_end sub_0201D78C

	thumb_func_start sub_0201D7E0
sub_0201D7E0: ; 0x0201D7E0
	push {lr}
	sub sp, #0x1c
	str r2, [sp]
	str r0, [sp, #4]
	add r2, sp, #0
	strb r1, [r2, #9]
	ldr r0, [sp, #0x20]
	strb r3, [r2, #0xa]
	strb r0, [r2, #0xb]
	strh r3, [r2, #0xc]
	strh r0, [r2, #0xe]
	ldr r0, [sp, #0x2c]
	strh r0, [r2, #0x10]
	ldr r0, [sp, #0x30]
	strh r0, [r2, #0x12]
	ldr r0, _0201D830 ; =0x02100840
	ldr r3, [r0, #0]
	lsl r0, r1, #3
	add r0, r3, r0
	ldrb r0, [r0, #4]
	ldr r1, [sp, #0x28]
	strb r0, [r2, #0x14]
	lsr r0, r1, #0x10
	strb r0, [r2, #0x15]
	lsr r0, r1, #8
	strb r0, [r2, #0x17]
	strb r1, [r2, #0x16]
	mov r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1a]
	mov r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x34]
	add r0, sp, #0
	bl sub_0201D834
	add sp, #0x1c
	pop {pc}
	nop
_0201D830: .word 0x02100840
	thumb_func_end sub_0201D7E0

	thumb_func_start sub_0201D834
sub_0201D834: ; 0x0201D834
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0201D970 ; =0x02100840
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r5, r2, #0
	cmp r0, #0
	bne _0201D848
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_0201D848:
	mov r0, #0
	mov r1, #0x34
	bl sub_02018144
	add r4, r0, #0
	mov r1, #1
	add r0, #0x27
	strb r1, [r0]
	add r0, r4, #0
	mov r3, #0
	add r0, #0x28
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r2, [r0]
	mov r0, #0x7f
	bic r2, r0
	lsl r0, r6, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x7f
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2a
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x2b
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x2d
	strb r3, [r0]
	add r1, r3, #0
_0201D890:
	add r0, r4, r3
	add r0, #0x20
	add r3, r3, #1
	strb r1, [r0]
	cmp r3, #7
	blt _0201D890
	add r3, r7, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0]
	bl sub_02023E2C
	str r0, [r4, #0]
	ldr r0, _0201D974 ; =0x021C04D8
	str r5, [r4, #0x1c]
	mov r1, #0
	strb r1, [r0]
	add r0, r4, #0
	bl sub_0201DB48
	cmp r6, #0xff
	beq _0201D916
	cmp r6, #0
	beq _0201D916
	add r0, r4, #0
	add r0, #0x29
	ldrb r2, [r0]
	mov r1, #0x7f
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x19
	add r1, #0xff
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x7f
	and r1, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r1, [r0]
	mov r0, #0x80
	mov r2, #1
	orr r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	ldr r0, _0201D978 ; =sub_0201D97C
	add r1, r4, #0
	bl sub_0201D67C
	add r1, r4, #0
	add r1, #0x2c
	strb r0, [r1]
	add r4, #0x2c
	ldrb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0201D916:
	add r0, r4, #0
	add r0, #0x29
	ldrb r1, [r0]
	mov r0, #0x7f
	mov r5, #0
	bic r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r1, [r0]
	mov r0, #0x80
	bic r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	ldrb r0, [r7, #0x15]
	ldrb r1, [r7, #0x16]
	ldrb r2, [r7, #0x17]
	bl sub_0201D9FC
	mov r7, #1
	lsl r7, r7, #0xa
_0201D946:
	add r0, r4, #0
	bl sub_0201D9E8
	cmp r0, #1
	beq _0201D956
	add r5, r5, #1
	cmp r5, r7
	blo _0201D946
_0201D956:
	cmp r6, #0xff
	beq _0201D960
	ldr r0, [r4, #4]
	bl sub_0201A954
_0201D960:
	add r0, r4, #0
	bl sub_0201DBD8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201D970: .word 0x02100840
_0201D974: .word 0x021C04D8
_0201D978: .word sub_0201D97C
	thumb_func_end sub_0201D834

	thumb_func_start sub_0201D97C
sub_0201D97C: ; 0x0201D97C
	push {r4, lr}
	ldr r0, _0201D9E4 ; =0x021C04D8
	add r4, r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201D9E2
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201D9D6
	mov r0, #0
	strh r0, [r4, #0x2e]
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x16]
	ldrb r2, [r4, #0x17]
	bl sub_0201D9FC
	add r0, r4, #0
	bl sub_0201D9E8
	cmp r0, #0
	beq _0201D9B4
	cmp r0, #1
	beq _0201D9CC
	cmp r0, #3
	beq _0201D9BA
	pop {r4, pc}
_0201D9B4:
	ldr r0, [r4, #4]
	bl sub_0201A954
_0201D9BA:
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	beq _0201D9E2
	ldrh r1, [r4, #0x2e]
	add r0, r4, #0
	blx r2
	add r4, #0x2d
	strb r0, [r4]
	pop {r4, pc}
_0201D9CC:
	add r4, #0x2c
	ldrb r0, [r4]
	bl sub_0201D6B0
	pop {r4, pc}
_0201D9D6:
	ldrh r1, [r4, #0x2e]
	ldr r2, [r4, #0x1c]
	add r0, r4, #0
	blx r2
	add r4, #0x2d
	strb r0, [r4]
_0201D9E2:
	pop {r4, pc}
	; .align 2, 0
_0201D9E4: .word 0x021C04D8
	thumb_func_end sub_0201D97C

	thumb_func_start sub_0201D9E8
sub_0201D9E8: ; 0x0201D9E8
	push {r4, lr}
	add r4, r0, #0
_0201D9EC:
	ldrb r0, [r4, #9]
	add r1, r4, #0
	bl sub_02002D18
	cmp r0, #2
	beq _0201D9EC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201D9E8

	thumb_func_start sub_0201D9FC
sub_0201D9FC: ; 0x0201D9FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r3, _0201DA98 ; =0x021C04D8
	mov r5, #0
	str r5, [sp, #0x20]
	str r0, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	strh r1, [r3, #6]
	strh r0, [r3, #2]
	add r0, sp, #0x20
	strh r2, [r3, #4]
	str r5, [sp, #0x14]
	str r0, [sp, #8]
	mov ip, r0
	mov lr, r0
	str r0, [sp, #0x18]
_0201DA1E:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0]
	str r0, [sp, #0x1c]
_0201DA2C:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, lr
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	lsl r7, r0, #4
_0201DA3A:
	ldr r0, [sp]
	mov r3, #0
	ldr r0, [r0, #0]
	mov r4, ip
	lsl r6, r0, #8
_0201DA44:
	ldr r0, [r4, #0]
	add r1, r7, #0
	lsl r0, r0, #0xc
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x1c]
	add r3, r3, #1
	add r2, r0, #0
	orr r2, r1
	lsl r1, r5, #1
	ldr r0, _0201DA9C ; =0x021C0500
	add r5, r5, #1
	add r4, r4, #4
	strh r2, [r0, r1]
	cmp r3, #4
	blt _0201DA44
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _0201DA3A
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0201DA2C
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0201DA1E
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201DA98: .word 0x021C04D8
_0201DA9C: .word 0x021C0500
	thumb_func_end sub_0201D9FC

	thumb_func_start sub_0201DAA0
sub_0201DAA0: ; 0x0201DAA0
	ldrh r2, [r0]
	lsr r2, r2, #8
	lsl r3, r2, #1
	ldr r2, _0201DB44 ; =0x021C0500
	ldrh r3, [r2, r3]
	strh r3, [r1]
	ldrh r3, [r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #2]
	ldrh r3, [r0, #2]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #4]
	ldrh r3, [r0, #2]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #6]
	ldrh r3, [r0, #4]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #8]
	ldrh r3, [r0, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xa]
	ldrh r3, [r0, #6]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xc]
	ldrh r3, [r0, #6]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xe]
	ldrh r3, [r0, #8]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x10]
	ldrh r3, [r0, #8]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x12]
	ldrh r3, [r0, #0xa]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x14]
	ldrh r3, [r0, #0xa]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x16]
	ldrh r3, [r0, #0xc]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x18]
	ldrh r3, [r0, #0xc]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x1a]
	ldrh r3, [r0, #0xe]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x1c]
	ldrh r0, [r0, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x17
	ldrh r0, [r2, r0]
	strh r0, [r1, #0x1e]
	bx lr
	; .align 2, 0
_0201DB44: .word 0x021C0500
	thumb_func_end sub_0201DAA0

	thumb_func_start sub_0201DB48
sub_0201DB48: ; 0x0201DB48
	mov r1, #0
	str r1, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201DB48

	thumb_func_start sub_0201DB50
sub_0201DB50: ; 0x0201DB50
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #8
	bl sub_02018144
	mov r2, #0
	add r5, r0, #0
	str r2, [sp]
	mov r0, #0xe
	mov r1, #5
	add r3, sp, #4
	bl sub_02006F50
	add r4, r0, #0
	ldr r0, [sp, #4]
	mov r2, #6
	ldr r0, [r0, #0x14]
	add r1, r5, #0
	lsl r2, r2, #8
	bl MIi_CpuCopy32
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201DB50

	thumb_func_start sub_0201DB8C
sub_0201DB8C: ; 0x0201DB8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	add r7, r3, #0
	ldr r5, [r4, #4]
	cmp r0, #0
	bne _0201DBA2
	bl sub_0201DB50
	str r0, [r4, #0x30]
_0201DBA2:
	mov r0, #6
	lsl r0, r0, #6
	add r6, r7, #0
	mul r6, r0
	add r0, r5, #0
	ldr r4, [r4, #0x30]
	bl sub_0201C294
	sub r0, r0, #3
	lsl r0, r0, #0x13
	mov r1, #0x18
	lsr r2, r0, #0x10
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, r6
	add r3, r2, #0
	bl sub_0201ADDC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201DB8C

	thumb_func_start sub_0201DBD8
sub_0201DBD8: ; 0x0201DBD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0201DBEA
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x30]
_0201DBEA:
	pop {r4, pc}
	thumb_func_end sub_0201DBD8

	.data


	.global Unk_02100840
Unk_02100840: ; 0x02100840
	.incbin "incbin/arm9_data.bin", 0x1B60, 0x4



	.bss


	.global Unk_021C04D8
Unk_021C04D8: ; 0x021C04D8
	.space 0x2

	.global Unk_021C04DA
Unk_021C04DA: ; 0x021C04DA
	.space 0x2

	.global Unk_021C04DC
Unk_021C04DC: ; 0x021C04DC
	.space 0x2

	.global Unk_021C04DE
Unk_021C04DE: ; 0x021C04DE
	.space 0x2

	.global Unk_021C04E0
Unk_021C04E0: ; 0x021C04E0
	.space 0x20

	.global Unk_021C0500
Unk_021C0500: ; 0x021C0500
	.space 0x200

