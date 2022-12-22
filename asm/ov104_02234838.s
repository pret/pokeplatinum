	.include "macros/function.inc"
	.include "include/ov104_02234838.inc"

	

	.text


	thumb_func_start ov104_02234838
ov104_02234838: ; 0x02234838
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov104_0222FC00
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov104_0222FC00
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	lsl r1, r7, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	lsl r2, r4, #0x18
	lsl r3, r6, #0x18
	ldr r0, [r0, #8]
	ldr r1, [sp, #4]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov104_02234DB4
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B980
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02234838

	thumb_func_start ov104_0223488C
ov104_0223488C: ; 0x0223488C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r4, #0
	bl ov104_022350B0
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223488C

	thumb_func_start ov104_022348A8
ov104_022348A8: ; 0x022348A8
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_02235190
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_022348A8

	thumb_func_start ov104_022348BC
ov104_022348BC: ; 0x022348BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r7, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x20
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r5, r0, #0
	bl MI_CpuFill8
	ldr r0, [r7, #8]
	ldr r1, _0223497C ; =0x00000704
	str r0, [r5, #0]
	ldrb r0, [r4, #4]
	add r3, r4, r1
	sub r1, #0xf
	strb r0, [r5, #4]
	str r4, [r5, #0x10]
	ldrb r2, [r4, #4]
	lsl r0, r2, #3
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r5, #8]
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [r5, #0xc]
	ldrh r0, [r4, #8]
	strh r0, [r5, #0x18]
	ldrb r0, [r4, r1]
	strb r0, [r5, #5]
	ldr r0, _02234980 ; =0x00000D84
	add r0, r4, r0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	bl sub_0207A008
	ldr r0, [r7, #8]
	bl sub_0207A268
	mov r1, #0x26
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	add r7, r0, #0
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A048
	ldrb r0, [r5, #4]
	cmp r0, #1
	bne _02234950
	ldr r1, _02234984 ; =0x00000261
	add r0, r7, #0
	ldrb r1, [r4, r1]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A048
	b _02234964
_02234950:
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02234964
	ldr r1, _02234988 ; =0x00000D8C
	ldr r0, [r5, #0xc]
	ldr r1, [r4, r1]
	bl sub_0207A048
_02234964:
	ldr r0, _0223498C ; =ov104_02234A08
	ldr r1, _02234990 ; =0x0223FA4C
	str r0, [sp]
	ldr r0, [r6, #0]
	add r2, r5, #0
	ldr r0, [r0, #0]
	mov r3, #0
	bl sub_0209B988
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223497C: .word 0x00000704
_02234980: .word 0x00000D84
_02234984: .word 0x00000261
_02234988: .word 0x00000D8C
_0223498C: .word ov104_02234A08
_02234990: .word 0x0223FA4C
	thumb_func_end ov104_022348BC

	thumb_func_start ov104_02234994
ov104_02234994: ; 0x02234994
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	ldr r5, [r4, r0]
	ldr r0, [r5, #0x14]
	bl sub_02052868
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_020520A4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02234994

	thumb_func_start ov104_022349B8
ov104_022349B8: ; 0x022349B8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r6, #0
	add r4, r0, #0
	bl ov104_0223B250
	add r6, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	str r6, [r4, r0]
	ldr r1, _02234A00 ; =0x0000045F
	mov r0, #5
	mov r2, #1
	bl sub_02004550
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0]
	ldr r1, _02234A04 ; =0x020EA358
	ldr r0, [r0, #0]
	add r2, r6, #0
	bl sub_0209B988
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02234A00: .word 0x0000045F
_02234A04: .word 0x020EA358
	thumb_func_end ov104_022349B8

	thumb_func_start ov104_02234A08
ov104_02234A08: ; 0x02234A08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r4, #0
	bl ov104_022351CC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov104_02234A08

	thumb_func_start ov104_02234A1C
ov104_02234A1C: ; 0x02234A1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	add r2, r1, #1
	str r2, [r4, #0x1c]
	ldrb r7, [r1]
	add r1, r2, #1
	str r1, [r4, #0x1c]
	ldrb r6, [r2]
	add r1, r1, #1
	str r1, [r4, #0x1c]
	bl ov104_0222FBE4
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	cmp r7, #0x26
	bls _02234A54
	b _02234C62
_02234A54:
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02234A60: ; jump table
	.short _02234C62 - _02234A60 - 2 ; case 0
	.short _02234C62 - _02234A60 - 2 ; case 1
	.short _02234AAE - _02234A60 - 2 ; case 2
	.short _02234AB2 - _02234A60 - 2 ; case 3
	.short _02234ABA - _02234A60 - 2 ; case 4
	.short _02234AC0 - _02234A60 - 2 ; case 5
	.short _02234C62 - _02234A60 - 2 ; case 6
	.short _02234ACE - _02234A60 - 2 ; case 7
	.short _02234C62 - _02234A60 - 2 ; case 8
	.short _02234AD6 - _02234A60 - 2 ; case 9
	.short _02234AE2 - _02234A60 - 2 ; case 10
	.short _02234C62 - _02234A60 - 2 ; case 11
	.short _02234C62 - _02234A60 - 2 ; case 12
	.short _02234C62 - _02234A60 - 2 ; case 13
	.short _02234AEA - _02234A60 - 2 ; case 14
	.short _02234C18 - _02234A60 - 2 ; case 15
	.short _02234C62 - _02234A60 - 2 ; case 16
	.short _02234BAC - _02234A60 - 2 ; case 17
	.short _02234C62 - _02234A60 - 2 ; case 18
	.short _02234AF2 - _02234A60 - 2 ; case 19
	.short _02234B04 - _02234A60 - 2 ; case 20
	.short _02234B0E - _02234A60 - 2 ; case 21
	.short _02234B14 - _02234A60 - 2 ; case 22
	.short _02234B1A - _02234A60 - 2 ; case 23
	.short _02234B22 - _02234A60 - 2 ; case 24
	.short _02234C62 - _02234A60 - 2 ; case 25
	.short _02234C62 - _02234A60 - 2 ; case 26
	.short _02234B2A - _02234A60 - 2 ; case 27
	.short _02234B66 - _02234A60 - 2 ; case 28
	.short _02234B9C - _02234A60 - 2 ; case 29
	.short _02234BA2 - _02234A60 - 2 ; case 30
	.short _02234BB2 - _02234A60 - 2 ; case 31
	.short _02234BCA - _02234A60 - 2 ; case 32
	.short _02234BF8 - _02234A60 - 2 ; case 33
	.short _02234C10 - _02234A60 - 2 ; case 34
	.short _02234C36 - _02234A60 - 2 ; case 35
	.short _02234C3C - _02234A60 - 2 ; case 36
	.short _02234C42 - _02234A60 - 2 ; case 37
	.short _02234C62 - _02234A60 - 2 ; case 38
_02234AAE:
	strb r6, [r4, #4]
	b _02234C62
_02234AB2:
	ldr r0, _02234C68 ; =0x000006F2
	ldrh r0, [r4, r0]
	strh r0, [r5]
	b _02234C62
_02234ABA:
	ldrh r0, [r4, #8]
	strh r0, [r5]
	b _02234C62
_02234AC0:
	ldrh r1, [r4, #8]
	ldr r0, _02234C6C ; =0x0000270F
	cmp r1, r0
	bhs _02234B64
	add r0, r1, #1
	strh r0, [r4, #8]
	b _02234C62
_02234ACE:
	mov r0, #0
	bl OS_ResetSystem
	b _02234C62
_02234AD6:
	ldr r0, _02234C70 ; =0x000006F8
	ldr r0, [r4, r0]
	bl sub_02030124
	strh r0, [r5]
	b _02234C62
_02234AE2:
	mov r1, #2
	bl ov104_0223526C
	b _02234C62
_02234AEA:
	bl ov104_022354B0
	strh r0, [r5]
	b _02234C62
_02234AF2:
	ldrb r0, [r4, #4]
	cmp r0, #2
	bne _02234AFE
	mov r0, #0xa
	strh r0, [r5]
	b _02234C62
_02234AFE:
	ldrh r0, [r4, #0xa]
	strh r0, [r5]
	b _02234C62
_02234B04:
	add r1, r6, #0
	bl ov104_022354C0
	strh r0, [r5]
	b _02234C62
_02234B0E:
	bl ov104_022354F4
	b _02234C62
_02234B14:
	bl ov104_02235518
	b _02234C62
_02234B1A:
	bl ov104_022354BC
	strh r0, [r5]
	b _02234C62
_02234B22:
	ldr r0, _02234C74 ; =0x00000D88
	ldrb r0, [r4, r0]
	strh r0, [r5]
	b _02234C62
_02234B2A:
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	bl sub_0207A268
	str r0, [sp]
	ldrb r0, [r4, #4]
	bl ov104_0223B500
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _02234B64
	ldr r0, _02234C78 ; =0x00000728
	add r6, r4, r0
_02234B46:
	mov r1, #0x26
	add r2, r4, r5
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	ldr r0, [sp]
	bl sub_0207A0FC
	mov r1, #6
	add r2, r6, #0
	bl sub_02074B30
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, r7
	blt _02234B46
_02234B64:
	b _02234C62
_02234B66:
	ldr r1, _02234C7C ; =0x000006F5
	ldrb r2, [r4, #4]
	ldrb r0, [r4, r1]
	add r1, #0xf
	add r3, r4, r1
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r3, r1
	bl sub_020301E0
	add r2, r0, #0
	cmp r2, #0xa
	bhs _02234C62
	ldr r1, _02234C7C ; =0x000006F5
	ldrb r3, [r4, #4]
	ldrb r0, [r4, r1]
	add r1, #0xf
	add r5, r4, r1
	lsl r1, r3, #3
	add r2, r2, #1
	add r1, r3, r1
	lsl r2, r2, #0x18
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl sub_02030204
	b _02234C62
_02234B9C:
	bl sub_0209BA80
	b _02234C62
_02234BA2:
	ldrb r0, [r4, #4]
	bl ov104_0223B5B0
	strh r0, [r5]
	b _02234C62
_02234BAC:
	ldrb r0, [r4, #4]
	strh r0, [r5]
	b _02234C62
_02234BB2:
	cmp r6, #0
	bne _02234BC0
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	b _02234C62
_02234BC0:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	b _02234C62
_02234BCA:
	ldrb r1, [r4, #5]
	add r0, #0x40
	mov r2, #0xb
	lsl r1, r1, #2
	add r1, r4, r1
	ldrh r1, [r1, #0x18]
	mov r3, #0xb2
	bl ov104_0222E278
	ldrb r1, [r4, #5]
	mov r0, #0x15
	lsl r0, r0, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, #0x18]
	add r0, r4, r0
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222E278
	b _02234C62
_02234BF8:
	ldr r1, _02234C7C ; =0x000006F5
	ldrb r2, [r4, #4]
	ldrb r0, [r4, r1]
	add r1, #0xf
	add r3, r4, r1
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r3, r1
	bl sub_020301E0
	strh r0, [r5]
	b _02234C62
_02234C10:
	bl ov104_02235578
	strh r0, [r5]
	b _02234C62
_02234C18:
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	bl sub_0207A268
	mov r1, #0x26
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r5]
	b _02234C62
_02234C36:
	bl ov104_022356A0
	b _02234C62
_02234C3C:
	bl ov104_022356F4
	b _02234C62
_02234C42:
	mov r0, #0
	strh r0, [r5]
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02234C62
	ldrh r0, [r4, #8]
	add r0, r0, #1
	cmp r0, #0x32
	bne _02234C5A
	mov r0, #1
	strh r0, [r5]
	b _02234C62
_02234C5A:
	cmp r0, #0xaa
	bne _02234C62
	mov r0, #2
	strh r0, [r5]
_02234C62:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234C68: .word 0x000006F2
_02234C6C: .word 0x0000270F
_02234C70: .word 0x000006F8
_02234C74: .word 0x00000D88
_02234C78: .word 0x00000728
_02234C7C: .word 0x000006F5
	thumb_func_end ov104_02234A1C

	thumb_func_start ov104_02234C80
ov104_02234C80: ; 0x02234C80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldr r0, [r0, #0x14]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02234C80

	thumb_func_start ov104_02234C9C
ov104_02234C9C: ; 0x02234C9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r6, #0
	add r2, r7, #0
	bl ov104_02235534
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02234C9C

	thumb_func_start ov104_02234CCC
ov104_02234CCC: ; 0x02234CCC
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222EA48
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _02234CE8 ; =ov104_02234CEC
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	nop
_02234CE8: .word ov104_02234CEC
	thumb_func_end ov104_02234CCC

	thumb_func_start ov104_02234CEC
ov104_02234CEC: ; 0x02234CEC
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC8C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	mov r1, #0xd9
	lsl r1, r1, #4
	ldrb r2, [r0, r1]
	cmp r2, #2
	blo _02234D14
	mov r2, #0
	strb r2, [r0, r1]
	mov r0, #1
	pop {r4, pc}
_02234D14:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov104_02234CEC

	thumb_func_start ov104_02234D18
ov104_02234D18: ; 0x02234D18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r1, [r5, #0x1c]
	add r0, r1, #1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	ldrb r4, [r1]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r2, r0, #0
	bne _02234D3C
	mov r0, #0
	pop {r3, r4, r5, pc}
_02234D3C:
	lsl r1, r4, #4
	add r1, r4, r1
	add r2, #0x58
	lsl r1, r1, #4
	add r0, r5, #0
	add r1, r2, r1
	bl ov104_022330FC
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02234D18

	thumb_func_start ov104_02234D50
ov104_02234D50: ; 0x02234D50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r4, #0
	bl ov104_0223520C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02234D50

	thumb_func_start ov104_02234D6C
ov104_02234D6C: ; 0x02234D6C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl sub_0207A268
	mov r1, #0x26
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02234DB0
	ldr r0, [r5, #8]
	bl sub_0202440C
	add r1, r6, #0
	bl sub_0206D048
_02234DB0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_02234D6C

	.rodata


	.global Unk_ov104_0223FA4C
Unk_ov104_0223FA4C: ; 0x0223FA4C
	.incbin "incbin/overlay104_rodata.bin", 0x7BC, 0x10

