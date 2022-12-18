	.include "macros/function.inc"
	.include "include/ov5_021D5B40.inc"

	

	.text


	thumb_func_start ov5_021D5B40
ov5_021D5B40: ; 0x021D5B40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0x18
	ldr r1, _021D5BA4 ; =0x021F8AE4
	mul r0, r2
	add r6, r3, #0
	add r4, r1, r0
	cmp r2, #0x11
	blo _021D5B5A
	bl sub_02022974
_021D5B5A:
	mov r0, #4
	bl sub_020203AC
	str r0, [r5, #0x24]
	ldrb r0, [r4, #0xc]
	add r2, r4, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	str r0, [sp, #8]
	ldrh r3, [r4, #0xe]
	ldr r1, [r4, #0]
	add r0, r7, #0
	bl sub_020206D0
	ldr r0, [r5, #0x24]
	bl sub_020203D4
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r5, #0x24]
	bl sub_020206BC
	cmp r6, #0
	beq _021D5B9E
	ldr r0, [r5, #0x24]
	mov r1, #6
	str r0, [sp]
	mov r0, #7
	mov r2, #2
	mov r3, #4
	bl sub_02020304
_021D5B9E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D5BA4: .word 0x021F8AE4
	thumb_func_end ov5_021D5B40

	thumb_func_start ov5_021D5BA8
ov5_021D5BA8: ; 0x021D5BA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020203E0
	ldr r0, [r4, #0x24]
	bl sub_02020390
	ldr r0, [r4, #0x24]
	bl sub_020203B8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5BA8

	.rodata


	.global Unk_ov5_021F8AE4
Unk_ov5_021F8AE4: ; 0x021F8AE4
	.incbin "incbin/overlay5_rodata.bin", 0x1D0, 0x198

