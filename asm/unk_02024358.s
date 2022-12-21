	.include "macros/function.inc"
	.include "include/unk_02024358.inc"

	

	.text


	thumb_func_start sub_02024358
sub_02024358: ; 0x02024358
	push {r3, lr}
	bl sub_020C7D90
	cmp r0, #0
	bne _02024368
	bl sub_020C42A8
	pop {r3, pc}
_02024368:
	ldr r0, _020243C4 ; =0x027FF00C
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02024392
	bl sub_020CD6F8
	mov r2, #0x16
	ldr r0, _020243C8 ; =0x027FFE00
	ldr r1, _020243CC ; =0x027FF000
	lsl r2, r2, #4
	bl sub_020C4DB0
	mov r2, #0x16
	ldr r0, _020243C8 ; =0x027FFE00
	ldr r1, _020243D0 ; =0x027FFA80
	lsl r2, r2, #4
	bl sub_020C4DB0
	ldr r1, _020243D4 ; =0x4A414441
	ldr r0, _020243C4 ; =0x027FF00C
	str r1, [r0, #0]
_02024392:
	ldr r0, _020243D8 ; =0x020E5828
	mov r1, #3
	bl sub_020C7760
	ldr r1, _020243CC ; =0x027FF000
	ldr r2, [r1, #0x48]
	str r2, [r0, #0x2c]
	ldr r2, [r1, #0x4c]
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x40]
	str r2, [r0, #0x34]
	ldr r2, [r1, #0x44]
	str r2, [r0, #0x38]
	ldr r2, [r1, #0xc]
	ldr r0, _020243D4 ; =0x4A414441
	cmp r2, r0
	bne _020243BC
	ldrh r1, [r1, #0x10]
	ldr r0, _020243DC ; =0x00003130
	cmp r1, r0
	beq _020243C0
_020243BC:
	bl sub_020C42A8
_020243C0:
	pop {r3, pc}
	nop
_020243C4: .word 0x027FF00C
_020243C8: .word 0x027FFE00
_020243CC: .word 0x027FF000
_020243D0: .word 0x027FFA80
_020243D4: .word 0x4A414441
_020243D8: .word 0x020E5828
_020243DC: .word 0x00003130
	thumb_func_end sub_02024358

	thumb_func_start sub_020243E0
sub_020243E0: ; 0x020243E0
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020C7DA0
	add r0, sp, #0
	add r1, r4, #0
	bl sub_020C8080
	cmp r0, #0
	beq _02024404
	ldr r1, [sp, #0x24]
	ldr r0, _02024408 ; =0x027FFC2C
	str r1, [r0, #0]
	mov r0, #0
	bl sub_020C3EE4
_02024404:
	add sp, #0x48
	pop {r4, pc}
	; .align 2, 0
_02024408: .word 0x027FFC2C
	thumb_func_end sub_020243E0

	.rodata


	.global Unk_020E5828
Unk_020E5828: ; 0x020E5828
	.incbin "incbin/arm9_rodata.bin", 0xBE8, 0x4

