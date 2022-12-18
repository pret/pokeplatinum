	.include "macros/function.inc"
	.include "include/ov111_021D3548.inc"

	

	.text


	thumb_func_start ov111_021D3548
ov111_021D3548: ; 0x021D3548
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
_021D3550:
	ldr r2, _021D3574 ; =0x021D38B8
	lsl r6, r4, #4
	lsl r3, r4, #3
	add r0, r7, #0
	add r1, r5, r6
	add r2, r2, r3
	bl sub_0201A8D4
	add r0, r5, r6
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x10
	blo _021D3550
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3574: .word 0x021D38B8
	thumb_func_end ov111_021D3548

	thumb_func_start ov111_021D3578
ov111_021D3578: ; 0x021D3578
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D357E:
	lsl r0, r4, #4
	add r0, r5, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x10
	blo _021D357E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov111_021D3578

	thumb_func_start ov111_021D3594
ov111_021D3594: ; 0x021D3594
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	mov r1, #0x73
	str r1, [sp, #4]
	ldr r2, _021D35BC ; =0x000003F7
	mov r1, #2
	mov r3, #0xb
	bl sub_0200DAA4
	ldr r2, _021D35BC ; =0x000003F7
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D35BC: .word 0x000003F7
	thumb_func_end ov111_021D3594

	thumb_func_start ov111_021D35C0
ov111_021D35C0: ; 0x021D35C0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	bl sub_0201C290
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x73
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _021D35FC ; =0x000003D9
	mov r3, #0xa
	bl sub_0200DD0C
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _021D35FC ; =0x000003D9
	add r0, r4, #0
	mov r1, #0
	mov r3, #0xa
	bl sub_0200E060
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D35FC: .word 0x000003D9
	thumb_func_end ov111_021D35C0

	.rodata


	.global Unk_ov111_021D38B8
Unk_ov111_021D38B8: ; 0x021D38B8
	.incbin "incbin/overlay111_rodata.bin", 0x2B8, 0x80

