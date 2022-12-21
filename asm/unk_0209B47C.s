	.include "macros/function.inc"
	.include "include/unk_0209B47C.inc"

	

	.text


	thumb_func_start sub_0209B47C
sub_0209B47C: ; 0x0209B47C
	ldr r3, _0209B490 ; =0x027E0000
	ldr r1, _0209B494 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	ldr r3, _0209B498 ; =sub_020C458C
	mov r0, #3
	bx r3
	nop
_0209B490: .word 0x027E0000
_0209B494: .word 0x00003FF8
_0209B498: .word sub_020C458C
	thumb_func_end sub_0209B47C

	thumb_func_start sub_0209B49C
sub_0209B49C: ; 0x0209B49C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r0, _0209B6AC ; =0x021C3A34
	ldr r1, [r0, #0]
	cmp r1, #1
	bne _0209B4AA
	b _0209B6A8
_0209B4AA:
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	bl sub_020C2EAC
	add r1, r0, #0
	mov r0, #0
	bl sub_020C3038
	mov r0, #0
	bl sub_020C2F90
	add r1, r0, #0
	mov r0, #0
	bl sub_020C304C
	mov r1, #1
	ldr r0, _0209B6B0 ; =0x020F8B84
	add r2, r1, #0
	mov r3, #0
	bl sub_02017E74
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #1
	bl sub_020C164C
	ldr r1, _0209B6B4 ; =sub_0209B47C
	mov r0, #1
	bl sub_020C144C
	mov r0, #1
	bl sub_020C161C
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
	ldr r0, _0209B6B8 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0209B6BC ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _0209B6C0 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _0209B6C4 ; =0x04000050
	mov r0, #0
	strh r0, [r3]
	ldr r2, _0209B6C8 ; =0x04001050
	sub r3, #0x50
	strh r0, [r2]
	ldr r1, [r3, #0]
	ldr r0, _0209B6CC ; =0xFFFF1FFF
	sub r2, #0x50
	and r1, r0
	str r1, [r3, #0]
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, _0209B6D0 ; =0x020F8BB8
	bl sub_0201FE94
	mov r0, #0
	bl sub_02018340
	str r0, [sp, #0x10]
	ldr r0, _0209B6D4 ; =0x020F8B8C
	bl sub_02018368
	mov r1, #0
	ldr r0, [sp, #0x10]
	ldr r2, _0209B6D8 ; =0x020F8B9C
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, _0209B6DC ; =0x000001F7
	mov r3, #2
	str r1, [sp, #4]
	bl sub_0200DAA4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	add r3, r0, #0
	bl sub_02019690
	ldr r1, _0209B6E0 ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _0209B6E0 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd6
	mov r3, #0
	bl sub_0200B144
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r0, r0, #6
	mov r1, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_0201D710
	ldr r0, [sp, #0x10]
	ldr r2, _0209B6E4 ; =0x020F8B7C
	add r1, sp, #0x14
	bl sub_0201A8D4
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x90
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x14
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r2, _0209B6DC ; =0x000001F7
	add r0, sp, #0x14
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	ldr r0, [sp, #0xc]
	mov r1, #3
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, sp, #0x14
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	bl sub_0201FFD0
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	mov r0, #0
	mov r1, #0x3f
	mov r2, #3
	bl sub_0200AB4C
	bl sub_02037DB0
	mov r4, #1
_0209B63C:
	bl sub_0200106C
	bl sub_020349EC
	bl sub_02038AB8
	cmp r0, #0
	bne _0209B656
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020C12B4
	b _0209B63C
_0209B656:
	ldr r5, _0209B6E8 ; =0x04000130
	ldr r4, _0209B6EC ; =0x027FFFA8
	ldr r7, _0209B6F0 ; =0x00002FFF
	mov r6, #1
_0209B65E:
	bl sub_0200106C
	ldrh r1, [r5]
	ldrh r0, [r4]
	orr r1, r0
	ldr r0, _0209B6F0 ; =0x00002FFF
	eor r0, r1
	and r0, r7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	tst r0, r6
	bne _0209B680
	mov r0, #1
	add r1, r0, #0
	bl sub_020C12B4
	b _0209B65E
_0209B680:
	ldr r1, _0209B6F4 ; =0x00007FFF
	mov r0, #0
	bl sub_0200F344
	ldr r1, _0209B6F4 ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	add r0, sp, #0x14
	bl sub_0201A8FC
	ldr r0, [sp, #0xc]
	bl sub_0200B190
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	mov r0, #0
	bl sub_020C3EE4
_0209B6A8:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0209B6AC: .word 0x021C3A34
_0209B6B0: .word 0x020F8B84
_0209B6B4: .word sub_0209B47C
_0209B6B8: .word 0xFFFFE0FF
_0209B6BC: .word 0x04001000
_0209B6C0: .word 0x021BF6DC
_0209B6C4: .word 0x04000050
_0209B6C8: .word 0x04001050
_0209B6CC: .word 0xFFFF1FFF
_0209B6D0: .word 0x020F8BB8
_0209B6D4: .word 0x020F8B8C
_0209B6D8: .word 0x020F8B9C
_0209B6DC: .word 0x000001F7
_0209B6E0: .word 0x00006C21
_0209B6E4: .word 0x020F8B7C
_0209B6E8: .word 0x04000130
_0209B6EC: .word 0x027FFFA8
_0209B6F0: .word 0x00002FFF
_0209B6F4: .word 0x00007FFF
	thumb_func_end sub_0209B49C

	.rodata


	.global Unk_020F8B7C
Unk_020F8B7C: ; 0x020F8B7C
	.incbin "incbin/arm9_rodata.bin", 0x13F3C, 0x13F44 - 0x13F3C

	.global Unk_020F8B84
Unk_020F8B84: ; 0x020F8B84
	.incbin "incbin/arm9_rodata.bin", 0x13F44, 0x13F4C - 0x13F44

	.global Unk_020F8B8C
Unk_020F8B8C: ; 0x020F8B8C
	.incbin "incbin/arm9_rodata.bin", 0x13F4C, 0x13F5C - 0x13F4C

	.global Unk_020F8B9C
Unk_020F8B9C: ; 0x020F8B9C
	.incbin "incbin/arm9_rodata.bin", 0x13F5C, 0x13F78 - 0x13F5C

	.global Unk_020F8BB8
Unk_020F8BB8: ; 0x020F8BB8
	.incbin "incbin/arm9_rodata.bin", 0x13F78, 0x28



	.bss


	.global Unk_021C3A34
Unk_021C3A34: ; 0x021C3A34
	.space 0x4

