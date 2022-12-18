	.include "macros/function.inc"
	.include "include/ov6_02246B74.inc"

	

	.text


	thumb_func_start ov6_02246B74
ov6_02246B74: ; 0x02246B74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #0
	bne _02246BE8
	cmp r4, #0
	bne _02246B88
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02246B88:
	add r0, sp, #0
	bl sub_020138A4
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02246B98
	bl sub_02022974
_02246B98:
	ldr r0, [sp, #4]
	cmp r0, #0xc
	bls _02246BA2
	bl sub_02022974
_02246BA2:
	ldr r0, [sp, #4]
	ldr r3, _02246BEC ; =0x0224954C
	sub r0, r0, #1
	lsl r0, r0, #3
	ldr r6, [r3, r0]
	add r2, r3, r0
	mov r1, #0
	cmp r6, #0
	ble _02246BE6
	ldr r3, [r2, #4]
	ldr r5, [sp, #8]
_02246BB8:
	lsl r0, r1, #1
	ldrh r7, [r3, r0]
	asr r7, r7, #8
	lsl r7, r7, #0x18
	lsr r7, r7, #0x18
	cmp r5, r7
	bne _02246BDC
	ldr r1, [r2, #4]
	ldrh r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x16
	ldr r0, _02246BF0 ; =0x02249538
	ldr r0, [r0, r1]
	add r0, r4, r0
	bpl _02246BE8
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02246BDC:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r6
	blt _02246BB8
_02246BE6:
	add r0, r4, #0
_02246BE8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246BEC: .word 0x0224954C
_02246BF0: .word 0x02249538
	thumb_func_end ov6_02246B74

	.rodata


	.global Unk_ov6_022494E0
Unk_ov6_022494E0: ; 0x022494E0
	.incbin "incbin/overlay6_rodata.bin", 0x6CC, 0x6CE - 0x6CC

	.global Unk_ov6_022494E2
Unk_ov6_022494E2: ; 0x022494E2
	.incbin "incbin/overlay6_rodata.bin", 0x6CE, 0x6D4 - 0x6CE

	.global Unk_ov6_022494E8
Unk_ov6_022494E8: ; 0x022494E8
	.incbin "incbin/overlay6_rodata.bin", 0x6D4, 0x6DA - 0x6D4

	.global Unk_ov6_022494EE
Unk_ov6_022494EE: ; 0x022494EE
	.incbin "incbin/overlay6_rodata.bin", 0x6DA, 0x6E0 - 0x6DA

	.global Unk_ov6_022494F4
Unk_ov6_022494F4: ; 0x022494F4
	.incbin "incbin/overlay6_rodata.bin", 0x6E0, 0x6E6 - 0x6E0

	.global Unk_ov6_022494FA
Unk_ov6_022494FA: ; 0x022494FA
	.incbin "incbin/overlay6_rodata.bin", 0x6E6, 0x6EE - 0x6E6

	.global Unk_ov6_02249502
Unk_ov6_02249502: ; 0x02249502
	.incbin "incbin/overlay6_rodata.bin", 0x6EE, 0x6F6 - 0x6EE

	.global Unk_ov6_0224950A
Unk_ov6_0224950A: ; 0x0224950A
	.incbin "incbin/overlay6_rodata.bin", 0x6F6, 0x6FE - 0x6F6

	.global Unk_ov6_02249512
Unk_ov6_02249512: ; 0x02249512
	.incbin "incbin/overlay6_rodata.bin", 0x6FE, 0x706 - 0x6FE

	.global Unk_ov6_0224951A
Unk_ov6_0224951A: ; 0x0224951A
	.incbin "incbin/overlay6_rodata.bin", 0x706, 0x70E - 0x706

	.global Unk_ov6_02249522
Unk_ov6_02249522: ; 0x02249522
	.incbin "incbin/overlay6_rodata.bin", 0x70E, 0x716 - 0x70E

	.global Unk_ov6_0224952A
Unk_ov6_0224952A: ; 0x0224952A
	.incbin "incbin/overlay6_rodata.bin", 0x716, 0x724 - 0x716

	.global Unk_ov6_02249538
Unk_ov6_02249538: ; 0x02249538
	.incbin "incbin/overlay6_rodata.bin", 0x724, 0x738 - 0x724

	.global Unk_ov6_0224954C
Unk_ov6_0224954C: ; 0x0224954C
	.incbin "incbin/overlay6_rodata.bin", 0x738, 0x60

