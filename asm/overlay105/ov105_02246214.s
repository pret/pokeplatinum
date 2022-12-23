	.include "macros/function.inc"
	.include "overlay105/ov105_02246214.inc"

	

	.text


	thumb_func_start ov105_02246214
ov105_02246214: ; 0x02246214
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
_0224621C:
	ldr r2, _02246240 ; =0x02246458
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
	cmp r4, #0xa
	blo _0224621C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246240: .word 0x02246458
	thumb_func_end ov105_02246214

	thumb_func_start ov105_02246244
ov105_02246244: ; 0x02246244
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0224624A:
	lsl r0, r4, #4
	add r0, r5, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xa
	blo _0224624A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov105_02246244

	thumb_func_start ov105_02246260
ov105_02246260: ; 0x02246260
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	mov r1, #0x5d
	str r1, [sp, #4]
	ldr r2, _02246288 ; =0x000003F7
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DAA4
	ldr r2, _02246288 ; =0x000003F7
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02246288: .word 0x000003F7
	thumb_func_end ov105_02246260

	thumb_func_start ov105_0224628C
ov105_0224628C: ; 0x0224628C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	bl sub_0201C290
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x5d
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _022462C8 ; =0x000003D9
	mov r3, #0xa
	bl sub_0200DD0C
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _022462C8 ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xa
	bl sub_0200E060
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022462C8: .word 0x000003D9
	thumb_func_end ov105_0224628C

	.rodata


	.global Unk_ov105_02246458
Unk_ov105_02246458: ; 0x02246458
	.incbin "incbin/overlay105_rodata.bin", 0x18C, 0x50

