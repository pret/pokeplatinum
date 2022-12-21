	.include "macros/function.inc"
	.include "include/unk_020998EC.inc"

	

	.text


	thumb_func_start sub_020998EC
sub_020998EC: ; 0x020998EC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _02099924 ; =0x0000195C
	add r6, r0, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	str r5, [r4, #0]
	bl sub_02014D38
	str r0, [r4, #4]
	mov r3, #0
	ldr r0, _02099928 ; =0x0000189E
	add r2, r3, #0
_0209990A:
	add r1, r4, r3
	add r3, r3, #1
	strb r2, [r1, r0]
	cmp r3, #0xbb
	blt _0209990A
	add r0, r4, #0
	bl sub_02099940
	add r0, r4, #0
	bl sub_02099BAC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02099924: .word 0x0000195C
_02099928: .word 0x0000189E
	thumb_func_end sub_020998EC

	thumb_func_start sub_0209992C
sub_0209992C: ; 0x0209992C
	push {r4, lr}
	add r4, r0, #0
	beq _0209993E
	ldr r0, [r4, #4]
	bl sub_02014D70
	add r0, r4, #0
	bl sub_020181C4
_0209993E:
	pop {r4, pc}
	thumb_func_end sub_0209992C

	thumb_func_start sub_02099940
sub_02099940: ; 0x02099940
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0
	str r0, [sp]
	add r7, r0, #0
	str r0, [sp, #8]
	add r0, #0x68
	ldr r5, _0209997C ; =0x020F7864
	str r4, [sp, #4]
	str r0, [sp, #8]
_02099954:
	ldr r3, [sp, #8]
	str r4, [r7, #0x38]
	lsl r6, r4, #1
	add r3, r3, r6
	ldr r0, [sp]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r6, [r5, #0]
	blx r6
	str r0, [r7, #8]
	add r4, r4, r0
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	add r5, #0xc
	str r0, [sp, #4]
	cmp r0, #0xc
	blt _02099954
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0209997C: .word 0x020F7864
	thumb_func_end sub_02099940

	thumb_func_start sub_02099980
sub_02099980: ; 0x02099980
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0]
	str r2, [sp, #4]
	add r5, r1, #0
	add r4, r3, #0
	mov r6, #0
	bl sub_0209755C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r7, r6, #0
	cmp r0, #0
	bls _020999D6
_0209999E:
	ldrh r1, [r5]
	ldr r0, [sp, #8]
	bl sub_02026FE8
	cmp r0, #0
	beq _020999CC
	ldrh r3, [r5]
	ldr r0, [sp]
	mov r2, #7
	lsr r1, r3, #3
	add r1, r0, r1
	ldr r0, _020999DC ; =0x0000189E
	and r3, r2
	mov r2, #1
	ldrb r0, [r1, r0]
	lsl r2, r3
	orr r2, r0
	ldr r0, _020999DC ; =0x0000189E
	add r6, r6, #1
	strb r2, [r1, r0]
	ldrh r0, [r5]
	strh r0, [r4]
	add r4, r4, #2
_020999CC:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, r0
	blo _0209999E
_020999D6:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020999DC: .word 0x0000189E
	thumb_func_end sub_02099980

	thumb_func_start sub_020999E0
sub_020999E0: ; 0x020999E0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02097564
	cmp r0, #0
	beq _02099A26
	mov r2, #0
	cmp r7, #0
	bls _02099A22
_020999FA:
	ldrh r6, [r5]
	ldr r0, [sp]
	mov r3, #7
	lsr r1, r6, #3
	add r1, r0, r1
	ldr r0, _02099A2C ; =0x0000189E
	and r6, r3
	mov r3, #1
	ldrb r0, [r1, r0]
	lsl r3, r6
	orr r3, r0
	ldr r0, _02099A2C ; =0x0000189E
	add r2, r2, #1
	strb r3, [r1, r0]
	ldrh r0, [r5]
	add r5, r5, #2
	strh r0, [r4]
	add r4, r4, #2
	cmp r2, r7
	blo _020999FA
_02099A22:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02099A26:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02099A2C: .word 0x0000189E
	thumb_func_end sub_020999E0

	thumb_func_start sub_02099A30
sub_02099A30: ; 0x02099A30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0, #0]
	add r5, r1, #0
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_02097560
	str r0, [sp, #0xc]
	mov r0, #0x6f
	lsl r0, r0, #2
	mov r1, #0
	bl sub_02014DFC
	str r0, [sp, #8]
	mov r7, #0
	ldr r0, [sp, #4]
	add r6, r7, #0
	cmp r0, #0
	bls _02099A96
_02099A5A:
	ldrh r2, [r5]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	sub r1, r2, r1
	bl sub_02014ED8
	cmp r0, #0
	beq _02099A8C
	ldrh r3, [r5]
	ldr r0, [sp]
	mov r2, #7
	lsr r1, r3, #3
	add r1, r0, r1
	ldr r0, _02099A9C ; =0x0000189E
	and r3, r2
	mov r2, #1
	ldrb r0, [r1, r0]
	lsl r2, r3
	orr r2, r0
	ldr r0, _02099A9C ; =0x0000189E
	add r6, r6, #1
	strb r2, [r1, r0]
	ldrh r0, [r5]
	strh r0, [r4]
	add r4, r4, #2
_02099A8C:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, r0
	blo _02099A5A
_02099A96:
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02099A9C: .word 0x0000189E
	thumb_func_end sub_02099A30

	thumb_func_start sub_02099AA0
sub_02099AA0: ; 0x02099AA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r0, [r0, #0]
	add r5, r1, #0
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_02097560
	str r0, [sp, #0x10]
	ldr r0, _02099B20 ; =0x000001B9
	mov r1, #0
	bl sub_02014DFC
	add r6, r0, #0
	add r0, r6, #5
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r7, #0
	ldr r0, [sp, #4]
	str r7, [sp, #8]
	cmp r0, #0
	bls _02099B18
_02099AD0:
	ldrh r1, [r5]
	cmp r1, r6
	blo _02099AE8
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bhi _02099AE8
	ldr r0, [sp, #0x10]
	sub r1, r1, r6
	bl sub_02014F8C
	cmp r0, #0
	beq _02099B0A
_02099AE8:
	ldrh r3, [r5]
	ldr r0, [sp]
	mov r2, #7
	lsr r1, r3, #3
	add r1, r0, r1
	ldr r0, _02099B24 ; =0x0000189E
	and r3, r2
	mov r2, #1
	ldrb r0, [r1, r0]
	lsl r2, r3
	orr r2, r0
	ldr r0, _02099B24 ; =0x0000189E
	add r7, r7, #1
	strb r2, [r1, r0]
	ldrh r0, [r5]
	strh r0, [r4]
	add r4, r4, #2
_02099B0A:
	ldr r0, [sp, #8]
	add r5, r5, #2
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blo _02099AD0
_02099B18:
	add r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02099B20: .word 0x000001B9
_02099B24: .word 0x0000189E
	thumb_func_end sub_02099AA0

	thumb_func_start sub_02099B28
sub_02099B28: ; 0x02099B28
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	mov lr, r2
	mov ip, r0
	mov r0, lr
	add r4, r1, #0
	add r7, r3, #0
	cmp r0, #0
	bls _02099B9E
_02099B3C:
	ldrh r2, [r4]
	ldr r0, _02099BA4 ; =0x0000FFFE
	cmp r2, r0
	bne _02099B72
	add r0, r4, #2
	add r4, r4, #4
	ldrh r2, [r0]
	ldrh r0, [r4]
	cmp r2, #0
	strh r0, [r7]
	beq _02099B92
_02099B52:
	ldrh r5, [r4]
	mov r3, #7
	add r4, r4, #2
	lsr r0, r5, #3
	add r1, r6, r0
	ldr r0, _02099BA8 ; =0x0000189E
	and r5, r3
	mov r3, #1
	ldrb r0, [r1, r0]
	lsl r3, r5
	orr r3, r0
	ldr r0, _02099BA8 ; =0x0000189E
	sub r2, r2, #1
	strb r3, [r1, r0]
	bne _02099B52
	b _02099B92
_02099B72:
	lsr r0, r2, #3
	ldr r1, _02099BA8 ; =0x0000189E
	add r0, r6, r0
	ldrb r3, [r0, r1]
	mov r1, #7
	mov r5, #1
	and r1, r2
	add r2, r5, #0
	lsl r2, r1
	ldr r1, _02099BA8 ; =0x0000189E
	orr r2, r3
	strb r2, [r0, r1]
	ldrh r0, [r4]
	add r4, r4, #2
	strh r0, [r7]
	add r7, r7, #2
_02099B92:
	mov r0, ip
	add r1, r0, #1
	mov r0, lr
	mov ip, r1
	cmp r1, r0
	blo _02099B3C
_02099B9E:
	mov r0, lr
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02099BA4: .word 0x0000FFFE
_02099BA8: .word 0x0000189E
	thumb_func_end sub_02099B28

	thumb_func_start sub_02099BAC
sub_02099BAC: ; 0x02099BAC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	ldr r6, _02099BE8 ; =0x020F74D8
	str r4, [sp]
	add r5, r7, #0
_02099BB8:
	ldr r0, _02099BEC ; =0x00000C84
	mov r2, #0xcf
	str r4, [r5, r0]
	lsl r2, r2, #4
	ldr r1, [r6, #0]
	add r0, r7, #0
	add r2, r7, r2
	add r3, r4, #0
	bl sub_02099BF4
	ldr r1, _02099BF0 ; =0x00000C18
	add r6, r6, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r5, r5, #4
	add r4, r4, r0
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x1b
	blo _02099BB8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02099BE8: .word 0x020F74D8
_02099BEC: .word 0x00000C84
_02099BF0: .word 0x00000C18
	thumb_func_end sub_02099BAC

	thumb_func_start sub_02099BF4
sub_02099BF4: ; 0x02099BF4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	str r2, [sp]
	mov r0, #0
	mov ip, r0
	ldrh r2, [r7]
	ldr r0, _02099C94 ; =0x0000FFFF
	mov lr, r3
	cmp r2, r0
	beq _02099C90
_02099C0A:
	ldr r0, _02099C98 ; =0x0000FFFE
	cmp r2, r0
	bne _02099C5C
	add r0, r7, #2
	ldrh r5, [r0]
	add r7, r7, #4
	mov r3, #0
	cmp r5, #0
	bls _02099C56
	add r4, r7, #0
_02099C1E:
	ldrh r2, [r4]
	mov r0, #7
	mov r1, #1
	and r0, r2
	lsl r1, r0
	lsr r0, r2, #3
	add r2, r6, r0
	ldr r0, _02099C9C ; =0x0000189E
	ldrb r0, [r2, r0]
	tst r0, r1
	beq _02099C4E
	lsl r0, r3, #1
	ldrh r1, [r7, r0]
	mov r0, lr
	lsl r2, r0, #1
	mov r0, lr
	add r0, r0, #1
	mov lr, r0
	ldr r0, [sp]
	strh r1, [r0, r2]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	b _02099C56
_02099C4E:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r5
	blo _02099C1E
_02099C56:
	lsl r0, r5, #1
	add r7, r7, r0
	b _02099C88
_02099C5C:
	mov r1, #1
	mov r0, #7
	and r0, r2
	add r3, r1, #0
	lsl r3, r0
	lsr r0, r2, #3
	add r1, r6, r0
	ldr r0, _02099C9C ; =0x0000189E
	ldrb r0, [r1, r0]
	tst r0, r3
	beq _02099C86
	mov r1, lr
	add r1, r1, #1
	mov r0, lr
	mov lr, r1
	ldr r1, [sp]
	lsl r0, r0, #1
	strh r2, [r1, r0]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
_02099C86:
	add r7, r7, #2
_02099C88:
	ldrh r2, [r7]
	ldr r0, _02099C94 ; =0x0000FFFF
	cmp r2, r0
	bne _02099C0A
_02099C90:
	mov r0, ip
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02099C94: .word 0x0000FFFF
_02099C98: .word 0x0000FFFE
_02099C9C: .word 0x0000189E
	thumb_func_end sub_02099BF4

	thumb_func_start sub_02099CA0
sub_02099CA0: ; 0x02099CA0
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02099CA0

	thumb_func_start sub_02099CA8
sub_02099CA8: ; 0x02099CA8
	push {r4, lr}
	add r4, r0, #0
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x38]
	ldr r0, [r4, #4]
	add r1, r1, r2
	lsl r1, r1, #1
	add r1, r4, r1
	add r1, #0x68
	ldrh r1, [r1]
	add r2, r3, #0
	bl sub_02014D90
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02099CA8

	thumb_func_start sub_02099CC8
sub_02099CC8: ; 0x02099CC8
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r1, [r1, #0x38]
	add r1, r1, r2
	lsl r1, r1, #1
	add r0, r0, r1
	add r0, #0x68
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02099CC8

	thumb_func_start sub_02099CDC
sub_02099CDC: ; 0x02099CDC
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _02099CE8 ; =0x00000C18
	ldr r0, [r1, r0]
	bx lr
	nop
_02099CE8: .word 0x00000C18
	thumb_func_end sub_02099CDC

	thumb_func_start sub_02099CEC
sub_02099CEC: ; 0x02099CEC
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	lsl r3, r1, #2
	add r6, r5, r3
	ldr r3, _02099D10 ; =0x00000C18
	ldr r3, [r6, r3]
	cmp r3, #0
	beq _02099D0C
	bl sub_02099D14
	add r1, r0, #0
	ldr r0, [r5, #4]
	add r2, r4, #0
	bl sub_02014D90
_02099D0C:
	pop {r4, r5, r6, pc}
	nop
_02099D10: .word 0x00000C18
	thumb_func_end sub_02099CEC

	thumb_func_start sub_02099D14
sub_02099D14: ; 0x02099D14
	push {r3, r4}
	lsl r1, r1, #2
	ldr r3, _02099D3C ; =0x00000C18
	add r4, r0, r1
	ldr r1, [r4, r3]
	cmp r1, #0
	beq _02099D36
	add r1, r3, #0
	add r1, #0x6c
	ldr r1, [r4, r1]
	add r3, #0xd8
	add r1, r2, r1
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, r3]
	pop {r3, r4}
	bx lr
_02099D36:
	ldr r0, _02099D40 ; =0x0000FFFF
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02099D3C: .word 0x00000C18
_02099D40: .word 0x0000FFFF
	thumb_func_end sub_02099D14

	.rodata


	.global Unk_020F7180
Unk_020F7180: ; 0x020F7180
	.incbin "incbin/arm9_rodata.bin", 0x12540, 0x12544 - 0x12540

	.global Unk_020F7184
Unk_020F7184: ; 0x020F7184
	.incbin "incbin/arm9_rodata.bin", 0x12544, 0x1254A - 0x12544

	.global Unk_020F718A
Unk_020F718A: ; 0x020F718A
	.incbin "incbin/arm9_rodata.bin", 0x1254A, 0x12556 - 0x1254A

	.global Unk_020F7196
Unk_020F7196: ; 0x020F7196
	.incbin "incbin/arm9_rodata.bin", 0x12556, 0x12564 - 0x12556

	.global Unk_020F71A4
Unk_020F71A4: ; 0x020F71A4
	.incbin "incbin/arm9_rodata.bin", 0x12564, 0x12574 - 0x12564

	.global Unk_020F71B4
Unk_020F71B4: ; 0x020F71B4
	.incbin "incbin/arm9_rodata.bin", 0x12574, 0x12590 - 0x12574

	.global Unk_020F71D0
Unk_020F71D0: ; 0x020F71D0
	.incbin "incbin/arm9_rodata.bin", 0x12590, 0x125B2 - 0x12590

	.global Unk_020F71F2
Unk_020F71F2: ; 0x020F71F2
	.incbin "incbin/arm9_rodata.bin", 0x125B2, 0x125E0 - 0x125B2

	.global Unk_020F7220
Unk_020F7220: ; 0x020F7220
	.incbin "incbin/arm9_rodata.bin", 0x125E0, 0x12610 - 0x125E0

	.global Unk_020F7250
Unk_020F7250: ; 0x020F7250
	.incbin "incbin/arm9_rodata.bin", 0x12610, 0x12642 - 0x12610

	.global Unk_020F7282
Unk_020F7282: ; 0x020F7282
	.incbin "incbin/arm9_rodata.bin", 0x12642, 0x12676 - 0x12642

	.global Unk_020F72B6
Unk_020F72B6: ; 0x020F72B6
	.incbin "incbin/arm9_rodata.bin", 0x12676, 0x126B8 - 0x12676

	.global Unk_020F72F8
Unk_020F72F8: ; 0x020F72F8
	.incbin "incbin/arm9_rodata.bin", 0x126B8, 0x126FC - 0x126B8

	.global Unk_020F733C
Unk_020F733C: ; 0x020F733C
	.incbin "incbin/arm9_rodata.bin", 0x126FC, 0x12744 - 0x126FC

	.global Unk_020F7384
Unk_020F7384: ; 0x020F7384
	.incbin "incbin/arm9_rodata.bin", 0x12744, 0x12792 - 0x12744

	.global Unk_020F73D2
Unk_020F73D2: ; 0x020F73D2
	.incbin "incbin/arm9_rodata.bin", 0x12792, 0x127E4 - 0x12792

	.global Unk_020F7424
Unk_020F7424: ; 0x020F7424
	.incbin "incbin/arm9_rodata.bin", 0x127E4, 0x12838 - 0x127E4

	.global Unk_020F7478
Unk_020F7478: ; 0x020F7478
	.incbin "incbin/arm9_rodata.bin", 0x12838, 0x12898 - 0x12838

	.global Unk_020F74D8
Unk_020F74D8: ; 0x020F74D8
	.incbin "incbin/arm9_rodata.bin", 0x12898, 0x12904 - 0x12898

	.global Unk_020F7544
Unk_020F7544: ; 0x020F7544
	.incbin "incbin/arm9_rodata.bin", 0x12904, 0x12978 - 0x12904

	.global Unk_020F75B8
Unk_020F75B8: ; 0x020F75B8
	.incbin "incbin/arm9_rodata.bin", 0x12978, 0x129F0 - 0x12978

	.global Unk_020F7630
Unk_020F7630: ; 0x020F7630
	.incbin "incbin/arm9_rodata.bin", 0x129F0, 0x12A78 - 0x129F0

	.global Unk_020F76B8
Unk_020F76B8: ; 0x020F76B8
	.incbin "incbin/arm9_rodata.bin", 0x12A78, 0x12B04 - 0x12A78

	.global Unk_020F7744
Unk_020F7744: ; 0x020F7744
	.incbin "incbin/arm9_rodata.bin", 0x12B04, 0x12B94 - 0x12B04

	.global Unk_020F77D4
Unk_020F77D4: ; 0x020F77D4
	.incbin "incbin/arm9_rodata.bin", 0x12B94, 0x12C24 - 0x12B94

	.global Unk_020F7864
Unk_020F7864: ; 0x020F7864
	.incbin "incbin/arm9_rodata.bin", 0x12C24, 0x12CB4 - 0x12C24

	.global Unk_020F78F4
Unk_020F78F4: ; 0x020F78F4
	.incbin "incbin/arm9_rodata.bin", 0x12CB4, 0x12D4E - 0x12CB4

	.global Unk_020F798E
Unk_020F798E: ; 0x020F798E
	.incbin "incbin/arm9_rodata.bin", 0x12D4E, 0x12DE8 - 0x12D4E

	.global Unk_020F7A28
Unk_020F7A28: ; 0x020F7A28
	.incbin "incbin/arm9_rodata.bin", 0x12DE8, 0x12E88 - 0x12DE8

	.global Unk_020F7AC8
Unk_020F7AC8: ; 0x020F7AC8
	.incbin "incbin/arm9_rodata.bin", 0x12E88, 0x12F30 - 0x12E88

	.global Unk_020F7B70
Unk_020F7B70: ; 0x020F7B70
	.incbin "incbin/arm9_rodata.bin", 0x12F30, 0x12FEC - 0x12F30

	.global Unk_020F7C2C
Unk_020F7C2C: ; 0x020F7C2C
	.incbin "incbin/arm9_rodata.bin", 0x12FEC, 0x130BA - 0x12FEC

	.global Unk_020F7CFA
Unk_020F7CFA: ; 0x020F7CFA
	.incbin "incbin/arm9_rodata.bin", 0x130BA, 0x1318C - 0x130BA

	.global Unk_020F7DCC
Unk_020F7DCC: ; 0x020F7DCC
	.incbin "incbin/arm9_rodata.bin", 0x1318C, 0x13260 - 0x1318C

	.global Unk_020F7EA0
Unk_020F7EA0: ; 0x020F7EA0
	.incbin "incbin/arm9_rodata.bin", 0x13260, 0x1334A - 0x13260

	.global Unk_020F7F8A
Unk_020F7F8A: ; 0x020F7F8A
	.incbin "incbin/arm9_rodata.bin", 0x1334A, 0x13460 - 0x1334A

	.global Unk_020F80A0
Unk_020F80A0: ; 0x020F80A0
	.incbin "incbin/arm9_rodata.bin", 0x13460, 0x13620 - 0x13460

	.global Unk_020F8260
Unk_020F8260: ; 0x020F8260
	.incbin "incbin/arm9_rodata.bin", 0x13620, 0x137E0 - 0x13620

	.global Unk_020F8420
Unk_020F8420: ; 0x020F8420
	.incbin "incbin/arm9_rodata.bin", 0x137E0, 0x139B8 - 0x137E0

	.global Unk_020F85F8
Unk_020F85F8: ; 0x020F85F8
	.incbin "incbin/arm9_rodata.bin", 0x139B8, 0x13B9C - 0x139B8

	.global Unk_020F87DC
Unk_020F87DC: ; 0x020F87DC
	.incbin "incbin/arm9_rodata.bin", 0x13B9C, 0x206

