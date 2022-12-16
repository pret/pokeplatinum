	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov106_02241AE0
ov106_02241AE0: ; 0x02241AE0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	ldr r0, _02241B98 ; =0x00000068
	mov r1, #2
	bl sub_02006590
	bl ov106_022424C8
	mov r2, #2
	mov r0, #3
	mov r1, #0x62
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0xa7
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x62
	bl sub_0200681C
	mov r2, #0xa7
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	bl sub_020D5124
	mov r0, #0x62
	bl sub_02018340
	str r0, [r5, #0x48]
	add r0, r4, #0
	str r4, [r5, #0]
	bl sub_02006840
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, [r4, #0]
	add r0, #0xb8
	str r1, [r0, #0]
	ldrb r0, [r4, #4]
	add r1, r4, #6
	strb r0, [r5, #9]
	mov r0, #0x8a
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_02025E44
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1, #0]
	mov r1, #0x8b
	ldr r0, [r4, #0xc]
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r2, [r4, #8]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	ldr r2, [r4, #0x14]
	add r0, #8
	str r2, [r5, r0]
	ldrh r0, [r4, #0x18]
	add r1, #0x68
	add r0, r0, #1
	strh r0, [r5, #0x1c]
	ldrb r0, [r4, #5]
	strb r0, [r5, #0xd]
	mov r0, #0xff
	strb r0, [r5, r1]
	strb r0, [r5, #0x18]
	mov r0, #0x75
	strb r0, [r5, #0x1f]
	add r0, r5, #0
	bl ov106_02242500
	ldrb r0, [r5, #9]
	bl ov104_0223B5B0
	cmp r0, #1
	bne _02241B8E
	add r0, r5, #0
	bl sub_0209BA80
_02241B8E:
	mov r0, #0
	str r0, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02241B98: .word 0x00000068
	thumb_func_end ov106_02241AE0

	thumb_func_start ov106_02241B9C
ov106_02241B9C: ; 0x02241B9C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldrb r1, [r4, #0x18]
	cmp r1, #0xff
	beq _02241BC6
	ldr r1, [r5, #0]
	cmp r1, #2
	bne _02241BC6
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	bne _02241BC6
	bl ov106_02243200
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov106_02242D5C
_02241BC6:
	ldr r0, [r5, #0]
	cmp r0, #6
	bls _02241BCE
	b _02241CE4
_02241BCE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241BDA: ; jump table
	.short _02241C02 - _02241BDA - 2 ; case 0
	.short _02241BE8 - _02241BDA - 2 ; case 1
	.short _02241C18 - _02241BDA - 2 ; case 2
	.short _02241C6A - _02241BDA - 2 ; case 3
	.short _02241CAC - _02241BDA - 2 ; case 4
	.short _02241CC2 - _02241BDA - 2 ; case 5
	.short _02241CD0 - _02241BDA - 2 ; case 6
_02241BE8:
	add r0, r4, #0
	bl ov106_02241E14
	cmp r0, #1
	bne _02241BFE
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov106_02242D5C
	b _02241C02
_02241BFE:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02241C02:
	add r0, r4, #0
	bl ov106_02241D28
	cmp r0, #1
	bne _02241CE4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov106_02242D5C
	b _02241CE4
_02241C18:
	add r0, r4, #0
	bl ov106_02241E5C
	cmp r0, #1
	bne _02241CE4
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _02241C34
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov106_02242D5C
	b _02241CE4
_02241C34:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _02241C48
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov106_02242D5C
	mov r0, #0
	pop {r3, r4, r5, pc}
_02241C48:
	ldrb r0, [r4, #9]
	bl ov104_0223B5B0
	cmp r0, #1
	bne _02241C5E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov106_02242D5C
	b _02241CE4
_02241C5E:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #5
	bl ov106_02242D5C
	b _02241CE4
_02241C6A:
	add r0, r4, #0
	bl ov106_02242108
	cmp r0, #1
	bne _02241CE4
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _02241C8A
	mov r0, #0
	strb r0, [r4, #0x19]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov106_02242D5C
	b _02241CE4
_02241C8A:
	ldrb r0, [r4, #9]
	bl ov104_0223B5B0
	cmp r0, #1
	bne _02241CA0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov106_02242D5C
	b _02241CE4
_02241CA0:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #5
	bl ov106_02242D5C
	b _02241CE4
_02241CAC:
	add r0, r4, #0
	bl ov106_0224230C
	cmp r0, #1
	bne _02241CE4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #5
	bl ov106_02242D5C
	b _02241CE4
_02241CC2:
	add r0, r4, #0
	bl ov106_02242344
	cmp r0, #1
	bne _02241CE4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02241CD0:
	add r0, r4, #0
	bl ov106_022423AC
	cmp r0, #1
	bne _02241CE4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov106_02242D5C
_02241CE4:
	add r4, #0xc0
	ldr r0, [r4, #0]
	bl sub_020219F8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov106_02241B9C

	thumb_func_start ov106_02241CF0
ov106_02241CF0: ; 0x02241CF0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200682C
	mov r1, #0x8a
	lsl r1, r1, #2
	ldrb r2, [r0, #0xd]
	ldr r1, [r0, r1]
	strh r2, [r1]
	bl ov106_022423E8
	add r0, r4, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x62
	bl sub_0201807C
	ldr r0, _02241D24 ; =0x00000068
	bl sub_02006514
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02241D24: .word 0x00000068
	thumb_func_end ov106_02241CF0

	thumb_func_start ov106_02241D28
ov106_02241D28: ; 0x02241D28
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #3
	bhi _02241DCE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241D40: ; jump table
	.short _02241D48 - _02241D40 - 2 ; case 0
	.short _02241D6A - _02241D40 - 2 ; case 1
	.short _02241D9C - _02241D40 - 2 ; case 2
	.short _02241DC0 - _02241D40 - 2 ; case 3
_02241D48:
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _02241D62
	ldrb r0, [r4, #9]
	bl ov104_0223B5B0
	cmp r0, #1
	bne _02241D62
	bl sub_020365F4
	mov r0, #0x70
	bl sub_020364F0
_02241D62:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241DCE
_02241D6A:
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _02241D94
	ldrb r0, [r4, #9]
	bl ov104_0223B5B0
	cmp r0, #1
	bne _02241D94
	mov r0, #0x70
	bl sub_02036540
	cmp r0, #1
	bne _02241DCE
	bl sub_020365F4
	mov r0, #1
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241DCE
_02241D94:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241DCE
_02241D9C:
	bl ov106_02241DD4
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x62
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241DCE
_02241DC0:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02241DCE
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02241DCE:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov106_02241D28

	thumb_func_start ov106_02241DD4
ov106_02241DD4: ; 0x02241DD4
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0
	str r1, [sp]
	add r4, r0, #0
	str r1, [sp, #4]
	add r1, r4, #0
	add r1, #0x7c
	mov r2, #1
	mov r3, #2
	bl ov106_02242B38
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x7c
	bl ov106_02242C2C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r2, #0
	add r0, r4, #0
	add r4, #0x6c
	str r2, [sp, #8]
	add r1, r4, #0
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl ov106_02242AC4
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov106_02241DD4

	thumb_func_start ov106_02241E14
ov106_02241E14: ; 0x02241E14
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _02241E58
	ldr r0, [r4, #4]
	bl sub_02006844
	cmp r0, #1
	bne _02241E58
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0x14]
	mov r0, #0x89
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	bl ov106_0224248C
	mov r0, #0
	strh r0, [r4, #0x10]
	mov r0, #1
	pop {r4, pc}
_02241E58:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov106_02241E14

	thumb_func_start ov106_02241E5C
ov106_02241E5C: ; 0x02241E5C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #6
	bhi _02241E9E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241E74: ; jump table
	.short _02241E82 - _02241E74 - 2 ; case 0
	.short _02241E8C - _02241E74 - 2 ; case 1
	.short _02241F52 - _02241E74 - 2 ; case 2
	.short _02241FA0 - _02241E74 - 2 ; case 3
	.short _02242018 - _02241E74 - 2 ; case 4
	.short _02242066 - _02241E74 - 2 ; case 5
	.short _022420BE - _02241E74 - 2 ; case 6
_02241E82:
	mov r0, #0
	strb r0, [r4, #0xb]
	mov r0, #1
	strb r0, [r4, #8]
	b _022420EA
_02241E8C:
	ldr r1, _022420F0 ; =0x021BF67C
	ldr r1, [r1, #0x48]
	bl ov106_02242D64
	ldr r0, _022420F0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02241EA0
_02241E9E:
	b _022420EA
_02241EA0:
	ldrb r0, [r4, #0xd]
	bl ov104_0223B5A4
	cmp r0, #0xfe
	bne _02241ED2
	ldr r0, _022420F4 ; =0x000005DD
	bl sub_02005748
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x62
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	strh r0, [r4, #0x10]
	mov r0, #6
	strb r0, [r4, #8]
	b _022420EA
_02241ED2:
	add r0, r4, #0
	bl ov106_022430B0
	cmp r0, #1
	ldrb r0, [r4, #0xd]
	bne _02241EF2
	bl ov104_0223B5A4
	cmp r0, #9
	beq _02241F26
	ldr r0, _022420F8 ; =0x000005F3
	bl sub_02005748
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_02241EF2:
	bl ov106_02243090
	mov r1, #0x23
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_020301E0
	cmp r0, #0xa
	blo _02241F10
	ldr r0, _022420F8 ; =0x000005F3
	bl sub_02005748
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_02241F10:
	ldrb r0, [r4, #0xd]
	bl ov104_0223B5A4
	cmp r0, #9
	bne _02241F26
	ldr r0, _022420F8 ; =0x000005F3
	bl sub_02005748
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_02241F26:
	ldr r0, _022420F4 ; =0x000005DD
	bl sub_02005748
	ldrb r0, [r4, #9]
	bl ov104_0223B5B0
	cmp r0, #0
	bne _02241F48
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0x48]
	mov r2, #1
	bl ov106_02242FAC
	ldr r0, [r4, #0x48]
	mov r1, #3
	bl sub_0201C3C0
_02241F48:
	mov r0, #8
	strh r0, [r4, #0x14]
	mov r0, #2
	strb r0, [r4, #8]
	b _022420EA
_02241F52:
	ldrh r0, [r4, #0x14]
	sub r0, r0, #1
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	bne _02241FBE
	ldrb r0, [r4, #9]
	bl ov104_0223B5B0
	cmp r0, #0
	bne _02241F74
	add r0, r4, #0
	bl ov106_02243224
	mov r0, #3
	strb r0, [r4, #8]
	b _022420EA
_02241F74:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x4c
	bl ov106_02243758
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov106_02242978
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xd]
	add sp, #0x18
	strb r0, [r4, #0x1a]
	mov r0, #1
	strb r0, [r4, #0x17]
	pop {r3, r4, r5, pc}
_02241FA0:
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02241FC0
	bhs _02242006
	cmp r0, #1
	bhi _02241FBE
	cmp r0, #0
	beq _02241FC6
	cmp r0, #1
	beq _02242006
_02241FBE:
	b _022420EA
_02241FC0:
	add r1, r1, #1
	cmp r0, r1
	b _022420EA
_02241FC6:
	add r0, r4, #0
	bl ov106_02243200
	add r0, r4, #0
	bl ov106_02243098
	cmp r0, #1
	bne _02241FEA
	add r0, r4, #0
	bl ov106_022430B0
	cmp r0, #0
	bne _02241FEA
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0x1f]
	mov r0, #4
	strb r0, [r4, #8]
	b _022420EA
_02241FEA:
	ldr r0, _022420FC ; =0x000005DC
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02242100 ; =0x00000624
	bl sub_02005748
	ldrb r0, [r4, #0x1f]
	cmp r0, #0x75
	beq _02242000
	strb r0, [r4, #0xd]
_02242000:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_02242006:
	add r0, r4, #0
	bl ov106_02243200
	add r0, r4, #0
	bl ov106_022432AC
	mov r0, #1
	strb r0, [r4, #8]
	b _022420EA
_02242018:
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x4c
	bl ov106_02243758
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_02025E44
	bl sub_02027AC0
	mov r3, #1
	str r3, [sp]
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, r4, #0
	add r1, #0x4c
	mov r2, #0x20
	bl ov106_02242918
	strb r0, [r4, #0xa]
	add r0, r4, #0
	add r0, #0x4c
	bl sub_0201A954
	mov r0, #5
	strb r0, [r4, #8]
	b _022420EA
_02242066:
	ldrb r0, [r4, #0xa]
	bl sub_0201D724
	cmp r0, #0
	bne _022420EA
	mov r0, #1
	strb r0, [r4, #0x1e]
	add r0, r4, #0
	bl ov106_022432D4
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov106_022436B0
	ldr r0, [r4, #0x48]
	mov r1, #0x13
	mov r2, #0
	bl ov106_02242FAC
	ldr r1, [r4, #0x48]
	add r0, r4, #0
	bl ov106_02242F4C
	mov r0, #0x13
	strb r0, [r4, #0xd]
	add r0, r4, #0
	bl ov106_02242F24
	add r5, r0, #0
	add r0, r4, #0
	bl ov106_02242F3C
	add r2, r0, #0
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ov106_02243670
	mov r0, #0
	strb r0, [r4, #8]
	b _022420EA
_022420BE:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022420EA
	add r0, r4, #0
	bl ov106_02242CA4
	add r0, r4, #0
	bl ov106_022423E8
	add r1, r4, #0
	add r1, #0xbc
	ldr r0, _02242104 ; =0x020F410C
	ldr r1, [r1, #0]
	mov r2, #0x62
	bl sub_020067E8
	str r0, [r4, #4]
	mov r0, #1
	add sp, #0x18
	strb r0, [r4, #0xb]
	pop {r3, r4, r5, pc}
_022420EA:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022420F0: .word 0x021BF67C
_022420F4: .word 0x000005DD
_022420F8: .word 0x000005F3
_022420FC: .word 0x000005DC
_02242100: .word 0x00000624
_02242104: .word 0x020F410C
	thumb_func_end ov106_02241E5C

	thumb_func_start ov106_02242108
ov106_02242108: ; 0x02242108
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #9
	bhi _02242166
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224211E: ; jump table
	.short _02242132 - _0224211E - 2 ; case 0
	.short _02242154 - _0224211E - 2 ; case 1
	.short _02242234 - _0224211E - 2 ; case 2
	.short _0224219A - _0224211E - 2 ; case 3
	.short _022421EE - _0224211E - 2 ; case 4
	.short _02242252 - _0224211E - 2 ; case 5
	.short _0224229E - _0224211E - 2 ; case 6
	.short _022422AE - _0224211E - 2 ; case 7
	.short _022422D0 - _0224211E - 2 ; case 8
	.short _022422E0 - _0224211E - 2 ; case 9
_02242132:
	ldrb r0, [r4, #0x1a]
	bl ov106_02243090
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #5
	bl ov106_022430B4
	cmp r0, #1
	bne _02242166
	mov r0, #0
	strb r0, [r4, #0x1b]
	strb r0, [r4, #0x1a]
	strb r0, [r4, #0x17]
	mov r0, #1
	strb r0, [r4, #8]
	b _022422FC
_02242154:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _02242160
	sub r0, r0, #1
	strb r0, [r4, #0x1b]
	b _022422FC
_02242160:
	ldrb r0, [r4, #0x16]
	cmp r0, #2
	bhs _02242168
_02242166:
	b _022422FC
_02242168:
	mov r0, #0
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #0x18]
	cmp r0, #0x14
	bhs _02242186
	bl sub_0203608C
	cmp r0, #0
	bne _02242180
	mov r0, #2
	strb r0, [r4, #8]
	b _022422FC
_02242180:
	mov r0, #3
	strb r0, [r4, #8]
	b _022422FC
_02242186:
	bl sub_0203608C
	cmp r0, #0
	bne _02242194
	mov r0, #3
	strb r0, [r4, #8]
	b _022422FC
_02242194:
	mov r0, #2
	strb r0, [r4, #8]
	b _022422FC
_0224219A:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov106_02243664
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x4c
	bl ov106_02243758
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov104_0222E5D0
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #1
	bl ov106_02242978
	strb r0, [r4, #0xa]
	mov r0, #0xa
	mov r1, #0xa5
	strb r0, [r4, #0x1b]
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0x48]
	mov r2, #2
	bl ov106_02242FAC
	ldr r0, [r4, #0x48]
	mov r1, #3
	bl sub_0201C3C0
	mov r0, #4
	strb r0, [r4, #8]
	b _022422FC
_022421EE:
	ldr r1, _02242300 ; =0x00000295
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _02242270
	cmp r2, #1
	bne _02242204
	sub r0, r1, #1
	ldrb r0, [r4, r0]
	strb r0, [r4, #0xd]
	mov r0, #1
	pop {r4, pc}
_02242204:
	bl ov106_022432D4
	mov r1, #0xa5
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0x48]
	mov r2, #0
	bl ov106_02242FAC
	ldr r0, [r4, #0x48]
	mov r1, #3
	bl sub_0201C3C0
	mov r0, #0xa5
	mov r2, #0xff
	lsl r0, r0, #2
	strb r2, [r4, r0]
	mov r1, #0
	add r0, r0, #1
	strb r1, [r4, r0]
	strb r2, [r4, #0x18]
	mov r0, #1
	strb r0, [r4, #0x19]
	pop {r4, pc}
_02242234:
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0x48]
	mov r2, #1
	bl ov106_02242FAC
	ldr r0, [r4, #0x48]
	mov r1, #3
	bl sub_0201C3C0
	add r0, r4, #0
	bl ov106_02243224
	mov r0, #5
	strb r0, [r4, #8]
	b _022422FC
_02242252:
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02242272
	bhs _02242292
	cmp r0, #1
	bhi _022422FC
	cmp r0, #0
	beq _02242278
	cmp r0, #1
	beq _02242292
_02242270:
	b _022422FC
_02242272:
	add r1, r1, #1
	cmp r0, r1
	b _022422FC
_02242278:
	ldr r0, _02242304 ; =0x000005DC
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02242308 ; =0x00000624
	bl sub_02005748
	add r0, r4, #0
	bl ov106_02243200
	mov r0, #6
	strb r0, [r4, #8]
	b _022422FC
_02242292:
	add r0, r4, #0
	bl ov106_02243200
	mov r0, #7
	strb r0, [r4, #8]
	b _022422FC
_0224229E:
	mov r1, #6
	mov r2, #1
	bl ov106_022430B4
	cmp r0, #1
	bne _022422FC
	mov r0, #1
	pop {r4, pc}
_022422AE:
	mov r1, #6
	mov r2, #2
	bl ov106_022430B4
	cmp r0, #1
	bne _022422FC
	add r0, r4, #0
	bl ov106_022432AC
	mov r0, #0xa5
	mov r1, #0xff
	lsl r0, r0, #2
	strb r1, [r4, r0]
	strb r1, [r4, #0x18]
	mov r0, #1
	strb r0, [r4, #0x19]
	pop {r4, pc}
_022422D0:
	bl sub_020365F4
	mov r0, #0x68
	bl sub_020364F0
	mov r0, #9
	strb r0, [r4, #8]
	b _022422FC
_022422E0:
	mov r0, #0x68
	bl sub_02036540
	cmp r0, #1
	bne _022422FC
	bl sub_020365F4
	mov r0, #0x62
	bl sub_020363E8
	mov r0, #0xff
	strb r0, [r4, #0x18]
	mov r0, #1
	pop {r4, pc}
_022422FC:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02242300: .word 0x00000295
_02242304: .word 0x000005DC
_02242308: .word 0x00000624
	thumb_func_end ov106_02242108

	thumb_func_start ov106_0224230C
ov106_0224230C: ; 0x0224230C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0224231C
	cmp r0, #1
	beq _0224232E
	b _02242340
_0224231C:
	bl sub_020365F4
	mov r0, #0x68
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242340
_0224232E:
	mov r0, #0x68
	bl sub_02036540
	cmp r0, #1
	bne _02242340
	bl sub_020365F4
	mov r0, #1
	pop {r4, pc}
_02242340:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov106_0224230C

	thumb_func_start ov106_02242344
ov106_02242344: ; 0x02242344
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0224235A
	cmp r1, #1
	beq _02242366
	cmp r1, #2
	beq _02242396
	b _022423A4
_0224235A:
	mov r0, #0xa
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022423A4
_02242366:
	ldrb r1, [r4, #0x1b]
	sub r1, r1, #1
	strb r1, [r4, #0x1b]
	ldrb r1, [r4, #0x1b]
	cmp r1, #0
	bne _022423A4
	bl ov106_022432D4
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x62
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022423A4
_02242396:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022423A4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_022423A4:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov106_02242344

	thumb_func_start ov106_022423AC
ov106_022423AC: ; 0x022423AC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _022423BC
	cmp r1, #1
	beq _022423DE
	b _022423E2
_022423BC:
	bl ov106_02243200
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov106_02243664
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #0
	bl sub_0200E084
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022423E2
_022423DE:
	mov r0, #1
	pop {r4, pc}
_022423E2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov106_022423AC

	thumb_func_start ov106_022423E8
ov106_022423E8: ; 0x022423E8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _022423FA
	bl ov106_02243650
_022423FA:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02242408
	bl ov106_02243650
_02242408:
	bl sub_02039794
	add r0, r6, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02002FA0
	add r0, r6, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02002FA0
	add r0, r6, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_02002F54
	add r0, r6, #0
	mov r1, #0
	add r0, #0xac
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0xc0
	bl ov106_02243570
	ldr r0, [r6, #0x20]
	bl sub_0200B190
	ldr r0, [r6, #0x24]
	bl sub_0200B3F0
	ldr r0, [r6, #0x28]
	bl sub_020237BC
	ldr r0, [r6, #0x2c]
	bl sub_020237BC
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0200C560
	mov r4, #0
	add r5, r6, #0
_02242464:
	ldr r0, [r5, #0x30]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02242464
	add r0, r6, #0
	add r0, #0x4c
	bl ov106_02243710
	ldr r0, [r6, #0x48]
	bl ov106_022426A4
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02006CA8
	pop {r4, r5, r6, pc}
	thumb_func_end ov106_022423E8

	thumb_func_start ov106_0224248C
ov106_0224248C: ; 0x0224248C
	push {r4, lr}
	add r4, r0, #0
	bl ov106_022424C8
	mov r0, #0x62
	bl sub_02018340
	str r0, [r4, #0x48]
	add r0, r4, #0
	bl ov106_02242500
	ldrb r0, [r4, #0xd]
	bl ov104_0223B5A4
	cmp r0, #0xfe
	bne _022424C6
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl ov106_022436B0
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0xa8
	bl ov106_02243670
_022424C6:
	pop {r4, pc}
	thumb_func_end ov106_0224248C

	thumb_func_start ov106_022424C8
ov106_022424C8: ; 0x022424C8
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
	ldr r0, _022424F8 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _022424FC ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_022424F8: .word 0xFFFFE0FF
_022424FC: .word 0x04001000
	thumb_func_end ov106_022424C8

	thumb_func_start ov106_02242500
ov106_02242500: ; 0x02242500
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x96
	mov r1, #0x62
	bl sub_02006C24
	mov r1, #0x8e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov106_0224262C
	add r0, r5, #0
	bl ov106_02242688
	ldr r2, _02242624 ; =0x00000225
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x62
	bl sub_0200B144
	str r0, [r5, #0x20]
	mov r0, #0x62
	bl sub_0200B358
	str r0, [r5, #0x24]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x62
	bl sub_02023790
	str r0, [r5, #0x28]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x62
	bl sub_02023790
	str r0, [r5, #0x2c]
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x20
_02242554:
	add r0, r7, #0
	mov r1, #0x62
	bl sub_02023790
	str r0, [r4, #0x30]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _02242554
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x62
	bl sub_02002E7C
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x62
	bl sub_02002E98
	mov r0, #0xf
	mov r1, #0xe
	mov r2, #0
	mov r3, #0x62
	bl sub_0200C440
	add r1, r5, #0
	add r1, #0xb0
	str r0, [r1, #0]
	add r1, r5, #0
	ldr r0, [r5, #0x48]
	add r1, #0x4c
	bl ov106_022436E0
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov106_02242F4C
	bl sub_0201FFD0
	add r0, r5, #0
	bl ov106_02242F24
	add r4, r0, #0
	add r0, r5, #0
	bl ov106_02242F3C
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xc0
	mov r2, #1
	add r3, r4, #0
	str r1, [sp, #4]
	bl ov106_022435FC
	mov r1, #0x87
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0xa0
	mov r1, #1
	str r3, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xc0
	add r2, r1, #0
	bl ov106_022435FC
	mov r1, #0x22
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, #0xc
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov106_022436CC
	bl sub_02035E38
	cmp r0, #0
	beq _02242616
	mov r0, #1
	mov r1, #0x10
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	bl sub_02039734
_02242616:
	ldr r0, _02242628 ; =ov106_022426E0
	add r1, r5, #0
	bl sub_02017798
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242624: .word 0x00000225
_02242628: .word ov106_022426E0
	thumb_func_end ov106_02242500

	thumb_func_start ov106_0224262C
ov106_0224262C: ; 0x0224262C
	push {r4, lr}
	add r4, r0, #0
	bl ov106_0224271C
	ldr r0, [r4, #0x48]
	bl ov106_0224273C
	mov r0, #0x62
	bl sub_02002F38
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xac
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r2, r1, #8
	mov r3, #0x62
	bl sub_02002F70
	add r0, r4, #0
	add r0, #0xac
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x62
	bl sub_02002F70
	add r0, r4, #0
	mov r1, #3
	bl ov106_0224283C
	bl ov106_02242884
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #4
	bl ov106_022428B8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov106_0224262C

	thumb_func_start ov106_02242688
ov106_02242688: ; 0x02242688
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0207A0FC
	add r4, #0xc0
	add r1, r0, #0
	add r0, r4, #0
	bl ov106_02243310
	pop {r4, pc}
	thumb_func_end ov106_02242688

	thumb_func_start ov106_022426A4
ov106_022426A4: ; 0x022426A4
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
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov106_022426A4

	thumb_func_start ov106_022426E0
ov106_022426E0: ; 0x022426E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02242712
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022426F8
	bl sub_02003694
_022426F8:
	ldr r0, [r4, #0x48]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _02242714 ; =0x027E0000
	ldr r1, _02242718 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
_02242712:
	pop {r4, pc}
	; .align 2, 0
_02242714: .word 0x027E0000
_02242718: .word 0x00003FF8
	thumb_func_end ov106_022426E0

	thumb_func_start ov106_0224271C
ov106_0224271C: ; 0x0224271C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02242738 ; =0x02243824
	add r3, sp, #0
	mov r2, #5
_02242726:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02242726
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_02242738: .word 0x02243824
	thumb_func_end ov106_0224271C

	thumb_func_start ov106_0224273C
ov106_0224273C: ; 0x0224273C
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02242824 ; =0x022437A4
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02242828 ; =0x022437D0
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
	mov r3, #0x62
	bl sub_02019690
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _0224282C ; =0x022437EC
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
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x62
	bl sub_02019690
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02242830 ; =0x02243808
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
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r5, _02242834 ; =0x022437B4
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	mov r1, #4
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r1, _02242838 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	add sp, #0x80
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242824: .word 0x022437A4
_02242828: .word 0x022437D0
_0224282C: .word 0x022437EC
_02242830: .word 0x02243808
_02242834: .word 0x022437B4
_02242838: .word 0x04000008
	thumb_func_end ov106_0224273C

	thumb_func_start ov106_0224283C
ov106_0224283C: ; 0x0224283C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x62
	str r0, [sp, #0xc]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x48]
	mov r1, #0x17
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x62
	str r0, [sp, #0xc]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x48]
	mov r1, #0x18
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov106_0224283C

	thumb_func_start ov106_02242884
ov106_02242884: ; 0x02242884
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0x96
	mov r1, #0x86
	add r2, sp, #0
	mov r3, #0x62
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0xc0
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0xc0
	bl sub_020C00B4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov106_02242884

	thumb_func_start ov106_022428B8
ov106_022428B8: ; 0x022428B8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x62
	str r0, [sp, #0xc]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x48]
	mov r1, #0x7d
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x62
	str r0, [sp, #0xc]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x48]
	mov r1, #0x7e
	add r3, r4, #0
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x62
	str r0, [sp, #4]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xab
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov106_022428B8

	thumb_func_start ov106_02242918
ov106_02242918: ; 0x02242918
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_0200C388
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r7, #0
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
	add r0, r4, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov106_02242918

	thumb_func_start ov106_02242978
ov106_02242978: ; 0x02242978
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r3, #1
	add r4, r1, #0
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r5, r0, #0
	add r1, r5, #0
	str r2, [sp, #0x14]
	add r1, #0x4c
	add r2, r4, #0
	bl ov106_02242918
	add r5, #0x4c
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201A954
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov106_02242978

	thumb_func_start ov106_022429B0
ov106_022429B0: ; 0x022429B0
	push {r3, r4, r5, r6}
	mov r5, #0
	add r6, r0, #0
	add r3, r5, #0
_022429B8:
	add r4, r6, #0
	add r4, #0x9c
	str r3, [r4, #0]
	add r4, r6, #0
	add r4, #0xa0
	add r5, r5, #1
	add r6, #8
	str r3, [r4, #0]
	cmp r5, #2
	blt _022429B8
	add r5, r0, #0
	add r4, r0, #0
	add r5, #0x9c
	add r4, #0x8c
	str r5, [r4, #0]
	add r4, r0, #0
	add r4, #0x90
	str r1, [r4, #0]
	add r1, r0, #0
	add r1, #0x94
	strb r3, [r1]
	add r1, r0, #0
	mov r3, #1
	add r1, #0x95
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0x96
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x97
	ldrb r2, [r1]
	mov r1, #0xf
	bic r2, r1
	add r1, r0, #0
	add r1, #0x97
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x97
	ldrb r2, [r1]
	mov r1, #0x30
	bic r2, r1
	add r1, r0, #0
	add r1, #0x97
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x97
	ldrb r2, [r1]
	mov r1, #0xc0
	add r0, #0x97
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov106_022429B0

	thumb_func_start ov106_02242A28
ov106_02242A28: ; 0x02242A28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r5, #0
	str r2, [sp]
	add r4, #0x30
	lsl r6, r7, #2
	ldr r0, [r5, #0x20]
	ldr r2, [r4, r6]
	add r1, r3, #0
	bl sub_0200B1B8
	lsl r2, r7, #3
	add r0, r5, r2
	ldr r1, [r4, r6]
	add r0, #0x9c
	str r1, [r0, #0]
	add r1, r5, r2
	ldr r0, [sp]
	add r1, #0xa0
	str r0, [r1, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov106_02242A28

	thumb_func_start ov106_02242A54
ov106_02242A54: ; 0x02242A54
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4, #0xf]
	add r1, r4, #0
	ldr r0, [r4, #0x48]
	add r1, #0x5c
	bl ov106_0224372C
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x5c
	mov r2, #2
	bl ov106_022429B0
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x1b
	bl ov106_02242A28
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x1c
	bl ov106_02242A28
	mov r0, #0x62
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x8c
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	add r4, #0x98
	str r0, [r4, #0]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov106_02242A54

	thumb_func_start ov106_02242AAC
ov106_02242AAC: ; 0x02242AAC
	push {r3, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r0, [r0, #0x24]
	mov r3, #2
	bl sub_0200B60C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov106_02242AAC

	thumb_func_start ov106_02242AC4
ov106_02242AC4: ; 0x02242AC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0207A0FC
	mov r1, #0xb3
	add r2, sp, #0x10
	bl sub_02074470
	add r1, sp, #0x30
	ldrb r1, [r1, #0x18]
	add r0, r5, #0
	bl sub_0201ADA4
	mov r0, #0xb
	mov r1, #0x62
	bl sub_02023790
	add r1, sp, #0x10
	add r6, r0, #0
	bl sub_02023D28
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	add r2, sp, #0x30
	ldrb r0, [r2, #0x10]
	ldrb r3, [r2, #0x14]
	ldrb r1, [r2, #0x18]
	lsl r0, r0, #0x18
	lsl r3, r3, #0x18
	lsr r0, r0, #8
	lsr r3, r3, #0x10
	orr r0, r3
	orr r0, r1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrb r1, [r2, #0x1c]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov106_02242AC4

	thumb_func_start ov106_02242B38
ov106_02242B38: ; 0x02242B38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #0x10]
	add r0, r1, #0
	add r1, sp, #0x30
	ldrb r1, [r1, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201ADA4
	mov r2, #0x27
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #4
	mov r3, #0x62
	bl sub_0200B144
	str r0, [sp, #0x24]
	mov r0, #0xb
	mov r1, #0x62
	bl sub_02023790
	add r5, r0, #0
	mov r0, #0
	lsl r2, r4, #0x18
	lsr r3, r2, #8
	lsl r2, r6, #0x18
	lsr r2, r2, #0x10
	str r0, [sp, #0x28]
	str r0, [sp, #0x20]
	mov r0, #0x10
	add r1, sp, #0x30
	str r0, [sp, #0x14]
	ldrb r0, [r1, #0x10]
	orr r2, r3
	orr r0, r2
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x14]
	str r0, [sp, #0x18]
_02242B86:
	mov r4, #0
	mov r6, #1
_02242B8A:
	ldr r0, [sp, #0x20]
	add r7, r4, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov104_0223B5A4
	cmp r0, #0xfe
	beq _02242BCE
	add r0, r5, #0
	bl sub_020237E8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov104_0223B5A4
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	add r2, r5, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r2, r5, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r3, r6, #0
	bl sub_0201D78C
_02242BCE:
	add r4, r4, #1
	add r6, #0x40
	cmp r4, #4
	blt _02242B8A
	ldr r0, [sp, #0x20]
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	add r0, #0x24
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #5
	blt _02242B86
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	bl sub_0200B190
	ldr r0, [sp, #0x10]
	bl sub_0201A954
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov106_02242B38

	thumb_func_start ov106_02242C04
ov106_02242C04: ; 0x02242C04
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	str r4, [sp]
	str r3, [sp, #4]
	ldr r1, [sp, #0x18]
	add r0, #0xb0
	str r1, [sp, #8]
	add r1, r2, #0
	ldr r0, [r0, #0]
	mov r2, #2
	mov r3, #0
	bl sub_0200C5BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov106_02242C04

	thumb_func_start ov106_02242C2C
ov106_02242C2C: ; 0x02242C2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, #4
	str r1, [sp, #4]
	str r0, [sp, #8]
_02242C3E:
	mov r4, #0
	mov r5, #0x12
_02242C42:
	ldr r0, [sp, #0xc]
	add r7, r4, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov104_0223B5A4
	cmp r0, #0xfe
	beq _02242C82
	cmp r0, #9
	beq _02242C82
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov106_02243090
	mov r1, #0x23
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	bl sub_020301E0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xa
	bls _02242C74
	mov r2, #0xa
_02242C74:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r6, #0
	add r3, r5, #0
	bl ov106_02242C04
_02242C82:
	add r4, r4, #1
	add r5, #0x40
	cmp r4, #4
	blt _02242C42
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x24
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _02242C3E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov106_02242C2C

	thumb_func_start ov106_02242CA4
ov106_02242CA4: ; 0x02242CA4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x62
	mov r1, #0x30
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0
	mov r2, #0x30
	bl sub_020D5124
	mov r0, #0x8b
	add r1, r4, #0
	lsl r0, r0, #2
	add r1, #0xbc
	ldr r2, [r4, r0]
	ldr r1, [r1, #0]
	str r2, [r1, #0]
	add r2, r4, #0
	add r2, #0xbc
	ldr r2, [r2, #0]
	mov r1, #1
	strb r1, [r2, #0x11]
	add r2, r4, #0
	add r2, #0xb4
	ldr r3, [r2, #0]
	add r2, r4, #0
	add r2, #0xbc
	ldr r2, [r2, #0]
	str r3, [r2, #4]
	add r2, r4, #0
	add r2, #0xbc
	ldr r2, [r2, #0]
	strb r1, [r2, #0x12]
	ldr r0, [r4, r0]
	bl sub_0207A0F8
	add r1, r4, #0
	add r1, #0xbc
	ldr r1, [r1, #0]
	strb r0, [r1, #0x13]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #0
	strb r1, [r0, #0x14]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	strh r1, [r0, #0x18]
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_0207A274
	add r1, r4, #0
	add r1, #0xbc
	ldr r1, [r1, #0]
	str r0, [r1, #0x1c]
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_0208C324
	add r1, r4, #0
	add r1, #0xbc
	ldr r1, [r1, #0]
	str r0, [r1, #0x2c]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	ldr r1, _02242D58 ; =0x02243798
	bl sub_0208D720
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_02025E38
	add r4, #0xbc
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0208E9C0
	pop {r4, pc}
	; .align 2, 0
_02242D58: .word 0x02243798
	thumb_func_end ov106_02242CA4

	thumb_func_start ov106_02242D5C
ov106_02242D5C: ; 0x02242D5C
	mov r3, #0
	strb r3, [r0, #8]
	str r2, [r1, #0]
	bx lr
	thumb_func_end ov106_02242D5C

	thumb_func_start ov106_02242D64
ov106_02242D64: ; 0x02242D64
	push {r3, r4, r5, lr}
	ldr r1, _02242F1C ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	mov r0, #0
	tst r1, r2
	beq _02242DAE
	ldrb r0, [r4, #0xd]
	bl ov104_0223B5A4
	cmp r0, #0xfe
	beq _02242D82
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_02242D82:
	ldrb r0, [r4, #0xd]
	mov r1, #0x1e
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	ror r2, r1
	add r1, r3, r2
	bne _02242D98
	add r0, r0, #3
	strb r0, [r4, #0xd]
	b _02242DAC
_02242D98:
	bl ov104_0223B5A4
	cmp r0, #0xfe
	bne _02242DA6
	mov r0, #0x10
	strb r0, [r4, #0xd]
	b _02242DAC
_02242DA6:
	ldrb r0, [r4, #0xd]
	sub r0, r0, #1
	strb r0, [r4, #0xd]
_02242DAC:
	mov r0, #1
_02242DAE:
	ldr r1, _02242F1C ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x10
	tst r1, r2
	beq _02242DF4
	ldrb r0, [r4, #0xd]
	bl ov104_0223B5A4
	cmp r0, #0xfe
	beq _02242DC6
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_02242DC6:
	ldrb r0, [r4, #0xd]
	mov r1, #0x1e
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	ror r2, r1
	add r1, r3, r2
	cmp r1, #3
	bne _02242DDE
	sub r0, r0, #3
	strb r0, [r4, #0xd]
	b _02242DF2
_02242DDE:
	bl ov104_0223B5A4
	cmp r0, #0xfe
	bne _02242DEC
	mov r0, #0x13
	strb r0, [r4, #0xd]
	b _02242DF2
_02242DEC:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
_02242DF2:
	mov r0, #1
_02242DF4:
	ldr r1, _02242F1C ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x40
	tst r1, r2
	beq _02242E5A
	ldrb r0, [r4, #0xd]
	bl ov104_0223B5A4
	cmp r0, #0xfe
	beq _02242E0C
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_02242E0C:
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bhs _02242E18
	add r0, #0x10
	strb r0, [r4, #0xd]
	b _02242E58
_02242E18:
	bl ov104_0223B5A4
	cmp r0, #0xfe
	bne _02242E52
	ldrb r0, [r4, #0xc]
	cmp r0, #0x10
	bne _02242E2C
	mov r0, #0xd
	strb r0, [r4, #0xd]
	b _02242E58
_02242E2C:
	cmp r0, #0x13
	bne _02242E36
	mov r0, #0xe
	strb r0, [r4, #0xd]
	b _02242E58
_02242E36:
	cmp r0, #0xd
	beq _02242E3E
	cmp r0, #1
	bne _02242E44
_02242E3E:
	mov r0, #0xd
	strb r0, [r4, #0xd]
	b _02242E58
_02242E44:
	cmp r0, #0xe
	beq _02242E4C
	cmp r0, #2
	bne _02242E58
_02242E4C:
	mov r0, #0xe
	strb r0, [r4, #0xd]
	b _02242E58
_02242E52:
	ldrb r0, [r4, #0xd]
	sub r0, r0, #4
	strb r0, [r4, #0xd]
_02242E58:
	mov r0, #1
_02242E5A:
	ldr r1, _02242F1C ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x80
	tst r1, r2
	beq _02242EC0
	ldrb r0, [r4, #0xd]
	bl ov104_0223B5A4
	cmp r0, #0xfe
	beq _02242E72
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_02242E72:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x10
	blo _02242E7E
	sub r0, #0x10
	strb r0, [r4, #0xd]
	b _02242EBE
_02242E7E:
	bl ov104_0223B5A4
	cmp r0, #0xfe
	bne _02242EB8
	ldrb r0, [r4, #0xc]
	cmp r0, #0x10
	bne _02242E92
	mov r0, #1
	strb r0, [r4, #0xd]
	b _02242EBE
_02242E92:
	cmp r0, #0x13
	bne _02242E9C
	mov r0, #2
	strb r0, [r4, #0xd]
	b _02242EBE
_02242E9C:
	cmp r0, #0xd
	beq _02242EA4
	cmp r0, #1
	bne _02242EAA
_02242EA4:
	mov r0, #1
	strb r0, [r4, #0xd]
	b _02242EBE
_02242EAA:
	cmp r0, #0xe
	beq _02242EB2
	cmp r0, #2
	bne _02242EBE
_02242EB2:
	mov r0, #2
	strb r0, [r4, #0xd]
	b _02242EBE
_02242EB8:
	ldrb r0, [r4, #0xd]
	add r0, r0, #4
	strb r0, [r4, #0xd]
_02242EBE:
	mov r0, #1
_02242EC0:
	cmp r0, #1
	bne _02242EE6
	ldr r0, _02242F20 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov106_02242F24
	add r5, r0, #0
	add r0, r4, #0
	bl ov106_02242F3C
	add r2, r0, #0
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ov106_02243670
_02242EE6:
	ldrb r0, [r4, #0xd]
	bl ov104_0223B5A4
	cmp r0, #0xfe
	bne _02242F0C
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl ov106_022436B0
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0xa8
	bl ov106_02243670
	pop {r3, r4, r5, pc}
_02242F0C:
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov106_022436B0
	pop {r3, r4, r5, pc}
	nop
_02242F1C: .word 0x021BF67C
_02242F20: .word 0x000005DC
	thumb_func_end ov106_02242D64

	thumb_func_start ov106_02242F24
ov106_02242F24: ; 0x02242F24
	ldrb r0, [r0, #0xd]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #6
	add r0, #0x20
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end ov106_02242F24

	thumb_func_start ov106_02242F3C
ov106_02242F3C: ; 0x02242F3C
	ldrb r0, [r0, #0xd]
	lsr r1, r0, #2
	mov r0, #0x24
	mul r0, r1
	add r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end ov106_02242F3C

	thumb_func_start ov106_02242F4C
ov106_02242F4C: ; 0x02242F4C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl ov106_022430B0
	cmp r0, #1
	bne _02242F72
	mov r4, #0
	mov r6, #3
_02242F5E:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	bl ov106_02242FAC
	add r4, r4, #1
	cmp r4, #0x11
	blt _02242F5E
	b _02242FA2
_02242F72:
	mov r7, #0x23
	mov r4, #0
	lsl r7, r7, #4
_02242F78:
	lsl r0, r4, #0x18
	ldr r1, [r6, r7]
	lsr r0, r0, #0x18
	bl sub_020301E0
	cmp r0, #0xa
	blo _02242F92
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	bl ov106_02242FAC
_02242F92:
	add r4, r4, #1
	cmp r4, #0x11
	blt _02242F78
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #3
	bl ov106_02242FAC
_02242FA2:
	add r0, r5, #0
	mov r1, #3
	bl sub_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov106_02242F4C

	thumb_func_start ov106_02242FAC
ov106_02242FAC: ; 0x02242FAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	bne _02242FBC
	mov r1, #0
	b _02242FCE
_02242FBC:
	cmp r5, #1
	bne _02242FC4
	mov r1, #5
	b _02242FCE
_02242FC4:
	cmp r5, #2
	bne _02242FCC
	mov r1, #4
	b _02242FCE
_02242FCC:
	mov r1, #3
_02242FCE:
	lsr r3, r4, #0x1f
	lsl r2, r4, #0x1e
	sub r2, r2, r3
	mov r0, #0x1e
	ror r2, r0
	add r0, r3, r2
	lsl r0, r0, #3
	str r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r2, r4, #0x1d
	mov ip, r0
	sub r2, r2, r3
	mov r0, #0x1d
	ror r2, r0
	add r6, r3, r2
	cmp r6, #4
	bge _02242FF6
	mov r2, #5
	b _02242FF8
_02242FF6:
	mov r2, #4
_02242FF8:
	cmp r4, #4
	bhs _02243000
	mov r3, #0
	b _0224301A
_02243000:
	cmp r4, #8
	bhs _02243008
	mov r3, #5
	b _0224301A
_02243008:
	cmp r4, #0xc
	bhs _02243010
	mov r3, #9
	b _0224301A
_02243010:
	cmp r4, #0x10
	bhs _02243018
	mov r3, #0xe
	b _0224301A
_02243018:
	mov r3, #0x12
_0224301A:
	mov r0, #8
	str r0, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	add r0, r7, #0
	mov r1, #3
	mov r2, ip
	bl sub_02019E2C
	cmp r5, #0
	bne _0224308C
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r6, #4
	bge _0224303E
	mov r1, #2
	b _02243040
_0224303E:
	mov r1, #3
_02243040:
	cmp r4, #4
	bhs _02243048
	mov r3, #2
	b _02243062
_02243048:
	cmp r4, #8
	bhs _02243050
	mov r3, #6
	b _02243062
_02243050:
	cmp r4, #0xc
	bhs _02243058
	mov r3, #0xb
	b _02243062
_02243058:
	cmp r4, #0x10
	bhs _02243060
	mov r3, #0xf
	b _02243062
_02243060:
	mov r3, #0x14
_02243062:
	cmp r4, #9
	bhs _0224307A
	mov r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #3
	bl sub_02019E2C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0224307A:
	mov r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #3
	bl sub_02019E2C
_0224308C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov106_02242FAC

	thumb_func_start ov106_02243090
ov106_02243090: ; 0x02243090
	cmp r0, #0x11
	blo _02243096
	mov r0, #0x11
_02243096:
	bx lr
	thumb_func_end ov106_02243090

	thumb_func_start ov106_02243098
ov106_02243098: ; 0x02243098
	ldrb r1, [r0, #9]
	cmp r1, #0
	bne _022430AC
	ldrh r0, [r0, #0x1c]
	cmp r0, #0x32
	beq _022430A8
	cmp r0, #0xaa
	bne _022430AC
_022430A8:
	mov r0, #1
	bx lr
_022430AC:
	mov r0, #0
	bx lr
	thumb_func_end ov106_02243098

	thumb_func_start ov106_022430B0
ov106_022430B0: ; 0x022430B0
	ldrb r0, [r0, #0x1e]
	bx lr
	thumb_func_end ov106_022430B0

	thumb_func_start ov106_022430B4
ov106_022430B4: ; 0x022430B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	add r7, r2, #0
	bl ov104_0223B5B0
	cmp r0, #0
	bne _022430CA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022430CA:
	cmp r4, #4
	beq _022430D8
	cmp r4, #5
	beq _022430E4
	cmp r4, #6
	beq _022430F2
	b _022430FE
_022430D8:
	add r0, r5, #0
	add r1, r4, #0
	mov r6, #0x27
	bl ov106_02243118
	b _022430FE
_022430E4:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r6, #0x28
	bl ov106_0224313C
	b _022430FE
_022430F2:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r6, #0x29
	bl ov106_022431D4
_022430FE:
	mov r1, #0x8f
	lsl r1, r1, #2
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #0x2c
	bl sub_020359DC
	cmp r0, #1
	bne _02243114
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02243114:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov106_022430B4

	thumb_func_start ov106_02243118
ov106_02243118: ; 0x02243118
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r4, r1, #0
	bl sub_02025E38
	mov r0, #0x8f
	lsl r0, r0, #2
	strh r4, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov106_02243118

	thumb_func_start ov106_02243130
ov106_02243130: ; 0x02243130
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	cmp r4, r0
	pop {r4, pc}
	thumb_func_end ov106_02243130

	thumb_func_start ov106_0224313C
ov106_0224313C: ; 0x0224313C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x8f
	lsl r0, r0, #2
	strh r1, [r5, r0]
	add r4, r2, #0
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _0224315C
	ldrb r0, [r5, #0x18]
	cmp r0, #0xff
	bne _0224315C
	strb r4, [r5, #0x18]
_0224315C:
	ldrb r1, [r5, #0x18]
	mov r0, #9
	lsl r0, r0, #6
	strh r1, [r5, r0]
	sub r0, #0x14
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0207A0FC
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldr r1, _0224317C ; =0x00000242
	strh r0, [r5, r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224317C: .word 0x00000242
	thumb_func_end ov106_0224313C

	thumb_func_start ov106_02243180
ov106_02243180: ; 0x02243180
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #0x16]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0x16]
	bl sub_0203608C
	cmp r6, r0
	beq _022431D0
	ldrh r1, [r5, #2]
	mov r0, #0xa5
	lsl r0, r0, #2
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _022431C2
	ldrb r0, [r4, #0x18]
	cmp r0, #0xff
	beq _022431B6
	mov r0, #0xa5
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	b _022431C6
_022431B6:
	mov r0, #0xa5
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r0, #0x14
	strb r0, [r4, #0x18]
	b _022431C6
_022431C2:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0x18]
_022431C6:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldrh r1, [r5, #6]
	ldr r0, [r4, r0]
	strh r1, [r0]
_022431D0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov106_02243180

	thumb_func_start ov106_022431D4
ov106_022431D4: ; 0x022431D4
	mov r3, #0x8f
	lsl r3, r3, #2
	strh r1, [r0, r3]
	add r1, r3, #2
	strh r2, [r0, r1]
	bx lr
	thumb_func_end ov106_022431D4

	thumb_func_start ov106_022431E0
ov106_022431E0: ; 0x022431E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0203608C
	cmp r5, r0
	beq _022431FA
	ldrh r1, [r4, #2]
	cmp r1, #0
	beq _022431FA
	ldr r0, _022431FC ; =0x00000295
	strb r1, [r6, r0]
_022431FA:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022431FC: .word 0x00000295
	thumb_func_end ov106_022431E0

	thumb_func_start ov106_02243200
ov106_02243200: ; 0x02243200
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	bne _02243222
	mov r1, #0
	add r0, r4, #0
	strb r1, [r4, #0xf]
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_02001BC4
	add r4, #0x90
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200DC9C
_02243222:
	pop {r4, pc}
	thumb_func_end ov106_02243200

	thumb_func_start ov106_02243224
ov106_02243224: ; 0x02243224
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov106_02243664
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x4c
	bl ov106_02243758
	ldrb r0, [r4, #0xd]
	bl ov104_0223B5A4
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_0200B7EC
	ldrb r0, [r4, #0xd]
	bl ov106_02243090
	mov r1, #0x23
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_020301E0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xa
	bls _02243274
	mov r2, #0xa
_02243274:
	add r0, r4, #0
	mov r1, #1
	bl ov106_02242AAC
	add r0, r4, #0
	bl ov106_022430B0
	cmp r0, #1
	bne _0224328A
	mov r1, #0x1f
	b _0224328C
_0224328A:
	mov r1, #0x18
_0224328C:
	add r0, r4, #0
	mov r2, #1
	bl ov106_02242978
	strb r0, [r4, #0xa]
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov106_022436B0
	add r0, r4, #0
	bl ov106_02242A54
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov106_02243224

	thumb_func_start ov106_022432AC
ov106_022432AC: ; 0x022432AC
	push {r4, lr}
	add r4, r0, #0
	bl ov106_022432D4
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0x48]
	mov r2, #0
	bl ov106_02242FAC
	ldr r0, [r4, #0x48]
	mov r1, #3
	bl sub_0201C3C0
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov106_022436B0
	pop {r4, pc}
	thumb_func_end ov106_022432AC

	thumb_func_start ov106_022432D4
ov106_022432D4: ; 0x022432D4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov106_02243664
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #0
	bl sub_0200E084
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r2, #0
	add r0, r4, #0
	add r4, #0x6c
	str r2, [sp, #8]
	add r1, r4, #0
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl ov106_02242AC4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov106_022432D4

	.rodata


	.global Unk_ov106_02243798
Unk_ov106_02243798: ; 0x02243798
	.incbin "incbin/overlay106_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov106_022437A4
Unk_ov106_022437A4: ; 0x022437A4
	.incbin "incbin/overlay106_rodata.bin", 0xC, 0x1C - 0xC

	.global Unk_ov106_022437B4
Unk_ov106_022437B4: ; 0x022437B4
	.incbin "incbin/overlay106_rodata.bin", 0x1C, 0x38 - 0x1C

	.global Unk_ov106_022437D0
Unk_ov106_022437D0: ; 0x022437D0
	.incbin "incbin/overlay106_rodata.bin", 0x38, 0x54 - 0x38

	.global Unk_ov106_022437EC
Unk_ov106_022437EC: ; 0x022437EC
	.incbin "incbin/overlay106_rodata.bin", 0x54, 0x70 - 0x54

	.global Unk_ov106_02243808
Unk_ov106_02243808: ; 0x02243808
	.incbin "incbin/overlay106_rodata.bin", 0x70, 0x8C - 0x70

	.global Unk_ov106_02243824
Unk_ov106_02243824: ; 0x02243824
	.incbin "incbin/overlay106_rodata.bin", 0x8C, 0x28

