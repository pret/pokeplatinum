	.include "macros/function.inc"
	.include "include/unk_0200A328.inc"

	

	.text


	thumb_func_start sub_0200A328
sub_0200A328: ; 0x0200A328
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A334
	bl sub_02022974
_0200A334:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A342
	bl sub_02022974
_0200A342:
	add r0, r4, #0
	bl sub_02009E1C
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_0201EA24
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A328

	thumb_func_start sub_0200A368
sub_0200A368: ; 0x0200A368
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A372
	bl sub_02022974
_0200A372:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A39A
	add r4, r6, #0
_0200A37C:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A390
	bl sub_0200A328
	cmp r0, #0
	bne _0200A390
	bl sub_02022974
_0200A390:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A37C
_0200A39A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A368

	thumb_func_start sub_0200A39C
sub_0200A39C: ; 0x0200A39C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A3A8
	bl sub_02022974
_0200A3A8:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A3B6
	bl sub_02022974
_0200A3B6:
	add r0, r4, #0
	bl sub_02009E1C
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_0201EA7C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A39C

	thumb_func_start sub_0200A3DC
sub_0200A3DC: ; 0x0200A3DC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A3E8
	bl sub_02022974
_0200A3E8:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A3F6
	bl sub_02022974
_0200A3F6:
	add r0, r4, #0
	bl sub_02009E1C
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_0201EA24
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A3DC

	thumb_func_start sub_0200A41C
sub_0200A41C: ; 0x0200A41C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A426
	bl sub_02022974
_0200A426:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A44E
	add r4, r6, #0
_0200A430:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A444
	bl sub_0200A3DC
	cmp r0, #0
	bne _0200A444
	bl sub_02022974
_0200A444:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A430
_0200A44E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A41C

	thumb_func_start sub_0200A450
sub_0200A450: ; 0x0200A450
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A45C
	bl sub_02022974
_0200A45C:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A46A
	bl sub_02022974
_0200A46A:
	add r0, r4, #0
	bl sub_02009E1C
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_0201EA7C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A450

	thumb_func_start sub_0200A490
sub_0200A490: ; 0x0200A490
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _0200A49E
	bl sub_02022974
_0200A49E:
	cmp r5, #0
	bne _0200A4A6
	bl sub_02022974
_0200A4A6:
	add r0, r4, #0
	bl sub_02009E08
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02009E1C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0201EB08
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A490

	thumb_func_start sub_0200A4C0
sub_0200A4C0: ; 0x0200A4C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _0200A4CA
	bl sub_02022974
_0200A4CA:
	add r0, r5, #0
	bl sub_02009E08
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02009E1C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0201EB08
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A4C0

	thumb_func_start sub_0200A4E4
sub_0200A4E4: ; 0x0200A4E4
	push {r4, lr}
	add r4, r0, #0
	bne _0200A4EE
	bl sub_02022974
_0200A4EE:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A4FC
	bl sub_02022974
_0200A4FC:
	add r0, r4, #0
	bl sub_02009E08
	bl sub_0201EB50
	pop {r4, pc}
	thumb_func_end sub_0200A4E4

	thumb_func_start sub_0200A508
sub_0200A508: ; 0x0200A508
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A512
	bl sub_02022974
_0200A512:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A532
	add r4, r6, #0
_0200A51C:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A528
	bl sub_0200A4E4
_0200A528:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A51C
_0200A532:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A508

	thumb_func_start sub_0200A534
sub_0200A534: ; 0x0200A534
	push {r4, lr}
	add r4, r0, #0
	bne _0200A53E
	bl sub_02022974
_0200A53E:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A54C
	bl sub_02022974
_0200A54C:
	add r0, r4, #0
	bl sub_02009E08
	bl sub_0201EBDC
	pop {r4, pc}
	thumb_func_end sub_0200A534

	thumb_func_start sub_0200A558
sub_0200A558: ; 0x0200A558
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _0200A566
	bl sub_02022974
_0200A566:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A574
	bl sub_02022974
_0200A574:
	cmp r5, #0
	bne _0200A57C
	bl sub_02022974
_0200A57C:
	add r0, r5, #0
	bl sub_02009EAC
	cmp r0, #2
	beq _0200A58A
	bl sub_02022974
