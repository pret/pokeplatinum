	.include "macros/function.inc"
	.include "include/unk_02063400.inc"

	

	.text


	thumb_func_start sub_02063400
sub_02063400: ; 0x02063400
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062B00
	add r0, r4, #0
	bl sub_020673B8
	pop {r4, pc}
	thumb_func_end sub_02063400

	thumb_func_start sub_02063410
sub_02063410: ; 0x02063410
	push {r4, lr}
	mov r1, #2
	add r4, r0, #0
	bl sub_02062CBC
	cmp r0, #0
	bne _02063474
	add r0, r4, #0
	bl sub_020634DC
	add r0, r4, #0
	bl sub_020634F4
	add r0, r4, #0
	bl sub_02063518
	add r0, r4, #0
	mov r1, #0x10
	bl sub_020628D0
	cmp r0, #0
	beq _02063444
	add r0, r4, #0
	bl sub_020658B4
	b _02063468
_02063444:
	add r0, r4, #0
	bl sub_02062DE8
	cmp r0, #0
	bne _02063468
	add r0, r4, #0
	bl sub_02063478
	cmp r0, #1
	bne _02063468
	add r0, r4, #0
	bl sub_020673C0
	cmp r0, #0
	bne _02063468
	add r0, r4, #0
	bl sub_02062B14
_02063468:
	add r0, r4, #0
	bl sub_0206353C
	add r0, r4, #0
	bl sub_02063574
_02063474:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02063410

	thumb_func_start sub_02063478
sub_02063478: ; 0x02063478
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062D1C
	cmp r0, #1
	bne _02063488
	mov r0, #1
	pop {r4, pc}
_02063488:
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_020628D0
	cmp r0, #0
	bne _0206349A
	mov r0, #1
	pop {r4, pc}
_0206349A:
	add r0, r4, #0
	bl sub_02062948
	cmp r0, #0x32
	bne _020634A8
	mov r0, #1
	pop {r4, pc}
_020634A8:
	add r0, r4, #0
	bl sub_020628B8
	mov r1, #1
	lsl r1, r1, #0xc
	add r2, r0, #0
	tst r2, r1
	beq _020634C2
	lsl r1, r1, #0xb
	tst r1, r0
	bne _020634C2
	mov r0, #0
	pop {r4, pc}
_020634C2:
	mov r1, #2
	lsl r1, r1, #0xa
	tst r0, r1
	beq _020634D8
	add r0, r4, #0
	bl sub_02062FDC
	cmp r0, #0
	bne _020634D8
	mov r0, #0
	pop {r4, pc}
_020634D8:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02063478

	thumb_func_start sub_020634DC
sub_020634DC: ; 0x020634DC
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0xc
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _020634F2
	add r0, r4, #0
	bl sub_020642F8
_020634F2:
	pop {r4, pc}
	thumb_func_end sub_020634DC

	thumb_func_start sub_020634F4
sub_020634F4: ; 0x020634F4
	push {r4, lr}
	mov r1, #2
	lsl r1, r1, #0xa
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _02063514
	add r0, r4, #0
	bl sub_02064390
	cmp r0, #1
	bne _02063514
	add r0, r4, #0
	bl sub_02062D28
_02063514:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020634F4

	thumb_func_start sub_02063518
sub_02063518: ; 0x02063518
	push {r4, lr}
	mov r1, #4
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _0206352C
	add r0, r4, #0
	bl sub_020635AC
_0206352C:
	ldr r1, _02063538 ; =0x00010004
	add r0, r4, #0
	bl sub_020628C4
	pop {r4, pc}
	nop
_02063538: .word 0x00010004
	thumb_func_end sub_02063518

	thumb_func_start sub_0206353C
sub_0206353C: ; 0x0206353C
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0x10
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _02063554
	add r0, r4, #0
	bl sub_020636F0
	b _02063566
_02063554:
	add r0, r4, #0
	mov r1, #4
	bl sub_020628D0
	cmp r0, #0
	beq _02063566
	add r0, r4, #0
	bl sub_0206363C
_02063566:
	ldr r1, _02063570 ; =0x00010004
	add r0, r4, #0
	bl sub_020628C4
	pop {r4, pc}
	; .align 2, 0
_02063570: .word 0x00010004
	thumb_func_end sub_0206353C

	thumb_func_start sub_02063574
sub_02063574: ; 0x02063574
	push {r4, lr}
	mov r1, #2
	lsl r1, r1, #0x10
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _0206358C
	add r0, r4, #0
	bl sub_020637D4
	b _0206359E
