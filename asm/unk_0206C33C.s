	.include "macros/function.inc"
	.include "include/unk_0206C33C.inc"

	

	.text


	thumb_func_start sub_0206C33C
sub_0206C33C: ; 0x0206C33C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0202D8BC
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206C538
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206C33C

	thumb_func_start sub_0206C354
sub_0206C354: ; 0x0206C354
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0206C35A:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _0206C36E
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206C33C
_0206C36E:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0206C35A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206C354

	thumb_func_start sub_0206C37C
sub_0206C37C: ; 0x0206C37C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
_0206C382:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _0206C3BC
	bl sub_0201D2E8
	lsl r0, r0, #4
	lsr r6, r0, #0x10
	cmp r6, #0x10
	blo _0206C39E
	bl sub_02022974
_0206C39E:
	cmp r6, #0
	bne _0206C3AC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206C33C
	b _0206C3BC
_0206C3AC:
	add r0, r5, #0
	bl sub_0202D8BC
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206C588
_0206C3BC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0206C382
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206C37C

	thumb_func_start sub_0206C3C8
sub_0206C3C8: ; 0x0206C3C8
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1d
	blo _0206C3D4
	bl sub_02022974
_0206C3D4:
	ldr r0, _0206C3DC ; =0x020EFB44
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0206C3DC: .word 0x020EFB44
	thumb_func_end sub_0206C3C8

	thumb_func_start sub_0206C3E0
sub_0206C3E0: ; 0x0206C3E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0206C3E6:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _0206C3F6
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206C3F6:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0206C3E6
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206C3E0

	thumb_func_start sub_0206C404
sub_0206C404: ; 0x0206C404
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0206C3E0
	cmp r0, #0
	beq _0206C41A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D8A4
_0206C41A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206C404

	thumb_func_start sub_0206C41C
sub_0206C41C: ; 0x0206C41C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0x10]
	add r7, r0, #0
	bl sub_0202D834
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x14]
	bl sub_0202D924
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	cmp r0, #5
	bhi _0206C476
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206C444: ; jump table
	.short _0206C450 - _0206C444 - 2 ; case 0
	.short _0206C456 - _0206C444 - 2 ; case 1
	.short _0206C45E - _0206C444 - 2 ; case 2
	.short _0206C464 - _0206C444 - 2 ; case 3
	.short _0206C46A - _0206C444 - 2 ; case 4
	.short _0206C470 - _0206C444 - 2 ; case 5
_0206C450:
	ldr r4, _0206C530 ; =0x000001E1
	mov r5, #0x32
	b _0206C47E
_0206C456:
	mov r4, #0x7a
	lsl r4, r4, #2
	mov r5, #0x32
	b _0206C47E
_0206C45E:
	ldr r4, _0206C534 ; =0x000001EB
	mov r5, #0x28
	b _0206C47E
_0206C464:
	mov r4, #0x92
	mov r5, #0x3c
	b _0206C47E
_0206C46A:
	mov r4, #0x91
	mov r5, #0x3c
	b _0206C47E
_0206C470:
	mov r4, #0x90
	mov r5, #0x3c
	b _0206C47E
_0206C476:
	bl sub_02022974
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0206C47E:
	add r0, r6, #0
	mov r1, #4
	add r2, r4, #0
	bl sub_0202D980
	add r0, r6, #0
	mov r1, #6
	add r2, r5, #0
	bl sub_0202D980
	add r0, r7, #0
	bl sub_02025E38
	str r0, [sp, #0x18]
	mov r0, #4
	bl sub_02073C74
	add r7, r0, #0
	bl sub_02073C2C
	ldr r0, [sp, #0x18]
	bl sub_02025F24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #0x20
	bl sub_02073D80
	add r0, r6, #0
	mov r1, #7
	mov r2, #0
	bl sub_0202D980
	add r0, r6, #0
	mov r1, #8
	mov r2, #1
	bl sub_0202D980
	add r0, r7, #0
	mov r1, #0xaf
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl sub_0202D980
	mov r1, #0
	add r0, r7, #0
	add r2, r1, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl sub_0202D980
	add r0, r7, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #5
	bl sub_0202D980
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	bl sub_0202D8BC
	add r2, r0, #0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	bl sub_0206C538
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0206C530: .word 0x000001E1
_0206C534: .word 0x000001EB
	thumb_func_end sub_0206C41C

	thumb_func_start sub_0206C538
sub_0206C538: ; 0x0206C538
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r2, #0
	bl sub_0202D8C4
	ldr r7, _0206C580 ; =0x020EFB44
	lsl r0, r0, #2
	ldr r4, [r7, r0]
_0206C54C:
	bl sub_0201D2E8
	ldr r1, _0206C584 ; =0x000008D4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x1d
	blo _0206C562
	bl sub_02022974
_0206C562:
	lsl r0, r5, #0x18
	lsr r2, r0, #0x18
	lsl r0, r2, #2
	ldr r3, [r7, r0]
	cmp r3, r6
	beq _0206C54C
	cmp r3, r4
	beq _0206C54C
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0206C638
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206C580: .word 0x020EFB44
_0206C584: .word 0x000008D4
	thumb_func_end sub_0206C538

	thumb_func_start sub_0206C588
sub_0206C588: ; 0x0206C588
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r7, r2, #0
	bl sub_0202D8C4
	mov r1, #0xc
	ldr r2, _0206C62C ; =0x020EFBB8
	mul r1, r0
	ldrh r0, [r2, r1]
	add r4, r2, r1
	cmp r0, #1
	bne _0206C5CE
	ldrh r0, [r4, #2]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, _0206C630 ; =0x020EFB44
	lsl r1, r2, #2
	ldr r3, [r0, r1]
	cmp r3, r7
	bne _0206C5C2
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl sub_0206C538
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206C5C2:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0206C638
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206C5CE:
	ldrh r5, [r4]
	cmp r5, #0
	bne _0206C5D8
	bl sub_02022974
_0206C5D8:
	cmp r5, #1
	bhi _0206C5E0
	mov r6, #0
	b _0206C608
_0206C5E0:
	bl sub_0201D2E8
	add r6, r0, #0
	ldr r0, _0206C634 ; =0x0000FFFF
	add r1, r5, #0
	bl sub_020E1F6C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, r5
	blo _0206C608
	bl sub_02022974
_0206C608:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x17
	add r0, r4, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, _0206C630 ; =0x020EFB44
	lsl r1, r2, #2
	ldr r3, [r0, r1]
	cmp r3, r7
	beq _0206C5CE
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0206C638
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206C62C: .word 0x020EFBB8
_0206C630: .word 0x020EFB44
_0206C634: .word 0x0000FFFF
	thumb_func_end sub_0206C588

	thumb_func_start sub_0206C638
sub_0206C638: ; 0x0206C638
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0202D924
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202D8DC
	ldr r0, [sp]
	mov r1, #1
	add r2, r7, #0
	bl sub_0202D980
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206C638

	.rodata


	.global Unk_020EFB44
Unk_020EFB44: ; 0x020EFB44
	.incbin "incbin/arm9_rodata.bin", 0xAF04, 0xAF78 - 0xAF04

	.global Unk_020EFBB8
Unk_020EFBB8: ; 0x020EFBB8
	.incbin "incbin/arm9_rodata.bin", 0xAF78, 0x15C

