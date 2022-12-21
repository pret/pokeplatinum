	.include "macros/function.inc"
	.include "include/unk_0209AC14.inc"

	

	.text


	thumb_func_start sub_0209AC14
sub_0209AC14: ; 0x0209AC14
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, _0209AC4C ; =0x00000233
	ldrb r0, [r4, r0]
	cmp r0, #0x10
	beq _0209AC34
	cmp r0, #0x11
	beq _0209AC42
	b _0209AC48
_0209AC34:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0209AC50
	ldr r1, _0209AC4C ; =0x00000233
	strb r0, [r4, r1]
	b _0209AC48
_0209AC42:
	add r0, r5, #0
	bl sub_0209AC80
_0209AC48:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0209AC4C: .word 0x00000233
	thumb_func_end sub_0209AC14

	thumb_func_start sub_0209AC50
sub_0209AC50: ; 0x0209AC50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0209AC62
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_0209AC62:
	ldr r0, [r4, #4]
	bl sub_0207CBAC
	mov r1, #0x91
	lsl r1, r1, #2
	strb r0, [r4, r1]
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x11
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209AC50

	thumb_func_start sub_0209AC80
sub_0209AC80: ; 0x0209AC80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509DC
	cmp r0, #0
	beq _0209ACB2
	mov r0, #1
	bl ov5_021D1744
	ldr r1, _0209ACB4 ; =0x0224CEAD
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050924
	ldr r0, _0209ACB8 ; =0x00000233
	mov r1, #0x12
	strb r1, [r4, r0]
_0209ACB2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0209ACB4: .word 0x0224CEAD
_0209ACB8: .word 0x00000233
	thumb_func_end sub_0209AC80