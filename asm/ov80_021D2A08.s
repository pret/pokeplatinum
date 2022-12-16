	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov80_021D2A08
ov80_021D2A08: ; 0x021D2A08
	push {r4, r5, r6, lr}
	sub sp, #0x50
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r1, [r4, #4]
	mov r0, #0x20
	bl sub_0201DBEC
	ldr r0, [r4, #4]
	bl sub_0200C6E4
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	bl sub_0200C704
	add r1, r4, #0
	add r1, #0xdc
	add r2, sp, #0x30
	ldr r5, _021D2AB4 ; =0x021D3190
	str r0, [r1, #0]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _021D2AB8 ; =0x021D3160
	stmia r2!, {r0, r1}
	add r5, sp, #0x1c
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r3, #0x20
	bl sub_0200C73C
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x1c
	bl sub_0200C7C0
	ldr r5, _021D2ABC ; =0x021D3174
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	add r0, #0xd8
	add r4, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0200C8F0
	add sp, #0x50
	pop {r4, r5, r6, pc}
	nop
_021D2AB4: .word 0x021D3190
_021D2AB8: .word 0x021D3160
_021D2ABC: .word 0x021D3174
	thumb_func_end ov80_021D2A08

	thumb_func_start ov80_021D2AC0
ov80_021D2AC0: ; 0x021D2AC0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200C8B0
	add r4, #0xd8
	ldr r0, [r4, #0]
	bl sub_0200C8D4
	bl sub_0201DC3C
	pop {r4, pc}
	thumb_func_end ov80_021D2AC0

	thumb_func_start ov80_021D2AE0
ov80_021D2AE0: ; 0x021D2AE0
	ldr r3, _021D2AE8 ; =sub_0200C7EC
	add r0, #0xdc
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_021D2AE8: .word sub_0200C7EC
	thumb_func_end ov80_021D2AE0

	thumb_func_start ov80_021D2AEC
ov80_021D2AEC: ; 0x021D2AEC
	ldr r3, _021D2AF0 ; =sub_0200C800
	bx r3
	; .align 2, 0
_021D2AF0: .word sub_0200C800
	thumb_func_end ov80_021D2AEC

	.rodata


	.global Unk_ov80_021D3160
Unk_ov80_021D3160: ; 0x021D3160
	.incbin "incbin/overlay80_rodata.bin", 0x304, 0x318 - 0x304

	.global Unk_ov80_021D3174
Unk_ov80_021D3174: ; 0x021D3174
	.incbin "incbin/overlay80_rodata.bin", 0x318, 0x334 - 0x318

	.global Unk_ov80_021D3190
Unk_ov80_021D3190: ; 0x021D3190
	.incbin "incbin/overlay80_rodata.bin", 0x334, 0x20


	.data


	.global Unk_ov80_021D3394
Unk_ov80_021D3394: ; 0x021D3394
	.incbin "incbin/overlay80_data.bin", 0x14, 0x2C - 0x14

	.global Unk_ov80_021D33AC
Unk_ov80_021D33AC: ; 0x021D33AC
	.incbin "incbin/overlay80_data.bin", 0x2C, 0x44 - 0x2C

	.global Unk_ov80_021D33C4
Unk_ov80_021D33C4: ; 0x021D33C4
	.incbin "incbin/overlay80_data.bin", 0x44, 0x5C - 0x44

	.global Unk_ov80_021D33DC
Unk_ov80_021D33DC: ; 0x021D33DC
	.incbin "incbin/overlay80_data.bin", 0x5C, 0x74 - 0x5C

	.global Unk_ov80_021D33F4
Unk_ov80_021D33F4: ; 0x021D33F4
	.incbin "incbin/overlay80_data.bin", 0x74, 0x18

