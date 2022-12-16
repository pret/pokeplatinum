	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov104_0222EA90
ov104_0222EA90: ; 0x0222EA90
	push {r3, lr}
	cmp r1, #0xd
	bhi _0222EB4A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222EAA2: ; jump table
	.short _0222EABE - _0222EAA2 - 2 ; case 0
	.short _0222EAC8 - _0222EAA2 - 2 ; case 1
	.short _0222EAD2 - _0222EAA2 - 2 ; case 2
	.short _0222EADC - _0222EAA2 - 2 ; case 3
	.short _0222EAE6 - _0222EAA2 - 2 ; case 4
	.short _0222EAF0 - _0222EAA2 - 2 ; case 5
	.short _0222EAFA - _0222EAA2 - 2 ; case 6
	.short _0222EB04 - _0222EAA2 - 2 ; case 7
	.short _0222EB0E - _0222EAA2 - 2 ; case 8
	.short _0222EB18 - _0222EAA2 - 2 ; case 9
	.short _0222EB22 - _0222EAA2 - 2 ; case 10
	.short _0222EB2C - _0222EAA2 - 2 ; case 11
	.short _0222EB36 - _0222EAA2 - 2 ; case 12
	.short _0222EB40 - _0222EAA2 - 2 ; case 13
_0222EABE:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB54 ; =0x0223F394
	ldr r0, [r0, r1]
	pop {r3, pc}
_0222EAC8:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB58 ; =0x0223F3A0
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EAD2:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB5C ; =0x0223F3A2
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EADC:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB60 ; =0x0223F3A4
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EAE6:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB64 ; =0x0223F3A6
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EAF0:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB68 ; =0x0223F3A8
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EAFA:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB6C ; =0x0223F3AA
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB04:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB70 ; =0x0223F3AC
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB0E:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB74 ; =0x0223F3AE
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB18:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB78 ; =0x0223F3B0
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB22:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB7C ; =0x0223F3B2
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB2C:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB80 ; =0x0223F3B4
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB36:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB84 ; =0x0223F3B6
	ldrb r0, [r0, r1]
	pop {r3, pc}
_0222EB40:
	mov r1, #0x28
	mul r1, r0
	ldr r0, _0222EB88 ; =0x0223F3B7
	ldrb r0, [r0, r1]
	pop {r3, pc}
_0222EB4A:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_0222EB54: .word 0x0223F394
_0222EB58: .word 0x0223F3A0
_0222EB5C: .word 0x0223F3A2
_0222EB60: .word 0x0223F3A4
_0222EB64: .word 0x0223F3A6
_0222EB68: .word 0x0223F3A8
_0222EB6C: .word 0x0223F3AA
_0222EB70: .word 0x0223F3AC
_0222EB74: .word 0x0223F3AE
_0222EB78: .word 0x0223F3B0
_0222EB7C: .word 0x0223F3B2
_0222EB80: .word 0x0223F3B4
_0222EB84: .word 0x0223F3B6
_0222EB88: .word 0x0223F3B7
	thumb_func_end ov104_0222EA90

	thumb_func_start ov104_0222EB8C
ov104_0222EB8C: ; 0x0222EB8C
	push {r3, lr}
	mov r3, #0x28
	mul r3, r2
	ldr r2, _0222EBA0 ; =0x0223F398
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _0222EB9C
	blx r2
_0222EB9C:
	pop {r3, pc}
	nop
_0222EBA0: .word 0x0223F398
	thumb_func_end ov104_0222EB8C

	thumb_func_start ov104_0222EBA4
ov104_0222EBA4: ; 0x0222EBA4
	push {r3, lr}
	mov r3, #0x28
	mul r3, r2
	ldr r2, _0222EBB8 ; =0x0223F39C
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _0222EBB4
	blx r2
_0222EBB4:
	pop {r3, pc}
	nop
_0222EBB8: .word 0x0223F39C
	thumb_func_end ov104_0222EBA4

	thumb_func_start ov104_0222EBBC
ov104_0222EBBC: ; 0x0222EBBC
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0x5e
	mov r1, #0x20
	bl sub_02018144
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov104_0222EBBC

	thumb_func_start ov104_0222EBCC
