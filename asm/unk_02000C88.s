	.include "macros/function.inc"
	.include "include/unk_02000C88.inc"

	

	.text


	thumb_func_start NitroMain
NitroMain: ; 0x02000C88
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0201789C
	bl sub_020179E4
	bl sub_02017AF4
	mov r0, #0
	bl sub_02017B70
	ldr r0, _02000E18 ; =0x02101D20
	mov r1, #0
	bl PM_GetBackLight
	bl sub_0202419C
	bl sub_0201378C
	bl sub_02000E3C
	bl sub_02002B7C
	mov r0, #0
	mov r1, #3
	bl sub_02002BB8
	mov r0, #1
	mov r1, #3
	bl sub_02002BB8
	mov r0, #3
	add r1, r0, #0
	bl sub_02002BB8
	mov r1, #0
	ldr r0, _02000E1C ; =0x02101D20
	mvn r1, r1
	str r1, [r0, #0x18]
	bl sub_020244AC
	ldr r1, _02000E1C ; =0x02101D20
	str r0, [r1, #0x20]
	bl sub_0202CC98
	add r4, r0, #0
	ldr r0, _02000E1C ; =0x02101D20
	ldr r0, [r0, #0x20]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02003B60
	bl sub_02022844
	mov r0, #3
	bl sub_02038FFC
	cmp r0, #3
	bne _02000D08
	mov r0, #3
	mov r1, #0
	bl sub_02039A64
_02000D08:
	ldr r0, _02000E1C ; =0x02101D20
	ldr r0, [r0, #0x20]
	bl sub_020247B8
	cmp r0, #0
	bne _02000D1C
	mov r0, #0
	bl sub_0209A74C
	b _02000D5E
_02000D1C:
	ldr r0, _02000E20 ; =0x027FFC20
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02000D2A
	cmp r0, #1
	beq _02000D3A
	b _02000D5A
_02000D2A:
	ldr r0, _02000E1C ; =0x02101D20
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r0, _02000E24 ; =0x0000004D
	ldr r1, _02000E28 ; =0x021D788C
	bl sub_02000EC4
	b _02000D5E
_02000D3A:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r0, _02000E1C ; =0x02101D20
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r0, _02000E2C ; =0x00000039
	ldr r1, _02000E30 ; =0x021D0F70
	bl sub_02000EC4
	b _02000D5E
_02000D5A:
	bl sub_02022974
_02000D5E:
	ldr r0, _02000E34 ; =0x021BF67C
	mov r1, #1
	str r1, [r0, #0x6c]
	mov r1, #0
	str r1, [r0, #0x30]
	bl sub_02001028
	bl sub_0200AB84
	bl sub_02017428
	mov r1, #0
	ldr r0, _02000E1C ; =0x02101D20
	mov r7, #0xc3
	ldr r6, _02000E38 ; =0x021BF6DC
	ldr r4, _02000E34 ; =0x021BF67C
	str r1, [r0, #4]
	add r5, r1, #0
	lsl r7, r7, #2
_02000D84:
	bl sub_02000F30
	bl sub_0200106C
	bl sub_02017B9C
	mov r0, #0xc3
	ldr r1, [r4, #0x38]
	lsl r0, r0, #2
	and r0, r1
	cmp r0, r7
	bne _02000DA8
	ldrb r0, [r6, #8]
	cmp r0, #0
	bne _02000DA8
	mov r0, #0
	bl sub_02000F60
_02000DA8:
	bl sub_020349EC
	cmp r0, #0
	beq _02000DD8
	bl sub_02000F30
	bl sub_02000E54
	ldr r0, [r4, #0x18]
	bl sub_0201CDD4
	ldr r0, [r4, #0x24]
	bl sub_0201CDD4
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _02000DD8
	mov r0, #1
	add r1, r0, #0
	bl OS_WaitIrq
	ldr r0, [r4, #0x2c]
	add r0, r0, #1
	str r0, [r4, #0x2c]
_02000DD8:
	bl sub_020137C4
	bl sub_02017458
	bl sub_020241CC
	ldr r0, [r4, #0x24]
	bl sub_0201CDD4
	mov r0, #1
	add r1, r0, #0
	bl OS_WaitIrq
	ldr r0, [r4, #0x2c]
	add r0, r0, #1
	str r0, [r4, #0x2c]
	str r5, [r4, #0x30]
	bl sub_0200ABF0
	bl sub_0200F27C
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02000E0C
	ldr r0, [r4, #4]
	blx r1
_02000E0C:
	bl sub_02003BD8
	ldr r0, [r4, #0x20]
	bl sub_0201CDD4
	b _02000D84
	; .align 2, 0
_02000E18: .word 0x02101D20
_02000E1C: .word 0x02101D20
_02000E20: .word 0x027FFC20
_02000E24: .word 0x0000004D
_02000E28: .word 0x021D788C
_02000E2C: .word 0x00000039
_02000E30: .word 0x021D0F70
_02000E34: .word 0x021BF67C
_02000E38: .word 0x021BF6DC
	thumb_func_end NitroMain

	thumb_func_start sub_02000E3C
sub_02000E3C: ; 0x02000E3C
	mov r2, #0
	ldr r0, _02000E50 ; =0x02101D20
	mvn r2, r2
	str r2, [r0, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	nop
_02000E50: .word 0x02101D20
	thumb_func_end sub_02000E3C

	thumb_func_start sub_02000E54
sub_02000E54: ; 0x02000E54
	push {r3, lr}
	ldr r0, _02000EBC ; =0x02101D20
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _02000E92
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _02000EB8
	mov r1, #0
	ldr r0, [r0, #0x10]
	mvn r1, r1
	cmp r0, r1
	beq _02000E74
	mov r1, #0
	bl sub_02006590
_02000E74:
	ldr r0, _02000EBC ; =0x02101D20
	mov r2, #0
	ldr r1, [r0, #0x10]
	str r1, [r0, #8]
	ldr r0, [r0, #0x14]
	ldr r1, _02000EC0 ; =0x02101D38
	bl sub_020067E8
	ldr r1, _02000EBC ; =0x02101D20
	str r0, [r1, #0xc]
	mov r0, #0
	mvn r0, r0
	str r0, [r1, #0x10]
	mov r0, #0
	str r0, [r1, #0x14]
_02000E92:
	ldr r0, _02000EBC ; =0x02101D20
	ldr r0, [r0, #0xc]
	bl sub_02006844
	cmp r0, #0
	beq _02000EB8
	ldr r0, _02000EBC ; =0x02101D20
	ldr r0, [r0, #0xc]
	bl sub_02006814
	ldr r0, _02000EBC ; =0x02101D20
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r0, #8]
	sub r1, r1, #1
	cmp r0, r1
	beq _02000EB8
	bl sub_02006514
_02000EB8:
	pop {r3, pc}
	nop
_02000EBC: .word 0x02101D20
_02000EC0: .word 0x02101D38
	thumb_func_end sub_02000E54

	thumb_func_start sub_02000EC4
sub_02000EC4: ; 0x02000EC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02000EE0 ; =0x02101D20
	add r4, r1, #0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _02000ED6
	bl sub_02022974
_02000ED6:
	ldr r0, _02000EE0 ; =0x02101D20
	str r5, [r0, #0x10]
	str r4, [r0, #0x14]
	pop {r3, r4, r5, pc}
	nop
_02000EE0: .word 0x02101D20
	thumb_func_end sub_02000EC4

	thumb_func_start sub_02000EE4
sub_02000EE4: ; 0x02000EE4
	push {r3, lr}
	bl sub_020349EC
	mov r0, #1
	add r1, r0, #0
	bl OS_WaitIrq
	ldr r0, _02000F0C ; =0x021BF67C
	ldr r1, [r0, #0x2c]
	add r1, r1, #1
	str r1, [r0, #0x2c]
	mov r1, #0
	str r1, [r0, #0x30]
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02000F08
	ldr r0, [r0, #4]
	blx r1
_02000F08:
	pop {r3, pc}
	nop
_02000F0C: .word 0x021BF67C
	thumb_func_end sub_02000EE4

	thumb_func_start sub_02000F10
sub_02000F10: ; 0x02000F10
	push {r4, lr}
	add r4, r0, #0
	bl sub_02038AB8
	cmp r0, #0
	beq _02000F2A
	bl CARD_TryWaitBackupAsync
	cmp r0, #1
	bne _02000F2A
	add r0, r4, #0
	bl OS_ResetSystem
_02000F2A:
	bl sub_02000EE4
	pop {r4, pc}
	thumb_func_end sub_02000F10

	thumb_func_start sub_02000F30
sub_02000F30: ; 0x02000F30
	push {r3, lr}
	bl sub_020389D8
	add r1, r0, #0
	cmp r1, #1
	beq _02000F46
	cmp r1, #2
	beq _02000F4E
	cmp r1, #3
	beq _02000F56
	pop {r3, pc}
_02000F46:
	mov r0, #1
	bl sub_02000F94
	pop {r3, pc}
_02000F4E:
	mov r0, #0
	bl sub_02000F94
	pop {r3, pc}
_02000F56:
	mov r0, #1
	bl sub_02000F94
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02000F30

	thumb_func_start sub_02000F60
sub_02000F60: ; 0x02000F60
	push {r4, lr}
	ldr r1, _02000F90 ; =0x00007FFF
	add r4, r0, #0
	mov r0, #0
	bl sub_0200F344
	ldr r1, _02000F90 ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	bl sub_02037DB0
	cmp r0, #0
	beq _02000F84
	bl sub_020245A4
	bl sub_02024850
_02000F84:
	bl sub_0200106C
	add r0, r4, #0
	bl sub_02000F10
	b _02000F84
	; .align 2, 0
_02000F90: .word 0x00007FFF
	thumb_func_end sub_02000F60

	thumb_func_start sub_02000F94
sub_02000F94: ; 0x02000F94
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	cmp r1, #3
	bne _02000FA8
	mov r0, #0
	mov r1, #3
	add r2, r0, #0
	bl sub_02039834
	b _02000FEA
_02000FA8:
	cmp r7, #0
	bne _02000FCC
	bl sub_020389B8
	cmp r0, #1
	bne _02000FC0
	mov r0, #0
	mov r1, #6
	add r2, r0, #0
	bl sub_02039834
	b _02000FEA
_02000FC0:
	mov r0, #0
	mov r1, #2
	add r2, r0, #0
	bl sub_02039834
	b _02000FEA
_02000FCC:
	bl sub_020389B8
	cmp r0, #1
	bne _02000FE0
	mov r0, #0
	mov r1, #5
	add r2, r0, #0
	bl sub_02039834
	b _02000FEA
_02000FE0:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02039834
_02000FEA:
	bl sub_02037DB0
	bl sub_02000EE4
	bl sub_02003BD8
	ldr r4, _02001024 ; =0x021BF67C
	mov r5, #0
	mov r6, #1
_02000FFC:
	bl sub_0200106C
	bl sub_02017B9C
	cmp r5, #0x1e
	blt _0200100E
	ldr r0, [r4, #0x48]
	tst r0, r6
	bne _0200101A
_0200100E:
	bl sub_02000EE4
	cmp r5, #0x1e
	bge _02000FFC
	add r5, r5, #1
	b _02000FFC
_0200101A:
	add r0, r7, #0
	bl sub_02000F60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02001024: .word 0x021BF67C
	thumb_func_end sub_02000F94

	thumb_func_start sub_02001028
sub_02001028: ; 0x02001028
	push {r4, r5, lr}
	sub sp, #0x1c
	add r0, sp, #0xc
	add r1, sp, #0
	bl sub_0201384C
	ldr r0, _02001068 ; =0x021BF67C
	ldr r3, [sp, #0x10]
	ldr r4, [r0, #0x2c]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	ldr r5, [sp, #0x14]
	add r0, r1, r0
	lsl r2, r0, #0x18
	ldr r0, [sp]
	lsl r3, r3, #8
	lsl r1, r0, #0x10
	mul r3, r5
	ldr r0, [sp, #0xc]
	lsl r3, r3, #0x10
	add r0, r0, r3
	add r0, r1, r0
	add r5, r2, r0
	add r0, r4, r5
	bl sub_0201D318
	add r0, r4, r5
	bl sub_0201D2DC
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_02001068: .word 0x021BF67C
	thumb_func_end sub_02001028

	thumb_func_start sub_0200106C
sub_0200106C: ; 0x0200106C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _02001120 ; =0x027FFFA8
	ldrh r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _02001102
	ldr r0, _02001124 ; =0x021BF6DC
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _020010E8
	bl sub_0201E630
	bl CTRDG_IsPulledOut
	cmp r0, #1
	bne _02001098
	ldr r0, _02001128 ; =0x02101D20
	mov r1, #1
	str r1, [r0, #4]
_02001098:
	ldr r6, _02001128 ; =0x02101D20
	mov r0, #0xc
	ldr r1, [r6, #4]
	ldr r4, _02001120 ; =0x027FFFA8
	mov r2, #0x10
	add r5, r0, #0
	ldr r7, _02001124 ; =0x021BF6DC
	orr r5, r2
_020010A8:
	ldrb r2, [r7, #6]
	mov r0, #0xc
	cmp r2, #0
	beq _020010B6
	cmp r1, #0
	bne _020010B6
	add r0, r5, #0
_020010B6:
	mov r1, #0
	add r2, r1, #0
	bl PM_GoSleepMode
	bl CARD_IsPulledOut
	cmp r0, #0
	beq _020010CC
	bl PM_ForceToPowerOff
	b _020010E0
_020010CC:
	ldrh r1, [r4]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _020010E0
	mov r0, #1
	str r0, [r6, #4]
	add r1, r0, #0
	b _020010A8
_020010E0:
	bl sub_0201E5FC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020010E8:
	add r0, sp, #4
	add r1, sp, #0
	bl PM_GetBackLight
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0200111A
	mov r0, #2
	mov r1, #0
	bl PM_SetBackLight
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02001102:
	add r0, sp, #4
	add r1, sp, #0
	bl PM_GetBackLight
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0200111A
	ldr r1, _02001128 ; =0x02101D20
	mov r0, #2
	ldr r1, [r1, #0]
	bl PM_SetBackLight
_0200111A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02001120: .word 0x027FFFA8
_02001124: .word 0x021BF6DC
_02001128: .word 0x02101D20
	thumb_func_end sub_0200106C

	.bss


	.global Unk_02101D20
Unk_02101D20: ; 0x02101D20
	.space 0x4

	.global Unk_02101D24
Unk_02101D24: ; 0x02101D24
	.space 0x4

	.global Unk_02101D28
Unk_02101D28: ; 0x02101D28
	.space 0x1C

