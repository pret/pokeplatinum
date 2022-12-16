	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov79_021D20F4
ov79_021D20F4: ; 0x021D20F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #0x20
	bl sub_0201DBEC
	ldr r0, [r4, #0]
	bl sub_0200C6E4
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_0200C704
	mov r7, #0x6f
	lsl r7, r7, #2
	add r2, sp, #0x34
	ldr r3, _021D21C0 ; =0x021D3C00
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _021D21C4 ; =0x021D3BD0
	stmia r2!, {r0, r1}
	add r3, sp, #0x20
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [r3, #0]
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl sub_0200C73C
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0xe
	bl sub_0200C7C0
	ldr r0, [r4, #0]
	bl sub_0200A93C
	ldr r0, [r4, #0]
	bl sub_0200A944
	ldr r5, _021D21C8 ; =0x021D3BE4
	add r3, sp, #4
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	sub r1, r7, #4
	str r0, [r3, #0]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8F0
	mov r1, #1
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02098FFC
	add r1, r7, #0
	add r1, #0x3c
	str r0, [r4, r1]
	bl sub_02035E38
	cmp r0, #0
	beq _021D21AC
	bl sub_02039734
_021D21AC:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D21C0: .word 0x021D3C00
_021D21C4: .word 0x021D3BD0
_021D21C8: .word 0x021D3BE4
	thumb_func_end ov79_021D20F4

	thumb_func_start ov79_021D21CC
ov79_021D21CC: ; 0x021D21CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0209903C
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8B0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200C8D4
	bl sub_0201DC3C
	pop {r4, pc}
	thumb_func_end ov79_021D21CC

	thumb_func_start ov79_021D21F8
ov79_021D21F8: ; 0x021D21F8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200C7EC
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02099160
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D21F8

	thumb_func_start ov79_021D2214
ov79_021D2214: ; 0x021D2214
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _021D2242
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021E90
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	pop {r4, pc}
_021D2242:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #9
	bl sub_02021E90
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	pop {r4, pc}
	thumb_func_end ov79_021D2214

	.rodata


	.global Unk_ov79_021D3BD0
Unk_ov79_021D3BD0: ; 0x021D3BD0
	.incbin "incbin/overlay79_rodata.bin", 0x2C0, 0x2D4 - 0x2C0

	.global Unk_ov79_021D3BE4
Unk_ov79_021D3BE4: ; 0x021D3BE4
	.incbin "incbin/overlay79_rodata.bin", 0x2D4, 0x2F0 - 0x2D4

	.global Unk_ov79_021D3C00
Unk_ov79_021D3C00: ; 0x021D3C00
	.incbin "incbin/overlay79_rodata.bin", 0x2F0, 0x20


	.data


	.global Unk_ov79_021D3D00
Unk_ov79_021D3D00: ; 0x021D3D00
	.incbin "incbin/overlay79_data.bin", 0x0, 0x1C - 0x0

	.global Unk_ov79_021D3D1C
Unk_ov79_021D3D1C: ; 0x021D3D1C
	.incbin "incbin/overlay79_data.bin", 0x1C, 0x38 - 0x1C

	.global Unk_ov79_021D3D38
Unk_ov79_021D3D38: ; 0x021D3D38
	.incbin "incbin/overlay79_data.bin", 0x38, 0x54 - 0x38

	.global Unk_ov79_021D3D54
Unk_ov79_021D3D54: ; 0x021D3D54
	.incbin "incbin/overlay79_data.bin", 0x54, 0x70 - 0x54

	.global Unk_ov79_021D3D70
Unk_ov79_021D3D70: ; 0x021D3D70
	.incbin "incbin/overlay79_data.bin", 0x70, 0x1B