_0200A58A:
	add r0, r4, #0
	bl sub_02009E08
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02009E4C
	add r1, r0, #0
	ldr r1, [r1, #0xc]
	add r0, r4, #0
	ldr r1, [r1, #0]
	bl sub_0201EC00
	cmp r0, #0
	bne _0200A5B2
	add r0, r4, #0
	bl sub_0201EBDC
	bl sub_0201EC84
_0200A5B2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200A558

	thumb_func_start sub_0200A5B4
sub_0200A5B4: ; 0x0200A5B4
	push {r4, lr}
	add r4, r0, #0
	bne _0200A5BE
	bl sub_02022974
_0200A5BE:
	add r0, r4, #0
	bl sub_0201ED1C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200A5B4

	thumb_func_start sub_0200A5C8
sub_0200A5C8: ; 0x0200A5C8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A5D4
	bl sub_02022974
_0200A5D4:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #1
	beq _0200A5E2
	bl sub_02022974
_0200A5E2:
	add r0, r4, #0
	bl sub_02009E34
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02009EE8
	str r0, [sp, #8]
	add r0, sp, #0
	bl sub_0201F90C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A5C8

	thumb_func_start sub_0200A60C
sub_0200A60C: ; 0x0200A60C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A616
	bl sub_02022974
_0200A616:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A63E
	add r4, r6, #0
_0200A620:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A634
	bl sub_0200A5C8
	cmp r0, #0
	bne _0200A634
	bl sub_02022974
_0200A634:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A620
_0200A63E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A60C

	thumb_func_start sub_0200A640
sub_0200A640: ; 0x0200A640
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A64C
	bl sub_02022974
_0200A64C:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #1
	beq _0200A65A
	bl sub_02022974
_0200A65A:
	add r0, r4, #0
	bl sub_02009E34
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02009EE8
	str r0, [sp, #8]
	add r0, sp, #0
	bl sub_0201F950
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A640

	thumb_func_start sub_0200A684
sub_0200A684: ; 0x0200A684
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A68E
	bl sub_02022974
_0200A68E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A6B6
	add r4, r6, #0
_0200A698:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A6AC
	bl sub_0200A640
	cmp r0, #0
	bne _0200A6AC
	bl sub_02022974
_0200A6AC:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A698
_0200A6B6:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A684

	thumb_func_start sub_0200A6B8
sub_0200A6B8: ; 0x0200A6B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _0200A6C2
	bl sub_02022974
_0200A6C2:
	add r0, r5, #0
	bl sub_02009E08
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02009E34
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0201F990
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A6B8

	thumb_func_start sub_0200A6DC
sub_0200A6DC: ; 0x0200A6DC
	push {r4, lr}
	add r4, r0, #0
	bne _0200A6E6
	bl sub_02022974
_0200A6E6:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #1
	beq _0200A6F4
	bl sub_02022974
_0200A6F4:
	add r0, r4, #0
	bl sub_02009E08
	bl sub_0201F9F0
	pop {r4, pc}
	thumb_func_end sub_0200A6DC

	thumb_func_start sub_0200A700
sub_0200A700: ; 0x0200A700
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A70A
	bl sub_02022974
_0200A70A:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A72A
	add r4, r6, #0
_0200A714:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A720
	bl sub_0200A6DC
_0200A720:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A714
_0200A72A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A700

	thumb_func_start sub_0200A72C
sub_0200A72C: ; 0x0200A72C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A73A
	bl sub_02022974
_0200A73A:
	add r0, r5, #0
	bl sub_02009EAC
	cmp r0, #1
	beq _0200A748
	bl sub_02022974
_0200A748:
	add r0, r5, #0
	bl sub_02009E08
	cmp r4, #0
	beq _0200A75A
	add r1, r4, #0
	bl sub_0201FA80
	pop {r3, r4, r5, pc}
_0200A75A:
	bl sub_0201FA58
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200A72C

	thumb_func_start sub_0200A760
sub_0200A760: ; 0x0200A760
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_0200A72C
	add r1, r4, #0
	bl NNS_G2dGetImagePaletteLocation
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0200A780
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	asr r0, r1, #5
_0200A780:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200A760