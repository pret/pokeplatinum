	.include "macros/function.inc"
	.include "include/unk_02056B30.inc"

	

	.text


	thumb_func_start sub_02056B30
sub_02056B30: ; 0x02056B30
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	ldr r0, [sp, #0x24]
	mov r1, #0x20
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r2, r0, #0
	str r5, [r2, #4]
	str r4, [r2, #8]
	str r6, [r2, #0xc]
	add r0, sp, #8
	ldrh r0, [r0, #0x10]
	ldr r1, _02056B6C ; =sub_02056B70
	strh r0, [r2, #0x10]
	ldr r0, [sp, #0x1c]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x18]
	ldr r0, [sp, #0x24]
	str r0, [r2, #0x1c]
	mov r0, #0
	str r0, [r2, #0]
	add r0, r7, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02056B6C: .word sub_02056B70
	thumb_func_end sub_02056B30

	thumb_func_start sub_02056B70
sub_02056B70: ; 0x02056B70
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02056B90
	cmp r0, #1
	beq _02056BB8
	b _02056BD4
_02056B90:
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #8]
	ldrh r3, [r4, #0x10]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056BD4
_02056BB8:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02056BD4
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02056BD4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02056B70

	thumb_func_start sub_02056BDC
sub_02056BDC: ; 0x02056BDC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x24
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r5, [r2, #8]
	str r4, [r2, #0xc]
	ldr r0, [sp, #0x18]
	str r6, [r2, #0x10]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, _02056C14 ; =sub_02056CFC
	str r0, [r2, #0x18]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x20]
	add r0, r7, #0
	bl sub_02050904
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02056C14: .word sub_02056CFC
	thumb_func_end sub_02056BDC

	thumb_func_start sub_02056C18
sub_02056C18: ; 0x02056C18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x24
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02018184
	add r6, r0, #0
	mov r4, #0
	str r4, [r6, #0]
	str r4, [r6, #4]
	ldr r0, [sp]
	str r5, [r6, #8]
	str r0, [r6, #0xc]
	ldr r0, [sp, #4]
	str r0, [r6, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r6, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r6, #0x18]
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	bl sub_0203A274
	cmp r0, #0
	beq _02056C84
	add r0, r5, #0
	bl sub_0203A274
	cmp r0, #0
	beq _02056C62
	mov r4, #6
	b _02056CE6
_02056C62:
	add r0, r5, #0
	bl sub_0203A2A8
	cmp r0, #0
	beq _02056C70
	mov r4, #5
	b _02056CE6
_02056C70:
	add r0, r5, #0
	bl sub_0203A288
	cmp r0, #0
	beq _02056C7E
	mov r4, #6
	b _02056CE6
_02056C7E:
	bl sub_02022974
	b _02056CE6
_02056C84:
	ldr r0, [sp, #8]
	bl sub_0203A2A8
	cmp r0, #0
	beq _02056CB0
	add r0, r5, #0
	bl sub_0203A274
	cmp r0, #0
	beq _02056C9C
	mov r4, #4
	b _02056CE6
_02056C9C:
	add r0, r5, #0
	bl sub_0203A288
	cmp r0, #0
	beq _02056CAA
	mov r4, #6
	b _02056CE6
_02056CAA:
	bl sub_02022974
	b _02056CE6
_02056CB0:
	ldr r0, [sp, #8]
	bl sub_0203A288
	cmp r0, #0
	beq _02056CE2
	add r0, r5, #0
	bl sub_0203A2A8
	cmp r0, #0
	bne _02056CE6
	add r0, r5, #0
	bl sub_0203A288
	cmp r0, #0
	beq _02056CD2
	mov r4, #6
	b _02056CE6
_02056CD2:
	add r0, r5, #0
	bl sub_0203A274
	cmp r0, #0
	bne _02056CE6
	bl sub_02022974
	b _02056CE6
_02056CE2:
	bl sub_02022974
_02056CE6:
	ldr r1, _02056CF8 ; =sub_02056CFC
	add r0, r7, #0
	add r2, r6, #0
	str r4, [r6, #0x20]
	bl sub_02050904
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02056CF8: .word sub_02056CFC
	thumb_func_end sub_02056C18

	thumb_func_start sub_02056CFC
sub_02056CFC: ; 0x02056CFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	add r6, r4, #0
	ldr r1, [r4, #0]
	add r6, #8
	cmp r1, #6
	bhi _02056DD4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02056D24: ; jump table
	.short _02056D32 - _02056D24 - 2 ; case 0
	.short _02056D56 - _02056D24 - 2 ; case 1
	.short _02056D64 - _02056D24 - 2 ; case 2
	.short _02056D74 - _02056D24 - 2 ; case 3
	.short _02056D82 - _02056D24 - 2 ; case 4
	.short _02056D9A - _02056D24 - 2 ; case 5
	.short _02056DCC - _02056D24 - 2 ; case 6
_02056D32:
	mov r0, #0
	str r0, [r4, #4]
	ldr r1, [r6, #0]
	add r0, r7, #0
	bl sub_02055644
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	lsl r2, r1, #2
	ldr r1, _02056DD8 ; =0x020EC560
	ldr r1, [r1, r2]
	add r2, r4, #0
	bl sub_02050944
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056D56:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056D64:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056D74:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056D82:
	ldr r0, [r4, #0x20]
	lsl r1, r0, #2
	ldr r0, _02056DDC ; =0x020EC57C
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02056D92
	add r0, r7, #0
	blx r1
_02056D92:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056D9A:
	bl sub_02005684
	cmp r0, #0
	bne _02056DD4
	ldr r1, [r6, #0]
	add r0, r7, #0
	bl sub_02055670
	add r0, r7, #0
	bl ov5_021DDAA4
	mov r0, #0
	str r0, [r4, #4]
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	lsl r2, r1, #2
	ldr r1, _02056DE0 ; =0x020EC544
	ldr r1, [r1, r2]
	add r2, r4, #0
	bl sub_02050944
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02056DD4
_02056DCC:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02056DD4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02056DD8: .word 0x020EC560
_02056DDC: .word 0x020EC57C
_02056DE0: .word 0x020EC544
	thumb_func_end sub_02056CFC

	thumb_func_start sub_02056DE4
sub_02056DE4: ; 0x02056DE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02056E00
	cmp r0, #1
	beq _02056E14
	b _02056E18
_02056E00:
	ldr r0, _02056E1C ; =0x00000603
	bl sub_02005748
	add r0, r5, #0
	bl sub_020558AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056E18
_02056E14:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02056E18:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02056E1C: .word 0x00000603
	thumb_func_end sub_02056DE4

	thumb_func_start sub_02056E20
sub_02056E20: ; 0x02056E20
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _02056E9E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02056E44: ; jump table
	.short _02056E4C - _02056E44 - 2 ; case 0
	.short _02056E72 - _02056E44 - 2 ; case 1
	.short _02056E8C - _02056E44 - 2 ; case 2
	.short _02056E9A - _02056E44 - 2 ; case 3
_02056E4C:
	bl ov5_021D431C
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	ldr r2, [r4, #0x1c]
	add r0, r6, #0
	bl ov5_021D4334
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056E9E
_02056E72:
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	bl ov5_021D433C
	cmp r0, #0
	beq _02056E9E
	ldr r0, [r4, #0x1c]
	bl ov5_021D432C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056E9E
_02056E8C:
	add r0, r6, #0
	bl sub_020558AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056E9E
_02056E9A:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02056E9E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02056E20

	thumb_func_start sub_02056EA4
sub_02056EA4: ; 0x02056EA4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02056EC6
	cmp r0, #1
	beq _02056EEC
	cmp r0, #2
	beq _02056F14
	b _02056F18
_02056EC6:
	bl ov5_021D431C
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	ldr r2, [r4, #0x1c]
	add r0, r6, #0
	bl ov5_021D4334
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056F18
_02056EEC:
	ldr r0, [r5, #0x3c]
	ldr r6, [r4, #0x1c]
	bl sub_0205EA78
	add r2, r0, #0
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov5_021D4A24
	cmp r0, #0
	beq _02056F18
	ldr r0, [r4, #0x1c]
	bl ov5_021D432C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056F18
_02056F14:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02056F18:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02056EA4

	thumb_func_start sub_02056F1C
sub_02056F1C: ; 0x02056F1C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _02056FB8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02056F40: ; jump table
	.short _02056F48 - _02056F40 - 2 ; case 0
	.short _02056F7A - _02056F40 - 2 ; case 1
	.short _02056F98 - _02056F40 - 2 ; case 2
	.short _02056FAC - _02056F40 - 2 ; case 3
_02056F48:
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	cmp r6, #2
	bne _02056F62
	mov r1, #0xa
	bl sub_02065638
	b _02056F72
_02056F62:
	cmp r6, #3
	bne _02056F6E
	mov r1, #0xb
	bl sub_02065638
	b _02056F72
_02056F6E:
	bl sub_02022974
_02056F72:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056FB8
_02056F7A:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _02056FB8
	add r0, r5, #0
	bl sub_020656AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056FB8
_02056F98:
	ldr r0, _02056FBC ; =0x00000603
	bl sub_02005748
	mov r0, #0
	bl ov5_021D1744
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056FB8
_02056FAC:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02056FB8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02056FB8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02056FBC: .word 0x00000603
	thumb_func_end sub_02056F1C

	thumb_func_start sub_02056FC0
sub_02056FC0: ; 0x02056FC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02056FE4
	cmp r0, #1
	beq _02056FFA
	b _02056FFE
_02056FE4:
	bl ov5_021D4E00
	add r2, r0, #0
	ldr r1, _02057004 ; =0x021D4FA1
	add r0, r5, #0
	bl sub_02050944
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02056FFE
_02056FFA:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02056FFE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02057004: .word 0x021D4FA1
	thumb_func_end sub_02056FC0

	thumb_func_start sub_02057008
sub_02057008: ; 0x02057008
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0205702C
	cmp r0, #1
	beq _02057042
	b _02057046
_0205702C:
	bl ov5_021D4E00
	add r2, r0, #0
	ldr r1, _0205704C ; =0x021D4F15
	add r0, r5, #0
	bl sub_02050944
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02057046
_02057042:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02057046:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0205704C: .word 0x021D4F15
	thumb_func_end sub_02057008

	thumb_func_start sub_02057050
sub_02057050: ; 0x02057050
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #3
	bhi _02057114
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02057074: ; jump table
	.short _0205707C - _02057074 - 2 ; case 0
	.short _020570C6 - _02057074 - 2 ; case 1
	.short _020570EC - _02057074 - 2 ; case 2
	.short _02057110 - _02057074 - 2 ; case 3
_0205707C:
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02054F94
	bl sub_0205DAEC
	cmp r0, #0
	beq _020570B2
	add r0, r7, #0
	mov r1, #1
	bl sub_02062D64
	mov r0, #1
	str r0, [r5, #4]
	b _02057114
_020570B2:
	bl ov5_021D4E00
	add r2, r0, #0
	ldr r1, _02057118 ; =0x021D5021
	add r0, r6, #0
	bl sub_02050944
	mov r0, #3
	str r0, [r5, #4]
	b _02057114
_020570C6:
	bl ov5_021D431C
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	ldr r2, [r5, #0x1c]
	add r0, r6, #0
	bl ov5_021D4334
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _02057114
_020570EC:
	ldr r5, [r5, #0x1c]
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D453C
	cmp r0, #0
	beq _02057114
	add r0, r5, #0
	bl ov5_021D432C
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	mov r1, #0
	bl sub_02062D64
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02057110:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02057114:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02057118: .word 0x021D5021
	thumb_func_end sub_02057050

	thumb_func_start sub_0205711C
sub_0205711C: ; 0x0205711C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0205713A
	cmp r0, #1
	beq _02057190
	b _02057194
_0205713A:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r7, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02054F94
	bl sub_0205DAEC
	cmp r0, #0
	beq _0205717A
	add r0, r7, #0
	mov r1, #1
	bl sub_02062D64
	mov r0, #1
	str r0, [r4, #4]
	ldr r1, _02057198 ; =sub_02057050
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050924
	b _02057194
_0205717A:
	bl ov5_021D4E00
	add r2, r0, #0
	ldr r1, _0205719C ; =0x021D5151
	add r0, r6, #0
	bl sub_02050944
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02057194
_02057190:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02057194:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02057198: .word sub_02057050
_0205719C: .word 0x021D5151
	thumb_func_end sub_0205711C

	thumb_func_start sub_020571A0
sub_020571A0: ; 0x020571A0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020571C2
	cmp r0, #1
	beq _020571E8
	cmp r0, #2
	beq _02057210
	b _02057214
_020571C2:
	bl ov5_021D431C
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	ldr r2, [r4, #0x1c]
	add r0, r6, #0
	bl ov5_021D4334
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02057214
_020571E8:
	ldr r0, [r5, #0x3c]
	ldr r6, [r4, #0x1c]
	bl sub_0205EA78
	add r2, r0, #0
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov5_021D4858
	cmp r0, #0
	beq _02057214
	ldr r0, [r4, #0x1c]
	bl ov5_021D432C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02057214
_02057210:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02057214:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020571A0

	thumb_func_start sub_02057218
sub_02057218: ; 0x02057218
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _020572B2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205723C: ; jump table
	.short _02057244 - _0205723C - 2 ; case 0
	.short _02057280 - _0205723C - 2 ; case 1
	.short _0205729E - _0205723C - 2 ; case 2
	.short _020572AE - _0205723C - 2 ; case 3
_02057244:
	mov r0, #1
	bl ov5_021D1744
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	cmp r0, #2
	bne _02057266
	add r0, r6, #0
	mov r1, #0xa
	bl sub_02065638
	b _02057278
_02057266:
	cmp r0, #3
	bne _02057274
	add r0, r6, #0
	mov r1, #0xb
	bl sub_02065638
	b _02057278
_02057274:
	bl sub_02022974
_02057278:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020572B2
_02057280:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _020572B2
	add r0, r5, #0
	bl sub_020656AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020572B2
_0205729E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _020572B2
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020572B2
_020572AE:
	mov r0, #1
	pop {r4, r5, r6, pc}
_020572B2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02057218

	thumb_func_start sub_020572B8
sub_020572B8: ; 0x020572B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020572DC
	cmp r0, #1
	beq _020572F2
	b _020572F6
_020572DC:
	bl ov5_021D4E00
	add r2, r0, #0
	ldr r1, _020572FC ; =0x021D4E11
	add r0, r5, #0
	bl sub_02050944
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020572F6
_020572F2:
	mov r0, #1
	pop {r4, r5, r6, pc}
_020572F6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020572FC: .word 0x021D4E11
	thumb_func_end sub_020572B8

	thumb_func_start sub_02057300
sub_02057300: ; 0x02057300
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	bl sub_0205EAEC
	cmp r4, #3
	bne _02057326
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #4]
	b _02057330
_02057326:
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #4]
_02057330:
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	bl sub_02054FBC
	str r0, [sp, #8]
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	add r2, r4, #0
	bl sub_0205ECB8
	ldr r0, [r5, #0x3c]
	bl sub_0205EAFC
	ldr r1, [r5, #0x24]
	bl sub_02020A5C
	ldr r0, [r5, #0x3c]
	bl sub_0205EAFC
	ldr r1, [r5, #0x24]
	bl sub_02020690
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02057300

	thumb_func_start sub_02057368
sub_02057368: ; 0x02057368
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	bl sub_0205EAEC
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02054F94
	add r6, r0, #0
	bl sub_0205DC44
	cmp r0, #0
	beq _020573AE
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #4]
	mov r4, #2
	b _020573C4
_020573AE:
	add r0, r6, #0
	bl sub_0205DC50
	cmp r0, #0
	beq _020573C4
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #4]
	mov r4, #3
_020573C4:
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	bl sub_02054FBC
	str r0, [sp, #8]
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	add r2, r4, #0
	bl sub_0205ECB8
	ldr r0, [r5, #0x3c]
	bl sub_0205EAFC
	ldr r1, [r5, #0x24]
	bl sub_02020A5C
	ldr r0, [r5, #0x3c]
	bl sub_0205EAFC
	ldr r1, [r5, #0x24]
	bl sub_02020690
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02057368

	.rodata


	.global Unk_020EC544
Unk_020EC544: ; 0x020EC544
	.incbin "incbin/arm9_rodata.bin", 0x7904, 0x7920 - 0x7904

	.global Unk_020EC560
Unk_020EC560: ; 0x020EC560
	.incbin "incbin/arm9_rodata.bin", 0x7920, 0x793C - 0x7920

	.global Unk_020EC57C
Unk_020EC57C: ; 0x020EC57C
	.incbin "incbin/arm9_rodata.bin", 0x793C, 0x1C

