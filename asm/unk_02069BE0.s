	.include "macros/function.inc"
	.include "include/unk_02069BE0.inc"

	

	.text


	thumb_func_start sub_02069BE0
sub_02069BE0: ; 0x02069BE0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #8
	bl sub_02062A54
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02069CA8
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062D10
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D80
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02069BE0

	thumb_func_start sub_02069C0C
sub_02069C0C: ; 0x02069C0C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069CA8
	cmp r0, #0
	beq _02069C3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02062D80
	ldr r6, _02069C40 ; =0x020EF8D4
_02069C2C:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _02069C2C
_02069C3C:
	pop {r4, r5, r6, pc}
	nop
_02069C40: .word 0x020EF8D4
	thumb_func_end sub_02069C0C

	thumb_func_start sub_02069C44
sub_02069C44: ; 0x02069C44
	bx lr
	; .align 2, 0
	thumb_func_end sub_02069C44

	thumb_func_start sub_02069C48
sub_02069C48: ; 0x02069C48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069CFC
	cmp r0, #1
	bne _02069C86
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069D30
	add r0, r5, #0
	bl sub_02069D8C
	cmp r0, #1
	bne _02069C86
	add r0, r5, #0
	bl sub_02062D04
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02069C86:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069C48

	thumb_func_start sub_02069C8C
sub_02069C8C: ; 0x02069C8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _02069CA4
	add r0, r5, #0
	bl sub_02062D10
	mov r0, #0
	strb r0, [r4]
_02069CA4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02069C8C

	thumb_func_start sub_02069CA8
sub_02069CA8: ; 0x02069CA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062A40
	bl sub_0205EA24
	cmp r0, #0
	bne _02069CC0
	mov r0, #0
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
_02069CC0:
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _02069CCE
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069CD4
_02069CCE:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069CA8

	thumb_func_start sub_02069CD4
