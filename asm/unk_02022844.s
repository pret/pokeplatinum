	.include "macros/function.inc"
	.include "include/unk_02022844.inc"

	

	.text


	thumb_func_start sub_02022844
sub_02022844: ; 0x02022844
	push {r3, lr}
	ldr r0, _0202286C ; =0x021C077C
	mov r2, #0
	str r2, [r0, #4]
	str r2, [r0, #8]
	ldr r1, _02022870 ; =0x0400010E
	str r2, [r0, #0]
	strh r2, [r1]
	sub r0, r1, #2
	strh r2, [r0]
	mov r0, #0xc1
	strh r0, [r1]
	ldr r1, _02022874 ; =sub_02022878
	mov r0, #0x40
	bl sub_020C144C
	mov r0, #0x40
	bl sub_020C161C
	pop {r3, pc}
	; .align 2, 0
_0202286C: .word 0x021C077C
_02022870: .word 0x0400010E
_02022874: .word sub_02022878
	thumb_func_end sub_02022844

	thumb_func_start sub_02022878
sub_02022878: ; 0x02022878
	ldr r0, _020228B0 ; =0x021C077C
	mov r3, #0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	add r1, r1, #1
	adc r2, r3
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0202289C
	ldr r2, _020228B4 ; =0x0400010E
	strh r3, [r2]
	sub r1, r2, #2
	strh r3, [r1]
	mov r1, #0xc1
	strh r1, [r2]
	str r3, [r0, #0]
_0202289C:
	ldr r3, _020228B8 ; =0x027E0000
	ldr r1, _020228BC ; =0x00003FF8
	mov r0, #0x40
	ldr r2, [r3, r1]
	orr r2, r0
	str r2, [r3, r1]
	ldr r3, _020228C0 ; =sub_020C144C
	ldr r1, _020228C4 ; =sub_02022878
	bx r3
	nop
_020228B0: .word 0x021C077C
_020228B4: .word 0x0400010E
_020228B8: .word 0x027E0000
_020228BC: .word 0x00003FF8
_020228C0: .word sub_020C144C
_020228C4: .word sub_02022878
	thumb_func_end sub_02022878

	thumb_func_start sub_020228C8
sub_020228C8: ; 0x020228C8
	push {r4, r5, lr}
	sub sp, #0xc
	bl sub_020C3D98
	ldr r1, _0202292C ; =0x0400010C
	add r3, sp, #0
	ldrh r1, [r1]
	ldr r2, _02022930 ; =0x0000FFFF
	strh r1, [r3]
	ldr r1, _02022934 ; =0x021C077C
	ldr r5, [r1, #4]
	ldr r4, [r1, #8]
	mov r1, #0
	mvn r1, r1
	and r1, r5
	str r1, [sp, #4]
	and r2, r4
	ldr r1, _02022938 ; =0x04000214
	str r2, [sp, #8]
	ldr r2, [r1, #0]
	mov r1, #0x40
	tst r2, r1
	beq _0202290C
	ldrh r2, [r3]
	lsl r1, r1, #9
	tst r1, r2
	bne _0202290C
	ldr r2, [sp, #4]
	mov r1, #0
	ldr r3, [sp, #8]
	add r2, r2, #1
	adc r3, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
_0202290C:
	bl sub_020C3DAC
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	lsr r0, r2, #0x10
	lsl r1, r1, #0x10
	orr r1, r0
	add r0, sp, #0
	lsl r3, r2, #0x10
	ldrh r2, [r0]
	asr r0, r2, #0x1f
	orr r1, r0
	add r0, r3, #0
	orr r0, r2
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0202292C: .word 0x0400010C
_02022930: .word 0x0000FFFF
_02022934: .word 0x021C077C
_02022938: .word 0x04000214
	thumb_func_end sub_020228C8

	thumb_func_start sub_0202293C
sub_0202293C: ; 0x0202293C
	ldr r3, _02022940 ; =sub_020228C8
	bx r3
	; .align 2, 0
_02022940: .word sub_020228C8
	thumb_func_end sub_0202293C

	thumb_func_start sub_02022944
sub_02022944: ; 0x02022944
	push {r3, lr}
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _02022958 ; =0x000082EA
	lsl r0, r0, #6
	mov r3, #0
	bl sub_020E1ED4
	pop {r3, pc}
	; .align 2, 0
_02022958: .word 0x000082EA
	thumb_func_end sub_02022944

	thumb_func_start sub_0202295C
sub_0202295C: ; 0x0202295C
	push {r3, lr}
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _02022970 ; =0x01FF6210
	lsl r0, r0, #6
	mov r3, #0
	bl sub_020E1ED4
	pop {r3, pc}
	; .align 2, 0
_02022970: .word 0x01FF6210
	thumb_func_end sub_0202295C

	.bss


	.global Unk_021C077C
Unk_021C077C: ; 0x021C077C
	.space 0x4

	.global Unk_021C0780
Unk_021C0780: ; 0x021C0780
	.space 0x8

