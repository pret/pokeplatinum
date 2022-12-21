	.include "macros/function.inc"
	.include "include/unk_02068344.inc"

	

	.text


	thumb_func_start sub_02068344
sub_02068344: ; 0x02068344
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	add r1, r0, #0
	beq _02068362
	lsl r2, r1, #2
	ldr r1, _02068364 ; =0x020EF744
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
_02068362:
	pop {r4, pc}
	; .align 2, 0
_02068364: .word 0x020EF744
	thumb_func_end sub_02068344

	thumb_func_start sub_02068368
sub_02068368: ; 0x02068368
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #0
	beq _0206838A
	lsl r1, r0, #2
	ldr r0, _0206838C ; =0x020EF718
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _0206838A
	add r0, r4, #0
	blx r1
_0206838A:
	pop {r4, pc}
	; .align 2, 0
_0206838C: .word 0x020EF718
	thumb_func_end sub_02068368

	thumb_func_start sub_02068390
sub_02068390: ; 0x02068390
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #0
	bne _020683B2
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020683B2:
	lsl r1, r0, #2
	ldr r0, _020683D4 ; =0x020EF770
	ldr r6, [r0, r1]
	cmp r6, #0
	beq _020683CE
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #4]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	blx r6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020683CE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020683D4: .word 0x020EF770
	thumb_func_end sub_02068390

	thumb_func_start sub_020683D8
sub_020683D8: ; 0x020683D8
	push {r3, lr}
	ldr r3, [r0, #0x1c]
	ldr r3, [r3, #0]
	cmp r3, #0x43
	bne _020683F0
	ldr r3, [sp, #8]
	bl ov8_0224B714
	cmp r0, #0
	beq _020683F0
	mov r0, #1
	pop {r3, pc}
_020683F0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020683D8

	.rodata


	.global Unk_020EF718
Unk_020EF718: ; 0x020EF718
	.incbin "incbin/arm9_rodata.bin", 0xAAD8, 0xAB04 - 0xAAD8

	.global Unk_020EF744
Unk_020EF744: ; 0x020EF744
	.incbin "incbin/arm9_rodata.bin", 0xAB04, 0xAB30 - 0xAB04

	.global Unk_020EF770
Unk_020EF770: ; 0x020EF770
	.incbin "incbin/arm9_rodata.bin", 0xAB30, 0x2C

