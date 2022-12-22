	.include "macros/function.inc"
	.include "include/unk_02056720.inc"

	

	.text


	thumb_func_start sub_02056720
sub_02056720: ; 0x02056720
	mov r0, #0x46
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_02056720

	thumb_func_start sub_02056728
sub_02056728: ; 0x02056728
	push {r3, r4, r5, lr}
	mov r2, #0
	add r3, r2, #0
_0205672E:
	add r1, r0, r2
	add r2, r2, #1
	strb r3, [r1, #3]
	cmp r2, #0x20
	blt _0205672E
	strb r3, [r0, #1]
	strb r3, [r0, #2]
	ldrb r1, [r0]
	mov r2, #1
	bic r1, r2
	strb r1, [r0]
	ldrb r4, [r0]
	mov r1, #0x38
	bic r4, r1
	strb r4, [r0]
	ldrb r4, [r0]
	mov r1, #2
	bic r4, r1
	strb r4, [r0]
	str r3, [r0, #0x24]
	ldrh r1, [r0, #0x28]
	bic r1, r2
	strh r1, [r0, #0x28]
	ldrh r2, [r0, #0x28]
	mov r1, #0x3e
	bic r2, r1
	strh r2, [r0, #0x28]
	ldrh r2, [r0, #0x28]
	ldr r1, _020567C8 ; =0xFFFFF03F
	and r1, r2
	strh r1, [r0, #0x28]
	add r1, r0, #0
	mov r2, #1
	add r1, #0xa8
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xa4
	str r3, [r1, #0]
	ldr r1, _020567CC ; =0x020EC538
	add r2, r0, #0
_0205677E:
	ldrb r5, [r1]
	add r4, r2, #0
	add r4, #0xa9
	strb r5, [r4]
	add r4, r2, #0
	ldrb r5, [r1, #1]
	add r4, #0xaa
	add r3, r3, #1
	strb r5, [r4]
	add r1, r1, #2
	add r2, r2, #2
	cmp r3, #6
	blt _0205677E
	mov r4, #0
	add r3, r0, #0
	add r1, r4, #0
_0205679E:
	add r2, r3, #0
	add r2, #0xb8
	strh r1, [r2]
	add r2, r3, #0
	add r2, #0xba
	strh r1, [r2]
	add r2, r3, #0
	add r2, #0xbc
	add r4, r4, #1
	add r3, #8
	str r1, [r2, #0]
	cmp r4, #0xc
	blt _0205679E
	ldrb r3, [r0]
	mov r2, #4
	bic r3, r2
	strb r3, [r0]
	bl sub_020567F0
	pop {r3, r4, r5, pc}
	nop
_020567C8: .word 0xFFFFF03F
_020567CC: .word 0x020EC538
	thumb_func_end sub_02056728

	thumb_func_start sub_020567D0
sub_020567D0: ; 0x020567D0
	ldrb r2, [r0]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020567D0

	thumb_func_start sub_020567E0
sub_020567E0: ; 0x020567E0
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_020567E0

	thumb_func_start sub_020567E8
sub_020567E8: ; 0x020567E8
	add r0, r0, r1
	ldrb r0, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020567E8

	thumb_func_start sub_020567F0
sub_020567F0: ; 0x020567F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r6, _0205682C ; =0x00000000
	bmi _020567FE
	cmp r4, #0x19
	blt _02056802
_020567FE:
	bl sub_02022974
_02056802:
	mov r0, #1
	ldrsb r1, [r5, r0]
	cmp r1, #0x19
	bge _02056828
	add r2, r5, #3
	ldrb r1, [r2, r4]
	cmp r1, #0
	bne _02056828
	strb r0, [r2, r4]
	ldrsb r0, [r5, r0]
	add r0, r0, #1
	strb r0, [r5, #1]
	cmp r4, #3
	bne _02056826
	ldrb r1, [r5]
	mov r0, #2
	orr r0, r1
	strb r0, [r5]
_02056826:
	mov r6, #1
_02056828:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205682C: .word 0x00000000
	thumb_func_end sub_020567F0

	thumb_func_start sub_02056830
sub_02056830: ; 0x02056830
	mov r1, #2
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02056830

	thumb_func_start sub_02056838
sub_02056838: ; 0x02056838
	push {r3, r4}
	mov r1, #2
	ldrsb r3, [r0, r1]
	mov r2, #0
	add r4, r3, #0
_02056842:
	add r3, r3, #1
	cmp r3, #0x19
	blt _0205684A
	add r3, r2, #0
_0205684A:
	cmp r3, r4
	beq _02056856
	add r1, r0, r3
	ldrb r1, [r1, #3]
	cmp r1, #0
	beq _02056842
_02056856:
	mov r1, #2
	strb r3, [r0, #2]
	ldrsb r0, [r0, r1]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02056838

	thumb_func_start sub_02056860
sub_02056860: ; 0x02056860
	push {r3, r4}
	mov r1, #2
	ldrsb r3, [r0, r1]
	mov r2, #0x18
	add r4, r3, #0
_0205686A:
	sub r3, r3, #1
	bpl _02056870
	add r3, r2, #0
_02056870:
	cmp r3, r4
	beq _0205687C
	add r1, r0, r3
	ldrb r1, [r1, #3]
	cmp r1, #0
	beq _0205686A
_0205687C:
	mov r1, #2
	strb r3, [r0, #2]
	ldrsb r0, [r0, r1]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02056860

	thumb_func_start sub_02056888
sub_02056888: ; 0x02056888
	push {r4, lr}
	add r4, r0, #0
	bne _02056892
	bl sub_02022974
_02056892:
	ldrb r0, [r4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02056888

	thumb_func_start sub_0205689C
sub_0205689C: ; 0x0205689C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _020568AA
	bl sub_02022974
_020568AA:
	cmp r4, #8
	blo _020568B2
	bl sub_02022974
_020568B2:
	ldrb r1, [r5]
	mov r0, #0x38
	bic r1, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205689C

	thumb_func_start sub_020568C8
sub_020568C8: ; 0x020568C8
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_020568C8

	thumb_func_start sub_020568CC
sub_020568CC: ; 0x020568CC
	ldrb r2, [r0]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1f
	beq _020568D6
	str r1, [r0, #0x24]
_020568D6:
	bx lr
	thumb_func_end sub_020568CC

	thumb_func_start sub_020568D8
sub_020568D8: ; 0x020568D8
	ldrh r0, [r0, #0x28]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_020568D8

	thumb_func_start sub_020568E0
sub_020568E0: ; 0x020568E0
	ldrh r3, [r0, #0x28]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1b
	str r3, [r1, #0]
	ldrh r0, [r0, #0x28]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1a
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020568E0

	thumb_func_start sub_020568F4
sub_020568F4: ; 0x020568F4
	push {r4, r5}
	ldrh r4, [r0, #0x28]
	mov r5, #1
	lsl r1, r1, #0x10
	bic r4, r5
	lsr r5, r1, #0x10
	mov r1, #1
	and r1, r5
	orr r1, r4
	strh r1, [r0, #0x28]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x1b
	ldrh r1, [r0, #0x28]
	mov r4, #0x3e
	lsr r2, r2, #0x1a
	bic r1, r4
	orr r1, r2
	strh r1, [r0, #0x28]
	ldrh r2, [r0, #0x28]
	ldr r1, _02056930 ; =0xFFFFF03F
	and r2, r1
	lsl r1, r3, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x14
	orr r1, r2
	strh r1, [r0, #0x28]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02056930: .word 0xFFFFF03F
	thumb_func_end sub_020568F4

	thumb_func_start sub_02056934
sub_02056934: ; 0x02056934
	push {r3, r4}
	add r3, r0, #0
	add r3, #0xa8
	ldrb r3, [r3]
	cmp r3, r1
	bne _0205695A
	add r1, r0, #0
	add r1, #0xa4
	ldr r4, [r1, #0]
	mov r3, #1
	sub r1, r2, #1
	add r2, r3, #0
	lsl r2, r1
	add r1, r4, #0
	orr r1, r2
	add r0, #0xa4
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
_0205695A:
	add r3, r0, #0
	add r3, #0xa8
	strb r1, [r3]
	mov r3, #1
	sub r1, r2, #1
	add r2, r3, #0
	lsl r2, r1
	add r0, #0xa4
	str r2, [r0, #0]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02056934

	thumb_func_start sub_02056970
sub_02056970: ; 0x02056970
	push {r3, r4}
	add r3, r0, #0
	add r3, #0xa8
	ldrb r3, [r3]
	cmp r3, r1
	bne _02056996
	add r1, r0, #0
	add r1, #0xa4
	ldr r4, [r1, #0]
	mov r3, #1
	sub r1, r2, #1
	add r2, r3, #0
	lsl r2, r1
	mvn r1, r2
	and r1, r4
	add r0, #0xa4
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
_02056996:
	add r2, r0, #0
	add r2, #0xa8
	strb r1, [r2]
	mov r1, #0
	add r0, #0xa4
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02056970

	thumb_func_start sub_020569A8
sub_020569A8: ; 0x020569A8
	add r3, r0, #0
	add r3, #0xa8
	ldrb r3, [r3]
	cmp r3, r1
	bne _020569C0
	add r0, #0xa4
	ldr r1, [r0, #0]
	sub r0, r2, #1
	lsr r1, r0
	mov r0, #1
	and r0, r1
	bx lr
_020569C0:
	mov r0, #0
	bx lr
	thumb_func_end sub_020569A8

	thumb_func_start sub_020569C4
sub_020569C4: ; 0x020569C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #6
	blt _020569D6
	bl sub_02022974
_020569D6:
	lsl r1, r4, #1
	add r0, r5, r1
	add r0, #0xa9
	strb r6, [r0]
	add r0, r5, r1
	add r0, #0xaa
	strb r7, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020569C4

	thumb_func_start sub_020569E8
sub_020569E8: ; 0x020569E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #6
	blt _020569FA
	bl sub_02022974
_020569FA:
	lsl r1, r4, #1
	add r0, r5, r1
	add r0, #0xa9
	ldrb r0, [r0]
	strb r0, [r6]
	add r0, r5, r1
	add r0, #0xaa
	ldrb r0, [r0]
	strb r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020569E8

	thumb_func_start sub_02056A10
sub_02056A10: ; 0x02056A10
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02056A10

	thumb_func_start sub_02056A18
sub_02056A18: ; 0x02056A18
	push {r3, lr}
	ldrb r2, [r0]
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1f
	beq _02056A2A
	add r0, #0x2a
	mov r2, #0x78
	bl MI_CpuCopy8
_02056A2A:
	pop {r3, pc}
	thumb_func_end sub_02056A18

	thumb_func_start sub_02056A2C
sub_02056A2C: ; 0x02056A2C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	add r1, #0x2a
	mov r2, #0x78
	bl MI_CpuCopy8
	ldrb r1, [r4]
	mov r0, #4
	orr r0, r1
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02056A2C

	thumb_func_start sub_02056A48
sub_02056A48: ; 0x02056A48
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02056AAC
	cmp r0, #0xc
	blt _02056A7C
	mov r2, #0
	add r3, r5, #0
_02056A5A:
	add r0, r3, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r3, #0
	add r0, #0xc4
	add r4, r3, #0
	ldr r0, [r0, #0]
	add r4, #0xb8
	str r1, [r4, #0]
	add r1, r3, #0
	add r1, #0xbc
	add r2, r2, #1
	add r3, #8
	str r0, [r1, #0]
	cmp r2, #0xb
	blt _02056A5A
	mov r0, #0xb
_02056A7C:
	lsl r4, r0, #3
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r1, r5, r4
	add r1, #0xb8
	strh r0, [r1]
	add r0, r6, #0
	bl sub_02079E44
	add r1, r5, r4
	add r1, #0xba
	strh r0, [r1]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	add r1, r5, r4
	add r1, #0xbc
	str r0, [r1, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02056A48

	thumb_func_start sub_02056AAC
sub_02056AAC: ; 0x02056AAC
	mov r2, #0
_02056AAE:
	add r1, r0, #0
	add r1, #0xb8
	ldrh r1, [r1]
	cmp r1, #0
	bne _02056ABC
	add r0, r2, #0
	bx lr
_02056ABC:
	add r2, r2, #1
	add r0, #8
	cmp r2, #0xc
	blt _02056AAE
	add r0, r2, #0
	bx lr
	thumb_func_end sub_02056AAC

	thumb_func_start sub_02056AC8
sub_02056AC8: ; 0x02056AC8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r4, #0xc
	blt _02056ADA
	bl sub_02022974
_02056ADA:
	add r6, r5, #0
	lsl r4, r4, #3
	add r6, #0xb8
	ldrh r0, [r6, r4]
	cmp r0, #0
	bne _02056AEA
	bl sub_02022974
_02056AEA:
	ldrh r0, [r6, r4]
	str r0, [r7, #0]
	add r0, r5, r4
	add r0, #0xba
	ldrh r1, [r0]
	ldr r0, [sp]
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02056AC8

	thumb_func_start sub_02056AFC
sub_02056AFC: ; 0x02056AFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xc
	blt _02056B0A
	bl sub_02022974
_02056B0A:
	lsl r4, r4, #3
	add r0, r5, r4
	add r0, #0xb8
	ldrh r0, [r0]
	cmp r0, #0
	bne _02056B1A
	bl sub_02022974
_02056B1A:
	add r0, r5, r4
	add r0, #0xbc
	ldr r0, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02056AFC

	thumb_func_start sub_02056B24
sub_02056B24: ; 0x02056B24
	ldr r3, _02056B2C ; =sub_020245BC
	mov r1, #5
	bx r3
	nop
_02056B2C: .word sub_020245BC
	thumb_func_end sub_02056B24

	.rodata


	.global Unk_020EC538
Unk_020EC538: ; 0x020EC538
	.incbin "incbin/arm9_rodata.bin", 0x78F8, 0xC

