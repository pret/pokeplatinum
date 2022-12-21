	.include "macros/function.inc"
	.include "include/unk_0205C980.inc"

	

	.text


	thumb_func_start sub_0205C980
sub_0205C980: ; 0x0205C980
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	lsl r0, r0, #0x1d
	ldr r2, _0205C9B4 ; =0x020ED770
	lsr r0, r0, #0x19
	add r5, r2, r0
	lsl r2, r1, #3
	mov r1, #0xc
	ldr r0, _0205C9B8 ; =0x020ED7F0
	mul r1, r2
	mov r4, #0
	add r6, r0, r1
_0205C998:
	ldr r3, [r5, #0]
	mov r2, #0xc
	mul r2, r3
	add r2, r6, r2
	ldr r2, [r2, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200B960
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0205C998
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205C9B4: .word 0x020ED770
_0205C9B8: .word 0x020ED7F0
	thumb_func_end sub_0205C980

	thumb_func_start sub_0205C9BC
sub_0205C9BC: ; 0x0205C9BC
	lsl r0, r0, #0x1d
	lsr r3, r0, #0x19
	ldr r0, _0205C9D8 ; =0x020ED770
	lsl r2, r2, #2
	add r0, r0, r3
	ldr r0, [r2, r0]
	lsl r1, r1, #3
	add r1, r1, r0
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0205C9DC ; =0x020ED7F0
	ldr r0, [r0, r2]
	bx lr
	; .align 2, 0
_0205C9D8: .word 0x020ED770
_0205C9DC: .word 0x020ED7F0
	thumb_func_end sub_0205C9BC

	thumb_func_start sub_0205C9E0
sub_0205C9E0: ; 0x0205C9E0
	push {r3, r4}
	lsl r4, r0, #3
	mov r0, #0xc
	ldr r2, _0205CA08 ; =0x020ED7F0
	mul r0, r4
	mov r3, #0
	add r2, r2, r0
_0205C9EE:
	ldr r0, [r2, #0]
	cmp r1, r0
	bne _0205C9FA
	add r0, r3, r4
	pop {r3, r4}
	bx lr
_0205C9FA:
	add r3, r3, #1
	add r2, #0xc
	cmp r3, #8
	blt _0205C9EE
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0205CA08: .word 0x020ED7F0
	thumb_func_end sub_0205C9E0

	thumb_func_start sub_0205CA0C
sub_0205CA0C: ; 0x0205CA0C
	ldr r3, _0205CA10 ; =sub_0205C9E0
	bx r3
	; .align 2, 0
_0205CA10: .word sub_0205C9E0
	thumb_func_end sub_0205CA0C

	thumb_func_start sub_0205CA14
sub_0205CA14: ; 0x0205CA14
	push {r4, lr}
	add r4, r2, #0
	bl sub_0205C9E0
	cmp r4, #0
	beq _0205CA42
	cmp r4, #1
	beq _0205CA32
	cmp r4, #2
	bne _0205CA3C
	mov r1, #0xc
	mul r1, r0
	ldr r0, _0205CA44 ; =0x020ED7F4
	ldr r0, [r0, r1]
	pop {r4, pc}
_0205CA32:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _0205CA48 ; =0x020ED7F8
	ldr r0, [r0, r1]
	pop {r4, pc}
_0205CA3C:
	bl sub_02022974
	mov r0, #0
_0205CA42:
	pop {r4, pc}
	; .align 2, 0
_0205CA44: .word 0x020ED7F4
_0205CA48: .word 0x020ED7F8
	thumb_func_end sub_0205CA14

	thumb_func_start sub_0205CA4C
sub_0205CA4C: ; 0x0205CA4C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x56
	mov r1, #7
	add r2, sp, #0
	add r3, r5, #0
	bl sub_02006F88
	mov r1, #9
	add r4, r0, #0
	add r0, r5, #0
	lsl r1, r1, #6
	bl sub_02018144
	add r5, r0, #0
	ldr r0, [sp]
	mov r2, #0
	ldr r3, [r0, #0xc]
	mov r0, #1
	add r6, r5, #0
	lsl r0, r0, #8
_0205CA78:
	ldrh r1, [r3]
	add r2, r2, #1
	add r3, r3, #2
	strh r1, [r6]
	add r6, r6, #2
	cmp r2, r0
	blt _0205CA78
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205CA4C

	.rodata


	.global Unk_020ED770
Unk_020ED770: ; 0x020ED770
	.incbin "incbin/arm9_rodata.bin", 0x8B30, 0x8BB0 - 0x8B30

	.global Unk_020ED7F0
Unk_020ED7F0: ; 0x020ED7F0
	.incbin "incbin/arm9_rodata.bin", 0x8BB0, 0xC0

