	.include "macros/function.inc"
	.include "include/ov104_02239C58.inc"

	

	.text


	thumb_func_start ov104_02239C58
ov104_02239C58: ; 0x02239C58
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0xb4
	bl sub_02018144
	ldr r1, _02239C78 ; =0x02241AD0
	mov r2, #0xb4
	str r0, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _02239C78 ; =0x02241AD0
	ldr r0, [r0, #0]
	str r4, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_02239C78: .word 0x02241AD0
	thumb_func_end ov104_02239C58

	thumb_func_start ov104_02239C7C
ov104_02239C7C: ; 0x02239C7C
	push {r3, lr}
	cmp r0, #0
	beq _02239C86
	bl sub_020181C4
_02239C86:
	pop {r3, pc}
	thumb_func_end ov104_02239C7C

	thumb_func_start ov104_02239C88
ov104_02239C88: ; 0x02239C88
	push {r3, lr}
	cmp r1, #5
	bhi _02239CCC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02239C9A: ; jump table
	.short _02239CA6 - _02239C9A - 2 ; case 0
	.short _02239CAC - _02239C9A - 2 ; case 1
	.short _02239CB4 - _02239C9A - 2 ; case 2
	.short _02239CCC - _02239C9A - 2 ; case 3
	.short _02239CBE - _02239C9A - 2 ; case 4
	.short _02239CC6 - _02239C9A - 2 ; case 5
_02239CA6:
	bl sub_0209BBA4
	pop {r3, pc}
_02239CAC:
	add r1, r2, #0
	bl sub_0209BC1C
	pop {r3, pc}
_02239CB4:
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0209BC64
	pop {r3, pc}
_02239CBE:
	add r1, r2, #0
	bl sub_0209BD68
	pop {r3, pc}
_02239CC6:
	add r1, r2, #0
	bl sub_0209BDB0
_02239CCC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02239C88

	thumb_func_start ov104_02239CD0
ov104_02239CD0: ; 0x02239CD0
	push {r3, lr}
	add r3, r1, #0
	add r3, #0x98
	ldr r3, [r3, #0]
	cmp r2, #4
	bhi _02239D18
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02239CE8: ; jump table
	.short _02239CF2 - _02239CE8 - 2 ; case 0
	.short _02239CFC - _02239CE8 - 2 ; case 1
	.short _02239D06 - _02239CE8 - 2 ; case 2
	.short _02239D10 - _02239CE8 - 2 ; case 3
	.short _02239D18 - _02239CE8 - 2 ; case 4
_02239CF2:
	add r2, r3, #0
	mov r3, #0xb
	bl ov104_02239D1C
	pop {r3, pc}
_02239CFC:
	add r2, r3, #0
	mov r3, #0xb
	bl ov104_02239F38
	pop {r3, pc}
_02239D06:
	add r2, r3, #0
	mov r3, #0xb
	bl ov104_02239FB0
	pop {r3, pc}
_02239D10:
	add r2, r3, #0
	mov r3, #0xb
	bl ov104_0223A090
_02239D18:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02239CD0

	thumb_func_start ov104_02239D1C
ov104_02239D1C: ; 0x02239D1C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x40
	add r4, r2, #0
	bl sub_02018144
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	mov r0, #0
	mov r2, #0x40
	bl MIi_CpuClearFast
	ldr r0, [r5, #0]
	bl sub_0207A268
	add r1, r5, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	str r0, [r1, #0]
	ldr r0, [r5, #0]
	bl sub_0207D990
	add r1, r5, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	str r0, [r1, #4]
	ldr r0, [r5, #0]
	bl sub_02028430
	add r1, r5, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	str r0, [r1, #8]
	ldr r0, [r5, #0]
	bl sub_02025E44
	add r1, r5, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	str r0, [r1, #0xc]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02239D9E
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0x11
	add r0, #0x20
	strb r1, [r0]
	b _02239DD8
_02239D9E:
	cmp r0, #5
	bne _02239DB0
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0x16
	add r0, #0x20
	strb r1, [r0]
	b _02239DD8
_02239DB0:
	cmp r0, #4
	bne _02239DC2
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0x17
	add r0, #0x20
	strb r1, [r0]
	b _02239DD8
_02239DC2:
	cmp r0, #6
	bne _02239DD4
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0x17
	add r0, #0x20
	strb r1, [r0]
	b _02239DD8
_02239DD4:
	bl sub_02022974
_02239DD8:
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	str r4, [r0, #0x1c]
	add r0, r5, #0
	add r0, #0x9f
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r0, #0x22
	strb r1, [r0]
	mov r0, #0
_02239DF2:
	add r1, r5, r0
	add r1, #0xa1
	ldrb r2, [r1]
	add r1, r5, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	add r1, r1, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r1, #0x2c
	lsr r0, r0, #0x18
	strb r2, [r1]
	cmp r0, #2
	blo _02239DF2
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02239E56
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r1, #0xf
	add r0, #0x32
	bic r2, r1
	mov r1, #2
	orr r1, r2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r1, #0xf0
	add r0, #0x32
	bic r2, r1
	mov r1, #0x20
	orr r1, r2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0x64
	add r0, #0x33
	strb r1, [r0]
	b _02239F20
_02239E56:
	cmp r0, #5
	bne _02239E98
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r1, #0xf
	add r0, #0x32
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r1, #0xf0
	add r0, #0x32
	bic r2, r1
	mov r1, #0x10
	orr r1, r2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0x1e
	add r0, #0x33
	strb r1, [r0]
	b _02239F20
_02239E98:
	cmp r0, #4
	bne _02239EDA
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r1, #0xf
	add r0, #0x32
	bic r2, r1
	mov r1, #2
	orr r1, r2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r1, #0xf0
	add r0, #0x32
	bic r2, r1
	mov r1, #0x20
	orr r1, r2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0x64
	add r0, #0x33
	strb r1, [r0]
	b _02239F20
_02239EDA:
	cmp r0, #6
	bne _02239F1C
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r1, #0xf
	add r0, #0x32
	bic r2, r1
	mov r1, #2
	orr r1, r2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r1, #0xf0
	add r0, #0x32
	bic r2, r1
	mov r1, #0x20
	orr r1, r2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0x64
	add r0, #0x33
	strb r1, [r0]
	b _02239F20
_02239F1C:
	bl sub_02022974
_02239F20:
	mov r3, #0
	str r3, [sp]
	add r5, #0xa8
	ldr r1, _02239F34 ; =0x020F1E88
	ldr r2, [r5, #0]
	add r0, r6, #0
	bl sub_0209B988
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02239F34: .word 0x020F1E88
	thumb_func_end ov104_02239D1C

	thumb_func_start ov104_02239F38
ov104_02239F38: ; 0x02239F38
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x22
	ldrb r1, [r1]
	cmp r1, #6
	beq _02239F60
	cmp r1, #7
	bne _02239F70
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r1, #4
	strh r1, [r0]
	add r4, #0x9d
	strb r1, [r4]
	pop {r4, pc}
_02239F60:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r1, #4
	strh r1, [r0]
	add r4, #0x9d
	strb r1, [r4]
	pop {r4, pc}
_02239F70:
	add r1, r4, #0
	add r0, #0x2c
	add r1, #0xa1
	mov r2, #2
	bl MI_CpuCopy8
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r0, #0x22
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x9f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r1, #2
	strh r1, [r0]
	add r4, #0x9d
	strb r1, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_02239F38

	thumb_func_start ov104_02239FB0
ov104_02239FB0: ; 0x02239FB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r3, #0
	mov r1, #0x30
	bl sub_02018184
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, [r4, #0]
	bl sub_02025E44
	add r1, r4, #0
	add r1, #0xac
	ldr r1, [r1, #0]
	str r0, [r1, #4]
	ldr r0, [r4, #0]
	bl sub_0207A268
	add r1, r4, #0
	add r1, #0xac
	ldr r1, [r1, #0]
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	bl sub_0207A274
	add r1, r4, #0
	add r1, #0xac
	ldr r1, [r1, #0]
	str r0, [r1, #0x1c]
	ldr r0, [r4, #0]
	bl sub_0208C324
	add r1, r4, #0
	add r1, #0xac
	ldr r1, [r1, #0]
	str r0, [r1, #0x2c]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	mov r1, #1
	strb r1, [r0, #0x11]
	add r0, r4, #0
	add r0, #0x9f
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	strb r1, [r0, #0x14]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0207A0F8
	add r1, r4, #0
	add r1, #0xac
	ldr r1, [r1, #0]
	strb r0, [r1, #0x13]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	mov r1, #0
	strh r1, [r0, #0x18]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	strb r1, [r0, #0x12]
	ldr r0, [r4, #0]
	bl sub_0202D79C
	add r1, r4, #0
	add r1, #0xac
	ldr r1, [r1, #0]
	str r0, [r1, #0x20]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, _0223A088 ; =0x0223FCA0
	bl sub_0208D720
	ldr r0, [r4, #0]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0208E9C0
	mov r3, #0
	str r3, [sp]
	add r4, #0xac
	ldr r1, _0223A08C ; =0x020F410C
	ldr r2, [r4, #0]
	add r0, r5, #0
	bl sub_0209B988
	pop {r3, r4, r5, pc}
	nop
_0223A088: .word 0x0223FCA0
_0223A08C: .word 0x020F410C
	thumb_func_end ov104_02239FB0

	thumb_func_start ov104_0223A090
ov104_0223A090: ; 0x0223A090
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0x14]
	add r0, r4, #0
	add r0, #0x9f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0
	add r0, #0xac
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	add r4, #0x9d
	strh r1, [r0]
	strb r1, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223A090

	.rodata


	.global Unk_ov104_0223FCA0
Unk_ov104_0223FCA0: ; 0x0223FCA0
	.incbin "incbin/overlay104_rodata.bin", 0xA10, 0x9


	.bss


	.global Unk_ov104_02241AD0
Unk_ov104_02241AD0: ; 0x02241AD0
	.space 0x4

