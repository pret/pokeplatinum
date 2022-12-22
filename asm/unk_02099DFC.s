	.include "macros/function.inc"
	.include "include/unk_02099DFC.inc"

	

	.text


	thumb_func_start sub_02099DFC
sub_02099DFC: ; 0x02099DFC
	push {r3, r4, r5, lr}
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x58
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0x38
	mov r2, #0x58
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x38
	add r4, r0, #0
	bl memset
	mov r0, #0x58
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #0x30]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02099DFC

	thumb_func_start sub_02099E38
sub_02099E38: ; 0x02099E38
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	mov r6, #0
	cmp r1, #3
	bhi _02099F3E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02099E58: ; jump table
	.short _02099E60 - _02099E58 - 2 ; case 0
	.short _02099EEC - _02099E58 - 2 ; case 1
	.short _02099EFA - _02099E58 - 2 ; case 2
	.short _02099F20 - _02099E58 - 2 ; case 3
_02099E60:
	ldr r0, _02099F44 ; =0x00000495
	add r1, r6, #0
	bl sub_020055D0
	add r0, r6, #0
	bl sub_020053CC
	add r0, r6, #0
	bl sub_02004234
	add r0, r6, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	add r1, r6, #0
	bl sub_0200F344
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r6, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02099F48 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02099F4C ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	bl sub_02099F80
	add r0, r4, #0
	bl sub_0209A098
	ldr r0, _02099F50 ; =sub_02099F74
	add r1, r4, #0
	bl sub_02017798
	bl sub_0201FFD0
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	str r0, [r5, #0]
	b _02099F3E
_02099EEC:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02099F3E
	mov r0, #2
	str r0, [r5, #0]
	b _02099F3E
_02099EFA:
	bl sub_0209A0F4
	cmp r0, #1
	bne _02099F3E
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #3
	str r0, [r5, #0]
	b _02099F3E
_02099F20:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02099F3E
	add r0, r4, #0
	bl sub_0209A0E0
	add r0, r4, #0
	bl sub_0209A044
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	mov r6, #1
_02099F3E:
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02099F44: .word 0x00000495
_02099F48: .word 0xFFFFE0FF
_02099F4C: .word 0x04001000
_02099F50: .word sub_02099F74
	thumb_func_end sub_02099E38

	thumb_func_start sub_02099F54
sub_02099F54: ; 0x02099F54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl sub_02006830
	add r0, r4, #0
	bl sub_0201807C
	mov r0, #0
	bl OS_ResetSystem
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02099F54

	thumb_func_start sub_02099F74
sub_02099F74: ; 0x02099F74
	ldr r3, _02099F7C ; =sub_0201C2B8
	ldr r0, [r0, #0x14]
	bx r3
	nop
_02099F7C: .word sub_0201C2B8
	thumb_func_end sub_02099F74

	thumb_func_start sub_02099F80
sub_02099F80: ; 0x02099F80
	push {r4, r5, lr}
	sub sp, #0x5c
	ldr r5, _0209A02C ; =0x020F8A20
	add r4, r0, #0
	add r3, sp, #0x34
	mov r2, #5
_02099F8C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02099F8C
	add r0, sp, #0x34
	bl sub_0201FE94
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x24
	ldr r5, _0209A030 ; =0x020F89F4
	str r0, [r4, #0x14]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0209A034 ; =0x020F8A04
	add r3, sp, #8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x14]
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0209A038 ; =0x000001E2
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	mov r3, #2
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0209A03C ; =0x000001D9
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	mov r3, #3
	bl sub_0200DAA4
	ldr r2, [r4, #0]
	mov r0, #0
	mov r1, #0x20
	bl sub_02002E7C
	mov r0, #0
	ldr r3, [r4, #0]
	mov r1, #0x20
	add r2, r0, #0
	bl sub_02019690
	ldr r1, _0209A040 ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _0209A040 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	add sp, #0x5c
	pop {r4, r5, pc}
	; .align 2, 0
_0209A02C: .word 0x020F8A20
_0209A030: .word 0x020F89F4
_0209A034: .word 0x020F8A04
_0209A038: .word 0x000001E2
_0209A03C: .word 0x000001D9
_0209A040: .word 0x00006C21
	thumb_func_end sub_02099F80

	thumb_func_start sub_0209A044
sub_0209A044: ; 0x0209A044
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #0x14]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209A044

	thumb_func_start sub_0209A098
sub_0209A098: ; 0x0209A098
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r3, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	mov r2, #4
	bl sub_0200B144
	str r0, [r4, #0x18]
	bl sub_0201D710
	mov r0, #0
	str r0, [r4, #8]
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	ldr r2, _0209A0DC ; =0x020F89E4
	add r1, #0x1c
	bl sub_0201A8D4
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	mov r2, #0
	add r4, #0x1c
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	add sp, #8
	pop {r4, pc}
	nop
_0209A0DC: .word 0x020F89E4
	thumb_func_end sub_0209A098

	thumb_func_start sub_0209A0E0
sub_0209A0E0: ; 0x0209A0E0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x1c
	bl sub_0201A8FC
	ldr r0, [r4, #0x18]
	bl sub_0200B190
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209A0E0

	thumb_func_start sub_0209A0F4
sub_0209A0F4: ; 0x0209A0F4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r5, #0
	cmp r1, #6
	bhi _0209A1EC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209A10E: ; jump table
	.short _0209A11C - _0209A10E - 2 ; case 0
	.short _0209A146 - _0209A10E - 2 ; case 1
	.short _0209A166 - _0209A10E - 2 ; case 2
	.short _0209A190 - _0209A10E - 2 ; case 3
	.short _0209A1B0 - _0209A10E - 2 ; case 4
	.short _0209A1D0 - _0209A10E - 2 ; case 5
	.short _0209A1E2 - _0209A10E - 2 ; case 6
_0209A11C:
	add r1, r5, #0
	mov r2, #1
	mov r3, #4
	bl sub_0209A200
	cmp r0, #1
	bne _0209A1EC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, _0209A1F4 ; =0x020F89EC
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r2, _0209A1F8 ; =0x000001D9
	mov r3, #3
	bl sub_02002054
	str r0, [r4, #0x2c]
	mov r0, #1
	str r0, [r4, #4]
	b _0209A1EC
_0209A146:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0]
	bl sub_02002114
	cmp r0, #0
	beq _0209A15A
	sub r1, r5, #2
	cmp r0, r1
	beq _0209A160
	b _0209A1EC
_0209A15A:
	mov r0, #2
	str r0, [r4, #4]
	b _0209A1EC
_0209A160:
	mov r0, #6
	str r0, [r4, #4]
	b _0209A1EC
_0209A166:
	mov r1, #1
	add r2, r1, #0
	mov r3, #4
	bl sub_0209A200
	cmp r0, #1
	bne _0209A1EC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, _0209A1F4 ; =0x020F89EC
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r2, _0209A1F8 ; =0x000001D9
	mov r3, #3
	bl sub_02002054
	str r0, [r4, #0x2c]
	mov r0, #3
	str r0, [r4, #4]
	b _0209A1EC
_0209A190:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0]
	bl sub_02002114
	cmp r0, #0
	beq _0209A1A4
	sub r1, r5, #2
	cmp r0, r1
	beq _0209A1AA
	b _0209A1EC
_0209A1A4:
	mov r0, #4
	str r0, [r4, #4]
	b _0209A1EC
_0209A1AA:
	mov r0, #6
	str r0, [r4, #4]
	b _0209A1EC
_0209A1B0:
	mov r1, #2
	mov r2, #1
	add r3, r5, #0
	bl sub_0209A200
	cmp r0, #1
	bne _0209A1EC
	add r0, r4, #0
	ldr r1, _0209A1FC ; =0x000001E2
	add r0, #0x1c
	bl sub_0200E7FC
	str r0, [r4, #0x34]
	mov r0, #5
	str r0, [r4, #4]
	b _0209A1EC
_0209A1D0:
	ldr r0, [r4, #0x30]
	bl sub_020245E8
	ldr r0, [r4, #0x34]
	bl sub_0200EBA0
	mov r0, #6
	str r0, [r4, #4]
	b _0209A1EC
_0209A1E2:
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl sub_02019EBC
	mov r5, #1
_0209A1EC:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0209A1F4: .word 0x020F89EC
_0209A1F8: .word 0x000001D9
_0209A1FC: .word 0x000001E2
	thumb_func_end sub_0209A0F4

	thumb_func_start sub_0209A200
sub_0209A200: ; 0x0209A200
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r7, r1, #0
	add r4, r3, #0
	mov r6, #0
	cmp r0, #0
	beq _0209A21C
	cmp r0, #1
	beq _0209A284
	cmp r0, #2
	beq _0209A2A0
	b _0209A2B4
_0209A21C:
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x1c
	mov r1, #0xf
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0201AE78
	add r0, r5, #0
	ldr r2, _0209A2BC ; =0x000001E2
	add r0, #0x1c
	add r1, r6, #0
	mov r3, #2
	bl sub_0200E060
	mov r0, #1
	ldr r1, [r5, #0]
	lsl r0, r0, #0xa
	bl sub_02023790
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #0x10]
	add r1, r7, #0
	bl sub_0200B1B8
	add r3, r6, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x10]
	add r0, #0x1c
	mov r1, #1
	bl sub_0201D738
	str r0, [r5, #0xc]
	cmp r4, #0
	bne _0209A27C
	ldr r0, [r5, #0x10]
	bl sub_020237BC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0209A27C:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0209A2B4
_0209A284:
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0209A2B4
	ldr r0, [r5, #0x10]
	bl sub_020237BC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0209A2B4
_0209A2A0:
	cmp r2, #0
	bne _0209A2AE
	ldr r0, _0209A2C0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0209A2B4
_0209A2AE:
	mov r0, #0
	str r0, [r5, #8]
	mov r6, #1
_0209A2B4:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0209A2BC: .word 0x000001E2
_0209A2C0: .word 0x021BF67C
	thumb_func_end sub_0209A200

	.rodata


	.global Unk_020F89E4
Unk_020F89E4: ; 0x020F89E4
	.incbin "incbin/arm9_rodata.bin", 0x13DA4, 0x13DAC - 0x13DA4

	.global Unk_020F89EC
Unk_020F89EC: ; 0x020F89EC
	.incbin "incbin/arm9_rodata.bin", 0x13DAC, 0x13DB4 - 0x13DAC

	.global Unk_020F89F4
Unk_020F89F4: ; 0x020F89F4
	.incbin "incbin/arm9_rodata.bin", 0x13DB4, 0x13DC4 - 0x13DB4

	.global Unk_020F8A04
Unk_020F8A04: ; 0x020F8A04
	.incbin "incbin/arm9_rodata.bin", 0x13DC4, 0x13DE0 - 0x13DC4

	.global Unk_020F8A20
Unk_020F8A20: ; 0x020F8A20
	.incbin "incbin/arm9_rodata.bin", 0x13DE0, 0x13E08 - 0x13DE0

	.global Unk_020F8A48
Unk_020F8A48: ; 0x020F8A48
	.incbin "incbin/arm9_rodata.bin", 0x13E08, 0x10

