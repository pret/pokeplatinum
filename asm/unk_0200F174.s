	.include "macros/function.inc"
	.include "include/unk_0200F174.inc"

	

	.text


	thumb_func_start sub_0200F174
sub_0200F174: ; 0x0200F174
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #0
	bne _0200F18A
	bl GF_AssertFail
_0200F18A:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _0200F194
	bl GF_AssertFail
_0200F194:
	ldr r0, _0200F250 ; =0x021BF5B4
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	beq _0200F1A0
	bl GF_AssertFail
_0200F1A0:
	ldr r0, _0200F254 ; =0x021BF474
	bl sub_0200F814
	ldr r1, _0200F254 ; =0x021BF474
	add r0, r5, #0
	bl sub_0200F564
	ldr r0, _0200F258 ; =0x021BF4E8
	bl sub_0200F600
	ldr r0, _0200F254 ; =0x021BF474
	add r1, r6, #0
	bl sub_0200F768
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0200F25C ; =0x021BF500
	ldr r2, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, _0200F258 ; =0x021BF4E8
	ldr r3, [sp, #0x34]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	add r1, r4, #0
	str r0, [sp, #0x14]
	ldr r0, _0200F260 ; =0x021BF488
	str r5, [sp, #0x18]
	bl sub_0200F5D4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _0200F25C ; =0x021BF500
	ldr r2, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, _0200F258 ; =0x021BF4E8
	ldr r3, [sp, #0x34]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	add r1, r7, #0
	str r0, [sp, #0x14]
	ldr r0, _0200F264 ; =0x021BF4B8
	str r5, [sp, #0x18]
	bl sub_0200F5D4
	ldr r0, _0200F250 ; =0x021BF5B4
	mov r1, #1
	strh r1, [r0, #0xc]
	ldr r0, _0200F268 ; =0x021BF478
	ldr r1, _0200F260 ; =0x021BF488
	bl sub_0200F534
	ldr r0, _0200F26C ; =0x021BF47C
	ldr r1, _0200F264 ; =0x021BF4B8
	bl sub_0200F534
	ldr r0, _0200F270 ; =0x021BF474
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0200F232
	ldr r0, _0200F254 ; =0x021BF474
	add r0, #0x14
	bl sub_0200F7B4
	ldr r1, _0200F274 ; =0x0000014E
	ldr r0, _0200F254 ; =0x021BF474
	mov r2, #1
	strb r2, [r0, r1]
_0200F232:
	ldr r0, _0200F254 ; =0x021BF474
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0200F24A
	ldr r0, _0200F254 ; =0x021BF474
	add r0, #0x44
	bl sub_0200F7B4
	ldr r1, _0200F278 ; =0x0000014F
	ldr r0, _0200F254 ; =0x021BF474
	mov r2, #1
	strb r2, [r0, r1]
_0200F24A:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0200F250: .word 0x021BF5B4
_0200F254: .word 0x021BF474
_0200F258: .word 0x021BF4E8
_0200F25C: .word 0x021BF500
_0200F260: .word 0x021BF488
_0200F264: .word 0x021BF4B8
_0200F268: .word 0x021BF478
_0200F26C: .word 0x021BF47C
_0200F270: .word 0x021BF474
_0200F274: .word 0x0000014E
_0200F278: .word 0x0000014F
	thumb_func_end sub_0200F174

	thumb_func_start sub_0200F27C
sub_0200F27C: ; 0x0200F27C
	push {r4, lr}
	ldr r0, _0200F2A4 ; =0x021BF5B4
	ldr r4, _0200F2A8 ; =0x021BF474
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	beq _0200F2A0
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #0
	add r1, #0x14
	add r2, #0x44
	bl sub_0200F4C4
	cmp r0, #1
	bne _0200F2A0
	add r0, r4, #0
	bl sub_0200F46C
_0200F2A0:
	pop {r4, pc}
	nop
_0200F2A4: .word 0x021BF5B4
_0200F2A8: .word 0x021BF474
	thumb_func_end sub_0200F27C

	thumb_func_start sub_0200F2AC
sub_0200F2AC: ; 0x0200F2AC
	ldr r0, _0200F2BC ; =0x021BF5B4
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	bne _0200F2B8
	mov r0, #1
	bx lr
_0200F2B8:
	mov r0, #0
	bx lr
	; .align 2, 0
_0200F2BC: .word 0x021BF5B4
	thumb_func_end sub_0200F2AC

	thumb_func_start sub_0200F2C0
sub_0200F2C0: ; 0x0200F2C0
	push {r3, lr}
	ldr r0, _0200F30C ; =0x021BF4E8
	mov r1, #0
	bl sub_0200F6AC
	ldr r0, _0200F30C ; =0x021BF4E8
	mov r1, #1
	bl sub_0200F6AC
	ldr r0, _0200F310 ; =0x021BF474
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0200F2DE
	mov r1, #2
	str r1, [r0, #0x20]
_0200F2DE:
	ldr r0, _0200F310 ; =0x021BF474
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0200F2EA
	mov r1, #2
	str r1, [r0, #0x50]
_0200F2EA:
	ldr r0, _0200F314 ; =0x021BF478
	ldr r1, _0200F318 ; =0x021BF488
	bl sub_0200F534
	ldr r0, _0200F31C ; =0x021BF47C
	ldr r1, _0200F320 ; =0x021BF4B8
	bl sub_0200F534
	ldr r0, _0200F324 ; =0x021BF5B4
	mov r1, #0
	strh r1, [r0, #0xc]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	ldr r0, _0200F328 ; =0x021BF474
	bl sub_0200F814
	pop {r3, pc}
	; .align 2, 0
_0200F30C: .word 0x021BF4E8
_0200F310: .word 0x021BF474
_0200F314: .word 0x021BF478
_0200F318: .word 0x021BF488
_0200F31C: .word 0x021BF47C
_0200F320: .word 0x021BF4B8
_0200F324: .word 0x021BF5B4
_0200F328: .word 0x021BF474
	thumb_func_end sub_0200F2C0

	thumb_func_start sub_0200F32C
sub_0200F32C: ; 0x0200F32C
	ldr r3, _0200F334 ; =sub_02012480
	add r1, r0, #0
	mov r0, #0
	bx r3
	; .align 2, 0
_0200F334: .word sub_02012480
	thumb_func_end sub_0200F32C

	thumb_func_start sub_0200F338
sub_0200F338: ; 0x0200F338
	ldr r3, _0200F340 ; =sub_0200F44C
	mov r1, #0
	bx r3
	nop
_0200F340: .word sub_0200F44C
	thumb_func_end sub_0200F338

	thumb_func_start sub_0200F344
sub_0200F344: ; 0x0200F344
	ldr r2, _0200F360 ; =0x0000FFFF
	cmp r1, r2
	bne _0200F34E
	ldr r1, _0200F364 ; =0x021BF5B4
	ldrh r1, [r1, #0x10]
_0200F34E:
	ldr r2, _0200F368 ; =0x00007FFF
	cmp r1, r2
	bne _0200F358
	mov r1, #0x10
	b _0200F35C
_0200F358:
	mov r1, #0xf
	mvn r1, r1
_0200F35C:
	ldr r3, _0200F36C ; =sub_0200F44C
	bx r3
	; .align 2, 0
_0200F360: .word 0x0000FFFF
_0200F364: .word 0x021BF5B4
_0200F368: .word 0x00007FFF
_0200F36C: .word sub_0200F44C
	thumb_func_end sub_0200F344

	thumb_func_start sub_0200F370
sub_0200F370: ; 0x0200F370
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0200F3A4 ; =0x0000FFFF
	cmp r4, r0
	bne _0200F37E
	ldr r0, _0200F3A8 ; =0x021BF5B4
	ldrh r4, [r0, #0x10]
_0200F37E:
	ldr r0, _0200F3AC ; =0x00007FFF
	cmp r4, r0
	bne _0200F388
	mov r5, #0x10
	b _0200F38C
_0200F388:
	mov r5, #0xf
	mvn r5, r5
_0200F38C:
	mov r0, #0
	add r1, r5, #0
	bl sub_0200F44C
	mov r0, #1
	add r1, r5, #0
	bl sub_0200F44C
	ldr r0, _0200F3A8 ; =0x021BF5B4
	strh r4, [r0, #0x10]
	pop {r3, r4, r5, pc}
	nop
_0200F3A4: .word 0x0000FFFF
_0200F3A8: .word 0x021BF5B4
_0200F3AC: .word 0x00007FFF
	thumb_func_end sub_0200F370

	thumb_func_start sub_0200F3B0
sub_0200F3B0: ; 0x0200F3B0
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	add r4, r0, #0
	ldr r0, _0200F420 ; =0x0000FFFF
	cmp r2, r0
	bne _0200F3C8
	ldr r0, _0200F424 ; =0x021BF5B4
	ldrh r0, [r0, #0x10]
	strh r0, [r1, #4]
_0200F3C8:
	cmp r4, #0
	add r0, sp, #0x1c
	bne _0200F3D8
	mov r1, #0
	mov r2, #2
	bl GX_LoadBGPltt
	b _0200F3E0
_0200F3D8:
	mov r1, #0
	mov r2, #2
	bl GXS_LoadBGPltt
_0200F3E0:
	ldr r0, _0200F428 ; =0x021BF500
	mov r1, #1
	add r2, r4, #0
	bl sub_02012634
	mov r2, #0
	ldr r0, _0200F428 ; =0x021BF500
	mov r1, #0x3f
	add r3, r2, #0
	str r4, [sp]
	bl sub_02012650
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _0200F428 ; =0x021BF500
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp, #8]
	bl sub_02012698
	ldr r0, _0200F428 ; =0x021BF500
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02012678
	add sp, #0xc
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_0200F420: .word 0x0000FFFF
_0200F424: .word 0x021BF5B4
_0200F428: .word 0x021BF500
	thumb_func_end sub_0200F3B0

	thumb_func_start sub_0200F42C
sub_0200F42C: ; 0x0200F42C
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r0, sp, #8
	mov r1, #0
	mov r2, #2
	bl GX_LoadBGPltt
	add r0, sp, #8
	mov r1, #0
	mov r2, #2
	bl GXS_LoadBGPltt
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_0200F42C

	thumb_func_start sub_0200F44C
sub_0200F44C: ; 0x0200F44C
	push {r3, lr}
	cmp r0, #0
	bne _0200F45A
	ldr r0, _0200F464 ; =0x0400006C
	bl GXx_SetMasterBrightness_
	pop {r3, pc}
_0200F45A:
	ldr r0, _0200F468 ; =0x0400106C
	bl GXx_SetMasterBrightness_
	pop {r3, pc}
	nop
_0200F464: .word 0x0400006C
_0200F468: .word 0x0400106C
	thumb_func_end sub_0200F44C

	thumb_func_start sub_0200F46C
sub_0200F46C: ; 0x0200F46C
	push {r4, lr}
	mov r1, #0x53
	add r4, r0, #0
	mov r2, #0
	lsl r1, r1, #2
	strh r2, [r4, r1]
	bl sub_0200F77C
	mov r1, #0x15
	lsl r1, r1, #4
	strh r0, [r4, r1]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200F49C
	add r0, r4, #0
	add r0, #0x14
	bl sub_0200F7E4
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0200F49C
	ldr r0, _0200F4C0 ; =0x021BF5B4
	mov r1, #0
	strb r1, [r0, #0xe]
_0200F49C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0200F4B6
	add r0, r4, #0
	add r0, #0x44
	bl sub_0200F7E4
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0200F4B6
	ldr r0, _0200F4C0 ; =0x021BF5B4
	mov r1, #0
	strb r1, [r0, #0xf]
_0200F4B6:
	add r0, r4, #0
	bl sub_0200F814
	pop {r4, pc}
	nop
_0200F4C0: .word 0x021BF5B4
	thumb_func_end sub_0200F46C

	thumb_func_start sub_0200F4C4
sub_0200F4C4: ; 0x0200F4C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r2, #0
	cmp r0, #0
	beq _0200F4DA
	cmp r0, #1
	beq _0200F4EC
	cmp r0, #2
	beq _0200F506
	b _0200F51E
_0200F4DA:
	add r0, r5, #4
	bl sub_0200F534
	add r0, r5, #0
	add r0, #8
	add r1, r4, #0
	bl sub_0200F534
	b _0200F51E
_0200F4EC:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0200F4FA
	add r0, r5, #4
	bl sub_0200F534
	b _0200F51E
_0200F4FA:
	add r0, r5, #0
	add r0, #8
	add r1, r4, #0
	bl sub_0200F534
	b _0200F51E
_0200F506:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0200F518
	add r0, r5, #0
	add r0, #8
	add r1, r4, #0
	bl sub_0200F534
	b _0200F51E
_0200F518:
	add r0, r5, #4
	bl sub_0200F534
_0200F51E:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0200F52E
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0200F52E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0200F52E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200F4C4

	thumb_func_start sub_0200F534
sub_0200F534: ; 0x0200F534
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0200F54C
	add r0, r1, #0
	bl sub_0200F550
	cmp r0, #1
	bne _0200F54C
	mov r0, #0
	str r0, [r4, #0]
_0200F54C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200F534

	thumb_func_start sub_0200F550
sub_0200F550: ; 0x0200F550
	push {r3, lr}
	ldr r1, [r0, #0]
	lsl r2, r1, #2
	ldr r1, _0200F560 ; =0x020E5074
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0200F560: .word 0x020E5074
	thumb_func_end sub_0200F550

	thumb_func_start sub_0200F564
sub_0200F564: ; 0x0200F564
	push {r3, lr}
	cmp r0, #4
	bhi _0200F5C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0200F576: ; jump table
	.short _0200F580 - _0200F576 - 2 ; case 0
	.short _0200F58E - _0200F576 - 2 ; case 1
	.short _0200F59C - _0200F576 - 2 ; case 2
	.short _0200F5AA - _0200F576 - 2 ; case 3
	.short _0200F5B8 - _0200F576 - 2 ; case 4
_0200F580:
	mov r2, #1
	add r0, r1, #0
	mov r1, #0
	add r3, r2, #0
	bl sub_0200F5C8
	pop {r3, pc}
_0200F58E:
	add r0, r1, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F5C8
	pop {r3, pc}
_0200F59C:
	mov r2, #1
	add r0, r1, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_0200F5C8
	pop {r3, pc}
_0200F5AA:
	add r0, r1, #0
	mov r1, #1
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F5C8
	pop {r3, pc}
_0200F5B8:
	add r0, r1, #0
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl sub_0200F5C8
_0200F5C4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200F564

	thumb_func_start sub_0200F5C8
sub_0200F5C8: ; 0x0200F5C8
	str r1, [r0, #0]
	str r2, [r0, #4]
	str r3, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	bx lr
	thumb_func_end sub_0200F5C8

	thumb_func_start sub_0200F5D4
sub_0200F5D4: ; 0x0200F5D4
	str r1, [r0, #0]
	str r2, [r0, #4]
	ldr r1, [sp]
	str r3, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	str r1, [r0, #0x10]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x1c]
	ldr r1, [sp, #0x14]
	str r1, [r0, #0x20]
	ldr r1, _0200F5FC ; =0xFFFFFFF0
	add r1, sp
	ldrh r1, [r1, #0x28]
	strh r1, [r0, #0x24]
	bx lr
	; .align 2, 0
_0200F5FC: .word 0xFFFFFFF0
	thumb_func_end sub_0200F5D4

	thumb_func_start sub_0200F600
sub_0200F600: ; 0x0200F600
	mov r3, #0
	ldr r1, _0200F618 ; =sub_0200F764
	add r2, r3, #0
_0200F606:
	str r2, [r0, #0]
	str r1, [r0, #8]
	str r2, [r0, #0x10]
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #2
	blt _0200F606
	bx lr
	nop
_0200F618: .word sub_0200F764
	thumb_func_end sub_0200F600

	thumb_func_start sub_0200F61C
sub_0200F61C: ; 0x0200F61C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0200F622:
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	blx r1
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0200F622
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200F61C

	thumb_func_start sub_0200F634
sub_0200F634: ; 0x0200F634
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x10
	lsl r4, r3, #2
	str r0, [sp, #8]
	ldr r0, [r0, r4]
	add r7, r2, #0
	str r1, [sp]
	cmp r0, #0
	beq _0200F656
	bl GF_AssertFail
_0200F656:
	add r6, r5, #0
	add r6, #8
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _0200F664
	bl GF_AssertFail
_0200F664:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0200F67E
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0200F67E
	ldr r0, _0200F6A4 ; =sub_0200F61C
	add r1, r5, #0
	bl sub_020177BC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
_0200F67E:
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _0200F688
	bl GF_AssertFail
_0200F688:
	ldr r0, [sp]
	cmp r7, #0
	str r0, [r5, r4]
	beq _0200F694
	str r7, [r6, r4]
	b _0200F698
_0200F694:
	ldr r0, _0200F6A8 ; =sub_0200F764
	str r0, [r6, r4]
_0200F698:
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0200F6A4: .word sub_0200F61C
_0200F6A8: .word sub_0200F764
	thumb_func_end sub_0200F634

	thumb_func_start sub_0200F6AC
sub_0200F6AC: ; 0x0200F6AC
	push {r3, r4, r5, lr}
	lsl r4, r1, #2
	add r5, r0, #0
	mov r1, #0
	add r0, r5, r4
	str r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0200F6C8
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0200F6C8
	bl sub_020177A4
_0200F6C8:
	ldr r1, _0200F6D4 ; =sub_0200F764
	add r0, r5, r4
	str r1, [r0, #8]
	mov r0, #0
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0200F6D4: .word sub_0200F764
	thumb_func_end sub_0200F6AC

	thumb_func_start sub_0200F6D8
sub_0200F6D8: ; 0x0200F6D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [sp, #0x18]
	mov r1, #0x10
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018184
	add r1, r0, #0
	str r5, [r1, #0]
	str r4, [r1, #4]
	mov r2, #1
	str r6, [r1, #8]
	ldr r0, _0200F700 ; =sub_0200F728
	lsl r2, r2, #0xa
	str r7, [r1, #0xc]
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200F700: .word sub_0200F728
	thumb_func_end sub_0200F6D8

	thumb_func_start sub_0200F704
sub_0200F704: ; 0x0200F704
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #8
	bl sub_02018184
	add r1, r0, #0
	mov r2, #1
	str r5, [r1, #0]
	ldr r0, _0200F724 ; =sub_0200F748
	lsl r2, r2, #0xa
	str r4, [r1, #4]
	bl sub_0200DA3C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0200F724: .word sub_0200F748
	thumb_func_end sub_0200F704

	thumb_func_start sub_0200F728
sub_0200F728: ; 0x0200F728
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0200F634
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200F728

	thumb_func_start sub_0200F748
sub_0200F748: ; 0x0200F748
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl sub_0200F6AC
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200F748

	thumb_func_start sub_0200F764
sub_0200F764: ; 0x0200F764
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200F764

	thumb_func_start sub_0200F768
sub_0200F768: ; 0x0200F768
	ldr r2, _0200F778 ; =0x0000FFFF
	cmp r1, r2
	bne _0200F774
	mov r1, #0x15
	lsl r1, r1, #4
	ldrh r1, [r0, r1]
_0200F774:
	add r0, r1, #0
	bx lr
	; .align 2, 0
_0200F778: .word 0x0000FFFF
	thumb_func_end sub_0200F768

	thumb_func_start sub_0200F77C
sub_0200F77C: ; 0x0200F77C
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _0200F788
	add r2, r0, #0
	add r2, #0x14
	b _0200F78C
_0200F788:
	add r2, r0, #0
	add r2, #0x44
_0200F78C:
	ldr r1, [r2, #0x28]
	cmp r1, #1
	bne _0200F796
	ldrh r0, [r2, #0x24]
	bx lr
_0200F796:
	mov r1, #0x15
	lsl r1, r1, #4
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200F77C

	thumb_func_start sub_0200F7A0
sub_0200F7A0: ; 0x0200F7A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x10]
	mov r1, #0
	bl sub_0200F44C
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end sub_0200F7A0

	thumb_func_start sub_0200F7B4
sub_0200F7B4: ; 0x0200F7B4
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bne _0200F7DA
	ldrh r2, [r1, #0x24]
	ldr r0, _0200F7DC ; =0x00007FFF
	cmp r2, r0
	beq _0200F7CA
	cmp r2, #0
	bne _0200F7DA
_0200F7CA:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bne _0200F7DA
	mov r2, #1
	ldr r0, _0200F7E0 ; =sub_0200F7A0
	lsl r2, r2, #0xa
	bl sub_0200DA3C
_0200F7DA:
	pop {r3, pc}
	; .align 2, 0
_0200F7DC: .word 0x00007FFF
_0200F7E0: .word sub_0200F7A0
	thumb_func_end sub_0200F7B4

	thumb_func_start sub_0200F7E4
sub_0200F7E4: ; 0x0200F7E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _0200F80C
	ldrh r1, [r4, #0x24]
	ldr r0, _0200F810 ; =0x00007FFF
	cmp r1, r0
	beq _0200F7FA
	cmp r1, #0
	bne _0200F80C
_0200F7FA:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _0200F80C
	ldr r0, [r4, #0x10]
	bl sub_0200F344
	ldr r0, [r4, #0x10]
	bl sub_0200F32C
_0200F80C:
	pop {r4, pc}
	nop
_0200F810: .word 0x00007FFF
	thumb_func_end sub_0200F7E4

	thumb_func_start sub_0200F814
sub_0200F814: ; 0x0200F814
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_0200F81E:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0200F81E
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0
	mov r2, #0x30
	bl memset
	add r0, r4, #0
	add r0, #0x44
	mov r1, #0
	mov r2, #0x30
	bl memset
	add r2, r4, #0
	add r2, #0x74
	mov r1, #0x18
	mov r0, #0
_0200F846:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0200F846
	add r4, #0x8c
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc0
	bl memset
	pop {r4, pc}
	thumb_func_end sub_0200F814

	.rodata


	.global Unk_020E5074
Unk_020E5074: ; 0x020E5074
	.incbin "incbin/arm9_rodata.bin", 0x434, 0xA8



	.bss


	.global Unk_021BF474
Unk_021BF474: ; 0x021BF474
	.space 0x154

