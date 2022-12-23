	.include "macros/function.inc"
	.include "overlay097/ov97_0222D30C.inc"

	

	.text


	thumb_func_start ov97_0222D30C
ov97_0222D30C: ; 0x0222D30C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #1
	ldr r0, _0222D340 ; =0x000029F0
	bne _0222D32C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222D33C
	add r0, r4, #0
	add r0, #0x18
	mov r1, #1
	bl sub_0200E7FC
	ldr r1, _0222D340 ; =0x000029F0
	str r0, [r4, r1]
	pop {r4, pc}
_0222D32C:
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222D336
	bl sub_0200EBA0
_0222D336:
	ldr r0, _0222D340 ; =0x000029F0
	mov r1, #0
	str r1, [r4, r0]
_0222D33C:
	pop {r4, pc}
	nop
_0222D340: .word 0x000029F0
	thumb_func_end ov97_0222D30C

	thumb_func_start ov97_0222D344
ov97_0222D344: ; 0x0222D344
	ldr r3, _0222D348 ; =ov97_0222D30C
	bx r3
	; .align 2, 0
_0222D348: .word ov97_0222D30C
	thumb_func_end ov97_0222D344

	thumb_func_start ov97_0222D34C
ov97_0222D34C: ; 0x0222D34C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0200682C
	add r7, r0, #0
	bl ov97_02237DA0
	ldr r0, [r7, #0x7c]
	cmp r0, #0
	beq _0222D362
	bl sub_02013A3C
_0222D362:
	ldr r0, [r7, #0x78]
	cmp r0, #0
	beq _0222D370
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
_0222D370:
	add r0, r7, #0
	add r0, #0x18
	bl sub_0201ACF4
	add r0, r7, #0
	add r0, #0x18
	bl sub_0201A8FC
	add r0, r7, #0
	add r0, #0x58
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222D39C
	add r0, r7, #0
	add r0, #0x58
	bl sub_0201ACF4
	add r0, r7, #0
	add r0, #0x58
	bl sub_0201A8FC
_0222D39C:
	add r5, r7, #0
	mov r6, #0
	add r4, r7, #0
	add r5, #0x28
_0222D3A4:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0222D3B6
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
_0222D3B6:
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #3
	blt _0222D3A4
	ldr r0, [r7, #0]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r7, #0]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r7, #0]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r7, #0]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r7, #0]
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0222D34C

	thumb_func_start ov97_0222D3E8
ov97_0222D3E8: ; 0x0222D3E8
	push {r3, lr}
	sub sp, #8
	bl ov97_02237A20
	bl ov97_02237A74
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0xa
	mov r2, #7
	mov r3, #9
	bl ov97_02237B0C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov97_0222D3E8

	thumb_func_start ov97_0222D40C
ov97_0222D40C: ; 0x0222D40C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0222D432
	str r1, [sp]
	ldr r1, _0222D440 ; =0x000005C4
	mov r0, #0
	ldr r1, [r4, r1]
	mov r2, #0x80
	mov r3, #0x64
	bl ov97_02237D14
	ldr r1, _0222D440 ; =0x000005C4
	add sp, #4
	str r0, [r4, r1]
	pop {r3, r4, pc}
_0222D432:
	ldr r0, _0222D440 ; =0x000005C4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0222D440: .word 0x000005C4
	thumb_func_end ov97_0222D40C

	thumb_func_start ov97_0222D444
ov97_0222D444: ; 0x0222D444
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0222D45A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200DC9C
_0222D45A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_0222D444

	thumb_func_start ov97_0222D45C
ov97_0222D45C: ; 0x0222D45C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0222D472
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200E084
_0222D472:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_0222D45C

	thumb_func_start ov97_0222D474
ov97_0222D474: ; 0x0222D474
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _0222D4CC ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #2
	beq _0222D492
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #3
	bl ov97_0222DE78
_0222D492:
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	ldr r0, _0222D4CC ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #2
	beq _0222D4C2
	add r0, r4, #0
	mov r1, #0xf
	bl ov97_0222D200
	ldr r1, _0222D4D0 ; =0x00001C20
	ldr r0, _0222D4D4 ; =0x00000434
	str r1, [r4, r0]
	bl sub_02039734
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	mov r0, #7
	pop {r3, r4, r5, pc}
_0222D4C2:
	mov r0, #0x13
	add r4, #0x84
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_0222D4CC: .word 0x000015D4
_0222D4D0: .word 0x00001C20
_0222D4D4: .word 0x00000434
	thumb_func_end ov97_0222D474

	thumb_func_start ov97_0222D4D8
ov97_0222D4D8: ; 0x0222D4D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0x80
	ldr r1, [r0, #0]
	cmp r1, #1
	bne _0222D4EE
	mov r0, #0x31
	pop {r3, r4, r5, pc}
_0222D4EE:
	sub r0, r1, #2
	cmp r0, #2
	bhi _0222D4F8
	mov r0, #0x31
	pop {r3, r4, r5, pc}
_0222D4F8:
	cmp r1, #5
	bne _0222D500
	mov r0, #0x31
	pop {r3, r4, r5, pc}
_0222D500:
	ldr r0, _0222D554 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D510
	ldr r0, _0222D558 ; =0x00000438
	ldr r0, [r4, r0]
	bl ov97_0222D234
_0222D510:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #6
	bl ov97_0222DE78
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	ldr r0, _0222D554 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D53E
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D40C
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
_0222D53E:
	ldr r0, _0222D554 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D550
	mov r0, #0xab
	bl sub_020364F0
	mov r0, #9
	pop {r3, r4, r5, pc}
_0222D550:
	mov r0, #0x15
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222D554: .word 0x000015D4
_0222D558: .word 0x00000438
	thumb_func_end ov97_0222D4D8

	thumb_func_start ov97_0222D55C
ov97_0222D55C: ; 0x0222D55C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _0222D5C0 ; =0x000015D4
	add r5, r4, #0
	add r6, r4, #0
	ldr r0, [r4, r0]
	add r5, #0xdc
	add r6, #0x8c
	cmp r0, #1
	beq _0222D57A
	cmp r0, #3
	beq _0222D5A0
	b _0222D5BA
_0222D57A:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl ov97_0222D2B8
	mov r2, #0xd6
	add r1, r0, #0
	add r0, r5, #0
	lsl r2, r2, #2
	bl memcpy
	add r0, r4, #0
	add r4, #0xdc
	add r0, #0x8c
	add r1, r4, #0
	mov r2, #0x56
	bl ov97_02238324
	b _0222D5BA
_0222D5A0:
	ldr r7, _0222D5C4 ; =0x000005D4
	mov r2, #0xd6
	add r1, r4, r7
	add r0, r5, #0
	add r1, #0x50
	lsl r2, r2, #2
	bl memcpy
	add r0, r6, #0
	add r1, r4, r7
	mov r2, #0x50
	bl memcpy
_0222D5BA:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222D5C0: .word 0x000015D4
_0222D5C4: .word 0x000005D4
	thumb_func_end ov97_0222D55C

	thumb_func_start ov97_0222D5C8
ov97_0222D5C8: ; 0x0222D5C8
	push {r3, lr}
	ldrh r1, [r0]
	cmp r1, #3
	bgt _0222D5E0
	cmp r1, #1
	blt _0222D610
	beq _0222D5F2
	cmp r1, #2
	beq _0222D5F2
	cmp r1, #3
	beq _0222D5E8
	b _0222D610
_0222D5E0:
	cmp r1, #0xd
	bne _0222D610
	mov r0, #1
	pop {r3, pc}
_0222D5E8:
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _0222D610
	mov r0, #1
	pop {r3, pc}
_0222D5F2:
	add r0, #8
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	cmp r0, #3
	blt _0222D604
	cmp r0, #0xe
	ble _0222D60C
_0222D604:
	cmp r0, #0x40
	blt _0222D610
	cmp r0, #0x47
	bgt _0222D610
_0222D60C:
	mov r0, #1
	pop {r3, pc}
_0222D610:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_0222D5C8

	thumb_func_start ov97_0222D614
ov97_0222D614: ; 0x0222D614
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222D64C ; =0x000029EC
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _0222D626
	mov r1, #0
	sub r0, r0, #4
	str r1, [r4, r0]
_0222D626:
	bl ov97_0223847C
	sub r0, r0, #2
	cmp r0, #1
	bhi _0222D648
	add r0, r4, #0
	add r0, #0xdc
	bl ov97_0222D5C8
	cmp r0, #1
	beq _0222D642
	ldr r0, _0222D650 ; =0x0000061B
	bl sub_02005748
_0222D642:
	ldr r0, _0222D654 ; =0x000029E8
	mov r1, #0
	str r1, [r4, r0]
_0222D648:
	pop {r4, pc}
	nop
_0222D64C: .word 0x000029EC
_0222D650: .word 0x0000061B
_0222D654: .word 0x000029E8
	thumb_func_end ov97_0222D614

	thumb_func_start ov97_0222D658
ov97_0222D658: ; 0x0222D658
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r5, r0, #0
	str r0, [sp]
	add r4, #0x8c
	add r0, r6, #0
	add r5, #0xdc
	bl sub_02006840
	ldr r7, [r0, #8]
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0222D684
	mov r6, #0
	b _0222D6B0
_0222D684:
	mov r1, #0x35
	add r2, r4, #0
	mov r0, #0
	lsl r1, r1, #4
	strb r0, [r5, r1]
	add r2, #0x4e
	ldrb r2, [r2]
	mov r6, #1
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	bne _0222D69E
	sub r1, #8
	strb r0, [r5, r1]
_0222D69E:
	add r0, sp, #8
	bl sub_020138A4
	add r0, sp, #8
	bl RTC_ConvertDateToDay
	mov r1, #0xd5
	lsl r1, r1, #2
	str r0, [r5, r1]
_0222D6B0:
	add r0, r7, #0
	bl sub_0202442C
	add r4, #0x4c
	ldrh r1, [r4]
	str r0, [sp, #4]
	bl sub_0202DE5C
	cmp r6, #0
	bne _0222D6D0
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	bl sub_0202DB2C
	b _0222D6D8
_0222D6D0:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_0202DBAC
_0222D6D8:
	add r0, r7, #0
	bl ov97_0223846C
	ldr r1, _0222D6F0 ; =0x000029EC
	ldr r0, [sp]
	mov r2, #0
	str r2, [r0, r1]
	ldr r2, _0222D6F4 ; =ov97_0222D614
	sub r1, r1, #4
	str r2, [r0, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222D6F0: .word 0x000029EC
_0222D6F4: .word ov97_0222D614
	thumb_func_end ov97_0222D658

	thumb_func_start ov97_0222D6F8
ov97_0222D6F8: ; 0x0222D6F8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r4, r1, #0
	bl sub_0200682C
	cmp r4, #0
	bne _0222D70C
	mov r5, #4
	b _0222D710
_0222D70C:
	mov r5, #0
	mvn r5, r5
_0222D710:
	ldr r1, [r0, #0x48]
	add r4, r0, #0
	add r4, #0x48
	cmp r1, #0
	bne _0222D73A
	mov r1, #0xa
	str r1, [sp]
	mov r1, #6
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r2, #0
	mov r1, #0x6b
	str r2, [sp, #0xc]
	lsl r1, r1, #2
	str r1, [sp, #0x10]
	ldr r0, [r0, #0]
	add r1, r4, #0
	mov r3, #0x17
	bl sub_0201A7E8
_0222D73A:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	ldr r1, _0222D758 ; =0x0223E5A8
	add r0, r6, #0
	mov r2, #2
	add r3, r4, #0
	str r5, [sp]
	bl ov97_0222DD1C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222D758: .word 0x0223E5A8
	thumb_func_end ov97_0222D6F8

	thumb_func_start ov97_0222D75C
ov97_0222D75C: ; 0x0222D75C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	ldr r0, _0222D794 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D788
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
_0222D788:
	bl sub_02039794
	add r0, r5, #0
	bl ov97_0222DA84
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222D794: .word 0x000015D4
	thumb_func_end ov97_0222D75C

	thumb_func_start ov97_0222D798
ov97_0222D798: ; 0x0222D798
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl sub_0200682C
	add r5, r0, #0
	bl ov97_02237624
	cmp r0, #0
	beq _0222D7B0
	mov r1, #2
	b _0222D7B2
_0222D7B0:
	mov r1, #1
_0222D7B2:
	ldr r0, _0222D80C ; =0x000015D4
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x38
	mov r1, #0
	bl ov97_0222D444
	add r4, r5, #0
	ldr r0, [r5, #0x48]
	add r4, #0x48
	cmp r0, #0
	bne _0222D7EA
	mov r0, #0xa
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x6b
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r3, #0x17
	bl sub_0201A7E8
_0222D7EA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r2, #2
	ldr r1, _0222D810 ; =0x0223E598
	add r0, r6, #0
	add r3, r4, #0
	str r2, [sp]
	bl ov97_0222DD1C
	mov r0, #5
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0222D80C: .word 0x000015D4
_0222D810: .word 0x0223E598
	thumb_func_end ov97_0222D798

	thumb_func_start ov97_0222D814
ov97_0222D814: ; 0x0222D814
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _0222D87C ; =0x000015D4
	mov r1, #4
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x38
	mov r1, #0
	bl ov97_0222D444
	add r5, r4, #0
	ldr r0, [r4, #0x48]
	add r5, #0x48
	cmp r0, #0
	bne _0222D85A
	mov r0, #0xa
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x6b
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r5, #0
	mov r3, #0x17
	bl sub_0201A7E8
_0222D85A:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r0, #0x4e
	str r0, [sp]
	ldr r1, _0222D880 ; =0x0223E568
	add r0, r6, #0
	mov r2, #2
	add r3, r5, #0
	bl ov97_0222DD1C
	mov r0, #5
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222D87C: .word 0x000015D4
_0222D880: .word 0x0223E568
	thumb_func_end ov97_0222D814

	thumb_func_start ov97_0222D884
ov97_0222D884: ; 0x0222D884
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _0222D8EC ; =0x000015D4
	mov r1, #3
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x38
	mov r1, #0
	bl ov97_0222D444
	add r5, r4, #0
	ldr r0, [r4, #0x48]
	add r5, #0x48
	cmp r0, #0
	bne _0222D8CA
	mov r0, #0xa
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x6b
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r5, #0
	mov r3, #0x17
	bl sub_0201A7E8
_0222D8CA:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r0, #0x4d
	str r0, [sp]
	ldr r1, _0222D8F0 ; =0x0223E578
	add r0, r6, #0
	mov r2, #2
	add r3, r5, #0
	bl ov97_0222DD1C
	mov r0, #5
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222D8EC: .word 0x000015D4
_0222D8F0: .word 0x0223E578
	thumb_func_end ov97_0222D884

	thumb_func_start ov97_0222D8F4
ov97_0222D8F4: ; 0x0222D8F4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r1, [r0, #0x48]
	add r4, #0x48
	cmp r1, #0
	bne _0222D928
	mov r1, #0xa
	str r1, [sp]
	mov r1, #6
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r2, #0
	mov r1, #0x6b
	str r2, [sp, #0xc]
	lsl r1, r1, #2
	str r1, [sp, #0x10]
	ldr r0, [r0, #0]
	add r1, r4, #0
	mov r3, #0x17
	bl sub_0201A7E8
_0222D928:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r0, #4
	str r0, [sp]
	ldr r1, _0222D948 ; =0x0223E588
	add r0, r5, #0
	mov r2, #2
	add r3, r4, #0
	bl ov97_0222DD1C
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_0222D948: .word 0x0223E588
	thumb_func_end ov97_0222D8F4

	thumb_func_start ov97_0222D94C
ov97_0222D94C: ; 0x0222D94C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	bl sub_02039794
	ldr r0, _0222D980 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D978
	bl ov97_0222D2DC
_0222D978:
	add r0, r5, #0
	bl ov97_0222DA84
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222D980: .word 0x000015D4
	thumb_func_end ov97_0222D94C

	thumb_func_start ov97_0222D984
ov97_0222D984: ; 0x0222D984
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #3
	bl ov97_0222DE78
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	ldr r0, _0222D9B8 ; =0x0223F1A8
	mov r1, #0x25
	str r1, [r0, #0]
	mov r0, #0x20
	pop {r3, r4, r5, pc}
	nop
_0222D9B8: .word 0x0223F1A8
	thumb_func_end ov97_0222D984

	thumb_func_start ov97_0222D9BC
ov97_0222D9BC: ; 0x0222D9BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	sub r0, r0, #2
	cmp r0, #2
	bhi _0222D9D4
	mov r0, #0x31
	pop {r3, r4, r5, pc}
_0222D9D4:
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	add r4, #0x18
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #7
	bl ov97_0222DE78
	mov r0, #0x21
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov97_0222D9BC

	thumb_func_start ov97_0222D9F0
ov97_0222D9F0: ; 0x0222D9F0
	push {r3, lr}
	ldr r0, _0222DA14 ; =0x0223F1A8
	ldr r0, [r0, #0]
	cmp r0, #0x28
	beq _0222DA02
	cmp r0, #0x29
	beq _0222DA02
	cmp r0, #0x30
	bne _0222DA10
_0222DA02:
	bl ov97_022389C8
	cmp r0, #0
	beq _0222DA10
	ldr r0, _0222DA14 ; =0x0223F1A8
	mov r1, #0x2b
	str r1, [r0, #0]
_0222DA10:
	mov r0, #0x24
	pop {r3, pc}
	; .align 2, 0
_0222DA14: .word 0x0223F1A8
	thumb_func_end ov97_0222D9F0

	thumb_func_start ov97_0222DA18
ov97_0222DA18: ; 0x0222DA18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #3
	bl ov97_0222DE78
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	mov r1, #1
	ldr r0, _0222DA5C ; =0x000015E0
	lsl r1, r1, #0xc
	str r1, [r4, r0]
	ldr r0, _0222DA60 ; =0x0000267C
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0x1b
	pop {r3, r4, r5, pc}
	nop
_0222DA5C: .word 0x000015E0
_0222DA60: .word 0x0000267C
	thumb_func_end ov97_0222DA18

	thumb_func_start ov97_0222DA64
ov97_0222DA64: ; 0x0222DA64
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200682C
	add r0, #0x38
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	mov r1, #0xc4
	mov r2, #0
	bl ov97_0222DDD0
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222DA64

	thumb_func_start ov97_0222DA84
ov97_0222DA84: ; 0x0222DA84
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl sub_0200682C
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_0202442C
	ldr r0, _0222DB00 ; =0x000005C8
	ldr r1, [r5, r0]
	cmp r1, #0x1e
	bne _0222DAAA
	mov r1, #1
	add r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov97_02230224
_0222DAAA:
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0
	bl ov97_0222D444
	add r4, r5, #0
	ldr r0, [r5, #0x38]
	add r4, #0x38
	cmp r0, #0
	bne _0222DADE
	mov r0, #9
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x49
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r3, #0xf
	bl sub_0201A7E8
_0222DADE:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r0, #1
	str r0, [sp]
	ldr r1, _0222DB04 ; =0x0223E5F0
	add r0, r6, #0
	mov r2, #4
	add r3, r4, #0
	bl ov97_0222DD1C
	mov r0, #4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222DB00: .word 0x000005C8
_0222DB04: .word 0x0223E5F0
	thumb_func_end ov97_0222DA84

	thumb_func_start ov97_0222DB08
ov97_0222DB08: ; 0x0222DB08
	push {r4, lr}
	bl sub_0200682C
	ldr r1, _0222DB38 ; =0x000005C8
	add r4, r0, #0
	ldr r2, [r4, r1]
	cmp r2, #0x1e
	bne _0222DB22
	mov r2, #1
	add r1, r1, #4
	str r2, [r4, r1]
	bl ov97_02230224
_0222DB22:
	ldr r2, _0222DB3C ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x36
	mov r3, #2
	bl ov97_02237790
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0222DB38: .word 0x000005C8
_0222DB3C: .word 0x000015D8
	thumb_func_end ov97_0222DB08

	thumb_func_start ov97_0222DB40
ov97_0222DB40: ; 0x0222DB40
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _0222DB70 ; =0x000005C8
	ldr r1, [r4, r0]
	cmp r1, #0x1e
	bne _0222DB56
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
_0222DB56:
	mov r0, #1
	bl ov97_02237784
	ldr r2, _0222DB74 ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x35
	mov r3, #2
	bl ov97_02237790
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	; .align 2, 0
_0222DB70: .word 0x000005C8
_0222DB74: .word 0x000015D8
	thumb_func_end ov97_0222DB40

	thumb_func_start ov97_0222DB78
ov97_0222DB78: ; 0x0222DB78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r3, #0
	ldr r3, _0222DBC0 ; =0x0223D73C
	add r7, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	lsr r1, r6, #0xb
	str r0, [r2, #0]
	add r0, sp, #0
	strb r1, [r0, #0x12]
	lsr r1, r5, #0xe
	strb r1, [r0, #0x13]
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r2, ip
	mov r3, #0
	bl sub_020183C4
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DBC0: .word 0x0223D73C
	thumb_func_end ov97_0222DB78

	thumb_func_start ov97_0222DBC4
ov97_0222DBC4: ; 0x0222DBC4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, _0222DC1C ; =0x0223D72C
	add r3, sp, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	mov r1, #0
	mov r2, #0xf
	add r0, r4, #0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl ov97_0222DB78
	mov r1, #1
	mov r2, #0x3e
	add r0, r4, #0
	lsl r2, r2, #0xa
	lsl r3, r1, #0xf
	bl ov97_0222DB78
	mov r2, #0xe
	add r0, r4, #0
	mov r1, #4
	lsl r2, r2, #0xa
	mov r3, #0
	bl ov97_0222DB78
	mov r2, #0x1e
	mov r3, #1
	add r0, r4, #0
	mov r1, #5
	lsl r2, r2, #0xa
	lsl r3, r3, #0xe
	bl ov97_0222DB78
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222DC1C: .word 0x0223D72C
	thumb_func_end ov97_0222DBC4

	thumb_func_start ov97_0222DC20
ov97_0222DC20: ; 0x0222DC20
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x20
	mov r2, #4
	str r0, [sp]
	mov r0, #0x56
	add r3, r2, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0
	add r3, #0xfc
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x56
	str r0, [sp, #0xc]
	mov r0, #0x74
	add r2, r4, #0
	mov r3, #5
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x56
	str r0, [sp, #0xc]
	mov r0, #0x74
	mov r1, #2
	add r2, r4, #0
	mov r3, #5
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #8
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_02019E2C
	add r0, r4, #0
	mov r1, #5
	bl sub_02019448
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222DC20

	thumb_func_start ov97_0222DC9C
ov97_0222DC9C: ; 0x0222DC9C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x56
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0
	add r3, r0, #0
	add r2, r1, #0
	add r3, #0x8c
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x56
	str r0, [sp, #0xc]
	mov r0, #0x74
	add r2, r4, #0
	add r3, r1, #0
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x56
	str r0, [sp, #0xc]
	mov r0, #0x74
	mov r1, #2
	add r2, r4, #0
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #8
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019E2C
	add r0, r4, #0
	mov r1, #1
	bl sub_02019448
	add r0, r4, #0
	bl ov97_0222DC20
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222DC9C

	thumb_func_start ov97_0222DD1C
ov97_0222DD1C: ; 0x0222DD1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp]
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0222DD38
	bl sub_02013A3C
_0222DD38:
	add r0, r7, #0
	mov r1, #0x56
	bl sub_02013A04
	str r0, [r4, #0x7c]
	ldr r2, _0222DDC8 ; =0x000001A5
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x56
	bl sub_0200B144
	mov r6, #0
	str r0, [r4, #0x10]
	cmp r7, #0
	ble _0222DD6A
_0222DD56:
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x10]
	ldr r2, [r5, #0]
	ldr r3, [r5, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r5, #8
	cmp r6, r7
	blt _0222DD56
_0222DD6A:
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	ldr r3, _0222DDCC ; =0x0223E5D0
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x7c]
	str r0, [sp, #8]
	add r0, sp, #8
	strh r7, [r0, #0x12]
	ldrh r1, [r0, #0x12]
	strh r1, [r0, #0x10]
	ldr r0, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0222DDA2
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
_0222DDA2:
	mov r1, #0
	add r0, sp, #8
	add r2, r1, #0
	mov r3, #0x56
	bl sub_0200112C
	str r0, [r4, #0x78]
	mov r0, #0
	ldr r2, [sp, #0x40]
	mvn r0, r0
	cmp r2, r0
	beq _0222DDC4
	add r4, #0x18
	ldr r0, [sp]
	add r1, r4, #0
	bl ov97_0222DE78
_0222DDC4:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DDC8: .word 0x000001A5
_0222DDCC: .word 0x0223E5D0
	thumb_func_end ov97_0222DD1C

	thumb_func_start ov97_0222DDD0
ov97_0222DDD0: ; 0x0222DDD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x14]
	add r7, r1, #0
	str r2, [sp, #0x1c]
	bl sub_0200682C
	str r0, [sp, #0x18]
	ldr r0, [r0, #4]
	mov r5, #0
	bl sub_0202442C
	ldr r1, _0222DE74 ; =0x0223E568
	ldr r4, [sp, #0x18]
	ldr r2, [r1, #0x50]
	ldr r1, [r1, #0x54]
	add r4, #0x28
	add r5, r5, #1
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	bl sub_0202DD88
	cmp r0, #0
	beq _0222DE14
	lsl r6, r5, #3
	add r0, sp, #0x20
	add r1, r0, r6
	ldr r0, _0222DE74 ; =0x0223E568
	add r5, r5, #1
	ldr r3, [r0, #0x58]
	ldr r2, [r0, #0x5c]
	add r0, sp, #0x20
	str r3, [r0, r6]
	str r2, [r1, #4]
_0222DE14:
	lsl r6, r5, #3
	add r0, sp, #0x20
	add r1, r0, r6
	ldr r0, _0222DE74 ; =0x0223E568
	ldr r3, [r0, #0x60]
	ldr r2, [r0, #0x64]
	add r0, sp, #0x20
	str r3, [r0, r6]
	str r2, [r1, #4]
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0222DE52
	mov r0, #7
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #1
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r2, #0
	lsl r0, r7, #0x10
	str r2, [sp, #0xc]
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r3, #8
	bl sub_0201A7E8
_0222DE52:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r5, #1
	add r3, r4, #0
	bl ov97_0222DD1C
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DE74: .word 0x0223E568
	thumb_func_end ov97_0222DDD0

	thumb_func_start ov97_0222DE78
ov97_0222DE78: ; 0x0222DE78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r2, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r2, _0222DF08 ; =0x000001A5
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x56
	bl sub_0200B144
	str r0, [r4, #0x10]
	mov r0, #0x56
	bl sub_0200B358
	str r0, [r4, #0xc]
	mov r0, #1
	mov r1, #6
	bl sub_02002DF8
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0201ADA4
	ldr r6, [r4, #0x14]
	cmp r6, #0
	bne _0222DEC0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r2, r7, #0
	mov r3, #0x56
	bl sub_0200B29C
	add r6, r0, #0
_0222DEC0:
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x68]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, _0222DF0C ; =0x0001020F
	add r2, r6, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r5, #0
	bl sub_0201D78C
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0222DEE6
	add r0, r6, #0
	bl sub_020237BC
_0222DEE6:
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #2
	bl sub_0200E060
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	ldr r0, [r4, #0xc]
	bl sub_0200B3F0
	mov r0, #0xff
	str r0, [r4, #0x68]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DF08: .word 0x000001A5
_0222DF0C: .word 0x0001020F
	thumb_func_end ov97_0222DE78

	thumb_func_start ov97_0222DF10
ov97_0222DF10: ; 0x0222DF10
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0200682C
	mov r0, #0x25
	mov r1, #0x56
	bl sub_02023790
	add r1, r6, #0
	mov r2, #0x24
	add r4, r0, #0
	bl sub_02023D8C
	mov r0, #0
	mov r1, #6
	bl sub_02002DF8
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222DF6C ; =0x0001020F
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222DF6C: .word 0x0001020F
	thumb_func_end ov97_0222DF10

	thumb_func_start ov97_0222DF70
ov97_0222DF70: ; 0x0222DF70
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0200682C
	ldr r0, [r0, #0x78]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0222DF94
	add r0, r0, #1
	cmp r4, r0
	beq _0222DFCA
	b _0222DFAE
_0222DF94:
	ldr r0, _0222DFCC ; =0x000005DC
	bl sub_02005748
	cmp r6, #0
	beq _0222DFCA
	add r0, r7, #0
	blx r6
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222DFCA
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0222DFAE:
	ldr r0, _0222DFCC ; =0x000005DC
	bl sub_02005748
	cmp r4, #0
	beq _0222DFCA
	ldr r0, _0222DFD0 ; =0x0223F1A8
	str r4, [r0, #0x10]
	add r0, r7, #0
	blx r4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222DFCA
	str r0, [r5, #0]
_0222DFCA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DFCC: .word 0x000005DC
_0222DFD0: .word 0x0223F1A8
	thumb_func_end ov97_0222DF70

	thumb_func_start ov97_0222DFD4
ov97_0222DFD4: ; 0x0222DFD4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201D710
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x56
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x20
	mov r2, #0x56
	bl sub_02002E7C
	ldr r0, [r4, #8]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x56
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #1
	mov r3, #2
	bl sub_0200DD0C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x56
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DAA4
	mov r0, #5
	ldr r1, _0222E07C ; =0x00007D8C
	lsl r0, r0, #0x18
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222E058
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	add r1, r4, #0
	str r2, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x18
	mov r3, #2
	bl sub_0201A7E8
_0222E058:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #0
	bl ov97_0222DE78
	add r0, r5, #0
	mov r1, #0xc4
	mov r2, #0
	bl ov97_0222DDD0
	ldr r0, [r4, #0]
	bl ov97_0222DC9C
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0222E07C: .word 0x00007D8C
	thumb_func_end ov97_0222DFD4

	thumb_func_start ov97_0222E080
ov97_0222E080: ; 0x0222E080
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r1, _0222E12C ; =0x000015E0
	add r0, r6, #0
	add r1, r4, r1
	bl ov97_02238EAC
	cmp r0, #4
	bhi _0222E128
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E0A6: ; jump table
	.short _0222E128 - _0222E0A6 - 2 ; case 0
	.short _0222E0B0 - _0222E0A6 - 2 ; case 1
	.short _0222E0DC - _0222E0A6 - 2 ; case 2
	.short _0222E0DC - _0222E0A6 - 2 ; case 3
	.short _0222E0F0 - _0222E0A6 - 2 ; case 4
_0222E0B0:
	ldr r1, _0222E130 ; =0x00001658
	add r0, r4, #0
	mov r2, #0xea
	add r0, #0x8c
	add r1, r4, r1
	lsl r2, r2, #2
	bl memcpy
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	add r0, r4, #0
	mov r1, #0x1b
	add r0, #0x84
	str r1, [r0, #0]
	mov r0, #0x13
	str r0, [r5, #0]
	ldr r0, _0222E134 ; =0x000015DC
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0222E0DC:
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	ldr r0, _0222E134 ; =0x000015DC
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0x11
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_0222E0F0:
	mov r0, #0x9a
	lsl r0, r0, #6
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x9a
	lsl r0, r0, #6
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02019EBC
	ldr r0, _0222E138 ; =0x000005DC
	bl sub_02005748
	add r0, r6, #0
	mov r1, #0xc4
	mov r2, #0
	bl ov97_0222DDD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #3
	str r0, [r5, #0]
_0222E128:
	pop {r4, r5, r6, pc}
	nop
_0222E12C: .word 0x000015E0
_0222E130: .word 0x00001658
_0222E134: .word 0x000015DC
_0222E138: .word 0x000005DC
	thumb_func_end ov97_0222E080

	thumb_func_start ov97_0222E13C
ov97_0222E13C: ; 0x0222E13C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x5c
	add r5, r0, #0
	ldr r0, _0222E1CC ; =0x0000266C
	ldr r4, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0222E150
	mov r4, #0xb
_0222E150:
	add r0, r5, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_02019EBC
	mov r0, #0x56
	bl sub_0200B358
	mov r1, #2
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, _0222E1D0 ; =0x00002670
	mov r1, #0
	ldr r2, [r5, r2]
	mov r3, #5
	add r6, r0, #0
	bl sub_0200B60C
	mov r0, #0x1f
	mov r1, #0x9a
	str r0, [sp]
	mov r0, #3
	lsl r1, r1, #6
	str r0, [sp, #4]
	ldr r3, _0222E1D4 ; =0x000002B7
	add r0, sp, #8
	add r1, r5, r1
	mov r2, #1
	bl ov97_02237808
	add r0, sp, #8
	mov r1, #0x18
	mov r2, #0x10
	mov r3, #0x64
	bl ov97_02237858
	add r0, sp, #8
	mov r1, #0
	mov r2, #1
	bl ov97_02237860
	str r6, [sp, #0x1c]
	str r4, [sp]
	mov r2, #4
	ldr r0, [r5, #0]
	add r1, sp, #8
	add r3, r2, #0
	bl ov97_0223795C
	add r0, r6, #0
	bl sub_0200B3F0
	add sp, #0x5c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222E1CC: .word 0x0000266C
_0222E1D0: .word 0x00002670
_0222E1D4: .word 0x000002B7
	thumb_func_end ov97_0222E13C

	thumb_func_start ov97_0222E1D8
ov97_0222E1D8: ; 0x0222E1D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r1, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #3
	bne _0222E1EE
	mov r4, #0x15
	b _0222E218
_0222E1EE:
	cmp r0, #4
	bne _0222E1F6
	mov r4, #0x19
	b _0222E218
_0222E1F6:
	cmp r0, #2
	bne _0222E1FE
	mov r4, #0x16
	b _0222E218
_0222E1FE:
	cmp r0, #1
	bne _0222E206
	mov r4, #0x1b
	b _0222E218
_0222E206:
	cmp r0, #5
	bne _0222E218
	add r0, r5, #0
	add r1, #0x18
	mov r2, #9
	mov r3, #0x34
	bl ov97_0222E228
	pop {r3, r4, r5, pc}
_0222E218:
	add r0, r5, #0
	add r1, #0x18
	add r2, r4, #0
	mov r3, #0x33
	bl ov97_0222E228
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov97_0222E1D8

	thumb_func_start ov97_0222E228
ov97_0222E228: ; 0x0222E228
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r6, r1, #0
	add r5, r2, #0
	add r7, r3, #0
	bl sub_0200682C
	add r4, r0, #0
	cmp r6, #0
	beq _0222E282
	cmp r5, #0
	beq _0222E282
	ldr r2, _0222E2A8 ; =0x000001A5
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x56
	bl sub_0200B144
	str r0, [sp, #4]
	mov r0, #0x56
	bl sub_0200B358
	ldr r1, [sp, #4]
	add r2, r5, #0
	mov r3, #0x56
	str r0, [sp, #8]
	bl sub_0200B29C
	str r0, [r4, #0x14]
	mov r0, #1
	str r0, [r4, #0x68]
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r5, #0
	bl ov97_0222DE78
	ldr r0, [sp, #8]
	str r7, [r4, #0x74]
	bl sub_0200B3F0
	ldr r0, [sp, #4]
	bl sub_0200B190
	b _0222E2A2
_0222E282:
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0222E2A2
	ldr r0, [r4, #0x14]
	bl sub_020237BC
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x68]
	add sp, #0xc
	ldr r0, [r4, #0x74]
	pop {r4, r5, r6, r7, pc}
_0222E2A2:
	mov r0, #0x32
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E2A8: .word 0x000001A5
	thumb_func_end ov97_0222E228

	thumb_func_start ov97_0222E2AC
ov97_0222E2AC: ; 0x0222E2AC
	push {r3, lr}
	ldr r1, _0222E2D8 ; =0x000015D4
	ldr r0, [r0, r1]
	cmp r0, #4
	bhi _0222E2D4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E2C2: ; jump table
	.short _0222E2D4 - _0222E2C2 - 2 ; case 0
	.short _0222E2CC - _0222E2C2 - 2 ; case 1
	.short _0222E2D4 - _0222E2C2 - 2 ; case 2
	.short _0222E2D4 - _0222E2C2 - 2 ; case 3
	.short _0222E2D4 - _0222E2C2 - 2 ; case 4
_0222E2CC:
	bl ov97_0222D2DC
	bl sub_02039794
_0222E2D4:
	pop {r3, pc}
	nop
_0222E2D8: .word 0x000015D4
	thumb_func_end ov97_0222E2AC

	thumb_func_start ov97_0222E2DC
ov97_0222E2DC: ; 0x0222E2DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov97_022301B0
	mov r0, #3
	mov r1, #0x56
	lsl r2, r0, #0x10
	bl sub_02017FC8
	ldr r1, _0222E384 ; =0x000029F8
	add r0, r5, #0
	mov r2, #0x56
	bl sub_0200681C
	ldr r2, _0222E384 ; =0x000029F8
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x56
	bl sub_02018340
	str r0, [r4, #0]
	bl sub_0201FF00
	bl sub_0201FF68
	bl ov97_02232054
	ldr r0, [r4, #0]
	bl ov97_0222DBC4
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r1, _0222E388 ; =0x00000496
	mov r0, #0xa
	mov r2, #1
	bl sub_02004550
	mov r0, #0x56
	bl ov97_02237520
	bl ov97_02237624
	cmp r0, #0
	beq _0222E358
	ldr r0, _0222E38C ; =0x000015D4
	mov r1, #2
	str r1, [r4, r0]
	ldr r0, _0222E390 ; =0x020E4C40
	ldrb r0, [r0]
	bl sub_02017B70
	mov r0, #1
	bl ov97_02238400
_0222E358:
	ldr r0, _0222E394 ; =0x000005C8
	mov r1, #0x1d
	str r1, [r4, r0]
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #4]
	bl sub_02025E44
	str r0, [r4, #8]
	mov r0, #0xff
	mov r2, #3
	str r0, [r4, #0x68]
	mov r0, #0
	mov r1, #0x5b
	lsl r2, r2, #8
	bl sub_02017FC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222E384: .word 0x000029F8
_0222E388: .word 0x00000496
_0222E38C: .word 0x000015D4
_0222E390: .word 0x020E4C40
_0222E394: .word 0x000005C8
	thumb_func_end ov97_0222E2DC

	thumb_func_start ov97_0222E398
ov97_0222E398: ; 0x0222E398
	push {r4, r5, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, _0222E530 ; =0x00004E21
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r1, #0x56
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xd6
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x27
	bl sub_0200985C
	str r0, [r4, #0x58]
	ldr r0, _0222E530 ; =0x00004E21
	mov r1, #0x56
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0xc]
	add r1, #0xda
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x24
	mov r3, #0
	bl sub_020098B8
	str r0, [r4, #0x5c]
	ldr r0, _0222E530 ; =0x00004E21
	mov r1, #0x56
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xde
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x26
	mov r3, #1
	bl sub_02009918
	str r0, [r4, #0x60]
	ldr r0, _0222E530 ; =0x00004E21
	mov r1, #0x56
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xe2
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x25
	mov r3, #1
	bl sub_02009918
	str r0, [r4, #0x64]
	ldr r0, _0222E534 ; =0x00004E22
	mov r1, #0x56
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xd6
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x27
	mov r3, #1
	bl sub_0200985C
	str r0, [r4, #0x70]
	ldr r0, _0222E534 ; =0x00004E22
	mov r1, #0x56
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0xc]
	add r1, #0xda
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x24
	mov r3, #0
	bl sub_020098B8
	str r0, [r4, #0x74]
	ldr r0, _0222E534 ; =0x00004E22
	mov r1, #0x56
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xde
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x26
	mov r3, #1
	bl sub_02009918
	str r0, [r4, #0x78]
	ldr r0, _0222E534 ; =0x00004E22
	mov r1, #0x56
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xe2
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x25
	mov r3, #1
	bl sub_02009918
	str r0, [r4, #0x7c]
	ldr r0, [r4, #0x58]
	bl sub_0200A328
	ldr r0, [r4, #0x70]
	bl sub_0200A328
	ldr r0, [r4, #0x5c]
	bl sub_0200A640
	ldr r0, [r4, #0x74]
	bl sub_0200A640
	mov r0, #0
	mov r5, #0x4b
	ldr r2, [r4, #0xc]
	ldr r1, _0222E530 ; =0x00004E21
	mvn r0, r0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r5, r5, #2
	ldr r3, [r2, r5]
	str r3, [sp, #0x14]
	add r3, r5, #4
	ldr r3, [r2, r3]
	str r3, [sp, #0x18]
	add r3, r5, #0
	add r3, #8
	ldr r3, [r2, r3]
	add r5, #0xc
	str r3, [sp, #0x1c]
	ldr r2, [r2, r5]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r0, #0x10
	add r2, r1, #0
	bl sub_020093B4
	ldr r2, [r4, #0xc]
	ldr r1, _0222E534 ; =0x00004E22
	mov r0, #0
	mov r5, #0x4b
	add r4, #0x10
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r5, r5, #2
	ldr r3, [r2, r5]
	add r4, #0x24
	str r3, [sp, #0x14]
	add r3, r5, #4
	ldr r3, [r2, r3]
	str r3, [sp, #0x18]
	add r3, r5, #0
	add r3, #8
	ldr r3, [r2, r3]
	add r5, #0xc
	str r3, [sp, #0x1c]
	ldr r2, [r2, r5]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r2, r1, #0
	bl sub_020093B4
	add sp, #0x2c
	pop {r4, r5, pc}
	; .align 2, 0
_0222E530: .word 0x00004E21
_0222E534: .word 0x00004E22
	thumb_func_end ov97_0222E398

	thumb_func_start ov97_0222E538
ov97_0222E538: ; 0x0222E538
	push {r4, lr}
	sub sp, #0x30
	cmp r1, #1
	beq _0222E544
	mov r3, #1
	b _0222E546
_0222E544:
	mov r3, #0
_0222E546:
	ldr r2, [r0, #0xc]
	add r0, #0x10
	ldr r2, [r2, #0]
	str r2, [sp]
	mov r2, #0x24
	mul r2, r3
	add r0, r0, r2
	mov r3, #1
	lsl r3, r3, #0xc
	mov r2, #0
	str r0, [sp, #4]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r0, sp, #0
	strh r2, [r0, #0x20]
	lsl r0, r3, #7
	str r0, [sp, #8]
	mov r0, #0xa
	lsl r2, r3, #5
	str r0, [sp, #0x24]
	mov r0, #0x56
	str r2, [sp, #0xc]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	cmp r1, #2
	bne _0222E584
	lsl r0, r3, #8
	add r0, r2, r0
	str r0, [sp, #0xc]
_0222E584:
	add r0, sp, #0
	bl sub_02021AA0
	add r4, r0, #0
	beq _0222E5AC
	mov r1, #1
	bl sub_02021CC8
	add r0, r4, #0
	mov r1, #0
	bl sub_02021E80
	add r0, r4, #0
	mov r1, #0
	bl sub_02021D6C
	add r0, r4, #0
	mov r1, #1
	bl sub_02021CAC
_0222E5AC:
	add r0, r4, #0
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222E538

	thumb_func_start ov97_0222E5B4
ov97_0222E5B4: ; 0x0222E5B4
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl ov97_0222E538
	ldr r1, _0222E608 ; =0x00003014
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	bl sub_02021DCC
	ldr r0, _0222E608 ; =0x00003014
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021E50
	ldr r0, _0222E608 ; =0x00003014
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0222E608 ; =0x00003014
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021F58
	ldr r0, _0222E608 ; =0x00003014
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_02021CF8
	ldr r0, _0222E608 ; =0x00003014
	ldr r0, [r4, r0]
	bl sub_02021D28
	mov r1, #2
	lsl r1, r1, #0x12
	str r1, [r0, #0]
	mov r1, #6
	lsl r1, r1, #0x10
	str r1, [r0, #4]
	pop {r4, pc}
	; .align 2, 0
_0222E608: .word 0x00003014
	thumb_func_end ov97_0222E5B4

	thumb_func_start ov97_0222E60C
ov97_0222E60C: ; 0x0222E60C
	push {r4, lr}
	mov r1, #2
	add r4, r0, #0
	bl ov97_0222E538
	ldr r1, _0222E660 ; =0x00003060
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #4
	bl sub_02021DCC
	ldr r0, _0222E660 ; =0x00003060
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021E50
	ldr r0, _0222E660 ; =0x00003060
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0222E660 ; =0x00003060
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021F58
	ldr r0, _0222E660 ; =0x00003060
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_02021CF8
	ldr r0, _0222E660 ; =0x00003060
	ldr r0, [r4, r0]
	bl sub_02021D28
	mov r1, #2
	lsl r1, r1, #0x12
	str r1, [r0, #0]
	lsl r1, r1, #1
	str r1, [r0, #4]
	pop {r4, pc}
	nop
_0222E660: .word 0x00003060
	thumb_func_end ov97_0222E60C

	thumb_func_start ov97_0222E664
ov97_0222E664: ; 0x0222E664
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222E678 ; =0x00003014
	ldr r0, [r4, r0]
	bl sub_02021BD4
	ldr r0, _0222E678 ; =0x00003014
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0222E678: .word 0x00003014
	thumb_func_end ov97_0222E664

	thumb_func_start ov97_0222E67C
ov97_0222E67C: ; 0x0222E67C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222E690 ; =0x00003060
	ldr r0, [r4, r0]
	bl sub_02021BD4
	ldr r0, _0222E690 ; =0x00003060
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0222E690: .word 0x00003060
	thumb_func_end ov97_0222E67C

	thumb_func_start ov97_0222E694
ov97_0222E694: ; 0x0222E694
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #2
	ldr r7, _0222E6EC ; =0x00001854
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	lsl r6, r6, #0xc
_0222E6A2:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0222E6B2
	add r1, r6, #0
	bl sub_02021E2C
_0222E6B2:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0222E6BE
	add r1, r6, #0
	bl sub_02021E2C
_0222E6BE:
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E6A2
	ldr r1, _0222E6F0 ; =0x00003014
	ldr r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0222E6D8
	mov r1, #2
	lsl r1, r1, #0xc
	bl sub_02021E2C
_0222E6D8:
	ldr r1, _0222E6F4 ; =0x00003060
	ldr r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0222E6EA
	mov r1, #2
	lsl r1, r1, #0xc
	bl sub_02021E2C
_0222E6EA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E6EC: .word 0x00001854
_0222E6F0: .word 0x00003014
_0222E6F4: .word 0x00003060
	thumb_func_end ov97_0222E694

	thumb_func_start ov97_0222E6F8
ov97_0222E6F8: ; 0x0222E6F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	mov r7, #1
_0222E702:
	add r0, r6, #0
	add r1, r7, #0
	bl ov97_0222E538
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021DCC
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021E50
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E702
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_0222E6F8

	thumb_func_start ov97_0222E734
ov97_0222E734: ; 0x0222E734
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_0222E73E:
	cmp r4, #0x14
	bge _0222E76A
	add r0, r6, #0
	mov r1, #1
	bl ov97_0222E538
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021DCC
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021E50
	b _0222E770
_0222E76A:
	add r0, r5, #0
	add r0, #0x94
	str r7, [r0, #0]
_0222E770:
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E73E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_0222E734

	thumb_func_start ov97_0222E77C
ov97_0222E77C: ; 0x0222E77C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _0222E7B0 ; =0x00001854
	mov r4, #0
	add r5, r6, #0
_0222E786:
	add r0, r6, #0
	mov r1, #2
	bl ov97_0222E538
	ldr r1, _0222E7B0 ; =0x00001854
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_02021DCC
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_02021E50
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E786
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E7B0: .word 0x00001854
	thumb_func_end ov97_0222E77C

	thumb_func_start ov97_0222E7B4
ov97_0222E7B4: ; 0x0222E7B4
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0222E7BC:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0222E7DA
	bl sub_02021BD4
	add r0, r5, #0
	add r0, #0x94
	str r6, [r0, #0]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_0200DA58
_0222E7DA:
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E7BC
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_0222E7B4

	thumb_func_start ov97_0222E7E4
ov97_0222E7E4: ; 0x0222E7E4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0222E80C ; =0x00001890
	add r5, r0, #0
	add r6, r4, #0
_0222E7EE:
	ldr r0, _0222E810 ; =0x00001854
	ldr r0, [r5, r0]
	bl sub_02021BD4
	ldr r0, _0222E810 ; =0x00001854
	str r6, [r5, r0]
	ldr r0, [r5, r7]
	bl sub_0200DA58
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E7EE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E80C: .word 0x00001890
_0222E810: .word 0x00001854
	thumb_func_end ov97_0222E7E4

	thumb_func_start ov97_0222E814
ov97_0222E814: ; 0x0222E814
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	add r5, r0, #0
	str r0, [sp]
	add r0, #0x88
	ldr r3, _0222EA58 ; =0x0223D758
	mov r4, #0
	add r7, sp, #0x64
	str r0, [sp]
	add r2, sp, #0x10
	mov r6, #0xa
_0222E82A:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0222E82A
	ldr r0, [r3, #0]
	str r0, [r2, #0]
_0222E836:
	mov r2, #2
	add r0, r5, #0
	mov r1, #6
	lsl r2, r2, #0x12
	add r0, #0x98
	str r2, [r0, #0]
	add r0, r5, #0
	lsl r1, r1, #0x10
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r5, #0
	lsr r1, r2, #5
	add r0, #0xa4
	str r1, [r0, #0]
	mov r1, #5
	add r0, r5, #0
	lsl r1, r1, #0xc
	add r0, #0xa8
	str r1, [r0, #0]
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r5, #0
	add r1, r2, r1
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r0, r0, #4
	cmp r0, #0
	ble _0222E89C
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0222E8AA
_0222E89C:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0222E8AA:
	bl _f_ftoi
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1, #0]
	cmp r4, #0x32
	ble _0222E8D2
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222E95C
_0222E8D2:
	cmp r4, #0x28
	ble _0222E8EE
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	add r0, r4, #0
	add r0, #0xfa
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222E95C
_0222E8EE:
	cmp r4, #0x1e
	ble _0222E90A
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	add r0, r4, #0
	add r0, #0xf0
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222E95C
_0222E90A:
	cmp r4, #0x19
	ble _0222E926
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	add r0, r4, #0
	add r0, #0xe6
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222E95C
_0222E926:
	cmp r4, #0x14
	ble _0222E942
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	add r0, r4, #0
	add r0, #0xdc
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222E95C
_0222E942:
	add r6, sp, #0x10
	add r3, sp, #0x64
	mov r2, #0xa
_0222E948:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222E948
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	add r0, r5, #0
	ldr r1, [r7, #0]
	add r0, #0xb8
	str r1, [r0, #0]
_0222E95C:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r1, r0, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	bl _d_itod
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _0222EA5C ; =0x66666666
	ldr r1, _0222EA60 ; =0x3FE66666
	bl _d_mul
	bl _d_dtoi
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #0xf
	add r0, #0xc0
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc8
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xcc
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bl sub_0201D2E8
	mov r1, #0xe0
	bl _s32_div_f
	add r1, #0x10
	cmp r1, #0
	ble _0222E9F6
	bl sub_0201D2E8
	mov r1, #0xe0
	bl _s32_div_f
	add r1, #0x10
	lsl r0, r1, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0222EA10
_0222E9F6:
	bl sub_0201D2E8
	mov r1, #0xe0
	bl _s32_div_f
	add r1, #0x10
	lsl r0, r1, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0222EA10:
	bl _f_ftoi
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #4
	bl sub_02021C50
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0222EA64 ; =ov97_0222EEB8
	ldr r1, [sp]
	mov r2, #6
	bl sub_0200D9E8
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1, #0]
	ldr r0, [sp]
	add r4, r4, #1
	add r0, #0x4c
	add r5, #0x4c
	add r7, r7, #4
	str r0, [sp]
	cmp r4, #0x50
	bge _0222EA54
	b _0222E836
_0222EA54:
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222EA58: .word 0x0223D758
_0222EA5C: .word 0x66666666
_0222EA60: .word 0x3FE66666
_0222EA64: .word ov97_0222EEB8
	thumb_func_end ov97_0222E814

	thumb_func_start ov97_0222EA68
ov97_0222EA68: ; 0x0222EA68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r5, #0
	mov r4, #0
	add r7, #0x88
_0222EA74:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0222EA80
	b _0222EBBC
_0222EA80:
	add r1, r5, #0
	mov r0, #2
	add r1, #0x98
	lsl r0, r0, #0x12
	str r0, [r1, #0]
	add r1, r5, #0
	mov r0, #6
	add r1, #0x9c
	lsl r0, r0, #0x10
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xa4
	lsr r0, r0, #3
	str r0, [r1, #0]
	add r1, r5, #0
	mov r0, #1
	add r1, #0xa8
	lsl r0, r0, #0xc
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0xff
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1, #0]
	cmp r4, #0x1e
	ble _0222EADA
	bl sub_0201D2E8
	mov r1, #0xa
	bl _s32_div_f
	add r0, r5, #0
	add r1, #0xf
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222EB1C
_0222EADA:
	cmp r4, #0x14
	ble _0222EAF2
	bl sub_0201D2E8
	mov r1, #0xa
	bl _s32_div_f
	add r0, r5, #0
	add r1, #0xa
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222EB1C
_0222EAF2:
	cmp r4, #0xa
	ble _0222EB0A
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	add r0, r5, #0
	add r1, #0xa
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222EB1C
_0222EB0A:
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	add r0, r5, #0
	add r1, r1, #5
	add r0, #0xb8
	str r1, [r0, #0]
_0222EB1C:
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc8
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xcc
	str r1, [r0, #0]
	bl sub_0201D2E8
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	str r1, [sp]
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	ldr r0, [sp]
	add r6, r2, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r6, #0x40
	bl sub_0201D250
	add r1, r5, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	mul r0, r6
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [sp]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r1, r5, #0
	add r1, #0x9c
	ldr r1, [r1, #0]
	mul r0, r6
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #4
	bl sub_02021C50
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021DCC
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0222EBCC ; =ov97_0222EEB8
	add r1, r7, #0
	mov r2, #6
	bl sub_0200D9E8
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1, #0]
_0222EBBC:
	add r4, r4, #1
	add r5, #0x4c
	add r7, #0x4c
	cmp r4, #0x50
	bge _0222EBC8
	b _0222EA74
_0222EBC8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222EBCC: .word ov97_0222EEB8
	thumb_func_end ov97_0222EA68

	thumb_func_start ov97_0222EBD0
ov97_0222EBD0: ; 0x0222EBD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0222ED98 ; =0x00001848
	mov r4, #0
	add r6, r5, r0
_0222EBDC:
	mov r1, #2
	ldr r0, _0222ED9C ; =0x00001858
	lsl r1, r1, #0x12
	str r1, [r5, r0]
	mov r1, #6
	lsl r1, r1, #0x12
	add r0, r0, #4
	str r1, [r5, r0]
	mov r1, #1
	ldr r0, _0222EDA0 ; =0x00001864
	lsl r1, r1, #0xe
	str r1, [r5, r0]
	mov r1, #5
	lsl r1, r1, #0xc
	add r0, r0, #4
	str r1, [r5, r0]
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	add r1, r0, #4
	ldr r0, _0222EDA4 ; =0x00001874
	str r1, [r5, r0]
	mov r1, #0
	add r0, #8
	str r1, [r5, r0]
	ldr r0, _0222EDA8 ; =0x0000184C
	str r1, [r5, r0]
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	add r1, r0, #2
	ldr r0, _0222EDAC ; =0x00001884
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #0x1e
	bl _s32_div_f
	add r0, r0, #4
	cmp r0, #0
	ble _0222EC4E
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0222EC5C
_0222EC4E:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0222EC5C:
	bl _f_ftoi
	ldr r1, _0222EDA0 ; =0x00001864
	cmp r4, #0x3c
	str r0, [r5, r1]
	ble _0222EC82
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl _s32_div_f
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x46
	str r1, [r5, r0]
	b _0222ED30
_0222EC82:
	cmp r4, #0x32
	ble _0222ECA0
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl _s32_div_f
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x3c
	str r1, [r5, r0]
	b _0222ED30
_0222ECA0:
	cmp r4, #0x28
	ble _0222ECBE
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x32
	str r1, [r5, r0]
	b _0222ED30
_0222ECBE:
	cmp r4, #0x1e
	ble _0222ECDC
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl _s32_div_f
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x28
	str r1, [r5, r0]
	b _0222ED30
_0222ECDC:
	cmp r4, #0x14
	ble _0222ECFA
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl _s32_div_f
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x1e
	str r1, [r5, r0]
	b _0222ED30
_0222ECFA:
	cmp r4, #0xa
	ble _0222ED18
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x14
	str r1, [r5, r0]
	b _0222ED30
_0222ED18:
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0xa
	str r1, [r5, r0]
_0222ED30:
	mov r0, #0x62
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	add r0, #8
	str r1, [r5, r0]
	mov r0, #0x62
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	add r0, #0xc
	str r1, [r5, r0]
	ldr r0, _0222EDB4 ; =0x00001854
	ldr r0, [r5, r0]
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r7, #0
	str r0, [r2, #0]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #0x12
	str r0, [sp, #4]
	ldr r0, _0222EDB4 ; =0x00001854
	ldr r0, [r5, r0]
	bl sub_02021C50
	ldr r0, _0222EDB4 ; =0x00001854
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0222EDB8 ; =ov97_0222EEB8
	add r1, r6, #0
	mov r2, #6
	bl sub_0200D9E8
	ldr r1, _0222EDBC ; =0x00001890
	add r4, r4, #1
	str r0, [r5, r1]
	add r5, #0x4c
	add r6, #0x4c
	cmp r4, #0x50
	bge _0222ED94
	b _0222EBDC
_0222ED94:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222ED98: .word 0x00001848
_0222ED9C: .word 0x00001858
_0222EDA0: .word 0x00001864
_0222EDA4: .word 0x00001874
_0222EDA8: .word 0x0000184C
_0222EDAC: .word 0x00001884
_0222EDB0: .word 0x00001878
_0222EDB4: .word 0x00001854
_0222EDB8: .word ov97_0222EEB8
_0222EDBC: .word 0x00001890
	thumb_func_end ov97_0222EBD0

	thumb_func_start ov97_0222EDC0
ov97_0222EDC0: ; 0x0222EDC0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	add r6, r3, #0
	str r1, [sp]
	str r1, [sp, #4]
	bl _f_itof
	add r1, r4, #0
	bl _f_sub
	str r0, [sp, #8]
	add r0, r5, #0
	bl _f_itof
	add r1, r6, #0
	bl _f_sub
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, r0, #0
	bl _f_mul
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r0, #0
	bl _f_mul
	add r1, r0, #0
	add r0, r4, #0
	bl _f_add
	mov r1, #0
	add r4, r0, #0
	bl _f_fgt
	ldr r0, _0222EEB4 ; =0x45800000
	bls _0222EE28
	add r1, r4, #0
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0222EE36
_0222EE28:
	add r1, r4, #0
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0222EE36:
	bl _f_ftoi
	bl FX_Sqrt
	bl _f_itof
	ldr r1, _0222EEB4 ; =0x45800000
	bl _fdiv
	ldr r1, [sp, #0x30]
	add r4, r0, #0
	bl _f_flt
	blo _0222EE6E
	add r1, sp, #0x18
	mov r0, #0x1c
	ldrsh r0, [r1, r0]
	bl _f_itof
	add r1, r4, #0
	bl _f_fgt
	bhi _0222EE6E
	mov r0, #0
	add r1, r4, #0
	bl _f_feq
	bne _0222EE74
_0222EE6E:
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222EE74:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x30]
	bl _f_mul
	add r1, r4, #0
	bl _fdiv
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x30]
	bl _f_mul
	add r1, r4, #0
	bl _fdiv
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp]
	bl _f_add
	ldr r1, [sp, #0x28]
	str r0, [r1, #0]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	bl _f_add
	ldr r1, [sp, #0x2c]
	str r0, [r1, #0]
	mov r0, #1
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0222EEB4: .word 0x45800000
	thumb_func_end ov97_0222EDC0

	thumb_func_start ov97_0222EEB8
ov97_0222EEB8: ; 0x0222EEB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	ldr r0, [r5, #0xc]
	beq _0222EED6
	mov r1, #0
	bl sub_02021E50
	ldr r0, [r5, #0x30]
	add sp, #0x24
	sub r0, r0, #1
	str r0, [r5, #0x30]
	pop {r4, r5, r6, r7, pc}
_0222EED6:
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r5, #0xc]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x18]
	bl _f_itof
	ldr r1, _0222F200 ; =0x45800000
	bl _fdiv
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	bl _f_itof
	ldr r1, _0222F200 ; =0x45800000
	bl _fdiv
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	bl _f_itof
	ldr r1, _0222F200 ; =0x45800000
	bl _fdiv
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	bl _f_itof
	ldr r1, _0222F200 ; =0x45800000
	bl _fdiv
	bl _f_ftoi
	add r1, sp, #0x14
	str r1, [sp]
	add r1, sp, #0x10
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	lsl r0, r0, #4
	lsl r1, r1, #4
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	add r2, r6, #0
	add r3, r7, #0
	bl ov97_0222EDC0
	cmp r0, #0
	beq _0222EFCA
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _0222EFCA
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl _f_fgt
	ldr r0, _0222F200 ; =0x45800000
	bls _0222EF70
	ldr r1, [sp, #0x14]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0222EF7E
_0222EF70:
	ldr r1, [sp, #0x14]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0222EF7E:
	bl _f_ftoi
	ldr r1, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl _f_fgt
	ldr r0, _0222F200 ; =0x45800000
	bls _0222EFA6
	ldr r1, [sp, #0x10]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0222EFB4
_0222EFA6:
	ldr r1, [sp, #0x10]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0222EFB4:
	bl _f_ftoi
	ldr r1, [sp, #0x1c]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x18
	bl sub_02021C50
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0222EFCA:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0222EFD8
	cmp r0, #1
	beq _0222F04E
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0222EFD8:
	ldr r1, [r5, #0x10]
	ldr r0, [sp, #0x18]
	sub r0, r1, r0
	cmp r0, #0
	ble _0222EFF4
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0222F002
_0222EFF4:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0222F002:
	add r4, r0, #0
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x1c]
	sub r0, r1, r0
	cmp r0, #0
	ble _0222F020
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0222F02E
_0222F020:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0222F02E:
	bl _f_ftoi
	add r6, r0, #0
	add r0, r4, #0
	bl _f_ftoi
	add r1, r0, #0
	add r0, r6, #0
	bl FX_Atan2Idx
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x24]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5, #0x24]
	pop {r4, r5, r6, r7, pc}
_0222F04E:
	ldr r0, [r5, #4]
	cmp r0, #0x14
	bge _0222F05A
	add r0, r0, #1
	str r0, [r5, #4]
	b _0222F05E
_0222F05A:
	mov r0, #1
	str r0, [r5, #8]
_0222F05E:
	ldr r0, [r5, #0x28]
	add r0, #8
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bne _0222F0B4
	ldr r0, [r5, #0x34]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x34]
	bl _s32_div_f
	lsl r0, r1, #0x10
	str r1, [r5, #0x34]
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x38]
	mul r0, r1
	asr r0, r0, #0xc
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x10]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x14]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F0B4:
	cmp r0, #1
	bne _0222F102
	ldr r0, [r5, #0x34]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x34]
	bl _s32_div_f
	lsl r0, r1, #0x10
	str r1, [r5, #0x34]
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x38]
	mul r0, r1
	asr r0, r0, #0xc
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x10]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x14]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F102:
	cmp r0, #2
	bne _0222F160
	ldr r0, [r5, #0x34]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x34]
	bl _s32_div_f
	lsl r0, r1, #0x10
	str r1, [r5, #0x34]
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x38]
	mul r0, r1
	asr r0, r0, #0xc
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x10]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r3, [r5, #0x14]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F160:
	cmp r0, #3
	bne _0222F1BE
	ldr r0, [r5, #0x34]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x34]
	bl _s32_div_f
	lsl r0, r1, #0x10
	str r1, [r5, #0x34]
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x38]
	mul r0, r1
	asr r0, r0, #0xc
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x10]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r3, [r5, #0x14]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F1BE:
	cmp r0, #4
	bne _0222F204
	ldr r1, [r5, #0x38]
	cmp r1, #0x60
	bge _0222F1CE
	ldr r0, [r5, #0x3c]
	add r0, r1, r0
	str r0, [r5, #0x38]
_0222F1CE:
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x10]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x14]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x1c]
	b _0222F32C
	; .align 2, 0
_0222F200: .word 0x45800000
_0222F204:
	cmp r0, #5
	bne _0222F256
	ldr r1, [r5, #0x38]
	cmp r1, #0x60
	bge _0222F214
	ldr r0, [r5, #0x3c]
	add r0, r1, r0
	str r0, [r5, #0x38]
_0222F214:
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x10]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r3, [r5, #0x14]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F256:
	mov r0, #0xa
	str r0, [r5, #4]
	mov r0, #2
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x18]
	bl _f_itof
	ldr r1, _0222F344 ; =0x45800000
	bl _fdiv
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl _f_itof
	ldr r1, _0222F344 ; =0x45800000
	bl _fdiv
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	bl _f_itof
	ldr r1, _0222F344 ; =0x45800000
	bl _fdiv
	add r1, sp, #0x14
	str r1, [sp]
	add r1, sp, #0x10
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	lsl r0, r0, #4
	lsl r1, r1, #4
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	add r2, r4, #0
	add r3, r6, #0
	bl ov97_0222EDC0
	cmp r0, #0
	beq _0222F328
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl _f_fgt
	ldr r0, _0222F344 ; =0x45800000
	bls _0222F2D0
	ldr r1, [sp, #0x14]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0222F2DE
_0222F2D0:
	ldr r1, [sp, #0x14]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0222F2DE:
	bl _f_ftoi
	ldr r1, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl _f_fgt
	ldr r0, _0222F344 ; =0x45800000
	bls _0222F306
	ldr r1, [sp, #0x10]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0222F314
_0222F306:
	ldr r1, [sp, #0x10]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0222F314:
	bl _f_ftoi
	ldr r1, [sp, #0x1c]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x18
	bl sub_02021C50
	b _0222F32C
_0222F328:
	mov r0, #1
	str r0, [r5, #8]
_0222F32C:
	mov r1, #0x5a
	ldr r0, [r5, #0x28]
	lsl r1, r1, #2
	bl _s32_div_f
	str r1, [r5, #0x28]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x18
	bl sub_02021C50
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F344: .word 0x45800000
	thumb_func_end ov97_0222EEB8

	thumb_func_start ov97_0222F348
ov97_0222F348: ; 0x0222F348
	add r3, r0, #0
	mov r2, #8
	ldrsb r2, [r3, r2]
	ldr r3, _0222F358 ; =G2x_SetBlendBrightness_
	ldr r0, _0222F35C ; =0x04000050
	mov r1, #0x22
	bx r3
	nop
_0222F358: .word G2x_SetBlendBrightness_
_0222F35C: .word 0x04000050
	thumb_func_end ov97_0222F348

	thumb_func_start ov97_0222F360
ov97_0222F360: ; 0x0222F360
	add r3, r0, #0
	mov r2, #8
	ldrsb r2, [r3, r2]
	ldr r3, _0222F370 ; =G2x_SetBlendBrightness_
	ldr r0, _0222F374 ; =0x04001050
	mov r1, #0x22
	bx r3
	nop
_0222F370: .word G2x_SetBlendBrightness_
_0222F374: .word 0x04001050
	thumb_func_end ov97_0222F360

	thumb_func_start ov97_0222F378
ov97_0222F378: ; 0x0222F378
	push {r4, lr}
	add r4, r0, #0
	bl ov97_0222F348
	add r0, r4, #0
	bl ov97_0222F360
	pop {r4, pc}
	thumb_func_end ov97_0222F378

	thumb_func_start ov97_0222F388
ov97_0222F388: ; 0x0222F388
	push {r3, lr}
	mov r0, #1
	mov r1, #0
	bl sub_0201975C
	mov r0, #5
	mov r1, #0
	bl sub_0201975C
	pop {r3, pc}
	thumb_func_end ov97_0222F388

	thumb_func_start ov97_0222F39C
ov97_0222F39C: ; 0x0222F39C
	push {r4, lr}
	mov r4, #1
	cmp r1, #0
	beq _0222F3AE
	cmp r1, #1
	beq _0222F3DA
	cmp r1, #2
	beq _0222F3F4
	b _0222F408
_0222F3AE:
	mov r1, #8
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0222F3C8
	sub r1, r1, r2
	cmp r1, #0
	ble _0222F3C2
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F408
_0222F3C2:
	mov r1, #0
	strb r1, [r0, #8]
	b _0222F408
_0222F3C8:
	bge _0222F408
	add r1, r1, r2
	bpl _0222F3D4
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F408
_0222F3D4:
	mov r1, #0
	strb r1, [r0, #8]
	b _0222F408
_0222F3DA:
	mov r3, #8
	ldrsb r1, [r0, r3]
	sub r2, r1, r2
	add r1, r3, #0
	sub r1, #0x18
	cmp r2, r1
	ble _0222F3EE
	strb r2, [r0, #8]
	mov r4, #0
	b _0222F408
_0222F3EE:
	sub r3, #0x18
	strb r3, [r0, #8]
	b _0222F408
_0222F3F4:
	mov r1, #8
	ldrsb r1, [r0, r1]
	add r1, r1, r2
	cmp r1, #0x10
	bge _0222F404
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F408
_0222F404:
	mov r1, #0x10
	strb r1, [r0, #8]
_0222F408:
	bl ov97_0222F378
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov97_0222F39C

	thumb_func_start ov97_0222F410
ov97_0222F410: ; 0x0222F410
	push {r4, lr}
	mov r4, #1
	cmp r1, #0
	beq _0222F422
	cmp r1, #1
	beq _0222F44E
	cmp r1, #2
	beq _0222F468
	b _0222F47C
_0222F422:
	mov r1, #8
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0222F43C
	sub r1, r1, r2
	cmp r1, #0
	ble _0222F436
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F47C
_0222F436:
	mov r1, #0
	strb r1, [r0, #8]
	b _0222F47C
_0222F43C:
	bge _0222F47C
	add r1, r1, r2
	bpl _0222F448
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F47C
_0222F448:
	mov r1, #0
	strb r1, [r0, #8]
	b _0222F47C
_0222F44E:
	mov r3, #8
	ldrsb r1, [r0, r3]
	sub r2, r1, r2
	add r1, r3, #0
	sub r1, #0x18
	cmp r2, r1
	ble _0222F462
	strb r2, [r0, #8]
	mov r4, #0
	b _0222F47C
_0222F462:
	sub r3, #0x18
	strb r3, [r0, #8]
	b _0222F47C
_0222F468:
	mov r1, #8
	ldrsb r1, [r0, r1]
	add r1, r1, r2
	cmp r1, #0x10
	bge _0222F478
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F47C
_0222F478:
	mov r1, #0x10
	strb r1, [r0, #8]
_0222F47C:
	bl ov97_0222F348
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov97_0222F410

	thumb_func_start ov97_0222F484
ov97_0222F484: ; 0x0222F484
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4, #8]
	bl ov97_0222F378
	add r0, r4, #0
	bl ov97_0222E398
	add r0, r4, #0
	bl ov97_0222E6F8
	add r0, r4, #0
	bl ov97_0222E814
	add r0, r4, #0
	bl ov97_0222E5B4
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222F484

	thumb_func_start ov97_0222F4BC
ov97_0222F4BC: ; 0x0222F4BC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #9
	bls _0222F4C8
	b _0222F72C
_0222F4C8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222F4D4: ; jump table
	.short _0222F4E8 - _0222F4D4 - 2 ; case 0
	.short _0222F4F4 - _0222F4D4 - 2 ; case 1
	.short _0222F50A - _0222F4D4 - 2 ; case 2
	.short _0222F56E - _0222F4D4 - 2 ; case 3
	.short _0222F596 - _0222F4D4 - 2 ; case 4
	.short _0222F5EC - _0222F4D4 - 2 ; case 5
	.short _0222F60A - _0222F4D4 - 2 ; case 6
	.short _0222F692 - _0222F4D4 - 2 ; case 7
	.short _0222F704 - _0222F4D4 - 2 ; case 8
	.short _0222F718 - _0222F4D4 - 2 ; case 9
_0222F4E8:
	add r0, r4, #0
	bl ov97_0222F484
	mov r0, #1
	str r0, [r4, #0]
	b _0222F740
_0222F4F4:
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov97_0222F39C
	cmp r0, #0
	bne _0222F504
	b _0222F740
_0222F504:
	mov r0, #2
	str r0, [r4, #0]
	b _0222F740
_0222F50A:
	mov r5, #0
	mov r6, #1
	add r0, r5, #0
	add r1, r4, #0
	add r3, r5, #0
_0222F514:
	add r2, r1, #0
	add r2, #0x90
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0222F522
	add r5, r5, #1
	b _0222F524
_0222F522:
	add r6, r3, #0
_0222F524:
	add r0, r0, #1
	add r1, #0x4c
	cmp r0, #0x50
	blt _0222F514
	cmp r5, #0x32
	ble _0222F53C
	ldr r0, _0222F748 ; =0x00003014
	mov r1, #4
	ldr r0, [r4, r0]
	bl sub_02021DCC
	b _0222F55A
_0222F53C:
	cmp r5, #0x1e
	ble _0222F54C
	ldr r0, _0222F748 ; =0x00003014
	mov r1, #3
	ldr r0, [r4, r0]
	bl sub_02021DCC
	b _0222F55A
_0222F54C:
	cmp r5, #7
	ble _0222F55A
	ldr r0, _0222F748 ; =0x00003014
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
_0222F55A:
	cmp r6, #0
	bne _0222F562
	cmp r5, #0x4f
	bne _0222F618
_0222F562:
	mov r0, #3
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov97_0222E7B4
	b _0222F740
_0222F56E:
	ldr r0, _0222F74C ; =0x000030A0
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _0222F618
	add r0, r4, #0
	bl ov97_0222E734
	add r0, r4, #0
	bl ov97_0222EA68
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	bl ov97_0222F388
	mov r0, #4
	str r0, [r4, #0]
	b _0222F740
_0222F596:
	mov r5, #0
	mov r6, #1
	add r1, r5, #0
	add r2, r4, #0
	add r0, r5, #0
_0222F5A0:
	add r3, r2, #0
	add r3, #0x94
	ldr r3, [r3, #0]
	cmp r3, #0
	beq _0222F5BA
	add r3, r2, #0
	add r3, #0x90
	ldr r3, [r3, #0]
	cmp r3, #0
	beq _0222F5B8
	add r5, r5, #1
	b _0222F5BA
_0222F5B8:
	add r6, r0, #0
_0222F5BA:
	add r1, r1, #1
	add r2, #0x4c
	cmp r1, #0x50
	blt _0222F5A0
	mov r1, #2
	add r0, r4, #0
	add r2, r1, #0
	bl ov97_0222F410
	cmp r6, #0
	bne _0222F5D4
	cmp r5, #0x13
	bne _0222F618
_0222F5D4:
	ldr r0, _0222F750 ; =0x0000061B
	bl sub_02005748
	mov r0, #5
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov97_0222E7B4
	add r0, r4, #0
	bl ov97_0222E60C
	b _0222F740
_0222F5EC:
	mov r1, #2
	add r0, r4, #0
	add r2, r1, #0
	bl ov97_0222F410
	cmp r0, #0
	beq _0222F618
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov97_0222F410
	mov r0, #6
	str r0, [r4, #0]
	b _0222F740
_0222F60A:
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov97_0222F410
	cmp r0, #0
	bne _0222F61A
_0222F618:
	b _0222F740
_0222F61A:
	ldr r0, _0222F748 ; =0x00003014
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	ldr r0, _0222F754 ; =0x00003060
	ldr r0, [r4, r0]
	bl sub_02021D28
	mov r1, #0xe
	ldr r2, [r5, #4]
	lsl r1, r1, #0x10
	cmp r2, r1
	bge _0222F63E
	mov r1, #2
	lsl r1, r1, #0xe
	add r1, r2, r1
	str r1, [r5, #4]
_0222F63E:
	mov r1, #3
	ldr r2, [r5, #4]
	lsl r1, r1, #0x12
	sub r2, r2, r1
	cmp r2, #0
	ble _0222F740
	ldr r2, [r0, #4]
	lsl r1, r1, #1
	cmp r2, r1
	bge _0222F672
	mov r1, #2
	lsl r1, r1, #0xe
	add r1, r2, r1
	str r1, [r0, #4]
	ldr r0, _0222F754 ; =0x00003060
	ldr r0, [r4, r0]
	bl sub_02021D34
	cmp r0, #0
	bne _0222F740
	ldr r0, _0222F754 ; =0x00003060
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	b _0222F740
_0222F672:
	mov r0, #7
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov97_0222E664
	add r0, r4, #0
	bl ov97_0222E77C
	add r0, r4, #0
	bl ov97_0222EBD0
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	b _0222F740
_0222F692:
	mov r5, #0
	ldr r0, _0222F758 ; =0x00001850
	mov r6, #1
	add r2, r5, #0
	add r3, r4, #0
	add r7, r5, #0
_0222F69E:
	ldr r1, [r3, r0]
	cmp r1, #0
	beq _0222F6A8
	add r5, r5, #1
	b _0222F6AA
_0222F6A8:
	add r6, r7, #0
_0222F6AA:
	add r2, r2, #1
	add r3, #0x4c
	cmp r2, #0x50
	blt _0222F69E
	cmp r5, #7
	ble _0222F6C0
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov97_0222F39C
_0222F6C0:
	cmp r5, #0x32
	ble _0222F6D0
	ldr r0, _0222F754 ; =0x00003060
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	b _0222F6EE
_0222F6D0:
	cmp r5, #0x1e
	ble _0222F6E0
	ldr r0, _0222F754 ; =0x00003060
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_02021DCC
	b _0222F6EE
_0222F6E0:
	cmp r5, #7
	ble _0222F6EE
	ldr r0, _0222F754 ; =0x00003060
	mov r1, #3
	ldr r0, [r4, r0]
	bl sub_02021DCC
_0222F6EE:
	cmp r6, #0
	beq _0222F740
	mov r0, #8
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov97_0222E7E4
	add r0, r4, #0
	bl ov97_0222E67C
	b _0222F740
_0222F704:
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov97_0222F39C
	cmp r0, #0
	beq _0222F740
	mov r0, #9
	str r0, [r4, #0]
	b _0222F740
_0222F718:
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl ov97_0222F39C
	cmp r0, #0
	beq _0222F740
	mov r0, #0xff
	str r0, [r4, #0]
	b _0222F740
_0222F72C:
	ldr r1, _0222F74C ; =0x000030A0
	mov r2, #0
	ldr r1, [r4, r1]
	str r2, [r1, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_0222F740:
	add r0, r4, #0
	bl ov97_0222E694
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F748: .word 0x00003014
_0222F74C: .word 0x000030A0
_0222F750: .word 0x0000061B
_0222F754: .word 0x00003060
_0222F758: .word 0x00001850
	thumb_func_end ov97_0222F4BC

	thumb_func_start ov97_0222F75C
ov97_0222F75C: ; 0x0222F75C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	bl CTRDG_IsExisting
	ldr r0, _0222FAB0 ; =0x000005C8
	ldr r0, [r4, r0]
	cmp r0, #0x1d
	beq _0222F77C
	add r0, r4, #0
	bl ov97_02230224
_0222F77C:
	ldr r3, [r5, #0]
	cmp r3, #0x39
	bls _0222F786
	bl _02230164
_0222F786:
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F792: ; jump table
	.short _0222F806 - _0222F792 - 2 ; case 0
	.short _0222F818 - _0222F792 - 2 ; case 1
	.short _0222F836 - _0222F792 - 2 ; case 2
	.short _0222F840 - _0222F792 - 2 ; case 3
	.short _0222F84E - _0222F792 - 2 ; case 4
	.short _0222F85C - _0222F792 - 2 ; case 5
	.short _02230164 - _0222F792 - 2 ; case 6
	.short _0222FAA4 - _0222F792 - 2 ; case 7
	.short _0222FB8C - _0222F792 - 2 ; case 8
	.short _0222FB98 - _0222F792 - 2 ; case 9
	.short _0222FC58 - _0222F792 - 2 ; case 10
	.short _0222FCA6 - _0222F792 - 2 ; case 11
	.short _0222FCC8 - _0222F792 - 2 ; case 12
	.short _0222FD58 - _0222F792 - 2 ; case 13
	.short _0222FDAE - _0222F792 - 2 ; case 14
	.short _0222FDDA - _0222F792 - 2 ; case 15
	.short _0222FE1A - _0222F792 - 2 ; case 16
	.short _0222FE3C - _0222F792 - 2 ; case 17
	.short _0222FE74 - _0222F792 - 2 ; case 18
	.short _0222FEB8 - _0222F792 - 2 ; case 19
	.short _0222FF5A - _0222F792 - 2 ; case 20
	.short _0222FF66 - _0222F792 - 2 ; case 21
	.short _0222FF6C - _0222F792 - 2 ; case 22
	.short _0222FFA2 - _0222F792 - 2 ; case 23
	.short _0222FFBC - _0222F792 - 2 ; case 24
	.short _02230034 - _0222F792 - 2 ; case 25
	.short _02230164 - _0222F792 - 2 ; case 26
	.short _0222F86A - _0222F792 - 2 ; case 27
	.short _02230164 - _0222F792 - 2 ; case 28
	.short _02230164 - _0222F792 - 2 ; case 29
	.short _02230164 - _0222F792 - 2 ; case 30
	.short _0222F928 - _0222F792 - 2 ; case 31
	.short _0222F876 - _0222F792 - 2 ; case 32
	.short _0222F93C - _0222F792 - 2 ; case 33
	.short _0222F9DE - _0222F792 - 2 ; case 34
	.short _0222F9BC - _0222F792 - 2 ; case 35
	.short _0222FA80 - _0222F792 - 2 ; case 36
	.short _02230164 - _0222F792 - 2 ; case 37
	.short _02230164 - _0222F792 - 2 ; case 38
	.short _02230164 - _0222F792 - 2 ; case 39
	.short _02230164 - _0222F792 - 2 ; case 40
	.short _02230164 - _0222F792 - 2 ; case 41
	.short _02230164 - _0222F792 - 2 ; case 42
	.short _02230164 - _0222F792 - 2 ; case 43
	.short _02230164 - _0222F792 - 2 ; case 44
	.short _02230164 - _0222F792 - 2 ; case 45
	.short _02230164 - _0222F792 - 2 ; case 46
	.short _02230164 - _0222F792 - 2 ; case 47
	.short _02230164 - _0222F792 - 2 ; case 48
	.short _02230050 - _0222F792 - 2 ; case 49
	.short _02230074 - _0222F792 - 2 ; case 50
	.short _02230082 - _0222F792 - 2 ; case 51
	.short _0223009E - _0222F792 - 2 ; case 52
	.short _022300B4 - _0222F792 - 2 ; case 53
	.short _022300C8 - _0222F792 - 2 ; case 54
	.short _022300DA - _0222F792 - 2 ; case 55
	.short _0223011C - _0222F792 - 2 ; case 56
	.short _0223015E - _0222F792 - 2 ; case 57
_0222F806:
	mov r0, #0x56
	bl ov97_02237694
	ldr r0, _0222FAB4 ; =0x000015D8
	str r5, [r4, r0]
	mov r0, #1
	str r0, [r5, #0]
	bl _02230164
_0222F818:
	add r0, r6, #0
	add r1, r4, #0
	bl ov97_0222DFD4
	add r0, r4, #0
	bl ov97_0222D3E8
	mov r0, #1
	mov r1, #3
	add r2, r5, #0
	mov r3, #2
	bl ov97_02237790
	bl _02230164
_0222F836:
	add r0, r5, #0
	bl ov97_022377F0
	bl _02230164
_0222F840:
	ldr r2, _0222FAB8 ; =ov97_0222DB40
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	bl _02230164
_0222F84E:
	ldr r2, _0222FABC ; =ov97_0222DA64
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	bl _02230164
_0222F85C:
	ldr r2, _0222FAC0 ; =ov97_0222D75C
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	bl _02230164
_0222F86A:
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222E080
	bl _02230164
_0222F876:
	add r0, r4, #0
	bl ov97_022302F4
	ldr r0, _0222FAC4 ; =0x0223F1A8
	ldr r0, [r0, #0]
	cmp r0, #0x2d
	bne _0222F90E
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	add r0, r6, #0
	bl ov97_0222D55C
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x8c
	bl ov97_02232148
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0222F8BA
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #0x31
	str r0, [r5, #0]
	b _0222F90E
_0222F8BA:
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222F8E8
	mov r0, #2
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x71
	add r1, r4, #0
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x58
	mov r3, #3
	bl sub_0201A7E8
_0222F8E8:
	bl ov97_02238D54
	add r1, r4, #0
	add r2, r0, #0
	add r0, r6, #0
	add r1, #0x58
	bl ov97_0222DF10
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #4
	bl ov97_0222DE78
	add r0, r6, #0
	bl ov97_0222D8F4
	mov r0, #0x1f
	str r0, [r5, #0]
_0222F90E:
	ldr r0, _0222FAC4 ; =0x0223F1A8
	ldr r0, [r0, #0]
	sub r0, #0x2e
	cmp r0, #1
	bls _0222F91C
	bl _02230164
_0222F91C:
	bl ov97_022302D4
	mov r0, #0x11
	str r0, [r5, #0]
	bl _02230164
_0222F928:
	ldr r2, _0222FAC8 ; =ov97_0222D9F0
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	add r0, r4, #0
	bl ov97_022302F4
	bl _02230164
_0222F93C:
	add r0, r6, #0
	bl ov97_0222D55C
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D40C
	add r0, r7, #0
	bl ov97_0222D5C8
	cmp r0, #1
	bne _0222F9A8
	add r0, r6, #0
	bl ov97_0222D658
	ldr r0, _0222FACC ; =0x000029F4
	mov r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	sub r1, r1, #2
	bl ov97_0222D40C
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	ldr r1, _0222FAD0 ; =0x000030A4
	mov r0, #0x56
	bl sub_02018144
	ldr r2, _0222FAD0 ; =0x000030A4
	mov r1, #0
	add r6, r0, #0
	bl memset
	ldr r0, _0222FACC ; =0x000029F4
	add r1, r4, r0
	ldr r0, _0222FAD4 ; =0x000030A0
	str r1, [r6, r0]
	bl ov97_02237AEC
	str r0, [r6, #0xc]
	ldr r0, _0222FAD8 ; =ov97_0222F4BC
	add r1, r6, #0
	mov r2, #5
	bl sub_0200D9E8
	b _0222F9B6
_0222F9A8:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov97_02238194
	add r0, r6, #0
	bl ov97_0222D658
_0222F9B6:
	mov r0, #0x22
	str r0, [r5, #0]
	b _02230164
_0222F9BC:
	ldr r0, _0222FACC ; =0x000029F4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FA4A
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #8
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	b _02230164
_0222F9DE:
	bl ov97_02238528
	add r7, r0, #0
	cmp r7, #4
	bne _0222F9EC
	bl ov97_022384F4
_0222F9EC:
	cmp r7, #2
	bne _0222FA46
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	bl ov97_0222D45C
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02019EBC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	add r6, r4, #0
	add r6, #0xdc
	add r0, r6, #0
	bl ov97_0222D5C8
	cmp r0, #1
	bne _0222FA3A
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov97_02238194
	ldr r0, _0222FACC ; =0x000029F4
	mov r1, #2
	str r1, [r4, r0]
	b _0222FA40
_0222FA3A:
	ldr r0, _0222FADC ; =0x00000624
	bl sub_02005748
_0222FA40:
	mov r0, #0x23
	str r0, [r5, #0]
	b _02230164
_0222FA46:
	cmp r7, #3
	beq _0222FA4C
_0222FA4A:
	b _02230164
_0222FA4C:
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	mov r2, #0x1a
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_0222FA80:
	add r0, r4, #0
	bl ov97_022302F4
	ldr r0, _0222FAC4 ; =0x0223F1A8
	ldr r1, [r0, #0]
	add r0, r1, #0
	sub r0, #0x2d
	cmp r0, #2
	bhi _0222FB74
	cmp r1, #0x2f
	bne _0222FA9A
	bl ov97_022302D4
_0222FA9A:
	add r0, r6, #0
	bl ov97_0222D94C
	str r0, [r5, #0]
	b _02230164
_0222FAA4:
	add r0, r4, #0
	bl ov97_0222D250
	ldr r1, _0222FAE0 ; =0x00000438
	b _0222FAE4
	nop
_0222FAB0: .word 0x000005C8
_0222FAB4: .word 0x000015D8
_0222FAB8: .word ov97_0222DB40
_0222FABC: .word ov97_0222DA64
_0222FAC0: .word ov97_0222D75C
_0222FAC4: .word 0x0223F1A8
_0222FAC8: .word ov97_0222D9F0
_0222FACC: .word 0x000029F4
_0222FAD0: .word 0x000030A4
_0222FAD4: .word 0x000030A0
_0222FAD8: .word ov97_0222F4BC
_0222FADC: .word 0x00000624
_0222FAE0: .word 0x00000438
_0222FAE4:
	str r0, [r4, r1]
	mov r0, #0
	ldr r1, [r4, r1]
	mvn r0, r0
	cmp r1, r0
	beq _0222FB5C
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x8c
	bl ov97_02232148
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222FB36
	mov r0, #2
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x71
	add r1, r4, #0
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x58
	mov r3, #3
	bl sub_0201A7E8
_0222FB36:
	add r1, r4, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x58
	add r2, #0x8c
	bl ov97_0222DF10
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #4
	bl ov97_0222DE78
	add r0, r6, #0
	mov r1, #0
	bl ov97_0222D6F8
	mov r0, #8
	str r0, [r5, #0]
_0222FB5C:
	ldr r0, _0222FE84 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	bne _0222FB76
	ldr r0, _0222FE88 ; =0x00000434
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222FB76
_0222FB74:
	b _02230164
_0222FB76:
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	bl ov97_0222D2DC
	bl sub_02039794
	mov r0, #0x11
	str r0, [r5, #0]
	b _02230164
_0222FB8C:
	ldr r2, _0222FE8C ; =ov97_0222D94C
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	b _02230164
_0222FB98:
	bl sub_0203608C
	add r7, r0, #0
	beq _0222FBF0
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0222FBF0
	mov r0, #0xab
	bl sub_02036540
	cmp r0, #1
	bne _0222FC20
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #7
	bl ov97_0222DE78
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D40C
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	mov r1, #0x96
	ldr r0, _0222FE88 ; =0x00000434
	lsl r1, r1, #2
	str r1, [r4, r0]
	mov r0, #0xa
	str r0, [r5, #0]
	b _0222FC20
_0222FBF0:
	cmp r7, #0
	beq _0222FC20
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _0222FC20
	bl ov97_0222D2DC
	bl sub_02039794
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #0x10
	str r0, [r5, #0]
	b _02230164
_0222FC20:
	ldr r0, _0222FE84 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	bne _0222FC38
	ldr r0, _0222FE88 ; =0x00000434
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FD28
_0222FC38:
	bl ov97_0222D2DC
	bl sub_02039794
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #0x11
	str r0, [r5, #0]
	b _02230164
_0222FC58:
	bl ov97_0222D2A0
	cmp r0, #0
	beq _0222FC64
	mov r0, #0xb
	str r0, [r5, #0]
_0222FC64:
	bl sub_0203608C
	ldr r1, _0222FE84 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #2
	tst r1, r2
	bne _0222FC90
	ldr r1, _0222FE88 ; =0x00000434
	ldr r2, [r4, r1]
	sub r2, r2, #1
	str r2, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0222FC90
	cmp r0, #0
	beq _0222FD28
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _0222FD28
_0222FC90:
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	bl ov97_0222D2DC
	bl sub_02039794
	mov r0, #0x11
	str r0, [r5, #0]
	b _02230164
_0222FCA6:
	add r0, r6, #0
	bl ov97_0222D55C
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov97_02238194
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	add r0, r6, #0
	bl ov97_0222D658
	mov r0, #0xc
	str r0, [r5, #0]
	b _02230164
_0222FCC8:
	bl sub_0203608C
	cmp r0, #0
	beq _0222FD06
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _0222FD06
	bl ov97_0222D2DC
	ldr r0, _0222FE90 ; =0x000029EC
	mov r1, #1
	str r1, [r4, r0]
	bl ov97_0223850C
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	bl sub_02039794
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	mov r0, #0xe
	str r0, [r5, #0]
	b _02230164
_0222FD06:
	bl ov97_02238528
	cmp r0, #4
	bne _0222FD20
	mov r0, #0x93
	bl sub_020364F0
	mov r0, #0xd
	str r0, [r5, #0]
	ldr r0, _0222FE94 ; =0x0000043C
	mov r1, #0x78
	str r1, [r4, r0]
	b _02230164
_0222FD20:
	bl ov97_02238528
	cmp r0, #3
	beq _0222FD2A
_0222FD28:
	b _02230164
_0222FD2A:
	bl ov97_0223850C
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #0x1a
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_0222FD58:
	mov r0, #0x93
	bl sub_02036540
	cmp r0, #1
	bne _0222FD72
	bl ov97_022384F4
	ldr r0, _0222FE94 ; =0x0000043C
	mov r1, #0xa
	str r1, [r4, r0]
	mov r0, #0xf
	str r0, [r5, #0]
	b _02230164
_0222FD72:
	ldr r0, _0222FE94 ; =0x0000043C
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FE7C
	bl ov97_0223850C
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #0x1a
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_0222FDAE:
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	mov r2, #0x1c
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_0222FDDA:
	ldr r0, _0222FE94 ; =0x0000043C
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FE7C
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	bl ov97_0222D2DC
	bl sub_02039794
	ldr r0, _0222FE98 ; =0x00000624
	bl sub_02005748
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #8
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_0222FE1A:
	ldr r0, _0222FE9C ; =0x000005DC
	bl sub_02005748
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #0x18
	bl ov97_0222DE78
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	mov r0, #0x12
	str r0, [r5, #0]
	b _02230164
_0222FE3C:
	ldr r0, _0222FEA0 ; =0x000015DC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0222FE4A
	sub r1, r1, #1
	str r1, [r4, r0]
	b _02230164
_0222FE4A:
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	ldr r0, _0222FE9C ; =0x000005DC
	bl sub_02005748
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #0x17
	bl ov97_0222DE78
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	mov r0, #0x12
	str r0, [r5, #0]
	b _02230164
_0222FE74:
	ldr r0, _0222FE84 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _0222FE7E
_0222FE7C:
	b _02230164
_0222FE7E:
	ldr r0, _0222FE9C ; =0x000005DC
	b _0222FEA4
	nop
_0222FE84: .word 0x021BF67C
_0222FE88: .word 0x00000434
_0222FE8C: .word ov97_0222D94C
_0222FE90: .word 0x000029EC
_0222FE94: .word 0x0000043C
_0222FE98: .word 0x00000624
_0222FE9C: .word 0x000005DC
_0222FEA0: .word 0x000015DC
_0222FEA4:
	bl sub_02005748
	add r0, r6, #0
	mov r1, #0xc4
	mov r2, #0
	bl ov97_0222DDD0
	mov r0, #3
	str r0, [r5, #0]
	b _02230164
_0222FEB8:
	ldr r0, _02230180 ; =0x000015DC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0222FEC6
	sub r1, r1, #1
	str r1, [r4, r0]
	b _02230164
_0222FEC6:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0x1b
	beq _0222FEDC
	add r0, r4, #0
	mov r1, #0xea
	add r0, #0x8c
	lsl r1, r1, #2
	bl ov97_0223764C
_0222FEDC:
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x8c
	bl ov97_02232148
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0222FF04
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #0x31
	str r0, [r5, #0]
	b _02230164
_0222FF04:
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222FF32
	mov r0, #2
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x71
	add r1, r4, #0
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x58
	mov r3, #3
	bl sub_0201A7E8
_0222FF32:
	add r1, r4, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x58
	add r2, #0x8c
	bl ov97_0222DF10
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #4
	bl ov97_0222DE78
	add r0, r6, #0
	mov r1, #0
	bl ov97_0222D6F8
	mov r0, #0x14
	str r0, [r5, #0]
	b _02230164
_0222FF5A:
	ldr r2, _02230184 ; =ov97_0222D94C
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	b _02230164
_0222FF66:
	mov r0, #0x16
	str r0, [r5, #0]
	b _02230164
_0222FF6C:
	add r0, r6, #0
	bl ov97_0222D55C
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov97_02238194
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #7
	bl ov97_0222DE78
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D40C
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	ldr r0, _02230188 ; =0x0000043C
	mov r1, #0x3c
	str r1, [r4, r0]
	mov r0, #0x17
	str r0, [r5, #0]
	b _02230164
_0222FFA2:
	ldr r0, _02230188 ; =0x0000043C
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02230042
	add r0, r6, #0
	bl ov97_0222D658
	mov r0, #0x18
	str r0, [r5, #0]
	b _02230164
_0222FFBC:
	bl ov97_02238528
	cmp r0, #4
	bne _0222FFC8
	bl ov97_022384F4
_0222FFC8:
	bl ov97_02238528
	cmp r0, #2
	bne _02230000
	ldr r0, _02230188 ; =0x0000043C
	mov r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	ldr r0, _0223018C ; =0x00000624
	bl sub_02005748
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #8
	mov r3, #0x19
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_02230000:
	bl ov97_02238528
	cmp r0, #3
	bne _02230042
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	mov r2, #0x1a
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_02230034:
	ldr r0, _02230188 ; =0x0000043C
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02230044
_02230042:
	b _02230164
_02230044:
	mov r1, #1
	lsl r1, r1, #0x10
	str r1, [r4, r0]
	mov r0, #0x37
	str r0, [r5, #0]
	b _02230164
_02230050:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #5
	beq _02230060
	add r0, r4, #0
	bl ov97_0222E2AC
_02230060:
	add r0, r6, #0
	bl ov97_0222E1D8
	str r0, [r5, #0]
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	b _02230164
_02230074:
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_02230082:
	ldr r0, _02230190 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02230164
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	add r0, r6, #0
	bl ov97_0222DA64
	str r0, [r5, #0]
	b _02230164
_0223009E:
	add r0, r6, #0
	mov r1, #1
	bl ov97_0222D6F8
	mov r0, #8
	str r0, [r5, #0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0, #0]
	b _02230164
_022300B4:
	add r0, r6, #0
	bl ov97_0222D34C
	mov r0, #0x11
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022300C8:
	add r0, r6, #0
	bl ov97_0222D34C
	mov r1, #0x11
	mov r0, #1
	lsl r1, r1, #6
	add sp, #0x14
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_022300DA:
	ldr r0, _02230190 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02230164
	ldr r0, _02230194 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0xda
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02230106
	ldr r2, _02230198 ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x38
	mov r3, #2
	bl ov97_02237790
	b _02230164
_02230106:
	mov r0, #1
	bl ov97_02237784
	ldr r2, _02230198 ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x39
	mov r3, #2
	bl ov97_02237790
	b _02230164
_0223011C:
	ldr r0, [r4, #0]
	bl ov97_0222DC20
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0xdc
	mov r2, #0x56
	bl ov97_02231FFC
	ldr r2, _02230198 ; =0x000015D8
	mov r0, #1
	ldr r2, [r4, r2]
	mov r1, #0x37
	mov r3, #2
	bl ov97_02237790
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	b _02230164
_0223015E:
	mov r0, #0
	bl OS_ResetSystem
_02230164:
	ldr r0, _0223019C ; =0x000029E8
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02230170
	add r0, r4, #0
	blx r1
_02230170:
	ldr r0, _022301A0 ; =0x000029F4
	ldr r0, [r4, r0]
	bl ov97_02237CAC
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02230180: .word 0x000015DC
_02230184: .word ov97_0222D94C
_02230188: .word 0x0000043C
_0223018C: .word 0x00000624
_02230190: .word 0x021BF67C
_02230194: .word 0x000005DC
_02230198: .word 0x000015D8
_0223019C: .word 0x000029E8
_022301A0: .word 0x000029F4
	thumb_func_end ov97_0222F75C

	thumb_func_start ov97_022301A4
ov97_022301A4: ; 0x022301A4
	ldr r0, _022301AC ; =0x0223F1A8
	ldr r0, [r0, #8]
	bx lr
	nop
_022301AC: .word 0x0223F1A8
	thumb_func_end ov97_022301A4

	thumb_func_start ov97_022301B0
ov97_022301B0: ; 0x022301B0
	ldr r1, _022301B8 ; =0x0223F1A8
	str r0, [r1, #8]
	bx lr
	nop
_022301B8: .word 0x0223F1A8
	thumb_func_end ov97_022301B0

	thumb_func_start ov97_022301BC
ov97_022301BC: ; 0x022301BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022301DA
	ldr r0, _02230210 ; =0x0000004D
	ldr r1, _02230214 ; =0x021D742C
	bl sub_02000EC4
	b _022301E6
_022301DA:
	cmp r0, #1
	bne _022301E6
	ldr r0, _02230218 ; =0x00000061
	ldr r1, _0223021C ; =0x0223D7AC
	bl sub_02000EC4
_022301E6:
	mov r0, #0x5b
	bl sub_0201807C
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x56
	bl sub_0201807C
	ldr r0, _02230220 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _02230206
	mov r0, #0
	bl sub_02017B70
_02230206:
	mov r0, #0
	bl ov97_02238400
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02230210: .word 0x0000004D
_02230214: .word 0x021D742C
_02230218: .word 0x00000061
_0223021C: .word 0x0223D7AC
_02230220: .word 0x000015D4
	thumb_func_end ov97_022301BC

	thumb_func_start ov97_02230224
ov97_02230224: ; 0x02230224
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02230278 ; =0x000005C8
	ldr r0, [r4, r0]
	cmp r0, #0x1c
	beq _0223023A
	cmp r0, #0x1d
	beq _02230276
	cmp r0, #0x1e
	beq _0223024E
	pop {r4, pc}
_0223023A:
	ldr r0, [r4, #4]
	bl sub_02037D48
	ldr r0, _0223027C ; =0x000005CC
	mov r1, #0x78
	str r1, [r4, r0]
	mov r1, #0x1e
	sub r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
_0223024E:
	bl sub_02037DA0
	mov r1, #1
	tst r0, r1
	beq _0223025E
	mov r0, #0x5d
	lsl r0, r0, #4
	str r1, [r4, r0]
_0223025E:
	ldr r0, _0223027C ; =0x000005CC
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02230276
	bl sub_02037D84
	ldr r0, _02230278 ; =0x000005C8
	mov r1, #0x1d
	str r1, [r4, r0]
_02230276:
	pop {r4, pc}
	; .align 2, 0
_02230278: .word 0x000005C8
_0223027C: .word 0x000005CC
	thumb_func_end ov97_02230224

	thumb_func_start ov97_02230280
ov97_02230280: ; 0x02230280
	cmp r0, #4
	bhi _022302CC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230290: ; jump table
	.short _0223029A - _02230290 - 2 ; case 0
	.short _022302A2 - _02230290 - 2 ; case 1
	.short _022302AA - _02230290 - 2 ; case 2
	.short _022302B2 - _02230290 - 2 ; case 3
	.short _022302C6 - _02230290 - 2 ; case 4
_0223029A:
	ldr r0, _022302D0 ; =0x0223F1A8
	mov r1, #0x28
	str r1, [r0, #0]
	bx lr
_022302A2:
	ldr r0, _022302D0 ; =0x0223F1A8
	mov r1, #0x29
	str r1, [r0, #0]
	bx lr
_022302AA:
	ldr r0, _022302D0 ; =0x0223F1A8
	mov r1, #0x2a
	str r1, [r0, #0]
	bx lr
_022302B2:
	ldr r0, _022302D0 ; =0x0223F1A8
	ldr r1, [r0, #0]
	cmp r1, #0x2a
	bne _022302C0
	mov r1, #0x2c
	str r1, [r0, #0]
	bx lr
_022302C0:
	mov r1, #0x2f
	str r1, [r0, #0]
	bx lr
_022302C6:
	ldr r0, _022302D0 ; =0x0223F1A8
	mov r1, #0x30
	str r1, [r0, #0]
_022302CC:
	bx lr
	nop
_022302D0: .word 0x0223F1A8
	thumb_func_end ov97_02230280

	thumb_func_start ov97_022302D4
ov97_022302D4: ; 0x022302D4
	push {r3, lr}
	bl sub_020334CC
	ldr r0, _022302F0 ; =0x0223F1A8
	ldr r0, [r0, #4]
	bl sub_020181C4
	bl sub_02039794
	ldr r0, _022302F0 ; =0x0223F1A8
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, pc}
	nop
_022302F0: .word 0x0223F1A8
	thumb_func_end ov97_022302D4

	thumb_func_start ov97_022302F4
ov97_022302F4: ; 0x022302F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02230400 ; =0x0223F1A8
	ldr r0, [r0, #0]
	cmp r0, #0x2c
	bne _0223031A
	bl ov97_022302D4
	bl ov97_02238CA0
	cmp r0, #0
	beq _02230314
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0x2d
	str r1, [r0, #0]
	b _0223031A
_02230314:
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0x2e
	str r1, [r0, #0]
_0223031A:
	ldr r0, _02230400 ; =0x0223F1A8
	ldr r0, [r0, #0]
	cmp r0, #0x25
	beq _02230336
	cmp r0, #0x26
	beq _02230336
	cmp r0, #0x27
	beq _02230336
	cmp r0, #0x28
	beq _02230336
	cmp r0, #0x29
	beq _02230336
	cmp r0, #0x2b
	bne _02230342
_02230336:
	bl WM_GetLinkLevel
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
_02230342:
	ldr r1, _02230400 ; =0x0223F1A8
	ldr r0, [r1, #0]
	sub r0, #0x25
	cmp r0, #0xb
	bhi _022303BC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230358: ; jump table
	.short _02230370 - _02230358 - 2 ; case 0
	.short _0223037C - _02230358 - 2 ; case 1
	.short _022303BC - _02230358 - 2 ; case 2
	.short _022303BC - _02230358 - 2 ; case 3
	.short _022303B2 - _02230358 - 2 ; case 4
	.short _022303BC - _02230358 - 2 ; case 5
	.short _022303BC - _02230358 - 2 ; case 6
	.short _022303BC - _02230358 - 2 ; case 7
	.short _022303BC - _02230358 - 2 ; case 8
	.short _022303BC - _02230358 - 2 ; case 9
	.short _022303BA - _02230358 - 2 ; case 10
	.short _022303BC - _02230358 - 2 ; case 11
_02230370:
	bl sub_02033478
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0x26
	str r1, [r0, #0]
	b _022303BC
_0223037C:
	bl sub_020334A4
	cmp r0, #1
	bne _022303BC
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0
	str r1, [r0, #0xc]
	bl ov97_02238D4C
	add r1, r0, #0
	mov r0, #0x56
	bl sub_02018144
	add r2, r0, #0
	ldr r0, _02230400 ; =0x0223F1A8
	ldr r1, _02230404 ; =ov97_02230280
	str r2, [r0, #4]
	ldr r0, _02230408 ; =0x000005D4
	add r0, r4, r0
	bl ov97_02238A4C
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0x27
	str r1, [r0, #0]
	bl sub_02039734
	b _022303BC
_022303B2:
	ldr r0, [r1, #0xc]
	add r0, r0, #1
	str r0, [r1, #0xc]
	b _022303BC
_022303BA:
	pop {r4, pc}
_022303BC:
	ldr r0, _0223040C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022303FC
	ldr r0, _02230400 ; =0x0223F1A8
	ldr r0, [r0, #0]
	sub r0, #0x28
	cmp r0, #8
	bhi _022303FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022303DC: ; jump table
	.short _022303EE - _022303DC - 2 ; case 0
	.short _022303EE - _022303DC - 2 ; case 1
	.short _022303FC - _022303DC - 2 ; case 2
	.short _022303FC - _022303DC - 2 ; case 3
	.short _022303FC - _022303DC - 2 ; case 4
	.short _022303FC - _022303DC - 2 ; case 5
	.short _022303FC - _022303DC - 2 ; case 6
	.short _022303FC - _022303DC - 2 ; case 7
	.short _022303EE - _022303DC - 2 ; case 8
_022303EE:
	bl ov97_022389C8
	cmp r0, #0
	beq _022303FC
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0x2b
	str r1, [r0, #0]
_022303FC:
	pop {r4, pc}
	nop
_02230400: .word 0x0223F1A8
_02230404: .word ov97_02230280
_02230408: .word 0x000005D4
_0223040C: .word 0x021BF67C
	thumb_func_end ov97_022302F4

	.rodata


	.global Unk_ov97_0223D71C
Unk_ov97_0223D71C: ; 0x0223D71C
	.incbin "incbin/overlay97_rodata.bin", 0xA8, 0xB8 - 0xA8

	.global Unk_ov97_0223D72C
Unk_ov97_0223D72C: ; 0x0223D72C
	.incbin "incbin/overlay97_rodata.bin", 0xB8, 0xC8 - 0xB8

	.global Unk_ov97_0223D73C
Unk_ov97_0223D73C: ; 0x0223D73C
	.incbin "incbin/overlay97_rodata.bin", 0xC8, 0xE4 - 0xC8

	.global Unk_ov97_0223D758
Unk_ov97_0223D758: ; 0x0223D758
	.incbin "incbin/overlay97_rodata.bin", 0xE4, 0x54


	.data


	.global Unk_ov97_0223E568
Unk_ov97_0223E568: ; 0x0223E568
	.incbin "incbin/overlay97_data.bin", 0x628, 0x638 - 0x628

	.global Unk_ov97_0223E578
Unk_ov97_0223E578: ; 0x0223E578
	.incbin "incbin/overlay97_data.bin", 0x638, 0x648 - 0x638

	.global Unk_ov97_0223E588
Unk_ov97_0223E588: ; 0x0223E588
	.incbin "incbin/overlay97_data.bin", 0x648, 0x658 - 0x648

	.global Unk_ov97_0223E598
Unk_ov97_0223E598: ; 0x0223E598
	.incbin "incbin/overlay97_data.bin", 0x658, 0x668 - 0x658

	.global Unk_ov97_0223E5A8
Unk_ov97_0223E5A8: ; 0x0223E5A8
	.incbin "incbin/overlay97_data.bin", 0x668, 0x678 - 0x668

	.global Unk_ov97_0223E5B8
Unk_ov97_0223E5B8: ; 0x0223E5B8
	.incbin "incbin/overlay97_data.bin", 0x678, 0x690 - 0x678

	.global Unk_ov97_0223E5D0
Unk_ov97_0223E5D0: ; 0x0223E5D0
	.incbin "incbin/overlay97_data.bin", 0x690, 0x6B0 - 0x690

	.global Unk_ov97_0223E5F0
Unk_ov97_0223E5F0: ; 0x0223E5F0
	.incbin "incbin/overlay97_data.bin", 0x6B0, 0x20


	.bss


	.global Unk_ov97_0223F1A8
Unk_ov97_0223F1A8: ; 0x0223F1A8
	.space 0x4

	.global Unk_ov97_0223F1AC
Unk_ov97_0223F1AC: ; 0x0223F1AC
	.space 0x4

	.global Unk_ov97_0223F1B0
Unk_ov97_0223F1B0: ; 0x0223F1B0
	.space 0x4

	.global Unk_ov97_0223F1B4
Unk_ov97_0223F1B4: ; 0x0223F1B4
	.space 0x4

	.global Unk_ov97_0223F1B8
Unk_ov97_0223F1B8: ; 0x0223F1B8
	.space 0x4

