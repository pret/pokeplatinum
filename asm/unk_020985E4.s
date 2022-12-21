	.include "macros/function.inc"
	.include "include/unk_020985E4.inc"

	

	.text


	thumb_func_start sub_020985E4
sub_020985E4: ; 0x020985E4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018144
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_02025E38
	str r0, [r4, #8]
	bl sub_02025F30
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #0]
	ldr r1, _02098628 ; =sub_0209862C
	add r0, r7, #0
	add r2, r5, #0
	str r4, [r5, #4]
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02098628: .word sub_0209862C
	thumb_func_end sub_020985E4

	thumb_func_start sub_0209862C
sub_0209862C: ; 0x0209862C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #5
	bhi _020986C2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02098650: ; jump table
	.short _0209865C - _02098650 - 2 ; case 0
	.short _02098668 - _02098650 - 2 ; case 1
	.short _02098682 - _02098650 - 2 ; case 2
	.short _0209869A - _02098650 - 2 ; case 3
	.short _020986AC - _02098650 - 2 ; case 4
	.short _020986B2 - _02098650 - 2 ; case 5
_0209865C:
	mov r0, #0
	bl ov5_021D1744
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02098668:
	bl sub_0200F2AC
	cmp r0, #0
	beq _020986C2
	ldr r1, _020986C8 ; =0x020F680C
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl sub_0203CD84
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020986C2
_02098682:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _020986C2
	add r0, r5, #0
	bl sub_020509D4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020986C2
_0209869A:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	bne _020986C2
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020986C2
_020986AC:
	add r0, r0, #1
	str r0, [r4, #0]
	b _020986C2
_020986B2:
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020986C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020986C8: .word 0x020F680C
	thumb_func_end sub_0209862C

	.rodata


	.global Unk_020F680C
Unk_020F680C: ; 0x020F680C
	.incbin "incbin/arm9_rodata.bin", 0x11BCC, 0x10

