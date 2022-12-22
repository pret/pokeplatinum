	.include "macros/function.inc"
	.include "include/ov17_0223DAD0.inc"

	

	.text


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
	bl MI_CpuFill8
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
	bl G2x_SetBlendBrightness_
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
	bl MI_CpuFill8
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
	bl MI_CpuFill8
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
	bl MI_CpuFill8
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
	bl _u32_div_f
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
	bl MIi_CpuCopy16
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
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
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
	bl MIi_CpuCopy16
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
	bl _s32_div_f
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
	bl _ull_div
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
	bl _u32_div_f
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

	.rodata


	.global Unk_ov17_02252FC4
Unk_ov17_02252FC4: ; 0x02252FC4
	.incbin "incbin/overlay17_rodata.bin", 0x238, 0x240 - 0x238

	.global Unk_ov17_02252FCC
Unk_ov17_02252FCC: ; 0x02252FCC
	.incbin "incbin/overlay17_rodata.bin", 0x240, 0x250 - 0x240

	.global Unk_ov17_02252FDC
Unk_ov17_02252FDC: ; 0x02252FDC
	.incbin "incbin/overlay17_rodata.bin", 0x250, 0x264 - 0x250

	.global Unk_ov17_02252FF0
Unk_ov17_02252FF0: ; 0x02252FF0
	.incbin "incbin/overlay17_rodata.bin", 0x264, 0x27C - 0x264

	.global Unk_ov17_02253008
Unk_ov17_02253008: ; 0x02253008
	.incbin "incbin/overlay17_rodata.bin", 0x27C, 0x29C - 0x27C

	.global Unk_ov17_02253028
Unk_ov17_02253028: ; 0x02253028
	.incbin "incbin/overlay17_rodata.bin", 0x29C, 0x2C4 - 0x29C

	.global Unk_ov17_02253050
Unk_ov17_02253050: ; 0x02253050
	.incbin "incbin/overlay17_rodata.bin", 0x2C4, 0x2F8 - 0x2C4

	.global Unk_ov17_02253084
Unk_ov17_02253084: ; 0x02253084
	.incbin "incbin/overlay17_rodata.bin", 0x2F8, 0x34C - 0x2F8

	.global Unk_ov17_022530D8
Unk_ov17_022530D8: ; 0x022530D8
	.incbin "incbin/overlay17_rodata.bin", 0x34C, 0x3A0 - 0x34C

	.global Unk_ov17_0225312C
Unk_ov17_0225312C: ; 0x0225312C
	.incbin "incbin/overlay17_rodata.bin", 0x3A0, 0xA0