sub_02069CD4: ; 0x02069CD4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02062C00
	bl sub_0205EF3C
	mov r1, #1
	add r4, r0, #0
	strb r1, [r5, #1]
	bl sub_0205EABC
	strh r0, [r5, #2]
	add r0, r4, #0
	bl sub_0205EAC8
	strh r0, [r5, #4]
	mov r0, #0xff
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069CD4

	thumb_func_start sub_02069CFC
sub_02069CFC: ; 0x02069CFC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02062C00
	bl sub_0205EF3C
	add r6, r0, #0
	beq _02069D2C
	bl sub_0205EABC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205EAC8
	mov r1, #2
	ldrsh r1, [r5, r1]
	cmp r4, r1
	bne _02069D28
	mov r1, #4
	ldrsh r1, [r5, r1]
	cmp r0, r1
	beq _02069D2C
_02069D28:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02069D2C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02069CFC

	thumb_func_start sub_02069D30
sub_02069D30: ; 0x02069D30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02062C00
	bl sub_0205EF3C
	add r4, r0, #0
	bl sub_0205EABC
	strh r0, [r5, #2]
	add r0, r4, #0
	bl sub_0205EAC8
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069D30

	thumb_func_start sub_02069D50
sub_02069D50: ; 0x02069D50
	push {r3, lr}
	bl sub_02062C00
	bl sub_0205EF3C
	bl sub_0205EC14
	add r1, r0, #0
	sub r1, #0x58
	cmp r1, #3
	bhi _02069D88
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02069D72: ; jump table
	.short _02069D7A - _02069D72 - 2 ; case 0
	.short _02069D7E - _02069D72 - 2 ; case 1
	.short _02069D82 - _02069D72 - 2 ; case 2
	.short _02069D86 - _02069D72 - 2 ; case 3
_02069D7A:
	mov r0, #0x10
	pop {r3, pc}
_02069D7E:
	mov r0, #0x11
	pop {r3, pc}
_02069D82:
	mov r0, #0x12
	pop {r3, pc}
_02069D86:
	mov r0, #0x13
_02069D88:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02069D50

	thumb_func_start sub_02069D8C
sub_02069D8C: ; 0x02069D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02062C00
	bl sub_0205EF3C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp]
	add r0, r5, #0
	bl sub_02063040
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0205EAD4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205EAE0
	add r4, r0, #0
	ldr r0, [sp]
	cmp r0, r6
	bne _02069DC6
	cmp r7, r4
	beq _02069DEE
_02069DC6:
	add r0, r5, #0
	bl sub_02069D50
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02064488
	ldr r1, [sp, #4]
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02069DEE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02069D8C

	thumb_func_start sub_02069DF4
sub_02069DF4: ; 0x02069DF4
	push {r3, r4, r5, lr}
	mov r1, #0xc
	add r5, r0, #0
	bl sub_02062A54
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069F48
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D10
	mov r0, #0
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02069DF4

	thumb_func_start sub_02069E1C
sub_02069E1C: ; 0x02069E1C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069F48
	cmp r0, #0
	beq _02069E44
	ldr r6, _02069E48 ; =0x020EF8EC
_02069E34:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _02069E34
_02069E44:
	pop {r4, r5, r6, pc}
	nop
_02069E48: .word 0x020EF8EC
	thumb_func_end sub_02069E1C

	thumb_func_start sub_02069E4C
sub_02069E4C: ; 0x02069E4C
	bx lr
	; .align 2, 0
	thumb_func_end sub_02069E4C

	thumb_func_start sub_02069E50
sub_02069E50: ; 0x02069E50
	push {r3, lr}
	bl sub_02062A78
	mov r1, #0
	strb r1, [r0, #1]
	pop {r3, pc}
	thumb_func_end sub_02069E50

	thumb_func_start sub_02069E5C
sub_02069E5C: ; 0x02069E5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069FE8
	cmp r0, #1
	bne _02069E94
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206A034
	cmp r0, #1
	bne _02069E94
	add r0, r5, #0
	bl sub_02062D04
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02069E94:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02069E5C

	thumb_func_start sub_02069E98
sub_02069E98: ; 0x02069E98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #0
	bne _02069EAA
	mov r0, #0
	pop {r3, r4, r5, pc}
_02069EAA:
	add r0, r5, #0
	bl sub_02062D10
	mov r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069E98

	thumb_func_start sub_02069EB8
sub_02069EB8: ; 0x02069EB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0
	add r4, r0, #0
	str r1, [sp, #8]
	bl sub_02062950
	str r0, [sp]
	add r0, r4, #0
	bl sub_02062918
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02067F24
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02062A40
	ldr r1, [sp]
	add r7, r0, #0
	cmp r1, #8
	bhi _02069F40
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02069EF2: ; jump table
	.short _02069F40 - _02069EF2 - 2 ; case 0
	.short _02069F04 - _02069EF2 - 2 ; case 1
	.short _02069F04 - _02069EF2 - 2 ; case 2
	.short _02069F04 - _02069EF2 - 2 ; case 3
	.short _02069F04 - _02069EF2 - 2 ; case 4
	.short _02069F04 - _02069EF2 - 2 ; case 5
	.short _02069F04 - _02069EF2 - 2 ; case 6
	.short _02069F04 - _02069EF2 - 2 ; case 7
	.short _02069F04 - _02069EF2 - 2 ; case 8
_02069F04:
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	bne _02069F40
_02069F12:
	ldr r0, [sp, #4]
	cmp r4, r0
	beq _02069F30
	bl sub_02062918
	cmp r6, r0
	bne _02069F30
	ldr r0, [sp, #4]
	bl sub_02067F24
	cmp r5, r0
	bne _02069F30
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02069F30:
	add r0, r7, #0
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _02069F12
_02069F40:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02069EB8

	thumb_func_start sub_02069F48
sub_02069F48: ; 0x02069F48
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	bl sub_02062A40
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02062918
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02067F24
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	bne _02069FBA
_02069F7A:
	ldr r0, [sp, #4]
	cmp r5, r0
	beq _02069FAA
	bl sub_02062918
	cmp r7, r0
	bne _02069FAA
	ldr r0, [sp, #4]
	bl sub_02067F24
	cmp r6, r0
	bne _02069FAA
	ldr r0, [sp]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02069FA4
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl sub_02069FC4
_02069FA4:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02069FAA:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _02069F7A
_02069FBA:
	ldr r1, [sp]
	mov r0, #0
	strb r0, [r1, #1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02069F48

	thumb_func_start sub_02069FC4
sub_02069FC4: ; 0x02069FC4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #1
	add r4, r2, #0
	strb r0, [r5, #1]
	add r0, r4, #0
	bl sub_02063020
	strh r0, [r5, #2]
	add r0, r4, #0
	bl sub_02063040
	strh r0, [r5, #4]
	mov r0, #0xff
	strh r0, [r5, #6]
	str r4, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069FC4

	thumb_func_start sub_02069FE8
sub_02069FE8: ; 0x02069FE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r5, [r1, #8]
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02063040
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063008
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063018
	cmp r6, r4
	bne _0206A012
	cmp r7, r0
	beq _0206A02E
_0206A012:
	add r0, r5, #0
	bl sub_02062D1C
	cmp r0, #1
	beq _0206A02A
	mov r1, #0x61
	add r0, r5, #0
	lsl r1, r1, #6
	bl sub_020628D0
	cmp r0, #0
	bne _0206A02E
_0206A02A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206A02E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02069FE8

	thumb_func_start sub_0206A034
sub_0206A034: ; 0x0206A034
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r5, r1, #0
	bl sub_02063020
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_02063040
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl sub_02063020
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	bl sub_02063040
	add r7, r0, #0
	ldr r0, [r5, #8]
	bl sub_02063008
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	bl sub_02063018
	add r3, r0, #0
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _0206A07A
	cmp r6, r7
	bne _0206A07A
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206A07A:
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02064488
	add r5, r0, #0
	bl sub_0206419C
	add r4, r4, r0
	add r0, r5, #0
	bl sub_020641A8
	add r1, r6, r0
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _0206A09E
	cmp r1, r7
	beq _0206A0B4
_0206A09E:
	add r0, r5, #0
	mov r1, #0xc
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_02065668
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0206A0B4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206A034

	thumb_func_start sub_0206A0BC
sub_0206A0BC: ; 0x0206A0BC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #8
	bl sub_02062A54
	strb r5, [r0, #1]
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062D10
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	ldr r5, _0206A100 ; =0x020EF8F4
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_02063088
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0206A100: .word 0x020EF8F4
	thumb_func_end sub_0206A0BC

	thumb_func_start sub_0206A104
sub_0206A104: ; 0x0206A104
	ldr r3, _0206A10C ; =sub_0206A0BC
	mov r1, #0
	bx r3
	nop
_0206A10C: .word sub_0206A0BC
	thumb_func_end sub_0206A104

	thumb_func_start sub_0206A110
sub_0206A110: ; 0x0206A110
	ldr r3, _0206A118 ; =sub_0206A0BC
	mov r1, #1
	bx r3
	nop
_0206A118: .word sub_0206A0BC
	thumb_func_end sub_0206A110

	thumb_func_start sub_0206A11C
sub_0206A11C: ; 0x0206A11C
	ldr r3, _0206A124 ; =sub_0206A0BC
	mov r1, #2
	bx r3
	nop
_0206A124: .word sub_0206A0BC
	thumb_func_end sub_0206A11C

	thumb_func_start sub_0206A128
sub_0206A128: ; 0x0206A128
	ldr r3, _0206A130 ; =sub_0206A0BC
	mov r1, #3
	bx r3
	nop
_0206A130: .word sub_0206A0BC
	thumb_func_end sub_0206A128

	thumb_func_start sub_0206A134
sub_0206A134: ; 0x0206A134
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _0206A154 ; =0x020EF8DC
	add r4, r0, #0
_0206A140:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _0206A140
	pop {r4, r5, r6, pc}
	nop
_0206A154: .word 0x020EF8DC
	thumb_func_end sub_0206A134

	thumb_func_start sub_0206A158
sub_0206A158: ; 0x0206A158
	push {r3, lr}
	bl sub_0206A224
	cmp r0, #0
	beq _0206A166
	bl ov5_021DF74C
_0206A166:
	pop {r3, pc}
	thumb_func_end sub_0206A158

	thumb_func_start sub_0206A168
sub_0206A168: ; 0x0206A168
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02062A78
	add r5, r0, #0
	mov r1, #0
	strb r1, [r5]
	add r0, r4, #0
	bl sub_0206A218
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0206A1A4
	ldr r5, _0206A1A8 ; =0x020EF900
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_02063088
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
_0206A1A4:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0206A1A8: .word 0x020EF900
	thumb_func_end sub_0206A168

	thumb_func_start sub_0206A1AC
sub_0206A1AC: ; 0x0206A1AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #2]
	add r5, r0, #0
	cmp r1, #0
	bne _0206A1C6
	ldrb r1, [r4, #1]
	bl ov5_021F3D90
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206A218
_0206A1C6:
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206A1AC

	thumb_func_start sub_0206A1DC
sub_0206A1DC: ; 0x0206A1DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #2]
	add r5, r0, #0
	cmp r1, #0
	bne _0206A214
	bl sub_0206A224
	cmp r0, #0
	bne _0206A20A
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _0206A20A
	ldrb r1, [r4, #1]
	add r0, r5, #0
	bl ov5_021F3D90
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206A218
_0206A20A:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
_0206A214:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206A1DC

	thumb_func_start sub_0206A218
sub_0206A218: ; 0x0206A218
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062A78
	str r4, [r0, #4]
	pop {r4, pc}
	thumb_func_end sub_0206A218

	thumb_func_start sub_0206A224
sub_0206A224: ; 0x0206A224
	push {r3, lr}
	bl sub_02062A78
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206A224

	thumb_func_start sub_0206A230
sub_0206A230: ; 0x0206A230
	push {r3, lr}
	bl sub_02062A78
	mov r1, #1
	strb r1, [r0, #2]
	pop {r3, pc}
	thumb_func_end sub_0206A230

	thumb_func_start sub_0206A23C
sub_0206A23C: ; 0x0206A23C
	push {r3, r4, r5, lr}
	mov r1, #4
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02062A54
	mov r1, #0
	mvn r1, r1
	strb r1, [r0, #1]
	strb r4, [r0, #2]
	add r0, r5, #0
	mov r1, #0
	bl sub_02062974
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206A23C

	thumb_func_start sub_0206A25C
sub_0206A25C: ; 0x0206A25C
	ldr r3, _0206A264 ; =sub_0206A23C
	mov r1, #0
	add r2, r1, #0
	bx r3
	; .align 2, 0
_0206A264: .word sub_0206A23C
	thumb_func_end sub_0206A25C

	thumb_func_start sub_0206A268
sub_0206A268: ; 0x0206A268
	ldr r3, _0206A270 ; =sub_0206A23C
	mov r1, #1
	mov r2, #0
	bx r3
	; .align 2, 0
_0206A270: .word sub_0206A23C
	thumb_func_end sub_0206A268

	thumb_func_start sub_0206A274
sub_0206A274: ; 0x0206A274
	ldr r3, _0206A27C ; =sub_0206A23C
	mov r1, #2
	mov r2, #0
	bx r3
	; .align 2, 0
_0206A27C: .word sub_0206A23C
	thumb_func_end sub_0206A274

	thumb_func_start sub_0206A280
sub_0206A280: ; 0x0206A280
	ldr r3, _0206A288 ; =sub_0206A23C
	mov r1, #3
	mov r2, #0
	bx r3
	; .align 2, 0
_0206A288: .word sub_0206A23C
	thumb_func_end sub_0206A280

	thumb_func_start sub_0206A28C
sub_0206A28C: ; 0x0206A28C
	ldr r3, _0206A294 ; =sub_0206A23C
	mov r1, #0
	mov r2, #1
	bx r3
	; .align 2, 0
_0206A294: .word sub_0206A23C
	thumb_func_end sub_0206A28C

	thumb_func_start sub_0206A298
sub_0206A298: ; 0x0206A298
	ldr r3, _0206A2A0 ; =sub_0206A23C
	mov r1, #1
	add r2, r1, #0
	bx r3
	; .align 2, 0
_0206A2A0: .word sub_0206A23C
	thumb_func_end sub_0206A298

	thumb_func_start sub_0206A2A4
sub_0206A2A4: ; 0x0206A2A4
	ldr r3, _0206A2AC ; =sub_0206A23C
	mov r1, #2
	mov r2, #1
	bx r3
	; .align 2, 0
_0206A2AC: .word sub_0206A23C
	thumb_func_end sub_0206A2A4

	thumb_func_start sub_0206A2B0
sub_0206A2B0: ; 0x0206A2B0
	ldr r3, _0206A2B8 ; =sub_0206A23C
	mov r1, #3
	mov r2, #1
	bx r3
	; .align 2, 0
_0206A2B8: .word sub_0206A23C
	thumb_func_end sub_0206A2B0

	thumb_func_start sub_0206A2BC
sub_0206A2BC: ; 0x0206A2BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _0206A2DC ; =0x020EF918
	add r4, r0, #0
_0206A2C8:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _0206A2C8
	pop {r4, r5, r6, pc}
	nop
_0206A2DC: .word 0x020EF918
	thumb_func_end sub_0206A2BC

	thumb_func_start sub_0206A2E0
sub_0206A2E0: ; 0x0206A2E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	mov r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206A2E0

	thumb_func_start sub_0206A30C
sub_0206A30C: ; 0x0206A30C
	push {r4, lr}
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _0206A320
	mov r0, #2
	strb r0, [r4]
	mov r0, #1
	pop {r4, pc}
_0206A320:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0206A30C

	thumb_func_start sub_0206A324
sub_0206A324: ; 0x0206A324
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	ldrsb r2, [r4, r1]
	sub r1, r1, #2
	add r5, r0, #0
	cmp r2, r1
	bne _0206A340
	bl sub_02062C00
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	strb r0, [r4, #1]
_0206A340:
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	mov r0, #3
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206A324

	thumb_func_start sub_0206A354
sub_0206A354: ; 0x0206A354
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02064238
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DAD4
	cmp r0, #0
	bne _0206A36E
	mov r4, #2
_0206A36E:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02063EBC
	orr r0, r4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206A354

	thumb_func_start sub_0206A37C
sub_0206A37C: ; 0x0206A37C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r3, #0
	bne _0206A38E
	bl sub_02063EBC
	b _0206A392
_0206A38E:
	bl sub_0206A354
_0206A392:
	cmp r0, #0
	beq _0206A3A2
	add r0, r4, #0
	mov r1, #0
	bl sub_02065838
	add r6, r0, #0
	b _0206A3B2
_0206A3A2:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02065838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062D04
_0206A3B2:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02065668
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206A37C

	thumb_func_start sub_0206A3BC
sub_0206A3BC: ; 0x0206A3BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062C00
	add r7, r0, #0
	ldr r0, [r7, #0x3c]
	bl sub_0205EA78
	add r6, r0, #0
	ldr r0, [r7, #0x3c]
	bl sub_0205EC1C
	cmp r0, #6
	bhi _0206A44A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206A3E6: ; jump table
	.short _0206A3F4 - _0206A3E6 - 2 ; case 0
	.short _0206A3F4 - _0206A3E6 - 2 ; case 1
	.short _0206A406 - _0206A3E6 - 2 ; case 2
	.short _0206A414 - _0206A3E6 - 2 ; case 3
	.short _0206A422 - _0206A3E6 - 2 ; case 4
	.short _0206A430 - _0206A3E6 - 2 ; case 5
	.short _0206A43E - _0206A3E6 - 2 ; case 6
_0206A3F4:
	add r0, r6, #0
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	b _0206A44A
_0206A406:
	ldrb r3, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #4
	bl sub_0206A37C
	b _0206A44A
_0206A414:
	ldrb r3, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #8
	bl sub_0206A37C
	b _0206A44A
_0206A422:
	ldrb r3, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0xc
	bl sub_0206A37C
	b _0206A44A
_0206A430:
	ldrb r3, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x10
	bl sub_0206A37C
	b _0206A44A
_0206A43E:
	ldrb r3, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x14
	bl sub_0206A37C
_0206A44A:
	mov r0, #4
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206A3BC

	thumb_func_start sub_0206A454
sub_0206A454: ; 0x0206A454
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #0
	bne _0206A466
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206A466:
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	mov r0, #2
	strb r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206A454

	thumb_func_start sub_0206A47C
sub_0206A47C: ; 0x0206A47C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xc
	add r4, r2, #0
	bl sub_02062A54
	str r5, [r0, #4]
	str r4, [r0, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206A47C

	thumb_func_start sub_0206A490
sub_0206A490: ; 0x0206A490
	ldr r3, _0206A498 ; =sub_0206A47C
	mov r1, #0
	add r2, r1, #0
	bx r3
	; .align 2, 0
_0206A498: .word sub_0206A47C
	thumb_func_end sub_0206A490

	thumb_func_start sub_0206A49C
sub_0206A49C: ; 0x0206A49C
	ldr r3, _0206A4A4 ; =sub_0206A47C
	mov r1, #1
	add r2, r1, #0
	bx r3
	; .align 2, 0
_0206A4A4: .word sub_0206A47C
	thumb_func_end sub_0206A49C

	thumb_func_start sub_0206A4A8
sub_0206A4A8: ; 0x0206A4A8
	ldr r3, _0206A4B0 ; =sub_0206A47C
	mov r1, #2
	mov r2, #0
	bx r3
	; .align 2, 0
_0206A4B0: .word sub_0206A47C
	thumb_func_end sub_0206A4A8

	thumb_func_start sub_0206A4B4
sub_0206A4B4: ; 0x0206A4B4
	ldr r3, _0206A4BC ; =sub_0206A47C
	mov r1, #2
	mov r2, #1
	bx r3
	; .align 2, 0
_0206A4BC: .word sub_0206A47C
	thumb_func_end sub_0206A4B4

	thumb_func_start sub_0206A4C0
sub_0206A4C0: ; 0x0206A4C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _0206A4E0 ; =0x020EF90C
	add r4, r0, #0
_0206A4CC:
	ldr r2, [r4, #0]
	add r0, r5, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	add r1, r4, #0
	blx r2
	cmp r0, #1
	beq _0206A4CC
	pop {r4, r5, r6, pc}
	nop
_0206A4E0: .word 0x020EF90C
	thumb_func_end sub_0206A4C0

	thumb_func_start sub_0206A4E4
sub_0206A4E4: ; 0x0206A4E4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062D10
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206A4E4

	thumb_func_start sub_0206A4F8
sub_0206A4F8: ; 0x0206A4F8
	push {r4, lr}
	add r4, r1, #0
	mov r2, #0xc
	bl sub_0206A630
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0206A4F8

	thumb_func_start sub_0206A50C
sub_0206A50C: ; 0x0206A50C
	push {r4, lr}
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _0206A520
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_0206A520:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0206A50C

	thumb_func_start sub_0206A524
sub_0206A524: ; 0x0206A524
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	ldr r6, _0206A544 ; =0x020EF94C
	lsl r5, r4, #2
	lsl r4, r3, #3
	ldr r3, _0206A548 ; =0x020EF92C
	add r3, r3, r4
	add r4, r6, r4
	ldr r3, [r5, r3]
	ldr r4, [r5, r4]
	add r1, r1, r3
	add r2, r2, r4
	bl sub_02054F68
	pop {r4, r5, r6, pc}
	nop
_0206A544: .word 0x020EF94C
_0206A548: .word 0x020EF92C
	thumb_func_end sub_0206A524

	thumb_func_start sub_0206A54C
sub_0206A54C: ; 0x0206A54C
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	ldr r6, _0206A56C ; =0x020EF9AC
	lsl r5, r4, #2
	lsl r4, r3, #3
	ldr r3, _0206A570 ; =0x020EF98C
	add r3, r3, r4
	add r4, r6, r4
	ldr r3, [r5, r3]
	ldr r4, [r5, r4]
	add r1, r1, r3
	add r2, r2, r4
	bl sub_02054F68
	pop {r4, r5, r6, pc}
	nop
_0206A56C: .word 0x020EF9AC
_0206A570: .word 0x020EF98C
	thumb_func_end sub_0206A54C

	thumb_func_start sub_0206A574
sub_0206A574: ; 0x0206A574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063040
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r3, r6, #0
	str r4, [sp]
	bl sub_0206A524
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206A574

	thumb_func_start sub_0206A5A4
sub_0206A5A4: ; 0x0206A5A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063040
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r3, r6, #0
	str r4, [sp]
	bl sub_0206A54C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206A5A4

	thumb_func_start sub_0206A5D4
sub_0206A5D4: ; 0x0206A5D4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0206A574
	cmp r0, #0
	bne _0206A602
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0206A5A4
	cmp r0, #0
	bne _0206A5F8
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0206A5F8:
	ldr r0, _0206A608 ; =0x020EF96C
	lsl r2, r5, #3
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r5, [r1, r0]
_0206A602:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_0206A608: .word 0x020EF96C
	thumb_func_end sub_0206A5D4

	thumb_func_start sub_0206A60C
sub_0206A60C: ; 0x0206A60C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	bl sub_0206A5D4
	str r0, [r5, #0]
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0206A62C
	add r0, r4, #0
	bl sub_02063EBC
	pop {r3, r4, r5, pc}
_0206A62C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206A60C

	thumb_func_start sub_0206A630
sub_0206A630: ; 0x0206A630
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r4, [r6, #8]
	add r5, r0, #0
	add r7, r2, #0
	bl sub_0206298C
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0
	add r2, r4, #0
	bl sub_0206A60C
	mov r2, #0
	ldr r1, [sp]
	mvn r2, r2
	cmp r1, r2
	bne _0206A66E
	add r0, r5, #0
	bl sub_0206298C
	mov r1, #0x1c
	str r0, [sp]
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206A66E:
	cmp r0, #0
	bne _0206A68E
	add r0, r1, #0
	add r1, r7, #0
	bl sub_02065838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062D04
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065668
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206A68E:
	mov r2, #1
	tst r2, r0
	beq _0206A6FC
	ldr r2, [r6, #4]
	cmp r2, #2
	bne _0206A6FC
	add r0, r5, #0
	bl sub_0206298C
	bl sub_0206447C
	str r0, [sp]
	ldr r0, _0206A778 ; =0x020EF8E4
	lsl r1, r4, #2
	ldr r4, [r0, r1]
	add r0, r5, #0
	str r4, [r6, #8]
	add r1, sp, #0
	add r2, r4, #0
	bl sub_0206A60C
	mov r2, #0
	ldr r1, [sp]
	mvn r2, r2
	cmp r1, r2
	bne _0206A6DC
	add r0, r5, #0
	bl sub_0206298C
	mov r1, #0x1c
	str r0, [sp]
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206A6DC:
	cmp r0, #0
	bne _0206A6FC
	add r0, r1, #0
	add r1, r7, #0
	bl sub_02065838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062D04
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065668
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206A6FC:
	mov r2, #2
	tst r0, r2
	beq _0206A75C
	ldr r0, _0206A77C ; =0x020EF9CC
	lsl r2, r1, #3
	add r0, r0, r2
	lsl r1, r4, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0206A60C
	mov r1, #0
	ldr r2, [sp]
	mvn r1, r1
	cmp r2, r1
	bne _0206A73C
	add r0, r5, #0
	bl sub_0206298C
	mov r1, #0x1c
	str r0, [sp]
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206A73C:
	cmp r0, #0
	bne _0206A75C
	add r0, r2, #0
	add r1, r7, #0
	bl sub_02065838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062D04
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065668
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206A75C:
	add r0, r5, #0
	bl sub_0206298C
	mov r1, #0x1c
	str r0, [sp]
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206A778: .word 0x020EF8E4
_0206A77C: .word 0x020EF9CC
	thumb_func_end sub_0206A630

	.rodata


	.global Unk_020EF8D4
Unk_020EF8D4: ; 0x020EF8D4
	.incbin "incbin/arm9_rodata.bin", 0xAC94, 0xAC9C - 0xAC94

	.global Unk_020EF8DC
Unk_020EF8DC: ; 0x020EF8DC
	.incbin "incbin/arm9_rodata.bin", 0xAC9C, 0xACA4 - 0xAC9C

	.global Unk_020EF8E4
Unk_020EF8E4: ; 0x020EF8E4
	.incbin "incbin/arm9_rodata.bin", 0xACA4, 0xACAC - 0xACA4

	.global Unk_020EF8EC
Unk_020EF8EC: ; 0x020EF8EC
	.incbin "incbin/arm9_rodata.bin", 0xACAC, 0xACB4 - 0xACAC

	.global Unk_020EF8F4
Unk_020EF8F4: ; 0x020EF8F4
	.incbin "incbin/arm9_rodata.bin", 0xACB4, 0xACC0 - 0xACB4

	.global Unk_020EF900
Unk_020EF900: ; 0x020EF900
	.incbin "incbin/arm9_rodata.bin", 0xACC0, 0xACCC - 0xACC0

	.global Unk_020EF90C
Unk_020EF90C: ; 0x020EF90C
	.incbin "incbin/arm9_rodata.bin", 0xACCC, 0xACD8 - 0xACCC

	.global Unk_020EF918
Unk_020EF918: ; 0x020EF918
	.incbin "incbin/arm9_rodata.bin", 0xACD8, 0xACEC - 0xACD8

	.global Unk_020EF92C
Unk_020EF92C: ; 0x020EF92C
	.incbin "incbin/arm9_rodata.bin", 0xACEC, 0xAD0C - 0xACEC

	.global Unk_020EF94C
Unk_020EF94C: ; 0x020EF94C
	.incbin "incbin/arm9_rodata.bin", 0xAD0C, 0xAD2C - 0xAD0C

	.global Unk_020EF96C
Unk_020EF96C: ; 0x020EF96C
	.incbin "incbin/arm9_rodata.bin", 0xAD2C, 0xAD4C - 0xAD2C

	.global Unk_020EF98C
Unk_020EF98C: ; 0x020EF98C
	.incbin "incbin/arm9_rodata.bin", 0xAD4C, 0xAD6C - 0xAD4C

	.global Unk_020EF9AC
Unk_020EF9AC: ; 0x020EF9AC
	.incbin "incbin/arm9_rodata.bin", 0xAD6C, 0xAD8C - 0xAD6C

	.global Unk_020EF9CC
Unk_020EF9CC: ; 0x020EF9CC
	.incbin "incbin/arm9_rodata.bin", 0xAD8C, 0x20

