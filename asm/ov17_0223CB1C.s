	.include "macros/function.inc"
	.include "include/ov17_0223CB1C.inc"

	

	.text


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
	bl MI_CpuFill8
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
	bl MI_CpuFill8
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
	bl MI_CpuFill8
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
	bl MI_CpuFill8
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
	bl GF_AssertFail
_0223D378:
	cmp r5, #0
	bne _0223D380
	bl GF_AssertFail
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
	bl GF_AssertFail
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

	.rodata


	.global Unk_ov17_02252EA4
Unk_ov17_02252EA4: ; 0x02252EA4
	.incbin "incbin/overlay17_rodata.bin", 0x118, 0x128 - 0x118

	.global Unk_ov17_02252EB4
Unk_ov17_02252EB4: ; 0x02252EB4
	.incbin "incbin/overlay17_rodata.bin", 0x128, 0x13C - 0x128

	.global Unk_ov17_02252EC8
Unk_ov17_02252EC8: ; 0x02252EC8
	.incbin "incbin/overlay17_rodata.bin", 0x13C, 0x154 - 0x13C

	.global Unk_ov17_02252EE0
Unk_ov17_02252EE0: ; 0x02252EE0
	.incbin "incbin/overlay17_rodata.bin", 0x154, 0x170 - 0x154

	.global Unk_ov17_02252EFC
Unk_ov17_02252EFC: ; 0x02252EFC
	.incbin "incbin/overlay17_rodata.bin", 0x170, 0x190 - 0x170

	.global Unk_ov17_02252F1C
Unk_ov17_02252F1C: ; 0x02252F1C
	.incbin "incbin/overlay17_rodata.bin", 0x190, 0x1B8 - 0x190

	.global Unk_ov17_02252F44
Unk_ov17_02252F44: ; 0x02252F44
	.incbin "incbin/overlay17_rodata.bin", 0x1B8, 0x1E4 - 0x1B8

	.global Unk_ov17_02252F70
Unk_ov17_02252F70: ; 0x02252F70
	.incbin "incbin/overlay17_rodata.bin", 0x1E4, 0x54

