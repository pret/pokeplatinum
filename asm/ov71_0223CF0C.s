	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov71_0223CF0C
ov71_0223CF0C: ; 0x0223CF0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r7, r0, #0
	str r1, [sp, #0x14]
	bl ov71_0223D2F4
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x19
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0x19
	add r1, r7, #4
	add r2, r0, #0
	bl sub_020095C4
	ldr r4, _0223D068 ; =0x0223D6C8
	str r0, [r7, #0]
	mov r6, #0
	add r5, r7, #0
_0223CF46:
	ldrb r0, [r4]
	add r1, r6, #0
	mov r2, #0x19
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0223CF46
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x14]
	mov r2, #0x21
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #0x19
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r7, r1]
	ldr r1, [sp, #0x14]
	mov r2, #0xe
	mov r3, #0
	bl sub_02009B04
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r7, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x19
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r7, r1]
	ldr r1, [sp, #0x14]
	mov r2, #0x2c
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x19
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r7, r1]
	ldr r1, [sp, #0x14]
	mov r2, #0x2e
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r7, r1]
	sub r1, #0xc
	ldr r0, [r7, r1]
	bl sub_0200A328
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	bl sub_0200A5C8
	ldr r3, _0223D06C ; =0x0223D6DC
	add r2, sp, #0x20
	str r2, [sp, #0x18]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r7, r0
	mov r4, #0
	str r0, [sp, #0x1c]
_0223D012:
	ldr r1, [sp, #0x18]
	lsl r6, r4, #2
	ldr r0, [sp, #0x14]
	ldr r1, [r1, r6]
	mov r2, #0x19
	add r5, r7, r6
	bl sub_02006CB8
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223D04C
	ldr r1, [sp, #0x1c]
	add r1, r1, r6
	bl sub_020A71B0
	cmp r0, #0
	bne _0223D050
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020181C4
	bl sub_02022974
	b _0223D050
_0223D04C:
	bl sub_02022974
_0223D050:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _0223D012
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D068: .word 0x0223D6C8
_0223D06C: .word 0x0223D6DC
	thumb_func_end ov71_0223CF0C

	thumb_func_start ov71_0223D070
ov71_0223D070: ; 0x0223D070
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x88
	add r7, r1, #0
	mov r1, #1
	str r0, [sp, #0x2c]
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r3, [sp, #0x2c]
	str r1, [sp, #0x10]
	ldr r3, [r3, r0]
	add r4, r0, #4
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x2c]
	ldr r3, [r3, r4]
	add r4, r0, #0
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x2c]
	add r4, #8
	ldr r3, [r3, r4]
	add r0, #0xc
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x2c]
	ldr r0, [r3, r0]
	add r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x64
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [sp, #0x2c]
	mov r4, #0
	ldr r0, [r0, #0]
	ldr r6, _0223D230 ; =0x0223D73C
	str r0, [sp, #0x34]
	add r0, sp, #0x64
	str r0, [sp, #0x38]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x3c]
	str r4, [sp, #0x40]
	str r4, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	add r0, sp, #0x34
	strh r4, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x58]
	mov r0, #1
	str r0, [sp, #0x5c]
	mov r0, #0x19
	ldr r5, [sp, #0x2c]
	str r0, [sp, #0x60]
_0223D0EA:
	ldr r0, [r6, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x3c]
	ldr r0, [r6, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl sub_02021AA0
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021D6C
	ldrb r0, [r7, r4]
	cmp r0, #0
	bne _0223D12A
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
_0223D12A:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #4
	cmp r4, #8
	blt _0223D0EA
	mov r0, #8
	ldr r4, _0223D234 ; =0x0223D6FC
	ldr r5, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r6, #0
	mov r7, #1
_0223D140:
	ldr r0, [r4, #0]
	str r7, [sp, #0x58]
	lsl r0, r0, #0xc
	str r0, [sp, #0x3c]
	ldr r0, [r4, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl sub_02021AA0
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #8
	bl sub_02021D6C
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #8
	blt _0223D140
	ldr r0, [sp, #0x30]
	ldr r4, _0223D234 ; =0x0223D6FC
	add r0, #8
	str r0, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x30]
	mov r6, #0
	lsl r1, r0, #2
	ldr r0, [sp, #0x2c]
	mov r7, #1
	add r5, r0, r1
_0223D1A0:
	ldr r0, [r4, #0]
	str r7, [sp, #0x58]
	lsl r0, r0, #0xc
	str r0, [sp, #0x3c]
	ldr r0, [r4, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl sub_02021AA0
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #9
	bl sub_02021D6C
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #8
	blt _0223D1A0
	mov r1, #0
	add r0, sp, #0x84
	strb r1, [r0]
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x3c]
	mov r0, #0x22
	lsl r0, r0, #0xe
	str r0, [sp, #0x40]
	str r1, [sp, #0x58]
	mov r1, #0x57
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r0, [sp, #0x30]
	add r0, #8
	str r0, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	add r0, sp, #0x34
	bl sub_02021AA0
	str r0, [r4, r5]
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, [r4, r5]
	mov r1, #0xa
	bl sub_02021D6C
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D230: .word 0x0223D73C
_0223D234: .word 0x0223D6FC
	thumb_func_end ov71_0223D070

	thumb_func_start ov71_0223D238
ov71_0223D238: ; 0x0223D238
	push {r4, r5, r6, lr}
	mov r6, #7
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #6
_0223D242:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_020181C4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _0223D242
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A4E4
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_0200A6DC
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_0223D270:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0223D270
	ldr r0, [r5, #0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r4, r5, r6, pc}
	thumb_func_end ov71_0223D238

	thumb_func_start ov71_0223D298
ov71_0223D298: ; 0x0223D298
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #8
	blo _0223D2AA
	bl sub_02022974
_0223D2AA:
	cmp r6, #3
	bls _0223D2B2
	bl sub_02022974
_0223D2B2:
	lsl r7, r4, #2
	mov r0, #0x57
	add r1, r5, r7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_020A81FC
	str r0, [sp]
	lsl r0, r4, #5
	str r0, [sp, #4]
	mov r0, #0x1e
	add r1, r5, r7
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	lsl r5, r6, #5
	ldr r4, [r0, #0xc]
	mov r1, #0x20
	add r0, r4, r5
	bl sub_020C2C54
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r0, r4, r5
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020C0160
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov71_0223D298

	thumb_func_start ov71_0223D2F4
ov71_0223D2F4: ; 0x0223D2F4
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0223D320 ; =0x0223D6CC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #2
	mov r1, #0x19
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223D320: .word 0x0223D6CC
	thumb_func_end ov71_0223D2F4

	.rodata


	.global Unk_ov71_0223D6C8
Unk_ov71_0223D6C8: ; 0x0223D6C8
	.incbin "incbin/overlay71_rodata.bin", 0x220, 0x224 - 0x220

	.global Unk_ov71_0223D6CC
Unk_ov71_0223D6CC: ; 0x0223D6CC
	.incbin "incbin/overlay71_rodata.bin", 0x224, 0x234 - 0x224

	.global Unk_ov71_0223D6DC
Unk_ov71_0223D6DC: ; 0x0223D6DC
	.incbin "incbin/overlay71_rodata.bin", 0x234, 0x254 - 0x234

	.global Unk_ov71_0223D6FC
Unk_ov71_0223D6FC: ; 0x0223D6FC
	.incbin "incbin/overlay71_rodata.bin", 0x254, 0x294 - 0x254

	.global Unk_ov71_0223D73C
Unk_ov71_0223D73C: ; 0x0223D73C
	.incbin "incbin/overlay71_rodata.bin", 0x294, 0x40

