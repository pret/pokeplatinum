	.include "macros/function.inc"
	.include "include/unk_02014D38.inc"

	

	.text


	thumb_func_start sub_02014D38
sub_02014D38: ; 0x02014D38
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x30
	add r6, r0, #0
	bl sub_02018144
	ldr r4, _02014D6C ; =0x020E550C
	str r0, [sp]
	mov r7, #0
	add r5, r0, #0
_02014D4A:
	ldr r0, [sp]
	mov r1, #0x1a
	str r6, [r0, #0]
	ldrh r2, [r4]
	mov r0, #1
	add r3, r6, #0
	bl sub_0200B144
	str r0, [r5, #4]
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r7, #0xb
	blt _02014D4A
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02014D6C: .word 0x020E550C
	thumb_func_end sub_02014D38

	thumb_func_start sub_02014D70
sub_02014D70: ; 0x02014D70
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02014D78:
	ldr r0, [r5, #4]
	bl sub_0200B190
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xb
	blt _02014D78
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02014D70

	thumb_func_start sub_02014D90
sub_02014D90: ; 0x02014D90
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02014E4C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl sub_0200B1B8
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02014D90

	thumb_func_start sub_02014DB8
sub_02014DB8: ; 0x02014DB8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, _02014DF4 ; =0x0000FFFF
	cmp r0, r1
	beq _02014DE8
	add r1, sp, #8
	add r2, sp, #4
	bl sub_02014E4C
	ldr r0, [sp, #8]
	mov r3, #0
	lsl r1, r0, #1
	ldr r0, _02014DF8 ; =0x020E550C
	ldrh r0, [r0, r1]
	str r0, [sp, #8]
	str r4, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	mov r0, #0x1a
	bl sub_0200AF20
	add sp, #0xc
	pop {r3, r4, pc}
_02014DE8:
	add r0, r4, #0
	bl sub_020237E8
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02014DF4: .word 0x0000FFFF
_02014DF8: .word 0x020E550C
	thumb_func_end sub_02014DB8

	thumb_func_start sub_02014DFC
sub_02014DFC: ; 0x02014DFC
	push {r4, r5}
	ldr r4, _02014E40 ; =0x020E550C
	mov r2, #0
_02014E02:
	ldrh r3, [r4]
	cmp r0, r3
	bne _02014E30
	mov r4, #0
	add r3, r4, #0
	cmp r2, #0
	bls _02014E26
	ldr r0, _02014E44 ; =0x020E5522
_02014E12:
	lsl r5, r4, #1
	ldrh r5, [r0, r5]
	add r4, r4, #1
	lsl r4, r4, #0x10
	add r3, r3, r5
	lsl r3, r3, #0x10
	lsr r4, r4, #0x10
	lsr r3, r3, #0x10
	cmp r4, r2
	blo _02014E12
_02014E26:
	add r0, r3, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5}
	bx lr
_02014E30:
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #0xb
	blo _02014E02
	ldr r0, _02014E48 ; =0x0000FFFF
	pop {r4, r5}
	bx lr
	nop
_02014E40: .word 0x020E550C
_02014E44: .word 0x020E5522
_02014E48: .word 0x0000FFFF
	thumb_func_end sub_02014DFC

	thumb_func_start sub_02014E4C
sub_02014E4C: ; 0x02014E4C
	push {r3, r4, r5, r6}
	ldr r3, _02014E84 ; =0x00000FFF
	ldr r6, _02014E88 ; =0x020E5522
	and r3, r0
	mov r0, #0
	add r5, r0, #0
_02014E58:
	ldrh r4, [r6]
	add r0, r0, r4
	cmp r3, r0
	bhs _02014E74
	str r5, [r1, #0]
	ldr r1, _02014E88 ; =0x020E5522
	lsl r4, r5, #1
	ldrh r1, [r1, r4]
	sub r0, r0, r1
	sub r0, r3, r0
	str r0, [r2, #0]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02014E74:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #0xb
	blo _02014E58
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02014E84: .word 0x00000FFF
_02014E88: .word 0x020E5522
	thumb_func_end sub_02014E4C

	thumb_func_start sub_02014E8C
sub_02014E8C: ; 0x02014E8C
	mov r0, #8
	bx lr
	thumb_func_end sub_02014E8C

	thumb_func_start sub_02014E90
sub_02014E90: ; 0x02014E90
	push {r3, lr}
	mov r2, #0
	str r2, [r0, #0]
	ldr r3, _02014EBC ; =0x020E5500
	str r2, [r0, #4]
_02014E9A:
	ldrb r1, [r3]
	cmp r1, #2
	bne _02014EAC
	ldr r1, _02014EC0 ; =0x020E5501
	lsl r2, r2, #1
	ldrb r1, [r1, r2]
	bl sub_02014F98
	b _02014EB4
_02014EAC:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _02014E9A
_02014EB4:
	mov r0, #0x22
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
_02014EBC: .word 0x020E5500
_02014EC0: .word 0x020E5501
	thumb_func_end sub_02014E90

	thumb_func_start sub_02014EC4
sub_02014EC4: ; 0x02014EC4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x22
	bl sub_02025C48
	add r0, r4, #0
	mov r1, #0x22
	bl sub_020245BC
	pop {r4, pc}
	thumb_func_end sub_02014EC4

	thumb_func_start sub_02014ED8
sub_02014ED8: ; 0x02014ED8
	ldr r0, [r0, #4]
	add r2, r0, #0
	lsr r2, r1
	mov r0, #1
	and r0, r2
	bx lr
	thumb_func_end sub_02014ED8

	thumb_func_start sub_02014EE4
sub_02014EE4: ; 0x02014EE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r2, #0
	ldr r3, [r4, #4]
	add r5, r2, #0
	mov r0, #1
_02014EF0:
	add r1, r3, #0
	lsr r1, r2
	tst r1, r0
	bne _02014EFA
	add r5, r5, #1
_02014EFA:
	add r2, r2, #1
	cmp r2, #0x20
	blo _02014EF0
	cmp r5, #0
	beq _02014F3C
	bl sub_0201D2E8
	add r1, r5, #0
	bl _u32_div_f
	ldr r3, [r4, #4]
	mov r5, #0
	mov r0, #1
_02014F14:
	add r2, r3, #0
	lsr r2, r5
	tst r2, r0
	bne _02014F36
	cmp r1, #0
	bne _02014F34
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r5
	orr r0, r1
	str r0, [r4, #4]
	mov r0, #0x22
	bl sub_02025C84
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02014F34:
	sub r1, r1, #1
_02014F36:
	add r5, r5, #1
	cmp r5, #0x20
	blo _02014F14
_02014F3C:
	mov r0, #0x22
	bl sub_02025C84
	mov r0, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02014EE4

	thumb_func_start sub_02014F48
sub_02014F48: ; 0x02014F48
	ldr r3, [r0, #4]
	mov r2, #0
	mov r0, #1
_02014F4E:
	add r1, r3, #0
	lsr r1, r2
	tst r1, r0
	bne _02014F5A
	mov r0, #0
	bx lr
_02014F5A:
	add r2, r2, #1
	cmp r2, #0x20
	blo _02014F4E
	mov r0, #1
	bx lr
	thumb_func_end sub_02014F48

	thumb_func_start sub_02014F64
sub_02014F64: ; 0x02014F64
	push {r3, r4}
	mov r3, #0
	ldr r4, _02014F88 ; =0x020E5522
	add r2, r3, #0
_02014F6C:
	ldrh r1, [r4]
	add r2, r2, #1
	add r4, r4, #2
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r2, #9
	blt _02014F6C
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	nop
_02014F88: .word 0x020E5522
	thumb_func_end sub_02014F64

	thumb_func_start sub_02014F8C
sub_02014F8C: ; 0x02014F8C
	ldr r0, [r0, #0]
	add r2, r0, #0
	lsr r2, r1
	mov r0, #1
	and r0, r2
	bx lr
	thumb_func_end sub_02014F8C

	thumb_func_start sub_02014F98
sub_02014F98: ; 0x02014F98
	mov r2, #1
	ldr r3, [r0, #0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r0, #0]
	ldr r3, _02014FAC ; =sub_02025C84
	mov r0, #0x22
	bx r3
	nop
_02014FAC: .word sub_02025C84
	thumb_func_end sub_02014F98

	thumb_func_start sub_02014FB0
sub_02014FB0: ; 0x02014FB0
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #8
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0xbf
	add r2, r1, #0
	add r3, r5, #0
	bl sub_02007068
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	lsr r0, r0, #2
	str r0, [r4, #0]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02014FB0

	thumb_func_start sub_02014FF0
sub_02014FF0: ; 0x02014FF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02014FF0

	thumb_func_start sub_02015004
sub_02015004: ; 0x02015004
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02015004

	thumb_func_start sub_02015008
sub_02015008: ; 0x02015008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02015016
	bl GF_AssertFail
_02015016:
	ldr r0, [r5, #0]
	cmp r0, r4
	bhi _02015020
	ldr r0, _0201502C ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_02015020:
	ldr r1, [r5, #4]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0201502C: .word 0x0000FFFF
	thumb_func_end sub_02015008

	thumb_func_start sub_02015030
sub_02015030: ; 0x02015030
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0201503E
	bl GF_AssertFail
_0201503E:
	ldr r3, [r5, #0]
	mov r1, #0
	cmp r3, #0
	bls _0201505C
	ldr r2, [r5, #4]
_02015048:
	ldr r0, [r2, #0]
	cmp r4, r0
	bne _02015054
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_02015054:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, r3
	blo _02015048
_0201505C:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015030

	.rodata


	.global Unk_020E54CC
Unk_020E54CC: ; 0x020E54CC
	.incbin "incbin/arm9_rodata.bin", 0x88C, 0x890 - 0x88C

	.global Unk_020E54D0
Unk_020E54D0: ; 0x020E54D0
	.incbin "incbin/arm9_rodata.bin", 0x890, 0x894 - 0x890

	.global Unk_020E54D4
Unk_020E54D4: ; 0x020E54D4
	.incbin "incbin/arm9_rodata.bin", 0x894, 0x898 - 0x894

	.global Unk_020E54D8
Unk_020E54D8: ; 0x020E54D8
	.incbin "incbin/arm9_rodata.bin", 0x898, 0x89C - 0x898

	.global Unk_020E54DC
Unk_020E54DC: ; 0x020E54DC
	.incbin "incbin/arm9_rodata.bin", 0x89C, 0x8A0 - 0x89C

	.global Unk_020E54E0
Unk_020E54E0: ; 0x020E54E0
	.incbin "incbin/arm9_rodata.bin", 0x8A0, 0x8A4 - 0x8A0

	.global Unk_020E54E4
Unk_020E54E4: ; 0x020E54E4
	.incbin "incbin/arm9_rodata.bin", 0x8A4, 0x8A8 - 0x8A4

	.global Unk_020E54E8
Unk_020E54E8: ; 0x020E54E8
	.incbin "incbin/arm9_rodata.bin", 0x8A8, 0x8AC - 0x8A8

	.global Unk_020E54EC
Unk_020E54EC: ; 0x020E54EC
	.incbin "incbin/arm9_rodata.bin", 0x8AC, 0x8B0 - 0x8AC

	.global Unk_020E54F0
Unk_020E54F0: ; 0x020E54F0
	.incbin "incbin/arm9_rodata.bin", 0x8B0, 0x8B4 - 0x8B0

	.global Unk_020E54F4
Unk_020E54F4: ; 0x020E54F4
	.incbin "incbin/arm9_rodata.bin", 0x8B4, 0x8B8 - 0x8B4

	.global Unk_020E54F8
Unk_020E54F8: ; 0x020E54F8
	.incbin "incbin/arm9_rodata.bin", 0x8B8, 0x8C0 - 0x8B8

	.global Unk_020E5500
Unk_020E5500: ; 0x020E5500
	.incbin "incbin/arm9_rodata.bin", 0x8C0, 0x8CC - 0x8C0

	.global Unk_020E550C
Unk_020E550C: ; 0x020E550C
	.incbin "incbin/arm9_rodata.bin", 0x8CC, 0x8E2 - 0x8CC

	.global Unk_020E5522
Unk_020E5522: ; 0x020E5522
	.incbin "incbin/arm9_rodata.bin", 0x8E2, 0x8F8 - 0x8E2

	.global Unk_020E5538
Unk_020E5538: ; 0x020E5538
	.word Unk_020E54D8, 0x2
	.word Unk_020E54CC, 0x2
	.word Unk_020E54F4, 0x2
	.word Unk_020E54F8, 0x4
	.word Unk_020E54EC, 0x2
	.word Unk_020E54E8, 0x2
	.word Unk_020E54D4, 0x2
	.word Unk_020E54D0, 0x2
	.word Unk_020E54DC, 0x2
	.word Unk_020E54F0, 0x2
	.word Unk_020E54E4, 0x2
	.word Unk_020E54E0, 0x2

