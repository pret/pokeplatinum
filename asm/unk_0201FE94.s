	.include "macros/function.inc"
	.include "include/unk_0201FE94.inc"

	

	.text


	thumb_func_start sub_0201FE94
sub_0201FE94: ; 0x0201FE94
	push {r4, lr}
	add r4, r0, #0
	bl GX_ResetBankForBG
	bl GX_ResetBankForBGExtPltt
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForSubBGExtPltt
	bl GX_ResetBankForOBJ
	bl GX_ResetBankForOBJExtPltt
	bl GX_ResetBankForSubOBJ
	bl GX_ResetBankForSubOBJExtPltt
	bl GX_ResetBankForTex
	bl GX_ResetBankForTexPltt
	ldr r0, [r4, #0]
	bl GX_SetBankForBG
	ldr r0, [r4, #4]
	bl GX_SetBankForBGExtPltt
	ldr r0, [r4, #8]
	bl GX_SetBankForSubBG
	ldr r0, [r4, #0xc]
	bl GX_SetBankForSubBGExtPltt
	ldr r0, [r4, #0x10]
	bl GX_SetBankForOBJ
	ldr r0, [r4, #0x14]
	bl GX_SetBankForOBJExtPltt
	ldr r0, [r4, #0x18]
	bl GX_SetBankForSubOBJ
	ldr r0, [r4, #0x1c]
	bl GX_SetBankForSubOBJExtPltt
	ldr r0, [r4, #0x20]
	bl GX_SetBankForTex
	ldr r0, [r4, #0x24]
	bl GX_SetBankForTexPltt
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201FE94

	thumb_func_start sub_0201FF00
sub_0201FF00: ; 0x0201FF00
	ldr r0, _0201FF08 ; =0x021C0768
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_0201FF08: .word 0x021C0768
	thumb_func_end sub_0201FF00

	thumb_func_start sub_0201FF0C
sub_0201FF0C: ; 0x0201FF0C
	cmp r1, #1
	bne _0201FF1A
	ldr r1, _0201FF40 ; =0x021C0768
	ldr r1, [r1, #4]
	tst r1, r0
	beq _0201FF22
	bx lr
_0201FF1A:
	ldr r1, _0201FF40 ; =0x021C0768
	ldr r1, [r1, #4]
	tst r1, r0
	beq _0201FF3C
_0201FF22:
	ldr r1, _0201FF40 ; =0x021C0768
	ldr r2, [r1, #4]
	add r3, r2, #0
	eor r3, r0
	mov r2, #1
	lsl r2, r2, #0x1a
	str r3, [r1, #4]
	ldr r1, [r2, #0]
	ldr r0, _0201FF44 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r3, #8
	orr r0, r1
	str r0, [r2, #0]
_0201FF3C:
	bx lr
	nop
_0201FF40: .word 0x021C0768
_0201FF44: .word 0xFFFFE0FF
	thumb_func_end sub_0201FF0C

	thumb_func_start sub_0201FF48
sub_0201FF48: ; 0x0201FF48
	ldr r1, _0201FF60 ; =0x021C0768
	mov r3, #1
	str r0, [r1, #4]
	lsl r3, r3, #0x1a
	ldr r2, [r3, #0]
	ldr r1, _0201FF64 ; =0xFFFFE0FF
	lsl r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r3, #0]
	bx lr
	nop
_0201FF60: .word 0x021C0768
_0201FF64: .word 0xFFFFE0FF
	thumb_func_end sub_0201FF48

	thumb_func_start sub_0201FF68
sub_0201FF68: ; 0x0201FF68
	ldr r0, _0201FF70 ; =0x021C0768
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_0201FF70: .word 0x021C0768
	thumb_func_end sub_0201FF68

	thumb_func_start sub_0201FF74
sub_0201FF74: ; 0x0201FF74
	cmp r1, #1
	bne _0201FF82
	ldr r1, _0201FFA4 ; =0x021C0768
	ldr r1, [r1, #0]
	tst r1, r0
	beq _0201FF8A
	bx lr
_0201FF82:
	ldr r1, _0201FFA4 ; =0x021C0768
	ldr r1, [r1, #0]
	tst r1, r0
	beq _0201FFA2
_0201FF8A:
	ldr r1, _0201FFA4 ; =0x021C0768
	ldr r2, [r1, #0]
	add r3, r2, #0
	eor r3, r0
	ldr r2, _0201FFA8 ; =0x04001000
	str r3, [r1, #0]
	ldr r1, [r2, #0]
	ldr r0, _0201FFAC ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r3, #8
	orr r0, r1
	str r0, [r2, #0]
_0201FFA2:
	bx lr
	; .align 2, 0
_0201FFA4: .word 0x021C0768
_0201FFA8: .word 0x04001000
_0201FFAC: .word 0xFFFFE0FF
	thumb_func_end sub_0201FF74

	thumb_func_start sub_0201FFB0
sub_0201FFB0: ; 0x0201FFB0
	ldr r1, _0201FFC4 ; =0x021C0768
	ldr r3, _0201FFC8 ; =0x04001000
	str r0, [r1, #0]
	ldr r2, [r3, #0]
	ldr r1, _0201FFCC ; =0xFFFFE0FF
	lsl r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_0201FFC4: .word 0x021C0768
_0201FFC8: .word 0x04001000
_0201FFCC: .word 0xFFFFE0FF
	thumb_func_end sub_0201FFB0

	thumb_func_start sub_0201FFD0
sub_0201FFD0: ; 0x0201FFD0
	push {r3, lr}
	bl GX_DispOn
	ldr r2, _0201FFE4 ; =0x04001000
	mov r0, #1
	ldr r1, [r2, #0]
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_0201FFE4: .word 0x04001000
	thumb_func_end sub_0201FFD0

	thumb_func_start sub_0201FFE8
sub_0201FFE8: ; 0x0201FFE8
	ldr r0, _02020008 ; =0x021BF6DC
	ldr r2, _0202000C ; =0x04000304
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0201FFFC
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	bx lr
_0201FFFC:
	ldrh r1, [r2]
	ldr r0, _02020010 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2]
	bx lr
	nop
_02020008: .word 0x021BF6DC
_0202000C: .word 0x04000304
_02020010: .word 0xFFFF7FFF
	thumb_func_end sub_0201FFE8

	thumb_func_start sub_02020014
sub_02020014: ; 0x02020014
	ldr r0, _0202001C ; =0x021C0768
	ldr r0, [r0, #4]
	bx lr
	nop
_0202001C: .word 0x021C0768
	thumb_func_end sub_02020014

	.bss


	.global Unk_021C0768
Unk_021C0768: ; 0x021C0768
	.space 0x4

	.global Unk_021C076C
Unk_021C076C: ; 0x021C076C
	.space 0x4

