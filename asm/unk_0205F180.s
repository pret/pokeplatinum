	.include "macros/function.inc"
	.include "include/unk_0205F180.inc"

	

	.text


	thumb_func_start sub_0205F180
sub_0205F180: ; 0x0205F180
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0
	add r4, r2, #0
	mvn r1, r1
	add r5, r0, #0
	add r6, r3, #0
	cmp r4, r1
	bne _0205F19E
	add r2, sp, #8
	ldrh r2, [r2, #0x10]
	add r1, r6, #0
	bl sub_02061348
	add r4, r0, #0
_0205F19E:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02060324
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205F22C
	cmp r0, #0
	beq _0205F222
	add r3, sp, #8
	ldrh r3, [r3, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205F350
	add r0, r5, #0
	bl ov5_021DFB5C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205F62C
	cmp r0, #1
	bne _0205F1DA
	add r0, r5, #0
	bl ov5_021E0EEC
	pop {r3, r4, r5, r6, r7, pc}
_0205F1DA:
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #0
	bne _0205F204
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205FC48
	cmp r0, #0
	beq _0205F1F8
	add r0, r5, #0
	bl ov5_021E0EEC
	b _0205F204
_0205F1F8:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _0205F204
	add r0, r5, #0
	bl ov5_021E0E94
_0205F204:
	add r0, sp, #8
	ldrh r0, [r0, #0x10]
	add r1, r7, #0
	add r2, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_0205FB88
	add r0, r5, #0
	bl sub_0205F378
	add r0, r5, #0
	bl sub_0205F3B8
_0205F222:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205F180

	thumb_func_start sub_0205F224
sub_0205F224: ; 0x0205F224
	ldr r3, _0205F228 ; =sub_0205F22C
	bx r3
	; .align 2, 0
_0205F228: .word sub_0205F22C
	thumb_func_end sub_0205F224

	thumb_func_start sub_0205F22C
sub_0205F22C: ; 0x0205F22C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205F248
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0205F248:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0205F256
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0205F256:
	add r0, r4, #0
	bl sub_02062BB8
	bl sub_020613D8
	cmp r0, #1
	bne _0205F34A
	add r0, r5, #0
	bl sub_0205F158
	cmp r0, #1
	bne _0205F318
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020611FC
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	mov r0, #0x80
	bic r1, r0
	beq _0205F324
	add r0, r5, #0
	bl sub_0205F108
	cmp r0, #2
	bne _0205F324
	add r0, r4, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02063020
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02063030
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02063040
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r2, sp, #0x20
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	add r3, sp, #0x1c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	str r0, [sp]
	add r0, r5, #0
	bl sub_02061674
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	bl ov9_02250FBC
	cmp r0, #0
	bne _0205F324
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	bl ov9_02250FD8
	cmp r0, #1
	bne _0205F324
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	bl ov9_02251000
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020611FC
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	bl ov9_02251000
	b _0205F324
_0205F318:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02060B7C
	str r0, [sp, #8]
_0205F324:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0205F330
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0205F330:
	cmp r0, #0x20
	bne _0205F344
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	bne _0205F344
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0205F344:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0205F34A:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0205F22C

	thumb_func_start sub_0205F350
sub_0205F350: ; 0x0205F350
	push {r4, r5, r6, lr}
	add r6, r3, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02061310
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0206132C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EBEC
	add r0, r5, #0
	bl sub_0205F054
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205F350

	thumb_func_start sub_0205F378
sub_0205F378: ; 0x0205F378
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F060
	cmp r0, #1
	bne _0205F3B4
	add r0, r4, #0
	bl sub_0205EB0C
	cmp r0, #1
	bne _0205F3B4
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EF6C
	add r0, r4, #0
	bl sub_0205F008
	cmp r0, #1
	bne _0205F3B4
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EFF0
	add r0, r4, #0
	bl sub_0205EB3C
	mov r1, #0
	bl sub_02062EE0
_0205F3B4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205F378

	thumb_func_start sub_0205F3B8
sub_0205F3B8: ; 0x0205F3B8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0205EB0C
	cmp r0, #1
	bne _0205F47A
	add r0, r4, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	bl sub_02062BB8
	bl sub_0206587C
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0205F3EC
	add r6, r5, #0
	b _0205F3F6
_0205F3EC:
	add r0, r4, #0
	bl sub_02064238
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_0205F3F6:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020640D4
	cmp r0, #1
	beq _0205F40C
	add r0, r5, #0
	bl sub_0205DFAC
	cmp r0, #1
	bne _0205F412
_0205F40C:
	ldr r0, _0205F47C ; =0x00000549
	bl sub_02005748
_0205F412:
	add r0, r5, #0
	bl sub_0205DE5C
	cmp r0, #1
	bne _0205F422
	ldr r0, _0205F480 ; =0x00000641
	bl sub_02005748
_0205F422:
	add r0, r5, #0
	bl sub_0205DB78
	cmp r0, #1
	bne _0205F432
	ldr r0, _0205F484 ; =0x00000642
	bl sub_02005748
_0205F432:
	add r0, r5, #0
	bl sub_0205DB6C
	add r0, r5, #0
	bl sub_0205DCE0
	cmp r0, #1
	bne _0205F452
	add r0, r5, #0
	bl sub_0205DCF0
	cmp r0, #1
	beq _0205F452
	ldr r0, _0205F488 ; =0x00000655
	bl sub_02005748
_0205F452:
	add r0, r4, #0
	bl sub_02062BB8
	bl sub_020613D8
	cmp r0, #0
	bne _0205F47A
	add r0, r5, #0
	bl sub_0205DAD4
	cmp r0, #1
	beq _0205F474
	add r0, r6, #0
	bl sub_0205DAD4
	cmp r0, #1
	bne _0205F47A
_0205F474:
	ldr r0, _0205F48C ; =0x00000653
	bl sub_02005748
_0205F47A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205F47C: .word 0x00000549
_0205F480: .word 0x00000641
_0205F484: .word 0x00000642
_0205F488: .word 0x00000655
_0205F48C: .word 0x00000653
	thumb_func_end sub_0205F3B8

	thumb_func_start sub_0205F490
sub_0205F490: ; 0x0205F490
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205EB0C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205EB14
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205EB3C
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_0205F644
	cmp r0, #0
	beq _0205F4CE
	cmp r0, #5
	beq _0205F4CE
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F4CE:
	add r0, r7, #0
	bl sub_020655F4
	cmp r0, #0
	bne _0205F51A
	cmp r6, #0
	beq _0205F568
	cmp r6, #1
	beq _0205F4E6
	cmp r6, #2
	beq _0205F510
	pop {r3, r4, r5, r6, r7, pc}
_0205F4E6:
	add r0, r7, #0
	bl sub_02062BB8
	bl sub_020613D8
	cmp r0, #1
	beq _0205F568
	cmp r4, #0
	beq _0205F4FC
	cmp r4, #3
	bne _0205F506
_0205F4FC:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F506:
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F510:
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F51A:
	add r0, r7, #0
	bl sub_02065684
	cmp r0, #1
	bne _0205F568
	cmp r6, #0
	beq _0205F568
	cmp r6, #1
	beq _0205F532
	cmp r6, #2
	beq _0205F54E
	pop {r3, r4, r5, r6, r7, pc}
_0205F532:
	cmp r4, #0
	beq _0205F568
	cmp r4, #3
	bne _0205F544
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F544:
	add r0, r5, #0
	mov r1, #3
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F54E:
	cmp r4, #0
	beq _0205F568
	cmp r4, #3
	bne _0205F560
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
_0205F560:
	add r0, r5, #0
	mov r1, #3
	bl sub_0205EB10
_0205F568:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205F490

	thumb_func_start sub_0205F56C
sub_0205F56C: ; 0x0205F56C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EB10
	add r0, r4, #0
	bl sub_0205EBC0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205F56C

	thumb_func_start sub_0205F588
sub_0205F588: ; 0x0205F588
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205EB0C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205EB14
	cmp r4, #0
	bne _0205F5A0
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205F5A0:
	cmp r4, #2
	bne _0205F5A8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205F5A8:
	cmp r4, #1
	bne _0205F5DE
	cmp r0, #0
	beq _0205F5B4
	cmp r0, #3
	bne _0205F5B8
_0205F5B4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205F5B8:
	add r0, r5, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205F5CC
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205F5CC:
	add r0, r4, #0
	bl sub_02062BB8
	bl sub_020613D8
	cmp r0, #1
	bne _0205F5DE
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205F5DE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205F588

	thumb_func_start sub_0205F5E4
sub_0205F5E4: ; 0x0205F5E4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EB10
	add r0, r4, #0
	bl sub_0205EB3C
	add r4, r0, #0
	add r1, r5, #0
	bl sub_02062974
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02064208
	add r0, r4, #0
	bl sub_020656DC
	add r0, r5, #0
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02065638
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205F5E4

	thumb_func_start sub_0205F62C
sub_0205F62C: ; 0x0205F62C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205F644
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0205F6A4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205F62C

	thumb_func_start sub_0205F644
sub_0205F644: ; 0x0205F644
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	bl sub_0205EB3C
	bl sub_02062BE8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02061630
	cmp r0, #1
	bne _0205F668
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0205F668:
	add r0, r5, #0
	bl sub_0205EF84
	cmp r0, #1
	bne _0205F676
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205F676:
	lsl r0, r7, #0x18
	ldr r5, _0205F69C ; =0x020EDB84
	lsr r6, r0, #0x18
_0205F67C:
	ldr r1, [r5, #0]
	add r0, r6, #0
	blx r1
	cmp r0, #1
	bne _0205F68E
	ldr r0, _0205F6A0 ; =0x020EDB88
	lsl r1, r4, #3
	ldr r0, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0205F68E:
	add r5, #8
	ldr r0, [r5, #0]
	add r4, r4, #1
	cmp r0, #0
	bne _0205F67C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205F69C: .word 0x020EDB84
_0205F6A0: .word 0x020EDB88
	thumb_func_end sub_0205F644

	thumb_func_start sub_0205F6A4
sub_0205F6A4: ; 0x0205F6A4
	push {r3, lr}
	add r3, r1, #0
	add r1, r2, #0
	ldr r2, _0205F6C0 ; =0x020EDAEC
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	bne _0205F6BA
	mov r0, #1
	pop {r3, pc}
_0205F6BA:
	mov r0, #0
	pop {r3, pc}
	nop
_0205F6C0: .word 0x020EDAEC
	thumb_func_end sub_0205F6A4

	thumb_func_start sub_0205F6C4
sub_0205F6C4: ; 0x0205F6C4
	push {r3, lr}
	bl sub_0205FA6C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205F6C4

	thumb_func_start sub_0205F6D0
sub_0205F6D0: ; 0x0205F6D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_0206299C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0205FAB0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02060B7C
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	ldr r0, [sp]
	cmp r0, #0
	beq _0205F782
	add r0, r5, #0
	bl sub_0205FA6C
	cmp r7, #1
	beq _0205F722
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF6C
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205F722:
	add r0, r6, #0
	bl sub_0206447C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02060B7C
	cmp r0, #0
	beq _0205F73C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205F73C:
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020628BC
	add r0, r6, #0
	mov r1, #8
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #3
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF6C
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	mov r1, #0
	mvn r1, r1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205F782:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0205FB10
	cmp r0, #0
	bne _0205F7EA
	add r0, r5, #0
	bl sub_0205FA6C
	add r0, r6, #0
	bl sub_0206447C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02060B7C
	cmp r0, #0
	beq _0205F7AE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205F7AE:
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020628BC
	add r0, r6, #0
	mov r1, #8
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #3
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF6C
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	mov r1, #0
	mvn r1, r1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	b _0205F7FC
_0205F7EA:
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020628BC
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0205FB40
_0205F7FC:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205F6D0

	thumb_func_start sub_0205F808
sub_0205F808: ; 0x0205F808
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl sub_0205EB3C
	add r6, r0, #0
	bl sub_0206299C
	add r4, r0, #0
	ldr r0, _0205F958 ; =0x00000654
	bl sub_02005748
	cmp r4, #0
	bne _0205F8C2
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #1
	bne _0205F85C
	add r0, r5, #0
	bl sub_0205EBB8
	cmp r0, #3
	blt _0205F85C
	cmp r7, #0
	bne _0205F85C
	add r0, r4, #0
	mov r1, #0x15
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #6
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205F85C:
	add r0, r4, #0
	bl sub_0206447C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02060B7C
	cmp r0, #0
	beq _0205F876
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205F876:
	mov r1, #6
	add r0, r6, #0
	lsl r1, r1, #6
	bl sub_020628BC
	add r0, r4, #0
	mov r1, #8
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #3
	bl sub_02060B64
	add r0, r5, #0
	bl sub_0205EBC0
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #1
	bl sub_0205F01C
	mov r1, #0
	mvn r1, r1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205F8C2:
	cmp r4, #1
	bne _0205F954
	add r0, r5, #0
	bl sub_0205F034
	cmp r0, #0
	bne _0205F90E
	add r0, r4, #0
	mov r1, #0x15
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #6
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	add r0, r5, #0
	bl sub_0205EC88
	cmp r0, #1
	bne _0205F8FE
	add r0, r5, #0
	mov r1, #3
	bl sub_0205EBBC
_0205F8FE:
	mov r1, #0
	mvn r1, r1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205F90E:
	mov r1, #6
	add r0, r6, #0
	lsl r1, r1, #6
	bl sub_020628BC
	add r0, r4, #0
	mov r1, #8
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #3
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #1
	bl sub_0205F01C
	mov r1, #0
	mvn r1, r1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205F954:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205F958: .word 0x00000654
	thumb_func_end sub_0205F808

	thumb_func_start sub_0205F95C
sub_0205F95C: ; 0x0205F95C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_0206299C
	add r0, r5, #0
	bl sub_0205EC88
	cmp r0, #1
	bne _0205F988
	ldr r0, _0205F9A8 ; =0x00000656
	bl sub_02005748
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x5f
	mov r3, #2
	bl sub_02060B64
	b _0205F994
_0205F988:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x5d
	mov r3, #3
	bl sub_02060B64
_0205F994:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	add r0, r5, #0
	mov r1, #1
	bl sub_0205F074
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205F9A8: .word 0x00000656
	thumb_func_end sub_0205F95C

	thumb_func_start sub_0205F9AC
sub_0205F9AC: ; 0x0205F9AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_0206299C
	add r0, r5, #0
	bl sub_0205EC88
	cmp r0, #1
	bne _0205F9D8
	ldr r0, _0205F9F8 ; =0x00000656
	bl sub_02005748
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x5e
	mov r3, #2
	bl sub_02060B64
	b _0205F9E4
_0205F9D8:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x5c
	mov r3, #2
	bl sub_02060B64
_0205F9E4:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	add r0, r5, #0
	mov r1, #1
	bl sub_0205F074
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205F9F8: .word 0x00000656
	thumb_func_end sub_0205F9AC

	thumb_func_start sub_0205F9FC
sub_0205F9FC: ; 0x0205F9FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205EB3C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_02060B7C
	cmp r0, #0
	bne _0205FA3C
	mov r0, #1
	mov r1, #0x14
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #6
	bl sub_02060B64
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #3
	bl sub_0205EBBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205FA3C:
	mov r0, #1
	add r1, r0, #0
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r5, #0
	bl sub_0205EBC0
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EF98
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205F9FC

	thumb_func_start sub_0205FA6C
sub_0205FA6C: ; 0x0205FA6C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205EF58
	cmp r0, #1
	bne _0205FAAE
	add r0, r4, #0
	bl sub_0205EB3C
	mov r1, #6
	lsl r1, r1, #6
	bl sub_020628C4
	add r0, r4, #0
	bl sub_0205F08C
	cmp r0, #0
	bne _0205FA96
	add r0, r4, #0
	bl sub_0205EBC0
_0205FA96:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EF40
	add r0, r4, #0
	mov r1, #0
	bl sub_0205F074
	add r0, r4, #0
	mov r1, #0
	bl sub_0205F01C
_0205FAAE:
	pop {r4, pc}
	thumb_func_end sub_0205FA6C

	thumb_func_start sub_0205FAB0
sub_0205FAB0: ; 0x0205FAB0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_02062C00
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02063050
	add r4, sp, #0xc
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r2, #0
	mov r2, #1
	str r0, [r3, #0]
	add r0, r5, #0
	lsl r2, r2, #0xe
	bl sub_02064418
	add r0, r6, #0
	add r1, sp, #0
	bl sub_020644A4
	cmp r0, #0
	beq _0205FAF8
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bne _0205FAFE
_0205FAF8:
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205FAFE:
	cmp r0, r1
	ble _0205FB08
	add sp, #0x18
	mov r0, #2
	pop {r4, r5, r6, pc}
_0205FB08:
	mov r0, #1
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205FAB0

	thumb_func_start sub_0205FB10
sub_0205FB10: ; 0x0205FB10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205EBB8
	add r1, r0, #0
	cmp r4, #1
	bne _0205FB28
	sub r1, r1, #1
	bpl _0205FB34
	mov r0, #0
	pop {r3, r4, r5, pc}
_0205FB28:
	cmp r4, #2
	bne _0205FB34
	add r1, r1, #1
	cmp r1, #3
	ble _0205FB34
	mov r1, #3
_0205FB34:
	add r0, r5, #0
	bl sub_0205EBBC
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205FB10

	thumb_func_start sub_0205FB40
sub_0205FB40: ; 0x0205FB40
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	bl sub_0205EB3C
	str r0, [sp]
	add r0, r6, #0
	mov r4, #0x10
	bl sub_0205EBB8
	mov r5, #5
	cmp r0, #1
	beq _0205FB64
	cmp r0, #2
	beq _0205FB68
	cmp r0, #3
	beq _0205FB6E
	b _0205FB72
_0205FB64:
	mov r4, #0x50
	b _0205FB72
_0205FB68:
	mov r4, #0x14
	mov r5, #6
	b _0205FB72
_0205FB6E:
	mov r4, #0x14
	mov r5, #6
_0205FB72:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02065838
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r6, #0
	add r3, r5, #0
	bl sub_02060B64
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205FB40

	thumb_func_start sub_0205FB88
sub_0205FB88: ; 0x0205FB88
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #8]
	add r5, r3, #0
	bl sub_0205EB74
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205EB3C
	add r1, r0, #0
	cmp r4, #0
	beq _0205FBAE
	cmp r4, #1
	beq _0205FBC4
	cmp r4, #2
	bne _0205FBDA
_0205FBAE:
	str r5, [sp]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	ldr r3, [sp, #8]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0205FBE4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0205FBC4:
	str r5, [sp]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	ldr r3, [sp, #8]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_020602DC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0205FBDA:
	bl GF_AssertFail
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205FB88

	thumb_func_start sub_0205FBE4
sub_0205FBE4: ; 0x0205FBE4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r3, #0
	add r4, r1, #0
	add r1, r6, #0
	add r5, r0, #0
	bl sub_0205FC48
	cmp r0, #0
	beq _0205FC04
	cmp r0, #1
	beq _0205FC1A
	cmp r0, #2
	beq _0205FC30
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0205FC04:
	add r3, sp, #8
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	str r0, [sp]
	ldrh r3, [r3, #0x10]
	add r0, r5, #0
	bl sub_0205FD20
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0205FC1A:
	add r3, sp, #8
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	str r0, [sp]
	ldrh r3, [r3, #0x10]
	add r0, r5, #0
	bl sub_0205FD40
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0205FC30:
	add r3, sp, #8
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	str r0, [sp]
	ldrh r3, [r3, #0x10]
	add r0, r5, #0
	bl sub_02060258
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205FBE4

	thumb_func_start sub_0205FC48
sub_0205FC48: ; 0x0205FC48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205FCC0
	add r4, r0, #0
	bl sub_0205FC64
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205EB08
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205FC48

	thumb_func_start sub_0205FC64
sub_0205FC64: ; 0x0205FC64
	push {r3, lr}
	cmp r0, #0
	beq _0205FC74
	cmp r0, #1
	beq _0205FC78
	cmp r0, #2
	beq _0205FC7C
	b _0205FC80
_0205FC74:
	mov r0, #0
	pop {r3, pc}
_0205FC78:
	mov r0, #1
	pop {r3, pc}
_0205FC7C:
	mov r0, #2
	pop {r3, pc}
_0205FC80:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205FC64

	thumb_func_start sub_0205FC88
sub_0205FC88: ; 0x0205FC88
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r4, r2, #0
	bl sub_0205DD5C
	cmp r0, #1
	bne _0205FC9C
	mov r0, #4
	pop {r3, r4, r5, pc}
_0205FC9C:
	add r0, r5, #0
	bl sub_0205DD50
	cmp r0, #1
	bne _0205FCAA
	mov r0, #8
	pop {r3, r4, r5, pc}
_0205FCAA:
	add r0, r5, #0
	bl sub_0205DD44
	cmp r0, #1
	bne _0205FCB6
	mov r4, #0xc
_0205FCB6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205FC88

	thumb_func_start sub_0205FCBC
sub_0205FCBC: ; 0x0205FCBC
	add r0, r2, #0
	bx lr
	thumb_func_end sub_0205FCBC

	thumb_func_start sub_0205FCC0
sub_0205FCC0: ; 0x0205FCC0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	cmp r4, r1
	bne _0205FCD8
	mov r1, #0
	bl sub_0205EB08
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205FCD8:
	bl sub_0205EA78
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205F108
	cmp r0, #0
	beq _0205FCF8
	cmp r0, #1
	beq _0205FCF8
	cmp r0, #2
	beq _0205FCF8
	add r0, r5, #0
	bl sub_0205EA94
	add r6, r0, #0
_0205FCF8:
	cmp r6, r4
	beq _0205FD12
	add r0, r5, #0
	bl sub_0205EB0C
	cmp r0, #1
	beq _0205FD12
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB08
	mov r0, #2
	pop {r4, r5, r6, pc}
_0205FD12:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205FCC0

	thumb_func_start sub_0205FD20
sub_0205FD20: ; 0x0205FD20
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205FD20

	thumb_func_start sub_0205FD40
sub_0205FD40: ; 0x0205FD40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r3, [sp, #4]
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r4, [sp, #0x20]
	bl sub_0205F108
	cmp r0, #5
	bhi _0205FDB6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205FD62: ; jump table
	.short _0205FDB6 - _0205FD62 - 2 ; case 0
	.short _0205FDB6 - _0205FD62 - 2 ; case 1
	.short _0205FD6E - _0205FD62 - 2 ; case 2
	.short _0205FD80 - _0205FD62 - 2 ; case 3
	.short _0205FD92 - _0205FD62 - 2 ; case 4
	.short _0205FDA4 - _0205FD62 - 2 ; case 5
_0205FD6E:
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0205FECC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0205FD80:
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020600CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0205FD92:
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060150
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0205FDA4:
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020601D4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0205FDB6:
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0205FDC8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205FD40

	thumb_func_start sub_0205FDC8
sub_0205FDC8: ; 0x0205FDC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	bl sub_02060B7C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	beq _0205FE66
	mov r6, #4
	add r0, r4, #0
	tst r0, r6
	beq _0205FDF2
	mov r0, #0x38
	str r0, [sp, #4]
	mov r6, #3
	b _0205FEAE
_0205FDF2:
	mov r0, #0x80
	tst r0, r4
	beq _0205FE00
	mov r0, #0x75
	str r0, [sp, #4]
	mov r6, #2
	b _0205FEAE
_0205FE00:
	cmp r4, #0
	beq _0205FE20
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #8
	mov r6, #1
	tst r0, r4
	bne _0205FE16
	ldr r0, _0205FEC8 ; =0x00000601
	bl sub_02005748
_0205FE16:
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02062994
	b _0205FEAE
_0205FE20:
	add r0, r5, #0
	mov r4, #0xc
	bl sub_0205EC0C
	bl sub_0205EC40
	cmp r0, #1
	bne _0205FE42
	add r1, sp, #0x10
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_020613FC
	cmp r0, #1
	bne _0205FE42
	mov r4, #0x58
	mov r6, #5
_0205FE42:
	add r0, r7, #0
	bl sub_02062BE8
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl sub_0205FC88
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0205FEAE
_0205FE66:
	cmp r4, #0
	beq _0205FE6E
	cmp r4, #0x20
	bne _0205FE94
_0205FE6E:
	add r0, r7, #0
	mov r6, #5
	bl sub_02062BE8
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r2, #0x10
	bl sub_0205FCBC
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0205FEAE
_0205FE94:
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #8
	mov r6, #1
	tst r0, r4
	bne _0205FEA6
	ldr r0, _0205FEC8 ; =0x00000601
	bl sub_02005748
_0205FEA6:
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02062994
_0205FEAE:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205FEC8: .word 0x00000601
	thumb_func_end sub_0205FDC8

	thumb_func_start sub_0205FECC
sub_0205FECC: ; 0x0205FECC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #4]
	bl sub_020611FC
	add r6, r0, #0
	mov r0, #0x80
	add r1, r6, #0
	bic r1, r0
	beq _0205FF56
	add r0, r4, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02063020
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02063030
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02063040
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #8
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_02061674
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r7, #0
	bl ov9_02250FBC
	cmp r0, #0
	bne _0205FF56
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r7, #0
	bl ov9_02250FD8
	cmp r0, #1
	bne _0205FF56
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r7, #0
	bl ov9_02251000
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020611FC
	add r6, r0, #0
_0205FF56:
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	beq _0205FFC2
	mov r0, #0x80
	tst r0, r6
	beq _0205FF78
	add r0, r5, #0
	mov r7, #0x75
	mov r6, #2
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0205FFEE
_0205FF78:
	cmp r6, #0
	beq _0205FF90
	ldr r0, _02060008 ; =0x00000601
	mov r7, #0x1c
	mov r6, #1
	bl sub_02005748
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02062994
	b _0205FFEE
_0205FF90:
	add r0, r5, #0
	mov r7, #0xc
	mov r6, #4
	bl sub_0205EC0C
	bl sub_0205EC40
	cmp r0, #1
	bne _0205FFB4
	add r1, sp, #0x18
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_020613FC
	cmp r0, #1
	bne _0205FFB4
	mov r7, #0x58
	mov r6, #5
_0205FFB4:
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0205FFEE
_0205FFC2:
	cmp r6, #0
	beq _0205FFCA
	cmp r6, #0x20
	bne _0205FFDC
_0205FFCA:
	add r0, r5, #0
	mov r6, #5
	mov r7, #0x10
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0205FFEE
_0205FFDC:
	ldr r0, _02060008 ; =0x00000601
	mov r7, #0x1c
	mov r6, #1
	bl sub_02005748
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02062994
_0205FFEE:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02060008: .word 0x00000601
	thumb_func_end sub_0205FECC

	thumb_func_start sub_0206000C
sub_0206000C: ; 0x0206000C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r3, [sp, #0x34]
	add r5, r0, #0
	str r1, [sp]
	add r4, r2, #0
	ldr r7, [sp, #0x30]
	str r3, [sp, #0x34]
	bl sub_020611FC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	beq _0206007E
	cmp r6, #0
	beq _0206004C
	lsl r0, r4, #2
	str r0, [sp, #8]
	ldr r4, [r7, r0]
	ldr r0, _020600C8 ; =0x00000601
	mov r6, #1
	bl sub_02005748
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #8]
	ldr r0, [sp]
	ldr r1, [r2, r1]
	bl sub_02062994
	b _020600B6
_0206004C:
	ldr r0, [sp, #0x24]
	lsl r7, r4, #2
	ldr r4, [r0, r7]
	add r0, r5, #0
	mov r6, #4
	bl sub_0205EC0C
	bl sub_0205EC40
	cmp r0, #1
	bne _02060076
	add r1, sp, #0x10
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_020613FC
	cmp r0, #1
	bne _02060076
	ldr r0, [sp, #0x28]
	mov r6, #5
	ldr r4, [r0, r7]
_02060076:
	add r0, r5, #0
	bl sub_020615C8
	b _020600B6
_0206007E:
	cmp r6, #0
	beq _02060086
	cmp r6, #0x20
	bne _0206009C
_02060086:
	ldr r1, [sp, #0x2c]
	lsl r0, r4, #2
	ldr r4, [r1, r0]
	add r0, r5, #0
	mov r6, #4
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _020600B6
_0206009C:
	lsl r0, r4, #2
	str r0, [sp, #4]
	ldr r4, [r7, r0]
	ldr r0, _020600C8 ; =0x00000601
	mov r6, #1
	bl sub_02005748
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r2, r1]
	bl sub_02062994
_020600B6:
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020600C8: .word 0x00000601
	thumb_func_end sub_0206000C

	thumb_func_start sub_020600CC
sub_020600CC: ; 0x020600CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	ldr r5, _0206013C ; =0x020EDACC
	add r4, sp, #0x68
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldmia r5!, {r0, r1}
	add r7, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060140 ; =0x020EDABC
	add r4, sp, #0x58
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x20]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060144 ; =0x020EDAAC
	add r4, sp, #0x48
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x24]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060148 ; =0x020EDA9C
	add r4, sp, #0x38
	ldmia r5!, {r0, r1}
	mov ip, r4
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _0206014C ; =0x020EDA8C
	add r4, sp, #0x28
	add r6, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, sp, #0x80
	ldrh r0, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	mov r0, ip
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x14]
	bl sub_0206000C
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206013C: .word 0x020EDACC
_02060140: .word 0x020EDABC
_02060144: .word 0x020EDAAC
_02060148: .word 0x020EDA9C
_0206014C: .word 0x020EDA8C
	thumb_func_end sub_020600CC

	thumb_func_start sub_02060150
sub_02060150: ; 0x02060150
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	ldr r5, _020601C0 ; =0x020EDA7C
	add r4, sp, #0x68
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldmia r5!, {r0, r1}
	add r7, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _020601C4 ; =0x020EDA5C
	add r4, sp, #0x58
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x20]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _020601C8 ; =0x020ED9EC
	add r4, sp, #0x48
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x24]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _020601CC ; =0x020ED9CC
	add r4, sp, #0x38
	ldmia r5!, {r0, r1}
	mov ip, r4
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _020601D0 ; =0x020EDADC
	add r4, sp, #0x28
	add r6, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, sp, #0x80
	ldrh r0, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	mov r0, ip
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x14]
	bl sub_0206000C
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020601C0: .word 0x020EDA7C
_020601C4: .word 0x020EDA5C
_020601C8: .word 0x020ED9EC
_020601CC: .word 0x020ED9CC
_020601D0: .word 0x020EDADC
	thumb_func_end sub_02060150

	thumb_func_start sub_020601D4
sub_020601D4: ; 0x020601D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	ldr r5, _02060244 ; =0x020EDA2C
	add r4, sp, #0x68
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldmia r5!, {r0, r1}
	add r7, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060248 ; =0x020EDA1C
	add r4, sp, #0x58
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x20]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _0206024C ; =0x020EDA6C
	add r4, sp, #0x48
	ldmia r5!, {r0, r1}
	str r4, [sp, #0x24]
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060250 ; =0x020ED9DC
	add r4, sp, #0x38
	ldmia r5!, {r0, r1}
	mov ip, r4
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _02060254 ; =0x020EDA3C
	add r4, sp, #0x28
	add r6, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, sp, #0x80
	ldrh r0, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	mov r0, ip
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x14]
	bl sub_0206000C
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02060244: .word 0x020EDA2C
_02060248: .word 0x020EDA1C
_0206024C: .word 0x020EDA6C
_02060250: .word 0x020ED9DC
_02060254: .word 0x020EDA3C
	thumb_func_end sub_020601D4

	thumb_func_start sub_02060258
sub_02060258: ; 0x02060258
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r2, #0
	add r7, r0, #0
	add r6, r1, #0
	add r4, r5, #0
	bl sub_0205F108
	cmp r0, #3
	beq _02060276
	cmp r0, #4
	beq _0206028A
	cmp r0, #5
	beq _0206029E
	b _020602B0
_02060276:
	ldr r4, _020602D0 ; =0x020EDA0C
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r5, #2
	ldr r4, [r2, r0]
	b _020602B0
_0206028A:
	ldr r4, _020602D4 ; =0x020EDA4C
	add r3, sp, #0x10
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r5, #2
	ldr r4, [r2, r0]
	b _020602B0
_0206029E:
	ldr r4, _020602D8 ; =0x020ED9FC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r5, #2
	ldr r4, [r2, r0]
_020602B0:
	add r0, r4, #0
	mov r1, #0x28
	bl sub_02065838
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02062994
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020602D0: .word 0x020EDA0C
_020602D4: .word 0x020EDA4C
_020602D8: .word 0x020ED9FC
	thumb_func_end sub_02060258

	thumb_func_start sub_020602DC
sub_020602DC: ; 0x020602DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0205EC88
	cmp r0, #1
	add r0, sp, #0x10
	bne _0206030A
	ldrh r1, [r0, #0x10]
	add r2, r6, #0
	add r3, r7, #0
	str r1, [sp]
	ldrh r0, [r0, #0x14]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0206078C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206030A:
	ldrh r1, [r0, #0x10]
	add r2, r6, #0
	add r3, r7, #0
	str r1, [sp]
	ldrh r0, [r0, #0x14]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02060420
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020602DC

	thumb_func_start sub_02060324
sub_02060324: ; 0x02060324
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_0205EB74
	cmp r0, #1
	bne _02060384
	mov r0, #2
	tst r0, r5
	beq _02060384
	add r0, r4, #0
	bl sub_0205EB3C
	bl sub_02062BE8
	add r5, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DD90
	cmp r0, #0
	bne _02060384
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DD9C
	cmp r0, #0
	bne _02060384
	add r0, r4, #0
	mov r5, #1
	bl sub_0205EC88
	cmp r0, #1
	bne _0206036A
	mov r5, #0
_0206036A:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205EC78
	cmp r5, #0
	bne _0206037E
	ldr r0, _02060388 ; =0x0000061C
	bl sub_02005748
	pop {r3, r4, r5, pc}
_0206037E:
	ldr r0, _0206038C ; =0x00000619
	bl sub_02005748
_02060384:
	pop {r3, r4, r5, pc}
	nop
_02060388: .word 0x0000061C
_0206038C: .word 0x00000619
	thumb_func_end sub_02060324

	thumb_func_start sub_02060390
sub_02060390: ; 0x02060390
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0x4c
	bl sub_0205EBB8
	cmp r0, #1
	beq _020603A8
	cmp r0, #2
	beq _020603AC
	cmp r0, #3
	beq _020603B0
	b _020603B2
_020603A8:
	mov r4, #0x10
	b _020603B2
_020603AC:
	mov r4, #0x50
	b _020603B2
_020603B0:
	mov r4, #0x14
_020603B2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065838
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02060390

	thumb_func_start sub_020603BC
sub_020603BC: ; 0x020603BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #1
	mov r2, #3
	bl sub_0205EBCC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205EFB0
	cmp r0, #0
	bne _020603E0
	cmp r4, #2
	blt _020603E0
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF98
_020603E0:
	cmp r4, #3
	bne _020603E8
	mov r0, #1
	pop {r3, r4, r5, pc}
_020603E8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020603BC

	thumb_func_start sub_020603EC
sub_020603EC: ; 0x020603EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #1
	bl sub_0205EBB8
	sub r4, r0, #1
	bpl _020603FE
	mov r4, #0
	add r6, r4, #0
_020603FE:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EBBC
	add r0, r5, #0
	bl sub_0205EFB0
	cmp r0, #1
	bne _0206041C
	cmp r4, #0
	bne _0206041C
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EF98
_0206041C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020603EC

	thumb_func_start sub_02060420
sub_02060420: ; 0x02060420
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r1, r3, #0
	add r6, r0, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x20]
	ldr r4, [sp, #0x24]
	bl sub_02060494
	cmp r0, #3
	bhi _02060490
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02060444: ; jump table
	.short _0206044C - _02060444 - 2 ; case 0
	.short _0206045E - _02060444 - 2 ; case 1
	.short _02060470 - _02060444 - 2 ; case 2
	.short _02060482 - _02060444 - 2 ; case 3
_0206044C:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_02060548
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206045E:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_02060570
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02060470:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_02060688
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02060482:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_020606C8
_02060490:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060420

	thumb_func_start sub_02060494
sub_02060494: ; 0x02060494
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020604E4
	add r4, r0, #0
	bl sub_020604B0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205EB08
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02060494

	thumb_func_start sub_020604B0
sub_020604B0: ; 0x020604B0
	push {r3, lr}
	cmp r0, #3
	bhi _020604DA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020604C2: ; jump table
	.short _020604CA - _020604C2 - 2 ; case 0
	.short _020604CE - _020604C2 - 2 ; case 1
	.short _020604D2 - _020604C2 - 2 ; case 2
	.short _020604D6 - _020604C2 - 2 ; case 3
_020604CA:
	mov r0, #0
	pop {r3, pc}
_020604CE:
	mov r0, #1
	pop {r3, pc}
_020604D2:
	mov r0, #2
	pop {r3, pc}
_020604D6:
	mov r0, #1
	pop {r3, pc}
_020604DA:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020604B0

	thumb_func_start sub_020604E4
sub_020604E4: ; 0x020604E4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	cmp r4, r1
	bne _02060512
	bl sub_0205EFB0
	cmp r0, #1
	bne _02060506
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #3
	pop {r4, r5, r6, pc}
_02060506:
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	mov r0, #0
	pop {r4, r5, r6, pc}
_02060512:
	bl sub_0205EA78
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EF98
	cmp r6, r4
	beq _0206053A
	add r0, r5, #0
	bl sub_0205EB0C
	cmp r0, #1
	beq _0206053A
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB08
	mov r0, #2
	pop {r4, r5, r6, pc}
_0206053A:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020604E4

	thumb_func_start sub_02060548
sub_02060548: ; 0x02060548
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r5, #0
	bl sub_0205EBC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02060548

	thumb_func_start sub_02060570
sub_02060570: ; 0x02060570
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	bl sub_02060B7C
	add r4, r0, #0
	mov r0, #4
	tst r0, r4
	beq _02060598
	add r0, r5, #0
	mov r7, #0x38
	mov r6, #3
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0206066C
_02060598:
	mov r0, #0x80
	tst r0, r4
	beq _020605B0
	add r0, r5, #0
	mov r7, #0x75
	mov r6, #2
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _0206066C
_020605B0:
	mov r0, #0x10
	tst r0, r4
	beq _020605D0
	add r0, r5, #0
	mov r7, #0x50
	mov r6, #5
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	b _0206066C
_020605D0:
	mov r0, #0x40
	tst r0, r4
	beq _020605FC
	ldr r0, [sp]
	mov r7, #0
	mov r6, #1
	bl sub_0206299C
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	sub r1, r6, #2
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	b _0206066C
_020605FC:
	cmp r4, #0
	beq _02060654
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl sub_020615E0
	cmp r0, #0
	bne _0206062E
	mov r0, #8
	mov r7, #0x1c
	mov r6, #1
	tst r0, r4
	bne _0206061E
	ldr r0, _02060684 ; =0x00000601
	bl sub_02005748
_0206061E:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	b _0206066C
_0206062E:
	ldr r0, [sp]
	mov r7, #0
	mov r6, #1
	bl sub_0206299C
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	sub r1, r6, #2
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	b _0206066C
_02060654:
	add r0, r5, #0
	mov r7, #0x50
	mov r6, #5
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EBBC
_0206066C:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_02065838
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02060684: .word 0x00000601
	thumb_func_end sub_02060570

	thumb_func_start sub_02060688
sub_02060688: ; 0x02060688
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205EBC0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020615E0
	cmp r0, #1
	beq _020606C4
	add r0, r6, #0
	mov r1, #0x28
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
_020606C4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02060688

	thumb_func_start sub_020606C8
sub_020606C8: ; 0x020606C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	bl sub_020603EC
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0205EA94
	add r7, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02060B7C
	add r4, r0, #0
	mov r0, #4
	tst r0, r4
	beq _020606FE
	add r0, r7, #0
	mov r1, #0x38
	bl sub_02065838
	str r0, [sp, #8]
	mov r6, #3
	b _02060768
_020606FE:
	mov r0, #0x80
	tst r0, r4
	beq _02060712
	add r0, r7, #0
	mov r1, #0x75
	bl sub_02065838
	str r0, [sp, #8]
	mov r6, #2
	b _02060768
_02060712:
	mov r0, #0x40
	tst r0, r4
	beq _0206072C
	add r0, r7, #0
	mov r1, #0
	bl sub_02065838
	str r0, [sp, #8]
	add r0, r5, #0
	mov r6, #1
	bl sub_0205EBC0
	b _02060768
_0206072C:
	cmp r4, #0
	beq _0206075C
	mov r0, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x1c
	bl sub_02065838
	str r0, [sp, #8]
	mov r0, #8
	mov r6, #1
	tst r0, r4
	bne _0206074C
	ldr r0, _02060788 ; =0x00000601
	bl sub_02005748
_0206074C:
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	b _02060768
_0206075C:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02060390
	str r0, [sp, #8]
	mov r6, #5
_02060768:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02060776
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EF98
_02060776:
	ldr r1, [sp]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02060788: .word 0x00000601
	thumb_func_end sub_020606C8

	thumb_func_start sub_0206078C
sub_0206078C: ; 0x0206078C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r1, r3, #0
	add r6, r0, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x20]
	ldr r4, [sp, #0x24]
	bl sub_02060800
	cmp r0, #3
	bhi _020607FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020607B0: ; jump table
	.short _020607B8 - _020607B0 - 2 ; case 0
	.short _020607CA - _020607B0 - 2 ; case 1
	.short _020607DC - _020607B0 - 2 ; case 2
	.short _020607EE - _020607B0 - 2 ; case 3
_020607B8:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_020608BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020607CA:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_020608E4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020607DC:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_02060A60
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020607EE:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_02060AA0
_020607FC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206078C

	thumb_func_start sub_02060800
sub_02060800: ; 0x02060800
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02060850
	add r4, r0, #0
	bl sub_0206081C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205EB08
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02060800

	thumb_func_start sub_0206081C
sub_0206081C: ; 0x0206081C
	push {r3, lr}
	cmp r0, #3
	bhi _02060846
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206082E: ; jump table
	.short _02060836 - _0206082E - 2 ; case 0
	.short _0206083A - _0206082E - 2 ; case 1
	.short _0206083E - _0206082E - 2 ; case 2
	.short _02060842 - _0206082E - 2 ; case 3
_02060836:
	mov r0, #0
	pop {r3, pc}
_0206083A:
	mov r0, #1
	pop {r3, pc}
_0206083E:
	mov r0, #2
	pop {r3, pc}
_02060842:
	mov r0, #1
	pop {r3, pc}
_02060846:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206081C

	thumb_func_start sub_02060850
sub_02060850: ; 0x02060850
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205EBB8
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02060880
	cmp r6, #2
	bge _02060874
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	mov r0, #0
	pop {r4, r5, r6, pc}
_02060874:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #3
	pop {r4, r5, r6, pc}
_02060880:
	add r0, r5, #0
	bl sub_0205EA78
	cmp r0, r4
	beq _020608B0
	add r0, r5, #0
	bl sub_0205EB0C
	cmp r0, #1
	beq _020608B0
	cmp r6, #2
	bge _020608A4
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB08
	mov r0, #2
	pop {r4, r5, r6, pc}
_020608A4:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #3
	pop {r4, r5, r6, pc}
_020608B0:
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EB08
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02060850

	thumb_func_start sub_020608BC
sub_020608BC: ; 0x020608BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r5, #0
	bl sub_0205EBC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020608BC

	thumb_func_start sub_020608E4
sub_020608E4: ; 0x020608E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	add r6, r2, #0
	bl sub_02060B7C
	add r4, r0, #0
	mov r0, #4
	tst r0, r4
	beq _0206091A
	add r0, r6, #0
	mov r1, #0x38
	bl sub_02065838
	str r0, [sp, #4]
	add r0, r5, #0
	mov r7, #3
	bl sub_020603BC
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _02060A4A
_0206091A:
	mov r0, #0x80
	tst r0, r4
	beq _02060940
	add r0, r6, #0
	mov r1, #0x75
	bl sub_02065838
	str r0, [sp, #4]
	add r0, r5, #0
	mov r7, #2
	bl sub_020603BC
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
	b _02060A4A
_02060940:
	mov r0, #0x10
	tst r0, r4
	beq _02060994
	add r0, r5, #0
	bl sub_0205EBB8
	cmp r0, #3
	blt _0206096C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02060390
	str r0, [sp, #4]
	add r0, r5, #0
	mov r7, #5
	bl sub_0205F048
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF40
	b _02060A4A
_0206096C:
	add r0, r6, #0
	mov r1, #0x1c
	bl sub_02065838
	str r0, [sp, #4]
	mov r0, #8
	mov r7, #1
	tst r0, r4
	bne _02060984
	ldr r0, _02060A5C ; =0x00000601
	bl sub_02005748
_02060984:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	b _02060A4A
_02060994:
	mov r0, #0x40
	tst r0, r4
	beq _020609C6
	ldr r0, [sp]
	bl sub_0206299C
	mov r1, #0
	add r4, r0, #0
	bl sub_02065838
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r4, #0
	mov r7, #1
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	sub r1, r7, #2
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	b _02060A4A
_020609C6:
	cmp r4, #0
	beq _02060A2C
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_020615E0
	cmp r0, #0
	bne _02060A00
	add r0, r6, #0
	mov r1, #0x1c
	bl sub_02065838
	str r0, [sp, #4]
	mov r0, #8
	mov r7, #1
	tst r0, r4
	bne _020609F0
	ldr r0, _02060A5C ; =0x00000601
	bl sub_02005748
_020609F0:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	b _02060A4A
_02060A00:
	ldr r0, [sp]
	mov r7, #1
	bl sub_0206299C
	mov r1, #0
	add r4, r0, #0
	bl sub_02065838
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	sub r1, r7, #2
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0205EBEC
	b _02060A4A
_02060A2C:
	add r0, r5, #0
	add r1, r6, #0
	mov r7, #5
	bl sub_02060390
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020603BC
	add r0, r5, #0
	bl sub_020615C8
	add r0, r5, #0
	bl sub_0205F048
_02060A4A:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r3, r7, #0
	bl sub_02060B64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02060A5C: .word 0x00000601
	thumb_func_end sub_020608E4

	thumb_func_start sub_02060A60
sub_02060A60: ; 0x02060A60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205EBC0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020615E0
	cmp r0, #1
	beq _02060A9C
	add r0, r6, #0
	mov r1, #0x28
	bl sub_02065838
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_02060B64
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
_02060A9C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02060A60

	thumb_func_start sub_02060AA0
sub_02060AA0: ; 0x02060AA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	bl sub_020603EC
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0205EA94
	add r7, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02060B7C
	add r4, r0, #0
	mov r0, #4
	tst r0, r4
	beq _02060AD6
	add r0, r7, #0
	mov r1, #0x38
	bl sub_02065838
	str r0, [sp, #8]
	mov r6, #3
	b _02060B40
_02060AD6:
	mov r0, #0x80
	tst r0, r4
	beq _02060AEA
	add r0, r7, #0
	mov r1, #0x75
	bl sub_02065838
	str r0, [sp, #8]
	mov r6, #2
	b _02060B40
_02060AEA:
	mov r0, #0x40
	tst r0, r4
	beq _02060B04
	add r0, r7, #0
	mov r1, #0
	bl sub_02065838
	str r0, [sp, #8]
	add r0, r5, #0
	mov r6, #1
	bl sub_0205EBC0
	b _02060B40
_02060B04:
	cmp r4, #0
	beq _02060B34
	mov r0, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x1c
	mov r6, #1
	bl sub_02065838
	str r0, [sp, #8]
	mov r0, #8
	tst r0, r4
	bne _02060B24
	ldr r0, _02060B60 ; =0x00000601
	bl sub_02005748
_02060B24:
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_0205EBC0
	b _02060B40
_02060B34:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02060390
	str r0, [sp, #8]
	mov r6, #5
_02060B40:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02060B4E
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EF98
_02060B4E:
	ldr r1, [sp]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_02060B64
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02060B60: .word 0x00000601
	thumb_func_end sub_02060AA0

	thumb_func_start sub_02060B64
sub_02060B64: ; 0x02060B64
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r1, r4, #0
	add r2, r3, #0
	bl sub_0205EC20
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065638
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02060B64

	thumb_func_start sub_02060B7C
sub_02060B7C: ; 0x02060B7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	bl sub_02060C24
	mov r1, #0xa
	str r0, [sp]
	tst r0, r1
	beq _02060BA8
	mov r0, #1
	orr r4, r0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060E40
	cmp r0, #0
	beq _02060BA8
	mov r0, #8
	orr r4, r0
_02060BA8:
	ldr r0, [sp]
	mov r1, #4
	tst r0, r1
	beq _02060BB4
	mov r0, #2
	orr r4, r0
_02060BB4:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060CE4
	cmp r0, #0
	beq _02060BC6
	mov r0, #4
	orr r4, r0
_02060BC6:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060D98
	cmp r0, #0
	beq _02060BD8
	mov r0, #0x80
	orr r4, r0
_02060BD8:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060EE4
	cmp r0, #1
	bne _02060BEA
	mov r0, #0x10
	orr r4, r0
_02060BEA:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060F4C
	cmp r0, #1
	bne _02060BFC
	mov r0, #0x20
	orr r4, r0
_02060BFC:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02060FA8
	cmp r0, #1
	bne _02060C0E
	mov r0, #0x41
	orr r4, r0
_02060C0E:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02061058
	cmp r0, #1
	bne _02060C20
	mov r0, #1
	orr r4, r0
_02060C20:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060B7C

	thumb_func_start sub_02060C24
sub_02060C24: ; 0x02060C24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	str r2, [sp, #4]
	add r0, r5, #0
	bl sub_02063020
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl sub_0206419C
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02063030
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	bl sub_020641A8
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0x1c
	bl sub_02063050
	ldr r1, [sp, #0x14]
	ldr r6, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r7, r1
	add r3, r6, r3
	mov r4, #0
	bl sub_02063FAC
	cmp r0, #1
	bne _02060C78
	mov r0, #1
	orr r4, r0
_02060C78:
	add r0, r5, #0
	bl sub_02062C00
	ldr r2, [sp, #0x14]
	add r1, sp, #0x18
	str r1, [sp]
	ldr r6, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r1, sp, #0x1c
	add r2, r7, r2
	add r3, r6, r3
	bl sub_0205507C
	cmp r0, #1
	bne _02060CA8
	mov r0, #2
	orr r4, r0
	add r1, sp, #0x18
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _02060CA8
	mov r0, #8
	orr r4, r0
_02060CA8:
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, r3, r2
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r7, r1
	bl sub_02064004
	cmp r0, #1
	bne _02060CC2
	mov r0, #2
	orr r4, r0
_02060CC2:
	add r0, r5, #0
	ldr r1, [sp, #0x14]
	ldr r5, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #8]
	add r1, r7, r1
	add r3, r5, r3
	bl sub_02063F00
	cmp r0, #1
	bne _02060CDC
	mov r0, #4
	orr r4, r0
_02060CDC:
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02060C24

	thumb_func_start sub_02060CE4
sub_02060CE4: ; 0x02060CE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r7, r1, #0
	cmp r4, r0
	beq _02060D92
	add r0, r7, #0
	bl sub_02062C00
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02063040
	add r7, r0, #0
	add r0, r4, #0
	bl sub_020641A8
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r5, r6
	add r2, r7, r2
	mov r3, #0
	str r4, [sp]
	bl sub_020683D8
	cmp r0, #1
	bne _02060D36
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02060D36:
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r5, r6
	add r2, r7, r2
	bl sub_02054F94
	cmp r4, #3
	bhi _02060D92
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060D52: ; jump table
	.short _02060D5A - _02060D52 - 2 ; case 0
	.short _02060D68 - _02060D52 - 2 ; case 1
	.short _02060D76 - _02060D52 - 2 ; case 2
	.short _02060D84 - _02060D52 - 2 ; case 3
_02060D5A:
	bl sub_0205DB84
	cmp r0, #1
	bne _02060D92
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02060D68:
	bl sub_0205DB90
	cmp r0, #1
	bne _02060D92
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02060D76:
	bl sub_0205DB9C
	cmp r0, #1
	bne _02060D92
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02060D84:
	bl sub_0205DBA8
	cmp r0, #1
	bne _02060D92
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02060D92:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02060CE4

	thumb_func_start sub_02060D98
sub_02060D98: ; 0x02060D98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r5, #0
	add r4, r2, #0
	sub r0, r5, #1
	add r7, r1, #0
	cmp r4, r0
	beq _02060E3A
	add r0, r7, #0
	bl sub_02062C00
	str r0, [sp]
	add r0, r7, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02063040
	add r7, r0, #0
	add r0, r4, #0
	bl sub_020641A8
	str r0, [sp, #8]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r0, [sp]
	add r1, r6, r1
	add r2, r7, r2
	bl sub_02054F94
	cmp r4, #3
	bhi _02060E14
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060DEE: ; jump table
	.short _02060DF6 - _02060DEE - 2 ; case 0
	.short _02060DFE - _02060DEE - 2 ; case 1
	.short _02060E06 - _02060DEE - 2 ; case 2
	.short _02060E0E - _02060DEE - 2 ; case 3
_02060DF6:
	bl sub_0205DBB4
	add r5, r0, #0
	b _02060E14
_02060DFE:
	bl sub_0205DBC0
	add r5, r0, #0
	b _02060E14
_02060E06:
	bl sub_0205DBCC
	add r5, r0, #0
	b _02060E14
_02060E0E:
	bl sub_0205DBD8
	add r5, r0, #0
_02060E14:
	cmp r5, #1
	bne _02060E3A
	ldr r0, [sp]
	mov r1, #9
	bl sub_02071CB4
	cmp r0, #1
	bne _02060E3A
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r0, [sp]
	add r1, r6, r1
	add r2, r7, r2
	add r3, r4, #0
	bl ov9_022511A0
	cmp r0, #1
	bne _02060E3A
	mov r5, #0
_02060E3A:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02060D98

	thumb_func_start sub_02060E40
sub_02060E40: ; 0x02060E40
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r5, r1, #0
	cmp r4, r0
	beq _02060EE0
	add r0, r5, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp]
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02054F94
	cmp r4, #3
	bhi _02060EB8
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02060E80: ; jump table
	.short _02060E88 - _02060E80 - 2 ; case 0
	.short _02060E94 - _02060E80 - 2 ; case 1
	.short _02060EA0 - _02060E80 - 2 ; case 2
	.short _02060EAC - _02060E80 - 2 ; case 3
_02060E88:
	bl sub_0205DB10
	cmp r0, #1
	bne _02060EB8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060E94:
	bl sub_0205DB1C
	cmp r0, #1
	bne _02060EB8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060EA0:
	bl sub_0205DB04
	cmp r0, #1
	bne _02060EB8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060EAC:
	bl sub_0205DAF8
	cmp r0, #1
	bne _02060EB8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060EB8:
	add r0, r4, #0
	bl sub_0206419C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020641A8
	add r3, r0, #0
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, r5
	add r2, r2, r3
	bl sub_02054F94
	bl sub_0205DAEC
	cmp r0, #1
	bne _02060EE0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060EE0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060E40

	thumb_func_start sub_02060EE4
sub_02060EE4: ; 0x02060EE4
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	add r5, r2, #0
	mvn r0, r0
	add r4, r1, #0
	cmp r5, r0
	beq _02060F48
	add r0, r4, #0
	bl sub_02062C00
	str r0, [sp]
	add r0, r4, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02063040
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020641A8
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r6, r7
	add r2, r4, r2
	bl sub_02054F94
	add r4, r0, #0
	cmp r5, #3
	bne _02060F36
	bl sub_0205DD90
	cmp r0, #0
	beq _02060F36
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060F36:
	cmp r5, #2
	bne _02060F48
	add r0, r4, #0
	bl sub_0205DD9C
	cmp r0, #0
	beq _02060F48
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060F48:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060EE4

	thumb_func_start sub_02060F4C
sub_02060F4C: ; 0x02060F4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r5, r1, #0
	cmp r4, r0
	beq _02060FA2
	add r0, r5, #0
	bl sub_02062C00
	str r0, [sp]
	add r0, r5, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_020641A8
	add r3, r0, #0
	ldr r2, [sp, #4]
	ldr r0, [sp]
	add r1, r6, r7
	add r2, r2, r3
	bl sub_02054F94
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206406C
	cmp r0, #0
	beq _02060FA2
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060FA2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060F4C

	thumb_func_start sub_02060FA8
sub_02060FA8: ; 0x02060FA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r5, r1, #0
	cmp r4, r0
	beq _02061052
	add r0, r5, #0
	bl sub_02062C00
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_020641A8
	add r2, r0, #0
	ldr r3, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r6, r7
	add r2, r3, r2
	bl sub_02054F94
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_0205EB74
	cmp r0, #1
	bne _02061034
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206415C
	cmp r0, #1
	bne _02061016
	cmp r4, #1
	bls _02061010
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02061010:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02061016:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206417C
	cmp r0, #1
	bne _02061052
	sub r0, r4, #2
	cmp r0, #1
	bls _0206102E
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0206102E:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02061034:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206415C
	cmp r0, #1
	beq _0206104C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206417C
	cmp r0, #1
	bne _02061052
_0206104C:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02061052:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02060FA8

	thumb_func_start sub_02061058
sub_02061058: ; 0x02061058
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	mvn r1, r1
	cmp r4, r1
	beq _020610FA
	bl sub_0205EB74
	cmp r0, #1
	bne _020610FA
	add r0, r5, #0
	bl sub_02062C00
	str r0, [sp]
	add r0, r5, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_020641A8
	add r3, r0, #0
	ldr r2, [sp, #4]
	ldr r0, [sp]
	add r1, r6, r7
	add r2, r2, r3
	bl sub_02054F94
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206406C
	cmp r0, #0
	beq _020610B8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020610B8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020640D4
	cmp r0, #0
	beq _020610CA
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020610CA:
	add r0, r4, #0
	bl sub_0205DAD4
	cmp r0, #0
	beq _020610DA
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020610DA:
	add r0, r4, #0
	bl sub_0205DCE0
	cmp r0, #0
	beq _020610EA
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020610EA:
	add r0, r4, #0
	bl sub_0205DCFC
	cmp r0, #0
	beq _020610FA
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020610FA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061058

	thumb_func_start sub_02061100
sub_02061100: ; 0x02061100
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	mov r4, #0
	bl sub_02062C00
	mov r1, #9
	str r0, [sp, #4]
	bl sub_02071CB4
	cmp r0, #1
	bne _02061178
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #8]
	add r0, sp, #8
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_02061674
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl ov9_02250F90
	cmp r0, #1
	bne _02061160
	mov r0, #2
	orr r4, r0
_02061160:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsl r2, r0, #1
	ldr r3, [sp, #8]
	add r0, r5, #0
	str r2, [sp, #0xc]
	bl sub_02063F00
	cmp r0, #1
	bne _02061178
	mov r0, #4
	orr r4, r0
_02061178:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061100

	thumb_func_start sub_02061180
sub_02061180: ; 0x02061180
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	add r6, r2, #0
	mvn r0, r0
	add r4, r1, #0
	cmp r6, r0
	beq _020611F6
	add r0, r4, #0
	bl sub_02062C00
	mov r1, #9
	add r7, r0, #0
	bl sub_02071CB4
	cmp r0, #1
	bne _020611F6
	add r0, r4, #0
	bl sub_02063020
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02063040
	str r0, [sp, #4]
	add r0, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02061674
	add r0, sp, #0x10
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r7, #0
	bl ov9_02251044
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DB58
	cmp r0, #0
	beq _020611F6
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_020611F6:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02061180

	thumb_func_start sub_020611FC
sub_020611FC: ; 0x020611FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	bl sub_02061100
	mov r1, #0xa
	tst r1, r0
	beq _02061214
	mov r1, #1
	orr r4, r1
_02061214:
	mov r1, #4
	tst r0, r1
	beq _0206121E
	mov r0, #2
	orr r4, r0
_0206121E:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02061180
	cmp r0, #1
	bne _02061230
	mov r0, #0x20
	orr r4, r0
_02061230:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02061248
	cmp r0, #1
	bne _02061242
	mov r0, #0x80
	orr r4, r0
_02061242:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020611FC

	thumb_func_start sub_02061248
sub_02061248: ; 0x02061248
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r6, #0
	add r5, r1, #0
	add r4, r2, #0
	sub r1, r6, #1
	add r7, r0, #0
	cmp r4, r1
	beq _02061302
	bl sub_0205F108
	cmp r0, #2
	bne _02061302
	add r0, r5, #0
	bl sub_02062C00
	mov r1, #9
	str r0, [sp, #4]
	bl sub_02071CB4
	cmp r0, #1
	bne _02061302
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02063040
	str r0, [sp, #8]
	add r0, sp, #8
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_02061674
	add r0, sp, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl ov9_02251044
	add r6, r0, #0
	cmp r4, #3
	bhi _02061302
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020612C4: ; jump table
	.short _020612CC - _020612C4 - 2 ; case 0
	.short _020612DA - _020612C4 - 2 ; case 1
	.short _020612E8 - _020612C4 - 2 ; case 2
	.short _020612F6 - _020612C4 - 2 ; case 3
_020612CC:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DBB4
	add r6, r0, #0
	b _02061302
_020612DA:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DBC0
	add r6, r0, #0
	b _02061302
_020612E8:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DBCC
	add r6, r0, #0
	b _02061302
_020612F6:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DBD8
	add r6, r0, #0
_02061302:
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061248

	thumb_func_start sub_02061308
sub_02061308: ; 0x02061308
	ldr r3, _0206130C ; =sub_02061348
	bx r3
	; .align 2, 0
_0206130C: .word sub_02061348
	thumb_func_end sub_02061308

	thumb_func_start sub_02061310
sub_02061310: ; 0x02061310
	mov r1, #0x20
	tst r1, r0
	beq _0206131A
	mov r0, #2
	bx lr
_0206131A:
	mov r1, #0x10
	tst r0, r1
	beq _02061324
	mov r1, #3
	b _02061326
_02061324:
	sub r1, #0x11
_02061326:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02061310

	thumb_func_start sub_0206132C
sub_0206132C: ; 0x0206132C
	mov r1, #0x40
	tst r1, r0
	beq _02061336
	mov r0, #0
	bx lr
_02061336:
	mov r1, #0x80
	tst r0, r1
	beq _02061340
	mov r1, #1
	b _02061342
_02061340:
	sub r1, #0x81
_02061342:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206132C

	thumb_func_start sub_02061348
sub_02061348: ; 0x02061348
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02061310
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206132C
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	cmp r4, r1
	beq _020613A8
	cmp r5, r1
	bne _0206136E
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206136E:
	add r0, r6, #0
	bl sub_0205EA94
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0205EBE0
	str r0, [sp]
	add r0, r6, #0
	bl sub_0205EBE8
	mov r1, #0
	mvn r1, r1
	cmp r7, r1
	beq _020613A6
	ldr r1, [sp]
	cmp r4, r1
	bne _0206139A
	cmp r5, r0
	bne _0206139A
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206139A:
	cmp r5, r0
	beq _020613A2
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020613A2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_020613A6:
	add r0, r5, #0
_020613A8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061348

	thumb_func_start sub_020613AC
sub_020613AC: ; 0x020613AC
	push {r4, lr}
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _020613C0
	mov r0, #1
	pop {r4, pc}
_020613C0:
	add r0, r4, #0
	bl sub_02062BB8
	bl sub_020613D8
	cmp r0, #1
	bne _020613D2
	mov r0, #1
	pop {r4, pc}
_020613D2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020613AC

	thumb_func_start sub_020613D8
sub_020613D8: ; 0x020613D8
	sub r0, #0x1c
	cmp r0, #3
	bhi _020613F6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020613EA: ; jump table
	.short _020613F2 - _020613EA - 2 ; case 0
	.short _020613F2 - _020613EA - 2 ; case 1
	.short _020613F2 - _020613EA - 2 ; case 2
	.short _020613F2 - _020613EA - 2 ; case 3
_020613F2:
	mov r0, #1
	bx lr
_020613F6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020613D8

	thumb_func_start sub_020613FC
sub_020613FC: ; 0x020613FC
	mov r0, #2
	tst r0, r1
	beq _02061406
	mov r0, #1
	bx lr
_02061406:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020613FC

	thumb_func_start sub_0206140C
sub_0206140C: ; 0x0206140C
	push {r3, lr}
	bl sub_0205EC14
	sub r0, #0x58
	cmp r0, #3
	bhi _02061430
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02061424: ; jump table
	.short _0206142C - _02061424 - 2 ; case 0
	.short _0206142C - _02061424 - 2 ; case 1
	.short _0206142C - _02061424 - 2 ; case 2
	.short _0206142C - _02061424 - 2 ; case 3
_0206142C:
	mov r0, #1
	pop {r3, pc}
_02061430:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206140C

	thumb_func_start sub_02061434
sub_02061434: ; 0x02061434
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205EB74
	cmp r0, #0
	beq _0206144A
	cmp r0, #1
	beq _0206145A
	cmp r0, #2
	bne _02061470
_0206144A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205FCC0
	bl sub_0205FC64
	add r4, r0, #0
	b _02061476
_0206145A:
	add r0, r5, #0
	bl sub_0205EC88
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02060850
	bl sub_0206081C
	add r4, r0, #0
	b _02061476
_02061470:
	mov r4, #0
	bl GF_AssertFail
_02061476:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02061434

	thumb_func_start sub_0206147C
sub_0206147C: ; 0x0206147C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02061348
	str r0, [sp]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02061434
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EB08
	cmp r4, #0
	bne _020614AE
	add r0, r5, #0
	bl sub_0205EA78
	mov r1, #0
	bl sub_02065838
	pop {r3, r4, r5, r6, r7, pc}
_020614AE:
	cmp r4, #2
	bne _020614BC
	ldr r0, [sp]
	mov r1, #0x28
	bl sub_02065838
	pop {r3, r4, r5, r6, r7, pc}
_020614BC:
	add r0, r5, #0
	bl sub_0205EB3C
	ldr r0, [sp, #0x1c]
	mov r4, #4
	add r1, r0, #0
	tst r1, r4
	beq _020614D0
	mov r4, #0x38
	b _02061536
_020614D0:
	mov r1, #0x80
	tst r1, r0
	beq _020614DA
	mov r4, #0x75
	b _02061536
_020614DA:
	cmp r0, #0
	beq _020614EE
	mov r1, #8
	mov r4, #0x1c
	tst r0, r1
	bne _02061536
	ldr r0, _02061540 ; =0x00000601
	bl sub_02005748
	b _02061536
_020614EE:
	cmp r6, #5
	bhi _02061520
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020614FE: ; jump table
	.short _0206150A - _020614FE - 2 ; case 0
	.short _0206150C - _020614FE - 2 ; case 1
	.short _02061510 - _020614FE - 2 ; case 2
	.short _02061514 - _020614FE - 2 ; case 3
	.short _02061518 - _020614FE - 2 ; case 4
	.short _0206151C - _020614FE - 2 ; case 5
_0206150A:
	b _02061522
_0206150C:
	mov r4, #8
	b _02061522
_02061510:
	mov r4, #0xc
	b _02061522
_02061514:
	mov r4, #0x4c
	b _02061522
_02061518:
	mov r4, #0x10
	b _02061522
_0206151C:
	mov r4, #0x14
	b _02061522
_02061520:
	mov r4, #4
_02061522:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _02061536
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020613FC
	cmp r0, #1
	bne _02061536
	mov r4, #0x58
_02061536:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02065838
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02061540: .word 0x00000601
	thumb_func_end sub_0206147C

	thumb_func_start sub_02061544
sub_02061544: ; 0x02061544
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_020655F4
	pop {r3, pc}
	thumb_func_end sub_02061544

	thumb_func_start sub_02061550
sub_02061550: ; 0x02061550
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205EB3C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02060B64
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02061550

	thumb_func_start sub_0206156C
sub_0206156C: ; 0x0206156C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02064238
	pop {r4, pc}
	thumb_func_end sub_0206156C

	thumb_func_start sub_0206157C
sub_0206157C: ; 0x0206157C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0205EABC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206419C
	add r0, r4, r0
	str r0, [r6, #0]
	ldr r0, [sp]
	bl sub_0205EAC8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020641A8
	add r0, r4, r0
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206157C

	thumb_func_start sub_020615AC
sub_020615AC: ; 0x020615AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205EA78
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0206157C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020615AC

	thumb_func_start sub_020615C8
sub_020615C8: ; 0x020615C8
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_02062C00
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0
	bl sub_0202CF28
	pop {r3, pc}
	thumb_func_end sub_020615C8

	thumb_func_start sub_020615E0
sub_020615E0: ; 0x020615E0
	push {r4, r5, r6, lr}
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r5, r1, #0
	cmp r4, r0
	beq _0206162A
	add r0, r5, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206415C
	cmp r0, #1
	bne _02061610
	cmp r4, #1
	bls _0206160C
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206160C:
	mov r0, #0
	pop {r4, r5, r6, pc}
_02061610:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206417C
	cmp r0, #1
	bne _0206162A
	sub r0, r4, #2
	cmp r0, #1
	bls _02061626
	mov r0, #1
	pop {r4, r5, r6, pc}
_02061626:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206162A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020615E0

	thumb_func_start sub_02061630
sub_02061630: ; 0x02061630
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	cmp r2, r1
	beq _02061642
	mov r0, #0
	pop {r3, r4, r5, pc}
_02061642:
	bl sub_0205EB74
	cmp r0, #1
	beq _0206164E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206164E:
	add r0, r5, #0
	bl sub_0205EFDC
	cmp r0, #0
	bne _0206165C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206165C:
	add r0, r5, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_0206413C
	cmp r0, #1
	bne _02061670
	mov r0, #1
	pop {r3, r4, r5, pc}
_02061670:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02061630

	thumb_func_start sub_02061674
sub_02061674: ; 0x02061674
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	bl sub_0205F108
	cmp r0, #5
	bhi _020616DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02061690: ; jump table
	.short _0206169C - _02061690 - 2 ; case 0
	.short _0206169C - _02061690 - 2 ; case 1
	.short _0206169C - _02061690 - 2 ; case 2
	.short _020616A4 - _02061690 - 2 ; case 3
	.short _020616AC - _02061690 - 2 ; case 4
	.short _020616B4 - _02061690 - 2 ; case 5
_0206169C:
	ldr r1, _020616E0 ; =0x020EDB04
	lsl r0, r4, #3
	add r0, r1, r0
	b _020616BE
_020616A4:
	ldr r1, _020616E4 ; =0x020EDB24
	lsl r0, r4, #3
	add r0, r1, r0
	b _020616BE
_020616AC:
	ldr r1, _020616E8 ; =0x020EDB44
	lsl r0, r4, #3
	add r0, r1, r0
	b _020616BE
_020616B4:
	ldr r1, _020616EC ; =0x020EDB64
	lsl r0, r4, #3
	add r0, r1, r0
	b _020616BE
_020616BC:
	.byte 0x70, 0xBD
_020616BE:
	mov r1, #0
	ldrsh r1, [r0, r1]
	ldr r2, [r5, #0]
	ldr r3, [sp, #0x10]
	add r1, r2, r1
	str r1, [r5, #0]
	mov r1, #2
	ldrsh r1, [r0, r1]
	ldr r2, [r6, #0]
	add r1, r2, r1
	str r1, [r6, #0]
	mov r1, #4
	ldrsh r0, [r0, r1]
	ldr r2, [r3, #0]
	add r0, r2, r0
	str r0, [r3, #0]
_020616DE:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020616E0: .word 0x020EDB04
_020616E4: .word 0x020EDB24
_020616E8: .word 0x020EDB44
_020616EC: .word 0x020EDB64
	thumb_func_end sub_02061674

	thumb_func_start sub_020616F0
sub_020616F0: ; 0x020616F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0205F158
	cmp r0, #0
	bne _0206170C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206156C
	str r0, [sp, #0x10]
	b _02061758
_0206170C:
	add r0, r5, #0
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02063020
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02063040
	str r0, [sp, #4]
	add r0, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02061674
	add r0, sp, #0x10
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r7, #0
	bl ov9_02251044
_02061758:
	ldr r0, [sp, #0x10]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020616F0

	thumb_func_start sub_02061760
sub_02061760: ; 0x02061760
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02062C00
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02063020
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	add r0, r5, #0
	asr r4, r1, #1
	bl sub_02063040
	add r5, r0, #0
	ldr r0, [sp, #4]
	bl sub_0205F158
	cmp r0, #0
	bne _020617A6
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02054F94
	str r0, [sp, #8]
	b _020617B6
_020617A6:
	add r0, sp, #8
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ov9_02251044
_020617B6:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02061760

	thumb_func_start sub_020617BC
sub_020617BC: ; 0x020617BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0205EAA0
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_0205EB3C
	str r0, [sp, #8]
	bl sub_02063020
	str r0, [r5, #0]
	ldr r0, [sp, #8]
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [r6, #0]
	ldr r0, [sp, #8]
	bl sub_02063040
	str r0, [r4, #0]
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	str r4, [sp]
	bl sub_02061674
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020617BC

	.rodata


	.global Unk_020ED9CC
Unk_020ED9CC: ; 0x020ED9CC
	.incbin "incbin/arm9_rodata.bin", 0x8D8C, 0x8D9C - 0x8D8C

	.global Unk_020ED9DC
Unk_020ED9DC: ; 0x020ED9DC
	.incbin "incbin/arm9_rodata.bin", 0x8D9C, 0x8DAC - 0x8D9C

	.global Unk_020ED9EC
Unk_020ED9EC: ; 0x020ED9EC
	.incbin "incbin/arm9_rodata.bin", 0x8DAC, 0x8DBC - 0x8DAC

	.global Unk_020ED9FC
Unk_020ED9FC: ; 0x020ED9FC
	.incbin "incbin/arm9_rodata.bin", 0x8DBC, 0x8DCC - 0x8DBC

	.global Unk_020EDA0C
Unk_020EDA0C: ; 0x020EDA0C
	.incbin "incbin/arm9_rodata.bin", 0x8DCC, 0x8DDC - 0x8DCC

	.global Unk_020EDA1C
Unk_020EDA1C: ; 0x020EDA1C
	.incbin "incbin/arm9_rodata.bin", 0x8DDC, 0x8DEC - 0x8DDC

	.global Unk_020EDA2C
Unk_020EDA2C: ; 0x020EDA2C
	.incbin "incbin/arm9_rodata.bin", 0x8DEC, 0x8DFC - 0x8DEC

	.global Unk_020EDA3C
Unk_020EDA3C: ; 0x020EDA3C
	.incbin "incbin/arm9_rodata.bin", 0x8DFC, 0x8E0C - 0x8DFC

	.global Unk_020EDA4C
Unk_020EDA4C: ; 0x020EDA4C
	.incbin "incbin/arm9_rodata.bin", 0x8E0C, 0x8E1C - 0x8E0C

	.global Unk_020EDA5C
Unk_020EDA5C: ; 0x020EDA5C
	.incbin "incbin/arm9_rodata.bin", 0x8E1C, 0x8E2C - 0x8E1C

	.global Unk_020EDA6C
Unk_020EDA6C: ; 0x020EDA6C
	.incbin "incbin/arm9_rodata.bin", 0x8E2C, 0x8E3C - 0x8E2C

	.global Unk_020EDA7C
Unk_020EDA7C: ; 0x020EDA7C
	.incbin "incbin/arm9_rodata.bin", 0x8E3C, 0x8E4C - 0x8E3C

	.global Unk_020EDA8C
Unk_020EDA8C: ; 0x020EDA8C
	.incbin "incbin/arm9_rodata.bin", 0x8E4C, 0x8E5C - 0x8E4C

	.global Unk_020EDA9C
Unk_020EDA9C: ; 0x020EDA9C
	.incbin "incbin/arm9_rodata.bin", 0x8E5C, 0x8E6C - 0x8E5C

	.global Unk_020EDAAC
Unk_020EDAAC: ; 0x020EDAAC
	.incbin "incbin/arm9_rodata.bin", 0x8E6C, 0x8E7C - 0x8E6C

	.global Unk_020EDABC
Unk_020EDABC: ; 0x020EDABC
	.incbin "incbin/arm9_rodata.bin", 0x8E7C, 0x8E8C - 0x8E7C

	.global Unk_020EDACC
Unk_020EDACC: ; 0x020EDACC
	.incbin "incbin/arm9_rodata.bin", 0x8E8C, 0x8E9C - 0x8E8C

	.global Unk_020EDADC
Unk_020EDADC: ; 0x020EDADC
	.incbin "incbin/arm9_rodata.bin", 0x8E9C, 0x8EAC - 0x8E9C

	.global Unk_020EDAEC
Unk_020EDAEC: ; 0x020EDAEC
	.incbin "incbin/arm9_rodata.bin", 0x8EAC, 0x8EC4 - 0x8EAC

	.global Unk_020EDB04
Unk_020EDB04: ; 0x020EDB04
	.incbin "incbin/arm9_rodata.bin", 0x8EC4, 0x8EE4 - 0x8EC4

	.global Unk_020EDB24
Unk_020EDB24: ; 0x020EDB24
	.incbin "incbin/arm9_rodata.bin", 0x8EE4, 0x8F04 - 0x8EE4

	.global Unk_020EDB44
Unk_020EDB44: ; 0x020EDB44
	.incbin "incbin/arm9_rodata.bin", 0x8F04, 0x8F24 - 0x8F04

	.global Unk_020EDB64
Unk_020EDB64: ; 0x020EDB64
	.incbin "incbin/arm9_rodata.bin", 0x8F24, 0x8F44 - 0x8F24

	.global Unk_020EDB84
Unk_020EDB84: ; 0x020EDB84
	.incbin "incbin/arm9_rodata.bin", 0x8F44, 0x28