_0206358C:
	add r0, r4, #0
	mov r1, #8
	bl sub_020628D0
	cmp r0, #0
	beq _0206359E
	add r0, r4, #0
	bl sub_0206375C
_0206359E:
	ldr r1, _020635A8 ; =0x00020008
	add r0, r4, #0
	bl sub_020628C4
	pop {r4, pc}
	; .align 2, 0
_020635A8: .word 0x00020008
	thumb_func_end sub_02063574

	thumb_func_start sub_020635AC
sub_020635AC: ; 0x020635AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02064390
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _0206363A
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl sub_02062BF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl ov5_021ECD04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063DDC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063964
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A70
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063864
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C00
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063D30
_0206363A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020635AC

	thumb_func_start sub_0206363C
sub_0206363C: ; 0x0206363C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02064390
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _020636EE
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl sub_02062BF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl ov5_021ECD04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063DDC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_0206397C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063994
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A78
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C18
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C48
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C60
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063CC8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063D30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063E14
_020636EE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206363C

	thumb_func_start sub_020636F0
sub_020636F0: ; 0x020636F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02064390
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _0206375A
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl sub_02062BF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl ov5_021ECD04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063DDC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A78
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063D30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A64
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063E14
_0206375A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020636F0

	thumb_func_start sub_0206375C
sub_0206375C: ; 0x0206375C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02064390
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _020637D2
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl sub_02062BF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl ov5_021ECD04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063864
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C94
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063CFC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063DA8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063B20
_020637D2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206375C

	thumb_func_start sub_020637D4
sub_020637D4: ; 0x020637D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02064390
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _02063862
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl sub_02062BF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl ov5_021ECD04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063864
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063C94
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063CFC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063A30
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063DA8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063B20
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_0206397C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02063BB4
_02063862:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020637D4

	thumb_func_start sub_02063864
sub_02063864: ; 0x02063864
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02062EFC
	cmp r0, #0
	bne _0206393C
	add r0, r5, #0
	bl sub_0205DCF0
	cmp r0, #1
	beq _02063888
	add r0, r5, #0
	bl sub_0205DD0C
	cmp r0, #1
	bne _020638A2
_02063888:
	ldr r5, _02063950 ; =0x020EE738
	add r3, sp, #0x3c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
_020638A2:
	add r0, r5, #0
	bl sub_0205DCE0
	cmp r0, #1
	beq _020638B6
	add r0, r5, #0
	bl sub_0205DCFC
	cmp r0, #1
	bne _020638D0
_020638B6:
	ldr r5, _02063954 ; =0x020EE744
	add r3, sp, #0x30
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
_020638D0:
	add r0, r5, #0
	bl sub_0205DD5C
	cmp r0, #1
	bne _020638F4
	ldr r5, _02063958 ; =0x020EE720
	add r3, sp, #0x24
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
_020638F4:
	add r0, r5, #0
	bl sub_0205DD50
	cmp r0, #1
	bne _02063918
	ldr r5, _0206395C ; =0x020EE72C
	add r3, sp, #0x18
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
_02063918:
	add r0, r5, #0
	bl sub_0205DD44
	cmp r0, #1
	bne _0206393C
	ldr r5, _02063960 ; =0x020EE750
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
_0206393C:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	bl sub_020630CC
	add sp, #0x48
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02063950: .word 0x020EE738
_02063954: .word 0x020EE744
_02063958: .word 0x020EE720
_0206395C: .word 0x020EE72C
_02063960: .word 0x020EE750
	thumb_func_end sub_02063864

	thumb_func_start sub_02063964
sub_02063964: ; 0x02063964
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DAC8
	cmp r0, #1
	bne _0206397A
	add r0, r4, #0
	mov r1, #0
	bl ov5_021F2EA4
_0206397A:
	pop {r4, pc}
	thumb_func_end sub_02063964

	thumb_func_start sub_0206397C
sub_0206397C: ; 0x0206397C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DAC8
	cmp r0, #1
	bne _02063992
	add r0, r4, #0
	mov r1, #1
	bl ov5_021F2EA4
_02063992:
	pop {r4, pc}
	thumb_func_end sub_0206397C

	thumb_func_start sub_02063994
