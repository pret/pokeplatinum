	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov106_022436E0
ov106_022436E0: ; 0x022436E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
_022436E8:
	ldr r2, _0224370C ; =0x02243860
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
	cmp r4, #4
	blo _022436E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224370C: .word 0x02243860
	thumb_func_end ov106_022436E0

	thumb_func_start ov106_02243710
ov106_02243710: ; 0x02243710
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02243716:
	lsl r0, r4, #4
	add r0, r5, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _02243716
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov106_02243710

	thumb_func_start ov106_0224372C
ov106_0224372C: ; 0x0224372C
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	mov r2, #0x62
	str r2, [sp, #4]
	ldr r2, _02243754 ; =0x000003F7
	mov r3, #0xb
	bl sub_0200DAA4
	ldr r2, _02243754 ; =0x000003F7
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #8
	pop {r4, pc}
	nop
_02243754: .word 0x000003F7
	thumb_func_end ov106_0224372C

	thumb_func_start ov106_02243758
ov106_02243758: ; 0x02243758
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	bl sub_0201C290
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x62
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _02243794 ; =0x000003D9
	mov r3, #0xa
	bl sub_0200DD0C
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _02243794 ; =0x000003D9
	add r0, r4, #0
	mov r1, #0
	mov r3, #0xa
	bl sub_0200E060
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02243794: .word 0x000003D9
	thumb_func_end ov106_02243758

	.rodata


	.global Unk_ov106_02243860
Unk_ov106_02243860: ; 0x02243860
	.incbin "incbin/overlay106_rodata.bin", 0xC8, 0x20

