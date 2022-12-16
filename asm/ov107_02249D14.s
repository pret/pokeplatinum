	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov107_02249D14
ov107_02249D14: ; 0x02249D14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r1, #0
	ldr r0, _02249D54 ; =0x0224A218
	lsl r1, r2, #3
	ldr r0, [r0, r1]
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, _02249D58 ; =0x0224A21C
	ldr r7, [r0, r1]
	cmp r7, #0
	bls _02249D50
_02249D2E:
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
	blo _02249D2E
_02249D50:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249D54: .word 0x0224A218
_02249D58: .word 0x0224A21C
	thumb_func_end ov107_02249D14

	thumb_func_start ov107_02249D5C
ov107_02249D5C: ; 0x02249D5C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02249D80 ; =0x0224A21C
	lsl r1, r1, #3
	ldr r5, [r0, r1]
	mov r4, #0
	cmp r5, #0
	bls _02249D7E
_02249D6C:
	lsl r0, r4, #4
	add r0, r6, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _02249D6C
_02249D7E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02249D80: .word 0x0224A21C
	thumb_func_end ov107_02249D5C

	thumb_func_start ov107_02249D84
ov107_02249D84: ; 0x02249D84
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201C290
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r2, _02249DB8 ; =0x000003F7
	add r0, r5, #0
	mov r3, #0xb
	bl sub_0200DAA4
	ldr r2, _02249DB8 ; =0x000003F7
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02249DB8: .word 0x000003F7
	thumb_func_end ov107_02249D84

	thumb_func_start ov107_02249DBC
ov107_02249DBC: ; 0x02249DBC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	bl sub_0201C290
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _02249DFC ; =0x000003D9
	mov r3, #0xa
	bl sub_0200DD0C
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _02249DFC ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xa
	bl sub_0200E060
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02249DFC: .word 0x000003D9
	thumb_func_end ov107_02249DBC

	.rodata


	.global Unk_ov107_0224A218
Unk_ov107_0224A218: ; 0x0224A218
	.incbin "incbin/overlay107_rodata.bin", 0x418, 0x428 - 0x418

	.global Unk_ov107_0224A228
Unk_ov107_0224A228: ; 0x0224A228
	.incbin "incbin/overlay107_rodata.bin", 0x428, 0x488 - 0x428

	.global Unk_ov107_0224A288
Unk_ov107_0224A288: ; 0x0224A288
	.incbin "incbin/overlay107_rodata.bin", 0x488, 0x90

