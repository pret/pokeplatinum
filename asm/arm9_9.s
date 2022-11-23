
	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_02088554
sub_02088554: ; 0x02088554
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x18]
	add r7, r1, #0
	mov r0, #2
	mov r1, #0x12
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	mov r4, #0
	bl sub_02023790
	str r0, [sp, #0x28]
	ldrh r1, [r7]
	ldr r0, _02088644 ; =0x0000FFFF
	cmp r1, r0
	beq _0208863A
	ldr r0, [sp, #0x54]
	ldr r6, [sp, #0x50]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x20]
	add r0, r0, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x30]
_0208858C:
	lsl r0, r4, #1
	ldrh r1, [r7, r0]
	ldr r0, _02088648 ; =0x00002FFF
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #2
	bhi _020885D8
	mov r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	add r2, r4, #0
	ldr r0, [sp, #0x1c]
	mul r2, r6
	add r0, r0, r2
	ldr r2, _0208864C ; =0x0000D001
	lsl r0, r0, #0x10
	sub r1, r1, r2
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r2, r1, #8
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	str r0, [sp, #0xc]
	mov r0, #0xc
	asr r2, r1, #1
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r1, r1, r2
	mov r2, #0
	ldr r0, [sp, #0x18]
	add r3, r2, #0
	bl sub_0201ADDC
	b _0208862E
_020885D8:
	ldr r0, _02088650 ; =0x0000D004
	cmp r1, r0
	bne _020885E2
	add r4, r4, #1
	b _02088630
_020885E2:
	add r0, sp, #0x38
	strh r1, [r0]
	ldr r1, _02088644 ; =0x0000FFFF
	strh r1, [r0, #2]
	mov r0, #0
	add r1, sp, #0x38
	add r2, r0, #0
	bl sub_02002D48
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r1, sp, #0x38
	bl sub_02023D28
	ldr r0, [sp, #0x20]
	sub r3, r6, r5
	str r0, [sp]
	ldr r0, [sp, #0x24]
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r3, r5, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	mov ip, r3
	add r5, r4, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	mul r5, r6
	add r3, r3, r5
	mov r5, ip
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x28]
	mov r1, #0
	add r3, r5, r3
	bl sub_0201D78C
_0208862E:
	add r4, r4, #1
_02088630:
	lsl r0, r4, #1
	ldrh r1, [r7, r0]
	ldr r0, _02088644 ; =0x0000FFFF
	cmp r1, r0
	bne _0208858C
_0208863A:
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02088644: .word 0x0000FFFF
_02088648: .word 0x00002FFF
_0208864C: .word 0x0000D001
_02088650: .word 0x0000D004
	thumb_func_end sub_02088554

	thumb_func_start sub_02088654
sub_02088654: ; 0x02088654
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r5, #0
	add r6, r1, #0
	str r5, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r1, r2, #0
	add r2, r6, #0
	add r3, r5, #0
	add r4, r0, #0
	str r5, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [r4, #0xc]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02088654

	thumb_func_start sub_02088678
sub_02088678: ; 0x02088678
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r0, #0
	str r1, [sp, #8]
	add r0, #0x30
	mov r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0201ADA4
	add r0, r6, #0
	ldr r3, _02088744 ; =0x000D0E0F
	add r0, #0x30
	add r1, r4, #0
	mov r2, #2
	bl sub_02088654
	mov r1, #2
	lsl r1, r1, #0xa
	bl sub_020C2C54
	add r7, r6, #0
	mov r4, #0
	add r7, #0x30
_020886A8:
	mov r0, #0
	str r0, [sp]
	add r0, r7, #0
	mov r1, #4
	mov r2, #2
	lsl r3, r4, #2
	str r5, [sp, #4]
	bl sub_02012C60
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #8
	bl sub_020C2C54
	ldr r1, _02088748 ; =0x020F24D8
	mov r2, #1
	ldrb r1, [r1, r4]
	add r0, r5, #0
	lsl r2, r2, #8
	lsl r1, r1, #5
	bl sub_020C0314
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _020886A8
	mov r0, #0x15
	mov r1, #0x12
	bl sub_02023790
	add r4, r0, #0
	mov r5, #0
_020886EA:
	ldr r0, [sp, #8]
	lsl r1, r5, #1
	ldrh r1, [r0, r1]
	add r0, sp, #0xc
	lsl r7, r5, #4
	strh r1, [r0]
	ldr r1, _0208874C ; =0x0000FFFF
	strh r1, [r0, #2]
	add r0, r6, r7
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02023D28
	ldr r3, _02088744 ; =0x000D0E0F
	add r0, r6, r7
	add r1, r4, #0
	mov r2, #2
	bl sub_02088654
	mov r1, #0x80
	add r7, r0, #0
	bl sub_020C2C54
	ldr r1, _02088750 ; =0x020F24F0
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	add r0, r7, #0
	lsl r1, r1, #5
	mov r2, #0x80
	bl sub_020C0314
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _020886EA
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02088744: .word 0x000D0E0F
_02088748: .word 0x020F24D8
_0208874C: .word 0x0000FFFF
_02088750: .word 0x020F24F0
	thumb_func_end sub_02088678

	thumb_func_start sub_02088754
sub_02088754: ; 0x02088754
	push {r3, r4, r5, lr}
	cmp r2, #0
	bne _0208875E
	ldr r1, _02088830 ; =0x0000D003
	b _02088764
_0208875E:
	sub r2, r2, #1
	lsl r2, r2, #1
	ldrh r1, [r1, r2]
_02088764:
	ldr r4, _02088834 ; =0x0000E003
	cmp r1, r4
	bgt _02088794
	bge _020887BA
	ldr r2, _02088838 ; =0x0000D004
	cmp r1, r2
	bgt _0208878C
	sub r2, r2, #3
	sub r2, r1, r2
	bmi _020887BC
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02088784: ; jump table
	.short _020887BA - _02088784 - 2 ; case 0
	.short _020887BA - _02088784 - 2 ; case 1
	.short _020887BA - _02088784 - 2 ; case 2
	.short _020887BA - _02088784 - 2 ; case 3
_0208878C:
	ldr r2, _0208883C ; =0x0000E002
	cmp r1, r2
	beq _020887BA
	b _020887BC
_02088794:
	add r2, r4, #1
	cmp r1, r2
	bgt _0208879E
	beq _020887BA
	b _020887BC
_0208879E:
	add r2, r4, #2
	sub r2, r1, r2
	cmp r2, #3
	bhi _020887BC
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020887B2: ; jump table
	.short _020887BA - _020887B2 - 2 ; case 0
	.short _020887BA - _020887B2 - 2 ; case 1
	.short _020887BA - _020887B2 - 2 ; case 2
	.short _020887BA - _020887B2 - 2 ; case 3
_020887BA:
	mov r1, #1
_020887BC:
	mov r4, #0
	add r5, r3, #0
	mov r2, #1
_020887C2:
	add r4, r4, #1
	strh r2, [r5]
	add r5, r5, #2
	cmp r4, #3
	blt _020887C2
	strh r1, [r3]
	cmp r1, #1
	beq _02088822
	ldr r5, _02088840 ; =0x020F2BBE
	mov r2, #0
_020887D6:
	ldrh r4, [r5]
	cmp r1, r4
	bne _020887F8
	mov r4, #6
	ldr r5, _02088840 ; =0x020F2BBE
	mul r4, r2
	add r4, r5, r4
	mov r1, #0
	add r5, r3, #0
_020887E8:
	ldrh r2, [r4]
	add r1, r1, #1
	add r4, r4, #2
	strh r2, [r5]
	add r5, r5, #2
	cmp r1, #3
	blt _020887E8
	b _02088822
_020887F8:
	ldrh r4, [r5, #4]
	cmp r1, r4
	bne _0208881A
	mov r4, #6
	ldr r5, _02088840 ; =0x020F2BBE
	mul r4, r2
	add r4, r5, r4
	mov r1, #0
	add r5, r3, #0
_0208880A:
	ldrh r2, [r4]
	add r1, r1, #1
	add r4, r4, #2
	strh r2, [r5]
	add r5, r5, #2
	cmp r1, #3
	blt _0208880A
	b _02088822
_0208881A:
	add r2, r2, #1
	add r5, r5, #6
	cmp r2, #0x52
	blo _020887D6
_02088822:
	add r1, r3, #0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl sub_02088678
	pop {r3, r4, r5, pc}
	nop
_02088830: .word 0x0000D003
_02088834: .word 0x0000E003
_02088838: .word 0x0000D004
_0208883C: .word 0x0000E002
_02088840: .word 0x020F2BBE
	thumb_func_end sub_02088754

	thumb_func_start sub_02088844
sub_02088844: ; 0x02088844
	push {r4, r5, r6, r7}
	mov r4, #0
	ldr r3, _02088890 ; =0x02100C40
	add r5, r4, #0
	add r6, r0, #0
	lsl r2, r1, #2
_02088850:
	ldr r7, [r3, r2]
	add r4, r4, #1
	ldrh r7, [r7, r5]
	add r5, r5, #2
	strh r7, [r6]
	add r6, r6, #2
	cmp r4, #0xd
	blt _02088850
	mov r3, #0x14
	ldr r4, _02088894 ; =0x02100C54
	mul r3, r1
	mov r2, #0
	add r3, r4, r3
	add r1, r2, #0
_0208886C:
	add r6, r1, #0
	add r4, r1, #0
	add r5, r0, #0
_02088872:
	ldr r7, [r3, #0]
	add r6, r6, #1
	ldrh r7, [r7, r4]
	add r4, r4, #2
	strh r7, [r5, #0x1a]
	add r5, r5, #2
	cmp r6, #0xd
	blt _02088872
	add r2, r2, #1
	add r3, r3, #4
	add r0, #0x1a
	cmp r2, #5
	blt _0208886C
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02088890: .word 0x02100C40
_02088894: .word 0x02100C54
	thumb_func_end sub_02088844

	thumb_func_start sub_02088898
sub_02088898: ; 0x02088898
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _02088BCC ; =0x00002FFD
	add r5, r1, #0
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r6, r2, #0
	cmp r0, #1
	bhi _020888B0
	mov r5, #1
_020888B0:
	ldr r0, [r4, #0]
	cmp r0, #4
	bne _020888C4
	ldr r0, _02088BD0 ; =0x00001FFE
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #3
	bhi _020888C4
	mov r5, #1
_020888C4:
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D34
	cmp r0, #0
	bne _020888EC
	ldr r0, _02088BD4 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _020888EC
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	add sp, #0x10
	mov r0, #2
	pop {r4, r5, r6, pc}
_020888EC:
	ldr r0, _02088BD8 ; =0x0000E002
	cmp r5, r0
	bgt _0208890A
	blt _020888F6
	b _02088A1E
_020888F6:
	ldr r3, _02088BDC ; =0x0000D002
	cmp r5, r3
	bgt _02088908
	sub r0, r3, #1
	cmp r5, r0
	blt _02088908
	beq _0208892C
	cmp r5, r3
	beq _0208897E
_02088908:
	b _02088B5E
_0208890A:
	add r0, r0, #1
	sub r0, r5, r0
	cmp r0, #5
	bls _02088914
	b _02088B5E
_02088914:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02088920: ; jump table
	.short _02088A1E - _02088920 - 2 ; case 0
	.short _02088A1E - _02088920 - 2 ; case 1
	.short _02088A1E - _02088920 - 2 ; case 2
	.short _020889CC - _02088920 - 2 ; case 3
	.short _02088A60 - _02088920 - 2 ; case 4
	.short _02088B10 - _02088920 - 2 ; case 5
_0208892C:
	add r0, r4, #0
	add r0, #0xd8
	str r0, [sp]
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	ldr r3, _02088BE0 ; =0x0000D001
	mov r1, #0x52
	str r0, [sp, #4]
	mov r0, #0x2a
	mov r2, #1
	bl sub_02088D08
	cmp r0, #0
	bne _0208894C
	b _02088C6E
_0208894C:
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	ldr r0, _02088BE4 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	add r4, #0xd8
	add r1, r4, #0
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
	ldr r0, _02088BE8 ; =0x000005EB
	bl sub_02005748
	b _02088C6E
_0208897E:
	add r0, r4, #0
	add r0, #0xd8
	str r0, [sp]
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	mov r1, #0x52
	mov r2, #2
	str r0, [sp, #4]
	mov r0, #0x48
	bl sub_02088D08
	cmp r0, #0
	beq _02088A6A
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	ldr r0, _02088BE4 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	add r4, #0xd8
	add r1, r4, #0
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
	ldr r0, _02088BE8 ; =0x000005EB
	bl sub_02005748
	b _02088C6E
_020889CC:
	mov r3, #0x56
	lsl r3, r3, #2
	ldrh r3, [r4, r3]
	add r2, r4, #0
	mov r0, #0
	mov r1, #0x52
	add r2, #0xd8
	bl sub_02088C9C
	cmp r0, #0
	beq _02088A6A
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	add r1, r4, #0
	ldr r0, _02088BE4 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, #0xd8
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
	mov r0, #0x4a
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, _02088BE8 ; =0x000005EB
	bl sub_02005748
	b _02088C6E
_02088A1E:
	mov r1, #0x46
	lsl r1, r1, #4
	ldr r0, _02088BD8 ; =0x0000E002
	ldr r2, [r4, r1]
	sub r5, r5, r0
	cmp r2, r5
	beq _02088A6A
	mov r2, #0
	sub r0, r1, #4
	str r2, [r4, r0]
	str r5, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x3a
	bl sub_02088844
	mov r0, #0x49
	lsl r0, r0, #4
	add r2, r4, r0
	lsl r1, r5, #2
	ldr r0, [r2, r1]
	add r0, r0, #1
	str r0, [r2, r1]
	ldr r0, _02088BEC ; =0x0000069E
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_02021CAC
	b _02088C6E
_02088A60:
	mov r1, #0x56
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	cmp r0, #0
	bne _02088A6C
_02088A6A:
	b _02088C6E
_02088A6C:
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r4, r0
	ldr r2, _02088BF0 ; =0x0000FFFF
	add r0, #0xd8
	strh r2, [r0]
	ldrh r0, [r4, r1]
	sub r0, r0, #1
	strh r0, [r4, r1]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _02088AA0
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A954
	b _02088ABE
_02088AA0:
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	ldr r0, _02088BE4 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0xd8
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
_02088ABE:
	ldr r0, _02088BF4 ; =0x000004C4
	mov r3, #0x5f
	add r1, r4, r0
	lsl r3, r3, #2
	str r1, [sp]
	ldr r1, [r4, r3]
	add r2, r3, #0
	str r1, [sp, #4]
	sub r2, #0x24
	sub r0, #0xcc
	add r1, r4, #0
	sub r3, #0x22
	ldrh r2, [r4, r2]
	add r0, r4, r0
	add r1, #0xd8
	add r3, r4, r3
	bl sub_02088754
	mov r1, #0x56
	lsl r1, r1, #2
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrh r1, [r4, r1]
	ldr r2, [r4, #0xc]
	add r0, r4, r0
	bl sub_02088E1C
	ldr r0, _02088BF8 ; =0x000004A4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, _02088BFC ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_02021CAC
	b _02088C6E
_02088B10:
	ldr r0, _02088C00 ; =0x000005C4
	ldr r0, [r4, r0]
	bl sub_02015760
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02088B56
	ldr r0, _02088C04 ; =0x000005E2
	bl sub_02005748
	ldr r0, _02088C08 ; =0x000004A8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	mov r1, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	add sp, #0x10
	mov r0, #3
	pop {r4, r5, r6, pc}
_02088B56:
	ldr r0, _02088C0C ; =0x0000045C
	mov r1, #5
	str r1, [r4, r0]
	b _02088C6E
_02088B5E:
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #4
	bne _02088B72
	cmp r5, #1
	bne _02088B72
	add sp, #0x10
	mov r0, #2
	pop {r4, r5, r6, pc}
_02088B72:
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq _02088C6E
	lsl r0, r1, #1
	add r0, r4, r0
	add r0, #0xd8
	strh r5, [r0]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	add r1, r4, #0
	ldr r0, _02088BE4 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, #0xd8
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
	mov r1, #0x56
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	add r0, r0, #1
	strh r0, [r4, r1]
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrh r1, [r4, r1]
	ldr r2, [r4, #0xc]
	add r0, r4, r0
	bl sub_02088E1C
	ldr r0, _02088BE8 ; =0x000005EB
	b _02088C10
	; .align 2, 0
_02088BCC: .word 0x00002FFD
_02088BD0: .word 0x00001FFE
_02088BD4: .word 0x021BF6BC
_02088BD8: .word 0x0000E002
_02088BDC: .word 0x0000D002
_02088BE0: .word 0x0000D001
_02088BE4: .word 0x000E0F01
_02088BE8: .word 0x000005EB
_02088BEC: .word 0x0000069E
_02088BF0: .word 0x0000FFFF
_02088BF4: .word 0x000004C4
_02088BF8: .word 0x000004A4
_02088BFC: .word 0x000005DC
_02088C00: .word 0x000005C4
_02088C04: .word 0x000005E2
_02088C08: .word 0x000004A8
_02088C0C: .word 0x0000045C
_02088C10:
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021FE0
	mov r3, #8
	ldr r0, _02088C74 ; =0x04000050
	mov r1, #0
	mov r2, #7
	str r3, [sp]
	bl sub_020BF55C
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x3c
	bl sub_02021D6C
	mov r0, #1
	str r0, [r4, #0x34]
	ldr r0, _02088C78 ; =0x000004C4
	mov r3, #0x5f
	add r1, r4, r0
	lsl r3, r3, #2
	str r1, [sp]
	ldr r1, [r4, r3]
	add r2, r3, #0
	str r1, [sp, #4]
	sub r2, #0x24
	sub r0, #0xcc
	add r1, r4, #0
	sub r3, #0x22
	ldrh r2, [r4, r2]
	add r0, r4, r0
	add r1, #0xd8
	add r3, r4, r3
	bl sub_02088754
_02088C6E:
	mov r0, #2
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02088C74: .word 0x04000050
_02088C78: .word 0x000004C4
	thumb_func_end sub_02088898

	thumb_func_start sub_02088C7C
sub_02088C7C: ; 0x02088C7C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #3
_02088C84:
	add r0, r1, #1
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02088288
	add r1, r0, #0
	lsl r0, r1, #1
	ldrh r0, [r5, r0]
	cmp r0, #1
	beq _02088C84
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02088C7C

	thumb_func_start sub_02088C9C
sub_02088C9C: ; 0x02088C9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r1, #0
	str r2, [sp]
	cmp r3, #0
	bne _02088CB0
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02088CB0:
	sub r1, r3, #1
	lsl r1, r1, #1
	str r1, [sp, #4]
	ldrh r3, [r2, r1]
	cmp r4, r0
	bge _02088CFE
	mov r1, #6
	ldr r2, _02088D04 ; =0x020F2BBE
	mul r1, r4
	add r5, r2, r1
	mov r7, #0
_02088CC6:
	add r2, r7, #0
	add r6, r5, #0
_02088CCA:
	ldrh r1, [r6]
	cmp r3, r1
	bne _02088CEE
	cmp r3, #1
	beq _02088CEE
	mov r0, #6
	ldr r1, _02088D04 ; =0x020F2BBE
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	bl sub_02088C7C
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	strh r0, [r2, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088CEE:
	add r2, r2, #1
	add r6, r6, #2
	cmp r2, #3
	blt _02088CCA
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, r0
	blt _02088CC6
_02088CFE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02088D04: .word 0x020F2BBE
	thumb_func_end sub_02088C9C

	thumb_func_start sub_02088D08
sub_02088D08: ; 0x02088D08
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, r1, #0
	ldr r1, [sp, #0x1c]
	mov lr, r2
	mov ip, r3
	cmp r1, #0
	beq _02088D24
	sub r1, r1, #1
	ldr r6, [sp, #0x18]
	lsl r7, r1, #1
	ldrh r5, [r6, r7]
	cmp r5, #1
	bne _02088D28
_02088D24:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02088D28:
	add r2, r4, #0
	cmp r4, r0
	bge _02088D5A
	mov r1, #6
	ldr r3, _02088E00 ; =0x020F2BBE
	mul r1, r4
	add r3, r3, r1
_02088D36:
	ldrh r1, [r3]
	cmp r5, r1
	bne _02088D52
	add r3, r2, #0
	mov r0, #6
	mul r3, r0
	mov r0, lr
	ldr r2, _02088E00 ; =0x020F2BBE
	lsl r1, r0, #1
	add r0, r2, r3
	ldrh r0, [r1, r0]
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088D52:
	add r2, r2, #1
	add r3, r3, #6
	cmp r2, r0
	blt _02088D36
_02088D5A:
	cmp r4, r0
	bge _02088D8A
	mov r2, lr
	ldr r1, _02088E00 ; =0x020F2BBE
	lsl r2, r2, #1
	add r1, r1, r2
	mov r2, #6
	mul r2, r4
	add r2, r1, r2
_02088D6C:
	ldrh r1, [r2]
	cmp r5, r1
	bne _02088D82
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02088E00 ; =0x020F2BBE
	ldrh r0, [r0, r1]
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088D82:
	add r4, r4, #1
	add r2, r2, #6
	cmp r4, r0
	blt _02088D6C
_02088D8A:
	ldr r1, _02088E04 ; =0x0000D001
	mov r0, ip
	cmp r0, r1
	beq _02088DA4
	add r1, r1, #1
	mov r0, ip
	cmp r0, r1
	beq _02088DC4
	ldr r1, _02088E08 ; =0x0000E006
	mov r0, ip
	cmp r0, r1
	beq _02088DE4
	b _02088DFC
_02088DA4:
	ldr r1, _02088E0C ; =0x020F2954
	mov r2, #0
_02088DA8:
	ldrh r0, [r1]
	cmp r5, r0
	bne _02088DBA
	ldr r0, _02088E10 ; =0x020F2956
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088DBA:
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #0xc
	blo _02088DA8
	b _02088DFC
_02088DC4:
	ldr r1, _02088E14 ; =0x020F292C
	mov r2, #0
_02088DC8:
	ldrh r0, [r1]
	cmp r5, r0
	bne _02088DDA
	ldr r0, _02088E18 ; =0x020F292E
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088DDA:
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #0xa
	blo _02088DC8
	b _02088DFC
_02088DE4:
	cmp r5, #0x26
	bne _02088DF0
	mov r0, #0x24
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088DF0:
	cmp r5, #0x76
	bne _02088DFC
	mov r0, #0x74
	strh r0, [r6, r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02088DFC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02088E00: .word 0x020F2BBE
_02088E04: .word 0x0000D001
_02088E08: .word 0x0000E006
_02088E0C: .word 0x020F2954
_02088E10: .word 0x020F2956
_02088E14: .word 0x020F292C
_02088E18: .word 0x020F292E
	thumb_func_end sub_02088D08

	thumb_func_start sub_02088E1C
sub_02088E1C: ; 0x02088E1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	mov r4, #0
	str r0, [sp]
	str r1, [sp, #4]
	cmp r6, #0
	ble _02088E40
	add r5, r0, #0
	mov r7, #0x2b
_02088E30:
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl sub_02021D6C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02088E30
_02088E40:
	ldr r0, [sp, #4]
	cmp r0, r6
	beq _02088E52
	lsl r1, r0, #2
	ldr r0, [sp]
	ldr r0, [r0, r1]
	mov r1, #0x2c
	bl sub_02021D6C
_02088E52:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02088E1C

	thumb_func_start sub_02088E58
sub_02088E58: ; 0x02088E58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x30]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0
	str r3, [sp, #0x14]
	str r2, [sp, #0x30]
	bl sub_0201ADA4
	ldr r1, _02088F38 ; =0x020F24E0
	ldr r0, [sp, #0x10]
	mov r7, #0
	ldrb r4, [r1, r0]
	mov r6, #0x10
_02088E78:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0201AE78
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x10
	mov r3, #0x26
	bl sub_0201AE78
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x10
	mov r3, #0x4c
	bl sub_0201AE78
	add r7, r7, #1
	add r6, #0x20
	cmp r7, #6
	blt _02088E78
	mov r7, #0
	add r6, r7, #0
_02088EC6:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x10
	mov r3, #0x13
	bl sub_0201AE78
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x10
	mov r3, #0x39
	bl sub_0201AE78
	add r7, r7, #1
	add r6, #0x20
	cmp r7, #7
	blt _02088EC6
	ldr r0, [sp, #0x10]
	mov r1, #0x14
	ldr r2, _02088F3C ; =0x02100C54
	mul r1, r0
	mov r7, #0
	mov r6, #4
	add r4, r2, r1
_02088F08:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	add r3, r6, #0
	str r0, [sp, #0xc]
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl sub_02088554
	add r7, r7, #1
	add r6, #0x13
	add r4, r4, #4
	cmp r7, #5
	blt _02088F08
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02088F38: .word 0x020F24E0
_02088F3C: .word 0x02100C54
	thumb_func_end sub_02088E58

	thumb_func_start sub_02088F40
sub_02088F40: ; 0x02088F40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	mov r7, #0
	add r1, r0, #0
_02088F4C:
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _02088F82
	mov r0, #0
	ldr r4, _02088FC4 ; =0x020F2984
	str r0, [sp, #4]
	add r5, r6, #0
_02088F5A:
	ldr r0, [r5, #0]
	ldr r1, [r4, #8]
	bl sub_02021D6C
	ldr r0, [sp, #4]
	add r4, #0x10
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r0, #3
	blt _02088F5A
	ldr r1, _02088FC8 ; =0x020F298C
	lsl r2, r7, #4
	lsl r0, r7, #2
	ldr r1, [r1, r2]
	ldr r0, [r6, r0]
	sub r1, r1, #3
	bl sub_02021D6C
	b _02088F8A
_02088F82:
	add r7, r7, #1
	add r1, r1, #4
	cmp r7, #3
	blt _02088F4C
_02088F8A:
	ldr r4, [sp]
	ldr r5, _02088FCC ; =0x020F29D4
	mov r7, #5
	add r4, #0x14
	add r6, #0x14
_02088F94:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02088FA4
	ldr r1, [r5, #8]
	ldr r0, [r6, #0]
	add r1, r1, #1
	bl sub_02021D6C
_02088FA4:
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x10
	add r6, r6, #4
	cmp r7, #7
	blt _02088F94
	mov r2, #0
	add r1, r2, #0
_02088FB4:
	ldr r0, [sp]
	add r2, r2, #1
	stmia r0!, {r1}
	str r0, [sp]
	cmp r2, #7
	blt _02088FB4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02088FC4: .word 0x020F2984
_02088FC8: .word 0x020F298C
_02088FCC: .word 0x020F29D4
	thumb_func_end sub_02088F40

	thumb_func_start sub_02088FD0
sub_02088FD0: ; 0x02088FD0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021FD0
	cmp r0, #0
	bne _0208903A
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bne _02089004
	mov r0, #0xc
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x20]
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x27
	bl sub_02021D6C
	b _02089010
_02089004:
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x27
	bl sub_02021D6C
_02089010:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _02089024
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	b _0208902C
_02089024:
	add r0, r4, #0
	mov r1, #0
	bl sub_02088454
_0208902C:
	mov r1, #0
	mov r0, #0xd3
	str r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021FE0
_0208903A:
	pop {r4, pc}
	thumb_func_end sub_02088FD0

	thumb_func_start sub_0208903C
sub_0208903C: ; 0x0208903C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #0
	mov ip, r0
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #4
	bne _02089050
	mov r0, #4
	mov ip, r0
_02089050:
	ldr r2, _020890EC ; =0x021BF6BC
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _020890E6
	ldrh r0, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov lr, r0
	ldrh r0, [r2, #0x1e]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r0, ip
	cmp r0, #0x47
	bhs _020890E6
	mov r0, #6
	mov r2, ip
	mul r0, r2
	ldr r2, _020890F0 ; =0x020F2A14
	add r2, r2, r0
	add r3, r2, #0
_02089078:
	ldrh r4, [r3, #2]
	ldrb r0, [r2]
	ldrb r6, [r2, #1]
	lsl r4, r4, #0x1e
	lsr r4, r4, #0x1e
	beq _0208908E
	cmp r4, #1
	beq _02089094
	cmp r4, #2
	beq _0208909A
	b _0208909E
_0208908E:
	mov r5, #0x1f
	mov r1, #0x16
	b _0208909E
_02089094:
	mov r5, #0x20
	mov r1, #0x16
	b _0208909E
_0208909A:
	mov r5, #0x10
	mov r1, #0x13
_0208909E:
	mov r4, lr
	cmp r4, r0
	blo _020890D8
	cmp r7, r6
	blo _020890D8
	add r4, r0, r5
	mov r0, lr
	cmp r0, r4
	bgt _020890D8
	add r0, r6, r1
	cmp r7, r0
	bgt _020890D8
	ldr r2, _020890F0 ; =0x020F2A14
	mov r1, #6
	mov r0, ip
	mul r1, r0
	add r2, r2, r1
	ldrb r0, [r2, #4]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	ldr r0, [sp]
	str r1, [r0, #0x1c]
	ldrb r0, [r2, #5]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	ldr r0, [sp]
	str r1, [r0, #0x20]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020890D8:
	mov r0, ip
	add r0, r0, #1
	add r2, r2, #6
	add r3, r3, #6
	mov ip, r0
	cmp r0, #0x47
	blo _02089078
_020890E6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020890EC: .word 0x021BF6BC
_020890F0: .word 0x020F2A14
	thumb_func_end sub_0208903C

	thumb_func_start sub_020890F4
sub_020890F4: ; 0x020890F4
	push {r3, r4, r5, lr}
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x65
	lsl r2, r2, #0x12
	bl sub_02017FC8
	mov r1, #0xfd
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0x65
	bl sub_0200681C
	mov r2, #0xfd
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	mov r0, #0xee
	lsl r0, r0, #2
	add r3, r4, r0
	mov r2, #6
_0208912C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0208912C
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02089238 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0208923C ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0x9f
	mov r1, #0x65
	bl sub_02006C24
	mov r1, #0xbb
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x65
	bl sub_02018340
	mov r1, #0xbe
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x65
	bl sub_02002F38
	mov r1, #0xbf
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02003858
	mov r2, #0xbf
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	mov r1, #0
	sub r2, #0xfc
	mov r3, #0x65
	bl sub_02002F70
	mov r0, #0xbf
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r2, r1, #9
	mov r3, #0x65
	bl sub_02002F70
	mov r0, #0xbf
	lsl r0, r0, #2
	mov r1, #2
	ldr r0, [r4, r0]
	lsl r2, r1, #8
	mov r3, #0x65
	bl sub_02002F70
	mov r2, #0xbf
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	mov r1, #3
	sub r2, #0xfc
	mov r3, #0x65
	bl sub_02002F70
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0208945C
	add r0, r4, #0
	bl sub_0208A3F4
	add r0, r4, #0
	bl sub_02089688
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r4, #0
	bl sub_0208A0B8
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0208920A
	bl sub_02039734
	mov r0, #1
	mov r1, #0x65
	bl sub_020397C8
_0208920A:
	mov r0, #7
	str r0, [sp]
	ldr r0, _02089240 ; =0x04000050
	mov r1, #0
	mov r2, #6
	mov r3, #0xf
	bl sub_020BF55C
	mov r0, #8
	str r0, [sp]
	ldr r0, _02089244 ; =0x04001050
	mov r1, #0
	mov r2, #0xe
	mov r3, #7
	bl sub_020BF55C
	ldr r0, _02089248 ; =sub_020895CC
	add r1, r4, #0
	bl sub_02017798
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02089238: .word 0xFFFFE0FF
_0208923C: .word 0x04001000
_02089240: .word 0x04000050
_02089244: .word 0x04001050
_02089248: .word sub_020895CC
	thumb_func_end sub_020890F4

	thumb_func_start sub_0208924C
sub_0208924C: ; 0x0208924C
	push {r3, r4, r5, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl sub_02089BEC
	add r5, r0, #0
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02089270
	bl ov4_021D7EAC
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
_02089270:
	cmp r5, #0
	beq _02089278
	mov r0, #1
	pop {r3, r4, r5, pc}
_02089278:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208924C

	thumb_func_start sub_0208927C
sub_0208927C: ; 0x0208927C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02089294
	bl sub_02039794
_02089294:
	add r0, r4, #0
	bl sub_0208A6CC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #7
	bl sub_02019044
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02002FA0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02002FA0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02002FA0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_02002FA0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02002F54
	mov r0, #0xbb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006CA8
	bl sub_0201E530
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200D0B0
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200C8D4
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02024034
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x65
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0208927C

	thumb_func_start sub_020893B4
sub_020893B4: ; 0x020893B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	str r0, [sp]
	mov r1, #0x34
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r6, #1
	str r6, [r4, #0]
	bl sub_02023790
	str r0, [r4, #0x1c]
	str r7, [r4, #0x20]
	mov r2, #0
	add r1, r5, #0
	add r3, r4, #0
_020893DA:
	ldr r0, [r1, #0]
	add r2, r2, #1
	str r0, [r3, #4]
	add r1, r1, #4
	add r3, r3, #4
	cmp r2, #4
	blt _020893DA
	sub r0, r2, #1
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	lsl r0, r2, #2
	add r0, r4, r0
	str r1, [r0, #4]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x30]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020893B4

	thumb_func_start sub_02089400
sub_02089400: ; 0x02089400
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_020893B4
	mov r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02089400

	thumb_func_start sub_0208941C
sub_0208941C: ; 0x0208941C
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_020893B4
	ldr r1, [sp, #0x18]
	str r1, [r0, #0x24]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x28]
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_0208941C

	thumb_func_start sub_02089438
sub_02089438: ; 0x02089438
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _02089446
	bl sub_02022974
_02089446:
	cmp r4, #0
	bne _0208944E
	bl sub_02022974
_0208944E:
	ldr r0, [r4, #0x1c]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02089438

	thumb_func_start sub_0208945C
sub_0208945C: ; 0x0208945C
	push {r4, r5, lr}
	sub sp, #0xec
	add r4, r0, #0
	bl sub_0201FF00
	ldr r5, _020895BC ; =0x020F2DCC
	add r3, sp, #0
	mov r2, #5
_0208946C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0208946C
	add r0, sp, #0
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
	ldr r5, _020895C0 ; =0x020F2DF4
	add r3, sp, #0x98
	mov r2, #0xa
_020894B8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020894B8
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x98
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0xb4
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0xd0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	ldr r5, _020895C4 ; =0x020F2E48
	add r3, sp, #0x28
	mov r2, #0xe
_02089526:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02089526
	add r0, r4, #0
	mov r1, #4
	add r2, sp, #0x28
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #0x44
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0x60
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0x7c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #6
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	ldr r0, _020895C8 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0xec
	pop {r4, r5, pc}
	; .align 2, 0
_020895BC: .word 0x020F2DCC
_020895C0: .word 0x020F2DF4
_020895C4: .word 0x020F2E48
_020895C8: .word 0x021BF6DC
	thumb_func_end sub_0208945C

	thumb_func_start sub_020895CC
sub_020895CC: ; 0x020895CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200C800
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02003694
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201C2B8
	ldr r3, _020895FC ; =0x027E0000
	ldr r1, _02089600 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_020895FC: .word 0x027E0000
_02089600: .word 0x00003FF8
	thumb_func_end sub_020895CC

	thumb_func_start sub_02089604
sub_02089604: ; 0x02089604
	push {r3, r4}
	mov r2, #0xb5
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	add r3, r2, #4
	str r4, [r0, r3]
	str r1, [r0, r2]
	add r1, r2, #0
	mov r3, #0
	add r1, #8
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0xc
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x10
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x14
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _02089656
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x2a
	ldrh r3, [r3, r1]
	add r1, r2, #0
	add r1, #8
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x28
	ldrh r1, [r3, r1]
	add r2, #0xc
	str r1, [r0, r2]
_02089656:
	mov r2, #0xb6
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _02089684
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x2e
	ldrh r3, [r3, r1]
	add r1, r2, #0
	add r1, #0xc
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x2c
	ldrh r1, [r3, r1]
	add r2, #0x10
	str r1, [r0, r2]
_02089684:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02089604

	thumb_func_start sub_02089688
sub_02089688: ; 0x02089688
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0xdd
	lsl r0, r0, #2
	mov r1, #1
	str r1, [r4, r0]
	add r7, r0, #0
	mov r5, #0
	mov r1, #0xab
	add r3, r5, #0
	add r6, r4, #0
	sub r7, #0xca
	add r0, #0x48
	lsl r1, r1, #2
_020896A4:
	strh r5, [r6, r7]
	ldr r2, [r6, r0]
	add r3, r3, #1
	add r2, r5, r2
	lsl r2, r2, #0x10
	lsr r5, r2, #0x10
	strh r5, [r6, r1]
	add r6, r6, #4
	cmp r3, #5
	blt _020896A4
	mov r1, #0xf7
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r1, r1, #1
	bl sub_02089604
	mov r1, #0xfb
	lsl r1, r1, #2
	mov r0, #0x2d
	add r7, r1, #0
	mov r6, #0
	add r5, r4, #0
	lsl r0, r0, #4
	sub r7, #0x30
_020896D6:
	ldr r3, [r5, r7]
	cmp r3, #0
	beq _020896F0
	ldr r2, [r4, r0]
	add r6, r6, #1
	add r2, r2, r3
	str r2, [r4, r0]
	ldr r2, [r4, r1]
	add r5, r5, #4
	add r2, r2, #1
	str r2, [r4, r1]
	cmp r6, #4
	blt _020896D6
_020896F0:
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r7, _02089804 ; =0x000002A2
	sub r1, r1, #1
	str r1, [r4, r0]
	mov r1, #0x2d
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	ldr r0, [r4, r0]
	sub r1, #0x30
	add r0, r2, r0
	lsl r2, r0, #3
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r2, r0, #1
	mov r0, #0x70
	sub r0, r0, r2
	strh r0, [r4, r1]
	mov r6, #0
	add r3, r4, #0
	add r5, r4, #0
_0208971C:
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r2, [r3, r0]
	add r0, #0x30
	ldr r0, [r4, r0]
	add r6, r6, #1
	lsl r1, r0, #3
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r3, r3, #4
	sub r0, r0, r2
	lsl r0, r0, #3
	lsl r2, r2, #5
	add r0, r0, r2
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #0x70
	sub r0, r0, r1
	strh r0, [r5, r7]
	add r5, r5, #2
	cmp r6, #4
	blt _0208971C
	ldr r0, _02089804 ; =0x000002A2
	ldrsh r1, [r4, r0]
	add r1, #0xc
	strh r1, [r4, r0]
	mov r1, #0xfb
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r4, r1]
	add r3, r0, #0
	cmp r1, #0
	ble _02089788
	mov r7, #7
	mov r6, #0xfb
	add r1, r4, #0
	add r2, r4, #0
	lsl r7, r7, #6
	lsl r6, r6, #2
_02089770:
	mov r5, #0xef
	lsl r5, r5, #2
	ldr r5, [r1, r5]
	add r3, r3, #1
	add r0, r0, r5
	sub r5, r0, #1
	str r5, [r2, r7]
	ldr r5, [r4, r6]
	add r1, r1, #4
	add r2, #0x1c
	cmp r3, r5
	blt _02089770
_02089788:
	mov r3, #0
	mov ip, r3
	str r4, [sp]
	add r2, r4, #0
_02089790:
	mov r1, #0xef
	ldr r5, [sp]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r0, #0
	cmp r1, #0
	ble _020897BE
	mov r5, ip
	lsl r5, r5, #2
	add r7, r4, r5
	mov r5, ip
	add r1, r2, #0
	add r6, r5, #1
_020897AA:
	mov r5, #0xef
	str r6, [r1, #4]
	lsl r5, r5, #2
	ldr r5, [r7, r5]
	add r0, r0, #1
	add r1, #0x1c
	add r2, #0x1c
	add r3, r3, #1
	cmp r0, r5
	blt _020897AA
_020897BE:
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r3, r0
	blt _02089790
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	cmp r0, #0
	ble _02089800
	mov r5, #0x3f
	lsl r5, r5, #4
	add r2, r5, #0
	add r3, r5, #0
	add r0, r4, #0
	sub r2, #0x34
	sub r3, #0x14
_020897EE:
	ldr r6, [r0, r2]
	ldr r7, [r4, r5]
	add r1, r1, #1
	add r6, r7, r6
	str r6, [r4, r5]
	ldr r6, [r4, r3]
	add r0, r0, #4
	cmp r1, r6
	blt _020897EE
_02089800:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02089804: .word 0x000002A2
	thumb_func_end sub_02089688

	thumb_func_start sub_02089808
sub_02089808: ; 0x02089808
	mov r2, #0xb
	lsl r2, r2, #6
	str r1, [r0, r2]
	mov r3, #0
	add r1, r2, #4
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #8
	str r3, [r0, r1]
	add r2, #0xc
	str r3, [r0, r2]
	bx lr
	thumb_func_end sub_02089808

	thumb_func_start sub_02089820
sub_02089820: ; 0x02089820
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl sub_0208A490
	add r0, r5, #0
	bl sub_0208ADA4
	add r0, r5, #0
	bl sub_0208A758
	add r0, r5, #0
	mov r1, #0
	bl sub_0208ADE4
	add r0, r5, #0
	bl sub_0208A8A0
	add r0, r5, #0
	bl sub_0208A9BC
	add r0, r5, #0
	bl sub_0208AF44
	add r0, r5, #0
	bl sub_0208AFCC
	add r0, r5, #0
	bl sub_0208B064
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	mov r1, #0xf9
	str r3, [sp, #8]
	mov r0, #0x64
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	mov r2, #4
	str r0, [sp, #0x10]
	add r0, r1, #0
	sub r0, #0xec
	sub r1, #0x48
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl sub_0208B1C4
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020898B8
	mov r0, #0x65
	bl sub_020394A8
	add r1, sp, #0x14
	add r4, r0, #0
	bl sub_020A71B0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xbf
	ldr r1, [sp, #0x14]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r1, #0xc]
	mov r2, #3
	mov r3, #0xe0
	bl sub_02002FBC
	add r0, r4, #0
	bl sub_020181C4
_020898B8:
	add r0, r5, #0
	mov r1, #1
	bl sub_02089808
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x65
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02089820

	thumb_func_start sub_020898DC
sub_020898DC: ; 0x020898DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _020898F2
	cmp r0, #1
	beq _02089916
	b _0208992A
_020898F2:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x65
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _02089930
_02089916:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02089930
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _02089930
_0208992A:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02089930:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020898DC

	thumb_func_start sub_02089938
sub_02089938: ; 0x02089938
	push {r4, lr}
	mov r1, #0xb2
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _0208995A
	bl sub_0200F2AC
	cmp r0, #1
	bne _0208996E
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0208996E
_0208995A:
	bl sub_0208A328
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_0202404C
	add r0, r4, #0
	bl sub_02089C20
_0208996E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02089938

	thumb_func_start sub_02089974
sub_02089974: ; 0x02089974
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xb2
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _0208998A
	cmp r2, #1
	bne _02089988
	b _02089AF0
_02089988:
	b _02089B84
_0208998A:
	mov r1, #0
	add r2, r1, #0
	bl sub_0208AAB4
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _02089A1C
	ldr r7, _02089BE0 ; =0x02100CB8
	add r4, r5, #0
_020899A2:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _02089A0E
	mov r1, #0x14
	mov r2, #0x16
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	bl sub_0200D5DC
	ldrb r0, [r4, #0x18]
	sub r0, r0, #1
	strb r0, [r4, #0x18]
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	blt _020899E4
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _020899E4
	ldrb r0, [r4, #0x19]
	lsl r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
_020899E4:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	blt _02089A0E
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02089A0E
	ldrb r0, [r4, #0x19]
	ldr r1, _02089BE4 ; =0x02100CD4
	lsl r2, r0, #2
	ldr r1, [r1, r2]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
_02089A0E:
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _020899A2
_02089A1C:
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _02089A64
	mov r7, #0x76
	add r4, r5, #0
	lsl r7, r7, #2
_02089A2E:
	ldrb r0, [r4, r7]
	cmp r0, #0
	beq _02089A56
	mov r1, #0x75
	ldr r2, _02089BE8 ; =0x000001D6
	mov r0, #0x73
	lsl r1, r1, #2
	lsl r0, r0, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, r0]
	bl sub_0200D5DC
	mov r0, #0x76
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	sub r1, r0, #1
	mov r0, #0x76
	lsl r0, r0, #2
	strb r1, [r4, r0]
_02089A56:
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02089A2E
_02089A64:
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _02089AE4
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02089AA2
	mov r0, #0x1c
	mul r0, r6
	mov r7, #0x2e
	add r4, r5, r0
	lsl r7, r7, #4
_02089A82:
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	bl sub_0208AD98
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200D364
	ldr r0, [r4, #0xc]
	bl sub_0200D330
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02089A82
_02089AA2:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02089ADA
	mov r0, #0x1c
	mul r0, r6
	mov r7, #0xba
	add r4, r5, r0
	lsl r7, r7, #2
_02089ABA:
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	bl sub_0208AD98
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200D364
	ldr r0, [r4, #0xc]
	bl sub_0200D330
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02089ABA
_02089ADA:
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
_02089AE4:
	mov r0, #0xb3
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	b _02089BDA
_02089AF0:
	add r0, r1, #0
	add r0, #0x14
	add r1, #0x18
	ldr r6, [r5, r0]
	ldr r0, [r5, r1]
	cmp r6, r0
	bge _02089B2C
	mov r0, #0x1c
	mul r0, r6
	ldr r7, _02089BE0 ; =0x02100CB8
	add r4, r5, r0
_02089B06:
	ldrb r0, [r4, #0x19]
	cmp r0, #6
	beq _02089B1E
	lsl r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
_02089B1E:
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02089B06
_02089B2C:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02089B68
	mov r0, #0x1c
	mul r0, r6
	ldr r7, _02089BE4 ; =0x02100CD4
	add r4, r5, r0
_02089B42:
	ldrb r0, [r4, #0x19]
	cmp r0, #6
	beq _02089B5A
	lsl r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
_02089B5A:
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02089B42
_02089B68:
	mov r1, #0xb3
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #6
	bne _02089BDA
	sub r0, r1, #4
	ldr r0, [r5, r0]
	add r2, r0, #1
	sub r0, r1, #4
	str r2, [r5, r0]
	b _02089BDA
_02089B84:
	bl sub_0208AF44
	mov r1, #0xed
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _02089BA6
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0208A398
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0208AAE4
	b _02089BB8
_02089BA6:
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0208A3C0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0208AAE4
_02089BB8:
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02089BCC
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl sub_0208AAB4
_02089BCC:
	add r0, r5, #0
	bl sub_0208A384
	add r0, r5, #0
	mov r1, #1
	bl sub_02089808
_02089BDA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02089BE0: .word 0x02100CB8
_02089BE4: .word 0x02100CD4
_02089BE8: .word 0x000001D6
	thumb_func_end sub_02089974

	thumb_func_start sub_02089BEC
sub_02089BEC: ; 0x02089BEC
	push {r3, r4, r5, lr}
	mov r1, #0xb
	add r5, r0, #0
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	lsl r2, r1, #2
	ldr r1, _02089C1C ; =0x020F2EB8
	ldr r1, [r1, r2]
	blx r1
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0208ABB4
	add r0, r5, #0
	bl sub_0208AC8C
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200C7EC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02089C1C: .word 0x020F2EB8
	thumb_func_end sub_02089BEC

	thumb_func_start sub_02089C20
sub_02089C20: ; 0x02089C20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r5, _02089F00 ; =0x020F2EC8
	add r4, r0, #0
	add r3, sp, #4
	mov r2, #7
_02089C2C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02089C2C
	ldr r0, [r5, #0]
	mov r1, #0x14
	str r0, [r3, #0]
	mov r3, #0x91
	lsl r3, r3, #2
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	ldrsh r7, [r4, r3]
	mov r6, #0
	mov ip, r0
	mul r1, r0
	add r0, sp, #4
	lsl r2, r7, #2
	add r0, r0, r1
	ldr r5, [r2, r0]
	add r0, r3, #0
	add r0, #0x7c
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02089C80
	mov r2, #0xeb
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	cmp r0, #1
	beq _02089C80
	add r0, r2, #0
	sub r0, #0x38
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02089CBC
	ldr r0, _02089F04 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02089C80
	bl sub_0202278C
	cmp r0, #0
	beq _02089C82
_02089C80:
	b _02089F78
_02089C82:
	mov r0, #0xdd
	add r1, r6, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208AB2C
	sub r5, #0xa
	cmp r5, #1
	bhi _02089CAA
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #2
	beq _02089D8C
	mov r1, #2
	add sp, #0x40
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02089CAA:
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	beq _02089D8C
	mov r1, #1
	add sp, #0x40
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02089CBC:
	ldr r0, _02089F04 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	beq _02089CDE
	mov r0, ip
	cmp r0, #0
	ble _02089CD4
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	sub r1, r0, #1
	b _02089CD6
_02089CD4:
	mov r1, #2
_02089CD6:
	add r0, r3, #2
	strh r1, [r4, r0]
	mov r6, #1
	b _02089F2A
_02089CDE:
	mov r1, #0x80
	tst r1, r0
	beq _02089CFE
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	mov r1, #3
	bl sub_020E1F6C
	ldr r0, _02089F08 ; =0x00000246
	mov r6, #1
	strh r1, [r4, r0]
	b _02089F2A
_02089CFE:
	mov r1, #0x10
	tst r1, r0
	beq _02089D2C
	cmp r5, #0xa
	bne _02089D0E
	mov r0, #3
	strh r0, [r4, r3]
	b _02089D28
_02089D0E:
	cmp r5, #0xb
	bne _02089D16
	strh r6, [r4, r3]
	b _02089D28
_02089D16:
	add r0, r7, #1
	strh r0, [r4, r3]
	ldrsh r0, [r4, r3]
	mov r1, #5
	bl sub_020E1F6C
	mov r0, #0x91
	lsl r0, r0, #2
	strh r1, [r4, r0]
_02089D28:
	mov r6, #1
	b _02089F2A
_02089D2C:
	mov r1, #0x20
	tst r1, r0
	beq _02089D56
	cmp r5, #0xa
	bne _02089D3C
	mov r0, #3
	strh r0, [r4, r3]
	b _02089D52
_02089D3C:
	cmp r5, #0xb
	bne _02089D44
	strh r6, [r4, r3]
	b _02089D52
_02089D44:
	cmp r7, #0
	ble _02089D4E
	sub r0, r7, #1
	strh r0, [r4, r3]
	b _02089D52
_02089D4E:
	mov r0, #4
	strh r0, [r4, r3]
_02089D52:
	mov r6, #1
	b _02089F2A
_02089D56:
	ldr r1, _02089F04 ; =0x021BF67C
	ldr r7, [r1, #0x48]
	mov r1, #1
	tst r1, r7
	beq _02089E3C
	cmp r5, #0xa
	bne _02089D72
	add r0, r4, #0
	bl sub_02089FFC
	ldr r0, _02089F0C ; =0x000005E5
	bl sub_02005748
	b _02089F2A
_02089D72:
	cmp r5, #0xb
	bne _02089D84
	add r0, r4, #0
	bl sub_02089F80
	ldr r0, _02089F10 ; =0x000005E2
	bl sub_02005748
	b _02089F2A
_02089D84:
	sub r2, #0xd8
	ldr r0, [r4, r2]
	cmp r0, #0
	bne _02089D8E
_02089D8C:
	b _02089F78
_02089D8E:
	sub r3, #0x30
	ldr r0, [r4, r3]
	mov r1, #0x1c
	add r7, r0, #0
	str r0, [sp]
	mul r7, r1
	add r0, r5, #1
	str r0, [r4, r7]
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0208AAB4
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_0208AAB4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl sub_0208AB6C
	add r1, r4, r7
	ldr r0, [r4, r7]
	ldr r1, [r1, #8]
	bl sub_0208AD98
	add r1, r0, #0
	add r0, r4, r7
	ldr r0, [r0, #0xc]
	bl sub_0200D364
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_0200D364
	add r0, r4, r7
	ldr r3, [r0, #4]
	ldr r0, [sp]
	add r2, r0, #1
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r2, r1
	bne _02089E0E
	add r1, r0, #0
	mov r6, #1
	add r1, #0xdc
	str r6, [r4, r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xe0
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #3
	sub r1, #0x8c
	strh r2, [r4, r1]
	mov r1, #2
	sub r0, #0x8a
	strh r1, [r4, r0]
	b _02089F2A
_02089E0E:
	mov r1, #0x1c
	mul r1, r2
	add r1, r4, r1
	ldr r1, [r1, #4]
	cmp r3, r1
	beq _02089E28
	add r2, r0, #0
	mov r3, #1
	add r2, #0xdc
	str r3, [r4, r2]
	add r0, #0xe0
	str r1, [r4, r0]
	b _02089E34
_02089E28:
	add r1, r0, #0
	mov r3, #2
	add r1, #0xdc
	str r3, [r4, r1]
	add r0, #0xe0
	str r2, [r4, r0]
_02089E34:
	ldr r0, _02089F0C ; =0x000005E5
	bl sub_02005748
	b _02089F2A
_02089E3C:
	mov r1, #2
	add r5, r7, #0
	tst r5, r1
	beq _02089E52
	add r0, r4, #0
	bl sub_02089FFC
	ldr r0, _02089F0C ; =0x000005E5
	bl sub_02005748
	b _02089F2A
_02089E52:
	lsl r5, r1, #8
	tst r5, r0
	beq _02089EB6
	add r0, r3, #0
	sub r0, #0x30
	ldr r1, [r4, r0]
	add r0, r2, #0
	add r0, #0x44
	ldr r0, [r4, r0]
	cmp r1, r0
	bne _02089E6E
	sub r2, #0xdc
	ldr r0, [r4, r2]
	b _02089E74
_02089E6E:
	add r0, r3, #0
	sub r0, #0x30
	ldr r0, [r4, r0]
_02089E74:
	sub r0, r0, #1
	sub r3, #0x30
	str r0, [r4, r3]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	mul r1, r0
	add r2, r4, r1
	ldr r1, [r2, #8]
	cmp r1, #1
	bne _02089E9A
	mov r1, #0xeb
	mov r2, #2
	lsl r1, r1, #2
	str r2, [r4, r1]
	add r1, r1, #4
	str r0, [r4, r1]
	b _02089EAC
_02089E9A:
	mov r1, #0xeb
	lsl r1, r1, #2
	mov r3, #1
	str r3, [r4, r1]
	add r0, r1, #4
	ldr r2, [r2, #4]
	add r1, #8
	str r2, [r4, r0]
	str r3, [r4, r1]
_02089EAC:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl sub_02005748
	b _02089F2A
_02089EB6:
	add r1, #0xfe
	tst r0, r1
	beq _02089F2A
	add r1, r2, #0
	add r0, r3, #0
	sub r1, #0xdc
	sub r0, #0x30
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	sub r1, r1, #1
	cmp r0, r1
	bne _02089ED4
	add r2, #0x44
	ldr r0, [r4, r2]
	b _02089EDC
_02089ED4:
	add r0, r3, #0
	sub r0, #0x30
	ldr r0, [r4, r0]
	add r0, r0, #1
_02089EDC:
	sub r3, #0x30
	str r0, [r4, r3]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	mul r1, r0
	add r2, r4, r1
	ldr r1, [r2, #8]
	cmp r1, #1
	bne _02089F14
	mov r1, #0xeb
	mov r2, #2
	lsl r1, r1, #2
	str r2, [r4, r1]
	add r1, r1, #4
	str r0, [r4, r1]
	b _02089F22
	; .align 2, 0
_02089F00: .word 0x020F2EC8
_02089F04: .word 0x021BF67C
_02089F08: .word 0x00000246
_02089F0C: .word 0x000005E5
_02089F10: .word 0x000005E2
_02089F14:
	mov r0, #0xeb
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, [r2, #4]
	add r0, r0, #4
	str r1, [r4, r0]
_02089F22:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl sub_02005748
_02089F2A:
	cmp r6, #1
	bne _02089F78
	mov r0, #0x5e
	lsl r0, r0, #4
	bl sub_02005748
	ldr r1, _02089F7C ; =0x00000246
	mov r0, #0x14
	ldrsh r2, [r4, r1]
	sub r1, r1, #2
	ldrsh r1, [r4, r1]
	mul r0, r2
	add r2, sp, #4
	lsl r1, r1, #2
	add r0, r2, r0
	ldr r5, [r1, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208AB2C
	sub r5, #0xa
	cmp r5, #1
	bhi _02089F6A
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #2
	beq _02089F78
	mov r1, #2
	add sp, #0x40
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02089F6A:
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	beq _02089F78
	mov r1, #1
	str r1, [r4, r0]
_02089F78:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02089F7C: .word 0x00000246
	thumb_func_end sub_02089C20

	thumb_func_start sub_02089F80
sub_02089F80: ; 0x02089F80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x64
	mov r1, #0x65
	bl sub_02023790
	mov r1, #0xa1
	add r7, r0, #0
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	mov r4, #0
	add r0, #0x18
	add r1, #0x4c
	strb r4, [r6, r0]
	ldr r0, [r6, r1]
	cmp r0, #0
	ble _02089FEC
	add r5, r6, #0
_02089FA8:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _02089FC0
	mov r0, #1
	str r0, [r5, #0]
	ldr r1, [r5, #8]
	bl sub_0208AD98
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0200D364
_02089FC0:
	mov r0, #1
	str r0, [sp]
	ldr r1, [r5, #0]
	mov r2, #1
	add r0, r7, #0
	sub r1, r1, #1
	add r3, r2, #0
	bl sub_020238A0
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r7, #0
	bl sub_02023E4C
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, r0
	blt _02089FA8
_02089FEC:
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	mov r1, #3
	bl sub_02089808
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02089F80

	thumb_func_start sub_02089FFC
sub_02089FFC: ; 0x02089FFC
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x9a
	lsl r2, r2, #2
	add r5, r0, #0
	mov r1, #1
	add r3, r2, #0
	str r1, [r5, r2]
	mov r0, #0
	add r3, #0x18
	strb r0, [r5, r3]
	add r3, r2, #0
	add r3, #0x6c
	ldr r3, [r5, r3]
	cmp r3, #0
	bne _0208A044
	add r0, r2, #0
	add r0, #0x68
	ldr r0, [r5, r0]
	sub r3, r0, #1
	add r0, r2, #0
	sub r0, #0x54
	str r3, [r5, r0]
	sub r2, #0x54
	ldr r2, [r5, r2]
	mov r0, #0x1c
	mul r0, r2
	add r0, r5, r0
	mov r2, #0xeb
	ldr r3, [r0, #4]
	lsl r2, r2, #2
	str r1, [r5, r2]
	add r0, r2, #4
	str r3, [r5, r0]
	add r2, #8
	str r1, [r5, r2]
	pop {r3, r4, r5, r6, r7, pc}
_0208A044:
	sub r2, #0x54
	ldr r6, [r5, r2]
	mov r1, #0x1c
	add r4, r6, #0
	mul r4, r1
	str r0, [r5, r4]
	add r1, r5, r4
	ldr r0, [r5, r4]
	ldr r1, [r1, #8]
	bl sub_0208AD98
	add r1, r0, #0
	add r0, r5, r4
	ldr r0, [r0, #0xc]
	bl sub_0200D364
	add r0, r5, r4
	ldr r7, [r0, #4]
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	ble _0208A0B6
	sub r1, r6, #1
	mov r0, #0x1c
	add r4, r1, #0
	mul r4, r0
	add r1, r5, r4
	ldr r0, [r5, r4]
	ldr r1, [r1, #8]
	bl sub_0208AD98
	add r1, r0, #0
	add r0, r5, r4
	ldr r0, [r0, #0xc]
	bl sub_0200D364
	add r0, r5, r4
	ldr r3, [r0, #4]
	cmp r7, r3
	beq _0208A0A8
	mov r1, #0xeb
	lsl r1, r1, #2
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r3, [r5, r0]
	add r1, #8
	str r2, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0208A0A8:
	mov r0, #0xeb
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r1, r6, #1
	add r0, r0, #4
	str r1, [r5, r0]
_0208A0B6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02089FFC

	thumb_func_start sub_0208A0B8
sub_0208A0B8: ; 0x0208A0B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r0, [sp, #4]
	mov r2, #0xc1
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r1, r1, r2
	ldr r2, [sp, #4]
	mov r0, #0
_0208A0CA:
	add r0, r0, #1
	str r1, [r2, #0x10]
	add r1, r1, #4
	add r2, #0x1c
	cmp r0, #0x10
	blt _0208A0CA
	ldr r4, _0208A16C ; =0x020F2F04
	add r3, sp, #8
	mov r2, #0x30
_0208A0DC:
	ldrh r1, [r4]
	add r4, r4, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0208A0DC
	cmp r0, #0x1c
	bge _0208A14A
	add r2, sp, #8
	lsl r1, r0, #3
	add r1, r2, r1
	mov r7, #0x7f
	ldr r2, [sp, #4]
	lsl r3, r0, #2
	mvn r7, r7
	add r2, r2, r3
	ldr r4, _0208A170 ; =0x00000307
	add r3, r7, #4
_0208A100:
	mov r5, #0x7d
	mov r6, #0x79
	mvn r5, r5
	mvn r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	add r0, r0, #1
	sub r6, r5, r6
	mov r5, #0xc1
	lsl r5, r5, #2
	strb r6, [r2, r5]
	mov r5, #0x7f
	mov r6, #0x7b
	mvn r5, r5
	mvn r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	sub r6, r5, r6
	ldr r5, _0208A174 ; =0x00000306
	strb r6, [r2, r5]
	mov r5, #0x7d
	mov r6, #0x79
	mvn r5, r5
	mvn r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	add r6, r5, r6
	ldr r5, _0208A178 ; =0x00000305
	strb r6, [r2, r5]
	ldrsh r6, [r1, r7]
	ldrsh r5, [r1, r3]
	add r1, #8
	add r5, r6, r5
	strb r5, [r2, r4]
	add r2, r2, #4
	cmp r0, #0x1c
	blt _0208A100
_0208A14A:
	mov r0, #0x65
	str r0, [sp]
	mov r1, #0xc1
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r2, _0208A17C ; =sub_0208A180
	ldr r3, [sp, #4]
	mov r1, #0x1c
	bl sub_02023FCC
	mov r2, #3
	ldr r1, [sp, #4]
	lsl r2, r2, #8
	str r0, [r1, r2]
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208A16C: .word 0x020F2F04
_0208A170: .word 0x00000307
_0208A174: .word 0x00000306
_0208A178: .word 0x00000305
_0208A17C: .word sub_0208A180
	thumb_func_end sub_0208A0B8

	thumb_func_start sub_0208A180
sub_0208A180: ; 0x0208A180
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0xb
	lsl r2, r2, #6
	add r5, r0, #0
	ldr r0, [r4, r2]
	cmp r0, #1
	bne _0208A1B4
	add r0, r2, #0
	add r0, #0xb4
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _0208A1A0
	mov r0, #1
	add r2, #0xb4
	str r0, [r4, r2]
_0208A1A0:
	cmp r1, #0
	beq _0208A1A6
	b _0208A31A
_0208A1A6:
	cmp r5, #0x10
	bhs _0208A1E6
	mov r1, #0x3f
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	cmp r5, r0
	bhs _0208A1B6
_0208A1B4:
	b _0208A31A
_0208A1B6:
	mov r0, #0x1c
	mul r0, r5
	add r3, r4, r0
	ldr r0, [r3, #8]
	cmp r0, #1
	bne _0208A1D0
	add r0, r1, #0
	mov r2, #2
	sub r0, #0x44
	str r2, [r4, r0]
	sub r1, #0x40
	str r5, [r4, r1]
	b _0208A1DE
_0208A1D0:
	add r0, r1, #0
	mov r2, #1
	sub r0, #0x44
	str r2, [r4, r0]
	ldr r0, [r3, #4]
	sub r1, #0x40
	str r0, [r4, r1]
_0208A1DE:
	ldr r0, _0208A31C ; =0x000005E5
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_0208A1E6:
	cmp r5, #0x1a
	bne _0208A200
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r1, #2
	add r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, _0208A31C ; =0x000005E5
	bl sub_02005748
	b _0208A23E
_0208A200:
	cmp r5, #0x1b
	bne _0208A21A
	mov r0, #0x91
	mov r1, #3
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r1, #2
	add r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, _0208A320 ; =0x000005E2
	bl sub_02005748
	b _0208A23E
_0208A21A:
	add r0, r5, #0
	sub r0, #0x10
	mov r1, #5
	bl sub_020E2178
	mov r0, #0x91
	lsl r0, r0, #2
	strh r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x10
	mov r1, #5
	bl sub_020E2178
	ldr r1, _0208A324 ; =0x00000246
	strh r0, [r4, r1]
	ldr r0, _0208A31C ; =0x000005E5
	bl sub_02005748
_0208A23E:
	cmp r5, #0x10
	blo _0208A308
	cmp r5, #0x19
	bhi _0208A308
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0208A31A
	sub r0, #0xc0
	ldr r7, [r4, r0]
	mov r0, #0x1c
	add r6, r7, #0
	mul r6, r0
	add r0, r5, #0
	sub r0, #0xf
	str r0, [r4, r6]
	add r1, r4, r6
	ldr r0, [r4, r6]
	ldr r1, [r1, #8]
	bl sub_0208AD98
	add r1, r0, #0
	add r0, r4, r6
	ldr r0, [r0, #0xc]
	bl sub_0200D364
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0208AAB4
	sub r5, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208AB2C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl sub_0208AAB4
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_0208AAB4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl sub_0208AB6C
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_0200D364
	add r0, r4, r6
	ldr r2, [r0, #4]
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	add r1, r7, #1
	cmp r1, r3
	bne _0208A2D8
	add r1, r0, #0
	mov r2, #1
	add r1, #0xdc
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xe0
	str r2, [r4, r1]
	add r0, #0xe4
	str r2, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0208A2D8:
	mov r3, #0x1c
	mul r3, r1
	add r3, r4, r3
	ldr r3, [r3, #4]
	cmp r2, r3
	beq _0208A2FA
	add r1, r0, #0
	mov r2, #1
	add r1, #0xdc
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xe0
	str r3, [r4, r1]
	mov r1, #0
	add r0, #0xe4
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0208A2FA:
	add r2, r0, #0
	mov r3, #2
	add r2, #0xdc
	str r3, [r4, r2]
	add r0, #0xe0
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0208A308:
	cmp r5, #0x1a
	bne _0208A314
	add r0, r4, #0
	bl sub_02089FFC
	pop {r3, r4, r5, r6, r7, pc}
_0208A314:
	add r0, r4, #0
	bl sub_02089F80
_0208A31A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208A31C: .word 0x000005E5
_0208A320: .word 0x000005E2
_0208A324: .word 0x00000246
	thumb_func_end sub_0208A180

	thumb_func_start sub_0208A328
sub_0208A328: ; 0x0208A328
	push {r4, lr}
	mov r1, #0xeb
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #2
	bgt _0208A346
	cmp r2, #0
	blt _0208A380
	beq _0208A380
	cmp r2, #1
	beq _0208A34A
	cmp r2, #2
	beq _0208A372
	pop {r4, pc}
_0208A346:
	cmp r2, #0xff
	pop {r4, pc}
_0208A34A:
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02089604
	add r0, r4, #0
	bl sub_0208ADA4
	add r0, r4, #0
	mov r1, #1
	bl sub_0208ADE4
	add r0, r4, #0
	mov r1, #2
	bl sub_02089808
	mov r0, #0xeb
	mov r1, #0xff
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_0208A372:
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0208AAE4
	add r0, r4, #0
	bl sub_0208A384
_0208A380:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208A328

	thumb_func_start sub_0208A384
sub_0208A384: ; 0x0208A384
	mov r2, #0xeb
	lsl r2, r2, #2
	mov r3, #0
	str r3, [r0, r2]
	add r1, r2, #4
	str r3, [r0, r1]
	add r2, #8
	str r3, [r0, r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208A384

	thumb_func_start sub_0208A398
sub_0208A398: ; 0x0208A398
	push {r3, r4}
	mov r2, #0x2d
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	mov r3, #0
	cmp r4, #0
	ble _0208A3BA
_0208A3A6:
	ldr r2, [r0, #4]
	cmp r1, r2
	bne _0208A3B2
	add r0, r3, #0
	pop {r3, r4}
	bx lr
_0208A3B2:
	add r3, r3, #1
	add r0, #0x1c
	cmp r3, r4
	blt _0208A3A6
_0208A3BA:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0208A398

	thumb_func_start sub_0208A3C0
sub_0208A3C0: ; 0x0208A3C0
	push {r3, r4, r5, r6}
	mov r2, #0x2d
	lsl r2, r2, #4
	ldr r6, [r0, r2]
	mov r5, #0
	add r4, r5, #0
	cmp r6, #0
	ble _0208A3EE
	mov r2, #1
_0208A3D2:
	ldr r3, [r0, #4]
	cmp r1, r3
	bne _0208A3DC
	add r5, r2, #0
	b _0208A3E6
_0208A3DC:
	cmp r5, #1
	bne _0208A3E6
	sub r0, r4, #1
	pop {r3, r4, r5, r6}
	bx lr
_0208A3E6:
	add r4, r4, #1
	add r0, #0x1c
	cmp r4, r6
	blt _0208A3D2
_0208A3EE:
	sub r0, r6, #1
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0208A3C0

	thumb_func_start sub_0208A3F4
sub_0208A3F4: ; 0x0208A3F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x65
	bl sub_0200C6E4
	mov r7, #0x2f
	lsl r7, r7, #4
	add r2, sp, #0x2c
	ldr r3, _0208A484 ; =0x020F2F90
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _0208A488 ; =0x020F2F64
	stmia r2!, {r0, r1}
	add r3, sp, #0x18
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [r3, #0]
	ldr r0, [r4, r7]
	mov r3, #0x20
	bl sub_0200C73C
	ldr r3, _0208A48C ; =0x020F2F78
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r7, #0
	ldr r0, [r4, r0]
	bl sub_0200C704
	add r1, r7, #4
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x80
	bl sub_0200C7C0
	cmp r0, #0
	bne _0208A468
	bl sub_02022974
_0208A468:
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, sp, #0
	bl sub_0200CB30
	cmp r0, #0
	bne _0208A480
	bl sub_02022974
_0208A480:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0208A484: .word 0x020F2F90
_0208A488: .word 0x020F2F64
_0208A48C: .word 0x020F2F78
	thumb_func_end sub_0208A3F4

	thumb_func_start sub_0208A490
sub_0208A490: ; 0x0208A490
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x2f
	lsl r1, r1, #4
	add r7, r0, #0
	add r0, r1, #4
	ldr r5, [r7, r0]
	add r0, r1, #0
	add r0, #0xc
	ldr r0, [r7, r0]
	ldr r6, [r7, r1]
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r7, r0]
	mov r3, #1
	str r0, [sp, #0x1c]
	sub r0, r1, #4
	ldr r4, [r7, r0]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x65
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0xc
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x65
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0xe
	mov r3, #1
	bl sub_0200710C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0x9f
	mov r2, #0xd
	mov r3, #0x65
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x65
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0xf
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x65
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0x11
	mov r3, #5
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0x9f
	mov r2, #0x10
	mov r3, #0x65
	bl sub_02003050
	str r4, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0xfa
	str r1, [sp, #0x10]
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #2
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #3
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0208A6C4 ; =0x000003E9
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0208A6C4 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #4
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0208A6C4 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #6
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0208A6C4 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #7
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0208A6C8 ; =0x000003EA
	add r2, r6, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0208A6C8 ; =0x000003EA
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #8
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0208A6C8 ; =0x000003EA
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xa
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0208A6C8 ; =0x000003EA
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xb
	bl sub_0200CE54
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_02027B50
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x65
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r1, #4
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	add r0, r4, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0x26
	mov r3, #0x65
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0xe
	mov r2, #7
	mov r3, #0x65
	bl sub_02003050
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208A6C4: .word 0x000003E9
_0208A6C8: .word 0x000003EA
	thumb_func_end sub_0208A490

	thumb_func_start sub_0208A6CC
sub_0208A6CC: ; 0x0208A6CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	ble _0208A6F2
	mov r7, #0x2d
	add r5, r6, #0
	lsl r7, r7, #4
_0208A6E2:
	ldr r0, [r5, #0xc]
	bl sub_0200D0F4
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, r0
	blt _0208A6E2
_0208A6F2:
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r5, #0
	cmp r0, #0
	ble _0208A718
	mov r7, #0xfb
	add r4, r6, #0
	lsl r7, r7, #2
_0208A704:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	ldr r0, [r6, r7]
	add r5, r5, #1
	add r4, #0x1c
	cmp r5, r0
	blt _0208A704
_0208A718:
	mov r7, #0x9d
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_0208A720:
	ldr r0, [r4, r7]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, #0x1c
	cmp r5, #2
	blt _0208A720
	mov r7, #0x22
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #4
_0208A736:
	ldr r0, [r4, r7]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, #0x1c
	cmp r5, #3
	blt _0208A736
	add r0, r6, #0
	bl sub_0208AFE8
	mov r0, #0xe7
	lsl r0, r0, #2
	add r0, r6, r0
	bl sub_0201A8FC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208A6CC

	thumb_func_start sub_0208A758
sub_0208A758: ; 0x0208A758
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r1, [sp]
	add r2, r0, #4
	ldr r1, [r1, r0]
	str r1, [sp, #8]
	ldr r1, [sp]
	ldr r1, [r1, r2]
	add r2, sp, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0xc]
	strh r1, [r2]
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	mov r1, #0xa
	str r1, [sp, #0x18]
	ldr r1, [sp, #0xc]
	mov r2, #1
	str r1, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r1, [sp, #0x1c]
	add r1, r0, #0
	add r1, #0xf8
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	sub r1, r2, #2
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	ldr r1, [sp]
	str r2, [sp, #0x20]
	add r0, #0xf0
	ldr r4, [r1, r0]
	mov r1, #0x3f
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	sub r6, r0, #1
	bmi _0208A7DC
	mov r0, #0x1c
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp]
	mov r7, #0xa
	add r5, r0, r1
_0208A7C0:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020E2178
	add r0, r1, #1
	str r0, [r5, #0]
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E2178
	add r4, r0, #0
	sub r5, #0x1c
	sub r6, r6, #1
	bpl _0208A7C0
_0208A7DC:
	mov r1, #0xfb
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #0x2d
	ldr r1, [sp]
	lsl r2, r2, #4
	ldr r1, [r1, r2]
	mov r6, #0
	add r1, r1, r0
	cmp r1, #0
	ble _0208A89C
	ldr r4, [sp]
	mov r7, #0x4c
	add r5, r4, #0
_0208A7FA:
	cmp r0, #0
	beq _0208A84C
	mov r0, #7
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	add r0, r0, #1
	cmp r6, r0
	bne _0208A84C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, sp, #0x10
	bl sub_0200CE6C
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	lsl r1, r7, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl sub_0200D4C4
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x16
	bl sub_0200D364
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D330
	ldr r0, [sp, #0xc]
	add r4, #0x1c
	add r0, r0, #1
	str r0, [sp, #0xc]
	b _0208A882
_0208A84C:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, sp, #0x10
	bl sub_0200CE6C
	lsl r1, r7, #0x10
	str r0, [r5, #0xc]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl sub_0200D4C4
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	bl sub_0208AD98
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0200D364
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r5, #0xc]
	bl sub_0200D330
	add r5, #0x1c
_0208A882:
	ldr r1, [sp]
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r1, #0
	mov r1, #0x2d
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	add r6, r6, #1
	add r1, r1, r0
	add r7, #8
	cmp r6, r1
	blt _0208A7FA
_0208A89C:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0208A758

	thumb_func_start sub_0208A8A0
sub_0208A8A0: ; 0x0208A8A0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	mov r1, #0x2f
	lsl r1, r1, #4
	add r5, r0, #0
	add r0, r1, #4
	ldr r6, [r5, r1]
	ldr r4, [r5, r0]
	mov r2, #0
	add r0, sp, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	add r1, #0xf9
	mov r0, #1
	str r0, [sp, #0x10]
	sub r0, r0, #2
	str r2, [sp, #8]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r2, [sp, #0xc]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0x22
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0x8f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x3f
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0208AAE4
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r2, #0x91
	lsl r2, r2, #2
	mov r1, #0
	strh r1, [r5, r2]
	add r0, r2, #2
	strh r1, [r5, r0]
	mov r0, #1
	sub r2, #0x14
	str r0, [r5, r2]
	add r0, r5, #0
	bl sub_0208AB2C
	mov r1, #0x8f
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, #0xc
	ldr r1, [r5, r1]
	bl sub_0200D364
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D810
	mov r2, #0x26
	lsl r2, r2, #4
	mov r1, #0
	strh r1, [r5, r2]
	add r0, r2, #2
	strh r1, [r5, r0]
	mov r0, #1
	sub r2, #0x14
	str r0, [r5, r2]
	add r0, r5, #0
	bl sub_0208AB2C
	mov r1, #0x96
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, #0xc
	ldr r1, [r5, r1]
	bl sub_0200D364
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D810
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_0208AAB4
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl sub_0208AAB4
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0208A8A0

	thumb_func_start sub_0208A9BC
sub_0208A9BC: ; 0x0208A9BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	mov r2, #0x2f
	lsl r2, r2, #4
	add r5, r0, #0
	add r0, r2, #4
	ldr r6, [r5, r2]
	ldr r4, [r5, r0]
	mov r0, #0
	add r1, sp, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	add r2, #0xfa
	mov r1, #0xa
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0x10]
	sub r1, r1, #2
	str r0, [sp, #0xc]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0x9d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r2, #0x29
	lsl r2, r2, #4
	add r1, r2, #0
	str r0, [r5, r2]
	add r1, #0xde
	ldrb r3, [r5, r1]
	add r1, r2, #0
	add r1, #0xdf
	ldrb r1, [r5, r1]
	add r0, r2, #0
	sub r0, #0x1c
	add r3, r3, r1
	lsr r1, r3, #0x1f
	add r1, r3, r1
	add r3, r2, #0
	add r3, #0xdc
	add r2, #0xdd
	lsl r1, r1, #0xf
	ldrb r3, [r5, r3]
	ldrb r2, [r5, r2]
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	add r3, r3, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r2, #0x29
	lsl r2, r2, #4
	add r1, r2, #0
	add r1, #0xe2
	ldrb r3, [r5, r1]
	add r1, r2, #0
	add r1, #0xe3
	ldrb r1, [r5, r1]
	ldr r0, [r5, r2]
	add r3, r3, r1
	lsr r1, r3, #0x1f
	add r1, r3, r1
	add r3, r2, #0
	add r3, #0xe0
	add r2, #0xe1
	lsl r1, r1, #0xf
	ldrb r3, [r5, r3]
	ldrb r2, [r5, r2]
	asr r1, r1, #0x10
	add r3, r3, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200D330
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0208A9BC

	thumb_func_start sub_0208AAB4
sub_0208AAB4: ; 0x0208AAB4
	push {r3, lr}
	cmp r2, #1
	bne _0208AACE
	mov r2, #0x1c
	mul r2, r1
	add r1, r0, r2
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0200D3F4
	pop {r3, pc}
_0208AACE:
	mov r2, #0x1c
	mul r2, r1
	add r1, r0, r2
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D3F4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208AAB4

	thumb_func_start sub_0208AAE4
sub_0208AAE4: ; 0x0208AAE4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r1, r0
	blt _0208AB26
	mov r0, #0x1c
	mul r0, r1
	add r0, r4, r0
	mov r2, #0x85
	ldr r0, [r0, #0xc]
	lsl r2, r2, #2
	str r1, [r4, r2]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	mov r0, #0x22
	lsl r0, r0, #4
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r2, r2, #0x10
	bl sub_0200D4C4
_0208AB26:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208AAE4

	thumb_func_start sub_0208AB2C
sub_0208AB2C: ; 0x0208AB2C
	push {r4, lr}
	add r1, #0x10
	mov r2, #0x8f
	add r3, r0, #0
	lsl r2, r2, #2
	lsl r1, r1, #2
	ldr r0, [r3, r2]
	add r3, r3, r1
	add r1, r2, #0
	add r1, #0xca
	ldrb r4, [r3, r1]
	add r1, r2, #0
	add r1, #0xcb
	ldrb r1, [r3, r1]
	add r4, r4, r1
	lsr r1, r4, #0x1f
	add r1, r4, r1
	add r4, r2, #0
	add r4, #0xc8
	add r2, #0xc9
	lsl r1, r1, #0xf
	ldrb r4, [r3, r4]
	ldrb r2, [r3, r2]
	asr r1, r1, #0x10
	add r3, r4, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
	thumb_func_end sub_0208AB2C

	thumb_func_start sub_0208AB6C
sub_0208AB6C: ; 0x0208AB6C
	push {r4, lr}
	add r3, r0, #0
	mov r0, #0x1c
	mul r0, r2
	add r1, #0x10
	mov r2, #0x22
	lsl r1, r1, #2
	add r0, r3, r0
	lsl r2, r2, #4
	add r3, r3, r1
	add r1, r2, #0
	add r1, #0xe6
	ldrb r4, [r3, r1]
	add r1, r2, #0
	add r1, #0xe7
	ldrb r1, [r3, r1]
	ldr r0, [r0, r2]
	add r4, r4, r1
	lsr r1, r4, #0x1f
	add r1, r4, r1
	add r4, r2, #0
	add r4, #0xe4
	add r2, #0xe5
	lsl r1, r1, #0xf
	ldrb r4, [r3, r4]
	ldrb r2, [r3, r2]
	asr r1, r1, #0x10
	add r3, r4, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208AB6C

	thumb_func_start sub_0208ABB4
sub_0208ABB4: ; 0x0208ABB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	add r4, r5, #0
	mov r7, #0x22
	mov r6, #1
	add r4, #0x1c
	lsl r7, r7, #4
_0208ABE0:
	ldr r0, [r4, r7]
	bl sub_0200D37C
	cmp r0, #3
	bne _0208AC34
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200D3B8
	cmp r0, #0
	bne _0208AC76
	mov r0, #0x22
	mov r1, #0x85
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl sub_0200D364
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0208AC1E
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_0208AAB4
	b _0208AC28
_0208AC1E:
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0208AAB4
_0208AC28:
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl sub_0208AAB4
	b _0208AC76
_0208AC34:
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r0, r1
	beq _0208AC48
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200D364
_0208AC48:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D37C
	cmp r0, #3
	beq _0208AC76
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0208AC6C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_0208AAB4
	b _0208AC76
_0208AC6C:
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0208AAB4
_0208AC76:
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, #3
	blt _0208ABE0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208ABB4

	thumb_func_start sub_0208AC80
sub_0208AC80: ; 0x0208AC80
	push {r3, lr}
	cmp r0, #0
	beq _0208AC8A
	bl sub_020128C4
_0208AC8A:
	pop {r3, pc}
	thumb_func_end sub_0208AC80

	thumb_func_start sub_0208AC8C
sub_0208AC8C: ; 0x0208AC8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r4, r5, #0
_0208AC96:
	ldr r0, _0208AD94 ; =0x0000036E
	ldrb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r0, r0, #0x10
	sub r0, #0x28
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	mov r0, #0xdb
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r0, r0, #0x10
	sub r0, r0, #7
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0208ACD8
	cmp r0, #1
	beq _0208ACE2
	b _0208AD60
_0208ACD8:
	mov r0, #0xa
	mov r1, #0
	lsl r0, r0, #6
	strb r1, [r4, r0]
	b _0208AD82
_0208ACE2:
	mov r0, #0xa
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0xa
	lsl r0, r0, #6
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0208AD12
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D364
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0208AC80
	b _0208AD82
_0208AD12:
	cmp r0, #2
	bne _0208AD32
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_0200D364
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	sub r2, r6, #1
	bl sub_0208AC80
	b _0208AD82
_0208AD32:
	cmp r0, #0xa
	bne _0208AD82
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0208AC80
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0x9a
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0208AD82
_0208AD60:
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0208AC80
	mov r0, #0x9a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0208AD82:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #1
	add r4, #0x1c
	str r0, [sp]
	cmp r0, #2
	blt _0208AC96
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208AD94: .word 0x0000036E
	thumb_func_end sub_0208AC8C

	thumb_func_start sub_0208AD98
sub_0208AD98: ; 0x0208AD98
	mov r2, #0
	cmp r1, #0
	bne _0208ADA0
	mov r2, #0xb
_0208ADA0:
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0208AD98

	thumb_func_start sub_0208ADA4
sub_0208ADA4: ; 0x0208ADA4
	push {r4, r5, r6, r7}
	mov r1, #0x2d
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r3, #0
	cmp r1, #0
	ble _0208ADDE
	mov r6, #0x2e
	lsl r6, r6, #4
	add r4, r0, #0
	add r1, r3, #0
	mov r2, #1
	sub r7, r6, #4
_0208ADBE:
	ldr r5, [r0, r7]
	cmp r3, r5
	blt _0208ADCE
	ldr r5, [r0, r6]
	cmp r3, r5
	bge _0208ADCE
	str r2, [r4, #8]
	b _0208ADD0
_0208ADCE:
	str r1, [r4, #8]
_0208ADD0:
	mov r5, #0x2d
	lsl r5, r5, #4
	ldr r5, [r0, r5]
	add r3, r3, #1
	add r4, #0x1c
	cmp r3, r5
	blt _0208ADBE
_0208ADDE:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208ADA4

	thumb_func_start sub_0208ADE4
sub_0208ADE4: ; 0x0208ADE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	mov r1, #0xb5
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	mov r4, #0
	lsl r2, r0, #1
	ldr r0, [sp]
	str r4, [sp, #8]
	add r2, r0, r2
	add r0, r1, #0
	sub r0, #0x34
	ldrsh r5, [r2, r0]
	ldr r0, [sp]
	sub r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	bgt _0208AE0E
	b _0208AF3E
_0208AE0E:
	ldr r7, [sp]
	add r6, r7, #0
_0208AE12:
	mov r0, #0xb7
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r4, r0
	blt _0208AE3E
	add r2, r1, #0
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	cmp r4, r1
	bge _0208AE3E
	cmp r4, r0
	bne _0208AE36
	add r5, #0x14
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _0208AE50
_0208AE36:
	add r5, #0x20
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _0208AE50
_0208AE3E:
	cmp r4, #0
	bne _0208AE4A
	add r5, #0x14
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _0208AE50
_0208AE4A:
	add r5, #8
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
_0208AE50:
	add r1, sp, #0xc
	ldr r0, [r7, #0xc]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0208AE72
	add r3, sp, #0xc
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r7, #0xc]
	add r1, r5, #0
	bl sub_0200D4C4
	b _0208AE8E
_0208AE72:
	add r1, sp, #0xc
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r1, r5, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r7, #0x14]
	mov r0, #0
	strh r0, [r7, #0x16]
	mov r0, #2
	strb r0, [r7, #0x18]
	mov r0, #0
	strb r0, [r7, #0x19]
_0208AE8E:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	cmp r4, r0
	bne _0208AF2C
	mov r0, #0xfb
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	beq _0208AF2C
	mov r0, #0x73
	lsl r0, r0, #2
	add r1, sp, #0xc
	ldr r0, [r6, r0]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	ldr r1, [sp]
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r2, r1, #0
	mov r1, #0xb7
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, r0
	bne _0208AED2
	add r5, #8
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _0208AEE8
_0208AED2:
	cmp r4, r1
	ble _0208AEE2
	cmp r4, r0
	bge _0208AEE2
	add r5, #0x14
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _0208AEE8
_0208AEE2:
	add r5, #8
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
_0208AEE8:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0208AF02
	mov r0, #0x73
	lsl r0, r0, #2
	add r3, sp, #0xc
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r6, r0]
	add r1, r5, #0
	bl sub_0200D4C4
	b _0208AF24
_0208AF02:
	add r1, sp, #0xc
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r1, r5, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #0x75
	lsl r0, r0, #2
	strh r1, [r6, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r6, r0]
	mov r0, #0x76
	mov r1, #2
	lsl r0, r0, #2
	strb r1, [r6, r0]
_0208AF24:
	ldr r0, [sp, #8]
	add r6, #0x1c
	add r0, r0, #1
	str r0, [sp, #8]
_0208AF2C:
	mov r0, #0x2d
	ldr r1, [sp]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r4, r4, #1
	add r7, #0x1c
	cmp r4, r0
	bge _0208AF3E
	b _0208AE12
_0208AF3E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208ADE4

	thumb_func_start sub_0208AF44
sub_0208AF44: ; 0x0208AF44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	ble _0208AFC8
	add r5, r6, #0
_0208AF58:
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r4, r0
	blt _0208AF74
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r4, r0
	bge _0208AF74
	mov r0, #0x10
	str r0, [sp]
	add r7, r0, #0
	b _0208AF7A
_0208AF74:
	mov r0, #4
	str r0, [sp]
	mov r7, #8
_0208AF7A:
	add r2, sp, #4
	ldr r0, [r5, #0xc]
	add r1, sp, #4
	add r2, #2
	bl sub_0200D550
	add r1, sp, #4
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r4, r4, #1
	sub r1, r0, r7
	ldr r0, [r5, #0x10]
	strb r1, [r0]
	add r1, sp, #4
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [sp]
	sub r1, r1, r0
	ldr r0, [r5, #0x10]
	strb r1, [r0, #2]
	add r1, sp, #4
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r1, r0, r7
	ldr r0, [r5, #0x10]
	strb r1, [r0, #1]
	add r1, sp, #4
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [sp]
	add r1, r1, r0
	ldr r0, [r5, #0x10]
	add r5, #0x1c
	strb r1, [r0, #3]
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r4, r0
	blt _0208AF58
_0208AFC8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208AF44

	thumb_func_start sub_0208AFCC
sub_0208AFCC: ; 0x0208AFCC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	mov r1, #0x65
	bl sub_02012744
	mov r1, #0xde
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	mov r1, #0x65
	bl sub_02002BB8
	pop {r4, pc}
	thumb_func_end sub_0208AFCC

	thumb_func_start sub_0208AFE8
sub_0208AFE8: ; 0x0208AFE8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	bl sub_02002C60
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02012870
	mov r0, #0xe1
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201EE28
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02012870
	mov r0, #0x39
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201EE28
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020127BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208AFE8

	thumb_func_start sub_0208B028
sub_0208B028: ; 0x0208B028
	push {r4, lr}
	sub sp, #0x18
	add r3, r0, #0
	mov r0, #0xe
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	ldr r4, _0208B060 ; =0x000003EB
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r2, r4, #0
	str r4, [sp, #0x14]
	sub r0, #0xef
	sub r2, #0xfb
	sub r4, #0xf7
	ldr r0, [r3, r0]
	ldr r2, [r3, r2]
	ldr r3, [r3, r4]
	mov r1, #2
	bl sub_0200CD7C
	add sp, #0x18
	pop {r4, pc}
	nop
_0208B060: .word 0x000003EB
	thumb_func_end sub_0208B028

	thumb_func_start sub_0208B064
sub_0208B064: ; 0x0208B064
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0208B028
	mov r1, #0
	add r0, r4, #0
	mov r2, #0x4e
	mov r3, #0xa5
	str r1, [sp]
	bl sub_0208B090
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xac
	mov r3, #0xa5
	bl sub_0208B090
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0208B064

	thumb_func_start sub_0208B090
sub_0208B090: ; 0x0208B090
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd4
	mov r3, #0x65
	bl sub_0200B144
	add r1, r4, #2
	str r0, [sp, #0x14]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x1c
	mov r2, #0xa
	mov r3, #2
	bl sub_0201A870
	ldr r1, [sp, #0x18]
	mov r0, #2
	mov r2, #0
	mov r3, #0x50
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208B1BC ; =0x000F0D02
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, sp, #0x1c
	mov r1, #2
	bl sub_0201D78C
	add r0, sp, #0x1c
	mov r1, #1
	mov r2, #0x65
	bl sub_02012898
	mov r3, #0xe1
	lsl r3, r3, #2
	mov r1, #0xc
	add r6, r4, #0
	mul r6, r1
	mov r1, #1
	add r3, r5, r3
	add r2, r1, #0
	add r3, r3, r6
	bl sub_0201ED94
	add r0, r4, #0
	add r0, #0x1a
	lsl r0, r0, #2
	add r3, r5, r0
	ldr r0, _0208B1C0 ; =0x00000306
	add r2, r0, #1
	ldrb r1, [r3, r0]
	ldrb r2, [r3, r2]
	add r2, r1, r2
	lsr r1, r2, #0x1f
	add r1, r2, r1
	lsl r1, r1, #0xf
	asr r7, r1, #0x10
	sub r1, r0, #2
	ldrb r2, [r3, r1]
	sub r1, r0, #1
	ldrb r1, [r3, r1]
	add r2, r2, r1
	lsr r1, r2, #0x1f
	add r1, r2, r1
	lsl r1, r1, #0xf
	asr r1, r1, #0x10
	str r1, [sp, #0x10]
	add r1, r0, #0
	add r1, #0x72
	ldr r1, [r5, r1]
	sub r0, #0x12
	str r1, [sp, #0x2c]
	add r1, sp, #0x1c
	str r1, [sp, #0x30]
	ldr r0, [r5, r0]
	bl sub_0200D9B0
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0x34]
	ldr r0, [r5, r1]
	add r1, #0xf7
	bl sub_0200D04C
	str r0, [sp, #0x38]
	mov r1, #0
	mov r0, #0xe2
	str r1, [sp, #0x3c]
	add r2, r5, r6
	lsl r0, r0, #2
	ldr r2, [r2, r0]
	sub r0, #0xc
	add r5, r5, r0
	sub r7, #0x28
	str r2, [sp, #0x40]
	lsl r2, r7, #0x10
	asr r2, r2, #0x10
	str r2, [sp, #0x44]
	ldr r2, [sp, #0x10]
	lsl r4, r4, #2
	sub r2, r2, #7
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	str r1, [sp, #0x4c]
	str r1, [sp, #0x50]
	mov r1, #1
	str r1, [sp, #0x54]
	mov r1, #0x65
	str r2, [sp, #0x48]
	str r1, [sp, #0x58]
	add r0, sp, #0x2c
	bl sub_020127E8
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x70]
	bl sub_02012AC0
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_0200B190
	add r0, sp, #0x1c
	bl sub_0201A8FC
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0208B1BC: .word 0x000F0D02
_0208B1C0: .word 0x00000306
	thumb_func_end sub_0208B090

	thumb_func_start sub_0208B1C4
sub_0208B1C4: ; 0x0208B1C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201A7A0
	ldr r0, [sp, #0x28]
	lsl r2, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	lsl r3, r6, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	lsr r2, r2, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r7, #0
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0xb
	bl sub_0200E060
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A954
	ldr r1, [sp, #0x38]
	add r0, r5, #0
	bl sub_0208B230
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0208B1C4

	thumb_func_start sub_0208B230
sub_0208B230: ; 0x0208B230
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r1, #0xf
	add r4, r0, #0
	bl sub_0201ADA4
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd4
	mov r3, #0x65
	bl sub_0200B144
	add r1, r5, #0
	add r6, r0, #0
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A954
	add r0, r5, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0208B230

	thumb_func_start sub_0208B284
sub_0208B284: ; 0x0208B284
	push {r0, r1, r2, r3}
	push {r4, lr}
	ldr r4, [sp, #0xc]
	mov r1, #0x42
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_02018144
	ldr r1, [sp, #8]
	mov r3, #0
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x10]
	str r4, [r0, #0x14]
	str r1, [r0, #0x18]
	ldr r1, [sp, #0x14]
	mov r2, #0xf
	str r1, [r0, #0x1c]
	ldr r1, [sp, #0x18]
	str r1, [r0, #0x20]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #4]
	ldr r1, [sp, #0x20]
	str r1, [r0, #8]
	ldr r1, [sp, #0x24]
	str r1, [r0, #0xc]
	add r1, r0, #0
	add r1, #0xe4
	str r3, [r1, #0]
	add r1, r0, #0
	add r1, #0xfc
	str r2, [r1, #0]
	add r1, r2, #0
	add r1, #0xf1
	str r2, [r0, r1]
	add r1, r0, #0
	add r1, #0xf4
	str r3, [r1, #0]
	add r1, r0, #0
	add r1, #0xf0
	str r3, [r1, #0]
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_0208B284

	thumb_func_start sub_0208B2DC
sub_0208B2DC: ; 0x0208B2DC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	add r6, r3, #0
	str r1, [sp]
	str r1, [sp, #4]
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1A9C
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020E17B4
	add r1, r6, #0
	bl sub_020E1A9C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, r0, #0
	bl sub_020E18B0
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r0, #0
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020E0B00
	mov r1, #0
	add r4, r0, #0
	bl sub_020E1108
	ldr r0, _0208B3D0 ; =0x45800000
	bls _0208B344
	add r1, r4, #0
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0208B352
_0208B344:
	add r1, r4, #0
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0208B352:
	bl sub_020E1740
	bl sub_020BCFF0
	bl sub_020E17B4
	ldr r1, _0208B3D0 ; =0x45800000
	bl sub_020E1304
	ldr r1, [sp, #0x30]
	add r4, r0, #0
	bl sub_020E11CC
	blo _0208B38A
	add r1, sp, #0x18
	mov r0, #0x1c
	ldrsh r0, [r1, r0]
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1108
	bhi _0208B38A
	mov r0, #0
	add r1, r4, #0
	bl sub_020E1228
	bne _0208B390
_0208B38A:
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_0208B390:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x30]
	bl sub_020E18B0
	add r1, r4, #0
	bl sub_020E1304
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x30]
	bl sub_020E18B0
	add r1, r4, #0
	bl sub_020E1304
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp]
	bl sub_020E0B00
	ldr r1, [sp, #0x28]
	str r0, [r1, #0]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	bl sub_020E0B00
	ldr r1, [sp, #0x2c]
	str r0, [r1, #0]
	mov r0, #1
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0208B3D0: .word 0x45800000
	thumb_func_end sub_0208B2DC

	thumb_func_start sub_0208B3D4
sub_0208B3D4: ; 0x0208B3D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r6, r1, #0
	add r0, r6, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0208B3E6
	b _0208B632
_0208B3E6:
	ldr r0, [r6, #0x10]
	mov r4, #0
	str r4, [sp, #0x1c]
	cmp r0, #0
	bgt _0208B3F2
	b _0208B632
_0208B3F2:
	add r0, r6, #0
	mov r7, #0x3f
	str r0, [sp, #0x30]
	add r0, #0xec
	add r5, r6, #0
	lsl r7, r7, #0x18
	str r0, [sp, #0x30]
_0208B400:
	cmp r4, #0
	beq _0208B410
	mov r0, #0x18
	ldrsh r0, [r5, r0]
	strh r0, [r5, #0x28]
	mov r0, #0x1a
	ldrsh r0, [r5, r0]
	strh r0, [r5, #0x2a]
_0208B410:
	ldr r0, [r5, #0x24]
	ldr r3, [r6, #0x20]
	add r1, sp, #0x4c
	add r2, sp, #0x48
	bl sub_0200D67C
	ldr r0, [sp, #0x4c]
	bl sub_020E17B4
	ldr r1, _0208B638 ; =0x45800000
	bl sub_020E1304
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x48]
	bl sub_020E17B4
	ldr r1, _0208B638 ; =0x45800000
	bl sub_020E1304
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	sub r0, r4, r0
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x41
	lsl r0, r0, #0x18
	bl sub_020E1A9C
	mov r1, #1
	lsl r1, r1, #0x1e
	bl sub_020E1304
	add r1, sp, #0x44
	str r1, [sp]
	add r1, sp, #0x40
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x28
	mov r1, #0x2a
	ldrsh r0, [r5, r0]
	ldrsh r1, [r5, r1]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0208B2DC
	cmp r0, #0
	beq _0208B4EE
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bne _0208B4EE
	ldr r0, [sp, #0x40]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _0208B638 ; =0x45800000
	bls _0208B4A0
	ldr r1, [sp, #0x40]
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E0B00
	str r0, [sp, #0x14]
	b _0208B4AE
_0208B4A0:
	ldr r1, [sp, #0x40]
	bl sub_020E18B0
	add r1, r7, #0
	bl sub_020E1A9C
	str r0, [sp, #0x14]
_0208B4AE:
	ldr r0, [sp, #0x44]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _0208B638 ; =0x45800000
	bls _0208B4CA
	ldr r1, [sp, #0x44]
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E0B00
	b _0208B4D6
_0208B4CA:
	ldr r1, [sp, #0x44]
	bl sub_020E18B0
	add r1, r7, #0
	bl sub_020E1A9C
_0208B4D6:
	bl sub_020E1740
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	bl sub_020E1740
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	ldr r1, [sp, #0x28]
	bl sub_0200D5E8
	b _0208B626
_0208B4EE:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _0208B4FA
	cmp r0, #1
	beq _0208B5CA
	b _0208B620
_0208B4FA:
	add r1, sp, #0x3c
	ldr r0, [r5, #0x24]
	ldr r3, [r6, #0x20]
	add r1, #2
	add r2, sp, #0x3c
	bl sub_0200D5A0
	add r0, r6, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [sp, #0x18]
	cmp r0, #0xff
	bne _0208B58E
	add r0, r6, #0
	add r0, #0xe8
	str r4, [r0, #0]
	mov r0, #0x28
	add r2, sp, #0x3c
	mov r1, #2
	ldrsh r0, [r6, r0]
	ldrsh r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, #0
	ble _0208B53C
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E0B00
	str r0, [sp, #0x10]
	b _0208B54A
_0208B53C:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r7, #0
	bl sub_020E1A9C
	str r0, [sp, #0x10]
_0208B54A:
	mov r0, #0x2a
	add r2, sp, #0x3c
	mov r1, #0
	ldrsh r0, [r6, r0]
	ldrsh r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, #0
	ble _0208B56A
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E0B00
	b _0208B576
_0208B56A:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r7, #0
	bl sub_020E1A9C
_0208B576:
	bl sub_020E1740
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	bl sub_020E1740
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	bl sub_020BDA20
	str r0, [r5, #0x30]
	b _0208B5AC
_0208B58E:
	mov r0, #0x2d
	ldr r1, [r6, #0x10]
	lsl r0, r0, #4
	bl sub_020E1F6C
	ldr r1, [sp, #0x18]
	add r2, r6, #0
	lsl r1, r1, #4
	add r2, #0xec
	add r1, r6, r1
	ldr r2, [r2, #0]
	ldr r1, [r1, #0x30]
	mul r2, r0
	sub r0, r1, r2
	str r0, [r5, #0x30]
_0208B5AC:
	mov r1, #0x2d
	ldr r0, [r5, #0x30]
	lsl r1, r1, #4
	bl sub_020E1F6C
	ldr r0, [sp, #0x30]
	str r1, [r5, #0x30]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x30]
	str r1, [r0, #0]
	ldr r0, [r5, #0x2c]
	add r0, r0, #1
	str r0, [r5, #0x2c]
	b _0208B620
_0208B5CA:
	ldr r0, [r5, #0x30]
	mov r1, #0x2d
	add r0, r0, #4
	lsl r1, r1, #4
	str r0, [r5, #0x30]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r1, [r5, #0x30]
	bl sub_0201D250
	mov r1, #0x28
	ldrsh r1, [r6, r1]
	lsl r1, r1, #0xc
	str r1, [sp, #0x34]
	add r1, r6, #0
	add r1, #0xfc
	ldr r1, [r1, #0]
	mul r0, r1
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x30]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	mov r1, #0x2a
	ldrsh r1, [r6, r1]
	ldr r2, [sp, #0x34]
	lsl r3, r1, #0xc
	mov r1, #1
	lsl r1, r1, #8
	ldr r1, [r6, r1]
	mul r0, r1
	ldr r1, [sp, #0x38]
	mov ip, r0
	add r1, r2, r1
	mov r2, ip
	add r2, r3, r2
	ldr r0, [r5, #0x24]
	ldr r3, [r6, #0x20]
	bl sub_0200D650
_0208B620:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_0208B626:
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	bge _0208B632
	b _0208B400
_0208B632:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208B638: .word 0x45800000
	thumb_func_end sub_0208B3D4

	thumb_func_start sub_0208B63C
sub_0208B63C: ; 0x0208B63C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r1, #0
	ldr r1, [r0, #4]
	ldr r5, [r0, #8]
	str r1, [sp, #0x18]
	ldr r1, _0208B6A4 ; =0x000056CF
	ldr r7, [r0, #0xc]
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl sub_0200D080
	ldr r1, _0208B6A8 ; =0x000056D0
	add r0, r5, #0
	bl sub_0200D080
	ldr r0, _0208B6AC ; =0x020F2FB0
	lsl r1, r6, #2
	ldr r6, [r0, r1]
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0208B6A4 ; =0x000056CF
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #2
	add r3, r5, #0
	bl sub_0200CDC4
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0208B6A8 ; =0x000056D0
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #3
	add r3, r5, #0
	bl sub_0200CDC4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0208B6A4: .word 0x000056CF
_0208B6A8: .word 0x000056D0
_0208B6AC: .word 0x020F2FB0
	thumb_func_end sub_0208B63C

	thumb_func_start sub_0208B6B0
sub_0208B6B0: ; 0x0208B6B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r2, r1, #0
	ldr r3, [r0, #0x18]
	ldr r1, _0208B7AC ; =0x000056CE
	ldr r7, [r0, #4]
	add r5, r3, r1
	ldr r6, [r0, #8]
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #0]
	cmp r3, #1
	ldr r0, [r0, #0x1c]
	bne _0208B726
	cmp r0, #0
	str r4, [sp]
	bne _0208B6F2
	ldr r0, _0208B7B0 ; =0x020F2FB0
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	add r2, r7, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #2
	add r3, r6, #0
	str r5, [sp, #0x14]
	bl sub_0200CDC4
	b _0208B70E
_0208B6F2:
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #2
	add r2, r7, #0
	add r3, r6, #0
	str r5, [sp, #0x14]
	bl sub_0200CDC4
_0208B70E:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0x5f
	str r5, [sp, #8]
	bl sub_0200CC3C
	b _0208B784
_0208B726:
	cmp r0, #0
	str r4, [sp]
	bne _0208B750
	ldr r0, _0208B7B0 ; =0x020F2FB0
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	add r2, r7, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #3
	add r3, r6, #0
	str r5, [sp, #0x14]
	bl sub_0200CDC4
	b _0208B76E
_0208B750:
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #3
	add r2, r7, #0
	add r3, r6, #0
	str r5, [sp, #0x14]
	bl sub_0200CDC4
_0208B76E:
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0x5f
	str r5, [sp, #8]
	bl sub_0200CC3C
_0208B784:
	mov r0, #0
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0x5d
	str r5, [sp, #4]
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0x5e
	str r5, [sp, #4]
	bl sub_0200CE54
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208B7AC: .word 0x000056CE
_0208B7B0: .word 0x020F2FB0
	thumb_func_end sub_0208B6B0

	thumb_func_start sub_0208B7B4
sub_0208B7B4: ; 0x0208B7B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r7, [r5, #8]
	str r0, [sp]
	mov r1, #0x80
	add r0, sp, #4
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	mov r6, #0
	strh r6, [r0, #4]
	strh r6, [r0, #6]
	str r6, [sp, #0xc]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x14]
	str r6, [sp, #0x30]
	str r6, [sp, #0x34]
	str r6, [sp, #0x10]
	ldr r1, [r5, #0x18]
	ldr r0, _0208B82C ; =0x000056CE
	add r1, r1, r0
	str r1, [sp, #0x18]
	ldr r1, [r5, #0x18]
	add r1, r1, r0
	str r1, [sp, #0x1c]
	ldr r1, [r5, #0x18]
	add r1, r1, r0
	str r1, [sp, #0x20]
	ldr r1, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x24]
	sub r0, r6, #1
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ble _0208B828
	add r4, r5, #0
_0208B804:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, sp, #4
	bl sub_0200CE6C
	str r0, [r4, #0x24]
	bl sub_0200D330
	ldr r0, [r4, #0x24]
	mov r1, #0x80
	mov r2, #0x60
	bl sub_0200D4C4
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _0208B804
_0208B828:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208B82C: .word 0x000056CE
	thumb_func_end sub_0208B7B4

	thumb_func_start sub_0208B830
sub_0208B830: ; 0x0208B830
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _0208B872
	ldr r7, _0208B874 ; =0x000056CE
	add r4, r5, #0
_0208B840:
	ldr r2, [r5, #0x18]
	ldr r1, _0208B874 ; =0x000056CE
	ldr r0, [r5, #8]
	add r1, r2, r1
	bl sub_0200D070
	ldr r2, [r5, #0x18]
	ldr r1, _0208B874 ; =0x000056CE
	ldr r0, [r5, #8]
	add r1, r2, r1
	bl sub_0200D090
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #8]
	add r1, r1, r7
	bl sub_0200D0A0
	ldr r0, [r4, #0x24]
	bl sub_0200D0F4
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _0208B840
_0208B872:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208B874: .word 0x000056CE
	thumb_func_end sub_0208B830

	thumb_func_start sub_0208B878
sub_0208B878: ; 0x0208B878
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x14]
	mov r0, #0xa2
	bl sub_02006C24
	str r0, [r5, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0208B6B0
	add r0, r5, #0
	bl sub_0208B7B4
	mov r2, #1
	ldr r0, _0208B8AC ; =sub_0208B3D4
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl sub_0200DA04
	add r5, #0xf4
	str r0, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0208B8AC: .word sub_0208B3D4
	thumb_func_end sub_0208B878

	thumb_func_start sub_0208B8B0
sub_0208B8B0: ; 0x0208B8B0
	add r0, #0xf0
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	thumb_func_end sub_0208B8B0

	thumb_func_start sub_0208B8B8
sub_0208B8B8: ; 0x0208B8B8
	push {r3, r4}
	strh r1, [r0, #0x28]
	add r1, r0, #0
	strh r2, [r0, #0x2a]
	mov r2, #0xff
	add r1, #0xe8
	str r2, [r1, #0]
	add r1, r0, #0
	mov r3, #0
	add r1, #0xec
	str r3, [r1, #0]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ble _0208B8E4
	add r4, r0, #0
	add r2, r3, #0
_0208B8D8:
	str r2, [r4, #0x2c]
	ldr r1, [r0, #0x10]
	add r3, r3, #1
	add r4, #0x10
	cmp r3, r1
	blt _0208B8D8
_0208B8E4:
	mov r0, #1
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208B8B8

	thumb_func_start sub_0208B8EC
sub_0208B8EC: ; 0x0208B8EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0208B930
	cmp r0, #0
	bne _0208B900
	mov r0, #0
	pop {r4, r5, r6, pc}
_0208B900:
	strh r4, [r5, #0x28]
	add r0, r5, #0
	strh r6, [r5, #0x2a]
	mov r1, #0xff
	add r0, #0xe8
	str r1, [r0, #0]
	add r0, r5, #0
	mov r2, #0
	add r0, #0xec
	str r2, [r0, #0]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ble _0208B92A
	add r3, r5, #0
	add r1, r2, #0
_0208B91E:
	str r1, [r3, #0x2c]
	ldr r0, [r5, #0x10]
	add r2, r2, #1
	add r3, #0x10
	cmp r2, r0
	blt _0208B91E
_0208B92A:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0208B8EC

	thumb_func_start sub_0208B930
sub_0208B930: ; 0x0208B930
	mov r3, #0x28
	ldrsh r3, [r0, r3]
	cmp r3, r1
	bne _0208B944
	mov r1, #0x2a
	ldrsh r0, [r0, r1]
	cmp r0, r2
	bne _0208B944
	mov r0, #0
	bx lr
_0208B944:
	mov r0, #1
	bx lr
	thumb_func_end sub_0208B930

	thumb_func_start sub_0208B948
sub_0208B948: ; 0x0208B948
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	mov r1, #0xff
	add r0, #0xe8
	str r1, [r0, #0]
	add r0, r5, #0
	mov r7, #0
	add r0, #0xec
	str r7, [r0, #0]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ble _0208B982
	add r4, r5, #0
_0208B966:
	strh r6, [r4, #0x28]
	ldr r0, [sp]
	add r1, r6, #0
	strh r0, [r4, #0x2a]
	ldr r0, [r4, #0x24]
	ldr r2, [sp]
	ldr r3, [r5, #0x20]
	bl sub_0200D500
	ldr r0, [r5, #0x10]
	add r7, r7, #1
	add r4, #0x10
	cmp r7, r0
	blt _0208B966
_0208B982:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208B948

	thumb_func_start sub_0208B988
sub_0208B988: ; 0x0208B988
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xe4
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0208B99C
	cmp r1, #1
	beq _0208B9B0
	b _0208B9C6
_0208B99C:
	mov r1, #0
	bl sub_0208B8B0
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r4, #0xe4
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208B9DA
_0208B9B0:
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl sub_0200DA58
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r4, #0xe4
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208B9DA
_0208B9C6:
	bl sub_0208B830
	ldr r0, [r4, #0]
	bl sub_02006CA8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_0208B9DA:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208B988

	thumb_func_start sub_0208B9E0
sub_0208B9E0: ; 0x0208B9E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x10]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0208BA02
	add r5, r6, #0
_0208B9F0:
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	bl sub_0200D3F4
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0208B9F0
_0208BA02:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208B9E0

	thumb_func_start sub_0208BA08
sub_0208BA08: ; 0x0208BA08
	cmp r1, #0
	beq _0208BA1E
	cmp r2, #0
	beq _0208BA1E
	add r3, r0, #0
	add r3, #0xfc
	str r1, [r3, #0]
	mov r1, #1
	lsl r1, r1, #8
	str r2, [r0, r1]
	bx lr
_0208BA1E:
	add r1, r0, #0
	mov r2, #0xf
	add r1, #0xfc
	str r2, [r1, #0]
	add r1, r2, #0
	add r1, #0xf1
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208BA08

	thumb_func_start sub_0208BA30
sub_0208BA30: ; 0x0208BA30
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _0208BA52
	add r5, r6, #0
	mov r7, #1
_0208BA40:
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	bl sub_0200D364
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0208BA40
_0208BA52:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208BA30

	thumb_func_start sub_0208BA54
sub_0208BA54: ; 0x0208BA54
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _0208BA76
	add r5, r6, #0
	add r7, r4, #0
_0208BA64:
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	bl sub_0200D364
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0208BA64
_0208BA76:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208BA54

	thumb_func_start sub_0208BA78
sub_0208BA78: ; 0x0208BA78
	push {r3, lr}
	bl sub_02006840
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208BA78

	thumb_func_start sub_0208BA84
sub_0208BA84: ; 0x0208BA84
	str r1, [r0, #0]
	str r2, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208BA84

	thumb_func_start sub_0208BA8C
sub_0208BA8C: ; 0x0208BA8C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0202B628
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C244
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #4
	bl sub_0202B758
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0208BA8C

	thumb_func_start sub_0208BAAC
sub_0208BAAC: ; 0x0208BAAC
	push {r4, r5, r6, lr}
	mov r2, #1
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #3
	mov r1, #0x77
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r6, #0
	mov r1, #0x2c
	mov r2, #0x77
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x2c
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r6, #0
	bl sub_02006840
	str r0, [r4, #0x28]
	ldr r0, [r0, #0xc]
	ldr r1, _0208BB5C ; =0x00004170
	str r0, [r4, #0xc]
	mov r0, #0x77
	bl sub_02018144
	ldr r2, _0208BB5C ; =0x00004170
	str r0, [r4, #0x14]
	mov r1, #0
	bl sub_020C4CF4
	add r2, r4, #0
	ldr r1, [r4, #0x14]
	ldr r0, _0208BB60 ; =0x00000868
	add r2, #0x18
	str r2, [r1, r0]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x14]
	sub r0, #0x38
	str r2, [r1, r0]
	ldr r0, [r4, #0x14]
	str r5, [r0, #0]
	ldr r6, [r4, #0x14]
	ldr r1, [r6, #0]
	add r0, r6, #0
	bl sub_0208C034
	ldr r1, _0208BB64 ; =0x000006D8
	ldr r1, [r6, r1]
	lsl r1, r1, #2
	add r2, r6, r1
	ldr r1, _0208BB68 ; =0x0000081C
	cmp r5, #6
	str r0, [r2, r1]
	bhi _0208BB58
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208BB2C: ; jump table
	.short _0208BB4E - _0208BB2C - 2 ; case 0
	.short _0208BB4E - _0208BB2C - 2 ; case 1
	.short _0208BB3A - _0208BB2C - 2 ; case 2
	.short _0208BB3E - _0208BB2C - 2 ; case 3
	.short _0208BB42 - _0208BB2C - 2 ; case 4
	.short _0208BB46 - _0208BB2C - 2 ; case 5
	.short _0208BB4A - _0208BB2C - 2 ; case 6
_0208BB3A:
	mov r2, #0x12
	b _0208BB50
_0208BB3E:
	mov r2, #0x13
	b _0208BB50
_0208BB42:
	mov r2, #0x13
	b _0208BB50
_0208BB46:
	mov r2, #0x14
	b _0208BB50
_0208BB4A:
	mov r2, #0x15
	b _0208BB50
_0208BB4E:
	pop {r4, r5, r6, pc}
_0208BB50:
	ldr r0, [r4, #0xc]
	mov r1, #0x77
	bl sub_0208BA8C
_0208BB58:
	pop {r4, r5, r6, pc}
	nop
_0208BB5C: .word 0x00004170
_0208BB60: .word 0x00000868
_0208BB64: .word 0x000006D8
_0208BB68: .word 0x0000081C
	thumb_func_end sub_0208BAAC

	thumb_func_start sub_0208BB6C
sub_0208BB6C: ; 0x0208BB6C
	push {r3, lr}
	mov r1, #0
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BB6C

	thumb_func_start sub_0208BB78
sub_0208BB78: ; 0x0208BB78
	push {r3, lr}
	mov r1, #1
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BB78

	thumb_func_start sub_0208BB84
sub_0208BB84: ; 0x0208BB84
	push {r3, lr}
	mov r1, #2
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BB84

	thumb_func_start sub_0208BB90
sub_0208BB90: ; 0x0208BB90
	push {r3, lr}
	mov r1, #3
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BB90

	thumb_func_start sub_0208BB9C
sub_0208BB9C: ; 0x0208BB9C
	push {r3, lr}
	mov r1, #4
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BB9C

	thumb_func_start sub_0208BBA8
sub_0208BBA8: ; 0x0208BBA8
	push {r3, lr}
	mov r1, #5
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BBA8

	thumb_func_start sub_0208BBB4
sub_0208BBB4: ; 0x0208BBB4
	push {r3, lr}
	mov r1, #6
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BBB4

	thumb_func_start sub_0208BBC0
sub_0208BBC0: ; 0x0208BBC0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0
	beq _0208BBD6
	cmp r1, #1
	beq _0208BBF4
	b _0208BC04
_0208BBD6:
	mov r1, #0x77
	bl sub_0208BC3C
	cmp r0, #0
	beq _0208BC04
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0208BBF0
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _0208BC04
_0208BBF0:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0208BBF4:
	mov r1, #0x77
	bl sub_0208BC8C
	cmp r0, #0
	beq _0208BC04
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r4, #0]
_0208BC04:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208BBC0

	thumb_func_start sub_0208BC08
sub_0208BC08: ; 0x0208BC08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_0202F250
	cmp r0, #1
	bne _0208BC1E
	bl sub_0202F22C
_0208BC1E:
	ldr r0, [r4, #0x14]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #1
	mov r1, #0x7f
	bl sub_0200544C
	mov r0, #0x77
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208BC08

	thumb_func_start sub_0208BC3C
sub_0208BC3C: ; 0x0208BC3C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r2, r1, #0
	cmp r0, #0
	bne _0208BC6C
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0208BC5A
	ldr r0, _0208BC84 ; =0x020F3050
	add r1, r4, #0
	bl sub_020067E8
	b _0208BC62
_0208BC5A:
	ldr r0, _0208BC88 ; =0x020F3060
	add r1, r4, #0
	bl sub_020067E8
_0208BC62:
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208BC80
_0208BC6C:
	ldr r0, [r4, #8]
	bl sub_02006844
	cmp r0, #0
	beq _0208BC80
	ldr r0, [r4, #8]
	bl sub_02006814
	mov r0, #1
	pop {r4, pc}
_0208BC80:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0208BC84: .word 0x020F3050
_0208BC88: .word 0x020F3060
	thumb_func_end sub_0208BC3C

	thumb_func_start sub_0208BC8C
sub_0208BC8C: ; 0x0208BC8C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #0
	beq _0208BCA4
	cmp r0, #1
	beq _0208BCBE
	cmp r0, #2
	beq _0208BD60
	b _0208BDA6
_0208BCA4:
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0208BCB6
	ldr r0, _0208BE40 ; =0x0000003D
	bl sub_02006514
	bl sub_020995C4
_0208BCB6:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0208BE3A
_0208BCBE:
	add r0, r4, #0
	mov r1, #0
	bl sub_02051D8C
	str r0, [r5, #0x10]
	bl sub_0202F250
	cmp r0, #0
	bne _0208BCE6
	ldr r1, [r5, #0x14]
	ldr r0, _0208BE44 ; =0x0000086C
	add r2, sp, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r3, [r5, #0x10]
	bl sub_0202F298
	b _0208BCF2
_0208BCE6:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0xc]
	bl sub_0202FAFC
	mov r0, #1
	str r0, [sp, #4]
_0208BCF2:
	add r0, r4, #0
	bl sub_0207D99C
	mov r1, #0x43
	ldr r2, [r5, #0x10]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #0x51
	ldr r2, [r5, #0x10]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r6, _0208BE48 ; =0x0000003E
	mov r1, #2
	add r0, r6, #0
	bl sub_02006590
	cmp r0, #1
	bne _0208BD2E
	bl sub_0202F264
	ldr r1, [r5, #0x10]
	add r2, r4, #0
	bl ov62_02248408
	add r0, r6, #0
	bl sub_02006514
_0208BD2E:
	ldr r1, [r5, #0x14]
	ldr r0, _0208BE4C ; =0x00000874
	mov r2, #1
	str r2, [r1, r0]
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _0208BD58
	mov r0, #0x43
	ldr r1, [r5, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, [r5, #0x10]
	bl sub_020520A4
	mov r0, #0
	str r0, [r5, #0]
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0208BD58:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0208BE3A
_0208BD60:
	mov r0, #1
	mov r1, #0x7f
	bl sub_0200544C
	mov r0, #1
	bl sub_02005464
	ldr r0, [r5, #0x10]
	add r0, #0x5d
	ldrb r0, [r0]
	bl sub_0208BE80
	cmp r0, #1
	bne _0208BD88
	ldr r1, _0208BE50 ; =0x000004B2
	mov r0, #5
	mov r2, #1
	bl sub_02004550
	b _0208BD92
_0208BD88:
	ldr r1, _0208BE54 ; =0x0000045F
	mov r0, #5
	mov r2, #1
	bl sub_02004550
_0208BD92:
	ldr r0, _0208BE58 ; =0x020EA358
	ldr r1, [r5, #0x10]
	add r2, r4, #0
	bl sub_020067E8
	str r0, [r5, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0208BE3A
_0208BDA6:
	ldr r0, [r5, #8]
	bl sub_02006844
	cmp r0, #0
	beq _0208BE3A
	mov r0, #0x71
	ldr r1, [r5, #0x10]
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	ldr r1, [r5, #0x14]
	ldr r0, _0208BE4C ; =0x00000874
	str r2, [r1, r0]
	ldr r2, [r5, #0x14]
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _0208BDD4
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0208BDD4
	add r0, r0, #4
	ldr r0, [r2, r0]
	mov r1, #1
	strb r1, [r0]
_0208BDD4:
	mov r0, #0x43
	ldr r1, [r5, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, [r5, #0x10]
	bl sub_020520A4
	ldr r0, [r5, #8]
	bl sub_02006814
	mov r0, #0
	bl sub_02005464
	mov r0, #0
	bl sub_02004234
	ldr r0, [r5, #0x28]
	ldr r1, [r0, #0x1c]
	ldr r1, [r1, #0]
	bl sub_02055428
	add r4, r0, #0
	ldr r0, [r5, #0x28]
	ldr r1, [r0, #0x1c]
	ldr r1, [r1, #0]
	bl sub_020554A4
	bl sub_02004224
	mov r0, #4
	add r1, r4, #0
	mov r2, #1
	bl sub_02004550
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0208BE34
	bl sub_020995B4
	ldr r0, _0208BE40 ; =0x0000003D
	mov r1, #2
	bl sub_02006590
_0208BE34:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0208BE3A:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208BE40: .word 0x0000003D
_0208BE44: .word 0x0000086C
_0208BE48: .word 0x0000003E
_0208BE4C: .word 0x00000874
_0208BE50: .word 0x000004B2
_0208BE54: .word 0x0000045F
_0208BE58: .word 0x020EA358
	thumb_func_end sub_0208BC8C

	thumb_func_start sub_0208BE5C
sub_0208BE5C: ; 0x0208BE5C
	lsl r1, r0, #2
	ldr r0, _0208BE64 ; =0x02100CF0
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_0208BE64: .word 0x02100CF0
	thumb_func_end sub_0208BE5C

	thumb_func_start sub_0208BE68
sub_0208BE68: ; 0x0208BE68
	push {r3, lr}
	mov r1, #0x83
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x35
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208BE68

	thumb_func_start sub_0208BE80
sub_0208BE80: ; 0x0208BE80
	push {r3, r4, r5}
	sub sp, #0x14
	ldr r5, _0208BEB8 ; =0x020F303C
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r4, #0]
_0208BE9A:
	ldr r0, [r2, #0]
	cmp r3, r0
	bne _0208BEA8
	add sp, #0x14
	mov r0, #1
	pop {r3, r4, r5}
	bx lr
_0208BEA8:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #5
	blo _0208BE9A
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5}
	bx lr
	; .align 2, 0
_0208BEB8: .word 0x020F303C
	thumb_func_end sub_0208BE80

	thumb_func_start sub_0208BEBC
sub_0208BEBC: ; 0x0208BEBC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0x55
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x66
	lsl r2, r2, #0xc
	bl sub_02017FC8
	add r0, r4, #0
	bl sub_0208BA78
	add r4, r0, #0
	bl ov62_02230060
	mov r0, #1
	mov r1, #0x2a
	bl sub_0200544C
	cmp r5, #0
	beq _0208BEF0
	ldr r1, _0208BF30 ; =0x000004AC
	mov r0, #4
	mov r2, #1
	bl sub_02004550
_0208BEF0:
	cmp r5, #0
	bne _0208BF22
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0202783C
	add r1, r4, #0
	add r1, #0x5c
	bl sub_0202797C
	add r0, r4, #0
	add r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #7
	blo _0208BF18
	add r0, r4, #0
	mov r1, #0
	add r0, #0x5c
	strb r1, [r0]
_0208BF18:
	add r0, r4, #0
	bl ov62_022316A0
	str r0, [r4, #0x58]
	b _0208BF26
_0208BF22:
	ldr r0, _0208BF34 ; =0x00007FDD
	str r0, [r4, #0x58]
_0208BF26:
	add r0, r4, #0
	bl ov62_0222F2C0
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208BF30: .word 0x000004AC
_0208BF34: .word 0x00007FDD
	thumb_func_end sub_0208BEBC

	thumb_func_start sub_0208BF38
sub_0208BF38: ; 0x0208BF38
	ldr r3, _0208BF40 ; =sub_0208BEBC
	mov r2, #0
	bx r3
	nop
_0208BF40: .word sub_0208BEBC
	thumb_func_end sub_0208BF38

	thumb_func_start sub_0208BF44
sub_0208BF44: ; 0x0208BF44
	ldr r3, _0208BF4C ; =sub_0208BEBC
	mov r2, #1
	bx r3
	nop
_0208BF4C: .word sub_0208BEBC
	thumb_func_end sub_0208BF44

	thumb_func_start sub_0208BF50
sub_0208BF50: ; 0x0208BF50
	push {r4, lr}
	add r4, r1, #0
	bl sub_0208BA78
	add r1, r4, #0
	str r4, [r0, #0x10]
	bl ov62_0222F910
	cmp r0, #0
	beq _0208BF68
	mov r0, #1
	pop {r4, pc}
_0208BF68:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0208BF50

	thumb_func_start sub_0208BF6C
sub_0208BF6C: ; 0x0208BF6C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0208BA78
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #3
	bhi _0208BFDE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0208BF88: ; jump table
	.short _0208BF90 - _0208BF88 - 2 ; case 0
	.short _0208BF9C - _0208BF88 - 2 ; case 1
	.short _0208BFB4 - _0208BF88 - 2 ; case 2
	.short _0208BFCA - _0208BF88 - 2 ; case 3
_0208BF90:
	bl ov62_0223069C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208BFFE
_0208BF9C:
	bl ov62_0223066C
	add r0, r5, #0
	bl ov62_02230B74
	add r0, r5, #0
	bl ov62_0223113C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208BFFE
_0208BFB4:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0208B988
	cmp r0, #0
	bne _0208BFFE
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208BFFE
_0208BFCA:
	ldr r0, _0208C004 ; =0x000006F4
	ldr r0, [r5, r0]
	bl sub_0208B988
	cmp r0, #0
	bne _0208BFFE
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208BFFE
_0208BFDE:
	add r0, r5, #0
	bl ov62_0222F514
	mov r0, #0x66
	bl sub_0201807C
	ldr r0, _0208C008 ; =0x0000003E
	bl sub_02006514
	ldr r0, _0208C00C ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0208BFFE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0208C004: .word 0x000006F4
_0208C008: .word 0x0000003E
_0208C00C: .word 0x021BF6DC
	thumb_func_end sub_0208BF6C

	thumb_func_start sub_0208C010
sub_0208C010: ; 0x0208C010
	push {r3, lr}
	cmp r0, #7
	blt _0208C022
	blt _0208C01C
	bl sub_02022974
_0208C01C:
	ldr r0, _0208C02C ; =0x020F3EF0
	ldr r0, [r0, #0x64]
	pop {r3, pc}
_0208C022:
	mov r1, #0x24
	mul r1, r0
	ldr r0, _0208C030 ; =0x020F3F54
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0208C02C: .word 0x020F3EF0
_0208C030: .word 0x020F3F54
	thumb_func_end sub_0208C010

	thumb_func_start sub_0208C034
sub_0208C034: ; 0x0208C034
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _0208C048
	bl sub_0208BE68
	cmp r0, #0
	bne _0208C048
	ldr r0, _0208C064 ; =0x020F3D18
	pop {r3, r4, r5, pc}
_0208C048:
	cmp r4, #3
	bne _0208C05A
	add r0, r5, #0
	bl sub_0208BE68
	cmp r0, #0
	bne _0208C05A
	ldr r0, _0208C068 ; =0x020F355C
	pop {r3, r4, r5, pc}
_0208C05A:
	add r0, r4, #0
	bl sub_0208C010
	pop {r3, r4, r5, pc}
	nop
_0208C064: .word 0x020F3D18
_0208C068: .word 0x020F355C
	thumb_func_end sub_0208C034

	thumb_func_start sub_0208C06C
sub_0208C06C: ; 0x0208C06C
	push {r3, r4}
	ldr r1, _0208C094 ; =0x00000818
	mov r3, #0
	ldr r4, [r0, r1]
	mov r1, #0x6e
	lsl r1, r1, #4
	str r3, [r0, r1]
_0208C07A:
	ldr r2, [r4, #0]
	cmp r2, #0
	beq _0208C086
	ldr r2, [r0, r1]
	add r2, r2, #1
	str r2, [r0, r1]
_0208C086:
	add r3, r3, #1
	add r4, #0x24
	cmp r3, #5
	blt _0208C07A
	pop {r3, r4}
	bx lr
	nop
_0208C094: .word 0x00000818
	thumb_func_end sub_0208C06C

	thumb_func_start sub_0208C098
sub_0208C098: ; 0x0208C098
	lsl r1, r0, #1
	ldr r0, _0208C0A0 ; =0x020F4030
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_0208C0A0: .word 0x020F4030
	thumb_func_end sub_0208C098

	thumb_func_start sub_0208C0A4
sub_0208C0A4: ; 0x0208C0A4
	push {r3, lr}
	add r2, r0, #0
	mul r2, r0
	add r0, r1, #0
	mul r0, r1
	add r0, r2, r0
	lsl r0, r0, #4
	bl sub_0200007A
	lsr r0, r0, #2
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208C0A4

	thumb_func_start sub_0208C0BC
sub_0208C0BC: ; 0x0208C0BC
	push {r4, lr}
	add r4, r0, #0
	mul r0, r2
	bl sub_020E2178
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _0208C0D2
	cmp r4, #0
	beq _0208C0D2
	mov r0, #1
_0208C0D2:
	pop {r4, pc}
	thumb_func_end sub_0208C0BC

	thumb_func_start sub_0208C0D4
sub_0208C0D4: ; 0x0208C0D4
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r1, #8
	lsl r4, r4, #8
	lsr r1, r0, #1
	cmp r4, r1
	bls _0208C0E6
	mov r0, #3
	pop {r4, pc}
_0208C0E6:
	mov r1, #5
	bl sub_020E2178
	cmp r4, r0
	bls _0208C0F4
	mov r0, #2
	pop {r4, pc}
_0208C0F4:
	cmp r4, #0
	beq _0208C0FC
	mov r0, #1
	b _0208C0FE
_0208C0FC:
	mov r0, #0
_0208C0FE:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
	thumb_func_end sub_0208C0D4

	thumb_func_start sub_0208C104
sub_0208C104: ; 0x0208C104
	push {r4, lr}
	add r4, r2, #0
	cmp r0, r1
	bne _0208C110
	mov r0, #4
	pop {r4, pc}
_0208C110:
	lsl r2, r4, #0x18
	lsr r2, r2, #0x18
	bl sub_0208C0BC
	add r1, r4, #0
	bl sub_0208C0D4
	pop {r4, pc}
	thumb_func_end sub_0208C104

	thumb_func_start sub_0208C120
sub_0208C120: ; 0x0208C120
	push {lr}
	sub sp, #0xc
	cmp r0, #0
	bne _0208C140
	mov r0, #6
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0
	str r1, [sp, #8]
	add r1, r2, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
_0208C140:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r1, [sp, #8]
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_0208C120

	thumb_func_start sub_0208C15C
sub_0208C15C: ; 0x0208C15C
	push {r4, r5}
	ldr r3, _0208C20C ; =0x021BF67C
	mov r2, #0
	ldr r3, [r3, #0x4c]
	mov r5, #0x40
	ldrsh r4, [r0, r2]
	tst r5, r3
	beq _0208C18E
	add r3, r4, #1
	strh r3, [r0]
	ldrsh r2, [r0, r2]
	cmp r2, r1
	ble _0208C17A
	mov r1, #1
	strh r1, [r0]
_0208C17A:
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	bne _0208C188
	add r0, r1, #0
	pop {r4, r5}
	bx lr
_0208C188:
	mov r0, #1
	pop {r4, r5}
	bx lr
_0208C18E:
	mov r5, #0x80
	tst r5, r3
	beq _0208C1B4
	sub r3, r4, #1
	strh r3, [r0]
	ldrsh r2, [r0, r2]
	cmp r2, #0
	bgt _0208C1A0
	strh r1, [r0]
_0208C1A0:
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	bne _0208C1AE
	add r0, r1, #0
	pop {r4, r5}
	bx lr
_0208C1AE:
	mov r0, #2
	pop {r4, r5}
	bx lr
_0208C1B4:
	mov r5, #0x20
	tst r5, r3
	beq _0208C1DE
	add r1, r4, #0
	sub r1, #0xa
	strh r1, [r0]
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bgt _0208C1CA
	mov r1, #1
	strh r1, [r0]
_0208C1CA:
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	bne _0208C1D8
	add r0, r1, #0
	pop {r4, r5}
	bx lr
_0208C1D8:
	mov r0, #2
	pop {r4, r5}
	bx lr
_0208C1DE:
	mov r5, #0x10
	tst r3, r5
	beq _0208C206
	add r3, r4, #0
	add r3, #0xa
	strh r3, [r0]
	ldrsh r2, [r0, r2]
	cmp r2, r1
	ble _0208C1F2
	strh r1, [r0]
_0208C1F2:
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	bne _0208C200
	add r0, r1, #0
	pop {r4, r5}
	bx lr
_0208C200:
	mov r0, #1
	pop {r4, r5}
	bx lr
_0208C206:
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0208C20C: .word 0x021BF67C
	thumb_func_end sub_0208C15C

	thumb_func_start sub_0208C210
sub_0208C210: ; 0x0208C210
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	add r7, r1, #0
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	add r0, r2, #0
	str r2, [sp, #4]
	ldr r5, [sp, #0x34]
	ldr r4, [sp, #0x3c]
	bl sub_02006D84
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02018184
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r7, #0
	bl sub_02006D28
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _0208C24E
	cmp r0, #1
	beq _0208C27A
	cmp r0, #2
	beq _0208C2C4
	b _0208C2EA
_0208C24E:
	add r0, r7, #0
	add r1, sp, #0x14
	bl sub_020A7118
	cmp r4, #0
	bne _0208C262
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0208C262:
	add r0, sp, #0x20
	ldrh r0, [r0, #0x20]
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	str r0, [sp]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	ldr r2, [r2, #0x14]
	add r3, r4, #0
	bl sub_0201958C
	b _0208C2EA
_0208C27A:
	add r0, r7, #0
	add r1, sp, #0x10
	bl sub_020A7248
	cmp r4, #0
	bne _0208C28E
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0208C28E:
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02019FE4
	cmp r0, #0
	beq _0208C2AC
	ldr r2, [sp, #0x10]
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r4, #0
	bl sub_02019574
_0208C2AC:
	add r0, sp, #0x20
	ldrh r0, [r0, #0x20]
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r2, #0xc
	add r3, r4, #0
	bl sub_02019460
	b _0208C2EA
_0208C2C4:
	add r0, r7, #0
	add r1, sp, #0xc
	bl sub_020A71B0
	cmp r4, #0
	bne _0208C2D8
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0208C2D8:
	ldr r1, [sp, #0xc]
	add r3, sp, #0x20
	lsl r0, r5, #0x18
	ldrh r3, [r3, #0x20]
	ldr r1, [r1, #0xc]
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_0201972C
_0208C2EA:
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208C210

	thumb_func_start sub_0208C2F4
sub_0208C2F4: ; 0x0208C2F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r1, r5, #0
	add r6, r0, #0
	add r7, r3, #0
	bl sub_02006D84
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02006D28
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020A7248
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208C2F4

	thumb_func_start sub_0208C324
sub_0208C324: ; 0x0208C324
	push {r3, lr}
	bl sub_020507E4
	bl sub_0206ADCC
	pop {r3, pc}
	thumb_func_end sub_0208C324

	thumb_func_start sub_0208C330
sub_0208C330: ; 0x0208C330
	push {r4, r5, r6, lr}
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
	ldr r2, _0208C474 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _0208C478 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0208C47C ; =0xFFFF1FFF
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
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r2, #1
	mov r0, #3
	mov r1, #0x13
	lsl r2, r2, #0x12
	bl sub_02017FC8
	mov r0, #0x27
	mov r1, #0x13
	bl sub_02006C24
	add r6, r0, #0
	ldr r1, _0208C480 ; =0x000006B4
	add r0, r5, #0
	mov r2, #0x13
	bl sub_0200681C
	ldr r2, _0208C480 ; =0x000006B4
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	bl sub_02006840
	mov r1, #0x93
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x13
	bl sub_02018340
	mov r1, #1
	str r0, [r4, #0]
	mov r0, #0x13
	add r2, r1, #0
	bl sub_02015F84
	mov r1, #0xb9
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x93
	mov r1, #0x13
	bl sub_02006C24
	mov r1, #0x6a
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x13
	bl sub_02002BEC
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r4, #0
	bl sub_0208D748
	bl sub_0208C638
	ldr r0, [r4, #0]
	bl sub_0208C658
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0208C7AC
	bl sub_0208C86C
	add r0, r4, #0
	bl sub_020916B4
	add r0, r4, #0
	bl sub_0208C884
	add r0, r4, #0
	bl sub_0208D1A4
	add r0, r4, #0
	bl sub_0208EA44
	add r0, r4, #0
	bl sub_0208EB64
	add r0, r4, #0
	bl sub_02091F8C
	add r0, r4, #0
	bl sub_0208EE3C
	add r0, r4, #0
	bl sub_0208EE9C
	add r0, r4, #0
	bl sub_0208FCF8
	add r0, r4, #0
	bl sub_0208D678
	add r0, r4, #0
	bl sub_020920C0
	add r0, r4, #0
	bl sub_020917E0
	ldr r0, _0208C484 ; =sub_0208C604
	add r1, r4, #0
	bl sub_02017798
	bl sub_0201FFD0
	mov r1, #0
	mov r0, #0x3d
	add r2, r1, #0
	bl sub_02004550
	bl sub_020397E4
	add r0, r6, #0
	bl sub_02006CA8
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0208C474: .word 0xFFFFE0FF
_0208C478: .word 0x04001000
_0208C47C: .word 0xFFFF1FFF
_0208C480: .word 0x000006B4
_0208C484: .word sub_0208C604
	thumb_func_end sub_0208C330

	thumb_func_start sub_0208C488
sub_0208C488: ; 0x0208C488
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0x13
	bhi _0208C576
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0208C4A4: ; jump table
	.short _0208C4CC - _0208C4A4 - 2 ; case 0
	.short _0208C4DA - _0208C4A4 - 2 ; case 1
	.short _0208C4E2 - _0208C4A4 - 2 ; case 2
	.short _0208C4EA - _0208C4A4 - 2 ; case 3
	.short _0208C4F2 - _0208C4A4 - 2 ; case 4
	.short _0208C4FA - _0208C4A4 - 2 ; case 5
	.short _0208C502 - _0208C4A4 - 2 ; case 6
	.short _0208C50A - _0208C4A4 - 2 ; case 7
	.short _0208C512 - _0208C4A4 - 2 ; case 8
	.short _0208C51A - _0208C4A4 - 2 ; case 9
	.short _0208C522 - _0208C4A4 - 2 ; case 10
	.short _0208C52A - _0208C4A4 - 2 ; case 11
	.short _0208C532 - _0208C4A4 - 2 ; case 12
	.short _0208C53A - _0208C4A4 - 2 ; case 13
	.short _0208C542 - _0208C4A4 - 2 ; case 14
	.short _0208C54A - _0208C4A4 - 2 ; case 15
	.short _0208C552 - _0208C4A4 - 2 ; case 16
	.short _0208C55A - _0208C4A4 - 2 ; case 17
	.short _0208C562 - _0208C4A4 - 2 ; case 18
	.short _0208C56A - _0208C4A4 - 2 ; case 19
_0208C4CC:
	mov r0, #0
	mov r1, #0x13
	bl sub_0208C120
	mov r0, #1
	str r0, [r4, #0]
	b _0208C576
_0208C4DA:
	bl sub_0208C9C8
	str r0, [r4, #0]
	b _0208C576
_0208C4E2:
	bl sub_0208CA00
	str r0, [r4, #0]
	b _0208C576
_0208C4EA:
	bl sub_0208CB38
	str r0, [r4, #0]
	b _0208C576
_0208C4F2:
	bl sub_0208CB4C
	str r0, [r4, #0]
	b _0208C576
_0208C4FA:
	bl sub_0208CB60
	str r0, [r4, #0]
	b _0208C576
_0208C502:
	bl sub_0208CB74
	str r0, [r4, #0]
	b _0208C576
_0208C50A:
	bl sub_0208CB88
	str r0, [r4, #0]
	b _0208C576
_0208C512:
	bl sub_0208CC6C
	str r0, [r4, #0]
	b _0208C576
_0208C51A:
	bl sub_0208CD44
	str r0, [r4, #0]
	b _0208C576
_0208C522:
	bl sub_0208CE54
	str r0, [r4, #0]
	b _0208C576
_0208C52A:
	bl sub_0208CE70
	str r0, [r4, #0]
	b _0208C576
_0208C532:
	bl sub_0208CE84
	str r0, [r4, #0]
	b _0208C576
_0208C53A:
	bl sub_0208CE98
	str r0, [r4, #0]
	b _0208C576
_0208C542:
	bl sub_0208CF0C
	str r0, [r4, #0]
	b _0208C576
_0208C54A:
	bl sub_0208CF78
	str r0, [r4, #0]
	b _0208C576
_0208C552:
	bl sub_0208D114
	str r0, [r4, #0]
	b _0208C576
_0208C55A:
	bl sub_0208D164
	str r0, [r4, #0]
	b _0208C576
_0208C562:
	bl sub_0208D17C
	str r0, [r4, #0]
	b _0208C576
_0208C56A:
	bl sub_0208D18C
	cmp r0, #1
	bne _0208C576
	mov r0, #1
	pop {r3, r4, r5, pc}
_0208C576:
	add r0, r5, #0
	bl sub_0208EB14
	add r0, r5, #0
	bl sub_0208F3B0
	add r0, r5, #0
	bl sub_0208FB30
	ldr r0, _0208C59C ; =0x00000418
	ldr r0, [r5, r0]
	bl sub_0200C7EC
	add r0, r5, #0
	bl sub_02091750
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0208C59C: .word 0x00000418
	thumb_func_end sub_0208C488

	thumb_func_start sub_0208C5A0
sub_0208C5A0: ; 0x0208C5A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	bl sub_020917B0
	add r0, r4, #0
	bl sub_0208EAF4
	add r0, r4, #0
	bl sub_0208FE88
	ldr r0, [r4, #0]
	bl sub_0208C76C
	bl sub_0201E530
	bl sub_0201DC3C
	add r0, r4, #0
	bl sub_0208C950
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02006CA8
	mov r0, #0
	bl sub_02002C28
	ldr r0, _0208C600 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x13
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0208C600: .word 0x04000050
	thumb_func_end sub_0208C5A0

	thumb_func_start sub_0208C604
sub_0208C604: ; 0x0208C604
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0201C2B8
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02008A94
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r3, _0208C630 ; =0x027E0000
	ldr r1, _0208C634 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0208C630: .word 0x027E0000
_0208C634: .word 0x00003FF8
	thumb_func_end sub_0208C604

	thumb_func_start sub_0208C638
sub_0208C638: ; 0x0208C638
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0208C654 ; =0x020F40E4
	add r3, sp, #0
	mov r2, #5
_0208C642:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0208C642
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0208C654: .word 0x020F40E4
	thumb_func_end sub_0208C638

	thumb_func_start sub_0208C658
sub_0208C658: ; 0x0208C658
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0208C754 ; =0x020F4048
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0208C758 ; =0x020F4074
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _0208C75C ; =0x020F4090
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0x88
	bl sub_0201C63C
	ldr r5, _0208C760 ; =0x020F40AC
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _0208C764 ; =0x020F40C8
	add r3, sp, #0x1c
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
	ldr r5, _0208C768 ; =0x020F4058
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x13
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x13
	bl sub_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_0208C754: .word 0x020F4048
_0208C758: .word 0x020F4074
_0208C75C: .word 0x020F4090
_0208C760: .word 0x020F40AC
_0208C764: .word 0x020F40C8
_0208C768: .word 0x020F4058
	thumb_func_end sub_0208C658

	thumb_func_start sub_0208C76C
sub_0208C76C: ; 0x0208C76C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201FF00
	bl sub_0201FF68
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	mov r0, #0x13
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208C76C

	thumb_func_start sub_0208C7AC
sub_0208C7AC: ; 0x0208C7AC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r5, r0, #0
	str r1, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	mov r1, #3
	ldr r2, [r5, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0200710C
	mov r2, #0
	str r2, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0xb
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #2
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x10
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0xf
	mov r3, #5
	bl sub_0200710C
	mov r3, #0
	str r3, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #4
	bl sub_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0208C7AC

	thumb_func_start sub_0208C86C
sub_0208C86C: ; 0x0208C86C
	push {r3, lr}
	mov r0, #8
	str r0, [sp]
	ldr r0, _0208C880 ; =0x04000050
	mov r1, #1
	mov r2, #0x1e
	mov r3, #0x17
	bl sub_020BF55C
	pop {r3, pc}
	; .align 2, 0
_0208C880: .word 0x04000050
	thumb_func_end sub_0208C86C

	thumb_func_start sub_0208C884
sub_0208C884: ; 0x0208C884
	push {r4, lr}
	ldr r2, _0208C92C ; =0x000001C7
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x13
	bl sub_0200B144
	ldr r1, _0208C930 ; =0x00000688
	ldr r2, _0208C934 ; =0x00000217
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x13
	bl sub_0200B144
	ldr r1, _0208C938 ; =0x0000068C
	mov r2, #0
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #2
	mov r3, #0x13
	bl sub_0200C440
	ldr r1, _0208C93C ; =0x00000684
	str r0, [r4, r1]
	mov r0, #0x13
	bl sub_0200B358
	mov r1, #0x69
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0xc
	mov r1, #0x13
	bl sub_02023790
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0xc
	mov r1, #0x13
	bl sub_02023790
	mov r1, #0x95
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #8
	mov r1, #0x13
	bl sub_02023790
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x80
	mov r1, #0x13
	bl sub_02023790
	ldr r1, _0208C940 ; =0x00000694
	ldr r2, _0208C944 ; =0x00000287
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x13
	bl sub_0200B144
	ldr r1, _0208C948 ; =0x0000069C
	str r0, [r4, r1]
	mov r0, #8
	mov r1, #0x13
	bl sub_02023790
	ldr r2, _0208C94C ; =0x00000698
	str r0, [r4, r2]
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0208C928
	ldr r0, [r4, r2]
	bl sub_02023D28
_0208C928:
	pop {r4, pc}
	nop
_0208C92C: .word 0x000001C7
_0208C930: .word 0x00000688
_0208C934: .word 0x00000217
_0208C938: .word 0x0000068C
_0208C93C: .word 0x00000684
_0208C940: .word 0x00000694
_0208C944: .word 0x00000287
_0208C948: .word 0x0000069C
_0208C94C: .word 0x00000698
	thumb_func_end sub_0208C884

	thumb_func_start sub_0208C950
sub_0208C950: ; 0x0208C950
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208C9B0 ; =0x0000069C
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0208C9B4 ; =0x0000068C
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0208C9B8 ; =0x00000688
	ldr r0, [r4, r0]
	bl sub_0200B190
	ldr r0, _0208C9BC ; =0x00000684
	ldr r0, [r4, r0]
	bl sub_0200C560
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0208C9C0 ; =0x00000694
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0208C9C4 ; =0x00000698
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	nop
_0208C9B0: .word 0x0000069C
_0208C9B4: .word 0x0000068C
_0208C9B8: .word 0x00000688
_0208C9BC: .word 0x00000684
_0208C9C0: .word 0x00000694
_0208C9C4: .word 0x00000698
	thumb_func_end sub_0208C950

	thumb_func_start sub_0208C9C8
sub_0208C9C8: ; 0x0208C9C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #1
	bne _0208C9FC
	add r0, r4, #0
	bl sub_02092028
	add r0, r4, #0
	bl sub_0208D618
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _0208C9F0
	mov r0, #9
	pop {r4, pc}
_0208C9F0:
	cmp r0, #4
	bne _0208C9F8
	mov r0, #0xf
	pop {r4, pc}
_0208C9F8:
	mov r0, #2
	pop {r4, pc}
_0208C9FC:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0208C9C8

	thumb_func_start sub_0208CA00
sub_0208CA00: ; 0x0208CA00
	push {r4, r5, r6, lr}
	ldr r3, _0208CB28 ; =0x000006A7
	add r4, r0, #0
	ldrb r1, [r4, r3]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _0208CA1E
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	strb r1, [r0, #0x17]
	mov r0, #0x12
	pop {r4, r5, r6, pc}
_0208CA1E:
	ldr r2, _0208CB2C ; =0x021BF67C
	mov r1, #0x20
	ldr r5, [r2, #0x4c]
	add r6, r5, #0
	tst r6, r1
	beq _0208CA34
	sub r1, #0x21
	bl sub_0208D898
	mov r0, #2
	pop {r4, r5, r6, pc}
_0208CA34:
	mov r1, #0x10
	tst r1, r5
	beq _0208CA44
	mov r1, #1
	bl sub_0208D898
	mov r0, #2
	pop {r4, r5, r6, pc}
_0208CA44:
	mov r1, #0x40
	add r6, r5, #0
	tst r6, r1
	beq _0208CA56
	sub r1, #0x41
	bl sub_0208DB10
	mov r0, #2
	pop {r4, r5, r6, pc}
_0208CA56:
	mov r1, #0x80
	tst r1, r5
	beq _0208CA66
	mov r1, #1
	bl sub_0208DB10
	mov r0, #2
	pop {r4, r5, r6, pc}
_0208CA66:
	ldr r1, [r2, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0208CA84
	sub r3, #0xca
	add r0, r3, #0
	bl sub_02005748
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	strb r1, [r0, #0x17]
	mov r0, #0x12
	pop {r4, r5, r6, pc}
_0208CA84:
	mov r0, #1
	tst r0, r1
	beq _0208CB10
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	bne _0208CAAE
	sub r0, r3, #3
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bne _0208CAAE
	sub r3, #0xca
	add r0, r3, #0
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208E958
	pop {r4, r5, r6, pc}
_0208CAAE:
	ldr r0, _0208CB30 ; =0x000006A4
	ldrsb r1, [r4, r0]
	cmp r1, #3
	bne _0208CAC6
	sub r0, #8
	bl sub_02005748
	ldr r0, _0208CB34 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #3
	pop {r4, r5, r6, pc}
_0208CAC6:
	cmp r1, #5
	bne _0208CADA
	sub r0, #8
	bl sub_02005748
	ldr r0, _0208CB34 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #5
	pop {r4, r5, r6, pc}
_0208CADA:
	cmp r1, #6
	bne _0208CAF8
	add r1, r0, #0
	add r1, #0xd
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0208CB10
	sub r0, #0xc7
	bl sub_02005748
	ldr r0, _0208CB34 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_0208CAF8:
	cmp r1, #7
	bne _0208CB10
	sub r0, #0xc7
	bl sub_02005748
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	strb r1, [r0, #0x17]
	mov r0, #0x12
	pop {r4, r5, r6, pc}
_0208CB10:
	add r0, r4, #0
	bl sub_0208D920
	cmp r0, #1
	bne _0208CB24
	ldr r0, _0208CB34 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	mov r0, #0xe
	pop {r4, r5, r6, pc}
_0208CB24:
	mov r0, #2
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208CB28: .word 0x000006A7
_0208CB2C: .word 0x021BF67C
_0208CB30: .word 0x000006A4
_0208CB34: .word 0x000006A6
	thumb_func_end sub_0208CA00

	thumb_func_start sub_0208CB38
sub_0208CB38: ; 0x0208CB38
	push {r3, lr}
	bl sub_0208DD8C
	cmp r0, #1
	bne _0208CB46
	mov r0, #7
	pop {r3, pc}
_0208CB46:
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CB38

	thumb_func_start sub_0208CB4C
sub_0208CB4C: ; 0x0208CB4C
	push {r3, lr}
	bl sub_0208DEA4
	cmp r0, #1
	bne _0208CB5A
	mov r0, #2
	pop {r3, pc}
_0208CB5A:
	mov r0, #4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CB4C

	thumb_func_start sub_0208CB60
sub_0208CB60: ; 0x0208CB60
	push {r3, lr}
	bl sub_0208E208
	cmp r0, #1
	bne _0208CB6E
	mov r0, #7
	pop {r3, pc}
_0208CB6E:
	mov r0, #5
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CB60

	thumb_func_start sub_0208CB74
sub_0208CB74: ; 0x0208CB74
	push {r3, lr}
	bl sub_0208E308
	cmp r0, #1
	bne _0208CB82
	mov r0, #2
	pop {r3, pc}
_0208CB82:
	mov r0, #6
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CB74

	thumb_func_start sub_0208CB88
sub_0208CB88: ; 0x0208CB88
	push {r4, lr}
	ldr r1, _0208CC58 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #0x40
	add r3, r2, #0
	tst r3, r1
	beq _0208CBB2
	sub r1, #0x41
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CBAE
	ldr r0, _0208CC5C ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CBAE:
	mov r0, #7
	pop {r4, pc}
_0208CBB2:
	mov r1, #0x80
	tst r1, r2
	beq _0208CBD2
	mov r1, #1
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CBCE
	ldr r0, _0208CC5C ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CBCE:
	mov r0, #7
	pop {r4, pc}
_0208CBD2:
	mov r0, #1
	tst r0, r2
	beq _0208CC32
	ldr r0, _0208CC60 ; =0x000006A5
	ldrb r1, [r4, r0]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #4
	bne _0208CC00
	sub r0, #9
	bl sub_02005748
	ldr r0, _0208CC64 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208CBFC
	mov r0, #4
	pop {r4, pc}
_0208CBFC:
	mov r0, #6
	pop {r4, pc}
_0208CC00:
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r1, [r1, #0x12]
	cmp r1, #1
	beq _0208CC32
	sub r0, #0xc8
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208F310
	ldr r2, _0208CC60 ; =0x000006A5
	mov r1, #0xf0
	ldrb r3, [r4, r2]
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x1c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4, r2]
	mov r0, #8
	pop {r4, pc}
_0208CC32:
	mov r0, #2
	tst r0, r2
	beq _0208CC54
	ldr r0, _0208CC68 ; =0x0000069C
	bl sub_02005748
	ldr r0, _0208CC64 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208CC50
	mov r0, #4
	pop {r4, pc}
_0208CC50:
	mov r0, #6
	pop {r4, pc}
_0208CC54:
	mov r0, #7
	pop {r4, pc}
	; .align 2, 0
_0208CC58: .word 0x021BF67C
_0208CC5C: .word 0x000005DC
_0208CC60: .word 0x000006A5
_0208CC64: .word 0x000006A6
_0208CC68: .word 0x0000069C
	thumb_func_end sub_0208CB88

	thumb_func_start sub_0208CC6C
sub_0208CC6C: ; 0x0208CC6C
	push {r4, lr}
	ldr r1, _0208CD30 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #0x40
	add r3, r2, #0
	tst r3, r1
	beq _0208CC96
	sub r1, #0x41
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CC92
	ldr r0, _0208CD34 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CC92:
	mov r0, #8
	pop {r4, pc}
_0208CC96:
	mov r1, #0x80
	tst r1, r2
	beq _0208CCB6
	mov r1, #1
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CCB2
	ldr r0, _0208CD34 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CCB2:
	mov r0, #8
	pop {r4, pc}
_0208CCB6:
	mov r0, #1
	tst r0, r2
	beq _0208CD10
	ldr r0, _0208CD38 ; =0x00000444
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208CD3C ; =0x000006A5
	ldrb r1, [r4, r0]
	lsl r2, r1, #0x1c
	lsr r2, r2, #0x1c
	cmp r2, #4
	beq _0208CD06
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r2, r1
	beq _0208CD06
	sub r0, #0xc8
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208E0DC
	ldr r1, _0208CD3C ; =0x000006A5
	add r0, r4, #0
	ldrb r2, [r4, r1]
	lsl r1, r2, #0x1c
	lsl r2, r2, #0x18
	lsr r1, r1, #0x1c
	lsr r2, r2, #0x1c
	bl sub_0208F22C
	add r0, r4, #0
	bl sub_02091474
	add r0, r4, #0
	bl sub_0208DFF4
	b _0208CD0C
_0208CD06:
	ldr r0, _0208CD40 ; =0x000005DD
	bl sub_02005748
_0208CD0C:
	mov r0, #7
	pop {r4, pc}
_0208CD10:
	mov r0, #2
	tst r0, r2
	beq _0208CD2A
	ldr r0, _0208CD40 ; =0x000005DD
	bl sub_02005748
	ldr r0, _0208CD38 ; =0x00000444
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r0, #7
	pop {r4, pc}
_0208CD2A:
	mov r0, #8
	pop {r4, pc}
	nop
_0208CD30: .word 0x021BF67C
_0208CD34: .word 0x000005DC
_0208CD38: .word 0x00000444
_0208CD3C: .word 0x000006A5
_0208CD40: .word 0x000005DD
	thumb_func_end sub_0208CC6C

	thumb_func_start sub_0208CD44
sub_0208CD44: ; 0x0208CD44
	push {r4, lr}
	ldr r1, _0208CE40 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _0208CD5E
	sub r1, #0x21
	bl sub_0208D898
	mov r0, #9
	pop {r4, pc}
_0208CD5E:
	mov r1, #0x10
	tst r1, r2
	beq _0208CD6E
	mov r1, #1
	bl sub_0208D898
	mov r0, #9
	pop {r4, pc}
_0208CD6E:
	mov r1, #0x40
	add r3, r2, #0
	tst r3, r1
	beq _0208CD90
	sub r1, #0x41
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CD8C
	ldr r0, _0208CE44 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CD8C:
	mov r0, #9
	pop {r4, pc}
_0208CD90:
	mov r1, #0x80
	tst r1, r2
	beq _0208CDB0
	mov r1, #1
	bl sub_0208DF94
	cmp r0, #1
	bne _0208CDAC
	ldr r0, _0208CE44 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0208DFF4
_0208CDAC:
	mov r0, #9
	pop {r4, pc}
_0208CDB0:
	mov r0, #1
	tst r0, r2
	beq _0208CE1A
	ldr r0, _0208CE48 ; =0x000005DD
	bl sub_02005748
	ldr r0, _0208CE4C ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #4
	beq _0208CE00
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xa1
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	bl sub_0207D28C
	cmp r0, #1
	bne _0208CE00
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0208CE00
	ldr r0, _0208CE50 ; =0x00000464
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	add r0, r4, #0
	bl sub_0208E46C
	add r0, r4, #0
	bl sub_020914F8
	mov r0, #0xa
	pop {r4, pc}
_0208CE00:
	ldr r0, _0208CE4C ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1c
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	strb r2, [r1, #0x16]
	ldr r0, [r4, r0]
	mov r1, #0
	strb r1, [r0, #0x17]
	mov r0, #0x12
	pop {r4, pc}
_0208CE1A:
	mov r0, #2
	tst r0, r2
	beq _0208CE3A
	ldr r0, _0208CE48 ; =0x000005DD
	bl sub_02005748
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #4
	strb r2, [r1, #0x16]
	ldr r0, [r4, r0]
	mov r1, #1
	strb r1, [r0, #0x17]
	mov r0, #0x12
	pop {r4, pc}
_0208CE3A:
	mov r0, #9
	pop {r4, pc}
	nop
_0208CE40: .word 0x021BF67C
_0208CE44: .word 0x000005DC
_0208CE48: .word 0x000005DD
_0208CE4C: .word 0x000006A5
_0208CE50: .word 0x00000464
	thumb_func_end sub_0208CD44

	thumb_func_start sub_0208CE54
sub_0208CE54: ; 0x0208CE54
	push {r3, lr}
	ldr r1, _0208CE6C ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _0208CE68
	bl sub_0208DFF4
	mov r0, #9
	pop {r3, pc}
_0208CE68:
	mov r0, #0xa
	pop {r3, pc}
	; .align 2, 0
_0208CE6C: .word 0x021BF67C
	thumb_func_end sub_0208CE54

	thumb_func_start sub_0208CE70
sub_0208CE70: ; 0x0208CE70
	push {r3, lr}
	bl sub_0208E57C
	cmp r0, #1
	bne _0208CE7E
	mov r0, #0xd
	pop {r3, pc}
_0208CE7E:
	mov r0, #0xb
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CE70

	thumb_func_start sub_0208CE84
sub_0208CE84: ; 0x0208CE84
	push {r3, lr}
	bl sub_0208E6A8
	cmp r0, #1
	bne _0208CE92
	mov r0, #2
	pop {r3, pc}
_0208CE92:
	mov r0, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208CE84

	thumb_func_start sub_0208CE98
sub_0208CE98: ; 0x0208CE98
	push {r3, r4, r5, lr}
	ldr r3, _0208CF00 ; =0x021BF67C
	mov r1, #0x20
	ldr r2, [r3, #0x4c]
	add r4, r0, #0
	add r5, r2, #0
	tst r5, r1
	beq _0208CEB2
	sub r1, #0x21
	bl sub_0208E794
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_0208CEB2:
	mov r1, #0x10
	tst r1, r2
	beq _0208CEC2
	mov r1, #1
	bl sub_0208E794
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_0208CEC2:
	mov r1, #0x40
	add r5, r2, #0
	tst r5, r1
	beq _0208CED4
	sub r1, #0x44
	bl sub_0208E794
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_0208CED4:
	mov r1, #0x80
	tst r1, r2
	beq _0208CEE4
	mov r1, #4
	bl sub_0208E794
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_0208CEE4:
	ldr r1, [r3, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0208CEFC
	ldr r0, _0208CF04 ; =0x000005DD
	bl sub_02005748
	ldr r0, _0208CF08 ; =0x000006A6
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_0208CEFC:
	mov r0, #0xd
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208CF00: .word 0x021BF67C
_0208CF04: .word 0x000005DD
_0208CF08: .word 0x000006A6
	thumb_func_end sub_0208CE98

	thumb_func_start sub_0208CF0C
sub_0208CF0C: ; 0x0208CF0C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0209228C
	cmp r0, #1
	bne _0208CF1E
	ldr r0, _0208CF6C ; =0x000006A6
	ldrb r0, [r4, r0]
	pop {r4, pc}
_0208CF1E:
	ldr r1, _0208CF70 ; =0x000006AD
	ldrb r0, [r4, r1]
	cmp r0, #1
	bne _0208CF68
	add r1, r1, #1
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl sub_020923A4
	add r1, r0, #0
	cmp r1, #7
	bne _0208CF44
	ldr r2, _0208CF74 ; =0x000006A7
	mov r0, #0xf0
	ldrb r3, [r4, r2]
	bic r3, r0
	mov r0, #0x10
	orr r0, r3
	strb r0, [r4, r2]
_0208CF44:
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0208CF62
	cmp r1, #1
	beq _0208CF5A
	cmp r1, #7
	bne _0208CF68
_0208CF5A:
	add r0, r4, #0
	bl sub_0208D7EC
	b _0208CF68
_0208CF62:
	add r0, r4, #0
	bl sub_0208D7EC
_0208CF68:
	mov r0, #0xe
	pop {r4, pc}
	; .align 2, 0
_0208CF6C: .word 0x000006A6
_0208CF70: .word 0x000006AD
_0208CF74: .word 0x000006A7
	thumb_func_end sub_0208CF0C

	thumb_func_start sub_0208CF78
sub_0208CF78: ; 0x0208CF78
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _0208D0F4 ; =0x021BF67C
	add r5, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	bne _0208CF8A
	b _0208D0EE
_0208CF8A:
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r1, [r1, #0x11]
	cmp r1, #2
	bne _0208CFAE
	bl sub_0208DD48
	add r6, r0, #0
	mov r0, #0x13
	bl sub_02073C74
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020774C8
	b _0208CFB4
_0208CFAE:
	bl sub_0208DD48
	add r4, r0, #0
_0208CFB4:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	ldr r0, [r0, #0x24]
	bl sub_02098EF8
	ldr r0, _0208D0F8 ; =0x000006A6
	mov r2, #0
	strb r2, [r5, r0]
	ldr r0, _0208D0FC ; =0x00000295
	mov r1, #0x13
	ldrb r6, [r5, r0]
	add r0, r4, #0
	bl sub_02074470
	ldr r1, _0208D0FC ; =0x00000295
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r6, r0
	beq _0208CFE8
	ldr r1, _0208D0F8 ; =0x000006A6
	mov r0, #1
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_0208CFE8:
	ldr r0, _0208D100 ; =0x00000296
	mov r1, #0x14
	ldrb r6, [r5, r0]
	add r0, r4, #0
	mov r2, #0
	bl sub_02074470
	ldr r1, _0208D100 ; =0x00000296
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r6, r0
	beq _0208D00A
	ldr r1, _0208D0F8 ; =0x000006A6
	mov r0, #2
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_0208D00A:
	ldr r0, _0208D104 ; =0x00000297
	mov r1, #0x15
	ldrb r6, [r5, r0]
	add r0, r4, #0
	mov r2, #0
	bl sub_02074470
	ldr r1, _0208D104 ; =0x00000297
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r6, r0
	beq _0208D02C
	ldr r1, _0208D0F8 ; =0x000006A6
	mov r0, #4
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_0208D02C:
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r6, [r5, r0]
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	mov r1, #0xa6
	lsl r1, r1, #2
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r6, r0
	beq _0208D052
	ldr r1, _0208D0F8 ; =0x000006A6
	mov r0, #8
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_0208D052:
	ldr r0, _0208D108 ; =0x00000299
	mov r1, #0x17
	ldrb r6, [r5, r0]
	add r0, r4, #0
	mov r2, #0
	bl sub_02074470
	ldr r1, _0208D108 ; =0x00000299
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r6, r0
	beq _0208D074
	ldr r1, _0208D0F8 ; =0x000006A6
	mov r0, #0x10
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_0208D074:
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0
	bl sub_02074470
	ldr r1, _0208D10C ; =0x0000029A
	strb r0, [r5, r1]
	sub r1, #0x4e
	ldr r0, [r5, r1]
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	bne _0208D092
	add r0, r4, #0
	bl sub_020181C4
_0208D092:
	mov r1, #7
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x13
	bl sub_02002E98
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r2, _0208D110 ; =0x000003E2
	mov r1, #1
	mov r3, #0xd
	bl sub_0200DD0C
	ldr r0, _0208D0F8 ; =0x000006A6
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0208D0D6
	add r0, r5, #0
	mov r1, #0xfe
	bl sub_02091610
	add sp, #8
	mov r0, #0x11
	pop {r4, r5, r6, pc}
_0208D0D6:
	add r0, r5, #0
	bl sub_02091D50
	add r0, r5, #0
	bl sub_0208F34C
	add r0, r5, #0
	bl sub_0208F6A4
	add sp, #8
	mov r0, #0x10
	pop {r4, r5, r6, pc}
_0208D0EE:
	mov r0, #0xf
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208D0F4: .word 0x021BF67C
_0208D0F8: .word 0x000006A6
_0208D0FC: .word 0x00000295
_0208D100: .word 0x00000296
_0208D104: .word 0x00000297
_0208D108: .word 0x00000299
_0208D10C: .word 0x0000029A
_0208D110: .word 0x000003E2
	thumb_func_end sub_0208CF78

	thumb_func_start sub_0208D114
sub_0208D114: ; 0x0208D114
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0208D15C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0208D156
	ldr r0, _0208D160 ; =0x000006A6
	mov r1, #0
	ldrb r2, [r5, r0]
	mov r0, #1
_0208D12A:
	add r4, r0, #0
	lsl r4, r1
	add r3, r2, #0
	tst r3, r4
	beq _0208D14C
	add r0, r5, #0
	bl sub_02091610
	ldr r0, _0208D160 ; =0x000006A6
	ldrb r1, [r5, r0]
	eor r1, r4
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0208D156
	mov r0, #0x11
	pop {r3, r4, r5, pc}
_0208D14C:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #5
	blo _0208D12A
_0208D156:
	mov r0, #0x10
	pop {r3, r4, r5, pc}
	nop
_0208D15C: .word 0x021BF67C
_0208D160: .word 0x000006A6
	thumb_func_end sub_0208D114

	thumb_func_start sub_0208D164
sub_0208D164: ; 0x0208D164
	ldr r0, _0208D178 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0208D172
	mov r0, #0x12
	bx lr
_0208D172:
	mov r0, #0x11
	bx lr
	nop
_0208D178: .word 0x021BF67C
	thumb_func_end sub_0208D164

	thumb_func_start sub_0208D17C
sub_0208D17C: ; 0x0208D17C
	push {r3, lr}
	mov r0, #1
	mov r1, #0x13
	bl sub_0208C120
	mov r0, #0x13
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208D17C

	thumb_func_start sub_0208D18C
sub_0208D18C: ; 0x0208D18C
	push {r3, lr}
	bl sub_0200F2AC
	cmp r0, #1
	bne _0208D19A
	mov r0, #1
	b _0208D19C
_0208D19A:
	mov r0, #0
_0208D19C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208D18C

	thumb_func_start sub_0208D1A4
sub_0208D1A4: ; 0x0208D1A4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0208DD48
	mov r2, #0x93
	lsl r2, r2, #2
	add r1, r0, #0
	ldr r0, [r4, r2]
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	bne _0208D1C6
	add r2, r2, #4
	add r0, r4, #0
	add r2, r4, r2
	bl sub_0208D1D4
	pop {r4, pc}
_0208D1C6:
	add r2, r2, #4
	add r0, r4, #0
	add r2, r4, r2
	bl sub_0208D200
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208D1A4

	thumb_func_start sub_0208D1D4
sub_0208D1D4: ; 0x0208D1D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x13
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02073C74
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020774C8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0208D200
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208D1D4

	thumb_func_start sub_0208D200
sub_0208D200: ; 0x0208D200
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	add r5, r2, #0
	bl sub_02073C88
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0xc]
	add r0, r6, #0
	bl sub_02076B10
	ldr r2, _0208D584 ; =0x00000688
	add r4, r0, #0
	ldr r0, [r7, r2]
	add r2, #0xc
	ldr r2, [r7, r2]
	mov r1, #0xb
	bl sub_0200B1B8
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B538
	mov r2, #0x69
	lsl r2, r2, #4
	mov r1, #0x25
	ldr r0, [r7, r2]
	lsl r1, r1, #4
	add r2, r2, #4
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	bl sub_0200C388
	ldr r2, _0208D584 ; =0x00000688
	mov r1, #0
	ldr r0, [r7, r2]
	add r2, #0xc
	ldr r2, [r7, r2]
	bl sub_0200B1B8
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B5CC
	mov r2, #0x69
	lsl r2, r2, #4
	mov r1, #0x95
	ldr r0, [r7, r2]
	lsl r1, r1, #2
	add r2, r2, #4
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	bl sub_0200C388
	ldr r2, _0208D584 ; =0x00000688
	mov r1, #0xe
	ldr r0, [r7, r2]
	add r2, #0xc
	ldr r2, [r7, r2]
	bl sub_0200B1B8
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B5EC
	mov r2, #0x69
	lsl r2, r2, #4
	mov r1, #0x96
	ldr r0, [r7, r2]
	lsl r1, r1, #2
	add r2, r2, #4
	ldr r1, [r7, r1]
	ldr r2, [r7, r2]
	bl sub_0200C388
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0xe]
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldrb r1, [r5, #0x12]
	mov r2, #0x7f
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0x7f
	and r0, r2
	orr r0, r1
	strb r0, [r5, #0x12]
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x1f
	ldr r2, [r5, #0x50]
	ldr r1, _0208D588 ; =0xEFFFFFFF
	lsr r0, r0, #3
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x50]
	add r0, r6, #0
	mov r1, #0xb0
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _0208D316
	ldr r0, [r5, #0x50]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0208D316
	ldrb r1, [r5, #0x12]
	mov r0, #0x80
	bic r1, r0
	strb r1, [r5, #0x12]
	b _0208D31E
_0208D316:
	ldrb r1, [r5, #0x12]
	mov r0, #0x80
	orr r0, r1
	strb r0, [r5, #0x12]
_0208D31E:
	add r0, r6, #0
	bl sub_02075D6C
	ldrb r1, [r5, #0x13]
	mov r2, #3
	bic r1, r2
	mov r2, #3
	and r0, r2
	orr r0, r1
	strb r0, [r5, #0x13]
	add r0, r6, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1a
	ldrb r1, [r5, #0x13]
	mov r2, #0xfc
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r5, #0x13]
	add r0, r6, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #0x10]
	add r0, r6, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #0x11]
	add r0, r6, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	str r0, [r5, #0x14]
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074470
	str r0, [r5, #0x18]
	add r0, r6, #0
	mov r1, #0x9d
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x44
	strb r0, [r1]
	ldrb r1, [r5, #0x12]
	ldrh r0, [r5, #0xc]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	bl sub_02075AD0
	str r0, [r5, #0x1c]
	ldrb r0, [r5, #0x12]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x19
	cmp r1, #0x64
	bne _0208D3AA
	ldr r0, [r5, #0x1c]
	b _0208D3B2
_0208D3AA:
	ldrh r0, [r5, #0xc]
	add r1, r1, #1
	bl sub_02075AD0
_0208D3B2:
	str r0, [r5, #0x20]
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x24]
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x26]
	add r0, r6, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x28]
	add r0, r6, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x2a]
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x2c]
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x2e]
	add r0, r6, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x30]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x32
	strb r0, [r1]
	add r0, r6, #0
	bl sub_02075BCC
	add r1, r5, #0
	add r1, #0x33
	strb r0, [r1]
	mov r4, #0
_0208D426:
	lsl r0, r4, #1
	add r0, r5, r0
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	mov r2, #0
	strh r0, [r1, #0x34]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3a
	bl sub_02074470
	add r1, r5, r4
	add r1, #0x3c
	strb r0, [r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp]
	ldrh r0, [r0, #0x34]
	bl sub_020790DC
	add r1, r5, r4
	add r1, #0x40
	strb r0, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0208D426
	add r0, r6, #0
	mov r1, #0x13
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x45
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x14
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x46
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x15
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x47
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x48
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x17
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x49
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x18
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x4a
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #5
	add r0, #0x4b
	strb r1, [r0]
	mov r4, #0
_0208D4E0:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207762C
	cmp r0, #1
	bne _0208D4F4
	add r0, r5, #0
	add r0, #0x4b
	strb r4, [r0]
	b _0208D4FE
_0208D4F4:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _0208D4E0
_0208D4FE:
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x4c
	strh r0, [r1]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x4e
	strh r0, [r1]
	add r0, r6, #0
	bl sub_0208E9F0
	mov r1, #0xf
	ldr r2, [r5, #0x50]
	lsl r1, r1, #0x1c
	and r2, r1
	ldr r1, _0208D58C ; =0x0FFFFFFF
	and r0, r1
	orr r0, r2
	str r0, [r5, #0x50]
	add r0, r6, #0
	bl sub_020778F8
	cmp r0, #1
	bne _0208D54E
	ldr r1, [r5, #0x50]
	ldr r0, _0208D590 ; =0x3FFFFFFF
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0x1e
	orr r0, r1
	str r0, [r5, #0x50]
	b _0208D598
_0208D54E:
	add r0, r6, #0
	bl sub_020778D8
	cmp r0, #1
	bne _0208D57C
	ldr r2, [r5, #0x50]
	ldr r1, _0208D590 ; =0x3FFFFFFF
	add r0, r5, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	str r1, [r5, #0x50]
	lsl r1, r1, #4
	lsr r1, r1, #4
	add r0, #0x50
	cmp r1, #7
	bne _0208D598
	mov r1, #0xf
	ldr r2, [r0, #0]
	lsl r1, r1, #0x1c
	and r1, r2
	str r1, [r0, #0]
	b _0208D598
_0208D57C:
	ldr r1, [r5, #0x50]
	ldr r0, _0208D590 ; =0x3FFFFFFF
	b _0208D594
	nop
_0208D584: .word 0x00000688
_0208D588: .word 0xEFFFFFFF
_0208D58C: .word 0x0FFFFFFF
_0208D590: .word 0x3FFFFFFF
_0208D594:
	and r0, r1
	str r0, [r5, #0x50]
_0208D598:
	add r0, r6, #0
	bl sub_02075E0C
	cmp r0, #1
	ldr r1, [r5, #0x50]
	bne _0208D5AC
	mov r0, #2
	lsl r0, r0, #0x1c
	orr r0, r1
	b _0208D5B0
_0208D5AC:
	ldr r0, _0208D610 ; =0xDFFFFFFF
	and r0, r1
_0208D5B0:
	str r0, [r5, #0x50]
	mov r4, #0
	str r4, [r5, #0x54]
	str r4, [r5, #0x58]
	str r4, [r5, #0x5c]
	ldr r0, _0208D614 ; =0x000006B1
	str r4, [r5, #0x60]
	strb r4, [r7, r0]
_0208D5C0:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_020923C0
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0208D5F8
	lsr r0, r4, #5
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0x1f
	add r2, r4, #0
	and r2, r1
	mov r1, #1
	ldr r3, [r0, #0x54]
	lsl r1, r2
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r0, _0208D614 ; =0x000006B1
	ldrb r0, [r7, r0]
	add r1, r0, #1
	ldr r0, _0208D614 ; =0x000006B1
	strb r1, [r7, r0]
_0208D5F8:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x50
	blo _0208D5C0
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl sub_02073CD4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208D610: .word 0xDFFFFFFF
_0208D614: .word 0x000006B1
	thumb_func_end sub_0208D200

	thumb_func_start sub_0208D618
sub_0208D618: ; 0x0208D618
	push {r4, lr}
	sub sp, #8
	mov r2, #0x2a
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0208D674
	mov r0, #0x6a
	sub r2, #0x44
	lsl r0, r0, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	add r1, sp, #4
	mov r3, #1
	bl sub_02078A4C
	mov r2, #0x97
	lsl r2, r2, #2
	add r1, r2, #0
	ldrh r0, [r4, r2]
	sub r1, #0xa3
	cmp r0, r1
	bne _0208D664
	add r0, sp, #4
	ldrb r0, [r0]
	mov r1, #0
	sub r2, #0x10
	str r0, [sp]
	ldr r0, [r4, r2]
	mov r2, #0x64
	ldr r0, [r0, #0x28]
	add r3, r1, #0
	bl sub_02006438
	add sp, #8
	pop {r4, pc}
_0208D664:
	add r2, #0x42
	ldrh r2, [r4, r2]
	add r1, sp, #4
	ldrb r1, [r1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_0200590C
_0208D674:
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_0208D618

	thumb_func_start sub_0208D678
sub_0208D678: ; 0x0208D678
	push {r4, lr}
	mov r1, #0x93
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	ldrb r0, [r0, #0x12]
	cmp r0, #4
	bhi _0208D6C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208D694: ; jump table
	.short _0208D69E - _0208D694 - 2 ; case 0
	.short _0208D69E - _0208D694 - 2 ; case 1
	.short _0208D6B6 - _0208D694 - 2 ; case 2
	.short _0208D6BE - _0208D694 - 2 ; case 3
	.short _0208D6BE - _0208D694 - 2 ; case 4
_0208D69E:
	add r1, #0x54
	ldr r0, [r4, r1]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	ldr r0, _0208D71C ; =0x000006A4
	bne _0208D6B0
	mov r1, #0
	strb r1, [r4, r0]
	b _0208D6C4
_0208D6B0:
	mov r1, #1
	strb r1, [r4, r0]
	b _0208D6C4
_0208D6B6:
	ldr r0, _0208D71C ; =0x000006A4
	mov r1, #3
	strb r1, [r4, r0]
	b _0208D6C4
_0208D6BE:
	ldr r0, _0208D71C ; =0x000006A4
	mov r1, #4
	strb r1, [r4, r0]
_0208D6C4:
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	add r0, r4, #0
	bl sub_0208ECF4
	add r0, r4, #0
	bl sub_0208EF58
	add r0, r4, #0
	bl sub_0208FA04
	add r0, r4, #0
	bl sub_0208EDC4
	add r0, r4, #0
	bl sub_0208F574
	add r0, r4, #0
	bl sub_0208F34C
	add r0, r4, #0
	bl sub_0208FD40
	add r0, r4, #0
	bl sub_020904C4
	add r0, r4, #0
	bl sub_0208D948
	add r0, r4, #0
	bl sub_020919E8
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _0208D71A
	add r0, r4, #0
	bl sub_0208E190
_0208D71A:
	pop {r4, pc}
	; .align 2, 0
_0208D71C: .word 0x000006A4
	thumb_func_end sub_0208D678

	thumb_func_start sub_0208D720
sub_0208D720: ; 0x0208D720
	push {r3, r4, r5, r6}
	mov r6, #0
	strb r6, [r0, #0x15]
	add r0, #0x15
	mov r3, #1
_0208D72A:
	ldrb r5, [r1, r6]
	cmp r5, #8
	beq _0208D744
	add r2, r3, #0
	ldrb r4, [r0]
	lsl r2, r5
	orr r2, r4
	strb r2, [r0]
	add r2, r6, #1
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	cmp r6, #8
	blo _0208D72A
_0208D744:
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0208D720

	thumb_func_start sub_0208D748
sub_0208D748: ; 0x0208D748
	push {r3, r4}
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	ldr r1, [r4, #0x2c]
	cmp r1, #1
	beq _0208D78C
	ldrb r2, [r4, #0x15]
	mov r1, #0x10
	add r3, r2, #0
	tst r3, r1
	beq _0208D764
	eor r1, r2
	strb r1, [r4, #0x15]
_0208D764:
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	mov r1, #0x20
	ldrb r2, [r4, #0x15]
	add r3, r2, #0
	tst r3, r1
	beq _0208D778
	eor r1, r2
	strb r1, [r4, #0x15]
_0208D778:
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	mov r0, #0x40
	ldrb r1, [r3, #0x15]
	add r2, r1, #0
	tst r2, r0
	beq _0208D78C
	eor r0, r1
	strb r0, [r3, #0x15]
_0208D78C:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0208D748

	thumb_func_start sub_0208D790
sub_0208D790: ; 0x0208D790
	mov r2, #0x2a
	lsl r2, r2, #4
	ldr r2, [r0, r2]
	lsl r2, r2, #3
	lsr r2, r2, #0x1f
	beq _0208D7A8
	cmp r1, #1
	beq _0208D7A8
	cmp r1, #7
	beq _0208D7A8
	mov r0, #0
	bx lr
_0208D7A8:
	mov r2, #0x93
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	ldrb r2, [r0, #0x15]
	mov r0, #1
	lsl r0, r1
	and r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_0208D790

	thumb_func_start sub_0208D7BC
sub_0208D7BC: ; 0x0208D7BC
	push {r3, r4}
	mov r3, #0x93
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	mov r2, #0
	ldrb r0, [r0, #0x15]
	add r1, r2, #0
	mov r3, #1
_0208D7CC:
	add r4, r3, #0
	lsl r4, r1
	tst r4, r0
	beq _0208D7DA
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_0208D7DA:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #8
	blo _0208D7CC
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208D7BC

	thumb_func_start sub_0208D7EC
sub_0208D7EC: ; 0x0208D7EC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _0208D894 ; =0x000006A4
	add r5, r0, #0
	ldrsb r1, [r5, r1]
	cmp r1, r4
	beq _0208D890
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r1, [r1, #0x12]
	cmp r1, #2
	bne _0208D80C
	bl sub_0208E4EC
_0208D80C:
	add r0, r5, #0
	bl sub_0208FE34
	ldr r0, _0208D894 ; =0x000006A4
	mov r1, #0
	strb r4, [r5, r0]
	add r0, r5, #0
	bl sub_0208F6DC
	add r0, r5, #0
	bl sub_0208ECF4
	add r0, r5, #0
	bl sub_0208EDC4
	add r0, r5, #0
	bl sub_0208EF58
	add r0, r5, #0
	bl sub_0208FA04
	add r0, r5, #0
	bl sub_0208F34C
	add r0, r5, #0
	bl sub_0208FD40
	add r0, r5, #0
	mov r1, #0
	bl sub_0208FB54
	mov r0, #4
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0]
	mov r1, #1
	mov r3, #0xe
	bl sub_02019CB8
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02019448
	add r0, r5, #0
	bl sub_020904C4
	add r0, r5, #0
	bl sub_0208D948
	add r0, r5, #0
	bl sub_020919E8
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _0208D890
	add r0, r5, #0
	bl sub_0208E508
_0208D890:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208D894: .word 0x000006A4
	thumb_func_end sub_0208D7EC

	thumb_func_start sub_0208D898
sub_0208D898: ; 0x0208D898
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0208D918 ; =0x000006A4
	mov r6, #1
	ldrsb r4, [r5, r0]
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov ip, r4
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	add r7, r6, #0
_0208D8B0:
	add r2, r4, r1
	lsl r2, r2, #0x18
	asr r4, r2, #0x18
	bpl _0208D8BC
	mov r4, #7
	b _0208D8C2
_0208D8BC:
	cmp r4, #7
	ble _0208D8C2
	mov r4, #0
_0208D8C2:
	cmp r0, #0
	bne _0208D8D8
	mov r2, #0x93
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	ldrb r3, [r2, #0x15]
	add r2, r6, #0
	lsl r2, r4
	tst r2, r3
	bne _0208D8F0
	b _0208D8B0
_0208D8D8:
	mov r2, #0x93
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	ldrb r3, [r2, #0x15]
	add r2, r7, #0
	lsl r2, r4
	tst r2, r3
	beq _0208D8B0
	cmp r4, #1
	beq _0208D8F0
	cmp r4, #7
	bne _0208D8B0
_0208D8F0:
	mov r0, ip
	cmp r4, r0
	beq _0208D914
	ldr r0, _0208D91C ; =0x000005E1
	bl sub_02005748
	add r0, r5, #0
	bl sub_0209219C
	add r0, r5, #0
	mov r1, #0
	bl sub_0208FB54
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0208D7EC
_0208D914:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208D918: .word 0x000006A4
_0208D91C: .word 0x000005E1
	thumb_func_end sub_0208D898

	thumb_func_start sub_0208D920
sub_0208D920: ; 0x0208D920
	push {r4, lr}
	add r4, r0, #0
	bl sub_020921E4
	cmp r0, #0xff
	bne _0208D930
	mov r0, #0
	pop {r4, pc}
_0208D930:
	ldr r1, _0208D944 ; =0x000006AC
	mov r3, #0
	strb r3, [r4, r1]
	add r2, r1, #2
	strb r0, [r4, r2]
	add r0, r1, #1
	strb r3, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	nop
_0208D944: .word 0x000006AC
	thumb_func_end sub_0208D920

	thumb_func_start sub_0208D948
sub_0208D948: ; 0x0208D948
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrb r0, [r1, #0x12]
	cmp r0, #2
	bne _0208D970
	ldrh r0, [r1, #0x18]
	cmp r0, #0
	beq _0208D970
	ldr r0, _0208D9CC ; =0x000006A4
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bne _0208D96C
	mov r1, #0xc
	b _0208D976
_0208D96C:
	mov r1, #0xd
	b _0208D976
_0208D970:
	ldr r0, _0208D9CC ; =0x000006A4
	ldrsb r0, [r5, r0]
	add r1, r0, #3
_0208D976:
	mov r0, #0x27
	mov r2, #0x13
	bl sub_02006AC0
	add r1, sp, #0xc
	add r4, r0, #0
	bl sub_020A7248
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r0, [r5, #0]
	mov r1, #3
	add r2, #0xc
	bl sub_020198C0
	ldr r0, [r5, #0]
	mov r1, #3
	bl sub_0201C3C0
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, _0208D9CC ; =0x000006A4
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0208D9BC
	add r0, r5, #0
	bl sub_0208DA84
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0208D9BC:
	cmp r0, #2
	bne _0208D9C6
	add r0, r5, #0
	bl sub_0208D9D0
_0208D9C6:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0208D9CC: .word 0x000006A4
	thumb_func_end sub_0208D948

	thumb_func_start sub_0208D9D0
sub_0208D9D0: ; 0x0208D9D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0x9d
	add r6, r0, #0
	lsl r1, r1, #2
	ldrh r0, [r6, r1]
	add r1, r1, #2
	ldrh r1, [r6, r1]
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _0208DA0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208D9F6: ; jump table
	.short _0208DA00 - _0208D9F6 - 2 ; case 0
	.short _0208DA08 - _0208D9F6 - 2 ; case 1
	.short _0208DA04 - _0208D9F6 - 2 ; case 2
	.short _0208DA00 - _0208D9F6 - 2 ; case 3
	.short _0208DA00 - _0208D9F6 - 2 ; case 4
_0208DA00:
	ldr r7, _0208DA7C ; =0x0000A0C0
	b _0208DA0C
_0208DA04:
	ldr r7, _0208DA80 ; =0x0000A0E0
	b _0208DA0C
_0208DA08:
	mov r7, #0xa1
	lsl r7, r7, #8
_0208DA0C:
	mov r1, #0x9d
	lsl r1, r1, #2
	ldrh r0, [r6, r1]
	add r1, r1, #2
	ldrh r1, [r6, r1]
	mov r2, #0x30
	bl sub_0208C0BC
	add r4, r0, #0
	add r0, r7, #0
	add r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r5, #0
	str r0, [sp, #0x10]
_0208DA2A:
	cmp r4, #8
	blo _0208DA32
	ldr r2, [sp, #0x10]
	b _0208DA38
_0208DA32:
	add r0, r7, r4
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0208DA38:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r3, r5, #0
	str r0, [sp, #8]
	mov r0, #0x11
	add r3, #0x18
	str r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [r6, #0]
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02019CB8
	cmp r4, #8
	bhs _0208DA5E
	mov r4, #0
	b _0208DA64
_0208DA5E:
	sub r4, #8
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_0208DA64:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0208DA2A
	ldr r0, [r6, #0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0208DA7C: .word 0x0000A0C0
_0208DA80: .word 0x0000A0E0
	thumb_func_end sub_0208D9D0

	thumb_func_start sub_0208DA84
sub_0208DA84: ; 0x0208DA84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _0208DB0C ; =0x00000262
	add r6, r0, #0
	ldrb r0, [r6, r2]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	cmp r0, #0x64
	bhs _0208DAAC
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0xa
	add r1, #0xe
	add r2, r2, #6
	ldr r0, [r6, r0]
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	sub r1, r1, r0
	sub r0, r2, r0
	b _0208DAB0
_0208DAAC:
	mov r1, #0
	add r0, r1, #0
_0208DAB0:
	mov r2, #0x38
	bl sub_0208C0BC
	add r4, r0, #0
	mov r5, #0
	mov r7, #0x17
_0208DABC:
	cmp r4, #8
	blo _0208DAC4
	mov r2, #0xb4
	b _0208DACC
_0208DAC4:
	add r0, r4, #0
	add r0, #0xac
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0208DACC:
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r3, r5, #0
	str r0, [sp, #8]
	mov r0, #0x11
	add r3, #0x17
	str r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [r6, #0]
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02019CB8
	cmp r4, #8
	bhs _0208DAF0
	mov r4, #0
	b _0208DAF6
_0208DAF0:
	sub r4, #8
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_0208DAF6:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #7
	blo _0208DABC
	ldr r0, [r6, #0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208DB0C: .word 0x00000262
	thumb_func_end sub_0208DA84

	thumb_func_start sub_0208DB10
sub_0208DB10: ; 0x0208DB10
	push {r4, lr}
	add r4, r0, #0
	bl sub_0208DBC4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0208DBBC
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	strb r0, [r1, #0x14]
	add r0, r4, #0
	bl sub_0208D1A4
	add r0, r4, #0
	bl sub_0208D618
	add r0, r4, #0
	bl sub_0208FEA4
	add r0, r4, #0
	bl sub_0208FF3C
	add r0, r4, #0
	bl sub_0208FFE0
	ldr r0, _0208DBC0 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0208DB56
	add r0, r4, #0
	bl sub_0208DA84
	b _0208DB6C
_0208DB56:
	cmp r0, #2
	bne _0208DB62
	add r0, r4, #0
	bl sub_0208D9D0
	b _0208DB6C
_0208DB62:
	cmp r0, #4
	bne _0208DB6C
	add r0, r4, #0
	bl sub_02091D50
_0208DB6C:
	add r0, r4, #0
	bl sub_02092098
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	add r0, r4, #0
	bl sub_0208ECF4
	add r0, r4, #0
	bl sub_0208EDC4
	add r0, r4, #0
	bl sub_0208F16C
	add r0, r4, #0
	bl sub_0208EF58
	add r0, r4, #0
	bl sub_0208FA04
	add r0, r4, #0
	bl sub_0208F71C
	add r0, r4, #0
	bl sub_0208EE3C
	add r0, r4, #0
	bl sub_0208EE9C
	add r0, r4, #0
	bl sub_0208F34C
	add r0, r4, #0
	bl sub_0208F574
	add r0, r4, #0
	bl sub_020904C4
_0208DBBC:
	pop {r4, pc}
	nop
_0208DBC0: .word 0x000006A4
	thumb_func_end sub_0208DB10

	thumb_func_start sub_0208DBC4
sub_0208DBC4: ; 0x0208DBC4
	push {r3, lr}
	mov r2, #0x93
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	ldrb r2, [r2, #0x11]
	cmp r2, #0
	beq _0208DBDC
	cmp r2, #1
	beq _0208DBE2
	cmp r2, #2
	beq _0208DBE8
	b _0208DBEE
_0208DBDC:
	bl sub_0208DC1C
	pop {r3, pc}
_0208DBE2:
	bl sub_0208DC84
	pop {r3, pc}
_0208DBE8:
	bl sub_0208DCE0
	pop {r3, pc}
_0208DBEE:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end sub_0208DBC4

	thumb_func_start sub_0208DBF4
sub_0208DBF4: ; 0x0208DBF4
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldrb r1, [r1, #0x12]
	cmp r1, #3
	bne _0208DC04
	mov r0, #0
	bx lr
_0208DC04:
	ldr r1, _0208DC18 ; =0x000006A4
	ldrsb r0, [r0, r1]
	cmp r0, #1
	beq _0208DC14
	cmp r0, #7
	beq _0208DC14
	mov r0, #0
	bx lr
_0208DC14:
	mov r0, #1
	bx lr
	; .align 2, 0
_0208DC18: .word 0x000006A4
	thumb_func_end sub_0208DBF4

	thumb_func_start sub_0208DC1C
sub_0208DC1C: ; 0x0208DC1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	str r1, [sp]
	ldr r1, [r5, r0]
	mov r0, #0x14
	ldrsb r4, [r1, r0]
_0208DC2C:
	ldr r0, [sp]
	add r0, r4, r0
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	bmi _0208DC42
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x13]
	cmp r4, r0
	blt _0208DC48
_0208DC42:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0208DC48:
	bl sub_02076AF0
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r7, r4, #0
	ldr r6, [r1, #0]
	mul r7, r0
	add r0, r6, r7
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0208DC2C
	add r0, r6, r7
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0208DC7E
	add r0, r5, #0
	bl sub_0208DBF4
	cmp r0, #1
	bne _0208DC2C
_0208DC7E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208DC1C

	thumb_func_start sub_0208DC84
sub_0208DC84: ; 0x0208DC84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	add r7, r1, #0
	ldr r1, [r5, r0]
	mov r0, #0x14
	ldrsb r4, [r1, r0]
_0208DC94:
	add r0, r4, r7
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	bmi _0208DCA8
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrb r0, [r1, #0x13]
	cmp r4, r0
	blt _0208DCAE
_0208DCA8:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0208DCAE:
	ldr r0, [r1, #0]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0208DC94
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0208DCDC
	add r0, r5, #0
	bl sub_0208DBF4
	cmp r0, #1
	bne _0208DC94
_0208DCDC:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208DC84

	thumb_func_start sub_0208DCE0
sub_0208DCE0: ; 0x0208DCE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	str r1, [sp]
	ldr r1, [r5, r0]
	mov r0, #0x14
	ldrsb r4, [r1, r0]
_0208DCF0:
	ldr r0, [sp]
	add r0, r4, r0
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	bmi _0208DD06
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x13]
	cmp r4, r0
	blt _0208DD0C
_0208DD06:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0208DD0C:
	bl sub_02076AF4
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r7, r4, #0
	ldr r6, [r1, #0]
	mul r7, r0
	add r0, r6, r7
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _0208DCF0
	add r0, r6, r7
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _0208DD42
	add r0, r5, #0
	bl sub_0208DBF4
	cmp r0, #1
	bne _0208DCF0
_0208DD42:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208DCE0

	thumb_func_start sub_0208DD48
sub_0208DD48: ; 0x0208DD48
	push {r4, lr}
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _0208DD60
	cmp r0, #1
	beq _0208DD6E
	cmp r0, #2
	beq _0208DD78
	b _0208DD86
_0208DD60:
	bl sub_02076AF0
	ldrb r1, [r4, #0x14]
	ldr r2, [r4, #0]
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_0208DD6E:
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0FC
	pop {r4, pc}
_0208DD78:
	bl sub_02076AF4
	ldrb r1, [r4, #0x14]
	ldr r2, [r4, #0]
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_0208DD86:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208DD48

	thumb_func_start sub_0208DD8C
sub_0208DD8C: ; 0x0208DD8C
	push {r4, lr}
	ldr r1, _0208DE94 ; =0x000006A6
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0208DDA2
	cmp r1, #1
	beq _0208DE02
	cmp r1, #2
	beq _0208DE2E
	b _0208DE90
_0208DDA2:
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #0
	mov r3, #0x88
	bl sub_0201C63C
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	add r0, r4, #0
	mov r1, #0
	bl sub_0208EE10
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201AD10
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	ldr r1, _0208DE98 ; =0x000006A5
	mov r0, #0xf
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
	mov r2, #1
	add r0, r1, #1
	strb r2, [r4, r0]
	b _0208DE90
_0208DE02:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192EC
	cmp r0, #0x40
	ldr r0, [r4, #0]
	bgt _0208DE22
	mov r2, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, _0208DE94 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208DE90
_0208DE22:
	mov r1, #2
	add r2, r1, #0
	mov r3, #0x40
	bl sub_0201C63C
	b _0208DE90
_0208DE2E:
	bl sub_02091420
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #1
	beq _0208DE52
	add r0, r4, #0
	mov r1, #0x98
	bl sub_02090064
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
_0208DE52:
	add r0, r4, #0
	bl sub_0208DFF4
	ldr r0, _0208DE9C ; =0x00000448
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	add r0, r4, #0
	bl sub_0208F7A4
	mov r0, #0x26
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r1, r0
	beq _0208DE80
	ldr r0, _0208DEA0 ; =0x0000044C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
_0208DE80:
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #1
	pop {r4, pc}
_0208DE90:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0208DE94: .word 0x000006A6
_0208DE98: .word 0x000006A5
_0208DE9C: .word 0x00000448
_0208DEA0: .word 0x0000044C
	thumb_func_end sub_0208DD8C

	thumb_func_start sub_0208DEA4
sub_0208DEA4: ; 0x0208DEA4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208DF80 ; =0x000006A6
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0208DEBA
	cmp r0, #1
	beq _0208DF14
	cmp r0, #2
	beq _0208DF40
	b _0208DF7C
_0208DEBA:
	ldr r0, _0208DF84 ; =0x00000448
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	ldr r0, _0208DF88 ; =0x0000044C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	ldr r0, _0208DF8C ; =0x00000464
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	ldr r0, _0208DF90 ; =0x00000468
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	add r0, r4, #0
	bl sub_0209145C
	add r0, r4, #0
	bl sub_020913D8
	ldr r0, _0208DF80 ; =0x000006A6
	mov r1, #1
	strb r1, [r4, r0]
	b _0208DF7C
_0208DF14:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192EC
	cmp r0, #0x80
	ldr r0, [r4, #0]
	blt _0208DF34
	mov r1, #2
	mov r2, #0
	mov r3, #0x88
	bl sub_0201C63C
	ldr r0, _0208DF80 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208DF7C
_0208DF34:
	mov r1, #2
	mov r2, #1
	mov r3, #0x40
	bl sub_0201C63C
	b _0208DF7C
_0208DF40:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201A9A4
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #0x81
	bl sub_02090064
	add r0, r4, #0
	mov r1, #1
	bl sub_0208EE10
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #1
	pop {r4, pc}
_0208DF7C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0208DF80: .word 0x000006A6
_0208DF84: .word 0x00000448
_0208DF88: .word 0x0000044C
_0208DF8C: .word 0x00000464
_0208DF90: .word 0x00000468
	thumb_func_end sub_0208DEA4

	thumb_func_start sub_0208DF94
sub_0208DF94: ; 0x0208DF94
	push {r4, r5, r6, r7}
	add r5, r0, #0
	ldr r0, _0208DFF0 ; =0x000006A5
	mov r6, #0xa1
	ldrb r0, [r5, r0]
	mov r2, #4
	lsl r6, r6, #2
	lsl r0, r0, #0x1c
	lsr r4, r0, #0x1c
	lsl r0, r4, #0x18
	asr r3, r0, #0x18
	mov r0, #0
_0208DFAC:
	add r3, r3, r1
	lsl r3, r3, #0x18
	asr r3, r3, #0x18
	bpl _0208DFB8
	add r3, r2, #0
	b _0208DFBE
_0208DFB8:
	cmp r3, #5
	bne _0208DFBE
	add r3, r0, #0
_0208DFBE:
	lsl r7, r3, #1
	add r7, r5, r7
	ldrh r7, [r7, r6]
	cmp r7, #0
	bne _0208DFCC
	cmp r3, #4
	bne _0208DFAC
_0208DFCC:
	cmp r3, r4
	beq _0208DFEA
	ldr r2, _0208DFF0 ; =0x000006A5
	mov r1, #0xf
	ldrb r0, [r5, r2]
	bic r0, r1
	lsl r1, r3, #0x18
	lsr r3, r1, #0x18
	mov r1, #0xf
	and r1, r3
	orr r0, r1
	strb r0, [r5, r2]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0208DFEA:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0208DFF0: .word 0x000006A5
	thumb_func_end sub_0208DF94

	thumb_func_start sub_0208DFF4
sub_0208DFF4: ; 0x0208DFF4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0208F2E8
	ldr r2, _0208E078 ; =0x000006A5
	ldrb r0, [r4, r2]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	cmp r1, #4
	bne _0208E04C
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrh r1, [r0, #0x18]
	cmp r1, #0
	beq _0208E02C
	sub r0, r2, #1
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208E024
	add r0, r4, #0
	bl sub_0208E07C
	pop {r4, pc}
_0208E024:
	add r0, r4, #0
	bl sub_0208E0B8
	pop {r4, pc}
_0208E02C:
	sub r0, r2, #1
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208E040
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl sub_0208E07C
	pop {r4, pc}
_0208E040:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl sub_0208E0B8
	pop {r4, pc}
_0208E04C:
	sub r0, r2, #1
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208E066
	lsl r1, r1, #1
	add r2, r4, r1
	mov r1, #0xa1
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	add r0, r4, #0
	bl sub_0208E07C
	pop {r4, pc}
_0208E066:
	lsl r1, r1, #1
	add r2, r4, r1
	mov r1, #0xa1
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	add r0, r4, #0
	bl sub_0208E0B8
	pop {r4, pc}
	; .align 2, 0
_0208E078: .word 0x000006A5
	thumb_func_end sub_0208DFF4

	thumb_func_start sub_0208E07C
sub_0208E07C: ; 0x0208E07C
	push {r3, r4, r5, lr}
	mov r2, #0
	add r4, r1, #0
	mvn r2, r2
	add r5, r0, #0
	cmp r4, r2
	bne _0208E09A
	bl sub_020913D8
	ldr r0, _0208E0B4 ; =0x00000464
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D3EC
	pop {r3, r4, r5, pc}
_0208E09A:
	bl sub_020912A4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0208F294
	ldr r0, _0208E0B4 ; =0x00000464
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D3EC
	pop {r3, r4, r5, pc}
	nop
_0208E0B4: .word 0x00000464
	thumb_func_end sub_0208E07C

	thumb_func_start sub_0208E0B8
sub_0208E0B8: ; 0x0208E0B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208E498
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0208E0D2
	add r0, r5, #0
	bl sub_020915F4
	pop {r3, r4, r5, pc}
_0208E0D2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02091570
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208E0B8

	thumb_func_start sub_0208E0DC
sub_0208E0DC: ; 0x0208E0DC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0208DD48
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r1, [r1, #0x11]
	cmp r1, #2
	ldr r1, _0208E18C ; =0x000006A5
	bne _0208E102
	ldrb r2, [r4, r1]
	lsl r1, r2, #0x1c
	lsl r2, r2, #0x18
	lsr r1, r1, #0x1c
	lsr r2, r2, #0x1c
	bl sub_0207734C
	b _0208E110
_0208E102:
	ldrb r2, [r4, r1]
	lsl r1, r2, #0x1c
	lsl r2, r2, #0x18
	lsr r1, r1, #0x1c
	lsr r2, r2, #0x1c
	bl sub_02077344
_0208E110:
	ldr r0, _0208E18C ; =0x000006A5
	mov r1, #0xa1
	ldrb r6, [r4, r0]
	lsl r1, r1, #2
	add r5, r4, r1
	lsl r2, r6, #0x1c
	lsl r6, r6, #0x18
	lsr r6, r6, #0x1c
	lsl r6, r6, #1
	lsr r3, r2, #0x1b
	add r6, r4, r6
	ldrh r2, [r5, r3]
	ldrh r6, [r6, r1]
	strh r6, [r5, r3]
	ldrb r3, [r4, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	lsl r3, r3, #1
	add r3, r4, r3
	strh r2, [r3, r1]
	add r2, r1, #0
	add r2, #8
	ldrb r6, [r4, r0]
	add r5, r4, r2
	lsl r2, r6, #0x1c
	lsl r6, r6, #0x18
	lsr r6, r6, #0x1c
	add r7, r4, r6
	add r6, r1, #0
	lsr r3, r2, #0x1c
	add r6, #8
	ldrb r2, [r5, r3]
	ldrb r6, [r7, r6]
	strb r6, [r5, r3]
	ldrb r3, [r4, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	add r5, r4, r3
	add r3, r1, #0
	add r3, #8
	strb r2, [r5, r3]
	add r2, r1, #0
	add r2, #0xc
	ldrb r6, [r4, r0]
	add r5, r4, r2
	lsl r2, r6, #0x1c
	lsl r6, r6, #0x18
	lsr r6, r6, #0x1c
	add r7, r4, r6
	add r6, r1, #0
	lsr r3, r2, #0x1c
	add r6, #0xc
	ldrb r2, [r5, r3]
	ldrb r6, [r7, r6]
	add r1, #0xc
	strb r6, [r5, r3]
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	add r0, r4, r0
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208E18C: .word 0x000006A5
	thumb_func_end sub_0208E0DC

	thumb_func_start sub_0208E190
sub_0208E190: ; 0x0208E190
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201AD10
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r2, #0
	ldr r0, [r4, #0]
	mov r1, #2
	add r3, r2, #0
	bl sub_0201C63C
	add r0, r4, #0
	bl sub_02091420
	add r0, r4, #0
	bl sub_0208DFF4
	ldr r0, _0208E200 ; =0x00000448
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	add r0, r4, #0
	bl sub_0208F7A4
	mov r0, #0x26
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r1, r0
	beq _0208E1F0
	ldr r0, _0208E204 ; =0x0000044C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
_0208E1F0:
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	pop {r4, pc}
	nop
_0208E200: .word 0x00000448
_0208E204: .word 0x0000044C
	thumb_func_end sub_0208E190

	thumb_func_start sub_0208E208
sub_0208E208: ; 0x0208E208
	push {r4, lr}
	ldr r1, _0208E300 ; =0x000006A6
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0208E21E
	cmp r1, #1
	beq _0208E28A
	cmp r1, #2
	beq _0208E2B6
	b _0208E2FC
_0208E21E:
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #0
	mov r3, #0x88
	bl sub_0201C63C
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0]
	mov r1, #2
	add r3, #0xfd
	bl sub_0201C63C
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl sub_0208E498
	add r0, r4, #0
	mov r1, #0
	bl sub_0208EE10
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201AD10
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	ldr r1, _0208E304 ; =0x000006A5
	mov r0, #0xf
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
	mov r2, #1
	add r0, r1, #1
	strb r2, [r4, r0]
	b _0208E2FC
_0208E28A:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192EC
	cmp r0, #0x40
	ldr r0, [r4, #0]
	bgt _0208E2AA
	mov r2, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, _0208E300 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208E2FC
_0208E2AA:
	mov r1, #2
	add r2, r1, #0
	mov r3, #0x40
	bl sub_0201C63C
	b _0208E2FC
_0208E2B6:
	bl sub_02091420
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #1
	beq _0208E2DA
	add r0, r4, #0
	mov r1, #0x98
	bl sub_02090064
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
_0208E2DA:
	add r0, r4, #0
	bl sub_0208DFF4
	add r0, r4, #0
	bl sub_0208F7A4
	add r0, r4, #0
	bl sub_0208F844
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #1
	pop {r4, pc}
_0208E2FC:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0208E300: .word 0x000006A6
_0208E304: .word 0x000006A5
	thumb_func_end sub_0208E208

	thumb_func_start sub_0208E308
sub_0208E308: ; 0x0208E308
	push {r4, lr}
	ldr r1, _0208E3D4 ; =0x000006A6
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0208E31E
	cmp r1, #1
	beq _0208E368
	cmp r1, #2
	beq _0208E394
	b _0208E3D0
_0208E31E:
	bl sub_0208F964
	ldr r0, _0208E3D8 ; =0x00000468
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl sub_0208E498
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	add r0, r4, #0
	bl sub_0209145C
	add r0, r4, #0
	bl sub_020915F4
	ldr r0, _0208E3D4 ; =0x000006A6
	mov r1, #1
	strb r1, [r4, r0]
	b _0208E3D0
_0208E368:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192EC
	cmp r0, #0x80
	ldr r0, [r4, #0]
	blt _0208E388
	mov r1, #2
	mov r2, #0
	mov r3, #0x88
	bl sub_0201C63C
	ldr r0, _0208E3D4 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208E3D0
_0208E388:
	mov r1, #2
	mov r2, #1
	mov r3, #0x40
	bl sub_0201C63C
	b _0208E3D0
_0208E394:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201A9A4
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #0x9e
	bl sub_02090064
	add r0, r4, #0
	mov r1, #1
	bl sub_0208EE10
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #1
	pop {r4, pc}
_0208E3D0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0208E3D4: .word 0x000006A6
_0208E3D8: .word 0x00000468
	thumb_func_end sub_0208E308

	thumb_func_start sub_0208E3DC
sub_0208E3DC: ; 0x0208E3DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x2f
	str r0, [sp]
	mov r0, #1
	lsl r6, r2, #1
	add r4, r1, #0
	str r0, [sp, #4]
	add r7, r6, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	lsl r3, r7, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	add r2, r4, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #0x2f
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r6, r6, #3
	str r0, [sp, #8]
	mov r0, #0x10
	add r2, r4, #1
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #0x30
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #0x10
	add r2, #0x20
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r7, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #0x30
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	add r4, #0x21
	str r0, [sp, #0xc]
	lsl r2, r4, #0x10
	lsl r3, r6, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208E3DC

	thumb_func_start sub_0208E46C
sub_0208E46C: ; 0x0208E46C
	push {r4, r5, r6, lr}
	ldr r6, _0208E494 ; =0x0000012E
	add r5, r0, #0
	mov r4, #0
_0208E474:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_0208E3DC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _0208E474
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0201C3C0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208E494: .word 0x0000012E
	thumb_func_end sub_0208E46C

	thumb_func_start sub_0208E498
sub_0208E498: ; 0x0208E498
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208E46C
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0208E4E0
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020790C4
	bl sub_02095734
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	mov r4, #0
	cmp r6, #0
	ble _0208E4E0
	mov r7, #0x4b
	lsl r7, r7, #2
_0208E4CA:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl sub_0208E3DC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blt _0208E4CA
_0208E4E0:
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208E498

	thumb_func_start sub_0208E4EC
sub_0208E4EC: ; 0x0208E4EC
	push {r3, lr}
	ldr r1, _0208E504 ; =0x000006A4
	ldrsb r1, [r0, r1]
	cmp r1, #3
	bne _0208E4FC
	bl sub_020913D8
	pop {r3, pc}
_0208E4FC:
	bl sub_020915F4
	pop {r3, pc}
	nop
_0208E504: .word 0x000006A4
	thumb_func_end sub_0208E4EC

	thumb_func_start sub_0208E508
sub_0208E508: ; 0x0208E508
	push {r4, lr}
	add r4, r0, #0
	bl sub_02091420
	add r0, r4, #0
	bl sub_0208DFF4
	add r0, r4, #0
	bl sub_0208F7A4
	ldr r0, _0208E570 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _0208E55A
	add r0, r4, #0
	bl sub_0208F964
	ldr r0, _0208E574 ; =0x00000448
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	mov r0, #0x26
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r1, r0
	beq _0208E54C
	ldr r0, _0208E578 ; =0x0000044C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
_0208E54C:
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	pop {r4, pc}
_0208E55A:
	add r0, r4, #0
	bl sub_0208F844
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0]
	mov r1, #2
	add r3, #0xfd
	bl sub_0201C63C
	pop {r4, pc}
	; .align 2, 0
_0208E570: .word 0x000006A4
_0208E574: .word 0x00000448
_0208E578: .word 0x0000044C
	thumb_func_end sub_0208E508

	thumb_func_start sub_0208E57C
sub_0208E57C: ; 0x0208E57C
	push {r4, lr}
	ldr r1, _0208E68C ; =0x000006A6
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0208E592
	cmp r1, #1
	beq _0208E5FE
	cmp r1, #2
	beq _0208E62A
	b _0208E686
_0208E592:
	mov r1, #2
	add r3, r1, #0
	ldr r0, [r4, #0]
	mov r2, #0
	add r3, #0xfe
	bl sub_0201C63C
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	add r0, r4, #0
	mov r1, #0
	bl sub_0208EE10
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201AD10
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	ldr r1, _0208E690 ; =0x000006AF
	mov r2, #0
	strb r2, [r4, r1]
	add r0, r1, #1
	strb r2, [r4, r0]
	mov r0, #1
	sub r1, #9
	strb r0, [r4, r1]
	b _0208E686
_0208E5FE:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192F8
	cmp r0, #0x30
	ldr r0, [r4, #0]
	blt _0208E61E
	mov r1, #2
	mov r2, #3
	mov r3, #0x38
	bl sub_0201C63C
	ldr r0, _0208E68C ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208E686
_0208E61E:
	mov r1, #2
	mov r2, #4
	mov r3, #0x10
	bl sub_0201C63C
	b _0208E686
_0208E62A:
	mov r1, #0xb5
	bl sub_02090064
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	ldr r0, _0208E694 ; =0x00000528
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208E698 ; =0x00000534
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208E69C ; =0x00000518
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208E6A0 ; =0x0000051C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r0, #0x52
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208E6A4 ; =0x00000524
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #0
	bl sub_0208E794
	mov r0, #1
	pop {r4, pc}
_0208E686:
	mov r0, #0
	pop {r4, pc}
	nop
_0208E68C: .word 0x000006A6
_0208E690: .word 0x000006AF
_0208E694: .word 0x00000528
_0208E698: .word 0x00000534
_0208E69C: .word 0x00000518
_0208E6A0: .word 0x0000051C
_0208E6A4: .word 0x00000524
	thumb_func_end sub_0208E57C

	thumb_func_start sub_0208E6A8
sub_0208E6A8: ; 0x0208E6A8
	push {r4, lr}
	ldr r1, _0208E790 ; =0x000006A6
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _0208E6BE
	cmp r0, #1
	beq _0208E70E
	cmp r0, #2
	beq _0208E73A
	b _0208E78A
_0208E6BE:
	add r0, r1, #0
	mov r2, #0
	add r0, #9
	strb r2, [r4, r0]
	add r1, #0xa
	mov r0, #0x91
	strb r2, [r4, r1]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201AD10
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	add r0, r4, #0
	mov r1, #0
	bl sub_0208F6DC
	add r0, r4, #0
	bl sub_0208FA04
	ldr r0, _0208E790 ; =0x000006A6
	mov r1, #1
	strb r1, [r4, r0]
	b _0208E78A
_0208E70E:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192F8
	cmp r0, #8
	ldr r0, [r4, #0]
	bgt _0208E72E
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	ldr r0, _0208E790 ; =0x000006A6
	mov r1, #2
	strb r1, [r4, r0]
	b _0208E78A
_0208E72E:
	mov r1, #2
	mov r2, #5
	mov r3, #0x10
	bl sub_0201C63C
	b _0208E78A
_0208E73A:
	add r0, r4, #0
	add r0, #0x64
	bl sub_0201A9A4
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #0xb4
	bl sub_02090064
	add r0, r4, #0
	mov r1, #1
	bl sub_0208EE10
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #1
	pop {r4, pc}
_0208E78A:
	mov r0, #0
	pop {r4, pc}
	nop
_0208E790: .word 0x000006A6
	thumb_func_end sub_0208E6A8

	thumb_func_start sub_0208E794
sub_0208E794: ; 0x0208E794
	push {r4, r5, r6, lr}
	ldr r2, _0208E8F4 ; =0x000006AF
	add r5, r0, #0
	add r3, r2, #1
	ldrb r0, [r5, r2]
	ldrb r4, [r5, r3]
	cmp r1, #1
	bne _0208E7C0
	mov r1, #3
	and r1, r0
	cmp r1, #3
	beq _0208E7CE
	lsl r1, r4, #2
	add r1, r0, r1
	add r3, r1, #1
	add r1, r2, #2
	ldrb r1, [r5, r1]
	cmp r3, r1
	bge _0208E862
	add r1, r0, #1
	strb r1, [r5, r2]
	b _0208E862
_0208E7C0:
	mov r3, #0
	mvn r3, r3
	cmp r1, r3
	bne _0208E7D6
	mov r1, #3
	tst r1, r0
	bne _0208E7D0
_0208E7CE:
	b _0208E8F2
_0208E7D0:
	sub r1, r0, #1
	strb r1, [r5, r2]
	b _0208E862
_0208E7D6:
	cmp r1, #4
	bne _0208E844
	cmp r0, #4
	bhs _0208E80A
	add r1, r2, #2
	ldrb r3, [r5, r1]
	lsl r1, r4, #2
	add r1, r0, r1
	add r1, r1, #4
	cmp r1, r3
	blt _0208E804
	cmp r3, #4
	bls _0208E862
	lsr r1, r3, #0x1f
	lsl r6, r3, #0x1e
	sub r6, r6, r1
	mov r3, #0x1e
	ror r6, r3
	add r1, r1, r6
	beq _0208E862
	add r1, r1, #3
	strb r1, [r5, r2]
	b _0208E862
_0208E804:
	add r1, r0, #4
	strb r1, [r5, r2]
	b _0208E862
_0208E80A:
	add r1, r2, #2
	ldrb r1, [r5, r1]
	lsl r3, r4, #2
	add r3, #8
	cmp r3, r1
	bge _0208E862
	add r1, r2, #1
	ldrb r1, [r5, r1]
	add r6, r2, #1
	add r3, r1, #1
	add r1, r2, #1
	strb r3, [r5, r1]
	add r1, r2, #2
	ldrb r6, [r5, r6]
	ldrb r3, [r5, r1]
	ldrb r1, [r5, r2]
	lsl r6, r6, #2
	add r1, r1, r6
	cmp r1, r3
	blt _0208E862
	lsr r1, r3, #0x1f
	lsl r6, r3, #0x1e
	sub r6, r6, r1
	mov r3, #0x1e
	ror r6, r3
	add r1, r1, r6
	add r1, r1, #3
	strb r1, [r5, r2]
	b _0208E862
_0208E844:
	sub r3, r3, #3
	cmp r1, r3
	bne _0208E862
	cmp r0, #4
	blo _0208E854
	sub r1, r0, #4
	strb r1, [r5, r2]
	b _0208E862
_0208E854:
	cmp r4, #0
	beq _0208E862
	add r1, r2, #1
	ldrb r1, [r5, r1]
	sub r3, r1, #1
	add r1, r2, #1
	strb r3, [r5, r1]
_0208E862:
	ldr r1, _0208E8F4 ; =0x000006AF
	ldrb r2, [r5, r1]
	cmp r0, r2
	bne _0208E872
	add r0, r1, #1
	ldrb r0, [r5, r0]
	cmp r4, r0
	beq _0208E878
_0208E872:
	ldr r0, _0208E8F8 ; =0x000005DC
	bl sub_02005748
_0208E878:
	ldr r1, _0208E8F4 ; =0x000006AF
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_0208E904
	ldr r1, _0208E8FC ; =0x000006B2
	strb r0, [r5, r1]
	add r0, r5, #0
	bl sub_0208FB00
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r4, r0
	beq _0208E89C
	add r0, r5, #0
	bl sub_0208FAA4
_0208E89C:
	add r0, r5, #0
	bl sub_020910E4
	add r0, r5, #0
	bl sub_02090F84
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r0, #0
	ldr r0, _0208E900 ; =0x0000052C
	beq _0208E8BE
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	b _0208E8C6
_0208E8BE:
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
_0208E8C6:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	lsl r1, r1, #2
	add r1, #8
	cmp r1, r0
	bge _0208E8E6
	mov r0, #0x53
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	pop {r4, r5, r6, pc}
_0208E8E6:
	mov r0, #0x53
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
_0208E8F2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208E8F4: .word 0x000006AF
_0208E8F8: .word 0x000005DC
_0208E8FC: .word 0x000006B2
_0208E900: .word 0x0000052C
	thumb_func_end sub_0208E794

	thumb_func_start sub_0208E904
sub_0208E904: ; 0x0208E904
	push {r4, r5, r6, r7}
	mov r2, #0x6b
	lsl r2, r2, #4
	ldrb r2, [r0, r2]
	mov r6, #0
	add r4, r6, #0
	lsl r2, r2, #2
	add r1, r1, r2
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r1, #0xa9
	mov r2, #1
	lsl r1, r1, #2
_0208E91E:
	mov r3, #0x1f
	add r7, r4, #0
	and r7, r3
	add r3, r2, #0
	lsl r3, r7
	lsr r7, r4, #5
	lsl r7, r7, #2
	add r7, r0, r7
	ldr r7, [r7, r1]
	tst r3, r7
	beq _0208E946
	cmp r5, r6
	bne _0208E940
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, r7}
	bx lr
_0208E940:
	add r3, r6, #1
	lsl r3, r3, #0x18
	lsr r6, r3, #0x18
_0208E946:
	add r3, r4, #1
	lsl r3, r3, #0x10
	lsr r4, r3, #0x10
	cmp r4, #0x50
	blo _0208E91E
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208E904

	thumb_func_start sub_0208E958
sub_0208E958: ; 0x0208E958
	push {r4, lr}
	sub sp, #8
	ldr r1, _0208E9B8 ; =0x0000029A
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0xff
	bne _0208E9AA
	mov r0, #0
	sub r1, #0xda
	mov r2, #0x13
	bl sub_02002E98
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _0208E9BC ; =0x000003E2
	mov r1, #1
	mov r3, #0xd
	bl sub_0200DD0C
	add r0, r4, #0
	mov r1, #0xff
	bl sub_02091610
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	strb r1, [r0, #0x17]
	add sp, #8
	mov r0, #0x11
	pop {r4, pc}
_0208E9AA:
	sub r1, #0x4e
	ldr r0, [r4, r1]
	mov r2, #0
	strb r2, [r0, #0x17]
	mov r0, #0x12
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0208E9B8: .word 0x0000029A
_0208E9BC: .word 0x000003E2
	thumb_func_end sub_0208E958

	thumb_func_start sub_0208E9C0
sub_0208E9C0: ; 0x0208E9C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02025EF0
	str r0, [r5, #8]
	add r0, r4, #0
	bl sub_02025F20
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_02025F30
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208E9C0

	thumb_func_start sub_0208E9E0
sub_0208E9E0: ; 0x0208E9E0
	mov r0, #0x40
	bx lr
	thumb_func_end sub_0208E9E0

	thumb_func_start sub_0208E9E4
sub_0208E9E4: ; 0x0208E9E4
	mov r0, #0x41
	bx lr
	thumb_func_end sub_0208E9E4

	thumb_func_start sub_0208E9E8
sub_0208E9E8: ; 0x0208E9E8
	mov r0, #0x3f
	bx lr
	thumb_func_end sub_0208E9E8

	thumb_func_start sub_0208E9EC
sub_0208E9EC: ; 0x0208E9EC
	mov r0, #0x3e
	bx lr
	thumb_func_end sub_0208E9EC

	thumb_func_start sub_0208E9F0
sub_0208E9F0: ; 0x0208E9F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0208EA10
	mov r0, #6
	pop {r3, r4, r5, pc}
_0208EA10:
	mov r0, #0x88
	tst r0, r4
	beq _0208EA1A
	mov r0, #4
	pop {r3, r4, r5, pc}
_0208EA1A:
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	beq _0208EA26
	mov r0, #3
	pop {r3, r4, r5, pc}
_0208EA26:
	mov r1, #0x10
	tst r1, r4
	beq _0208EA30
	mov r0, #5
	pop {r3, r4, r5, pc}
_0208EA30:
	mov r1, #0x20
	tst r1, r4
	beq _0208EA3A
	mov r0, #2
	pop {r3, r4, r5, pc}
_0208EA3A:
	mov r1, #0x40
	tst r1, r4
	beq _0208EA42
	mov r0, #1
_0208EA42:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208E9F0

	thumb_func_start sub_0208EA44
sub_0208EA44: ; 0x0208EA44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x20
	mov r1, #0x13
	bl sub_0201DBEC
	mov r0, #0x13
	bl sub_0200C6E4
	ldr r1, _0208EAE0 ; =0x00000414
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_0200C704
	ldr r7, _0208EAE4 ; =0x00000418
	add r2, sp, #0x30
	ldr r3, _0208EAE8 ; =0x020F4160
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _0208EAEC ; =0x020F4130
	stmia r2!, {r0, r1}
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [r3, #0]
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl sub_0200C73C
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x4d
	bl sub_0200C7C0
	ldr r5, _0208EAF0 ; =0x020F4144
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	sub r1, r7, #4
	str r0, [r3, #0]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8F0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208EAE0: .word 0x00000414
_0208EAE4: .word 0x00000418
_0208EAE8: .word 0x020F4160
_0208EAEC: .word 0x020F4130
_0208EAF0: .word 0x020F4144
	thumb_func_end sub_0208EA44

	thumb_func_start sub_0208EAF4
sub_0208EAF4: ; 0x0208EAF4
	push {r4, lr}
	ldr r1, _0208EB10 ; =0x00000414
	add r4, r0, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8B0
	ldr r0, _0208EB10 ; =0x00000414
	ldr r0, [r4, r0]
	bl sub_0200C8D4
	pop {r4, pc}
	nop
_0208EB10: .word 0x00000414
	thumb_func_end sub_0208EAF4

	thumb_func_start sub_0208EB14
sub_0208EB14: ; 0x0208EB14
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x47
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, _0208EB5C ; =0x00000474
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	mov r0, #0x13
	lsl r0, r0, #6
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, _0208EB60 ; =0x0000052C
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	mov r0, #0x53
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	pop {r4, pc}
	; .align 2, 0
_0208EB5C: .word 0x00000474
_0208EB60: .word 0x0000052C
	thumb_func_end sub_0208EB14

	thumb_func_start sub_0208EB64
sub_0208EB64: ; 0x0208EB64
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0208EC6C ; =0x020F41A8
	ldr r7, _0208EC70 ; =0x0000041C
	add r5, r0, #0
	mov r4, #0
_0208EB6E:
	ldr r0, _0208EC74 ; =0x00000414
	ldr r1, _0208EC78 ; =0x00000418
	mov r2, #0x28
	mul r2, r4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, r2
	bl sub_0200CA08
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, r7]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x4d
	blo _0208EB6E
	add r0, r5, #0
	bl sub_0208EF0C
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208EC7C ; =0x00000444
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208EC80 ; =0x000004C4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208EC84 ; =0x000004C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208EC88 ; =0x000004CC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208EC8C ; =0x000004D4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208EC90 ; =0x000004D8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208EC94 ; =0x000004DC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208EC98 ; =0x000004E4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208EC9C ; =0x000004E8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208ECA0 ; =0x000004EC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208ECA4 ; =0x00000538
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208ECA8 ; =0x0000053C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #0x15
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208ECAC ; =0x00000544
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208ECB0 ; =0x00000548
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208ECB4 ; =0x0000054C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208EC6C: .word 0x020F41A8
_0208EC70: .word 0x0000041C
_0208EC74: .word 0x00000414
_0208EC78: .word 0x00000418
_0208EC7C: .word 0x00000444
_0208EC80: .word 0x000004C4
_0208EC84: .word 0x000004C8
_0208EC88: .word 0x000004CC
_0208EC8C: .word 0x000004D4
_0208EC90: .word 0x000004D8
_0208EC94: .word 0x000004DC
_0208EC98: .word 0x000004E4
_0208EC9C: .word 0x000004E8
_0208ECA0: .word 0x000004EC
_0208ECA4: .word 0x00000538
_0208ECA8: .word 0x0000053C
_0208ECAC: .word 0x00000544
_0208ECB0: .word 0x00000548
_0208ECB4: .word 0x0000054C
	thumb_func_end sub_0208EB64

	thumb_func_start sub_0208ECB8
sub_0208ECB8: ; 0x0208ECB8
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_0208ECC0:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0208D790
	cmp r0, #0
	beq _0208ECD2
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0208ECD2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _0208ECC0
	sub r0, r5, #1
	lsl r1, r0, #4
	add r1, #0x18
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #0xbc
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0208ECB8

	thumb_func_start sub_0208ECF4
sub_0208ECF4: ; 0x0208ECF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	bl sub_0208ECB8
	str r0, [sp, #4]
	ldr r0, _0208EDBC ; =0x0000041C
	mov r5, #0
	add r4, r7, r0
	ldr r0, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp]
	add r0, #0x18
	str r0, [sp]
_0208ED10:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0208D790
	cmp r0, #0
	bne _0208ED28
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	b _0208EDAE
_0208ED28:
	lsl r6, r5, #2
	ldr r0, [r4, r6]
	bl sub_02021E24
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0208EDC0 ; =0x000006A4
	ldrsb r0, [r7, r0]
	cmp r0, r5
	bne _0208ED4A
	cmp r1, #8
	bhs _0208ED56
	ldr r0, [r4, r6]
	add r1, #8
	bl sub_02021D6C
	b _0208ED56
_0208ED4A:
	cmp r1, #8
	blo _0208ED56
	ldr r0, [r4, r6]
	sub r1, #8
	bl sub_02021D6C
_0208ED56:
	add r1, sp, #0xc
	ldr r0, [r4, r6]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D50C
	ldr r0, _0208EDC0 ; =0x000006A4
	ldrsb r0, [r7, r0]
	cmp r0, r5
	blt _0208ED72
	ldr r0, [sp, #8]
	lsl r1, r0, #4
	ldr r0, [sp, #4]
	b _0208ED7A
_0208ED72:
	ldr r0, [sp, #8]
	sub r0, r0, #1
	lsl r1, r0, #4
	ldr r0, [sp]
_0208ED7A:
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r0, sp, #0xc
	strh r1, [r0, #2]
	lsl r0, r5, #2
	add r1, r7, r0
	ldr r0, _0208EDBC ; =0x0000041C
	add r2, sp, #0xc
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	bl sub_0200D494
	ldr r0, [r4, r6]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
_0208EDAE:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0208ED10
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208EDBC: .word 0x0000041C
_0208EDC0: .word 0x000006A4
	thumb_func_end sub_0208ECF4

	thumb_func_start sub_0208EDC4
sub_0208EDC4: ; 0x0208EDC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0208D7BC
	cmp r0, #1
	bhi _0208EDD8
	add r0, r5, #0
	mov r1, #0
	bl sub_0208EE10
_0208EDD8:
	add r0, r5, #0
	bl sub_0208ECB8
	add r4, r0, #0
	mov r0, #0x47
	add r1, r4, #0
	lsl r0, r0, #4
	sub r1, #0xc
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl sub_0200D494
	mov r1, #0x5d
	ldr r0, _0208EE0C ; =0x00000474
	lsl r1, r1, #2
	sub r1, r1, r4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl sub_0200D494
	pop {r3, r4, r5, pc}
	nop
_0208EE0C: .word 0x00000474
	thumb_func_end sub_0208EDC4

	thumb_func_start sub_0208EE10
sub_0208EE10: ; 0x0208EE10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208D7BC
	cmp r0, #1
	bhi _0208EE20
	mov r4, #0
_0208EE20:
	mov r0, #0x47
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021CAC
	ldr r0, _0208EE38 ; =0x00000474
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208EE38: .word 0x00000474
	thumb_func_end sub_0208EE10

	thumb_func_start sub_0208EE3C
sub_0208EE3C: ; 0x0208EE3C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0208EE90 ; =0x00000263
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r3, r0, #0x1a
	bne _0208EE50
	mov r3, #0x15
	b _0208EE52
_0208EE50:
	add r3, #0x14
_0208EE52:
	mov r0, #0
	str r0, [sp]
	ldr r1, _0208EE94 ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x27
	bl sub_0200D948
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	ldr r3, _0208EE90 ; =0x00000263
	str r0, [sp, #4]
	ldrb r3, [r4, r3]
	ldr r1, _0208EE94 ; =0x00000414
	mov r2, #0x27
	ldr r0, [r4, r1]
	add r1, r1, #4
	lsl r3, r3, #0x18
	ldr r1, [r4, r1]
	lsr r4, r3, #0x1a
	ldr r3, _0208EE98 ; =0x020F411C
	ldrb r3, [r3, r4]
	add r3, #0x25
	bl sub_0200D97C
	add sp, #8
	pop {r4, pc}
	nop
_0208EE90: .word 0x00000263
_0208EE94: .word 0x00000414
_0208EE98: .word 0x020F411C
	thumb_func_end sub_0208EE3C

	thumb_func_start sub_0208EE9C
sub_0208EE9C: ; 0x0208EE9C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	lsr r0, r0, #4
	cmp r0, #7
	bne _0208EEC4
	ldr r0, _0208EF04 ; =0x0000046C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208EF08 ; =0x0000054C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r4, pc}
_0208EEC4:
	cmp r0, #0
	ldr r0, _0208EF08 ; =0x0000054C
	beq _0208EEF0
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208EF04 ; =0x0000046C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r1, #0x2a
	lsl r1, r1, #4
	ldr r0, _0208EF04 ; =0x0000046C
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	lsl r1, r1, #4
	lsr r1, r1, #4
	bl sub_02021D6C
	pop {r4, pc}
_0208EEF0:
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _0208EF04 ; =0x0000046C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r4, pc}
	; .align 2, 0
_0208EF04: .word 0x0000046C
_0208EF08: .word 0x0000054C
	thumb_func_end sub_0208EE9C

	thumb_func_start sub_0208EF0C
sub_0208EF0C: ; 0x0208EF0C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0208F16C
	mov r6, #0xa1
	mov r4, #0
	mov r7, #3
	lsl r6, r6, #2
_0208EF1C:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, r6]
	cmp r0, #0
	beq _0208EF46
	add r1, r7, #0
	bl sub_020790C4
	add r3, r0, #0
	add r1, r4, #0
	add r1, #0xd
	add r2, r4, #5
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0208F194
_0208EF46:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0208EF1C
	add r0, r5, #0
	bl sub_0208F71C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208EF0C

	thumb_func_start sub_0208EF58
sub_0208EF58: ; 0x0208EF58
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0208F158 ; =0x0000041C
	add r5, r0, #0
	mov r4, #0xb
	mov r7, #0
_0208EF62:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_0200D3EC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x13
	bls _0208EF62
	ldr r0, _0208F15C ; =0x000006A4
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0208EF8C
	cmp r0, #3
	beq _0208EFD4
	cmp r0, #5
	bne _0208EF8A
	b _0208F094
_0208EF8A:
	pop {r3, r4, r5, r6, r7, pc}
_0208EF8C:
	ldr r0, _0208F160 ; =0x00000448
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D3EC
	mov r0, #0x26
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	cmp r1, r0
	ldr r0, _0208F160 ; =0x00000448
	bne _0208EFB2
	ldr r0, [r5, r0]
	mov r1, #0xd8
	mov r2, #0x50
	bl sub_0200D494
	pop {r3, r4, r5, r6, r7, pc}
_0208EFB2:
	ldr r0, [r5, r0]
	mov r1, #0xc7
	mov r2, #0x50
	bl sub_0200D494
	ldr r0, _0208F164 ; =0x0000044C
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D3EC
	ldr r0, _0208F164 ; =0x0000044C
	mov r1, #0xe9
	ldr r0, [r5, r0]
	mov r2, #0x50
	bl sub_0200D494
	pop {r3, r4, r5, r6, r7, pc}
_0208EFD4:
	mov r7, #0xa1
	mov r4, #0
	lsl r7, r7, #2
_0208EFDA:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, r7]
	cmp r0, #0
	beq _0208F028
	mov r1, #3
	bl sub_020790C4
	add r3, r0, #0
	add r1, r4, #0
	add r1, #0xd
	add r2, r4, #5
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0208F194
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0200D3EC
	mov r0, #0x45
	lsl r2, r4, #5
	lsl r0, r0, #4
	add r2, #0x2a
	lsl r2, r2, #0x10
	ldr r0, [r6, r0]
	mov r1, #0x97
	asr r2, r2, #0x10
	bl sub_0200D494
_0208F028:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0208EFDA
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0208F06E
	mov r1, #3
	bl sub_020790C4
	add r3, r0, #0
	lsl r3, r3, #0x18
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #9
	lsr r3, r3, #0x18
	bl sub_0208F194
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D3EC
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0xaa
	bl sub_0200D494
_0208F06E:
	ldr r0, _0208F160 ; =0x00000448
	mov r1, #0x3f
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl sub_0200D494
	ldr r0, _0208F164 ; =0x0000044C
	mov r1, #0x61
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl sub_0200D494
	ldr r0, _0208F168 ; =0x00000464
	mov r1, #0x6c
	ldr r0, [r5, r0]
	mov r2, #0x48
	bl sub_0200D494
	pop {r3, r4, r5, r6, r7, pc}
_0208F094:
	mov r7, #0xa1
	mov r4, #0
	lsl r7, r7, #2
_0208F09A:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, r7]
	cmp r0, #0
	beq _0208F0EA
	mov r1, #0xb
	bl sub_020790C4
	add r3, r0, #0
	add r1, r4, #0
	add r1, #0xd
	add r2, r4, #5
	add r3, #0x12
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0208F194
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0200D3EC
	mov r0, #0x45
	lsl r2, r4, #5
	lsl r0, r0, #4
	add r2, #0x2a
	lsl r2, r2, #0x10
	ldr r0, [r6, r0]
	mov r1, #0x97
	asr r2, r2, #0x10
	bl sub_0200D494
_0208F0EA:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0208F09A
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0208F132
	mov r1, #0xb
	bl sub_020790C4
	add r3, r0, #0
	add r3, #0x12
	lsl r3, r3, #0x18
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #9
	lsr r3, r3, #0x18
	bl sub_0208F194
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D3EC
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0xaa
	bl sub_0200D494
_0208F132:
	ldr r0, _0208F160 ; =0x00000448
	mov r1, #0x3f
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl sub_0200D494
	ldr r0, _0208F164 ; =0x0000044C
	mov r1, #0x61
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl sub_0200D494
	ldr r0, _0208F168 ; =0x00000464
	mov r1, #0x6c
	ldr r0, [r5, r0]
	mov r2, #0x48
	bl sub_0200D494
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208F158: .word 0x0000041C
_0208F15C: .word 0x000006A4
_0208F160: .word 0x00000448
_0208F164: .word 0x0000044C
_0208F168: .word 0x00000464
	thumb_func_end sub_0208EF58

	thumb_func_start sub_0208F16C
sub_0208F16C: ; 0x0208F16C
	push {r4, lr}
	mov r3, #0x26
	add r4, r0, #0
	lsl r3, r3, #4
	ldrb r3, [r4, r3]
	mov r1, #0xb
	mov r2, #3
	bl sub_0208F194
	ldr r3, _0208F190 ; =0x00000261
	add r0, r4, #0
	ldrb r3, [r4, r3]
	mov r1, #0xc
	mov r2, #4
	bl sub_0208F194
	pop {r4, pc}
	nop
_0208F190: .word 0x00000261
	thumb_func_end sub_0208F16C

	thumb_func_start sub_0208F194
sub_0208F194: ; 0x0208F194
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r3, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0207C944
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_0207C908
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r1, _0208F1DC ; =0x00000414
	str r6, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [sp, #8]
	bl sub_0200D948
	add r0, r7, #0
	bl sub_0207C92C
	add r2, r0, #0
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208F1E0 ; =0x0000041C
	ldr r0, [r1, r0]
	add r1, r2, #3
	bl sub_0200D414
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0208F1DC: .word 0x00000414
_0208F1E0: .word 0x0000041C
	thumb_func_end sub_0208F194

	thumb_func_start sub_0208F1E4
sub_0208F1E4: ; 0x0208F1E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	ldrb r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	lsl r0, r0, #5
	add r0, #0x2a
	lsl r0, r0, #0x10
	add r4, r3, #0
	asr r7, r0, #0x10
	mov r6, #0
_0208F1FE:
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl sub_0200D50C
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r7, r0
	bne _0208F21C
	ldr r0, [sp]
	add sp, #8
	strb r6, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_0208F21C:
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r5, r5, #4
	cmp r6, #4
	blt _0208F1FE
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208F1E4

	thumb_func_start sub_0208F22C
sub_0208F22C: ; 0x0208F22C
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, #8
	add r2, sp, #4
	add r1, sp, #0x14
	add r2, #2
	add r3, sp, #4
	add r4, r0, #0
	bl sub_0208F1E4
	add r2, sp, #0
	add r0, r4, #0
	add r1, sp, #0x18
	add r2, #2
	add r3, sp, #0
	bl sub_0208F1E4
	add r0, sp, #0x10
	ldrb r0, [r0, #4]
	add r3, sp, #0
	mov r2, #0
	add r0, #0xd
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208F290 ; =0x0000041C
	ldrsh r2, [r3, r2]
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r3, r1]
	bl sub_0200D494
	add r0, sp, #0x10
	ldrb r0, [r0, #8]
	add r3, sp, #0
	mov r2, #4
	add r0, #0xd
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208F290 ; =0x0000041C
	ldrsh r2, [r3, r2]
	ldr r0, [r1, r0]
	mov r1, #6
	ldrsh r1, [r3, r1]
	bl sub_0200D494
	add sp, #8
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_0208F290: .word 0x0000041C
	thumb_func_end sub_0208F22C

	thumb_func_start sub_0208F294
sub_0208F294: ; 0x0208F294
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl sub_020790C4
	add r4, r0, #0
	bl sub_0207CAC0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0207CA90
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa
	ldr r1, _0208F2E0 ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200D948
	add r0, r4, #0
	bl sub_0207CAA8
	add r1, r0, #0
	ldr r0, _0208F2E4 ; =0x00000464
	add r1, r1, #3
	ldr r0, [r5, r0]
	bl sub_0200D414
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0208F2E0: .word 0x00000414
_0208F2E4: .word 0x00000464
	thumb_func_end sub_0208F294

	thumb_func_start sub_0208F2E8
sub_0208F2E8: ; 0x0208F2E8
	ldr r2, _0208F308 ; =0x000006A5
	add r3, r0, #0
	ldrb r2, [r3, r2]
	mov r0, #0x11
	lsl r0, r0, #6
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	lsl r2, r2, #5
	ldr r0, [r3, r0]
	add r2, #0x30
	lsl r2, r2, #0x10
	ldr r3, _0208F30C ; =sub_0200D494
	mov r1, #0xc2
	asr r2, r2, #0x10
	bx r3
	nop
_0208F308: .word 0x000006A5
_0208F30C: .word sub_0200D494
	thumb_func_end sub_0208F2E8

	thumb_func_start sub_0208F310
sub_0208F310: ; 0x0208F310
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x11
	lsl r0, r0, #6
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D50C
	ldr r0, _0208F348 ; =0x00000444
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	bl sub_0200D494
	ldr r0, _0208F348 ; =0x00000444
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
	nop
_0208F348: .word 0x00000444
	thumb_func_end sub_0208F310

	thumb_func_start sub_0208F34C
sub_0208F34C: ; 0x0208F34C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0208F3A4 ; =0x000006A8
	mov r1, #0
	strb r1, [r0, r2]
	add r3, r2, #3
	strb r1, [r0, r3]
	add r3, r2, #2
	strb r1, [r0, r3]
	ldr r3, _0208F3A8 ; =0x0000029A
	ldrb r3, [r0, r3]
	cmp r3, #0
	bne _0208F36A
	add r2, r2, #1
	strb r1, [r0, r2]
	b _0208F380
_0208F36A:
	cmp r3, #0xff
	bne _0208F376
	mov r3, #0xc
	add r1, r2, #1
	strb r3, [r0, r1]
	b _0208F380
_0208F376:
	mov r1, #0xc
	mul r1, r3
	asr r3, r1, #8
	add r1, r2, #1
	strb r3, [r0, r1]
_0208F380:
	ldr r7, _0208F3AC ; =0x0000041C
	add r5, r0, #0
	mov r4, #0x1d
	add r5, #0x74
	add r6, r7, #0
_0208F38A:
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_02021E50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x28
	bls _0208F38A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208F3A4: .word 0x000006A8
_0208F3A8: .word 0x0000029A
_0208F3AC: .word 0x0000041C
	thumb_func_end sub_0208F34C

	thumb_func_start sub_0208F3B0
sub_0208F3B0: ; 0x0208F3B0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0208F560 ; =0x000006A4
	ldrsb r1, [r4, r0]
	cmp r1, #4
	bne _0208F3C4
	add r1, r0, #5
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0208F3C6
_0208F3C4:
	b _0208F55C
_0208F3C6:
	add r2, r0, #4
	ldrb r2, [r4, r2]
	cmp r2, #4
	bhi _0208F3F4
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0208F3DA: ; jump table
	.short _0208F3E4 - _0208F3DA - 2 ; case 0
	.short _0208F408 - _0208F3DA - 2 ; case 1
	.short _0208F478 - _0208F3DA - 2 ; case 2
	.short _0208F498 - _0208F3DA - 2 ; case 3
	.short _0208F4F2 - _0208F3DA - 2 ; case 4
_0208F3E4:
	add r1, r0, #7
	ldrb r1, [r4, r1]
	add r2, r1, #1
	add r1, r0, #7
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #8
	beq _0208F3F6
_0208F3F4:
	b _0208F510
_0208F3F6:
	mov r2, #1
	add r1, r0, #4
	strb r2, [r4, r1]
	add r1, r0, #7
	mov r2, #0
	strb r2, [r4, r1]
	add r0, r0, #6
	strb r2, [r4, r0]
	b _0208F510
_0208F408:
	add r1, r0, #7
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0208F466
	add r0, r0, #6
	ldrb r0, [r4, r0]
	add r0, #0x1d
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208F564 ; =0x0000041C
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _0208F568 ; =0x000006AA
	ldrb r0, [r4, r0]
	add r0, #0x1d
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208F564 ; =0x0000041C
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021E50
	ldr r0, _0208F568 ; =0x000006AA
	ldrb r0, [r4, r0]
	add r0, #0x1d
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208F564 ; =0x0000041C
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, _0208F568 ; =0x000006AA
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	sub r1, r0, #1
	ldrb r2, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r2, r1
	bne _0208F466
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r4, r0]
	b _0208F510
_0208F466:
	ldr r0, _0208F56C ; =0x000006AB
	mov r1, #0xa
	ldrb r0, [r4, r0]
	add r0, r0, #1
	bl sub_020E1F6C
	ldr r0, _0208F56C ; =0x000006AB
	strb r1, [r4, r0]
	b _0208F510
_0208F478:
	add r1, #0x1c
	lsl r0, r1, #2
	add r1, r4, r0
	ldr r0, _0208F564 ; =0x0000041C
	ldr r0, [r1, r0]
	bl sub_02021D34
	cmp r0, #0
	bne _0208F510
	ldr r0, _0208F56C ; =0x000006AB
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #3
	sub r0, r0, #3
	strb r1, [r4, r0]
	b _0208F510
_0208F498:
	add r1, r0, #7
	ldrb r1, [r4, r1]
	add r2, r1, #1
	add r1, r0, #7
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x20
	bne _0208F510
	add r0, r0, #5
	ldrb r0, [r4, r0]
	mov r6, #0x1d
	add r0, #0x1d
	cmp r0, #0x1d
	bls _0208F4E4
	add r5, r4, #0
	ldr r7, _0208F570 ; =0x000006A9
	add r5, #0x74
_0208F4BA:
	ldr r0, _0208F564 ; =0x0000041C
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0208F564 ; =0x0000041C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021E50
	ldr r0, _0208F564 ; =0x0000041C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldrb r0, [r4, r7]
	add r6, r6, #1
	add r5, r5, #4
	add r0, #0x1d
	cmp r6, r0
	blo _0208F4BA
_0208F4E4:
	ldr r0, _0208F56C ; =0x000006AB
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #4
	sub r0, r0, #3
	strb r1, [r4, r0]
	b _0208F510
_0208F4F2:
	add r1, r0, #7
	ldrb r1, [r4, r1]
	add r2, r1, #1
	add r1, r0, #7
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x20
	bne _0208F510
	mov r2, #0
	add r1, r0, #4
	strb r2, [r4, r1]
	add r1, r0, #7
	strb r2, [r4, r1]
	add r0, r0, #6
	strb r2, [r4, r0]
_0208F510:
	ldr r0, _0208F570 ; =0x000006A9
	mov r6, #0x1d
	ldrb r0, [r4, r0]
	add r0, #0x1d
	cmp r0, #0x1d
	bls _0208F55C
	add r5, r4, #0
	ldr r7, _0208F564 ; =0x0000041C
	add r5, #0x74
_0208F522:
	ldr r0, [r5, r7]
	bl sub_02021D34
	cmp r0, #0
	beq _0208F54E
	ldr r0, _0208F564 ; =0x0000041C
	mov r1, #1
	ldr r0, [r5, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, _0208F564 ; =0x0000041C
	ldr r0, [r5, r0]
	bl sub_02021E74
	cmp r0, #6
	bne _0208F54E
	ldr r0, _0208F564 ; =0x0000041C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
_0208F54E:
	ldr r0, _0208F570 ; =0x000006A9
	add r6, r6, #1
	ldrb r0, [r4, r0]
	add r5, r5, #4
	add r0, #0x1d
	cmp r6, r0
	blo _0208F522
_0208F55C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208F560: .word 0x000006A4
_0208F564: .word 0x0000041C
_0208F568: .word 0x000006AA
_0208F56C: .word 0x000006AB
_0208F570: .word 0x000006A9
	thumb_func_end sub_0208F3B0

	thumb_func_start sub_0208F574
sub_0208F574: ; 0x0208F574
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	mov r7, #1
_0208F57E:
	mov r0, #0xa7
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	add r0, r7, #0
	lsl r0, r4
	tst r0, r1
	ldr r0, _0208F5F8 ; =0x00000478
	beq _0208F598
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_02021D6C
	b _0208F5A0
_0208F598:
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021D6C
_0208F5A0:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _0208F57E
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	lsl r1, r0, #2
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _0208F5CA
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0208F5CA
	mov r0, #0x4f
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0200D3EC
	b _0208F5D6
_0208F5CA:
	mov r0, #0x4f
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0200D3EC
_0208F5D6:
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	lsr r0, r0, #0x1e
	cmp r0, #2
	ldr r0, _0208F5FC ; =0x000004F4
	bne _0208F5EE
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0200D3EC
	pop {r3, r4, r5, r6, r7, pc}
_0208F5EE:
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0200D3EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208F5F8: .word 0x00000478
_0208F5FC: .word 0x000004F4
	thumb_func_end sub_0208F574

	thumb_func_start sub_0208F600
sub_0208F600: ; 0x0208F600
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021E50
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021D6C
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0
	bl sub_02092368
	ldr r0, _0208F680 ; =0x000006A7
	add r3, sp, #0
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bne _0208F65E
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #6
	add r2, #0xc0
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	ldr r0, [r4, r0]
	asr r2, r2, #0x10
	bl sub_0200D494
	add sp, #4
	pop {r3, r4, pc}
_0208F65E:
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	mov r0, #0x13
	lsl r0, r0, #6
	sub r1, r1, #4
	add r2, #0xc0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0208F680: .word 0x000006A7
	thumb_func_end sub_0208F600

	thumb_func_start sub_0208F684
sub_0208F684: ; 0x0208F684
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02021E74
	cmp r0, #2
	bne _0208F6A2
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_0208F6A2:
	pop {r4, pc}
	thumb_func_end sub_0208F684

	thumb_func_start sub_0208F6A4
sub_0208F6A4: ; 0x0208F6A4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0208F6D4 ; =0x000006A6
	add r5, r0, #0
	mov r4, #0
	mov r6, #1
_0208F6AE:
	add r0, r6, #0
	ldrb r1, [r5, r7]
	lsl r0, r4
	tst r0, r1
	beq _0208F6C6
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208F6D8 ; =0x000004C4
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_02021CAC
_0208F6C6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0208F6AE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208F6D4: .word 0x000006A6
_0208F6D8: .word 0x000004C4
	thumb_func_end sub_0208F6A4

	thumb_func_start sub_0208F6DC
sub_0208F6DC: ; 0x0208F6DC
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _0208F6F0
	ldr r0, _0208F718 ; =0x000004D8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r4, pc}
_0208F6F0:
	add r0, r1, #0
	bl sub_0201C29C
	add r1, r0, #0
	ldr r0, _0208F718 ; =0x000004D8
	lsl r1, r1, #3
	sub r1, #0xa
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	mov r2, #8
	bl sub_0200D494
	ldr r0, _0208F718 ; =0x000004D8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r4, pc}
	nop
_0208F718: .word 0x000004D8
	thumb_func_end sub_0208F6DC

	thumb_func_start sub_0208F71C
sub_0208F71C: ; 0x0208F71C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0208DD48
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r1, [r1, #0x11]
	cmp r1, #2
	bne _0208F738
	bl sub_02079D40
	b _0208F73C
_0208F738:
	bl sub_02079D80
_0208F73C:
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb
	ldr r1, _0208F79C ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	bl sub_0200D948
	mov r2, #0x97
	lsl r2, r2, #2
	add r1, r2, #0
	ldrh r0, [r4, r2]
	add r2, #0x44
	add r1, #0x42
	ldr r2, [r4, r2]
	ldrh r1, [r4, r1]
	lsl r2, r2, #3
	lsr r2, r2, #0x1f
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, _0208F7A0 ; =0x00000468
	add r1, r1, #7
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r1, #0x97
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	add r1, #0x42
	ldrh r1, [r4, r1]
	mov r2, #0x1c
	bl sub_020759CC
	add r2, r0, #0
	ldr r0, _0208F7A0 ; =0x00000468
	mov r1, #1
	ldr r0, [r4, r0]
	eor r1, r2
	bl sub_02021D0C
	add sp, #8
	pop {r4, pc}
	nop
_0208F79C: .word 0x00000414
_0208F7A0: .word 0x00000468
	thumb_func_end sub_0208F71C

	thumb_func_start sub_0208F7A4
sub_0208F7A4: ; 0x0208F7A4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02079FD0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	ldr r1, _0208F7F4 ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	bl sub_0200D97C
	ldr r0, _0208F7F8 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #3
	ldr r0, _0208F7FC ; =0x00000468
	bne _0208F7DC
	ldr r0, [r4, r0]
	mov r1, #0x18
	mov r2, #0x30
	bl sub_0200D494
	b _0208F7E6
_0208F7DC:
	ldr r0, [r4, r0]
	mov r1, #0x20
	mov r2, #0x44
	bl sub_0200D494
_0208F7E6:
	ldr r0, _0208F7FC ; =0x00000468
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D3EC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0208F7F4: .word 0x00000414
_0208F7F8: .word 0x000006A4
_0208F7FC: .word 0x00000468
	thumb_func_end sub_0208F7A4

	thumb_func_start sub_0208F800
sub_0208F800: ; 0x0208F800
	push {r4, lr}
	add r4, r2, #0
	cmp r4, r1
	ble _0208F826
	add r0, #0x2c
	sub r1, r4, r1
	mul r1, r0
	lsl r0, r1, #0x10
	mov r1, #0x4b
	lsl r1, r1, #2
	bl sub_020E2178
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, pc}
_0208F826:
	add r0, #0x2c
	sub r1, r1, r4
	mul r1, r0
	lsl r0, r1, #0x10
	mov r1, #0x4b
	lsl r1, r1, #2
	bl sub_020E2178
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, pc}
	thumb_func_end sub_0208F800

	thumb_func_start sub_0208F844
sub_0208F844: ; 0x0208F844
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0208F944 ; =0x00000295
	mov r1, #0x58
	ldrb r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208F800
	add r5, r0, #0
	ldr r0, _0208F944 ; =0x00000295
	mov r1, #0x31
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208F800
	add r2, r0, #0
	ldr r0, _0208F948 ; =0x000004DC
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0200D494
	ldr r0, _0208F94C ; =0x00000296
	mov r1, #0x6e
	ldrb r0, [r4, r0]
	mov r2, #0x58
	bl sub_0208F800
	add r5, r0, #0
	ldr r0, _0208F94C ; =0x00000296
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208F800
	add r2, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200D494
	ldr r0, _0208F950 ; =0x00000297
	mov r1, #0x67
	ldrb r0, [r4, r0]
	mov r2, #0x58
	bl sub_0208F800
	add r5, r0, #0
	ldr r0, _0208F950 ; =0x00000297
	mov r1, #0x5c
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208F800
	add r2, r0, #0
	ldr r0, _0208F954 ; =0x000004E4
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0200D494
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	mov r1, #0x48
	mov r2, #0x57
	bl sub_0208F800
	add r5, r0, #0
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	mov r1, #0x5c
	mov r2, #0x49
	bl sub_0208F800
	add r2, r0, #0
	ldr r0, _0208F958 ; =0x000004E8
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0200D494
	ldr r0, _0208F95C ; =0x00000299
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x57
	bl sub_0208F800
	add r5, r0, #0
	ldr r0, _0208F95C ; =0x00000299
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208F800
	add r2, r0, #0
	ldr r0, _0208F960 ; =0x000004EC
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0200D494
	ldr r0, _0208F948 ; =0x000004DC
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _0208F954 ; =0x000004E4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208F958 ; =0x000004E8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208F960 ; =0x000004EC
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	nop
_0208F944: .word 0x00000295
_0208F948: .word 0x000004DC
_0208F94C: .word 0x00000296
_0208F950: .word 0x00000297
_0208F954: .word 0x000004E4
_0208F958: .word 0x000004E8
_0208F95C: .word 0x00000299
_0208F960: .word 0x000004EC
	thumb_func_end sub_0208F844

	thumb_func_start sub_0208F964
sub_0208F964: ; 0x0208F964
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208F9A0 ; =0x000004DC
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0208F9A4 ; =0x000004E4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208F9A8 ; =0x000004E8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0208F9AC ; =0x000004EC
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	pop {r4, pc}
	nop
_0208F9A0: .word 0x000004DC
_0208F9A4: .word 0x000004E4
_0208F9A8: .word 0x000004E8
_0208F9AC: .word 0x000004EC
	thumb_func_end sub_0208F964

	thumb_func_start sub_0208F9B0
sub_0208F9B0: ; 0x0208F9B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	add r4, r2, #0
	bl sub_020923C0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x1a
	ldr r1, _0208F9FC ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x27
	bl sub_0200D948
	add r0, r6, #0
	mov r1, #2
	bl sub_020923C0
	add r4, #0x37
	add r2, r0, #0
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208FA00 ; =0x0000041C
	ldr r0, [r1, r0]
	add r1, r2, #7
	bl sub_0200D414
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0208F9FC: .word 0x00000414
_0208FA00: .word 0x0000041C
	thumb_func_end sub_0208F9B0

	thumb_func_start sub_0208FA04
sub_0208FA04: ; 0x0208FA04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _0208FA8C ; =0x0000041C
	add r5, r0, #0
	mov r4, #0x37
	mov r7, #0
_0208FA10:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x46
	bls _0208FA10
	ldr r0, _0208FA90 ; =0x000006A4
	ldrsb r0, [r5, r0]
	cmp r0, #6
	bne _0208FA88
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	ldr r1, _0208FA94 ; =0x00000414
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x27
	mov r3, #0x88
	bl sub_0200D97C
	ldr r7, _0208FA98 ; =0x000004F8
	ldr r6, _0208FA9C ; =0x000006B1
	mov r4, #0
_0208FA4C:
	ldrb r0, [r5, r6]
	cmp r4, r0
	bge _0208FA74
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #1
	bl sub_02021CAC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0208E904
	lsl r2, r4, #0x18
	add r1, r0, #0
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_0208F9B0
_0208FA74:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xc
	blo _0208FA4C
	ldr r0, _0208FAA0 ; =0x00000534
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021D6C
_0208FA88:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208FA8C: .word 0x0000041C
_0208FA90: .word 0x000006A4
_0208FA94: .word 0x00000414
_0208FA98: .word 0x000004F8
_0208FA9C: .word 0x000006B1
_0208FAA0: .word 0x00000534
	thumb_func_end sub_0208FA04

	thumb_func_start sub_0208FAA4
sub_0208FAA4: ; 0x0208FAA4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x6b
	lsl r7, r7, #4
	add r5, r0, #0
	mov r4, #0
	add r6, r7, #1
_0208FAB0:
	ldrb r0, [r5, r7]
	lsl r0, r0, #2
	add r1, r4, r0
	ldrb r0, [r5, r6]
	cmp r1, r0
	bge _0208FAE2
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208FAFC ; =0x000004F8
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0208E904
	lsl r2, r4, #0x18
	add r1, r0, #0
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_0208F9B0
	b _0208FAF0
_0208FAE2:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208FAFC ; =0x000004F8
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
_0208FAF0:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #8
	blo _0208FAB0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208FAFC: .word 0x000004F8
	thumb_func_end sub_0208FAA4

	thumb_func_start sub_0208FB00
sub_0208FB00: ; 0x0208FB00
	ldr r1, _0208FB24 ; =0x000006AF
	ldrb r2, [r0, r1]
	ldr r1, _0208FB28 ; =0x00000528
	ldr r0, [r0, r1]
	lsl r1, r2, #0x1e
	lsr r3, r2, #2
	mov r2, #0x28
	mul r2, r3
	lsr r1, r1, #0x19
	add r1, #0x84
	add r2, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r3, _0208FB2C ; =sub_0200D494
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bx r3
	nop
_0208FB24: .word 0x000006AF
_0208FB28: .word 0x00000528
_0208FB2C: .word sub_0200D494
	thumb_func_end sub_0208FB00

	thumb_func_start sub_0208FB30
sub_0208FB30: ; 0x0208FB30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208FB50 ; =0x00000534
	ldr r0, [r4, r0]
	bl sub_02021D34
	cmp r0, #1
	bne _0208FB4C
	ldr r0, _0208FB50 ; =0x00000534
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
_0208FB4C:
	pop {r4, pc}
	nop
_0208FB50: .word 0x00000534
	thumb_func_end sub_0208FB30

	thumb_func_start sub_0208FB54
sub_0208FB54: ; 0x0208FB54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _0208FB7A
	mov r4, #0
	ldr r6, _0208FBFC ; =0x00000538
	add r7, r4, #0
_0208FB62:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _0208FB62
	pop {r3, r4, r5, r6, r7, pc}
_0208FB7A:
	ldr r0, _0208FC00 ; =0x00000295
	ldrb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	add r4, r1, #0
	cmp r1, r0
	bge _0208FB8A
	add r4, r0, #0
_0208FB8A:
	ldr r0, _0208FC04 ; =0x00000297
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0208FB94
	add r4, r0, #0
_0208FB94:
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0208FBA0
	add r4, r0, #0
_0208FBA0:
	ldr r0, _0208FC08 ; =0x00000299
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0208FBAA
	add r4, r0, #0
_0208FBAA:
	ldr r0, _0208FBFC ; =0x00000538
	ldr r3, _0208FC0C ; =0x020F4180
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl sub_0208FC30
	ldr r1, _0208FC10 ; =0x00000296
	ldr r0, _0208FC14 ; =0x0000053C
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r3, _0208FC18 ; =0x020F4188
	add r2, r4, #0
	bl sub_0208FC30
	ldr r1, _0208FC04 ; =0x00000297
	mov r0, #0x15
	lsl r0, r0, #6
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r3, _0208FC1C ; =0x020F4190
	add r2, r4, #0
	bl sub_0208FC30
	mov r1, #0xa6
	ldr r0, _0208FC20 ; =0x00000544
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r3, _0208FC24 ; =0x020F4198
	add r2, r4, #0
	bl sub_0208FC30
	ldr r1, _0208FC08 ; =0x00000299
	ldr r0, _0208FC28 ; =0x00000548
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r3, _0208FC2C ; =0x020F41A0
	add r2, r4, #0
	bl sub_0208FC30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208FBFC: .word 0x00000538
_0208FC00: .word 0x00000295
_0208FC04: .word 0x00000297
_0208FC08: .word 0x00000299
_0208FC0C: .word 0x020F4180
_0208FC10: .word 0x00000296
_0208FC14: .word 0x0000053C
_0208FC18: .word 0x020F4188
_0208FC1C: .word 0x020F4190
_0208FC20: .word 0x00000544
_0208FC24: .word 0x020F4198
_0208FC28: .word 0x00000548
_0208FC2C: .word 0x020F41A0
	thumb_func_end sub_0208FB54

	thumb_func_start sub_0208FC30
sub_0208FC30: ; 0x0208FC30
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r3, #0
	cmp r5, #0
	beq _0208FC40
	cmp r5, r2
	beq _0208FC4A
_0208FC40:
	add r0, r6, #0
	mov r1, #0
	bl sub_02021CAC
	pop {r4, r5, r6, pc}
_0208FC4A:
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r1, r0
	blt _0208FC70
	sub r1, r1, r0
	lsl r2, r1, #8
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	mul r1, r5
	lsr r1, r1, #8
	add r1, r0, r1
	b _0208FC82
_0208FC70:
	sub r1, r0, r1
	lsl r2, r1, #8
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	mul r1, r5
	lsr r1, r1, #8
	sub r1, r0, r1
_0208FC82:
	mov r0, #2
	ldrsh r2, [r4, r0]
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r2, r0
	blt _0208FCA2
	sub r2, r2, r0
	lsl r3, r2, #8
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	asr r2, r2, #8
	mul r2, r5
	lsr r2, r2, #8
	add r2, r0, r2
	b _0208FCB4
_0208FCA2:
	sub r2, r0, r2
	lsl r3, r2, #8
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	asr r2, r2, #8
	mul r2, r5
	lsr r2, r2, #8
	sub r2, r0, r2
_0208FCB4:
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	add r0, r6, #0
	mov r1, #0
	bl sub_02021E50
	add r0, r6, #0
	mov r1, #0
	bl sub_02021D6C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0208FC30

	thumb_func_start sub_0208FCD4
sub_0208FCD4: ; 0x0208FCD4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	ldr r6, _0208FCF4 ; =0x00000538
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #0xc
_0208FCE0:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl sub_02021E2C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blo _0208FCE0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208FCF4: .word 0x00000538
	thumb_func_end sub_0208FCD4

	thumb_func_start sub_0208FCF8
sub_0208FCF8: ; 0x0208FCF8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r5, #0
	add r4, r7, #4
_0208FD00:
	ldr r2, _0208FD3C ; =0x020F4ED0
	lsl r6, r5, #4
	lsl r3, r5, #3
	ldr r0, [r7, #0]
	add r1, r4, r6
	add r2, r2, r3
	bl sub_0201A8D4
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x24
	blo _0208FD00
	add r0, r7, #0
	bl sub_020902B0
	add r0, r7, #0
	bl sub_0208FEA4
	add r0, r7, #0
	bl sub_0208FF3C
	add r0, r7, #0
	bl sub_0208FFE0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208FD3C: .word 0x020F4ED0
	thumb_func_end sub_0208FCF8

	thumb_func_start sub_0208FD40
sub_0208FD40: ; 0x0208FD40
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0208FE14 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #7
	bhi _0208FE10
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208FD58: ; jump table
	.short _0208FD68 - _0208FD58 - 2 ; case 0
	.short _0208FD74 - _0208FD58 - 2 ; case 1
	.short _0208FD80 - _0208FD58 - 2 ; case 2
	.short _0208FD8C - _0208FD58 - 2 ; case 3
	.short _0208FDB0 - _0208FD58 - 2 ; case 4
	.short _0208FD98 - _0208FD58 - 2 ; case 5
	.short _0208FDA4 - _0208FD58 - 2 ; case 6
	.short _0208FDB0 - _0208FD58 - 2 ; case 7
_0208FD68:
	mov r0, #0x92
	mov r1, #6
	lsl r0, r0, #2
	ldr r5, _0208FE18 ; =0x020F4E20
	str r1, [r4, r0]
	b _0208FDCE
_0208FD74:
	mov r0, #0x92
	mov r1, #1
	lsl r0, r0, #2
	ldr r5, _0208FE1C ; =0x020F4DB0
	str r1, [r4, r0]
	b _0208FDCE
_0208FD80:
	mov r0, #0x92
	mov r1, #8
	lsl r0, r0, #2
	ldr r5, _0208FE20 ; =0x020F4E50
	str r1, [r4, r0]
	b _0208FDCE
_0208FD8C:
	mov r0, #0x92
	mov r1, #8
	lsl r0, r0, #2
	ldr r5, _0208FE24 ; =0x020F4E90
	str r1, [r4, r0]
	b _0208FDCE
_0208FD98:
	mov r0, #0x92
	mov r1, #6
	lsl r0, r0, #2
	ldr r5, _0208FE28 ; =0x020F4DF0
	str r1, [r4, r0]
	b _0208FDCE
_0208FDA4:
	mov r0, #0x92
	mov r1, #4
	lsl r0, r0, #2
	ldr r5, _0208FE2C ; =0x020F4DD0
	str r1, [r4, r0]
	b _0208FDCE
_0208FDB0:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _0208FDC0
	cmp r0, #4
	bne _0208FE10
_0208FDC0:
	mov r0, #0x92
	mov r1, #3
	lsl r0, r0, #2
	ldr r5, _0208FE30 ; =0x020F4DB8
	str r1, [r4, r0]
	b _0208FDCE
_0208FDCC:
	.byte 0xF8, 0xBD
_0208FDCE:
	mov r1, #0x92
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0x13
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201A778
	mov r1, #0x91
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r0, [r4, r0]
	mov r6, #0
	cmp r0, #0
	bls _0208FE10
	add r7, r6, #0
_0208FDF0:
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r0, [r4, #0]
	add r1, r1, r7
	add r2, r5, #0
	bl sub_0201A8D4
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r6, r6, #1
	add r5, #8
	add r7, #0x10
	cmp r6, r0
	blo _0208FDF0
_0208FE10:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208FE14: .word 0x000006A4
_0208FE18: .word 0x020F4E20
_0208FE1C: .word 0x020F4DB0
_0208FE20: .word 0x020F4E50
_0208FE24: .word 0x020F4E90
_0208FE28: .word 0x020F4DF0
_0208FE2C: .word 0x020F4DD0
_0208FE30: .word 0x020F4DB8
	thumb_func_end sub_0208FD40

	thumb_func_start sub_0208FE34
sub_0208FE34: ; 0x0208FE34
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _0208FE84 ; =0x000006A4
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bhi _0208FE80
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208FE4C: ; jump table
	.short _0208FE6E - _0208FE4C - 2 ; case 0
	.short _0208FE6E - _0208FE4C - 2 ; case 1
	.short _0208FE6E - _0208FE4C - 2 ; case 2
	.short _0208FE6E - _0208FE4C - 2 ; case 3
	.short _0208FE5C - _0208FE4C - 2 ; case 4
	.short _0208FE6E - _0208FE4C - 2 ; case 5
	.short _0208FE6E - _0208FE4C - 2 ; case 6
	.short _0208FE5C - _0208FE4C - 2 ; case 7
_0208FE5C:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _0208FE6E
	cmp r0, #4
	beq _0208FE6E
	pop {r3, pc}
_0208FE6E:
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201A928
_0208FE80:
	pop {r3, pc}
	nop
_0208FE84: .word 0x000006A4
	thumb_func_end sub_0208FE34

	thumb_func_start sub_0208FE88
sub_0208FE88: ; 0x0208FE88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0208FE34
	mov r4, #0
	add r5, r5, #4
_0208FE94:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x24
	blo _0208FE94
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208FE88

	thumb_func_start sub_0208FEA4
sub_0208FEA4: ; 0x0208FEA4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r4, #0x89
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	add r2, r4, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208FF30 ; =0x000F0E00
	add r2, #0x30
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r5, r4
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r4, #0
	add r0, #0x3e
	ldrb r1, [r5, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	bne _0208FF24
	add r0, r0, #1
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	bne _0208FF06
	ldr r2, _0208FF34 ; =0x00000688
	mov r1, #1
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r2, #0xc1
	add r0, r5, #0
	add r1, r5, r4
	lsl r2, r2, #0xa
	mov r3, #1
	bl sub_020900D8
	b _0208FF24
_0208FF06:
	cmp r0, #1
	bne _0208FF24
	ldr r2, _0208FF34 ; =0x00000688
	mov r1, #2
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r2, _0208FF38 ; =0x00050600
	add r0, r5, #0
	add r1, r5, r4
	mov r3, #1
	bl sub_020900D8
_0208FF24:
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0208FF30: .word 0x000F0E00
_0208FF34: .word 0x00000688
_0208FF38: .word 0x00050600
	thumb_func_end sub_0208FEA4

	thumb_func_start sub_0208FF3C
sub_0208FF3C: ; 0x0208FF3C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r6, #0x85
	add r5, r0, #0
	lsl r6, r6, #2
	add r0, r5, r6
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r5, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0208FFC6
	mov r0, #5
	str r0, [sp]
	ldr r0, _0208FFD0 ; =0x00000684
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r5, r6
	mov r3, #0
	bl sub_0200C578
	ldr r0, _0208FFD4 ; =0x00000688
	mov r1, #3
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	add r2, r6, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, #0x4e
	ldrb r2, [r5, r2]
	mov r0, #0x69
	lsl r0, r0, #4
	lsl r2, r2, #0x19
	ldr r0, [r5, r0]
	lsr r2, r2, #0x19
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x69
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208FFD8 ; =0x00010200
	ldr r2, _0208FFDC ; =0x00000694
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r5, r6
	mov r3, #0x10
	bl sub_0201D78C
_0208FFC6:
	add r0, r5, r6
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208FFD0: .word 0x00000684
_0208FFD4: .word 0x00000688
_0208FFD8: .word 0x00010200
_0208FFDC: .word 0x00000694
	thumb_func_end sub_0208FF3C

	thumb_func_start sub_0208FFE0
sub_0208FFE0: ; 0x0208FFE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _0209005C ; =0x0000025E
	ldrh r2, [r5, r0]
	cmp r2, #0
	beq _02090028
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B70C
	ldr r0, _02090060 ; =0x00000688
	mov r1, #5
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x69
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _02090036
_02090028:
	ldr r2, _02090060 ; =0x00000688
	mov r1, #6
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_02090036:
	mov r2, #0x81
	lsl r2, r2, #2
	add r1, r5, r2
	add r0, r5, #0
	lsl r2, r2, #7
	mov r3, #0
	bl sub_020900D8
	add r0, r5, #0
	add r0, #0x64
	bl sub_0201A9A4
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	pop {r3, r4, r5, pc}
	nop
_0209005C: .word 0x0000025E
_02090060: .word 0x00000688
	thumb_func_end sub_0208FFE0

	thumb_func_start sub_02090064
sub_02090064: ; 0x02090064
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	ldr r3, _02090094 ; =0x000F0E00
	add r0, r5, #0
	mov r1, #0x23
	add r2, r4, #0
	bl sub_02090158
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	pop {r3, r4, r5, pc}
	nop
_02090094: .word 0x000F0E00
	thumb_func_end sub_02090064

	thumb_func_start sub_02090098
sub_02090098: ; 0x02090098
	push {r4, lr}
	mov r3, #0x93
	lsl r3, r3, #2
	add r1, r0, #0
	add r2, r3, #0
	add r2, #0x18
	ldr r0, [r1, r3]
	ldr r4, [r1, r2]
	ldr r2, [r0, #0xc]
	cmp r4, r2
	bne _020900CE
	add r2, r3, #0
	add r2, #0x48
	ldrb r2, [r1, r2]
	ldrb r0, [r0, #0x10]
	cmp r2, r0
	bne _020900CE
	ldr r2, _020900D4 ; =0x00000698
	add r3, #0xc
	ldr r0, [r1, r3]
	ldr r1, [r1, r2]
	bl sub_02023BE0
	cmp r0, #0
	bne _020900CE
	mov r0, #1
	pop {r4, pc}
_020900CE:
	mov r0, #0
	pop {r4, pc}
	nop
_020900D4: .word 0x00000698
	thumb_func_end sub_02090098

	thumb_func_start sub_020900D8
sub_020900D8: ; 0x020900D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	cmp r3, #0
	beq _020900F0
	cmp r3, #1
	beq _020900F4
	cmp r3, #2
	beq _02090116
	b _0209013A
_020900F0:
	mov r3, #0
	b _0209013A
_020900F4:
	ldr r1, _02090154 ; =0x00000694
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r6, #0
	bl sub_0201C294
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r0, r0, r5
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	b _0209013A
_02090116:
	ldr r1, _02090154 ; =0x00000694
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r6, #0
	bl sub_0201C294
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r1, r0, r5
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r3, r0, #0x18
_0209013A:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r2, _02090154 ; =0x00000694
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r0, r6, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02090154: .word 0x00000694
	thumb_func_end sub_020900D8

	thumb_func_start sub_02090158
sub_02090158: ; 0x02090158
	push {r4, r5, r6, lr}
	add r6, r3, #0
	ldr r3, _02090180 ; =0x00000688
	add r5, r0, #0
	ldr r0, [r5, r3]
	add r4, r1, #0
	add r3, #0xc
	add r1, r2, #0
	ldr r2, [r5, r3]
	bl sub_0200B1B8
	add r2, r5, #4
	lsl r1, r4, #4
	add r1, r2, r1
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_020900D8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02090180: .word 0x00000688
	thumb_func_end sub_02090158

	thumb_func_start sub_02090184
sub_02090184: ; 0x02090184
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _020901CC ; =0x00000688
	add r6, r2, #0
	ldr r0, [r5, r0]
	add r7, r3, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	mov r1, #0
	add r2, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r3, r7, #0
	bl sub_0200B60C
	mov r1, #0x69
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020901CC: .word 0x00000688
	thumb_func_end sub_02090184

	thumb_func_start sub_020901D0
sub_020901D0: ; 0x020901D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	str r3, [sp, #0x10]
	mov r0, #0x91
	lsl r0, r0, #2
	lsl r7, r1, #4
	ldr r3, _020902A4 ; =0x00000688
	ldr r5, [r4, r0]
	ldr r0, [r4, r3]
	add r3, #0xc
	add r1, r2, #0
	ldr r2, [r4, r3]
	bl sub_0200B1B8
	ldr r1, _020902A8 ; =0x00000694
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r1, sp, #0x48
	ldrb r2, [r1]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r0, r1, r0
	str r1, [sp, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	add r0, sp, #0x4c
	ldrb r0, [r0]
	mov r1, #0
	ldr r2, _020902A8 ; =0x00000694
	str r0, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020902AC ; =0x00010200
	ldr r3, [sp, #0x14]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r0, r5, r7
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp]
	add r3, sp, #0x28
	ldrh r2, [r3, #0x14]
	ldrb r3, [r3, #0x1c]
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl sub_02090184
	ldr r1, _020902A8 ; =0x00000694
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov ip, r0
	ldr r0, [sp, #0x1c]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020902AC ; =0x00010200
	ldr r2, _020902A8 ; =0x00000694
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r3, [sp, #0x14]
	mov r6, ip
	ldr r2, [r4, r2]
	add r0, r5, r7
	sub r3, r3, r6
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp]
	add r3, sp, #0x28
	ldrh r2, [r3, #0x18]
	ldrb r3, [r3, #0x1c]
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	bl sub_02090184
	ldr r0, [sp, #0x1c]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020902AC ; =0x00010200
	ldr r2, _020902A8 ; =0x00000694
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	ldr r3, [sp, #0x18]
	add r0, r5, r7
	bl sub_0201D78C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020902A4: .word 0x00000688
_020902A8: .word 0x00000694
_020902AC: .word 0x00010200
	thumb_func_end sub_020901D0

	thumb_func_start sub_020902B0
sub_020902B0: ; 0x020902B0
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _020904B4 ; =0x000F0E00
	mov r1, #0
	mov r2, #7
	add r4, r0, #0
	str r1, [sp]
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x17
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x6d
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x7e
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x80
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x9d
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #6
	mov r2, #4
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #7
	mov r2, #8
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #8
	mov r2, #0xa
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #9
	mov r2, #0xc
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xd
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0xf
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x11
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0x13
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0x6e
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0x6f
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0x70
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0x71
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #0x72
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0x73
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0x74
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #0x7f
	bl sub_02090158
	ldr r2, _020904B8 ; =0x00000688
	mov r1, #0x92
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r0, #2
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _020904B4 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	add r2, #0x85
	add r0, r4, r2
	ldr r2, _020904BC ; =0x00000694
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r3, r1, #0
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x19
	mov r2, #0x95
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x1a
	mov r2, #0x93
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x1b
	mov r2, #0x94
	bl sub_02090158
	mov r0, #2
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #0xa2
	bl sub_02090158
	mov r0, #2
	str r0, [sp]
	ldr r3, _020904C0 ; =0x00010200
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #0xa0
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904C0 ; =0x00010200
	add r0, r4, #0
	mov r1, #0x1e
	mov r2, #0xb6
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #0xb3
	bl sub_02090158
	add sp, #0x10
	pop {r4, pc}
	nop
_020904B4: .word 0x000F0E00
_020904B8: .word 0x00000688
_020904BC: .word 0x00000694
_020904C0: .word 0x00010200
	thumb_func_end sub_020902B0

	thumb_func_start sub_020904C4
sub_020904C4: ; 0x020904C4
	push {r4, lr}
	sub sp, #0x10
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	mov r0, #2
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0x16
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #1
	mov r2, #0
	mov r3, #0xe
	bl sub_02019CB8
	ldr r0, _02090574 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #7
	bhi _02090570
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02090514: ; jump table
	.short _02090524 - _02090514 - 2 ; case 0
	.short _0209052E - _02090514 - 2 ; case 1
	.short _02090538 - _02090514 - 2 ; case 2
	.short _0209054C - _02090514 - 2 ; case 3
	.short _02090542 - _02090514 - 2 ; case 4
	.short _02090556 - _02090514 - 2 ; case 5
	.short _02090560 - _02090514 - 2 ; case 6
	.short _0209056A - _02090514 - 2 ; case 7
_02090524:
	add r0, r4, #0
	bl sub_02090578
	add sp, #0x10
	pop {r4, pc}
_0209052E:
	add r0, r4, #0
	bl sub_020908CC
	add sp, #0x10
	pop {r4, pc}
_02090538:
	add r0, r4, #0
	bl sub_0209093C
	add sp, #0x10
	pop {r4, pc}
_02090542:
	add r0, r4, #0
	bl sub_02090BDC
	add sp, #0x10
	pop {r4, pc}
_0209054C:
	add r0, r4, #0
	bl sub_02090CD4
	add sp, #0x10
	pop {r4, pc}
_02090556:
	add r0, r4, #0
	bl sub_02090D90
	add sp, #0x10
	pop {r4, pc}
_02090560:
	add r0, r4, #0
	bl sub_02090E4C
	add sp, #0x10
	pop {r4, pc}
_0209056A:
	add r0, r4, #0
	bl sub_02090EC8
_02090570:
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02090574: .word 0x000006A4
	thumb_func_end sub_020904C4

	thumb_func_start sub_02090578
sub_02090578: ; 0x02090578
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0x74
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0x84
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0x94
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xa4
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xb4
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xc4
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xd4
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xe4
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x20
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x40
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x50
	bl sub_0201ADA4
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldrh r1, [r4, r1]
	ldr r0, [r0, #0x1c]
	bl sub_0207A294
	add r2, r0, #0
	beq _0209063A
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r3, #3
	bl sub_02090184
	b _02090648
_0209063A:
	ldr r2, _020907F0 ; =0x00000688
	mov r1, #0x16
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
_02090648:
	mov r1, #0x2a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	lsl r0, r0, #2
	lsr r0, r0, #0x1f
	bne _02090664
	sub r1, #0x5c
	ldr r1, [r4, r1]
	ldr r2, _020907F4 ; =0x00010200
	add r0, r4, #0
	mov r3, #2
	bl sub_020900D8
	b _02090672
_02090664:
	sub r1, #0x5c
	ldr r1, [r4, r1]
	ldr r2, _020907F8 ; =0x00050600
	add r0, r4, #0
	mov r3, #2
	bl sub_020900D8
_02090672:
	mov r1, #0x25
	lsl r1, r1, #4
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020907F4 ; =0x00010200
	add r2, #0xc
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r3, #0
	ldrb r3, [r3, #0x17]
	ldr r2, [r4, r2]
	add r0, #0x10
	lsl r3, r3, #3
	sub r3, r3, r5
	lsr r3, r3, #1
	bl sub_0201D78C
	mov r1, #0x96
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r5, #0x91
	lsl r5, r5, #2
	ldr r2, [r4, r5]
	add r1, r2, #0
	add r1, #0x27
	ldrb r1, [r1]
	lsl r1, r1, #3
	sub r0, r1, r0
	lsr r3, r0, #1
	add r0, r5, #0
	add r0, #0x50
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _020906F2
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	add r2, #0x20
	str r1, [sp, #0xc]
	add r5, #0x14
	add r0, r2, #0
	ldr r2, [r4, r5]
	bl sub_0201D78C
	b _0209070C
_020906F2:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020907F8 ; =0x00050600
	add r2, #0x20
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r5, #0x14
	add r0, r2, #0
	ldr r2, [r4, r5]
	bl sub_0201D78C
_0209070C:
	mov r0, #2
	mov r2, #0x99
	str r0, [sp]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r4, #0
	lsl r2, r2, #0x10
	mov r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #5
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _020907F4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x30
	mov r3, #2
	bl sub_020900D8
	mov r0, #1
	mov r2, #0x9a
	str r0, [sp]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x12
	mov r3, #7
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _020907F4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x40
	mov r3, #2
	bl sub_020900D8
	ldr r3, _020907FC ; =0x00000262
	ldrb r0, [r4, r3]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	cmp r0, #0x64
	bhs _02090784
	mov r0, #1
	add r2, r3, #0
	str r0, [sp]
	add r2, #0xe
	ldr r5, [r4, r2]
	add r2, r3, #6
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x15
	sub r2, r5, r2
	mov r3, #7
	bl sub_02090184
	b _02090794
_02090784:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0
	mov r3, #7
	bl sub_02090184
_02090794:
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _020907F4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x50
	mov r3, #2
	bl sub_020900D8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x40
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x50
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020907F0: .word 0x00000688
_020907F4: .word 0x00010200
_020907F8: .word 0x00050600
_020907FC: .word 0x00000262
	thumb_func_end sub_02090578

	thumb_func_start sub_02090800
sub_02090800: ; 0x02090800
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0x13
	bl sub_02092494
	add r4, r0, #0
	ldr r2, [r4, #0x18]
	cmp r2, #0
	beq _02090834
	ldr r0, [r4, #0x14]
	mov r1, #0
	sub r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020908C8 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_02090834:
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _02090856
	ldr r0, [r4, #0x1c]
	mov r1, #0
	sub r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020908C8 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_02090856:
	ldr r2, [r4, #0x28]
	cmp r2, #0
	beq _02090878
	ldr r0, [r4, #0x24]
	mov r1, #0
	sub r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020908C8 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_02090878:
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _0209089A
	ldr r0, [r4, #0x2c]
	mov r1, #0
	sub r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020908C8 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_0209089A:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _020908BC
	ldr r0, [r4, #0x34]
	mov r1, #0
	sub r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020908C8 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_020908BC:
	add r0, r4, #0
	bl sub_0209282C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_020908C8: .word 0x00010200
	thumb_func_end sub_02090800

	thumb_func_start sub_020908CC
sub_020908CC: ; 0x020908CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x14
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0208DD48
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02090098
	add r7, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrb r1, [r1, #0x11]
	cmp r1, #2
	bne _02090924
	mov r0, #0x13
	bl sub_02073C74
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020774C8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02090800
	add r0, r4, #0
	bl sub_020181C4
	b _02090930
_02090924:
	sub r0, #8
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02090800
_02090930:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0201A9A4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020908CC

	thumb_func_start sub_0209093C
sub_0209093C: ; 0x0209093C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r0, #0x24
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xf4
	bl sub_0201A9A4
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x49
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x20
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x40
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x50
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x60
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x70
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201C294
	mov r1, #0x76
	str r1, [sp]
	mov r1, #0x9d
	lsl r1, r1, #2
	ldrh r2, [r4, r1]
	lsl r0, r0, #0x1a
	add r1, r1, #2
	str r2, [sp, #4]
	ldrh r1, [r4, r1]
	lsr r0, r0, #0x18
	mov r2, #0x75
	str r1, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r1, #0
	add r0, r4, #0
	mov r3, #0x77
	str r1, [sp, #0x14]
	bl sub_020901D0
	mov r0, #0
	mov r2, #0x9e
	str r0, [sp]
	lsl r2, r2, #2
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x78
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x10
	mov r3, #1
	bl sub_020900D8
	mov r0, #0
	str r0, [sp]
	ldr r2, _02090BC8 ; =0x0000027A
	add r0, r4, #0
	ldrh r2, [r4, r2]
	mov r1, #0x79
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x20
	mov r3, #1
	bl sub_020900D8
	mov r0, #0
	mov r2, #0x9f
	str r0, [sp]
	lsl r2, r2, #2
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x7a
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x30
	mov r3, #1
	bl sub_020900D8
	mov r0, #0
	str r0, [sp]
	ldr r2, _02090BCC ; =0x0000027E
	add r0, r4, #0
	ldrh r2, [r4, r2]
	mov r1, #0x7b
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x40
	mov r3, #1
	bl sub_020900D8
	mov r0, #0
	mov r2, #0xa
	str r0, [sp]
	lsl r2, r2, #6
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x7c
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x50
	mov r3, #1
	bl sub_020900D8
	ldr r2, _02090BD0 ; =0x00000282
	mov r0, #0x69
	lsl r0, r0, #4
	ldrb r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B6A0
	ldr r0, _02090BD4 ; =0x00000688
	mov r1, #0x7d
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x69
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x60
	mov r3, #0
	bl sub_020900D8
	mov r2, #0x99
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x13
	bl sub_0200B144
	ldr r1, _02090BD0 ; =0x00000282
	ldr r2, _02090BD8 ; =0x00000694
	ldrb r1, [r4, r1]
	ldr r2, [r4, r2]
	add r5, r0, #0
	bl sub_0200B1B8
	add r0, r5, #0
	bl sub_0200B190
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x70
	mov r3, #0
	bl sub_020900D8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x40
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x50
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x60
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x70
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02090BC4: .word 0x00010200
_02090BC8: .word 0x0000027A
_02090BCC: .word 0x0000027E
_02090BD0: .word 0x00000282
_02090BD4: .word 0x00000688
_02090BD8: .word 0x00000694
	thumb_func_end sub_0209093C

	thumb_func_start sub_02090BDC
sub_02090BDC: ; 0x02090BDC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0x34
	bl sub_0201A9A4
	mov r0, #0x59
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _02090C02
	cmp r0, #4
	bne _02090CBA
_02090C02:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	ldr r2, _02090CC0 ; =0x00000688
	mov r1, #0xa5
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090CC4 ; =0x000F0E00
	add r0, r4, #0
	add r1, #0x10
	mov r3, #0
	bl sub_020900D8
	ldr r1, _02090CC8 ; =0x0000029B
	ldr r2, _02090CC0 ; =0x00000688
	ldrb r1, [r4, r1]
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	add r1, #0xa6
	bl sub_0200B1B8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02090CCC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r2, _02090CD0 ; =0x00000694
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	add r0, #0x10
	add r3, r1, #0
	bl sub_0201D78C
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldrb r1, [r1, #0x12]
	cmp r1, #3
	bne _02090CBA
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	ldr r2, _02090CC0 ; =0x00000688
	mov r1, #0xa3
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090CC4 ; =0x000F0E00
	add r0, r4, #0
	mov r3, #0
	bl sub_020900D8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl sub_0208F6DC
_02090CBA:
	add sp, #0x10
	pop {r4, pc}
	nop
_02090CC0: .word 0x00000688
_02090CC4: .word 0x000F0E00
_02090CC8: .word 0x0000029B
_02090CCC: .word 0x00010200
_02090CD0: .word 0x00000694
	thumb_func_end sub_02090BDC

	thumb_func_start sub_02090CD4
sub_02090CD4: ; 0x02090CD4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x44
	bl sub_0201A9A4
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _02090CF4
	add r0, r4, #0
	mov r1, #0x9b
	bl sub_02090064
	b _02090CFC
_02090CF4:
	add r0, r4, #0
	mov r1, #0x81
	bl sub_02090064
_02090CFC:
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x20
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #0
	bl sub_02091188
	add r0, r4, #0
	mov r1, #1
	bl sub_02091188
	add r0, r4, #0
	mov r1, #2
	bl sub_02091188
	add r0, r4, #0
	mov r1, #3
	bl sub_02091188
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02090CD4

	thumb_func_start sub_02090D90
sub_02090D90: ; 0x02090D90
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x54
	bl sub_0201A9A4
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _02090DB0
	add r0, r4, #0
	mov r1, #0x9f
	bl sub_02090064
	b _02090DB8
_02090DB0:
	add r0, r4, #0
	mov r1, #0x9e
	bl sub_02090064
_02090DB8:
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x20
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #0
	bl sub_02091188
	add r0, r4, #0
	mov r1, #1
	bl sub_02091188
	add r0, r4, #0
	mov r1, #2
	bl sub_02091188
	add r0, r4, #0
	mov r1, #3
	bl sub_02091188
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02090D90

	thumb_func_start sub_02090E4C
sub_02090E4C: ; 0x02090E4C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	ldr r2, _02090EC0 ; =0x000006B1
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #0xb7
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090EC4 ; =0x00010200
	add r0, r4, #0
	mov r3, #0
	bl sub_020900D8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	ldr r0, _02090EC0 ; =0x000006B1
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02090EBA
	add r0, r4, #0
	mov r1, #0xb4
	bl sub_02090064
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
_02090EBA:
	add sp, #4
	pop {r3, r4, pc}
	nop
_02090EC0: .word 0x000006B1
_02090EC4: .word 0x00010200
	thumb_func_end sub_02090E4C

	thumb_func_start sub_02090EC8
sub_02090EC8: ; 0x02090EC8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #0xa1
	bl sub_02090064
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _02090EFC
	cmp r0, #4
	bne _02090F6A
_02090EFC:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	ldr r2, _02090F70 ; =0x00000688
	mov r1, #0xa5
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090F74 ; =0x000F0E00
	add r0, r4, #0
	add r1, #0x10
	mov r3, #0
	bl sub_020900D8
	ldr r1, _02090F78 ; =0x0000029B
	ldr r2, _02090F70 ; =0x00000688
	ldrb r1, [r4, r1]
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	add r1, #0xa6
	bl sub_0200B1B8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02090F7C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r2, _02090F80 ; =0x00000694
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	add r0, #0x10
	add r3, r1, #0
	bl sub_0201D78C
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
_02090F6A:
	add sp, #0x10
	pop {r4, pc}
	nop
_02090F70: .word 0x00000688
_02090F74: .word 0x000F0E00
_02090F78: .word 0x0000029B
_02090F7C: .word 0x00010200
_02090F80: .word 0x00000694
	thumb_func_end sub_02090EC8

	thumb_func_start sub_02090F84
sub_02090F84: ; 0x02090F84
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _020910D8 ; =0x00000688
	mov r1, #0xba
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	mov r2, #0x69
	add r4, r0, #0
	str r1, [sp]
	mov r0, #1
	lsl r2, r2, #4
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	add r2, #0x21
	ldrb r2, [r5, r2]
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x69
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	ldr r1, _020910DC ; =0x00000694
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x38
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020910E0 ; =0x00010200
	ldr r2, _020910DC ; =0x00000694
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r0, #0x10
	add r3, r4, #0
	bl sub_0201D78C
	ldr r0, _020910D8 ; =0x00000688
	mov r1, #0xb9
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r4, r0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020910E0 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, r4, #0
	add r0, #0x10
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _020910D8 ; =0x00000688
	mov r1, #0xb8
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	mov r2, #0x69
	add r6, r0, #0
	lsl r2, r2, #4
	add r3, r2, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	add r2, #0x20
	add r3, #0x1f
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	lsl r2, r2, #2
	add r2, r3, r2
	add r2, r2, #1
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x69
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	ldr r1, _020910DC ; =0x00000694
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r4, r0
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020910E0 ; =0x00010200
	ldr r2, _020910DC ; =0x00000694
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r0, #0x10
	bl sub_0201D78C
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020910D8: .word 0x00000688
_020910DC: .word 0x00000694
_020910E0: .word 0x00010200
	thumb_func_end sub_02090F84

	thumb_func_start sub_020910E4
sub_020910E4: ; 0x020910E4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x20
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _02091178 ; =0x000006B2
	mov r1, #3
	ldrb r0, [r4, r0]
	bl sub_020923C0
	ldr r2, _0209117C ; =0x0000068C
	add r1, r0, #0
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02091180 ; =0x000F0E00
	add r0, r4, #0
	add r1, #0x20
	mov r3, #0
	bl sub_020900D8
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, _02091178 ; =0x000006B2
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0x20]
	bl sub_02092424
	ldr r2, _0209117C ; =0x0000068C
	add r1, r0, #0
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02091184 ; =0x00010200
	add r0, r4, #0
	add r1, #0x30
	mov r3, #0
	bl sub_020900D8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	pop {r4, pc}
	; .align 2, 0
_02091178: .word 0x000006B2
_0209117C: .word 0x0000068C
_02091180: .word 0x000F0E00
_02091184: .word 0x00010200
	thumb_func_end sub_020910E4

	thumb_func_start sub_02091188
sub_02091188: ; 0x02091188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x91
	add r7, r1, #0
	lsl r0, r0, #2
	lsl r6, r7, #4
	ldr r4, [r5, r0]
	cmp r7, #4
	beq _020911BA
	lsl r1, r7, #1
	add r2, r5, r1
	add r1, r0, #0
	add r1, #0x40
	ldrh r1, [r2, r1]
	add r2, r0, #0
	add r2, #0x48
	str r1, [sp, #0x20]
	add r1, r5, r7
	ldrb r2, [r1, r2]
	add r0, #0x4c
	str r2, [sp, #0x1c]
	ldrb r0, [r1, r0]
	str r0, [sp, #0x18]
	b _020911CC
_020911BA:
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	ldrh r0, [r0, #0x18]
	str r0, [sp, #0x20]
	bl sub_020790DC
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_020911CC:
	ldr r2, _02091290 ; =0x0000069C
	ldr r1, [sp, #0x20]
	ldr r0, [r5, r2]
	sub r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r0, #2
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02091294 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	ldr r2, _02091298 ; =0x00000694
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r4, r6
	mov r3, #1
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	ldr r2, _0209129C ; =0x00000688
	cmp r0, #0
	beq _02091250
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x87
	bl sub_0200B1B8
	mov r3, #0x10
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020912A0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r2, _02091298 ; =0x00000694
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r4, r6
	bl sub_0201D78C
	add r0, r7, #0
	add r0, #0x8d
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r7, #0x88
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x3c
	str r0, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r2, #0x75
	add r3, r7, #0
	bl sub_020901D0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_02091250:
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x99
	bl sub_0200B1B8
	ldr r1, _02091298 ; =0x00000694
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020912A0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, r6
	lsr r4, r3, #1
	mov r3, #0x3c
	ldr r2, _02091298 ; =0x00000694
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	sub r3, r3, r4
	bl sub_0201D78C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02091290: .word 0x0000069C
_02091294: .word 0x000F0E00
_02091298: .word 0x00000694
_0209129C: .word 0x00000688
_020912A0: .word 0x00010200
	thumb_func_end sub_02091188

	thumb_func_start sub_020912A4
sub_020912A4: ; 0x020912A4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	bl sub_0201A9A4
	mov r0, #0x69
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x50
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x60
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x70
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #2
	bl sub_020790C4
	add r2, r0, #0
	cmp r2, #1
	bhi _02091312
	ldr r2, _020913C8 ; =0x00000688
	mov r1, #0x9a
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	b _02091320
_02091312:
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x96
	mov r3, #3
	bl sub_02090184
_02091320:
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, _020913CC ; =0x00010200
	add r0, r5, #0
	add r1, #0x50
	mov r3, #2
	bl sub_020900D8
	add r0, r4, #0
	mov r1, #4
	bl sub_020790C4
	add r2, r0, #0
	bne _0209134E
	ldr r2, _020913C8 ; =0x00000688
	mov r1, #0x9a
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	b _0209135C
_0209134E:
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x97
	mov r3, #3
	bl sub_02090184
_0209135C:
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, _020913CC ; =0x00010200
	add r0, r5, #0
	add r1, #0x60
	mov r3, #2
	bl sub_020900D8
	ldr r2, _020913D0 ; =0x00000286
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x13
	bl sub_0200B144
	ldr r2, _020913D4 ; =0x00000694
	add r1, r4, #0
	ldr r2, [r5, r2]
	add r6, r0, #0
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, _020913CC ; =0x00010200
	add r0, r5, #0
	add r1, #0x70
	mov r3, #0
	bl sub_020900D8
	add r0, r6, #0
	bl sub_0200B190
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x60
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x70
	bl sub_0201A9A4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_020913C8: .word 0x00000688
_020913CC: .word 0x00010200
_020913D0: .word 0x00000286
_020913D4: .word 0x00000694
	thumb_func_end sub_020912A4

	thumb_func_start sub_020913D8
sub_020913D8: ; 0x020913D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x69
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x50
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x60
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x70
	bl sub_0201AD10
	pop {r4, pc}
	thumb_func_end sub_020913D8

	thumb_func_start sub_02091420
sub_02091420: ; 0x02091420
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldrh r1, [r1, #0x18]
	cmp r1, #0
	beq _02091452
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x40
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #4
	bl sub_02091188
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x40
	bl sub_0201A9A4
	pop {r4, pc}
_02091452:
	sub r0, #0xc8
	add r0, r4, r0
	bl sub_0201A9A4
	pop {r4, pc}
	thumb_func_end sub_02091420

	thumb_func_start sub_0209145C
sub_0209145C: ; 0x0209145C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0201C3C0
	pop {r4, pc}
	thumb_func_end sub_0209145C

	thumb_func_start sub_02091474
sub_02091474: ; 0x02091474
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _020914F4 ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _020914F4 ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, _020914F4 ; =0x000006A5
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_02091188
	ldr r1, _020914F4 ; =0x000006A5
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bl sub_02091188
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _020914F4 ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _020914F4 ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	pop {r4, pc}
	nop
_020914F4: .word 0x000006A5
	thumb_func_end sub_02091474

	thumb_func_start sub_020914F8
sub_020914F8: ; 0x020914F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02091564 ; =0x000006A4
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bne _02091532
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x60
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x70
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r4, #0x70
	b _0209153A
_02091532:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r4, #0x50
_0209153A:
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r2, _02091568 ; =0x00000688
	mov r1, #0x9c
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r2, _0209156C ; =0x00010200
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_020900D8
	add r0, r4, #0
	bl sub_0201A9A4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02091564: .word 0x000006A4
_02091568: .word 0x00000688
_0209156C: .word 0x00010200
	thumb_func_end sub_020914F8

	thumb_func_start sub_02091570
sub_02091570: ; 0x02091570
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r0, #0x50
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020790C4
	bl sub_0209577C
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd2
	mov r3, #0x13
	bl sub_0200B144
	ldr r2, _020915EC ; =0x00000694
	add r1, r4, #0
	ldr r2, [r5, r2]
	add r6, r0, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020915F0 ; =0x00010200
	ldr r2, _020915EC ; =0x00000694
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r0, #0x50
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_0200B190
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020915EC: .word 0x00000694
_020915F0: .word 0x00010200
	thumb_func_end sub_02091570

	thumb_func_start sub_020915F4
sub_020915F4: ; 0x020915F4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x50
	bl sub_0201AD10
	pop {r4, pc}
	thumb_func_end sub_020915F4

	thumb_func_start sub_02091610
sub_02091610: ; 0x02091610
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #4
	bgt _02091634
	cmp r1, #0
	blt _02091652
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0209162A: ; jump table
	.short _0209163A - _0209162A - 2 ; case 0
	.short _0209163E - _0209162A - 2 ; case 1
	.short _02091642 - _0209162A - 2 ; case 2
	.short _02091646 - _0209162A - 2 ; case 3
	.short _0209164A - _0209162A - 2 ; case 4
_02091634:
	cmp r1, #0xfe
	beq _0209164E
	b _02091652
_0209163A:
	mov r5, #0xac
	b _02091654
_0209163E:
	mov r5, #0xae
	b _02091654
_02091642:
	mov r5, #0xaf
	b _02091654
_02091646:
	mov r5, #0xb0
	b _02091654
_0209164A:
	mov r5, #0xad
	b _02091654
_0209164E:
	mov r5, #0xb1
	b _02091654
_02091652:
	mov r5, #0xb2
_02091654:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	ldr r2, _020916A4 ; =0x000003E2
	add r6, #0x20
	add r0, r6, #0
	mov r1, #1
	mov r3, #0xd
	bl sub_0200E060
	add r0, r6, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _020916A8 ; =0x00000688
	add r1, r5, #0
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020916AC ; =0x0001020F
	ldr r2, _020916B0 ; =0x00000694
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r4, r2]
	add r0, r6, #0
	mov r1, #1
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_020916A4: .word 0x000003E2
_020916A8: .word 0x00000688
_020916AC: .word 0x0001020F
_020916B0: .word 0x00000694
	thumb_func_end sub_02091610

	thumb_func_start sub_020916B4
sub_020916B4: ; 0x020916B4
	push {r3, r4, lr}
	sub sp, #4
	bl sub_020B28CC
	bl sub_020BF9AC
	bl sub_020BFB4C
	ldr r0, _02091734 ; =0x04000060
	ldr r1, _02091738 ; =0xFFFFCFFD
	ldrh r2, [r0]
	ldr r3, _0209173C ; =0x0000CFFB
	and r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r4, [r0]
	add r1, r1, #2
	sub r3, #0x1c
	and r4, r2
	mov r2, #8
	orr r2, r4
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _02091740 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _02091744 ; =0x04000540
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, _02091748 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _0209174C ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02091734: .word 0x04000060
_02091738: .word 0xFFFFCFFD
_0209173C: .word 0x0000CFFB
_02091740: .word 0x00007FFF
_02091744: .word 0x04000540
_02091748: .word 0xBFFF0000
_0209174C: .word 0x04000008
	thumb_func_end sub_020916B4

	thumb_func_start sub_02091750
sub_02091750: ; 0x02091750
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020917A4 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bne _0209178E
	bl sub_020241B4
	bl sub_020203EC
	ldr r2, _020917A8 ; =0x04000440
	mov r3, #0
	add r1, r2, #0
	str r3, [r2, #0]
	add r1, #0x14
	str r3, [r1, #0]
	mov r0, #2
	str r0, [r2, #0]
	str r3, [r1, #0]
	bl sub_020AF480
	mov r0, #0x2f
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02091850
	bl sub_020AF480
	add r0, r4, #0
	bl sub_020918EC
_0209178E:
	bl sub_020A73C0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007768
	ldr r0, _020917AC ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_020917A4: .word 0x000006A4
_020917A8: .word 0x04000440
_020917AC: .word 0x04000540
	thumb_func_end sub_02091750

	thumb_func_start sub_020917B0
sub_020917B0: ; 0x020917B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020203B8
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02016114
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02015FB8
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007B6C
	pop {r4, pc}
	thumb_func_end sub_020917B0

	thumb_func_start sub_020917E0
sub_020917E0: ; 0x020917E0
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r3, _02091848 ; =0x020F4FF0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #8
	str r0, [r2, #0]
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	mov r0, #0x13
	bl sub_020203AC
	mov r1, #0xad
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r2, #1
	str r2, [sp]
	ldr r0, [r4, r1]
	lsl r1, r2, #0x10
	str r0, [sp, #4]
	ldr r3, _0209184C ; =0x000005C1
	add r0, sp, #0x10
	add r2, sp, #8
	bl sub_02020738
	mov r2, #0xad
	lsl r2, r2, #2
	mov r1, #0x19
	ldr r2, [r4, r2]
	mov r0, #0
	lsl r1, r1, #0xe
	bl sub_020206BC
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020206B0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020203D4
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_02091848: .word 0x020F4FF0
_0209184C: .word 0x000005C1
	thumb_func_end sub_020917E0

	thumb_func_start sub_02091850
sub_02091850: ; 0x02091850
	push {r4, r5, r6, r7}
	add r4, r0, #0
	ldr r0, _020918B8 ; =0x121400C0
	ldr r1, _020918BC ; =0x040004A4
	ldr r2, _020918C0 ; =0x00003FE8
	str r0, [r1, #0]
	mov r0, #1
	str r0, [r1, #0x5c]
	ldr r0, _020918C4 ; =0x0400048C
	mov r3, #0
	sub r1, #0x24
_02091866:
	str r2, [r1, #0]
	ldrh r7, [r4, #2]
	ldrh r5, [r4]
	ldrh r6, [r4, #4]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	str r6, [r0, #0]
	str r2, [r1, #0]
	ldrh r7, [r4, #8]
	ldrh r5, [r4, #6]
	ldrh r6, [r4, #0xa]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	str r6, [r0, #0]
	str r2, [r1, #0]
	ldrh r7, [r4, #0x14]
	ldrh r5, [r4, #0x12]
	ldrh r6, [r4, #0x16]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	str r6, [r0, #0]
	str r2, [r1, #0]
	ldrh r7, [r4, #0xe]
	ldrh r5, [r4, #0xc]
	ldrh r6, [r4, #0x10]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	add r3, r3, #1
	add r4, #0x18
	str r6, [r0, #0]
	cmp r3, #4
	blo _02091866
	ldr r0, _020918C8 ; =0x04000504
	mov r1, #0
	str r1, [r0, #0]
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_020918B8: .word 0x121400C0
_020918BC: .word 0x040004A4
_020918C0: .word 0x00003FE8
_020918C4: .word 0x0400048C
_020918C8: .word 0x04000504
	thumb_func_end sub_02091850

	thumb_func_start sub_020918CC
sub_020918CC: ; 0x020918CC
	mov r2, #0
	ldrsh r3, [r0, r2]
	ldrsh r2, [r1, r2]
	add r2, r3, r2
	strh r2, [r0]
	mov r2, #2
	ldrsh r3, [r0, r2]
	ldrsh r2, [r1, r2]
	add r2, r3, r2
	strh r2, [r0, #2]
	mov r2, #4
	ldrsh r3, [r0, r2]
	ldrsh r1, [r1, r2]
	add r1, r3, r1
	strh r1, [r0, #4]
	bx lr
	thumb_func_end sub_020918CC

	thumb_func_start sub_020918EC
sub_020918EC: ; 0x020918EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r2, #0x41
	lsl r2, r2, #4
	add r1, r0, #0
	ldr r1, [r1, r2]
	str r0, [sp]
	cmp r1, #4
	bne _02091906
	bl sub_0208FCD4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02091906:
	cmp r1, #3
	bne _02091932
	add r6, r0, #0
	add r7, r2, #0
	mov r0, #0x2f
	mov r5, #0
	sub r7, #0x60
	lsl r0, r0, #4
_02091916:
	add r4, r6, r7
	add r3, r6, r0
	mov r2, #0xc
_0209191C:
	ldrh r1, [r4]
	add r4, r4, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0209191C
	add r5, r5, #1
	add r6, #0x18
	cmp r5, #4
	blo _02091916
	b _020919BC
_02091932:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	sub r2, #0xc0
	add r0, r0, r2
	str r0, [sp, #0x14]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r1, [sp]
	add r2, r0, #0
	add r1, r1, r0
	str r1, [sp, #0x10]
	ldr r1, [sp]
	add r2, #0x66
	add r1, r1, r2
	str r1, [sp, #0xc]
	ldr r1, [sp]
	add r2, r0, #6
	add r1, r1, r2
	str r1, [sp, #8]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x6c
	add r7, r1, r2
	add r2, r0, #0
	add r2, #0xc
	add r6, r1, r2
	add r2, r0, #0
	add r2, #0x72
	add r0, #0x12
	add r4, r1, r2
	add r5, r1, r0
_02091972:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl sub_020918CC
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_020918CC
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020918CC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020918CC
	ldr r0, [sp, #0x14]
	add r7, #0x18
	add r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r6, #0x18
	add r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r4, #0x18
	add r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r5, #0x18
	add r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blo _02091972
_020919BC:
	mov r1, #0x41
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp]
	str r2, [r0, r1]
	ldr r0, [r0, r1]
	cmp r0, #4
	bne _020919DC
	ldr r0, [sp]
	mov r1, #1
	bl sub_0208FB54
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_020919DC:
	ldr r0, [sp]
	mov r1, #0
	bl sub_0208FB54
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020918EC

	thumb_func_start sub_020919E8
sub_020919E8: ; 0x020919E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r1, _02091B68 ; =0x000006A4
	ldrsb r1, [r0, r1]
	cmp r1, #4
	beq _020919F6
	b _02091B62
_020919F6:
	ldr r7, _02091B6C ; =0x020F5030
	mov r4, #0x2f
	ldrh r2, [r7, #8]
	add r1, sp, #0
	lsl r4, r4, #4
	strh r2, [r1, #0x12]
	ldrh r2, [r7, #0xa]
	add r5, r4, #2
	strh r2, [r1, #0x14]
	ldrh r2, [r7, #0xc]
	strh r2, [r1, #0x16]
	ldrh r3, [r1, #0x12]
	strh r3, [r0, r4]
	ldrh r2, [r1, #0x14]
	strh r2, [r0, r5]
	ldrh r6, [r1, #0x16]
	add r5, r4, #4
	strh r6, [r0, r5]
	add r5, r4, #6
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #8
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0xa
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0xc
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0xe
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x10
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x12
	strh r3, [r0, r5]
	add r3, r4, #0
	add r3, #0x14
	strh r2, [r0, r3]
	add r2, r4, #0
	add r2, #0x16
	strh r6, [r0, r2]
	ldrh r2, [r7, #0x3e]
	ldr r7, _02091B70 ; =0x020F5070
	add r5, r4, #0
	strh r2, [r1, #0xc]
	ldrh r2, [r7]
	add r5, #0x1a
	strh r2, [r1, #0xe]
	ldrh r2, [r7, #2]
	strh r2, [r1, #0x10]
	add r2, r4, #0
	ldrh r3, [r1, #0xc]
	add r2, #0x18
	strh r3, [r0, r2]
	ldrh r2, [r1, #0xe]
	strh r2, [r0, r5]
	add r5, r4, #0
	ldrh r6, [r1, #0x10]
	add r5, #0x1c
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x1e
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x20
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x22
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x24
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x26
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x28
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x2a
	strh r3, [r0, r5]
	add r3, r4, #0
	add r3, #0x2c
	strh r2, [r0, r3]
	add r2, r4, #0
	add r2, #0x2e
	strh r6, [r0, r2]
	ldrh r2, [r7, #0x34]
	add r5, r4, #0
	add r5, #0x32
	strh r2, [r1, #6]
	ldrh r2, [r7, #0x36]
	strh r2, [r1, #8]
	ldrh r2, [r7, #0x38]
	strh r2, [r1, #0xa]
	add r2, r4, #0
	ldrh r3, [r1, #6]
	add r2, #0x30
	strh r3, [r0, r2]
	ldrh r2, [r1, #8]
	strh r2, [r0, r5]
	add r5, r4, #0
	ldrh r6, [r1, #0xa]
	add r5, #0x34
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x36
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x38
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x3a
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x3c
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x3e
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x40
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x42
	strh r3, [r0, r5]
	add r3, r4, #0
	add r3, #0x44
	strh r2, [r0, r3]
	add r2, r4, #0
	add r2, #0x46
	strh r6, [r0, r2]
	ldr r2, _02091B74 ; =0x020F50B0
	add r5, r4, #0
	ldrh r3, [r2, #0x2a]
	add r5, #0x4a
	strh r3, [r1]
	ldrh r3, [r2, #0x2c]
	strh r3, [r1, #2]
	ldrh r2, [r2, #0x2e]
	strh r2, [r1, #4]
	add r2, r4, #0
	ldrh r3, [r1]
	add r2, #0x48
	strh r3, [r0, r2]
	ldrh r2, [r1, #2]
	strh r2, [r0, r5]
	add r5, r4, #0
	ldrh r1, [r1, #4]
	add r5, #0x4c
	strh r1, [r0, r5]
	add r5, r4, #0
	add r5, #0x4e
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x50
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x52
	strh r1, [r0, r5]
	add r5, r4, #0
	add r5, #0x54
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x56
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x58
	strh r1, [r0, r5]
	add r5, r4, #0
	add r5, #0x5a
	strh r3, [r0, r5]
	add r3, r4, #0
	add r3, #0x5c
	strh r2, [r0, r3]
	add r4, #0x5e
	strh r1, [r0, r4]
	bl sub_02091D50
_02091B62:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02091B68: .word 0x000006A4
_02091B6C: .word 0x020F5030
_02091B70: .word 0x020F5070
_02091B74: .word 0x020F50B0
	thumb_func_end sub_020919E8

	thumb_func_start sub_02091B78
sub_02091B78: ; 0x02091B78
	push {r4, r5}
	cmp r2, #0xff
	bne _02091B8E
	ldrh r2, [r0]
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
_02091B8E:
	cmp r2, #0
	bne _02091BA2
	ldrh r2, [r0, #6]
	strh r2, [r1]
	ldrh r2, [r0, #8]
	strh r2, [r1, #2]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
_02091BA2:
	mov r3, #6
	ldrsh r5, [r0, r3]
	mov r3, #0xc
	ldrsh r3, [r0, r3]
	add r4, r3, #0
	mul r4, r2
	add r3, r5, r4
	strh r3, [r1]
	mov r3, #8
	ldrsh r5, [r0, r3]
	mov r3, #0xe
	ldrsh r3, [r0, r3]
	add r4, r3, #0
	mul r4, r2
	add r3, r5, r4
	strh r3, [r1, #2]
	mov r3, #0xa
	ldrsh r4, [r0, r3]
	mov r3, #0x10
	ldrsh r0, [r0, r3]
	mul r2, r0
	add r0, r4, r2
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02091B78

	thumb_func_start sub_02091BD4
sub_02091BD4: ; 0x02091BD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	add r6, r2, #0
	sub r7, r1, r0
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	mov r1, #0
	bl sub_020E1108
	bls _02091C28
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	b _02091C4E
_02091C28:
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
	bl sub_020E1740
_02091C4E:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	strh r0, [r6]
	mov r0, #2
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	sub r7, r1, r0
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	mov r1, #0
	bl sub_020E1108
	bls _02091CA0
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	b _02091CC6
_02091CA0:
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
	bl sub_020E1740
_02091CC6:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	strh r0, [r6, #2]
	mov r0, #4
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	sub r4, r1, r0
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	mov r1, #0
	bl sub_020E1108
	bls _02091D18
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	b _02091D3E
_02091D18:
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
	bl sub_020E1740
_02091D3E:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	strh r0, [r6, #4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02091D48: .word 0x45800000
_02091D4C: .word 0x40800000
	thumb_func_end sub_02091BD4

	thumb_func_start sub_02091D50
sub_02091D50: ; 0x02091D50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _02091F18 ; =0x00000295
	add r5, r0, #0
	mov r1, #0x3b
	lsl r1, r1, #4
	ldrb r2, [r5, r2]
	ldr r0, _02091F1C ; =0x020F4FFC
	add r1, r5, r1
	bl sub_02091B78
	ldr r2, _02091F20 ; =0x00000296
	ldr r1, _02091F24 ; =0x000003B6
	ldrb r2, [r5, r2]
	ldr r0, _02091F28 ; =0x020F500E
	add r1, r5, r1
	bl sub_02091B78
	ldr r2, _02091F2C ; =0x00000297
	ldr r1, _02091F30 ; =0x000003C2
	ldrb r2, [r5, r2]
	ldr r0, _02091F34 ; =0x020F5020
	add r1, r5, r1
	bl sub_02091B78
	mov r1, #0xef
	lsl r1, r1, #2
	ldr r0, _02091F38 ; =0x020F5032
	add r1, r5, r1
	mov r2, #0
	bl sub_02091B78
	ldr r2, _02091F3C ; =0x00000299
	mov r1, #0xf2
	lsl r1, r1, #2
	ldrb r2, [r5, r2]
	ldr r0, _02091F40 ; =0x020F5044
	add r1, r5, r1
	bl sub_02091B78
	ldr r2, _02091F18 ; =0x00000295
	ldr r1, _02091F44 ; =0x000003CE
	ldrb r2, [r5, r2]
	ldr r0, _02091F48 ; =0x020F5056
	add r1, r5, r1
	bl sub_02091B78
	ldr r1, _02091F4C ; =0x000003DA
	ldr r0, _02091F50 ; =0x020F5068
	add r1, r5, r1
	mov r2, #0
	bl sub_02091B78
	mov r2, #0xa6
	lsl r2, r2, #2
	mov r1, #0xf5
	lsl r1, r1, #2
	ldrb r2, [r5, r2]
	ldr r0, _02091F54 ; =0x020F507A
	add r1, r5, r1
	bl sub_02091B78
	ldr r2, _02091F3C ; =0x00000299
	mov r1, #0x3e
	lsl r1, r1, #4
	ldrb r2, [r5, r2]
	ldr r0, _02091F58 ; =0x020F508C
	add r1, r5, r1
	bl sub_02091B78
	ldr r1, _02091F5C ; =0x000003E6
	ldr r0, _02091F60 ; =0x020F509E
	add r1, r5, r1
	mov r2, #0
	bl sub_02091B78
	ldr r2, _02091F2C ; =0x00000297
	ldr r1, _02091F64 ; =0x000003F2
	ldrb r2, [r5, r2]
	ldr r0, _02091F68 ; =0x020F50B0
	add r1, r5, r1
	bl sub_02091B78
	mov r2, #0xa6
	lsl r2, r2, #2
	mov r1, #0xfb
	lsl r1, r1, #2
	ldrb r2, [r5, r2]
	ldr r0, _02091F6C ; =0x020F50C2
	add r1, r5, r1
	bl sub_02091B78
	mov r1, #0xfe
	lsl r1, r1, #2
	ldr r0, _02091F70 ; =0x020F50D4
	add r1, r5, r1
	mov r2, #0
	bl sub_02091B78
	ldr r2, _02091F20 ; =0x00000296
	ldr r1, _02091F74 ; =0x000003FE
	ldrb r2, [r5, r2]
	ldr r0, _02091F78 ; =0x020F50E6
	add r1, r5, r1
	bl sub_02091B78
	ldr r2, _02091F2C ; =0x00000297
	ldr r1, _02091F7C ; =0x0000040A
	ldrb r2, [r5, r2]
	ldr r0, _02091F80 ; =0x020F50F8
	add r1, r5, r1
	bl sub_02091B78
	mov r2, #0xa6
	lsl r2, r2, #2
	ldr r1, _02091F84 ; =0x00000404
	ldrb r2, [r5, r2]
	ldr r0, _02091F88 ; =0x020F510A
	add r1, r5, r1
	bl sub_02091B78
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0x35
	lsl r0, r0, #4
	add r1, r5, r0
	str r1, [sp, #0x20]
	add r1, r0, #0
	add r1, #0x60
	add r1, r5, r1
	str r1, [sp, #0x1c]
	add r1, r0, #0
	sub r1, #0x60
	add r1, r5, r1
	str r1, [sp, #0x18]
	add r1, r0, #6
	add r1, r5, r1
	str r1, [sp, #0x14]
	add r1, r0, #0
	add r1, #0x66
	add r1, r5, r1
	str r1, [sp, #0x10]
	add r1, r0, #0
	sub r1, #0x5a
	add r1, r5, r1
	str r1, [sp, #0xc]
	add r1, r0, #0
	add r1, #0xc
	add r1, r5, r1
	str r1, [sp, #8]
	add r1, r0, #0
	add r1, #0x6c
	add r1, r5, r1
	str r1, [sp, #4]
	add r1, r0, #0
	sub r1, #0x54
	add r1, r5, r1
	str r1, [sp]
	add r1, r0, #0
	add r1, #0x12
	add r7, r5, r1
	add r1, r0, #0
	add r1, #0x72
	sub r0, #0x4e
	add r6, r5, r1
	add r4, r5, r0
_02091E9C:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	bl sub_02091BD4
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_02091BD4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_02091BD4
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02091BD4
	ldr r0, [sp, #0x20]
	add r7, #0x18
	add r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r6, #0x18
	add r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r4, #0x18
	add r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #4
	blo _02091E9C
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02091F18: .word 0x00000295
_02091F1C: .word 0x020F4FFC
_02091F20: .word 0x00000296
_02091F24: .word 0x000003B6
_02091F28: .word 0x020F500E
_02091F2C: .word 0x00000297
_02091F30: .word 0x000003C2
_02091F34: .word 0x020F5020
_02091F38: .word 0x020F5032
_02091F3C: .word 0x00000299
_02091F40: .word 0x020F5044
_02091F44: .word 0x000003CE
_02091F48: .word 0x020F5056
_02091F4C: .word 0x000003DA
_02091F50: .word 0x020F5068
_02091F54: .word 0x020F507A
_02091F58: .word 0x020F508C
_02091F5C: .word 0x000003E6
_02091F60: .word 0x020F509E
_02091F64: .word 0x000003F2
_02091F68: .word 0x020F50B0
_02091F6C: .word 0x020F50C2
_02091F70: .word 0x020F50D4
_02091F74: .word 0x000003FE
_02091F78: .word 0x020F50E6
_02091F7C: .word 0x0000040A
_02091F80: .word 0x020F50F8
_02091F84: .word 0x00000404
_02091F88: .word 0x020F510A
	thumb_func_end sub_02091D50

	thumb_func_start sub_02091F8C
sub_02091F8C: ; 0x02091F8C
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	mov r0, #0x13
	bl sub_0200762C
	mov r1, #0xae
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl sub_0208DD48
	add r1, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	add r0, sp, #0x10
	bne _02091FBE
	mov r2, #2
	mov r3, #0
	bl sub_02075F0C
	b _02091FC4
_02091FBE:
	mov r2, #2
	bl sub_02075EF4
_02091FC4:
	mov r2, #0xaf
	lsl r2, r2, #2
	mov r0, #0x6a
	add r1, r4, r2
	sub r2, #0x60
	lsl r0, r0, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #1
	bl sub_020789BC
	mov r1, #0x97
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	add r1, #0x42
	ldrh r1, [r4, r1]
	mov r2, #0x1c
	bl sub_020759CC
	mov r1, #1
	eor r0, r1
	mov r1, #0xbb
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	mov r2, #0
	str r2, [sp]
	sub r0, #0x30
	str r2, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	sub r1, #0x34
	ldr r0, [r4, r1]
	add r1, sp, #0x10
	mov r2, #0x34
	mov r3, #0x68
	bl sub_02007C34
	mov r2, #0xba
	lsl r2, r2, #2
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	add r2, r2, #4
	ldr r2, [r4, r2]
	mov r1, #0x23
	bl sub_02007DEC
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end sub_02091F8C

	thumb_func_start sub_02092028
sub_02092028: ; 0x02092028
	push {r3, r4, lr}
	sub sp, #0xc
	mov r2, #0x2a
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _02092062
	mov r0, #2
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x4c
	ldr r0, [r4, r0]
	add r1, r2, #0
	str r0, [sp, #4]
	mov r3, #0
	mov r0, #0x6a
	str r3, [sp, #8]
	lsl r0, r0, #4
	add r1, #0x44
	add r2, #0x48
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl sub_020789F4
	add sp, #0xc
	pop {r3, r4, pc}
_02092062:
	add r2, #0x48
	ldr r0, [r4, r2]
	mov r1, #1
	bl sub_02007B98
	mov r3, #0xbb
	lsl r3, r3, #2
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, r3]
	add r1, r3, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	sub r2, r3, #4
	mov r0, #0x6a
	sub r3, #0x90
	lsl r0, r0, #4
	sub r1, #8
	ldrh r3, [r4, r3]
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl sub_020789F4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02092028

	thumb_func_start sub_02092098
sub_02092098: ; 0x02092098
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02016114
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007B6C
	add r0, r4, #0
	bl sub_02091F8C
	add r0, r4, #0
	bl sub_02092028
	pop {r4, pc}
	thumb_func_end sub_02092098

	thumb_func_start sub_020920C0
sub_020920C0: ; 0x020920C0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r1, [r0, #0x12]
	cmp r1, #3
	bhi _02092110
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020920DC: ; jump table
	.short _020920E4 - _020920DC - 2 ; case 0
	.short _020920E4 - _020920DC - 2 ; case 1
	.short _02092110 - _020920DC - 2 ; case 2
	.short _02092110 - _020920DC - 2 ; case 3
_020920E4:
	ldr r0, [r0, #0x2c]
	ldr r1, _02092128 ; =0x000006A7
	cmp r0, #0
	beq _020920F6
	ldrb r2, [r4, r1]
	mov r0, #0xf
	bic r2, r0
	strb r2, [r4, r1]
	b _0209211E
_020920F6:
	ldrb r2, [r4, r1]
	mov r0, #0xf
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r4, r1]
	mov r1, #4
	ldr r0, [r4, #0]
	mov r2, #0
	add r3, r1, #0
	bl sub_0201C63C
	b _0209211E
_02092110:
	ldr r1, _02092128 ; =0x000006A7
	mov r0, #0xf
	ldrb r2, [r4, r1]
	bic r2, r0
	mov r0, #0xf
	orr r0, r2
	strb r0, [r4, r1]
_0209211E:
	add r0, r4, #0
	bl sub_0209219C
	pop {r4, pc}
	nop
_02092128: .word 0x000006A7
	thumb_func_end sub_020920C0

	thumb_func_start sub_0209212C
sub_0209212C: ; 0x0209212C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0]
	add r4, r1, #0
	mov r1, #4
	add r5, r2, #0
	bl sub_02019FE4
	add r7, r0, #0
	lsl r0, r5, #2
	add r1, r5, r0
	ldrb r2, [r4]
	mov r0, #1
	mov r3, #0
	add r5, r2, #0
	and r5, r0
	mov r0, #0xf
	mul r0, r5
	lsr r5, r2, #1
	mov r2, #0x96
	mul r2, r5
	add r0, r0, r2
	add r0, r1, r0
	add r0, #0x1e
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov ip, r0
_02092160:
	mov r0, #0x1e
	add r1, r3, #0
	mul r1, r0
	mov r0, ip
	mov r2, #0
	add r5, r0, r1
_0209216C:
	ldrb r0, [r4, #1]
	ldrb r6, [r4, #3]
	lsl r1, r0, #0xc
	add r0, r2, r5
	add r1, r1, r0
	add r6, r3, r6
	lsl r6, r6, #5
	ldrb r0, [r4, #2]
	add r6, r2, r6
	add r0, r0, r6
	lsl r0, r0, #1
	strh r1, [r7, r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #5
	blo _0209216C
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #5
	blo _02092160
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209212C

	thumb_func_start sub_0209219C
sub_0209219C: ; 0x0209219C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _020921DC ; =0x000006A7
	ldrb r0, [r6, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #0xf
	beq _020921D8
	lsl r1, r0, #2
	ldr r0, _020921E0 ; =0x02100D84
	mov r5, #0
	ldr r4, [r0, r1]
	add r7, r5, #0
_020921B6:
	lsl r1, r5, #2
	ldrb r0, [r4, r1]
	cmp r0, #0xff
	beq _020921D0
	add r0, r6, #0
	add r1, r4, r1
	add r2, r7, #0
	bl sub_0209212C
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _020921B6
_020921D0:
	ldr r0, [r6, #0]
	mov r1, #4
	bl sub_0201C3C0
_020921D8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020921DC: .word 0x000006A7
_020921E0: .word 0x02100D84
	thumb_func_end sub_0209219C

	thumb_func_start sub_020921E4
sub_020921E4: ; 0x020921E4
	push {r3, lr}
	bl sub_020921FC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _020921F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
_020921F8:
	mov r0, #0xff
	pop {r3, pc}
	thumb_func_end sub_020921E4

	thumb_func_start sub_020921FC
sub_020921FC: ; 0x020921FC
	push {r3, lr}
	ldr r1, _0209221C ; =0x000006A7
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #0xf
	bne _02092210
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_02092210:
	lsl r1, r0, #2
	ldr r0, _02092220 ; =0x02100D78
	ldr r0, [r0, r1]
	bl sub_02022664
	pop {r3, pc}
	; .align 2, 0
_0209221C: .word 0x000006A7
_02092220: .word 0x02100D78
	thumb_func_end sub_020921FC

	thumb_func_start sub_02092224
sub_02092224: ; 0x02092224
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0209227C ; =0x000006A7
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #0xf
	bne _0209223E
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0209223E:
	lsl r1, r0, #2
	ldr r0, _02092280 ; =0x02100D78
	ldr r0, [r0, r1]
	bl sub_02022644
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02092276
	ldr r1, _02092284 ; =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _02092288 ; =0x021BF6BC
	ldr r0, [r5, #0]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	mov r1, #4
	bl sub_0201C784
	cmp r0, #0
	bne _02092276
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02092276:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209227C: .word 0x000006A7
_02092280: .word 0x02100D78
_02092284: .word 0x0000FFFE
_02092288: .word 0x021BF6BC
	thumb_func_end sub_02092224

	thumb_func_start sub_0209228C
sub_0209228C: ; 0x0209228C
	push {r4, r5, r6, lr}
	ldr r1, _02092358 ; =0x000006A7
	add r5, r0, #0
	ldrb r2, [r5, r1]
	lsl r2, r2, #0x1c
	lsr r3, r2, #0x1a
	ldr r2, _0209235C ; =0x02100D84
	ldr r4, [r2, r3]
	add r2, r1, #6
	ldrb r2, [r5, r2]
	cmp r2, #0
	beq _020922AE
	cmp r2, #1
	beq _020922E8
	cmp r2, #2
	beq _020922F0
	b _02092352
_020922AE:
	sub r1, #0xc3
	add r0, r1, #0
	bl sub_02005748
	add r0, r5, #0
	bl sub_0209219C
	ldr r1, _02092360 ; =0x000006AE
	add r0, r5, #0
	ldrb r1, [r5, r1]
	mov r2, #2
	lsl r1, r1, #2
	add r1, r4, r1
	bl sub_0209212C
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
	add r0, r5, #0
	bl sub_0208F600
	ldr r0, _02092364 ; =0x000006AC
	mov r1, #0
	strb r1, [r5, r0]
	mov r1, #1
	add r0, r0, #1
	strb r1, [r5, r0]
	b _02092352
_020922E8:
	mov r2, #2
	add r0, r1, #6
	strb r2, [r5, r0]
	b _02092352
_020922F0:
	add r2, r1, #5
	ldrb r2, [r5, r2]
	cmp r2, #3
	beq _02092304
	add r0, r1, #5
	ldrb r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #5
	strb r2, [r5, r0]
	b _02092352
_02092304:
	bl sub_0208F684
	ldr r0, _02092360 ; =0x000006AE
	ldrb r6, [r5, r0]
	add r0, r5, #0
	bl sub_02092224
	cmp r6, r0
	beq _02092352
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _0209233A
	lsl r1, r6, #2
	ldrb r0, [r4, r1]
	cmp r0, #1
	beq _0209233A
	cmp r0, #7
	beq _0209233A
	add r0, r5, #0
	add r1, r4, r1
	mov r2, #0
	bl sub_0209212C
	b _02092346
_0209233A:
	lsl r1, r6, #2
	add r0, r5, #0
	add r1, r4, r1
	mov r2, #1
	bl sub_0209212C
_02092346:
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
	mov r0, #1
	pop {r4, r5, r6, pc}
_02092352:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02092358: .word 0x000006A7
_0209235C: .word 0x02100D84
_02092360: .word 0x000006AE
_02092364: .word 0x000006AC
	thumb_func_end sub_0209228C

	thumb_func_start sub_02092368
sub_02092368: ; 0x02092368
	push {r4, r5}
	ldr r4, _0209239C ; =0x000006A7
	ldrb r3, [r0, r4]
	lsl r3, r3, #0x1c
	lsr r5, r3, #0x1a
	ldr r3, _020923A0 ; =0x02100D84
	ldr r3, [r3, r5]
	add r5, r4, #7
	ldrb r5, [r0, r5]
	lsl r5, r5, #2
	add r5, r3, r5
	ldrb r5, [r5, #2]
	lsl r5, r5, #3
	add r5, #0x14
	strh r5, [r1]
	add r1, r4, #7
	ldrb r0, [r0, r1]
	lsl r0, r0, #2
	add r0, r3, r0
	ldrb r0, [r0, #3]
	lsl r0, r0, #3
	add r0, #0x14
	strh r0, [r2]
	pop {r4, r5}
	bx lr
	nop
_0209239C: .word 0x000006A7
_020923A0: .word 0x02100D84
	thumb_func_end sub_02092368

	thumb_func_start sub_020923A4
sub_020923A4: ; 0x020923A4
	ldr r2, _020923B8 ; =0x000006A7
	ldrb r0, [r0, r2]
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1a
	ldr r0, _020923BC ; =0x02100D84
	ldr r2, [r0, r2]
	lsl r0, r1, #2
	ldrb r0, [r2, r0]
	bx lr
	nop
_020923B8: .word 0x000006A7
_020923BC: .word 0x02100D84
	thumb_func_end sub_020923A4

	thumb_func_start sub_020923C0
sub_020923C0: ; 0x020923C0
	cmp r1, #4
	bhi _0209240C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020923D0: ; jump table
	.short _020923DA - _020923D0 - 2 ; case 0
	.short _020923E4 - _020923D0 - 2 ; case 1
	.short _020923EE - _020923D0 - 2 ; case 2
	.short _020923F8 - _020923D0 - 2 ; case 3
	.short _02092402 - _020923D0 - 2 ; case 4
_020923DA:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02092410 ; =0x020F51AC
	ldr r0, [r0, r1]
	bx lr
_020923E4:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02092414 ; =0x020F51B0
	ldrh r0, [r0, r1]
	bx lr
_020923EE:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02092418 ; =0x020F51B2
	ldrh r0, [r0, r1]
	bx lr
_020923F8:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _0209241C ; =0x020F51B4
	ldrh r0, [r0, r1]
	bx lr
_02092402:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02092420 ; =0x020F51B6
	ldrh r0, [r0, r1]
	bx lr
_0209240C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02092410: .word 0x020F51AC
_02092414: .word 0x020F51B0
_02092418: .word 0x020F51B2
_0209241C: .word 0x020F51B4
_02092420: .word 0x020F51B6
	thumb_func_end sub_020923C0

	thumb_func_start sub_02092424
sub_02092424: ; 0x02092424
	mov r2, #0xc
	mul r2, r1
	ldr r1, _02092440 ; =0x020F51B6
	ldrh r2, [r1, r2]
	mov r1, #2
	lsl r1, r1, #0xe
	tst r1, r2
	beq _0209243C
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	ldrb r2, [r0, r1]
	add r2, #0x92
_0209243C:
	add r0, r2, #0
	bx lr
	; .align 2, 0
_02092440: .word 0x020F51B6
	thumb_func_end sub_02092424

	thumb_func_start sub_02092444
sub_02092444: ; 0x02092444
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02092460 ; =0x020F51B6
	ldrh r1, [r0, r1]
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r1
	beq _0209245A
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bx lr
_0209245A:
	mov r0, #0xff
	bx lr
	nop
_02092460: .word 0x020F51B6
	thumb_func_end sub_02092444

	thumb_func_start sub_02092464
sub_02092464: ; 0x02092464
	ldr r3, _02092488 ; =0x020F51AC
	mov r2, #0
_02092468:
	ldr r1, [r3, #0]
	cmp r0, r1
	bne _0209247A
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, _0209248C ; =0x020F51B4
	ldrh r0, [r0, r1]
	bx lr
_0209247A:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0x50
	blo _02092468
	ldr r0, _02092490 ; =0x0000FFFF
	bx lr
	nop
_02092488: .word 0x020F51AC
_0209248C: .word 0x020F51B4
_02092490: .word 0x0000FFFF
	thumb_func_end sub_02092464

	thumb_func_start sub_02092494
sub_02092494: ; 0x02092494
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #0x3c
	bl sub_02018144
	add r4, r0, #0
	ldr r2, _0209280C ; =0x000001C7
	str r7, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	str r0, [r4, #4]
	ldr r2, [r4, #0]
	mov r0, #9
	mov r1, #0x20
	bl sub_0200B368
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0]
	bl sub_02092E8C
	cmp r0, #0x14
	bls _020924EC
	b _02092828
_020924EC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020924F8: ; jump table
	.short _02092522 - _020924F8 - 2 ; case 0
	.short _0209254E - _020924F8 - 2 ; case 1
	.short _0209257A - _020924F8 - 2 ; case 2
	.short _020925A6 - _020924F8 - 2 ; case 3
	.short _020925D2 - _020924F8 - 2 ; case 4
	.short _020925FE - _020924F8 - 2 ; case 5
	.short _0209262A - _020924F8 - 2 ; case 6
	.short _02092656 - _020924F8 - 2 ; case 7
	.short _02092682 - _020924F8 - 2 ; case 8
	.short _020926AE - _020924F8 - 2 ; case 9
	.short _020926D0 - _020924F8 - 2 ; case 10
	.short _020926F2 - _020924F8 - 2 ; case 11
	.short _02092714 - _020924F8 - 2 ; case 12
	.short _02092736 - _020924F8 - 2 ; case 13
	.short _02092758 - _020924F8 - 2 ; case 14
	.short _0209277A - _020924F8 - 2 ; case 15
	.short _020927A6 - _020924F8 - 2 ; case 16
	.short _020927C0 - _020924F8 - 2 ; case 17
	.short _020927D8 - _020924F8 - 2 ; case 18
	.short _020927F2 - _020924F8 - 2 ; case 19
	.short _02092810 - _020924F8 - 2 ; case 20
_02092522:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x31
	bl sub_020928A0
	mov r0, #6
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #7
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_0209254E:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x32
	bl sub_020928A0
	mov r0, #6
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #7
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_0209257A:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x33
	bl sub_020928A0
	mov r0, #6
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #7
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_020925A6:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x34
	bl sub_020928A0
	mov r0, #8
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #9
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_020925D2:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x35
	bl sub_020928A0
	mov r0, #8
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #9
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_020925FE:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x36
	bl sub_020928A0
	mov r0, #8
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #9
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_0209262A:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x37
	bl sub_020928A0
	mov r0, #8
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #9
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_02092656:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x38
	bl sub_020928A0
	mov r0, #7
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #8
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_02092682:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x39
	bl sub_020928A0
	mov r0, #7
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #8
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_020926AE:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3a
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_020926D0:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3b
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_020926F2:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3c
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_02092714:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3d
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_02092736:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3e
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_02092758:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x3f
	bl sub_020928A0
	mov r0, #9
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	b _02092828
_0209277A:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl sub_02092878
	mov r0, #2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x40
	bl sub_020929C0
	mov r0, #6
	str r0, [r4, #0x24]
	add r0, r4, #0
	bl sub_02092C24
	mov r0, #7
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl sub_02092E10
	b _02092828
_020927A6:
	mov r0, #1
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x65
	mov r2, #0
	bl sub_02092B1C
	mov r0, #6
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl sub_02092E4C
	b _02092828
_020927C0:
	mov r2, #1
	add r0, r4, #0
	mov r1, #0x66
	str r2, [r4, #0x1c]
	bl sub_02092B1C
	mov r0, #6
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl sub_02092E4C
	b _02092828
_020927D8:
	mov r0, #1
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x67
	mov r2, #0
	bl sub_02092B1C
	mov r0, #6
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl sub_02092E4C
	b _02092828
_020927F2:
	mov r2, #1
	add r0, r4, #0
	mov r1, #0x67
	str r2, [r4, #0x1c]
	bl sub_02092B1C
	mov r0, #6
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl sub_02092E4C
	b _02092828
	nop
_0209280C: .word 0x000001C7
_02092810:
	mov r0, #1
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0x68
	mov r2, #0
	bl sub_02092B1C
	mov r0, #6
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl sub_02092E4C
_02092828:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02092494

	thumb_func_start sub_0209282C
sub_0209282C: ; 0x0209282C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0209283A
	bl sub_020181C4
_0209283A:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02092844
	bl sub_020181C4
_02092844:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0209284E
	bl sub_020181C4
_0209284E:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02092858
	bl sub_020181C4
_02092858:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _02092862
	bl sub_020181C4
_02092862:
	ldr r0, [r4, #8]
	bl sub_0200B3F0
	ldr r0, [r4, #4]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209282C

	thumb_func_start sub_02092878
sub_02092878: ; 0x02092878
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02075BCC
	add r4, r0, #0
	cmp r4, #0x18
	bgt _0209289E
	ldr r1, [r5, #0]
	mov r0, #0x48
	bl sub_02023790
	str r0, [r5, #0x18]
	add r4, #0x18
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x18]
	add r1, r4, #0
	bl sub_0200B1B8
_0209289E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02092878

	thumb_func_start sub_020928A0
sub_020928A0: ; 0x020928A0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #9
	ldr r1, [r5, #0]
	lsl r0, r0, #6
	bl sub_02023790
	add r4, r0, #0
	mov r0, #9
	ldr r1, [r5, #0]
	lsl r0, r0, #6
	bl sub_02023790
	str r0, [r5, #0x20]
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0xc]
	mov r1, #0x95
	mov r2, #0
	bl sub_02074470
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x96
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_0200C2E0
	ldr r0, [r5, #0xc]
	mov r1, #0x97
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #2
	ldr r0, [r5, #8]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x9c
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #3
	ldr r0, [r5, #8]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #4
	bl sub_0200BECC
	ldr r0, [r5, #0xc]
	mov r1, #0x92
	mov r2, #0
	bl sub_02074470
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #5
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x93
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #6
	bl sub_0200C2E0
	ldr r0, [r5, #0xc]
	mov r1, #0x94
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #7
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #8
	bl sub_0200BECC
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x20]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020928A0

	thumb_func_start sub_020929C0
sub_020929C0: ; 0x020929C0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r1, #0
	mov r0, #0x12
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	bl sub_02023790
	add r5, r0, #0
	mov r0, #0x12
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	bl sub_02023790
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0200B1B8
	ldr r0, [r4, #0xc]
	mov r1, #0x95
	mov r2, #0
	bl sub_02074470
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0200B60C
	ldr r0, [r4, #0xc]
	mov r1, #0x96
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0200C2E0
	ldr r0, [r4, #0xc]
	mov r1, #0x97
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #2
	ldr r0, [r4, #8]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [r4, #0xc]
	mov r1, #0x9c
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #3
	ldr r0, [r4, #8]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [r4, #0xc]
	mov r1, #0x7a
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xf
	bhi _02092A90
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02092A70: ; jump table
	.short _02092A90 - _02092A70 - 2 ; case 0
	.short _02092ACC - _02092A70 - 2 ; case 1
	.short _02092ACC - _02092A70 - 2 ; case 2
	.short _02092ACC - _02092A70 - 2 ; case 3
	.short _02092AA4 - _02092A70 - 2 ; case 4
	.short _02092AA4 - _02092A70 - 2 ; case 5
	.short _02092A90 - _02092A70 - 2 ; case 6
	.short _02092AB8 - _02092A70 - 2 ; case 7
	.short _02092AB8 - _02092A70 - 2 ; case 8
	.short _02092A90 - _02092A70 - 2 ; case 9
	.short _02092AF4 - _02092A70 - 2 ; case 10
	.short _02092AF4 - _02092A70 - 2 ; case 11
	.short _02092AF4 - _02092A70 - 2 ; case 12
	.short _02092A90 - _02092A70 - 2 ; case 13
	.short _02092A90 - _02092A70 - 2 ; case 14
	.short _02092AE0 - _02092A70 - 2 ; case 15
_02092A90:
	mov r0, #1
	mov r1, #7
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
	b _02092B06
_02092AA4:
	mov r0, #1
	mov r1, #3
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
	b _02092B06
_02092AB8:
	mov r0, #1
	mov r1, #4
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
	b _02092B06
_02092ACC:
	mov r0, #1
	mov r1, #5
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
	b _02092B06
_02092AE0:
	mov r0, #1
	mov r1, #8
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
	b _02092B06
_02092AF4:
	mov r0, #1
	mov r1, #7
	bl sub_02017070
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_0200BECC
_02092B06:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x20]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020929C0

	thumb_func_start sub_02092B1C
sub_02092B1C: ; 0x02092B1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x5a
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r6, r2, #0
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x5a
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	bl sub_02023790
	str r0, [r5, #0x20]
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0200B1B8
	cmp r6, #0
	ldr r0, [r5, #0xc]
	bne _02092BB0
	mov r1, #0x92
	mov r2, #0
	bl sub_02074470
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #5
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x93
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #6
	bl sub_0200C2E0
	ldr r0, [r5, #0xc]
	mov r1, #0x94
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #7
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #8
	bl sub_0200BECC
	b _02092C10
_02092BB0:
	mov r1, #0x95
	mov r2, #0
	bl sub_02074470
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #5
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x96
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #6
	bl sub_0200C2E0
	ldr r0, [r5, #0xc]
	mov r1, #0x97
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #7
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r5, #0xc]
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #8]
	mov r1, #8
	bl sub_0200BECC
_02092C10:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x20]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02092B1C

	thumb_func_start sub_02092C24
sub_02092C24: ; 0x02092C24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #0x48
	bl sub_02023790
	str r0, [r4, #0x28]
	ldr r0, [r4, #0xc]
	mov r1, #0x46
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x48
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r1, #0x49
	mov r2, #0
	bl sub_02074470
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r1, #0
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_02074470
	mov r1, #6
	bl sub_020E2178
	cmp r1, #5
	bhi _02092CA8
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02092C9C: ; jump table
	.short _02092CA8 - _02092C9C - 2 ; case 0
	.short _02092CE0 - _02092C9C - 2 ; case 1
	.short _02092D16 - _02092C9C - 2 ; case 2
	.short _02092D4C - _02092C9C - 2 ; case 3
	.short _02092D82 - _02092C9C - 2 ; case 4
	.short _02092DB8 - _02092C9C - 2 ; case 5
_02092CA8:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, r0, #0
	mov r5, #0
	cmp r2, r1
	bge _02092CB8
	mov r5, #1
	add r0, r1, #0
_02092CB8:
	ldr r1, [sp, #4]
	cmp r0, r1
	bge _02092CC2
	mov r5, #2
	add r0, r1, #0
_02092CC2:
	ldr r1, [sp]
	cmp r0, r1
	bge _02092CCC
	mov r5, #3
	add r0, r1, #0
_02092CCC:
	cmp r0, r7
	bge _02092CD4
	mov r5, #4
	add r0, r7, #0
_02092CD4:
	cmp r0, r6
	blt _02092CDA
	b _02092DEC
_02092CDA:
	mov r5, #5
	add r0, r6, #0
	b _02092DEC
_02092CE0:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, r0, #0
	mov r5, #1
	cmp r2, r1
	bge _02092CF0
	mov r5, #2
	add r0, r1, #0
_02092CF0:
	ldr r1, [sp]
	cmp r0, r1
	bge _02092CFA
	mov r5, #3
	add r0, r1, #0
_02092CFA:
	cmp r0, r7
	bge _02092D02
	mov r5, #4
	add r0, r7, #0
_02092D02:
	cmp r0, r6
	bge _02092D0A
	mov r5, #5
	add r0, r6, #0
_02092D0A:
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _02092DEC
	mov r5, #0
	add r0, r1, #0
	b _02092DEC
_02092D16:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r2, r0, #0
	mov r5, #2
	cmp r2, r1
	bge _02092D26
	mov r5, #3
	add r0, r1, #0
_02092D26:
	cmp r0, r7
	bge _02092D2E
	mov r5, #4
	add r0, r7, #0
_02092D2E:
	cmp r0, r6
	bge _02092D36
	mov r5, #5
	add r0, r6, #0
_02092D36:
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _02092D40
	mov r5, #0
	add r0, r1, #0
_02092D40:
	ldr r1, [sp, #8]
	cmp r0, r1
	bge _02092DEC
	mov r5, #1
	add r0, r1, #0
	b _02092DEC
_02092D4C:
	ldr r0, [sp]
	mov r5, #3
	add r1, r0, #0
	cmp r1, r7
	bge _02092D5A
	mov r5, #4
	add r0, r7, #0
_02092D5A:
	cmp r0, r6
	bge _02092D62
	mov r5, #5
	add r0, r6, #0
_02092D62:
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _02092D6C
	mov r5, #0
	add r0, r1, #0
_02092D6C:
	ldr r1, [sp, #8]
	cmp r0, r1
	bge _02092D76
	mov r5, #1
	add r0, r1, #0
_02092D76:
	ldr r1, [sp, #4]
	cmp r0, r1
	bge _02092DEC
	mov r5, #2
	add r0, r1, #0
	b _02092DEC
_02092D82:
	mov r5, #4
	add r0, r7, #0
	cmp r7, r6
	bge _02092D8E
	mov r5, #5
	add r0, r6, #0
_02092D8E:
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _02092D98
	mov r5, #0
	add r0, r1, #0
_02092D98:
	ldr r1, [sp, #8]
	cmp r0, r1
	bge _02092DA2
	mov r5, #1
	add r0, r1, #0
_02092DA2:
	ldr r1, [sp, #4]
	cmp r0, r1
	bge _02092DAC
	mov r5, #2
	add r0, r1, #0
_02092DAC:
	ldr r1, [sp]
	cmp r0, r1
	bge _02092DEC
	mov r5, #3
	add r0, r1, #0
	b _02092DEC
_02092DB8:
	ldr r1, [sp, #0xc]
	mov r5, #5
	add r0, r6, #0
	cmp r6, r1
	bge _02092DC6
	mov r5, #0
	add r0, r1, #0
_02092DC6:
	ldr r1, [sp, #8]
	cmp r0, r1
	bge _02092DD0
	mov r5, #1
	add r0, r1, #0
_02092DD0:
	ldr r1, [sp, #4]
	cmp r0, r1
	bge _02092DDA
	mov r5, #2
	add r0, r1, #0
_02092DDA:
	ldr r1, [sp]
	cmp r0, r1
	bge _02092DE4
	mov r5, #3
	add r0, r1, #0
_02092DE4:
	cmp r0, r7
	bge _02092DEC
	mov r5, #4
	add r0, r7, #0
_02092DEC:
	mov r1, #5
	bl sub_020E1F6C
	mov r2, #0xa
	add r6, r5, #0
	mul r6, r2
	ldr r3, _02092E0C ; =0x020F5578
	lsl r2, r1, #1
	add r1, r3, r6
	ldrh r1, [r2, r1]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x28]
	bl sub_0200B1B8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02092E0C: .word 0x020F5578
	thumb_func_end sub_02092C24

	thumb_func_start sub_02092E10
sub_02092E10: ; 0x02092E10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x48
	bl sub_02023790
	mov r6, #0
	str r0, [r5, #0x30]
	add r4, r6, #0
_02092E22:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_0207762C
	cmp r0, #1
	bne _02092E30
	add r6, r4, #1
_02092E30:
	add r4, r4, #1
	cmp r4, #5
	blt _02092E22
	ldr r1, _02092E48 ; =0x020F556C
	lsl r2, r6, #1
	ldrh r1, [r1, r2]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x30]
	bl sub_0200B1B8
	pop {r4, r5, r6, pc}
	nop
_02092E48: .word 0x020F556C
	thumb_func_end sub_02092E10

	thumb_func_start sub_02092E4C
sub_02092E4C: ; 0x02092E4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	mov r0, #0x12
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	bl sub_02023790
	str r0, [r5, #0x38]
	cmp r4, #5
	bgt _02092E70
	mov r1, #0x69
	b _02092E82
_02092E70:
	cmp r4, #0xa
	bgt _02092E78
	mov r1, #0x6a
	b _02092E82
_02092E78:
	cmp r4, #0x28
	bgt _02092E80
	mov r1, #0x6b
	b _02092E82
_02092E80:
	mov r1, #0x6c
_02092E82:
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x38]
	bl sub_0200B1B8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02092E4C

	thumb_func_start sub_02092E8C
sub_02092E8C: ; 0x02092E8C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0x4c
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02092EA0
	b _02092FFE
_02092EA0:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02092F0C
	add r0, r5, #0
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #0
	mov r1, #0x37
	bl sub_02017070
	cmp r6, r0
	bne _02092ECA
	mov r0, #0xf
	pop {r4, r5, r6, pc}
_02092ECA:
	add r0, r5, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02092EE4
	cmp r4, #1
	bne _02092EE0
	mov r0, #7
	pop {r4, r5, r6, pc}
_02092EE0:
	mov r0, #8
	pop {r4, r5, r6, pc}
_02092EE4:
	add r0, r5, #0
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl sub_02017070
	cmp r5, r0
	bne _02092F00
	mov r0, #2
	pop {r4, r5, r6, pc}
_02092F00:
	cmp r4, #1
	bne _02092F08
	mov r0, #0
	pop {r4, r5, r6, pc}
_02092F08:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02092F0C:
	add r0, r5, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02092F6E
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #1
	mov r1, #2
	bl sub_02017070
	cmp r6, r0
	bne _02092F3E
	cmp r4, #1
	bne _02092F3A
	mov r0, #0xd
	pop {r4, r5, r6, pc}
_02092F3A:
	mov r0, #0xe
	pop {r4, r5, r6, pc}
_02092F3E:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	mov r0, #2
	mov r1, #1
	bl sub_02017070
	cmp r5, r0
	bne _02092F62
	cmp r4, #1
	bne _02092F5E
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_02092F5E:
	mov r0, #0xc
	pop {r4, r5, r6, pc}
_02092F62:
	cmp r4, #1
	bne _02092F6A
	mov r0, #9
	pop {r4, r5, r6, pc}
_02092F6A:
	mov r0, #0xa
	pop {r4, r5, r6, pc}
_02092F6E:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl sub_02017070
	cmp r6, r0
	beq _02092FE6
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_02017070
	cmp r6, r0
	beq _02092FE6
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #1
	mov r1, #9
	bl sub_02017070
	cmp r6, r0
	beq _02092FE6
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #1
	mov r1, #0xa
	bl sub_02017070
	cmp r6, r0
	beq _02092FE6
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	mov r0, #1
	mov r1, #0xb
	bl sub_02017070
	cmp r5, r0
	bne _02092FF2
_02092FE6:
	cmp r4, #1
	bne _02092FEE
	mov r0, #5
	pop {r4, r5, r6, pc}
_02092FEE:
	mov r0, #6
	pop {r4, r5, r6, pc}
_02092FF2:
	cmp r4, #1
	bne _02092FFA
	mov r0, #3
	pop {r4, r5, r6, pc}
_02092FFA:
	mov r0, #4
	pop {r4, r5, r6, pc}
_02092FFE:
	cmp r4, #1
	bne _02093034
	add r0, r5, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02093030
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	mov r0, #2
	mov r1, #1
	bl sub_02017070
	cmp r4, r0
	bne _0209302C
	mov r0, #0x14
	pop {r4, r5, r6, pc}
_0209302C:
	mov r0, #0x12
	pop {r4, r5, r6, pc}
_02093030:
	mov r0, #0x10
	pop {r4, r5, r6, pc}
_02093034:
	add r0, r5, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02093046
	mov r0, #0x13
	pop {r4, r5, r6, pc}
_02093046:
	mov r0, #0x11
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02092E8C

	thumb_func_start sub_0209304C
sub_0209304C: ; 0x0209304C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl sub_0209305C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0209304C

	thumb_func_start sub_0209305C
sub_0209305C: ; 0x0209305C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	add r5, r3, #0
	ldr r6, [sp, #0x18]
	cmp r2, #6
	bls _0209306C
	b _020932A0
_0209306C:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02093078: ; jump table
	.short _02093086 - _02093078 - 2 ; case 0
	.short _020930E2 - _02093078 - 2 ; case 1
	.short _0209312C - _02093078 - 2 ; case 2
	.short _0209314C - _02093078 - 2 ; case 3
	.short _02093168 - _02093078 - 2 ; case 4
	.short _020931F0 - _02093078 - 2 ; case 5
	.short _02093210 - _02093078 - 2 ; case 6
_02093086:
	mov r0, #1
	mov r1, #0
	bl sub_02017070
	cmp r5, r0
	ble _0209309C
	mov r0, #2
	add r1, r0, #0
	bl sub_02017070
	add r5, r0, #0
_0209309C:
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _020930C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	bl sub_020933C8
	b _020930D6
_020930C4:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_020932F0
	add r0, r4, #0
	mov r1, #1
	bl sub_02093368
_020930D6:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020932A4
	pop {r3, r4, r5, r6, r7, pc}
_020930E2:
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02093110
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	mov r0, #1
	add r1, r0, #0
	bl sub_02017070
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	bl sub_020933C8
	pop {r3, r4, r5, r6, r7, pc}
_02093110:
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	mov r0, #1
	add r1, r0, #0
	bl sub_02017070
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_020932F0
	pop {r3, r4, r5, r6, r7, pc}
_0209312C:
	mov r1, #0
	bl sub_02093368
	mov r0, #0
	mov r1, #0x37
	bl sub_02017070
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	bl sub_020933C8
	pop {r3, r4, r5, r6, r7, pc}
_0209314C:
	add r1, r5, #0
	mov r2, #0
	bl sub_020932F0
	add r0, r4, #0
	mov r1, #1
	bl sub_02093368
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020932A4
	pop {r3, r4, r5, r6, r7, pc}
_02093168:
	add r2, r6, #0
	bl sub_0207884C
	cmp r0, #1
	bne _020931AE
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _0209319A
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	bl sub_020933C8
	b _020931E8
_0209319A:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_020932F0
	add r0, r4, #0
	mov r1, #1
	bl sub_02093368
	b _020931E8
_020931AE:
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _020931D6
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	bl sub_020933C8
	b _020931E8
_020931D6:
	add r0, r4, #0
	mov r1, #0
	bl sub_02093368
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_020932F0
_020931E8:
	add r0, r4, #0
	bl sub_020933E8
	pop {r3, r4, r5, r6, r7, pc}
_020931F0:
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _020932A0
	mov r0, #1
	mov r1, #2
	bl sub_02017070
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_020932F0
	pop {r3, r4, r5, r6, r7, pc}
_02093210:
	mov r0, #1
	mov r1, #0
	bl sub_02017070
	cmp r5, r0
	ble _02093226
	mov r0, #2
	add r1, r0, #0
	bl sub_02017070
	add r5, r0, #0
_02093226:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0207884C
	cmp r0, #0
	bne _0209328C
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x98
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x95
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x92
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x96
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x93
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x97
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x94
	add r2, sp, #0
	bl sub_02074C60
_0209328C:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_020932F0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020932A4
_020932A0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209305C

	thumb_func_start sub_020932A4
sub_020932A4: ; 0x020932A4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_02025F20
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02025F30
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02025F04
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #7
	add r2, sp, #4
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x9d
	add r2, sp, #0
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x91
	add r2, r4, #0
	bl sub_02074C60
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020932A4

	thumb_func_start sub_020932F0
sub_020932F0: ; 0x020932F0
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, sp, #0
	add r4, r2, #0
	bl sub_020138A4
	cmp r4, #0
	add r2, sp, #0x24
	bne _02093336
	add r0, r5, #0
	mov r1, #0x98
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x92
	add r2, sp, #0
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x93
	add r2, sp, #4
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x94
	add r2, sp, #8
	bl sub_02074C60
	add sp, #0x10
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
_02093336:
	add r0, r5, #0
	mov r1, #0x99
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x95
	add r2, sp, #0
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x96
	add r2, sp, #4
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x97
	add r2, sp, #8
	bl sub_02074C60
	add sp, #0x10
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end sub_020932F0

	thumb_func_start sub_02093368
sub_02093368: ; 0x02093368
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	cmp r1, #0
	add r2, sp, #0
	bne _020933A0
	mov r1, #0x98
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x92
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x93
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x94
	add r2, sp, #0
	bl sub_02074C60
	add sp, #4
	pop {r3, r4, pc}
_020933A0:
	mov r1, #0x99
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x95
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x96
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x97
	add r2, sp, #0
	bl sub_02074C60
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02093368

	thumb_func_start sub_020933C8
sub_020933C8: ; 0x020933C8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x9c
	add r2, sp, #0
	bl sub_02074C60
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020933C8

	thumb_func_start sub_020933E8
sub_020933E8: ; 0x020933E8
	push {r3, lr}
	mov r1, #1
	str r1, [sp]
	mov r1, #0x6e
	add r2, sp, #0
	bl sub_02074C60
	pop {r3, pc}
	thumb_func_end sub_020933E8

	thumb_func_start sub_020933F8
sub_020933F8: ; 0x020933F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018184
	mov r1, #0
	mov r2, #8
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _0209343C ; =0x00000121
	str r6, [r4, #0]
	ldrb r0, [r6, r0]
	cmp r0, #0
	beq _02093422
	cmp r0, #1
	beq _02093422
	cmp r0, #2
	bne _0209342E
_02093422:
	ldr r1, _02093440 ; =sub_02093448
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
_0209342E:
	ldr r1, _02093444 ; =sub_020935EC
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_0209343C: .word 0x00000121
_02093440: .word sub_02093448
_02093444: .word sub_020935EC
	thumb_func_end sub_020933F8

	thumb_func_start sub_02093448
sub_02093448: ; 0x02093448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0xd
	bls _02093460
	b _020935BA
_02093460:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209346C: ; jump table
	.short _02093488 - _0209346C - 2 ; case 0
	.short _02093496 - _0209346C - 2 ; case 1
	.short _020934B2 - _0209346C - 2 ; case 2
	.short _020934CA - _0209346C - 2 ; case 3
	.short _020934EC - _0209346C - 2 ; case 4
	.short _02093508 - _0209346C - 2 ; case 5
	.short _0209352A - _0209346C - 2 ; case 6
	.short _02093544 - _0209346C - 2 ; case 7
	.short _02093556 - _0209346C - 2 ; case 8
	.short _02093576 - _0209346C - 2 ; case 9
	.short _02093594 - _0209346C - 2 ; case 10
	.short _020935A6 - _0209346C - 2 ; case 11
	.short _020935AC - _0209346C - 2 ; case 12
	.short _020935BE - _0209346C - 2 ; case 13
_02093488:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093496:
	ldr r0, [r4, #0]
	ldr r1, _020935CC ; =0x00000171
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _020934AA
	bl sub_020944D4
	cmp r0, #1
	beq _020934AA
	b _020935C8
_020934AA:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020934B2:
	ldr r1, [r4, #0]
	ldr r0, _020935CC ; =0x00000171
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _020934C2
	mov r0, #0
	bl sub_020364F0
_020934C2:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020934CA:
	ldr r2, [r4, #0]
	ldr r1, _020935CC ; =0x00000171
	ldrb r1, [r2, r1]
	cmp r1, #1
	bne _020934E6
	mov r0, #0
	bl sub_02036540
	cmp r0, #1
	bne _020935C8
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020934E6:
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020934EC:
	ldr r0, [r4, #0]
	bl sub_02093BBC
	ldr r3, [r4, #0]
	ldr r2, _020935D0 ; =0x000019B8
	ldr r1, _020935D4 ; =0x020F55FC
	ldr r2, [r3, r2]
	add r0, r5, #0
	bl sub_02050A38
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093508:
	ldr r0, [r4, #0]
	bl sub_02093C54
	ldr r0, [r4, #0]
	ldr r1, _020935CC ; =0x00000171
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _02093524
	bl sub_020944E8
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093524:
	mov r0, #6
	str r0, [r4, #4]
	b _020935C8
_0209352A:
	ldr r0, [r4, #0]
	ldr r1, _020935CC ; =0x00000171
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _0209353C
	bl sub_020944D4
	cmp r0, #1
	bne _020935C8
_0209353C:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093544:
	ldr r1, _020935D8 ; =0x020F55EC
	ldr r2, [r4, #0]
	add r0, r5, #0
	bl sub_02050A38
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093556:
	ldr r2, [r4, #0]
	ldr r0, _020935DC ; =0x00000121
	ldrb r0, [r2, r0]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0209356E
	ldr r1, _020935E0 ; =0x020F561C
	add r0, r5, #0
	bl sub_02050A38
_0209356E:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093576:
	ldr r2, [r4, #0]
	ldr r0, _020935DC ; =0x00000121
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _02093584
	cmp r0, #2
	bne _0209358C
_02093584:
	ldr r1, _020935E4 ; =0x020F560C
	add r0, r5, #0
	bl sub_02050A38
_0209358C:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093594:
	ldr r1, _020935E8 ; =0x020F55DC
	ldr r2, [r4, #0]
	add r0, r5, #0
	bl sub_02050A38
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020935A6:
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020935AC:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020935BA:
	bl sub_02022974
_020935BE:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020935C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020935CC: .word 0x00000171
_020935D0: .word 0x000019B8
_020935D4: .word 0x020F55FC
_020935D8: .word 0x020F55EC
_020935DC: .word 0x00000121
_020935E0: .word 0x020F561C
_020935E4: .word 0x020F560C
_020935E8: .word 0x020F55DC
	thumb_func_end sub_02093448

	thumb_func_start sub_020935EC
sub_020935EC: ; 0x020935EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02050A60
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #9
	bls _02093606
	b _02093790
_02093606:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02093612: ; jump table
	.short _02093626 - _02093612 - 2 ; case 0
	.short _02093634 - _02093612 - 2 ; case 1
	.short _0209365C - _02093612 - 2 ; case 2
	.short _02093676 - _02093612 - 2 ; case 3
	.short _0209367C - _02093612 - 2 ; case 4
	.short _0209369A - _02093612 - 2 ; case 5
	.short _020936BE - _02093612 - 2 ; case 6
	.short _020936DC - _02093612 - 2 ; case 7
	.short _02093782 - _02093612 - 2 ; case 8
	.short _02093794 - _02093612 - 2 ; case 9
_02093626:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_02093634:
	ldr r0, [r4, #0]
	ldr r1, _020937A8 ; =0x00000121
	ldrb r1, [r0, r1]
	cmp r1, #3
	beq _02093642
	cmp r1, #4
	bne _02093654
_02093642:
	bl sub_02093BBC
	ldr r3, [r4, #0]
	ldr r2, _020937AC ; =0x000019B8
	ldr r1, _020937B0 ; =0x020F55FC
	ldr r2, [r3, r2]
	add r0, r5, #0
	bl sub_02050A38
_02093654:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_0209365C:
	ldr r0, [r4, #0]
	ldr r1, _020937A8 ; =0x00000121
	ldrb r1, [r0, r1]
	cmp r1, #3
	beq _0209366A
	cmp r1, #4
	bne _0209366E
_0209366A:
	bl sub_02093C54
_0209366E:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_02093676:
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_0209367C:
	ldr r2, [r4, #0]
	ldr r0, _020937A8 ; =0x00000121
	ldrb r0, [r2, r0]
	cmp r0, #3
	beq _0209368A
	cmp r0, #4
	bne _02093692
_0209368A:
	ldr r1, _020937B4 ; =0x020F55EC
	add r0, r5, #0
	bl sub_02050A38
_02093692:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_0209369A:
	ldr r0, [r4, #0]
	ldr r1, _020937A8 ; =0x00000121
	ldrb r1, [r0, r1]
	cmp r1, #5
	beq _020936A8
	cmp r1, #6
	bne _020936B6
_020936A8:
	bl sub_02095338
	ldr r1, _020937B8 ; =0x020F561C
	ldr r2, [r4, #0]
	add r0, r5, #0
	bl sub_02050A38
_020936B6:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_020936BE:
	ldr r2, [r4, #0]
	ldr r0, _020937A8 ; =0x00000121
	ldrb r0, [r2, r0]
	cmp r0, #7
	beq _020936CC
	cmp r0, #8
	bne _020936D4
_020936CC:
	ldr r1, _020937BC ; =0x020F560C
	add r0, r5, #0
	bl sub_02050A38
_020936D4:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_020936DC:
	ldr r1, [r4, #0]
	ldr r0, _020937A8 ; =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #8
	bhi _0209375A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020936F2: ; jump table
	.short _0209375A - _020936F2 - 2 ; case 0
	.short _0209375A - _020936F2 - 2 ; case 1
	.short _0209375A - _020936F2 - 2 ; case 2
	.short _02093704 - _020936F2 - 2 ; case 3
	.short _02093704 - _020936F2 - 2 ; case 4
	.short _02093726 - _020936F2 - 2 ; case 5
	.short _02093726 - _020936F2 - 2 ; case 6
	.short _02093742 - _020936F2 - 2 ; case 7
	.short _02093742 - _020936F2 - 2 ; case 8
_02093704:
	mov r5, #0
	add r6, sp, #0
_02093708:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_02095928
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_0209598C
	add r0, r7, r0
	add r5, r5, #1
	stmia r6!, {r0}
	cmp r5, #4
	blt _02093708
	b _0209375A
_02093726:
	mov r2, #0
	mov r3, #0x4b
	add r0, r2, #0
	add r1, sp, #0
	lsl r3, r3, #2
_02093730:
	ldr r5, [r4, #0]
	add r2, r2, #1
	add r5, r5, r0
	ldrsh r5, [r5, r3]
	add r0, #0xc
	cmp r2, #4
	stmia r1!, {r5}
	blt _02093730
	b _0209375A
_02093742:
	mov r2, #0
	ldr r3, _020937C0 ; =0x0000012E
	add r0, r2, #0
	add r1, sp, #0
_0209374A:
	ldr r5, [r4, #0]
	add r2, r2, #1
	add r5, r5, r0
	ldrsh r5, [r5, r3]
	add r0, #0xc
	cmp r2, #4
	stmia r1!, {r5}
	blt _0209374A
_0209375A:
	ldr r1, [sp]
	mov r2, #0
	mov r5, #1
	add r3, sp, #4
_02093762:
	ldr r0, [r3, #0]
	cmp r1, r0
	bge _0209376A
	add r2, r2, #1
_0209376A:
	add r5, r5, #1
	add r3, r3, #4
	cmp r5, #4
	blt _02093762
	mov r0, #0x13
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_02093782:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_02093790:
	bl sub_02022974
_02093794:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020937A0:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020937A8: .word 0x00000121
_020937AC: .word 0x000019B8
_020937B0: .word 0x020F55FC
_020937B4: .word 0x020F55EC
_020937B8: .word 0x020F561C
_020937BC: .word 0x020F560C
_020937C0: .word 0x0000012E
	thumb_func_end sub_020935EC

	thumb_func_start sub_020937C4
sub_020937C4: ; 0x020937C4
	push {r4, lr}
	ldr r1, _020937F0 ; =0x000019C4
	mov r0, #0x14
	bl sub_02018144
	ldr r2, _020937F0 ; =0x000019C4
	mov r1, #0
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _020937F4 ; =0x00000123
	mov r1, #0
	strb r1, [r4, r0]
	add r1, r0, #4
	mov r2, #1
	strb r2, [r4, r1]
	mov r1, #3
	add r0, r0, #3
	strb r1, [r4, r0]
	add r0, r4, #0
	pop {r4, pc}
	nop
_020937F0: .word 0x000019C4
_020937F4: .word 0x00000123
	thumb_func_end sub_020937C4

	thumb_func_start sub_020937F8
sub_020937F8: ; 0x020937F8
	ldr r3, _020937FC ; =sub_020181C4
	bx r3
	; .align 2, 0
_020937FC: .word sub_020181C4
	thumb_func_end sub_020937F8

	thumb_func_start sub_02093800
sub_02093800: ; 0x02093800
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #1
	add r6, r0, #0
	mov r0, #0xb
	mov r1, #0x14
	lsl r2, r2, #0xe
	bl sub_02017FC8
	bl sub_020937C4
	add r4, r0, #0
	bl sub_0201D2D0
	mov r1, #0x67
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r4, #0
	bl sub_02094E7C
	ldrb r1, [r6]
	ldr r0, _020939D0 ; =0x0000011F
	strb r1, [r4, r0]
	add r1, r0, #1
	ldrb r2, [r6, #1]
	add r0, r0, #2
	strb r2, [r4, r1]
	ldrb r1, [r6, #2]
	strb r1, [r4, r0]
	ldrb r0, [r6, #1]
	mov r1, #0
	bl sub_02095A74
	ldr r1, _020939D4 ; =0x00000122
	mov r7, #0
	strb r0, [r4, r1]
	add r0, r1, #1
	ldrb r2, [r4, r0]
	sub r0, r1, #6
	add r5, r4, #0
	strb r2, [r4, r0]
	mov r0, #0x6e
	add r1, r0, #0
	add r1, #0xb7
	strb r0, [r4, r1]
	add r1, r0, #0
	add r1, #0xb7
	ldrb r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xaf
	strb r2, [r4, r1]
	mov r1, #1
	add r0, #0xb0
	strb r1, [r4, r0]
	ldr r1, [r6, #0x14]
	ldr r0, _020939D8 ; =0x0000199C
	str r1, [r4, r0]
	add r1, r0, #0
	ldr r2, [r6, #0x18]
	sub r1, #0x14
	str r2, [r4, r1]
	add r1, r0, #0
	ldr r2, [r6, #0x1c]
	sub r1, #0x10
	str r2, [r4, r1]
	add r1, r0, #0
	ldr r2, [r6, #8]
	sub r1, #0xc
	str r2, [r4, r1]
	ldrb r2, [r6, #5]
	sub r1, r0, #4
	strb r2, [r4, r1]
	add r1, r0, #0
	ldr r2, [r6, #0x10]
	sub r1, #8
	str r2, [r4, r1]
	sub r1, r0, #3
	ldrb r2, [r6, #3]
	sub r0, r0, #2
	strb r2, [r4, r1]
	ldrb r1, [r6, #4]
	strb r1, [r4, r0]
_020938A2:
	mov r0, #0x14
	bl sub_02029C88
	add r1, r5, #0
	add r1, #0xf8
	add r7, r7, #1
	add r5, r5, #4
	str r0, [r1, #0]
	cmp r7, #4
	blt _020938A2
	mov r3, #0x12
	lsl r3, r3, #4
	ldrb r0, [r4, r3]
	sub r2, r3, #2
	sub r3, r3, #1
	str r0, [sp]
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xb
	bl sub_020954F0
	mov r0, #0x14
	bl sub_02079FF4
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r7, #0
	add r5, r4, #0
_020938DE:
	mov r0, #0x14
	bl sub_02073C74
	add r7, r7, #1
	stmia r5!, {r0}
	cmp r7, #4
	blt _020938DE
	mov r7, #0
	add r5, r4, #0
_020938F0:
	mov r0, #0x14
	bl sub_0202CC84
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _020938F0
	add r0, r1, #0
	ldr r0, [r4, r0]
	ldr r1, [r6, #0x20]
	bl sub_0202CD3C
	ldr r0, [r6, #8]
	ldr r1, [r4, #0]
	bl sub_020775EC
	mov r0, #8
	mov r1, #0x14
	bl sub_02023790
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r1, [r6, #0xc]
	bl sub_02023810
	ldr r0, [r6, #0x10]
	bl sub_02025F30
	mov r1, #0x42
	lsl r1, r1, #2
	strb r0, [r4, r1]
	add r0, r1, #4
	mov r2, #0
	strb r2, [r4, r0]
	add r1, #0x17
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0]
	bl sub_02093B2C
	mov r1, #0x11
	lsl r1, r1, #4
	strb r0, [r4, r1]
	add r0, r4, #0
	bl sub_0209590C
	cmp r0, #0
	ldr r0, [r6, #0x10]
	bne _0209397A
	bl sub_02025F30
	cmp r0, #0
	bne _02093970
	mov r1, #0xba
	add r0, r1, #0
	add r0, #0x5a
	strh r1, [r4, r0]
	b _02093994
_02093970:
	mov r1, #0xbb
	add r0, r1, #0
	add r0, #0x59
	strh r1, [r4, r0]
	b _02093994
_0209397A:
	bl sub_02025F30
	cmp r0, #0
	bne _0209398C
	mov r0, #0x45
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	b _02093994
_0209398C:
	mov r1, #0x61
	add r0, r1, #0
	add r0, #0xb3
	strh r1, [r4, r0]
_02093994:
	ldrb r1, [r6, #3]
	ldrb r2, [r6, #4]
	add r0, r4, #0
	bl sub_020939E0
	add r0, r4, #0
	bl sub_0209590C
	cmp r0, #1
	bne _020939BC
	ldr r1, _020939DC ; =0x00000172
	mov r5, #0
	mov r0, #3
_020939AE:
	sub r3, r0, r5
	add r2, r4, r5
	add r5, r5, #1
	strb r3, [r2, r1]
	cmp r5, #4
	blt _020939AE
	b _020939CA
_020939BC:
	ldr r0, _020939DC ; =0x00000172
	mov r2, #0
_020939C0:
	add r1, r4, r2
	strb r2, [r1, r0]
	add r2, r2, #1
	cmp r2, #4
	blt _020939C0
_020939CA:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020939D0: .word 0x0000011F
_020939D4: .word 0x00000122
_020939D8: .word 0x0000199C
_020939DC: .word 0x00000172
	thumb_func_end sub_02093800

	thumb_func_start sub_020939E0
sub_020939E0: ; 0x020939E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0x12
	add r5, r0, #0
	lsl r3, r3, #4
	ldrb r4, [r5, r3]
	str r4, [sp]
	add r4, r3, #1
	ldrb r4, [r5, r4]
	sub r3, r3, #1
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldrb r3, [r5, r3]
	mov r1, #0xb
	mov r2, #3
	bl sub_02094F04
	add r4, r5, #0
	add r4, #0x10
	mov r7, #1
	add r6, r5, #4
	add r4, #0x30
_02093A0E:
	ldr r1, [r6, #0]
	add r0, r4, #0
	mov r2, #0x14
	bl sub_02095380
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x30
	cmp r7, #4
	blt _02093A0E
	mov r6, #1
	add r4, r5, #4
	mov r7, #8
_02093A28:
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02093A40
	add r0, r7, #0
	mov r1, #0x14
	bl sub_02023790
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
_02093A40:
	add r2, r4, #0
	add r2, #0xe8
	ldr r0, [r4, #0]
	ldr r2, [r2, #0]
	mov r1, #0x91
	bl sub_02074470
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02093A28
	add r0, r5, #0
	add r0, #0x30
	mov r2, #0x42
	mov r1, #1
	add r0, #0x30
	lsl r2, r2, #2
_02093A62:
	ldrh r3, [r0]
	add r0, #0x30
	lsl r3, r3, #0x12
	lsr r4, r3, #0x1e
	add r3, r5, r1
	add r1, r1, #1
	strb r4, [r3, r2]
	cmp r1, #4
	blt _02093A62
	add r0, r5, #0
	add r0, #0x30
	mov r2, #0x43
	mov r1, #1
	add r0, #0x30
	lsl r2, r2, #2
_02093A80:
	ldrh r3, [r0]
	add r0, #0x30
	lsl r3, r3, #0x10
	lsr r4, r3, #0x1e
	add r3, r5, r1
	add r1, r1, #1
	strb r4, [r3, r2]
	cmp r1, #4
	blt _02093A80
	add r3, r5, #0
	mov r1, #0x11
	mov r4, #1
	add r3, #0x30
	lsl r1, r1, #4
_02093A9C:
	add r0, r3, #0
	add r0, #0x3e
	ldrb r2, [r0]
	add r0, r5, r4
	add r4, r4, #1
	add r3, #0x30
	strb r2, [r0, r1]
	cmp r4, #4
	blt _02093A9C
	add r2, r5, #0
	mov r0, #0x45
	mov r4, #1
	add r2, #0x30
	add r3, r5, #2
	lsl r0, r0, #2
_02093ABA:
	ldrh r1, [r2, #0x18]
	add r4, r4, #1
	add r2, #0x30
	strh r1, [r3, r0]
	add r3, r3, #2
	cmp r4, #4
	blt _02093ABA
	add r0, r5, #0
	mov r1, #0xb
	bl sub_020951B0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020939E0

	thumb_func_start sub_02093AD4
sub_02093AD4: ; 0x02093AD4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_020181C4
	mov r6, #0x57
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_02093AEA:
	ldr r0, [r5, #0]
	bl sub_020181C4
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [r5, r6]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02093AEA
	mov r0, #0x67
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	bl sub_0201D2DC
	add r0, r7, #0
	bl sub_020937F8
	mov r0, #0x14
	bl sub_0201807C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02093AD4

	thumb_func_start sub_02093B2C
sub_02093B2C: ; 0x02093B2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	str r0, [sp]
	mov r4, #0
_02093B38:
	cmp r7, #4
	bhi _02093BA2
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02093B48: ; jump table
	.short _02093B52 - _02093B48 - 2 ; case 0
	.short _02093B62 - _02093B48 - 2 ; case 1
	.short _02093B72 - _02093B48 - 2 ; case 2
	.short _02093B82 - _02093B48 - 2 ; case 3
	.short _02093B92 - _02093B48 - 2 ; case 4
_02093B52:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x7b
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	b _02093BA6
_02093B62:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x7f
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	b _02093BA6
_02093B72:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x83
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	b _02093BA6
_02093B82:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x87
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	b _02093BA6
_02093B92:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x8b
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	b _02093BA6
_02093BA2:
	bl sub_02022974
_02093BA6:
	cmp r6, #0
	beq _02093BB6
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #1
	str r0, [sp]
	cmp r4, #3
	ble _02093B38
_02093BB6:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02093B2C

	thumb_func_start sub_02093BBC
sub_02093BBC: ; 0x02093BBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02093C44 ; =0x00000123
	ldrb r0, [r5, r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0202A25C
	mov r0, #0x14
	mov r1, #0x28
	bl sub_02018144
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02093C44 ; =0x00000123
	ldrb r1, [r5, r0]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	str r1, [r4, #0]
	ldrb r1, [r5, r0]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	str r1, [r4, #4]
	sub r1, r0, #1
	ldrb r1, [r5, r1]
	str r1, [r4, #8]
	add r1, r0, #0
	add r1, #0x4e
	ldrb r1, [r5, r1]
	cmp r1, #1
	bne _02093C0C
	mov r0, #4
	b _02093C10
_02093C0C:
	sub r0, r0, #3
	ldrb r0, [r5, r0]
_02093C10:
	str r0, [r4, #0xc]
	ldr r0, _02093C48 ; =0x00000121
	ldrb r1, [r5, r0]
	sub r0, r0, #2
	str r1, [r4, #0x10]
	ldrb r0, [r5, r0]
	str r0, [r4, #0x14]
	ldr r0, _02093C4C ; =0x0000199C
	ldr r0, [r5, r0]
	bl sub_02029D04
	ldr r1, _02093C50 ; =0x000019A0
	str r0, [r4, #0x18]
	add r0, r5, r1
	str r0, [r4, #0x1c]
	add r0, r1, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	str r0, [r4, #0x20]
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	add r1, #0x18
	str r0, [r4, #0x24]
	str r4, [r5, r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02093C44: .word 0x00000123
_02093C48: .word 0x00000121
_02093C4C: .word 0x0000199C
_02093C50: .word 0x000019A0
	thumb_func_end sub_02093BBC

	thumb_func_start sub_02093C54
sub_02093C54: ; 0x02093C54
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02093C68 ; =0x000019B8
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, _02093C68 ; =0x000019B8
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02093C68: .word 0x000019B8
	thumb_func_end sub_02093C54

	thumb_func_start sub_02093C6C
sub_02093C6C: ; 0x02093C6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _02093FB0 ; =0x00000176
	add r4, r1, #0
	str r0, [sp]
	ldrb r0, [r4, r2]
	cmp r0, #0x2f
	bls _02093C7E
	b _02094322
_02093C7E:
	add r3, r0, r0
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02093C8A: ; jump table
	.short _02093CEA - _02093C8A - 2 ; case 0
	.short _02093D02 - _02093C8A - 2 ; case 1
	.short _02093D18 - _02093C8A - 2 ; case 2
	.short _02093D2E - _02093C8A - 2 ; case 3
	.short _02093D4A - _02093C8A - 2 ; case 4
	.short _02093D62 - _02093C8A - 2 ; case 5
	.short _02093D78 - _02093C8A - 2 ; case 6
	.short _02093D94 - _02093C8A - 2 ; case 7
	.short _02093DB0 - _02093C8A - 2 ; case 8
	.short _02093DC8 - _02093C8A - 2 ; case 9
	.short _02093DDE - _02093C8A - 2 ; case 10
	.short _02093E0E - _02093C8A - 2 ; case 11
	.short _02093E24 - _02093C8A - 2 ; case 12
	.short _02093E3C - _02093C8A - 2 ; case 13
	.short _02093E52 - _02093C8A - 2 ; case 14
	.short _02093E70 - _02093C8A - 2 ; case 15
	.short _02093E8C - _02093C8A - 2 ; case 16
	.short _02093EA4 - _02093C8A - 2 ; case 17
	.short _02093EBA - _02093C8A - 2 ; case 18
	.short _02093EF6 - _02093C8A - 2 ; case 19
	.short _02093F2C - _02093C8A - 2 ; case 20
	.short _02093F44 - _02093C8A - 2 ; case 21
	.short _02093F5A - _02093C8A - 2 ; case 22
	.short _02093F7A - _02093C8A - 2 ; case 23
	.short _02093FD8 - _02093C8A - 2 ; case 24
	.short _02093FF0 - _02093C8A - 2 ; case 25
	.short _02094006 - _02093C8A - 2 ; case 26
	.short _02094040 - _02093C8A - 2 ; case 27
	.short _02094076 - _02093C8A - 2 ; case 28
	.short _020940A2 - _02093C8A - 2 ; case 29
	.short _020940B8 - _02093C8A - 2 ; case 30
	.short _020940D4 - _02093C8A - 2 ; case 31
	.short _020940F0 - _02093C8A - 2 ; case 32
	.short _02094108 - _02093C8A - 2 ; case 33
	.short _0209411E - _02093C8A - 2 ; case 34
	.short _02094158 - _02093C8A - 2 ; case 35
	.short _0209418E - _02093C8A - 2 ; case 36
	.short _020941A6 - _02093C8A - 2 ; case 37
	.short _020941BC - _02093C8A - 2 ; case 38
	.short _020941E6 - _02093C8A - 2 ; case 39
	.short _02094202 - _02093C8A - 2 ; case 40
	.short _0209421A - _02093C8A - 2 ; case 41
	.short _02094230 - _02093C8A - 2 ; case 42
	.short _02094272 - _02093C8A - 2 ; case 43
	.short _020942A8 - _02093C8A - 2 ; case 44
	.short _020942C0 - _02093C8A - 2 ; case 45
	.short _020942D6 - _02093C8A - 2 ; case 46
	.short _020942F4 - _02093C8A - 2 ; case 47
_02093CEA:
	mov r0, #5
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D02:
	mov r0, #5
	bl sub_02036540
	cmp r0, #1
	bne _02093DF8
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D18:
	add r0, r4, #0
	bl ov6_02248A64
	cmp r0, #1
	bne _02093DF8
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D2E:
	ldr r0, _02093FB4 ; =0x00000584
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _02093DF8
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093D4A:
	mov r0, #6
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D62:
	mov r0, #6
	bl sub_02036540
	cmp r0, #1
	bne _02093DF8
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D78:
	sub r2, #0x53
	ldrb r1, [r4, r2]
	ldr r2, [r4, #0]
	add r0, r4, #0
	bl ov6_02248AF0
	cmp r0, #1
	bne _02093DF8
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D94:
	ldr r0, _02093FB4 ; =0x00000584
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _02093DF8
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093DB0:
	mov r0, #7
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093DC8:
	mov r0, #7
	bl sub_02036540
	cmp r0, #1
	bne _02093DF8
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093DDE:
	add r3, r2, #0
	sub r3, #0x53
	ldrb r5, [r4, r3]
	add r3, r2, #0
	sub r3, #0x5a
	ldrb r3, [r4, r3]
	cmp r5, r3
	bne _02093E06
	add r0, r4, #0
	bl ov6_02248B70
	cmp r0, #1
	beq _02093DFA
_02093DF8:
	b _020943A4
_02093DFA:
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093E06:
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093E0E:
	ldr r0, _02093FB4 ; =0x00000584
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02093EFE
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093E24:
	mov r0, #8
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093E3C:
	mov r0, #8
	bl sub_02036540
	cmp r0, #1
	bne _02093EFE
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093E52:
	sub r2, #0x53
	ldrb r1, [r4, r2]
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x10
	bl ov6_02248BE8
	cmp r0, #1
	bne _02093EFE
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093E70:
	ldr r0, _02093FB4 ; =0x00000584
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _02093EFE
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093E8C:
	mov r0, #9
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093EA4:
	mov r0, #9
	bl sub_02036540
	cmp r0, #1
	bne _02093EFE
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093EBA:
	add r1, r2, #0
	sub r1, #0x53
	ldrb r3, [r4, r1]
	add r1, r2, #0
	sub r1, #0x5a
	ldrb r1, [r4, r1]
	cmp r3, r1
	bne _02093EEE
	add r0, r2, #2
	ldr r1, [r4, r0]
	add r3, r4, #0
	mov r2, #0x30
	add r3, #0x10
	mul r2, r1
	add r0, r4, #0
	add r2, r3, r2
	bl ov6_02248BE8
	cmp r0, #1
	bne _02093EFE
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093EEE:
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093EF6:
	ldr r1, _02093FB4 ; =0x00000584
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _02093F00
_02093EFE:
	b _020943A4
_02093F00:
	mov r0, #0
	strb r0, [r4, r1]
	add r1, r2, #2
	ldr r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #2
	str r3, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #4
	bge _02093F1E
	ldrb r0, [r4, r2]
	add sp, #0x10
	sub r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093F1E:
	add r1, r2, #2
	str r0, [r4, r1]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093F2C:
	mov r0, #0xa
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093F44:
	mov r0, #0xa
	bl sub_02036540
	cmp r0, #1
	bne _02094048
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093F5A:
	sub r2, #0x53
	ldrb r1, [r4, r2]
	add r2, r4, #0
	add r2, #0xe8
	ldr r2, [r2, #0]
	add r0, r4, #0
	bl ov6_02248CE8
	cmp r0, #1
	bne _02094048
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093F7A:
	ldr r0, _02093FB4 ; =0x00000584
	sub r2, #0x4f
	ldrb r1, [r4, r2]
	ldrb r0, [r4, r0]
	cmp r0, r1
	blo _02094048
	mov r5, #0
	cmp r1, #0
	ble _02093FC6
	add r6, r4, #0
_02093F8E:
	add r0, r5, #0
	bl sub_02032EE8
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_020237E8
	add r1, r6, #0
	add r1, #0xe8
	ldr r1, [r1, #0]
	add r0, r7, #0
	bl sub_02025EF4
	ldr r0, _02093FB8 ; =0x00000127
	b _02093FBC
	; .align 2, 0
_02093FB0: .word 0x00000176
_02093FB4: .word 0x00000584
_02093FB8: .word 0x00000127
_02093FBC:
	add r5, r5, #1
	ldrb r0, [r4, r0]
	add r6, r6, #4
	cmp r5, r0
	blt _02093F8E
_02093FC6:
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093FD8:
	mov r0, #0xb
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093FF0:
	mov r0, #0xb
	bl sub_02036540
	cmp r0, #1
	bne _02094048
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02094006:
	add r1, r2, #0
	sub r1, #0x53
	ldrb r3, [r4, r1]
	add r1, r2, #0
	sub r1, #0x5a
	ldrb r1, [r4, r1]
	cmp r3, r1
	bne _02094038
	add r0, r2, #2
	ldr r1, [r4, r0]
	add r0, r4, #0
	lsl r2, r1, #2
	add r2, r4, r2
	add r2, #0xe8
	ldr r2, [r2, #0]
	bl ov6_02248CE8
	cmp r0, #1
	bne _02094048
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02094038:
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094040:
	ldr r1, _020942F8 ; =0x00000584
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _0209404A
_02094048:
	b _020943A4
_0209404A:
	mov r0, #0
	strb r0, [r4, r1]
	add r1, r2, #2
	ldr r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #2
	str r3, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #4
	bge _02094068
	ldrb r0, [r4, r2]
	add sp, #0x10
	sub r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094068:
	add r1, r2, #2
	str r0, [r4, r1]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094076:
	bl sub_0202CC64
	add r2, r0, #0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r1, _02094300 ; =0x00000585
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl sub_020C4DB0
	mov r0, #0xc
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020940A2:
	mov r0, #0xc
	bl sub_02036540
	cmp r0, #1
	bne _02094160
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020940B8:
	sub r2, #0x53
	ldrb r1, [r4, r2]
	add r0, r4, #0
	mov r2, #0
	bl ov6_02248D64
	cmp r0, #1
	bne _02094160
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020940D4:
	ldr r0, _020942F8 ; =0x00000584
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _02094160
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_020940F0:
	mov r0, #0xd
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02094108:
	mov r0, #0xd
	bl sub_02036540
	cmp r0, #1
	bne _02094160
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0209411E:
	add r1, r2, #0
	sub r1, #0x53
	ldrb r3, [r4, r1]
	add r1, r2, #0
	sub r1, #0x5a
	ldrb r1, [r4, r1]
	cmp r3, r1
	bne _02094150
	add r0, r2, #2
	ldr r1, [r4, r0]
	sub r2, #0x1a
	lsl r3, r1, #2
	add r3, r4, r3
	ldr r2, [r3, r2]
	add r0, r4, #0
	bl ov6_02248D64
	cmp r0, #1
	bne _02094160
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02094150:
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094158:
	ldr r1, _020942F8 ; =0x00000584
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _02094162
_02094160:
	b _020943A4
_02094162:
	mov r0, #0
	strb r0, [r4, r1]
	add r1, r2, #2
	ldr r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #2
	str r3, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #4
	bge _02094180
	ldrb r0, [r4, r2]
	add sp, #0x10
	sub r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094180:
	add r1, r2, #2
	str r0, [r4, r1]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_0209418E:
	mov r0, #0xe
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020941A6:
	mov r0, #0xe
	bl sub_02036540
	cmp r0, #1
	bne _0209427A
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020941BC:
	add r2, sp, #8
	add r0, r4, #0
	mov r1, #0
	add r2, #2
	bl sub_02094EB4
	ldr r1, _02094304 ; =0x00000123
	add r2, sp, #8
	ldrb r1, [r4, r1]
	add r0, r4, #0
	add r2, #2
	bl ov6_02248DD8
	cmp r0, #1
	bne _0209427A
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020941E6:
	ldr r0, _020942F8 ; =0x00000584
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _0209427A
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094202:
	mov r0, #0xf
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0209421A:
	mov r0, #0xf
	bl sub_02036540
	cmp r0, #1
	bne _0209427A
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02094230:
	add r1, r2, #0
	sub r1, #0x53
	ldrb r3, [r4, r1]
	add r1, r2, #0
	sub r1, #0x5a
	ldrb r1, [r4, r1]
	cmp r3, r1
	bne _0209426A
	add r1, r2, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, sp, #4
	bl sub_02094EB4
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, sp, #4
	bl ov6_02248DD8
	cmp r0, #1
	bne _0209427A
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0209426A:
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094272:
	ldr r1, _020942F8 ; =0x00000584
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _0209427C
_0209427A:
	b _020943A4
_0209427C:
	mov r0, #0
	strb r0, [r4, r1]
	add r1, r2, #2
	ldr r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #2
	str r3, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #4
	bge _0209429A
	ldrb r0, [r4, r2]
	add sp, #0x10
	sub r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_0209429A:
	add r1, r2, #2
	str r0, [r4, r1]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_020942A8:
	mov r0, #0x10
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020942C0:
	mov r0, #0x10
	bl sub_02036540
	cmp r0, #1
	bne _020943A4
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020942D6:
	sub r2, #0x53
	ldrb r1, [r4, r2]
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0xd0
	bl ov6_02248C68
	cmp r0, #1
	bne _020943A4
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020942F4:
	ldr r0, _020942F8 ; =0x00000584
	b _02094308
	; .align 2, 0
_020942F8: .word 0x00000584
_020942FC: .word 0x00000176
_02094300: .word 0x00000585
_02094304: .word 0x00000123
_02094308:
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _020943A4
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094322:
	ldr r0, _020943A8 ; =0x00000127
	mov r5, #0
	ldrb r0, [r4, r0]
	cmp r0, #0
	ble _0209434A
	mov r7, #0x42
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x1f
_02094334:
	add r0, r5, #0
	bl sub_02032EE8
	bl sub_02025F30
	add r1, r4, r5
	strb r0, [r1, r7]
	ldrb r0, [r4, r6]
	add r5, r5, #1
	cmp r5, r0
	blt _02094334
_0209434A:
	cmp r5, #4
	bge _0209436E
	add r1, r4, #0
	mov r0, #0x30
	add r1, #0x30
	mul r0, r5
	add r0, r1, r0
	mov r1, #0x42
	lsl r1, r1, #2
_0209435C:
	ldrh r2, [r0]
	add r0, #0x30
	lsl r2, r2, #0x12
	lsr r3, r2, #0x1e
	add r2, r4, r5
	add r5, r5, #1
	strb r3, [r2, r1]
	cmp r5, #4
	blt _0209435C
_0209436E:
	mov r0, #0x47
	lsl r0, r0, #2
	ldrb r2, [r4, r0]
	ldr r1, _020943AC ; =0x000019B4
	strb r2, [r4, r1]
	add r2, r0, #0
	add r2, #8
	ldrb r3, [r4, r2]
	add r2, r1, #1
	strb r3, [r4, r2]
	add r2, r1, #2
	mov r3, #1
	strb r3, [r4, r2]
	add r2, r0, #0
	add r2, #0xb
	ldrb r2, [r4, r2]
	add r1, r1, #3
	strb r2, [r4, r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x64
	str r2, [r4, r1]
	add r0, #0x5a
	strb r2, [r4, r0]
	ldr r0, [sp]
	bl sub_0200DA58
_020943A4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020943A8: .word 0x00000127
_020943AC: .word 0x000019B4
	thumb_func_end sub_02093C6C

	thumb_func_start sub_020943B0
sub_020943B0: ; 0x020943B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02035E38
	cmp r0, #0
	bne _020943C0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020943C0:
	ldr r0, _020944B4 ; =0x00000171
	mov r1, #1
	strb r1, [r5, r0]
	bl sub_02035E18
	add r4, r0, #0
	bl sub_0203608C
	mov r6, #0
	str r0, [sp]
	cmp r4, #0
	ble _020943F6
_020943D8:
	add r0, r6, #0
	bl sub_02032EE8
	add r7, r0, #0
	bne _020943E6
	bl sub_02022974
_020943E6:
	add r0, r7, #0
	bl sub_02025FF0
	cmp r0, #0
	beq _020943F6
	add r6, r6, #1
	cmp r6, r4
	blt _020943D8
_020943F6:
	cmp r6, r4
	beq _020943FE
	mov r1, #0
	b _02094400
_020943FE:
	mov r1, #1
_02094400:
	ldr r0, _020944B8 ; =0x00001999
	mov r6, #0
	strb r1, [r5, r0]
	cmp r4, #0
	ble _02094428
_0209440A:
	add r0, r6, #0
	bl sub_02032EE8
	add r7, r0, #0
	bne _02094418
	bl sub_02022974
_02094418:
	add r0, r7, #0
	bl sub_02026004
	cmp r0, #0
	beq _02094428
	add r6, r6, #1
	cmp r6, r4
	blt _0209440A
_02094428:
	cmp r6, r4
	beq _02094430
	mov r1, #0
	b _02094432
_02094430:
	mov r1, #1
_02094432:
	ldr r0, _020944BC ; =0x0000199A
	ldr r2, _020944B8 ; =0x00001999
	strb r1, [r5, r0]
	ldrb r1, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	add r0, r5, #0
	bl sub_020939E0
	mov r6, #0
	cmp r4, #0
	ble _02094466
	ldr r7, _020944C0 ; =0x00000177
_0209444C:
	add r0, r6, #0
	bl sub_02032EE8
	bl sub_02025FCC
	cmp r0, #0
	bne _02094460
	ldrb r0, [r5, r7]
	add r0, r0, #1
	strb r0, [r5, r7]
_02094460:
	add r6, r6, #1
	cmp r6, r4
	blt _0209444C
_02094466:
	ldr r0, [sp]
	mov r1, #0x49
	lsl r0, r0, #0x18
	mov r2, #4
	lsr r0, r0, #0x18
	lsl r1, r1, #2
	sub r3, r2, r4
	strb r0, [r5, r1]
	add r2, r1, #2
	strb r3, [r5, r2]
	add r2, r1, #3
	strb r4, [r5, r2]
	sub r1, r1, #1
	strb r0, [r5, r1]
	mov r1, #0x6e
	add r0, r1, #0
	add r0, #0xb7
	strb r1, [r5, r0]
	add r1, #0xb2
	ldrb r0, [r5, r1]
	mov r1, #1
	bl sub_02095A74
	ldr r1, _020944C4 ; =0x00000122
	strb r0, [r5, r1]
	add r0, r5, #0
	bl sub_02095AF0
	ldr r0, _020944C8 ; =sub_02093C6C
	add r1, r5, #0
	mov r2, #0xa
	bl sub_0200D9E8
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020944B4: .word 0x00000171
_020944B8: .word 0x00001999
_020944BC: .word 0x0000199A
_020944C0: .word 0x00000177
_020944C4: .word 0x00000122
_020944C8: .word sub_02093C6C
	thumb_func_end sub_020943B0

	thumb_func_start sub_020944CC
sub_020944CC: ; 0x020944CC
	ldr r3, _020944D0 ; =sub_020944D4
	bx r3
	; .align 2, 0
_020944D0: .word sub_020944D4
	thumb_func_end sub_020944CC

	thumb_func_start sub_020944D4
sub_020944D4: ; 0x020944D4
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _020944E2
	mov r0, #1
	bx lr
_020944E2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020944D4

	thumb_func_start sub_020944E8
sub_020944E8: ; 0x020944E8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _020944FA
	bl sub_02022974
_020944FA:
	ldr r0, _02094514 ; =0x00000176
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02094518 ; =sub_0209451C
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200D9E8
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02094514: .word 0x00000176
_02094518: .word sub_0209451C
	thumb_func_end sub_020944E8

	thumb_func_start sub_0209451C
sub_0209451C: ; 0x0209451C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02094628 ; =0x00000176
	ldrb r2, [r4, r1]
	cmp r2, #7
	bhi _02094614
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02094534: ; jump table
	.short _02094544 - _02094534 - 2 ; case 0
	.short _0209455A - _02094534 - 2 ; case 1
	.short _0209456E - _02094534 - 2 ; case 2
	.short _0209458E - _02094534 - 2 ; case 3
	.short _020945A8 - _02094534 - 2 ; case 4
	.short _020945BE - _02094534 - 2 ; case 5
	.short _020945D2 - _02094534 - 2 ; case 6
	.short _02094600 - _02094534 - 2 ; case 7
_02094544:
	mov r0, #0x11
	bl sub_020364F0
	ldr r0, _0209462C ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0209455A:
	mov r0, #0x11
	bl sub_02036540
	cmp r0, #1
	bne _02094624
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0209456E:
	sub r1, #0x53
	ldrb r1, [r4, r1]
	add r0, r4, #0
	lsl r2, r1, #2
	add r2, r4, r2
	add r2, #0xf8
	ldr r2, [r2, #0]
	bl sub_02095B5C
	cmp r0, #1
	bne _02094624
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0209458E:
	ldr r0, _0209462C ; =0x00000584
	add r2, r1, #0
	sub r2, #0x4f
	ldrb r3, [r4, r0]
	ldrb r2, [r4, r2]
	cmp r3, r2
	blo _02094624
	mov r2, #0
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	pop {r4, pc}
_020945A8:
	mov r0, #0x12
	bl sub_020364F0
	ldr r0, _0209462C ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_020945BE:
	mov r0, #0x12
	bl sub_02036540
	cmp r0, #1
	bne _02094624
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_020945D2:
	add r0, r1, #0
	sub r0, #0x53
	ldrb r3, [r4, r0]
	add r0, r1, #0
	sub r0, #0x5a
	ldrb r0, [r4, r0]
	cmp r3, r0
	bne _020945FA
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xf8
	bl sub_02095BEC
	cmp r0, #1
	bne _02094624
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_020945FA:
	add r0, r2, #1
	strb r0, [r4, r1]
	pop {r4, pc}
_02094600:
	ldr r0, _0209462C ; =0x00000584
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _02094624
	mov r2, #0
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	pop {r4, pc}
_02094614:
	mov r1, #6
	mov r2, #0
	lsl r1, r1, #6
	str r2, [r4, r1]
	sub r1, #0xa
	strb r2, [r4, r1]
	bl sub_0200DA58
_02094624:
	pop {r4, pc}
	nop
_02094628: .word 0x00000176
_0209462C: .word 0x00000584
	thumb_func_end sub_0209451C

	thumb_func_start sub_02094630
sub_02094630: ; 0x02094630
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r2, #0
	lsl r2, r4, #3
	add r2, r5, r2
	add r2, #0xd0
	ldrh r2, [r2]
	add r1, r3, #0
	bl sub_0200BB74
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02094630

	thumb_func_start sub_02094648
sub_02094648: ; 0x02094648
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02095904
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r2, r3, #2
	add r4, r5, r3
	mov r3, #0x42
	add r2, r5, r2
	lsl r3, r3, #2
	add r2, #0xe8
	ldrb r3, [r4, r3]
	ldr r2, [r2, #0]
	add r1, r6, #0
	bl sub_0200B48C
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02094648

	thumb_func_start sub_02094680
sub_02094680: ; 0x02094680
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02095904
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200B5CC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02094680

	thumb_func_start sub_020946A4
sub_020946A4: ; 0x020946A4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r2, #0x12
	add r3, r0, #0
	lsl r2, r2, #4
	add r5, r1, #0
	add r1, r2, #1
	ldrb r0, [r3, r2]
	add r2, #0x51
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200BBA8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020946A4

	thumb_func_start sub_020946CC
sub_020946CC: ; 0x020946CC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _020946EC ; =0x0000011F
	add r3, r0, #0
	ldrb r0, [r3, r1]
	add r1, r1, #2
	ldrb r1, [r3, r1]
	add r4, r2, #0
	bl sub_020958C4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200BBDC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020946EC: .word 0x0000011F
	thumb_func_end sub_020946CC

	thumb_func_start sub_020946F0
sub_020946F0: ; 0x020946F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0x13
	add r6, r2, #0
	mov r0, #0
	add r3, r5, #0
	lsl r1, r1, #4
_02094700:
	ldrb r2, [r3, r1]
	cmp r2, #0
	beq _0209470E
	add r0, r0, #1
	add r3, #0xc
	cmp r0, #4
	blt _02094700
_0209470E:
	bl sub_020958FC
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02094648
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020946F0

	thumb_func_start sub_02094720
sub_02094720: ; 0x02094720
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0x13
	add r6, r2, #0
	mov r0, #0
	add r3, r5, #0
	lsl r1, r1, #4
_02094730:
	ldrb r2, [r3, r1]
	cmp r2, #0
	beq _0209473E
	add r0, r0, #1
	add r3, #0xc
	cmp r0, #4
	blt _02094730
_0209473E:
	bl sub_020958FC
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02094680
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02094720

	thumb_func_start sub_02094750
sub_02094750: ; 0x02094750
	mov r0, #1
	bx lr
	thumb_func_end sub_02094750

	thumb_func_start sub_02094754
sub_02094754: ; 0x02094754
	push {r3, lr}
	ldr r2, _02094768 ; =0x00000171
	ldrb r0, [r0, r2]
	cmp r0, #0
	beq _02094764
	add r0, r1, #0
	bl sub_020364F0
_02094764:
	pop {r3, pc}
	nop
_02094768: .word 0x00000171
	thumb_func_end sub_02094754

	thumb_func_start sub_0209476C
sub_0209476C: ; 0x0209476C
	push {r3, lr}
	ldr r2, _0209478C ; =0x00000171
	ldrb r0, [r0, r2]
	cmp r0, #0
	bne _0209477A
	mov r0, #1
	pop {r3, pc}
_0209477A:
	add r0, r1, #0
	bl sub_02036540
	cmp r0, #1
	bne _02094788
	mov r0, #1
	pop {r3, pc}
_02094788:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0209478C: .word 0x00000171
	thumb_func_end sub_0209476C

	thumb_func_start sub_02094790
sub_02094790: ; 0x02094790
	ldr r2, _020947A0 ; =0x00000123
	mov r1, #0xc
	ldrb r3, [r0, r2]
	add r2, #0xd
	mul r1, r3
	add r0, r0, r1
	ldrb r0, [r0, r2]
	bx lr
	; .align 2, 0
_020947A0: .word 0x00000123
	thumb_func_end sub_02094790

	thumb_func_start sub_020947A4
sub_020947A4: ; 0x020947A4
	push {r3, lr}
	mov r1, #0x13
	mov r3, #0
	lsl r1, r1, #4
_020947AC:
	ldrb r2, [r0, r1]
	cmp r2, #0
	bne _020947BA
	add r0, r3, #0
	bl sub_020958FC
	pop {r3, pc}
_020947BA:
	add r3, r3, #1
	add r0, #0xc
	cmp r3, #4
	blt _020947AC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020947A4

	thumb_func_start sub_020947C8
sub_020947C8: ; 0x020947C8
	ldr r1, _020947D0 ; =0x00000123
	ldr r3, _020947D4 ; =sub_020958FC
	ldrb r0, [r0, r1]
	bx r3
	; .align 2, 0
_020947D0: .word 0x00000123
_020947D4: .word sub_020958FC
	thumb_func_end sub_020947C8

	thumb_func_start sub_020947D8
sub_020947D8: ; 0x020947D8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02095904
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0x45
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020947D8

	thumb_func_start sub_020947F0
sub_020947F0: ; 0x020947F0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02095904
	add r1, r4, r0
	mov r0, #0x11
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	pop {r4, pc}
	thumb_func_end sub_020947F0

	thumb_func_start sub_02094804
sub_02094804: ; 0x02094804
	push {r3, lr}
	ldr r1, _02094824 ; =0x00000171
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _02094812
	mov r0, #1
	pop {r3, pc}
_02094812:
	bl sub_0209590C
	cmp r0, #1
	bne _0209481E
	mov r0, #2
	pop {r3, pc}
_0209481E:
	mov r0, #0
	pop {r3, pc}
	nop
_02094824: .word 0x00000171
	thumb_func_end sub_02094804

	thumb_func_start sub_02094828
sub_02094828: ; 0x02094828
	push {r4, r5}
	mov r4, #0x12
	lsl r4, r4, #4
	ldrb r5, [r0, r4]
	strh r5, [r1]
	sub r1, r4, #1
	ldrb r1, [r0, r1]
	strh r1, [r2]
	add r1, r4, #1
	ldrb r1, [r0, r1]
	strh r1, [r3]
	ldr r1, _0209484C ; =0x00001998
	ldrb r1, [r0, r1]
	ldr r0, [sp, #8]
	strh r1, [r0]
	pop {r4, r5}
	bx lr
	nop
_0209484C: .word 0x00001998
	thumb_func_end sub_02094828

	thumb_func_start sub_02094850
sub_02094850: ; 0x02094850
	ldr r1, _02094858 ; =0x00000171
	ldr r3, _0209485C ; =sub_020959F4
	ldrb r0, [r0, r1]
	bx r3
	; .align 2, 0
_02094858: .word 0x00000171
_0209485C: .word sub_020959F4
	thumb_func_end sub_02094850

	thumb_func_start sub_02094860
sub_02094860: ; 0x02094860
	ldr r3, _02094864 ; =sub_02095A24
	bx r3
	; .align 2, 0
_02094864: .word sub_02095A24
	thumb_func_end sub_02094860

	thumb_func_start sub_02094868
sub_02094868: ; 0x02094868
	push {r4, lr}
	mov r1, #0x12
	add r4, r0, #0
	lsl r1, r1, #4
	ldrb r0, [r4, r1]
	sub r1, r1, #1
	ldrb r1, [r4, r1]
	bl sub_02095A3C
	add r1, r0, #0
	ldr r0, _02094894 ; =0x00001990
	mov r2, #0
	ldr r0, [r4, r0]
	bl sub_02074470
	cmp r0, #0
	beq _0209488E
	mov r0, #1
	pop {r4, pc}
_0209488E:
	mov r0, #0
	pop {r4, pc}
	nop
_02094894: .word 0x00001990
	thumb_func_end sub_02094868

	thumb_func_start sub_02094898
sub_02094898: ; 0x02094898
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02094900 ; =0x0000011F
	add r5, r2, #0
	ldrb r2, [r0, r1]
	cmp r2, #4
	bhi _020948E4
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020948B2: ; jump table
	.short _020948BC - _020948B2 - 2 ; case 0
	.short _020948C4 - _020948B2 - 2 ; case 1
	.short _020948CC - _020948B2 - 2 ; case 2
	.short _020948D4 - _020948B2 - 2 ; case 3
	.short _020948DC - _020948B2 - 2 ; case 4
_020948BC:
	add r1, r1, #1
	ldrb r0, [r0, r1]
	add r0, #0x21
	b _020948EA
_020948C4:
	add r1, r1, #1
	ldrb r0, [r0, r1]
	add r0, #0x25
	b _020948EA
_020948CC:
	add r1, r1, #1
	ldrb r0, [r0, r1]
	add r0, #0x29
	b _020948EA
_020948D4:
	add r1, r1, #1
	ldrb r0, [r0, r1]
	add r0, #0x2d
	b _020948EA
_020948DC:
	add r1, r1, #1
	ldrb r0, [r0, r1]
	add r0, #0x31
	b _020948EA
_020948E4:
	bl sub_02022974
	pop {r3, r4, r5, pc}
_020948EA:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #3
	bl sub_020923C0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200B668
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02094900: .word 0x0000011F
	thumb_func_end sub_02094898

	thumb_func_start sub_02094904
sub_02094904: ; 0x02094904
	push {r3, r4, r5, lr}
	mov r4, #0x64
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xbf
	ldrb r1, [r5, r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0xcc
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02094924
	ldr r0, _02094A50 ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_02094924:
	add r0, r4, #0
	add r0, #0xbb
	ldrb r0, [r5, r0]
	cmp r0, #4
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0209493A: ; jump table
	.short _02094944 - _0209493A - 2 ; case 0
	.short _02094972 - _0209493A - 2 ; case 1
	.short _020949A0 - _0209493A - 2 ; case 2
	.short _020949CE - _0209493A - 2 ; case 3
	.short _020949FC - _0209493A - 2 ; case 4
_02094944:
	add r0, r4, #0
	add r0, #0xbc
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0209495A: ; jump table
	.short _02094962 - _0209495A - 2 ; case 0
	.short _02094966 - _0209495A - 2 ; case 1
	.short _0209496A - _0209495A - 2 ; case 2
	.short _0209496E - _0209495A - 2 ; case 3
_02094962:
	mov r4, #0x49
	b _02094A28
_02094966:
	mov r4, #0x4e
	b _02094A28
_0209496A:
	mov r4, #0x53
	b _02094A28
_0209496E:
	mov r4, #0x58
	b _02094A28
_02094972:
	add r0, r4, #0
	add r0, #0xbc
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02094988: ; jump table
	.short _02094990 - _02094988 - 2 ; case 0
	.short _02094994 - _02094988 - 2 ; case 1
	.short _02094998 - _02094988 - 2 ; case 2
	.short _0209499C - _02094988 - 2 ; case 3
_02094990:
	mov r4, #0x4a
	b _02094A28
_02094994:
	mov r4, #0x4f
	b _02094A28
_02094998:
	mov r4, #0x54
	b _02094A28
_0209499C:
	mov r4, #0x59
	b _02094A28
_020949A0:
	add r0, r4, #0
	add r0, #0xbc
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020949B6: ; jump table
	.short _020949BE - _020949B6 - 2 ; case 0
	.short _020949C2 - _020949B6 - 2 ; case 1
	.short _020949C6 - _020949B6 - 2 ; case 2
	.short _020949CA - _020949B6 - 2 ; case 3
_020949BE:
	mov r4, #0x48
	b _02094A28
_020949C2:
	mov r4, #0x4d
	b _02094A28
_020949C6:
	mov r4, #0x52
	b _02094A28
_020949CA:
	mov r4, #0x57
	b _02094A28
_020949CE:
	add r0, r4, #0
	add r0, #0xbc
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020949E4: ; jump table
	.short _020949EC - _020949E4 - 2 ; case 0
	.short _020949F0 - _020949E4 - 2 ; case 1
	.short _020949F4 - _020949E4 - 2 ; case 2
	.short _020949F8 - _020949E4 - 2 ; case 3
_020949EC:
	mov r4, #0x4c
	b _02094A28
_020949F0:
	mov r4, #0x51
	b _02094A28
_020949F4:
	mov r4, #0x56
	b _02094A28
_020949F8:
	mov r4, #0x5b
	b _02094A28
_020949FC:
	add r0, r4, #0
	add r0, #0xbc
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02094A12: ; jump table
	.short _02094A1A - _02094A12 - 2 ; case 0
	.short _02094A1E - _02094A12 - 2 ; case 1
	.short _02094A22 - _02094A12 - 2 ; case 2
	.short _02094A26 - _02094A12 - 2 ; case 3
_02094A1A:
	mov r4, #0x4b
	b _02094A28
_02094A1E:
	mov r4, #0x50
	b _02094A28
_02094A22:
	mov r4, #0x55
	b _02094A28
_02094A26:
	mov r4, #0x5a
_02094A28:
	cmp r4, #0x64
	bne _02094A30
	bl sub_02022974
_02094A30:
	ldr r0, _02094A54 ; =0x0000198C
	ldr r0, [r5, r0]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	mov r2, #1
	bl sub_02029D50
	cmp r0, #0
	bne _02094A4C
	ldr r0, _02094A50 ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_02094A4C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02094A50: .word 0x0000FFFF
_02094A54: .word 0x0000198C
	thumb_func_end sub_02094904

	thumb_func_start sub_02094A58
sub_02094A58: ; 0x02094A58
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02094B04 ; =0x000019BC
	add r6, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02094A6A
	bl sub_02022974
_02094A6A:
	mov r0, #4
	mov r1, #0x10
	bl sub_02018184
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r6, #0
	bl sub_02095904
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	mov r1, #0x43
	lsl r1, r1, #2
	add r0, r5, r0
	ldrb r2, [r0, r1]
	mov r0, #1
	and r0, r2
	add r2, r1, #0
	add r2, #0x65
	ldrb r2, [r5, r2]
	cmp r2, #1
	bne _02094AA8
	mov r1, #6
	ldr r2, _02094B08 ; =0x020F55D0
	mul r1, r0
	add r0, r2, r1
	str r0, [r4, #4]
	b _02094AF0
_02094AA8:
	add r1, #0x14
	ldrb r1, [r5, r1]
	cmp r1, #3
	bhi _02094AE6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02094ABC: ; jump table
	.short _02094AC4 - _02094ABC - 2 ; case 0
	.short _02094AD0 - _02094ABC - 2 ; case 1
	.short _02094ADA - _02094ABC - 2 ; case 2
	.short _02094AE6 - _02094ABC - 2 ; case 3
_02094AC4:
	lsl r1, r0, #1
	ldr r2, _02094B0C ; =0x020F55B4
	add r0, r0, r1
	add r0, r2, r0
	str r0, [r4, #4]
	b _02094AF0
_02094AD0:
	ldr r1, _02094B10 ; =0x020F55BC
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #4]
	b _02094AF0
_02094ADA:
	lsl r1, r0, #2
	ldr r2, _02094B14 ; =0x020F55C4
	add r0, r0, r1
	add r0, r2, r0
	str r0, [r4, #4]
	b _02094AF0
_02094AE6:
	mov r1, #6
	ldr r2, _02094B08 ; =0x020F55D0
	mul r1, r0
	add r0, r2, r1
	str r0, [r4, #4]
_02094AF0:
	ldr r0, _02094B18 ; =sub_02094B30
	add r1, r5, #0
	mov r2, #0x64
	bl sub_0200D9E8
	str r0, [r4, #0]
	ldr r0, _02094B04 ; =0x000019BC
	str r4, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_02094B04: .word 0x000019BC
_02094B08: .word 0x020F55D0
_02094B0C: .word 0x020F55B4
_02094B10: .word 0x020F55BC
_02094B14: .word 0x020F55C4
_02094B18: .word sub_02094B30
	thumb_func_end sub_02094A58

	thumb_func_start sub_02094B1C
sub_02094B1C: ; 0x02094B1C
	ldr r1, _02094B2C ; =0x000019BC
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02094B28
	mov r0, #1
	bx lr
_02094B28:
	mov r0, #0
	bx lr
	; .align 2, 0
_02094B2C: .word 0x000019BC
	thumb_func_end sub_02094B1C

	thumb_func_start sub_02094B30
sub_02094B30: ; 0x02094B30
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, _02094BAC ; =0x000019BC
	add r5, r1, #0
	ldr r4, [r5, r0]
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _02094BA8
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _02094B94
	mov r0, #8
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #8]
	ldrsh r2, [r4, r0]
	ldrb r0, [r4, #0xa]
	ldr r1, [r4, #4]
	ldrb r0, [r1, r0]
	cmp r2, r0
	ble _02094BA8
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	mov r1, #0
	mov r2, #4
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, _02094BB0 ; =0x000005F8
	bl sub_02005748
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	mov r0, #0
	strh r0, [r4, #8]
	ldrb r0, [r4, #0xa]
	ldr r1, [r4, #4]
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	bne _02094BA8
	ldrb r0, [r4, #0xb]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4, #0xb]
	pop {r3, r4, r5, r6, pc}
_02094B94:
	ldr r0, _02094BAC ; =0x000019BC
	ldr r0, [r5, r0]
	bl sub_020181C4
	ldr r0, _02094BAC ; =0x000019BC
	mov r1, #0
	str r1, [r5, r0]
	add r0, r6, #0
	bl sub_0200DA58
_02094BA8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02094BAC: .word 0x000019BC
_02094BB0: .word 0x000005F8
	thumb_func_end sub_02094B30

	thumb_func_start sub_02094BB4
sub_02094BB4: ; 0x02094BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x13
	str r2, [sp, #4]
	ldr r6, [sp, #0x20]
	ldr r7, [sp, #0x24]
	str r1, [sp]
	str r3, [sp, #8]
	mov r4, #0
	add r2, r5, #0
	lsl r0, r0, #4
_02094BCC:
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02094BDA
	add r4, r4, #1
	add r2, #0xc
	cmp r4, #4
	blt _02094BCC
_02094BDA:
	add r0, r4, #0
	bl sub_020958FC
	ldr r1, [sp]
	str r0, [r1, #0]
	ldr r1, _02094C3C ; =0x00000171
	ldr r0, [sp, #4]
	ldrb r2, [r5, r1]
	sub r1, #0x4a
	str r2, [r0, #0]
	ldrb r0, [r5, r1]
	cmp r4, r0
	blt _02094BFA
	mov r1, #1
	ldr r0, [sp, #8]
	b _02094BFE
_02094BFA:
	ldr r0, [sp, #8]
	mov r1, #0
_02094BFE:
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r6, #0]
	str r0, [r7, #0]
	ldr r0, _02094C40 ; =0x00000121
	ldrb r0, [r5, r0]
	cmp r0, #8
	bhi _02094C38
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02094C1A: ; jump table
	.short _02094C38 - _02094C1A - 2 ; case 0
	.short _02094C38 - _02094C1A - 2 ; case 1
	.short _02094C38 - _02094C1A - 2 ; case 2
	.short _02094C2C - _02094C1A - 2 ; case 3
	.short _02094C34 - _02094C1A - 2 ; case 4
	.short _02094C2C - _02094C1A - 2 ; case 5
	.short _02094C34 - _02094C1A - 2 ; case 6
	.short _02094C2C - _02094C1A - 2 ; case 7
	.short _02094C34 - _02094C1A - 2 ; case 8
_02094C2C:
	mov r0, #1
	add sp, #0xc
	str r0, [r6, #0]
	pop {r4, r5, r6, r7, pc}
_02094C34:
	mov r0, #1
	str r0, [r7, #0]
_02094C38:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02094C3C: .word 0x00000171
_02094C40: .word 0x00000121
	thumb_func_end sub_02094BB4

	thumb_func_start sub_02094C44
sub_02094C44: ; 0x02094C44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _02094E60 ; =0x00000121
	str r2, [sp, #4]
	ldrb r0, [r4, r0]
	add r6, r3, #0
	mov r5, #0
	cmp r0, #8
	bhi _02094C7A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02094C64: ; jump table
	.short _02094C7A - _02094C64 - 2 ; case 0
	.short _02094C7A - _02094C64 - 2 ; case 1
	.short _02094C7A - _02094C64 - 2 ; case 2
	.short _02094C76 - _02094C64 - 2 ; case 3
	.short _02094C76 - _02094C64 - 2 ; case 4
	.short _02094C76 - _02094C64 - 2 ; case 5
	.short _02094C76 - _02094C64 - 2 ; case 6
	.short _02094C76 - _02094C64 - 2 ; case 7
	.short _02094C76 - _02094C64 - 2 ; case 8
_02094C76:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02094C7A:
	ldr r2, _02094E64 ; =0x00000171
	ldrb r0, [r4, r2]
	cmp r0, #0
	ldr r0, _02094E68 ; =0x0000198C
	beq _02094C86
	b _02094D96
_02094C86:
	ldr r0, [r4, r0]
	bl sub_020507E4
	add r6, r0, #0
	ldr r0, _02094E60 ; =0x00000121
	ldrb r1, [r4, r0]
	cmp r1, #2
	bne _02094CC0
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #3
	blo _02094CC0
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094CC0
	ldr r1, _02094E6C ; =0x0000011F
	add r0, r6, #0
	ldrb r1, [r4, r1]
	bl sub_0206AAA8
	cmp r0, #0
	bne _02094CC0
	ldr r1, _02094E6C ; =0x0000011F
	add r0, r6, #0
	ldrb r1, [r4, r1]
	bl sub_0206AA50
_02094CC0:
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094D0C
	mov r1, #1
	add r0, sp, #8
	strb r1, [r0]
	mov r1, #0x12
	lsl r1, r1, #4
	ldrb r0, [r4, r1]
	sub r1, r1, #1
	ldrb r1, [r4, r1]
	bl sub_02095A3C
	add r6, r0, #0
	ldr r0, _02094E70 ; =0x00001990
	add r1, r6, #0
	ldr r0, [r4, r0]
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02094CF2
	mov r5, #1
_02094CF2:
	ldr r0, _02094E70 ; =0x00001990
	add r1, r6, #0
	ldr r0, [r4, r0]
	add r2, sp, #8
	bl sub_02074B30
	ldr r1, _02094E68 ; =0x0000198C
	add r2, r6, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0206DDB8
_02094D0C:
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_0202440C
	ldr r3, _02094E74 ; =0x00000123
	mov r1, #0xc
	ldrb r2, [r4, r3]
	mul r1, r2
	add r2, r4, r1
	add r1, r3, #0
	add r1, #0xd
	ldrb r1, [r2, r1]
	sub r2, r3, #4
	sub r3, r3, #3
	add r1, r1, #1
	str r1, [sp]
	ldr r1, _02094E70 ; =0x00001990
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	ldr r1, [r4, r1]
	bl sub_0206CF14
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_0202CD88
	mov r1, #0x5a
	add r6, r0, #0
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094D62
	add r0, r6, #0
	mov r1, #0x5c
	bl sub_0202CF28
	add r0, r6, #0
	mov r1, #0xd
	bl sub_0202CFEC
_02094D62:
	cmp r5, #1
	bne _02094D6E
	add r0, r6, #0
	mov r1, #0x5e
	bl sub_0202CF28
_02094D6E:
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_02027560
	add r7, r0, #0
	ldr r0, _02094E78 ; =0x00000127
	ldrb r6, [r4, r0]
	cmp r6, #4
	bge _02094E0A
	lsl r0, r6, #2
	add r5, r4, r0
_02094D84:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_020272A4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02094D84
	b _02094E0A
_02094D96:
	add r3, r2, #0
	sub r3, #0x4e
	ldrb r5, [r4, r3]
	add r1, r2, #0
	mov r3, #0xc
	mul r3, r5
	sub r1, #0x52
	add r3, r4, r3
	sub r2, #0x41
	ldrb r1, [r4, r1]
	ldrb r2, [r3, r2]
	ldr r0, [r4, r0]
	bl sub_0202F134
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_0202CD88
	mov r1, #0x5b
	add r5, r0, #0
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094DDC
	add r0, r5, #0
	mov r1, #0x5d
	bl sub_0202CF28
	add r0, r5, #0
	mov r1, #0x13
	bl sub_0202CFEC
_02094DDC:
	ldr r1, _02094E74 ; =0x00000123
	mov r0, #0xc
	ldrb r2, [r4, r1]
	add r1, #0xd
	mul r0, r2
	add r0, r4, r0
	ldrb r0, [r0, r1]
	mov r1, #0xb
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0202C1C0
	add r5, r0, #0
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_0202B628
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #4
	bl sub_0202B758
_02094E0A:
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094E42
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_0202A750
	ldr r1, _02094E6C ; =0x0000011F
	ldrb r1, [r4, r1]
	bl sub_02029CD0
	add r5, r0, #0
	bl sub_0202A25C
	ldr r1, _02094E74 ; =0x00000123
	add r0, r5, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	bl sub_0202A390
	add r0, r5, #0
	bl sub_0202A240
_02094E42:
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094E5C
	ldr r0, _02094E70 ; =0x00001990
	ldr r2, [sp, #4]
	ldr r0, [r4, r0]
	lsl r2, r2, #0x10
	mov r1, #9
	lsr r2, r2, #0x10
	bl sub_02075C74
_02094E5C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02094E60: .word 0x00000121
_02094E64: .word 0x00000171
_02094E68: .word 0x0000198C
_02094E6C: .word 0x0000011F
_02094E70: .word 0x00001990
_02094E74: .word 0x00000123
_02094E78: .word 0x00000127
	thumb_func_end sub_02094C44

	thumb_func_start sub_02094E7C
sub_02094E7C: ; 0x02094E7C
	push {r4, lr}
	bl sub_020138C8
	add r4, r0, #0
	bl sub_0201D2D0
	add r0, #0xa
	mul r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D2DC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02094E7C

	thumb_func_start sub_02094E98
sub_02094E98: ; 0x02094E98
	ldr r3, _02094E9C ; =sub_0201D2E8
	bx r3
	; .align 2, 0
_02094E9C: .word sub_0201D2E8
	thumb_func_end sub_02094E98

	thumb_func_start sub_02094EA0
sub_02094EA0: ; 0x02094EA0
	push {r4, lr}
	add r4, r1, #0
	bl sub_0201D30C
	str r0, [r4, #0]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02094EA0

	thumb_func_start sub_02094EB4
sub_02094EB4: ; 0x02094EB4
	push {r4, r5}
	mov r5, #0x42
	add r3, r0, r1
	lsl r5, r5, #2
	ldrb r4, [r3, r5]
	lsl r1, r1, #1
	add r0, r0, r1
	strb r4, [r2]
	add r4, r5, #4
	ldrb r4, [r3, r4]
	strb r4, [r2, #1]
	add r4, r5, #0
	add r4, #8
	ldrb r3, [r3, r4]
	add r5, #0xc
	strb r3, [r2, #2]
	ldrh r0, [r0, r5]
	strh r0, [r2, #4]
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02094EB4

	thumb_func_start sub_02094EDC
sub_02094EDC: ; 0x02094EDC
	ldr r2, _02094F00 ; =0x00000171
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _02094EF6
	cmp r1, #1
	bne _02094EFA
	add r1, r2, #0
	sub r1, #0x55
	sub r2, #0x4e
	ldrb r1, [r0, r1]
	ldrb r0, [r0, r2]
	cmp r1, r0
	bne _02094EFA
_02094EF6:
	mov r0, #1
	bx lr
_02094EFA:
	mov r0, #0
	bx lr
	nop
_02094F00: .word 0x00000171
	thumb_func_end sub_02094EDC

	thumb_func_start sub_02094F04
sub_02094F04: ; 0x02094F04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp, #4]
	ldr r0, [sp, #0x70]
	mov r6, #0
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x74]
	add r5, r1, #0
	add r4, r3, #0
	str r2, [sp, #8]
	str r6, [sp, #0x20]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	cmp r0, #8
	bhi _02094F4A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02094F2E: ; jump table
	.short _02094F4A - _02094F2E - 2 ; case 0
	.short _02094F4A - _02094F2E - 2 ; case 1
	.short _02094F4A - _02094F2E - 2 ; case 2
	.short _02094F40 - _02094F2E - 2 ; case 3
	.short _02094F46 - _02094F2E - 2 ; case 4
	.short _02094F40 - _02094F2E - 2 ; case 5
	.short _02094F46 - _02094F2E - 2 ; case 6
	.short _02094F40 - _02094F2E - 2 ; case 7
	.short _02094F46 - _02094F2E - 2 ; case 8
_02094F40:
	mov r0, #1
	str r0, [sp, #0x18]
	b _02094F4A
_02094F46:
	mov r0, #1
	str r0, [sp, #0x1c]
_02094F4A:
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	mov r0, #0x5a
	add r2, r1, #0
	add r3, r5, #0
	bl sub_02006FE8
	str r0, [sp, #0x14]
	mov r0, #0x5a
	mov r1, #0
	bl sub_02006B58
	mov r1, #0x30
	bl sub_020E2178
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	add r1, r1, #1
	bl sub_02018184
	add r5, r0, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne _02094F88
	ldr r0, [sp, #0x7c]
	cmp r0, #1
	bne _02094F88
	mov r0, #1
	str r0, [sp, #0x20]
_02094F88:
	ldr r0, [sp, #0x24]
	mov r2, #0
	cmp r0, #0
	ble _0209503A
	ldr r3, [sp, #0x14]
_02094F92:
	ldrh r7, [r3, #0x20]
	lsl r0, r7, #0x1d
	lsr r1, r0, #0x1d
	ldr r0, [sp, #0x70]
	cmp r0, r1
	bne _02095030
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _02094FAE
	lsl r0, r7, #0x14
	lsr r0, r0, #0x1e
	cmp r0, #1
	beq _02095030
	b _02094FBA
_02094FAE:
	lsl r0, r7, #0x14
	lsr r0, r0, #0x1e
	cmp r0, #2
	beq _02095030
	cmp r0, #3
	beq _02095030
_02094FBA:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _02094FCA
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	beq _02095030
	b _02094FEA
_02094FCA:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	ldrh r0, [r3, #0x20]
	bne _02094FDA
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	beq _02095030
	b _02094FEA
_02094FDA:
	lsl r1, r0, #0x16
	lsr r1, r1, #0x1f
	cmp r1, #1
	beq _02095030
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _02095030
_02094FEA:
	cmp r4, #0
	bne _02094FF6
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _02095026
_02094FF6:
	cmp r4, #1
	bne _02095002
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bne _02095026
_02095002:
	cmp r4, #2
	bne _0209500E
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	bne _02095026
_0209500E:
	cmp r4, #3
	bne _0209501A
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bne _02095026
_0209501A:
	cmp r4, #4
	bne _02095030
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _02095030
_02095026:
	add r1, r6, #1
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	strb r2, [r5, r0]
_02095030:
	ldr r0, [sp, #0x24]
	add r2, r2, #1
	add r3, #0x30
	cmp r2, r0
	blt _02094F92
_0209503A:
	mov r0, #0xff
	strb r0, [r5, r6]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02095046
	b _0209516E
_02095046:
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _02095050
	bl sub_02022974
_02095050:
	mov r0, #0
	str r0, [sp, #0x10]
	cmp r6, #0
	ble _0209507A
	mov r2, #0x30
_0209505A:
	ldrb r1, [r5, r0]
	add r3, r1, #0
	ldr r1, [sp, #0x14]
	mul r3, r2
	add r1, r1, r3
	ldrh r1, [r1, #0x20]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1e
	cmp r1, #3
	bne _02095074
	ldr r1, [sp, #0x10]
	add r1, r1, #1
	str r1, [sp, #0x10]
_02095074:
	add r0, r0, #1
	cmp r0, r6
	blt _0209505A
_0209507A:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _020950C2
	ldr r0, [sp, #4]
	bl sub_02094E98
	ldr r1, [sp, #0x10]
	bl sub_020E1F6C
	mov r3, #0
	cmp r6, #0
	ble _020950C2
	mov r0, #0x30
_02095094:
	ldrb r4, [r5, r3]
	add r2, r4, #0
	ldr r4, [sp, #0x14]
	mul r2, r0
	add r2, r4, r2
	ldrh r4, [r2, #0x20]
	lsl r4, r4, #0x14
	lsr r4, r4, #0x1e
	cmp r4, #3
	bne _020950BC
	cmp r1, #0
	bne _020950BA
	add r4, sp, #0x28
	mov r3, #6
_020950B0:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _020950B0
	b _020950C2
_020950BA:
	sub r1, r1, #1
_020950BC:
	add r3, r3, #1
	cmp r3, r6
	blt _02095094
_020950C2:
	ldr r0, [sp, #8]
	mov r1, #4
	sub r4, r1, r0
	add r0, r4, #0
	str r4, [sp, #0xc]
	cmp r0, #4
	bge _02095136
_020950D0:
	ldr r0, [sp, #4]
	bl sub_02094E98
	add r1, r6, #0
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	ldrb r3, [r5, r2]
	mov r0, #0x30
	add r1, r3, #0
	ldr r3, [sp, #0x14]
	mul r1, r0
	add r7, r3, r1
	ldrh r1, [r7, #0x20]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1e
	cmp r1, #3
	bne _020950FA
	sub r4, r4, #1
	b _02095130
_020950FA:
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r3, r0, r1
	mov r0, #6
	add r3, #0x10
	mov ip, r0
_02095108:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, ip
	sub r0, r0, #1
	mov ip, r0
	bne _02095108
	ldrb r1, [r5, r2]
	add r0, r5, r2
	cmp r1, #0xff
	beq _0209512A
_0209511C:
	ldrb r1, [r0, #1]
	add r2, r2, #1
	strb r1, [r0]
	ldrb r1, [r5, r2]
	add r0, r5, r2
	cmp r1, #0xff
	bne _0209511C
_0209512A:
	sub r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02095130:
	add r4, r4, #1
	cmp r4, #4
	blt _020950D0
_02095136:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0209519E
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #4]
	bl sub_02094E98
	ldr r1, [sp, #8]
	bl sub_020E1F6C
	add r0, r4, r1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	add r1, r2, #0
	mov r0, #0x30
	mul r1, r0
	ldr r0, [sp, #4]
	add r4, sp, #0x28
	add r3, r0, r1
	add r3, #0x10
	mov r2, #6
_02095164:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02095164
	b _0209519E
_0209516E:
	cmp r6, #4
	bhs _02095176
	bl sub_02022974
_02095176:
	mov r6, #0
	mov r7, #0x30
_0209517A:
	ldrb r0, [r5, r6]
	ldr r3, [sp, #4]
	mov r2, #6
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mul r1, r7
	add r4, r0, r1
	add r3, #0x10
_0209518A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0209518A
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, #0x30
	str r0, [sp, #4]
	cmp r6, #4
	blt _0209517A
_0209519E:
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02094F04

	thumb_func_start sub_020951B0
sub_020951B0: ; 0x020951B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	mov r0, #1
	add r3, r1, #0
	str r0, [sp]
	mov r0, #0x5a
	mov r1, #2
	mov r2, #0
	bl sub_02006FE8
	str r0, [sp, #0x14]
	ldr r1, _02095330 ; =0x00000121
	ldr r0, [sp, #8]
	ldrb r0, [r0, r1]
	cmp r0, #4
	beq _020951DA
	cmp r0, #6
	beq _020951DA
	cmp r0, #8
	bne _020951E0
_020951DA:
	mov r0, #0
	str r0, [sp, #0xc]
	b _020951E8
_020951E0:
	ldr r0, [sp, #8]
	add r1, r1, #6
	ldrb r0, [r0, r1]
	str r0, [sp, #0xc]
_020951E8:
	ldr r0, [sp, #0xc]
	cmp r0, #4
	blt _020951F0
	b _02095326
_020951F0:
	mov r1, #0x30
	mul r1, r0
	ldr r0, [sp, #8]
	add r7, r0, r1
	ldr r0, [sp, #0xc]
	lsl r1, r0, #2
	ldr r0, [sp, #8]
	add r6, r0, r1
_02095200:
	ldr r1, _02095334 ; =0x00000122
	ldr r0, [sp, #8]
	ldrb r0, [r0, r1]
	cmp r0, #0xb
	bhi _0209528E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02095216: ; jump table
	.short _0209522E - _02095216 - 2 ; case 0
	.short _02095236 - _02095216 - 2 ; case 1
	.short _0209523E - _02095216 - 2 ; case 2
	.short _02095246 - _02095216 - 2 ; case 3
	.short _0209524E - _02095216 - 2 ; case 4
	.short _02095256 - _02095216 - 2 ; case 5
	.short _0209525E - _02095216 - 2 ; case 6
	.short _02095266 - _02095216 - 2 ; case 7
	.short _0209526E - _02095216 - 2 ; case 8
	.short _02095276 - _02095216 - 2 ; case 9
	.short _0209527E - _02095216 - 2 ; case 10
	.short _02095286 - _02095216 - 2 ; case 11
_0209522E:
	add r0, r7, #0
	add r0, #0x32
	ldrb r2, [r0]
	b _02095294
_02095236:
	add r0, r7, #0
	add r0, #0x33
	ldrb r2, [r0]
	b _02095294
_0209523E:
	add r0, r7, #0
	add r0, #0x34
	ldrb r2, [r0]
	b _02095294
_02095246:
	add r0, r7, #0
	add r0, #0x35
	ldrb r2, [r0]
	b _02095294
_0209524E:
	add r0, r7, #0
	add r0, #0x36
	ldrb r2, [r0]
	b _02095294
_02095256:
	add r0, r7, #0
	add r0, #0x37
	ldrb r2, [r0]
	b _02095294
_0209525E:
	add r0, r7, #0
	add r0, #0x38
	ldrb r2, [r0]
	b _02095294
_02095266:
	add r0, r7, #0
	add r0, #0x39
	ldrb r2, [r0]
	b _02095294
_0209526E:
	add r0, r7, #0
	add r0, #0x3a
	ldrb r2, [r0]
	b _02095294
_02095276:
	add r0, r7, #0
	add r0, #0x3b
	ldrb r2, [r0]
	b _02095294
_0209527E:
	add r0, r7, #0
	add r0, #0x3c
	ldrb r2, [r0]
	b _02095294
_02095286:
	add r0, r7, #0
	add r0, #0x3d
	ldrb r2, [r0]
	b _02095294
_0209528E:
	bl sub_02022974
	mov r2, #0
_02095294:
	mov r0, #0x54
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0202A25C
	add r0, r6, #0
	add r0, #0xf8
	ldr r2, [sp, #0x10]
	mov r3, #0x51
	ldrsb r2, [r2, r3]
	ldr r0, [r0, #0]
	ldr r1, [r6, #0]
	bl sub_0202A3B0
	ldr r0, [sp, #0x10]
	mov r5, #0
	add r0, #0x50
	ldrb r0, [r0]
	cmp r0, #0
	ble _020952F2
	ldr r4, [sp, #0x10]
_020952CA:
	ldrb r0, [r4, #2]
	add r1, r5, #0
	str r0, [sp]
	mov r0, #3
	ldrsb r0, [r4, r0]
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xf8
	ldrb r2, [r4]
	ldrb r3, [r4, #1]
	ldr r0, [r0, #0]
	bl sub_0202A3EC
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	add r0, #0x50
	ldrb r0, [r0]
	add r4, r4, #4
	cmp r5, r0
	blt _020952CA
_020952F2:
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	add r1, #0x52
	add r0, #0xf8
	str r1, [sp, #0x10]
	ldrb r1, [r1]
	ldr r0, [r0, #0]
	bl sub_0202A35C
	mov r2, #0x12
	add r0, r6, #0
	add r0, #0xf8
	ldr r1, [sp, #8]
	lsl r2, r2, #4
	ldrb r1, [r1, r2]
	ldr r0, [r0, #0]
	bl sub_0202A378
	ldr r0, [sp, #0xc]
	add r7, #0x30
	add r0, r0, #1
	add r6, r6, #4
	str r0, [sp, #0xc]
	cmp r0, #4
	bge _02095326
	b _02095200
_02095326:
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02095330: .word 0x00000121
_02095334: .word 0x00000122
	thumb_func_end sub_020951B0

	thumb_func_start sub_02095338
sub_02095338: ; 0x02095338
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0x12
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_02095344:
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0202A25C
	add r0, r5, #0
	add r0, #0xf8
	mov r2, #0
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	mvn r2, r2
	bl sub_0202A3B0
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0202A35C
	add r0, r5, #0
	add r0, #0xf8
	ldrb r1, [r6, r7]
	ldr r0, [r0, #0]
	bl sub_0202A378
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02095344
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02095338

	thumb_func_start sub_02095380
sub_02095380: ; 0x02095380
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	add r6, r1, #0
	ldrh r1, [r7, #0x20]
	str r2, [sp, #0x10]
	ldrh r0, [r7, #0x14]
	lsl r1, r1, #0x12
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02074128
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _02095480 ; =0x0F0F0F0F
	mov r2, #0xa
	str r0, [sp, #0xc]
	ldrh r1, [r7, #0x14]
	add r0, r6, #0
	mov r3, #0x20
	bl sub_02073D80
	mov r4, #0
	add r5, r7, #0
_020953BA:
	ldrh r1, [r5, #0xc]
	add r0, sp, #0x18
	add r2, sp, #0x1c
	strh r1, [r0, #6]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	add r2, #2
	bl sub_02074B30
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _020953BA
	ldr r3, [sp, #0x10]
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcd
	bl sub_0200B144
	ldrh r1, [r7, #0x16]
	add r4, r0, #0
	bl sub_0200B1EC
	add r5, r0, #0
	ldrh r1, [r7, #0x18]
	add r0, r4, #0
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x77
	add r2, r5, #0
	bl sub_02074B30
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x91
	bl sub_02074B30
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	add r2, sp, #0x1c
	ldrb r1, [r7, #0x1a]
	add r0, sp, #0x18
	add r2, #1
	strb r1, [r0, #5]
	ldrb r1, [r7, #0x1b]
	strb r1, [r0, #4]
	ldrb r1, [r7, #0x1c]
	strb r1, [r0, #3]
	ldrb r1, [r7, #0x1d]
	strb r1, [r0, #2]
	ldrb r1, [r7, #0x1e]
	strb r1, [r0, #1]
	ldrb r1, [r7, #0x1f]
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #0x13
	bl sub_02074B30
	add r0, r6, #0
	mov r1, #0x14
	add r2, sp, #0x1c
	bl sub_02074B30
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x15
	add r2, #3
	bl sub_02074B30
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x16
	add r2, #2
	bl sub_02074B30
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x17
	add r2, #1
	bl sub_02074B30
	add r0, r6, #0
	mov r1, #0x18
	add r2, sp, #0x18
	bl sub_02074B30
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02095480: .word 0x0F0F0F0F
	thumb_func_end sub_02095380

	thumb_func_start sub_02095484
sub_02095484: ; 0x02095484
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r3, #0
	add r5, r2, #0
	lsl r2, r6, #0x18
	str r0, [sp, #0x10]
	add r7, r1, #0
	add r0, sp, #0x14
	add r1, r5, #0
	lsr r2, r2, #0x18
	ldr r4, [sp, #0x38]
	bl sub_02075EF4
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_020765AC
	add r5, r0, #0
	cmp r4, #0
	beq _020954D0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020954B8
	bl sub_02022974
_020954B8:
	add r1, sp, #0x14
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r2, [sp, #0x3c]
	ldr r3, [r4, #0]
	bl sub_02013610
	add r0, sp, #0x14
	ldrh r1, [r0, #4]
	str r1, [r4, #8]
	ldrh r0, [r0]
	str r0, [r4, #4]
_020954D0:
	ldr r0, [sp, #0x48]
	ldr r3, [sp, #0x44]
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x40]
	add r1, sp, #0x14
	add r3, r3, r5
	bl sub_02007C34
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02095484

	thumb_func_start sub_020954F0
sub_020954F0: ; 0x020954F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x38]
	add r7, r3, #0
	mov r5, #0
	str r2, [sp, #0xc]
	str r0, [sp, #0x38]
	mov r1, #1
	ldr r3, [sp, #8]
	mov r0, #0x5a
	add r2, r5, #0
	add r4, r5, #0
	str r1, [sp]
	bl sub_02006FE8
	str r0, [sp, #0x14]
	mov r0, #0x5a
	mov r1, #1
	bl sub_02006B58
	lsr r0, r0, #3
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #8]
	add r1, r1, #1
	bl sub_02018184
	ldr r1, [sp, #0x18]
	add r6, r0, #0
	ldr r0, [sp, #8]
	add r1, r1, #1
	bl sub_02018184
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	cmp r0, #0
	ble _0209562A
	ldr r3, [sp, #0x14]
_02095542:
	ldrh r0, [r3, #4]
	mov ip, r0
	lsl r0, r0, #0x14
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x38]
	cmp r0, r1
	bne _02095620
	cmp r7, #0
	bne _0209557A
	mov r0, ip
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	beq _0209557A
	cmp r0, #1
	bls _0209556E
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x10]
	strb r2, [r0, r1]
	b _02095620
_0209556E:
	add r1, r5, #1
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	strb r2, [r6, r0]
	b _02095620
_0209557A:
	cmp r7, #1
	bne _020955A4
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1e
	beq _020955A4
	cmp r0, #1
	bls _02095598
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x10]
	strb r2, [r0, r1]
	b _02095620
_02095598:
	add r1, r5, #1
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	strb r2, [r6, r0]
	b _02095620
_020955A4:
	cmp r7, #2
	bne _020955CE
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	beq _020955CE
	cmp r0, #1
	bls _020955C2
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x10]
	strb r2, [r0, r1]
	b _02095620
_020955C2:
	add r1, r5, #1
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	strb r2, [r6, r0]
	b _02095620
_020955CE:
	cmp r7, #3
	bne _020955F8
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	beq _020955F8
	cmp r0, #1
	bls _020955EC
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x10]
	strb r2, [r0, r1]
	b _02095620
_020955EC:
	add r1, r5, #1
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	strb r2, [r6, r0]
	b _02095620
_020955F8:
	cmp r7, #4
	bne _02095620
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	beq _02095620
	cmp r0, #1
	bls _02095616
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x10]
	strb r2, [r0, r1]
	b _02095620
_02095616:
	add r1, r5, #1
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	strb r2, [r6, r0]
_02095620:
	ldr r0, [sp, #0x18]
	add r2, r2, #1
	add r3, #8
	cmp r2, r0
	blt _02095542
_0209562A:
	mov r1, #0xff
	ldr r0, [sp, #0x10]
	strb r1, [r6, r5]
	strb r1, [r0, r4]
	cmp r5, #2
	bhs _0209563A
	bl sub_02022974
_0209563A:
	ldr r2, [sp, #4]
	mov r3, #0
_0209563E:
	ldrb r0, [r6, r3]
	ldr r5, [sp, #0x14]
	add r3, r3, #1
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	ldrh r5, [r5, r1]
	add r0, r0, r1
	add r1, r2, #0
	add r1, #0xd0
	strh r5, [r1]
	add r1, r2, #0
	ldrh r5, [r0, #2]
	add r1, #0xd2
	strh r5, [r1]
	add r1, r2, #0
	ldrh r5, [r0, #4]
	add r1, #0xd4
	strh r5, [r1]
	ldrh r1, [r0, #6]
	add r0, r2, #0
	add r0, #0xd6
	add r2, #8
	strh r1, [r0]
	cmp r3, #2
	blt _0209563E
	cmp r4, #1
	bhs _02095678
	bl sub_02022974
_02095678:
	ldr r0, [sp, #4]
	bl sub_02094E98
	add r1, r4, #0
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, r1]
	ldr r1, [sp, #0x14]
	lsl r2, r0, #3
	ldr r0, [sp, #0x14]
	add r0, r0, r2
	ldrh r2, [r1, r2]
	ldr r1, [sp, #4]
	add r1, #0xe0
	strh r2, [r1]
	ldr r1, [sp, #4]
	ldrh r2, [r0, #2]
	add r1, #0xe2
	strh r2, [r1]
	ldr r1, [sp, #4]
	ldrh r2, [r0, #4]
	add r1, #0xe4
	strh r2, [r1]
	ldrh r1, [r0, #6]
	ldr r0, [sp, #4]
	ldr r2, _02095730 ; =0x0000011E
	add r0, #0xe6
	strh r1, [r0]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	strb r1, [r0, r2]
	add r2, r0, #0
	add r0, r1, #0
	lsl r1, r0, #3
	add r2, #0xd0
	ldrh r4, [r2, r1]
	add r0, sp, #0x1c
	add r3, r2, r1
	strh r4, [r0]
	ldrh r4, [r3, #2]
	strh r4, [r0, #2]
	ldrh r4, [r3, #4]
	strh r4, [r0, #4]
	ldrh r4, [r3, #6]
	strh r4, [r0, #6]
	ldr r4, [sp, #4]
	add r4, #0xe0
	ldrh r4, [r4]
	strh r4, [r2, r1]
	ldr r1, [sp, #4]
	add r1, #0xe2
	ldrh r1, [r1]
	strh r1, [r3, #2]
	ldr r1, [sp, #4]
	add r1, #0xe4
	ldrh r1, [r1]
	strh r1, [r3, #4]
	ldr r1, [sp, #4]
	add r1, #0xe6
	ldrh r1, [r1]
	strh r1, [r3, #6]
	ldr r1, [sp, #4]
	ldrh r2, [r0]
	add r1, #0xe0
	strh r2, [r1]
	ldr r1, [sp, #4]
	ldrh r2, [r0, #2]
	add r1, #0xe2
	strh r2, [r1]
	ldr r1, [sp, #4]
	ldrh r2, [r0, #4]
	add r1, #0xe4
	strh r2, [r1]
	ldrh r1, [r0, #6]
	ldr r0, [sp, #4]
	add r0, #0xe6
	str r0, [sp, #4]
	strh r1, [r0]
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02095730: .word 0x0000011E
	thumb_func_end sub_020954F0

	thumb_func_start sub_02095734
sub_02095734: ; 0x02095734
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x18
	blo _02095740
	bl sub_02022974
_02095740:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0209574C ; =0x020F5690
	ldrsb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0209574C: .word 0x020F5690
	thumb_func_end sub_02095734

	thumb_func_start sub_02095750
sub_02095750: ; 0x02095750
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0x18
	blo _02095760
	bl sub_02022974
_02095760:
	mov r0, #0x1a
	add r1, r5, #0
	mul r1, r0
	ldr r0, _02095774 ; =0x020F568C
	ldrh r0, [r0, r1]
	str r0, [r4, #0]
	ldr r0, _02095778 ; =0x020F568E
	ldrh r0, [r0, r1]
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02095774: .word 0x020F568C
_02095778: .word 0x020F568E
	thumb_func_end sub_02095750

	thumb_func_start sub_0209577C
sub_0209577C: ; 0x0209577C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x18
	blo _02095788
	bl sub_02022974
_02095788:
	add r4, #0x2d
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209577C

	thumb_func_start sub_02095790
sub_02095790: ; 0x02095790
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	cmp r4, #0x18
	blo _020957A2
	bl sub_02022974
_020957A2:
	cmp r7, #4
	bhi _020957BC
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020957B2: ; jump table
	.short _020957BC - _020957B2 - 2 ; case 0
	.short _020957D0 - _020957B2 - 2 ; case 1
	.short _020957E4 - _020957B2 - 2 ; case 2
	.short _020957F8 - _020957B2 - 2 ; case 3
	.short _0209580C - _020957B2 - 2 ; case 4
_020957BC:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02095820 ; =0x020F5692
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	ldr r0, _02095824 ; =0x020F5694
	ldrb r0, [r0, r1]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_020957D0:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02095828 ; =0x020F5696
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	ldr r0, _0209582C ; =0x020F5698
	ldrb r0, [r0, r1]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_020957E4:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02095830 ; =0x020F569A
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	ldr r0, _02095834 ; =0x020F569C
	ldrb r0, [r0, r1]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_020957F8:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02095838 ; =0x020F569E
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	ldr r0, _0209583C ; =0x020F56A0
	ldrb r0, [r0, r1]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0209580C:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02095840 ; =0x020F56A2
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	ldr r0, _02095844 ; =0x020F56A4
	ldrb r0, [r0, r1]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02095820: .word 0x020F5692
_02095824: .word 0x020F5694
_02095828: .word 0x020F5696
_0209582C: .word 0x020F5698
_02095830: .word 0x020F569A
_02095834: .word 0x020F569C
_02095838: .word 0x020F569E
_0209583C: .word 0x020F56A0
_02095840: .word 0x020F56A2
_02095844: .word 0x020F56A4
	thumb_func_end sub_02095790

	thumb_func_start sub_02095848
sub_02095848: ; 0x02095848
	cmp r2, #1
	bne _02095850
	mov r0, #0x33
	bx lr
_02095850:
	cmp r1, #3
	beq _0209585C
	cmp r1, #5
	beq _0209585C
	cmp r1, #7
	bne _02095860
_0209585C:
	mov r0, #0x32
	bx lr
_02095860:
	cmp r0, #3
	bhi _02095884
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02095870: ; jump table
	.short _02095878 - _02095870 - 2 ; case 0
	.short _0209587C - _02095870 - 2 ; case 1
	.short _02095880 - _02095870 - 2 ; case 2
	.short _02095884 - _02095870 - 2 ; case 3
_02095878:
	mov r0, #0x2e
	bx lr
_0209587C:
	mov r0, #0x2f
	bx lr
_02095880:
	mov r0, #0x30
	bx lr
_02095884:
	mov r0, #0x31
	bx lr
	thumb_func_end sub_02095848

	thumb_func_start sub_02095888
sub_02095888: ; 0x02095888
	cmp r0, #4
	bhi _020958B2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02095898: ; jump table
	.short _020958A2 - _02095898 - 2 ; case 0
	.short _020958A6 - _02095898 - 2 ; case 1
	.short _020958AA - _02095898 - 2 ; case 2
	.short _020958AE - _02095898 - 2 ; case 3
	.short _020958B2 - _02095898 - 2 ; case 4
_020958A2:
	mov r0, #0x2e
	bx lr
_020958A6:
	mov r0, #0x2f
	bx lr
_020958AA:
	mov r0, #0x30
	bx lr
_020958AE:
	mov r0, #0x31
	bx lr
_020958B2:
	mov r0, #0x33
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095888

	thumb_func_start sub_020958B8
sub_020958B8: ; 0x020958B8
	ldr r3, _020958C0 ; =sub_020958C4
	mov r1, #2
	bx r3
	nop
_020958C0: .word sub_020958C4
	thumb_func_end sub_020958B8

	thumb_func_start sub_020958C4
sub_020958C4: ; 0x020958C4
	cmp r1, #5
	bne _020958CC
	mov r0, #0x34
	bx lr
_020958CC:
	cmp r0, #4
	bhi _020958F6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020958DC: ; jump table
	.short _020958E6 - _020958DC - 2 ; case 0
	.short _020958EA - _020958DC - 2 ; case 1
	.short _020958EE - _020958DC - 2 ; case 2
	.short _020958F2 - _020958DC - 2 ; case 3
	.short _020958F6 - _020958DC - 2 ; case 4
_020958E6:
	mov r0, #0x29
	bx lr
_020958EA:
	mov r0, #0x2a
	bx lr
_020958EE:
	mov r0, #0x2b
	bx lr
_020958F2:
	mov r0, #0x2c
	bx lr
_020958F6:
	mov r0, #0x2d
	bx lr
	; .align 2, 0
	thumb_func_end sub_020958C4

	thumb_func_start sub_020958FC
sub_020958FC: ; 0x020958FC
	mov r1, #3
	sub r0, r1, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020958FC

	thumb_func_start sub_02095904
sub_02095904: ; 0x02095904
	mov r1, #3
	sub r0, r1, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095904

	thumb_func_start sub_0209590C
sub_0209590C: ; 0x0209590C
	ldr r1, _02095924 ; =0x00000121
	ldrb r0, [r0, r1]
	cmp r0, #3
	beq _0209591C
	cmp r0, #5
	beq _0209591C
	cmp r0, #7
	bne _02095920
_0209591C:
	mov r0, #1
	bx lr
_02095920:
	mov r0, #0
	bx lr
	; .align 2, 0
_02095924: .word 0x00000121
	thumb_func_end sub_0209590C

	thumb_func_start sub_02095928
sub_02095928: ; 0x02095928
	push {r4, r5}
	sub sp, #0x50
	ldr r5, _02095988 ; =0x020F563C
	add r4, sp, #0
	mov r3, #0x28
_02095932:
	ldrh r2, [r5]
	add r5, r5, #2
	strh r2, [r4]
	add r4, r4, #2
	sub r3, r3, #1
	bne _02095932
	mov r3, #0xc
	mul r3, r1
	add r1, r0, r3
	mov r3, #0x4a
	lsl r3, r3, #2
	add r4, r3, #0
	add r4, #0x49
	ldrb r4, [r0, r4]
	mov r2, #0
	ldrsh r1, [r1, r3]
	cmp r4, #1
	bne _0209595A
	add r4, sp, #0x40
	b _02095964
_0209595A:
	sub r3, #8
	ldrb r0, [r0, r3]
	add r4, sp, #0
	lsl r0, r0, #4
	add r4, r4, r0
_02095964:
	mov r3, #0
_02095966:
	ldrh r0, [r4]
	cmp r1, r0
	bge _02095974
	add sp, #0x50
	add r0, r2, #0
	pop {r4, r5}
	bx lr
_02095974:
	add r3, r3, #1
	add r2, r2, #1
	add r4, r4, #2
	cmp r3, #8
	blt _02095966
	add r0, r2, #0
	add sp, #0x50
	pop {r4, r5}
	bx lr
	nop
_02095988: .word 0x020F563C
	thumb_func_end sub_02095928

	thumb_func_start sub_0209598C
sub_0209598C: ; 0x0209598C
	push {r4, r5}
	sub sp, #0x10
	ldr r5, _020959EC ; =0x020F562C
	add r4, sp, #0
	mov r3, #0xf
_02095996:
	ldrb r2, [r5]
	add r5, r5, #1
	strb r2, [r4]
	add r4, r4, #1
	sub r3, r3, #1
	bne _02095996
	mov r2, #0xc
	mul r2, r1
	ldr r3, _020959F0 ; =0x0000012A
	add r1, r0, r2
	ldrsh r1, [r1, r3]
	cmp r1, #0
	bne _020959B8
	add sp, #0x10
	mov r0, #0
	pop {r4, r5}
	bx lr
_020959B8:
	add r2, r3, #0
	add r2, #0x47
	ldrb r2, [r0, r2]
	cmp r2, #1
	bne _020959C6
	add r4, sp, #0xc
	b _020959D2
_020959C6:
	sub r3, #0xa
	ldrb r2, [r0, r3]
	add r4, sp, #0
	lsl r0, r2, #1
	add r0, r2, r0
	add r4, r4, r0
_020959D2:
	mov r0, #1
	mov r3, #0
_020959D6:
	ldrb r2, [r4, r3]
	cmp r1, r2
	ble _020959E4
	add r3, r3, #1
	add r0, r0, #1
	cmp r3, #3
	blt _020959D6
_020959E4:
	add sp, #0x10
	pop {r4, r5}
	bx lr
	nop
_020959EC: .word 0x020F562C
_020959F0: .word 0x0000012A
	thumb_func_end sub_0209598C

	thumb_func_start sub_020959F4
sub_020959F4: ; 0x020959F4
	push {r3, lr}
	cmp r0, #0
	bne _02095A0E
	mov r0, #1
	bl sub_02002AC8
	mov r0, #3
	bl sub_02002AE4
	mov r0, #1
	bl sub_02002B20
	pop {r3, pc}
_02095A0E:
	mov r0, #1
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002B20
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020959F4

	thumb_func_start sub_02095A24
sub_02095A24: ; 0x02095A24
	push {r3, lr}
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02095A24

	thumb_func_start sub_02095A3C
sub_02095A3C: ; 0x02095A3C
	push {r3, lr}
	cmp r1, #4
	bhi _02095A6C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02095A4E: ; jump table
	.short _02095A58 - _02095A4E - 2 ; case 0
	.short _02095A5C - _02095A4E - 2 ; case 1
	.short _02095A60 - _02095A4E - 2 ; case 2
	.short _02095A64 - _02095A4E - 2 ; case 3
	.short _02095A68 - _02095A4E - 2 ; case 4
_02095A58:
	add r0, #0x7b
	pop {r3, pc}
_02095A5C:
	add r0, #0x7f
	pop {r3, pc}
_02095A60:
	add r0, #0x83
	pop {r3, pc}
_02095A64:
	add r0, #0x87
	pop {r3, pc}
_02095A68:
	add r0, #0x8b
	pop {r3, pc}
_02095A6C:
	bl sub_02022974
	mov r0, #0x7b
	pop {r3, pc}
	thumb_func_end sub_02095A3C

	thumb_func_start sub_02095A74
sub_02095A74: ; 0x02095A74
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r4, #0
	cmp r5, #3
	beq _02095A84
	cmp r1, #1
	bne _02095A94
_02095A84:
	bl sub_0201D2E8
	mov r1, #0xc
	bl sub_020E1F6C
	add sp, #0xc
	add r0, r1, #0
	pop {r4, r5, pc}
_02095A94:
	add r0, sp, #0
	add r1, r4, #0
	mov r2, #0xc
	bl sub_020C4CF4
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0]
	mov r1, #3
	strb r1, [r0, #1]
	mov r1, #4
	add r4, r4, #3
	strb r1, [r0, #2]
	cmp r5, #1
	blt _02095AC6
	mov r0, #0
	add r2, sp, #0
	strb r0, [r2, r4]
	mov r1, #1
	add r0, r4, #1
	strb r1, [r2, r0]
	add r1, r4, #2
	mov r0, #5
	add r4, r4, #3
	strb r0, [r2, r1]
_02095AC6:
	cmp r5, #2
	blt _02095ADE
	mov r0, #6
	add r2, sp, #0
	strb r0, [r2, r4]
	mov r1, #7
	add r0, r4, #1
	strb r1, [r2, r0]
	add r1, r4, #2
	mov r0, #8
	add r4, r4, #3
	strb r0, [r2, r1]
_02095ADE:
	bl sub_0201D2E8
	add r1, r4, #0
	bl sub_020E1F6C
	add r0, sp, #0
	ldrb r0, [r0, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02095A74

	thumb_func_start sub_02095AF0
sub_02095AF0: ; 0x02095AF0
	ldr r3, _02095AFC ; =sub_02032798
	add r2, r0, #0
	ldr r0, _02095B00 ; =0x020F58FC
	mov r1, #0x10
	bx r3
	nop
_02095AFC: .word sub_02032798
_02095B00: .word 0x020F58FC
	thumb_func_end sub_02095AF0

	thumb_func_start sub_02095B04
sub_02095B04: ; 0x02095B04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	add r4, r1, #0
	cmp r2, r0
	blt _02095B16
	bl sub_02022974
_02095B16:
	ldr r0, _02095B20 ; =0x00000985
	add r1, r4, r0
	lsl r0, r5, #0xa
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02095B20: .word 0x00000985
	thumb_func_end sub_02095B04

	thumb_func_start sub_02095B24
sub_02095B24: ; 0x02095B24
	mov r0, #0xa
	bx lr
	thumb_func_end sub_02095B24

	thumb_func_start sub_02095B28
sub_02095B28: ; 0x02095B28
	mov r0, #8
	bx lr
	thumb_func_end sub_02095B28

	thumb_func_start sub_02095B2C
sub_02095B2C: ; 0x02095B2C
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095B2C

	thumb_func_start sub_02095B30
sub_02095B30: ; 0x02095B30
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02029C64
	add r2, r0, #0
	ldrb r1, [r5, r2]
	add r0, r5, #0
	lsl r1, r1, #2
	add r1, r4, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	bl sub_020C4DB0
	ldr r0, _02095B58 ; =0x00000584
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_02095B58: .word 0x00000584
	thumb_func_end sub_02095B30

	thumb_func_start sub_02095B5C
sub_02095B5C: ; 0x02095B5C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02029C64
	add r4, r0, #0
	mov r0, #0x14
	add r1, r4, #1
	bl sub_02018144
	add r5, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020C4DB0
	mov r0, #0x20
	add r1, r5, #0
	add r2, r4, #1
	strb r6, [r5, r4]
	bl sub_020359DC
	cmp r0, #1
	bne _02095B90
	mov r4, #1
	b _02095B92
_02095B90:
	mov r4, #0
_02095B92:
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02095B5C

	thumb_func_start sub_02095B9C
sub_02095B9C: ; 0x02095B9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02029C64
	add r6, r0, #0
	mov r0, #1
	lsl r1, r6, #2
	lsl r0, r0, #0xa
	cmp r1, r0
	blt _02095BB8
	bl sub_02022974
_02095BB8:
	mov r7, #0
	ldr r4, [sp, #4]
	add r5, r7, #0
_02095BBE:
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0xf8
	ldr r1, [r1, #0]
	add r0, r0, r5
	add r2, r6, #0
	bl sub_020C4DB0
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, r6
	cmp r7, #4
	blt _02095BBE
	ldr r1, _02095BE8 ; =0x00000584
	ldr r0, [sp, #4]
	ldrb r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp, #4]
	strb r2, [r0, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02095BE8: .word 0x00000584
	thumb_func_end sub_02095B9C

	thumb_func_start sub_02095BEC
sub_02095BEC: ; 0x02095BEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02029C64
	add r6, r0, #0
	mov r1, #1
	lsl r0, r6, #2
	lsl r1, r1, #0xa
	str r0, [sp]
	cmp r0, r1
	blt _02095C0A
	bl sub_02022974
_02095C0A:
	ldr r0, _02095C44 ; =0x00000585
	mov r7, #0
	add r0, r4, r0
	str r0, [sp, #4]
	add r4, r7, #0
_02095C14:
	ldr r1, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r1, r4
	add r2, r6, #0
	bl sub_020C4DB0
	add r7, r7, #1
	add r4, r4, r6
	add r5, r5, #4
	cmp r7, #4
	blt _02095C14
	ldr r1, [sp, #4]
	ldr r2, [sp]
	mov r0, #0x21
	bl sub_0203597C
	cmp r0, #1
	bne _02095C3E
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02095C3E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02095C44: .word 0x00000585
	thumb_func_end sub_02095BEC

	thumb_func_start sub_02095C48
sub_02095C48: ; 0x02095C48
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02095C5C ; =0x000019A0
	add r0, r2, #0
	add r1, r3, r1
	add r2, r4, #0
	bl sub_020C4DB0
	pop {r4, pc}
	nop
_02095C5C: .word 0x000019A0
	thumb_func_end sub_02095C48

	thumb_func_start sub_02095C60
sub_02095C60: ; 0x02095C60
	push {r3, lr}
	add r3, r0, #0
	ldrb r0, [r3, #0x16]
	cmp r0, #0
	bne _02095C70
	str r1, [r3, #0]
	mov r0, #1
	pop {r3, pc}
_02095C70:
	ldrb r2, [r3, #0x14]
	ldrb r0, [r3, #0x15]
	cmp r2, r0
	beq _02095C7C
	mov r0, #0
	pop {r3, pc}
_02095C7C:
	str r1, [r3, #8]
	add r3, #8
	mov r0, #0x22
	add r1, r3, #0
	mov r2, #8
	bl sub_020359DC
	cmp r0, #1
	bne _02095C92
	mov r0, #1
	pop {r3, pc}
_02095C92:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02095C60

	thumb_func_start sub_02095C98
sub_02095C98: ; 0x02095C98
	ldrb r2, [r2, #4]
	add r1, r3, r0
	ldr r0, _02095CA4 ; =0x000019B0
	strb r2, [r1, r0]
	bx lr
	nop
_02095CA4: .word 0x000019B0
	thumb_func_end sub_02095C98

	thumb_func_start sub_02095CA8
sub_02095CA8: ; 0x02095CA8
	push {r3, lr}
	add r2, r0, #0
	ldrb r0, [r2, #0x16]
	cmp r0, #0
	bne _02095CB8
	strb r1, [r2, #0x10]
	mov r0, #1
	pop {r3, pc}
_02095CB8:
	strb r1, [r2, #0xc]
	add r2, #8
	add r1, r2, #0
	mov r0, #0x23
	mov r2, #8
	bl sub_020359DC
	cmp r0, #1
	bne _02095CCE
	mov r0, #1
	pop {r3, pc}
_02095CCE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02095CA8

	thumb_func_start sub_02095CD4
sub_02095CD4: ; 0x02095CD4
	ldr r3, _02095CE0 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _02095CE4 ; =0x020F59BC
	mov r1, #0xb
	bx r3
	nop
_02095CE0: .word sub_02032798
_02095CE4: .word 0x020F59BC
	thumb_func_end sub_02095CD4

	thumb_func_start sub_02095CE8
sub_02095CE8: ; 0x02095CE8
	cmp r0, #0xc
	bne _02095CF0
	mov r0, #0xc
	bx lr
_02095CF0:
	cmp r0, #6
	bhs _02095CF8
	add r0, r0, #6
	bx lr
_02095CF8:
	sub r0, r0, #6
	bx lr
	thumb_func_end sub_02095CE8

	thumb_func_start sub_02095CFC
sub_02095CFC: ; 0x02095CFC
	push {r4, r5, r6, lr}
	add r3, #0x88
	add r5, r0, #0
	add r6, r2, #0
	ldr r4, [r3, #0]
	bl sub_0203608C
	cmp r5, r0
	beq _02095D6A
	ldr r0, _02095D6C ; =0x0000221C
	mov r2, #0x59
	ldr r0, [r4, r0]
	add r1, r6, #0
	lsl r2, r2, #4
	bl sub_020D50B8
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	bl sub_02079FEC
	mov r1, #0x59
	ldr r2, [r4, #0x58]
	lsl r1, r1, #4
	mul r1, r2
	cmp r1, r0
	blt _02095D56
	bl sub_0203608C
	cmp r0, #1
	bne _02095D46
	add r0, r4, #0
	mov r1, #0x1b
	mov r2, #0
	bl ov88_0223D058
	b _02095D64
_02095D46:
	bl sub_0203608C
	ldr r1, _02095D70 ; =0x00002218
	ldr r2, [r4, #0x50]
	ldr r1, [r4, r1]
	bl ov88_0223D098
	b _02095D64
_02095D56:
	bl sub_0203608C
	ldr r1, _02095D70 ; =0x00002218
	ldr r2, [r4, #0x50]
	ldr r1, [r4, r1]
	bl ov88_0223D098
_02095D64:
	ldr r0, [r4, #0x50]
	add r0, r0, #1
	str r0, [r4, #0x50]
_02095D6A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02095D6C: .word 0x0000221C
_02095D70: .word 0x00002218
	thumb_func_end sub_02095CFC

	thumb_func_start sub_02095D74
sub_02095D74: ; 0x02095D74
	push {r4, r5, r6, lr}
	add r3, #0x88
	add r5, r0, #0
	add r6, r2, #0
	ldr r4, [r3, #0]
	bl sub_0203608C
	cmp r5, r0
	beq _02095D90
	ldrb r0, [r6]
	bl sub_02095CE8
	add r4, #0x8c
	str r0, [r4, #0]
_02095D90:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02095D74

	thumb_func_start sub_02095D94
sub_02095D94: ; 0x02095D94
	add r3, #0x88
	ldrb r2, [r2]
	ldr r1, [r3, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	str r2, [r0, #0x60]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095D94

	thumb_func_start sub_02095DA4
sub_02095DA4: ; 0x02095DA4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095DA4

	thumb_func_start sub_02095DA8
sub_02095DA8: ; 0x02095DA8
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095DA8

	thumb_func_start sub_02095DAC
sub_02095DAC: ; 0x02095DAC
	add r3, #0x88
	ldr r0, [r3, #0]
	mov r1, #2
	str r1, [r0, #0x54]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095DAC

	thumb_func_start sub_02095DB8
sub_02095DB8: ; 0x02095DB8
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095DB8

	thumb_func_start sub_02095DBC
sub_02095DBC: ; 0x02095DBC
	add r3, #0x88
	mov r0, #0x8b
	ldrb r2, [r2]
	ldr r1, [r3, #0]
	lsl r0, r0, #6
	str r2, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095DBC

	thumb_func_start sub_02095DCC
sub_02095DCC: ; 0x02095DCC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r3, #0xc]
	add r5, r2, #0
	bl sub_0202D79C
	add r4, r0, #0
	bl sub_0203608C
	cmp r6, r0
	beq _02095DF8
	mov r2, #0
_02095DE4:
	ldrb r1, [r5, r2]
	cmp r1, #0
	beq _02095DF2
	ldrb r0, [r4, r2]
	cmp r0, r1
	beq _02095DF2
	strb r1, [r4, r2]
_02095DF2:
	add r2, r2, #1
	cmp r2, #0xe
	blt _02095DE4
_02095DF8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02095DCC

	thumb_func_start sub_02095DFC
sub_02095DFC: ; 0x02095DFC
	push {r4, r5, r6, lr}
	add r3, #0x88
	add r5, r0, #0
	add r6, r2, #0
	ldr r4, [r3, #0]
	bl sub_0203608C
	cmp r5, r0
	beq _02095E20
	ldr r0, _02095E24 ; =0x00002224
	add r1, r6, #0
	ldr r0, [r4, r0]
	mov r2, #1
	mov r3, #0x1a
	bl sub_02027FEC
	mov r0, #3
	str r0, [r4, #0x54]
_02095E20:
	pop {r4, r5, r6, pc}
	nop
_02095E24: .word 0x00002224
	thumb_func_end sub_02095DFC

	thumb_func_start sub_02095E28
sub_02095E28: ; 0x02095E28
	push {r4, r5, r6, lr}
	add r3, #0x88
	add r5, r0, #0
	add r6, r2, #0
	ldr r4, [r3, #0]
	bl sub_0203608C
	cmp r5, r0
	beq _02095E5A
	ldr r1, _02095E5C ; =0x00002E14
	mov r2, #0xfb
	add r3, r4, r1
	lsl r2, r2, #2
	add r1, r5, #0
	mul r1, r2
	add r0, r6, #0
	add r1, r3, r1
	sub r2, r2, #4
	bl sub_020C4C14
	mov r0, #4
	str r0, [r4, #0x54]
	mov r0, #0
	bl sub_0203632C
_02095E5A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02095E5C: .word 0x00002E14
	thumb_func_end sub_02095E28

	thumb_func_start sub_02095E60
sub_02095E60: ; 0x02095E60
	add r0, #0x88
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095E60

	thumb_func_start sub_02095E68
sub_02095E68: ; 0x02095E68
	mov r0, #0xfb
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095E68

	thumb_func_start sub_02095E70
sub_02095E70: ; 0x02095E70
	mov r0, #0xe
	bx lr
	thumb_func_end sub_02095E70

	thumb_func_start sub_02095E74
sub_02095E74: ; 0x02095E74
	mov r0, #0x88
	bx lr
	thumb_func_end sub_02095E74

	thumb_func_start sub_02095E78
sub_02095E78: ; 0x02095E78
	mov r0, #0x59
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095E78

	thumb_func_start sub_02095E80
sub_02095E80: ; 0x02095E80
	add r1, #0x88
	ldr r2, [r1, #0]
	ldr r1, _02095E94 ; =0x000022F4
	add r2, r2, r1
	mov r1, #0x59
	lsl r1, r1, #4
	mul r1, r0
	add r0, r2, r1
	bx lr
	nop
_02095E94: .word 0x000022F4
	thumb_func_end sub_02095E80

	thumb_func_start sub_02095E98
sub_02095E98: ; 0x02095E98
	ldr r3, _02095EA4 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _02095EA8 ; =0x020F5A40
	mov r1, #0x6e
	bx r3
	nop
_02095EA4: .word sub_02032798
_02095EA8: .word 0x020F5A40
	thumb_func_end sub_02095E98

	thumb_func_start sub_02095EAC
sub_02095EAC: ; 0x02095EAC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _02095F0A
	mov r3, #0xfb
	lsl r3, r3, #2
	ldrb r2, [r5, r3]
	sub r0, r3, #4
	add r1, r2, #0
	mul r1, r0
	mov r0, #0xe1
	lsl r0, r0, #6
	cmp r1, r0
	ldr r2, _02095F38 ; =0x000043D0
	ble _02095EE0
	add r2, r4, r2
	add r1, r2, r1
	mov r2, #0x19
	add r0, r5, #0
	lsl r2, r2, #4
	bl sub_020C4C14
	b _02095EEC
_02095EE0:
	add r2, r4, r2
	add r1, r2, r1
	add r0, r5, #0
	sub r2, r3, #4
	bl sub_020C4C14
_02095EEC:
	mov r1, #0xb5
	ldr r0, _02095F38 ; =0x000043D0
	lsl r1, r1, #2
	mov r2, #0xe1
	ldr r1, [r4, r1]
	add r0, r4, r0
	lsl r2, r2, #6
	bl sub_020C4C14
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A954
	pop {r3, r4, r5, pc}
_02095F0A:
	ldr r1, _02095F3C ; =0x000043CC
	mov r0, #0xfa
	ldr r2, [r4, r1]
	lsl r0, r0, #2
	add r3, r2, #0
	mul r3, r0
	mov r0, #0xe1
	lsl r0, r0, #6
	cmp r3, r0
	bge _02095F2C
	add r0, r2, #1
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl sub_0209617C
	pop {r3, r4, r5, pc}
_02095F2C:
	mov r1, #0
	mov r0, #0x7c
	add r2, r1, #0
	bl sub_02035AC4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02095F38: .word 0x000043D0
_02095F3C: .word 0x000043CC
	thumb_func_end sub_02095EAC

	thumb_func_start sub_02095F40
sub_02095F40: ; 0x02095F40
	push {r3, r4}
	cmp r0, #0
	beq _02095F5E
	add r4, r0, #0
	mov r1, #0xa
	mul r4, r1
	ldr r0, _02095F64 ; =0x000093BD
	add r3, r3, r4
	add r3, r3, r0
_02095F52:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _02095F52
_02095F5E:
	pop {r3, r4}
	bx lr
	nop
_02095F64: .word 0x000093BD
	thumb_func_end sub_02095F40

	thumb_func_start sub_02095F68
sub_02095F68: ; 0x02095F68
	push {r4, r5, r6, r7}
	cmp r3, #0
	beq _02095F92
	cmp r0, #0
	bne _02095F92
	ldr r0, _02095F98 ; =0x00004382
	mov r7, #0
_02095F76:
	add r6, r2, #0
	add r5, r3, r0
	mov r4, #0xa
_02095F7C:
	ldrb r1, [r6]
	add r6, r6, #1
	strb r1, [r5]
	add r5, r5, #1
	sub r4, r4, #1
	bne _02095F7C
	add r7, r7, #1
	add r2, #0xa
	add r3, #0xa
	cmp r7, #5
	blt _02095F76
_02095F92:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02095F98: .word 0x00004382
	thumb_func_end sub_02095F68

	thumb_func_start sub_02095F9C
sub_02095F9C: ; 0x02095F9C
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov58_021D2434
	ldr r1, _02095FDC ; =0x000043D0
	mov r2, #0xe1
	mov r0, #0
	add r1, r4, r1
	lsl r2, r2, #6
	bl sub_020C4BB8
	bl sub_0203608C
	cmp r0, #0
	bne _02095FDA
	bl sub_02035E18
	mov r1, #0xc6
	lsl r1, r1, #2
	str r0, [r4, r1]
	bl sub_020318EC
	mov r1, #0xc7
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _02095FE0 ; =0x000093F4
	mov r1, #1
	str r1, [r4, r0]
_02095FDA:
	pop {r4, pc}
	; .align 2, 0
_02095FDC: .word 0x000043D0
_02095FE0: .word 0x000093F4
	thumb_func_end sub_02095F9C

	thumb_func_start sub_02095FE4
sub_02095FE4: ; 0x02095FE4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r6, #0
	beq _0209607E
	bl sub_0203608C
	cmp r0, #0
	bne _020960C8
	ldrb r0, [r5]
	add r1, sp, #0
	strb r0, [r1]
	ldrb r0, [r5, #1]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	strb r0, [r1, #2]
	ldrb r0, [r5, #3]
	strb r0, [r1, #3]
	mov r0, #0xc6
	strb r6, [r1]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _02096020
	cmp r0, #1
	b _02096070
_02096020:
	bl sub_02035E18
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _0209604E
	bl ov58_021D2A4C
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _0209604E
	bl sub_020318EC
	bl sub_020D2FE4
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, r0
	beq _02096056
_0209604E:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #3]
	b _02096070
_02096056:
	ldr r0, _020960CC ; =0x000093B4
	mov r1, #1
	add r2, r1, #0
	ldr r3, [r4, r0]
	lsl r2, r6
	orr r2, r3
	str r2, [r4, r0]
	add r0, sp, #0
	strb r1, [r0, #3]
	bl sub_02035E18
	bl sub_02037B58
_02096070:
	mov r0, #0x7e
	add r1, sp, #0
	mov r2, #4
	bl sub_02035AC4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209607E:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0209608C
	cmp r0, #1
	beq _020960BE
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209608C:
	ldrb r6, [r5]
	bl sub_0203608C
	cmp r6, r0
	bne _020960C8
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _020960AA
	add r0, r4, #0
	mov r1, #9
	add r2, r6, #0
	bl ov58_021D2434
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020960AA:
	ldrb r1, [r5, #1]
	ldr r0, _020960D0 ; =0x000093B8
	strh r1, [r4, r0]
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #8
	bl ov58_021D2434
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020960BE:
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #0x15
	bl ov58_021D2434
_020960C8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020960CC: .word 0x000093B4
_020960D0: .word 0x000093B8
	thumb_func_end sub_02095FE4

	thumb_func_start sub_020960D4
sub_020960D4: ; 0x020960D4
	bx lr
	; .align 2, 0
	thumb_func_end sub_020960D4

	thumb_func_start sub_020960D8
sub_020960D8: ; 0x020960D8
	push {r4, lr}
	ldrb r2, [r2]
	add r4, r3, #0
	add r0, r4, #0
	mov r1, #1
	bl ov58_021D2434
	bl sub_0203608C
	cmp r0, #0
	bne _02096106
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02096106
	ldr r1, _02096108 ; =0x000043CC
	mov r0, #0
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl sub_0209617C
_02096106:
	pop {r4, pc}
	; .align 2, 0
_02096108: .word 0x000043CC
	thumb_func_end sub_020960D8

	thumb_func_start sub_0209610C
sub_0209610C: ; 0x0209610C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209610C

	thumb_func_start sub_02096110
sub_02096110: ; 0x02096110
	bx lr
	; .align 2, 0
	thumb_func_end sub_02096110

	thumb_func_start sub_02096114
sub_02096114: ; 0x02096114
	push {r4, lr}
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209612A
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl ov58_021D2434
_0209612A:
	pop {r4, pc}
	thumb_func_end sub_02096114

	thumb_func_start sub_0209612C
sub_0209612C: ; 0x0209612C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209613E
	bl sub_02022974
_0209613E:
	bl sub_0203608C
	cmp r0, #0
	bne _02096162
	ldr r0, _0209616C ; =0x000093FC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0209615E
	add r0, sp, #0
	strb r5, [r0]
	mov r0, #0x7b
	add r1, sp, #0
	mov r2, #1
	bl sub_02035AC4
	b _02096162
_0209615E:
	mov r1, #1
	str r1, [r4, r0]
_02096162:
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209616C: .word 0x000093FC
	thumb_func_end sub_0209612C

	thumb_func_start sub_02096170
sub_02096170: ; 0x02096170
	ldr r0, _02096178 ; =0x000093F4
	mov r1, #1
	str r1, [r3, r0]
	bx lr
	; .align 2, 0
_02096178: .word 0x000093F4
	thumb_func_end sub_02096170

	thumb_func_start sub_0209617C
sub_0209617C: ; 0x0209617C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb5
	mov r2, #0xfa
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	lsl r2, r2, #2
	add r0, r4, #0
	mul r0, r2
	add r0, r1, r0
	ldr r1, _020961C8 ; =0x00007C10
	add r1, r5, r1
	bl sub_020C4C14
	ldr r0, _020961C8 ; =0x00007C10
	mov r2, #0
	add r1, r2, #0
	add r3, r5, r0
_020961A2:
	ldr r0, [r3, #0]
	add r1, r1, #1
	eor r2, r0
	add r3, r3, #4
	cmp r1, #0xfa
	blt _020961A2
	ldr r0, _020961CC ; =0x00007FF8
	ldr r1, _020961C8 ; =0x00007C10
	str r2, [r5, r0]
	add r0, r0, #4
	mov r2, #0x3f
	strb r4, [r5, r0]
	mov r0, #0x76
	add r1, r5, r1
	lsl r2, r2, #4
	bl sub_02035A3C
	pop {r3, r4, r5, pc}
	nop
_020961C8: .word 0x00007C10
_020961CC: .word 0x00007FF8
	thumb_func_end sub_0209617C

	thumb_func_start sub_020961D0
sub_020961D0: ; 0x020961D0
	mov r2, #2
	lsl r2, r2, #0xe
	add r2, r1, r2
	mov r1, #0x3f
	lsl r1, r1, #4
	mul r1, r0
	add r0, r2, r1
	bx lr
	thumb_func_end sub_020961D0

	thumb_func_start sub_020961E0
sub_020961E0: ; 0x020961E0
	mov r0, #4
	bx lr
	thumb_func_end sub_020961E0

	thumb_func_start sub_020961E4
sub_020961E4: ; 0x020961E4
	mov r0, #4
	bx lr
	thumb_func_end sub_020961E4

	thumb_func_start sub_020961E8
sub_020961E8: ; 0x020961E8
	ldr r3, _020961F4 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _020961F8 ; =0x020F5F68
	mov r1, #0x6e
	bx r3
	nop
_020961F4: .word sub_02032798
_020961F8: .word 0x020F5F68
	thumb_func_end sub_020961E8

	thumb_func_start sub_020961FC
sub_020961FC: ; 0x020961FC
	ldr r0, _02096208 ; =0x00004A34
	ldr r1, [r3, r0]
	add r1, r1, #1
	str r1, [r3, r0]
	bx lr
	nop
_02096208: .word 0x00004A34
	thumb_func_end sub_020961FC

	thumb_func_start sub_0209620C
sub_0209620C: ; 0x0209620C
	cmp r0, #0
	bne _02096216
	ldrb r1, [r2]
	ldr r0, _02096218 ; =0x00004A3C
	str r1, [r3, r0]
_02096216:
	bx lr
	; .align 2, 0
_02096218: .word 0x00004A3C
	thumb_func_end sub_0209620C

	thumb_func_start sub_0209621C
sub_0209621C: ; 0x0209621C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0209625C ; =0x00004A34
	add r4, r3, #0
	mov r1, #0
	str r1, [r4, r0]
	mov r1, #1
	add r0, #0xc
	strb r1, [r4, r0]
	bl sub_0203608C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020963C0
	add r0, r4, #0
	bl ov59_021D1D40
	lsl r2, r5, #0x18
	add r0, r4, #0
	mov r1, #0x19
	lsr r2, r2, #0x18
	bl ov59_021D2204
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, _02096260 ; =0x00000658
	bl sub_02005748
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209625C: .word 0x00004A34
_02096260: .word 0x00000658
	thumb_func_end sub_0209621C

	thumb_func_start sub_02096264
sub_02096264: ; 0x02096264
	add r0, r3, #0
	ldr r3, _02096270 ; =ov59_021D2204
	mov r1, #2
	mov r2, #0
	bx r3
	nop
_02096270: .word ov59_021D2204
	thumb_func_end sub_02096264

	thumb_func_start sub_02096274
sub_02096274: ; 0x02096274
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r6, #0
	beq _0209630A
	bl sub_0203608C
	cmp r0, #0
	bne _02096354
	ldrb r0, [r5]
	add r1, sp, #0
	strb r0, [r1]
	ldrb r0, [r5, #1]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	strb r0, [r1, #2]
	ldrb r0, [r5, #3]
	strb r0, [r1, #3]
	ldr r0, _02096358 ; =0x00004A48
	strb r6, [r1]
	ldr r0, [r4, r0]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _020962AE
	cmp r0, #1
	b _020962FC
_020962AE:
	bl sub_02035E18
	ldr r1, _02096358 ; =0x00004A48
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _020962D6
	bl ov59_021D2544
	ldr r1, _02096358 ; =0x00004A48
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _020962D6
	bl sub_020318EC
	bl sub_020D2FE4
	ldr r1, _02096358 ; =0x00004A48
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _020962DE
_020962D6:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #3]
	b _020962FC
_020962DE:
	add r0, r1, #0
	add r0, #8
	mov r2, #1
	ldr r3, [r4, r0]
	add r0, r2, #0
	lsl r0, r6
	orr r0, r3
	add r1, #8
	str r0, [r4, r1]
	add r0, sp, #0
	strb r2, [r0, #3]
	bl sub_02035E18
	bl sub_02037B58
_020962FC:
	mov r0, #0x70
	add r1, sp, #0
	mov r2, #4
	bl sub_020359DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209630A:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _02096318
	cmp r0, #1
	beq _0209634A
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02096318:
	ldrb r6, [r5]
	bl sub_0203608C
	cmp r6, r0
	bne _02096354
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _02096336
	add r0, r4, #0
	mov r1, #8
	add r2, r6, #0
	bl ov59_021D2204
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02096336:
	ldrb r1, [r5, #1]
	ldr r0, _0209635C ; =0x00004A5C
	strh r1, [r4, r0]
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #7
	bl ov59_021D2204
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209634A:
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #0x13
	bl ov59_021D2204
_02096354:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02096358: .word 0x00004A48
_0209635C: .word 0x00004A5C
	thumb_func_end sub_02096274

	thumb_func_start sub_02096360
sub_02096360: ; 0x02096360
	push {r4, lr}
	ldrb r2, [r2]
	add r4, r3, #0
	add r0, r4, #0
	mov r1, #1
	bl ov59_021D22EC
	bl sub_0203608C
	cmp r0, #0
	bne _0209637E
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_0209637E:
	pop {r4, pc}
	thumb_func_end sub_02096360

	thumb_func_start sub_02096380
sub_02096380: ; 0x02096380
	bx lr
	; .align 2, 0
	thumb_func_end sub_02096380

	thumb_func_start sub_02096384
sub_02096384: ; 0x02096384
	bx lr
	; .align 2, 0
	thumb_func_end sub_02096384

	thumb_func_start sub_02096388
sub_02096388: ; 0x02096388
	push {r4, lr}
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209639E
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl ov59_021D2204
_0209639E:
	pop {r4, pc}
	thumb_func_end sub_02096388

	thumb_func_start sub_020963A0
sub_020963A0: ; 0x020963A0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _020963BC
	add r0, sp, #0
	strb r4, [r0]
	mov r0, #0x6e
	add r1, sp, #0
	mov r2, #1
	bl sub_020359DC
_020963BC:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_020963A0

	thumb_func_start sub_020963C0
sub_020963C0: ; 0x020963C0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0xed
	mov r3, #0
	lsl r0, r0, #2
	add r5, r4, r0
	add r2, r3, #0
	sub r0, #0xc6
_020963D0:
	ldr r1, [r5, #0]
	add r2, r2, #1
	eor r3, r1
	add r5, r5, #4
	cmp r2, r0
	blt _020963D0
	ldr r0, _020963FC ; =0x00000F6C
	str r3, [r4, r0]
	bl sub_0201D2E8
	mov r1, #0xf7
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r1, #0xed
	lsl r1, r1, #2
	mov r2, #0x2f
	mov r0, #0x74
	add r1, r4, r1
	lsl r2, r2, #6
	bl sub_0203597C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020963FC: .word 0x00000F6C
	thumb_func_end sub_020963C0

	thumb_func_start sub_02096400
sub_02096400: ; 0x02096400
	mov r0, #0
	bx lr
	thumb_func_end sub_02096400

	thumb_func_start sub_02096404
sub_02096404: ; 0x02096404
	mov r0, #1
	bx lr
	thumb_func_end sub_02096404

	thumb_func_start sub_02096408
sub_02096408: ; 0x02096408
	mov r0, #4
	bx lr
	thumb_func_end sub_02096408

	thumb_func_start sub_0209640C
sub_0209640C: ; 0x0209640C
	ldr r2, _0209641C ; =0x00000F74
	add r2, r1, r2
	mov r1, #0x2f
	lsl r1, r1, #6
	mul r1, r0
	add r0, r2, r1
	bx lr
	nop
_0209641C: .word 0x00000F74
	thumb_func_end sub_0209640C

	thumb_func_start sub_02096420
sub_02096420: ; 0x02096420
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	add r6, r0, #0
	add r7, r2, #0
	ldr r0, [sp, #4]
	mov r1, #0
	add r2, r3, #0
	bl sub_0207CF48
	mov r1, #0xe
	add r4, r0, #0
	bl sub_0207D014
	cmp r0, #1
	beq _0209644C
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0209644C:
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0207D014
	cmp r0, #0
	beq _02096476
	mov r0, #7
	tst r0, r5
	beq _02096476
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096476:
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0207D014
	cmp r0, #0
	beq _02096494
	mov r0, #0x88
	tst r0, r5
	beq _02096494
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096494:
	add r0, r4, #0
	mov r1, #0x11
	bl sub_0207D014
	cmp r0, #0
	beq _020964B2
	mov r0, #0x10
	tst r0, r5
	beq _020964B2
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020964B2:
	add r0, r4, #0
	mov r1, #0x12
	bl sub_0207D014
	cmp r0, #0
	beq _020964D0
	mov r0, #0x20
	tst r0, r5
	beq _020964D0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020964D0:
	add r0, r4, #0
	mov r1, #0x13
	bl sub_0207D014
	cmp r0, #0
	beq _020964EE
	mov r0, #0x40
	tst r0, r5
	beq _020964EE
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020964EE:
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x17
	bl sub_0207D014
	cmp r0, #0
	bne _02096512
	add r0, r4, #0
	mov r1, #0x18
	bl sub_0207D014
	cmp r0, #0
	beq _0209652E
_02096512:
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0207D014
	cmp r0, #0
	bne _0209652E
	cmp r5, #0
	bne _02096558
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209652E:
	add r0, r4, #0
	mov r1, #0x26
	bl sub_0207D014
	cmp r0, #0
	beq _02096558
	cmp r5, #0
	beq _02096558
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	bhs _02096558
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096558:
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0207D014
	cmp r0, #0
	beq _0209657E
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x64
	bhs _0209657E
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209657E:
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_0207D014
	cmp r0, #0
	beq _020965A8
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #4]
	add r1, r6, #0
	mov r2, #3
	bl sub_02076B94
	cmp r0, #0
	beq _020965A8
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020965A8:
	add r0, r4, #0
	mov r1, #0x22
	bl sub_0207D014
	cmp r0, #0
	bne _020965C0
	add r0, r4, #0
	mov r1, #0x23
	bl sub_0207D014
	cmp r0, #0
	beq _020965F6
_020965C0:
	add r1, r7, #0
	add r0, r6, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074470
	cmp r0, #3
	bhs _020965F6
	add r1, r7, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_020790DC
	cmp r0, #5
	blo _020965F6
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020965F6:
	add r0, r4, #0
	mov r1, #0x24
	bl sub_0207D014
	cmp r0, #0
	beq _0209661A
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02096F34
	cmp r0, #1
	bne _0209661A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209661A:
	add r0, r4, #0
	mov r1, #0x25
	bl sub_0207D014
	cmp r0, #0
	beq _02096646
	mov r5, #0
_02096628:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02096F34
	cmp r0, #1
	bne _02096640
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096640:
	add r5, r5, #1
	cmp r5, #4
	blt _02096628
_02096646:
	add r0, r6, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	beq _0209670A
	add r0, r4, #0
	mov r1, #0x27
	bl sub_0207D014
	cmp r0, #0
	beq _0209670A
	add r0, r4, #0
	mov r1, #0x30
	bl sub_0207D014
	cmp r0, #0
	ble _020966E0
	cmp r5, #0x64
	bge _0209670A
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _0209670A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020966E0:
	bge _0209670A
	cmp r5, #0
	ble _020966F2
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020966F2:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _0209670A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209670A:
	add r0, r4, #0
	mov r1, #0x28
	bl sub_0207D014
	cmp r0, #0
	beq _02096776
	add r0, r4, #0
	mov r1, #0x31
	bl sub_0207D014
	cmp r0, #0
	ble _0209674A
	ldr r0, [sp, #0x14]
	cmp r0, #0x64
	bge _02096776
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _02096776
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209674A:
	bge _02096776
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _0209675E
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209675E:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _02096776
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096776:
	add r0, r4, #0
	mov r1, #0x29
	bl sub_0207D014
	cmp r0, #0
	beq _020967E4
	add r0, r4, #0
	mov r1, #0x32
	bl sub_0207D014
	cmp r0, #0
	ble _020967B8
	ldr r0, [sp, #0x10]
	cmp r0, #0x64
	bge _020967E4
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _020967E4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020967B8:
	bge _020967E4
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _020967CC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020967CC:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _020967E4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020967E4:
	add r0, r4, #0
	mov r1, #0x2a
	bl sub_0207D014
	cmp r0, #0
	beq _02096852
	add r0, r4, #0
	mov r1, #0x33
	bl sub_0207D014
	cmp r0, #0
	ble _02096826
	ldr r0, [sp, #0xc]
	cmp r0, #0x64
	bge _02096852
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _02096852
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096826:
	bge _02096852
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0209683A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209683A:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _02096852
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096852:
	add r0, r4, #0
	mov r1, #0x2b
	bl sub_0207D014
	cmp r0, #0
	beq _020968C0
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0207D014
	cmp r0, #0
	ble _02096894
	ldr r0, [sp, #8]
	cmp r0, #0x64
	bge _020968C0
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _020968C0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096894:
	bge _020968C0
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _020968A8
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020968A8:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _020968C0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020968C0:
	add r0, r4, #0
	mov r1, #0x2c
	bl sub_0207D014
	cmp r0, #0
	beq _0209692A
	add r0, r4, #0
	mov r1, #0x35
	bl sub_0207D014
	cmp r0, #0
	ble _02096900
	cmp r7, #0x64
	bge _0209692A
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _0209692A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096900:
	bge _0209692A
	cmp r7, #0
	ble _02096912
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096912:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _0209692A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209692A:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02096938: .word 0x000001FE
	thumb_func_end sub_02096420

	thumb_func_start sub_0209693C
sub_0209693C: ; 0x0209693C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0207A0FC
	ldr r3, [sp, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02096420
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0209693C

	thumb_func_start sub_02096954
sub_02096954: ; 0x02096954
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r0, #0
	ldr r0, [sp, #0x88]
	str r2, [sp, #4]
	str r0, [sp, #0x88]
	add r0, r1, #0
	ldr r2, [sp, #0x88]
	mov r1, #0
	str r3, [sp, #8]
	bl sub_0207CF48
	mov r1, #0xe
	add r4, r0, #0
	bl sub_0207D014
	cmp r0, #1
	beq _02096984
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x70
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096984:
	mov r6, #0
	add r0, r5, #0
	mov r1, #0xa0
	add r2, r6, #0
	add r7, r6, #0
	bl sub_02074470
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0207D014
	cmp r0, #0
	beq _020969AC
	ldr r1, [sp, #0x54]
	mov r0, #7
	bic r1, r0
	str r1, [sp, #0x54]
	mov r7, #1
_020969AC:
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0207D014
	cmp r0, #0
	beq _020969C2
	ldr r1, [sp, #0x54]
	ldr r0, _02096B6C ; =0xFFFFF077
	mov r7, #1
	and r0, r1
	str r0, [sp, #0x54]
_020969C2:
	add r0, r4, #0
	mov r1, #0x11
	bl sub_0207D014
	cmp r0, #0
	beq _020969D8
	ldr r1, [sp, #0x54]
	mov r0, #0x10
	bic r1, r0
	str r1, [sp, #0x54]
	mov r7, #1
_020969D8:
	add r0, r4, #0
	mov r1, #0x12
	bl sub_0207D014
	cmp r0, #0
	beq _020969EE
	ldr r1, [sp, #0x54]
	mov r0, #0x20
	bic r1, r0
	str r1, [sp, #0x54]
	mov r7, #1
_020969EE:
	add r0, r4, #0
	mov r1, #0x13
	bl sub_0207D014
	cmp r0, #0
	beq _02096A04
	ldr r1, [sp, #0x54]
	mov r0, #0x40
	bic r1, r0
	str r1, [sp, #0x54]
	mov r7, #1
_02096A04:
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x54]
	cmp r1, r0
	beq _02096A18
	add r0, r5, #0
	mov r1, #0xa0
	add r2, sp, #0x54
	bl sub_02074B30
	mov r6, #1
_02096A18:
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x50]
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x54]
	add r0, r4, #0
	mov r1, #0x17
	bl sub_0207D014
	cmp r0, #0
	bne _02096A48
	add r0, r4, #0
	mov r1, #0x18
	bl sub_0207D014
	cmp r0, #0
	beq _02096A74
_02096A48:
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0207D014
	cmp r0, #0
	beq _02096A74
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _02096A70
	add r0, r4, #0
	mov r1, #0x36
	bl sub_0207D014
	add r3, r0, #0
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	bl sub_020970AC
	mov r6, #1
_02096A70:
	mov r7, #1
	b _02096AA0
_02096A74:
	add r0, r4, #0
	mov r1, #0x26
	bl sub_0207D014
	cmp r0, #0
	beq _02096AA0
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x54]
	cmp r1, r0
	bge _02096A9E
	add r0, r4, #0
	mov r1, #0x36
	bl sub_0207D014
	add r3, r0, #0
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	bl sub_020970AC
	mov r6, #1
_02096A9E:
	mov r7, #1
_02096AA0:
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x58]
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0207D014
	cmp r0, #0
	beq _02096AF8
	ldr r0, [sp, #0x58]
	cmp r0, #0x64
	bge _02096AF6
	add r0, r5, #0
	bl sub_02075A70
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_0207536C
	add r0, r5, #0
	bl sub_0207418C
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _02096AF4
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r3, [sp, #0x54]
	ldr r1, [sp, #0x50]
	add r0, r5, #0
	sub r3, r2, r3
	str r2, [sp, #0x5c]
	bl sub_020970AC
_02096AF4:
	mov r6, #1
_02096AF6:
	mov r7, #1
_02096AF8:
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_0207D014
	cmp r0, #0
	beq _02096B06
	mov r7, #1
_02096B06:
	add r0, r4, #0
	mov r1, #0x22
	bl sub_0207D014
	cmp r0, #0
	beq _02096B26
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #1
	bl sub_02097004
	cmp r0, #1
	bne _02096B22
	mov r6, #1
_02096B22:
	mov r7, #1
	b _02096B44
_02096B26:
	add r0, r4, #0
	mov r1, #0x23
	bl sub_0207D014
	cmp r0, #0
	beq _02096B44
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #3
	bl sub_02097004
	cmp r0, #1
	bne _02096B42
	mov r6, #1
_02096B42:
	mov r7, #1
_02096B44:
	add r0, r4, #0
	mov r1, #0x24
	bl sub_0207D014
	cmp r0, #0
	beq _02096B70
	add r0, r4, #0
	mov r1, #0x37
	bl sub_0207D014
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_02096F84
	cmp r0, #1
	bne _02096B68
	mov r6, #1
_02096B68:
	mov r7, #1
	b _02096BAA
	; .align 2, 0
_02096B6C: .word 0xFFFFF077
_02096B70:
	add r0, r4, #0
	mov r1, #0x25
	bl sub_0207D014
	cmp r0, #0
	beq _02096BAA
	mov r0, #0
	str r0, [sp, #0x50]
	cmp r0, #4
	bge _02096BA8
	mov r7, #0x37
_02096B86:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0207D014
	add r2, r0, #0
	ldr r1, [sp, #0x50]
	add r0, r5, #0
	bl sub_02096F84
	cmp r0, #1
	bne _02096B9E
	mov r6, #1
_02096B9E:
	ldr r0, [sp, #0x50]
	add r0, r0, #1
	str r0, [sp, #0x50]
	cmp r0, #4
	blt _02096B86
_02096BA8:
	mov r7, #1
_02096BAA:
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x50]
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x54]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x58]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x5c]
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x60]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x64]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	beq _02096C64
	add r0, r4, #0
	mov r1, #0x27
	bl sub_0207D014
	cmp r0, #0
	beq _02096C64
	add r0, r4, #0
	mov r1, #0x30
	bl sub_0207D014
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x54]
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0xc]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x6c]
	add r2, r2, r1
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x64]
	add r2, r1, r2
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x50]
	add r1, r1, r2
	ldr r2, [sp, #0xc]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096C5C
	str r0, [sp, #0x50]
	add r0, r5, #0
	mov r1, #0xd
	add r2, sp, #0x50
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096C5C:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096C64
	mov r7, #1
_02096C64:
	add r0, r4, #0
	mov r1, #0x28
	bl sub_0207D014
	cmp r0, #0
	beq _02096CC4
	add r0, r4, #0
	mov r1, #0x31
	bl sub_0207D014
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x50]
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x18]
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x6c]
	add r2, r2, r1
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x64]
	add r2, r1, r2
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	add r1, r1, r2
	ldr r2, [sp, #0x18]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096CBC
	str r0, [sp, #0x54]
	add r0, r5, #0
	mov r1, #0xe
	add r2, sp, #0x54
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096CBC:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096CC4
	mov r7, #1
_02096CC4:
	add r0, r4, #0
	mov r1, #0x29
	bl sub_0207D014
	cmp r0, #0
	beq _02096D24
	add r0, r4, #0
	mov r1, #0x32
	bl sub_0207D014
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x50]
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x24]
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x54]
	str r0, [sp, #0x6c]
	add r2, r2, r1
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x64]
	add r2, r1, r2
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	add r1, r1, r2
	ldr r2, [sp, #0x24]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096D1C
	str r0, [sp, #0x58]
	add r0, r5, #0
	mov r1, #0xf
	add r2, sp, #0x58
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096D1C:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096D24
	mov r7, #1
_02096D24:
	add r0, r4, #0
	mov r1, #0x2a
	bl sub_0207D014
	cmp r0, #0
	beq _02096D84
	add r0, r4, #0
	mov r1, #0x33
	bl sub_0207D014
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x50]
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x30]
	str r1, [sp, #0x38]
	ldr r1, [sp, #0x54]
	str r0, [sp, #0x6c]
	add r2, r2, r1
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x64]
	add r2, r1, r2
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x5c]
	add r1, r1, r2
	ldr r2, [sp, #0x30]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096D7C
	str r0, [sp, #0x5c]
	add r0, r5, #0
	mov r1, #0x10
	add r2, sp, #0x5c
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096D7C:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096D84
	mov r7, #1
_02096D84:
	add r0, r4, #0
	mov r1, #0x2b
	bl sub_0207D014
	cmp r0, #0
	beq _02096DE4
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0207D014
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x50]
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x3c]
	str r1, [sp, #0x44]
	ldr r1, [sp, #0x54]
	str r0, [sp, #0x6c]
	add r2, r2, r1
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x64]
	add r2, r1, r2
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x60]
	add r1, r1, r2
	ldr r2, [sp, #0x3c]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096DDC
	str r0, [sp, #0x60]
	add r0, r5, #0
	mov r1, #0x11
	add r2, sp, #0x60
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096DDC:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096DE4
	mov r7, #1
_02096DE4:
	add r0, r4, #0
	mov r1, #0x2c
	bl sub_0207D014
	cmp r0, #0
	beq _02096E44
	add r0, r4, #0
	mov r1, #0x35
	bl sub_0207D014
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x50]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x48]
	mov ip, r1
	ldr r1, [sp, #0x54]
	str r0, [sp, #0x6c]
	add r1, r2, r1
	mov r2, ip
	add r2, r2, r1
	ldr r1, [sp, #0x4c]
	ldr r3, [sp, #0x60]
	add r1, r1, r2
	ldr r0, [sp, #0x64]
	ldr r2, [sp, #0x48]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096E3C
	str r0, [sp, #0x64]
	add r0, r5, #0
	mov r1, #0x12
	add r2, sp, #0x64
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096E3C:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096E44
	mov r7, #1
_02096E44:
	cmp r6, #0
	bne _02096E58
	cmp r7, #1
	bne _02096E58
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x70
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096E58:
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x50]
	cmp r0, #0x64
	bge _02096E98
	add r0, r4, #0
	mov r1, #0x2d
	bl sub_0207D014
	cmp r0, #0
	beq _02096F06
	add r0, r4, #0
	mov r1, #0x38
	bl sub_0207D014
	add r2, r0, #0
	ldr r0, [sp, #0x88]
	str r0, [sp]
	ldr r1, [sp, #0x50]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl sub_020971D0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x70
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096E98:
	blt _02096ECE
	cmp r0, #0xc8
	bge _02096ECE
	add r0, r4, #0
	mov r1, #0x2e
	bl sub_0207D014
	cmp r0, #0
	beq _02096F06
	add r0, r4, #0
	mov r1, #0x39
	bl sub_0207D014
	add r2, r0, #0
	ldr r0, [sp, #0x88]
	str r0, [sp]
	ldr r1, [sp, #0x50]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl sub_020971D0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x70
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096ECE:
	cmp r0, #0xc8
	blt _02096F06
	cmp r0, #0xff
	bgt _02096F06
	add r0, r4, #0
	mov r1, #0x2f
	bl sub_0207D014
	cmp r0, #0
	beq _02096F06
	add r0, r4, #0
	mov r1, #0x3a
	bl sub_0207D014
	add r2, r0, #0
	ldr r0, [sp, #0x88]
	str r0, [sp]
	ldr r1, [sp, #0x50]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl sub_020971D0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x70
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096F06:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02096954

	thumb_func_start sub_02096F14
sub_02096F14: ; 0x02096F14
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0207A0FC
	ldr r1, [sp, #0x14]
	add r3, sp, #0
	str r1, [sp]
	ldrh r3, [r3, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02096954
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02096F14

	thumb_func_start sub_02096F34
sub_02096F34: ; 0x02096F34
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r1, #0x36
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	bne _02096F4C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096F4C:
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	add r6, #0x3e
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r7, #0
	bl sub_020790DC
	cmp r4, r0
	bhs _02096F7A
	mov r0, #1
	b _02096F7C
_02096F7A:
	mov r0, #0
_02096F7C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02096F34

	thumb_func_start sub_02096F84
sub_02096F84: ; 0x02096F84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r1, #0x36
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	bne _02096FA2
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096FA2:
	add r0, r5, #0
	str r0, [sp]
	add r0, #0x3a
	str r0, [sp]
	ldr r1, [sp]
	add r0, r6, #0
	mov r2, #0
	bl sub_02074470
	add r1, sp, #4
	strb r0, [r1]
	add r5, #0x3e
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_020790DC
	add r1, sp, #4
	ldrb r2, [r1]
	cmp r2, r0
	bhs _02096FFC
	cmp r4, #0x7f
	bne _02096FE0
	strb r0, [r1]
	b _02096FEC
_02096FE0:
	add r2, r2, r4
	strb r2, [r1]
	ldrb r2, [r1]
	cmp r2, r0
	bls _02096FEC
	strb r0, [r1]
_02096FEC:
	ldr r1, [sp]
	add r0, r6, #0
	add r2, sp, #4
	bl sub_02074B30
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096FFC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02096F84

	thumb_func_start sub_02097004
sub_02097004: ; 0x02097004
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r4, r1, #0
	str r1, [sp]
	add r1, #0x3e
	mov r2, #0
	add r5, r0, #0
	str r1, [sp]
	bl sub_02074470
	add r1, sp, #8
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #3
	bne _0209702A
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0209702A:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	str r0, [sp, #4]
	bl sub_020790DC
	cmp r0, #5
	bhs _0209704C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0209704C:
	add r4, #0x3a
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02074470
	add r1, sp, #8
	strb r0, [r1, #1]
	ldrb r1, [r1]
	ldr r0, [sp, #4]
	bl sub_020790DC
	add r7, r0, #0
	add r0, sp, #8
	ldrb r0, [r0]
	add r0, r0, r6
	cmp r0, #3
	bls _02097074
	mov r0, #3
	b _02097078
_02097074:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_02097078:
	add r1, sp, #8
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #4]
	bl sub_020790DC
	add r1, sp, #8
	ldrb r2, [r1, #1]
	add r0, r2, r0
	sub r0, r0, r7
	strb r0, [r1, #1]
	ldr r1, [sp]
	add r0, r5, #0
	add r2, sp, #8
	bl sub_02074B30
	add r2, sp, #8
	add r0, r5, #0
	add r1, r4, #0
	add r2, #1
	bl sub_02074B30
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02097004

	thumb_func_start sub_020970AC
sub_020970AC: ; 0x020970AC
	push {r0, r1, r2, r3}
	push {r3, lr}
	cmp r2, #1
	bne _020970B8
	mov r3, #1
	b _020970CE
_020970B8:
	cmp r3, #0xff
	bne _020970C0
	add r3, r2, #0
	b _020970CE
_020970C0:
	cmp r3, #0xfe
	bne _020970C8
	lsr r3, r2, #1
	b _020970CE
_020970C8:
	cmp r3, #0xfd
	bne _020970CE
	lsr r3, r2, #2
_020970CE:
	ldr r1, [sp, #0xc]
	add r1, r1, r3
	cmp r1, r2
	bls _020970DA
	str r2, [sp, #0xc]
	b _020970DC
_020970DA:
	str r1, [sp, #0xc]
_020970DC:
	mov r1, #0xa3
	add r2, sp, #0xc
	bl sub_02074B30
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_020970AC

	thumb_func_start sub_020970EC
sub_020970EC: ; 0x020970EC
	push {r3, r4}
	cmp r0, #0
	bne _020970FE
	cmp r2, #0
	bge _020970FE
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
_020970FE:
	cmp r0, #0x64
	blt _0209710E
	cmp r2, #0
	ble _0209710E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
_0209710E:
	ldr r3, _02097140 ; =0x000001FE
	add r4, r0, r1
	cmp r4, r3
	blt _02097122
	cmp r2, #0
	ble _02097122
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
_02097122:
	add r0, r0, r2
	cmp r0, #0x64
	ble _0209712C
	mov r0, #0x64
	b _02097132
_0209712C:
	cmp r0, #0
	bge _02097132
	mov r0, #0
_02097132:
	ldr r2, _02097140 ; =0x000001FE
	add r3, r0, r1
	cmp r3, r2
	ble _0209713C
	sub r0, r2, r1
_0209713C:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02097140: .word 0x000001FE
	thumb_func_end sub_020970EC

	thumb_func_start sub_02097144
sub_02097144: ; 0x02097144
	push {r4, lr}
	add r4, r1, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xff
	blt _02097158
	mov r0, #0
	pop {r4, pc}
_02097158:
	cmp r0, #0x64
	bge _0209717C
	add r0, r4, #0
	mov r1, #0x2d
	bl sub_0207D014
	cmp r0, #0
	beq _02097178
	add r0, r4, #0
	mov r1, #0x38
	bl sub_0207D014
	cmp r0, #0
	ble _02097178
	mov r0, #1
	pop {r4, pc}
_02097178:
	mov r0, #0
	pop {r4, pc}
_0209717C:
	blt _020971A2
	cmp r0, #0xc8
	bge _020971A2
	add r0, r4, #0
	mov r1, #0x2e
	bl sub_0207D014
	cmp r0, #0
	beq _0209719E
	add r0, r4, #0
	mov r1, #0x39
	bl sub_0207D014
	cmp r0, #0
	ble _0209719E
	mov r0, #1
	pop {r4, pc}
_0209719E:
	mov r0, #0
	pop {r4, pc}
_020971A2:
	cmp r0, #0xc8
	blt _020971CA
	cmp r0, #0xff
	bge _020971CA
	add r0, r4, #0
	mov r1, #0x2f
	bl sub_0207D014
	cmp r0, #0
	beq _020971C6
	add r0, r4, #0
	mov r1, #0x3a
	bl sub_0207D014
	cmp r0, #0
	ble _020971C6
	mov r0, #1
	pop {r4, pc}
_020971C6:
	mov r0, #0
	pop {r4, pc}
_020971CA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02097144

	thumb_func_start sub_020971D0
sub_020971D0: ; 0x020971D0
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r3, #0
	cmp r4, #0xff
	bne _020971EE
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _020971EE
	mov r0, #0
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
_020971EE:
	cmp r4, #0
	bne _02097202
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bge _02097202
	mov r0, #0
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
_02097202:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _02097258
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	ldr r2, [sp, #0x20]
	lsr r0, r0, #0x10
	mov r1, #1
	bl sub_0207CFF0
	cmp r0, #0x35
	bne _02097230
	ldr r1, [sp, #0x18]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	str r0, [sp, #0x18]
_02097230:
	add r0, r5, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xb
	bne _02097244
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_02097244:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	cmp r6, r0
	bne _02097258
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_02097258:
	ldr r0, [sp, #0x18]
	add r0, r0, r4
	str r0, [sp, #0x18]
	cmp r0, #0xff
	ble _02097266
	mov r0, #0xff
	str r0, [sp, #0x18]
_02097266:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bge _02097270
	mov r0, #0
	str r0, [sp, #0x18]
_02097270:
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #0x18
	bl sub_02074B30
	mov r0, #1
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_020971D0

	thumb_func_start sub_02097284
sub_02097284: ; 0x02097284
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	bl sub_0207A0F8
	mov r7, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _020972F8
	mov r6, #0x7f
_02097298:
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #0xac
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _020972F0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa3
	add r2, sp, #8
	bl sub_02074B30
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa0
	add r2, sp, #8
	bl sub_02074B30
	mov r4, #0
_020972D4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02096F34
	cmp r0, #1
	bne _020972EA
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02096F84
_020972EA:
	add r4, r4, #1
	cmp r4, #4
	blt _020972D4
_020972F0:
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	blt _02097298
_020972F8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02097284

	thumb_func_start sub_020972FC
sub_020972FC: ; 0x020972FC
	push {r3, lr}
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	pop {r3, pc}
	thumb_func_end sub_020972FC

	thumb_func_start sub_02097320
sub_02097320: ; 0x02097320
	push {r4, r5, r6, lr}
	sub r1, #0x95
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	add r1, r6, #0
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02097344
	cmp r4, #1
	bne _02097338
	strb r6, [r5, #8]
_02097338:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02097320

	thumb_func_start sub_0209733C
sub_0209733C: ; 0x0209733C
	strb r1, [r0, #9]
	strb r2, [r0, #0xa]
	strb r3, [r0, #0xb]
	bx lr
	thumb_func_end sub_0209733C

	thumb_func_start sub_02097344
sub_02097344: ; 0x02097344
	push {r3, r4, r5, r6}
	lsr r6, r1, #0x1f
	lsl r5, r1, #0x1b
	lsr r2, r1, #5
	lsl r4, r2, #2
	sub r5, r5, r6
	mov r1, #0x1b
	ror r5, r1
	ldr r3, [r0, r4]
	mov r2, #1
	add r1, r6, r5
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r0, r4]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097344

	thumb_func_start sub_02097368
sub_02097368: ; 0x02097368
	push {r4, r5}
	lsr r5, r1, #0x1f
	lsl r4, r1, #0x1b
	lsr r1, r1, #5
	lsl r1, r1, #2
	sub r4, r4, r5
	mov r3, #0x1b
	ror r4, r3
	mov r2, #1
	add r3, r5, r4
	add r4, r2, #0
	lsl r4, r3
	ldr r0, [r0, r1]
	tst r0, r4
	bne _02097388
	mov r2, #0
_02097388:
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02097368

	thumb_func_start sub_02097390
sub_02097390: ; 0x02097390
	ldrb r3, [r0, #9]
	strb r3, [r1]
	ldrb r0, [r0, #0xa]
	strb r0, [r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097390

	thumb_func_start sub_0209739C
sub_0209739C: ; 0x0209739C
	ldr r3, _020973A4 ; =sub_02006C24
	add r1, r0, #0
	mov r0, #0x44
	bx r3
	; .align 2, 0
_020973A4: .word sub_02006C24
	thumb_func_end sub_0209739C

	thumb_func_start sub_020973A8
sub_020973A8: ; 0x020973A8
	ldr r3, _020973AC ; =sub_02006CB8
	bx r3
	; .align 2, 0
_020973AC: .word sub_02006CB8
	thumb_func_end sub_020973A8

	thumb_func_start sub_020973B0
sub_020973B0: ; 0x020973B0
	ldr r3, _020973B4 ; =sub_02006CA8
	bx r3
	; .align 2, 0
_020973B4: .word sub_02006CA8
	thumb_func_end sub_020973B0

	thumb_func_start sub_020973B8
sub_020973B8: ; 0x020973B8
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r3, _020973C4 ; =sub_02006AC0
	mov r0, #0x44
	bx r3
	; .align 2, 0
_020973C4: .word sub_02006AC0
	thumb_func_end sub_020973B8

	thumb_func_start sub_020973C8
sub_020973C8: ; 0x020973C8
	ldr r3, _020973D0 ; =sub_020973B8
	sub r0, #0x95
	bx r3
	nop
_020973D0: .word sub_020973B8
	thumb_func_end sub_020973C8

	thumb_func_start sub_020973D4
sub_020973D4: ; 0x020973D4
	cmp r1, #0xa
	bhi _02097426
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020973E4: ; jump table
	.short _020973FA - _020973E4 - 2 ; case 0
	.short _020973FE - _020973E4 - 2 ; case 1
	.short _02097402 - _020973E4 - 2 ; case 2
	.short _02097406 - _020973E4 - 2 ; case 3
	.short _0209740A - _020973E4 - 2 ; case 4
	.short _0209740E - _020973E4 - 2 ; case 5
	.short _02097412 - _020973E4 - 2 ; case 6
	.short _02097416 - _020973E4 - 2 ; case 7
	.short _0209741A - _020973E4 - 2 ; case 8
	.short _0209741E - _020973E4 - 2 ; case 9
	.short _02097422 - _020973E4 - 2 ; case 10
_020973FA:
	ldrh r0, [r0]
	bx lr
_020973FE:
	ldrb r0, [r0, #2]
	bx lr
_02097402:
	ldrb r0, [r0, #3]
	bx lr
_02097406:
	ldrb r0, [r0, #4]
	bx lr
_0209740A:
	ldrb r0, [r0, #5]
	bx lr
_0209740E:
	ldrb r0, [r0, #6]
	bx lr
_02097412:
	ldrb r0, [r0, #7]
	bx lr
_02097416:
	ldrb r0, [r0, #8]
	bx lr
_0209741A:
	ldrb r0, [r0, #9]
	bx lr
_0209741E:
	ldrb r0, [r0, #0xa]
	bx lr
_02097422:
	ldrb r0, [r0, #0xb]
	bx lr
_02097426:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020973D4

	thumb_func_start sub_0209742C
sub_0209742C: ; 0x0209742C
	push {r3, r4, r5, lr}
	mov r2, #0x6a
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209742C

	thumb_func_start sub_02097454
sub_02097454: ; 0x02097454
	push {r3, r4, r5, lr}
	ldr r2, _02097478 ; =0x000001A7
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02097478: .word 0x000001A7
	thumb_func_end sub_02097454

	thumb_func_start sub_0209747C
sub_0209747C: ; 0x0209747C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r0, r3, #0
	mov r1, #0x24
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	strb r5, [r4]
	strb r7, [r4, #1]
	add r0, r6, #0
	bl sub_02027560
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl sub_02014EC4
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl sub_020507E4
	bl sub_0206A954
	strb r0, [r4, #4]
	mov r1, #0
	strb r1, [r4, #5]
	mov r0, #1
	strb r0, [r4, #2]
	add r0, r6, #0
	strb r1, [r4, #3]
	bl sub_02025E44
	bl sub_02027B50
	str r0, [r4, #8]
	cmp r5, #2
	bne _020974D4
	add r0, r4, #0
	add r0, #0x14
	mov r1, #3
	bl sub_02014A9C
	b _020974E4
_020974D4:
	ldr r0, _020974E8 ; =0x0000FFFF
	mov r1, #0
	add r2, r4, #0
_020974DA:
	add r1, r1, #1
	strh r0, [r2, #0x1c]
	add r2, r2, #2
	cmp r1, #2
	blt _020974DA
_020974E4:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020974E8: .word 0x0000FFFF
	thumb_func_end sub_0209747C

	thumb_func_start sub_020974EC
sub_020974EC: ; 0x020974EC
	ldr r3, _020974F0 ; =sub_020181C4
	bx r3
	; .align 2, 0
_020974F0: .word sub_020181C4
	thumb_func_end sub_020974EC

	thumb_func_start sub_020974F4
sub_020974F4: ; 0x020974F4
	strh r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_020974F4

	thumb_func_start sub_020974F8
sub_020974F8: ; 0x020974F8
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020974F8

	thumb_func_start sub_02097500
sub_02097500: ; 0x02097500
	ldrh r2, [r1]
	strh r2, [r0, #0x14]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0x16]
	ldrh r2, [r1, #4]
	strh r2, [r0, #0x18]
	ldrh r1, [r1, #6]
	strh r1, [r0, #0x1a]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097500

	thumb_func_start sub_02097514
sub_02097514: ; 0x02097514
	mov r1, #1
	strb r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097514

	thumb_func_start sub_02097520
sub_02097520: ; 0x02097520
	mov r1, #1
	strb r1, [r0, #5]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097520

	thumb_func_start sub_02097528
sub_02097528: ; 0x02097528
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_02097528

	thumb_func_start sub_0209752C
sub_0209752C: ; 0x0209752C
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end sub_0209752C

	thumb_func_start sub_02097530
sub_02097530: ; 0x02097530
	ldrh r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02097530

	thumb_func_start sub_02097534
sub_02097534: ; 0x02097534
	ldrh r2, [r0, #0x1c]
	strh r2, [r1]
	ldrh r0, [r0, #0x1e]
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097534

	thumb_func_start sub_02097540
sub_02097540: ; 0x02097540
	add r2, r0, #0
	ldr r3, _0209754C ; =sub_02014CC0
	add r2, #0x14
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0209754C: .word sub_02014CC0
	thumb_func_end sub_02097540

	thumb_func_start sub_02097550
sub_02097550: ; 0x02097550
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_02097550

	thumb_func_start sub_02097554
sub_02097554: ; 0x02097554
	ldrb r0, [r0, #1]
	bx lr
	thumb_func_end sub_02097554

	thumb_func_start sub_02097558
sub_02097558: ; 0x02097558
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02097558

	thumb_func_start sub_0209755C
sub_0209755C: ; 0x0209755C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0209755C

	thumb_func_start sub_02097560
sub_02097560: ; 0x02097560
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_02097560

	thumb_func_start sub_02097564
sub_02097564: ; 0x02097564
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end sub_02097564

	thumb_func_start sub_02097568
sub_02097568: ; 0x02097568
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end sub_02097568

	thumb_func_start sub_0209756C
sub_0209756C: ; 0x0209756C
	ldrb r3, [r0]
	cmp r3, #0
	beq _0209757C
	cmp r3, #1
	beq _02097582
	cmp r3, #2
	beq _0209758C
	bx lr
_0209757C:
	ldrh r0, [r0, #0x1c]
	strh r0, [r1]
	bx lr
_02097582:
	ldrh r2, [r0, #0x1c]
	strh r2, [r1]
	ldrh r0, [r0, #0x1e]
	strh r0, [r1, #2]
	bx lr
_0209758C:
	ldrh r1, [r0, #0x14]
	strh r1, [r2]
	ldrh r1, [r0, #0x16]
	strh r1, [r2, #2]
	ldrh r1, [r0, #0x18]
	strh r1, [r2, #4]
	ldrh r0, [r0, #0x1a]
	strh r0, [r2, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209756C

	thumb_func_start sub_020975A0
sub_020975A0: ; 0x020975A0
	push {r3, lr}
	ldrb r3, [r0]
	cmp r3, #0
	beq _020975B0
	cmp r3, #1
	beq _020975C0
	cmp r3, #2
	b _020975D8
_020975B0:
	ldrh r1, [r1]
	ldrh r0, [r0, #0x1c]
	cmp r1, r0
	bne _020975BC
	mov r0, #1
	pop {r3, pc}
_020975BC:
	mov r0, #0
	pop {r3, pc}
_020975C0:
	ldrh r3, [r1]
	ldrh r2, [r0, #0x1c]
	cmp r3, r2
	bne _020975D4
	ldrh r1, [r1, #2]
	ldrh r0, [r0, #0x1e]
	cmp r1, r0
	bne _020975D4
	mov r0, #1
	pop {r3, pc}
_020975D4:
	mov r0, #0
	pop {r3, pc}
_020975D8:
	add r0, #0x14
	add r1, r2, #0
	bl sub_02014C88
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020975A0

	thumb_func_start sub_020975E4
sub_020975E4: ; 0x020975E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020975A0
	cmp r0, #0
	bne _020975F8
	mov r0, #1
	b _020975FA
_020975F8:
	mov r0, #0
_020975FA:
	strb r0, [r5, #3]
	mov r1, #0
	strb r1, [r5, #2]
	add r2, r5, #0
_02097602:
	ldrh r0, [r4]
	add r1, r1, #1
	add r4, r4, #2
	strh r0, [r2, #0x1c]
	add r2, r2, #2
	cmp r1, #2
	blt _02097602
	ldrh r0, [r6]
	strh r0, [r5, #0x14]
	ldrh r0, [r6, #2]
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #4]
	strh r0, [r5, #0x18]
	ldrh r0, [r6, #6]
	strh r0, [r5, #0x1a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020975E4

	thumb_func_start sub_02097624
sub_02097624: ; 0x02097624
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl sub_02028430
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r1, #0x1c
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	strb r0, [r4, #0xf]
	ldr r0, [sp, #4]
	strb r6, [r4, #0xe]
	str r0, [r4, #0x18]
	mov r0, #1
	strh r0, [r4]
	str r7, [r4, #8]
	mov r0, #0
	strh r0, [r4, #0xc]
	ldr r0, [sp, #0x20]
	str r5, [r4, #0x10]
	bl sub_0202818C
	str r0, [r4, #0x14]
	bl sub_02028124
	ldr r0, [r4, #0x14]
	mov r1, #0xff
	add r2, r6, #0
	add r3, r5, #0
	bl sub_020281AC
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02097624

	thumb_func_start sub_0209767C
sub_0209767C: ; 0x0209767C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x1c
	add r6, r2, #0
	str r3, [sp]
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	strh r0, [r4]
	str r5, [r4, #8]
	strh r6, [r4, #0xc]
	add r0, r7, #0
	str r7, [r4, #0x10]
	bl sub_02028430
	ldr r3, [sp]
	add r1, r5, #0
	add r2, r6, #0
	str r0, [r4, #0x18]
	bl sub_020284A8
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209767C

	thumb_func_start sub_020976BC
sub_020976BC: ; 0x020976BC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #0x1c
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	strh r0, [r4]
	str r5, [r4, #0x10]
	add r0, r7, #0
	bl sub_0202818C
	str r0, [r4, #0x14]
	ldr r2, [r4, #0x14]
	add r0, r6, #0
	mov r1, #0xaa
	bl sub_02074470
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020976BC

	thumb_func_start sub_020976F4
sub_020976F4: ; 0x020976F4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #0x1c
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	strh r0, [r4]
	add r0, r7, #0
	str r5, [r4, #0x10]
	bl sub_0202818C
	add r1, r6, #0
	str r0, [r4, #0x14]
	bl sub_02028318
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020976F4

	thumb_func_start sub_02097728
sub_02097728: ; 0x02097728
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02097728

	thumb_func_start sub_0209772C
sub_0209772C: ; 0x0209772C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02097728
	cmp r0, #0
	bne _02097740
	mov r0, #0
	pop {r4, r5, r6, pc}
_02097740:
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02028480
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0209772C

	thumb_func_start sub_02097750
sub_02097750: ; 0x02097750
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02097728
	cmp r0, #0
	bne _02097762
	mov r0, #0
	pop {r3, r4, r5, pc}
_02097762:
	ldr r2, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0xaa
	bl sub_02074B30
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02097750

	thumb_func_start sub_02097770
sub_02097770: ; 0x02097770
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0209777E
	bl sub_020181C4
_0209777E:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02097770

	thumb_func_start sub_02097788
sub_02097788: ; 0x02097788
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	add r7, r0, #0
	add r4, r2, #0
	str r1, [sp]
	bl sub_0202845C
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _020977E2
	add r0, r4, #0
	bl sub_0202818C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xaa
	add r2, r4, #0
	bl sub_02074470
	add r0, r7, #0
	mov r1, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02028480
	add r0, r4, #0
	bl sub_02028124
	add r0, r5, #0
	mov r1, #0xaa
	add r2, r4, #0
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
_020977E2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02097788

	thumb_func_start sub_020977E4
sub_020977E4: ; 0x020977E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #0
	add r2, r5, #0
	add r7, r0, #0
	str r1, [sp]
	bl sub_020284A8
	add r6, r0, #0
	bne _02097800
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02097800:
	bl sub_02028314
	bl sub_0207D310
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xaa
	add r2, r6, #0
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	add r0, r7, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_02028470
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020977E4

	thumb_func_start sub_02097834
sub_02097834: ; 0x02097834
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x34
	bl sub_02018144
	mov r1, #0
	mov r2, #0x34
	add r6, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	strh r0, [r6]
	add r0, r4, #0
	bl sub_02028308
	str r0, [r6, #8]
	mov r0, #8
	add r1, r5, #0
	bl sub_02023790
	str r0, [r6, #0x10]
	add r0, r4, #0
	bl sub_0202830C
	add r1, r0, #0
	ldr r0, [r6, #0x10]
	bl sub_02023D28
	add r0, r4, #0
	bl sub_02028314
	strb r0, [r6, #0xf]
	add r0, r4, #0
	bl sub_02028320
	strb r0, [r6, #0xd]
	add r0, r4, #0
	bl sub_02028324
	strb r0, [r6, #0xe]
	mov r5, #0
	mov r7, #2
_0209788C:
	add r0, r4, #0
	bl sub_02028408
	lsl r1, r5, #0x18
	add r3, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	bl sub_02028328
	lsl r1, r5, #1
	add r1, r6, r1
	strh r0, [r1, #0x14]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _0209788C
	add r7, r6, #0
	mov r5, #0
	add r7, #0x1a
_020978B6:
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_0202840C
	add r1, r0, #0
	lsl r0, r5, #3
	add r0, r7, r0
	bl sub_02014CC0
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _020978B6
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02097834

	thumb_func_start sub_020978D8
sub_020978D8: ; 0x020978D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _020978E6
	bl sub_020237BC
_020978E6:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020978D8

	thumb_func_start sub_020978F0
sub_020978F0: ; 0x020978F0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r7, #0
	add r6, r0, #0
	mov r5, #0
	add r4, #0x1a
_020978FC:
	lsl r1, r5, #3
	lsl r2, r5, #0x18
	add r0, r6, #0
	add r1, r4, r1
	lsr r2, r2, #0x18
	bl sub_0202841C
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _020978FC
	ldrb r1, [r7, #0xf]
	add r0, r6, #0
	bl sub_02028318
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020978F0

	thumb_func_start sub_02097920
sub_02097920: ; 0x02097920
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02097940
	bl sub_02006844
	cmp r0, #0
	beq _02097940
	ldr r0, [r4, #0]
	bl sub_02006814
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_02097940:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02097920

	thumb_func_start sub_02097944
sub_02097944: ; 0x02097944
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x28
	lsl r2, r2, #0xc
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #0x28
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	mov r1, #0x28
	str r1, [r4, #0]
	ldr r0, [r5, #0x14]
	bl sub_02097834
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	bl sub_02025E44
	ldr r1, [r4, #0x10]
	str r0, [r1, #4]
	ldrh r0, [r5]
	cmp r0, #1
	bne _02097990
	ldrb r1, [r5, #0xf]
	ldr r0, [r4, #0x10]
	strb r1, [r0, #0xf]
_02097990:
	ldr r1, [r4, #0x10]
	ldrb r0, [r1, #0xf]
	cmp r0, #0xc
	blo _0209799C
	mov r0, #0
	strb r0, [r1, #0xf]
_0209799C:
	ldrh r1, [r5]
	ldr r0, [r4, #0x10]
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02097944

	thumb_func_start sub_020979A8
sub_020979A8: ; 0x020979A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #4
	bls _020979C4
	b _02097AE8
_020979C4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020979D0: ; jump table
	.short _020979DA - _020979D0 - 2 ; case 0
	.short _020979F2 - _020979D0 - 2 ; case 1
	.short _02097A1E - _020979D0 - 2 ; case 2
	.short _02097A58 - _020979D0 - 2 ; case 3
	.short _02097AB6 - _020979D0 - 2 ; case 4
_020979DA:
	ldrh r1, [r5]
	ldr r0, [r4, #0x10]
	strh r1, [r0]
	ldr r0, _02097AEC ; =0x020F6490
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0]
	bl sub_020067E8
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r6, #0]
	b _02097AE8
_020979F2:
	add r0, r4, #0
	add r0, #0xc
	bl sub_02097920
	cmp r0, #0
	beq _02097AE8
	ldr r0, [r4, #0x10]
	ldrh r1, [r0]
	cmp r1, #3
	beq _02097A12
	ldr r0, _02097AF0 ; =0x0000FFFF
	cmp r1, r0
	bne _02097A18
	mov r0, #2
	str r0, [r6, #0]
	b _02097AE8
_02097A12:
	mov r0, #2
	str r0, [r6, #0]
	b _02097AE8
_02097A18:
	mov r0, #3
	str r0, [r6, #0]
	b _02097AE8
_02097A1E:
	ldrh r0, [r5]
	cmp r0, #1
	bne _02097A54
	ldr r1, [r4, #0x10]
	ldrh r0, [r1]
	cmp r0, #3
	bne _02097A50
	ldr r0, [r5, #0x14]
	bl sub_020978F0
	ldr r0, [r5, #0x10]
	bl sub_0202CD88
	mov r1, #2
	bl sub_0202CFEC
	ldr r0, [r5, #0x10]
	bl sub_0202CD88
	mov r1, #0x2d
	bl sub_0202CF28
	mov r0, #1
	str r0, [r5, #4]
	b _02097A54
_02097A50:
	mov r0, #0
	str r0, [r5, #4]
_02097A54:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02097A58:
	ldr r2, [r5, #0x10]
	ldr r3, [r4, #0]
	mov r0, #2
	mov r1, #0
	bl sub_0209747C
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	add r1, r0, #0
	ldrb r0, [r0, #2]
	add r1, #0x1a
	lsl r0, r0, #3
	add r0, r1, r0
	bl sub_02014BBC
	cmp r0, #0
	beq _02097A90
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	ldrb r1, [r1, #2]
	add r2, #0x1a
	add r0, #0x14
	lsl r1, r1, #3
	add r1, r2, r1
	bl sub_02014CC0
	b _02097A9A
_02097A90:
	add r0, r4, #0
	add r0, #0x14
	mov r1, #3
	bl sub_02014A9C
_02097A9A:
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0x14
	bl sub_02097500
	ldr r0, _02097AF4 ; =0x020F64A0
	ldr r1, [r4, #8]
	ldr r2, [r4, #0]
	bl sub_020067E8
	str r0, [r4, #0xc]
	mov r0, #4
	str r0, [r6, #0]
	b _02097AE8
_02097AB6:
	add r0, r4, #0
	add r0, #0xc
	bl sub_02097920
	cmp r0, #0
	beq _02097AE8
	ldr r0, [r4, #8]
	bl sub_02097528
	cmp r0, #0
	bne _02097ADE
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #8]
	add r2, r1, #0
	ldrb r1, [r1, #2]
	add r2, #0x1a
	lsl r1, r1, #3
	add r1, r2, r1
	bl sub_02097540
_02097ADE:
	ldr r0, [r4, #8]
	bl sub_020974EC
	mov r0, #0
	str r0, [r6, #0]
_02097AE8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02097AEC: .word 0x020F6490
_02097AF0: .word 0x0000FFFF
_02097AF4: .word 0x020F64A0
	thumb_func_end sub_020979A8

	thumb_func_start sub_02097AF8
sub_02097AF8: ; 0x02097AF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020978D8
	add r0, r5, #0
	bl sub_02006830
	ldr r0, [r4, #0]
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02097AF8

	thumb_func_start sub_02097B18
sub_02097B18: ; 0x02097B18
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x35
	lsl r2, r2, #0x12
	bl sub_02017FC8
	mov r0, #0x35
	bl ov76_0223EB20
	bl ov76_0223D3A0
	mov r1, #0x43
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0x35
	bl sub_0200681C
	mov r2, #0x43
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020D5124
	bl ov76_0223BE6C
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	mov r0, #0x93
	mov r1, #0x35
	bl sub_02006C24
	ldr r1, _02097D20 ; =0x0000042C
	str r0, [r4, r1]
	mov r0, #0x35
	bl sub_02073C74
	ldr r1, _02097D24 ; =0x00000428
	mov r2, #0xff
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xd4
	str r2, [r0, #0]
	mov r5, #0
	sub r1, #0x10
	str r5, [r4, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0202CBA8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	beq _02097B98
	mov r5, #1
_02097B98:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0202CBA8
	asr r1, r0, #2
	lsr r1, r1, #0x1d
	add r1, r0, r1
	asr r0, r1, #3
	add r1, r5, r0
	ldr r0, _02097D28 ; =0x0000041C
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0xa
	ble _02097BB8
	mov r1, #0xa
	str r1, [r4, r0]
_02097BB8:
	ldr r0, [r4, #0]
	bl sub_02097F18
	mov r1, #0xf1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	bl sub_02097F18
	mov r1, #0xf2
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0202CA88
	str r0, [r4, #0x64]
	mov r6, #0
	add r5, r4, #0
	mov r7, #0xff
_02097BE0:
	ldr r0, [r4, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x20]
	bl sub_0202CA28
	str r7, [r5, #4]
	str r0, [r5, #8]
	add r6, r6, #1
	add r5, #8
	cmp r6, #0xc
	blt _02097BE0
	mov r5, #0
	add r6, r5, #0
	mov r7, #0xa2
_02097BFC:
	ldr r0, [r4, #0]
	add r0, r0, r6
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02097C1A
	add r1, r7, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02097C1A
	lsl r0, r0, #3
	add r0, r4, r0
	sub r0, r0, #4
	str r5, [r0, #0]
_02097C1A:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #6
	blt _02097BFC
	mov r0, #0x35
	bl sub_02018340
	add r1, r4, #0
	add r1, #0xe4
	str r0, [r1, #0]
	mov r0, #0x40
	mov r1, #0x35
	bl sub_0201DBEC
	mov r0, #0x35
	bl sub_02002F38
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02003858
	add r0, r4, #0
	add r0, #0xe8
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x35
	bl sub_02002F70
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r2, r1, #9
	mov r3, #0x35
	bl sub_02002F70
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r2, r1, #8
	mov r3, #0x35
	bl sub_02002F70
	add r0, r4, #0
	add r0, #0xe8
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x35
	bl sub_02002F70
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	bl ov76_0223EB64
	bl ov76_0223BF10
	mov r0, #0x35
	bl sub_0200762C
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x35
	mov r1, #1
	mov r2, #0
	bl sub_02015F84
	mov r1, #0x97
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	add r5, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xe4
	add r1, #0xe8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r5, #0
	bl ov76_0223C8EC
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xe4
	add r1, #0xe8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r5, #0
	bl ov76_0223C974
	add r0, r4, #0
	add r0, #0xd4
	bl ov76_0223C398
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r4, #0
	bl ov76_0223DCC0
	ldr r0, _02097D2C ; =0x0223ECB1
	add r1, r4, #0
	bl sub_02017798
	add r0, r4, #0
	bl ov76_0223B8A8
	mov r1, #0
	mov r0, #0x3b
	add r2, r1, #0
	bl sub_02004550
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02097D20: .word 0x0000042C
_02097D24: .word 0x00000428
_02097D28: .word 0x0000041C
_02097D2C: .word 0x0223ECB1
	thumb_func_end sub_02097B18

	thumb_func_start sub_02097D30
sub_02097D30: ; 0x02097D30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0
	beq _02097D4A
	cmp r1, #1
	beq _02097D58
	cmp r1, #2
	beq _02097D76
	b _02097D82
_02097D4A:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02097D82
	mov r0, #1
	str r0, [r5, #0]
	b _02097D82
_02097D58:
	bl ov76_0223D550
	cmp r0, #0
	bne _02097D66
	mov r0, #2
	str r0, [r5, #0]
	b _02097D82
_02097D66:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007768
	bl ov76_0223BF50
	b _02097D82
_02097D76:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02097D82
	mov r0, #1
	pop {r3, r4, r5, pc}
_02097D82:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02097D30

	thumb_func_start sub_02097D88
sub_02097D88: ; 0x02097D88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #7
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_02002F54
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r0, [r4, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02097F20
	ldr r0, _02097EF0 ; =0x00000428
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl ov76_0223B678
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007B6C
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02015FB8
	add r0, r4, #0
	bl ov76_0223B8C4
	add r0, r4, #0
	add r0, #0xd4
	bl ov76_0223C424
	bl sub_0201DC3C
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020242C4
	mov r0, #0x35
	bl ov76_0223EB54
	ldr r0, _02097EF4 ; =0x0000042C
	ldr r0, [r4, r0]
	bl sub_02006CA8
	add r0, r5, #0
	bl sub_02006830
	bl sub_0201E530
	mov r0, #0x35
	bl sub_0201807C
	ldr r0, _02097EF8 ; =0x0000000B
	bl sub_02006514
	ldr r0, _02097EFC ; =0x0000000C
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02097EF0: .word 0x00000428
_02097EF4: .word 0x0000042C
_02097EF8: .word 0x0000000B
_02097EFC: .word 0x0000000C
	thumb_func_end sub_02097D88

	thumb_func_start sub_02097F00
sub_02097F00: ; 0x02097F00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, r1
	bge _02097F10
	bl sub_02022974
	mov r1, #0
_02097F10:
	lsl r0, r1, #2
	add r0, r4, r0
	ldr r0, [r0, #4]
	pop {r4, pc}
	thumb_func_end sub_02097F00

	thumb_func_start sub_02097F18
sub_02097F18: ; 0x02097F18
	add r0, #0x2c
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097F18

	thumb_func_start sub_02097F20
sub_02097F20: ; 0x02097F20
	add r0, #0x2c
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097F20

	thumb_func_start sub_02097F28
sub_02097F28: ; 0x02097F28
	add r0, #0x2d
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097F28

	thumb_func_start sub_02097F30
sub_02097F30: ; 0x02097F30
	add r0, #0x2d
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097F30

	thumb_func_start sub_02097F38
sub_02097F38: ; 0x02097F38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02050A64
	add r6, r0, #0
	add r0, r5, #0
	ldr r7, [r6, #8]
	bl sub_02050A60
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	cmp r0, #6
	bls _02097F56
	b _020980CC
_02097F56:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02097F62: ; jump table
	.short _02097F70 - _02097F62 - 2 ; case 0
	.short _02097FCC - _02097F62 - 2 ; case 1
	.short _02097FDC - _02097F62 - 2 ; case 2
	.short _02097FFA - _02097F62 - 2 ; case 3
	.short _0209803A - _02097F62 - 2 ; case 4
	.short _020980A8 - _02097F62 - 2 ; case 5
	.short _020980B4 - _02097F62 - 2 ; case 6
_02097F70:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r6, #0x10]
	bl sub_0202CA1C
	str r0, [r7, #0x20]
	add r0, r7, #0
	mov r1, #0
	bl sub_02097F20
	ldr r0, [r6, #0x10]
	bl sub_0207A268
	str r0, [r7, #0x1c]
	bl sub_0207A0F8
	mov r4, #0
	str r0, [sp]
	str r0, [r7, #0]
	cmp r0, #0
	ble _02097FB2
	add r5, r7, #0
_02097F9E:
	ldr r0, [r7, #0x1c]
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [r5, #4]
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _02097F9E
_02097FB2:
	cmp r4, #6
	bge _02097FC6
	lsl r0, r4, #2
	add r1, r7, r0
	mov r0, #0
_02097FBC:
	add r4, r4, #1
	str r0, [r1, #4]
	add r1, r1, #4
	cmp r4, #6
	blt _02097FBC
_02097FC6:
	mov r0, #1
	str r0, [r6, #0x14]
	b _020980CC
_02097FCC:
	ldr r1, _020980D4 ; =0x020F64C0
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02050A38
	mov r0, #2
	str r0, [r6, #0x14]
	b _020980CC
_02097FDC:
	ldr r0, [r6, #8]
	bl sub_02097F28
	cmp r0, #0
	beq _02097FEE
	cmp r0, #1
	beq _02097FF4
	bl sub_02022974
_02097FEE:
	mov r0, #5
	str r0, [r6, #0x14]
	b _020980CC
_02097FF4:
	mov r0, #3
	str r0, [r6, #0x14]
	b _020980CC
_02097FFA:
	ldr r4, [r6, #0xc]
	ldr r0, [r7, #0x1c]
	str r0, [r4, #0]
	ldr r0, [r6, #0x10]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r6, #0x10]
	bl sub_02028430
	str r0, [r4, #8]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x22
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x20
	strb r1, [r0]
	ldr r0, [r7, #0x24]
	ldr r1, _020980D8 ; =0x020F1E88
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050A38
	mov r0, #4
	str r0, [r6, #0x14]
	b _020980CC
_0209803A:
	ldr r0, [r6, #8]
	ldr r4, [r6, #0xc]
	bl sub_02097F18
	add r0, r0, #1
	str r0, [sp, #8]
	add r4, #0x22
	ldrb r1, [r4]
	cmp r1, #7
	beq _020980A2
	ldr r0, [r6, #8]
	bl sub_02097F00
	mov r1, #0xa2
	add r2, sp, #8
	add r5, r0, #0
	bl sub_02074B30
	ldr r1, [sp, #8]
	ldr r0, [r7, #0x20]
	sub r1, r1, #1
	bl sub_0202CA28
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0xab
	bl sub_02074B30
	ldr r1, [sp, #8]
	ldr r0, [r7, #0x20]
	sub r1, r1, #1
	bl sub_0202CA28
	mov r1, #0
	bl sub_0202CA64
	bl sub_0202CA7C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098164
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	lsl r2, r4, #0x18
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl sub_0206D9B4
_020980A2:
	mov r0, #1
	str r0, [r6, #0x14]
	b _020980CC
_020980A8:
	add r0, r5, #0
	bl sub_02055868
	mov r0, #6
	str r0, [r6, #0x14]
	b _020980CC
_020980B4:
	ldr r0, [r6, #0xc]
	bl sub_020181C4
	ldr r0, [r6, #8]
	bl sub_020181C4
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_020980CC:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020980D4: .word 0x020F64C0
_020980D8: .word 0x020F1E88
	thumb_func_end sub_02097F38

	thumb_func_start sub_020980DC
sub_020980DC: ; 0x020980DC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018184
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_020980F2:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020980F2
	mov r0, #0xb
	mov r1, #0x30
	str r5, [r4, #0x10]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	str r0, [r4, #8]
	bl sub_020D5124
	add r0, r5, #0
	bl sub_02025E44
	ldr r1, [r4, #8]
	str r0, [r1, #0x24]
	ldr r0, [r4, #8]
	mov r1, #0x40
	str r5, [r0, #0x28]
	mov r0, #0xb
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	str r0, [r4, #0xc]
	bl sub_020D5124
	ldr r1, _0209813C ; =sub_02097F38
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_0209813C: .word sub_02097F38
	thumb_func_end sub_020980DC

	thumb_func_start sub_02098140
sub_02098140: ; 0x02098140
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0209815C ; =0x0000032A
	cmp r4, r0
	blo _0209814E
	bl sub_02022974
_0209814E:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02098160 ; =0x020F64D0
	ldrh r0, [r0, r1]
	pop {r4, pc}
	nop
_0209815C: .word 0x0000032A
_02098160: .word 0x020F64D0
	thumb_func_end sub_02098140

	thumb_func_start sub_02098164
sub_02098164: ; 0x02098164
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02098180 ; =0x0000032A
	cmp r4, r0
	blo _02098172
	bl sub_02022974
_02098172:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02098184 ; =0x020F64D2
	ldrb r0, [r0, r1]
	pop {r4, pc}
	nop
_02098180: .word 0x0000032A
_02098184: .word 0x020F64D2
	thumb_func_end sub_02098164

	thumb_func_start sub_02098188
sub_02098188: ; 0x02098188
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020981A4 ; =0x0000032A
	cmp r4, r0
	blo _02098196
	bl sub_02022974
_02098196:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020981A8 ; =0x020F64D4
	ldrb r0, [r0, r1]
	pop {r4, pc}
	nop
_020981A4: .word 0x0000032A
_020981A8: .word 0x020F64D4
	thumb_func_end sub_02098188

	thumb_func_start sub_020981AC
sub_020981AC: ; 0x020981AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020981C8 ; =0x0000032A
	cmp r4, r0
	blo _020981BA
	bl sub_02022974
_020981BA:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020981CC ; =0x020F64D5
	ldrb r0, [r0, r1]
	pop {r4, pc}
	nop
_020981C8: .word 0x0000032A
_020981CC: .word 0x020F64D5
	thumb_func_end sub_020981AC

	thumb_func_start sub_020981D0
sub_020981D0: ; 0x020981D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020981EC ; =0x0000032A
	cmp r4, r0
	blo _020981DE
	bl sub_02022974
_020981DE:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020981F0 ; =0x020F64D6
	ldrh r0, [r0, r1]
	pop {r4, pc}
	nop
_020981EC: .word 0x0000032A
_020981F0: .word 0x020F64D6
	thumb_func_end sub_020981D0

	thumb_func_start sub_020981F4
sub_020981F4: ; 0x020981F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02098210 ; =0x0000032A
	cmp r4, r0
	blo _02098202
	bl sub_02022974
_02098202:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02098214 ; =0x020F64D8
	ldrb r0, [r0, r1]
	pop {r4, pc}
	nop
_02098210: .word 0x0000032A
_02098214: .word 0x020F64D8
	thumb_func_end sub_020981F4

	thumb_func_start sub_02098218
sub_02098218: ; 0x02098218
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r2, #1
	mov r0, #3
	mov r1, #0x47
	lsl r2, r2, #0x12
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0x88
	mov r2, #0x47
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x88
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	ldr r0, [r0, #0x10]
	bl sub_02027AC0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x10]
	bl sub_02027B50
	str r0, [r4, #0x14]
	bl ov119_021D0DD4
	str r0, [r4, #0x38]
	mov r0, #0x47
	bl sub_0200762C
	str r0, [r4, #0x3c]
	mov r0, #0x93
	mov r1, #0x47
	bl sub_02006C24
	str r0, [r4, #0x40]
	mov r0, #0x47
	bl sub_02018340
	str r0, [r4, #4]
	mov r0, #0x40
	mov r1, #0x47
	bl sub_0201DBEC
	mov r0, #0x47
	mov r1, #1
	mov r2, #0
	bl sub_02015F84
	str r0, [r4, #0x58]
	mov r0, #0x47
	bl sub_02002F38
	mov r1, #1
	str r0, [r4, #8]
	bl sub_02003858
	mov r2, #2
	ldr r0, [r4, #8]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x47
	bl sub_02002F70
	mov r1, #2
	ldr r0, [r4, #8]
	lsl r2, r1, #8
	mov r3, #0x47
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r2, r1, #9
	mov r3, #0x47
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r4, #8]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x47
	bl sub_02002F70
	bl ov119_021D0D80
	bl ov119_021D0DA8
	bl ov119_021D0E78
	ldr r0, [r4, #4]
	bl ov119_021D0EB8
	add r0, r4, #4
	bl ov119_021D17B8
	bl sub_0200569C
	ldr r0, _02098300 ; =0x021D0FD1
	add r1, r4, #0
	bl sub_02017798
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02098300: .word 0x021D0FD1
	thumb_func_end sub_02098218

	thumb_func_start sub_02098304
sub_02098304: ; 0x02098304
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0
	beq _0209831A
	cmp r1, #1
	beq _02098358
	b _02098374
_0209831A:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02098328
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02098328:
	ldr r0, [r5, #0]
	mov r1, #5
	ldr r0, [r0, #0xc]
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r1, r5, #0
	lsl r2, r4, #0x10
	ldr r0, [r5, #0x40]
	add r1, #0x6c
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_02078A4C
	ldr r0, _02098384 ; =0x000001EA
	cmp r4, r0
	bne _02098352
	mov r0, #1
	str r0, [r5, #0x5c]
	b _02098380
_02098352:
	mov r0, #0
	str r0, [r5, #0x5c]
	b _02098380
_02098358:
	bl ov119_021D191C
	cmp r0, #0
	bne _02098368
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02098380
_02098368:
	ldr r0, [r5, #0x3c]
	bl sub_02007768
	bl ov119_021D1004
	b _02098380
_02098374:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02098380
	mov r0, #1
	pop {r3, r4, r5, pc}
_02098380:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02098384: .word 0x000001EA
	thumb_func_end sub_02098304
