	.include "macros/function.inc"
	.include "include/unk_02006E3C.inc"

	

	.text


	thumb_func_start sub_02006E3C
sub_02006E3C: ; 0x02006E3C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_02006FE8
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020072D0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006E3C

	thumb_func_start sub_02006E60
sub_02006E60: ; 0x02006E60
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_02006FE8
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007314
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006E60

	thumb_func_start sub_02006E84
sub_02006E84: ; 0x02006E84
	push {lr}
	sub sp, #0xc
	str r3, [sp]
	ldr r3, [sp, #0x10]
	str r3, [sp, #4]
	ldr r3, [sp, #0x14]
	str r3, [sp, #8]
	mov r3, #0
	bl sub_02006E9C
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02006E84

	thumb_func_start sub_02006E9C
sub_02006E9C: ; 0x02006E9C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x18]
	mov r2, #0
	bl sub_02006FE8
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020073BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006E9C

	thumb_func_start sub_02006EC0
sub_02006EC0: ; 0x02006EC0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_02006FE8
	ldr r3, [sp, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007374
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006EC0

	thumb_func_start sub_02006EE0
sub_02006EE0: ; 0x02006EE0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl sub_02006FE8
	ldr r3, [sp, #0x14]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200749C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006EE0

	thumb_func_start sub_02006F00
sub_02006F00: ; 0x02006F00
	push {r4, lr}
	sub sp, #8
	add r4, r3, #0
	mov r3, #1
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	bl sub_02006FE8
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	add r1, r4, #0
	bl sub_020074EC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006F00

	thumb_func_start sub_02006F28
sub_02006F28: ; 0x02006F28
	push {r4, lr}
	sub sp, #8
	add r4, r3, #0
	mov r3, #1
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	bl sub_02006FE8
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	add r1, r4, #0
	bl sub_02007534
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006F28

	thumb_func_start sub_02006F50
sub_02006F50: ; 0x02006F50
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02006FE8
	add r1, r4, #0
	bl sub_020075A0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006F50

	thumb_func_start sub_02006F6C
sub_02006F6C: ; 0x02006F6C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02006FE8
	add r1, r4, #0
	bl sub_020075BC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006F6C

	thumb_func_start sub_02006F88
sub_02006F88: ; 0x02006F88
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	mov r2, #0
	str r2, [sp]
	bl sub_02006FE8
	add r1, r4, #0
	bl sub_020075D8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02006F88

	thumb_func_start sub_02006FA0
sub_02006FA0: ; 0x02006FA0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02006FE8
	add r1, r4, #0
	bl sub_020075F4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006FA0

	thumb_func_start sub_02006FBC
sub_02006FBC: ; 0x02006FBC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02006FE8
	add r1, r4, #0
	bl sub_02007610
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006FBC

	thumb_func_start sub_02006FD8
sub_02006FD8: ; 0x02006FD8
	push {r3, lr}
	add r3, r2, #0
	mov r2, #0
	str r2, [sp]
	mov r2, #1
	bl sub_02006FE8
	pop {r3, pc}
	thumb_func_end sub_02006FD8

	thumb_func_start sub_02006FE8
sub_02006FE8: ; 0x02006FE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r0, #0
	add r6, r3, #0
	str r1, [sp]
	cmp r5, #0
	bne _02006FFC
	ldr r2, [sp, #0x18]
	cmp r2, #1
	bne _02007010
_02006FFC:
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02006B58
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02018184
	add r4, r0, #0
	b _0200701E
_02007010:
	bl sub_02006B58
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02018144
	add r4, r0, #0
_0200701E:
	cmp r4, #0
	beq _02007062
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02006AA4
	cmp r5, #0
	beq _02007062
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02007042
	ldr r1, [r4, #0]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_02018144
	b _0200704C
_02007042:
	ldr r1, [r4, #0]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_02018184
_0200704C:
	add r5, r0, #0
	cmp r5, #0
	beq _02007060
	add r0, r4, #0
	add r1, r5, #0
	bl MI_UncompressLZ8
	add r0, r4, #0
	bl sub_020181C4
_02007060:
	add r4, r5, #0
_02007062:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02006FE8

	thumb_func_start sub_02007068
sub_02007068: ; 0x02007068
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, [sp, #0x24]
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02006B58
	str r0, [r5, #0]
	cmp r6, #0
	bne _02007086
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _02007092
_02007086:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018184
	add r4, r0, #0
	b _0200709C
_02007092:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018144
	add r4, r0, #0
_0200709C:
	cmp r4, #0
	beq _020070E2
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r4, #0
	bl sub_02006AA4
	cmp r6, #0
	beq _020070E2
	ldr r0, [r4, #0]
	lsr r0, r0, #8
	str r0, [r5, #0]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020070C4
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018144
	b _020070CC
_020070C4:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018184
_020070CC:
	add r5, r0, #0
	cmp r5, #0
	beq _020070E0
	add r0, r4, #0
	add r1, r5, #0
	bl MI_UncompressLZ8
	add r0, r4, #0
	bl sub_020181C4
_020070E0:
	add r4, r5, #0
_020070E2:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02007068

	thumb_func_start sub_020070E8
sub_020070E8: ; 0x020070E8
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_0200723C
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020072D0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020070E8

	thumb_func_start sub_0200710C
sub_0200710C: ; 0x0200710C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_0200723C
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007314
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200710C

	thumb_func_start sub_02007130
sub_02007130: ; 0x02007130
	push {lr}
	sub sp, #0xc
	str r3, [sp]
	ldr r3, [sp, #0x10]
	str r3, [sp, #4]
	ldr r3, [sp, #0x14]
	str r3, [sp, #8]
	mov r3, #0
	bl sub_02007148
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02007130

	thumb_func_start sub_02007148
sub_02007148: ; 0x02007148
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x18]
	mov r2, #0
	bl sub_0200723C
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020073BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02007148

	thumb_func_start sub_0200716C
sub_0200716C: ; 0x0200716C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl sub_0200723C
	ldr r3, [sp, #0x14]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200749C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200716C

	thumb_func_start sub_0200718C
sub_0200718C: ; 0x0200718C
	push {r4, lr}
	sub sp, #8
	add r4, r3, #0
	mov r3, #1
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	bl sub_0200723C
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	add r1, r4, #0
	bl sub_020074EC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200718C

	thumb_func_start sub_020071B4
sub_020071B4: ; 0x020071B4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_0200723C
	add r1, r4, #0
	bl sub_020075A0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020071B4

	thumb_func_start sub_020071D0
sub_020071D0: ; 0x020071D0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_0200723C
	add r1, r4, #0
	bl sub_020075BC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020071D0

	thumb_func_start sub_020071EC
sub_020071EC: ; 0x020071EC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	mov r2, #0
	str r2, [sp]
	bl sub_0200723C
	add r1, r4, #0
	bl sub_020075D8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_020071EC

	thumb_func_start sub_02007204
sub_02007204: ; 0x02007204
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_0200723C
	add r1, r4, #0
	bl sub_020075F4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02007204

	thumb_func_start sub_02007220
sub_02007220: ; 0x02007220
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_0200723C
	add r1, r4, #0
	bl sub_02007610
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02007220

	thumb_func_start sub_0200723C
sub_0200723C: ; 0x0200723C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	add r4, sp, #8
	str r4, [sp, #4]
	bl sub_02007250
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200723C

	thumb_func_start sub_02007250
sub_02007250: ; 0x02007250
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, [sp, #0x24]
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02006D84
	str r0, [r5, #0]
	cmp r6, #0
	bne _0200726E
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0200727A
_0200726E:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018184
	add r4, r0, #0
	b _02007284
_0200727A:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018144
	add r4, r0, #0
_02007284:
	cmp r4, #0
	beq _020072CA
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl sub_02006D28
	cmp r6, #0
	beq _020072CA
	ldr r0, [r4, #0]
	lsr r0, r0, #8
	str r0, [r5, #0]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020072AC
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018144
	b _020072B4
_020072AC:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018184
_020072B4:
	add r5, r0, #0
	cmp r5, #0
	beq _020072C8
	add r0, r4, #0
	add r1, r5, #0
	bl MI_UncompressLZ8
	add r0, r4, #0
	bl sub_020181C4
_020072C8:
	add r4, r5, #0
_020072CA:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02007250

	thumb_func_start sub_020072D0
sub_020072D0: ; 0x020072D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x20]
	cmp r5, #0
	beq _0200730C
	add r1, sp, #8
	bl NNS_G2dGetUnpackedBGCharacterData
	cmp r0, #0
	beq _02007306
	cmp r4, #0
	bne _020072F4
	ldr r0, [sp, #8]
	ldr r4, [r0, #0x10]
_020072F4:
	str r7, [sp]
	ldr r2, [sp, #8]
	lsl r1, r6, #0x18
	ldr r0, [sp, #4]
	ldr r2, [r2, #0x14]
	lsr r1, r1, #0x18
	add r3, r4, #0
	bl sub_0201958C
_02007306:
	add r0, r5, #0
	bl sub_020181C4
_0200730C:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020072D0

	thumb_func_start sub_02007314
sub_02007314: ; 0x02007314
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #4]
	ldr r4, [sp, #0x20]
	cmp r6, #0
	beq _02007370
	add r1, sp, #8
	bl NNS_G2dGetUnpackedScreenData
	cmp r0, #0
	beq _0200736A
	cmp r4, #0
	bne _02007338
	ldr r0, [sp, #8]
	ldr r4, [r0, #8]
_02007338:
	lsl r1, r5, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_02019FE4
	cmp r0, #0
	beq _02007356
	ldr r2, [sp, #8]
	lsl r1, r5, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r4, #0
	bl sub_02019574
_02007356:
	ldr r0, [sp, #4]
	lsl r1, r5, #0x18
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r4, #0
	bl sub_02019460
_0200736A:
	add r0, r6, #0
	bl sub_020181C4
_02007370:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02007314

	thumb_func_start sub_02007374
sub_02007374: ; 0x02007374
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	beq _020073B4
	add r1, sp, #0
	bl NNS_G2dGetUnpackedCharacterData
	cmp r0, #0
	beq _020073AE
	cmp r4, #0
	bne _02007394
	ldr r0, [sp]
	ldr r4, [r0, #0x10]
_02007394:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0x14]
	bl DC_FlushRange
	ldr r0, [sp]
	ldr r3, _020073B8 ; =0x020E4D28
	lsl r6, r6, #2
	ldr r0, [r0, #0x14]
	ldr r3, [r3, r6]
	add r1, r7, #0
	add r2, r4, #0
	blx r3
_020073AE:
	add r0, r5, #0
	bl sub_020181C4
_020073B4:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020073B8: .word 0x020E4D28
	thumb_func_end sub_02007374

	thumb_func_start sub_020073BC
sub_020073BC: ; 0x020073BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	ldr r5, [sp, #0x20]
	add r1, r0, #0
	beq _02007492
	add r1, sp, #4
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #0
	beq _0200748C
	ldr r0, [sp, #4]
	ldr r1, [r0, #0xc]
	add r1, r1, r7
	str r1, [r0, #0xc]
	cmp r5, #0
	bne _020073EA
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	sub r5, r0, r7
_020073EA:
	ldr r0, [sp, #4]
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	cmp r4, #7
	bhi _0200747C
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02007404: ; jump table
	.short _0200747C - _02007404 - 2 ; case 0
	.short _0200747C - _02007404 - 2 ; case 1
	.short _02007414 - _02007404 - 2 ; case 2
	.short _02007448 - _02007404 - 2 ; case 3
	.short _0200747C - _02007404 - 2 ; case 4
	.short _0200747C - _02007404 - 2 ; case 5
	.short _0200742E - _02007404 - 2 ; case 6
	.short _02007462 - _02007404 - 2 ; case 7
_02007414:
	bl GX_BeginLoadBGExtPltt
	ldr r0, [sp, #4]
	ldr r3, _02007498 ; =0x020E4D30
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl GX_EndLoadBGExtPltt
	b _0200748C
_0200742E:
	bl GXS_BeginLoadBGExtPltt
	ldr r0, [sp, #4]
	ldr r3, _02007498 ; =0x020E4D30
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl GXS_EndLoadBGExtPltt
	b _0200748C
_02007448:
	bl GX_BeginLoadOBJExtPltt
	ldr r0, [sp, #4]
	ldr r3, _02007498 ; =0x020E4D30
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl GX_EndLoadOBJExtPltt
	b _0200748C
_02007462:
	bl GXS_BeginLoadOBJExtPltt
	ldr r0, [sp, #4]
	ldr r3, _02007498 ; =0x020E4D30
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl GXS_EndLoadOBJExtPltt
	b _0200748C
_0200747C:
	ldr r0, [sp, #4]
	ldr r3, _02007498 ; =0x020E4D30
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
_0200748C:
	ldr r0, [sp]
	bl sub_020181C4
_02007492:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02007498: .word 0x020E4D30
	thumb_func_end sub_020073BC

	thumb_func_start sub_0200749C
sub_0200749C: ; 0x0200749C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	beq _020074E8
	add r1, sp, #8
	bl NNS_G2dGetUnpackedPaletteCompressInfo
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0xc
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #0
	beq _020074E2
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020074D6
	str r4, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, r7, #0
	add r3, r6, #0
	bl NNS_G2dLoadPaletteEx
	b _020074E2
_020074D6:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl NNS_G2dLoadPalette
_020074E2:
	add r0, r5, #0
	bl sub_020181C4
_020074E8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200749C

	thumb_func_start sub_020074EC
sub_020074EC: ; 0x020074EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	mov r6, #0
	str r3, [sp]
	cmp r5, #0
	beq _0200752A
	add r1, sp, #4
	bl NNS_G2dGetUnpackedCharacterData
	cmp r0, #0
	beq _02007524
	cmp r4, #0
	beq _02007510
	ldr r0, [sp, #4]
	str r4, [r0, #0x10]
_02007510:
	ldr r4, _02007530 ; =0x020E4D18
	lsl r6, r7, #2
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	ldr r2, [sp]
	ldr r3, [sp, #0x24]
	ldr r4, [r4, r6]
	blx r4
	ldr r0, [sp, #4]
	ldr r6, [r0, #0x10]
_02007524:
	add r0, r5, #0
	bl sub_020181C4
_0200752A:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02007530: .word 0x020E4D18
	thumb_func_end sub_020074EC

	thumb_func_start sub_02007534
sub_02007534: ; 0x02007534
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r6, #0
	beq _02007590
	add r1, sp, #0
	bl NNS_G2dGetUnpackedCharacterData
	cmp r0, #0
	beq _0200758A
	cmp r5, #0
	beq _02007554
	ldr r0, [sp]
	str r5, [r0, #0x10]
_02007554:
	cmp r4, #1
	beq _0200755E
	cmp r4, #2
	beq _0200756E
	b _0200757A
_0200755E:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r0, _02007594 ; =0x00300010
	and r1, r0
	ldr r0, [sp]
	str r1, [r0, #8]
	b _0200757A
_0200756E:
	ldr r0, _02007598 ; =0x04001000
	ldr r1, [r0, #0]
	ldr r0, _02007594 ; =0x00300010
	and r1, r0
	ldr r0, [sp]
	str r1, [r0, #8]
_0200757A:
	add r2, r4, #0
	ldr r4, _0200759C ; =0x020E4D20
	lsl r5, r7, #2
	ldr r0, [sp]
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	ldr r4, [r4, r5]
	blx r4
_0200758A:
	add r0, r6, #0
	bl sub_020181C4
_02007590:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02007594: .word 0x00300010
_02007598: .word 0x04001000
_0200759C: .word 0x020E4D20
	thumb_func_end sub_02007534

	thumb_func_start sub_020075A0
sub_020075A0: ; 0x020075A0
	push {r4, lr}
	add r4, r0, #0
	beq _020075B8
	bl NNS_G2dGetUnpackedBGCharacterData
	cmp r0, #0
	bne _020075B8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_020075B8:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020075A0

	thumb_func_start sub_020075BC
sub_020075BC: ; 0x020075BC
	push {r4, lr}
	add r4, r0, #0
	beq _020075D4
	bl NNS_G2dGetUnpackedScreenData
	cmp r0, #0
	bne _020075D4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_020075D4:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020075BC

	thumb_func_start sub_020075D8
sub_020075D8: ; 0x020075D8
	push {r4, lr}
	add r4, r0, #0
	beq _020075F0
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #0
	bne _020075F0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_020075F0:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020075D8

	thumb_func_start sub_020075F4
sub_020075F4: ; 0x020075F4
	push {r4, lr}
	add r4, r0, #0
	beq _0200760C
	bl NNS_G2dGetUnpackedCellBank
	cmp r0, #0
	bne _0200760C
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_0200760C:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020075F4

	thumb_func_start sub_02007610
sub_02007610: ; 0x02007610
	push {r4, lr}
	add r4, r0, #0
	beq _02007628
	bl NNS_G2dGetUnpackedAnimBank
	cmp r0, #0
	bne _02007628
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_02007628:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02007610

	.rodata


	.global Unk_020E4D18
Unk_020E4D18: ; 0x020E4D18
	.incbin "incbin/arm9_rodata.bin", 0xD8, 0xE0 - 0xD8

	.global Unk_020E4D20
Unk_020E4D20: ; 0x020E4D20
	.incbin "incbin/arm9_rodata.bin", 0xE0, 0xE8 - 0xE0

	.global Unk_020E4D28
Unk_020E4D28: ; 0x020E4D28
	.incbin "incbin/arm9_rodata.bin", 0xE8, 0xF0 - 0xE8

	.global Unk_020E4D30
Unk_020E4D30: ; 0x020E4D30
	.incbin "incbin/arm9_rodata.bin", 0xF0, 0x20

