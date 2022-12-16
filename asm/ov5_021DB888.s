	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021DB888
ov5_021DB888: ; 0x021DB888
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02050A60
	mov r1, #0x12
	add r7, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021DB8AA
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_021DB8AA:
	mov r2, #0x12
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	str r7, [r4, #4]
	ldr r0, [r7, #0xc]
	bl sub_020507E4
	str r0, [r4, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	str r6, [r4, r0]
	add r0, r0, #4
	str r5, [r4, r0]
	ldr r0, [sp]
	ldr r1, _021DB8D4 ; =ov5_021DB8D8
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DB8D4: .word ov5_021DB8D8
	thumb_func_end ov5_021DB888

	thumb_func_start ov5_021DB8D8
ov5_021DB8D8: ; 0x021DB8D8
	push {r3, r4, r5, lr}
	sub sp, #8
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #9
	bhi _021DB912
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DB8F4: ; jump table
	.short _021DB908 - _021DB8F4 - 2 ; case 0
	.short _021DB91E - _021DB8F4 - 2 ; case 1
	.short _021DB96C - _021DB8F4 - 2 ; case 2
	.short _021DB992 - _021DB8F4 - 2 ; case 3
	.short _021DB9A4 - _021DB8F4 - 2 ; case 4
	.short _021DB9C0 - _021DB8F4 - 2 ; case 5
	.short _021DB9D2 - _021DB8F4 - 2 ; case 6
	.short _021DB9F2 - _021DB8F4 - 2 ; case 7
	.short _021DBA3C - _021DB8F4 - 2 ; case 8
	.short _021DBA44 - _021DB8F4 - 2 ; case 9
_021DB908:
	ldr r0, [r4, #4]
	bl ov5_021DBF20
	cmp r0, #1
	beq _021DB914
_021DB912:
	b _021DBA4E
_021DB914:
	add r0, r4, #0
	mov r1, #1
	bl ov5_021DBA54
	b _021DBA4E
_021DB91E:
	bl ov5_021DBA7C
	add r0, r4, #0
	bl ov5_021DBA58
	cmp r0, #2
	bne _021DB940
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #2
	bl ov5_021DBA54
	b _021DBA4E
_021DB940:
	cmp r0, #0
	bne _021DB958
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #7
	bl ov5_021DBA54
	b _021DBA4E
_021DB958:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #8
	bl ov5_021DBA54
	b _021DBA4E
_021DB96C:
	ldr r0, [r4, #4]
	bl ov5_021E1014
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x62
	lsl r0, r0, #4
	bl sub_02005748
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0206B0F8
	add r0, r4, #0
	mov r1, #3
	bl ov5_021DBA54
	b _021DBA4E
_021DB992:
	bl ov5_021DBCD4
	cmp r0, #0
	bne _021DBA4E
	add r0, r4, #0
	mov r1, #4
	bl ov5_021DBA54
	b _021DBA4E
_021DB9A4:
	bl ov5_021DBCE0
	cmp r0, #0
	bne _021DB9B6
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	strh r1, [r0]
_021DB9B6:
	add r0, r4, #0
	mov r1, #5
	bl ov5_021DBA54
	b _021DBA4E
_021DB9C0:
	bl ov5_021DBCD4
	cmp r0, #0
	bne _021DBA4E
	add r0, r4, #0
	mov r1, #6
	bl ov5_021DBA54
	b _021DBA4E
_021DB9D2:
	mov r0, #0x62
	lsl r0, r0, #4
	bl sub_020057D4
	cmp r0, #0
	bne _021DBA4E
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov5_021E1020
	add r0, r4, #0
	mov r1, #9
	bl ov5_021DBA54
	b _021DBA4E
_021DB9F2:
	ldr r0, [r4, #8]
	bl sub_0206B0E8
	mov r1, #0x64
	sub r5, r1, r0
	add r0, r5, #0
	mov r1, #0xa
	bl sub_020E1F6C
	cmp r0, #0
	bne _021DBA0C
	mov r3, #1
	b _021DBA1E
_021DBA0C:
	add r0, r5, #0
	mov r1, #0x64
	bl sub_020E1F6C
	cmp r0, #0
	bne _021DBA1C
	mov r3, #2
	b _021DBA1E
_021DBA1C:
	mov r3, #3
_021DBA1E:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B60C
	add r0, r4, #0
	mov r1, #9
	bl ov5_021DBA54
	b _021DBA4E
_021DBA3C:
	mov r1, #9
	bl ov5_021DBA54
	b _021DBA4E
_021DBA44:
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DBA4E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DB8D8

	thumb_func_start ov5_021DBA54
ov5_021DBA54: ; 0x021DBA54
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov5_021DBA54

	thumb_func_start ov5_021DBA58
ov5_021DBA58: ; 0x021DBA58
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0206B0E8
	cmp r0, #0x64
	bne _021DBA78
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021DBA74
	mov r0, #1
	pop {r4, pc}
_021DBA74:
	mov r0, #2
	pop {r4, pc}
_021DBA78:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021DBA58

	thumb_func_start ov5_021DBA7C
ov5_021DBA7C: ; 0x021DBA7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	ldr r0, [r0, #4]
	bl sub_0203A4B4
	mov r2, #0
	str r0, [sp, #4]
	str r2, [sp, #0x18]
	cmp r0, #0
	bls _021DBAA2
	ldr r3, [sp]
	add r1, r2, #0
_021DBA96:
	ldr r0, [sp, #4]
	add r2, r2, #1
	str r1, [r3, #0x10]
	add r3, r3, #4
	cmp r2, r0
	blo _021DBA96
_021DBAA2:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	sub r1, r4, #7
	str r1, [sp, #0x14]
	add r1, r4, #7
	str r1, [sp, #0x10]
	sub r1, r0, #7
	add r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	cmp r0, #0
	bge _021DBAD2
	mov r0, #0
	str r0, [sp, #0x14]
_021DBAD2:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bge _021DBADC
	mov r0, #0
	str r0, [sp, #0xc]
_021DBADC:
	ldr r0, [sp, #4]
	mov r6, #0
	cmp r0, #0
	bls _021DBB62
	ldr r5, [sp]
_021DBAE6:
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r4, r0, #0
	beq _021DBB5A
	bl sub_02062950
	cmp r0, #8
	bhi _021DBB5A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DBB0A: ; jump table
	.short _021DBB5A - _021DBB0A - 2 ; case 0
	.short _021DBB1C - _021DBB0A - 2 ; case 1
	.short _021DBB1C - _021DBB0A - 2 ; case 2
	.short _021DBB5A - _021DBB0A - 2 ; case 3
	.short _021DBB1C - _021DBB0A - 2 ; case 4
	.short _021DBB1C - _021DBB0A - 2 ; case 5
	.short _021DBB1C - _021DBB0A - 2 ; case 6
	.short _021DBB1C - _021DBB0A - 2 ; case 7
	.short _021DBB1C - _021DBB0A - 2 ; case 8
_021DBB1C:
	add r0, r4, #0
	bl sub_02063020
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02063040
	ldr r1, [sp, #0x14]
	cmp r7, r1
	blt _021DBB5A
	ldr r1, [sp, #0x10]
	cmp r7, r1
	bgt _021DBB5A
	ldr r1, [sp, #0xc]
	cmp r0, r1
	blt _021DBB5A
	ldr r1, [sp, #8]
	cmp r0, r1
	bgt _021DBB5A
	add r0, r4, #0
	bl sub_02062948
	bl ov5_021DBB70
	cmp r0, #0
	bne _021DBB5A
	ldr r0, [sp, #0x18]
	str r4, [r5, #0x10]
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0x18]
_021DBB5A:
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	blo _021DBAE6
_021DBB62:
	mov r2, #0x11
	ldr r1, [sp, #0x18]
	ldr r0, [sp]
	lsl r2, r2, #4
	strh r1, [r0, r2]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DBA7C

	thumb_func_start ov5_021DBB70
ov5_021DBB70: ; 0x021DBB70
	sub r0, #0x33
	cmp r0, #3
	bhi _021DBB8E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DBB82: ; jump table
	.short _021DBB8A - _021DBB82 - 2 ; case 0
	.short _021DBB8A - _021DBB82 - 2 ; case 1
	.short _021DBB8A - _021DBB82 - 2 ; case 2
	.short _021DBB8A - _021DBB82 - 2 ; case 3
_021DBB8A:
	mov r0, #1
	bx lr
_021DBB8E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021DBB70

	thumb_func_start ov5_021DBB94
ov5_021DBB94: ; 0x021DBB94
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	bl sub_0206B0E8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206B108
	add r5, r0, #0
	ldr r0, [r7, #0xc]
	bl sub_0207D990
	ldr r1, _021DBC04 ; =0x000001BB
	mov r2, #1
	mov r3, #4
	bl sub_0207D688
	cmp r0, #1
	bne _021DBBD2
	cmp r6, #0x64
	bhs _021DBBD2
	add r1, r6, #1
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0206B0F8
_021DBBD2:
	add r0, r4, #0
	bl sub_0206A9E4
	cmp r0, #1
	bne _021DBBFE
	cmp r5, #0x64
	bhs _021DBBEE
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206B118
_021DBBEE:
	cmp r5, #0x64
	bne _021DBBFE
	add r0, r4, #0
	bl sub_0206B0D4
	add r0, r7, #0
	bl ov5_021DBC08
_021DBBFE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DBC04: .word 0x000001BB
	thumb_func_end ov5_021DBB94

	thumb_func_start ov5_021DBC08
ov5_021DBC08: ; 0x021DBC08
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0203A4B4
	add r7, r0, #0
	ldr r5, _021DBC3C ; =0x00000000
	beq _021DBC38
_021DBC16:
	ldr r0, [r6, #0x38]
	add r1, r5, #0
	bl sub_0206251C
	add r4, r0, #0
	beq _021DBC32
	bl sub_02062948
	cmp r0, #0x31
	bne _021DBC32
	add r0, r4, #0
	mov r1, #2
	bl ov5_021DBECC
_021DBC32:
	add r5, r5, #1
	cmp r5, r7
	blo _021DBC16
_021DBC38:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DBC3C: .word 0x00000000
	thumb_func_end ov5_021DBC08

	thumb_func_start ov5_021DBC40
ov5_021DBC40: ; 0x021DBC40
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bl sub_02065700
	add r1, r0, #0
	ldr r0, _021DBC60 ; =0x00000112
	ldrh r2, [r4, r0]
	add r2, r2, #1
	strh r2, [r4, r0]
	add r0, r4, #0
	bl ov5_021DBC64
	pop {r4, pc}
	nop
_021DBC60: .word 0x00000112
	thumb_func_end ov5_021DBC40

	thumb_func_start ov5_021DBC64
ov5_021DBC64: ; 0x021DBC64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	bne _021DBC7C
	bl sub_02022974
	pop {r4, r5, r6, pc}
_021DBC7C:
	ldr r0, _021DBC90 ; =ov5_021DBC94
	str r5, [r4, #8]
	add r1, r4, #0
	mov r2, #0
	str r6, [r4, #4]
	bl sub_0200D9E8
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	nop
_021DBC90: .word ov5_021DBC94
	thumb_func_end ov5_021DBC64

	thumb_func_start ov5_021DBC94
ov5_021DBC94: ; 0x021DBC94
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl sub_0206574C
	cmp r0, #1
	bne _021DBCCE
	ldr r1, [r4, #8]
	ldr r0, _021DBCD0 ; =0x00000112
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021DBCB0
	bl sub_02022974
_021DBCB0:
	ldr r2, [r4, #8]
	ldr r0, _021DBCD0 ; =0x00000112
	ldrh r1, [r2, r0]
	sub r1, r1, #1
	strh r1, [r2, r0]
	ldr r0, [r4, #4]
	bl sub_02065758
	ldr r0, [r4, #0]
	bl sub_0200DA58
	mov r0, #4
	add r1, r4, #0
	bl sub_02018238
_021DBCCE:
	pop {r4, pc}
	; .align 2, 0
_021DBCD0: .word 0x00000112
	thumb_func_end ov5_021DBC94

	thumb_func_start ov5_021DBCD4
ov5_021DBCD4: ; 0x021DBCD4
	ldr r1, _021DBCDC ; =0x00000112
	ldrh r0, [r0, r1]
	bx lr
	nop
_021DBCDC: .word 0x00000112
	thumb_func_end ov5_021DBCD4

	thumb_func_start ov5_021DBCE0
ov5_021DBCE0: ; 0x021DBCE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #4
	mov r7, #0
	ldrh r0, [r5, r0]
	add r6, r7, #0
	cmp r0, #0
	ble _021DBD7C
	add r4, r5, #0
_021DBCFE:
	ldr r0, [r4, #0x10]
	bl ov5_021DBD88
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_0203F2A0
	cmp r0, #0
	bne _021DBD1E
	ldr r1, [r4, #0x10]
	ldr r2, _021DBD80 ; =0x021F8E34
	add r0, r5, #0
	bl ov5_021DBC40
	mov r7, #1
	b _021DBD6E
_021DBD1E:
	bl sub_0201D2E8
	mov r1, #0x64
	bl sub_020E1F6C
	cmp r1, #0x32
	bge _021DBD6E
	ldr r0, [r4, #0x10]
	bl ov5_021DBEB8
	cmp r0, #0
	bne _021DBD6E
	ldr r0, [r4, #0x10]
	mov r1, #0x31
	bl ov5_021DBECC
	ldr r1, [r4, #0x10]
	ldr r2, _021DBD84 ; =0x021F8E3C
	add r0, r5, #0
	bl ov5_021DBC40
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x10]
	mov r2, #0
	bl ov5_021DBF70
	add r7, r0, #0
	beq _021DBD66
	mov r1, #0x31
	bl ov5_021DBECC
	ldr r2, _021DBD84 ; =0x021F8E3C
	add r0, r5, #0
	add r1, r7, #0
	bl ov5_021DBC40
_021DBD66:
	ldr r0, [sp]
	mov r7, #1
	bl sub_0206A9C4
_021DBD6E:
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _021DBCFE
_021DBD7C:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DBD80: .word 0x021F8E34
_021DBD84: .word 0x021F8E3C
	thumb_func_end ov5_021DBCE0

	thumb_func_start ov5_021DBD88
ov5_021DBD88: ; 0x021DBD88
	push {r3, lr}
	bl sub_02062960
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203F254
	pop {r3, pc}
	thumb_func_end ov5_021DBD88

	thumb_func_start ov5_021DBD98
ov5_021DBD98: ; 0x021DBD98
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	bl ov5_021DBEB8
	cmp r0, #0
	bne _021DBDAC
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DBDAC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DBDDC
	add r5, r0, #0
	cmp r5, #0xff
	bne _021DBDBE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DBDBE:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DBDFC
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DBE48
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021DBEA4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021DBD98

	thumb_func_start ov5_021DBDDC
ov5_021DBDDC: ; 0x021DBDDC
	ldr r3, _021DBDF8 ; =0x021F8E48
	mov r2, #0
_021DBDE0:
	ldrh r0, [r3]
	cmp r1, r0
	bne _021DBDEC
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	bx lr
_021DBDEC:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0xf0
	blo _021DBDE0
	mov r0, #0xff
	bx lr
	; .align 2, 0
_021DBDF8: .word 0x021F8E48
	thumb_func_end ov5_021DBDDC

	thumb_func_start ov5_021DBDFC
ov5_021DBDFC: ; 0x021DBDFC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0xc
	ldr r2, _021DBE40 ; =0x021F8E48
	mul r0, r1
	add r0, r2, r0
	ldr r7, _021DBE44 ; =0x0000FFFF
	mov r4, #1
	add r5, r0, #2
_021DBE0E:
	ldrh r1, [r5]
	cmp r1, #0
	bne _021DBE1C
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DBE1C:
	cmp r1, r7
	beq _021DBE30
	add r0, r6, #0
	bl sub_0203F2A0
	cmp r0, #0
	bne _021DBE30
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DBE30:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #6
	blt _021DBE0E
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DBE40: .word 0x021F8E48
_021DBE44: .word 0x0000FFFF
	thumb_func_end ov5_021DBDFC

	thumb_func_start ov5_021DBE48
ov5_021DBE48: ; 0x021DBE48
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020507E4
	cmp r4, #0
	beq _021DBE6C
	add r1, r4, #0
	bl sub_0206AB00
	cmp r0, #0
	bne _021DBE6C
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021DBE70
	add r4, r0, #0
_021DBE6C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DBE48

	thumb_func_start ov5_021DBE70
ov5_021DBE70: ; 0x021DBE70
	sub r1, r1, #1
	lsl r1, r1, #0x10
	ldr r2, _021DBE9C ; =0x021F8E48
	lsr r3, r1, #0x10
	beq _021DBE96
	mov r1, #0xc
	mul r1, r0
	add r2, r2, r1
	ldr r1, _021DBEA0 ; =0x0000FFFF
_021DBE82:
	lsl r0, r3, #1
	ldrh r0, [r2, r0]
	cmp r0, r1
	beq _021DBE8E
	add r0, r3, #0
	bx lr
_021DBE8E:
	sub r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	bne _021DBE82
_021DBE96:
	mov r0, #0
	bx lr
	nop
_021DBE9C: .word 0x021F8E48
_021DBEA0: .word 0x0000FFFF
	thumb_func_end ov5_021DBE70

	thumb_func_start ov5_021DBEA4
ov5_021DBEA4: ; 0x021DBEA4
	mov r2, #0xc
	mul r2, r0
	ldr r0, _021DBEB4 ; =0x021F8E48
	lsl r1, r1, #1
	add r0, r0, r2
	ldrh r0, [r1, r0]
	bx lr
	nop
_021DBEB4: .word 0x021F8E48
	thumb_func_end ov5_021DBEA4

	thumb_func_start ov5_021DBEB8
ov5_021DBEB8: ; 0x021DBEB8
	push {r3, lr}
	bl sub_02062948
	cmp r0, #0x31
	bne _021DBEC6
	mov r0, #1
	pop {r3, pc}
_021DBEC6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021DBEB8

	thumb_func_start ov5_021DBECC
ov5_021DBECC: ; 0x021DBECC
	ldr r3, _021DBED0 ; =sub_020633A8
	bx r3
	; .align 2, 0
_021DBED0: .word sub_020633A8
	thumb_func_end ov5_021DBECC

	thumb_func_start ov5_021DBED4
ov5_021DBED4: ; 0x021DBED4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	beq _021DBF1C
	add r0, r5, #0
	bl sub_0206298C
	cmp r0, #0
	bne _021DBEEA
	mov r4, #0xe
	b _021DBEFC
_021DBEEA:
	cmp r0, #1
	bne _021DBEF2
	mov r4, #0xf
	b _021DBEFC
_021DBEF2:
	cmp r0, #2
	bne _021DBEFA
	mov r4, #0x10
	b _021DBEFC
_021DBEFA:
	mov r4, #0x11
_021DBEFC:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	bl ov5_021DBF70
	cmp r0, #0
	beq _021DBF12
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl ov5_021DBECC
_021DBF12:
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ov5_021DBECC
_021DBF1C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DBED4

	thumb_func_start ov5_021DBF20
ov5_021DBF20: ; 0x021DBF20
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0203A4B4
	ldr r5, _021DBF6C ; =0x00000000
	add r7, r0, #0
	str r5, [sp]
	beq _021DBF5C
_021DBF30:
	ldr r0, [r6, #0x38]
	add r1, r5, #0
	bl sub_0206251C
	add r4, r0, #0
	beq _021DBF56
	bl sub_02062D1C
	cmp r0, #1
	bne _021DBF50
	add r0, r4, #0
	bl sub_02062DDC
	mov r0, #1
	str r0, [sp]
	b _021DBF56
_021DBF50:
	add r0, r4, #0
	bl sub_02062DD0
_021DBF56:
	add r5, r5, #1
	cmp r5, r7
	blo _021DBF30
_021DBF5C:
	ldr r0, [sp]
	cmp r0, #0
	bne _021DBF66
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DBF66:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DBF6C: .word 0x00000000
	thumb_func_end ov5_021DBF20

	thumb_func_start ov5_021DBF70
ov5_021DBF70: ; 0x021DBF70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r0, [sp]
	str r2, [sp, #4]
	bl sub_0203A4B4
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02062960
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	bl sub_0203F254
	str r0, [sp, #8]
	bl sub_0203F28C
	cmp r0, #0
	bne _021DBFA0
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DBFA0:
	mov r4, #0
	cmp r7, #0
	bls _021DC012
_021DBFA6:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r5, r0, #0
	beq _021DC00C
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _021DBFC2
	bl sub_02062948
	cmp r0, #0x31
	beq _021DC00C
_021DBFC2:
	add r0, r5, #0
	bl sub_02062950
	cmp r0, #8
	bhi _021DC00C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DBFD8: ; jump table
	.short _021DC00C - _021DBFD8 - 2 ; case 0
	.short _021DBFEA - _021DBFD8 - 2 ; case 1
	.short _021DBFEA - _021DBFD8 - 2 ; case 2
	.short _021DC00C - _021DBFD8 - 2 ; case 3
	.short _021DBFEA - _021DBFD8 - 2 ; case 4
	.short _021DBFEA - _021DBFD8 - 2 ; case 5
	.short _021DBFEA - _021DBFD8 - 2 ; case 6
	.short _021DBFEA - _021DBFD8 - 2 ; case 7
	.short _021DBFEA - _021DBFD8 - 2 ; case 8
_021DBFEA:
	add r0, r5, #0
	bl sub_02062960
	add r6, r0, #0
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl sub_0203F254
	ldr r1, [sp, #0xc]
	cmp r1, r6
	beq _021DC00C
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _021DC00C
	add sp, #0x10
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DC00C:
	add r4, r4, #1
	cmp r4, r7
	blo _021DBFA6
_021DC012:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DBF70

	.rodata


	.global Unk_ov5_021F8E34
Unk_ov5_021F8E34: ; 0x021F8E34
	.incbin "incbin/overlay5_rodata.bin", 0x520, 0x528 - 0x520

	.global Unk_ov5_021F8E3C
Unk_ov5_021F8E3C: ; 0x021F8E3C
	.incbin "incbin/overlay5_rodata.bin", 0x528, 0x534 - 0x528

	.global Unk_ov5_021F8E48
Unk_ov5_021F8E48: ; 0x021F8E48
	.incbin "incbin/overlay5_rodata.bin", 0x534, 0xB40

