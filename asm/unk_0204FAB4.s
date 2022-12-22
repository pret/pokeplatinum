	.include "macros/function.inc"
	.include "include/unk_0204FAB4.inc"

	

	.text


	thumb_func_start sub_0204FAB4
sub_0204FAB4: ; 0x0204FAB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020302DC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203041C
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r0, #0
	cmp r7, #4
	bhi _0204FBA4
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204FB20: ; jump table
	.short _0204FB2A - _0204FB20 - 2 ; case 0
	.short _0204FB3C - _0204FB20 - 2 ; case 1
	.short _0204FBA4 - _0204FB20 - 2 ; case 2
	.short _0204FB74 - _0204FB20 - 2 ; case 3
	.short _0204FB86 - _0204FB20 - 2 ; case 4
_0204FB2A:
	add r4, #0x80
	ldr r1, [r4, #0]
	add r0, r5, #0
	ldr r1, [r1, #0xc]
	mov r2, #0
	bl sub_02049EC4
	strh r0, [r6]
	b _0204FBAC
_0204FB3C:
	cmp r5, #3
	bne _0204FB60
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6c
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x6c
	bl sub_02030698
	strh r0, [r6]
	b _0204FBAC
_0204FB60:
	lsl r2, r5, #0x18
	mov r3, #0
	ldr r0, [sp, #4]
	mov r1, #9
	lsr r2, r2, #0x18
	str r3, [sp]
	bl sub_02030470
	strh r0, [r6]
	b _0204FBAC
_0204FB74:
	add r4, #0x80
	ldr r0, [r4, #0]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsr r2, r2, #0x18
	bl sub_0204FBEC
	b _0204FBAC
_0204FB86:
	cmp r5, #0
	bne _0204FB8E
	mov r2, #0
	b _0204FB98
_0204FB8E:
	cmp r5, #1
	bne _0204FB96
	mov r2, #1
	b _0204FB98
_0204FB96:
	mov r2, #2
_0204FB98:
	ldr r0, [r4, #0x74]
	bl sub_0204FDB4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0204FBA4:
	bl GF_AssertFail
	mov r0, #0
	strh r0, [r6]
_0204FBAC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204FAB4

	thumb_func_start sub_0204FBB4
sub_0204FBB4: ; 0x0204FBB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203041C
	lsl r2, r4, #0x18
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	lsr r2, r2, #0x18
	ldr r0, [r0, #0xc]
	bl sub_0204FBEC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204FBB4

	thumb_func_start sub_0204FBEC
sub_0204FBEC: ; 0x0204FBEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	mov r3, #0
	add r0, sp, #8
	strb r3, [r0]
	add r0, sp, #8
	str r0, [sp]
	add r0, r1, #0
	mov r1, #9
	add r5, r2, #0
	bl sub_02030430
	cmp r5, #3
	bne _0204FC24
	ldr r0, [sp, #4]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6c
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x6c
	mov r3, #0
	bl sub_020306E4
_0204FC24:
	ldr r0, [sp, #4]
	bl sub_0203068C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205E5E0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205E5E0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
	ldr r0, [sp, #4]
	bl sub_0203068C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205E630
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
	mov r4, #0
_0204FC72:
	ldr r0, [sp, #4]
	bl sub_0203068C
	lsl r1, r4, #0x18
	add r6, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0205E5B4
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #1
	bl sub_020306E4
	add r4, r4, #1
	cmp r4, #3
	blt _0204FC72
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204FBEC

	thumb_func_start sub_0204FCAC
sub_0204FCAC: ; 0x0204FCAC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r3, r0, #0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0204FCF8
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204FCAC

	thumb_func_start sub_0204FCF8
sub_0204FCF8: ; 0x0204FCF8
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x10
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_0204FD12:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0204FD12
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	add r0, r4, #0
	str r7, [r4, #0xc]
	bl sub_02099514
	ldr r0, [sp]
	ldr r1, _0204FD34 ; =sub_0204FD38
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204FD34: .word sub_0204FD38
	thumb_func_end sub_0204FCF8

	thumb_func_start sub_0204FD38
sub_0204FD38: ; 0x0204FD38
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4]
	cmp r1, #0
	beq _0204FD50
	cmp r1, #1
	beq _0204FD66
	cmp r1, #2
	beq _0204FDA6
	b _0204FDAE
_0204FD50:
	mov r0, #0x85
	add r1, r4, #0
	mov r2, #0x10
	bl sub_020359DC
	cmp r0, #1
	bne _0204FDAE
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0204FDAE
_0204FD66:
	ldrb r0, [r4, #1]
	cmp r0, #2
	blo _0204FDAE
	ldr r0, [r4, #0xc]
	mov r1, #0
	strh r1, [r0]
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _0204FD80
	ldrh r0, [r4, #0xa]
	cmp r1, r0
	bne _0204FD88
_0204FD80:
	ldr r1, [r4, #0xc]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_0204FD88:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _0204FD96
	ldrh r0, [r4, #0xa]
	cmp r1, r0
	bne _0204FD9E
_0204FD96:
	ldr r1, [r4, #0xc]
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
_0204FD9E:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0204FDAE
_0204FDA6:
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0204FDAE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204FD38

	thumb_func_start sub_0204FDB4
sub_0204FDB4: ; 0x0204FDB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	strb r6, [r4, #4]
	str r5, [r4, #0xc]
	ldr r0, [r7, #0x10]
	ldr r1, _0204FDE4 ; =sub_0204FDE8
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204FDE4: .word sub_0204FDE8
	thumb_func_end sub_0204FDB4

	thumb_func_start sub_0204FDE8
sub_0204FDE8: ; 0x0204FDE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #4
	bhi _0204FE4A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0204FE0C: ; jump table
	.short _0204FE16 - _0204FE0C - 2 ; case 0
	.short _0204FE22 - _0204FE0C - 2 ; case 1
	.short _0204FE2C - _0204FE0C - 2 ; case 2
	.short _0204FE38 - _0204FE0C - 2 ; case 3
	.short _0204FE42 - _0204FE0C - 2 ; case 4
_0204FE16:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0204FE50
	str r0, [r4, #0]
	b _0204FE4A
_0204FE22:
	add r1, r5, #0
	bl sub_0204FF1C
	str r0, [r4, #0]
	b _0204FE4A
_0204FE2C:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0204FF6C
	str r0, [r4, #0]
	b _0204FE4A
_0204FE38:
	add r1, r5, #0
	bl sub_0204FFF4
	str r0, [r4, #0]
	b _0204FE4A
_0204FE42:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204FE4A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204FDE8

	thumb_func_start sub_0204FE50
sub_0204FE50: ; 0x0204FE50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x40
	bl MIi_CpuClearFast
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0
	add r1, #0x21
	strb r0, [r1]
	add r1, r4, #0
	mov r2, #0x17
	add r1, #0x20
	strb r2, [r1]
	str r6, [r4, #0x1c]
	add r1, r4, #0
	ldrb r2, [r5, #5]
	add r1, #0x22
	strb r2, [r1]
_0204FEA4:
	add r1, r5, r0
	ldrb r2, [r1, #6]
	add r1, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r1, #0x2c
	lsr r0, r0, #0x18
	strb r2, [r1]
	cmp r0, #3
	blo _0204FEA4
	add r0, r4, #0
	mov r1, #0x64
	add r0, #0x33
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r7, #0xf
	mov r1, #3
	bic r2, r7
	orr r2, r1
	add r1, r4, #0
	add r1, #0x32
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x32
	ldrb r3, [r1]
	mov r1, #0xf0
	mov r2, #0x30
	bic r3, r1
	orr r3, r2
	add r2, r4, #0
	add r2, #0x32
	strb r3, [r2]
	add r0, r4, #0
	ldrb r2, [r5, #4]
	add r0, #0x32
	cmp r2, #2
	bne _0204FF06
	ldrb r2, [r0]
	mov r3, #2
	bic r2, r7
	orr r2, r3
	strb r2, [r0]
	ldrb r2, [r0]
	bic r2, r1
	mov r1, #0x20
	orr r1, r2
	strb r1, [r0]
_0204FF06:
	ldr r1, _0204FF18 ; =0x020F1E88
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r5, #0xc]
	str r4, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204FF18: .word 0x020F1E88
	thumb_func_end sub_0204FE50

	thumb_func_start sub_0204FF1C
sub_0204FF1C: ; 0x0204FF1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0204FF2E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204FF2E:
	ldr r0, [r5, #0xc]
	ldr r4, [r0, #0]
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _0204FF44
	cmp r0, #7
	bne _0204FF48
	mov r0, #4
	pop {r3, r4, r5, pc}
_0204FF44:
	mov r0, #4
	pop {r3, r4, r5, pc}
_0204FF48:
	add r0, r4, #0
	add r0, #0x2c
	add r1, r5, #6
	mov r2, #3
	bl MI_CpuCopy8
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r5, #5]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204FF1C

	thumb_func_start sub_0204FF6C
sub_0204FF6C: ; 0x0204FF6C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	ldr r5, [r7, #0xc]
	add r0, r2, #0
	mov r1, #0x30
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0207A268
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0207A274
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0208C324
	str r0, [r4, #0x2c]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r6, #5]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r0, [r4, #0x12]
	add r0, r5, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _0204FFEC ; =0x020EC1F0
	add r0, r4, #0
	bl sub_0208D720
	add r0, r5, #0
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0204FFF0 ; =0x020F410C
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r6, #0xc]
	str r4, [r0, #0]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204FFEC: .word 0x020EC1F0
_0204FFF0: .word 0x020F410C
	thumb_func_end sub_0204FF6C

	thumb_func_start sub_0204FFF4
sub_0204FFF4: ; 0x0204FFF4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _02050006
	mov r0, #3
	pop {r4, pc}
_02050006:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #5]
	bl sub_020181C4
	ldr r1, [r4, #0xc]
	mov r0, #0
	str r0, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204FFF4

	.rodata


	.global Unk_020EC1F0
Unk_020EC1F0: ; 0x020EC1F0
	.incbin "incbin/arm9_rodata.bin", 0x75B0, 0x9

