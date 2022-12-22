	.include "macros/function.inc"
	.include "include/unk_0208694C.inc"

	

	.text


	thumb_func_start sub_0208694C
sub_0208694C: ; 0x0208694C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r6, r0, #0
	cmp r1, #0
	beq _02086962
	cmp r1, #1
	bne _02086960
	b _02086ACE
_02086960:
	b _02086B08
_02086962:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02086B10 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02086B14 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x12
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r1, #0x5d
	add r0, r6, #0
	lsl r1, r1, #4
	mov r2, #0x12
	bl sub_0200681C
	mov r2, #0x5d
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl memset
	mov r0, #0x12
	bl sub_02018340
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0x1f
	mov r1, #0x12
	bl sub_02006C24
	add r7, r0, #0
	mov r0, #0x12
	bl sub_0200B358
	mov r2, #0x5a
	lsl r2, r2, #2
	str r0, [r4, r2]
	mov r0, #0
	mov r1, #0x1a
	add r2, #0x3e
	mov r3, #0x12
	bl sub_0200B144
	mov r2, #0x5b
	lsl r2, r2, #2
	str r0, [r4, r2]
	mov r0, #1
	mov r1, #0x1a
	add r2, #0x3f
	mov r3, #0x12
	bl sub_0200B144
	mov r2, #0x17
	lsl r2, r2, #4
	str r0, [r4, r2]
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x12
	bl sub_0200B144
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	bl sub_020871CC
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020871EC
	add r0, r6, #0
	bl sub_02006840
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020871B0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0208769C
	mov r0, #2
	mov r1, #0x12
	bl sub_02002BB8
	ldr r0, _02086B18 ; =sub_02087190
	mov r1, #0
	bl sub_02017798
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0208737C
	mov r0, #0
	mov r1, #0x12
	bl sub_02002BEC
	bl sub_020877C4
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020877F4
	add r0, r4, #0
	bl sub_02087A10
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02087FC0
	ldr r0, _02086B1C ; =0x000004C4
	mov r3, #0x5f
	add r1, r4, r0
	lsl r3, r3, #2
	str r1, [sp]
	ldr r1, [r4, r3]
	add r2, r3, #0
	str r1, [sp, #4]
	sub r2, #0x24
	sub r0, #0xcc
	add r1, r4, #0
	sub r3, #0x22
	ldrh r2, [r4, r2]
	add r0, r4, r0
	add r1, #0xd8
	add r3, r4, r3
	bl sub_02088754
	mov r1, #0
	mov r0, #0x34
	add r2, r1, #0
	bl sub_02004550
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	bl sub_0208732C
	ldr r0, _02086B20 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add r0, r7, #0
	bl sub_02006CA8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02086B08
_02086ACE:
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _02086AEA
	ldr r1, _02086B24 ; =0x000004B8
	ldr r2, [r4, #4]
	ldr r0, [r4, r1]
	add r1, #8
	ldr r1, [r4, r1]
	ldr r3, [r4, #8]
	bl sub_02086B30
_02086AEA:
	ldr r0, _02086B28 ; =0x021C0A30
	mov r1, #1
	str r4, [r0, #0]
	mov r0, #0
	mov r2, #0xc
	mov r3, #0x12
	bl sub_0201567C
	ldr r1, _02086B2C ; =0x000005C4
	add sp, #0xc
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02086B08:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02086B10: .word 0xFFFFE0FF
_02086B14: .word 0x04001000
_02086B18: .word sub_02087190
_02086B1C: .word 0x000004C4
_02086B20: .word 0x021BF6DC
_02086B24: .word 0x000004B8
_02086B28: .word 0x021C0A30
_02086B2C: .word 0x000005C4
	thumb_func_end sub_0208694C

	thumb_func_start sub_02086B30
sub_02086B30: ; 0x02086B30
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	mov r2, #2
	ldr r0, [r0, #0x14]
	ldr r1, _02086B60 ; =0x000057E0
	add r6, r3, #0
	lsl r2, r2, #8
	bl GX_LoadOBJ
	ldr r4, [r4, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_02079EDC
	lsl r0, r0, #5
	add r0, r4, r0
	mov r1, #0xc0
	mov r2, #0x20
	bl GX_LoadOBJPltt
	pop {r4, r5, r6, pc}
	nop
_02086B60: .word 0x000057E0
	thumb_func_end sub_02086B30

	thumb_func_start sub_02086B64
sub_02086B64: ; 0x02086B64
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #3
	bhi _02086BC8
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02086B84: ; jump table
	.short _02086B8C - _02086B84 - 2 ; case 0
	.short _02086BA0 - _02086B84 - 2 ; case 1
	.short _02086BD4 - _02086B84 - 2 ; case 2
	.short _02086CFC - _02086B84 - 2 ; case 3
_02086B8C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02086BC8
	mov r0, #1
	str r0, [r5, #0]
	ldr r0, _02086D1C ; =0x000005CC
	mov r1, #0
	str r1, [r4, r0]
	b _02086D0A
_02086BA0:
	ldr r1, _02086D1C ; =0x000005CC
	ldr r2, [r4, r1]
	add r2, r2, #1
	str r2, [r4, r1]
	bl sub_02088FD0
	mov r2, #0x49
	lsl r2, r2, #4
	add r0, r4, r2
	mov r1, #0xcb
	sub r2, #0x30
	lsl r1, r1, #2
	ldr r2, [r4, r2]
	add r1, r4, r1
	bl sub_02088F40
	ldr r0, _02086D1C ; =0x000005CC
	ldr r1, [r4, r0]
	cmp r1, #5
	bgt _02086BCA
_02086BC8:
	b _02086D0A
_02086BCA:
	mov r1, #2
	str r1, [r5, #0]
	mov r1, #0
	str r1, [r4, r0]
	b _02086D0A
_02086BD4:
	ldr r3, _02086D20 ; =0x0000045C
	ldr r2, [r4, r3]
	cmp r2, #7
	bhi _02086CA8
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02086BE8: ; jump table
	.short _02086CA8 - _02086BE8 - 2 ; case 0
	.short _02086CA8 - _02086BE8 - 2 ; case 1
	.short _02086CA8 - _02086BE8 - 2 ; case 2
	.short _02086CA8 - _02086BE8 - 2 ; case 3
	.short _02086BF8 - _02086BE8 - 2 ; case 4
	.short _02086C06 - _02086BE8 - 2 ; case 5
	.short _02086C52 - _02086BE8 - 2 ; case 6
	.short _02086C7E - _02086BE8 - 2 ; case 7
_02086BF8:
	bl sub_02086D38
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_02088FD0
	b _02086CA8
_02086C06:
	add r1, r6, #0
	bl sub_02087544
	ldr r0, _02086D24 ; =0x00000448
	mov r1, #0xf
	add r0, r4, r0
	bl sub_0201ADA4
	ldr r0, _02086D24 ; =0x00000448
	mov r2, #1
	add r0, r4, r0
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	mov r2, #6
	ldr r0, _02086D24 ; =0x00000448
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r3, [sp, #8]
	lsl r2, r2, #6
	ldr r2, [r4, r2]
	add r0, r4, r0
	bl sub_0201D738
	ldr r1, _02086D28 ; =0x00000458
	str r0, [r4, r1]
	sub r1, #0x10
	add r0, r4, r1
	bl sub_0201A954
	ldr r0, _02086D20 ; =0x0000045C
	mov r1, #6
	str r1, [r4, r0]
	b _02086CA8
_02086C52:
	sub r0, r3, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02086CA8
	ldr r0, _02086D2C ; =0x000005E2
	bl sub_02005748
	ldr r1, _02086D30 ; =0x000004A8
	mov r2, #0
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	ldr r0, _02086D1C ; =0x000005CC
	sub r1, #0x4c
	str r2, [r4, r0]
	mov r0, #7
	str r0, [r4, r1]
	b _02086CA8
_02086C7E:
	ldr r0, _02086D1C ; =0x000005CC
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	ble _02086CA8
	mov r0, #0x10
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	mov r0, #3
	str r0, [r5, #0]
_02086CA8:
	ldr r3, _02086D34 ; =0x00000464
	mov r1, #0xcb
	add r0, r4, r3
	str r0, [sp]
	add r0, r3, #4
	add r0, r4, r0
	lsl r1, r1, #2
	str r0, [sp, #4]
	add r0, r4, r1
	str r0, [sp, #8]
	add r0, r3, #0
	add r0, #0x4c
	ldr r0, [r4, r0]
	add r2, r3, #0
	ldr r0, [r0, #0x14]
	add r1, #0x8c
	str r0, [sp, #0xc]
	mov r0, #0x16
	lsl r0, r0, #4
	sub r3, r3, #4
	sub r2, #8
	ldr r0, [r4, r0]
	ldr r3, [r4, r3]
	add r1, r4, r1
	add r2, r4, r2
	bl sub_02087D64
	mov r2, #0x49
	lsl r2, r2, #4
	add r0, r4, r2
	mov r1, #0xcb
	sub r2, #0x30
	lsl r1, r1, #2
	ldr r2, [r4, r2]
	add r1, r4, r1
	bl sub_02088F40
	add r0, r4, #0
	add r0, #0x38
	bl sub_02088514
	b _02086D0A
_02086CFC:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02086D0A
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_02086D0A:
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02086D1C: .word 0x000005CC
_02086D20: .word 0x0000045C
_02086D24: .word 0x00000448
_02086D28: .word 0x00000458
_02086D2C: .word 0x000005E2
_02086D30: .word 0x000004A8
_02086D34: .word 0x00000464
	thumb_func_end sub_02086B64

	thumb_func_start sub_02086D38
sub_02086D38: ; 0x02086D38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02088350
	ldr r0, _02086E54 ; =0x021BF67C
	mov r1, #4
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _02086DDC
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D34
	cmp r0, #0
	bne _02086D6A
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02086D6A:
	ldr r0, [r5, #0]
	cmp r0, #4
	beq _02086DB4
	ldr r1, _02086E58 ; =0x0000045C
	mov r0, #0
	str r0, [r5, r1]
	add r2, r1, #4
	ldr r2, [r5, r2]
	add r3, r2, #1
	add r2, r1, #4
	str r3, [r5, r2]
	ldr r2, [r5, r2]
	cmp r2, #3
	blt _02086D8A
	add r1, r1, #4
	str r0, [r5, r1]
_02086D8A:
	mov r2, #0x49
	lsl r2, r2, #4
	add r1, r2, #0
	sub r1, #0x30
	ldr r1, [r5, r1]
	add r0, r5, r2
	lsl r3, r1, #2
	ldr r1, [r0, r3]
	sub r2, #0x30
	add r1, r1, #1
	str r1, [r0, r3]
	add r0, r5, #0
	ldr r1, [r5, r2]
	add r0, #0x3a
	bl sub_02088844
	ldr r0, _02086E5C ; =0x0000069E
	bl sub_02005748
	mov r0, #1
	str r0, [r5, #0x30]
_02086DB4:
	mov r2, #0x49
	lsl r2, r2, #4
	add r1, r2, #0
	sub r1, #0x30
	ldr r1, [r5, r1]
	add r0, r5, r2
	lsl r3, r1, #2
	ldr r1, [r0, r3]
	sub r2, #0x30
	add r1, r1, #1
	str r1, [r0, r3]
	add r0, r5, #0
	ldr r1, [r5, r2]
	add r0, #0x3a
	bl sub_02088844
	ldr r0, _02086E5C ; =0x0000069E
	bl sub_02005748
	b _02086E4E
_02086DDC:
	mov r2, #1
	add r1, r0, #0
	tst r1, r2
	beq _02086E02
	ldr r3, [r5, #0x20]
	mov r1, #0x1a
	mul r1, r3
	add r3, r5, r1
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	lsl r1, r1, #1
	add r1, r3, r1
	ldrh r1, [r1, #0x3a]
	bl sub_02088898
	add r4, r0, #0
	mov r0, #1
	str r0, [r5, #0x30]
	b _02086E4E
_02086E02:
	ldr r1, _02086E60 ; =0x000005C8
	ldr r1, [r5, r1]
	cmp r1, #1
	bne _02086E2A
	ldr r2, [r5, #0x20]
	mov r1, #0x1a
	mul r1, r2
	add r2, r5, r1
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	lsl r1, r1, #1
	add r1, r2, r1
	ldrh r1, [r1, #0x3a]
	mov r2, #0
	bl sub_02088898
	add r4, r0, #0
	mov r0, #0
	str r0, [r5, #0x30]
	b _02086E4E
_02086E2A:
	mov r1, #2
	add r3, r0, #0
	tst r3, r1
	beq _02086E3E
	ldr r1, _02086E64 ; =0x0000E007
	add r0, r5, #0
	bl sub_02088898
	add r4, r0, #0
	b _02086E4E
_02086E3E:
	add r1, #0xfe
	tst r0, r1
	beq _02086E4E
	ldr r1, _02086E68 ; =0x0000E006
	add r0, r5, #0
	bl sub_02088898
	add r4, r0, #0
_02086E4E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02086E54: .word 0x021BF67C
_02086E58: .word 0x0000045C
_02086E5C: .word 0x0000069E
_02086E60: .word 0x000005C8
_02086E64: .word 0x0000E007
_02086E68: .word 0x0000E006
	thumb_func_end sub_02086D38

	thumb_func_start sub_02086E6C
sub_02086E6C: ; 0x02086E6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #0
	bne _02086ECE
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02086E96
	bl sub_0201D2E8
	mov r1, #0x12
	bl _s32_div_f
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	b _02086EB2
_02086E96:
	cmp r0, #1
	bne _02086EB2
	bl sub_0201D2E8
	mov r1, #0x12
	bl _s32_div_f
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, #0x12
	bl sub_0200B1EC
	add r6, r0, #0
_02086EB2:
	ldr r0, [r4, #0x18]
	add r1, r6, #0
	bl sub_02023810
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [r4, #0x18]
	add r4, #0x1c
	add r1, r4, #0
	mov r2, #0xa
	bl sub_02023DF0
	pop {r4, r5, r6, pc}
_02086ECE:
	cmp r0, #3
	bne _02086F0E
	bl sub_0201D2E8
	add r1, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	ldr r0, [r5, r0]
	add r1, #0x58
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02023810
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [r4, #0x18]
	add r4, #0x1c
	add r1, r4, #0
	mov r2, #0xa
	bl sub_02023DF0
	pop {r4, r5, r6, pc}
_02086F0E:
	mov r0, #1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02086E6C

	thumb_func_start sub_02086F14
sub_02086F14: ; 0x02086F14
	push {r4, r5}
	ldr r1, _02086F34 ; =0x000001DE
	ldr r2, _02086F38 ; =0x0000FFFF
	mov r5, #1
	mov r3, #0
_02086F1E:
	ldrh r4, [r0]
	cmp r4, r2
	beq _02086F2E
	cmp r4, r1
	beq _02086F2A
	add r5, r3, #0
_02086F2A:
	add r0, r0, #2
	b _02086F1E
_02086F2E:
	add r0, r5, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02086F34: .word 0x000001DE
_02086F38: .word 0x0000FFFF
	thumb_func_end sub_02086F14

	thumb_func_start sub_02086F3C
sub_02086F3C: ; 0x02086F3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_02006840
	add r5, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	ldr r1, _02087114 ; =0x0000FFFF
	lsl r0, r0, #1
	add r0, r4, r0
	add r0, #0xd8
	strh r1, [r0]
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _02086F86
	mov r0, #0x12
	bl sub_02073C74
	mov r3, #0xa
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r4, #4]
	add r6, r0, #0
	mov r2, #5
	bl sub_02073D80
	add r0, r6, #0
	bl sub_020181C4
_02086F86:
	mov r1, #0x56
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	cmp r0, #0
	beq _02086FAC
	add r0, r4, #0
	sub r1, #0x40
	add r0, #0xd8
	add r1, r4, r1
	bl sub_0200220C
	cmp r0, #0
	beq _02086FAC
	add r0, r4, #0
	add r0, #0xd8
	bl sub_02086F14
	cmp r0, #0
	beq _02086FB6
_02086FAC:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02086E6C
	b _02086FDA
_02086FB6:
	mov r0, #0x46
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0xd8
	bl sub_020021B0
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x1c
	add r1, #0xd8
	bl sub_020021B0
	add r1, r4, #0
	ldr r0, [r5, #0x18]
	add r1, #0xd8
	bl sub_02023D28
_02086FDA:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r7, #0xe7
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_02086FEC:
	ldr r0, [r5, r7]
	bl sub_020067D0
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #7
	blt _02086FEC
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A4E4
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A4E4
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A6DC
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A6DC
	mov r7, #0xad
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_0208702A:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0208702A
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021964
	bl sub_0200A878
	ldr r1, _02087118 ; =0x000004AC
	mov r0, #0x12
	ldr r1, [r4, r1]
	bl sub_02018238
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _0208706A
	ldr r1, _0208711C ; =0x000004B4
	mov r0, #0x12
	ldr r1, [r4, r1]
	bl sub_02018238
	ldr r1, _02087120 ; =0x000004BC
	mov r0, #0x12
	ldr r1, [r4, r1]
	bl sub_02018238
_0208706A:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #7
	bl sub_02019044
	bl sub_0201E958
	bl sub_0201F8B4
	mov r0, #0x16
	lsl r0, r0, #4
	mov r1, #0xee
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl sub_0208765C
	mov r0, #0
	bl sub_02002C28
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02087124 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	mov r0, #2
	bl sub_02002C60
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _020870B4
	bl sub_020237BC
_020870B4:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	ldr r0, [sp, #0x10]
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x12
	bl sub_0201807C
	ldr r0, _02087128 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02087114: .word 0x0000FFFF
_02087118: .word 0x000004AC
_0208711C: .word 0x000004B4
_02087120: .word 0x000004BC
_02087124: .word 0xFFFF1FFF
_02087128: .word 0x021BF6DC
	thumb_func_end sub_02086F3C

	thumb_func_start sub_0208712C
sub_0208712C: ; 0x0208712C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x50
	str r0, [sp]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, _02087168 ; =0x0000FFFF
	ldr r1, [sp]
	strh r0, [r4, #0x1c]
	mov r0, #0x20
	bl sub_02023790
	str r0, [r4, #0x18]
	mov r1, #0
	str r1, [r4, #0x44]
	str r1, [r4, #0x48]
	ldr r0, [sp, #0x18]
	str r1, [r4, #0x10]
	str r0, [r4, #0x4c]
	str r1, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02087168: .word 0x0000FFFF
	thumb_func_end sub_0208712C

	thumb_func_start sub_0208716C
sub_0208716C: ; 0x0208716C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0208717A
	bl sub_02022974
_0208717A:
	cmp r4, #0
	bne _02087182
	bl sub_02022974
_02087182:
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0208716C

	thumb_func_start sub_02087190
sub_02087190: ; 0x02087190
	push {r3, lr}
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _020871A8 ; =0x027E0000
	ldr r1, _020871AC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	; .align 2, 0
_020871A8: .word 0x027E0000
_020871AC: .word 0x00003FF8
	thumb_func_end sub_02087190

	thumb_func_start sub_020871B0
sub_020871B0: ; 0x020871B0
	ldr r2, [r1, #0]
	str r2, [r0, #0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r2, [r1, #0xc]
	str r2, [r0, #0xc]
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x10]
	ldr r1, [r1, #0x4c]
	str r1, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020871B0

	thumb_func_start sub_020871CC
sub_020871CC: ; 0x020871CC
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _020871E8 ; =0x020F28DC
	add r3, sp, #0
	mov r2, #5
_020871D6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020871D6
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_020871E8: .word 0x020F28DC
	thumb_func_end sub_020871CC

	thumb_func_start sub_020871EC
sub_020871EC: ; 0x020871EC
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02087310 ; =0x020F24FC
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02087314 ; =0x020F2670
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
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _02087318 ; =0x020F2750
	add r3, sp, #0x38
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
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _0208731C ; =0x020F2814
	add r3, sp, #0x1c
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
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02087320 ; =0x020F25AC
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
	mov r0, #0
	bl sub_0208732C
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x12
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x12
	bl sub_02019690
	mov r0, #1
	lsl r0, r0, #0x1a
	add r4, r0, #0
	ldr r2, [r0, #0]
	ldr r1, _02087324 ; =0xFFFF1FFF
	add r4, #0x48
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0]
	ldrh r3, [r4]
	mov r2, #0x3f
	mov r1, #0x14
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r4]
	add r4, r0, #0
	add r4, #0x4a
	ldrh r5, [r4]
	mov r1, #0x1f
	bic r5, r2
	orr r1, r5
	orr r1, r3
	strh r1, [r4]
	add r1, r0, #0
	mov r2, #0xff
	add r1, #0x40
	strh r2, [r1]
	mov r1, #0x40
	add r0, #0x44
	strh r1, [r0]
	ldr r0, _02087328 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	add sp, #0x80
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02087310: .word 0x020F24FC
_02087314: .word 0x020F2670
_02087318: .word 0x020F2750
_0208731C: .word 0x020F2814
_02087320: .word 0x020F25AC
_02087324: .word 0xFFFF1FFF
_02087328: .word 0x04001050
	thumb_func_end sub_020871EC

	thumb_func_start sub_0208732C
sub_0208732C: ; 0x0208732C
	push {r4, lr}
	add r4, r0, #0
	lsl r1, r4, #0x18
	mov r0, #1
	lsr r1, r1, #0x18
	bl sub_0201FF0C
	lsl r1, r4, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	bl sub_0201FF0C
	lsl r1, r4, #0x18
	mov r0, #4
	lsr r1, r1, #0x18
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	lsl r1, r4, #0x18
	mov r0, #0x10
	lsr r1, r1, #0x18
	bl sub_0201FF0C
	lsl r1, r4, #0x18
	mov r0, #1
	lsr r1, r1, #0x18
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF74
	pop {r4, pc}
	thumb_func_end sub_0208732C

	thumb_func_start sub_0208737C
sub_0208737C: ; 0x0208737C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02006840
	add r7, r0, #0
	ldr r0, _0208752C ; =0x0000045C
	mov r1, #4
	str r1, [r4, r0]
	add r0, #0xc
	add r0, r4, r0
	mov r1, #0
	bl sub_02088260
	ldr r6, _02087530 ; =0x00000464
	mov r0, #0x16
	ldr r3, [r4, r6]
	mov r5, #0xc
	lsl r0, r0, #4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r5, r6, #4
	ldr r0, [r4, r0]
	ldr r3, [r3, r5]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
	ldr r3, [r4, r6]
	mov r5, #0xc
	mov r0, #0x16
	lsl r0, r0, #4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r6, #8
	ldr r0, [r4, r0]
	ldr r3, [r3, r6]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	ldr r6, _02087530 ; =0x00000464
	mov r0, #1
	ldr r1, [r4, r6]
	mov r5, #0xc
	add r3, r1, #0
	eor r3, r0
	mov r0, #0x16
	lsl r0, r0, #4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r5, r6, #4
	ldr r0, [r4, r0]
	ldr r3, [r3, r5]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
	ldr r1, [r4, r6]
	mov r0, #1
	add r3, r1, #0
	eor r3, r0
	mov r5, #0xc
	mov r0, #0x16
	lsl r0, r0, #4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r6, #8
	ldr r0, [r4, r0]
	ldr r3, [r3, r6]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	mov r1, #0x46
	ldr r0, _02087534 ; =0x0000FFFF
	lsl r1, r1, #2
	strh r0, [r4, r1]
	ldr r0, [r7, #0x18]
	cmp r0, #0
	beq _02087430
	add r1, r4, r1
	mov r2, #0x20
	bl sub_02023DF0
_02087430:
	add r1, r4, #0
	mov r0, #1
	add r1, #0xd8
	mov r2, #0x40
	bl MIi_CpuClear16
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _02087476
	mov r0, #0x12
	bl sub_02073C74
	mov r3, #0xa
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r4, #4]
	add r5, r0, #0
	mov r2, #5
	bl sub_02073D80
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B538
	add r0, r5, #0
	bl sub_020181C4
_02087476:
	ldr r0, [r7, #0x44]
	cmp r0, #0
	beq _02087480
	mov r0, #1
	str r0, [r4, #0x14]
_02087480:
	ldr r2, [r4, #0]
	mov r1, #0x5a
	lsl r1, r1, #2
	lsl r3, r2, #2
	ldr r2, _02087538 ; =0x020F2850
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r2, [r2, r3]
	ldr r1, [r4, r1]
	mov r3, #0x12
	bl sub_0200B29C
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x10
	sub r1, #0xc
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #8
	mov r3, #0x12
	bl sub_0200B29C
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x10
	ldr r0, [r4, r1]
	mov r1, #7
	bl sub_0200B1EC
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x6c
	add r0, r4, r1
	bl sub_020021F0
	mov r1, #0x56
	lsl r1, r1, #2
	strh r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r1, #1
	str r1, [r4, #0x20]
	sub r1, r1, #2
	str r1, [r4, #0x24]
	str r1, [r4, #0x28]
	str r0, [r4, #0x30]
	ldr r2, _0208753C ; =0x00000484
	str r0, [r4, #0x34]
	str r1, [r4, r2]
	add r1, r2, #4
	str r0, [r4, r1]
	add r2, #8
	str r0, [r4, r2]
	ldr r1, [r4, #0xc]
	ldr r2, _02087534 ; =0x0000FFFF
	lsl r1, r1, #1
	add r1, r4, r1
	add r1, #0xd8
	strh r2, [r1]
	mov r1, #0x49
	add r3, r4, #0
	add r2, r0, #0
	lsl r1, r1, #4
_02087506:
	add r0, r0, #1
	str r2, [r3, r1]
	add r3, r3, #4
	cmp r0, #7
	blt _02087506
	ldr r0, [r4, #0]
	cmp r0, #4
	bne _02087520
	ldr r0, _02087540 ; =0x0000049C
	mov r1, #1
	add sp, #0x10
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02087520:
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208752C: .word 0x0000045C
_02087530: .word 0x00000464
_02087534: .word 0x0000FFFF
_02087538: .word 0x020F2850
_0208753C: .word 0x00000484
_02087540: .word 0x0000049C
	thumb_func_end sub_0208737C

	thumb_func_start sub_02087544
sub_02087544: ; 0x02087544
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, r1, #0
	bl sub_02006840
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _02087654
	mov r0, #0xc8
	mov r1, #0x12
	bl sub_02023790
	add r7, r0, #0
	mov r0, #6
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r5, r0]
	ldr r0, [r4, #0x48]
	bl sub_0207999C
	add r6, r0, #0
	ldr r0, [r4, #0x48]
	bl sub_020799A0
	str r0, [sp, #0x10]
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x48]
	mov r1, #1
	add r3, r6, #0
	bl sub_0200BD40
	ldr r0, [sp, #0x10]
	cmp r6, r0
	beq _020875A8
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x48]
	ldr r3, [sp, #0x10]
	mov r1, #2
	bl sub_0200BD40
	ldr r0, [r4, #0x44]
	add r0, r0, #2
	str r0, [r4, #0x44]
	b _020875B8
_020875A8:
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x48]
	mov r1, #2
	add r3, r6, #0
	bl sub_0200BD40
_020875B8:
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _020875CE
	add r0, r5, #0
	add r0, #0xd8
	bl sub_02086F14
	cmp r0, #0
	beq _02087604
_020875CE:
	mov r0, #0x12
	bl sub_02073C74
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r5, #4]
	add r6, r0, #0
	mov r2, #1
	bl sub_02073D80
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B538
	add r0, r6, #0
	bl sub_020181C4
	b _02087632
_02087604:
	mov r1, #0x56
	lsl r1, r1, #2
	ldrh r1, [r5, r1]
	ldr r0, _02087658 ; =0x0000FFFF
	lsl r1, r1, #1
	add r1, r5, r1
	add r1, #0xd8
	strh r0, [r1]
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0xd8
	bl sub_02023D28
	mov r1, #0
	str r1, [sp]
	mov r0, #0x5a
	str r1, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r7, #0
	add r3, r1, #0
	bl sub_0200B48C
_02087632:
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, #0xc
	ldr r1, [r5, r1]
	ldr r2, [r4, #0x44]
	mov r3, #0x12
	bl sub_0200B29C
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #1
	str r0, [r5, #0x14]
	add r0, r7, #0
	bl sub_020237BC
_02087654:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02087658: .word 0x0000FFFF
	thumb_func_end sub_02087544

	thumb_func_start sub_0208765C
sub_0208765C: ; 0x0208765C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_02087664:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xa
	blt _02087664
	add r0, r6, #0
	mov r1, #4
	bl sub_02019044
	add r0, r6, #0
	mov r1, #2
	bl sub_02019044
	add r0, r6, #0
	mov r1, #1
	bl sub_02019044
	add r0, r6, #0
	mov r1, #0
	bl sub_02019044
	mov r0, #0x12
	add r1, r6, #0
	bl sub_02018238
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0208765C

	thumb_func_start sub_0208769C
sub_0208769C: ; 0x0208769C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	mov r0, #0x60
	add r4, r1, #0
	mov r1, #0
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02007130
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0xc
	add r1, r0, #0
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x12
	mov r1, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #4
	add r2, r6, #0
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #0xe
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #6
	add r2, r6, #0
	bl sub_0200710C
	mov r3, #0
	mov r0, #0xe
	str r3, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #7
	add r2, r6, #0
	bl sub_0200710C
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x12
	bl sub_02002E98
	ldr r0, [r5, #0x18]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0x16
	lsl r0, r0, #4
	mov r1, #4
	add r2, r1, #0
	ldr r0, [r5, r0]
	add r2, #0xfc
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #6
	mov r0, #4
	lsl r1, r1, #6
	mov r2, #0x12
	bl sub_02002E98
	mov r3, #0x4b
	mov r0, #0x12
	lsl r3, r3, #4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #1
	add r3, r5, r3
	bl sub_020071B4
	ldr r1, _020877C0 ; =0x000004AC
	str r0, [r5, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020877C0: .word 0x000004AC
	thumb_func_end sub_0208769C

	thumb_func_start sub_020877C4
sub_020877C4: ; 0x020877C4
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _020877F0 ; =0x020F250C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x12
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_020877F0: .word 0x020F250C
	thumb_func_end sub_020877C4

	thumb_func_start sub_020877F4
sub_020877F4: ; 0x020877F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x12
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r1, #0x63
	lsl r1, r1, #2
	mov r0, #0x2c
	add r1, r5, r1
	mov r2, #0x12
	bl sub_020095C4
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #4
	mov r2, #1
	add r0, r5, r0
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r6, #0
	add r4, r5, #0
_0208783E:
	mov r0, #2
	add r1, r6, #0
	mov r2, #0x12
	bl sub_02009714
	mov r1, #0xad
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0208783E
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #0xa
	bl sub_02009A4C
	mov r1, #0xb1
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #0x12
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	bl sub_02009B04
	mov r1, #0xb2
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x12
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #0xc
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0xb3
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x12
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #0xe
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0x2d
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, #0]
	cmp r0, #1
	bne _02087926
	ldr r0, [r5, #4]
	ldr r2, [r5, #8]
	mov r1, #0
	bl sub_02079D8C
	ldr r3, _020879D0 ; =0x000004B8
	add r1, r0, #0
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x13
	mov r2, #0
	add r3, r5, r3
	bl sub_02006F50
	ldr r1, _020879D4 ; =0x000004B4
	str r0, [r5, r1]
	add r0, r1, #4
	mov r1, #2
	ldr r0, [r5, r0]
	lsl r1, r1, #8
	bl DC_FlushRange
	bl sub_02079FD0
	add r1, r0, #0
	mov r0, #0x13
	lsl r2, r0, #6
	add r2, r5, r2
	mov r3, #0x12
	bl sub_02006F88
	ldr r1, _020879D8 ; =0x000004BC
	str r0, [r5, r1]
	add r0, r1, #4
	ldr r0, [r5, r0]
	mov r1, #0x80
	bl DC_FlushRange
_02087926:
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #0xb
	bl sub_02009A4C
	mov r1, #0xb5
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r2, #1
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x12
	sub r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009B04
	mov r1, #0xb6
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x12
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #0xd
	bl sub_02009BC4
	mov r1, #0xb7
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x12
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #0xf
	bl sub_02009BC4
	mov r1, #0x2e
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	bl sub_0200A328
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A328
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_020879D0: .word 0x000004B8
_020879D4: .word 0x000004B4
_020879D8: .word 0x000004BC
	thumb_func_end sub_020877F4

	thumb_func_start sub_020879DC
sub_020879DC: ; 0x020879DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r0, [r4, #0]
	bl sub_02021D28
	ldr r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0xc]
	lsl r1, r0, #4
	ldr r0, _02087A0C ; =0x020F2988
	ldr r0, [r0, r1]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02087A0C: .word 0x020F2988
	thumb_func_end sub_020879DC

	thumb_func_start sub_02087A10
sub_02087A10: ; 0x02087A10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0xad
	str r1, [sp, #0xc]
	mov r0, #1
	lsl r2, r2, #2
	str r0, [sp, #0x10]
	ldr r0, [r6, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r6, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r6, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r6, r0]
	add r2, #0x30
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r6, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	mov r1, #1
	mov r3, #0xad
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r6, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r6, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r6, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r6, r2]
	add r3, #0x54
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r6, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #2
	str r0, [sp, #0x2c]
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r6, r0
	str r0, [sp, #0x30]
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r1, #5
	mov r7, #0
	str r1, [sp, #0x34]
	str r7, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r7, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	mov r0, #0x12
	ldr r4, _02087BDC ; =0x020F2984
	str r0, [sp, #0x58]
	add r5, r6, #0
_02087ACC:
	ldr r0, [r4, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r4, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #8]
	bl sub_02021D6C
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0xc]
	bl sub_02021F58
	add r7, r7, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r7, #9
	blt _02087ACC
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r7, _02087BDC ; =0x020F2984
	mov r5, #0
	add r4, r6, #0
_02087B2E:
	ldr r0, _02087BE0 ; =sub_020879DC
	mov r1, #0x10
	mov r2, #5
	mov r3, #0x12
	bl sub_0200679C
	mov r1, #0xe7
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	bl sub_0201CED0
	mov r1, #0xd2
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	str r1, [r0, #0]
	mov r1, #0xcb
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r4, r4, #4
	str r1, [r0, #4]
	ldr r1, [r7, #0]
	add r7, #0x10
	lsl r1, r1, #0xc
	str r1, [r0, #8]
	str r5, [r0, #0xc]
	add r5, r5, #1
	cmp r5, #7
	blt _02087B2E
	ldr r2, [r6, #0xc]
	mov r7, #0
	cmp r2, #0
	ble _02087BAE
	mov r5, #0x50
	add r4, r6, #0
_02087B76:
	lsl r0, r5, #0xc
	str r0, [sp, #0x34]
	mov r0, #0x27
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0xd9
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x2b
	bl sub_02021D6C
	ldr r2, [r6, #0xc]
	add r7, r7, #1
	add r5, #0xc
	add r4, r4, #4
	cmp r7, r2
	blt _02087B76
_02087BAE:
	mov r1, #0x56
	lsl r1, r1, #2
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrh r1, [r6, r1]
	add r0, r6, r0
	bl sub_02088E1C
	add r0, r6, #0
	add r1, sp, #0x2c
	bl sub_02087BE4
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02087BDC: .word 0x020F2984
_02087BE0: .word sub_020879DC
	thumb_func_end sub_02087A10

	thumb_func_start sub_02087BE4
sub_02087BE4: ; 0x02087BE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #6
	add r5, r1, #0
	lsl r0, r0, #0xe
	str r0, [r5, #8]
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl sub_02021AA0
	mov r1, #0xe5
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #0]
	cmp r0, #7
	bhi _02087CDA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02087C1C: ; jump table
	.short _02087C2C - _02087C1C - 2 ; case 0
	.short _02087C94 - _02087C1C - 2 ; case 1
	.short _02087C86 - _02087C1C - 2 ; case 2
	.short _02087C4E - _02087C1C - 2 ; case 3
	.short _02087C78 - _02087C1C - 2 ; case 4
	.short _02087C6A - _02087C1C - 2 ; case 5
	.short _02087C5C - _02087C1C - 2 ; case 6
	.short _02087C78 - _02087C1C - 2 ; case 7
_02087C2C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02087C40
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x30
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C40:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C4E:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x33
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C5C:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x37
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C6A:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x36
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C78:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x35
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C86:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x2f
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C94:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x32
	bl sub_02021D6C
	ldr r0, [r4, #0x10]
	cmp r0, #2
	beq _02087CDA
	ldr r1, [r4, #0xc]
	mov r0, #0xd
	mul r0, r1
	add r0, #0x50
	lsl r0, r0, #0xc
	str r0, [r5, #8]
	mov r0, #0x1b
	lsl r0, r0, #0xc
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl sub_02021AA0
	mov r1, #0xe6
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldr r0, [r4, r1]
	bne _02087CD4
	mov r1, #0x2d
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087CD4:
	mov r1, #0x2e
	bl sub_02021D6C
_02087CDA:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02087BE4

	thumb_func_start sub_02087CDC
sub_02087CDC: ; 0x02087CDC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	cmp r0, #6
	bhi _02087D5A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02087CFE: ; jump table
	.short _02087D0C - _02087CFE - 2 ; case 0
	.short _02087D5A - _02087CFE - 2 ; case 1
	.short _02087D20 - _02087CFE - 2 ; case 2
	.short _02087D5A - _02087CFE - 2 ; case 3
	.short _02087D34 - _02087CFE - 2 ; case 4
	.short _02087D5A - _02087CFE - 2 ; case 5
	.short _02087D48 - _02087CFE - 2 ; case 6
_02087D0C:
	mov r0, #1
	ldr r1, [r4, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	b _02087D5A
_02087D20:
	mov r0, #3
	ldr r1, [r4, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	b _02087D5A
_02087D34:
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	b _02087D5A
_02087D48:
	ldr r0, [r4, #8]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	bl sub_02021C50
	add r0, r5, #0
	bl sub_020067D0
_02087D5A:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02087CDC

	thumb_func_start sub_02087D64
sub_02087D64: ; 0x02087D64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x40]
	add r5, r2, #0
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x48]
	mov r2, #1
	str r1, [sp, #0x48]
	ldr r1, [sp, #0x40]
	str r0, [sp, #0x10]
	ldr r6, [r1, #0]
	add r7, r3, #0
	add r1, r6, #0
	eor r1, r2
	str r1, [sp, #0x18]
	ldr r1, [r5, #0]
	ldr r4, [sp, #0x44]
	cmp r1, #4
	bls _02087D8E
	b _02087F32
_02087D8E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02087D9A: ; jump table
	.short _02087DA4 - _02087D9A - 2 ; case 0
	.short _02087DF0 - _02087D9A - 2 ; case 1
	.short _02087E16 - _02087D9A - 2 ; case 2
	.short _02087EB0 - _02087D9A - 2 ; case 3
	.short _02087F32 - _02087D9A - 2 ; case 4
_02087DA4:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xe
	lsl r0, r0, #6
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, #0x1f
	add r1, r7, #6
	add r3, r6, #0
	bl sub_02006E60
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02088260
	ldr r0, _02087F38 ; =0x020F24DC
	lsl r2, r6, #4
	ldrb r1, [r0, r7]
	ldr r0, [sp, #0x4c]
	ldr r3, _02087F3C ; =0x000E0F00
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r0, r0, r2
	lsl r2, r1, #4
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_02088E58
	ldr r0, [r5, #0]
	add sp, #0x28
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02087DF0:
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	mov r3, #0xee
	bl sub_02019184
	mov r2, #3
	lsl r1, r6, #0x18
	add r3, r2, #0
	ldr r0, [sp, #0x10]
	lsr r1, r1, #0x18
	sub r3, #0x53
	bl sub_02019184
	ldr r0, [r5, #0]
	add sp, #0x28
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02087E16:
	mov r1, #0xc
	add r0, r6, #0
	mul r0, r1
	ldr r2, [r4, r0]
	str r0, [sp, #0x1c]
	sub r2, #0x18
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	sub r1, #0xd
	cmp r0, r1
	bge _02087E6E
	ldr r0, _02087F40 ; =sub_02087CDC
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x12
	bl sub_0200679C
	bl sub_0201CED0
	add r7, r0, #0
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x1c]
	str r0, [r7, #0]
	mov r0, #0
	str r0, [r7, #4]
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x1c]
	bl sub_02021D28
	ldr r0, [r0, #0]
	str r0, [r7, #8]
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x1c]
	bl sub_02021D28
	ldr r0, [r0, #4]
	mov r1, #0xa
	str r0, [r7, #0xc]
	ldr r0, [sp, #0x1c]
	mvn r1, r1
	str r1, [r4, r0]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_02087E6E:
	ldr r0, [sp, #0x18]
	mov r1, #0xc
	add r7, r0, #0
	add r5, r4, #4
	mul r7, r1
	ldr r0, [r5, r7]
	sub r0, #0xa
	str r0, [r5, r7]
	add r0, r1, #0
	ldr r2, [r5, r7]
	sub r0, #0xd0
	cmp r2, r0
	bge _02087E8C
	sub r1, #0xd0
	str r1, [r5, r7]
_02087E8C:
	ldr r3, [sp, #0x1c]
	lsl r1, r6, #0x18
	ldr r0, [sp, #0x10]
	ldr r3, [r4, r3]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #0x18
	ldr r3, [r5, r7]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02087EB0:
	ldr r1, [sp, #0x18]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	str r2, [sp, #0x20]
	add r7, r4, #4
	ldr r2, [r7, r2]
	ldr r1, [sp, #0x20]
	sub r2, #0xa
	str r2, [r7, r1]
	ldr r2, [r7, r1]
	add r1, r0, #0
	sub r1, #0xd0
	cmp r2, r1
	bge _02087ED4
	ldr r1, [sp, #0x20]
	sub r0, #0xd0
	str r0, [r7, r1]
_02087ED4:
	mov r0, #0xc
	mul r0, r6
	str r0, [sp, #0x24]
	ldr r3, [sp, #0x24]
	lsl r1, r6, #0x18
	ldr r0, [sp, #0x10]
	ldr r3, [r4, r3]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x20]
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x10]
	ldr r3, [r7, r3]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	ldr r0, [sp, #0x24]
	mov r1, #0xa
	ldr r0, [r4, r0]
	mvn r1, r1
	cmp r0, r1
	bne _02087F32
	ldr r0, [sp, #0x20]
	sub r1, #0xb9
	ldr r0, [r7, r0]
	cmp r0, r1
	bne _02087F32
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [sp, #0x40]
	ldr r1, [r0, #0]
	mov r0, #1
	eor r1, r0
	ldr r0, [sp, #0x40]
	str r1, [r0, #0]
	ldr r0, [sp, #0x10]
	bl sub_02088240
	ldr r0, _02087F44 ; =0x0000069B
	bl sub_02005748
_02087F32:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02087F38: .word 0x020F24DC
_02087F3C: .word 0x000E0F00
_02087F40: .word sub_02087CDC
_02087F44: .word 0x0000069B
	thumb_func_end sub_02087D64

	thumb_func_start sub_02087F48
sub_02087F48: ; 0x02087F48
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0xa
	add r5, r0, #0
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02087F48

	thumb_func_start sub_02087F78
sub_02087F78: ; 0x02087F78
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r2, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	mov r4, #0x10
	bl sub_02002D7C
	cmp r0, #0x82
	ble _02087F92
	mov r4, #0
_02087F92:
	add r0, r5, #0
	mov r1, #1
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	ldr r0, _02087FBC ; =0x000E0F01
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02087FBC: .word 0x000E0F01
	thumb_func_end sub_02087F78

	thumb_func_start sub_02087FC0
sub_02087FC0: ; 0x02087FC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	mov r1, #1
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, #0xf4
	str r0, [sp, #0x10]
	mov r0, #0x16
	lsl r0, r0, #4
	mov r1, #0xee
	lsl r1, r1, #2
	add r4, r2, #0
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r2, #1
	mov r1, #0xf2
	lsl r1, r1, #2
	str r2, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x8e
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	sub r0, #0xd8
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, [r5, #0]
	cmp r0, #4
	bne _02088064
	mov r0, #0
	str r0, [sp]
	mov r0, #0xe
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r3, #1
	mov r2, #0x16
	str r3, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r1, #9
	bl sub_0200710C
	mov r0, #0x46
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x3a
	bl sub_02088844
	mov r0, #0x4b
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	sub r0, #0xe8
	ldr r1, [r1, #0x14]
	ldr r3, _02088224 ; =0x000E0F00
	str r1, [sp]
	ldr r1, _02088228 ; =0x00000A0A
	add r0, r5, r0
	mov r2, #4
	bl sub_02088E58
	b _0208808E
_02088064:
	mov r0, #0x46
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x3a
	bl sub_02088844
	mov r1, #0x4b
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	ldr r3, _02088224 ; =0x000E0F00
	ldr r0, [r0, #0x14]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	sub r0, #0xe8
	add r0, r5, r0
	sub r1, #0xac
	bl sub_02088E58
_0208808E:
	mov r2, #2
	str r2, [sp]
	mov r3, #0x16
	str r3, [sp, #4]
	mov r1, #0x37
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r1, r1, #4
	str r1, [sp, #0x10]
	lsl r0, r3, #4
	add r1, #0x68
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #7
	bl sub_0201A7E8
	ldr r1, [r5, #0xc]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	add r4, r0, #1
	mov r0, #3
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r2, #2
	mov r1, #0xe7
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	mov r0, #0x16
	str r1, [sp, #0x10]
	lsl r0, r0, #4
	add r1, #0x4c
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #0xa
	bl sub_0201A7E8
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #3
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r2, #2
	mov r1, #0xf
	add r4, #9
	lsl r3, r4, #0x18
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r1, r1, #6
	mov r0, #0x16
	str r1, [sp, #0x10]
	lsl r0, r0, #4
	add r1, #0x78
	ldr r0, [r5, r0]
	add r1, r5, r1
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, _0208822C ; =0x00000438
	mov r1, #1
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r1, [r5, #0]
	cmp r1, #5
	bne _02088146
	mov r2, #0x61
	ldr r0, _0208822C ; =0x00000438
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_02087F78
	ldr r0, _0208822C ; =0x00000438
	add r0, r5, r0
	bl sub_0201A954
_02088146:
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r2, #4
	ldr r1, _02088230 ; =0x00000448
	str r2, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x84
	str r0, [sp, #0x10]
	add r0, #0xdc
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _02088230 ; =0x00000448
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	mov r2, #0x5e
	ldr r0, _02088230 ; =0x00000448
	lsl r2, r2, #2
	ldr r1, [r5, #0]
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_02087F48
	add r0, r6, #0
	bl sub_02006840
	mov r1, #0x46
	lsl r1, r1, #2
	ldrh r2, [r5, r1]
	ldr r0, _02088234 ; =0x0000FFFF
	cmp r2, r0
	beq _020881BC
	add r0, r5, #0
	add r0, #0xd8
	add r1, r5, r1
	bl sub_020021B0
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	add r1, r5, #0
	ldr r0, _02088238 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, #0xd8
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
_020881BC:
	mov r0, #0xee
	lsl r0, r0, #2
	mov r4, #0
	add r7, r5, r0
_020881C4:
	add r0, r4, #4
	lsl r6, r0, #4
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x78
	str r0, [sp, #0x10]
	add r0, #0xe8
	ldr r0, [r5, r0]
	add r1, r7, r6
	mov r2, #2
	mov r3, #0
	bl sub_0201A7E8
	add r0, r7, r6
	mov r1, #0
	bl sub_0201ADA4
	add r4, r4, #1
	cmp r4, #3
	blt _020881C4
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	ldr r1, _0208823C ; =0x00000428
	str r3, [sp, #0xc]
	mov r0, #0x84
	str r0, [sp, #0x10]
	add r0, #0xdc
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl sub_0201A7E8
	ldr r0, _0208823C ; =0x00000428
	mov r1, #0
	add r0, r5, r0
	bl sub_0201ADA4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02088224: .word 0x000E0F00
_02088228: .word 0x00000A0A
_0208822C: .word 0x00000438
_02088230: .word 0x00000448
_02088234: .word 0x0000FFFF
_02088238: .word 0x000E0F01
_0208823C: .word 0x00000428
	thumb_func_end sub_02087FC0

	thumb_func_start sub_02088240
sub_02088240: ; 0x02088240
	push {r4, lr}
	add r4, r1, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02019060
	mov r0, #1
	eor r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #2
	bl sub_02019060
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02088240

	thumb_func_start sub_02088260
sub_02088260: ; 0x02088260
	push {r3, r4}
	mov r3, #0xc
	add r4, r1, #0
	mul r4, r3
	mov r2, #0xee
	str r2, [r0, r4]
	add r2, r3, #0
	sub r2, #0x5c
	add r4, r0, r4
	str r2, [r4, #4]
	mov r4, #1
	eor r1, r4
	mul r3, r1
	sub r4, #0xc
	str r4, [r0, r3]
	add r0, r0, r3
	str r2, [r0, #4]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02088260

	thumb_func_start sub_02088288
sub_02088288: ; 0x02088288
	cmp r0, r2
	blt _0208828E
	add r0, r1, #0
_0208828E:
	cmp r0, r1
	bge _02088294
	sub r0, r2, #1
_02088294:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02088288

	thumb_func_start sub_02088298
sub_02088298: ; 0x02088298
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _0208833C
	ldr r3, [r5, #0x20]
	mov r2, #0x1a
	mul r2, r3
	ldr r0, [r5, #0x1c]
	add r3, r5, r2
	lsl r2, r0, #1
	add r2, r3, r2
	ldrh r2, [r2, #0x3a]
	lsl r6, r1, #3
	ldr r1, _02088340 ; =0x020F2904
	str r2, [sp]
	ldr r1, [r1, r6]
	mov r2, #0xd
	add r0, r0, r1
	mov r1, #0
	bl sub_02088288
	add r4, r0, #0
	ldr r0, _02088344 ; =0x020F2908
	ldr r1, [r5, #0x20]
	ldr r0, [r0, r6]
	mov r2, #6
	add r0, r1, r0
	mov r1, #0
	bl sub_02088288
	add r7, r0, #0
	ldr r0, _02088340 ; =0x020F2904
	add r6, r0, r6
	b _0208831A
_020882DC:
	ldr r1, [r5, #0x28]
	cmp r1, #0
	bne _020882FE
	ldr r1, _02088348 ; =0x0000D004
	cmp r0, r1
	bne _020882FE
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _020882FE
	ldr r0, [r5, #0x2c]
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xd
	bl sub_02088288
	add r4, r0, #0
	b _0208831A
_020882FE:
	ldr r0, [r6, #0]
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xd
	bl sub_02088288
	add r4, r0, #0
	ldr r0, [r6, #4]
	mov r1, #0
	add r0, r7, r0
	mov r2, #6
	bl sub_02088288
	add r7, r0, #0
_0208831A:
	mov r0, #0x1a
	mul r0, r7
	lsl r1, r4, #1
	add r0, r5, r0
	add r0, r1, r0
	ldrh r0, [r0, #0x3a]
	ldr r1, _02088348 ; =0x0000D004
	cmp r0, r1
	beq _020882DC
	ldr r1, [sp]
	cmp r1, r0
	bne _02088338
	ldr r1, _0208834C ; =0x0000E001
	cmp r0, r1
	bhi _020882DC
_02088338:
	str r4, [r5, #0x1c]
	str r7, [r5, #0x20]
_0208833C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02088340: .word 0x020F2904
_02088344: .word 0x020F2908
_02088348: .word 0x0000D004
_0208834C: .word 0x0000E001
	thumb_func_end sub_02088298

	thumb_func_start sub_02088350
sub_02088350: ; 0x02088350
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xd3
	lsl r0, r0, #2
	mov r4, #0
	ldr r0, [r5, r0]
	add r6, r4, #0
	add r7, r4, #0
	bl sub_02021D34
	cmp r0, #0
	bne _0208836A
	mov r7, #1
_0208836A:
	ldr r0, _02088448 ; =0x021BF67C
	ldr r1, [r0, #0x4c]
	mov r0, #0x40
	tst r0, r1
	beq _0208838A
	ldr r0, _0208844C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r6, #1
	add r4, r4, #1
_0208838A:
	ldr r0, _02088448 ; =0x021BF67C
	ldr r1, [r0, #0x4c]
	mov r0, #0x80
	tst r0, r1
	beq _020883AA
	ldr r0, _0208844C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r6, #2
	add r4, r4, #1
_020883AA:
	ldr r0, _02088448 ; =0x021BF67C
	ldr r1, [r0, #0x4c]
	mov r0, #0x20
	tst r0, r1
	beq _020883CA
	ldr r0, _0208844C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r6, #3
	add r4, r4, #1
_020883CA:
	ldr r0, _02088448 ; =0x021BF67C
	ldr r1, [r0, #0x4c]
	mov r0, #0x10
	tst r0, r1
	beq _020883EA
	ldr r0, _0208844C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r6, #4
	add r4, r4, #1
_020883EA:
	ldr r0, _02088448 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _02088410
	ldr r0, _0208844C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xc
	str r0, [r5, #0x1c]
	mov r0, #0
	str r0, [r5, #0x20]
	add r4, r4, #1
_02088410:
	add r0, r5, #0
	bl sub_0208903C
	ldr r1, _02088450 ; =0x000005C8
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #1
	bne _02088424
	mov r6, #0
	add r4, r4, #1
_02088424:
	cmp r7, #1
	bne _02088432
	add r0, r5, #0
	add r1, r6, #0
	mov r4, #0
	bl sub_02088454
_02088432:
	cmp r4, #0
	beq _02088446
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02088298
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02088454
_02088446:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02088448: .word 0x021BF67C
_0208844C: .word 0x000005DC
_02088450: .word 0x000005C8
	thumb_func_end sub_02088350

	thumb_func_start sub_02088454
sub_02088454: ; 0x02088454
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x20]
	cmp r1, #0
	beq _0208849E
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _02088478
	cmp r0, r1
	beq _02088478
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x27
	bl sub_02021D6C
_02088478:
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #4
	add r0, #0x1a
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	sub r1, r0, #1
	mov r0, #0x13
	mul r0, r1
	add r0, #0x5b
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0xc
	bl sub_02021C50
	b _020884DA
_0208849E:
	mov r0, #0x1a
	mul r0, r1
	add r1, r5, r0
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #1
	add r0, r1, r0
	ldrh r1, [r0, #0x3a]
	ldr r0, _02088504 ; =0x0000E002
	sub r1, r1, r0
	ldr r0, _02088508 ; =0x020F251C
	lsl r2, r1, #1
	ldrh r0, [r0, r2]
	ldr r2, _0208850C ; =0x020F24E8
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	mov r0, #0xd3
	lsl r0, r0, #2
	ldrb r1, [r2, r1]
	ldr r0, [r5, r0]
	bl sub_02021D6C
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl sub_02021C50
_020884DA:
	mov r0, #0xb4
	strh r0, [r5, #0x38]
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021E50
	ldr r0, [r5, #0x1c]
	lsl r1, r4, #3
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x20]
	str r0, [r5, #0x28]
	ldr r0, _02088510 ; =0x020F2904
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _020884FE
	str r0, [r5, #0x2c]
_020884FE:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02088504: .word 0x0000E002
_02088508: .word 0x020F251C
_0208850C: .word 0x020F24E8
_02088510: .word 0x020F2904
	thumb_func_end sub_02088454

	thumb_func_start sub_02088514
sub_02088514: ; 0x02088514
	push {r3, lr}
	ldrh r1, [r0]
	add r1, #0x14
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r2, r1
	bls _0208852A
	mov r1, #0
	strh r1, [r0]
_0208852A:
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xa
	mul r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	add r0, #0xf
	lsl r1, r0, #5
	mov r0, #0x1d
	orr r1, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0
	mov r1, #0x3a
	mov r2, #2
	bl GX_LoadOBJPltt
	pop {r3, pc}
	thumb_func_end sub_02088514

	thumb_func_start sub_02088554
sub_02088554: ; 0x02088554
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x18]
	add r7, r1, #0
	mov r0, #2
	mov r1, #0x12
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	mov r4, #0
	bl sub_02023790
	str r0, [sp, #0x28]
	ldrh r1, [r7]
	ldr r0, _02088644 ; =0x0000FFFF
	cmp r1, r0
	beq _0208863A
	ldr r0, [sp, #0x54]
	ldr r6, [sp, #0x50]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x20]
	add r0, r0, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x30]
_0208858C:
	lsl r0, r4, #1
	ldrh r1, [r7, r0]
	ldr r0, _02088648 ; =0x00002FFF
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #2
	bhi _020885D8
	mov r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	add r2, r4, #0
	ldr r0, [sp, #0x1c]
	mul r2, r6
	add r0, r0, r2
	ldr r2, _0208864C ; =0x0000D001
	lsl r0, r0, #0x10
	sub r1, r1, r2
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r2, r1, #8
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	str r0, [sp, #0xc]
	mov r0, #0xc
	asr r2, r1, #1
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r1, r1, r2
	mov r2, #0
	ldr r0, [sp, #0x18]
	add r3, r2, #0
	bl sub_0201ADDC
	b _0208862E
_020885D8:
	ldr r0, _02088650 ; =0x0000D004
	cmp r1, r0
	bne _020885E2
	add r4, r4, #1
	b _02088630
_020885E2:
	add r0, sp, #0x38
	strh r1, [r0]
	ldr r1, _02088644 ; =0x0000FFFF
	strh r1, [r0, #2]
	mov r0, #0
	add r1, sp, #0x38
	add r2, r0, #0
	bl sub_02002D48
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r1, sp, #0x38
	bl sub_02023D28
	ldr r0, [sp, #0x20]
	sub r3, r6, r5
	str r0, [sp]
	ldr r0, [sp, #0x24]
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r3, r5, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	mov ip, r3
	add r5, r4, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	mul r5, r6
	add r3, r3, r5
	mov r5, ip
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x28]
	mov r1, #0
	add r3, r5, r3
	bl sub_0201D78C
_0208862E:
	add r4, r4, #1
_02088630:
	lsl r0, r4, #1
	ldrh r1, [r7, r0]
	ldr r0, _02088644 ; =0x0000FFFF
	cmp r1, r0
	bne _0208858C
_0208863A:
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02088644: .word 0x0000FFFF
_02088648: .word 0x00002FFF
_0208864C: .word 0x0000D001
_02088650: .word 0x0000D004
	thumb_func_end sub_02088554

	thumb_func_start sub_02088654
sub_02088654: ; 0x02088654
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r5, #0
	add r6, r1, #0
	str r5, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r1, r2, #0
	add r2, r6, #0
	add r3, r5, #0
	add r4, r0, #0
	str r5, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [r4, #0xc]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02088654

	thumb_func_start sub_02088678
sub_02088678: ; 0x02088678
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r0, #0
	str r1, [sp, #8]
	add r0, #0x30
	mov r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0201ADA4
	add r0, r6, #0
	ldr r3, _02088744 ; =0x000D0E0F
	add r0, #0x30
	add r1, r4, #0
	mov r2, #2
	bl sub_02088654
	mov r1, #2
	lsl r1, r1, #0xa
	bl DC_FlushRange
	add r7, r6, #0
	mov r4, #0
	add r7, #0x30
_020886A8:
	mov r0, #0
	str r0, [sp]
	add r0, r7, #0
	mov r1, #4
	mov r2, #2
	lsl r3, r4, #2
	str r5, [sp, #4]
	bl sub_02012C60
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #8
	bl DC_FlushRange
	ldr r1, _02088748 ; =0x020F24D8
	mov r2, #1
	ldrb r1, [r1, r4]
	add r0, r5, #0
	lsl r2, r2, #8
	lsl r1, r1, #5
	bl GXS_LoadOBJ
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _020886A8
	mov r0, #0x15
	mov r1, #0x12
	bl sub_02023790
	add r4, r0, #0
	mov r5, #0
_020886EA:
	ldr r0, [sp, #8]
	lsl r1, r5, #1
	ldrh r1, [r0, r1]
	add r0, sp, #0xc
	lsl r7, r5, #4
	strh r1, [r0]
	ldr r1, _0208874C ; =0x0000FFFF
	strh r1, [r0, #2]
	add r0, r6, r7
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02023D28
	ldr r3, _02088744 ; =0x000D0E0F
	add r0, r6, r7
	add r1, r4, #0
	mov r2, #2
	bl sub_02088654
	mov r1, #0x80
	add r7, r0, #0
	bl DC_FlushRange
	ldr r1, _02088750 ; =0x020F24F0
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	add r0, r7, #0
	lsl r1, r1, #5
	mov r2, #0x80
	bl GXS_LoadOBJ
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _020886EA
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02088744: .word 0x000D0E0F
_02088748: .word 0x020F24D8
_0208874C: .word 0x0000FFFF
_02088750: .word 0x020F24F0
	thumb_func_end sub_02088678

	thumb_func_start sub_02088754
sub_02088754: ; 0x02088754
	push {r3, r4, r5, lr}
	cmp r2, #0
	bne _0208875E
	ldr r1, _02088830 ; =0x0000D003
	b _02088764
_0208875E:
	sub r2, r2, #1
	lsl r2, r2, #1
	ldrh r1, [r1, r2]
_02088764:
	ldr r4, _02088834 ; =0x0000E003
	cmp r1, r4
	bgt _02088794
	bge _020887BA
	ldr r2, _02088838 ; =0x0000D004
	cmp r1, r2
	bgt _0208878C
	sub r2, r2, #3
	sub r2, r1, r2
	bmi _020887BC
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02088784: ; jump table
	.short _020887BA - _02088784 - 2 ; case 0
	.short _020887BA - _02088784 - 2 ; case 1
	.short _020887BA - _02088784 - 2 ; case 2
	.short _020887BA - _02088784 - 2 ; case 3
_0208878C:
	ldr r2, _0208883C ; =0x0000E002
	cmp r1, r2
	beq _020887BA
	b _020887BC
_02088794:
	add r2, r4, #1
	cmp r1, r2
	bgt _0208879E
	beq _020887BA
	b _020887BC
_0208879E:
	add r2, r4, #2
	sub r2, r1, r2
	cmp r2, #3
	bhi _020887BC
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020887B2: ; jump table
	.short _020887BA - _020887B2 - 2 ; case 0
	.short _020887BA - _020887B2 - 2 ; case 1
	.short _020887BA - _020887B2 - 2 ; case 2
	.short _020887BA - _020887B2 - 2 ; case 3
_020887BA:
	mov r1, #1
_020887BC:
	mov r4, #0
	add r5, r3, #0
	mov r2, #1
_020887C2:
	add r4, r4, #1
	strh r2, [r5]
	add r5, r5, #2
	cmp r4, #3
	blt _020887C2
	strh r1, [r3]
	cmp r1, #1
	beq _02088822
	ldr r5, _02088840 ; =0x020F2BBE
	mov r2, #0
_020887D6:
	ldrh r4, [r5]
	cmp r1, r4
	bne _020887F8
	mov r4, #6
	ldr r5, _02088840 ; =0x020F2BBE
	mul r4, r2
	add r4, r5, r4
	mov r1, #0
	add r5, r3, #0
_020887E8:
	ldrh r2, [r4]
	add r1, r1, #1
	add r4, r4, #2
	strh r2, [r5]
	add r5, r5, #2
	cmp r1, #3
	blt _020887E8
	b _02088822
_020887F8:
	ldrh r4, [r5, #4]
	cmp r1, r4
	bne _0208881A
	mov r4, #6
	ldr r5, _02088840 ; =0x020F2BBE
	mul r4, r2
	add r4, r5, r4
	mov r1, #0
	add r5, r3, #0
_0208880A:
	ldrh r2, [r4]
	add r1, r1, #1
	add r4, r4, #2
	strh r2, [r5]
	add r5, r5, #2
	cmp r1, #3
	blt _0208880A
	b _02088822
_0208881A:
	add r2, r2, #1
	add r5, r5, #6
	cmp r2, #0x52
	blo _020887D6
_02088822:
	add r1, r3, #0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl sub_02088678
	pop {r3, r4, r5, pc}
	nop
_02088830: .word 0x0000D003
_02088834: .word 0x0000E003
_02088838: .word 0x0000D004
_0208883C: .word 0x0000E002
_02088840: .word 0x020F2BBE
	thumb_func_end sub_02088754

	thumb_func_start sub_02088844
sub_02088844: ; 0x02088844
	push {r4, r5, r6, r7}
	mov r4, #0
	ldr r3, _02088890 ; =0x02100C40
	add r5, r4, #0
	add r6, r0, #0
	lsl r2, r1, #2
_02088850:
	ldr r7, [r3, r2]
	add r4, r4, #1
	ldrh r7, [r7, r5]
	add r5, r5, #2
	strh r7, [r6]
	add r6, r6, #2
	cmp r4, #0xd
	blt _02088850
	mov r3, #0x14
	ldr r4, _02088894 ; =0x02100C54
	mul r3, r1
	mov r2, #0
	add r3, r4, r3
	add r1, r2, #0
_0208886C:
	add r6, r1, #0
	add r4, r1, #0
	add r5, r0, #0
_02088872:
	ldr r7, [r3, #0]
	add r6, r6, #1
	ldrh r7, [r7, r4]
	add r4, r4, #2
	strh r7, [r5, #0x1a]
	add r5, r5, #2
	cmp r6, #0xd
	blt _02088872
	add r2, r2, #1
	add r3, r3, #4
	add r0, #0x1a
	cmp r2, #5
	blt _0208886C
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02088890: .word 0x02100C40
_02088894: .word 0x02100C54
	thumb_func_end sub_02088844

	thumb_func_start sub_02088898
sub_02088898: ; 0x02088898
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _02088BCC ; =0x00002FFD
	add r5, r1, #0
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r6, r2, #0
	cmp r0, #1
	bhi _020888B0
	mov r5, #1
_020888B0:
	ldr r0, [r4, #0]
	cmp r0, #4
	bne _020888C4
	ldr r0, _02088BD0 ; =0x00001FFE
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #3
	bhi _020888C4
	mov r5, #1
_020888C4:
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D34
	cmp r0, #0
	bne _020888EC
	ldr r0, _02088BD4 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _020888EC
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	add sp, #0x10
	mov r0, #2
	pop {r4, r5, r6, pc}
_020888EC:
	ldr r0, _02088BD8 ; =0x0000E002
	cmp r5, r0
	bgt _0208890A
	blt _020888F6
	b _02088A1E
_020888F6:
	ldr r3, _02088BDC ; =0x0000D002
	cmp r5, r3
	bgt _02088908
	sub r0, r3, #1
	cmp r5, r0
	blt _02088908
	beq _0208892C
	cmp r5, r3
	beq _0208897E
_02088908:
	b _02088B5E
_0208890A:
	add r0, r0, #1
	sub r0, r5, r0
	cmp r0, #5
	bls _02088914
	b _02088B5E
_02088914:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02088920: ; jump table
	.short _02088A1E - _02088920 - 2 ; case 0
	.short _02088A1E - _02088920 - 2 ; case 1
	.short _02088A1E - _02088920 - 2 ; case 2
	.short _020889CC - _02088920 - 2 ; case 3
	.short _02088A60 - _02088920 - 2 ; case 4
	.short _02088B10 - _02088920 - 2 ; case 5
_0208892C:
	add r0, r4, #0
	add r0, #0xd8
	str r0, [sp]
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	ldr r3, _02088BE0 ; =0x0000D001
	mov r1, #0x52
	str r0, [sp, #4]
	mov r0, #0x2a
	mov r2, #1
	bl sub_02088D08
	cmp r0, #0
	bne _0208894C
	b _02088C6E
_0208894C:
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	ldr r0, _02088BE4 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	add r4, #0xd8
	add r1, r4, #0
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
	ldr r0, _02088BE8 ; =0x000005EB
	bl sub_02005748
	b _02088C6E
_0208897E:
	add r0, r4, #0
	add r0, #0xd8
	str r0, [sp]
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	mov r1, #0x52
	mov r2, #2
	str r0, [sp, #4]
	mov r0, #0x48
	bl sub_02088D08
	cmp r0, #0
	beq _02088A6A
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	ldr r0, _02088BE4 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	add r4, #0xd8
	add r1, r4, #0
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
	ldr r0, _02088BE8 ; =0x000005EB
	bl sub_02005748
	b _02088C6E
_020889CC:
	mov r3, #0x56
	lsl r3, r3, #2
	ldrh r3, [r4, r3]
	add r2, r4, #0
	mov r0, #0
	mov r1, #0x52
	add r2, #0xd8
	bl sub_02088C9C
	cmp r0, #0
	beq _02088A6A
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	add r1, r4, #0
	ldr r0, _02088BE4 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, #0xd8
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
	mov r0, #0x4a
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, _02088BE8 ; =0x000005EB
	bl sub_02005748
	b _02088C6E
_02088A1E:
	mov r1, #0x46
	lsl r1, r1, #4
	ldr r0, _02088BD8 ; =0x0000E002
	ldr r2, [r4, r1]
	sub r5, r5, r0
	cmp r2, r5
	beq _02088A6A
	mov r2, #0
	sub r0, r1, #4
	str r2, [r4, r0]
	str r5, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x3a
	bl sub_02088844
	mov r0, #0x49
	lsl r0, r0, #4
	add r2, r4, r0
	lsl r1, r5, #2
	ldr r0, [r2, r1]
	add r0, r0, #1
	str r0, [r2, r1]
	ldr r0, _02088BEC ; =0x0000069E
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_02021CAC
	b _02088C6E
_02088A60:
	mov r1, #0x56
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	cmp r0, #0
	bne _02088A6C
_02088A6A:
	b _02088C6E
_02088A6C:
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r4, r0
	ldr r2, _02088BF0 ; =0x0000FFFF
	add r0, #0xd8
	strh r2, [r0]
	ldrh r0, [r4, r1]
	sub r0, r0, #1
	strh r0, [r4, r1]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _02088AA0
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A954
	b _02088ABE
_02088AA0:
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	ldr r0, _02088BE4 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0xd8
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
_02088ABE:
	ldr r0, _02088BF4 ; =0x000004C4
	mov r3, #0x5f
	add r1, r4, r0
	lsl r3, r3, #2
	str r1, [sp]
	ldr r1, [r4, r3]
	add r2, r3, #0
	str r1, [sp, #4]
	sub r2, #0x24
	sub r0, #0xcc
	add r1, r4, #0
	sub r3, #0x22
	ldrh r2, [r4, r2]
	add r0, r4, r0
	add r1, #0xd8
	add r3, r4, r3
	bl sub_02088754
	mov r1, #0x56
	lsl r1, r1, #2
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrh r1, [r4, r1]
	ldr r2, [r4, #0xc]
	add r0, r4, r0
	bl sub_02088E1C
	ldr r0, _02088BF8 ; =0x000004A4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, _02088BFC ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_02021CAC
	b _02088C6E
_02088B10:
	ldr r0, _02088C00 ; =0x000005C4
	ldr r0, [r4, r0]
	bl sub_02015760
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02088B56
	ldr r0, _02088C04 ; =0x000005E2
	bl sub_02005748
	ldr r0, _02088C08 ; =0x000004A8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	mov r1, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	add sp, #0x10
	mov r0, #3
	pop {r4, r5, r6, pc}
_02088B56:
	ldr r0, _02088C0C ; =0x0000045C
	mov r1, #5
	str r1, [r4, r0]
	b _02088C6E
_02088B5E:
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #4
	bne _02088B72
	cmp r5, #1
	bne _02088B72
	add sp, #0x10
	mov r0, #2
	pop {r4, r5, r6, pc}
_02088B72:
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq _02088C6E
	lsl r0, r1, #1
	add r0, r4, r0
	add r0, #0xd8
	strh r5, [r0]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	add r1, r4, #0
	ldr r0, _02088BE4 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, #0xd8
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
	mov r1, #0x56
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	add r0, r0, #1
	strh r0, [r4, r1]
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrh r1, [r4, r1]
	ldr r2, [r4, #0xc]
	add r0, r4, r0
	bl sub_02088E1C
	ldr r0, _02088BE8 ; =0x000005EB
	b _02088C10
	; .align 2, 0
_02088BCC: .word 0x00002FFD
_02088BD0: .word 0x00001FFE
_02088BD4: .word 0x021BF6BC
_02088BD8: .word 0x0000E002
_02088BDC: .word 0x0000D002
_02088BE0: .word 0x0000D001
_02088BE4: .word 0x000E0F01
_02088BE8: .word 0x000005EB
_02088BEC: .word 0x0000069E
_02088BF0: .word 0x0000FFFF
_02088BF4: .word 0x000004C4
_02088BF8: .word 0x000004A4
_02088BFC: .word 0x000005DC
_02088C00: .word 0x000005C4
_02088C04: .word 0x000005E2
_02088C08: .word 0x000004A8
_02088C0C: .word 0x0000045C
_02088C10:
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021FE0
	mov r3, #8
	ldr r0, _02088C74 ; =0x04000050
	mov r1, #0
	mov r2, #7
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x3c
	bl sub_02021D6C
	mov r0, #1
	str r0, [r4, #0x34]
	ldr r0, _02088C78 ; =0x000004C4
	mov r3, #0x5f
	add r1, r4, r0
	lsl r3, r3, #2
	str r1, [sp]
	ldr r1, [r4, r3]
	add r2, r3, #0
	str r1, [sp, #4]
	sub r2, #0x24
	sub r0, #0xcc
	add r1, r4, #0
	sub r3, #0x22
	ldrh r2, [r4, r2]
	add r0, r4, r0
	add r1, #0xd8
	add r3, r4, r3
	bl sub_02088754
_02088C6E:
	mov r0, #2
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02088C74: .word 0x04000050
_02088C78: .word 0x000004C4
	thumb_func_end sub_02088898

	thumb_func_start sub_02088C7C
sub_02088C7C: ; 0x02088C7C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #3
_02088C84:
	add r0, r1, #1
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02088288
	add r1, r0, #0
	lsl r0, r1, #1
	ldrh r0, [r5, r0]
	cmp r0, #1
	beq _02088C84
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02088C7C

	thumb_func_start sub_02088C9C
sub_02088C9C: ; 0x02088C9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r1, #0
	str r2, [sp]
	cmp r3, #0
	bne _02088CB0
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02088CB0:
	sub r1, r3, #1
	lsl r1, r1, #1
	str r1, [sp, #4]
	ldrh r3, [r2, r1]
	cmp r4, r0
	bge _02088CFE
	mov r1, #6
	ldr r2, _02088D04 ; =0x020F2BBE
	mul r1, r4
	add r5, r2, r1
	mov r7, #0
_02088CC6:
	add r2, r7, #0
	add r6, r5, #0
_02088CCA:
	ldrh r1, [r6]
	cmp r3, r1
	bne _02088CEE
	cmp r3, #1
	beq _02088CEE
	mov r0, #6
	ldr r1, _02088D04 ; =0x020F2BBE
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	bl sub_02088C7C
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	strh r0, [r2, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088CEE:
	add r2, r2, #1
	add r6, r6, #2
	cmp r2, #3
	blt _02088CCA
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, r0
	blt _02088CC6
_02088CFE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02088D04: .word 0x020F2BBE
	thumb_func_end sub_02088C9C

	thumb_func_start sub_02088D08
sub_02088D08: ; 0x02088D08
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, r1, #0
	ldr r1, [sp, #0x1c]
	mov lr, r2
	mov ip, r3
	cmp r1, #0
	beq _02088D24
	sub r1, r1, #1
	ldr r6, [sp, #0x18]
	lsl r7, r1, #1
	ldrh r5, [r6, r7]
	cmp r5, #1
	bne _02088D28
_02088D24:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02088D28:
	add r2, r4, #0
	cmp r4, r0
	bge _02088D5A
	mov r1, #6
	ldr r3, _02088E00 ; =0x020F2BBE
	mul r1, r4
	add r3, r3, r1
_02088D36:
	ldrh r1, [r3]
	cmp r5, r1
	bne _02088D52
	add r3, r2, #0
	mov r0, #6
	mul r3, r0
	mov r0, lr
	ldr r2, _02088E00 ; =0x020F2BBE
	lsl r1, r0, #1
	add r0, r2, r3
	ldrh r0, [r1, r0]
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088D52:
	add r2, r2, #1
	add r3, r3, #6
	cmp r2, r0
	blt _02088D36
_02088D5A:
	cmp r4, r0
	bge _02088D8A
	mov r2, lr
	ldr r1, _02088E00 ; =0x020F2BBE
	lsl r2, r2, #1
	add r1, r1, r2
	mov r2, #6
	mul r2, r4
	add r2, r1, r2
_02088D6C:
	ldrh r1, [r2]
	cmp r5, r1
	bne _02088D82
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02088E00 ; =0x020F2BBE
	ldrh r0, [r0, r1]
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088D82:
	add r4, r4, #1
	add r2, r2, #6
	cmp r4, r0
	blt _02088D6C
_02088D8A:
	ldr r1, _02088E04 ; =0x0000D001
	mov r0, ip
	cmp r0, r1
	beq _02088DA4
	add r1, r1, #1
	mov r0, ip
	cmp r0, r1
	beq _02088DC4
	ldr r1, _02088E08 ; =0x0000E006
	mov r0, ip
	cmp r0, r1
	beq _02088DE4
	b _02088DFC
_02088DA4:
	ldr r1, _02088E0C ; =0x020F2954
	mov r2, #0
_02088DA8:
	ldrh r0, [r1]
	cmp r5, r0
	bne _02088DBA
	ldr r0, _02088E10 ; =0x020F2956
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088DBA:
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #0xc
	blo _02088DA8
	b _02088DFC
_02088DC4:
	ldr r1, _02088E14 ; =0x020F292C
	mov r2, #0
_02088DC8:
	ldrh r0, [r1]
	cmp r5, r0
	bne _02088DDA
	ldr r0, _02088E18 ; =0x020F292E
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088DDA:
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #0xa
	blo _02088DC8
	b _02088DFC
_02088DE4:
	cmp r5, #0x26
	bne _02088DF0
	mov r0, #0x24
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088DF0:
	cmp r5, #0x76
	bne _02088DFC
	mov r0, #0x74
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088DFC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02088E00: .word 0x020F2BBE
_02088E04: .word 0x0000D001
_02088E08: .word 0x0000E006
_02088E0C: .word 0x020F2954
_02088E10: .word 0x020F2956
_02088E14: .word 0x020F292C
_02088E18: .word 0x020F292E
	thumb_func_end sub_02088D08

	thumb_func_start sub_02088E1C
sub_02088E1C: ; 0x02088E1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	mov r4, #0
	str r0, [sp]
	str r1, [sp, #4]
	cmp r6, #0
	ble _02088E40
	add r5, r0, #0
	mov r7, #0x2b
_02088E30:
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl sub_02021D6C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02088E30
_02088E40:
	ldr r0, [sp, #4]
	cmp r0, r6
	beq _02088E52
	lsl r1, r0, #2
	ldr r0, [sp]
	ldr r0, [r0, r1]
	mov r1, #0x2c
	bl sub_02021D6C
_02088E52:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02088E1C

	thumb_func_start sub_02088E58
sub_02088E58: ; 0x02088E58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x30]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0
	str r3, [sp, #0x14]
	str r2, [sp, #0x30]
	bl sub_0201ADA4
	ldr r1, _02088F38 ; =0x020F24E0
	ldr r0, [sp, #0x10]
	mov r7, #0
	ldrb r4, [r1, r0]
	mov r6, #0x10
_02088E78:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0201AE78
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x10
	mov r3, #0x26
	bl sub_0201AE78
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x10
	mov r3, #0x4c
	bl sub_0201AE78
	add r7, r7, #1
	add r6, #0x20
	cmp r7, #6
	blt _02088E78
	mov r7, #0
	add r6, r7, #0
_02088EC6:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x10
	mov r3, #0x13
	bl sub_0201AE78
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x10
	mov r3, #0x39
	bl sub_0201AE78
	add r7, r7, #1
	add r6, #0x20
	cmp r7, #7
	blt _02088EC6
	ldr r0, [sp, #0x10]
	mov r1, #0x14
	ldr r2, _02088F3C ; =0x02100C54
	mul r1, r0
	mov r7, #0
	mov r6, #4
	add r4, r2, r1
_02088F08:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	add r3, r6, #0
	str r0, [sp, #0xc]
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl sub_02088554
	add r7, r7, #1
	add r6, #0x13
	add r4, r4, #4
	cmp r7, #5
	blt _02088F08
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02088F38: .word 0x020F24E0
_02088F3C: .word 0x02100C54
	thumb_func_end sub_02088E58

	thumb_func_start sub_02088F40
sub_02088F40: ; 0x02088F40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	mov r7, #0
	add r1, r0, #0
_02088F4C:
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _02088F82
	mov r0, #0
	ldr r4, _02088FC4 ; =0x020F2984
	str r0, [sp, #4]
	add r5, r6, #0
_02088F5A:
	ldr r0, [r5, #0]
	ldr r1, [r4, #8]
	bl sub_02021D6C
	ldr r0, [sp, #4]
	add r4, #0x10
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r0, #3
	blt _02088F5A
	ldr r1, _02088FC8 ; =0x020F298C
	lsl r2, r7, #4
	lsl r0, r7, #2
	ldr r1, [r1, r2]
	ldr r0, [r6, r0]
	sub r1, r1, #3
	bl sub_02021D6C
	b _02088F8A
_02088F82:
	add r7, r7, #1
	add r1, r1, #4
	cmp r7, #3
	blt _02088F4C
_02088F8A:
	ldr r4, [sp]
	ldr r5, _02088FCC ; =0x020F29D4
	mov r7, #5
	add r4, #0x14
	add r6, #0x14
_02088F94:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02088FA4
	ldr r1, [r5, #8]
	ldr r0, [r6, #0]
	add r1, r1, #1
	bl sub_02021D6C
_02088FA4:
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x10
	add r6, r6, #4
	cmp r7, #7
	blt _02088F94
	mov r2, #0
	add r1, r2, #0
_02088FB4:
	ldr r0, [sp]
	add r2, r2, #1
	stmia r0!, {r1}
	str r0, [sp]
	cmp r2, #7
	blt _02088FB4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02088FC4: .word 0x020F2984
_02088FC8: .word 0x020F298C
_02088FCC: .word 0x020F29D4
	thumb_func_end sub_02088F40

	thumb_func_start sub_02088FD0
sub_02088FD0: ; 0x02088FD0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021FD0
	cmp r0, #0
	bne _0208903A
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bne _02089004
	mov r0, #0xc
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x20]
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x27
	bl sub_02021D6C
	b _02089010
_02089004:
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x27
	bl sub_02021D6C
_02089010:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _02089024
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	b _0208902C
_02089024:
	add r0, r4, #0
	mov r1, #0
	bl sub_02088454
_0208902C:
	mov r1, #0
	mov r0, #0xd3
	str r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021FE0
_0208903A:
	pop {r4, pc}
	thumb_func_end sub_02088FD0

	thumb_func_start sub_0208903C
sub_0208903C: ; 0x0208903C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #0
	mov ip, r0
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #4
	bne _02089050
	mov r0, #4
	mov ip, r0
_02089050:
	ldr r2, _020890EC ; =0x021BF6BC
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _020890E6
	ldrh r0, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov lr, r0
	ldrh r0, [r2, #0x1e]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r0, ip
	cmp r0, #0x47
	bhs _020890E6
	mov r0, #6
	mov r2, ip
	mul r0, r2
	ldr r2, _020890F0 ; =0x020F2A14
	add r2, r2, r0
	add r3, r2, #0
_02089078:
	ldrh r4, [r3, #2]
	ldrb r0, [r2]
	ldrb r6, [r2, #1]
	lsl r4, r4, #0x1e
	lsr r4, r4, #0x1e
	beq _0208908E
	cmp r4, #1
	beq _02089094
	cmp r4, #2
	beq _0208909A
	b _0208909E
_0208908E:
	mov r5, #0x1f
	mov r1, #0x16
	b _0208909E
_02089094:
	mov r5, #0x20
	mov r1, #0x16
	b _0208909E
_0208909A:
	mov r5, #0x10
	mov r1, #0x13
_0208909E:
	mov r4, lr
	cmp r4, r0
	blo _020890D8
	cmp r7, r6
	blo _020890D8
	add r4, r0, r5
	mov r0, lr
	cmp r0, r4
	bgt _020890D8
	add r0, r6, r1
	cmp r7, r0
	bgt _020890D8
	ldr r2, _020890F0 ; =0x020F2A14
	mov r1, #6
	mov r0, ip
	mul r1, r0
	add r2, r2, r1
	ldrb r0, [r2, #4]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	ldr r0, [sp]
	str r1, [r0, #0x1c]
	ldrb r0, [r2, #5]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	ldr r0, [sp]
	str r1, [r0, #0x20]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020890D8:
	mov r0, ip
	add r0, r0, #1
	add r2, r2, #6
	add r3, r3, #6
	mov ip, r0
	cmp r0, #0x47
	blo _02089078
_020890E6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020890EC: .word 0x021BF6BC
_020890F0: .word 0x020F2A14
	thumb_func_end sub_0208903C

	.rodata


	.global Unk_020F24D8
Unk_020F24D8: ; 0x020F24D8
	.incbin "incbin/arm9_rodata.bin", 0xD898, 0xD89C - 0xD898

	.global Unk_020F24DC
Unk_020F24DC: ; 0x020F24DC
	.incbin "incbin/arm9_rodata.bin", 0xD89C, 0xD8A0 - 0xD89C

	.global Unk_020F24E0
Unk_020F24E0: ; 0x020F24E0
	.incbin "incbin/arm9_rodata.bin", 0xD8A0, 0xD8A8 - 0xD8A0

	.global Unk_020F24E8
Unk_020F24E8: ; 0x020F24E8
	.incbin "incbin/arm9_rodata.bin", 0xD8A8, 0xD8B0 - 0xD8A8

	.global Unk_020F24F0
Unk_020F24F0: ; 0x020F24F0
	.incbin "incbin/arm9_rodata.bin", 0xD8B0, 0xD8BC - 0xD8B0

	.global Unk_020F24FC
Unk_020F24FC: ; 0x020F24FC
	.incbin "incbin/arm9_rodata.bin", 0xD8BC, 0xD8CC - 0xD8BC

	.global Unk_020F250C
Unk_020F250C: ; 0x020F250C
	.incbin "incbin/arm9_rodata.bin", 0xD8CC, 0xD8DC - 0xD8CC

	.global Unk_020F251C
Unk_020F251C: ; 0x020F251C
	.incbin "incbin/arm9_rodata.bin", 0xD8DC, 0xD8EC - 0xD8DC

	.global Unk_020F252C
Unk_020F252C: ; 0x020F252C
	.incbin "incbin/arm9_rodata.bin", 0xD8EC, 0xD902 - 0xD8EC

	.global Unk_020F2542
Unk_020F2542: ; 0x020F2542
	.incbin "incbin/arm9_rodata.bin", 0xD902, 0xD91A - 0xD902

	.global Unk_020F255A
Unk_020F255A: ; 0x020F255A
	.incbin "incbin/arm9_rodata.bin", 0xD91A, 0xD934 - 0xD91A

	.global Unk_020F2574
Unk_020F2574: ; 0x020F2574
	.incbin "incbin/arm9_rodata.bin", 0xD934, 0xD94E - 0xD934

	.global Unk_020F258E
Unk_020F258E: ; 0x020F258E
	.incbin "incbin/arm9_rodata.bin", 0xD94E, 0xD96C - 0xD94E

	.global Unk_020F25AC
Unk_020F25AC: ; 0x020F25AC
	.incbin "incbin/arm9_rodata.bin", 0xD96C, 0xD988 - 0xD96C

	.global Unk_020F25C8
Unk_020F25C8: ; 0x020F25C8
	.incbin "incbin/arm9_rodata.bin", 0xD988, 0xD9A4 - 0xD988

	.global Unk_020F25E4
Unk_020F25E4: ; 0x020F25E4
	.incbin "incbin/arm9_rodata.bin", 0xD9A4, 0xD9C0 - 0xD9A4

	.global Unk_020F2600
Unk_020F2600: ; 0x020F2600
	.incbin "incbin/arm9_rodata.bin", 0xD9C0, 0xD9DC - 0xD9C0

	.global Unk_020F261C
Unk_020F261C: ; 0x020F261C
	.incbin "incbin/arm9_rodata.bin", 0xD9DC, 0xD9F8 - 0xD9DC

	.global Unk_020F2638
Unk_020F2638: ; 0x020F2638
	.incbin "incbin/arm9_rodata.bin", 0xD9F8, 0xDA14 - 0xD9F8

	.global Unk_020F2654
Unk_020F2654: ; 0x020F2654
	.incbin "incbin/arm9_rodata.bin", 0xDA14, 0xDA30 - 0xDA14

	.global Unk_020F2670
Unk_020F2670: ; 0x020F2670
	.incbin "incbin/arm9_rodata.bin", 0xDA30, 0xDA4C - 0xDA30

	.global Unk_020F268C
Unk_020F268C: ; 0x020F268C
	.incbin "incbin/arm9_rodata.bin", 0xDA4C, 0xDA68 - 0xDA4C

	.global Unk_020F26A8
Unk_020F26A8: ; 0x020F26A8
	.incbin "incbin/arm9_rodata.bin", 0xDA68, 0xDA84 - 0xDA68

	.global Unk_020F26C4
Unk_020F26C4: ; 0x020F26C4
	.incbin "incbin/arm9_rodata.bin", 0xDA84, 0xDAA0 - 0xDA84

	.global Unk_020F26E0
Unk_020F26E0: ; 0x020F26E0
	.incbin "incbin/arm9_rodata.bin", 0xDAA0, 0xDABC - 0xDAA0

	.global Unk_020F26FC
Unk_020F26FC: ; 0x020F26FC
	.incbin "incbin/arm9_rodata.bin", 0xDABC, 0xDAD8 - 0xDABC

	.global Unk_020F2718
Unk_020F2718: ; 0x020F2718
	.incbin "incbin/arm9_rodata.bin", 0xDAD8, 0xDAF4 - 0xDAD8

	.global Unk_020F2734
Unk_020F2734: ; 0x020F2734
	.incbin "incbin/arm9_rodata.bin", 0xDAF4, 0xDB10 - 0xDAF4

	.global Unk_020F2750
Unk_020F2750: ; 0x020F2750
	.incbin "incbin/arm9_rodata.bin", 0xDB10, 0xDB2C - 0xDB10

	.global Unk_020F276C
Unk_020F276C: ; 0x020F276C
	.incbin "incbin/arm9_rodata.bin", 0xDB2C, 0xDB48 - 0xDB2C

	.global Unk_020F2788
Unk_020F2788: ; 0x020F2788
	.incbin "incbin/arm9_rodata.bin", 0xDB48, 0xDB64 - 0xDB48

	.global Unk_020F27A4
Unk_020F27A4: ; 0x020F27A4
	.incbin "incbin/arm9_rodata.bin", 0xDB64, 0xDB80 - 0xDB64

	.global Unk_020F27C0
Unk_020F27C0: ; 0x020F27C0
	.incbin "incbin/arm9_rodata.bin", 0xDB80, 0xDB9C - 0xDB80

	.global Unk_020F27DC
Unk_020F27DC: ; 0x020F27DC
	.incbin "incbin/arm9_rodata.bin", 0xDB9C, 0xDBB8 - 0xDB9C

	.global Unk_020F27F8
Unk_020F27F8: ; 0x020F27F8
	.incbin "incbin/arm9_rodata.bin", 0xDBB8, 0xDBD4 - 0xDBB8

	.global Unk_020F2814
Unk_020F2814: ; 0x020F2814
	.incbin "incbin/arm9_rodata.bin", 0xDBD4, 0xDBF0 - 0xDBD4

	.global Unk_020F2830
Unk_020F2830: ; 0x020F2830
	.incbin "incbin/arm9_rodata.bin", 0xDBF0, 0xDC10 - 0xDBF0

	.global Unk_020F2850
Unk_020F2850: ; 0x020F2850
	.incbin "incbin/arm9_rodata.bin", 0xDC10, 0xDC30 - 0xDC10

	.global Unk_020F2870
Unk_020F2870: ; 0x020F2870
	.incbin "incbin/arm9_rodata.bin", 0xDC30, 0xDC54 - 0xDC30

	.global Unk_020F2894
Unk_020F2894: ; 0x020F2894
	.incbin "incbin/arm9_rodata.bin", 0xDC54, 0xDC78 - 0xDC54

	.global Unk_020F28B8
Unk_020F28B8: ; 0x020F28B8
	.incbin "incbin/arm9_rodata.bin", 0xDC78, 0xDC9C - 0xDC78

	.global Unk_020F28DC
Unk_020F28DC: ; 0x020F28DC
	.incbin "incbin/arm9_rodata.bin", 0xDC9C, 0xDCC4 - 0xDC9C

	.global Unk_020F2904
Unk_020F2904: ; 0x020F2904
	.incbin "incbin/arm9_rodata.bin", 0xDCC4, 0xDCEC - 0xDCC4

	.global Unk_020F292C
Unk_020F292C: ; 0x020F292C
	.incbin "incbin/arm9_rodata.bin", 0xDCEC, 0xDD14 - 0xDCEC

	.global Unk_020F2954
Unk_020F2954: ; 0x020F2954
	.incbin "incbin/arm9_rodata.bin", 0xDD14, 0xDD44 - 0xDD14

	.global Unk_020F2984
Unk_020F2984: ; 0x020F2984
	.incbin "incbin/arm9_rodata.bin", 0xDD44, 0xDDD4 - 0xDD44

	.global Unk_020F2A14
Unk_020F2A14: ; 0x020F2A14
	.incbin "incbin/arm9_rodata.bin", 0xDDD4, 0xDF7E - 0xDDD4

	.global Unk_020F2BBE
Unk_020F2BBE: ; 0x020F2BBE
	.incbin "incbin/arm9_rodata.bin", 0xDF7E, 0xE16C - 0xDF7E

	.global Unk_020F2DAC
Unk_020F2DAC: ; 0x020F2DAC
	.incbin "incbin/arm9_rodata.bin", 0xE16C, 0x10



	.data


	.global Unk_02100C40
Unk_02100C40: ; 0x02100C40
	.incbin "incbin/arm9_data.bin", 0x1F60, 0x1F74 - 0x1F60

	.global Unk_02100C54
Unk_02100C54: ; 0x02100C54
	.incbin "incbin/arm9_data.bin", 0x1F74, 0x64



	.bss


	.global Unk_021C0A30
Unk_021C0A30: ; 0x021C0A30
	.space 0x4

