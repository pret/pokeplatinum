	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov110_021D2124
ov110_021D2124: ; 0x021D2124
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r1, #0
	ldr r0, _021D2164 ; =0x021D2278
	lsl r1, r2, #3
	ldr r0, [r0, r1]
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, _021D2168 ; =0x021D227C
	ldr r7, [r0, r1]
	cmp r7, #0
	bls _021D2160
_021D213E:
	ldr r2, [sp, #4]
	lsl r6, r4, #4
	lsl r3, r4, #3
	ldr r0, [sp]
	add r1, r5, r6
	add r2, r2, r3
	bl sub_0201A8D4
	add r0, r5, r6
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r7
	blo _021D213E
_021D2160:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2164: .word 0x021D2278
_021D2168: .word 0x021D227C
	thumb_func_end ov110_021D2124

	thumb_func_start ov110_021D216C
ov110_021D216C: ; 0x021D216C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021D2190 ; =0x021D227C
	lsl r1, r1, #3
	ldr r5, [r0, r1]
	mov r4, #0
	cmp r5, #0
	bls _021D218E
_021D217C:
	lsl r0, r4, #4
	add r0, r6, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _021D217C
_021D218E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2190: .word 0x021D227C
	thumb_func_end ov110_021D216C

	.rodata


	.global Unk_ov110_021D2220
Unk_ov110_021D2220: ; 0x021D2220
	.incbin "incbin/overlay110_rodata.bin", 0x8C, 0xA4 - 0x8C

	.global Unk_ov110_021D2238
Unk_ov110_021D2238: ; 0x021D2238
	.incbin "incbin/overlay110_rodata.bin", 0xA4, 0xC4 - 0xA4

	.global Unk_ov110_021D2258
Unk_ov110_021D2258: ; 0x021D2258
	.incbin "incbin/overlay110_rodata.bin", 0xC4, 0xE4 - 0xC4

	.global Unk_ov110_021D2278
Unk_ov110_021D2278: ; 0x021D2278
	.incbin "incbin/overlay110_rodata.bin", 0xE4, 0x10C - 0xE4

	.global Unk_ov110_021D22A0
Unk_ov110_021D22A0: ; 0x021D22A0
	.incbin "incbin/overlay110_rodata.bin", 0x10C, 0x144 - 0x10C

	.global Unk_ov110_021D22D8
Unk_ov110_021D22D8: ; 0x021D22D8
	.incbin "incbin/overlay110_rodata.bin", 0x144, 0x48