ov104_0222EBCC: ; 0x0222EBCC
	ldr r3, _0222EBD4 ; =sub_020181C4
	ldr r0, [r1, #0]
	bx r3
	nop
_0222EBD4: .word sub_020181C4
	thumb_func_end ov104_0222EBCC

	thumb_func_start ov104_0222EBD8
ov104_0222EBD8: ; 0x0222EBD8
	push {r4, lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	bl ov104_0223D9E4
	str r0, [r4, #0]
	mov r0, #0
	mov r1, #1
	bl sub_02019060
	mov r0, #2
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	add r1, r0, #0
	bl sub_02019060
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0222EBD8

	thumb_func_start ov104_0222EC0C
ov104_0222EC0C: ; 0x0222EC0C
	ldr r3, _0222EC14 ; =ov104_0223DA28
	ldr r0, [r1, #0]
	bx r3
	nop
_0222EC14: .word ov104_0223DA28
	thumb_func_end ov104_0222EC0C

	thumb_func_start ov104_0222EC18
ov104_0222EC18: ; 0x0222EC18
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0222EC18

	thumb_func_start ov104_0222EC1C
ov104_0222EC1C: ; 0x0222EC1C
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0222EC1C

	thumb_func_start ov104_0222EC20
ov104_0222EC20: ; 0x0222EC20
	push {r3, lr}
	mov r0, #0
	mov r1, #1
	bl sub_02019060
	mov r0, #2
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	add r1, r0, #0
	bl sub_02019060
	mov r3, #0x14
	ldr r0, _0222EC54 ; =0x04000050
	mov r1, #1
	mov r2, #0x3c
	str r3, [sp]
	bl sub_020BF55C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	pop {r3, pc}
	nop
_0222EC54: .word 0x04000050
	thumb_func_end ov104_0222EC20

	thumb_func_start ov104_0222EC58
ov104_0222EC58: ; 0x0222EC58
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0222EC58

	thumb_func_start ov104_0222EC5C
ov104_0222EC5C: ; 0x0222EC5C
	push {r3, lr}
	mov r0, #2
	mov r1, #3
	bl sub_02019060
	mov r0, #3
	mov r1, #2
	bl sub_02019060
	pop {r3, pc}
	thumb_func_end ov104_0222EC5C

	thumb_func_start ov104_0222EC70
ov104_0222EC70: ; 0x0222EC70
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0222EC70

	thumb_func_start ov104_0222EC74
ov104_0222EC74: ; 0x0222EC74
	push {r3, lr}
	ldr r0, _0222EC88 ; =0x04000050
	mov r3, #0x14
	mov r1, #1
	mov r2, #0x3c
	str r3, [sp]
	bl sub_020BF55C
	pop {r3, pc}
	nop
_0222EC88: .word 0x04000050
	thumb_func_end ov104_0222EC74

	thumb_func_start ov104_0222EC8C
ov104_0222EC8C: ; 0x0222EC8C
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0222EC8C

	thumb_func_start ov104_0222EC90
ov104_0222EC90: ; 0x0222EC90
	push {r4, lr}
	ldr r0, [r0, #0]
	add r4, r1, #0
	bl ov104_0223C164
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0222EC90

	thumb_func_start ov104_0222ECA0
ov104_0222ECA0: ; 0x0222ECA0
	ldr r3, _0222ECA8 ; =ov104_0223C23C
	ldr r0, [r1, #0]
	bx r3
	nop
_0222ECA8: .word ov104_0223C23C
	thumb_func_end ov104_0222ECA0

	thumb_func_start ov104_0222ECAC
ov104_0222ECAC: ; 0x0222ECAC
	push {r3, lr}
	mov r0, #1
	mov r1, #0
	bl sub_02019060
	mov r0, #0
	mov r1, #2
	bl sub_02019060
	mov r0, #2
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	add r1, r0, #0
	bl sub_02019060
	mov r3, #0x14
	ldr r0, _0222ECE0 ; =0x04000050
	mov r1, #1
	mov r2, #0x3c
	str r3, [sp]
	bl sub_020BF55C
	pop {r3, pc}
	nop
_0222ECE0: .word 0x04000050
	thumb_func_end ov104_0222ECAC

	thumb_func_start ov104_0222ECE4
ov104_0222ECE4: ; 0x0222ECE4
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0222ECE4

	.rodata


	.global Unk_ov104_0223F394
Unk_ov104_0223F394: ; 0x0223F394
	.incbin "incbin/overlay104_rodata.bin", 0x104, 0x2A8

