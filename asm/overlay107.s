	.include "macros/function.inc"


	.text

	thumb_func_start ov107_02241AE0
ov107_02241AE0: ; 0x02241AE0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	ldr r0, _02241BC8 ; =0x00000068
	mov r1, #2
	bl sub_02006590
	bl ov107_02242F24
	mov r2, #0x25
	mov r0, #3
	mov r1, #0x64
	lsl r2, r2, #0xc
	bl sub_02017FC8
	ldr r1, _02241BCC ; =0x0000043C
	add r0, r4, #0
	mov r2, #0x64
	bl sub_0200681C
	ldr r2, _02241BCC ; =0x0000043C
	mov r1, #0
	add r5, r0, #0
	bl sub_020D5124
	mov r0, #0x64
	bl sub_02018340
	str r0, [r5, #0x4c]
	add r0, r4, #0
	str r4, [r5, #0]
	bl sub_02006840
	add r4, r0, #0
	mov r0, #0x73
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	bl sub_020302DC
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	bl sub_0203041C
	mov r1, #0x75
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r4, #4]
	add r2, r4, #0
	add r2, #0x20
	strb r0, [r5, #9]
	mov r0, #0xf5
	lsl r0, r0, #2
	sub r1, #8
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl sub_02025E44
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xf6
	ldr r1, [r4, #0x18]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r2, #0xff
	strb r2, [r5, #0x12]
	ldrh r1, [r4, #0x28]
	add r0, #0x5e
	add r2, #0xcd
	strh r1, [r5, r0]
	ldr r0, [r5, r2]
	bl sub_0203068C
	str r0, [r5, #4]
	ldr r0, _02241BD0 ; =0x00000433
	mov r3, #0
	mov r2, #1
_02241B84:
	add r1, r5, r3
	add r3, r3, #1
	strb r2, [r1, r0]
	cmp r3, #3
	blt _02241B84
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02241B9C
	mov r0, #3
	b _02241B9E
_02241B9C:
	mov r0, #4
_02241B9E:
	strb r0, [r5, #0x14]
	ldrb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	sub r0, r0, #1
	strb r0, [r5, #0xc]
	add r0, r5, #0
	bl ov107_02242F5C
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241BBE
	add r0, r5, #0
	bl sub_0209BA80
_02241BBE:
	mov r0, #0
	str r0, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02241BC8: .word 0x00000068
_02241BCC: .word 0x0000043C
_02241BD0: .word 0x00000433
	thumb_func_end ov107_02241AE0

	thumb_func_start ov107_02241BD4
ov107_02241BD4: ; 0x02241BD4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, _02241D28 ; =0x00000432
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #1
	bne _02241C3E
	ldr r2, [r5, #0]
	cmp r2, #1
	bne _02241C64
	mov r2, #0
	strb r2, [r4, r1]
	bl ov107_022451D8
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02241C0A
	bl ov107_02249B8C
	ldrb r1, [r4, #0xe]
	mov r0, #4
	bic r1, r0
	strb r1, [r4, #0xe]
_02241C0A:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl FUN_0222E5D0
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov107_02244BD0
	b _02241C64
_02241C3E:
	ldrb r0, [r4, #0x12]
	cmp r0, #0xff
	beq _02241C64
	ldr r0, [r5, #0]
	cmp r0, #1
	beq _02241C4E
	cmp r0, #3
	bne _02241C64
_02241C4E:
	ldr r0, _02241D28 ; =0x00000432
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov107_022451D8
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov107_02244BD0
_02241C64:
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _02241D12
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241C76: ; jump table
	.short _02241C80 - _02241C76 - 2 ; case 0
	.short _02241C96 - _02241C76 - 2 ; case 1
	.short _02241CD8 - _02241C76 - 2 ; case 2
	.short _02241CEE - _02241C76 - 2 ; case 3
	.short _02241D04 - _02241C76 - 2 ; case 4
_02241C80:
	add r0, r4, #0
	bl ov107_02241D6C
	cmp r0, #1
	bne _02241D12
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov107_02244BD0
	b _02241D12
_02241C96:
	add r0, r4, #0
	bl ov107_02241EC8
	cmp r0, #1
	bne _02241D12
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02241CB6
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov107_02244BD0
	b _02241D12
_02241CB6:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241CCC
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov107_02244BD0
	b _02241D12
_02241CCC:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov107_02244BD0
	b _02241D12
_02241CD8:
	add r0, r4, #0
	bl ov107_02242C64
	cmp r0, #1
	bne _02241D12
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov107_02244BD0
	b _02241D12
_02241CEE:
	add r0, r4, #0
	bl ov107_02242D60
	cmp r0, #1
	bne _02241D12
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov107_02244BD0
	b _02241D12
_02241D04:
	add r0, r4, #0
	bl ov107_02242DCC
	cmp r0, #1
	bne _02241D12
	mov r0, #1
	pop {r3, r4, r5, pc}
_02241D12:
	add r0, r4, #0
	bl ov107_02245C00
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02241D28: .word 0x00000432
	thumb_func_end ov107_02241BD4

	thumb_func_start ov107_02241D2C
ov107_02241D2C: ; 0x02241D2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0xf5
	lsl r0, r0, #2
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, r0]
	strh r1, [r0]
	bl sub_0201DC3C
	add r0, r4, #0
	bl ov107_02242E14
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x64
	bl sub_0201807C
	ldr r0, _02241D68 ; =0x00000068
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02241D68: .word 0x00000068
	thumb_func_end ov107_02241D2C

	thumb_func_start ov107_02241D6C
ov107_02241D6C: ; 0x02241D6C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _02241E68
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241D84: ; jump table
	.short _02241D8E - _02241D84 - 2 ; case 0
	.short _02241DAA - _02241D84 - 2 ; case 1
	.short _02241DD2 - _02241D84 - 2 ; case 2
	.short _02241E18 - _02241D84 - 2 ; case 3
	.short _02241E5A - _02241D84 - 2 ; case 4
_02241D8E:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241DA2
	bl sub_020365F4
	mov r0, #0xd7
	bl sub_020364F0
_02241DA2:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241DAA:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241DCA
	mov r0, #0xd7
	bl sub_02036540
	cmp r0, #1
	bne _02241E68
	bl sub_020365F4
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241DCA:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241DD2:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241DF2
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl ov107_0224529C
	cmp r0, #1
	bne _02241E68
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241DF2:
	add r0, r4, #0
	bl ov107_02241E70
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241E18:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241E52
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	blo _02241E68
	mov r0, #0
	strb r0, [r4, #0xf]
	add r0, r4, #0
	bl ov107_02241E70
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241E52:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241E5A:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02241E68
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02241E68:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02241D6C

	thumb_func_start ov107_02241E70
ov107_02241E70: ; 0x02241E70
	push {r4, r5, lr}
	sub sp, #0xc
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	add r1, #2
	add r2, sp, #8
	add r3, #2
	bl ov107_02244E14
	add r5, r4, #0
	add r5, #0x50
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r1, r5, #0
	bl ov107_02245464
	add r0, r4, #0
	add r1, r5, #0
	bl ov107_02245780
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x80
	bl ov107_02243CC0
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x70
	bl ov107_02243DB0
	add r0, r4, #0
	bl ov107_02243FA4
	bl sub_0201FFD0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02241E70

	thumb_func_start ov107_02241EC8
ov107_02241EC8: ; 0x02241EC8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0x15
	bls _02241ED8
	bl _02242C54
_02241ED8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241EE4: ; jump table
	.short _02241F10 - _02241EE4 - 2 ; case 0
	.short _02241FC2 - _02241EE4 - 2 ; case 1
	.short _02242090 - _02241EE4 - 2 ; case 2
	.short _022422D8 - _02241EE4 - 2 ; case 3
	.short _022424AE - _02241EE4 - 2 ; case 4
	.short _02242580 - _02241EE4 - 2 ; case 5
	.short _02242592 - _02241EE4 - 2 ; case 6
	.short _022425C2 - _02241EE4 - 2 ; case 7
	.short _022425E6 - _02241EE4 - 2 ; case 8
	.short _02242730 - _02241EE4 - 2 ; case 9
	.short _022427CC - _02241EE4 - 2 ; case 10
	.short _0224294A - _02241EE4 - 2 ; case 11
	.short _02242A28 - _02241EE4 - 2 ; case 12
	.short _02242A3A - _02241EE4 - 2 ; case 13
	.short _02242A6A - _02241EE4 - 2 ; case 14
	.short _02242A8E - _02241EE4 - 2 ; case 15
	.short _02242AAA - _02241EE4 - 2 ; case 16
	.short _02242AD2 - _02241EE4 - 2 ; case 17
	.short _02242B96 - _02241EE4 - 2 ; case 18
	.short _02242BB2 - _02241EE4 - 2 ; case 19
	.short _02242BD6 - _02241EE4 - 2 ; case 20
	.short _02242C16 - _02241EE4 - 2 ; case 21
_02241F10:
	ldrb r1, [r4, #0xe]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1e
	cmp r1, #1
	bne _02241F3E
	bl ov107_02244064
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xcc
	mov r2, #0x64
	bl ov107_02249C60
	mov r0, #2
	strb r0, [r4, #8]
	ldrb r1, [r4, #0xe]
	mov r0, #0x60
	add sp, #0x18
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #0
	pop {r4, r5, r6, pc}
_02241F3E:
	cmp r1, #2
	bne _02241F66
	bl ov107_0224409C
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd3
	mov r2, #0x6a
	bl ov107_02249C60
	mov r0, #8
	strb r0, [r4, #8]
	ldrb r1, [r4, #0xe]
	mov r0, #0x60
	add sp, #0x18
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #0
	pop {r4, r5, r6, pc}
_02241F66:
	ldr r1, _022422C0 ; =0x021BF67C
	ldr r1, [r1, #0x48]
	bl ov107_02244BD8
	ldr r0, _022422C0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02241FA0
	ldr r0, _022422C4 ; =0x000005DC
	bl sub_02005748
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	blo _02241F8C
	add sp, #0x18
	mov r0, #1
	pop {r4, r5, r6, pc}
_02241F8C:
	add r0, r4, #0
	bl ov107_0224400C
	add r0, r4, #0
	bl ov107_02244018
	mov r0, #1
	strb r0, [r4, #8]
	bl _02242C54
_02241FA0:
	mov r0, #2
	tst r0, r1
	beq _02241FE2
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _02241FE2
	ldr r0, _022422C4 ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0xd]
	add r0, r4, #0
	bl ov107_02244C70
	bl _02242C54
_02241FC2:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001288
	ldr r1, _022422C4 ; =0x000005DC
	add r5, r0, #0
	bl ov107_02249CE0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _0224200A
	bhs _02242014
	cmp r5, #0xb
	bls _02241FE6
_02241FE2:
	bl _02242C54
_02241FE6:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241FF2: ; jump table
	.short _02242028 - _02241FF2 - 2 ; case 0
	.short _02242C54 - _02241FF2 - 2 ; case 1
	.short _02242C54 - _02241FF2 - 2 ; case 2
	.short _02242C54 - _02241FF2 - 2 ; case 3
	.short _02242C54 - _02241FF2 - 2 ; case 4
	.short _0224203C - _02241FF2 - 2 ; case 5
	.short _02242C54 - _02241FF2 - 2 ; case 6
	.short _02242C54 - _02241FF2 - 2 ; case 7
	.short _02242C54 - _02241FF2 - 2 ; case 8
	.short _02242050 - _02241FF2 - 2 ; case 9
	.short _02242066 - _02241FF2 - 2 ; case 10
	.short _0224207C - _02241FF2 - 2 ; case 11
_0224200A:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bl _02242C54
_02242014:
	add r0, r4, #0
	bl ov107_0224403C
	add r0, r4, #0
	bl ov107_02243FA4
	mov r0, #0
	strb r0, [r4, #8]
	bl _02242C54
_02242028:
	add r0, r4, #0
	bl ov107_0224403C
	add r0, r4, #0
	bl ov107_02244064
	mov r0, #2
	strb r0, [r4, #8]
	bl _02242C54
_0224203C:
	add r0, r4, #0
	bl ov107_0224403C
	add r0, r4, #0
	bl ov107_0224409C
	mov r0, #8
	strb r0, [r4, #8]
	bl _02242C54
_02242050:
	add r0, r4, #0
	bl ov107_0224403C
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_02245B40
	mov r0, #0x14
	strb r0, [r4, #8]
	bl _02242C54
_02242066:
	add r0, r4, #0
	bl ov107_0224403C
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_02245B90
	mov r0, #0x15
	strb r0, [r4, #8]
	bl _02242C54
_0224207C:
	add r0, r4, #0
	bl ov107_0224403C
	add r0, r4, #0
	bl ov107_02243FA4
	mov r0, #0
	strb r0, [r4, #8]
	bl _02242C54
_02242090:
	mov r0, #0x66
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x16
	bl sub_020014D0
	ldr r0, _022422C0 ; =0x021BF67C
	mov r1, #0x40
	ldr r2, [r0, #0x48]
	add r0, r2, #0
	tst r0, r1
	beq _02242104
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _02242162
	mov r0, #1
	str r0, [sp]
	mov r0, #0x80
	mov r1, #0x66
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #8
	add r1, r4, r1
	mov r3, #4
	bl sub_02001408
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020013AC
	ldr r0, _022422C4 ; =0x000005DC
	bl sub_02005748
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r4, #0xb0
	add r1, r4, #0
	mov r2, #0x1c
	str r3, [sp, #0x14]
	bl ov107_0224379C
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_02242104:
	mov r0, #0x80
	tst r0, r2
	beq _02242162
	ldrh r0, [r4, #0x16]
	cmp r0, #4
	bne _02242162
	mov r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r1, #0x66
	str r2, [sp, #0xc]
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #8
	add r1, r4, r1
	add r3, r2, #0
	bl sub_02001408
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020013AC
	ldr r0, _022422C4 ; =0x000005DC
	bl sub_02005748
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r4, #0xb0
	add r1, r4, #0
	mov r2, #0x18
	str r3, [sp, #0x14]
	bl ov107_0224379C
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_02242162:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001288
	ldr r1, _022422C4 ; =0x000005DC
	add r5, r0, #0
	bl ov107_02249CE0
	mov r0, #0x66
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x16
	bl sub_020014D0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _022421AA
	bhs _022421B4
	cmp r5, #4
	bls _02242194
	bl _02242C54
_02242194:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022421A0: ; jump table
	.short _02242C54 - _022421A0 - 2 ; case 0
	.short _022421D0 - _022421A0 - 2 ; case 1
	.short _022421D0 - _022421A0 - 2 ; case 2
	.short _022421D0 - _022421A0 - 2 ; case 3
	.short _0224224A - _022421A0 - 2 ; case 4
_022421AA:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bl _02242C54
_022421B4:
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_02244094
	add r0, r4, #0
	bl ov107_02244018
	mov r0, #1
	strb r0, [r4, #8]
	bl _02242C54
_022421D0:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov107_02244094
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov107_02249CAC
	ldrh r2, [r4, #0x16]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _022422C8 ; =0x02249FF0
	ldr r1, [r1, r3]
	cmp r0, r1
	bhs _0224221E
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_0224221E:
	lsl r3, r2, #1
	ldr r2, _022422CC ; =0x02249E0C
	mov r1, #0
	ldrh r2, [r2, r3]
	add r0, r4, #0
	mov r3, #3
	str r1, [sp]
	bl ov107_02244A74
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_022441DC
	mov r0, #3
	strb r0, [r4, #8]
	bl _02242C54
_0224224A:
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov107_02249CAC
	add r6, r0, #0
	cmp r6, #3
	bne _02242270
	ldr r0, _022422C4 ; =0x000005DC
	mov r1, #0
	bl sub_020057A4
	ldr r0, _022422D0 ; =0x000005F3
	bl sub_02005748
	bl _02242C54
_02242270:
	strb r5, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244094
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	mov r1, #0
	ldr r2, _022422D4 ; =0x02249E46
	lsl r3, r6, #1
	ldrh r2, [r2, r3]
	add r0, r4, #0
	mov r3, #4
	str r1, [sp]
	bl ov107_02244A74
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_022441DC
	mov r0, #4
	strb r0, [r4, #8]
	bl _02242C54
	; .align 2, 0
_022422C0: .word 0x021BF67C
_022422C4: .word 0x000005DC
_022422C8: .word 0x02249FF0
_022422CC: .word 0x02249E0C
_022422D0: .word 0x000005F3
_022422D4: .word 0x02249E46
_022422D8:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02242302
	bhs _022422FC
	cmp r0, #1
	bls _022422F4
	bl _02242C54
_022422F4:
	cmp r0, #0
	beq _0224230A
	cmp r0, #1
	bne _022422FE
_022422FC:
	b _02242494
_022422FE:
	bl _02242C54
_02242302:
	add r1, r1, #1
	cmp r0, r1
	bl _02242C54
_0224230A:
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r5, r0, #0
	add r0, r4, #0
	bl ov107_02245618
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r6, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl sub_02030698
	add r6, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov107_02249CAC
	ldrh r1, [r4, #0x16]
	mov r2, #0xc
	add r3, r1, #0
	mul r3, r2
	ldr r2, _0224266C ; =0x02249FF0
	ldr r2, [r2, r3]
	cmp r0, r2
	bhs _0224238A
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_0224238A:
	ldr r0, _02242670 ; =0x02249E0C
	lsl r2, r1, #1
	ldrh r0, [r0, r2]
	cmp r6, r0
	bhs _022423BC
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	add r0, r4, #0
	mov r1, #0x20
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_022423BC:
	cmp r1, #0
	bne _022423EE
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	cmp r6, r0
	bne _02242448
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_022423EE:
	cmp r1, #1
	bne _02242410
	add r0, r5, #0
	bl ov107_02245210
	cmp r0, #0
	bne _02242448
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_02242410:
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	cmp r6, r0
	bne _02242448
	add r0, r5, #0
	bl ov107_02245210
	cmp r0, #0
	bne _02242448
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_02242448:
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02242486
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	sub r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _02242670 ; =0x02249E0C
	ldrh r2, [r2, r3]
	bl FUN_0223BC2C
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov107_02245780
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_022454F8
	mov r0, #0x12
	strb r0, [r4, #8]
	b _02242C54
_02242486:
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #0x18
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02242494:
	add r0, r4, #0
	bl ov107_02245618
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_02244064
	mov r0, #2
	strb r0, [r4, #8]
	b _02242C54
_022424AE:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _022424D0
	bhs _02242566
	cmp r0, #1
	bhi _022424CE
	cmp r0, #0
	beq _022424D6
	cmp r0, #1
	beq _02242566
_022424CE:
	b _02242C54
_022424D0:
	add r1, r1, #1
	cmp r0, r1
	b _02242C54
_022424D6:
	add r0, r4, #0
	bl ov107_02245618
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	add r5, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov107_02249CAC
	lsl r1, r0, #1
	ldr r0, _02242674 ; =0x02249E46
	ldrh r0, [r0, r1]
	cmp r5, r0
	bhs _0224253E
	add r0, r4, #0
	bl ov107_02245618
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	add r0, r4, #0
	mov r1, #0x29
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	b _02242C54
_0224253E:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02242558
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #4
	bl ov107_02245C94
	mov r0, #5
	strb r0, [r4, #8]
	b _02242C54
_02242558:
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #0x18
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02242566:
	add r0, r4, #0
	bl ov107_02245618
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_02244064
	mov r0, #2
	strb r0, [r4, #8]
	b _02242C54
_02242580:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov107_02244E44
	cmp r0, #1
	bne _0224262A
	mov r0, #6
	strb r0, [r4, #8]
	b _02242C54
_02242592:
	ldr r0, _02242678 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224262A
	ldr r0, _0224267C ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov107_02245618
	add r0, r4, #0
	bl ov107_02244064
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xcc
	mov r2, #0x64
	bl ov107_02249C60
	mov r0, #2
	strb r0, [r4, #8]
	b _02242C54
_022425C2:
	ldr r0, _02242678 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224262A
	ldr r0, _0224267C ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_02244064
	mov r0, #2
	strb r0, [r4, #8]
	b _02242C54
_022425E6:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001288
	ldr r1, _0224267C ; =0x000005DC
	add r5, r0, #0
	bl ov107_02249CE0
	mov r0, #0x66
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x16
	bl sub_020014D0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _0224262C
	bhs _02242632
	cmp r5, #8
	bhi _0224262A
	cmp r5, #6
	blo _0224262A
	beq _0224264C
	cmp r5, #7
	beq _02242680
	cmp r5, #8
	beq _022426DA
_0224262A:
	b _02242C54
_0224262C:
	add r0, r0, #1
	cmp r5, r0
	b _02242C54
_02242632:
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_022440C0
	add r0, r4, #0
	bl ov107_02244018
	mov r0, #1
	strb r0, [r4, #8]
	b _02242C54
_0224264C:
	add r0, r4, #0
	add r0, #0xb0
	strb r5, [r4, #0x13]
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_022440C0
	add r0, r4, #0
	mov r1, #6
	bl ov107_022440C8
	mov r0, #9
	strb r0, [r4, #8]
	b _02242C54
	nop
_0224266C: .word 0x02249FF0
_02242670: .word 0x02249E0C
_02242674: .word 0x02249E46
_02242678: .word 0x021BF67C
_0224267C: .word 0x000005DC
_02242680:
	add r0, r4, #0
	add r0, #0xb0
	strb r5, [r4, #0x13]
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_022440C0
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov107_02249CAC
	cmp r0, #1
	bne _022426CC
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #0xe
	strb r0, [r4, #8]
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_022426CC:
	add r0, r4, #0
	mov r1, #7
	bl ov107_022440C8
	mov r0, #9
	strb r0, [r4, #8]
	b _02242C54
_022426DA:
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov107_02249CAC
	add r6, r0, #0
	cmp r6, #3
	bne _022426FE
	ldr r0, _02242A1C ; =0x000005DC
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02242A20 ; =0x000005F3
	bl sub_02005748
	b _02242C54
_022426FE:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov107_022440C0
	mov r1, #0
	ldr r2, _02242A24 ; =0x02249E4C
	lsl r3, r6, #1
	ldrh r2, [r2, r3]
	add r0, r4, #0
	mov r3, #4
	str r1, [sp]
	bl ov107_02244A74
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_022441DC
	mov r0, #0xb
	strb r0, [r4, #8]
	b _02242C54
_02242730:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001288
	ldr r1, _02242A1C ; =0x000005DC
	add r5, r0, #0
	bl ov107_02249CE0
	mov r0, #0x66
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x16
	bl sub_020014D0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02242760
	add r0, r0, #1
	cmp r5, r0
	beq _02242804
	b _02242772
_02242760:
	add r0, r4, #0
	bl ov107_02244120
	add r0, r4, #0
	bl ov107_0224409C
	mov r0, #8
	strb r0, [r4, #8]
	b _02242C54
_02242772:
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244D5C
	add r2, r0, #0
	mov r1, #0
	add r0, r4, #0
	mov r3, #3
	str r1, [sp]
	bl ov107_02244A74
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_022441DC
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #0xa
	strb r0, [r4, #8]
	b _02242C54
_022427CC:
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r5, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02242806
	bhs _02242802
	cmp r0, #1
	bhi _02242804
	cmp r0, #0
	beq _0224280C
	cmp r0, #1
	bne _02242804
_02242802:
	b _02242938
_02242804:
	b _02242C54
_02242806:
	add r1, r1, #1
	cmp r0, r1
	b _02242C54
_0224280C:
	add r0, r4, #0
	bl ov107_02245618
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r6, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl sub_02030698
	add r6, r0, #0
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244D5C
	cmp r6, r0
	bhs _02242870
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	add r0, r4, #0
	mov r1, #0x20
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02242C54
_02242870:
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02242902
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022428DA
	add r0, r4, #0
	bl ov107_02244120
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244D5C
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl FUN_0223BC2C
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov107_02245780
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244DE0
	add r2, r0, #0
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_022455A0
	mov r0, #0x12
	strb r0, [r4, #8]
	b _02242C54
_022428DA:
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244DE0
	strh r0, [r4, #0x10]
	add r0, r4, #0
	bl ov107_02244120
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #0x18
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02242902:
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov107_02244A8C
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_0200B744
	add r0, r4, #0
	mov r1, #0x3c
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #0x10
	strb r0, [r4, #8]
	b _02242C54
_02242938:
	add r0, r4, #0
	bl ov107_02245618
	add r0, r4, #0
	bl ov107_022456E4
	mov r0, #9
	strb r0, [r4, #8]
	b _02242C54
_0224294A:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _0224296C
	bhs _02242A02
	cmp r0, #1
	bhi _0224296A
	cmp r0, #0
	beq _02242972
	cmp r0, #1
	beq _02242A02
_0224296A:
	b _02242C54
_0224296C:
	add r1, r1, #1
	cmp r0, r1
	b _02242C54
_02242972:
	add r0, r4, #0
	bl ov107_02245618
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	add r5, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov107_02249CAC
	lsl r1, r0, #1
	ldr r0, _02242A24 ; =0x02249E4C
	ldrh r0, [r0, r1]
	cmp r5, r0
	bhs _022429DA
	add r0, r4, #0
	bl ov107_02245618
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	add r0, r4, #0
	mov r1, #0x29
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #0xe
	strb r0, [r4, #8]
	b _02242C54
_022429DA:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022429F4
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #8
	bl ov107_02245C94
	mov r0, #0xc
	strb r0, [r4, #8]
	b _02242C54
_022429F4:
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #0x18
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02242A02:
	add r0, r4, #0
	bl ov107_02245618
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_0224409C
	mov r0, #8
	strb r0, [r4, #8]
	b _02242C54
	; .align 2, 0
_02242A1C: .word 0x000005DC
_02242A20: .word 0x000005F3
_02242A24: .word 0x02249E4C
_02242A28:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov107_02244E44
	cmp r0, #1
	bne _02242AF2
	mov r0, #0xd
	strb r0, [r4, #8]
	b _02242C54
_02242A3A:
	ldr r0, _02242C5C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02242AF2
	ldr r0, _02242C60 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov107_02245618
	add r0, r4, #0
	bl ov107_0224409C
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd3
	mov r2, #0x6a
	bl ov107_02249C60
	mov r0, #8
	strb r0, [r4, #8]
	b _02242C54
_02242A6A:
	ldr r0, _02242C5C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02242AF2
	ldr r0, _02242C60 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_0224409C
	mov r0, #8
	strb r0, [r4, #8]
	b _02242C54
_02242A8E:
	ldr r0, _02242C5C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02242AF2
	ldr r0, _02242C60 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov107_022456E4
	mov r0, #9
	strb r0, [r4, #8]
	b _02242C54
_02242AAA:
	ldr r0, _02242C5C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02242AF2
	ldr r0, _02242C60 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x3d
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_022441DC
	mov r0, #0x11
	strb r0, [r4, #8]
	b _02242C54
_02242AD2:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02242AF4
	bhs _02242B84
	cmp r0, #1
	bhi _02242AF2
	cmp r0, #0
	beq _02242AFA
	cmp r0, #1
	beq _02242B84
_02242AF2:
	b _02242C54
_02242AF4:
	add r1, r1, #1
	cmp r0, r1
	b _02242C54
_02242AFA:
	add r0, r4, #0
	bl ov107_02245618
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02242B5C
	add r0, r4, #0
	bl ov107_02244120
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244D5C
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl FUN_0223BC2C
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov107_02245780
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244DE0
	add r2, r0, #0
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_022455A0
	mov r0, #0x12
	strb r0, [r4, #8]
	b _02242C54
_02242B5C:
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244DE0
	strh r0, [r4, #0x10]
	add r0, r4, #0
	bl ov107_02244120
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #0x18
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02242B84:
	add r0, r4, #0
	bl ov107_02245618
	add r0, r4, #0
	bl ov107_022456E4
	mov r0, #9
	strb r0, [r4, #8]
	b _02242C54
_02242B96:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244E44
	cmp r0, #1
	bne _02242C54
	mov r0, #0x13
	strb r0, [r4, #8]
	b _02242C54
_02242BB2:
	ldr r0, _02242C5C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02242C54
	ldr r0, _02242C60 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_02243FA4
	mov r0, #0
	strb r0, [r4, #8]
	b _02242C54
_02242BD6:
	ldr r1, _02242C5C ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02242BEA
	sub r1, #0x21
	bl ov107_02245140
	b _02242C54
_02242BEA:
	mov r1, #0x10
	tst r1, r2
	beq _02242BF8
	mov r1, #1
	bl ov107_02245140
	b _02242C54
_02242BF8:
	mov r0, #3
	tst r0, r2
	beq _02242C54
	ldr r0, _02242C60 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov107_02245BE0
	add r0, r4, #0
	bl ov107_02244018
	mov r0, #1
	strb r0, [r4, #8]
	b _02242C54
_02242C16:
	ldr r1, _02242C5C ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02242C2A
	sub r1, #0x21
	bl ov107_0224518C
	b _02242C54
_02242C2A:
	mov r1, #0x10
	tst r1, r2
	beq _02242C38
	mov r1, #1
	bl ov107_0224518C
	b _02242C54
_02242C38:
	mov r0, #3
	tst r0, r2
	beq _02242C54
	ldr r0, _02242C60 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov107_02245BE0
	add r0, r4, #0
	bl ov107_02244018
	mov r0, #1
	strb r0, [r4, #8]
_02242C54:
	mov r0, #0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_02242C5C: .word 0x021BF67C
_02242C60: .word 0x000005DC
	thumb_func_end ov107_02241EC8

	thumb_func_start ov107_02242C64
ov107_02242C64: ; 0x02242C64
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #4
	bhi _02242D56
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242C7A: ; jump table
	.short _02242C84 - _02242C7A - 2 ; case 0
	.short _02242CB2 - _02242C7A - 2 ; case 1
	.short _02242CDE - _02242C7A - 2 ; case 2
	.short _02242D00 - _02242C7A - 2 ; case 3
	.short _02242D1E - _02242C7A - 2 ; case 4
_02242C84:
	ldrb r1, [r4, #0xe]
	mov r0, #0x60
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #0xb
	bl ov107_0224529C
	cmp r0, #1
	bne _02242D56
	ldrb r1, [r4, #0xe]
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0xe]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242D56
_02242CB2:
	ldrb r1, [r4, #0x12]
	cmp r1, #0xff
	beq _02242D56
	mov r1, #0
	strb r1, [r4, #0xf]
	ldrb r2, [r4, #0x13]
	cmp r2, #4
	beq _02242CC6
	cmp r2, #8
	bne _02242CD0
_02242CC6:
	ldrb r1, [r4, #0x12]
	add r0, r4, #0
	bl ov107_02245C94
	b _02242CD6
_02242CD0:
	ldrb r1, [r4, #0x12]
	bl ov107_022459D0
_02242CD6:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242D56
_02242CDE:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x12]
	bl ov107_02249C9C
	add r1, r0, #0
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244E44
	cmp r0, #1
	bne _02242D56
	mov r0, #0x1e
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242D56
_02242D00:
	ldrb r0, [r4, #0xb]
	sub r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _02242D56
	bl sub_020365F4
	mov r0, #0x82
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242D56
_02242D1E:
	mov r0, #0x82
	bl sub_02036540
	cmp r0, #1
	bne _02242D56
	bl sub_020365F4
	mov r0, #0x64
	bl sub_020363E8
	mov r0, #0xff
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	bne _02242D4C
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_02243FA4
_02242D4C:
	ldr r0, _02242D5C ; =0x00000432
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_02242D56:
	mov r0, #0
	pop {r4, pc}
	nop
_02242D5C: .word 0x00000432
	thumb_func_end ov107_02242C64

	thumb_func_start ov107_02242D60
ov107_02242D60: ; 0x02242D60
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _02242D74
	cmp r1, #1
	beq _02242D8C
	cmp r1, #2
	beq _02242DAE
	b _02242DC8
_02242D74:
	mov r1, #0xd
	mov r2, #0
	bl ov107_0224529C
	cmp r0, #1
	bne _02242DC8
	mov r0, #0x1e
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242DC8
_02242D8C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _02242D96
	sub r0, r0, #1
	strb r0, [r4, #0xb]
_02242D96:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _02242DC8
	bl sub_020365F4
	mov r0, #0x83
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242DC8
_02242DAE:
	mov r0, #0x83
	bl sub_02036540
	cmp r0, #1
	bne _02242DC8
	bl sub_020365F4
	add r4, #0xb0
	add r0, r4, #0
	bl ov107_02245288
	mov r0, #1
	pop {r4, pc}
_02242DC8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov107_02242D60

	thumb_func_start ov107_02242DCC
ov107_02242DCC: ; 0x02242DCC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02242DDE
	cmp r0, #1
	beq _02242DFE
	b _02242E0C
_02242DDE:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242E0C
_02242DFE:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02242E0C
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02242E0C:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02242DCC

	thumb_func_start ov107_02242E14
ov107_02242E14: ; 0x02242E14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	mov r0, #0xed
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	ldrb r0, [r5, #9]
	mov r1, #1
	bl FUN_0223B7A8
	add r7, r0, #0
	mov r6, #0
	cmp r7, #0
	ble _02242E96
	add r4, r5, #0
_02242E70:
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r7
	blt _02242E70
_02242E96:
	bl sub_02039794
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02002FA0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02002FA0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02002F54
	mov r0, #7
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r5, r0]
	add r0, #0x18
	add r0, r5, r0
	bl ov107_02249954
	ldr r0, [r5, #0x20]
	bl sub_0200B190
	ldr r0, [r5, #0x1c]
	bl sub_0200B190
	ldr r0, [r5, #0x24]
	bl sub_0200B3F0
	ldr r0, [r5, #0x28]
	bl sub_020237BC
	ldr r0, [r5, #0x2c]
	bl sub_020237BC
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200C560
	mov r6, #0
	add r4, r5, #0
_02242EF8:
	ldr r0, [r4, #0x30]
	bl sub_020237BC
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02242EF8
	add r0, r5, #0
	add r0, #0x50
	mov r1, #0
	bl ov107_02249D5C
	ldr r0, [r5, #0x4c]
	bl ov107_022433A8
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02006CA8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02242E14

	thumb_func_start ov107_02242F24
ov107_02242F24: ; 0x02242F24
	push {r3, lr}
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02242F54 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02242F58 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_02242F54: .word 0xFFFFE0FF
_02242F58: .word 0x04001000
	thumb_func_end ov107_02242F24

	thumb_func_start ov107_02242F5C
ov107_02242F5C: ; 0x02242F5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	mov r0, #0x96
	mov r1, #0x64
	bl sub_02006C24
	mov r1, #0xf7
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov107_02243324
	add r0, r5, #0
	bl ov107_02243384
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xc7
	mov r3, #0x64
	bl sub_0200B144
	str r0, [r5, #0x20]
	ldr r2, _02243310 ; =0x00000187
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x64
	bl sub_0200B144
	str r0, [r5, #0x1c]
	mov r0, #0x64
	bl sub_0200B358
	str r0, [r5, #0x24]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x64
	bl sub_02023790
	str r0, [r5, #0x28]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x64
	bl sub_02023790
	str r0, [r5, #0x2c]
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x20
_02242FBE:
	add r0, r7, #0
	mov r1, #0x64
	bl sub_02023790
	str r0, [r4, #0x30]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02242FBE
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x64
	bl sub_02002E7C
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x64
	bl sub_02002E98
	mov r0, #1
	mov r1, #2
	mov r2, #0
	mov r3, #0x64
	bl sub_0200C440
	mov r1, #0x71
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0x50
	mov r2, #0
	bl ov107_02249D14
	add r0, sp, #0x2c
	add r1, sp, #0x30
	add r3, sp, #0x2c
	str r0, [sp]
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0x30
	add r3, #2
	bl ov107_02244E14
	mov r1, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0x76
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0xe1
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0
	mov r0, #5
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0x7c
	str r0, [sp, #8]
	mov r0, #0x76
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0xe2
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov107_02249BAC
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224308E
	mov r0, #0x48
	mov r7, #0x40
	str r0, [sp, #0x18]
	b _02243094
_0224308E:
	mov r0, #0x28
	mov r7, #0x20
	str r0, [sp, #0x18]
_02243094:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl FUN_0223B7A8
	mov r6, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	bgt _022430A6
	b _022431CC
_022430A6:
	add r4, r5, #0
_022430A8:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov107_02249B1C
	mov r1, #0x3a
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	str r0, [sp, #0x1c]
	bl sub_02074470
	cmp r0, #0
	bne _022430FC
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
_022430FC:
	ldr r0, [sp, #0x1c]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl sub_0208C104
	add r1, r0, #0
	add r0, r5, #0
	bl ov107_022450E8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl sub_0208C104
	add r1, r0, #0
	add r0, r5, #0
	bl ov107_02245114
	mov r1, #0
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x4e
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov107_02249B1C
	mov r1, #0xef
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x28]
	mov r2, #3
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #3
	add r3, r2, #0
	bl ov107_02249B1C
	mov r1, #0x39
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x48
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249C08
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	add r0, #0x40
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	add r7, #0x40
	cmp r6, r0
	bge _022431CC
	b _022430A8
_022431CC:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0xa2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x76
	str r1, [sp, #0x10]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov107_02249B1C
	mov r1, #0xe3
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0x11
	bl ov107_022499BC
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0x11
	bl ov107_022499FC
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov107_02249BAC
	add r0, r5, #0
	add r1, sp, #0x38
	add r2, sp, #0x34
	mov r3, #0
	bl ov107_02244D08
	mov r1, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r2, r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	add r3, r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0xed
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	ldr r1, [sp, #0x38]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0x34]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0xee
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02243296
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov107_02249BAC
_02243296:
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x76
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0xf3
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov107_02249BAC
	mov r1, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0x3d
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov107_02249BAC
	bl sub_02035E38
	cmp r0, #0
	beq _0224330A
	mov r0, #1
	mov r1, #0x10
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	bl sub_02039734
_0224330A:
	ldr r0, _02243314 ; =ov107_022433EC
	b _02243318
	nop
_02243310: .word 0x00000187
_02243314: .word ov107_022433EC
_02243318:
	add r1, r5, #0
	bl sub_02017798
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02242F5C

	thumb_func_start ov107_02243324
ov107_02243324: ; 0x02243324
	push {r4, lr}
	add r4, r0, #0
	bl ov107_02243424
	ldr r0, [r4, #0x4c]
	bl ov107_02243444
	mov r0, #0x64
	bl sub_02002F38
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	lsl r2, r1, #8
	mov r3, #0x64
	bl sub_02002F70
	mov r2, #7
	lsl r2, r2, #6
	ldr r0, [r4, r2]
	mov r1, #0
	add r2, #0x40
	mov r3, #0x64
	bl sub_02002F70
	add r0, r4, #0
	mov r1, #3
	bl ov107_02243588
	bl ov107_022435FC
	add r0, r4, #0
	mov r1, #2
	bl ov107_02243630
	bl ov107_02243678
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #4
	bl ov107_0224373C
	pop {r4, pc}
	thumb_func_end ov107_02243324

	thumb_func_start ov107_02243384
ov107_02243384: ; 0x02243384
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	add r2, r0, #0
	mov r1, #0xf6
	mov r0, #0x76
	lsl r1, r1, #2
	lsl r0, r0, #2
	lsl r2, r2, #0x18
	ldr r1, [r4, r1]
	add r0, r4, r0
	lsr r2, r2, #0x18
	bl ov107_02249604
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02243384

	thumb_func_start ov107_022433A8
ov107_022433A8: ; 0x022433A8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov107_022433A8

	thumb_func_start ov107_022433EC
ov107_022433EC: ; 0x022433EC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022433FE
	bl sub_02003694
_022433FE:
	ldr r0, [r4, #0x4c]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _0224341C ; =0x027E0000
	ldr r1, _02243420 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0224341C: .word 0x027E0000
_02243420: .word 0x00003FF8
	thumb_func_end ov107_022433EC

	thumb_func_start ov107_02243424
ov107_02243424: ; 0x02243424
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02243440 ; =0x02249F04
	add r3, sp, #0
	mov r2, #5
_0224342E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224342E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_02243440: .word 0x02249F04
	thumb_func_end ov107_02243424

	thumb_func_start ov107_02243444
ov107_02243444: ; 0x02243444
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0224356C ; =0x02249E24
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02243570 ; =0x02249EAC
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02243574 ; =0x02249EC8
	add r3, sp, #0x54
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
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _02243578 ; =0x02249E74
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _0224357C ; =0x02249E58
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r5, _02243580 ; =0x02249E90
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r1, _02243584 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x9c
	pop {r4, r5, pc}
	; .align 2, 0
_0224356C: .word 0x02249E24
_02243570: .word 0x02249EAC
_02243574: .word 0x02249EC8
_02243578: .word 0x02249E74
_0224357C: .word 0x02249E58
_02243580: .word 0x02249E90
_02243584: .word 0x04000008
	thumb_func_end ov107_02243444

	thumb_func_start ov107_02243588
ov107_02243588: ; 0x02243588
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x22
	add r3, r4, #0
	bl sub_020070E8
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022435DA
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x23
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022435DA:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x24
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02243588

	thumb_func_start ov107_022435FC
ov107_022435FC: ; 0x022435FC
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0x96
	mov r1, #0x89
	add r2, sp, #0
	mov r3, #0x64
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x80
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl sub_020C00B4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_022435FC

	thumb_func_start ov107_02243630
ov107_02243630: ; 0x02243630
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x22
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x26
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02243630

	thumb_func_start ov107_02243678
ov107_02243678: ; 0x02243678
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0x96
	mov r1, #0x89
	add r2, sp, #0
	mov r3, #0x64
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x80
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl sub_020C00B4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02243678

	thumb_func_start ov107_022436AC
ov107_022436AC: ; 0x022436AC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x22
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x27
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022436AC

	thumb_func_start ov107_022436F4
ov107_022436F4: ; 0x022436F4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x22
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x25
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022436F4

	thumb_func_start ov107_0224373C
ov107_0224373C: ; 0x0224373C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x7d
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x7e
	add r3, r4, #0
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xab
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_0224373C

	thumb_func_start ov107_0224379C
ov107_0224379C: ; 0x0224379C
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x28]
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrb r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrb r4, [r4, #0x1c]
	str r4, [sp, #0xc]
	add r4, sp, #0x38
	ldrb r4, [r4]
	str r4, [sp, #0x10]
	add r4, sp, #0x3c
	ldrb r4, [r4]
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	bl ov107_022437CC
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_0224379C

	thumb_func_start ov107_022437CC
ov107_022437CC: ; 0x022437CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r1, r7, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_0200C388
	ldr r0, [sp, #0x40]
	cmp r0, #1
	beq _02243802
	cmp r0, #2
	beq _02243814
	b _02243820
_02243802:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r0, r0, #1
	sub r4, r4, r0
	b _02243820
_02243814:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	sub r4, r4, r0
_02243820:
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r4, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r6, #0
	bl sub_0201D78C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022437CC

	thumb_func_start ov107_02243860
ov107_02243860: ; 0x02243860
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x28]
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrb r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrb r4, [r4, #0x1c]
	str r4, [sp, #0xc]
	add r4, sp, #0x38
	ldrb r4, [r4]
	str r4, [sp, #0x10]
	add r4, sp, #0x3c
	ldrb r4, [r4]
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	bl ov107_02243890
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02243860

	thumb_func_start ov107_02243890
ov107_02243890: ; 0x02243890
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r1, r2, #0
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r4, r3, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_0200C388
	ldr r0, [sp, #0x38]
	cmp r0, #1
	beq _022438BA
	cmp r0, #2
	beq _022438CC
	b _022438D8
_022438BA:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r0, r0, #1
	sub r4, r4, r0
	b _022438D8
_022438CC:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	sub r4, r4, r0
_022438D8:
	ldr r0, [sp, #0x20]
	add r2, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r3, r4, #0
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x34
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r6, #0
	bl sub_0201D78C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02243890

	thumb_func_start ov107_02243918
ov107_02243918: ; 0x02243918
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r3, #1
	add r4, r1, #0
	str r3, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r5, r0, #0
	add r1, r5, #0
	str r2, [sp, #0x14]
	add r1, #0xb0
	add r2, r4, #0
	bl ov107_0224379C
	add r5, #0xb0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02243918

	thumb_func_start ov107_02243950
ov107_02243950: ; 0x02243950
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B70C
	mov r0, #8
	str r0, [sp]
	mov r3, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x46
	str r3, [sp, #4]
	bl ov107_02243B5C
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x47
	mov r3, #0x40
	bl ov107_02243B5C
	add r0, r6, #0
	bl sub_02075BCC
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B6D8
	mov r0, #0x18
	str r0, [sp]
	mov r3, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x48
	str r3, [sp, #4]
	bl ov107_02243B5C
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x49
	mov r3, #0x40
	bl ov107_02243B5C
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B6A0
	mov r0, #0x28
	str r0, [sp]
	mov r3, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4a
	str r3, [sp, #4]
	bl ov107_02243B5C
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4b
	mov r3, #0x40
	bl ov107_02243B5C
	add r0, r6, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_02244A74
	mov r0, #0x38
	str r0, [sp]
	mov r3, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4c
	str r3, [sp, #4]
	bl ov107_02243B5C
	mov r0, #0x38
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4d
	mov r3, #0x50
	bl ov107_02243B5C
	add r0, r6, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_02244A74
	mov r0, #0x38
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4e
	mov r3, #0x60
	bl ov107_02243B5C
	mov r0, #0x38
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4f
	mov r3, #0xb0
	bl ov107_02243B5C
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_02244A74
	mov r0, #0x48
	str r0, [sp]
	mov r3, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x50
	str r3, [sp, #4]
	bl ov107_02243B5C
	mov r0, #0x48
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x51
	mov r3, #0x50
	bl ov107_02243B5C
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_02244A74
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x52
	mov r3, #0x60
	bl ov107_02243B5C
	mov r0, #0x48
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x53
	mov r3, #0xb0
	bl ov107_02243B5C
	add r0, r6, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_02244A74
	mov r0, #0x58
	str r0, [sp]
	mov r3, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x54
	str r3, [sp, #4]
	bl ov107_02243B5C
	mov r0, #0x58
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x55
	mov r3, #0x50
	bl ov107_02243B5C
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_02243950

	thumb_func_start ov107_02243B5C
ov107_02243B5C: ; 0x02243B5C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	mov r4, #0xff
	str r4, [sp, #4]
	mov r4, #1
	str r4, [sp, #8]
	mov r4, #2
	str r4, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0x18]
	bl ov107_02243890
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov107_02243B5C

	thumb_func_start ov107_02243B84
ov107_02243B84: ; 0x02243B84
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r4, r2, #0
	bl sub_0201ADA4
	mov r0, #0x5c
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	mov r0, #0x42
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x58
	bl ov107_02243C18
	mov r0, #0x5c
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x37
	str r0, [sp, #8]
	mov r0, #0x3b
	str r0, [sp, #0xc]
	mov r0, #0x43
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x59
	bl ov107_02243C18
	mov r0, #0x5c
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	mov r0, #0x3c
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	mov r3, #0x5a
	bl ov107_02243C18
	mov r0, #0x5c
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	mov r0, #0x45
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #3
	mov r3, #0x5b
	bl ov107_02243C18
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov107_02243B84

	thumb_func_start ov107_02243C18
ov107_02243C18: ; 0x02243C18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	mov r2, #0
	add r7, r3, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200B630
	mov r3, #0x18
	add r0, r5, #0
	mul r0, r3
	add r0, #0xc
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov107_02243860
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r3, #3
	bl ov107_02244A74
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x40]
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r3, #3
	bl ov107_02244A74
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x89
	bl ov107_02243890
	strb r0, [r4, #0xa]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov107_02243C18

	thumb_func_start ov107_02243CC0
ov107_02243CC0: ; 0x02243CC0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl sub_0201ADA4
	ldrb r0, [r5, #9]
	mov r1, #1
	bl FUN_0223B7A8
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _02243CF2
_02243CDE:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov107_02243CFC
	add r4, r4, #1
	cmp r4, r6
	blt _02243CDE
_02243CF2:
	add r0, r7, #0
	bl sub_0201A9A4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02243CC0

	thumb_func_start ov107_02243CFC
ov107_02243CFC: ; 0x02243CFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #2
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r7, r3, #0
	bl sub_0207A0FC
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02243D24
	mov r0, #0x24
	b _02243D26
_02243D24:
	mov r0, #4
_02243D26:
	cmp r7, #0
	bne _02243D4C
	lsl r1, r4, #6
	add r2, r0, r1
	lsl r2, r2, #0x10
	lsr r7, r2, #0x10
	add r2, r0, #0
	add r2, #0x18
	add r2, r2, r1
	add r0, #0x20
	lsl r2, r2, #0x10
	add r0, r0, r1
	lsr r2, r2, #0x10
	lsl r0, r0, #0x10
	str r2, [sp, #0x10]
	lsr r0, r0, #0x10
	mov r4, #1
	str r0, [sp, #0x14]
	b _02243D58
_02243D4C:
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #0x24
	mov r7, #4
	mov r4, #0
	str r0, [sp, #0x14]
_02243D58:
	ldr r0, [sp, #0xc]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r6, [sp]
	add r1, r0, #0
	str r7, [sp, #4]
	mov r0, #0x71
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #3
	mov r3, #1
	bl sub_0200C5BC
	mov r0, #0x71
	str r4, [sp]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x10]
	mov r1, #0
	add r2, r6, #0
	bl sub_0200C578
	ldr r0, [sp, #0xc]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #3
	str r0, [sp, #4]
	mov r0, #0x71
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #0
	bl sub_0200C5BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02243CFC

	thumb_func_start ov107_02243DB0
ov107_02243DB0: ; 0x02243DB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r6, r1, #0
	mov r1, #1
	bl FUN_0223B7A8
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _02243DDA
_02243DC6:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov107_02243DE4
	add r4, r4, #1
	cmp r4, r7
	blt _02243DC6
_02243DDA:
	add r0, r6, #0
	bl sub_0201A9A4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02243DB0

	thumb_func_start ov107_02243DE4
ov107_02243DE4: ; 0x02243DE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r3, [sp, #0x14]
	ldrb r0, [r5, #9]
	str r1, [sp, #0x10]
	add r6, r2, #0
	bl FUN_0223BA14
	cmp r0, #0
	bne _02243E00
	mov r4, #0x28
	mov r7, #0x50
	b _02243E04
_02243E00:
	mov r4, #8
	mov r7, #0x30
_02243E04:
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0207A0FC
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02243E22
	lsl r0, r6, #6
	add r6, r4, r0
	mov r4, #1
	add r7, r7, r0
	b _02243E28
_02243E22:
	mov r6, #4
	mov r4, #0
	mov r7, #0x30
_02243E28:
	ldr r0, [sp, #0x18]
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0x71
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200C648
	ldr r0, [sp, #0x18]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	mov r1, #0
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov107_02244B8C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02243DE4

	thumb_func_start ov107_02243E74
ov107_02243E74: ; 0x02243E74
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	bl sub_0205E630
	add r6, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl sub_02030698
	add r6, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, r4, #0
	bl ov107_02249D84
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov107_02244AB4
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	mov r3, #4
	bl ov107_02244A74
	mov r3, #0x10
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	bl ov107_02243860
	strb r0, [r5, #0xa]
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_02243E74

	thumb_func_start ov107_02243EF8
ov107_02243EF8: ; 0x02243EF8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r6, r2, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x2c]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_0200C388
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02243F48 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x28]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0201D78C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r5, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02243F48: .word 0x00010200
	thumb_func_end ov107_02243EF8

	thumb_func_start ov107_02243F4C
ov107_02243F4C: ; 0x02243F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl FUN_0223BA14
	cmp r0, #0
	bne _02243F66
	mov r1, #0x24
	b _02243F68
_02243F66:
	mov r1, #4
_02243F68:
	lsl r0, r4, #6
	add r4, r1, r0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #9
	mov r1, #0
	lsl r2, r4, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_0201AE78
	str r6, [sp]
	mov r0, #0x71
	str r4, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #3
	bl sub_0200C5BC
	add r0, r6, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02243F4C

	thumb_func_start ov107_02243FA4
ov107_02243FA4: ; 0x02243FA4
	push {r3, r4, lr}
	sub sp, #0x1c
	mov r1, #5
	str r1, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r4, r0, #0
	add r1, r4, #0
	str r2, [sp, #0x18]
	add r1, #0x60
	mov r2, #6
	mov r3, #0x10
	bl ov107_022437CC
	strb r0, [r4, #0xa]
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02249DBC
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #5
	str r3, [sp, #0x14]
	bl ov107_0224379C
	strb r0, [r4, #0xa]
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02243FA4

	thumb_func_start ov107_0224400C
ov107_0224400C: ; 0x0224400C
	ldr r3, _02244014 ; =ov107_02245288
	add r0, #0xc0
	bx r3
	nop
_02244014: .word ov107_02245288
	thumb_func_end ov107_0224400C

	thumb_func_start ov107_02244018
ov107_02244018: ; 0x02244018
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	bl ov107_02249DBC
	mov r0, #0
	strh r0, [r4, #0x16]
	add r0, r4, #0
	bl ov107_02244944
	pop {r4, pc}
	thumb_func_end ov107_02244018

	thumb_func_start ov107_0224403C
ov107_0224403C: ; 0x0224403C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x18
	add r2, #0x1a
	bl sub_020014DC
	add r0, r4, #0
	add r0, #0xd0
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_02245730
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_0224403C

	thumb_func_start ov107_02244064
ov107_02244064: ; 0x02244064
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	mov r0, #0
	strh r0, [r4, #0x16]
	add r0, r4, #0
	bl ov107_022445C4
	pop {r4, pc}
	thumb_func_end ov107_02244064

	thumb_func_start ov107_02244094
ov107_02244094: ; 0x02244094
	ldr r3, _02244098 ; =ov107_02245730
	bx r3
	; .align 2, 0
_02244098: .word ov107_02245730
	thumb_func_end ov107_02244094

	thumb_func_start ov107_0224409C
ov107_0224409C: ; 0x0224409C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	mov r0, #0
	strh r0, [r4, #0x16]
	add r0, r4, #0
	bl ov107_02244780
	pop {r4, pc}
	thumb_func_end ov107_0224409C

	thumb_func_start ov107_022440C0
ov107_022440C0: ; 0x022440C0
	ldr r3, _022440C4 ; =ov107_02245730
	bx r3
	; .align 2, 0
_022440C4: .word ov107_02245730
	thumb_func_end ov107_022440C0

	thumb_func_start ov107_022440C8
ov107_022440C8: ; 0x022440C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0xe]
	mov r0, #8
	orr r0, r1
	strb r0, [r5, #0xe]
	add r0, r5, #0
	add r0, #0xb0
	bl ov107_02245288
	add r0, r5, #0
	add r0, #0xb0
	bl sub_0201ACF4
	add r0, r5, #0
	add r0, #0xe0
	bl sub_0201ACF4
	add r0, r5, #0
	mov r1, #2
	bl ov107_022436F4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add r0, r5, #0
	add r0, #0x90
	bl sub_0201AD10
	mov r0, #0
	strh r0, [r5, #0x16]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_02244240
	mov r1, #5
	lsl r1, r1, #6
	add r0, r5, #0
	add r1, r5, r1
	bl ov107_02243E74
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022440C8

	thumb_func_start ov107_02244120
ov107_02244120: ; 0x02244120
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0xe]
	lsl r0, r1, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224414A
	mov r0, #8
	bic r1, r0
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r4, r0
	strb r1, [r4, #0xe]
	bl sub_0201AD10
	add r0, r4, #0
	bl ov107_02245730
	add r0, r4, #0
	bl ov107_02245660
_0224414A:
	pop {r4, pc}
	thumb_func_end ov107_02244120

	thumb_func_start ov107_0224414C
ov107_0224414C: ; 0x0224414C
	push {r4, r5, r6, r7}
	mov r4, #6
	mov r6, #0
	lsl r4, r4, #6
	add r7, r0, #0
	add r3, r6, #0
	add r5, r4, #4
_0224415A:
	str r3, [r7, r4]
	str r3, [r7, r5]
	add r6, r6, #1
	add r7, #8
	cmp r6, #3
	blt _0224415A
	mov r4, #6
	lsl r4, r4, #6
	add r5, r4, #0
	add r6, r0, r4
	sub r5, #0x10
	str r6, [r0, r5]
	add r5, r4, #0
	sub r5, #0xc
	str r1, [r0, r5]
	add r1, r4, #0
	sub r1, #8
	strb r3, [r0, r1]
	mov r3, #1
	sub r1, r4, #7
	strb r3, [r0, r1]
	sub r1, r4, #6
	strb r2, [r0, r1]
	sub r1, r4, #5
	ldrb r2, [r0, r1]
	mov r1, #0xf
	bic r2, r1
	sub r1, r4, #5
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	mov r1, #0x30
	bic r2, r1
	sub r1, r4, #5
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r2, r1
	sub r1, r4, #5
	strb r2, [r0, r1]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov107_0224414C

	thumb_func_start ov107_022441B0
ov107_022441B0: ; 0x022441B0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r7, #0
	str r2, [sp]
	add r5, #0x30
	lsl r4, r6, #2
	ldr r0, [r7, #0x20]
	ldr r2, [r5, r4]
	add r1, r3, #0
	bl sub_0200B1B8
	lsl r0, r6, #3
	add r2, r7, r0
	mov r0, #6
	ldr r1, [r5, r4]
	lsl r0, r0, #6
	str r1, [r2, r0]
	add r1, r0, #4
	ldr r0, [sp]
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022441B0

	thumb_func_start ov107_022441DC
ov107_022441DC: ; 0x022441DC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r0, [r4, #0x4c]
	add r1, r4, r1
	bl ov107_02249D84
	mov r1, #0x12
	lsl r1, r1, #4
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #2
	bl ov107_0224414C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x1e
	bl ov107_022441B0
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x1f
	bl ov107_022441B0
	mov r0, #0x64
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r0, r0, #4
	mov r2, #0
	add r0, r4, r0
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrb r1, [r4, #0xe]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r4, #0xe]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_022441DC

	thumb_func_start ov107_02244240
ov107_02244240: ; 0x02244240
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp]
	ldrb r1, [r5, #0xd]
	mov r2, #1
	bl ov107_0224503C
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov107_02249C98
	add r4, r0, #0
	mov r1, #0x16
	lsl r1, r1, #4
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	mov r3, #1
	bl ov107_02243CFC
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r5, r0
	bl sub_0201A9A4
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	mov r3, #1
	bl ov107_02243DE4
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r5, r0
	bl sub_0201A9A4
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov107_02249BAC
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov107_02249BAC
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov107_02249BAC
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov107_02249BAC
	mov r2, #0x62
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x64
	bl sub_0200B144
	str r0, [sp, #0xc]
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	mov r2, #1
	bl ov107_02249CAC
	ldr r1, [sp]
	cmp r1, #6
	bne _022442F2
	sub r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _022443F0 ; =0x02249E12
	ldrh r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	b _02244300
_022442F2:
	sub r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _022443F4 ; =0x02249E06
	ldrh r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
_02244300:
	ldr r0, [sp, #4]
	mov r1, #0x64
	add r0, r0, #1
	str r0, [sp, #8]
	bl sub_02013A04
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	mov r7, #0
	cmp r0, #0
	ble _02244344
	ldr r6, _022443F8 ; =0x0224A02C
	ldr r4, _022443FC ; =0x02249F84
_0224431E:
	ldr r0, [sp]
	cmp r0, #6
	bne _02244328
	ldrh r2, [r6]
	b _0224432A
_02244328:
	ldrh r2, [r4]
_0224432A:
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0xc]
	add r3, r7, #0
	bl sub_02013A4C
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r6, r6, #2
	add r4, r4, #2
	cmp r7, r0
	blt _0224431E
_02244344:
	mov r0, #0x67
	lsl r0, r0, #2
	mov r2, #0xd
	add r3, r2, #0
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	sub r3, #0xf
	bl sub_02013A4C
	mov r2, #0x1a
	ldr r6, _02244400 ; =0x02249EE4
	lsl r2, r2, #4
	add r4, r5, r2
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r0, r2, #4
	ldr r0, [r5, r0]
	add r1, r5, #0
	str r0, [r3, #0]
	add r0, r2, #0
	add r1, #0xa0
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r2, #0
	add r0, #0x1c
	str r5, [r5, r0]
	ldr r1, _02244404 ; =ov107_0224440C
	add r0, r2, #4
	str r1, [r5, r0]
	add r0, r2, #0
	ldr r1, _02244408 ; =ov107_02244560
	add r0, #8
	str r1, [r5, r0]
	add r1, r2, #0
	ldr r0, [sp, #8]
	add r1, #0x10
	strh r0, [r5, r1]
	add r0, r2, #0
	add r0, #0x18
	ldrb r1, [r5, r0]
	mov r0, #0xf
	bic r1, r0
	add r0, r2, #0
	add r0, #0x18
	strb r1, [r5, r0]
	add r0, r2, #0
	mov r1, #6
	add r0, #0x12
	strh r1, [r5, r0]
	add r0, r2, #0
	mov r1, #0
	add r0, #0x15
	strb r1, [r5, r0]
	add r0, r2, #0
	add r0, #0x1a
	ldrh r4, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r4
	add r2, #0x1a
	strh r0, [r5, r2]
	add r0, r3, #0
	add r2, r1, #0
	mov r3, #0x64
	bl sub_0200112C
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	add r5, #0xa0
	add r1, r5, #0
	bl ov107_02245650
	ldr r0, [sp, #0xc]
	bl sub_0200B190
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022443F0: .word 0x02249E12
_022443F4: .word 0x02249E06
_022443F8: .word 0x0224A02C
_022443FC: .word 0x02249F84
_02244400: .word 0x02249EE4
_02244404: .word ov107_0224440C
_02244408: .word ov107_02244560
	thumb_func_end ov107_02244240

	thumb_func_start ov107_0224440C
ov107_0224440C: ; 0x0224440C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	mov r1, #0x13
	add r5, r0, #0
	add r6, r2, #0
	bl sub_02001504
	add r4, r0, #0
	cmp r6, #0
	bne _02244436
	ldr r0, _02244558 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #4
	bl sub_020014D0
	b _0224443C
_02244436:
	mov r1, #0
	add r0, sp, #4
	strh r1, [r0]
_0224443C:
	add r0, r5, #0
	mov r1, #2
	bl sub_02001504
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl sub_02001504
	add r2, sp, #4
	add r7, r0, #0
	add r0, r5, #0
	add r1, sp, #8
	add r2, #2
	bl sub_020014DC
	add r0, sp, #4
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne _0224447E
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov107_02249BAC
	b _022444B6
_0224447E:
	sub r0, r6, r7
	cmp r1, r0
	bne _0224449E
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov107_02249BAC
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	b _022444B6
_0224449E:
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov107_02249BAC
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov107_02249BAC
_022444B6:
	add r2, sp, #4
	ldrh r2, [r2, #2]
	mov r0, #0x3d
	lsl r0, r0, #4
	lsl r2, r2, #4
	add r2, #0x18
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #0x9e
	lsr r2, r2, #0x10
	bl ov107_02249BB8
	mov r1, #1
	ldr r0, [sp]
	mvn r1, r1
	cmp r0, r1
	beq _02244526
	add r1, sp, #4
	ldrh r1, [r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244DE0
	mov r1, #0x11
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, r4, #0
	add r1, r4, r1
	bl ov107_02243EF8
	add r1, sp, #4
	ldrh r1, [r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244DE0
	add r1, r0, #0
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov107_022499BC
	add r1, sp, #4
	ldrh r1, [r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244DE0
	add r1, r0, #0
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov107_022499FC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02244526:
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r4, r0
	lsr r1, r1, #0x10
	bl ov107_022499BC
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r1, _0224455C ; =0x0000FFFF
	add r0, r4, r0
	bl ov107_022499FC
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02244558: .word 0x000005DC
_0224455C: .word 0x0000FFFF
	thumb_func_end ov107_0224440C

	thumb_func_start ov107_02244560
ov107_02244560: ; 0x02244560
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r1, #0
	mov r1, #0x13
	add r6, r2, #0
	bl sub_02001504
	mov r1, #1
	mvn r1, r1
	add r4, r0, #0
	cmp r5, r1
	beq _022445C0
	ldrb r2, [r4, #0x13]
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	bl ov107_02244D5C
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r3, #4
	bl ov107_02244A74
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xa0
	mov r2, #4
	mov r3, #0x80
	bl ov107_02243890
	strb r0, [r4, #0xa]
	add r4, #0xa0
	add r0, r4, #0
	bl sub_0201A9A4
_022445C0:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov107_02244560

	thumb_func_start ov107_022445C4
ov107_022445C4: ; 0x022445C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0xf0
	bl ov107_02249D84
	add r0, r5, #0
	add r0, #0xf0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #5
	mov r1, #0x64
	bl sub_02013A04
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r4, _02244680 ; =0x02249FF0
	str r0, [r5, r1]
	mov r6, #0
	add r7, r1, #0
_022445F0:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #5
	blo _022445F0
	mov r2, #0x1a
	ldr r6, _02244684 ; =0x02249EE4
	lsl r2, r2, #4
	add r4, r5, r2
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r0, r2, #4
	ldr r0, [r5, r0]
	add r1, r5, #0
	str r0, [r3, #0]
	add r0, r2, #0
	add r1, #0xf0
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r2, #0
	add r0, #0x1c
	str r5, [r5, r0]
	ldr r1, _02244688 ; =ov107_02244690
	add r0, r2, #4
	str r1, [r5, r0]
	add r0, r2, #0
	ldr r1, _0224468C ; =ov107_02244708
	add r0, #8
	str r1, [r5, r0]
	add r0, r2, #0
	mov r1, #5
	add r0, #0x10
	strh r1, [r5, r0]
	add r0, r2, #0
	add r0, #0x12
	strh r1, [r5, r0]
	add r0, r2, #0
	add r0, #0x18
	ldrb r1, [r5, r0]
	mov r0, #0xf
	add r2, #0x18
	bic r1, r0
	mov r0, #0xf
	orr r0, r1
	strb r0, [r5, r2]
	mov r1, #0
	add r0, r3, #0
	add r2, r1, #0
	mov r3, #0x64
	bl sub_0200112C
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	add r5, #0xf0
	add r1, r5, #0
	bl ov107_02245650
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244680: .word 0x02249FF0
_02244684: .word 0x02249EE4
_02244688: .word ov107_02244690
_0224468C: .word ov107_02244708
	thumb_func_end ov107_022445C4

	thumb_func_start ov107_02244690
ov107_02244690: ; 0x02244690
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r1, #0x13
	add r6, r2, #0
	bl sub_02001504
	add r4, r0, #0
	cmp r6, #0
	bne _022446AA
	ldr r0, _02244704 ; =0x000005DC
	bl sub_02005748
_022446AA:
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov107_02249CAC
	cmp r5, #4
	beq _022446C6
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _022446DA
	b _022446DE
_022446C6:
	cmp r0, #3
	bne _022446CE
	mov r2, #0x1b
	b _022446E0
_022446CE:
	cmp r0, #1
	bne _022446D6
	mov r2, #0x19
	b _022446E0
_022446D6:
	mov r2, #0x1a
	b _022446E0
_022446DA:
	mov r2, #0x1c
	b _022446E0
_022446DE:
	mov r2, #0x18
_022446E0:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r4, #0xb0
	add r1, r4, #0
	str r3, [sp, #0x14]
	bl ov107_0224379C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_02244704: .word 0x000005DC
	thumb_func_end ov107_02244690

	thumb_func_start ov107_02244708
ov107_02244708: ; 0x02244708
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r6, r0, #0
	mov r1, #0x13
	bl sub_02001504
	add r5, r0, #0
	add r0, r6, #0
	add r1, sp, #0
	bl sub_020014D0
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	mov r2, #0
	bl ov107_02249CAC
	cmp r4, #4
	bhi _0224476A
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224473E: ; jump table
	.short _0224476A - _0224473E - 2 ; case 0
	.short _02244748 - _0224473E - 2 ; case 1
	.short _02244748 - _0224473E - 2 ; case 2
	.short _02244748 - _0224473E - 2 ; case 3
	.short _0224475E - _0224473E - 2 ; case 4
_02244748:
	mov r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, _0224477C ; =0x02249FE4
	ldr r1, [r1, r2]
	cmp r0, r1
	blo _0224475A
	mov r1, #1
	b _0224476C
_0224475A:
	mov r1, #2
	b _0224476C
_0224475E:
	cmp r0, #3
	bne _02244766
	mov r1, #2
	b _0224476C
_02244766:
	mov r1, #1
	b _0224476C
_0224476A:
	mov r1, #1
_0224476C:
	add r0, r6, #0
	mov r2, #0xf
	mov r3, #2
	bl sub_020013D8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0224477C: .word 0x02249FE4
	thumb_func_end ov107_02244708

	thumb_func_start ov107_02244780
ov107_02244780: ; 0x02244780
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r5, #0x4c]
	add r1, r5, r1
	bl ov107_02249D84
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #4
	mov r1, #0x64
	bl sub_02013A04
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r4, _0224485C ; =0x02249F54
	str r0, [r5, r1]
	mov r6, #0
	add r7, r1, #0
_022447B8:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #4
	blo _022447B8
	mov r2, #0x1a
	ldr r6, _02244860 ; =0x02249EE4
	lsl r2, r2, #4
	add r4, r5, r2
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [r3, #0]
	add r0, r2, #0
	sub r0, #0xa0
	add r1, r5, r0
	add r0, r2, #0
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r2, #0
	add r0, #0x1c
	str r5, [r5, r0]
	ldr r1, _02244864 ; =ov107_0224486C
	add r0, r2, #4
	str r1, [r5, r0]
	add r0, r2, #0
	ldr r1, _02244868 ; =ov107_022448E8
	add r0, #8
	str r1, [r5, r0]
	add r0, r2, #0
	mov r1, #4
	add r0, #0x10
	strh r1, [r5, r0]
	add r0, r2, #0
	add r0, #0x12
	strh r1, [r5, r0]
	add r0, r2, #0
	add r0, #0x18
	ldrb r1, [r5, r0]
	mov r0, #0xf
	add r2, #0x18
	bic r1, r0
	mov r0, #0xf
	orr r0, r1
	strb r0, [r5, r2]
	mov r1, #0
	add r0, r3, #0
	add r2, r1, #0
	mov r3, #0x64
	bl sub_0200112C
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x98
	add r0, r5, #0
	add r1, r5, r1
	bl ov107_02245650
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	bl sub_0201A9A4
	mov r0, #0
	mov r1, #1
	bl sub_02019120
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224485C: .word 0x02249F54
_02244860: .word 0x02249EE4
_02244864: .word ov107_0224486C
_02244868: .word ov107_022448E8
	thumb_func_end ov107_02244780

	thumb_func_start ov107_0224486C
ov107_0224486C: ; 0x0224486C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r1, #0x13
	add r6, r2, #0
	bl sub_02001504
	add r4, r0, #0
	cmp r6, #0
	bne _02244886
	ldr r0, _022448E4 ; =0x000005DC
	bl sub_02005748
_02244886:
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov107_02249CAC
	cmp r5, #6
	beq _022448A2
	cmp r5, #7
	beq _022448A6
	cmp r5, #8
	beq _022448AA
	b _022448BE
_022448A2:
	mov r2, #0x30
	b _022448C0
_022448A6:
	mov r2, #0x31
	b _022448C0
_022448AA:
	cmp r0, #3
	bne _022448B2
	mov r2, #0x34
	b _022448C0
_022448B2:
	cmp r0, #1
	bne _022448BA
	mov r2, #0x32
	b _022448C0
_022448BA:
	mov r2, #0x33
	b _022448C0
_022448BE:
	mov r2, #0x35
_022448C0:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r4, #0xb0
	add r1, r4, #0
	str r3, [sp, #0x14]
	bl ov107_0224379C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_022448E4: .word 0x000005DC
	thumb_func_end ov107_0224486C

	thumb_func_start ov107_022448E8
ov107_022448E8: ; 0x022448E8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x13
	add r5, r0, #0
	bl sub_02001504
	add r1, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r1, [r1, #9]
	mov r2, #1
	bl ov107_02249CAC
	cmp r4, #7
	beq _0224490E
	cmp r4, #8
	beq _02244924
	b _02244930
_0224490E:
	mov r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, _02244940 ; =0x02249F0C
	ldr r1, [r1, r2]
	cmp r0, r1
	blo _02244920
	mov r1, #1
	b _02244932
_02244920:
	mov r1, #2
	b _02244932
_02244924:
	cmp r0, #3
	bne _0224492C
	mov r1, #2
	b _02244932
_0224492C:
	mov r1, #1
	b _02244932
_02244930:
	mov r1, #1
_02244932:
	add r0, r5, #0
	mov r2, #0xf
	mov r3, #2
	bl sub_020013D8
	pop {r3, r4, r5, pc}
	nop
_02244940: .word 0x02249F0C
	thumb_func_end ov107_022448E8

	thumb_func_start ov107_02244944
ov107_02244944: ; 0x02244944
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0xe0
	bl ov107_02249D84
	add r0, r5, #0
	add r0, #0xe0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #5
	mov r1, #0x64
	bl sub_02013A04
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r4, _02244A10 ; =0x02249F2C
	str r0, [r5, r1]
	mov r6, #0
	add r7, r1, #0
_02244970:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, #5
	blt _02244970
	mov r2, #0x1a
	ldr r6, _02244A14 ; =0x02249EE4
	lsl r2, r2, #4
	add r4, r5, r2
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r0, r2, #4
	ldr r0, [r5, r0]
	add r1, r5, #0
	str r0, [r3, #0]
	add r0, r2, #0
	add r1, #0xe0
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r2, #0
	add r0, #0x1c
	str r5, [r5, r0]
	ldr r1, _02244A18 ; =ov107_02244A1C
	add r0, r2, #4
	str r1, [r5, r0]
	add r0, r2, #0
	mov r1, #0
	add r0, #8
	str r1, [r5, r0]
	add r0, r2, #0
	mov r1, #5
	add r0, #0x10
	strh r1, [r5, r0]
	add r0, r2, #0
	add r0, #0x12
	strh r1, [r5, r0]
	add r0, r2, #0
	add r0, #0x18
	ldrb r1, [r5, r0]
	mov r0, #0xf
	bic r1, r0
	mov r0, #0xf
	orr r1, r0
	add r0, r2, #0
	add r0, #0x18
	strb r1, [r5, r0]
	add r2, #0x1c
	str r5, [r5, r2]
	add r0, r3, #0
	ldrh r1, [r5, #0x18]
	ldrh r2, [r5, #0x1a]
	mov r3, #0x64
	bl sub_0200112C
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0xe0
	bl ov107_02245650
	add r5, #0xe0
	add r0, r5, #0
	bl sub_0201A9A4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244A10: .word 0x02249F2C
_02244A14: .word 0x02249EE4
_02244A18: .word ov107_02244A1C
	thumb_func_end ov107_02244944

	thumb_func_start ov107_02244A1C
ov107_02244A1C: ; 0x02244A1C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	mov r1, #0x13
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02001504
	add r6, r0, #0
	cmp r4, #0
	bne _02244A36
	ldr r0, _02244A6C ; =0x000005DC
	bl sub_02005748
_02244A36:
	add r0, r5, #0
	add r1, sp, #0x18
	bl sub_020014D0
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r6, #0xd0
	str r3, [sp, #0x14]
	add r2, sp, #0x18
	ldrh r2, [r2]
	add r1, r6, #0
	lsl r4, r2, #1
	ldr r2, _02244A70 ; =0x02249E18
	ldrh r2, [r2, r4]
	bl ov107_0224379C
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02244A6C: .word 0x000005DC
_02244A70: .word 0x02249E18
	thumb_func_end ov107_02244A1C

	thumb_func_start ov107_02244A74
ov107_02244A74: ; 0x02244A74
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r0, [r0, #0x24]
	bl sub_0200B60C
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02244A74

	thumb_func_start ov107_02244A8C
ov107_02244A8C: ; 0x02244A8C
	ldr r3, _02244A94 ; =sub_0200B538
	ldr r0, [r0, #0x24]
	bx r3
	nop
_02244A94: .word sub_0200B538
	thumb_func_end ov107_02244A8C

	thumb_func_start ov107_02244A98
ov107_02244A98: ; 0x02244A98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	bl sub_0200B498
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02244A98

	thumb_func_start ov107_02244AB4
ov107_02244AB4: ; 0x02244AB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	str r2, [sp, #0x10]
	add r6, r3, #0
	bl sub_02025E38
	add r7, r0, #0
	mov r0, #8
	mov r1, #0x64
	bl sub_02023790
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023D28
	add r0, r7, #0
	bl sub_02025F30
	cmp r0, #0
	bne _02244AF0
	ldr r1, _02244B20 ; =0x00070800
	b _02244AF4
_02244AF0:
	mov r1, #0xc1
	lsl r1, r1, #0xa
_02244AF4:
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02244B20: .word 0x00070800
	thumb_func_end ov107_02244AB4

	thumb_func_start ov107_02244B24
ov107_02244B24: ; 0x02244B24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #0x18]
	add r6, r3, #0
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	str r0, [sp, #0x1c]
	bl sub_02025F30
	cmp r0, #0
	bne _02244B4A
	ldr r4, _02244B88 ; =0x00070800
	b _02244B4E
_02244B4A:
	mov r4, #0xc1
	lsl r4, r4, #0xa
_02244B4E:
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #0x1c]
	mov r1, #0
	bl sub_0200B498
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	lsr r0, r4, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsr r0, r4, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov107_02243860
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244B88: .word 0x00070800
	thumb_func_end ov107_02244B24

	thumb_func_start ov107_02244B8C
ov107_02244B8C: ; 0x02244B8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r2, #0
	add r2, r3, #0
	add r3, sp, #0x20
	ldrb r3, [r3, #0x14]
	cmp r3, #0
	bne _02244BA6
	mov r3, #0x56
	mov r4, #7
	mov r5, #8
	mov r6, #0
	b _02244BB2
_02244BA6:
	cmp r3, #1
	bne _02244BCC
	mov r3, #0x57
	mov r4, #3
	mov r5, #4
	mov r6, #0
_02244BB2:
	str r2, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	add r2, sp, #0x20
	ldrb r2, [r2, #0x10]
	str r2, [sp, #0x14]
	add r2, r3, #0
	add r3, r7, #0
	bl ov107_02243860
_02244BCC:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02244B8C

	thumb_func_start ov107_02244BD0
ov107_02244BD0: ; 0x02244BD0
	mov r3, #0
	strb r3, [r0, #8]
	str r2, [r1, #0]
	bx lr
	thumb_func_end ov107_02244BD0

	thumb_func_start ov107_02244BD8
ov107_02244BD8: ; 0x02244BD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	mov r4, #0
	bl ov107_02249C98
	ldr r1, _02244C6C ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	tst r1, r2
	beq _02244C0A
	ldrb r2, [r5, #0xd]
	ldrb r1, [r5, #0x15]
	cmp r2, r1
	beq _02244C6A
	cmp r0, #0
	bne _02244C04
	ldrb r1, [r5, #0x14]
	sub r1, r1, #1
	add r1, r2, r1
	b _02244C06
_02244C04:
	sub r1, r2, #1
_02244C06:
	strb r1, [r5, #0xd]
	mov r4, #1
_02244C0A:
	ldr r1, _02244C6C ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x10
	tst r1, r2
	beq _02244C2E
	ldrb r2, [r5, #0xd]
	ldrb r1, [r5, #0x15]
	cmp r2, r1
	beq _02244C6A
	ldrb r1, [r5, #0x14]
	sub r1, r1, #1
	cmp r0, r1
	bne _02244C28
	sub r0, r2, r1
	b _02244C2A
_02244C28:
	add r0, r2, #1
_02244C2A:
	strb r0, [r5, #0xd]
	mov r4, #1
_02244C2E:
	ldr r0, _02244C6C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x40
	tst r0, r1
	beq _02244C46
	ldrb r1, [r5, #0xd]
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	blo _02244C6A
	ldrb r0, [r5, #0xc]
	mov r4, #1
	strb r0, [r5, #0xd]
_02244C46:
	ldr r0, _02244C6C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x80
	tst r0, r1
	beq _02244C60
	ldrb r1, [r5, #0xd]
	ldrb r0, [r5, #0x15]
	cmp r1, r0
	bhs _02244C6A
	strb r1, [r5, #0xc]
	ldrb r0, [r5, #0x15]
	mov r4, #1
	strb r0, [r5, #0xd]
_02244C60:
	cmp r4, #1
	bne _02244C6A
	add r0, r5, #0
	bl ov107_02244C70
_02244C6A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244C6C: .word 0x021BF67C
	thumb_func_end ov107_02244BD8

	thumb_func_start ov107_02244C70
ov107_02244C70: ; 0x02244C70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244C9C ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02244C8E
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #0xc
	bl ov107_0224529C
_02244C8E:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #0
	bl ov107_02244CA0
	pop {r4, pc}
	nop
_02244C9C: .word 0x000005DC
	thumb_func_end ov107_02244C70

	thumb_func_start ov107_02244CA0
ov107_02244CA0: ; 0x02244CA0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	cmp r2, #0
	bne _02244CB8
	mov r0, #0xed
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r2, #1
	mov r1, #0
	b _02244CC2
_02244CB8:
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r2, #2
	mov r1, #0x11
_02244CC2:
	ldrb r0, [r5, #0x15]
	cmp r6, r0
	blo _02244CDC
	add r0, r4, #0
	bl ov107_02249BEC
	add r0, r4, #0
	mov r1, #0xe0
	mov r2, #0xa0
	bl ov107_02249BB8
	add sp, #8
	pop {r4, r5, r6, pc}
_02244CDC:
	add r0, r4, #0
	add r1, r2, #0
	bl ov107_02249BEC
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	add r3, r6, #0
	bl ov107_02244D08
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov107_02249BB8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_02244CA0

	thumb_func_start ov107_02244D08
ov107_02244D08: ; 0x02244D08
	push {r4, r5, r6, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl FUN_0223BA14
	cmp r0, #1
	bne _02244D3E
	cmp r4, #0
	bne _02244D24
	mov r0, #0x28
	str r0, [r5, #0]
	b _02244D56
_02244D24:
	cmp r4, #1
	bne _02244D2E
	mov r0, #0x68
	str r0, [r5, #0]
	b _02244D56
_02244D2E:
	cmp r4, #2
	bne _02244D38
	mov r0, #0xa8
	str r0, [r5, #0]
	b _02244D56
_02244D38:
	mov r0, #0xe8
	str r0, [r5, #0]
	b _02244D56
_02244D3E:
	cmp r4, #0
	bne _02244D48
	mov r0, #0x48
	str r0, [r5, #0]
	b _02244D56
_02244D48:
	cmp r4, #1
	bne _02244D52
	mov r0, #0x88
	str r0, [r5, #0]
	b _02244D56
_02244D52:
	mov r0, #0xc8
	str r0, [r5, #0]
_02244D56:
	mov r0, #0x58
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02244D08

	thumb_func_start ov107_02244D5C
ov107_02244D5C: ; 0x02244D5C
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r0, #0x73
	add r5, r1, #0
	lsl r0, r0, #2
	add r4, r2, #0
	ldrb r1, [r3, #9]
	ldr r0, [r3, r0]
	mov r2, #1
	bl ov107_02249CAC
	cmp r4, #6
	bne _02244D7E
	ldr r0, _02244D88 ; =0x0224A06C
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02244D7E:
	ldr r0, _02244D8C ; =0x02249FBA
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
	nop
_02244D88: .word 0x0224A06C
_02244D8C: .word 0x02249FBA
	thumb_func_end ov107_02244D5C

	thumb_func_start ov107_02244D90
ov107_02244D90: ; 0x02244D90
	push {r3, lr}
	ldr r3, _02244DD0 ; =0x02249F84
	mov r2, #0
_02244D96:
	ldrh r1, [r3]
	cmp r0, r1
	bne _02244DA4
	ldr r0, _02244DD4 ; =0x02249FBA
	lsl r1, r2, #1
	ldrh r0, [r0, r1]
	pop {r3, pc}
_02244DA4:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x1b
	blo _02244D96
	ldr r2, _02244DD8 ; =0x0224A02C
	mov r3, #0
_02244DB0:
	ldrh r1, [r2]
	cmp r0, r1
	bne _02244DBE
	ldr r0, _02244DDC ; =0x0224A06C
	lsl r1, r3, #1
	ldrh r0, [r0, r1]
	pop {r3, pc}
_02244DBE:
	add r3, r3, #1
	add r2, r2, #2
	cmp r3, #0x20
	blo _02244DB0
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_02244DD0: .word 0x02249F84
_02244DD4: .word 0x02249FBA
_02244DD8: .word 0x0224A02C
_02244DDC: .word 0x0224A06C
	thumb_func_end ov107_02244D90

	thumb_func_start ov107_02244DE0
ov107_02244DE0: ; 0x02244DE0
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r0, #0x73
	add r5, r1, #0
	lsl r0, r0, #2
	add r4, r2, #0
	ldrb r1, [r3, #9]
	ldr r0, [r3, r0]
	mov r2, #1
	bl ov107_02249CAC
	cmp r4, #6
	bne _02244E02
	ldr r0, _02244E0C ; =0x0224A02C
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02244E02:
	ldr r0, _02244E10 ; =0x02249F84
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
	nop
_02244E0C: .word 0x0224A02C
_02244E10: .word 0x02249F84
	thumb_func_end ov107_02244DE0

	thumb_func_start ov107_02244E14
ov107_02244E14: ; 0x02244E14
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x18]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02244E36
	mov r0, #0x1c
	strh r0, [r5]
	mov r0, #0
	strh r0, [r6]
	strh r0, [r7]
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02244E36:
	mov r1, #0
	strh r1, [r5]
	strh r1, [r6]
	mov r0, #0x78
	strh r0, [r7]
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02244E14

	thumb_func_start ov107_02244E44
ov107_02244E44: ; 0x02244E44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r6, r2, #0
	bl ov107_02249C98
	add r5, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0207A0FC
	str r0, [sp, #0x14]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	lsl r1, r7, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl sub_0208C104
	add r1, r0, #0
	add r0, r4, #0
	bl ov107_022450E8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsl r1, r7, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl sub_0208C104
	add r1, r0, #0
	add r0, r4, #0
	bl ov107_02245114
	add r7, r0, #0
	cmp r6, #0xa
	bls _02244EB2
	b _02245036
_02244EB2:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244EBE: ; jump table
	.short _02245036 - _02244EBE - 2 ; case 0
	.short _02244EE2 - _02244EBE - 2 ; case 1
	.short _02244EE2 - _02244EBE - 2 ; case 2
	.short _02244EE2 - _02244EBE - 2 ; case 3
	.short _02244ED4 - _02244EBE - 2 ; case 4
	.short _02245036 - _02244EBE - 2 ; case 5
	.short _02244FA2 - _02244EBE - 2 ; case 6
	.short _02244FA2 - _02244EBE - 2 ; case 7
	.short _02244ED4 - _02244EBE - 2 ; case 8
	.short _0224501A - _02244EBE - 2 ; case 9
	.short _02245028 - _02244EBE - 2 ; case 10
_02244ED4:
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244EE2:
	ldrb r1, [r4, #0xe]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	bne _02244F2C
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02244EFE
	mov r1, #0x40
	b _02244F00
_02244EFE:
	mov r1, #0x20
_02244F00:
	mov r0, #8
	str r0, [sp]
	lsl r0, r5, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0x76
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0x3b
	lsl r1, r1, #4
	str r0, [r4, r1]
_02244F2C:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02244F50
	bl ov107_02249C40
	cmp r0, #0
	bne _02244F50
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_02244F50:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02245036
	ldr r0, [sp, #0x14]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r3, r0, #0
	add r0, r4, #0
	add r1, #0x80
	add r2, r5, #0
	bl ov107_02243F4C
	lsl r5, r5, #2
	mov r0, #0xef
	add r1, r4, r5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov107_02249BEC
	mov r0, #0x39
	add r1, r4, r5
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov107_02249C1C
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244FA2:
	ldrb r1, [r4, #0xe]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	bne _02244FEC
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02244FBE
	mov r1, #0x40
	b _02244FC0
_02244FBE:
	mov r1, #0x20
_02244FC0:
	mov r0, #0x10
	str r0, [sp]
	lsl r0, r5, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0x76
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0x3b
	lsl r1, r1, #4
	str r0, [r4, r1]
_02244FEC:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249C40
	cmp r0, #0
	bne _02245036
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224501A:
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02245028:
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02245036:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02244E44

	thumb_func_start ov107_0224503C
ov107_0224503C: ; 0x0224503C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	add r6, r2, #0
	bl ov107_02249C98
	add r4, r0, #0
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224505A
	mov r1, #0x40
	b _0224505C
_0224505A:
	mov r1, #0x20
_0224505C:
	cmp r6, #1
	bne _0224506A
	mov r0, #0
	mov r7, #0x28
	mov r6, #0x50
	str r0, [sp, #8]
	b _02245078
_0224506A:
	lsl r0, r4, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	mov r0, #2
	mov r6, #0x3a
	str r0, [sp, #8]
_02245078:
	add r0, r7, #0
	add r0, #8
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r6, #4
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r5, r0
	lsl r4, r4, #2
	str r0, [sp, #0xc]
	ldr r0, [r0, r4]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov107_02249C58
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0, r4]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov107_02249BB8
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r0, [r0, r4]
	bl ov107_02249C4C
	mov r0, #0x39
	lsl r0, r0, #4
	add r5, r5, r0
	ldr r0, [r5, r4]
	add r1, r7, #0
	add r2, r6, #0
	bl ov107_02249C58
	lsl r1, r7, #0x10
	lsl r2, r6, #0x10
	ldr r0, [r5, r4]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov107_02249BB8
	ldr r0, [r5, r4]
	ldr r1, [sp, #8]
	bl ov107_02249C4C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_0224503C

	thumb_func_start ov107_022450E8
ov107_022450E8: ; 0x022450E8
	cmp r1, #4
	bhi _02245110
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022450F8: ; jump table
	.short _02245110 - _022450F8 - 2 ; case 0
	.short _0224510E - _022450F8 - 2 ; case 1
	.short _0224510A - _022450F8 - 2 ; case 2
	.short _02245106 - _022450F8 - 2 ; case 3
	.short _02245102 - _022450F8 - 2 ; case 4
_02245102:
	mov r0, #1
	bx lr
_02245106:
	mov r0, #2
	bx lr
_0224510A:
	mov r0, #3
	bx lr
_0224510E:
	mov r0, #4
_02245110:
	bx lr
	; .align 2, 0
	thumb_func_end ov107_022450E8

	thumb_func_start ov107_02245114
ov107_02245114: ; 0x02245114
	cmp r1, #4
	bhi _0224513C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02245124: ; jump table
	.short _0224513C - _02245124 - 2 ; case 0
	.short _0224513A - _02245124 - 2 ; case 1
	.short _02245136 - _02245124 - 2 ; case 2
	.short _02245132 - _02245124 - 2 ; case 3
	.short _0224512E - _02245124 - 2 ; case 4
_0224512E:
	mov r0, #0xf
	bx lr
_02245132:
	mov r0, #0xf
	bx lr
_02245136:
	mov r0, #0xe
	bx lr
_0224513A:
	mov r0, #0xd
_0224513C:
	bx lr
	; .align 2, 0
	thumb_func_end ov107_02245114

	thumb_func_start ov107_02245140
ov107_02245140: ; 0x02245140
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd
	ldrsb r0, [r4, r0]
	add r0, r0, r1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldrb r0, [r4, #0x14]
	bpl _0224515A
	sub r0, r0, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	b _02245160
_0224515A:
	cmp r1, r0
	blt _02245160
	mov r1, #0
_02245160:
	strb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_02244C70
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov107_02243950
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02245140

	thumb_func_start ov107_0224518C
ov107_0224518C: ; 0x0224518C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd
	ldrsb r0, [r4, r0]
	add r0, r0, r1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldrb r0, [r4, #0x14]
	bpl _022451A6
	sub r0, r0, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	b _022451AC
_022451A6:
	cmp r1, r0
	blt _022451AC
	mov r1, #0
_022451AC:
	strb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_02244C70
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov107_02243B84
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_0224518C

	thumb_func_start ov107_022451D8
ov107_022451D8: ; 0x022451D8
	push {r4, lr}
	add r4, r0, #0
	bl ov107_02245618
	add r0, r4, #0
	bl ov107_02245730
	add r0, r4, #0
	bl ov107_02244120
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	add r0, r4, #0
	bl ov107_02245BE0
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	pop {r4, pc}
	thumb_func_end ov107_022451D8

	thumb_func_start ov107_02245210
ov107_02245210: ; 0x02245210
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	mov r1, #0x3a
	add r2, r4, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x42
	add r2, r4, #0
	bl sub_02074470
	cmp r6, r0
	beq _02245230
	mov r4, #1
_02245230:
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x43
	mov r2, #0
	bl sub_02074470
	cmp r6, r0
	beq _0224524C
	mov r4, #1
_0224524C:
	add r0, r5, #0
	mov r1, #0x3c
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x44
	mov r2, #0
	bl sub_02074470
	cmp r6, r0
	beq _02245268
	mov r4, #1
_02245268:
	add r0, r5, #0
	mov r1, #0x3d
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x45
	mov r2, #0
	bl sub_02074470
	cmp r6, r0
	beq _02245284
	mov r4, #1
_02245284:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02245210

	thumb_func_start ov107_02245288
ov107_02245288: ; 0x02245288
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_0201AD10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02245288

	thumb_func_start ov107_0224529C
ov107_0224529C: ; 0x0224529C
	push {r3, r4, r5, lr}
	add r3, r1, #0
	sub r3, #0xa
	add r5, r0, #0
	cmp r3, #3
	bhi _022452DA
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_022452B4: ; jump table
	.short _022452BC - _022452B4 - 2 ; case 0
	.short _022452C4 - _022452B4 - 2 ; case 1
	.short _022452CC - _022452B4 - 2 ; case 2
	.short _022452D4 - _022452B4 - 2 ; case 3
_022452BC:
	mov r4, #0x31
	bl ov107_022452F4
	b _022452DA
_022452C4:
	mov r4, #0x32
	bl ov107_02245368
	b _022452DA
_022452CC:
	mov r4, #0x33
	bl ov107_022453F8
	b _022452DA
_022452D4:
	mov r4, #0x34
	bl ov107_0224542C
_022452DA:
	mov r1, #0x3e
	lsl r1, r1, #4
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _022452F0
	mov r0, #1
	pop {r3, r4, r5, pc}
_022452F0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_0224529C

	thumb_func_start ov107_022452F4
ov107_022452F4: ; 0x022452F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r4, r1, #0
	bl sub_02025E38
	mov r1, #0x3e
	lsl r1, r1, #4
	strh r4, [r6, r1]
	bl sub_02025F30
	ldr r1, _02245334 ; =0x000003E2
	mov r4, #0
	strh r0, [r6, r1]
	add r5, r6, #4
	sub r7, r1, #2
_02245318:
	mov r0, #0x73
	lsl r0, r0, #2
	lsl r2, r4, #0x18
	ldrb r1, [r6, #9]
	ldr r0, [r6, r0]
	lsr r2, r2, #0x18
	bl ov107_02249CAC
	strh r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _02245318
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245334: .word 0x000003E2
	thumb_func_end ov107_022452F4

	thumb_func_start ov107_02245338
ov107_02245338: ; 0x02245338
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xf]
	add r6, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0xf]
	bl sub_0203608C
	cmp r5, r0
	beq _02245362
	ldr r0, _02245364 ; =0x00000433
	mov r3, #0
	add r5, r6, #4
_02245354:
	ldrh r2, [r5]
	add r1, r4, r3
	add r3, r3, #1
	add r5, r5, #2
	strb r2, [r1, r0]
	cmp r3, #3
	blt _02245354
_02245362:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02245364: .word 0x00000433
	thumb_func_end ov107_02245338

	thumb_func_start ov107_02245368
ov107_02245368: ; 0x02245368
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3e
	lsl r0, r0, #4
	strh r1, [r5, r0]
	add r4, r2, #0
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _02245388
	ldrb r0, [r5, #0x12]
	cmp r0, #0xff
	bne _02245388
	strb r4, [r5, #0x12]
_02245388:
	ldrb r1, [r5, #0x12]
	mov r0, #0xf9
	lsl r0, r0, #2
	strh r1, [r5, r0]
	ldrh r2, [r5, #0x10]
	add r1, r0, #4
	add r0, r0, #6
	strh r2, [r5, r1]
	ldrb r1, [r5, #0x13]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02245368

	thumb_func_start ov107_022453A0
ov107_022453A0: ; 0x022453A0
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #0xf]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0xf]
	bl sub_0203608C
	cmp r6, r0
	beq _022453F0
	ldrh r1, [r5, #2]
	ldr r0, _022453F4 ; =0x00000431
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _022453E4
	ldrb r0, [r4, #0x12]
	cmp r0, #0xff
	ldr r0, _022453F4 ; =0x00000431
	beq _022453D2
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022453D2:
	ldrb r1, [r4, r0]
	ldrb r0, [r4, #0x15]
	add r0, r1, r0
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
	pop {r4, r5, r6, pc}
_022453E4:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
_022453F0:
	pop {r4, r5, r6, pc}
	nop
_022453F4: .word 0x00000431
	thumb_func_end ov107_022453A0

	thumb_func_start ov107_022453F8
ov107_022453F8: ; 0x022453F8
	mov r2, #0x3e
	lsl r2, r2, #4
	strh r1, [r0, r2]
	ldrb r3, [r0, #0xd]
	add r1, r2, #2
	strh r3, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov107_022453F8

	thumb_func_start ov107_02245408
ov107_02245408: ; 0x02245408
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r5, r0
	beq _0224542A
	ldrh r0, [r6, #2]
	mov r1, #0x43
	lsl r1, r1, #4
	strb r0, [r4, r1]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl ov107_02244CA0
_0224542A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02245408

	thumb_func_start ov107_0224542C
ov107_0224542C: ; 0x0224542C
	mov r1, #0x3e
	mov r2, #1
	lsl r1, r1, #4
	strh r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov107_0224542C

	thumb_func_start ov107_02245438
ov107_02245438: ; 0x02245438
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0203608C
	cmp r5, r0
	beq _0224544E
	ldrh r1, [r4]
	ldr r0, _02245450 ; =0x00000432
	strb r1, [r6, r0]
_0224544E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02245450: .word 0x00000432
	thumb_func_end ov107_02245438

	thumb_func_start ov107_02245454
ov107_02245454: ; 0x02245454
	push {r3, lr}
	mov r2, #0x64
	str r2, [sp]
	mov r2, #0
	add r3, r2, #0
	bl sub_02096954
	pop {r3, pc}
	thumb_func_end ov107_02245454

	thumb_func_start ov107_02245464
ov107_02245464: ; 0x02245464
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	add r5, r0, #0
	add r1, #2
	add r2, sp, #8
	add r3, #2
	bl ov107_02244E14
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224549C
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #6]
	ldrh r3, [r3, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_02244AB4
	b _022454EC
_0224549C:
	bl sub_0203608C
	cmp r0, #0
	add r0, sp, #4
	bne _022454CA
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #4]
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	bl ov107_02244AB4
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_02244B24
	b _022454EC
_022454CA:
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #4]
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	bl ov107_02244B24
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_02244AB4
_022454EC:
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02245464

	thumb_func_start ov107_022454F8
ov107_022454F8: ; 0x022454F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	add r4, r2, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r6, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	mov r2, #0
	bl ov107_02249CAC
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov107_02244A8C
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	bl ov107_02249DBC
	sub r1, r4, #1
	lsl r2, r1, #1
	ldr r1, _02245598 ; =0x02249E00
	add r0, r5, #0
	ldrh r1, [r1, r2]
	mov r2, #1
	bl ov107_02243918
	strb r0, [r5, #0xa]
	cmp r4, #1
	beq _02245564
	cmp r4, #2
	beq _0224556E
	cmp r4, #3
	beq _02245578
	b _0224558A
_02245564:
	add r0, r6, #0
	mov r1, #0x18
	bl ov107_02245454
	b _0224558E
_0224556E:
	add r0, r6, #0
	mov r1, #0x29
	bl ov107_02245454
	b _0224558E
_02245578:
	add r0, r6, #0
	mov r1, #0x18
	bl ov107_02245454
	add r0, r6, #0
	mov r1, #0x29
	bl ov107_02245454
	b _0224558E
_0224558A:
	bl sub_02022974
_0224558E:
	ldr r0, _0224559C ; =0x000005EC
	bl sub_02005748
	pop {r4, r5, r6, pc}
	nop
_02245598: .word 0x02249E00
_0224559C: .word 0x000005EC
	thumb_func_end ov107_022454F8

	thumb_func_start ov107_022455A0
ov107_022455A0: ; 0x022455A0
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	add r4, r1, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	mov r1, #6
	add r2, sp, #0x18
	add r6, r0, #0
	bl sub_02074B30
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov107_02249BAC
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov107_02244A8C
	add r2, sp, #0x10
	ldrh r2, [r2, #8]
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl sub_0200B70C
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #1
	bl ov107_02243918
	strb r0, [r5, #0xa]
	ldr r0, _02245614 ; =0x00000624
	bl sub_02005748
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02245614: .word 0x00000624
	thumb_func_end ov107_022455A0

	thumb_func_start ov107_02245618
ov107_02245618: ; 0x02245618
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0xe]
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224564E
	mov r0, #0x10
	bic r1, r0
	mov r0, #0x5f
	strb r1, [r4, #0xe]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201AD10
_0224564E:
	pop {r4, pc}
	thumb_func_end ov107_02245618

	thumb_func_start ov107_02245650
ov107_02245650: ; 0x02245650
	ldrb r2, [r0, #0xe]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strb r1, [r0, #0xe]
	bx lr
	; .align 2, 0
	thumb_func_end ov107_02245650

	thumb_func_start ov107_02245660
ov107_02245660: ; 0x02245660
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #5
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #5
	lsl r0, r0, #6
	add r0, r4, r0
	bl sub_0201AD10
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #0
	bl ov107_0224503C
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201AD10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02245660

	thumb_func_start ov107_022456E4
ov107_022456E4: ; 0x022456E4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0xb0
	bl ov107_02245288
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov107_02249BAC
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020013AC
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl sub_020014D0
	add r1, sp, #0
	ldrh r1, [r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02244DE0
	mov r1, #0x11
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, r4, #0
	add r1, r4, r1
	bl ov107_02243EF8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov107_022456E4

	thumb_func_start ov107_02245730
ov107_02245730: ; 0x02245730
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0xe]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224577E
	mov r0, #1
	bic r1, r0
	mov r0, #0x66
	strb r1, [r4, #0xe]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x12
	bl sub_02001504
	add r5, r0, #0
	mov r1, #1
	bl sub_0200DC9C
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201AD10
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x66
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02001384
_0224577E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02245730

	thumb_func_start ov107_02245780
ov107_02245780: ; 0x02245780
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r1, sp, #0x28
	str r1, [sp]
	add r1, sp, #0x2c
	add r3, sp, #0x28
	add r5, r0, #0
	add r1, #2
	add r2, sp, #0x2c
	add r3, #2
	bl ov107_02244E14
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224581A
	add r1, sp, #0x28
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	ldrb r0, [r5, #9]
	bl sub_0205E630
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x1c]
	bl sub_02030698
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl ov107_02244A74
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02243890
	strb r0, [r5, #0xa]
	b _022459C2
_0224581A:
	bl sub_0203608C
	cmp r0, #0
	add r1, sp, #0x28
	bne _022458F4
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	ldrb r0, [r5, #9]
	bl sub_0205E630
	str r0, [sp, #0x20]
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	bl sub_02030698
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl ov107_02244A74
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02243890
	add r1, sp, #0x28
	strb r0, [r5, #0xa]
	ldrh r0, [r1, #2]
	ldrh r6, [r1]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	mov r0, #1
	str r0, [sp]
	ldr r2, _022459CC ; =0x00000436
	add r0, r5, #0
	ldrh r2, [r5, r2]
	mov r1, #0
	mov r3, #4
	bl ov107_02244A74
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	add r3, r7, #0
	bl ov107_02243890
	strb r0, [r5, #0xa]
	b _022459C2
_022458F4:
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	mov r0, #1
	str r0, [sp]
	ldr r2, _022459CC ; =0x00000436
	add r0, r5, #0
	ldrh r2, [r5, r2]
	mov r1, #0
	mov r3, #4
	bl ov107_02244A74
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	add r3, r7, #0
	bl ov107_02243890
	add r1, sp, #0x28
	strb r0, [r5, #0xa]
	ldrh r0, [r1, #2]
	ldrh r6, [r1]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	ldrb r0, [r5, #9]
	bl sub_0205E630
	str r0, [sp, #0x24]
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	bl sub_02030698
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl ov107_02244A74
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02243890
	strb r0, [r5, #0xa]
_022459C2:
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022459CC: .word 0x00000436
	thumb_func_end ov107_02245780

	thumb_func_start ov107_022459D0
ov107_022459D0: ; 0x022459D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02245B34 ; =0x000005E3
	add r7, r1, #0
	add r5, r2, #0
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	add r1, r7, #0
	str r0, [sp]
	bl ov107_02249C9C
	str r0, [sp, #4]
	cmp r5, #0xa
	bhi _02245A28
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022459FC: ; jump table
	.short _02245A28 - _022459FC - 2 ; case 0
	.short _02245A12 - _022459FC - 2 ; case 1
	.short _02245A12 - _022459FC - 2 ; case 2
	.short _02245A12 - _022459FC - 2 ; case 3
	.short _02245A28 - _022459FC - 2 ; case 4
	.short _02245A28 - _022459FC - 2 ; case 5
	.short _02245A1C - _022459FC - 2 ; case 6
	.short _02245A1C - _022459FC - 2 ; case 7
	.short _02245A28 - _022459FC - 2 ; case 8
	.short _02245A26 - _022459FC - 2 ; case 9
	.short _02245A26 - _022459FC - 2 ; case 10
_02245A12:
	sub r0, r5, #1
	lsl r1, r0, #1
	ldr r0, _02245B38 ; =0x02249E0C
	ldrh r6, [r0, r1]
	b _02245A28
_02245A1C:
	ldrh r0, [r4, #0x10]
	bl ov107_02244D90
	add r6, r0, #0
	b _02245A28
_02245A26:
	mov r6, #0
_02245A28:
	bl sub_0203608C
	cmp r0, #0
	bne _02245A5C
	ldr r0, [sp]
	cmp r7, r0
	bhs _02245A4A
	add r0, r4, #0
	mov r1, #5
	bl ov107_02244A98
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r6, #0
	bl FUN_0223BC2C
	b _02245A86
_02245A4A:
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r0, _02245B3C ; =0x00000436
	ldrh r1, [r4, r0]
	sub r1, r1, r6
	strh r1, [r4, r0]
	b _02245A86
_02245A5C:
	ldr r0, [sp]
	cmp r7, r0
	bhs _02245A74
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r0, _02245B3C ; =0x00000436
	ldrh r1, [r4, r0]
	sub r1, r1, r6
	strh r1, [r4, r0]
	b _02245A86
_02245A74:
	add r0, r4, #0
	mov r1, #5
	bl ov107_02244A98
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r6, #0
	bl FUN_0223BC2C
_02245A86:
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov107_02245780
	add r0, r4, #0
	bl ov107_02245618
	add r0, r4, #0
	bl ov107_02245BE0
	add r0, r4, #0
	bl ov107_02244120
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02245288
	cmp r5, #0xa
	bhi _02245B30
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245AC2: ; jump table
	.short _02245B30 - _02245AC2 - 2 ; case 0
	.short _02245AD8 - _02245AC2 - 2 ; case 1
	.short _02245AD8 - _02245AC2 - 2 ; case 2
	.short _02245AD8 - _02245AC2 - 2 ; case 3
	.short _02245B30 - _02245AC2 - 2 ; case 4
	.short _02245B30 - _02245AC2 - 2 ; case 5
	.short _02245AFA - _02245AC2 - 2 ; case 6
	.short _02245AFA - _02245AC2 - 2 ; case 7
	.short _02245B30 - _02245AC2 - 2 ; case 8
	.short _02245B1C - _02245AC2 - 2 ; case 9
	.short _02245B28 - _02245AC2 - 2 ; case 10
_02245AD8:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	ldr r1, [sp, #4]
	add r0, r4, #0
	add r2, r5, #0
	bl ov107_022454F8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02245AFA:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov107_02249DBC
	ldrh r2, [r4, #0x10]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov107_022455A0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02245B1C:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov107_02245B40
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02245B28:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov107_02245B90
_02245B30:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245B34: .word 0x000005E3
_02245B38: .word 0x02249E0C
_02245B3C: .word 0x00000436
	thumb_func_end ov107_022459D0

	thumb_func_start ov107_02245B40
ov107_02245B40: ; 0x02245B40
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #2
	bl ov107_02243630
	add r0, r5, #0
	add r0, #0xb0
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0xa0
	bl sub_0201AD10
	mov r0, #5
	lsl r0, r0, #6
	add r0, r5, r0
	bl sub_0201AD10
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r5, #0
	add r5, #0x90
	add r1, r5, #0
	bl ov107_02243950
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02245B40

	thumb_func_start ov107_02245B90
ov107_02245B90: ; 0x02245B90
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #2
	bl ov107_022436AC
	add r0, r5, #0
	add r0, #0xb0
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0xa0
	bl sub_0201AD10
	mov r0, #5
	lsl r0, r0, #6
	add r0, r5, r0
	bl sub_0201AD10
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r5, #0
	add r5, #0x90
	add r1, r5, #0
	bl ov107_02243B84
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02245B90

	thumb_func_start ov107_02245BE0
ov107_02245BE0: ; 0x02245BE0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x90
	mov r1, #0
	bl sub_0201ADA4
	add r4, #0x90
	add r0, r4, #0
	bl sub_0201ACF4
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02245BE0

	thumb_func_start ov107_02245C00
ov107_02245C00: ; 0x02245C00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldrb r0, [r6, #9]
	mov r1, #1
	bl FUN_0223B7A8
	mov r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _02245C90
	add r5, r6, #0
_02245C18:
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #4]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r0, r7, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl FUN_0222E240
	add r1, r0, #0
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02245C86
	bl ov107_02249C1C
	ldrb r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	bl ov107_02249C98
	cmp r4, r0
	bne _02245C6C
	ldrb r1, [r6, #0xd]
	ldrb r0, [r6, #0x15]
	cmp r1, r0
	blo _02245C7A
_02245C6C:
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov107_02249C28
	b _02245C86
_02245C7A:
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov107_02249C28
_02245C86:
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _02245C18
_02245C90:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02245C00

	thumb_func_start ov107_02245C94
ov107_02245C94: ; 0x02245C94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r2, [sp]
	ldrb r0, [r5, #9]
	add r6, r1, #0
	mov r1, #0
	bl FUN_0223B7A8
	ldr r0, [sp]
	cmp r0, #4
	beq _02245CB0
	mov r0, #1
	b _02245CB2
_02245CB0:
	mov r0, #0
_02245CB2:
	ldrb r7, [r5, #0x15]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r7, #0
	add r1, r6, #0
	bl ov107_02249C9C
	bl sub_0203608C
	cmp r0, #0
	bne _02245D9A
	cmp r6, r7
	bhs _02245D68
	add r0, r5, #0
	mov r1, #5
	bl ov107_02244A98
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov107_02249CAC
	add r2, r0, #0
	mov r0, #6
	add r6, r4, #0
	mul r6, r0
	ldr r3, _02245EA4 ; =0x02249E46
	lsl r2, r2, #1
	add r3, r3, r6
	ldrb r1, [r5, #9]
	ldrh r2, [r2, r3]
	ldr r0, [r5, #4]
	bl FUN_0223BC2C
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov107_02249CAC
	add r7, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203068C
	str r0, [sp, #4]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205E5B4
	str r0, [sp, #8]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r3, r7, #1
	add r2, r0, #0
	lsl r3, r3, #0x10
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	lsr r3, r3, #0x10
	bl sub_020306E4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	beq _02245D48
	b _02245E68
_02245D48:
	ldr r0, [sp]
	ldrb r1, [r5, #0xe]
	cmp r0, #4
	bne _02245D5C
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x20
	orr r0, r1
	strb r0, [r5, #0xe]
	b _02245E68
_02245D5C:
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x40
	orr r0, r1
	strb r0, [r5, #0xe]
	b _02245E68
_02245D68:
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r0, _02245EA8 ; =0x00000433
	add r6, r4, #0
	add r1, r5, r0
	ldrb r7, [r1, r4]
	mov r0, #6
	mul r6, r0
	ldr r0, _02245EA8 ; =0x00000433
	ldr r2, _02245EA4 ; =0x02249E46
	add r0, r0, #3
	lsl r3, r7, #1
	add r2, r2, r6
	ldrh r0, [r5, r0]
	ldrh r2, [r3, r2]
	sub r0, r0, r2
	ldr r2, _02245EA8 ; =0x00000433
	add r2, r2, #3
	strh r0, [r5, r2]
	ldrb r0, [r1, r4]
	add r0, r0, #1
	strb r0, [r1, r4]
	b _02245E68
_02245D9A:
	cmp r6, r7
	bhs _02245DD0
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r0, _02245EA8 ; =0x00000433
	add r6, r4, #0
	add r1, r5, r0
	ldrb r7, [r1, r4]
	mov r0, #6
	mul r6, r0
	ldr r0, _02245EA8 ; =0x00000433
	ldr r2, _02245EA4 ; =0x02249E46
	add r0, r0, #3
	lsl r3, r7, #1
	add r2, r2, r6
	ldrh r0, [r5, r0]
	ldrh r2, [r3, r2]
	sub r0, r0, r2
	ldr r2, _02245EA8 ; =0x00000433
	add r2, r2, #3
	strh r0, [r5, r2]
	ldrb r0, [r1, r4]
	add r0, r0, #1
	strb r0, [r1, r4]
	b _02245E68
_02245DD0:
	add r0, r5, #0
	mov r1, #5
	bl ov107_02244A98
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov107_02249CAC
	add r2, r0, #0
	mov r0, #6
	add r6, r4, #0
	mul r6, r0
	ldr r3, _02245EA4 ; =0x02249E46
	lsl r2, r2, #1
	add r3, r3, r6
	ldrb r1, [r5, #9]
	ldrh r2, [r2, r3]
	ldr r0, [r5, #4]
	bl FUN_0223BC2C
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov107_02249CAC
	add r7, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203068C
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205E5B4
	str r0, [sp, #0x10]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r3, r7, #1
	add r2, r0, #0
	lsl r3, r3, #0x10
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsr r3, r3, #0x10
	bl sub_020306E4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02245E68
	ldr r0, [sp]
	ldrb r1, [r5, #0xe]
	cmp r0, #4
	bne _02245E5E
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x20
	orr r0, r1
	strb r0, [r5, #0xe]
	b _02245E68
_02245E5E:
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x40
	orr r0, r1
	strb r0, [r5, #0xe]
_02245E68:
	add r0, r5, #0
	bl ov107_02245618
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	bl ov107_02245780
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	bl ov107_02249DBC
	ldr r1, _02245EAC ; =0x02249E34
	lsl r2, r7, #1
	add r1, r1, r6
	ldrh r1, [r2, r1]
	add r0, r5, #0
	mov r2, #1
	bl ov107_02243918
	strb r0, [r5, #0xa]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02245EA4: .word 0x02249E46
_02245EA8: .word 0x00000433
_02245EAC: .word 0x02249E34
	thumb_func_end ov107_02245C94

	thumb_func_start ov107_02245EB0
ov107_02245EB0: ; 0x02245EB0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	ldr r0, _02245FC8 ; =0x00000068
	mov r1, #2
	bl sub_02006590
	bl ov107_02246EAC
	mov r2, #2
	mov r0, #3
	mov r1, #0x64
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0xf7
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x64
	bl sub_0200681C
	mov r2, #0xf7
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	bl sub_020D5124
	mov r0, #0x64
	bl sub_02018340
	str r0, [r5, #0x4c]
	add r0, r4, #0
	str r4, [r5, #0]
	bl sub_02006840
	add r4, r0, #0
	mov r0, #0x53
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	bl sub_020302DC
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	bl sub_0203041C
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r4, #4]
	add r2, r4, #0
	add r2, #0x20
	strb r0, [r5, #9]
	mov r0, #0xd9
	lsl r0, r0, #2
	sub r1, #8
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl sub_02025E44
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xde
	add r2, r4, #0
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r1, r0, #0
	add r2, #8
	sub r1, #0x10
	str r2, [r5, r1]
	add r2, r4, #0
	add r1, r0, #0
	add r2, #0xc
	sub r1, #0xc
	str r2, [r5, r1]
	add r2, r4, #0
	add r1, r0, #0
	add r2, #0x10
	sub r1, #8
	str r2, [r5, r1]
	add r2, r4, #0
	sub r1, r0, #4
	add r2, #0x14
	str r2, [r5, r1]
	mov r2, #0xff
	strb r2, [r5, #0x11]
	ldrh r1, [r4, #0x28]
	add r0, #0x5e
	add r2, #0x4d
	strh r1, [r5, r0]
	ldr r0, [r5, r2]
	bl sub_0203068C
	str r0, [r5, #4]
	ldr r0, _02245FCC ; =0x000003D3
	mov r3, #0
	mov r2, #1
_02245F7E:
	add r1, r5, r3
	add r3, r3, #1
	strb r2, [r1, r0]
	cmp r3, #3
	blt _02245F7E
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02245F96
	mov r0, #3
	b _02245F98
_02245F96:
	mov r0, #4
_02245F98:
	strb r0, [r5, #0x14]
	ldrb r0, [r5, #0x14]
	mov r1, #0
	strb r0, [r5, #0x15]
	sub r0, r0, #1
	strb r0, [r5, #0xc]
	mov r0, #0x3d
	lsl r0, r0, #4
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ov107_02246EE4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02245FC0
	add r0, r5, #0
	bl sub_0209BA80
_02245FC0:
	mov r0, #0
	str r0, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02245FC8: .word 0x00000068
_02245FCC: .word 0x000003D3
	thumb_func_end ov107_02245EB0

	thumb_func_start ov107_02245FD0
ov107_02245FD0: ; 0x02245FD0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, _0224612C ; =0x000003D2
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #1
	bne _02246040
	ldr r2, [r5, #0]
	cmp r2, #1
	bne _0224606C
	mov r2, #0
	strb r2, [r4, r1]
	bl ov107_0224883C
	add r0, r4, #0
	bl ov107_02249238
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224600C
	bl ov107_02249B8C
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
_0224600C:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02249DBC
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl FUN_0222E5D0
	add r0, r4, #0
	mov r1, #7
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov107_02248350
	b _0224606C
_02246040:
	ldrb r0, [r4, #0x11]
	cmp r0, #0xff
	beq _0224606C
	ldr r0, [r5, #0]
	cmp r0, #1
	beq _02246050
	cmp r0, #3
	bne _0224606C
_02246050:
	ldr r0, _0224612C ; =0x000003D2
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov107_0224883C
	add r0, r4, #0
	bl ov107_02249238
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov107_02248350
_0224606C:
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _02246116
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224607E: ; jump table
	.short _02246088 - _0224607E - 2 ; case 0
	.short _0224609E - _0224607E - 2 ; case 1
	.short _022460DC - _0224607E - 2 ; case 2
	.short _022460F2 - _0224607E - 2 ; case 3
	.short _02246108 - _0224607E - 2 ; case 4
_02246088:
	add r0, r4, #0
	bl ov107_02246170
	cmp r0, #1
	bne _02246116
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov107_02248350
	b _02246116
_0224609E:
	add r0, r4, #0
	bl ov107_022462CC
	cmp r0, #1
	bne _02246116
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _022460BA
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov107_02248350
	b _02246116
_022460BA:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _022460D0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov107_02248350
	b _02246116
_022460D0:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov107_02248350
	b _02246116
_022460DC:
	add r0, r4, #0
	bl ov107_02246BDC
	cmp r0, #1
	bne _02246116
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov107_02248350
	b _02246116
_022460F2:
	add r0, r4, #0
	bl ov107_02246CD0
	cmp r0, #1
	bne _02246116
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov107_02248350
	b _02246116
_02246108:
	add r0, r4, #0
	bl ov107_02246D3C
	cmp r0, #1
	bne _02246116
	mov r0, #1
	pop {r3, r4, r5, pc}
_02246116:
	add r0, r4, #0
	bl ov107_022492A8
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224612C: .word 0x000003D2
	thumb_func_end ov107_02245FD0

	thumb_func_start ov107_02246130
ov107_02246130: ; 0x02246130
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, r0]
	strh r1, [r0]
	bl sub_0201DC3C
	add r0, r4, #0
	bl ov107_02246D84
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x64
	bl sub_0201807C
	ldr r0, _0224616C ; =0x00000068
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224616C: .word 0x00000068
	thumb_func_end ov107_02246130

	thumb_func_start ov107_02246170
ov107_02246170: ; 0x02246170
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _0224626C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02246188: ; jump table
	.short _02246192 - _02246188 - 2 ; case 0
	.short _022461AE - _02246188 - 2 ; case 1
	.short _022461D6 - _02246188 - 2 ; case 2
	.short _0224621C - _02246188 - 2 ; case 3
	.short _0224625E - _02246188 - 2 ; case 4
_02246192:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _022461A6
	bl sub_020365F4
	mov r0, #0xd8
	bl sub_020364F0
_022461A6:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461AE:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _022461CE
	mov r0, #0xd8
	bl sub_02036540
	cmp r0, #1
	bne _0224626C
	bl sub_020365F4
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461CE:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461D6:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _022461F6
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0
	bl ov107_02248874
	cmp r0, #1
	bne _0224626C
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461F6:
	add r0, r4, #0
	bl ov107_02246274
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_0224621C:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02246256
	ldrb r0, [r4, #0x17]
	cmp r0, #2
	blo _0224626C
	mov r0, #0
	strb r0, [r4, #0x17]
	add r0, r4, #0
	bl ov107_02246274
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_02246256:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_0224625E:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0224626C
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0224626C:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02246170

	thumb_func_start ov107_02246274
ov107_02246274: ; 0x02246274
	push {r4, r5, lr}
	sub sp, #0xc
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	add r1, #2
	add r2, sp, #8
	add r3, #2
	bl ov107_022484DC
	add r5, r4, #0
	add r5, #0x50
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r1, r5, #0
	bl ov107_02248E84
	add r0, r4, #0
	add r1, r5, #0
	bl ov107_02248C08
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x80
	bl ov107_02247B78
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x70
	bl ov107_02247C64
	add r0, r4, #0
	bl ov107_02248240
	bl sub_0201FFD0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02246274

	thumb_func_start ov107_022462CC
ov107_022462CC: ; 0x022462CC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0x11
	bls _022462DA
	bl _02246BD0
_022462DA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022462E6: ; jump table
	.short _0224630A - _022462E6 - 2 ; case 0
	.short _02246366 - _022462E6 - 2 ; case 1
	.short _022463C0 - _022462E6 - 2 ; case 2
	.short _02246520 - _022462E6 - 2 ; case 3
	.short _022465DA - _022462E6 - 2 ; case 4
	.short _022466E2 - _022462E6 - 2 ; case 5
	.short _022467B2 - _022462E6 - 2 ; case 6
	.short _0224694E - _022462E6 - 2 ; case 7
	.short _0224699A - _022462E6 - 2 ; case 8
	.short _022469E6 - _022462E6 - 2 ; case 9
	.short _02246AA2 - _022462E6 - 2 ; case 10
	.short _02246ADC - _022462E6 - 2 ; case 11
	.short _02246AEE - _022462E6 - 2 ; case 12
	.short _02246B00 - _022462E6 - 2 ; case 13
	.short _02246B12 - _022462E6 - 2 ; case 14
	.short _02246B2E - _022462E6 - 2 ; case 15
	.short _02246B52 - _022462E6 - 2 ; case 16
	.short _02246B92 - _022462E6 - 2 ; case 17
_0224630A:
	mov r0, #0
	strb r0, [r4, #0xb]
	mov r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #0xf]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	cmp r0, #1
	bne _0224632C
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_02248240
	b _0224635A
_0224632C:
	cmp r0, #2
	bne _02246352
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xd3
	mov r2, #0x69
	bl ov107_02249C60
	mov r0, #6
	strb r0, [r4, #8]
	b _0224635A
_02246352:
	cmp r0, #3
	bne _0224635A
	mov r0, #0xd
	strb r0, [r4, #8]
_0224635A:
	ldrb r1, [r4, #0xf]
	mov r0, #0xf8
	bic r1, r0
	strb r1, [r4, #0xf]
	bl _02246BD0
_02246366:
	ldr r1, _02246664 ; =0x021BF67C
	ldr r1, [r1, #0x48]
	bl ov107_02248358
	ldr r0, _02246664 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224639E
	ldr r0, _02246668 ; =0x000005DC
	bl sub_02005748
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	blo _0224638A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224638A:
	add r0, r4, #0
	bl ov107_022482A4
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	bl _02246BD0
_0224639E:
	mov r0, #2
	tst r0, r1
	beq _022463EE
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _022463EE
	ldr r0, _02246668 ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0xd]
	add r0, r4, #0
	bl ov107_022483F0
	bl _02246BD0
_022463C0:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001288
	ldr r1, _02246668 ; =0x000005DC
	add r5, r0, #0
	bl ov107_02249CE0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x18
	bl sub_020014D0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _0224640A
	bhs _02246412
	cmp r5, #6
	bls _022463F0
_022463EE:
	b _02246BD0
_022463F0:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022463FC: ; jump table
	.short _02246424 - _022463FC - 2 ; case 0
	.short _022464B0 - _022463FC - 2 ; case 1
	.short _022464FC - _022463FC - 2 ; case 2
	.short _02246BD0 - _022463FC - 2 ; case 3
	.short _02246BD0 - _022463FC - 2 ; case 4
	.short _02246BD0 - _022463FC - 2 ; case 5
	.short _0224650E - _022463FC - 2 ; case 6
_0224640A:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	b _02246BD0
_02246412:
	add r0, r4, #0
	bl ov107_022482D4
	add r0, r4, #0
	bl ov107_02248240
	mov r0, #0
	strb r0, [r4, #8]
	b _02246BD0
_02246424:
	strb r5, [r4, #0x13]
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	mov r1, #0xda
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224646C
	add r0, r4, #0
	bl ov107_022482D4
	add r0, r4, #0
	bl ov107_02248BEC
	mov r1, #0
	add r0, r4, #0
	mov r2, #1
	mov r3, #4
	str r1, [sp]
	bl ov107_022480EC
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_02247D94
	mov r0, #3
	strb r0, [r4, #8]
	b _02246BD0
_0224646C:
	add r0, r4, #0
	bl ov107_022482D4
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r5, r0, #0
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov107_02248104
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_022464B0:
	strb r5, [r4, #0x13]
	add r0, r4, #0
	bl ov107_022482D4
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r5, r0, #0
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov107_02248104
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_02247DF0
	mov r0, #4
	strb r0, [r4, #8]
	b _02246BD0
_022464FC:
	add r0, r4, #0
	bl ov107_022482D4
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_0224650E:
	add r0, r4, #0
	bl ov107_022482D4
	add r0, r4, #0
	bl ov107_02248240
	mov r0, #0
	strb r0, [r4, #8]
	b _02246BD0
_02246520:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02246542
	bhs _022465C0
	cmp r0, #1
	bhi _02246540
	cmp r0, #0
	beq _02246548
	cmp r0, #1
	beq _022465C0
_02246540:
	b _02246BD0
_02246542:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246548:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	cmp r0, #1
	bhs _0224658E
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_0224658E:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022465BA
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	mov r2, #1
	bl FUN_0223BC2C
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov107_02248C08
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_02249024
	mov r0, #0xb
	strb r0, [r4, #8]
	b _02246BD0
_022465BA:
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022465C0:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_022465DA:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02246600
	bhs _022466C8
	cmp r0, #2
	bhi _022465FE
	cmp r0, #0
	beq _02246606
	cmp r0, #1
	beq _0224666C
	cmp r0, #2
	beq _022466C8
_022465FE:
	b _02246BD0
_02246600:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246606:
	add r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02246654
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_02246654:
	add r0, r4, #0
	mov r1, #1
	bl ov107_02248E54
	mov r0, #5
	strb r0, [r4, #8]
	b _02246BD0
	nop
_02246664: .word 0x021BF67C
_02246668: .word 0x000005DC
_0224666C:
	add r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _022466BA
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r4, #0
	mov r1, #0x1e
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_022466BA:
	add r0, r4, #0
	mov r1, #2
	bl ov107_02248E54
	mov r0, #5
	strb r0, [r4, #8]
	b _02246BD0
_022466C8:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_022466E2:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02246704
	bhs _02246798
	cmp r0, #1
	bhi _02246702
	cmp r0, #0
	beq _0224670A
	cmp r0, #1
	beq _02246798
_02246702:
	b _02246BD0
_02246704:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_0224670A:
	add r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	add r5, r0, #0
	ldrb r0, [r4, #0xe]
	bl ov107_02248770
	cmp r5, r0
	bhs _02246752
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
_02246752:
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02246792
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	ldrb r0, [r4, #0xe]
	bl ov107_02248770
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl FUN_0223BC2C
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov107_02248C08
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	add r0, r4, #0
	bl ov107_022490E8
	mov r0, #0xb
	strb r0, [r4, #8]
	b _02246BD0
_02246792:
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02246798:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_022467B2:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001288
	ldr r1, _02246AA8 ; =0x000005DC
	add r5, r0, #0
	bl ov107_02249CE0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x18
	bl sub_020014D0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _022467F0
	bhs _022467F6
	cmp r5, #5
	bhi _022467EE
	cmp r5, #3
	blo _022467EE
	beq _02246810
	cmp r5, #4
	beq _02246866
	cmp r5, #5
	beq _022468E2
_022467EE:
	b _02246BD0
_022467F0:
	add r0, r0, #1
	cmp r5, r0
	b _02246BD0
_022467F6:
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_02248348
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_02246810:
	strb r5, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02248348
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	mov r1, #0x37
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02246858
	add r0, r4, #0
	bl ov107_02248BEC
	mov r1, #0
	add r0, r4, #0
	mov r2, #2
	mov r3, #4
	str r1, [sp]
	bl ov107_022480EC
	add r0, r4, #0
	mov r1, #0x2b
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_02247D94
	mov r0, #7
	strb r0, [r4, #8]
	b _02246BD0
_02246858:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_02248A2C
	mov r0, #0x10
	strb r0, [r4, #8]
	b _02246BD0
_02246866:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov107_02248348
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #2
	bl ov107_02249CAC
	cmp r0, #1
	bne _02246894
	add r0, r4, #0
	mov r1, #0x2a
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xe
	strb r0, [r4, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
_02246894:
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	mov r1, #0xdd
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022468D4
	add r0, r4, #0
	bl ov107_02248BEC
	mov r1, #0
	add r0, r4, #0
	mov r2, #5
	mov r3, #4
	str r1, [sp]
	bl ov107_022480EC
	add r0, r4, #0
	mov r1, #0x42
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_02247D94
	mov r0, #8
	strb r0, [r4, #8]
	b _02246BD0
_022468D4:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_02248AF0
	mov r0, #0x11
	strb r0, [r4, #8]
	b _02246BD0
_022468E2:
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #2
	bl ov107_02249CAC
	cmp r0, #2
	bne _02246904
	ldr r0, _02246AA8 ; =0x000005DC
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02246AAC ; =0x000005F3
	bl sub_02005748
	b _02246BD0
_02246904:
	strb r5, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02248348
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	mov r1, #0
	add r0, r4, #0
	mov r2, #0x32
	mov r3, #4
	str r1, [sp]
	bl ov107_022480EC
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_02247D94
	mov r0, #9
	strb r0, [r4, #8]
	b _02246BD0
_0224694E:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02246970
	bhs _02246988
	cmp r0, #1
	bhi _0224696E
	cmp r0, #0
	beq _02246976
	cmp r0, #1
	beq _02246988
_0224696E:
	b _02246BD0
_02246970:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246976:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x2e
	bl ov107_0224933C
	cmp r0, #1
	bne _022469BA
	mov r0, #1
	pop {r3, r4, r5, pc}
_02246988:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_0224699A:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _022469BC
	bhs _022469D4
	cmp r0, #1
	bhi _022469BA
	cmp r0, #0
	beq _022469C2
	cmp r0, #1
	beq _022469D4
_022469BA:
	b _02246BD0
_022469BC:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_022469C2:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x45
	bl ov107_0224933C
	cmp r0, #1
	bne _02246A06
	mov r0, #1
	pop {r3, r4, r5, pc}
_022469D4:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_022469E6:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02246A08
	bhs _02246A90
	cmp r0, #1
	bhi _02246A06
	cmp r0, #0
	beq _02246A0E
	cmp r0, #1
	beq _02246A90
_02246A06:
	b _02246BD0
_02246A08:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246A0E:
	add r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	add r5, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #2
	bl ov107_02249CAC
	cmp r5, #0x32
	bhs _02246A70
	add r0, r4, #0
	bl ov107_02248BB4
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02249DBC
	add r0, r4, #0
	mov r1, #0x45
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xe
	strb r0, [r4, #8]
	b _02246BD0
_02246A70:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02246A8A
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #5
	bl ov107_022493CC
	mov r0, #0xa
	strb r0, [r4, #8]
	b _02246BD0
_02246A8A:
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02246A90:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_02246AA2:
	ldr r1, _02246AB0 ; =0x021BF67C
	b _02246AB4
	nop
_02246AA8: .word 0x000005DC
_02246AAC: .word 0x000005F3
_02246AB0: .word 0x021BF67C
_02246AB4:
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	bne _02246ABE
	b _02246BD0
_02246ABE:
	bl ov107_02248BB4
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xd3
	mov r2, #0x69
	bl ov107_02249C60
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_02246ADC:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov107_0224850C
	cmp r0, #1
	bne _02246BD0
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_02246AEE:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov107_0224850C
	cmp r0, #1
	bne _02246BD0
	mov r0, #0xd
	strb r0, [r4, #8]
	b _02246BD0
_02246B00:
	ldrb r0, [r4, #0x13]
	cmp r0, #3
	bne _02246B0C
	mov r0, #0x10
	strb r0, [r4, #8]
	b _02246BD0
_02246B0C:
	mov r0, #0x11
	strb r0, [r4, #8]
	b _02246BD0
_02246B12:
	ldr r0, _02246BD4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02246BD0
	ldr r0, _02246BD8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_02246B2E:
	ldr r0, _02246BD4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02246BD0
	ldr r0, _02246BD8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_02248240
	mov r0, #0
	strb r0, [r4, #8]
	b _02246BD0
_02246B52:
	ldr r1, _02246BD4 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02246B66
	sub r1, #0x21
	bl ov107_0224877C
	b _02246BD0
_02246B66:
	mov r1, #0x10
	tst r1, r2
	beq _02246B74
	mov r1, #1
	bl ov107_0224877C
	b _02246BD0
_02246B74:
	mov r0, #3
	tst r0, r2
	beq _02246BD0
	ldr r0, _02246BD8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov107_02249238
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_02246B92:
	ldr r1, _02246BD4 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02246BA6
	sub r1, #0x21
	bl ov107_022487DC
	b _02246BD0
_02246BA6:
	mov r1, #0x10
	tst r1, r2
	beq _02246BB4
	mov r1, #1
	bl ov107_022487DC
	b _02246BD0
_02246BB4:
	mov r0, #3
	tst r0, r2
	beq _02246BD0
	ldr r0, _02246BD8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov107_02249238
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
_02246BD0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02246BD4: .word 0x021BF67C
_02246BD8: .word 0x000005DC
	thumb_func_end ov107_022462CC

	thumb_func_start ov107_02246BDC
ov107_02246BDC: ; 0x02246BDC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #5
	bhi _02246CC8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246BF2: ; jump table
	.short _02246BFE - _02246BF2 - 2 ; case 0
	.short _02246C22 - _02246BF2 - 2 ; case 1
	.short _02246C48 - _02246BF2 - 2 ; case 2
	.short _02246C6A - _02246BF2 - 2 ; case 3
	.short _02246C88 - _02246BF2 - 2 ; case 4
	.short _02246C9A - _02246BF2 - 2 ; case 5
_02246BFE:
	ldrb r2, [r4, #0xf]
	mov r1, #0xf8
	bic r2, r1
	mov r1, #8
	orr r1, r2
	strb r1, [r4, #0xf]
	ldrb r2, [r4, #0xd]
	mov r1, #0x15
	bl ov107_02248874
	cmp r0, #1
	bne _02246CC8
	mov r0, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C22:
	ldrb r1, [r4, #0x11]
	cmp r1, #0xff
	beq _02246CC8
	mov r1, #0
	strb r1, [r4, #0x17]
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x11]
	cmp r2, #5
	bne _02246C3C
	mov r2, #5
	bl ov107_022493CC
	b _02246C40
_02246C3C:
	bl ov107_02248F18
_02246C40:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C48:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x11]
	bl ov107_02249C9C
	add r1, r0, #0
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_0224850C
	cmp r0, #1
	bne _02246CC8
	mov r0, #0x1e
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C6A:
	ldrb r0, [r4, #0x16]
	sub r0, r0, #1
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _02246CC8
	bl sub_020365F4
	mov r0, #0x85
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C88:
	mov r0, #0x85
	bl sub_02036540
	cmp r0, #1
	bne _02246CC8
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C9A:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x11]
	bl ov107_02249C9C
	add r1, r0, #0
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02248674
	cmp r0, #1
	bne _02246CC8
	bl sub_020365F4
	mov r0, #0x64
	bl sub_020363E8
	mov r0, #0xff
	strb r0, [r4, #0x11]
	ldr r0, _02246CCC ; =0x000003D2
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_02246CC8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02246CCC: .word 0x000003D2
	thumb_func_end ov107_02246BDC

	thumb_func_start ov107_02246CD0
ov107_02246CD0: ; 0x02246CD0
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _02246CE4
	cmp r1, #1
	beq _02246CFC
	cmp r1, #2
	beq _02246D1E
	b _02246D38
_02246CE4:
	mov r1, #0x17
	mov r2, #0
	bl ov107_02248874
	cmp r0, #1
	bne _02246D38
	mov r0, #0x1e
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246D38
_02246CFC:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _02246D06
	sub r0, r0, #1
	strb r0, [r4, #0x16]
_02246D06:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _02246D38
	bl sub_020365F4
	mov r0, #0x86
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246D38
_02246D1E:
	mov r0, #0x86
	bl sub_02036540
	cmp r0, #1
	bne _02246D38
	bl sub_020365F4
	add r4, #0xc0
	add r0, r4, #0
	bl ov107_02248860
	mov r0, #1
	pop {r4, pc}
_02246D38:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov107_02246CD0

	thumb_func_start ov107_02246D3C
ov107_02246D3C: ; 0x02246D3C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02246D4E
	cmp r0, #1
	beq _02246D6E
	b _02246D7C
_02246D4E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246D7C
_02246D6E:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02246D7C
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02246D7C:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02246D3C

	thumb_func_start ov107_02246D84
ov107_02246D84: ; 0x02246D84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0xca
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	bl ov107_02249B8C
	mov r1, #0xcb
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl ov107_02249B8C
	mov r1, #0x36
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov107_02249B8C
	mov r0, #0
	mov r6, #0xd
	ldr r7, [sp]
	str r0, [sp, #4]
	lsl r6, r6, #6
_02246DB6:
	mov r4, #0
	add r5, r7, #0
_02246DBA:
	ldr r0, [r5, r6]
	bl ov107_02249B8C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02246DBA
	ldr r0, [sp, #4]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02246DB6
	ldr r0, [sp]
	mov r1, #1
	ldrb r0, [r0, #9]
	bl FUN_0223B7DC
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _02246E0E
	mov r7, #0x33
	ldr r4, [sp]
	lsl r7, r7, #4
_02246DEC:
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	ldr r0, [r4, r7]
	bl ov107_02249B8C
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r6
	blt _02246DEC
_02246E0E:
	bl sub_02039794
	mov r1, #5
	ldr r0, [sp]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	mov r1, #2
	bl sub_02002FA0
	mov r1, #5
	ldr r0, [sp]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	mov r1, #0
	bl sub_02002FA0
	mov r1, #5
	ldr r0, [sp]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	bl sub_02002F54
	mov r1, #5
	ldr r0, [sp]
	mov r2, #0
	lsl r1, r1, #6
	str r2, [r0, r1]
	add r1, #0x18
	add r0, r0, r1
	bl ov107_02249954
	ldr r0, [sp]
	ldr r0, [r0, #0x20]
	bl sub_0200B190
	ldr r0, [sp]
	ldr r0, [r0, #0x24]
	bl sub_0200B3F0
	ldr r0, [sp]
	ldr r0, [r0, #0x28]
	bl sub_020237BC
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl sub_020237BC
	mov r1, #0x51
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0200C560
	ldr r4, [sp]
	mov r5, #0
_02246E7C:
	ldr r0, [r4, #0x30]
	bl sub_020237BC
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02246E7C
	ldr r0, [sp]
	mov r1, #1
	add r0, #0x50
	bl ov107_02249D5C
	ldr r0, [sp]
	ldr r0, [r0, #0x4c]
	bl ov107_022472A4
	mov r1, #0xdf
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02006CA8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02246D84

	thumb_func_start ov107_02246EAC
ov107_02246EAC: ; 0x02246EAC
	push {r3, lr}
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02246EDC ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02246EE0 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_02246EDC: .word 0xFFFFE0FF
_02246EE0: .word 0x04001000
	thumb_func_end ov107_02246EAC

	thumb_func_start ov107_02246EE4
ov107_02246EE4: ; 0x02246EE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	mov r0, #0x96
	mov r1, #0x64
	bl sub_02006C24
	mov r1, #0xdf
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov107_02247220
	add r0, r5, #0
	bl ov107_02247280
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xc9
	mov r3, #0x64
	bl sub_0200B144
	str r0, [r5, #0x20]
	mov r0, #0x64
	bl sub_0200B358
	str r0, [r5, #0x24]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x64
	bl sub_02023790
	str r0, [r5, #0x28]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x64
	bl sub_02023790
	str r0, [r5, #0x2c]
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x20
_02246F38:
	add r0, r7, #0
	mov r1, #0x64
	bl sub_02023790
	str r0, [r4, #0x30]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02246F38
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x64
	bl sub_02002E7C
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x64
	bl sub_02002E98
	mov r0, #1
	mov r1, #2
	mov r2, #0
	mov r3, #0x64
	bl sub_0200C440
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0x50
	mov r2, #1
	bl ov107_02249D14
	add r0, sp, #0x28
	add r1, sp, #0x2c
	add r3, sp, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0x2c
	add r3, #2
	bl ov107_022484DC
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02246FA6
	mov r0, #0x3c
	mov r7, #0x40
	str r0, [sp, #0x1c]
	b _02246FAC
_02246FA6:
	mov r0, #0x1c
	mov r7, #0x20
	str r0, [sp, #0x1c]
_02246FAC:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl FUN_0223B7DC
	mov r6, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	bgt _02246FBE
	b _022470C8
_02246FBE:
	add r4, r5, #0
_02246FC0:
	mov r0, #7
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov107_02249B1C
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #0
	mov r0, #0xf
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x4e
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov107_02249B1C
	mov r1, #0x33
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x56
	lsl r0, r0, #2
	mov r2, #3
	add r0, r5, r0
	add r1, r6, #3
	add r3, r2, #0
	bl ov107_02249B1C
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x74
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249C08
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, r6]
	cmp r0, #0
	bne _02247090
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov107_02249BAC
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	b _022470B4
_02247090:
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov107_02249BAC
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov107_02249BAC
_022470B4:
	ldr r0, [sp, #0x1c]
	add r6, r6, #1
	add r0, #0x40
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r4, r4, #4
	add r7, #0x40
	cmp r6, r0
	bge _022470C8
	b _02246FC0
_022470C8:
	add r0, r5, #0
	add r1, sp, #0x34
	add r2, sp, #0x30
	mov r3, #0
	bl ov107_02248488
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x34]
	mov r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0xca
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	ldr r1, [sp, #0x34]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0x30]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02247148
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov107_02249BAC
_02247148:
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x20]
	str r5, [sp, #0x24]
_02247150:
	mov r7, #0
	ldr r4, [sp, #0x24]
	add r6, r7, #0
_02247156:
	add r0, r5, #0
	add r1, sp, #0x34
	add r2, sp, #0x30
	bl ov107_022495E4
	mov r0, #0xc
	str r0, [sp]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	add r0, r0, r6
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	bl ov107_02249B1C
	mov r1, #0xd
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	add r7, r7, #1
	add r6, #0xc
	add r4, r4, #4
	cmp r7, #2
	blt _02247156
	ldr r0, [sp, #0x20]
	add r0, #0x40
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r0, #8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _02247150
	add r0, r5, #0
	bl ov107_02249580
	mov r1, #0
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x56
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0x36
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov107_02249BAC
	bl sub_02035E38
	cmp r0, #0
	beq _0224720E
	mov r0, #1
	mov r1, #0x10
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	bl sub_02039734
_0224720E:
	ldr r0, _0224721C ; =ov107_022472E8
	add r1, r5, #0
	bl sub_02017798
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224721C: .word ov107_022472E8
	thumb_func_end ov107_02246EE4

	thumb_func_start ov107_02247220
ov107_02247220: ; 0x02247220
	push {r4, lr}
	add r4, r0, #0
	bl ov107_02247320
	ldr r0, [r4, #0x4c]
	bl ov107_02247340
	mov r0, #0x64
	bl sub_02002F38
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	lsl r2, r1, #8
	mov r3, #0x64
	bl sub_02002F70
	mov r2, #5
	lsl r2, r2, #6
	ldr r0, [r4, r2]
	mov r1, #0
	add r2, #0xc0
	mov r3, #0x64
	bl sub_02002F70
	add r0, r4, #0
	mov r1, #3
	bl ov107_02247484
	bl ov107_022474F8
	add r0, r4, #0
	mov r1, #2
	bl ov107_0224752C
	bl ov107_02247574
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #4
	bl ov107_022475F0
	pop {r4, pc}
	thumb_func_end ov107_02247220

	thumb_func_start ov107_02247280
ov107_02247280: ; 0x02247280
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	add r2, r0, #0
	mov r1, #0xde
	mov r0, #0x56
	lsl r1, r1, #2
	lsl r0, r0, #2
	lsl r2, r2, #0x18
	ldr r1, [r4, r1]
	add r0, r4, r0
	lsr r2, r2, #0x18
	bl ov107_02249604
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02247280

	thumb_func_start ov107_022472A4
ov107_022472A4: ; 0x022472A4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov107_022472A4

	thumb_func_start ov107_022472E8
ov107_022472E8: ; 0x022472E8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022472FA
	bl sub_02003694
_022472FA:
	ldr r0, [r4, #0x4c]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _02247318 ; =0x027E0000
	ldr r1, _0224731C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02247318: .word 0x027E0000
_0224731C: .word 0x00003FF8
	thumb_func_end ov107_022472E8

	thumb_func_start ov107_02247320
ov107_02247320: ; 0x02247320
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0224733C ; =0x0224A1DC
	add r3, sp, #0
	mov r2, #5
_0224732A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224732A
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0224733C: .word 0x0224A1DC
	thumb_func_end ov107_02247320

	thumb_func_start ov107_02247340
ov107_02247340: ; 0x02247340
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _02247468 ; =0x0224A0BC
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0224746C ; =0x0224A0F0
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02247470 ; =0x0224A128
	add r3, sp, #0x54
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
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _02247474 ; =0x0224A144
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02247478 ; =0x0224A160
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r5, _0224747C ; =0x0224A10C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r1, _02247480 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x9c
	pop {r4, r5, pc}
	; .align 2, 0
_02247468: .word 0x0224A0BC
_0224746C: .word 0x0224A0F0
_02247470: .word 0x0224A128
_02247474: .word 0x0224A144
_02247478: .word 0x0224A160
_0224747C: .word 0x0224A10C
_02247480: .word 0x04000008
	thumb_func_end ov107_02247340

	thumb_func_start ov107_02247484
ov107_02247484: ; 0x02247484
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2c
	add r3, r4, #0
	bl sub_020070E8
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022474D6
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x28
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022474D6:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x29
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02247484

	thumb_func_start ov107_022474F8
ov107_022474F8: ; 0x022474F8
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0x96
	mov r1, #0x8a
	add r2, sp, #0
	mov r3, #0x64
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x80
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl sub_020C00B4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_022474F8

	thumb_func_start ov107_0224752C
ov107_0224752C: ; 0x0224752C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2c
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2a
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_0224752C

	thumb_func_start ov107_02247574
ov107_02247574: ; 0x02247574
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0x96
	mov r1, #0x8a
	add r2, sp, #0
	mov r3, #0x64
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x80
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl sub_020C00B4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02247574

	thumb_func_start ov107_022475A8
ov107_022475A8: ; 0x022475A8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2c
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2b
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022475A8

	thumb_func_start ov107_022475F0
ov107_022475F0: ; 0x022475F0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x7d
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x7e
	add r3, r4, #0
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xab
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022475F0

	thumb_func_start ov107_02247650
ov107_02247650: ; 0x02247650
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x28]
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrb r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrb r4, [r4, #0x1c]
	str r4, [sp, #0xc]
	add r4, sp, #0x38
	ldrb r4, [r4]
	str r4, [sp, #0x10]
	add r4, sp, #0x3c
	ldrb r4, [r4]
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	bl ov107_02247680
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02247650

	thumb_func_start ov107_02247680
ov107_02247680: ; 0x02247680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r1, r7, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_0200C388
	ldr r0, [sp, #0x40]
	cmp r0, #1
	beq _022476B6
	cmp r0, #2
	beq _022476C8
	b _022476D4
_022476B6:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r0, r0, #1
	sub r4, r4, r0
	b _022476D4
_022476C8:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	sub r4, r4, r0
_022476D4:
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r4, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r6, #0
	bl sub_0201D78C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02247680

	thumb_func_start ov107_02247714
ov107_02247714: ; 0x02247714
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x28]
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrb r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrb r4, [r4, #0x1c]
	str r4, [sp, #0xc]
	add r4, sp, #0x38
	ldrb r4, [r4]
	str r4, [sp, #0x10]
	add r4, sp, #0x3c
	ldrb r4, [r4]
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	bl ov107_02247744
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02247714

	thumb_func_start ov107_02247744
ov107_02247744: ; 0x02247744
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r1, r2, #0
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r4, r3, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_0200C388
	ldr r0, [sp, #0x38]
	cmp r0, #1
	beq _0224776E
	cmp r0, #2
	beq _02247780
	b _0224778C
_0224776E:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r0, r0, #1
	sub r4, r4, r0
	b _0224778C
_02247780:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	sub r4, r4, r0
_0224778C:
	ldr r0, [sp, #0x20]
	add r2, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r3, r4, #0
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x34
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r6, #0
	bl sub_0201D78C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02247744

	thumb_func_start ov107_022477CC
ov107_022477CC: ; 0x022477CC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r3, #1
	add r4, r1, #0
	str r3, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r5, r0, #0
	add r1, r5, #0
	str r2, [sp, #0x14]
	add r1, #0xc0
	add r2, r4, #0
	bl ov107_02247650
	add r5, #0xc0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_022477CC

	thumb_func_start ov107_02247804
ov107_02247804: ; 0x02247804
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B70C
	mov r3, #8
	str r3, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x30
	bl ov107_02247A14
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x31
	mov r3, #0x48
	bl ov107_02247A14
	add r0, r6, #0
	bl sub_02075BCC
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B6D8
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x32
	mov r3, #8
	bl ov107_02247A14
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x33
	mov r3, #0x48
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B6A0
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x34
	mov r3, #8
	bl ov107_02247A14
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x35
	mov r3, #0x48
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_022480EC
	mov r0, #0x38
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x36
	mov r3, #8
	bl ov107_02247A14
	mov r0, #0x38
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x37
	mov r3, #0x58
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_022480EC
	mov r2, #0x38
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x68
	bl ov107_02247A14
	mov r0, #0x38
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x39
	mov r3, #0xb8
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_022480EC
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3a
	mov r3, #8
	bl ov107_02247A14
	mov r0, #0x48
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3b
	mov r3, #0x58
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_022480EC
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3c
	mov r3, #0x68
	bl ov107_02247A14
	mov r0, #0x48
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3d
	mov r3, #0xb8
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_022480EC
	mov r0, #0x58
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3e
	mov r3, #8
	bl ov107_02247A14
	mov r3, #0x58
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3f
	bl ov107_02247A14
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02247804

	thumb_func_start ov107_02247A14
ov107_02247A14: ; 0x02247A14
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	mov r4, #0xff
	str r4, [sp, #4]
	mov r4, #1
	str r4, [sp, #8]
	mov r4, #2
	str r4, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0x18]
	bl ov107_02247744
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov107_02247A14

	thumb_func_start ov107_02247A3C
ov107_02247A3C: ; 0x02247A3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r4, r2, #0
	bl sub_0201ADA4
	mov r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	mov r0, #0x42
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x47
	bl ov107_02247AD0
	mov r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x37
	str r0, [sp, #8]
	mov r0, #0x3b
	str r0, [sp, #0xc]
	mov r0, #0x43
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x48
	bl ov107_02247AD0
	mov r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	mov r0, #0x3c
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	mov r3, #0x49
	bl ov107_02247AD0
	mov r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	mov r0, #0x45
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #3
	mov r3, #0x4a
	bl ov107_02247AD0
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov107_02247A3C

	thumb_func_start ov107_02247AD0
ov107_02247AD0: ; 0x02247AD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	mov r2, #0
	add r7, r3, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200B630
	mov r0, #0x18
	mul r0, r5
	add r0, #0xc
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0x20
	bl ov107_02247714
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r3, #3
	bl ov107_022480EC
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x40]
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r3, #3
	bl ov107_022480EC
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x91
	bl ov107_02247744
	strb r0, [r4, #0xa]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov107_02247AD0

	thumb_func_start ov107_02247B78
ov107_02247B78: ; 0x02247B78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02247B96
	mov r6, #0x24
	b _02247B98
_02247B96:
	mov r6, #4
_02247B98:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl FUN_0223B7DC
	mov r7, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _02247C58
	add r0, r6, #0
	str r0, [sp, #0x14]
	add r0, #0x18
	str r0, [sp, #0x14]
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
_02247BB8:
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, r7]
	cmp r0, #0
	bne _02247BDC
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_0201AE78
	b _02247C42
_02247BDC:
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	str r0, [sp, #0x18]
	bl sub_02074470
	str r4, [sp]
	add r1, r0, #0
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #3
	mov r3, #1
	bl sub_0200C5BC
	mov r0, #1
	str r0, [sp]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x14]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200C578
	ldr r0, [sp, #0x18]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #3
	mov r3, #0
	bl sub_0200C5BC
_02247C42:
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r0, #0x40
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r6, #0x40
	add r0, #0x40
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r7, r0
	blt _02247BB8
_02247C58:
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02247B78

	thumb_func_start ov107_02247C64
ov107_02247C64: ; 0x02247C64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r0, r1, #0
	mov r1, #0
	bl sub_0201ADA4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02247C84
	mov r4, #0x28
	mov r6, #0x50
	b _02247C88
_02247C84:
	mov r4, #8
	mov r6, #0x30
_02247C88:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl FUN_0223B7DC
	mov r7, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _02247CF8
_02247C98:
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #0xa1
	mov r2, #0
	str r0, [sp, #0x18]
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200C648
	ldr r0, [sp, #0x18]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	mov r1, #0
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov107_022481FC
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r4, #0x40
	add r6, #0x40
	cmp r7, r0
	blt _02247C98
_02247CF8:
	ldr r0, [sp, #0x10]
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02247C64

	thumb_func_start ov107_02247D04
ov107_02247D04: ; 0x02247D04
	push {r4, r5, r6, r7}
	mov r4, #0x12
	mov r6, #0
	lsl r4, r4, #4
	add r7, r0, #0
	add r3, r6, #0
	add r5, r4, #4
_02247D12:
	str r3, [r7, r4]
	str r3, [r7, r5]
	add r6, r6, #1
	add r7, #8
	cmp r6, #3
	blt _02247D12
	mov r4, #0x12
	lsl r4, r4, #4
	add r5, r4, #0
	add r6, r0, r4
	sub r5, #0x10
	str r6, [r0, r5]
	add r5, r4, #0
	sub r5, #0xc
	str r1, [r0, r5]
	add r1, r4, #0
	sub r1, #8
	strb r3, [r0, r1]
	mov r3, #1
	sub r1, r4, #7
	strb r3, [r0, r1]
	sub r1, r4, #6
	strb r2, [r0, r1]
	sub r1, r4, #5
	ldrb r2, [r0, r1]
	mov r1, #0xf
	bic r2, r1
	sub r1, r4, #5
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	mov r1, #0x30
	bic r2, r1
	sub r1, r4, #5
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r2, r1
	add r1, #0xdb
	strb r2, [r0, r1]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov107_02247D04

	thumb_func_start ov107_02247D68
ov107_02247D68: ; 0x02247D68
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r7, #0
	str r2, [sp]
	add r5, #0x30
	lsl r4, r6, #2
	ldr r0, [r7, #0x20]
	ldr r2, [r5, r4]
	add r1, r3, #0
	bl sub_0200B1B8
	lsl r0, r6, #3
	add r2, r7, r0
	mov r0, #0x12
	ldr r1, [r5, r4]
	lsl r0, r0, #4
	str r1, [r2, r0]
	add r1, r0, #4
	ldr r0, [sp]
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02247D68

	thumb_func_start ov107_02247D94
ov107_02247D94: ; 0x02247D94
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0x4c]
	add r1, #0xf0
	bl ov107_02249D84
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xf0
	mov r2, #2
	bl ov107_02247D04
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x1a
	bl ov107_02247D68
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x1b
	bl ov107_02247D68
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	mov r2, #0
	add r1, #0xac
	str r0, [sp, #4]
	add r0, r4, r1
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrb r1, [r4, #0xf]
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0xf]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov107_02247D94

	thumb_func_start ov107_02247DF0
ov107_02247DF0: ; 0x02247DF0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r4, #0x4c]
	add r1, r4, r1
	bl ov107_02249D84
	mov r1, #1
	lsl r1, r1, #8
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #3
	bl ov107_02247D04
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x16
	bl ov107_02247D68
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x17
	bl ov107_02247D68
	mov r1, #2
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x18
	bl ov107_02247D68
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	mov r2, #0
	add r1, #0xac
	str r0, [sp, #4]
	add r0, r4, r1
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrb r1, [r4, #0xf]
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0xf]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov107_02247DF0

	thumb_func_start ov107_02247E5C
ov107_02247E5C: ; 0x02247E5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0xa0
	bl ov107_02249D84
	add r0, r5, #0
	add r0, #0xa0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #4
	mov r1, #0x64
	bl sub_02013A04
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r4, _02247F08 ; =0x0224A1BC
	str r0, [r5, r1]
	mov r6, #0
	add r7, r1, #0
_02247E8A:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blo _02247E8A
	ldr r4, _02247F0C ; =0x0224A17C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, sp, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xa0
	str r0, [sp, #0xc]
	ldr r0, _02247F10 ; =ov107_02247F14
	str r5, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #4
	strh r0, [r3, #0x10]
	ldrb r4, [r3, #0x18]
	mov r1, #0xf
	bic r4, r1
	mov r1, #0xf
	orr r1, r4
	strb r1, [r3, #0x18]
	strh r0, [r3, #0x12]
	add r0, r2, #0
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	mov r3, #0x64
	bl sub_0200112C
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r1, [r5, #0xf]
	mov r0, #2
	orr r0, r1
	strb r0, [r5, #0xf]
	add r5, #0xa0
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247F08: .word 0x0224A1BC
_02247F0C: .word 0x0224A17C
_02247F10: .word ov107_02247F14
	thumb_func_end ov107_02247E5C

	thumb_func_start ov107_02247F14
ov107_02247F14: ; 0x02247F14
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	mov r1, #0x13
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02001504
	add r6, r0, #0
	cmp r4, #0
	bne _02247F2E
	ldr r0, _02247F64 ; =0x000005DC
	bl sub_02005748
_02247F2E:
	add r0, r5, #0
	add r1, sp, #0x18
	bl sub_020014D0
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r6, #0xe0
	str r3, [sp, #0x14]
	add r2, sp, #0x18
	ldrh r2, [r2]
	add r1, r6, #0
	lsl r4, r2, #2
	ldr r2, _02247F68 ; =0x0224A0CC
	ldr r2, [r2, r4]
	bl ov107_02247650
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02247F64: .word 0x000005DC
_02247F68: .word 0x0224A0CC
	thumb_func_end ov107_02247F14

	thumb_func_start ov107_02247F6C
ov107_02247F6C: ; 0x02247F6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0xb0
	bl ov107_02249D84
	add r0, r5, #0
	add r0, #0xb0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #4
	mov r1, #0x64
	bl sub_02013A04
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r4, _02248018 ; =0x0224A19C
	str r0, [r5, r1]
	mov r6, #0
	add r7, r1, #0
_02247F9A:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blo _02247F9A
	ldr r4, _0224801C ; =0x0224A17C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, sp, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xb0
	str r0, [sp, #0xc]
	ldr r0, _02248020 ; =ov107_02248028
	str r5, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, _02248024 ; =ov107_022480A0
	mov r1, #0xf
	str r0, [sp, #8]
	mov r0, #4
	strh r0, [r3, #0x10]
	ldrb r4, [r3, #0x18]
	bic r4, r1
	mov r1, #0xf
	orr r1, r4
	strb r1, [r3, #0x18]
	strh r0, [r3, #0x12]
	mov r1, #0
	add r0, r2, #0
	add r2, r1, #0
	mov r3, #0x64
	bl sub_0200112C
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r1, [r5, #0xf]
	mov r0, #2
	orr r0, r1
	strb r0, [r5, #0xf]
	add r5, #0xb0
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248018: .word 0x0224A19C
_0224801C: .word 0x0224A17C
_02248020: .word ov107_02248028
_02248024: .word ov107_022480A0
	thumb_func_end ov107_02247F6C

	thumb_func_start ov107_02248028
ov107_02248028: ; 0x02248028
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	mov r1, #0x13
	add r6, r0, #0
	add r5, r2, #0
	bl sub_02001504
	add r4, r0, #0
	cmp r5, #0
	bne _02248042
	ldr r0, _02248098 ; =0x000005DC
	bl sub_02005748
_02248042:
	add r0, r6, #0
	add r1, sp, #0x18
	bl sub_020014D0
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #2
	bl ov107_02249CAC
	cmp r0, #1
	beq _02248060
	mov r6, #1
	b _02248062
_02248060:
	mov r6, #0
_02248062:
	mov r5, #1
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	add r2, sp, #0x18
	ldrh r2, [r2]
	add r0, r4, #0
	add r4, #0xc0
	lsl r3, r2, #2
	ldr r2, _0224809C ; =0x0224A0AC
	add r1, r4, #0
	lsl r4, r6, #0x18
	add r2, r2, r3
	lsr r4, r4, #0x17
	ldrh r2, [r4, r2]
	add r3, r5, #0
	bl ov107_02247650
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02248098: .word 0x000005DC
_0224809C: .word 0x0224A0AC
	thumb_func_end ov107_02248028

	thumb_func_start ov107_022480A0
ov107_022480A0: ; 0x022480A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x13
	add r5, r0, #0
	bl sub_02001504
	add r1, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r1, [r1, #9]
	mov r2, #2
	bl ov107_02249CAC
	cmp r4, #4
	beq _022480C6
	cmp r4, #5
	beq _022480D2
	b _022480DE
_022480C6:
	cmp r0, #1
	bne _022480CE
	mov r1, #2
	b _022480E0
_022480CE:
	mov r1, #1
	b _022480E0
_022480D2:
	cmp r0, #2
	bne _022480DA
	mov r1, #2
	b _022480E0
_022480DA:
	mov r1, #1
	b _022480E0
_022480DE:
	mov r1, #1
_022480E0:
	add r0, r5, #0
	mov r2, #0xf
	mov r3, #2
	bl sub_020013D8
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022480A0

	thumb_func_start ov107_022480EC
ov107_022480EC: ; 0x022480EC
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r0, [r0, #0x24]
	bl sub_0200B60C
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_022480EC

	thumb_func_start ov107_02248104
ov107_02248104: ; 0x02248104
	ldr r3, _0224810C ; =sub_0200B538
	ldr r0, [r0, #0x24]
	bx r3
	nop
_0224810C: .word sub_0200B538
	thumb_func_end ov107_02248104

	thumb_func_start ov107_02248110
ov107_02248110: ; 0x02248110
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	bl sub_0200B498
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02248110

	thumb_func_start ov107_0224812C
ov107_0224812C: ; 0x0224812C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	str r2, [sp, #0x10]
	add r5, r3, #0
	bl sub_02025E38
	add r6, r0, #0
	mov r0, #8
	mov r1, #0x64
	bl sub_02023790
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023D28
	add r0, r6, #0
	bl sub_02025F30
	cmp r0, #0
	bne _02248168
	ldr r1, _02248190 ; =0x00070800
	b _0224816C
_02248168:
	mov r1, #0xc1
	lsl r1, r1, #0xa
_0224816C:
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02248190: .word 0x00070800
	thumb_func_end ov107_0224812C

	thumb_func_start ov107_02248194
ov107_02248194: ; 0x02248194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #0x18]
	add r6, r3, #0
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	str r0, [sp, #0x1c]
	bl sub_02025F30
	cmp r0, #0
	bne _022481BA
	ldr r4, _022481F8 ; =0x00070800
	b _022481BE
_022481BA:
	mov r4, #0xc1
	lsl r4, r4, #0xa
_022481BE:
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #0x1c]
	mov r1, #0
	bl sub_0200B498
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	lsr r0, r4, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsr r0, r4, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov107_02247714
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022481F8: .word 0x00070800
	thumb_func_end ov107_02248194

	thumb_func_start ov107_022481FC
ov107_022481FC: ; 0x022481FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r2, #0
	add r2, r3, #0
	add r3, sp, #0x20
	ldrb r3, [r3, #0x14]
	cmp r3, #0
	bne _02248216
	mov r3, #0x40
	mov r4, #7
	mov r5, #8
	mov r6, #0
	b _02248222
_02248216:
	cmp r3, #1
	bne _0224823C
	mov r3, #0x41
	mov r4, #3
	mov r5, #4
	mov r6, #0
_02248222:
	str r2, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	add r2, sp, #0x20
	ldrb r2, [r2, #0x10]
	str r2, [sp, #0x14]
	add r2, r3, #0
	add r3, r7, #0
	bl ov107_02247714
_0224823C:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022481FC

	thumb_func_start ov107_02248240
ov107_02248240: ; 0x02248240
	push {r3, r4, lr}
	sub sp, #0x1c
	mov r2, #5
	str r2, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r4, r0, #0
	add r1, r4, #0
	str r3, [sp, #0x18]
	add r1, #0x60
	mov r3, #0x10
	bl ov107_02247680
	strb r0, [r4, #0xa]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	bl ov107_02249DBC
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xd0
	mov r2, #4
	str r3, [sp, #0x14]
	bl ov107_02247650
	strb r0, [r4, #0xa]
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov107_02248240

	thumb_func_start ov107_022482A4
ov107_022482A4: ; 0x022482A4
	ldr r3, _022482AC ; =ov107_02248860
	add r0, #0xd0
	bx r3
	nop
_022482AC: .word ov107_02248860
	thumb_func_end ov107_022482A4

	thumb_func_start ov107_022482B0
ov107_022482B0: ; 0x022482B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xe0
	bl ov107_02249DBC
	mov r0, #0
	strh r0, [r4, #0x18]
	add r0, r4, #0
	bl ov107_02247E5C
	pop {r4, pc}
	thumb_func_end ov107_022482B0

	thumb_func_start ov107_022482D4
ov107_022482D4: ; 0x022482D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r2, #0x1e
	bl sub_020014DC
	add r0, r4, #0
	add r0, #0xe0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_02249258
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_022482D4

	thumb_func_start ov107_022482FC
ov107_022482FC: ; 0x022482FC
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02249DBC
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #0x25
	bl ov107_02247650
	strb r0, [r4, #0xa]
	mov r0, #0
	strh r0, [r4, #0x18]
	add r0, r4, #0
	bl ov107_02247F6C
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_022482FC

	thumb_func_start ov107_02248348
ov107_02248348: ; 0x02248348
	ldr r3, _0224834C ; =ov107_02249258
	bx r3
	; .align 2, 0
_0224834C: .word ov107_02249258
	thumb_func_end ov107_02248348

	thumb_func_start ov107_02248350
ov107_02248350: ; 0x02248350
	mov r3, #0
	strb r3, [r0, #8]
	str r2, [r1, #0]
	bx lr
	thumb_func_end ov107_02248350

	thumb_func_start ov107_02248358
ov107_02248358: ; 0x02248358
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	mov r4, #0
	bl ov107_02249C98
	ldr r1, _022483EC ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	tst r1, r2
	beq _0224838A
	ldrb r2, [r5, #0xd]
	ldrb r1, [r5, #0x15]
	cmp r2, r1
	beq _022483EA
	cmp r0, #0
	bne _02248384
	ldrb r1, [r5, #0x14]
	sub r1, r1, #1
	add r1, r2, r1
	b _02248386
_02248384:
	sub r1, r2, #1
_02248386:
	strb r1, [r5, #0xd]
	mov r4, #1
_0224838A:
	ldr r1, _022483EC ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x10
	tst r1, r2
	beq _022483AE
	ldrb r2, [r5, #0xd]
	ldrb r1, [r5, #0x15]
	cmp r2, r1
	beq _022483EA
	ldrb r1, [r5, #0x14]
	sub r1, r1, #1
	cmp r0, r1
	bne _022483A8
	sub r0, r2, r1
	b _022483AA
_022483A8:
	add r0, r2, #1
_022483AA:
	strb r0, [r5, #0xd]
	mov r4, #1
_022483AE:
	ldr r0, _022483EC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x40
	tst r0, r1
	beq _022483C6
	ldrb r1, [r5, #0xd]
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	blo _022483EA
	ldrb r0, [r5, #0xc]
	mov r4, #1
	strb r0, [r5, #0xd]
_022483C6:
	ldr r0, _022483EC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x80
	tst r0, r1
	beq _022483E0
	ldrb r1, [r5, #0xd]
	ldrb r0, [r5, #0x15]
	cmp r1, r0
	bhs _022483EA
	strb r1, [r5, #0xc]
	ldrb r0, [r5, #0x15]
	mov r4, #1
	strb r0, [r5, #0xd]
_022483E0:
	cmp r4, #1
	bne _022483EA
	add r0, r5, #0
	bl ov107_022483F0
_022483EA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022483EC: .word 0x021BF67C
	thumb_func_end ov107_02248358

	thumb_func_start ov107_022483F0
ov107_022483F0: ; 0x022483F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224841C ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _0224840E
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #0x16
	bl ov107_02248874
_0224840E:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #0
	bl ov107_02248420
	pop {r4, pc}
	nop
_0224841C: .word 0x000005DC
	thumb_func_end ov107_022483F0

	thumb_func_start ov107_02248420
ov107_02248420: ; 0x02248420
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	cmp r2, #0
	bne _02248438
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r2, #1
	mov r1, #0
	b _02248442
_02248438:
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r2, #2
	mov r1, #0x11
_02248442:
	ldrb r0, [r5, #0x15]
	cmp r6, r0
	blo _0224845C
	add r0, r4, #0
	bl ov107_02249BEC
	add r0, r4, #0
	mov r1, #0xe0
	mov r2, #0xa0
	bl ov107_02249BB8
	add sp, #8
	pop {r4, r5, r6, pc}
_0224845C:
	add r0, r4, #0
	add r1, r2, #0
	bl ov107_02249BEC
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	add r3, r6, #0
	bl ov107_02248488
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov107_02249BB8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_02248420

	thumb_func_start ov107_02248488
ov107_02248488: ; 0x02248488
	push {r4, r5, r6, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl FUN_0223BA14
	cmp r0, #1
	bne _022484BE
	cmp r4, #0
	bne _022484A4
	mov r0, #0x28
	str r0, [r5, #0]
	b _022484D6
_022484A4:
	cmp r4, #1
	bne _022484AE
	mov r0, #0x68
	str r0, [r5, #0]
	b _022484D6
_022484AE:
	cmp r4, #2
	bne _022484B8
	mov r0, #0xa8
	str r0, [r5, #0]
	b _022484D6
_022484B8:
	mov r0, #0xe8
	str r0, [r5, #0]
	b _022484D6
_022484BE:
	cmp r4, #0
	bne _022484C8
	mov r0, #0x48
	str r0, [r5, #0]
	b _022484D6
_022484C8:
	cmp r4, #1
	bne _022484D2
	mov r0, #0x88
	str r0, [r5, #0]
	b _022484D6
_022484D2:
	mov r0, #0xc8
	str r0, [r5, #0]
_022484D6:
	mov r0, #0x58
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02248488

	thumb_func_start ov107_022484DC
ov107_022484DC: ; 0x022484DC
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x18]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022484FE
	mov r0, #0x20
	strh r0, [r5]
	mov r0, #0
	strh r0, [r6]
	strh r0, [r7]
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_022484FE:
	mov r1, #0
	strh r1, [r5]
	strh r1, [r6]
	mov r0, #0x78
	strh r0, [r7]
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022484DC

	thumb_func_start ov107_0224850C
ov107_0224850C: ; 0x0224850C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r7, r1, #0
	add r5, r2, #0
	bl ov107_02249C98
	add r6, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0207A0FC
	cmp r5, #5
	bls _02248530
	b _02248666
_02248530:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224853C: ; jump table
	.short _02248548 - _0224853C - 2 ; case 0
	.short _02248556 - _0224853C - 2 ; case 1
	.short _02248666 - _0224853C - 2 ; case 2
	.short _022485DC - _0224853C - 2 ; case 3
	.short _0224861A - _0224853C - 2 ; case 4
	.short _02248658 - _0224853C - 2 ; case 5
_02248548:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02248556:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _022485AE
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x12]
	cmp r0, #1
	bne _02248572
	mov r5, #9
	b _02248574
_02248572:
	mov r5, #0xa
_02248574:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02248582
	mov r1, #0x50
	b _02248584
_02248582:
	mov r1, #0x30
_02248584:
	lsl r0, r6, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	str r5, [sp]
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x32
	str r0, [sp, #8]
	mov r0, #0x56
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0xc9
	lsl r1, r1, #2
	str r0, [r4, r1]
_022485AE:
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249C40
	cmp r0, #0
	bne _02248666
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	mov r0, #0xc9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022485DC:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224860C
	ldr r0, _0224866C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02248666
	ldr r0, _02248670 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r1, r7, #0
	bl ov107_02248A2C
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224860C:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224861A:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224864A
	ldr r0, _0224866C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02248666
	ldr r0, _02248670 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r1, r7, #0
	bl ov107_02248AF0
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224864A:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02248658:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02248666:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224866C: .word 0x021BF67C
_02248670: .word 0x000005DC
	thumb_func_end ov107_0224850C

	thumb_func_start ov107_02248674
ov107_02248674: ; 0x02248674
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r7, r1, #0
	add r6, r2, #0
	ldrb r5, [r4, #0x15]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	cmp r6, #5
	bhi _0224876C
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022486A0: ; jump table
	.short _022486AC - _022486A0 - 2 ; case 0
	.short _022486AC - _022486A0 - 2 ; case 1
	.short _0224876C - _022486A0 - 2 ; case 2
	.short _022486B8 - _022486A0 - 2 ; case 3
	.short _02248712 - _022486A0 - 2 ; case 4
	.short _022486AC - _022486A0 - 2 ; case 5
_022486AC:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022486B8:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _022486EC
	bl sub_0203608C
	cmp r0, #0
	ldrb r0, [r4, #0x11]
	bne _022486DC
	cmp r0, r5
	blo _022486EC
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022486DC:
	cmp r0, r5
	bhs _022486EC
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022486EC:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _0224876C
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x18
	orr r0, r1
	strb r0, [r4, #0xf]
	add r0, r4, #0
	add r1, r7, #0
	bl ov107_02248A2C
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248712:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02248746
	bl sub_0203608C
	cmp r0, #0
	ldrb r0, [r4, #0x11]
	bne _02248736
	cmp r0, r5
	blo _02248746
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248736:
	cmp r0, r5
	bhs _02248746
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248746:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _0224876C
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x18
	orr r0, r1
	strb r0, [r4, #0xf]
	add r0, r4, #0
	add r1, r7, #0
	bl ov107_02248AF0
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224876C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02248674

	thumb_func_start ov107_02248770
ov107_02248770: ; 0x02248770
	cmp r0, #1
	bne _02248778
	mov r0, #1
	bx lr
_02248778:
	mov r0, #0xf
	bx lr
	thumb_func_end ov107_02248770

	thumb_func_start ov107_0224877C
ov107_0224877C: ; 0x0224877C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrb r3, [r4, #0xd]
	mov r5, #0x37
	lsl r5, r5, #4
	lsl r0, r3, #0x18
	asr r2, r0, #0x18
	mov r0, #0
_0224878C:
	add r2, r2, r1
	lsl r2, r2, #0x18
	asr r2, r2, #0x18
	bpl _0224879E
	ldrb r2, [r4, #0x14]
	sub r2, r2, #1
	lsl r2, r2, #0x18
	asr r2, r2, #0x18
	b _022487A6
_0224879E:
	ldrb r6, [r4, #0x14]
	cmp r2, r6
	blt _022487A6
	add r2, r0, #0
_022487A6:
	cmp r2, r3
	beq _022487DA
	ldr r6, [r4, r5]
	ldrb r6, [r6, r2]
	cmp r6, #1
	bne _0224878C
	strb r2, [r4, #0xd]
	add r0, r4, #0
	bl ov107_022483F0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov107_02247804
_022487DA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_0224877C

	thumb_func_start ov107_022487DC
ov107_022487DC: ; 0x022487DC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrb r3, [r4, #0xd]
	mov r5, #0xdd
	lsl r5, r5, #2
	lsl r0, r3, #0x18
	asr r2, r0, #0x18
	mov r0, #0
_022487EC:
	add r2, r2, r1
	lsl r2, r2, #0x18
	asr r2, r2, #0x18
	bpl _022487FE
	ldrb r2, [r4, #0x14]
	sub r2, r2, #1
	lsl r2, r2, #0x18
	asr r2, r2, #0x18
	b _02248806
_022487FE:
	ldrb r6, [r4, #0x14]
	cmp r2, r6
	blt _02248806
	add r2, r0, #0
_02248806:
	cmp r2, r3
	beq _0224883A
	ldr r6, [r4, r5]
	ldrb r6, [r6, r2]
	cmp r6, #1
	bne _022487EC
	strb r2, [r4, #0xd]
	add r0, r4, #0
	bl ov107_022483F0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov107_02247A3C
_0224883A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_022487DC

	thumb_func_start ov107_0224883C
ov107_0224883C: ; 0x0224883C
	push {r4, lr}
	add r4, r0, #0
	bl ov107_02248BB4
	add r0, r4, #0
	bl ov107_02249258
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	pop {r4, pc}
	thumb_func_end ov107_0224883C

	thumb_func_start ov107_02248860
ov107_02248860: ; 0x02248860
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_0201AD10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02248860

	thumb_func_start ov107_02248874
ov107_02248874: ; 0x02248874
	push {r3, r4, r5, lr}
	add r3, r1, #0
	sub r3, #0x14
	add r5, r0, #0
	cmp r3, #3
	bhi _022488B2
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0224888C: ; jump table
	.short _02248894 - _0224888C - 2 ; case 0
	.short _0224889C - _0224888C - 2 ; case 1
	.short _022488A4 - _0224888C - 2 ; case 2
	.short _022488AC - _0224888C - 2 ; case 3
_02248894:
	mov r4, #0x35
	bl ov107_022488CC
	b _022488B2
_0224889C:
	mov r4, #0x36
	bl ov107_02248940
	b _022488B2
_022488A4:
	mov r4, #0x37
	bl ov107_022489D0
	b _022488B2
_022488AC:
	mov r4, #0x38
	bl ov107_02248A04
_022488B2:
	mov r1, #0xe
	lsl r1, r1, #6
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _022488C8
	mov r0, #1
	pop {r3, r4, r5, pc}
_022488C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02248874

	thumb_func_start ov107_022488CC
ov107_022488CC: ; 0x022488CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r4, r1, #0
	bl sub_02025E38
	mov r1, #0xe
	lsl r1, r1, #6
	strh r4, [r6, r1]
	bl sub_02025F30
	ldr r1, _0224890C ; =0x00000382
	mov r4, #0
	strh r0, [r6, r1]
	add r5, r6, #4
	sub r7, r1, #2
_022488F0:
	mov r0, #0x53
	lsl r0, r0, #2
	lsl r2, r4, #0x18
	ldrb r1, [r6, #9]
	ldr r0, [r6, r0]
	lsr r2, r2, #0x18
	bl ov107_02249CAC
	strh r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _022488F0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224890C: .word 0x00000382
	thumb_func_end ov107_022488CC

	thumb_func_start ov107_02248910
ov107_02248910: ; 0x02248910
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x17]
	add r6, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0x17]
	bl sub_0203608C
	cmp r5, r0
	beq _0224893A
	ldr r0, _0224893C ; =0x000003D3
	mov r3, #0
	add r5, r6, #4
_0224892C:
	ldrh r2, [r5]
	add r1, r4, r3
	add r3, r3, #1
	add r5, r5, #2
	strb r2, [r1, r0]
	cmp r3, #3
	blt _0224892C
_0224893A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224893C: .word 0x000003D3
	thumb_func_end ov107_02248910

	thumb_func_start ov107_02248940
ov107_02248940: ; 0x02248940
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xe
	lsl r0, r0, #6
	strh r1, [r5, r0]
	add r4, r2, #0
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _02248960
	ldrb r0, [r5, #0x11]
	cmp r0, #0xff
	bne _02248960
	strb r4, [r5, #0x11]
_02248960:
	ldrb r1, [r5, #0x11]
	mov r0, #0xe1
	lsl r0, r0, #2
	strh r1, [r5, r0]
	ldrb r2, [r5, #0x12]
	add r1, r0, #4
	add r0, r0, #6
	strh r2, [r5, r1]
	ldrb r1, [r5, #0x13]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02248940

	thumb_func_start ov107_02248978
ov107_02248978: ; 0x02248978
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #0x17]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0x17]
	bl sub_0203608C
	cmp r6, r0
	beq _022489C8
	ldrh r1, [r5, #2]
	ldr r0, _022489CC ; =0x000003D1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _022489BC
	ldrb r0, [r4, #0x11]
	cmp r0, #0xff
	ldr r0, _022489CC ; =0x000003D1
	beq _022489AA
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022489AA:
	ldrb r1, [r4, r0]
	ldrb r0, [r4, #0x15]
	add r0, r1, r0
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #8]
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
	pop {r4, r5, r6, pc}
_022489BC:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #8]
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
_022489C8:
	pop {r4, r5, r6, pc}
	nop
_022489CC: .word 0x000003D1
	thumb_func_end ov107_02248978

	thumb_func_start ov107_022489D0
ov107_022489D0: ; 0x022489D0
	mov r2, #0xe
	lsl r2, r2, #6
	strh r1, [r0, r2]
	ldrb r3, [r0, #0xd]
	add r1, r2, #2
	strh r3, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov107_022489D0

	thumb_func_start ov107_022489E0
ov107_022489E0: ; 0x022489E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r5, r0
	beq _02248A02
	ldrh r0, [r6, #2]
	mov r1, #0x3d
	lsl r1, r1, #4
	strb r0, [r4, r1]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl ov107_02248420
_02248A02:
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_022489E0

	thumb_func_start ov107_02248A04
ov107_02248A04: ; 0x02248A04
	mov r1, #0xe
	mov r2, #1
	lsl r1, r1, #6
	strh r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov107_02248A04

	thumb_func_start ov107_02248A10
ov107_02248A10: ; 0x02248A10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0203608C
	cmp r5, r0
	beq _02248A26
	ldrh r1, [r4]
	ldr r0, _02248A28 ; =0x000003D2
	strb r1, [r6, r0]
_02248A26:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02248A28: .word 0x000003D2
	thumb_func_end ov107_02248A10

	thumb_func_start ov107_02248A2C
ov107_02248A2C: ; 0x02248A2C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #2
	bl ov107_0224752C
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	add r0, #0xc0
	bl sub_0201AD10
	ldrb r0, [r4, #0x14]
	add r1, r5, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov107_02247804
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02248A2C

	thumb_func_start ov107_02248A74
ov107_02248A74: ; 0x02248A74
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	bl ov107_02249C98
	mov r1, #0x37
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #1
	strb r2, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02248A74

	thumb_func_start ov107_02248A8C
ov107_02248A8C: ; 0x02248A8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02249DBC
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov107_02248104
	add r0, r5, #0
	mov r1, #0x2f
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_02248A74
	add r0, r5, #0
	bl ov107_02249580
	ldr r0, _02248AEC ; =0x00000624
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_02248AEC: .word 0x00000624
	thumb_func_end ov107_02248A8C

	thumb_func_start ov107_02248AF0
ov107_02248AF0: ; 0x02248AF0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #2
	bl ov107_022475A8
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	add r0, #0xc0
	bl sub_0201AD10
	ldrb r0, [r4, #0x14]
	add r1, r5, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov107_02247A3C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02248AF0

	thumb_func_start ov107_02248B38
ov107_02248B38: ; 0x02248B38
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	bl ov107_02249C98
	mov r1, #0xdd
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r2, #1
	strb r2, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02248B38

	thumb_func_start ov107_02248B50
ov107_02248B50: ; 0x02248B50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02249DBC
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov107_02248104
	add r0, r5, #0
	mov r1, #0x46
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_02248B38
	add r0, r5, #0
	bl ov107_02249580
	ldr r0, _02248BB0 ; =0x00000624
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_02248BB0: .word 0x00000624
	thumb_func_end ov107_02248B50

	thumb_func_start ov107_02248BB4
ov107_02248BB4: ; 0x02248BB4
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02248BEA
	mov r0, #4
	bic r1, r0
	mov r0, #0x47
	strb r1, [r4, #0xf]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201AD10
_02248BEA:
	pop {r4, pc}
	thumb_func_end ov107_02248BB4

	thumb_func_start ov107_02248BEC
ov107_02248BEC: ; 0x02248BEC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r4, #0xc0
	add r1, r0, #0
	add r0, r4, #0
	bl ov107_02249DBC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02248BEC

	thumb_func_start ov107_02248C08
ov107_02248C08: ; 0x02248C08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r1, sp, #0x28
	str r1, [sp]
	add r1, sp, #0x2c
	add r3, sp, #0x28
	add r5, r0, #0
	add r1, #2
	add r2, sp, #0x2c
	add r3, #2
	bl ov107_022484DC
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02248CA2
	add r1, sp, #0x28
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	ldrb r0, [r5, #9]
	bl sub_0205E630
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x1c]
	bl sub_02030698
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl ov107_022480EC
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	strb r0, [r5, #0xa]
	b _02248E46
_02248CA2:
	bl sub_0203608C
	cmp r0, #0
	add r1, sp, #0x28
	bne _02248D7A
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	ldrb r0, [r5, #9]
	bl sub_0205E630
	str r0, [sp, #0x20]
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	bl sub_02030698
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl ov107_022480EC
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	add r1, sp, #0x28
	strb r0, [r5, #0xa]
	ldrh r0, [r1, #2]
	ldrh r6, [r1]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	mov r0, #1
	str r0, [sp]
	ldr r2, _02248E50 ; =0x000003D6
	add r0, r5, #0
	ldrh r2, [r5, r2]
	mov r1, #0
	mov r3, #4
	bl ov107_022480EC
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	strb r0, [r5, #0xa]
	b _02248E46
_02248D7A:
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	mov r0, #1
	str r0, [sp]
	ldr r2, _02248E50 ; =0x000003D6
	add r0, r5, #0
	ldrh r2, [r5, r2]
	mov r1, #0
	mov r3, #4
	bl ov107_022480EC
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	add r1, sp, #0x28
	strb r0, [r5, #0xa]
	ldrh r0, [r1, #2]
	ldrh r6, [r1]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	ldrb r0, [r5, #9]
	bl sub_0205E630
	str r0, [sp, #0x24]
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	bl sub_02030698
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl ov107_022480EC
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	strb r0, [r5, #0xa]
_02248E46:
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248E50: .word 0x000003D6
	thumb_func_end ov107_02248C08

	thumb_func_start ov107_02248E54
ov107_02248E54: ; 0x02248E54
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov107_02248770
	add r2, r0, #0
	mov r1, #0
	add r0, r5, #0
	mov r3, #4
	str r1, [sp]
	bl ov107_022480EC
	add r0, r5, #0
	mov r1, #0x19
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	add r0, r5, #0
	bl ov107_02247D94
	strb r4, [r5, #0xe]
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02248E54

	thumb_func_start ov107_02248E84
ov107_02248E84: ; 0x02248E84
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	add r5, r0, #0
	add r1, #2
	add r2, sp, #8
	add r3, #2
	bl ov107_022484DC
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02248EBC
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #6]
	ldrh r3, [r3, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_0224812C
	b _02248F0C
_02248EBC:
	bl sub_0203608C
	cmp r0, #0
	add r0, sp, #4
	bne _02248EEA
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #4]
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	bl ov107_0224812C
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_02248194
	b _02248F0C
_02248EEA:
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #4]
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	bl ov107_02248194
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_0224812C
_02248F0C:
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02248E84

	thumb_func_start ov107_02248F18
ov107_02248F18: ; 0x02248F18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0224901C ; =0x000005E3
	add r7, r1, #0
	add r6, r2, #0
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	add r1, r7, #0
	str r0, [sp]
	bl ov107_02249C9C
	str r0, [sp, #4]
	cmp r6, #4
	bhi _02248F62
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248F44: ; jump table
	.short _02248F4E - _02248F44 - 2 ; case 0
	.short _02248F52 - _02248F44 - 2 ; case 1
	.short _02248F62 - _02248F44 - 2 ; case 2
	.short _02248F5C - _02248F44 - 2 ; case 3
	.short _02248F60 - _02248F44 - 2 ; case 4
_02248F4E:
	mov r5, #1
	b _02248F62
_02248F52:
	ldrb r0, [r4, #0x12]
	bl ov107_02248770
	add r5, r0, #0
	b _02248F62
_02248F5C:
	mov r5, #2
	b _02248F62
_02248F60:
	mov r5, #5
_02248F62:
	bl sub_0203608C
	cmp r0, #0
	bne _02248F96
	ldr r0, [sp]
	cmp r7, r0
	bhs _02248F84
	add r0, r4, #0
	mov r1, #5
	bl ov107_02248110
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r5, #0
	bl FUN_0223BC2C
	b _02248FC0
_02248F84:
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r0, _02249020 ; =0x000003D6
	ldrh r1, [r4, r0]
	sub r1, r1, r5
	strh r1, [r4, r0]
	b _02248FC0
_02248F96:
	ldr r0, [sp]
	cmp r7, r0
	bhs _02248FAE
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r0, _02249020 ; =0x000003D6
	ldrh r1, [r4, r0]
	sub r1, r1, r5
	strh r1, [r4, r0]
	b _02248FC0
_02248FAE:
	add r0, r4, #0
	mov r1, #5
	bl ov107_02248110
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r5, #0
	bl FUN_0223BC2C
_02248FC0:
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov107_02248C08
	add r0, r4, #0
	bl ov107_02248BB4
	cmp r6, #4
	bhi _02249018
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248FE0: ; jump table
	.short _02248FEA - _02248FE0 - 2 ; case 0
	.short _02248FF6 - _02248FE0 - 2 ; case 1
	.short _02249018 - _02248FE0 - 2 ; case 2
	.short _02249004 - _02248FE0 - 2 ; case 3
	.short _02249010 - _02248FE0 - 2 ; case 4
_02248FEA:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov107_02249024
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02248FF6:
	ldrb r2, [r4, #0x12]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov107_022490E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02249004:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov107_02248A8C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02249010:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov107_02248B50
_02249018:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224901C: .word 0x000005E3
_02249020: .word 0x000003D6
	thumb_func_end ov107_02248F18

	thumb_func_start ov107_02249024
ov107_02249024: ; 0x02249024
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	add r4, r1, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r6, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02249DBC
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov107_02248104
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	mov r1, #0xda
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #1
	strb r2, [r1, r0]
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov107_02249BAC
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov107_02249BAC
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x80
	bl ov107_02247B78
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x70
	bl ov107_02247C64
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov107_02249BAC
	ldr r0, _022490E4 ; =0x00000624
	bl sub_02005748
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022490E4: .word 0x00000624
	thumb_func_end ov107_02249024

	thumb_func_start ov107_022490E8
ov107_022490E8: ; 0x022490E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02249DBC
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r4, r0, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov107_02248104
	cmp r7, #1
	bne _02249140
	add r0, r5, #0
	mov r1, #0x1f
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	ldr r0, _02249230 ; =0x00000633
	bl sub_02005748
	b _02249152
_02249140:
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	ldr r0, _02249234 ; =0x00000634
	bl sub_02005748
_02249152:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	ldrb r0, [r5, #0x14]
	bne _02249178
	add r1, r6, #0
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	strb r7, [r1, r0]
	b _02249188
_02249178:
	add r1, r6, #0
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0
	strb r2, [r1, r0]
_02249188:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022491C0
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x32
	bl sub_02075AD0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	b _0224921A
_022491C0:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _022491F8
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x37
	bl sub_02075AD0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	b _0224921A
_022491F8:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x2d
	bl sub_02075AD0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
_0224921A:
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x80
	bl ov107_02247B78
	add r0, r5, #0
	add r5, #0x70
	add r1, r5, #0
	bl ov107_02247C64
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249230: .word 0x00000633
_02249234: .word 0x00000634
	thumb_func_end ov107_022490E8

	thumb_func_start ov107_02249238
ov107_02249238: ; 0x02249238
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x90
	mov r1, #0
	bl sub_0201ADA4
	add r4, #0x90
	add r0, r4, #0
	bl sub_0201ACF4
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02249238

	thumb_func_start ov107_02249258
ov107_02249258: ; 0x02249258
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022492A6
	mov r0, #2
	bic r1, r0
	mov r0, #0x4e
	strb r1, [r4, #0xf]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x12
	bl sub_02001504
	add r5, r0, #0
	mov r1, #1
	bl sub_0200DC9C
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201AD10
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x4e
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02001384
_022492A6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02249258

	thumb_func_start ov107_022492A8
ov107_022492A8: ; 0x022492A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldrb r0, [r6, #9]
	mov r1, #1
	bl FUN_0223B7A8
	mov r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _02249338
	add r5, r6, #0
_022492C0:
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #4]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r0, r7, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl FUN_0222E240
	add r1, r0, #0
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224932E
	bl ov107_02249C1C
	ldrb r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	bl ov107_02249C98
	cmp r4, r0
	bne _02249314
	ldrb r1, [r6, #0xd]
	ldrb r0, [r6, #0x15]
	cmp r1, r0
	blo _02249322
_02249314:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov107_02249C28
	b _0224932E
_02249322:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov107_02249C28
_0224932E:
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _022492C0
_02249338:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022492A8

	thumb_func_start ov107_0224933C
ov107_0224933C: ; 0x0224933C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov107_02248BB4
	ldrb r0, [r5, #9]
	bl sub_0205E630
	add r7, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl sub_02030698
	cmp r0, r4
	bhs _02249382
	add r0, r5, #0
	bl ov107_02248BEC
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	mov r0, #0xf
	strb r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02249382:
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022493C6
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02248860
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	add r2, r4, #0
	bl FUN_0223BC2C
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	bl ov107_02248C08
	cmp r4, #2
	bne _022493B6
	ldrb r1, [r5, #0xd]
	add r0, r5, #0
	bl ov107_02248A8C
	b _022493BE
_022493B6:
	ldrb r1, [r5, #0xd]
	add r0, r5, #0
	bl ov107_02248B50
_022493BE:
	mov r0, #0xc
	strb r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022493C6:
	mov r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_0224933C

	thumb_func_start ov107_022493CC
ov107_022493CC: ; 0x022493CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	mov r1, #0
	add r7, r2, #0
	bl FUN_0223B7A8
	cmp r7, #5
	bne _022493E6
	mov r6, #2
	b _022493EA
_022493E6:
	bl sub_02022974
_022493EA:
	ldrb r7, [r5, #0x15]
	add r1, r4, #0
	add r0, r7, #0
	bl ov107_02249C9C
	bl sub_0203608C
	cmp r0, #0
	bne _0224949A
	cmp r4, r7
	bhs _0224947A
	add r0, r5, #0
	mov r1, #5
	bl ov107_02248110
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov107_02249CAC
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	mov r2, #0x32
	bl FUN_0223BC2C
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov107_02249CAC
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203068C
	add r7, r0, #0
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205E5B4
	str r0, [sp]
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r3, r4, #1
	lsl r3, r3, #0x10
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	lsr r3, r3, #0x10
	bl sub_020306E4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02249536
	ldrb r1, [r5, #0xf]
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0xf]
	b _02249536
_0224947A:
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r1, _02249578 ; =0x000003D3
	add r2, r1, #3
	add r0, r5, r1
	ldrh r2, [r5, r2]
	ldrb r4, [r0, r6]
	add r1, r1, #3
	sub r2, #0x32
	strh r2, [r5, r1]
	ldrb r1, [r0, r6]
	add r1, r1, #1
	strb r1, [r0, r6]
	b _02249536
_0224949A:
	cmp r4, r7
	bhs _022494BE
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r1, _02249578 ; =0x000003D3
	add r2, r1, #3
	add r0, r5, r1
	ldrh r2, [r5, r2]
	ldrb r4, [r0, r6]
	add r1, r1, #3
	sub r2, #0x32
	strh r2, [r5, r1]
	ldrb r1, [r0, r6]
	add r1, r1, #1
	strb r1, [r0, r6]
	b _02249536
_022494BE:
	add r0, r5, #0
	mov r1, #5
	bl ov107_02248110
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov107_02249CAC
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	mov r2, #0x32
	bl FUN_0223BC2C
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov107_02249CAC
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203068C
	add r7, r0, #0
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205E5B4
	str r0, [sp, #4]
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r3, r4, #1
	lsl r3, r3, #0x10
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	lsr r3, r3, #0x10
	bl sub_020306E4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02249536
	ldrb r1, [r5, #0xf]
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0xf]
_02249536:
	add r0, r5, #0
	bl ov107_02248BB4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	bl ov107_02248C08
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02249DBC
	mov r1, #6
	add r3, r6, #0
	mul r3, r1
	ldr r1, _0224957C ; =0x0224A0DC
	lsl r2, r4, #1
	add r1, r1, r3
	ldrh r1, [r2, r1]
	add r0, r5, #0
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249578: .word 0x000003D3
_0224957C: .word 0x0224A0DC
	thumb_func_end ov107_022493CC

	thumb_func_start ov107_02249580
ov107_02249580: ; 0x02249580
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldrb r0, [r6, #9]
	mov r1, #1
	bl FUN_0223B7DC
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _022495A4
_02249594:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov107_022495A8
	add r4, r4, #1
	cmp r4, r5
	blt _02249594
_022495A4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_02249580

	thumb_func_start ov107_022495A8
ov107_022495A8: ; 0x022495A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x37
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r1, [r5, r0]
	ldrb r1, [r1, r4]
	cmp r1, #1
	bne _022495C8
	lsl r1, r4, #3
	add r1, r5, r1
	sub r0, #0x30
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov107_02249BAC
_022495C8:
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrb r1, [r1, r4]
	cmp r1, #1
	bne _022495E2
	lsl r1, r4, #3
	add r1, r5, r1
	sub r0, #0x30
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov107_02249BAC
_022495E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022495A8

	thumb_func_start ov107_022495E4
ov107_022495E4: ; 0x022495E4
	push {r3, r4, r5, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r4, r2, #0
	bl FUN_0223BA14
	cmp r0, #1
	bne _022495F8
	mov r0, #0x40
	b _022495FA
_022495F8:
	mov r0, #0x60
_022495FA:
	str r0, [r5, #0]
	mov r0, #0x3c
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_022495E4

	thumb_func_start ov107_02249604
ov107_02249604: ; 0x02249604
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x14]
	mov r0, #0x20
	mov r1, #0x64
	str r2, [sp, #0x18]
	bl sub_0201DBEC
	bl ov107_02249A3C
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x64
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0x28
	add r1, r5, #4
	mov r2, #0x64
	bl sub_020095C4
	ldr r4, _022498A0 ; =0x0224A204
	str r0, [r5, #0]
	mov r7, #0
	add r6, r5, #0
_02249648:
	ldrb r0, [r4]
	add r1, r7, #0
	mov r2, #0x64
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r7, #4
	blt _02249648
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0xf
	bl sub_0200985C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0x27
	bl sub_020098B8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0x11
	mov r3, #1
	bl sub_02009918
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0x10
	mov r3, #1
	bl sub_02009918
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x10
	mov r1, #0x64
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0
	mov r1, #1
	bl sub_0207CE78
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	mov r1, #2
	bl sub_0207CE78
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0x10
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	bl sub_0207CF40
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_0207CF44
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_02006CA8
	add r0, r5, #0
	bl ov107_02249A70
	mov r0, #0x13
	mov r1, #0x64
	bl sub_02006C24
	add r7, r0, #0
	bl sub_02079FD0
	mov r1, #3
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0x13
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	bl sub_02079FD8
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_02079FE4
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r4, #0
	add r6, r5, #0
_0224980A:
	cmp r4, #3
	bne _02249828
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0224981E
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_0207A0FC
	b _02249830
_0224981E:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl sub_0207A0FC
	b _02249830
_02249828:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl sub_0207A0FC
_02249830:
	bl sub_02079D80
	add r2, r0, #0
	add r0, r4, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r4, r4, #1
	add r6, #0x10
	cmp r4, #4
	blt _0224980A
	add r0, r7, #0
	bl sub_02006CA8
	mov r7, #0x4f
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0224986A:
	ldr r0, [r4, r7]
	bl sub_0200A328
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #7
	blt _0224986A
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_0224987E:
	ldr r0, [r5, r6]
	bl sub_0200A5C8
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0224987E
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022498A0: .word 0x0224A204
	thumb_func_end ov107_02249604

	thumb_func_start ov107_022498A4
ov107_022498A4: ; 0x022498A4
	push {r4, r5, r6, lr}
	sub sp, #0x80
	add r4, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r5, #0
	ldr r0, [sp, #0x98]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	str r6, [sp, #0x14]
	add r6, r0, #4
	ldr r6, [r4, r6]
	str r6, [sp, #0x18]
	add r6, r0, #0
	add r6, #8
	ldr r6, [r4, r6]
	add r0, #0xc
	str r6, [sp, #0x1c]
	ldr r0, [r4, r0]
	str r0, [sp, #0x20]
	str r5, [sp, #0x24]
	str r5, [sp, #0x28]
	add r0, sp, #0x5c
	bl sub_020093B4
	ldr r0, [r4, #0]
	add r1, r5, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	ldr r0, [sp, #0x94]
	str r0, [sp, #0x50]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _02249912
	mov r0, #1
	str r0, [sp, #0x54]
	b _02249916
_02249912:
	mov r0, #2
	str r0, [sp, #0x54]
_02249916:
	mov r0, #0x64
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	bne _0224992C
	mov r0, #3
	ldr r1, [sp, #0x38]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x38]
_0224992C:
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #1
	add r4, r0, #0
	bl sub_02021CC8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r1, [sp, #0x90]
	add r0, r4, #0
	bl sub_02021D6C
	add r0, r4, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_022498A4

	thumb_func_start ov107_02249954
ov107_02249954: ; 0x02249954
	push {r4, r5, r6, lr}
	mov r6, #0x4f
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0224995E:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0200A4E4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	blo _0224995E
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_02249978:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0200A6DC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02249978
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_02249992:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02249992
	ldr r0, [r5, #0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_02249954

	thumb_func_start ov107_022499BC
ov107_022499BC: ; 0x022499BC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	add r6, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02009DC8
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	add r0, #0xc8
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #0x10
	bl sub_02009968
	add r0, r4, #0
	bl sub_0200A4C0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_022499BC

	thumb_func_start ov107_022499FC
ov107_022499FC: ; 0x022499FC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r6, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02009DC8
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	add r0, #0xcc
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #0x10
	bl sub_020099D4
	add r0, r4, #0
	bl sub_0200A6B8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_022499FC

	thumb_func_start ov107_02249A3C
ov107_02249A3C: ; 0x02249A3C
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02249A6C ; =0x0224A208
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #8
	mov r1, #0x64
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02249A6C: .word 0x0224A208
	thumb_func_end ov107_02249A3C

	thumb_func_start ov107_02249A70
ov107_02249A70: ; 0x02249A70
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x14
	mov r1, #0x64
	bl sub_02006C24
	add r4, r0, #0
	bl sub_02081930
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_02081934
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0x14
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	bl sub_02081938
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_0208193C
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02249A70

	thumb_func_start ov107_02249B1C
ov107_02249B1C: ; 0x02249B1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x64
	mov r1, #8
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	add r0, sp, #0x28
	mov r2, #0x14
	ldrsh r2, [r0, r2]
	ldr r3, [sp, #0x10]
	strh r2, [r4]
	mov r2, #0x18
	ldrsh r0, [r0, r2]
	add r2, r7, #0
	strh r0, [r4, #2]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x44]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov107_022498A4
	str r0, [r4, #4]
	add r1, sp, #0x28
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	add r1, sp, #0x14
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	bl sub_02021C50
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02249B1C

	thumb_func_start ov107_02249B8C
ov107_02249B8C: ; 0x02249B8C
	push {r4, lr}
	add r4, r0, #0
	bne _02249B9A
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_02249B9A:
	ldr r0, [r4, #4]
	bl sub_02021BD4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02249B8C

	thumb_func_start ov107_02249BAC
ov107_02249BAC: ; 0x02249BAC
	ldr r3, _02249BB4 ; =sub_02021CAC
	ldr r0, [r0, #4]
	bx r3
	nop
_02249BB4: .word sub_02021CAC
	thumb_func_end ov107_02249BAC

	thumb_func_start ov107_02249BB8
ov107_02249BB8: ; 0x02249BB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r7, #0
	str r0, [r2, #0]
	lsl r0, r4, #0xc
	str r0, [sp]
	lsl r0, r6, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02249BB8

	thumb_func_start ov107_02249BEC
ov107_02249BEC: ; 0x02249BEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #1
	ldr r0, [r5, #4]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02249BEC

	thumb_func_start ov107_02249C08
ov107_02249C08: ; 0x02249C08
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02079FC4
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl sub_02021F24
	pop {r4, pc}
	thumb_func_end ov107_02249C08

	thumb_func_start ov107_02249C1C
ov107_02249C1C: ; 0x02249C1C
	ldr r3, _02249C24 ; =FUN_0222E1D8
	ldr r0, [r0, #4]
	bx r3
	nop
_02249C24: .word FUN_0222E1D8
	thumb_func_end ov107_02249C1C

	thumb_func_start ov107_02249C28
ov107_02249C28: ; 0x02249C28
	push {r4, lr}
	add r4, r0, #0
	add r3, r1, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #4]
	bl FUN_0222E204
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02249C28

	thumb_func_start ov107_02249C40
ov107_02249C40: ; 0x02249C40
	ldr r3, _02249C48 ; =sub_02021FD0
	ldr r0, [r0, #4]
	bx r3
	nop
_02249C48: .word sub_02021FD0
	thumb_func_end ov107_02249C40

	thumb_func_start ov107_02249C4C
ov107_02249C4C: ; 0x02249C4C
	ldr r3, _02249C54 ; =sub_02021E80
	ldr r0, [r0, #4]
	bx r3
	nop
_02249C54: .word sub_02021E80
	thumb_func_end ov107_02249C4C

	thumb_func_start ov107_02249C58
ov107_02249C58: ; 0x02249C58
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov107_02249C58

	thumb_func_start ov107_02249C60
ov107_02249C60: ; 0x02249C60
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	mov r1, #0xb
	bl ov107_02249BEC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov107_02249BB8
	add r0, r5, #0
	mov r1, #1
	bl ov107_02249BAC
	ldr r0, _02249C90 ; =0x000005E3
	bl sub_02005748
	ldr r0, _02249C94 ; =0x00000656
	bl sub_02005748
	pop {r4, r5, r6, pc}
	nop
_02249C90: .word 0x000005E3
_02249C94: .word 0x00000656
	thumb_func_end ov107_02249C60

	thumb_func_start ov107_02249C98
ov107_02249C98: ; 0x02249C98
	add r0, r1, #0
	bx lr
	thumb_func_end ov107_02249C98

	thumb_func_start ov107_02249C9C
ov107_02249C9C: ; 0x02249C9C
	cmp r1, r0
	blo _02249CA6
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_02249CA6:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov107_02249C9C

	thumb_func_start ov107_02249CAC
ov107_02249CAC: ; 0x02249CAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0203068C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205E5B4
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02030698
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02249CAC

	thumb_func_start ov107_02249CE0
ov107_02249CE0: ; 0x02249CE0
	push {r3, lr}
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	beq _02249CF0
	add r0, r1, #0
	bl sub_02005748
_02249CF0:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov107_02249CE0

	thumb_func_start ov107_02249CF4
ov107_02249CF4: ; 0x02249CF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200B498
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02249CF4

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
	; 0x02249E00

	.incbin "data/overlay107.bin"
