	.include "macros/function.inc"
	.include "include/unk_0206C660.inc"

	

	.text


	thumb_func_start sub_0206C660
sub_0206C660: ; 0x0206C660
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r0, r4, #0
	bl sub_02050A64
	add r2, r0, #0
	ldr r1, _0206C67C ; =0x020EFD14
	add r0, r4, #0
	add r2, #0xc
	bl sub_02050A38
	pop {r4, pc}
	; .align 2, 0
_0206C67C: .word 0x020EFD14
	thumb_func_end sub_0206C660

	thumb_func_start sub_0206C680
sub_0206C680: ; 0x0206C680
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #6
	bhi _0206C73A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206C6A6: ; jump table
	.short _0206C6B4 - _0206C6A6 - 2 ; case 0
	.short _0206C6DC - _0206C6A6 - 2 ; case 1
	.short _0206C6EA - _0206C6A6 - 2 ; case 2
	.short _0206C6F8 - _0206C6A6 - 2 ; case 3
	.short _0206C706 - _0206C6A6 - 2 ; case 4
	.short _0206C714 - _0206C6A6 - 2 ; case 5
	.short _0206C722 - _0206C6A6 - 2 ; case 6
_0206C6B4:
	ldr r0, [r4, #0x24]
	add r3, r4, #0
	str r0, [sp]
	ldr r0, [r4, #0x28]
	add r3, #0xc
	str r0, [sp, #4]
	ldr r1, [r4, #0]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl ov6_02246254
	ldr r1, [r4, #0]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl ov6_02246234
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C6DC:
	add r0, r5, #0
	bl sub_020558AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C6EA:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C6F8:
	add r0, r5, #0
	bl sub_0206C660
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C706:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C714:
	add r0, r5, #0
	bl sub_020558F0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C722:
	ldr r0, [r4, #0x24]
	bl sub_020181C4
	ldr r0, [r4, #0x28]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206C73A:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206C680

	thumb_func_start sub_0206C740
sub_0206C740: ; 0x0206C740
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x2c
	add r6, r2, #0
	str r3, [sp]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x2c
	add r4, r0, #0
	bl memset
	mov r0, #0
	str r0, [r4, #4]
	str r5, [r4, #0]
	ldr r0, [sp]
	str r6, [r4, #8]
	bl sub_02073C74
	str r0, [r4, #0x24]
	ldr r0, [sp]
	bl sub_02073C74
	str r0, [r4, #0x28]
	ldr r1, _0206C780 ; =sub_0206C680
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206C780: .word sub_0206C680
	thumb_func_end sub_0206C740

	.rodata


	.global Unk_020EFD14
Unk_020EFD14: ; 0x020EFD14
	.incbin "incbin/arm9_rodata.bin", 0xB0D4, 0x10

