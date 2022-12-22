	.include "macros/function.inc"
	.include "include/ov90_021D0D80.inc"

	

	.text


	thumb_func_start ov90_021D0D80
ov90_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x4a
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0xad
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x4a
	bl sub_0200681C
	mov r2, #0xad
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strb r0, [r4, #0xa]
	ldr r0, [r5, #0]
	bl sub_02025E44
	str r0, [r4, #0x18]
	ldr r0, [r5, #0]
	bl sub_0203068C
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0]
	bl sub_0202D750
	str r0, [r4, #0x20]
	ldr r0, [r5, #0]
	bl sub_0202D764
	str r0, [r4, #0x24]
	mov r0, #0x4a
	str r0, [r4, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov90_021D0D80

	thumb_func_start ov90_021D0DE8
ov90_021D0DE8: ; 0x021D0DE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006830
	ldr r0, [r4, #0]
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov90_021D0DE8

	thumb_func_start ov90_021D0E04
ov90_021D0E04: ; 0x021D0E04
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #4
	bhi _021D0EB4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0E22: ; jump table
	.short _021D0E2C - _021D0E22 - 2 ; case 0
	.short _021D0E52 - _021D0E22 - 2 ; case 1
	.short _021D0E62 - _021D0E22 - 2 ; case 2
	.short _021D0E96 - _021D0E22 - 2 ; case 3
	.short _021D0EA6 - _021D0E22 - 2 ; case 4
_021D0E2C:
	bl ov90_021D0ECC
	cmp r0, #0
	beq _021D0EB4
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0EB4
_021D0E52:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D0EB4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0EB4
_021D0E62:
	ldrh r1, [r5, #8]
	cmp r1, #0
	bne _021D0E6E
	bl ov90_021D105C
	b _021D0E72
_021D0E6E:
	bl ov90_021D1080
_021D0E72:
	cmp r0, #0
	beq _021D0EB4
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	add r3, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0EB4
_021D0E96:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D0EB4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0EB4
_021D0EA6:
	bl ov90_021D0F98
	cmp r0, #0
	beq _021D0EB4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D0EB4:
	ldr r0, [r4, #0]
	cmp r0, #1
	blt _021D0EC4
	cmp r0, #3
	bgt _021D0EC4
	add r0, r5, #0
	bl ov90_021D1B90
_021D0EC4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov90_021D0E04

	thumb_func_start ov90_021D0ECC
ov90_021D0ECC: ; 0x021D0ECC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #4
	bhi _021D0F80
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0EE2: ; jump table
	.short _021D0EEC - _021D0EE2 - 2 ; case 0
	.short _021D0F2C - _021D0EE2 - 2 ; case 1
	.short _021D0F38 - _021D0EE2 - 2 ; case 2
	.short _021D0F5E - _021D0EE2 - 2 ; case 3
	.short _021D0F70 - _021D0EE2 - 2 ; case 4
_021D0EEC:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D0F8C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0F90 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	bl ov90_021D1014
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	add r0, r4, #0
	bl ov90_021D11EC
	b _021D0F80
_021D0F2C:
	bl ov90_021D12B0
	add r0, r4, #0
	bl ov90_021D13D8
	b _021D0F80
_021D0F38:
	bl ov90_021D1340
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _021D0F50
	add r0, r4, #0
	bl ov90_021D15D0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _021D0F80
_021D0F50:
	add r0, r4, #0
	bl ov90_021D1750
	add r0, r4, #0
	bl ov90_021D18BC
	b _021D0F80
_021D0F5E:
	bl ov90_021D1ABC
	add r0, r4, #0
	bl ov90_021D1BAC
	add r0, r4, #0
	bl ov90_021D1984
	b _021D0F80
_021D0F70:
	ldr r0, _021D0F94 ; =ov90_021D1034
	add r1, r4, #0
	bl sub_02017798
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_021D0F80:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	nop
_021D0F8C: .word 0xFFFFE0FF
_021D0F90: .word 0x04001000
_021D0F94: .word ov90_021D1034
	thumb_func_end ov90_021D0ECC

	thumb_func_start ov90_021D0F98
ov90_021D0F98: ; 0x021D0F98
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021D0FA8
	cmp r1, #1
	beq _021D0FD2
	b _021D1002
_021D0FA8:
	ldrh r1, [r4, #8]
	cmp r1, #0
	beq _021D0FBE
	bl ov90_021D1C28
	add r0, r4, #0
	bl ov90_021D1B6C
	add r0, r4, #0
	bl ov90_021D17DC
_021D0FBE:
	add r0, r4, #0
	bl ov90_021D13A8
	add r0, r4, #0
	bl ov90_021D146C
	add r0, r4, #0
	bl ov90_021D1280
	b _021D1002
_021D0FD2:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D100C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D1010 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_021D1002:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D100C: .word 0xFFFFE0FF
_021D1010: .word 0x04001000
	thumb_func_end ov90_021D0F98

	thumb_func_start ov90_021D1014
ov90_021D1014: ; 0x021D1014
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1030 ; =0x021D1DD4
	add r3, sp, #0
	mov r2, #5
_021D101E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D101E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D1030: .word 0x021D1DD4
	thumb_func_end ov90_021D1014

	thumb_func_start ov90_021D1034
ov90_021D1034: ; 0x021D1034
	push {r4, lr}
	add r4, r0, #0
	bl ov90_021D1BA4
	bl NNS_GfdDoVramTransfer
	ldr r0, [r4, #0x10]
	bl sub_0201C2B8
	ldr r3, _021D1054 ; =0x027E0000
	ldr r1, _021D1058 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_021D1054: .word 0x027E0000
_021D1058: .word 0x00003FF8
	thumb_func_end ov90_021D1034

	thumb_func_start ov90_021D105C
ov90_021D105C: ; 0x021D105C
	push {r3, lr}
	ldr r0, _021D1078 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D1072
	ldr r0, _021D107C ; =0x000005DC
	bl sub_02005748
	mov r0, #1
	pop {r3, pc}
_021D1072:
	mov r0, #0
	pop {r3, pc}
	nop
_021D1078: .word 0x021BF67C
_021D107C: .word 0x000005DC
	thumb_func_end ov90_021D105C

	thumb_func_start ov90_021D1080
ov90_021D1080: ; 0x021D1080
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r1, _021D11E4 ; =0x021BF67C
	add r5, r0, #0
	ldr r3, [r1, #0x48]
	mov r0, #2
	mov r4, #0
	tst r0, r3
	beq _021D109E
	ldr r0, _021D11E8 ; =0x000005DC
	bl sub_02005748
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D109E:
	mov r2, #1
	add r0, r3, #0
	tst r0, r2
	beq _021D10CE
	ldr r0, _021D11E8 ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r5, #0xb]
	cmp r0, #0xa
	blo _021D10B8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D10B8:
	ldrb r0, [r5, #0xd]
	mov r4, #1
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strb r0, [r5, #0xd]
	b _021D1180
_021D10CE:
	ldr r0, [r1, #0x4c]
	mov r1, #0x40
	tst r1, r0
	beq _021D1102
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _021D10F6
	sub r0, r0, #1
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bne _021D10F0
	ldrb r0, [r5, #0xe]
	add r4, r2, #0
	sub r0, r0, #1
	strb r0, [r5, #0xe]
	b _021D10F6
_021D10F0:
	sub r0, r0, #1
	strb r0, [r5, #0xf]
	add r4, r2, #0
_021D10F6:
	cmp r4, #0
	beq _021D1176
	ldr r0, _021D11E8 ; =0x000005DC
	bl sub_02005748
	b _021D1176
_021D1102:
	mov r1, #0x80
	tst r1, r0
	beq _021D1134
	ldrb r0, [r5, #0xb]
	cmp r0, #0xa
	bhs _021D1128
	add r0, r0, #1
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #0xf]
	cmp r0, #1
	bls _021D1122
	ldrb r0, [r5, #0xe]
	add r4, r2, #0
	add r0, r0, #1
	strb r0, [r5, #0xe]
	b _021D1128
_021D1122:
	add r0, r0, #1
	strb r0, [r5, #0xf]
	add r4, r2, #0
_021D1128:
	cmp r4, #0
	beq _021D1176
	ldr r0, _021D11E8 ; =0x000005DC
	bl sub_02005748
	b _021D1176
_021D1134:
	mov r1, #0x20
	tst r1, r0
	beq _021D1156
	ldrb r0, [r5, #0xc]
	mov r1, #3
	add r0, r0, #2
	bl _s32_div_f
	strb r1, [r5, #0xc]
	ldrb r0, [r5, #0xb]
	mov r4, #1
	cmp r0, #0xa
	beq _021D1176
	ldr r0, _021D11E8 ; =0x000005DC
	bl sub_02005748
	b _021D1176
_021D1156:
	mov r1, #0x10
	tst r0, r1
	beq _021D1176
	ldrb r0, [r5, #0xc]
	mov r1, #3
	add r0, r0, #1
	bl _s32_div_f
	strb r1, [r5, #0xc]
	ldrb r0, [r5, #0xb]
	mov r4, #1
	cmp r0, #0xa
	beq _021D1176
	ldr r0, _021D11E8 ; =0x000005DC
	bl sub_02005748
_021D1176:
	ldrb r0, [r5, #0xb]
	cmp r0, #0xa
	bne _021D1180
	mov r0, #2
	strb r0, [r5, #0xc]
_021D1180:
	cmp r4, #0
	bne _021D118A
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D118A:
	ldrb r1, [r5, #0xb]
	ldrb r2, [r5, #0xc]
	ldrb r3, [r5, #0xf]
	add r0, r5, #0
	bl ov90_021D1C90
	ldrb r0, [r5, #0xb]
	add r1, r5, #0
	add r1, #0x7c
	str r0, [sp]
	ldrb r0, [r5, #0xc]
	str r0, [sp, #4]
	add r0, r5, #0
	ldrb r3, [r5, #0xe]
	ldr r2, [r5, #0x34]
	add r0, #0xbc
	bl ov90_021D17F8
	ldrb r0, [r5, #0xb]
	cmp r0, #0xa
	beq _021D11D6
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _021D11C0
	cmp r0, #1
	beq _021D11C8
	b _021D11D0
_021D11C0:
	add r0, r5, #0
	bl ov90_021D1984
	b _021D11DC
_021D11C8:
	add r0, r5, #0
	bl ov90_021D1A48
	b _021D11DC
_021D11D0:
	bl GF_AssertFail
	b _021D11DC
_021D11D6:
	add r0, r5, #0
	bl ov90_021D1A9C
_021D11DC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D11E4: .word 0x021BF67C
_021D11E8: .word 0x000005DC
	thumb_func_end ov90_021D1080

	thumb_func_start ov90_021D11EC
ov90_021D11EC: ; 0x021D11EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02018340
	add r3, sp, #0
	ldr r4, _021D1278 ; =0x021D1D5C
	str r0, [r5, #0x10]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r4, _021D127C ; =0x021D1E2C
	add r3, sp, #0x10
	mov r2, #0xa
_021D1214:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1214
	ldr r0, [r4, #0]
	mov r4, #0
	str r0, [r3, #0]
	ldrh r0, [r5, #8]
	add r7, r4, #0
	add r0, r0, #2
	cmp r0, #0
	ble _021D1254
	add r6, sp, #0x10
_021D122E:
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0x18
	add r2, r6, #0
	mov r3, #0
	bl sub_020183C4
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0x18
	bl sub_02019EBC
	ldrh r0, [r5, #8]
	add r7, r7, #1
	add r4, r4, #1
	add r0, r0, #2
	add r6, #0x1c
	cmp r7, r0
	blt _021D122E
_021D1254:
	mov r0, #0
	ldr r3, [r5, #0]
	mov r1, #0x20
	add r2, r0, #0
	bl sub_02019690
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _021D1272
	ldr r3, [r5, #0]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
_021D1272:
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	nop
_021D1278: .word 0x021D1D5C
_021D127C: .word 0x021D1E2C
	thumb_func_end ov90_021D11EC

	thumb_func_start ov90_021D1280
ov90_021D1280: ; 0x021D1280
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldrh r0, [r6, #8]
	mov r5, #0
	add r4, r5, #0
	add r0, r0, #2
	cmp r0, #0
	ble _021D12A6
_021D1290:
	lsl r1, r5, #0x18
	ldr r0, [r6, #0x10]
	lsr r1, r1, #0x18
	add r5, r5, #1
	bl sub_02019044
	ldrh r0, [r6, #8]
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, r0
	blt _021D1290
_021D12A6:
	ldr r0, [r6, #0x10]
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov90_021D1280

	thumb_func_start ov90_021D12B0
ov90_021D12B0: ; 0x021D12B0
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x7b
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x7b
	bl sub_0208C210
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x40
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x7b
	bl sub_0208C210
	ldrh r0, [r5, #8]
	cmp r0, #1
	bne _021D1306
	mov r0, #7
	b _021D1312
_021D1306:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _021D1310
	mov r0, #8
	b _021D1312
_021D1310:
	mov r0, #6
_021D1312:
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x7b
	bl sub_0208C210
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov90_021D12B0

	thumb_func_start ov90_021D1340
ov90_021D1340: ; 0x021D1340
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrh r0, [r6, #8]
	cmp r0, #0
	bne _021D1370
	add r5, r6, #0
	ldr r4, _021D13A0 ; =0x021D1DFC
	mov r7, #0
	add r5, #0x6c
_021D1352:
	ldr r0, [r6, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r7, r7, #1
	add r4, #8
	add r5, #0x10
	cmp r7, #5
	blt _021D1352
	b _021D1394
_021D1370:
	add r5, r6, #0
	ldr r4, _021D13A4 ; =0x021D1D80
	mov r7, #0
	add r5, #0x6c
_021D1378:
	ldr r0, [r6, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r7, r7, #1
	add r4, #8
	add r5, #0x10
	cmp r7, #3
	blt _021D1378
_021D1394:
	ldr r2, [r6, #0]
	mov r0, #0
	mov r1, #0x40
	bl sub_02002E7C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D13A0: .word 0x021D1DFC
_021D13A4: .word 0x021D1D80
	thumb_func_end ov90_021D1340

	thumb_func_start ov90_021D13A8
ov90_021D13A8: ; 0x021D13A8
	push {r4, r5, r6, lr}
	ldrh r1, [r0, #8]
	cmp r1, #0
	bne _021D13B4
	mov r6, #5
	b _021D13B6
_021D13B4:
	mov r6, #3
_021D13B6:
	mov r4, #0
	cmp r6, #0
	ble _021D13D4
	add r5, r0, #0
	add r5, #0x6c
_021D13C0:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r6
	blt _021D13C0
_021D13D4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov90_021D13A8

	thumb_func_start ov90_021D13D8
ov90_021D13D8: ; 0x021D13D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r3, [r5, #0]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0x16
	bl sub_0200B144
	str r0, [r5, #0x28]
	ldr r2, [r5, #0]
	mov r0, #2
	mov r1, #0x4c
	bl sub_0200B368
	str r0, [r5, #0x2c]
	ldr r1, [r5, #0]
	mov r0, #0x4c
	bl sub_02023790
	str r0, [r5, #0x30]
	mov r6, #0
	add r4, r5, #0
_021D1404:
	add r1, r6, #0
	ldr r0, [r5, #0x28]
	add r1, #9
	bl sub_0200B1EC
	str r0, [r4, #0x4c]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _021D1404
	ldr r0, [r5, #0x28]
	mov r1, #0xf
	bl sub_0200B1EC
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x28]
	mov r1, #0x11
	bl sub_0200B1EC
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x28]
	mov r1, #0x12
	bl sub_0200B1EC
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x28]
	mov r1, #0x13
	bl sub_0200B1EC
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x28]
	mov r1, #0x14
	bl sub_0200B1EC
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	mov r1, #0x15
	bl sub_0200B1EC
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x28]
	mov r1, #0x16
	bl sub_0200B1EC
	str r0, [r5, #0x64]
	ldr r0, [r5, #0x28]
	mov r1, #0x17
	bl sub_0200B1EC
	str r0, [r5, #0x68]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov90_021D13D8

	thumb_func_start ov90_021D146C
ov90_021D146C: ; 0x021D146C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x68]
	bl sub_020237BC
	ldr r0, [r6, #0x64]
	bl sub_020237BC
	ldr r0, [r6, #0x48]
	bl sub_020237BC
	ldr r0, [r6, #0x44]
	bl sub_020237BC
	ldr r0, [r6, #0x40]
	bl sub_020237BC
	ldr r0, [r6, #0x34]
	bl sub_020237BC
	ldr r0, [r6, #0x3c]
	bl sub_020237BC
	ldr r0, [r6, #0x38]
	bl sub_020237BC
	mov r4, #0
	add r5, r6, #0
_021D14A4:
	ldr r0, [r5, #0x4c]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _021D14A4
	ldr r0, [r6, #0x30]
	bl sub_020237BC
	ldr r0, [r6, #0x2c]
	bl sub_0200B3F0
	ldr r0, [r6, #0x28]
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov90_021D146C

	thumb_func_start ov90_021D14C8
ov90_021D14C8: ; 0x021D14C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	ldr r0, [r5, #0x1c]
	add r1, r7, #0
	mov r2, #0xff
	bl sub_02030698
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x1c]
	add r1, r7, #1
	mov r2, #0xff
	bl sub_02030698
	add r6, #8
	add r7, r0, #0
	lsl r1, r6, #0x10
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0202D414
	lsl r2, r0, #0x10
	add r0, sp, #0x18
	ldrb r6, [r0, #0x10]
	lsr r2, r2, #0xe
	mov r0, #0xff
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	add r2, r5, r2
	ldr r2, [r2, #0x4c]
	add r0, r4, #0
	mov r3, #4
	bl sub_0201D78C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x2c]
	mov r1, #0
	add r2, r7, #0
	mov r3, #4
	bl sub_0200B60C
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x5c]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [r5, #0x30]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xa4
	sub r3, r1, r0
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D15CC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	bl sub_0201D78C
	add r0, sp, #0x18
	ldrb r0, [r0, #0x10]
	mov r1, #0
	mov r3, #4
	add r0, #0x18
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x54]
	add r0, r4, #0
	bl sub_0201D78C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x2c]
	ldr r2, [sp, #0x10]
	mov r1, #0
	mov r3, #4
	bl sub_0200B60C
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x5c]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [r5, #0x30]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xa4
	sub r3, r1, r0
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D15CC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D15CC: .word 0x00010200
	thumb_func_end ov90_021D14C8

	thumb_func_start ov90_021D15D0
ov90_021D15D0: ; 0x021D15D0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldrb r1, [r4, #0xa]
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x30]
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r4, #0x30]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xc0
	sub r3, r1, r0
	mov r0, #8
	str r0, [sp]
	mov r1, #0
	lsr r5, r3, #0x1f
	add r5, r3, r5
	ldr r0, _021D1748 ; =0x000F0200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x6c
	asr r3, r5, #1
	bl sub_0201D78C
	ldrb r1, [r4, #0xa]
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x30]
	add r1, r1, #3
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xc1
	str r1, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x7c
	add r3, r1, #0
	bl sub_0201D78C
	ldrb r1, [r4, #0xa]
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x30]
	add r1, r1, #6
	bl sub_0200B1B8
	mov r0, #3
	str r0, [sp]
	mov r1, #0
	mov r0, #0xc1
	str r1, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x8c
	add r3, r1, #0
	bl sub_0201D78C
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _021D166C
	cmp r0, #1
	beq _021D1692
	cmp r0, #2
	beq _021D16B8
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D166C:
	mov r2, #0
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x9c
	add r3, r2, #0
	str r2, [sp]
	bl ov90_021D14C8
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	add r4, #0xac
	add r1, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov90_021D14C8
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D1692:
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, #0x9c
	mov r2, #2
	mov r3, #4
	bl ov90_021D14C8
	add r0, r4, #0
	add r4, #0xac
	mov r2, #3
	add r1, r4, #0
	mov r3, #6
	str r2, [sp]
	bl ov90_021D14C8
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D16B8:
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x30]
	mov r1, #0xc
	bl sub_0200B1B8
	mov r0, #0xa
	str r0, [sp]
	mov r1, #0
	mov r0, #0xc1
	str r1, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x9c
	mov r3, #4
	bl sub_0201D78C
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0202D2C0
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x60]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [r4, #0x30]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x40
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r3, r0, #1
	mov r0, #0xa
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D174C ; =0x00050600
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x30]
	add r3, #0x40
	add r0, #0x9c
	bl sub_0201D78C
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	add r4, #0xac
	add r1, r4, #0
	mov r2, #4
	mov r3, #8
	bl ov90_021D14C8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D1748: .word 0x000F0200
_021D174C: .word 0x00050600
	thumb_func_end ov90_021D15D0

	thumb_func_start ov90_021D1750
ov90_021D1750: ; 0x021D1750
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0]
	bl sub_0202D71C
	str r0, [sp]
	ldr r5, [sp]
	mov r0, #0
	add r4, r7, #0
	str r0, [sp, #4]
	add r4, #0xbc
	add r6, r5, #0
_021D176C:
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, #8
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	strb r0, [r4, #4]
	ldrb r0, [r5, #0x12]
	mov r2, #8
	strb r0, [r4, #5]
	ldrb r0, [r5, #0x13]
	strb r0, [r4, #6]
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	strb r0, [r4, #7]
	add r0, r5, #0
	add r0, #0x18
	bl MI_CpuCopy8
	ldr r1, [r7, #0]
	mov r0, #8
	bl sub_02023790
	str r0, [r4, #0]
	ldrb r0, [r4, #7]
	cmp r0, #0
	ldr r0, [r4, #0]
	beq _021D17BA
	ldrb r1, [r4, #4]
	lsl r1, r1, #2
	add r1, r7, r1
	ldr r1, [r1, #0x64]
	bl sub_02023810
	b _021D17C0
_021D17BA:
	add r1, r6, #0
	bl sub_02023D28
_021D17C0:
	ldr r0, [sp, #4]
	add r4, #0x10
	add r0, r0, #1
	add r5, #0x22
	add r6, #0x22
	str r0, [sp, #4]
	cmp r0, #0x1e
	blt _021D176C
	ldr r0, [sp]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov90_021D1750

	thumb_func_start ov90_021D17DC
ov90_021D17DC: ; 0x021D17DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D17E2:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x1e
	blt _021D17E2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov90_021D17DC

	thumb_func_start ov90_021D17F8
ov90_021D17F8: ; 0x021D17F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r1, #0
	mov r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0201ADA4
	cmp r4, #8
	blo _021D1840
	mov r0, #2
	str r0, [sp, #0x18]
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x28
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #0x34
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D18B0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r2, r5, #0
	add r3, #0xa0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	b _021D1844
_021D1840:
	mov r0, #3
	str r0, [sp, #0x18]
_021D1844:
	lsl r0, r4, #1
	add r0, r4, r0
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _021D18A4
	ldr r7, [sp, #0x20]
	mov r6, #4
_021D1858:
	mov r4, #0
	add r5, r4, #0
_021D185C:
	ldr r0, [sp, #0x1c]
	add r1, r4, r7
	add r0, r0, r1
	lsl r1, r0, #4
	ldr r0, [sp, #0x10]
	add r2, r0, r1
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _021D1872
	ldr r1, _021D18B4 ; =0x000B0C00
	b _021D1874
_021D1872:
	ldr r1, _021D18B8 ; =0x00090A00
_021D1874:
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r2, #0]
	mov r1, #0
	add r3, r5, #0
	bl sub_0201D78C
	add r4, r4, #1
	add r5, #0x48
	cmp r4, #3
	blt _021D185C
	ldr r0, [sp, #0x20]
	add r7, r7, #3
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	add r6, #0x18
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _021D1858
_021D18A4:
	ldr r0, [sp, #0x14]
	bl sub_0201A954
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021D18B0: .word 0x00010200
_021D18B4: .word 0x000B0C00
_021D18B8: .word 0x00090A00
	thumb_func_end ov90_021D17F8

	thumb_func_start ov90_021D18BC
ov90_021D18BC: ; 0x021D18BC
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r1, sp, #0x10
	bl sub_0202D708
	ldr r0, [r4, #0x30]
	bl sub_020237E8
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, sp, #0x10
	ldrb r2, [r2]
	ldr r0, [r4, #0x2c]
	mov r3, #2
	bl sub_0200B60C
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r2, sp, #0x10
	ldrb r2, [r2, #1]
	ldr r0, [r4, #0x2c]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x38]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [r4, #0x30]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xc0
	sub r3, r1, r0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1980 ; =0x000F0200
	lsr r5, r3, #0x1f
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	add r0, r4, #0
	add r5, r3, r5
	ldr r2, [r4, #0x30]
	add r0, #0x6c
	asr r3, r5, #1
	bl sub_0201D78C
	ldrb r1, [r4, #0xa]
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x30]
	add r1, #0x10
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r4, #0x30]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xc0
	sub r3, r1, r0
	mov r0, #0x14
	str r0, [sp]
	mov r1, #0
	lsr r5, r3, #0x1f
	add r5, r3, r5
	ldr r0, _021D1980 ; =0x000F0200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x6c
	asr r3, r5, #1
	bl sub_0201D78C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0x34]
	add r0, #0xbc
	add r1, #0x7c
	bl ov90_021D17F8
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021D1980: .word 0x000F0200
	thumb_func_end ov90_021D18BC

	thumb_func_start ov90_021D1984
ov90_021D1984: ; 0x021D1984
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldrb r2, [r4, #0xb]
	ldrb r3, [r4, #0xc]
	add r0, #0xbc
	lsl r1, r2, #1
	add r1, r2, r1
	add r1, r3, r1
	lsl r1, r1, #4
	add r5, r0, r1
	add r0, r4, #0
	add r0, #0x8c
	mov r1, #0
	bl sub_0201ADA4
	ldrb r2, [r5, #5]
	cmp r2, #0
	bne _021D19C6
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D1A44 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x48]
	add r0, #0x8c
	add r3, r1, #0
	bl sub_0201D78C
	b _021D1A30
_021D19C6:
	ldrb r0, [r5, #6]
	cmp r0, #0
	ldr r0, [r4, #0x2c]
	bne _021D19FA
	mov r1, #0
	bl sub_0200BDD0
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x44]
	bl sub_0200C388
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D1A44 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x8c
	add r3, r1, #0
	bl sub_0201D78C
	b _021D1A30
_021D19FA:
	mov r1, #0
	bl sub_0200BDD0
	ldrb r2, [r5, #5]
	ldrb r3, [r5, #6]
	ldr r0, [r4, #0x2c]
	mov r1, #1
	bl sub_0200BE08
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x40]
	bl sub_0200C388
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D1A44 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x8c
	add r3, r1, #0
	bl sub_0201D78C
_021D1A30:
	add r0, r4, #0
	add r0, #0x8c
	bl sub_0201A954
	add r0, r4, #0
	mov r1, #0
	bl ov90_021D1C44
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1A44: .word 0x00010200
	thumb_func_end ov90_021D1984

	thumb_func_start ov90_021D1A48
ov90_021D1A48: ; 0x021D1A48
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldrb r2, [r4, #0xb]
	ldrb r3, [r4, #0xc]
	add r0, #0xbc
	lsl r1, r2, #1
	add r1, r2, r1
	add r1, r3, r1
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [r4, #0]
	add r0, #8
	bl sub_02014B34
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D1A98 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r4, #0x8c
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D1A98: .word 0x00010200
	thumb_func_end ov90_021D1A48

	thumb_func_start ov90_021D1A9C
ov90_021D1A9C: ; 0x021D1A9C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x8c
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x8c
	bl sub_0201ACF4
	add r0, r4, #0
	mov r1, #1
	bl ov90_021D1C44
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov90_021D1A9C

	thumb_func_start ov90_021D1ABC
ov90_021D1ABC: ; 0x021D1ABC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #0x20
	bl sub_0201DBEC
	ldr r0, [r4, #0]
	bl sub_0200C6E4
	mov r1, #0xa7
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_0200C704
	mov r7, #0x2a
	lsl r7, r7, #4
	add r2, sp, #0x30
	ldr r3, _021D1B60 ; =0x021D1DB4
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _021D1B64 ; =0x021D1D6C
	stmia r2!, {r0, r1}
	add r3, sp, #0x1c
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
	mov r2, #4
	bl sub_0200C7C0
	ldr r0, [r4, #0]
	bl sub_0200A93C
	ldr r0, [r4, #0]
	bl sub_0200A944
	ldr r5, _021D1B68 ; =0x021D1D98
	add r3, sp, #0
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
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1B60: .word 0x021D1DB4
_021D1B64: .word 0x021D1D6C
_021D1B68: .word 0x021D1D98
	thumb_func_end ov90_021D1ABC

	thumb_func_start ov90_021D1B6C
ov90_021D1B6C: ; 0x021D1B6C
	push {r4, lr}
	mov r1, #0xa7
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8B0
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200C8D4
	bl sub_0201DC3C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov90_021D1B6C

	thumb_func_start ov90_021D1B90
ov90_021D1B90: ; 0x021D1B90
	push {r3, lr}
	mov r1, #0x2a
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021D1BA0
	bl sub_0200C7EC
_021D1BA0:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov90_021D1B90

	thumb_func_start ov90_021D1BA4
ov90_021D1BA4: ; 0x021D1BA4
	ldr r3, _021D1BA8 ; =sub_0200C800
	bx r3
	; .align 2, 0
_021D1BA8: .word sub_0200C800
	thumb_func_end ov90_021D1BA4

	thumb_func_start ov90_021D1BAC
ov90_021D1BAC: ; 0x021D1BAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r6, _021D1C24 ; =0x021D1E80
	mov r7, #0
	add r4, r5, #0
_021D1BB6:
	mov r0, #0xa7
	mov r1, #0x2a
	lsl r0, r0, #2
	lsl r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200CA08
	mov r1, #0xa9
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r7, r7, #1
	add r6, #0x28
	add r4, r4, #4
	cmp r7, #4
	blt _021D1BB6
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02021E80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1C24: .word 0x021D1E80
	thumb_func_end ov90_021D1BAC

	thumb_func_start ov90_021D1C28
ov90_021D1C28: ; 0x021D1C28
	push {r4, r5, r6, lr}
	mov r6, #0xa9
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021D1C32:
	ldr r0, [r5, r6]
	bl sub_0200C7E4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D1C32
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov90_021D1C28

	thumb_func_start ov90_021D1C44
ov90_021D1C44: ; 0x021D1C44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _021D1C5C
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021E90
	mov r4, #0
	b _021D1C6A
_021D1C5C:
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021E90
	mov r4, #1
_021D1C6A:
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021CC8
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021CC8
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021CC8
	pop {r3, r4, r5, pc}
	thumb_func_end ov90_021D1C44

	thumb_func_start ov90_021D1C90
ov90_021D1C90: ; 0x021D1C90
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xe]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #8
	bne _021D1CE4
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	cmp r4, #0xa
	bne _021D1CCA
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021E50
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	b _021D1CFC
_021D1CCA:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021E50
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	b _021D1CFC
_021D1CE4:
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
_021D1CFC:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _021D1D08
	cmp r0, #8
	beq _021D1D16
	b _021D1D24
_021D1D08:
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	b _021D1D3C
_021D1D16:
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	b _021D1D3C
_021D1D24:
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
_021D1D3C:
	mov r1, #0x48
	mov r2, #0x18
	mov r0, #0xa9
	mul r1, r6
	mul r2, r7
	lsl r0, r0, #2
	add r1, #0x36
	add r2, #0x44
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov90_021D1C90

	.rodata


	.global Unk_ov90_021D1D5C
Unk_ov90_021D1D5C: ; 0x021D1D5C
	.incbin "incbin/overlay90_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov90_021D1D6C
Unk_ov90_021D1D6C: ; 0x021D1D6C
	.incbin "incbin/overlay90_rodata.bin", 0x10, 0x24 - 0x10

	.global Unk_ov90_021D1D80
Unk_ov90_021D1D80: ; 0x021D1D80
	.incbin "incbin/overlay90_rodata.bin", 0x24, 0x3C - 0x24

	.global Unk_ov90_021D1D98
Unk_ov90_021D1D98: ; 0x021D1D98
	.incbin "incbin/overlay90_rodata.bin", 0x3C, 0x58 - 0x3C

	.global Unk_ov90_021D1DB4
Unk_ov90_021D1DB4: ; 0x021D1DB4
	.incbin "incbin/overlay90_rodata.bin", 0x58, 0x78 - 0x58

	.global Unk_ov90_021D1DD4
Unk_ov90_021D1DD4: ; 0x021D1DD4
	.incbin "incbin/overlay90_rodata.bin", 0x78, 0xA0 - 0x78

	.global Unk_ov90_021D1DFC
Unk_ov90_021D1DFC: ; 0x021D1DFC
	.incbin "incbin/overlay90_rodata.bin", 0xA0, 0xD0 - 0xA0

	.global Unk_ov90_021D1E2C
Unk_ov90_021D1E2C: ; 0x021D1E2C
	.incbin "incbin/overlay90_rodata.bin", 0xD0, 0x124 - 0xD0

	.global Unk_ov90_021D1E80
Unk_ov90_021D1E80: ; 0x021D1E80
	.incbin "incbin/overlay90_rodata.bin", 0x124, 0xA0


	.data


	.global Unk_ov90_021D1F40
Unk_ov90_021D1F40: ; 0x021D1F40
	.incbin "incbin/overlay90_data.bin", 0x0, 0x18 - 0x0

	.global Unk_ov90_021D1F58
Unk_ov90_021D1F58: ; 0x021D1F58
	.incbin "incbin/overlay90_data.bin", 0x18, 0x30 - 0x18

	.global Unk_ov90_021D1F70
Unk_ov90_021D1F70: ; 0x021D1F70
	.incbin "incbin/overlay90_data.bin", 0x30, 0x48 - 0x30

	.global Unk_ov90_021D1F88
Unk_ov90_021D1F88: ; 0x021D1F88
	.incbin "incbin/overlay90_data.bin", 0x48, 0x60 - 0x48

	.global Unk_ov90_021D1FA0
Unk_ov90_021D1FA0: ; 0x021D1FA0
	.incbin "incbin/overlay90_data.bin", 0x60, 0x19