sub_02063994: ; 0x02063994
	push {r4, r5, r6, lr}
	add r6, r3, #0
	add r5, r0, #0
	ldr r0, [r6, #4]
	add r4, r2, #0
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1c
	beq _02063A2C
	add r0, r4, #0
	bl sub_0205DFAC
	cmp r0, #1
	bne _020639CA
	ldr r0, [r6, #4]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _020639C0
	add r0, r5, #0
	bl ov5_021F1EBC
	b _020639CA
_020639C0:
	cmp r0, #2
	bne _020639CA
	add r0, r5, #0
	bl ov5_021F1EC8
_020639CA:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020640A0
	cmp r0, #1
	bne _020639F4
	ldr r0, [r6, #4]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _020639E8
	add r0, r5, #0
	bl ov5_021F1E8C
	pop {r4, r5, r6, pc}
_020639E8:
	cmp r0, #2
	bne _02063A2C
	add r0, r5, #0
	bl ov5_021F1E98
	pop {r4, r5, r6, pc}
_020639F4:
	add r0, r4, #0
	bl sub_0205DD50
	cmp r0, #1
	beq _02063A12
	add r0, r4, #0
	bl sub_0205DD5C
	cmp r0, #1
	beq _02063A12
	add r0, r4, #0
	bl sub_0205DD44
	cmp r0, #0
	beq _02063A1A
_02063A12:
	add r0, r5, #0
	bl ov5_021F1EB0
	pop {r4, r5, r6, pc}
_02063A1A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02064108
	cmp r0, #1
	bne _02063A2C
	add r0, r5, #0
	bl ov5_021F1EA4
_02063A2C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063994

	thumb_func_start sub_02063A30
sub_02063A30: ; 0x02063A30
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DB78
	cmp r0, #1
	bne _02063A5A
	add r0, r4, #0
	bl sub_02062EC8
	cmp r0, #0
	bne _02063A62
	add r0, r4, #0
	mov r1, #1
	bl ov5_021F331C
	add r0, r4, #0
	mov r1, #1
	bl sub_02062EAC
	pop {r4, pc}
_02063A5A:
	add r0, r4, #0
	mov r1, #0
	bl sub_02062EAC
_02063A62:
	pop {r4, pc}
	thumb_func_end sub_02063A30

	thumb_func_start sub_02063A64
sub_02063A64: ; 0x02063A64
	ldr r3, _02063A6C ; =sub_02062EAC
	mov r1, #0
	bx r3
	nop
_02063A6C: .word sub_02062EAC
	thumb_func_end sub_02063A64

	thumb_func_start sub_02063A70
sub_02063A70: ; 0x02063A70
	push {r3, lr}
	bl sub_02063A78
	pop {r3, pc}
	thumb_func_end sub_02063A70

	thumb_func_start sub_02063A78
sub_02063A78: ; 0x02063A78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	bl sub_02062A40
	bl sub_02062CE4
	cmp r0, #0
	beq _02063B1C
	ldr r0, [r6, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	beq _02063B1C
	add r0, r4, #0
	bl sub_0205DAC8
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DAD4
	cmp r0, #1
	beq _02063AF2
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206406C
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DE5C
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DB78
	cmp r0, #1
	beq _02063AF2
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020640D4
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DCE0
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DCFC
	cmp r0, #1
	beq _02063AF2
	add r0, r4, #0
	bl sub_0205DF9C
	cmp r0, #0
	beq _02063AFE
_02063AF2:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r4, r5, r6, pc}
_02063AFE:
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xe
	bl sub_020628D0
	cmp r0, #0
	bne _02063B1C
	add r0, r5, #0
	bl ov5_021F1570
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xe
	bl sub_020628BC
_02063B1C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063A78

	thumb_func_start sub_02063B20
sub_02063B20: ; 0x02063B20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	bl sub_02062A40
	bl sub_02062CE4
	cmp r0, #0
	beq _02063BB0
	ldr r0, [r6, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	beq _02063BB0
	add r0, r4, #0
	bl sub_0205DAC8
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DAD4
	cmp r0, #1
	beq _02063B9A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206406C
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DE5C
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DB78
	cmp r0, #1
	beq _02063B9A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020640D4
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DCE0
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DCFC
	cmp r0, #1
	beq _02063B9A
	add r0, r4, #0
	bl sub_0205DF9C
	cmp r0, #0
	beq _02063BA6
_02063B9A:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r4, r5, r6, pc}
_02063BA6:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
_02063BB0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063B20

	thumb_func_start sub_02063BB4
sub_02063BB4: ; 0x02063BB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0206406C
	cmp r0, #1
	beq _02063BFC
	add r0, r4, #0
	bl sub_0205DB78
	cmp r0, #1
	beq _02063BFC
	add r0, r4, #0
	bl sub_0205DC5C
	cmp r0, #1
	beq _02063BFC
	add r0, r4, #0
	bl sub_0205DCE0
	cmp r0, #1
	beq _02063BFC
	add r0, r4, #0
	bl sub_0205DCFC
	cmp r0, #1
	beq _02063BFC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020640D4
	cmp r0, #1
	beq _02063BFC
	add r0, r5, #0
	bl ov5_021F3638
_02063BFC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02063BB4

	thumb_func_start sub_02063C00
sub_02063C00: ; 0x02063C00
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DAD4
	cmp r0, #1
	bne _02063C16
	add r0, r4, #0
	mov r1, #0
	bl ov5_021F3844
_02063C16:
	pop {r4, pc}
	thumb_func_end sub_02063C00

	thumb_func_start sub_02063C18
sub_02063C18: ; 0x02063C18
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DAD4
	cmp r0, #1
	bne _02063C2E
	add r0, r4, #0
	mov r1, #1
	bl ov5_021F3844
_02063C2E:
	pop {r4, pc}
	thumb_func_end sub_02063C18

	thumb_func_start sub_02063C30
sub_02063C30: ; 0x02063C30
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DCFC
	cmp r0, #1
	bne _02063C46
	add r0, r4, #0
	mov r1, #0
	bl ov5_021F3AEC
_02063C46:
	pop {r4, pc}
	thumb_func_end sub_02063C30

	thumb_func_start sub_02063C48
sub_02063C48: ; 0x02063C48
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0205DCFC
	cmp r0, #1
	bne _02063C5E
	add r0, r4, #0
	mov r1, #1
	bl ov5_021F3AEC
_02063C5E:
	pop {r4, pc}
	thumb_func_end sub_02063C48

	thumb_func_start sub_02063C60
sub_02063C60: ; 0x02063C60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r2, #0
	bl sub_0205DE5C
	cmp r0, #1
	bne _02063C90
	add r0, r5, #0
	bl sub_02063008
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063010
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063018
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021F2AE4
_02063C90:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063C60

	thumb_func_start sub_02063C94
sub_02063C94: ; 0x02063C94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0205DE5C
	cmp r0, #1
	bne _02063CC4
	add r0, r5, #0
	bl sub_02063020
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063030
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063040
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021F2AE4
_02063CC4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063C94

	thumb_func_start sub_02063CC8
sub_02063CC8: ; 0x02063CC8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r2, #0
	bl sub_0205DCE0
	cmp r0, #1
	bne _02063CF8
	add r0, r5, #0
	bl sub_02063008
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063010
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063018
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021F2C38
_02063CF8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063CC8

	thumb_func_start sub_02063CFC
sub_02063CFC: ; 0x02063CFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0205DCE0
	cmp r0, #1
	bne _02063D2C
	add r0, r5, #0
	bl sub_02063020
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063030
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063040
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021F2C38
_02063D2C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063CFC

	thumb_func_start sub_02063D30
sub_02063D30: ; 0x02063D30
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r1, [r3, #4]
	add r5, r0, #0
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1e
	beq _02063DA6
	bl sub_02062F64
	cmp r0, #0
	bne _02063DA6
	bl sub_0205DF98
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205DE90
	cmp r0, #1
	bne _02063D5A
	add r4, r6, #0
	b _02063D72
_02063D5A:
	add r0, r5, #0
	mov r1, #1
	bl sub_02064238
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	bl sub_0205DE90
	cmp r0, #1
	bne _02063D72
	add r4, r6, #0
_02063D72:
	bl sub_0205DF98
	cmp r4, r0
	beq _02063DA6
	add r0, r5, #0
	mov r1, #1
	bl sub_02062F48
	add r0, r4, #0
	bl sub_0205DF9C
	cmp r0, #1
	bne _02063D90
	mov r1, #2
	b _02063DA0
_02063D90:
	add r0, r4, #0
	bl sub_0205DE5C
	cmp r0, #1
	bne _02063D9E
	mov r1, #0
	b _02063DA0
_02063D9E:
	mov r1, #1
_02063DA0:
	add r0, r5, #0
	bl ov5_021F1800
_02063DA6:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02063D30

	thumb_func_start sub_02063DA8
sub_02063DA8: ; 0x02063DA8
	push {r4, lr}
	ldr r1, [r3, #4]
	add r4, r0, #0
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1e
	beq _02063DD8
	bl sub_02062F64
	cmp r0, #0
	beq _02063DD8
	add r0, r4, #0
	mov r1, #1
	bl sub_02064238
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DE90
	cmp r0, #0
	bne _02063DD8
	add r0, r4, #0
	mov r1, #0
	bl sub_02062F48
_02063DD8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02063DA8

	thumb_func_start sub_02063DDC
sub_02063DDC: ; 0x02063DDC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205DEF0
	cmp r0, #1
	bne _02063DF6
	add r0, r5, #0
	mov r1, #1
	bl sub_02062F14
	pop {r3, r4, r5, pc}
_02063DF6:
	add r0, r5, #0
	bl sub_02062F30
	cmp r0, #1
	bne _02063E12
	add r0, r4, #0
	bl sub_0205DEFC
	cmp r0, #0
	bne _02063E12
	add r0, r5, #0
	mov r1, #0
	bl sub_02062F14
_02063E12:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02063DDC

	thumb_func_start sub_02063E14
sub_02063E14: ; 0x02063E14
	bx lr
	; .align 2, 0
	thumb_func_end sub_02063E14

	thumb_func_start sub_02063E18
sub_02063E18: ; 0x02063E18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r7, [sp, #0x28]
	add r5, r2, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r2, r3, #0
	add r1, r5, #0
	add r3, r7, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_02063FAC
	cmp r0, #1
	bne _02063E3A
	mov r0, #1
	orr r4, r0
_02063E3A:
	add r0, r6, #0
	bl sub_02062C00
	add r1, sp, #0xc
	str r1, [sp]
	ldr r1, [sp, #4]
	add r2, r5, #0
	add r3, r7, #0
	bl sub_02055024
	cmp r0, #1
	bne _02063E64
	mov r0, #2
	orr r4, r0
	add r1, sp, #0xc
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _02063E64
	mov r0, #8
	orr r4, r0
_02063E64:
	ldr r3, [sp, #0x2c]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02064004
	cmp r0, #1
	bne _02063E78
	mov r0, #2
	orr r4, r0
_02063E78:
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r3, r7, #0
	bl sub_02063F00
	cmp r0, #1
	bne _02063E8C
	mov r0, #4
	orr r4, r0
_02063E8C:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02063E18

	thumb_func_start sub_02063E94
sub_02063E94: ; 0x02063E94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r1, sp, #8
	add r5, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02063050
	ldr r0, [sp, #0x28]
	str r4, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #8
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02063E18
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02063E94

	thumb_func_start sub_02063EBC
sub_02063EBC: ; 0x02063EBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063030
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_020641A8
	str r4, [sp]
	add r3, r0, #0
	ldr r4, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r6, r7
	add r3, r4, r3
	bl sub_02063E94
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02063EBC

	thumb_func_start sub_02063F00
sub_02063F00: ; 0x02063F00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02062A40
	add r5, r0, #0
	bl sub_02062868
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02062824
	str r0, [sp, #4]
_02063F20:
	ldr r0, [sp, #8]
	ldr r1, [sp]
	cmp r0, r1
	beq _02063F98
	mov r1, #1
	bl sub_020628D0
	cmp r0, #0
	beq _02063F98
	mov r1, #1
	ldr r0, [sp, #8]
	lsl r1, r1, #0x12
	bl sub_020628D0
	cmp r0, #0
	bne _02063F98
	ldr r0, [sp, #8]
	bl sub_02063020
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_02063040
	cmp r5, r4
	bne _02063F6C
	cmp r0, r7
	bne _02063F6C
	ldr r0, [sp, #8]
	bl sub_02063030
	sub r0, r0, r6
	bpl _02063F62
	neg r0, r0
_02063F62:
	cmp r0, #2
	bge _02063F6C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02063F6C:
	ldr r0, [sp, #8]
	bl sub_02063008
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_02063018
	cmp r5, r4
	bne _02063F98
	cmp r0, r7
	bne _02063F98
	ldr r0, [sp, #8]
	bl sub_02063030
	sub r0, r0, r6
	bpl _02063F8E
	neg r0, r0
_02063F8E:
	cmp r0, #2
	bge _02063F98
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02063F98:
	add r0, sp, #8
	bl sub_02062880
	ldr r0, [sp, #4]
	sub r0, r0, #1
	str r0, [sp, #4]
	bne _02063F20
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02063F00

	thumb_func_start sub_02063FAC
sub_02063FAC: ; 0x02063FAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r3, #0
	bl sub_02062FF0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02062A00
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02063FD8
	add r1, r7, r0
	sub r0, r7, r0
	cmp r0, r5
	bgt _02063FD4
	cmp r1, r5
	bge _02063FD8
_02063FD4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02063FD8:
	add r0, r6, #0
	bl sub_02063000
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02062A08
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02063FFE
	add r1, r5, r0
	sub r0, r5, r0
	cmp r0, r4
	bgt _02063FFA
	cmp r1, r4
	bge _02063FFE
_02063FFA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02063FFE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02063FAC

	thumb_func_start sub_02064004
sub_02064004: ; 0x02064004
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r5, r3, #0
	bl sub_02062FDC
	cmp r0, #0
	bne _0206405E
	add r0, r4, #0
	bl sub_02062C00
	str r0, [sp]
	add r0, r4, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02054F94
	add r6, r0, #0
	bl sub_0205DF98
	cmp r6, r0
	bne _02064040
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02064040:
	ldr r1, _02064064 ; =0x020EE76C
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	blx r1
	cmp r0, #1
	beq _0206405A
	ldr r1, _02064068 ; =0x020EE77C
	add r0, r6, #0
	ldr r1, [r1, r5]
	blx r1
	cmp r0, #1
	bne _0206405E
_0206405A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206405E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02064064: .word 0x020EE76C
_02064068: .word 0x020EE77C
	thumb_func_end sub_02064004

	thumb_func_start sub_0206406C
sub_0206406C: ; 0x0206406C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF10
	cmp r0, #0
	beq _0206408C
	add r0, r5, #0
	bl sub_02062F30
	cmp r0, #0
	bne _0206409C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206408C:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DB58
	cmp r0, #0
	beq _0206409C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206409C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206406C

	thumb_func_start sub_020640A0
sub_020640A0: ; 0x020640A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF34
	cmp r0, #0
	beq _020640C0
	add r0, r5, #0
	bl sub_02062F30
	cmp r0, #0
	bne _020640D0
	mov r0, #1
	pop {r3, r4, r5, pc}
_020640C0:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DB6C
	cmp r0, #0
	beq _020640D0
	mov r0, #1
	pop {r3, r4, r5, pc}
_020640D0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020640A0

	thumb_func_start sub_020640D4
sub_020640D4: ; 0x020640D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF58
	cmp r0, #0
	beq _020640F4
	add r0, r5, #0
	bl sub_02062F30
	cmp r0, #0
	bne _02064104
	mov r0, #1
	pop {r3, r4, r5, pc}
_020640F4:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DD18
	cmp r0, #0
	beq _02064104
	mov r0, #1
	pop {r3, r4, r5, pc}
_02064104:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020640D4

	thumb_func_start sub_02064108
sub_02064108: ; 0x02064108
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF58
	cmp r0, #0
	beq _02064128
	add r0, r5, #0
	bl sub_02062F30
	cmp r0, #0
	bne _02064138
	mov r0, #1
	pop {r3, r4, r5, pc}
_02064128:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DD38
	cmp r0, #0
	beq _02064138
	mov r0, #1
	pop {r3, r4, r5, pc}
_02064138:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02064108

	thumb_func_start sub_0206413C
sub_0206413C: ; 0x0206413C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062F30
	cmp r0, #1
	bne _02064158
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DEFC
	cmp r0, #1
	bne _02064158
	mov r0, #1
	pop {r4, pc}
_02064158:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0206413C

	thumb_func_start sub_0206415C
sub_0206415C: ; 0x0206415C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062F30
	cmp r0, #1
	bne _02064178
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF64
	cmp r0, #1
	bne _02064178
	mov r0, #1
	pop {r4, pc}
_02064178:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0206415C

	thumb_func_start sub_0206417C
sub_0206417C: ; 0x0206417C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062F30
	cmp r0, #1
	bne _02064198
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DF78
	cmp r0, #1
	bne _02064198
	mov r0, #1
	pop {r4, pc}
_02064198:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0206417C

	thumb_func_start sub_0206419C
sub_0206419C: ; 0x0206419C
	lsl r1, r0, #2
	ldr r0, _020641A4 ; =0x020EE75C
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_020641A4: .word 0x020EE75C
	thumb_func_end sub_0206419C

	thumb_func_start sub_020641A8
sub_020641A8: ; 0x020641A8
	lsl r1, r0, #2
	ldr r0, _020641B0 ; =0x020EE78C
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_020641B0: .word 0x020EE78C
	thumb_func_end sub_020641A8

	thumb_func_start sub_020641B4
sub_020641B4: ; 0x020641B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02063020
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206300C
	add r0, r5, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063014
	add r0, r5, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206301C
	add r0, r4, #0
	bl sub_0206419C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063028
	add r0, r5, #0
	mov r1, #0
	bl sub_02063038
	add r0, r4, #0
	bl sub_020641A8
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063048
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020641B4

	thumb_func_start sub_02064208
sub_02064208: ; 0x02064208
	push {r4, lr}
	add r4, r0, #0
	bl sub_02063020
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206300C
	add r0, r4, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02063014
	add r0, r4, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206301C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02064208

	thumb_func_start sub_02064238
sub_02064238: ; 0x02064238
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02063040
	str r0, [sp]
	add r0, r5, #0
	bl sub_020641A8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02062C00
	ldr r2, [sp]
	add r1, r6, r7
	add r2, r2, r5
	bl sub_02054F94
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02064238

	thumb_func_start sub_02064270
sub_02064270: ; 0x02064270
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	add r5, r0, #0
	bl sub_02063050
	ldr r1, [sp]
	ldr r0, [r4, #0]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02063060
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02064270

	thumb_func_start sub_020642A4
sub_020642A4: ; 0x020642A4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r1, sp, #0
	add r6, r0, #0
	add r4, r2, #0
	bl sub_02063050
	cmp r5, #3
	bhi _020642EA
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020642C4: ; jump table
	.short _020642CC - _020642C4 - 2 ; case 0
	.short _020642D4 - _020642C4 - 2 ; case 1
	.short _020642DC - _020642C4 - 2 ; case 2
	.short _020642E4 - _020642C4 - 2 ; case 3
_020642CC:
	ldr r0, [sp, #8]
	sub r0, r0, r4
	str r0, [sp, #8]
	b _020642EA
_020642D4:
	ldr r0, [sp, #8]
	add r0, r0, r4
	str r0, [sp, #8]
	b _020642EA
_020642DC:
	ldr r0, [sp]
	sub r0, r0, r4
	str r0, [sp]
	b _020642EA
_020642E4:
	ldr r0, [sp]
	add r0, r0, r4
	str r0, [sp]
_020642EA:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02063060
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020642A4

	thumb_func_start sub_020642F8
sub_020642F8: ; 0x020642F8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r1, sp, #0xc
	add r5, r0, #0
	bl sub_02063050
	add r3, sp, #0xc
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_02062E44
	cmp r0, #1
	bne _0206432A
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628C4
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206432A:
	add r0, r5, #0
	bl sub_02062FAC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062C00
	add r1, sp, #0
	add r2, r4, #0
	bl sub_020644D0
	add r4, r0, #0
	cmp r4, #1
	bne _0206437E
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02063060
	add r0, r5, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063014
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	asr r2, r1, #3
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	bl sub_02063034
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628C4
	b _02064388
_0206437E:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628BC
_02064388:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020642F8

	thumb_func_start sub_02064390
sub_02064390: ; 0x02064390
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205DF98
	add r6, r0, #0
	add r0, r5, #0
	add r4, r6, #0
	bl sub_02062FDC
	cmp r0, #0
	bne _020643E2
	add r0, r5, #0
	bl sub_02063008
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063018
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062C00
	add r1, r4, #0
	add r2, r6, #0
	add r7, r0, #0
	bl sub_02054F94
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063020
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063040
	add r2, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02054F94
	add r4, r0, #0
_020643E2:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02062BF0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062BE0
	add r0, r4, #0
	bl sub_0205DF8C
	cmp r0, #1
	bne _0206440A
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_020628BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206440A:
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_020628C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02064390

	thumb_func_start sub_02064418
sub_02064418: ; 0x02064418
	cmp r0, #3
	bhi _0206444E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02064428: ; jump table
	.short _02064430 - _02064428 - 2 ; case 0
	.short _02064438 - _02064428 - 2 ; case 1
	.short _02064440 - _02064428 - 2 ; case 2
	.short _02064448 - _02064428 - 2 ; case 3
_02064430:
	ldr r0, [r1, #8]
	sub r0, r0, r2
	str r0, [r1, #8]
	bx lr
_02064438:
	ldr r0, [r1, #8]
	add r0, r0, r2
	str r0, [r1, #8]
	bx lr
_02064440:
	ldr r0, [r1, #0]
	sub r0, r0, r2
	str r0, [r1, #0]
	bx lr
_02064448:
	ldr r0, [r1, #0]
	add r0, r0, r2
	str r0, [r1, #0]
_0206444E:
	bx lr
	thumb_func_end sub_02064418

	thumb_func_start sub_02064450
sub_02064450: ; 0x02064450
	lsl r3, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r3, r3, r0
	lsl r1, r1, #0x10
	str r3, [r2, #0]
	add r0, r1, r0
	str r0, [r2, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02064450

	thumb_func_start sub_02064464
sub_02064464: ; 0x02064464
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062948
	sub r0, #0x33
	cmp r0, #3
	bhi _02064478
	add r0, r4, #0
	bl sub_02062B14
_02064478:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02064464

	thumb_func_start sub_0206447C
sub_0206447C: ; 0x0206447C
	lsl r1, r0, #2
	ldr r0, _02064484 ; =0x020EE79C
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_02064484: .word 0x020EE79C
	thumb_func_end sub_0206447C

	thumb_func_start sub_02064488
sub_02064488: ; 0x02064488
	cmp r0, r2
	ble _02064490
	mov r0, #2
	bx lr
_02064490:
	cmp r0, r2
	bge _02064498
	mov r0, #3
	bx lr
_02064498:
	cmp r1, r3
	bgt _020644A0
	mov r0, #1
	bx lr
_020644A0:
	mov r0, #0
	bx lr
	thumb_func_end sub_02064488

	thumb_func_start sub_020644A4
sub_020644A4: ; 0x020644A4
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #4
	str r1, [sp]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	ldr r3, [r4, #8]
	bl sub_02054FBC
	add r1, sp, #4
	ldrb r1, [r1]
	cmp r1, #0
	bne _020644C6
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_020644C6:
	str r0, [r4, #4]
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020644A4

	thumb_func_start sub_020644D0
sub_020644D0: ; 0x020644D0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r4, r2, #0
	ldr r1, [r5, #4]
	ldr r2, [r5, #0]
	ldr r3, [r5, #8]
	bl sub_02054FBC
	add r1, sp, #4
	ldrb r1, [r1]
	cmp r1, #0
	bne _020644F4
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020644F4:
	cmp r1, #2
	bne _02064502
	cmp r4, #0
	bne _02064502
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02064502:
	str r0, [r5, #4]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020644D0

	.rodata


	.global Unk_020EE720
Unk_020EE720: ; 0x020EE720
	.incbin "incbin/arm9_rodata.bin", 0x9AE0, 0x9AEC - 0x9AE0

	.global Unk_020EE72C
Unk_020EE72C: ; 0x020EE72C
	.incbin "incbin/arm9_rodata.bin", 0x9AEC, 0x9AF8 - 0x9AEC

	.global Unk_020EE738
Unk_020EE738: ; 0x020EE738
	.incbin "incbin/arm9_rodata.bin", 0x9AF8, 0x9B04 - 0x9AF8

	.global Unk_020EE744
Unk_020EE744: ; 0x020EE744
	.incbin "incbin/arm9_rodata.bin", 0x9B04, 0x9B10 - 0x9B04

	.global Unk_020EE750
Unk_020EE750: ; 0x020EE750
	.incbin "incbin/arm9_rodata.bin", 0x9B10, 0x9B1C - 0x9B10

	.global Unk_020EE75C
Unk_020EE75C: ; 0x020EE75C
	.incbin "incbin/arm9_rodata.bin", 0x9B1C, 0x9B2C - 0x9B1C

	.global Unk_020EE76C
Unk_020EE76C: ; 0x020EE76C
	.incbin "incbin/arm9_rodata.bin", 0x9B2C, 0x9B3C - 0x9B2C

	.global Unk_020EE77C
Unk_020EE77C: ; 0x020EE77C
	.incbin "incbin/arm9_rodata.bin", 0x9B3C, 0x9B4C - 0x9B3C

	.global Unk_020EE78C
Unk_020EE78C: ; 0x020EE78C
	.incbin "incbin/arm9_rodata.bin", 0x9B4C, 0x9B5C - 0x9B4C

	.global Unk_020EE79C
Unk_020EE79C: ; 0x020EE79C
	.incbin "incbin/arm9_rodata.bin", 0x9B5C, 0x10

