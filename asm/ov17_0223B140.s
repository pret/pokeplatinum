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

	.rodata


	.global Unk_ov17_02252D8C
Unk_ov17_02252D8C: ; 0x02252D8C
	.incbin "incbin/overlay17_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov17_02252D9C
Unk_ov17_02252D9C: ; 0x02252D9C
	.incbin "incbin/overlay17_rodata.bin", 0x10, 0x24 - 0x10

	.global Unk_ov17_02252DB0
Unk_ov17_02252DB0: ; 0x02252DB0
	.incbin "incbin/overlay17_rodata.bin", 0x24, 0x3C - 0x24

	.global Unk_ov17_02252DC8
Unk_ov17_02252DC8: ; 0x02252DC8
	.incbin "incbin/overlay17_rodata.bin", 0x3C, 0x5C - 0x3C

	.global Unk_ov17_02252DE8
Unk_ov17_02252DE8: ; 0x02252DE8
	.incbin "incbin/overlay17_rodata.bin", 0x5C, 0x84 - 0x5C

	.global Unk_ov17_02252E10
Unk_ov17_02252E10: ; 0x02252E10
	.incbin "incbin/overlay17_rodata.bin", 0x84, 0xC4 - 0x84

	.global Unk_ov17_02252E50
Unk_ov17_02252E50: ; 0x02252E50
	.incbin "incbin/overlay17_rodata.bin", 0xC4, 0x54

