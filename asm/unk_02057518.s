	.include "macros/function.inc"
	.include "include/unk_02057518.inc"

	

	.text


	thumb_func_start sub_02057518
sub_02057518: ; 0x02057518
	ldr r0, _02057520 ; =0x021C0848
	ldr r0, [r0, #0]
	bx lr
	nop
_02057520: .word 0x021C0848
	thumb_func_end sub_02057518

	thumb_func_start sub_02057524
sub_02057524: ; 0x02057524
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, _02057638 ; =0x021C0848
	add r5, r2, #0
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02057536
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02057536:
	bne _02057544
	mov r2, #0xb1
	str r0, [r1, #0]
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
_02057544:
	ldr r1, _02057638 ; =0x021C0848
	ldr r0, _0205763C ; =0x000002BE
	ldr r2, [r1, #0]
	strb r5, [r2, r0]
	mov r2, #0
	ldr r0, [r1, #0]
	cmp r5, #0
	str r2, [r0, #4]
	beq _02057570
	bl ov23_02249918
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _02057638 ; =0x021C0848
	ldr r2, [r1, #0]
	str r0, [r2, #4]
	ldr r0, [r1, #0]
	ldr r0, [r0, #4]
	bl ov23_0224991C
_02057570:
	ldr r0, _02057638 ; =0x021C0848
	ldr r7, _02057640 ; =0x0000FFFF
	ldr r1, [r0, #0]
	str r4, [r1, #0x54]
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
_0205757E:
	ldr r4, [r0, #0]
	add r5, r4, r2
	mov r4, #0
	add r5, #0xa6
	mvn r4, r4
	strb r4, [r5]
	ldr r4, [r0, #0]
	add r4, r4, r2
	add r4, #0xa2
	strh r7, [r4]
	ldr r4, [r0, #0]
	add r4, r4, r2
	add r4, #0xa4
	strh r7, [r4]
	ldr r4, [r0, #0]
	add r5, r4, r2
	add r5, #0xa7
	mov r4, #2
	strb r4, [r5]
	ldr r4, [r0, #0]
	add r5, r4, r2
	mov r4, #0
	add r5, #0x66
	mvn r4, r4
	strb r4, [r5]
	ldr r4, [r0, #0]
	add r4, r4, r2
	add r4, #0x62
	strh r7, [r4]
	ldr r4, [r0, #0]
	add r4, r4, r2
	add r4, #0x64
	strh r7, [r4]
	ldr r4, [r0, #0]
	add r5, r4, r2
	add r5, #0x67
	mov r4, #2
	strb r4, [r5]
	ldr r4, [r0, #0]
	ldr r5, _02057644 ; =0x00000102
	add r6, r4, r1
	mov r4, #0
	mvn r4, r4
	strb r4, [r6, r5]
	ldr r4, [r0, #0]
	add r2, #8
	add r5, r4, r1
	add r5, #0xe2
	mov r4, #0
	strb r4, [r5]
	ldr r4, [r0, #0]
	add r5, r4, r1
	add r5, #0xea
	mov r4, #1
	strb r4, [r5]
	ldr r4, [r0, #0]
	add r5, r4, r1
	add r5, #0xf2
	mov r4, #0
	strb r4, [r5]
	ldr r4, [r0, #0]
	mov r5, #0xff
	add r6, r4, r3
	add r4, r5, #0
	add r4, #0x6b
	add r1, r1, #1
	add r3, #0x22
	strh r5, [r6, r4]
	cmp r1, #8
	blt _0205757E
	ldr r2, _02057638 ; =0x021C0848
	mov r1, #0xaf
	ldr r3, [r2, #0]
	lsl r1, r1, #2
	mov r0, #0
	strb r0, [r3, r1]
	ldr r2, [r2, #0]
	add r1, r1, #3
	strb r0, [r2, r1]
	ldr r0, _02057648 ; =sub_02057E80
	mov r1, #0
	mov r2, #0xc8
	bl sub_0200D9E8
	ldr r1, _02057638 ; =0x021C0848
	ldr r1, [r1, #0]
	str r0, [r1, #0x50]
	bl sub_02035EA8
	bl sub_020578DC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02057638: .word 0x021C0848
_0205763C: .word 0x000002BE
_02057640: .word 0x0000FFFF
_02057644: .word 0x00000102
_02057648: .word sub_02057E80
	thumb_func_end sub_02057524

	thumb_func_start sub_0205764C
sub_0205764C: ; 0x0205764C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02057698 ; =0x021C0848
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02057696
	ldr r6, _0205769C ; =0x000002BE
	mov r5, #0
	mov r7, #1
_0205765C:
	ldr r0, [r4, #0]
	ldrb r0, [r0, r6]
	cmp r0, #0
	beq _02057672
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	mov r2, #0
	bl sub_02057DB8
	b _0205767E
_02057672:
	lsl r0, r5, #0x18
	mov r1, #1
	lsr r0, r0, #0x18
	add r2, r1, #0
	bl sub_02057DB8
_0205767E:
	add r5, r5, #1
	cmp r5, #8
	blt _0205765C
	ldr r0, _02057698 ; =0x021C0848
	ldr r2, [r0, #0]
	ldr r0, _0205769C ; =0x000002BE
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02057696
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r2, r0]
_02057696:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02057698: .word 0x021C0848
_0205769C: .word 0x000002BE
	thumb_func_end sub_0205764C

	thumb_func_start sub_020576A0
sub_020576A0: ; 0x020576A0
	push {r3, lr}
	ldr r1, _020576C4 ; =0x021C0848
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _020576C2
	ldr r0, _020576C8 ; =0x000002BB
	mov r2, #1
	strb r2, [r3, r0]
	ldr r1, [r1, #0]
	mov r2, #0
	add r0, r0, #2
	strb r2, [r1, r0]
	bl sub_020578DC
	mov r0, #1
	bl sub_02057AE4
_020576C2:
	pop {r3, pc}
	; .align 2, 0
_020576C4: .word 0x021C0848
_020576C8: .word 0x000002BB
	thumb_func_end sub_020576A0

	thumb_func_start sub_020576CC
sub_020576CC: ; 0x020576CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0205775C ; =0x021C0848
	add r6, r0, #0
	ldr r0, [r7, #0]
	cmp r0, #0
	beq _0205775A
	mov r4, #0
	add r5, r4, #0
_020576DC:
	ldr r0, [r7, #0]
	add r1, r0, r5
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _020576FA
	bl sub_020181C4
	ldr r0, [r7, #0]
	mov r1, #0
	add r2, r0, r5
	mov r0, #0x9f
	lsl r0, r0, #2
	str r1, [r2, r0]
_020576FA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _020576DC
	ldr r0, _0205775C ; =0x021C0848
	ldr r2, [r0, #0]
	ldr r0, _02057760 ; =0x000002B2
	ldrh r1, [r2, r0]
	cmp r1, #5
	blo _02057714
	ldr r0, [r2, #0x54]
	bl sub_0206DF60
_02057714:
	mov r4, #0
	add r5, r4, #0
_02057718:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02057DB8
	add r4, r4, #1
	cmp r4, #8
	blt _02057718
	ldr r0, _0205775C ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	bl sub_0200DA58
	ldr r0, _0205775C ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0205774C
	bl ov23_02249938
	ldr r0, _0205775C ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_020181C4
_0205774C:
	ldr r0, _0205775C ; =0x021C0848
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0205775C ; =0x021C0848
	mov r1, #0
	str r1, [r0, #0]
_0205775A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205775C: .word 0x021C0848
_02057760: .word 0x000002B2
	thumb_func_end sub_020576CC

	thumb_func_start sub_02057764
sub_02057764: ; 0x02057764
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _0205788C ; =0x021C0848
	add r7, r4, #0
	add r5, r4, #0
_0205776E:
	ldr r1, [r6, #0]
	ldr r0, _02057890 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0205778E
	add r0, r4, #0
	bl ov23_0224AF4C
	add r0, r4, #0
	bl ov23_0224AD98
	cmp r4, #0
	beq _0205778E
	add r0, r4, #0
	bl ov23_0224AE60
_0205778E:
	ldr r1, [r6, #0]
	add r0, r1, r7
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020577B4
	ldr r2, [r1, #0x54]
	ldr r2, [r2, #0x3c]
	cmp r2, r0
	beq _020577AC
	ldr r2, _02057890 ; =0x000002BE
	ldrb r1, [r1, r2]
	cmp r1, #0
	beq _020577AC
	bl sub_0205E8E8
_020577AC:
	ldr r0, [r6, #0]
	add r1, r0, r7
	mov r0, #0
	str r0, [r1, #8]
_020577B4:
	ldr r0, [r6, #0]
	add r7, r7, #4
	add r1, r0, r4
	add r1, #0x48
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	mov r0, #0
	add r1, #0xa6
	mvn r0, r0
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _02057894 ; =0x0000FFFF
	add r1, #0xa2
	strh r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _02057894 ; =0x0000FFFF
	add r1, #0xa4
	strh r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	add r1, #0xa7
	mov r0, #2
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	mov r0, #0
	add r1, #0x66
	mvn r0, r0
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _02057894 ; =0x0000FFFF
	add r1, #0x62
	strh r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _02057894 ; =0x0000FFFF
	add r1, #0x64
	strh r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	add r1, #0x67
	mov r0, #2
	strb r0, [r1]
	ldr r0, [r6, #0]
	mov r1, #0
	add r2, r0, r4
	ldr r0, _02057898 ; =0x00000102
	mvn r1, r1
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	mov r1, #0
	add r2, r0, r4
	ldr r0, _0205789C ; =0x0000010A
	add r5, #8
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	add r1, r0, r4
	add r1, #0xe2
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r4
	add r1, #0xea
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r6, #0]
	add r1, r0, r4
	add r1, #0xf2
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r6, #0]
	mov r1, #0
	add r2, r0, r4
	ldr r0, _020578A0 ; =0x0000013A
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	add r2, r0, r4
	ldr r0, _020578A4 ; =0x00000142
	add r4, r4, #1
	strb r1, [r2, r0]
	cmp r4, #8
	blt _0205776E
	ldr r0, _0205788C ; =0x021C0848
	ldr r1, _020578A8 ; =0x000002BF
	ldr r2, [r0, #0]
	mov r0, #0
	strb r0, [r2, r1]
	bl sub_020578DC
	ldr r0, _0205788C ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	bne _0205788A
	ldr r0, _020578AC ; =sub_02057E80
	mov r1, #0
	mov r2, #0xc8
	bl sub_0200D9E8
	ldr r1, _0205788C ; =0x021C0848
	ldr r1, [r1, #0]
	str r0, [r1, #0x50]
_0205788A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205788C: .word 0x021C0848
_02057890: .word 0x000002BE
_02057894: .word 0x0000FFFF
_02057898: .word 0x00000102
_0205789C: .word 0x0000010A
_020578A0: .word 0x0000013A
_020578A4: .word 0x00000142
_020578A8: .word 0x000002BF
_020578AC: .word sub_02057E80
	thumb_func_end sub_02057764

	thumb_func_start sub_020578B0
sub_020578B0: ; 0x020578B0
	push {r3, lr}
	ldr r0, _020578D8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _020578CE
	mov r0, #0
	add r1, r0, #0
	bl sub_02057E80
	ldr r0, _020578D8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	bl sub_0200DA58
_020578CE:
	ldr r0, _020578D8 ; =0x021C0848
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x50]
	pop {r3, pc}
	; .align 2, 0
_020578D8: .word 0x021C0848
	thumb_func_end sub_020578B0

	thumb_func_start sub_020578DC
sub_020578DC: ; 0x020578DC
	push {r4, lr}
	bl sub_0203608C
	ldr r1, _020579B8 ; =0x021C0848
	lsl r0, r0, #2
	ldr r2, [r1, #0]
	ldr r1, [r2, #0x54]
	add r0, r2, r0
	ldr r1, [r1, #0x3c]
	str r1, [r0, #8]
	bl sub_0203608C
	ldr r1, _020579B8 ; =0x021C0848
	mov r2, #1
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0x48
	strb r2, [r0]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0xa2
	strh r0, [r1]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0xa4
	strh r0, [r1]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0xa6
	strb r0, [r1]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0x62
	strh r0, [r1]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0x64
	strh r0, [r1]
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _020579B8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	ldr r1, _020579B8 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0x66
	strb r0, [r1]
	pop {r4, pc}
	nop
_020579B8: .word 0x021C0848
	thumb_func_end sub_020578DC

	thumb_func_start sub_020579BC
sub_020579BC: ; 0x020579BC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, _02057A8C ; =0x021C0848
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02057A90 ; =0x000002BF
	strb r2, [r1, r0]
	bl sub_0203608C
	ldr r2, _02057A8C ; =0x021C0848
	add r1, r0, #0
	ldr r4, [r2, #0]
	lsl r6, r1, #2
	ldr r0, [r4, #0x54]
	ldr r3, [r0, #0x3c]
	add r0, r4, r6
	str r3, [r0, #8]
	ldr r0, [r2, #0]
	mov r3, #1
	add r0, r0, r1
	add r0, #0x48
	strb r3, [r0]
	ldr r0, [sp]
	ldr r3, [r2, #0]
	lsl r5, r0, #3
	add r0, r3, r5
	add r0, #0xa2
	lsl r4, r1, #3
	add r3, r3, r4
	ldrh r0, [r0]
	add r3, #0xa2
	strh r0, [r3]
	ldr r3, [r2, #0]
	add r0, r3, r5
	add r0, #0xa4
	add r3, r3, r4
	ldrh r0, [r0]
	add r3, #0xa4
	strh r0, [r3]
	ldr r7, [r2, #0]
	mov r0, #0xa6
	add r3, r7, r5
	ldrsb r0, [r3, r0]
	add r3, r7, r4
	add r3, #0xa6
	strb r0, [r3]
	ldr r3, [r2, #0]
	mov r7, #0x29
	add r0, r3, r5
	add r0, #0x62
	add r3, r3, r4
	ldrh r0, [r0]
	add r3, #0x62
	lsl r7, r7, #4
	strh r0, [r3]
	ldr r3, [r2, #0]
	add r0, r3, r5
	add r0, #0x64
	add r3, r3, r4
	ldrh r0, [r0]
	add r3, #0x64
	strh r0, [r3]
	ldr r0, [r2, #0]
	mov r3, #0x66
	add r5, r0, r5
	add r0, r0, r4
	ldrsb r5, [r5, r3]
	add r0, #0x66
	strb r5, [r0]
	ldr r0, [sp]
	ldr r4, [r2, #0]
	lsl r5, r0, #2
	add r0, r4, r5
	ldr r0, [r0, r7]
	add r4, r4, r6
	str r0, [r4, r7]
	ldr r0, [r2, #0]
	mov r4, #0
	add r0, r0, r5
	str r4, [r0, r7]
	ldr r2, [r2, #0]
	add r0, r2, r6
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _02057A74
	add r3, #0xe4
	add r3, r2, r3
	mov r2, #0x22
	mul r2, r1
	add r1, r3, r2
	bl sub_02025E80
_02057A74:
	ldr r1, _02057A8C ; =0x021C0848
	mov r0, #0xff
	ldr r3, [r1, #0]
	ldr r1, [sp]
	mov r2, #0x22
	mul r2, r1
	add r1, r0, #0
	add r2, r3, r2
	add r1, #0x6b
	strh r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02057A8C: .word 0x021C0848
_02057A90: .word 0x000002BF
	thumb_func_end sub_020579BC

	thumb_func_start sub_02057A94
sub_02057A94: ; 0x02057A94
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02057ADC ; =0x021C0848
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	add r1, sp, #0
	strb r4, [r1]
	asr r2, r4, #8
	strb r2, [r1, #1]
	asr r2, r6, #8
	strb r6, [r1, #2]
	strb r2, [r1, #3]
	strb r0, [r1, #4]
	cmp r5, #0
	beq _02057AC6
	ldrb r2, [r1, #4]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r1, #4]
_02057AC6:
	mov r0, #0x16
	add r1, sp, #0
	bl sub_020360D0
	ldr r0, _02057ADC ; =0x021C0848
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02057AE0 ; =0x000002BB
	strb r2, [r1, r0]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02057ADC: .word 0x021C0848
_02057AE0: .word 0x000002BB
	thumb_func_end sub_02057A94

	thumb_func_start sub_02057AE4
sub_02057AE4: ; 0x02057AE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02057B10 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, _02057B10 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02057A94
	pop {r3, r4, r5, pc}
	nop
_02057B10: .word 0x021C0848
	thumb_func_end sub_02057AE4

	thumb_func_start sub_02057B14
sub_02057B14: ; 0x02057B14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203608C
	ldr r1, _02057B44 ; =0x021C0848
	lsl r0, r0, #3
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0x62
	ldrh r4, [r0]
	bl sub_0203608C
	ldr r1, _02057B44 ; =0x021C0848
	lsl r0, r0, #3
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0x64
	ldrh r2, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02057A94
	pop {r3, r4, r5, pc}
	nop
_02057B44: .word 0x021C0848
	thumb_func_end sub_02057B14

	thumb_func_start sub_02057B48
sub_02057B48: ; 0x02057B48
	push {r3, r4, r5, lr}
	sub sp, #8
	ldrh r2, [r1]
	mov r4, #0xf
	lsl r4, r4, #0xc
	ldrh r3, [r1, #2]
	cmp r2, r4
	blo _02057B5A
	sub r2, r4, #1
_02057B5A:
	mov r4, #0xf
	lsl r4, r4, #0xc
	cmp r3, r4
	blo _02057B64
	sub r3, r4, #1
_02057B64:
	mov r4, #0xf
	and r0, r4
	add r4, sp, #0
	strb r0, [r4]
	strb r2, [r4, #1]
	asr r2, r2, #8
	add r5, r2, #0
	mov r0, #1
	and r5, r0
	asr r2, r3, #7
	mov r0, #2
	and r0, r2
	add r0, r5, r0
	strb r0, [r4, #2]
	strb r3, [r4, #3]
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _02057B90
	ldrb r2, [r4, #2]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r4, #2]
_02057B90:
	mov r2, #4
	ldrsb r2, [r1, r2]
	add r5, sp, #0
	ldrb r0, [r5]
	lsr r4, r2, #0x1f
	lsl r3, r2, #0x1e
	sub r3, r3, r4
	mov r2, #0x1e
	ror r3, r2
	add r2, r4, r3
	lsl r2, r2, #4
	add r0, r0, r2
	strb r0, [r5]
	ldrb r0, [r1, #5]
	ldrb r2, [r5]
	add r1, sp, #0
	lsl r0, r0, #6
	add r0, r2, r0
	strb r0, [r5]
	mov r0, #0x17
	mov r2, #0
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02057B48

	thumb_func_start sub_02057BC4
sub_02057BC4: ; 0x02057BC4
	push {r3, r4, r5, lr}
	ldr r0, _02057C24 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB0C
	add r4, r0, #0
	ldr r0, _02057C24 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB14
	add r5, r0, #0
	cmp r4, #0
	bne _02057C0E
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02057C0E
	ldr r0, _02057C24 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02057C28 ; =0x000002BA
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02057C0E
	mov r0, #1
	bl sub_02057AE4
	ldr r0, _02057C24 ; =0x021C0848
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02057C28 ; =0x000002BA
	strb r2, [r1, r0]
_02057C0E:
	cmp r4, #1
	bne _02057C20
	cmp r5, #1
	bne _02057C20
	ldr r0, _02057C24 ; =0x021C0848
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02057C28 ; =0x000002BA
	strb r2, [r1, r0]
_02057C20:
	pop {r3, r4, r5, pc}
	nop
_02057C24: .word 0x021C0848
_02057C28: .word 0x000002BA
	thumb_func_end sub_02057BC4

	thumb_func_start sub_02057C2C
sub_02057C2C: ; 0x02057C2C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _02057C78 ; =0x021C0848
	add r5, r4, #0
	add r6, r4, #0
_02057C36:
	ldr r0, [r7, #0]
	add r2, r0, r4
	add r1, r2, #0
	add r1, #0x48
	ldrb r1, [r1]
	cmp r1, #0
	beq _02057C64
	ldr r3, _02057C7C ; =0x00000132
	add r1, r0, #0
	ldrb r3, [r2, r3]
	add r1, #0x62
	cmp r3, #0
	bne _02057C58
	ldr r3, _02057C80 ; =0x000002BB
	ldrb r0, [r0, r3]
	cmp r0, #0
	beq _02057C64
_02057C58:
	ldr r0, _02057C7C ; =0x00000132
	add r1, r1, r5
	strb r6, [r2, r0]
	add r0, r4, #0
	bl sub_02057B48
_02057C64:
	add r4, r4, #1
	add r5, #8
	cmp r4, #8
	blt _02057C36
	ldr r0, _02057C78 ; =0x021C0848
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02057C80 ; =0x000002BB
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02057C78: .word 0x021C0848
_02057C7C: .word 0x00000132
_02057C80: .word 0x000002BB
	thumb_func_end sub_02057C2C

	thumb_func_start sub_02057C84
sub_02057C84: ; 0x02057C84
	mov r0, #0xb1
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_02057C84

	thumb_func_start sub_02057C8C
sub_02057C8C: ; 0x02057C8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r1, _02057DAC ; =0x021C0848
	add r5, r0, #0
	ldr r2, [r1, #0]
	lsl r6, r5, #2
	add r1, r2, r6
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _02057CA2
	b _02057DA6
_02057CA2:
	ldr r1, _02057DB0 ; =0x000002BD
	ldrb r1, [r2, r1]
	cmp r1, #0
	bne _02057DA6
	bl sub_02032EE8
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _02057DA6
	ldr r0, _02057DAC ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02057DB4 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02057CE2
	bl sub_0203608C
	cmp r5, r0
	beq _02057CE2
	ldr r0, _02057DAC ; =0x021C0848
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #8
	ldr r0, [r0, #0x54]
	add r1, r5, r1
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	cmp r0, #0
	beq _02057CE2
	bl sub_02061AF4
_02057CE2:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	bl sub_02025FCC
	cmp r0, #0
	bne _02057CF4
	mov r0, #1
	str r0, [sp, #0x10]
_02057CF4:
	ldr r0, _02057DAC ; =0x021C0848
	lsl r4, r5, #3
	ldr r7, [r0, #0]
	ldr r0, [sp, #0x14]
	bl sub_02025F30
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r3, #0xa6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r7, #0x54]
	add r7, r7, r4
	add r1, r7, #0
	add r2, r7, #0
	add r1, #0xa2
	add r2, #0xa4
	ldrh r1, [r1]
	ldrh r2, [r2]
	ldrsb r3, [r7, r3]
	ldr r0, [r0, #0x38]
	bl sub_0205E7D0
	add r7, r0, #0
	bne _02057D2E
	bl GF_AssertFail
_02057D2E:
	ldr r0, _02057DAC ; =0x021C0848
	ldr r0, [r0, #0]
	add r0, r0, r6
	str r7, [r0, #8]
	add r0, r7, #0
	bl sub_0205EB3C
	mov r1, #1
	lsl r1, r1, #8
	add r1, r5, r1
	bl sub_0206290C
	ldr r0, _02057DAC ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02057DB4 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02057D58
	add r0, r5, #0
	bl ov23_02243038
_02057D58:
	ldr r0, _02057DAC ; =0x021C0848
	ldr r1, _02057DB4 ; =0x000002BE
	ldr r3, [r0, #0]
	ldrb r2, [r3, r1]
	cmp r2, #0
	beq _02057D9A
	add r0, r3, r5
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02057D9A
	sub r0, r1, #1
	ldrb r0, [r3, r0]
	cmp r0, #0
	bne _02057D8A
	add r1, r3, r4
	ldr r0, [r3, #0x54]
	add r3, r3, r4
	add r1, #0xa2
	add r3, #0xa4
	ldrh r1, [r1]
	ldrh r3, [r3]
	mov r2, #0
	bl ov5_021F5634
_02057D8A:
	ldr r0, _02057DAC ; =0x021C0848
	mov r1, #1
	ldr r0, [r0, #0]
	add sp, #0x18
	add r0, r0, r5
	add r0, #0x48
	strb r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02057D9A:
	cmp r2, #0
	bne _02057DA6
	add r0, r3, r5
	mov r1, #1
	add r0, #0x48
	strb r1, [r0]
_02057DA6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02057DAC: .word 0x021C0848
_02057DB0: .word 0x000002BD
_02057DB4: .word 0x000002BE
	thumb_func_end sub_02057C8C

	thumb_func_start sub_02057DB8
sub_02057DB8: ; 0x02057DB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02057E5C ; =0x021C0848
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r7, r2, #0
	cmp r0, #0
	beq _02057E58
	add r0, #0x5a
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	ldr r0, _02057E5C ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02057E60 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02057DE4
	add r0, r5, #0
	bl ov23_0224AF4C
_02057DE4:
	ldr r0, _02057E5C ; =0x021C0848
	lsl r4, r5, #2
	ldr r1, [r0, #0]
	add r0, r1, r4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02057E1A
	ldr r2, [r1, #0x54]
	ldr r2, [r2, #0x3c]
	cmp r2, r0
	beq _02057E10
	ldr r2, _02057E60 ; =0x000002BE
	ldrb r1, [r1, r2]
	cmp r1, #0
	bne _02057E06
	cmp r7, #0
	beq _02057E0C
_02057E06:
	bl sub_0205E8E8
	b _02057E10
_02057E0C:
	bl sub_0205E8E0
_02057E10:
	ldr r0, _02057E5C ; =0x021C0848
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	str r1, [r0, #8]
_02057E1A:
	ldr r0, _02057E5C ; =0x021C0848
	ldr r1, [r0, #0]
	add r1, #0x48
	ldrb r0, [r1, r5]
	cmp r0, #0
	beq _02057E2E
	cmp r6, #0
	bne _02057E2E
	mov r0, #0
	strb r0, [r1, r5]
_02057E2E:
	ldr r1, _02057E5C ; =0x021C0848
	mov r3, #1
	ldr r0, [r1, #0]
	add r2, r0, r5
	ldr r0, _02057E64 ; =0x00000132
	cmp r6, #0
	strb r3, [r2, r0]
	bne _02057E58
	ldr r0, [r1, #0]
	mov r2, #0
	add r0, r0, r5
	add r0, #0xfa
	strb r2, [r0]
	ldr r1, [r1, #0]
	ldr r0, _02057E60 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02057E58
	add r0, r5, #0
	bl ov23_0224AE60
_02057E58:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02057E5C: .word 0x021C0848
_02057E60: .word 0x000002BE
_02057E64: .word 0x00000132
	thumb_func_end sub_02057DB8

	thumb_func_start sub_02057E68
sub_02057E68: ; 0x02057E68
	ldr r1, _02057E78 ; =0x021BF67C
	mov r0, #2
	ldr r1, [r1, #0x44]
	tst r1, r0
	beq _02057E74
	mov r0, #1
_02057E74:
	ldr r3, _02057E7C ; =sub_02035E5C
	bx r3
	; .align 2, 0
_02057E78: .word 0x021BF67C
_02057E7C: .word sub_02035E5C
	thumb_func_end sub_02057E68

	thumb_func_start sub_02057E80
sub_02057E80: ; 0x02057E80
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl sub_02035E38
	cmp r0, #0
	beq _02057EC0
	bl sub_02057E68
	bl sub_0203608C
	cmp r0, #0
	bne _02057EB4
	add r0, r4, #0
	bl sub_02057C2C
	add r0, r4, #0
	bl sub_02057BC4
	ldr r0, _02057EF0 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02057EBA
	bl ov23_02249954
	b _02057EBA
_02057EB4:
	add r0, r4, #0
	bl sub_02057BC4
_02057EBA:
	add r0, r4, #0
	bl sub_02057EF8
_02057EC0:
	ldr r4, _02057EF0 ; =0x021C0848
	ldr r6, _02057EF4 ; =0x000002BE
	mov r5, #0
_02057EC6:
	ldr r0, [r4, #0]
	ldrb r0, [r0, r6]
	cmp r0, #0
	beq _02057EE6
	bl sub_0203608C
	cmp r0, #0
	bne _02057EE6
	add r0, r5, #0
	bl sub_02032EE8
	cmp r0, #0
	bne _02057EE6
	add r0, r5, #0
	bl ov23_0224B5CC
_02057EE6:
	add r5, r5, #1
	cmp r5, #8
	blt _02057EC6
	pop {r4, r5, r6, pc}
	nop
_02057EF0: .word 0x021C0848
_02057EF4: .word 0x000002BE
	thumb_func_end sub_02057E80

	thumb_func_start sub_02057EF8
sub_02057EF8: ; 0x02057EF8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02057FA4 ; =0x021C0848
	ldr r7, _02057FA8 ; =0x000002BE
	mov r5, #0
	add r6, sp, #0
_02057F02:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _02057F30
	bl sub_02036180
	cmp r0, #0
	beq _02057F1A
	cmp r5, #0
	beq _02057F30
_02057F1A:
	bl sub_0203608C
	cmp r0, #0
	bne _02057F30
	ldr r0, [r4, #0]
	ldrb r0, [r0, r7]
	cmp r0, #0
	beq _02057F30
	add r0, r5, #0
	bl ov23_0224D898
_02057F30:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _02057F48
	bl sub_02036180
	cmp r0, #0
	beq _02057F60
	cmp r5, #0
	bne _02057F60
_02057F48:
	add r0, r5, #0
	bl sub_020587C0
	ldr r1, [r4, #0]
	ldr r0, _02057FA8 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02057F9A
	add r0, r5, #0
	bl ov23_0224AF7C
	b _02057F9A
_02057F60:
	ldr r0, [r4, #0]
	add r0, r0, r5
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _02057F9A
	bl sub_0203608C
	cmp r0, #0
	bne _02057F8A
	ldr r1, [r4, #0]
	ldr r0, _02057FA8 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02057F8A
	add r0, r5, #0
	bl ov23_022436F0
	add r0, r5, #0
	bl ov23_02241648
_02057F8A:
	strb r5, [r6]
	ldr r3, [r4, #0]
	mov r0, #0
	ldr r3, [r3, #0x54]
	mov r1, #1
	add r2, sp, #0
	bl sub_0205853C
_02057F9A:
	add r5, r5, #1
	cmp r5, #8
	blt _02057F02
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02057FA4: .word 0x021C0848
_02057FA8: .word 0x000002BE
	thumb_func_end sub_02057EF8

	thumb_func_start sub_02057FAC
sub_02057FAC: ; 0x02057FAC
	ldr r0, _02057FC0 ; =0x021C0848
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02057FBC
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	bx lr
_02057FBC:
	mov r0, #0
	bx lr
	; .align 2, 0
_02057FC0: .word 0x021C0848
	thumb_func_end sub_02057FAC

	thumb_func_start sub_02057FC4
sub_02057FC4: ; 0x02057FC4
	push {r3, lr}
	ldr r1, _02057FEC ; =0x021C0848
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _02057FEA
	mov r1, #0xaf
	lsl r1, r1, #2
	ldrb r2, [r3, r1]
	cmp r2, r0
	beq _02057FDA
	strb r0, [r3, r1]
_02057FDA:
	ldr r1, _02057FEC ; =0x021C0848
	mov r0, #0x3e
	ldr r2, [r1, #0]
	mov r1, #0xaf
	lsl r1, r1, #2
	add r1, r2, r1
	bl sub_020360D0
_02057FEA:
	pop {r3, pc}
	; .align 2, 0
_02057FEC: .word 0x021C0848
	thumb_func_end sub_02057FC4

	thumb_func_start sub_02057FF0
sub_02057FF0: ; 0x02057FF0
	push {r4, lr}
	ldr r2, _02058014 ; =0x021C0848
	ldr r4, [r2, #0]
	cmp r4, #0
	beq _02058010
	mov r1, #0xaf
	lsl r1, r1, #2
	ldrb r3, [r4, r1]
	cmp r3, r0
	beq _02058010
	strb r0, [r4, r1]
	ldr r2, [r2, #0]
	mov r0, #0x3e
	add r1, r2, r1
	bl sub_020360D0
_02058010:
	pop {r4, pc}
	nop
_02058014: .word 0x021C0848
	thumb_func_end sub_02057FF0

	thumb_func_start sub_02058018
sub_02058018: ; 0x02058018
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02058058 ; =0x021C0848
	add r4, r2, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02058054
	cmp r1, #1
	beq _0205802E
	bl GF_AssertFail
_0205802E:
	cmp r5, #8
	blt _02058036
	bl GF_AssertFail
_02058036:
	ldrb r0, [r4]
	mov r1, #1
	cmp r0, #1
	beq _02058044
	cmp r0, #0
	beq _02058044
	mov r1, #0
_02058044:
	cmp r1, #0
	bne _0205804C
	bl GF_AssertFail
_0205804C:
	ldrb r1, [r4]
	add r0, r5, #0
	bl sub_02059058
_02058054:
	pop {r3, r4, r5, pc}
	nop
_02058058: .word 0x021C0848
	thumb_func_end sub_02058018

	thumb_func_start sub_0205805C
sub_0205805C: ; 0x0205805C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020580D0 ; =0x021C0848
	add r4, r1, #0
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _020580CE
	ldr r0, _020580D4 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02058080
	add r0, r4, #0
	bl sub_02057FF0
	ldr r0, _020580D0 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _020580D8 ; =0x000002C1
	strb r4, [r1, r0]
_02058080:
	ldr r4, [r5, #0x3c]
	cmp r4, #0
	beq _02058094
	bl sub_0203608C
	ldr r1, _020580D0 ; =0x021C0848
	lsl r0, r0, #2
	ldr r1, [r1, #0]
	add r0, r1, r0
	str r4, [r0, #8]
_02058094:
	bl sub_02035E38
	cmp r0, #0
	beq _020580AE
	bl sub_0203608C
	cmp r0, #0
	bne _020580AE
	ldr r1, _020580D0 ; =0x021C0848
	mov r0, #0
	ldr r1, [r1, #0]
	bl sub_0205820C
_020580AE:
	bl sub_02035E38
	cmp r0, #0
	beq _020580CE
	bl sub_0203608C
	cmp r0, #0
	bne _020580CE
	ldr r0, _020580D0 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _020580D4 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _020580CE
	bl sub_020591A8
_020580CE:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020580D0: .word 0x021C0848
_020580D4: .word 0x000002BE
_020580D8: .word 0x000002C1
	thumb_func_end sub_0205805C

	thumb_func_start sub_020580DC
sub_020580DC: ; 0x020580DC
	mov r0, #0x20
	tst r0, r1
	beq _020580E6
	mov r0, #2
	bx lr
_020580E6:
	mov r0, #0x10
	tst r0, r1
	beq _020580F0
	mov r0, #3
	bx lr
_020580F0:
	mov r0, #0x40
	tst r0, r1
	beq _020580FA
	mov r0, #0
	bx lr
_020580FA:
	mov r0, #0x80
	tst r1, r0
	beq _02058104
	mov r0, #1
	bx lr
_02058104:
	sub r0, #0x81
	bx lr
	thumb_func_end sub_020580DC

	thumb_func_start sub_02058108
sub_02058108: ; 0x02058108
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02058148 ; =0x021C0848
	add r6, r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	bl sub_0203A4B4
	add r4, r0, #0
	ldr r0, _02058148 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	bl sub_0203A4BC
	mov r2, #0
	cmp r4, #0
	ble _02058142
_0205812A:
	ldrh r1, [r0, #0x18]
	cmp r5, r1
	bne _0205813A
	ldrh r1, [r0, #0x1a]
	cmp r6, r1
	bne _0205813A
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205813A:
	add r2, r2, #1
	add r0, #0x20
	cmp r2, r4
	blt _0205812A
_02058142:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02058148: .word 0x021C0848
	thumb_func_end sub_02058108

	thumb_func_start sub_0205814C
sub_0205814C: ; 0x0205814C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _020581C0 ; =0x0000FFFF
	add r6, r1, #0
	add r7, r2, #0
	cmp r5, r0
	beq _020581AE
	cmp r6, r0
	beq _020581AE
	mov r4, #0
_02058160:
	cmp r4, r7
	beq _0205817C
	add r0, r4, #0
	bl sub_02058DF8
	cmp r5, r0
	bne _0205817C
	add r0, r4, #0
	bl sub_02058E4C
	cmp r6, r0
	bne _0205817C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205817C:
	add r4, r4, #1
	cmp r4, #8
	blt _02058160
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02058108
	cmp r0, #0
	beq _02058192
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02058192:
	ldr r0, _020581C4 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _020581C8 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020581AE
	add r0, r5, #0
	add r1, r6, #0
	bl ov23_0224D1A0
	cmp r0, #0
	bne _020581AE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020581AE:
	ldr r0, _020581C4 ; =0x021C0848
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r6, #0
	ldr r0, [r0, #0x54]
	bl sub_02054F68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020581C0: .word 0x0000FFFF
_020581C4: .word 0x021C0848
_020581C8: .word 0x000002BE
	thumb_func_end sub_0205814C

	thumb_func_start sub_020581CC
sub_020581CC: ; 0x020581CC
	cmp r0, #5
	bge _020581D4
	mov r0, #8
	bx lr
_020581D4:
	cmp r0, #0xa
	bge _020581DC
	mov r0, #4
	bx lr
_020581DC:
	mov r0, #2
	bx lr
	thumb_func_end sub_020581CC

	thumb_func_start sub_020581E0
sub_020581E0: ; 0x020581E0
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r3, _02058208 ; =0x020ED500
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	cmp r4, #5
	str r0, [r2, #0]
	blt _020581FE
	bl GF_AssertFail
_020581FE:
	lsl r1, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02058208: .word 0x020ED500
	thumb_func_end sub_020581E0

	thumb_func_start sub_0205820C
sub_0205820C: ; 0x0205820C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r5, #0
	add r0, r5, #0
	ldr r6, _02058464 ; =0x021C0848
	str r5, [sp, #4]
	str r0, [sp]
_0205821A:
	ldr r0, [r6, #0]
	add r1, r0, r5
	add r1, #0x48
	ldrb r1, [r1]
	cmp r1, #0
	beq _020582E6
	add r1, r0, r5
	add r1, #0xe2
	ldrb r1, [r1]
	cmp r1, #0
	beq _020582E6
	add r1, r0, r5
	add r1, #0xea
	ldrb r1, [r1]
	cmp r1, #0
	beq _020582E6
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x62
	ldr r0, [r0, #4]
	add r4, r2, r1
	cmp r0, #0
	beq _02058250
	add r1, r5, #0
	bl ov23_0224993C
	str r0, [sp, #4]
_02058250:
	ldr r1, [r6, #0]
	ldr r0, _02058468 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058264
	add r0, r5, #0
	bl ov23_0224C1C8
	cmp r0, #0
	bne _020582E6
_02058264:
	ldr r0, [r6, #0]
	ldr r1, _0205846C ; =0x0000013A
	add r0, r0, r5
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _0205827A
	ldr r1, _0205846C ; =0x0000013A
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _0205846C ; =0x0000013A
	strb r2, [r0, r1]
_0205827A:
	ldr r0, [r6, #0]
	ldr r1, _0205846C ; =0x0000013A
	add r2, r0, r5
	ldrb r1, [r2, r1]
	cmp r1, #0
	bne _020582AC
	ldr r1, _02058468 ; =0x000002BE
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _020582AC
	add r0, r5, #0
	bl ov23_0224444C
	cmp r0, #0
	bne _020582E6
	add r0, r5, #0
	bl ov23_0224ACC0
	cmp r0, #0
	bne _020582AC
	add r0, r5, #0
	bl ov23_0224D7C8
	cmp r0, #0
	bne _020582E6
_020582AC:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020582BA
	bl ov23_022499AC
	cmp r0, #0
	beq _020582E6
_020582BA:
	ldr r0, [r6, #0]
	add r0, r0, r5
	add r0, #0xf2
	ldrb r0, [r0]
	cmp r0, #0
	beq _020582CA
	mov r7, #0
	b _020582D2
_020582CA:
	add r0, r5, #0
	bl sub_02035E84
	add r7, r0, #0
_020582D2:
	add r0, r5, #0
	bl sub_02035E70
	strb r0, [r4, #5]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _0205846C ; =0x0000013A
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020582E8
_020582E6:
	b _02058452
_020582E8:
	ldr r0, _02058470 ; =0x0000010A
	ldr r2, _02058474 ; =0x0000012A
	ldrb r0, [r1, r0]
	ldrb r1, [r1, r2]
	bl sub_020581CC
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl sub_02058A18
	cmp r0, #0
	beq _02058318
	ldr r0, [r6, #0]
	ldr r1, [sp, #0x10]
	add r2, r0, r5
	ldr r0, _0205846C ; =0x0000013A
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	mov r1, #1
	add r2, r0, r5
	ldr r0, _02058478 ; =0x00000132
	strb r1, [r2, r0]
	b _02058452
_02058318:
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _02058328
	ldr r0, [r6, #0]
	mov r1, #1
	add r2, r0, r5
	ldr r0, _02058478 ; =0x00000132
	strb r1, [r2, r0]
_02058328:
	mov r0, #0
	strb r0, [r4, #7]
	ldr r0, [r6, #0]
	ldr r1, _0205847C ; =0x00000122
	add r0, r0, r5
	ldrb r1, [r0, r1]
	cmp r1, #2
	bne _0205834E
	add r1, sp, #0x14
	strb r5, [r1, #1]
	ldr r1, _0205847C ; =0x00000122
	mov r2, #1
	strb r2, [r0, r1]
	add r1, sp, #0x14
	mov r0, #0x28
	add r1, #1
	bl sub_02035B48
	b _02058452
_0205834E:
	add r0, r7, #0
	add r1, r7, #0
	bl sub_020580DC
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02058EE0
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02058F18
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, _02058480 ; =0x0000FFFF
	cmp r1, r0
	beq _02058452
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _02058452
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _02058452
	mov r0, #4
	ldrsb r0, [r4, r0]
	cmp r0, r7
	beq _020583B4
	strb r7, [r4, #4]
	ldr r0, [r6, #0]
	mov r1, #4
	add r2, r0, r5
	ldr r0, _0205846C ; =0x0000013A
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	mov r1, #1
	add r2, r0, r5
	ldr r0, _02058478 ; =0x00000132
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	ldr r1, _0205847C ; =0x00000122
	add r0, r0, r5
	ldrb r1, [r0, r1]
	cmp r1, #2
	bls _02058452
	ldr r1, _0205847C ; =0x00000122
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _0205847C ; =0x00000122
	strb r2, [r0, r1]
	b _02058452
_020583B4:
	ldr r0, [r6, #0]
	ldr r1, _0205847C ; =0x00000122
	add r2, r0, r5
	ldrb r1, [r2, r1]
	cmp r1, #0
	bne _02058452
	ldr r1, _02058468 ; =0x000002BE
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _020583D6
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r5, #0
	bl ov23_0224B8E0
	cmp r0, #1
	beq _02058452
_020583D6:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, r5, #0
	bl sub_0205814C
	cmp r0, #0
	beq _020583FE
	mov r0, #1
	strb r0, [r4, #7]
	ldr r0, [r6, #0]
	mov r1, #1
	add r2, r0, r5
	ldr r0, _02058478 ; =0x00000132
	strb r1, [r2, r0]
	ldr r0, [r6, #0]
	mov r1, #4
	add r2, r0, r5
	ldr r0, _0205846C ; =0x0000013A
	strb r1, [r2, r0]
	b _02058452
_020583FE:
	ldr r0, [r6, #0]
	mov r1, #1
	add r2, r0, r5
	ldr r0, _02058478 ; =0x00000132
	strb r1, [r2, r0]
	ldr r0, [sp, #0xc]
	strh r0, [r4]
	ldr r0, [sp, #8]
	strh r0, [r4, #2]
	strb r7, [r4, #4]
	ldrb r0, [r4, #5]
	bl sub_020581E0
	ldr r1, [r6, #0]
	add r2, r1, r5
	ldr r1, _0205846C ; =0x0000013A
	strb r0, [r2, r1]
	ldr r0, [r6, #0]
	sub r1, #0x20
	add r0, r0, r5
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02058452
	ldr r1, _02058484 ; =0x0000011A
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _02058484 ; =0x0000011A
	strb r2, [r0, r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _02058484 ; =0x0000011A
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02058452
	mov r1, #1
	add r0, sp, #0x14
	strb r1, [r0]
	add r0, r5, #0
	add r2, sp, #0x14
	mov r3, #0
	bl ov23_0224540C
_02058452:
	ldr r0, [sp]
	add r5, r5, #1
	add r0, #8
	str r0, [sp]
	cmp r5, #8
	bge _02058460
	b _0205821A
_02058460:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02058464: .word 0x021C0848
_02058468: .word 0x000002BE
_0205846C: .word 0x0000013A
_02058470: .word 0x0000010A
_02058474: .word 0x0000012A
_02058478: .word 0x00000132
_0205847C: .word 0x00000122
_02058480: .word 0x0000FFFF
_02058484: .word 0x0000011A
	thumb_func_end sub_0205820C

	thumb_func_start sub_02058488
sub_02058488: ; 0x02058488
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _02058530 ; =0x021C0848
	add r7, r0, #0
	ldr r0, [r5, #0]
	add r3, r2, #0
	cmp r0, #0
	beq _0205852C
	add r2, r0, #0
	ldrb r4, [r3, #4]
	add r2, #0x62
	lsl r1, r7, #3
	add r2, r2, r1
	mov r1, #0x80
	tst r1, r4
	beq _020584AE
	ldr r1, _02058534 ; =0x000002BB
	mov r2, #1
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_020584AE:
	mov r0, #4
	ldrsb r1, [r2, r0]
	sub r0, r0, #5
	cmp r1, r0
	bne _020584CA
	ldr r4, _02058538 ; =0x00000132
	mov r1, #0
	mov r0, #1
_020584BE:
	ldr r6, [r5, #0]
	add r6, r6, r1
	add r1, r1, #1
	strb r0, [r6, r4]
	cmp r1, #8
	blt _020584BE
_020584CA:
	mov r0, #0
	strh r0, [r2]
	strh r0, [r2, #2]
	ldrh r1, [r2]
	ldrb r0, [r3]
	add r0, r1, r0
	strh r0, [r2]
	ldrb r1, [r3, #1]
	ldrh r0, [r2]
	lsl r4, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r4, r1
	add r0, r0, r4
	strh r0, [r2]
	ldrh r4, [r2, #2]
	ldrb r0, [r3, #2]
	add r0, r4, r0
	strh r0, [r2, #2]
	ldrb r4, [r3, #3]
	ldrh r0, [r2, #2]
	lsl r4, r4, #8
	and r1, r4
	add r0, r0, r1
	strh r0, [r2, #2]
	ldrb r1, [r3, #4]
	mov r0, #0xf
	ldr r3, _02058530 ; =0x021C0848
	and r0, r1
	strb r0, [r2, #4]
	ldr r1, [r3, #0]
	mov r0, #1
	add r1, r1, r7
	add r1, #0x48
	strb r0, [r1]
	ldr r1, [r3, #0]
	add r4, r1, r7
	ldr r1, _02058538 ; =0x00000132
	strb r0, [r4, r1]
	ldr r0, [r3, #0]
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	ldr r0, [r0, #0x54]
	bl sub_02054F68
	cmp r0, #0
	beq _0205852C
	bl GF_AssertFail
_0205852C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02058530: .word 0x021C0848
_02058534: .word 0x000002BB
_02058538: .word 0x00000132
	thumb_func_end sub_02058488

	thumb_func_start sub_0205853C
sub_0205853C: ; 0x0205853C
	push {r3, r4, r5, lr}
	ldr r0, _02058598 ; =0x021C0848
	ldrb r4, [r2]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02058594
	bl sub_0203608C
	cmp r4, r0
	beq _02058594
	ldr r0, _02058598 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _0205859C ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058584
	add r0, r4, #0
	bl ov23_022430B8
	ldr r0, _02058598 ; =0x021C0848
	ldr r3, [r0, #0]
	ldr r0, _020585A0 ; =0x000002BD
	ldrb r0, [r3, r0]
	cmp r0, #0
	bne _02058584
	lsl r5, r4, #3
	add r1, r3, r5
	ldr r0, [r3, #0x54]
	add r3, r3, r5
	add r1, #0xa2
	add r3, #0xa4
	ldrh r1, [r1]
	ldrh r3, [r3]
	mov r2, #0
	bl ov5_021F5634
_02058584:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02057DB8
	add r0, r4, #0
	bl sub_02032D98
_02058594:
	pop {r3, r4, r5, pc}
	nop
_02058598: .word 0x021C0848
_0205859C: .word 0x000002BE
_020585A0: .word 0x000002BD
	thumb_func_end sub_0205853C

	thumb_func_start sub_020585A4
sub_020585A4: ; 0x020585A4
	mov r0, #5
	bx lr
	thumb_func_end sub_020585A4

	thumb_func_start sub_020585A8
sub_020585A8: ; 0x020585A8
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldrb r1, [r5]
	add r6, r0, #0
	mov r0, #0xf
	add r4, r1, #0
	and r4, r0
	ldr r0, _0205863C ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02058638
	bl sub_0203608C
	cmp r6, r0
	bne _020585D2
	ldr r0, _0205863C ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058640 ; =0x000002C3
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02058638
_020585D2:
	ldr r0, _0205863C ; =0x021C0848
	ldrb r2, [r5, #2]
	ldr r1, [r0, #0]
	lsl r0, r4, #3
	add r1, #0xa2
	add r1, r1, r0
	mov r0, #0x80
	tst r0, r2
	beq _020585E8
	mov r0, #1
	b _020585EA
_020585E8:
	mov r0, #0
_020585EA:
	strb r0, [r1, #7]
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldrh r2, [r1]
	ldrb r0, [r5, #1]
	add r0, r2, r0
	strh r0, [r1]
	ldrb r2, [r5, #2]
	ldrh r0, [r1]
	lsl r3, r2, #8
	mov r2, #1
	lsl r2, r2, #8
	and r3, r2
	add r0, r0, r3
	strh r0, [r1]
	ldrh r3, [r1, #2]
	ldrb r0, [r5, #3]
	add r0, r3, r0
	strh r0, [r1, #2]
	ldrb r3, [r5, #2]
	ldrh r0, [r1, #2]
	lsl r3, r3, #7
	and r2, r3
	add r0, r0, r2
	strh r0, [r1, #2]
	ldrb r0, [r5]
	asr r2, r0, #4
	mov r0, #3
	and r2, r0
	strb r2, [r1, #4]
	ldrb r2, [r5]
	asr r2, r2, #6
	and r0, r2
	strb r0, [r1, #5]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02057C8C
_02058638:
	pop {r4, r5, r6, pc}
	nop
_0205863C: .word 0x021C0848
_02058640: .word 0x000002C3
	thumb_func_end sub_020585A8

	thumb_func_start sub_02058644
sub_02058644: ; 0x02058644
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020586A0 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	bl sub_0203D174
	bl sub_020298B0
	add r4, r0, #0
	ldr r0, _020586A0 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	bl sub_0203D174
	bl sub_020298A0
	ldr r0, _020586A0 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _020586A4 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0205869C
	bl sub_0203608C
	cmp r5, r0
	bne _0205869C
	add r0, r4, #0
	bl sub_0202929C
	add r0, r4, #0
	bl sub_020292B4
	cmp r0, #0x32
	bne _0205869C
	ldr r0, _020586A0 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x25
	bl sub_0202CFEC
_0205869C:
	pop {r3, r4, r5, pc}
	nop
_020586A0: .word 0x021C0848
_020586A4: .word 0x000002BE
	thumb_func_end sub_02058644

	thumb_func_start sub_020586A8
sub_020586A8: ; 0x020586A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, _020587B4 ; =0x020ED4E4
	add r6, r3, #0
	add r5, r0, #0
	add r3, sp, #4
	mov r2, #0xc
_020586B6:
	ldrb r0, [r4]
	add r4, r4, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _020586B6
	ldr r0, _020587B8 ; =0x021C0848
	ldr r2, _020587BC ; =0x00000102
	ldr r0, [r0, #0]
	add r3, r0, r5
	ldrsb r3, [r3, r2]
	mov r2, #0
	mvn r2, r2
	cmp r3, r2
	beq _020586DE
	lsl r7, r5, #2
	add r0, r0, r7
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020586E4
_020586DE:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020586E4:
	cmp r1, #0
	bne _020586EE
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020586EE:
	bl sub_0205EB3C
	add r4, r0, #0
	ldr r0, _020587B8 ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r7, #0
	add r0, r1, r0
	ldr r0, [r0, #8]
	bl sub_0205EA78
	str r0, [sp]
	ldr r0, _020587B8 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _020587BC ; =0x00000102
	ldrsb r0, [r1, r0]
	bl sub_02059328
	ldr r1, [sp]
	cmp r1, r0
	beq _02058744
	add r0, r4, #0
	mov r1, #0x80
	bl sub_020628C4
	ldr r0, _020587B8 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _020587BC ; =0x00000102
	ldrsb r0, [r1, r0]
	bl sub_02059328
	add r1, r0, #0
	ldr r0, _020587B8 ; =0x021C0848
	ldr r0, [r0, #0]
	add r0, r0, r7
	ldr r0, [r0, #8]
	bl sub_0205EA84
	add r0, r4, #0
	mov r1, #0x80
	bl sub_020628BC
_02058744:
	add r0, r4, #0
	bl sub_02065684
	add r0, r4, #0
	bl sub_020655F4
	cmp r0, #1
	bne _020587AC
	add r0, r5, #0
	bl sub_02058644
	cmp r6, #0
	beq _02058768
	cmp r6, #1
	beq _0205877E
	cmp r6, #2
	beq _02058796
	b _020587AC
_02058768:
	ldr r1, _020587B8 ; =0x021C0848
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _020587BC ; =0x00000102
	ldrsb r2, [r2, r1]
	add r1, sp, #4
	ldrb r1, [r1, r2]
	bl sub_02065638
	b _020587AC
_0205877E:
	ldr r1, _020587B8 ; =0x021C0848
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _020587BC ; =0x00000102
	ldrsb r1, [r2, r1]
	add r2, r1, #4
	add r1, sp, #4
	ldrb r1, [r1, r2]
	bl sub_02065638
	b _020587AC
_02058796:
	ldr r1, _020587B8 ; =0x021C0848
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _020587BC ; =0x00000102
	ldrsb r2, [r2, r1]
	add r1, sp, #4
	add r2, #8
	ldrb r1, [r1, r2]
	bl sub_02065638
_020587AC:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020587B4: .word 0x020ED4E4
_020587B8: .word 0x021C0848
_020587BC: .word 0x00000102
	thumb_func_end sub_020586A8

	thumb_func_start sub_020587C0
sub_020587C0: ; 0x020587C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _02058A00 ; =0x021C0848
	lsl r1, r5, #3
	ldr r0, [r0, #0]
	add r2, r0, #0
	add r2, #0xa2
	add r6, r2, r1
	ldr r1, _02058A04 ; =0x00000142
	add r2, r0, r1
	ldrb r1, [r2, r5]
	cmp r1, #0
	beq _020587E4
	sub r0, r1, #1
	add sp, #0x1c
	strb r0, [r2, r5]
	pop {r4, r5, r6, r7, pc}
_020587E4:
	ldrh r2, [r6]
	ldr r1, _02058A08 ; =0x0000FFFF
	cmp r2, r1
	beq _02058898
	ldrh r2, [r6, #2]
	cmp r2, r1
	beq _02058898
	ldr r1, _02058A0C ; =0x000002BD
	ldrb r2, [r0, r1]
	cmp r2, #0
	bne _02058898
	add r1, r1, #1
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _02058816
	bl sub_0203608C
	cmp r5, r0
	bne _02058816
	ldr r0, _02058A00 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058A10 ; =0x000002C1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058898
_02058816:
	ldr r0, _02058A00 ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r5, #2
	add r0, r1, r0
	ldr r0, [r0, #8]
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _02058828
	b _020589FA
_02058828:
	bl sub_0205EABC
	ldrh r1, [r6]
	sub r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	bl sub_0205EAC8
	ldrh r1, [r6, #2]
	sub r7, r0, r1
	ldr r0, [sp, #0x18]
	bl sub_0205EA78
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02058852
	cmp r7, #0
	bne _02058852
	mov r4, #0
	b _0205887C
_02058852:
	ldr r0, [sp, #0x10]
	bl abs
	add r4, r0, #0
	add r0, r7, #0
	bl abs
	cmp r4, r0
	ble _02058872
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0205886E
	mov r4, #0x20
	b _0205887C
_0205886E:
	mov r4, #0x10
	b _0205887C
_02058872:
	cmp r7, #0
	ble _0205887A
	mov r4, #0x40
	b _0205887C
_0205887A:
	mov r4, #0x80
_0205887C:
	add r0, r7, #0
	bl abs
	ldr r0, [sp, #0x10]
	bl abs
	ldrb r3, [r6, #5]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, #0
	bl sub_020586A8
	cmp r0, #0
	beq _0205889A
_02058898:
	b _020589FA
_0205889A:
	ldrb r0, [r6, #5]
	mov r7, #0xff
	str r0, [sp, #0x14]
	cmp r0, #3
	bhi _020588D6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020588B0: ; jump table
	.short _020588B8 - _020588B0 - 2 ; case 0
	.short _020588BE - _020588B0 - 2 ; case 1
	.short _020588CC - _020588B0 - 2 ; case 2
	.short _020588D2 - _020588B0 - 2 ; case 3
_020588B8:
	mov r0, #5
	str r0, [sp, #8]
	b _020588D6
_020588BE:
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #2
	orr r0, r4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _020588D6
_020588CC:
	mov r0, #2
	str r0, [sp, #8]
	b _020588D6
_020588D2:
	mov r0, #1
	str r0, [sp, #8]
_020588D6:
	ldr r0, _02058A00 ; =0x021C0848
	ldr r1, [r0, #0]
	mov r0, #0xb
	lsl r0, r0, #6
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020588FC
	bl sub_0203608C
	cmp r5, r0
	bne _020588FC
	ldr r0, _02058A00 ; =0x021C0848
	ldr r2, [r0, #0]
	mov r0, #0xb
	lsl r0, r0, #6
	ldrb r1, [r2, r0]
	sub r1, r1, #1
	strb r1, [r2, r0]
	b _0205899C
_020588FC:
	bl sub_02035EE0
	cmp r0, #0
	bne _02058930
	ldr r0, _02058A00 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058A14 ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058930
	bl sub_0203608C
	cmp r5, r0
	bne _02058930
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #8]
	add r1, r4, #0
	add r2, r4, #0
	bl sub_0206147C
	add r7, r0, #0
	b _0205899C
_02058930:
	mov r0, #2
	add r1, r4, #0
	bic r1, r0
	bne _0205896E
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _0205896E
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #4
	ldrsb r0, [r6, r0]
	cmp r0, #3
	bhi _02058962
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02058956: ; jump table
	.short _0205895E - _02058956 - 2 ; case 0
	.short _02058962 - _02058956 - 2 ; case 1
	.short _02058966 - _02058956 - 2 ; case 2
	.short _0205896A - _02058956 - 2 ; case 3
_0205895E:
	mov r7, #0x1c
	b _0205899C
_02058962:
	mov r7, #0x1d
	b _0205899C
_02058966:
	mov r7, #0x1e
	b _0205899C
_0205896A:
	mov r7, #0x1f
	b _0205899C
_0205896E:
	cmp r1, #0
	bne _02058986
	mov r0, #4
	ldrsb r0, [r6, r0]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _02058986
	mov r1, #0x24
	bl sub_02065838
	add r7, r0, #0
	b _0205899C
_02058986:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #8]
	add r1, r4, #0
	add r2, r4, #0
	bl sub_0206147C
	add r7, r0, #0
_0205899C:
	ldr r0, [sp, #0x18]
	bl sub_02061544
	cmp r0, #0
	bne _020589B0
	ldr r0, [sp, #0x18]
	bl sub_020613AC
	cmp r0, #0
	beq _020589FA
_020589B0:
	cmp r7, #0xff
	beq _020589FA
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	mov r2, #1
	bl sub_02061550
	mov r0, #2
	bic r4, r0
	beq _020589FA
	ldr r0, _02058A00 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058A04 ; =0x00000142
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _020589E2
	ldr r0, [sp, #0x14]
	bl sub_020581E0
	ldr r1, _02058A00 ; =0x021C0848
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _02058A04 ; =0x00000142
	strb r0, [r2, r1]
_020589E2:
	ldr r0, _02058A00 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058A04 ; =0x00000142
	add r1, r1, r0
	ldrb r0, [r1, r5]
	cmp r0, #0
	beq _020589F4
	sub r0, r0, #1
	strb r0, [r1, r5]
_020589F4:
	add r0, r5, #0
	bl sub_02058644
_020589FA:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02058A00: .word 0x021C0848
_02058A04: .word 0x00000142
_02058A08: .word 0x0000FFFF
_02058A0C: .word 0x000002BD
_02058A10: .word 0x000002C1
_02058A14: .word 0x000002BE
	thumb_func_end sub_020587C0

	thumb_func_start sub_02058A18
sub_02058A18: ; 0x02058A18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _02058B00 ; =0x021C0848
	add r5, r0, #0
	ldr r2, [r1, #0]
	ldr r1, _02058B04 ; =0x0000010A
	add r2, r2, r1
	ldrb r1, [r2, r5]
	cmp r1, #0
	bne _02058A34
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02058A34:
	cmp r1, #0xff
	bne _02058A3E
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02058A3E:
	sub r1, r1, #1
	strb r1, [r2, r5]
	cmp r4, #1
	bne _02058A4C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02058A4C:
	bl sub_02058DF8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02058E4C
	str r0, [sp]
	ldr r0, _02058B00 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058B08 ; =0x00000112
	ldrb r0, [r1, r0]
	bl sub_0206419C
	add r7, r6, r0
	ldr r0, _02058B00 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058B08 ; =0x00000112
	ldrb r0, [r1, r0]
	bl sub_020641A8
	ldr r1, [sp]
	add r6, r1, r0
	ldr r0, _02058B00 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058B04 ; =0x0000010A
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058AA4
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0205814C
	cmp r0, #0
	beq _02058AA4
	ldr r1, _02058B00 ; =0x021C0848
	mov r0, #1
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _02058B04 ; =0x0000010A
	strb r0, [r2, r1]
_02058AA4:
	ldr r0, _02058B00 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058B04 ; =0x0000010A
	add r2, r1, r5
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _02058AB8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02058AB8:
	cmp r0, #0
	bne _02058AD2
	mov r1, #1
	add r0, sp, #4
	strb r1, [r0]
	add r0, r5, #0
	add r2, sp, #4
	mov r3, #0
	bl ov23_0224540C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02058AD2:
	add r1, #0x62
	lsl r2, r5, #3
	add r0, r1, r2
	strh r7, [r1, r2]
	strh r6, [r0, #2]
	cmp r4, #2
	beq _02058AEA
	cmp r4, #4
	beq _02058AF0
	cmp r4, #8
	beq _02058AF6
	b _02058AFA
_02058AEA:
	mov r1, #0
	strb r1, [r0, #5]
	b _02058AFA
_02058AF0:
	mov r1, #1
	strb r1, [r0, #5]
	b _02058AFA
_02058AF6:
	mov r1, #2
	strb r1, [r0, #5]
_02058AFA:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02058B00: .word 0x021C0848
_02058B04: .word 0x0000010A
_02058B08: .word 0x00000112
	thumb_func_end sub_02058A18

	thumb_func_start sub_02058B0C
sub_02058B0C: ; 0x02058B0C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02058B70 ; =0x021C0848
	add r4, r1, #0
	ldr r1, [r0, #0]
	lsl r0, r5, #3
	add r1, #0x62
	add r6, r1, r0
	add r0, r4, #0
	add r7, r2, #0
	bl sub_02059328
	ldr r1, _02058B70 ; =0x021C0848
	strb r0, [r6, #4]
	ldr r0, [r1, #0]
	add r2, r0, r5
	ldr r0, _02058B74 ; =0x00000112
	cmp r7, #0
	strb r4, [r2, r0]
	beq _02058B4A
	ldr r2, [r1, #0]
	mov r3, #1
	add r2, r2, r5
	add r0, #0x18
	strb r3, [r2, r0]
	ldr r0, [r1, #0]
	mov r2, #0x2d
	add r1, r0, r5
	add r0, r2, #0
	add r0, #0xdd
	b _02058B5E
_02058B4A:
	ldr r2, [r1, #0]
	mov r3, #0
	add r2, r2, r5
	add r0, #0x18
	strb r3, [r2, r0]
	ldr r0, [r1, #0]
	mov r2, #0x1b
	add r1, r0, r5
	add r0, r2, #0
	add r0, #0xef
_02058B5E:
	strb r2, [r1, r0]
	ldr r0, _02058B70 ; =0x021C0848
	mov r2, #1
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058B78 ; =0x00000132
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02058B70: .word 0x021C0848
_02058B74: .word 0x00000112
_02058B78: .word 0x00000132
	thumb_func_end sub_02058B0C

	thumb_func_start sub_02058B7C
sub_02058B7C: ; 0x02058B7C
	ldr r1, _02058B8C ; =0x021C0848
	mov r2, #0
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _02058B90 ; =0x0000010A
	strb r2, [r1, r0]
	bx lr
	nop
_02058B8C: .word 0x021C0848
_02058B90: .word 0x0000010A
	thumb_func_end sub_02058B7C

	thumb_func_start sub_02058B94
sub_02058B94: ; 0x02058B94
	ldr r1, _02058BA4 ; =0x021C0848
	mov r2, #0xff
	ldr r1, [r1, #0]
	add r1, r1, r0
	add r0, r2, #0
	add r0, #0xb
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02058BA4: .word 0x021C0848
	thumb_func_end sub_02058B94

	thumb_func_start sub_02058BA8
sub_02058BA8: ; 0x02058BA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02058BE0 ; =0x021C0848
	add r4, r1, #0
	ldr r1, [r0, #0]
	lsl r0, r5, #2
	add r0, r1, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02058BDC
	bl sub_0205EB3C
	mov r1, #0x80
	add r6, r0, #0
	bl sub_020628BC
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_020628BC
	ldr r0, _02058BE0 ; =0x021C0848
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02058BE4 ; =0x00000102
	strb r4, [r1, r0]
_02058BDC:
	pop {r4, r5, r6, pc}
	nop
_02058BE0: .word 0x021C0848
_02058BE4: .word 0x00000102
	thumb_func_end sub_02058BA8

	thumb_func_start sub_02058BE8
sub_02058BE8: ; 0x02058BE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02058C34 ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r0, r1, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02058C32
	add r2, r1, r4
	ldr r1, _02058C38 ; =0x00000102
	ldrsb r2, [r2, r1]
	mov r1, #0
	mvn r1, r1
	cmp r2, r1
	beq _02058C32
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_020656AC
	add r0, r5, #0
	mov r1, #0x80
	bl sub_020628C4
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #8
	bl sub_020628C4
	ldr r0, _02058C34 ; =0x021C0848
	mov r2, #0
	ldr r0, [r0, #0]
	mvn r2, r2
	add r1, r0, r4
	ldr r0, _02058C38 ; =0x00000102
	strb r2, [r1, r0]
_02058C32:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02058C34: .word 0x021C0848
_02058C38: .word 0x00000102
	thumb_func_end sub_02058BE8

	thumb_func_start sub_02058C3C
sub_02058C3C: ; 0x02058C3C
	mov r0, #4
	bx lr
	thumb_func_end sub_02058C3C

	thumb_func_start sub_02058C40
sub_02058C40: ; 0x02058C40
	push {r3, lr}
	bl sub_02036180
	cmp r0, #0
	beq _02058C4E
	mov r0, #1
	pop {r3, pc}
_02058C4E:
	ldr r0, _02058C88 ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02058C5A
	mov r0, #0
	pop {r3, pc}
_02058C5A:
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _02058C6A
	mov r0, #0
	pop {r3, pc}
_02058C6A:
	ldr r0, _02058C88 ; =0x021C0848
	ldr r1, [r0, #0]
	ldr r0, _02058C8C ; =0x000002BE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02058C82
	bl ov23_02249BD4
	cmp r0, #0
	bne _02058C82
	mov r0, #0
	pop {r3, pc}
_02058C82:
	mov r0, #1
	pop {r3, pc}
	nop
_02058C88: .word 0x021C0848
_02058C8C: .word 0x000002BE
	thumb_func_end sub_02058C40

	thumb_func_start sub_02058C90
sub_02058C90: ; 0x02058C90
	ldr r1, _02058C9C ; =0x021C0848
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0x48
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
_02058C9C: .word 0x021C0848
	thumb_func_end sub_02058C90

	thumb_func_start sub_02058CA0
sub_02058CA0: ; 0x02058CA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02058CEC ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02058CB0
	ldr r0, _02058CF0 ; =0x0000FFFF
	pop {r4, pc}
_02058CB0:
	bl sub_0203608C
	cmp r4, r0
	bne _02058CC6
	ldr r0, _02058CEC ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0xa2
	ldrh r0, [r0]
	pop {r4, pc}
_02058CC6:
	bl sub_02058C40
	cmp r0, #0
	beq _02058CDC
	ldr r0, _02058CEC ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058CE0
_02058CDC:
	ldr r0, _02058CF0 ; =0x0000FFFF
	pop {r4, pc}
_02058CE0:
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0xa2
	ldrh r0, [r0]
	pop {r4, pc}
	nop
_02058CEC: .word 0x021C0848
_02058CF0: .word 0x0000FFFF
	thumb_func_end sub_02058CA0

	thumb_func_start sub_02058CF4
sub_02058CF4: ; 0x02058CF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02058D40 ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02058D04
	ldr r0, _02058D44 ; =0x0000FFFF
	pop {r4, pc}
_02058D04:
	bl sub_0203608C
	cmp r4, r0
	bne _02058D1A
	ldr r0, _02058D40 ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0xa4
	ldrh r0, [r0]
	pop {r4, pc}
_02058D1A:
	bl sub_02058C40
	cmp r0, #0
	beq _02058D30
	ldr r0, _02058D40 ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058D34
_02058D30:
	ldr r0, _02058D44 ; =0x0000FFFF
	pop {r4, pc}
_02058D34:
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0xa4
	ldrh r0, [r0]
	pop {r4, pc}
	nop
_02058D40: .word 0x021C0848
_02058D44: .word 0x0000FFFF
	thumb_func_end sub_02058CF4

	thumb_func_start sub_02058D48
sub_02058D48: ; 0x02058D48
	ldr r1, _02058D60 ; =0x021C0848
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02058D5A
	lsl r0, r0, #3
	add r0, r1, r0
	add r0, #0xa2
	ldrh r0, [r0]
	bx lr
_02058D5A:
	ldr r0, _02058D64 ; =0x0000FFFF
	bx lr
	nop
_02058D60: .word 0x021C0848
_02058D64: .word 0x0000FFFF
	thumb_func_end sub_02058D48

	thumb_func_start sub_02058D68
sub_02058D68: ; 0x02058D68
	ldr r1, _02058D80 ; =0x021C0848
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02058D7A
	lsl r0, r0, #3
	add r0, r1, r0
	add r0, #0xa4
	ldrh r0, [r0]
	bx lr
_02058D7A:
	ldr r0, _02058D84 ; =0x0000FFFF
	bx lr
	nop
_02058D80: .word 0x021C0848
_02058D84: .word 0x0000FFFF
	thumb_func_end sub_02058D68

	thumb_func_start sub_02058D88
sub_02058D88: ; 0x02058D88
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058CA0
	ldr r1, _02058DB8 ; =0x0000FFFF
	cmp r0, r1
	bne _02058D9A
	add r0, r1, #0
	pop {r4, pc}
_02058D9A:
	ldr r0, _02058DBC ; =0x021C0848
	lsl r4, r4, #3
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0xa6
	ldrsb r0, [r1, r0]
	bl sub_0206419C
	ldr r1, _02058DBC ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0xa2
	ldrh r1, [r1]
	add r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_02058DB8: .word 0x0000FFFF
_02058DBC: .word 0x021C0848
	thumb_func_end sub_02058D88

	thumb_func_start sub_02058DC0
sub_02058DC0: ; 0x02058DC0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058CF4
	ldr r1, _02058DF0 ; =0x0000FFFF
	cmp r0, r1
	bne _02058DD2
	add r0, r1, #0
	pop {r4, pc}
_02058DD2:
	ldr r0, _02058DF4 ; =0x021C0848
	lsl r4, r4, #3
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0xa6
	ldrsb r0, [r1, r0]
	bl sub_020641A8
	ldr r1, _02058DF4 ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0xa4
	ldrh r1, [r1]
	add r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_02058DF0: .word 0x0000FFFF
_02058DF4: .word 0x021C0848
	thumb_func_end sub_02058DC0

	thumb_func_start sub_02058DF8
sub_02058DF8: ; 0x02058DF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02058E44 ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02058E08
	ldr r0, _02058E48 ; =0x0000FFFF
	pop {r4, pc}
_02058E08:
	bl sub_0203608C
	cmp r4, r0
	bne _02058E1E
	ldr r0, _02058E44 ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x62
	ldrh r0, [r0]
	pop {r4, pc}
_02058E1E:
	bl sub_02058C40
	cmp r0, #0
	beq _02058E34
	ldr r0, _02058E44 ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058E38
_02058E34:
	ldr r0, _02058E48 ; =0x0000FFFF
	pop {r4, pc}
_02058E38:
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x62
	ldrh r0, [r0]
	pop {r4, pc}
	nop
_02058E44: .word 0x021C0848
_02058E48: .word 0x0000FFFF
	thumb_func_end sub_02058DF8

	thumb_func_start sub_02058E4C
sub_02058E4C: ; 0x02058E4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02058E98 ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02058E5C
	ldr r0, _02058E9C ; =0x0000FFFF
	pop {r4, pc}
_02058E5C:
	bl sub_0203608C
	cmp r4, r0
	bne _02058E72
	ldr r0, _02058E98 ; =0x021C0848
	ldr r1, [r0, #0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x64
	ldrh r0, [r0]
	pop {r4, pc}
_02058E72:
	bl sub_02058C40
	cmp r0, #0
	beq _02058E88
	ldr r0, _02058E98 ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058E8C
_02058E88:
	ldr r0, _02058E9C ; =0x0000FFFF
	pop {r4, pc}
_02058E8C:
	lsl r0, r4, #3
	add r0, r1, r0
	add r0, #0x64
	ldrh r0, [r0]
	pop {r4, pc}
	nop
_02058E98: .word 0x021C0848
_02058E9C: .word 0x0000FFFF
	thumb_func_end sub_02058E4C

	thumb_func_start sub_02058EA0
sub_02058EA0: ; 0x02058EA0
	ldr r1, _02058EB8 ; =0x021C0848
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02058EB2
	lsl r0, r0, #3
	add r0, r1, r0
	add r0, #0x62
	ldrh r0, [r0]
	bx lr
_02058EB2:
	ldr r0, _02058EBC ; =0x0000FFFF
	bx lr
	nop
_02058EB8: .word 0x021C0848
_02058EBC: .word 0x0000FFFF
	thumb_func_end sub_02058EA0

	thumb_func_start sub_02058EC0
sub_02058EC0: ; 0x02058EC0
	ldr r1, _02058ED8 ; =0x021C0848
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02058ED2
	lsl r0, r0, #3
	add r0, r1, r0
	add r0, #0x64
	ldrh r0, [r0]
	bx lr
_02058ED2:
	ldr r0, _02058EDC ; =0x0000FFFF
	bx lr
	nop
_02058ED8: .word 0x021C0848
_02058EDC: .word 0x0000FFFF
	thumb_func_end sub_02058EC0

	thumb_func_start sub_02058EE0
sub_02058EE0: ; 0x02058EE0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058DF8
	ldr r1, _02058F10 ; =0x0000FFFF
	cmp r0, r1
	bne _02058EF2
	add r0, r1, #0
	pop {r4, pc}
_02058EF2:
	ldr r0, _02058F14 ; =0x021C0848
	lsl r4, r4, #3
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0x66
	ldrsb r0, [r1, r0]
	bl sub_0206419C
	ldr r1, _02058F14 ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0x62
	ldrh r1, [r1]
	add r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_02058F10: .word 0x0000FFFF
_02058F14: .word 0x021C0848
	thumb_func_end sub_02058EE0

	thumb_func_start sub_02058F18
sub_02058F18: ; 0x02058F18
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058E4C
	ldr r1, _02058F48 ; =0x0000FFFF
	cmp r0, r1
	bne _02058F2A
	add r0, r1, #0
	pop {r4, pc}
_02058F2A:
	ldr r0, _02058F4C ; =0x021C0848
	lsl r4, r4, #3
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0x66
	ldrsb r0, [r1, r0]
	bl sub_020641A8
	ldr r1, _02058F4C ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0x64
	ldrh r1, [r1]
	add r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_02058F48: .word 0x0000FFFF
_02058F4C: .word 0x021C0848
	thumb_func_end sub_02058F18

	thumb_func_start sub_02058F50
sub_02058F50: ; 0x02058F50
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058C40
	cmp r0, #0
	beq _02058F6A
	ldr r0, _02058F7C ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058F70
_02058F6A:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02058F70:
	lsl r0, r4, #3
	add r1, r1, r0
	mov r0, #0xa6
	ldrsb r0, [r1, r0]
	pop {r4, pc}
	nop
_02058F7C: .word 0x021C0848
	thumb_func_end sub_02058F50

	thumb_func_start sub_02058F80
sub_02058F80: ; 0x02058F80
	push {r4, lr}
	add r4, r0, #0
	bl sub_02058C40
	cmp r0, #0
	beq _02058F9A
	ldr r0, _02058FAC ; =0x021C0848
	ldr r1, [r0, #0]
	add r0, r1, r4
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _02058FA0
_02058F9A:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02058FA0:
	lsl r0, r4, #3
	add r1, r1, r0
	mov r0, #0x66
	ldrsb r0, [r1, r0]
	pop {r4, pc}
	nop
_02058FAC: .word 0x021C0848
	thumb_func_end sub_02058F80

	thumb_func_start sub_02058FB0
sub_02058FB0: ; 0x02058FB0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02058FDC ; =0x021C0848
	lsl r0, r0, #3
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0x66
	ldrsb r0, [r1, r0]
	bl sub_02059328
	ldr r2, _02058FDC ; =0x021C0848
	lsl r1, r4, #3
	ldr r3, [r2, #0]
	add r1, r3, r1
	add r1, #0x66
	strb r0, [r1]
	ldr r0, [r2, #0]
	mov r3, #1
	add r1, r0, r4
	ldr r0, _02058FE0 ; =0x00000132
	strb r3, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
_02058FDC: .word 0x021C0848
_02058FE0: .word 0x00000132
	thumb_func_end sub_02058FB0

	thumb_func_start sub_02058FE4
sub_02058FE4: ; 0x02058FE4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02059008 ; =0x021C0848
	lsl r0, r0, #3
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xa6
	ldrsb r0, [r1, r0]
	bl sub_02059328
	ldr r1, _02059008 ; =0x021C0848
	ldr r2, [r1, #0]
	lsl r1, r4, #3
	add r1, r2, r1
	add r1, #0xa6
	strb r0, [r1]
	pop {r4, pc}
	nop
_02059008: .word 0x021C0848
	thumb_func_end sub_02058FE4

	thumb_func_start sub_0205900C
sub_0205900C: ; 0x0205900C
	push {r3, r4, r5, r6}
	ldr r2, _02059054 ; =0x021C0848
	ldr r3, [r2, #0]
	cmp r3, #0
	bne _0205901C
	mov r0, #0xff
	pop {r3, r4, r5, r6}
	bx lr
_0205901C:
	mov r2, #0
	add r4, r3, #0
_02059020:
	add r5, r3, #0
	add r5, #0x48
	ldrb r5, [r5]
	cmp r5, #0
	beq _02059044
	add r5, r4, #0
	add r5, #0x64
	ldrh r6, [r5]
	add r5, r4, #0
	add r5, #0x62
	ldrh r5, [r5]
	cmp r0, r5
	bne _02059044
	cmp r1, r6
	bne _02059044
	add r0, r2, #0
	pop {r3, r4, r5, r6}
	bx lr
_02059044:
	add r2, r2, #1
	add r3, r3, #1
	add r4, #8
	cmp r2, #8
	blt _02059020
	mov r0, #0xff
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_02059054: .word 0x021C0848
	thumb_func_end sub_0205900C

	thumb_func_start sub_02059058
sub_02059058: ; 0x02059058
	push {r3, r4}
	ldr r3, _0205908C ; =0x021C0848
	ldr r4, [r3, #0]
	add r4, #0xe2
	ldrb r2, [r4, r0]
	cmp r1, r2
	beq _02059088
	strb r1, [r4, r0]
	ldr r2, [r3, #0]
	lsl r1, r0, #3
	add r2, r2, r1
	mov r4, #0
	add r2, #0x69
	strb r4, [r2]
	ldr r2, [r3, #0]
	mov r4, #1
	add r2, r2, r0
	ldr r0, _02059090 ; =0x00000132
	strb r4, [r2, r0]
	ldr r0, [r3, #0]
	mov r2, #2
	add r0, r0, r1
	add r0, #0x67
	strb r2, [r0]
_02059088:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0205908C: .word 0x021C0848
_02059090: .word 0x00000132
	thumb_func_end sub_02059058

	thumb_func_start sub_02059094
sub_02059094: ; 0x02059094
	ldr r1, _020590BC ; =0x021C0848
	ldr r2, [r1, #0]
	ldr r1, _020590C0 ; =0x000002C2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _020590A4
	mov r0, #0
	bx lr
_020590A4:
	add r1, r2, r0
	add r1, #0xea
	ldrb r1, [r1]
	cmp r1, #0
	beq _020590B6
	add r0, r2, r0
	add r0, #0xe2
	ldrb r0, [r0]
	bx lr
_020590B6:
	mov r0, #0
	bx lr
	nop
_020590BC: .word 0x021C0848
_020590C0: .word 0x000002C2
	thumb_func_end sub_02059094

	thumb_func_start sub_020590C4
sub_020590C4: ; 0x020590C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r1, _02059178 ; =0x020ED4DC
	add r0, sp, #8
	ldrh r2, [r1]
	ldr r3, _0205917C ; =0x020ED4F0
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	add r2, sp, #0x20
	mov r1, #8
_020590E2:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _020590E2
	bl sub_0203895C
	bl sub_02036148
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp]
	cmp r6, #2
	bne _02059106
	add r5, sp, #8
	b _02059108
_02059106:
	add r5, sp, #0x20
_02059108:
	mov r7, #0
	cmp r6, #0
	ble _02059154
_0205910E:
	mov r4, #0
	cmp r6, #0
	ble _0205914C
_02059114:
	add r0, r4, #0
	bl sub_02058CA0
	ldrh r1, [r5]
	cmp r1, r0
	bne _02059146
	add r0, r4, #0
	bl sub_02058CF4
	ldrh r1, [r5, #2]
	cmp r1, r0
	bne _02059146
	ldr r0, [sp, #4]
	lsl r1, r4, #2
	add r0, r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r7, [r0, r1]
	bl sub_0203608C
	cmp r4, r0
	bne _0205914C
	mov r0, #1
	str r0, [sp]
	b _0205914C
_02059146:
	add r4, r4, #1
	cmp r4, r6
	blt _02059114
_0205914C:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, r6
	blt _0205910E
_02059154:
	ldr r0, [sp, #4]
	cmp r0, r6
	bne _02059172
	mov r5, #0
	cmp r6, #0
	ble _02059172
	add r4, sp, #0x10
_02059162:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_020362DC
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r6
	blt _02059162
_02059172:
	ldr r0, [sp]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02059178: .word 0x020ED4DC
_0205917C: .word 0x020ED4F0
	thumb_func_end sub_020590C4

	thumb_func_start sub_02059180
sub_02059180: ; 0x02059180
	ldrb r2, [r2]
	cmp r2, #3
	bne _02059194
	ldr r1, _020591A4 ; =0x021C0848
	mov r2, #0
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0xf2
	strb r2, [r0]
	bx lr
_02059194:
	ldr r1, _020591A4 ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xad
	lsl r0, r0, #2
	strb r2, [r1, r0]
	bx lr
	nop
_020591A4: .word 0x021C0848
	thumb_func_end sub_02059180

	thumb_func_start sub_020591A8
sub_020591A8: ; 0x020591A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_0203895C
	bl sub_02036148
	add r7, r0, #0
	cmp r7, #2
	bne _020591C0
	ldr r0, _02059234 ; =0x02100B6C
	str r0, [sp]
	b _020591C4
_020591C0:
	ldr r0, _02059238 ; =0x02100B74
	str r0, [sp]
_020591C4:
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0]
	cmp r7, #0
	ble _0205922E
_020591CE:
	ldr r0, _0205923C ; =0x021C0848
	add r6, sp, #4
	ldr r1, [r0, #0]
	ldrb r0, [r6]
	add r1, r1, r0
	mov r0, #0xad
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02059220
	mov r4, #0
	cmp r7, #0
	ble _02059220
	ldr r5, [sp]
_020591EA:
	ldrb r0, [r6]
	bl sub_02058DF8
	ldrh r1, [r5]
	cmp r1, r0
	bne _02059218
	ldrb r0, [r6]
	bl sub_02058E4C
	ldrh r1, [r5, #2]
	cmp r1, r0
	bne _02059218
	ldr r0, _0205923C ; =0x021C0848
	ldr r1, [r0, #0]
	ldrb r0, [r6]
	add r1, r1, r0
	add r1, #0xf2
	mov r0, #1
	strb r0, [r1]
	mov r0, #0x5f
	add r1, sp, #4
	bl sub_02035B48
_02059218:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r7
	blt _020591EA
_02059220:
	add r0, sp, #4
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r0, [r0]
	cmp r0, r7
	blt _020591CE
_0205922E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02059234: .word 0x02100B6C
_02059238: .word 0x02100B74
_0205923C: .word 0x021C0848
	thumb_func_end sub_020591A8

	thumb_func_start sub_02059240
sub_02059240: ; 0x02059240
	push {r4, lr}
	bl sub_0203608C
	add r4, r0, #0
	bl sub_02058CA0
	cmp r0, #8
	ble _02059260
	mov r0, #2
	bl sub_020593F4
	mov r0, #2
	mov r1, #0x24
	bl sub_02065838
	b _0205926E
_02059260:
	mov r0, #3
	bl sub_020593F4
	mov r0, #3
	mov r1, #0x24
	bl sub_02065838
_0205926E:
	add r1, r0, #0
	ldr r0, _02059288 ; =0x021C0848
	ldr r2, [r0, #0]
	lsl r0, r4, #2
	add r0, r2, r0
	ldr r0, [r0, #8]
	mov r2, #1
	bl sub_02061550
	bl sub_02059624
	pop {r4, pc}
	nop
_02059288: .word 0x021C0848
	thumb_func_end sub_02059240

	thumb_func_start sub_0205928C
sub_0205928C: ; 0x0205928C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_0203895C
	bl sub_02036148
	str r0, [sp]
	ldr r1, [sp]
	mov r0, #0
	cmp r1, #0
	ble _020592C8
	ldr r1, _02059320 ; =0x021C0848
	ldr r2, _02059324 ; =0x00000132
	ldr r3, [r1, #0]
_020592A8:
	add r1, r3, #0
	add r1, #0x48
	ldrb r1, [r1]
	cmp r1, #0
	beq _020592B8
	ldrb r1, [r3, r2]
	cmp r1, #1
	bne _020592BE
_020592B8:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020592BE:
	ldr r1, [sp]
	add r0, r0, #1
	add r3, r3, #1
	cmp r0, r1
	blt _020592A8
_020592C8:
	ldr r0, [sp]
	mov r5, #0
	cmp r0, #0
	ble _0205931A
	add r4, r5, #0
_020592D2:
	ldr r0, _02059320 ; =0x021C0848
	ldr r7, [r0, #0]
	mov r0, #4
	add r7, #0x62
	add r6, r7, r4
	ldrsb r0, [r6, r0]
	bl sub_02059328
	str r0, [sp, #4]
	bl sub_0206419C
	ldrh r1, [r7, r4]
	add r0, r1, r0
	strh r0, [r7, r4]
	ldr r0, [sp, #4]
	bl sub_020641A8
	ldrh r1, [r6, #2]
	add r0, r1, r0
	strh r0, [r6, #2]
	mov r0, #2
	strb r0, [r6, #5]
	ldr r0, _02059320 ; =0x021C0848
	mov r1, #1
	ldr r0, [r0, #0]
	add r2, r0, r5
	ldr r0, _02059324 ; =0x00000132
	strb r1, [r2, r0]
	add r0, r5, #0
	bl sub_02059058
	ldr r0, [sp]
	add r5, r5, #1
	add r4, #8
	cmp r5, r0
	blt _020592D2
_0205931A:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02059320: .word 0x021C0848
_02059324: .word 0x00000132
	thumb_func_end sub_0205928C

	thumb_func_start sub_02059328
sub_02059328: ; 0x02059328
	push {r3, lr}
	cmp r0, #0
	bne _02059332
	mov r0, #1
	pop {r3, pc}
_02059332:
	cmp r0, #1
	bne _0205933A
	mov r0, #0
	pop {r3, pc}
_0205933A:
	cmp r0, #2
	bne _02059342
	mov r0, #3
	pop {r3, pc}
_02059342:
	cmp r0, #3
	bne _0205934A
	mov r0, #2
	pop {r3, pc}
_0205934A:
	bl GF_AssertFail
	mov r0, #2
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02059328

	thumb_func_start sub_02059354
sub_02059354: ; 0x02059354
	push {r3, r4}
	ldr r3, _02059370 ; =0x021C0848
	ldr r2, [r3, #0]
	add r4, r2, r0
	ldr r2, _02059374 ; =0x0000011A
	strb r1, [r4, r2]
	ldr r1, [r3, #0]
	mov r4, #0xf
	add r0, r1, r0
	add r2, #0x20
	strb r4, [r0, r2]
	pop {r3, r4}
	bx lr
	nop
_02059370: .word 0x021C0848
_02059374: .word 0x0000011A
	thumb_func_end sub_02059354

	thumb_func_start sub_02059378
sub_02059378: ; 0x02059378
	ldr r1, _02059388 ; =0x021C0848
	mov r2, #0
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _0205938C ; =0x0000011A
	strb r2, [r1, r0]
	bx lr
	nop
_02059388: .word 0x021C0848
_0205938C: .word 0x0000011A
	thumb_func_end sub_02059378

	thumb_func_start sub_02059390
sub_02059390: ; 0x02059390
	push {r3, r4}
	ldr r3, _020593AC ; =0x021C0848
	ldr r2, [r3, #0]
	add r4, r2, r0
	ldr r2, _020593B0 ; =0x00000122
	strb r1, [r4, r2]
	ldr r1, [r3, #0]
	mov r4, #0xf
	add r0, r1, r0
	add r2, #0x18
	strb r4, [r0, r2]
	pop {r3, r4}
	bx lr
	nop
_020593AC: .word 0x021C0848
_020593B0: .word 0x00000122
	thumb_func_end sub_02059390

	thumb_func_start sub_020593B4
sub_020593B4: ; 0x020593B4
	ldr r1, _020593C4 ; =0x021C0848
	mov r2, #0
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _020593C8 ; =0x00000122
	strb r2, [r1, r0]
	bx lr
	nop
_020593C4: .word 0x021C0848
_020593C8: .word 0x00000122
	thumb_func_end sub_020593B4

	thumb_func_start sub_020593CC
sub_020593CC: ; 0x020593CC
	ldr r1, _020593D8 ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _020593DC ; =0x00000142
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_020593D8: .word 0x021C0848
_020593DC: .word 0x00000142
	thumb_func_end sub_020593CC

	thumb_func_start sub_020593E0
sub_020593E0: ; 0x020593E0
	ldr r1, _020593EC ; =0x021C0848
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _020593F0 ; =0x0000013A
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_020593EC: .word 0x021C0848
_020593F0: .word 0x0000013A
	thumb_func_end sub_020593E0

	thumb_func_start sub_020593F4
sub_020593F4: ; 0x020593F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02059420 ; =0x021C0848
	add r1, r4, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	bl sub_0203608C
	ldr r1, _02059420 ; =0x021C0848
	lsl r0, r0, #3
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0xa6
	strb r4, [r0]
	mov r0, #0
	bl sub_02057AE4
	pop {r4, pc}
	nop
_02059420: .word 0x021C0848
	thumb_func_end sub_020593F4

	thumb_func_start sub_02059424
sub_02059424: ; 0x02059424
	push {r4, lr}
	ldr r3, _02059440 ; =0x021C0848
	lsl r2, r0, #3
	ldr r4, [r3, #0]
	lsl r0, r0, #2
	add r2, r4, r2
	add r2, #0xa6
	strb r1, [r2]
	ldr r2, [r3, #0]
	add r0, r2, r0
	ldr r0, [r0, #8]
	bl sub_0205EA84
	pop {r4, pc}
	; .align 2, 0
_02059440: .word 0x021C0848
	thumb_func_end sub_02059424

	thumb_func_start sub_02059444
sub_02059444: ; 0x02059444
	push {r3, lr}
	ldr r1, _02059460 ; =0x021C0848
	lsl r0, r0, #2
	ldr r1, [r1, #0]
	add r0, r1, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0205945A
	bl sub_0205EA78
	pop {r3, pc}
_0205945A:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	; .align 2, 0
_02059460: .word 0x021C0848
	thumb_func_end sub_02059444

	thumb_func_start sub_02059464
sub_02059464: ; 0x02059464
	push {r3, lr}
	cmp r0, #0
	beq _02059474
	ldr r1, _02059488 ; =0x021C0848
	ldr r2, [r1, #0]
	ldr r1, [r2, #0]
	orr r0, r1
	str r0, [r2, #0]
_02059474:
	bl sub_0203D128
	ldr r0, _02059488 ; =0x021C0848
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xaf
	lsl r0, r0, #2
	strb r2, [r1, r0]
	pop {r3, pc}
	nop
_02059488: .word 0x021C0848
	thumb_func_end sub_02059464

	thumb_func_start sub_0205948C
sub_0205948C: ; 0x0205948C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	beq _020594A0
	ldr r0, _020594E8 ; =0x021C0848
	ldr r2, [r0, #0]
	mvn r0, r4
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
_020594A0:
	ldr r0, _020594E8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0x10
	bne _020594B8
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x3e
	add r1, sp, #0
	bl sub_020360D0
_020594B8:
	ldr r0, _020594E8 ; =0x021C0848
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020594E4
	cmp r4, #0x10
	beq _020594D4
	bl sub_0203D140
	mov r0, #1
	bl sub_02057FC4
	add sp, #4
	pop {r3, r4, pc}
_020594D4:
	bl sub_0203D140
	ldr r0, _020594E8 ; =0x021C0848
	mov r2, #1
	ldr r1, [r0, #0]
	mov r0, #0xaf
	lsl r0, r0, #2
	strb r2, [r1, r0]
_020594E4:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_020594E8: .word 0x021C0848
	thumb_func_end sub_0205948C

	thumb_func_start sub_020594EC
sub_020594EC: ; 0x020594EC
	ldr r0, _020594F8 ; =0x021C0848
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	bx lr
	nop
_020594F8: .word 0x021C0848
	thumb_func_end sub_020594EC

	thumb_func_start sub_020594FC
sub_020594FC: ; 0x020594FC
	push {r3, lr}
	bl sub_0203D128
	ldr r0, _02059510 ; =0x021C0848
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xaf
	lsl r0, r0, #2
	strb r2, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_02059510: .word 0x021C0848
	thumb_func_end sub_020594FC

	thumb_func_start sub_02059514
sub_02059514: ; 0x02059514
	push {r3, lr}
	bl sub_0203D140
	mov r0, #1
	bl sub_02057FC4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02059514

	thumb_func_start sub_02059524
sub_02059524: ; 0x02059524
	push {r3, lr}
	ldr r0, _02059568 ; =0x021C0848
	ldr r2, [r0, #0]
	ldr r0, _0205956C ; =0x000002BF
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _02059564
	sub r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _0205954A
	bl sub_02059514
	ldr r0, _02059568 ; =0x021C0848
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0205956C ; =0x000002BF
	strb r2, [r1, r0]
	pop {r3, pc}
_0205954A:
	bl sub_0203608C
	bl ov23_02243298
	cmp r0, #0
	beq _02059564
	bl sub_02059514
	ldr r0, _02059568 ; =0x021C0848
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0205956C ; =0x000002BF
	strb r2, [r1, r0]
_02059564:
	pop {r3, pc}
	nop
_02059568: .word 0x021C0848
_0205956C: .word 0x000002BF
	thumb_func_end sub_02059524

	thumb_func_start sub_02059570
sub_02059570: ; 0x02059570
	push {r3, lr}
	ldr r0, _0205959C ; =0x021C0848
	ldr r2, [r0, #0]
	ldr r0, _020595A0 ; =0x000002BF
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _02059598
	sub r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _02059598
	bl sub_0203608C
	bl ov23_02243298
	cmp r0, #0
	bne _02059598
	mov r0, #0
	bl sub_02057FC4
_02059598:
	pop {r3, pc}
	nop
_0205959C: .word 0x021C0848
_020595A0: .word 0x000002BF
	thumb_func_end sub_02059570

	thumb_func_start sub_020595A4
sub_020595A4: ; 0x020595A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _02059620 ; =0x021C0848
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0205961A
	mov r6, #0
	add r4, r6, #0
	add r5, r6, #0
_020595B6:
	ldr r0, _02059620 ; =0x021C0848
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02059610
	bl sub_0203608C
	cmp r6, r0
	beq _02059610
	ldr r0, _02059620 ; =0x021C0848
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_0205EB3C
	ldr r1, _02059620 ; =0x021C0848
	str r0, [sp, #0xc]
	ldr r1, [r1, #0]
	add r1, r1, r5
	add r2, r1, #0
	add r2, #0xa2
	ldrh r2, [r2]
	str r2, [sp, #8]
	add r2, r1, #0
	add r2, #0xa4
	ldrh r7, [r2]
	mov r2, #0xa6
	ldrsb r1, [r1, r2]
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	bl sub_02063024
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_02063044
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r3, r7, #0
	bl sub_02063340
_02059610:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #8
	cmp r6, #8
	blt _020595B6
_0205961A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02059620: .word 0x021C0848
	thumb_func_end sub_020595A4

	thumb_func_start sub_02059624
sub_02059624: ; 0x02059624
	ldr r0, _02059634 ; =0x021C0848
	mov r2, #8
	ldr r1, [r0, #0]
	mov r0, #0xb
	lsl r0, r0, #6
	strb r2, [r1, r0]
	bx lr
	nop
_02059634: .word 0x021C0848
	thumb_func_end sub_02059624

	thumb_func_start sub_02059638
sub_02059638: ; 0x02059638
	ldr r1, _02059644 ; =0x021C0848
	ldr r2, [r1, #0]
	ldr r1, _02059648 ; =0x000002C3
	strb r0, [r2, r1]
	bx lr
	nop
_02059644: .word 0x021C0848
_02059648: .word 0x000002C3
	thumb_func_end sub_02059638

	.rodata


	.global Unk_020ED4DC
Unk_020ED4DC: ; 0x020ED4DC
	.incbin "incbin/arm9_rodata.bin", 0x889C, 0x88A4 - 0x889C

	.global Unk_020ED4E4
Unk_020ED4E4: ; 0x020ED4E4
	.incbin "incbin/arm9_rodata.bin", 0x88A4, 0x88B0 - 0x88A4

	.global Unk_020ED4F0
Unk_020ED4F0: ; 0x020ED4F0
	.incbin "incbin/arm9_rodata.bin", 0x88B0, 0x88C0 - 0x88B0

	.global Unk_020ED500
Unk_020ED500: ; 0x020ED500
	.incbin "incbin/arm9_rodata.bin", 0x88C0, 0x14



	.data


	.global Unk_02100B6C
Unk_02100B6C: ; 0x02100B6C
	.incbin "incbin/arm9_data.bin", 0x1E8C, 0x1E94 - 0x1E8C

	.global Unk_02100B74
Unk_02100B74: ; 0x02100B74
	.incbin "incbin/arm9_data.bin", 0x1E94, 0x10



	.bss


	.global Unk_021C0848
Unk_021C0848: ; 0x021C0848
	.space 0x4

