	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov17_0223B140
ov17_0223B140: ; 0x0223B140
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _0223B404 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _0223B408 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0223B40C ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1, #0]
	ldr r3, [r0, #0]
	add r1, #0x50
	and r2, r3
	str r2, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #7
	mov r0, #3
	mov r1, #0x15
	lsl r2, r2, #0x10
	bl sub_02017FC8
	ldr r1, _0223B410 ; =0x00001658
	add r0, r5, #0
	mov r2, #0x15
	bl sub_0200681C
	ldr r2, _0223B410 ; =0x00001658
	mov r1, #0
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x15
	bl ov17_0223F140
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_02006840
	mov r1, #0x5b
	str r0, [r4, #0]
	lsl r1, r1, #2
	str r4, [r0, r1]
	ldr r2, [r4, #0]
	mov r3, #2
	add r0, r1, #4
	strb r3, [r2, r0]
	ldr r0, [r4, #0]
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov17_0223B8C4
	mov r0, #0x15
	bl sub_02002F38
	str r0, [r4, #0x5c]
	mov r1, #1
	bl sub_02003858
	mov r2, #2
	ldr r0, [r4, #0x5c]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x15
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r4, #0x5c]
	lsl r2, r1, #9
	mov r3, #0x15
	bl sub_02002F70
	mov r2, #7
	ldr r0, [r4, #0x5c]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x15
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r4, #0x5c]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x15
	bl sub_02002F70
	mov r0, #0x15
	bl sub_02018340
	str r0, [r4, #0x30]
	mov r0, #0x40
	mov r1, #0x15
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r2, #0x23
	add r1, r4, #0
	lsl r2, r2, #4
	ldr r0, [r4, #0]
	add r1, #0xc
	add r2, r4, r2
	bl ov17_0223F88C
	ldr r1, _0223B414 ; =0x0000081C
	str r0, [r4, r1]
	ldr r0, [r4, #0x30]
	bl ov17_0223B728
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r0, #2
	mov r1, #0x15
	bl sub_02002BB8
	mov r0, #0x15
	bl sub_0200C6E4
	ldr r1, _0223B418 ; =0x02252DC8
	ldr r2, _0223B41C ; =0x02252D9C
	mov r3, #0x20
	str r0, [r4, #0x24]
	bl sub_0200C73C
	ldr r1, _0223B420 ; =0x00100010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	ldr r0, [r4, #0x24]
	bl sub_0200C704
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	mov r2, #0x80
	bl sub_0200C7C0
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	ldr r2, _0223B424 ; =0x02252DB0
	bl sub_0200CB30
	ldr r0, [r4, #0x24]
	bl sub_0200C738
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
	mov r0, #0x15
	bl sub_0200762C
	str r0, [r4, #0x10]
	bl ov17_0223B884
	mov r0, #0x15
	bl ov12_0221FCDC
	mov r1, #1
	str r0, [r4, #0x2c]
	bl ov12_0221FDC0
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xcc
	mov r3, #0x15
	bl sub_0200B144
	str r0, [r4, #0x44]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xcd
	mov r3, #0x15
	bl sub_0200B144
	str r0, [r4, #0x48]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd2
	mov r3, #0x15
	bl sub_0200B144
	str r0, [r4, #0x4c]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd3
	mov r3, #0x15
	bl sub_0200B144
	str r0, [r4, #0x50]
	mov r0, #8
	mov r1, #0x15
	bl sub_02012744
	str r0, [r4, #0x60]
	mov r0, #0x15
	bl sub_0200B358
	str r0, [r4, #0x54]
	mov r0, #0x1e
	lsl r0, r0, #4
	mov r1, #0x15
	bl sub_02023790
	str r0, [r4, #0x58]
	mov r0, #0x2d
	mov r1, #0x15
	bl sub_02006C24
	add r5, r0, #0
	mov r0, #0x2e
	mov r1, #0x15
	bl sub_02006C24
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov17_0223BBA8
	add r0, r4, #0
	add r1, r5, #0
	bl ov17_0223BCE0
	add r0, r4, #0
	bl ov17_0223B858
	add r0, r4, #0
	bl ov17_02241428
	add r0, r4, #0
	add r1, r6, #0
	bl ov17_0223B8F8
	add r0, r4, #0
	add r1, r6, #0
	bl ov17_0223BA10
	add r0, r5, #0
	bl sub_02006CA8
	add r0, r6, #0
	bl sub_02006CA8
	ldr r7, _0223B428 ; =0x00000123
	mov r6, #0
	add r5, sp, #0xc
_0223B364:
	ldr r1, [r4, #0]
	mov r2, #0
	ldrb r0, [r1, r7]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	add r1, #0x36
	bl sub_02074470
	strh r0, [r5]
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #4
	blt _0223B364
	ldr r0, _0223B414 ; =0x0000081C
	add r1, sp, #0xc
	ldr r0, [r4, r0]
	bl ov17_02240A80
	ldr r0, _0223B414 ; =0x0000081C
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #1
	add r3, r1, #0
	bl ov17_0223F9C4
	add r0, r4, #0
	add r0, #0xc
	bl ov17_022415E4
	bl sub_02039734
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0x15
	str r1, [sp, #8]
	mov r1, #0x1f
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, _0223B42C ; =ov17_0223B6F0
	ldr r2, _0223B430 ; =0x0000EA60
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r0, _0223B434 ; =0x00000824
	mov r1, #1
	strb r1, [r4, r0]
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r1, _0223B438 ; =0x0000046F
	mov r0, #6
	mov r2, #1
	bl sub_02004550
	ldr r1, [r4, #0]
	ldr r0, _0223B43C ; =0x00000171
	ldrb r0, [r1, r0]
	bl sub_020959F4
	ldr r0, _0223B440 ; =ov17_0223B6BC
	add r1, r4, #0
	bl sub_02017798
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223B404: .word 0xFFFFE0FF
_0223B408: .word 0x04001000
_0223B40C: .word 0xFFFF1FFF
_0223B410: .word 0x00001658
_0223B414: .word 0x0000081C
_0223B418: .word 0x02252DC8
_0223B41C: .word 0x02252D9C
_0223B420: .word 0x00100010
_0223B424: .word 0x02252DB0
_0223B428: .word 0x00000123
_0223B42C: .word ov17_0223B6F0
_0223B430: .word 0x0000EA60
_0223B434: .word 0x00000824
_0223B438: .word 0x0000046F
_0223B43C: .word 0x00000171
_0223B440: .word ov17_0223B6BC
	thumb_func_end ov17_0223B140

	thumb_func_start ov17_0223B444
ov17_0223B444: ; 0x0223B444
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094E98
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223B466
	cmp r0, #1
	beq _0223B474
	cmp r0, #2
	beq _0223B54E
	b _0223B564
_0223B466:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0223B564
	mov r0, #1
	str r0, [r5, #0]
	b _0223B564
_0223B474:
	ldr r0, [r4, #0]
	bl sub_02094EDC
	cmp r0, #1
	bne _0223B4EE
	ldr r2, _0223B56C ; =0x00000822
	ldr r1, _0223B570 ; =0x00001648
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, r4, r1
	lsl r3, r2, #2
	ldr r2, _0223B574 ; =0x02252E10
	ldr r2, [r2, r3]
	blx r2
	sub r1, r0, #1
	cmp r1, #1
	bhi _0223B4B8
	cmp r0, #1
	bne _0223B4A2
	ldr r0, _0223B56C ; =0x00000822
	ldrh r1, [r4, r0]
	add r1, r1, #1
	b _0223B4A8
_0223B4A2:
	ldr r0, _0223B578 ; =0x0000164A
	ldrh r1, [r4, r0]
	ldr r0, _0223B56C ; =0x00000822
_0223B4A8:
	strh r1, [r4, r0]
	ldr r0, _0223B570 ; =0x00001648
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl sub_020C4CF4
	b _0223B4EE
_0223B4B8:
	cmp r0, #3
	bne _0223B4EE
	ldr r0, _0223B57C ; =0x00001650
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0223B4EE
	mov r1, #2
	sub r0, #8
	str r1, [r5, #0]
	add r0, r4, r0
	mov r1, #0
	mov r2, #8
	bl sub_020C4CF4
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x15
	mov r1, #0x20
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	b _0223B564
_0223B4EE:
	mov r0, #0xc3
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov17_0224F35C
	mov r0, #0xc3
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	bl ov17_0224F3D8
	ldr r0, _0223B57C ; =0x00001650
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223B564
	mov r0, #0xc3
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov17_0224F3D0
	cmp r0, #0
	bne _0223B564
	ldr r0, [r4, #0]
	bl sub_02094EDC
	cmp r0, #0
	bne _0223B564
	mov r0, #2
	str r0, [r5, #0]
	ldr r0, _0223B570 ; =0x00001648
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl sub_020C4CF4
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x15
	mov r1, #0x20
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	b _0223B564
_0223B54E:
	ldr r0, _0223B57C ; =0x00001650
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223B564
	bl sub_0200F2AC
	cmp r0, #1
	bne _0223B564
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223B564:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223B56C: .word 0x00000822
_0223B570: .word 0x00001648
_0223B574: .word 0x02252E10
_0223B578: .word 0x0000164A
_0223B57C: .word 0x00001650
	thumb_func_end ov17_0223B444

	thumb_func_start ov17_0223B580
ov17_0223B580: ; 0x0223B580
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_020141E4
	ldr r0, [r4, #0x2c]
	bl ov12_0221FDF4
	add r0, r4, #0
	bl ov17_0223B9A4
	add r0, r4, #0
	bl ov17_0223BAD0
	add r0, r4, #0
	bl ov17_0223BCDC
	add r0, r4, #0
	bl ov17_0223BCE4
	add r0, r4, #0
	add r0, #0x34
	bl sub_0201A8FC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x30]
	bl ov17_0223F864
	ldr r0, _0223B6AC ; =0x0000081C
	ldr r0, [r4, r0]
	bl ov17_0223F960
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	bl sub_0200D0B0
	ldr r0, [r4, #0x24]
	bl sub_0200C8D4
	bl sub_0201DC3C
	add r0, r4, #0
	add r0, #0xc
	bl ov17_022416E4
	ldr r0, [r4, #0x10]
	bl sub_02007B6C
	mov r0, #2
	bl sub_02002C60
	ldr r0, [r4, #0x60]
	bl sub_020127BC
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r4, #0x5c]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #0x5c]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r4, #0x5c]
	bl sub_02002F54
	ldr r0, [r4, #0x58]
	bl sub_020237BC
	ldr r0, [r4, #0x54]
	bl sub_0200B3F0
	ldr r0, [r4, #0x44]
	bl sub_0200B190
	ldr r0, [r4, #0x48]
	bl sub_0200B190
	ldr r0, [r4, #0x4c]
	bl sub_0200B190
	ldr r0, [r4, #0x50]
	bl sub_0200B190
	ldr r0, [r4, #0x30]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, [r4, #8]
	bl ov17_0223F1E0
	bl sub_0201E530
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #0x15
	bl sub_0201807C
	bl sub_02095A24
	bl sub_02039794
	ldr r0, _0223B6B0 ; =0x0000000B
	bl sub_02006514
	ldr r0, _0223B6B4 ; =0x0000000C
	bl sub_02006514
	ldr r0, _0223B6B8 ; =0x00000016
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223B6AC: .word 0x0000081C
_0223B6B0: .word 0x0000000B
_0223B6B4: .word 0x0000000C
_0223B6B8: .word 0x00000016
	thumb_func_end ov17_0223B580

	thumb_func_start ov17_0223B6BC
ov17_0223B6BC: ; 0x0223B6BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02008A94
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r0, [r4, #0x5c]
	bl sub_02003694
	ldr r0, [r4, #0x30]
	bl sub_0201C2B8
	ldr r3, _0223B6E8 ; =0x027E0000
	ldr r1, _0223B6EC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_0223B6E8: .word 0x027E0000
_0223B6EC: .word 0x00003FF8
	thumb_func_end ov17_0223B6BC

	thumb_func_start ov17_0223B6F0
ov17_0223B6F0: ; 0x0223B6F0
	push {r4, lr}
	ldr r0, _0223B720 ; =0x00000824
	add r4, r1, #0
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223B716
	ldr r0, [r4, #0x10]
	bl sub_02007768
	bl ov11_0221F8F0
	ldr r0, [r4, #0x28]
	bl sub_0200C7EC
	bl sub_0200C808
	ldr r0, _0223B724 ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
_0223B716:
	ldr r1, [r4, #0x30]
	mov r0, #0x15
	bl sub_02038A1C
	pop {r4, pc}
	; .align 2, 0
_0223B720: .word 0x00000824
_0223B724: .word 0x04000540
	thumb_func_end ov17_0223B6F0

	thumb_func_start ov17_0223B728
ov17_0223B728: ; 0x0223B728
	push {r4, r5, lr}
	sub sp, #0x8c
	add r4, r0, #0
	bl sub_0201FF00
	ldr r5, _0223B848 ; =0x02252DE8
	add r3, sp, #0x10
	mov r2, #5
_0223B738:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223B738
	add r0, sp, #0x10
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	ldr r5, _0223B84C ; =0x02252D8C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223B850 ; =0x02252E50
	add r3, sp, #0x38
	mov r2, #0xa
_0223B798:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223B798
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x38
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r1, _0223B854 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	add r0, r4, #0
	bl ov17_0223F80C
	add sp, #0x8c
	pop {r4, r5, pc}
	; .align 2, 0
_0223B848: .word 0x02252DE8
_0223B84C: .word 0x02252D8C
_0223B850: .word 0x02252E50
_0223B854: .word 0x04000008
	thumb_func_end ov17_0223B728

	thumb_func_start ov17_0223B858
ov17_0223B858: ; 0x0223B858
	push {lr}
	sub sp, #0x14
	add r1, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #3
	lsl r0, r0, #8
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x30]
	add r1, #0x34
	mov r2, #1
	mov r3, #0xb
	bl sub_0201A7E8
	add sp, #0x14
	pop {pc}
	thumb_func_end ov17_0223B858

	thumb_func_start ov17_0223B884
ov17_0223B884: ; 0x0223B884
	push {r3, r4, r5, lr}
	ldr r3, _0223B8BC ; =0x02100DEC
	mov r0, #2
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0223B8C0 ; =0x02100DF4
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0x80
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _0223B8AC
	bl sub_02022974
_0223B8AC:
	cmp r5, #0
	bne _0223B8B4
	bl sub_02022974
_0223B8B4:
	bl sub_02014000
	pop {r3, r4, r5, pc}
	nop
_0223B8BC: .word 0x02100DEC
_0223B8C0: .word 0x02100DF4
	thumb_func_end ov17_0223B884

	thumb_func_start ov17_0223B8C4
ov17_0223B8C4: ; 0x0223B8C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0223B8D2
	bl sub_02022974
_0223B8D2:
	ldr r1, _0223B8F4 ; =0x00000172
	mov r0, #0
	add r2, r1, #0
	add r2, #0xbf
_0223B8DA:
	ldr r3, [r4, #0]
	add r3, r3, r0
	ldrb r5, [r3, r1]
	add r3, r4, r0
	add r0, r0, #1
	strb r5, [r3, r2]
	cmp r0, #4
	blt _0223B8DA
	add r0, r4, #0
	bl ov17_02243C28
	pop {r3, r4, r5, pc}
	nop
_0223B8F4: .word 0x00000172
	thumb_func_end ov17_0223B8C4

	thumb_func_start ov17_0223B8F8
ov17_0223B8F8: ; 0x0223B8F8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223B998 ; =0x000080E9
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl sub_0200CDC4
	str r4, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223B99C ; =0x000080ED
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl sub_0200CDC4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, r4, #0
	bl ov17_02243040
	add r0, r5, #0
	bl ov17_02242FA4
	add r0, r5, #0
	ldr r1, [r5, #0]
	add r0, #0xc
	add r2, r4, #0
	bl ov17_02241928
	add r0, r5, #0
	ldr r2, [r5, #0]
	ldr r1, _0223B9A0 ; =0x0000011E
	add r0, #0xc
	ldrb r1, [r2, r1]
	add r2, r4, #0
	bl ov17_02241D94
	ldr r0, [r5, #0x5c]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	add r3, r4, #0
	bl ov17_022419AC
	add r0, r5, #0
	add r0, #0xc
	bl ov17_02241A24
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, r4, #0
	bl ov17_02241E58
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, r4, #0
	bl ov17_02242154
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223B998: .word 0x000080E9
_0223B99C: .word 0x000080ED
_0223B9A0: .word 0x0000011E
	thumb_func_end ov17_0223B8F8

	thumb_func_start ov17_0223B9A4
ov17_0223B9A4: ; 0x0223B9A4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc
	bl ov17_02241E24
	add r0, r4, #0
	add r0, #0xc
	bl ov17_0224197C
	add r0, r4, #0
	bl ov17_02242FC0
	add r0, r4, #0
	add r0, #0xc
	bl ov17_022430F8
	ldr r0, [r4, #0x28]
	bl ov17_0224308C
	ldr r0, [r4, #0x28]
	ldr r1, _0223BA08 ; =0x000080E9
	bl sub_0200D080
	ldr r0, [r4, #0x28]
	ldr r1, _0223BA0C ; =0x000080ED
	bl sub_0200D080
	add r0, r4, #0
	add r0, #0xc
	bl ov17_02241A64
	ldr r0, [r4, #0x28]
	bl ov17_02241A00
	ldr r0, [r4, #0x28]
	bl ov17_02241EA4
	add r0, r4, #0
	add r0, #0xc
	bl ov17_02241EF0
	ldr r0, [r4, #0x28]
	bl ov17_022421E0
	add r4, #0xc
	add r0, r4, #0
	bl ov17_02242248
	pop {r4, pc}
	nop
_0223BA08: .word 0x000080E9
_0223BA0C: .word 0x000080ED
	thumb_func_end ov17_0223B9A4

	thumb_func_start ov17_0223BA10
ov17_0223BA10: ; 0x0223BA10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0223BABC ; =0x000080EF
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl sub_0200CDC4
	str r4, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0223BAC0 ; =0x000080F0
	mov r1, #3
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl sub_0200CDC4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, r4, #0
	bl ov17_0224131C
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, r4, #0
	bl ov17_02241270
	ldr r2, _0223BAC4 ; =0x000080F4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r3, r2, #0
	bl ov17_0224F0F0
	ldr r7, _0223BAC8 ; =0x000080F6
	ldr r6, _0223BACC ; =0x00000123
	mov r4, #0
_0223BA80:
	ldr r1, [r5, #0]
	mov r2, #0
	ldrb r0, [r1, r6]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x36
	bl sub_02074470
	cmp r0, #0
	beq _0223BAA0
	mov r1, #0xb
	bl sub_020790C4
	add r3, r0, #0
	b _0223BAA2
_0223BAA0:
	mov r3, #0
_0223BAA2:
	add r0, r4, r7
	str r0, [sp]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r2, #2
	bl ov17_0224F0BC
	add r4, r4, #1
	cmp r4, #4
	blt _0223BA80
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BABC: .word 0x000080EF
_0223BAC0: .word 0x000080F0
_0223BAC4: .word 0x000080F4
_0223BAC8: .word 0x000080F6
_0223BACC: .word 0x00000123
	thumb_func_end ov17_0223BA10

	thumb_func_start ov17_0223BAD0
ov17_0223BAD0: ; 0x0223BAD0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	ldr r1, _0223BB08 ; =0x000080EF
	bl sub_0200D080
	ldr r0, [r5, #0x28]
	bl ov17_022413B4
	ldr r0, [r5, #0x28]
	bl ov17_022412F0
	ldr r1, _0223BB0C ; =0x000080F4
	ldr r0, [r5, #0x28]
	add r2, r1, #0
	bl ov17_0224F140
	ldr r6, _0223BB10 ; =0x000080F6
	mov r4, #0
_0223BAF6:
	ldr r0, [r5, #0x28]
	add r1, r4, r6
	bl ov17_0224F138
	add r4, r4, #1
	cmp r4, #4
	blt _0223BAF6
	pop {r4, r5, r6, pc}
	nop
_0223BB08: .word 0x000080EF
_0223BB0C: .word 0x000080F4
_0223BB10: .word 0x000080F6
	thumb_func_end ov17_0223BAD0

	thumb_func_start ov17_0223BB14
ov17_0223BB14: ; 0x0223BB14
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	bne _0223BB7E
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	mov r0, #0x2d
	mov r1, #3
	mov r3, #2
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	mov r0, #0x2d
	mov r1, #5
	mov r3, #2
	bl sub_02006E60
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	add r0, r5, #0
	bl ov17_02241428
	cmp r4, #1
	bne _0223BBA2
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0223BB7E:
	mov r0, #2
	lsl r1, r0, #0xd
	mov r2, #0
	mov r3, #0x15
	bl sub_02019690
	ldr r0, [r5, #0x30]
	mov r1, #2
	bl sub_02019EBC
	mov r0, #1
	mov r1, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #1
	bl sub_02019060
_0223BBA2:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0223BB14

	thumb_func_start ov17_0223BBA8
ov17_0223BBA8: ; 0x0223BBA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r4, r1, #0
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r1, #2
	mov r3, #3
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r1, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r1, #4
	bl sub_0200710C
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov17_0223BB14
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x5c]
	mov r1, #0x2d
	mov r2, #0x1e
	mov r3, #0x15
	bl sub_02003050
	mov r0, #0x15
	mov r1, #0x20
	bl sub_02018144
	add r7, r0, #0
	mov r0, #0x15
	mov r1, #0x20
	bl sub_02018144
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x5c]
	mov r1, #0
	bl sub_02003164
	add r4, r0, #0
	ldr r0, [r5, #0x5c]
	mov r1, #0
	bl sub_0200316C
	str r0, [sp, #0x14]
	ldr r0, _0223BCD4 ; =0x022536B4
	add r1, r7, #0
	ldrb r0, [r0]
	mov r2, #0x20
	lsl r6, r0, #5
	add r0, r4, r6
	bl sub_020C4B18
	ldr r1, [r5, #0]
	ldr r0, _0223BCD8 ; =0x00000123
	mov r2, #0x20
	ldrb r1, [r1, r0]
	ldr r0, _0223BCD4 ; =0x022536B4
	ldrb r0, [r0, r1]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #5
	add r0, r4, r0
	bl sub_020C4B18
	ldr r2, [r5, #0]
	ldr r1, _0223BCD8 ; =0x00000123
	add r0, r7, #0
	ldrb r2, [r2, r1]
	ldr r1, _0223BCD4 ; =0x022536B4
	ldrb r1, [r1, r2]
	mov r2, #0x20
	lsl r1, r1, #5
	add r1, r4, r1
	bl sub_020C4B18
	ldr r0, [sp, #0x10]
	add r1, r4, r6
	mov r2, #0x20
	bl sub_020C4B18
	ldr r2, [r5, #0]
	ldr r1, _0223BCD8 ; =0x00000123
	add r0, r7, #0
	ldrb r2, [r2, r1]
	ldr r1, _0223BCD4 ; =0x022536B4
	ldrb r1, [r1, r2]
	lsl r2, r1, #5
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	mov r2, #0x20
	bl sub_020C4B18
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r1, r1, r6
	mov r2, #0x20
	bl sub_020C4B18
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BCD4: .word 0x022536B4
_0223BCD8: .word 0x00000123
	thumb_func_end ov17_0223BBA8

	thumb_func_start ov17_0223BCDC
ov17_0223BCDC: ; 0x0223BCDC
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0223BCDC

	thumb_func_start ov17_0223BCE0
ov17_0223BCE0: ; 0x0223BCE0
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0223BCE0

	thumb_func_start ov17_0223BCE4
ov17_0223BCE4: ; 0x0223BCE4
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0223BCE4

	thumb_func_start ov17_0223BCE8
ov17_0223BCE8: ; 0x0223BCE8
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223BD2A
	ldr r1, [r2, #0]
	ldr r0, _0223BD50 ; =0x00000177
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0223BD0A
	ldr r0, [r4, #4]
	cmp r0, #0x78
	bge _0223BD0A
	add r0, r0, #1
	str r0, [r4, #4]
	b _0223BD4A
_0223BD0A:
	mov r0, #0xc3
	lsl r0, r0, #4
	add r0, r2, r0
	add r1, r2, #0
	mov r2, #2
	mov r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223BD4A
	mov r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223BD4A
_0223BD2A:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r3, [r2, #0]
	ldr r4, _0223BD54 ; =0x00000127
	add r0, r2, r0
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223BD4A
	mov r0, #1
	pop {r4, pc}
_0223BD4A:
	mov r0, #0
	pop {r4, pc}
	nop
_0223BD50: .word 0x00000177
_0223BD54: .word 0x00000127
	thumb_func_end ov17_0223BCE8

	thumb_func_start ov17_0223BD58
ov17_0223BD58: ; 0x0223BD58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_0209590C
	cmp r0, #0
	bne _0223BD6C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223BD6C:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223BD9E
	ldr r3, _0223BDC4 ; =0x0000040C
	mov r1, #0
	strb r1, [r5, r3]
	add r0, r3, #2
	strb r1, [r5, r0]
	add r0, r3, #3
	strb r1, [r5, r0]
	mov r0, #0xc3
	lsl r0, r0, #4
	sub r3, #0xe4
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0x14
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223BDBE
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223BDBE
_0223BD9E:
	ldr r4, _0223BDC8 ; =0x00000127
	ldr r3, [r5, #0]
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	mov r0, #0xc3
	lsl r0, r0, #4
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	add r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223BDBE
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223BDBE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223BDC4: .word 0x0000040C
_0223BDC8: .word 0x00000127
	thumb_func_end ov17_0223BD58

	thumb_func_start ov17_0223BDCC
ov17_0223BDCC: ; 0x0223BDCC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223BE20
	ldr r0, [r5, #0]
	bl sub_0209590C
	cmp r0, #1
	bne _0223BDEA
	ldr r0, _0223BE44 ; =0x0000040C
	mov r1, #0x2d
	strb r1, [r5, r0]
	b _0223BDF8
_0223BDEA:
	ldr r1, [r5, #0]
	ldr r0, _0223BE48 ; =0x0000011F
	ldrb r0, [r1, r0]
	bl ov17_02243944
	ldr r1, _0223BE44 ; =0x0000040C
	strb r0, [r5, r1]
_0223BDF8:
	ldr r3, _0223BE4C ; =0x0000040E
	mov r1, #0
	strb r1, [r5, r3]
	add r0, r3, #1
	strb r1, [r5, r0]
	mov r0, #0xc3
	lsl r0, r0, #4
	sub r3, #0xe6
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0x14
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223BE40
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223BE40
_0223BE20:
	ldr r4, _0223BE50 ; =0x00000127
	ldr r3, [r5, #0]
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	mov r0, #0xc3
	lsl r0, r0, #4
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	add r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223BE40
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223BE40:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223BE44: .word 0x0000040C
_0223BE48: .word 0x0000011F
_0223BE4C: .word 0x0000040E
_0223BE50: .word 0x00000127
	thumb_func_end ov17_0223BDCC

	thumb_func_start ov17_0223BE54
ov17_0223BE54: ; 0x0223BE54
	mov r0, #1
	bx lr
	thumb_func_end ov17_0223BE54

	thumb_func_start ov17_0223BE58
ov17_0223BE58: ; 0x0223BE58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	ldrh r1, [r1]
	add r4, r0, #0
	cmp r1, #0
	beq _0223BE70
	cmp r1, #1
	beq _0223BE90
	cmp r1, #2
	beq _0223BEB8
	b _0223BEF8
_0223BE70:
	mov r0, #0xc3
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223BF08
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	b _0223BF08
_0223BE90:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _0223BF10 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223BF08
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	b _0223BF08
_0223BEB8:
	add r1, sp, #4
	bl ov17_02246ECC
	ldr r1, [r4, #0]
	ldr r0, _0223BF10 ; =0x00000127
	ldrb r0, [r1, r0]
	cmp r0, #4
	bge _0223BEEC
	lsl r2, r0, #1
	add r3, sp, #4
	add r1, r3, r2
	ldr r7, _0223BF14 ; =0x0000023E
	add r2, r4, r2
	add r3, r3, r0
_0223BED4:
	ldrh r6, [r1]
	ldr r5, _0223BF18 ; =0x00000236
	add r1, r1, #2
	strh r6, [r2, r5]
	ldrb r6, [r3, #8]
	add r5, r4, r0
	add r0, r0, #1
	strb r6, [r5, r7]
	add r2, r2, #2
	add r3, r3, #1
	cmp r0, #4
	blt _0223BED4
_0223BEEC:
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	b _0223BF08
_0223BEF8:
	mov r1, #0xce
	lsl r1, r1, #2
	add r1, r4, r1
	bl ov17_02245F44
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223BF08:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BF10: .word 0x00000127
_0223BF14: .word 0x0000023E
_0223BF18: .word 0x00000236
	thumb_func_end ov17_0223BE58

	thumb_func_start ov17_0223BF1C
ov17_0223BF1C: ; 0x0223BF1C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0223BF9C ; =0x00000235
	add r4, r0, #0
	ldrb r0, [r4, r2]
	add r1, r4, r0
	sub r0, r2, #4
	ldrb r0, [r1, r0]
	add r1, r2, #0
	add r1, #0xf3
	strb r0, [r4, r1]
	str r0, [sp]
	add r0, r2, #0
	ldrb r1, [r4, r2]
	add r0, #0xf4
	strb r1, [r4, r0]
	ldr r0, [sp]
	add r1, r4, r0
	add r0, r2, #0
	add r0, #9
	ldrb r3, [r1, r0]
	add r0, r2, #0
	add r0, #0xf5
	strb r3, [r4, r0]
	add r3, r2, #0
	mov r0, #0
	add r3, #0xf6
	strb r0, [r4, r3]
	ldrb r2, [r4, r2]
	cmp r2, #0
	ble _0223BF7C
	ldr r7, _0223BFA0 ; =0x0000023E
	mov r5, #1
	add r3, r7, #0
_0223BF5E:
	ldr r2, _0223BFA4 ; =0x00000231
	add r6, r4, r0
	ldrb r2, [r6, r2]
	add r2, r4, r2
	ldrb r6, [r2, r7]
	ldrb r2, [r1, r3]
	cmp r6, r2
	bne _0223BF72
	ldr r2, _0223BFA8 ; =0x0000032B
	strb r5, [r4, r2]
_0223BF72:
	ldr r2, _0223BF9C ; =0x00000235
	add r0, r0, #1
	ldrb r2, [r4, r2]
	cmp r0, r2
	blt _0223BF5E
_0223BF7C:
	mov r1, #1
	lsl r1, r1, #0xa
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r4, r1
	bl ov17_02243120
	ldr r1, _0223BFAC ; =0x00000406
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r4, r1
	bl ov17_02243120
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BF9C: .word 0x00000235
_0223BFA0: .word 0x0000023E
_0223BFA4: .word 0x00000231
_0223BFA8: .word 0x0000032B
_0223BFAC: .word 0x00000406
	thumb_func_end ov17_0223BF1C

	thumb_func_start ov17_0223BFB0
ov17_0223BFB0: ; 0x0223BFB0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223BFDC
	mov r0, #0xc3
	mov r3, #0xca
	lsl r0, r0, #4
	lsl r3, r3, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #4
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223BFFC
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223BFFC
_0223BFDC:
	ldr r4, _0223C000 ; =0x00000127
	ldr r3, [r5, #0]
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	mov r0, #0xc3
	lsl r0, r0, #4
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	add r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223BFFC
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223BFFC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C000: .word 0x00000127
	thumb_func_end ov17_0223BFB0

	thumb_func_start ov17_0223C004
ov17_0223C004: ; 0x0223C004
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #0
	bne _0223C034
	ldr r3, _0223C060 ; =0x0000040C
	mov r0, #0
	strb r0, [r4, r3]
	mov r0, #0xc3
	lsl r0, r0, #4
	sub r3, #0xe4
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #6
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C05A
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223C05A
_0223C034:
	ldr r5, _0223C064 ; =0x00000127
	ldr r3, [r4, #0]
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	mov r0, #0xc3
	lsl r0, r0, #4
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	add r0, r4, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C05A
	ldr r0, _0223C060 ; =0x0000040C
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223C05A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223C060: .word 0x0000040C
_0223C064: .word 0x00000127
	thumb_func_end ov17_0223C004

	thumb_func_start ov17_0223C068
ov17_0223C068: ; 0x0223C068
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #0
	beq _0223C07A
	cmp r0, #1
	beq _0223C0AA
	b _0223C0CA
_0223C07A:
	ldr r0, _0223C0F8 ; =0x0000040C
	mov r1, #4
	strb r1, [r4, r0]
	add r1, r0, #0
	sub r1, #0xe1
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _0223C08E
	mov r1, #5
	b _0223C090
_0223C08E:
	mov r1, #0
_0223C090:
	mov r2, #0xce
	add r0, r0, #1
	strb r1, [r4, r0]
	lsl r2, r2, #2
	add r1, r4, r2
	sub r2, #0x10
	ldrb r2, [r4, r2]
	add r0, r4, #0
	bl ov17_022460DC
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
_0223C0AA:
	mov r0, #0xc3
	mov r3, #0xca
	lsl r0, r0, #4
	lsl r3, r3, #2
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #7
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C0F4
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223C0F4
_0223C0CA:
	ldr r5, _0223C0FC ; =0x00000127
	ldr r3, [r4, #0]
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	mov r0, #0xc3
	lsl r0, r0, #4
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	add r0, r4, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C0F4
	ldr r0, _0223C0F8 ; =0x0000040C
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r0, #1
	strb r1, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223C0F4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C0F8: .word 0x0000040C
_0223C0FC: .word 0x00000127
	thumb_func_end ov17_0223C068

	thumb_func_start ov17_0223C100
ov17_0223C100: ; 0x0223C100
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	cmp r1, #0xc
	bls _0223C10E
	b _0223C2BE
_0223C10E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223C11A: ; jump table
	.short _0223C134 - _0223C11A - 2 ; case 0
	.short _0223C14A - _0223C11A - 2 ; case 1
	.short _0223C15E - _0223C11A - 2 ; case 2
	.short _0223C17E - _0223C11A - 2 ; case 3
	.short _0223C1A4 - _0223C11A - 2 ; case 4
	.short _0223C1BE - _0223C11A - 2 ; case 5
	.short _0223C1DE - _0223C11A - 2 ; case 6
	.short _0223C202 - _0223C11A - 2 ; case 7
	.short _0223C21C - _0223C11A - 2 ; case 8
	.short _0223C23C - _0223C11A - 2 ; case 9
	.short _0223C260 - _0223C11A - 2 ; case 10
	.short _0223C27A - _0223C11A - 2 ; case 11
	.short _0223C29A - _0223C11A - 2 ; case 12
_0223C134:
	mov r2, #0xce
	lsl r2, r2, #2
	add r1, r5, r2
	sub r2, #0x10
	ldrb r2, [r5, r2]
	bl ov17_02245FB4
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C14A:
	mov r2, #0xce
	lsl r2, r2, #2
	add r1, r5, r2
	sub r2, #0x10
	ldrb r2, [r5, r2]
	bl ov17_02246138
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_0223C15E:
	mov r0, #0xc3
	mov r3, #0xca
	lsl r0, r0, #4
	lsl r3, r3, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0xa
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C19A
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C17E:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _0223C2D8 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	beq _0223C19C
_0223C19A:
	b _0223C2D2
_0223C19C:
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C1A4:
	mov r3, #0xce
	lsl r3, r3, #2
	add r2, r3, #0
	add r1, r5, r3
	sub r2, #0x10
	sub r3, #0xf
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_02246160
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_0223C1BE:
	mov r0, #0xc3
	mov r3, #0xca
	lsl r0, r0, #4
	lsl r3, r3, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0xb
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C1DE:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _0223C2D8 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C202:
	mov r3, #0xce
	lsl r3, r3, #2
	add r2, r3, #0
	add r1, r5, r3
	sub r2, #0x10
	sub r3, #0xf
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_02246228
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_0223C21C:
	mov r0, #0xc3
	mov r3, #0xca
	lsl r0, r0, #4
	lsl r3, r3, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0xc
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C23C:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _0223C2D8 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C260:
	mov r3, #0xce
	lsl r3, r3, #2
	add r2, r3, #0
	sub r2, #0x10
	ldrb r2, [r5, r2]
	add r1, r5, r3
	add r3, #0xc8
	add r3, r5, r3
	bl ov17_022463C4
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_0223C27A:
	mov r0, #0xc3
	mov r3, #0xca
	lsl r0, r0, #4
	lsl r3, r3, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0xd
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C29A:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _0223C2D8 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C2BE:
	mov r2, #0xce
	lsl r2, r2, #2
	add r1, r5, r2
	sub r2, #0x10
	ldrb r2, [r5, r2]
	add r0, r5, #0
	bl ov17_02246018
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223C2D2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223C2D8: .word 0x00000127
	thumb_func_end ov17_0223C100

	thumb_func_start ov17_0223C2DC
ov17_0223C2DC: ; 0x0223C2DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223C308
	mov r0, #0xc3
	mov r3, #0xca
	lsl r0, r0, #4
	lsl r3, r3, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #5
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C328
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C328
_0223C308:
	ldr r4, _0223C32C ; =0x00000127
	ldr r3, [r5, #0]
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	mov r0, #0xc3
	lsl r0, r0, #4
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	add r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C328
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223C328:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C32C: .word 0x00000127
	thumb_func_end ov17_0223C2DC

	thumb_func_start ov17_0223C330
ov17_0223C330: ; 0x0223C330
	ldr r2, _0223C34C ; =0x00000235
	ldrb r3, [r0, r2]
	add r3, r3, #1
	strb r3, [r0, r2]
	ldrb r0, [r0, r2]
	cmp r0, #4
	blo _0223C342
	mov r0, #1
	bx lr
_0223C342:
	mov r0, #5
	strh r0, [r1, #2]
	mov r0, #2
	bx lr
	nop
_0223C34C: .word 0x00000235
	thumb_func_end ov17_0223C330

	thumb_func_start ov17_0223C350
ov17_0223C350: ; 0x0223C350
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r7, r1, #0
	ldrh r1, [r7]
	str r0, [sp]
	cmp r1, #0x18
	bls _0223C360
	b _0223C804
_0223C360:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223C36C: ; jump table
	.short _0223C39E - _0223C36C - 2 ; case 0
	.short _0223C3A4 - _0223C36C - 2 ; case 1
	.short _0223C3C2 - _0223C36C - 2 ; case 2
	.short _0223C3F0 - _0223C36C - 2 ; case 3
	.short _0223C414 - _0223C36C - 2 ; case 4
	.short _0223C43C - _0223C36C - 2 ; case 5
	.short _0223C458 - _0223C36C - 2 ; case 6
	.short _0223C480 - _0223C36C - 2 ; case 7
	.short _0223C5D6 - _0223C36C - 2 ; case 8
	.short _0223C5DE - _0223C36C - 2 ; case 9
	.short _0223C604 - _0223C36C - 2 ; case 10
	.short _0223C636 - _0223C36C - 2 ; case 11
	.short _0223C64E - _0223C36C - 2 ; case 12
	.short _0223C65A - _0223C36C - 2 ; case 13
	.short _0223C678 - _0223C36C - 2 ; case 14
	.short _0223C6A6 - _0223C36C - 2 ; case 15
	.short _0223C6E8 - _0223C36C - 2 ; case 16
	.short _0223C71C - _0223C36C - 2 ; case 17
	.short _0223C734 - _0223C36C - 2 ; case 18
	.short _0223C740 - _0223C36C - 2 ; case 19
	.short _0223C752 - _0223C36C - 2 ; case 20
	.short _0223C770 - _0223C36C - 2 ; case 21
	.short _0223C79E - _0223C36C - 2 ; case 22
	.short _0223C7C2 - _0223C36C - 2 ; case 23
	.short _0223C7E8 - _0223C36C - 2 ; case 24
_0223C39E:
	add r0, r1, #1
	strh r0, [r7]
	b _0223C80A
_0223C3A4:
	ldr r1, [r7, #4]
	ldr r0, [sp]
	ldr r2, _0223C6CC ; =0x00000231
	add r0, r0, r1
	ldrb r3, [r0, r2]
	add r1, r2, #0
	ldr r0, [sp]
	add r1, #0xf7
	strb r3, [r0, r1]
	ldr r1, [r7, #4]
	add r2, #0xf8
	strb r1, [r0, r2]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0223C3C2:
	mov r3, #0xce
	ldr r0, [sp]
	lsl r3, r3, #2
	add r4, r3, #0
	add r1, r0, #0
	add r1, r1, r3
	sub r4, #0x10
	add r2, r0, #0
	ldrb r2, [r2, r4]
	sub r3, #0xf
	add r4, r0, #0
	ldrb r3, [r4, r3]
	bl ov17_022462A4
	cmp r0, #1
	bne _0223C3EA
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C3EA:
	mov r0, #5
	strh r0, [r7]
	b _0223C80A
_0223C3F0:
	mov r1, #0xc3
	ldr r0, [sp]
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [sp]
	mov r4, #0xca
	lsl r4, r4, #2
	add r3, r1, #0
	mov r2, #0xe
	add r3, r3, r4
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C432
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C414:
	ldr r0, [sp]
	mov r1, #0xc3
	ldr r4, _0223C6D0 ; =0x00000127
	ldr r3, [r0, #0]
	lsl r1, r1, #4
	add r0, r0, r1
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	beq _0223C434
_0223C432:
	b _0223C80A
_0223C434:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C43C:
	ldr r0, [r7, #4]
	add r0, r0, #1
	str r0, [r7, #4]
	cmp r0, #4
	blt _0223C452
	mov r0, #0
	str r0, [r7, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C452:
	mov r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C458:
	mov r6, #0xce
	lsl r6, r6, #2
	add r5, r6, #0
	mov r4, #0
	add r5, #0xc8
_0223C462:
	ldr r0, [sp]
	add r2, r4, #0
	add r1, r0, #0
	add r3, r0, #0
	add r1, r1, r6
	add r3, r3, r5
	bl ov17_02246518
	add r4, r4, #1
	cmp r4, #4
	blt _0223C462
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C480:
	mov r5, #0
	add r2, sp, #0x40
	add r3, sp, #0x34
	add r6, sp, #4
	mov r0, #4
_0223C48A:
	mov r1, #0
	str r1, [r2, #0]
	str r5, [r3, #0]
	add r4, r6, #0
_0223C492:
	add r1, r1, #1
	stmia r4!, {r0}
	cmp r1, #4
	blt _0223C492
	add r5, r5, #1
	add r2, r2, #4
	add r3, r3, #4
	add r6, #0x10
	cmp r5, #3
	blt _0223C48A
	mov r3, #0
	add r6, sp, #0x40
_0223C4AA:
	ldr r0, [sp]
	add r1, r0, r3
	ldr r0, _0223C6CC ; =0x00000231
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	add r2, r0, r1
	ldr r0, _0223C6D4 ; =0x0000023E
	ldrb r0, [r2, r0]
	lsl r0, r0, #2
	ldr r4, [r6, r0]
	add r4, r4, #1
	str r4, [r6, r0]
	ldr r0, _0223C6D4 ; =0x0000023E
	mov r4, #0
	ldrb r0, [r2, r0]
	lsl r2, r0, #4
	add r0, sp, #4
	add r5, r0, r2
	add r2, r5, #0
_0223C4D0:
	ldr r0, [r2, #0]
	cmp r0, #4
	bne _0223C4DC
	lsl r0, r4, #2
	str r1, [r5, r0]
	b _0223C4E4
_0223C4DC:
	add r4, r4, #1
	add r2, r2, #4
	cmp r4, #4
	blt _0223C4D0
_0223C4E4:
	add r3, r3, #1
	cmp r3, #4
	blt _0223C4AA
	mov r6, #0
_0223C4EC:
	mov r2, #2
	cmp r6, #2
	bge _0223C518
	add r0, sp, #0x48
	add r1, sp, #0x3c
_0223C4F6:
	sub r3, r0, #4
	ldr r5, [r0, #0]
	ldr r4, [r3, #0]
	cmp r4, r5
	bge _0223C50E
	str r4, [r0, #0]
	str r5, [r3, #0]
	sub r3, r1, #4
	ldr r5, [r1, #0]
	ldr r4, [r3, #0]
	str r4, [r1, #0]
	str r5, [r3, #0]
_0223C50E:
	sub r2, r2, #1
	sub r0, r0, #4
	sub r1, r1, #4
	cmp r2, r6
	bgt _0223C4F6
_0223C518:
	add r6, r6, #1
	cmp r6, #2
	blt _0223C4EC
	ldr r0, [r7, #4]
	mov r2, #0x41
	lsl r0, r0, #2
	add r1, sp, #0x34
	ldr r3, [r1, r0]
	ldr r0, [sp]
	lsl r2, r2, #4
	strb r3, [r0, r2]
	mov r3, #0
	ldr r6, _0223C6D8 ; =0x00000411
	add r2, r3, #0
	add r5, sp, #4
_0223C536:
	ldr r0, [r7, #4]
	ldr r4, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r4, r4, r3
	lsl r0, r0, #4
	add r0, r5, r0
	ldr r0, [r2, r0]
	add r3, r3, #1
	add r2, r2, #4
	strb r0, [r4, r6]
	cmp r3, #4
	blt _0223C536
	ldr r0, [r7, #4]
	lsl r1, r0, #2
	add r0, sp, #0x40
	ldr r0, [r0, r1]
	cmp r0, #4
	bhi _0223C59A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223C568: ; jump table
	.short _0223C59A - _0223C568 - 2 ; case 0
	.short _0223C572 - _0223C568 - 2 ; case 1
	.short _0223C57C - _0223C568 - 2 ; case 2
	.short _0223C586 - _0223C568 - 2 ; case 3
	.short _0223C590 - _0223C568 - 2 ; case 4
_0223C572:
	ldr r1, _0223C6DC ; =0x0000040C
	ldr r0, [sp]
	mov r2, #0xa
	strb r2, [r0, r1]
	b _0223C5A4
_0223C57C:
	ldr r1, _0223C6DC ; =0x0000040C
	ldr r0, [sp]
	mov r2, #7
	strb r2, [r0, r1]
	b _0223C5A4
_0223C586:
	ldr r1, _0223C6DC ; =0x0000040C
	ldr r0, [sp]
	mov r2, #8
	strb r2, [r0, r1]
	b _0223C5A4
_0223C590:
	ldr r1, _0223C6DC ; =0x0000040C
	ldr r0, [sp]
	mov r2, #9
	strb r2, [r0, r1]
	b _0223C5A4
_0223C59A:
	mov r0, #0xc
	strh r0, [r7]
	add sp, #0x4c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223C5A4:
	ldr r2, _0223C6E0 ; =0x0000040D
	ldr r0, [sp]
	mov r1, #0
	add r3, r2, #0
	strb r1, [r0, r2]
	sub r3, #0xd
	add r1, r0, #0
	add r1, r1, r3
	sub r2, #0xe5
	add r3, r0, #0
	ldrb r2, [r3, r2]
	bl ov17_02243120
	ldr r0, [sp]
	ldr r3, _0223C6E4 ; =0x00000406
	add r1, r0, #0
	add r1, r1, r3
	sub r3, #0xde
	add r2, r0, #0
	ldrb r2, [r2, r3]
	bl ov17_02243120
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0223C5D6:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C5DE:
	mov r1, #0xc3
	ldr r0, [sp]
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [sp]
	mov r4, #0xca
	lsl r4, r4, #2
	add r3, r1, #0
	mov r2, #0x10
	add r3, r3, r4
	bl ov17_0224F30C
	cmp r0, #1
	beq _0223C5FC
	b _0223C80A
_0223C5FC:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C604:
	ldr r0, [sp]
	mov r1, #0xc3
	ldr r4, _0223C6D0 ; =0x00000127
	ldr r3, [r0, #0]
	lsl r1, r1, #4
	add r0, r0, r1
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C706
	ldr r1, _0223C6DC ; =0x0000040C
	ldr r0, [sp]
	mov r2, #0
	strb r2, [r0, r1]
	add r1, r1, #1
	strb r2, [r0, r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C636:
	ldr r0, [r7, #4]
	add r0, r0, #1
	str r0, [r7, #4]
	cmp r0, #3
	bge _0223C646
	mov r0, #7
	strh r0, [r7]
	b _0223C80A
_0223C646:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C64E:
	mov r0, #0
	str r0, [r7, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C65A:
	ldr r1, [r7, #4]
	ldr r0, [sp]
	ldr r2, _0223C6CC ; =0x00000231
	add r0, r0, r1
	ldrb r3, [r0, r2]
	add r1, r2, #0
	ldr r0, [sp]
	add r1, #0xf7
	strb r3, [r0, r1]
	ldr r1, [r7, #4]
	add r2, #0xf8
	strb r1, [r0, r2]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0223C678:
	mov r3, #0xce
	ldr r0, [sp]
	lsl r3, r3, #2
	add r4, r3, #0
	add r1, r0, #0
	add r1, r1, r3
	sub r4, #0x10
	add r2, r0, #0
	ldrb r2, [r2, r4]
	sub r3, #0xf
	add r4, r0, #0
	ldrb r3, [r4, r3]
	bl ov17_02246304
	cmp r0, #0
	bne _0223C69E
	mov r0, #0x11
	strh r0, [r7]
	b _0223C80A
_0223C69E:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C6A6:
	mov r1, #0xc3
	ldr r0, [sp]
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [sp]
	mov r4, #0xca
	lsl r4, r4, #2
	add r3, r1, #0
	mov r2, #0x11
	add r3, r3, r4
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C706
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
	nop
_0223C6CC: .word 0x00000231
_0223C6D0: .word 0x00000127
_0223C6D4: .word 0x0000023E
_0223C6D8: .word 0x00000411
_0223C6DC: .word 0x0000040C
_0223C6E0: .word 0x0000040D
_0223C6E4: .word 0x00000406
_0223C6E8:
	ldr r0, [sp]
	mov r1, #0xc3
	ldr r4, _0223C810 ; =0x00000127
	ldr r3, [r0, #0]
	lsl r1, r1, #4
	add r0, r0, r1
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	beq _0223C708
_0223C706:
	b _0223C80A
_0223C708:
	ldr r1, _0223C814 ; =0x0000040C
	ldr r0, [sp]
	mov r2, #0
	strb r2, [r0, r1]
	add r1, r1, #1
	strb r2, [r0, r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C71C:
	ldr r0, [r7, #4]
	add r0, r0, #1
	str r0, [r7, #4]
	cmp r0, #4
	bge _0223C72C
	mov r0, #0xd
	strh r0, [r7]
	b _0223C80A
_0223C72C:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C734:
	mov r0, #0
	str r0, [r7, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C740:
	mov r1, #0xce
	ldr r0, [sp]
	lsl r1, r1, #2
	add r0, r0, r1
	bl ov17_022460C8
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0223C752:
	ldr r1, [r7, #4]
	ldr r0, [sp]
	ldr r2, _0223C818 ; =0x00000231
	add r0, r0, r1
	ldrb r3, [r0, r2]
	add r1, r2, #0
	ldr r0, [sp]
	add r1, #0xf7
	strb r3, [r0, r1]
	ldr r1, [r7, #4]
	add r2, #0xf8
	strb r1, [r0, r2]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0223C770:
	mov r3, #0xce
	ldr r0, [sp]
	lsl r3, r3, #2
	add r4, r3, #0
	add r1, r0, #0
	add r1, r1, r3
	sub r4, #0x10
	add r2, r0, #0
	ldrb r2, [r2, r4]
	sub r3, #0xf
	add r4, r0, #0
	ldrb r3, [r4, r3]
	bl ov17_02246364
	cmp r0, #1
	bne _0223C798
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C798:
	mov r0, #0x18
	strh r0, [r7]
	b _0223C80A
_0223C79E:
	mov r1, #0xc3
	ldr r0, [sp]
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [sp]
	mov r4, #0xca
	lsl r4, r4, #2
	add r3, r1, #0
	mov r2, #0xf
	add r3, r3, r4
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C80A
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C7C2:
	ldr r0, [sp]
	mov r1, #0xc3
	ldr r4, _0223C810 ; =0x00000127
	ldr r3, [r0, #0]
	lsl r1, r1, #4
	add r0, r0, r1
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C80A
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C7E8:
	ldr r0, [r7, #4]
	add r0, r0, #1
	str r0, [r7, #4]
	cmp r0, #4
	blt _0223C7FE
	mov r0, #0
	str r0, [r7, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C7FE:
	mov r0, #0x14
	strh r0, [r7]
	b _0223C80A
_0223C804:
	add sp, #0x4c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223C80A:
	mov r0, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C810: .word 0x00000127
_0223C814: .word 0x0000040C
_0223C818: .word 0x00000231
	thumb_func_end ov17_0223C350

	thumb_func_start ov17_0223C81C
ov17_0223C81C: ; 0x0223C81C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223C832
	cmp r0, #1
	beq _0223C838
	cmp r0, #2
	beq _0223C858
	b _0223C87C
_0223C832:
	add r0, r0, #1
	strh r0, [r4]
	b _0223C880
_0223C838:
	mov r0, #0xc3
	mov r3, #0xca
	lsl r0, r0, #4
	lsl r3, r3, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0x12
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C880
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C880
_0223C858:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _0223C884 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C880
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223C880
_0223C87C:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223C880:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C884: .word 0x00000127
	thumb_func_end ov17_0223C81C

	thumb_func_start ov17_0223C888
ov17_0223C888: ; 0x0223C888
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldrh r1, [r5]
	add r4, r0, #0
	cmp r1, #6
	bls _0223C896
	b _0223C9FA
_0223C896:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223C8A2: ; jump table
	.short _0223C8B0 - _0223C8A2 - 2 ; case 0
	.short _0223C8D0 - _0223C8A2 - 2 ; case 1
	.short _0223C8F6 - _0223C8A2 - 2 ; case 2
	.short _0223C956 - _0223C8A2 - 2 ; case 3
	.short _0223C97A - _0223C8A2 - 2 ; case 4
	.short _0223C9B6 - _0223C8A2 - 2 ; case 5
	.short _0223C9D6 - _0223C8A2 - 2 ; case 6
_0223C8B0:
	mov r0, #0xc3
	mov r3, #0xca
	lsl r0, r0, #4
	lsl r3, r3, #2
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #0x15
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C8EC
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C8D0:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _0223CA20 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	beq _0223C8EE
_0223C8EC:
	b _0223CA1A
_0223C8EE:
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C8F6:
	mov r2, #0x36
	mov r1, #0
	lsl r2, r2, #4
	add r0, r1, #0
	add r2, r4, r2
_0223C900:
	ldr r3, [r2, #0]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1e
	beq _0223C90A
	add r1, r1, #1
_0223C90A:
	add r0, r0, #1
	add r2, #0x2c
	cmp r0, #4
	blt _0223C900
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #3
	bhs _0223C928
	cmp r1, #4
	bge _0223C928
	ldr r0, _0223CA24 ; =0x0000040C
	mov r1, #0x2a
	strb r1, [r4, r0]
	b _0223C92E
_0223C928:
	ldr r0, _0223CA24 ; =0x0000040C
	mov r1, #0
	strb r1, [r4, r0]
_0223C92E:
	ldr r3, _0223CA28 ; =0x0000040E
	mov r1, #0
	strb r1, [r4, r3]
	add r0, r3, #1
	strb r1, [r4, r0]
	mov r0, #0xc3
	lsl r0, r0, #4
	sub r3, #0xe6
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #0x14
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223CA1A
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C956:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _0223CA20 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223CA1A
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C97A:
	mov r1, #0xce
	lsl r1, r1, #2
	add r1, r4, r1
	bl ov17_02246044
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov17_02243B0C
	ldr r0, _0223CA2C ; =0x00000236
	mov r6, #0
	add r1, r0, #0
	add r3, r4, #0
	add r1, #0x20
_0223C998:
	ldrh r2, [r3, r0]
	add r6, r6, #1
	strh r2, [r3, r1]
	add r3, r3, #2
	cmp r6, #4
	blt _0223C998
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C9B6:
	mov r0, #0xc3
	mov r3, #0x23
	lsl r0, r0, #4
	lsl r3, r3, #4
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #0x13
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223CA1A
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C9D6:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _0223CA20 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223CA1A
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C9FA:
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	cmp r1, #4
	blo _0223CA0C
	mov r0, #0xf
	strh r0, [r5, #2]
	mov r0, #2
	pop {r4, r5, r6, pc}
_0223CA0C:
	mov r1, #0
	add r0, r0, #5
	strb r1, [r4, r0]
	mov r0, #3
	strh r0, [r5, #2]
	mov r0, #2
	pop {r4, r5, r6, pc}
_0223CA1A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0223CA20: .word 0x00000127
_0223CA24: .word 0x0000040C
_0223CA28: .word 0x0000040E
_0223CA2C: .word 0x00000236
	thumb_func_end ov17_0223C888

	thumb_func_start ov17_0223CA30
ov17_0223CA30: ; 0x0223CA30
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #3
	bhi _0223CADC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223CA48: ; jump table
	.short _0223CA50 - _0223CA48 - 2 ; case 0
	.short _0223CA72 - _0223CA48 - 2 ; case 1
	.short _0223CA9C - _0223CA48 - 2 ; case 2
	.short _0223CAC0 - _0223CA48 - 2 ; case 3
_0223CA50:
	mov r1, #0
	ldr r7, _0223CB0C ; =0x0000012E
	add r2, r3, #0
	add r5, r1, #0
_0223CA58:
	ldr r0, _0223CB10 ; =0x00000242
	ldr r6, [r3, #0]
	ldrsh r0, [r2, r0]
	add r6, r6, r5
	add r1, r1, #1
	strh r0, [r6, r7]
	add r2, r2, #2
	add r5, #0xc
	cmp r1, #4
	blt _0223CA58
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_0223CA72:
	ldr r5, _0223CB14 ; =0x0000040C
	mov r0, #0x2b
	strb r0, [r3, r5]
	add r0, r5, #1
	mov r1, #0
	strb r1, [r3, r0]
	mov r0, #0xc3
	lsl r0, r0, #4
	sub r5, #0xe4
	add r0, r3, r0
	add r1, r3, #0
	mov r2, #3
	add r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223CB06
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223CB06
_0223CA9C:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r5, [r3, #0]
	add r0, r3, r0
	ldr r3, _0223CB18 ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r5, r3]
	sub r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223CB06
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223CB06
_0223CAC0:
	mov r0, #0xc3
	lsl r0, r0, #4
	add r0, r3, r0
	add r1, r3, #0
	mov r2, #1
	mov r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223CB06
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223CB06
_0223CADC:
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r4, [r3, #0]
	add r0, r3, r0
	ldr r3, _0223CB18 ; =0x00000127
	add r1, r3, #0
	add r1, #0x50
	ldrb r2, [r4, r3]
	ldrb r1, [r4, r1]
	sub r1, r2, r1
	sub r2, r3, #4
	sub r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	sub r1, r1, #1
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223CB06
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0223CB06:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CB0C: .word 0x0000012E
_0223CB10: .word 0x00000242
_0223CB14: .word 0x0000040C
_0223CB18: .word 0x00000127
	thumb_func_end ov17_0223CA30

	thumb_func_start ov17_0223CB1C
ov17_0223CB1C: ; 0x0223CB1C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _0223CD9C ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _0223CDA0 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0223CDA4 ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1, #0]
	ldr r3, [r0, #0]
	add r1, #0x50
	and r2, r3
	str r2, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #7
	mov r0, #3
	mov r1, #0x16
	lsl r2, r2, #0x10
	bl sub_02017FC8
	ldr r1, _0223CDA8 ; =0x00000F68
	add r0, r4, #0
	mov r2, #0x16
	bl sub_0200681C
	ldr r2, _0223CDA8 ; =0x00000F68
	mov r1, #0
	add r5, r0, #0
	bl sub_020C4CF4
	mov r0, #0x16
	bl ov17_0223F140
	str r0, [r5, #8]
	add r0, r4, #0
	bl sub_02006840
	mov r1, #0x5b
	str r0, [r5, #0]
	lsl r1, r1, #2
	str r5, [r0, r1]
	ldr r2, [r5, #0]
	mov r3, #0
	add r0, r1, #4
	strb r3, [r2, r0]
	ldr r0, [r5, #0]
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl ov17_0223D390
	mov r0, #0x16
	bl sub_02002F38
	str r0, [r5, #0x50]
	mov r1, #1
	bl sub_02003858
	mov r2, #2
	ldr r0, [r5, #0x50]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x16
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r5, #0x50]
	lsl r2, r1, #9
	mov r3, #0x16
	bl sub_02002F70
	mov r2, #7
	ldr r0, [r5, #0x50]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x16
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r5, #0x50]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x16
	bl sub_02002F70
	mov r0, #0x16
	bl sub_02018340
	str r0, [r5, #0x30]
	mov r0, #0x40
	mov r1, #0x16
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, [r5, #0x30]
	bl ov17_0223D1B8
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r0, #2
	mov r1, #0x16
	bl sub_02002BB8
	mov r0, #0x16
	bl sub_0200C6E4
	ldr r1, _0223CDAC ; =0x02252EFC
	ldr r2, _0223CDB0 ; =0x02252EB4
	mov r3, #0x20
	str r0, [r5, #0x28]
	bl sub_0200C73C
	ldr r1, _0223CDB4 ; =0x00100010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	ldr r0, [r5, #0x28]
	bl sub_0200C704
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r2, #0x80
	bl sub_0200C7C0
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _0223CDB8 ; =0x02252EC8
	bl sub_0200CB30
	ldr r0, [r5, #0x28]
	bl sub_0200C738
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r0, #0x16
	bl sub_0200762C
	str r0, [r5, #0x10]
	bl ov17_0223D350
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd1
	mov r3, #0x16
	bl sub_0200B144
	str r0, [r5, #0x44]
	mov r0, #0x16
	bl sub_0200B358
	str r0, [r5, #0x48]
	mov r0, #5
	lsl r0, r0, #6
	mov r1, #0x16
	bl sub_02023790
	str r0, [r5, #0x4c]
	mov r0, #0x2d
	mov r1, #0x16
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0x2e
	mov r1, #0x16
	bl sub_02006C24
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_0223D4A8
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_0223D5B0
	add r0, r5, #0
	bl ov17_0223D324
	add r0, r5, #0
	add r1, r6, #0
	bl ov17_0223D3B8
	add r0, r5, #0
	add r1, r6, #0
	bl ov17_0223D468
	add r0, r4, #0
	bl sub_02006CA8
	add r0, r6, #0
	bl sub_02006CA8
	mov r0, #1
	str r0, [sp]
	add r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [r5, #0x50]
	ldr r3, _0223CDBC ; =0x00007FFF
	add r2, r1, #0
	bl sub_020038B0
	mov r1, #1
	add r0, r1, #0
	str r1, [sp]
	add r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r5, #0x50]
	ldr r3, _0223CDBC ; =0x00007FFF
	mov r2, #0
	bl sub_020038B0
	mov r2, #0
	str r2, [sp]
	mov r0, #0xe0
	str r0, [sp, #4]
	ldr r0, [r5, #0x50]
	ldr r3, _0223CDBC ; =0x00007FFF
	mov r1, #2
	bl sub_020038B0
	mov r2, #0
	mov r0, #1
	str r2, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0x50]
	ldr r3, _0223CDBC ; =0x00007FFF
	mov r1, #3
	bl sub_020038B0
	bl sub_02039734
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0x16
	str r1, [sp, #8]
	mov r1, #0x1b
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, _0223CDC0 ; =ov17_0223D164
	ldr r2, _0223CDC4 ; =0x0000EA60
	add r1, r5, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	ldr r0, _0223CDC8 ; =0x000004F8
	mov r1, #1
	strb r1, [r5, r0]
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0
	bl sub_02004234
	ldr r1, _0223CDCC ; =0x0000046F
	mov r0, #6
	mov r2, #1
	bl sub_02004550
	ldr r1, [r5, #0]
	ldr r0, _0223CDD0 ; =0x00000171
	ldrb r0, [r1, r0]
	bl sub_020959F4
	ldr r0, _0223CDD4 ; =ov17_0223D0C8
	add r1, r5, #0
	bl sub_02017798
	ldr r0, _0223CDD8 ; =0x00000605
	bl sub_02005748
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223CD9C: .word 0xFFFFE0FF
_0223CDA0: .word 0x04001000
_0223CDA4: .word 0xFFFF1FFF
_0223CDA8: .word 0x00000F68
_0223CDAC: .word 0x02252EFC
_0223CDB0: .word 0x02252EB4
_0223CDB4: .word 0x00100010
_0223CDB8: .word 0x02252EC8
_0223CDBC: .word 0x00007FFF
_0223CDC0: .word ov17_0223D164
_0223CDC4: .word 0x0000EA60
_0223CDC8: .word 0x000004F8
_0223CDCC: .word 0x0000046F
_0223CDD0: .word 0x00000171
_0223CDD4: .word ov17_0223D0C8
_0223CDD8: .word 0x00000605
	thumb_func_end ov17_0223CB1C

	thumb_func_start ov17_0223CDDC
ov17_0223CDDC: ; 0x0223CDDC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094E98
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223CE00
	cmp r0, #1
	beq _0223CE76
	cmp r0, #2
	bne _0223CDFE
	b _0223CF4A
_0223CDFE:
	b _0223CF60
_0223CE00:
	bl sub_0200F2AC
	cmp r0, #1
	beq _0223CE0A
	b _0223CF60
_0223CE0A:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223CF68 ; =0x00007FFF
	ldr r2, _0223CF6C ; =0x0000FFFF
	str r0, [sp, #8]
	ldr r0, [r4, #0x50]
	mov r1, #1
	mov r3, #6
	bl sub_02003178
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223CF68 ; =0x00007FFF
	ldr r2, _0223CF6C ; =0x0000FFFF
	str r0, [sp, #8]
	ldr r0, [r4, #0x50]
	mov r1, #2
	mov r3, #6
	bl sub_02003178
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	ldr r2, _0223CF68 ; =0x00007FFF
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #0x50]
	mov r1, #4
	lsr r2, r2, #1
	mov r3, #6
	bl sub_02003178
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223CF68 ; =0x00007FFF
	ldr r2, _0223CF6C ; =0x0000FFFF
	str r0, [sp, #8]
	ldr r0, [r4, #0x50]
	mov r1, #8
	mov r3, #6
	bl sub_02003178
	ldr r0, _0223CF70 ; =0x000006E5
	bl sub_02005748
	mov r0, #1
	str r0, [r5, #0]
	b _0223CF60
_0223CE76:
	ldr r0, [r4, #0]
	bl sub_02094EDC
	cmp r0, #1
	bne _0223CEF0
	ldr r2, _0223CF74 ; =0x000004F6
	ldr r1, _0223CF78 ; =0x00000F14
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, r4, r1
	lsl r3, r2, #2
	ldr r2, _0223CF7C ; =0x02252F44
	ldr r2, [r2, r3]
	blx r2
	sub r1, r0, #1
	cmp r1, #1
	bhi _0223CEBA
	cmp r0, #1
	bne _0223CEA4
	ldr r0, _0223CF74 ; =0x000004F6
	ldrh r1, [r4, r0]
	add r1, r1, #1
	b _0223CEAA
_0223CEA4:
	ldr r0, _0223CF80 ; =0x00000F16
	ldrh r1, [r4, r0]
	ldr r0, _0223CF74 ; =0x000004F6
_0223CEAA:
	strh r1, [r4, r0]
	ldr r0, _0223CF78 ; =0x00000F14
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl sub_020C4CF4
	b _0223CEF0
_0223CEBA:
	cmp r0, #3
	bne _0223CEF0
	ldr r0, _0223CF84 ; =0x00000F1C
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0223CEF0
	mov r1, #2
	sub r0, #8
	str r1, [r5, #0]
	add r0, r4, r0
	mov r1, #0
	mov r2, #8
	bl sub_020C4CF4
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x16
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #0x10
	mov r2, #0x24
	mov r3, #0
	bl sub_0200F174
	b _0223CF60
_0223CEF0:
	ldr r0, _0223CF88 ; =0x000004FC
	add r0, r4, r0
	bl ov17_0224F35C
	ldr r0, _0223CF88 ; =0x000004FC
	add r1, r4, #0
	add r0, r4, r0
	bl ov17_0224F3D8
	ldr r0, _0223CF84 ; =0x00000F1C
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223CF60
	ldr r0, _0223CF88 ; =0x000004FC
	add r0, r4, r0
	bl ov17_0224F3D0
	cmp r0, #0
	bne _0223CF60
	ldr r0, [r4, #0]
	bl sub_02094EDC
	cmp r0, #0
	bne _0223CF60
	mov r0, #2
	str r0, [r5, #0]
	ldr r0, _0223CF78 ; =0x00000F14
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl sub_020C4CF4
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x16
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #0x10
	mov r2, #0x24
	mov r3, #0
	bl sub_0200F174
	b _0223CF60
_0223CF4A:
	ldr r0, _0223CF84 ; =0x00000F1C
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223CF60
	bl sub_0200F2AC
	cmp r0, #1
	bne _0223CF60
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223CF60:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223CF68: .word 0x00007FFF
_0223CF6C: .word 0x0000FFFF
_0223CF70: .word 0x000006E5
_0223CF74: .word 0x000004F6
_0223CF78: .word 0x00000F14
_0223CF7C: .word 0x02252F44
_0223CF80: .word 0x00000F16
_0223CF84: .word 0x00000F1C
_0223CF88: .word 0x000004FC
	thumb_func_end ov17_0223CDDC

	thumb_func_start ov17_0223CF8C
ov17_0223CF8C: ; 0x0223CF8C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0200682C
	add r4, r0, #0
	bl sub_020141E4
	add r0, r4, #0
	bl ov17_0223D434
	add r0, r4, #0
	bl ov17_0223D498
	add r0, r4, #0
	bl ov17_0223D5AC
	add r0, r4, #0
	bl ov17_0223D608
	add r0, r4, #0
	add r0, #0x34
	bl sub_0201A8FC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl sub_02019044
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x30]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl sub_0200D0B0
	ldr r0, [r4, #0x28]
	bl sub_0200C8D4
	bl sub_0201DC3C
	mov r7, #0xf2
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #4
_0223D00C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223D016
	bl ov22_0225B020
_0223D016:
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #4
	blt _0223D00C
	add r0, r4, #0
	add r0, #0xc
	bl ov17_02247734
	add r0, r4, #0
	bl ov17_02247918
	ldr r0, [r4, #0x10]
	bl sub_02007B6C
	mov r0, #2
	bl sub_02002C60
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r4, #0x50]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #0x50]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r4, #0x50]
	bl sub_02002F54
	ldr r0, [r4, #0x48]
	bl sub_0200B3F0
	ldr r0, [r4, #0x4c]
	bl sub_020237BC
	ldr r0, [r4, #0x44]
	bl sub_0200B190
	ldr r0, [r4, #0x30]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, [r4, #8]
	bl ov17_0223F1E0
	bl sub_0201E530
	ldr r0, [sp]
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #0x16
	bl sub_0201807C
	bl sub_02095A24
	bl sub_02039794
	ldr r0, _0223D0BC ; =0x0000000B
	bl sub_02006514
	ldr r0, _0223D0C0 ; =0x0000000C
	bl sub_02006514
	ldr r0, _0223D0C4 ; =0x00000016
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D0BC: .word 0x0000000B
_0223D0C0: .word 0x0000000C
_0223D0C4: .word 0x00000016
	thumb_func_end ov17_0223CF8C

	thumb_func_start ov17_0223D0C8
ov17_0223D0C8: ; 0x0223D0C8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0223D154 ; =0x00000F63
	sub r1, r0, #2
	ldrb r3, [r6, r1]
	sub r1, r0, #3
	ldrb r1, [r6, r1]
	sub r5, r0, #1
	ldrb r5, [r6, r5]
	lsl r2, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r2, r1
	orr r2, r5
	ldrb r4, [r6, r0]
	ldr r5, _0223D158 ; =0x04000040
	strh r2, [r5]
	lsl r2, r3, #8
	and r2, r1
	orr r2, r4
	strh r2, [r5, #4]
	add r2, r0, #4
	ldrb r4, [r6, r2]
	add r2, r0, #2
	ldrb r3, [r6, r2]
	add r2, r0, #1
	ldrb r2, [r6, r2]
	add r0, r0, #3
	ldrb r0, [r6, r0]
	lsl r2, r2, #8
	and r2, r1
	orr r0, r2
	strh r0, [r5, #2]
	lsl r0, r3, #8
	and r0, r1
	orr r0, r4
	strh r0, [r5, #6]
	ldr r0, [r6, #0x10]
	bl sub_02008A94
	mov r7, #0xf2
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_0223D120:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223D12A
	bl ov22_0225B06C
_0223D12A:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0223D120
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r0, [r6, #0x50]
	bl sub_02003694
	ldr r0, [r6, #0x30]
	bl sub_0201C2B8
	ldr r3, _0223D15C ; =0x027E0000
	ldr r1, _0223D160 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D154: .word 0x00000F63
_0223D158: .word 0x04000040
_0223D15C: .word 0x027E0000
_0223D160: .word 0x00003FF8
	thumb_func_end ov17_0223D0C8

	thumb_func_start ov17_0223D164
ov17_0223D164: ; 0x0223D164
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0223D1B0 ; =0x000004F8
	add r6, r1, #0
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _0223D1A4
	ldr r0, [r6, #0x10]
	bl sub_02007768
	mov r7, #0xf2
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_0223D17E:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223D188
	bl ov22_0225AFF8
_0223D188:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0223D17E
	bl ov11_0221F8F0
	ldr r0, [r6, #0x2c]
	bl sub_0200C7EC
	bl sub_0200C808
	ldr r0, _0223D1B4 ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
_0223D1A4:
	ldr r1, [r6, #0x30]
	mov r0, #0x16
	bl sub_02038A1C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D1B0: .word 0x000004F8
_0223D1B4: .word 0x04000540
	thumb_func_end ov17_0223D164

	thumb_func_start ov17_0223D1B8
ov17_0223D1B8: ; 0x0223D1B8
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	add r4, r0, #0
	bl sub_0201FF00
	ldr r5, _0223D310 ; =0x02252F1C
	add r3, sp, #0x2c
	mov r2, #5
_0223D1C8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223D1C8
	add r0, sp, #0x2c
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	ldr r5, _0223D314 ; =0x02252EA4
	add r3, sp, #0x1c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223D318 ; =0x02252F70
	add r3, sp, #0x54
	mov r2, #0xa
_0223D228:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223D228
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x8c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r1, _0223D31C ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r5, _0223D320 ; =0x02252EE0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #4
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D310: .word 0x02252F1C
_0223D314: .word 0x02252EA4
_0223D318: .word 0x02252F70
_0223D31C: .word 0x04000008
_0223D320: .word 0x02252EE0
	thumb_func_end ov17_0223D1B8

	thumb_func_start ov17_0223D324
ov17_0223D324: ; 0x0223D324
	push {lr}
	sub sp, #0x14
	add r1, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x30]
	add r1, #0x34
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	add sp, #0x14
	pop {pc}
	; .align 2, 0
	thumb_func_end ov17_0223D324

	thumb_func_start ov17_0223D350
ov17_0223D350: ; 0x0223D350
	push {r3, r4, r5, lr}
	ldr r3, _0223D388 ; =0x02100DEC
	mov r0, #2
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0223D38C ; =0x02100DF4
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0x80
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _0223D378
	bl sub_02022974
_0223D378:
	cmp r5, #0
	bne _0223D380
	bl sub_02022974
_0223D380:
	bl sub_02014000
	pop {r3, r4, r5, pc}
	nop
_0223D388: .word 0x02100DEC
_0223D38C: .word 0x02100DF4
	thumb_func_end ov17_0223D350

	thumb_func_start ov17_0223D390
ov17_0223D390: ; 0x0223D390
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0223D39E
	bl sub_02022974
_0223D39E:
	mov r3, #0
	mov r0, #3
_0223D3A2:
	add r1, r4, r3
	sub r2, r0, r3
	add r1, #0xd4
	add r3, r3, #1
	strb r2, [r1]
	cmp r3, #4
	blt _0223D3A2
	add r0, r4, #0
	bl ov17_02247A48
	pop {r4, pc}
	thumb_func_end ov17_0223D390

	thumb_func_start ov17_0223D3B8
ov17_0223D3B8: ; 0x0223D3B8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223D42C ; =0x000080E9
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl sub_0200CDC4
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	bl ov17_0224774C
	mov r0, #0
	mvn r0, r0
	ldr r3, _0223D42C ; =0x000080E9
	str r0, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x50]
	bl ov17_0223F560
	ldr r3, _0223D42C ; =0x000080E9
	mov r0, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xc8
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	ldr r0, _0223D430 ; =0x0000C350
	str r0, [sp, #0x18]
	add r0, r5, #0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	add r0, #0xb4
	bl ov17_0223F630
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0223D42C: .word 0x000080E9
_0223D430: .word 0x0000C350
	thumb_func_end ov17_0223D3B8

	thumb_func_start ov17_0223D434
ov17_0223D434: ; 0x0223D434
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl ov17_02247798
	add r0, r4, #0
	add r0, #0xb4
	bl ov17_0223F6C4
	ldr r1, _0223D464 ; =0x000080E9
	mov r2, #0
	str r1, [sp]
	ldr r0, [r4, #0x2c]
	mvn r2, r2
	add r3, r1, #0
	bl ov17_0223F5E8
	ldr r0, [r4, #0x2c]
	ldr r1, _0223D464 ; =0x000080E9
	bl sub_0200D080
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223D464: .word 0x000080E9
	thumb_func_end ov17_0223D434

	thumb_func_start ov17_0223D468
ov17_0223D468: ; 0x0223D468
	push {r3, lr}
	sub sp, #0x18
	add r3, r0, #0
	mov r0, #0x2e
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223D494 ; =0x000080EA
	mov r1, #3
	str r0, [sp, #0x14]
	ldr r0, [r3, #0x50]
	ldr r2, [r3, #0x28]
	ldr r3, [r3, #0x2c]
	bl sub_0200CD7C
	add sp, #0x18
	pop {r3, pc}
	; .align 2, 0
_0223D494: .word 0x000080EA
	thumb_func_end ov17_0223D468

	thumb_func_start ov17_0223D498
ov17_0223D498: ; 0x0223D498
	ldr r3, _0223D4A0 ; =sub_0200D080
	ldr r0, [r0, #0x2c]
	ldr r1, _0223D4A4 ; =0x000080EA
	bx r3
	; .align 2, 0
_0223D4A0: .word sub_0200D080
_0223D4A4: .word 0x000080EA
	thumb_func_end ov17_0223D498

	thumb_func_start ov17_0223D4A8
ov17_0223D4A8: ; 0x0223D4A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x16
	str r0, [sp, #0xc]
	add r4, r1, #0
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r1, #0x17
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #0x16
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r3, #3
	bl sub_0200710C
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_02019EBC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x50]
	mov r1, #0x2d
	mov r2, #0x23
	mov r3, #0x16
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r5, #0x50]
	mov r1, #0x2d
	mov r2, #0x24
	mov r3, #0x16
	bl sub_02003050
	ldr r1, [r5, #0]
	ldr r0, _0223D5A8 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027B50
	add r6, r0, #0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r5, #0x30]
	add r2, r1, #0
	mov r3, #0xf
	bl sub_0200DD0C
	add r0, r6, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [r5, #0x50]
	mov r1, #0x26
	mov r3, #0x16
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x16
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r1, #0x18
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x16
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r1, #0x15
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	ldr r0, [r5, #0x50]
	mov r1, #0x2d
	mov r2, #0x25
	mov r3, #0x16
	bl sub_02003050
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223D5A8: .word 0x00001988
	thumb_func_end ov17_0223D4A8

	thumb_func_start ov17_0223D5AC
ov17_0223D5AC: ; 0x0223D5AC
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0223D5AC

	thumb_func_start ov17_0223D5B0
ov17_0223D5B0: ; 0x0223D5B0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x16
	str r0, [sp, #0xc]
	add r4, r1, #0
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r1, #0x13
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x16
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r1, #0x14
	mov r3, #4
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x50]
	mov r1, #0x2d
	mov r2, #0x22
	mov r3, #0x16
	bl sub_02003050
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0223D5B0

	thumb_func_start ov17_0223D608
ov17_0223D608: ; 0x0223D608
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0223D608

	thumb_func_start ov17_0223D60C
ov17_0223D60C: ; 0x0223D60C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223D638
	ldr r0, [r5, #0x50]
	bl sub_0200384C
	cmp r0, #0
	bne _0223D63C
	ldr r0, [r5, #0]
	mov r1, #0x16
	bl ov17_0223F334
	ldr r0, [r5, #0]
	bl ov17_0223F374
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223D63C
_0223D638:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223D63C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0223D60C

	thumb_func_start ov17_0223D640
ov17_0223D640: ; 0x0223D640
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #0
	bne _0223D68C
	ldr r0, [r4, #0]
	bl sub_0209590C
	cmp r0, #1
	bne _0223D65A
	mov r1, #2
	b _0223D65C
_0223D65A:
	mov r1, #1
_0223D65C:
	add r0, r4, #0
	add r0, #0xe9
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xea
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xeb
	strb r1, [r0]
	ldr r0, _0223D6B0 ; =0x000004FC
	add r1, r4, #0
	add r0, r4, r0
	add r4, #0xe2
	mov r2, #0xd
	add r3, r4, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D6AA
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223D6AA
_0223D68C:
	ldr r0, _0223D6B0 ; =0x000004FC
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _0223D6B4 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D6AA
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223D6AA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223D6B0: .word 0x000004FC
_0223D6B4: .word 0x00000127
	thumb_func_end ov17_0223D640

	thumb_func_start ov17_0223D6B8
ov17_0223D6B8: ; 0x0223D6B8
	push {r4, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223D6F0
	add r0, r3, #0
	add r0, #0xd8
	ldrb r0, [r0]
	mov r2, #0
	add r0, r3, r0
	add r0, #0xd4
	ldrb r1, [r0]
	add r0, r3, #0
	add r0, #0xe2
	strb r1, [r0]
	ldr r0, _0223D714 ; =0x000004FC
	add r1, r3, #0
	add r0, r3, r0
	add r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D70E
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223D70E
_0223D6F0:
	ldr r0, _0223D714 ; =0x000004FC
	ldr r4, [r3, #0]
	add r0, r3, r0
	ldr r3, _0223D718 ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r4, r3]
	sub r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D70E
	mov r0, #1
	pop {r4, pc}
_0223D70E:
	mov r0, #0
	pop {r4, pc}
	nop
_0223D714: .word 0x000004FC
_0223D718: .word 0x00000127
	thumb_func_end ov17_0223D6B8

	thumb_func_start ov17_0223D71C
ov17_0223D71C: ; 0x0223D71C
	push {r4, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223D762
	add r1, r3, #0
	mov r0, #0
	add r1, #0xec
	strb r0, [r1]
	add r2, r0, #0
	add r1, r3, #0
	sub r2, #0x10
	add r1, #0xed
	strb r2, [r1]
	add r1, r3, #0
	mov r2, #0x10
	add r1, #0xee
	strb r2, [r1]
	add r1, r3, #0
	add r1, #0xf0
	strh r0, [r1]
	ldr r0, _0223D784 ; =0x000004FC
	add r1, r3, #0
	add r0, r3, r0
	mov r2, #0xe
	add r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D780
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223D780
_0223D762:
	ldr r0, _0223D784 ; =0x000004FC
	ldr r4, [r3, #0]
	add r0, r3, r0
	ldr r3, _0223D788 ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r4, r3]
	sub r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D780
	mov r0, #1
	pop {r4, pc}
_0223D780:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0223D784: .word 0x000004FC
_0223D788: .word 0x00000127
	thumb_func_end ov17_0223D71C

	thumb_func_start ov17_0223D78C
ov17_0223D78C: ; 0x0223D78C
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223D7D4 ; =0x000004FC
	bne _0223D7B2
	add r0, r2, r0
	add r1, r2, #0
	mov r2, #0xf
	mov r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D7CE
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223D7CE
_0223D7B2:
	ldr r3, [r2, #0]
	ldr r4, _0223D7D8 ; =0x00000127
	add r0, r2, r0
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D7CE
	mov r0, #1
	pop {r4, pc}
_0223D7CE:
	mov r0, #0
	pop {r4, pc}
	nop
_0223D7D4: .word 0x000004FC
_0223D7D8: .word 0x00000127
	thumb_func_end ov17_0223D78C

	thumb_func_start ov17_0223D7DC
ov17_0223D7DC: ; 0x0223D7DC
	push {r4, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223D824 ; =0x000004FC
	bne _0223D802
	add r0, r3, r0
	add r1, r3, #0
	mov r2, #2
	add r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D81E
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223D81E
_0223D802:
	ldr r4, [r3, #0]
	add r0, r3, r0
	ldr r3, _0223D828 ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r4, r3]
	sub r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D81E
	mov r0, #1
	pop {r4, pc}
_0223D81E:
	mov r0, #0
	pop {r4, pc}
	nop
_0223D824: .word 0x000004FC
_0223D828: .word 0x00000127
	thumb_func_end ov17_0223D7DC

	thumb_func_start ov17_0223D82C
ov17_0223D82C: ; 0x0223D82C
	push {r4, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223D83E
	cmp r0, #1
	beq _0223D898
	b _0223D8B2
_0223D83E:
	add r0, r3, #0
	add r0, #0xd8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223D852
	cmp r0, #1
	beq _0223D85C
	cmp r0, #2
	beq _0223D866
	b _0223D870
_0223D852:
	add r0, r3, #0
	mov r1, #3
	add r0, #0xe9
	strb r1, [r0]
	b _0223D878
_0223D85C:
	add r0, r3, #0
	mov r1, #4
	add r0, #0xe9
	strb r1, [r0]
	b _0223D878
_0223D866:
	add r0, r3, #0
	mov r1, #5
	add r0, #0xe9
	strb r1, [r0]
	b _0223D878
_0223D870:
	add r0, r3, #0
	mov r1, #6
	add r0, #0xe9
	strb r1, [r0]
_0223D878:
	add r0, r3, #0
	mov r1, #0
	add r0, #0xea
	strb r1, [r0]
	add r0, r3, #0
	add r0, #0xeb
	strb r1, [r0]
	add r0, r3, #0
	add r0, #0xe2
	ldrb r1, [r0]
	add r0, r3, #0
	add r0, #0xe5
	strb r1, [r0]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_0223D898:
	ldr r0, _0223D8D4 ; =0x000004FC
	add r1, r3, #0
	add r0, r3, r0
	mov r2, #0xd
	add r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D8D0
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223D8D0
_0223D8B2:
	ldr r0, _0223D8D4 ; =0x000004FC
	ldr r4, [r3, #0]
	add r0, r3, r0
	ldr r3, _0223D8D8 ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r4, r3]
	sub r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D8D0
	mov r0, #1
	pop {r4, pc}
_0223D8D0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0223D8D4: .word 0x000004FC
_0223D8D8: .word 0x00000127
	thumb_func_end ov17_0223D82C

	thumb_func_start ov17_0223D8DC
ov17_0223D8DC: ; 0x0223D8DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223D8F2
	cmp r0, #1
	beq _0223D91C
	cmp r0, #2
	beq _0223D938
	b _0223D95A
_0223D8F2:
	add r1, r5, #0
	add r1, #0xe2
	ldrb r1, [r1]
	ldr r0, [r5, #0]
	bl sub_02095928
	add r1, r5, #0
	add r1, #0xe3
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xe2
	ldrb r1, [r1]
	ldr r0, [r5, #0]
	bl sub_0209598C
	add r1, r5, #0
	add r1, #0xe4
	strb r0, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_0223D91C:
	ldr r0, _0223D964 ; =0x000004FC
	add r1, r5, #0
	add r0, r5, r0
	add r5, #0xe2
	mov r2, #6
	add r3, r5, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D95E
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223D95E
_0223D938:
	ldr r0, _0223D964 ; =0x000004FC
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _0223D968 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D95E
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223D95E
_0223D95A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223D95E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223D964: .word 0x000004FC
_0223D968: .word 0x00000127
	thumb_func_end ov17_0223D8DC

	thumb_func_start ov17_0223D96C
ov17_0223D96C: ; 0x0223D96C
	ldrh r2, [r1]
	cmp r2, #0
	bne _0223D986
	add r2, r0, #0
	add r2, #0xd8
	ldrb r2, [r2]
	add r0, #0xd8
	add r2, r2, #1
	strb r2, [r0]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	b _0223D998
_0223D986:
	add r0, #0xd8
	ldrb r0, [r0]
	cmp r0, #4
	blo _0223D992
	mov r0, #1
	bx lr
_0223D992:
	mov r0, #2
	strh r0, [r1, #2]
	bx lr
_0223D998:
	mov r0, #0
	bx lr
	thumb_func_end ov17_0223D96C

	thumb_func_start ov17_0223D99C
ov17_0223D99C: ; 0x0223D99C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #3
	bhi _0223DA44
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D9B4: ; jump table
	.short _0223D9BC - _0223D9B4 - 2 ; case 0
	.short _0223D9DE - _0223D9B4 - 2 ; case 1
	.short _0223DA00 - _0223D9B4 - 2 ; case 2
	.short _0223DA2A - _0223D9B4 - 2 ; case 3
_0223D9BC:
	add r0, r3, #0
	ldr r1, _0223DA68 ; =0x000006E5
	add r0, #0xf2
	strh r1, [r0]
	ldr r0, _0223DA6C ; =0x000004FC
	add r1, r3, #0
	add r0, r3, r0
	mov r2, #0x10
	add r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223DA62
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223DA62
_0223D9DE:
	ldr r0, _0223DA6C ; =0x000004FC
	ldr r5, [r3, #0]
	add r0, r3, r0
	ldr r3, _0223DA70 ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r5, r3]
	sub r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223DA62
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223DA62
_0223DA00:
	ldr r1, [r3, #0]
	ldr r0, _0223DA74 ; =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _0223DA0E
	mov r1, #7
	b _0223DA10
_0223DA0E:
	mov r1, #0
_0223DA10:
	add r0, r3, #0
	add r0, #0xe9
	strb r1, [r0]
	add r0, r3, #0
	mov r1, #0
	add r0, #0xea
	strb r1, [r0]
	add r0, r3, #0
	add r0, #0xeb
	strb r1, [r0]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_0223DA2A:
	ldr r0, _0223DA6C ; =0x000004FC
	add r1, r3, #0
	add r0, r3, r0
	mov r2, #0xd
	add r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223DA62
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223DA62
_0223DA44:
	ldr r0, _0223DA6C ; =0x000004FC
	ldr r4, [r3, #0]
	add r0, r3, r0
	ldr r3, _0223DA70 ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r4, r3]
	sub r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223DA62
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223DA62:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223DA68: .word 0x000006E5
_0223DA6C: .word 0x000004FC
_0223DA70: .word 0x00000127
_0223DA74: .word 0x00000121
	thumb_func_end ov17_0223D99C

	thumb_func_start ov17_0223DA78
ov17_0223DA78: ; 0x0223DA78
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223DAC8 ; =0x000004FC
	bne _0223DA9E
	add r0, r2, r0
	add r1, r2, #0
	mov r2, #1
	mov r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223DAC4
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223DAC4
_0223DA9E:
	ldr r4, _0223DACC ; =0x00000127
	ldr r3, [r2, #0]
	add r1, r4, #0
	add r1, #0x50
	add r0, r2, r0
	ldrb r2, [r3, r4]
	ldrb r1, [r3, r1]
	sub r1, r2, r1
	sub r2, r4, #4
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	sub r1, r1, #1
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223DAC4
	mov r0, #3
	pop {r4, pc}
_0223DAC4:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0223DAC8: .word 0x000004FC
_0223DACC: .word 0x00000127
	thumb_func_end ov17_0223DA78

	thumb_func_start ov17_0223DAD0
ov17_0223DAD0: ; 0x0223DAD0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _0223DD8C ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _0223DD90 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0223DD94 ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1, #0]
	ldr r3, [r0, #0]
	add r1, #0x50
	and r2, r3
	str r2, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x17
	lsl r2, r2, #0x10
	bl sub_02017FC8
	ldr r1, _0223DD98 ; =0x00001C10
	add r0, r4, #0
	mov r2, #0x17
	bl sub_0200681C
	ldr r2, _0223DD98 ; =0x00001C10
	mov r1, #0
	add r5, r0, #0
	bl sub_020C4CF4
	mov r0, #0x17
	bl ov17_0223F140
	str r0, [r5, #0x10]
	add r0, r4, #0
	bl sub_02006840
	mov r1, #0x5b
	str r0, [r5, #0]
	lsl r1, r1, #2
	str r5, [r0, r1]
	ldr r2, [r5, #0]
	mov r3, #1
	add r0, r1, #4
	strb r3, [r2, r0]
	ldr r0, [r5, #0]
	str r0, [r5, #0x14]
	add r0, r5, #0
	bl ov17_0223E458
	mov r0, #0x17
	bl sub_02002F38
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02003858
	add r0, r5, #0
	add r0, #0xa4
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x17
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0xa4
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r2, r1, #9
	mov r3, #0x17
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0xa4
	mov r2, #7
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x17
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0xa4
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x17
	bl sub_02002F70
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #8
	bl sub_02018144
	ldr r1, _0223DD9C ; =0x00001128
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #1
	bl ov17_0224CDB4
	mov r0, #0x17
	bl sub_02018340
	str r0, [r5, #0x74]
	mov r0, #0x40
	mov r1, #0x17
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r1, r5, #0
	ldr r0, [r5, #0]
	add r1, #0x14
	bl ov17_02249380
	ldr r1, _0223DDA0 ; =0x0000114C
	str r0, [r5, r1]
	ldr r0, [r5, #0x74]
	bl ov17_0223E250
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r0, #2
	mov r1, #0x17
	bl sub_02002BB8
	mov r0, #0x17
	bl sub_0200C6E4
	ldr r1, _0223DDA4 ; =0x02253008
	ldr r2, _0223DDA8 ; =0x02252FDC
	mov r3, #0x20
	str r0, [r5, #0x6c]
	bl sub_0200C73C
	ldr r1, _0223DDAC ; =0x00100010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	ldr r0, [r5, #0x6c]
	bl sub_0200C704
	str r0, [r5, #0x70]
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	mov r2, #0x80
	bl sub_0200C7C0
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _0223DDB0 ; =0x02252FF0
	bl sub_0200CB30
	ldr r0, [r5, #0x6c]
	bl sub_0200C738
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r0, #0x17
	bl sub_0200762C
	str r0, [r5, #0x58]
	bl ov17_0223E450
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xce
	mov r3, #0x17
	bl sub_0200B144
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1, #0]
	mov r0, #0x17
	bl sub_0200B358
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1, #0]
	mov r0, #5
	lsl r0, r0, #6
	mov r1, #0x17
	bl sub_02023790
	add r1, r5, #0
	add r1, #0xa0
	str r0, [r1, #0]
	mov r0, #9
	mov r1, #0x17
	bl sub_02012744
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1, #0]
	mov r0, #0x2d
	mov r1, #0x17
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0x2e
	mov r1, #0x17
	bl sub_02006C24
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_0223E67C
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_0223E770
	add r0, r5, #0
	bl ov17_0223E380
	add r0, r5, #0
	add r1, r6, #0
	bl ov17_0223E4B0
	add r0, r5, #0
	add r1, r6, #0
	bl ov17_0223E60C
	ldr r0, _0223DDA0 ; =0x0000114C
	mov r1, #0
	ldr r0, [r5, r0]
	mov r2, #1
	add r3, r1, #0
	bl ov17_02249640
	add r0, r4, #0
	bl sub_02006CA8
	add r0, r6, #0
	bl sub_02006CA8
	add r0, r5, #0
	bl ov17_0224A134
	add r0, r5, #0
	add r0, #0x14
	bl ov17_0224B0CC
	add r0, r5, #0
	bl ov17_0223E778
	add r0, r5, #0
	bl ov17_0224AA38
	add r0, r5, #0
	bl ov17_0224B59C
	bl sub_02039734
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0x17
	str r1, [sp, #8]
	mov r1, #0x11
	mov r2, #0x25
	mov r3, #0
	bl sub_0200F174
	ldr r0, _0223DDB4 ; =ov17_0223E1FC
	ldr r2, _0223DDB8 ; =0x00013880
	add r1, r5, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	ldr r0, _0223DDBC ; =0x00001170
	mov r1, #1
	strb r1, [r5, r0]
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r1, _0223DDC0 ; =0x0000046F
	mov r0, #6
	mov r2, #1
	bl sub_02004550
	ldr r1, [r5, #0]
	ldr r0, _0223DDC4 ; =0x00000171
	ldrb r0, [r1, r0]
	bl sub_020959F4
	mov r1, #0x39
	add r2, r1, #0
	ldr r0, _0223DDC8 ; =0x04000050
	sub r2, #0x3f
	bl sub_020BF578
	ldr r0, _0223DDCC ; =0x000006E5
	bl sub_02005748
	ldr r0, _0223DDD0 ; =ov17_0223E09C
	add r1, r5, #0
	bl sub_02017798
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223DD8C: .word 0xFFFFE0FF
_0223DD90: .word 0x04001000
_0223DD94: .word 0xFFFF1FFF
_0223DD98: .word 0x00001C10
_0223DD9C: .word 0x00001128
_0223DDA0: .word 0x0000114C
_0223DDA4: .word 0x02253008
_0223DDA8: .word 0x02252FDC
_0223DDAC: .word 0x00100010
_0223DDB0: .word 0x02252FF0
_0223DDB4: .word ov17_0223E1FC
_0223DDB8: .word 0x00013880
_0223DDBC: .word 0x00001170
_0223DDC0: .word 0x0000046F
_0223DDC4: .word 0x00000171
_0223DDC8: .word 0x04000050
_0223DDCC: .word 0x000006E5
_0223DDD0: .word ov17_0223E09C
	thumb_func_end ov17_0223DAD0

	thumb_func_start ov17_0223DDD4
ov17_0223DDD4: ; 0x0223DDD4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094E98
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223DDF6
	cmp r0, #1
	beq _0223DE04
	cmp r0, #2
	beq _0223DED8
	b _0223DEEE
_0223DDF6:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0223DEEE
	mov r0, #1
	str r0, [r5, #0]
	b _0223DEEE
_0223DE04:
	ldr r0, [r4, #0]
	bl sub_02094EDC
	cmp r0, #1
	bne _0223DE7E
	ldr r2, _0223DEF4 ; =0x0000116E
	ldr r1, _0223DEF8 ; =0x00001C04
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, r4, r1
	lsl r3, r2, #2
	ldr r2, _0223DEFC ; =0x02253050
	ldr r2, [r2, r3]
	blx r2
	sub r1, r0, #1
	cmp r1, #1
	bhi _0223DE48
	cmp r0, #1
	bne _0223DE32
	ldr r0, _0223DEF4 ; =0x0000116E
	ldrh r1, [r4, r0]
	add r1, r1, #1
	b _0223DE38
_0223DE32:
	ldr r0, _0223DF00 ; =0x00001C06
	ldrh r1, [r4, r0]
	ldr r0, _0223DEF4 ; =0x0000116E
_0223DE38:
	strh r1, [r4, r0]
	ldr r0, _0223DEF8 ; =0x00001C04
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl sub_020C4CF4
	b _0223DE7E
_0223DE48:
	cmp r0, #3
	bne _0223DE7E
	ldr r0, _0223DF04 ; =0x00001C0C
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0223DE7E
	mov r1, #2
	sub r0, #8
	str r1, [r5, #0]
	add r0, r4, r0
	mov r1, #0
	mov r2, #8
	bl sub_020C4CF4
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x17
	mov r1, #0x1e
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	b _0223DEEE
_0223DE7E:
	ldr r0, _0223DF08 ; =0x00001174
	add r0, r4, r0
	bl ov17_0224F35C
	ldr r0, _0223DF08 ; =0x00001174
	add r1, r4, #0
	add r0, r4, r0
	bl ov17_0224F3D8
	ldr r0, _0223DF04 ; =0x00001C0C
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223DEEE
	ldr r0, _0223DF08 ; =0x00001174
	add r0, r4, r0
	bl ov17_0224F3D0
	cmp r0, #0
	bne _0223DEEE
	ldr r0, [r4, #0]
	bl sub_02094EDC
	cmp r0, #0
	bne _0223DEEE
	mov r0, #2
	str r0, [r5, #0]
	ldr r0, _0223DEF8 ; =0x00001C04
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl sub_020C4CF4
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x17
	mov r1, #0x1e
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	b _0223DEEE
_0223DED8:
	ldr r0, _0223DF04 ; =0x00001C0C
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223DEEE
	bl sub_0200F2AC
	cmp r0, #1
	bne _0223DEEE
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223DEEE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223DEF4: .word 0x0000116E
_0223DEF8: .word 0x00001C04
_0223DEFC: .word 0x02253050
_0223DF00: .word 0x00001C06
_0223DF04: .word 0x00001C0C
_0223DF08: .word 0x00001174
	thumb_func_end ov17_0223DDD4

	thumb_func_start ov17_0223DF0C
ov17_0223DF0C: ; 0x0223DF0C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02014710
	cmp r0, #0
	beq _0223DF24
	bl sub_02022974
_0223DF24:
	add r0, r4, #0
	bl ov17_0223E7E0
	bl sub_020141E4
	add r0, r4, #0
	add r0, #0x14
	bl ov17_0224A95C
	add r0, r4, #0
	bl ov17_0224AA58
	add r0, r4, #0
	bl ov17_0224B5B8
	add r0, r4, #0
	bl ov17_0224BD00
	add r0, r4, #0
	bl ov17_0223E588
	add r0, r4, #0
	bl ov17_0223E678
	add r0, r4, #0
	bl ov17_0223E76C
	add r0, r4, #0
	bl ov17_0223E774
	add r5, r4, #0
	mov r6, #0
	add r5, #0x78
_0223DF66:
	add r0, r5, #0
	bl sub_0201A8FC
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #2
	blt _0223DF66
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x74]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x74]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x74]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x74]
	bl ov17_02249358
	ldr r0, _0223E088 ; =0x0000114C
	ldr r0, [r4, r0]
	bl ov17_022493A4
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x70]
	bl sub_0200D0B0
	ldr r0, [r4, #0x6c]
	bl sub_0200C8D4
	bl sub_0201DC3C
	add r0, r4, #0
	add r0, #0x14
	bl ov17_0224A1EC
	ldr r0, [r4, #0x58]
	bl sub_02007B6C
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bl sub_020127BC
	mov r0, #2
	bl sub_02002C60
	ldr r0, _0223E08C ; =0x00001128
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_02002F54
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_0200B3F0
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_0200B190
	ldr r0, [r4, #0x74]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, [r4, #0x10]
	bl ov17_0223F1E0
	bl sub_0201E530
	add r0, r7, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #0x17
	bl sub_0201807C
	bl sub_02095A24
	bl sub_02039794
	ldr r0, _0223E090 ; =0x0000000B
	bl sub_02006514
	ldr r0, _0223E094 ; =0x0000000C
	bl sub_02006514
	ldr r0, _0223E098 ; =0x00000016
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E088: .word 0x0000114C
_0223E08C: .word 0x00001128
_0223E090: .word 0x0000000B
_0223E094: .word 0x0000000C
_0223E098: .word 0x00000016
	thumb_func_end ov17_0223DF0C

	thumb_func_start ov17_0223E09C
ov17_0223E09C: ; 0x0223E09C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0223E170 ; =0x00001150
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0223E12C
	add r1, r0, #4
	add r3, r4, r1
	ldr r2, [r4, r1]
	mov r5, #0
	ldr r1, [r3, #4]
	add r2, r2, #1
	adc r1, r5
	add r0, r0, #4
	str r2, [r4, r0]
	mov r0, #7
	str r1, [r3, #4]
	bl sub_020051C4
	ldr r1, _0223E174 ; =0x00000B14
	ldr r1, [r4, r1]
	mul r0, r1
	ldr r1, _0223E178 ; =0x00001388
	add r0, r0, r1
	lsl r1, r1, #1
	bl sub_020E2178
	ldr r7, _0223E17C ; =0x00001168
	add r5, r0, #1
	add r1, r7, #0
	str r0, [r4, r7]
	sub r1, #0x14
	ldr r2, [r4, r1]
	add r1, r7, #0
	sub r1, #0x10
	add r0, r5, #0
	ldr r6, [r4, r1]
	mov r3, #0
	add r1, r3, #0
	eor r1, r6
	eor r0, r2
	orr r0, r1
	beq _0223E128
	sub r0, r7, #4
	ldr r0, [r4, r0]
	cmp r0, #0x12
	bhi _0223E10C
	mov ip, r3
	mov r0, ip
	sub r1, r5, r2
	sbc r0, r6
	mov r6, #0
	mov r2, #1
	sub r1, r2, r1
	sbc r6, r0
	bhs _0223E11C
_0223E10C:
	ldr r1, _0223E180 ; =0x00001154
	str r5, [r4, r1]
	add r0, r1, #4
	str r3, [r4, r0]
	mov r0, #0
	add r1, #0x10
	str r0, [r4, r1]
	b _0223E12C
_0223E11C:
	sub r0, r7, #4
	ldr r0, [r4, r0]
	add r1, r0, #1
	sub r0, r7, #4
	str r1, [r4, r0]
	b _0223E12C
_0223E128:
	sub r0, r7, #4
	str r3, [r4, r0]
_0223E12C:
	ldr r0, [r4, #0x58]
	bl sub_02008A94
	mov r6, #0
	add r5, r4, #0
_0223E136:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0223E140
	bl ov22_0225B06C
_0223E140:
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #4
	blt _0223E136
	bl sub_0201DCAC
	bl sub_0200C800
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_02003694
	ldr r0, [r4, #0x74]
	bl sub_0201C2B8
	ldr r3, _0223E184 ; =0x027E0000
	ldr r1, _0223E188 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E170: .word 0x00001150
_0223E174: .word 0x00000B14
_0223E178: .word 0x00001388
_0223E17C: .word 0x00001168
_0223E180: .word 0x00001154
_0223E184: .word 0x027E0000
_0223E188: .word 0x00003FF8
	thumb_func_end ov17_0223E09C

	thumb_func_start ov17_0223E18C
ov17_0223E18C: ; 0x0223E18C
	push {r3, r4, r5, lr}
	ldr r1, _0223E1F8 ; =0x00001128
	add r5, r0, r1
	ldrb r1, [r5, #0x11]
	cmp r1, #0
	beq _0223E1F4
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200316C
	add r4, r0, #0
	mov r2, #2
	ldr r0, [r5, #0]
	add r1, r4, #0
	lsl r2, r2, #8
	bl sub_020C4B18
	ldrb r0, [r5, #0x10]
	cmp r0, #1
	bne _0223E1F4
	ldrh r0, [r5, #0xe]
	add r1, r4, #0
	str r0, [sp]
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #6]
	ldr r0, [r5, #0]
	asr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_020039F8
	ldrh r3, [r5, #0xa]
	ldrh r1, [r5, #8]
	cmp r1, r3
	bne _0223E1DA
	mov r0, #0
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_0223E1DA:
	mov r0, #0xc
	ldrsh r2, [r5, r0]
	add r0, r1, r2
	cmp r2, #0
	ble _0223E1E8
	cmp r0, r3
	bge _0223E1F0
_0223E1E8:
	cmp r2, #0
	bge _0223E1F2
	cmp r0, r3
	bgt _0223E1F2
_0223E1F0:
	add r0, r3, #0
_0223E1F2:
	strh r0, [r5, #8]
_0223E1F4:
	pop {r3, r4, r5, pc}
	nop
_0223E1F8: .word 0x00001128
	thumb_func_end ov17_0223E18C

	thumb_func_start ov17_0223E1FC
ov17_0223E1FC: ; 0x0223E1FC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov17_0223E18C
	ldr r0, _0223E248 ; =0x00001170
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _0223E23E
	ldr r0, [r6, #0x58]
	bl sub_02007768
	mov r4, #0
	add r5, r6, #0
_0223E218:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0223E222
	bl ov22_0225AFF8
_0223E222:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0223E218
	bl ov11_0221F8F0
	ldr r0, [r6, #0x70]
	bl sub_0200C7EC
	bl sub_0200C808
	ldr r0, _0223E24C ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
_0223E23E:
	ldr r1, [r6, #0x74]
	mov r0, #0x17
	bl sub_02038A1C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223E248: .word 0x00001170
_0223E24C: .word 0x04000540
	thumb_func_end ov17_0223E1FC

	thumb_func_start ov17_0223E250
ov17_0223E250: ; 0x0223E250
	push {r4, r5, lr}
	sub sp, #0x8c
	add r4, r0, #0
	bl sub_0201FF00
	ldr r5, _0223E370 ; =0x02253028
	add r3, sp, #0x10
	mov r2, #5
_0223E260:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223E260
	add r0, sp, #0x10
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	ldr r5, _0223E374 ; =0x02252FCC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223E378 ; =0x022530D8
	add r3, sp, #0x38
	mov r2, #0xa
_0223E2C0:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223E2C0
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x38
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r1, _0223E37C ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	add r0, r4, #0
	bl ov17_02249300
	add sp, #0x8c
	pop {r4, r5, pc}
	; .align 2, 0
_0223E370: .word 0x02253028
_0223E374: .word 0x02252FCC
_0223E378: .word 0x022530D8
_0223E37C: .word 0x04000008
	thumb_func_end ov17_0223E250

	thumb_func_start ov17_0223E380
ov17_0223E380: ; 0x0223E380
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x74]
	add r1, #0x78
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x74]
	add r4, #0x88
	add r1, r4, #0
	mov r2, #1
	bl sub_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov17_0223E380

	thumb_func_start ov17_0223E3CC
ov17_0223E3CC: ; 0x0223E3CC
	push {r4, r5, r6, r7}
	ldr r5, [r0, #0]
	ldr r3, _0223E440 ; =0x00000171
	ldrb r4, [r5, r3]
	cmp r4, #1
	bne _0223E3E8
	add r3, r3, #6
	ldrb r3, [r5, r3]
	cmp r3, #0
	beq _0223E3E8
	ldr r3, _0223E444 ; =0x00001C0E
	mov r4, #1
	strb r4, [r0, r3]
	b _0223E3EE
_0223E3E8:
	ldr r3, _0223E444 ; =0x00001C0E
	mov r4, #0
	strb r4, [r0, r3]
_0223E3EE:
	ldr r3, _0223E444 ; =0x00001C0E
	ldrb r3, [r0, r3]
	cmp r3, #1
	bne _0223E402
	mov r0, #1
	str r0, [r1, #0]
	mov r1, #0
	str r1, [r2, #0]
	pop {r4, r5, r6, r7}
	bx lr
_0223E402:
	mov r3, #0x12
	ldr r6, [r0, #0]
	lsl r3, r3, #4
	ldrb r4, [r6, r3]
	mov r3, #0x28
	add r7, r3, #0
	add r5, r4, #0
	add r7, #0xf7
	ldrb r6, [r6, r7]
	ldr r4, _0223E448 ; =0x0225312C
	mul r5, r3
	lsl r6, r6, #3
	add r4, r4, r5
	ldr r4, [r6, r4]
	str r4, [r1, #0]
	ldr r1, [r0, #0]
	add r0, r3, #0
	add r0, #0xf8
	ldrb r0, [r1, r0]
	ldr r4, _0223E44C ; =0x02253130
	add r5, r0, #0
	mul r5, r3
	add r3, #0xf7
	ldrb r0, [r1, r3]
	lsl r1, r0, #3
	add r0, r4, r5
	ldr r0, [r1, r0]
	str r0, [r2, #0]
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0223E440: .word 0x00000171
_0223E444: .word 0x00001C0E
_0223E448: .word 0x0225312C
_0223E44C: .word 0x02253130
	thumb_func_end ov17_0223E3CC

	thumb_func_start ov17_0223E450
ov17_0223E450: ; 0x0223E450
	ldr r3, _0223E454 ; =sub_02014000
	bx r3
	; .align 2, 0
_0223E454: .word sub_02014000
	thumb_func_end ov17_0223E450

	thumb_func_start ov17_0223E458
ov17_0223E458: ; 0x0223E458
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _0223E466
	bl sub_02022974
_0223E466:
	ldr r4, _0223E4AC ; =0x00000AEC
	mov r1, #0
	mov r2, #3
	add r6, r4, #5
_0223E46E:
	sub r3, r2, r1
	lsl r3, r3, #0x18
	add r0, r5, r1
	lsr r3, r3, #0x18
	strb r3, [r0, r4]
	add r1, r1, #1
	strb r3, [r0, r6]
	cmp r1, #4
	blt _0223E46E
	add r0, r5, #0
	bl ov17_0224CFB8
	mov r4, #0
	mov r7, #0xad
	add r6, r4, #0
	lsl r7, r7, #4
_0223E48E:
	ldr r0, [r5, #0]
	mov r1, #5
	ldr r0, [r0, r6]
	mov r2, #0
	bl sub_02074470
	bl ov17_0224CFA8
	add r1, r5, r4
	add r4, r4, #1
	add r6, r6, #4
	strb r0, [r1, r7]
	cmp r4, #4
	blt _0223E48E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E4AC: .word 0x00000AEC
	thumb_func_end ov17_0223E458

	thumb_func_start ov17_0223E4B0
ov17_0223E4B0: ; 0x0223E4B0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223E584 ; =0x000080E9
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x6c]
	ldr r3, [r5, #0x70]
	bl sub_0200CDC4
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	bl ov17_0224A20C
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	add r2, r4, #0
	bl ov17_0224A390
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	add r2, r4, #0
	bl ov17_0224A5A8
	add r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	add r0, #0x14
	bl ov17_0224A61C
	add r0, r5, #0
	add r0, #0x14
	bl ov17_0224A674
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	add r2, r4, #0
	bl ov17_0224A984
	add r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	add r0, #0x14
	bl ov17_0224A9F8
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	add r2, r4, #0
	bl ov17_0224C310
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	add r0, r5, #0
	bl ov17_0224C384
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	add r2, r4, #0
	bl ov17_0224AA94
	add r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	add r0, #0x14
	bl ov17_0224AB08
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	add r2, r4, #0
	bl ov17_0224AC80
	add r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	add r0, #0x14
	bl ov17_0224ACF4
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	add r2, r4, #0
	bl ov17_0224ACFC
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	add r2, r4, #0
	bl ov17_0224AFA8
	add r0, r5, #0
	bl ov17_0224B01C
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_0223E584: .word 0x000080E9
	thumb_func_end ov17_0223E4B0

	thumb_func_start ov17_0223E588
ov17_0223E588: ; 0x0223E588
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x70]
	bl ov17_0224A210
	ldr r0, [r4, #0x70]
	bl ov17_0224A428
	add r0, r4, #0
	add r0, #0x14
	bl ov17_0224A580
	ldr r0, [r4, #0x70]
	bl ov17_0224A5F8
	add r0, r4, #0
	add r0, #0x14
	bl ov17_0224A650
	add r0, r4, #0
	add r0, #0x14
	bl ov17_0224A7B8
	ldr r0, [r4, #0x70]
	bl ov17_0224A9D4
	add r0, r4, #0
	add r0, #0x14
	bl ov17_0224AA1C
	add r0, r4, #0
	bl ov17_0224C3E4
	ldr r0, [r4, #0x70]
	bl ov17_0224C360
	ldr r0, [r4, #0x70]
	bl ov17_0224AAE4
	add r0, r4, #0
	add r0, #0x14
	bl ov17_0224ABB0
	ldr r0, [r4, #0x70]
	bl ov17_0224ACD0
	add r0, r4, #0
	add r0, #0x14
	bl ov17_0224ACF8
	ldr r0, [r4, #0x70]
	bl ov17_0224AD4C
	ldr r0, [r4, #0x70]
	bl ov17_0224AFF8
	add r0, r4, #0
	bl ov17_0224B058
	ldr r0, [r4, #0x70]
	ldr r1, _0223E608 ; =0x000080E9
	bl sub_0200D080
	pop {r4, pc}
	; .align 2, 0
_0223E608: .word 0x000080E9
	thumb_func_end ov17_0223E588

	thumb_func_start ov17_0223E60C
ov17_0223E60C: ; 0x0223E60C
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x2e
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223E66C ; =0x000080EA
	mov r1, #3
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r2, [r4, #0x6c]
	ldr r3, [r4, #0x70]
	bl sub_0200CD7C
	mov r0, #0x2e
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0223E670 ; =0x000080EB
	mov r1, #3
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r2, [r4, #0x6c]
	ldr r3, [r4, #0x70]
	bl sub_0200CD7C
	ldr r0, _0223E674 ; =0x0000114C
	ldr r0, [r4, r0]
	bl ov17_022493C4
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_0223E66C: .word 0x000080EA
_0223E670: .word 0x000080EB
_0223E674: .word 0x0000114C
	thumb_func_end ov17_0223E60C

	thumb_func_start ov17_0223E678
ov17_0223E678: ; 0x0223E678
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0223E678

	thumb_func_start ov17_0223E67C
ov17_0223E67C: ; 0x0223E67C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x17
	str r0, [sp, #0xc]
	add r5, r1, #0
	ldr r2, [r4, #0x74]
	add r0, r5, #0
	mov r1, #0xd
	mov r3, #3
	bl sub_020070E8
	add r0, r4, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov17_0223E3CC
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl ov17_0223F0BC
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x17
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x74]
	add r0, r5, #0
	mov r3, #3
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #0x2d
	mov r2, #0x20
	mov r3, #0x17
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #0x2d
	mov r2, #0x24
	mov r3, #0x17
	bl sub_02003050
	ldr r1, [r4, #0]
	ldr r0, _0223E764 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027B50
	add r5, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r4, #0x74]
	add r2, r1, #0
	mov r3, #0xf
	bl sub_0200DD0C
	add r0, r5, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #0x26
	mov r3, #0x17
	bl sub_02003050
	add r0, r4, #0
	bl ov17_0224C848
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02003164
	ldr r1, _0223E768 ; =0x00001128
	mov r2, #2
	ldr r1, [r4, r1]
	lsl r2, r2, #8
	bl sub_020C4B18
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E764: .word 0x00001988
_0223E768: .word 0x00001128
	thumb_func_end ov17_0223E67C

	thumb_func_start ov17_0223E76C
ov17_0223E76C: ; 0x0223E76C
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0223E76C

	thumb_func_start ov17_0223E770
ov17_0223E770: ; 0x0223E770
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0223E770

	thumb_func_start ov17_0223E774
ov17_0223E774: ; 0x0223E774
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0223E774

	thumb_func_start ov17_0223E778
ov17_0223E778: ; 0x0223E778
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223E788
	bl sub_02022974
_0223E788:
	mov r1, #0x12
	mov r0, #0x17
	lsl r1, r1, #0xa
	bl sub_02018144
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r3, #0x12
	ldr r0, _0223E7D8 ; =ov17_0223E800
	ldr r1, _0223E7DC ; =ov17_0223E81C
	lsl r3, r3, #0xa
	bl sub_02014014
	str r0, [r4, #0xc]
	bl sub_02014784
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	mov r0, #0x3d
	mov r1, #3
	mov r2, #0x17
	bl sub_020144C4
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	mov r2, #0xa
	mov r3, #1
	bl sub_020144CC
	add sp, #8
	pop {r4, pc}
	nop
_0223E7D8: .word ov17_0223E800
_0223E7DC: .word ov17_0223E81C
	thumb_func_end ov17_0223E778

	thumb_func_start ov17_0223E7E0
ov17_0223E7E0: ; 0x0223E7E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02014730
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0201411C
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0223E7E0

	thumb_func_start ov17_0223E800
ov17_0223E800: ; 0x0223E800
	push {r4, lr}
	ldr r3, _0223E818 ; =0x02100DEC
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145B4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0223E818: .word 0x02100DEC
	thumb_func_end ov17_0223E800

	thumb_func_start ov17_0223E81C
ov17_0223E81C: ; 0x0223E81C
	push {r4, lr}
	ldr r3, _0223E834 ; =0x02100DF4
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145F4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0223E834: .word 0x02100DF4
	thumb_func_end ov17_0223E81C

	thumb_func_start ov17_0223E838
ov17_0223E838: ; 0x0223E838
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223E87A
	ldr r1, [r5, #0]
	ldr r0, _0223E89C ; =0x00000177
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0223E85A
	ldr r0, [r4, #4]
	cmp r0, #0x78
	bge _0223E85A
	add r0, r0, #1
	str r0, [r4, #4]
	b _0223E898
_0223E85A:
	ldr r0, _0223E8A0 ; =0x00001174
	ldr r3, _0223E8A4 ; =0x00000AEC
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0xa
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223E898
	mov r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223E898
_0223E87A:
	ldr r4, _0223E8A8 ; =0x00000127
	ldr r3, [r5, #0]
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	ldr r0, _0223E8A0 ; =0x00001174
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	add r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223E898
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223E898:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E89C: .word 0x00000177
_0223E8A0: .word 0x00001174
_0223E8A4: .word 0x00000AEC
_0223E8A8: .word 0x00000127
	thumb_func_end ov17_0223E838

	thumb_func_start ov17_0223E8AC
ov17_0223E8AC: ; 0x0223E8AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223E8BE
	cmp r0, #1
	beq _0223E912
	b _0223E934
_0223E8BE:
	ldr r0, _0223E93C ; =0x00000B53
	mov r2, #0
	strb r2, [r5, r0]
	add r1, r0, #1
	strb r2, [r5, r1]
	ldr r2, [r5, #0]
	ldr r1, _0223E940 ; =0x00000123
	sub r0, r0, #7
	ldrb r2, [r2, r1]
	strb r2, [r5, r0]
	ldr r2, [r5, #0]
	sub r0, r1, #3
	ldrb r0, [r2, r0]
	bl ov17_0224C57C
	mov r1, #0xb5
	lsl r1, r1, #4
	strb r0, [r5, r1]
	ldr r0, [r5, #0]
	bl sub_0209590C
	cmp r0, #1
	bne _0223E8F0
	mov r1, #2
	b _0223E8F2
_0223E8F0:
	mov r1, #1
_0223E8F2:
	ldr r0, _0223E944 ; =0x00000B52
	ldr r3, _0223E948 ; =0x00000B1C
	strb r1, [r5, r0]
	ldr r0, _0223E94C ; =0x00001174
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #9
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223E938
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223E938
_0223E912:
	ldr r0, _0223E94C ; =0x00001174
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _0223E950 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223E938
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223E938
_0223E934:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223E938:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E93C: .word 0x00000B53
_0223E940: .word 0x00000123
_0223E944: .word 0x00000B52
_0223E948: .word 0x00000B1C
_0223E94C: .word 0x00001174
_0223E950: .word 0x00000127
	thumb_func_end ov17_0223E8AC

	thumb_func_start ov17_0223E954
ov17_0223E954: ; 0x0223E954
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223E99C ; =0x00001174
	bne _0223E97A
	add r0, r2, r0
	add r1, r2, #0
	mov r2, #3
	mov r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223E996
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223E996
_0223E97A:
	ldr r3, [r2, #0]
	ldr r4, _0223E9A0 ; =0x00000127
	add r0, r2, r0
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223E996
	mov r0, #1
	pop {r4, pc}
_0223E996:
	mov r0, #0
	pop {r4, pc}
	nop
_0223E99C: .word 0x00001174
_0223E9A0: .word 0x00000127
	thumb_func_end ov17_0223E954

	thumb_func_start ov17_0223E9A4
ov17_0223E9A4: ; 0x0223E9A4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	ldrh r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bls _0223E9B4
	b _0223EB66
_0223E9B4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E9C0: ; jump table
	.short _0223E9CA - _0223E9C0 - 2 ; case 0
	.short _0223EAEA - _0223E9C0 - 2 ; case 1
	.short _0223EB06 - _0223E9C0 - 2 ; case 2
	.short _0223EB28 - _0223E9C0 - 2 ; case 3
	.short _0223EB44 - _0223E9C0 - 2 ; case 4
_0223E9CA:
	add r1, sp, #4
	add r2, sp, #0
	bl ov17_0223E3CC
	ldr r0, [sp, #4]
	ldr r3, _0223EB74 ; =0x02253084
	add r2, r0, #0
	mov r1, #0xc
	mul r2, r1
	ldr r0, _0223EB78 ; =0x00000ACC
	add r2, r3, r2
	str r2, [r4, r0]
	ldr r2, [sp, #4]
	ldr r0, _0223EB7C ; =0x0112A880
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0223EB80 ; =0x02253086
	ldrh r1, [r1, r3]
	bl sub_020E1F6C
	ldr r1, _0223EB84 ; =0x00000B04
	str r0, [r4, r1]
	ldr r0, [sp]
	mov r1, #1
	bl ov17_0223F0BC
	ldr r1, _0223EB84 ; =0x00000B04
	mov r3, #0
	ldr r1, [r4, r1]
	ldr r2, _0223EB88 ; =0x00001388
	mul r0, r1
	mov ip, r3
	mov r1, ip
	add r0, r0, r2
	adc r1, r3
	lsl r2, r2, #1
	bl sub_020E1ED4
	ldr r1, _0223EB8C ; =0x00000B08
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	mov r0, #0xc
	add r3, r2, #0
	ldr r2, _0223EB80 ; =0x02253086
	mul r3, r0
	ldrh r3, [r2, r3]
	add r2, r1, #0
	add r2, #0x10
	strh r3, [r4, r2]
	sub r2, r1, #4
	ldr r6, [sp, #4]
	ldr r3, [r4, r2]
	add r2, r6, #0
	ldr r6, _0223EB90 ; =0x0225308A
	mul r2, r0
	ldrb r2, [r6, r2]
	add r6, r3, #0
	mul r6, r2
	add r2, r1, #4
	str r6, [r4, r2]
	ldr r3, [sp, #4]
	sub r2, r1, #4
	add r6, r3, #0
	mul r6, r0
	ldr r0, _0223EB94 ; =0x0225308B
	ldr r2, [r4, r2]
	ldrb r0, [r0, r6]
	add r3, r2, #0
	mul r3, r0
	add r0, r1, #0
	add r0, #8
	str r3, [r4, r0]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r1, #0x30
	bl sub_020E2178
	ldr r1, _0223EB98 ; =0x00000B14
	mov r2, #0xc
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	add r3, r0, #0
	ldr r0, _0223EB9C ; =0x02253089
	mul r3, r2
	ldrb r3, [r0, r3]
	add r0, r1, #6
	strb r3, [r4, r0]
	ldr r0, [sp, #4]
	mul r2, r0
	ldr r0, _0223EB74 ; =0x02253084
	ldrh r2, [r0, r2]
	add r0, r1, #0
	sub r0, #0x14
	str r2, [r4, r0]
	ldr r2, [sp]
	add r0, r1, #7
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x48
	ldr r0, [r4, r0]
	add r2, r1, #0
	ldrh r3, [r0]
	add r2, #0x2c
	strh r3, [r4, r2]
	add r2, r1, #0
	ldrh r3, [r0, #2]
	add r2, #0x2e
	strh r3, [r4, r2]
	add r2, r1, #0
	ldrh r3, [r0, #4]
	add r2, #0x30
	strh r3, [r4, r2]
	add r2, r1, #0
	ldrh r3, [r0, #6]
	add r2, #0x32
	strh r3, [r4, r2]
	add r2, r1, #0
	ldrh r3, [r0, #8]
	add r2, #0x34
	strh r3, [r4, r2]
	ldrh r2, [r0, #0xa]
	add r0, r1, #0
	add r0, #0x36
	strh r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x10
	ldr r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x10
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xc
	ldr r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x14
	str r2, [r4, r0]
	add r0, r1, #4
	ldrh r0, [r4, r0]
	add r1, #0x18
	strh r0, [r4, r1]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223EB6C
_0223EAEA:
	ldr r0, _0223EBA0 ; =0x00001174
	ldr r3, _0223EBA4 ; =0x00000AEC
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #0xa
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223EB6C
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223EB6C
_0223EB06:
	ldr r0, _0223EBA0 ; =0x00001174
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _0223EBA8 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223EB6C
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223EB6C
_0223EB28:
	ldr r0, _0223EBA0 ; =0x00001174
	ldr r3, _0223EBAC ; =0x00000B1C
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #0xb
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223EB6C
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223EB6C
_0223EB44:
	ldr r0, _0223EBA0 ; =0x00001174
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _0223EBA8 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223EB6C
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _0223EB6C
_0223EB66:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223EB6C:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223EB74: .word 0x02253084
_0223EB78: .word 0x00000ACC
_0223EB7C: .word 0x0112A880
_0223EB80: .word 0x02253086
_0223EB84: .word 0x00000B04
_0223EB88: .word 0x00001388
_0223EB8C: .word 0x00000B08
_0223EB90: .word 0x0225308A
_0223EB94: .word 0x0225308B
_0223EB98: .word 0x00000B14
_0223EB9C: .word 0x02253089
_0223EBA0: .word 0x00001174
_0223EBA4: .word 0x00000AEC
_0223EBA8: .word 0x00000127
_0223EBAC: .word 0x00000B1C
	thumb_func_end ov17_0223E9A4

	thumb_func_start ov17_0223EBB0
ov17_0223EBB0: ; 0x0223EBB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r1]
	str r1, [sp]
	cmp r0, #0
	bne _0223EC0E
	mov r1, #0xaf
	lsl r1, r1, #4
	ldrb r0, [r5, r1]
	mov r4, #0
	add r2, r5, r0
	sub r0, r1, #4
	ldrb r0, [r2, r0]
	add r1, #0x2c
	strb r0, [r5, r1]
	ldr r0, _0223EC18 ; =0x00000AF1
	add r1, r0, #0
	add r1, #0x2d
_0223EBD4:
	add r3, r5, r4
	ldrb r2, [r3, r0]
	add r4, r4, #1
	cmp r4, #4
	strb r2, [r3, r1]
	blt _0223EBD4
	ldr r1, [r5, #0]
	ldr r0, _0223EC1C ; =0x00000127
	ldrb r6, [r1, r0]
	cmp r6, #4
	bge _0223EC02
	lsl r0, r6, #2
	mov r7, #0xb3
	add r4, r5, r0
	lsl r7, r7, #4
_0223EBF2:
	ldr r0, [r5, #0]
	bl sub_02094E98
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0223EBF2
_0223EC02:
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	b _0223EC12
_0223EC0E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223EC12:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223EC18: .word 0x00000AF1
_0223EC1C: .word 0x00000127
	thumb_func_end ov17_0223EBB0

	thumb_func_start ov17_0223EC20
ov17_0223EC20: ; 0x0223EC20
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223EC68 ; =0x00001174
	bne _0223EC48
	ldr r3, _0223EC6C ; =0x00000B1C
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #7
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223EC64
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223EC64
_0223EC48:
	ldr r4, _0223EC70 ; =0x00000127
	ldr r3, [r5, #0]
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	add r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223EC64
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223EC64:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223EC68: .word 0x00001174
_0223EC6C: .word 0x00000B1C
_0223EC70: .word 0x00000127
	thumb_func_end ov17_0223EC20

	thumb_func_start ov17_0223EC74
ov17_0223EC74: ; 0x0223EC74
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223ECBC ; =0x00001174
	bne _0223EC9C
	ldr r3, _0223ECC0 ; =0x00000B1C
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #5
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223ECB8
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223ECB8
_0223EC9C:
	ldr r4, _0223ECC4 ; =0x00000127
	ldr r3, [r5, #0]
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	add r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223ECB8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223ECB8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223ECBC: .word 0x00001174
_0223ECC0: .word 0x00000B1C
_0223ECC4: .word 0x00000127
	thumb_func_end ov17_0223EC74

	thumb_func_start ov17_0223ECC8
ov17_0223ECC8: ; 0x0223ECC8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223ED10 ; =0x00001174
	bne _0223ECF0
	ldr r3, _0223ED14 ; =0x00000B1C
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #8
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223ED0C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223ED0C
_0223ECF0:
	ldr r4, _0223ED18 ; =0x00000127
	ldr r3, [r5, #0]
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	add r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223ED0C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223ED0C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223ED10: .word 0x00001174
_0223ED14: .word 0x00000B1C
_0223ED18: .word 0x00000127
	thumb_func_end ov17_0223ECC8

	thumb_func_start ov17_0223ED1C
ov17_0223ED1C: ; 0x0223ED1C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223ED72
	mov r1, #0xaf
	lsl r1, r1, #4
	ldrb r0, [r5, r1]
	cmp r0, #3
	blo _0223ED36
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223ED36:
	add r0, r1, #2
	ldrb r0, [r5, r0]
	add r1, #0x5c
	strb r0, [r5, r1]
	mov r0, #0x12
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bl ov17_0224C57C
	mov r3, #0xb5
	lsl r3, r3, #4
	strb r0, [r5, r3]
	add r0, r3, #2
	mov r1, #0
	strb r1, [r5, r0]
	ldr r0, _0223ED94 ; =0x00001174
	sub r3, #0x34
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #6
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223ED90
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223ED90
_0223ED72:
	ldr r4, _0223ED98 ; =0x00000127
	ldr r3, [r5, #0]
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	ldr r0, _0223ED94 ; =0x00001174
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	add r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223ED90
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223ED90:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223ED94: .word 0x00001174
_0223ED98: .word 0x00000127
	thumb_func_end ov17_0223ED1C

	thumb_func_start ov17_0223ED9C
ov17_0223ED9C: ; 0x0223ED9C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223EDB2
	cmp r0, #1
	beq _0223EDDC
	cmp r0, #2
	beq _0223EDF8
	b _0223EE1A
_0223EDB2:
	ldr r0, _0223EE40 ; =0x00000AF1
	ldr r1, _0223EE40 ; =0x00000AF1
	ldrb r7, [r3, r0]
	mov r6, #0
	add r0, r0, #1
_0223EDBC:
	add r5, r3, r6
	ldrb r2, [r5, r0]
	add r6, r6, #1
	cmp r6, #3
	strb r2, [r5, r1]
	blt _0223EDBC
	ldr r0, _0223EE44 ; =0x00000AF4
	strb r7, [r3, r0]
	sub r1, r0, #4
	ldrb r1, [r3, r1]
	sub r0, r0, #4
	add r1, r1, #1
	strb r1, [r3, r0]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_0223EDDC:
	ldr r0, _0223EE48 ; =0x00001174
	ldr r5, _0223EE4C ; =0x00000AEC
	add r0, r3, r0
	add r1, r3, #0
	mov r2, #0xa
	add r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223EE3C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223EE3C
_0223EDF8:
	ldr r0, _0223EE48 ; =0x00001174
	ldr r5, [r3, #0]
	add r0, r3, r0
	ldr r3, _0223EE50 ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r5, r3]
	sub r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223EE3C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223EE3C
_0223EE1A:
	mov r1, #0xaf
	lsl r1, r1, #4
	ldrb r0, [r3, r1]
	cmp r0, #4
	bhs _0223EE38
	add r0, r1, #0
	add r0, #0x2d
	ldrb r0, [r3, r0]
	add r1, #0x2d
	add r0, r0, #1
	strb r0, [r3, r1]
	mov r0, #4
	strh r0, [r4, #2]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0223EE38:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223EE3C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223EE40: .word 0x00000AF1
_0223EE44: .word 0x00000AF4
_0223EE48: .word 0x00001174
_0223EE4C: .word 0x00000AEC
_0223EE50: .word 0x00000127
	thumb_func_end ov17_0223ED9C

	thumb_func_start ov17_0223EE54
ov17_0223EE54: ; 0x0223EE54
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223EE66
	cmp r0, #1
	beq _0223EE82
	b _0223EEA4
_0223EE66:
	ldr r0, _0223EEAC ; =0x00001174
	ldr r3, _0223EEB0 ; =0x00000B1C
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0xc
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223EEA8
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223EEA8
_0223EE82:
	ldr r0, _0223EEAC ; =0x00001174
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _0223EEB4 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223EEA8
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223EEA8
_0223EEA4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223EEA8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223EEAC: .word 0x00001174
_0223EEB0: .word 0x00000B1C
_0223EEB4: .word 0x00000127
	thumb_func_end ov17_0223EE54

	thumb_func_start ov17_0223EEB8
ov17_0223EEB8: ; 0x0223EEB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp]
	ldrh r0, [r1]
	str r1, [sp, #4]
	cmp r0, #0
	beq _0223EED2
	cmp r0, #1
	beq _0223EFC8
	cmp r0, #2
	bne _0223EED0
	b _0223EFEC
_0223EED0:
	b _0223F014
_0223EED2:
	mov r1, #0
	mov r6, #0x4b
	ldr r2, [sp]
	ldr r5, _0223F020 ; =0x00000AF6
	add r3, r1, #0
	lsl r6, r6, #2
_0223EEDE:
	ldr r4, [sp]
	ldrsh r0, [r2, r5]
	ldr r4, [r4, #0]
	add r1, r1, #1
	add r4, r4, r3
	strh r0, [r4, r6]
	add r2, r2, #2
	add r3, #0xc
	cmp r1, #4
	blt _0223EEDE
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, sp, #0x1c
	bl ov17_02251930
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0, #0]
	add r2, sp, #0x14
	bl ov17_02251930
	mov r6, #0
	add r2, sp, #0x14
	add r3, sp, #0x1c
	add r4, sp, #0xc
	add r5, sp, #8
	add r7, r6, #0
_0223EF16:
	mov r0, #0
	ldrsh r1, [r3, r0]
	ldrsh r0, [r2, r7]
	strb r6, [r5]
	add r6, r6, #1
	add r0, r1, r0
	strh r0, [r4]
	add r2, r2, #2
	add r3, r3, #2
	add r4, r4, #2
	add r5, r5, #1
	cmp r6, #4
	blt _0223EF16
	mov r6, #0
	sub r7, r6, #2
_0223EF34:
	mov r3, #3
	cmp r6, #3
	bge _0223EF66
	add r4, sp, #0x10
	add r5, sp, #8
	add r4, #2
	add r5, #3
_0223EF42:
	mov r0, #0
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r7]
	cmp r1, r0
	bge _0223EF5C
	strh r1, [r4]
	sub r1, r4, #2
	strh r0, [r1]
	sub r0, r5, #1
	ldrb r2, [r5]
	ldrb r1, [r0]
	strb r1, [r5]
	strb r2, [r0]
_0223EF5C:
	sub r3, r3, #1
	sub r4, r4, #2
	sub r5, r5, #1
	cmp r3, r6
	bgt _0223EF42
_0223EF66:
	add r6, r6, #1
	cmp r6, #3
	blt _0223EF34
	ldr r1, _0223F024 ; =0x00000172
	mov r4, #0
	add r3, sp, #8
_0223EF72:
	ldr r0, [sp]
	ldrb r2, [r3]
	ldr r0, [r0, #0]
	add r3, r3, #1
	add r0, r0, r4
	add r4, r4, #1
	strb r2, [r0, r1]
	cmp r4, #4
	blt _0223EF72
	ldr r2, _0223F028 ; =0x00000B53
	ldr r1, [sp]
	mov r0, #0
	strb r0, [r1, r2]
	add r3, r2, #1
	strb r0, [r1, r3]
	ldr r1, [r1, #0]
	ldr r4, _0223F024 ; =0x00000172
	sub r3, r2, #7
	ldrb r5, [r1, r4]
	ldr r1, [sp]
	sub r4, #0x51
	strb r5, [r1, r3]
	ldr r1, [r1, #0]
	ldrb r1, [r1, r4]
	cmp r1, #0
	beq _0223EFAE
	cmp r1, #1
	beq _0223EFAE
	cmp r1, #2
	bne _0223EFB8
_0223EFAE:
	ldr r1, _0223F02C ; =0x00000B52
	ldr r0, [sp]
	mov r2, #6
	strb r2, [r0, r1]
	b _0223EFBE
_0223EFB8:
	ldr r1, [sp]
	sub r2, r2, #1
	strb r0, [r1, r2]
_0223EFBE:
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0]
_0223EFC8:
	ldr r1, _0223F030 ; =0x00001174
	ldr r0, [sp]
	ldr r4, _0223F034 ; =0x00000B1C
	add r0, r0, r1
	ldr r1, [sp]
	mov r2, #9
	add r3, r1, #0
	add r3, r3, r4
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223F01A
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0]
	b _0223F01A
_0223EFEC:
	ldr r0, [sp]
	ldr r4, _0223F038 ; =0x00000127
	ldr r3, [r0, #0]
	ldr r1, _0223F030 ; =0x00001174
	sub r2, r4, #4
	add r0, r0, r1
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223F01A
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0]
	b _0223F01A
_0223F014:
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223F01A:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F020: .word 0x00000AF6
_0223F024: .word 0x00000172
_0223F028: .word 0x00000B53
_0223F02C: .word 0x00000B52
_0223F030: .word 0x00001174
_0223F034: .word 0x00000B1C
_0223F038: .word 0x00000127
	thumb_func_end ov17_0223EEB8

	thumb_func_start ov17_0223F03C
ov17_0223F03C: ; 0x0223F03C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223F04E
	cmp r0, #1
	beq _0223F052
	b _0223F082
_0223F04E:
	add r0, r0, #1
	strh r0, [r4]
_0223F052:
	ldr r3, _0223F0B0 ; =0x00000172
	mov r0, #0
	add r1, sp, #0
_0223F058:
	ldr r5, [r2, #0]
	add r5, r5, r0
	ldrb r5, [r5, r3]
	add r0, r0, #1
	strb r5, [r1]
	add r1, r1, #1
	cmp r0, #4
	blt _0223F058
	ldr r0, _0223F0B4 ; =0x00001174
	add r1, r2, #0
	add r0, r2, r0
	mov r2, #4
	add r3, sp, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223F0AA
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0223F0AA
_0223F082:
	ldr r4, _0223F0B8 ; =0x00000127
	ldr r0, _0223F0B4 ; =0x00001174
	add r1, r4, #0
	ldr r3, [r2, #0]
	add r1, #0x50
	add r0, r2, r0
	ldrb r2, [r3, r4]
	ldrb r1, [r3, r1]
	sub r1, r2, r1
	sub r2, r4, #4
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	sub r1, r1, #1
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223F0AA
	mov r0, #3
	pop {r3, r4, r5, pc}
_0223F0AA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223F0B0: .word 0x00000172
_0223F0B4: .word 0x00001174
_0223F0B8: .word 0x00000127
	thumb_func_end ov17_0223F03C

	thumb_func_start ov17_0223F0BC
ov17_0223F0BC: ; 0x0223F0BC
	push {r3, lr}
	cmp r1, #4
	bhi _0223F104
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223F0CE: ; jump table
	.short _0223F0FC - _0223F0CE - 2 ; case 0
	.short _0223F0EA - _0223F0CE - 2 ; case 1
	.short _0223F0E2 - _0223F0CE - 2 ; case 2
	.short _0223F0D8 - _0223F0CE - 2 ; case 3
	.short _0223F0F2 - _0223F0CE - 2 ; case 4
_0223F0D8:
	lsl r1, r0, #2
	ldr r0, _0223F10C ; =0x02252FC7
	ldrb r0, [r0, r1]
	lsl r0, r0, #3
	pop {r3, pc}
_0223F0E2:
	lsl r1, r0, #2
	ldr r0, _0223F10C ; =0x02252FC7
	ldrb r0, [r0, r1]
	pop {r3, pc}
_0223F0EA:
	lsl r1, r0, #2
	ldr r0, _0223F110 ; =0x02252FC6
	ldrb r0, [r0, r1]
	pop {r3, pc}
_0223F0F2:
	lsl r1, r0, #2
	ldr r0, _0223F110 ; =0x02252FC6
	ldrb r0, [r0, r1]
	lsl r0, r0, #1
	pop {r3, pc}
_0223F0FC:
	lsl r1, r0, #2
	ldr r0, _0223F114 ; =0x02252FC4
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0223F104:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0223F10C: .word 0x02252FC7
_0223F110: .word 0x02252FC6
_0223F114: .word 0x02252FC4
	thumb_func_end ov17_0223F0BC

	thumb_func_start ov17_0223F118
ov17_0223F118: ; 0x0223F118
	push {r3, lr}
	ldr r0, _0223F134 ; =0x0000000B
	mov r1, #2
	bl sub_02006590
	ldr r0, _0223F138 ; =0x0000000C
	mov r1, #2
	bl sub_02006590
	ldr r0, _0223F13C ; =0x00000016
	mov r1, #2
	bl sub_02006590
	pop {r3, pc}
	; .align 2, 0
_0223F134: .word 0x0000000B
_0223F138: .word 0x0000000C
_0223F13C: .word 0x00000016
	thumb_func_end ov17_0223F118

	thumb_func_start ov17_0223F140
ov17_0223F140: ; 0x0223F140
	push {r3, lr}
	sub sp, #8
	mov r2, #2
	ldr r1, _0223F158 ; =ov17_0223F15C
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_0223F158: .word ov17_0223F15C
	thumb_func_end ov17_0223F140

	thumb_func_start ov17_0223F15C
ov17_0223F15C: ; 0x0223F15C
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0223F1C8 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0223F1CC ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0223F1D0 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _0223F1D4 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _0223F1D8 ; =0xBFFF0000
	ldr r0, _0223F1DC ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0223F1C8: .word 0x04000008
_0223F1CC: .word 0xFFFFCFFD
_0223F1D0: .word 0x0000CFFB
_0223F1D4: .word 0x00007FFF
_0223F1D8: .word 0xBFFF0000
_0223F1DC: .word 0x04000580
	thumb_func_end ov17_0223F15C

	thumb_func_start ov17_0223F1E0
ov17_0223F1E0: ; 0x0223F1E0
	ldr r3, _0223F1E4 ; =sub_020242C4
	bx r3
	; .align 2, 0
_0223F1E4: .word sub_020242C4
	thumb_func_end ov17_0223F1E0

	thumb_func_start ov17_0223F1E8
ov17_0223F1E8: ; 0x0223F1E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x8c]
	mov r2, #0
	str r3, [sp, #0x24]
	ldr r5, [sp, #0x88]
	ldr r4, [sp, #0xa0]
	bl sub_02002D7C
	add r7, r0, #0
	asr r1, r7, #2
	lsr r1, r1, #0x1d
	add r1, r7, r1
	asr r6, r1, #3
	mov r1, #8
	bl sub_020BD140
	cmp r0, #0
	beq _0223F218
	add r6, r6, #1
_0223F218:
	add r0, sp, #0x34
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r6, #0x18
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x34
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x90]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x8c]
	add r0, sp, #0x34
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	ldr r2, [sp, #0x18]
	add r0, sp, #0x34
	mov r1, #1
	bl sub_02012898
	mov r1, #1
	add r2, r1, #0
	add r3, sp, #0x28
	bl sub_0201ED94
	ldr r0, [sp, #0xa8]
	cmp r0, #1
	bne _0223F270
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	sub r4, r4, r0
_0223F270:
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x44]
	add r0, sp, #0x34
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x20]
	bl sub_0200D9B0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x9c]
	bl sub_0200D04C
	str r0, [sp, #0x50]
	mov r0, #0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x2c]
	str r4, [sp, #0x5c]
	str r0, [sp, #0x58]
	ldr r0, [sp, #0xa4]
	sub r0, #8
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0x64]
	ldr r0, [sp, #0xb0]
	str r0, [sp, #0x68]
	mov r0, #1
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x70]
	add r0, sp, #0x44
	bl sub_020127E8
	ldr r1, [sp, #0x98]
	add r6, r0, #0
	cmp r1, #0
	beq _0223F2BC
	bl sub_02012A90
_0223F2BC:
	ldr r2, [sp, #0xa4]
	add r0, r6, #0
	add r1, r4, #0
	sub r2, #8
	bl sub_020128C4
	add r0, sp, #0x34
	bl sub_0201A8FC
	str r6, [r5, #0]
	add r3, sp, #0x28
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	strh r7, [r5, #0x10]
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F1E8

	thumb_func_start ov17_0223F2E4
ov17_0223F2E4: ; 0x0223F2E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02012870
	add r0, r4, #4
	bl sub_0201EE28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F2E4

	thumb_func_start ov17_0223F2F8
ov17_0223F2F8: ; 0x0223F2F8
	cmp r3, #1
	bne _0223F302
	ldrh r3, [r0, #0x10]
	lsr r3, r3, #1
	sub r1, r1, r3
_0223F302:
	ldr r3, _0223F30C ; =sub_020128C4
	ldr r0, [r0, #0]
	sub r2, #8
	bx r3
	nop
_0223F30C: .word sub_020128C4
	thumb_func_end ov17_0223F2F8

	thumb_func_start ov17_0223F310
ov17_0223F310: ; 0x0223F310
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcf
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0223F310

	thumb_func_start ov17_0223F334
ov17_0223F334: ; 0x0223F334
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	ldr r1, _0223F36C ; =0x00000122
	ldrb r1, [r5, r1]
	bl ov17_02252A9C
	add r7, r0, #0
	mov r6, #0
	add r4, r5, #0
_0223F348:
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl ov17_02252A70
	ldr r1, _0223F370 ; =0x0000012A
	add r6, r6, #1
	strh r0, [r4, r1]
	add r5, r5, #4
	add r4, #0xc
	cmp r6, #4
	blt _0223F348
	add r0, r7, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F36C: .word 0x00000122
_0223F370: .word 0x0000012A
	thumb_func_end ov17_0223F334

	thumb_func_start ov17_0223F374
ov17_0223F374: ; 0x0223F374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r4, [sp]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r0, [sp, #4]
_0223F384:
	ldr r0, [r4, #0]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	mov r6, #0x64
	add r5, r0, #0
	add r0, r6, #0
	ldr r1, [sp]
	add r0, #0xbb
	ldrb r0, [r1, r0]
	cmp r0, #4
	bls _0223F3A0
	b _0223F512
_0223F3A0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F3AC: ; jump table
	.short _0223F3B6 - _0223F3AC - 2 ; case 0
	.short _0223F3FC - _0223F3AC - 2 ; case 1
	.short _0223F442 - _0223F3AC - 2 ; case 2
	.short _0223F488 - _0223F3AC - 2 ; case 3
	.short _0223F4CE - _0223F3AC - 2 ; case 4
_0223F3B6:
	ldr r0, [r4, #0]
	mov r1, #0x13
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0x17
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x14
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xa0
	cmp r5, r0
	beq _0223F3F4
	add r0, r6, #0
	add r0, #0xa1
	cmp r5, r0
	beq _0223F3F8
	add r0, r6, #0
	add r0, #0xa4
	cmp r5, r0
	beq _0223F3F8
	b _0223F51A
_0223F3F4:
	mov r6, #0x6e
	b _0223F51A
_0223F3F8:
	mov r6, #0x69
	b _0223F51A
_0223F3FC:
	ldr r0, [r4, #0]
	mov r1, #0x14
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0x13
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x15
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xa0
	cmp r5, r0
	beq _0223F43E
	add r0, r6, #0
	add r0, #0xa1
	cmp r5, r0
	beq _0223F43A
	add r0, r6, #0
	add r0, #0xa2
	cmp r5, r0
	beq _0223F43E
	b _0223F51A
_0223F43A:
	mov r6, #0x6e
	b _0223F51A
_0223F43E:
	mov r6, #0x69
	b _0223F51A
_0223F442:
	ldr r0, [r4, #0]
	mov r1, #0x15
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0x14
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xa1
	cmp r5, r0
	beq _0223F484
	add r0, r6, #0
	add r0, #0xa2
	cmp r5, r0
	beq _0223F480
	add r0, r6, #0
	add r0, #0xa3
	cmp r5, r0
	beq _0223F484
	b _0223F51A
_0223F480:
	mov r6, #0x6e
	b _0223F51A
_0223F484:
	mov r6, #0x69
	b _0223F51A
_0223F488:
	ldr r0, [r4, #0]
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0x15
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x17
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xa2
	cmp r5, r0
	beq _0223F4CA
	add r0, r6, #0
	add r0, #0xa3
	cmp r5, r0
	beq _0223F4C6
	add r0, r6, #0
	add r0, #0xa4
	cmp r5, r0
	beq _0223F4CA
	b _0223F51A
_0223F4C6:
	mov r6, #0x6e
	b _0223F51A
_0223F4CA:
	mov r6, #0x69
	b _0223F51A
_0223F4CE:
	ldr r0, [r4, #0]
	mov r1, #0x17
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x13
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xa0
	cmp r5, r0
	beq _0223F50E
	add r0, r6, #0
	add r0, #0xa3
	cmp r5, r0
	beq _0223F50E
	add r0, r6, #0
	add r0, #0xa4
	cmp r5, r0
	bne _0223F51A
	mov r6, #0x6e
	b _0223F51A
_0223F50E:
	mov r6, #0x69
	b _0223F51A
_0223F512:
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223F51A:
	ldr r0, [r4, #0]
	mov r1, #0x18
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #8]
	add r1, r1, r7
	add r1, r0, r1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	add r0, r1, #0
	mul r0, r6
	mov r1, #0x64
	bl sub_020E1F6C
	mov r1, #0x4a
	ldr r2, [sp, #4]
	lsl r1, r1, #2
	strh r0, [r2, r1]
	add r0, r2, #0
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	bge _0223F55A
	b _0223F384
_0223F55A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F374

	thumb_func_start ov17_0223F560
ov17_0223F560: ; 0x0223F560
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r6, r2, #0
	mov r2, #0
	mvn r2, r2
	add r5, r0, #0
	add r4, r1, #0
	cmp r3, r2
	beq _0223F582
	mov r2, #1
	str r2, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r2, #0x2e
	mov r3, #0x49
	bl sub_0200CBDC
_0223F582:
	mov r1, #0
	ldr r0, [sp, #0x28]
	mvn r1, r1
	cmp r0, r1
	beq _0223F5AC
	mov r1, #0x2e
	str r1, [sp]
	mov r1, #7
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #2
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0200CD7C
_0223F5AC:
	mov r0, #0
	ldr r1, [sp, #0x2c]
	mvn r0, r0
	cmp r1, r0
	beq _0223F5C8
	mov r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x2e
	mov r3, #0x4a
	bl sub_0200CE0C
_0223F5C8:
	mov r0, #0
	ldr r1, [sp, #0x30]
	mvn r0, r0
	cmp r1, r0
	beq _0223F5E4
	mov r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x2e
	mov r3, #0x4b
	bl sub_0200CE3C
_0223F5E4:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0223F560

	thumb_func_start ov17_0223F5E8
ov17_0223F5E8: ; 0x0223F5E8
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r2, #0
	mvn r2, r2
	add r5, r0, #0
	add r6, r3, #0
	cmp r1, r2
	beq _0223F5FC
	bl sub_0200D070
_0223F5FC:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0223F60C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D080
_0223F60C:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _0223F61C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200D090
_0223F61C:
	mov r0, #0
	ldr r1, [sp, #0x10]
	mvn r0, r0
	cmp r1, r0
	beq _0223F62C
	add r0, r5, #0
	bl sub_0200D0A0
_0223F62C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F5E8

	thumb_func_start ov17_0223F630
ov17_0223F630: ; 0x0223F630
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r5, _0223F6B8 ; =0x022531FC
	str r2, [sp, #4]
	str r0, [sp]
	add r7, r1, #0
	add r4, sp, #8
	mov r2, #6
_0223F640:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0223F640
	ldr r0, [r5, #0]
	ldr r5, _0223F6BC ; =0x022531CC
	str r0, [r4, #0]
	ldr r0, [sp, #0x50]
	ldr r4, [sp]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x54]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x58]
	mov r6, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x34]
_0223F66C:
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, sp, #8
	bl sub_0200CE6C
	str r0, [r4, #0]
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	bl sub_0200D4C4
	ldrb r1, [r5, #6]
	ldr r0, [r4, #0]
	bl sub_0200D364
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D6A4
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r6, r6, #1
	add r4, r4, #4
	add r5, #8
	cmp r6, #6
	blt _0223F66C
	ldr r0, _0223F6C0 ; =ov17_0223F6E8
	ldr r1, [sp]
	ldr r2, [sp, #0x68]
	bl sub_0200D9E8
	ldr r1, [sp]
	str r0, [r1, #0x18]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F6B8: .word 0x022531FC
_0223F6BC: .word 0x022531CC
_0223F6C0: .word ov17_0223F6E8
	thumb_func_end ov17_0223F630

	thumb_func_start ov17_0223F6C4
ov17_0223F6C4: ; 0x0223F6C4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0223F6CC:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0223F6CC
	ldr r0, [r6, #0x18]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r6, #0x18]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F6C4

	thumb_func_start ov17_0223F6E8
ov17_0223F6E8: ; 0x0223F6E8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0223F708 ; =0x022531CC
	add r5, r1, #0
	mov r6, #0
	mov r7, #4
_0223F6F2:
	ldrsh r1, [r4, r7]
	ldr r0, [r5, #0]
	bl sub_0200D7C0
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #6
	blt _0223F6F2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F708: .word 0x022531CC
	thumb_func_end ov17_0223F6E8

	thumb_func_start ov17_0223F70C
ov17_0223F70C: ; 0x0223F70C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x14
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	str r5, [r4, #4]
	str r6, [r4, #0xc]
	ldr r0, [sp, #0x18]
	strb r7, [r4, #0x10]
	strb r0, [r4, #0x12]
	ldr r0, _0223F740 ; =ov17_0223F774
	ldr r2, [sp, #0x1c]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F740: .word ov17_0223F774
	thumb_func_end ov17_0223F70C

	thumb_func_start ov17_0223F744
ov17_0223F744: ; 0x0223F744
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0223F752
	bl sub_02022974
_0223F752:
	ldr r0, [r4, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov17_0223F744

	thumb_func_start ov17_0223F760
ov17_0223F760: ; 0x0223F760
	push {r3, lr}
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _0223F770
	mov r0, #1
	pop {r3, pc}
_0223F770:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov17_0223F760

	thumb_func_start ov17_0223F774
ov17_0223F774: ; 0x0223F774
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #1
	add r4, r1, #0
	bl sub_0200AC1C
	cmp r0, #0
	beq _0223F7DA
	ldr r0, [r4, #8]
	add r2, r0, #1
	str r2, [r4, #8]
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	cmp r2, r0
	ble _0223F7DA
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	mov r1, #0
	mov r2, #4
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, _0223F7E0 ; =0x000005F8
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #8]
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r1, [r4, #0x11]
	ldrb r0, [r4, #0x10]
	cmp r1, r0
	blo _0223F7DA
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _0223F7CE
	add r0, r4, #0
	bl ov17_0223F744
	add sp, #4
	pop {r3, r4, pc}
_0223F7CE:
	cmp r0, #0xff
	beq _0223F7D6
	sub r0, r0, #1
	strb r0, [r4, #0x12]
_0223F7D6:
	mov r0, #0
	strb r0, [r4, #0x11]
_0223F7DA:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223F7E0: .word 0x000005F8
	thumb_func_end ov17_0223F774

	thumb_func_start ov17_0223F7E4
ov17_0223F7E4: ; 0x0223F7E4
	push {r4, lr}
	mov r1, #0x32
	mov r0, #0x15
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x32
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r1, #0
	mov r0, #0x2e
	mvn r1, r1
	lsl r0, r0, #4
	strb r1, [r4, r0]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F7E4

	thumb_func_start ov17_0223F80C
ov17_0223F80C: ; 0x0223F80C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _0223F860 ; =0x02253448
	add r5, r0, #0
	add r7, r4, #0
_0223F816:
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020183C4
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019EE0
	add r1, r4, #4
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019184
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r4, r4, #1
	add r6, #0x1c
	cmp r4, #4
	blo _0223F816
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F860: .word 0x02253448
	thumb_func_end ov17_0223F80C

	thumb_func_start ov17_0223F864
ov17_0223F864: ; 0x0223F864
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0223F86C:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl sub_02019120
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	cmp r4, #4
	blo _0223F86C
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0223F864

	thumb_func_start ov17_0223F88C
ov17_0223F88C: ; 0x0223F88C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov17_0223F7E4
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #8]
	mov r0, #0xc
	mov r1, #0x15
	bl sub_02012744
	str r0, [r4, #0x3c]
	mov r0, #0x2d
	mov r1, #0x15
	bl sub_02006C24
	mov r7, #2
	str r0, [sp, #0xc]
	mov r5, #0
	lsl r7, r7, #0xa
	b _0223F8FA
_0223F8BE:
	mov r0, #0x15
	add r1, r7, #0
	bl sub_02018144
	lsl r1, r5, #2
	add r1, r4, r1
	str r0, [r1, #0x20]
	mov r0, #0x15
	str r0, [sp]
	ldr r1, _0223F958 ; =0x02253250
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	ldr r0, [sp, #0xc]
	mov r2, #1
	add r3, sp, #0x10
	bl sub_020071D0
	add r6, r0, #0
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r1, [r0, #0x20]
	ldr r0, [sp, #0x10]
	add r2, r7, #0
	add r0, #0xc
	bl sub_020C4B68
	add r0, r6, #0
	bl sub_020181C4
	add r5, r5, #1
_0223F8FA:
	cmp r5, #5
	blt _0223F8BE
	ldr r0, [r4, #4]
	mov r7, #2
	ldr r6, [r0, #0x50]
	mov r5, #0
	lsl r7, r7, #8
	b _0223F948
_0223F90A:
	mov r0, #0x15
	add r1, r7, #0
	bl sub_02018144
	lsl r1, r5, #2
	add r1, r4, r1
	str r0, [r1, #0x34]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _0223F95C ; =0x02253238
	lsl r3, r5, #1
	ldrh r2, [r2, r3]
	add r0, r6, #0
	mov r1, #0x2d
	mov r3, #0x15
	bl sub_02003050
	add r0, r6, #0
	mov r1, #1
	bl sub_02003164
	lsl r1, r5, #2
	add r1, r4, r1
	ldr r1, [r1, #0x34]
	add r2, r7, #0
	bl sub_020C4B18
	add r5, r5, #1
_0223F948:
	cmp r5, #2
	blt _0223F90A
	ldr r0, [sp, #0xc]
	bl sub_02006CA8
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F958: .word 0x02253250
_0223F95C: .word 0x02253238
	thumb_func_end ov17_0223F88C

	thumb_func_start ov17_0223F960
ov17_0223F960: ; 0x0223F960
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	bl ov17_022404B0
	ldr r0, [r6, #0x3c]
	bl sub_020127BC
	ldr r3, _0223F9C0 ; =0x000080F8
	str r3, [sp]
	ldr r0, [r6, #4]
	add r1, r3, #5
	ldr r0, [r0, #0x1c]
	sub r2, r3, #7
	bl ov17_02252B20
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl ov17_02252BCC
	mov r4, #0
	add r5, r6, #0
_0223F98E:
	ldr r0, [r5, #0x20]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0223F98E
	mov r5, #0
	add r4, r6, #0
_0223F9A0:
	ldr r0, [r4, #0x34]
	bl sub_020181C4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #2
	blt _0223F9A0
	add r0, r6, #0
	bl ov17_022409F4
	add r0, r6, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0223F9C0: .word 0x000080F8
	thumb_func_end ov17_0223F960

	thumb_func_start ov17_0223F9C4
ov17_0223F9C4: ; 0x0223F9C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r3, [r7, #0xc]
	ldr r0, [r7, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	mov r0, #0x2e
	lsl r0, r0, #4
	ldrsb r2, [r7, r0]
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	bne _0223F9EE
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0x10]
	b _0223F9F8
_0223F9EE:
	mov r0, #0x30
	ldr r1, _0223FAE8 ; =0x02253558
	mul r0, r2
	add r0, r1, r0
	str r0, [sp, #0x10]
_0223F9F8:
	ldr r0, [sp, #4]
	mov r1, #0x30
	ldr r2, _0223FAE8 ; =0x02253558
	mul r1, r0
	add r0, r2, r1
	str r0, [sp, #0x14]
	mov r4, #0
	add r5, r0, #0
_0223FA08:
	ldrh r1, [r5, #0xc]
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0223FA08
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	ldr r1, [sp, #0x14]
	ldr r0, [r7, #4]
	ldrh r1, [r1, #2]
	ldr r0, [r0, #0x50]
	mov r2, #1
	lsl r1, r1, #2
	add r1, r7, r1
	ldr r1, [r1, #0x34]
	mov r3, #0
	bl sub_02002FBC
	ldr r6, [sp, #0x14]
	ldr r4, [sp, #0x10]
	mov r5, #0
_0223FA42:
	ldrh r2, [r6, #4]
	ldr r0, _0223FAEC ; =0x0000FFFF
	cmp r2, r0
	beq _0223FA78
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _0223FA56
	ldrh r0, [r4, #4]
	cmp r2, r0
	beq _0223FA78
_0223FA56:
	lsl r2, r2, #2
	add r1, r5, #4
	add r2, r7, r2
	lsl r1, r1, #0x18
	mov r3, #2
	ldr r0, [sp, #0xc]
	ldr r2, [r2, #0x20]
	lsr r1, r1, #0x18
	lsl r3, r3, #0xa
	bl sub_02019574
	add r1, r5, #4
	lsl r1, r1, #0x18
	ldr r0, [sp, #0xc]
	lsr r1, r1, #0x18
	bl sub_0201C3C0
_0223FA78:
	add r5, r5, #1
	add r6, r6, #2
	add r4, r4, #2
	cmp r5, #4
	blt _0223FA42
	mov r1, #0x2e
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	strb r0, [r7, r1]
	add r0, r7, #0
	bl ov17_022404B0
	ldr r0, [sp, #0x14]
	ldr r3, [r0, #0x28]
	cmp r3, #0
	beq _0223FAA0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	blx r3
_0223FAA0:
	ldr r0, [sp, #0x14]
	ldrh r1, [r0]
	ldr r0, _0223FAEC ; =0x0000FFFF
	cmp r1, r0
	beq _0223FADA
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _0223FAB8
	ldr r0, [sp, #0x10]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0223FADA
_0223FAB8:
	mov r3, #0xb7
	mov r0, #0x15
	lsl r3, r3, #2
	str r0, [sp]
	mov r0, #0x2d
	mov r2, #1
	add r3, r7, r3
	bl sub_02006F50
	mov r1, #0xb6
	lsl r1, r1, #2
	str r0, [r7, r1]
	ldr r0, _0223FAF0 ; =ov17_022411E4
	add r1, r7, #0
	mov r2, #0xa
	bl sub_0200DA3C
_0223FADA:
	ldr r0, _0223FAF4 ; =ov17_02241220
	add r1, r7, #0
	mov r2, #0xa
	bl sub_0200DA3C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FAE8: .word 0x02253558
_0223FAEC: .word 0x0000FFFF
_0223FAF0: .word ov17_022411E4
_0223FAF4: .word ov17_02241220
	thumb_func_end ov17_0223F9C4

	thumb_func_start ov17_0223FAF8
ov17_0223FAF8: ; 0x0223FAF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x2e
	lsl r0, r0, #4
	ldrsb r1, [r5, r0]
	mov r6, #0
	sub r0, r6, #1
	cmp r1, r0
	bne _0223FB0E
	bl sub_02022974
_0223FB0E:
	mov r0, #0x2e
	lsl r0, r0, #4
	ldrsb r1, [r5, r0]
	ldr r3, _0223FBBC ; =0x02253558
	mov r0, #0x30
	add r2, r1, #0
	mul r2, r0
	add r4, r3, r2
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _0223FB28
	sub r0, #0x31
	pop {r3, r4, r5, r6, r7, pc}
_0223FB28:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0223FB32
	bl sub_02022974
_0223FB32:
	ldr r0, [r4, #0x14]
	bl sub_02022664
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _0223FB4C
	add r0, r5, #0
	bl ov17_02240C90
	add r7, r0, #0
	add r6, r6, #1
_0223FB4C:
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	cmp r7, r0
	bne _0223FB5A
	mov r2, #0xff
	b _0223FB66
_0223FB5A:
	ldr r1, [r4, #0x18]
	lsl r0, r7, #2
	ldr r0, [r1, r0]
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	ldrb r2, [r0, r7]
_0223FB66:
	ldr r3, [r4, #0x2c]
	cmp r3, #0
	beq _0223FBB6
	ldr r1, [sp]
	add r0, r5, #0
	blx r3
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	cmp r0, r1
	beq _0223FBB6
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _0223FB88
	add r0, r5, #0
	add r1, r7, #0
	blx r2
_0223FB88:
	mov r0, #0xc6
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #4
	bl sub_020C4CF4
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov17_02252C9C
	cmp r6, #0
	ble _0223FBAE
	mov r0, #0xc7
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r5, r0]
	b _0223FBB6
_0223FBAE:
	mov r0, #0xc7
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r5, r0]
_0223FBB6:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FBBC: .word 0x02253558
	thumb_func_end ov17_0223FAF8

	thumb_func_start ov17_0223FBC0
ov17_0223FBC0: ; 0x0223FBC0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _0223FBD0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0223FBD0
	mov r0, #1
	bx lr
_0223FBD0:
	mov r0, #0
	bx lr
	thumb_func_end ov17_0223FBC0

	thumb_func_start ov17_0223FBD4
ov17_0223FBD4: ; 0x0223FBD4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r3, [r0, #0]
	add r1, r2, #1
	ldrb r0, [r3, r2]
	ldrb r1, [r3, r1]
	ldr r3, [r5, #0]
	add r2, #0x51
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r1, _0223FCA0 ; =0x0000011F
	ldr r2, [r0, #0]
	ldrb r0, [r2, r1]
	add r1, r1, #2
	ldrb r1, [r2, r1]
	bl sub_020958C4
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r1, r4, #0
	ldr r0, [r0, #0x38]
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	ldr r0, [r0, #0x38]
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, _0223FCA4 ; =0x00010200
	add r1, r5, #0
	str r0, [sp]
	mov r3, #0
	ldr r0, _0223FCA8 ; =0x000080F0
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x7f
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, #0x40
	add r2, r4, #0
	str r3, [sp, #0x18]
	bl ov17_02240138
	ldr r0, _0223FCA4 ; =0x00010200
	add r1, r5, #0
	str r0, [sp]
	mov r3, #0
	ldr r0, _0223FCA8 ; =0x000080F0
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x9f
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, #0x54
	add r2, r6, #0
	str r3, [sp, #0x18]
	bl ov17_02240138
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r2, [r5, #4]
	mov r0, #1
	str r0, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r2, #0]
	add r1, #0xff
	ldrb r0, [r0, r1]
	mov r1, #0x2d
	mov r3, #0x15
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r2, #0x50]
	mov r2, #0x26
	bl sub_02002FEC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_0223FCA0: .word 0x0000011F
_0223FCA4: .word 0x00010200
_0223FCA8: .word 0x000080F0
	thumb_func_end ov17_0223FBD4

	thumb_func_start ov17_0223FCAC
ov17_0223FCAC: ; 0x0223FCAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	add r5, r6, r0
	ldr r0, _0223FF18 ; =0x000002E1
	mov r1, #0xff
	strb r1, [r6, r0]
	add r0, r5, #0
	str r0, [sp, #0x24]
	add r0, #0x50
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r7, r6, #0
	str r0, [sp, #0x28]
	add r0, #0xa0
	mov r4, #0
	add r7, #0x40
	str r0, [sp, #0x28]
	b _0223FDF8
_0223FCD6:
	ldr r0, [r6, #4]
	ldr r1, _0223FF1C ; =0x00000123
	ldr r0, [r0, #0]
	mov r2, #0
	ldrb r1, [r0, r1]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r4, #0
	add r1, #0x36
	bl sub_02074470
	lsl r1, r4, #1
	add r2, sp, #0x3c
	strh r0, [r2, r1]
	add r0, r2, #0
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _0223FD04
	mov r0, #0x4b
	add r2, r5, r4
	lsl r0, r0, #2
	ldrb r2, [r2, r0]
	b _0223FD06
_0223FD04:
	mov r2, #0
_0223FD06:
	add r0, sp, #0x34
	strh r2, [r0, r1]
	ldr r0, _0223FF20 ; =0x00010708
	ldr r1, _0223FF24 ; =0x02253278
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FF28 ; =0x000080F0
	mov r2, #0
	str r0, [sp, #8]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	mov r3, #2
	str r1, [sp, #0xc]
	ldr r1, _0223FF24 ; =0x02253278
	add r0, r1, r0
	ldrh r0, [r0, #2]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	add r0, r5, r1
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r1, r7, r1
	bl ov17_02240138
	ldr r0, _0223FF2C ; =0x00010200
	ldr r1, _0223FF30 ; =0x02253314
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FF28 ; =0x000080F0
	add r2, r4, #4
	str r0, [sp, #8]
	lsl r0, r4, #3
	ldrh r1, [r1, r0]
	str r1, [sp, #0xc]
	ldr r1, _0223FF30 ; =0x02253314
	add r0, r1, r0
	ldrh r0, [r0, #2]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x24]
	add r0, r0, r1
	mov r1, #0x14
	mul r1, r2
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r1, r7, r1
	add r3, r2, #0
	bl ov17_02240138
	ldr r0, _0223FF2C ; =0x00010200
	add r2, r4, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FF28 ; =0x000080F0
	lsl r1, r4, #3
	str r0, [sp, #8]
	ldr r0, _0223FF30 ; =0x02253314
	add r2, #8
	add r1, r0, r1
	ldrh r0, [r1, #4]
	str r0, [sp, #0xc]
	ldrh r0, [r1, #6]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x28]
	add r0, r0, r1
	mov r1, #0x14
	mul r1, r2
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r1, r7, r1
	add r3, r2, #0
	bl ov17_02240138
	lsl r1, r4, #1
	add r0, sp, #0x3c
	ldrh r0, [r0, r1]
	cmp r0, #0
	bne _0223FDF6
	mov r0, #0x14
	mul r0, r4
	add r0, r6, r0
	ldr r0, [r0, #0x40]
	mov r1, #0
	bl sub_020129D0
	add r1, r4, #4
	mov r0, #0x14
	mul r0, r1
	add r0, r6, r0
	ldr r0, [r0, #0x40]
	mov r1, #0
	bl sub_020129D0
	add r1, r4, #0
	add r1, #8
	mov r0, #0x14
	mul r0, r1
	add r0, r6, r0
	ldr r0, [r0, #0x40]
	mov r1, #0
	bl sub_020129D0
_0223FDF6:
	add r4, r4, #1
_0223FDF8:
	cmp r4, #4
	bge _0223FDFE
	b _0223FCD6
_0223FDFE:
	mov r4, #0
	add r7, sp, #0x3c
	b _0223FE2C
_0223FE04:
	lsl r0, r4, #1
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _0223FE1E
	mov r0, #0x13
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	add r0, r6, #0
	add r2, r4, #0
	bl ov17_02240424
	b _0223FE2A
_0223FE1E:
	mov r1, #0
	add r0, r6, #0
	mvn r1, r1
	add r2, r4, #0
	bl ov17_02240424
_0223FE2A:
	add r4, r4, #1
_0223FE2C:
	cmp r4, #4
	blt _0223FE04
	mov r4, #0
	mov r7, #0x20
	add r5, sp, #0x3c
	b _0223FE7E
_0223FE38:
	lsl r0, r4, #1
	ldrh r2, [r5, r0]
	cmp r2, #0
	beq _0223FE7C
	ldr r1, [r6, #4]
	ldr r0, [r6, #8]
	ldr r3, [r1, #0]
	ldr r1, _0223FF1C ; =0x00000123
	ldrb r1, [r3, r1]
	bl ov17_02243A98
	cmp r0, #0
	bne _0223FE7C
	str r7, [sp]
	ldr r0, [r6, #4]
	mov r1, #1
	add r3, r4, #4
	lsl r3, r3, #0x14
	ldr r2, [r6, #0x38]
	lsl r1, r1, #8
	add r1, r2, r1
	ldr r0, [r0, #0x50]
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02002FBC
	ldr r0, _0223FF18 ; =0x000002E1
	ldrb r0, [r6, r0]
	cmp r0, #0xff
	beq _0223FE78
	bl sub_02022974
_0223FE78:
	ldr r0, _0223FF18 ; =0x000002E1
	strb r4, [r6, r0]
_0223FE7C:
	add r4, r4, #1
_0223FE7E:
	cmp r4, #4
	blt _0223FE38
	add r0, r6, #0
	add r1, sp, #0x3c
	bl ov17_022402E8
	mov r4, #0
	b _0223FF0E
_0223FE8E:
	lsl r1, r4, #1
	add r0, sp, #0x3c
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _0223FF0C
	add r0, sp, #0x34
	ldrh r0, [r0, r1]
	bl sub_02095734
	str r0, [sp, #0x20]
	cmp r0, #0
	bge _0223FEA8
	neg r0, r0
_0223FEA8:
	mov r1, #0xa
	bl sub_020E1F6C
	str r0, [sp, #0x1c]
	cmp r0, #6
	ble _0223FEB8
	bl sub_02022974
_0223FEB8:
	mov r0, #0x18
	mul r0, r4
	add r7, r6, r0
	lsl r0, r4, #3
	ldr r1, _0223FF34 ; =0x02253334
	str r0, [sp, #0x2c]
	add r0, r1, r0
	mov r5, #0
	str r0, [sp, #0x30]
	b _0223FF06
_0223FECC:
	lsl r0, r5, #2
	add r1, r7, r0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223FEDE
	bl sub_02022974
_0223FEDE:
	ldr r0, [sp, #0x20]
	ldr r3, _0223FF34 ; =0x02253334
	str r0, [sp]
	ldr r2, [sp, #0x2c]
	ldr r1, [r6, #4]
	ldr r3, [r3, r2]
	lsl r2, r5, #3
	add r2, r3, r2
	ldr r3, [sp, #0x30]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	ldr r3, [r3, #4]
	bl ov17_0224136C
	lsl r1, r5, #2
	add r2, r7, r1
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r5, r5, #1
_0223FF06:
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	blt _0223FECC
_0223FF0C:
	add r4, r4, #1
_0223FF0E:
	cmp r4, #4
	blt _0223FE8E
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0223FF18: .word 0x000002E1
_0223FF1C: .word 0x00000123
_0223FF20: .word 0x00010708
_0223FF24: .word 0x02253278
_0223FF28: .word 0x000080F0
_0223FF2C: .word 0x00010200
_0223FF30: .word 0x02253314
_0223FF34: .word 0x02253334
	thumb_func_end ov17_0223FCAC

	thumb_func_start ov17_0223FF38
ov17_0223FF38: ; 0x0223FF38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	add r6, r5, r0
	add r7, r5, #0
	mov r4, #0
	add r6, #0xf0
	add r7, #0x40
	b _0223FF86
_0223FF4E:
	ldr r0, _0223FFE4 ; =0x0001090A
	ldr r1, _0223FFE8 ; =0x0225325C
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FFEC ; =0x000080F0
	mov r2, #0
	str r0, [sp, #8]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	mov r3, #2
	str r1, [sp, #0xc]
	ldr r1, _0223FFE8 ; =0x0225325C
	add r0, r1, r0
	ldrh r0, [r0, #2]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	add r0, r6, r1
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, r1
	bl ov17_02240138
	add r4, r4, #1
_0223FF86:
	cmp r4, #3
	blt _0223FF4E
	ldr r0, [r5, #4]
	mov r1, #0x35
	ldr r0, [r0, #0x38]
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, _0223FFE4 ; =0x0001090A
	ldr r1, _0223FFEC ; =0x000080F0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x80
	str r1, [sp, #0xc]
	mov r1, #0xa4
	str r1, [sp, #0x10]
	mov r1, #1
	str r1, [sp, #0x14]
	add r2, r5, #0
	mov r1, #0x14
	str r0, [sp, #0x18]
	add r2, #0x40
	mul r1, r4
	add r1, r2, r1
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #2
	bl ov17_02240138
	add r0, r6, #0
	bl sub_020237BC
	ldr r2, [r5, #4]
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	ldr r3, [r2, #0]
	ldr r2, _0223FFF0 ; =0x0000011E
	ldrb r2, [r3, r2]
	bl ov17_022412C0
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FFE4: .word 0x0001090A
_0223FFE8: .word 0x0225325C
_0223FFEC: .word 0x000080F0
_0223FFF0: .word 0x0000011E
	thumb_func_end ov17_0223FF38

	thumb_func_start ov17_0223FFF4
ov17_0223FFF4: ; 0x0223FFF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #1
	str r2, [sp]
	cmp r0, #4
	bhi _02240018
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224000E: ; jump table
	.short _02240018 - _0224000E - 2 ; case 0
	.short _0224001E - _0224000E - 2 ; case 1
	.short _0224001E - _0224000E - 2 ; case 2
	.short _0224001E - _0224000E - 2 ; case 3
	.short _0224001E - _0224000E - 2 ; case 4
_02240018:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0224001E:
	ldr r0, [r4, #4]
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02240080 ; =0x00000123
	ldrb r0, [r1, r0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r1, #0x36
	bl sub_02074470
	cmp r0, #0
	beq _02240040
	ldr r0, _02240084 ; =0x000002E1
	ldrb r0, [r4, r0]
	cmp r0, r5
	bne _02240046
_02240040:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02240046:
	mov r0, #6
	ldr r1, _02240088 ; =0x022532E4
	mul r0, r5
	add r7, r1, r0
	ldr r1, _0224008C ; =0x02253388
	lsl r0, r5, #4
	add r6, r1, r0
	ldr r1, [sp]
	add r0, r4, #0
	bl ov17_02240930
	ldr r0, _02240090 ; =ov17_02240658
	add r1, r4, #0
	bl ov17_022404CC
	mov r1, #0xbd
	lsl r1, r1, #2
	str r7, [r4, r1]
	add r0, r1, #4
	str r6, [r4, r0]
	add r0, r1, #0
	mov r2, #2
	add r0, #0xc
	strb r2, [r4, r0]
	add r1, #8
	str r5, [r4, r1]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240080: .word 0x00000123
_02240084: .word 0x000002E1
_02240088: .word 0x022532E4
_0224008C: .word 0x02253388
_02240090: .word ov17_02240658
	thumb_func_end ov17_0223FFF4

	thumb_func_start ov17_02240094
ov17_02240094: ; 0x02240094
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #1
	cmp r0, #4
	bhi _022400B6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022400AC: ; jump table
	.short _022400B6 - _022400AC - 2 ; case 0
	.short _022400BA - _022400AC - 2 ; case 1
	.short _022400BE - _022400AC - 2 ; case 2
	.short _022400C2 - _022400AC - 2 ; case 3
	.short _022400C6 - _022400AC - 2 ; case 4
_022400B6:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022400BA:
	mov r6, #0
	b _022400C8
_022400BE:
	mov r6, #1
	b _022400C8
_022400C2:
	mov r6, #2
	b _022400C8
_022400C6:
	mov r6, #3
_022400C8:
	ldr r0, [r4, #4]
	ldr r1, [r0, #0]
	ldr r0, _02240128 ; =0x0000011E
	ldrb r0, [r1, r0]
	cmp r5, r0
	bne _022400D8
	mov r7, #1
	b _022400DA
_022400D8:
	mov r7, #0
_022400DA:
	add r0, r4, #0
	add r1, r2, #0
	bl ov17_02240930
	ldr r0, _0224012C ; =ov17_0224051C
	add r1, r4, #0
	bl ov17_022404CC
	mov r0, #6
	ldr r1, _02240130 ; =0x022532FC
	mul r0, r5
	add r0, r1, r0
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, _02240134 ; =0x022533C8
	lsl r0, r5, #4
	add r2, r2, r0
	add r0, r1, #4
	str r2, [r4, r0]
	mov r2, #3
	lsl r0, r2, #8
	strb r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r5, [r4, r0]
	add r0, r1, #0
	add r0, #0xd
	strb r6, [r4, r0]
	cmp r7, #1
	bne _02240122
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	sub r1, #0xc
	str r0, [r4, r1]
_02240122:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240128: .word 0x0000011E
_0224012C: .word ov17_0224051C
_02240130: .word 0x022532FC
_02240134: .word 0x022533C8
	thumb_func_end ov17_02240094

	thumb_func_start ov17_02240138
ov17_02240138: ; 0x02240138
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x9c]
	ldr r4, [sp, #0xa8]
	cmp r0, #0
	beq _02240152
	bl sub_02022974
_02240152:
	ldr r1, [r7, #4]
	cmp r4, #0
	ldr r0, [r1, #0x24]
	str r0, [sp, #0x24]
	ldr r0, [r1, #0x1c]
	str r0, [sp, #0x20]
	bne _0224016E
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl ov17_02240C60
	b _02240176
_0224016E:
	ldrh r0, [r4, #0x12]
	str r0, [sp, #0x2c]
	ldrh r0, [r4, #0x10]
	str r0, [sp, #0x28]
_02240176:
	cmp r4, #0
	bne _022401B4
	add r0, sp, #0x3c
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x24]
	lsl r2, r2, #0x18
	add r1, sp, #0x3c
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r0, sp, #0x3c
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	b _022401C0
_022401B4:
	add r3, r4, #0
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
_022401C0:
	add r0, sp, #0x3c
	mov r1, #2
	mov r2, #0x15
	bl sub_02012898
	mov r1, #1
	mov r2, #2
	add r3, sp, #0x30
	bl sub_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _022401E4
	ldr r1, [sp, #0x2c]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r6, r6, r0
_022401E4:
	ldr r0, [r7, #0x3c]
	str r0, [sp, #0x4c]
	add r0, sp, #0x3c
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x20]
	bl sub_0200D9B0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x98]
	bl sub_0200D04C
	str r0, [sp, #0x58]
	mov r0, #0
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x6c]
	mov r0, #0x64
	str r1, [sp, #0x60]
	mov r1, #0x42
	str r0, [sp, #0x70]
	mov r0, #2
	str r0, [sp, #0x74]
	mov r0, #0x15
	str r0, [sp, #0x78]
	ldr r2, [sp, #0xa0]
	lsl r1, r1, #2
	add r1, r2, r1
	add r0, sp, #0x4c
	str r6, [sp, #0x64]
	str r1, [sp, #0x68]
	bl sub_020127E8
	ldr r1, [sp, #0x94]
	add r7, r0, #0
	bl sub_02012AC0
	mov r2, #0x42
	ldr r3, [sp, #0xa0]
	lsl r2, r2, #2
	add r0, r7, #0
	add r1, r6, #0
	add r2, r3, r2
	bl sub_020128C4
	cmp r4, #0
	bne _02240248
	add r0, sp, #0x3c
	bl sub_0201A8FC
_02240248:
	str r7, [r5, #0]
	add r3, sp, #0x30
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x2c]
	strh r0, [r5, #0x10]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02240138

	thumb_func_start ov17_02240260
ov17_02240260: ; 0x02240260
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	add r4, #0x44
	add r7, r6, #0
_0224026C:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0224027E
	bl sub_02012870
	add r0, r4, #0
	bl sub_0201EE28
	str r7, [r5, #0x40]
_0224027E:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #0xc
	blt _0224026C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02240260

	thumb_func_start ov17_0224028C
ov17_0224028C: ; 0x0224028C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022402A6
	bl ov17_02241314
	mov r0, #5
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
_022402A6:
	pop {r4, pc}
	thumb_func_end ov17_0224028C

	thumb_func_start ov17_022402A8
ov17_022402A8: ; 0x022402A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	mov r7, #0x51
	str r0, [sp, #4]
	add r6, r0, #0
	lsl r7, r7, #2
_022402B8:
	ldr r5, [sp]
	mov r4, #0
_022402BC:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022402CC
	bl ov17_022413AC
	mov r0, #0x51
	lsl r0, r0, #2
	str r6, [r5, r0]
_022402CC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _022402BC
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _022402B8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022402A8

	thumb_func_start ov17_022402E8
ov17_022402E8: ; 0x022402E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5, #4]
	ldr r4, _0224037C ; =0x02253354
	ldr r0, [r1, #0x18]
	add r3, sp, #8
	str r0, [sp, #4]
	ldr r0, [r1, #0x1c]
	mov r2, #6
	str r0, [sp]
_02240300:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02240300
	ldr r0, [r4, #0]
	mov r4, #0
	str r0, [r3, #0]
	add r6, sp, #8
	b _02240374
_02240312:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02240324
	bl sub_02022974
_02240324:
	lsl r0, r4, #1
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _02240372
	mov r0, #0xb5
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r2, [r1, r0]
	ldr r0, _02240380 ; =0x000080F6
	ldr r1, _02240384 ; =0x02253298
	add r0, r4, r0
	str r0, [sp, #0x1c]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	add r3, sp, #8
	strh r1, [r6]
	ldr r1, _02240384 ; =0x02253298
	add r0, r1, r0
	ldrh r0, [r0, #2]
	ldr r1, [sp]
	strh r0, [r6, #2]
	ldr r0, [sp, #4]
	bl ov17_0224F154
	lsl r1, r4, #2
	mov r2, #0x13
	mov r3, #0x11
	add r1, r5, r1
	lsl r2, r2, #4
	str r0, [r1, r2]
	add r0, r2, #0
	ldr r0, [r1, r0]
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	lsl r3, r3, #0x10
	bl sub_0200D500
_02240372:
	add r4, r4, #1
_02240374:
	cmp r4, #4
	blt _02240312
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224037C: .word 0x02253354
_02240380: .word 0x000080F6
_02240384: .word 0x02253298
	thumb_func_end ov17_022402E8

	thumb_func_start ov17_02240388
ov17_02240388: ; 0x02240388
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x13
	add r5, r0, #0
	add r6, r4, #0
	lsl r7, r7, #4
_02240394:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022403A4
	bl ov17_0224F184
	mov r0, #0x13
	lsl r0, r0, #4
	str r6, [r5, r0]
_022403A4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02240394
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02240388

	thumb_func_start ov17_022403B0
ov17_022403B0: ; 0x022403B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	ldr r0, [r0, #0x24]
	add r7, r3, #0
	mov r1, #4
	add r4, r2, #0
	str r0, [sp, #4]
	bl sub_02019FE4
	mov ip, r0
	lsl r0, r7, #2
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	ldr r7, [r4, #0]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #1
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #4]
	cmp r7, r0
	bgt _02240416
	lsl r6, r7, #5
_022403E2:
	lsl r2, r6, #1
	mov r0, ip
	add r5, r0, r2
	ldr r0, [sp]
	ldr r3, [r4, #0xc]
	add r2, r0, r2
	ldr r0, [r4, #8]
	cmp r0, r3
	bgt _0224040C
	lsl r3, r0, #1
	add r2, r2, r3
	add r3, r5, r3
_022403FA:
	ldrh r5, [r2]
	add r0, r0, #1
	add r2, r2, #2
	add r5, r1, r5
	strh r5, [r3]
	ldr r5, [r4, #0xc]
	add r3, r3, #2
	cmp r0, r5
	ble _022403FA
_0224040C:
	ldr r0, [r4, #4]
	add r7, r7, #1
	add r6, #0x20
	cmp r7, r0
	ble _022403E2
_02240416:
	ldr r0, [sp, #4]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_022403B0

	thumb_func_start ov17_02240424
ov17_02240424: ; 0x02240424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, _0224049C ; =0x022532BC
	add r5, r2, #0
	add r4, r0, #0
	add r3, r1, #0
	add r2, sp, #4
	ldmia r6!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r2, #0]
	mov r0, #0
	mvn r0, r0
	cmp r3, r0
	beq _02240464
	mov r0, #0x20
	str r0, [sp]
	lsl r1, r3, #2
	ldr r0, [r4, #4]
	add r3, r5, #4
	lsl r3, r3, #0x14
	ldr r0, [r0, #0x50]
	ldr r1, [r7, r1]
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02002FBC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02240464:
	ldr r2, _022404A0 ; =0x02253248
	lsl r1, r5, #1
	mov r0, #0
	add r1, r2, r1
	str r0, [sp]
	ldr r3, _022404A4 ; =0x02253408
	lsl r2, r5, #4
	add r2, r3, r2
	add r0, r4, #0
	mov r3, #2
	bl ov17_022403B0
	mov r2, #0x20
	str r2, [sp]
	ldr r0, [r4, #4]
	add r3, r5, #4
	lsl r3, r3, #0x14
	ldr r1, [r4, #0x38]
	add r2, #0xe0
	add r1, r1, r2
	ldr r0, [r0, #0x50]
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02002FBC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224049C: .word 0x022532BC
_022404A0: .word 0x02253248
_022404A4: .word 0x02253408
	thumb_func_end ov17_02240424

	thumb_func_start ov17_022404A8
ov17_022404A8: ; 0x022404A8
	ldr r3, _022404AC ; =ov17_022404B0
	bx r3
	; .align 2, 0
_022404AC: .word ov17_022404B0
	thumb_func_end ov17_022404A8

	thumb_func_start ov17_022404B0
ov17_022404B0: ; 0x022404B0
	push {r4, lr}
	add r4, r0, #0
	bl ov17_0224028C
	add r0, r4, #0
	bl ov17_022402A8
	add r0, r4, #0
	bl ov17_02240388
	add r0, r4, #0
	bl ov17_02240260
	pop {r4, pc}
	thumb_func_end ov17_022404B0

	thumb_func_start ov17_022404CC
ov17_022404CC: ; 0x022404CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022404DC
	bl sub_02022974
_022404DC:
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C4CF4
	ldr r2, _022404F8 ; =0x00000514
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022404F8: .word 0x00000514
	thumb_func_end ov17_022404CC

	thumb_func_start ov17_022404FC
ov17_022404FC: ; 0x022404FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224051A
	bl sub_0200DA58
	mov r0, #0xb9
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x20
	str r1, [r4, #0x10]
	bl sub_020C4CF4
_0224051A:
	pop {r4, pc}
	thumb_func_end ov17_022404FC

	thumb_func_start ov17_0224051C
ov17_0224051C: ; 0x0224051C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r3, #0xb9
	add r5, r1, #0
	lsl r3, r3, #2
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _02240536
	cmp r0, #1
	beq _022405A8
	cmp r0, #2
	beq _022405C4
	b _02240634
_02240536:
	mov r0, #2
	str r0, [sp]
	add r1, r3, #0
	add r2, r3, #0
	add r3, #0x1c
	add r1, #0x10
	add r2, #0x14
	ldrb r3, [r5, r3]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ov17_022403B0
	ldr r0, _02240654 ; =0x00000301
	add r2, sp, #4
	ldrb r1, [r5, r0]
	mov r0, #0x14
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	add r1, sp, #8
	bl sub_020129A4
	ldr r0, _02240654 ; =0x00000301
	ldr r2, [sp, #4]
	ldrb r1, [r5, r0]
	mov r0, #0x14
	sub r2, r2, #2
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	ldr r1, [sp, #8]
	bl sub_020128C4
	mov r7, #0xba
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_02240582:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02240592
	mov r1, #0
	ldr r0, [r0, #0]
	sub r2, r1, #2
	bl sub_0200D5AC
_02240592:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02240582
	mov r0, #0xb9
	lsl r0, r0, #2
	ldrsh r1, [r5, r0]
	add sp, #0xc
	add r1, r1, #1
	strh r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_022405A8:
	add r0, r3, #2
	ldrsh r0, [r5, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02240650
	mov r1, #0
	add r0, r3, #2
	strh r1, [r5, r0]
	ldrsh r0, [r5, r3]
	add r0, r0, #1
	strh r0, [r5, r3]
_022405C4:
	mov r0, #1
	mov r3, #0xbd
	str r0, [sp]
	lsl r3, r3, #2
	add r2, r3, #4
	ldr r1, [r5, r3]
	add r3, #0xc
	ldrb r3, [r5, r3]
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ov17_022403B0
	ldr r0, _02240654 ; =0x00000301
	add r2, sp, #4
	ldrb r1, [r5, r0]
	mov r0, #0x14
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	add r1, sp, #8
	bl sub_020129A4
	ldr r0, _02240654 ; =0x00000301
	ldr r2, [sp, #4]
	ldrb r1, [r5, r0]
	mov r0, #0x14
	add r2, r2, #1
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	ldr r1, [sp, #8]
	bl sub_020128C4
	mov r7, #0xba
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0224060E:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0224061E
	ldr r0, [r0, #0]
	mov r1, #0
	mov r2, #1
	bl sub_0200D5AC
_0224061E:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _0224060E
	mov r0, #0xb9
	lsl r0, r0, #2
	ldrsh r1, [r5, r0]
	add sp, #0xc
	add r1, r1, #1
	strh r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_02240634:
	add r0, r3, #2
	ldrsh r0, [r5, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02240650
	add r0, r5, #0
	bl ov17_022404A8
	add r0, r5, #0
	bl ov17_022404FC
_02240650:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02240654: .word 0x00000301
	thumb_func_end ov17_0224051C

	thumb_func_start ov17_02240658
ov17_02240658: ; 0x02240658
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r7, _022408DC ; =0x00000123
	add r4, r1, #0
	mov r6, #0
	add r5, sp, #0x20
_02240664:
	ldr r0, [r4, #4]
	mov r2, #0
	ldr r0, [r0, #0]
	ldrb r1, [r0, r7]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r6, #0
	add r1, #0x36
	bl sub_02074470
	strh r0, [r5]
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #4
	blt _02240664
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _022406E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02240698: ; jump table
	.short _022406A0 - _02240698 - 2 ; case 0
	.short _022406B2 - _02240698 - 2 ; case 1
	.short _022406C4 - _02240698 - 2 ; case 2
	.short _022406D6 - _02240698 - 2 ; case 3
_022406A0:
	mov r0, #8
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0]
	mov r5, #0
	mov r6, #4
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406B2:
	mov r0, #9
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0, #2]
	mov r5, #1
	mov r6, #5
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406C4:
	mov r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0, #4]
	mov r5, #2
	mov r6, #6
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406D6:
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0, #6]
	mov r5, #3
	mov r6, #7
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406E8:
	mov r5, #0
	add r6, r5, #0
	str r5, [sp, #0xc]
	str r5, [sp, #8]
_022406F0:
	mov r3, #0xb9
	lsl r3, r3, #2
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _02240704
	cmp r0, #1
	beq _022407D2
	cmp r0, #2
	beq _022407EE
	b _022408BA
_02240704:
	mov r0, #2
	str r0, [sp]
	add r1, r3, #0
	add r2, r3, #0
	add r3, #0x1c
	add r1, #0x10
	add r2, #0x14
	ldrb r3, [r4, r3]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov17_022403B0
	add r7, r4, #0
	mov r0, #0x14
	mul r0, r5
	add r7, #0x40
	str r0, [sp, #0x10]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	sub r2, r2, #2
	bl sub_020128C4
	add r7, r4, #0
	mov r0, #0x14
	mul r0, r6
	add r7, #0x40
	str r0, [sp, #0x14]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	sub r2, r2, #2
	bl sub_020128C4
	ldr r0, [sp, #0xc]
	add r6, r4, #0
	mov r1, #0x14
	add r7, r0, #0
	mul r7, r1
	add r6, #0x40
	ldr r0, [r6, r7]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r2, [sp, #0x28]
	ldr r0, [r6, r7]
	ldr r1, [sp, #0x2c]
	sub r2, r2, #2
	bl sub_020128C4
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022407C4
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	ldr r0, [r0, #0]
	sub r2, r1, #2
	bl sub_0200D5AC
	mov r7, #0x51
	ldr r0, [sp, #4]
	mov r1, #0x18
	mul r1, r0
	mov r6, #0
	add r5, r4, r1
	lsl r7, r7, #2
_022407AC:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022407BC
	mov r1, #0
	ldr r0, [r0, #0]
	sub r2, r1, #2
	bl sub_0200D5AC
_022407BC:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _022407AC
_022407C4:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	add sp, #0x30
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_022407D2:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _022408D6
	mov r1, #0
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r3]
	add r0, r0, #1
	strh r0, [r4, r3]
_022407EE:
	mov r0, #1
	mov r3, #0xbd
	str r0, [sp]
	lsl r3, r3, #2
	add r2, r3, #4
	ldr r1, [r4, r3]
	add r3, #0xc
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov17_022403B0
	add r7, r4, #0
	mov r0, #0x14
	mul r0, r5
	add r7, #0x40
	str r0, [sp, #0x18]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	add r2, r2, #1
	bl sub_020128C4
	add r7, r4, #0
	mov r0, #0x14
	mul r0, r6
	add r7, #0x40
	str r0, [sp, #0x1c]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	add r2, r2, #1
	bl sub_020128C4
	ldr r0, [sp, #0xc]
	add r6, r4, #0
	mov r1, #0x14
	add r7, r0, #0
	mul r7, r1
	add r6, #0x40
	ldr r0, [r6, r7]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r2, [sp, #0x28]
	ldr r0, [r6, r7]
	ldr r1, [sp, #0x2c]
	add r2, r2, #1
	bl sub_020128C4
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022408AC
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #1
	bl sub_0200D5AC
	mov r7, #0x51
	ldr r0, [sp, #4]
	mov r1, #0x18
	mul r1, r0
	mov r6, #0
	add r5, r4, r1
	lsl r7, r7, #2
_02240894:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022408A4
	ldr r0, [r0, #0]
	mov r1, #0
	mov r2, #1
	bl sub_0200D5AC
_022408A4:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _02240894
_022408AC:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	add sp, #0x30
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_022408BA:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _022408D6
	add r0, r4, #0
	bl ov17_022404A8
	add r0, r4, #0
	bl ov17_022404FC
_022408D6:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022408DC: .word 0x00000123
	thumb_func_end ov17_02240658

	thumb_func_start ov17_022408E0
ov17_022408E0: ; 0x022408E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _022408F0
	bl sub_02022974
_022408F0:
	mov r0, #0xc1
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	ldr r2, _0224090C ; =0x00000528
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224090C: .word 0x00000528
	thumb_func_end ov17_022408E0

	thumb_func_start ov17_02240910
ov17_02240910: ; 0x02240910
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0224092E
	bl sub_0200DA58
	mov r0, #0xc1
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xc
	str r1, [r4, #0x14]
	bl sub_020C4CF4
_0224092E:
	pop {r4, pc}
	thumb_func_end ov17_02240910

	thumb_func_start ov17_02240930
ov17_02240930: ; 0x02240930
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xff
	beq _02240946
	ldr r0, _02240948 ; =ov17_02240950
	add r1, r5, #0
	bl ov17_022408E0
	ldr r0, _0224094C ; =0x0000030D
	strb r4, [r5, r0]
_02240946:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02240948: .word ov17_02240950
_0224094C: .word 0x0000030D
	thumb_func_end ov17_02240930

	thumb_func_start ov17_02240950
ov17_02240950: ; 0x02240950
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r0, #0xc1
	add r5, r1, #0
	lsl r0, r0, #2
	add r2, r5, r0
	ldr r0, [r5, #4]
	mov r4, #0
	ldr r3, [r0, #0x50]
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _02240970
	cmp r0, #1
	beq _0224098C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02240970:
	mov r0, #0xa
	lsl r0, r0, #8
	strh r0, [r2, #4]
	ldr r0, _022409EC ; =0xFFFFFB00
	strh r0, [r2, #6]
	mov r0, #4
	ldrsh r1, [r2, r0]
	mov r0, #6
	ldrsh r0, [r2, r0]
	sub r0, r1, r0
	strh r0, [r2, #4]
	ldrb r0, [r2, #8]
	add r0, r0, #1
	strb r0, [r2, #8]
_0224098C:
	mov r7, #4
	mov r6, #6
	ldrsh r1, [r2, r7]
	ldrsh r0, [r2, r6]
	add r0, r1, r0
	strh r0, [r2, #4]
	ldrsh r6, [r2, r6]
	cmp r6, #0
	blt _022409AC
	ldrsh r1, [r2, r7]
	lsl r0, r7, #0xa
	cmp r1, r0
	blt _022409AC
	strh r0, [r2, #4]
	mov r4, #1
	b _022409BE
_022409AC:
	cmp r6, #0
	bge _022409BE
	mov r0, #4
	ldrsh r0, [r2, r0]
	cmp r0, #0
	bgt _022409BE
	mov r0, #0
	strh r0, [r2, #4]
	mov r4, #1
_022409BE:
	mov r0, #4
	ldrsh r0, [r2, r0]
	mov r1, #1
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _022409F0 ; =0x00007FFF
	str r0, [sp, #4]
	ldrb r2, [r2, #9]
	add r0, r3, #0
	mov r3, #0x10
	lsl r2, r2, #0x14
	lsr r2, r2, #0x10
	bl sub_020039B0
	cmp r4, #1
	bne _022409E8
	add r0, r5, #0
	bl ov17_02240910
_022409E8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022409EC: .word 0xFFFFFB00
_022409F0: .word 0x00007FFF
	thumb_func_end ov17_02240950

	thumb_func_start ov17_022409F4
ov17_022409F4: ; 0x022409F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x69
	add r5, r0, #0
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp, #4]
	add r0, r5, r1
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x50
	add r1, #0xa0
	add r4, r5, #0
	add r7, r5, r0
	add r6, r5, r1
_02240A12:
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02240A22
	ldr r0, [sp]
	bl sub_0201A8FC
_02240A22:
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02240A32
	add r0, r7, #0
	bl sub_0201A8FC
_02240A32:
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02240A42
	add r0, r6, #0
	bl sub_0201A8FC
_02240A42:
	ldr r0, [sp]
	add r4, #0x14
	add r0, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	add r7, #0x14
	add r0, r0, #1
	add r6, #0x14
	str r0, [sp, #4]
	cmp r0, #4
	blt _02240A12
	mov r0, #0xa5
	lsl r0, r0, #2
	add r7, r0, #0
	mov r6, #0
	add r4, r5, r0
	add r7, #0xc
_02240A64:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02240A70
	add r0, r4, #0
	bl sub_0201A8FC
_02240A70:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #3
	blt _02240A64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_022409F4

	thumb_func_start ov17_02240A80
ov17_02240A80: ; 0x02240A80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	add r6, r5, r0
	mov r0, #0
	str r0, [sp, #0x20]
	add r0, r6, #0
	str r0, [sp, #0x18]
	add r0, #0x50
	str r0, [sp, #0x18]
	add r0, r6, #0
	str r0, [sp, #0x14]
	add r0, #0xa0
	add r7, r1, #0
	str r6, [sp, #0x1c]
	str r0, [sp, #0x14]
_02240AA4:
	ldrh r0, [r7]
	cmp r0, #0
	beq _02240ACA
	ldr r1, [sp, #0x20]
	add r4, r6, r1
	mov r1, #0xa
	bl sub_020790C4
	mov r1, #0x4b
	lsl r1, r1, #2
	strb r0, [r4, r1]
	ldrh r0, [r7]
	mov r1, #0xb
	bl sub_020790C4
	mov r1, #0x13
	lsl r1, r1, #4
	strb r0, [r4, r1]
	b _02240ADA
_02240ACA:
	ldr r0, [sp, #0x20]
	mov r1, #0
	add r4, r6, r0
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r1, [r4, r0]
	add r0, r0, #4
	strb r1, [r4, r0]
_02240ADA:
	ldrh r0, [r7]
	mov r1, #0x15
	bl sub_0200B2EC
	str r0, [sp, #0x24]
	ldr r0, _02240BE4 ; =0x00010708
	ldr r1, [sp, #0x24]
	str r0, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	mov r2, #2
	bl ov17_02240BF4
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r1, sp, #0x34
	add r2, sp, #0x30
	bl sub_02095750
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x34]
	ldr r0, [r0, #0x40]
	bl sub_0200B1EC
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x30]
	ldr r0, [r0, #0x40]
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, _02240BE8 ; =0x00010200
	ldr r1, [sp, #0x28]
	str r0, [sp]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	mov r2, #0
	bl ov17_02240BF4
	ldr r0, _02240BE8 ; =0x00010200
	ldr r3, [sp, #0x14]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov17_02240BF4
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	add r7, r7, #2
	add r0, #0x14
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, #0x14
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #4
	blt _02240AA4
	mov r7, #0
	add r4, r7, #0
	add r6, #0xf0
_02240B70:
	ldr r0, [r5, #4]
	mov r1, #0x15
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0xd0
	ldrh r0, [r0]
	bl ov17_0223F310
	str r0, [sp, #0x2c]
	ldr r0, _02240BEC ; =0x0001090A
	ldr r1, [sp, #0x2c]
	str r0, [sp]
	add r0, r5, #0
	mov r2, #2
	add r3, r6, #0
	bl ov17_02240BF4
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	add r7, r7, #1
	add r4, #8
	add r6, #0x14
	cmp r7, #3
	blt _02240B70
	ldr r3, _02240BF0 ; =0x000080F1
	ldr r2, [r5, #4]
	add r0, r3, #7
	str r3, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x50]
	add r3, #0xc
	bl ov17_02252AB0
	ldr r3, _02240BF0 ; =0x000080F1
	ldr r1, [r5, #4]
	add r0, r3, #7
	str r3, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	mov r2, #0x15
	add r3, #0xc
	bl ov17_02252B48
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240BE4: .word 0x00010708
_02240BE8: .word 0x00010200
_02240BEC: .word 0x0001090A
_02240BF0: .word 0x000080F1
	thumb_func_end ov17_02240A80

	thumb_func_start ov17_02240BF4
ov17_02240BF4: ; 0x02240BF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r2, #0
	add r6, r1, #0
	add r5, r0, #0
	add r4, r3, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x1c
	add r3, sp, #0x18
	bl ov17_02240C60
	ldr r0, [sp, #0x1c]
	strh r0, [r4, #0x12]
	ldr r0, [sp, #0x18]
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02240C20
	add r0, r4, #0
	bl sub_0201A8FC
_02240C20:
	add r0, r4, #0
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x18]
	ldr r0, [r0, #0x24]
	lsl r2, r2, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r1, r7, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	add r0, r4, #0
	add r2, r6, #0
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02240BF4

	thumb_func_start ov17_02240C60
ov17_02240C60: ; 0x02240C60
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	add r1, r4, #0
	mov r2, #0
	add r7, r3, #0
	bl sub_02002D7C
	add r4, r0, #0
	asr r1, r4, #2
	lsr r1, r1, #0x1d
	add r1, r4, r1
	asr r5, r1, #3
	mov r1, #8
	bl sub_020BD140
	cmp r0, #0
	beq _02240C88
	add r5, r5, #1
_02240C88:
	str r4, [r6, #0]
	str r5, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02240C60

	thumb_func_start ov17_02240C90
ov17_02240C90: ; 0x02240C90
	push {r4, r5, r6, lr}
	mov r6, #0xc6
	lsl r6, r6, #2
	add r2, r6, #0
	add r5, r0, #0
	sub r2, #0x38
	ldrsb r2, [r5, r2]
	ldr r1, _02240CF4 ; =0x02253558
	mov r3, #0x30
	add r4, r2, #0
	mul r4, r3
	add r4, r1, r4
	ldr r2, [r4, #0x20]
	cmp r2, #0
	bne _02240CB4
	sub r3, #0x31
	add r0, r3, #0
	pop {r4, r5, r6, pc}
_02240CB4:
	ldrb r1, [r5, r6]
	cmp r1, #0
	bne _02240CEE
	add r0, r6, #4
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _02240CCC
	ldr r1, _02240CF8 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	ldr r1, _02240CFC ; =0x00000CF3
	tst r1, r2
	beq _02240CE8
_02240CCC:
	cmp r0, #0
	bne _02240CD6
	ldr r0, _02240D00 ; =0x000005DC
	bl sub_02005748
_02240CD6:
	mov r1, #1
	mov r0, #0xc7
	strb r1, [r5, r6]
	mov r2, #0
	lsl r0, r0, #2
	strb r2, [r5, r0]
	ldr r2, [r4, #0x20]
	add r0, r5, #0
	blx r2
_02240CE8:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02240CEE:
	mov r1, #0
	blx r2
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02240CF4: .word 0x02253558
_02240CF8: .word 0x021BF67C
_02240CFC: .word 0x00000CF3
_02240D00: .word 0x000005DC
	thumb_func_end ov17_02240C90

	thumb_func_start ov17_02240D04
ov17_02240D04: ; 0x02240D04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #8]
	mov r1, #0x31
	add r5, r0, #0
	lsl r1, r1, #4
	add r0, r5, r1
	str r0, [sp, #0xc]
	add r0, r1, #0
	sub r1, #0x30
	add r0, #8
	add r6, r5, r0
	ldrsb r1, [r5, r1]
	mov r0, #0x30
	ldr r2, _02240E5C ; =0x02253558
	mul r0, r1
	add r7, r2, r0
	mov r4, #0
	b _02240D48
_02240D2A:
	ldr r0, [r5, #4]
	ldr r1, _02240E60 ; =0x00000123
	ldr r0, [r0, #0]
	mov r2, #0
	ldrb r1, [r0, r1]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r4, #0
	add r1, #0x36
	bl sub_02074470
	lsl r2, r4, #1
	add r1, sp, #0x10
	strh r0, [r1, r2]
	add r4, r4, #1
_02240D48:
	cmp r4, #4
	blt _02240D2A
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _02240DC6
	ldr r0, [sp, #0xc]
	mov r1, #0
	ldrsb r0, [r0, r1]
	mov r4, #1
	strb r0, [r6, #2]
	ldr r0, [sp, #0xc]
	ldrsb r0, [r0, r4]
	strb r0, [r6, #1]
	ldrsb r0, [r6, r4]
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r2, [r6, r0]
	ldr r0, _02240E64 ; =0x0225323C
	add r0, r0, r3
	ldrb r3, [r2, r0]
	add r0, sp, #0x10
	lsl r2, r3, #1
	ldrh r0, [r0, r2]
	cmp r0, #0
	bne _02240D92
	ldr r0, [sp, #0xc]
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r6, #2]
	strb r1, [r6, #1]
	ldrsb r0, [r6, r4]
	lsl r2, r0, #1
	mov r0, #2
	ldrsb r1, [r6, r0]
	ldr r0, _02240E64 ; =0x0225323C
	add r0, r0, r2
	ldrb r3, [r1, r0]
_02240D92:
	ldr r0, [r7, #0x14]
	lsl r3, r3, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r7, #0x14]
	mov r0, #0xc5
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov17_02252C78
	mov r0, #0
	add sp, #0x1c
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02240DC6:
	ldr r0, _02240E64 ; =0x0225323C
	add r1, sp, #0x18
	mov r2, #4
	bl sub_020C4DB0
	mov r1, #2
	add r0, r6, #0
	add r2, r1, #0
	add r3, sp, #0x18
	bl ov17_02241004
	cmp r0, #0x20
	bhi _02240DF6
	bhs _02240E02
	cmp r0, #2
	bhi _02240DF0
	cmp r0, #1
	blo _02240E54
	beq _02240E40
	cmp r0, #2
	b _02240E54
_02240DF0:
	cmp r0, #0x10
	beq _02240E02
	b _02240E54
_02240DF6:
	cmp r0, #0x40
	bhi _02240DFE
	beq _02240E02
	b _02240E54
_02240DFE:
	cmp r0, #0x80
	bne _02240E54
_02240E02:
	mov r0, #1
	ldrsb r0, [r6, r0]
	ldr r2, _02240E64 ; =0x0225323C
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r6, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r7, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r7, #0x14]
	mov r0, #0xc5
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov17_02252C78
	b _02240E54
_02240E40:
	mov r0, #1
	ldrsb r0, [r6, r0]
	ldr r2, _02240E64 ; =0x0225323C
	add sp, #0x1c
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r6, r0]
	add r0, r2, r3
	ldrb r0, [r1, r0]
	pop {r4, r5, r6, r7, pc}
_02240E54:
	mov r0, #0
	mvn r0, r0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02240E5C: .word 0x02253558
_02240E60: .word 0x00000123
_02240E64: .word 0x0225323C
	thumb_func_end ov17_02240D04

	thumb_func_start ov17_02240E68
ov17_02240E68: ; 0x02240E68
	push {r4, r5, r6, r7}
	mov r2, #0x31
	lsl r2, r2, #4
	mov r4, #0
	add r2, r0, r2
	ldr r7, _02240EA0 ; =0x0225323C
	add r0, r4, #0
	b _02240E96
_02240E78:
	lsl r5, r4, #1
	add r3, r0, #0
	add r6, r7, r5
	b _02240E90
_02240E80:
	ldrb r5, [r3, r6]
	cmp r1, r5
	bne _02240E8E
	strb r3, [r2]
	strb r4, [r2, #1]
	pop {r4, r5, r6, r7}
	bx lr
_02240E8E:
	add r3, r3, #1
_02240E90:
	cmp r3, #2
	blt _02240E80
	add r4, r4, #1
_02240E96:
	cmp r4, #2
	blt _02240E78
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02240EA0: .word 0x0225323C
	thumb_func_end ov17_02240E68

	thumb_func_start ov17_02240EA4
ov17_02240EA4: ; 0x02240EA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r7, #0x31
	lsl r7, r7, #4
	add r3, r7, #0
	add r6, r0, #0
	sub r3, #0x30
	add r0, r7, #0
	ldrsb r5, [r6, r3]
	add r0, #8
	add r4, r6, r0
	mov r3, #0x30
	add r2, r1, #0
	ldr r0, _02240FBC ; =0x02253558
	mul r3, r5
	add r1, r6, r7
	add r5, r0, r3
	cmp r2, #1
	bne _02240F18
	mov r0, #2
	ldrsb r2, [r1, r0]
	strb r2, [r4, #2]
	mov r2, #3
	ldrsb r1, [r1, r2]
	strb r1, [r4, #1]
	mov r1, #1
	ldrsb r2, [r4, r1]
	ldrsb r3, [r4, r0]
	lsl r1, r2, #1
	add r2, r2, r1
	ldr r1, _02240FC0 ; =0x02253240
	add r0, r1, r2
	ldrb r1, [r3, r0]
	ldr r0, [r5, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r5, #0x14]
	add r0, r7, #4
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov17_02252C78
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02240F18:
	ldr r0, _02240FC0 ; =0x02253240
	add r1, sp, #8
	mov r2, #6
	bl sub_020C4DB0
	add r0, r4, #0
	mov r1, #3
	mov r2, #2
	add r3, sp, #8
	bl ov17_02241004
	cmp r0, #0x20
	bhi _02240F4A
	bhs _02240F56
	cmp r0, #2
	bhi _02240F44
	cmp r0, #1
	blo _02240FB2
	beq _02240F96
	cmp r0, #2
	beq _02240FAC
	b _02240FB2
_02240F44:
	cmp r0, #0x10
	beq _02240F56
	b _02240FB2
_02240F4A:
	cmp r0, #0x40
	bhi _02240F52
	beq _02240F56
	b _02240FB2
_02240F52:
	cmp r0, #0x80
	bne _02240FB2
_02240F56:
	mov r0, #1
	ldrsb r1, [r4, r0]
	ldr r2, _02240FC0 ; =0x02253240
	lsl r0, r1, #1
	add r3, r1, r0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r5, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r5, #0x14]
	mov r0, #0xc5
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov17_02252C78
	b _02240FB2
_02240F96:
	mov r0, #1
	ldrsb r1, [r4, r0]
	ldr r2, _02240FC0 ; =0x02253240
	add sp, #0x10
	lsl r0, r1, #1
	add r3, r1, r0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02240FAC:
	add sp, #0x10
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02240FB2:
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240FBC: .word 0x02253558
_02240FC0: .word 0x02253240
	thumb_func_end ov17_02240EA4

	thumb_func_start ov17_02240FC4
ov17_02240FC4: ; 0x02240FC4
	push {r4, r5, r6, r7}
	cmp r1, #3
	beq _02240FFC
	mov r2, #0x31
	lsl r2, r2, #4
	add r3, r0, r2
	mov r5, #0
	ldr r0, _02241000 ; =0x02253240
	add r2, r5, #0
	b _02240FF8
_02240FD8:
	lsl r6, r5, #1
	add r6, r5, r6
	add r4, r2, #0
	add r7, r0, r6
	b _02240FF2
_02240FE2:
	ldrb r6, [r4, r7]
	cmp r1, r6
	bne _02240FF0
	strb r4, [r3, #2]
	strb r5, [r3, #3]
	pop {r4, r5, r6, r7}
	bx lr
_02240FF0:
	add r4, r4, #1
_02240FF2:
	cmp r4, #3
	blt _02240FE2
	add r5, r5, #1
_02240FF8:
	cmp r5, #2
	blt _02240FD8
_02240FFC:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02241000: .word 0x02253240
	thumb_func_end ov17_02240FC4

	thumb_func_start ov17_02241004
ov17_02241004: ; 0x02241004
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #2
	add r4, r1, #0
	ldrsb r1, [r0, r7]
	mov r5, #1
	add r6, r2, #0
	str r1, [sp]
	ldrsb r1, [r0, r5]
	add r2, r3, #0
	mov r3, #0x40
	mov ip, r1
	ldr r1, _022411DC ; =0x021BF67C
	ldr r1, [r1, #0x48]
	tst r3, r1
	beq _02241072
	mov r1, ip
	sub r1, r1, #1
	strb r1, [r0, #1]
	ldrsb r1, [r0, r5]
	cmp r1, #0
	bge _02241032
	mov r1, #0
	strb r1, [r0, #1]
_02241032:
	cmp r2, #0
	beq _0224106E
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0224106E
	add r1, r0, #1
	mov r7, #0
	mov r6, #1
_0224104E:
	ldrsb r3, [r1, r7]
	sub r3, r3, #1
	strb r3, [r1]
	ldrsb r3, [r0, r6]
	cmp r3, #0
	bge _02241060
	mov r1, ip
	strb r1, [r0, #1]
	b _0224106E
_02241060:
	mov r5, #2
	ldrsb r5, [r0, r5]
	mul r3, r4
	add r5, r2, r5
	ldrb r3, [r3, r5]
	cmp r3, #0xff
	beq _0224104E
_0224106E:
	mov r5, #0x40
	b _02241186
_02241072:
	mov r3, #0x80
	tst r3, r1
	beq _022410C8
	mov r1, ip
	add r1, r1, #1
	strb r1, [r0, #1]
	ldrsb r1, [r0, r5]
	cmp r1, r6
	blt _02241088
	sub r1, r6, #1
	strb r1, [r0, #1]
_02241088:
	cmp r2, #0
	beq _022410C4
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _022410C4
	add r1, r0, #1
	mov r7, #1
_022410A2:
	mov r3, #0
	ldrsb r3, [r1, r3]
	add r3, r3, #1
	strb r3, [r1]
	ldrsb r3, [r0, r7]
	cmp r3, r6
	blt _022410B6
	mov r1, ip
	strb r1, [r0, #1]
	b _022410C4
_022410B6:
	mov r5, #2
	ldrsb r5, [r0, r5]
	mul r3, r4
	add r5, r2, r5
	ldrb r3, [r3, r5]
	cmp r3, #0xff
	beq _022410A2
_022410C4:
	mov r5, #0x80
	b _02241186
_022410C8:
	mov r3, #0x20
	tst r3, r1
	beq _0224111E
	ldr r1, [sp]
	sub r1, r1, #1
	strb r1, [r0, #2]
	ldrsb r1, [r0, r7]
	cmp r1, #0
	bge _022410DE
	mov r1, #0
	strb r1, [r0, #2]
_022410DE:
	cmp r2, #0
	beq _0224111A
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0224111A
	add r5, r0, #2
	mov r7, #0
	mov r6, #2
_022410FA:
	ldrsb r1, [r5, r7]
	sub r1, r1, #1
	strb r1, [r5]
	ldrsb r3, [r0, r6]
	cmp r3, #0
	bge _0224110C
	ldr r1, [sp]
	strb r1, [r0, #2]
	b _0224111A
_0224110C:
	mov r1, #1
	ldrsb r1, [r0, r1]
	add r3, r2, r3
	mul r1, r4
	ldrb r1, [r1, r3]
	cmp r1, #0xff
	beq _022410FA
_0224111A:
	mov r5, #0x20
	b _02241186
_0224111E:
	mov r3, #0x10
	tst r3, r1
	beq _02241174
	ldr r1, [sp]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrsb r1, [r0, r7]
	cmp r1, r4
	blt _02241134
	sub r1, r4, #1
	strb r1, [r0, #2]
_02241134:
	cmp r2, #0
	beq _02241170
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _02241170
	add r5, r0, #2
	mov r7, #0
	mov r6, #2
_02241150:
	ldrsb r1, [r5, r7]
	add r1, r1, #1
	strb r1, [r5]
	ldrsb r3, [r0, r6]
	cmp r3, r4
	blt _02241162
	ldr r1, [sp]
	strb r1, [r0, #2]
	b _02241170
_02241162:
	mov r1, #1
	ldrsb r1, [r0, r1]
	add r3, r2, r3
	mul r1, r4
	ldrb r1, [r1, r3]
	cmp r1, #0xff
	beq _02241150
_02241170:
	mov r5, #0x10
	b _02241186
_02241174:
	add r3, r1, #0
	tst r3, r5
	bne _02241186
	tst r1, r7
	beq _02241182
	add r5, r7, #0
	b _02241186
_02241182:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02241186:
	cmp r2, #0
	beq _022411B0
	mov r1, ip
	add r3, r4, #0
	mul r3, r1
	ldr r1, [sp]
	add r1, r1, r3
	mov r3, #2
	ldrsb r6, [r0, r3]
	mov r3, #1
	ldrsb r3, [r0, r3]
	ldrb r1, [r2, r1]
	mul r3, r4
	add r3, r6, r3
	ldrb r2, [r2, r3]
	cmp r1, r2
	bne _022411B0
	ldr r1, [sp]
	strb r1, [r0, #2]
	mov r1, ip
	strb r1, [r0, #1]
_022411B0:
	mov r1, #2
	ldrsb r2, [r0, r1]
	ldr r1, [sp]
	cmp r2, r1
	bne _022411C4
	mov r1, #1
	ldrsb r1, [r0, r1]
	mov r0, ip
	cmp r1, r0
	beq _022411CC
_022411C4:
	ldr r0, _022411E0 ; =0x000005DC
	bl sub_02005748
	b _022411D6
_022411CC:
	mov r0, #0xf0
	tst r0, r5
	beq _022411D6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022411D6:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022411DC: .word 0x021BF67C
_022411E0: .word 0x000005DC
	thumb_func_end ov17_02241004

	thumb_func_start ov17_022411E4
ov17_022411E4: ; 0x022411E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	mov r2, #0xb7
	add r4, r1, #0
	str r0, [sp]
	lsl r2, r2, #2
	ldr r0, [r4, #4]
	ldr r2, [r4, r2]
	mov r3, #6
	ldr r0, [r0, #0x24]
	ldr r2, [r2, #0x14]
	mov r1, #4
	lsl r3, r3, #0xc
	bl sub_0201958C
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xb6
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_022411E4

	thumb_func_start ov17_02241220
ov17_02241220: ; 0x02241220
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #0x2e
	lsl r0, r0, #4
	ldrsb r1, [r1, r0]
	mov r0, #0x30
	mov r4, #0
	ldr r2, _02241268 ; =0x02253558
	mul r0, r1
	ldr r6, _0224126C ; =0x0000FFFF
	add r5, r2, r0
	add r7, r4, #0
_02241238:
	ldrh r0, [r5, #4]
	cmp r0, r6
	bne _0224124C
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl sub_02019120
	b _02241258
_0224124C:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02019120
_02241258:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _02241238
	ldr r0, [sp]
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241268: .word 0x02253558
_0224126C: .word 0x0000FFFF
	thumb_func_end ov17_02241220

	thumb_func_start ov17_02241270
ov17_02241270: ; 0x02241270
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r3, _022412B8 ; =0x000080FB
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x2a
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022412BC ; =0x000080F6
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x2b
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022412BC ; =0x000080F6
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x2c
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022412B8: .word 0x000080FB
_022412BC: .word 0x000080F6
	thumb_func_end ov17_02241270

	thumb_func_start ov17_022412C0
ov17_022412C0: ; 0x022412C0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	ldr r2, _022412EC ; =0x0225364C
	bl sub_0200CE6C
	mov r1, #0x58
	mul r1, r5
	add r1, #0x28
	lsl r1, r1, #0x10
	mov r3, #0x11
	add r4, r0, #0
	asr r1, r1, #0x10
	mov r2, #0x60
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_022412EC: .word 0x0225364C
	thumb_func_end ov17_022412C0

	thumb_func_start ov17_022412F0
ov17_022412F0: ; 0x022412F0
	push {r4, lr}
	ldr r1, _0224130C ; =0x000080FB
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _02241310 ; =0x000080F6
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02241310 ; =0x000080F6
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224130C: .word 0x000080FB
_02241310: .word 0x000080F6
	thumb_func_end ov17_022412F0

	thumb_func_start ov17_02241314
ov17_02241314: ; 0x02241314
	ldr r3, _02241318 ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_02241318: .word sub_0200D0F4
	thumb_func_end ov17_02241314

	thumb_func_start ov17_0224131C
ov17_0224131C: ; 0x0224131C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r3, _02241364 ; =0x000080FA
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x2d
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241368 ; =0x000080F5
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x2e
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241368 ; =0x000080F5
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x2f
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02241364: .word 0x000080FA
_02241368: .word 0x000080F5
	thumb_func_end ov17_0224131C

	thumb_func_start ov17_0224136C
ov17_0224136C: ; 0x0224136C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r2, [sp, #0x10]
	add r6, r3, #0
	cmp r2, #0
	blt _02241380
	ldr r2, _022413A4 ; =0x02253618
	bl sub_0200CE6C
	b _02241386
_02241380:
	ldr r2, _022413A8 ; =0x02253680
	bl sub_0200CE6C
_02241386:
	add r4, r0, #0
	lsl r1, r5, #0x10
	lsl r2, r6, #0x10
	mov r3, #0x11
	add r0, r4, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022413A4: .word 0x02253618
_022413A8: .word 0x02253680
	thumb_func_end ov17_0224136C

	thumb_func_start ov17_022413AC
ov17_022413AC: ; 0x022413AC
	ldr r3, _022413B0 ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_022413B0: .word sub_0200D0F4
	thumb_func_end ov17_022413AC

	thumb_func_start ov17_022413B4
ov17_022413B4: ; 0x022413B4
	push {r4, lr}
	ldr r1, _022413D0 ; =0x000080FA
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _022413D4 ; =0x000080F5
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _022413D4 ; =0x000080F5
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_022413D0: .word 0x000080FA
_022413D4: .word 0x000080F5
	thumb_func_end ov17_022413B4

	thumb_func_start ov17_022413D8
ov17_022413D8: ; 0x022413D8
	ldr r0, _022413E0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bx lr
	; .align 2, 0
_022413E0: .word 0x04000050
	thumb_func_end ov17_022413D8

	thumb_func_start ov17_022413E4
ov17_022413E4: ; 0x022413E4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0x30]
	add r5, r1, #0
	mov r1, #2
	add r4, r2, #0
	bl sub_02019FE4
	mov r1, #0xc0
	mul r1, r5
	lsl r1, r1, #1
	mov r2, #0
	ldr r6, _02241424 ; =0x00000FFF
	add r0, r0, r1
	add r3, r2, #0
	lsl r4, r4, #0xc
_02241402:
	lsl r5, r3, #1
	mov r1, #0
	add r5, r0, r5
_02241408:
	ldrh r7, [r5]
	add r1, r1, #1
	and r7, r6
	orr r7, r4
	strh r7, [r5]
	add r5, r5, #2
	cmp r1, #0xa
	blt _02241408
	add r2, r2, #1
	add r3, #0x20
	cmp r2, #6
	blt _02241402
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241424: .word 0x00000FFF
	thumb_func_end ov17_022413E4

	thumb_func_start ov17_02241428
ov17_02241428: ; 0x02241428
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	ldr r6, _02241454 ; =0x022536B4
	ldr r7, _02241458 ; =0x00000231
	b _02241444
_02241434:
	add r2, r5, r4
	ldrb r2, [r2, r7]
	add r0, r5, #0
	add r1, r4, #0
	ldrb r2, [r6, r2]
	bl ov17_022413E4
	add r4, r4, #1
_02241444:
	cmp r4, #4
	blt _02241434
	ldr r0, [r5, #0x30]
	mov r1, #2
	bl sub_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241454: .word 0x022536B4
_02241458: .word 0x00000231
	thumb_func_end ov17_02241428

	thumb_func_start ov17_0224145C
ov17_0224145C: ; 0x0224145C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0x5c]
	ldr r2, _0224148C ; =0x00009CA4
	str r0, [r4, #0]
	ldr r0, _02241490 ; =ov17_022414C0
	add r1, r4, #0
	strb r6, [r4, #0xa]
	bl sub_0200D9E8
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0224148C: .word 0x00009CA4
_02241490: .word ov17_022414C0
	thumb_func_end ov17_0224145C

	thumb_func_start ov17_02241494
ov17_02241494: ; 0x02241494
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _022414A2
	bl sub_02022974
_022414A2:
	ldr r0, [r4, #4]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov17_02241494

	thumb_func_start ov17_022414B0
ov17_022414B0: ; 0x022414B0
	mov r1, #1
	strb r1, [r0, #0xb]
	mov r1, #0xa
	lsl r1, r1, #8
	strh r1, [r0, #8]
	bx lr
	thumb_func_end ov17_022414B0

	thumb_func_start ov17_022414BC
ov17_022414BC: ; 0x022414BC
	ldrb r0, [r0, #0xb]
	bx lr
	thumb_func_end ov17_022414BC

	thumb_func_start ov17_022414C0
ov17_022414C0: ; 0x022414C0
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _02241516
	mov r0, #8
	ldrsh r0, [r4, r0]
	ldr r2, _0224151C ; =0x022536B4
	mov r1, #0
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _02241520 ; =0x00007FFF
	str r0, [sp, #4]
	ldrb r3, [r4, #0xa]
	ldr r0, [r4, #0]
	ldrb r2, [r2, r3]
	mov r3, #4
	lsl r2, r2, #4
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_020039B0
	mov r1, #8
	ldrsh r2, [r4, r1]
	cmp r2, #0
	bne _02241504
	mov r0, #0
	add sp, #8
	strb r0, [r4, #0xb]
	pop {r4, pc}
_02241504:
	mov r0, #0xa
	lsl r0, r0, #6
	sub r0, r2, r0
	strh r0, [r4, #8]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _02241516
	mov r0, #0
	strh r0, [r4, #8]
_02241516:
	add sp, #8
	pop {r4, pc}
	nop
_0224151C: .word 0x022536B4
_02241520: .word 0x00007FFF
	thumb_func_end ov17_022414C0

	thumb_func_start ov17_02241524
ov17_02241524: ; 0x02241524
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r0, [sp, #0x18]
	add r0, #8
	str r0, [sp, #0x18]
	add r6, r1, #0
	lsl r0, r6, #2
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r1, r0]
	bl sub_02007DC8
	lsl r0, r6, #4
	add r0, r5, r0
	ldr r0, [r0, #0x58]
	cmp r0, #0
	bne _0224154C
	bl sub_02022974
_0224154C:
	add r2, r5, #0
	add r2, #0x58
	lsl r1, r6, #4
	add r0, r2, r1
	str r0, [sp, #0x14]
	ldr r0, [r2, r1]
	mov r2, #0x32
	mov r1, #0
	lsl r2, r2, #6
	bl sub_020C4CF4
	ldr r1, [sp, #0x14]
	lsl r0, r6, #5
	str r1, [sp]
	mov r1, #0x15
	str r1, [sp, #4]
	mov r1, #0xd8
	sub r1, r1, r0
	str r1, [sp, #8]
	mov r1, #0x70
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, _022415E0 ; =0xFFFFFE00
	add r7, r5, #0
	str r0, [sp, #0x10]
	ldr r2, [r5, #0]
	lsl r4, r6, #2
	ldr r0, [r5, #4]
	ldr r2, [r2, r4]
	add r7, #8
	add r1, r6, #0
	mov r3, #0
	bl sub_02095484
	str r0, [r7, r4]
	ldr r0, [r7, r4]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r7, r4]
	mov r1, #0x25
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #5
	ldr r0, [r0, r4]
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x70
	ldr r0, [r0, r4]
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022384F0
	cmp r0, #1
	bne _022415DA
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r2, #1
	ldr r0, [r1, r0]
	mov r1, #0x23
	bl sub_02007DEC
_022415DA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022415E0: .word 0xFFFFFE00
	thumb_func_end ov17_02241524

	thumb_func_start ov17_022415E4
ov17_022415E4: ; 0x022415E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x1c]
	add r7, r0, #0
	add r0, r6, #0
	str r0, [sp, #0x14]
	add r0, #0x58
	ldr r4, [sp, #0x1c]
	str r6, [sp, #0x18]
	str r0, [sp, #0x14]
	add r5, r6, #0
_022415FE:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0224160A
	bl sub_02022974
_0224160A:
	mov r1, #0x32
	mov r0, #0x15
	lsl r1, r1, #6
	bl sub_02018144
	ldr r1, [sp, #0x18]
	mov r3, #0
	str r0, [r1, #0x58]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r0, #0xd8
	sub r0, r0, r7
	str r0, [sp, #8]
	mov r0, #0x70
	sub r0, r0, r7
	str r0, [sp, #0xc]
	ldr r0, _022416E0 ; =0xFFFFFE00
	str r0, [sp, #0x10]
	ldr r2, [r6, #0]
	ldr r0, [r6, #4]
	ldr r2, [r2, r4]
	bl sub_02095484
	str r0, [r5, #8]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r5, #8]
	mov r1, #0x25
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r6, #0]
	mov r1, #5
	ldr r0, [r0, r4]
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x20]
	ldr r0, [r6, #0]
	mov r1, #0x70
	ldr r0, [r0, r4]
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	bl ov12_022384F0
	cmp r0, #1
	bne _02241682
	ldr r0, [r5, #8]
	mov r1, #0x23
	mov r2, #1
	bl sub_02007DEC
_02241682:
	ldr r0, [sp, #0x18]
	add r7, #0x20
	add r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #4
	blt _022415FE
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022416AC
	bl sub_02022974
_022416AC:
	mov r1, #0x32
	mov r0, #0x15
	lsl r1, r1, #6
	bl sub_02018144
	add r1, r6, #0
	add r1, #0x98
	str r0, [r1, #0]
	add r0, r6, #0
	mov r2, #0x32
	ldr r1, [r6, #0x60]
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r6, #0
	ldr r1, [r6, #0x5c]
	add r0, #0x9c
	str r1, [r0, #0]
	add r6, #0x98
	ldr r1, [r6, #0]
	mov r0, #0
	lsl r2, r2, #6
	bl sub_020C4B4C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022416E0: .word 0xFFFFFE00
	thumb_func_end ov17_022415E4

	thumb_func_start ov17_022416E4
ov17_022416E4: ; 0x022416E4
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	str r0, [sp]
	add r4, r0, #0
	add r5, r0, #0
	add r7, r6, #0
_022416F0:
	ldr r0, [r4, #8]
	bl sub_02007DC8
	ldr r0, [r5, #0x58]
	bl sub_020181C4
	str r7, [r5, #0x58]
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #4
	blt _022416F0
	ldr r0, [sp]
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [sp]
	mov r1, #0
	add r0, #0x98
	str r0, [sp]
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_022416E4

	thumb_func_start ov17_02241720
ov17_02241720: ; 0x02241720
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r5, [sp, #0x70]
	add r6, r1, #0
	str r0, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r4, [sp, #0x74]
	cmp r5, #0
	beq _02241738
	cmp r5, #1
	beq _02241746
	b _02241754
_02241738:
	mov r0, #0x20
	str r0, [sp, #0x24]
	mov r0, #0x1e
	mov r3, #0x1f
	mov r7, #1
	str r0, [sp, #0x20]
	b _02241760
_02241746:
	mov r0, #0x26
	str r0, [sp, #0x24]
	mov r0, #0x24
	mov r3, #0x25
	mov r7, #3
	str r0, [sp, #0x20]
	b _02241760
_02241754:
	mov r0, #0x23
	str r0, [sp, #0x24]
	mov r0, #0x21
	mov r3, #0x22
	mov r7, #2
	str r0, [sp, #0x20]
_02241760:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02241808 ; =0x000080E9
	ldr r1, [sp, #0x1c]
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CC3C
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0224180C ; =0x000080EA
	ldr r3, [sp, #0x1c]
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #2
	add r2, r6, #0
	bl sub_0200CDC4
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241808 ; =0x000080E9
	ldr r1, [sp, #0x1c]
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241808 ; =0x000080E9
	ldr r1, [sp, #0x1c]
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE54
	ldr r4, _02241810 ; =0x022538BC
	add r3, sp, #0x28
	mov r2, #6
_022417C8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022417C8
	ldr r0, [r4, #0]
	add r2, sp, #0x28
	str r0, [r3, #0]
	ldr r0, _02241808 ; =0x000080E9
	add r1, r5, r0
	add r0, r0, #1
	add r0, r5, r0
	str r0, [sp, #0x40]
	str r1, [sp, #0x3c]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	lsl r1, r5, #5
	add r1, #0x60
	add r0, sp, #0x28
	strh r1, [r0]
	mov r1, #0x28
	strh r1, [r0, #2]
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02241808: .word 0x000080E9
_0224180C: .word 0x000080EA
_02241810: .word 0x022538BC
	thumb_func_end ov17_02241720

	thumb_func_start ov17_02241814
ov17_02241814: ; 0x02241814
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_0200D0F4
	ldr r1, _0224184C ; =0x000080E9
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0200D070
	ldr r1, _02241850 ; =0x000080EA
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0200D080
	ldr r1, _0224184C ; =0x000080E9
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0200D090
	ldr r1, _0224184C ; =0x000080E9
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0200D0A0
	pop {r3, r4, r5, pc}
	nop
_0224184C: .word 0x000080E9
_02241850: .word 0x000080EA
	thumb_func_end ov17_02241814

	thumb_func_start ov17_02241854
ov17_02241854: ; 0x02241854
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022418A0 ; =0x000080EC
	add r6, r3, #0
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0x27
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022418A0 ; =0x000080EC
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x28
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022418A0 ; =0x000080EC
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x29
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022418A0: .word 0x000080EC
	thumb_func_end ov17_02241854

	thumb_func_start ov17_022418A4
ov17_022418A4: ; 0x022418A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r4, _022418F8 ; =0x022536F0
	add r6, r2, #0
	add r3, r0, #0
	add r7, r1, #0
	ldmia r4!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r5, _022418FC ; =0x02253820
	str r0, [r2, #0]
	add r4, sp, #0xc
	mov r2, #6
_022418C0:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _022418C0
	ldr r0, [r5, #0]
	lsl r1, r6, #5
	str r0, [r4, #0]
	add r1, #0x60
	add r0, sp, #0
	strh r1, [r0, #0xc]
	mov r1, #0x20
	strh r1, [r0, #0xe]
	lsl r1, r6, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add r1, r7, #0
	str r0, [sp, #0x18]
	add r0, r3, #0
	add r2, sp, #0xc
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022418F8: .word 0x022536F0
_022418FC: .word 0x02253820
	thumb_func_end ov17_022418A4

	thumb_func_start ov17_02241900
ov17_02241900: ; 0x02241900
	ldr r3, _02241904 ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_02241904: .word sub_0200D0F4
	thumb_func_end ov17_02241900

	thumb_func_start ov17_02241908
ov17_02241908: ; 0x02241908
	push {r4, lr}
	ldr r1, _02241924 ; =0x000080EC
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _02241924 ; =0x000080EC
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02241924 ; =0x000080EC
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_02241924: .word 0x000080EC
	thumb_func_end ov17_02241908

	thumb_func_start ov17_02241928
ov17_02241928: ; 0x02241928
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r2, [sp, #8]
	add r6, r1, #0
	ldr r0, [r7, #0x50]
	ldr r1, [r7, #0x18]
	ldr r2, [r7, #0x1c]
	ldr r3, [sp, #8]
	bl ov17_02241854
	mov r4, #0
	add r5, r7, #0
	add r6, #0xd0
_02241944:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, r4, #0
	bl ov17_022418A4
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1, #0]
	ldr r0, [sp, #8]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [r7, #0x50]
	ldr r1, [r7, #0x18]
	ldr r2, [r7, #0x1c]
	add r3, r6, #0
	bl ov17_02241720
	add r1, r5, #0
	add r1, #0xa8
	add r4, r4, #1
	str r0, [r1, #0]
	add r5, r5, #4
	add r6, #8
	cmp r4, #3
	blt _02241944
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02241928

	thumb_func_start ov17_0224197C
ov17_0224197C: ; 0x0224197C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02241984:
	add r1, r5, #0
	add r1, #0xa8
	ldr r0, [r6, #0x1c]
	ldr r1, [r1, #0]
	add r2, r4, #0
	bl ov17_02241814
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl ov17_02241900
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _02241984
	ldr r0, [r6, #0x1c]
	bl ov17_02241908
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224197C

	thumb_func_start ov17_022419AC
ov17_022419AC: ; 0x022419AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022419F8 ; =0x000080F5
	add r6, r3, #0
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0xe
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022419FC ; =0x000080F3
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xd
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022419FC ; =0x000080F3
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xc
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022419F8: .word 0x000080F5
_022419FC: .word 0x000080F3
	thumb_func_end ov17_022419AC

	thumb_func_start ov17_02241A00
ov17_02241A00: ; 0x02241A00
	push {r4, lr}
	ldr r1, _02241A1C ; =0x000080F5
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _02241A20 ; =0x000080F3
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02241A20 ; =0x000080F3
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_02241A1C: .word 0x000080F5
_02241A20: .word 0x000080F3
	thumb_func_end ov17_02241A00

	thumb_func_start ov17_02241A24
ov17_02241A24: ; 0x02241A24
	push {r4, r5, lr}
	sub sp, #0x34
	ldr r4, _02241A60 ; =0x022537B8
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #6
_02241A30:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02241A30
	ldr r0, [r4, #0]
	add r2, sp, #0
	str r0, [r3, #0]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	bl sub_0200CE6C
	add r4, r0, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	bl sub_0200D324
	mov r0, #0x5f
	lsl r0, r0, #2
	str r4, [r5, r0]
	add sp, #0x34
	pop {r4, r5, pc}
	nop
_02241A60: .word 0x022537B8
	thumb_func_end ov17_02241A24

	thumb_func_start ov17_02241A64
ov17_02241A64: ; 0x02241A64
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02241A76
	bl sub_02022974
_02241A76:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	mov r0, #0x5f
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02241A64

	thumb_func_start ov17_02241A8C
ov17_02241A8C: ; 0x02241A8C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r6, r1, #0
	add r5, r2, #0
	cmp r0, #0
	bne _02241AA2
	bl sub_02022974
_02241AA2:
	ldr r1, _02241B08 ; =0x022536E4
	lsl r2, r6, #2
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r3, _02241B0C ; =0x022536E6
	ldrsh r1, [r1, r2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	bl sub_0200D4C4
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200D364
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	cmp r5, #3
	bhi _02241B04
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241ADE: ; jump table
	.short _02241AE6 - _02241ADE - 2 ; case 0
	.short _02241AEE - _02241ADE - 2 ; case 1
	.short _02241AF6 - _02241ADE - 2 ; case 2
	.short _02241AFE - _02241ADE - 2 ; case 3
_02241AE6:
	ldr r0, _02241B10 ; =0x000006E1
	bl sub_02005748
	pop {r4, r5, r6, pc}
_02241AEE:
	ldr r0, _02241B14 ; =0x000006DF
	bl sub_02005748
	pop {r4, r5, r6, pc}
_02241AF6:
	ldr r0, _02241B18 ; =0x000005DD
	bl sub_02005748
	pop {r4, r5, r6, pc}
_02241AFE:
	ldr r0, _02241B18 ; =0x000005DD
	bl sub_02005748
_02241B04:
	pop {r4, r5, r6, pc}
	nop
_02241B08: .word 0x022536E4
_02241B0C: .word 0x022536E6
_02241B10: .word 0x000006E1
_02241B14: .word 0x000006DF
_02241B18: .word 0x000005DD
	thumb_func_end ov17_02241A8C

	thumb_func_start ov17_02241B1C
ov17_02241B1C: ; 0x02241B1C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02241B2E
	bl sub_02022974
_02241B2E:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	pop {r4, pc}
	thumb_func_end ov17_02241B1C

	thumb_func_start ov17_02241B3C
ov17_02241B3C: ; 0x02241B3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x15
	mov r1, #0x28
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	strb r0, [r7]
	str r7, [r4, #4]
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [sp]
	str r5, [r4, #0]
	strb r0, [r4, #8]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r1, #0xc
	add r2, #0xe
	bl sub_0200D550
	cmp r6, #6
	bhi _02241B96
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241B88: ; jump table
	.short _02241B96 - _02241B88 - 2 ; case 0
	.short _02241BAC - _02241B88 - 2 ; case 1
	.short _02241BB8 - _02241B88 - 2 ; case 2
	.short _02241BC8 - _02241B88 - 2 ; case 3
	.short _02241BD8 - _02241B88 - 2 ; case 4
	.short _02241BE8 - _02241B88 - 2 ; case 5
	.short _02241BF8 - _02241B88 - 2 ; case 6
_02241B96:
	mov r0, #1
	strb r0, [r4, #0x18]
	ldr r0, _02241C0C ; =0xFFFFFE00
	ldr r2, _02241C10 ; =0x00009C40
	strh r0, [r4, #0x24]
	strh r0, [r4, #0x26]
	ldr r0, _02241C14 ; =ov17_02241CF0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BAC:
	ldr r0, _02241C18 ; =ov17_02241C2C
	ldr r2, _02241C10 ; =0x00009C40
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BB8:
	ldr r0, _02241C1C ; =0xFFFFFD00
	ldr r2, _02241C10 ; =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 ; =ov17_02241CF0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BC8:
	ldr r0, _02241C20 ; =0xFFFFFC00
	ldr r2, _02241C10 ; =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 ; =ov17_02241CF0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BD8:
	ldr r0, _02241C24 ; =0xFFFFFB80
	ldr r2, _02241C10 ; =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 ; =ov17_02241CF0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BE8:
	ldr r0, _02241C28 ; =0xFFFFFD80
	ldr r2, _02241C10 ; =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 ; =ov17_02241CF0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BF8:
	mov r0, #0xff
	mvn r0, r0
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 ; =ov17_02241CF0
	ldr r2, _02241C10 ; =0x00009C40
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241C0C: .word 0xFFFFFE00
_02241C10: .word 0x00009C40
_02241C14: .word ov17_02241CF0
_02241C18: .word ov17_02241C2C
_02241C1C: .word 0xFFFFFD00
_02241C20: .word 0xFFFFFC00
_02241C24: .word 0xFFFFFB80
_02241C28: .word 0xFFFFFD80
	thumb_func_end ov17_02241B3C

	thumb_func_start ov17_02241C2C
ov17_02241C2C: ; 0x02241C2C
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _02241C42
	cmp r0, #1
	beq _02241C58
	cmp r0, #2
	beq _02241C98
	b _02241CB2
_02241C42:
	mov r0, #0xc
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r2, #0x10]
	mov r0, #0xe
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r2, #0x14]
	ldrb r0, [r2, #0xa]
	add r0, r0, #1
	strb r0, [r2, #0xa]
_02241C58:
	ldrb r0, [r2, #0x18]
	mov r1, #1
	tst r0, r1
	beq _02241C6C
	mov r0, #0xc
	ldrsh r0, [r2, r0]
	lsl r3, r0, #8
	lsl r0, r1, #9
	add r0, r3, r0
	b _02241C76
_02241C6C:
	mov r0, #0xc
	ldrsh r0, [r2, r0]
	lsl r3, r0, #8
	lsl r0, r1, #9
	sub r0, r3, r0
_02241C76:
	str r0, [r2, #0x10]
	ldrb r0, [r2, #0x18]
	add r0, r0, #1
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #0x18]
	cmp r0, #4
	bls _02241CC6
	mov r0, #0xc
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r2, #0x10]
	mov r0, #0
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #0xa]
	add r0, r0, #1
	strb r0, [r2, #0xa]
	b _02241CC6
_02241C98:
	mov r0, #9
	ldrsb r1, [r2, r0]
	add r1, r1, #1
	strb r1, [r2, #9]
	ldrsb r0, [r2, r0]
	cmp r0, #0xf
	ble _02241CC6
	mov r0, #0
	strb r0, [r2, #9]
	ldrb r0, [r2, #0xa]
	add r0, r0, #1
	strb r0, [r2, #0xa]
	b _02241CC6
_02241CB2:
	ldr r0, [r2, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r2, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
_02241CC6:
	ldrb r0, [r2, #8]
	ldr r1, [r2, #0]
	ldr r3, [r2, #0x10]
	lsl r0, r0, #2
	add r0, r1, r0
	asr r1, r3, #7
	lsr r1, r1, #0x18
	add r1, r3, r1
	ldr r3, [r2, #0x14]
	add r0, #0xb4
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	lsl r1, r1, #8
	lsl r2, r2, #8
	ldr r0, [r0, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
	thumb_func_end ov17_02241C2C

	thumb_func_start ov17_02241CF0
ov17_02241CF0: ; 0x02241CF0
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _02241D02
	cmp r0, #1
	beq _02241D18
	b _02241D80
_02241D02:
	mov r0, #0xc
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r2, #0x10]
	mov r0, #0xe
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r2, #0x14]
	ldrb r0, [r2, #0xa]
	add r0, r0, #1
	strb r0, [r2, #0xa]
_02241D18:
	mov r0, #0x24
	ldrsh r1, [r2, r0]
	ldr r3, [r2, #0x14]
	add r1, r3, r1
	str r1, [r2, #0x14]
	ldrsh r0, [r2, r0]
	add r0, #0x80
	strh r0, [r2, #0x24]
	mov r0, #0xe
	ldrsh r0, [r2, r0]
	lsl r1, r0, #8
	ldr r0, [r2, #0x14]
	cmp r0, r1
	blt _02241D56
	str r1, [r2, #0x14]
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	beq _02241D50
	mov r0, #0x26
	ldrsh r0, [r2, r0]
	strh r0, [r2, #0x24]
	ldrb r0, [r2, #0x18]
	sub r0, r0, #1
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #0xa]
	sub r0, r0, #1
	strb r0, [r2, #0xa]
	b _02241D56
_02241D50:
	ldrb r0, [r2, #0xa]
	add r0, r0, #1
	strb r0, [r2, #0xa]
_02241D56:
	ldrb r0, [r2, #8]
	ldr r1, [r2, #0]
	ldr r3, [r2, #0x10]
	lsl r0, r0, #2
	add r0, r1, r0
	asr r1, r3, #7
	lsr r1, r1, #0x18
	add r1, r3, r1
	ldr r3, [r2, #0x14]
	add r0, #0xb4
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	lsl r1, r1, #8
	lsl r2, r2, #8
	ldr r0, [r0, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
_02241D80:
	ldr r0, [r2, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r2, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov17_02241CF0

	thumb_func_start ov17_02241D94
ov17_02241D94: ; 0x02241D94
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _02241DAA
	bl sub_02022974
_02241DAA:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02241E1C ; =0x000080ED
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	mov r3, #0x14
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241E1C ; =0x000080ED
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	mov r3, #0x13
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241E1C ; =0x000080ED
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	mov r3, #0x12
	bl sub_0200CE54
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, _02241E20 ; =0x02253854
	bl sub_0200CE6C
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	lsl r1, r6, #5
	add r5, #0xc0
	add r1, #0x60
	lsl r1, r1, #0x10
	ldr r0, [r5, #0]
	asr r1, r1, #0x10
	mov r2, #0x38
	bl sub_0200D4C4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02241E1C: .word 0x000080ED
_02241E20: .word 0x02253854
	thumb_func_end ov17_02241D94

	thumb_func_start ov17_02241E24
ov17_02241E24: ; 0x02241E24
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _02241E54 ; =0x000080ED
	bl sub_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _02241E54 ; =0x000080ED
	bl sub_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _02241E54 ; =0x000080ED
	bl sub_0200D0A0
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	mov r0, #0
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_02241E54: .word 0x000080ED
	thumb_func_end ov17_02241E24

	thumb_func_start ov17_02241E58
ov17_02241E58: ; 0x02241E58
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _02241EA0 ; =0x000080EE
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x11
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241EA0 ; =0x000080EE
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x10
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241EA0 ; =0x000080EE
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xf
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02241EA0: .word 0x000080EE
	thumb_func_end ov17_02241E58

	thumb_func_start ov17_02241EA4
ov17_02241EA4: ; 0x02241EA4
	push {r4, lr}
	ldr r1, _02241EC0 ; =0x000080EE
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _02241EC0 ; =0x000080EE
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02241EC0 ; =0x000080EE
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_02241EC0: .word 0x000080EE
	thumb_func_end ov17_02241EA4

	thumb_func_start ov17_02241EC4
ov17_02241EC4: ; 0x02241EC4
	push {r4, r5, r6, lr}
	mov r2, #0x18
	mov r4, #0
	mul r2, r1
	add r5, r0, r2
	add r6, r4, #0
_02241ED0:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02241EE4
	bl sub_0200D0F4
	add r0, r5, #0
	add r0, #0xc4
	str r6, [r0, #0]
_02241EE4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02241ED0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02241EC4

	thumb_func_start ov17_02241EF0
ov17_02241EF0: ; 0x02241EF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02241EF6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_02241EC4
	add r4, r4, #1
	cmp r4, #4
	blt _02241EF6
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02241EF0

	thumb_func_start ov17_02241F08
ov17_02241F08: ; 0x02241F08
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r2, _02241F30 ; =0x02253888
	add r4, r3, #0
	bl sub_0200CE6C
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_0200D324
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02241F30: .word 0x02253888
	thumb_func_end ov17_02241F08

	thumb_func_start ov17_02241F34
ov17_02241F34: ; 0x02241F34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r7, r1, #0
	add r0, r3, #0
	mov r1, #0xa
	str r2, [sp, #4]
	bl sub_020E1F6C
	str r0, [sp, #8]
	cmp r0, #0x18
	ble _02241F50
	mov r0, #0x18
	str r0, [sp, #8]
_02241F50:
	mov r0, #0x18
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	ldr r4, [sp, #8]
	mov r6, #0
	add r5, r0, r1
	b _02241F7A
_02241F60:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02241F78
	bl sub_0200D0F4
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc4
	str r6, [r0, #0]
_02241F78:
	add r4, r4, #1
_02241F7A:
	cmp r4, #6
	blt _02241F60
	ldr r0, [sp, #8]
	add r1, r7, #0
	sub r4, r0, #1
	mov r0, #0x18
	mul r1, r0
	ldr r0, [sp]
	add r7, r0, r1
	ldr r0, [sp, #4]
	ldr r1, _0224203C ; =0x0225370C
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x10]
	b _0224201C
_02241F9A:
	add r0, r4, #0
	mov r1, #6
	bl sub_020E1F6C
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #6
	bl sub_020E1F6C
	str r0, [sp, #0x14]
	lsl r0, r5, #2
	add r0, r7, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02241FF8
	ldr r3, _0224203C ; =0x0225370C
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldrsh r3, [r3, r2]
	lsl r2, r5, #3
	ldr r1, [sp]
	add r2, r3, r2
	ldr r6, [sp, #0x10]
	mov r3, #2
	ldrsh r3, [r6, r3]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	bl ov17_02241F08
	lsl r2, r5, #2
	add r1, r7, r2
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r7, r2
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x14]
	bl sub_0200D364
	lsl r0, r5, #2
	add r0, r7, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl ov17_02242048
	b _0224201A
_02241FF8:
	bl sub_0200D37C
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bhs _0224201A
	lsl r0, r5, #2
	add r0, r7, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl sub_0200D364
	lsl r0, r5, #2
	add r0, r7, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl ov17_02242048
_0224201A:
	sub r4, r4, #1
_0224201C:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bgt _02241F9A
	ldr r0, _02242040 ; =0x000006E1
	bl sub_02005748
	ldr r2, [sp, #8]
	ldr r0, _02242040 ; =0x000006E1
	sub r2, r2, #1
	ldr r1, _02242044 ; =0x0000FFFF
	lsl r2, r2, #6
	bl sub_02004F7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224203C: .word 0x0225370C
_02242040: .word 0x000006E1
_02242044: .word 0x0000FFFF
	thumb_func_end ov17_02241F34

	thumb_func_start ov17_02242048
ov17_02242048: ; 0x02242048
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x15
	mov r1, #0x10
	bl sub_02018144
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r5, #0
	mov r1, #0
	str r5, [r4, #0]
	bl sub_0200D3F4
	ldr r0, _02242074 ; =ov17_0224207C
	ldr r2, _02242078 ; =0x00009C40
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242074: .word ov17_0224207C
_02242078: .word 0x00009C40
	thumb_func_end ov17_02242048

	thumb_func_start ov17_0224207C
ov17_0224207C: ; 0x0224207C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _02242092
	cmp r0, #1
	beq _022420AE
	cmp r0, #2
	beq _022420E8
	b _02242136
_02242092:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, _0224214C ; =0x3DCCCCCD
	mov r1, #1
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	bl sub_0200D3F4
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_022420AE:
	ldr r0, [r4, #4]
	ldr r1, _02242150 ; =0x3E99999A
	bl sub_020E0B00
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _02242150 ; =0x3E99999A
	bl sub_020E0B00
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl sub_0200D6E8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D7C0
	mov r1, #0xff
	ldr r0, [r4, #4]
	lsl r1, r1, #0x16
	bl sub_020E10AC
	blo _0224214A
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022420E8:
	ldr r0, [r4, #4]
	ldr r1, _02242150 ; =0x3E99999A
	bl sub_020E1A9C
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _02242150 ; =0x3E99999A
	bl sub_020E1A9C
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl sub_0200D6E8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D7C0
	mov r1, #0xfe
	ldr r0, [r4, #4]
	lsl r1, r1, #0x16
	bl sub_020E1164
	bhi _0224214A
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D79C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242136:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D6A4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224214A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224214C: .word 0x3DCCCCCD
_02242150: .word 0x3E99999A
	thumb_func_end ov17_0224207C

	thumb_func_start ov17_02242154
ov17_02242154: ; 0x02242154
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _022421D8 ; =0x000080F0
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x1a
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022421D8 ; =0x000080F0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x19
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022421D8 ; =0x000080F0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x18
	bl sub_0200CE54
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022421DC ; =0x000080EF
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x1d
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022421DC ; =0x000080EF
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x1c
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022421DC ; =0x000080EF
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x1b
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022421D8: .word 0x000080F0
_022421DC: .word 0x000080EF
	thumb_func_end ov17_02242154

	thumb_func_start ov17_022421E0
ov17_022421E0: ; 0x022421E0
	push {r4, lr}
	ldr r1, _02242214 ; =0x000080F0
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _02242214 ; =0x000080F0
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02242214 ; =0x000080F0
	add r0, r4, #0
	bl sub_0200D0A0
	ldr r1, _02242218 ; =0x000080EF
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _02242218 ; =0x000080EF
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02242218 ; =0x000080EF
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_02242214: .word 0x000080F0
_02242218: .word 0x000080EF
	thumb_func_end ov17_022421E0

	thumb_func_start ov17_0224221C
ov17_0224221C: ; 0x0224221C
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x14
	mov r4, #0
	mul r2, r1
	mov r7, #0x49
	add r5, r0, r2
	add r6, r4, #0
	lsl r7, r7, #2
_0224222C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0224223C
	bl sub_0200D0F4
	mov r0, #0x49
	lsl r0, r0, #2
	str r6, [r5, r0]
_0224223C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0224222C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224221C

	thumb_func_start ov17_02242248
ov17_02242248: ; 0x02242248
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0224224E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_0224221C
	add r4, r4, #1
	cmp r4, #3
	blt _0224224E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02242248

	thumb_func_start ov17_02242260
ov17_02242260: ; 0x02242260
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r2, _02242288 ; =0x022537EC
	add r4, r3, #0
	bl sub_0200CE6C
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_0200D324
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02242288: .word 0x022537EC
	thumb_func_end ov17_02242260

	thumb_func_start ov17_0224228C
ov17_0224228C: ; 0x0224228C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r2, _022422B4 ; =0x0225371C
	add r4, r3, #0
	bl sub_0200CE6C
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_0200D324
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_022422B4: .word 0x0225371C
	thumb_func_end ov17_0224228C

	thumb_func_start ov17_022422B8
ov17_022422B8: ; 0x022422B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #5
	bls _022422CA
	b _02242458
_022422CA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022422D6: ; jump table
	.short _022422E2 - _022422D6 - 2 ; case 0
	.short _02242328 - _022422D6 - 2 ; case 1
	.short _02242368 - _022422D6 - 2 ; case 2
	.short _02242398 - _022422D6 - 2 ; case 3
	.short _022423D6 - _022422D6 - 2 ; case 4
	.short _02242428 - _022422D6 - 2 ; case 5
_022422E2:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0200D6A4
	mov r0, #2
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #0x20]
	mov r0, #0x12
	ldr r1, [r4, #0x14]
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x10]
	sub r0, r1, r0
	mov r1, #0xa
	bl sub_020E1F6C
	strh r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
	mov r1, #0xa
	bl sub_020E1F6C
	strh r0, [r4, #0x2a]
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
_02242328:
	mov r1, #0x28
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x10]
	add r0, r2, r0
	str r0, [r4, #0x10]
	mov r0, #0x2a
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x14]
	add r0, r2, r0
	str r0, [r4, #0x14]
	ldrsh r2, [r4, r1]
	cmp r2, #0
	ble _0224234A
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bge _02242358
_0224234A:
	cmp r2, #0
	bge _02242356
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	ble _02242358
_02242356:
	b _0224247C
_02242358:
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242368:
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #3
	bls _0224247C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242398:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	lsl r0, r0, #8
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	lsl r0, r0, #8
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x10]
	sub r0, r1, r0
	mov r1, #6
	bl sub_020E1F6C
	strh r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
	mov r1, #6
	bl sub_020E1F6C
	strh r0, [r4, #0x2a]
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
_022423D6:
	mov r1, #0x28
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x10]
	add r0, r2, r0
	str r0, [r4, #0x10]
	mov r0, #0x2a
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x14]
	add r0, r2, r0
	str r0, [r4, #0x14]
	ldrsh r2, [r4, r1]
	cmp r2, #0
	ble _022423F8
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bge _02242404
_022423F8:
	cmp r2, #0
	bge _0224247C
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bgt _0224247C
_02242404:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	lsl r0, r0, #8
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242428:
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #2
	bls _0224247C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242458:
	ldr r0, [r4, #4]
	bl sub_0200D0F4
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x6e
	lsl r0, r0, #4
	bl sub_02005748
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
_0224247C:
	mov r1, #2
	ldr r0, [r4, #4]
	lsl r1, r1, #0xc
	bl sub_0200D7C0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	lsl r1, r1, #8
	lsl r2, r2, #8
	ldr r0, [r4, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_022422B8

	thumb_func_start ov17_022424A8
ov17_022424A8: ; 0x022424A8
	push {r4, r5, r6, lr}
	mov r2, #0x14
	mul r2, r1
	mov r6, #0x49
	mov r4, #0
	add r5, r0, r2
	lsl r6, r6, #2
_022424B6:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _022424C8
	bl sub_0200D408
	cmp r0, #0
	bne _022424C8
	mov r0, #0
	pop {r4, r5, r6, pc}
_022424C8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _022424B6
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_022424A8

	thumb_func_start ov17_022424D4
ov17_022424D4: ; 0x022424D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r2, #0
	str r0, [sp, #0x1c]
	str r1, [sp]
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E1F6C
	str r0, [sp, #4]
	cmp r0, #5
	ble _022424F0
	bl sub_02022974
_022424F0:
	ldr r0, [sp]
	mov r1, #0x14
	lsl r7, r0, #2
	ldr r0, _0224261C ; =0x022536D8
	mov r5, #0
	add r0, r0, r7
	str r0, [sp, #0xc]
	ldr r0, [sp]
	mul r1, r0
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, _02242620 ; =0x022536E4
	add r0, r0, r7
	str r0, [sp, #0x10]
	ldr r0, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	b _022425E4
_0224251E:
	ldr r0, [sp, #8]
	lsl r2, r5, #2
	add r1, r0, r2
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022425E2
	ldr r3, _0224261C ; =0x022536D8
	ldr r0, [sp, #0x1c]
	ldrsh r3, [r3, r7]
	add r2, r5, r2
	ldr r4, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r2, r3, r2
	mov r3, #2
	ldrsh r3, [r4, r3]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	bl ov17_02242260
	ldr r1, [sp, #8]
	lsl r2, r5, #2
	add r2, r1, r2
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r1, #0
	ldr r0, [r2, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x15
	mov r1, #0x34
	bl sub_02018144
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp, #0x1c]
	lsl r1, r5, #2
	str r0, [r4, #0]
	ldr r0, [sp, #8]
	ldr r2, _02242620 ; =0x022536E4
	add r1, r0, r1
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r6, [sp, #0x10]
	str r0, [r4, #8]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	mov r3, #2
	ldrsh r2, [r2, r7]
	ldrsh r3, [r6, r3]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	bl ov17_0224228C
	str r0, [r4, #4]
	ldr r0, _02242620 ; =0x022536E4
	ldr r1, [sp, #0x10]
	ldrsh r0, [r0, r7]
	ldr r2, _02242624 ; =0x00009C40
	lsl r0, r0, #8
	str r0, [r4, #0x10]
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, _0224261C ; =0x022536D8
	ldrsh r1, [r0, r7]
	lsl r0, r5, #2
	add r0, r5, r0
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
	ldr r1, [sp, #0xc]
	mov r0, #2
	ldrsh r1, [r1, r0]
	add r0, r4, #0
	add r0, #0x2d
	strb r1, [r0]
	add r1, r4, #0
	ldr r0, [sp, #0x14]
	add r1, #0x30
	strb r0, [r1]
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x31
	strb r0, [r1]
	ldr r0, _02242628 ; =ov17_022422B8
	add r1, r4, #0
	bl sub_0200D9E8
_022425E2:
	add r5, r5, #1
_022425E4:
	ldr r0, [sp, #4]
	cmp r5, r0
	blt _0224251E
	ldr r0, [sp]
	mov r1, #0x14
	mul r1, r0
	ldr r0, [sp, #0x1c]
	mov r7, #0x49
	lsl r7, r7, #2
	add r4, r0, r1
	add r6, r7, #0
	b _02242614
_022425FC:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _02242612
	bl sub_0200D0F4
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0
	str r0, [r1, r7]
_02242612:
	add r5, r5, #1
_02242614:
	cmp r5, #5
	blt _022425FC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224261C: .word 0x022536D8
_02242620: .word 0x022536E4
_02242624: .word 0x00009C40
_02242628: .word ov17_022422B8
	thumb_func_end ov17_022424D4

	thumb_func_start ov17_0224262C
ov17_0224262C: ; 0x0224262C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	str r0, [sp]
	cmp r2, #1
	bne _0224263C
	mov r6, #1
	b _0224263E
_0224263C:
	mov r6, #0
_0224263E:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	str r0, [sp, #8]
	str r0, [sp, #4]
_02242648:
	ldr r5, [sp]
	mov r4, #0
_0224264C:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242668
	add r1, r7, #0
	bl sub_0200D810
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0200D3F4
_02242668:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0224264C
	mov r1, #0x5b
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02242690
	add r1, r7, #0
	bl sub_0200D810
	mov r1, #0x5b
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r6, #0
	bl sub_0200D3F4
_02242690:
	mov r1, #0x63
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r7, #0
	bl sub_02012AF0
	mov r1, #0x77
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r7, #0
	bl sub_02012AF0
	mov r1, #0x63
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r6, #0
	bl sub_020129D0
	mov r1, #0x77
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r6, #0
	bl sub_020129D0
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x14
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _02242648
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224262C

	thumb_func_start ov17_022426E8
ov17_022426E8: ; 0x022426E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0
	strb r0, [r7]
	mov r0, #0x15
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	str r5, [r4, #0]
	mov r2, #0xfa
	strb r6, [r4, #0xd]
	ldr r0, _0224271C ; =ov17_02242720
	add r1, r4, #0
	lsl r2, r2, #2
	str r7, [r4, #4]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224271C: .word ov17_02242720
	thumb_func_end ov17_022426E8

	thumb_func_start ov17_02242720
ov17_02242720: ; 0x02242720
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bls _0224272E
	b _02242864
_0224272E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224273A: ; jump table
	.short _02242742 - _0224273A - 2 ; case 0
	.short _0224279E - _0224273A - 2 ; case 1
	.short _022427D2 - _0224273A - 2 ; case 2
	.short _02242826 - _0224273A - 2 ; case 3
_02242742:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0224276A
	mov r0, #1
	lsl r0, r0, #0xc
	strh r0, [r4, #8]
	mov r1, #0
	strh r1, [r4, #0xa]
	ldr r0, _0224287C ; =0x04000050
	str r1, [sp]
	mov r2, #0xe
	mov r3, #0x10
	bl sub_020BF55C
	mov r1, #1
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov17_0224262C
	b _0224278C
_0224276A:
	mov r3, #0
	mov r0, #1
	strh r3, [r4, #8]
	lsl r0, r0, #0xc
	strh r0, [r4, #0xa]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0224287C ; =0x04000050
	mov r1, #4
	mov r2, #0xe
	bl sub_020BF55C
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #1
	bl ov17_0223BB14
_0224278C:
	ldr r0, _02242880 ; =ov17_02242884
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200DA3C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224279E:
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	bne _022427BE
	mov r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022427BE
	mov r1, #0
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov17_0224262C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022427BE:
	cmp r1, #1
	bne _0224287A
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0224287A
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022427D2:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _022427F2
	mov r0, #1
	lsl r0, r0, #0xc
	strh r0, [r4, #8]
	mov r0, #0
	strh r0, [r4, #0xa]
	str r0, [sp]
	ldr r0, _0224287C ; =0x04000050
	mov r1, #4
	mov r2, #0xe
	mov r3, #0x10
	bl sub_020BF55C
	b _02242814
_022427F2:
	mov r1, #0
	mov r0, #1
	strh r1, [r4, #8]
	lsl r0, r0, #0xc
	strh r0, [r4, #0xa]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0224287C ; =0x04000050
	mov r2, #0xe
	add r3, r1, #0
	bl sub_020BF55C
	mov r1, #1
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov17_0224262C
_02242814:
	ldr r0, _02242880 ; =ov17_02242884
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200DA3C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242826:
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	bne _02242846
	mov r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02242846
	mov r1, #1
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov17_0223BB14
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242846:
	cmp r1, #1
	bne _0224287A
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0224287A
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #1
	bl ov17_0224262C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242864:
	bl ov17_022413D8
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224287A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224287C: .word 0x04000050
_02242880: .word ov17_02242884
	thumb_func_end ov17_02242720

	thumb_func_start ov17_02242884
ov17_02242884: ; 0x02242884
	push {r3, r4, r5, lr}
	ldrb r3, [r1, #0xd]
	mov r2, #0
	cmp r3, #0
	bne _022428BC
	mov r4, #8
	ldrsh r5, [r1, r4]
	lsl r3, r4, #8
	sub r3, r5, r3
	strh r3, [r1, #8]
	mov r3, #0xa
	ldrsh r5, [r1, r3]
	lsl r3, r4, #8
	add r3, r5, r3
	strh r3, [r1, #0xa]
	ldrsh r3, [r1, r4]
	cmp r3, #0
	bgt _022428AC
	strh r2, [r1, #8]
	add r2, r2, #1
_022428AC:
	mov r3, #0xa
	ldrsh r4, [r1, r3]
	mov r3, #1
	lsl r3, r3, #0xc
	cmp r4, r3
	blt _022428E8
	strh r3, [r1, #0xa]
	b _022428E8
_022428BC:
	mov r4, #8
	ldrsh r5, [r1, r4]
	lsl r3, r4, #8
	add r3, r5, r3
	strh r3, [r1, #8]
	mov r3, #0xa
	ldrsh r5, [r1, r3]
	lsl r3, r4, #8
	sub r3, r5, r3
	strh r3, [r1, #0xa]
	ldrsh r5, [r1, r4]
	lsl r3, r4, #9
	cmp r5, r3
	blt _022428DC
	strh r3, [r1, #8]
	add r2, r2, #1
_022428DC:
	mov r3, #0xa
	ldrsh r3, [r1, r3]
	cmp r3, #0
	bgt _022428E8
	mov r3, #0
	strh r3, [r1, #0xa]
_022428E8:
	mov r3, #8
	ldrsh r3, [r1, r3]
	asr r4, r3, #8
	mov r3, #0xa
	ldrsh r3, [r1, r3]
	mov r1, #0xff
	bic r3, r1
	orr r3, r4
	ldr r1, _02242908 ; =0x04000052
	cmp r2, #0
	strh r3, [r1]
	ble _02242904
	bl sub_0200DA58
_02242904:
	pop {r3, r4, r5, pc}
	nop
_02242908: .word 0x04000052
	thumb_func_end ov17_02242884

	thumb_func_start ov17_0224290C
ov17_0224290C: ; 0x0224290C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	add r6, r3, #0
	cmp r7, #2
	blt _02242924
	cmp r5, #0
	bne _02242924
	bl sub_02022974
_02242924:
	cmp r7, #0x1c
	bls _0224292A
	b _02242D9E
_0224292A:
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242936: ; jump table
	.short _02242DA2 - _02242936 - 2 ; case 0
	.short _02242970 - _02242936 - 2 ; case 1
	.short _0224298E - _02242936 - 2 ; case 2
	.short _022429A8 - _02242936 - 2 ; case 3
	.short _022429C2 - _02242936 - 2 ; case 4
	.short _022429D0 - _02242936 - 2 ; case 5
	.short _022429E4 - _02242936 - 2 ; case 6
	.short _022429FC - _02242936 - 2 ; case 7
	.short _02242A2C - _02242936 - 2 ; case 8
	.short _02242A50 - _02242936 - 2 ; case 9
	.short _02242A7C - _02242936 - 2 ; case 10
	.short _02242AAA - _02242936 - 2 ; case 11
	.short _02242ADA - _02242936 - 2 ; case 12
	.short _02242AFE - _02242936 - 2 ; case 13
	.short _02242B2A - _02242936 - 2 ; case 14
	.short _02242B5A - _02242936 - 2 ; case 15
	.short _02242B7E - _02242936 - 2 ; case 16
	.short _02242BA2 - _02242936 - 2 ; case 17
	.short _02242BC2 - _02242936 - 2 ; case 18
	.short _02242BE6 - _02242936 - 2 ; case 19
	.short _02242C10 - _02242936 - 2 ; case 20
	.short _02242C3A - _02242936 - 2 ; case 21
	.short _02242C58 - _02242936 - 2 ; case 22
	.short _02242C82 - _02242936 - 2 ; case 23
	.short _02242CB0 - _02242936 - 2 ; case 24
	.short _02242CDE - _02242936 - 2 ; case 25
	.short _02242D00 - _02242936 - 2 ; case 26
	.short _02242D2A - _02242936 - 2 ; case 27
	.short _02242D62 - _02242936 - 2 ; case 28
_02242970:
	mov r0, #0xca
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224298E:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429A8:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429C2:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429D0:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429E4:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429FC:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242A2C:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242A50:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242A7C:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #1
	bl sub_0200BB74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242AAA:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242ADA:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242AFE:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242B2A:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242B5A:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B630
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242B7E:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B630
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242BA2:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B630
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242BC2:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B630
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242BE6:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl sub_0200B60C
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C10:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl sub_0200B60C
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C3A:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl sub_0200B60C
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C58:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl sub_0200B60C
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C82:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242CB0:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242CDE:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D00:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D2A:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B5CC
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #1
	bl sub_0200BB74
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r1, #2
	bl sub_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D62:
	ldrb r2, [r6]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsl r2, r2, #3
	add r2, r3, r2
	add r2, #0xd0
	ldrh r2, [r2]
	mov r1, #0
	bl sub_0200BB74
	mov r5, #0
_02242D78:
	add r0, r6, r5
	ldrb r0, [r0, #1]
	cmp r0, #4
	beq _02242DA2
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	add r1, r5, #1
	bl sub_0200B5CC
	add r5, r5, #1
	cmp r5, #4
	blt _02242D78
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D9E:
	bl sub_02022974
_02242DA2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224290C

	thumb_func_start ov17_02242DA8
ov17_02242DA8: ; 0x02242DA8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x34
	mov r1, #0xff
	bl sub_0201ADA4
	add r4, #0x34
	add r0, r4, #0
	bl sub_0201A954
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02242DA8

	thumb_func_start ov17_02242DC0
ov17_02242DC0: ; 0x02242DC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0xc]
	cmp r0, #1
	bne _02242DD6
	mov r4, #0
	b _02242DEE
_02242DD6:
	ldr r1, [r5, #0]
	ldr r0, _02242E54 ; =0x00000171
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02242DEC
	ldr r0, _02242E58 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027AC0
	add r4, r0, #0
	b _02242DEE
_02242DEC:
	mov r4, #1
_02242DEE:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r5, #0
	bl ov17_0224290C
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x34
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x58]
	add r0, #0x34
	mov r1, #1
	bl sub_0201D738
	mov r1, #0x8b
	lsl r1, r1, #2
	strb r0, [r5, r1]
	cmp r4, #0
	bne _02242E42
	mov r0, #0xff
	strb r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x34
	bl sub_0201A954
_02242E42:
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_020192EC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242E54: .word 0x00000171
_02242E58: .word 0x00001988
	thumb_func_end ov17_02242DC0

	thumb_func_start ov17_02242E5C
ov17_02242E5C: ; 0x02242E5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r5, #0x2f
	blo _02242E70
	bl sub_02022974
_02242E70:
	ldr r0, _02242E90 ; =0x022538F3
	lsl r3, r5, #2
	ldrb r0, [r0, r3]
	str r4, [sp]
	ldr r2, _02242E94 ; =0x022538F0
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r4, _02242E98 ; =0x022538F2
	ldrh r2, [r2, r3]
	ldrb r3, [r4, r3]
	ldr r1, [r7, #0x44]
	add r0, r7, #0
	bl ov17_02242DC0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02242E90: .word 0x022538F3
_02242E94: .word 0x022538F0
_02242E98: .word 0x022538F2
	thumb_func_end ov17_02242E5C

	thumb_func_start ov17_02242E9C
ov17_02242E9C: ; 0x02242E9C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r5, r3, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_02095790
	ldr r0, [sp, #0x20]
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r4, #0x50]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	bl ov17_02242DC0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02242E9C

	thumb_func_start ov17_02242ECC
ov17_02242ECC: ; 0x02242ECC
	push {r3, lr}
	mov r1, #0x8b
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _02242EDC
	mov r0, #0
	pop {r3, pc}
_02242EDC:
	bl sub_0201D724
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02242ECC

	thumb_func_start ov17_02242EE4
ov17_02242EE4: ; 0x02242EE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xc
	mov r1, #0x15
	bl sub_02023790
	str r0, [sp, #0x30]
	lsl r0, r4, #2
	ldr r1, [r5, #0xc]
	str r0, [sp, #0x2c]
	ldr r0, [r1, r0]
	ldr r2, [sp, #0x30]
	mov r1, #0x77
	bl sub_02074470
	ldr r1, [r5, #0]
	ldr r0, _02242F94 ; =0x00000123
	ldrb r0, [r1, r0]
	cmp r4, r0
	bne _02242F14
	ldr r6, _02242F98 ; =0x00010200
	b _02242F16
_02242F14:
	ldr r6, _02242F9C ; =0x00050600
_02242F16:
	mov r0, #0x14
	add r7, r4, #0
	mul r7, r0
	mov r0, #0x77
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, r0, r7
	str r0, [sp]
	ldr r0, [sp, #0x30]
	mov r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, _02242FA0 ; =0x000080ED
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	mov r0, #0xf
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x60]
	mov r0, #0x15
	bl ov17_0223F1E8
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, r0, r7
	str r0, [sp]
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, _02242FA0 ; =0x000080ED
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	mov r0, #0xf
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x60]
	mov r0, #0x15
	bl ov17_0223F1E8
	ldr r0, [sp, #0x30]
	bl sub_020237BC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02242F94: .word 0x00000123
_02242F98: .word 0x00010200
_02242F9C: .word 0x00050600
_02242FA0: .word 0x000080ED
	thumb_func_end ov17_02242EE4

	thumb_func_start ov17_02242FA4
ov17_02242FA4: ; 0x02242FA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02242FAA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_02242EE4
	add r4, r4, #1
	cmp r4, #4
	blt _02242FAA
	add r0, r5, #0
	bl ov17_02242FE8
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02242FA4

	thumb_func_start ov17_02242FC0
ov17_02242FC0: ; 0x02242FC0
	push {r4, r5, r6, lr}
	mov r1, #0x77
	lsl r1, r1, #2
	add r4, r0, r1
	sub r1, #0x50
	mov r6, #0
	add r5, r0, r1
_02242FCE:
	add r0, r4, #0
	bl ov17_0223F2E4
	add r0, r5, #0
	bl ov17_0223F2E4
	add r6, r6, #1
	add r4, #0x14
	add r5, #0x14
	cmp r6, #4
	blt _02242FCE
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02242FC0

	thumb_func_start ov17_02242FE8
ov17_02242FE8: ; 0x02242FE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x77
	lsl r1, r1, #2
	str r0, [sp]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp]
	sub r1, #0x50
	add r0, r0, r1
	mov r4, #0
	mov r6, #0xc
	mov r5, #0x1c
	str r0, [sp, #8]
_02243004:
	ldr r0, [sp]
	add r2, r6, #0
	add r1, r0, r4
	ldr r0, _0224303C ; =0x00000231
	mov r3, #0
	ldrb r1, [r1, r0]
	mov r0, #0x14
	add r7, r1, #0
	mul r7, r0
	ldr r0, [sp, #4]
	mov r1, #1
	add r0, r0, r7
	bl ov17_0223F2F8
	ldr r0, [sp, #8]
	mov r1, #1
	add r0, r0, r7
	add r2, r5, #0
	mov r3, #0
	bl ov17_0223F2F8
	add r4, r4, #1
	add r6, #0x30
	add r5, #0x30
	cmp r4, #4
	blt _02243004
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224303C: .word 0x00000231
	thumb_func_end ov17_02242FE8

	thumb_func_start ov17_02243040
ov17_02243040: ; 0x02243040
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _02243088 ; =0x000080F1
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x17
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02243088 ; =0x000080F1
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x16
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02243088 ; =0x000080F1
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x15
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02243088: .word 0x000080F1
	thumb_func_end ov17_02243040

	thumb_func_start ov17_0224308C
ov17_0224308C: ; 0x0224308C
	push {r4, lr}
	ldr r1, _022430A8 ; =0x000080F1
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _022430A8 ; =0x000080F1
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _022430A8 ; =0x000080F1
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_022430A8: .word 0x000080F1
	thumb_func_end ov17_0224308C

	thumb_func_start ov17_022430AC
ov17_022430AC: ; 0x022430AC
	push {r3, r4, r5, r6, r7, lr}
	add r3, r0, #0
	mov r0, #0x16
	add r6, r1, #0
	lsl r0, r0, #4
	lsl r5, r6, #2
	add r4, r3, r0
	ldr r0, [r4, r5]
	add r7, r2, #0
	cmp r0, #0
	bne _022430CE
	ldr r0, [r3, #0x18]
	ldr r1, [r3, #0x1c]
	ldr r2, _022430F4 ; =0x02253750
	bl sub_0200CE6C
	str r0, [r4, r5]
_022430CE:
	ldr r0, [r4, r5]
	add r1, r7, #0
	bl sub_0200D364
	mov r2, #0x30
	mul r2, r6
	add r2, #0x2a
	lsl r2, r2, #0x10
	ldr r0, [r4, r5]
	mov r1, #0x40
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, r5]
	ldr r0, [r0, #0]
	bl sub_0200D324
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022430F4: .word 0x02253750
	thumb_func_end ov17_022430AC

	thumb_func_start ov17_022430F8
ov17_022430F8: ; 0x022430F8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x16
	add r5, r0, #0
	add r6, r4, #0
	lsl r7, r7, #4
_02243104:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02243114
	bl sub_0200D0F4
	mov r0, #0x16
	lsl r0, r0, #4
	str r6, [r5, r0]
_02243114:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02243104
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_022430F8

	thumb_func_start ov17_02243120
ov17_02243120: ; 0x02243120
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #6
	bl sub_020C4CF4
	lsl r0, r6, #1
	add r1, r5, r0
	ldr r0, _02243148 ; =0x00000236
	strb r6, [r4]
	ldrh r1, [r1, r0]
	add r0, #8
	strh r1, [r4, #2]
	add r1, r5, r6
	ldrb r0, [r1, r0]
	strb r0, [r4, #5]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02243148: .word 0x00000236
	thumb_func_end ov17_02243120

	thumb_func_start ov17_0224314C
ov17_0224314C: ; 0x0224314C
	strb r0, [r2]
	cmp r1, #0
	bgt _02243156
	mov r0, #0x1f
	bx lr
_02243156:
	cmp r1, #0x14
	bgt _0224315E
	mov r0, #0x20
	bx lr
_0224315E:
	cmp r1, #0x32
	bgt _02243166
	mov r0, #0x21
	bx lr
_02243166:
	cmp r1, #0x5a
	bgt _0224316E
	mov r0, #0x22
	bx lr
_0224316E:
	mov r0, #0x23
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224314C

	thumb_func_start ov17_02243174
ov17_02243174: ; 0x02243174
	push {r4, lr}
	mov r1, #0x32
	bl sub_020E1F6C
	cmp r0, #4
	blo _02243182
	mov r0, #3
_02243182:
	lsl r1, r0, #2
	ldr r0, _0224319C ; =0x022536FC
	ldr r4, [r0, r1]
	cmp r4, #0
	bge _02243190
	bl sub_02022974
_02243190:
	cmp r4, #0x7f
	ble _02243198
	bl sub_02022974
_02243198:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0224319C: .word 0x022536FC
	thumb_func_end ov17_02243174

	thumb_func_start ov17_022431A0
ov17_022431A0: ; 0x022431A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x1c]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x15
	mov r1, #0x14
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp, #0x1c]
	str r5, [r4, #0]
	str r0, [r4, #0x10]
	strb r7, [r4, #0xd]
	ldr r0, [sp]
	strb r6, [r4, #0xb]
	str r0, [r4, #4]
	ldr r0, [sp, #0x18]
	ldr r2, _022431E0 ; =0x00000BB8
	strb r0, [r4, #0xe]
	ldr r0, _022431E4 ; =ov17_022431E8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022431E0: .word 0x00000BB8
_022431E4: .word ov17_022431E8
	thumb_func_end ov17_022431A0

	thumb_func_start ov17_022431E8
ov17_022431E8: ; 0x022431E8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02243200
	cmp r0, #1
	beq _02243222
	cmp r0, #2
	beq _02243252
	b _022432C8
_02243200:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0224320E
	sub r0, r0, #1
	add sp, #0x10
	strb r0, [r4, #0xd]
	pop {r3, r4, r5, pc}
_0224320E:
	ldr r0, _02243314 ; =0x000006E5
	bl sub_02005748
	ldr r0, _02243314 ; =0x000006E5
	ldr r1, [r4, #4]
	bl sub_02004AD4
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
_02243222:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0224322C
	mov r1, #0
	b _0224322E
_0224322C:
	mov r1, #2
_0224322E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r4, #0]
	mov r0, #0x2d
	ldr r2, [r2, #0x30]
	mov r3, #3
	bl sub_02006E60
	ldrb r0, [r4, #8]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02243252:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bls _0224328A
	mov r0, #0
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #9]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #9]
	ldrb r0, [r4, #8]
	sub r0, r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0224328A
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bls _0224328A
	mov r0, #0xff
	add sp, #0x10
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224328A:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _02243310
	ldrb r0, [r4, #0xb]
	mov r1, #0x32
	lsl r0, r0, #4
	bl sub_020E1F6C
	mov r1, #0xf
	ldrsb r2, [r4, r1]
	cmp r2, r0
	bge _02243310
	add r2, r2, #2
	strb r2, [r4, #0xf]
	ldrsb r1, [r4, r1]
	cmp r1, r0
	ble _022432AE
	strb r0, [r4, #0xf]
_022432AE:
	ldrb r0, [r4, #0xf]
	mov r1, #0
	mov r2, #1
	str r0, [sp]
	ldr r0, _02243318 ; =0x0000237E
	mov r3, #2
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x5c]
	bl sub_020039B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022432C8:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _022432FE
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	cmp r1, #0
	beq _022432FE
	sub r1, r1, #2
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _022432E4
	mov r0, #0
	strb r0, [r4, #0xf]
_022432E4:
	ldrb r0, [r4, #0xf]
	mov r1, #0
	mov r2, #1
	str r0, [sp]
	ldr r0, _02243318 ; =0x0000237E
	mov r3, #2
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x5c]
	bl sub_020039B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022432FE:
	ldr r0, [r4, #0x10]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02243310:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02243314: .word 0x000006E5
_02243318: .word 0x0000237E
	thumb_func_end ov17_022431E8

	thumb_func_start ov17_0224331C
ov17_0224331C: ; 0x0224331C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r3, #0
	ldr r3, [sp, #0x38]
	add r6, sp, #0x1c
	str r3, [sp, #0x38]
	mov r3, #0
	str r3, [sp, #8]
	strb r3, [r5]
	mov r3, #0x30
	mul r3, r2
	ldr r2, [sp, #8]
	str r3, [sp, #0x10]
	add r3, #0x18
	str r2, [sp, #4]
	str r2, [sp, #0xc]
	mov r2, #0x18
	mul r2, r1
	add r7, r0, r2
	add r0, r3, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r3, [sp, #0x10]
	str r0, [sp, #0x18]
_0224334C:
	add r0, r7, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02243358
	b _022434B8
_02243358:
	ldrb r1, [r5]
	cmp r1, #0
	bne _02243422
	add r1, sp, #0x20
	add r1, #2
	add r2, sp, #0x20
	bl sub_0200D550
	mov r0, #4
	ldrsh r1, [r6, r0]
	ldr r0, [sp, #0x10]
	sub r1, r1, r0
	bpl _02243374
	neg r1, r1
_02243374:
	mov r0, #6
	ldrsh r0, [r6, r0]
	sub r0, #0x28
	bpl _0224337E
	neg r0, r0
_0224337E:
	bl sub_0208C0A4
	lsl r0, r0, #8
	str r0, [sp, #8]
	mov r0, #6
	ldrsh r0, [r6, r0]
	sub r0, #0x28
	bl sub_020E17B4
	str r0, [sp, #0x14]
	mov r0, #4
	ldrsh r1, [r6, r0]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
	bl sub_020E17B4
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _022434CC ; =0x45800000
	bls _022433C0
	ldr r1, [sp, #0x14]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	str r0, [sp]
	b _022433D0
_022433C0:
	ldr r1, [sp, #0x14]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
	str r0, [sp]
_022433D0:
	add r0, r4, #0
	mov r1, #0
	bl sub_020E1108
	ldr r0, _022434CC ; =0x45800000
	bls _022433EE
	add r1, r4, #0
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022433FC
_022433EE:
	add r1, r4, #0
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022433FC:
	bl sub_020E1740
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_020E1740
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020BDA20
	ldr r1, _022434D0 ; =0x00008CA0
	mul r1, r0
	add r0, r1, #0
	ldr r1, _022434D4 ; =0x0000FFFF
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
_02243422:
	mov r0, #0x15
	mov r1, #0x28
	bl sub_02018144
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp, #0x38]
	add r1, r4, #0
	str r0, [r4, #4]
	add r0, r7, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, #0x21
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	add r2, sp, #0x1c
	str r0, [r4, #0x10]
	ldr r0, [sp, #4]
	strh r0, [r4, #0x1e]
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [r4, #0x14]
	mov r0, #0x28
	strb r0, [r1]
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x22
	strb r0, [r1]
	str r5, [r4, #0xc]
	mov r0, #6
	ldrsh r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x23
	strb r1, [r0]
	mov r0, #4
	ldrsh r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r7, #0
	add r0, #0xd0
	add r1, sp, #0x1c
	ldr r0, [r0, #0]
	add r1, #2
	bl sub_0200D550
	mov r0, #6
	ldrsh r1, [r6, r0]
	mov r0, #2
	ldrsh r0, [r6, r0]
	sub r0, r1, r0
	bpl _02243492
	neg r0, r0
_02243492:
	ldrb r2, [r5]
	lsl r0, r0, #8
	lsl r1, r2, #1
	add r1, r2, r1
	bl sub_020E1F6C
	strh r0, [r4, #0x1c]
	mov r0, #2
	ldrsh r0, [r6, r0]
	ldr r2, _022434D8 ; =0x00009C40
	add r1, r4, #0
	lsl r0, r0, #8
	str r0, [r4, #0x18]
	ldr r0, _022434DC ; =ov17_022434E0
	bl sub_0200D9E8
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_022434B8:
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #6
	bge _022434C6
	b _0224334C
_022434C6:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022434CC: .word 0x45800000
_022434D0: .word 0x00008CA0
_022434D4: .word 0x0000FFFF
_022434D8: .word 0x00009C40
_022434DC: .word ov17_022434E0
	thumb_func_end ov17_0224331C

	thumb_func_start ov17_022434E0
ov17_022434E0: ; 0x022434E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _022434F8
	cmp r0, #1
	beq _02243542
	b _02243624
_022434F8:
	ldrh r0, [r5, #0x1c]
	ldr r1, [r5, #0x18]
	sub r1, r1, r0
	add r0, r5, #0
	str r1, [r5, #0x18]
	add r0, #0x23
	ldrb r0, [r0]
	lsl r0, r0, #8
	cmp r1, r0
	bgt _0224351C
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x20
	strb r1, [r0]
_0224351C:
	add r1, sp, #0xc
	ldr r0, [r5, #8]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	ldr r0, [r5, #0x18]
	add r3, sp, #0xc
	asr r0, r0, #8
	strh r0, [r3, #2]
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, #8]
	bl sub_0200D4C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02243542:
	ldrh r2, [r5, #0x1e]
	ldr r1, [r5, #0x14]
	add r0, r5, #0
	add r1, r2, r1
	strh r1, [r5, #0x1e]
	ldrh r2, [r5, #0x1e]
	ldr r1, _02243650 ; =0x00008CA0
	add r0, #0x1e
	cmp r2, r1
	blo _0224355C
	ldrh r2, [r0]
	sub r1, r2, r1
	strh r1, [r0]
_0224355C:
	mov r0, #3
	ldr r1, [r5, #0x10]
	lsl r0, r0, #8
	cmp r1, r0
	bls _0224356A
	sub r0, r1, r0
	b _0224356C
_0224356A:
	mov r0, #0
_0224356C:
	str r0, [r5, #0x10]
	mov r0, #2
	ldr r1, [r5, #0x10]
	lsl r0, r0, #8
	cmp r1, r0
	bhi _02243586
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x20
	strb r1, [r0]
_02243586:
	ldr r0, [r5, #0x10]
	mov r1, #0x64
	lsr r4, r0, #8
	ldrh r0, [r5, #0x1e]
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	str r0, [sp]
	lsl r6, r4, #0xc
	ldrh r0, [r5, #0x1e]
	mov r1, #0x64
	asr r7, r6, #0x1f
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	str r0, [sp, #4]
	ldr r0, [sp]
	add r2, r6, #0
	asr r1, r0, #0x1f
	add r3, r7, #0
	bl sub_020E1F1C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, r1, #0
	asr r1, r0, #0x1f
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020E1F1C
	mov r3, #2
	add r2, r1, #0
	add r1, r5, #0
	add r7, r0, #0
	add r1, #0x21
	ldr r6, [sp, #8]
	lsl r3, r3, #0xa
	add r6, r6, r3
	ldr r3, _02243654 ; =0x00000000
	ldrb r1, [r1]
	adc r4, r3
	lsl r3, r4, #0x14
	lsr r4, r6, #0xc
	orr r4, r3
	asr r3, r4, #0xb
	lsr r3, r3, #0x14
	add r3, r4, r3
	asr r3, r3, #0xc
	add r1, r1, r3
	mov r4, #2
	ldr r0, [r5, #8]
	lsl r1, r1, #0x10
	add r5, #0x22
	lsl r4, r4, #0xa
	asr r1, r1, #0x10
	ldrb r3, [r5]
	add r5, r7, r4
	ldr r4, _02243654 ; =0x00000000
	adc r2, r4
	lsl r2, r2, #0x14
	lsr r4, r5, #0xc
	orr r4, r2
	asr r2, r4, #0xb
	lsr r2, r2, #0x14
	add r2, r4, r2
	asr r2, r2, #0xc
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02243624:
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, _02243658 ; =0x000005E1
	bl sub_02005748
	ldr r0, [r5, #4]
	bl ov17_022414B0
	ldr r1, [r5, #0xc]
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243650: .word 0x00008CA0
_02243654: .word 0x00000000
_02243658: .word 0x000005E1
	thumb_func_end ov17_022434E0

	thumb_func_start ov17_0224365C
ov17_0224365C: ; 0x0224365C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl sub_020C4CF4
	str r5, [r4, #0]
	ldr r0, _02243688 ; =ov17_022436A4
	ldr r2, _0224368C ; =0x00009C40
	add r1, r4, #0
	strb r6, [r4, #8]
	bl sub_0200D9E8
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02243688: .word ov17_022436A4
_0224368C: .word 0x00009C40
	thumb_func_end ov17_0224365C

	thumb_func_start ov17_02243690
ov17_02243690: ; 0x02243690
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02243690

	thumb_func_start ov17_022436A4
ov17_022436A4: ; 0x022436A4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x13
	add r6, r1, #0
	add r5, r4, #0
	lsl r7, r7, #4
_022436B0:
	ldrb r2, [r6, #8]
	mov r1, #0x14
	ldr r0, [r6, #0]
	mul r1, r2
	add r0, r0, r1
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _022436C6
	bl sub_0200D330
_022436C6:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _022436B0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022436A4

	thumb_func_start ov17_022436D0
ov17_022436D0: ; 0x022436D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0x30
	mul r0, r2
	add r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x14
	add r2, r3, #0
	mul r2, r1
	ldr r1, [sp]
	ldr r5, [sp, #0x20]
	mov r7, #0
	strb r7, [r5]
	add r6, r1, r2
	str r0, [sp, #4]
_022436F2:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0224373C
	mov r0, #0x15
	mov r1, #0x28
	bl sub_02018144
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	ldr r2, _02243748 ; =0x00009C40
	str r0, [r4, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	str r0, [r4, #4]
	str r5, [r4, #8]
	mov r0, #0x28
	strb r0, [r4, #0xf]
	ldr r0, [sp, #4]
	strb r0, [r4, #0x10]
	ldrb r1, [r5]
	mov r0, #0xc
	mul r0, r1
	strh r0, [r4, #0x24]
	ldr r0, _0224374C ; =ov17_02243750
	add r1, r4, #0
	bl sub_0200D9E8
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_0224373C:
	add r7, r7, #1
	add r6, r6, #4
	cmp r7, #5
	blt _022436F2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243748: .word 0x00009C40
_0224374C: .word ov17_02243750
	thumb_func_end ov17_022436D0

	thumb_func_start ov17_02243750
ov17_02243750: ; 0x02243750
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0224376A
	cmp r0, #1
	beq _022437AA
	cmp r0, #2
	bne _02243768
	b _022438D2
_02243768:
	b _0224390A
_0224376A:
	mov r0, #0x24
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0224377A
	sub r0, r0, #1
	add sp, #8
	strh r0, [r5, #0x24]
	pop {r3, r4, r5, r6, r7, pc}
_0224377A:
	add r1, sp, #4
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	add r2, sp, #4
	mov r1, #0
	ldrsh r0, [r2, r1]
	add r0, r0, #6
	strh r0, [r2]
	mov r0, #2
	ldrsh r0, [r2, r0]
	lsl r0, r0, #8
	str r0, [r5, #0x1c]
	ldrsh r0, [r2, r1]
	lsl r0, r0, #8
	str r0, [r5, #0x20]
	ldr r0, _02243930 ; =0x000007F9
	bl sub_02005748
	ldrb r0, [r5, #0xe]
	add r0, r0, #1
	strb r0, [r5, #0xe]
_022437AA:
	ldrh r2, [r5, #0xc]
	mov r1, #2
	lsl r1, r1, #0xa
	add r1, r2, r1
	strh r1, [r5, #0xc]
	ldrh r2, [r5, #0xc]
	ldr r1, _02243934 ; =0x00008CA0
	add r0, r5, #0
	add r0, #0xc
	cmp r2, r1
	blo _022437C6
	ldrh r2, [r0]
	sub r1, r2, r1
	strh r1, [r0]
_022437C6:
	ldrh r0, [r5, #0xc]
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	add r4, r0, #0
	ldrh r0, [r5, #0xc]
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	mov r2, #3
	add r0, #0x80
	str r0, [r5, #0x20]
	asr r1, r4, #0x1f
	add r0, r4, #0
	lsl r2, r2, #0xe
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #6
	str r0, [sp]
	add r4, r1, #0
	asr r1, r6, #0x1f
	add r0, r6, #0
	lsl r2, r2, #0xc
	mov r3, #0
	bl sub_020E1F1C
	add r2, r1, #0
	ldr r1, [r5, #0x1c]
	mov r6, #2
	add r7, r0, #0
	ldr r3, [sp]
	lsl r6, r6, #0xa
	asr r1, r1, #8
	add r6, r3, r6
	ldr r3, _02243938 ; =0x00000000
	ldr r0, [r5, #4]
	adc r4, r3
	lsl r3, r4, #0x14
	lsr r4, r6, #0xc
	orr r4, r3
	asr r3, r4, #0xb
	lsr r3, r3, #0x14
	add r3, r4, r3
	asr r3, r3, #0xc
	add r1, r1, r3
	ldr r3, [r5, #0x20]
	mov r4, #2
	lsl r1, r1, #0x10
	ldr r6, _02243938 ; =0x00000000
	lsl r4, r4, #0xa
	asr r1, r1, #0x10
	asr r3, r3, #8
	add r4, r7, r4
	adc r2, r6
	lsl r6, r2, #0x14
	lsr r2, r4, #0xc
	orr r2, r6
	asr r4, r2, #0xb
	lsr r4, r4, #0x14
	add r4, r2, r4
	asr r2, r4, #0xc
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r0, #0x24
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, #0x24]
	ldrsh r0, [r5, r0]
	cmp r0, #0x50
	ble _0224392C
	mov r0, #0
	strh r0, [r5, #0x24]
	add r1, sp, #4
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	add r2, sp, #4
	mov r0, #2
	ldrsh r0, [r2, r0]
	lsl r1, r0, #8
	str r1, [r5, #0x1c]
	mov r1, #0
	ldrsh r6, [r2, r1]
	lsl r1, r6, #8
	str r1, [r5, #0x20]
	ldrb r1, [r5, #0xf]
	sub r0, r0, r1
	bpl _02243898
	neg r0, r0
_02243898:
	ldrb r1, [r5, #0x10]
	lsl r0, r0, #8
	sub r4, r6, r1
	bpl _022438A2
	neg r4, r4
_022438A2:
	mov r1, #3
	lsl r1, r1, #8
	str r1, [r5, #0x14]
	bl sub_020E1F6C
	add r1, r0, #0
	lsl r0, r4, #8
	bl sub_020E1F6C
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0x10]
	cmp r0, r6
	bge _022438C2
	ldr r0, [r5, #0x18]
	neg r0, r0
	str r0, [r5, #0x18]
_022438C2:
	ldr r0, _0224393C ; =0x000006EA
	bl sub_02005748
	ldrb r0, [r5, #0xe]
	add sp, #8
	add r0, r0, #1
	strb r0, [r5, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022438D2:
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	sub r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [r5, #0x20]
	ldrb r0, [r5, #0xf]
	lsl r1, r0, #8
	ldr r0, [r5, #0x1c]
	cmp r0, r1
	bgt _022438F4
	str r1, [r5, #0x1c]
	ldrb r0, [r5, #0xe]
	add r0, r0, #1
	strb r0, [r5, #0xe]
_022438F4:
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	lsl r1, r1, #8
	lsl r2, r2, #8
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224390A:
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, _02243940 ; =0x000005E1
	bl sub_02005748
	ldr r1, [r5, #8]
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224392C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243930: .word 0x000007F9
_02243934: .word 0x00008CA0
_02243938: .word 0x00000000
_0224393C: .word 0x000006EA
_02243940: .word 0x000005E1
	thumb_func_end ov17_02243750

	thumb_func_start ov17_02243944
ov17_02243944: ; 0x02243944
	push {r4}
	sub sp, #0xc
	ldr r3, _0224396C ; =0x022536B8
	add r2, sp, #0
	ldrh r4, [r3, #0x14]
	add r1, sp, #0
	lsl r0, r0, #1
	strh r4, [r2]
	ldrh r4, [r3, #0x16]
	strh r4, [r2, #2]
	ldrh r4, [r3, #0x18]
	strh r4, [r2, #4]
	ldrh r4, [r3, #0x1a]
	ldrh r3, [r3, #0x1c]
	strh r4, [r2, #6]
	strh r3, [r2, #8]
	ldrh r0, [r1, r0]
	add sp, #0xc
	pop {r4}
	bx lr
	; .align 2, 0
_0224396C: .word 0x022536B8
	thumb_func_end ov17_02243944

	thumb_func_start ov17_02243970
ov17_02243970: ; 0x02243970
	push {r4}
	sub sp, #0xc
	ldr r3, _02243998 ; =0x022536B8
	add r2, sp, #0
	ldrh r4, [r3, #0xa]
	add r1, sp, #0
	lsl r0, r0, #1
	strh r4, [r2]
	ldrh r4, [r3, #0xc]
	strh r4, [r2, #2]
	ldrh r4, [r3, #0xe]
	strh r4, [r2, #4]
	ldrh r4, [r3, #0x10]
	ldrh r3, [r3, #0x12]
	strh r4, [r2, #6]
	strh r3, [r2, #8]
	ldrh r0, [r1, r0]
	add sp, #0xc
	pop {r4}
	bx lr
	; .align 2, 0
_02243998: .word 0x022536B8
	thumb_func_end ov17_02243970

	thumb_func_start ov17_0224399C
ov17_0224399C: ; 0x0224399C
	push {r4}
	sub sp, #0xc
	ldr r3, _022439C4 ; =0x022536B8
	add r2, sp, #0
	ldrh r4, [r3]
	add r1, sp, #0
	lsl r0, r0, #1
	strh r4, [r2]
	ldrh r4, [r3, #2]
	strh r4, [r2, #2]
	ldrh r4, [r3, #4]
	strh r4, [r2, #4]
	ldrh r4, [r3, #6]
	ldrh r3, [r3, #8]
	strh r4, [r2, #6]
	strh r3, [r2, #8]
	ldrh r0, [r1, r0]
	add sp, #0xc
	pop {r4}
	bx lr
	; .align 2, 0
_022439C4: .word 0x022536B8
	thumb_func_end ov17_0224399C

	thumb_func_start ov17_022439C8
ov17_022439C8: ; 0x022439C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	strh r5, [r4, #4]
	cmp r5, #0x8f
	bgt _022439FE
	bge _02243A36
	cmp r5, #0x4c
	bgt _022439F0
	bge _02243A36
	cmp r5, #0xd
	beq _02243A36
	pop {r3, r4, r5, r6, r7, pc}
_022439F0:
	cmp r5, #0x77
	bgt _022439F8
	beq _02243A74
	pop {r3, r4, r5, r6, r7, pc}
_022439F8:
	cmp r5, #0x82
	beq _02243A36
	pop {r3, r4, r5, r6, r7, pc}
_022439FE:
	ldr r1, _02243A90 ; =0x0000010B
	cmp r5, r1
	bgt _02243A1E
	bge _02243A7A
	cmp r5, #0xae
	bgt _02243A0E
	beq _02243A48
	pop {r3, r4, r5, r6, r7, pc}
_02243A0E:
	cmp r5, #0xda
	bgt _02243A8E
	cmp r5, #0xd8
	blt _02243A8E
	beq _02243A3C
	cmp r5, #0xda
	beq _02243A42
	pop {r3, r4, r5, r6, r7, pc}
_02243A1E:
	add r0, r1, #0
	add r0, #0xd
	cmp r5, r0
	bgt _02243A2E
	add r1, #0xd
	cmp r5, r1
	beq _02243A80
	pop {r3, r4, r5, r6, r7, pc}
_02243A2E:
	add r1, #0xc8
	cmp r5, r1
	beq _02243A86
	pop {r3, r4, r5, r6, r7, pc}
_02243A36:
	mov r0, #1
	strb r0, [r4, #6]
	pop {r3, r4, r5, r6, r7, pc}
_02243A3C:
	mov r0, #0xff
	strb r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02243A42:
	mov r0, #0
	strb r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02243A48:
	lsl r5, r7, #2
	ldr r0, [r6, r5]
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [r6, r5]
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	cmp r7, #7
	beq _02243A68
	cmp r0, #7
	bne _02243A6E
_02243A68:
	mov r0, #1
	strb r0, [r4, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02243A6E:
	mov r0, #0
	strb r0, [r4, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02243A74:
	mov r0, #1
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02243A7A:
	mov r0, #0xa1
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02243A80:
	mov r0, #1
	strb r0, [r4, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02243A86:
	mov r0, #1
	strb r0, [r4, #6]
	ldr r0, _02243A94 ; =0x200400C0
	str r0, [r4, #0]
_02243A8E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243A90: .word 0x0000010B
_02243A94: .word 0x200400C0
	thumb_func_end ov17_022439C8

	thumb_func_start ov17_02243A98
ov17_02243A98: ; 0x02243A98
	cmp r2, #0
	bne _02243AA0
	mov r0, #0
	bx lr
_02243AA0:
	lsl r3, r1, #1
	add r3, r0, r3
	ldrh r3, [r3, #0x26]
	cmp r2, r3
	bne _02243ABE
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0xe0
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r2, r0
	beq _02243ABE
	mov r0, #0
	bx lr
_02243ABE:
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02243A98

	thumb_func_start ov17_02243AC4
ov17_02243AC4: ; 0x02243AC4
	push {r3, r4}
	add r1, r0, r1
	ldrb r4, [r1, #0xe]
	mov r3, #0
	add r2, r3, #0
_02243ACE:
	add r1, r0, r2
	ldrb r1, [r1, #0xe]
	cmp r1, r4
	bne _02243AD8
	add r3, r3, #1
_02243AD8:
	add r2, r2, #1
	cmp r2, #4
	blt _02243ACE
	sub r0, r3, #1
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_02243AC4

	thumb_func_start ov17_02243AE4
ov17_02243AE4: ; 0x02243AE4
	ldr r1, _02243AEC ; =0x022539AC
	ldrb r0, [r1, r0]
	bx lr
	nop
_02243AEC: .word 0x022539AC
	thumb_func_end ov17_02243AE4

	thumb_func_start ov17_02243AF0
ov17_02243AF0: ; 0x02243AF0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0xb
	bl sub_020790C4
	lsl r1, r4, #2
	add r2, r4, r1
	ldr r1, _02243B08 ; =0x022539C8
	add r1, r1, r2
	ldrsb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02243B08: .word 0x022539C8
	thumb_func_end ov17_02243AF0

	thumb_func_start ov17_02243B0C
ov17_02243B0C: ; 0x02243B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0
	mov lr, r0
	add r2, sp, #8
	add r1, sp, #4
	add r7, r3, #0
	add r0, sp, #0
	mov r6, #0x1a
	b _02243B46
_02243B20:
	lsl r4, r3, #1
	mov r5, lr
	add r5, r5, r4
	ldrsh r5, [r5, r6]
	strb r3, [r1, r3]
	strh r5, [r2, r4]
	add r4, r7, #0
	b _02243B40
_02243B30:
	mov r5, lr
	add r5, r5, r4
	ldrb r5, [r5, #1]
	cmp r3, r5
	bne _02243B3E
	strb r4, [r0, r3]
	b _02243B44
_02243B3E:
	add r4, r4, #1
_02243B40:
	cmp r4, #4
	blt _02243B30
_02243B44:
	add r3, r3, #1
_02243B46:
	cmp r3, #4
	blt _02243B20
	mov r3, #0
	ldr r6, _02243C1C ; =0x022539B8
	add r1, sp, #8
	ldr r0, _02243C20 ; =0x022539B0
	ldr r2, _02243C24 ; =0x022539C0
	mov r7, #0x2c
	b _02243BA8
_02243B58:
	add r5, r3, #0
	mul r5, r7
	mov r4, lr
	add r4, r4, r5
	ldr r4, [r4, #0x58]
	lsl r5, r4, #0x1a
	lsr r5, r5, #0x1e
	cmp r5, #3
	bhi _02243BA6
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02243B76: ; jump table
	.short _02243BA6 - _02243B76 - 2 ; case 0
	.short _02243B7E - _02243B76 - 2 ; case 1
	.short _02243B8C - _02243B76 - 2 ; case 2
	.short _02243B9A - _02243B76 - 2 ; case 3
_02243B7E:
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	lsl r4, r4, #1
	ldrsh r5, [r2, r4]
	lsl r4, r3, #1
	strh r5, [r1, r4]
	b _02243BA6
_02243B8C:
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	lsl r4, r4, #1
	ldrsh r5, [r0, r4]
	lsl r4, r3, #1
	strh r5, [r1, r4]
	b _02243BA6
_02243B9A:
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	lsl r4, r4, #1
	ldrsh r5, [r6, r4]
	lsl r4, r3, #1
	strh r5, [r1, r4]
_02243BA6:
	add r3, r3, #1
_02243BA8:
	cmp r3, #4
	blt _02243B58
	mov r3, #0
	b _02243BFE
_02243BB0:
	mov r4, #3
	add r2, sp, #8
	add r7, sp, #0
	b _02243BF8
_02243BB8:
	sub r1, r4, #1
	lsl r0, r1, #1
	lsl r5, r4, #1
	ldrsh r0, [r2, r0]
	ldrsh r5, [r2, r5]
	cmp r0, r5
	bgt _02243BD2
	cmp r0, r5
	bne _02243BF6
	ldrb r1, [r7, r1]
	ldrb r0, [r7, r4]
	cmp r1, r0
	bhs _02243BF6
_02243BD2:
	sub r0, r4, #1
	lsl r1, r4, #1
	lsl r5, r0, #1
	mov ip, r5
	ldrsh r6, [r2, r1]
	ldrsh r5, [r2, r5]
	strh r5, [r2, r1]
	mov r1, ip
	strh r6, [r2, r1]
	add r1, sp, #4
	ldrb r6, [r1, r4]
	ldrb r5, [r1, r0]
	strb r5, [r1, r4]
	strb r6, [r1, r0]
	ldrb r5, [r7, r4]
	ldrb r1, [r7, r0]
	strb r1, [r7, r4]
	strb r5, [r7, r0]
_02243BF6:
	sub r4, r4, #1
_02243BF8:
	cmp r4, r3
	bgt _02243BB8
	add r3, r3, #1
_02243BFE:
	cmp r3, #3
	blt _02243BB0
	mov r3, #0
	add r2, sp, #4
	b _02243C12
_02243C08:
	ldrb r1, [r2, r3]
	mov r0, lr
	add r0, r0, r3
	strb r1, [r0, #1]
	add r3, r3, #1
_02243C12:
	cmp r3, #4
	blt _02243C08
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243C1C: .word 0x022539B8
_02243C20: .word 0x022539B0
_02243C24: .word 0x022539C0
	thumb_func_end ov17_02243B0C

	thumb_func_start ov17_02243C28
ov17_02243C28: ; 0x02243C28
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02243C60 ; =0x022539E4
	add r3, sp, #0
	str r1, [sp]
	mov r1, #0x16
	strh r1, [r3, #4]
	ldr r1, [r0, #0]
	ldr r2, _02243C64 ; =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	sub r1, r2, #7
	ldr r4, [r0, #0]
	add r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0, #0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	mov r1, #0xc3
	lsl r1, r1, #4
	add r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02243C60: .word 0x022539E4
_02243C64: .word 0x00000123
	thumb_func_end ov17_02243C28

	thumb_func_start ov17_02243C68
ov17_02243C68: ; 0x02243C68
	push {r3, lr}
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	mov r3, #0
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243C68

	thumb_func_start ov17_02243C80
ov17_02243C80: ; 0x02243C80
	push {r3, lr}
	mov r0, #0xc3
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r2, #0
	mov r2, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	thumb_func_end ov17_02243C80

	thumb_func_start ov17_02243C94
ov17_02243C94: ; 0x02243C94
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02243C94

	thumb_func_start ov17_02243C98
ov17_02243C98: ; 0x02243C98
	push {r3, lr}
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	mov r3, #0
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243C98

	thumb_func_start ov17_02243CB0
ov17_02243CB0: ; 0x02243CB0
	push {r3, r4, r5, lr}
	ldr r0, _02243CD8 ; =0x00001650
	add r5, r1, #0
	mov r1, #1
	strb r1, [r5, r0]
	ldr r0, [r5, #0]
	add r4, r2, #0
	bl sub_02094EDC
	cmp r0, #0
	bne _02243CD6
	mov r0, #0xc3
	lsl r0, r0, #4
	mov r2, #0
	add r0, r5, r0
	add r1, r4, #0
	add r3, r2, #0
	bl ov17_0224F26C
_02243CD6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02243CD8: .word 0x00001650
	thumb_func_end ov17_02243CB0

	thumb_func_start ov17_02243CDC
ov17_02243CDC: ; 0x02243CDC
	push {r3, lr}
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	mov r3, #0
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243CDC

	thumb_func_start ov17_02243CF4
ov17_02243CF4: ; 0x02243CF4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0x10
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02243D2C ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02243D30 ; =ov17_02243D34
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_02243D2C: .word 0x00007530
_02243D30: .word ov17_02243D34
	thumb_func_end ov17_02243CF4

	thumb_func_start ov17_02243D34
ov17_02243D34: ; 0x02243D34
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r1, [r4, #0xf]
	add r5, r0, #0
	cmp r1, #0
	beq _02243D4C
	cmp r1, #1
	beq _02243D6A
	cmp r1, #2
	beq _02243D84
	b _02243D92
_02243D4C:
	mov r1, #0
	add r0, r4, #0
	str r1, [sp]
	add r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #0x46
	bl ov17_022431A0
	ldrb r0, [r4, #0xf]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
_02243D6A:
	ldrh r0, [r4, #0xc]
	add r0, r0, #1
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	cmp r0, #0x1e
	bls _02243DB0
	mov r0, #0
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #0xf]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
_02243D84:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _02243DB0
	add r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
_02243D92:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02243DB0:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02243D34

	thumb_func_start ov17_02243DB4
ov17_02243DB4: ; 0x02243DB4
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243DB4

	thumb_func_start ov17_02243DCC
ov17_02243DCC: ; 0x02243DCC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r0, #0x15
	mov r1, #0x1c
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02243E24 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	add r0, r6, #0
	add r0, #0xe4
	ldrb r0, [r0]
	strb r0, [r4, #0x18]
	add r0, r6, #0
	add r0, #0xd8
	ldrh r0, [r0]
	strh r0, [r4, #0x12]
	add r0, r6, #0
	add r0, #0xda
	ldrh r0, [r0]
	add r6, #0xdc
	strh r0, [r4, #0x14]
	ldrh r0, [r6]
	strh r0, [r4, #0x16]
	ldr r0, _02243E28 ; =ov17_02243E2C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243E24: .word 0x00007530
_02243E28: .word ov17_02243E2C
	thumb_func_end ov17_02243DCC

	thumb_func_start ov17_02243E2C
ov17_02243E2C: ; 0x02243E2C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bhi _02243ED2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02243E46: ; jump table
	.short _02243E50 - _02243E46 - 2 ; case 0
	.short _02243E72 - _02243E46 - 2 ; case 1
	.short _02243E8C - _02243E46 - 2 ; case 2
	.short _02243EA6 - _02243E46 - 2 ; case 3
	.short _02243EC4 - _02243E46 - 2 ; case 4
_02243E50:
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	beq _02243E62
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x12
	mov r3, #0
	bl ov17_02242E5C
_02243E62:
	ldr r0, _02243EF4 ; =0x000006F9
	bl sub_02005748
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243E72:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _02243E82
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02243EF0
_02243E82:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243E8C:
	ldrh r0, [r4, #0xe]
	add r0, r0, #1
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xe]
	cmp r0, #0x1e
	bls _02243EF0
	mov r0, #0
	strh r0, [r4, #0xe]
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243EA6:
	mov r1, #0
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #0x46
	bl ov17_022431A0
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243EC4:
	ldrb r1, [r4, #0x10]
	cmp r1, #1
	bne _02243EF0
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243ED2:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02243EF0:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02243EF4: .word 0x000006F9
	thumb_func_end ov17_02243E2C

	thumb_func_start ov17_02243EF8
ov17_02243EF8: ; 0x02243EF8
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243EF8

	thumb_func_start ov17_02243F10
ov17_02243F10: ; 0x02243F10
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0x1c
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	add r2, r4, #0
	mov r1, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	add r2, #0x16
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r7]
	strb r0, [r4, #0x15]
	add r0, r6, #0
	bl ov17_022426E8
	ldr r0, _02243F60 ; =ov17_02243F68
	ldr r2, _02243F64 ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	add r0, r6, #0
	bl ov17_02242DA8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243F60: .word ov17_02243F68
_02243F64: .word 0x00007530
	thumb_func_end ov17_02243F10

	thumb_func_start ov17_02243F68
ov17_02243F68: ; 0x02243F68
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x15]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020765AC
	add r5, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bls _02243F88
	b _02244092
_02243F88:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02243F94: ; jump table
	.short _02243F9C - _02243F94 - 2 ; case 0
	.short _02243FB8 - _02243F94 - 2 ; case 1
	.short _0224401A - _02243F94 - 2 ; case 2
	.short _02244034 - _02243F94 - 2 ; case 3
_02243F9C:
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x18]
	ldrsh r0, [r4, r0]
	cmp r0, #0xa
	bgt _02243FAC
	b _022440B6
_02243FAC:
	mov r0, #0
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_02243FB8:
	ldrb r0, [r4, #0x15]
	mov r1, #0
	lsl r5, r0, #2
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, r5]
	bl sub_020765AC
	add r6, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x25
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #6
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r2, #1
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r1, #0
	lsl r2, r2, #8
	bl sub_02007DEC
	ldr r0, [r4, #0]
	add r6, #0xac
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r1, #1
	add r2, r6, #0
	bl sub_02007DEC
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x2b
	lsl r0, r0, #0xa
	str r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224401A:
	ldr r0, [r4, #0]
	ldrb r2, [r4, #0x15]
	ldr r1, [r0, #0]
	ldr r0, _022440B8 ; =0x00000123
	ldrb r0, [r1, r0]
	cmp r2, r0
	bne _0224402E
	ldr r0, _022440BC ; =0x000006F8
	bl sub_02005748
_0224402E:
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
_02244034:
	ldr r1, [r4, #0xc]
	ldr r0, _022440C0 ; =0x000005B6
	sub r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, _022440C4 ; =0x00000892
	sub r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	asr r0, r0, #8
	cmp r0, #0xd8
	ble _02244054
	ldr r0, [r4, #0x10]
	asr r0, r0, #8
	cmp r0, #0x70
	bgt _02244066
_02244054:
	mov r0, #0x36
	lsl r0, r0, #0xa
	str r0, [r4, #0xc]
	mov r0, #7
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
_02244066:
	ldrb r0, [r4, #0x15]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldrb r0, [r4, #0x15]
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	asr r2, r2, #8
	ldr r0, [r0, #0x14]
	mov r1, #1
	add r2, r2, r5
	bl sub_02007DEC
	pop {r4, r5, r6, pc}
_02244092:
	ldrb r0, [r4, #0x16]
	cmp r0, #1
	bne _022440B6
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_022440B6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022440B8: .word 0x00000123
_022440BC: .word 0x000006F8
_022440C0: .word 0x000005B6
_022440C4: .word 0x00000892
	thumb_func_end ov17_02243F68

	thumb_func_start ov17_022440C8
ov17_022440C8: ; 0x022440C8
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_022440C8

	thumb_func_start ov17_022440E0
ov17_022440E0: ; 0x022440E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0x1c
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r7]
	strb r0, [r4, #0x15]
	ldr r1, [r6, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020765AC
	mov r0, #0x36
	lsl r0, r0, #0xa
	str r0, [r4, #0xc]
	mov r0, #7
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	ldr r0, _02244134 ; =ov17_0224413C
	ldr r2, _02244138 ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244134: .word ov17_0224413C
_02244138: .word 0x00007530
	thumb_func_end ov17_022440E0

	thumb_func_start ov17_0224413C
ov17_0224413C: ; 0x0224413C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldrb r0, [r5, #0x15]
	mov r1, #0
	lsl r4, r0, #2
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, r4]
	bl sub_020765AC
	add r6, r0, #0
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _02244160
	cmp r0, #1
	beq _022441D2
	b _022441FA
_02244160:
	ldr r1, [r5, #0xc]
	ldr r0, _0224421C ; =0x000005B6
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	ldr r0, _02244220 ; =0x00000892
	add r0, r1, r0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0xc]
	asr r1, r0, #8
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	bge _02244184
	ldr r0, [r5, #0x10]
	asr r0, r0, #8
	cmp r0, #0xac
	blt _022441A6
_02244184:
	ldr r0, [r5, #0]
	mov r1, #0x25
	add r0, r0, r4
	ldr r0, [r0, #0x14]
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #6
	add r0, r0, r4
	ldr r0, [r0, #0x14]
	mov r2, #1
	bl sub_02007DEC
	ldrb r0, [r5, #0x14]
	add r0, r0, #1
	strb r0, [r5, #0x14]
_022441A6:
	ldrb r0, [r5, #0x15]
	ldr r2, [r5, #0xc]
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldrb r0, [r5, #0x15]
	ldr r2, [r5, #0x10]
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	asr r2, r2, #8
	ldr r0, [r0, #0x14]
	mov r1, #1
	add r2, r2, r6
	bl sub_02007DEC
	pop {r3, r4, r5, r6, r7, pc}
_022441D2:
	ldrb r1, [r5, #0x15]
	ldr r0, [r5, #0]
	ldr r2, _02244224 ; =0x00001652
	add r3, r0, r1
	ldrb r2, [r3, r2]
	cmp r2, #1
	bne _022441F2
	add r0, #0xc
	bl ov17_02241524
	ldrb r0, [r5, #0x15]
	ldr r1, [r5, #0]
	mov r2, #0
	add r1, r1, r0
	ldr r0, _02244224 ; =0x00001652
	strb r2, [r1, r0]
_022441F2:
	ldrb r0, [r5, #0x14]
	add r0, r0, #1
	strb r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_022441FA:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224421C: .word 0x000005B6
_02244220: .word 0x00000892
_02244224: .word 0x00001652
	thumb_func_end ov17_0224413C

	thumb_func_start ov17_02244228
ov17_02244228: ; 0x02244228
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244228

	thumb_func_start ov17_02244240
ov17_02244240: ; 0x02244240
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r0, #0x15
	mov r1, #0x1c
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	ldr r2, _022442A4 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #2]
	strb r0, [r4, #0xe]
	add r0, r5, #0
	add r0, #0xe4
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	add r0, r5, #0
	add r0, #0xd8
	ldrh r0, [r0]
	strh r0, [r4, #0x14]
	add r0, r5, #0
	add r0, #0xda
	ldrh r0, [r0]
	strh r0, [r4, #0x16]
	add r0, r5, #0
	add r0, #0xdc
	ldrh r0, [r0]
	strh r0, [r4, #0x18]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0x10]
	ldr r0, _022442A8 ; =ov17_022442AC
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022442A4: .word 0x00007530
_022442A8: .word ov17_022442AC
	thumb_func_end ov17_02244240

	thumb_func_start ov17_022442AC
ov17_022442AC: ; 0x022442AC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bhi _022443BA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022442C6: ; jump table
	.short _022442D8 - _022442C6 - 2 ; case 0
	.short _02244314 - _022442C6 - 2 ; case 1
	.short _02244322 - _022442C6 - 2 ; case 2
	.short _0224432A - _022442C6 - 2 ; case 3
	.short _0224434E - _022442C6 - 2 ; case 4
	.short _02244362 - _022442C6 - 2 ; case 5
	.short _0224436A - _022442C6 - 2 ; case 6
	.short _0224438E - _022442C6 - 2 ; case 7
	.short _0224439C - _022442C6 - 2 ; case 8
_022442D8:
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #0]
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, _022443DC ; =0x00000242
	ldrsh r0, [r1, r0]
	bl ov17_02243174
	add r3, r0, #0
	cmp r3, #0
	ble _02244302
	mov r1, #0
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x12
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov17_022431A0
	b _0224430A
_02244302:
	mov r0, #2
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224430A:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244314:
	ldrb r1, [r4, #0x12]
	cmp r1, #1
	bne _022443D8
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244322:
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224432A:
	ldrb r1, [r4, #0x1a]
	cmp r1, #0
	beq _02244346
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x14
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244346:
	mov r0, #5
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224434E:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022443D8
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244362:
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224436A:
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xe]
	ldrb r2, [r4, #0x10]
	add r0, #0xc
	bl ov17_02241A8C
	add r3, r4, #0
	ldrb r1, [r4, #0xe]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0]
	add r3, #0xf
	bl ov17_02241B3C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224438E:
	ldrb r1, [r4, #0xf]
	cmp r1, #1
	bne _022443D8
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224439C:
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	cmp r0, #5
	bls _022443D8
	ldr r0, [r4, #0]
	add r0, #0xc
	bl ov17_02241B1C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022443BA:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_022443D8:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022443DC: .word 0x00000242
	thumb_func_end ov17_022442AC

	thumb_func_start ov17_022443E0
ov17_022443E0: ; 0x022443E0
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_022443E0

	thumb_func_start ov17_022443F8
ov17_022443F8: ; 0x022443F8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x49
	mov r0, #0x15
	lsl r1, r1, #2
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x49
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r1, [r5]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	add r1, r5, r2
	ldrh r1, [r1, #0x10]
	strh r1, [r4, #0xe]
	add r1, r5, #0
	add r1, #0xe4
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0xe2
	strb r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xd8
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0xdc
	strh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xda
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0xde
	strh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xdc
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0xe0
	strh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xe5
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0xea
	strb r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xde
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0xe4
	strh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xe0
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0xe6
	strh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xe2
	ldrh r1, [r1]
	add r0, #0xe8
	mov r2, #0x1e
	strh r1, [r4, r0]
_0224449E:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224449E
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	ldr r0, _022444B8 ; =ov17_022444BC
	mov r2, #5
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022444B8: .word ov17_022444BC
	thumb_func_end ov17_022443F8

	thumb_func_start ov17_022444BC
ov17_022444BC: ; 0x022444BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x118
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r6, r0, #0
	add r2, r4, #0
	mov r5, #0x2c
	add r0, r1, #0
	add r2, #0x24
	mul r0, r5
	add r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xe
	bls _022444DA
	b _0224492A
_022444DA:
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022444E6: ; jump table
	.short _02244504 - _022444E6 - 2 ; case 0
	.short _0224452C - _022444E6 - 2 ; case 1
	.short _02244540 - _022444E6 - 2 ; case 2
	.short _02244548 - _022444E6 - 2 ; case 3
	.short _0224456E - _022444E6 - 2 ; case 4
	.short _02244582 - _022444E6 - 2 ; case 5
	.short _0224458A - _022444E6 - 2 ; case 6
	.short _022445B2 - _022444E6 - 2 ; case 7
	.short _022445C8 - _022444E6 - 2 ; case 8
	.short _022445D0 - _022444E6 - 2 ; case 9
	.short _022445E4 - _022444E6 - 2 ; case 10
	.short _02244890 - _022444E6 - 2 ; case 11
	.short _022448E6 - _022444E6 - 2 ; case 12
	.short _02244906 - _022444E6 - 2 ; case 13
	.short _0224491C - _022444E6 - 2 ; case 14
_02244504:
	add r0, r5, #0
	add r0, #0xe2
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02244524
	add r5, #0xdc
	ldr r0, [r4, #0]
	add r2, r4, r5
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244524:
	mov r0, #2
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224452C:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022445BC
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244540:
	add r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244548:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02244566
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4, #0]
	add r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244566:
	mov r0, #5
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224456E:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022445BC
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244582:
	add r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224458A:
	add r0, r5, #0
	add r0, #0xea
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _022445AA
	add r5, #0xdc
	ldr r0, [r4, #0]
	add r2, r4, r5
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445AA:
	mov r0, #8
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445B2:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	beq _022445BE
_022445BC:
	b _02244948
_022445BE:
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445C8:
	add r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445D0:
	ldr r0, [r4, #0]
	ldrh r2, [r4, #0xe]
	add r5, #0xec
	ldr r0, [r0, #0]
	add r3, r4, r5
	bl ov17_022439C8
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_022445E4:
	ldrb r0, [r4, #0xd]
	add r5, r0, #1
	cmp r5, #4
	blt _022445EE
	mov r5, #0
_022445EE:
	add r0, sp, #0xc0
	mov r1, #0
	mov r2, #0x58
	bl sub_020C4CF4
	add r0, sp, #0x30
	mov r1, #0
	mov r2, #0x90
	bl sub_020C4CF4
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #5
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x6f
	bl sub_02074470
	str r0, [sp, #0x28]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02075E0C
	str r0, [sp, #0x20]
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x70
	bl sub_02074470
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	lsl r5, r5, #2
	ldr r0, [r0, #0xc]
	mov r1, #5
	ldr r0, [r0, r5]
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	mov r1, #0x6f
	ldr r0, [r0, #0xc]
	mov r2, #0
	ldr r0, [r0, r5]
	bl sub_02074470
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, r5]
	bl sub_02075E0C
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	mov r1, #0x70
	ldr r0, [r0, #0xc]
	mov r2, #0
	ldr r0, [r0, r5]
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0xc]
	add r2, r1, #0
	ldr r0, [r0, r5]
	bl sub_02074470
	mov r3, #0x47
	mov r1, #0
	add r2, sp, #0xc0
	strb r1, [r2]
	strb r1, [r2, #1]
	lsl r3, r3, #2
	str r0, [sp, #4]
	ldrh r0, [r4, r3]
	mov r5, #0xa
	strh r0, [r2, #2]
	mov r0, #1
	str r0, [sp, #0xc4]
	strh r5, [r2, #8]
	add r5, r3, #3
	ldrb r5, [r4, r5]
	add r3, r3, #4
	strh r5, [r2, #0xa]
	ldrb r3, [r4, r3]
	strh r3, [r2, #0xc]
	str r1, [sp, #0xd0]
	strh r1, [r2, #0x14]
	strh r0, [r2, #0x16]
	mov r0, #9
	str r0, [sp, #0x114]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
_022446E2:
	add r1, r1, #1
	strh r0, [r2, #0x18]
	add r2, r2, #2
	cmp r1, #4
	blt _022446E2
	ldr r0, [sp, #0x18]
	add r1, sp, #0xc0
	strh r0, [r1, #0x1a]
	ldr r0, [r4, #0]
	lsl r3, r7, #0x10
	ldr r0, [r0, #0x30]
	lsr r3, r3, #0x10
	str r0, [sp, #0x34]
	ldr r0, [r4, #0]
	str r3, [sp, #0x2c]
	ldr r0, [r0, #0x5c]
	ldr r3, [sp, #0x28]
	str r0, [sp, #0x38]
	ldrb r0, [r4, #0xd]
	lsl r3, r3, #0x18
	ldr r1, [r4, #0]
	lsr r3, r3, #0x18
	str r3, [sp, #0x24]
	ldr r3, [sp, #0x20]
	add r1, #0x64
	lsl r0, r0, #4
	add r0, r1, r0
	lsl r3, r3, #0x18
	str r0, [sp, #0x3c]
	ldr r0, [r4, #0]
	lsr r3, r3, #0x18
	mov ip, r3
	ldr r3, [sp, #0x1c]
	add r0, #0xa4
	str r0, [sp, #0x40]
	add r0, sp, #0x30
	lsl r3, r3, #0x18
	mov r6, #0
	add r1, r0, #0
	add r2, r0, #0
	lsr r7, r3, #0x18
_02244734:
	mov r3, #0xff
	strb r3, [r0, #0x1c]
	ldr r3, [sp, #0x2c]
	add r5, r0, #0
	strh r3, [r1, #0x34]
	ldr r3, [sp, #0x24]
	add r5, #0x3c
	strb r3, [r5]
	add r5, r0, #0
	add r5, #0x40
	mov r3, ip
	strb r3, [r5]
	add r3, r0, #0
	add r3, #0x44
	strb r7, [r3]
	ldr r3, [sp, #8]
	add r6, r6, #1
	str r3, [r2, #0x48]
	mov r3, #0
	str r3, [r2, #0x58]
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #4
	cmp r6, #4
	blt _02244734
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, sp, #0x30
	str r0, [sp, #0x88]
	add r0, r3, #0
	strb r0, [r2, #0x1c]
	mov r0, #1
	ldr r1, [sp, #0x18]
	strb r0, [r2, #0x1d]
	strh r1, [r2, #0x36]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x50
	strb r1, [r2, #0x1d]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x70
	strb r1, [r2, #1]
	ldr r1, [sp, #0xc]
	strb r1, [r2, #5]
	ldr r1, [sp, #4]
	str r1, [sp, #0x7c]
	ldrb r1, [r4, #0xd]
	ldr r2, [r4, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r1, [r1, #0x14]
	str r1, [sp, #0x50]
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	beq _022447A4
	add r0, r3, #0
_022447A4:
	lsl r5, r0, #2
	ldr r0, [r4, #0]
	mov r2, #0x57
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r1, #8
	str r1, [sp, #0x98]
	mov r1, #0x2d
	str r1, [sp, #0x9c]
	mov r1, #1
	str r1, [sp, #0xa0]
	mov r1, #0x1e
	str r0, [sp, #0x54]
	mov r0, #0
	str r1, [sp, #0xa4]
	mov r1, #2
	str r0, [sp, #0x60]
	str r0, [sp, #0xac]
	mov r0, #3
	str r1, [sp, #0xa8]
	str r0, [sp, #0xb0]
	ldr r0, [r4, #0]
	lsl r2, r2, #2
	ldr r0, [r0, #0x24]
	add r3, sp, #0x30
	str r0, [sp, #0x30]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, r2]
	sub r2, #0x40
	str r0, [sp, #0xb4]
	ldr r0, [r4, #0]
	ldrh r2, [r4, r2]
	ldr r0, [r0, #0x2c]
	add r1, sp, #0xc0
	bl ov12_0221FE30
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020765AC
	add r6, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0224494C ; =0xDFFBFF3F
	cmp r1, r0
	beq _02244824
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #0]
	mov r2, #0
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #6
	bl sub_02007DEC
_02244824:
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #0]
	mov r2, #0
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0x25
	bl sub_02007DEC
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #0]
	mov r2, #0xd8
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0
	bl sub_02007DEC
	ldrb r0, [r4, #0xd]
	add r6, #0x70
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #1
	add r2, r6, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #0x25
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r2, #0x50
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r2, #0x2a
	bl sub_02007DEC
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244890:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x2c]
	bl ov12_0222016C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x2c]
	bl ov12_02220188
	cmp r0, #0
	bne _02244948
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x2c]
	bl ov12_02220198
	add r1, r5, #0
	add r1, #0xf2
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _022448DC
	sub r0, r0, #1
	strb r0, [r4, r1]
	add r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #1
	strb r2, [r4, r0]
	sub r0, r1, #6
	ldr r2, [r4, r0]
	ldr r0, _02244950 ; =0x200400C0
	cmp r2, r0
	bne _022448D4
	ldr r2, _0224494C ; =0xDFFBFF3F
	sub r0, r1, #6
	str r2, [r4, r0]
_022448D4:
	mov r0, #0xa
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022448DC:
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022448E6:
	add r5, #0xf0
	ldrh r0, [r4, r5]
	cmp r0, #0x90
	beq _022448F2
	cmp r0, #0xa4
	bne _022448FC
_022448F2:
	ldr r0, [r4, #0]
	mov r2, #1
	add r1, r0, r1
	ldr r0, _02244954 ; =0x00001652
	strb r2, [r1, r0]
_022448FC:
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244906:
	add r2, r4, #0
	ldr r0, [r4, #0]
	mov r1, #1
	add r2, #0x10
	bl ov17_022426E8
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224491C:
	ldrb r1, [r4, #0x10]
	cmp r1, #1
	bne _02244948
	add r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224492A:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_02244948:
	add sp, #0x118
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224494C: .word 0xDFFBFF3F
_02244950: .word 0x200400C0
_02244954: .word 0x00001652
	thumb_func_end ov17_022444BC

	thumb_func_start ov17_02244958
ov17_02244958: ; 0x02244958
	push {r3, lr}
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	mov r3, #0
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244958

	thumb_func_start ov17_02244970
ov17_02244970: ; 0x02244970
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0x14
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	mov r2, #0x64
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r1, [r6, #0xc]
	ldr r0, _022449B0 ; =0x00000123
	ldrb r0, [r1, r0]
	add r1, r4, #0
	strb r0, [r4, #0xd]
	ldr r0, _022449B4 ; =ov17_022449B8
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_022449B0: .word 0x00000123
_022449B4: .word ov17_022449B8
	thumb_func_end ov17_02244970

	thumb_func_start ov17_022449B8
ov17_022449B8: ; 0x022449B8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xa
	bls _022449C8
	b _02244B56
_022449C8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022449D4: ; jump table
	.short _022449EA - _022449D4 - 2 ; case 0
	.short _02244A04 - _022449D4 - 2 ; case 1
	.short _02244A62 - _022449D4 - 2 ; case 2
	.short _02244A72 - _022449D4 - 2 ; case 3
	.short _02244AAC - _022449D4 - 2 ; case 4
	.short _02244AC0 - _022449D4 - 2 ; case 5
	.short _02244AC6 - _022449D4 - 2 ; case 6
	.short _02244AFA - _022449D4 - 2 ; case 7
	.short _02244B0A - _022449D4 - 2 ; case 8
	.short _02244B2E - _022449D4 - 2 ; case 9
	.short _02244B50 - _022449D4 - 2 ; case 10
_022449EA:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	mov r2, #0
	ldr r0, [r1, r0]
	mov r1, #1
	add r3, r2, #0
	bl ov17_0223F9C4
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244A04:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	mov r2, #0
	ldr r0, [r1, r0]
	mov r1, #2
	add r3, r2, #0
	bl ov17_0223F9C4
	mov r0, #0x23
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r2, r0, #1
	cmp r2, #4
	bne _02244A26
	mov r1, #3
	b _02244A28
_02244A26:
	mov r1, #2
_02244A28:
	add r0, sp, #0
	strb r2, [r0, #0xa]
	add r2, sp, #4
	ldr r0, [r4, #0]
	add r2, #2
	mov r3, #0
	bl ov17_02242E5C
	mov r0, #0x23
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r0, r0, #1
	cmp r0, #4
	bne _02244A58
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _02244A58
	ldr r0, _02244BA4 ; =0x000006F6
	bl sub_02005748
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
_02244A58:
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244A62:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02244A86
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244A72:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FAF8
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02244A88
_02244A86:
	b _02244B9C
_02244A88:
	ldr r0, [r4, #0]
	add r1, #0x36
	ldr r2, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x10]
	ldr r0, _02244BA8 ; =0x000005DD
	bl sub_02005748
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244AAC:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FBC0
	cmp r0, #0
	beq _02244B9C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244AC0:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244AC6:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	mov r2, #0
	ldr r0, [r1, r0]
	mov r1, #3
	add r3, r2, #0
	bl ov17_0223F9C4
	mov r0, #0x23
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r2, sp, #0
	mov r3, #0
	add r1, r0, #1
	add r0, sp, #0
	strb r1, [r0, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244AFA:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02244B9C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244B0A:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FAF8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02244B9C
	strh r0, [r4, #0x12]
	ldr r0, _02244BA8 ; =0x000005DD
	bl sub_02005748
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244B2E:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FBC0
	cmp r0, #0
	beq _02244B9C
	ldrh r0, [r4, #0x12]
	cmp r0, #3
	bne _02244B4A
	mov r0, #1
	add sp, #0xc
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244B4A:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244B50:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244B56:
	ldr r0, [r4, #0]
	ldr r1, _02244BAC ; =0x00000171
	ldr r2, [r0, #0]
	ldrb r1, [r2, r1]
	cmp r1, #1
	bne _02244B6C
	mov r2, #0
	mov r1, #0x2e
	add r3, r2, #0
	bl ov17_02242E5C
_02244B6C:
	mov r0, #0xc3
	add r2, r4, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r2, #0x10
	mov r3, #4
	bl ov17_0224F26C
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	ldr r0, [r1, r0]
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov17_0223F9C4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02244B9C:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02244BA0: .word 0x0000081C
_02244BA4: .word 0x000006F6
_02244BA8: .word 0x000005DD
_02244BAC: .word 0x00000171
	thumb_func_end ov17_022449B8

	thumb_func_start ov17_02244BB0
ov17_02244BB0: ; 0x02244BB0
	push {r4, r5}
	ldr r0, [sp, #8]
	lsl r2, r0, #2
	ldr r5, [r3, r2]
	lsl r2, r0, #1
	ldrh r4, [r5]
	add r3, r1, r2
	ldr r2, _02244BD0 ; =0x00000236
	add r0, r1, r0
	strh r4, [r3, r2]
	ldrh r3, [r5, #2]
	add r2, #8
	strb r3, [r0, r2]
	pop {r4, r5}
	bx lr
	nop
_02244BD0: .word 0x00000236
	thumb_func_end ov17_02244BB0

	thumb_func_start ov17_02244BD4
ov17_02244BD4: ; 0x02244BD4
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244BD4

	thumb_func_start ov17_02244BEC
ov17_02244BEC: ; 0x02244BEC
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02244BEC

	thumb_func_start ov17_02244BF0
ov17_02244BF0: ; 0x02244BF0
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244BF0

	thumb_func_start ov17_02244C08
ov17_02244C08: ; 0x02244C08
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02244C46:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02244C46
	ldr r0, [r5, #0]
	ldr r2, _02244C60 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02244C64 ; =ov17_02244C68
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244C60: .word 0x00007530
_02244C64: .word ov17_02244C68
	thumb_func_end ov17_02244C08

	thumb_func_start ov17_02244C68
ov17_02244C68: ; 0x02244C68
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	add r3, r4, #0
	add r2, r1, #0
	mov r0, #0x2c
	ldrb r1, [r4, #0xc]
	add r3, #0x24
	mul r2, r0
	add r2, r3, r2
	cmp r1, #4
	bhi _02244D00
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02244C8E: ; jump table
	.short _02244C98 - _02244C8E - 2 ; case 0
	.short _02244CA8 - _02244C8E - 2 ; case 1
	.short _02244CAE - _02244C8E - 2 ; case 2
	.short _02244CE6 - _02244C8E - 2 ; case 3
	.short _02244D00 - _02244C8E - 2 ; case 4
_02244C98:
	mov r0, #0x1a
	ldrsh r1, [r2, r0]
	add r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CA8:
	add r0, r1, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CAE:
	add r0, #0xdc
	mov r3, #0x18
	ldrsh r1, [r4, r0]
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bge _02244CE0
	add r0, r3, #0
	add r0, #0xf0
	ldrsh r1, [r4, r0]
	add r0, r3, #0
	add r0, #0xf0
	add r1, #0xa
	strh r1, [r4, r0]
	add r3, #0xf0
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r3]
	add r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CE0:
	mov r0, #4
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CE6:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02244D1E
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244D00:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02244D1E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02244C68

	thumb_func_start ov17_02244D20
ov17_02244D20: ; 0x02244D20
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244D20

	thumb_func_start ov17_02244D38
ov17_02244D38: ; 0x02244D38
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02244D76:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02244D76
	ldr r0, [r5, #0]
	ldr r2, _02244D90 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02244D94 ; =ov17_02244D98
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244D90: .word 0x00007530
_02244D94: .word ov17_02244D98
	thumb_func_end ov17_02244D38

	thumb_func_start ov17_02244D98
ov17_02244D98: ; 0x02244D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	str r0, [sp, #4]
	add r2, r4, #0
	mov r0, #0x2c
	add r2, #0x24
	mul r0, r1
	add r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0x10
	bls _02244DB4
	b _02244F8C
_02244DB4:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02244DC0: ; jump table
	.short _02244DE2 - _02244DC0 - 2 ; case 0
	.short _02244DF4 - _02244DC0 - 2 ; case 1
	.short _02244E1A - _02244DC0 - 2 ; case 2
	.short _02244E2E - _02244DC0 - 2 ; case 3
	.short _02244E32 - _02244DC0 - 2 ; case 4
	.short _02244E38 - _02244DC0 - 2 ; case 5
	.short _02244E6A - _02244DC0 - 2 ; case 6
	.short _02244E88 - _02244DC0 - 2 ; case 7
	.short _02244E8C - _02244DC0 - 2 ; case 8
	.short _02244EB8 - _02244DC0 - 2 ; case 9
	.short _02244F0A - _02244DC0 - 2 ; case 10
	.short _02244F26 - _02244DC0 - 2 ; case 11
	.short _02244F2A - _02244DC0 - 2 ; case 12
	.short _02244F30 - _02244DC0 - 2 ; case 13
	.short _02244F80 - _02244DC0 - 2 ; case 14
	.short _02244F86 - _02244DC0 - 2 ; case 15
	.short _02244F8C - _02244DC0 - 2 ; case 16
_02244DE2:
	mov r0, #0x1a
	ldrsh r1, [r3, r0]
	add r0, #0xee
	add sp, #8
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244DF4:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02244E12
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4, #0]
	add r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E12:
	mov r0, #3
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E1A:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02244E78
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E2E:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244E32:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244E38:
	mov r5, #0x42
	lsl r5, r5, #2
	mov r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _02244E62
	add r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	add r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E62:
	mov r0, #7
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E6A:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bgt _02244E7A
_02244E78:
	b _02244FAA
_02244E7A:
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E88:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244E8C:
	ldr r0, [r3, #0x28]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02244EB0
	ldrb r0, [r3, #3]
	add sp, #8
	add r1, r4, r0
	mov r0, #0xe4
	ldrsb r1, [r1, r0]
	add r0, #0x26
	strh r1, [r4, r0]
	mov r0, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244EB0:
	mov r0, #0xb
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244EB8:
	mov r0, #0x10
	ldrsb r0, [r4, r0]
	mov r6, #0
	add r5, r6, #0
	add r0, r0, #1
	strb r0, [r4, #0x10]
	mov r7, #0xe7
_02244EC6:
	mov r2, #0x10
	ldrsb r3, [r4, r2]
	add r1, r4, r5
	mov r0, #0xe4
	mov r2, #0xa
	ldrsb r0, [r1, r0]
	mul r2, r3
	sub r2, r0, r2
	ldrsb r0, [r1, r7]
	cmp r0, r2
	bgt _02244EEE
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r0, #0xc
	add r6, r6, #1
	bl ov17_022424D4
	ldr r0, _02244FB0 ; =0x000006DF
	bl sub_02005748
_02244EEE:
	add r5, r5, #1
	cmp r5, #3
	blt _02244EC6
	cmp r6, #0
	ble _02244F02
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244F02:
	mov r0, #0xb
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244F0A:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02244FAA
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244F26:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244F2A:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244F30:
	add r6, r4, #0
	mov r5, #0
	add r6, #0x4c
_02244F36:
	ldr r2, [r4, #0]
	ldr r0, _02244FB4 ; =0x00000231
	add r1, r2, r5
	ldrb r1, [r1, r0]
	mov r0, #0x2c
	add r7, r1, #0
	mul r7, r0
	ldr r0, [r6, r7]
	lsl r1, r0, #0x1a
	lsl r3, r0, #0x16
	lsr r1, r1, #0x1e
	lsr r3, r3, #0x1e
	cmp r1, r3
	bne _02244F5E
	lsl r1, r0, #0x18
	lsl r0, r0, #0x14
	lsr r1, r1, #0x1e
	lsr r0, r0, #0x1e
	cmp r1, r0
	beq _02244F74
_02244F5E:
	add r2, #0xc
	add r0, r2, #0
	ldr r2, [r6, r7]
	add r1, r5, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1e
	bl ov17_022430AC
	ldr r0, _02244FB8 ; =0x000006E2
	bl sub_02005748
_02244F74:
	add r5, r5, #1
	cmp r5, #4
	blt _02244F36
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244F80:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244F86:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244F8C:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #4]
	bl sub_0200DA58
_02244FAA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244FB0: .word 0x000006DF
_02244FB4: .word 0x00000231
_02244FB8: .word 0x000006E2
	thumb_func_end ov17_02244D98

	thumb_func_start ov17_02244FBC
ov17_02244FBC: ; 0x02244FBC
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244FBC

	thumb_func_start ov17_02244FD4
ov17_02244FD4: ; 0x02244FD4
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02245012:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02245012
	ldr r0, [r5, #0]
	ldr r2, _0224502C ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02245030 ; =ov17_02245034
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224502C: .word 0x00007530
_02245030: .word ov17_02245034
	thumb_func_end ov17_02244FD4

	thumb_func_start ov17_02245034
ov17_02245034: ; 0x02245034
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	add r2, r4, #0
	mov r0, #0x2c
	add r2, #0x24
	mul r0, r1
	add r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bhi _02245104
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02245058: ; jump table
	.short _0224506A - _02245058 - 2 ; case 0
	.short _0224507A - _02245058 - 2 ; case 1
	.short _0224509C - _02245058 - 2 ; case 2
	.short _022450AE - _02245058 - 2 ; case 3
	.short _022450B2 - _02245058 - 2 ; case 4
	.short _022450B8 - _02245058 - 2 ; case 5
	.short _022450E6 - _02245058 - 2 ; case 6
	.short _02245100 - _02245058 - 2 ; case 7
	.short _02245104 - _02245058 - 2 ; case 8
_0224506A:
	mov r0, #0x1a
	ldrsh r1, [r3, r0]
	add r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224507A:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02245096
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4, #0]
	add r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245096:
	mov r0, #3
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224509C:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245122
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022450AE:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_022450B2:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_022450B8:
	mov r5, #0x42
	lsl r5, r5, #2
	mov r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _022450E0
	add r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	add r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022450E0:
	mov r0, #7
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022450E6:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245122
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245100:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245104:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245122:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02245034

	thumb_func_start ov17_02245124
ov17_02245124: ; 0x02245124
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245124

	thumb_func_start ov17_0224513C
ov17_0224513C: ; 0x0224513C
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_0224517A:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224517A
	ldr r0, [r5, #0]
	ldr r2, _02245194 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02245198 ; =ov17_0224519C
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245194: .word 0x00007530
_02245198: .word ov17_0224519C
	thumb_func_end ov17_0224513C

	thumb_func_start ov17_0224519C
ov17_0224519C: ; 0x0224519C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r6, r0, #0
	add r3, r4, #0
	add r2, r1, #0
	mov r0, #0x2c
	ldrb r1, [r4, #0xc]
	add r3, #0x24
	mul r2, r0
	add r5, r3, r2
	cmp r1, #0x19
	bls _022451BA
	b _022454DC
_022451BA:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022451C6: ; jump table
	.short _022451FA - _022451C6 - 2 ; case 0
	.short _02245210 - _022451C6 - 2 ; case 1
	.short _02245254 - _022451C6 - 2 ; case 2
	.short _02245264 - _022451C6 - 2 ; case 3
	.short _02245268 - _022451C6 - 2 ; case 4
	.short _02245290 - _022451C6 - 2 ; case 5
	.short _022452A4 - _022451C6 - 2 ; case 6
	.short _022452A8 - _022451C6 - 2 ; case 7
	.short _022452DC - _022451C6 - 2 ; case 8
	.short _022452FA - _022451C6 - 2 ; case 9
	.short _022452FE - _022451C6 - 2 ; case 10
	.short _02245304 - _022451C6 - 2 ; case 11
	.short _02245370 - _022451C6 - 2 ; case 12
	.short _02245388 - _022451C6 - 2 ; case 13
	.short _022453A2 - _022451C6 - 2 ; case 14
	.short _022453C2 - _022451C6 - 2 ; case 15
	.short _022453EA - _022451C6 - 2 ; case 16
	.short _02245400 - _022451C6 - 2 ; case 17
	.short _02245404 - _022451C6 - 2 ; case 18
	.short _02245430 - _022451C6 - 2 ; case 19
	.short _0224543E - _022451C6 - 2 ; case 20
	.short _02245442 - _022451C6 - 2 ; case 21
	.short _02245454 - _022451C6 - 2 ; case 22
	.short _02245498 - _022451C6 - 2 ; case 23
	.short _022454B4 - _022451C6 - 2 ; case 24
	.short _022454DC - _022451C6 - 2 ; case 25
_022451FA:
	ldrb r0, [r5, #3]
	add sp, #8
	add r1, r4, r0
	mov r0, #0xe4
	ldrsb r1, [r1, r0]
	add r0, #0x26
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245210:
	ldrb r1, [r5, #3]
	mov r0, #0xe7
	add r3, r4, r1
	ldrsb r2, [r3, r0]
	mov r0, #0xe4
	ldrsb r0, [r3, r0]
	cmp r2, r0
	ble _0224524C
	cmp r2, #0x32
	blt _02245228
	mov r6, #3
	b _0224522A
_02245228:
	mov r6, #2
_0224522A:
	ldr r0, [r4, #0]
	add r2, r6, #0
	add r0, #0xc
	bl ov17_02241A8C
	ldr r3, _02245504 ; =0x0000010E
	ldrb r1, [r5, #3]
	ldr r0, [r4, #0]
	add r2, r6, #0
	add r3, r4, r3
	bl ov17_02241B3C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_0224524C:
	mov r0, #3
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245254:
	add r0, #0xe2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _022452EA
	add r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245264:
	add r0, r1, #1
	strb r0, [r4, #0xc]
_02245268:
	add r0, r4, #0
	add r0, #0xf8
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245288
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xec
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245288:
	mov r0, #6
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245290:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022452EA
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022452A4:
	add r0, r1, #1
	strb r0, [r4, #0xc]
_022452A8:
	ldrb r0, [r5, #3]
	add r2, r4, r0
	mov r0, #0xe7
	ldrsb r1, [r2, r0]
	mov r0, #0xe4
	ldrsb r0, [r2, r0]
	cmp r1, r0
	ble _022452CE
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x11
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #0
	mov r3, #0x46
	bl ov17_022431A0
	b _022452D2
_022452CE:
	mov r0, #1
	strb r0, [r4, #0x11]
_022452D2:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022452DC:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #8
	bgt _022452EC
_022452EA:
	b _02245500
_022452EC:
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022452FA:
	add r0, r1, #1
	strb r0, [r4, #0xc]
_022452FE:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245304:
	ldrb r0, [r5, #3]
	add r3, r4, r0
	mov r0, #0xe7
	ldrsb r1, [r3, r0]
	add r0, #0x23
	ldrsh r0, [r4, r0]
	cmp r0, r1
	beq _02245368
	mov r2, #0xe4
	ldrsb r0, [r3, r2]
	sub r0, r1, r0
	cmp r0, #0
	ble _0224533C
	add r0, r2, #0
	add r0, #0x26
	ldrsh r1, [r4, r0]
	add r0, r2, #0
	add r0, #0x26
	add r1, #0xa
	strh r1, [r4, r0]
	add r2, #0x26
	ldr r0, [r4, #0]
	ldrb r1, [r5, #3]
	ldrsh r2, [r4, r2]
	add r0, #0xc
	bl ov17_022424D4
	b _0224535E
_0224533C:
	add r0, r2, #0
	add r0, #0x26
	ldrsh r1, [r4, r0]
	add r0, r2, #0
	add r0, #0x26
	sub r1, #0xa
	strh r1, [r4, r0]
	add r2, #0x26
	ldr r0, [r4, #0]
	ldrb r1, [r5, #3]
	ldrsh r2, [r4, r2]
	add r0, #0xc
	bl ov17_022424D4
	ldr r0, _02245508 ; =0x000006DF
	bl sub_02005748
_0224535E:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245368:
	mov r0, #0xe
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245370:
	ldr r0, [r4, #0]
	ldrb r1, [r5, #3]
	add r0, #0xc
	bl ov17_022424A8
	cmp r0, #1
	bne _022453F4
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245388:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _022453F4
	mov r0, #0
	strb r0, [r4, #0xf]
	mov r0, #0xb
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453A2:
	add r0, #0xde
	ldrsh r0, [r4, r0]
	cmp r0, #0x32
	blt _022453B8
	ldrb r1, [r5, #3]
	ldr r0, [r4, #0]
	bl ov17_0224365C
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r4, r1]
_022453B8:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453C2:
	add r0, r4, #0
	add r0, #0xf9
	ldrb r1, [r0]
	cmp r1, #0
	beq _022453E2
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xf2
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453E2:
	mov r0, #0x11
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453EA:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	beq _022453F6
_022453F4:
	b _02245500
_022453F6:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245400:
	add r0, r1, #1
	strb r0, [r4, #0xc]
_02245404:
	ldr r0, _0224550C ; =0x0000010A
	ldrsh r0, [r4, r0]
	cmp r0, #0x32
	blt _02245428
	add r0, r4, #0
	add r0, #0x12
	str r0, [sp]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrb r3, [r5, #3]
	ldr r0, [r4, #0]
	bl ov17_022436D0
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245428:
	mov r0, #0x14
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245430:
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _02245500
	add r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_0224543E:
	add r0, r1, #1
	strb r0, [r4, #0xc]
_02245442:
	mov r0, #0x1a
	ldrsh r1, [r5, r0]
	add r0, #0xee
	add sp, #8
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245454:
	add r0, #0xdc
	mov r3, #0x18
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r3]
	cmp r1, r0
	bge _02245488
	add r0, r3, #0
	add r0, #0xf0
	ldrsh r1, [r4, r0]
	add r0, r3, #0
	add r0, #0xf0
	add r1, #0xa
	strh r1, [r4, r0]
	add r3, #0xf0
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r3]
	add r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245488:
	ldr r0, [r4, #0]
	add r0, #0xc
	bl ov17_02241B1C
	mov r0, #0x18
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245498:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245500
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022454B4:
	add r1, r0, #0
	add r1, #0xde
	ldrsh r1, [r4, r1]
	cmp r1, #0x32
	blt _022454D2
	add r0, #0xe4
	ldr r0, [r4, r0]
	bl ov17_02243690
	ldr r0, [r4, #0]
	ldrb r1, [r5, #3]
	add r0, #0xc
	mov r2, #0
	bl ov17_022424D4
_022454D2:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022454DC:
	ldrb r0, [r4, #0x11]
	cmp r0, #1
	bne _02245500
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_02245500:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02245504: .word 0x0000010E
_02245508: .word 0x000006DF
_0224550C: .word 0x0000010A
	thumb_func_end ov17_0224519C

	thumb_func_start ov17_02245510
ov17_02245510: ; 0x02245510
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245510

	thumb_func_start ov17_02245528
ov17_02245528: ; 0x02245528
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02245566:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02245566
	ldr r0, [r5, #0]
	ldr r2, _02245580 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02245584 ; =ov17_02245588
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245580: .word 0x00007530
_02245584: .word ov17_02245588
	thumb_func_end ov17_02245528

	thumb_func_start ov17_02245588
ov17_02245588: ; 0x02245588
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	add r2, r4, #0
	mov r0, #0x2c
	add r2, #0x24
	mul r0, r1
	add r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bhi _02245658
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022455AC: ; jump table
	.short _022455BE - _022455AC - 2 ; case 0
	.short _022455CE - _022455AC - 2 ; case 1
	.short _022455F0 - _022455AC - 2 ; case 2
	.short _02245602 - _022455AC - 2 ; case 3
	.short _02245606 - _022455AC - 2 ; case 4
	.short _0224560C - _022455AC - 2 ; case 5
	.short _0224563A - _022455AC - 2 ; case 6
	.short _02245654 - _022455AC - 2 ; case 7
	.short _02245658 - _022455AC - 2 ; case 8
_022455BE:
	mov r0, #0x1a
	ldrsh r1, [r3, r0]
	add r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022455CE:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _022455EA
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4, #0]
	add r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022455EA:
	mov r0, #3
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022455F0:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245676
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245602:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245606:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_0224560C:
	mov r5, #0x42
	lsl r5, r5, #2
	mov r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _0224562E
	add r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	add r0, #0xc
	bl ov17_02241F34
	b _02245632
_0224562E:
	mov r0, #7
	strb r0, [r4, #0xc]
_02245632:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224563A:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245676
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245654:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245658:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245676:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02245588

	thumb_func_start ov17_02245678
ov17_02245678: ; 0x02245678
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245678

	thumb_func_start ov17_02245690
ov17_02245690: ; 0x02245690
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xf7
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r2, #0x43
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	add r3, r4, #0
	add r3, #0x10
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
_022456C6:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022456C6
	ldr r0, [r6, #0]
	ldr r2, _022456E0 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _022456E4 ; =ov17_022456E8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022456E0: .word 0x00007530
_022456E4: .word ov17_022456E8
	thumb_func_end ov17_02245690

	thumb_func_start ov17_022456E8
ov17_022456E8: ; 0x022456E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, _02245944 ; =0x00000106
	add r4, r1, #0
	ldrb r0, [r4, r0]
	mov r7, #0
	add r0, r4, r0
	add r0, #0xf9
	ldrb r1, [r0]
	cmp r1, #4
	beq _02245724
	add r2, r4, #0
	mov r0, #0x2c
	add r2, #0x20
	mul r0, r1
	add r5, r2, r0
	ldr r3, [r4, #0]
	ldr r6, _02245948 ; =0x00000231
	add r2, r7, #0
_02245710:
	ldrb r0, [r3, r6]
	cmp r1, r0
	bne _0224571A
	add r7, r2, #0
	b _02245726
_0224571A:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #4
	blt _02245710
	b _02245726
_02245724:
	add r5, r7, #0
_02245726:
	ldrb r0, [r4, #0xc]
	cmp r0, #0x11
	bls _0224572E
	b _02245922
_0224572E:
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224573A: ; jump table
	.short _0224575E - _0224573A - 2 ; case 0
	.short _0224576C - _0224573A - 2 ; case 1
	.short _022457C0 - _0224573A - 2 ; case 2
	.short _022457D0 - _0224573A - 2 ; case 3
	.short _022457D4 - _0224573A - 2 ; case 4
	.short _022457FC - _0224573A - 2 ; case 5
	.short _02245812 - _0224573A - 2 ; case 6
	.short _02245816 - _0224573A - 2 ; case 7
	.short _02245840 - _0224573A - 2 ; case 8
	.short _02245854 - _0224573A - 2 ; case 9
	.short _02245858 - _0224573A - 2 ; case 10
	.short _02245880 - _0224573A - 2 ; case 11
	.short _02245894 - _0224573A - 2 ; case 12
	.short _02245898 - _0224573A - 2 ; case 13
	.short _022458AA - _0224573A - 2 ; case 14
	.short _022458DC - _0224573A - 2 ; case 15
	.short _022458F8 - _0224573A - 2 ; case 16
	.short _02245922 - _0224573A - 2 ; case 17
_0224575E:
	mov r0, #0x1a
	ldrsh r1, [r5, r0]
	add r0, #0xea
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_0224576C:
	ldrb r0, [r5, #9]
	cmp r0, #0
	bne _0224577E
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r6, #4
	bl sub_02005748
	b _022457A8
_0224577E:
	cmp r0, #1
	bne _0224578C
	ldr r0, _0224594C ; =0x000006EF
	mov r6, #5
	bl sub_02005748
	b _022457A8
_0224578C:
	cmp r0, #2
	bne _0224579A
	ldr r0, _02245950 ; =0x000006EE
	mov r6, #6
	bl sub_02005748
	b _022457A8
_0224579A:
	mov r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _02245954 ; =0x000006DF
	bl sub_02005748
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022457A8:
	ldr r3, _02245958 ; =0x00000107
	ldrb r1, [r5, #3]
	ldr r0, [r4, #0]
	add r2, r6, #0
	add r3, r4, r3
	bl ov17_02241B3C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457C0:
	ldr r1, _02245958 ; =0x00000107
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _02245806
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457D0:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_022457D4:
	ldrb r1, [r5, #0x12]
	cmp r1, #0
	beq _022457F4
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r5, #0x13]
	add r5, #0xc
	ldr r0, [r4, #0]
	add r3, r5, #0
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457F4:
	mov r0, #6
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457FC:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	beq _02245808
_02245806:
	b _02245940
_02245808:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245812:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245816:
	add r0, r4, #0
	add r0, #0xf4
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245838
	add r2, r4, #0
	add r3, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xe8
	add r3, #0xf8
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245838:
	mov r0, #9
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245840:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245940
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245854:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245858:
	add r0, r4, #0
	add r0, #0xf5
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245878
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xee
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245878:
	mov r0, #0xc
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245880:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245940
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245894:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245898:
	mov r0, #0x1a
	ldrsh r1, [r5, r0]
	add r0, #0xea
	add sp, #8
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458AA:
	mov r3, #0x41
	lsl r3, r3, #2
	mov r2, #0x18
	ldrsh r0, [r4, r3]
	ldrsh r2, [r5, r2]
	cmp r0, r2
	bge _022458CA
	add r0, #0xa
	strh r0, [r4, r3]
	ldr r0, [r4, #0]
	ldrsh r3, [r4, r3]
	add r0, #0xc
	add r2, r7, #0
	bl ov17_02241F34
	b _022458D2
_022458CA:
	mov r0, #0x10
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458D2:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458DC:
	mov r0, #0xd
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xd]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245940
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add sp, #8
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458F8:
	ldr r0, _02245944 ; =0x00000106
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #4
	bhs _02245918
	add r0, r4, r0
	add r0, #0xf9
	ldrb r0, [r0]
	cmp r0, #4
	beq _02245918
	mov r0, #0xd
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245918:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245922:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #4]
	bl sub_0200DA58
_02245940:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245944: .word 0x00000106
_02245948: .word 0x00000231
_0224594C: .word 0x000006EF
_02245950: .word 0x000006EE
_02245954: .word 0x000006DF
_02245958: .word 0x00000107
	thumb_func_end ov17_022456E8

	thumb_func_start ov17_0224595C
ov17_0224595C: ; 0x0224595C
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_0224595C

	thumb_func_start ov17_02245974
ov17_02245974: ; 0x02245974
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_022459B2:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022459B2
	ldr r0, [r5, #0]
	ldr r2, _022459CC ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _022459D0 ; =ov17_022459D4
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022459CC: .word 0x00007530
_022459D0: .word ov17_022459D4
	thumb_func_end ov17_02245974

	thumb_func_start ov17_022459D4
ov17_022459D4: ; 0x022459D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	add r2, r4, #0
	mov r0, #0x2c
	add r2, #0x24
	mul r0, r1
	add r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xe
	bls _022459EE
	b _02245B26
_022459EE:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022459FA: ; jump table
	.short _02245A18 - _022459FA - 2 ; case 0
	.short _02245A28 - _022459FA - 2 ; case 1
	.short _02245A4A - _022459FA - 2 ; case 2
	.short _02245A5C - _022459FA - 2 ; case 3
	.short _02245A60 - _022459FA - 2 ; case 4
	.short _02245A84 - _022459FA - 2 ; case 5
	.short _02245A96 - _022459FA - 2 ; case 6
	.short _02245A9A - _022459FA - 2 ; case 7
	.short _02245ABE - _022459FA - 2 ; case 8
	.short _02245AD0 - _022459FA - 2 ; case 9
	.short _02245AD4 - _022459FA - 2 ; case 10
	.short _02245ADA - _022459FA - 2 ; case 11
	.short _02245B08 - _022459FA - 2 ; case 12
	.short _02245B22 - _022459FA - 2 ; case 13
	.short _02245B26 - _022459FA - 2 ; case 14
_02245A18:
	mov r0, #0x1a
	ldrsh r1, [r3, r0]
	add r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A28:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02245A44
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4, #0]
	add r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A44:
	mov r0, #3
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A4A:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245B44
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A5C:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245A60:
	add r0, r4, #0
	add r0, #0xf8
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245A7E
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xec
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A7E:
	mov r0, #6
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A84:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245B44
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A96:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245A9A:
	add r0, r4, #0
	add r0, #0xf9
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245AB8
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xf2
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245AB8:
	mov r0, #9
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245ABE:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245B44
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245AD0:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245AD4:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245ADA:
	mov r5, #0x42
	lsl r5, r5, #2
	mov r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _02245AFC
	add r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	add r0, #0xc
	bl ov17_02241F34
	b _02245B00
_02245AFC:
	mov r0, #0xd
	strb r0, [r4, #0xc]
_02245B00:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245B08:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245B44
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245B22:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245B26:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245B44:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_022459D4

	thumb_func_start ov17_02245B48
ov17_02245B48: ; 0x02245B48
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245B48

	thumb_func_start ov17_02245B60
ov17_02245B60: ; 0x02245B60
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r1, [r7, #0xc]
	ldr r0, _02245BBC ; =0x00000123
	ldrb r0, [r1, r0]
	strb r0, [r4, #0xd]
	ldrb r0, [r6, #1]
	strb r0, [r4, #0xe]
_02245BA2:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02245BA2
	ldr r0, [r6, #0]
	ldr r2, _02245BC0 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02245BC4 ; =ov17_02245BC8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245BBC: .word 0x00000123
_02245BC0: .word 0x00007530
_02245BC4: .word ov17_02245BC8
	thumb_func_end ov17_02245B60

	thumb_func_start ov17_02245BC8
ov17_02245BC8: ; 0x02245BC8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xd]
	add r2, r4, #0
	mov r1, #0x2c
	add r2, #0x24
	mul r1, r0
	add r2, r2, r1
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	beq _02245BEC
	cmp r1, #1
	beq _02245C0C
	cmp r1, #2
	beq _02245C20
	b _02245C28
_02245BEC:
	mov r1, #0x18
	ldrsh r1, [r2, r1]
	add r2, sp, #0
	bl ov17_0224314C
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r2, sp, #0
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245C0C:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245C46
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245C20:
	add r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245C28:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245C46:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02245BC8

	thumb_func_start ov17_02245C4C
ov17_02245C4C: ; 0x02245C4C
	push {r3, lr}
	mov r1, #0xf4
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02245C4C

	thumb_func_start ov17_02245C60
ov17_02245C60: ; 0x02245C60
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x15
	mov r1, #0x28
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x28
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02245C9C ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02245CA0 ; =ov17_02245CA4
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245C9C: .word 0x00007530
_02245CA0: .word ov17_02245CA4
	thumb_func_end ov17_02245C60

	thumb_func_start ov17_02245CA4
ov17_02245CA4: ; 0x02245CA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #3
	bhi _02245D7A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245CC2: ; jump table
	.short _02245CCA - _02245CC2 - 2 ; case 0
	.short _02245CEE - _02245CC2 - 2 ; case 1
	.short _02245D30 - _02245CC2 - 2 ; case 2
	.short _02245D7A - _02245CC2 - 2 ; case 3
_02245CCA:
	mov r1, #0
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x27
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #0x46
	bl ov17_022431A0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02245CEE:
	add r7, r4, #0
	mov r5, #0
	add r6, r4, #0
	add r7, #0x23
_02245CF6:
	ldr r0, [r4, #0]
	ldr r1, _02245DA0 ; =0x00000231
	add r2, r0, r5
	ldrb r1, [r2, r1]
	bl ov17_0224145C
	str r0, [r6, #0x10]
	ldr r1, [r4, #0]
	add r3, r7, r5
	str r0, [sp]
	add r0, r1, #0
	add r2, r1, r5
	ldr r1, _02245DA0 ; =0x00000231
	ldrb r1, [r2, r1]
	add r2, r5, #0
	bl ov17_0224331C
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #4
	blt _02245CF6
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02245D30:
	mov r7, #0
	add r6, r7, #0
	add r5, r4, #0
_02245D36:
	add r0, r4, r6
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _02245D4C
	ldr r0, [r5, #0x10]
	bl ov17_022414BC
	cmp r0, #0
	bne _02245D4C
	add r7, r7, #1
_02245D4C:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02245D36
	cmp r7, #4
	bne _02245D9C
	mov r6, #0
	add r5, r4, #0
_02245D5C:
	ldr r0, [r5, #0x10]
	bl ov17_02241494
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02245D5C
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02245D7A:
	add r0, r4, #0
	add r0, #0x27
	ldrb r0, [r0]
	cmp r0, #1
	bne _02245D9C
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245D9C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245DA0: .word 0x00000231
	thumb_func_end ov17_02245CA4

	thumb_func_start ov17_02245DA4
ov17_02245DA4: ; 0x02245DA4
	push {r3, lr}
	mov r0, #0xf8
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245DA4

	thumb_func_start ov17_02245DBC
ov17_02245DBC: ; 0x02245DBC
	push {r4, r5, r6, lr}
	mov r0, #0x23
	add r5, r1, #0
	lsl r0, r0, #4
	add r4, r2, #0
	add r6, r5, r0
	mov r2, #0x1f
_02245DCA:
	ldmia r3!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r2, r2, #1
	bne _02245DCA
	add r0, r5, #0
	add r0, #0xc
	bl ov17_02241EF0
	add r0, r5, #0
	add r0, #0xc
	bl ov17_022430F8
	add r0, r5, #0
	bl ov17_02242FE8
	add r0, r5, #0
	bl ov17_02241428
	mov r0, #0xc3
	lsl r0, r0, #4
	mov r2, #0
	add r0, r5, r0
	add r1, r4, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02245DBC

	thumb_func_start ov17_02245E00
ov17_02245E00: ; 0x02245E00
	push {r3, lr}
	mov r1, #0xf4
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02245E00

	thumb_func_start ov17_02245E14
ov17_02245E14: ; 0x02245E14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x15
	mov r1, #0x20
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	ldr r2, _02245E84 ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r6]
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	add r0, r5, #0
	add r0, #0xd8
	ldrh r0, [r0]
	strh r0, [r4, #0x14]
	add r0, r5, #0
	add r0, #0xda
	ldrh r0, [r0]
	strh r0, [r4, #0x16]
	add r0, r5, #0
	add r0, #0xdc
	ldrh r0, [r0]
	strh r0, [r4, #0x18]
	add r0, r5, #0
	add r0, #0xe4
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	add r0, r5, #0
	add r0, #0xe7
	ldrb r0, [r0]
	add r5, #0xe6
	strb r0, [r4, #0x1c]
	ldrb r0, [r5]
	strb r0, [r4, #0x1b]
	ldr r0, _02245E88 ; =ov17_02245E8C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245E84: .word 0x00007530
_02245E88: .word ov17_02245E8C
	thumb_func_end ov17_02245E14

	thumb_func_start ov17_02245E8C
ov17_02245E8C: ; 0x02245E8C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02245EA2
	cmp r0, #1
	beq _02245EC2
	cmp r0, #2
	beq _02245ED4
	b _02245EF8
_02245EA2:
	ldrb r1, [r4, #0x1a]
	cmp r1, #0
	beq _02245EBC
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x14
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EBC:
	mov r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EC2:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245F10
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245ED4:
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _02245EE8
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EE8:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x1b]
	cmp r1, r0
	blo _02245F10
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EF8:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245F10:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02245E8C

	thumb_func_start ov17_02245F14
ov17_02245F14: ; 0x02245F14
	strb r1, [r0, #0x12]
	ldr r1, _02245F40 ; =0x00007530
	strb r2, [r0, #0x13]
	cmp r3, r1
	beq _02245F20
	strb r3, [r0, #0xc]
_02245F20:
	ldr r2, [sp]
	ldr r1, _02245F40 ; =0x00007530
	cmp r2, r1
	beq _02245F2A
	strb r2, [r0, #0xd]
_02245F2A:
	ldr r2, [sp, #4]
	ldr r1, _02245F40 ; =0x00007530
	cmp r2, r1
	beq _02245F34
	strh r2, [r0, #0xe]
_02245F34:
	ldr r2, [sp, #8]
	ldr r1, _02245F40 ; =0x00007530
	cmp r2, r1
	beq _02245F3E
	strb r2, [r0, #0x10]
_02245F3E:
	bx lr
	; .align 2, 0
_02245F40: .word 0x00007530
	thumb_func_end ov17_02245F14

	thumb_func_start ov17_02245F44
ov17_02245F44: ; 0x02245F44
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x26
	add r5, r1, #0
	lsl r0, r0, #4
	add r4, r6, r0
	add r3, r5, #0
	mov r2, #0x19
_02245F54:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02245F54
	add r0, r5, #0
	bl ov17_02246540
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xb0
	bl sub_020C4CF4
	mov r4, #0
	add r7, r6, #0
_02245F70:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0xc
	add r2, r4, #0
	bl ov17_02243120
	ldr r0, _02245FAC ; =0x0000023E
	add r1, r6, r4
	ldrb r0, [r1, r0]
	mov r1, #0xa
	strb r0, [r5, #3]
	ldr r0, _02245FB0 ; =0x00000236
	ldrh r0, [r7, r0]
	strh r0, [r5]
	bl sub_020790C4
	strb r0, [r5, #2]
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r6, r0
	add r1, r4, #0
	bl ov17_02243AC4
	strb r0, [r5, #9]
	add r4, r4, #1
	add r5, #0x2c
	add r7, r7, #2
	cmp r4, #4
	blt _02245F70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245FAC: .word 0x0000023E
_02245FB0: .word 0x00000236
	thumb_func_end ov17_02245F44

	thumb_func_start ov17_02245FB4
ov17_02245FB4: ; 0x02245FB4
	push {r4, r5, r6, r7}
	add r3, r1, #0
	ldr r5, _0224600C ; =0xFFFFFCFF
	ldr r6, _02246010 ; =0xFFFFF3FF
	add r4, r0, #0
	mov r1, #0
	add r2, r3, #0
_02245FC2:
	ldr r7, [r2, #0x28]
	add r1, r1, #1
	add r0, r7, #0
	lsl r7, r7, #0x1a
	lsr r7, r7, #0x1e
	lsl r7, r7, #0x1e
	and r0, r5
	lsr r7, r7, #0x16
	orr r7, r0
	add r0, r7, #0
	lsl r7, r7, #0x18
	lsr r7, r7, #0x1e
	lsl r7, r7, #0x1e
	and r0, r6
	lsr r7, r7, #0x14
	orr r0, r7
	str r0, [r2, #0x28]
	add r2, #0x2c
	cmp r1, #4
	blt _02245FC2
	ldr r1, _02246014 ; =0x00000252
	mov r0, #0
	add r5, r1, #0
_02245FF0:
	add r7, r4, r0
	ldrsb r6, [r7, r1]
	add r2, r3, r0
	add r2, #0xc0
	strb r6, [r2]
	add r2, r3, r0
	ldrsb r6, [r7, r5]
	add r2, #0xc3
	add r0, r0, #1
	strb r6, [r2]
	cmp r0, #3
	blt _02245FF0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0224600C: .word 0xFFFFFCFF
_02246010: .word 0xFFFFF3FF
_02246014: .word 0x00000252
	thumb_func_end ov17_02245FB4

	thumb_func_start ov17_02246018
ov17_02246018: ; 0x02246018
	push {r4, r5, r6, r7}
	mov r5, #0
	ldr r2, _02246040 ; =0x00000252
	add r3, r5, #0
_02246020:
	add r7, r1, r5
	mov r6, #0xc3
	ldrsb r7, [r7, r6]
	ldr r6, _02246040 ; =0x00000252
	add r4, r0, r5
	strb r7, [r4, r6]
	ldrsb r6, [r4, r2]
	cmp r6, #0x32
	blt _02246036
	ldr r6, _02246040 ; =0x00000252
	strb r3, [r4, r6]
_02246036:
	add r5, r5, #1
	cmp r5, #3
	blt _02246020
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02246040: .word 0x00000252
	thumb_func_end ov17_02246018

	thumb_func_start ov17_02246044
ov17_02246044: ; 0x02246044
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0224608C ; =0x00000242
	mov ip, r1
	add r5, r7, #0
	mov lr, r0
	mov r1, #0
	mov r2, ip
	add r3, r0, #0
	mov r6, #0x18
	add r5, #8
_02246058:
	ldr r0, _0224608C ; =0x00000242
	mov r4, #0x18
	ldrsh r0, [r3, r0]
	ldrsh r4, [r2, r4]
	add r1, r1, #1
	add r0, r0, r4
	strh r0, [r3, r7]
	ldrsh r0, [r2, r6]
	add r2, #0x2c
	strh r0, [r3, r5]
	add r3, r3, #2
	cmp r1, #4
	blt _02246058
	mov r1, #0x26
	lsl r1, r1, #4
	mov r0, lr
	add r4, r0, r1
	mov r3, #0x19
_0224607C:
	mov r2, ip
	ldmia r2!, {r0, r1}
	mov ip, r2
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0224607C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224608C: .word 0x00000242
	thumb_func_end ov17_02246044

	thumb_func_start ov17_02246090
ov17_02246090: ; 0x02246090
	push {r3, r4}
	mov r2, #0x2c
	mul r2, r1
	add r2, r0, r2
	mov r1, #0x18
	ldrsh r1, [r2, r1]
	mov r4, #0
	strh r1, [r2, #0x1a]
	strh r4, [r2, #0x1e]
	strh r4, [r2, #0x20]
	mov r1, #0xc3
_022460A6:
	add r3, r0, r4
	ldrsb r2, [r3, r1]
	add r3, #0xc0
	add r4, r4, #1
	strb r2, [r3]
	cmp r4, #3
	blt _022460A6
	mov r2, #0
	add r1, r2, #0
_022460B8:
	strb r1, [r0, #0x14]
	strb r1, [r0, #0x12]
	add r2, r2, #1
	add r0, #0x2c
	cmp r2, #4
	blt _022460B8
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_02246090

	thumb_func_start ov17_022460C8
ov17_022460C8: ; 0x022460C8
	mov r3, #0
	mov r1, #0x18
_022460CC:
	ldrsh r2, [r0, r1]
	add r3, r3, #1
	strh r2, [r0, #0x1c]
	add r0, #0x2c
	cmp r3, #4
	blt _022460CC
	bx lr
	; .align 2, 0
	thumb_func_end ov17_022460C8

	thumb_func_start ov17_022460DC
ov17_022460DC: ; 0x022460DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r7, r2, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov17_02246090
	mov r0, #0x2c
	add r4, r7, #0
	mul r4, r0
	add r6, r5, #2
	ldrb r0, [r6, r4]
	ldr r1, _0224612C ; =0x02253AFD
	lsl r2, r0, #3
	ldrb r1, [r1, r2]
	cmp r1, #0
	bne _02246126
	mov r1, #4
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_02095790
	ldr r1, [sp, #0x10]
	ldr r0, _02246130 ; =0x0000FFFF
	cmp r1, r0
	beq _02246126
	ldr r0, _02246134 ; =0x00007530
	mov r2, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r1, [r6, r4]
	add r0, r5, r4
	add r3, r7, #0
	bl ov17_02245F14
_02246126:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224612C: .word 0x02253AFD
_02246130: .word 0x0000FFFF
_02246134: .word 0x00007530
	thumb_func_end ov17_022460DC

	thumb_func_start ov17_02246138
ov17_02246138: ; 0x02246138
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov17_02246090
	add r4, r6, #0
	mov r0, #0x2c
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #2]
	add r6, r5, #4
	bl sub_02095734
	strb r0, [r6, r4]
	ldrb r1, [r6, r4]
	add r0, r5, r4
	strh r1, [r0, #0x18]
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02246138

	thumb_func_start ov17_02246160
ov17_02246160: ; 0x02246160
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r0, r7, #0
	add r1, r2, #0
	str r3, [sp, #0xc]
	bl ov17_02246090
	ldr r0, [sp, #8]
	mov r1, #0x2c
	add r4, r0, #0
	mul r4, r1
	add r0, r7, r4
	ldrb r0, [r0, #2]
	lsl r6, r0, #3
	ldr r0, _0224621C ; =0x02253AFC
	ldrb r0, [r0, r6]
	cmp r0, #3
	bne _022461B6
	ldr r0, [sp, #0xc]
	ldr r5, _02246220 ; =0x02253AF8
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	ldr r5, [r5, r6]
	add r1, r7, #0
	add r3, r2, #0
	blx r5
	add r2, r7, #0
	mov r0, #1
	add r3, r7, r4
	strb r0, [r3, #0x14]
	mov r0, #0x1e
	add r2, #0x18
	mov r5, #0x20
	ldrsh r0, [r3, r0]
	ldrsh r3, [r3, r5]
	ldrsh r1, [r2, r4]
	add r0, r0, r3
	add r0, r1, r0
	strh r0, [r2, r4]
_022461B6:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	blt _02246218
_022461C0:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, r0
	ldr r0, _02246224 ; =0x00000231
	ldrb r5, [r1, r0]
	mov r0, #0x2c
	mul r0, r5
	add r4, r7, r0
	ldrb r0, [r4, #2]
	lsl r1, r0, #3
	ldr r0, _02246220 ; =0x02253AF8
	add r0, r0, r1
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _0224620C
	add r0, r7, #0
	add r1, r5, #0
	bl ov17_02246090
	ldr r0, [sp, #0xc]
	add r3, r5, #0
	str r0, [sp]
	ldrb r5, [r4, #2]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	lsl r6, r5, #3
	ldr r5, _02246220 ; =0x02253AF8
	add r1, r7, #0
	ldr r5, [r5, r6]
	blx r5
	mov r0, #1
	strb r0, [r4, #0x14]
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #0x18]
_0224620C:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r1
	ble _022461C0
_02246218:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224621C: .word 0x02253AFC
_02246220: .word 0x02253AF8
_02246224: .word 0x00000231
	thumb_func_end ov17_02246160

	thumb_func_start ov17_02246228
ov17_02246228: ; 0x02246228
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r2, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov17_02246090
	add r7, r5, #0
	lsl r0, r6, #2
	add r7, #0xb0
	str r0, [sp, #0xc]
	ldr r0, [r7, r0]
	lsl r0, r0, #8
	lsr r0, r0, #0x18
	beq _0224627E
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	add r1, r5, r4
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	add r1, r5, #0
	add r1, #0x1e
	ldrsh r2, [r1, r4]
	add r2, r2, r0
	strh r2, [r1, r4]
	mov r1, #0xa
	bl sub_020E1F6C
	ldr r1, _022462A0 ; =0x00007530
	mov r2, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r5, r4
	ldr r1, [r7, r1]
	add r3, r6, #0
	lsl r1, r1, #8
	lsr r1, r1, #0x18
	bl ov17_02245F14
_0224627E:
	mov r0, #0x2c
	add r2, r6, #0
	add r1, r5, #0
	mul r2, r0
	add r1, #0x18
	add r5, r5, r2
	mov r3, #0x1e
	ldrsh r4, [r5, r3]
	mov r3, #0x20
	ldrsh r3, [r5, r3]
	ldrsh r0, [r1, r2]
	add r3, r4, r3
	add r0, r0, r3
	strh r0, [r1, r2]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022462A0: .word 0x00007530
	thumb_func_end ov17_02246228

	thumb_func_start ov17_022462A4
ov17_022462A4: ; 0x022462A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	str r3, [sp, #8]
	bl ov17_02246090
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #2]
	lsl r7, r0, #3
	ldr r0, _022462FC ; =0x02253AFC
	ldrb r0, [r0, r7]
	cmp r0, #4
	bne _022462F4
	ldr r0, [sp, #8]
	add r2, r6, #0
	add r3, r6, #0
	ldr r6, _02246300 ; =0x02253AF8
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r6, [r6, r7]
	add r1, r5, #0
	blx r6
	add r3, r5, r4
	mov r0, #1
	strb r0, [r3, #0x14]
	add r5, #0x18
	mov r1, #0x1e
	ldrsh r2, [r5, r4]
	ldrsh r1, [r3, r1]
	add sp, #0xc
	add r1, r2, r1
	strh r1, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_022462F4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022462FC: .word 0x02253AFC
_02246300: .word 0x02253AF8
	thumb_func_end ov17_022462A4

	thumb_func_start ov17_02246304
ov17_02246304: ; 0x02246304
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	str r3, [sp, #8]
	bl ov17_02246090
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #2]
	lsl r7, r0, #3
	ldr r0, _0224635C ; =0x02253AFC
	ldrb r0, [r0, r7]
	cmp r0, #5
	bne _02246354
	ldr r0, [sp, #8]
	add r2, r6, #0
	add r3, r6, #0
	ldr r6, _02246360 ; =0x02253AF8
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r6, [r6, r7]
	add r1, r5, #0
	blx r6
	add r3, r5, r4
	mov r0, #1
	strb r0, [r3, #0x14]
	add r5, #0x18
	mov r1, #0x1e
	ldrsh r2, [r5, r4]
	ldrsh r1, [r3, r1]
	add sp, #0xc
	add r1, r2, r1
	strh r1, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_02246354:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224635C: .word 0x02253AFC
_02246360: .word 0x02253AF8
	thumb_func_end ov17_02246304

	thumb_func_start ov17_02246364
ov17_02246364: ; 0x02246364
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	str r3, [sp, #8]
	bl ov17_02246090
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #2]
	lsl r7, r0, #3
	ldr r0, _022463BC ; =0x02253AFC
	ldrb r0, [r0, r7]
	cmp r0, #6
	bne _022463B4
	ldr r0, [sp, #8]
	add r2, r6, #0
	add r3, r6, #0
	ldr r6, _022463C0 ; =0x02253AF8
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r6, [r6, r7]
	add r1, r5, #0
	blx r6
	add r3, r5, r4
	mov r0, #1
	strb r0, [r3, #0x14]
	add r5, #0x18
	mov r1, #0x1e
	ldrsh r2, [r5, r4]
	ldrsh r1, [r3, r1]
	add sp, #0xc
	add r1, r2, r1
	strh r1, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_022463B4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022463BC: .word 0x02253AFC
_022463C0: .word 0x02253AF8
	thumb_func_end ov17_02246364

	thumb_func_start ov17_022463C4
ov17_022463C4: ; 0x022463C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r2, #0
	str r2, [sp, #4]
	add r7, r3, #0
	bl ov17_02246090
	mov r0, #0
	strb r0, [r7, #0xc]
	strb r0, [r7, #0xd]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	mov r6, #0x2c
	add r1, r1, r0
	ldr r0, _02246510 ; =0x0000023E
	ldrb r5, [r1, r0]
	ldr r0, [sp]
	ldr r3, [r0, #0]
	ldr r0, [sp, #4]
	add r2, r5, #0
	add r1, r0, #0
	mul r1, r6
	add r0, r4, r1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xf3
	str r1, [sp, #0x10]
	add r6, #0xf2
	ldrb r0, [r3, r0]
	ldrh r1, [r4, r1]
	ldrb r3, [r3, r6]
	bl ov17_02243AF0
	add r6, r0, #0
	cmp r6, #0
	ble _02246432
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x28]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02246432
	add r0, r4, #0
	add r0, #0xc3
	ldrsb r1, [r0, r5]
	add r1, r1, r6
	strb r1, [r0, r5]
	ldrsb r1, [r0, r5]
	cmp r1, #0x32
	blt _0224645E
	mov r1, #0x32
	strb r1, [r0, r5]
	b _0224645E
_02246432:
	cmp r6, #0
	bge _0224645C
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x28]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0224645C
	add r0, r4, #0
	add r0, #0xc3
	add r1, r0, r5
	ldrsb r0, [r0, r5]
	cmp r0, #0
	ble _0224645C
	add r0, r0, r6
	mov r2, #0
	strb r0, [r1]
	ldrsb r0, [r1, r2]
	cmp r0, #0
	bgt _0224645E
	strb r2, [r1]
	b _0224645E
_0224645C:
	mov r6, #0
_0224645E:
	add r1, r4, #0
	add r1, #0xc3
	add r0, r1, r5
	str r0, [sp, #8]
	ldrsb r0, [r1, r5]
	cmp r0, #0x32
	blt _0224648A
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldr r0, _02246514 ; =0x0000011E
	ldrb r0, [r1, r0]
	cmp r5, r0
	bne _02246482
	ldr r0, [sp, #0x10]
	mov r1, #0x50
	add r0, r4, r0
	strb r1, [r0, #8]
	b _0224648A
_02246482:
	ldr r0, [sp, #0x10]
	mov r1, #0x32
	add r0, r4, r0
	strb r1, [r0, #8]
_0224648A:
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	add r0, #8
	add r5, r0, r1
	ldrsb r0, [r0, r1]
	mov r1, #0xa
	bl sub_020E1F6C
	strb r0, [r7, #0xa]
	cmp r6, #0
	ble _022464E4
	ldr r0, [sp, #0xc]
	mov r1, #0xb
	ldrh r0, [r0]
	bl sub_020790C4
	bl ov17_02243970
	strb r0, [r7, #0xc]
	ldr r0, [sp, #8]
	mov r1, #0
	ldrsb r0, [r0, r1]
	mov r1, #0xa
	bl sub_020E1F6C
	cmp r0, #5
	bhi _022464F6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022464CC: ; jump table
	.short _022464F6 - _022464CC - 2 ; case 0
	.short _022464F6 - _022464CC - 2 ; case 1
	.short _022464F6 - _022464CC - 2 ; case 2
	.short _022464F6 - _022464CC - 2 ; case 3
	.short _022464D8 - _022464CC - 2 ; case 4
	.short _022464DE - _022464CC - 2 ; case 5
_022464D8:
	mov r0, #0x19
	strb r0, [r7, #0xd]
	b _022464F6
_022464DE:
	mov r0, #0x1a
	strb r0, [r7, #0xd]
	b _022464F6
_022464E4:
	bge _022464F6
	ldr r0, [sp, #0xc]
	mov r1, #0xb
	ldrh r0, [r0]
	bl sub_020790C4
	bl ov17_0224399C
	strb r0, [r7, #0xc]
_022464F6:
	ldr r0, [sp, #4]
	mov r1, #0x2c
	add r2, r0, #0
	mov r0, #0
	add r4, #0x18
	mul r2, r1
	ldrsh r1, [r4, r2]
	ldrsb r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r4, r2]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02246510: .word 0x0000023E
_02246514: .word 0x0000011E
	thumb_func_end ov17_022463C4

	thumb_func_start ov17_02246518
ov17_02246518: ; 0x02246518
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov17_02246090
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #9]
	bl ov17_02243AE4
	add r5, #0x18
	ldrsh r1, [r5, r4]
	add r0, r1, r0
	strh r0, [r5, r4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02246518

	thumb_func_start ov17_02246540
ov17_02246540: ; 0x02246540
	push {r3, r4, r5, r6}
	add r3, r0, #0
	ldr r4, _02246570 ; =0xFFFF0000
	ldr r5, _02246574 ; =0xFF00FFFF
	mov r2, #0
	add r3, #0xb0
_0224654C:
	ldr r1, [r3, #0]
	add r2, r2, #1
	and r1, r4
	str r1, [r3, #0]
	ldr r6, [r0, #0x28]
	and r1, r5
	lsl r6, r6, #0xc
	lsr r6, r6, #0x18
	lsl r6, r6, #0x18
	lsr r6, r6, #8
	orr r1, r6
	add r0, #0x2c
	stmia r3!, {r1}
	cmp r2, #4
	blt _0224654C
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02246570: .word 0xFFFF0000
_02246574: .word 0xFF00FFFF
	thumb_func_end ov17_02246540

	thumb_func_start ov17_02246578
ov17_02246578: ; 0x02246578
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r0, #4
	str r3, [sp, #0xc]
	mov ip, r0
	add r7, r1, #0
	mov r0, #0
	add r2, sp, #0x10
	mov r3, #0xff
_0224658A:
	ldr r4, [r1, #0x28]
	lsl r5, r4, #0x1a
	lsr r5, r5, #0x1e
	bne _02246596
	strb r3, [r2]
	b _022465AA
_02246596:
	cmp r5, #1
	bne _022465A2
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	bne _022465A2
	mov ip, r0
_022465A2:
	ldr r4, [r1, #0x28]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	strb r4, [r2]
_022465AA:
	add r0, r0, #1
	add r1, #0x2c
	add r2, r2, #1
	cmp r0, #4
	blt _0224658A
	ldr r0, [sp, #0xc]
	mov r1, #0xff
	add r6, sp, #0x10
	strb r1, [r6, r0]
	mov r4, #0
_022465BE:
	mov r1, #0
	add r2, r6, #0
	add r3, r7, #0
_022465C4:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _022465E0
	cmp r4, r0
	bne _022465E0
	ldr r5, [r3, #0x28]
	lsl r5, r5, #0x18
	lsr r5, r5, #0x1e
	cmp r0, r5
	bne _022465E0
	ldrb r0, [r6, r1]
	add r0, r0, #1
	strb r0, [r6, r1]
	b _022465EA
_022465E0:
	add r1, r1, #1
	add r2, r2, #1
	add r3, #0x2c
	cmp r1, #4
	blt _022465C4
_022465EA:
	cmp r1, #4
	beq _022465F4
	add r4, r4, #1
	cmp r4, #4
	blt _022465BE
_022465F4:
	mov r3, #0
	add r1, sp, #0x10
	add r2, r7, #0
	mov r4, #0xc0
_022465FC:
	ldrb r5, [r1]
	cmp r5, #0xff
	beq _0224660E
	ldr r0, [r2, #0x28]
	lsl r5, r5, #0x1e
	bic r0, r4
	lsr r5, r5, #0x18
	orr r0, r5
	str r0, [r2, #0x28]
_0224660E:
	add r3, r3, #1
	add r1, r1, #1
	add r2, #0x2c
	cmp r3, #4
	blt _022465FC
	ldr r0, [sp, #0xc]
	mov r1, #0x2c
	mul r1, r0
	add r0, r7, r1
	ldr r2, [r0, #0x28]
	mov r1, #0x30
	bic r2, r1
	mov r1, #0x10
	orr r2, r1
	mov r1, #0xc0
	bic r2, r1
	mov r1, ip
	str r2, [r0, #0x28]
	cmp r1, #4
	beq _0224664C
	mov r1, ip
	str r1, [sp]
	ldr r1, _02246664 ; =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #1
	bl ov17_02245F14
	b _0224665E
_0224664C:
	ldr r1, _02246664 ; =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
_0224665E:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02246664: .word 0x00007530
	thumb_func_end ov17_02246578

	thumb_func_start ov17_02246668
ov17_02246668: ; 0x02246668
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r0, #4
	str r3, [sp, #0xc]
	mov ip, r0
	add r7, r1, #0
	mov r0, #0
	add r2, sp, #0x10
	mov r3, #0xff
_0224667A:
	ldr r4, [r1, #0x28]
	lsl r5, r4, #0x1a
	lsr r5, r5, #0x1e
	bne _02246686
	strb r3, [r2]
	b _0224669C
_02246686:
	cmp r5, #2
	bne _02246694
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	cmp r4, #3
	bne _02246694
	mov ip, r0
_02246694:
	ldr r4, [r1, #0x28]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1e
	strb r4, [r2]
_0224669C:
	add r0, r0, #1
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	add r1, #0x2c
	add r2, r2, #1
	cmp r0, #4
	blt _0224667A
	ldr r0, [sp, #0xc]
	mov r1, #0xff
	add r6, sp, #0x10
	strb r1, [r6, r0]
	mov r4, #3
_022466B4:
	mov r1, #0
	add r2, r6, #0
	add r3, r7, #0
_022466BA:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _022466D6
	cmp r4, r0
	bne _022466D6
	ldr r5, [r3, #0x28]
	lsl r5, r5, #0x18
	lsr r5, r5, #0x1e
	cmp r0, r5
	bne _022466D6
	ldrb r0, [r6, r1]
	sub r0, r0, #1
	strb r0, [r6, r1]
	b _022466E4
_022466D6:
	add r0, r1, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	add r2, r2, #1
	add r3, #0x2c
	cmp r1, #4
	blt _022466BA
_022466E4:
	cmp r1, #4
	beq _022466F6
	sub r0, r4, #1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bgt _022466B4
_022466F6:
	mov r3, #0
	add r1, sp, #0x10
	add r2, r7, #0
	mov r4, #0xc0
_022466FE:
	ldrb r5, [r1]
	cmp r5, #0xff
	beq _02246710
	ldr r0, [r2, #0x28]
	lsl r5, r5, #0x1e
	bic r0, r4
	lsr r5, r5, #0x18
	orr r0, r5
	str r0, [r2, #0x28]
_02246710:
	add r0, r3, #1
	lsl r0, r0, #0x18
	asr r3, r0, #0x18
	add r1, r1, #1
	add r2, #0x2c
	cmp r3, #4
	blt _022466FE
	ldr r0, [sp, #0xc]
	mov r1, #0x2c
	mul r1, r0
	add r0, r7, r1
	ldr r2, [r0, #0x28]
	mov r1, #0x30
	bic r2, r1
	mov r1, #0x20
	orr r2, r1
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0xc0
	orr r1, r2
	str r1, [r0, #0x28]
	mov r1, ip
	cmp r1, #4
	bne _02246754
	ldr r1, _02246770 ; =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	b _02246768
_02246754:
	mov r1, ip
	str r1, [sp]
	ldr r1, _02246770 ; =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #1
	bl ov17_02245F14
_02246768:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02246770: .word 0x00007530
	thumb_func_end ov17_02246668

	thumb_func_start ov17_02246774
ov17_02246774: ; 0x02246774
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r4, #0
	mov r0, #0x2c
	add r7, r3, #0
	mul r3, r0
	add r2, #9
	add r1, #0x1e
	ldrb r6, [r2, r3]
	mov r5, #0x14
	ldrsh r0, [r1, r3]
	mul r5, r6
	add r0, r0, r5
	strh r0, [r1, r3]
	ldrb r0, [r2, r3]
	cmp r0, #0
	beq _022467A2
	cmp r0, #1
	beq _022467A6
	cmp r0, #2
	beq _022467AA
	b _022467AE
_022467A2:
	mov r2, #0
	b _022467B0
_022467A6:
	mov r2, #1
	b _022467B0
_022467AA:
	mov r2, #2
	b _022467B0
_022467AE:
	mov r2, #3
_022467B0:
	ldr r0, _022467C8 ; =0x00007530
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, r3
	ldrb r1, [r0, #2]
	add r3, r7, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022467C8: .word 0x00007530
	thumb_func_end ov17_02246774

	thumb_func_start ov17_022467CC
ov17_022467CC: ; 0x022467CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #0xc]
	ldr r3, [r0, #0]
	ldr r0, [sp, #0xc]
	mov r6, #0x2c
	add r4, r0, #0
	add r0, r6, #0
	mul r4, r6
	add r5, r1, #0
	add r7, r5, r4
	add r0, #0xf3
	add r6, #0xf2
	ldrb r0, [r3, r0]
	ldrh r1, [r5, r4]
	ldrb r2, [r7, #3]
	ldrb r3, [r3, r6]
	bl ov17_02243AF0
	cmp r0, #0
	ble _02246824
	ldr r0, [r7, #0x28]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02246824
	add r1, r5, #0
	add r1, #0x1e
	ldrsh r0, [r1, r4]
	ldr r2, _0224682C ; =0x00007530
	ldr r3, [sp, #0xc]
	add r0, #0x14
	strh r0, [r1, r4]
	str r2, [sp]
	ldrh r1, [r5, r4]
	add r0, r7, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02246824:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224682C: .word 0x00007530
	thumb_func_end ov17_022467CC

	thumb_func_start ov17_02246830
ov17_02246830: ; 0x02246830
	mov r0, #1
	bx lr
	thumb_func_end ov17_02246830

	thumb_func_start ov17_02246834
ov17_02246834: ; 0x02246834
	push {r3, r4, lr}
	sub sp, #0xc
	mov r0, #0x2c
	add r4, r3, #0
	mul r4, r0
	add r0, r1, r4
	ldrb r2, [r0, #9]
	cmp r2, #0
	bne _02246860
	add r1, #0x1e
	ldrsh r2, [r1, r4]
	add r2, #0x1e
	strh r2, [r1, r4]
	ldr r1, _02246878 ; =0x00007530
	mov r2, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	b _02246870
_02246860:
	ldr r1, _02246878 ; =0x00007530
	mov r2, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
_02246870:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02246878: .word 0x00007530
	thumb_func_end ov17_02246834

	thumb_func_start ov17_0224687C
ov17_0224687C: ; 0x0224687C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsl r4, r3, #1
	add r2, r1, #0
	add r4, r0, r4
	ldr r0, _022468C8 ; =0x00000256
	mov r1, #0x2c
	add r7, r3, #0
	mul r7, r1
	ldrh r1, [r2, r7]
	ldrh r0, [r4, r0]
	cmp r1, r0
	beq _022468C2
	add r6, r2, #0
	add r6, #0xb0
	lsl r5, r3, #2
	lsl r1, r1, #0x10
	ldr r4, [r6, r5]
	ldr r0, _022468CC ; =0xFFFF0000
	lsr r1, r1, #0x10
	and r0, r4
	orr r0, r1
	str r0, [r6, r5]
	ldr r0, _022468D0 ; =0x00007530
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r2, r7
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022468C2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022468C8: .word 0x00000256
_022468CC: .word 0xFFFF0000
_022468D0: .word 0x00007530
	thumb_func_end ov17_0224687C

	thumb_func_start ov17_022468D4
ov17_022468D4: ; 0x022468D4
	push {r4, r5, lr}
	sub sp, #0xc
	mov r0, #0x2c
	add r4, r3, #0
	add r5, r1, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #3]
	add r2, r5, #0
	add r2, #0x1e
	add r1, r5, r0
	mov r0, #0xc0
	ldrsb r0, [r1, r0]
	ldrsh r1, [r2, r4]
	add r1, r1, r0
	strh r1, [r2, r4]
	mov r1, #0xa
	bl sub_020E1F6C
	ldr r3, _02246914 ; =0x00007530
	mov r2, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02246914: .word 0x00007530
	thumb_func_end ov17_022468D4

	thumb_func_start ov17_02246918
ov17_02246918: ; 0x02246918
	push {r3, r4, lr}
	sub sp, #0xc
	mov r0, #0x2c
	add r4, r3, #0
	mul r4, r0
	add r0, r1, r4
	ldrb r2, [r0, #9]
	cmp r2, #3
	bne _02246944
	add r1, #0x1e
	ldrsh r2, [r1, r4]
	add r2, #0x96
	strh r2, [r1, r4]
	ldr r1, _0224695C ; =0x00007530
	mov r2, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	b _02246954
_02246944:
	ldr r1, _0224695C ; =0x00007530
	mov r2, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
_02246954:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0224695C: .word 0x00007530
	thumb_func_end ov17_02246918

	thumb_func_start ov17_02246960
ov17_02246960: ; 0x02246960
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0x2c
	add r7, r3, #0
	add r4, r1, #0
	mul r7, r0
	add r1, r4, r7
	ldr r0, [r1, #0x28]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224697E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224697E:
	mov r3, #0
	mov r0, #0xc3
_02246982:
	add r2, r4, r3
	ldrsb r2, [r2, r0]
	cmp r2, #0
	bne _02246990
	add r3, r3, #1
	cmp r3, #3
	blt _02246982
_02246990:
	cmp r3, #3
	bne _0224699A
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224699A:
	ldr r2, [r1, #0x28]
	mov r0, #8
	orr r0, r2
	mov r3, #0xc3
	str r0, [r1, #0x28]
	mov r2, #0
	add r5, r3, #0
_022469A8:
	add r0, r4, r2
	ldrsb r6, [r0, r5]
	cmp r6, #0
	ble _022469B8
	ldrsb r6, [r0, r3]
	add r0, #0xc3
	sub r6, #0xa
	strb r6, [r0]
_022469B8:
	add r2, r2, #1
	cmp r2, #3
	blt _022469A8
	ldr r3, _022469D8 ; =0x00007530
	add r0, r1, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r1, r4, r7
	ldrb r1, [r1, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022469D8: .word 0x00007530
	thumb_func_end ov17_02246960

	thumb_func_start ov17_022469DC
ov17_022469DC: ; 0x022469DC
	mov r0, #0x2c
	mul r0, r3
	add r2, r1, r0
	ldr r1, [r2, #0x28]
	ldr r0, _022469F8 ; =0xFFF00FFF
	and r1, r0
	ldrb r0, [r2, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r2, #0x28]
	mov r0, #1
	bx lr
	nop
_022469F8: .word 0xFFF00FFF
	thumb_func_end ov17_022469DC

	thumb_func_start ov17_022469FC
ov17_022469FC: ; 0x022469FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r2, r1, #0
	ldr r1, [sp, #0x20]
	add r4, r0, #0
	mov ip, r3
	cmp r1, #4
	bge _02246A28
	ldr r7, _02246A48 ; =0x00000231
	mov r6, #0x2c
	mov r3, #2
_02246A12:
	add r0, r4, r1
	ldrb r0, [r0, r7]
	add r1, r1, #1
	add r5, r0, #0
	mul r5, r6
	add r0, r2, r5
	ldr r5, [r0, #0x28]
	orr r5, r3
	str r5, [r0, #0x28]
	cmp r1, #4
	blt _02246A12
_02246A28:
	ldr r3, _02246A4C ; =0x00007530
	mov r1, #0x2c
	mov r0, ip
	str r3, [sp]
	mul r1, r0
	str r3, [sp, #4]
	add r0, r2, r1
	str r3, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02246A48: .word 0x00000231
_02246A4C: .word 0x00007530
	thumb_func_end ov17_022469FC

	thumb_func_start ov17_02246A50
ov17_02246A50: ; 0x02246A50
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bne _02246A62
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02246A62:
	sub r1, r1, #1
	add r1, r0, r1
	ldr r0, _02246AA8 ; =0x00000231
	ldrb r4, [r1, r0]
	mov r0, #0x2c
	add r1, r4, #0
	mul r1, r0
	add r2, r5, r1
	mov r1, #8
	ldrsb r2, [r2, r1]
	cmp r2, #0
	bne _02246A80
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02246A80:
	add r1, r3, #0
	mul r1, r0
	add r0, r5, #0
	add r0, #0x1e
	ldrsh r6, [r0, r1]
	add r2, r6, r2
	strh r2, [r0, r1]
	ldr r0, _02246AAC ; =0x00007530
	str r4, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, r1
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02246AA8: .word 0x00000231
_02246AAC: .word 0x00007530
	thumb_func_end ov17_02246A50

	thumb_func_start ov17_02246AB0
ov17_02246AB0: ; 0x02246AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r3, #0
	add r0, sp, #0x18
	add r1, sp, #0x14
_02246AC0:
	lsl r2, r3, #0x18
	lsr r2, r2, #0x18
	strb r2, [r0]
	strb r2, [r1]
	add r2, r3, #1
	lsl r2, r2, #0x18
	asr r3, r2, #0x18
	add r0, r0, #1
	add r1, r1, #1
	cmp r3, #4
	blt _02246AC0
	mov r4, #0
	add r7, sp, #0x18
	add r6, sp, #0x14
_02246ADC:
	ldr r0, [r5, #0]
	bl sub_02094E98
	mov r1, #4
	sub r1, r1, r4
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	lsr r2, r0, #0x18
	mov r1, #0
	add r3, r6, #0
_02246AF2:
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _02246B0A
	cmp r2, #0
	bne _02246B04
	mov r0, #0xff
	strb r4, [r7, r1]
	strb r0, [r6, r1]
	b _02246B16
_02246B04:
	sub r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
_02246B0A:
	add r0, r1, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	add r3, r3, #1
	cmp r1, #4
	blt _02246AF2
_02246B16:
	add r0, r4, #1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	cmp r4, #4
	blt _02246ADC
	ldr r1, [sp, #0xc]
	mov r3, #0
	add r2, sp, #0x18
	mov r4, #0x30
	mov r7, #0x30
	mov r5, #0xc0
_02246B2C:
	ldr r0, [r1, #0x28]
	bic r0, r4
	orr r0, r7
	str r0, [r1, #0x28]
	ldrb r6, [r2]
	bic r0, r5
	add r2, r2, #1
	lsl r6, r6, #0x1e
	lsr r6, r6, #0x18
	orr r0, r6
	str r0, [r1, #0x28]
	add r0, r3, #1
	lsl r0, r0, #0x18
	asr r3, r0, #0x18
	add r1, #0x2c
	cmp r3, #4
	blt _02246B2C
	ldr r3, _02246B70 ; =0x00007530
	ldr r0, [sp, #0x10]
	mov r1, #0x2c
	mul r1, r0
	str r3, [sp]
	ldr r0, [sp, #0xc]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r0, r1
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02246B70: .word 0x00007530
	thumb_func_end ov17_02246AB0

	thumb_func_start ov17_02246B74
ov17_02246B74: ; 0x02246B74
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	cmp r0, #3
	bne _02246BB6
	add r4, r3, #0
	mov r0, #0x2c
	add r3, r5, #0
	add r2, r5, #0
	mul r4, r0
	add r3, #0x18
	add r2, #0x1e
	ldrsh r1, [r2, r4]
	ldrsh r0, [r3, r4]
	add r0, r1, r0
	strh r0, [r2, r4]
	ldrsh r0, [r3, r4]
	mov r1, #0xa
	bl sub_020E1F6C
	ldr r3, _02246BBC ; =0x00007530
	mov r2, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02246BB6:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02246BBC: .word 0x00007530
	thumb_func_end ov17_02246B74

	thumb_func_start ov17_02246BC0
ov17_02246BC0: ; 0x02246BC0
	push {r4, r5, lr}
	sub sp, #0xc
	mov r0, #0x2c
	add r4, r3, #0
	add r5, r1, #0
	mul r4, r0
	add r0, r5, r4
	ldrb r0, [r0, #3]
	add r1, r5, r0
	mov r0, #0xc0
	ldrsb r0, [r1, r0]
	mov r1, #0xa
	bl sub_020E1F6C
	ldr r1, _02246C08 ; =0x02253AF0
	add r2, r5, #0
	add r2, #0x1e
	ldrb r0, [r1, r0]
	ldrsh r1, [r2, r4]
	add r1, r1, r0
	strh r1, [r2, r4]
	mov r1, #0xa
	bl sub_020E1F6C
	ldr r3, _02246C0C ; =0x00007530
	mov r2, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02246C08: .word 0x02253AF0
_02246C0C: .word 0x00007530
	thumb_func_end ov17_02246BC0

	thumb_func_start ov17_02246C10
ov17_02246C10: ; 0x02246C10
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02246C42
	add r4, r3, #0
	mov r0, #0x2c
	add r2, r1, #0
	mul r4, r0
	add r2, #0x1e
	ldrsh r0, [r2, r4]
	ldr r3, _02246C48 ; =0x00007530
	add r0, #0x14
	strh r0, [r2, r4]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r1, r4
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02246C42:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02246C48: .word 0x00007530
	thumb_func_end ov17_02246C10

	thumb_func_start ov17_02246C4C
ov17_02246C4C: ; 0x02246C4C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, [sp, #0x18]
	cmp r0, #3
	bne _02246C7E
	add r4, r3, #0
	mov r0, #0x2c
	add r2, r1, #0
	mul r4, r0
	add r2, #0x1e
	ldrsh r0, [r2, r4]
	ldr r3, _02246C84 ; =0x00007530
	add r0, #0x14
	strh r0, [r2, r4]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r1, r4
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02246C7E:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02246C84: .word 0x00007530
	thumb_func_end ov17_02246C4C

	thumb_func_start ov17_02246C88
ov17_02246C88: ; 0x02246C88
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r2, r1, #0
	ldr r1, [sp, #0x20]
	add r4, r0, #0
	mov ip, r3
	cmp r1, #4
	bge _02246CB4
	ldr r7, _02246CD4 ; =0x00000231
	mov r6, #0x2c
	mov r3, #4
_02246C9E:
	add r0, r4, r1
	ldrb r0, [r0, r7]
	add r1, r1, #1
	add r5, r0, #0
	mul r5, r6
	add r0, r2, r5
	ldr r5, [r0, #0x28]
	orr r5, r3
	str r5, [r0, #0x28]
	cmp r1, #4
	blt _02246C9E
_02246CB4:
	ldr r3, _02246CD8 ; =0x00007530
	mov r1, #0x2c
	mov r0, ip
	str r3, [sp]
	mul r1, r0
	str r3, [sp, #4]
	add r0, r2, r1
	str r3, [sp, #8]
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02246CD4: .word 0x00000231
_02246CD8: .word 0x00007530
	thumb_func_end ov17_02246C88

	thumb_func_start ov17_02246CDC
ov17_02246CDC: ; 0x02246CDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	add r4, r1, #0
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _02246CF2
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02246CF2:
	sub r0, r0, #1
	add r1, r5, r0
	ldr r0, _02246D98 ; =0x00000231
	mov r3, #0x2c
	ldrb r0, [r1, r0]
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	add r0, r1, #0
	mul r0, r3
	add r7, r4, r0
	str r0, [sp, #0x20]
	ldr r0, [r7, #0x28]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02246D24
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	mul r1, r3
	add r0, r4, r1
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x28]
	str r1, [sp, #0x10]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _02246D2A
_02246D24:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02246D2A:
	ldr r0, [r5, #0]
	add r1, r3, #0
	mov ip, r0
	add r1, #0xf3
	ldrb r0, [r0, r1]
	add r3, #0xf2
	mov r6, ip
	ldrh r1, [r7]
	ldrb r2, [r7, #3]
	ldrb r3, [r6, r3]
	bl ov17_02243AF0
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, r4, r2
	ldr r5, [r5, #0]
	ldr r3, _02246D9C ; =0x0000011F
	str r0, [sp, #0x1c]
	ldrb r0, [r5, r3]
	sub r3, r3, #1
	ldrh r1, [r1]
	ldrb r2, [r2, #3]
	ldrb r3, [r5, r3]
	bl ov17_02243AF0
	cmp r0, #0
	ble _02246D92
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _02246D92
	add r2, r4, #0
	ldr r0, [sp, #0x20]
	add r2, #0x1e
	ldrsh r1, [r2, r0]
	ldr r3, [sp, #0xc]
	add r1, #0x1e
	strh r1, [r2, r0]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	str r0, [sp]
	ldr r0, _02246DA0 ; =0x00007530
	add r1, r4, r1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r1, [r1, #2]
	add r0, r7, #0
	mov r2, #0
	bl ov17_02245F14
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02246D92:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02246D98: .word 0x00000231
_02246D9C: .word 0x0000011F
_02246DA0: .word 0x00007530
	thumb_func_end ov17_02246CDC

	thumb_func_start ov17_02246DA4
ov17_02246DA4: ; 0x02246DA4
	push {r4, r5, lr}
	sub sp, #0xc
	add r0, r1, #0
	mov r1, #0x2c
	mul r1, r3
	add r4, r0, r1
	mov r1, #0x1e
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x18]
	ldr r5, _02246E00 ; =0x02253AEC
	ldrb r5, [r5, r1]
	add r2, r2, r5
	strh r2, [r4, #0x1e]
	cmp r1, #3
	bhi _02246DE2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246DCE: ; jump table
	.short _02246DD6 - _02246DCE - 2 ; case 0
	.short _02246DDA - _02246DCE - 2 ; case 1
	.short _02246DDE - _02246DCE - 2 ; case 2
	.short _02246DE2 - _02246DCE - 2 ; case 3
_02246DD6:
	mov r2, #0
	b _02246DE4
_02246DDA:
	mov r2, #1
	b _02246DE4
_02246DDE:
	mov r2, #2
	b _02246DE4
_02246DE2:
	mov r2, #3
_02246DE4:
	ldr r1, _02246E04 ; =0x00007530
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x2c
	mul r1, r3
	add r0, r0, r1
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02246E00: .word 0x02253AEC
_02246E04: .word 0x00007530
	thumb_func_end ov17_02246DA4

	thumb_func_start ov17_02246E08
ov17_02246E08: ; 0x02246E08
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bne _02246E18
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_02246E18:
	sub r2, r2, #1
	add r2, r0, r2
	ldr r0, _02246E60 ; =0x00000231
	ldrb r2, [r2, r0]
	mov r0, #0x2c
	mul r0, r2
	add r2, r1, r0
	mov r0, #8
	ldrsb r0, [r2, r0]
	cmp r0, #0x32
	bge _02246E32
	cmp r0, #0x50
	blt _02246E5A
_02246E32:
	add r2, r1, #0
	mov r0, #0x2c
	add r4, r3, #0
	mul r4, r0
	add r2, #0x1e
	ldrsh r0, [r2, r4]
	add r0, #0x1e
	strh r0, [r2, r4]
	ldr r0, _02246E64 ; =0x00007530
	mov r2, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r1, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02246E5A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02246E60: .word 0x00000231
_02246E64: .word 0x00007530
	thumb_func_end ov17_02246E08

	thumb_func_start ov17_02246E68
ov17_02246E68: ; 0x02246E68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r0, #0x2c
	mul r0, r3
	str r1, [sp, #0xc]
	mov r2, #0
	add r4, r1, #0
	mov ip, r0
	add r5, r1, r0
	mov r7, #0x1a
	mov r6, #0x1c
_02246E7E:
	cmp r2, r3
	beq _02246E8A
	ldrsh r1, [r4, r7]
	ldrsh r0, [r5, r6]
	cmp r1, r0
	blt _02246E92
_02246E8A:
	add r2, r2, #1
	add r4, #0x2c
	cmp r2, #4
	blt _02246E7E
_02246E92:
	cmp r2, #4
	beq _02246E9C
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02246E9C:
	ldr r2, [sp, #0xc]
	mov r0, ip
	add r2, #0x1e
	ldrsh r1, [r2, r0]
	mov r0, ip
	add r1, #0x1e
	strh r1, [r2, r0]
	ldr r0, _02246EC8 ; =0x00007530
	ldr r1, [sp, #0xc]
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, ip
	add r0, r1, r0
	ldrb r1, [r0, #2]
	mov r2, #0
	bl ov17_02245F14
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246EC8: .word 0x00007530
	thumb_func_end ov17_02246E68

	thumb_func_start ov17_02246ECC
ov17_02246ECC: ; 0x02246ECC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp, #4]
	mov r0, #0x15
	mov r1, #0x32
	bl sub_02018144
	add r7, r0, #0
	ldr r1, [r6, #0]
	ldr r0, _02246F20 ; =0x00000127
	ldrb r4, [r1, r0]
	cmp r4, #4
	bge _02246F16
	ldr r0, [sp, #4]
	lsl r1, r4, #1
	add r5, r0, r1
	add r0, #8
	str r0, [sp, #4]
_02246EF2:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov17_02246F24
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r0, r0, r4
	str r0, [sp]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ov17_02246F9C
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _02246EF2
_02246F16:
	add r0, r7, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246F20: .word 0x00000127
	thumb_func_end ov17_02246ECC

	thumb_func_start ov17_02246F24
ov17_02246F24: ; 0x02246F24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r2, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #0
	mov r2, #0x32
	bl sub_020C4CF4
	lsl r0, r7, #2
	ldr r5, [sp]
	mov r4, #0
	str r0, [sp, #4]
_02246F40:
	ldr r1, [r6, #0]
	ldr r0, [sp, #4]
	mov r2, #0
	ldr r0, [r0, r1]
	add r1, r4, #0
	add r1, #0x36
	bl sub_02074470
	strh r0, [r5]
	mov r0, #0x23
	lsl r0, r0, #4
	ldrh r2, [r5]
	add r0, r6, r0
	add r1, r7, #0
	bl ov17_02243A98
	cmp r0, #1
	bne _02246F7A
	ldrh r0, [r5]
	mov r1, #0xa
	bl sub_020790C4
	strb r0, [r5, #0xa]
	ldrh r0, [r5]
	mov r1, #0xb
	bl sub_020790C4
	strb r0, [r5, #0xb]
	b _02246F7E
_02246F7A:
	mov r0, #0
	strh r0, [r5]
_02246F7E:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #4
	blt _02246F40
	ldr r0, [r6, #0]
	add r1, r0, r7
	mov r0, #0x43
	lsl r0, r0, #2
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	add r0, #0x30
	str r0, [sp]
	strb r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02246F24

	thumb_func_start ov17_02246F9C
ov17_02246F9C: ; 0x02246F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	str r1, [sp, #8]
	str r0, [sp, #0x58]
	mov r1, #0x23
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	add r0, r0, r1
	str r0, [sp, #0x1c]
	mov r0, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x20]
_02246FBA:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	ldrb r1, [r0, #1]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _02246FD2
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #4
	blt _02246FBA
_02246FD2:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _02247264 ; =0x02253C30
	str r0, [sp, #0x18]
_02246FDA:
	ldr r0, [sp, #0x20]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	ldrb r0, [r0]
	cmp r1, r0
	bne _022470CC
	mov r1, #0
	add r2, sp, #0x3c
	add r2, #2
	add r0, r1, #0
_02246FEE:
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #3
	blt _02246FEE
	ldr r0, [sp, #4]
	add r3, sp, #0x3c
	ldr r1, [r0, #0]
	ldr r0, _02247268 ; =0x0000011F
	ldr r4, [sp, #0x18]
	ldrb r0, [r1, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	str r0, [sp]
	ldrb r4, [r4, #1]
	ldr r0, [sp, #0x1c]
	add r3, #2
	lsl r5, r4, #2
	ldr r4, _0224726C ; =0x02253BBC
	ldr r4, [r4, r5]
	blx r4
	cmp r0, #1
	bne _022470CC
	ldr r0, [sp, #0x18]
	mov r1, #3
	ldrsb r0, [r0, r1]
	cmp r0, #0
	beq _02247030
	cmp r0, #2
	beq _02247044
	cmp r0, #3
	beq _02247044
	b _0224705A
_02247030:
	mov r2, #0
	add r1, sp, #0x3c
	add r1, #2
	add r0, r2, #0
_02247038:
	add r2, r2, #1
	strb r0, [r1]
	add r1, r1, #1
	cmp r2, #3
	blt _02247038
	b _0224705A
_02247044:
	add r2, sp, #0x3c
	mov r3, #0
	add r2, #2
	mov r0, #1
_0224704C:
	ldrb r1, [r2]
	add r3, r3, #1
	eor r1, r0
	strb r1, [r2]
	add r2, r2, #1
	cmp r3, #3
	blt _0224704C
_0224705A:
	ldr r0, [sp, #4]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	mov r0, #0x43
	lsl r0, r0, #2
	ldrb r2, [r1, r0]
	ldr r0, [sp, #0x18]
	lsl r1, r2, #1
	add r0, r0, r1
	mov r1, #4
	ldrsh r4, [r0, r1]
	cmp r2, #0
	beq _0224707C
	ldr r0, [sp, #0x18]
	ldrsh r0, [r0, r1]
	add r4, r4, r0
_0224707C:
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #2]
	cmp r0, #0xf0
	beq _0224708A
	cmp r0, #0xf1
	beq _022470CE
	b _0224710E
_0224708A:
	ldr r0, [sp, #8]
	mov r7, #0
	mov r5, #4
_02247090:
	ldr r1, [sp, #4]
	ldr r2, [r1, #0]
	ldr r1, _02247268 ; =0x0000011F
	ldrb r2, [r2, r1]
	ldrb r1, [r0, #0xb]
	cmp r2, r1
	bne _022470C4
	mov r1, #2
	ldrsh r1, [r0, r1]
	mov r3, #0
	add r2, r0, #0
	add r1, r1, r4
	strh r1, [r0, #2]
	add r1, sp, #0x3c
	add r1, #2
_022470AE:
	ldrb r6, [r1]
	cmp r6, #1
	bne _022470BA
	ldrsh r6, [r2, r5]
	add r6, r6, r4
	strh r6, [r2, #4]
_022470BA:
	add r3, r3, #1
	add r1, r1, #1
	add r2, r2, #2
	cmp r3, #3
	blt _022470AE
_022470C4:
	add r7, r7, #1
	add r0, #0xc
	cmp r7, #4
	blt _02247090
_022470CC:
	b _0224714C
_022470CE:
	ldr r5, [sp, #8]
	mov r7, #0
	mov r6, #4
_022470D4:
	ldrb r0, [r5, #0xa]
	bl sub_02095734
	cmp r0, #0x14
	blt _02247104
	mov r0, #2
	ldrsh r0, [r5, r0]
	mov r2, #0
	add r1, r5, #0
	add r0, r0, r4
	strh r0, [r5, #2]
	add r0, sp, #0x3c
	add r0, #2
_022470EE:
	ldrb r3, [r0]
	cmp r3, #1
	bne _022470FA
	ldrsh r3, [r1, r6]
	add r3, r3, r4
	strh r3, [r1, #4]
_022470FA:
	add r2, r2, #1
	add r0, r0, #1
	add r1, r1, #2
	cmp r2, #3
	blt _022470EE
_02247104:
	add r7, r7, #1
	add r5, #0xc
	cmp r7, #4
	blt _022470D4
	b _0224714C
_0224710E:
	ldr r0, [sp, #8]
	mov r7, #0
	mov r5, #4
_02247114:
	ldr r1, [sp, #0x18]
	ldrb r2, [r1, #2]
	ldrb r1, [r0, #0xa]
	cmp r2, r1
	bne _02247144
	mov r1, #2
	ldrsh r1, [r0, r1]
	mov r3, #0
	add r2, r0, #0
	add r1, r1, r4
	strh r1, [r0, #2]
	add r1, sp, #0x3c
	add r1, #2
_0224712E:
	ldrb r6, [r1]
	cmp r6, #1
	bne _0224713A
	ldrsh r6, [r2, r5]
	add r6, r6, r4
	strh r6, [r2, #4]
_0224713A:
	add r3, r3, #1
	add r1, r1, #1
	add r2, r2, #2
	cmp r3, #3
	blt _0224712E
_02247144:
	add r7, r7, #1
	add r0, #0xc
	cmp r7, #4
	blt _02247114
_0224714C:
	ldr r0, [sp, #0x18]
	add r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0xa5
	bge _0224715E
	b _02246FDA
_0224715E:
	add r4, sp, #0x34
	mov r5, #0
	add r4, #2
_02247164:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl sub_02094E98
	strh r0, [r4]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02247164
	mov r5, #0
	add r4, sp, #0x30
_0224717A:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl sub_02094E98
	strh r0, [r4]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #3
	blt _0224717A
	ldr r0, [sp, #8]
	mov r7, #0
	ldrh r0, [r0]
	cmp r0, #0
	bne _022471A2
	ldr r1, [sp, #8]
_02247198:
	add r1, #0xc
	ldrh r0, [r1]
	add r7, r7, #1
	cmp r0, #0
	beq _02247198
_022471A2:
	mov r2, #0xc
	add r1, r7, #0
	ldr r0, [sp, #8]
	mul r1, r2
	add r1, r0, r1
	mov r0, #2
	add r4, r7, #1
	ldrsh r1, [r1, r0]
	cmp r4, #4
	bge _022471F6
	ldr r0, [sp, #8]
	mul r2, r4
	add r2, r0, r2
	add r0, sp, #0x34
	lsl r3, r4, #1
	add r0, #2
	add r3, r0, r3
_022471C4:
	ldrh r0, [r2]
	cmp r0, #0
	beq _022471EC
	mov r0, #2
	ldrsh r0, [r2, r0]
	cmp r0, r1
	bgt _022471E8
	cmp r0, r1
	bne _022471EC
	ldrh r5, [r3]
	lsl r6, r7, #1
	str r5, [sp, #0x28]
	add r5, sp, #0x34
	add r5, #2
	ldrh r6, [r5, r6]
	ldr r5, [sp, #0x28]
	cmp r5, r6
	bls _022471EC
_022471E8:
	add r7, r4, #0
	add r1, r0, #0
_022471EC:
	add r4, r4, #1
	add r2, #0xc
	add r3, r3, #2
	cmp r4, #4
	blt _022471C4
_022471F6:
	ldr r0, [sp, #4]
	ldr r5, [r0, #0]
	ldr r0, _02247270 ; =0x00000171
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0224728A
	mov r0, #0xc
	add r6, r7, #0
	mul r6, r0
	ldr r0, [sp, #8]
	mov r2, #0
	add r4, r0, r6
	add r3, r2, #0
	mov r0, #4
_02247212:
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bne _0224721A
	add r2, r2, #1
_0224721A:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, #3
	blt _02247212
	cmp r2, #3
	bne _0224728A
	ldr r1, _02247274 ; =0x02253BB8
	add r0, sp, #0x2c
	ldrb r2, [r1]
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	add r0, r5, #0
	bl sub_02094E98
	ldr r1, [sp, #4]
	mov r2, #0x12
	lsl r0, r0, #0x18
	ldr r1, [r1, #0]
	lsl r2, r2, #4
	ldrb r4, [r1, r2]
	add r3, sp, #0x2c
	lsr r0, r0, #0x18
	ldrb r3, [r3, r4]
	cmp r0, r3
	bge _0224728A
	add r2, r2, #3
	ldrb r2, [r1, r2]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r2, r1, r2
	ldr r1, _02247278 ; =0x0000023E
	b _0224727C
	; .align 2, 0
_02247264: .word 0x02253C30
_02247268: .word 0x0000011F
_0224726C: .word 0x02253BBC
_02247270: .word 0x00000171
_02247274: .word 0x02253BB8
_02247278: .word 0x0000023E
_0224727C:
	add r0, r0, #4
	ldrb r1, [r2, r1]
	add r0, r0, r6
	lsl r2, r1, #1
	ldrsh r1, [r0, r2]
	sub r1, #0x64
	strh r1, [r0, r2]
_0224728A:
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0xc
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r3, sp, #0x30
	add r0, r0, r1
	mov r1, #4
	ldrsh r5, [r0, r1]
	mov ip, r0
	mov r4, #1
	add r2, r0, #2
	add r3, #2
_022472A6:
	mov r0, #4
	ldrsh r6, [r2, r0]
	cmp r6, r5
	bgt _022472C0
	cmp r6, r5
	bne _022472C4
	ldr r0, [sp, #0x24]
	ldrh r7, [r3]
	lsl r1, r0, #1
	add r0, sp, #0x30
	ldrh r0, [r0, r1]
	cmp r7, r0
	bls _022472C4
_022472C0:
	str r4, [sp, #0x24]
	add r5, r6, #0
_022472C4:
	add r4, r4, #1
	add r2, r2, #2
	add r3, r3, #2
	cmp r4, #3
	blt _022472A6
	mov r0, ip
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	strh r1, [r0]
	ldr r1, [sp, #0x58]
	ldr r0, [sp, #0x24]
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0]
	cmp r0, #0
	bne _022472E8
	bl sub_02022974
_022472E8:
	ldr r0, [sp, #0x58]
	ldrb r0, [r0]
	cmp r0, #3
	blo _022472F4
	bl sub_02022974
_022472F4:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_02246F9C

	thumb_func_start ov17_022472F8
ov17_022472F8: ; 0x022472F8
	ldrb r0, [r0]
	cmp r0, #4
	bne _02247302
	mov r0, #1
	bx lr
_02247302:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov17_022472F8

	thumb_func_start ov17_02247308
ov17_02247308: ; 0x02247308
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0xe0
	ldr r0, [r0, #0]
	lsl r0, r0, #8
	lsr r0, r0, #0x18
	beq _0224731A
	mov r0, #1
	bx lr
_0224731A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02247308

	thumb_func_start ov17_02247320
ov17_02247320: ; 0x02247320
	mov r1, #0
_02247322:
	ldrb r0, [r2, #0xa]
	cmp r0, #5
	bne _0224732C
	mov r0, #1
	bx lr
_0224732C:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247322
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247320

	thumb_func_start ov17_02247338
ov17_02247338: ; 0x02247338
	mov r1, #0
_0224733A:
	ldrb r0, [r2, #0xa]
	cmp r0, #9
	bne _02247344
	mov r0, #1
	bx lr
_02247344:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _0224733A
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247338

	thumb_func_start ov17_02247350
ov17_02247350: ; 0x02247350
	mov r1, #0
_02247352:
	ldrb r0, [r2, #0xa]
	cmp r0, #0xc
	bne _0224735C
	mov r0, #1
	bx lr
_0224735C:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247352
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247350

	thumb_func_start ov17_02247368
ov17_02247368: ; 0x02247368
	mov r1, #0
_0224736A:
	ldrb r0, [r2, #0xa]
	cmp r0, #0xf
	bne _02247374
	mov r0, #1
	bx lr
_02247374:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _0224736A
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247368

	thumb_func_start ov17_02247380
ov17_02247380: ; 0x02247380
	mov r1, #0
_02247382:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x11
	bne _0224738C
	mov r0, #1
	bx lr
_0224738C:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247382
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247380

	thumb_func_start ov17_02247398
ov17_02247398: ; 0x02247398
	mov r1, #0
_0224739A:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x12
	bne _022473A4
	mov r0, #1
	bx lr
_022473A4:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _0224739A
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247398

	thumb_func_start ov17_022473B0
ov17_022473B0: ; 0x022473B0
	mov r1, #0
_022473B2:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x13
	bne _022473BC
	mov r0, #1
	bx lr
_022473BC:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _022473B2
	mov r0, #0
	bx lr
	thumb_func_end ov17_022473B0

	thumb_func_start ov17_022473C8
ov17_022473C8: ; 0x022473C8
	mov r1, #0
_022473CA:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x14
	bne _022473D4
	mov r0, #1
	bx lr
_022473D4:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _022473CA
	mov r0, #0
	bx lr
	thumb_func_end ov17_022473C8

	thumb_func_start ov17_022473E0
ov17_022473E0: ; 0x022473E0
	mov r1, #0
_022473E2:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x15
	bne _022473EC
	mov r0, #1
	bx lr
_022473EC:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _022473E2
	mov r0, #0
	bx lr
	thumb_func_end ov17_022473E0

	thumb_func_start ov17_022473F8
ov17_022473F8: ; 0x022473F8
	push {r3, r4}
	lsl r1, r1, #1
	add r2, r0, r1
	mov r1, #0x12
	ldrsh r3, [r2, r1]
	mov r4, #0
_02247404:
	ldrsh r2, [r0, r1]
	cmp r3, r2
	bgt _02247412
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, #4
	blt _02247404
_02247412:
	cmp r4, #4
	bne _0224741C
	mov r0, #1
	pop {r3, r4}
	bx lr
_0224741C:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_022473F8

	thumb_func_start ov17_02247424
ov17_02247424: ; 0x02247424
	push {r3, r4}
	ldrb r2, [r0]
	cmp r2, #4
	bne _0224744E
	lsl r1, r1, #1
	add r2, r0, r1
	mov r1, #0x12
	ldrsh r3, [r2, r1]
	mov r4, #0
_02247436:
	ldrsh r2, [r0, r1]
	cmp r3, r2
	bgt _02247444
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, #4
	blt _02247436
_02247444:
	cmp r4, #4
	bne _0224744E
	mov r0, #1
	pop {r3, r4}
	bx lr
_0224744E:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_02247424

	thumb_func_start ov17_02247454
ov17_02247454: ; 0x02247454
	ldr r3, [sp]
	mov r1, #0
_02247458:
	ldrb r0, [r2, #0xa]
	cmp r0, #4
	bne _02247468
	ldrb r0, [r2, #0xb]
	cmp r3, r0
	bne _02247468
	mov r0, #1
	bx lr
_02247468:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247458
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247454

	thumb_func_start ov17_02247474
ov17_02247474: ; 0x02247474
	ldr r3, [sp]
	mov r1, #0
_02247478:
	ldrb r0, [r2, #0xb]
	cmp r3, r0
	bne _02247482
	mov r0, #1
	bx lr
_02247482:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247478
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02247474

	thumb_func_start ov17_02247490
ov17_02247490: ; 0x02247490
	push {r3, r4, r5, r6}
	ldr r5, [sp, #0x10]
	mov r4, #0
_02247496:
	ldrb r1, [r2, #0xb]
	cmp r5, r1
	beq _022474A4
	add r4, r4, #1
	add r2, #0xc
	cmp r4, #4
	blt _02247496
_022474A4:
	cmp r4, #4
	bne _022474AE
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_022474AE:
	mov r5, #0
	add r6, r5, #0
	mov r2, #1
	mov r1, #0x22
_022474B6:
	add r4, r0, r6
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _022474C2
	strb r2, [r3, r6]
	add r5, r5, #1
_022474C2:
	add r6, r6, #1
	cmp r6, #3
	blt _022474B6
	cmp r5, #0
	ble _022474D2
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022474D2:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247490

	thumb_func_start ov17_022474D8
ov17_022474D8: ; 0x022474D8
	push {r3, r4, r5, r6}
	ldr r5, [sp, #0x10]
	mov r4, #0
_022474DE:
	ldrb r1, [r2, #0xb]
	cmp r5, r1
	beq _022474EC
	add r4, r4, #1
	add r2, #0xc
	cmp r4, #4
	blt _022474DE
_022474EC:
	cmp r4, #4
	bne _022474F6
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_022474F6:
	mov r5, #0
	add r6, r5, #0
	mov r2, #1
	mov r1, #0x22
_022474FE:
	add r4, r0, r6
	ldrsb r4, [r4, r1]
	cmp r4, #0x1e
	bne _0224750A
	add r5, r5, #1
	strb r2, [r3, r6]
_0224750A:
	add r6, r6, #1
	cmp r6, #3
	blt _022474FE
	cmp r5, #0
	ble _0224751A
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0224751A:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_022474D8

	thumb_func_start ov17_02247520
ov17_02247520: ; 0x02247520
	mov r1, #0
_02247522:
	ldrb r0, [r2, #0xa]
	cmp r0, #8
	bne _0224752C
	mov r0, #1
	bx lr
_0224752C:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _02247522
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247520

	thumb_func_start ov17_02247538
ov17_02247538: ; 0x02247538
	mov r1, #0
_0224753A:
	ldrb r0, [r2, #0xa]
	cmp r0, #0xd
	bne _02247544
	mov r0, #1
	bx lr
_02247544:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #4
	blt _0224753A
	mov r0, #0
	bx lr
	thumb_func_end ov17_02247538

	thumb_func_start ov17_02247550
ov17_02247550: ; 0x02247550
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_0224755A:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _02247566
	add r6, r6, #1
	strb r2, [r3, r5]
_02247566:
	add r5, r5, #1
	cmp r5, #3
	blt _0224755A
	cmp r6, #0
	ble _02247576
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02247576:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247550

	thumb_func_start ov17_0224757C
ov17_0224757C: ; 0x0224757C
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_02247586:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x1e
	bne _02247592
	add r6, r6, #1
	strb r2, [r3, r5]
_02247592:
	add r5, r5, #1
	cmp r5, #3
	blt _02247586
	cmp r6, #0
	ble _022475A2
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022475A2:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_0224757C

	thumb_func_start ov17_022475A8
ov17_022475A8: ; 0x022475A8
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_022475B2:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0xa
	bgt _022475BE
	add r6, r6, #1
	strb r2, [r3, r5]
_022475BE:
	add r5, r5, #1
	cmp r5, #3
	blt _022475B2
	cmp r6, #0
	ble _022475CE
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022475CE:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_022475A8

	thumb_func_start ov17_022475D4
ov17_022475D4: ; 0x022475D4
	push {r3, r4}
	mov r4, #0
	mov r1, #0x22
_022475DA:
	add r2, r0, r4
	ldrsb r2, [r2, r1]
	cmp r2, #0x14
	bge _022475E8
	mov r0, #0
	pop {r3, r4}
	bx lr
_022475E8:
	add r4, r4, #1
	cmp r4, #3
	blt _022475DA
	mov r1, #0
	mov r0, #1
_022475F2:
	strb r0, [r3, r1]
	add r1, r1, #1
	cmp r1, #3
	blt _022475F2
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_022475D4

	thumb_func_start ov17_02247600
ov17_02247600: ; 0x02247600
	push {r3, r4}
	mov r4, #0
	mov r1, #0x22
_02247606:
	add r2, r0, r4
	ldrsb r2, [r2, r1]
	cmp r2, #0x14
	ble _02247614
	mov r0, #0
	pop {r3, r4}
	bx lr
_02247614:
	add r4, r4, #1
	cmp r4, #3
	blt _02247606
	mov r1, #0
	mov r0, #1
_0224761E:
	strb r0, [r3, r1]
	add r1, r1, #1
	cmp r1, #3
	blt _0224761E
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02247600

	thumb_func_start ov17_0224762C
ov17_0224762C: ; 0x0224762C
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_02247636:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x14
	bgt _02247642
	strb r2, [r3, r5]
	add r6, r6, #1
_02247642:
	add r5, r5, #1
	cmp r5, #3
	blt _02247636
	cmp r6, #1
	bne _02247652
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02247652:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_0224762C

	thumb_func_start ov17_02247658
ov17_02247658: ; 0x02247658
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_02247662:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _0224766E
	strb r2, [r3, r5]
	add r6, r6, #1
_0224766E:
	add r5, r5, #1
	cmp r5, #3
	blt _02247662
	cmp r6, #2
	bne _0224767E
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0224767E:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247658

	thumb_func_start ov17_02247684
ov17_02247684: ; 0x02247684
	push {r3, r4, r5, r6}
	mov r6, #0
	add r5, r6, #0
	mov r2, #1
	mov r1, #0x22
_0224768E:
	add r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0
	bne _0224769A
	strb r2, [r3, r5]
	add r6, r6, #1
_0224769A:
	add r5, r5, #1
	cmp r5, #3
	blt _0224768E
	cmp r6, #1
	bne _022476AA
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022476AA:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247684

	thumb_func_start ov17_022476B0
ov17_022476B0: ; 0x022476B0
	push {r3, r4, r5, r6}
	ldr r5, [sp, #0x10]
	mov r4, #0
_022476B6:
	ldrb r1, [r2, #0xb]
	cmp r5, r1
	beq _022476C4
	add r4, r4, #1
	add r2, #0xc
	cmp r4, #4
	blt _022476B6
_022476C4:
	cmp r4, #4
	bne _022476CE
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_022476CE:
	mov r5, #0
	add r6, r5, #0
	mov r2, #1
	mov r1, #0x22
_022476D6:
	add r4, r0, r6
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _022476E2
	strb r2, [r3, r6]
	add r5, r5, #1
_022476E2:
	add r6, r6, #1
	cmp r6, #3
	blt _022476D6
	cmp r5, #0
	ble _022476F2
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022476F2:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_022476B0

	thumb_func_start ov17_022476F8
ov17_022476F8: ; 0x022476F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02247718
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02247732
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_02247718:
	bl sub_02007DC8
	add r6, r5, #0
	add r6, #0x48
	lsl r7, r4, #4
	ldr r0, [r6, r7]
	bl sub_020181C4
	lsl r0, r4, #2
	mov r1, #0
	add r0, r5, r0
	str r1, [r0, #8]
	str r1, [r6, r7]
_02247732:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022476F8

	thumb_func_start ov17_02247734
ov17_02247734: ; 0x02247734
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0224773A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_022476F8
	add r4, r4, #1
	cmp r4, #4
	blt _0224773A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02247734

	thumb_func_start ov17_0224774C
ov17_0224774C: ; 0x0224774C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r3, _02247794 ; =0x000080EA
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x43
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02247794 ; =0x000080EA
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x44
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02247794 ; =0x000080EA
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x45
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02247794: .word 0x000080EA
	thumb_func_end ov17_0224774C

	thumb_func_start ov17_02247798
ov17_02247798: ; 0x02247798
	push {r4, lr}
	ldr r1, _022477B4 ; =0x000080EA
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _022477B4 ; =0x000080EA
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _022477B4 ; =0x000080EA
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_022477B4: .word 0x000080EA
	thumb_func_end ov17_02247798

	thumb_func_start ov17_022477B8
ov17_022477B8: ; 0x022477B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x16
	mov r1, #0x18
	add r7, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _0224782C ; =0x022543F8
	bl sub_0200CE6C
	lsl r1, r6, #0x10
	lsl r2, r7, #0x10
	mov r3, #1
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	str r0, [r4, #4]
	bl sub_0200D500
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _022477FC
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0200D364
_022477FC:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_0200D324
	lsl r0, r6, #8
	str r0, [r4, #8]
	lsl r0, r7, #8
	str r0, [r4, #0xc]
	ldr r0, _02247830 ; =0x000004F9
	ldr r2, _02247834 ; =0x0000C350
	add r1, r5, r0
	str r1, [r4, #0]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _02247838 ; =ov17_02247840
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r0, _0224783C ; =0x000006E1
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224782C: .word 0x022543F8
_02247830: .word 0x000004F9
_02247834: .word 0x0000C350
_02247838: .word ov17_02247840
_0224783C: .word 0x000006E1
	thumb_func_end ov17_022477B8

	thumb_func_start ov17_02247840
ov17_02247840: ; 0x02247840
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _022478AE
	ldr r0, [r4, #0x10]
	bl sub_0201D2B8
	lsl r1, r0, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r5, r0, #0xc
	mov r0, #6
	mov r3, #1
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	lsl r3, r3, #8
	sub r2, r0, r3
	str r2, [r4, #0xc]
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	asr r6, r1, #7
	lsr r6, r6, #0x18
	add r6, r1, r6
	asr r1, r6, #8
	add r1, r1, r5
	asr r5, r2, #7
	lsr r5, r5, #0x18
	add r5, r2, r5
	lsl r1, r1, #0x10
	lsl r2, r5, #8
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0xc
	bl sub_0200D500
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x16]
	cmp r0, #0x3c
	bhs _022478A6
	ldr r1, [r4, #0xc]
	ldr r0, _022478CC ; =0xFFFFE000
	cmp r1, r0
	bgt _022478C8
_022478A6:
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_022478AE:
	ldr r0, [r4, #4]
	bl sub_0200D0F4
	ldr r1, [r4, #0]
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_022478C8:
	pop {r4, r5, r6, pc}
	nop
_022478CC: .word 0xFFFFE000
	thumb_func_end ov17_02247840

	thumb_func_start ov17_022478D0
ov17_022478D0: ; 0x022478D0
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	add r4, r1, #0
	cmp r0, #0
	beq _022478E2
	bl sub_02022974
_022478E2:
	mov r1, #0x30
	ldr r2, [r5, #0]
	mul r1, r4
	add r1, r2, r1
	ldrh r1, [r1, #0x1a]
	add r0, sp, #0x10
	bl sub_0207697C
	ldr r0, _02247914 ; =0xFFFFFDC0
	mov r2, #5
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	add r1, sp, #0x10
	lsl r2, r2, #6
	mov r3, #0x20
	bl sub_02007C34
	str r0, [r5, #0x24]
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02247914: .word 0xFFFFFDC0
	thumb_func_end ov17_022478D0

	thumb_func_start ov17_02247918
ov17_02247918: ; 0x02247918
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0224792A
	bl sub_02007DC8
	mov r0, #0
	str r0, [r4, #0x24]
_0224792A:
	pop {r4, pc}
	thumb_func_end ov17_02247918

	thumb_func_start ov17_0224792C
ov17_0224792C: ; 0x0224792C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	beq _02247942
	cmp r6, #0
	bne _02247942
	bl sub_02022974
_02247942:
	cmp r4, #0
	beq _0224798C
	cmp r4, #1
	bne _02247988
	ldrb r4, [r6]
	ldr r3, [r5, #0]
	mov r0, #1
	lsl r2, r4, #2
	str r0, [sp]
	mov r0, #2
	add r2, r3, r2
	add r4, r3, r4
	mov r3, #0x42
	str r0, [sp, #4]
	lsl r3, r3, #2
	add r2, #0xe8
	ldrb r3, [r4, r3]
	ldr r0, [r5, #0x48]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200B48C
	ldrb r0, [r6]
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_02247988:
	bl sub_02022974
_0224798C:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224792C

	thumb_func_start ov17_02247990
ov17_02247990: ; 0x02247990
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02247A00 ; =0x00000171
	add r7, r2, #0
	ldrb r0, [r1, r0]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _022479B2
	ldr r0, _02247A04 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027AC0
	add r4, r0, #0
	b _022479B4
_022479B2:
	mov r4, #1
_022479B4:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	bl ov17_0224792C
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x34
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x4c]
	add r0, #0x34
	mov r1, #1
	bl sub_0201D738
	add r5, #0xd0
	strb r0, [r5]
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247A00: .word 0x00000171
_02247A04: .word 0x00001988
	thumb_func_end ov17_02247990

	thumb_func_start ov17_02247A08
ov17_02247A08: ; 0x02247A08
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #0xf
	blo _02247A1A
	bl sub_02022974
_02247A1A:
	str r4, [sp]
	ldr r2, _02247A34 ; =0x0225442C
	lsl r3, r5, #2
	ldr r4, _02247A38 ; =0x0225442E
	ldrh r2, [r2, r3]
	ldrb r3, [r4, r3]
	ldr r1, [r6, #0x44]
	add r0, r6, #0
	bl ov17_02247990
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02247A34: .word 0x0225442C
_02247A38: .word 0x0225442E
	thumb_func_end ov17_02247A08

	thumb_func_start ov17_02247A3C
ov17_02247A3C: ; 0x02247A3C
	ldr r3, _02247A44 ; =sub_0201D724
	add r0, #0xd0
	ldrb r0, [r0]
	bx r3
	; .align 2, 0
_02247A44: .word sub_0201D724
	thumb_func_end ov17_02247A3C

	thumb_func_start ov17_02247A48
ov17_02247A48: ; 0x02247A48
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02247A7C ; =0x02254488
	add r3, sp, #0
	str r1, [sp]
	mov r1, #0x11
	strh r1, [r3, #4]
	ldr r1, [r0, #0]
	ldr r2, _02247A80 ; =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	sub r1, r2, #7
	ldr r4, [r0, #0]
	add r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0, #0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	ldr r1, _02247A84 ; =0x000004FC
	add r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02247A7C: .word 0x02254488
_02247A80: .word 0x00000123
_02247A84: .word 0x000004FC
	thumb_func_end ov17_02247A48

	thumb_func_start ov17_02247A88
ov17_02247A88: ; 0x02247A88
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247A88

	thumb_func_start ov17_02247A9C
ov17_02247A9C: ; 0x02247A9C
	push {r3, lr}
	add r1, r2, #0
	mov r2, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247A9C

	thumb_func_start ov17_02247AAC
ov17_02247AAC: ; 0x02247AAC
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02247AAC

	thumb_func_start ov17_02247AB0
ov17_02247AB0: ; 0x02247AB0
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247AB0

	thumb_func_start ov17_02247AC4
ov17_02247AC4: ; 0x02247AC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldr r0, _02247AE8 ; =0x00000F1C
	mov r2, #1
	strb r2, [r1, r0]
	ldr r0, [r1, #0]
	bl sub_02094EDC
	cmp r0, #0
	bne _02247AE6
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov17_0224F26C
_02247AE6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02247AE8: .word 0x00000F1C
	thumb_func_end ov17_02247AC4

	thumb_func_start ov17_02247AEC
ov17_02247AEC: ; 0x02247AEC
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247AEC

	thumb_func_start ov17_02247B00
ov17_02247B00: ; 0x02247B00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	add r6, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	mov r5, #0
	strh r0, [r4, #0xa]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0xc]
	ldrb r0, [r7]
	strb r0, [r4, #0x11]
	b _02247B60
_02247B3C:
	ldr r1, [r4, #0]
	lsl r0, r5, #4
	add r1, r1, r0
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02247B5E
	bl ov22_0225B020
	ldr r1, [r4, #0]
	lsl r0, r5, #4
	add r2, r1, r0
	mov r0, #0xf2
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r2, r0]
_02247B5E:
	add r5, r5, #1
_02247B60:
	cmp r5, #4
	blt _02247B3C
	ldrb r0, [r7]
	ldr r1, [r6, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	mov r0, #0x16
	str r0, [sp, #0x20]
	mov r1, #0x80
	mov r0, #0x68
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldrb r2, [r7]
	lsl r2, r2, #4
	add r3, r6, r2
	ldr r2, _02247C44 ; =0x00000F24
	str r1, [r3, r2]
	ldrb r1, [r7]
	lsl r1, r1, #4
	add r3, r6, r1
	add r1, r2, #4
	str r0, [r3, r1]
	ldrb r1, [r7]
	ldr r2, [r6, #0]
	add r0, sp, #0x14
	lsl r1, r1, #2
	add r1, r2, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	bl ov22_0225AFD4
	ldrb r1, [r7]
	lsl r1, r1, #4
	add r2, r6, r1
	mov r1, #0xf2
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldrb r0, [r7]
	lsl r0, r0, #4
	add r0, r6, r0
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov22_0225B074
	ldr r0, _02247C48 ; =0x04000048
	mov r2, #0x3f
	ldrh r1, [r0]
	mov r3, #0x1f
	bic r1, r2
	add r5, r1, #0
	orr r5, r3
	mov r1, #0x20
	orr r1, r5
	strh r1, [r0]
	ldrh r1, [r0, #2]
	bic r1, r2
	orr r1, r3
	strh r1, [r0, #2]
	mov r1, #1
	add r2, r1, #0
	add r0, #8
	sub r2, #0x11
	bl sub_020BF578
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02247C4C ; =0xFFFF1FFF
	mov r3, #0xff
	and r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	mov r1, #0xf6
	str r0, [r2, #0]
	lsl r1, r1, #4
	mov r0, #0
	strb r0, [r6, r1]
	add r2, r1, #1
	strb r0, [r6, r2]
	add r2, r1, #2
	strb r3, [r6, r2]
	ldr r2, _02247C50 ; =0x02254468
	add r1, r1, #3
	ldrsb r2, [r2, r0]
	mov r3, #2
	add r2, r2, #4
	lsl r2, r2, #3
	strb r2, [r6, r1]
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x16
	str r0, [sp, #0xc]
	ldr r2, [r6, #0x30]
	mov r0, #0x2d
	mov r1, #0x15
	bl sub_02006E60
	ldr r0, _02247C54 ; =ov17_02247C5C
	ldr r2, _02247C58 ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02247C44: .word 0x00000F24
_02247C48: .word 0x04000048
_02247C4C: .word 0xFFFF1FFF
_02247C50: .word 0x02254468
_02247C54: .word ov17_02247C5C
_02247C58: .word 0x00007530
	thumb_func_end ov17_02247B00

	thumb_func_start ov17_02247C5C
ov17_02247C5C: ; 0x02247C5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #4
	bhi _02247D3E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247C74: ; jump table
	.short _02247C7E - _02247C74 - 2 ; case 0
	.short _02247C84 - _02247C74 - 2 ; case 1
	.short _02247CDE - _02247C74 - 2 ; case 2
	.short _02247CE4 - _02247C74 - 2 ; case 3
	.short _02247D24 - _02247C74 - 2 ; case 4
_02247C7E:
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247C84:
	ldr r1, _02247D58 ; =0x04000048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x1e
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r3, r0, #0
	ldrb r0, [r4, #0x11]
	mov r2, #0xf2
	lsl r2, r2, #4
	lsl r1, r0, #4
	ldr r0, [r4, #0]
	add r5, r0, r1
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl ov22_0225B158
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r1, r1, r0
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov22_0225B074
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247CDE:
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247CE4:
	ldr r1, _02247D58 ; =0x04000048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x1f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _02247D5C ; =0x00001FFF
	ldr r0, [r0, #0x50]
	add r3, r1, #0
	bl sub_02003A2C
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0]
	ldr r2, _02247D60 ; =0x00003FFF
	ldr r0, [r0, #0x50]
	mov r1, #2
	bl sub_02003A2C
	ldr r0, _02247D64 ; =0x000006EC
	bl sub_02005748
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247D24:
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0xa
	ble _02247D56
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247D3E:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02247D56:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02247D58: .word 0x04000048
_02247D5C: .word 0x00001FFF
_02247D60: .word 0x00003FFF
_02247D64: .word 0x000006EC
	thumb_func_end ov17_02247C5C

	thumb_func_start ov17_02247D68
ov17_02247D68: ; 0x02247D68
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247D68

	thumb_func_start ov17_02247D7C
ov17_02247D7C: ; 0x02247D7C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02247DC0 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02247DC4 ; =ov17_02247DC8
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247DC0: .word 0x00007530
_02247DC4: .word ov17_02247DC8
	thumb_func_end ov17_02247D7C

	thumb_func_start ov17_02247DC8
ov17_02247DC8: ; 0x02247DC8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02247DDA
	cmp r0, #1
	beq _02247E0A
	b _02247E5E
_02247DDA:
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247E0A:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	mov r0, #1
	ldr r1, [r4, #0x18]
	lsl r0, r0, #8
	add r2, r1, r0
	lsl r1, r0, #6
	str r2, [r4, #0x18]
	cmp r2, r1
	blt _02247E34
	lsl r0, r0, #6
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_02247E34:
	ldrb r0, [r4, #0x11]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldrb r0, [r4, #0x11]
	ldr r2, [r4, #0x18]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_02247E5E:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02247DC8

	thumb_func_start ov17_02247E78
ov17_02247E78: ; 0x02247E78
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02247E78

	thumb_func_start ov17_02247E8C
ov17_02247E8C: ; 0x02247E8C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02247ED4 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0x12]
	mov r0, #0
	strb r0, [r4, #0x1a]
	ldr r0, _02247ED8 ; =ov17_02247F8C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247ED4: .word 0x00007530
_02247ED8: .word ov17_02247F8C
	thumb_func_end ov17_02247E8C

	thumb_func_start ov17_02247EDC
ov17_02247EDC: ; 0x02247EDC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02247F24 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x12]
	mov r0, #1
	strb r0, [r4, #0x1a]
	ldr r0, _02247F28 ; =ov17_02247F8C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247F24: .word 0x00007530
_02247F28: .word ov17_02247F8C
	thumb_func_end ov17_02247EDC

	thumb_func_start ov17_02247F2C
ov17_02247F2C: ; 0x02247F2C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	ldr r2, _02247F84 ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r1, [r6, #1]
	ldrb r0, [r6, #2]
	add r0, r1, r0
	strb r0, [r4, #0x12]
	ldrb r0, [r6, #1]
	add r1, r4, #0
	strb r0, [r4, #0x14]
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x15]
	mov r0, #0
	strb r0, [r4, #0x1a]
	mov r0, #1
	strb r0, [r4, #0x1b]
	ldr r0, _02247F88 ; =ov17_02247F8C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247F84: .word 0x00007530
_02247F88: .word ov17_02247F8C
	thumb_func_end ov17_02247F2C

	thumb_func_start ov17_02247F8C
ov17_02247F8C: ; 0x02247F8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _02247FA6
	cmp r0, #1
	beq _02247FB6
	cmp r0, #2
	bne _02247FA4
	b _022480FE
_02247FA4:
	b _02248118
_02247FA6:
	ldr r0, _02248134 ; =0x000006E5
	bl sub_02005748
	mov r0, #0xf
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
_02247FB6:
	ldrb r1, [r5, #0x13]
	ldrb r0, [r5, #0x12]
	cmp r1, r0
	blo _02247FD2
	mov r0, #0
	strb r0, [r5, #0x11]
	ldr r0, _02248134 ; =0x000006E5
	bl sub_02005748
	ldrb r0, [r5, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02247FD2:
	ldrb r0, [r5, #0x1b]
	cmp r0, #1
	bne _02247FE2
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	blo _02247FE2
	mov r0, #1
	strb r0, [r5, #0x1a]
_02247FE2:
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _02247FF0
	sub r0, r0, #1
	add sp, #8
	strb r0, [r5, #0x11]
	pop {r3, r4, r5, r6, r7, pc}
_02247FF0:
	mov r0, #3
	strb r0, [r5, #0x11]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_02094E98
	mov r1, #0x60
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_02094E98
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1a
	sub r1, r1, r2
	mov r0, #0x1a
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_02094E98
	mov r1, #1
	tst r0, r1
	beq _02248034
	ldr r0, [sp, #4]
	add r0, #0x80
	b _0224803A
_02248034:
	ldr r0, [sp, #4]
	mov r1, #0x80
	sub r0, r1, r0
_0224803A:
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_02094E98
	mov r1, #1
	tst r0, r1
	beq _02248052
	add r0, r7, #0
	add r0, #0x60
	b _02248056
_02248052:
	mov r0, #0x60
	sub r0, r0, r7
_02248056:
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _022480C6
	mov r0, #0x16
	ldrsh r0, [r5, r0]
	cmp r0, #0x80
	bge _0224806C
	cmp r6, #0x80
	blt _02248074
_0224806C:
	cmp r0, #0x80
	ble _022480C6
	cmp r6, #0x80
	ble _022480C6
_02248074:
	mov r0, #0x18
	ldrsh r0, [r5, r0]
	cmp r0, #0x60
	bge _02248080
	cmp r4, #0x60
	blt _02248088
_02248080:
	cmp r0, #0x60
	ble _022480C6
	cmp r4, #0x60
	ble _022480C6
_02248088:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_02094E98
	mov r1, #1
	tst r0, r1
	beq _022480B2
	cmp r6, #0x80
	bge _022480A6
	ldr r0, [sp, #4]
	add r0, #0x80
	str r0, [sp, #4]
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	b _022480C6
_022480A6:
	ldr r0, [sp, #4]
	mov r1, #0x80
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	b _022480C6
_022480B2:
	cmp r4, #0x60
	bge _022480BE
	add r7, #0x60
	lsl r0, r7, #0x10
	asr r4, r0, #0x10
	b _022480C6
_022480BE:
	mov r0, #0x60
	sub r0, r0, r7
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_022480C6:
	ldrb r1, [r5, #0x13]
	mov r0, #1
	tst r0, r1
	ldrb r0, [r5, #0x1a]
	beq _022480E2
	str r0, [sp]
	mov r3, #0x2d
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r4, #0
	lsl r3, r3, #0xe
	bl ov17_022477B8
	b _022480F0
_022480E2:
	str r0, [sp]
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0
	bl ov17_022477B8
_022480F0:
	strh r6, [r5, #0x16]
	strh r4, [r5, #0x18]
	ldrb r0, [r5, #0x13]
	add sp, #8
	add r0, r0, #1
	strb r0, [r5, #0x13]
	pop {r3, r4, r5, r6, r7, pc}
_022480FE:
	ldrb r0, [r5, #0x11]
	add r0, r0, #1
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1e
	bls _02248130
	mov r0, #0
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02248118:
	mov r2, #0
	ldr r0, [r5, #0xc]
	add r1, r5, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02248130:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248134: .word 0x000006E5
	thumb_func_end ov17_02247F8C

	thumb_func_start ov17_02248138
ov17_02248138: ; 0x02248138
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02248138

	thumb_func_start ov17_0224814C
ov17_0224814C: ; 0x0224814C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02248190 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02248194 ; =ov17_02248198
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248190: .word 0x00007530
_02248194: .word ov17_02248198
	thumb_func_end ov17_0224814C

	thumb_func_start ov17_02248198
ov17_02248198: ; 0x02248198
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r3, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _022481BC
	cmp r0, #1
	beq _022481E4
	b _02248218
_022481BC:
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r1, r1, r0
	ldr r0, _02248254 ; =0x00000F24
	ldr r1, [r1, r0]
	add r0, r0, #4
	lsl r1, r1, #8
	str r1, [r4, #0x14]
	ldrb r1, [r4, #0x11]
	ldr r2, [r4, #0]
	lsl r1, r1, #4
	add r1, r2, r1
	ldr r0, [r1, r0]
	lsl r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022481E4:
	mov r0, #3
	ldr r1, [r4, #0x14]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #0x4b
	lsl r0, r0, #0xa
	str r1, [r4, #0x14]
	cmp r1, r0
	blt _022481FC
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_022481FC:
	ldrb r0, [r4, #0x11]
	ldr r2, [r4, #0x18]
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r1, r1, r0
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [r4, #0x14]
	asr r2, r2, #8
	asr r1, r1, #8
	bl ov22_0225B158
	pop {r3, r4, r5, pc}
_02248218:
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r1, r1, r0
	mov r0, #0xf2
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov22_0225B020
	ldrb r0, [r4, #0x11]
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r1, r1, r0
	mov r0, #0xf2
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_02248254: .word 0x00000F24
	thumb_func_end ov17_02248198

	thumb_func_start ov17_02248258
ov17_02248258: ; 0x02248258
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02248258

	thumb_func_start ov17_0224826C
ov17_0224826C: ; 0x0224826C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x18
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _022482A8 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _022482AC ; =ov17_022482B0
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022482A8: .word 0x00007530
_022482AC: .word ov17_022482B0
	thumb_func_end ov17_0224826C

	thumb_func_start ov17_022482B0
ov17_022482B0: ; 0x022482B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _022482C0
	b _022483E6
_022482C0:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _022482D4
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_022482D4:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _022482E8
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_022482E8:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x30]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _02248360
_02248300:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _02248404 ; =0x02254468
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _0224835A
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r0, [r0, #0x12]
	mov r7, #0x3f
	str r5, [sp, #4]
	lsl r1, r0, #1
	ldr r0, _02248408 ; =0x02254470
	lsl r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r0, r0, #5
	add r6, r1, r0
	b _02248354
_02248330:
	mov r4, #0
	b _02248348
_02248334:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_02248348:
	cmp r4, #8
	blt _02248334
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_02248354:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _02248330
_0224835A:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_02248360:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _02248300
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _022483A2
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _022483A2
	ldr r0, _02248404 ; =0x02254468
	sub r1, r1, #1
	ldrsb r0, [r0, r1]
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #0x3f
	str r0, [sp, #4]
	lsl r1, r1, #0xa
	b _0224839C
_0224838C:
	ldr r0, [sp, #4]
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_0224839C:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0224838C
_022483A2:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _02248400
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _02248400
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022483E6:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02248400:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02248404: .word 0x02254468
_02248408: .word 0x02254470
	thumb_func_end ov17_022482B0

	thumb_func_start ov17_0224840C
ov17_0224840C: ; 0x0224840C
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224840C

	thumb_func_start ov17_02248420
ov17_02248420: ; 0x02248420
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x18
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224845C ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02248460 ; =ov17_02248464
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224845C: .word 0x00007530
_02248460: .word ov17_02248464
	thumb_func_end ov17_02248420

	thumb_func_start ov17_02248464
ov17_02248464: ; 0x02248464
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _02248474
	b _022485C2
_02248474:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02248488
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_02248488:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224849C
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_0224849C:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x30]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _0224851C
_022484B4:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	mov r0, #4
	sub r1, r0, r1
	ldr r0, _022485E0 ; =0x02254468
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _02248516
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r1, [r0, #0x12]
	mov r0, #0xb
	mov r7, #0x3f
	sub r0, r0, r1
	lsl r1, r0, #1
	ldr r0, _022485E4 ; =0x02254470
	str r5, [sp, #4]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r7, r7, #0xa
	lsl r0, r0, #5
	add r6, r1, r0
	b _02248510
_022484EC:
	mov r4, #0
	b _02248504
_022484F0:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_02248504:
	cmp r4, #8
	blt _022484F0
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_02248510:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _022484EC
_02248516:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0224851C:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _022484B4
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0224857E
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0224857E
	mov r0, #5
	sub r1, r0, r1
	ldr r0, _022485E0 ; =0x02254468
	mov r7, #0x3f
	ldrsb r0, [r0, r1]
	lsl r7, r7, #0xa
	mov r6, #0x1d
	add r0, r0, #3
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #2
	str r0, [sp, #4]
	lsl r1, r1, #8
	b _02248578
_02248552:
	ldr r0, [sp, #4]
	ldr r5, [sp, #4]
	lsl r4, r0, #1
	ldrh r0, [r3, r4]
	lsl r5, r5, #0x1d
	and r0, r7
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	ldrh r2, [r3, r4]
	lsr r0, r0, #0x1f
	sub r5, r5, r0
	ror r5, r6
	add r0, r0, r5
	add r0, r0, r1
	orr r0, r2
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_02248578:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _02248552
_0224857E:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _022485DC
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _022485DC
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022485C2:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_022485DC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022485E0: .word 0x02254468
_022485E4: .word 0x02254470
	thumb_func_end ov17_02248464

	thumb_func_start ov17_022485E8
ov17_022485E8: ; 0x022485E8
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_022485E8

	thumb_func_start ov17_022485FC
ov17_022485FC: ; 0x022485FC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02248640 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02248644 ; =ov17_02248648
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248640: .word 0x00007530
_02248644: .word ov17_02248648
	thumb_func_end ov17_022485FC

	thumb_func_start ov17_02248648
ov17_02248648: ; 0x02248648
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224865A
	cmp r0, #1
	beq _02248684
	b _022486C8
_0224865A:
	ldrb r1, [r4, #0x11]
	ldr r0, [r4, #0]
	bl ov17_022478D0
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_02248684:
	mov r0, #1
	ldr r1, [r4, #0x14]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	mov r0, #0xe6
	lsl r0, r0, #8
	str r1, [r4, #0x14]
	cmp r1, r0
	bgt _0224869E
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0224869E:
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r3, [r4, #0x18]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_022486C8:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02248648

	thumb_func_start ov17_022486E4
ov17_022486E4: ; 0x022486E4
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_022486E4

	thumb_func_start ov17_022486F8
ov17_022486F8: ; 0x022486F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224873C ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02248740 ; =ov17_02248744
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224873C: .word 0x00007530
_02248740: .word ov17_02248744
	thumb_func_end ov17_022486F8

	thumb_func_start ov17_02248744
ov17_02248744: ; 0x02248744
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02248756
	cmp r0, #1
	beq _02248784
	b _022487C8
_02248756:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _02248762
	bl sub_02022974
_02248762:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_02248784:
	mov r0, #1
	ldr r1, [r4, #0x14]
	lsl r0, r0, #0xa
	add r1, r1, r0
	mov r0, #5
	lsl r0, r0, #0xe
	str r1, [r4, #0x14]
	cmp r1, r0
	blt _0224879E
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0224879E:
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r3, [r4, #0x18]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_022487C8:
	ldr r0, [r4, #0]
	bl ov17_02247918
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02248744

	thumb_func_start ov17_022487E8
ov17_022487E8: ; 0x022487E8
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_022487E8

	thumb_func_start ov17_022487FC
ov17_022487FC: ; 0x022487FC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	mov r0, #0x16
	mov r1, #0x58
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x58
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02248858 ; =0x00007530
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r0, [r4, #0xc]
	ldrb r0, [r7]
	strb r0, [r4, #0x11]
	str r6, [r4, #0x2c]
	str r6, [r4, #0x38]
	add r0, r4, #0
	ldrb r1, [r7]
	add r0, #0x46
	strb r1, [r0]
	str r6, [r4, #0x48]
	ldrb r0, [r7]
	ldr r1, [r6, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	str r0, [r4, #0x24]
	ldr r0, _0224885C ; =ov17_02248860
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248858: .word 0x00007530
_0224885C: .word ov17_02248860
	thumb_func_end ov17_022487FC

	thumb_func_start ov17_02248860
ov17_02248860: ; 0x02248860
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _02248878
	cmp r0, #1
	beq _02248902
	cmp r0, #2
	beq _0224892C
	b _0224895A
_02248878:
	ldr r0, _02248978 ; =ov17_02248A24
	ldr r2, _0224897C ; =0x0000753A
	add r1, #0x2c
	bl sub_0200D9E8
	add r1, r5, #0
	ldr r0, _02248980 ; =ov17_02248BE0
	ldr r2, _0224897C ; =0x0000753A
	add r1, #0x48
	bl sub_0200D9E8
	ldr r0, [r5, #0x38]
	ldr r1, [r0, #0xc]
	add r0, r5, #0
	add r0, #0x46
	ldrb r0, [r0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	mov r0, #0x16
	str r0, [sp, #0xc]
	mov r0, #0x80
	add r4, #0x40
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [r5, #0x38]
	add r0, sp, #0
	ldr r2, [r1, #0]
	add r1, r5, #0
	add r1, #0x46
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r2, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	bl ov22_0225AFD4
	add r1, r5, #0
	add r1, #0x46
	ldrb r1, [r1]
	ldr r2, [r5, #0x38]
	lsl r1, r1, #4
	add r2, r2, r1
	mov r1, #0xf2
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r5, #0
	add r0, #0x46
	ldrb r0, [r0]
	ldr r2, [r5, #0x38]
	lsl r0, r0, #4
	add r0, r2, r0
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov22_0225B074
	ldrb r0, [r5, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_02248902:
	add r0, r5, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	ldr r0, _02248984 ; =ov17_022489C8
	ldr r2, _0224897C ; =0x0000753A
	add r1, #0x14
	bl sub_0200D9E8
	add r1, r5, #0
	ldr r0, _02248988 ; =ov17_02248AA4
	ldr r2, _0224897C ; =0x0000753A
	add r1, #0x38
	bl sub_0200D9E8
	ldrb r0, [r5, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_0224892C:
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	add r0, r5, #0
	add r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	add r0, r5, #0
	add r0, #0x55
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	ldr r0, _0224898C ; =0x000006E5
	bl sub_02005748
	ldrb r0, [r5, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_0224895A:
	mov r2, #0
	ldr r0, [r5, #0xc]
	add r1, r5, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02248972:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02248978: .word ov17_02248A24
_0224897C: .word 0x0000753A
_02248980: .word ov17_02248BE0
_02248984: .word ov17_022489C8
_02248988: .word ov17_02248AA4
_0224898C: .word 0x000006E5
	thumb_func_end ov17_02248860

	thumb_func_start ov17_02248990
ov17_02248990: ; 0x02248990
	push {r3}
	sub sp, #0xc
	add r2, sp, #0
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	str r1, [r2, #8]
	ldr r1, [r0, #0x20]
	ldr r2, [sp]
	ldr r1, [r1, #0]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #4]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #8]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
	add sp, #0xc
	pop {r3}
	bx lr
	thumb_func_end ov17_02248990

	thumb_func_start ov17_022489C8
ov17_022489C8: ; 0x022489C8
	push {r4, lr}
	add r4, r1, #0
	ldrb r2, [r4, #0x14]
	cmp r2, #0
	beq _022489D8
	cmp r2, #1
	beq _022489FC
	b _02248A14
_022489D8:
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #0x10]
	str r0, [r4, #8]
	mov r0, #0x16
	bl ov12_02236004
	str r0, [r4, #0xc]
	bl ov12_02236320
	ldr r0, [r4, #0xc]
	ldr r1, _02248A20 ; =ov17_02248990
	bl ov12_02236384
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, pc}
_022489FC:
	ldr r0, [r4, #0xc]
	bl ov12_022363C4
	cmp r0, #0
	bne _02248A1C
	ldr r0, [r4, #0xc]
	bl ov12_02236428
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, pc}
_02248A14:
	mov r1, #1
	strb r1, [r4, #0x15]
	bl sub_0200DA58
_02248A1C:
	pop {r4, pc}
	nop
_02248A20: .word ov17_02248990
	thumb_func_end ov17_022489C8

	thumb_func_start ov17_02248A24
ov17_02248A24: ; 0x02248A24
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02248A3C
	cmp r0, #1
	beq _02248A56
	cmp r0, #2
	beq _02248A86
	b _02248A90
_02248A3C:
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	blo _02248AA0
	mov r0, #0
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #8]
	add sp, #0x28
	add r0, r0, #1
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02248A56:
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x28]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x50]
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0
	bl ov12_02237728
	str r0, [r4, #4]
	ldrb r0, [r4, #8]
	add sp, #0x28
	add r0, r0, #1
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02248A86:
	ldr r0, [r4, #4]
	bl ov12_022377F8
	cmp r0, #1
	beq _02248AA0
_02248A90:
	ldr r0, [r4, #4]
	bl ov12_0223783C
	mov r0, #1
	strb r0, [r4, #9]
	add r0, r5, #0
	bl sub_0200DA58
_02248AA0:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02248A24

	thumb_func_start ov17_02248AA4
ov17_02248AA4: ; 0x02248AA4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r6, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _02248ACA
	cmp r0, #1
	beq _02248B1A
	b _02248BCC
_02248ACA:
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	ldrb r0, [r4, #0xe]
	mov r3, #0xf2
	ldr r2, [r4, #0]
	lsl r0, r0, #4
	add r0, r2, r0
	lsl r3, r3, #4
	ldr r0, [r0, r3]
	add r2, r1, #0
	add r3, #0xe0
	bl ov22_0225B0EC
	ldrb r1, [r4, #0xe]
	ldr r2, [r4, #0]
	mov r0, #0x80
	lsl r1, r1, #4
	add r2, r2, r1
	ldr r1, _02248BDC ; =0x00000F24
	str r0, [r2, r1]
	ldrb r2, [r4, #0xe]
	ldr r3, [r4, #0]
	mov r0, #0x68
	lsl r2, r2, #4
	add r3, r3, r2
	add r2, r1, #4
	str r0, [r3, r2]
	ldrb r0, [r4, #0xe]
	ldr r2, [r4, #0]
	lsl r0, r0, #4
	add r2, r2, r0
	sub r0, r1, #4
	ldr r0, [r2, r0]
	mov r1, #1
	bl ov22_0225B074
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02248B1A:
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [r4, #4]
	ldr r1, [r4, #8]
	add r1, r1, r0
	str r1, [r4, #8]
	ldr r2, [r4, #4]
	lsl r1, r0, #3
	cmp r2, r1
	blt _02248B38
	lsl r0, r0, #3
	str r0, [r4, #4]
	str r0, [r4, #8]
_02248B38:
	ldrb r0, [r4, #0xe]
	mov r3, #0xf2
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	lsl r3, r3, #4
	ldr r0, [r0, r3]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, #0xe0
	bl ov22_0225B0EC
	ldrb r0, [r4, #0xe]
	mov r2, #0xf2
	lsl r2, r2, #4
	lsl r1, r0, #4
	ldr r0, [r4, #0]
	add r3, r0, r1
	add r1, r2, #4
	ldr r0, [r3, r2]
	add r2, #8
	ldr r1, [r3, r1]
	ldr r2, [r3, r2]
	add r3, r6, #0
	bl ov22_0225B158
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #0xc
	cmp r1, r0
	blt _02248BD6
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #5
	bl sub_02074470
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x70
	bl sub_02074470
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r2, #0x7f
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x16
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	ldrb r6, [r4, #0xe]
	ldr r0, [r0, #0]
	add r2, #0xdd
	lsl r6, r6, #2
	add r0, r0, r6
	ldr r0, [r0, r2]
	lsl r2, r5, #0x10
	lsr r2, r2, #0x10
	bl sub_02077D3C
	ldrb r0, [r4, #0xc]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02248BCC:
	mov r0, #1
	strb r0, [r4, #0xd]
	add r0, r5, #0
	bl sub_0200DA58
_02248BD6:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02248BDC: .word 0x00000F24
	thumb_func_end ov17_02248AA4

	thumb_func_start ov17_02248BE0
ov17_02248BE0: ; 0x02248BE0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bls _02248BEE
	b _02248D16
_02248BEE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248BFA: ; jump table
	.short _02248C04 - _02248BFA - 2 ; case 0
	.short _02248C2A - _02248BFA - 2 ; case 1
	.short _02248C4C - _02248BFA - 2 ; case 2
	.short _02248CBA - _02248BFA - 2 ; case 3
	.short _02248CD2 - _02248BFA - 2 ; case 4
_02248C04:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _02248C10
	bl sub_02022974
_02248C10:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	bhi _02248C1E
	b _02248D26
_02248C1E:
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02248C2A:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x24]
	bl sub_020080C0
	lsl r0, r0, #8
	str r0, [r4, #8]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02248C4C:
	ldrb r1, [r4, #0xe]
	mov r0, #1
	tst r0, r1
	ldr r0, [r4, #0]
	beq _02248C7E
	ldr r3, [r4, #4]
	ldr r0, [r0, #0x24]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r3, [r4, #8]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	b _02248CA6
_02248C7E:
	ldr r3, [r4, #4]
	ldr r0, [r0, #0x24]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r3, [r4, #8]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	asr r2, r2, #8
	ldr r0, [r0, #0x24]
	mov r1, #1
	sub r2, r2, #3
	bl sub_02007DEC
_02248CA6:
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #3
	blo _02248D26
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02248CBA:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xf]
	cmp r0, #7
	blo _02248D26
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02248CD2:
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #0xa
	add r1, r1, r0
	mov r0, #5
	lsl r0, r0, #0xe
	str r1, [r4, #4]
	cmp r1, r0
	blt _02248CEC
	str r0, [r4, #4]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02248CEC:
	ldr r3, [r4, #4]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r3, [r4, #8]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	ldr r0, [r0, #0x24]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_02248D16:
	ldr r0, [r4, #0]
	bl ov17_02247918
	mov r0, #1
	strb r0, [r4, #0xd]
	add r0, r5, #0
	bl sub_0200DA58
_02248D26:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02248BE0

	thumb_func_start ov17_02248D28
ov17_02248D28: ; 0x02248D28
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02248D28

	thumb_func_start ov17_02248D3C
ov17_02248D3C: ; 0x02248D3C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x16
	mov r1, #0x1c
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	ldr r2, _02248D9C ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r6]
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0x13]
	ldrb r0, [r5, #4]
	strb r0, [r4, #0x14]
	ldrb r0, [r5, #5]
	strb r0, [r4, #0x15]
	ldrb r0, [r5, #6]
	strb r0, [r4, #0x16]
	ldrb r0, [r5, #7]
	strb r0, [r4, #0x17]
	ldrb r0, [r5, #9]
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #8]
	strb r0, [r4, #0x18]
	ldr r0, _02248DA0 ; =ov17_02248DA4
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248D9C: .word 0x00007530
_02248DA0: .word ov17_02248DA4
	thumb_func_end ov17_02248D3C

	thumb_func_start ov17_02248DA4
ov17_02248DA4: ; 0x02248DA4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02248DBA
	cmp r0, #1
	beq _02248DF2
	cmp r0, #2
	beq _02248E04
	b _02248E3C
_02248DBA:
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _02248DEC
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x34
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	add r2, r4, #0
	ldrb r1, [r4, #0x17]
	ldr r0, [r4, #0]
	add r2, #0x13
	bl ov17_02247A08
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248DEC:
	mov r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248DF2:
	ldr r0, [r4, #0]
	bl ov17_02247A3C
	cmp r0, #0
	bne _02248E54
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248E04:
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _02248E18
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248E18:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x18]
	cmp r1, r0
	blo _02248E54
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x34
	bl sub_0200E084
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248E3C:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02248E54:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02248DA4

	thumb_func_start ov17_02248E58
ov17_02248E58: ; 0x02248E58
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02248E58

	thumb_func_start ov17_02248E6C
ov17_02248E6C: ; 0x02248E6C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x16
	mov r1, #0x18
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	ldr r2, _02248EBC ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r5]
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	mov r0, #0xa
	ldrsb r0, [r6, r0]
	strb r0, [r4, #0x11]
	mov r0, #0xb
	ldrsb r0, [r6, r0]
	strb r0, [r4, #0x12]
	mov r0, #0xc
	ldrsb r0, [r6, r0]
	strb r0, [r4, #0x13]
	ldr r0, _02248EC0 ; =ov17_02248EC4
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248EBC: .word 0x00007530
_02248EC0: .word ov17_02248EC4
	thumb_func_end ov17_02248E6C

	thumb_func_start ov17_02248EC4
ov17_02248EC4: ; 0x02248EC4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02248ED8
	cmp r0, #1
	beq _02248F50
	b _02248F8C
_02248ED8:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldr r0, _02248FA8 ; =0x00000171
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02248F32
	ldr r0, _02248FAC ; =0x04000048
	ldr r1, _02248FB0 ; =0xFFFFC0FF
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x1f
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0, #2]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r2, r1
	strh r2, [r0, #2]
	lsl r3, r1, #0x15
	ldr r2, [r3, #0]
	ldr r0, _02248FB4 ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #9
	orr r0, r2
	str r0, [r3, #0]
	ldr r1, [r4, #0]
	ldr r0, _02248FB8 ; =0x00000F64
	mov r2, #0xf0
	strb r2, [r1, r0]
	ldr r2, [r4, #0]
	mov r3, #0
	add r1, r0, #1
	strb r3, [r2, r1]
	add r1, r0, #2
	ldr r2, [r4, #0]
	mov r3, #0xff
	strb r3, [r2, r1]
	ldr r1, [r4, #0]
	mov r2, #0x10
	add r0, r0, #3
	strb r2, [r1, r0]
_02248F32:
	mov r0, #1
	str r0, [sp]
	mov r1, #0x12
	mov r2, #0x11
	ldrb r0, [r4, #0x13]
	ldrsb r1, [r4, r1]
	ldrsb r2, [r4, r2]
	mov r3, #0x3d
	bl sub_0200AAE0
	ldrb r0, [r4, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248F50:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _02248FA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xd0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	ldr r0, [r0, #0x50]
	add r3, r1, #0
	bl sub_020038B0
	mov r2, #0
	str r2, [sp]
	mov r0, #0xe0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #2
	ldr r0, [r0, #0x50]
	add r3, r2, #0
	bl sub_020038B0
	ldrb r0, [r4, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248F8C:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02248FA4:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02248FA8: .word 0x00000171
_02248FAC: .word 0x04000048
_02248FB0: .word 0xFFFFC0FF
_02248FB4: .word 0xFFFF1FFF
_02248FB8: .word 0x00000F64
	thumb_func_end ov17_02248EC4

	thumb_func_start ov17_02248FBC
ov17_02248FBC: ; 0x02248FBC
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02248FBC

	thumb_func_start ov17_02248FD0
ov17_02248FD0: ; 0x02248FD0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x1c
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224900C ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02249010 ; =ov17_02249014
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224900C: .word 0x00007530
_02249010: .word ov17_02249014
	thumb_func_end ov17_02248FD0

	thumb_func_start ov17_02249014
ov17_02249014: ; 0x02249014
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r1, #0x18]
	str r1, [sp]
	add r1, r0, #1
	ldr r0, [sp]
	cmp r1, #0x1e
	str r1, [r0, #0x18]
	bne _02249030
	mov r1, #0x1e
	strb r1, [r0, #0x13]
	mov r1, #1
	strb r1, [r0, #0x15]
_02249030:
	ldr r0, [sp]
	ldr r0, [r0, #0]
	ldr r1, [r0, #0]
	ldr r0, _02249228 ; =0x00000171
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224906A
	ldr r0, [sp]
	ldr r0, [r0, #0x18]
	cmp r0, #0x1e
	bge _0224906A
	ldr r0, _0224922C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02249058
	ldr r0, _02249230 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0224906A
_02249058:
	ldr r0, [sp]
	mov r1, #0x1e
	str r1, [r0, #0x18]
	ldr r1, [sp]
	mov r0, #0
	strb r0, [r1, #0x13]
	mov r2, #1
	strb r2, [r1, #0x15]
	b _02249078
_0224906A:
	ldr r0, [sp]
	ldr r0, [r0, #0x18]
	cmp r0, #0x1e
	ble _02249076
	mov r0, #0
	b _02249078
_02249076:
	mov r0, #1
_02249078:
	ldr r1, [sp]
	ldrb r1, [r1, #0x10]
	cmp r1, #0
	beq _02249082
	b _022491FA
_02249082:
	ldr r1, [sp]
	mov r2, #0x14
	ldrsb r1, [r1, r2]
	cmp r1, #0
	ble _02249096
	ldr r0, [sp]
	sub r1, r1, #1
	strb r1, [r0, #0x14]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02249096:
	ldr r1, [sp]
	mov r2, #0x13
	ldrsb r1, [r1, r2]
	cmp r1, #0
	ble _022490AA
	ldr r0, [sp]
	sub r1, r1, #1
	strb r1, [r0, #0x13]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022490AA:
	ldr r1, [sp]
	strb r0, [r1, #0x13]
	add r0, r1, #0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022490C2
	ldr r0, _02249234 ; =0x000006ED
	bl sub_02005748
	ldr r0, [sp]
	mov r1, #0
	strb r1, [r0, #0x15]
_022490C2:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _02249136
_022490D6:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _02249238 ; =0x02254468
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _02249130
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r0, [r0, #0x12]
	mov r7, #0x3f
	str r5, [sp, #4]
	lsl r1, r0, #1
	ldr r0, _0224923C ; =0x02254470
	lsl r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r0, r0, #5
	add r6, r1, r0
	b _0224912A
_02249106:
	mov r4, #0
	b _0224911E
_0224910A:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_0224911E:
	cmp r4, #8
	blt _0224910A
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_0224912A:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _02249106
_02249130:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_02249136:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _022490D6
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _02249178
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _02249178
	ldr r0, _02249238 ; =0x02254468
	sub r1, r1, #1
	ldrsb r0, [r0, r1]
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #0x3f
	str r0, [sp, #4]
	lsl r1, r1, #0xa
	b _02249172
_02249162:
	ldr r0, [sp, #4]
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_02249172:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _02249162
_02249178:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldr r0, [sp]
	mov r1, #0xc
	ldrb r0, [r0, #0x12]
	lsl r0, r0, #5
	bl sub_020E2178
	ldr r1, [sp]
	mov r2, #0x11
	ldrsb r2, [r1, r2]
	ldr r1, _02249238 ; =0x02254468
	ldrsb r1, [r1, r2]
	add r1, r1, #4
	lsl r1, r1, #3
	sub r2, r1, r0
	ldr r0, [sp]
	ldr r1, _02249240 ; =0x00000F63
	ldr r0, [r0, #0]
	strb r2, [r0, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _022491C2
	ldr r2, _02249244 ; =0x04000050
	mov r0, #0
	strh r0, [r2]
	sub r2, #0x50
	ldr r1, [r2, #0]
	ldr r0, _02249248 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
_022491C2:
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _02249224
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _02249224
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022491FA:
	ldr r3, _02249244 ; =0x04000050
	mov r2, #0
	strh r2, [r3]
	sub r3, #0x50
	ldr r1, [r3, #0]
	ldr r0, _02249248 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r3, #0]
	ldr r0, [sp]
	ldr r1, [sp]
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02249224:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02249228: .word 0x00000171
_0224922C: .word 0x021BF67C
_02249230: .word 0x021BF6BC
_02249234: .word 0x000006ED
_02249238: .word 0x02254468
_0224923C: .word 0x02254470
_02249240: .word 0x00000F63
_02249244: .word 0x04000050
_02249248: .word 0xFFFF1FFF
	thumb_func_end ov17_02249014

	thumb_func_start ov17_0224924C
ov17_0224924C: ; 0x0224924C
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224924C

	thumb_func_start ov17_02249260
ov17_02249260: ; 0x02249260
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x16
	mov r1, #0x14
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrh r0, [r0, #0x10]
	bl sub_02005748
	ldr r0, _022492A4 ; =ov17_022492AC
	ldr r2, _022492A8 ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022492A4: .word ov17_022492AC
_022492A8: .word 0x00007530
	thumb_func_end ov17_02249260

	thumb_func_start ov17_022492AC
ov17_022492AC: ; 0x022492AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _022492D8 ; =0x000004F9
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022492D4
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_022492D4:
	pop {r3, r4, r5, pc}
	nop
_022492D8: .word 0x000004F9
	thumb_func_end ov17_022492AC

	thumb_func_start ov17_022492DC
ov17_022492DC: ; 0x022492DC
	push {r4, lr}
	mov r0, #0x17
	mov r1, #0xf4
	bl sub_02018144
	mov r1, #0
	mov r2, #0xf4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	add r0, #0x96
	strb r1, [r0]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_022492DC

	thumb_func_start ov17_02249300
ov17_02249300: ; 0x02249300
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _02249354 ; =0x022545C0
	add r5, r0, #0
	add r7, r4, #0
_0224930A:
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020183C4
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019EE0
	add r1, r4, #4
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019184
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r4, r4, #1
	add r6, #0x1c
	cmp r4, #4
	blo _0224930A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249354: .word 0x022545C0
	thumb_func_end ov17_02249300

	thumb_func_start ov17_02249358
ov17_02249358: ; 0x02249358
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_02249360:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl sub_02019120
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	cmp r4, #4
	blo _02249360
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02249358

	thumb_func_start ov17_02249380
ov17_02249380: ; 0x02249380
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov17_022492DC
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	mov r0, #6
	mov r1, #0x17
	bl sub_02012744
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov17_022493DC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02249380

	thumb_func_start ov17_022493A4
ov17_022493A4: ; 0x022493A4
	push {r4, lr}
	add r4, r0, #0
	bl ov17_022495F8
	add r0, r4, #0
	mov r1, #1
	bl ov17_02249D3C
	ldr r0, [r4, #0x18]
	bl sub_020127BC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_022493A4

	thumb_func_start ov17_022493C4
ov17_022493C4: ; 0x022493C4
	push {r4, lr}
	add r4, r0, #0
	bl ov17_02249828
	add r0, r4, #0
	bl ov17_022498F4
	add r0, r4, #0
	mov r1, #0
	bl ov17_02249CFC
	pop {r4, pc}
	thumb_func_end ov17_022493C4

	thumb_func_start ov17_022493DC
ov17_022493DC: ; 0x022493DC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #6
	add r4, r0, #0
	mov r0, #0x17
	lsl r1, r1, #0xc
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	mov r1, #6
	mov r0, #0x17
	lsl r1, r1, #0xc
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
	mov r1, #0x1b
	mov r0, #0x17
	lsl r1, r1, #8
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #0xa
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #0xa
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xe0
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #0xa
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xe4
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #0xa
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #8
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	mov r1, #2
	mov r0, #0x17
	lsl r1, r1, #8
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1, #0]
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #9
	mov r2, #1
	add r3, sp, #0xc
	bl sub_02006F50
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r1, #0xd0
	mov r2, #6
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0]
	lsl r2, r2, #0xc
	bl sub_020C4B68
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #0x12
	mov r2, #1
	add r3, sp, #0xc
	bl sub_02006F50
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r1, #0xd4
	mov r2, #6
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0]
	lsl r2, r2, #0xc
	bl sub_020C4B68
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #0x10
	mov r2, #1
	add r3, sp, #0xc
	bl sub_02006F50
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r1, #0xd8
	mov r2, #0x1b
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0]
	lsl r2, r2, #8
	bl sub_020C4B68
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #7
	mov r2, #1
	add r3, sp, #8
	bl sub_02006F6C
	add r1, r4, #0
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, #0xdc
	mov r2, #2
	ldr r1, [r1, #0]
	add r0, #0xc
	lsl r2, r2, #0xa
	bl sub_020C4B68
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #8
	mov r2, #1
	add r3, sp, #8
	bl sub_02006F6C
	add r1, r4, #0
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, #0xe0
	mov r2, #2
	ldr r1, [r1, #0]
	add r0, #0xc
	lsl r2, r2, #0xa
	bl sub_020C4B68
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #0x11
	mov r2, #1
	add r3, sp, #8
	bl sub_02006F6C
	add r1, r4, #0
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, #0xe4
	mov r2, #2
	ldr r1, [r1, #0]
	add r0, #0xc
	lsl r2, r2, #0xa
	bl sub_020C4B68
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x2d
	mov r1, #0x1c
	mov r2, #1
	add r3, sp, #8
	bl sub_02006F6C
	add r1, r4, #0
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, #0xe8
	mov r2, #2
	ldr r1, [r1, #0]
	add r0, #0xc
	lsl r2, r2, #0xa
	bl sub_020C4B68
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	mov r3, #2
	str r0, [sp, #4]
	mov r0, #0x2d
	mov r1, #0x1f
	mov r2, #0x17
	lsl r3, r3, #8
	bl sub_020030E4
	ldr r0, [r4, #4]
	mov r2, #0x17
	ldr r1, [r0, #0]
	ldr r0, _022495F4 ; =0x0000011F
	mov r3, #0x20
	ldrb r0, [r1, r0]
	mov r1, #0x26
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	add r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x2d
	bl sub_020030E4
	mov r0, #0
	mov r3, #2
	add r4, #0xf0
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x21
	str r0, [sp, #4]
	mov r0, #0x2d
	mov r2, #0x17
	lsl r3, r3, #8
	bl sub_020030E4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_022495F4: .word 0x0000011F
	thumb_func_end ov17_022493DC

	thumb_func_start ov17_022495F8
ov17_022495F8: ; 0x022495F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
_02249600:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02249600
	mov r6, #0
	add r4, r5, #0
_02249616:
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02249616
	mov r4, #0
_0224962A:
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0224962A
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_022495F8

	thumb_func_start ov17_02249640
ov17_02249640: ; 0x02249640
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	str r3, [r7, #8]
	ldr r0, [r7, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x60]
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	mov r0, #0x96
	ldrsb r2, [r7, r0]
	sub r0, #0x97
	cmp r2, r0
	bne _02249664
	mov r0, #1
	str r0, [sp, #8]
	mov r6, #0
	b _0224966C
_02249664:
	mov r0, #0x24
	ldr r1, _02249750 ; =0x02254578
	mul r0, r2
	add r6, r1, r0
_0224966C:
	ldr r0, [sp, #4]
	mov r1, #0x24
	ldr r2, _02249750 ; =0x02254578
	mul r1, r0
	add r0, r2, r1
	str r0, [sp, #0x10]
	mov r4, #0
	add r5, r0, #0
_0224967C:
	ldrh r1, [r5, #0xc]
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0224967C
	ldr r0, [sp, #0x10]
	mov r2, #8
	ldrh r1, [r0]
	add r0, r7, #0
	add r0, #0x94
	strh r1, [r0]
	ldr r0, _02249754 ; =ov17_0224A088
	add r1, r7, #0
	bl sub_0200DA3C
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #2]
	ldr r0, _02249758 ; =0x0000FFFF
	cmp r1, r0
	beq _022496DA
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _022496BE
	ldrh r0, [r6, #2]
	cmp r1, r0
	beq _022496DA
_022496BE:
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [r7, #4]
	lsl r1, r1, #2
	add r1, r7, r1
	add r0, #0x90
	add r1, #0xec
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #1
	mov r3, #0
	bl sub_02002FBC
_022496DA:
	ldr r4, [sp, #0x10]
	mov r5, #0
_022496DE:
	ldrh r2, [r4, #4]
	ldr r0, _02249758 ; =0x0000FFFF
	cmp r2, r0
	beq _02249716
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _022496F2
	ldrh r0, [r6, #4]
	cmp r2, r0
	beq _02249716
_022496F2:
	lsl r2, r2, #2
	add r2, r7, r2
	add r1, r5, #4
	add r2, #0xdc
	lsl r1, r1, #0x18
	mov r3, #2
	ldr r0, [sp, #0xc]
	ldr r2, [r2, #0]
	lsr r1, r1, #0x18
	lsl r3, r3, #0xa
	bl sub_02019574
	add r1, r5, #4
	lsl r1, r1, #0x18
	ldr r0, [sp, #0xc]
	lsr r1, r1, #0x18
	bl sub_0201C3C0
_02249716:
	add r5, r5, #1
	add r4, r4, #2
	add r6, r6, #2
	cmp r5, #4
	blt _022496DE
	add r1, r7, #0
	ldr r0, [sp, #4]
	add r1, #0x96
	strb r0, [r1]
	add r0, r7, #0
	mov r1, #0
	bl ov17_02249D3C
	ldr r0, [sp, #0x10]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _02249740
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	blx r3
_02249740:
	ldr r0, _0224975C ; =ov17_0224A038
	add r1, r7, #0
	mov r2, #0xa
	bl sub_0200DA3C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02249750: .word 0x02254578
_02249754: .word ov17_0224A088
_02249758: .word 0x0000FFFF
_0224975C: .word ov17_0224A038
	thumb_func_end ov17_02249640

	thumb_func_start ov17_02249760
ov17_02249760: ; 0x02249760
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x96
	ldrsb r1, [r5, r0]
	sub r0, #0x97
	cmp r1, r0
	bne _02249772
	bl sub_02022974
_02249772:
	mov r0, #0x96
	ldrsb r1, [r5, r0]
	ldr r3, _022497F8 ; =0x02254578
	mov r0, #0x24
	add r2, r1, #0
	mul r2, r0
	add r4, r3, r2
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _0224978A
	sub r0, #0x25
	pop {r4, r5, r6, pc}
_0224978A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02249794
	bl sub_02022974
_02249794:
	ldr r0, [r4, #0x14]
	bl sub_02022664
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022497D8
	ldr r2, [r4, #0x18]
	ldr r1, _022497FC ; =0x02254554
	cmp r2, r1
	bne _022497D8
	ldr r1, _02249800 ; =0x021BF67C
	mov r2, #0x11
	ldr r1, [r1, #0x48]
	add r3, r1, #0
	tst r3, r2
	beq _022497BA
	mov r0, #3
	b _022497D8
_022497BA:
	mov r3, #0x82
	add r6, r1, #0
	tst r6, r3
	beq _022497C6
	mov r0, #1
	b _022497D8
_022497C6:
	lsl r2, r2, #6
	tst r2, r1
	beq _022497D0
	mov r0, #0
	b _022497D8
_022497D0:
	lsl r2, r3, #4
	tst r1, r2
	beq _022497D8
	mov r0, #2
_022497D8:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022497E6
	ldr r1, [r4, #0x18]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
_022497E6:
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _022497F2
	add r0, r5, #0
	blx r2
	add r1, r0, #0
_022497F2:
	add r0, r1, #0
	pop {r4, r5, r6, pc}
	nop
_022497F8: .word 0x02254578
_022497FC: .word 0x02254554
_02249800: .word 0x021BF67C
	thumb_func_end ov17_02249760

	thumb_func_start ov17_02249804
ov17_02249804: ; 0x02249804
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0224980E
	mov r0, #1
	bx lr
_0224980E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02249804

	thumb_func_start ov17_02249814
ov17_02249814: ; 0x02249814
	mov r1, #0x96
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02249814

	thumb_func_start ov17_0224981C
ov17_0224981C: ; 0x0224981C
	ldr r3, _02249824 ; =ov17_02249CFC
	mov r1, #1
	bx r3
	nop
_02249824: .word ov17_02249CFC
	thumb_func_end ov17_0224981C

	thumb_func_start ov17_02249828
ov17_02249828: ; 0x02249828
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcc
	mov r3, #0x17
	bl sub_0200B144
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r3, [r0, #0]
	add r1, r2, #1
	ldrb r0, [r3, r2]
	ldrb r1, [r3, r1]
	ldr r3, [r5, #0]
	add r2, #0x51
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, _022498DC ; =0x0000011F
	ldr r2, [r0, #0]
	ldrb r0, [r2, r1]
	add r1, r1, #2
	ldrb r1, [r2, r1]
	bl sub_020958C4
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldr r0, _022498E0 ; =0x00010200
	add r1, r5, #0
	str r0, [sp]
	mov r3, #0
	ldr r0, _022498E4 ; =0x000080EB
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x7f
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, #0x1c
	add r2, r6, #0
	bl ov17_02249BC4
	ldr r0, _022498E0 ; =0x00010200
	mov r3, #0
	str r0, [sp]
	ldr r0, _022498E4 ; =0x000080EB
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x9f
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r5, #0x30
	add r1, r5, #0
	add r2, r7, #0
	bl ov17_02249BC4
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022498DC: .word 0x0000011F
_022498E0: .word 0x00010200
_022498E4: .word 0x000080EB
	thumb_func_end ov17_02249828

	thumb_func_start ov17_022498E8
ov17_022498E8: ; 0x022498E8
	ldr r3, _022498F0 ; =ov17_02249CFC
	mov r1, #1
	bx r3
	nop
_022498F0: .word ov17_02249CFC
	thumb_func_end ov17_022498E8

	thumb_func_start ov17_022498F4
ov17_022498F4: ; 0x022498F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r2, [r0, #4]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #0x84
	ldr r5, [r0, #0]
	ldr r1, [r2, #0]
	ldr r0, _022499FC ; =0x00000123
	ldrb r0, [r1, r0]
	add r1, r2, r0
	ldr r0, _02249A00 ; =0x00000ABC
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0224991C
	add r0, r5, #0
	mov r1, #0
	bl sub_0200B1EC
	b _02249924
_0224991C:
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B1EC
_02249924:
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, _02249A04 ; =0x0001010B
	add r2, r4, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 ; =0x000080EB
	mov r3, #2
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	add r1, #0x44
	bl ov17_02249BC4
	ldr r0, _02249A04 ; =0x0001010B
	add r2, r6, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 ; =0x000080EB
	mov r3, #2
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x78
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	add r1, #0x58
	bl ov17_02249BC4
	ldr r0, _02249A04 ; =0x0001010B
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 ; =0x000080EB
	mov r3, #2
	str r0, [sp, #8]
	mov r0, #0x30
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	add r1, #0x6c
	bl ov17_02249BC4
	ldr r0, _02249A04 ; =0x0001010B
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 ; =0x000080EB
	mov r3, #2
	str r0, [sp, #8]
	mov r0, #0xd0
	str r0, [sp, #0xc]
	mov r0, #0x40
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	add r1, #0x80
	str r1, [sp, #0x18]
	bl ov17_02249BC4
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022499FC: .word 0x00000123
_02249A00: .word 0x00000ABC
_02249A04: .word 0x0001010B
_02249A08: .word 0x000080EB
	thumb_func_end ov17_022498F4

	thumb_func_start ov17_02249A0C
ov17_02249A0C: ; 0x02249A0C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #1
	cmp r0, #4
	bhi _02249A2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02249A24: ; jump table
	.short _02249A2E - _02249A24 - 2 ; case 0
	.short _02249A32 - _02249A24 - 2 ; case 1
	.short _02249A36 - _02249A24 - 2 ; case 2
	.short _02249A3A - _02249A24 - 2 ; case 3
	.short _02249A3E - _02249A24 - 2 ; case 4
_02249A2E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02249A32:
	mov r5, #2
	b _02249A40
_02249A36:
	mov r5, #3
	b _02249A40
_02249A3A:
	mov r5, #4
	b _02249A40
_02249A3E:
	mov r5, #5
_02249A40:
	ldr r0, _02249A9C ; =ov17_02249DA0
	add r1, r4, #0
	bl ov17_02249D50
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0x12
	add r0, #0xca
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0x2d
	add r0, #0xc8
	strh r1, [r0]
	mov r0, #0xc
	ldr r1, _02249AA0 ; =0x02254630
	mul r0, r6
	add r2, r1, r0
	add r1, r4, #0
	add r1, #0xa0
	str r2, [r1, #0]
	ldr r1, _02249AA4 ; =0x02254660
	add r2, r1, r0
	add r1, r4, #0
	add r1, #0xa4
	str r2, [r1, #0]
	ldr r1, _02249AA8 ; =0x02254690
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0xa8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	str r6, [r0, #0]
	add r4, #0xcc
	strb r5, [r4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02249A9C: .word ov17_02249DA0
_02249AA0: .word 0x02254630
_02249AA4: .word 0x02254660
_02249AA8: .word 0x02254690
	thumb_func_end ov17_02249A0C

	thumb_func_start ov17_02249AAC
ov17_02249AAC: ; 0x02249AAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x17
	mov r1, #0x20
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02249AD8
	lsl r0, r5, #2
	add r0, r6, r0
	add r0, #0xd0
	ldr r0, [r0, #0]
	str r0, [r4, #0xc]
_02249AD8:
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #5
	strh r0, [r4, #0x1c]
	ldr r0, [sp, #0x18]
	ldrh r1, [r0]
	strh r1, [r4, #0x10]
	ldrh r1, [r0, #2]
	strh r1, [r4, #0x12]
	ldrh r1, [r0, #4]
	strh r1, [r4, #0x14]
	ldrh r1, [r0, #6]
	strh r1, [r4, #0x16]
	ldrh r1, [r0, #8]
	strh r1, [r4, #0x18]
	ldrh r0, [r0, #0xa]
	strh r0, [r4, #0x1a]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl sub_02019F28
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02249AAC

	thumb_func_start ov17_02249B08
ov17_02249B08: ; 0x02249B08
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl ov17_02249AAC
	add r4, r0, #0
	ldr r0, _02249B2C ; =ov17_0224A0C8
	add r1, r4, #0
	mov r2, #0x14
	bl sub_0200DA3C
	str r0, [r4, #0]
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02249B2C: .word ov17_0224A0C8
	thumb_func_end ov17_02249B08

	thumb_func_start ov17_02249B30
ov17_02249B30: ; 0x02249B30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02249B4E
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02249B44
	bl sub_020181C4
_02249B44:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_02249B4E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02249B30

	thumb_func_start ov17_02249B54
ov17_02249B54: ; 0x02249B54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r1, [r5, #0x16]
	ldrh r0, [r5, #0x1c]
	mov r6, #0
	mul r0, r1
	str r0, [sp]
	ldrh r0, [r5, #0x12]
	lsl r7, r0, #0xa
	ldrh r0, [r5, #0x1a]
	cmp r0, #0
	ble _02249BC0
	add r4, r6, #0
_02249B6E:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _02249B9C
	ldrh r0, [r5, #0x14]
	ldrh r3, [r5, #0x1c]
	lsl r1, r0, #5
	add r0, r3, #0
	ldr r3, [sp]
	mul r0, r6
	add r0, r3, r0
	add r0, r1, r0
	ldrh r1, [r5, #0x10]
	add r0, r2, r0
	ldr r3, [r5, #4]
	lsl r2, r1, #5
	add r1, r7, r4
	add r1, r2, r1
	ldrh r2, [r5, #0x18]
	add r1, r3, r1
	lsl r2, r2, #5
	bl sub_020C4B18
	b _02249BB2
_02249B9C:
	ldrh r1, [r5, #0x10]
	ldr r3, [r5, #4]
	mov r0, #0
	lsl r2, r1, #5
	add r1, r7, r4
	add r1, r2, r1
	ldrh r2, [r5, #0x18]
	add r1, r3, r1
	lsl r2, r2, #5
	bl sub_020C4AF0
_02249BB2:
	mov r0, #1
	lsl r0, r0, #0xa
	add r4, r4, r0
	ldrh r0, [r5, #0x1a]
	add r6, r6, #1
	cmp r6, r0
	blt _02249B6E
_02249BC0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02249B54

	thumb_func_start ov17_02249BC4
ov17_02249BC4: ; 0x02249BC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r5, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x9c]
	cmp r0, #0
	beq _02249BDC
	bl sub_02022974
_02249BDC:
	ldr r0, [sp, #0x18]
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x60]
	str r0, [sp, #0x28]
	ldr r0, [r1, #0x5c]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	bl sub_02002D7C
	add r7, r0, #0
	asr r1, r7, #2
	lsr r1, r1, #0x1d
	add r1, r7, r1
	asr r6, r1, #3
	mov r1, #8
	bl sub_020BD140
	cmp r0, #0
	beq _02249C08
	add r6, r6, #1
_02249C08:
	add r0, sp, #0x38
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r6, #0x18
	ldr r0, [sp, #0x28]
	add r1, sp, #0x38
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x20]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	add r0, sp, #0x38
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	add r0, sp, #0x38
	mov r1, #2
	mov r2, #0x17
	bl sub_02012898
	mov r1, #1
	mov r2, #2
	add r3, sp, #0x2c
	bl sub_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _02249C60
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	sub r4, r4, r0
_02249C60:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0x48]
	add r0, sp, #0x38
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x24]
	bl sub_0200D9B0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x98]
	bl sub_0200D04C
	mov r1, #0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0xa0]
	str r4, [sp, #0x60]
	add r0, #0xf8
	str r0, [sp, #0x64]
	mov r0, #0x64
	str r0, [sp, #0x6c]
	mov r0, #2
	str r0, [sp, #0x70]
	mov r0, #0x17
	str r0, [sp, #0x74]
	add r0, sp, #0x48
	str r1, [sp, #0x68]
	bl sub_020127E8
	ldr r1, [sp, #0x94]
	add r6, r0, #0
	bl sub_02012AC0
	ldr r2, [sp, #0xa0]
	add r0, r6, #0
	add r1, r4, #0
	add r2, #0xf8
	bl sub_020128C4
	add r0, sp, #0x38
	bl sub_0201A8FC
	str r6, [r5, #0]
	add r3, sp, #0x2c
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	strh r7, [r5, #0x10]
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02249BC4

	thumb_func_start ov17_02249CD0
ov17_02249CD0: ; 0x02249CD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	add r4, #0x20
	add r7, r6, #0
_02249CDC:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02249CEE
	bl sub_02012870
	add r0, r4, #0
	bl sub_0201EE28
	str r7, [r5, #0x1c]
_02249CEE:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #6
	blt _02249CDC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02249CD0

	thumb_func_start ov17_02249CFC
ov17_02249CFC: ; 0x02249CFC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	cmp r7, #1
	bne _02249D18
	mov r1, #0x96
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _02249D12
	mov r4, #0
	mov r6, #1
	b _02249D1C
_02249D12:
	mov r4, #2
	mov r6, #5
	b _02249D1C
_02249D18:
	mov r4, #0
	mov r6, #5
_02249D1C:
	cmp r4, r6
	bgt _02249D3A
	mov r1, #0x14
	mul r1, r4
	add r5, r0, r1
_02249D26:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02249D32
	add r1, r7, #0
	bl sub_020129D0
_02249D32:
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r6
	ble _02249D26
_02249D3A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02249CFC

	thumb_func_start ov17_02249D3C
ov17_02249D3C: ; 0x02249D3C
	push {r3, lr}
	cmp r1, #1
	bne _02249D48
	bl ov17_02249CD0
	pop {r3, pc}
_02249D48:
	mov r1, #0
	bl ov17_02249CFC
	pop {r3, pc}
	thumb_func_end ov17_02249D3C

	thumb_func_start ov17_02249D50
ov17_02249D50: ; 0x02249D50
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249D60
	bl sub_02022974
_02249D60:
	add r0, r4, #0
	add r0, #0x98
	mov r1, #0
	mov r2, #0x38
	bl sub_020C4CF4
	ldr r2, _02249D7C ; =0x00000514
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02249D7C: .word 0x00000514
	thumb_func_end ov17_02249D50

	thumb_func_start ov17_02249D80
ov17_02249D80: ; 0x02249D80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249D9C
	bl sub_0200DA58
	mov r1, #0
	str r1, [r4, #0xc]
	add r4, #0x98
	add r0, r4, #0
	mov r2, #0x38
	bl sub_020C4CF4
_02249D9C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02249D80

	thumb_func_start ov17_02249DA0
ov17_02249DA0: ; 0x02249DA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	cmp r0, #8
	bls _02249DB0
	b _0224A02C
_02249DB0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02249DBC: ; jump table
	.short _02249DCE - _02249DBC - 2 ; case 0
	.short _02249E56 - _02249DBC - 2 ; case 1
	.short _02249E70 - _02249DBC - 2 ; case 2
	.short _02249E96 - _02249DBC - 2 ; case 3
	.short _02249F20 - _02249DBC - 2 ; case 4
	.short _02249F3C - _02249DBC - 2 ; case 5
	.short _02249F62 - _02249DBC - 2 ; case 6
	.short _02249FEC - _02249DBC - 2 ; case 7
	.short _0224A006 - _02249DBC - 2 ; case 8
_02249DCE:
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xca
	ldrh r0, [r0]
	add r3, r4, #0
	add r2, #0xc8
	str r0, [sp, #4]
	add r3, #0xb8
	ldrh r2, [r2]
	ldr r3, [r3, #0]
	add r0, r4, #0
	mov r1, #4
	bl ov17_02249B08
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	add r2, sp, #8
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	add r1, sp, #0xc
	bl sub_020129A4
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	ldr r2, [sp, #8]
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	add r2, #0x10
	bl sub_020128C4
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_02249E2C:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02249E40
	ldr r0, [r0, #0]
	add r1, r7, #0
	mov r2, #0x10
	bl sub_0200D5AC
_02249E40:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _02249E2C
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r4, #0x98
	add sp, #0x10
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02249E56:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov17_02249B30
	cmp r0, #0
	beq _02249F2E
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_02249E70:
	mov r1, #0x9a
	ldrsh r0, [r4, r1]
	add r2, r0, #1
	add r0, r4, #0
	add r0, #0x9a
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #2
	ble _02249F2E
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9a
	strh r1, [r0]
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_02249E96:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xca
	ldrh r0, [r0]
	add r3, r4, #0
	add r2, #0xc8
	str r0, [sp, #4]
	add r3, #0xbc
	ldrh r2, [r2]
	ldr r3, [r3, #0]
	add r0, r4, #0
	mov r1, #4
	bl ov17_02249B08
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	add r2, sp, #8
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	add r1, sp, #0xc
	bl sub_020129A4
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	ldr r2, [sp, #8]
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	sub r2, r2, #4
	bl sub_020128C4
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_02249EF4:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02249F0A
	mov r2, #3
	ldr r0, [r0, #0]
	add r1, r7, #0
	mvn r2, r2
	bl sub_0200D5AC
_02249F0A:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _02249EF4
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r4, #0x98
	add sp, #0x10
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02249F20:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov17_02249B30
	cmp r0, #0
	bne _02249F30
_02249F2E:
	b _0224A032
_02249F30:
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_02249F3C:
	mov r1, #0x9a
	ldrsh r0, [r4, r1]
	add r2, r0, #1
	add r0, r4, #0
	add r0, #0x9a
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #2
	ble _0224A032
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9a
	strh r1, [r0]
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_02249F62:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xca
	ldrh r0, [r0]
	add r3, r4, #0
	add r2, #0xc8
	str r0, [sp, #4]
	add r3, #0xc0
	ldrh r2, [r2]
	ldr r3, [r3, #0]
	add r0, r4, #0
	mov r1, #4
	bl ov17_02249B08
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	add r2, sp, #8
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	add r1, sp, #0xc
	bl sub_020129A4
	add r0, r4, #0
	add r0, #0xcc
	ldrb r1, [r0]
	mov r0, #0x14
	ldr r2, [sp, #8]
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	sub r2, #0xc
	bl sub_020128C4
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_02249FC0:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02249FD6
	mov r2, #0xb
	ldr r0, [r0, #0]
	add r1, r7, #0
	mvn r2, r2
	bl sub_0200D5AC
_02249FD6:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _02249FC0
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r4, #0x98
	add sp, #0x10
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02249FEC:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov17_02249B30
	cmp r0, #0
	beq _0224A032
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_0224A006:
	mov r1, #0x9a
	ldrsh r0, [r4, r1]
	add r2, r0, #1
	add r0, r4, #0
	add r0, #0x9a
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #2
	ble _0224A032
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9a
	strh r1, [r0]
	mov r0, #0x98
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	strh r1, [r0]
_0224A02C:
	add r0, r4, #0
	bl ov17_02249D80
_0224A032:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02249DA0

	thumb_func_start ov17_0224A038
ov17_0224A038: ; 0x0224A038
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #0x96
	ldrsb r1, [r1, r0]
	mov r0, #0x24
	mov r4, #0
	ldr r2, _0224A080 ; =0x02254578
	mul r0, r1
	ldr r6, _0224A084 ; =0x0000FFFF
	add r5, r2, r0
	add r7, r4, #0
_0224A04E:
	ldrh r0, [r5, #4]
	cmp r0, r6
	bne _0224A062
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl sub_02019120
	b _0224A06E
_0224A062:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02019120
_0224A06E:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0224A04E
	ldr r0, [sp]
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A080: .word 0x02254578
_0224A084: .word 0x0000FFFF
	thumb_func_end ov17_0224A038

	thumb_func_start ov17_0224A088
ov17_0224A088: ; 0x0224A088
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x94
	ldrh r2, [r0]
	ldr r0, _0224A0C4 ; =0x0000FFFF
	cmp r2, r0
	beq _0224A0BA
	mov r0, #0
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r4, #4]
	add r2, r4, r2
	add r2, #0xd0
	mov r3, #6
	ldr r0, [r0, #0x60]
	ldr r2, [r2, #0]
	mov r1, #4
	lsl r3, r3, #0xc
	bl sub_0201958C
	ldr r0, _0224A0C4 ; =0x0000FFFF
	add r4, #0x94
	strh r0, [r4]
_0224A0BA:
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_0224A0C4: .word 0x0000FFFF
	thumb_func_end ov17_0224A088

	thumb_func_start ov17_0224A0C8
ov17_0224A0C8: ; 0x0224A0C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov17_02249B54
	mov r0, #0
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224A0C8

	thumb_func_start ov17_0224A0E0
ov17_0224A0E0: ; 0x0224A0E0
	push {r3, lr}
	sub sp, #8
	str r2, [sp]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	mov r1, #1
	add r0, #0x90
	ldr r0, [r0, #0]
	mov r2, #0
	mov r3, #0x40
	bl sub_020039B0
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov17_0224A0E0

	thumb_func_start ov17_0224A0FC
ov17_0224A0FC: ; 0x0224A0FC
	mov r1, #6
	mul r1, r0
	ldr r0, _0224A108 ; =0x022546F4
	ldrsh r0, [r0, r1]
	bx lr
	nop
_0224A108: .word 0x022546F4
	thumb_func_end ov17_0224A0FC

	thumb_func_start ov17_0224A10C
ov17_0224A10C: ; 0x0224A10C
	mov r1, #6
	mul r1, r0
	ldr r0, _0224A11C ; =0x022546F4
	add r1, r0, r1
	mov r0, #2
	ldrsh r0, [r1, r0]
	bx lr
	nop
_0224A11C: .word 0x022546F4
	thumb_func_end ov17_0224A10C

	thumb_func_start ov17_0224A120
ov17_0224A120: ; 0x0224A120
	mov r1, #6
	mul r1, r0
	ldr r0, _0224A130 ; =0x022546F4
	add r1, r0, r1
	mov r0, #4
	ldrsh r0, [r1, r0]
	bx lr
	nop
_0224A130: .word 0x022546F4
	thumb_func_end ov17_0224A120

	thumb_func_start ov17_0224A134
ov17_0224A134: ; 0x0224A134
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r4, #0
	b _0224A150
_0224A13E:
	lsl r0, r4, #4
	add r0, r5, r0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224A14E
	bl sub_02022974
_0224A14E:
	add r4, r4, #1
_0224A150:
	cmp r4, #4
	blt _0224A13E
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	mov r0, #0x17
	str r0, [sp, #0xc]
	mov r4, #0
	ldr r7, _0224A1E4 ; =0x022546F4
	b _0224A1DC
_0224A168:
	ldr r0, _0224A1E8 ; =0x00000AF1
	add r1, r5, r4
	ldrb r6, [r1, r0]
	ldr r1, [r5, #0]
	lsl r0, r6, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_020765B8
	add r2, r0, #0
	mov r0, #6
	mul r0, r4
	ldrsh r1, [r7, r0]
	add r0, r7, r0
	mov r3, #2
	ldrsh r3, [r0, r3]
	str r1, [sp, #4]
	add r2, r2, r3
	str r2, [sp, #8]
	lsl r2, r6, #4
	add r2, r5, r2
	str r1, [r2, #0x1c]
	ldr r1, [sp, #8]
	str r1, [r2, #0x20]
	mov r1, #4
	ldrsh r0, [r0, r1]
	lsl r1, r6, #2
	str r0, [r2, #0x24]
	ldr r2, [r5, #0]
	add r0, sp, #0
	add r1, r2, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	bl ov22_0225AFD4
	lsl r1, r6, #4
	add r2, r5, r1
	str r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	bl ov22_0225B100
	cmp r4, #0
	ble _0224A1DA
	lsl r0, r6, #4
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r1, #0
	bl ov22_0225B07C
	lsl r0, r6, #4
	add r0, r5, r0
	mov r1, #0x63
	ldr r0, [r0, #0x18]
	mvn r1, r1
	bl ov22_0225B1AC
_0224A1DA:
	add r4, r4, #1
_0224A1DC:
	cmp r4, #4
	blt _0224A168
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A1E4: .word 0x022546F4
_0224A1E8: .word 0x00000AF1
	thumb_func_end ov17_0224A134

	thumb_func_start ov17_0224A1EC
ov17_0224A1EC: ; 0x0224A1EC
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0224A1F4:
	ldr r0, [r5, #4]
	bl ov22_0225B020
	add r0, r5, #0
	add r0, #0x98
	add r4, r4, #1
	add r5, #0x10
	str r6, [r0, #0]
	cmp r4, #4
	blt _0224A1F4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_0224A1EC

	thumb_func_start ov17_0224A20C
ov17_0224A20C: ; 0x0224A20C
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224A20C

	thumb_func_start ov17_0224A210
ov17_0224A210: ; 0x0224A210
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224A210

	thumb_func_start ov17_0224A214
ov17_0224A214: ; 0x0224A214
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r6, r1, #0
	str r2, [sp, #4]
	add r0, r2, #0
	mov r1, #2
	bl ov17_0223F0BC
	add r5, r0, #0
	ldr r0, [sp, #4]
	mov r1, #3
	bl ov17_0223F0BC
	mov r1, #0x20
	sub r2, r1, r5
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r7, r1, #1
	cmp r6, r0
	ble _0224A240
	add r6, r0, #0
_0224A240:
	asr r0, r6, #2
	lsr r0, r0, #0x1d
	add r0, r6, r0
	asr r4, r0, #3
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r1, #3
	ldr r0, [r0, #0x60]
	bl sub_02019FE4
	mov r1, #0x26
	lsl r1, r1, #4
	add r1, r7, r1
	lsl r1, r1, #1
	add r2, r0, r1
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0224A306
	mov r1, #0
	ldr r0, _0224A34C ; =0x00002014
	mov r7, #0x1d
	b _0224A29C
_0224A278:
	lsr r6, r1, #0x1f
	lsl r3, r1, #0x1d
	sub r3, r3, r6
	ror r3, r7
	add r3, r6, r3
	bne _0224A28A
	lsl r3, r1, #1
	strh r0, [r2, r3]
	b _0224A29A
_0224A28A:
	mov r3, #1
	tst r3, r1
	beq _0224A294
	ldr r6, _0224A350 ; =0x00002034
	b _0224A296
_0224A294:
	ldr r6, _0224A354 ; =0x00002054
_0224A296:
	lsl r3, r1, #1
	strh r6, [r2, r3]
_0224A29A:
	add r1, r1, #1
_0224A29C:
	cmp r1, r4
	blt _0224A278
	cmp r1, r5
	bge _0224A2D4
	lsr r4, r1, #0x1f
	lsl r3, r1, #0x1d
	sub r3, r3, r4
	mov r0, #0x1d
	ror r3, r0
	add r0, r4, r3
	bne _0224A2BE
	ldr r3, _0224A358 ; =0x0000200C
	ldr r0, [sp, #8]
	add r3, r0, r3
	lsl r0, r1, #1
	strh r3, [r2, r0]
	b _0224A2D2
_0224A2BE:
	mov r0, #1
	tst r0, r1
	beq _0224A2C8
	ldr r3, _0224A35C ; =0x0000202C
	b _0224A2CA
_0224A2C8:
	ldr r3, _0224A360 ; =0x0000204C
_0224A2CA:
	ldr r0, [sp, #8]
	add r3, r0, r3
	lsl r0, r1, #1
	strh r3, [r2, r0]
_0224A2D2:
	add r1, r1, #1
_0224A2D4:
	ldr r0, _0224A358 ; =0x0000200C
	mov r3, #0x1d
	mov r7, #1
	b _0224A300
_0224A2DC:
	lsr r6, r1, #0x1f
	lsl r4, r1, #0x1d
	sub r4, r4, r6
	ror r4, r3
	add r4, r6, r4
	bne _0224A2EE
	lsl r4, r1, #1
	strh r0, [r2, r4]
	b _0224A2FE
_0224A2EE:
	add r4, r1, #0
	tst r4, r7
	beq _0224A2F8
	ldr r6, _0224A35C ; =0x0000202C
	b _0224A2FA
_0224A2F8:
	ldr r6, _0224A360 ; =0x0000204C
_0224A2FA:
	lsl r4, r1, #1
	strh r6, [r2, r4]
_0224A2FE:
	add r1, r1, #1
_0224A300:
	cmp r1, r5
	blt _0224A2DC
	b _0224A33C
_0224A306:
	mov r1, #0
	ldr r0, _0224A364 ; =0x02254898
	b _0224A316
_0224A30C:
	lsl r3, r1, #1
	ldrh r6, [r0, r3]
	add r1, r1, #1
	add r6, #8
	strh r6, [r2, r3]
_0224A316:
	cmp r1, r4
	blt _0224A30C
	cmp r1, r5
	bge _0224A32C
	ldr r0, _0224A364 ; =0x02254898
	lsl r4, r1, #1
	ldrh r3, [r0, r4]
	ldr r0, [sp, #8]
	add r1, r1, #1
	add r0, r0, r3
	strh r0, [r2, r4]
_0224A32C:
	ldr r3, _0224A364 ; =0x02254898
	b _0224A338
_0224A330:
	lsl r4, r1, #1
	ldrh r0, [r3, r4]
	add r1, r1, #1
	strh r0, [r2, r4]
_0224A338:
	cmp r1, r5
	blt _0224A330
_0224A33C:
	ldr r0, [sp]
	mov r1, #3
	ldr r0, [r0, #0x60]
	bl sub_0201C3C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224A34C: .word 0x00002014
_0224A350: .word 0x00002034
_0224A354: .word 0x00002054
_0224A358: .word 0x0000200C
_0224A35C: .word 0x0000202C
_0224A360: .word 0x0000204C
_0224A364: .word 0x02254898
	thumb_func_end ov17_0224A214

	thumb_func_start ov17_0224A368
ov17_0224A368: ; 0x0224A368
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, r7, #0
	mov r1, #3
	bl ov17_0223F0BC
	mul r0, r4
	add r1, r6, #0
	bl sub_020E1F6C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl ov17_0224A214
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224A368

	thumb_func_start ov17_0224A390
ov17_0224A390: ; 0x0224A390
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224A418 ; =0x000080EB
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x3a
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224A41C ; =0x000080EC
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x3b
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224A420 ; =0x000080ED
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x3c
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224A424 ; =0x000080EE
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x3d
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A418 ; =0x000080EB
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x3e
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A418 ; =0x000080EB
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x3f
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224A418: .word 0x000080EB
_0224A41C: .word 0x000080EC
_0224A420: .word 0x000080ED
_0224A424: .word 0x000080EE
	thumb_func_end ov17_0224A390

	thumb_func_start ov17_0224A428
ov17_0224A428: ; 0x0224A428
	push {r4, lr}
	ldr r1, _0224A45C ; =0x000080EB
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224A460 ; =0x000080EC
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _0224A464 ; =0x000080ED
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _0224A468 ; =0x000080EE
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _0224A45C ; =0x000080EB
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224A45C ; =0x000080EB
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224A45C: .word 0x000080EB
_0224A460: .word 0x000080EC
_0224A464: .word 0x000080ED
_0224A468: .word 0x000080EE
	thumb_func_end ov17_0224A428

	thumb_func_start ov17_0224A46C
ov17_0224A46C: ; 0x0224A46C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, _0224A56C ; =0x02254760
	add r7, r2, #0
	add r6, r3, #0
	add r5, r0, #0
	mov ip, r1
	add r3, sp, #0
	mov r2, #6
_0224A47E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224A47E
	ldr r0, [r4, #0]
	cmp r6, #2
	str r0, [r3, #0]
	bne _0224A496
	ldr r0, [sp, #8]
	add r0, #0xa
	str r0, [sp, #8]
	b _0224A4C6
_0224A496:
	ldr r0, [sp, #0x54]
	cmp r0, #3
	bhi _0224A4C6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224A4A8: ; jump table
	.short _0224A4C6 - _0224A4A8 - 2 ; case 0
	.short _0224A4B0 - _0224A4A8 - 2 ; case 1
	.short _0224A4B8 - _0224A4A8 - 2 ; case 2
	.short _0224A4C0 - _0224A4A8 - 2 ; case 3
_0224A4B0:
	ldr r0, [sp, #8]
	add r0, r0, #3
	str r0, [sp, #8]
	b _0224A4C6
_0224A4B8:
	ldr r0, [sp, #8]
	add r0, r0, #2
	str r0, [sp, #8]
	b _0224A4C6
_0224A4C0:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0224A4C6:
	ldr r0, [sp, #0x48]
	cmp r0, #4
	bhi _0224A500
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224A4D8: ; jump table
	.short _0224A500 - _0224A4D8 - 2 ; case 0
	.short _0224A4F6 - _0224A4D8 - 2 ; case 1
	.short _0224A500 - _0224A4D8 - 2 ; case 2
	.short _0224A4E2 - _0224A4D8 - 2 ; case 3
	.short _0224A4EC - _0224A4D8 - 2 ; case 4
_0224A4E2:
	ldr r0, _0224A570 ; =0x000080EC
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0xc]
	b _0224A508
_0224A4EC:
	ldr r0, _0224A574 ; =0x000080EE
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0xc]
	b _0224A508
_0224A4F6:
	ldr r0, _0224A578 ; =0x000080ED
	str r0, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0xc]
	b _0224A508
_0224A500:
	ldr r0, _0224A57C ; =0x000080EB
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0xc]
_0224A508:
	mov r0, ip
	add r1, r7, #0
	add r2, sp, #0
	bl sub_0200CE6C
	add r4, r0, #0
	add r1, r6, #0
	bl sub_0200D364
	ldr r0, [r4, #0]
	bl sub_0200D324
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	mov r3, #1
	add r0, r4, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	add r0, r4, #0
	mov r1, #1
	bl sub_0200D390
	mov r0, #0
	add r2, r5, #0
_0224A542:
	add r1, r2, #0
	add r1, #0xd8
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _0224A558
	lsl r1, r0, #2
	add r1, r5, r1
	add r1, #0xd8
	add sp, #0x34
	str r4, [r1, #0]
	pop {r4, r5, r6, r7, pc}
_0224A558:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, #0x44
	blt _0224A542
	bl sub_02022974
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0224A56C: .word 0x02254760
_0224A570: .word 0x000080EC
_0224A574: .word 0x000080EE
_0224A578: .word 0x000080ED
_0224A57C: .word 0x000080EB
	thumb_func_end ov17_0224A46C

	thumb_func_start ov17_0224A580
ov17_0224A580: ; 0x0224A580
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0224A588:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224A59C
	bl sub_0200D0F4
	add r0, r5, #0
	add r0, #0xd8
	str r6, [r0, #0]
_0224A59C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x44
	blt _0224A588
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_0224A580

	thumb_func_start ov17_0224A5A8
ov17_0224A5A8: ; 0x0224A5A8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224A5F0 ; =0x000080EF
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x37
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A5F4 ; =0x000080EC
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x38
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A5F4 ; =0x000080EC
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x39
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224A5F0: .word 0x000080EF
_0224A5F4: .word 0x000080EC
	thumb_func_end ov17_0224A5A8

	thumb_func_start ov17_0224A5F8
ov17_0224A5F8: ; 0x0224A5F8
	push {r4, lr}
	ldr r1, _0224A614 ; =0x000080EF
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224A618 ; =0x000080EC
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224A618 ; =0x000080EC
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224A614: .word 0x000080EF
_0224A618: .word 0x000080EC
	thumb_func_end ov17_0224A5F8

	thumb_func_start ov17_0224A61C
ov17_0224A61C: ; 0x0224A61C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
_0224A626:
	ldr r2, _0224A648 ; =0x02254794
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200CE6C
	ldr r1, _0224A64C ; =0x000009F8
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0224A626
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A648: .word 0x02254794
_0224A64C: .word 0x000009F8
	thumb_func_end ov17_0224A61C

	thumb_func_start ov17_0224A650
ov17_0224A650: ; 0x0224A650
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0224A670 ; =0x000009F8
	add r5, r0, #0
	add r6, r4, #0
_0224A65A:
	ldr r0, _0224A670 ; =0x000009F8
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	str r6, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0224A65A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A670: .word 0x000009F8
	thumb_func_end ov17_0224A650

	thumb_func_start ov17_0224A674
ov17_0224A674: ; 0x0224A674
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_0200B1EC
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_0200B1EC
	str r0, [sp, #0x34]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #7
	bl sub_0200B1EC
	str r0, [sp, #0x30]
	mov r0, #0
	ldr r1, _0224A7A8 ; =0x00000A04
	str r0, [sp, #0x3c]
	add r0, r5, r1
	str r0, [sp, #0x2c]
	add r0, r1, #0
	add r0, #0x3c
	add r1, #0x78
	add r4, r5, #0
	add r7, r5, r0
	add r6, r5, r1
_0224A6B8:
	ldr r0, [sp, #0x2c]
	add r3, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r3, #0x94
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _0224A7AC ; =0x000B0C00
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0224A7B0 ; =0x000080E9
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #0xc
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x60]
	ldr r2, [r5, #0x5c]
	ldr r3, [r3, #0]
	mov r0, #0x17
	bl ov17_0223F1E8
	ldr r0, _0224A7A8 ; =0x00000A04
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020129D0
	add r3, r5, #0
	ldr r0, [sp, #0x34]
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _0224A7AC ; =0x000B0C00
	add r3, #0x94
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0224A7B0 ; =0x000080E9
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #0xc
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x60]
	ldr r2, [r5, #0x5c]
	ldr r3, [r3, #0]
	mov r0, #0x17
	bl ov17_0223F1E8
	mov r0, #0x29
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020129D0
	add r3, r5, #0
	ldr r0, [sp, #0x30]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _0224A7AC ; =0x000B0C00
	add r3, #0x94
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0224A7B0 ; =0x000080E9
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #0xc
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x60]
	ldr r2, [r5, #0x5c]
	ldr r3, [r3, #0]
	mov r0, #0x17
	bl ov17_0223F1E8
	ldr r0, _0224A7B4 ; =0x00000A7C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020129D0
	ldr r0, [sp, #0x2c]
	add r4, #0x14
	add r0, #0x14
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	add r7, #0x14
	add r0, r0, #1
	add r6, #0x14
	str r0, [sp, #0x3c]
	cmp r0, #3
	blt _0224A6B8
	ldr r0, [sp, #0x38]
	bl sub_020237BC
	ldr r0, [sp, #0x34]
	bl sub_020237BC
	ldr r0, [sp, #0x30]
	bl sub_020237BC
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A7A8: .word 0x00000A04
_0224A7AC: .word 0x000B0C00
_0224A7B0: .word 0x000080E9
_0224A7B4: .word 0x00000A7C
	thumb_func_end ov17_0224A674

	thumb_func_start ov17_0224A7B8
ov17_0224A7B8: ; 0x0224A7B8
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224A7DC ; =0x00000A04
	mov r7, #0
	add r6, r0, r1
_0224A7C0:
	mov r4, #0
	add r5, r6, #0
_0224A7C4:
	add r0, r5, #0
	bl ov17_0223F2E4
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #3
	blt _0224A7C4
	add r7, r7, #1
	add r6, #0x3c
	cmp r7, #3
	blt _0224A7C0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A7DC: .word 0x00000A04
	thumb_func_end ov17_0224A7B8

	thumb_func_start ov17_0224A7E0
ov17_0224A7E0: ; 0x0224A7E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x2c]
	add r5, r0, #0
	str r3, [sp]
	cmp r4, #0
	bne _0224A7F2
	str r4, [sp, #4]
	b _0224A7F6
_0224A7F2:
	sub r0, r4, #1
	str r0, [sp, #4]
_0224A7F6:
	ldr r0, _0224A8BC ; =0x000009BC
	mov r1, #0x14
	add r2, r5, r0
	ldr r0, [sp, #4]
	mul r1, r0
	add r6, r2, r1
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0224A80C
	bl sub_0200DA58
_0224A80C:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	ldr r1, _0224A8C0 ; =0x022546CC
	lsl r2, r4, #2
	ldrsh r0, [r1, r2]
	add r1, r1, r2
	str r0, [sp, #0xc]
	mov r0, #2
	ldrsh r0, [r1, r0]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0224A8C4 ; =0x000009F8
	ldr r0, [r1, r0]
	ldr r1, [sp]
	str r0, [r6, #0]
	bl sub_0200D364
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	mov r3, #1
	ldr r0, [r6, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r6, #0]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [sp, #4]
	mov r1, #0x14
	add r7, r0, #0
	mov r4, #0
	mul r7, r1
	b _0224A87E
_0224A86A:
	mov r0, #0x3c
	mul r0, r4
	add r0, r5, r0
	add r1, r0, r7
	ldr r0, _0224A8C8 ; =0x00000A04
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020129D0
	add r4, r4, #1
_0224A87E:
	cmp r4, #3
	blt _0224A86A
	ldr r0, _0224A8C8 ; =0x00000A04
	mov r1, #0x3c
	add r2, r5, r0
	ldr r0, [sp]
	mov r3, #1
	mul r1, r0
	add r2, r2, r1
	ldr r0, [sp, #4]
	mov r1, #0x14
	mul r1, r0
	add r0, r2, r1
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	str r0, [r6, #4]
	bl ov17_0223F2F8
	ldr r0, [r6, #4]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_020129D0
	ldr r0, _0224A8CC ; =ov17_0224A8D4
	ldr r2, _0224A8D0 ; =0x00009D08
	add r1, r6, #0
	bl sub_0200D9E8
	str r0, [r6, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A8BC: .word 0x000009BC
_0224A8C0: .word 0x022546CC
_0224A8C4: .word 0x000009F8
_0224A8C8: .word 0x00000A04
_0224A8CC: .word ov17_0224A8D4
_0224A8D0: .word 0x00009D08
	thumb_func_end ov17_0224A7E0

	thumb_func_start ov17_0224A8D4
ov17_0224A8D4: ; 0x0224A8D4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224A8E8
	cmp r0, #1
	beq _0224A926
	b _0224A93A
_0224A8E8:
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0]
	add r2, sp, #0
	bl sub_020129A4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	sub r2, r0, #4
	str r2, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_020128C4
	mov r1, #0
	ldr r0, [r4, #0]
	sub r2, r1, #4
	bl sub_0200D5DC
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #4
	ble _0224A956
	mov r0, #0
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224A926:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0xe
	ble _0224A956
	ldrb r0, [r4, #0x10]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224A93A:
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_020129D0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_0200DA58
_0224A956:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0224A8D4

	thumb_func_start ov17_0224A95C
ov17_0224A95C: ; 0x0224A95C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0224A980 ; =0x000009C4
	add r5, r0, #0
	add r6, r4, #0
_0224A966:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0224A974
	bl sub_0200DA58
	ldr r0, _0224A980 ; =0x000009C4
	str r6, [r5, r0]
_0224A974:
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #3
	blt _0224A966
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A980: .word 0x000009C4
	thumb_func_end ov17_0224A95C

	thumb_func_start ov17_0224A984
ov17_0224A984: ; 0x0224A984
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224A9CC ; =0x000080F0
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x40
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A9D0 ; =0x000080ED
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x41
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224A9D0 ; =0x000080ED
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x42
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224A9CC: .word 0x000080F0
_0224A9D0: .word 0x000080ED
	thumb_func_end ov17_0224A984

	thumb_func_start ov17_0224A9D4
ov17_0224A9D4: ; 0x0224A9D4
	push {r4, lr}
	ldr r1, _0224A9F0 ; =0x000080F0
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224A9F4 ; =0x000080ED
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224A9F4 ; =0x000080ED
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224A9F0: .word 0x000080F0
_0224A9F4: .word 0x000080ED
	thumb_func_end ov17_0224A9D4

	thumb_func_start ov17_0224A9F8
ov17_0224A9F8: ; 0x0224A9F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, _0224AA18 ; =0x022547C8
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D324
	mov r0, #0x7a
	lsl r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_0224AA18: .word 0x022547C8
	thumb_func_end ov17_0224A9F8

	thumb_func_start ov17_0224AA1C
ov17_0224AA1C: ; 0x0224AA1C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224AA36
	bl sub_0200D0F4
	mov r0, #0x7a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224AA36:
	pop {r4, pc}
	thumb_func_end ov17_0224AA1C

	thumb_func_start ov17_0224AA38
ov17_0224AA38: ; 0x0224AA38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224AA50 ; =ov17_0224AA68
	ldr r2, _0224AA54 ; =0x00009CAE
	add r1, r4, #0
	bl sub_0200D9E8
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0224AA50: .word ov17_0224AA68
_0224AA54: .word 0x00009CAE
	thumb_func_end ov17_0224AA38

	thumb_func_start ov17_0224AA58
ov17_0224AA58: ; 0x0224AA58
	mov r1, #2
	lsl r1, r1, #8
	ldr r3, _0224AA64 ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_0224AA64: .word sub_0200DA58
	thumb_func_end ov17_0224AA58

	thumb_func_start ov17_0224AA68
ov17_0224AA68: ; 0x0224AA68
	push {r3, lr}
	ldr r2, [r1, #0]
	ldr r0, _0224AA90 ; =0x00000123
	mov r3, #1
	ldrb r2, [r2, r0]
	add r0, #0xd9
	ldr r0, [r1, r0]
	lsl r2, r2, #4
	add r2, r1, r2
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	lsl r1, r1, #0x10
	sub r2, #0x28
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	pop {r3, pc}
	; .align 2, 0
_0224AA90: .word 0x00000123
	thumb_func_end ov17_0224AA68

	thumb_func_start ov17_0224AA94
ov17_0224AA94: ; 0x0224AA94
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224AADC ; =0x000080F2
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x5a
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AAE0 ; =0x000080EF
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x59
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AAE0 ; =0x000080EF
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x58
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224AADC: .word 0x000080F2
_0224AAE0: .word 0x000080EF
	thumb_func_end ov17_0224AA94

	thumb_func_start ov17_0224AAE4
ov17_0224AAE4: ; 0x0224AAE4
	push {r4, lr}
	ldr r1, _0224AB00 ; =0x000080F2
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224AB04 ; =0x000080EF
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224AB04 ; =0x000080EF
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224AB00: .word 0x000080F2
_0224AB04: .word 0x000080EF
	thumb_func_end ov17_0224AAE4

	thumb_func_start ov17_0224AB08
ov17_0224AB08: ; 0x0224AB08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	ldr r4, [sp]
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #8
	ldr r6, [sp, #0xc]
	str r2, [sp, #8]
	add r7, r0, #4
	add r5, r0, r1
_0224AB24:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, _0224ABA0 ; =0x02254830
	bl sub_0200CE6C
	mov r1, #0x81
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D6A4
	ldr r1, [sp, #0xc]
	ldr r0, _0224ABA4 ; =0x00000213
	strb r1, [r4, r0]
	sub r0, r0, #7
	str r7, [r4, r0]
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, r6]
	bl sub_020765B8
	mov r1, #0x85
	lsl r1, r1, #2
	strb r0, [r4, r1]
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov17_0224AC78
	ldr r0, _0224ABA8 ; =ov17_0224ABFC
	ldr r2, _0224ABAC ; =0x0000A08C
	add r1, r5, #0
	bl sub_0200D9E8
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	add r4, #0x18
	add r0, r0, #1
	add r7, #0x10
	add r6, r6, #4
	add r5, #0x18
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _0224AB24
	ldr r0, [sp]
	mov r1, #0
	bl ov17_0224ABDC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224ABA0: .word 0x02254830
_0224ABA4: .word 0x00000213
_0224ABA8: .word ov17_0224ABFC
_0224ABAC: .word 0x0000A08C
	thumb_func_end ov17_0224AB08

	thumb_func_start ov17_0224ABB0
ov17_0224ABB0: ; 0x0224ABB0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x81
	add r5, r0, #0
	add r6, r4, #0
	lsl r7, r7, #2
_0224ABBC:
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_0200DA58
	str r6, [r5, r7]
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #4
	blt _0224ABBC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224ABB0

	thumb_func_start ov17_0224ABDC
ov17_0224ABDC: ; 0x0224ABDC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x81
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	lsl r7, r7, #2
_0224ABE8:
	ldr r0, [r5, r7]
	add r1, r6, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #4
	blt _0224ABE8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224ABDC

	thumb_func_start ov17_0224ABFC
ov17_0224ABFC: ; 0x0224ABFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #0xc]
	ldr r6, [r0, #4]
	ldr r4, [r0, #8]
	ldr r0, [r0, #0xc]
	bl ov17_0224B06C
	mov r1, #0x14
	ldrsb r2, [r5, r1]
	mov r1, #0x28
	sub r2, r1, r2
	add r1, r2, #0
	mul r1, r0
	asr r2, r1, #7
	lsr r2, r2, #0x18
	add r2, r1, r2
	asr r1, r2, #8
	add r4, r4, r1
	mov r1, #0x64
	mul r1, r0
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r0, r0, #8
	bl sub_020E17B4
	ldr r1, _0224AC74 ; =0x42C80000
	bl sub_020E1304
	add r7, r0, #0
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _0224AC56
	add r1, sp, #0
	mov r3, #1
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x14
	bl sub_0200D5A0
	add r1, sp, #0
	mov r0, #0
	ldrsh r4, [r1, r0]
_0224AC56:
	lsl r1, r6, #0x10
	lsl r2, r4, #0x10
	mov r3, #1
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r2, r7, #0
	bl sub_0200D6E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224AC74: .word 0x42C80000
	thumb_func_end ov17_0224ABFC

	thumb_func_start ov17_0224AC78
ov17_0224AC78: ; 0x0224AC78
	strb r1, [r0, #0x11]
	strb r2, [r0, #0x12]
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224AC78

	thumb_func_start ov17_0224AC80
ov17_0224AC80: ; 0x0224AC80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224ACC8 ; =0x000080F3
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x5d
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224ACCC ; =0x000080F0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x5c
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224ACCC ; =0x000080F0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x5b
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224ACC8: .word 0x000080F3
_0224ACCC: .word 0x000080F0
	thumb_func_end ov17_0224AC80

	thumb_func_start ov17_0224ACD0
ov17_0224ACD0: ; 0x0224ACD0
	push {r4, lr}
	ldr r1, _0224ACEC ; =0x000080F3
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224ACF0 ; =0x000080F0
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224ACF0 ; =0x000080F0
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224ACEC: .word 0x000080F3
_0224ACF0: .word 0x000080F0
	thumb_func_end ov17_0224ACD0

	thumb_func_start ov17_0224ACF4
ov17_0224ACF4: ; 0x0224ACF4
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224ACF4

	thumb_func_start ov17_0224ACF8
ov17_0224ACF8: ; 0x0224ACF8
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224ACF8

	thumb_func_start ov17_0224ACFC
ov17_0224ACFC: ; 0x0224ACFC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224AD44 ; =0x000080F4
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x60
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AD48 ; =0x000080F1
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x5f
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AD48 ; =0x000080F1
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x5e
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224AD44: .word 0x000080F4
_0224AD48: .word 0x000080F1
	thumb_func_end ov17_0224ACFC

	thumb_func_start ov17_0224AD4C
ov17_0224AD4C: ; 0x0224AD4C
	push {r4, lr}
	ldr r1, _0224AD68 ; =0x000080F4
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224AD6C ; =0x000080F1
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224AD6C ; =0x000080F1
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224AD68: .word 0x000080F4
_0224AD6C: .word 0x000080F1
	thumb_func_end ov17_0224AD4C

	thumb_func_start ov17_0224AD70
ov17_0224AD70: ; 0x0224AD70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xad
	lsl r0, r0, #2
	add r7, r1, #0
	add r1, r5, r0
	sub r0, #0xf4
	mul r0, r7
	add r4, r1, r0
	str r2, [sp]
	mov r1, #0
_0224AD88:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224AD96
	add r1, r1, #1
	add r4, #0x1c
	cmp r1, #0x10
	blt _0224AD88
_0224AD96:
	cmp r1, #0x10
	bne _0224ADA0
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224ADA0:
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _0224AE6C ; =0x02254864
	bl sub_0200CE6C
	add r6, r0, #0
	bne _0224ADB4
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224ADB4:
	lsl r1, r7, #4
	add r2, r5, r1
	ldr r1, [r2, #0x1c]
	ldr r7, [r2, #0x20]
	str r1, [sp, #4]
	ldr r1, [sp]
	bl sub_0200D364
	ldr r1, [sp, #4]
	lsl r2, r7, #0x10
	lsl r1, r1, #0x10
	mov r3, #1
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r6, #0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r6, #0]
	bl sub_0200D324
	ldr r0, [r5, #0]
	bl sub_02094E98
	ldr r2, _0224AE70 ; =0x04000280
	mov r1, #0
	strh r1, [r2]
	str r0, [r2, #0x10]
	mov r0, #5
	lsl r0, r0, #8
	add r2, #0x18
	str r0, [r2, #0]
	str r1, [r2, #4]
	add r0, r4, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	ldr r0, [sp, #4]
	str r6, [r4, #4]
	lsl r0, r0, #8
	str r0, [r4, #8]
	lsl r0, r7, #8
	ldr r2, _0224AE70 ; =0x04000280
	str r0, [r4, #0xc]
	lsr r0, r2, #0xb
_0224AE16:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224AE16
	ldr r0, _0224AE74 ; =0x040002A8
	ldr r1, [r0, #0]
	mov r0, #1
	str r1, [r4, #0x10]
	tst r0, r1
	beq _0224AE2C
	neg r0, r1
	str r0, [r4, #0x10]
_0224AE2C:
	ldr r0, [r5, #0]
	bl sub_02094E98
	ldr r2, _0224AE78 ; =0x04000290
	mov r1, #0xf
	str r0, [r2, #0]
	lsl r1, r1, #8
	add r2, #8
	mov r0, #0
	str r1, [r2, #0]
	str r0, [r2, #4]
	ldr r2, _0224AE70 ; =0x04000280
	lsr r0, r2, #0xb
_0224AE46:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224AE46
	ldr r0, _0224AE74 ; =0x040002A8
	ldr r2, _0224AE7C ; =0x00009C40
	ldr r1, [r0, #0]
	lsr r0, r0, #0x10
	add r0, r1, r0
	neg r0, r0
	str r0, [r4, #0x14]
	ldr r0, _0224AE80 ; =ov17_0224AE84
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224AE6C: .word 0x02254864
_0224AE70: .word 0x04000280
_0224AE74: .word 0x040002A8
_0224AE78: .word 0x04000290
_0224AE7C: .word 0x00009C40
_0224AE80: .word ov17_0224AE84
	thumb_func_end ov17_0224AD70

	thumb_func_start ov17_0224AE84
ov17_0224AE84: ; 0x0224AE84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0xc]
	mov r0, #2
	ldr r1, [r4, #0x14]
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldrh r0, [r4, #0x18]
	add r0, r0, #1
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x18]
	cmp r0, #0xa
	bhi _0224AECA
	mov r0, #0x11
	ldr r1, [r4, #8]
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _0224AECA
	ldr r0, _0224AF30 ; =0xFFFEF000
	cmp r1, r0
	blt _0224AECA
	mov r0, #0xd
	ldr r2, [r4, #0xc]
	lsl r0, r0, #0xc
	cmp r2, r0
	ble _0224AEDE
_0224AECA:
	ldr r0, [r4, #4]
	bl sub_0200D0F4
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_0224AEDE:
	ldr r0, _0224AF34 ; =0x04000280
	mov r3, #0
	strh r3, [r0]
	str r1, [r0, #0x10]
	add r1, r0, #0
	lsr r2, r0, #0x12
	add r1, #0x18
	str r2, [r1, #0]
	str r3, [r1, #4]
	lsr r1, r0, #0xb
_0224AEF2:
	ldrh r2, [r0]
	tst r2, r1
	bne _0224AEF2
	ldr r3, _0224AF38 ; =0x040002A0
	ldr r2, [r4, #0xc]
	add r0, r3, #0
	ldr r1, [r3, #0]
	sub r0, #0x10
	str r2, [r0, #0]
	lsr r2, r3, #0x12
	sub r3, #8
	mov r0, #0
	str r2, [r3, #0]
	str r0, [r3, #4]
	ldr r3, _0224AF34 ; =0x04000280
	lsr r0, r3, #0xb
_0224AF12:
	ldrh r2, [r3]
	tst r2, r0
	bne _0224AF12
	ldr r2, _0224AF38 ; =0x040002A0
	lsl r1, r1, #0x10
	ldr r2, [r2, #0]
	mov r3, #1
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224AF30: .word 0xFFFEF000
_0224AF34: .word 0x04000280
_0224AF38: .word 0x040002A0
	thumb_func_end ov17_0224AE84

	thumb_func_start ov17_0224AF3C
ov17_0224AF3C: ; 0x0224AF3C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	cmp r2, #2
	beq _0224AF98
	add r0, r1, #0
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, _0224AF9C ; =0x00000AF6
	ldrsh r0, [r1, r0]
	cmp r0, #0
	beq _0224AF98
	ldr r1, _0224AFA0 ; =0x04000280
	mov r6, #0
	strh r6, [r1]
	str r0, [r1, #0x10]
	mov r0, #2
	add r1, #0x18
	str r0, [r1, #0]
	str r6, [r1, #4]
	cmp r3, #0
	beq _0224AF6A
	mov r6, #1
_0224AF6A:
	ldr r2, _0224AFA0 ; =0x04000280
	lsr r0, r2, #0xb
_0224AF6E:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224AF6E
	ldr r0, _0224AFA4 ; =0x040002A0
	ldr r5, [r0, #0]
	cmp r5, #0x10
	ble _0224AF7E
	mov r5, #0x10
_0224AF7E:
	mov r4, #0
	cmp r5, #0
	ble _0224AF98
_0224AF84:
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r6, #0
	bl ov17_0224AD70
	cmp r0, #0
	beq _0224AF98
	add r4, r4, #1
	cmp r4, r5
	blt _0224AF84
_0224AF98:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224AF9C: .word 0x00000AF6
_0224AFA0: .word 0x04000280
_0224AFA4: .word 0x040002A0
	thumb_func_end ov17_0224AF3C

	thumb_func_start ov17_0224AFA8
ov17_0224AFA8: ; 0x0224AFA8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224AFF0 ; =0x000080F5
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x63
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AFF4 ; =0x000080F2
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x62
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224AFF4 ; =0x000080F2
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x61
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224AFF0: .word 0x000080F5
_0224AFF4: .word 0x000080F2
	thumb_func_end ov17_0224AFA8

	thumb_func_start ov17_0224AFF8
ov17_0224AFF8: ; 0x0224AFF8
	push {r4, lr}
	ldr r1, _0224B014 ; =0x000080F5
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224B018 ; =0x000080F2
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224B018 ; =0x000080F2
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224B014: .word 0x000080F5
_0224B018: .word 0x000080F2
	thumb_func_end ov17_0224AFF8

	thumb_func_start ov17_0224B01C
ov17_0224B01C: ; 0x0224B01C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _0224B050 ; =0x0225472C
	bl sub_0200CE6C
	mov r1, #0
	mov r3, #1
	add r4, r0, #0
	mvn r1, r1
	mov r2, #0xb0
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, _0224B054 ; =0x000009B8
	str r4, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B050: .word 0x0225472C
_0224B054: .word 0x000009B8
	thumb_func_end ov17_0224B01C

	thumb_func_start ov17_0224B058
ov17_0224B058: ; 0x0224B058
	ldr r1, _0224B060 ; =0x000009B8
	ldr r3, _0224B064 ; =sub_0200D0F4
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_0224B060: .word 0x000009B8
_0224B064: .word sub_0200D0F4
	thumb_func_end ov17_0224B058

	thumb_func_start ov17_0224B068
ov17_0224B068: ; 0x0224B068
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224B068

	thumb_func_start ov17_0224B06C
ov17_0224B06C: ; 0x0224B06C
	ldr r1, _0224B098 ; =0xFFFFFD80
	cmp r0, r1
	bne _0224B076
	mov r0, #0xc0
	bx lr
_0224B076:
	add r1, #0x80
	cmp r0, r1
	bne _0224B082
	mov r0, #1
	lsl r0, r0, #8
	bx lr
_0224B082:
	mov r1, #0xa
	lsl r1, r1, #6
	add r0, r0, r1
	lsl r1, r0, #6
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r0, r0, #7
	add r0, #0xc0
	bx lr
	nop
_0224B098: .word 0xFFFFFD80
	thumb_func_end ov17_0224B06C

	thumb_func_start ov17_0224B09C
ov17_0224B09C: ; 0x0224B09C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0xc]
	bl ov17_0224B06C
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0224B0B2
	lsl r1, r1, #4
	b _0224B0BC
_0224B0B2:
	lsl r1, r0, #0xc
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
_0224B0BC:
	mov r3, #1
	ldr r0, [r4, #0]
	add r2, r1, #0
	lsl r3, r3, #0xc
	bl ov22_0225B0EC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0224B09C

	thumb_func_start ov17_0224B0CC
ov17_0224B0CC: ; 0x0224B0CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #4
_0224B0D4:
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl ov17_0224B09C
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #4
	blt _0224B0D4
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224B0CC

	thumb_func_start ov17_0224B0E8
ov17_0224B0E8: ; 0x0224B0E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _0224B200 ; =0x00000B1B
	add r4, r1, #0
	ldrb r0, [r5, r0]
	str r2, [sp, #0x10]
	mov r1, #3
	bl ov17_0223F0BC
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #2]
	cmp r0, r4
	bne _0224B10C
	mov r0, #0
	str r0, [sp, #0x14]
	b _0224B110
_0224B10C:
	mov r0, #1
	str r0, [sp, #0x14]
_0224B110:
	ldr r0, _0224B200 ; =0x00000B1B
	mov r1, #4
	ldrb r0, [r5, r0]
	bl ov17_0223F0BC
	add r1, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	bl sub_020E1F6C
	ldr r1, [sp, #0x10]
	mov r4, #0
	ldrb r1, [r1, #6]
	mul r0, r1
	mov r1, #1
	lsl r1, r1, #8
	sub r2, r1, r6
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r6, r0, r1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x18]
	ldrb r1, [r0, #7]
	ldr r0, _0224B204 ; =0x022549BC
	ldrb r7, [r0, r1]
	b _0224B18A
_0224B146:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224B188
	add r1, sp, #0x1c
	mov r3, #1
	add r1, #2
	add r2, sp, #0x1c
	lsl r3, r3, #0x14
	bl sub_0200D5A0
	add r1, sp, #0x1c
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, r6
	bne _0224B188
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, r7
	bne _0224B188
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xec
	ldr r0, [r0, #0]
	bl sub_0200D37C
	cmp r0, #2
	beq _0224B188
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224B188:
	add r4, r4, #1
_0224B18A:
	cmp r4, #0x44
	blt _0224B146
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldrb r0, [r0, #3]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x10]
	str r7, [sp, #8]
	ldrb r0, [r0, #7]
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	add r0, #0x14
	bl ov17_0224A46C
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0224B1F8
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0224B1F8
	mov r2, #0x80
	add r1, r2, #0
	ldr r3, [r5, #0]
	add r1, #0xa3
	ldrb r1, [r3, r1]
	ldr r3, _0224B208 ; =0x00000AF1
	ldr r0, [sp, #0x18]
	add r1, r5, r1
	ldrb r4, [r1, r3]
	ldr r1, _0224B204 ; =0x022549BC
	sub r0, r2, r0
	ldrb r4, [r1, r4]
	ldr r1, [sp, #0x10]
	add r0, r6, r0
	ldrb r1, [r1, #3]
	add r2, #0xa3
	str r1, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0]
	ldrb r0, [r0, r2]
	add r0, r5, r0
	ldrb r0, [r0, r3]
	mov r3, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	add r0, #0x14
	bl ov17_0224A46C
_0224B1F8:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B200: .word 0x00000B1B
_0224B204: .word 0x022549BC
_0224B208: .word 0x00000AF1
	thumb_func_end ov17_0224B0E8

	thumb_func_start ov17_0224B20C
ov17_0224B20C: ; 0x0224B20C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrb r1, [r4, #5]
	add r5, r0, #0
	ldrb r0, [r4, #2]
	cmp r1, #3
	bhi _0224B240
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224B228: ; jump table
	.short _0224B230 - _0224B228 - 2 ; case 0
	.short _0224B234 - _0224B228 - 2 ; case 1
	.short _0224B238 - _0224B228 - 2 ; case 2
	.short _0224B23C - _0224B228 - 2 ; case 3
_0224B230:
	mov r2, #2
	b _0224B242
_0224B234:
	mov r2, #2
	b _0224B242
_0224B238:
	mov r2, #1
	b _0224B242
_0224B23C:
	mov r2, #1
	b _0224B242
_0224B240:
	mov r2, #0
_0224B242:
	ldr r1, _0224B4D8 ; =0x00000AF6
	lsl r0, r0, #1
	add r1, r5, r1
	add r3, r1, r0
	str r3, [sp, #8]
	ldrsh r3, [r1, r0]
	add r2, r3, r2
	strh r2, [r1, r0]
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0224B2A2
	ldr r0, _0224B4DC ; =0x00001BBC
	mov r2, #0
	add r3, r5, r0
	add r6, r5, #0
	sub r7, r0, #2
_0224B262:
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0224B290
	mov r0, #0xa
	mul r0, r2
	ldrh r1, [r4]
	ldr r2, _0224B4E0 ; =0x00001BB4
	add r0, r5, r0
	strh r1, [r0, r2]
	ldrh r3, [r4, #2]
	add r1, r2, #2
	strh r3, [r0, r1]
	ldrh r3, [r4, #4]
	add r1, r2, #4
	strh r3, [r0, r1]
	add r1, r2, #6
	ldrh r3, [r4, #6]
	add r2, #8
	strh r3, [r0, r1]
	ldrh r1, [r4, #8]
	strh r1, [r0, r2]
	b _0224B2A2
_0224B290:
	ldrb r1, [r4, #6]
	ldrb r0, [r6, r7]
	cmp r1, r0
	beq _0224B2A2
	add r2, r2, #1
	add r3, #0xa
	add r6, #0xa
	cmp r2, #8
	blt _0224B262
_0224B2A2:
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0224B2C0
	ldr r0, _0224B4E4 ; =0x00000AD5
	ldrb r2, [r4, #2]
	add r3, r5, r0
	add r0, r0, #4
	ldrb r1, [r3, r2]
	add r1, r1, #1
	strb r1, [r3, r2]
	ldrb r1, [r4, #2]
	add r2, r5, r0
	ldrb r0, [r2, r1]
	add r0, r0, #1
	b _0224B2D0
_0224B2C0:
	ldrb r1, [r4, #2]
	mov r0, #0
	add r2, r5, r1
	ldr r1, _0224B4E4 ; =0x00000AD5
	strb r0, [r2, r1]
	ldrb r2, [r4, #2]
	add r1, r1, #4
	add r2, r5, r2
_0224B2D0:
	strb r0, [r2, r1]
	ldrb r0, [r4, #4]
	cmp r0, #2
	beq _0224B2E6
	ldr r0, _0224B4E8 ; =0x00000AE4
	ldrb r1, [r4, #2]
	add r2, r5, r0
	ldrb r0, [r2, r1]
	add r0, r0, #1
	strb r0, [r2, r1]
	b _0224B2FC
_0224B2E6:
	ldr r0, _0224B4EC ; =0x00000ADD
	ldrb r2, [r4, #2]
	add r3, r5, r0
	add r0, r0, #7
	ldrb r1, [r3, r2]
	add r1, r1, #1
	strb r1, [r3, r2]
	ldrb r1, [r4, #2]
	mov r2, #0
	add r1, r5, r1
	strb r2, [r1, r0]
_0224B2FC:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0224B32E
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0224B312
	cmp r0, #1
	beq _0224B31C
	cmp r0, #2
	beq _0224B326
	b _0224B32E
_0224B312:
	ldr r0, _0224B4F0 ; =0x00000AE1
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _0224B32E
_0224B31C:
	ldr r0, _0224B4F4 ; =0x00000AE2
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _0224B32E
_0224B326:
	ldr r0, _0224B4F8 ; =0x00000AE3
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
_0224B32E:
	ldrb r0, [r4, #2]
	str r0, [sp]
	ldrb r0, [r4, #7]
	str r0, [sp, #4]
	add r0, r5, #0
	ldrb r3, [r4, #4]
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	add r0, #0x14
	bl ov17_0224A7E0
	ldr r2, [r5, #0]
	ldr r1, _0224B4FC ; =0x00000123
	add r0, r5, #0
	ldrb r1, [r2, r1]
	add r2, r4, #0
	bl ov17_0224B0E8
	ldrb r0, [r4, #8]
	mov r1, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	str r0, [sp]
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	str r0, [sp, #4]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #7]
	ldrb r3, [r4, #3]
	add r0, r5, #0
	bl ov17_0224B528
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #7]
	add r0, r5, #0
	bl ov17_0224AF3C
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_0224C89C
	ldr r1, [r5, #0]
	ldr r0, _0224B4FC ; =0x00000123
	ldrb r2, [r4, #2]
	ldrb r0, [r1, r0]
	cmp r2, r0
	bne _0224B3AE
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0224B3A0
	ldrb r1, [r4, #6]
	add r0, r5, #0
	mov r2, #1
	bl ov17_0224CB00
	b _0224B3AE
_0224B3A0:
	cmp r0, #1
	bne _0224B3AE
	ldrb r1, [r4, #6]
	add r0, r5, #0
	mov r2, #0
	bl ov17_0224CB00
_0224B3AE:
	ldrb r1, [r4, #7]
	cmp r1, #0
	bne _0224B3EC
	ldrb r0, [r4, #8]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224B3EC
	ldrb r1, [r4, #2]
	ldr r0, _0224B500 ; =0x00000B1A
	add r2, r5, r1
	add r1, r0, #0
	sub r1, #0x41
	ldrb r3, [r5, r0]
	ldrb r1, [r2, r1]
	cmp r3, r1
	bne _0224B3DA
	add r0, r5, #0
	mov r1, #1
	bl ov17_0224CB80
	b _0224B432
_0224B3DA:
	sub r0, #0x3d
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _0224B432
	add r0, r5, #0
	mov r1, #0
	bl ov17_0224CB80
	b _0224B432
_0224B3EC:
	cmp r1, #0
	beq _0224B432
	ldrb r0, [r4, #8]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224B432
	ldr r3, _0224B4F0 ; =0x00000AE1
	add r0, r3, #2
	ldrb r1, [r5, r0]
	add r0, r3, #0
	ldrb r2, [r5, r3]
	add r0, #0x39
	add r3, r3, #1
	ldrb r6, [r5, r0]
	ldrb r3, [r5, r3]
	lsl r0, r6, #1
	add r3, r2, r3
	add r0, r6, r0
	add r3, r1, r3
	cmp r0, r3
	bne _0224B432
	cmp r2, r0
	bne _0224B426
	add r0, r5, #0
	mov r1, #1
	bl ov17_0224CB80
	b _0224B432
_0224B426:
	cmp r1, #0
	bne _0224B432
	add r0, r5, #0
	mov r1, #0
	bl ov17_0224CB80
_0224B432:
	ldrb r0, [r4, #8]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224B444
	ldr r0, _0224B504 ; =0x000006F5
	bl sub_02005748
	b _0224B44A
_0224B444:
	ldr r0, _0224B508 ; =0x000006F4
	bl sub_02005748
_0224B44A:
	ldr r0, _0224B50C ; =0x00000AE8
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0224B466
	beq _0224B4D2
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0224B466
	ldr r1, [r5, #0]
	ldr r0, _0224B4FC ; =0x00000123
	ldrb r2, [r4, #2]
	ldrb r0, [r1, r0]
	cmp r2, r0
	bne _0224B4D2
_0224B466:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0224B478
	cmp r0, #1
	beq _0224B4AE
	cmp r0, #2
	beq _0224B4B8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B478:
	ldrb r0, [r4, #2]
	add r1, r5, r0
	ldr r0, _0224B510 ; =0x00000AD9
	ldrb r1, [r1, r0]
	add r0, #0x41
	ldrb r0, [r5, r0]
	cmp r0, r1
	bne _0224B494
	mov r0, #0x6f
	lsl r0, r0, #4
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B494:
	sub r0, r0, #1
	cmp r0, r1
	bne _0224B4A4
	ldr r0, _0224B514 ; =0x000006EF
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4A4:
	ldr r0, _0224B518 ; =0x000006EE
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4AE:
	ldr r0, _0224B51C ; =0x000006F1
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4B8:
	ldrb r0, [r4, #8]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224B4CC
	ldr r0, _0224B520 ; =0x000006F2
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4CC:
	ldr r0, _0224B524 ; =0x000005F6
	bl sub_02005748
_0224B4D2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224B4D8: .word 0x00000AF6
_0224B4DC: .word 0x00001BBC
_0224B4E0: .word 0x00001BB4
_0224B4E4: .word 0x00000AD5
_0224B4E8: .word 0x00000AE4
_0224B4EC: .word 0x00000ADD
_0224B4F0: .word 0x00000AE1
_0224B4F4: .word 0x00000AE2
_0224B4F8: .word 0x00000AE3
_0224B4FC: .word 0x00000123
_0224B500: .word 0x00000B1A
_0224B504: .word 0x000006F5
_0224B508: .word 0x000006F4
_0224B50C: .word 0x00000AE8
_0224B510: .word 0x00000AD9
_0224B514: .word 0x000006EF
_0224B518: .word 0x000006EE
_0224B51C: .word 0x000006F1
_0224B520: .word 0x000006F2
_0224B524: .word 0x000005F6
	thumb_func_end ov17_0224B20C

	thumb_func_start ov17_0224B528
ov17_0224B528: ; 0x0224B528
	push {r4, r5, r6, lr}
	ldr r4, _0224B598 ; =0x00000F58
	add r5, r0, r4
	mov r0, #0x4c
	add r4, r1, #0
	mul r4, r0
	add r1, r5, r4
	add r4, r1, #0
	add r4, #0x20
	ldrb r4, [r4]
	sub r0, #0x4d
	add r6, r4, #0
	cmp r4, #0x20
	bge _0224B554
_0224B544:
	ldrb r5, [r1, r6]
	cmp r5, #0
	bne _0224B54E
	add r0, r6, #0
	b _0224B554
_0224B54E:
	add r6, r6, #1
	cmp r6, #0x20
	blt _0224B544
_0224B554:
	mov r5, #0
	mvn r5, r5
	cmp r0, r5
	bne _0224B572
	mov r6, #0
	cmp r4, #0
	ble _0224B572
_0224B562:
	ldrb r5, [r1, r6]
	cmp r5, #0
	bne _0224B56C
	add r0, r6, #0
	b _0224B572
_0224B56C:
	add r6, r6, #1
	cmp r6, r4
	blt _0224B562
_0224B572:
	mov r4, #0
	mvn r4, r4
	cmp r0, r4
	bne _0224B580
	bl sub_02022974
	pop {r4, r5, r6, pc}
_0224B580:
	strb r3, [r1, r0]
	add r0, r1, #0
	add r0, #0x21
	strb r2, [r0]
	add r0, r1, #0
	ldr r2, [sp, #0x10]
	add r0, #0x22
	strb r2, [r0]
	ldr r0, [sp, #0x14]
	add r1, #0x23
	strb r0, [r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224B598: .word 0x00000F58
	thumb_func_end ov17_0224B528

	thumb_func_start ov17_0224B59C
ov17_0224B59C: ; 0x0224B59C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224B5B0 ; =ov17_0224B5F0
	ldr r2, _0224B5B4 ; =0x00009862
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #8]
	pop {r4, pc}
	nop
_0224B5B0: .word ov17_0224B5F0
_0224B5B4: .word 0x00009862
	thumb_func_end ov17_0224B59C

	thumb_func_start ov17_0224B5B8
ov17_0224B5B8: ; 0x0224B5B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ov17_0224B5B8

	thumb_func_start ov17_0224B5C8
ov17_0224B5C8: ; 0x0224B5C8
	ldr r1, _0224B5EC ; =0x00000F58
	mov r2, #0
	add r1, r0, r1
_0224B5CE:
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224B5DE
	mov r0, #0
	bx lr
_0224B5DE:
	add r2, r2, #1
	add r1, #0x4c
	cmp r2, #4
	blt _0224B5CE
	mov r0, #1
	bx lr
	nop
_0224B5EC: .word 0x00000F58
	thumb_func_end ov17_0224B5C8

	thumb_func_start ov17_0224B5F0
ov17_0224B5F0: ; 0x0224B5F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r1, _0224B7B0 ; =0x00000F58
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	add r4, r0, r1
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r5, [sp, #0x10]
	str r0, [sp, #0x14]
	add r7, #0x18
_0224B60E:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	mov r6, #0
	ldrb r0, [r4, r0]
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _0224B620
	b _0224B792
_0224B620:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	mov r2, #4
	bl ov17_0224BD28
	ldr r1, [sp, #0x10]
	ldr r0, _0224B7B4 ; =0x00000B04
	ldr r0, [r1, r0]
	ldr r1, _0224B7B8 ; =0x00002710
	bl sub_020E2178
	ldr r1, [sp, #0x1c]
	cmp r1, #4
	bls _0224B63E
	b _0224B74A
_0224B63E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224B64A: ; jump table
	.short _0224B74A - _0224B64A - 2 ; case 0
	.short _0224B654 - _0224B64A - 2 ; case 1
	.short _0224B6C0 - _0224B64A - 2 ; case 2
	.short _0224B6EE - _0224B64A - 2 ; case 3
	.short _0224B71C - _0224B64A - 2 ; case 4
_0224B654:
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x18]
	add r2, r2, r1
	mov r1, #0xad
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	cmp r1, #1
	bne _0224B692
	add r1, r4, #0
	add r1, #0x22
	ldrb r1, [r1]
	add r3, r4, #0
	sub r0, r0, #1
	str r1, [sp]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	add r3, #0x21
	add r2, r7, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x14]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	add r0, #0x24
	bl ov17_0224B7BC
	add r6, r0, #0
	b _0224B74E
_0224B692:
	add r1, r4, #0
	add r1, #0x22
	ldrb r1, [r1]
	add r3, r4, #0
	sub r0, r0, #1
	str r1, [sp]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	add r3, #0x21
	add r2, r7, #0
	str r1, [sp, #4]
	add r1, r6, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	add r0, #0x24
	bl ov17_0224B8D0
	add r6, r0, #0
	b _0224B74E
_0224B6C0:
	add r1, r4, #0
	add r1, #0x22
	ldrb r1, [r1]
	add r3, r4, #0
	sub r0, r0, #1
	str r1, [sp]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	add r3, #0x21
	add r2, r7, #0
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	add r0, #0x24
	bl ov17_0224B8D0
	add r6, r0, #0
	b _0224B74E
_0224B6EE:
	add r1, r4, #0
	add r1, #0x22
	ldrb r1, [r1]
	add r3, r4, #0
	sub r0, r0, #1
	str r1, [sp]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	add r3, #0x21
	add r2, r7, #0
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	add r0, #0x24
	bl ov17_0224BA50
	add r6, r0, #0
	b _0224B74E
_0224B71C:
	add r1, r4, #0
	add r1, #0x22
	ldrb r1, [r1]
	add r3, r4, #0
	sub r0, r0, #1
	str r1, [sp]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	add r3, #0x21
	add r2, r7, #0
	str r1, [sp, #4]
	add r1, r6, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	add r0, #0x24
	bl ov17_0224BA50
	add r6, r0, #0
	b _0224B74E
_0224B74A:
	bl sub_02022974
_0224B74E:
	cmp r6, #1
	bne _0224B792
	add r0, r4, #0
	add r0, #0x20
	ldrb r1, [r0]
	mov r0, #0
	strb r0, [r4, r1]
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x20
	blo _0224B77C
	add r1, r4, #0
	add r1, #0x20
	mov r0, #0
	strb r0, [r1]
_0224B77C:
	add r0, r4, #0
	add r0, #0x24
	mov r1, #0
	mov r2, #0x28
	bl sub_020C4CF4
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	mov r2, #3
	bl ov17_0224BD28
_0224B792:
	ldr r0, [sp, #0x14]
	add r4, #0x4c
	add r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r7, #0x10
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0x18]
	cmp r0, #4
	bge _0224B7AA
	b _0224B60E
_0224B7AA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B7B0: .word 0x00000F58
_0224B7B4: .word 0x00000B04
_0224B7B8: .word 0x00002710
	thumb_func_end ov17_0224B5F0

	thumb_func_start ov17_0224B7BC
ov17_0224B7BC: ; 0x0224B7BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _0224B7D6
	cmp r0, #1
	beq _0224B824
	b _0224B858
_0224B7D6:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #8
	str r0, [r5, #0]
	ldr r0, [r4, #8]
	lsr r1, r1, #1
	lsl r0, r0, #8
	str r0, [r5, #4]
	ldr r0, [r5, #0]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	mov r0, #5
	lsl r0, r0, #8
	bl sub_020E2178
	ldr r1, [sp, #0x20]
	cmp r1, #1
	bne _0224B80E
	ldr r1, _0224B8C8 ; =0xFFFFF600
	strh r1, [r5, #0x14]
	mov r1, #0xc8
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x64
	bl sub_020E1F6C
	b _0224B812
_0224B80E:
	ldr r1, _0224B8CC ; =0xFFFFFB00
	strh r1, [r5, #0x14]
_0224B812:
	strh r0, [r5, #0x16]
	ldr r0, [sp, #0x28]
	mov r1, #1
	mov r2, #0
	bl ov17_0224AC78
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
_0224B824:
	mov r0, #0x14
	ldrsh r1, [r5, r0]
	ldr r2, [r5, #0xc]
	add r1, r2, r1
	str r1, [r5, #0xc]
	ldrsh r1, [r5, r0]
	mov r0, #0x16
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r0, r1
	blt _0224B85E
	str r1, [r5, #0xc]
	mov r1, #1
	ldr r0, [sp, #0x28]
	add r2, r1, #0
	bl ov17_0224AC78
	mov r0, #1
	str r0, [sp, #4]
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
	b _0224B85E
_0224B858:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B85E:
	cmp r6, #0
	bne _0224B866
	mov r6, #0x64
	b _0224B868
_0224B866:
	mov r6, #0x28
_0224B868:
	ldr r0, [sp, #0x24]
	lsl r1, r0, #9
	mov r0, #0x19
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _0224B876
	add r1, r0, #0
_0224B876:
	asr r0, r1, #8
	add r6, r6, r0
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	str r0, [sp]
	sub r1, r1, r0
	ldr r7, [r5, #4]
	ldr r0, [r5, #0xc]
	sub r5, r0, r7
	add r0, r1, #0
	mul r0, r6
	mov r1, #0x64
	bl sub_020E1F6C
	str r0, [sp, #8]
	add r0, r5, #0
	mul r0, r6
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r2, [sp]
	ldr r1, [sp, #8]
	add r2, r2, r1
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	str r1, [r4, #4]
	add r1, r7, r0
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r2, r0, #8
	str r2, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl ov22_0225B100
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B8C8: .word 0xFFFFF600
_0224B8CC: .word 0xFFFFFB00
	thumb_func_end ov17_0224B7BC

	thumb_func_start ov17_0224B8D0
ov17_0224B8D0: ; 0x0224B8D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r0, [r4, #0x10]
	add r6, r2, #0
	str r3, [sp]
	ldr r5, [sp, #0x30]
	cmp r0, #0
	beq _0224B8F0
	cmp r0, #1
	beq _0224B948
	cmp r0, #2
	beq _0224B99A
	b _0224B9DE
_0224B8F0:
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x34]
	lsl r0, r0, #8
	str r0, [r4, #0]
	ldr r0, [r6, #8]
	lsl r0, r0, #8
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	str r0, [r4, #0xc]
	mov r0, #0x1e
	mul r0, r1
	mov r1, #0x64
	bl sub_020E2178
	add r7, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r7, #0
	bl sub_020E1F6C
	ldr r1, [sp, #0x34]
	str r0, [r4, #0x14]
	mov r0, #1
	lsl r0, r0, #0xc
	sub r1, r1, r7
	bl sub_020E1F6C
	str r0, [r4, #0x18]
	cmp r5, #0
	bne _0224B942
	ldr r1, [r4, #0x14]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	str r2, [r4, #0x14]
	ldr r1, [r4, #0x18]
	mul r0, r1
	str r0, [r4, #0x18]
_0224B942:
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0224B948:
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _0224B964
	ldr r1, [r4, #0x14]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r1, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0xc]
	mov r0, #0x20
	b _0224B96E
_0224B964:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0xc]
	mov r0, #0x10
_0224B96E:
	lsl r0, r0, #8
	str r0, [sp, #8]
	ldr r7, [r4, #4]
	ldr r0, [r4, #0xc]
	sub r0, r0, r7
	bl sub_020D4070
	ldr r1, [sp, #8]
	cmp r0, r1
	blt _0224B9E4
	cmp r5, #1
	bne _0224B98C
	add r0, r1, #0
	add r0, r7, r0
	b _0224B990
_0224B98C:
	add r0, r1, #0
	sub r0, r7, r0
_0224B990:
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	b _0224B9E4
_0224B99A:
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _0224B9B0
	ldr r1, [r4, #0x18]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r1, [r4, #0xc]
	b _0224B9B4
_0224B9B0:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x18]
_0224B9B4:
	sub r0, r1, r0
	str r0, [r4, #0xc]
	cmp r5, #1
	bne _0224B9C4
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	ble _0224B9D0
_0224B9C4:
	cmp r5, #0
	bne _0224B9E4
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	blt _0224B9E4
_0224B9D0:
	str r1, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0224B9E4
_0224B9DE:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B9E4:
	ldr r0, [sp]
	cmp r0, #0
	bne _0224B9EE
	mov r5, #0x64
	b _0224B9F0
_0224B9EE:
	mov r5, #0x28
_0224B9F0:
	ldr r0, [sp, #0x2c]
	lsl r1, r0, #9
	mov r0, #0x19
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _0224B9FE
	add r1, r0, #0
_0224B9FE:
	asr r0, r1, #8
	add r5, r5, r0
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	str r0, [sp, #4]
	sub r1, r1, r0
	ldr r7, [r4, #4]
	ldr r0, [r4, #0xc]
	sub r4, r0, r7
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x64
	bl sub_020E1F6C
	str r0, [sp, #0x10]
	add r0, r4, #0
	mul r0, r5
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x10]
	add r2, r2, r1
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	str r1, [r6, #4]
	add r1, r7, r0
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r2, r0, #8
	str r2, [r6, #8]
	ldr r0, [r6, #0]
	ldr r1, [r6, #4]
	bl ov22_0225B100
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224B8D0

	thumb_func_start ov17_0224BA50
ov17_0224BA50: ; 0x0224BA50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	ldrb r0, [r5, #0x10]
	add r4, r2, #0
	str r3, [sp]
	ldr r6, [sp, #0x38]
	cmp r0, #0
	beq _0224BA70
	cmp r0, #1
	beq _0224BAF0
	cmp r0, #2
	beq _0224BB62
	b _0224BBC4
_0224BA70:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #8
	str r0, [r5, #0]
	ldr r0, [r4, #8]
	lsl r0, r0, #8
	str r0, [r5, #4]
	ldr r0, [r5, #0]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	mov r0, #0x1e
	mul r0, r1
	mov r1, #0x64
	bl sub_020E2178
	ldr r1, [sp, #0x3c]
	str r0, [sp, #0x14]
	sub r7, r1, r0
	ldr r0, _0224BC44 ; =0x00038E00
	ldr r1, [sp, #0x14]
	bl sub_020E1F6C
	str r0, [r5, #0x18]
	ldr r0, _0224BC48 ; =0xFFFC7200
	add r1, r7, #0
	bl sub_020E1F6C
	str r0, [r5, #0x1c]
	mov r0, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	str r0, [r5, #0x20]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r7, #0
	bl sub_020E1F6C
	neg r0, r0
	str r0, [r5, #0x24]
	cmp r6, #1
	bne _0224BAEA
	ldr r1, [r5, #0x18]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	str r2, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	str r2, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	add r2, r1, #0
	mul r2, r0
	str r2, [r5, #0x20]
	ldr r1, [r5, #0x24]
	mul r0, r1
	str r0, [r5, #0x24]
_0224BAEA:
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
_0224BAF0:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0224BB1C
	ldr r1, [r5, #0x20]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x18]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r1, [r5, #0x14]
	b _0224BB2C
_0224BB1C:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x20]
	add r0, r1, r0
	str r0, [r5, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
_0224BB2C:
	add r0, r1, r0
	str r0, [r5, #0x14]
	ldr r0, [sp, #0xc]
	ldr r7, [r5, #0]
	lsl r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	sub r0, r0, r7
	bl sub_020D4070
	ldr r1, [sp, #8]
	cmp r0, r1
	blt _0224BBCA
	cmp r6, #1
	bne _0224BB50
	add r0, r1, #0
	sub r0, r7, r0
	b _0224BB54
_0224BB50:
	add r0, r1, #0
	add r0, r7, r0
_0224BB54:
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
	b _0224BBCA
_0224BB62:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0224BB8A
	ldr r1, [r5, #0x24]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	ldr r1, [r5, #0x1c]
	mov r0, #0xc8
	mul r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r1, [r5, #0x14]
	b _0224BB96
_0224BB8A:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x24]
	add r0, r1, r0
	str r0, [r5, #8]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x1c]
_0224BB96:
	add r0, r1, r0
	str r0, [r5, #0x14]
	cmp r6, #1
	bne _0224BBA6
	ldr r1, [r5, #0]
	ldr r0, [r5, #8]
	cmp r0, r1
	bge _0224BBB2
_0224BBA6:
	cmp r6, #0
	bne _0224BBCA
	ldr r1, [r5, #0]
	ldr r0, [r5, #8]
	cmp r0, r1
	bgt _0224BBCA
_0224BBB2:
	str r1, [r5, #8]
	mov r0, #0
	str r0, [r5, #0x14]
	ldrb r0, [r5, #0x10]
	add r0, r0, #1
	strb r0, [r5, #0x10]
	mov r0, #1
	str r0, [sp, #0x10]
	b _0224BBCA
_0224BBC4:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224BBCA:
	ldr r1, [r5, #0x14]
	ldr r0, [r4, #0]
	lsl r1, r1, #8
	lsr r1, r1, #0x10
	bl ov22_0225B0E4
	ldr r0, [sp]
	cmp r0, #0
	bne _0224BBE0
	mov r6, #0x64
	b _0224BBE2
_0224BBE0:
	mov r6, #0x28
_0224BBE2:
	ldr r0, [sp, #0x34]
	lsl r1, r0, #9
	mov r0, #0x19
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _0224BBF0
	add r1, r0, #0
_0224BBF0:
	asr r0, r1, #8
	add r6, r6, r0
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	str r0, [sp, #4]
	sub r1, r1, r0
	ldr r7, [r5, #4]
	ldr r0, [r5, #0xc]
	sub r5, r0, r7
	add r0, r1, #0
	mul r0, r6
	mov r1, #0x64
	bl sub_020E1F6C
	str r0, [sp, #0x18]
	add r0, r5, #0
	mul r0, r6
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x18]
	add r2, r2, r1
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	str r1, [r4, #4]
	add r1, r7, r0
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r2, r0, #8
	str r2, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl ov22_0225B100
	ldr r0, [sp, #0x10]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224BC44: .word 0x00038E00
_0224BC48: .word 0xFFFC7200
	thumb_func_end ov17_0224BA50

	thumb_func_start ov17_0224BC4C
ov17_0224BC4C: ; 0x0224BC4C
	ldr r1, _0224BC64 ; =0x00001BBC
	mov r2, #0
	add r3, r0, r1
	mov r0, #4
_0224BC54:
	ldrb r1, [r3]
	add r2, r2, #1
	bic r1, r0
	strb r1, [r3]
	add r3, #0xa
	cmp r2, #8
	blt _0224BC54
	bx lr
	; .align 2, 0
_0224BC64: .word 0x00001BBC
	thumb_func_end ov17_0224BC4C

	thumb_func_start ov17_0224BC68
ov17_0224BC68: ; 0x0224BC68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0224BCEC ; =0x0000108C
	add r6, r1, #0
	add r7, r5, r0
	mov r0, #0x28
	mul r0, r6
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	str r2, [sp]
	cmp r0, #0
	beq _0224BC86
	bl sub_02022974
_0224BC86:
	ldr r0, _0224BCF0 ; =0x00001088
	mov r2, #0x28
	add r4, r6, #0
	add r0, r5, r0
	mul r4, r2
	str r0, [sp, #8]
	add r0, r0, r4
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, [sp, #8]
	add r1, r5, r4
	str r5, [r0, r4]
	ldr r0, _0224BCF4 ; =0x000010A2
	ldr r2, [sp]
	strb r6, [r1, r0]
	sub r3, r0, #1
	strb r2, [r1, r3]
	lsl r2, r6, #2
	add r2, r5, r2
	ldr r3, [r2, #0x5c]
	add r2, r0, #0
	sub r2, #0x12
	str r3, [r1, r2]
	add r2, r5, #0
	add r2, #0x18
	lsl r3, r6, #4
	add r3, r2, r3
	add r2, r0, #0
	add r0, #0xa
	sub r2, #0xe
	str r3, [r1, r2]
	add r0, r5, r0
	ldrb r2, [r0, r4]
	mov r1, #4
	orr r1, r2
	strb r1, [r0, r4]
	ldrb r2, [r0, r4]
	mov r1, #8
	orr r1, r2
	strb r1, [r0, r4]
	ldr r1, [sp, #8]
	ldr r0, _0224BCF8 ; =ov17_0224BE50
	ldr r2, _0224BCFC ; =0x00009858
	add r1, r1, r4
	bl sub_0200D9E8
	ldr r1, [sp, #4]
	str r0, [r7, r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BCEC: .word 0x0000108C
_0224BCF0: .word 0x00001088
_0224BCF4: .word 0x000010A2
_0224BCF8: .word ov17_0224BE50
_0224BCFC: .word 0x00009858
	thumb_func_end ov17_0224BC68

	thumb_func_start ov17_0224BD00
ov17_0224BD00: ; 0x0224BD00
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0224BD24 ; =0x0000108C
	add r5, r0, #0
	add r6, r4, #0
_0224BD0A:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0224BD18
	bl sub_0200DA58
	ldr r0, _0224BD24 ; =0x0000108C
	str r6, [r5, r0]
_0224BD18:
	add r4, r4, #1
	add r5, #0x28
	cmp r4, #4
	blt _0224BD0A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224BD24: .word 0x0000108C
	thumb_func_end ov17_0224BD00

	thumb_func_start ov17_0224BD28
ov17_0224BD28: ; 0x0224BD28
	push {r3, r4, r5, lr}
	mov r3, #0x28
	mul r3, r1
	ldr r1, _0224BDEC ; =0x0000108C
	add r4, r0, r3
	ldr r5, [r4, r1]
	cmp r5, #0
	beq _0224BDE8
	cmp r2, #5
	bhi _0224BDE4
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224BD48: ; jump table
	.short _0224BD54 - _0224BD48 - 2 ; case 0
	.short _0224BD6A - _0224BD48 - 2 ; case 1
	.short _0224BD78 - _0224BD48 - 2 ; case 2
	.short _0224BD86 - _0224BD48 - 2 ; case 3
	.short _0224BDA4 - _0224BD48 - 2 ; case 4
	.short _0224BDD2 - _0224BD48 - 2 ; case 5
_0224BD54:
	add r1, #0x20
	add r2, r0, r1
	ldrb r1, [r2, r3]
	mov r0, #0x20
	bic r1, r0
	strb r1, [r2, r3]
	ldrb r1, [r2, r3]
	mov r0, #0x10
	bic r1, r0
	strb r1, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BD6A:
	add r1, #0x20
	add r2, r0, r1
	ldrb r1, [r2, r3]
	mov r0, #0x20
	orr r0, r1
	strb r0, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BD78:
	add r1, #0x20
	add r2, r0, r1
	ldrb r1, [r2, r3]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BD86:
	add r1, #0x20
	add r0, r0, r1
	ldrb r2, [r0, r3]
	mov r1, #2
	bic r2, r1
	strb r2, [r0, r3]
	ldrb r2, [r0, r3]
	mov r1, #1
	bic r2, r1
	strb r2, [r0, r3]
	ldrb r2, [r0, r3]
	mov r1, #4
	orr r1, r2
	strb r1, [r0, r3]
	pop {r3, r4, r5, pc}
_0224BDA4:
	add r2, r1, #0
	add r2, #0x20
	ldrb r2, [r4, r2]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1f
	bne _0224BDE8
	add r2, r1, #0
	add r2, #0x20
	add r5, r0, r2
	ldrb r2, [r5, r3]
	mov r0, #2
	orr r0, r2
	strb r0, [r5, r3]
	ldrb r0, [r5, r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0224BDE8
	add r0, r1, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	add r1, #0x1c
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_0224BDD2:
	add r1, #0x20
	add r2, r0, r1
	ldrb r1, [r2, r3]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BDE4:
	bl sub_02022974
_0224BDE8:
	pop {r3, r4, r5, pc}
	nop
_0224BDEC: .word 0x0000108C
	thumb_func_end ov17_0224BD28

	thumb_func_start ov17_0224BDF0
ov17_0224BDF0: ; 0x0224BDF0
	mov r2, #0x28
	mul r2, r1
	ldr r1, _0224BE20 ; =0x0000108C
	add r2, r0, r2
	ldr r0, [r2, r1]
	cmp r0, #0
	bne _0224BE02
	mov r0, #1
	bx lr
_0224BE02:
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r2, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _0224BE18
	add r1, #0x15
	ldrb r0, [r2, r1]
	cmp r0, #0
	bne _0224BE1C
_0224BE18:
	mov r0, #1
	bx lr
_0224BE1C:
	mov r0, #0
	bx lr
	; .align 2, 0
_0224BE20: .word 0x0000108C
	thumb_func_end ov17_0224BDF0

	thumb_func_start ov17_0224BE24
ov17_0224BE24: ; 0x0224BE24
	mov r2, #0x28
	mul r2, r1
	add r2, r0, r2
	ldr r0, _0224BE4C ; =0x0000108C
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0224BE36
	mov r0, #1
	bx lr
_0224BE36:
	add r0, #0x20
	ldrb r0, [r2, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224BE46
	mov r0, #1
	bx lr
_0224BE46:
	mov r0, #0
	bx lr
	nop
_0224BE4C: .word 0x0000108C
	thumb_func_end ov17_0224BE24

	thumb_func_start ov17_0224BE50
ov17_0224BE50: ; 0x0224BE50
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov17_0224BE64
	add r0, r4, #0
	bl ov17_0224BF58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0224BE50

	thumb_func_start ov17_0224BE64
ov17_0224BE64: ; 0x0224BE64
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _0224BF40
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _0224BF40
	ldr r5, [r4, #0]
	ldr r1, _0224BF44 ; =0x00001154
	ldr r2, _0224BF48 ; =0x00002710
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r3, #0
	bl sub_020E1F1C
	ldr r2, _0224BF4C ; =0x00000B04
	mov r3, #0
	ldr r7, [r5, r2]
	add r2, r7, #0
	bl sub_020E1EE0
	add r5, r0, #0
	add r6, r1, #0
	lsr r7, r7, #1
	lsr r0, r5, #0x13
	lsl r1, r6, #0xd
	orr r1, r0
	lsl r0, r5, #0xd
	add r2, r7, #0
	mov r3, #0
	bl sub_020E1ED4
	add r2, r1, #0
	mov r1, #1
	sub r3, r5, r7
	ldr r3, _0224BF50 ; =0x00000000
	sbc r6, r3
	blo _0224BEC0
	lsl r3, r1, #0xe
	mov r1, #0
	sub r0, r3, r0
_0224BEC0:
	add r2, r4, #0
	add r2, #0x24
	ldrb r2, [r2]
	ldr r3, _0224BF54 ; =0xFFFD8000
	mov r5, #0x40
	add r0, r0, r3
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	lsl r2, r2, #0x19
	lsr r2, r2, #0x1f
	bic r0, r5
	lsl r5, r1, #0x18
	lsr r5, r5, #0x18
	lsl r5, r5, #0x1f
	lsr r5, r5, #0x19
	orr r5, r0
	add r0, r4, #0
	add r0, #0x24
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224BF2A
	ldr r0, [r4, #0x10]
	cmp r0, r3
	beq _0224BF06
	cmp r2, #0
	bne _0224BF2A
	cmp r1, #1
	bne _0224BF2A
_0224BF06:
	ldr r0, _0224BF54 ; =0xFFFD8000
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x24
	ldrb r1, [r0]
	mov r0, #0x10
	bic r1, r0
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x24
	ldrb r1, [r0]
	mov r0, #0x20
	orr r1, r0
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
_0224BF2A:
	ldr r1, [r4, #0x10]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	ldr r0, [r4, #0xc]
	str r1, [r0, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl ov17_0224B09C
_0224BF40:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224BF44: .word 0x00001154
_0224BF48: .word 0x00002710
_0224BF4C: .word 0x00000B04
_0224BF50: .word 0x00000000
_0224BF54: .word 0xFFFD8000
	thumb_func_end ov17_0224BE64

	thumb_func_start ov17_0224BF58
ov17_0224BF58: ; 0x0224BF58
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r2, [r4, #0]
	ldr r1, _0224C0B0 ; =0x00001154
	mov r3, #0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	ldr r2, _0224C0B4 ; =0x00002710
	ldr r6, [r4, #0x14]
	bl sub_020E1F1C
	ldr r3, [r4, #0]
	ldr r2, _0224C0B8 ; =0x00000B04
	ldr r2, [r3, r2]
	mov r3, #0
	lsl r2, r2, #1
	bl sub_020E1EE0
	mov r2, #0x5a
	lsl r2, r2, #2
	mov r3, #0
	bl sub_020E1F1C
	ldr r3, [r4, #0]
	ldr r2, _0224C0B8 ; =0x00000B04
	ldr r2, [r3, r2]
	mov r3, #0
	lsl r2, r2, #1
	bl sub_020E1ED4
	lsl r5, r0, #8
	lsr r2, r0, #0x18
	add r0, r4, #0
	lsl r1, r1, #8
	str r5, [r4, #0x14]
	add r0, #0x24
	ldrb r0, [r0]
	orr r1, r2
	lsl r2, r0, #0x1e
	lsr r2, r2, #0x1f
	bne _0224C0AC
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224BFC6
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	mov r2, #8
	add r6, r5, #0
	bic r0, r2
	add r2, r4, #0
	add r2, #0x24
	strb r0, [r2]
_0224BFC6:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224C026
	mov r0, #0
	sub r2, r5, r6
	mov ip, r1
	mov r2, ip
	sbc r2, r0
	bhs _0224BFE4
	add r7, r6, r5
	b _0224BFE6
_0224BFE4:
	add r7, r5, #0
_0224BFE6:
	ldr r3, [r4, #0x20]
	mov r0, #0
	add r2, r0, #0
	add r0, r3, #0
	eor r2, r1
	eor r0, r5
	orr r0, r2
	beq _0224C016
	cmp r6, r3
	bhi _0224BFFE
	cmp r3, r7
	bls _0224C016
_0224BFFE:
	ldr r2, [r4, #0x20]
	mov r0, #0
	sub r2, r5, r2
	mov ip, r1
	mov r2, ip
	sbc r2, r0
	blo _0224C0AC
	sub r2, r5, r6
	mov ip, r1
	mov r2, ip
	sbc r2, r0
	bhs _0224C0AC
_0224C016:
	add r0, r4, #0
	add r0, #0x24
	ldrb r2, [r0]
	mov r0, #4
	bic r2, r0
	add r0, r4, #0
	add r0, #0x24
	strb r2, [r0]
_0224C026:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224C06C
	mov r2, #0
	mov r0, #0
	eor r2, r1
	eor r0, r5
	orr r0, r2
	beq _0224C048
	mov r2, #0
	sub r0, r5, r6
	sbc r1, r2
	bhs _0224C06C
_0224C048:
	add r1, r4, #0
	add r1, #0x24
	ldrb r2, [r1]
	mov r1, #1
	mov r0, #0
	bic r2, r1
	add r1, r4, #0
	add r1, #0x24
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x24
	ldrb r2, [r1]
	mov r1, #2
	orr r2, r1
	add r1, r4, #0
	add r1, #0x24
	strb r2, [r1]
	str r0, [r4, #0x20]
_0224C06C:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0224C074
	b _0224C074
_0224C074:
	ldr r0, [r4, #0x14]
	mov r5, #3
	lsl r0, r0, #8
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	add r1, r5, #0
	mul r1, r0
	ldrb r2, [r4, #0x19]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	mov r1, #6
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0224C0BC ; =0x022546F4
	asr r0, r0, #0xc
	ldrsh r1, [r1, r3]
	add r0, r0, r1
	sub r1, r0, r5
	ldr r0, [r4, #0xc]
	str r1, [r0, #4]
	ldr r2, [r4, #0xc]
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl ov22_0225B100
_0224C0AC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C0B0: .word 0x00001154
_0224C0B4: .word 0x00002710
_0224C0B8: .word 0x00000B04
_0224C0BC: .word 0x022546F4
	thumb_func_end ov17_0224BF58

	thumb_func_start ov17_0224C0C0
ov17_0224C0C0: ; 0x0224C0C0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	cmp r6, #0
	beq _0224C0D6
	cmp r5, #0
	bne _0224C0D6
	bl sub_02022974
_0224C0D6:
	cmp r6, #6
	bls _0224C0DC
	b _0224C23C
_0224C0DC:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224C0E8: ; jump table
	.short _0224C240 - _0224C0E8 - 2 ; case 0
	.short _0224C0F6 - _0224C0E8 - 2 ; case 1
	.short _0224C112 - _0224C0E8 - 2 ; case 2
	.short _0224C136 - _0224C0E8 - 2 ; case 3
	.short _0224C14C - _0224C0E8 - 2 ; case 4
	.short _0224C190 - _0224C0E8 - 2 ; case 5
	.short _0224C1C2 - _0224C0E8 - 2 ; case 6
_0224C0F6:
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r4, #0x9c
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C112:
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r3, [r4, #0]
	add r1, r2, #1
	ldrb r0, [r3, r2]
	add r2, #0x51
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r4, #0x9c
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200BBA8
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C136:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	add r4, #0x9c
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0]
	bl sub_0200B60C
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C14C:
	ldrb r6, [r5]
	ldr r3, [r4, #0]
	mov r0, #1
	lsl r2, r6, #2
	str r0, [sp]
	mov r0, #2
	add r2, r3, r2
	add r6, r3, r6
	mov r3, #0x42
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r3, r3, #2
	add r0, #0x9c
	add r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r4, #0x9c
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C190:
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	add r4, #0x9c
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0]
	add r3, r1, #0
	bl sub_0200B60C
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C1C2:
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r3, [r4, #0]
	add r1, r2, #1
	ldrb r0, [r3, r2]
	add r2, #0x51
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200BBA8
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, r4, #0
	add r0, #0x9c
	ldrb r2, [r5, #4]
	ldr r0, [r0, #0]
	add r3, r1, #0
	bl sub_0200B60C
	ldrb r6, [r5]
	ldr r3, [r4, #0]
	mov r0, #1
	lsl r2, r6, #2
	str r0, [sp]
	mov r1, #2
	add r2, r3, r2
	add r6, r3, r6
	mov r3, #0x42
	add r0, r4, #0
	str r1, [sp, #4]
	lsl r3, r3, #2
	add r0, #0x9c
	add r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	bl sub_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r4, #0x9c
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #3
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C23C:
	bl sub_02022974
_0224C240:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224C0C0

	thumb_func_start ov17_0224C244
ov17_0224C244: ; 0x0224C244
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _0224C2C0 ; =0x00000171
	add r7, r2, #0
	ldrb r0, [r1, r0]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _0224C266
	ldr r0, _0224C2C4 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027AC0
	add r4, r0, #0
	b _0224C268
_0224C266:
	mov r4, #1
_0224C268:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	bl ov17_0224C0C0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x9c
	add r1, #0xa0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x78
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	add r2, r5, #0
	add r0, r5, #0
	str r3, [sp, #8]
	add r2, #0xa0
	ldr r2, [r2, #0]
	add r0, #0x78
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0224C2C8 ; =0x00000AD4
	strb r0, [r5, r1]
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C2C0: .word 0x00000171
_0224C2C4: .word 0x00001988
_0224C2C8: .word 0x00000AD4
	thumb_func_end ov17_0224C244

	thumb_func_start ov17_0224C2CC
ov17_0224C2CC: ; 0x0224C2CC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #8
	blo _0224C2DE
	bl sub_02022974
_0224C2DE:
	lsl r3, r4, #2
	ldr r2, _0224C2F8 ; =0x0225470C
	add r0, r5, #0
	ldr r4, _0224C2FC ; =0x0225470E
	ldrh r2, [r2, r3]
	str r6, [sp]
	add r5, #0x98
	ldrb r3, [r4, r3]
	ldr r1, [r5, #0]
	bl ov17_0224C244
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224C2F8: .word 0x0225470C
_0224C2FC: .word 0x0225470E
	thumb_func_end ov17_0224C2CC

	thumb_func_start ov17_0224C300
ov17_0224C300: ; 0x0224C300
	ldr r1, _0224C308 ; =0x00000AD4
	ldr r3, _0224C30C ; =sub_0201D724
	ldrb r0, [r0, r1]
	bx r3
	; .align 2, 0
_0224C308: .word 0x00000AD4
_0224C30C: .word sub_0201D724
	thumb_func_end ov17_0224C300

	thumb_func_start ov17_0224C310
ov17_0224C310: ; 0x0224C310
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224C358 ; =0x000080F1
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x4c
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224C35C ; =0x000080EE
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x4d
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224C35C ; =0x000080EE
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x4e
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224C358: .word 0x000080F1
_0224C35C: .word 0x000080EE
	thumb_func_end ov17_0224C310

	thumb_func_start ov17_0224C360
ov17_0224C360: ; 0x0224C360
	push {r4, lr}
	ldr r1, _0224C37C ; =0x000080F1
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0224C380 ; =0x000080EE
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224C380 ; =0x000080EE
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224C37C: .word 0x000080F1
_0224C380: .word 0x000080EE
	thumb_func_end ov17_0224C360

	thumb_func_start ov17_0224C384
ov17_0224C384: ; 0x0224C384
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224C396
	bl sub_02022974
_0224C396:
	mov r0, #0x17
	mov r1, #0x10
	bl sub_02018144
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x21
	lsl r0, r0, #4
	str r4, [r5, r0]
	str r5, [r4, #8]
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _0224C3D8 ; =0x022547FC
	bl sub_0200CE6C
	str r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, _0224C3DC ; =ov17_0224C414
	ldr r2, _0224C3E0 ; =0x00009C4F
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224C3D8: .word 0x022547FC
_0224C3DC: .word ov17_0224C414
_0224C3E0: .word 0x00009C4F
	thumb_func_end ov17_0224C384

	thumb_func_start ov17_0224C3E4
ov17_0224C3E4: ; 0x0224C3E4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_0200DA58
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_0200D0F4
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x21
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov17_0224C3E4

	thumb_func_start ov17_0224C414
ov17_0224C414: ; 0x0224C414
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _0224C422
	cmp r0, #1
	beq _0224C426
	cmp r0, #2
	b _0224C426
_0224C422:
	add r0, r0, #1
	strb r0, [r1, #0xc]
_0224C426:
	ldr r0, [r1, #4]
	ldr r3, _0224C430 ; =sub_0200D324
	ldr r0, [r0, #0]
	bx r3
	nop
_0224C430: .word sub_0200D324
	thumb_func_end ov17_0224C414

	thumb_func_start ov17_0224C434
ov17_0224C434: ; 0x0224C434
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r3, #0
	mov r1, #3
	add r7, r2, #0
	bl ov17_0223F0BC
	add r6, r0, #0
	add r0, r4, #0
	mul r0, r6
	add r1, r7, #0
	bl sub_020E2178
	add r1, r0, #0
	mov r3, #1
	lsl r3, r3, #8
	sub r4, r3, r6
	lsr r2, r4, #0x1f
	add r2, r4, r2
	sub r1, r1, #1
	asr r2, r2, #1
	add r1, r1, r2
	lsl r1, r1, #0x10
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	mov r2, #0xb0
	lsl r3, r3, #0xc
	bl sub_0200D500
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200D3F4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224C434

	thumb_func_start ov17_0224C47C
ov17_0224C47C: ; 0x0224C47C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	mov r3, #1
	ldr r0, [r5, #4]
	mvn r1, r1
	mov r2, #0xb0
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0200D3F4
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224C47C

	thumb_func_start ov17_0224C49C
ov17_0224C49C: ; 0x0224C49C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	add r0, r7, #0
	mov r1, #3
	bl ov17_0223F0BC
	add r4, r0, #0
	add r0, r6, #0
	ldr r1, [sp]
	mul r0, r4
	bl sub_020E2178
	add r6, r0, #0
	cmp r7, #0
	bne _0224C4D6
	add r0, r7, #0
	mov r1, #1
	bl ov17_0223F0BC
	add r1, r0, #0
	ldr r0, _0224C53C ; =0x00002710
	mul r0, r4
	bl sub_020E1F6C
	add r7, r0, #0
	b _0224C4E4
_0224C4D6:
	ldr r0, _0224C53C ; =0x00002710
	add r1, r4, #0
	mul r1, r0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r7, r0, #3
_0224C4E4:
	ldr r0, _0224C53C ; =0x00002710
	add r1, r7, #0
	mul r0, r6
	bl sub_020E2178
	mov r0, #0xb4
	mul r0, r1
	add r1, r7, #0
	bl sub_020E2178
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	mov r1, #0xa
	add r2, r0, #0
	mul r2, r1
	add r1, #0xf6
	asr r0, r2, #0xb
	sub r3, r1, r4
	lsr r0, r0, #0x14
	lsr r1, r3, #0x1f
	add r1, r3, r1
	add r0, r2, r0
	asr r2, r0, #0xc
	mov r0, #0x90
	sub r2, r0, r2
	asr r1, r1, #1
	add r1, r6, r1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	mov r3, #1
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200D3F4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C53C: .word 0x00002710
	thumb_func_end ov17_0224C49C

	thumb_func_start ov17_0224C540
ov17_0224C540: ; 0x0224C540
	ldr r3, _0224C548 ; =sub_0200D3F4
	ldr r0, [r0, #4]
	mov r1, #0
	bx r3
	; .align 2, 0
_0224C548: .word sub_0200D3F4
	thumb_func_end ov17_0224C540

	thumb_func_start ov17_0224C54C
ov17_0224C54C: ; 0x0224C54C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #3
	bl ov17_0223F0BC
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	lsl r3, r3, #8
	sub r2, r3, r4
	lsr r1, r2, #0x1f
	add r1, r2, r1
	lsl r1, r1, #0xf
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	mov r2, #0x90
	lsl r3, r3, #0xc
	bl sub_0200D500
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224C54C

	thumb_func_start ov17_0224C57C
ov17_0224C57C: ; 0x0224C57C
	push {r3, r4}
	ldr r2, _0224C59C ; =0x022546C0
	add r1, sp, #0
	ldrb r3, [r2]
	add r4, sp, #0
	strb r3, [r1]
	ldrb r3, [r2, #1]
	strb r3, [r1, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	ldrb r0, [r4, r0]
	pop {r3, r4}
	bx lr
	nop
_0224C59C: .word 0x022546C0
	thumb_func_end ov17_0224C57C

	thumb_func_start ov17_0224C5A0
ov17_0224C5A0: ; 0x0224C5A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	cmp r4, #8
	blo _0224C5B2
	bl sub_02022974
_0224C5B2:
	ldr r0, _0224C634 ; =0x00001C0D
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _0224C62E
	add r0, r5, #0
	mov r1, #1
	add r0, #0x88
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, [r5, #0x74]
	mov r1, #1
	bl sub_0201C3C0
	add r0, r5, #0
	add r0, #0x98
	ldr r1, _0224C638 ; =0x0225470C
	lsl r4, r4, #2
	ldrh r1, [r1, r4]
	ldr r0, [r0, #0]
	bl sub_0200B1EC
	ldr r1, _0224C63C ; =0x0225470E
	add r6, r0, #0
	ldrb r1, [r1, r4]
	add r0, r5, #0
	add r2, r7, #0
	bl ov17_0224C0C0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x9c
	add r1, #0xa0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x88
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r2, r5, #0
	add r0, r5, #0
	str r3, [sp, #8]
	add r2, #0xa0
	ldr r2, [r2, #0]
	add r0, #0x88
	mov r1, #1
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0224C634 ; =0x00001C0D
	mov r1, #1
	strb r1, [r5, r0]
_0224C62E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224C634: .word 0x00001C0D
_0224C638: .word 0x0225470C
_0224C63C: .word 0x0225470E
	thumb_func_end ov17_0224C5A0

	thumb_func_start ov17_0224C640
ov17_0224C640: ; 0x0224C640
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x88
	mov r1, #1
	bl sub_0200E084
	ldr r0, [r4, #0x74]
	mov r1, #1
	bl sub_0201C3C0
	ldr r0, _0224C65C ; =0x00001C0D
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0224C65C: .word 0x00001C0D
	thumb_func_end ov17_0224C640

	thumb_func_start ov17_0224C660
ov17_0224C660: ; 0x0224C660
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0224C69C ; =0x00000B08
	ldrb r1, [r1, #4]
	ldr r3, [r5, r0]
	add r6, r2, #0
	mul r1, r3
	mul r6, r1
	add r1, r0, #4
	add r0, #8
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	mov r4, #0
	add r0, r1, r0
	mul r0, r2
	add r0, r1, r0
	ldr r1, _0224C6A0 ; =0x00002710
	bl sub_020E2178
	add r1, r4, #0
	add r3, r6, r0
	ldr r0, _0224C6A4 ; =0x00001154
	adc r4, r1
	ldr r2, [r5, r0]
	add r0, r0, #4
	ldr r1, [r5, r0]
	sub r0, r3, r2
	sbc r4, r1
	add r1, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224C69C: .word 0x00000B08
_0224C6A0: .word 0x00002710
_0224C6A4: .word 0x00001154
	thumb_func_end ov17_0224C660

	thumb_func_start ov17_0224C6A8
ov17_0224C6A8: ; 0x0224C6A8
	ldr r3, _0224C6AC ; =ov17_0224C660
	bx r3
	; .align 2, 0
_0224C6AC: .word ov17_0224C660
	thumb_func_end ov17_0224C6A8

	thumb_func_start ov17_0224C6B0
ov17_0224C6B0: ; 0x0224C6B0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	mov r0, #0
	strb r0, [r7]
	mov r0, #0x17
	mov r1, #0x2c
	bl sub_02018144
	mov r1, #0
	mov r2, #0x2c
	add r4, r0, #0
	bl sub_020C4CF4
	add r1, r6, #0
	add r1, #0x18
	lsl r0, r5, #4
	str r6, [r4, #0]
	add r0, r1, r0
	str r0, [r4, #4]
	mov r0, #0x85
	lsl r0, r0, #2
	add r1, r6, r0
	mov r0, #0x18
	mul r0, r5
	add r0, r1, r0
	str r0, [r4, #8]
	mov r0, #0xad
	str r7, [r4, #0xc]
	add r1, r6, r5
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	ldr r2, _0224C70C ; =0x00009C40
	cmp r0, #1
	bne _0224C702
	ldr r0, _0224C710 ; =ov17_0224C718
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_0224C702:
	ldr r0, _0224C714 ; =ov17_0224C7B8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C70C: .word 0x00009C40
_0224C710: .word ov17_0224C718
_0224C714: .word ov17_0224C7B8
	thumb_func_end ov17_0224C6B0

	thumb_func_start ov17_0224C718
ov17_0224C718: ; 0x0224C718
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C72A
	cmp r0, #1
	beq _0224C74A
	b _0224C79A
_0224C72A:
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	bl ov17_0224AC78
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	lsl r0, r0, #8
	str r0, [r4, #0x1c]
	str r0, [r4, #0x18]
	mov r0, #5
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0224C74A:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
	str r0, [r4, #0x18]
	mov r0, #2
	ldr r1, [r4, #0x14]
	lsl r0, r0, #8
	sub r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r0, r1
	blt _0224C77E
	str r1, [r4, #0x18]
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	cmp r0, #1
	bls _0224C77A
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	b _0224C77E
_0224C77A:
	mov r0, #0
	strb r0, [r4, #0x10]
_0224C77E:
	ldr r1, [r4, #0x18]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	ldr r0, [r4, #4]
	str r1, [r0, #8]
	ldr r2, [r4, #4]
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl ov22_0225B100
	pop {r3, r4, r5, pc}
_0224C79A:
	ldr r0, [r4, #0xc]
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl ov17_0224AC78
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0224C718

	thumb_func_start ov17_0224C7B8
ov17_0224C7B8: ; 0x0224C7B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C7CA
	cmp r0, #1
	beq _0224C7DA
	b _0224C834
_0224C7CA:
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	lsl r0, r0, #8
	str r0, [r4, #0x28]
	str r0, [r4, #0x24]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0224C7DA:
	ldr r0, [r4, #0x20]
	bl sub_0201D2B8
	lsl r1, r0, #2
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	mov r1, #0x32
	ldr r2, [r4, #0x20]
	lsl r1, r1, #0xc
	add r1, r2, r1
	str r1, [r4, #0x20]
	asr r2, r1, #0xc
	mov r1, #0x5a
	lsl r1, r1, #2
	asr r0, r0, #0xc
	cmp r2, r1
	blt _0224C816
	ldrb r1, [r4, #0x11]
	add r1, r1, #1
	strb r1, [r4, #0x11]
	ldrb r1, [r4, #0x11]
	cmp r1, #5
	bls _0224C816
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x24]
	ldrb r1, [r4, #0x10]
	mov r0, #0
	add r1, r1, #1
	strb r1, [r4, #0x10]
_0224C816:
	ldr r2, [r4, #0x24]
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	add r1, r1, r0
	ldr r0, [r4, #4]
	str r1, [r0, #4]
	ldr r2, [r4, #4]
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl ov22_0225B100
	pop {r3, r4, r5, pc}
_0224C834:
	ldr r0, [r4, #0xc]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224C7B8

	thumb_func_start ov17_0224C848
ov17_0224C848: ; 0x0224C848
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224C848

	thumb_func_start ov17_0224C84C
ov17_0224C84C: ; 0x0224C84C
	push {r3, lr}
	ldr r0, _0224C860 ; =0x04000050
	mov r3, #0
	mov r1, #1
	mov r2, #0x3e
	str r3, [sp]
	bl sub_020BF55C
	pop {r3, pc}
	nop
_0224C860: .word 0x04000050
	thumb_func_end ov17_0224C84C

	thumb_func_start ov17_0224C864
ov17_0224C864: ; 0x0224C864
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xa4
	add r5, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02003164
	ldr r3, _0224C890 ; =0x022546DC
	lsl r5, r5, #2
	ldrh r1, [r3, r5]
	add r3, r3, r5
	ldr r2, _0224C894 ; =0x00001FE3
	str r1, [sp]
	ldrh r3, [r3, #2]
	ldr r1, _0224C898 ; =0x00001128
	lsl r3, r3, #0x18
	ldr r1, [r4, r1]
	lsr r3, r3, #0x18
	bl sub_020039F8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224C890: .word 0x022546DC
_0224C894: .word 0x00001FE3
_0224C898: .word 0x00001128
	thumb_func_end ov17_0224C864

	thumb_func_start ov17_0224C89C
ov17_0224C89C: ; 0x0224C89C
	push {r3, lr}
	ldrb r2, [r1, #7]
	cmp r2, #0
	bne _0224C8E4
	ldrb r2, [r1, #4]
	cmp r2, #0
	beq _0224C8B2
	cmp r2, #1
	beq _0224C8B2
	cmp r2, #2
	b _0224C8DE
_0224C8B2:
	ldrb r2, [r1, #3]
	cmp r2, #4
	bhi _0224C8E0
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224C8C4: ; jump table
	.short _0224C8E0 - _0224C8C4 - 2 ; case 0
	.short _0224C8CE - _0224C8C4 - 2 ; case 1
	.short _0224C8D2 - _0224C8C4 - 2 ; case 2
	.short _0224C8D6 - _0224C8C4 - 2 ; case 3
	.short _0224C8DA - _0224C8C4 - 2 ; case 4
_0224C8CE:
	mov r1, #1
	b _0224C8E0
_0224C8D2:
	mov r1, #2
	b _0224C8E0
_0224C8D6:
	mov r1, #3
	b _0224C8E0
_0224C8DA:
	mov r1, #4
	b _0224C8E0
_0224C8DE:
	mov r1, #5
_0224C8E0:
	bl ov17_0224C864
_0224C8E4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224C89C

	thumb_func_start ov17_0224C8E8
ov17_0224C8E8: ; 0x0224C8E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	ldr r1, _0224C97C ; =0x00000B04
	str r0, [sp]
	ldr r0, [r0, r1]
	ldr r5, _0224C980 ; =0x04000280
	lsr r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, _0224C984 ; =0x00001BBC
	add r6, r0, #0
	add r7, r0, r1
	lsr r4, r5, #0xb
_0224C908:
	ldrb r0, [r7]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224C968
	ldr r1, [sp]
	ldr r0, _0224C988 ; =0x00000B1B
	ldrb r0, [r1, r0]
	mov r1, #4
	bl ov17_0223F0BC
	ldr r1, _0224C98C ; =0x00001BBA
	lsr r2, r0, #0x1f
	add r2, r0, r2
	ldrb r1, [r6, r1]
	asr r0, r2, #1
	add r0, r1, r0
	ldr r1, [sp, #8]
	mul r0, r1
	mov r1, #0
	strh r1, [r5]
	ldr r1, _0224C990 ; =0x04000290
	str r0, [r1, #0]
	ldr r1, _0224C994 ; =0x00002710
	ldr r0, _0224C998 ; =0x04000298
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
_0224C940:
	ldrh r0, [r5]
	tst r0, r4
	bne _0224C940
	ldr r0, _0224C99C ; =0x040002A0
	ldr r1, [r0, #0]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _0224C968
	ldr r0, [sp]
	ldr r2, _0224C9A0 ; =0x00001BB4
	add r1, r0, #0
	add r3, r1, r2
	ldr r1, [sp, #0xc]
	mov r2, #0xa
	mul r2, r1
	add r1, r3, r2
	bl ov17_0224C89C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0224C968:
	ldr r0, [sp, #0xc]
	add r7, #0xa
	add r0, r0, #1
	add r6, #0xa
	str r0, [sp, #0xc]
	cmp r0, #8
	blt _0224C908
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C97C: .word 0x00000B04
_0224C980: .word 0x04000280
_0224C984: .word 0x00001BBC
_0224C988: .word 0x00000B1B
_0224C98C: .word 0x00001BBA
_0224C990: .word 0x04000290
_0224C994: .word 0x00002710
_0224C998: .word 0x04000298
_0224C99C: .word 0x040002A0
_0224C9A0: .word 0x00001BB4
	thumb_func_end ov17_0224C8E8

	thumb_func_start ov17_0224C9A4
ov17_0224C9A4: ; 0x0224C9A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224C9B6
	bl sub_02022974
_0224C9B6:
	mov r0, #0x81
	lsl r0, r0, #2
	add r5, r4, r0
	ldr r0, _0224C9CC ; =ov17_0224CA28
	ldr r2, _0224C9D0 ; =0x00009C40
	add r1, r5, #0
	str r4, [r5, #0]
	bl sub_0200D9E8
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224C9CC: .word ov17_0224CA28
_0224C9D0: .word 0x00009C40
	thumb_func_end ov17_0224C9A4

	thumb_func_start ov17_0224C9D4
ov17_0224C9D4: ; 0x0224C9D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224C9EE
	bl sub_0200DA58
	mov r0, #0x82
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224C9EE:
	pop {r4, pc}
	thumb_func_end ov17_0224C9D4

	thumb_func_start ov17_0224C9F0
ov17_0224C9F0: ; 0x0224C9F0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x81
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0224CA04
	bl sub_02022974
_0224CA04:
	cmp r5, #0
	bne _0224CA0C
	mov r0, #0x40
	b _0224CA0E
_0224CA0C:
	mov r0, #0x30
_0224CA0E:
	strb r0, [r4, #0xa]
	mov r0, #1
	strb r0, [r4, #0xb]
	mov r0, #0xa
	lsl r0, r0, #8
	strh r0, [r4, #8]
	ldr r0, _0224CA24 ; =0x000006F8
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_0224CA24: .word 0x000006F8
	thumb_func_end ov17_0224C9F0

	thumb_func_start ov17_0224CA28
ov17_0224CA28: ; 0x0224CA28
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0224CA82
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_02003164
	ldrb r1, [r4, #0xa]
	lsl r3, r1, #1
	ldr r1, _0224CA88 ; =0x00007FFF
	add r0, r0, r3
	str r1, [sp]
	ldr r2, [r4, #0]
	ldr r1, _0224CA8C ; =0x00001128
	ldr r1, [r2, r1]
	mov r2, #0x10
	add r1, r1, r3
	ldrh r3, [r4, #8]
	asr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0200393C
	ldrh r1, [r4, #8]
	cmp r1, #0
	bne _0224CA6E
	mov r0, #0
	add sp, #4
	strb r0, [r4, #0xb]
	pop {r3, r4, pc}
_0224CA6E:
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	bls _0224CA7E
	sub r0, r1, r0
	add sp, #4
	strh r0, [r4, #8]
	pop {r3, r4, pc}
_0224CA7E:
	mov r0, #0
	strh r0, [r4, #8]
_0224CA82:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224CA88: .word 0x00007FFF
_0224CA8C: .word 0x00001128
	thumb_func_end ov17_0224CA28

	thumb_func_start ov17_0224CA90
ov17_0224CA90: ; 0x0224CA90
	push {r3, r4, r5, lr}
	ldr r5, _0224CAB8 ; =0x0000113C
	add r4, r0, #0
	str r2, [r4, r5]
	add r0, r5, #4
	str r3, [r4, r0]
	add r0, r5, #0
	ldr r2, [sp, #0x10]
	add r0, #8
	str r2, [r4, r0]
	ldr r0, [sp, #0x14]
	add r5, #0xc
	str r0, [r4, r5]
	ldr r0, [r4, #0xc]
	ldr r2, _0224CABC ; =ov17_0224CAC0
	add r3, r4, #0
	bl sub_020146F4
	pop {r3, r4, r5, pc}
	nop
_0224CAB8: .word 0x0000113C
_0224CABC: .word ov17_0224CAC0
	thumb_func_end ov17_0224CA90

	thumb_func_start ov17_0224CAC0
ov17_0224CAC0: ; 0x0224CAC0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02014764
	ldr r1, _0224CAFC ; =0x0000113C
	add r1, r0, r1
	ldr r0, [r4, #0x20]
	ldr r2, [r1, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r2, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r2, [r1, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r2, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r2, [r1, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r2, r0
	str r0, [r4, #0x30]
	ldr r1, [r1, #0xc]
	add r0, r4, #0
	bl sub_020147B0
	pop {r4, pc}
	nop
_0224CAFC: .word 0x0000113C
	thumb_func_end ov17_0224CAC0

	thumb_func_start ov17_0224CB00
ov17_0224CB00: ; 0x0224CB00
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _0224CB70 ; =0x00000B1B
	add r5, r0, #0
	ldrb r3, [r5, r3]
	lsl r1, r1, #2
	lsl r4, r3, #2
	ldr r3, _0224CB74 ; =0x022546C4
	cmp r2, #0
	ldr r3, [r3, r4]
	ldr r4, [r3, r1]
	ldr r1, _0224CB78 ; =0xFFFFEB80
	ldr r3, _0224CB7C ; =0xFFFFBADC
	bne _0224CB46
	str r1, [sp]
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	mov r1, #0
	add r2, r4, #0
	bl ov17_0224CA90
	ldr r0, _0224CB78 ; =0xFFFFEB80
	ldr r3, _0224CB7C ; =0xFFFFBADC
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov17_0224CA90
	add sp, #8
	pop {r3, r4, r5, pc}
_0224CB46:
	str r1, [sp]
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	mov r1, #2
	add r2, r4, #0
	bl ov17_0224CA90
	ldr r0, _0224CB78 ; =0xFFFFEB80
	ldr r3, _0224CB7C ; =0xFFFFBADC
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ov17_0224CA90
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224CB70: .word 0x00000B1B
_0224CB74: .word 0x022546C4
_0224CB78: .word 0xFFFFEB80
_0224CB7C: .word 0xFFFFBADC
	thumb_func_end ov17_0224CB00

	thumb_func_start ov17_0224CB80
ov17_0224CB80: ; 0x0224CB80
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #0
	ldr r1, _0224CD34 ; =0xFFFFEB80
	ldr r3, _0224CD38 ; =0xFFFFE764
	bne _0224CC0E
	str r1, [sp]
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	ldr r2, _0224CD3C ; =0xFFFFCD38
	mov r1, #5
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD3C ; =0xFFFFCD38
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #6
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD3C ; =0xFFFFCD38
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #7
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD40 ; =0x00005014
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #5
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD40 ; =0x00005014
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #6
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD40 ; =0x00005014
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #7
	bl ov17_0224CA90
	b _0224CCE4
_0224CC0E:
	str r1, [sp]
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	ldr r2, _0224CD44 ; =0xFFFFBD98
	mov r1, #8
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD44 ; =0xFFFFBD98
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #9
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD44 ; =0xFFFFBD98
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xa
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD44 ; =0xFFFFBD98
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xb
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD44 ; =0xFFFFBD98
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xc
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD48 ; =0x00004074
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #8
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD48 ; =0x00004074
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #9
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD48 ; =0x00004074
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xa
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD48 ; =0x00004074
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xb
	bl ov17_0224CA90
	ldr r0, _0224CD34 ; =0xFFFFEB80
	ldr r2, _0224CD48 ; =0x00004074
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 ; =0xFFFFE764
	add r0, r4, #0
	mov r1, #0xc
	bl ov17_0224CA90
_0224CCE4:
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224CD4C ; =0x00007FFF
	ldr r1, _0224CD50 ; =0x00001FE3
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #8
	mov r3, #0x10
	bl ov17_0224CD84
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, _0224CD4C ; =0x00007FFF
	add r0, r4, #0
	str r2, [sp, #8]
	add r0, #0xa4
	mov r1, #4
	ldr r0, [r0, #0]
	lsr r2, r2, #1
	sub r3, r1, #5
	bl sub_02003178
	ldr r0, _0224CD54 ; =0x04000050
	mov r1, #0x3f
	mov r2, #0x10
	bl sub_020BF578
	mov r2, #0xfa
	ldr r0, _0224CD58 ; =ov17_0224CD60
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	ldr r0, _0224CD5C ; =0x000006E5
	bl sub_02005748
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0224CD34: .word 0xFFFFEB80
_0224CD38: .word 0xFFFFE764
_0224CD3C: .word 0xFFFFCD38
_0224CD40: .word 0x00005014
_0224CD44: .word 0xFFFFBD98
_0224CD48: .word 0x00004074
_0224CD4C: .word 0x00007FFF
_0224CD50: .word 0x00001FE3
_0224CD54: .word 0x04000050
_0224CD58: .word ov17_0224CD60
_0224CD5C: .word 0x000006E5
	thumb_func_end ov17_0224CB80

	thumb_func_start ov17_0224CD60
ov17_0224CD60: ; 0x0224CD60
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r3, #0
	ldr r0, _0224CD80 ; =0x04000050
	mov r1, #1
	mov r2, #0x3e
	str r3, [sp]
	bl sub_020BF55C
	add r0, r4, #0
	bl sub_0200DA58
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224CD80: .word 0x04000050
	thumb_func_end ov17_0224CD60

	thumb_func_start ov17_0224CD84
ov17_0224CD84: ; 0x0224CD84
	push {r3, r4, r5, lr}
	ldr r4, _0224CDB0 ; =0x00001128
	ldr r5, [sp, #0x10]
	add r4, r0, r4
	lsl r0, r3, #8
	strh r0, [r4, #8]
	lsl r0, r5, #8
	strh r0, [r4, #0xa]
	add r0, sp, #0
	ldrh r0, [r0, #0x14]
	strh r0, [r4, #0xe]
	sub r0, r5, r3
	strh r1, [r4, #6]
	lsl r0, r0, #8
	add r1, r2, #0
	bl sub_020E2178
	strh r0, [r4, #0xc]
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	nop
_0224CDB0: .word 0x00001128
	thumb_func_end ov17_0224CD84

	thumb_func_start ov17_0224CDB4
ov17_0224CDB4: ; 0x0224CDB4
	ldr r2, _0224CDBC ; =0x00001139
	strb r1, [r0, r2]
	bx lr
	nop
_0224CDBC: .word 0x00001139
	thumb_func_end ov17_0224CDB4

	thumb_func_start ov17_0224CDC0
ov17_0224CDC0: ; 0x0224CDC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	cmp r2, #0
	bne _0224CDD0
	ldr r7, _0224CDFC ; =0x00007FFF
	ldr r6, _0224CE00 ; =0x0000254A
	b _0224CDD4
_0224CDD0:
	ldr r7, _0224CE00 ; =0x0000254A
	ldr r6, _0224CDFC ; =0x00007FFF
_0224CDD4:
	mov r4, #0
_0224CDD6:
	ldr r0, [sp]
	cmp r4, r0
	ldr r0, [r5, #0x18]
	bne _0224CDE6
	add r1, r7, #0
	bl ov22_0225B198
	b _0224CDEC
_0224CDE6:
	add r1, r6, #0
	bl ov22_0225B198
_0224CDEC:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0224CDD6
	ldr r0, _0224CE04 ; =0x000006EC
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224CDFC: .word 0x00007FFF
_0224CE00: .word 0x0000254A
_0224CE04: .word 0x000006EC
	thumb_func_end ov17_0224CDC0

	thumb_func_start ov17_0224CE08
ov17_0224CE08: ; 0x0224CE08
	push {r4, r5, r6, lr}
	ldr r6, _0224CE24 ; =0x00007FFF
	add r5, r0, #0
	mov r4, #0
_0224CE10:
	ldr r0, [r5, #0x18]
	add r1, r6, #0
	bl ov22_0225B198
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0224CE10
	pop {r4, r5, r6, pc}
	nop
_0224CE24: .word 0x00007FFF
	thumb_func_end ov17_0224CE08

	thumb_func_start ov17_0224CE28
ov17_0224CE28: ; 0x0224CE28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0xc]
	mov r4, #0
	add r5, sp, #0x18
	add r3, sp, #0x14
	ldr r2, _0224CED4 ; =0x00000AF6
	b _0224CE46
_0224CE38:
	ldr r1, [sp, #0xc]
	lsl r0, r4, #1
	add r1, r1, r0
	ldrsh r1, [r1, r2]
	strb r4, [r3, r4]
	add r4, r4, #1
	strh r1, [r5, r0]
_0224CE46:
	cmp r4, #4
	blt _0224CE38
	mov r4, #0
	add r7, sp, #0x18
	b _0224CE7A
_0224CE50:
	mov r6, #3
	b _0224CE74
_0224CE54:
	sub r3, r6, #1
	lsl r5, r3, #1
	lsl r1, r6, #1
	ldrsh r2, [r7, r5]
	ldrsh r0, [r7, r1]
	cmp r2, r0
	bge _0224CE72
	strh r2, [r7, r1]
	strh r0, [r7, r5]
	add r0, sp, #0x14
	add r1, sp, #0x14
	ldrb r0, [r0, r6]
	ldrb r2, [r1, r3]
	strb r2, [r1, r6]
	strb r0, [r1, r3]
_0224CE72:
	sub r6, r6, #1
_0224CE74:
	cmp r6, r4
	bgt _0224CE54
	add r4, r4, #1
_0224CE7A:
	cmp r4, #3
	blt _0224CE50
	ldr r3, _0224CED8 ; =0x022549C0
	add r0, sp, #0x10
	ldrb r1, [r3]
	mov r4, #1
	add r2, sp, #0x10
	strb r1, [r0]
	add r1, sp, #0x18
	b _0224CEA6
_0224CE8E:
	ldrb r0, [r3, r4]
	sub r6, r4, #1
	lsl r5, r6, #1
	strb r0, [r2, r4]
	lsl r0, r4, #1
	ldrsh r0, [r1, r0]
	ldrsh r5, [r1, r5]
	cmp r0, r5
	bne _0224CEA4
	ldrb r0, [r2, r6]
	strb r0, [r2, r4]
_0224CEA4:
	add r4, r4, #1
_0224CEA6:
	cmp r4, #4
	blt _0224CE8E
	mov r4, #0
	add r5, sp, #0x10
	mov r6, #0x1e
	add r7, r4, #0
	b _0224CECC
_0224CEB4:
	ldrb r0, [r5, r4]
	add r1, sp, #0x14
	ldrb r1, [r1, r4]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _0224CEDC ; =0x00007FFF
	ldr r3, _0224CEE0 ; =0x0000254A
	str r7, [sp, #8]
	bl ov17_0224CEE4
	add r4, r4, #1
_0224CECC:
	cmp r4, #4
	blt _0224CEB4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224CED4: .word 0x00000AF6
_0224CED8: .word 0x022549C0
_0224CEDC: .word 0x00007FFF
_0224CEE0: .word 0x0000254A
	thumb_func_end ov17_0224CE28

	thumb_func_start ov17_0224CEE4
ov17_0224CEE4: ; 0x0224CEE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x17
	mov r1, #0x14
	add r6, r2, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x28]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	ldr r1, [sp, #0x24]
	lsl r0, r0, #4
	add r0, r7, r0
	ldr r0, [r0, #0x18]
	str r0, [r4, #0]
	strh r6, [r4, #8]
	ldr r0, [sp, #4]
	strh r0, [r4, #0xa]
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x10]
	lsl r0, r0, #8
	bl sub_020E1F6C
	strh r0, [r4, #0xc]
	str r5, [r4, #4]
	cmp r5, #0
	beq _0224CF2C
	mov r0, #0
	strb r0, [r5]
_0224CF2C:
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov22_0225B198
	ldr r0, _0224CF44 ; =ov17_0224CF4C
	ldr r2, _0224CF48 ; =0x00009C40
	add r1, r4, #0
	bl sub_0200D9E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224CF44: .word ov17_0224CF4C
_0224CF48: .word 0x00009C40
	thumb_func_end ov17_0224CEE4

	thumb_func_start ov17_0224CF4C
ov17_0224CF4C: ; 0x0224CF4C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldrh r1, [r5, #0xe]
	ldrh r0, [r5, #0xc]
	add r0, r1, r0
	strh r0, [r5, #0xe]
	ldrh r0, [r5, #0xe]
	asr r4, r0, #8
	ldrb r0, [r5, #0x10]
	cmp r4, r0
	ble _0224CF68
	add r4, r0, #0
_0224CF68:
	ldrh r0, [r5, #0xa]
	lsl r3, r4, #0x18
	add r1, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r0, #8
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_0200393C
	add r1, sp, #4
	ldrh r1, [r1]
	ldr r0, [r5, #0]
	bl ov22_0225B198
	ldrb r0, [r5, #0x10]
	cmp r4, r0
	blt _0224CFA2
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _0224CF96
	mov r0, #1
	strb r0, [r1]
_0224CF96:
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_0224CFA2:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_0224CF4C

	thumb_func_start ov17_0224CFA8
ov17_0224CFA8: ; 0x0224CFA8
	cmp r0, #0x32
	beq _0224CFB0
	cmp r0, #0x33
	bne _0224CFB4
_0224CFB0:
	mov r0, #0
	bx lr
_0224CFB4:
	mov r0, #1
	bx lr
	thumb_func_end ov17_0224CFA8

	thumb_func_start ov17_0224CFB8
ov17_0224CFB8: ; 0x0224CFB8
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _0224CFEC ; =0x022549E4
	add r3, sp, #0
	str r1, [sp]
	mov r1, #0xd
	strh r1, [r3, #4]
	ldr r1, [r0, #0]
	ldr r2, _0224CFF0 ; =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	sub r1, r2, #7
	ldr r4, [r0, #0]
	add r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0, #0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	ldr r1, _0224CFF4 ; =0x00001174
	add r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0224CFEC: .word 0x022549E4
_0224CFF0: .word 0x00000123
_0224CFF4: .word 0x00001174
	thumb_func_end ov17_0224CFB8

	thumb_func_start ov17_0224CFF8
ov17_0224CFF8: ; 0x0224CFF8
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224CFF8

	thumb_func_start ov17_0224D00C
ov17_0224D00C: ; 0x0224D00C
	push {r3, lr}
	add r1, r2, #0
	mov r2, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D00C

	thumb_func_start ov17_0224D01C
ov17_0224D01C: ; 0x0224D01C
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224D01C

	thumb_func_start ov17_0224D020
ov17_0224D020: ; 0x0224D020
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D020

	thumb_func_start ov17_0224D034
ov17_0224D034: ; 0x0224D034
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x17
	mov r1, #0x18
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224D070 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0224D074 ; =ov17_0224D078
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D070: .word 0x00007530
_0224D074: .word ov17_0224D078
	thumb_func_end ov17_0224D034

	thumb_func_start ov17_0224D078
ov17_0224D078: ; 0x0224D078
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _0224D088
	b _0224D1AE
_0224D088:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D09C
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_0224D09C:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D0B0
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_0224D0B0:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x74]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _0224D128
_0224D0C8:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _0224D1CC ; =0x022549C4
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _0224D122
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r0, [r0, #0x12]
	mov r7, #0x3f
	str r5, [sp, #4]
	lsl r1, r0, #1
	ldr r0, _0224D1D0 ; =0x022549CC
	lsl r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r0, r0, #5
	add r6, r1, r0
	b _0224D11C
_0224D0F8:
	mov r4, #0
	b _0224D110
_0224D0FC:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_0224D110:
	cmp r4, #8
	blt _0224D0FC
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_0224D11C:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _0224D0F8
_0224D122:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0224D128:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _0224D0C8
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0224D16A
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0224D16A
	ldr r0, _0224D1CC ; =0x022549C4
	sub r1, r1, #1
	ldrsb r0, [r0, r1]
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #0x3f
	str r0, [sp, #4]
	lsl r1, r1, #0xa
	b _0224D164
_0224D154:
	ldr r0, [sp, #4]
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_0224D164:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0224D154
_0224D16A:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x74]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _0224D1C8
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _0224D1C8
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_0224D1AE:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224D1C8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D1CC: .word 0x022549C4
_0224D1D0: .word 0x022549CC
	thumb_func_end ov17_0224D078

	thumb_func_start ov17_0224D1D4
ov17_0224D1D4: ; 0x0224D1D4
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D1D4

	thumb_func_start ov17_0224D1E8
ov17_0224D1E8: ; 0x0224D1E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	mov r0, #0x17
	mov r1, #0x18
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224D230 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0224D234 ; =ov17_0224D240
	str r7, [r4, #0xc]
	bl sub_0200D9E8
	ldr r0, _0224D238 ; =0x00001150
	mov r1, #0
	strb r1, [r6, r0]
	ldr r0, _0224D23C ; =0x0000046F
	bl sub_0200549C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D230: .word 0x00007530
_0224D234: .word ov17_0224D240
_0224D238: .word 0x00001150
_0224D23C: .word 0x0000046F
	thumb_func_end ov17_0224D1E8

	thumb_func_start ov17_0224D240
ov17_0224D240: ; 0x0224D240
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _0224D250
	b _0224D39E
_0224D250:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D264
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_0224D264:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D278
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_0224D278:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x74]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _0224D2F8
_0224D290:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	mov r0, #4
	sub r1, r0, r1
	ldr r0, _0224D3BC ; =0x022549C4
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _0224D2F2
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r1, [r0, #0x12]
	mov r0, #0xb
	mov r7, #0x3f
	sub r0, r0, r1
	lsl r1, r0, #1
	ldr r0, _0224D3C0 ; =0x022549CC
	str r5, [sp, #4]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r7, r7, #0xa
	lsl r0, r0, #5
	add r6, r1, r0
	b _0224D2EC
_0224D2C8:
	mov r4, #0
	b _0224D2E0
_0224D2CC:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_0224D2E0:
	cmp r4, #8
	blt _0224D2CC
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_0224D2EC:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _0224D2C8
_0224D2F2:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0224D2F8:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _0224D290
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0224D35A
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0224D35A
	mov r0, #5
	sub r1, r0, r1
	ldr r0, _0224D3BC ; =0x022549C4
	mov r7, #0x3f
	ldrsb r0, [r0, r1]
	lsl r7, r7, #0xa
	mov r6, #0x1d
	add r0, r0, #3
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #2
	str r0, [sp, #4]
	lsl r1, r1, #8
	b _0224D354
_0224D32E:
	ldr r0, [sp, #4]
	ldr r5, [sp, #4]
	lsl r4, r0, #1
	ldrh r0, [r3, r4]
	lsl r5, r5, #0x1d
	and r0, r7
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	ldrh r2, [r3, r4]
	lsr r0, r0, #0x1f
	sub r5, r5, r0
	ror r5, r6
	add r0, r0, r5
	add r0, r0, r1
	orr r0, r2
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_0224D354:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0224D32E
_0224D35A:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x74]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _0224D3B8
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _0224D3B8
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_0224D39E:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224D3B8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D3BC: .word 0x022549C4
_0224D3C0: .word 0x022549CC
	thumb_func_end ov17_0224D240

	thumb_func_start ov17_0224D3C4
ov17_0224D3C4: ; 0x0224D3C4
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D3C4

	thumb_func_start ov17_0224D3D8
ov17_0224D3D8: ; 0x0224D3D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x17
	mov r1, #0x14
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224D414 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0224D418 ; =ov17_0224D41C
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D414: .word 0x00007530
_0224D418: .word ov17_0224D41C
	thumb_func_end ov17_0224D3D8

	thumb_func_start ov17_0224D41C
ov17_0224D41C: ; 0x0224D41C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #5
	bhi _0224D4C0
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224D434: ; jump table
	.short _0224D440 - _0224D434 - 2 ; case 0
	.short _0224D450 - _0224D434 - 2 ; case 1
	.short _0224D460 - _0224D434 - 2 ; case 2
	.short _0224D482 - _0224D434 - 2 ; case 3
	.short _0224D49C - _0224D434 - 2 ; case 4
	.short _0224D4B4 - _0224D434 - 2 ; case 5
_0224D440:
	ldr r0, _0224D4DC ; =0x0000046F
	mov r1, #0x1e
	bl sub_020055D0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D450:
	bl sub_02005684
	cmp r0, #0
	bne _0224D4D8
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D460:
	ldr r0, _0224D4E0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bl ov17_0224C84C
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x14
	bl ov17_0224ABDC
	ldr r0, _0224D4E4 ; =0x000006EC
	bl sub_02005748
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D482:
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0224D4D8
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D49C:
	ldr r0, [r4, #0]
	ldr r1, _0224D4E8 ; =0x00000123
	ldr r2, [r0, #0]
	ldrb r1, [r2, r1]
	add r2, r4, #0
	add r2, #0x11
	bl ov17_0224C6B0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D4B4:
	ldrb r1, [r4, #0x11]
	cmp r1, #1
	bne _0224D4D8
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D4C0:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224D4D8:
	pop {r3, r4, r5, pc}
	nop
_0224D4DC: .word 0x0000046F
_0224D4E0: .word 0x04000050
_0224D4E4: .word 0x000006EC
_0224D4E8: .word 0x00000123
	thumb_func_end ov17_0224D41C

	thumb_func_start ov17_0224D4EC
ov17_0224D4EC: ; 0x0224D4EC
	push {r3, lr}
	mov r1, #4
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D4EC

	thumb_func_start ov17_0224D500
ov17_0224D500: ; 0x0224D500
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	add r2, r3, #0
	ldr r0, _0224D53C ; =0x00001C0C
	mov r1, #1
	strb r1, [r5, r0]
	ldr r3, _0224D540 ; =0x00000172
	mov r1, #0
_0224D514:
	ldr r6, [r5, #0]
	ldrb r0, [r2, r1]
	add r6, r6, r1
	add r1, r1, #1
	strb r0, [r6, r3]
	cmp r1, #4
	blt _0224D514
	ldr r0, [r5, #0]
	bl sub_02094EDC
	cmp r0, #0
	bne _0224D538
	mov r2, #0
	add r0, r4, #0
	add r1, r7, #0
	add r3, r2, #0
	bl ov17_0224F26C
_0224D538:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D53C: .word 0x00001C0C
_0224D540: .word 0x00000172
	thumb_func_end ov17_0224D500

	thumb_func_start ov17_0224D544
ov17_0224D544: ; 0x0224D544
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D544

	thumb_func_start ov17_0224D558
ov17_0224D558: ; 0x0224D558
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	mov r1, #0x57
	add r7, r0, #0
	mov r0, #0x17
	lsl r1, r1, #2
	add r5, r2, #0
	str r3, [sp, #4]
	bl sub_02018144
	mov r2, #0x57
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	add r3, r4, #0
	add r3, #0x18
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	mov r2, #7
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	ldr r5, [sp, #4]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224D596:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224D596
	ldr r0, [r5, #0]
	ldr r2, _0224D654 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _0224D658 ; =ov17_0224D710
	add r1, r4, #0
	str r6, [r4, #0x54]
	bl sub_0200D9E8
	mov r7, #0
	add r5, r4, #0
_0224D5B2:
	ldr r1, [r6, #0]
	ldr r0, _0224D65C ; =0x00000127
	ldrb r0, [r1, r0]
	cmp r7, r0
	bge _0224D5C6
	add r0, r6, #0
	mov r1, #0
	bl ov17_0224D668
	b _0224D5CE
_0224D5C6:
	add r0, r6, #0
	mov r1, #1
	bl ov17_0224D668
_0224D5CE:
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _0224D5B2
	ldr r1, [r4, #0]
	ldr r2, _0224D660 ; =0x00000123
	ldr r3, [r1, #0]
	mov r0, #0
	ldrb r3, [r3, r2]
_0224D5E6:
	add r2, r4, r0
	ldrb r2, [r2, #0x1a]
	cmp r3, r2
	bne _0224D5F4
	ldr r2, _0224D664 ; =0x00000AE8
	strb r0, [r1, r2]
	b _0224D5FA
_0224D5F4:
	add r0, r0, #1
	cmp r0, #4
	blt _0224D5E6
_0224D5FA:
	add r0, r6, #0
	bl ov17_0224DF54
	ldr r1, [r6, #0]
	ldr r0, _0224D65C ; =0x00000127
	ldrb r5, [r1, r0]
	cmp r5, #4
	bge _0224D650
	ldr r0, [sp, #4]
	lsl r1, r5, #2
	add r7, r0, r1
	add r1, r4, #0
	mov r0, #0x3c
	add r1, #0x5c
	mul r0, r5
	add r0, r1, r0
	str r0, [sp, #8]
_0224D61C:
	mov r2, #0
_0224D61E:
	add r0, r4, r2
	ldrb r0, [r0, #0x1a]
	cmp r5, r0
	beq _0224D62C
	add r2, r2, #1
	cmp r2, #4
	blt _0224D61E
_0224D62C:
	ldr r0, [r6, #0]
	add r1, r0, r5
	mov r0, #0x43
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [r7, #0x14]
	bl ov17_0224E930
	ldr r0, [sp, #8]
	add r5, r5, #1
	add r0, #0x3c
	add r7, r7, #4
	str r0, [sp, #8]
	cmp r5, #4
	blt _0224D61C
_0224D650:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D654: .word 0x00007530
_0224D658: .word ov17_0224D710
_0224D65C: .word 0x00000127
_0224D660: .word 0x00000123
_0224D664: .word 0x00000AE8
	thumb_func_end ov17_0224D558

	thumb_func_start ov17_0224D668
ov17_0224D668: ; 0x0224D668
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x17
	mov r1, #0x14
	bl sub_02018144
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl sub_020C4CF4
	str r5, [r4, #4]
	ldr r0, _0224D694 ; =ov17_0224D6CC
	ldr r2, _0224D698 ; =0x00007594
	add r1, r4, #0
	strb r6, [r4, #0x12]
	bl sub_0200D9E8
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224D694: .word ov17_0224D6CC
_0224D698: .word 0x00007594
	thumb_func_end ov17_0224D668

	thumb_func_start ov17_0224D69C
ov17_0224D69C: ; 0x0224D69C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D69C

	thumb_func_start ov17_0224D6B0
ov17_0224D6B0: ; 0x0224D6B0
	ldrh r2, [r1]
	strh r2, [r0, #8]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0xa]
	ldrh r2, [r1, #4]
	strh r2, [r0, #0xc]
	ldrh r2, [r1, #6]
	strh r2, [r0, #0xe]
	ldrh r1, [r1, #8]
	strh r1, [r0, #0x10]
	mov r1, #1
	strb r1, [r0, #0x13]
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224D6B0

	thumb_func_start ov17_0224D6CC
ov17_0224D6CC: ; 0x0224D6CC
	push {r4, lr}
	add r4, r1, #0
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _0224D708
	ldr r0, [r4, #4]
	ldr r1, _0224D70C ; =0x00000171
	ldr r2, [r0, #0]
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _0224D6E8
	ldrb r1, [r4, #0x12]
	cmp r1, #1
	bne _0224D6F6
_0224D6E8:
	add r1, r4, #0
	add r1, #8
	bl ov17_0224B20C
	mov r0, #0
	strb r0, [r4, #0x13]
	pop {r4, pc}
_0224D6F6:
	add r1, r4, #0
	mov r0, #0x19
	add r1, #8
	bl sub_020360D0
	cmp r0, #1
	bne _0224D708
	mov r0, #0
	strb r0, [r4, #0x13]
_0224D708:
	pop {r4, pc}
	nop
_0224D70C: .word 0x00000171
	thumb_func_end ov17_0224D6CC

	thumb_func_start ov17_0224D710
ov17_0224D710: ; 0x0224D710
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r1, #0
	ldr r3, [r4, #0]
	str r0, [sp, #0x1c]
	ldr r1, [r3, #0]
	ldr r0, _0224DA50 ; =0x00000123
	ldrb r1, [r1, r0]
	ldrb r0, [r4, #0x18]
	cmp r1, r0
	beq _0224D72A
	mov r7, #1
	b _0224D72C
_0224D72A:
	mov r7, #0
_0224D72C:
	ldr r0, _0224DA54 ; =0x00001154
	ldr r2, [r4, #0x24]
	ldr r1, [r3, r0]
	add r0, #8
	ldr r0, [r3, r0]
	sub r0, r1, r0
	lsr r1, r2, #1
	str r0, [sp, #0x24]
	cmp r0, r1
	blo _0224D746
	mov r0, #1
	str r0, [sp, #0x20]
	b _0224D74A
_0224D746:
	mov r0, #0
	str r0, [sp, #0x20]
_0224D74A:
	ldrb r0, [r4, #0x10]
	cmp r0, #3
	bls _0224D752
	b _0224DBD0
_0224D752:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224D75E: ; jump table
	.short _0224D766 - _0224D75E - 2 ; case 0
	.short _0224D7E0 - _0224D75E - 2 ; case 1
	.short _0224D84C - _0224D75E - 2 ; case 2
	.short _0224DB4E - _0224D75E - 2 ; case 3
_0224D766:
	add r3, #0x14
	add r0, r3, #0
	mov r1, #0
	bl ov17_0224B068
	ldr r0, [r4, #0]
	bl ov17_0224BC4C
	add r3, r4, #0
	ldrb r2, [r4, #0x18]
	mov r1, #0x3c
	add r3, #0x5c
	mul r1, r2
	add r1, r3, r1
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x20]
	bl ov17_0224E990
	mov r0, #0x21
	ldr r2, [r4, #0]
	ldr r1, _0224DA58 ; =0x00000B1B
	lsl r0, r0, #4
	ldrb r1, [r2, r1]
	ldr r0, [r2, r0]
	bl ov17_0224C54C
	ldr r1, [r4, #0]
	ldr r0, _0224DA5C ; =0x000009B4
	add r0, r1, r0
	mov r1, #1
	bl ov17_0224C47C
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov17_0224C864
	ldr r0, [r4, #0]
	bl ov17_0224C9A4
	add r0, r4, #0
	add r0, #0x41
	ldrb r1, [r0]
	add r0, sp, #0x30
	cmp r7, #0
	strb r1, [r0, #4]
	ldr r0, [r4, #0]
	add r2, sp, #0x30
	bne _0224D7D0
	mov r1, #4
	bl ov17_0224C5A0
	b _0224D7D6
_0224D7D0:
	mov r1, #5
	bl ov17_0224C5A0
_0224D7D6:
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224D7E0:
	ldrb r2, [r4, #0x19]
	add r1, r4, #0
	add r0, r3, #0
	add r1, #0x3c
	bl ov17_0224C6A8
	mov r3, #0
	mov r2, #0
	sub r0, r2, r0
	sbc r3, r1
	bge _0224D7F8
	b _0224DBFE
_0224D7F8:
	ldr r0, [r4, #0]
	bl ov17_0224C640
	ldr r5, [r4, #0]
	add r1, r4, #0
	ldrb r2, [r4, #0x19]
	add r0, r5, #0
	add r1, #0x3c
	bl ov17_0224C6A8
	ldr r2, _0224DA54 ; =0x00001154
	add r6, r0, #0
	add r0, r1, #0
	add r1, r2, #4
	ldr r3, [r5, r2]
	ldr r1, [r5, r1]
	add r3, r3, r6
	adc r1, r0
	add r0, r2, #0
	add r0, #8
	add r2, #0xc
	str r3, [r5, r0]
	str r1, [r5, r2]
	cmp r7, #0
	bne _0224D838
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov17_0224C9F0
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
_0224D838:
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0]
	mov r2, #0
	bl ov17_0224CDC0
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224D84C:
	ldr r5, _0224DA58 ; =0x00000B1B
	add r0, r3, #0
	ldrb r3, [r3, r5]
	ldr r1, [sp, #0x24]
	add r0, #0x14
	bl ov17_0224A368
	mov r0, #0x21
	ldr r3, [r4, #0]
	ldr r1, _0224DA54 ; =0x00001154
	lsl r0, r0, #4
	ldr r2, [r3, r1]
	add r1, #8
	ldr r1, [r3, r1]
	ldr r0, [r3, r0]
	sub r1, r2, r1
	ldrb r3, [r3, r5]
	ldr r2, [r4, #0x24]
	bl ov17_0224C49C
	ldr r3, [r4, #0]
	ldr r1, _0224DA54 ; =0x00001154
	ldr r0, _0224DA5C ; =0x000009B4
	ldr r2, [r3, r1]
	add r1, #8
	ldr r1, [r3, r1]
	add r0, r3, r0
	sub r1, r2, r1
	ldrb r3, [r3, r5]
	ldr r2, [r4, #0x24]
	bl ov17_0224C434
	ldr r5, [r4, #0x24]
	ldr r0, [sp, #0x24]
	cmp r0, r5
	blo _0224D954
	ldrb r0, [r4, #0x16]
	ldr r1, _0224DA54 ; =0x00001154
	add r0, r0, #1
	strb r0, [r4, #0x16]
	ldr r5, [r4, #0]
	add r0, r5, r1
	ldmia r0!, {r2, r3}
	add r1, #8
	add r0, r5, r1
	stmia r0!, {r2, r3}
	mov r0, #0
	strb r0, [r4, #0x11]
	strb r0, [r4, #0x12]
	ldr r0, [r4, #0]
	bl ov17_0224DF54
	mov r0, #0
	strb r0, [r4, #0x17]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldr r0, _0224DA60 ; =0x00000127
	ldrb r6, [r1, r0]
	cmp r6, #4
	bge _0224D8DC
	add r1, r4, #0
	mov r0, #0x3c
	add r1, #0x5c
	mul r0, r6
	add r5, r1, r0
_0224D8CE:
	add r0, r5, #0
	bl ov17_0224E958
	add r6, r6, #1
	add r5, #0x3c
	cmp r6, #4
	blt _0224D8CE
_0224D8DC:
	ldr r0, [r4, #0]
	add r0, #0x14
	bl ov17_0224A580
	ldr r0, [r4, #0]
	bl ov17_0224BC4C
	add r3, r4, #0
	ldrb r2, [r4, #0x18]
	mov r1, #0x3c
	add r3, #0x5c
	mul r1, r2
	add r1, r3, r1
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x20]
	bl ov17_0224E990
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov17_0224C864
	add r0, r4, #0
	add r0, #0x40
	ldrb r1, [r4, #0x16]
	ldrb r0, [r0]
	cmp r1, r0
	ldr r0, [r4, #0]
	blo _0224D92E
	bl ov17_0224CE08
	ldr r0, [r4, #0]
	mov r1, #2
	add r0, #0x14
	bl ov17_0224B068
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224D92E:
	ldrb r1, [r4, #0x18]
	mov r2, #0
	bl ov17_0224CDC0
	cmp r7, #0
	bne _0224D940
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _0224D942
_0224D940:
	b _0224DBFE
_0224D942:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov17_0224C9F0
	ldrb r0, [r4, #0x11]
	add sp, #0x48
	add r0, r0, #1
	strb r0, [r4, #0x11]
	pop {r3, r4, r5, r6, r7, pc}
_0224D954:
	ldr r1, [r4, #0]
	ldr r0, _0224DA64 ; =0x00000AE8
	ldrb r6, [r1, r0]
	ldr r0, [sp, #0x24]
	lsr r1, r5, #1
	cmp r0, r1
	blo _0224D966
	mov r0, #1
	b _0224D968
_0224D966:
	mov r0, #0
_0224D968:
	cmp r7, #0
	bne _0224DA0A
	cmp r0, #0
	bne _0224D9A0
	add r0, r4, #0
	add r0, #0x41
	ldrb r1, [r4, #0x17]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _0224D9A0
	ldr r0, [r4, #0x20]
	ldr r1, _0224DA68 ; =0x00002710
	lsr r0, r0, #2
	bl sub_020E2178
	lsr r1, r5, #1
	sub r1, r1, r0
	ldr r0, [sp, #0x24]
	cmp r0, r1
	bhs _0224D9A0
	add r0, r4, #0
	mov r2, #0
	add r0, #0x54
	add r1, sp, #0x38
	add r3, r2, #0
	bl ov17_0224DC1C
	b _0224D9AE
_0224D9A0:
	add r0, r4, #0
	mov r2, #1
	add r0, #0x54
	add r1, sp, #0x38
	add r3, r2, #0
	bl ov17_0224DC1C
_0224D9AE:
	mov r0, #0
	ldr r1, [sp, #0x38]
	mvn r0, r0
	cmp r1, r0
	bne _0224D9BA
	b _0224DAD4
_0224D9BA:
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x44
	str r2, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	ldrb r2, [r4, #0x17]
	str r2, [sp, #0x10]
	add r2, r4, #0
	add r2, #0x41
	ldrb r2, [r2]
	str r2, [sp, #0x14]
	ldr r2, _0224DA58 ; =0x00000B1B
	ldrb r2, [r0, r2]
	str r2, [sp, #0x18]
	ldr r2, [r0, #0]
	ldr r0, _0224DA50 ; =0x00000123
	ldr r3, [r4, #0x20]
	ldrb r0, [r2, r0]
	ldr r2, [sp, #0x24]
	bl ov17_0224DE54
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldr r0, _0224DA50 ; =0x00000123
	ldrb r1, [r1, r0]
	add r0, #0x29
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x3c
	bl ov17_0224D6B0
	ldrb r0, [r4, #0x17]
	add r0, r0, #1
	strb r0, [r4, #0x17]
	b _0224DAD4
_0224DA0A:
	cmp r0, #1
	bne _0224DA6C
	add r0, r4, #0
	add r0, #0x41
	ldrb r1, [r4, #0x17]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _0224DA6C
	ldr r0, [r4, #0x20]
	ldr r1, _0224DA68 ; =0x00002710
	lsr r0, r0, #2
	bl sub_020E2178
	sub r1, r5, r0
	ldr r0, [sp, #0x24]
	cmp r0, r1
	bhs _0224DA6C
	add r0, r4, #0
	mov r2, #0
	add r0, #0x54
	add r1, sp, #0x38
	add r3, r2, #0
	bl ov17_0224DC1C
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0224DA7A
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov17_0224C9F0
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	b _0224DA7A
	; .align 2, 0
_0224DA50: .word 0x00000123
_0224DA54: .word 0x00001154
_0224DA58: .word 0x00000B1B
_0224DA5C: .word 0x000009B4
_0224DA60: .word 0x00000127
_0224DA64: .word 0x00000AE8
_0224DA68: .word 0x00002710
_0224DA6C:
	add r0, r4, #0
	mov r2, #1
	add r0, #0x54
	add r1, sp, #0x38
	add r3, r2, #0
	bl ov17_0224DC1C
_0224DA7A:
	mov r0, #0
	ldr r1, [sp, #0x38]
	mvn r0, r0
	cmp r1, r0
	beq _0224DAD4
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x44
	str r2, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	ldr r2, _0224DC04 ; =0x00001BB4
	add r2, r0, r2
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	ldrb r2, [r4, #0x17]
	str r2, [sp, #0x10]
	add r2, r4, #0
	add r2, #0x41
	ldrb r2, [r2]
	str r2, [sp, #0x14]
	ldr r2, _0224DC08 ; =0x00000B1B
	ldrb r2, [r0, r2]
	str r2, [sp, #0x18]
	ldr r2, [r0, #0]
	ldr r0, _0224DC0C ; =0x00000123
	ldr r3, [r4, #0x20]
	ldrb r0, [r2, r0]
	ldr r2, [sp, #0x24]
	bl ov17_0224DE54
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldr r0, _0224DC0C ; =0x00000123
	ldrb r1, [r1, r0]
	add r0, #0x29
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x3c
	bl ov17_0224D6B0
	ldrb r0, [r4, #0x17]
	add r0, r0, #1
	strb r0, [r4, #0x17]
_0224DAD4:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldr r0, _0224DC10 ; =0x00000127
	ldrb r7, [r1, r0]
	cmp r7, #4
	bge _0224DB20
	lsl r0, r7, #2
	add r5, r4, r0
	add r1, r4, #0
	mov r0, #0x3c
	add r1, #0x5c
	mul r0, r7
	add r6, r1, r0
	add r0, r4, #0
	str r0, [sp, #0x2c]
	add r0, #0x3c
	str r0, [sp, #0x2c]
_0224DAF6:
	ldr r0, [r4, #0x24]
	ldr r3, [sp, #0x24]
	str r0, [sp]
	ldr r0, [r4, #0x20]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #0]
	bl ov17_0224ED8C
	add r7, r7, #1
	add r5, r5, #4
	add r6, #0x3c
	cmp r7, #4
	blt _0224DAF6
_0224DB20:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0224DB3C
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _0224DB3C
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0]
	mov r2, #1
	bl ov17_0224CDC0
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0224DB3C:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0224DBFE
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x24]
	bl ov17_0224C8E8
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_0224DB4E:
	add r0, r4, #0
	add r0, #0x54
	add r1, sp, #0x38
	mov r2, #1
	mov r3, #0
	bl ov17_0224DC1C
	cmp r0, #1
	bne _0224DBFE
	ldr r0, [r4, #0]
	add r0, #0x14
	bl ov17_0224A580
	ldr r5, [r4, #0]
	ldr r3, _0224DC08 ; =0x00000B1B
	add r0, r5, #0
	ldrb r3, [r5, r3]
	ldr r2, [r4, #0x24]
	add r0, #0x14
	mov r1, #0
	bl ov17_0224A368
	mov r0, #0x21
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov17_0224C540
	ldr r1, [r4, #0]
	ldr r0, _0224DC14 ; =0x000009B4
	add r0, r1, r0
	mov r1, #0
	bl ov17_0224C47C
	ldr r0, [r4, #0]
	mov r1, #2
	add r0, #0x14
	bl ov17_0224B068
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov17_0224C864
	ldr r0, [r4, #0]
	bl ov17_0224C9D4
	ldr r1, [r4, #0]
	ldr r0, _0224DC18 ; =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249814
	cmp r0, #0
	beq _0224DBC6
	ldr r1, [r4, #0]
	ldr r0, _0224DC18 ; =0x0000114C
	mov r2, #6
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov17_0224A0E0
_0224DBC6:
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224DBD0:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	mov r7, #0x53
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_0224DBE4:
	ldr r0, [r5, r7]
	bl ov17_0224D69C
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0224DBE4
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #0x1c]
	bl sub_0200DA58
_0224DBFE:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DC04: .word 0x00001BB4
_0224DC08: .word 0x00000B1B
_0224DC0C: .word 0x00000123
_0224DC10: .word 0x00000127
_0224DC14: .word 0x000009B4
_0224DC18: .word 0x0000114C
	thumb_func_end ov17_0224D710

	thumb_func_start ov17_0224DC1C
ov17_0224DC1C: ; 0x0224DC1C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r1, #0
	sub r0, r4, #1
	add r6, r2, #0
	str r3, [sp]
	str r0, [r7, #0]
	cmp r6, #0
	bne _0224DC4E
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224DC4E
	sub r0, r0, #1
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _0224DC4E
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	add r2, r4, #0
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl ov17_0224A0E0
_0224DC4E:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0224DC5E
	cmp r0, #1
	beq _0224DC84
	cmp r0, #2
	beq _0224DCC6
	b _0224DCEC
_0224DC5E:
	cmp r6, #0
	bne _0224DC80
	ldr r0, [sp]
	cmp r0, #0
	bne _0224DC80
	mov r1, #0
	strb r1, [r5, #5]
	ldr r2, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	ldr r0, [r2, r0]
	add r2, r1, #0
	bl ov17_0224A0E0
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	b _0224DCEC
_0224DC80:
	mov r4, #1
	b _0224DCEC
_0224DC84:
	cmp r6, #1
	beq _0224DC8E
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224DC92
_0224DC8E:
	mov r4, #1
	b _0224DCEC
_0224DC92:
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249760
	mov r1, #0
	mvn r1, r1
	str r0, [r7, #0]
	cmp r0, r1
	beq _0224DCC2
	ldr r1, [r5, #0]
	ldr r0, _0224DD20 ; =0x00000B04
	ldr r0, [r1, r0]
	ldr r1, _0224DD24 ; =0x00002710
	bl sub_020E2178
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	sub r0, r0, #2
	strb r0, [r5, #5]
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	b _0224DCEC
_0224DCC2:
	mov r4, #1
	b _0224DCEC
_0224DCC6:
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249804
	cmp r0, #1
	bne _0224DCEC
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224DCE8
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	mov r2, #6
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov17_0224A0E0
_0224DCE8:
	mov r0, #1
	strb r0, [r5, #4]
_0224DCEC:
	ldr r0, [sp]
	cmp r0, #1
	bne _0224DD16
	cmp r4, #1
	bne _0224DD16
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249814
	cmp r0, #0
	beq _0224DD16
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	mov r2, #6
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov17_0224A0E0
	mov r0, #0
	strb r0, [r5, #4]
_0224DD16:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DD1C: .word 0x0000114C
_0224DD20: .word 0x00000B04
_0224DD24: .word 0x00002710
	thumb_func_end ov17_0224DC1C

	thumb_func_start ov17_0224DD28
ov17_0224DD28: ; 0x0224DD28
	push {r3, lr}
	cmp r0, #3
	bhi _0224DD52
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224DD3A: ; jump table
	.short _0224DD42 - _0224DD3A - 2 ; case 0
	.short _0224DD46 - _0224DD3A - 2 ; case 1
	.short _0224DD4A - _0224DD3A - 2 ; case 2
	.short _0224DD4E - _0224DD3A - 2 ; case 3
_0224DD42:
	mov r0, #1
	pop {r3, pc}
_0224DD46:
	mov r0, #2
	pop {r3, pc}
_0224DD4A:
	mov r0, #3
	pop {r3, pc}
_0224DD4E:
	mov r0, #4
	pop {r3, pc}
_0224DD52:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224DD28

	thumb_func_start ov17_0224DD5C
ov17_0224DD5C: ; 0x0224DD5C
	push {r3, lr}
	cmp r0, #4
	bhi _0224DD88
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224DD6E: ; jump table
	.short _0224DD88 - _0224DD6E - 2 ; case 0
	.short _0224DD78 - _0224DD6E - 2 ; case 1
	.short _0224DD7C - _0224DD6E - 2 ; case 2
	.short _0224DD80 - _0224DD6E - 2 ; case 3
	.short _0224DD84 - _0224DD6E - 2 ; case 4
_0224DD78:
	mov r0, #0
	pop {r3, pc}
_0224DD7C:
	mov r0, #1
	pop {r3, pc}
_0224DD80:
	mov r0, #2
	pop {r3, pc}
_0224DD84:
	mov r0, #3
	pop {r3, pc}
_0224DD88:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov17_0224DD5C

	thumb_func_start ov17_0224DD90
ov17_0224DD90: ; 0x0224DD90
	push {r3, r4}
	ldrb r4, [r1]
	cmp r0, r4
	bgt _0224DDA2
	mov r0, #0
	strb r0, [r2]
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDA2:
	ldrb r4, [r1, #1]
	cmp r0, r4
	bgt _0224DDB4
	mov r0, #0
	strb r0, [r2]
	mov r0, #1
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDB4:
	ldrb r4, [r1, #2]
	cmp r0, r4
	bgt _0224DDC6
	mov r0, #1
	strb r0, [r2]
	mov r0, #2
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDC6:
	ldrb r1, [r1, #3]
	cmp r0, r1
	bgt _0224DDD8
	mov r0, #1
	strb r0, [r2]
	mov r0, #3
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDD8:
	mov r0, #2
	strb r0, [r2]
	mov r0, #4
	strb r0, [r3]
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_0224DD90

	thumb_func_start ov17_0224DDE4
ov17_0224DDE4: ; 0x0224DDE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r6, r0, #0
	mov r0, #0
	ldr r2, _0224DE4C ; =0x00002710
	str r3, [sp]
	mul r6, r2
	lsr r1, r1, #1
	add r5, r0, #0
	add r4, r0, #0
	cmp r6, #0
	bls _0224DE0A
	bls _0224DE08
_0224DE00:
	add r4, r4, r1
	add r5, r5, #1
	cmp r4, r6
	blo _0224DE00
_0224DE08:
	sub r0, r4, r1
_0224DE0A:
	ldr r1, _0224DE50 ; =0x00001388
	add r0, r0, r1
	lsl r1, r1, #1
	bl sub_020E2178
	ldr r1, _0224DE50 ; =0x00001388
	str r0, [sp, #4]
	add r0, r4, r1
	lsl r1, r1, #1
	bl sub_020E2178
	add r4, r0, #0
	ldr r1, _0224DE4C ; =0x00002710
	add r0, r6, #0
	bl sub_020E2178
	ldr r1, [sp, #4]
	sub r1, r0, r1
	bpl _0224DE32
	neg r1, r1
_0224DE32:
	sub r0, r0, r4
	bpl _0224DE38
	neg r0, r0
_0224DE38:
	cmp r1, r0
	bhi _0224DE40
	sub r5, r5, #1
	b _0224DE42
_0224DE40:
	add r1, r0, #0
_0224DE42:
	ldr r0, [sp]
	str r1, [r7, #0]
	str r5, [r0, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DE4C: .word 0x00002710
_0224DE50: .word 0x00001388
	thumb_func_end ov17_0224DDE4

	thumb_func_start ov17_0224DE54
ov17_0224DE54: ; 0x0224DE54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r0, r1, #0
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x38]
	mov r7, #0
	bl ov17_0224DD28
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl ov17_0224DDE4
	cmp r6, #0
	beq _0224DEB6
	ldr r0, [sp, #0x48]
	mov r1, #4
	bl ov17_0223F0BC
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	ldr r2, [sp, #0x14]
	add r4, r7, #0
	sub r0, r2, r0
	add r1, r6, #0
	add r2, r6, #0
_0224DE94:
	ldrb r3, [r1, #8]
	lsl r3, r3, #0x1d
	lsr r3, r3, #0x1f
	cmp r3, #1
	bne _0224DEA4
	ldrb r3, [r2, #6]
	cmp r0, r3
	beq _0224DEAE
_0224DEA4:
	add r4, r4, #1
	add r1, #0xa
	add r2, #0xa
	cmp r4, #8
	blo _0224DE94
_0224DEAE:
	cmp r4, #8
	bne _0224DEB6
	mov r0, #0xff
	str r0, [sp, #0x18]
_0224DEB6:
	add r2, sp, #0x10
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x30]
	add r2, #1
	add r3, sp, #0x10
	bl ov17_0224DD90
	cmp r6, #0
	beq _0224DEF6
	cmp r4, #8
	beq _0224DEF6
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0224DED8
	cmp r0, #1
	bne _0224DEF6
_0224DED8:
	mov r0, #0xa
	mul r0, r4
	add r0, r6, r0
	ldrb r1, [r0, #3]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _0224DEF6
	mov r0, #0xff
	str r0, [sp, #0x18]
	mov r1, #4
	add r0, sp, #0x10
	strb r1, [r0]
	mov r1, #2
	strb r1, [r0, #1]
	mov r7, #1
_0224DEF6:
	ldr r0, [sp]
	strb r0, [r5, #2]
	ldr r0, [sp, #4]
	strh r0, [r5]
	ldr r0, [sp, #0xc]
	strb r0, [r5, #3]
	add r0, sp, #0x10
	ldrb r1, [r0, #1]
	strb r1, [r5, #4]
	ldrb r0, [r0]
	ldr r1, [sp, #0x40]
	strb r0, [r5, #5]
	ldr r0, [sp, #0x14]
	strb r0, [r5, #6]
	ldr r0, [sp, #0x3c]
	strb r0, [r5, #7]
	ldr r0, [sp, #0x44]
	sub r0, r0, #1
	cmp r1, r0
	blt _0224DF22
	mov r1, #1
	b _0224DF24
_0224DF22:
	mov r1, #0
_0224DF24:
	ldrb r2, [r5, #8]
	mov r0, #1
	bic r2, r0
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #1
	and r0, r1
	orr r0, r2
	strb r0, [r5, #8]
	ldrb r1, [r5, #8]
	mov r0, #2
	bic r1, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1e
	orr r0, r1
	strb r0, [r5, #8]
	ldrb r1, [r5, #8]
	mov r0, #4
	orr r0, r1
	strb r0, [r5, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224DE54

	thumb_func_start ov17_0224DF54
ov17_0224DF54: ; 0x0224DF54
	push {r4, r5}
	ldr r1, _0224DF7C ; =0x00000AD9
	mov r5, #0
	add r3, r5, #0
	add r2, r1, #4
_0224DF5E:
	add r4, r0, r5
	strb r3, [r4, r1]
	add r5, r5, #1
	strb r3, [r4, r2]
	cmp r5, #4
	blt _0224DF5E
	ldr r1, _0224DF80 ; =0x00000AE1
	strb r3, [r0, r1]
	add r2, r1, #1
	strb r3, [r0, r2]
	add r1, r1, #2
	strb r3, [r0, r1]
	pop {r4, r5}
	bx lr
	nop
_0224DF7C: .word 0x00000AD9
_0224DF80: .word 0x00000AE1
	thumb_func_end ov17_0224DF54

	thumb_func_start ov17_0224DF84
ov17_0224DF84: ; 0x0224DF84
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224DF84

	thumb_func_start ov17_0224DF88
ov17_0224DF88: ; 0x0224DF88
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224DF88

	thumb_func_start ov17_0224DF9C
ov17_0224DF9C: ; 0x0224DF9C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x17
	str r1, [sp]
	add r1, r0, #0
	add r1, #0xed
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r2, #0x41
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	add r3, r4, #0
	str r0, [r4, #0]
	ldrh r0, [r5]
	add r3, #0xc8
	mov r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224DFD8:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224DFD8
	ldr r0, [r6, #0]
	ldr r2, _0224DFF0 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _0224DFF4 ; =ov17_0224DFF8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DFF0: .word 0x00007530
_0224DFF4: .word ov17_0224DFF8
	thumb_func_end ov17_0224DF9C

	thumb_func_start ov17_0224DFF8
ov17_0224DFF8: ; 0x0224DFF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #5
	bls _0224E008
	b _0224E1B8
_0224E008:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224E014: ; jump table
	.short _0224E020 - _0224E014 - 2 ; case 0
	.short _0224E070 - _0224E014 - 2 ; case 1
	.short _0224E09E - _0224E014 - 2 ; case 2
	.short _0224E152 - _0224E014 - 2 ; case 3
	.short _0224E174 - _0224E014 - 2 ; case 4
	.short _0224E198 - _0224E014 - 2 ; case 5
_0224E020:
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov17_0224CDB4
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r2, _0224E1D4 ; =0x00001FE3
	sub r3, r1, #3
	bl sub_02003178
	add r6, r4, #0
	mov r5, #0
	mov r7, #0x10
	add r6, #0x11
_0224E04A:
	str r7, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r6, r5
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r2, _0224E1D8 ; =0x00007FFF
	ldr r3, _0224E1DC ; =0x0000254A
	add r1, r5, #0
	bl ov17_0224CEE4
	add r5, r5, #1
	cmp r5, #4
	blt _0224E04A
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E070:
	ldr r0, [r4, #0]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _0224E092
	mov r1, #0
_0224E080:
	add r0, r4, r1
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _0224E08E
	add r1, r1, #1
	cmp r1, #4
	blt _0224E080
_0224E08E:
	cmp r1, #4
	beq _0224E094
_0224E092:
	b _0224E1D0
_0224E094:
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E09E:
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x18
	mov r6, #0
	str r0, [sp, #0xc]
_0224E0A8:
	add r0, r4, r6
	add r0, #0xca
	ldrb r1, [r0]
	mov r2, #0x2c
	add r7, r1, #0
	mul r7, r2
	ldr r2, [r4, #0]
	lsl r0, r1, #2
	ldr r2, [r2, #0x14]
	add r5, r4, r7
	ldr r2, [r2, r0]
	str r2, [r5, #0x18]
	ldr r2, [r4, #0]
	add r0, r2, r0
	ldr r0, [r0, #0x5c]
	str r0, [r5, #0x1c]
	ldr r2, [r4, #0]
	lsl r0, r1, #4
	add r2, #0x18
	add r0, r2, r0
	str r0, [r5, #0x20]
	mov r0, #0xb1
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, _0224E1E0 ; =0x00002710
	bl sub_020E2178
	mov r1, #0x28
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x64
	bl sub_020E2178
	strh r0, [r5, #0x26]
	add r0, r5, #0
	add r0, #0x24
	strb r6, [r0]
	cmp r6, #0
	bne _0224E0FE
	add r5, #0x25
	mov r0, #3
	b _0224E102
_0224E0FE:
	sub r0, r6, #1
	add r5, #0x25
_0224E102:
	ldr r1, [sp, #0xc]
	strb r0, [r5]
	ldr r0, _0224E1E4 ; =ov17_0224E1F4
	ldr r2, _0224E1E8 ; =0x00009CA4
	add r1, r1, r7
	bl sub_0200D9E8
	add r6, r6, #1
	cmp r6, #4
	blt _0224E0A8
	add r0, r4, #0
	add r0, #0xf1
	ldrb r1, [r0]
	add r0, sp, #0x10
	strb r1, [r0, #4]
	ldr r0, [r4, #0]
	add r1, r4, #0
	add r1, #0xcb
	ldrb r3, [r1]
	ldr r2, [r0, #0]
	ldr r1, _0224E1EC ; =0x00000123
	ldrb r1, [r2, r1]
	cmp r3, r1
	add r2, sp, #0x10
	bne _0224E13C
	mov r1, #4
	bl ov17_0224C5A0
	b _0224E142
_0224E13C:
	mov r1, #5
	bl ov17_0224C5A0
_0224E142:
	ldr r0, _0224E1F0 ; =0x000006F7
	bl sub_02005748
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E152:
	mov r2, #0
_0224E154:
	add r0, r1, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224E166
	add r2, r2, #1
	add r1, #0x2c
	cmp r2, #4
	blt _0224E154
_0224E166:
	cmp r2, #4
	bne _0224E1D0
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E174:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r2, _0224E1D4 ; =0x00001FE3
	sub r3, r1, #3
	bl sub_02003178
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E198:
	ldr r0, [r4, #0]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _0224E1D0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov17_0224CDB4
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E1B8:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224E1D0:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E1D4: .word 0x00001FE3
_0224E1D8: .word 0x00007FFF
_0224E1DC: .word 0x0000254A
_0224E1E0: .word 0x00002710
_0224E1E4: .word ov17_0224E1F4
_0224E1E8: .word 0x00009CA4
_0224E1EC: .word 0x00000123
_0224E1F0: .word 0x000006F7
	thumb_func_end ov17_0224DFF8

	thumb_func_start ov17_0224E1F4
ov17_0224E1F4: ; 0x0224E1F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r1, #0x2a
	ldrb r1, [r1]
	cmp r1, #0
	beq _0224E208
	cmp r1, #1
	beq _0224E2C4
	b _0224E426
_0224E208:
	ldr r0, [r5, #8]
	ldr r0, [r0, #4]
	lsl r0, r0, #8
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	lsl r0, r0, #8
	str r0, [r5, #0x14]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0xc]
	lsl r0, r0, #8
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0xc]
	bl ov17_0224A0FC
	lsl r4, r0, #8
	ldrb r0, [r5, #0xc]
	bl ov17_0224A10C
	lsl r0, r0, #8
	str r0, [sp, #8]
	ldrb r0, [r5, #0xc]
	bl ov17_0224A120
	lsl r0, r0, #8
	str r0, [sp, #4]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0224E246
	cmp r0, #3
	bne _0224E278
_0224E246:
	cmp r0, #0
	bne _0224E24E
	ldr r0, _0224E434 ; =0xFFFFB000
	b _0224E252
_0224E24E:
	mov r0, #0x59
	lsl r0, r0, #0xa
_0224E252:
	ldrh r1, [r5, #0xe]
	sub r0, r0, r4
	lsr r1, r1, #1
	bl sub_020E1F6C
	str r0, [r5, #0x1c]
	ldrh r1, [r5, #0xe]
	mov r0, #0
	lsr r1, r1, #1
	bl sub_020E1F6C
	str r0, [r5, #0x20]
	ldrh r1, [r5, #0xe]
	mov r0, #0
	lsr r1, r1, #1
	bl sub_020E1F6C
	str r0, [r5, #0x24]
	b _0224E2B4
_0224E278:
	bl ov17_0224A0FC
	lsl r6, r0, #8
	ldrb r0, [r5, #0xd]
	bl ov17_0224A10C
	lsl r0, r0, #8
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A120
	lsl r7, r0, #8
	ldrh r1, [r5, #0xe]
	sub r0, r6, r4
	bl sub_020E1F6C
	str r0, [r5, #0x1c]
	ldr r1, [sp]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	ldrh r1, [r5, #0xe]
	bl sub_020E1F6C
	str r0, [r5, #0x20]
	ldr r0, [sp, #4]
	ldrh r1, [r5, #0xe]
	sub r0, r7, r0
	bl sub_020E1F6C
	str r0, [r5, #0x24]
_0224E2B4:
	add r0, r5, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r5, #0x2a
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, r7, pc}
_0224E2C4:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x1c]
	add r0, r1, r0
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x20]
	add r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x24]
	add r0, r1, r0
	str r0, [r5, #0x18]
	ldrh r0, [r5, #0x28]
	add r0, r0, #1
	strh r0, [r5, #0x28]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0224E2EC
	cmp r0, #3
	bne _0224E38E
_0224E2EC:
	ldrh r1, [r5, #0xe]
	ldrh r2, [r5, #0x28]
	lsr r1, r1, #1
	cmp r2, r1
	bne _0224E3A4
	cmp r0, #0
	bne _0224E314
	ldr r0, _0224E438 ; =0xFFFF9C00
	mov r1, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0]
	bl ov22_0225B07C
	ldr r0, [r5, #8]
	mov r1, #0x64
	ldr r0, [r0, #0]
	bl ov22_0225B1AC
	b _0224E334
_0224E314:
	bl ov17_0224A0FC
	add r0, #0x50
	lsl r0, r0, #8
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	mov r1, #0
	ldr r0, [r0, #0]
	bl ov22_0225B07C
	ldr r0, [r5, #8]
	mov r1, #0x63
	ldr r0, [r0, #0]
	mvn r1, r1
	bl ov22_0225B1AC
_0224E334:
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_020765B8
	add r4, r0, #0
	ldrb r0, [r5, #0xd]
	bl ov17_0224A10C
	add r0, r4, r0
	lsl r0, r0, #8
	str r0, [r5, #0x14]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A120
	lsl r0, r0, #8
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A0FC
	ldrh r2, [r5, #0xe]
	ldrh r1, [r5, #0x28]
	lsl r0, r0, #8
	ldr r7, [r5, #0x14]
	sub r1, r2, r1
	sub r4, r1, #1
	ldr r1, [r5, #0x10]
	ldr r6, [r5, #0x18]
	sub r0, r0, r1
	add r1, r4, #0
	bl sub_020E1F6C
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	sub r0, r7, r0
	bl sub_020E1F6C
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	sub r0, r6, r0
	bl sub_020E1F6C
	str r0, [r5, #0x24]
	b _0224E3A4
_0224E38E:
	bl ov17_0224A0FC
	ldr r1, [r5, #0x10]
	lsl r0, r0, #8
	cmp r1, r0
	bge _0224E3A4
	ldrb r0, [r5, #0xd]
	bl ov17_0224A0FC
	lsl r0, r0, #8
	str r0, [r5, #0x10]
_0224E3A4:
	ldrh r1, [r5, #0x28]
	ldrh r0, [r5, #0xe]
	cmp r1, r0
	blo _0224E3E4
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_020765B8
	add r4, r0, #0
	ldrb r0, [r5, #0xd]
	bl ov17_0224A0FC
	lsl r0, r0, #8
	str r0, [r5, #0x10]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A10C
	add r0, r4, r0
	lsl r0, r0, #8
	str r0, [r5, #0x14]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A120
	lsl r0, r0, #8
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x2a
	strb r1, [r0]
_0224E3E4:
	ldr r1, [r5, #0x10]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	ldr r0, [r5, #8]
	str r1, [r0, #4]
	ldr r1, [r5, #0x14]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	ldr r0, [r5, #8]
	str r1, [r0, #8]
	ldr r1, [r5, #0x18]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	ldr r0, [r5, #8]
	str r1, [r0, #0xc]
	ldr r2, [r5, #8]
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl ov22_0225B100
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	bl ov17_0224B09C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224E426:
	mov r1, #1
	add r5, #0x2b
	strb r1, [r5]
	bl sub_0200DA58
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E434: .word 0xFFFFB000
_0224E438: .word 0xFFFF9C00
	thumb_func_end ov17_0224E1F4

	thumb_func_start ov17_0224E43C
ov17_0224E43C: ; 0x0224E43C
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E43C

	thumb_func_start ov17_0224E450
ov17_0224E450: ; 0x0224E450
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x17
	mov r1, #0x50
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x50
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	add r3, r4, #0
	str r0, [r4, #0]
	ldrh r0, [r5]
	add r3, #0x10
	mov r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224E488:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224E488
	ldr r0, [r6, #0]
	ldr r2, _0224E4A0 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _0224E4A4 ; =ov17_0224E4A8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E4A0: .word 0x00007530
_0224E4A4: .word ov17_0224E4A8
	thumb_func_end ov17_0224E450

	thumb_func_start ov17_0224E4A8
ov17_0224E4A8: ; 0x0224E4A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224E4F8
	mov r4, #0
_0224E4BA:
	add r1, r5, r4
	ldrb r1, [r1, #0x12]
	ldr r0, [r5, #0]
	add r2, r4, #0
	bl ov17_0224BC68
	add r4, r4, #1
	cmp r4, #4
	blt _0224E4BA
	ldr r1, [r5, #0]
	ldr r0, _0224E514 ; =0x0000114C
	mov r3, #0
	ldr r0, [r1, r0]
	mov r1, #1
	add r2, r1, #0
	bl ov17_02249640
	ldr r1, [r5, #0]
	ldr r0, _0224E514 ; =0x0000114C
	mov r2, #6
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov17_0224A0E0
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	add r5, #0x4c
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_0224E4F8:
	mov r2, #0
	ldr r0, [r5, #0xc]
	add r1, r5, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_0224E514: .word 0x0000114C
	thumb_func_end ov17_0224E4A8

	thumb_func_start ov17_0224E518
ov17_0224E518: ; 0x0224E518
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E518

	thumb_func_start ov17_0224E52C
ov17_0224E52C: ; 0x0224E52C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x17
	mov r1, #0x50
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x50
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	add r3, r4, #0
	str r0, [r4, #0]
	ldrh r0, [r5]
	add r3, #0x10
	mov r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224E564:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224E564
	ldr r0, [r6, #0]
	ldr r2, _0224E57C ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _0224E580 ; =ov17_0224E584
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E57C: .word 0x00007530
_0224E580: .word ov17_0224E584
	thumb_func_end ov17_0224E52C

	thumb_func_start ov17_0224E584
ov17_0224E584: ; 0x0224E584
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224E59A
	cmp r0, #1
	beq _0224E5D2
	b _0224E60A
_0224E59A:
	ldr r0, [r5, #0]
	bl ov17_0224B5C8
	cmp r0, #0
	beq _0224E640
	mov r4, #0
	mov r6, #2
	mov r7, #5
_0224E5AA:
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl ov17_0224BD28
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r7, #0
	bl ov17_0224BD28
	add r4, r4, #1
	cmp r4, #4
	blt _0224E5AA
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	add r5, #0x4c
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0224E5D2:
	mov r6, #0
	add r4, r6, #0
_0224E5D6:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl ov17_0224BDF0
	cmp r0, #1
	bne _0224E5E4
	add r6, r6, #1
_0224E5E4:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl ov17_0224BE24
	add r4, r4, #1
	cmp r4, #4
	blt _0224E5D6
	cmp r6, #4
	blt _0224E640
	ldr r0, [r5, #0]
	bl ov17_0224BD00
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	add r5, #0x4c
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0224E60A:
	ldr r1, [r5, #0]
	ldr r0, _0224E644 ; =0x0000114C
	mov r2, #1
	ldr r0, [r1, r0]
	mov r1, #0
	add r3, r1, #0
	bl ov17_02249640
	ldr r1, [r5, #0]
	ldr r0, _0224E644 ; =0x0000114C
	ldr r0, [r1, r0]
	mov r1, #0
	add r2, r1, #0
	bl ov17_0224A0E0
	mov r2, #0
	ldr r0, [r5, #0xc]
	add r1, r5, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224E640:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E644: .word 0x0000114C
	thumb_func_end ov17_0224E584

	thumb_func_start ov17_0224E648
ov17_0224E648: ; 0x0224E648
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E648

	thumb_func_start ov17_0224E65C
ov17_0224E65C: ; 0x0224E65C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x17
	mov r1, #0x20
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	ldr r2, _0224E6C0 ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r6]
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #0x30]
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x34]
	strh r0, [r4, #0x18]
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	add r5, #0x37
	strb r0, [r4, #0x1c]
	ldrb r0, [r5]
	strb r0, [r4, #0x1b]
	ldr r0, _0224E6C4 ; =ov17_0224E6C8
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E6C0: .word 0x00007530
_0224E6C4: .word ov17_0224E6C8
	thumb_func_end ov17_0224E65C

	thumb_func_start ov17_0224E6C8
ov17_0224E6C8: ; 0x0224E6C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224E6DE
	cmp r0, #1
	beq _0224E716
	cmp r0, #2
	beq _0224E728
	b _0224E760
_0224E6DE:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _0224E710
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x78
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x74]
	bl sub_0201C3C0
	add r2, r4, #0
	ldrb r1, [r4, #0x1a]
	ldr r0, [r4, #0]
	add r2, #0x14
	bl ov17_0224C2CC
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E710:
	mov r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E716:
	ldr r0, [r4, #0]
	bl ov17_0224C300
	cmp r0, #0
	bne _0224E778
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E728:
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _0224E73C
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E73C:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x1b]
	cmp r1, r0
	blo _0224E778
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x78
	bl sub_0200E084
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x74]
	bl sub_0201C3C0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E760:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224E778:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E6C8

	thumb_func_start ov17_0224E77C
ov17_0224E77C: ; 0x0224E77C
	push {r3, lr}
	mov r1, #0x30
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E77C

	thumb_func_start ov17_0224E790
ov17_0224E790: ; 0x0224E790
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _0224E7B0 ; =0x00000AEC
	mov r5, #6
	add r6, r1, r0
_0224E79A:
	ldmia r3!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r5, r5, #1
	bne _0224E79A
	add r1, r2, #0
	mov r2, #0
	add r0, r4, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224E7B0: .word 0x00000AEC
	thumb_func_end ov17_0224E790

	thumb_func_start ov17_0224E7B4
ov17_0224E7B4: ; 0x0224E7B4
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E7B4

	thumb_func_start ov17_0224E7C8
ov17_0224E7C8: ; 0x0224E7C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	bl sub_0200569C
	ldrh r0, [r4, #0x24]
	bl sub_0200549C
	ldr r0, _0224E7FC ; =0x00001150
	mov r1, #1
	strb r1, [r5, r0]
	add r1, r0, #4
	add r0, #0xc
	add r1, r5, r1
	ldmia r1!, {r2, r3}
	add r0, r5, r0
	stmia r0!, {r2, r3}
	mov r2, #0
	add r0, r6, #0
	add r1, r7, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E7FC: .word 0x00001150
	thumb_func_end ov17_0224E7C8

	thumb_func_start ov17_0224E800
ov17_0224E800: ; 0x0224E800
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E800

	thumb_func_start ov17_0224E814
ov17_0224E814: ; 0x0224E814
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x17
	mov r1, #0x54
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x54
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	add r3, r4, #0
	str r0, [r4, #0]
	ldrh r0, [r5]
	add r3, #0x10
	mov r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224E84C:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224E84C
	ldr r0, [r6, #0]
	ldr r2, _0224E864 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _0224E868 ; =ov17_0224E86C
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E864: .word 0x00007530
_0224E868: .word ov17_0224E86C
	thumb_func_end ov17_0224E814

	thumb_func_start ov17_0224E86C
ov17_0224E86C: ; 0x0224E86C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0224E90A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224E888: ; jump table
	.short _0224E892 - _0224E888 - 2 ; case 0
	.short _0224E8A8 - _0224E888 - 2 ; case 1
	.short _0224E8C0 - _0224E888 - 2 ; case 2
	.short _0224E8D4 - _0224E888 - 2 ; case 3
	.short _0224E8F0 - _0224E888 - 2 ; case 4
_0224E892:
	ldr r1, [r4, #0]
	ldr r0, _0224E924 ; =0x00001150
	mov r2, #0
	strb r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r4, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8A8:
	ldrh r0, [r4, #0x34]
	bl sub_02005690
	cmp r0, #0
	bne _0224E922
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r4, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8C0:
	ldr r0, [r4, #0]
	bl ov17_0224CE28
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r4, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8D4:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	cmp r0, #0x3c
	bls _0224E922
	mov r0, #0
	str r0, [r4, #0x4c]
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r4, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8F0:
	ldr r0, _0224E928 ; =0x0000046F
	bl sub_0200549C
	ldr r0, _0224E92C ; =0x000006E5
	bl sub_02005748
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r4, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E90A:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224E922:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E924: .word 0x00001150
_0224E928: .word 0x0000046F
_0224E92C: .word 0x000006E5
	thumb_func_end ov17_0224E86C

	thumb_func_start ov17_0224E930
ov17_0224E930: ; 0x0224E930
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x3c
	add r7, r3, #0
	bl sub_020C4CF4
	add r0, r5, #0
	add r0, #0x37
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x38
	strb r6, [r0]
	str r7, [r5, #0x30]
	ldr r0, [sp, #0x18]
	add r5, #0x39
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224E930

	thumb_func_start ov17_0224E958
ov17_0224E958: ; 0x0224E958
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x30]
	mov r2, #0x3c
	str r1, [sp]
	add r1, r5, #0
	add r1, #0x37
	ldrb r7, [r1]
	add r1, r5, #0
	add r1, #0x38
	ldrb r6, [r1]
	add r1, r5, #0
	add r1, #0x39
	ldrb r4, [r1]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	str r0, [r5, #0x30]
	add r0, r5, #0
	add r0, #0x37
	strb r7, [r0]
	add r0, r5, #0
	add r0, #0x38
	strb r6, [r0]
	add r5, #0x39
	strb r4, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224E958

	thumb_func_start ov17_0224E990
ov17_0224E990: ; 0x0224E990
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r0, #0
	ldr r0, _0224EBCC ; =0x00000B1B
	add r4, r1, #0
	ldrb r0, [r7, r0]
	mov r1, #4
	str r3, [sp]
	bl ov17_0223F0BC
	str r0, [sp, #8]
	ldr r0, _0224EBCC ; =0x00000B1B
	ldrb r0, [r7, r0]
	cmp r0, #0
	bne _0224E9C0
	ldr r0, [sp]
	ldr r1, _0224EBD0 ; =0x00001388
	lsr r0, r0, #2
	add r0, r0, r1
	lsl r1, r1, #1
	bl sub_020E2178
	str r0, [sp, #0xc]
	b _0224E9D4
_0224E9C0:
	ldr r0, [sp]
	mov r1, #6
	bl sub_020E2178
	ldr r1, _0224EBD0 ; =0x00001388
	add r0, r0, r1
	lsl r1, r1, #1
	bl sub_020E2178
	str r0, [sp, #0xc]
_0224E9D4:
	mov r0, #0x12
	ldr r1, [r7, #0]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224E9E4
	cmp r0, #1
	bne _0224E9FA
_0224E9E4:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r1, r1, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #0x14]
	b _0224EA0E
_0224E9FA:
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x14]
	ldr r0, [sp]
	lsr r0, r0, #1
	str r0, [sp]
_0224EA0E:
	ldr r2, [sp, #8]
	mov r5, #0
	lsr r3, r2, #0x1f
	add r3, r2, r3
	add r1, r5, #0
	add r0, sp, #0x2c
	asr r2, r3, #1
	b _0224EA22
_0224EA1E:
	strb r1, [r0, r5]
	add r5, r5, #1
_0224EA22:
	cmp r5, r2
	blt _0224EA1E
	ldr r0, [sp, #0x14]
	mov r6, #0
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x30
	str r0, [sp, #0x18]
_0224EA36:
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x18]
	bl sub_02094EA0
	ldr r1, [sp, #0x14]
	bl sub_020E1F6C
	add r5, r1, #0
	beq _0224EA36
	add r0, sp, #0x2c
	ldrb r0, [r0, r5]
	cmp r0, #0
	bne _0224EA36
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0224EA90
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	bne _0224EA66
	sub r1, r5, #1
	add r0, sp, #0x2c
	ldrb r0, [r0, r1]
	cmp r0, #1
	beq _0224EA36
_0224EA66:
	sub r1, r5, #1
	add r0, sp, #0x2c
	ldrb r0, [r0, r1]
	cmp r0, #1
	beq _0224EA36
	add r1, r5, #1
	add r0, sp, #0x2c
	ldrb r0, [r0, r1]
	cmp r0, #1
	beq _0224EA36
	mov r0, #1
	tst r0, r5
	beq _0224EA90
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x18]
	bl sub_02094EA0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x80
	blt _0224EA36
_0224EA90:
	mov r1, #1
	add r0, sp, #0x2c
	strb r1, [r0, r5]
	ldr r0, _0224EBD4 ; =0x00000B1A
	add r6, r6, #1
	ldrb r0, [r7, r0]
	cmp r6, r0
	blt _0224EA36
	ldr r0, [sp, #8]
	mov r6, #0
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	add r5, r6, #0
	str r0, [sp, #0x20]
	b _0224EAD0
_0224EAB0:
	add r0, sp, #0x2c
	ldrb r0, [r0, r5]
	cmp r0, #1
	bne _0224EACE
	ldr r0, [sp]
	add r1, r5, #0
	mul r1, r0
	ldr r0, _0224EBD0 ; =0x00001388
	add r0, r1, r0
	ldr r1, _0224EBD8 ; =0x00002710
	bl sub_020E2178
	lsl r1, r6, #2
	str r0, [r4, r1]
	add r6, r6, #1
_0224EACE:
	add r5, r5, #1
_0224EAD0:
	ldr r0, [sp, #0x20]
	cmp r5, r0
	blt _0224EAB0
	mov r0, #0x12
	ldr r1, [r7, #0]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x39
	ldrb r1, [r1]
	bl ov17_0224EBE0
	add r6, r0, #0
	add r0, r4, #0
	str r0, [sp, #0x24]
	add r0, #0x30
	str r0, [sp, #0x24]
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r0, r0, #1
	add r0, r0, #1
	mov r5, #0
	str r0, [sp, #0x28]
	b _0224EB3A
_0224EB00:
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x24]
	bl sub_02094EA0
	add r1, r6, #2
	bl sub_020E1F6C
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	add r1, r0, r1
	ldr r0, [sp, #0x28]
	sub r3, r1, r0
	bpl _0224EB1C
	mov r3, #0
_0224EB1C:
	lsl r0, r5, #2
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xc]
	sub r2, r3, r1
	cmp r2, r0
	blo _0224EB2C
	add r0, r0, r1
	sub r3, r0, #1
_0224EB2C:
	lsl r0, r5, #2
	add r1, r4, r5
	str r3, [r4, r0]
	add r1, #0x28
	mov r0, #1
	strb r0, [r1]
	add r5, r5, #1
_0224EB3A:
	ldr r0, _0224EBD4 ; =0x00000B1A
	ldrb r0, [r7, r0]
	cmp r5, r0
	blt _0224EB00
	mov r0, #0x12
	ldr r1, [r7, #0]
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	ldr r0, _0224EBDC ; =0x02254A84
	ldrb r0, [r0, r1]
	add r1, r4, #0
	add r1, #0x30
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	bl sub_02094EA0
	add r6, r4, #0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0x20
	strb r1, [r0]
	mov r5, #1
	add r6, #0x30
	b _0224EBBE
_0224EB74:
	ldr r0, _0224EBD4 ; =0x00000B1A
	ldrb r0, [r7, r0]
	sub r0, r0, #1
	cmp r5, r0
	bge _0224EBA2
	ldr r0, [r4, #0x30]
	add r1, r6, #0
	bl sub_02094EA0
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r0, [sp, #4]
	cmp r0, r1
	ble _0224EBA2
	sub r0, r5, #1
	add r0, r4, r0
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r4, r5
	add r0, #0x20
	strb r1, [r0]
	b _0224EBBC
_0224EBA2:
	ldr r0, [r4, #0x30]
	add r1, r6, #0
	bl sub_02094EA0
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r1
	mov r0, #0x1e
	ror r2, r0
	add r0, r4, r5
	add r1, r1, r2
	add r0, #0x20
	strb r1, [r0]
_0224EBBC:
	add r5, r5, #1
_0224EBBE:
	ldr r0, _0224EBD4 ; =0x00000B1A
	ldrb r0, [r7, r0]
	cmp r5, r0
	blt _0224EB74
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0224EBCC: .word 0x00000B1B
_0224EBD0: .word 0x00001388
_0224EBD4: .word 0x00000B1A
_0224EBD8: .word 0x00002710
_0224EBDC: .word 0x02254A84
	thumb_func_end ov17_0224E990

	thumb_func_start ov17_0224EBE0
ov17_0224EBE0: ; 0x0224EBE0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blo _0224EBEE
	bl sub_02022974
_0224EBEE:
	ldr r0, _0224EC20 ; =0x02254A80
	cmp r4, #3
	ldrsb r0, [r0, r5]
	bhi _0224EC16
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224EC02: ; jump table
	.short _0224EC0A - _0224EC02 - 2 ; case 0
	.short _0224EC1C - _0224EC02 - 2 ; case 1
	.short _0224EC0E - _0224EC02 - 2 ; case 2
	.short _0224EC16 - _0224EC02 - 2 ; case 3
_0224EC0A:
	lsl r0, r0, #1
	pop {r3, r4, r5, pc}
_0224EC0E:
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	pop {r3, r4, r5, pc}
_0224EC16:
	mov r1, #3
	bl sub_020E1F6C
_0224EC1C:
	pop {r3, r4, r5, pc}
	nop
_0224EC20: .word 0x02254A80
	thumb_func_end ov17_0224EBE0

	thumb_func_start ov17_0224EC24
ov17_0224EC24: ; 0x0224EC24
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	str r2, [sp]
	ldr r4, [sp, #0x18]
	cmp r0, #4
	blo _0224EC3A
	bl sub_02022974
_0224EC3A:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0224EC5A
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0224EC52
	mov r1, #1
	add r0, r6, #0
	and r0, r1
	and r1, r4
	cmp r0, r1
_0224EC52:
	sub r0, r6, r4
	cmp r0, #4
	sub r0, r6, r4
	cmp r0, #8
_0224EC5A:
	ldr r1, _0224ECC0 ; =0x02254A80
	ldr r0, [sp]
	cmp r7, #3
	ldrsb r0, [r1, r0]
	bhi _0224EC9E
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224EC70: ; jump table
	.short _0224EC78 - _0224EC70 - 2 ; case 0
	.short _0224EC7C - _0224EC70 - 2 ; case 1
	.short _0224EC80 - _0224EC70 - 2 ; case 2
	.short _0224EC9E - _0224EC70 - 2 ; case 3
_0224EC78:
	lsl r0, r0, #1
	b _0224ECB6
_0224EC7C:
	lsl r0, r0, #1
	b _0224ECB6
_0224EC80:
	ldr r1, [sp, #0x20]
	cmp r1, #1
	bne _0224EC94
	cmp r5, #2
	beq _0224EC8E
	cmp r5, #3
	bne _0224EC94
_0224EC8E:
	lsl r1, r0, #1
	add r0, r0, r1
	b _0224ECB6
_0224EC94:
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r1, r1, #1
	add r0, r0, r1
	b _0224ECB6
_0224EC9E:
	ldr r1, [sp, #0x20]
	cmp r1, #1
	bne _0224ECB6
	cmp r5, #2
	beq _0224ECAC
	cmp r5, #3
	bne _0224ECB6
_0224ECAC:
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r1, r1, #1
	lsl r0, r0, #1
	add r0, r1, r0
_0224ECB6:
	cmp r0, #0
	bge _0224ECBC
	mov r0, #0
_0224ECBC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224ECC0: .word 0x02254A80
	thumb_func_end ov17_0224EC24

	thumb_func_start ov17_0224ECC4
ov17_0224ECC4: ; 0x0224ECC4
	push {r3, r4, r5, r6}
	add r6, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r5, r3, #0
	mov r4, #0
	ldr r2, [sp, #0x14]
	cmp r1, #3
	bhi _0224ED08
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224ECE2: ; jump table
	.short _0224ECEA - _0224ECE2 - 2 ; case 0
	.short _0224ECF2 - _0224ECE2 - 2 ; case 1
	.short _0224ECFA - _0224ECE2 - 2 ; case 2
	.short _0224ED02 - _0224ECE2 - 2 ; case 3
_0224ECEA:
	cmp r2, #1
	bne _0224ED08
	add r4, r4, #3
	b _0224ED08
_0224ECF2:
	cmp r2, #2
	bne _0224ED08
	add r4, r4, #3
	b _0224ED08
_0224ECFA:
	cmp r2, #4
	bne _0224ED08
	add r4, r4, #3
	b _0224ED08
_0224ED02:
	cmp r2, #3
	bne _0224ED08
	add r4, r4, #3
_0224ED08:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0224ED14
	cmp r2, r1
	beq _0224ED14
	add r4, #8
_0224ED14:
	mov r1, #0
	ldr r3, [sp, #0x10]
	mvn r1, r1
	cmp r3, r1
	beq _0224ED36
	mov r1, #1
	add r2, r5, #0
	and r2, r1
	and r1, r3
	cmp r2, r1
	beq _0224ED2C
	add r4, r4, #2
_0224ED2C:
	ldr r1, [sp, #0x10]
	sub r1, r5, r1
	cmp r1, #8
	blt _0224ED36
	add r4, r4, #5
_0224ED36:
	cmp r6, #3
	bhi _0224ED70
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224ED46: ; jump table
	.short _0224ED4E - _0224ED46 - 2 ; case 0
	.short _0224ED52 - _0224ED46 - 2 ; case 1
	.short _0224ED56 - _0224ED46 - 2 ; case 2
	.short _0224ED70 - _0224ED46 - 2 ; case 3
_0224ED4E:
	lsl r4, r4, #1
	b _0224ED84
_0224ED52:
	lsl r4, r4, #1
	b _0224ED84
_0224ED56:
	ldr r1, [sp, #0x1c]
	cmp r1, #1
	bne _0224ED66
	sub r0, r0, #2
	cmp r0, #1
	bhi _0224ED66
	lsl r4, r4, #1
	b _0224ED84
_0224ED66:
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r0, r0, #1
	add r4, r4, r0
	b _0224ED84
_0224ED70:
	ldr r1, [sp, #0x1c]
	cmp r1, #1
	bne _0224ED84
	sub r0, r0, #2
	cmp r0, #1
	bhi _0224ED84
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r0, r0, #1
	add r4, r4, r0
_0224ED84:
	add r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224ECC4

	thumb_func_start ov17_0224ED8C
ov17_0224ED8C: ; 0x0224ED8C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r4, #0x38
	ldrb r4, [r4]
	cmp r4, #0
	bne _0224EDBA
	cmp r0, #0
	bne _0224EDBA
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x18]
	bl ov17_0224EDE0
	add sp, #0xc
	pop {r3, r4, pc}
_0224EDBA:
	cmp r4, #0
	beq _0224EDDA
	cmp r0, #1
	bne _0224EDDA
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x18]
	bl ov17_0224EE90
_0224EDDA:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0224ED8C

	thumb_func_start ov17_0224EDE0
ov17_0224EDE0: ; 0x0224EDE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0x38
	ldrb r3, [r0]
	cmp r3, #0
	bne _0224EE82
	ldr r0, [sp, #0x44]
	add r1, #0x36
	ldrb r0, [r0, #5]
	ldrb r1, [r1]
	cmp r1, r0
	bhs _0224EE82
	mov r5, #0x34
	ldrsh r5, [r4, r5]
	cmp r5, #0
	ble _0224EE0E
	sub r0, r5, #1
	add sp, #0x28
	strh r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_0224EE0E:
	mov r5, #0
_0224EE10:
	add r6, r4, r5
	add r6, #0x28
	ldrb r6, [r6]
	cmp r6, #1
	beq _0224EE20
	add r5, r5, #1
	cmp r5, #8
	blt _0224EE10
_0224EE20:
	cmp r5, #8
	bge _0224EE82
	lsl r6, r5, #2
	ldr r6, [r4, r6]
	cmp r6, r2
	bhi _0224EE82
	ldr r6, [sp, #0x44]
	add r6, #8
	str r6, [sp]
	add r6, sp, #0x1c
	str r6, [sp, #4]
	mov r6, #0
	str r6, [sp, #8]
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, _0224EE88 ; =0x00000B1B
	add r1, r4, r5
	ldrb r0, [r7, r0]
	add r1, #0x20
	ldr r3, [sp, #0x40]
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	ldrb r1, [r1]
	bl ov17_0224DE54
	ldr r0, [sp, #0x48]
	add r1, sp, #0x1c
	bl ov17_0224D6B0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x36
	strb r1, [r0]
	ldr r0, [sp, #0x40]
	ldr r1, _0224EE8C ; =0x00002710
	bl sub_020E2178
	sub r0, r0, #2
	strh r0, [r4, #0x34]
_0224EE82:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224EE88: .word 0x00000B1B
_0224EE8C: .word 0x00002710
	thumb_func_end ov17_0224EDE0

	thumb_func_start ov17_0224EE90
ov17_0224EE90: ; 0x0224EE90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r6, r0, #0
	ldr r0, [sp, #0x64]
	add r5, r1, #0
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x60]
	str r2, [sp, #0x1c]
	lsr r0, r0, #1
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224EECC
	add r0, r5, #0
	add r0, #0x36
	ldrb r1, [r0]
	ldr r0, [sp, #0x64]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bhs _0224EECC
	mov r0, #0xa
	mul r0, r1
	ldr r2, _0224F068 ; =0x00001BBC
	add r4, r6, r0
	ldrb r2, [r4, r2]
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1f
	bne _0224EECE
_0224EECC:
	b _0224F062
_0224EECE:
	mov r7, #0x34
	ldrsh r2, [r5, r7]
	cmp r2, #0
	ble _0224EEDE
	sub r0, r2, #1
	add sp, #0x48
	strh r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_0224EEDE:
	ldr r2, _0224F068 ; =0x00001BBC
	sub r2, #8
	add r2, r6, r2
	add r4, r2, r0
	ldr r0, [sp, #0x1c]
	lsr r2, r3, #1
	sub r0, r0, r2
	str r0, [sp, #0x34]
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224EEF6
	b _0224EFF8
_0224EEF6:
	cmp r1, #0
	bne _0224EF02
	mov r0, #0
	sub r7, #0x35
	str r0, [sp, #0x20]
	b _0224EF18
_0224EF02:
	sub r1, r1, #1
	mov r0, #0xa
	mul r0, r1
	ldr r1, _0224F068 ; =0x00001BBC
	add r0, r6, r0
	sub r1, r1, #2
	ldrb r7, [r0, r1]
	ldr r1, _0224F068 ; =0x00001BBC
	sub r1, r1, #5
	ldrb r0, [r0, r1]
	str r0, [sp, #0x20]
_0224EF18:
	ldr r1, [r6, #0]
	ldr r0, _0224F06C ; =0x00000B1B
	str r7, [sp]
	ldrb r0, [r6, r0]
	mov r2, #0x12
	lsl r2, r2, #4
	str r0, [sp, #4]
	ldr r0, _0224F070 ; =0x00001C0E
	ldrb r0, [r6, r0]
	str r0, [sp, #8]
	ldrb r0, [r1, r2]
	sub r2, r2, #1
	ldrb r1, [r1, r2]
	add r2, r5, #0
	add r2, #0x39
	ldrb r2, [r2]
	ldrb r3, [r4, #6]
	bl ov17_0224EC24
	ldr r1, [r6, #0]
	str r0, [sp, #0x2c]
	str r7, [sp]
	ldrb r0, [r4, #3]
	mov r2, #0x12
	lsl r2, r2, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	ldr r0, _0224F070 ; =0x00001C0E
	ldrb r0, [r6, r0]
	str r0, [sp, #0xc]
	ldrb r0, [r1, r2]
	sub r2, r2, #1
	ldrb r1, [r1, r2]
	add r2, r5, #0
	add r2, #0x39
	ldrb r2, [r2]
	ldrb r3, [r4, #6]
	bl ov17_0224ECC4
	str r0, [sp, #0x28]
	ldrb r1, [r4, #6]
	ldr r0, [sp, #0x38]
	mul r0, r1
	ldr r1, _0224F074 ; =0x00001388
	add r0, r0, r1
	lsl r1, r1, #1
	bl sub_020E2178
	add r7, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x30]
	add r1, #0x30
	bl sub_02094EA0
	ldr r1, [sp, #0x2c]
	add r1, r1, #2
	bl sub_020E1F6C
	ldr r0, [sp, #0x2c]
	lsr r2, r0, #0x1f
	add r2, r0, r2
	asr r0, r2, #1
	add r0, r0, #1
	sub r0, r1, r0
	add r0, r0, r7
	str r0, [sp, #0x30]
	bpl _0224EFA4
	mov r0, #0
	str r0, [sp, #0x30]
_0224EFA4:
	add r1, r5, #0
	ldr r0, [r5, #0x30]
	add r1, #0x30
	bl sub_02094EA0
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r2, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r0, r2, r0
	cmp r1, r0
	bge _0224EFE4
	add r7, r5, #0
	add r7, #0x30
_0224EFC2:
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	bl sub_02094EA0
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r1
	mov r0, #0x1e
	ror r2, r0
	add r0, r1, r2
	str r0, [sp, #0x24]
	bl ov17_0224DD28
	ldrb r1, [r4, #3]
	cmp r1, r0
	beq _0224EFC2
	b _0224EFEC
_0224EFE4:
	ldrb r0, [r4, #3]
	bl ov17_0224DD5C
	str r0, [sp, #0x24]
_0224EFEC:
	ldr r0, [sp, #0x30]
	str r0, [r5, #0]
	ldr r0, [sp, #0x24]
	strb r0, [r5, #4]
	mov r0, #1
	strb r0, [r5, #5]
_0224EFF8:
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x34]
	cmp r1, r0
	bhi _0224F062
	ldr r0, [sp, #0x64]
	ldr r2, [sp, #0x1c]
	add r0, #8
	str r0, [sp]
	add r0, sp, #0x3c
	str r0, [sp, #4]
	ldr r0, _0224F078 ; =0x00001BB4
	ldr r3, [sp, #0x60]
	add r0, r6, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x64]
	ldrb r0, [r0, #5]
	str r0, [sp, #0x14]
	ldr r0, _0224F06C ; =0x00000B1B
	ldrb r0, [r6, r0]
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0x37
	ldrb r0, [r0]
	ldrb r1, [r5, #4]
	bl ov17_0224DE54
	ldr r0, [sp, #0x68]
	add r1, sp, #0x3c
	bl ov17_0224D6B0
	mov r0, #0
	strb r0, [r5, #5]
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x36
	strb r1, [r0]
	ldr r0, [sp, #0x60]
	ldr r1, _0224F07C ; =0x00002710
	bl sub_020E2178
	sub r0, r0, #2
	strh r0, [r5, #0x34]
_0224F062:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224F068: .word 0x00001BBC
_0224F06C: .word 0x00000B1B
_0224F070: .word 0x00001C0E
_0224F074: .word 0x00001388
_0224F078: .word 0x00001BB4
_0224F07C: .word 0x00002710
	thumb_func_end ov17_0224EE90

	thumb_func_start ov17_0224F080
ov17_0224F080: ; 0x0224F080
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #5
	blo _0224F08C
	bl sub_02022974
_0224F08C:
	ldr r0, _0224F094 ; =0x02254A90
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0224F094: .word 0x02254A90
	thumb_func_end ov17_0224F080

	thumb_func_start ov17_0224F098
ov17_0224F098: ; 0x0224F098
	mov r0, #0x31
	bx lr
	thumb_func_end ov17_0224F098

	thumb_func_start ov17_0224F09C
ov17_0224F09C: ; 0x0224F09C
	mov r0, #0x32
	bx lr
	thumb_func_end ov17_0224F09C

	thumb_func_start ov17_0224F0A0
ov17_0224F0A0: ; 0x0224F0A0
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #5
	blo _0224F0AC
	bl sub_02022974
_0224F0AC:
	ldr r0, _0224F0B4 ; =0x02254A88
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_0224F0B4: .word 0x02254A88
	thumb_func_end ov17_0224F0A0

	thumb_func_start ov17_0224F0B8
ov17_0224F0B8: ; 0x0224F0B8
	mov r0, #0x2e
	bx lr
	thumb_func_end ov17_0224F0B8

	thumb_func_start ov17_0224F0BC
ov17_0224F0BC: ; 0x0224F0BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov17_0224F0B8
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ov17_0224F080
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200CBDC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224F0BC

	thumb_func_start ov17_0224F0F0
ov17_0224F0F0: ; 0x0224F0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov17_0224F0B8
	str r0, [sp, #8]
	bl ov17_0224F098
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	str r6, [sp, #4]
	bl sub_0200CE0C
	bl ov17_0224F0B8
	add r6, r0, #0
	bl ov17_0224F09C
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	str r7, [sp, #4]
	bl sub_0200CE3C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224F0F0

	thumb_func_start ov17_0224F138
ov17_0224F138: ; 0x0224F138
	ldr r3, _0224F13C ; =sub_0200D070
	bx r3
	; .align 2, 0
_0224F13C: .word sub_0200D070
	thumb_func_end ov17_0224F138

	thumb_func_start ov17_0224F140
ov17_0224F140: ; 0x0224F140
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0200D090
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D0A0
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224F140

	thumb_func_start ov17_0224F154
ov17_0224F154: ; 0x0224F154
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r3, #0
	add r4, r0, #0
	add r7, r1, #0
	add r5, sp, #0
	mov r3, #6
_0224F162:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _0224F162
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	add r0, r2, #0
	bl ov17_0224F0A0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	bl sub_0200CE6C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224F154

	thumb_func_start ov17_0224F184
ov17_0224F184: ; 0x0224F184
	ldr r3, _0224F188 ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_0224F188: .word sub_0200D0F4
	thumb_func_end ov17_0224F184

	thumb_func_start ov17_0224F18C
ov17_0224F18C: ; 0x0224F18C
	push {r3, r4, r5, lr}
	ldr r2, _0224F1B0 ; =0x00000A18
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl sub_020C4CF4
	ldr r0, [r4, #0]
	str r0, [r5, #0]
	ldrh r0, [r4, #4]
	strh r0, [r5, #4]
	ldrb r0, [r4, #6]
	strb r0, [r5, #6]
	ldrb r0, [r4, #7]
	strb r0, [r5, #7]
	ldrb r0, [r4, #8]
	strb r0, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224F1B0: .word 0x00000A18
	thumb_func_end ov17_0224F18C

	thumb_func_start ov17_0224F1B4
ov17_0224F1B4: ; 0x0224F1B4
	push {r3, r4, r5, lr}
	ldr r5, [r0, #0xc]
	mov r4, #0
	mov r2, #1
_0224F1BC:
	add r3, r2, #0
	lsl r3, r4
	add r1, r5, #0
	tst r1, r3
	bne _0224F1D0
	ldr r1, [r0, #0xc]
	orr r1, r3
	str r1, [r0, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0224F1D0:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0224F1BC
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0224F1B4

	thumb_func_start ov17_0224F1E0
ov17_0224F1E0: ; 0x0224F1E0
	push {r3, r4}
	mov r2, #1
	add r3, r2, #0
	lsl r3, r1
	sub r1, r2, #2
	ldr r4, [r0, #0xc]
	eor r1, r3
	and r1, r4
	str r1, [r0, #0xc]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224F1E0

	thumb_func_start ov17_0224F1F8
ov17_0224F1F8: ; 0x0224F1F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x28]
	add r5, r0, #0
	mov r0, #2
	str r4, [sp, #4]
	add r4, #8
	lsl r0, r0, #8
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r4, r0
	bls _0224F216
	bl sub_02022974
_0224F216:
	add r0, r5, #0
	mov r2, #2
	add r0, #0x10
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020C4CF4
	add r0, sp, #8
	strb r6, [r0, #4]
	strh r7, [r0, #2]
	add r0, r5, #0
	bl ov17_0224F1B4
	add r1, sp, #8
	strb r0, [r1, #5]
	mov r0, #0
	strb r0, [r1, #6]
	strh r4, [r1]
	add r1, r5, #0
	add r0, sp, #8
	add r1, #0x10
	mov r2, #8
	bl sub_020C4B68
	add r1, r5, #0
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, #0x18
	bl sub_020C4DB0
	ldr r0, _0224F268 ; =0x00000A15
	mov r1, #0
	strb r1, [r5, r0]
	mov r1, #1
	sub r0, r0, #5
	strb r1, [r5, r0]
	add r0, sp, #8
	ldrb r0, [r0, #5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224F268: .word 0x00000A15
	thumb_func_end ov17_0224F1F8

	thumb_func_start ov17_0224F26C
ov17_0224F26C: ; 0x0224F26C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r3, #0
	mov r0, #2
	add r7, #8
	lsl r0, r0, #8
	add r4, r1, #0
	add r6, r2, #0
	str r3, [sp]
	cmp r7, r0
	bls _0224F288
	bl sub_02022974
_0224F288:
	add r0, r5, #0
	mov r2, #2
	add r0, #0x10
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020C4CF4
	ldrh r2, [r4]
	add r1, sp, #4
	add r0, sp, #4
	strh r2, [r1]
	ldrh r2, [r4, #2]
	strh r2, [r1, #2]
	ldrh r2, [r4, #4]
	strh r2, [r1, #4]
	ldrh r2, [r4, #6]
	strh r2, [r1, #6]
	mov r2, #0xfe
	strb r2, [r1, #4]
	mov r2, #1
	strb r2, [r1, #6]
	strh r7, [r1]
	add r1, r5, #0
	add r1, #0x10
	mov r2, #8
	bl sub_020C4B68
	cmp r6, #0
	beq _0224F2CE
	add r1, r5, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, #0x18
	bl sub_020C4DB0
_0224F2CE:
	mov r0, #0xa1
	mov r1, #1
	lsl r0, r0, #4
	strb r1, [r5, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224F26C

	thumb_func_start ov17_0224F2DC
ov17_0224F2DC: ; 0x0224F2DC
	push {r4, r5}
	lsl r5, r1, #9
	mov r1, #0x21
	lsl r1, r1, #4
	add r4, r0, r1
	add r1, #8
	add r4, r4, r5
	add r0, r0, r1
	str r4, [r2, #0]
	add r0, r0, r5
	str r0, [r3, #0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224F2DC

	thumb_func_start ov17_0224F2F8
ov17_0224F2F8: ; 0x0224F2F8
	mov r1, #0xa1
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	cmp r0, #1
	bne _0224F306
	mov r0, #0
	bx lr
_0224F306:
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224F2F8

	thumb_func_start ov17_0224F30C
ov17_0224F30C: ; 0x0224F30C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov17_0224F2F8
	cmp r0, #0
	bne _0224F322
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224F322:
	ldrh r0, [r5, #4]
	cmp r4, r0
	blt _0224F32C
	bl sub_02022974
_0224F32C:
	add r0, r5, #0
	add r1, r6, #0
	mov r6, #0xc
	ldr r5, [r5, #0]
	mul r6, r4
	add r2, r4, #0
	ldr r4, [r5, r6]
	add r3, r7, #0
	blx r4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224F30C

	thumb_func_start ov17_0224F344
ov17_0224F344: ; 0x0224F344
	cmp r0, r2
	beq _0224F354
	cmp r2, #0xff
	beq _0224F354
	cmp r2, #0xfe
	bne _0224F358
	cmp r1, r0
	bne _0224F358
_0224F354:
	mov r0, #1
	bx lr
_0224F358:
	mov r0, #0
	bx lr
	thumb_func_end ov17_0224F344

	thumb_func_start ov17_0224F35C
ov17_0224F35C: ; 0x0224F35C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa1
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224F36E
	mov r0, #0
	pop {r4, pc}
_0224F36E:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0224F3AC
	ldrb r1, [r4, #6]
	mov r2, #0x21
	lsl r2, r2, #4
	add r0, r4, #0
	add r3, r4, r2
	lsl r1, r1, #9
	add r0, #0x10
	add r1, r3, r1
	sub r2, #0x10
	bl sub_020C4DB0
	ldrb r0, [r4, #6]
	mov r2, #1
	add r1, r4, r0
	ldr r0, _0224F3CC ; =0x00000A11
	strb r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0
	lsl r2, r2, #9
	bl sub_020C4CF4
	mov r0, #0xa1
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0224F3AC:
	ldrh r2, [r4, #0x10]
	add r1, r4, #0
	mov r0, #0x18
	add r1, #0x10
	bl sub_0203597C
	cmp r0, #1
	bne _0224F3C8
	mov r0, #0xa1
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0224F3C8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0224F3CC: .word 0x00000A11
	thumb_func_end ov17_0224F35C

	thumb_func_start ov17_0224F3D0
ov17_0224F3D0: ; 0x0224F3D0
	mov r1, #0xa1
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov17_0224F3D0

	thumb_func_start ov17_0224F3D8
ov17_0224F3D8: ; 0x0224F3D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	add r4, r1, #0
	add r0, sp, #0x18
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	ldr r0, _0224F4B0 ; =0x00000A11
	mov r6, #0
_0224F3EE:
	add r1, r7, r6
	ldrb r1, [r1, r0]
	cmp r1, #1
	bne _0224F4A2
	add r0, r7, #0
	add r1, r6, #0
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov17_0224F2DC
	ldr r2, [sp, #0x14]
	ldrb r0, [r7, #6]
	ldrb r1, [r7, #8]
	ldrb r2, [r2, #4]
	bl ov17_0224F344
	cmp r0, #1
	bne _0224F484
	ldr r2, [sp, #0x14]
	ldrh r1, [r7, #4]
	ldrh r0, [r2, #2]
	str r0, [sp, #8]
	cmp r0, r1
	bhs _0224F484
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0224F43E
	add r1, r4, #0
	ldr r4, [r7, #0]
	ldr r5, [sp, #8]
	str r4, [sp, #4]
	mov r4, #0xc
	mul r4, r5
	ldr r5, [sp, #4]
	ldr r3, [sp, #0x10]
	add r4, r5, r4
	ldr r4, [r4, #4]
	add r0, r7, #0
	blx r4
	b _0224F484
_0224F43E:
	ldr r1, [sp, #8]
	mov r3, #0xc
	ldr r0, [r7, #0]
	mul r3, r1
	add r0, r0, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0224F472
	ldr r1, [sp, #0x10]
	lsl r0, r6, #2
	add r3, sp, #0x18
	str r1, [r3, r0]
	str r6, [sp]
	add r1, r4, #0
	ldr r4, [r7, #0]
	mov r5, #0xc
	mov ip, r4
	ldrh r4, [r2, #2]
	add r0, r7, #0
	mul r5, r4
	str r5, [sp, #0xc]
	ldr r4, [sp, #0xc]
	mov r5, ip
	add r4, r5, r4
	ldr r4, [r4, #8]
	blx r4
_0224F472:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	ldrb r1, [r1, #5]
	bl ov17_0224F1E0
	ldr r0, _0224F4B4 ; =0x00000A15
	ldrb r1, [r7, r0]
	add r1, r1, #1
	strb r1, [r7, r0]
_0224F484:
	ldr r0, _0224F4B0 ; =0x00000A11
	mov r1, #0
	add r2, r7, r6
	strb r1, [r2, r0]
	mov r2, #0x21
	lsl r2, r2, #4
	add r3, r7, r2
	lsl r0, r6, #9
	add r0, r3, r0
	sub r2, #0x10
	bl sub_020C4CF4
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224F4A2:
	add r6, r6, #1
	cmp r6, #4
	blt _0224F3EE
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224F4B0: .word 0x00000A11
_0224F4B4: .word 0x00000A15
	thumb_func_end ov17_0224F3D8

	thumb_func_start ov17_0224F4B8
ov17_0224F4B8: ; 0x0224F4B8
	cmp r2, r3
	beq _0224F4C0
	mov r0, #1
	bx lr
_0224F4C0:
	ldr r2, _0224F4D0 ; =0x00000A15
	ldrb r0, [r0, r2]
	cmp r0, r1
	blt _0224F4CC
	mov r0, #1
	bx lr
_0224F4CC:
	mov r0, #0
	bx lr
	; .align 2, 0
_0224F4D0: .word 0x00000A15
	thumb_func_end ov17_0224F4B8

	thumb_func_start ov17_0224F4D4
ov17_0224F4D4: ; 0x0224F4D4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _0224F718 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _0224F71C ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0224F720 ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1, #0]
	ldr r3, [r0, #0]
	add r1, #0x50
	and r2, r3
	str r2, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #7
	mov r0, #3
	mov r1, #0x18
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0x4a
	add r0, r4, #0
	lsl r1, r1, #6
	mov r2, #0x18
	bl sub_0200681C
	mov r2, #0x4a
	mov r1, #0
	lsl r2, r2, #6
	add r5, r0, #0
	bl sub_020C4CF4
	mov r0, #0x18
	bl ov17_0223F140
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_02006840
	mov r1, #0x5b
	str r0, [r5, #0]
	lsl r1, r1, #2
	str r5, [r0, r1]
	ldr r2, [r5, #0]
	mov r3, #3
	add r0, r1, #4
	strb r3, [r2, r0]
	ldr r0, [r5, #0]
	str r0, [r5, #0x10]
	add r0, r5, #0
	bl ov17_0224FE1C
	ldr r0, _0224F724 ; =0x0000127F
	mov r1, #0
	strb r1, [r5, r0]
	mov r0, #0x18
	bl sub_02002F38
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02003858
	add r0, r5, #0
	add r0, #0xd0
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x18
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0xd0
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r2, r1, #9
	mov r3, #0x18
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0xd0
	mov r2, #7
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x18
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0xd0
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x18
	bl sub_02002F70
	mov r0, #0x18
	bl sub_02018340
	str r0, [r5, #0x30]
	mov r0, #0x40
	mov r1, #0x18
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, [r5, #0x30]
	bl ov17_0224FB34
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r0, #2
	mov r1, #0x18
	bl sub_02002BB8
	mov r0, #0x18
	bl sub_0200C6E4
	ldr r1, _0224F728 ; =0x02254B0C
	ldr r2, _0224F72C ; =0x02254AC4
	mov r3, #0x20
	str r0, [r5, #0x28]
	bl sub_0200C73C
	ldr r1, _0224F730 ; =0x00100010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	ldr r0, [r5, #0x28]
	bl sub_0200C704
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r2, #0x80
	bl sub_0200C7C0
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _0224F734 ; =0x02254AD8
	bl sub_0200CB30
	mov r0, #0x18
	bl sub_0200762C
	str r0, [r5, #0x14]
	bl ov17_0224FDDC
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xda
	mov r3, #0x18
	bl sub_0200B144
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1, #0]
	mov r0, #0x18
	bl sub_0200B358
	add r1, r5, #0
	add r1, #0xc8
	str r0, [r1, #0]
	mov r0, #5
	lsl r0, r0, #6
	mov r1, #0x18
	bl sub_02023790
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1, #0]
	mov r0, #0xa
	mov r1, #0x18
	bl sub_02012744
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1, #0]
	add r0, r5, #0
	bl ov17_0224FE60
	add r0, r5, #0
	bl ov17_0224FE70
	add r0, r5, #0
	bl ov17_0224FCA0
	add r0, r5, #0
	bl ov17_0224FE48
	add r0, r5, #0
	bl ov17_0224FE58
	add r0, r5, #0
	bl ov17_02250744
	bl sub_02039734
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0x18
	str r1, [sp, #8]
	mov r1, #0x21
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, _0224F738 ; =ov17_0224FAFC
	ldr r2, _0224F73C ; =0x00013880
	add r1, r5, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	mov r0, #0x85
	mov r1, #1
	lsl r0, r0, #4
	strb r1, [r5, r0]
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r1, _0224F740 ; =0x0000046F
	mov r0, #6
	mov r2, #1
	bl sub_02004550
	ldr r1, [r5, #0]
	ldr r0, _0224F744 ; =0x00000171
	ldrb r0, [r1, r0]
	bl sub_020959F4
	ldr r0, _0224F748 ; =ov17_0224FA24
	add r1, r5, #0
	bl sub_02017798
	ldr r0, _0224F74C ; =ov17_0224FAE4
	add r1, r5, #0
	mov r2, #0xa
	bl sub_0200DA04
	str r0, [r5, #8]
	ldr r0, _0224F750 ; =0x000006E5
	bl sub_02005748
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224F718: .word 0xFFFFE0FF
_0224F71C: .word 0x04001000
_0224F720: .word 0xFFFF1FFF
_0224F724: .word 0x0000127F
_0224F728: .word 0x02254B0C
_0224F72C: .word 0x02254AC4
_0224F730: .word 0x00100010
_0224F734: .word 0x02254AD8
_0224F738: .word ov17_0224FAFC
_0224F73C: .word 0x00013880
_0224F740: .word 0x0000046F
_0224F744: .word 0x00000171
_0224F748: .word ov17_0224FA24
_0224F74C: .word ov17_0224FAE4
_0224F750: .word 0x000006E5
	thumb_func_end ov17_0224F4D4

	thumb_func_start ov17_0224F754
ov17_0224F754: ; 0x0224F754
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02094E98
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0224F776
	cmp r0, #1
	beq _0224F7A8
	cmp r0, #2
	beq _0224F830
	b _0224F83E
_0224F776:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0224F83E
	ldr r0, _0224F844 ; =ov17_0224FAAC
	add r1, r4, #0
	bl sub_020177BC
	mov r0, #0xff
	str r0, [sp]
	ldr r0, _0224F848 ; =0x0000D6D8
	add r1, r4, #0
	str r0, [sp, #4]
	add r1, #0xd0
	ldr r1, [r1, #0]
	ldr r2, _0224F84C ; =0x02254AB4
	mov r0, #0x18
	mov r3, #8
	bl ov17_0223F70C
	ldr r1, _0224F850 ; =0x00000848
	str r0, [r4, r1]
	mov r0, #1
	str r0, [r5, #0]
	b _0224F83E
_0224F7A8:
	ldr r0, [r4, #0]
	bl sub_02094EDC
	cmp r0, #1
	bne _0224F804
	ldr r2, _0224F854 ; =0x0000084E
	ldr r1, _0224F858 ; =0x00001274
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, r4, r1
	lsl r3, r2, #2
	ldr r2, _0224F85C ; =0x02254B54
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	beq _0224F7CC
	cmp r0, #2
	bne _0224F7EE
_0224F7CC:
	cmp r0, #1
	bne _0224F7D8
	ldr r0, _0224F854 ; =0x0000084E
	ldrh r1, [r4, r0]
	add r1, r1, #1
	b _0224F7DE
_0224F7D8:
	ldr r0, _0224F860 ; =0x00001276
	ldrh r1, [r4, r0]
	ldr r0, _0224F854 ; =0x0000084E
_0224F7DE:
	strh r1, [r4, r0]
	ldr r0, _0224F858 ; =0x00001274
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl sub_020C4CF4
	b _0224F804
_0224F7EE:
	cmp r0, #3
	bne _0224F804
	mov r0, #2
	str r0, [r5, #0]
	ldr r0, _0224F858 ; =0x00001274
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl sub_020C4CF4
	b _0224F83E
_0224F804:
	ldr r0, _0224F864 ; =0x0000085C
	add r0, r4, r0
	bl ov17_0224F35C
	ldr r0, _0224F864 ; =0x0000085C
	add r1, r4, #0
	add r0, r4, r0
	bl ov17_0224F3D8
	ldr r0, _0224F868 ; =0x0000127C
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0224F83E
	mov r1, #2
	sub r0, #8
	str r1, [r5, #0]
	add r0, r4, r0
	mov r1, #0
	mov r2, #8
	bl sub_020C4CF4
	b _0224F83E
_0224F830:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0224F83E
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224F83E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224F844: .word ov17_0224FAAC
_0224F848: .word 0x0000D6D8
_0224F84C: .word 0x02254AB4
_0224F850: .word 0x00000848
_0224F854: .word 0x0000084E
_0224F858: .word 0x00001274
_0224F85C: .word 0x02254B54
_0224F860: .word 0x00001276
_0224F864: .word 0x0000085C
_0224F868: .word 0x0000127C
	thumb_func_end ov17_0224F754

	thumb_func_start ov17_0224F86C
ov17_0224F86C: ; 0x0224F86C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_020141E4
	add r0, r4, #0
	bl ov17_0224FE50
	add r0, r4, #0
	bl ov17_0224FE5C
	add r0, r4, #0
	bl ov17_0224FE68
	add r0, r4, #0
	bl ov17_0224FEC8
	add r5, r4, #0
	mov r6, #0
	add r5, #0x34
_0224F898:
	add r0, r5, #0
	bl sub_0201A8FC
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #9
	blt _0224F898
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl sub_02019044
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x30]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl sub_0200D0B0
	ldr r0, [r4, #0x28]
	bl sub_0200C8D4
	bl sub_0201DC3C
	add r0, r4, #0
	add r0, #0x10
	bl ov17_022507C4
	ldr r0, [r4, #0x14]
	bl sub_02007B6C
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl sub_020127BC
	mov r0, #2
	bl sub_02002C60
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_02002F54
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_0200B3F0
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl sub_0200B190
	ldr r0, [r4, #0x30]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, [r4, #8]
	bl sub_0200DA58
	ldr r0, [r4, #0xc]
	bl ov17_0223F1E0
	bl sub_0201E530
	add r0, r7, #0
	bl sub_02006830
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0224FA00 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0224FA04 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #0x18
	bl sub_0201807C
	bl sub_02095A24
	mov r1, #5
	mov r2, #2
	ldr r0, _0224FA08 ; =0x00007FFF
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	bl sub_020C4AF0
	mov r2, #2
	ldr r0, _0224FA08 ; =0x00007FFF
	ldr r1, _0224FA0C ; =0x05000200
	lsl r2, r2, #8
	bl sub_020C4AF0
	mov r2, #2
	ldr r0, _0224FA08 ; =0x00007FFF
	ldr r1, _0224FA10 ; =0x05000400
	lsl r2, r2, #8
	bl sub_020C4AF0
	mov r2, #2
	ldr r0, _0224FA08 ; =0x00007FFF
	ldr r1, _0224FA14 ; =0x05000600
	lsl r2, r2, #8
	bl sub_020C4AF0
	bl sub_02039794
	ldr r0, _0224FA18 ; =0x0000000B
	bl sub_02006514
	ldr r0, _0224FA1C ; =0x0000000C
	bl sub_02006514
	ldr r0, _0224FA20 ; =0x00000016
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224FA00: .word 0xFFFF1FFF
_0224FA04: .word 0x04001000
_0224FA08: .word 0x00007FFF
_0224FA0C: .word 0x05000200
_0224FA10: .word 0x05000400
_0224FA14: .word 0x05000600
_0224FA18: .word 0x0000000B
_0224FA1C: .word 0x0000000C
_0224FA20: .word 0x00000016
	thumb_func_end ov17_0224F86C

	thumb_func_start ov17_0224FA24
ov17_0224FA24: ; 0x0224FA24
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _0224FA9C ; =0x00000854
	sub r1, r0, #2
	ldrb r3, [r4, r1]
	sub r1, r0, #3
	ldrb r1, [r4, r1]
	sub r6, r0, #1
	ldrb r6, [r4, r6]
	lsl r2, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r2, r1
	orr r2, r6
	ldrb r5, [r4, r0]
	ldr r6, _0224FAA0 ; =0x04000040
	strh r2, [r6]
	lsl r2, r3, #8
	and r2, r1
	orr r2, r5
	strh r2, [r6, #4]
	add r2, r0, #4
	ldrb r5, [r4, r2]
	add r2, r0, #2
	ldrb r3, [r4, r2]
	add r2, r0, #1
	ldrb r2, [r4, r2]
	add r0, r0, #3
	ldrb r0, [r4, r0]
	lsl r2, r2, #8
	and r2, r1
	orr r0, r2
	strh r0, [r6, #2]
	lsl r0, r3, #8
	and r0, r1
	orr r0, r5
	strh r0, [r6, #6]
	ldr r0, [r4, #0x14]
	bl sub_02008A94
	bl sub_0201DCAC
	bl sub_0200C800
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_02003694
	ldr r0, [r4, #0x30]
	bl sub_0201C2B8
	ldr r3, _0224FAA4 ; =0x027E0000
	ldr r1, _0224FAA8 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, r5, r6, pc}
	nop
_0224FA9C: .word 0x00000854
_0224FAA0: .word 0x04000040
_0224FAA4: .word 0x027E0000
_0224FAA8: .word 0x00003FF8
	thumb_func_end ov17_0224FA24

	thumb_func_start ov17_0224FAAC
ov17_0224FAAC: ; 0x0224FAAC
	push {r3, lr}
	ldr r1, _0224FADC ; =0x0000127F
	ldrb r0, [r0, r1]
	cmp r0, #1
	bne _0224FAD8
	ldr r0, _0224FAE0 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0x90
	blt _0224FACC
	cmp r0, #0x98
	bgt _0224FACC
	mov r0, #1
	mov r1, #0
	bl sub_02019060
	pop {r3, pc}
_0224FACC:
	cmp r0, #0x90
	bge _0224FAD8
	mov r0, #1
	mov r1, #2
	bl sub_02019060
_0224FAD8:
	pop {r3, pc}
	nop
_0224FADC: .word 0x0000127F
_0224FAE0: .word 0x04000006
	thumb_func_end ov17_0224FAAC

	thumb_func_start ov17_0224FAE4
ov17_0224FAE4: ; 0x0224FAE4
	push {r3, lr}
	ldr r0, _0224FAF8 ; =0x0000127F
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0224FAF6
	mov r0, #1
	mov r1, #2
	bl sub_02019060
_0224FAF6:
	pop {r3, pc}
	; .align 2, 0
_0224FAF8: .word 0x0000127F
	thumb_func_end ov17_0224FAE4

	thumb_func_start ov17_0224FAFC
ov17_0224FAFC: ; 0x0224FAFC
	push {r4, lr}
	mov r0, #0x85
	add r4, r1, #0
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0224FB24
	ldr r0, [r4, #0x14]
	bl sub_02007768
	bl ov11_0221F8F0
	ldr r0, [r4, #0x2c]
	bl sub_0200C7EC
	bl sub_0200C808
	ldr r0, _0224FB30 ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
_0224FB24:
	ldr r1, [r4, #0x30]
	mov r0, #0x18
	bl sub_02038A1C
	pop {r4, pc}
	nop
_0224FB30: .word 0x04000540
	thumb_func_end ov17_0224FAFC

	thumb_func_start ov17_0224FB34
ov17_0224FB34: ; 0x0224FB34
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	add r4, r0, #0
	bl sub_0201FF00
	ldr r5, _0224FC8C ; =0x02254B2C
	add r3, sp, #0x2c
	mov r2, #5
_0224FB44:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224FB44
	add r0, sp, #0x2c
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	ldr r5, _0224FC90 ; =0x02254AA4
	add r3, sp, #0x1c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0224FC94 ; =0x02254B80
	add r3, sp, #0x54
	mov r2, #0xa
_0224FBA4:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224FBA4
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x8c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r1, _0224FC98 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r5, _0224FC9C ; =0x02254AF0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #4
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224FC8C: .word 0x02254B2C
_0224FC90: .word 0x02254AA4
_0224FC94: .word 0x02254B80
_0224FC98: .word 0x04000008
_0224FC9C: .word 0x02254AF0
	thumb_func_end ov17_0224FB34

	thumb_func_start ov17_0224FCA0
ov17_0224FCA0: ; 0x0224FCA0
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x34
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	mov r2, #1
	add r1, r4, #0
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x8b
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r1, #0x44
	mov r3, #6
	bl sub_0201A7E8
	mov r0, #5
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xa3
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x54
	mov r2, #1
	mov r3, #6
	bl sub_0201A7E8
	mov r0, #9
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xbb
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x64
	mov r2, #1
	mov r3, #6
	bl sub_0201A7E8
	mov r1, #0xd
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0xd3
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x74
	mov r2, #1
	mov r3, #6
	bl sub_0201A7E8
	mov r2, #1
	add r1, r4, #0
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xeb
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r1, #0x84
	mov r3, #0x10
	bl sub_0201A7E8
	mov r0, #5
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	add r0, #0xf6
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x94
	mov r2, #1
	mov r3, #0x10
	bl sub_0201A7E8
	mov r0, #9
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224FDD4 ; =0x0000011B
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r1, #0xa4
	mov r2, #1
	mov r3, #0x10
	bl sub_0201A7E8
	mov r1, #0xd
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, _0224FDD8 ; =0x00000133
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r4, #0xb4
	add r1, r4, #0
	mov r2, #1
	mov r3, #0x10
	bl sub_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0224FDD4: .word 0x0000011B
_0224FDD8: .word 0x00000133
	thumb_func_end ov17_0224FCA0

	thumb_func_start ov17_0224FDDC
ov17_0224FDDC: ; 0x0224FDDC
	push {r3, r4, r5, lr}
	ldr r3, _0224FE14 ; =0x02100DEC
	mov r0, #2
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0224FE18 ; =0x02100DF4
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0x80
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _0224FE04
	bl sub_02022974
_0224FE04:
	cmp r5, #0
	bne _0224FE0C
	bl sub_02022974
_0224FE0C:
	bl sub_02014000
	pop {r3, r4, r5, pc}
	nop
_0224FE14: .word 0x02100DEC
_0224FE18: .word 0x02100DF4
	thumb_func_end ov17_0224FDDC

	thumb_func_start ov17_0224FE1C
ov17_0224FE1C: ; 0x0224FE1C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0224FE2A
	bl sub_02022974
_0224FE2A:
	mov r1, #0xf3
	mov r5, #0
	mov r0, #3
	lsl r1, r1, #2
_0224FE32:
	sub r3, r0, r5
	add r2, r4, r5
	add r5, r5, #1
	strb r3, [r2, r1]
	cmp r5, #4
	blt _0224FE32
	add r0, r4, #0
	bl ov17_02251D6C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0224FE1C

	thumb_func_start ov17_0224FE48
ov17_0224FE48: ; 0x0224FE48
	ldr r3, _0224FE4C ; =ov17_02250A88
	bx r3
	; .align 2, 0
_0224FE4C: .word ov17_02250A88
	thumb_func_end ov17_0224FE48

	thumb_func_start ov17_0224FE50
ov17_0224FE50: ; 0x0224FE50
	ldr r3, _0224FE54 ; =ov17_02250D8C
	bx r3
	; .align 2, 0
_0224FE54: .word ov17_02250D8C
	thumb_func_end ov17_0224FE50

	thumb_func_start ov17_0224FE58
ov17_0224FE58: ; 0x0224FE58
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224FE58

	thumb_func_start ov17_0224FE5C
ov17_0224FE5C: ; 0x0224FE5C
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224FE5C

	thumb_func_start ov17_0224FE60
ov17_0224FE60: ; 0x0224FE60
	ldr r3, _0224FE64 ; =ov17_022509AC
	bx r3
	; .align 2, 0
_0224FE64: .word ov17_022509AC
	thumb_func_end ov17_0224FE60

	thumb_func_start ov17_0224FE68
ov17_0224FE68: ; 0x0224FE68
	ldr r3, _0224FE6C ; =ov17_02250D24
	bx r3
	; .align 2, 0
_0224FE6C: .word ov17_02250D24
	thumb_func_end ov17_0224FE68

	thumb_func_start ov17_0224FE70
ov17_0224FE70: ; 0x0224FE70
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #0x2d
	mov r1, #0x13
	mov r3, #4
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #0x2d
	mov r1, #0x14
	mov r3, #4
	bl sub_02006E60
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r4, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x2d
	mov r2, #0x22
	mov r3, #0x18
	bl sub_02003050
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0224FE70

	thumb_func_start ov17_0224FEC8
ov17_0224FEC8: ; 0x0224FEC8
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224FEC8

	thumb_func_start ov17_0224FECC
ov17_0224FECC: ; 0x0224FECC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldrh r1, [r7]
	add r4, r0, #0
	cmp r1, #0
	beq _0224FEE2
	cmp r1, #1
	beq _0224FF70
	cmp r1, #2
	beq _0224FFA8
	b _0224FFCA
_0224FEE2:
	bl ov17_02251A1C
	mov r0, #0x13
	ldr r2, [r4, #0]
	mov r5, #0
	lsl r0, r0, #4
_0224FEEE:
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _0224FEFC
	add r5, r5, #1
	add r2, #0xc
	cmp r5, #4
	blt _0224FEEE
_0224FEFC:
	cmp r5, #4
	bne _0224FF04
	bl sub_02022974
_0224FF04:
	ldr r0, _0224FFD4 ; =0x00000438
	ldr r1, _0224FFD8 ; =0x00000439
	strb r5, [r4, r0]
	mov r5, #0
	sub r0, #0x67
_0224FF0E:
	add r3, r4, r5
	ldrb r2, [r3, r0]
	add r5, r5, #1
	cmp r5, #4
	strb r2, [r3, r1]
	blt _0224FF0E
	mov r3, #0
	add r1, r3, #0
	add r2, r4, #0
_0224FF20:
	ldr r0, [r4, #0]
	mov r5, #0x4a
	add r0, r0, r1
	lsl r5, r5, #2
	ldrh r6, [r0, r5]
	mov r5, #0xe7
	lsl r5, r5, #2
	strh r6, [r2, r5]
	ldr r5, _0224FFDC ; =0x0000012A
	add r3, r3, #1
	ldrh r6, [r0, r5]
	ldr r5, _0224FFE0 ; =0x0000039E
	add r1, #0xc
	strh r6, [r2, r5]
	mov r5, #0x4b
	lsl r5, r5, #2
	ldrh r6, [r0, r5]
	mov r5, #0x3a
	lsl r5, r5, #4
	strh r6, [r2, r5]
	ldr r5, _0224FFE4 ; =0x0000012E
	ldrh r6, [r0, r5]
	ldr r5, _0224FFE8 ; =0x000003A2
	strh r6, [r2, r5]
	mov r5, #0x13
	lsl r5, r5, #4
	ldrh r6, [r0, r5]
	mov r5, #0xe9
	lsl r5, r5, #2
	strh r6, [r2, r5]
	ldr r5, _0224FFEC ; =0x00000132
	ldrh r5, [r0, r5]
	ldr r0, _0224FFF0 ; =0x000003A6
	strh r5, [r2, r0]
	add r2, #0xc
	cmp r3, #4
	blt _0224FF20
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0224FF70:
	ldr r1, [r4, #0]
	ldr r0, _0224FFF4 ; =0x00000177
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224FF86
	ldr r0, [r7, #4]
	cmp r0, #0x78
	bge _0224FF86
	add r0, r0, #1
	str r0, [r7, #4]
	b _0224FFCE
_0224FF86:
	ldr r0, _0224FFF8 ; =0x0000085C
	mov r3, #0xe7
	lsl r3, r3, #2
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #1
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0224FFCE
	mov r0, #0
	str r0, [r7, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0224FFCE
_0224FFA8:
	ldr r0, _0224FFF8 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _0224FFFC ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0224FFCE
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	b _0224FFCE
_0224FFCA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224FFCE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224FFD4: .word 0x00000438
_0224FFD8: .word 0x00000439
_0224FFDC: .word 0x0000012A
_0224FFE0: .word 0x0000039E
_0224FFE4: .word 0x0000012E
_0224FFE8: .word 0x000003A2
_0224FFEC: .word 0x00000132
_0224FFF0: .word 0x000003A6
_0224FFF4: .word 0x00000177
_0224FFF8: .word 0x0000085C
_0224FFFC: .word 0x00000127
	thumb_func_end ov17_0224FECC

	thumb_func_start ov17_02250000
ov17_02250000: ; 0x02250000
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _02250012
	cmp r0, #1
	beq _0225004C
	b _0225006E
_02250012:
	ldr r3, _02250078 ; =0x00000445
	mov r1, #0
	strb r1, [r5, r3]
	add r0, r3, #2
	strb r1, [r5, r0]
	add r0, r3, #1
	strb r1, [r5, r0]
	add r0, r3, #0
	sub r0, #0x79
	ldrb r1, [r5, r0]
	sub r0, r3, #7
	mov r2, #5
	strb r1, [r5, r0]
	sub r0, r3, #1
	mov r1, #1
	strb r1, [r5, r0]
	ldr r0, _0225007C ; =0x0000085C
	sub r3, #0xf
	add r0, r5, r0
	add r1, r5, #0
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250072
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250072
_0225004C:
	ldr r0, _0225007C ; =0x0000085C
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _02250080 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250072
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250072
_0225006E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250072:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02250078: .word 0x00000445
_0225007C: .word 0x0000085C
_02250080: .word 0x00000127
	thumb_func_end ov17_02250000

	thumb_func_start ov17_02250084
ov17_02250084: ; 0x02250084
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _02250096
	cmp r0, #1
	beq _022500B4
	b _022500D6
_02250096:
	ldr r0, _022500E0 ; =0x0000085C
	mov r3, #0xe7
	lsl r3, r3, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #6
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _022500DA
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _022500DA
_022500B4:
	ldr r0, _022500E0 ; =0x0000085C
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _022500E4 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _022500DA
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _022500DA
_022500D6:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022500DA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022500E0: .word 0x0000085C
_022500E4: .word 0x00000127
	thumb_func_end ov17_02250084

	thumb_func_start ov17_022500E8
ov17_022500E8: ; 0x022500E8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _022500FE
	cmp r0, #1
	beq _02250130
	cmp r0, #2
	beq _02250152
	b _02250164
_022500FE:
	ldr r3, _0225016C ; =0x00000445
	mov r0, #0
	strb r0, [r5, r3]
	mov r1, #1
	add r0, r3, #2
	strb r1, [r5, r0]
	add r0, r3, #1
	strb r1, [r5, r0]
	sub r0, r3, #1
	mov r1, #6
	strb r1, [r5, r0]
	ldr r0, _02250170 ; =0x0000085C
	sub r3, #0xf
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #5
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250168
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250168
_02250130:
	ldr r0, _02250170 ; =0x0000085C
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _02250174 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250168
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250168
_02250152:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	ble _02250168
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250168
_02250164:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250168:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225016C: .word 0x00000445
_02250170: .word 0x0000085C
_02250174: .word 0x00000127
	thumb_func_end ov17_022500E8

	thumb_func_start ov17_02250178
ov17_02250178: ; 0x02250178
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #4
	bhi _02250268
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250190: ; jump table
	.short _0225019A - _02250190 - 2 ; case 0
	.short _022501F0 - _02250190 - 2 ; case 1
	.short _02250212 - _02250190 - 2 ; case 2
	.short _02250234 - _02250190 - 2 ; case 3
	.short _02250256 - _02250190 - 2 ; case 4
_0225019A:
	ldr r1, [r3, #0]
	ldr r0, _02250270 ; =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #4
	bhi _022501BA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022501B0: ; jump table
	.short _022501BE - _022501B0 - 2 ; case 0
	.short _022501BE - _022501B0 - 2 ; case 1
	.short _022501BE - _022501B0 - 2 ; case 2
	.short _022501BE - _022501B0 - 2 ; case 3
	.short _022501BE - _022501B0 - 2 ; case 4
_022501BA:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022501BE:
	ldr r5, _02250274 ; =0x00000445
	mov r0, #0
	strb r0, [r3, r5]
	mov r1, #1
	add r0, r5, #2
	strb r1, [r3, r0]
	add r0, r5, #1
	strb r1, [r3, r0]
	sub r0, r5, #1
	mov r1, #2
	strb r1, [r3, r0]
	ldr r0, _02250278 ; =0x0000085C
	sub r5, #0xf
	add r0, r3, r0
	add r1, r3, #0
	mov r2, #5
	add r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225026C
_022501F0:
	ldr r0, _02250278 ; =0x0000085C
	ldr r5, [r3, #0]
	add r0, r3, r0
	ldr r3, _0225027C ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r5, r3]
	sub r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250212:
	ldr r5, _02250280 ; =0x0000043D
	mov r0, #0
	strb r0, [r3, r5]
	ldr r0, _02250278 ; =0x0000085C
	sub r5, r5, #7
	add r0, r3, r0
	add r1, r3, #0
	mov r2, #9
	add r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250234:
	ldr r0, _02250278 ; =0x0000085C
	ldr r5, [r3, #0]
	add r0, r3, r0
	ldr r3, _0225027C ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r5, r3]
	sub r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250256:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	ble _0225026C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250268:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225026C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250270: .word 0x00000121
_02250274: .word 0x00000445
_02250278: .word 0x0000085C
_0225027C: .word 0x00000127
_02250280: .word 0x0000043D
	thumb_func_end ov17_02250178

	thumb_func_start ov17_02250284
ov17_02250284: ; 0x02250284
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #4
	bhi _02250390
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225029C: ; jump table
	.short _022502A6 - _0225029C - 2 ; case 0
	.short _02250318 - _0225029C - 2 ; case 1
	.short _0225033A - _0225029C - 2 ; case 2
	.short _0225035C - _0225029C - 2 ; case 3
	.short _0225037E - _0225029C - 2 ; case 4
_022502A6:
	ldr r1, [r4, #0]
	ldr r0, _02250398 ; =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #6
	bhi _022502CA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022502BC: ; jump table
	.short _022502CA - _022502BC - 2 ; case 0
	.short _022502CE - _022502BC - 2 ; case 1
	.short _022502CE - _022502BC - 2 ; case 2
	.short _022502CA - _022502BC - 2 ; case 3
	.short _022502CA - _022502BC - 2 ; case 4
	.short _022502CE - _022502BC - 2 ; case 5
	.short _022502CE - _022502BC - 2 ; case 6
_022502CA:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022502CE:
	ldr r1, _0225039C ; =0x00000445
	mov r0, #0
	strb r0, [r4, r1]
	mov r2, #1
	add r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #1
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x79
	ldrb r2, [r4, r0]
	sub r0, r1, #7
	sub r1, #0x79
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	bl sub_020958FC
	ldr r3, _022503A0 ; =0x00000442
	add r0, r0, #1
	strb r0, [r4, r3]
	add r0, r3, #2
	mov r1, #3
	strb r1, [r4, r0]
	ldr r0, _022503A4 ; =0x0000085C
	sub r3, #0xc
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #5
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250394
_02250318:
	ldr r0, _022503A4 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _022503A8 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250394
_0225033A:
	ldr r3, _022503AC ; =0x0000043D
	mov r0, #1
	strb r0, [r4, r3]
	ldr r0, _022503A4 ; =0x0000085C
	sub r3, r3, #7
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #9
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250394
_0225035C:
	ldr r0, _022503A4 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _022503A8 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250394
_0225037E:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #0x5a
	ble _02250394
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250394
_02250390:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250394:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250398: .word 0x00000121
_0225039C: .word 0x00000445
_022503A0: .word 0x00000442
_022503A4: .word 0x0000085C
_022503A8: .word 0x00000127
_022503AC: .word 0x0000043D
	thumb_func_end ov17_02250284

	thumb_func_start ov17_022503B0
ov17_022503B0: ; 0x022503B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #4
	bls _022503BE
	b _022504C2
_022503BE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022503CA: ; jump table
	.short _022503D4 - _022503CA - 2 ; case 0
	.short _0225044A - _022503CA - 2 ; case 1
	.short _0225046C - _022503CA - 2 ; case 2
	.short _0225048E - _022503CA - 2 ; case 3
	.short _022504B0 - _022503CA - 2 ; case 4
_022503D4:
	ldr r1, [r4, #0]
	ldr r0, _022504CC ; =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #8
	bhi _022503FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022503EA: ; jump table
	.short _02250400 - _022503EA - 2 ; case 0
	.short _022503FC - _022503EA - 2 ; case 1
	.short _02250400 - _022503EA - 2 ; case 2
	.short _022503FC - _022503EA - 2 ; case 3
	.short _022503FC - _022503EA - 2 ; case 4
	.short _022503FC - _022503EA - 2 ; case 5
	.short _022503FC - _022503EA - 2 ; case 6
	.short _02250400 - _022503EA - 2 ; case 7
	.short _02250400 - _022503EA - 2 ; case 8
_022503FC:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250400:
	ldr r1, _022504D0 ; =0x00000445
	mov r0, #0
	strb r0, [r4, r1]
	mov r2, #1
	add r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #1
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x79
	ldrb r2, [r4, r0]
	sub r0, r1, #7
	sub r1, #0x79
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	bl sub_020958FC
	ldr r3, _022504D4 ; =0x00000442
	add r0, r0, #1
	strb r0, [r4, r3]
	add r0, r3, #2
	mov r1, #4
	strb r1, [r4, r0]
	ldr r0, _022504D8 ; =0x0000085C
	sub r3, #0xc
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #5
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _022504C6
_0225044A:
	ldr r0, _022504D8 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _022504DC ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _022504C6
_0225046C:
	ldr r3, _022504E0 ; =0x0000043D
	mov r0, #2
	strb r0, [r4, r3]
	ldr r0, _022504D8 ; =0x0000085C
	sub r3, r3, #7
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #9
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _022504C6
_0225048E:
	ldr r0, _022504D8 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _022504DC ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _022504C6
_022504B0:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #0xf
	ble _022504C6
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _022504C6
_022504C2:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022504C6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022504CC: .word 0x00000121
_022504D0: .word 0x00000445
_022504D4: .word 0x00000442
_022504D8: .word 0x0000085C
_022504DC: .word 0x00000127
_022504E0: .word 0x0000043D
	thumb_func_end ov17_022503B0

	thumb_func_start ov17_022504E4
ov17_022504E4: ; 0x022504E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _022504F6
	cmp r0, #1
	beq _02250512
	b _02250534
_022504F6:
	ldr r0, _0225053C ; =0x0000085C
	ldr r3, _02250540 ; =0x00000436
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #7
	add r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250538
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250538
_02250512:
	ldr r0, _0225053C ; =0x0000085C
	ldr r3, [r5, #0]
	add r0, r5, r0
	ldr r5, _02250544 ; =0x00000127
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250538
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250538
_02250534:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250538:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225053C: .word 0x0000085C
_02250540: .word 0x00000436
_02250544: .word 0x00000127
	thumb_func_end ov17_022504E4

	thumb_func_start ov17_02250548
ov17_02250548: ; 0x02250548
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #3
	bhi _02250610
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250560: ; jump table
	.short _02250568 - _02250560 - 2 ; case 0
	.short _022505B0 - _02250560 - 2 ; case 1
	.short _022505D2 - _02250560 - 2 ; case 2
	.short _022505EE - _02250560 - 2 ; case 3
_02250568:
	ldr r1, _02250618 ; =0x00000445
	mov r0, #0
	strb r0, [r4, r1]
	mov r2, #1
	add r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #1
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xd
	ldrb r2, [r4, r0]
	sub r0, r1, #7
	sub r1, #0xd
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	bl sub_020958FC
	ldr r3, _0225061C ; =0x00000442
	add r0, r0, #1
	strb r0, [r4, r3]
	add r0, r3, #2
	mov r2, #5
	strb r2, [r4, r0]
	ldr r0, _02250620 ; =0x0000085C
	sub r3, #0xc
	add r0, r4, r0
	add r1, r4, #0
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250614
_022505B0:
	ldr r0, _02250620 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _02250624 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250614
_022505D2:
	ldr r0, _02250620 ; =0x0000085C
	ldr r3, _02250628 ; =0x00000436
	add r0, r4, r0
	add r1, r4, #0
	mov r2, #8
	add r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250614
_022505EE:
	ldr r0, _02250620 ; =0x0000085C
	ldr r3, [r4, #0]
	add r0, r4, r0
	ldr r4, _02250624 ; =0x00000127
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	b _02250614
_02250610:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02250614:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250618: .word 0x00000445
_0225061C: .word 0x00000442
_02250620: .word 0x0000085C
_02250624: .word 0x00000127
_02250628: .word 0x00000436
	thumb_func_end ov17_02250548

	thumb_func_start ov17_0225062C
ov17_0225062C: ; 0x0225062C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225063E
	cmp r0, #1
	beq _02250676
	b _02250698
_0225063E:
	ldr r5, _022506A0 ; =0x00000445
	mov r0, #0
	strb r0, [r3, r5]
	add r1, r5, #2
	strb r0, [r3, r1]
	add r1, r5, #1
	strb r0, [r3, r1]
	add r1, r5, #0
	sub r1, #0x79
	ldrb r2, [r3, r1]
	sub r1, r5, #7
	strb r2, [r3, r1]
	sub r1, r5, #1
	strb r0, [r3, r1]
	ldr r0, _022506A4 ; =0x0000085C
	sub r5, #0xf
	add r0, r3, r0
	add r1, r3, #0
	mov r2, #5
	add r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0225069C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225069C
_02250676:
	ldr r0, _022506A4 ; =0x0000085C
	ldr r5, [r3, #0]
	add r0, r3, r0
	ldr r3, _022506A8 ; =0x00000127
	sub r2, r3, #4
	ldrb r1, [r5, r3]
	sub r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0225069C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0225069C
_02250698:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225069C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022506A0: .word 0x00000445
_022506A4: .word 0x0000085C
_022506A8: .word 0x00000127
	thumb_func_end ov17_0225062C

	thumb_func_start ov17_022506AC
ov17_022506AC: ; 0x022506AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _022506C2
	cmp r0, #1
	beq _022506DC
	cmp r0, #2
	beq _022506FE
	b _02250718
_022506C2:
	ldr r0, _0225073C ; =0x0000085C
	add r1, r2, #0
	add r0, r2, r0
	mov r2, #0xa
	mov r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250736
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250736
_022506DC:
	ldr r0, _0225073C ; =0x0000085C
	ldr r3, [r2, #0]
	ldr r5, _02250740 ; =0x00000127
	add r0, r2, r0
	sub r2, r5, #4
	ldrb r1, [r3, r5]
	sub r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250736
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250736
_022506FE:
	ldr r0, _0225073C ; =0x0000085C
	add r1, r2, #0
	add r0, r2, r0
	mov r2, #4
	mov r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250736
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02250736
_02250718:
	ldr r0, _0225073C ; =0x0000085C
	ldr r3, [r2, #0]
	ldr r4, _02250740 ; =0x00000127
	add r0, r2, r0
	sub r2, r4, #4
	ldrb r1, [r3, r4]
	sub r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250736
	mov r0, #3
	pop {r3, r4, r5, pc}
_02250736:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225073C: .word 0x0000085C
_02250740: .word 0x00000127
	thumb_func_end ov17_022506AC

	thumb_func_start ov17_02250744
ov17_02250744: ; 0x02250744
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r5, #0
	mov r4, #0
	add r7, #0xd8
	b _022507B6
_02250752:
	mov r0, #0xf3
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r6, [r1, r0]
	lsl r0, r6, #4
	add r0, r5, r0
	add r0, #0xd8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0225076A
	bl sub_02022974
_0225076A:
	mov r1, #0x32
	mov r0, #0x18
	lsl r1, r1, #6
	bl sub_02018144
	lsl r2, r6, #4
	add r1, r5, r2
	add r1, #0xd8
	str r0, [r1, #0]
	add r0, r7, r2
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #6
	ldr r1, _022507C0 ; =0x02254BF4
	mul r0, r4
	ldrsh r1, [r1, r0]
	lsl r2, r6, #2
	str r1, [sp, #8]
	ldr r1, _022507C0 ; =0x02254BF4
	add r0, r1, r0
	mov r1, #2
	ldrsh r1, [r0, r1]
	str r1, [sp, #0xc]
	mov r1, #4
	ldrsh r0, [r0, r1]
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #0x14]
	ldr r2, [r3, r2]
	mov r3, #2
	bl sub_02095484
	lsl r1, r6, #2
	add r1, r5, r1
	str r0, [r1, #0x18]
	add r4, r4, #1
_022507B6:
	cmp r4, #4
	blt _02250752
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022507C0: .word 0x02254BF4
	thumb_func_end ov17_02250744

	thumb_func_start ov17_022507C4
ov17_022507C4: ; 0x022507C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_022507CE:
	ldr r0, [r5, #8]
	bl sub_02007DC8
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xc8
	add r6, r6, #1
	str r7, [r0, #0]
	add r5, r5, #4
	add r4, #0x10
	cmp r6, #4
	blt _022507CE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022507C4

	thumb_func_start ov17_022507F0
ov17_022507F0: ; 0x022507F0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	cmp r6, #0
	beq _02250806
	cmp r5, #0
	bne _02250806
	bl sub_02022974
_02250806:
	cmp r6, #3
	bhi _022508DC
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250816: ; jump table
	.short _022508E0 - _02250816 - 2 ; case 0
	.short _0225081E - _02250816 - 2 ; case 1
	.short _02250842 - _02250816 - 2 ; case 2
	.short _02250886 - _02250816 - 2 ; case 3
_0225081E:
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r3, [r4, #0]
	add r1, r2, #1
	ldrb r0, [r3, r2]
	add r2, #0x51
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r4, #0xc8
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200BBA8
	add sp, #8
	pop {r4, r5, r6, pc}
_02250842:
	ldrb r6, [r5]
	ldr r3, [r4, #0]
	mov r0, #1
	lsl r2, r6, #2
	str r0, [sp]
	mov r0, #2
	add r2, r3, r2
	add r6, r3, r6
	mov r3, #0x42
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r3, r3, #2
	add r0, #0xc8
	add r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r4, #0xc8
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_02250886:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	add r0, r4, #0
	add r0, #0xc8
	ldrb r2, [r5, #4]
	ldr r0, [r0, #0]
	bl sub_0200B60C
	ldrb r6, [r5]
	ldr r3, [r4, #0]
	mov r1, #1
	lsl r2, r6, #2
	add r2, r3, r2
	add r6, r3, r6
	mov r3, #0x42
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r3, r3, #2
	add r0, #0xc8
	add r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	bl sub_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r4, #0xc8
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_022508DC:
	bl sub_02022974
_022508E0:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_022507F0

	thumb_func_start ov17_022508E4
ov17_022508E4: ; 0x022508E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02250960 ; =0x00000171
	add r7, r2, #0
	ldrb r0, [r1, r0]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _02250906
	ldr r0, _02250964 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027AC0
	add r4, r0, #0
	b _02250908
_02250906:
	mov r4, #1
_02250908:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	bl ov17_022507F0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xc8
	add r1, #0xcc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x34
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	add r2, r5, #0
	add r0, r5, #0
	str r3, [sp, #8]
	add r2, #0xcc
	ldr r2, [r2, #0]
	add r0, #0x34
	mov r1, #1
	bl sub_0201D738
	mov r1, #0xe6
	lsl r1, r1, #2
	strb r0, [r5, r1]
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02250960: .word 0x00000171
_02250964: .word 0x00001988
	thumb_func_end ov17_022508E4

	thumb_func_start ov17_02250968
ov17_02250968: ; 0x02250968
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #7
	blo _0225097A
	bl sub_02022974
_0225097A:
	lsl r3, r4, #2
	ldr r2, _02250994 ; =0x02254C0C
	add r0, r5, #0
	ldr r4, _02250998 ; =0x02254C0E
	ldrh r2, [r2, r3]
	str r6, [sp]
	add r5, #0xc4
	ldrb r3, [r4, r3]
	ldr r1, [r5, #0]
	bl ov17_022508E4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02250994: .word 0x02254C0C
_02250998: .word 0x02254C0E
	thumb_func_end ov17_02250968

	thumb_func_start ov17_0225099C
ov17_0225099C: ; 0x0225099C
	mov r1, #0xe6
	lsl r1, r1, #2
	ldr r3, _022509A8 ; =sub_0201D724
	ldrb r0, [r0, r1]
	bx r3
	nop
_022509A8: .word sub_0201D724
	thumb_func_end ov17_0225099C

	thumb_func_start ov17_022509AC
ov17_022509AC: ; 0x022509AC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x2d
	mov r1, #0x18
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x18
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x30]
	mov r1, #0x17
	mov r3, #3
	add r4, r0, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r1, #0x16
	mov r3, #3
	bl sub_0200710C
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_02019EBC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x2d
	mov r2, #0x23
	mov r3, #0x18
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x2d
	mov r2, #0x24
	mov r3, #0x18
	bl sub_02003050
	ldr r1, [r5, #0]
	ldr r0, _02250A80 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027B50
	add r6, r0, #0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r5, #0x30]
	add r2, r1, #0
	mov r3, #0xf
	bl sub_0200DD0C
	add r0, r6, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x26
	mov r3, #0x18
	bl sub_02003050
	ldr r0, [r5, #0x30]
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02250A80: .word 0x00001988
	thumb_func_end ov17_022509AC

	thumb_func_start ov17_02250A84
ov17_02250A84: ; 0x02250A84
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02250A84

	thumb_func_start ov17_02250A88
ov17_02250A88: ; 0x02250A88
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _02250AD0 ; =0x000080EA
	add r2, r4, #0
	str r0, [sp]
	sub r3, r0, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r2, #0xd0
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r2, [r2, #0]
	bl ov17_0223F560
	ldr r0, _02250AD0 ; =0x000080EA
	mov r1, #0xc8
	str r0, [sp]
	sub r3, r0, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	ldr r0, _02250AD4 ; =0x0000C350
	add r1, #0x50
	str r0, [sp, #0x18]
	add r0, r4, r1
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl ov17_0223F630
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_02250AD0: .word 0x000080EA
_02250AD4: .word 0x0000C350
	thumb_func_end ov17_02250A88

	thumb_func_start ov17_02250AD8
ov17_02250AD8: ; 0x02250AD8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov17_0223F6C4
	ldr r1, _02250AFC ; =0x000080E9
	str r1, [sp]
	ldr r0, [r4, #0x2c]
	add r2, r1, #1
	add r3, r1, #0
	bl ov17_0223F5E8
	add sp, #4
	pop {r3, r4, pc}
	nop
_02250AFC: .word 0x000080E9
	thumb_func_end ov17_02250AD8

	thumb_func_start ov17_02250B00
ov17_02250B00: ; 0x02250B00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	mov r0, #0x2d
	mov r1, #0x18
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x18
	str r1, [sp, #0xc]
	ldr r2, [r6, #0x30]
	mov r1, #0x1b
	mov r3, #3
	str r0, [sp, #0x14]
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r6, #0x30]
	mov r1, #0x19
	mov r3, #3
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r6, #0x30]
	mov r1, #0x1a
	mov r3, #2
	bl sub_0200710C
	ldr r0, [r6, #0x30]
	mov r1, #1
	bl sub_02019EBC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x2d
	mov r2, #0x27
	mov r3, #0x18
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x2d
	mov r2, #0x24
	mov r3, #0x18
	bl sub_02003050
	ldr r1, [r6, #0]
	ldr r0, _02250CDC ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027B50
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r6, #0x30]
	add r2, r1, #0
	mov r3, #0xf
	bl sub_0200DD0C
	add r0, r4, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x26
	mov r3, #0x18
	bl sub_02003050
	mov r0, #0xc
	mov r1, #0x18
	bl sub_02023790
	add r4, r6, #0
	add r7, r0, #0
	mov r5, #0
	add r4, #0x34
_02250BEC:
	mov r0, #0xf3
	add r1, r6, r5
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	ldr r1, [r6, #0x10]
	add r2, r7, #0
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r1, r0]
	mov r1, #0x77
	bl sub_02074470
	add r0, r5, #1
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #5
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02250CE0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r2, r7, #0
	add r0, r4, r0
	add r3, r1, #0
	bl sub_0201D78C
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02250CE0 ; =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [r6, #0]
	ldr r0, [sp, #0x1c]
	add r2, r3, r2
	add r2, #0xe8
	mov r1, #0
	ldr r2, [r2, #0]
	add r0, r4, r0
	add r3, r1, #0
	bl sub_0201D78C
	add r5, r5, #1
	cmp r5, #4
	blt _02250BEC
	add r0, r7, #0
	bl sub_020237BC
	mov r3, #1
	lsl r3, r3, #0x1a
	add r2, r3, #0
	ldr r1, [r3, #0]
	ldr r0, _02250CE4 ; =0xFFFF1FFF
	add r2, #0x48
	and r1, r0
	mov r0, #6
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r3, #0]
	ldrh r1, [r2]
	mov r0, #0x3f
	mov r4, #0x1f
	bic r1, r0
	add r5, r1, #0
	orr r5, r4
	mov r1, #0x20
	orr r5, r1
	strh r5, [r2]
	ldrh r6, [r2]
	ldr r5, _02250CE8 ; =0xFFFFC0FF
	lsl r4, r4, #8
	and r5, r6
	orr r5, r4
	lsl r4, r1, #8
	orr r4, r5
	strh r4, [r2]
	add r2, r3, #0
	add r2, #0x4a
	ldrh r4, [r2]
	bic r4, r0
	mov r0, #0x1b
	orr r0, r4
	orr r0, r1
	strh r0, [r2]
	add r0, r3, #0
	mov r2, #0xff
	add r0, #0x40
	strh r2, [r0]
	add r0, r3, #0
	mov r1, #0
	add r0, #0x44
	strh r1, [r0]
	add r0, r3, #0
	add r0, #0x42
	strh r2, [r0]
	add r3, #0x46
	ldr r0, [sp, #0x14]
	strh r1, [r3]
	bl sub_02006CA8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02250CDC: .word 0x00001988
_02250CE0: .word 0x00010200
_02250CE4: .word 0xFFFF1FFF
_02250CE8: .word 0xFFFFC0FF
	thumb_func_end ov17_02250B00

	thumb_func_start ov17_02250CEC
ov17_02250CEC: ; 0x02250CEC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r3, #0
	mov r0, #1
	str r3, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	mov r2, #2
	bl sub_020038B0
	mov r3, #0
	mov r0, #1
	str r3, [sp]
	lsl r0, r0, #8
	add r4, #0xd0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #3
	mov r2, #2
	bl sub_020038B0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov17_02250CEC

	thumb_func_start ov17_02250D24
ov17_02250D24: ; 0x02250D24
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02250D24

	thumb_func_start ov17_02250D28
ov17_02250D28: ; 0x02250D28
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x2e
	mov r1, #0x18
	bl sub_02006C24
	add r4, r0, #0
	str r4, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02250D88 ; =0x000080E9
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl sub_0200CDC4
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_02250F68
	add r0, r5, #0
	bl ov17_02250DB0
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_0225122C
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_02251344
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02250D88: .word 0x000080E9
	thumb_func_end ov17_02250D28

	thumb_func_start ov17_02250D8C
ov17_02250D8C: ; 0x02250D8C
	push {r4, lr}
	add r4, r0, #0
	bl ov17_02250EFC
	add r0, r4, #0
	bl ov17_022512E0
	add r0, r4, #0
	bl ov17_02251544
	add r0, r4, #0
	bl ov17_02250FBC
	add r0, r4, #0
	bl ov17_022513C0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02250D8C

	thumb_func_start ov17_02250DB0
ov17_02250DB0: ; 0x02250DB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r0, #0
	mov r0, #0x13
	mov r1, #0x18
	bl sub_02006C24
	str r0, [sp, #0x18]
	bl sub_02079FD0
	ldr r1, [sp, #0x18]
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02250EE4 ; =0x000080EB
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl sub_0200CDC4
	bl sub_02079FDC
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02250EE8 ; =0x000080EA
	ldr r2, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl sub_0200CE24
	bl sub_02079FE8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02250EE8 ; =0x000080EA
	ldr r2, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl sub_0200CE54
	ldr r4, _02250EEC ; =0x02254C5C
	add r3, sp, #0x1c
	mov r2, #6
_02250E20:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02250E20
	ldr r0, [r4, #0]
	mov r7, #0
	str r0, [r3, #0]
	add r6, r7, #0
	add r4, r5, #0
_02250E32:
	ldr r0, [r5, #0]
	ldr r0, [r0, r6]
	bl sub_02079D80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02250EE8 ; =0x000080EA
	mov r2, #0x13
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl sub_0200D888
	ldr r0, _02250EE8 ; =0x000080EA
	add r2, sp, #0x1c
	add r0, r7, r0
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl sub_0200CE6C
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r5, #0]
	ldr r0, [r0, r6]
	bl sub_02079FC4
	add r1, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_02021F24
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D330
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #4
	blt _02250E32
	ldr r4, _02250EF0 ; =0x02254BD4
	mov r6, #0
	mov r7, #2
_02250EA4:
	mov r0, #0xf3
	add r1, r5, r6
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	ldrsh r2, [r4, r7]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	ldrsh r1, [r4, r1]
	bl sub_0200D4C4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02250EA4
	ldr r0, _02250EF4 ; =ov17_02250F4C
	ldr r2, _02250EF8 ; =0x0000C738
	add r1, r5, #0
	bl sub_0200D9E8
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #0x18]
	bl sub_02006CA8
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02250EE4: .word 0x000080EB
_02250EE8: .word 0x000080EA
_02250EEC: .word 0x02254C5C
_02250EF0: .word 0x02254BD4
_02250EF4: .word ov17_02250F4C
_02250EF8: .word 0x0000C738
	thumb_func_end ov17_02250DB0

	thumb_func_start ov17_02250EFC
ov17_02250EFC: ; 0x02250EFC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x2c]
	ldr r1, _02250F44 ; =0x000080EA
	bl sub_0200D090
	ldr r0, [r6, #0x2c]
	ldr r1, _02250F44 ; =0x000080EA
	bl sub_0200D0A0
	ldr r0, [r6, #0x2c]
	ldr r1, _02250F48 ; =0x000080EB
	bl sub_0200D080
	mov r7, #0x4e
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_02250F20:
	ldr r1, _02250F44 ; =0x000080EA
	ldr r0, [r6, #0x2c]
	add r1, r4, r1
	bl sub_0200D070
	ldr r0, [r5, r7]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02250F20
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02250F44: .word 0x000080EA
_02250F48: .word 0x000080EB
	thumb_func_end ov17_02250EFC

	thumb_func_start ov17_02250F4C
ov17_02250F4C: ; 0x02250F4C
	push {r4, r5, r6, lr}
	mov r6, #0x4e
	add r5, r1, #0
	mov r4, #0
	lsl r6, r6, #2
_02250F56:
	ldr r0, [r5, r6]
	bl sub_0200D330
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02250F56
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02250F4C

	thumb_func_start ov17_02250F68
ov17_02250F68: ; 0x02250F68
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02250FB4 ; =0x000080EF
	add r4, r1, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	mov r3, #0x66
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02250FB8 ; =0x000080EC
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x65
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02250FB8 ; =0x000080EC
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x64
	bl sub_0200CE54
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02250FB4: .word 0x000080EF
_02250FB8: .word 0x000080EC
	thumb_func_end ov17_02250F68

	thumb_func_start ov17_02250FBC
ov17_02250FBC: ; 0x02250FBC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, _02250FDC ; =0x000080EF
	bl sub_0200D070
	ldr r0, [r4, #0x2c]
	ldr r1, _02250FE0 ; =0x000080EC
	bl sub_0200D090
	ldr r0, [r4, #0x2c]
	ldr r1, _02250FE0 ; =0x000080EC
	bl sub_0200D0A0
	pop {r4, pc}
	nop
_02250FDC: .word 0x000080EF
_02250FE0: .word 0x000080EC
	thumb_func_end ov17_02250FBC

	thumb_func_start ov17_02250FE4
ov17_02250FE4: ; 0x02250FE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x18
	mov r1, #8
	bl sub_02018144
	mov r1, #0
	mov r2, #8
	add r6, r0, #0
	bl sub_020C4CF4
	str r5, [r6, #0]
	mov r4, #0
_02250FFE:
	add r0, r5, #0
	bl ov17_02251070
	add r4, r4, #1
	cmp r4, #8
	blt _02250FFE
	ldr r0, _02251018 ; =ov17_0225102C
	ldr r2, _0225101C ; =0x0000C35A
	add r1, r6, #0
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_02251018: .word ov17_0225102C
_0225101C: .word 0x0000C35A
	thumb_func_end ov17_02250FE4

	thumb_func_start ov17_02251020
ov17_02251020: ; 0x02251020
	ldr r1, _02251028 ; =0x0000127D
	mov r2, #1
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_02251028: .word 0x0000127D
	thumb_func_end ov17_02251020

	thumb_func_start ov17_0225102C
ov17_0225102C: ; 0x0225102C
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r1, #0]
	ldr r0, _0225106C ; =0x0000127D
	ldrb r2, [r3, r0]
	cmp r2, #1
	bne _02251048
	add r0, r1, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
_02251048:
	add r0, r0, #1
	ldrb r0, [r3, r0]
	cmp r0, #0x30
	bhs _02251068
	mov r0, #4
	ldrsh r2, [r1, r0]
	add r2, r2, #1
	strh r2, [r1, #4]
	ldrsh r0, [r1, r0]
	cmp r0, #4
	ble _02251068
	mov r0, #0
	strh r0, [r1, #4]
	ldr r0, [r1, #0]
	bl ov17_02251070
_02251068:
	pop {r4, pc}
	nop
_0225106C: .word 0x0000127D
	thumb_func_end ov17_0225102C

	thumb_func_start ov17_02251070
ov17_02251070: ; 0x02251070
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x18
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C4CF4
	str r5, [r4, #0]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _02251130 ; =0x02254C28
	bl sub_0200CE6C
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	bl sub_02094E98
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r5, #0]
	add r6, #0x14
	bl sub_02094E98
	mov r1, #0x30
	bl sub_020E1F6C
	add r2, r1, #0
	lsl r0, r6, #8
	lsl r1, r6, #0x10
	sub r2, #0x10
	str r0, [r4, #8]
	lsl r0, r2, #8
	str r0, [r4, #0xc]
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r5, #0]
	bl sub_02094E98
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x17
	sub r1, r1, r2
	mov r0, #0x17
	ror r1, r0
	add r0, r2, r1
	add r0, #0x60
	str r0, [r4, #0x14]
	ldr r0, [r5, #0]
	bl sub_02094E98
	mov r1, #3
	lsl r1, r1, #8
	bl sub_020E1F6C
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [r4, #0x18]
	ldr r0, [r5, #0]
	bl sub_02094E98
	mov r1, #0x18
	bl sub_020E1F6C
	add r1, #0x10
	strh r1, [r4, #0x12]
	ldr r0, [r5, #0]
	bl sub_02094E98
	mov r1, #9
	bl sub_020E1F6C
	ldr r0, [r4, #4]
	bl sub_0200D364
	ldr r0, [r4, #4]
	bl sub_0200D330
	ldr r0, _02251134 ; =ov17_02251140
	ldr r2, _02251138 ; =0x0000C35B
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r0, _0225113C ; =0x0000127E
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_02251130: .word 0x02254C28
_02251134: .word ov17_02251140
_02251138: .word 0x0000C35B
_0225113C: .word 0x0000127E
	thumb_func_end ov17_02251070

	thumb_func_start ov17_02251140
ov17_02251140: ; 0x02251140
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _02251224 ; =0x0000127D
	ldrb r1, [r0, r1]
	cmp r1, #1
	beq _02251174
	ldr r2, [r4, #0xc]
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	cmp r1, #0xd0
	bgt _02251174
	mov r2, #0x10
	ldrsh r1, [r4, r2]
	ldr r3, [r4, #8]
	sub r2, #0x20
	add r3, r3, r1
	asr r1, r3, #7
	lsr r1, r1, #0x18
	add r1, r3, r1
	asr r1, r1, #8
	cmp r1, r2
	bge _02251190
_02251174:
	ldr r1, _02251228 ; =0x0000127E
	ldrb r2, [r0, r1]
	sub r2, r2, #1
	strb r2, [r0, r1]
	ldr r0, [r4, #4]
	bl sub_0200D0F4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
_02251190:
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	add r2, r2, r1
	mov r1, #0x5a
	lsl r1, r1, #0xa
	add r0, #0x1c
	str r2, [r4, #0x1c]
	cmp r2, r1
	blt _022511AA
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
_022511AA:
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x1c]
	lsl r5, r0, #0xc
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	lsl r0, r0, #8
	lsr r0, r0, #0x10
	bl sub_0201D15C
	asr r1, r0, #0x1f
	asr r3, r5, #0x1f
	add r2, r5, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
	str r0, [r4, #8]
	mov r0, #0xa
	ldr r1, [r4, #0xc]
	lsl r0, r0, #6
	add r2, r1, r0
	str r2, [r4, #0xc]
	ldr r3, [r4, #8]
	ldr r0, [r4, #4]
	asr r1, r3, #7
	lsr r1, r1, #0x18
	add r1, r3, r1
	asr r3, r1, #8
	mov r1, #0x10
	ldrsh r1, [r4, r1]
	add r1, r3, r1
	asr r3, r2, #7
	lsr r3, r3, #0x18
	add r3, r2, r3
	lsl r1, r1, #0x10
	lsl r2, r3, #8
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #4]
	bl sub_0200D330
	pop {r3, r4, r5, pc}
	nop
_02251224: .word 0x0000127D
_02251228: .word 0x0000127E
	thumb_func_end ov17_02251140

	thumb_func_start ov17_0225122C
ov17_0225122C: ; 0x0225122C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022512D0 ; =0x000080EE
	add r4, r1, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	mov r3, #0x54
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022512D4 ; =0x000080EB
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x53
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022512D4 ; =0x000080EB
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x52
	bl sub_0200CE54
	mov r7, #0x52
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0225127A:
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _022512D8 ; =0x02254C90
	bl sub_0200CE6C
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D330
	ldr r0, [r4, r7]
	mov r1, #0
	bl sub_0200D3F4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0225127A
	ldr r4, _022512DC ; =0x02254BE4
	mov r6, #0
	mov r7, #2
_022512A8:
	mov r0, #0xf3
	add r1, r5, r6
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	ldrsh r2, [r4, r7]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	ldrsh r1, [r4, r1]
	bl sub_0200D4C4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _022512A8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022512D0: .word 0x000080EE
_022512D4: .word 0x000080EB
_022512D8: .word 0x02254C90
_022512DC: .word 0x02254BE4
	thumb_func_end ov17_0225122C

	thumb_func_start ov17_022512E0
ov17_022512E0: ; 0x022512E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	ldr r1, _02251314 ; =0x000080EE
	bl sub_0200D070
	ldr r0, [r5, #0x2c]
	ldr r1, _02251318 ; =0x000080EB
	bl sub_0200D090
	ldr r0, [r5, #0x2c]
	ldr r1, _02251318 ; =0x000080EB
	bl sub_0200D0A0
	mov r6, #0x52
	mov r4, #0
	lsl r6, r6, #2
_02251302:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02251302
	pop {r4, r5, r6, pc}
	nop
_02251314: .word 0x000080EE
_02251318: .word 0x000080EB
	thumb_func_end ov17_022512E0

	thumb_func_start ov17_0225131C
ov17_0225131C: ; 0x0225131C
	push {r3, r4, r5, lr}
	mov r3, #0x52
	lsl r3, r3, #2
	lsl r4, r1, #2
	add r5, r0, r3
	ldr r0, [r5, r4]
	add r1, r2, #0
	bl sub_0200D364
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, _02251340 ; =0x000005DD
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_02251340: .word 0x000005DD
	thumb_func_end ov17_0225131C

	thumb_func_start ov17_02251344
ov17_02251344: ; 0x02251344
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022513B4 ; =0x000080EC
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl sub_0200CDC4
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022513B8 ; =0x000080F0
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x57
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022513BC ; =0x000080ED
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x56
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022513BC ; =0x000080ED
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x55
	bl sub_0200CE54
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_022513B4: .word 0x000080EC
_022513B8: .word 0x000080F0
_022513BC: .word 0x000080ED
	thumb_func_end ov17_02251344

	thumb_func_start ov17_022513C0
ov17_022513C0: ; 0x022513C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, _022513E8 ; =0x000080EC
	bl sub_0200D080
	ldr r0, [r4, #0x2c]
	ldr r1, _022513EC ; =0x000080F0
	bl sub_0200D070
	ldr r0, [r4, #0x2c]
	ldr r1, _022513F0 ; =0x000080ED
	bl sub_0200D090
	ldr r0, [r4, #0x2c]
	ldr r1, _022513F0 ; =0x000080ED
	bl sub_0200D0A0
	pop {r4, pc}
	nop
_022513E8: .word 0x000080EC
_022513EC: .word 0x000080F0
_022513F0: .word 0x000080ED
	thumb_func_end ov17_022513C0

	thumb_func_start ov17_022513F4
ov17_022513F4: ; 0x022513F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r3, [sp]
	cmp r2, #0
	beq _0225140A
	cmp r2, #1
	beq _0225141E
	cmp r2, #2
	beq _02251438
	b _02251458
_0225140A:
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x56
	lsl r0, r0, #2
	add r2, r7, r0
	mov r0, #0x30
	mul r0, r1
	mov r6, #0
	add r4, r2, r0
	b _02251460
_0225141E:
	lsl r0, r1, #1
	add r2, r7, r0
	ldr r0, _0225153C ; =0x0000041E
	ldrsh r6, [r2, r0]
	mov r0, #0x11
	str r0, [sp, #0x14]
	mov r0, #0x86
	lsl r0, r0, #2
	add r2, r7, r0
	mov r0, #0x30
	mul r0, r1
	add r4, r2, r0
	b _02251460
_02251438:
	lsl r0, r1, #1
	add r3, r7, r0
	ldr r0, _0225153C ; =0x0000041E
	ldrsh r2, [r3, r0]
	add r0, #8
	ldrsh r0, [r3, r0]
	add r6, r2, r0
	mov r0, #0x21
	str r0, [sp, #0x14]
	mov r0, #0xb6
	lsl r0, r0, #2
	add r2, r7, r0
	mov r0, #0x30
	mul r0, r1
	add r4, r2, r0
	b _02251460
_02251458:
	bl sub_02022974
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02251460:
	ldr r0, [sp, #0x30]
	add r6, #0x30
	lsl r0, r0, #5
	str r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp]
	asr r0, r0, #3
	lsr r1, r0, #0x1c
	ldr r0, [sp]
	add r1, r0, r1
	asr r0, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [sp]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	beq _02251490
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_02251490:
	ldr r0, [sp, #0xc]
	cmp r0, #0xc
	ble _0225149A
	bl sub_02022974
_0225149A:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _022514C6
	add r5, r4, #0
_022514A6:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _022514B8
	ldr r0, [r7, #0x28]
	ldr r1, [r7, #0x2c]
	ldr r2, _02251540 ; =0x02254CC4
	bl sub_0200CE6C
	str r0, [r5, #0]
_022514B8:
	ldr r0, [sp, #8]
	add r5, r5, #4
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _022514A6
_022514C6:
	ldr r0, [sp]
	mov r7, #0
	cmp r0, #0x10
	blt _022514EE
	ldr r0, [sp, #0x14]
	add r5, r4, #0
	str r0, [sp, #4]
	add r0, #0xf
	str r0, [sp, #4]
_022514D8:
	ldr r0, [r5, #0]
	ldr r1, [sp, #4]
	bl sub_0200D364
	ldr r0, [sp]
	add r5, r5, #4
	sub r0, #0x10
	add r7, r7, #1
	str r0, [sp]
	cmp r0, #0x10
	bge _022514D8
_022514EE:
	ldr r0, [sp]
	cmp r0, #0
	ble _0225150A
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bge _0225150A
	ldr r2, [sp, #0x14]
	ldr r1, [sp]
	lsl r0, r7, #2
	add r1, r2, r1
	ldr r0, [r4, r0]
	sub r1, r1, #1
	bl sub_0200D364
_0225150A:
	ldr r0, [sp, #0xc]
	mov r5, #0
	cmp r0, #0
	ble _02251536
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_02251518:
	lsl r1, r6, #0x10
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0200D4C4
	ldr r0, [r4, #0]
	bl sub_0200D330
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r6, #0x10
	add r4, r4, #4
	cmp r5, r0
	blt _02251518
_02251536:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225153C: .word 0x0000041E
_02251540: .word 0x02254CC4
	thumb_func_end ov17_022513F4

	thumb_func_start ov17_02251544
ov17_02251544: ; 0x02251544
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r7, #0x86
	lsl r7, r7, #2
	str r0, [sp]
	mov r0, #0
	add r6, r7, #0
	str r0, [sp, #4]
	sub r6, #0xc0
_02251556:
	ldr r5, [sp]
	mov r4, #0
_0225155A:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _02251564
	bl sub_0200D0F4
_02251564:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0225156E
	bl sub_0200D0F4
_0225156E:
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225157C
	bl sub_0200D0F4
_0225157C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blt _0225155A
	ldr r0, [sp]
	add r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02251556
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02251544

	thumb_func_start ov17_02251598
ov17_02251598: ; 0x02251598
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0
	strb r0, [r7]
	mov r0, #0x18
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	str r5, [r4, #0]
	str r7, [r4, #4]
	cmp r6, #0
	ldr r2, _022515E8 ; =0x0000A028
	bne _022515D2
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, _022515EC ; =ov17_022515F4
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_022515D2:
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [r4, #8]
	mov r0, #9
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, _022515F0 ; =ov17_02251688
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022515E8: .word 0x0000A028
_022515EC: .word ov17_022515F4
_022515F0: .word ov17_02251688
	thumb_func_end ov17_02251598

	thumb_func_start ov17_022515F4
ov17_022515F4: ; 0x022515F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	bne _0225166E
	mov r0, #1
	ldr r2, [r1, #8]
	lsl r0, r0, #0xa
	sub r2, r2, r0
	str r2, [r1, #8]
	ldr r2, [r1, #0xc]
	add r0, r2, r0
	str r0, [r1, #0xc]
	mov r0, #3
	ldr r2, [r1, #8]
	lsl r0, r0, #0xc
	cmp r2, r0
	bgt _02251626
	str r0, [r1, #8]
	mov r0, #9
	lsl r0, r0, #0xc
	str r0, [r1, #0xc]
	ldrb r0, [r1, #0x10]
	add r0, r0, #1
	strb r0, [r1, #0x10]
_02251626:
	ldr r3, [r1, #0]
	ldr r2, _02251684 ; =0x00000851
	mov r0, #0
	strb r0, [r3, r2]
	ldr r3, [r1, #8]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #1
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	mov r5, #0xff
	add r3, r2, #2
	strb r5, [r4, r3]
	ldr r3, [r1, #0xc]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #3
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	mov r5, #1
	add r3, r2, #4
	strb r5, [r4, r3]
	ldr r3, [r1, #8]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #5
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	add r3, r2, #6
	strb r0, [r4, r3]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0]
	asr r3, r0, #8
	add r0, r2, #7
	strb r3, [r1, r0]
	pop {r3, r4, r5, pc}
_0225166E:
	ldr r0, [r1, #4]
	mov r2, #1
	strb r2, [r0]
	add r0, r1, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_02251684: .word 0x00000851
	thumb_func_end ov17_022515F4

	thumb_func_start ov17_02251688
ov17_02251688: ; 0x02251688
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	bne _022516FE
	mov r0, #1
	ldr r2, [r1, #8]
	lsl r0, r0, #0xa
	add r2, r2, r0
	str r2, [r1, #8]
	ldr r2, [r1, #0xc]
	sub r0, r2, r0
	str r0, [r1, #0xc]
	mov r0, #6
	ldr r2, [r1, #8]
	lsl r0, r0, #0xc
	cmp r2, r0
	blt _022516B6
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	ldrb r0, [r1, #0x10]
	add r0, r0, #1
	strb r0, [r1, #0x10]
_022516B6:
	ldr r3, [r1, #0]
	ldr r2, _02251714 ; =0x00000851
	mov r0, #0
	strb r0, [r3, r2]
	ldr r3, [r1, #8]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #1
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	mov r5, #0xff
	add r3, r2, #2
	strb r5, [r4, r3]
	ldr r3, [r1, #0xc]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #3
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	mov r5, #1
	add r3, r2, #4
	strb r5, [r4, r3]
	ldr r3, [r1, #8]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #5
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	add r3, r2, #6
	strb r0, [r4, r3]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0]
	asr r3, r0, #8
	add r0, r2, #7
	strb r3, [r1, r0]
	pop {r3, r4, r5, pc}
_022516FE:
	ldr r0, [r1, #4]
	mov r2, #1
	strb r2, [r0]
	add r0, r1, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_02251714: .word 0x00000851
	thumb_func_end ov17_02251688

	thumb_func_start ov17_02251718
ov17_02251718: ; 0x02251718
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r1, #0
	add r0, r3, #0
	strb r1, [r0]
	mov r0, #0x18
	mov r1, #0x14
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl sub_020C4CF4
	lsl r0, r6, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	cmp r7, #0
	str r0, [r4, #0]
	ldr r0, [sp]
	ldr r2, _02251778 ; =0x0000C350
	str r0, [r4, #4]
	bne _02251762
	mov r0, #0x4a
	lsl r0, r0, #0xa
	str r0, [r4, #8]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, _0225177C ; =ov17_02251784
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02251762:
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [r4, #8]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, _02251780 ; =ov17_022517F0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02251778: .word 0x0000C350
_0225177C: .word ov17_02251784
_02251780: .word ov17_022517F0
	thumb_func_end ov17_02251718

	thumb_func_start ov17_02251784
ov17_02251784: ; 0x02251784
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02251796
	cmp r0, #1
	beq _022517A6
	b _022517DA
_02251796:
	ldr r0, [r4, #0]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_022517A6:
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xa
	sub r2, r1, r0
	lsl r1, r0, #4
	str r2, [r4, #8]
	cmp r2, r1
	bgt _022517C0
	lsl r0, r0, #4
	str r0, [r4, #8]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_022517C0:
	ldr r2, [r4, #8]
	ldr r0, [r4, #0]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_022517DA:
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02251784

	thumb_func_start ov17_022517F0
ov17_022517F0: ; 0x022517F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02251802
	cmp r0, #1
	beq _02251806
	b _0225183C
_02251802:
	add r0, r0, #1
	strb r0, [r4, #0x10]
_02251806:
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	ldr r0, _0225185C ; =0xFFFFD800
	str r1, [r4, #8]
	cmp r1, r0
	bgt _0225181C
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0225181C:
	ldr r3, [r4, #8]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_0225183C:
	ldr r0, [r4, #0]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_0225185C: .word 0xFFFFD800
	thumb_func_end ov17_022517F0

	thumb_func_start ov17_02251860
ov17_02251860: ; 0x02251860
	ldr r2, _022518FC ; =0x00000121
	ldrb r0, [r0, r2]
	cmp r0, #8
	bhi _022518F6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02251874: ; jump table
	.short _02251886 - _02251874 - 2 ; case 0
	.short _0225189E - _02251874 - 2 ; case 1
	.short _022518B4 - _02251874 - 2 ; case 2
	.short _022518D2 - _02251874 - 2 ; case 3
	.short _022518D2 - _02251874 - 2 ; case 4
	.short _022518DE - _02251874 - 2 ; case 5
	.short _022518DE - _02251874 - 2 ; case 6
	.short _022518EA - _02251874 - 2 ; case 7
	.short _022518EA - _02251874 - 2 ; case 8
_02251886:
	cmp r1, #0
	beq _02251890
	cmp r1, #2
	beq _02251894
	b _0225189A
_02251890:
	ldr r0, _02251900 ; =0x00001770
	bx lr
_02251894:
	mov r0, #0xfa
	lsl r0, r0, #4
	bx lr
_0225189A:
	mov r0, #0
	bx lr
_0225189E:
	cmp r1, #0
	beq _022518A8
	cmp r1, #1
	beq _022518AC
	b _022518B0
_022518A8:
	ldr r0, _02251904 ; =0x00001B58
	bx lr
_022518AC:
	ldr r0, _02251908 ; =0x00000BB8
	bx lr
_022518B0:
	mov r0, #0
	bx lr
_022518B4:
	cmp r1, #0
	beq _022518C2
	cmp r1, #1
	beq _022518C6
	cmp r1, #2
	beq _022518CA
	b _022518CE
_022518C2:
	ldr r0, _0225190C ; =0x00000D05
	bx lr
_022518C6:
	ldr r0, _0225190C ; =0x00000D05
	bx lr
_022518CA:
	ldr r0, _0225190C ; =0x00000D05
	bx lr
_022518CE:
	mov r0, #0
	bx lr
_022518D2:
	cmp r1, #0
	bne _022518DA
	ldr r0, _02251910 ; =0x00002710
	bx lr
_022518DA:
	mov r0, #0
	bx lr
_022518DE:
	cmp r1, #1
	bne _022518E6
	ldr r0, _02251910 ; =0x00002710
	bx lr
_022518E6:
	mov r0, #0
	bx lr
_022518EA:
	cmp r1, #2
	bne _022518F2
	ldr r0, _02251910 ; =0x00002710
	bx lr
_022518F2:
	mov r0, #0
	bx lr
_022518F6:
	mov r0, #0
	bx lr
	nop
_022518FC: .word 0x00000121
_02251900: .word 0x00001770
_02251904: .word 0x00001B58
_02251908: .word 0x00000BB8
_0225190C: .word 0x00000D05
_02251910: .word 0x00002710
	thumb_func_end ov17_02251860

	thumb_func_start ov17_02251914
ov17_02251914: ; 0x02251914
	push {r3, lr}
	bl ov17_02251860
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r1, _0225192C ; =0x00001388
	add r0, r2, r1
	lsl r1, r1, #1
	bl sub_020E1F6C
	pop {r3, pc}
	; .align 2, 0
_0225192C: .word 0x00001388
	thumb_func_end ov17_02251914

	thumb_func_start ov17_02251930
ov17_02251930: ; 0x02251930
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp]
	mov r0, #0
	ldr r7, [sp]
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp, #8]
	add r4, sp, #0x24
_02251942:
	cmp r5, #0
	beq _02251950
	cmp r5, #1
	beq _0225196A
	cmp r5, #2
	beq _02251974
	b _0225197C
_02251950:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl sub_02095928
	str r0, [sp, #0x10]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl sub_0209598C
	ldr r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [r4, #0]
	b _02251984
_0225196A:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrsh r0, [r7, r0]
	str r0, [r4, #0]
	b _02251984
_02251974:
	ldr r0, _02251A18 ; =0x0000012E
	ldrsh r0, [r7, r0]
	str r0, [r4, #0]
	b _02251984
_0225197C:
	bl sub_02022974
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_02251984:
	ldr r0, [sp, #8]
	add r4, r4, #4
	add r0, r0, #1
	add r7, #0xc
	str r0, [sp, #8]
	cmp r0, #4
	blt _02251942
	mov r4, #0
	mov r3, #1
	add r2, sp, #0x28
	add r7, sp, #0x24
_0225199A:
	lsl r0, r4, #2
	ldr r1, [r7, r0]
	ldr r0, [r2, #0]
	cmp r1, r0
	bge _022519A6
	add r4, r3, #0
_022519A6:
	add r3, r3, #1
	add r2, r2, #4
	cmp r3, #4
	blt _0225199A
	ldr r0, [sp]
	add r1, r5, #0
	bl ov17_02251860
	lsl r2, r4, #2
	add r1, sp, #0x24
	ldr r1, [r1, r2]
	bl sub_020E1F6C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #4]
	add r7, sp, #0x24
	add r4, sp, #0x14
_022519CA:
	ldr r0, [r7, #0]
	ldr r1, [sp, #0xc]
	mul r0, r1
	str r0, [r4, #0]
	add r0, #0x32
	mov r1, #0x64
	bl sub_020E1F6C
	stmia r4!, {r0}
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _022519CA
	mov r2, #0
	add r1, sp, #0x14
_022519EC:
	cmp r5, #0
	beq _022519FA
	cmp r5, #1
	beq _02251A00
	cmp r5, #2
	beq _02251A06
	b _02251A0A
_022519FA:
	ldr r0, [r1, #0]
	strh r0, [r6]
	b _02251A0A
_02251A00:
	ldr r0, [r1, #0]
	strh r0, [r6]
	b _02251A0A
_02251A06:
	ldr r0, [r1, #0]
	strh r0, [r6]
_02251A0A:
	add r2, r2, #1
	add r1, r1, #4
	add r6, r6, #2
	cmp r2, #4
	blt _022519EC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02251A18: .word 0x0000012E
	thumb_func_end ov17_02251930

	thumb_func_start ov17_02251A1C
ov17_02251A1C: ; 0x02251A1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	ldr r0, [r0, #0]
	ldr r1, _02251D3C ; =0x00000121
	ldrb r1, [r0, r1]
	cmp r1, #8
	bhi _02251ADC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02251A38: ; jump table
	.short _02251A4A - _02251A38 - 2 ; case 0
	.short _02251A68 - _02251A38 - 2 ; case 1
	.short _02251A86 - _02251A38 - 2 ; case 2
	.short _02251AB4 - _02251A38 - 2 ; case 3
	.short _02251AB4 - _02251A38 - 2 ; case 4
	.short _02251AC2 - _02251A38 - 2 ; case 5
	.short _02251AC2 - _02251A38 - 2 ; case 6
	.short _02251AD0 - _02251A38 - 2 ; case 7
	.short _02251AD0 - _02251A38 - 2 ; case 8
_02251A4A:
	ldr r3, _02251D40 ; =0x000003D6
	ldr r2, [sp]
	mov r1, #0
	add r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D44 ; =0x000003E6
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #2
	add r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251A68:
	ldr r3, _02251D40 ; =0x000003D6
	ldr r2, [sp]
	mov r1, #0
	add r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D48 ; =0x000003DE
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #1
	add r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251A86:
	ldr r3, _02251D40 ; =0x000003D6
	ldr r2, [sp]
	mov r1, #0
	add r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D48 ; =0x000003DE
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #1
	add r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D44 ; =0x000003E6
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #2
	add r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251AB4:
	ldr r3, _02251D40 ; =0x000003D6
	ldr r2, [sp]
	mov r1, #0
	add r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251AC2:
	ldr r3, _02251D48 ; =0x000003DE
	ldr r2, [sp]
	mov r1, #1
	add r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251AD0:
	ldr r3, _02251D44 ; =0x000003E6
	ldr r2, [sp]
	mov r1, #2
	add r2, r2, r3
	bl ov17_02251930
_02251ADC:
	ldr r7, _02251D40 ; =0x000003D6
	ldr r6, [sp]
	add r0, r7, #0
	add r1, r7, #0
	mov r5, #0
	add r0, #8
	add r1, #0x18
_02251AEA:
	ldr r2, _02251D44 ; =0x000003E6
	ldrsh r3, [r6, r7]
	ldrsh r4, [r6, r2]
	ldrsh r2, [r6, r0]
	add r5, r5, #1
	add r2, r3, r2
	add r2, r4, r2
	strh r2, [r6, r1]
	add r6, r6, #2
	cmp r5, #4
	blt _02251AEA
	ldr r1, [sp]
	ldr r4, _02251D40 ; =0x000003D6
	mov r0, #0
	mov r2, #1
	add r1, r1, #2
	add r5, r4, #0
_02251B0C:
	ldr r3, [sp]
	lsl r6, r0, #1
	add r3, r3, r6
	ldrsh r6, [r3, r4]
	ldrsh r3, [r1, r5]
	cmp r6, r3
	bge _02251B1C
	add r0, r2, #0
_02251B1C:
	add r2, r2, #1
	add r1, r1, #2
	cmp r2, #4
	blt _02251B0C
	lsl r1, r0, #1
	ldr r0, [sp]
	ldr r4, [sp]
	add r1, r0, r1
	ldr r0, _02251D40 ; =0x000003D6
	mov r5, #0
	add r7, r0, #0
	ldrsh r6, [r1, r0]
	add r7, #0x20
_02251B36:
	ldr r0, _02251D40 ; =0x000003D6
	ldrsh r1, [r4, r0]
	mov r0, #0x64
	mul r0, r1
	add r1, r6, #0
	bl sub_020E1F6C
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251B36
	ldr r0, [sp]
	ldr r4, _02251D48 ; =0x000003DE
	mov r2, #0
	mov r1, #1
	add r0, r0, #2
	add r5, r4, #0
_02251B5A:
	ldr r3, [sp]
	lsl r6, r2, #1
	add r3, r3, r6
	ldrsh r6, [r3, r4]
	ldrsh r3, [r0, r5]
	cmp r6, r3
	bge _02251B6A
	add r2, r1, #0
_02251B6A:
	add r1, r1, #1
	add r0, r0, #2
	cmp r1, #4
	blt _02251B5A
	ldr r0, [sp]
	lsl r1, r2, #1
	add r1, r0, r1
	ldr r0, _02251D48 ; =0x000003DE
	ldr r4, [sp]
	add r7, r0, #0
	ldrsh r6, [r1, r0]
	mov r5, #0
	add r7, #0x20
_02251B84:
	ldr r0, _02251D48 ; =0x000003DE
	ldrsh r1, [r4, r0]
	mov r0, #0x64
	mul r0, r1
	add r1, r6, #0
	bl sub_020E1F6C
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251B84
	ldr r0, [sp]
	ldr r4, _02251D44 ; =0x000003E6
	mov r2, #0
	mov r1, #1
	add r0, r0, #2
	add r5, r4, #0
_02251BA8:
	ldr r3, [sp]
	lsl r6, r2, #1
	add r3, r3, r6
	ldrsh r6, [r3, r4]
	ldrsh r3, [r0, r5]
	cmp r6, r3
	bge _02251BB8
	add r2, r1, #0
_02251BB8:
	add r1, r1, #1
	add r0, r0, #2
	cmp r1, #4
	blt _02251BA8
	ldr r0, [sp]
	lsl r1, r2, #1
	add r1, r0, r1
	ldr r0, _02251D44 ; =0x000003E6
	ldr r4, [sp]
	add r7, r0, #0
	ldrsh r6, [r1, r0]
	mov r5, #0
	add r7, #0x20
_02251BD2:
	ldr r0, _02251D44 ; =0x000003E6
	ldrsh r1, [r4, r0]
	mov r0, #0x64
	mul r0, r1
	add r1, r6, #0
	bl sub_020E1F6C
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251BD2
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0]
	bl ov17_02251914
	ldr r4, [sp]
	ldr r7, _02251D4C ; =0x0000041E
	add r6, r0, #0
	mov r5, #0
_02251BFC:
	ldr r0, _02251D50 ; =0x000003F6
	mov r1, #0x64
	ldrsh r0, [r4, r0]
	mul r0, r6
	bl sub_020E1F6C
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251BFC
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0, #0]
	bl ov17_02251914
	ldr r4, [sp]
	ldr r7, _02251D54 ; =0x00000426
	add r6, r0, #0
	mov r5, #0
_02251C24:
	ldr r0, _02251D58 ; =0x000003FE
	mov r1, #0x64
	ldrsh r0, [r4, r0]
	mul r0, r6
	bl sub_020E1F6C
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251C24
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	bl ov17_02251914
	ldr r4, [sp]
	ldr r7, _02251D5C ; =0x0000042E
	add r6, r0, #0
	mov r5, #0
_02251C4C:
	ldr r0, _02251D60 ; =0x00000406
	mov r1, #0x64
	ldrsh r0, [r4, r0]
	mul r0, r6
	bl sub_020E1F6C
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251C4C
	ldr r7, _02251D4C ; =0x0000041E
	ldr r5, [sp]
	add r0, r7, #0
	add r1, r7, #0
	mov r6, #0
	add r0, #8
	sub r1, #8
_02251C70:
	ldr r2, _02251D5C ; =0x0000042E
	ldrsh r3, [r5, r7]
	ldrsh r4, [r5, r2]
	ldrsh r2, [r5, r0]
	add r6, r6, #1
	add r2, r3, r2
	add r2, r4, r2
	strh r2, [r5, r1]
	add r5, r5, #2
	cmp r6, #4
	blt _02251C70
	ldr r0, [sp]
	mov r7, #0
	add r6, sp, #0x18
	str r0, [sp, #4]
	add r4, sp, #8
	add r5, sp, #0x28
_02251C92:
	stmia r6!, {r7}
	ldr r1, [sp, #4]
	ldr r0, _02251D64 ; =0x00000416
	ldrsh r0, [r1, r0]
	stmia r4!, {r0}
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl sub_02094E98
	stmia r5!, {r0}
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r0, r0, #2
	str r0, [sp, #4]
	cmp r7, #4
	blt _02251C92
	mov r0, #0
	mov ip, r0
_02251CB6:
	mov r0, ip
	mov r7, #3
	cmp r0, #3
	bge _02251D04
	add r2, sp, #0x14
	add r3, sp, #0x34
	add r4, sp, #0x24
_02251CC4:
	sub r0, r2, #4
	ldr r5, [r2, #0]
	ldr r6, [r0, #0]
	cmp r6, r5
	blt _02251CDC
	cmp r6, r5
	bne _02251CF6
	sub r0, r3, #4
	ldr r1, [r0, #0]
	ldr r0, [r3, #0]
	cmp r1, r0
	bge _02251CF6
_02251CDC:
	str r6, [r2, #0]
	sub r0, r2, #4
	str r5, [r0, #0]
	sub r0, r4, #4
	ldr r5, [r4, #0]
	ldr r1, [r0, #0]
	str r1, [r4, #0]
	str r5, [r0, #0]
	sub r0, r3, #4
	ldr r5, [r3, #0]
	ldr r1, [r0, #0]
	str r1, [r3, #0]
	str r5, [r0, #0]
_02251CF6:
	sub r7, r7, #1
	mov r0, ip
	sub r2, r2, #4
	sub r3, r3, #4
	sub r4, r4, #4
	cmp r7, r0
	bgt _02251CC4
_02251D04:
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #3
	blt _02251CB6
	mov r1, #0x13
	ldr r7, _02251D68 ; =0x000003D1
	mov r6, #0
	add r5, sp, #0x18
	mov r0, #0xc
	lsl r1, r1, #4
_02251D1A:
	ldr r3, [sp]
	ldr r2, [r5, #0]
	add r3, r3, r6
	strb r2, [r3, r7]
	ldr r2, [sp]
	ldr r4, [r2, #0]
	ldr r2, [r5, #0]
	add r5, r5, #4
	add r3, r2, #0
	mul r3, r0
	add r2, r4, r3
	strb r6, [r2, r1]
	add r6, r6, #1
	cmp r6, #4
	blt _02251D1A
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02251D3C: .word 0x00000121
_02251D40: .word 0x000003D6
_02251D44: .word 0x000003E6
_02251D48: .word 0x000003DE
_02251D4C: .word 0x0000041E
_02251D50: .word 0x000003F6
_02251D54: .word 0x00000426
_02251D58: .word 0x000003FE
_02251D5C: .word 0x0000042E
_02251D60: .word 0x00000406
_02251D64: .word 0x00000416
_02251D68: .word 0x000003D1
	thumb_func_end ov17_02251A1C

	thumb_func_start ov17_02251D6C
ov17_02251D6C: ; 0x02251D6C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02251DA0 ; =0x02254D18
	add r3, sp, #0
	str r1, [sp]
	mov r1, #0xb
	strh r1, [r3, #4]
	ldr r1, [r0, #0]
	ldr r2, _02251DA4 ; =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	sub r1, r2, #7
	ldr r4, [r0, #0]
	add r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0, #0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	ldr r1, _02251DA8 ; =0x0000085C
	add r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02251DA0: .word 0x02254D18
_02251DA4: .word 0x00000123
_02251DA8: .word 0x0000085C
	thumb_func_end ov17_02251D6C

	thumb_func_start ov17_02251DAC
ov17_02251DAC: ; 0x02251DAC
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02251DAC

	thumb_func_start ov17_02251DC0
ov17_02251DC0: ; 0x02251DC0
	push {r3, lr}
	add r1, r2, #0
	mov r2, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02251DC0

	thumb_func_start ov17_02251DD0
ov17_02251DD0: ; 0x02251DD0
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02251DD0

	thumb_func_start ov17_02251DD4
ov17_02251DD4: ; 0x02251DD4
	push {r3, lr}
	mov r1, #0x9a
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02251DD4

	thumb_func_start ov17_02251DE8
ov17_02251DE8: ; 0x02251DE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xe7
	lsl r1, r1, #2
	str r0, [sp]
	mov ip, r2
	add r0, r3, #0
	add r4, r6, r1
	mov r2, #0x4d
_02251DFA:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r4]
	add r4, r4, #2
	sub r2, r2, #1
	bne _02251DFA
	mov r1, #0
	ldr r7, _02251E50 ; =0x00000132
	add r2, r1, #0
_02251E0C:
	ldr r0, [r6, #0]
	mov r4, #0x4a
	add r0, r0, r2
	ldrh r5, [r3]
	lsl r4, r4, #2
	add r1, r1, #1
	strh r5, [r0, r4]
	ldrh r5, [r3, #2]
	add r4, r4, #2
	add r2, #0xc
	strh r5, [r0, r4]
	mov r4, #0x4b
	ldrh r5, [r3, #4]
	lsl r4, r4, #2
	strh r5, [r0, r4]
	ldrh r5, [r3, #6]
	add r4, r4, #2
	strh r5, [r0, r4]
	mov r4, #0x13
	ldrh r5, [r3, #8]
	lsl r4, r4, #4
	strh r5, [r0, r4]
	ldrh r4, [r3, #0xa]
	add r3, #0xc
	cmp r1, #4
	strh r4, [r0, r7]
	blt _02251E0C
	mov r2, #0
	ldr r0, [sp]
	mov r1, ip
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02251E50: .word 0x00000132
	thumb_func_end ov17_02251DE8

	thumb_func_start ov17_02251E54
ov17_02251E54: ; 0x02251E54
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02251E54

	thumb_func_start ov17_02251E68
ov17_02251E68: ; 0x02251E68
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x18
	add r7, r1, #0
	add r1, r0, #0
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02251EA4 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02251EA8 ; =ov17_02251EAC
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02251EA4: .word 0x00007530
_02251EA8: .word ov17_02251EAC
	thumb_func_end ov17_02251E68

	thumb_func_start ov17_02251EAC
ov17_02251EAC: ; 0x02251EAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _02251EBC
	b _02251FE2
_02251EBC:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02251ED0
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_02251ED0:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02251EE4
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_02251EE4:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x30]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _02251F5C
_02251EFC:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _02252000 ; =0x02254CF8
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _02251F56
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r0, [r0, #0x12]
	mov r7, #0x3f
	str r5, [sp, #4]
	lsl r1, r0, #1
	ldr r0, _02252004 ; =0x02254D00
	lsl r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r0, r0, #5
	add r6, r1, r0
	b _02251F50
_02251F2C:
	mov r4, #0
	b _02251F44
_02251F30:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_02251F44:
	cmp r4, #8
	blt _02251F30
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_02251F50:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _02251F2C
_02251F56:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_02251F5C:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _02251EFC
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _02251F9E
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _02251F9E
	ldr r0, _02252000 ; =0x02254CF8
	sub r1, r1, #1
	ldrsb r0, [r0, r1]
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #0x3f
	str r0, [sp, #4]
	lsl r1, r1, #0xa
	b _02251F98
_02251F88:
	ldr r0, [sp, #4]
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_02251F98:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _02251F88
_02251F9E:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _02251FFC
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _02251FFC
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_02251FE2:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02251FFC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02252000: .word 0x02254CF8
_02252004: .word 0x02254D00
	thumb_func_end ov17_02251EAC

	thumb_func_start ov17_02252008
ov17_02252008: ; 0x02252008
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252008

	thumb_func_start ov17_0225201C
ov17_0225201C: ; 0x0225201C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x18
	add r7, r1, #0
	add r1, r0, #0
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02252058 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0225205C ; =ov17_02252060
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252058: .word 0x00007530
_0225205C: .word ov17_02252060
	thumb_func_end ov17_0225201C

	thumb_func_start ov17_02252060
ov17_02252060: ; 0x02252060
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _02252070
	b _022521BE
_02252070:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02252084
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_02252084:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02252098
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_02252098:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x30]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _02252118
_022520B0:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	mov r0, #4
	sub r1, r0, r1
	ldr r0, _022521DC ; =0x02254CF8
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _02252112
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r1, [r0, #0x12]
	mov r0, #0xb
	mov r7, #0x3f
	sub r0, r0, r1
	lsl r1, r0, #1
	ldr r0, _022521E0 ; =0x02254D00
	str r5, [sp, #4]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r7, r7, #0xa
	lsl r0, r0, #5
	add r6, r1, r0
	b _0225210C
_022520E8:
	mov r4, #0
	b _02252100
_022520EC:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_02252100:
	cmp r4, #8
	blt _022520EC
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_0225210C:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _022520E8
_02252112:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_02252118:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _022520B0
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0225217A
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0225217A
	mov r0, #5
	sub r1, r0, r1
	ldr r0, _022521DC ; =0x02254CF8
	mov r7, #0x3f
	ldrsb r0, [r0, r1]
	lsl r7, r7, #0xa
	mov r6, #0x1d
	add r0, r0, #3
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #2
	str r0, [sp, #4]
	lsl r1, r1, #8
	b _02252174
_0225214E:
	ldr r0, [sp, #4]
	ldr r5, [sp, #4]
	lsl r4, r0, #1
	ldrh r0, [r3, r4]
	lsl r5, r5, #0x1d
	and r0, r7
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	ldrh r2, [r3, r4]
	lsr r0, r0, #0x1f
	sub r5, r5, r0
	ror r5, r6
	add r0, r0, r5
	add r0, r0, r1
	orr r0, r2
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_02252174:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0225214E
_0225217A:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _022521D8
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _022521D8
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022521BE:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_022521D8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022521DC: .word 0x02254CF8
_022521E0: .word 0x02254D00
	thumb_func_end ov17_02252060

	thumb_func_start ov17_022521E4
ov17_022521E4: ; 0x022521E4
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_022521E4

	thumb_func_start ov17_022521F8
ov17_022521F8: ; 0x022521F8
	push {r4, lr}
	ldr r3, _0225220C ; =0x0000127C
	mov r4, #1
	strb r4, [r1, r3]
	add r1, r2, #0
	mov r2, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r4, pc}
	; .align 2, 0
_0225220C: .word 0x0000127C
	thumb_func_end ov17_022521F8

	thumb_func_start ov17_02252210
ov17_02252210: ; 0x02252210
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252210

	thumb_func_start ov17_02252224
ov17_02252224: ; 0x02252224
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x18
	mov r1, #0x20
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	ldr r2, _02252284 ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r6]
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0xa]
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0x18]
	ldrb r0, [r5, #0xe]
	strb r0, [r4, #0x1a]
	ldrb r0, [r5, #0x11]
	strb r0, [r4, #0x1d]
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x1c]
	ldrb r0, [r5, #0xf]
	strb r0, [r4, #0x1b]
	ldr r0, _02252288 ; =ov17_0225228C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252284: .word 0x00007530
_02252288: .word ov17_0225228C
	thumb_func_end ov17_02252224

	thumb_func_start ov17_0225228C
ov17_0225228C: ; 0x0225228C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _022522A2
	cmp r0, #1
	beq _022522E0
	cmp r0, #2
	beq _022522F2
	b _0225232A
_022522A2:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _022522DA
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	bne _022522C6
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x34
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
_022522C6:
	ldrb r1, [r4, #0x1a]
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x14
	bl ov17_02250968
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022522DA:
	mov r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022522E0:
	ldr r0, [r4, #0]
	bl ov17_0225099C
	cmp r0, #0
	bne _02252342
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022522F2:
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _02252306
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02252306:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x1b]
	cmp r1, r0
	blo _02252342
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x34
	bl sub_0200E084
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0225232A:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02252342:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0225228C

	thumb_func_start ov17_02252344
ov17_02252344: ; 0x02252344
	push {r3, lr}
	mov r1, #0x9a
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252344

	thumb_func_start ov17_02252358
ov17_02252358: ; 0x02252358
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xe7
	add r6, r1, #0
	lsl r0, r0, #2
	add r5, r2, #0
	add r2, r6, r0
	mov r1, #0x4d
_02252368:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02252368
	mov r0, #0x18
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	mov r2, #0xfa
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	lsl r2, r2, #2
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _022523A8 ; =ov17_022523AC
	str r7, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022523A8: .word ov17_022523AC
	thumb_func_end ov17_02252358

	thumb_func_start ov17_022523AC
ov17_022523AC: ; 0x022523AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #6
	bls _022523BC
	b _022524E6
_022523BC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022523C8: ; jump table
	.short _022523D6 - _022523C8 - 2 ; case 0
	.short _022523EA - _022523C8 - 2 ; case 1
	.short _022523FE - _022523C8 - 2 ; case 2
	.short _02252428 - _022523C8 - 2 ; case 3
	.short _0225243A - _022523C8 - 2 ; case 4
	.short _022524A6 - _022523C8 - 2 ; case 5
	.short _022524CE - _022523C8 - 2 ; case 6
_022523D6:
	ldr r1, [r4, #0]
	ldr r0, _02252504 ; =0x00000848
	ldr r0, [r1, r0]
	bl ov17_0223F744
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022523EA:
	bl ov17_0223F760
	cmp r0, #1
	beq _022523F4
	b _022524FE
_022523F4:
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022523FE:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, _02252508 ; =0x0000046F
	mov r1, #0x1e
	bl sub_020055D0
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_02252428:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022524FE
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_0225243A:
	ldr r0, [r4, #0]
	bl ov17_02250A84
	ldr r0, [r4, #0]
	bl ov17_02250AD8
	ldr r0, [r4, #0]
	bl ov17_02250B00
	ldr r0, [r4, #0]
	bl ov17_02250D28
	ldr r0, [r4, #0]
	bl ov17_02250CEC
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, #0x34
	mov r2, #1
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, [r4, #0]
	mov r1, #0xff
	add r0, #0x34
	bl sub_0201ADA4
	ldr r0, [r4, #0]
	add r0, #0x34
	bl sub_0201A954
	mov r6, #0
	add r5, r6, #0
	mov r7, #6
_0225247E:
	ldr r0, [r4, #0]
	add r1, r7, #0
	add r0, r0, r5
	ldr r0, [r0, #0x18]
	mov r2, #1
	bl sub_02007DEC
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0225247E
	ldr r1, [r4, #0]
	ldr r0, _0225250C ; =0x0000127F
	mov r2, #1
	strb r2, [r1, r0]
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022524A6:
	bl sub_02005684
	cmp r0, #0
	bne _022524FE
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022524CE:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022524FE
	ldr r0, _02252510 ; =0x0000049D
	bl sub_0200549C
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022524E6:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_022524FE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02252504: .word 0x00000848
_02252508: .word 0x0000046F
_0225250C: .word 0x0000127F
_02252510: .word 0x0000049D
	thumb_func_end ov17_022523AC

	thumb_func_start ov17_02252514
ov17_02252514: ; 0x02252514
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252514

	thumb_func_start ov17_02252528
ov17_02252528: ; 0x02252528
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x18
	str r1, [sp]
	add r1, r0, #0
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	mov r2, #0
	str r0, [r4, #0]
	ldrh r0, [r6]
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0225255C:
	add r0, r5, r2
	ldrb r1, [r0, #3]
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #0x11]
	cmp r2, #4
	blt _0225255C
	ldr r0, _02252578 ; =ov17_02252580
	ldr r2, _0225257C ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252578: .word ov17_02252580
_0225257C: .word 0x00007530
	thumb_func_end ov17_02252528

	thumb_func_start ov17_02252580
ov17_02252580: ; 0x02252580
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #4
	bhi _022525F2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02252598: ; jump table
	.short _022525A2 - _02252598 - 2 ; case 0
	.short _022525A8 - _02252598 - 2 ; case 1
	.short _022525C6 - _02252598 - 2 ; case 2
	.short _022525E0 - _02252598 - 2 ; case 3
	.short _022525F2 - _02252598 - 2 ; case 4
_022525A2:
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525A8:
	ldrb r1, [r4, #0x15]
	mov r0, #3
	sub r2, r0, r1
	add r1, r4, r2
	ldrb r1, [r1, #0x11]
	ldr r0, [r4, #0]
	bl ov17_0225131C
	ldrb r0, [r4, #0x15]
	add r0, r0, #1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525C6:
	mov r0, #0x16
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x16]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0225260A
	mov r0, #0
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525E0:
	ldrb r1, [r4, #0x15]
	cmp r1, #4
	bhs _022525EC
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525EC:
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525F2:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0225260A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02252580

	thumb_func_start ov17_0225260C
ov17_0225260C: ; 0x0225260C
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0225260C

	thumb_func_start ov17_02252620
ov17_02252620: ; 0x02252620
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x18
	add r7, r1, #0
	add r1, r0, #0
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02252664 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x11]
	ldr r0, _02252668 ; =ov17_0225266C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252664: .word 0x00007530
_02252668: .word ov17_0225266C
	thumb_func_end ov17_02252620

	thumb_func_start ov17_0225266C
ov17_0225266C: ; 0x0225266C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #6
	bhi _02252774
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02252686: ; jump table
	.short _02252694 - _02252686 - 2 ; case 0
	.short _022526BC - _02252686 - 2 ; case 1
	.short _022526CA - _02252686 - 2 ; case 2
	.short _022526E2 - _02252686 - 2 ; case 3
	.short _022526F0 - _02252686 - 2 ; case 4
	.short _02252746 - _02252686 - 2 ; case 5
	.short _02252758 - _02252686 - 2 ; case 6
_02252694:
	ldr r0, [r4, #0]
	bl ov17_02250FE4
	add r2, r4, #0
	ldr r0, [r4, #0]
	mov r1, #0
	add r2, #0x12
	bl ov17_02251598
	ldr r0, _02252790 ; =0x0000049E
	bl sub_0200549C
	ldr r0, _02252794 ; =0x000006E5
	bl sub_02005748
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526BC:
	ldrb r1, [r4, #0x12]
	cmp r1, #1
	bne _0225278C
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526CA:
	ldrb r1, [r4, #0x11]
	add r3, r4, #0
	ldr r0, [r4, #0]
	mov r2, #0
	add r3, #0x13
	bl ov17_02251718
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526E2:
	ldrb r1, [r4, #0x13]
	cmp r1, #1
	bne _0225278C
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526F0:
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0x10]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #5
	bl sub_02074470
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0x10]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x70
	bl sub_02074470
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r2, #0x7f
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	ldrb r6, [r4, #0x11]
	ldr r0, [r0, #0]
	add r2, #0xdd
	lsl r6, r6, #2
	add r0, r0, r6
	ldr r0, [r0, r2]
	lsl r2, r5, #0x10
	lsr r2, r2, #0x10
	bl sub_02077D3C
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02252746:
	bl sub_0200598C
	cmp r0, #0
	bne _0225278C
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02252758:
	mov r0, #0x14
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x14]
	ldrsh r0, [r4, r0]
	cmp r0, #0x3c
	ble _0225278C
	mov r0, #0
	strh r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02252774:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0225278C:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02252790: .word 0x0000049E
_02252794: .word 0x000006E5
	thumb_func_end ov17_0225266C

	thumb_func_start ov17_02252798
ov17_02252798: ; 0x02252798
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252798

	thumb_func_start ov17_022527AC
ov17_022527AC: ; 0x022527AC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	mov r0, #0x18
	mov r1, #0x24
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x24
	bl sub_020C4CF4
	str r5, [r4, #0]
	ldrh r0, [r6]
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r0, [r4, #0xc]
	ldrb r0, [r7, #7]
	strb r0, [r4, #0x11]
	ldrb r0, [r7, #7]
	cmp r0, #0
	beq _022527F2
	cmp r0, #1
	beq _02252808
	cmp r0, #2
	beq _0225281E
	b _02252834
_022527F2:
	ldr r0, _02252844 ; =0x0000041E
	mov r2, #0
	add r3, r4, #0
_022527F8:
	ldrsh r1, [r5, r0]
	add r2, r2, #1
	add r5, r5, #2
	strh r1, [r3, #0x14]
	add r3, r3, #2
	cmp r2, #4
	blt _022527F8
	b _02252838
_02252808:
	ldr r0, _02252848 ; =0x00000426
	mov r3, #0
	add r2, r4, #0
_0225280E:
	ldrsh r1, [r5, r0]
	add r3, r3, #1
	add r5, r5, #2
	strh r1, [r2, #0x14]
	add r2, r2, #2
	cmp r3, #4
	blt _0225280E
	b _02252838
_0225281E:
	ldr r0, _0225284C ; =0x0000042E
	mov r3, #0
	add r2, r4, #0
_02252824:
	ldrsh r1, [r5, r0]
	add r3, r3, #1
	add r5, r5, #2
	strh r1, [r2, #0x14]
	add r2, r2, #2
	cmp r3, #4
	blt _02252824
	b _02252838
_02252834:
	bl sub_02022974
_02252838:
	ldr r0, _02252850 ; =ov17_02252858
	ldr r2, _02252854 ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02252844: .word 0x0000041E
_02252848: .word 0x00000426
_0225284C: .word 0x0000042E
_02252850: .word ov17_02252858
_02252854: .word 0x00007530
	thumb_func_end ov17_022527AC

	thumb_func_start ov17_02252858
ov17_02252858: ; 0x02252858
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #5
	bhi _02252948
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02252870: ; jump table
	.short _0225287C - _02252870 - 2 ; case 0
	.short _0225288A - _02252870 - 2 ; case 1
	.short _022528A4 - _02252870 - 2 ; case 2
	.short _022528C6 - _02252870 - 2 ; case 3
	.short _0225291C - _02252870 - 2 ; case 4
	.short _02252948 - _02252870 - 2 ; case 5
_0225287C:
	ldr r0, _02252964 ; =0x000006FA
	bl sub_02005748
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0225288A:
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0x2d
	ble _02252960
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_022528A4:
	mov r2, #0
	add r3, r4, #0
	mov r0, #0x14
_022528AA:
	ldrsh r1, [r3, r0]
	cmp r1, #0
	ble _022528B8
	ldr r0, _02252968 ; =0x000006FB
	bl sub_02005748
	b _022528C0
_022528B8:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #4
	blt _022528AA
_022528C0:
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_022528C6:
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #1
	blt _02252960
	mov r6, #0
	strh r6, [r4, #0x12]
	add r5, r6, #0
	mov r7, #0x14
_022528DC:
	ldr r0, [r4, #0]
	mov r2, #0x1c
	add r1, r0, r5
	mov r0, #0xf3
	lsl r0, r0, #2
	ldrb r1, [r1, r0]
	lsl r0, r1, #1
	add r0, r4, r0
	ldrsh r2, [r0, r2]
	add r2, r2, #1
	strh r2, [r0, #0x1c]
	mov r2, #0x1c
	ldrsh r3, [r0, r2]
	ldrsh r0, [r0, r7]
	cmp r3, r0
	bgt _02252908
	str r5, [sp]
	ldrb r2, [r4, #0x11]
	ldr r0, [r4, #0]
	bl ov17_022513F4
	b _0225290A
_02252908:
	add r6, r6, #1
_0225290A:
	add r5, r5, #1
	cmp r5, #4
	blt _022528DC
	cmp r6, #4
	blt _02252960
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0225291C:
	mov r3, #0
	add r2, r4, #0
	mov r0, #0x14
_02252922:
	ldrsh r1, [r2, r0]
	cmp r1, #0
	ble _02252930
	ldr r0, _0225296C ; =0x000006F9
	bl sub_02005748
	b _02252938
_02252930:
	add r3, r3, #1
	add r2, r2, #2
	cmp r3, #4
	blt _02252922
_02252938:
	ldr r0, _02252964 ; =0x000006FA
	mov r1, #0
	bl sub_020057A4
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02252948:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02252960:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252964: .word 0x000006FA
_02252968: .word 0x000006FB
_0225296C: .word 0x000006F9
	thumb_func_end ov17_02252858

	thumb_func_start ov17_02252970
ov17_02252970: ; 0x02252970
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252970

	thumb_func_start ov17_02252984
ov17_02252984: ; 0x02252984
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x18
	mov r1, #0x14
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _022529C0 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _022529C4 ; =ov17_022529C8
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022529C0: .word 0x00007530
_022529C4: .word ov17_022529C8
	thumb_func_end ov17_02252984

	thumb_func_start ov17_022529C8
ov17_022529C8: ; 0x022529C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _022529DE
	cmp r0, #1
	beq _022529FE
	cmp r0, #2
	beq _02252A2E
	b _02252A48
_022529DE:
	mov r0, #3
	str r0, [sp]
	mov r0, #0x5a
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, _02252A64 ; =0x0000049E
	mov r1, #0x5a
	bl sub_020055D0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022529FE:
	mov r0, #3
	bl sub_0200AC1C
	cmp r0, #1
	bne _02252A60
	bl sub_02005684
	cmp r0, #0
	bne _02252A60
	ldr r0, [r4, #0]
	bl ov17_02251020
	ldr r0, _02252A68 ; =0x0400006C
	mov r1, #0x10
	bl sub_020BDEC4
	ldr r0, _02252A6C ; =0x0400106C
	mov r1, #0x10
	bl sub_020BDEC4
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02252A2E:
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0x3c
	ble _02252A60
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02252A48:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02252A60:
	pop {r3, r4, r5, pc}
	nop
_02252A64: .word 0x0000049E
_02252A68: .word 0x0400006C
_02252A6C: .word 0x0400106C
	thumb_func_end ov17_022529C8

	thumb_func_start ov17_02252A70
ov17_02252A70: ; 0x02252A70
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r7, r1, #0
	add r4, r6, #0
_02252A7A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202A488
	cmp r0, #1
	bne _02252A92
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202A580
	ldrb r0, [r7, r0]
	add r6, r6, r0
_02252A92:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02252A7A
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02252A70

	thumb_func_start ov17_02252A9C
ov17_02252A9C: ; 0x02252A9C
	push {r3, lr}
	add r3, r0, #0
	mov r2, #0
	mov r0, #0x5a
	add r1, r1, #3
	str r2, [sp]
	bl sub_02006FE8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252A9C

	thumb_func_start ov17_02252AB0
ov17_02252AB0: ; 0x02252AB0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	add r6, r3, #0
	str r0, [sp, #0x14]
	add r0, r2, #0
	mov r1, #3
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0200CD7C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0xfa
	str r6, [sp, #8]
	bl sub_0200CBDC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0xfb
	bl sub_0200CE0C
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0xfc
	bl sub_0200CE3C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02252AB0

	thumb_func_start ov17_02252B20
ov17_02252B20: ; 0x02252B20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0200D070
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D080
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200D090
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl sub_0200D0A0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02252B20

	thumb_func_start ov17_02252B48
ov17_02252B48: ; 0x02252B48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r3, #0
	mov ip, r2
	ldr r3, _02252BC0 ; =0x02254D9C
	add r6, r0, #0
	add r7, r1, #0
	add r2, sp, #4
	mov r4, #6
_02252B5A:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _02252B5A
	ldr r0, [r3, #0]
	mov r1, #0x18
	str r0, [r2, #0]
	ldr r0, [sp, #0x50]
	str r5, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x30]
	mov r0, ip
	bl sub_02018144
	mov r1, #0
	mov r2, #0x18
	str r0, [sp]
	bl sub_020C4CF4
	ldr r5, [sp]
	mov r4, #0
_02252B92:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #4
	bl sub_0200CE6C
	mov r1, #0
	stmia r5!, {r0}
	bl sub_0200D3F4
	add r4, r4, #1
	cmp r4, #5
	blt _02252B92
	ldr r0, _02252BC4 ; =ov17_02252CB8
	ldr r1, [sp]
	ldr r2, _02252BC8 ; =0x00009C40
	bl sub_0200D9E8
	ldr r1, [sp]
	str r0, [r1, #0x14]
	add r0, r1, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252BC0: .word 0x02254D9C
_02252BC4: .word ov17_02252CB8
_02252BC8: .word 0x00009C40
	thumb_func_end ov17_02252B48

	thumb_func_start ov17_02252BCC
ov17_02252BCC: ; 0x02252BCC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02252BD4:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _02252BD4
	ldr r0, [r6, #0x14]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02252BCC

	thumb_func_start ov17_02252BF0
ov17_02252BF0: ; 0x02252BF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r4, [sp, #0x24]
	add r6, r3, #0
	ldr r0, [r5, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r2, [sp, #0x10]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0xc]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_0200D500
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_0200D364
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl sub_0200D364
	mov r4, #0
	mov r6, #1
_02252C66:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02252C66
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02252BF0

	thumb_func_start ov17_02252C78
ov17_02252C78: ; 0x02252C78
	push {r4, lr}
	sub sp, #0x18
	add r4, r2, #0
	str r3, [sp]
	ldr r2, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x24]
	str r2, [sp, #0x14]
	add r2, r3, #0
	add r3, r4, #0
	bl ov17_02252BF0
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02252C78

	thumb_func_start ov17_02252C9C
ov17_02252C9C: ; 0x02252C9C
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_02252CA4:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _02252CA4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02252C9C

	thumb_func_start ov17_02252CB8
ov17_02252CB8: ; 0x02252CB8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6, #0]
	bl sub_0200D408
	cmp r0, #0
	beq _02252CE8
	mov r4, #0
	add r5, r6, #0
_02252CCA:
	ldr r0, [r5, #0]
	bl sub_0200D330
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02252CCA
	ldr r0, [r6, #0x10]
	bl sub_0200D408
	cmp r0, #1
	bne _02252CE8
	ldr r0, [r6, #0x10]
	bl sub_0200D330
_02252CE8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02252CB8

	thumb_func_start ov17_02252CEC
ov17_02252CEC: ; 0x02252CEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	add r6, r1, #0
	ldrb r1, [r3, r0]
	str r2, [sp]
	cmp r1, #0
	bne _02252D08
	sub r0, r0, #4
	ldr r1, [r3, r0]
	ldr r0, _02252D6C ; =0x000004FC
	add r4, r1, r0
	b _02252D3A
_02252D08:
	cmp r1, #1
	bne _02252D16
	sub r0, r0, #4
	ldr r1, [r3, r0]
	ldr r0, _02252D70 ; =0x00001174
	add r4, r1, r0
	b _02252D3A
_02252D16:
	cmp r1, #2
	bne _02252D26
	sub r0, r0, #4
	ldr r1, [r3, r0]
	mov r0, #0xc3
	lsl r0, r0, #4
	add r4, r1, r0
	b _02252D3A
_02252D26:
	cmp r1, #3
	bne _02252D34
	sub r0, r0, #4
	ldr r1, [r3, r0]
	ldr r0, _02252D74 ; =0x0000085C
	add r4, r1, r0
	b _02252D3A
_02252D34:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_02252D3A:
	mov r0, #2
	lsl r0, r0, #8
	cmp r6, r0
	ble _02252D46
	bl sub_02022974
_02252D46:
	ldr r0, _02252D78 ; =0x00000A11
	add r7, r4, r0
	ldrb r0, [r7, r5]
	cmp r0, #0
	beq _02252D54
	bl sub_02022974
_02252D54:
	mov r1, #0x21
	lsl r1, r1, #4
	add r2, r4, r1
	lsl r1, r5, #9
	add r1, r2, r1
	ldr r0, [sp]
	add r2, r6, #0
	bl sub_020C4DB0
	mov r0, #1
	strb r0, [r7, r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02252D6C: .word 0x000004FC
_02252D70: .word 0x00001174
_02252D74: .word 0x0000085C
_02252D78: .word 0x00000A11
	thumb_func_end ov17_02252CEC

	thumb_func_start ov17_02252D7C
ov17_02252D7C: ; 0x02252D7C
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldr r3, _02252D88 ; =ov17_0224B20C
	add r1, r2, #0
	bx r3
	; .align 2, 0
_02252D88: .word ov17_0224B20C
	thumb_func_end ov17_02252D7C
	; 0x02252D8C


	.rodata
	.incbin "incbin/overlay17_rodata.bin"
