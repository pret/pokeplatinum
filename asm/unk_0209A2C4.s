	.include "macros/function.inc"
	.include "include/unk_0209A2C4.inc"

	

	.text


	thumb_func_start sub_0209A2C4
sub_0209A2C4: ; 0x0209A2C4
	push {r3, r4, r5, lr}
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x58
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0x40
	mov r2, #0x58
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x58
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #0x34]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209A2C4

	thumb_func_start sub_0209A300
sub_0209A300: ; 0x0209A300
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r6, r0, #0
	mov r4, #0
	cmp r1, #0
	beq _0209A31C
	cmp r1, #1
	beq _0209A376
	cmp r1, #2
	beq _0209A384
	b _0209A398
_0209A31C:
	add r0, r4, #0
	add r1, r4, #0
	bl sub_0200F344
	mov r0, #1
	add r1, r4, #0
	bl sub_0200F344
	add r0, r4, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0209A39C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0209A3A0 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r6, #0
	bl sub_0209A3D0
	add r0, r6, #0
	bl sub_0209A4E4
	bl sub_0201FFD0
	mov r0, #1
	str r0, [r5, #0]
	b _0209A398
_0209A376:
	bl sub_0209A544
	cmp r0, #1
	bne _0209A398
	mov r0, #2
	str r0, [r5, #0]
	b _0209A398
_0209A384:
	bl sub_0209A530
	add r0, r6, #0
	bl sub_0209A490
	add r0, r4, #0
	add r1, r0, #0
	bl sub_02017798
	mov r4, #1
_0209A398:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0209A39C: .word 0xFFFFE0FF
_0209A3A0: .word 0x04001000
	thumb_func_end sub_0209A300

	thumb_func_start sub_0209A3A4
sub_0209A3A4: ; 0x0209A3A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl sub_02006830
	add r0, r4, #0
	bl sub_0201807C
	ldr r0, _0209A3C8 ; =0x00000061
	ldr r1, _0209A3CC ; =0x0223D674
	bl sub_02000EC4
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0209A3C8: .word 0x00000061
_0209A3CC: .word 0x0223D674
	thumb_func_end sub_0209A3A4

	thumb_func_start sub_0209A3D0
sub_0209A3D0: ; 0x0209A3D0
	push {r4, r5, lr}
	sub sp, #0x5c
	ldr r5, _0209A47C ; =0x020F8A8C
	add r4, r0, #0
	add r3, sp, #0x34
	mov r2, #5
_0209A3DC:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0209A3DC
	add r0, sp, #0x34
	bl sub_0201FE94
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x24
	ldr r5, _0209A480 ; =0x020F8A60
	str r0, [r4, #0x18]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0209A484 ; =0x020F8A70
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
	ldr r0, [r4, #0x18]
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0209A488 ; =0x000001E2
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	mov r3, #2
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0209A48C ; =0x000001D9
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
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
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	add sp, #0x5c
	pop {r4, r5, pc}
	; .align 2, 0
_0209A47C: .word 0x020F8A8C
_0209A480: .word 0x020F8A60
_0209A484: .word 0x020F8A70
_0209A488: .word 0x000001E2
_0209A48C: .word 0x000001D9
	thumb_func_end sub_0209A3D0

	thumb_func_start sub_0209A490
sub_0209A490: ; 0x0209A490
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
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #0x18]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209A490

	thumb_func_start sub_0209A4E4
sub_0209A4E4: ; 0x0209A4E4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r2, _0209A528 ; =0x00000196
	ldr r3, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [r4, #0x1c]
	bl sub_0201D710
	mov r0, #0
	str r0, [r4, #0xc]
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	ldr r2, _0209A52C ; =0x020F8A58
	add r1, #0x20
	bl sub_0201A8D4
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	mov r2, #0
	add r4, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	add sp, #8
	pop {r4, pc}
	nop
_0209A528: .word 0x00000196
_0209A52C: .word 0x020F8A58
	thumb_func_end sub_0209A4E4

	thumb_func_start sub_0209A530
sub_0209A530: ; 0x0209A530
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x20
	bl sub_0201A8FC
	ldr r0, [r4, #0x1c]
	bl sub_0200B190
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209A530

	thumb_func_start sub_0209A544
sub_0209A544: ; 0x0209A544
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r5, #0
	cmp r1, #6
	bls _0209A554
	b _0209A67E
_0209A554:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209A560: ; jump table
	.short _0209A56E - _0209A560 - 2 ; case 0
	.short _0209A586 - _0209A560 - 2 ; case 1
	.short _0209A5F8 - _0209A560 - 2 ; case 2
	.short _0209A624 - _0209A560 - 2 ; case 3
	.short _0209A632 - _0209A560 - 2 ; case 4
	.short _0209A65E - _0209A560 - 2 ; case 5
	.short _0209A67C - _0209A560 - 2 ; case 6
_0209A56E:
	ldr r0, [r4, #0x34]
	bl sub_020247BC
	str r0, [r4, #0x3c]
	cmp r0, #0
	bne _0209A580
	mov r0, #6
	str r0, [r4, #4]
	b _0209A67E
_0209A580:
	mov r0, #1
	str r0, [r4, #4]
	b _0209A67E
_0209A586:
	mov r1, #2
	str r1, [r4, #4]
	ldr r0, [r4, #0x3c]
	add r2, r0, #0
	tst r2, r1
	beq _0209A59E
	mov r1, #3
	bic r0, r1
	str r0, [r4, #0x3c]
	mov r0, #1
	str r0, [r4, #8]
	b _0209A67E
_0209A59E:
	mov r2, #1
	add r3, r0, #0
	tst r3, r2
	beq _0209A5AE
	eor r0, r2
	str r0, [r4, #0x3c]
	str r5, [r4, #8]
	b _0209A67E
_0209A5AE:
	mov r2, #8
	tst r2, r0
	beq _0209A5C0
	mov r1, #0xc
	bic r0, r1
	str r0, [r4, #0x3c]
	mov r0, #5
	str r0, [r4, #8]
	b _0209A67E
_0209A5C0:
	mov r2, #4
	add r3, r0, #0
	tst r3, r2
	beq _0209A5D0
	eor r0, r2
	str r0, [r4, #0x3c]
	str r2, [r4, #8]
	b _0209A67E
_0209A5D0:
	mov r2, #0x20
	tst r2, r0
	beq _0209A5E2
	mov r1, #0x30
	bic r0, r1
	str r0, [r4, #0x3c]
	mov r0, #3
	str r0, [r4, #8]
	b _0209A67E
_0209A5E2:
	mov r2, #0x10
	add r3, r0, #0
	tst r3, r2
	beq _0209A5F2
	eor r0, r2
	str r0, [r4, #0x3c]
	str r1, [r4, #8]
	b _0209A67E
_0209A5F2:
	mov r0, #6
	str r0, [r4, #4]
	b _0209A67E
_0209A5F8:
	ldr r1, _0209A684 ; =0x00006C21
	add r0, r5, #0
	bl sub_0201975C
	ldr r1, _0209A684 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #3
	str r0, [r4, #4]
	b _0209A67E
_0209A624:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0209A67E
	mov r0, #4
	str r0, [r4, #4]
	b _0209A67E
_0209A632:
	ldr r1, [r4, #8]
	add r2, r5, #0
	mov r3, #4
	bl sub_0209A688
	cmp r0, #1
	bne _0209A67E
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #5
	str r0, [r4, #4]
	b _0209A67E
_0209A65E:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0209A67E
	add r0, r5, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	add r1, r5, #0
	bl sub_0201975C
	mov r0, #1
	str r0, [r4, #4]
	b _0209A67E
_0209A67C:
	mov r5, #1
_0209A67E:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0209A684: .word 0x00006C21
	thumb_func_end sub_0209A544

	thumb_func_start sub_0209A688
sub_0209A688: ; 0x0209A688
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	add r4, r3, #0
	mov r6, #0
	cmp r0, #0
	beq _0209A6A4
	cmp r0, #1
	beq _0209A70C
	cmp r0, #2
	beq _0209A728
	b _0209A73C
_0209A6A4:
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0xf
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0201AE78
	add r0, r5, #0
	ldr r2, _0209A744 ; =0x000001E2
	add r0, #0x20
	add r1, r6, #0
	mov r3, #2
	bl sub_0200E060
	mov r0, #1
	ldr r1, [r5, #0]
	lsl r0, r0, #0xa
	bl sub_02023790
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x14]
	add r1, r7, #0
	bl sub_0200B1B8
	add r3, r6, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x14]
	add r0, #0x20
	mov r1, #1
	bl sub_0201D738
	str r0, [r5, #0x10]
	cmp r4, #0
	bne _0209A704
	ldr r0, [r5, #0x14]
	bl sub_020237BC
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
_0209A704:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _0209A73C
_0209A70C:
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0209A73C
	ldr r0, [r5, #0x14]
	bl sub_020237BC
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _0209A73C
_0209A728:
	cmp r2, #0
	bne _0209A736
	ldr r0, _0209A748 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0209A73C
_0209A736:
	mov r0, #0
	str r0, [r5, #0xc]
	mov r6, #1
_0209A73C:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0209A744: .word 0x000001E2
_0209A748: .word 0x021BF67C
	thumb_func_end sub_0209A688

	.rodata


	.global Unk_020F8A58
Unk_020F8A58: ; 0x020F8A58
	.incbin "incbin/arm9_rodata.bin", 0x13E18, 0x13E20 - 0x13E18

	.global Unk_020F8A60
Unk_020F8A60: ; 0x020F8A60
	.incbin "incbin/arm9_rodata.bin", 0x13E20, 0x13E30 - 0x13E20

	.global Unk_020F8A70
Unk_020F8A70: ; 0x020F8A70
	.incbin "incbin/arm9_rodata.bin", 0x13E30, 0x13E4C - 0x13E30

	.global Unk_020F8A8C
Unk_020F8A8C: ; 0x020F8A8C
	.incbin "incbin/arm9_rodata.bin", 0x13E4C, 0x13E74 - 0x13E4C

	.global Unk_020F8AB4
Unk_020F8AB4: ; 0x020F8AB4
	.incbin "incbin/arm9_rodata.bin", 0x13E74, 0x10

